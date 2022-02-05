; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

	rst $38                                          ; $4000: $ff
	nop                                              ; $4001: $00
	ldh a, [c]                                       ; $4002: $f2
	ld b, $2a                                        ; $4003: $06 $2a
	ld hl, sp-$0e                                    ; $4005: $f8 $f2
	inc b                                            ; $4007: $04
	ld a, [hl+]                                      ; $4008: $2a
	nop                                              ; $4009: $00

jr_00e_400a:
	ldh [c], a                                       ; $400a: $e2
	ld [bc], a                                       ; $400b: $02
	jr z, @-$06                                      ; $400c: $28 $f8

	ldh [c], a                                       ; $400e: $e2
	nop                                              ; $400f: $00
	jr z, jr_00e_400a                                ; $4010: $28 $f8

jr_00e_4012:
	ldh [c], a                                       ; $4012: $e2
	nop                                              ; $4013: $00
	add hl, hl                                       ; $4014: $29
	nop                                              ; $4015: $00
	ldh [c], a                                       ; $4016: $e2
	ld a, [bc]                                       ; $4017: $0a
	jr z, jr_00e_4012                                ; $4018: $28 $f8

	ldh [c], a                                       ; $401a: $e2
	ld [$0028], sp                                   ; $401b: $08 $28 $00
	ldh a, [c]                                       ; $401e: $f2
	ld b, $2a                                        ; $401f: $06 $2a
	ld hl, sp-$0e                                    ; $4021: $f8 $f2
	inc b                                            ; $4023: $04
	dec hl                                           ; $4024: $2b
	nop                                              ; $4025: $00
	ldh a, [c]                                       ; $4026: $f2
	ld b, $2a                                        ; $4027: $06 $2a
	ld hl, sp-$0e                                    ; $4029: $f8 $f2
	inc b                                            ; $402b: $04
	ld a, [hl+]                                      ; $402c: $2a
	nop                                              ; $402d: $00
	ldh [c], a                                       ; $402e: $e2
	ld a, [bc]                                       ; $402f: $0a
	jr z, @-$06                                      ; $4030: $28 $f8

	ldh [c], a                                       ; $4032: $e2
	ld [$0029], sp                                   ; $4033: $08 $29 $00
	ldh a, [c]                                       ; $4036: $f2
	ld b, $2a                                        ; $4037: $06 $2a
	ldh a, [$da]                                     ; $4039: $f0 $da
	ld d, b                                          ; $403b: $50
	ld l, $e8                                        ; $403c: $2e $e8
	jp c, $2e4e                                      ; $403e: $da $4e $2e

	ld hl, sp-$0e                                    ; $4041: $f8 $f2
	ld a, [de]                                       ; $4043: $1a
	ld a, [hl+]                                      ; $4044: $2a
	nop                                              ; $4045: $00
	ldh [c], a                                       ; $4046: $e2
	jr jr_00e_4071                                   ; $4047: $18 $28

	ld hl, sp-$1e                                    ; $4049: $f8 $e2
	ld d, $28                                        ; $404b: $16 $28
	ldh a, [$e2]                                     ; $404d: $f0 $e2
	inc d                                            ; $404f: $14
	add hl, hl                                       ; $4050: $29
	nop                                              ; $4051: $00
	ldh a, [c]                                       ; $4052: $f2
	ld b, $2a                                        ; $4053: $06 $2a
	ld hl, sp-$0e                                    ; $4055: $f8 $f2
	inc b                                            ; $4057: $04
	ld a, [hl+]                                      ; $4058: $2a
	nop                                              ; $4059: $00
	ldh [c], a                                       ; $405a: $e2
	ld a, [bc]                                       ; $405b: $0a
	jr z, @-$06                                      ; $405c: $28 $f8

	ldh [c], a                                       ; $405e: $e2
	ld [$1029], sp                                   ; $405f: $08 $29 $10
	jp c, $2854                                      ; $4062: $da $54 $28

	ld [$52da], sp                                   ; $4065: $08 $da $52

jr_00e_4068:
	jr z, jr_00e_406a                                ; $4068: $28 $00

jr_00e_406a:
	ldh a, [c]                                       ; $406a: $f2
	ld [de], a                                       ; $406b: $12

jr_00e_406c:
	ld a, [hl+]                                      ; $406c: $2a
	ld hl, sp-$0e                                    ; $406d: $f8 $f2
	db $10                                           ; $406f: $10

jr_00e_4070:
	ld a, [hl+]                                      ; $4070: $2a

jr_00e_4071:
	nop                                              ; $4071: $00
	ldh [c], a                                       ; $4072: $e2
	ld c, $28                                        ; $4073: $0e $28
	ld hl, sp-$1e                                    ; $4075: $f8 $e2
	inc c                                            ; $4077: $0c

jr_00e_4078:
	add hl, hl                                       ; $4078: $29
	jr nz, jr_00e_406c                               ; $4079: $20 $f1

	ld l, $2c                                        ; $407b: $2e $2c
	jr jr_00e_4070                                   ; $407d: $18 $f1

	inc l                                            ; $407f: $2c

jr_00e_4080:
	inc l                                            ; $4080: $2c
	jr nz, @-$1d                                     ; $4081: $20 $e1

	ld e, $2e                                        ; $4083: $1e $2e
	jr jr_00e_4068                                   ; $4085: $18 $e1

	inc e                                            ; $4087: $1c
	cpl                                              ; $4088: $2f
	jr nz, @-$0d                                     ; $4089: $20 $f1

	ld l, $2c                                        ; $408b: $2e $2c
	jr jr_00e_4080                                   ; $408d: $18 $f1

	inc l                                            ; $408f: $2c
	inc l                                            ; $4090: $2c
	jr nz, @-$1d                                     ; $4091: $20 $e1

	ld h, $2e                                        ; $4093: $26 $2e
	jr jr_00e_4078                                   ; $4095: $18 $e1

	inc h                                            ; $4097: $24

jr_00e_4098:
	cpl                                              ; $4098: $2f
	jr nz, @-$1d                                     ; $4099: $20 $e1

	ld a, [hl+]                                      ; $409b: $2a
	ld l, $18                                        ; $409c: $2e $18
	pop hl                                           ; $409e: $e1
	jr z, jr_00e_40cf                                ; $409f: $28 $2e

	jr nz, @-$0d                                     ; $40a1: $20 $f1

	ld l, $2c                                        ; $40a3: $2e $2c
	jr jr_00e_4098                                   ; $40a5: $18 $f1

	inc l                                            ; $40a7: $2c

jr_00e_40a8:
	dec l                                            ; $40a8: $2d
	jr nz, @-$1d                                     ; $40a9: $20 $e1

	ld a, [hl+]                                      ; $40ab: $2a

jr_00e_40ac:
	ld l, $18                                        ; $40ac: $2e $18
	pop hl                                           ; $40ae: $e1
	jr nc, jr_00e_40df                               ; $40af: $30 $2e

	jr @-$0d                                         ; $40b1: $18 $f1

	ld [hl-], a                                      ; $40b3: $32
	inc l                                            ; $40b4: $2c
	jr nz, jr_00e_40a8                               ; $40b5: $20 $f1

	ld l, $2d                                        ; $40b7: $2e $2d
	jr nz, jr_00e_40ac                               ; $40b9: $20 $f1

	ld l, $2c                                        ; $40bb: $2e $2c
	jr @-$0d                                         ; $40bd: $18 $f1

	inc l                                            ; $40bf: $2c
	inc l                                            ; $40c0: $2c
	jr nz, @-$1d                                     ; $40c1: $20 $e1

	ld h, $2e                                        ; $40c3: $26 $2e
	jr jr_00e_40a8                                   ; $40c5: $18 $e1

	inc h                                            ; $40c7: $24

jr_00e_40c8:
	cpl                                              ; $40c8: $2f
	jr nz, jr_00e_40ac                               ; $40c9: $20 $e1

	ld [hl+], a                                      ; $40cb: $22

jr_00e_40cc:
	ld l, $18                                        ; $40cc: $2e $18
	pop hl                                           ; $40ce: $e1

jr_00e_40cf:
	jr nz, jr_00e_40ff                               ; $40cf: $20 $2e

	jr nz, @-$0d                                     ; $40d1: $20 $f1

	ld l, $2c                                        ; $40d3: $2e $2c
	jr jr_00e_40c8                                   ; $40d5: $18 $f1

	inc l                                            ; $40d7: $2c
	dec l                                            ; $40d8: $2d
	jr nz, jr_00e_40cc                               ; $40d9: $20 $f1

	ld b, d                                          ; $40db: $42

jr_00e_40dc:
	inc l                                            ; $40dc: $2c
	jr @-$0d                                         ; $40dd: $18 $f1

jr_00e_40df:
	ld b, b                                          ; $40df: $40
	inc l                                            ; $40e0: $2c
	jr nz, @-$1d                                     ; $40e1: $20 $e1

	ld [hl], $2e                                     ; $40e3: $36 $2e
	jr jr_00e_40c8                                   ; $40e5: $18 $e1

	inc [hl]                                         ; $40e7: $34

jr_00e_40e8:
	cpl                                              ; $40e8: $2f
	jr nz, jr_00e_40cc                               ; $40e9: $20 $e1

	ld [hl], $2e                                     ; $40eb: $36 $2e
	jr @-$1d                                         ; $40ed: $18 $e1

	inc [hl]                                         ; $40ef: $34

jr_00e_40f0:
	ld l, $20                                        ; $40f0: $2e $20
	pop af                                           ; $40f2: $f1
	ld b, d                                          ; $40f3: $42

jr_00e_40f4:
	inc l                                            ; $40f4: $2c
	jr jr_00e_40e8                                   ; $40f5: $18 $f1

	ld b, b                                          ; $40f7: $40

jr_00e_40f8:
	dec l                                            ; $40f8: $2d
	jr nz, jr_00e_40dc                               ; $40f9: $20 $e1

	ld a, [hl-]                                      ; $40fb: $3a

jr_00e_40fc:
	ld l, $18                                        ; $40fc: $2e $18
	pop hl                                           ; $40fe: $e1

jr_00e_40ff:
	jr c, jr_00e_412f                                ; $40ff: $38 $2e

	jr nz, jr_00e_40f4                               ; $4101: $20 $f1

	ld b, d                                          ; $4103: $42
	inc l                                            ; $4104: $2c
	jr jr_00e_40f8                                   ; $4105: $18 $f1

	ld b, b                                          ; $4107: $40

jr_00e_4108:
	dec l                                            ; $4108: $2d
	jr nz, @-$1d                                     ; $4109: $20 $e1

	ld a, $2e                                        ; $410b: $3e $2e
	jr jr_00e_40f0                                   ; $410d: $18 $e1

	inc a                                            ; $410f: $3c
	ld l, $20                                        ; $4110: $2e $20
	pop af                                           ; $4112: $f1
	ld b, d                                          ; $4113: $42

jr_00e_4114:
	inc l                                            ; $4114: $2c

jr_00e_4115:
	jr jr_00e_4108                                   ; $4115: $18 $f1

	ld b, b                                          ; $4117: $40
	dec l                                            ; $4118: $2d
	jr nz, jr_00e_40fc                               ; $4119: $20 $e1

	ld a, [hl-]                                      ; $411b: $3a
	ld l, $20                                        ; $411c: $2e $20
	pop af                                           ; $411e: $f1
	ld b, d                                          ; $411f: $42
	inc l                                            ; $4120: $2c

jr_00e_4121:
	jr jr_00e_4114                                   ; $4121: $18 $f1

	ld b, b                                          ; $4123: $40
	inc l                                            ; $4124: $2c
	jr jr_00e_4108                                   ; $4125: $18 $e1

	jr c, jr_00e_4158                                ; $4127: $38 $2f

	jr nz, @-$0c                                     ; $4129: $20 $f2

	ld c, d                                          ; $412b: $4a
	inc l                                            ; $412c: $2c
	jr jr_00e_4121                                   ; $412d: $18 $f2

jr_00e_412f:
	ld c, b                                          ; $412f: $48
	inc l                                            ; $4130: $2c
	jr nz, jr_00e_4115                               ; $4131: $20 $e2

	ld b, [hl]                                       ; $4133: $46
	ld l, $18                                        ; $4134: $2e $18
	ldh [c], a                                       ; $4136: $e2
	ld b, h                                          ; $4137: $44
	cpl                                              ; $4138: $2f
	nop                                              ; $4139: $00
	ldh a, [c]                                       ; $413a: $f2
	ld b, $28                                        ; $413b: $06 $28
	ld hl, sp-$0e                                    ; $413d: $f8 $f2
	inc b                                            ; $413f: $04
	jr z, jr_00e_4142                                ; $4140: $28 $00

jr_00e_4142:
	ldh [c], a                                       ; $4142: $e2
	ld [bc], a                                       ; $4143: $02
	jr z, @-$06                                      ; $4144: $28 $f8

	ldh [c], a                                       ; $4146: $e2
	nop                                              ; $4147: $00
	jr z, jr_00e_4142                                ; $4148: $28 $f8

	ldh [c], a                                       ; $414a: $e2
	nop                                              ; $414b: $00
	add hl, hl                                       ; $414c: $29
	nop                                              ; $414d: $00
	ldh a, [c]                                       ; $414e: $f2
	ld b, $28                                        ; $414f: $06 $28
	ld hl, sp-$0e                                    ; $4151: $f8 $f2
	inc b                                            ; $4153: $04
	jr z, jr_00e_4156                                ; $4154: $28 $00

jr_00e_4156:
	ldh [c], a                                       ; $4156: $e2
	ld a, [bc]                                       ; $4157: $0a

jr_00e_4158:
	jr z, @-$06                                      ; $4158: $28 $f8

	ldh [c], a                                       ; $415a: $e2
	ld [$0029], sp                                   ; $415b: $08 $29 $00
	ldh a, [c]                                       ; $415e: $f2
	ld b, $28                                        ; $415f: $06 $28
	ld hl, sp-$0e                                    ; $4161: $f8 $f2
	inc b                                            ; $4163: $04
	jr z, jr_00e_4166                                ; $4164: $28 $00

jr_00e_4166:
	ldh [c], a                                       ; $4166: $e2
	ld a, [bc]                                       ; $4167: $0a
	jr z, @-$06                                      ; $4168: $28 $f8

	ldh [c], a                                       ; $416a: $e2
	ld [$f829], sp                                   ; $416b: $08 $29 $f8
	ldh a, [c]                                       ; $416e: $f2
	ld a, [de]                                       ; $416f: $1a
	jr z, @-$0e                                      ; $4170: $28 $f0

	jp c, $2e50                                      ; $4172: $da $50 $2e

	add sp, -$26                                     ; $4175: $e8 $da
	ld c, [hl]                                       ; $4177: $4e
	ld l, $00                                        ; $4178: $2e $00
	ldh [c], a                                       ; $417a: $e2
	jr @+$2a                                         ; $417b: $18 $28

	ld hl, sp-$1e                                    ; $417d: $f8 $e2
	ld d, $28                                        ; $417f: $16 $28
	ldh a, [$e2]                                     ; $4181: $f0 $e2
	inc d                                            ; $4183: $14
	jr z, jr_00e_4186                                ; $4184: $28 $00

jr_00e_4186:
	ldh a, [c]                                       ; $4186: $f2
	ld b, $29                                        ; $4187: $06 $29
	nop                                              ; $4189: $00

jr_00e_418a:
	ldh a, [c]                                       ; $418a: $f2
	ld b, $28                                        ; $418b: $06 $28
	nop                                              ; $418d: $00

jr_00e_418e:
	ldh [c], a                                       ; $418e: $e2
	ld a, [bc]                                       ; $418f: $0a
	jr z, jr_00e_418a                                ; $4190: $28 $f8

	ldh a, [c]                                       ; $4192: $f2
	inc b                                            ; $4193: $04
	jr z, jr_00e_418e                                ; $4194: $28 $f8

jr_00e_4196:
	ldh [c], a                                       ; $4196: $e2
	ld [$0029], sp                                   ; $4197: $08 $29 $00
	ldh a, [c]                                       ; $419a: $f2
	ld [de], a                                       ; $419b: $12

jr_00e_419c:
	jr z, jr_00e_4196                                ; $419c: $28 $f8

	ldh a, [c]                                       ; $419e: $f2
	db $10                                           ; $419f: $10

jr_00e_41a0:
	jr z, @+$12                                      ; $41a0: $28 $10

	ret c                                            ; $41a2: $d8

	ld d, h                                          ; $41a3: $54

jr_00e_41a4:
	jr z, @+$0a                                      ; $41a4: $28 $08

	ret c                                            ; $41a6: $d8

	ld d, d                                          ; $41a7: $52

jr_00e_41a8:
	jr z, jr_00e_41aa                                ; $41a8: $28 $00

jr_00e_41aa:
	ldh [c], a                                       ; $41aa: $e2
	ld c, $28                                        ; $41ab: $0e $28
	ld hl, sp-$1e                                    ; $41ad: $f8 $e2
	inc c                                            ; $41af: $0c

jr_00e_41b0:
	add hl, hl                                       ; $41b0: $29
	jr nz, jr_00e_41a4                               ; $41b1: $20 $f1

	ld l, $2c                                        ; $41b3: $2e $2c
	jr jr_00e_41a8                                   ; $41b5: $18 $f1

	inc l                                            ; $41b7: $2c

jr_00e_41b8:
	inc l                                            ; $41b8: $2c
	jr nz, jr_00e_419c                               ; $41b9: $20 $e1

	ld e, $2e                                        ; $41bb: $1e $2e
	jr jr_00e_41a0                                   ; $41bd: $18 $e1

	inc e                                            ; $41bf: $1c
	cpl                                              ; $41c0: $2f
	jr nz, @-$0d                                     ; $41c1: $20 $f1

	ld l, $2c                                        ; $41c3: $2e $2c
	jr jr_00e_41b8                                   ; $41c5: $18 $f1

	inc l                                            ; $41c7: $2c
	inc l                                            ; $41c8: $2c
	jr nz, @-$1d                                     ; $41c9: $20 $e1

	ld h, $2e                                        ; $41cb: $26 $2e
	jr jr_00e_41b0                                   ; $41cd: $18 $e1

	inc h                                            ; $41cf: $24

jr_00e_41d0:
	cpl                                              ; $41d0: $2f
	jr nz, @-$1d                                     ; $41d1: $20 $e1

	ld a, [hl+]                                      ; $41d3: $2a
	ld l, $18                                        ; $41d4: $2e $18
	pop hl                                           ; $41d6: $e1
	jr z, jr_00e_4207                                ; $41d7: $28 $2e

	jr nz, @-$0d                                     ; $41d9: $20 $f1

	ld l, $2c                                        ; $41db: $2e $2c
	jr jr_00e_41d0                                   ; $41dd: $18 $f1

	inc l                                            ; $41df: $2c

jr_00e_41e0:
	dec l                                            ; $41e0: $2d
	jr nz, @-$1d                                     ; $41e1: $20 $e1

	ld a, [hl+]                                      ; $41e3: $2a

jr_00e_41e4:
	ld l, $18                                        ; $41e4: $2e $18
	pop hl                                           ; $41e6: $e1
	jr nc, jr_00e_4217                               ; $41e7: $30 $2e

	jr @-$0d                                         ; $41e9: $18 $f1

	ld [hl-], a                                      ; $41eb: $32
	inc l                                            ; $41ec: $2c
	jr nz, jr_00e_41e0                               ; $41ed: $20 $f1

	ld l, $2d                                        ; $41ef: $2e $2d
	jr nz, jr_00e_41e4                               ; $41f1: $20 $f1

	ld l, $2c                                        ; $41f3: $2e $2c
	jr @-$0d                                         ; $41f5: $18 $f1

	inc l                                            ; $41f7: $2c
	inc l                                            ; $41f8: $2c
	jr nz, @-$1d                                     ; $41f9: $20 $e1

	ld h, $2e                                        ; $41fb: $26 $2e
	jr jr_00e_41e0                                   ; $41fd: $18 $e1

	inc h                                            ; $41ff: $24

jr_00e_4200:
	cpl                                              ; $4200: $2f
	jr nz, jr_00e_41e4                               ; $4201: $20 $e1

	ld [hl+], a                                      ; $4203: $22

jr_00e_4204:
	ld l, $18                                        ; $4204: $2e $18
	pop hl                                           ; $4206: $e1

jr_00e_4207:
	jr nz, jr_00e_4237                               ; $4207: $20 $2e

	jr nz, @-$0d                                     ; $4209: $20 $f1

	ld l, $2c                                        ; $420b: $2e $2c
	jr jr_00e_4200                                   ; $420d: $18 $f1

	inc l                                            ; $420f: $2c
	dec l                                            ; $4210: $2d
	jr nz, jr_00e_4204                               ; $4211: $20 $f1

	ld b, d                                          ; $4213: $42

jr_00e_4214:
	inc l                                            ; $4214: $2c
	jr @-$0d                                         ; $4215: $18 $f1

jr_00e_4217:
	ld b, b                                          ; $4217: $40
	inc l                                            ; $4218: $2c
	jr nz, @-$1d                                     ; $4219: $20 $e1

	ld [hl], $2e                                     ; $421b: $36 $2e
	jr jr_00e_4200                                   ; $421d: $18 $e1

	inc [hl]                                         ; $421f: $34

jr_00e_4220:
	cpl                                              ; $4220: $2f
	jr nz, jr_00e_4204                               ; $4221: $20 $e1

	ld [hl], $2e                                     ; $4223: $36 $2e
	jr @-$1d                                         ; $4225: $18 $e1

	inc [hl]                                         ; $4227: $34

jr_00e_4228:
	ld l, $20                                        ; $4228: $2e $20
	pop af                                           ; $422a: $f1
	ld b, d                                          ; $422b: $42

jr_00e_422c:
	inc l                                            ; $422c: $2c
	jr jr_00e_4220                                   ; $422d: $18 $f1

	ld b, b                                          ; $422f: $40

jr_00e_4230:
	dec l                                            ; $4230: $2d
	jr nz, jr_00e_4214                               ; $4231: $20 $e1

	ld a, [hl-]                                      ; $4233: $3a

jr_00e_4234:
	ld l, $18                                        ; $4234: $2e $18
	pop hl                                           ; $4236: $e1

jr_00e_4237:
	jr c, jr_00e_4267                                ; $4237: $38 $2e

	jr nz, jr_00e_422c                               ; $4239: $20 $f1

	ld b, d                                          ; $423b: $42
	inc l                                            ; $423c: $2c
	jr jr_00e_4230                                   ; $423d: $18 $f1

	ld b, b                                          ; $423f: $40

jr_00e_4240:
	dec l                                            ; $4240: $2d
	jr nz, @-$1d                                     ; $4241: $20 $e1

	ld a, $2e                                        ; $4243: $3e $2e
	jr jr_00e_4228                                   ; $4245: $18 $e1

	inc a                                            ; $4247: $3c
	ld l, $20                                        ; $4248: $2e $20
	pop af                                           ; $424a: $f1
	ld b, d                                          ; $424b: $42

jr_00e_424c:
	inc l                                            ; $424c: $2c

jr_00e_424d:
	jr jr_00e_4240                                   ; $424d: $18 $f1

	ld b, b                                          ; $424f: $40
	dec l                                            ; $4250: $2d
	jr nz, jr_00e_4234                               ; $4251: $20 $e1

	ld a, [hl-]                                      ; $4253: $3a
	ld l, $20                                        ; $4254: $2e $20
	pop af                                           ; $4256: $f1
	ld b, d                                          ; $4257: $42
	inc l                                            ; $4258: $2c

jr_00e_4259:
	jr jr_00e_424c                                   ; $4259: $18 $f1

	ld b, b                                          ; $425b: $40
	inc l                                            ; $425c: $2c
	jr jr_00e_4240                                   ; $425d: $18 $e1

	jr c, jr_00e_4290                                ; $425f: $38 $2f

	jr nz, @-$0c                                     ; $4261: $20 $f2

	ld c, d                                          ; $4263: $4a
	inc l                                            ; $4264: $2c
	jr jr_00e_4259                                   ; $4265: $18 $f2

jr_00e_4267:
	ld c, b                                          ; $4267: $48
	inc l                                            ; $4268: $2c
	jr nz, jr_00e_424d                               ; $4269: $20 $e2

	ld b, [hl]                                       ; $426b: $46
	ld l, $18                                        ; $426c: $2e $18
	ldh [c], a                                       ; $426e: $e2
	ld b, h                                          ; $426f: $44
	cpl                                              ; $4270: $2f
	nop                                              ; $4271: $00
	pop af                                           ; $4272: $f1
	ld b, $2a                                        ; $4273: $06 $2a
	ld hl, sp-$0f                                    ; $4275: $f8 $f1
	inc b                                            ; $4277: $04
	ld a, [hl+]                                      ; $4278: $2a
	nop                                              ; $4279: $00
	pop hl                                           ; $427a: $e1
	ld [bc], a                                       ; $427b: $02
	jr z, @-$06                                      ; $427c: $28 $f8

	pop hl                                           ; $427e: $e1
	nop                                              ; $427f: $00
	add hl, hl                                       ; $4280: $29
	nop                                              ; $4281: $00
	pop af                                           ; $4282: $f1
	ld a, [bc]                                       ; $4283: $0a
	ld a, [hl+]                                      ; $4284: $2a
	ld hl, sp-$0f                                    ; $4285: $f8 $f1
	ld [$002a], sp                                   ; $4287: $08 $2a $00
	pop hl                                           ; $428a: $e1
	ld [bc], a                                       ; $428b: $02
	jr z, @-$06                                      ; $428c: $28 $f8

	pop hl                                           ; $428e: $e1
	nop                                              ; $428f: $00

jr_00e_4290:
	add hl, hl                                       ; $4290: $29
	nop                                              ; $4291: $00
	pop af                                           ; $4292: $f1
	ld b, $2a                                        ; $4293: $06 $2a
	ld hl, sp-$0f                                    ; $4295: $f8 $f1
	inc b                                            ; $4297: $04
	ld a, [hl+]                                      ; $4298: $2a
	nop                                              ; $4299: $00
	pop hl                                           ; $429a: $e1
	ld [bc], a                                       ; $429b: $02
	jr z, @-$06                                      ; $429c: $28 $f8

	pop hl                                           ; $429e: $e1
	nop                                              ; $429f: $00
	add hl, hl                                       ; $42a0: $29
	ldh a, [$d9]                                     ; $42a1: $f0 $d9
	ld d, d                                          ; $42a3: $52
	ld l, $e8                                        ; $42a4: $2e $e8
	reti                                             ; $42a6: $d9


	ld d, b                                          ; $42a7: $50
	ld l, $00                                        ; $42a8: $2e $00
	pop af                                           ; $42aa: $f1
	ld [de], a                                       ; $42ab: $12
	ld a, [hl+]                                      ; $42ac: $2a
	ld hl, sp-$0f                                    ; $42ad: $f8 $f1
	db $10                                           ; $42af: $10
	ld a, [hl+]                                      ; $42b0: $2a
	nop                                              ; $42b1: $00
	pop hl                                           ; $42b2: $e1
	ld c, $28                                        ; $42b3: $0e $28
	ld hl, sp-$1f                                    ; $42b5: $f8 $e1
	inc c                                            ; $42b7: $0c
	add hl, hl                                       ; $42b8: $29
	nop                                              ; $42b9: $00
	pop af                                           ; $42ba: $f1
	ld b, $2a                                        ; $42bb: $06 $2a
	ld hl, sp-$0f                                    ; $42bd: $f8 $f1
	inc b                                            ; $42bf: $04
	ld a, [hl+]                                      ; $42c0: $2a
	nop                                              ; $42c1: $00
	pop hl                                           ; $42c2: $e1
	ld [bc], a                                       ; $42c3: $02
	jr z, @-$06                                      ; $42c4: $28 $f8

	pop hl                                           ; $42c6: $e1
	nop                                              ; $42c7: $00
	add hl, hl                                       ; $42c8: $29
	nop                                              ; $42c9: $00
	pop af                                           ; $42ca: $f1
	ld a, [de]                                       ; $42cb: $1a
	ld a, [hl+]                                      ; $42cc: $2a
	ld hl, sp-$0f                                    ; $42cd: $f8 $f1
	jr jr_00e_42fb                                   ; $42cf: $18 $2a

	nop                                              ; $42d1: $00
	pop hl                                           ; $42d2: $e1
	ld d, $28                                        ; $42d3: $16 $28
	ld hl, sp-$1f                                    ; $42d5: $f8 $e1
	inc d                                            ; $42d7: $14
	jr z, jr_00e_42ea                                ; $42d8: $28 $10

	reti                                             ; $42da: $d9


	ld c, [hl]                                       ; $42db: $4e
	jr z, jr_00e_42e6                                ; $42dc: $28 $08

	reti                                             ; $42de: $d9


	ld c, h                                          ; $42df: $4c
	add hl, hl                                       ; $42e0: $29
	rra                                              ; $42e1: $1f
	ldh a, [c]                                       ; $42e2: $f2
	ld l, $2c                                        ; $42e3: $2e $2c
	rla                                              ; $42e5: $17

jr_00e_42e6:
	ldh a, [c]                                       ; $42e6: $f2
	ld a, [hl+]                                      ; $42e7: $2a
	inc l                                            ; $42e8: $2c
	rra                                              ; $42e9: $1f

jr_00e_42ea:
	ldh [c], a                                       ; $42ea: $e2
	ld e, $2e                                        ; $42eb: $1e $2e
	rla                                              ; $42ed: $17
	ldh [c], a                                       ; $42ee: $e2
	inc e                                            ; $42ef: $1c
	cpl                                              ; $42f0: $2f
	rra                                              ; $42f1: $1f
	ldh [c], a                                       ; $42f2: $e2
	ld b, d                                          ; $42f3: $42
	ld l, $17                                        ; $42f4: $2e $17
	ldh [c], a                                       ; $42f6: $e2
	ld b, b                                          ; $42f7: $40
	ld l, $1f                                        ; $42f8: $2e $1f
	ldh a, [c]                                       ; $42fa: $f2

jr_00e_42fb:
	ld l, $2c                                        ; $42fb: $2e $2c
	rla                                              ; $42fd: $17
	ldh a, [c]                                       ; $42fe: $f2
	ld a, [hl+]                                      ; $42ff: $2a
	dec l                                            ; $4300: $2d
	rra                                              ; $4301: $1f
	ldh [c], a                                       ; $4302: $e2
	ld [hl+], a                                      ; $4303: $22
	ld l, $17                                        ; $4304: $2e $17
	ldh [c], a                                       ; $4306: $e2
	jr nz, jr_00e_4337                               ; $4307: $20 $2e

	rra                                              ; $4309: $1f
	ldh a, [c]                                       ; $430a: $f2
	ld l, $2c                                        ; $430b: $2e $2c
	rla                                              ; $430d: $17
	ldh a, [c]                                       ; $430e: $f2
	ld a, [hl+]                                      ; $430f: $2a
	dec l                                            ; $4310: $2d
	rla                                              ; $4311: $17
	ldh a, [c]                                       ; $4312: $f2
	inc l                                            ; $4313: $2c
	inc l                                            ; $4314: $2c

jr_00e_4315:
	rra                                              ; $4315: $1f
	ldh [c], a                                       ; $4316: $e2
	inc h                                            ; $4317: $24
	ld l, $17                                        ; $4318: $2e $17
	ldh [c], a                                       ; $431a: $e2
	inc e                                            ; $431b: $1c
	ld l, $1f                                        ; $431c: $2e $1f
	ldh a, [c]                                       ; $431e: $f2
	ld l, $2d                                        ; $431f: $2e $2d
	rra                                              ; $4321: $1f
	ldh [c], a                                       ; $4322: $e2
	jr z, jr_00e_4353                                ; $4323: $28 $2e

jr_00e_4325:
	rla                                              ; $4325: $17
	ldh [c], a                                       ; $4326: $e2
	ld h, $2e                                        ; $4327: $26 $2e

jr_00e_4329:
	rra                                              ; $4329: $1f
	ldh a, [c]                                       ; $432a: $f2
	ld l, $2c                                        ; $432b: $2e $2c
	rla                                              ; $432d: $17
	ldh a, [c]                                       ; $432e: $f2
	ld a, [hl+]                                      ; $432f: $2a
	dec l                                            ; $4330: $2d
	jr nz, jr_00e_4315                               ; $4331: $20 $e2

	ld b, [hl]                                       ; $4333: $46
	ld l, $18                                        ; $4334: $2e $18
	ldh [c], a                                       ; $4336: $e2

jr_00e_4337:
	ld b, h                                          ; $4337: $44
	ld l, $1f                                        ; $4338: $2e $1f
	ldh a, [c]                                       ; $433a: $f2
	ld l, $2c                                        ; $433b: $2e $2c
	rla                                              ; $433d: $17
	ldh a, [c]                                       ; $433e: $f2
	ld a, [hl+]                                      ; $433f: $2a
	dec l                                            ; $4340: $2d

jr_00e_4341:
	jr jr_00e_4325                                   ; $4341: $18 $e2

	jr c, jr_00e_4373                                ; $4343: $38 $2e

jr_00e_4345:
	jr nz, jr_00e_4329                               ; $4345: $20 $e2

	ld [hl-], a                                      ; $4347: $32
	ld l, $20                                        ; $4348: $2e $20
	ldh a, [c]                                       ; $434a: $f2
	ld a, $2c                                        ; $434b: $3e $2c

jr_00e_434d:
	jr jr_00e_4341                                   ; $434d: $18 $f2

	inc a                                            ; $434f: $3c
	dec l                                            ; $4350: $2d

jr_00e_4351:
	jr @-$1c                                         ; $4351: $18 $e2

jr_00e_4353:
	jr c, jr_00e_4383                                ; $4353: $38 $2e

jr_00e_4355:
	jr nz, @-$1c                                     ; $4355: $20 $e2

	ld [hl], $2e                                     ; $4357: $36 $2e

jr_00e_4359:
	jr nz, jr_00e_434d                               ; $4359: $20 $f2

	ld a, $2c                                        ; $435b: $3e $2c
	jr jr_00e_4351                                   ; $435d: $18 $f2

	inc a                                            ; $435f: $3c
	dec l                                            ; $4360: $2d

jr_00e_4361:
	jr jr_00e_4345                                   ; $4361: $18 $e2

	jr nc, jr_00e_4393                               ; $4363: $30 $2e

jr_00e_4365:
	jr nz, @-$1c                                     ; $4365: $20 $e2

	ld c, b                                          ; $4367: $48
	ld l, $20                                        ; $4368: $2e $20
	ldh a, [c]                                       ; $436a: $f2
	ld a, $2c                                        ; $436b: $3e $2c
	jr jr_00e_4361                                   ; $436d: $18 $f2

	inc a                                            ; $436f: $3c
	dec l                                            ; $4370: $2d

jr_00e_4371:
	jr jr_00e_4355                                   ; $4371: $18 $e2

jr_00e_4373:
	jr nc, jr_00e_43a3                               ; $4373: $30 $2e

jr_00e_4375:
	jr nz, jr_00e_4359                               ; $4375: $20 $e2

	ld [hl-], a                                      ; $4377: $32
	ld l, $20                                        ; $4378: $2e $20
	ldh a, [c]                                       ; $437a: $f2
	ld a, $2c                                        ; $437b: $3e $2c

jr_00e_437d:
	jr jr_00e_4371                                   ; $437d: $18 $f2

	inc a                                            ; $437f: $3c
	dec l                                            ; $4380: $2d

jr_00e_4381:
	jr nz, jr_00e_4365                               ; $4381: $20 $e2

jr_00e_4383:
	inc [hl]                                         ; $4383: $34
	ld l, $20                                        ; $4384: $2e $20
	ldh a, [c]                                       ; $4386: $f2
	ld a, $2c                                        ; $4387: $3e $2c
	jr jr_00e_437d                                   ; $4389: $18 $f2

	inc a                                            ; $438b: $3c
	inc l                                            ; $438c: $2c

jr_00e_438d:
	jr jr_00e_4371                                   ; $438d: $18 $e2

	jr c, jr_00e_43c0                                ; $438f: $38 $2f

	jr nz, jr_00e_4375                               ; $4391: $20 $e2

jr_00e_4393:
	ld a, [hl-]                                      ; $4393: $3a
	ld l, $20                                        ; $4394: $2e $20
	ldh a, [c]                                       ; $4396: $f2
	ld a, $2c                                        ; $4397: $3e $2c
	jr jr_00e_438d                                   ; $4399: $18 $f2

	inc a                                            ; $439b: $3c
	inc l                                            ; $439c: $2c
	jr jr_00e_4381                                   ; $439d: $18 $e2

	jr c, jr_00e_43d0                                ; $439f: $38 $2f

	nop                                              ; $43a1: $00
	pop af                                           ; $43a2: $f1

jr_00e_43a3:
	ld b, $28                                        ; $43a3: $06 $28
	ld hl, sp-$0f                                    ; $43a5: $f8 $f1
	inc b                                            ; $43a7: $04
	jr z, jr_00e_43aa                                ; $43a8: $28 $00

jr_00e_43aa:
	pop hl                                           ; $43aa: $e1
	ld [bc], a                                       ; $43ab: $02
	jr z, @-$06                                      ; $43ac: $28 $f8

jr_00e_43ae:
	pop hl                                           ; $43ae: $e1
	nop                                              ; $43af: $00
	add hl, hl                                       ; $43b0: $29
	nop                                              ; $43b1: $00
	pop af                                           ; $43b2: $f1
	ld a, [bc]                                       ; $43b3: $0a
	jr z, jr_00e_43ae                                ; $43b4: $28 $f8

jr_00e_43b6:
	pop af                                           ; $43b6: $f1
	ld [$0028], sp                                   ; $43b7: $08 $28 $00
	pop hl                                           ; $43ba: $e1
	ld [bc], a                                       ; $43bb: $02
	jr z, jr_00e_43b6                                ; $43bc: $28 $f8

	pop hl                                           ; $43be: $e1
	nop                                              ; $43bf: $00

jr_00e_43c0:
	add hl, hl                                       ; $43c0: $29
	nop                                              ; $43c1: $00
	pop af                                           ; $43c2: $f1
	ld b, $28                                        ; $43c3: $06 $28
	ld hl, sp-$0f                                    ; $43c5: $f8 $f1
	inc b                                            ; $43c7: $04
	jr z, jr_00e_43ca                                ; $43c8: $28 $00

jr_00e_43ca:
	pop hl                                           ; $43ca: $e1
	ld [bc], a                                       ; $43cb: $02
	jr z, @-$06                                      ; $43cc: $28 $f8

	pop hl                                           ; $43ce: $e1
	nop                                              ; $43cf: $00

jr_00e_43d0:
	add hl, hl                                       ; $43d0: $29
	rst $38                                          ; $43d1: $ff

jr_00e_43d2:
	pop af                                           ; $43d2: $f1
	ld [de], a                                       ; $43d3: $12
	jr z, @-$07                                      ; $43d4: $28 $f7

	pop af                                           ; $43d6: $f1
	db $10                                           ; $43d7: $10
	jr z, @+$01                                      ; $43d8: $28 $ff

	pop hl                                           ; $43da: $e1
	ld c, $28                                        ; $43db: $0e $28
	rst FarCall                                          ; $43dd: $f7
	pop hl                                           ; $43de: $e1
	inc c                                            ; $43df: $0c
	jr z, jr_00e_43d2                                ; $43e0: $28 $f0

	reti                                             ; $43e2: $d9


	ld d, d                                          ; $43e3: $52
	ld l, $e8                                        ; $43e4: $2e $e8
	reti                                             ; $43e6: $d9


	ld d, b                                          ; $43e7: $50
	cpl                                              ; $43e8: $2f
	nop                                              ; $43e9: $00
	pop af                                           ; $43ea: $f1
	ld b, $28                                        ; $43eb: $06 $28
	ld hl, sp-$0f                                    ; $43ed: $f8 $f1
	inc b                                            ; $43ef: $04
	jr z, jr_00e_43f2                                ; $43f0: $28 $00

jr_00e_43f2:
	pop hl                                           ; $43f2: $e1
	ld [bc], a                                       ; $43f3: $02
	jr z, @-$06                                      ; $43f4: $28 $f8

	pop hl                                           ; $43f6: $e1
	nop                                              ; $43f7: $00
	jr z, jr_00e_4402                                ; $43f8: $28 $08

	ret c                                            ; $43fa: $d8

	ld d, h                                          ; $43fb: $54
	ld l, e                                          ; $43fc: $6b
	rst $38                                          ; $43fd: $ff
	pop af                                           ; $43fe: $f1
	ld a, [de]                                       ; $43ff: $1a

jr_00e_4400:
	jr z, @-$07                                      ; $4400: $28 $f7

jr_00e_4402:
	pop af                                           ; $4402: $f1
	jr @+$2a                                         ; $4403: $18 $28

	rst $38                                          ; $4405: $ff
	pop hl                                           ; $4406: $e1
	ld d, $28                                        ; $4407: $16 $28
	rst FarCall                                          ; $4409: $f7
	pop hl                                           ; $440a: $e1
	inc d                                            ; $440b: $14

jr_00e_440c:
	jr z, @+$12                                      ; $440c: $28 $10

	reti                                             ; $440e: $d9


	ld c, [hl]                                       ; $440f: $4e
	jr z, @+$0a                                      ; $4410: $28 $08

	reti                                             ; $4412: $d9


	ld c, h                                          ; $4413: $4c
	add hl, hl                                       ; $4414: $29
	jr nz, @-$0d                                     ; $4415: $20 $f1

	ld l, $2c                                        ; $4417: $2e $2c
	jr jr_00e_440c                                   ; $4419: $18 $f1

	ld a, [hl+]                                      ; $441b: $2a
	inc l                                            ; $441c: $2c
	jr nz, jr_00e_4400                               ; $441d: $20 $e1

	ld e, $2e                                        ; $441f: $1e $2e
	jr @-$1d                                         ; $4421: $18 $e1

	inc e                                            ; $4423: $1c

jr_00e_4424:
	cpl                                              ; $4424: $2f
	jr nz, @-$1d                                     ; $4425: $20 $e1

	ld b, d                                          ; $4427: $42
	ld l, $18                                        ; $4428: $2e $18
	pop hl                                           ; $442a: $e1
	ld b, b                                          ; $442b: $40

jr_00e_442c:
	ld l, $20                                        ; $442c: $2e $20
	pop af                                           ; $442e: $f1
	ld l, $2c                                        ; $442f: $2e $2c
	jr jr_00e_4424                                   ; $4431: $18 $f1

	ld a, [hl+]                                      ; $4433: $2a

jr_00e_4434:
	dec l                                            ; $4434: $2d
	jr nz, @-$1d                                     ; $4435: $20 $e1

	ld [hl+], a                                      ; $4437: $22

jr_00e_4438:
	ld l, $18                                        ; $4438: $2e $18
	pop hl                                           ; $443a: $e1
	jr nz, jr_00e_446b                               ; $443b: $20 $2e

	jr nz, @-$0d                                     ; $443d: $20 $f1

	ld l, $2c                                        ; $443f: $2e $2c
	jr jr_00e_4434                                   ; $4441: $18 $f1

	ld a, [hl+]                                      ; $4443: $2a
	dec l                                            ; $4444: $2d
	jr jr_00e_4438                                   ; $4445: $18 $f1

	inc l                                            ; $4447: $2c
	inc l                                            ; $4448: $2c
	jr nz, jr_00e_442c                               ; $4449: $20 $e1

	inc h                                            ; $444b: $24
	ld l, $18                                        ; $444c: $2e $18
	pop hl                                           ; $444e: $e1
	inc e                                            ; $444f: $1c

jr_00e_4450:
	ld l, $20                                        ; $4450: $2e $20
	pop af                                           ; $4452: $f1
	ld l, $2d                                        ; $4453: $2e $2d
	jr nz, jr_00e_4438                               ; $4455: $20 $e1

	jr z, jr_00e_4487                                ; $4457: $28 $2e

jr_00e_4459:
	jr @-$1d                                         ; $4459: $18 $e1

	ld h, $2e                                        ; $445b: $26 $2e
	jr nz, jr_00e_4450                               ; $445d: $20 $f1

	ld l, $2c                                        ; $445f: $2e $2c
	jr @-$0d                                         ; $4461: $18 $f1

	ld a, [hl+]                                      ; $4463: $2a

jr_00e_4464:
	dec l                                            ; $4464: $2d
	ld [hl+], a                                      ; $4465: $22
	pop hl                                           ; $4466: $e1
	ld b, [hl]                                       ; $4467: $46
	ld l, $1a                                        ; $4468: $2e $1a
	pop hl                                           ; $446a: $e1

jr_00e_446b:
	ld b, h                                          ; $446b: $44
	ld l, $20                                        ; $446c: $2e $20
	pop af                                           ; $446e: $f1
	ld l, $2c                                        ; $446f: $2e $2c

jr_00e_4471:
	jr jr_00e_4464                                   ; $4471: $18 $f1

	ld a, [hl+]                                      ; $4473: $2a
	dec l                                            ; $4474: $2d

jr_00e_4475:
	jr nz, jr_00e_4459                               ; $4475: $20 $e2

	ld [hl-], a                                      ; $4477: $32
	ld l, $18                                        ; $4478: $2e $18
	ldh [c], a                                       ; $447a: $e2
	jr c, jr_00e_44ab                                ; $447b: $38 $2e

	jr nz, jr_00e_4471                               ; $447d: $20 $f2

	ld a, $2c                                        ; $447f: $3e $2c

jr_00e_4481:
	jr jr_00e_4475                                   ; $4481: $18 $f2

	inc a                                            ; $4483: $3c
	dec l                                            ; $4484: $2d

jr_00e_4485:
	jr nz, @-$1c                                     ; $4485: $20 $e2

jr_00e_4487:
	ld [hl], $2e                                     ; $4487: $36 $2e

jr_00e_4489:
	jr @-$1c                                         ; $4489: $18 $e2

	jr c, jr_00e_44bb                                ; $448b: $38 $2e

	jr nz, jr_00e_4481                               ; $448d: $20 $f2

	ld a, $2c                                        ; $448f: $3e $2c

jr_00e_4491:
	jr jr_00e_4485                                   ; $4491: $18 $f2

	inc a                                            ; $4493: $3c
	dec l                                            ; $4494: $2d

jr_00e_4495:
	jr nz, @-$1c                                     ; $4495: $20 $e2

	ld c, b                                          ; $4497: $48
	ld l, $18                                        ; $4498: $2e $18
	ldh [c], a                                       ; $449a: $e2
	jr nc, jr_00e_44cb                               ; $449b: $30 $2e

jr_00e_449d:
	jr nz, jr_00e_4491                               ; $449d: $20 $f2

	ld a, $2c                                        ; $449f: $3e $2c

jr_00e_44a1:
	jr jr_00e_4495                                   ; $44a1: $18 $f2

	inc a                                            ; $44a3: $3c
	dec l                                            ; $44a4: $2d

jr_00e_44a5:
	jr nz, jr_00e_4489                               ; $44a5: $20 $e2

	ld [hl-], a                                      ; $44a7: $32
	ld l, $18                                        ; $44a8: $2e $18
	ldh [c], a                                       ; $44aa: $e2

jr_00e_44ab:
	jr nc, jr_00e_44db                               ; $44ab: $30 $2e

	jr nz, jr_00e_44a1                               ; $44ad: $20 $f2

	ld a, $2c                                        ; $44af: $3e $2c
	jr jr_00e_44a5                                   ; $44b1: $18 $f2

	inc a                                            ; $44b3: $3c
	dec l                                            ; $44b4: $2d

jr_00e_44b5:
	jr @-$1c                                         ; $44b5: $18 $e2

	jr c, jr_00e_44e7                                ; $44b7: $38 $2e

	jr nz, jr_00e_449d                               ; $44b9: $20 $e2

jr_00e_44bb:
	inc [hl]                                         ; $44bb: $34
	ld l, $20                                        ; $44bc: $2e $20
	ldh a, [c]                                       ; $44be: $f2
	ld a, $2c                                        ; $44bf: $3e $2c

jr_00e_44c1:
	jr jr_00e_44b5                                   ; $44c1: $18 $f2

	inc a                                            ; $44c3: $3c
	dec l                                            ; $44c4: $2d

jr_00e_44c5:
	jr nz, @-$1c                                     ; $44c5: $20 $e2

	ld a, [hl-]                                      ; $44c7: $3a
	ld l, $18                                        ; $44c8: $2e $18
	ldh [c], a                                       ; $44ca: $e2

jr_00e_44cb:
	jr c, jr_00e_44fb                                ; $44cb: $38 $2e

	jr nz, jr_00e_44c1                               ; $44cd: $20 $f2

	ld a, $2c                                        ; $44cf: $3e $2c
	jr jr_00e_44c5                                   ; $44d1: $18 $f2

	inc a                                            ; $44d3: $3c
	dec l                                            ; $44d4: $2d
	nop                                              ; $44d5: $00
	ldh a, [c]                                       ; $44d6: $f2
	ld b, $2a                                        ; $44d7: $06 $2a
	ld hl, sp-$0e                                    ; $44d9: $f8 $f2

jr_00e_44db:
	inc b                                            ; $44db: $04
	ld a, [hl+]                                      ; $44dc: $2a
	nop                                              ; $44dd: $00
	ldh [c], a                                       ; $44de: $e2
	ld [bc], a                                       ; $44df: $02
	jr z, @-$06                                      ; $44e0: $28 $f8

jr_00e_44e2:
	ldh [c], a                                       ; $44e2: $e2
	nop                                              ; $44e3: $00
	add hl, hl                                       ; $44e4: $29
	nop                                              ; $44e5: $00
	ldh [c], a                                       ; $44e6: $e2

jr_00e_44e7:
	ld a, [bc]                                       ; $44e7: $0a
	jr z, jr_00e_44e2                                ; $44e8: $28 $f8

	ldh [c], a                                       ; $44ea: $e2
	ld [$0028], sp                                   ; $44eb: $08 $28 $00
	ldh a, [c]                                       ; $44ee: $f2
	ld b, $2a                                        ; $44ef: $06 $2a
	ld hl, sp-$0e                                    ; $44f1: $f8 $f2
	inc c                                            ; $44f3: $0c
	dec hl                                           ; $44f4: $2b
	ldh a, [$d8]                                     ; $44f5: $f0 $d8
	ld d, d                                          ; $44f7: $52
	ld l, $e8                                        ; $44f8: $2e $e8
	ret c                                            ; $44fa: $d8

jr_00e_44fb:
	ld d, b                                          ; $44fb: $50
	ld l, $00                                        ; $44fc: $2e $00
	ldh [c], a                                       ; $44fe: $e2
	jr jr_00e_4529                                   ; $44ff: $18 $28

	ld hl, sp-$1e                                    ; $4501: $f8 $e2
	ld d, $28                                        ; $4503: $16 $28
	nop                                              ; $4505: $00
	ldh a, [c]                                       ; $4506: $f2
	ld b, $2a                                        ; $4507: $06 $2a
	ld hl, sp-$0e                                    ; $4509: $f8 $f2
	ld a, [de]                                       ; $450b: $1a
	dec hl                                           ; $450c: $2b
	nop                                              ; $450d: $00
	ldh a, [c]                                       ; $450e: $f2

jr_00e_450f:
	inc d                                            ; $450f: $14
	ld a, [hl+]                                      ; $4510: $2a
	ld hl, sp-$0e                                    ; $4511: $f8 $f2

jr_00e_4513:
	ld [de], a                                       ; $4513: $12
	ld a, [hl+]                                      ; $4514: $2a
	nop                                              ; $4515: $00
	ldh [c], a                                       ; $4516: $e2

jr_00e_4517:
	db $10                                           ; $4517: $10
	jr z, @-$06                                      ; $4518: $28 $f8

	ldh [c], a                                       ; $451a: $e2

jr_00e_451b:
	ld c, $28                                        ; $451b: $0e $28
	db $10                                           ; $451d: $10
	ret c                                            ; $451e: $d8

jr_00e_451f:
	ld d, [hl]                                       ; $451f: $56
	jr z, @+$0a                                      ; $4520: $28 $08

	ret c                                            ; $4522: $d8

jr_00e_4523:
	ld d, h                                          ; $4523: $54
	add hl, hl                                       ; $4524: $29
	jr nz, jr_00e_4517                               ; $4525: $20 $f0

jr_00e_4527:
	ld [hl+], a                                      ; $4527: $22
	inc l                                            ; $4528: $2c

jr_00e_4529:
	jr jr_00e_451b                                   ; $4529: $18 $f0

jr_00e_452b:
	jr nz, @+$2e                                     ; $452b: $20 $2c

	jr nz, jr_00e_450f                               ; $452d: $20 $e0

jr_00e_452f:
	ld e, $2e                                        ; $452f: $1e $2e
	jr jr_00e_4513                                   ; $4531: $18 $e0

jr_00e_4533:
	inc e                                            ; $4533: $1c
	cpl                                              ; $4534: $2f
	jr nz, jr_00e_4527                               ; $4535: $20 $f0

jr_00e_4537:
	ld [hl+], a                                      ; $4537: $22
	inc l                                            ; $4538: $2c
	jr jr_00e_452b                                   ; $4539: $18 $f0

jr_00e_453b:
	jr nz, jr_00e_4569                               ; $453b: $20 $2c

	jr nz, jr_00e_451f                               ; $453d: $20 $e0

	ld e, $2e                                        ; $453f: $1e $2e
	jr jr_00e_4523                                   ; $4541: $18 $e0

	inc e                                            ; $4543: $1c
	cpl                                              ; $4544: $2f
	jr nz, jr_00e_4537                               ; $4545: $20 $f0

	inc [hl]                                         ; $4547: $34
	inc l                                            ; $4548: $2c
	jr jr_00e_453b                                   ; $4549: $18 $f0

	ld [hl-], a                                      ; $454b: $32
	inc l                                            ; $454c: $2c
	jr nz, jr_00e_452f                               ; $454d: $20 $e0

jr_00e_454f:
	jr nc, jr_00e_457f                               ; $454f: $30 $2e

	jr jr_00e_4533                                   ; $4551: $18 $e0

jr_00e_4553:
	ld l, $2f                                        ; $4553: $2e $2f
	ld hl, $2ae0                                     ; $4555: $21 $e0 $2a
	ld l, $19                                        ; $4558: $2e $19
	ldh [$28], a                                     ; $455a: $e0 $28
	ld l, $18                                        ; $455c: $2e $18
	ldh a, [$2c]                                     ; $455e: $f0 $2c
	inc l                                            ; $4560: $2c
	jr nz, jr_00e_4553                               ; $4561: $20 $f0

	ld [hl+], a                                      ; $4563: $22
	dec l                                            ; $4564: $2d
	jr nz, @-$0e                                     ; $4565: $20 $f0

	inc a                                            ; $4567: $3c
	inc l                                            ; $4568: $2c

jr_00e_4569:
	jr @-$0e                                         ; $4569: $18 $f0

jr_00e_456b:
	ld a, [hl-]                                      ; $456b: $3a
	inc l                                            ; $456c: $2c
	jr nz, jr_00e_454f                               ; $456d: $20 $e0

	jr c, jr_00e_459f                                ; $456f: $38 $2e

	jr jr_00e_4553                                   ; $4571: $18 $e0

jr_00e_4573:
	ld [hl], $2e                                     ; $4573: $36 $2e
	nop                                              ; $4575: $00
	ldh a, [c]                                       ; $4576: $f2

jr_00e_4577:
	ld b, $2a                                        ; $4577: $06 $2a
	ld hl, sp-$0e                                    ; $4579: $f8 $f2
	inc b                                            ; $457b: $04
	ld a, [hl+]                                      ; $457c: $2a
	nop                                              ; $457d: $00
	ldh [c], a                                       ; $457e: $e2

jr_00e_457f:
	ld [bc], a                                       ; $457f: $02
	jr z, @-$06                                      ; $4580: $28 $f8

	ldh [c], a                                       ; $4582: $e2
	nop                                              ; $4583: $00
	add hl, hl                                       ; $4584: $29
	jr nz, jr_00e_4577                               ; $4585: $20 $f0

jr_00e_4587:
	inc a                                            ; $4587: $3c
	inc l                                            ; $4588: $2c
	jr nz, jr_00e_456b                               ; $4589: $20 $e0

jr_00e_458b:
	jr c, jr_00e_45bb                                ; $458b: $38 $2e

	jr jr_00e_457f                                   ; $458d: $18 $f0

	ld a, [hl-]                                      ; $458f: $3a
	inc l                                            ; $4590: $2c
	jr jr_00e_4573                                   ; $4591: $18 $e0

	ld [hl], $2e                                     ; $4593: $36 $2e
	nop                                              ; $4595: $00
	ldh [c], a                                       ; $4596: $e2
	ld a, [bc]                                       ; $4597: $0a
	jr z, @-$06                                      ; $4598: $28 $f8

	ldh [c], a                                       ; $459a: $e2
	ld [$0028], sp                                   ; $459b: $08 $28 $00
	ldh a, [c]                                       ; $459e: $f2

jr_00e_459f:
	ld b, $2a                                        ; $459f: $06 $2a
	ld hl, sp-$0e                                    ; $45a1: $f8 $f2

jr_00e_45a3:
	inc c                                            ; $45a3: $0c
	dec hl                                           ; $45a4: $2b
	jr jr_00e_4587                                   ; $45a5: $18 $e0

	ld [hl], $2e                                     ; $45a7: $36 $2e
	jr nz, jr_00e_458b                               ; $45a9: $20 $e0

	ld a, $2e                                        ; $45ab: $3e $2e
	jr jr_00e_459f                                   ; $45ad: $18 $f0

	ld a, [hl-]                                      ; $45af: $3a
	inc l                                            ; $45b0: $2c
	jr nz, jr_00e_45a3                               ; $45b1: $20 $f0

	ld b, b                                          ; $45b3: $40
	inc l                                            ; $45b4: $2c
	ldh a, [$d8]                                     ; $45b5: $f0 $d8
	ld d, d                                          ; $45b7: $52
	ld l, $e8                                        ; $45b8: $2e $e8
	ret c                                            ; $45ba: $d8

jr_00e_45bb:
	ld d, b                                          ; $45bb: $50
	ld l, $00                                        ; $45bc: $2e $00
	ldh [c], a                                       ; $45be: $e2
	jr @+$2a                                         ; $45bf: $18 $28

	ld hl, sp-$1e                                    ; $45c1: $f8 $e2
	ld d, $28                                        ; $45c3: $16 $28
	nop                                              ; $45c5: $00
	ldh a, [c]                                       ; $45c6: $f2

jr_00e_45c7:
	ld b, $2a                                        ; $45c7: $06 $2a
	ld hl, sp-$0e                                    ; $45c9: $f8 $f2
	ld a, [de]                                       ; $45cb: $1a
	dec hl                                           ; $45cc: $2b
	db $10                                           ; $45cd: $10
	ret c                                            ; $45ce: $d8

	ld d, [hl]                                       ; $45cf: $56
	jr z, jr_00e_45da                                ; $45d0: $28 $08

	ret c                                            ; $45d2: $d8

	ld d, h                                          ; $45d3: $54
	jr z, jr_00e_45d6                                ; $45d4: $28 $00

jr_00e_45d6:
	ldh [c], a                                       ; $45d6: $e2
	db $10                                           ; $45d7: $10
	jr z, jr_00e_45da                                ; $45d8: $28 $00

jr_00e_45da:
	ldh a, [c]                                       ; $45da: $f2
	inc d                                            ; $45db: $14
	ld a, [hl+]                                      ; $45dc: $2a
	ld hl, sp-$1e                                    ; $45dd: $f8 $e2
	ld c, $28                                        ; $45df: $0e $28
	ld hl, sp-$0e                                    ; $45e1: $f8 $f2

jr_00e_45e3:
	ld [de], a                                       ; $45e3: $12
	ld a, [hl+]                                      ; $45e4: $2a
	jr nz, jr_00e_45c7                               ; $45e5: $20 $e0

	ld c, h                                          ; $45e7: $4c
	ld l, $18                                        ; $45e8: $2e $18
	ldh [rWY], a                                     ; $45ea: $e0 $4a
	ld l, $20                                        ; $45ec: $2e $20
	ldh a, [$4e]                                     ; $45ee: $f0 $4e
	inc l                                            ; $45f0: $2c
	jr jr_00e_45e3                                   ; $45f1: $18 $f0

	ld a, [hl-]                                      ; $45f3: $3a
	dec l                                            ; $45f4: $2d
	nop                                              ; $45f5: $00
	ldh a, [c]                                       ; $45f6: $f2
	ld b, $28                                        ; $45f7: $06 $28
	ld hl, sp-$0e                                    ; $45f9: $f8 $f2
	inc b                                            ; $45fb: $04
	jr z, jr_00e_45fe                                ; $45fc: $28 $00

jr_00e_45fe:
	ldh [c], a                                       ; $45fe: $e2
	ld [bc], a                                       ; $45ff: $02
	jr z, @-$06                                      ; $4600: $28 $f8

	ldh [c], a                                       ; $4602: $e2
	nop                                              ; $4603: $00
	add hl, hl                                       ; $4604: $29
	ld hl, sp-$0e                                    ; $4605: $f8 $f2
	inc c                                            ; $4607: $0c
	jr z, jr_00e_460a                                ; $4608: $28 $00

jr_00e_460a:
	ldh a, [c]                                       ; $460a: $f2
	ld b, $28                                        ; $460b: $06 $28
	nop                                              ; $460d: $00
	ldh [c], a                                       ; $460e: $e2
	ld a, [bc]                                       ; $460f: $0a
	jr z, jr_00e_460a                                ; $4610: $28 $f8

	ldh [c], a                                       ; $4612: $e2
	ld [$f829], sp                                   ; $4613: $08 $29 $f8
	ldh a, [c]                                       ; $4616: $f2
	ld a, [de]                                       ; $4617: $1a
	jr z, jr_00e_461a                                ; $4618: $28 $00

jr_00e_461a:
	ldh a, [c]                                       ; $461a: $f2
	ld b, $28                                        ; $461b: $06 $28
	ldh a, [$d8]                                     ; $461d: $f0 $d8
	ld d, d                                          ; $461f: $52
	ld l, $e8                                        ; $4620: $2e $e8
	ret c                                            ; $4622: $d8

	ld d, b                                          ; $4623: $50
	ld l, $00                                        ; $4624: $2e $00
	ldh [c], a                                       ; $4626: $e2
	jr jr_00e_4651                                   ; $4627: $18 $28

	ld hl, sp-$1e                                    ; $4629: $f8 $e2
	ld d, $29                                        ; $462b: $16 $29
	db $10                                           ; $462d: $10
	ret c                                            ; $462e: $d8

	ld d, [hl]                                       ; $462f: $56

jr_00e_4630:
	jr z, jr_00e_463a                                ; $4630: $28 $08

jr_00e_4632:
	ret c                                            ; $4632: $d8

	ld d, h                                          ; $4633: $54

jr_00e_4634:
	jr z, jr_00e_4636                                ; $4634: $28 $00

jr_00e_4636:
	ldh a, [c]                                       ; $4636: $f2
	inc d                                            ; $4637: $14

jr_00e_4638:
	jr z, jr_00e_4632                                ; $4638: $28 $f8

jr_00e_463a:
	ldh a, [c]                                       ; $463a: $f2
	ld [de], a                                       ; $463b: $12

jr_00e_463c:
	jr z, jr_00e_463e                                ; $463c: $28 $00

jr_00e_463e:
	ldh [c], a                                       ; $463e: $e2
	db $10                                           ; $463f: $10

jr_00e_4640:
	jr z, jr_00e_463a                                ; $4640: $28 $f8

	ldh [c], a                                       ; $4642: $e2
	ld c, $29                                        ; $4643: $0e $29
	jr jr_00e_4638                                   ; $4645: $18 $f1

	inc l                                            ; $4647: $2c

jr_00e_4648:
	inc l                                            ; $4648: $2c
	jr nz, jr_00e_463c                               ; $4649: $20 $f1

	ld [hl+], a                                      ; $464b: $22

jr_00e_464c:
	inc l                                            ; $464c: $2c
	jr nz, jr_00e_4630                               ; $464d: $20 $e1

	ld e, $2e                                        ; $464f: $1e $2e

jr_00e_4651:
	jr jr_00e_4634                                   ; $4651: $18 $e1

	inc e                                            ; $4653: $1c

jr_00e_4654:
	cpl                                              ; $4654: $2f
	jr nz, jr_00e_4648                               ; $4655: $20 $f1

	ld [hl+], a                                      ; $4657: $22

jr_00e_4658:
	inc l                                            ; $4658: $2c
	jr jr_00e_464c                                   ; $4659: $18 $f1

	inc l                                            ; $465b: $2c

jr_00e_465c:
	inc l                                            ; $465c: $2c
	jr nz, jr_00e_4640                               ; $465d: $20 $e1

	ld e, $2e                                        ; $465f: $1e $2e
	jr @-$1d                                         ; $4661: $18 $e1

	inc e                                            ; $4663: $1c
	cpl                                              ; $4664: $2f
	jr nz, jr_00e_4658                               ; $4665: $20 $f1

	inc [hl]                                         ; $4667: $34
	inc l                                            ; $4668: $2c
	jr jr_00e_465c                                   ; $4669: $18 $f1

	ld [hl-], a                                      ; $466b: $32
	inc l                                            ; $466c: $2c
	jr nz, @-$1d                                     ; $466d: $20 $e1

jr_00e_466f:
	jr nc, jr_00e_469f                               ; $466f: $30 $2e

	jr jr_00e_4654                                   ; $4671: $18 $e1

jr_00e_4673:
	ld l, $2f                                        ; $4673: $2e $2f
	ld hl, $2ae1                                     ; $4675: $21 $e1 $2a
	ld l, $19                                        ; $4678: $2e $19
	pop hl                                           ; $467a: $e1

jr_00e_467b:
	jr z, jr_00e_46ab                                ; $467b: $28 $2e

	jr @-$0d                                         ; $467d: $18 $f1

	inc l                                            ; $467f: $2c
	inc l                                            ; $4680: $2c
	jr nz, @-$0d                                     ; $4681: $20 $f1

	ld [hl+], a                                      ; $4683: $22
	dec l                                            ; $4684: $2d
	jr nz, @-$0e                                     ; $4685: $20 $f0

	inc a                                            ; $4687: $3c
	inc l                                            ; $4688: $2c
	jr jr_00e_467b                                   ; $4689: $18 $f0

jr_00e_468b:
	ld a, [hl-]                                      ; $468b: $3a
	inc l                                            ; $468c: $2c
	jr nz, jr_00e_466f                               ; $468d: $20 $e0

	jr c, jr_00e_46bf                                ; $468f: $38 $2e

	jr jr_00e_4673                                   ; $4691: $18 $e0

jr_00e_4693:
	ld [hl], $2e                                     ; $4693: $36 $2e
	nop                                              ; $4695: $00
	ldh a, [c]                                       ; $4696: $f2

jr_00e_4697:
	ld b, $2a                                        ; $4697: $06 $2a
	ld hl, sp-$0e                                    ; $4699: $f8 $f2
	inc b                                            ; $469b: $04
	ld a, [hl+]                                      ; $469c: $2a
	nop                                              ; $469d: $00
	ldh [c], a                                       ; $469e: $e2

jr_00e_469f:
	ld [bc], a                                       ; $469f: $02
	jr z, @-$06                                      ; $46a0: $28 $f8

	ldh [c], a                                       ; $46a2: $e2
	nop                                              ; $46a3: $00
	add hl, hl                                       ; $46a4: $29
	jr nz, jr_00e_4697                               ; $46a5: $20 $f0

jr_00e_46a7:
	inc a                                            ; $46a7: $3c
	inc l                                            ; $46a8: $2c
	jr nz, jr_00e_468b                               ; $46a9: $20 $e0

jr_00e_46ab:
	jr c, jr_00e_46db                                ; $46ab: $38 $2e

	jr jr_00e_469f                                   ; $46ad: $18 $f0

	ld a, [hl-]                                      ; $46af: $3a
	inc l                                            ; $46b0: $2c
	jr jr_00e_4693                                   ; $46b1: $18 $e0

	ld [hl], $2e                                     ; $46b3: $36 $2e
	nop                                              ; $46b5: $00
	ldh [c], a                                       ; $46b6: $e2
	ld a, [bc]                                       ; $46b7: $0a
	jr z, @-$06                                      ; $46b8: $28 $f8

	ldh [c], a                                       ; $46ba: $e2
	ld [$0028], sp                                   ; $46bb: $08 $28 $00
	ldh a, [c]                                       ; $46be: $f2

jr_00e_46bf:
	ld b, $2a                                        ; $46bf: $06 $2a
	ld hl, sp-$0e                                    ; $46c1: $f8 $f2

jr_00e_46c3:
	inc c                                            ; $46c3: $0c
	dec hl                                           ; $46c4: $2b
	jr jr_00e_46a7                                   ; $46c5: $18 $e0

	ld [hl], $2e                                     ; $46c7: $36 $2e
	jr nz, jr_00e_46ab                               ; $46c9: $20 $e0

	ld a, $2e                                        ; $46cb: $3e $2e
	jr jr_00e_46bf                                   ; $46cd: $18 $f0

	ld a, [hl-]                                      ; $46cf: $3a
	inc l                                            ; $46d0: $2c
	jr nz, jr_00e_46c3                               ; $46d1: $20 $f0

	ld b, b                                          ; $46d3: $40
	inc l                                            ; $46d4: $2c
	ldh a, [$d8]                                     ; $46d5: $f0 $d8
	ld d, d                                          ; $46d7: $52
	ld l, $e8                                        ; $46d8: $2e $e8
	ret c                                            ; $46da: $d8

jr_00e_46db:
	ld d, b                                          ; $46db: $50
	ld l, $00                                        ; $46dc: $2e $00
	ldh [c], a                                       ; $46de: $e2
	jr @+$2a                                         ; $46df: $18 $28

	ld hl, sp-$1e                                    ; $46e1: $f8 $e2
	ld d, $28                                        ; $46e3: $16 $28
	nop                                              ; $46e5: $00
	ldh a, [c]                                       ; $46e6: $f2

jr_00e_46e7:
	ld b, $2a                                        ; $46e7: $06 $2a
	ld hl, sp-$0e                                    ; $46e9: $f8 $f2
	ld a, [de]                                       ; $46eb: $1a
	dec hl                                           ; $46ec: $2b
	db $10                                           ; $46ed: $10
	ret c                                            ; $46ee: $d8

	ld d, [hl]                                       ; $46ef: $56
	jr z, jr_00e_46fa                                ; $46f0: $28 $08

jr_00e_46f2:
	ret c                                            ; $46f2: $d8

	ld d, h                                          ; $46f3: $54
	jr z, jr_00e_46f6                                ; $46f4: $28 $00

jr_00e_46f6:
	ldh a, [c]                                       ; $46f6: $f2
	inc d                                            ; $46f7: $14
	jr z, jr_00e_46f2                                ; $46f8: $28 $f8

jr_00e_46fa:
	ldh a, [c]                                       ; $46fa: $f2
	ld [de], a                                       ; $46fb: $12
	jr z, jr_00e_46fe                                ; $46fc: $28 $00

jr_00e_46fe:
	ldh [c], a                                       ; $46fe: $e2
	db $10                                           ; $46ff: $10
	jr z, jr_00e_46fa                                ; $4700: $28 $f8

	ldh [c], a                                       ; $4702: $e2

jr_00e_4703:
	ld c, $28                                        ; $4703: $0e $28
	jr nz, jr_00e_46e7                               ; $4705: $20 $e0

	ld c, h                                          ; $4707: $4c
	ld l, $18                                        ; $4708: $2e $18

jr_00e_470a:
	ldh [rWY], a                                     ; $470a: $e0 $4a
	ld l, $20                                        ; $470c: $2e $20
	ldh a, [$4e]                                     ; $470e: $f0 $4e
	inc l                                            ; $4710: $2c
	jr jr_00e_4703                                   ; $4711: $18 $f0

	ld a, [hl-]                                      ; $4713: $3a
	dec l                                            ; $4714: $2d
	jr nc, jr_00e_470a                               ; $4715: $30 $f3

	ld a, [bc]                                       ; $4717: $0a
	jr z, jr_00e_4742                                ; $4718: $28 $28

	di                                               ; $471a: $f3
	ld [$3128], sp                                   ; $471b: $08 $28 $31
	db $e3                                           ; $471e: $e3
	ld [bc], a                                       ; $471f: $02

jr_00e_4720:
	jr z, jr_00e_474b                                ; $4720: $28 $29

	db $e3                                           ; $4722: $e3
	nop                                              ; $4723: $00
	jr z, jr_00e_475e                                ; $4724: $28 $38

	di                                               ; $4726: $f3
	db $10                                           ; $4727: $10
	add hl, hl                                       ; $4728: $29
	jr z, @-$0d                                      ; $4729: $28 $f1

	ld b, $28                                        ; $472b: $06 $28
	jr nz, jr_00e_4720                               ; $472d: $20 $f1

	inc b                                            ; $472f: $04
	jr z, jr_00e_475a                                ; $4730: $28 $28

	pop hl                                           ; $4732: $e1
	ld [bc], a                                       ; $4733: $02
	jr z, jr_00e_4756                                ; $4734: $28 $20

	pop hl                                           ; $4736: $e1
	nop                                              ; $4737: $00
	add hl, hl                                       ; $4738: $29
	dec h                                            ; $4739: $25
	di                                               ; $473a: $f3
	db $10                                           ; $473b: $10
	jr z, jr_00e_475b                                ; $473c: $28 $1d

	di                                               ; $473e: $f3
	ld c, $28                                        ; $473f: $0e $28
	dec d                                            ; $4741: $15

jr_00e_4742:
	di                                               ; $4742: $f3
	inc c                                            ; $4743: $0c
	jr z, @+$21                                      ; $4744: $28 $1f

	db $e3                                           ; $4746: $e3
	ld [bc], a                                       ; $4747: $02
	jr z, @+$19                                      ; $4748: $28 $17

	db $e3                                           ; $474a: $e3

jr_00e_474b:
	nop                                              ; $474b: $00
	add hl, hl                                       ; $474c: $29
	inc de                                           ; $474d: $13
	pop af                                           ; $474e: $f1
	ld b, $28                                        ; $474f: $06 $28
	dec bc                                           ; $4751: $0b
	pop af                                           ; $4752: $f1
	inc b                                            ; $4753: $04
	jr z, @+$15                                      ; $4754: $28 $13

jr_00e_4756:
	pop hl                                           ; $4756: $e1
	ld [bc], a                                       ; $4757: $02
	jr z, @+$0d                                      ; $4758: $28 $0b

jr_00e_475a:
	pop hl                                           ; $475a: $e1

jr_00e_475b:
	nop                                              ; $475b: $00
	add hl, hl                                       ; $475c: $29
	db $10                                           ; $475d: $10

jr_00e_475e:
	di                                               ; $475e: $f3
	db $10                                           ; $475f: $10
	jr z, jr_00e_476a                                ; $4760: $28 $08

	di                                               ; $4762: $f3
	ld a, [bc]                                       ; $4763: $0a
	jr z, jr_00e_476f                                ; $4764: $28 $09

	db $e3                                           ; $4766: $e3
	ld [bc], a                                       ; $4767: $02
	jr z, jr_00e_476a                                ; $4768: $28 $00

jr_00e_476a:
	di                                               ; $476a: $f3
	ld [$0128], sp                                   ; $476b: $08 $28 $01
	db $e3                                           ; $476e: $e3

jr_00e_476f:
	nop                                              ; $476f: $00
	add hl, hl                                       ; $4770: $29
	db $10                                           ; $4771: $10
	ret nc                                           ; $4772: $d0

	ld d, b                                          ; $4773: $50
	ld l, $08                                        ; $4774: $2e $08

jr_00e_4776:
	ret nc                                           ; $4776: $d0

	ld c, [hl]                                       ; $4777: $4e
	ld l, $00                                        ; $4778: $2e $00
	ldh [rAUD3LEVEL], a                              ; $477a: $e0 $1c
	jr z, jr_00e_4776                                ; $477c: $28 $f8

jr_00e_477e:
	ldh [rAUD3ENA], a                                ; $477e: $e0 $1a
	jr z, jr_00e_4782                                ; $4780: $28 $00

jr_00e_4782:
	ldh a, [rAUD4LEN]                                ; $4782: $f0 $20
	jr z, jr_00e_477e                                ; $4784: $28 $f8

	ldh a, [rAUD3HIGH]                               ; $4786: $f0 $1e
	add hl, hl                                       ; $4788: $29
	ldh a, [$e8]                                     ; $4789: $f0 $e8
	ld d, h                                          ; $478b: $54
	jr z, jr_00e_4776                                ; $478c: $28 $e8

	add sp, $52                                      ; $478e: $e8 $52
	jr z, @+$12                                      ; $4790: $28 $10

	ldh a, [rAUD2LOW]                                ; $4792: $f0 $18
	jr z, jr_00e_479e                                ; $4794: $28 $08

jr_00e_4796:
	ldh a, [rAUD2LEN]                                ; $4796: $f0 $16
	jr z, jr_00e_479a                                ; $4798: $28 $00

jr_00e_479a:
	ldh a, [rAUD1HIGH]                               ; $479a: $f0 $14
	jr z, jr_00e_4796                                ; $479c: $28 $f8

jr_00e_479e:
	ldh a, [rAUD1ENV]                                ; $479e: $f0 $12
	add hl, hl                                       ; $47a0: $29
	ldh [$e1], a                                     ; $47a1: $e0 $e1
	jr c, jr_00e_47d3                                ; $47a3: $38 $2e

	ret c                                            ; $47a5: $d8

	pop hl                                           ; $47a6: $e1
	ld [hl], $2e                                     ; $47a7: $36 $2e
	ldh [$f1], a                                     ; $47a9: $e0 $f1
	jr z, jr_00e_47d9                                ; $47ab: $28 $2c

	ret c                                            ; $47ad: $d8

	pop af                                           ; $47ae: $f1
	ld h, $2d                                        ; $47af: $26 $2d
	ldh [$e1], a                                     ; $47b1: $e0 $e1
	jr c, jr_00e_47e3                                ; $47b3: $38 $2e

	ldh [$f1], a                                     ; $47b5: $e0 $f1
	jr z, jr_00e_47e5                                ; $47b7: $28 $2c

	ret c                                            ; $47b9: $d8

	pop af                                           ; $47ba: $f1
	ld h, $2c                                        ; $47bb: $26 $2c
	ret c                                            ; $47bd: $d8

	pop hl                                           ; $47be: $e1
	ld [hl], $2f                                     ; $47bf: $36 $2f
	ldh [$e1], a                                     ; $47c1: $e0 $e1
	jr c, jr_00e_47f3                                ; $47c3: $38 $2e

	ldh [$f1], a                                     ; $47c5: $e0 $f1
	jr z, jr_00e_47f5                                ; $47c7: $28 $2c

	ret c                                            ; $47c9: $d8

	pop af                                           ; $47ca: $f1
	ld h, $2c                                        ; $47cb: $26 $2c
	ret c                                            ; $47cd: $d8

	pop hl                                           ; $47ce: $e1
	ld [hl], $2f                                     ; $47cf: $36 $2f
	ldh [$e1], a                                     ; $47d1: $e0 $e1

jr_00e_47d3:
	jr c, jr_00e_4803                                ; $47d3: $38 $2e

	ldh [$f1], a                                     ; $47d5: $e0 $f1
	jr z, @+$2e                                      ; $47d7: $28 $2c

jr_00e_47d9:
	ret c                                            ; $47d9: $d8

	pop af                                           ; $47da: $f1
	ld h, $2c                                        ; $47db: $26 $2c
	ret c                                            ; $47dd: $d8

	pop hl                                           ; $47de: $e1
	ld [hl], $2f                                     ; $47df: $36 $2f
	ldh [$e1], a                                     ; $47e1: $e0 $e1

jr_00e_47e3:
	jr c, jr_00e_4813                                ; $47e3: $38 $2e

jr_00e_47e5:
	ldh [$f1], a                                     ; $47e5: $e0 $f1
	jr z, jr_00e_4815                                ; $47e7: $28 $2c

	ret c                                            ; $47e9: $d8

	pop af                                           ; $47ea: $f1
	ld h, $2c                                        ; $47eb: $26 $2c
	ret c                                            ; $47ed: $d8

	pop hl                                           ; $47ee: $e1
	ld [hl], $2f                                     ; $47ef: $36 $2f
	ldh [$f1], a                                     ; $47f1: $e0 $f1

jr_00e_47f3:
	inc [hl]                                         ; $47f3: $34
	inc l                                            ; $47f4: $2c

jr_00e_47f5:
	ret c                                            ; $47f5: $d8

	pop af                                           ; $47f6: $f1
	ld [hl-], a                                      ; $47f7: $32
	inc l                                            ; $47f8: $2c
	ldh [$e1], a                                     ; $47f9: $e0 $e1
	inc l                                            ; $47fb: $2c
	ld l, $d8                                        ; $47fc: $2e $d8
	pop hl                                           ; $47fe: $e1
	ld a, [hl+]                                      ; $47ff: $2a
	cpl                                              ; $4800: $2f
	ldh [$e1], a                                     ; $4801: $e0 $e1

jr_00e_4803:
	inc h                                            ; $4803: $24
	ld l, $d8                                        ; $4804: $2e $d8
	pop hl                                           ; $4806: $e1
	ld [hl+], a                                      ; $4807: $22
	ld l, $e0                                        ; $4808: $2e $e0
	pop af                                           ; $480a: $f1
	jr z, jr_00e_4839                                ; $480b: $28 $2c

	ret c                                            ; $480d: $d8

	pop af                                           ; $480e: $f1
	ld h, $2d                                        ; $480f: $26 $2d
	ld b, b                                          ; $4811: $40
	pop af                                           ; $4812: $f1

jr_00e_4813:
	ld [hl], $6c                                     ; $4813: $36 $6c

jr_00e_4815:
	ld c, b                                          ; $4815: $48
	pop af                                           ; $4816: $f1
	inc [hl]                                         ; $4817: $34
	ld l, h                                          ; $4818: $6c
	ld d, b                                          ; $4819: $50
	pop hl                                           ; $481a: $e1
	ld a, [hl+]                                      ; $481b: $2a
	ld l, $48                                        ; $481c: $2e $48
	pop hl                                           ; $481e: $e1
	inc h                                            ; $481f: $24
	ld l, $40                                        ; $4820: $2e $40
	pop hl                                           ; $4822: $e1
	ld [hl+], a                                      ; $4823: $22
	cpl                                              ; $4824: $2f
	ld d, b                                          ; $4825: $50
	pop hl                                           ; $4826: $e1
	ld a, [hl+]                                      ; $4827: $2a
	ld l, $40                                        ; $4828: $2e $40
	pop af                                           ; $482a: $f1
	ld [hl], $6c                                     ; $482b: $36 $6c
	ld c, b                                          ; $482d: $48
	pop af                                           ; $482e: $f1
	inc [hl]                                         ; $482f: $34
	ld l, h                                          ; $4830: $6c
	ld c, b                                          ; $4831: $48
	pop hl                                           ; $4832: $e1
	inc h                                            ; $4833: $24
	ld l, $40                                        ; $4834: $2e $40
	pop hl                                           ; $4836: $e1
	ld [hl+], a                                      ; $4837: $22
	cpl                                              ; $4838: $2f

jr_00e_4839:
	ld d, b                                          ; $4839: $50
	pop hl                                           ; $483a: $e1
	ld a, [hl+]                                      ; $483b: $2a
	ld l, $40                                        ; $483c: $2e $40
	pop af                                           ; $483e: $f1
	ld [hl], $6c                                     ; $483f: $36 $6c
	ld c, b                                          ; $4841: $48
	pop af                                           ; $4842: $f1
	inc [hl]                                         ; $4843: $34
	ld l, h                                          ; $4844: $6c
	ld c, b                                          ; $4845: $48
	pop hl                                           ; $4846: $e1
	inc h                                            ; $4847: $24
	ld l, $40                                        ; $4848: $2e $40
	pop hl                                           ; $484a: $e1
	ld [hl+], a                                      ; $484b: $22
	cpl                                              ; $484c: $2f
	ld d, b                                          ; $484d: $50
	pop hl                                           ; $484e: $e1
	ld a, [hl+]                                      ; $484f: $2a
	ld l, $40                                        ; $4850: $2e $40
	pop af                                           ; $4852: $f1
	ld [hl], $6c                                     ; $4853: $36 $6c
	ld c, b                                          ; $4855: $48
	pop af                                           ; $4856: $f1
	inc [hl]                                         ; $4857: $34
	ld l, h                                          ; $4858: $6c
	ld c, b                                          ; $4859: $48
	pop hl                                           ; $485a: $e1
	inc h                                            ; $485b: $24
	ld l, $40                                        ; $485c: $2e $40
	pop hl                                           ; $485e: $e1
	ld [hl+], a                                      ; $485f: $22
	cpl                                              ; $4860: $2f
	ld d, b                                          ; $4861: $50
	pop hl                                           ; $4862: $e1
	ld a, [hl+]                                      ; $4863: $2a
	ld l, $40                                        ; $4864: $2e $40
	pop af                                           ; $4866: $f1
	ld [hl], $6c                                     ; $4867: $36 $6c
	ld c, b                                          ; $4869: $48
	pop af                                           ; $486a: $f1
	inc [hl]                                         ; $486b: $34
	ld l, h                                          ; $486c: $6c
	ld c, b                                          ; $486d: $48
	pop hl                                           ; $486e: $e1
	inc h                                            ; $486f: $24
	ld l, $40                                        ; $4870: $2e $40
	pop hl                                           ; $4872: $e1
	ld [hl+], a                                      ; $4873: $22
	cpl                                              ; $4874: $2f
	ld c, b                                          ; $4875: $48
	pop hl                                           ; $4876: $e1
	ld l, $2e                                        ; $4877: $2e $2e
	ld b, b                                          ; $4879: $40
	pop hl                                           ; $487a: $e1
	inc l                                            ; $487b: $2c
	ld l, $50                                        ; $487c: $2e $50
	pop hl                                           ; $487e: $e1
	ld a, [hl+]                                      ; $487f: $2a
	ld l, $40                                        ; $4880: $2e $40
	pop af                                           ; $4882: $f1
	ld [hl], $6c                                     ; $4883: $36 $6c
	ld c, b                                          ; $4885: $48
	pop af                                           ; $4886: $f1
	inc [hl]                                         ; $4887: $34
	ld l, l                                          ; $4888: $6d
	ld b, b                                          ; $4889: $40
	pop hl                                           ; $488a: $e1
	ld [hl-], a                                      ; $488b: $32
	ld l, [hl]                                       ; $488c: $6e
	ld c, b                                          ; $488d: $48
	pop hl                                           ; $488e: $e1
	jr nc, jr_00e_48ff                               ; $488f: $30 $6e

	ld d, b                                          ; $4891: $50
	pop hl                                           ; $4892: $e1
	ld a, [hl+]                                      ; $4893: $2a
	ld l, $40                                        ; $4894: $2e $40
	pop af                                           ; $4896: $f1
	ld [hl], $6c                                     ; $4897: $36 $6c
	ld c, b                                          ; $4899: $48
	pop af                                           ; $489a: $f1
	inc [hl]                                         ; $489b: $34
	ld l, l                                          ; $489c: $6d
	ld c, b                                          ; $489d: $48
	pop af                                           ; $489e: $f1
	jr z, jr_00e_48cd                                ; $489f: $28 $2c

	ld b, b                                          ; $48a1: $40
	pop af                                           ; $48a2: $f1
	ld h, $2c                                        ; $48a3: $26 $2c
	ld c, b                                          ; $48a5: $48
	pop hl                                           ; $48a6: $e1
	inc h                                            ; $48a7: $24
	ld a, [hl+]                                      ; $48a8: $2a
	ld b, b                                          ; $48a9: $40
	pop hl                                           ; $48aa: $e1
	ld [hl+], a                                      ; $48ab: $22
	dec hl                                           ; $48ac: $2b

jr_00e_48ad:
	ld b, a                                          ; $48ad: $47
	di                                               ; $48ae: $f3
	jr nc, jr_00e_48dd                               ; $48af: $30 $2c

jr_00e_48b1:
	ccf                                              ; $48b1: $3f
	di                                               ; $48b2: $f3
	ld l, $2c                                        ; $48b3: $2e $2c

jr_00e_48b5:
	scf                                              ; $48b5: $37
	di                                               ; $48b6: $f3
	inc l                                            ; $48b7: $2c
	inc l                                            ; $48b8: $2c

jr_00e_48b9:
	scf                                              ; $48b9: $37
	db $e3                                           ; $48ba: $e3
	ld a, [hl+]                                      ; $48bb: $2a
	ld a, [hl+]                                      ; $48bc: $2a
	ccf                                              ; $48bd: $3f
	db $e3                                           ; $48be: $e3
	inc h                                            ; $48bf: $24
	dec hl                                           ; $48c0: $2b
	jr c, jr_00e_48b5                                ; $48c1: $38 $f2

	inc [hl]                                         ; $48c3: $34
	inc l                                            ; $48c4: $2c
	jr nc, jr_00e_48b9                               ; $48c5: $30 $f2

	ld [hl-], a                                      ; $48c7: $32
	inc l                                            ; $48c8: $2c
	jr c, jr_00e_48ad                                ; $48c9: $38 $e2

	inc h                                            ; $48cb: $24
	ld a, [hl+]                                      ; $48cc: $2a

jr_00e_48cd:
	jr nc, jr_00e_48b1                               ; $48cd: $30 $e2

	ld [hl+], a                                      ; $48cf: $22
	dec hl                                           ; $48d0: $2b
	ld l, $e3                                        ; $48d1: $2e $e3
	inc h                                            ; $48d3: $24
	ld a, [hl+]                                      ; $48d4: $2a
	ld h, $e3                                        ; $48d5: $26 $e3
	ld [hl+], a                                      ; $48d7: $22
	ld a, [hl+]                                      ; $48d8: $2a
	dec [hl]                                         ; $48d9: $35
	di                                               ; $48da: $f3
	ld c, h                                          ; $48db: $4c
	inc l                                            ; $48dc: $2c

jr_00e_48dd:
	dec l                                            ; $48dd: $2d
	di                                               ; $48de: $f3
	ld c, d                                          ; $48df: $4a
	inc l                                            ; $48e0: $2c
	dec h                                            ; $48e1: $25
	di                                               ; $48e2: $f3
	ld c, b                                          ; $48e3: $48

jr_00e_48e4:
	dec l                                            ; $48e4: $2d
	inc hl                                           ; $48e5: $23
	pop af                                           ; $48e6: $f1
	jr z, jr_00e_4915                                ; $48e7: $28 $2c

	dec de                                           ; $48e9: $1b
	pop af                                           ; $48ea: $f1
	ld h, $2c                                        ; $48eb: $26 $2c
	inc hl                                           ; $48ed: $23
	pop hl                                           ; $48ee: $e1
	inc h                                            ; $48ef: $24
	ld a, [hl+]                                      ; $48f0: $2a
	dec de                                           ; $48f1: $1b
	pop hl                                           ; $48f2: $e1
	ld [hl+], a                                      ; $48f3: $22
	dec hl                                           ; $48f4: $2b
	jr @-$0d                                         ; $48f5: $18 $f1

	ld b, [hl]                                       ; $48f7: $46
	inc l                                            ; $48f8: $2c
	db $10                                           ; $48f9: $10
	pop af                                           ; $48fa: $f1
	ld b, h                                          ; $48fb: $44
	inc l                                            ; $48fc: $2c
	db $10                                           ; $48fd: $10
	pop hl                                           ; $48fe: $e1

jr_00e_48ff:
	ld a, $2a                                        ; $48ff: $3e $2a
	jr nz, jr_00e_48e4                               ; $4901: $20 $e1

	ld b, d                                          ; $4903: $42
	ld a, [hl+]                                      ; $4904: $2a
	jr @-$1d                                         ; $4905: $18 $e1

	ld b, b                                          ; $4907: $40
	dec hl                                           ; $4908: $2b
	dec h                                            ; $4909: $25
	pop af                                           ; $490a: $f1
	ld d, [hl]                                       ; $490b: $56
	ld l, d                                          ; $490c: $6a
	rra                                              ; $490d: $1f
	db $f4                                           ; $490e: $f4
	inc a                                            ; $490f: $3c
	inc l                                            ; $4910: $2c
	rla                                              ; $4911: $17
	db $f4                                           ; $4912: $f4
	ld a, [hl-]                                      ; $4913: $3a
	inc l                                            ; $4914: $2c

jr_00e_4915:
	rra                                              ; $4915: $1f
	db $e4                                           ; $4916: $e4
	jr c, jr_00e_4943                                ; $4917: $38 $2a

	rla                                              ; $4919: $17
	db $e4                                           ; $491a: $e4
	ld [hl], $2b                                     ; $491b: $36 $2b
	nop                                              ; $491d: $00
	ldh a, [rAUDENA]                                 ; $491e: $f0 $26
	inc l                                            ; $4920: $2c
	ld hl, sp-$10                                    ; $4921: $f8 $f0
	inc h                                            ; $4923: $24
	inc l                                            ; $4924: $2c
	nop                                              ; $4925: $00

jr_00e_4926:
	ldh [rTMA], a                                    ; $4926: $e0 $06
	jr z, @-$06                                      ; $4928: $28 $f8

	ldh [rDIV], a                                    ; $492a: $e0 $04
	jr z, jr_00e_4926                                ; $492c: $28 $f8

	ldh a, [$2a]                                     ; $492e: $f0 $2a
	jr z, jr_00e_493a                                ; $4930: $28 $08

	ret c                                            ; $4932: $d8

	ld [$002b], sp                                   ; $4933: $08 $2b $00

jr_00e_4936:
	ldh a, [rAUDENA]                                 ; $4936: $f0 $26
	inc l                                            ; $4938: $2c
	nop                                              ; $4939: $00

jr_00e_493a:
	ldh [rTMA], a                                    ; $493a: $e0 $06
	jr z, jr_00e_4936                                ; $493c: $28 $f8

jr_00e_493e:
	ldh a, [rAUDVOL]                                 ; $493e: $f0 $24
	inc l                                            ; $4940: $2c
	ld hl, sp-$20                                    ; $4941: $f8 $e0

jr_00e_4943:
	inc b                                            ; $4943: $04
	jr z, jr_00e_493e                                ; $4944: $28 $f8

	ldh a, [$2a]                                     ; $4946: $f0 $2a
	jr z, @+$0d                                      ; $4948: $28 $0b

	sub $28                                          ; $494a: $d6 $28
	dec hl                                           ; $494c: $2b
	nop                                              ; $494d: $00

jr_00e_494e:
	ldh a, [rAUDENA]                                 ; $494e: $f0 $26
	inc l                                            ; $4950: $2c
	nop                                              ; $4951: $00
	ldh [rTMA], a                                    ; $4952: $e0 $06
	jr z, jr_00e_494e                                ; $4954: $28 $f8

jr_00e_4956:
	ldh a, [rAUDVOL]                                 ; $4956: $f0 $24
	inc l                                            ; $4958: $2c
	ld hl, sp-$20                                    ; $4959: $f8 $e0
	inc b                                            ; $495b: $04
	jr z, jr_00e_4956                                ; $495c: $28 $f8

	ldh a, [$2a]                                     ; $495e: $f0 $2a
	jr z, jr_00e_4970                                ; $4960: $28 $0e

jr_00e_4962:
	db $d3                                           ; $4962: $d3
	ld a, [bc]                                       ; $4963: $0a
	dec hl                                           ; $4964: $2b
	nop                                              ; $4965: $00
	ldh [rSC], a                                     ; $4966: $e0 $02
	jr z, jr_00e_4962                                ; $4968: $28 $f8

jr_00e_496a:
	ldh [rP1], a                                     ; $496a: $e0 $00
	jr z, jr_00e_496e                                ; $496c: $28 $00

jr_00e_496e:
	ldh a, [rAUD4POLY]                               ; $496e: $f0 $22

jr_00e_4970:
	jr z, jr_00e_496a                                ; $4970: $28 $f8

	ldh a, [rAUD4LEN]                                ; $4972: $f0 $20
	jr z, jr_00e_496e                                ; $4974: $28 $f8

	ldh a, [$2a]                                     ; $4976: $f0 $2a
	jr z, jr_00e_4982                                ; $4978: $28 $08

	ret c                                            ; $497a: $d8

	ld [$002b], sp                                   ; $497b: $08 $2b $00

jr_00e_497e:
	ldh [rSC], a                                     ; $497e: $e0 $02
	jr z, jr_00e_4982                                ; $4980: $28 $00

jr_00e_4982:
	ldh a, [rAUD4POLY]                               ; $4982: $f0 $22
	jr z, jr_00e_497e                                ; $4984: $28 $f8

jr_00e_4986:
	ldh a, [rAUD4LEN]                                ; $4986: $f0 $20
	jr z, jr_00e_4982                                ; $4988: $28 $f8

	ldh a, [$2a]                                     ; $498a: $f0 $2a
	jr z, jr_00e_4986                                ; $498c: $28 $f8

	ldh [rP1], a                                     ; $498e: $e0 $00
	jr z, @+$0d                                      ; $4990: $28 $0b

	sub $28                                          ; $4992: $d6 $28
	dec hl                                           ; $4994: $2b
	nop                                              ; $4995: $00

jr_00e_4996:
	ldh [rSC], a                                     ; $4996: $e0 $02
	jr z, jr_00e_499a                                ; $4998: $28 $00

jr_00e_499a:
	ldh a, [rAUD4POLY]                               ; $499a: $f0 $22
	jr z, jr_00e_4996                                ; $499c: $28 $f8

jr_00e_499e:
	ldh a, [rAUD4LEN]                                ; $499e: $f0 $20
	jr z, jr_00e_499a                                ; $49a0: $28 $f8

	ldh a, [$2a]                                     ; $49a2: $f0 $2a
	jr z, jr_00e_499e                                ; $49a4: $28 $f8

	ldh [rP1], a                                     ; $49a6: $e0 $00
	jr z, jr_00e_49b8                                ; $49a8: $28 $0e

	db $d3                                           ; $49aa: $d3
	ld a, [bc]                                       ; $49ab: $0a
	dec hl                                           ; $49ac: $2b
	nop                                              ; $49ad: $00
	pop af                                           ; $49ae: $f1
	ld b, $2a                                        ; $49af: $06 $2a
	ld hl, sp-$0f                                    ; $49b1: $f8 $f1
	inc b                                            ; $49b3: $04
	ld a, [hl+]                                      ; $49b4: $2a
	nop                                              ; $49b5: $00
	pop hl                                           ; $49b6: $e1
	ld [bc], a                                       ; $49b7: $02

jr_00e_49b8:
	jr z, @-$06                                      ; $49b8: $28 $f8

	pop hl                                           ; $49ba: $e1
	nop                                              ; $49bb: $00
	add hl, hl                                       ; $49bc: $29
	nop                                              ; $49bd: $00
	pop af                                           ; $49be: $f1
	ld a, [de]                                       ; $49bf: $1a
	ld a, [hl+]                                      ; $49c0: $2a
	ld hl, sp-$0f                                    ; $49c1: $f8 $f1
	jr @+$2c                                         ; $49c3: $18 $2a

	nop                                              ; $49c5: $00
	pop hl                                           ; $49c6: $e1
	ld c, $28                                        ; $49c7: $0e $28
	ld hl, sp-$1f                                    ; $49c9: $f8 $e1
	inc c                                            ; $49cb: $0c
	add hl, hl                                       ; $49cc: $29
	ldh a, [$f0]                                     ; $49cd: $f0 $f0
	ld c, h                                          ; $49cf: $4c
	ld a, [hl+]                                      ; $49d0: $2a
	ldh a, [$e0]                                     ; $49d1: $f0 $e0
	ld c, [hl]                                       ; $49d3: $4e
	ld a, [hl+]                                      ; $49d4: $2a
	ld [$4ce8], sp                                   ; $49d5: $08 $e8 $4c
	ld a, [hl+]                                      ; $49d8: $2a
	nop                                              ; $49d9: $00
	pop af                                           ; $49da: $f1
	ld a, [de]                                       ; $49db: $1a
	ld a, [hl+]                                      ; $49dc: $2a
	ld hl, sp-$0f                                    ; $49dd: $f8 $f1
	jr jr_00e_4a0b                                   ; $49df: $18 $2a

	nop                                              ; $49e1: $00
	pop hl                                           ; $49e2: $e1
	ld c, $28                                        ; $49e3: $0e $28
	ld hl, sp-$1f                                    ; $49e5: $f8 $e1
	inc c                                            ; $49e7: $0c
	add hl, hl                                       ; $49e8: $29
	ldh a, [$d4]                                     ; $49e9: $f0 $d4
	ld d, [hl]                                       ; $49eb: $56
	ld l, $e8                                        ; $49ec: $2e $e8
	call nc, $2e54                                   ; $49ee: $d4 $54 $2e
	ldh a, [$f0]                                     ; $49f1: $f0 $f0
	ld c, [hl]                                       ; $49f3: $4e
	ld a, [hl+]                                      ; $49f4: $2a
	ld [$4ee8], sp                                   ; $49f5: $08 $e8 $4e
	ld a, [hl+]                                      ; $49f8: $2a
	ldh a, [$e0]                                     ; $49f9: $f0 $e0
	ld c, h                                          ; $49fb: $4c
	ld a, [hl+]                                      ; $49fc: $2a
	nop                                              ; $49fd: $00
	pop af                                           ; $49fe: $f1
	ld a, [de]                                       ; $49ff: $1a
	ld a, [hl+]                                      ; $4a00: $2a
	ld hl, sp-$0f                                    ; $4a01: $f8 $f1
	jr jr_00e_4a2f                                   ; $4a03: $18 $2a

	nop                                              ; $4a05: $00
	pop hl                                           ; $4a06: $e1
	ld c, $28                                        ; $4a07: $0e $28
	ld hl, sp-$1f                                    ; $4a09: $f8 $e1

jr_00e_4a0b:
	inc c                                            ; $4a0b: $0c
	add hl, hl                                       ; $4a0c: $29
	db $10                                           ; $4a0d: $10
	call nc, $2852                                   ; $4a0e: $d4 $52 $28
	ld [$50d4], sp                                   ; $4a11: $08 $d4 $50

jr_00e_4a14:
	jr z, jr_00e_4a16                                ; $4a14: $28 $00

jr_00e_4a16:
	pop af                                           ; $4a16: $f1
	ld a, [de]                                       ; $4a17: $1a

jr_00e_4a18:
	ld a, [hl+]                                      ; $4a18: $2a
	ld hl, sp-$0f                                    ; $4a19: $f8 $f1
	jr jr_00e_4a47                                   ; $4a1b: $18 $2a

	nop                                              ; $4a1d: $00
	pop hl                                           ; $4a1e: $e1
	ld [de], a                                       ; $4a1f: $12
	jr z, @-$06                                      ; $4a20: $28 $f8

	pop hl                                           ; $4a22: $e1
	db $10                                           ; $4a23: $10

jr_00e_4a24:
	add hl, hl                                       ; $4a24: $29
	jr nz, jr_00e_4a18                               ; $4a25: $20 $f1

	ld a, [hl-]                                      ; $4a27: $3a

jr_00e_4a28:
	inc l                                            ; $4a28: $2c
	jr @-$0d                                         ; $4a29: $18 $f1

	jr c, jr_00e_4a59                                ; $4a2b: $38 $2c

	jr nz, @-$1d                                     ; $4a2d: $20 $e1

jr_00e_4a2f:
	ld e, $2e                                        ; $4a2f: $1e $2e
	jr jr_00e_4a14                                   ; $4a31: $18 $e1

	inc e                                            ; $4a33: $1c

jr_00e_4a34:
	cpl                                              ; $4a34: $2f
	jr nz, jr_00e_4a28                               ; $4a35: $20 $f1

	ld a, [hl-]                                      ; $4a37: $3a

jr_00e_4a38:
	inc l                                            ; $4a38: $2c
	jr nz, @-$1d                                     ; $4a39: $20 $e1

	ld e, $2e                                        ; $4a3b: $1e $2e
	jr @-$0d                                         ; $4a3d: $18 $f1

	jr c, jr_00e_4a6d                                ; $4a3f: $38 $2c

	jr jr_00e_4a24                                   ; $4a41: $18 $e1

	inc e                                            ; $4a43: $1c

jr_00e_4a44:
	cpl                                              ; $4a44: $2f
	jr nz, jr_00e_4a38                               ; $4a45: $20 $f1

jr_00e_4a47:
	ld a, [hl-]                                      ; $4a47: $3a

jr_00e_4a48:
	inc l                                            ; $4a48: $2c
	jr @-$0d                                         ; $4a49: $18 $f1

	inc a                                            ; $4a4b: $3c

jr_00e_4a4c:
	inc l                                            ; $4a4c: $2c
	jr nz, @-$1d                                     ; $4a4d: $20 $e1

	ld l, $2e                                        ; $4a4f: $2e $2e
	jr jr_00e_4a34                                   ; $4a51: $18 $e1

	inc l                                            ; $4a53: $2c

jr_00e_4a54:
	cpl                                              ; $4a54: $2f
	jr nz, jr_00e_4a48                               ; $4a55: $20 $f1

	ld a, [hl-]                                      ; $4a57: $3a

jr_00e_4a58:
	inc l                                            ; $4a58: $2c

jr_00e_4a59:
	jr jr_00e_4a4c                                   ; $4a59: $18 $f1

	inc a                                            ; $4a5b: $3c

jr_00e_4a5c:
	inc l                                            ; $4a5c: $2c
	jr nz, @-$1d                                     ; $4a5d: $20 $e1

	ld l, $2e                                        ; $4a5f: $2e $2e
	jr jr_00e_4a44                                   ; $4a61: $18 $e1

	inc l                                            ; $4a63: $2c
	cpl                                              ; $4a64: $2f
	jr nz, jr_00e_4a58                               ; $4a65: $20 $f1

	ld a, [hl-]                                      ; $4a67: $3a

jr_00e_4a68:
	inc l                                            ; $4a68: $2c
	jr jr_00e_4a5c                                   ; $4a69: $18 $f1

	jr c, jr_00e_4a99                                ; $4a6b: $38 $2c

jr_00e_4a6d:
	jr nz, @-$1d                                     ; $4a6d: $20 $e1

	ld [hl], $2e                                     ; $4a6f: $36 $2e
	jr jr_00e_4a54                                   ; $4a71: $18 $e1

	inc [hl]                                         ; $4a73: $34

jr_00e_4a74:
	cpl                                              ; $4a74: $2f
	jr z, jr_00e_4a58                                ; $4a75: $28 $e1

	jr nz, jr_00e_4aa7                               ; $4a77: $20 $2e

	jr z, @-$0d                                      ; $4a79: $28 $f1

	ld [hl+], a                                      ; $4a7b: $22
	ld l, $20                                        ; $4a7c: $2e $20
	pop af                                           ; $4a7e: $f1
	ld a, [hl+]                                      ; $4a7f: $2a

jr_00e_4a80:
	inc l                                            ; $4a80: $2c
	jr jr_00e_4a74                                   ; $4a81: $18 $f1

	jr z, jr_00e_4ab1                                ; $4a83: $28 $2c

	jr nz, jr_00e_4a68                               ; $4a85: $20 $e1

	ld e, $2e                                        ; $4a87: $1e $2e
	jr @-$1d                                         ; $4a89: $18 $e1

	inc e                                            ; $4a8b: $1c

jr_00e_4a8c:
	cpl                                              ; $4a8c: $2f
	jr z, @-$1d                                      ; $4a8d: $28 $e1

	jr nz, jr_00e_4abf                               ; $4a8f: $20 $2e

	jr z, @-$0d                                      ; $4a91: $28 $f1

	ld [hl+], a                                      ; $4a93: $22

jr_00e_4a94:
	ld l, $20                                        ; $4a94: $2e $20
	pop af                                           ; $4a96: $f1
	ld a, [hl+]                                      ; $4a97: $2a

jr_00e_4a98:
	inc l                                            ; $4a98: $2c

jr_00e_4a99:
	jr jr_00e_4a8c                                   ; $4a99: $18 $f1

	jr z, @+$2e                                      ; $4a9b: $28 $2c

	jr nz, jr_00e_4a80                               ; $4a9d: $20 $e1

	ld e, $2e                                        ; $4a9f: $1e $2e
	jr @-$1d                                         ; $4aa1: $18 $e1

	inc e                                            ; $4aa3: $1c
	cpl                                              ; $4aa4: $2f
	jr z, jr_00e_4a98                                ; $4aa5: $28 $f1

jr_00e_4aa7:
	ld b, d                                          ; $4aa7: $42

jr_00e_4aa8:
	ld l, $20                                        ; $4aa8: $2e $20
	pop af                                           ; $4aaa: $f1
	ld l, $2c                                        ; $4aab: $2e $2c
	jr z, @-$1d                                      ; $4aad: $28 $e1

	jr nz, jr_00e_4adf                               ; $4aaf: $20 $2e

jr_00e_4ab1:
	jr nz, jr_00e_4a94                               ; $4ab1: $20 $e1

	inc l                                            ; $4ab3: $2c

jr_00e_4ab4:
	ld l, $18                                        ; $4ab4: $2e $18
	pop af                                           ; $4ab6: $f1
	jr z, jr_00e_4ae5                                ; $4ab7: $28 $2c

	jr @-$1d                                         ; $4ab9: $18 $e1

	inc e                                            ; $4abb: $1c
	cpl                                              ; $4abc: $2f
	jr z, @-$1d                                      ; $4abd: $28 $e1

jr_00e_4abf:
	inc [hl]                                         ; $4abf: $34

jr_00e_4ac0:
	ld l, $28                                        ; $4ac0: $2e $28
	pop af                                           ; $4ac2: $f1
	jr c, jr_00e_4af1                                ; $4ac3: $38 $2c

	jr nz, jr_00e_4aa8                               ; $4ac5: $20 $e1

	ld [hl-], a                                      ; $4ac7: $32
	ld l, $20                                        ; $4ac8: $2e $20
	pop af                                           ; $4aca: $f1
	ld [hl], $2c                                     ; $4acb: $36 $2c
	jr jr_00e_4ac0                                   ; $4acd: $18 $f1

	jr z, @+$2e                                      ; $4acf: $28 $2c

	jr jr_00e_4ab4                                   ; $4ad1: $18 $e1

	inc e                                            ; $4ad3: $1c
	cpl                                              ; $4ad4: $2f
	jr nz, @-$1d                                     ; $4ad5: $20 $e1

jr_00e_4ad7:
	ld b, b                                          ; $4ad7: $40

jr_00e_4ad8:
	ld l, $28                                        ; $4ad8: $2e $28
	pop hl                                           ; $4ada: $e1

jr_00e_4adb:
	jr nz, jr_00e_4b0b                               ; $4adb: $20 $2e

	jr z, @-$0d                                      ; $4add: $28 $f1

jr_00e_4adf:
	ld [hl+], a                                      ; $4adf: $22
	ld l, $20                                        ; $4ae0: $2e $20
	pop af                                           ; $4ae2: $f1

jr_00e_4ae3:
	ld a, [hl+]                                      ; $4ae3: $2a
	inc l                                            ; $4ae4: $2c

jr_00e_4ae5:
	jr jr_00e_4ad8                                   ; $4ae5: $18 $f1

	jr z, jr_00e_4b15                                ; $4ae7: $28 $2c

	jr @-$1d                                         ; $4ae9: $18 $e1

	inc e                                            ; $4aeb: $1c
	cpl                                              ; $4aec: $2f
	jr nz, jr_00e_4adf                               ; $4aed: $20 $f0

jr_00e_4aef:
	jr z, @+$2e                                      ; $4aef: $28 $2c

jr_00e_4af1:
	jr jr_00e_4ae3                                   ; $4af1: $18 $f0

jr_00e_4af3:
	ld h, $2c                                        ; $4af3: $26 $2c
	jr nz, jr_00e_4ad7                               ; $4af5: $20 $e0

jr_00e_4af7:
	ld e, $2e                                        ; $4af7: $1e $2e
	jr jr_00e_4adb                                   ; $4af9: $18 $e0

jr_00e_4afb:
	inc e                                            ; $4afb: $1c
	ld l, $28                                        ; $4afc: $2e $28
	ldh [rAUD4LEN], a                                ; $4afe: $e0 $20
	cpl                                              ; $4b00: $2f
	jr z, jr_00e_4ae3                                ; $4b01: $28 $e0

	jr nz, jr_00e_4b33                               ; $4b03: $20 $2e

	jr nz, jr_00e_4af7                               ; $4b05: $20 $f0

	jr z, @+$2e                                      ; $4b07: $28 $2c

	jr jr_00e_4afb                                   ; $4b09: $18 $f0

jr_00e_4b0b:
	ld h, $2c                                        ; $4b0b: $26 $2c
	jr nz, jr_00e_4aef                               ; $4b0d: $20 $e0

	ld e, $2e                                        ; $4b0f: $1e $2e
	jr jr_00e_4af3                                   ; $4b11: $18 $e0

	inc e                                            ; $4b13: $1c
	cpl                                              ; $4b14: $2f

jr_00e_4b15:
	ld h, $e0                                        ; $4b15: $26 $e0
	ld l, $2e                                        ; $4b17: $2e $2e
	ld e, $e0                                        ; $4b19: $1e $e0
	inc l                                            ; $4b1b: $2c
	ld l, $16                                        ; $4b1c: $2e $16
	ldh [$2a], a                                     ; $4b1e: $e0 $2a
	ld l, $26                                        ; $4b20: $2e $26
	ldh a, [$38]                                     ; $4b22: $f0 $38
	inc l                                            ; $4b24: $2c
	ld e, $f0                                        ; $4b25: $1e $f0
	ld [hl-], a                                      ; $4b27: $32
	inc l                                            ; $4b28: $2c
	ld d, $f0                                        ; $4b29: $16 $f0
	ld [hl], $2d                                     ; $4b2b: $36 $2d
	ld h, $e0                                        ; $4b2d: $26 $e0
	ld l, $2e                                        ; $4b2f: $2e $2e
	ld e, $e0                                        ; $4b31: $1e $e0

jr_00e_4b33:
	inc l                                            ; $4b33: $2c
	ld l, $16                                        ; $4b34: $2e $16
	ldh [$2a], a                                     ; $4b36: $e0 $2a
	ld l, $26                                        ; $4b38: $2e $26
	ldh a, [$38]                                     ; $4b3a: $f0 $38
	inc l                                            ; $4b3c: $2c
	ld d, $f0                                        ; $4b3d: $16 $f0
	ld [hl], $2c                                     ; $4b3f: $36 $2c
	ld e, $f0                                        ; $4b41: $1e $f0
	ld [hl-], a                                      ; $4b43: $32
	dec l                                            ; $4b44: $2d
	ld h, $e0                                        ; $4b45: $26 $e0
	ld a, $2e                                        ; $4b47: $3e $2e
	ld e, $e0                                        ; $4b49: $1e $e0
	inc a                                            ; $4b4b: $3c
	ld l, $16                                        ; $4b4c: $2e $16
	ldh [$3a], a                                     ; $4b4e: $e0 $3a
	ld l, $26                                        ; $4b50: $2e $26
	ldh a, [rWY]                                     ; $4b52: $f0 $4a
	ld l, $1e                                        ; $4b54: $2e $1e
	ldh a, [rOBP0]                                   ; $4b56: $f0 $48
	inc l                                            ; $4b58: $2c
	ld d, $f0                                        ; $4b59: $16 $f0
	ld b, [hl]                                       ; $4b5b: $46
	dec l                                            ; $4b5c: $2d
	nop                                              ; $4b5d: $00
	pop hl                                           ; $4b5e: $e1
	ld [bc], a                                       ; $4b5f: $02
	jr z, @-$06                                      ; $4b60: $28 $f8

jr_00e_4b62:
	pop hl                                           ; $4b62: $e1
	nop                                              ; $4b63: $00
	jr z, jr_00e_4b66                                ; $4b64: $28 $00

jr_00e_4b66:
	pop af                                           ; $4b66: $f1
	ld a, [bc]                                       ; $4b67: $0a
	jr z, jr_00e_4b62                                ; $4b68: $28 $f8

	pop af                                           ; $4b6a: $f1
	ld [$0029], sp                                   ; $4b6b: $08 $29 $00
	pop af                                           ; $4b6e: $f1
	ld d, $28                                        ; $4b6f: $16 $28
	ld hl, sp-$0f                                    ; $4b71: $f8 $f1
	inc d                                            ; $4b73: $14
	jr z, jr_00e_4b76                                ; $4b74: $28 $00

jr_00e_4b76:
	pop hl                                           ; $4b76: $e1
	ld c, $28                                        ; $4b77: $0e $28
	ld hl, sp-$1f                                    ; $4b79: $f8 $e1
	inc c                                            ; $4b7b: $0c
	add hl, hl                                       ; $4b7c: $29
	nop                                              ; $4b7d: $00

jr_00e_4b7e:
	pop af                                           ; $4b7e: $f1
	ld d, $28                                        ; $4b7f: $16 $28
	ld hl, sp-$0f                                    ; $4b81: $f8 $f1
	inc d                                            ; $4b83: $14
	jr z, jr_00e_4b86                                ; $4b84: $28 $00

jr_00e_4b86:
	pop hl                                           ; $4b86: $e1
	ld c, $28                                        ; $4b87: $0e $28
	ld hl, sp-$1f                                    ; $4b89: $f8 $e1
	inc c                                            ; $4b8b: $0c
	jr z, jr_00e_4b7e                                ; $4b8c: $28 $f0

	ldh a, [$4e]                                     ; $4b8e: $f0 $4e
	ld a, [hl+]                                      ; $4b90: $2a
	ldh a, [$e0]                                     ; $4b91: $f0 $e0
	ld c, h                                          ; $4b93: $4c
	ld a, [hl+]                                      ; $4b94: $2a
	ld [$4ce8], sp                                   ; $4b95: $08 $e8 $4c
	ld a, [hl+]                                      ; $4b98: $2a
	ld hl, sp-$1f                                    ; $4b99: $f8 $e1
	inc c                                            ; $4b9b: $0c
	jr z, @-$06                                      ; $4b9c: $28 $f8

	pop af                                           ; $4b9e: $f1
	inc d                                            ; $4b9f: $14
	add hl, hl                                       ; $4ba0: $29
	nop                                              ; $4ba1: $00

jr_00e_4ba2:
	pop af                                           ; $4ba2: $f1
	ld d, $28                                        ; $4ba3: $16 $28
	ld hl, sp-$0f                                    ; $4ba5: $f8 $f1
	inc d                                            ; $4ba7: $14
	jr z, jr_00e_4baa                                ; $4ba8: $28 $00

jr_00e_4baa:
	pop hl                                           ; $4baa: $e1
	ld c, $28                                        ; $4bab: $0e $28
	ld hl, sp-$1f                                    ; $4bad: $f8 $e1
	inc c                                            ; $4baf: $0c
	jr z, jr_00e_4ba2                                ; $4bb0: $28 $f0

	ret nc                                           ; $4bb2: $d0

	ld d, [hl]                                       ; $4bb3: $56
	ld l, $e8                                        ; $4bb4: $2e $e8
	ret nc                                           ; $4bb6: $d0

	ld d, h                                          ; $4bb7: $54
	ld l, $f0                                        ; $4bb8: $2e $f0
	ldh a, [$4c]                                     ; $4bba: $f0 $4c
	ld a, [hl+]                                      ; $4bbc: $2a
	ldh a, [$e0]                                     ; $4bbd: $f0 $e0

jr_00e_4bbf:
	ld c, [hl]                                       ; $4bbf: $4e
	ld a, [hl+]                                      ; $4bc0: $2a
	ld [$4ee8], sp                                   ; $4bc1: $08 $e8 $4e
	dec hl                                           ; $4bc4: $2b
	nop                                              ; $4bc5: $00
	pop af                                           ; $4bc6: $f1
	ld d, $28                                        ; $4bc7: $16 $28
	ld hl, sp-$0f                                    ; $4bc9: $f8 $f1

jr_00e_4bcb:
	inc d                                            ; $4bcb: $14
	jr z, jr_00e_4bce                                ; $4bcc: $28 $00

jr_00e_4bce:
	pop hl                                           ; $4bce: $e1
	ld [de], a                                       ; $4bcf: $12
	jr z, @-$06                                      ; $4bd0: $28 $f8

	pop hl                                           ; $4bd2: $e1

jr_00e_4bd3:
	db $10                                           ; $4bd3: $10
	jr z, @+$12                                      ; $4bd4: $28 $10

	ret nc                                           ; $4bd6: $d0

jr_00e_4bd7:
	ld d, d                                          ; $4bd7: $52
	jr z, @+$0a                                      ; $4bd8: $28 $08

	ret nc                                           ; $4bda: $d0

jr_00e_4bdb:
	ld d, b                                          ; $4bdb: $50
	add hl, hl                                       ; $4bdc: $29
	jr nz, jr_00e_4bbf                               ; $4bdd: $20 $e0

jr_00e_4bdf:
	ld e, $2e                                        ; $4bdf: $1e $2e
	jr nz, jr_00e_4bd3                               ; $4be1: $20 $f0

jr_00e_4be3:
	ld [hl+], a                                      ; $4be3: $22
	inc l                                            ; $4be4: $2c
	jr jr_00e_4bd7                                   ; $4be5: $18 $f0

	jr nz, jr_00e_4c15                               ; $4be7: $20 $2c

	jr jr_00e_4bcb                                   ; $4be9: $18 $e0

jr_00e_4beb:
	inc e                                            ; $4beb: $1c
	cpl                                              ; $4bec: $2f
	jr nz, jr_00e_4bdf                               ; $4bed: $20 $f0

jr_00e_4bef:
	ld [hl+], a                                      ; $4bef: $22
	inc l                                            ; $4bf0: $2c
	jr jr_00e_4be3                                   ; $4bf1: $18 $f0

jr_00e_4bf3:
	jr nz, jr_00e_4c21                               ; $4bf3: $20 $2c

	jr nz, jr_00e_4bd7                               ; $4bf5: $20 $e0

jr_00e_4bf7:
	ld e, $2e                                        ; $4bf7: $1e $2e
	jr jr_00e_4bdb                                   ; $4bf9: $18 $e0

jr_00e_4bfb:
	inc e                                            ; $4bfb: $1c
	cpl                                              ; $4bfc: $2f
	jr nz, jr_00e_4bef                               ; $4bfd: $20 $f0

jr_00e_4bff:
	ld [hl-], a                                      ; $4bff: $32
	inc l                                            ; $4c00: $2c
	jr nz, jr_00e_4be3                               ; $4c01: $20 $e0

jr_00e_4c03:
	ld l, $2e                                        ; $4c03: $2e $2e
	jr jr_00e_4bf7                                   ; $4c05: $18 $f0

jr_00e_4c07:
	jr nc, jr_00e_4c35                               ; $4c07: $30 $2c

	jr jr_00e_4beb                                   ; $4c09: $18 $e0

	inc l                                            ; $4c0b: $2c
	cpl                                              ; $4c0c: $2f
	jr nz, jr_00e_4bff                               ; $4c0d: $20 $f0

	ld [hl-], a                                      ; $4c0f: $32
	inc l                                            ; $4c10: $2c
	jr nz, jr_00e_4bf3                               ; $4c11: $20 $e0

	ld l, $2e                                        ; $4c13: $2e $2e

jr_00e_4c15:
	jr jr_00e_4c07                                   ; $4c15: $18 $f0

jr_00e_4c17:
	jr nc, jr_00e_4c45                               ; $4c17: $30 $2c

	jr jr_00e_4bfb                                   ; $4c19: $18 $e0

jr_00e_4c1b:
	inc l                                            ; $4c1b: $2c
	cpl                                              ; $4c1c: $2f
	jr nz, jr_00e_4bff                               ; $4c1d: $20 $e0

jr_00e_4c1f:
	ld [hl], $2e                                     ; $4c1f: $36 $2e

jr_00e_4c21:
	jr jr_00e_4c03                                   ; $4c21: $18 $e0

jr_00e_4c23:
	inc [hl]                                         ; $4c23: $34
	ld l, $20                                        ; $4c24: $2e $20
	ldh a, [rAUD4POLY]                               ; $4c26: $f0 $22
	inc l                                            ; $4c28: $2c
	jr jr_00e_4c1b                                   ; $4c29: $18 $f0

	jr nz, @+$2f                                     ; $4c2b: $20 $2d

	jr nz, jr_00e_4c1f                               ; $4c2d: $20 $f0

	ld h, $2c                                        ; $4c2f: $26 $2c
	jr jr_00e_4c23                                   ; $4c31: $18 $f0

jr_00e_4c33:
	inc h                                            ; $4c33: $24
	inc l                                            ; $4c34: $2c

jr_00e_4c35:
	jr nz, jr_00e_4c17                               ; $4c35: $20 $e0

jr_00e_4c37:
	ld e, $2e                                        ; $4c37: $1e $2e
	jr jr_00e_4c1b                                   ; $4c39: $18 $e0

jr_00e_4c3b:
	inc e                                            ; $4c3b: $1c
	ld l, $28                                        ; $4c3c: $2e $28
	ldh a, [rAUD4POLY]                               ; $4c3e: $f0 $22
	ld l, $28                                        ; $4c40: $2e $28
	ldh [rAUD4LEN], a                                ; $4c42: $e0 $20
	cpl                                              ; $4c44: $2f

jr_00e_4c45:
	jr z, jr_00e_4c37                                ; $4c45: $28 $f0

jr_00e_4c47:
	ld [hl+], a                                      ; $4c47: $22
	ld l, $28                                        ; $4c48: $2e $28
	ldh [rAUD4LEN], a                                ; $4c4a: $e0 $20
	ld l, $20                                        ; $4c4c: $2e $20
	ldh a, [rAUDENA]                                 ; $4c4e: $f0 $26
	inc l                                            ; $4c50: $2c
	jr nz, jr_00e_4c33                               ; $4c51: $20 $e0

jr_00e_4c53:
	ld e, $2e                                        ; $4c53: $1e $2e
	jr jr_00e_4c47                                   ; $4c55: $18 $f0

	inc h                                            ; $4c57: $24
	inc l                                            ; $4c58: $2c
	jr jr_00e_4c3b                                   ; $4c59: $18 $e0

	inc e                                            ; $4c5b: $1c
	cpl                                              ; $4c5c: $2f
	jr z, @-$0e                                      ; $4c5d: $28 $f0

jr_00e_4c5f:
	ld b, d                                          ; $4c5f: $42
	ld l, $28                                        ; $4c60: $2e $28
	ldh [rAUD4LEN], a                                ; $4c62: $e0 $20
	ld l, $20                                        ; $4c64: $2e $20
	ldh [$2c], a                                     ; $4c66: $e0 $2c
	ld l, $18                                        ; $4c68: $2e $18
	ldh a, [rAUDVOL]                                 ; $4c6a: $f0 $24
	inc l                                            ; $4c6c: $2c
	jr nz, jr_00e_4c5f                               ; $4c6d: $20 $f0

	jr nc, @+$2e                                     ; $4c6f: $30 $2c

	jr jr_00e_4c53                                   ; $4c71: $18 $e0

	inc e                                            ; $4c73: $1c
	cpl                                              ; $4c74: $2f
	jr z, @-$0e                                      ; $4c75: $28 $f0

jr_00e_4c77:
	inc a                                            ; $4c77: $3c
	inc l                                            ; $4c78: $2c
	jr nz, @-$0e                                     ; $4c79: $20 $f0

	ld a, [hl-]                                      ; $4c7b: $3a
	inc l                                            ; $4c7c: $2c
	jr z, jr_00e_4c5f                                ; $4c7d: $28 $e0

jr_00e_4c7f:
	inc [hl]                                         ; $4c7f: $34
	ld l, $20                                        ; $4c80: $2e $20
	ldh [$32], a                                     ; $4c82: $e0 $32
	ld l, $18                                        ; $4c84: $2e $18
	ldh a, [rAUDVOL]                                 ; $4c86: $f0 $24
	inc l                                            ; $4c88: $2c
	jr @-$1e                                         ; $4c89: $18 $e0

	inc e                                            ; $4c8b: $1c
	cpl                                              ; $4c8c: $2f
	jr nz, jr_00e_4c7f                               ; $4c8d: $20 $f0

jr_00e_4c8f:
	ld h, $2c                                        ; $4c8f: $26 $2c
	jr @-$0e                                         ; $4c91: $18 $f0

jr_00e_4c93:
	inc h                                            ; $4c93: $24
	inc l                                            ; $4c94: $2c
	jr jr_00e_4c77                                   ; $4c95: $18 $e0

jr_00e_4c97:
	inc e                                            ; $4c97: $1c
	ld l, $20                                        ; $4c98: $2e $20
	ldh [rLCDC], a                                   ; $4c9a: $e0 $40
	ld l, $28                                        ; $4c9c: $2e $28
	ldh a, [rAUD4POLY]                               ; $4c9e: $f0 $22
	ld l, $28                                        ; $4ca0: $2e $28
	ldh [rAUD4LEN], a                                ; $4ca2: $e0 $20
	cpl                                              ; $4ca4: $2f
	jr nz, jr_00e_4c97                               ; $4ca5: $20 $f0

jr_00e_4ca7:
	inc h                                            ; $4ca7: $24
	inc l                                            ; $4ca8: $2c
	jr @-$0e                                         ; $4ca9: $18 $f0

jr_00e_4cab:
	ld [hl+], a                                      ; $4cab: $22
	inc l                                            ; $4cac: $2c
	jr nz, jr_00e_4c8f                               ; $4cad: $20 $e0

	ld e, $2e                                        ; $4caf: $1e $2e
	jr jr_00e_4c93                                   ; $4cb1: $18 $e0

jr_00e_4cb3:
	inc e                                            ; $4cb3: $1c
	ld l, $28                                        ; $4cb4: $2e $28
	ldh [rAUD4LEN], a                                ; $4cb6: $e0 $20
	cpl                                              ; $4cb8: $2f
	jr nz, jr_00e_4cab                               ; $4cb9: $20 $f0

	inc h                                            ; $4cbb: $24
	inc l                                            ; $4cbc: $2c
	jr nz, @-$1e                                     ; $4cbd: $20 $e0

	ld e, $2e                                        ; $4cbf: $1e $2e
	jr jr_00e_4cb3                                   ; $4cc1: $18 $f0

	ld [hl+], a                                      ; $4cc3: $22
	inc l                                            ; $4cc4: $2c
	jr jr_00e_4ca7                                   ; $4cc5: $18 $e0

	inc e                                            ; $4cc7: $1c
	ld l, $28                                        ; $4cc8: $2e $28
	ldh [rAUD4LEN], a                                ; $4cca: $e0 $20
	cpl                                              ; $4ccc: $2f
	ld h, $e0                                        ; $4ccd: $26 $e0
	ld l, $2e                                        ; $4ccf: $2e $2e
	ld e, $e0                                        ; $4cd1: $1e $e0
	inc l                                            ; $4cd3: $2c
	ld l, $16                                        ; $4cd4: $2e $16
	ldh [$2a], a                                     ; $4cd6: $e0 $2a
	ld l, $26                                        ; $4cd8: $2e $26
	ldh a, [$34]                                     ; $4cda: $f0 $34
	inc l                                            ; $4cdc: $2c
	ld e, $f0                                        ; $4cdd: $1e $f0

jr_00e_4cdf:
	ld [hl-], a                                      ; $4cdf: $32
	inc l                                            ; $4ce0: $2c
	ld d, $f0                                        ; $4ce1: $16 $f0

jr_00e_4ce3:
	jr nc, @+$2f                                     ; $4ce3: $30 $2d

	ld h, $e0                                        ; $4ce5: $26 $e0
	ld l, $2e                                        ; $4ce7: $2e $2e
	ld h, $f0                                        ; $4ce9: $26 $f0
	inc [hl]                                         ; $4ceb: $34
	inc l                                            ; $4cec: $2c
	ld e, $e0                                        ; $4ced: $1e $e0
	inc l                                            ; $4cef: $2c
	ld l, $1e                                        ; $4cf0: $2e $1e
	ldh a, [$32]                                     ; $4cf2: $f0 $32
	inc l                                            ; $4cf4: $2c
	ld d, $f0                                        ; $4cf5: $16 $f0
	jr nc, jr_00e_4d25                               ; $4cf7: $30 $2c

	ld d, $e0                                        ; $4cf9: $16 $e0
	ld a, [hl+]                                      ; $4cfb: $2a
	cpl                                              ; $4cfc: $2f
	jr z, jr_00e_4cdf                                ; $4cfd: $28 $e0

jr_00e_4cff:
	ld a, $2e                                        ; $4cff: $3e $2e
	jr nz, jr_00e_4ce3                               ; $4d01: $20 $e0

jr_00e_4d03:
	inc a                                            ; $4d03: $3c
	ld l, $18                                        ; $4d04: $2e $18
	ldh [$3a], a                                     ; $4d06: $e0 $3a
	ld l, $28                                        ; $4d08: $2e $28
	ldh a, [rLY]                                     ; $4d0a: $f0 $44
	inc l                                            ; $4d0c: $2c
	jr nz, jr_00e_4cff                               ; $4d0d: $20 $f0

	ld b, d                                          ; $4d0f: $42
	inc l                                            ; $4d10: $2c
	jr jr_00e_4d03                                   ; $4d11: $18 $f0

	ld b, b                                          ; $4d13: $40
	dec l                                            ; $4d14: $2d
	db $f4                                           ; $4d15: $f4
	pop hl                                           ; $4d16: $e1
	ld h, $2e                                        ; $4d17: $26 $2e
	db $ec                                           ; $4d19: $ec
	pop hl                                           ; $4d1a: $e1
	inc h                                            ; $4d1b: $24
	ld l, $eb                                        ; $4d1c: $2e $eb
	pop af                                           ; $4d1e: $f1
	inc d                                            ; $4d1f: $14
	ld a, [hl+]                                      ; $4d20: $2a
	di                                               ; $4d21: $f3
	pop af                                           ; $4d22: $f1
	ld d, $2a                                        ; $4d23: $16 $2a

jr_00e_4d25:
	inc c                                            ; $4d25: $0c
	pop af                                           ; $4d26: $f1
	ld [de], a                                       ; $4d27: $12
	ld a, [hl+]                                      ; $4d28: $2a
	inc b                                            ; $4d29: $04
	pop af                                           ; $4d2a: $f1
	db $10                                           ; $4d2b: $10
	ld a, [hl+]                                      ; $4d2c: $2a
	inc c                                            ; $4d2d: $0c
	pop hl                                           ; $4d2e: $e1
	ld b, $28                                        ; $4d2f: $06 $28
	inc b                                            ; $4d31: $04
	pop hl                                           ; $4d32: $e1
	inc b                                            ; $4d33: $04
	add hl, hl                                       ; $4d34: $29
	db $f4                                           ; $4d35: $f4
	pop hl                                           ; $4d36: $e1
	ld [hl+], a                                      ; $4d37: $22
	ld l, $ec                                        ; $4d38: $2e $ec
	pop hl                                           ; $4d3a: $e1
	jr nz, jr_00e_4d6b                               ; $4d3b: $20 $2e

	db $eb                                           ; $4d3d: $eb
	pop af                                           ; $4d3e: $f1
	inc e                                            ; $4d3f: $1c
	ld a, [hl+]                                      ; $4d40: $2a
	di                                               ; $4d41: $f3
	pop af                                           ; $4d42: $f1
	ld a, [de]                                       ; $4d43: $1a
	ld a, [hl+]                                      ; $4d44: $2a
	inc c                                            ; $4d45: $0c
	pop af                                           ; $4d46: $f1
	ld d, $2a                                        ; $4d47: $16 $2a
	inc b                                            ; $4d49: $04
	pop af                                           ; $4d4a: $f1
	inc d                                            ; $4d4b: $14
	ld a, [hl+]                                      ; $4d4c: $2a
	inc c                                            ; $4d4d: $0c
	pop hl                                           ; $4d4e: $e1
	ld [bc], a                                       ; $4d4f: $02
	jr z, jr_00e_4d56                                ; $4d50: $28 $04

	pop hl                                           ; $4d52: $e1
	nop                                              ; $4d53: $00
	add hl, hl                                       ; $4d54: $29
	db $f4                                           ; $4d55: $f4

jr_00e_4d56:
	pop hl                                           ; $4d56: $e1
	ld h, $2e                                        ; $4d57: $26 $2e
	db $ec                                           ; $4d59: $ec
	pop hl                                           ; $4d5a: $e1
	inc h                                            ; $4d5b: $24
	ld l, $0c                                        ; $4d5c: $2e $0c
	pop af                                           ; $4d5e: $f1
	ld a, [de]                                       ; $4d5f: $1a
	ld a, [hl+]                                      ; $4d60: $2a
	di                                               ; $4d61: $f3
	pop af                                           ; $4d62: $f1
	ld e, $2a                                        ; $4d63: $1e $2a
	db $eb                                           ; $4d65: $eb
	pop af                                           ; $4d66: $f1
	db $10                                           ; $4d67: $10
	ld a, [hl+]                                      ; $4d68: $2a
	inc b                                            ; $4d69: $04
	pop af                                           ; $4d6a: $f1

jr_00e_4d6b:
	db $10                                           ; $4d6b: $10
	ld a, [hl+]                                      ; $4d6c: $2a
	inc c                                            ; $4d6d: $0c
	pop hl                                           ; $4d6e: $e1
	ld b, $28                                        ; $4d6f: $06 $28
	inc b                                            ; $4d71: $04
	pop hl                                           ; $4d72: $e1
	inc b                                            ; $4d73: $04
	add hl, hl                                       ; $4d74: $29
	db $fd                                           ; $4d75: $fd
	pop de                                           ; $4d76: $d1
	ld d, [hl]                                       ; $4d77: $56
	ld l, $f5                                        ; $4d78: $2e $f5
	pop de                                           ; $4d7a: $d1
	ld d, h                                          ; $4d7b: $54
	ld l, $f4                                        ; $4d7c: $2e $f4
	pop hl                                           ; $4d7e: $e1
	ld a, [hl+]                                      ; $4d7f: $2a
	ld l, $ec                                        ; $4d80: $2e $ec
	pop hl                                           ; $4d82: $e1
	jr z, jr_00e_4db3                                ; $4d83: $28 $2e

	di                                               ; $4d85: $f3
	pop af                                           ; $4d86: $f1
	ld e, $2a                                        ; $4d87: $1e $2a
	db $eb                                           ; $4d89: $eb
	pop af                                           ; $4d8a: $f1
	inc e                                            ; $4d8b: $1c
	ld a, [hl+]                                      ; $4d8c: $2a
	inc c                                            ; $4d8d: $0c
	pop af                                           ; $4d8e: $f1
	ld a, [de]                                       ; $4d8f: $1a
	ld a, [hl+]                                      ; $4d90: $2a
	inc b                                            ; $4d91: $04
	pop af                                           ; $4d92: $f1
	jr jr_00e_4dbf                                   ; $4d93: $18 $2a

	inc c                                            ; $4d95: $0c
	pop hl                                           ; $4d96: $e1
	ld a, [bc]                                       ; $4d97: $0a
	jr z, jr_00e_4d9e                                ; $4d98: $28 $04

	pop hl                                           ; $4d9a: $e1
	ld [$f429], sp                                   ; $4d9b: $08 $29 $f4

jr_00e_4d9e:
	pop hl                                           ; $4d9e: $e1
	ld h, $2e                                        ; $4d9f: $26 $2e
	db $ec                                           ; $4da1: $ec
	pop hl                                           ; $4da2: $e1
	inc h                                            ; $4da3: $24
	ld l, $f3                                        ; $4da4: $2e $f3
	pop af                                           ; $4da6: $f1
	ld a, [de]                                       ; $4da7: $1a
	ld a, [hl+]                                      ; $4da8: $2a
	db $eb                                           ; $4da9: $eb
	pop af                                           ; $4daa: $f1
	db $10                                           ; $4dab: $10
	ld a, [hl+]                                      ; $4dac: $2a
	inc c                                            ; $4dad: $0c
	pop af                                           ; $4dae: $f1
	ld [de], a                                       ; $4daf: $12
	ld a, [hl+]                                      ; $4db0: $2a
	inc b                                            ; $4db1: $04
	pop af                                           ; $4db2: $f1

jr_00e_4db3:
	db $10                                           ; $4db3: $10
	ld a, [hl+]                                      ; $4db4: $2a
	inc c                                            ; $4db5: $0c
	pop hl                                           ; $4db6: $e1
	ld b, $28                                        ; $4db7: $06 $28
	inc b                                            ; $4db9: $04

jr_00e_4dba:
	pop hl                                           ; $4dba: $e1
	inc b                                            ; $4dbb: $04
	add hl, hl                                       ; $4dbc: $29
	inc e                                            ; $4dbd: $1c
	rst SubAFromHL                                          ; $4dbe: $d7

jr_00e_4dbf:
	ld d, d                                          ; $4dbf: $52
	jr z, jr_00e_4dd6                                ; $4dc0: $28 $14

	rst SubAFromHL                                          ; $4dc2: $d7
	ld d, b                                          ; $4dc3: $50
	jr z, jr_00e_4dba                                ; $4dc4: $28 $f4

	pop hl                                           ; $4dc6: $e1
	ld l, $2e                                        ; $4dc7: $2e $2e
	db $ec                                           ; $4dc9: $ec
	pop hl                                           ; $4dca: $e1
	inc l                                            ; $4dcb: $2c
	ld l, $eb                                        ; $4dcc: $2e $eb
	pop af                                           ; $4dce: $f1
	db $10                                           ; $4dcf: $10

jr_00e_4dd0:
	ld a, [hl+]                                      ; $4dd0: $2a
	di                                               ; $4dd1: $f3
	pop af                                           ; $4dd2: $f1
	ld a, [de]                                       ; $4dd3: $1a
	ld a, [hl+]                                      ; $4dd4: $2a
	inc b                                            ; $4dd5: $04

jr_00e_4dd6:
	pop af                                           ; $4dd6: $f1
	db $10                                           ; $4dd7: $10

jr_00e_4dd8:
	ld a, [hl+]                                      ; $4dd8: $2a
	inc c                                            ; $4dd9: $0c
	pop af                                           ; $4dda: $f1
	ld a, [de]                                       ; $4ddb: $1a

jr_00e_4ddc:
	ld a, [hl+]                                      ; $4ddc: $2a
	inc c                                            ; $4ddd: $0c
	pop hl                                           ; $4dde: $e1
	ld c, $28                                        ; $4ddf: $0e $28
	inc b                                            ; $4de1: $04
	pop hl                                           ; $4de2: $e1
	inc c                                            ; $4de3: $0c
	add hl, hl                                       ; $4de4: $29
	jr z, jr_00e_4dd8                                ; $4de5: $28 $f1

	ld [hl], $2c                                     ; $4de7: $36 $2c
	jr nz, jr_00e_4ddc                               ; $4de9: $20 $f1

	inc [hl]                                         ; $4deb: $34

jr_00e_4dec:
	inc l                                            ; $4dec: $2c
	jr z, jr_00e_4dd0                                ; $4ded: $28 $e1

	ld [hl-], a                                      ; $4def: $32

jr_00e_4df0:
	ld l, $20                                        ; $4df0: $2e $20
	pop hl                                           ; $4df2: $e1
	jr nc, @+$31                                     ; $4df3: $30 $2f

	jr z, @-$0d                                      ; $4df5: $28 $f1

	ld [hl], $2c                                     ; $4df7: $36 $2c
	jr nz, jr_00e_4dec                               ; $4df9: $20 $f1

	inc [hl]                                         ; $4dfb: $34

jr_00e_4dfc:
	inc l                                            ; $4dfc: $2c
	jr z, @-$1d                                      ; $4dfd: $28 $e1

	ld [hl-], a                                      ; $4dff: $32

jr_00e_4e00:
	ld l, $20                                        ; $4e00: $2e $20
	pop hl                                           ; $4e02: $e1
	jr nc, @+$31                                     ; $4e03: $30 $2f

	jr z, @-$0d                                      ; $4e05: $28 $f1

	ld [hl], $2c                                     ; $4e07: $36 $2c
	jr nz, jr_00e_4dfc                               ; $4e09: $20 $f1

	inc [hl]                                         ; $4e0b: $34

jr_00e_4e0c:
	inc l                                            ; $4e0c: $2c
	jr z, jr_00e_4df0                                ; $4e0d: $28 $e1

	ld [hl-], a                                      ; $4e0f: $32

jr_00e_4e10:
	ld l, $20                                        ; $4e10: $2e $20
	pop hl                                           ; $4e12: $e1
	jr nc, jr_00e_4e44                               ; $4e13: $30 $2f

	jr nz, @-$0d                                     ; $4e15: $20 $f1

	inc [hl]                                         ; $4e17: $34

jr_00e_4e18:
	inc l                                            ; $4e18: $2c
	jr z, jr_00e_4e0c                                ; $4e19: $28 $f1

	ld [hl], $2c                                     ; $4e1b: $36 $2c
	jr z, jr_00e_4e00                                ; $4e1d: $28 $e1

	ld a, [hl-]                                      ; $4e1f: $3a
	ld l, $20                                        ; $4e20: $2e $20
	pop hl                                           ; $4e22: $e1
	jr c, jr_00e_4e54                                ; $4e23: $38 $2f

	jr z, jr_00e_4e18                                ; $4e25: $28 $f1

	ld [hl], $2c                                     ; $4e27: $36 $2c
	jr nz, @-$0d                                     ; $4e29: $20 $f1

	inc [hl]                                         ; $4e2b: $34
	inc l                                            ; $4e2c: $2c
	jr z, jr_00e_4e10                                ; $4e2d: $28 $e1

jr_00e_4e2f:
	ld [hl-], a                                      ; $4e2f: $32
	ld l, $20                                        ; $4e30: $2e $20
	pop hl                                           ; $4e32: $e1

jr_00e_4e33:
	jr nc, @+$31                                     ; $4e33: $30 $2f

	add hl, hl                                       ; $4e35: $29
	pop hl                                           ; $4e36: $e1

jr_00e_4e37:
	ld b, [hl]                                       ; $4e37: $46
	ld l, $21                                        ; $4e38: $2e $21
	pop hl                                           ; $4e3a: $e1

jr_00e_4e3b:
	ld b, h                                          ; $4e3b: $44
	ld l, $28                                        ; $4e3c: $2e $28
	pop af                                           ; $4e3e: $f1
	ld [hl], $2c                                     ; $4e3f: $36 $2c
	jr nz, @-$0d                                     ; $4e41: $20 $f1

	inc [hl]                                         ; $4e43: $34

jr_00e_4e44:
	dec l                                            ; $4e44: $2d
	jr z, jr_00e_4e37                                ; $4e45: $28 $f0

jr_00e_4e47:
	ld [hl-], a                                      ; $4e47: $32
	inc l                                            ; $4e48: $2c
	jr nz, jr_00e_4e3b                               ; $4e49: $20 $f0

jr_00e_4e4b:
	jr nc, jr_00e_4e79                               ; $4e4b: $30 $2c

	jr z, jr_00e_4e2f                                ; $4e4d: $28 $e0

jr_00e_4e4f:
	ld [hl], $2e                                     ; $4e4f: $36 $2e
	jr nz, jr_00e_4e33                               ; $4e51: $20 $e0

jr_00e_4e53:
	inc [hl]                                         ; $4e53: $34

jr_00e_4e54:
	ld l, $30                                        ; $4e54: $2e $30
	ldh [$38], a                                     ; $4e56: $e0 $38
	cpl                                              ; $4e58: $2f
	jr nc, jr_00e_4e3b                               ; $4e59: $30 $e0

jr_00e_4e5b:
	jr c, @+$30                                      ; $4e5b: $38 $2e

	jr z, jr_00e_4e4f                                ; $4e5d: $28 $f0

jr_00e_4e5f:
	ld [hl-], a                                      ; $4e5f: $32
	inc l                                            ; $4e60: $2c
	jr nz, jr_00e_4e53                               ; $4e61: $20 $f0

jr_00e_4e63:
	jr nc, jr_00e_4e91                               ; $4e63: $30 $2c

	jr z, jr_00e_4e47                                ; $4e65: $28 $e0

jr_00e_4e67:
	ld [hl], $2e                                     ; $4e67: $36 $2e
	jr nz, jr_00e_4e4b                               ; $4e69: $20 $e0

	inc [hl]                                         ; $4e6b: $34
	cpl                                              ; $4e6c: $2f
	jr nc, jr_00e_4e4f                               ; $4e6d: $30 $e0

	jr c, jr_00e_4e9f                                ; $4e6f: $38 $2e

	jr z, jr_00e_4e63                                ; $4e71: $28 $f0

	ld [hl-], a                                      ; $4e73: $32
	inc l                                            ; $4e74: $2c
	jr nz, jr_00e_4e67                               ; $4e75: $20 $f0

	jr nc, jr_00e_4ea5                               ; $4e77: $30 $2c

jr_00e_4e79:
	jr z, jr_00e_4e5b                                ; $4e79: $28 $e0

jr_00e_4e7b:
	ld [hl], $2e                                     ; $4e7b: $36 $2e
	jr nz, jr_00e_4e5f                               ; $4e7d: $20 $e0

	inc [hl]                                         ; $4e7f: $34
	cpl                                              ; $4e80: $2f
	ld e, $e0                                        ; $4e81: $1e $e0
	ld b, b                                          ; $4e83: $40
	ld l, $2e                                        ; $4e84: $2e $2e
	ldh [rLY], a                                     ; $4e86: $e0 $44
	ld l, $26                                        ; $4e88: $2e $26
	ldh [rSCY], a                                    ; $4e8a: $e0 $42
	ld l, $2e                                        ; $4e8c: $2e $2e
	ldh a, [$3e]                                     ; $4e8e: $f0 $3e
	inc l                                            ; $4e90: $2c

jr_00e_4e91:
	ld h, $f0                                        ; $4e91: $26 $f0

jr_00e_4e93:
	inc a                                            ; $4e93: $3c
	inc l                                            ; $4e94: $2c
	ld e, $f0                                        ; $4e95: $1e $f0
	ld a, [hl-]                                      ; $4e97: $3a
	dec l                                            ; $4e98: $2d
	jr nc, jr_00e_4e7b                               ; $4e99: $30 $e0

jr_00e_4e9b:
	jr c, jr_00e_4ecb                                ; $4e9b: $38 $2e

	jr z, @-$0e                                      ; $4e9d: $28 $f0

jr_00e_4e9f:
	ld [hl-], a                                      ; $4e9f: $32
	inc l                                            ; $4ea0: $2c
	jr nz, jr_00e_4e93                               ; $4ea1: $20 $f0

	jr nc, @+$2e                                     ; $4ea3: $30 $2c

jr_00e_4ea5:
	jr z, @-$1e                                      ; $4ea5: $28 $e0

	ld [hl], $2e                                     ; $4ea7: $36 $2e
	jr nz, @-$1e                                     ; $4ea9: $20 $e0

	inc [hl]                                         ; $4eab: $34
	cpl                                              ; $4eac: $2f
	ld l, $f0                                        ; $4ead: $2e $f0
	ld c, [hl]                                       ; $4eaf: $4e
	ld l, $26                                        ; $4eb0: $2e $26
	ldh a, [$4c]                                     ; $4eb2: $f0 $4c
	inc l                                            ; $4eb4: $2c
	ld e, $f0                                        ; $4eb5: $1e $f0
	ld c, d                                          ; $4eb7: $4a
	inc l                                            ; $4eb8: $2c

jr_00e_4eb9:
	jr nc, jr_00e_4e9b                               ; $4eb9: $30 $e0

	jr c, jr_00e_4eeb                                ; $4ebb: $38 $2e

	jr z, jr_00e_4e9f                                ; $4ebd: $28 $e0

	ld c, b                                          ; $4ebf: $48
	ld l, $20                                        ; $4ec0: $2e $20
	ldh [rDMA], a                                    ; $4ec2: $e0 $46
	cpl                                              ; $4ec4: $2f

jr_00e_4ec5:
	inc c                                            ; $4ec5: $0c
	pop af                                           ; $4ec6: $f1
	ld [de], a                                       ; $4ec7: $12
	jr z, jr_00e_4ece                                ; $4ec8: $28 $04

	pop af                                           ; $4eca: $f1

jr_00e_4ecb:
	db $10                                           ; $4ecb: $10
	jr z, jr_00e_4eb9                                ; $4ecc: $28 $eb

jr_00e_4ece:
	pop af                                           ; $4ece: $f1
	inc d                                            ; $4ecf: $14
	jr z, jr_00e_4ec5                                ; $4ed0: $28 $f3

	pop af                                           ; $4ed2: $f1
	ld d, $28                                        ; $4ed3: $16 $28
	db $f4                                           ; $4ed5: $f4
	pop hl                                           ; $4ed6: $e1
	ld h, $2e                                        ; $4ed7: $26 $2e
	db $ec                                           ; $4ed9: $ec
	pop hl                                           ; $4eda: $e1
	inc h                                            ; $4edb: $24
	ld l, $0c                                        ; $4edc: $2e $0c
	pop hl                                           ; $4ede: $e1
	ld b, $28                                        ; $4edf: $06 $28

jr_00e_4ee1:
	inc b                                            ; $4ee1: $04
	pop hl                                           ; $4ee2: $e1
	inc b                                            ; $4ee3: $04
	add hl, hl                                       ; $4ee4: $29
	inc c                                            ; $4ee5: $0c
	pop af                                           ; $4ee6: $f1
	ld d, $28                                        ; $4ee7: $16 $28
	inc b                                            ; $4ee9: $04

jr_00e_4eea:
	pop af                                           ; $4eea: $f1

jr_00e_4eeb:
	inc d                                            ; $4eeb: $14
	jr z, jr_00e_4ee1                                ; $4eec: $28 $f3

	pop af                                           ; $4eee: $f1
	ld a, [de]                                       ; $4eef: $1a
	jr z, @-$13                                      ; $4ef0: $28 $eb

	pop af                                           ; $4ef2: $f1
	inc e                                            ; $4ef3: $1c
	jr z, jr_00e_4eea                                ; $4ef4: $28 $f4

	pop hl                                           ; $4ef6: $e1
	ld [hl+], a                                      ; $4ef7: $22
	ld l, $ec                                        ; $4ef8: $2e $ec
	pop hl                                           ; $4efa: $e1
	jr nz, jr_00e_4f2b                               ; $4efb: $20 $2e

	inc c                                            ; $4efd: $0c
	pop hl                                           ; $4efe: $e1
	ld [bc], a                                       ; $4eff: $02
	jr z, jr_00e_4f06                                ; $4f00: $28 $04

	pop hl                                           ; $4f02: $e1
	nop                                              ; $4f03: $00
	add hl, hl                                       ; $4f04: $29
	inc c                                            ; $4f05: $0c

jr_00e_4f06:
	pop af                                           ; $4f06: $f1
	ld a, [de]                                       ; $4f07: $1a
	jr z, jr_00e_4f0e                                ; $4f08: $28 $04

jr_00e_4f0a:
	pop af                                           ; $4f0a: $f1
	db $10                                           ; $4f0b: $10
	jr z, @-$0b                                      ; $4f0c: $28 $f3

jr_00e_4f0e:
	pop af                                           ; $4f0e: $f1
	ld e, $28                                        ; $4f0f: $1e $28
	db $eb                                           ; $4f11: $eb
	pop af                                           ; $4f12: $f1
	db $10                                           ; $4f13: $10
	jr z, jr_00e_4f0a                                ; $4f14: $28 $f4

	pop hl                                           ; $4f16: $e1
	ld h, $2e                                        ; $4f17: $26 $2e
	db $ec                                           ; $4f19: $ec
	pop hl                                           ; $4f1a: $e1
	inc h                                            ; $4f1b: $24
	ld l, $0c                                        ; $4f1c: $2e $0c
	pop hl                                           ; $4f1e: $e1
	ld b, $28                                        ; $4f1f: $06 $28
	inc b                                            ; $4f21: $04
	pop hl                                           ; $4f22: $e1
	inc b                                            ; $4f23: $04
	add hl, hl                                       ; $4f24: $29

jr_00e_4f25:
	inc c                                            ; $4f25: $0c
	pop af                                           ; $4f26: $f1
	ld a, [de]                                       ; $4f27: $1a
	jr z, jr_00e_4f2e                                ; $4f28: $28 $04

	pop af                                           ; $4f2a: $f1

jr_00e_4f2b:
	jr @+$2a                                         ; $4f2b: $18 $28

	db $eb                                           ; $4f2d: $eb

jr_00e_4f2e:
	pop af                                           ; $4f2e: $f1
	inc e                                            ; $4f2f: $1c
	jr z, jr_00e_4f25                                ; $4f30: $28 $f3

	pop af                                           ; $4f32: $f1
	ld e, $28                                        ; $4f33: $1e $28
	db $f4                                           ; $4f35: $f4
	pop hl                                           ; $4f36: $e1
	ld a, [hl+]                                      ; $4f37: $2a
	ld l, $ec                                        ; $4f38: $2e $ec
	pop hl                                           ; $4f3a: $e1
	jr z, jr_00e_4f6b                                ; $4f3b: $28 $2e

	nop                                              ; $4f3d: $00
	ret nc                                           ; $4f3e: $d0

	ld d, [hl]                                       ; $4f3f: $56
	ld l, $f8                                        ; $4f40: $2e $f8
	ret nc                                           ; $4f42: $d0

	ld d, h                                          ; $4f43: $54
	ld l, $0c                                        ; $4f44: $2e $0c
	pop hl                                           ; $4f46: $e1
	ld a, [bc]                                       ; $4f47: $0a
	jr z, jr_00e_4f4e                                ; $4f48: $28 $04

	pop hl                                           ; $4f4a: $e1
	ld [$0c29], sp                                   ; $4f4b: $08 $29 $0c

jr_00e_4f4e:
	pop af                                           ; $4f4e: $f1
	ld [de], a                                       ; $4f4f: $12
	jr z, jr_00e_4f56                                ; $4f50: $28 $04

jr_00e_4f52:
	pop af                                           ; $4f52: $f1
	db $10                                           ; $4f53: $10
	jr z, @-$0b                                      ; $4f54: $28 $f3

jr_00e_4f56:
	pop af                                           ; $4f56: $f1
	ld a, [de]                                       ; $4f57: $1a
	jr z, @-$13                                      ; $4f58: $28 $eb

	pop af                                           ; $4f5a: $f1
	db $10                                           ; $4f5b: $10
	jr z, jr_00e_4f52                                ; $4f5c: $28 $f4

	pop hl                                           ; $4f5e: $e1
	ld h, $2e                                        ; $4f5f: $26 $2e
	db $ec                                           ; $4f61: $ec
	pop hl                                           ; $4f62: $e1
	inc h                                            ; $4f63: $24
	ld l, $0c                                        ; $4f64: $2e $0c
	pop hl                                           ; $4f66: $e1
	ld b, $28                                        ; $4f67: $06 $28

jr_00e_4f69:
	inc b                                            ; $4f69: $04
	pop hl                                           ; $4f6a: $e1

jr_00e_4f6b:
	inc b                                            ; $4f6b: $04
	add hl, hl                                       ; $4f6c: $29
	inc c                                            ; $4f6d: $0c
	pop af                                           ; $4f6e: $f1
	ld a, [de]                                       ; $4f6f: $1a
	jr z, jr_00e_4f76                                ; $4f70: $28 $04

jr_00e_4f72:
	pop af                                           ; $4f72: $f1
	db $10                                           ; $4f73: $10
	jr z, jr_00e_4f69                                ; $4f74: $28 $f3

jr_00e_4f76:
	pop af                                           ; $4f76: $f1
	ld a, [de]                                       ; $4f77: $1a
	jr z, @-$13                                      ; $4f78: $28 $eb

	pop af                                           ; $4f7a: $f1
	db $10                                           ; $4f7b: $10
	jr z, jr_00e_4f72                                ; $4f7c: $28 $f4

	pop hl                                           ; $4f7e: $e1
	ld l, $2e                                        ; $4f7f: $2e $2e
	db $ec                                           ; $4f81: $ec
	pop hl                                           ; $4f82: $e1
	inc l                                            ; $4f83: $2c
	ld l, $18                                        ; $4f84: $2e $18
	ret nc                                           ; $4f86: $d0

	ld d, d                                          ; $4f87: $52

jr_00e_4f88:
	jr z, @+$12                                      ; $4f88: $28 $10

	ret nc                                           ; $4f8a: $d0

	ld d, b                                          ; $4f8b: $50

jr_00e_4f8c:
	jr z, @+$0e                                      ; $4f8c: $28 $0c

	pop hl                                           ; $4f8e: $e1
	ld c, $28                                        ; $4f8f: $0e $28
	inc b                                            ; $4f91: $04
	pop hl                                           ; $4f92: $e1
	inc c                                            ; $4f93: $0c
	add hl, hl                                       ; $4f94: $29
	jr z, jr_00e_4f88                                ; $4f95: $28 $f1

	ld [hl], $2c                                     ; $4f97: $36 $2c
	jr nz, jr_00e_4f8c                               ; $4f99: $20 $f1

	inc [hl]                                         ; $4f9b: $34

jr_00e_4f9c:
	inc l                                            ; $4f9c: $2c
	jr z, @-$1d                                      ; $4f9d: $28 $e1

	ld [hl-], a                                      ; $4f9f: $32

jr_00e_4fa0:
	ld l, $20                                        ; $4fa0: $2e $20
	pop hl                                           ; $4fa2: $e1
	jr nc, @+$31                                     ; $4fa3: $30 $2f

	jr z, @-$0d                                      ; $4fa5: $28 $f1

	ld [hl], $2c                                     ; $4fa7: $36 $2c
	jr nz, jr_00e_4f9c                               ; $4fa9: $20 $f1

	inc [hl]                                         ; $4fab: $34

jr_00e_4fac:
	inc l                                            ; $4fac: $2c
	jr z, @-$1d                                      ; $4fad: $28 $e1

	ld [hl-], a                                      ; $4faf: $32

jr_00e_4fb0:
	ld l, $20                                        ; $4fb0: $2e $20
	pop hl                                           ; $4fb2: $e1
	jr nc, @+$31                                     ; $4fb3: $30 $2f

	jr z, @-$0d                                      ; $4fb5: $28 $f1

	ld [hl], $2c                                     ; $4fb7: $36 $2c
	jr nz, jr_00e_4fac                               ; $4fb9: $20 $f1

	inc [hl]                                         ; $4fbb: $34

jr_00e_4fbc:
	inc l                                            ; $4fbc: $2c
	jr z, jr_00e_4fa0                                ; $4fbd: $28 $e1

	ld [hl-], a                                      ; $4fbf: $32

jr_00e_4fc0:
	ld l, $20                                        ; $4fc0: $2e $20
	pop hl                                           ; $4fc2: $e1
	jr nc, jr_00e_4ff4                               ; $4fc3: $30 $2f

	jr nz, @-$0d                                     ; $4fc5: $20 $f1

	inc [hl]                                         ; $4fc7: $34

jr_00e_4fc8:
	inc l                                            ; $4fc8: $2c
	jr z, jr_00e_4fbc                                ; $4fc9: $28 $f1

	ld [hl], $2c                                     ; $4fcb: $36 $2c
	jr z, jr_00e_4fb0                                ; $4fcd: $28 $e1

	ld a, [hl-]                                      ; $4fcf: $3a
	ld l, $20                                        ; $4fd0: $2e $20
	pop hl                                           ; $4fd2: $e1
	jr c, jr_00e_5004                                ; $4fd3: $38 $2f

	jr z, jr_00e_4fc8                                ; $4fd5: $28 $f1

	ld [hl], $2c                                     ; $4fd7: $36 $2c
	jr nz, @-$0d                                     ; $4fd9: $20 $f1

	inc [hl]                                         ; $4fdb: $34
	inc l                                            ; $4fdc: $2c
	jr z, jr_00e_4fc0                                ; $4fdd: $28 $e1

jr_00e_4fdf:
	ld [hl-], a                                      ; $4fdf: $32
	ld l, $20                                        ; $4fe0: $2e $20
	pop hl                                           ; $4fe2: $e1

jr_00e_4fe3:
	jr nc, @+$31                                     ; $4fe3: $30 $2f

	add hl, hl                                       ; $4fe5: $29
	pop hl                                           ; $4fe6: $e1

jr_00e_4fe7:
	ld b, [hl]                                       ; $4fe7: $46
	ld l, $21                                        ; $4fe8: $2e $21
	pop hl                                           ; $4fea: $e1

jr_00e_4feb:
	ld b, h                                          ; $4feb: $44
	ld l, $28                                        ; $4fec: $2e $28
	pop af                                           ; $4fee: $f1
	ld [hl], $2c                                     ; $4fef: $36 $2c
	jr nz, @-$0d                                     ; $4ff1: $20 $f1

	inc [hl]                                         ; $4ff3: $34

jr_00e_4ff4:
	dec l                                            ; $4ff4: $2d
	jr z, jr_00e_4fe7                                ; $4ff5: $28 $f0

jr_00e_4ff7:
	ld [hl-], a                                      ; $4ff7: $32
	inc l                                            ; $4ff8: $2c
	jr nz, jr_00e_4feb                               ; $4ff9: $20 $f0

jr_00e_4ffb:
	jr nc, jr_00e_5029                               ; $4ffb: $30 $2c

	jr z, jr_00e_4fdf                                ; $4ffd: $28 $e0

jr_00e_4fff:
	ld [hl], $2e                                     ; $4fff: $36 $2e
	jr nz, jr_00e_4fe3                               ; $5001: $20 $e0

jr_00e_5003:
	inc [hl]                                         ; $5003: $34

jr_00e_5004:
	ld l, $30                                        ; $5004: $2e $30
	ldh [$38], a                                     ; $5006: $e0 $38
	cpl                                              ; $5008: $2f
	jr nc, jr_00e_4feb                               ; $5009: $30 $e0

jr_00e_500b:
	jr c, @+$30                                      ; $500b: $38 $2e

	jr z, jr_00e_4fff                                ; $500d: $28 $f0

jr_00e_500f:
	ld [hl-], a                                      ; $500f: $32
	inc l                                            ; $5010: $2c
	jr nz, jr_00e_5003                               ; $5011: $20 $f0

jr_00e_5013:
	jr nc, jr_00e_5041                               ; $5013: $30 $2c

	jr z, jr_00e_4ff7                                ; $5015: $28 $e0

jr_00e_5017:
	ld [hl], $2e                                     ; $5017: $36 $2e
	jr nz, jr_00e_4ffb                               ; $5019: $20 $e0

	inc [hl]                                         ; $501b: $34
	cpl                                              ; $501c: $2f
	jr nc, jr_00e_4fff                               ; $501d: $30 $e0

	jr c, jr_00e_504f                                ; $501f: $38 $2e

	jr z, jr_00e_5013                                ; $5021: $28 $f0

	ld [hl-], a                                      ; $5023: $32
	inc l                                            ; $5024: $2c
	jr nz, jr_00e_5017                               ; $5025: $20 $f0

	jr nc, jr_00e_5055                               ; $5027: $30 $2c

jr_00e_5029:
	jr z, jr_00e_500b                                ; $5029: $28 $e0

jr_00e_502b:
	ld [hl], $2e                                     ; $502b: $36 $2e
	jr nz, jr_00e_500f                               ; $502d: $20 $e0

	inc [hl]                                         ; $502f: $34
	cpl                                              ; $5030: $2f
	ld e, $e0                                        ; $5031: $1e $e0
	ld b, b                                          ; $5033: $40
	ld l, $2e                                        ; $5034: $2e $2e
	ldh [rLY], a                                     ; $5036: $e0 $44
	ld l, $26                                        ; $5038: $2e $26
	ldh [rSCY], a                                    ; $503a: $e0 $42
	ld l, $2e                                        ; $503c: $2e $2e
	ldh a, [$3e]                                     ; $503e: $f0 $3e
	inc l                                            ; $5040: $2c

jr_00e_5041:
	ld h, $f0                                        ; $5041: $26 $f0

jr_00e_5043:
	inc a                                            ; $5043: $3c
	inc l                                            ; $5044: $2c
	ld e, $f0                                        ; $5045: $1e $f0
	ld a, [hl-]                                      ; $5047: $3a
	dec l                                            ; $5048: $2d
	jr nc, jr_00e_502b                               ; $5049: $30 $e0

jr_00e_504b:
	jr c, jr_00e_507b                                ; $504b: $38 $2e

	jr z, @-$0e                                      ; $504d: $28 $f0

jr_00e_504f:
	ld [hl-], a                                      ; $504f: $32
	inc l                                            ; $5050: $2c
	jr nz, jr_00e_5043                               ; $5051: $20 $f0

	jr nc, @+$2e                                     ; $5053: $30 $2c

jr_00e_5055:
	jr z, @-$1e                                      ; $5055: $28 $e0

	ld [hl], $2e                                     ; $5057: $36 $2e
	jr nz, @-$1e                                     ; $5059: $20 $e0

	inc [hl]                                         ; $505b: $34
	cpl                                              ; $505c: $2f
	ld l, $f0                                        ; $505d: $2e $f0
	ld c, [hl]                                       ; $505f: $4e
	ld l, $26                                        ; $5060: $2e $26
	ldh a, [$4c]                                     ; $5062: $f0 $4c
	inc l                                            ; $5064: $2c
	ld e, $f0                                        ; $5065: $1e $f0
	ld c, d                                          ; $5067: $4a
	inc l                                            ; $5068: $2c
	jr nc, jr_00e_504b                               ; $5069: $30 $e0

	jr c, jr_00e_509b                                ; $506b: $38 $2e

	jr z, jr_00e_504f                                ; $506d: $28 $e0

	ld c, b                                          ; $506f: $48
	ld l, $20                                        ; $5070: $2e $20
	ldh [rDMA], a                                    ; $5072: $e0 $46
	cpl                                              ; $5074: $2f
	nop                                              ; $5075: $00
	ldh a, [c]                                       ; $5076: $f2
	ld l, $2a                                        ; $5077: $2e $2a
	ld hl, sp-$0e                                    ; $5079: $f8 $f2

jr_00e_507b:
	inc l                                            ; $507b: $2c
	ld a, [hl+]                                      ; $507c: $2a
	nop                                              ; $507d: $00
	ldh [c], a                                       ; $507e: $e2
	ld [bc], a                                       ; $507f: $02
	jr z, @-$06                                      ; $5080: $28 $f8

	ldh [c], a                                       ; $5082: $e2
	nop                                              ; $5083: $00
	add hl, hl                                       ; $5084: $29
	nop                                              ; $5085: $00
	ldh a, [c]                                       ; $5086: $f2
	ld l, $2a                                        ; $5087: $2e $2a
	ld hl, sp-$0e                                    ; $5089: $f8 $f2
	inc l                                            ; $508b: $2c
	ld a, [hl+]                                      ; $508c: $2a
	nop                                              ; $508d: $00
	ldh [c], a                                       ; $508e: $e2
	ld d, $28                                        ; $508f: $16 $28
	ld hl, sp-$1e                                    ; $5091: $f8 $e2
	inc d                                            ; $5093: $14
	add hl, hl                                       ; $5094: $29
	nop                                              ; $5095: $00
	ldh a, [c]                                       ; $5096: $f2
	ld l, $2a                                        ; $5097: $2e $2a
	ld hl, sp-$0e                                    ; $5099: $f8 $f2

jr_00e_509b:
	inc l                                            ; $509b: $2c
	ld a, [hl+]                                      ; $509c: $2a
	nop                                              ; $509d: $00
	ldh [c], a                                       ; $509e: $e2
	ld [de], a                                       ; $509f: $12
	jr z, @-$06                                      ; $50a0: $28 $f8

	ldh [c], a                                       ; $50a2: $e2
	db $10                                           ; $50a3: $10
	add hl, hl                                       ; $50a4: $29
	ldh a, [$d8]                                     ; $50a5: $f0 $d8
	inc a                                            ; $50a7: $3c
	ld l, $e8                                        ; $50a8: $2e $e8
	ret c                                            ; $50aa: $d8

	ld a, [hl-]                                      ; $50ab: $3a
	ld l, $00                                        ; $50ac: $2e $00
	ldh a, [c]                                       ; $50ae: $f2
	ld l, $2a                                        ; $50af: $2e $2a
	ld hl, sp-$0e                                    ; $50b1: $f8 $f2
	jr z, jr_00e_50df                                ; $50b3: $28 $2a

	ldh a, [$ea]                                     ; $50b5: $f0 $ea
	inc [hl]                                         ; $50b7: $34
	jr z, jr_00e_50ba                                ; $50b8: $28 $00

jr_00e_50ba:
	ldh [c], a                                       ; $50ba: $e2
	ld h, $28                                        ; $50bb: $26 $28
	ld hl, sp-$1e                                    ; $50bd: $f8 $e2
	inc h                                            ; $50bf: $24
	add hl, hl                                       ; $50c0: $29
	db $10                                           ; $50c1: $10
	ret c                                            ; $50c2: $d8

	jr c, jr_00e_50ed                                ; $50c3: $38 $28

	ld [$36d8], sp                                   ; $50c5: $08 $d8 $36
	jr z, jr_00e_50ca                                ; $50c8: $28 $00

jr_00e_50ca:
	ldh a, [c]                                       ; $50ca: $f2
	ld [hl-], a                                      ; $50cb: $32
	ld a, [hl+]                                      ; $50cc: $2a
	ld hl, sp-$0e                                    ; $50cd: $f8 $f2
	jr nc, jr_00e_50fb                               ; $50cf: $30 $2a

	nop                                              ; $50d1: $00
	ldh [c], a                                       ; $50d2: $e2
	ld a, [bc]                                       ; $50d3: $0a
	jr z, @-$06                                      ; $50d4: $28 $f8

	ldh [c], a                                       ; $50d6: $e2
	ld [$0029], sp                                   ; $50d7: $08 $29 $00
	ldh a, [c]                                       ; $50da: $f2
	ld b, $2c                                        ; $50db: $06 $2c
	ld hl, sp-$0e                                    ; $50dd: $f8 $f2

jr_00e_50df:
	inc b                                            ; $50df: $04
	inc l                                            ; $50e0: $2c
	nop                                              ; $50e1: $00
	ldh [c], a                                       ; $50e2: $e2
	ld [bc], a                                       ; $50e3: $02
	jr z, @-$06                                      ; $50e4: $28 $f8

	ldh [c], a                                       ; $50e6: $e2
	nop                                              ; $50e7: $00
	add hl, hl                                       ; $50e8: $29
	nop                                              ; $50e9: $00
	ldh [c], a                                       ; $50ea: $e2
	ld d, $28                                        ; $50eb: $16 $28

jr_00e_50ed:
	ld hl, sp-$1e                                    ; $50ed: $f8 $e2
	inc d                                            ; $50ef: $14
	jr z, jr_00e_50f2                                ; $50f0: $28 $00

jr_00e_50f2:
	ldh a, [c]                                       ; $50f2: $f2
	ld b, $2c                                        ; $50f3: $06 $2c
	ld hl, sp-$0e                                    ; $50f5: $f8 $f2
	inc b                                            ; $50f7: $04
	dec l                                            ; $50f8: $2d
	nop                                              ; $50f9: $00
	ldh a, [c]                                       ; $50fa: $f2

jr_00e_50fb:
	ld b, $2c                                        ; $50fb: $06 $2c
	ld hl, sp-$0e                                    ; $50fd: $f8 $f2
	inc b                                            ; $50ff: $04
	inc l                                            ; $5100: $2c
	nop                                              ; $5101: $00
	ldh [c], a                                       ; $5102: $e2
	ld [de], a                                       ; $5103: $12
	jr z, @-$06                                      ; $5104: $28 $f8

	ldh [c], a                                       ; $5106: $e2
	db $10                                           ; $5107: $10
	add hl, hl                                       ; $5108: $29
	db $ed                                           ; $5109: $ed
	ret c                                            ; $510a: $d8

	inc a                                            ; $510b: $3c
	ld l, $e5                                        ; $510c: $2e $e5
	ret c                                            ; $510e: $d8

	ld a, [hl-]                                      ; $510f: $3a

jr_00e_5110:
	ld l, $f2                                        ; $5110: $2e $f2
	ldh a, [rAUD3HIGH]                               ; $5112: $f0 $1e

jr_00e_5114:
	inc l                                            ; $5114: $2c
	ld [bc], a                                       ; $5115: $02
	ldh [rAUD3LEVEL], a                              ; $5116: $e0 $1c
	jr z, jr_00e_5114                                ; $5118: $28 $fa

	ldh [rAUD3ENA], a                                ; $511a: $e0 $1a
	jr z, jr_00e_5110                                ; $511c: $28 $f2

	ldh [rAUD2LOW], a                                ; $511e: $e0 $18
	inc l                                            ; $5120: $2c
	ld [bc], a                                       ; $5121: $02
	ldh a, [rAUD4POLY]                               ; $5122: $f0 $22
	inc l                                            ; $5124: $2c
	ld a, [$20f0]                                    ; $5125: $fa $f0 $20
	dec l                                            ; $5128: $2d
	db $10                                           ; $5129: $10
	ret c                                            ; $512a: $d8

	jr c, jr_00e_5155                                ; $512b: $38 $28

	ld [$36d8], sp                                   ; $512d: $08 $d8 $36
	jr z, jr_00e_5132                                ; $5130: $28 $00

jr_00e_5132:
	ldh a, [c]                                       ; $5132: $f2
	ld c, $2c                                        ; $5133: $0e $2c
	ld hl, sp-$0e                                    ; $5135: $f8 $f2
	inc c                                            ; $5137: $0c
	inc l                                            ; $5138: $2c
	nop                                              ; $5139: $00
	ldh [c], a                                       ; $513a: $e2
	ld a, [bc]                                       ; $513b: $0a
	jr z, @-$06                                      ; $513c: $28 $f8

	ldh [c], a                                       ; $513e: $e2
	ld [$0029], sp                                   ; $513f: $08 $29 $00
	pop af                                           ; $5142: $f1
	ld l, $2c                                        ; $5143: $2e $2c
	ld hl, sp-$0f                                    ; $5145: $f8 $f1
	inc l                                            ; $5147: $2c
	inc l                                            ; $5148: $2c
	nop                                              ; $5149: $00
	pop hl                                           ; $514a: $e1
	ld c, $28                                        ; $514b: $0e $28
	ld hl, sp-$1f                                    ; $514d: $f8 $e1
	inc c                                            ; $514f: $0c
	add hl, hl                                       ; $5150: $29
	nop                                              ; $5151: $00
	pop af                                           ; $5152: $f1
	ld a, [hl+]                                      ; $5153: $2a
	inc l                                            ; $5154: $2c

jr_00e_5155:
	ld hl, sp-$0f                                    ; $5155: $f8 $f1
	jr z, @+$2e                                      ; $5157: $28 $2c

	nop                                              ; $5159: $00
	pop hl                                           ; $515a: $e1
	ld c, $28                                        ; $515b: $0e $28
	ld hl, sp-$1f                                    ; $515d: $f8 $e1
	inc c                                            ; $515f: $0c
	add hl, hl                                       ; $5160: $29
	ldh a, [$d8]                                     ; $5161: $f0 $d8
	ld [hl-], a                                      ; $5163: $32
	ld a, [hl+]                                      ; $5164: $2a
	add sp, -$28                                     ; $5165: $e8 $d8
	jr nc, jr_00e_5193                               ; $5167: $30 $2a

	rst $38                                          ; $5169: $ff
	pop af                                           ; $516a: $f1
	ld h, $2c                                        ; $516b: $26 $2c
	rst FarCall                                          ; $516d: $f7
	pop af                                           ; $516e: $f1
	inc h                                            ; $516f: $24
	inc l                                            ; $5170: $2c
	nop                                              ; $5171: $00
	pop hl                                           ; $5172: $e1
	ld b, $28                                        ; $5173: $06 $28
	ld hl, sp-$1f                                    ; $5175: $f8 $e1
	inc b                                            ; $5177: $04
	add hl, hl                                       ; $5178: $29
	nop                                              ; $5179: $00
	pop af                                           ; $517a: $f1
	ld a, [hl+]                                      ; $517b: $2a
	inc l                                            ; $517c: $2c
	ld hl, sp-$0f                                    ; $517d: $f8 $f1
	jr z, jr_00e_51ad                                ; $517f: $28 $2c

	nop                                              ; $5181: $00
	pop hl                                           ; $5182: $e1
	ld a, [bc]                                       ; $5183: $0a
	jr z, @-$06                                      ; $5184: $28 $f8

	pop hl                                           ; $5186: $e1
	ld [$1029], sp                                   ; $5187: $08 $29 $10
	ret c                                            ; $518a: $d8

	ld [hl], $28                                     ; $518b: $36 $28
	ld [$34d8], sp                                   ; $518d: $08 $d8 $34
	jr z, @+$01                                      ; $5190: $28 $ff

	pop af                                           ; $5192: $f1

jr_00e_5193:
	ld [hl+], a                                      ; $5193: $22
	inc l                                            ; $5194: $2c
	rst FarCall                                          ; $5195: $f7

jr_00e_5196:
	pop af                                           ; $5196: $f1
	jr nz, jr_00e_51c5                               ; $5197: $20 $2c

	nop                                              ; $5199: $00
	pop hl                                           ; $519a: $e1
	ld [bc], a                                       ; $519b: $02
	jr z, jr_00e_5196                                ; $519c: $28 $f8

	pop hl                                           ; $519e: $e1
	nop                                              ; $519f: $00
	add hl, hl                                       ; $51a0: $29
	nop                                              ; $51a1: $00
	pop af                                           ; $51a2: $f1
	ld e, $2e                                        ; $51a3: $1e $2e
	ld hl, sp-$0f                                    ; $51a5: $f8 $f1
	inc e                                            ; $51a7: $1c
	ld l, $00                                        ; $51a8: $2e $00
	pop hl                                           ; $51aa: $e1
	ld c, $28                                        ; $51ab: $0e $28

jr_00e_51ad:
	ld hl, sp-$1f                                    ; $51ad: $f8 $e1
	inc c                                            ; $51af: $0c
	add hl, hl                                       ; $51b0: $29
	nop                                              ; $51b1: $00
	pop af                                           ; $51b2: $f1
	ld d, $2e                                        ; $51b3: $16 $2e
	ld hl, sp-$0f                                    ; $51b5: $f8 $f1
	inc d                                            ; $51b7: $14
	ld l, $00                                        ; $51b8: $2e $00
	pop hl                                           ; $51ba: $e1
	ld c, $28                                        ; $51bb: $0e $28
	ld hl, sp-$1f                                    ; $51bd: $f8 $e1
	inc c                                            ; $51bf: $0c
	add hl, hl                                       ; $51c0: $29
	ldh a, [$d8]                                     ; $51c1: $f0 $d8
	ld [hl-], a                                      ; $51c3: $32
	ld a, [hl+]                                      ; $51c4: $2a

jr_00e_51c5:
	add sp, -$28                                     ; $51c5: $e8 $d8
	jr nc, jr_00e_51f3                               ; $51c7: $30 $2a

	nop                                              ; $51c9: $00
	pop hl                                           ; $51ca: $e1
	ld b, $28                                        ; $51cb: $06 $28
	ld hl, sp-$1f                                    ; $51cd: $f8 $e1
	inc b                                            ; $51cf: $04
	jr z, @+$01                                      ; $51d0: $28 $ff

	pop af                                           ; $51d2: $f1
	ld a, [de]                                       ; $51d3: $1a
	ld l, $f7                                        ; $51d4: $2e $f7

jr_00e_51d6:
	pop af                                           ; $51d6: $f1
	jr jr_00e_5208                                   ; $51d7: $18 $2f

	nop                                              ; $51d9: $00
	pop hl                                           ; $51da: $e1
	ld a, [bc]                                       ; $51db: $0a
	jr z, jr_00e_51d6                                ; $51dc: $28 $f8

	pop hl                                           ; $51de: $e1
	ld [$0028], sp                                   ; $51df: $08 $28 $00
	pop af                                           ; $51e2: $f1
	ld d, $2e                                        ; $51e3: $16 $2e
	ld hl, sp-$0f                                    ; $51e5: $f8 $f1
	inc d                                            ; $51e7: $14
	cpl                                              ; $51e8: $2f
	db $10                                           ; $51e9: $10
	ret c                                            ; $51ea: $d8

	ld [hl], $28                                     ; $51eb: $36 $28
	ld [$34d8], sp                                   ; $51ed: $08 $d8 $34
	jr z, jr_00e_51f2                                ; $51f0: $28 $00

jr_00e_51f2:
	pop hl                                           ; $51f2: $e1

jr_00e_51f3:
	ld [bc], a                                       ; $51f3: $02
	jr z, @-$06                                      ; $51f4: $28 $f8

	pop hl                                           ; $51f6: $e1
	nop                                              ; $51f7: $00
	jr z, @+$01                                      ; $51f8: $28 $ff

	pop af                                           ; $51fa: $f1
	ld [de], a                                       ; $51fb: $12
	ld l, $f7                                        ; $51fc: $2e $f7
	pop af                                           ; $51fe: $f1
	db $10                                           ; $51ff: $10
	cpl                                              ; $5200: $2f
	nop                                              ; $5201: $00
	ldh [c], a                                       ; $5202: $e2
	ld c, $28                                        ; $5203: $0e $28
	ld hl, sp-$1e                                    ; $5205: $f8 $e2
	inc c                                            ; $5207: $0c

jr_00e_5208:
	jr z, jr_00e_520a                                ; $5208: $28 $00

jr_00e_520a:
	ldh a, [c]                                       ; $520a: $f2
	ld [de], a                                       ; $520b: $12
	ld a, [hl+]                                      ; $520c: $2a
	ld hl, sp-$0e                                    ; $520d: $f8 $f2
	db $10                                           ; $520f: $10
	dec hl                                           ; $5210: $2b
	nop                                              ; $5211: $00
	ldh [c], a                                       ; $5212: $e2
	ld a, [hl+]                                      ; $5213: $2a
	jr z, @-$06                                      ; $5214: $28 $f8

	ldh [c], a                                       ; $5216: $e2
	jr z, jr_00e_5241                                ; $5217: $28 $28

	nop                                              ; $5219: $00
	ldh a, [c]                                       ; $521a: $f2
	ld [de], a                                       ; $521b: $12
	ld a, [hl+]                                      ; $521c: $2a
	ld hl, sp-$0e                                    ; $521d: $f8 $f2
	db $10                                           ; $521f: $10
	dec hl                                           ; $5220: $2b
	nop                                              ; $5221: $00
	ldh a, [c]                                       ; $5222: $f2
	ld [de], a                                       ; $5223: $12
	ld a, [hl+]                                      ; $5224: $2a
	ld hl, sp-$0e                                    ; $5225: $f8 $f2
	inc h                                            ; $5227: $24
	ld a, [hl+]                                      ; $5228: $2a
	ld hl, sp-$1e                                    ; $5229: $f8 $e2
	inc b                                            ; $522b: $04
	jr z, jr_00e_522e                                ; $522c: $28 $00

jr_00e_522e:
	ldh [c], a                                       ; $522e: $e2
	ld a, [hl+]                                      ; $522f: $2a
	add hl, hl                                       ; $5230: $29
	ldh a, [$d8]                                     ; $5231: $f0 $d8
	ld a, $2e                                        ; $5233: $3e $2e
	add sp, -$28                                     ; $5235: $e8 $d8
	inc a                                            ; $5237: $3c
	ld l, $00                                        ; $5238: $2e $00
	ldh [c], a                                       ; $523a: $e2
	ld a, [bc]                                       ; $523b: $0a
	jr z, @-$06                                      ; $523c: $28 $f8

	ldh a, [c]                                       ; $523e: $f2
	ld [hl+], a                                      ; $523f: $22
	ld a, [hl+]                                      ; $5240: $2a

jr_00e_5241:
	ld hl, sp-$1e                                    ; $5241: $f8 $e2
	ld [bc], a                                       ; $5243: $02
	jr z, jr_00e_5246                                ; $5244: $28 $00

jr_00e_5246:
	ldh a, [c]                                       ; $5246: $f2
	ld [de], a                                       ; $5247: $12
	dec hl                                           ; $5248: $2b
	nop                                              ; $5249: $00
	ldh [c], a                                       ; $524a: $e2
	ld l, $28                                        ; $524b: $2e $28
	ld hl, sp-$1e                                    ; $524d: $f8 $e2
	inc l                                            ; $524f: $2c
	jr z, jr_00e_5252                                ; $5250: $28 $00

jr_00e_5252:
	ldh a, [c]                                       ; $5252: $f2
	ld [de], a                                       ; $5253: $12
	ld a, [hl+]                                      ; $5254: $2a
	ld hl, sp-$0e                                    ; $5255: $f8 $f2
	db $10                                           ; $5257: $10
	dec hl                                           ; $5258: $2b
	db $10                                           ; $5259: $10
	ret c                                            ; $525a: $d8

	ld a, [hl-]                                      ; $525b: $3a
	jr z, @+$0a                                      ; $525c: $28 $08

	ret c                                            ; $525e: $d8

	jr c, jr_00e_5289                                ; $525f: $38 $28

	nop                                              ; $5261: $00
	ldh a, [c]                                       ; $5262: $f2
	ld [hl], $2a                                     ; $5263: $36 $2a
	ld hl, sp-$0e                                    ; $5265: $f8 $f2
	inc [hl]                                         ; $5267: $34
	ld a, [hl+]                                      ; $5268: $2a
	nop                                              ; $5269: $00
	ldh [c], a                                       ; $526a: $e2
	ld d, $28                                        ; $526b: $16 $28
	ld hl, sp-$1e                                    ; $526d: $f8 $e2
	inc d                                            ; $526f: $14
	add hl, hl                                       ; $5270: $29
	nop                                              ; $5271: $00
	ldh a, [c]                                       ; $5272: $f2
	ld [hl-], a                                      ; $5273: $32
	jr z, @-$06                                      ; $5274: $28 $f8

	ldh a, [c]                                       ; $5276: $f2
	jr nc, jr_00e_52a1                               ; $5277: $30 $28

	nop                                              ; $5279: $00
	ldh [c], a                                       ; $527a: $e2
	ld c, $28                                        ; $527b: $0e $28
	ld hl, sp-$1e                                    ; $527d: $f8 $e2
	inc c                                            ; $527f: $0c
	add hl, hl                                       ; $5280: $29
	nop                                              ; $5281: $00
	ldh [c], a                                       ; $5282: $e2
	ld a, [hl+]                                      ; $5283: $2a
	jr z, @-$06                                      ; $5284: $28 $f8

jr_00e_5286:
	ldh [c], a                                       ; $5286: $e2
	jr z, @+$2a                                      ; $5287: $28 $28

jr_00e_5289:
	nop                                              ; $5289: $00
	ldh a, [c]                                       ; $528a: $f2
	ld [hl-], a                                      ; $528b: $32
	jr z, jr_00e_5286                                ; $528c: $28 $f8

jr_00e_528e:
	ldh a, [c]                                       ; $528e: $f2
	jr nc, jr_00e_52ba                               ; $528f: $30 $29

	nop                                              ; $5291: $00

jr_00e_5292:
	ldh [c], a                                       ; $5292: $e2
	ld a, [hl+]                                      ; $5293: $2a
	jr z, jr_00e_528e                                ; $5294: $28 $f8

	ldh [c], a                                       ; $5296: $e2
	inc b                                            ; $5297: $04
	jr z, jr_00e_5292                                ; $5298: $28 $f8

	ldh a, [c]                                       ; $529a: $f2
	ld b, $28                                        ; $529b: $06 $28
	nop                                              ; $529d: $00
	ldh a, [c]                                       ; $529e: $f2
	ld [hl-], a                                      ; $529f: $32
	add hl, hl                                       ; $52a0: $29

jr_00e_52a1:
	ldh a, [$d8]                                     ; $52a1: $f0 $d8
	ld a, $2e                                        ; $52a3: $3e $2e
	add sp, -$28                                     ; $52a5: $e8 $d8
	inc a                                            ; $52a7: $3c
	ld l, $f8                                        ; $52a8: $2e $f8
	ldh a, [c]                                       ; $52aa: $f2
	jr nz, jr_00e_52d5                               ; $52ab: $20 $28

	ld hl, sp-$1e                                    ; $52ad: $f8 $e2
	nop                                              ; $52af: $00
	jr z, jr_00e_52b2                                ; $52b0: $28 $00

jr_00e_52b2:
	ldh a, [c]                                       ; $52b2: $f2
	ld [hl-], a                                      ; $52b3: $32
	jr z, jr_00e_52b6                                ; $52b4: $28 $00

jr_00e_52b6:
	ldh [c], a                                       ; $52b6: $e2
	ld a, [bc]                                       ; $52b7: $0a
	add hl, hl                                       ; $52b8: $29
	nop                                              ; $52b9: $00

jr_00e_52ba:
	ldh [c], a                                       ; $52ba: $e2
	ld l, $28                                        ; $52bb: $2e $28
	ld hl, sp-$1e                                    ; $52bd: $f8 $e2
	inc l                                            ; $52bf: $2c
	jr z, jr_00e_52c2                                ; $52c0: $28 $00

jr_00e_52c2:
	ldh a, [c]                                       ; $52c2: $f2
	ld [hl-], a                                      ; $52c3: $32
	jr z, @-$06                                      ; $52c4: $28 $f8

	ldh a, [c]                                       ; $52c6: $f2
	jr nc, jr_00e_52f2                               ; $52c7: $30 $29

	db $10                                           ; $52c9: $10
	ret c                                            ; $52ca: $d8

	ld a, [hl-]                                      ; $52cb: $3a
	jr z, @+$0a                                      ; $52cc: $28 $08

	ret c                                            ; $52ce: $d8

	jr c, jr_00e_52f9                                ; $52cf: $38 $28

	nop                                              ; $52d1: $00
	ldh a, [c]                                       ; $52d2: $f2
	ld e, $28                                        ; $52d3: $1e $28

jr_00e_52d5:
	ld hl, sp-$0e                                    ; $52d5: $f8 $f2
	inc e                                            ; $52d7: $1c
	jr z, jr_00e_52da                                ; $52d8: $28 $00

jr_00e_52da:
	ldh [c], a                                       ; $52da: $e2
	ld a, [de]                                       ; $52db: $1a
	jr z, @-$06                                      ; $52dc: $28 $f8

	ldh [c], a                                       ; $52de: $e2
	jr jr_00e_530a                                   ; $52df: $18 $29

	inc c                                            ; $52e1: $0c
	pop af                                           ; $52e2: $f1
	ld [de], a                                       ; $52e3: $12
	ld l, $04                                        ; $52e4: $2e $04

jr_00e_52e6:
	pop af                                           ; $52e6: $f1
	db $10                                           ; $52e7: $10
	ld l, $0c                                        ; $52e8: $2e $0c
	pop hl                                           ; $52ea: $e1
	ld b, $28                                        ; $52eb: $06 $28
	inc b                                            ; $52ed: $04
	pop hl                                           ; $52ee: $e1
	inc b                                            ; $52ef: $04
	jr z, jr_00e_52e6                                ; $52f0: $28 $f4

jr_00e_52f2:
	pop af                                           ; $52f2: $f1
	ld [hl-], a                                      ; $52f3: $32
	ld a, [hl+]                                      ; $52f4: $2a
	db $ec                                           ; $52f5: $ec
	pop af                                           ; $52f6: $f1
	jr nc, jr_00e_5323                               ; $52f7: $30 $2a

jr_00e_52f9:
	db $f4                                           ; $52f9: $f4
	pop hl                                           ; $52fa: $e1
	ld h, $2c                                        ; $52fb: $26 $2c
	db $ec                                           ; $52fd: $ec
	pop hl                                           ; $52fe: $e1
	inc h                                            ; $52ff: $24
	dec l                                            ; $5300: $2d
	inc c                                            ; $5301: $0c
	pop af                                           ; $5302: $f1
	ld d, $2e                                        ; $5303: $16 $2e
	inc b                                            ; $5305: $04
	pop af                                           ; $5306: $f1
	inc d                                            ; $5307: $14
	ld l, $f4                                        ; $5308: $2e $f4

jr_00e_530a:
	pop af                                           ; $530a: $f1
	ld [hl], $2a                                     ; $530b: $36 $2a
	db $ec                                           ; $530d: $ec

jr_00e_530e:
	pop af                                           ; $530e: $f1
	inc [hl]                                         ; $530f: $34
	ld a, [hl+]                                      ; $5310: $2a
	inc c                                            ; $5311: $0c
	pop hl                                           ; $5312: $e1
	ld [bc], a                                       ; $5313: $02
	jr z, jr_00e_531a                                ; $5314: $28 $04

	pop hl                                           ; $5316: $e1
	nop                                              ; $5317: $00
	jr z, jr_00e_530e                                ; $5318: $28 $f4

jr_00e_531a:
	pop hl                                           ; $531a: $e1
	ld [hl+], a                                      ; $531b: $22
	inc l                                            ; $531c: $2c
	db $ec                                           ; $531d: $ec
	pop hl                                           ; $531e: $e1
	jr nz, jr_00e_534e                               ; $531f: $20 $2d

	db $fc                                           ; $5321: $fc
	db $d3                                           ; $5322: $d3

jr_00e_5323:
	ld b, d                                          ; $5323: $42
	ld a, [hl+]                                      ; $5324: $2a
	db $f4                                           ; $5325: $f4
	db $d3                                           ; $5326: $d3
	ld b, b                                          ; $5327: $40
	ld a, [hl+]                                      ; $5328: $2a
	db $f4                                           ; $5329: $f4
	pop af                                           ; $532a: $f1
	ld a, [hl-]                                      ; $532b: $3a
	ld a, [hl+]                                      ; $532c: $2a
	db $ec                                           ; $532d: $ec
	pop af                                           ; $532e: $f1
	jr c, jr_00e_535b                                ; $532f: $38 $2a

	inc c                                            ; $5331: $0c
	pop af                                           ; $5332: $f1
	ld a, [de]                                       ; $5333: $1a
	ld l, $04                                        ; $5334: $2e $04
	pop af                                           ; $5336: $f1
	jr jr_00e_5367                                   ; $5337: $18 $2e

	inc c                                            ; $5339: $0c
	pop hl                                           ; $533a: $e1
	ld a, [bc]                                       ; $533b: $0a
	jr z, jr_00e_5342                                ; $533c: $28 $04

	pop hl                                           ; $533e: $e1
	ld [$f428], sp                                   ; $533f: $08 $28 $f4

jr_00e_5342:
	pop hl                                           ; $5342: $e1
	ld a, [hl+]                                      ; $5343: $2a
	inc l                                            ; $5344: $2c
	db $ec                                           ; $5345: $ec

jr_00e_5346:
	pop hl                                           ; $5346: $e1
	jr z, jr_00e_5376                                ; $5347: $28 $2d

	inc e                                            ; $5349: $1c
	ret c                                            ; $534a: $d8

	ld b, [hl]                                       ; $534b: $46
	jr z, jr_00e_5362                                ; $534c: $28 $14

jr_00e_534e:
	ret c                                            ; $534e: $d8

	ld b, h                                          ; $534f: $44
	jr z, jr_00e_5346                                ; $5350: $28 $f4

	pop af                                           ; $5352: $f1
	ld a, $2a                                        ; $5353: $3e $2a
	db $ec                                           ; $5355: $ec
	pop af                                           ; $5356: $f1
	inc a                                            ; $5357: $3c
	ld a, [hl+]                                      ; $5358: $2a
	inc c                                            ; $5359: $0c
	pop af                                           ; $535a: $f1

jr_00e_535b:
	ld e, $2e                                        ; $535b: $1e $2e
	inc b                                            ; $535d: $04

jr_00e_535e:
	pop af                                           ; $535e: $f1
	inc e                                            ; $535f: $1c
	ld l, $0c                                        ; $5360: $2e $0c

jr_00e_5362:
	pop hl                                           ; $5362: $e1
	ld c, $28                                        ; $5363: $0e $28
	inc b                                            ; $5365: $04
	pop hl                                           ; $5366: $e1

jr_00e_5367:
	inc c                                            ; $5367: $0c
	jr z, jr_00e_535e                                ; $5368: $28 $f4

	pop hl                                           ; $536a: $e1
	ld l, $2c                                        ; $536b: $2e $2c
	db $ec                                           ; $536d: $ec
	pop hl                                           ; $536e: $e1
	inc l                                            ; $536f: $2c
	dec l                                            ; $5370: $2d
	inc c                                            ; $5371: $0c

jr_00e_5372:
	pop af                                           ; $5372: $f1
	ld [de], a                                       ; $5373: $12
	inc l                                            ; $5374: $2c
	inc b                                            ; $5375: $04

jr_00e_5376:
	pop af                                           ; $5376: $f1
	db $10                                           ; $5377: $10
	inc l                                            ; $5378: $2c
	inc c                                            ; $5379: $0c
	pop hl                                           ; $537a: $e1
	ld b, $28                                        ; $537b: $06 $28
	inc b                                            ; $537d: $04
	pop hl                                           ; $537e: $e1
	inc b                                            ; $537f: $04
	jr z, jr_00e_5376                                ; $5380: $28 $f4

	pop af                                           ; $5382: $f1
	ld [hl-], a                                      ; $5383: $32
	jr z, jr_00e_5372                                ; $5384: $28 $ec

	pop af                                           ; $5386: $f1
	jr nc, jr_00e_53b1                               ; $5387: $30 $28

	db $f4                                           ; $5389: $f4
	pop hl                                           ; $538a: $e1
	ld h, $2c                                        ; $538b: $26 $2c
	db $ec                                           ; $538d: $ec
	pop hl                                           ; $538e: $e1
	inc h                                            ; $538f: $24
	dec l                                            ; $5390: $2d
	inc c                                            ; $5391: $0c
	pop af                                           ; $5392: $f1
	ld d, $2c                                        ; $5393: $16 $2c
	inc b                                            ; $5395: $04

jr_00e_5396:
	pop af                                           ; $5396: $f1
	inc d                                            ; $5397: $14
	inc l                                            ; $5398: $2c
	inc c                                            ; $5399: $0c
	pop hl                                           ; $539a: $e1
	ld [bc], a                                       ; $539b: $02
	jr z, jr_00e_53a2                                ; $539c: $28 $04

jr_00e_539e:
	pop hl                                           ; $539e: $e1
	nop                                              ; $539f: $00
	jr z, jr_00e_5396                                ; $53a0: $28 $f4

jr_00e_53a2:
	pop af                                           ; $53a2: $f1
	ld [hl], $28                                     ; $53a3: $36 $28
	db $ec                                           ; $53a5: $ec
	pop af                                           ; $53a6: $f1
	inc [hl]                                         ; $53a7: $34
	jr z, jr_00e_539e                                ; $53a8: $28 $f4

	pop hl                                           ; $53aa: $e1
	ld [hl+], a                                      ; $53ab: $22
	inc l                                            ; $53ac: $2c
	db $ec                                           ; $53ad: $ec
	pop hl                                           ; $53ae: $e1
	jr nz, jr_00e_53de                               ; $53af: $20 $2d

jr_00e_53b1:
	db $fc                                           ; $53b1: $fc

jr_00e_53b2:
	db $d3                                           ; $53b2: $d3
	ld b, d                                          ; $53b3: $42
	ld a, [hl+]                                      ; $53b4: $2a
	db $f4                                           ; $53b5: $f4
	db $d3                                           ; $53b6: $d3
	ld b, b                                          ; $53b7: $40
	ld a, [hl+]                                      ; $53b8: $2a
	inc c                                            ; $53b9: $0c
	pop af                                           ; $53ba: $f1
	ld a, [de]                                       ; $53bb: $1a
	inc l                                            ; $53bc: $2c
	inc b                                            ; $53bd: $04
	pop af                                           ; $53be: $f1
	jr jr_00e_53ed                                   ; $53bf: $18 $2c

	db $f4                                           ; $53c1: $f4
	pop af                                           ; $53c2: $f1
	ld a, [hl-]                                      ; $53c3: $3a
	jr z, jr_00e_53b2                                ; $53c4: $28 $ec

	pop af                                           ; $53c6: $f1
	jr c, @+$2a                                      ; $53c7: $38 $28

	inc c                                            ; $53c9: $0c
	pop hl                                           ; $53ca: $e1
	ld a, [bc]                                       ; $53cb: $0a
	jr z, jr_00e_53d2                                ; $53cc: $28 $04

	pop hl                                           ; $53ce: $e1
	ld [$f428], sp                                   ; $53cf: $08 $28 $f4

jr_00e_53d2:
	pop hl                                           ; $53d2: $e1
	ld a, [hl+]                                      ; $53d3: $2a
	inc l                                            ; $53d4: $2c
	db $ec                                           ; $53d5: $ec
	pop hl                                           ; $53d6: $e1
	jr z, @+$2f                                      ; $53d7: $28 $2d

	dec de                                           ; $53d9: $1b
	call nc, $2846                                   ; $53da: $d4 $46 $28
	inc de                                           ; $53dd: $13

jr_00e_53de:
	call nc, $2844                                   ; $53de: $d4 $44 $28
	inc c                                            ; $53e1: $0c
	pop af                                           ; $53e2: $f1
	ld e, $2c                                        ; $53e3: $1e $2c
	inc b                                            ; $53e5: $04
	pop af                                           ; $53e6: $f1
	inc e                                            ; $53e7: $1c
	inc l                                            ; $53e8: $2c
	db $f4                                           ; $53e9: $f4
	pop af                                           ; $53ea: $f1
	ld a, $28                                        ; $53eb: $3e $28

jr_00e_53ed:
	db $ec                                           ; $53ed: $ec

jr_00e_53ee:
	pop af                                           ; $53ee: $f1
	inc a                                            ; $53ef: $3c
	jr z, jr_00e_53fe                                ; $53f0: $28 $0c

	pop hl                                           ; $53f2: $e1
	ld c, $28                                        ; $53f3: $0e $28
	inc b                                            ; $53f5: $04
	pop hl                                           ; $53f6: $e1
	inc c                                            ; $53f7: $0c
	jr z, jr_00e_53ee                                ; $53f8: $28 $f4

	pop hl                                           ; $53fa: $e1
	ld l, $2c                                        ; $53fb: $2e $2c
	db $ec                                           ; $53fd: $ec

jr_00e_53fe:
	pop hl                                           ; $53fe: $e1
	inc l                                            ; $53ff: $2c
	dec l                                            ; $5400: $2d
	nop                                              ; $5401: $00
	ldh a, [$0e]                                     ; $5402: $f0 $0e
	ld a, [hl+]                                      ; $5404: $2a
	ld hl, sp-$10                                    ; $5405: $f8 $f0
	inc c                                            ; $5407: $0c
	ld a, [hl+]                                      ; $5408: $2a
	ld hl, sp-$20                                    ; $5409: $f8 $e0
	ld [$0028], sp                                   ; $540b: $08 $28 $00
	ldh [$0a], a                                     ; $540e: $e0 $0a
	jr z, @-$06                                      ; $5410: $28 $f8

	ldh a, [rAUD1SWEEP]                              ; $5412: $f0 $10
	dec l                                            ; $5414: $2d
	ld hl, sp-$10                                    ; $5415: $f8 $f0
	inc c                                            ; $5417: $0c
	ld a, [hl+]                                      ; $5418: $2a
	ld hl, sp-$10                                    ; $5419: $f8 $f0
	db $10                                           ; $541b: $10
	inc l                                            ; $541c: $2c
	nop                                              ; $541d: $00
	ldh [$0a], a                                     ; $541e: $e0 $0a
	jr z, @-$06                                      ; $5420: $28 $f8

	ldh [$08], a                                     ; $5422: $e0 $08
	jr z, jr_00e_5426                                ; $5424: $28 $00

jr_00e_5426:
	ldh a, [$0e]                                     ; $5426: $f0 $0e
	ld a, [hl+]                                      ; $5428: $2a
	ld [$12d8], sp                                   ; $5429: $08 $d8 $12
	dec l                                            ; $542c: $2d
	nop                                              ; $542d: $00
	ldh a, [$0e]                                     ; $542e: $f0 $0e
	ld a, [hl+]                                      ; $5430: $2a
	ld hl, sp-$10                                    ; $5431: $f8 $f0
	inc c                                            ; $5433: $0c
	ld a, [hl+]                                      ; $5434: $2a
	nop                                              ; $5435: $00

jr_00e_5436:
	ldh [$0a], a                                     ; $5436: $e0 $0a
	jr z, @-$06                                      ; $5438: $28 $f8

	ldh [$08], a                                     ; $543a: $e0 $08
	jr z, jr_00e_5436                                ; $543c: $28 $f8

	ldh a, [rAUD1SWEEP]                              ; $543e: $f0 $10
	inc l                                            ; $5440: $2c
	inc c                                            ; $5441: $0c
	push de                                          ; $5442: $d5
	inc d                                            ; $5443: $14
	dec l                                            ; $5444: $2d
	ld hl, sp-$10                                    ; $5445: $f8 $f0
	inc c                                            ; $5447: $0c
	ld a, [hl+]                                      ; $5448: $2a
	nop                                              ; $5449: $00
	ldh a, [$0e]                                     ; $544a: $f0 $0e
	ld a, [hl+]                                      ; $544c: $2a
	ld hl, sp-$20                                    ; $544d: $f8 $e0
	ld [$0028], sp                                   ; $544f: $08 $28 $00
	ldh [$0a], a                                     ; $5452: $e0 $0a
	jr z, @-$06                                      ; $5454: $28 $f8

	ldh a, [rAUD1SWEEP]                              ; $5456: $f0 $10
	inc l                                            ; $5458: $2c
	db $10                                           ; $5459: $10
	db $d3                                           ; $545a: $d3
	ld d, $2d                                        ; $545b: $16 $2d
	ld hl, sp-$10                                    ; $545d: $f8 $f0
	db $10                                           ; $545f: $10
	inc l                                            ; $5460: $2c
	nop                                              ; $5461: $00
	ldh a, [rTMA]                                    ; $5462: $f0 $06
	inc l                                            ; $5464: $2c
	ld hl, sp-$10                                    ; $5465: $f8 $f0
	inc b                                            ; $5467: $04
	inc l                                            ; $5468: $2c
	nop                                              ; $5469: $00
	ldh [rSC], a                                     ; $546a: $e0 $02
	jr z, @-$06                                      ; $546c: $28 $f8

	ldh [rP1], a                                     ; $546e: $e0 $00
	add hl, hl                                       ; $5470: $29
	ld hl, sp-$10                                    ; $5471: $f8 $f0
	db $10                                           ; $5473: $10
	inc l                                            ; $5474: $2c
	nop                                              ; $5475: $00
	ldh a, [rTMA]                                    ; $5476: $f0 $06
	inc l                                            ; $5478: $2c
	ld hl, sp-$10                                    ; $5479: $f8 $f0
	inc b                                            ; $547b: $04
	inc l                                            ; $547c: $2c
	nop                                              ; $547d: $00
	ldh [rSC], a                                     ; $547e: $e0 $02
	jr z, @-$06                                      ; $5480: $28 $f8

	ldh [rP1], a                                     ; $5482: $e0 $00
	jr z, jr_00e_548e                                ; $5484: $28 $08

	ret c                                            ; $5486: $d8

	ld [de], a                                       ; $5487: $12
	dec l                                            ; $5488: $2d
	ld hl, sp-$10                                    ; $5489: $f8 $f0
	db $10                                           ; $548b: $10
	inc l                                            ; $548c: $2c
	nop                                              ; $548d: $00

jr_00e_548e:
	ldh a, [rTMA]                                    ; $548e: $f0 $06
	inc l                                            ; $5490: $2c
	ld hl, sp-$10                                    ; $5491: $f8 $f0
	inc b                                            ; $5493: $04
	inc l                                            ; $5494: $2c
	nop                                              ; $5495: $00
	ldh [rSC], a                                     ; $5496: $e0 $02
	jr z, @-$06                                      ; $5498: $28 $f8

	ldh [rP1], a                                     ; $549a: $e0 $00
	jr z, @+$0e                                      ; $549c: $28 $0c

	push de                                          ; $549e: $d5
	inc d                                            ; $549f: $14
	dec l                                            ; $54a0: $2d
	ld hl, sp-$10                                    ; $54a1: $f8 $f0
	db $10                                           ; $54a3: $10
	inc l                                            ; $54a4: $2c
	nop                                              ; $54a5: $00
	ldh a, [rTMA]                                    ; $54a6: $f0 $06
	inc l                                            ; $54a8: $2c
	ld hl, sp-$10                                    ; $54a9: $f8 $f0
	inc b                                            ; $54ab: $04
	inc l                                            ; $54ac: $2c
	nop                                              ; $54ad: $00
	ldh [rSC], a                                     ; $54ae: $e0 $02
	jr z, @-$06                                      ; $54b0: $28 $f8

	ldh [rP1], a                                     ; $54b2: $e0 $00
	jr z, @+$12                                      ; $54b4: $28 $10

	db $d3                                           ; $54b6: $d3
	ld d, $2d                                        ; $54b7: $16 $2d
	nop                                              ; $54b9: $00
	pop hl                                           ; $54ba: $e1
	ld b, $28                                        ; $54bb: $06 $28
	ld hl, sp-$1f                                    ; $54bd: $f8 $e1
	inc b                                            ; $54bf: $04
	jr z, jr_00e_54c2                                ; $54c0: $28 $00

jr_00e_54c2:
	pop af                                           ; $54c2: $f1
	ld [hl+], a                                      ; $54c3: $22
	inc l                                            ; $54c4: $2c
	ld hl, sp-$0f                                    ; $54c5: $f8 $f1
	jr nz, @+$2f                                     ; $54c7: $20 $2d

	ld hl, sp-$0f                                    ; $54c9: $f8 $f1
	jr nz, jr_00e_54f9                               ; $54cb: $20 $2c

	nop                                              ; $54cd: $00

jr_00e_54ce:
	pop af                                           ; $54ce: $f1
	ld e, $2c                                        ; $54cf: $1e $2c
	nop                                              ; $54d1: $00
	pop hl                                           ; $54d2: $e1
	ld a, [bc]                                       ; $54d3: $0a
	jr z, jr_00e_54ce                                ; $54d4: $28 $f8

	pop hl                                           ; $54d6: $e1
	ld [$0828], sp                                   ; $54d7: $08 $28 $08
	add sp, $36                                      ; $54da: $e8 $36
	dec hl                                           ; $54dc: $2b
	ldh a, [$e0]                                     ; $54dd: $f0 $e0
	inc [hl]                                         ; $54df: $34
	ld a, [hl+]                                      ; $54e0: $2a
	nop                                              ; $54e1: $00
	pop hl                                           ; $54e2: $e1
	ld [bc], a                                       ; $54e3: $02
	jr z, @-$06                                      ; $54e4: $28 $f8

	pop hl                                           ; $54e6: $e1
	nop                                              ; $54e7: $00
	jr z, jr_00e_54f2                                ; $54e8: $28 $08

	add sp, $34                                      ; $54ea: $e8 $34
	ld a, [hl+]                                      ; $54ec: $2a
	ldh a, [$f0]                                     ; $54ed: $f0 $f0
	ld [hl-], a                                      ; $54ef: $32
	ld a, [hl+]                                      ; $54f0: $2a
	nop                                              ; $54f1: $00

jr_00e_54f2:
	pop af                                           ; $54f2: $f1
	ld h, $2c                                        ; $54f3: $26 $2c
	ld hl, sp-$0f                                    ; $54f5: $f8 $f1
	inc h                                            ; $54f7: $24
	dec l                                            ; $54f8: $2d

jr_00e_54f9:
	ldh a, [$d0]                                     ; $54f9: $f0 $d0
	ld l, $2e                                        ; $54fb: $2e $2e
	add sp, -$30                                     ; $54fd: $e8 $d0
	inc l                                            ; $54ff: $2c
	ld l, $08                                        ; $5500: $2e $08
	add sp, $36                                      ; $5502: $e8 $36
	ld a, [hl+]                                      ; $5504: $2a
	ldh a, [$e0]                                     ; $5505: $f0 $e0
	ld [hl-], a                                      ; $5507: $32
	ld a, [hl+]                                      ; $5508: $2a
	ldh a, [$f0]                                     ; $5509: $f0 $f0
	inc [hl]                                         ; $550b: $34
	ld a, [hl+]                                      ; $550c: $2a
	nop                                              ; $550d: $00
	pop af                                           ; $550e: $f1
	ld [hl+], a                                      ; $550f: $22
	inc l                                            ; $5510: $2c
	ld hl, sp-$0f                                    ; $5511: $f8 $f1
	jr nz, @+$2e                                     ; $5513: $20 $2c

	nop                                              ; $5515: $00
	pop hl                                           ; $5516: $e1
	ld [bc], a                                       ; $5517: $02
	jr z, @-$06                                      ; $5518: $28 $f8

	pop hl                                           ; $551a: $e1
	nop                                              ; $551b: $00
	add hl, hl                                       ; $551c: $29
	nop                                              ; $551d: $00
	pop af                                           ; $551e: $f1
	ld e, $2c                                        ; $551f: $1e $2c
	ld hl, sp-$0f                                    ; $5521: $f8 $f1
	inc e                                            ; $5523: $1c
	inc l                                            ; $5524: $2c
	nop                                              ; $5525: $00
	pop hl                                           ; $5526: $e1
	ld b, $28                                        ; $5527: $06 $28
	ld hl, sp-$1f                                    ; $5529: $f8 $e1
	inc b                                            ; $552b: $04
	add hl, hl                                       ; $552c: $29
	nop                                              ; $552d: $00
	pop af                                           ; $552e: $f1
	ld e, $2c                                        ; $552f: $1e $2c
	ld hl, sp-$0f                                    ; $5531: $f8 $f1
	inc e                                            ; $5533: $1c
	inc l                                            ; $5534: $2c
	nop                                              ; $5535: $00
	pop hl                                           ; $5536: $e1
	ld a, [bc]                                       ; $5537: $0a
	jr z, @-$06                                      ; $5538: $28 $f8

jr_00e_553a:
	pop hl                                           ; $553a: $e1
	ld [$0029], sp                                   ; $553b: $08 $29 $00
	pop hl                                           ; $553e: $e1
	ld [de], a                                       ; $553f: $12
	jr z, jr_00e_553a                                ; $5540: $28 $f8

	pop hl                                           ; $5542: $e1
	db $10                                           ; $5543: $10
	jr z, jr_00e_554e                                ; $5544: $28 $08

	ret c                                            ; $5546: $d8

	jr z, jr_00e_5571                                ; $5547: $28 $28

	db $10                                           ; $5549: $10
	ret c                                            ; $554a: $d8

	ld a, [hl+]                                      ; $554b: $2a
	jr z, jr_00e_554e                                ; $554c: $28 $00

jr_00e_554e:
	pop af                                           ; $554e: $f1
	ld [hl+], a                                      ; $554f: $22
	inc l                                            ; $5550: $2c
	ld hl, sp-$0f                                    ; $5551: $f8 $f1
	jr nz, jr_00e_5582                               ; $5553: $20 $2d

	db $fd                                           ; $5555: $fd
	add sp, $68                                      ; $5556: $e8 $68
	inc h                                            ; $5558: $24
	dec b                                            ; $5559: $05
	add sp, $6a                                      ; $555a: $e8 $6a
	inc h                                            ; $555c: $24
	push af                                          ; $555d: $f5
	ldh a, [rDIV]                                    ; $555e: $f0 $04
	ld [hl+], a                                      ; $5560: $22
	db $fd                                           ; $5561: $fd
	ldh a, [$6c]                                     ; $5562: $f0 $6c
	ld [hl+], a                                      ; $5564: $22
	dec b                                            ; $5565: $05
	ldh a, [$08]                                     ; $5566: $f0 $08
	ld [hl+], a                                      ; $5568: $22
	dec c                                            ; $5569: $0d
	xor $f6                                          ; $556a: $ee $f6
	inc hl                                           ; $556c: $23
	db $fd                                           ; $556d: $fd
	add sp, $6e                                      ; $556e: $e8 $6e
	inc h                                            ; $5570: $24

jr_00e_5571:
	dec b                                            ; $5571: $05
	add sp, $70                                      ; $5572: $e8 $70
	inc h                                            ; $5574: $24
	push af                                          ; $5575: $f5
	ldh a, [$0e]                                     ; $5576: $f0 $0e
	ld [hl+], a                                      ; $5578: $22
	db $fd                                           ; $5579: $fd
	ldh a, [$72]                                     ; $557a: $f0 $72
	ld [hl+], a                                      ; $557c: $22
	dec b                                            ; $557d: $05
	ldh a, [rAUD1ENV]                                ; $557e: $f0 $12
	ld [hl+], a                                      ; $5580: $22
	dec c                                            ; $5581: $0d

jr_00e_5582:
	rst AddAOntoHL                                          ; $5582: $ef
	or $23                                           ; $5583: $f6 $23
	db $fd                                           ; $5585: $fd
	add sp, $74                                      ; $5586: $e8 $74
	inc h                                            ; $5588: $24
	dec b                                            ; $5589: $05
	add sp, $76                                      ; $558a: $e8 $76
	inc h                                            ; $558c: $24
	push af                                          ; $558d: $f5
	ldh a, [rAUD2LOW]                                ; $558e: $f0 $18
	ld [hl+], a                                      ; $5590: $22
	db $fd                                           ; $5591: $fd
	ldh a, [$78]                                     ; $5592: $f0 $78
	ld [hl+], a                                      ; $5594: $22
	dec b                                            ; $5595: $05
	ldh a, [rAUD3LEVEL]                              ; $5596: $f0 $1c
	ld [hl+], a                                      ; $5598: $22
	dec c                                            ; $5599: $0d
	ldh a, [$f6]                                     ; $559a: $f0 $f6
	inc hl                                           ; $559c: $23
	db $fd                                           ; $559d: $fd
	add sp, $74                                      ; $559e: $e8 $74
	inc h                                            ; $55a0: $24
	dec b                                            ; $55a1: $05
	add sp, $76                                      ; $55a2: $e8 $76
	inc h                                            ; $55a4: $24
	push af                                          ; $55a5: $f5
	ldh a, [rAUD2LOW]                                ; $55a6: $f0 $18
	ld [hl+], a                                      ; $55a8: $22
	db $fd                                           ; $55a9: $fd
	ldh a, [$7a]                                     ; $55aa: $f0 $7a
	ld [hl+], a                                      ; $55ac: $22
	dec b                                            ; $55ad: $05
	ldh a, [rAUD3LEVEL]                              ; $55ae: $f0 $1c
	ld [hl+], a                                      ; $55b0: $22
	dec c                                            ; $55b1: $0d
	ldh a, [$f6]                                     ; $55b2: $f0 $f6
	inc hl                                           ; $55b4: $23
	cp $e8                                           ; $55b5: $fe $e8
	ld a, h                                          ; $55b7: $7c
	inc h                                            ; $55b8: $24
	ld b, $e8                                        ; $55b9: $06 $e8
	ld a, [hl]                                       ; $55bb: $7e
	inc h                                            ; $55bc: $24
	or $f0                                           ; $55bd: $f6 $f0
	inc h                                            ; $55bf: $24
	ld [hl+], a                                      ; $55c0: $22
	cp $f0                                           ; $55c1: $fe $f0
	ret nz                                           ; $55c3: $c0

	ld [hl+], a                                      ; $55c4: $22
	ld b, $f0                                        ; $55c5: $06 $f0
	jp nz, $0e22                                     ; $55c7: $c2 $22 $0e

	db $ed                                           ; $55ca: $ed
	ld hl, sp+$22                                    ; $55cb: $f8 $22
	ld d, $ed                                        ; $55cd: $16 $ed
	ld a, [$fe23]                                    ; $55cf: $fa $23 $fe
	add sp, -$3c                                     ; $55d2: $e8 $c4
	inc h                                            ; $55d4: $24
	ld b, $e8                                        ; $55d5: $06 $e8
	add $24                                          ; $55d7: $c6 $24
	or $f0                                           ; $55d9: $f6 $f0
	ld l, $22                                        ; $55db: $2e $22
	cp $f0                                           ; $55dd: $fe $f0
	ret z                                            ; $55df: $c8

	ld [hl+], a                                      ; $55e0: $22
	ld b, $f0                                        ; $55e1: $06 $f0
	jp z, $0e22                                      ; $55e3: $ca $22 $0e

	xor $f8                                          ; $55e6: $ee $f8
	ld [hl+], a                                      ; $55e8: $22
	ld d, $ee                                        ; $55e9: $16 $ee
	ld a, [$fe23]                                    ; $55eb: $fa $23 $fe
	add sp, -$3c                                     ; $55ee: $e8 $c4
	inc h                                            ; $55f0: $24
	ld b, $e8                                        ; $55f1: $06 $e8
	add $24                                          ; $55f3: $c6 $24
	or $f0                                           ; $55f5: $f6 $f0
	inc [hl]                                         ; $55f7: $34
	ld [hl+], a                                      ; $55f8: $22
	cp $f0                                           ; $55f9: $fe $f0
	call z, $0622                                    ; $55fb: $cc $22 $06
	ldh a, [$ca]                                     ; $55fe: $f0 $ca
	ld [hl+], a                                      ; $5600: $22
	ld c, $ee                                        ; $5601: $0e $ee
	ld hl, sp+$22                                    ; $5603: $f8 $22
	ld d, $ee                                        ; $5605: $16 $ee
	ld a, [$fe23]                                    ; $5607: $fa $23 $fe
	add sp, -$3c                                     ; $560a: $e8 $c4
	inc h                                            ; $560c: $24
	ld b, $e8                                        ; $560d: $06 $e8
	add $24                                          ; $560f: $c6 $24
	or $f0                                           ; $5611: $f6 $f0
	inc [hl]                                         ; $5613: $34
	ld [hl+], a                                      ; $5614: $22
	cp $f0                                           ; $5615: $fe $f0
	adc $22                                          ; $5617: $ce $22
	ld b, $f0                                        ; $5619: $06 $f0
	jp z, $0e22                                      ; $561b: $ca $22 $0e

	xor $f8                                          ; $561e: $ee $f8
	ld [hl+], a                                      ; $5620: $22
	ld d, $ee                                        ; $5621: $16 $ee
	ld a, [$f823]                                    ; $5623: $fa $23 $f8
	add sp, -$30                                     ; $5626: $e8 $d0
	inc h                                            ; $5628: $24
	nop                                              ; $5629: $00
	add sp, -$2e                                     ; $562a: $e8 $d2
	inc h                                            ; $562c: $24
	ld hl, sp-$10                                    ; $562d: $f8 $f0
	call nc, $0022                                   ; $562f: $d4 $22 $00
	ldh a, [$d6]                                     ; $5632: $f0 $d6
	ld [hl+], a                                      ; $5634: $22
	ld [$42f0], sp                                   ; $5635: $08 $f0 $42
	ld [hl+], a                                      ; $5638: $22
	db $10                                           ; $5639: $10
	db $ec                                           ; $563a: $ec
	db $f4                                           ; $563b: $f4
	inc hl                                           ; $563c: $23
	ld hl, sp-$18                                    ; $563d: $f8 $e8
	ret c                                            ; $563f: $d8

	inc h                                            ; $5640: $24
	nop                                              ; $5641: $00
	add sp, -$26                                     ; $5642: $e8 $da
	inc h                                            ; $5644: $24
	ld hl, sp-$10                                    ; $5645: $f8 $f0
	call c, $0022                                    ; $5647: $dc $22 $00
	ldh a, [$de]                                     ; $564a: $f0 $de
	ld [hl+], a                                      ; $564c: $22
	ld [$4cf0], sp                                   ; $564d: $08 $f0 $4c
	ld [hl+], a                                      ; $5650: $22
	db $10                                           ; $5651: $10
	db $ed                                           ; $5652: $ed
	db $f4                                           ; $5653: $f4
	inc hl                                           ; $5654: $23
	ld hl, sp-$18                                    ; $5655: $f8 $e8
	ret c                                            ; $5657: $d8

	inc h                                            ; $5658: $24
	nop                                              ; $5659: $00
	add sp, -$26                                     ; $565a: $e8 $da
	inc h                                            ; $565c: $24
	ld hl, sp-$10                                    ; $565d: $f8 $f0
	ldh [rAUD4POLY], a                               ; $565f: $e0 $22
	nop                                              ; $5661: $00
	ldh a, [$e2]                                     ; $5662: $f0 $e2
	ld [hl+], a                                      ; $5664: $22
	ld [$4cf0], sp                                   ; $5665: $08 $f0 $4c
	ld [hl+], a                                      ; $5668: $22
	db $10                                           ; $5669: $10
	db $ed                                           ; $566a: $ed
	db $f4                                           ; $566b: $f4
	inc hl                                           ; $566c: $23
	ld hl, sp-$18                                    ; $566d: $f8 $e8
	ret c                                            ; $566f: $d8

	inc h                                            ; $5670: $24
	nop                                              ; $5671: $00
	add sp, -$26                                     ; $5672: $e8 $da
	inc h                                            ; $5674: $24
	ld hl, sp-$10                                    ; $5675: $f8 $f0
	ldh [rAUD4POLY], a                               ; $5677: $e0 $22
	nop                                              ; $5679: $00
	ldh a, [$e4]                                     ; $567a: $f0 $e4
	ld [hl+], a                                      ; $567c: $22
	ld [$4cf0], sp                                   ; $567d: $08 $f0 $4c
	ld [hl+], a                                      ; $5680: $22
	db $10                                           ; $5681: $10
	db $ed                                           ; $5682: $ed
	db $f4                                           ; $5683: $f4
	inc hl                                           ; $5684: $23
	ld hl, sp-$18                                    ; $5685: $f8 $e8
	and $24                                          ; $5687: $e6 $24
	nop                                              ; $5689: $00
	add sp, -$18                                     ; $568a: $e8 $e8
	inc h                                            ; $568c: $24
	ld hl, sp-$10                                    ; $568d: $f8 $f0
	ld e, b                                          ; $568f: $58
	ld [hl+], a                                      ; $5690: $22
	nop                                              ; $5691: $00
	ldh a, [$5a]                                     ; $5692: $f0 $5a
	ld [hl+], a                                      ; $5694: $22
	ld [$4cf0], sp                                   ; $5695: $08 $f0 $4c
	ld [hl+], a                                      ; $5698: $22
	db $10                                           ; $5699: $10
	db $ed                                           ; $569a: $ed
	db $f4                                           ; $569b: $f4
	inc hl                                           ; $569c: $23
	cp $e8                                           ; $569d: $fe $e8
	ld [$0624], a                                    ; $569f: $ea $24 $06
	add sp, -$14                                     ; $56a2: $e8 $ec
	inc h                                            ; $56a4: $24
	or $f0                                           ; $56a5: $f6 $f0
	inc h                                            ; $56a7: $24
	ld [hl+], a                                      ; $56a8: $22
	cp $f0                                           ; $56a9: $fe $f0
	xor $22                                          ; $56ab: $ee $22
	ld b, $f0                                        ; $56ad: $06 $f0
	ldh a, [rAUD4POLY]                               ; $56af: $f0 $22
	ld c, $ed                                        ; $56b1: $0e $ed
	ld hl, sp+$22                                    ; $56b3: $f8 $22
	ld d, $ed                                        ; $56b5: $16 $ed
	ld a, [$fd23]                                    ; $56b7: $fa $23 $fd
	add sp, $74                                      ; $56ba: $e8 $74
	inc h                                            ; $56bc: $24
	dec b                                            ; $56bd: $05
	add sp, $76                                      ; $56be: $e8 $76
	inc h                                            ; $56c0: $24
	push af                                          ; $56c1: $f5
	ldh a, [$64]                                     ; $56c2: $f0 $64
	ld [hl+], a                                      ; $56c4: $22
	db $fd                                           ; $56c5: $fd
	ldh a, [$f2]                                     ; $56c6: $f0 $f2
	ld [hl+], a                                      ; $56c8: $22
	dec b                                            ; $56c9: $05
	ldh a, [rAUD3LEVEL]                              ; $56ca: $f0 $1c
	ld [hl+], a                                      ; $56cc: $22
	dec c                                            ; $56cd: $0d
	ldh a, [$f6]                                     ; $56ce: $f0 $f6
	inc hl                                           ; $56d0: $23
	nop                                              ; $56d1: $00
	inc c                                            ; $56d2: $0c
	call c, $0860                                    ; $56d3: $dc $60 $08

jr_00e_56d6:
	inc c                                            ; $56d6: $0c
	jp c, $f860                                      ; $56d7: $da $60 $f8

	inc c                                            ; $56da: $0c
	call c, $f020                                    ; $56db: $dc $20 $f0
	inc c                                            ; $56de: $0c
	jp c, $f821                                      ; $56df: $da $21 $f8

	inc b                                            ; $56e2: $04
	db $e4                                           ; $56e3: $e4
	jr nz, jr_00e_56d6                               ; $56e4: $20 $f0

	inc b                                            ; $56e6: $04
	ldh [c], a                                       ; $56e7: $e2
	ld hl, $0408                                     ; $56e8: $21 $08 $04
	ldh [c], a                                       ; $56eb: $e2
	ld h, b                                          ; $56ec: $60
	nop                                              ; $56ed: $00
	inc b                                            ; $56ee: $04
	db $e4                                           ; $56ef: $e4
	ld h, c                                          ; $56f0: $61
	ld hl, sp+$0c                                    ; $56f1: $f8 $0c
	add sp, $20                                      ; $56f3: $e8 $20
	ldh a, [$0c]                                     ; $56f5: $f0 $0c
	and $21                                          ; $56f7: $e6 $21
	nop                                              ; $56f9: $00
	inc c                                            ; $56fa: $0c
	add sp, $60                                      ; $56fb: $e8 $60
	ld [$e60c], sp                                   ; $56fd: $08 $0c $e6
	ld h, c                                          ; $5700: $61
	ld hl, sp+$10                                    ; $5701: $f8 $10
	ldh [rAUD4LEN], a                                ; $5703: $e0 $20
	ldh a, [rAUD1SWEEP]                              ; $5705: $f0 $10
	sbc $21                                          ; $5707: $de $21
	nop                                              ; $5709: $00
	db $10                                           ; $570a: $10
	ldh [$60], a                                     ; $570b: $e0 $60
	ld [$de10], sp                                   ; $570d: $08 $10 $de
	ld h, c                                          ; $5710: $61
	db $fc                                           ; $5711: $fc
	inc b                                            ; $5712: $04
	ld [$0727], a                                    ; $5713: $ea $27 $07
	ldh a, [$3c]                                     ; $5716: $f0 $3c
	ld [hl+], a                                      ; $5718: $22
	rst $38                                          ; $5719: $ff
	ldh a, [$3a]                                     ; $571a: $f0 $3a
	ld [hl+], a                                      ; $571c: $22
	rst FarCall                                          ; $571d: $f7
	ldh a, [$38]                                     ; $571e: $f0 $38
	ld [hl+], a                                      ; $5720: $22
	rst AddAOntoHL                                          ; $5721: $ef
	ldh a, [$36]                                     ; $5722: $f0 $36
	ld [hl+], a                                      ; $5724: $22
	inc bc                                           ; $5725: $03
	ldh [rHDMA2], a                                  ; $5726: $e0 $52
	ld [hl+], a                                      ; $5728: $22
	ei                                               ; $5729: $fb
	ldh [$50], a                                     ; $572a: $e0 $50
	ld [hl+], a                                      ; $572c: $22
	ld [$04c0], sp                                   ; $572d: $08 $c0 $04
	jr nz, jr_00e_5732                               ; $5730: $20 $00

jr_00e_5732:
	ret nz                                           ; $5732: $c0

	ld [bc], a                                       ; $5733: $02
	jr nz, @-$06                                     ; $5734: $20 $f8

jr_00e_5736:
	ret nz                                           ; $5736: $c0

	nop                                              ; $5737: $00
	jr nz, jr_00e_5742                               ; $5738: $20 $08

jr_00e_573a:
	ret nc                                           ; $573a: $d0

	ld c, h                                          ; $573b: $4c
	jr nz, jr_00e_573e                               ; $573c: $20 $00

jr_00e_573e:
	ret nc                                           ; $573e: $d0

	ld c, d                                          ; $573f: $4a
	jr nz, jr_00e_573a                               ; $5740: $20 $f8

jr_00e_5742:
	ret nc                                           ; $5742: $d0

	ld c, b                                          ; $5743: $48
	jr nz, jr_00e_5736                               ; $5744: $20 $f0

	ret nc                                           ; $5746: $d0

	ld b, [hl]                                       ; $5747: $46
	ld hl, $f004                                     ; $5748: $21 $04 $f0
	ld e, [hl]                                       ; $574b: $5e
	ld [hl+], a                                      ; $574c: $22
	db $fc                                           ; $574d: $fc
	ldh a, [$5c]                                     ; $574e: $f0 $5c
	ld [hl+], a                                      ; $5750: $22
	db $f4                                           ; $5751: $f4
	ldh a, [$36]                                     ; $5752: $f0 $36
	ld [hl+], a                                      ; $5754: $22
	ld [$5ae0], sp                                   ; $5755: $08 $e0 $5a
	ld [hl+], a                                      ; $5758: $22
	nop                                              ; $5759: $00
	ldh [$58], a                                     ; $575a: $e0 $58
	ld [hl+], a                                      ; $575c: $22
	ld hl, sp-$20                                    ; $575d: $f8 $e0
	ld d, [hl]                                       ; $575f: $56
	ld [hl+], a                                      ; $5760: $22
	ld [$4cd0], sp                                   ; $5761: $08 $d0 $4c
	jr nz, jr_00e_5766                               ; $5764: $20 $00

jr_00e_5766:
	ret nc                                           ; $5766: $d0

	ld c, d                                          ; $5767: $4a
	jr nz, @-$06                                     ; $5768: $20 $f8

	ret nc                                           ; $576a: $d0

	ld c, b                                          ; $576b: $48
	jr nz, @-$0e                                     ; $576c: $20 $f0

	ret nc                                           ; $576e: $d0

	ld b, [hl]                                       ; $576f: $46
	jr nz, jr_00e_577a                               ; $5770: $20 $08

jr_00e_5772:
	ret nz                                           ; $5772: $c0

	inc b                                            ; $5773: $04
	jr nz, jr_00e_5776                               ; $5774: $20 $00

jr_00e_5776:
	ret nz                                           ; $5776: $c0

	ld [bc], a                                       ; $5777: $02
	jr nz, jr_00e_5772                               ; $5778: $20 $f8

jr_00e_577a:
	ret nz                                           ; $577a: $c0

	nop                                              ; $577b: $00
	ld hl, $c008                                     ; $577c: $21 $08 $c0
	inc b                                            ; $577f: $04
	jr nz, jr_00e_5782                               ; $5780: $20 $00

jr_00e_5782:
	ret nz                                           ; $5782: $c0

	ld [bc], a                                       ; $5783: $02
	jr nz, @-$06                                     ; $5784: $20 $f8

	ret nz                                           ; $5786: $c0

	nop                                              ; $5787: $00
	jr nz, @+$0a                                     ; $5788: $20 $08

jr_00e_578a:
	ldh [$2a], a                                     ; $578a: $e0 $2a
	ld [hl+], a                                      ; $578c: $22
	nop                                              ; $578d: $00
	ldh [$28], a                                     ; $578e: $e0 $28
	ld [hl+], a                                      ; $5790: $22
	ld hl, sp-$20                                    ; $5791: $f8 $e0
	ld h, $22                                        ; $5793: $26 $22
	ld [$0cd0], sp                                   ; $5795: $08 $d0 $0c
	jr nz, jr_00e_578a                               ; $5798: $20 $f0

	ret nc                                           ; $579a: $d0

	ld b, $20                                        ; $579b: $06 $20
	ei                                               ; $579d: $fb

jr_00e_579e:
	ret nc                                           ; $579e: $d0

	ld [de], a                                       ; $579f: $12
	ld [hl+], a                                      ; $57a0: $22
	nop                                              ; $57a1: $00
	ret nc                                           ; $57a2: $d0

	db $10                                           ; $57a3: $10
	jr nz, jr_00e_579e                               ; $57a4: $20 $f8

	ret nc                                           ; $57a6: $d0

	ld c, $20                                        ; $57a7: $0e $20
	ld [$64f0], sp                                   ; $57a9: $08 $f0 $64
	ld [hl+], a                                      ; $57ac: $22
	nop                                              ; $57ad: $00
	ldh a, [$62]                                     ; $57ae: $f0 $62
	ld [hl+], a                                      ; $57b0: $22
	ld hl, sp-$10                                    ; $57b1: $f8 $f0
	ld h, b                                          ; $57b3: $60
	inc hl                                           ; $57b4: $23
	ld [$04c0], sp                                   ; $57b5: $08 $c0 $04
	jr nz, jr_00e_57ba                               ; $57b8: $20 $00

jr_00e_57ba:
	ret nz                                           ; $57ba: $c0

jr_00e_57bb:
	ld [bc], a                                       ; $57bb: $02
	jr nz, @-$06                                     ; $57bc: $20 $f8

	ret nz                                           ; $57be: $c0

	nop                                              ; $57bf: $00
	jr nz, jr_00e_57bb                               ; $57c0: $20 $f9

	ret nc                                           ; $57c2: $d0

	inc d                                            ; $57c3: $14
	ld [hl+], a                                      ; $57c4: $22
	ld hl, sp-$20                                    ; $57c5: $f8 $e0
	ld h, $22                                        ; $57c7: $26 $22
	ld [$0cd0], sp                                   ; $57c9: $08 $d0 $0c
	jr nz, jr_00e_57ce                               ; $57cc: $20 $00

jr_00e_57ce:
	ret nc                                           ; $57ce: $d0

	ld a, [bc]                                       ; $57cf: $0a
	jr nz, @-$06                                     ; $57d0: $20 $f8

	ret nc                                           ; $57d2: $d0

	ld [$f020], sp                                   ; $57d3: $08 $20 $f0
	ret nc                                           ; $57d6: $d0

	ld b, $20                                        ; $57d7: $06 $20
	ld [$2ee0], sp                                   ; $57d9: $08 $e0 $2e
	ld [hl+], a                                      ; $57dc: $22
	nop                                              ; $57dd: $00
	ldh [$2c], a                                     ; $57de: $e0 $2c
	ld [hl+], a                                      ; $57e0: $22
	ld [$64f0], sp                                   ; $57e1: $08 $f0 $64
	ld [hl+], a                                      ; $57e4: $22
	nop                                              ; $57e5: $00
	ldh a, [$62]                                     ; $57e6: $f0 $62
	ld [hl+], a                                      ; $57e8: $22
	ld hl, sp-$10                                    ; $57e9: $f8 $f0
	ld h, b                                          ; $57eb: $60
	inc hl                                           ; $57ec: $23
	ld [$24c0], sp                                   ; $57ed: $08 $c0 $24
	jr nz, jr_00e_57f2                               ; $57f0: $20 $00

jr_00e_57f2:
	ret nz                                           ; $57f2: $c0

	ld [hl+], a                                      ; $57f3: $22
	jr nz, @-$06                                     ; $57f4: $20 $f8

jr_00e_57f6:
	ret nz                                           ; $57f6: $c0

	jr nz, jr_00e_5819                               ; $57f7: $20 $20

	ld [$1ed0], sp                                   ; $57f9: $08 $d0 $1e
	jr nz, jr_00e_57fe                               ; $57fc: $20 $00

jr_00e_57fe:
	ret nc                                           ; $57fe: $d0

	inc e                                            ; $57ff: $1c
	jr nz, @-$06                                     ; $5800: $20 $f8

	ret nc                                           ; $5802: $d0

	ld a, [de]                                       ; $5803: $1a
	jr nz, jr_00e_57f6                               ; $5804: $20 $f0

	ret nc                                           ; $5806: $d0

	jr jr_00e_5829                                   ; $5807: $18 $20

	ld [$34e0], sp                                   ; $5809: $08 $e0 $34
	ld [hl+], a                                      ; $580c: $22
	nop                                              ; $580d: $00
	ldh [$32], a                                     ; $580e: $e0 $32
	ld [hl+], a                                      ; $5810: $22
	ld hl, sp-$20                                    ; $5811: $f8 $e0
	jr nc, @+$24                                     ; $5813: $30 $22

	ld [$64f0], sp                                   ; $5815: $08 $f0 $64
	ld [hl+], a                                      ; $5818: $22

jr_00e_5819:
	nop                                              ; $5819: $00
	ldh a, [$62]                                     ; $581a: $f0 $62
	ld [hl+], a                                      ; $581c: $22
	ld hl, sp-$10                                    ; $581d: $f8 $f0
	ld h, b                                          ; $581f: $60
	inc hl                                           ; $5820: $23
	ldh a, [$c0]                                     ; $5821: $f0 $c0
	ld b, b                                          ; $5823: $40
	jr nz, @+$0a                                     ; $5824: $20 $08

	ldh a, [$64]                                     ; $5826: $f0 $64
	ld [hl+], a                                      ; $5828: $22

jr_00e_5829:
	nop                                              ; $5829: $00
	ldh a, [$62]                                     ; $582a: $f0 $62
	ld [hl+], a                                      ; $582c: $22
	ld hl, sp-$10                                    ; $582d: $f8 $f0
	ld h, b                                          ; $582f: $60
	ld [hl+], a                                      ; $5830: $22
	ld [$34e0], sp                                   ; $5831: $08 $e0 $34
	ld [hl+], a                                      ; $5834: $22
	nop                                              ; $5835: $00
	ldh [$32], a                                     ; $5836: $e0 $32
	ld [hl+], a                                      ; $5838: $22
	ld hl, sp-$20                                    ; $5839: $f8 $e0
	jr nc, @+$24                                     ; $583b: $30 $22

	ld [$24c0], sp                                   ; $583d: $08 $c0 $24
	jr nz, jr_00e_584a                               ; $5840: $20 $08

jr_00e_5842:
	ret nc                                           ; $5842: $d0

	ld e, $20                                        ; $5843: $1e $20
	nop                                              ; $5845: $00
	ret nc                                           ; $5846: $d0

	inc e                                            ; $5847: $1c
	jr nz, jr_00e_5842                               ; $5848: $20 $f8

jr_00e_584a:
	ret nc                                           ; $584a: $d0

	ld a, [de]                                       ; $584b: $1a
	jr nz, @-$0e                                     ; $584c: $20 $f0

jr_00e_584e:
	ret nc                                           ; $584e: $d0

	jr jr_00e_5871                                   ; $584f: $18 $20

	nop                                              ; $5851: $00
	ret nz                                           ; $5852: $c0

	ld [hl+], a                                      ; $5853: $22
	jr nz, jr_00e_584e                               ; $5854: $20 $f8

	ret nz                                           ; $5856: $c0

	jr nz, jr_00e_587a                               ; $5857: $20 $21

	ldh a, [$c0]                                     ; $5859: $f0 $c0
	ld b, d                                          ; $585b: $42
	jr nz, @+$0a                                     ; $585c: $20 $08

	ldh a, [$64]                                     ; $585e: $f0 $64
	ld [hl+], a                                      ; $5860: $22
	nop                                              ; $5861: $00
	ldh a, [$62]                                     ; $5862: $f0 $62
	ld [hl+], a                                      ; $5864: $22
	ld hl, sp-$10                                    ; $5865: $f8 $f0
	ld h, b                                          ; $5867: $60
	ld [hl+], a                                      ; $5868: $22
	ld [$34e0], sp                                   ; $5869: $08 $e0 $34
	ld [hl+], a                                      ; $586c: $22
	nop                                              ; $586d: $00
	ldh [$32], a                                     ; $586e: $e0 $32
	ld [hl+], a                                      ; $5870: $22

jr_00e_5871:
	ld hl, sp-$20                                    ; $5871: $f8 $e0
	jr nc, @+$24                                     ; $5873: $30 $22

	ld [$24c0], sp                                   ; $5875: $08 $c0 $24
	jr nz, jr_00e_5882                               ; $5878: $20 $08

jr_00e_587a:
	ret nc                                           ; $587a: $d0

	ld e, $20                                        ; $587b: $1e $20
	nop                                              ; $587d: $00
	ret nc                                           ; $587e: $d0

	inc e                                            ; $587f: $1c
	jr nz, jr_00e_587a                               ; $5880: $20 $f8

jr_00e_5882:
	ret nc                                           ; $5882: $d0

	ld a, [de]                                       ; $5883: $1a
	jr nz, @-$0e                                     ; $5884: $20 $f0

jr_00e_5886:
	ret nc                                           ; $5886: $d0

	jr jr_00e_58a9                                   ; $5887: $18 $20

	nop                                              ; $5889: $00
	ret nz                                           ; $588a: $c0

	ld [hl+], a                                      ; $588b: $22
	jr nz, jr_00e_5886                               ; $588c: $20 $f8

	ret nz                                           ; $588e: $c0

	jr nz, jr_00e_58b2                               ; $588f: $20 $21

	ldh a, [$c0]                                     ; $5891: $f0 $c0
	ld b, h                                          ; $5893: $44
	jr nz, @+$0a                                     ; $5894: $20 $08

	ldh a, [$64]                                     ; $5896: $f0 $64
	ld [hl+], a                                      ; $5898: $22
	nop                                              ; $5899: $00
	ldh a, [$62]                                     ; $589a: $f0 $62
	ld [hl+], a                                      ; $589c: $22
	ld hl, sp-$10                                    ; $589d: $f8 $f0
	ld h, b                                          ; $589f: $60
	ld [hl+], a                                      ; $58a0: $22
	ld [$34e0], sp                                   ; $58a1: $08 $e0 $34
	ld [hl+], a                                      ; $58a4: $22
	nop                                              ; $58a5: $00
	ldh [$32], a                                     ; $58a6: $e0 $32
	ld [hl+], a                                      ; $58a8: $22

jr_00e_58a9:
	ld hl, sp-$20                                    ; $58a9: $f8 $e0
	jr nc, @+$24                                     ; $58ab: $30 $22

	ld [$24c0], sp                                   ; $58ad: $08 $c0 $24
	jr nz, jr_00e_58ba                               ; $58b0: $20 $08

jr_00e_58b2:
	ret nc                                           ; $58b2: $d0

	ld e, $20                                        ; $58b3: $1e $20
	nop                                              ; $58b5: $00
	ret nc                                           ; $58b6: $d0

	inc e                                            ; $58b7: $1c
	jr nz, jr_00e_58b2                               ; $58b8: $20 $f8

jr_00e_58ba:
	ret nc                                           ; $58ba: $d0

	ld a, [de]                                       ; $58bb: $1a
	jr nz, @-$0e                                     ; $58bc: $20 $f0

jr_00e_58be:
	ret nc                                           ; $58be: $d0

	jr jr_00e_58e1                                   ; $58bf: $18 $20

	nop                                              ; $58c1: $00
	ret nz                                           ; $58c2: $c0

	ld [hl+], a                                      ; $58c3: $22
	jr nz, jr_00e_58be                               ; $58c4: $20 $f8

	ret nz                                           ; $58c6: $c0

	jr nz, jr_00e_58ea                               ; $58c7: $20 $21

	rlca                                             ; $58c9: $07
	ldh [$62], a                                     ; $58ca: $e0 $62
	ld [hl+], a                                      ; $58cc: $22
	rlca                                             ; $58cd: $07
	ldh a, [$6c]                                     ; $58ce: $f0 $6c
	jr nz, @+$01                                     ; $58d0: $20 $ff

	ldh a, [rOCPS]                                   ; $58d2: $f0 $6a
	jr nz, jr_00e_58dd                               ; $58d4: $20 $07

	ldh [rWY], a                                     ; $58d6: $e0 $4a
	jr nz, @+$01                                     ; $58d8: $20 $ff

	ldh [rOBP0], a                                   ; $58da: $e0 $48
	ld [hl+], a                                      ; $58dc: $22

jr_00e_58dd:
	rst FarCall                                          ; $58dd: $f7
	ldh [rDMA], a                                    ; $58de: $e0 $46
	ld [hl+], a                                      ; $58e0: $22

jr_00e_58e1:
	ld a, [bc]                                       ; $58e1: $0a
	ret nz                                           ; $58e2: $c0

	inc b                                            ; $58e3: $04

jr_00e_58e4:
	jr nz, jr_00e_58e8                               ; $58e4: $20 $02

	ret nz                                           ; $58e6: $c0

	ld [bc], a                                       ; $58e7: $02

jr_00e_58e8:
	jr nz, jr_00e_58e4                               ; $58e8: $20 $fa

jr_00e_58ea:
	ret nz                                           ; $58ea: $c0

	nop                                              ; $58eb: $00
	jr nz, jr_00e_58f8                               ; $58ec: $20 $0a

	ret nc                                           ; $58ee: $d0

	ld e, $20                                        ; $58ef: $1e $20
	ld [bc], a                                       ; $58f1: $02
	ret nc                                           ; $58f2: $d0

	inc e                                            ; $58f3: $1c
	jr nz, @-$04                                     ; $58f4: $20 $fa

	ret nc                                           ; $58f6: $d0

	ld a, [de]                                       ; $58f7: $1a

jr_00e_58f8:
	ld hl, $f00b                                     ; $58f8: $21 $0b $f0
	ld l, b                                          ; $58fb: $68
	jr nz, @+$05                                     ; $58fc: $20 $03

	ldh a, [$66]                                     ; $58fe: $f0 $66
	jr nz, @-$03                                     ; $5900: $20 $fb

	ldh a, [$64]                                     ; $5902: $f0 $64
	jr nz, jr_00e_5910                               ; $5904: $20 $0a

	ldh [rLY], a                                     ; $5906: $e0 $44
	jr nz, jr_00e_590c                               ; $5908: $20 $02

	ldh [rSCY], a                                    ; $590a: $e0 $42

jr_00e_590c:
	ld [hl+], a                                      ; $590c: $22
	ld a, [$40e0]                                    ; $590d: $fa $e0 $40

jr_00e_5910:
	ld [hl+], a                                      ; $5910: $22
	ld a, [bc]                                       ; $5911: $0a
	ret nc                                           ; $5912: $d0

	ld e, $20                                        ; $5913: $1e $20
	ld [bc], a                                       ; $5915: $02
	ret nc                                           ; $5916: $d0

	inc e                                            ; $5917: $1c
	jr nz, @-$04                                     ; $5918: $20 $fa

	ret nc                                           ; $591a: $d0

	ld a, [de]                                       ; $591b: $1a
	jr nz, jr_00e_5928                               ; $591c: $20 $0a

	ret nz                                           ; $591e: $c0

	inc b                                            ; $591f: $04

jr_00e_5920:
	jr nz, jr_00e_5924                               ; $5920: $20 $02

	ret nz                                           ; $5922: $c0

	ld [bc], a                                       ; $5923: $02

jr_00e_5924:
	jr nz, jr_00e_5920                               ; $5924: $20 $fa

	ret nz                                           ; $5926: $c0

	nop                                              ; $5927: $00

jr_00e_5928:
	ld hl, $c00b                                     ; $5928: $21 $0b $c0
	inc b                                            ; $592b: $04
	jr nz, @+$05                                     ; $592c: $20 $03

	ret nz                                           ; $592e: $c0

	ld [bc], a                                       ; $592f: $02
	jr nz, @-$03                                     ; $5930: $20 $fb

	ret nz                                           ; $5932: $c0

	nop                                              ; $5933: $00
	jr nz, jr_00e_5940                               ; $5934: $20 $0a

	ldh [rAUD2LOW], a                                ; $5936: $e0 $18
	jr nz, jr_00e_5944                               ; $5938: $20 $0a

	ldh a, [$72]                                     ; $593a: $f0 $72

jr_00e_593c:
	jr nz, jr_00e_5940                               ; $593c: $20 $02

	ldh a, [rSVBK]                                   ; $593e: $f0 $70

jr_00e_5940:
	jr nz, jr_00e_593c                               ; $5940: $20 $fa

	ldh a, [$6e]                                     ; $5942: $f0 $6e

jr_00e_5944:
	jr nz, jr_00e_5950                               ; $5944: $20 $0a

	ldh [$50], a                                     ; $5946: $e0 $50
	ld [hl+], a                                      ; $5948: $22
	ld [bc], a                                       ; $5949: $02
	ldh [$4e], a                                     ; $594a: $e0 $4e
	ld [hl+], a                                      ; $594c: $22
	ld a, [$4ce0]                                    ; $594d: $fa $e0 $4c

jr_00e_5950:
	ld [hl+], a                                      ; $5950: $22
	ld a, [bc]                                       ; $5951: $0a
	ret nc                                           ; $5952: $d0

	ld d, $20                                        ; $5953: $16 $20
	ld [bc], a                                       ; $5955: $02
	ret nc                                           ; $5956: $d0

	inc d                                            ; $5957: $14
	jr nz, @-$04                                     ; $5958: $20 $fa

	ret nc                                           ; $595a: $d0

	ld [de], a                                       ; $595b: $12
	ld hl, $d00a                                     ; $595c: $21 $0a $d0
	ld d, $20                                        ; $595f: $16 $20
	ld [bc], a                                       ; $5961: $02
	ret nc                                           ; $5962: $d0

	ld [hl+], a                                      ; $5963: $22
	jr nz, @-$04                                     ; $5964: $20 $fa

	ret nc                                           ; $5966: $d0

	jr nz, @+$22                                     ; $5967: $20 $20

	ld a, [bc]                                       ; $5969: $0a
	ldh a, [$72]                                     ; $596a: $f0 $72

jr_00e_596c:
	jr nz, jr_00e_5970                               ; $596c: $20 $02

	ldh a, [rSVBK]                                   ; $596e: $f0 $70

jr_00e_5970:
	jr nz, jr_00e_596c                               ; $5970: $20 $fa

	ldh a, [$6e]                                     ; $5972: $f0 $6e
	jr nz, jr_00e_5980                               ; $5974: $20 $0a

	ldh [rAUD2LOW], a                                ; $5976: $e0 $18
	jr nz, jr_00e_5984                               ; $5978: $20 $0a

	ldh [$50], a                                     ; $597a: $e0 $50
	ld [hl+], a                                      ; $597c: $22
	ld [bc], a                                       ; $597d: $02
	ldh [$4e], a                                     ; $597e: $e0 $4e

jr_00e_5980:
	ld [hl+], a                                      ; $5980: $22
	ld a, [$4ce0]                                    ; $5981: $fa $e0 $4c

jr_00e_5984:
	ld [hl+], a                                      ; $5984: $22
	dec bc                                           ; $5985: $0b
	ret nz                                           ; $5986: $c0

	inc b                                            ; $5987: $04
	jr nz, @+$05                                     ; $5988: $20 $03

	ret nz                                           ; $598a: $c0

	ld [bc], a                                       ; $598b: $02
	jr nz, @-$03                                     ; $598c: $20 $fb

	ret nz                                           ; $598e: $c0

	nop                                              ; $598f: $00
	ld hl, $d002                                     ; $5990: $21 $02 $d0
	ld h, $20                                        ; $5993: $26 $20
	ld a, [$24d0]                                    ; $5995: $fa $d0 $24
	jr nz, jr_00e_59a4                               ; $5998: $20 $0a

	ldh a, [$72]                                     ; $599a: $f0 $72

jr_00e_599c:
	jr nz, jr_00e_59a0                               ; $599c: $20 $02

	ldh a, [rSVBK]                                   ; $599e: $f0 $70

jr_00e_59a0:
	jr nz, jr_00e_599c                               ; $59a0: $20 $fa

	ldh a, [$6e]                                     ; $59a2: $f0 $6e

jr_00e_59a4:
	jr nz, jr_00e_59b0                               ; $59a4: $20 $0a

	ldh [rAUD2LOW], a                                ; $59a6: $e0 $18
	jr nz, jr_00e_59b4                               ; $59a8: $20 $0a

	ldh [$50], a                                     ; $59aa: $e0 $50
	ld [hl+], a                                      ; $59ac: $22
	ld [bc], a                                       ; $59ad: $02
	ldh [$4e], a                                     ; $59ae: $e0 $4e

jr_00e_59b0:
	ld [hl+], a                                      ; $59b0: $22
	ld a, [$4ce0]                                    ; $59b1: $fa $e0 $4c

jr_00e_59b4:
	ld [hl+], a                                      ; $59b4: $22
	ld a, [bc]                                       ; $59b5: $0a
	ret nc                                           ; $59b6: $d0

	ld d, $20                                        ; $59b7: $16 $20
	dec bc                                           ; $59b9: $0b
	ret nz                                           ; $59ba: $c0

	inc b                                            ; $59bb: $04
	jr nz, @+$05                                     ; $59bc: $20 $03

	ret nz                                           ; $59be: $c0

	ld [bc], a                                       ; $59bf: $02
	jr nz, @-$03                                     ; $59c0: $20 $fb

	ret nz                                           ; $59c2: $c0

	nop                                              ; $59c3: $00
	ld hl, $e00a                                     ; $59c4: $21 $0a $e0
	jr c, @+$22                                      ; $59c7: $38 $20

	ld a, [bc]                                       ; $59c9: $0a
	ldh [rRP], a                                     ; $59ca: $e0 $56
	ld [hl+], a                                      ; $59cc: $22
	ld a, [$52e0]                                    ; $59cd: $fa $e0 $52
	ld [hl+], a                                      ; $59d0: $22
	ld a, [bc]                                       ; $59d1: $0a
	ret nz                                           ; $59d2: $c0

	ld a, [bc]                                       ; $59d3: $0a
	jr nz, @+$04                                     ; $59d4: $20 $02

	ret nz                                           ; $59d6: $c0

	ld [$fa20], sp                                   ; $59d7: $08 $20 $fa
	ret nz                                           ; $59da: $c0

	ld b, $20                                        ; $59db: $06 $20
	ld a, [bc]                                       ; $59dd: $0a
	ret nc                                           ; $59de: $d0

	ld l, $20                                        ; $59df: $2e $20
	ld [bc], a                                       ; $59e1: $02
	ret nc                                           ; $59e2: $d0

	inc l                                            ; $59e3: $2c
	jr nz, @-$04                                     ; $59e4: $20 $fa

	ret nc                                           ; $59e6: $d0

	ld a, [hl+]                                      ; $59e7: $2a
	jr nz, @-$0c                                     ; $59e8: $20 $f2

	ret nc                                           ; $59ea: $d0

	jr z, @+$22                                      ; $59eb: $28 $20

	ld a, [bc]                                       ; $59ed: $0a
	ldh a, [$72]                                     ; $59ee: $f0 $72

jr_00e_59f0:
	jr nz, jr_00e_59f4                               ; $59f0: $20 $02

	ldh a, [rSVBK]                                   ; $59f2: $f0 $70

jr_00e_59f4:
	jr nz, jr_00e_59f0                               ; $59f4: $20 $fa

	ldh a, [$6e]                                     ; $59f6: $f0 $6e
	jr nz, jr_00e_59fc                               ; $59f8: $20 $02

	ldh [$4e], a                                     ; $59fa: $e0 $4e

jr_00e_59fc:
	inc hl                                           ; $59fc: $23
	ld a, [bc]                                       ; $59fd: $0a
	ldh [$5c], a                                     ; $59fe: $e0 $5c

jr_00e_5a00:
	ld [hl+], a                                      ; $5a00: $22
	ld a, [bc]                                       ; $5a01: $0a
	ret nz                                           ; $5a02: $c0

	db $10                                           ; $5a03: $10
	jr nz, @+$04                                     ; $5a04: $20 $02

	ret nz                                           ; $5a06: $c0

	ld c, $20                                        ; $5a07: $0e $20
	ld a, [$0cc0]                                    ; $5a09: $fa $c0 $0c

jr_00e_5a0c:
	jr nz, jr_00e_5a00                               ; $5a0c: $20 $f2

	ldh [$58], a                                     ; $5a0e: $e0 $58
	jr nz, jr_00e_5a0c                               ; $5a10: $20 $fa

	ldh [$5a], a                                     ; $5a12: $e0 $5a

jr_00e_5a14:
	ld [hl+], a                                      ; $5a14: $22
	ld a, [bc]                                       ; $5a15: $0a
	ret nc                                           ; $5a16: $d0

	ld [hl], $20                                     ; $5a17: $36 $20
	ld [bc], a                                       ; $5a19: $02
	ret nc                                           ; $5a1a: $d0

	inc [hl]                                         ; $5a1b: $34
	jr nz, @-$04                                     ; $5a1c: $20 $fa

	ret nc                                           ; $5a1e: $d0

	ld [hl-], a                                      ; $5a1f: $32
	jr nz, jr_00e_5a14                               ; $5a20: $20 $f2

	ret nc                                           ; $5a22: $d0

	jr nc, @+$22                                     ; $5a23: $30 $20

	ld a, [bc]                                       ; $5a25: $0a
	ldh a, [$72]                                     ; $5a26: $f0 $72

jr_00e_5a28:
	jr nz, jr_00e_5a2c                               ; $5a28: $20 $02

	ldh a, [rSVBK]                                   ; $5a2a: $f0 $70

jr_00e_5a2c:
	jr nz, jr_00e_5a28                               ; $5a2c: $20 $fa

	ldh a, [$6e]                                     ; $5a2e: $f0 $6e
	jr nz, jr_00e_5a34                               ; $5a30: $20 $02

	ldh [$4e], a                                     ; $5a32: $e0 $4e

jr_00e_5a34:
	inc hl                                           ; $5a34: $23
	ld a, [bc]                                       ; $5a35: $0a
	ldh [$60], a                                     ; $5a36: $e0 $60
	ld [hl+], a                                      ; $5a38: $22
	ld a, [$5ee0]                                    ; $5a39: $fa $e0 $5e
	ld [hl+], a                                      ; $5a3c: $22
	dec bc                                           ; $5a3d: $0b
	ret nc                                           ; $5a3e: $d0

	ld a, $20                                        ; $5a3f: $3e $20

jr_00e_5a41:
	inc bc                                           ; $5a41: $03
	ret nc                                           ; $5a42: $d0

	inc a                                            ; $5a43: $3c
	jr nz, jr_00e_5a41                               ; $5a44: $20 $fb

	ret nc                                           ; $5a46: $d0

	ld a, [hl-]                                      ; $5a47: $3a
	jr nz, jr_00e_5a54                               ; $5a48: $20 $0a

	ldh a, [$72]                                     ; $5a4a: $f0 $72

jr_00e_5a4c:
	jr nz, jr_00e_5a50                               ; $5a4c: $20 $02

	ldh a, [rSVBK]                                   ; $5a4e: $f0 $70

jr_00e_5a50:
	jr nz, jr_00e_5a4c                               ; $5a50: $20 $fa

	ldh a, [$6e]                                     ; $5a52: $f0 $6e

jr_00e_5a54:
	jr nz, jr_00e_5a58                               ; $5a54: $20 $02

	ldh [$4e], a                                     ; $5a56: $e0 $4e

jr_00e_5a58:
	ld [hl+], a                                      ; $5a58: $22
	ld a, [bc]                                       ; $5a59: $0a
	ret nz                                           ; $5a5a: $c0

	ld a, [bc]                                       ; $5a5b: $0a
	jr nz, @+$04                                     ; $5a5c: $20 $02

	ret nz                                           ; $5a5e: $c0

	ld [$fa20], sp                                   ; $5a5f: $08 $20 $fa
	ret nz                                           ; $5a62: $c0

	ld b, $21                                        ; $5a63: $06 $21
	ld [$38f0], sp                                   ; $5a65: $08 $f0 $38
	ld [hl+], a                                      ; $5a68: $22
	nop                                              ; $5a69: $00
	ldh a, [$36]                                     ; $5a6a: $f0 $36
	ld [hl+], a                                      ; $5a6c: $22
	ld hl, sp-$10                                    ; $5a6d: $f8 $f0
	inc [hl]                                         ; $5a6f: $34
	ld [hl+], a                                      ; $5a70: $22
	ldh a, [$f0]                                     ; $5a71: $f0 $f0
	ld [hl-], a                                      ; $5a73: $32
	ld [hl+], a                                      ; $5a74: $22
	ld [$30e0], sp                                   ; $5a75: $08 $e0 $30
	ld [hl+], a                                      ; $5a78: $22
	nop                                              ; $5a79: $00
	ldh [$2e], a                                     ; $5a7a: $e0 $2e
	ld [hl+], a                                      ; $5a7c: $22
	ld hl, sp-$20                                    ; $5a7d: $f8 $e0
	inc l                                            ; $5a7f: $2c
	ld [hl+], a                                      ; $5a80: $22
	ld [$04c0], sp                                   ; $5a81: $08 $c0 $04
	jr nz, jr_00e_5a86                               ; $5a84: $20 $00

jr_00e_5a86:
	ret nz                                           ; $5a86: $c0

	ld [bc], a                                       ; $5a87: $02
	jr nz, @-$06                                     ; $5a88: $20 $f8

	ret nz                                           ; $5a8a: $c0

jr_00e_5a8b:
	nop                                              ; $5a8b: $00
	jr nz, jr_00e_5a97                               ; $5a8c: $20 $09

	ret nc                                           ; $5a8e: $d0

jr_00e_5a8f:
	inc d                                            ; $5a8f: $14
	jr nz, jr_00e_5a93                               ; $5a90: $20 $01

	ret nc                                           ; $5a92: $d0

jr_00e_5a93:
	ld [de], a                                       ; $5a93: $12
	jr nz, jr_00e_5a8f                               ; $5a94: $20 $f9

	ret nc                                           ; $5a96: $d0

jr_00e_5a97:
	db $10                                           ; $5a97: $10
	jr nz, jr_00e_5a8b                               ; $5a98: $20 $f1

	ret nc                                           ; $5a9a: $d0

	ld c, $21                                        ; $5a9b: $0e $21
	push af                                          ; $5a9d: $f5
	ldh a, [$32]                                     ; $5a9e: $f0 $32
	ld [hl+], a                                      ; $5aa0: $22
	dec b                                            ; $5aa1: $05
	ldh a, [rRP]                                     ; $5aa2: $f0 $56
	ld [hl+], a                                      ; $5aa4: $22
	db $fd                                           ; $5aa5: $fd
	ldh a, [rHDMA4]                                  ; $5aa6: $f0 $54
	ld [hl+], a                                      ; $5aa8: $22
	dec b                                            ; $5aa9: $05
	ldh [rHDMA2], a                                  ; $5aaa: $e0 $52
	ld [hl+], a                                      ; $5aac: $22
	db $fd                                           ; $5aad: $fd
	ldh [$50], a                                     ; $5aae: $e0 $50
	ld [hl+], a                                      ; $5ab0: $22
	push af                                          ; $5ab1: $f5
	ldh [$4e], a                                     ; $5ab2: $e0 $4e
	ld [hl+], a                                      ; $5ab4: $22
	ld [$04c0], sp                                   ; $5ab5: $08 $c0 $04
	jr nz, jr_00e_5ac3                               ; $5ab8: $20 $09

	ret nc                                           ; $5aba: $d0

jr_00e_5abb:
	inc d                                            ; $5abb: $14
	jr nz, jr_00e_5abf                               ; $5abc: $20 $01

	ret nc                                           ; $5abe: $d0

jr_00e_5abf:
	ld [de], a                                       ; $5abf: $12
	jr nz, jr_00e_5abb                               ; $5ac0: $20 $f9

	ret nc                                           ; $5ac2: $d0

jr_00e_5ac3:
	db $10                                           ; $5ac3: $10
	jr nz, @-$0d                                     ; $5ac4: $20 $f1

jr_00e_5ac6:
	ret nc                                           ; $5ac6: $d0

	ld c, $20                                        ; $5ac7: $0e $20
	nop                                              ; $5ac9: $00
	ret nz                                           ; $5aca: $c0

	ld [bc], a                                       ; $5acb: $02
	jr nz, jr_00e_5ac6                               ; $5acc: $20 $f8

	ret nz                                           ; $5ace: $c0

	nop                                              ; $5acf: $00
	ld hl, $d008                                     ; $5ad0: $21 $08 $d0
	inc c                                            ; $5ad3: $0c
	jr nz, jr_00e_5ad6                               ; $5ad4: $20 $00

jr_00e_5ad6:
	ret nc                                           ; $5ad6: $d0

	ld [$f820], sp                                   ; $5ad7: $08 $20 $f8
	ret nc                                           ; $5ada: $d0

	ld b, $20                                        ; $5adb: $06 $20
	ld [$04c0], sp                                   ; $5add: $08 $c0 $04
	jr nz, jr_00e_5ae2                               ; $5ae0: $20 $00

jr_00e_5ae2:
	ret nz                                           ; $5ae2: $c0

	ld [bc], a                                       ; $5ae3: $02
	jr nz, @-$06                                     ; $5ae4: $20 $f8

	ret nz                                           ; $5ae6: $c0

	nop                                              ; $5ae7: $00
	jr nz, @+$0a                                     ; $5ae8: $20 $08

	ldh a, [$66]                                     ; $5aea: $f0 $66
	ld [hl+], a                                      ; $5aec: $22
	nop                                              ; $5aed: $00
	ldh a, [$64]                                     ; $5aee: $f0 $64
	ld [hl+], a                                      ; $5af0: $22
	ld hl, sp-$10                                    ; $5af1: $f8 $f0
	ld h, d                                          ; $5af3: $62
	ld [hl+], a                                      ; $5af4: $22
	ldh a, [$f0]                                     ; $5af5: $f0 $f0
	ld h, b                                          ; $5af7: $60
	ld [hl+], a                                      ; $5af8: $22
	ld [$4ce0], sp                                   ; $5af9: $08 $e0 $4c
	ld [hl+], a                                      ; $5afc: $22
	nop                                              ; $5afd: $00
	ldh [rWY], a                                     ; $5afe: $e0 $4a
	ld [hl+], a                                      ; $5b00: $22
	ld hl, sp-$20                                    ; $5b01: $f8 $e0
	ld c, b                                          ; $5b03: $48
	inc hl                                           ; $5b04: $23
	nop                                              ; $5b05: $00

jr_00e_5b06:
	ret nc                                           ; $5b06: $d0

	ld a, [bc]                                       ; $5b07: $0a
	jr nz, @+$0a                                     ; $5b08: $20 $08

	ret nc                                           ; $5b0a: $d0

	inc c                                            ; $5b0b: $0c
	jr nz, jr_00e_5b06                               ; $5b0c: $20 $f8

	ret nc                                           ; $5b0e: $d0

	ld b, $20                                        ; $5b0f: $06 $20
	ld [$66f0], sp                                   ; $5b11: $08 $f0 $66
	ld [hl+], a                                      ; $5b14: $22
	nop                                              ; $5b15: $00
	ldh a, [$64]                                     ; $5b16: $f0 $64
	ld [hl+], a                                      ; $5b18: $22
	ld hl, sp-$10                                    ; $5b19: $f8 $f0
	ld h, d                                          ; $5b1b: $62
	ld [hl+], a                                      ; $5b1c: $22
	ldh a, [$f0]                                     ; $5b1d: $f0 $f0
	ld h, b                                          ; $5b1f: $60
	ld [hl+], a                                      ; $5b20: $22
	ld [$4ce0], sp                                   ; $5b21: $08 $e0 $4c
	ld [hl+], a                                      ; $5b24: $22
	nop                                              ; $5b25: $00
	ldh [rWY], a                                     ; $5b26: $e0 $4a
	ld [hl+], a                                      ; $5b28: $22
	ld hl, sp-$20                                    ; $5b29: $f8 $e0
	ld c, b                                          ; $5b2b: $48
	ld [hl+], a                                      ; $5b2c: $22
	ld [$04c0], sp                                   ; $5b2d: $08 $c0 $04
	jr nz, jr_00e_5b32                               ; $5b30: $20 $00

jr_00e_5b32:
	ret nz                                           ; $5b32: $c0

	ld [bc], a                                       ; $5b33: $02
	jr nz, @-$06                                     ; $5b34: $20 $f8

	ret nz                                           ; $5b36: $c0

	nop                                              ; $5b37: $00
	ld hl, $e008                                     ; $5b38: $21 $08 $e0
	ld l, d                                          ; $5b3b: $6a
	ld [hl+], a                                      ; $5b3c: $22
	ld hl, sp-$20                                    ; $5b3d: $f8 $e0
	ld l, b                                          ; $5b3f: $68
	ld [hl+], a                                      ; $5b40: $22
	ld [$66f0], sp                                   ; $5b41: $08 $f0 $66
	ld [hl+], a                                      ; $5b44: $22
	nop                                              ; $5b45: $00
	ldh a, [$64]                                     ; $5b46: $f0 $64
	ld [hl+], a                                      ; $5b48: $22
	ld hl, sp-$10                                    ; $5b49: $f8 $f0
	ld h, d                                          ; $5b4b: $62
	ld [hl+], a                                      ; $5b4c: $22
	ldh a, [$f0]                                     ; $5b4d: $f0 $f0
	ld h, b                                          ; $5b4f: $60
	ld [hl+], a                                      ; $5b50: $22
	ld [$46e0], sp                                   ; $5b51: $08 $e0 $46
	ld [hl+], a                                      ; $5b54: $22
	nop                                              ; $5b55: $00
	ldh [rLY], a                                     ; $5b56: $e0 $44
	ld [hl+], a                                      ; $5b58: $22
	ld hl, sp-$20                                    ; $5b59: $f8 $e0
	ld b, d                                          ; $5b5b: $42
	ld [hl+], a                                      ; $5b5c: $22
	ldh a, [$e0]                                     ; $5b5d: $f0 $e0
	ld b, b                                          ; $5b5f: $40
	ld [hl+], a                                      ; $5b60: $22
	ld [$04c0], sp                                   ; $5b61: $08 $c0 $04
	jr nz, jr_00e_5b66                               ; $5b64: $20 $00

jr_00e_5b66:
	ret nz                                           ; $5b66: $c0

	ld [bc], a                                       ; $5b67: $02
	jr nz, @-$06                                     ; $5b68: $20 $f8

jr_00e_5b6a:
	ret nz                                           ; $5b6a: $c0

	nop                                              ; $5b6b: $00
	jr nz, @+$0a                                     ; $5b6c: $20 $08

	ret nc                                           ; $5b6e: $d0

	ld a, [hl+]                                      ; $5b6f: $2a
	jr nz, jr_00e_5b72                               ; $5b70: $20 $00

jr_00e_5b72:
	ret nc                                           ; $5b72: $d0

	jr z, jr_00e_5b95                                ; $5b73: $28 $20

	ld hl, sp-$30                                    ; $5b75: $f8 $d0
	ld [hl+], a                                      ; $5b77: $22
	jr nz, jr_00e_5b6a                               ; $5b78: $20 $f0

	ret nc                                           ; $5b7a: $d0

	jr nz, @+$23                                     ; $5b7b: $20 $21

	ld hl, sp-$30                                    ; $5b7d: $f8 $d0
	ld h, $20                                        ; $5b7f: $26 $20
	ldh a, [$d0]                                     ; $5b81: $f0 $d0
	inc h                                            ; $5b83: $24
	jr nz, @+$0a                                     ; $5b84: $20 $08

	ldh a, [$66]                                     ; $5b86: $f0 $66
	ld [hl+], a                                      ; $5b88: $22
	nop                                              ; $5b89: $00
	ldh a, [$64]                                     ; $5b8a: $f0 $64
	ld [hl+], a                                      ; $5b8c: $22
	ld hl, sp-$10                                    ; $5b8d: $f8 $f0
	ld h, d                                          ; $5b8f: $62
	ld [hl+], a                                      ; $5b90: $22
	ldh a, [$f0]                                     ; $5b91: $f0 $f0
	ld h, b                                          ; $5b93: $60
	ld [hl+], a                                      ; $5b94: $22

jr_00e_5b95:
	ld [$6ae0], sp                                   ; $5b95: $08 $e0 $6a
	ld [hl+], a                                      ; $5b98: $22
	ld hl, sp-$20                                    ; $5b99: $f8 $e0
	ld l, b                                          ; $5b9b: $68
	ld [hl+], a                                      ; $5b9c: $22
	ld [$46e0], sp                                   ; $5b9d: $08 $e0 $46
	ld [hl+], a                                      ; $5ba0: $22
	nop                                              ; $5ba1: $00
	ldh [rLY], a                                     ; $5ba2: $e0 $44
	ld [hl+], a                                      ; $5ba4: $22
	ld hl, sp-$20                                    ; $5ba5: $f8 $e0
	ld b, d                                          ; $5ba7: $42
	ld [hl+], a                                      ; $5ba8: $22
	ldh a, [$e0]                                     ; $5ba9: $f0 $e0
	ld b, b                                          ; $5bab: $40
	ld [hl+], a                                      ; $5bac: $22
	ld [$04c0], sp                                   ; $5bad: $08 $c0 $04
	jr nz, jr_00e_5bba                               ; $5bb0: $20 $08

	ret nc                                           ; $5bb2: $d0

	ld a, [hl+]                                      ; $5bb3: $2a
	jr nz, jr_00e_5bb6                               ; $5bb4: $20 $00

jr_00e_5bb6:
	ret nc                                           ; $5bb6: $d0

	jr z, jr_00e_5bd9                                ; $5bb7: $28 $20

	nop                                              ; $5bb9: $00

jr_00e_5bba:
	ret nz                                           ; $5bba: $c0

	ld [bc], a                                       ; $5bbb: $02
	jr nz, jr_00e_5bb6                               ; $5bbc: $20 $f8

	ret nz                                           ; $5bbe: $c0

	nop                                              ; $5bbf: $00
	ld hl, $f008                                     ; $5bc0: $21 $08 $f0
	ld e, b                                          ; $5bc3: $58
	ld [hl+], a                                      ; $5bc4: $22
	nop                                              ; $5bc5: $00
	ldh a, [rRP]                                     ; $5bc6: $f0 $56
	ld [hl+], a                                      ; $5bc8: $22
	ld hl, sp-$10                                    ; $5bc9: $f8 $f0
	ld d, h                                          ; $5bcb: $54
	ld [hl+], a                                      ; $5bcc: $22
	ldh a, [$f0]                                     ; $5bcd: $f0 $f0
	ld d, d                                          ; $5bcf: $52
	ld [hl+], a                                      ; $5bd0: $22
	ld [$50e0], sp                                   ; $5bd1: $08 $e0 $50
	ld [hl+], a                                      ; $5bd4: $22
	nop                                              ; $5bd5: $00
	ldh [$4e], a                                     ; $5bd6: $e0 $4e
	ld [hl+], a                                      ; $5bd8: $22

jr_00e_5bd9:
	ld hl, sp-$20                                    ; $5bd9: $f8 $e0
	ld c, h                                          ; $5bdb: $4c
	ld [hl+], a                                      ; $5bdc: $22
	ld [$36d0], sp                                   ; $5bdd: $08 $d0 $36
	jr nz, jr_00e_5be2                               ; $5be0: $20 $00

jr_00e_5be2:
	ret nc                                           ; $5be2: $d0

	inc [hl]                                         ; $5be3: $34
	jr nz, @-$06                                     ; $5be4: $20 $f8

	ret nc                                           ; $5be6: $d0

	ld [hl-], a                                      ; $5be7: $32
	jr nz, @-$0e                                     ; $5be8: $20 $f0

jr_00e_5bea:
	ret nc                                           ; $5bea: $d0

	jr nc, jr_00e_5c0d                               ; $5beb: $30 $20

	ld [$16c0], sp                                   ; $5bed: $08 $c0 $16
	jr nz, jr_00e_5bf2                               ; $5bf0: $20 $00

jr_00e_5bf2:
	ret nz                                           ; $5bf2: $c0

	inc d                                            ; $5bf3: $14
	jr nz, @-$06                                     ; $5bf4: $20 $f8

	ret nz                                           ; $5bf6: $c0

	ld [de], a                                       ; $5bf7: $12
	jr nz, jr_00e_5bea                               ; $5bf8: $20 $f0

	ret nz                                           ; $5bfa: $c0

	db $10                                           ; $5bfb: $10
	ld hl, $e004                                     ; $5bfc: $21 $04 $e0
	ld [hl], b                                       ; $5bff: $70
	ld [hl+], a                                      ; $5c00: $22
	inc b                                            ; $5c01: $04
	ldh a, [$6e]                                     ; $5c02: $f0 $6e
	ld [hl+], a                                      ; $5c04: $22
	db $fc                                           ; $5c05: $fc
	ldh a, [$6c]                                     ; $5c06: $f0 $6c
	ld [hl+], a                                      ; $5c08: $22
	db $f4                                           ; $5c09: $f4
	ldh a, [rHDMA2]                                  ; $5c0a: $f0 $52
	ld [hl+], a                                      ; $5c0c: $22

jr_00e_5c0d:
	inc b                                            ; $5c0d: $04
	ldh [rOCPS], a                                   ; $5c0e: $e0 $6a
	ld [hl+], a                                      ; $5c10: $22
	db $fc                                           ; $5c11: $fc
	ldh [rBCPS], a                                   ; $5c12: $e0 $68
	ld [hl+], a                                      ; $5c14: $22
	db $f4                                           ; $5c15: $f4

jr_00e_5c16:
	ldh [$66], a                                     ; $5c16: $e0 $66
	ld [hl+], a                                      ; $5c18: $22
	ld [$36d0], sp                                   ; $5c19: $08 $d0 $36
	jr nz, jr_00e_5c1e                               ; $5c1c: $20 $00

jr_00e_5c1e:
	ret nc                                           ; $5c1e: $d0

	inc [hl]                                         ; $5c1f: $34
	jr nz, @-$06                                     ; $5c20: $20 $f8

	ret nc                                           ; $5c22: $d0

	ld [hl-], a                                      ; $5c23: $32
	jr nz, jr_00e_5c16                               ; $5c24: $20 $f0

jr_00e_5c26:
	ret nc                                           ; $5c26: $d0

	jr nc, jr_00e_5c49                               ; $5c27: $30 $20

	ld [$16c0], sp                                   ; $5c29: $08 $c0 $16
	jr nz, jr_00e_5c2e                               ; $5c2c: $20 $00

jr_00e_5c2e:
	ret nz                                           ; $5c2e: $c0

	inc d                                            ; $5c2f: $14
	jr nz, @-$06                                     ; $5c30: $20 $f8

	ret nz                                           ; $5c32: $c0

	ld [de], a                                       ; $5c33: $12
	jr nz, jr_00e_5c26                               ; $5c34: $20 $f0

	ret nz                                           ; $5c36: $c0

	db $10                                           ; $5c37: $10
	ld hl, $f008                                     ; $5c38: $21 $08 $f0
	ld h, h                                          ; $5c3b: $64
	ld [hl+], a                                      ; $5c3c: $22
	nop                                              ; $5c3d: $00
	ldh a, [$62]                                     ; $5c3e: $f0 $62
	ld [hl+], a                                      ; $5c40: $22
	ld hl, sp-$10                                    ; $5c41: $f8 $f0
	ld h, b                                          ; $5c43: $60
	ld [hl+], a                                      ; $5c44: $22
	ld [$44e0], sp                                   ; $5c45: $08 $e0 $44
	ld [hl+], a                                      ; $5c48: $22

jr_00e_5c49:
	nop                                              ; $5c49: $00
	ldh [rSCY], a                                    ; $5c4a: $e0 $42
	ld [hl+], a                                      ; $5c4c: $22
	ld hl, sp-$20                                    ; $5c4d: $f8 $e0
	ld b, b                                          ; $5c4f: $40
	ld [hl+], a                                      ; $5c50: $22
	ld [$26d0], sp                                   ; $5c51: $08 $d0 $26
	jr nz, jr_00e_5c56                               ; $5c54: $20 $00

jr_00e_5c56:
	ret nc                                           ; $5c56: $d0

	inc h                                            ; $5c57: $24
	jr nz, @-$06                                     ; $5c58: $20 $f8

	ret nc                                           ; $5c5a: $d0

	ld [hl+], a                                      ; $5c5b: $22
	jr nz, @-$0e                                     ; $5c5c: $20 $f0

jr_00e_5c5e:
	ret nc                                           ; $5c5e: $d0

	jr nz, jr_00e_5c81                               ; $5c5f: $20 $20

	ld [$06c0], sp                                   ; $5c61: $08 $c0 $06
	jr nz, jr_00e_5c66                               ; $5c64: $20 $00

jr_00e_5c66:
	ret nz                                           ; $5c66: $c0

	inc b                                            ; $5c67: $04
	jr nz, @-$06                                     ; $5c68: $20 $f8

	ret nz                                           ; $5c6a: $c0

	ld [bc], a                                       ; $5c6b: $02
	jr nz, jr_00e_5c5e                               ; $5c6c: $20 $f0

	ret nz                                           ; $5c6e: $c0

	nop                                              ; $5c6f: $00
	ld hl, $f008                                     ; $5c70: $21 $08 $f0
	ld h, h                                          ; $5c73: $64
	ld [hl+], a                                      ; $5c74: $22
	nop                                              ; $5c75: $00
	ldh a, [$62]                                     ; $5c76: $f0 $62
	ld [hl+], a                                      ; $5c78: $22
	ld hl, sp-$10                                    ; $5c79: $f8 $f0
	ld h, b                                          ; $5c7b: $60
	ld [hl+], a                                      ; $5c7c: $22
	ld [$4ae0], sp                                   ; $5c7d: $08 $e0 $4a
	ld [hl+], a                                      ; $5c80: $22

jr_00e_5c81:
	nop                                              ; $5c81: $00
	ldh [rOBP0], a                                   ; $5c82: $e0 $48
	ld [hl+], a                                      ; $5c84: $22
	ld hl, sp-$20                                    ; $5c85: $f8 $e0
	ld b, [hl]                                       ; $5c87: $46
	ld [hl+], a                                      ; $5c88: $22
	ld [$2ed0], sp                                   ; $5c89: $08 $d0 $2e
	jr nz, jr_00e_5c8e                               ; $5c8c: $20 $00

jr_00e_5c8e:
	ret nc                                           ; $5c8e: $d0

	inc l                                            ; $5c8f: $2c
	jr nz, @-$06                                     ; $5c90: $20 $f8

	ret nc                                           ; $5c92: $d0

	ld a, [hl+]                                      ; $5c93: $2a
	jr nz, @-$0e                                     ; $5c94: $20 $f0

jr_00e_5c96:
	ret nc                                           ; $5c96: $d0

	jr z, jr_00e_5cb9                                ; $5c97: $28 $20

	ld [$0ec0], sp                                   ; $5c99: $08 $c0 $0e
	jr nz, jr_00e_5c9e                               ; $5c9c: $20 $00

jr_00e_5c9e:
	ret nz                                           ; $5c9e: $c0

	inc c                                            ; $5c9f: $0c
	jr nz, @-$06                                     ; $5ca0: $20 $f8

	ret nz                                           ; $5ca2: $c0

	ld a, [bc]                                       ; $5ca3: $0a
	jr nz, jr_00e_5c96                               ; $5ca4: $20 $f0

	ret nz                                           ; $5ca6: $c0

	ld [$0821], sp                                   ; $5ca7: $08 $21 $08
	ldh a, [$36]                                     ; $5caa: $f0 $36
	ld [hl+], a                                      ; $5cac: $22
	nop                                              ; $5cad: $00
	ldh a, [$34]                                     ; $5cae: $f0 $34
	ld [hl+], a                                      ; $5cb0: $22
	ld hl, sp-$10                                    ; $5cb1: $f8 $f0
	ld [hl-], a                                      ; $5cb3: $32
	ld [hl+], a                                      ; $5cb4: $22
	ld [$30e0], sp                                   ; $5cb5: $08 $e0 $30
	ld [hl+], a                                      ; $5cb8: $22

jr_00e_5cb9:
	nop                                              ; $5cb9: $00
	ldh [$2e], a                                     ; $5cba: $e0 $2e
	ld [hl+], a                                      ; $5cbc: $22
	ld hl, sp-$20                                    ; $5cbd: $f8 $e0
	inc l                                            ; $5cbf: $2c
	ld [hl+], a                                      ; $5cc0: $22
	inc c                                            ; $5cc1: $0c

jr_00e_5cc2:
	ret nc                                           ; $5cc2: $d0

	inc c                                            ; $5cc3: $0c
	jr nz, jr_00e_5cca                               ; $5cc4: $20 $04

	ret nc                                           ; $5cc6: $d0

	ld e, $20                                        ; $5cc7: $1e $20
	db $fc                                           ; $5cc9: $fc

jr_00e_5cca:
	ret nc                                           ; $5cca: $d0

	inc e                                            ; $5ccb: $1c
	jr nz, jr_00e_5cc2                               ; $5ccc: $20 $f4

	ret nc                                           ; $5cce: $d0

	ld c, $20                                        ; $5ccf: $0e $20
	inc c                                            ; $5cd1: $0c
	ret nz                                           ; $5cd2: $c0

	inc b                                            ; $5cd3: $04
	jr nz, jr_00e_5cda                               ; $5cd4: $20 $04

jr_00e_5cd6:
	ret nz                                           ; $5cd6: $c0

	ld [bc], a                                       ; $5cd7: $02
	jr nz, jr_00e_5cd6                               ; $5cd8: $20 $fc

jr_00e_5cda:
	ret nz                                           ; $5cda: $c0

	nop                                              ; $5cdb: $00
	ld hl, $f0f4                                     ; $5cdc: $21 $f4 $f0
	ld [hl-], a                                      ; $5cdf: $32
	ld [hl+], a                                      ; $5ce0: $22
	inc c                                            ; $5ce1: $0c
	ldh a, [$4c]                                     ; $5ce2: $f0 $4c
	ld [hl+], a                                      ; $5ce4: $22
	inc b                                            ; $5ce5: $04
	ldh a, [rWY]                                     ; $5ce6: $f0 $4a
	ld [hl+], a                                      ; $5ce8: $22
	db $fc                                           ; $5ce9: $fc
	ldh a, [rOBP0]                                   ; $5cea: $f0 $48
	ld [hl+], a                                      ; $5cec: $22
	dec bc                                           ; $5ced: $0b
	ldh [rLY], a                                     ; $5cee: $e0 $44
	ld [hl+], a                                      ; $5cf0: $22
	inc bc                                           ; $5cf1: $03
	ldh [rSCY], a                                    ; $5cf2: $e0 $42
	ld [hl+], a                                      ; $5cf4: $22
	ei                                               ; $5cf5: $fb
	ldh [rLCDC], a                                   ; $5cf6: $e0 $40
	ld [hl+], a                                      ; $5cf8: $22
	inc c                                            ; $5cf9: $0c

jr_00e_5cfa:
	ret nc                                           ; $5cfa: $d0

	inc c                                            ; $5cfb: $0c
	jr nz, jr_00e_5d02                               ; $5cfc: $20 $04

	ret nc                                           ; $5cfe: $d0

	ld e, $20                                        ; $5cff: $1e $20
	db $fc                                           ; $5d01: $fc

jr_00e_5d02:
	ret nc                                           ; $5d02: $d0

	inc e                                            ; $5d03: $1c
	jr nz, jr_00e_5cfa                               ; $5d04: $20 $f4

	ret nc                                           ; $5d06: $d0

	ld c, $20                                        ; $5d07: $0e $20
	inc c                                            ; $5d09: $0c
	ret nz                                           ; $5d0a: $c0

	inc b                                            ; $5d0b: $04
	jr nz, jr_00e_5d12                               ; $5d0c: $20 $04

jr_00e_5d0e:
	ret nz                                           ; $5d0e: $c0

	ld [bc], a                                       ; $5d0f: $02
	jr nz, jr_00e_5d0e                               ; $5d10: $20 $fc

jr_00e_5d12:
	ret nz                                           ; $5d12: $c0

	nop                                              ; $5d13: $00
	ld hl, $f10b                                     ; $5d14: $21 $0b $f1
	ld a, $22                                        ; $5d17: $3e $22
	inc bc                                           ; $5d19: $03
	pop af                                           ; $5d1a: $f1
	inc a                                            ; $5d1b: $3c
	ld [hl+], a                                      ; $5d1c: $22
	ei                                               ; $5d1d: $fb
	pop af                                           ; $5d1e: $f1
	ld a, [hl-]                                      ; $5d1f: $3a
	ld [hl+], a                                      ; $5d20: $22
	di                                               ; $5d21: $f3
	pop af                                           ; $5d22: $f1
	jr c, jr_00e_5d47                                ; $5d23: $38 $22

jr_00e_5d25:
	dec bc                                           ; $5d25: $0b
	pop bc                                           ; $5d26: $c1
	inc b                                            ; $5d27: $04
	jr nz, @+$05                                     ; $5d28: $20 $03

	pop bc                                           ; $5d2a: $c1
	ld [bc], a                                       ; $5d2b: $02
	jr nz, @-$03                                     ; $5d2c: $20 $fb

	pop bc                                           ; $5d2e: $c1
	nop                                              ; $5d2f: $00
	jr nz, jr_00e_5d25                               ; $5d30: $20 $f3

	pop de                                           ; $5d32: $d1
	ld c, $20                                        ; $5d33: $0e $20
	ei                                               ; $5d35: $fb
	pop de                                           ; $5d36: $d1
	db $10                                           ; $5d37: $10
	jr nz, jr_00e_5d45                               ; $5d38: $20 $0b

	pop de                                           ; $5d3a: $d1
	inc d                                            ; $5d3b: $14
	jr nz, jr_00e_5d41                               ; $5d3c: $20 $03

	pop de                                           ; $5d3e: $d1
	ld b, $20                                        ; $5d3f: $06 $20

jr_00e_5d41:
	dec bc                                           ; $5d41: $0b
	pop hl                                           ; $5d42: $e1
	inc h                                            ; $5d43: $24
	ld [hl+], a                                      ; $5d44: $22

jr_00e_5d45:
	inc bc                                           ; $5d45: $03
	pop hl                                           ; $5d46: $e1

jr_00e_5d47:
	ld [hl+], a                                      ; $5d47: $22
	ld [hl+], a                                      ; $5d48: $22
	ei                                               ; $5d49: $fb
	pop hl                                           ; $5d4a: $e1
	jr nz, jr_00e_5d70                               ; $5d4b: $20 $23

	ld a, [bc]                                       ; $5d4d: $0a
	pop bc                                           ; $5d4e: $c1
	ld a, [hl+]                                      ; $5d4f: $2a
	jr nz, @+$04                                     ; $5d50: $20 $02

	pop bc                                           ; $5d52: $c1
	jr z, jr_00e_5d75                                ; $5d53: $28 $20

	ld a, [$26c1]                                    ; $5d55: $fa $c1 $26
	jr nz, @+$0c                                     ; $5d58: $20 $0a

	pop de                                           ; $5d5a: $d1
	inc c                                            ; $5d5b: $0c
	jr nz, @+$04                                     ; $5d5c: $20 $02

	pop de                                           ; $5d5e: $d1
	ld [$f220], sp                                   ; $5d5f: $08 $20 $f2
	pop de                                           ; $5d62: $d1
	ld c, $20                                        ; $5d63: $0e $20

jr_00e_5d65:
	ld a, [$46d1]                                    ; $5d65: $fa $d1 $46
	jr nz, jr_00e_5d65                               ; $5d68: $20 $fb

	pop hl                                           ; $5d6a: $e1
	ld d, $22                                        ; $5d6b: $16 $22
	dec bc                                           ; $5d6d: $0b
	pop hl                                           ; $5d6e: $e1
	ld a, [de]                                       ; $5d6f: $1a

jr_00e_5d70:
	ld [hl+], a                                      ; $5d70: $22
	inc bc                                           ; $5d71: $03
	pop hl                                           ; $5d72: $e1
	jr jr_00e_5d97                                   ; $5d73: $18 $22

jr_00e_5d75:
	dec bc                                           ; $5d75: $0b
	pop af                                           ; $5d76: $f1
	ld a, $22                                        ; $5d77: $3e $22
	inc bc                                           ; $5d79: $03
	pop af                                           ; $5d7a: $f1
	inc a                                            ; $5d7b: $3c
	ld [hl+], a                                      ; $5d7c: $22
	ei                                               ; $5d7d: $fb
	pop af                                           ; $5d7e: $f1
	ld a, [hl-]                                      ; $5d7f: $3a
	ld [hl+], a                                      ; $5d80: $22
	di                                               ; $5d81: $f3
	pop af                                           ; $5d82: $f1
	jr c, @+$25                                      ; $5d83: $38 $23

	ld a, [bc]                                       ; $5d85: $0a
	pop de                                           ; $5d86: $d1
	inc c                                            ; $5d87: $0c
	jr nz, jr_00e_5d8c                               ; $5d88: $20 $02

	pop de                                           ; $5d8a: $d1
	ld a, [bc]                                       ; $5d8b: $0a

jr_00e_5d8c:
	jr nz, jr_00e_5d99                               ; $5d8c: $20 $0b

	pop af                                           ; $5d8e: $f1
	ld a, $22                                        ; $5d8f: $3e $22
	inc bc                                           ; $5d91: $03
	pop af                                           ; $5d92: $f1
	inc a                                            ; $5d93: $3c
	ld [hl+], a                                      ; $5d94: $22
	ei                                               ; $5d95: $fb
	pop af                                           ; $5d96: $f1

jr_00e_5d97:
	ld a, [hl-]                                      ; $5d97: $3a
	ld [hl+], a                                      ; $5d98: $22

jr_00e_5d99:
	di                                               ; $5d99: $f3
	pop af                                           ; $5d9a: $f1
	jr c, jr_00e_5dbf                                ; $5d9b: $38 $22

	ei                                               ; $5d9d: $fb
	pop hl                                           ; $5d9e: $e1
	ld d, $22                                        ; $5d9f: $16 $22
	dec bc                                           ; $5da1: $0b
	pop hl                                           ; $5da2: $e1
	ld a, [de]                                       ; $5da3: $1a
	ld [hl+], a                                      ; $5da4: $22
	inc bc                                           ; $5da5: $03
	pop hl                                           ; $5da6: $e1
	jr jr_00e_5dcb                                   ; $5da7: $18 $22

	ldh a, [c]                                       ; $5da9: $f2
	pop de                                           ; $5daa: $d1
	ld c, $20                                        ; $5dab: $0e $20
	ld a, [$46d1]                                    ; $5dad: $fa $d1 $46
	jr nz, jr_00e_5dbc                               ; $5db0: $20 $0a

	pop bc                                           ; $5db2: $c1
	ld a, [hl+]                                      ; $5db3: $2a
	jr nz, @+$04                                     ; $5db4: $20 $02

	pop bc                                           ; $5db6: $c1
	jr z, jr_00e_5dd9                                ; $5db7: $28 $20

	ld a, [$26c1]                                    ; $5db9: $fa $c1 $26

jr_00e_5dbc:
	ld hl, $d103                                     ; $5dbc: $21 $03 $d1

jr_00e_5dbf:
	ld [de], a                                       ; $5dbf: $12
	jr nz, jr_00e_5dcd                               ; $5dc0: $20 $0b

	pop af                                           ; $5dc2: $f1
	ld a, $22                                        ; $5dc3: $3e $22
	inc bc                                           ; $5dc5: $03
	pop af                                           ; $5dc6: $f1
	inc a                                            ; $5dc7: $3c
	ld [hl+], a                                      ; $5dc8: $22
	ei                                               ; $5dc9: $fb
	pop af                                           ; $5dca: $f1

jr_00e_5dcb:
	ld a, [hl-]                                      ; $5dcb: $3a
	ld [hl+], a                                      ; $5dcc: $22

jr_00e_5dcd:
	di                                               ; $5dcd: $f3
	pop af                                           ; $5dce: $f1
	jr c, jr_00e_5df3                                ; $5dcf: $38 $22

	dec bc                                           ; $5dd1: $0b
	pop hl                                           ; $5dd2: $e1
	inc h                                            ; $5dd3: $24
	ld [hl+], a                                      ; $5dd4: $22
	inc bc                                           ; $5dd5: $03
	pop hl                                           ; $5dd6: $e1
	ld [hl+], a                                      ; $5dd7: $22
	ld [hl+], a                                      ; $5dd8: $22

jr_00e_5dd9:
	ei                                               ; $5dd9: $fb
	pop hl                                           ; $5dda: $e1
	jr nz, @+$24                                     ; $5ddb: $20 $22

	di                                               ; $5ddd: $f3
	pop de                                           ; $5dde: $d1
	ld c, $20                                        ; $5ddf: $0e $20
	ei                                               ; $5de1: $fb
	pop de                                           ; $5de2: $d1
	db $10                                           ; $5de3: $10
	jr nz, @+$0d                                     ; $5de4: $20 $0b

	pop de                                           ; $5de6: $d1
	inc d                                            ; $5de7: $14
	jr nz, @+$0d                                     ; $5de8: $20 $0b

	pop bc                                           ; $5dea: $c1
	inc b                                            ; $5deb: $04
	jr nz, @+$05                                     ; $5dec: $20 $03

	pop bc                                           ; $5dee: $c1
	ld [bc], a                                       ; $5def: $02
	jr nz, @-$03                                     ; $5df0: $20 $fb

	pop bc                                           ; $5df2: $c1

jr_00e_5df3:
	nop                                              ; $5df3: $00
	ld hl, $e005                                     ; $5df4: $21 $05 $e0
	inc a                                            ; $5df7: $3c
	ld [hl+], a                                      ; $5df8: $22
	push af                                          ; $5df9: $f5
	ldh [$5e], a                                     ; $5dfa: $e0 $5e
	ld [hl+], a                                      ; $5dfc: $22
	dec b                                            ; $5dfd: $05
	ldh a, [$6e]                                     ; $5dfe: $f0 $6e
	ld [hl+], a                                      ; $5e00: $22
	db $fd                                           ; $5e01: $fd
	ldh a, [$6c]                                     ; $5e02: $f0 $6c
	jr nz, @-$09                                     ; $5e04: $20 $f5

	ldh a, [$4c]                                     ; $5e06: $f0 $4c
	jr nz, @+$0f                                     ; $5e08: $20 $0d

	ldh [$5a], a                                     ; $5e0a: $e0 $5a
	jr nz, @+$07                                     ; $5e0c: $20 $05

	ldh [$58], a                                     ; $5e0e: $e0 $58
	jr nz, @-$01                                     ; $5e10: $20 $fd

	ldh [rRP], a                                     ; $5e12: $e0 $56
	ld [hl+], a                                      ; $5e14: $22
	push af                                          ; $5e15: $f5
	ldh [rHDMA4], a                                  ; $5e16: $e0 $54
	jr nz, jr_00e_5e22                               ; $5e18: $20 $08

jr_00e_5e1a:
	ret nz                                           ; $5e1a: $c0

	inc b                                            ; $5e1b: $04
	jr nz, jr_00e_5e1e                               ; $5e1c: $20 $00

jr_00e_5e1e:
	ret nz                                           ; $5e1e: $c0

	ld [bc], a                                       ; $5e1f: $02
	jr nz, jr_00e_5e1a                               ; $5e20: $20 $f8

jr_00e_5e22:
	ret nz                                           ; $5e22: $c0

	nop                                              ; $5e23: $00
	jr nz, @+$0a                                     ; $5e24: $20 $08

	ret nc                                           ; $5e26: $d0

	jr c, @+$22                                      ; $5e27: $38 $20

	nop                                              ; $5e29: $00
	ret nc                                           ; $5e2a: $d0

	ld [hl], $20                                     ; $5e2b: $36 $20
	ld hl, sp-$30                                    ; $5e2d: $f8 $d0
	inc [hl]                                         ; $5e2f: $34
	ld hl, $e008                                     ; $5e30: $21 $08 $e0
	ld a, $22                                        ; $5e33: $3e $22
	ld hl, sp-$20                                    ; $5e35: $f8 $e0
	ld e, h                                          ; $5e37: $5c
	ld [hl+], a                                      ; $5e38: $22
	ld [$52f0], sp                                   ; $5e39: $08 $f0 $52
	jr nz, jr_00e_5e3e                               ; $5e3c: $20 $00

jr_00e_5e3e:
	ldh a, [$50]                                     ; $5e3e: $f0 $50
	jr nz, @-$06                                     ; $5e40: $20 $f8

	ldh a, [$4e]                                     ; $5e42: $f0 $4e
	jr nz, @-$0e                                     ; $5e44: $20 $f0

	ldh a, [$4c]                                     ; $5e46: $f0 $4c
	jr nz, @+$0a                                     ; $5e48: $20 $08

	ldh [$3a], a                                     ; $5e4a: $e0 $3a
	jr nz, jr_00e_5e4e                               ; $5e4c: $20 $00

jr_00e_5e4e:
	ldh [rAUD3HIGH], a                               ; $5e4e: $e0 $1e
	ld [hl+], a                                      ; $5e50: $22
	ld hl, sp-$20                                    ; $5e51: $f8 $e0
	inc e                                            ; $5e53: $1c
	jr nz, jr_00e_5e5e                               ; $5e54: $20 $08

	ret nz                                           ; $5e56: $c0

	inc b                                            ; $5e57: $04
	jr nz, jr_00e_5e62                               ; $5e58: $20 $08

jr_00e_5e5a:
	ret nc                                           ; $5e5a: $d0

	jr c, jr_00e_5e7d                                ; $5e5b: $38 $20

	nop                                              ; $5e5d: $00

jr_00e_5e5e:
	ret nz                                           ; $5e5e: $c0

	ld [bc], a                                       ; $5e5f: $02
	jr nz, jr_00e_5e5a                               ; $5e60: $20 $f8

jr_00e_5e62:
	ret nz                                           ; $5e62: $c0

	nop                                              ; $5e63: $00
	jr nz, jr_00e_5e66                               ; $5e64: $20 $00

jr_00e_5e66:
	ret nc                                           ; $5e66: $d0

	ld [hl], $20                                     ; $5e67: $36 $20
	ld hl, sp-$30                                    ; $5e69: $f8 $d0
	inc [hl]                                         ; $5e6b: $34
	ld hl, $e0f8                                     ; $5e6c: $21 $f8 $e0
	ld [hl], b                                       ; $5e6f: $70
	ld [hl+], a                                      ; $5e70: $22
	ld [$64f0], sp                                   ; $5e71: $08 $f0 $64
	ld [hl+], a                                      ; $5e74: $22
	nop                                              ; $5e75: $00
	ldh a, [$62]                                     ; $5e76: $f0 $62
	ld [hl+], a                                      ; $5e78: $22
	ld hl, sp-$10                                    ; $5e79: $f8 $f0
	ld h, b                                          ; $5e7b: $60
	ld [hl+], a                                      ; $5e7c: $22

jr_00e_5e7d:
	ld [$44e0], sp                                   ; $5e7d: $08 $e0 $44
	jr nz, jr_00e_5e82                               ; $5e80: $20 $00

jr_00e_5e82:
	ldh [rSCY], a                                    ; $5e82: $e0 $42
	ld [hl+], a                                      ; $5e84: $22
	ld hl, sp-$20                                    ; $5e85: $f8 $e0
	ld b, b                                          ; $5e87: $40
	jr nz, jr_00e_5e92                               ; $5e88: $20 $08

jr_00e_5e8a:
	ret nc                                           ; $5e8a: $d0

	inc h                                            ; $5e8b: $24
	jr nz, jr_00e_5e8e                               ; $5e8c: $20 $00

jr_00e_5e8e:
	ret nc                                           ; $5e8e: $d0

	ld [hl+], a                                      ; $5e8f: $22
	jr nz, jr_00e_5e8a                               ; $5e90: $20 $f8

jr_00e_5e92:
	ret nc                                           ; $5e92: $d0

	jr nz, @+$22                                     ; $5e93: $20 $20

	ld [$04c0], sp                                   ; $5e95: $08 $c0 $04
	jr nz, jr_00e_5e9a                               ; $5e98: $20 $00

jr_00e_5e9a:
	ret nz                                           ; $5e9a: $c0

	ld [bc], a                                       ; $5e9b: $02
	jr nz, @-$06                                     ; $5e9c: $20 $f8

	ret nz                                           ; $5e9e: $c0

	nop                                              ; $5e9f: $00
	ld hl, $e0f8                                     ; $5ea0: $21 $f8 $e0
	ld [hl], d                                       ; $5ea3: $72
	ld [hl+], a                                      ; $5ea4: $22
	ld [$6af0], sp                                   ; $5ea5: $08 $f0 $6a
	ld [hl+], a                                      ; $5ea8: $22
	nop                                              ; $5ea9: $00
	ldh a, [rBCPS]                                   ; $5eaa: $f0 $68
	ld [hl+], a                                      ; $5eac: $22
	ld hl, sp-$10                                    ; $5ead: $f8 $f0
	ld h, [hl]                                       ; $5eaf: $66
	ld [hl+], a                                      ; $5eb0: $22
	ld [$4ae0], sp                                   ; $5eb1: $08 $e0 $4a
	jr nz, jr_00e_5eb6                               ; $5eb4: $20 $00

jr_00e_5eb6:
	ldh [rOBP0], a                                   ; $5eb6: $e0 $48
	ld [hl+], a                                      ; $5eb8: $22
	ld hl, sp-$20                                    ; $5eb9: $f8 $e0
	ld b, [hl]                                       ; $5ebb: $46
	jr nz, @+$0a                                     ; $5ebc: $20 $08

	ret nc                                           ; $5ebe: $d0

	ld a, [hl+]                                      ; $5ebf: $2a
	jr nz, jr_00e_5ec2                               ; $5ec0: $20 $00

jr_00e_5ec2:
	ret nc                                           ; $5ec2: $d0

	jr z, jr_00e_5ee5                                ; $5ec3: $28 $20

	ld hl, sp-$30                                    ; $5ec5: $f8 $d0
	ld h, $20                                        ; $5ec7: $26 $20
	ld [$0ac0], sp                                   ; $5ec9: $08 $c0 $0a
	jr nz, jr_00e_5ece                               ; $5ecc: $20 $00

jr_00e_5ece:
	ret nz                                           ; $5ece: $c0

	ld [$f820], sp                                   ; $5ecf: $08 $20 $f8
	ret nz                                           ; $5ed2: $c0

	ld b, $21                                        ; $5ed3: $06 $21
	ld [$0ac0], sp                                   ; $5ed5: $08 $c0 $0a
	jr nz, jr_00e_5eda                               ; $5ed8: $20 $00

jr_00e_5eda:
	ret nz                                           ; $5eda: $c0

	ld [$f820], sp                                   ; $5edb: $08 $20 $f8
	ret nz                                           ; $5ede: $c0

	ld b, $20                                        ; $5edf: $06 $20
	ld hl, sp-$20                                    ; $5ee1: $f8 $e0
	ld [hl], d                                       ; $5ee3: $72
	ld [hl+], a                                      ; $5ee4: $22

jr_00e_5ee5:
	ld [$6af0], sp                                   ; $5ee5: $08 $f0 $6a
	ld [hl+], a                                      ; $5ee8: $22
	nop                                              ; $5ee9: $00
	ldh a, [rBCPS]                                   ; $5eea: $f0 $68
	ld [hl+], a                                      ; $5eec: $22
	ld hl, sp-$10                                    ; $5eed: $f8 $f0
	ld h, [hl]                                       ; $5eef: $66
	ld [hl+], a                                      ; $5ef0: $22
	ld [$4ae0], sp                                   ; $5ef1: $08 $e0 $4a
	jr nz, jr_00e_5ef6                               ; $5ef4: $20 $00

jr_00e_5ef6:
	ldh [rOBP0], a                                   ; $5ef6: $e0 $48
	ld [hl+], a                                      ; $5ef8: $22
	ld hl, sp-$20                                    ; $5ef9: $f8 $e0
	ld b, [hl]                                       ; $5efb: $46
	jr nz, @+$0a                                     ; $5efc: $20 $08

	ret nc                                           ; $5efe: $d0

	ld a, [hl+]                                      ; $5eff: $2a
	jr nz, jr_00e_5f02                               ; $5f00: $20 $00

jr_00e_5f02:
	ret nc                                           ; $5f02: $d0

	ld c, $20                                        ; $5f03: $0e $20
	ld hl, sp-$30                                    ; $5f05: $f8 $d0
	inc c                                            ; $5f07: $0c
	ld hl, $f008                                     ; $5f08: $21 $08 $f0
	ld l, d                                          ; $5f0b: $6a
	ld [hl+], a                                      ; $5f0c: $22
	nop                                              ; $5f0d: $00
	ldh a, [rBCPS]                                   ; $5f0e: $f0 $68
	ld [hl+], a                                      ; $5f10: $22
	ld hl, sp-$10                                    ; $5f11: $f8 $f0
	ld h, [hl]                                       ; $5f13: $66
	ld [hl+], a                                      ; $5f14: $22
	ld hl, sp-$20                                    ; $5f15: $f8 $e0
	ld [hl-], a                                      ; $5f17: $32
	ld [hl+], a                                      ; $5f18: $22
	ld [$30e0], sp                                   ; $5f19: $08 $e0 $30
	jr nz, jr_00e_5f1e                               ; $5f1c: $20 $00

jr_00e_5f1e:
	ldh [$2e], a                                     ; $5f1e: $e0 $2e
	ld [hl+], a                                      ; $5f20: $22
	ld hl, sp-$20                                    ; $5f21: $f8 $e0
	inc l                                            ; $5f23: $2c
	jr nz, jr_00e_5f2e                               ; $5f24: $20 $08

jr_00e_5f26:
	ret nz                                           ; $5f26: $c0

	inc d                                            ; $5f27: $14
	jr nz, jr_00e_5f2a                               ; $5f28: $20 $00

jr_00e_5f2a:
	ret nz                                           ; $5f2a: $c0

	ld [de], a                                       ; $5f2b: $12
	jr nz, jr_00e_5f26                               ; $5f2c: $20 $f8

jr_00e_5f2e:
	ret nz                                           ; $5f2e: $c0

	db $10                                           ; $5f2f: $10
	jr nz, @+$0a                                     ; $5f30: $20 $08

	ret nc                                           ; $5f32: $d0

	ld a, [de]                                       ; $5f33: $1a
	jr nz, jr_00e_5f36                               ; $5f34: $20 $00

jr_00e_5f36:
	ret nc                                           ; $5f36: $d0

	jr jr_00e_5f59                                   ; $5f37: $18 $20

	ld hl, sp-$30                                    ; $5f39: $f8 $d0
	ld d, $21                                        ; $5f3b: $16 $21
	ld hl, sp-$20                                    ; $5f3d: $f8 $e0
	ld e, $22                                        ; $5f3f: $1e $22
	ld [$52f0], sp                                   ; $5f41: $08 $f0 $52
	ld [hl+], a                                      ; $5f44: $22
	nop                                              ; $5f45: $00
	ldh a, [$50]                                     ; $5f46: $f0 $50
	ld [hl+], a                                      ; $5f48: $22
	ld hl, sp-$10                                    ; $5f49: $f8 $f0
	ld c, [hl]                                       ; $5f4b: $4e
	ld [hl+], a                                      ; $5f4c: $22
	ldh a, [$f0]                                     ; $5f4d: $f0 $f0
	ld c, h                                          ; $5f4f: $4c
	ld [hl+], a                                      ; $5f50: $22
	ld [$30e0], sp                                   ; $5f51: $08 $e0 $30
	jr nz, jr_00e_5f56                               ; $5f54: $20 $00

jr_00e_5f56:
	ldh [$2e], a                                     ; $5f56: $e0 $2e
	ld [hl+], a                                      ; $5f58: $22

jr_00e_5f59:
	ld hl, sp-$20                                    ; $5f59: $f8 $e0
	inc l                                            ; $5f5b: $2c
	jr nz, @+$0a                                     ; $5f5c: $20 $08

	ret nc                                           ; $5f5e: $d0

	jr c, jr_00e_5f81                                ; $5f5f: $38 $20

	nop                                              ; $5f61: $00
	ret nc                                           ; $5f62: $d0

	ld [hl], $20                                     ; $5f63: $36 $20
	ld hl, sp-$30                                    ; $5f65: $f8 $d0
	inc [hl]                                         ; $5f67: $34
	jr nz, @+$0a                                     ; $5f68: $20 $08

	ret nz                                           ; $5f6a: $c0

	jr @+$22                                         ; $5f6b: $18 $20

	nop                                              ; $5f6d: $00
	ret nz                                           ; $5f6e: $c0

	ld d, $20                                        ; $5f6f: $16 $20
	ld hl, sp-$40                                    ; $5f71: $f8 $c0
	inc d                                            ; $5f73: $14
	ld hl, $e004                                     ; $5f74: $21 $04 $e0
	inc e                                            ; $5f77: $1c
	ld [hl+], a                                      ; $5f78: $22
	db $f4                                           ; $5f79: $f4
	ldh a, [$4c]                                     ; $5f7a: $f0 $4c
	ld [hl+], a                                      ; $5f7c: $22
	inc b                                            ; $5f7d: $04
	ldh a, [$5c]                                     ; $5f7e: $f0 $5c
	ld [hl+], a                                      ; $5f80: $22

jr_00e_5f81:
	db $fc                                           ; $5f81: $fc
	ldh a, [$5a]                                     ; $5f82: $f0 $5a
	ld [hl+], a                                      ; $5f84: $22
	inc c                                            ; $5f85: $0c
	ldh [$5e], a                                     ; $5f86: $e0 $5e
	jr nz, jr_00e_5f8e                               ; $5f88: $20 $04

jr_00e_5f8a:
	ldh [$3e], a                                     ; $5f8a: $e0 $3e
	jr nz, jr_00e_5f8a                               ; $5f8c: $20 $fc

jr_00e_5f8e:
	ldh [$3c], a                                     ; $5f8e: $e0 $3c
	ld [hl+], a                                      ; $5f90: $22
	db $f4                                           ; $5f91: $f4
	ldh [$3a], a                                     ; $5f92: $e0 $3a
	jr nz, jr_00e_5f9e                               ; $5f94: $20 $08

	ret nc                                           ; $5f96: $d0

	jr c, jr_00e_5fb9                                ; $5f97: $38 $20

	ld [$18c0], sp                                   ; $5f99: $08 $c0 $18
	jr nz, jr_00e_5f9e                               ; $5f9c: $20 $00

jr_00e_5f9e:
	ret nc                                           ; $5f9e: $d0

	ld [hl], $20                                     ; $5f9f: $36 $20
	ld hl, sp-$30                                    ; $5fa1: $f8 $d0
	inc [hl]                                         ; $5fa3: $34
	jr nz, jr_00e_5fa6                               ; $5fa4: $20 $00

jr_00e_5fa6:
	ret nz                                           ; $5fa6: $c0

	ld d, $20                                        ; $5fa7: $16 $20
	ld hl, sp-$40                                    ; $5fa9: $f8 $c0
	inc d                                            ; $5fab: $14
	ld hl, $e0f8                                     ; $5fac: $21 $f8 $e0
	ld a, [de]                                       ; $5faf: $1a
	ld [hl+], a                                      ; $5fb0: $22
	ld [$58f0], sp                                   ; $5fb1: $08 $f0 $58
	ld [hl+], a                                      ; $5fb4: $22
	nop                                              ; $5fb5: $00
	ldh a, [rRP]                                     ; $5fb6: $f0 $56
	ld [hl+], a                                      ; $5fb8: $22

jr_00e_5fb9:
	ld hl, sp-$10                                    ; $5fb9: $f8 $f0
	ld d, h                                          ; $5fbb: $54
	ld [hl+], a                                      ; $5fbc: $22
	ld [$44e0], sp                                   ; $5fbd: $08 $e0 $44
	jr nz, jr_00e_5fc2                               ; $5fc0: $20 $00

jr_00e_5fc2:
	ldh [rSCY], a                                    ; $5fc2: $e0 $42
	ld [hl+], a                                      ; $5fc4: $22
	ld hl, sp-$20                                    ; $5fc5: $f8 $e0
	ld b, b                                          ; $5fc7: $40
	jr nz, jr_00e_5fd2                               ; $5fc8: $20 $08

jr_00e_5fca:
	ret nc                                           ; $5fca: $d0

	inc h                                            ; $5fcb: $24
	jr nz, jr_00e_5fce                               ; $5fcc: $20 $00

jr_00e_5fce:
	ret nc                                           ; $5fce: $d0

	ld [hl+], a                                      ; $5fcf: $22
	jr nz, jr_00e_5fca                               ; $5fd0: $20 $f8

jr_00e_5fd2:
	ret nc                                           ; $5fd2: $d0

	jr nz, jr_00e_5ff5                               ; $5fd3: $20 $20

	ld [$04c0], sp                                   ; $5fd5: $08 $c0 $04
	jr nz, jr_00e_5fda                               ; $5fd8: $20 $00

jr_00e_5fda:
	ret nz                                           ; $5fda: $c0

	ld [bc], a                                       ; $5fdb: $02
	jr nz, @-$06                                     ; $5fdc: $20 $f8

	ret nz                                           ; $5fde: $c0

	nop                                              ; $5fdf: $00
	ld hl, $d008                                     ; $5fe0: $21 $08 $d0
	inc h                                            ; $5fe3: $24
	jr nz, jr_00e_5fe6                               ; $5fe4: $20 $00

jr_00e_5fe6:
	ret nc                                           ; $5fe6: $d0

	ld [$f820], sp                                   ; $5fe7: $08 $20 $f8
	ret nc                                           ; $5fea: $d0

	ld b, $20                                        ; $5feb: $06 $20
	ld [$58f0], sp                                   ; $5fed: $08 $f0 $58
	ld [hl+], a                                      ; $5ff0: $22
	nop                                              ; $5ff1: $00
	ldh a, [rRP]                                     ; $5ff2: $f0 $56
	ld [hl+], a                                      ; $5ff4: $22

jr_00e_5ff5:
	ld hl, sp-$10                                    ; $5ff5: $f8 $f0
	ld d, h                                          ; $5ff7: $54
	ld [hl+], a                                      ; $5ff8: $22
	ld hl, sp-$20                                    ; $5ff9: $f8 $e0
	ld a, [de]                                       ; $5ffb: $1a
	ld [hl+], a                                      ; $5ffc: $22
	ld [$44e0], sp                                   ; $5ffd: $08 $e0 $44
	jr nz, jr_00e_6002                               ; $6000: $20 $00

jr_00e_6002:
	ldh [rSCY], a                                    ; $6002: $e0 $42
	ld [hl+], a                                      ; $6004: $22
	ld hl, sp-$20                                    ; $6005: $f8 $e0
	ld b, b                                          ; $6007: $40
	jr nz, jr_00e_6012                               ; $6008: $20 $08

jr_00e_600a:
	ret nz                                           ; $600a: $c0

	inc b                                            ; $600b: $04
	jr nz, jr_00e_600e                               ; $600c: $20 $00

jr_00e_600e:
	ret nz                                           ; $600e: $c0

	ld [bc], a                                       ; $600f: $02
	jr nz, jr_00e_600a                               ; $6010: $20 $f8

jr_00e_6012:
	ret nz                                           ; $6012: $c0

	nop                                              ; $6013: $00
	ld hl, $d000                                     ; $6014: $21 $00 $d0
	inc c                                            ; $6017: $0c
	jr nz, jr_00e_6012                               ; $6018: $20 $f8

	ret nc                                           ; $601a: $d0

	ld a, [bc]                                       ; $601b: $0a
	jr nz, @+$0a                                     ; $601c: $20 $08

	ldh a, [$58]                                     ; $601e: $f0 $58
	ld [hl+], a                                      ; $6020: $22
	nop                                              ; $6021: $00
	ldh a, [rRP]                                     ; $6022: $f0 $56
	ld [hl+], a                                      ; $6024: $22
	ld hl, sp-$10                                    ; $6025: $f8 $f0
	ld d, h                                          ; $6027: $54
	ld [hl+], a                                      ; $6028: $22
	ld hl, sp-$20                                    ; $6029: $f8 $e0
	ld a, [de]                                       ; $602b: $1a
	ld [hl+], a                                      ; $602c: $22
	ld [$44e0], sp                                   ; $602d: $08 $e0 $44
	jr nz, jr_00e_6032                               ; $6030: $20 $00

jr_00e_6032:
	ldh [rSCY], a                                    ; $6032: $e0 $42
	ld [hl+], a                                      ; $6034: $22
	ld hl, sp-$20                                    ; $6035: $f8 $e0
	ld b, b                                          ; $6037: $40
	jr nz, jr_00e_6042                               ; $6038: $20 $08

	ret nc                                           ; $603a: $d0

	inc h                                            ; $603b: $24
	jr nz, jr_00e_6046                               ; $603c: $20 $08

jr_00e_603e:
	ret nz                                           ; $603e: $c0

	inc b                                            ; $603f: $04
	jr nz, jr_00e_6042                               ; $6040: $20 $00

jr_00e_6042:
	ret nz                                           ; $6042: $c0

	ld [bc], a                                       ; $6043: $02
	jr nz, jr_00e_603e                               ; $6044: $20 $f8

jr_00e_6046:
	ret nz                                           ; $6046: $c0

	nop                                              ; $6047: $00
	ld hl, $e0f8                                     ; $6048: $21 $f8 $e0
	ld a, [de]                                       ; $604b: $1a
	ld [hl+], a                                      ; $604c: $22
	ld [$4ae0], sp                                   ; $604d: $08 $e0 $4a
	jr nz, jr_00e_6052                               ; $6050: $20 $00

jr_00e_6052:
	ldh [rOBP0], a                                   ; $6052: $e0 $48
	ld [hl+], a                                      ; $6054: $22
	ld hl, sp-$20                                    ; $6055: $f8 $e0
	ld b, [hl]                                       ; $6057: $46
	jr nz, @+$0a                                     ; $6058: $20 $08

	ret nc                                           ; $605a: $d0

	ld a, [hl+]                                      ; $605b: $2a
	jr nz, jr_00e_605e                               ; $605c: $20 $00

jr_00e_605e:
	ret nc                                           ; $605e: $d0

	jr z, jr_00e_6081                                ; $605f: $28 $20

	ld hl, sp-$30                                    ; $6061: $f8 $d0
	ld h, $20                                        ; $6063: $26 $20
	ld [$12c0], sp                                   ; $6065: $08 $c0 $12
	jr nz, jr_00e_606a                               ; $6068: $20 $00

jr_00e_606a:
	ret nz                                           ; $606a: $c0

	db $10                                           ; $606b: $10
	jr nz, @-$06                                     ; $606c: $20 $f8

	ret nz                                           ; $606e: $c0

	ld c, $20                                        ; $606f: $0e $20
	ld [$58f0], sp                                   ; $6071: $08 $f0 $58
	ld [hl+], a                                      ; $6074: $22
	nop                                              ; $6075: $00
	ldh a, [rRP]                                     ; $6076: $f0 $56
	ld [hl+], a                                      ; $6078: $22
	ld hl, sp-$10                                    ; $6079: $f8 $f0
	ld d, h                                          ; $607b: $54
	inc hl                                           ; $607c: $23
	ld [$48f0], sp                                   ; $607d: $08 $f0 $48
	ld [hl+], a                                      ; $6080: $22

jr_00e_6081:
	nop                                              ; $6081: $00
	ldh a, [rDMA]                                    ; $6082: $f0 $46
	ld [hl+], a                                      ; $6084: $22
	ld hl, sp-$10                                    ; $6085: $f8 $f0
	ld b, h                                          ; $6087: $44
	ld [hl+], a                                      ; $6088: $22
	ldh a, [$f0]                                     ; $6089: $f0 $f0
	ld b, d                                          ; $608b: $42
	ld [hl+], a                                      ; $608c: $22
	ld b, $e0                                        ; $608d: $06 $e0
	jr nc, jr_00e_60b3                               ; $608f: $30 $22

	cp $e0                                           ; $6091: $fe $e0
	ld l, $22                                        ; $6093: $2e $22
	or $e0                                           ; $6095: $f6 $e0
	inc l                                            ; $6097: $2c
	ld [hl+], a                                      ; $6098: $22
	ld [$06c0], sp                                   ; $6099: $08 $c0 $06
	jr nz, jr_00e_609e                               ; $609c: $20 $00

jr_00e_609e:
	ret nz                                           ; $609e: $c0

	inc b                                            ; $609f: $04
	jr nz, @-$06                                     ; $60a0: $20 $f8

	ret nz                                           ; $60a2: $c0

	ld [bc], a                                       ; $60a3: $02
	jr nz, @-$0e                                     ; $60a4: $20 $f0

	ret nz                                           ; $60a6: $c0

	nop                                              ; $60a7: $00
	jr nz, jr_00e_60b2                               ; $60a8: $20 $08

jr_00e_60aa:
	ret nc                                           ; $60aa: $d0

	inc e                                            ; $60ab: $1c
	jr nz, jr_00e_60ae                               ; $60ac: $20 $00

jr_00e_60ae:
	ret nc                                           ; $60ae: $d0

	ld a, [de]                                       ; $60af: $1a
	jr nz, jr_00e_60aa                               ; $60b0: $20 $f8

jr_00e_60b2:
	ret nc                                           ; $60b2: $d0

jr_00e_60b3:
	jr @+$22                                         ; $60b3: $18 $20

	ldh a, [$d0]                                     ; $60b5: $f0 $d0
	ld d, $21                                        ; $60b7: $16 $21
	nop                                              ; $60b9: $00
	ldh a, [$4c]                                     ; $60ba: $f0 $4c
	ld [hl+], a                                      ; $60bc: $22
	ld hl, sp-$10                                    ; $60bd: $f8 $f0
	ld c, d                                          ; $60bf: $4a
	ld [hl+], a                                      ; $60c0: $22
	nop                                              ; $60c1: $00
	ldh [$34], a                                     ; $60c2: $e0 $34
	ld [hl+], a                                      ; $60c4: $22
	ld hl, sp-$20                                    ; $60c5: $f8 $e0
	ld [hl-], a                                      ; $60c7: $32
	ld [hl+], a                                      ; $60c8: $22
	ld [$06c0], sp                                   ; $60c9: $08 $c0 $06
	jr nz, jr_00e_60d6                               ; $60cc: $20 $08

	ret nc                                           ; $60ce: $d0

	inc e                                            ; $60cf: $1c
	jr nz, jr_00e_60d2                               ; $60d0: $20 $00

jr_00e_60d2:
	ret nz                                           ; $60d2: $c0

	inc b                                            ; $60d3: $04
	jr nz, jr_00e_60d6                               ; $60d4: $20 $00

jr_00e_60d6:
	ret nc                                           ; $60d6: $d0

	ld a, [de]                                       ; $60d7: $1a
	jr nz, jr_00e_60d2                               ; $60d8: $20 $f8

	ret nc                                           ; $60da: $d0

	jr jr_00e_60fd                                   ; $60db: $18 $20

	ldh a, [$d0]                                     ; $60dd: $f0 $d0
	ld d, $20                                        ; $60df: $16 $20
	ld hl, sp-$40                                    ; $60e1: $f8 $c0
	ld [bc], a                                       ; $60e3: $02
	jr nz, jr_00e_60d6                               ; $60e4: $20 $f0

	ret nz                                           ; $60e6: $c0

	nop                                              ; $60e7: $00
	ld hl, $f008                                     ; $60e8: $21 $08 $f0
	ld d, d                                          ; $60eb: $52
	ld [hl+], a                                      ; $60ec: $22
	nop                                              ; $60ed: $00
	ldh a, [$50]                                     ; $60ee: $f0 $50
	ld [hl+], a                                      ; $60f0: $22
	ld hl, sp-$10                                    ; $60f1: $f8 $f0
	ld c, [hl]                                       ; $60f3: $4e
	ld [hl+], a                                      ; $60f4: $22
	ld [$3ae0], sp                                   ; $60f5: $08 $e0 $3a
	ld [hl+], a                                      ; $60f8: $22
	nop                                              ; $60f9: $00
	ldh [$38], a                                     ; $60fa: $e0 $38
	ld [hl+], a                                      ; $60fc: $22

jr_00e_60fd:
	ld hl, sp-$20                                    ; $60fd: $f8 $e0
	ld [hl], $22                                     ; $60ff: $36 $22
	ld [$0cc0], sp                                   ; $6101: $08 $c0 $0c
	jr nz, jr_00e_6106                               ; $6104: $20 $00

jr_00e_6106:
	ret nz                                           ; $6106: $c0

	ld a, [bc]                                       ; $6107: $0a
	jr nz, @-$06                                     ; $6108: $20 $f8

	ret nz                                           ; $610a: $c0

	ld [$0820], sp                                   ; $610b: $08 $20 $08
	ret nc                                           ; $610e: $d0

	inc e                                            ; $610f: $1c
	jr nz, jr_00e_6112                               ; $6110: $20 $00

jr_00e_6112:
	ret nc                                           ; $6112: $d0

	ld [hl+], a                                      ; $6113: $22
	jr nz, jr_00e_6106                               ; $6114: $20 $f0

	ret nc                                           ; $6116: $d0

	ld e, $20                                        ; $6117: $1e $20
	ld hl, sp-$30                                    ; $6119: $f8 $d0
	jr nz, jr_00e_613e                               ; $611b: $20 $21

	ld [$14c0], sp                                   ; $611d: $08 $c0 $14
	jr nz, jr_00e_6122                               ; $6120: $20 $00

jr_00e_6122:
	ret nz                                           ; $6122: $c0

	ld [de], a                                       ; $6123: $12
	jr nz, @-$06                                     ; $6124: $20 $f8

	ret nz                                           ; $6126: $c0

	db $10                                           ; $6127: $10
	jr nz, @-$0e                                     ; $6128: $20 $f0

	ret nz                                           ; $612a: $c0

	ld c, $20                                        ; $612b: $0e $20
	ld [$2ad0], sp                                   ; $612d: $08 $d0 $2a
	jr nz, jr_00e_6132                               ; $6130: $20 $00

jr_00e_6132:
	ret nc                                           ; $6132: $d0

	jr z, jr_00e_6155                                ; $6133: $28 $20

	ld hl, sp-$30                                    ; $6135: $f8 $d0
	ld h, $20                                        ; $6137: $26 $20
	ldh a, [$d0]                                     ; $6139: $f0 $d0
	inc h                                            ; $613b: $24
	jr nz, @+$0a                                     ; $613c: $20 $08

jr_00e_613e:
	ldh [rLCDC], a                                   ; $613e: $e0 $40
	ld [hl+], a                                      ; $6140: $22
	nop                                              ; $6141: $00
	ldh [$3e], a                                     ; $6142: $e0 $3e
	ld [hl+], a                                      ; $6144: $22
	ld hl, sp-$20                                    ; $6145: $f8 $e0
	inc a                                            ; $6147: $3c
	ld [hl+], a                                      ; $6148: $22
	ld [$52f0], sp                                   ; $6149: $08 $f0 $52
	ld [hl+], a                                      ; $614c: $22
	nop                                              ; $614d: $00
	ldh a, [$50]                                     ; $614e: $f0 $50
	ld [hl+], a                                      ; $6150: $22
	ld hl, sp-$10                                    ; $6151: $f8 $f0
	ld c, [hl]                                       ; $6153: $4e
	inc hl                                           ; $6154: $23

jr_00e_6155:
	ld [$16e0], sp                                   ; $6155: $08 $e0 $16
	ld [hl+], a                                      ; $6158: $22
	ld hl, sp-$20                                    ; $6159: $f8 $e0
	inc d                                            ; $615b: $14
	ld [hl+], a                                      ; $615c: $22
	add hl, bc                                       ; $615d: $09
	ret nz                                           ; $615e: $c0

jr_00e_615f:
	ld b, $20                                        ; $615f: $06 $20
	ld bc, $04c0                                     ; $6161: $01 $c0 $04
	jr nz, jr_00e_615f                               ; $6164: $20 $f9

	ret nz                                           ; $6166: $c0

	ld [bc], a                                       ; $6167: $02
	jr nz, jr_00e_6172                               ; $6168: $20 $08

jr_00e_616a:
	ret nc                                           ; $616a: $d0

	ld [hl], $20                                     ; $616b: $36 $20
	nop                                              ; $616d: $00
	ret nc                                           ; $616e: $d0

	inc [hl]                                         ; $616f: $34
	jr nz, jr_00e_616a                               ; $6170: $20 $f8

jr_00e_6172:
	ret nc                                           ; $6172: $d0

	ld [hl-], a                                      ; $6173: $32
	jr nz, @+$0a                                     ; $6174: $20 $08

	ldh [rAUD3HIGH], a                               ; $6176: $e0 $1e
	jr nz, jr_00e_617a                               ; $6178: $20 $00

jr_00e_617a:
	ldh [rAUD3LEVEL], a                              ; $617a: $e0 $1c
	ld [hl+], a                                      ; $617c: $22
	ld hl, sp-$20                                    ; $617d: $f8 $e0
	ld a, [de]                                       ; $617f: $1a
	jr nz, jr_00e_618a                               ; $6180: $20 $08

	ldh a, [$3e]                                     ; $6182: $f0 $3e
	jr nz, jr_00e_6186                               ; $6184: $20 $00

jr_00e_6186:
	ldh a, [$3c]                                     ; $6186: $f0 $3c
	jr nz, jr_00e_617a                               ; $6188: $20 $f0

jr_00e_618a:
	ldh a, [$38]                                     ; $618a: $f0 $38
	jr nz, jr_00e_6186                               ; $618c: $20 $f8

	ldh a, [$3a]                                     ; $618e: $f0 $3a
	ld hl, $e0f5                                     ; $6190: $21 $f5 $e0
	ld e, d                                          ; $6193: $5a
	ld [hl+], a                                      ; $6194: $22
	dec b                                            ; $6195: $05
	ldh [$5c], a                                     ; $6196: $e0 $5c
	ld [hl+], a                                      ; $6198: $22
	dec b                                            ; $6199: $05
	ldh a, [$58]                                     ; $619a: $f0 $58
	jr nz, @-$01                                     ; $619c: $20 $fd

	ldh a, [$72]                                     ; $619e: $f0 $72
	jr nz, @-$09                                     ; $61a0: $20 $f5

	ldh a, [rSVBK]                                   ; $61a2: $f0 $70
	jr nz, @+$0f                                     ; $61a4: $20 $0d

	ldh [rRP], a                                     ; $61a6: $e0 $56
	jr nz, @+$07                                     ; $61a8: $20 $05

	ldh [rHDMA4], a                                  ; $61aa: $e0 $54
	jr nz, @-$01                                     ; $61ac: $20 $fd

	ldh [rHDMA2], a                                  ; $61ae: $e0 $52
	ld [hl+], a                                      ; $61b0: $22
	push af                                          ; $61b1: $f5
	ldh [$50], a                                     ; $61b2: $e0 $50
	jr nz, jr_00e_61be                               ; $61b4: $20 $08

jr_00e_61b6:
	ret nc                                           ; $61b6: $d0

	ld [hl], $20                                     ; $61b7: $36 $20
	nop                                              ; $61b9: $00
	ret nc                                           ; $61ba: $d0

	inc [hl]                                         ; $61bb: $34
	jr nz, jr_00e_61b6                               ; $61bc: $20 $f8

jr_00e_61be:
	ret nc                                           ; $61be: $d0

	ld [hl-], a                                      ; $61bf: $32
	jr nz, jr_00e_61cb                               ; $61c0: $20 $09

	ret nz                                           ; $61c2: $c0

jr_00e_61c3:
	ld b, $20                                        ; $61c3: $06 $20
	ld bc, $04c0                                     ; $61c5: $01 $c0 $04
	jr nz, jr_00e_61c3                               ; $61c8: $20 $f9

	ret nz                                           ; $61ca: $c0

jr_00e_61cb:
	ld [bc], a                                       ; $61cb: $02
	ld hl, $e009                                     ; $61cc: $21 $09 $e0

jr_00e_61cf:
	ld [$0922], sp                                   ; $61cf: $08 $22 $09
	ldh a, [$66]                                     ; $61d2: $f0 $66
	jr nz, @+$03                                     ; $61d4: $20 $01

	ldh a, [$64]                                     ; $61d6: $f0 $64
	jr nz, @-$05                                     ; $61d8: $20 $f9

	ldh a, [$62]                                     ; $61da: $f0 $62
	jr nz, jr_00e_61cf                               ; $61dc: $20 $f1

	ldh a, [$60]                                     ; $61de: $f0 $60
	jr nz, @+$0b                                     ; $61e0: $20 $09

	ldh [rDMA], a                                    ; $61e2: $e0 $46
	jr nz, @+$03                                     ; $61e4: $20 $01

	ldh [rLY], a                                     ; $61e6: $e0 $44
	ld [hl+], a                                      ; $61e8: $22
	ld sp, hl                                        ; $61e9: $f9
	ldh [rSCY], a                                    ; $61ea: $e0 $42
	ld [hl+], a                                      ; $61ec: $22
	pop af                                           ; $61ed: $f1
	ldh [rLCDC], a                                   ; $61ee: $e0 $40
	ld [hl+], a                                      ; $61f0: $22
	add hl, bc                                       ; $61f1: $09
	ret nz                                           ; $61f2: $c0

jr_00e_61f3:
	ld b, $20                                        ; $61f3: $06 $20
	ld bc, $04c0                                     ; $61f5: $01 $c0 $04
	jr nz, jr_00e_61f3                               ; $61f8: $20 $f9

	ret nz                                           ; $61fa: $c0

jr_00e_61fb:
	ld [bc], a                                       ; $61fb: $02
	jr nz, jr_00e_6207                               ; $61fc: $20 $09

	ret nc                                           ; $61fe: $d0

jr_00e_61ff:
	ld h, $20                                        ; $61ff: $26 $20
	ld bc, $24d0                                     ; $6201: $01 $d0 $24
	jr nz, jr_00e_61ff                               ; $6204: $20 $f9

	ret nc                                           ; $6206: $d0

jr_00e_6207:
	ld [hl+], a                                      ; $6207: $22
	jr nz, jr_00e_61fb                               ; $6208: $20 $f1

	ret nc                                           ; $620a: $d0

	jr nz, jr_00e_622e                               ; $620b: $20 $21

	ld hl, sp-$30                                    ; $620d: $f8 $d0
	ld [de], a                                       ; $620f: $12
	ld [hl+], a                                      ; $6210: $22
	ld hl, sp-$20                                    ; $6211: $f8 $e0
	db $10                                           ; $6213: $10
	ld [hl+], a                                      ; $6214: $22
	ld [$5ee0], sp                                   ; $6215: $08 $e0 $5e
	ld [hl+], a                                      ; $6218: $22
	ld [$6ef0], sp                                   ; $6219: $08 $f0 $6e
	jr nz, jr_00e_621e                               ; $621c: $20 $00

jr_00e_621e:
	ldh a, [$6c]                                     ; $621e: $f0 $6c
	jr nz, @-$06                                     ; $6220: $20 $f8

	ldh a, [rOCPS]                                   ; $6222: $f0 $6a
	jr nz, @-$0e                                     ; $6224: $20 $f0

	ldh a, [rBCPS]                                   ; $6226: $f0 $68
	jr nz, @+$0a                                     ; $6228: $20 $08

	ldh [$4e], a                                     ; $622a: $e0 $4e
	jr nz, jr_00e_622e                               ; $622c: $20 $00

jr_00e_622e:
	ldh [$4c], a                                     ; $622e: $e0 $4c
	ld [hl+], a                                      ; $6230: $22
	ld hl, sp-$20                                    ; $6231: $f8 $e0
	ld c, d                                          ; $6233: $4a
	jr nz, jr_00e_623e                               ; $6234: $20 $08

jr_00e_6236:
	ret nc                                           ; $6236: $d0

	ld l, $20                                        ; $6237: $2e $20
	nop                                              ; $6239: $00
	ret nc                                           ; $623a: $d0

	inc l                                            ; $623b: $2c
	jr nz, jr_00e_6236                               ; $623c: $20 $f8

jr_00e_623e:
	ret nc                                           ; $623e: $d0

	ld a, [hl+]                                      ; $623f: $2a
	jr nz, @-$0e                                     ; $6240: $20 $f0

	ret nc                                           ; $6242: $d0

	jr z, jr_00e_6265                                ; $6243: $28 $20

	ld [$0ec0], sp                                   ; $6245: $08 $c0 $0e
	jr nz, jr_00e_624a                               ; $6248: $20 $00

jr_00e_624a:
	ret nz                                           ; $624a: $c0

	inc c                                            ; $624b: $0c
	jr nz, @-$06                                     ; $624c: $20 $f8

	ret nz                                           ; $624e: $c0

	ld a, [bc]                                       ; $624f: $0a
	ld hl, $f003                                     ; $6250: $21 $03 $f0
	ld [hl], $22                                     ; $6253: $36 $22
	ei                                               ; $6255: $fb
	ldh a, [$34]                                     ; $6256: $f0 $34
	ld [hl+], a                                      ; $6258: $22
	di                                               ; $6259: $f3
	ldh a, [$32]                                     ; $625a: $f0 $32
	ld [hl+], a                                      ; $625c: $22
	inc bc                                           ; $625d: $03

jr_00e_625e:
	ldh [rAUD3LEVEL], a                              ; $625e: $e0 $1c
	ld [hl+], a                                      ; $6260: $22
	ei                                               ; $6261: $fb
	ldh [rAUD3ENA], a                                ; $6262: $e0 $1a
	ld [hl+], a                                      ; $6264: $22

jr_00e_6265:
	di                                               ; $6265: $f3
	ldh [rAUD2LOW], a                                ; $6266: $e0 $18
	ld [hl+], a                                      ; $6268: $22
	ldh a, [$c0]                                     ; $6269: $f0 $c0
	nop                                              ; $626b: $00
	jr nz, jr_00e_625e                               ; $626c: $20 $f0

	ret nc                                           ; $626e: $d0

	ld [$0820], sp                                   ; $626f: $08 $20 $08
	ret nc                                           ; $6272: $d0

	ld c, $20                                        ; $6273: $0e $20
	nop                                              ; $6275: $00
	ret nc                                           ; $6276: $d0

	ld d, $20                                        ; $6277: $16 $20
	ld hl, sp-$30                                    ; $6279: $f8 $d0
	inc d                                            ; $627b: $14
	jr nz, jr_00e_6286                               ; $627c: $20 $08

jr_00e_627e:
	ret nz                                           ; $627e: $c0

	ld b, $20                                        ; $627f: $06 $20
	nop                                              ; $6281: $00
	ret nz                                           ; $6282: $c0

	inc b                                            ; $6283: $04
	jr nz, jr_00e_627e                               ; $6284: $20 $f8

jr_00e_6286:
	ret nz                                           ; $6286: $c0

	ld [bc], a                                       ; $6287: $02
	ld hl, $f000                                     ; $6288: $21 $00 $f0
	ld a, [hl-]                                      ; $628b: $3a
	ld [hl+], a                                      ; $628c: $22
	ld hl, sp-$10                                    ; $628d: $f8 $f0
	jr c, jr_00e_62b3                                ; $628f: $38 $22

	nop                                              ; $6291: $00
	ldh [rAUD4POLY], a                               ; $6292: $e0 $22
	ld [hl+], a                                      ; $6294: $22
	ld hl, sp-$20                                    ; $6295: $f8 $e0
	jr nz, jr_00e_62bb                               ; $6297: $20 $22

	ldh a, [$e0]                                     ; $6299: $f0 $e0
	ld e, $22                                        ; $629b: $1e $22
	ld [$0ed0], sp                                   ; $629d: $08 $d0 $0e
	jr nz, jr_00e_62aa                               ; $62a0: $20 $08

	ret nz                                           ; $62a2: $c0

	ld b, $20                                        ; $62a3: $06 $20
	ldh a, [$d0]                                     ; $62a5: $f0 $d0
	ld [$0020], sp                                   ; $62a7: $08 $20 $00

jr_00e_62aa:
	ret nc                                           ; $62aa: $d0

	ld d, $20                                        ; $62ab: $16 $20
	ld hl, sp-$30                                    ; $62ad: $f8 $d0
	inc d                                            ; $62af: $14
	jr nz, jr_00e_62b2                               ; $62b0: $20 $00

jr_00e_62b2:
	ret nz                                           ; $62b2: $c0

jr_00e_62b3:
	inc b                                            ; $62b3: $04
	jr nz, @-$06                                     ; $62b4: $20 $f8

	ret nz                                           ; $62b6: $c0

	ld [bc], a                                       ; $62b7: $02
	jr nz, jr_00e_62aa                               ; $62b8: $20 $f0

	ret nz                                           ; $62ba: $c0

jr_00e_62bb:
	nop                                              ; $62bb: $00
	ld hl, $f000                                     ; $62bc: $21 $00 $f0
	ld b, b                                          ; $62bf: $40
	ld [hl+], a                                      ; $62c0: $22
	ld hl, sp-$10                                    ; $62c1: $f8 $f0
	ld a, $22                                        ; $62c3: $3e $22
	ldh a, [$f0]                                     ; $62c5: $f0 $f0
	inc a                                            ; $62c7: $3c
	ld [hl+], a                                      ; $62c8: $22
	ldh a, [$e0]                                     ; $62c9: $f0 $e0
	inc h                                            ; $62cb: $24
	ld [hl+], a                                      ; $62cc: $22
	nop                                              ; $62cd: $00
	ldh [$28], a                                     ; $62ce: $e0 $28
	ld [hl+], a                                      ; $62d0: $22
	ld hl, sp-$20                                    ; $62d1: $f8 $e0
	ld h, $22                                        ; $62d3: $26 $22
	ldh a, [$c0]                                     ; $62d5: $f0 $c0
	nop                                              ; $62d7: $00
	jr nz, @-$0e                                     ; $62d8: $20 $f0

	ret nc                                           ; $62da: $d0

	ld [$0820], sp                                   ; $62db: $08 $20 $08

jr_00e_62de:
	ret nc                                           ; $62de: $d0

	ld c, $20                                        ; $62df: $0e $20
	nop                                              ; $62e1: $00
	ret nc                                           ; $62e2: $d0

	inc c                                            ; $62e3: $0c
	jr nz, jr_00e_62de                               ; $62e4: $20 $f8

	ret nc                                           ; $62e6: $d0

	ld a, [bc]                                       ; $62e7: $0a
	jr nz, jr_00e_62f2                               ; $62e8: $20 $08

jr_00e_62ea:
	ret nz                                           ; $62ea: $c0

	ld b, $20                                        ; $62eb: $06 $20
	nop                                              ; $62ed: $00
	ret nz                                           ; $62ee: $c0

	inc b                                            ; $62ef: $04
	jr nz, jr_00e_62ea                               ; $62f0: $20 $f8

jr_00e_62f2:
	ret nz                                           ; $62f2: $c0

	ld [bc], a                                       ; $62f3: $02
	ld hl, $f000                                     ; $62f4: $21 $00 $f0
	ld b, [hl]                                       ; $62f7: $46
	ld [hl+], a                                      ; $62f8: $22
	ld hl, sp-$10                                    ; $62f9: $f8 $f0
	ld b, h                                          ; $62fb: $44
	ld [hl+], a                                      ; $62fc: $22
	ldh a, [$f0]                                     ; $62fd: $f0 $f0
	ld b, d                                          ; $62ff: $42
	ld [hl+], a                                      ; $6300: $22
	ldh a, [$e0]                                     ; $6301: $f0 $e0
	ld a, [hl+]                                      ; $6303: $2a
	ld [hl+], a                                      ; $6304: $22
	nop                                              ; $6305: $00
	ldh [$2e], a                                     ; $6306: $e0 $2e
	ld [hl+], a                                      ; $6308: $22
	ld hl, sp-$20                                    ; $6309: $f8 $e0
	inc l                                            ; $630b: $2c
	ld [hl+], a                                      ; $630c: $22
	nop                                              ; $630d: $00
	ret nc                                           ; $630e: $d0

	ld [de], a                                       ; $630f: $12
	jr nz, @-$06                                     ; $6310: $20 $f8

jr_00e_6312:
	ret nc                                           ; $6312: $d0

	db $10                                           ; $6313: $10
	jr nz, jr_00e_631e                               ; $6314: $20 $08

	ret nc                                           ; $6316: $d0

	ld c, $20                                        ; $6317: $0e $20
	ld [$06c0], sp                                   ; $6319: $08 $c0 $06
	jr nz, jr_00e_631e                               ; $631c: $20 $00

jr_00e_631e:
	ret nz                                           ; $631e: $c0

	inc b                                            ; $631f: $04
	jr nz, jr_00e_6312                               ; $6320: $20 $f0

	ret nc                                           ; $6322: $d0

	ld [$f820], sp                                   ; $6323: $08 $20 $f8
	ret nz                                           ; $6326: $c0

	ld [bc], a                                       ; $6327: $02
	jr nz, @-$0e                                     ; $6328: $20 $f0

	ret nz                                           ; $632a: $c0

	nop                                              ; $632b: $00
	ld hl, $f008                                     ; $632c: $21 $08 $f0
	inc a                                            ; $632f: $3c
	ld [hl+], a                                      ; $6330: $22
	nop                                              ; $6331: $00
	ldh a, [$3a]                                     ; $6332: $f0 $3a
	ld [hl+], a                                      ; $6334: $22
	ld hl, sp-$10                                    ; $6335: $f8 $f0
	jr c, jr_00e_635b                                ; $6337: $38 $22

	ldh a, [$f0]                                     ; $6339: $f0 $f0
	ld [hl], $22                                     ; $633b: $36 $22
	ld [$1ae0], sp                                   ; $633d: $08 $e0 $1a
	ld [hl+], a                                      ; $6340: $22
	nop                                              ; $6341: $00
	ldh [rAUD2LOW], a                                ; $6342: $e0 $18
	ld [hl+], a                                      ; $6344: $22
	ld hl, sp-$20                                    ; $6345: $f8 $e0
	ld d, $22                                        ; $6347: $16 $22

jr_00e_6349:
	rlca                                             ; $6349: $07
	ret nc                                           ; $634a: $d0

	inc [hl]                                         ; $634b: $34
	jr nz, @+$01                                     ; $634c: $20 $ff

	ret nc                                           ; $634e: $d0

	ld [hl-], a                                      ; $634f: $32
	jr nz, jr_00e_6349                               ; $6350: $20 $f7

	ret nc                                           ; $6352: $d0

	jr nc, jr_00e_6375                               ; $6353: $30 $20

jr_00e_6355:
	rlca                                             ; $6355: $07
	ret nz                                           ; $6356: $c0

	inc d                                            ; $6357: $14
	jr nz, @+$01                                     ; $6358: $20 $ff

	ret nz                                           ; $635a: $c0

jr_00e_635b:
	ld [de], a                                       ; $635b: $12
	jr nz, jr_00e_6355                               ; $635c: $20 $f7

	ret nz                                           ; $635e: $c0

	db $10                                           ; $635f: $10
	ld hl, $f006                                     ; $6360: $21 $06 $f0
	ld a, $22                                        ; $6363: $3e $22
	cp $f0                                           ; $6365: $fe $f0
	ld e, $22                                        ; $6367: $1e $22
	or $f0                                           ; $6369: $f6 $f0
	inc e                                            ; $636b: $1c
	ld [hl+], a                                      ; $636c: $22
	inc b                                            ; $636d: $04
	ldh [rHDMA2], a                                  ; $636e: $e0 $52
	ld [hl+], a                                      ; $6370: $22
	db $fc                                           ; $6371: $fc
	ldh [$50], a                                     ; $6372: $e0 $50
	ld [hl+], a                                      ; $6374: $22

jr_00e_6375:
	db $f4                                           ; $6375: $f4
	ldh [$4e], a                                     ; $6376: $e0 $4e
	ld [hl+], a                                      ; $6378: $22

jr_00e_6379:
	rlca                                             ; $6379: $07
	ret nc                                           ; $637a: $d0

	inc [hl]                                         ; $637b: $34
	jr nz, @+$01                                     ; $637c: $20 $ff

	ret nc                                           ; $637e: $d0

	ld [hl-], a                                      ; $637f: $32
	jr nz, jr_00e_6379                               ; $6380: $20 $f7

	ret nc                                           ; $6382: $d0

	jr nc, jr_00e_63a5                               ; $6383: $30 $20

jr_00e_6385:
	rlca                                             ; $6385: $07
	ret nz                                           ; $6386: $c0

	inc d                                            ; $6387: $14
	jr nz, @+$01                                     ; $6388: $20 $ff

	ret nz                                           ; $638a: $c0

	ld [de], a                                       ; $638b: $12
	jr nz, jr_00e_6385                               ; $638c: $20 $f7

	ret nz                                           ; $638e: $c0

jr_00e_638f:
	db $10                                           ; $638f: $10
	ld hl, $f009                                     ; $6390: $21 $09 $f0

jr_00e_6393:
	ld e, d                                          ; $6393: $5a
	jr nz, @+$03                                     ; $6394: $20 $01

	ldh a, [$58]                                     ; $6396: $f0 $58
	jr nz, jr_00e_6393                               ; $6398: $20 $f9

	ldh a, [rRP]                                     ; $639a: $f0 $56
	jr nz, jr_00e_638f                               ; $639c: $20 $f1

	ldh a, [rHDMA4]                                  ; $639e: $f0 $54
	jr nz, jr_00e_63a6                               ; $63a0: $20 $04

	ldh [rLY], a                                     ; $63a2: $e0 $44
	ld [hl+], a                                      ; $63a4: $22

jr_00e_63a5:
	db $fc                                           ; $63a5: $fc

jr_00e_63a6:
	ldh [rSCY], a                                    ; $63a6: $e0 $42
	ld [hl+], a                                      ; $63a8: $22
	db $f4                                           ; $63a9: $f4
	ldh [rLCDC], a                                   ; $63aa: $e0 $40
	ld [hl+], a                                      ; $63ac: $22
	db $fc                                           ; $63ad: $fc
	ret nc                                           ; $63ae: $d0

	ld b, $22                                        ; $63af: $06 $22
	inc c                                            ; $63b1: $0c

jr_00e_63b2:
	ret nc                                           ; $63b2: $d0

	ld h, $20                                        ; $63b3: $26 $20
	inc b                                            ; $63b5: $04

jr_00e_63b6:
	ret nc                                           ; $63b6: $d0

	inc h                                            ; $63b7: $24
	jr nz, jr_00e_63b6                               ; $63b8: $20 $fc

	ret nc                                           ; $63ba: $d0

	ld [hl+], a                                      ; $63bb: $22
	jr nz, jr_00e_63b2                               ; $63bc: $20 $f4

jr_00e_63be:
	ret nc                                           ; $63be: $d0

	jr nz, jr_00e_63e1                               ; $63bf: $20 $20

	inc b                                            ; $63c1: $04

jr_00e_63c2:
	ret nz                                           ; $63c2: $c0

	inc b                                            ; $63c3: $04
	jr nz, jr_00e_63c2                               ; $63c4: $20 $fc

	ret nz                                           ; $63c6: $c0

	ld [bc], a                                       ; $63c7: $02
	jr nz, jr_00e_63be                               ; $63c8: $20 $f4

	ret nz                                           ; $63ca: $c0

jr_00e_63cb:
	nop                                              ; $63cb: $00
	ld hl, $f009                                     ; $63cc: $21 $09 $f0

jr_00e_63cf:
	ld h, d                                          ; $63cf: $62
	jr nz, @+$03                                     ; $63d0: $20 $01

	ldh a, [$60]                                     ; $63d2: $f0 $60
	jr nz, jr_00e_63cf                               ; $63d4: $20 $f9

	ldh a, [$5e]                                     ; $63d6: $f0 $5e
	jr nz, jr_00e_63cb                               ; $63d8: $20 $f1

	ldh a, [$5c]                                     ; $63da: $f0 $5c
	jr nz, jr_00e_63df                               ; $63dc: $20 $01

	ret nc                                           ; $63de: $d0

jr_00e_63df:
	ld c, h                                          ; $63df: $4c
	ld [hl+], a                                      ; $63e0: $22

jr_00e_63e1:
	ld bc, $4ae0                                     ; $63e1: $01 $e0 $4a
	ld [hl+], a                                      ; $63e4: $22
	ld sp, hl                                        ; $63e5: $f9
	ldh [rOBP0], a                                   ; $63e6: $e0 $48
	ld [hl+], a                                      ; $63e8: $22
	pop af                                           ; $63e9: $f1
	ldh [rDMA], a                                    ; $63ea: $e0 $46
	ld [hl+], a                                      ; $63ec: $22
	add hl, bc                                       ; $63ed: $09
	ret nc                                           ; $63ee: $d0

jr_00e_63ef:
	ld l, $20                                        ; $63ef: $2e $20
	ld bc, $2cd0                                     ; $63f1: $01 $d0 $2c
	jr nz, jr_00e_63ef                               ; $63f4: $20 $f9

	ret nc                                           ; $63f6: $d0

jr_00e_63f7:
	ld a, [hl+]                                      ; $63f7: $2a
	jr nz, @-$0d                                     ; $63f8: $20 $f1

	ret nc                                           ; $63fa: $d0

jr_00e_63fb:
	jr z, @+$22                                      ; $63fb: $28 $20

	ld bc, $0cc0                                     ; $63fd: $01 $c0 $0c
	jr nz, jr_00e_63fb                               ; $6400: $20 $f9

	ret nz                                           ; $6402: $c0

	ld a, [bc]                                       ; $6403: $0a
	jr nz, jr_00e_63f7                               ; $6404: $20 $f1

	ret nz                                           ; $6406: $c0

	ld [$0821], sp                                   ; $6407: $08 $21 $08

jr_00e_640a:
	ldh a, [$0e]                                     ; $640a: $f0 $0e
	jr nz, jr_00e_640e                               ; $640c: $20 $00

jr_00e_640e:
	ldh a, [$0c]                                     ; $640e: $f0 $0c
	jr nz, jr_00e_640a                               ; $6410: $20 $f8

	ldh a, [$0a]                                     ; $6412: $f0 $0a
	jr nz, @-$05                                     ; $6414: $20 $f9

	ldh [$60], a                                     ; $6416: $e0 $60
	jr nz, jr_00e_6422                               ; $6418: $20 $08

	ldh [$08], a                                     ; $641a: $e0 $08
	jr nz, jr_00e_641e                               ; $641c: $20 $00

jr_00e_641e:
	ldh [rTMA], a                                    ; $641e: $e0 $06
	jr nz, jr_00e_642a                               ; $6420: $20 $08

jr_00e_6422:
	ret nc                                           ; $6422: $d0

	inc h                                            ; $6423: $24
	jr nz, jr_00e_6426                               ; $6424: $20 $00

jr_00e_6426:
	ret nc                                           ; $6426: $d0

	ld [hl+], a                                      ; $6427: $22
	jr nz, jr_00e_6422                               ; $6428: $20 $f8

jr_00e_642a:
	ret nc                                           ; $642a: $d0

	jr nz, @+$22                                     ; $642b: $20 $20

	ld [$04c0], sp                                   ; $642d: $08 $c0 $04
	jr nz, jr_00e_6432                               ; $6430: $20 $00

jr_00e_6432:
	ret nz                                           ; $6432: $c0

	ld [bc], a                                       ; $6433: $02
	jr nz, @-$06                                     ; $6434: $20 $f8

	ret nz                                           ; $6436: $c0

	nop                                              ; $6437: $00
	ld hl, $ef06                                     ; $6438: $21 $06 $ef
	ld d, $22                                        ; $643b: $16 $22
	cp $ef                                           ; $643d: $fe $ef
	inc d                                            ; $643f: $14
	ld [hl+], a                                      ; $6440: $22
	ld b, $df                                        ; $6441: $06 $df
	ld [de], a                                       ; $6443: $12

jr_00e_6444:
	jr nz, jr_00e_6444                               ; $6444: $20 $fe

	rst SubAFromDE                                          ; $6446: $df
	db $10                                           ; $6447: $10
	jr nz, @+$09                                     ; $6448: $20 $07

	rst GetHLinHL                                          ; $644a: $cf
	inc h                                            ; $644b: $24
	jr nz, @+$09                                     ; $644c: $20 $07

	cp a                                             ; $644e: $bf
	inc b                                            ; $644f: $04
	jr nz, @+$01                                     ; $6450: $20 $ff

	rst GetHLinHL                                          ; $6452: $cf
	ld [hl+], a                                      ; $6453: $22
	jr nz, @-$07                                     ; $6454: $20 $f7

	rst GetHLinHL                                          ; $6456: $cf
	jr nz, @+$22                                     ; $6457: $20 $20

	rst $38                                          ; $6459: $ff
	cp a                                             ; $645a: $bf
	ld [bc], a                                       ; $645b: $02
	jr nz, @-$07                                     ; $645c: $20 $f7

	cp a                                             ; $645e: $bf
	nop                                              ; $645f: $00
	ld hl, $f00e                                     ; $6460: $21 $0e $f0
	ld [hl-], a                                      ; $6463: $32
	ld [hl+], a                                      ; $6464: $22
	ld b, $f0                                        ; $6465: $06 $f0
	jr nc, jr_00e_648b                               ; $6467: $30 $22

	cp $f0                                           ; $6469: $fe $f0
	ld l, $22                                        ; $646b: $2e $22
	or $f0                                           ; $646d: $f6 $f0
	inc l                                            ; $646f: $2c

jr_00e_6470:
	ld [hl+], a                                      ; $6470: $22
	ld b, $e0                                        ; $6471: $06 $e0
	ld a, [hl+]                                      ; $6473: $2a

jr_00e_6474:
	jr nz, jr_00e_6474                               ; $6474: $20 $fe

	ldh [$28], a                                     ; $6476: $e0 $28
	jr nz, jr_00e_6470                               ; $6478: $20 $f6

	ldh [rAUDENA], a                                 ; $647a: $e0 $26
	jr nz, jr_00e_6486                               ; $647c: $20 $08

	ret nc                                           ; $647e: $d0

	inc h                                            ; $647f: $24
	jr nz, jr_00e_648a                               ; $6480: $20 $08

jr_00e_6482:
	ret nz                                           ; $6482: $c0

	inc b                                            ; $6483: $04
	jr nz, jr_00e_6486                               ; $6484: $20 $00

jr_00e_6486:
	ret nc                                           ; $6486: $d0

	ld [hl+], a                                      ; $6487: $22
	jr nz, jr_00e_6482                               ; $6488: $20 $f8

jr_00e_648a:
	ret nc                                           ; $648a: $d0

jr_00e_648b:
	jr nz, jr_00e_64ad                               ; $648b: $20 $20

	nop                                              ; $648d: $00
	ret nz                                           ; $648e: $c0

	ld [bc], a                                       ; $648f: $02
	jr nz, jr_00e_648a                               ; $6490: $20 $f8

	ret nz                                           ; $6492: $c0

	nop                                              ; $6493: $00
	ld hl, $d0f7                                     ; $6494: $21 $f7 $d0
	ld e, [hl]                                       ; $6497: $5e
	jr nz, jr_00e_64a8                               ; $6498: $20 $0e

	ldh a, [$32]                                     ; $649a: $f0 $32
	ld [hl+], a                                      ; $649c: $22
	ld b, $f0                                        ; $649d: $06 $f0
	jr nc, jr_00e_64c3                               ; $649f: $30 $22

	ld b, $e0                                        ; $64a1: $06 $e0
	ld a, [hl+]                                      ; $64a3: $2a

jr_00e_64a4:
	jr nz, jr_00e_64a4                               ; $64a4: $20 $fe

	ldh a, [$2e]                                     ; $64a6: $f0 $2e

jr_00e_64a8:
	ld [hl+], a                                      ; $64a8: $22
	cp $e0                                           ; $64a9: $fe $e0
	jr z, jr_00e_64cd                                ; $64ab: $28 $20

jr_00e_64ad:
	or $f0                                           ; $64ad: $f6 $f0
	inc l                                            ; $64af: $2c
	ld [hl+], a                                      ; $64b0: $22
	or $e0                                           ; $64b1: $f6 $e0
	ld h, $20                                        ; $64b3: $26 $20

jr_00e_64b5:
	rlca                                             ; $64b5: $07
	ret nz                                           ; $64b6: $c0

	ld d, b                                          ; $64b7: $50
	jr nz, @+$01                                     ; $64b8: $20 $ff

	ret nz                                           ; $64ba: $c0

	ld c, [hl]                                       ; $64bb: $4e
	jr nz, jr_00e_64b5                               ; $64bc: $20 $f7

	ret nz                                           ; $64be: $c0

	ld c, h                                          ; $64bf: $4c
	jr nz, @+$09                                     ; $64c0: $20 $07

	ret nc                                           ; $64c2: $d0

jr_00e_64c3:
	ld b, h                                          ; $64c3: $44
	jr nz, @+$01                                     ; $64c4: $20 $ff

	ret nc                                           ; $64c6: $d0

	ld b, [hl]                                       ; $64c7: $46
	ld hl, $ef09                                     ; $64c8: $21 $09 $ef
	ld a, $22                                        ; $64cb: $3e $22

jr_00e_64cd:
	ld bc, $3cef                                     ; $64cd: $01 $ef $3c
	ld [hl+], a                                      ; $64d0: $22
	ld sp, hl                                        ; $64d1: $f9
	rst AddAOntoHL                                          ; $64d2: $ef
	ld a, [hl-]                                      ; $64d3: $3a
	ld [hl+], a                                      ; $64d4: $22
	add hl, bc                                       ; $64d5: $09
	rst SubAFromDE                                          ; $64d6: $df

jr_00e_64d7:
	jr c, jr_00e_64f9                                ; $64d7: $38 $20

	ld bc, $36df                                     ; $64d9: $01 $df $36
	jr nz, jr_00e_64d7                               ; $64dc: $20 $f9

	rst SubAFromDE                                          ; $64de: $df
	inc [hl]                                         ; $64df: $34
	jr nz, jr_00e_64eb                               ; $64e0: $20 $09

	cp a                                             ; $64e2: $bf

jr_00e_64e3:
	inc b                                            ; $64e3: $04
	jr nz, jr_00e_64e7                               ; $64e4: $20 $01

	cp a                                             ; $64e6: $bf

jr_00e_64e7:
	ld [bc], a                                       ; $64e7: $02
	jr nz, jr_00e_64e3                               ; $64e8: $20 $f9

	cp a                                             ; $64ea: $bf

jr_00e_64eb:
	nop                                              ; $64eb: $00
	jr nz, jr_00e_64f7                               ; $64ec: $20 $09

	rst GetHLinHL                                          ; $64ee: $cf

jr_00e_64ef:
	inc e                                            ; $64ef: $1c
	jr nz, jr_00e_64f3                               ; $64f0: $20 $01

	rst GetHLinHL                                          ; $64f2: $cf

jr_00e_64f3:
	ld a, [de]                                       ; $64f3: $1a
	jr nz, jr_00e_64ef                               ; $64f4: $20 $f9

	rst GetHLinHL                                          ; $64f6: $cf

jr_00e_64f7:
	jr @+$23                                         ; $64f7: $18 $21

jr_00e_64f9:
	ld sp, hl                                        ; $64f9: $f9
	rst SubAFromDE                                          ; $64fa: $df
	ld e, $20                                        ; $64fb: $1e $20
	add hl, bc                                       ; $64fd: $09
	rst AddAOntoHL                                          ; $64fe: $ef
	ld a, $22                                        ; $64ff: $3e $22
	ld bc, $3cef                                     ; $6501: $01 $ef $3c
	ld [hl+], a                                      ; $6504: $22
	ld sp, hl                                        ; $6505: $f9
	rst AddAOntoHL                                          ; $6506: $ef
	ld a, [hl-]                                      ; $6507: $3a
	ld [hl+], a                                      ; $6508: $22
	add hl, bc                                       ; $6509: $09
	rst SubAFromDE                                          ; $650a: $df
	jr c, @+$22                                      ; $650b: $38 $20

	add hl, bc                                       ; $650d: $09
	cp a                                             ; $650e: $bf
	inc b                                            ; $650f: $04
	jr nz, @+$0b                                     ; $6510: $20 $09

	rst GetHLinHL                                          ; $6512: $cf
	inc e                                            ; $6513: $1c
	jr nz, jr_00e_6517                               ; $6514: $20 $01

	rst SubAFromDE                                          ; $6516: $df

jr_00e_6517:
	ld [hl], $20                                     ; $6517: $36 $20
	ld bc, $02bf                                     ; $6519: $01 $bf $02
	jr nz, jr_00e_651f                               ; $651c: $20 $01

	rst GetHLinHL                                          ; $651e: $cf

jr_00e_651f:
	ld a, [de]                                       ; $651f: $1a
	jr nz, @-$05                                     ; $6520: $20 $f9

	cp a                                             ; $6522: $bf
	nop                                              ; $6523: $00
	jr nz, jr_00e_651f                               ; $6524: $20 $f9

	rst GetHLinHL                                          ; $6526: $cf
	jr jr_00e_654a                                   ; $6527: $18 $21

	ld [$56df], sp                                   ; $6529: $08 $df $56
	jr nz, jr_00e_652e                               ; $652c: $20 $00

jr_00e_652e:
	rst SubAFromDE                                          ; $652e: $df
	ld d, h                                          ; $652f: $54
	jr nz, @-$06                                     ; $6530: $20 $f8

	rst SubAFromDE                                          ; $6532: $df
	ld d, d                                          ; $6533: $52
	jr nz, jr_00e_653e                               ; $6534: $20 $08

jr_00e_6536:
	cp a                                             ; $6536: $bf
	ld d, b                                          ; $6537: $50
	jr nz, jr_00e_653a                               ; $6538: $20 $00

jr_00e_653a:
	cp a                                             ; $653a: $bf
	ld c, [hl]                                       ; $653b: $4e
	jr nz, jr_00e_6536                               ; $653c: $20 $f8

jr_00e_653e:
	cp a                                             ; $653e: $bf
	ld c, h                                          ; $653f: $4c
	jr nz, jr_00e_654a                               ; $6540: $20 $08

jr_00e_6542:
	rst GetHLinHL                                          ; $6542: $cf
	ld b, h                                          ; $6543: $44
	jr nz, jr_00e_6546                               ; $6544: $20 $00

jr_00e_6546:
	rst GetHLinHL                                          ; $6546: $cf
	ld b, [hl]                                       ; $6547: $46
	jr nz, jr_00e_6542                               ; $6548: $20 $f8

jr_00e_654a:
	rst GetHLinHL                                          ; $654a: $cf
	ld b, b                                          ; $654b: $40
	jr nz, jr_00e_6557                               ; $654c: $20 $09

	rst AddAOntoHL                                          ; $654e: $ef
	ld a, $22                                        ; $654f: $3e $22
	ld bc, $3cef                                     ; $6551: $01 $ef $3c
	ld [hl+], a                                      ; $6554: $22
	ld sp, hl                                        ; $6555: $f9
	rst AddAOntoHL                                          ; $6556: $ef

jr_00e_6557:
	ld a, [hl-]                                      ; $6557: $3a
	inc hl                                           ; $6558: $23
	nop                                              ; $6559: $00
	rst GetHLinHL                                          ; $655a: $cf
	ld b, d                                          ; $655b: $42
	jr nz, jr_00e_6566                               ; $655c: $20 $08

	rst SubAFromDE                                          ; $655e: $df
	ld d, [hl]                                       ; $655f: $56
	jr nz, jr_00e_656a                               ; $6560: $20 $08

	cp a                                             ; $6562: $bf
	ld d, b                                          ; $6563: $50
	jr nz, jr_00e_656e                               ; $6564: $20 $08

jr_00e_6566:
	rst GetHLinHL                                          ; $6566: $cf
	ld b, h                                          ; $6567: $44
	jr nz, jr_00e_6573                               ; $6568: $20 $09

jr_00e_656a:
	rst AddAOntoHL                                          ; $656a: $ef
	ld a, $22                                        ; $656b: $3e $22
	nop                                              ; $656d: $00

jr_00e_656e:
	rst SubAFromDE                                          ; $656e: $df
	ld d, h                                          ; $656f: $54
	jr nz, jr_00e_6572                               ; $6570: $20 $00

jr_00e_6572:
	cp a                                             ; $6572: $bf

jr_00e_6573:
	ld c, [hl]                                       ; $6573: $4e
	jr nz, jr_00e_6577                               ; $6574: $20 $01

	rst AddAOntoHL                                          ; $6576: $ef

jr_00e_6577:
	inc a                                            ; $6577: $3c
	ld [hl+], a                                      ; $6578: $22
	ld sp, hl                                        ; $6579: $f9

jr_00e_657a:
	rst AddAOntoHL                                          ; $657a: $ef
	ld a, [hl-]                                      ; $657b: $3a
	ld [hl+], a                                      ; $657c: $22
	ld hl, sp-$21                                    ; $657d: $f8 $df
	ld d, d                                          ; $657f: $52
	jr nz, jr_00e_657a                               ; $6580: $20 $f8

	cp a                                             ; $6582: $bf
	ld c, h                                          ; $6583: $4c
	jr nz, @-$06                                     ; $6584: $20 $f8

jr_00e_6586:
	rst GetHLinHL                                          ; $6586: $cf
	ld b, b                                          ; $6587: $40
	ld hl, $cf00                                     ; $6588: $21 $00 $cf
	ld c, d                                          ; $658b: $4a
	jr nz, jr_00e_6586                               ; $658c: $20 $f8

	rst GetHLinHL                                          ; $658e: $cf
	ld c, b                                          ; $658f: $48
	jr nz, jr_00e_659a                               ; $6590: $20 $08

	rst SubAFromDE                                          ; $6592: $df
	ld d, [hl]                                       ; $6593: $56
	jr nz, jr_00e_659e                               ; $6594: $20 $08

	cp a                                             ; $6596: $bf
	ld d, b                                          ; $6597: $50
	jr nz, jr_00e_65a2                               ; $6598: $20 $08

jr_00e_659a:
	rst GetHLinHL                                          ; $659a: $cf
	ld b, h                                          ; $659b: $44
	jr nz, jr_00e_65a7                               ; $659c: $20 $09

jr_00e_659e:
	rst AddAOntoHL                                          ; $659e: $ef
	ld a, $22                                        ; $659f: $3e $22
	nop                                              ; $65a1: $00

jr_00e_65a2:
	rst SubAFromDE                                          ; $65a2: $df
	ld d, h                                          ; $65a3: $54
	jr nz, jr_00e_65a6                               ; $65a4: $20 $00

jr_00e_65a6:
	cp a                                             ; $65a6: $bf

jr_00e_65a7:
	ld c, [hl]                                       ; $65a7: $4e
	jr nz, jr_00e_65ab                               ; $65a8: $20 $01

	rst AddAOntoHL                                          ; $65aa: $ef

jr_00e_65ab:
	inc a                                            ; $65ab: $3c
	ld [hl+], a                                      ; $65ac: $22
	ld sp, hl                                        ; $65ad: $f9

jr_00e_65ae:
	rst AddAOntoHL                                          ; $65ae: $ef
	ld a, [hl-]                                      ; $65af: $3a
	ld [hl+], a                                      ; $65b0: $22
	ld hl, sp-$21                                    ; $65b1: $f8 $df
	ld d, d                                          ; $65b3: $52
	jr nz, jr_00e_65ae                               ; $65b4: $20 $f8

jr_00e_65b6:
	cp a                                             ; $65b6: $bf
	ld c, h                                          ; $65b7: $4c
	ld hl, $e000                                     ; $65b8: $21 $00 $e0
	ld h, [hl]                                       ; $65bb: $66
	jr nz, jr_00e_65b6                               ; $65bc: $20 $f8

	ldh [$64], a                                     ; $65be: $e0 $64
	jr nz, jr_00e_65ca                               ; $65c0: $20 $08

jr_00e_65c2:
	ret nc                                           ; $65c2: $d0

	ld e, h                                          ; $65c3: $5c
	jr nz, jr_00e_65c6                               ; $65c4: $20 $00

jr_00e_65c6:
	ret nc                                           ; $65c6: $d0

	ld e, d                                          ; $65c7: $5a
	jr nz, jr_00e_65c2                               ; $65c8: $20 $f8

jr_00e_65ca:
	ret nc                                           ; $65ca: $d0

	ld e, b                                          ; $65cb: $58
	jr nz, jr_00e_65d6                               ; $65cc: $20 $08

jr_00e_65ce:
	ldh a, [$0e]                                     ; $65ce: $f0 $0e
	jr nz, jr_00e_65d2                               ; $65d0: $20 $00

jr_00e_65d2:
	ldh a, [$0c]                                     ; $65d2: $f0 $0c
	jr nz, jr_00e_65ce                               ; $65d4: $20 $f8

jr_00e_65d6:
	ldh a, [$0a]                                     ; $65d6: $f0 $0a
	jr nz, jr_00e_65e2                               ; $65d8: $20 $08

	ldh [$08], a                                     ; $65da: $e0 $08
	jr nz, jr_00e_65e6                               ; $65dc: $20 $08

	ret nz                                           ; $65de: $c0

	inc b                                            ; $65df: $04
	jr nz, jr_00e_65e2                               ; $65e0: $20 $00

jr_00e_65e2:
	ldh [rTMA], a                                    ; $65e2: $e0 $06
	jr nz, jr_00e_65e6                               ; $65e4: $20 $00

jr_00e_65e6:
	ret nz                                           ; $65e6: $c0

	ld [bc], a                                       ; $65e7: $02
	jr nz, jr_00e_65e2                               ; $65e8: $20 $f8

	ret nz                                           ; $65ea: $c0

	nop                                              ; $65eb: $00
	ld hl, $df00                                     ; $65ec: $21 $00 $df
	ld l, d                                          ; $65ef: $6a
	ld [hl+], a                                      ; $65f0: $22
	ld hl, sp-$21                                    ; $65f1: $f8 $df
	ld l, b                                          ; $65f3: $68
	jr nz, @+$09                                     ; $65f4: $20 $07

	rst SubAFromDE                                          ; $65f6: $df
	ld [de], a                                       ; $65f7: $12
	jr nz, @+$01                                     ; $65f8: $20 $ff

	rst SubAFromDE                                          ; $65fa: $df
	db $10                                           ; $65fb: $10
	jr nz, jr_00e_6605                               ; $65fc: $20 $07

	rst AddAOntoHL                                          ; $65fe: $ef
	ld d, $22                                        ; $65ff: $16 $22
	rst $38                                          ; $6601: $ff
	rst AddAOntoHL                                          ; $6602: $ef
	inc d                                            ; $6603: $14
	ld [hl+], a                                      ; $6604: $22

jr_00e_6605:
	ld [$5ccf], sp                                   ; $6605: $08 $cf $5c
	jr nz, jr_00e_6612                               ; $6608: $20 $08

	cp a                                             ; $660a: $bf
	inc b                                            ; $660b: $04
	jr nz, jr_00e_660e                               ; $660c: $20 $00

jr_00e_660e:
	rst GetHLinHL                                          ; $660e: $cf
	ld e, d                                          ; $660f: $5a
	jr nz, jr_00e_6612                               ; $6610: $20 $00

jr_00e_6612:
	cp a                                             ; $6612: $bf
	ld [bc], a                                       ; $6613: $02
	jr nz, jr_00e_660e                               ; $6614: $20 $f8

	rst GetHLinHL                                          ; $6616: $cf
	ld e, b                                          ; $6617: $58
	jr nz, jr_00e_6612                               ; $6618: $20 $f8

	cp a                                             ; $661a: $bf
	nop                                              ; $661b: $00
	ld hl, $e0f8                                     ; $661c: $21 $f8 $e0
	ld l, b                                          ; $661f: $68
	jr nz, jr_00e_6622                               ; $6620: $20 $00

jr_00e_6622:
	ldh [rOCPS], a                                   ; $6622: $e0 $6a
	ld [hl+], a                                      ; $6624: $22
	ld c, $f0                                        ; $6625: $0e $f0
	ld [hl-], a                                      ; $6627: $32
	ld [hl+], a                                      ; $6628: $22
	ld b, $f0                                        ; $6629: $06 $f0
	jr nc, jr_00e_664f                               ; $662b: $30 $22

	ld b, $e0                                        ; $662d: $06 $e0
	ld a, [hl+]                                      ; $662f: $2a

jr_00e_6630:
	jr nz, jr_00e_6630                               ; $6630: $20 $fe

	ldh a, [$2e]                                     ; $6632: $f0 $2e
	ld [hl+], a                                      ; $6634: $22
	cp $e0                                           ; $6635: $fe $e0
	jr z, @+$22                                      ; $6637: $28 $20

	or $f0                                           ; $6639: $f6 $f0
	inc l                                            ; $663b: $2c
	ld [hl+], a                                      ; $663c: $22
	or $e0                                           ; $663d: $f6 $e0
	ld h, $20                                        ; $663f: $26 $20
	ld [$5cd0], sp                                   ; $6641: $08 $d0 $5c
	jr nz, jr_00e_664e                               ; $6644: $20 $08

	ret nz                                           ; $6646: $c0

	inc b                                            ; $6647: $04
	jr nz, jr_00e_664a                               ; $6648: $20 $00

jr_00e_664a:
	ret nc                                           ; $664a: $d0

	ld e, d                                          ; $664b: $5a
	jr nz, jr_00e_664e                               ; $664c: $20 $00

jr_00e_664e:
	ret nz                                           ; $664e: $c0

jr_00e_664f:
	ld [bc], a                                       ; $664f: $02
	jr nz, jr_00e_664a                               ; $6650: $20 $f8

	ret nc                                           ; $6652: $d0

	ld e, b                                          ; $6653: $58
	jr nz, jr_00e_664e                               ; $6654: $20 $f8

	ret nz                                           ; $6656: $c0

	nop                                              ; $6657: $00
	ld hl, $00fc                                     ; $6658: $21 $fc $00
	nop                                              ; $665b: $00
	and b                                            ; $665c: $a0
	db $fc                                           ; $665d: $fc
	ldh a, [rP1]                                     ; $665e: $f0 $00
	ld hl, $f8fc                                     ; $6660: $21 $fc $f8
	ld [bc], a                                       ; $6663: $02
	ld hl, $00fc                                     ; $6664: $21 $fc $00
	ld b, $20                                        ; $6667: $06 $20
	db $fc                                           ; $6669: $fc
	ldh a, [rDIV]                                    ; $666a: $f0 $04
	ld hl, $f8fc                                     ; $666c: $21 $fc $f8
	ld [$0021], sp                                   ; $666f: $08 $21 $00
	ld hl, sp+$02                                    ; $6672: $f8 $02
	jr nz, @-$06                                     ; $6674: $20 $f8

	ld hl, sp+$00                                    ; $6676: $f8 $00
	ld hl, $0129                                     ; $6678: $21 $29 $01
	cp a                                             ; $667b: $bf
	ld hl, sp-$08                                    ; $667c: $f8 $f8
	rst SubAFromDE                                          ; $667e: $df
	db $10                                           ; $667f: $10
	rst $38                                          ; $6680: $ff
	sbc e                                            ; $6681: $9b
	ld b, $04                                        ; $6682: $06 $04
	ld [bc], a                                       ; $6684: $02
	nop                                              ; $6685: $00
	sbc $20                                          ; $6686: $de $20
	sbc [hl]                                         ; $6688: $9e
	ld hl, $f067                                     ; $6689: $21 $67 $f0
	sbc e                                            ; $668c: $9b
	ld c, $0c                                        ; $668d: $0e $0c
	ld a, [bc]                                       ; $668f: $0a
	ld [$22de], sp                                   ; $6690: $08 $de $22
	sbc [hl]                                         ; $6693: $9e
	inc hl                                           ; $6694: $23
	ld h, a                                          ; $6695: $67
	ldh a, [$97]                                     ; $6696: $f0 $97
	ld d, $14                                        ; $6698: $16 $14
	ld [de], a                                       ; $669a: $12
	db $10                                           ; $669b: $10
	ld [hl+], a                                      ; $669c: $22
	ld [hl+], a                                      ; $669d: $22
	inc h                                            ; $669e: $24
	dec h                                            ; $669f: $25
	ld e, a                                          ; $66a0: $5f
	ldh a, [$99]                                     ; $66a1: $f0 $99
	ld a, [de]                                       ; $66a3: $1a
	jr @+$24                                         ; $66a4: $18 $22

	ld [hl+], a                                      ; $66a6: $22
	ld h, $27                                        ; $66a7: $26 $27
	ld h, a                                          ; $66a9: $67
	ldh a, [$9b]                                     ; $66aa: $f0 $9b
	ld [hl+], a                                      ; $66ac: $22
	jr nz, jr_00e_66cd                               ; $66ad: $20 $1e

	inc e                                            ; $66af: $1c
	sbc $28                                          ; $66b0: $de $28
	sbc [hl]                                         ; $66b2: $9e
	add hl, hl                                       ; $66b3: $29
	ld h, a                                          ; $66b4: $67
	ldh a, [$9b]                                     ; $66b5: $f0 $9b
	ld a, [hl+]                                      ; $66b7: $2a
	jr z, jr_00e_66e0                                ; $66b8: $28 $26

	inc h                                            ; $66ba: $24
	ld d, a                                          ; $66bb: $57
	ret nz                                           ; $66bc: $c0

	sbc e                                            ; $66bd: $9b
	ld [hl-], a                                      ; $66be: $32
	jr nc, @+$30                                     ; $66bf: $30 $2e

	inc l                                            ; $66c1: $2c
	sbc $2a                                          ; $66c2: $de $2a
	sbc [hl]                                         ; $66c4: $9e
	dec hl                                           ; $66c5: $2b
	ld e, a                                          ; $66c6: $5f
	ldh a, [$99]                                     ; $66c7: $f0 $99
	ld [hl], $34                                     ; $66c9: $36 $34
	ld a, [hl+]                                      ; $66cb: $2a
	ld a, [hl+]                                      ; $66cc: $2a

jr_00e_66cd:
	inc l                                            ; $66cd: $2c
	dec l                                            ; $66ce: $2d
	ld h, a                                          ; $66cf: $67
	ldh a, [$9b]                                     ; $66d0: $f0 $9b
	ld a, $3c                                        ; $66d2: $3e $3c
	ld a, [hl-]                                      ; $66d4: $3a
	jr c, jr_00e_672e                                ; $66d5: $38 $57

	add b                                            ; $66d7: $80
	sbc e                                            ; $66d8: $9b
	ld b, [hl]                                       ; $66d9: $46
	ld b, h                                          ; $66da: $44
	ld b, d                                          ; $66db: $42
	ld b, b                                          ; $66dc: $40
	ld d, a                                          ; $66dd: $57
	ret nc                                           ; $66de: $d0

	sbc e                                            ; $66df: $9b

jr_00e_66e0:
	cp [hl]                                          ; $66e0: $be
	cp h                                             ; $66e1: $bc
	cp d                                             ; $66e2: $ba
	cp b                                             ; $66e3: $b8
	sbc $2c                                          ; $66e4: $de $2c
	ld a, a                                          ; $66e6: $7f
	ret nc                                           ; $66e7: $d0

	ld a, a                                          ; $66e8: $7f
	pop af                                           ; $66e9: $f1
	ld a, a                                          ; $66ea: $7f
	ldh a, [$bf]                                     ; $66eb: $f0 $bf
	db $10                                           ; $66ed: $10
	add $9a                                          ; $66ee: $c6 $9a
	call nz, $c4c6                                   ; $66f0: $c4 $c6 $c4
	ld l, h                                          ; $66f3: $6c
	ld l, h                                          ; $66f4: $6c
	ld h, a                                          ; $66f5: $67
	ret nz                                           ; $66f6: $c0

	rst SubAFromDE                                          ; $66f7: $df
	ld [$cadf], sp                                   ; $66f8: $08 $df $ca
	sbc e                                            ; $66fb: $9b
	ld c, d                                          ; $66fc: $4a
	ld c, b                                          ; $66fd: $48
	ld l, d                                          ; $66fe: $6a
	dec hl                                           ; $66ff: $2b
	ld l, a                                          ; $6700: $6f
	ret nz                                           ; $6701: $c0

	db $dd                                           ; $6702: $dd
	ld [$4e99], sp                                   ; $6703: $08 $99 $4e
	ld c, h                                          ; $6706: $4c
	ld d, d                                          ; $6707: $52
	ld d, b                                          ; $6708: $50
	ld [hl+], a                                      ; $6709: $22
	inc hl                                           ; $670a: $23
	ld l, a                                          ; $670b: $6f
	ld d, b                                          ; $670c: $50
	db $dd                                           ; $670d: $dd
	ld [$5699], sp                                   ; $670e: $08 $99 $56
	ld d, h                                          ; $6711: $54
	ld e, d                                          ; $6712: $5a
	ld e, b                                          ; $6713: $58
	ld h, $27                                        ; $6714: $26 $27
	ld l, a                                          ; $6716: $6f
	ld h, b                                          ; $6717: $60
	db $dd                                           ; $6718: $dd
	ld [$5e99], sp                                   ; $6719: $08 $99 $5e
	ld e, h                                          ; $671c: $5c
	ld h, d                                          ; $671d: $62
	ld h, b                                          ; $671e: $60
	ld [hl+], a                                      ; $671f: $22
	inc hl                                           ; $6720: $23
	ld l, a                                          ; $6721: $6f
	and b                                            ; $6722: $a0
	db $dd                                           ; $6723: $dd
	ld [$6699], sp                                   ; $6724: $08 $99 $66
	ld h, h                                          ; $6727: $64
	ld l, d                                          ; $6728: $6a
	ld l, b                                          ; $6729: $68
	inc l                                            ; $672a: $2c
	dec l                                            ; $672b: $2d
	ld e, a                                          ; $672c: $5f
	ret nz                                           ; $672d: $c0

jr_00e_672e:
	sbc c                                            ; $672e: $99
	ld l, [hl]                                       ; $672f: $6e
	ld l, h                                          ; $6730: $6c
	jp nz, $2ac0                                     ; $6731: $c2 $c0 $2a

	dec hl                                           ; $6734: $2b
	ld l, a                                          ; $6735: $6f
	and b                                            ; $6736: $a0
	db $dd                                           ; $6737: $dd
	ld [$c8df], sp                                   ; $6738: $08 $df $c8
	rst SubAFromDE                                          ; $673b: $df
	call z, Call_00e_6c9c                            ; $673c: $cc $9c $6c
	dec l                                            ; $673f: $2d
	ld l, d                                          ; $6740: $6a
	ld h, e                                          ; $6741: $63
	ld [hl], b                                       ; $6742: $70
	sbc e                                            ; $6743: $9b
	halt                                             ; $6744: $76
	ld [hl], h                                       ; $6745: $74
	ld [hl], d                                       ; $6746: $72
	ld [hl], b                                       ; $6747: $70
	ld d, a                                          ; $6748: $57
	ld d, b                                          ; $6749: $50
	sbc e                                            ; $674a: $9b
	ld a, [hl]                                       ; $674b: $7e
	ld a, h                                          ; $674c: $7c
	ld a, d                                          ; $674d: $7a
	ld a, b                                          ; $674e: $78
	ld d, a                                          ; $674f: $57
	db $10                                           ; $6750: $10
	sbc e                                            ; $6751: $9b
	add [hl]                                         ; $6752: $86
	add h                                            ; $6753: $84
	add d                                            ; $6754: $82
	add b                                            ; $6755: $80
	sbc $24                                          ; $6756: $de $24
	ld h, d                                          ; $6758: $62
	ret nc                                           ; $6759: $d0

	ld a, a                                          ; $675a: $7f
	ldh a, [$9b]                                     ; $675b: $f0 $9b
	adc d                                            ; $675d: $8a
	adc b                                            ; $675e: $88
	inc h                                            ; $675f: $24
	inc h                                            ; $6760: $24
	ld e, [hl]                                       ; $6761: $5e
	ret nc                                           ; $6762: $d0

	sbc e                                            ; $6763: $9b
	sub d                                            ; $6764: $92
	sub b                                            ; $6765: $90
	adc [hl]                                         ; $6766: $8e
	adc h                                            ; $6767: $8c
	ld d, [hl]                                       ; $6768: $56
	ret nc                                           ; $6769: $d0

	sbc e                                            ; $676a: $9b
	sbc d                                            ; $676b: $9a
	sbc b                                            ; $676c: $98
	sub [hl]                                         ; $676d: $96
	sub h                                            ; $676e: $94
	ld d, a                                          ; $676f: $57
	ret nz                                           ; $6770: $c0

	sbc e                                            ; $6771: $9b
	and d                                            ; $6772: $a2
	and b                                            ; $6773: $a0
	sbc [hl]                                         ; $6774: $9e
	sbc h                                            ; $6775: $9c
	ld d, a                                          ; $6776: $57
	nop                                              ; $6777: $00
	ld a, a                                          ; $6778: $7f
	ldh a, [$9d]                                     ; $6779: $f0 $9d
	and [hl]                                         ; $677b: $a6
	and h                                            ; $677c: $a4
	ld d, [hl]                                       ; $677d: $56
	ret nc                                           ; $677e: $d0

	sbc e                                            ; $677f: $9b
	xor [hl]                                         ; $6780: $ae
	xor h                                            ; $6781: $ac
	xor d                                            ; $6782: $aa
	xor b                                            ; $6783: $a8
	ld d, a                                          ; $6784: $57
	add b                                            ; $6785: $80
	sbc e                                            ; $6786: $9b
	or [hl]                                          ; $6787: $b6
	or h                                             ; $6788: $b4
	or d                                             ; $6789: $b2
	or b                                             ; $678a: $b0
	ld d, a                                          ; $678b: $57
	ret nc                                           ; $678c: $d0

	sbc e                                            ; $678d: $9b
	call nc, $d0d2                                   ; $678e: $d4 $d2 $d0
	adc $76                                          ; $6791: $ce $76
	ret nc                                           ; $6793: $d0

	rst SubAFromDE                                          ; $6794: $df
	ld hl, sp-$41                                    ; $6795: $f8 $bf
	nop                                              ; $6797: $00
	db $10                                           ; $6798: $10
	ld a, a                                          ; $6799: $7f
	rst AddAOntoHL                                          ; $679a: $ef
	sbc e                                            ; $679b: $9b
	sub $d8                                          ; $679c: $d6 $d8
	ret c                                            ; $679e: $d8

	sub $76                                          ; $679f: $d6 $76
	ret nc                                           ; $67a1: $d0

	ld [hl], $01                                     ; $67a2: $36 $01
	sbc e                                            ; $67a4: $9b
	push af                                          ; $67a5: $f5
	db $fd                                           ; $67a6: $fd
	dec b                                            ; $67a7: $05
	db $fd                                           ; $67a8: $fd
	sbc $f0                                          ; $67a9: $de $f0
	sbc d                                            ; $67ab: $9a
	add sp, $04                                      ; $67ac: $e8 $04
	ld b, $08                                        ; $67ae: $06 $08
	nop                                              ; $67b0: $00
	sbc $22                                          ; $67b1: $de $22
	add b                                            ; $67b3: $80
	jr nz, jr_00e_67bb                               ; $67b4: $20 $05

	dec c                                            ; $67b6: $0d
	push af                                          ; $67b7: $f5
	db $fd                                           ; $67b8: $fd
	add sp, -$12                                     ; $67b9: $e8 $ee

jr_00e_67bb:
	ldh a, [$f0]                                     ; $67bb: $f0 $f0
	ld [bc], a                                       ; $67bd: $02
	or $0e                                           ; $67be: $f6 $0e
	db $10                                           ; $67c0: $10
	jr nz, jr_00e_67e6                               ; $67c1: $20 $23

	ld [hl+], a                                      ; $67c3: $22
	ld [hl+], a                                      ; $67c4: $22
	dec b                                            ; $67c5: $05
	db $fd                                           ; $67c6: $fd
	dec b                                            ; $67c7: $05
	dec c                                            ; $67c8: $0d
	ldh a, [$e8]                                     ; $67c9: $f0 $e8
	add sp, -$11                                     ; $67cb: $e8 $ef
	ld [de], a                                       ; $67cd: $12
	ld a, [bc]                                       ; $67ce: $0a
	inc c                                            ; $67cf: $0c
	or $22                                           ; $67d0: $f6 $22
	jr nz, jr_00e_6853                               ; $67d2: $20 $7f

	xor $67                                          ; $67d4: $ee $67
	ret nc                                           ; $67d6: $d0

	sbc e                                            ; $67d7: $9b
	jr jr_00e_67f4                                   ; $67d8: $18 $1a

jr_00e_67da:
	inc e                                            ; $67da: $1c
	inc d                                            ; $67db: $14
	ld h, e                                          ; $67dc: $63
	ret nc                                           ; $67dd: $d0

	sbc $f0                                          ; $67de: $de $f0
	sbc e                                            ; $67e0: $9b
	ld d, $f6                                        ; $67e1: $16 $f6
	jr jr_00e_6803                                   ; $67e3: $18 $1e

	ld e, e                                          ; $67e5: $5b

jr_00e_67e6:
	ret nc                                           ; $67e6: $d0

	sbc e                                            ; $67e7: $9b
	ldh a, [rAUD3LEVEL]                              ; $67e8: $f0 $1c
	inc d                                            ; $67ea: $14
	ld d, $73                                        ; $67eb: $16 $73
	ret nc                                           ; $67ed: $d0

	sbc e                                            ; $67ee: $9b
	or $fe                                           ; $67ef: $f6 $fe
	ld b, $fe                                        ; $67f1: $06 $fe
	ld [hl], a                                       ; $67f3: $77

jr_00e_67f4:
	ret nc                                           ; $67f4: $d0

	sbc e                                            ; $67f5: $9b
	inc h                                            ; $67f6: $24
	ld h, $28                                        ; $67f7: $26 $28
	jr nz, @+$79                                     ; $67f9: $20 $77

	ret nc                                           ; $67fb: $d0

	adc a                                            ; $67fc: $8f
	ld b, $0e                                        ; $67fd: $06 $0e
	ld d, $f6                                        ; $67ff: $16 $f6
	add sp, -$13                                     ; $6801: $e8 $ed

jr_00e_6803:
	db $ed                                           ; $6803: $ed
	ldh a, [rAUD4POLY]                               ; $6804: $f0 $22
	ld hl, sp-$06                                    ; $6806: $f8 $fa
	ld l, $20                                        ; $6808: $2e $20
	ld [hl+], a                                      ; $680a: $22
	inc hl                                           ; $680b: $23
	ld [hl+], a                                      ; $680c: $22
	ld a, e                                          ; $680d: $7b
	pop hl                                           ; $680e: $e1
	sbc [hl]                                         ; $680f: $9e
	ld b, $7b                                        ; $6810: $06 $7b
	pop hl                                           ; $6812: $e1
	sbc d                                            ; $6813: $9a
	add sp, $30                                      ; $6814: $e8 $30
	ld [hl-], a                                      ; $6816: $32
	ld a, [hl+]                                      ; $6817: $2a
	inc l                                            ; $6818: $2c
	ld a, e                                          ; $6819: $7b
	ret nc                                           ; $681a: $d0

	sbc [hl]                                         ; $681b: $9e
	jr nz, jr_00e_6899                               ; $681c: $20 $7b

	pop hl                                           ; $681e: $e1
	sbc l                                            ; $681f: $9d
	cp $ee                                           ; $6820: $fe $ee
	ld a, e                                          ; $6822: $7b
	add b                                            ; $6823: $80
	ld a, a                                          ; $6824: $7f
	pop hl                                           ; $6825: $e1
	sbc l                                            ; $6826: $9d
	inc [hl]                                         ; $6827: $34
	ld [hl], $7b                                     ; $6828: $36 $7b
	pop hl                                           ; $682a: $e1
	sbc [hl]                                         ; $682b: $9e
	ld [hl+], a                                      ; $682c: $22
	ld a, e                                          ; $682d: $7b
	pop hl                                           ; $682e: $e1
	sbc [hl]                                         ; $682f: $9e
	ld c, $7b                                        ; $6830: $0e $7b
	pop hl                                           ; $6832: $e1
	sbc [hl]                                         ; $6833: $9e
	xor $7b                                          ; $6834: $ee $7b
	pop hl                                           ; $6836: $e1
	sbc [hl]                                         ; $6837: $9e
	ld hl, sp-$22                                    ; $6838: $f8 $de
	jr nz, jr_00e_67da                               ; $683a: $20 $9e

	ld [hl+], a                                      ; $683c: $22
	ld a, e                                          ; $683d: $7b
	pop hl                                           ; $683e: $e1
	sbc [hl]                                         ; $683f: $9e
	ld b, $7b                                        ; $6840: $06 $7b
	pop hl                                           ; $6842: $e1
	sbc d                                            ; $6843: $9a
	ldh a, [$fa]                                     ; $6844: $f0 $fa
	inc [hl]                                         ; $6846: $34
	jr c, jr_00e_687b                                ; $6847: $38 $32

	ld a, e                                          ; $6849: $7b
	pop hl                                           ; $684a: $e1
	sbc [hl]                                         ; $684b: $9e
	jr nz, jr_00e_68c9                               ; $684c: $20 $7b

	pop hl                                           ; $684e: $e1
	sbc [hl]                                         ; $684f: $9e
	ld d, $7b                                        ; $6850: $16 $7b
	pop hl                                           ; $6852: $e1

jr_00e_6853:
	sbc [hl]                                         ; $6853: $9e
	xor $7b                                          ; $6854: $ee $7b
	pop hl                                           ; $6856: $e1
	sbc [hl]                                         ; $6857: $9e
	ld a, [$e17b]                                    ; $6858: $fa $7b $e1
	sbc d                                            ; $685b: $9a
	inc hl                                           ; $685c: $23
	ld hl, sp+$00                                    ; $685d: $f8 $00
	ld [$77f8], sp                                   ; $685f: $08 $f8 $77
	sub b                                            ; $6862: $90
	sbc e                                            ; $6863: $9b
	ld a, $40                                        ; $6864: $3e $40
	ld b, d                                          ; $6866: $42
	ld a, [hl-]                                      ; $6867: $3a
	ld [hl], a                                       ; $6868: $77
	sub b                                            ; $6869: $90
	sub e                                            ; $686a: $93
	nop                                              ; $686b: $00
	db $10                                           ; $686c: $10
	ld hl, sp+$00                                    ; $686d: $f8 $00
	add sp, -$14                                     ; $686f: $e8 $ec
	ldh a, [$f0]                                     ; $6871: $f0 $f0
	inc a                                            ; $6873: $3c
	db $f4                                           ; $6874: $f4
	ld c, b                                          ; $6875: $48
	ld c, d                                          ; $6876: $4a
	ld [hl], a                                       ; $6877: $77
	ld h, b                                          ; $6878: $60
	ld a, a                                          ; $6879: $7f
	ldh [c], a                                       ; $687a: $e2

jr_00e_687b:
	ld a, a                                          ; $687b: $7f
	xor $7b                                          ; $687c: $ee $7b
	or b                                             ; $687e: $b0
	sbc d                                            ; $687f: $9a
	db $ed                                           ; $6880: $ed
	ld c, h                                          ; $6881: $4c
	ld b, h                                          ; $6882: $44
	ld b, [hl]                                       ; $6883: $46
	db $f4                                           ; $6884: $f4
	ld [hl], a                                       ; $6885: $77
	ld h, b                                          ; $6886: $60

jr_00e_6887:
	ld h, a                                          ; $6887: $67
	ret nc                                           ; $6888: $d0

	sbc e                                            ; $6889: $9b
	ld c, [hl]                                       ; $688a: $4e
	ld d, b                                          ; $688b: $50
	ld c, h                                          ; $688c: $4c
	ld b, h                                          ; $688d: $44
	ld h, e                                          ; $688e: $63
	ret nc                                           ; $688f: $d0

	ld a, a                                          ; $6890: $7f
	ld h, c                                          ; $6891: $61
	sbc d                                            ; $6892: $9a
	ldh a, [rDMA]                                    ; $6893: $f0 $46
	db $f4                                           ; $6895: $f4
	ld c, [hl]                                       ; $6896: $4e
	ld d, d                                          ; $6897: $52
	rla                                              ; $6898: $17

jr_00e_6899:
	ret nc                                           ; $6899: $d0

	sbc e                                            ; $689a: $9b
	ld e, b                                          ; $689b: $58
	ld e, d                                          ; $689c: $5a
	ld c, h                                          ; $689d: $4c
	ld d, h                                          ; $689e: $54
	ld l, a                                          ; $689f: $6f
	ret nc                                           ; $68a0: $d0

	ld a, a                                          ; $68a1: $7f
	ld l, a                                          ; $68a2: $6f
	ld [hl], a                                       ; $68a3: $77
	ret nc                                           ; $68a4: $d0

	sbc e                                            ; $68a5: $9b
	ld d, [hl]                                       ; $68a6: $56
	db $f4                                           ; $68a7: $f4
	inc h                                            ; $68a8: $24
	ld h, b                                          ; $68a9: $60
	ld [hl], a                                       ; $68aa: $77
	ret nc                                           ; $68ab: $d0

	ld l, e                                          ; $68ac: $6b
	ld d, b                                          ; $68ad: $50
	sbc d                                            ; $68ae: $9a
	db $ed                                           ; $68af: $ed
	ld h, d                                          ; $68b0: $62
	ld e, h                                          ; $68b1: $5c
	ld e, [hl]                                       ; $68b2: $5e
	ld hl, sp+$7b                                    ; $68b3: $f8 $7b
	ret nc                                           ; $68b5: $d0

	ld a, a                                          ; $68b6: $7f
	ld d, b                                          ; $68b7: $50
	ld a, d                                          ; $68b8: $7a
	rst GetHLinHL                                          ; $68b9: $cf
	ld a, e                                          ; $68ba: $7b
	pop hl                                           ; $68bb: $e1
	ld a, a                                          ; $68bc: $7f
	ld d, b                                          ; $68bd: $50
	sbc h                                            ; $68be: $9c
	ld h, h                                          ; $68bf: $64
	ld h, [hl]                                       ; $68c0: $66
	inc e                                            ; $68c1: $1c
	ld [hl], a                                       ; $68c2: $77
	ld d, b                                          ; $68c3: $50
	ld a, d                                          ; $68c4: $7a
	pop hl                                           ; $68c5: $e1
	ld a, a                                          ; $68c6: $7f
	and b                                            ; $68c7: $a0
	ld a, [hl]                                       ; $68c8: $7e

jr_00e_68c9:
	pop hl                                           ; $68c9: $e1
	sbc [hl]                                         ; $68ca: $9e
	ld hl, sp+$7a                                    ; $68cb: $f8 $7a
	pop hl                                           ; $68cd: $e1
	sbc [hl]                                         ; $68ce: $9e
	db $fc                                           ; $68cf: $fc
	ld a, e                                          ; $68d0: $7b
	or c                                             ; $68d1: $b1
	sbc d                                            ; $68d2: $9a
	ld l, [hl]                                       ; $68d3: $6e
	ld hl, sp-$08                                    ; $68d4: $f8 $f8
	db $fc                                           ; $68d6: $fc
	cpl                                              ; $68d7: $2f
	ld d, b                                          ; $68d8: $50
	nop                                              ; $68d9: $00
	cp a                                             ; $68da: $bf
	ld hl, sp-$08                                    ; $68db: $f8 $f8
	rst SubAFromDE                                          ; $68dd: $df
	ldh [$df], a                                     ; $68de: $e0 $df
	ldh a, [$9b]                                     ; $68e0: $f0 $9b
	ld [bc], a                                       ; $68e2: $02
	nop                                              ; $68e3: $00
	ld b, $04                                        ; $68e4: $06 $04
	db $dd                                           ; $68e6: $dd
	jr nz, jr_00e_6887                               ; $68e7: $20 $9e

	db $fc                                           ; $68e9: $fc
	cp a                                             ; $68ea: $bf
	ld hl, sp-$10                                    ; $68eb: $f8 $f0
	ld a, e                                          ; $68ed: $7b
	rst AddAOntoHL                                          ; $68ee: $ef
	sbc d                                            ; $68ef: $9a
	ld [$0002], sp                                   ; $68f0: $08 $02 $00
	inc c                                            ; $68f3: $0c
	inc hl                                           ; $68f4: $23
	sbc $20                                          ; $68f5: $de $20
	sbc [hl]                                         ; $68f7: $9e
	ld hl, sp+$7b                                    ; $68f8: $f8 $7b
	rst AddAOntoHL                                          ; $68fa: $ef
	db $dd                                           ; $68fb: $dd
	ldh a, [$9a]                                     ; $68fc: $f0 $9a
	ld a, [bc]                                       ; $68fe: $0a
	ld c, $0c                                        ; $68ff: $0e $0c
	ld a, [bc]                                       ; $6901: $0a
	jr nz, jr_00e_697f                               ; $6902: $20 $7b

	rst AddAOntoHL                                          ; $6904: $ef
	ld a, a                                          ; $6905: $7f
	ldh a, [c]                                       ; $6906: $f2
	sbc [hl]                                         ; $6907: $9e
	db $fc                                           ; $6908: $fc
	ld [hl], a                                       ; $6909: $77
	pop hl                                           ; $690a: $e1
	sbc c                                            ; $690b: $99
	ldh [rAUD1ENV], a                                ; $690c: $e0 $12
	db $10                                           ; $690e: $10
	ld c, $14                                        ; $690f: $0e $14
	jr nz, @+$7d                                     ; $6911: $20 $7b

	rst AddAOntoHL                                          ; $6913: $ef
	ld a, e                                          ; $6914: $7b
	jp nc, $c073                                     ; $6915: $d2 $73 $c0

	sbc e                                            ; $6918: $9b
	ld d, $18                                        ; $6919: $16 $18
	ld a, [de]                                       ; $691b: $1a
	inc e                                            ; $691c: $1c
	db $dd                                           ; $691d: $dd
	jr nz, @+$81                                     ; $691e: $20 $7f

	pop af                                           ; $6920: $f1
	sbc c                                            ; $6921: $99
	ld e, $20                                        ; $6922: $1e $20
	db $fc                                           ; $6924: $fc
	ldh a, [rAUD4LEN]                                ; $6925: $f0 $20
	inc hl                                           ; $6927: $23
	adc [hl]                                         ; $6928: $8e
	nop                                              ; $6929: $00
	sbc [hl]                                         ; $692a: $9e
	ld hl, sp-$41                                    ; $692b: $f8 $bf
	ld hl, sp-$20                                    ; $692d: $f8 $e0
	sbc b                                            ; $692f: $98
	ldh [$f0], a                                     ; $6930: $e0 $f0
	ldh a, [rP1]                                     ; $6932: $f0 $00
	ld [bc], a                                       ; $6934: $02
	inc b                                            ; $6935: $04
	ld b, $dd                                        ; $6936: $06 $dd
	jr nz, @-$63                                     ; $6938: $20 $9b

	jr jr_00e_694c                                   ; $693a: $18 $10

	ld [$de18], sp                                   ; $693c: $08 $18 $de
	ldh [$99], a                                     ; $693f: $e0 $99
	call c, $2624                                    ; $6941: $dc $24 $26
	inc h                                            ; $6944: $24
	inc l                                            ; $6945: $2c
	ld h, d                                          ; $6946: $62
	sbc $22                                          ; $6947: $de $22
	ld a, a                                          ; $6949: $7f
	pop af                                           ; $694a: $f1
	sub c                                            ; $694b: $91

jr_00e_694c:
	db $fc                                           ; $694c: $fc
	ldh a, [$dc]                                     ; $694d: $f0 $dc
	call c, $e0f0                                    ; $694f: $dc $f0 $e0
	ld a, [hl+]                                      ; $6952: $2a
	jr z, jr_00e_695d                                ; $6953: $28 $08

	ld a, [bc]                                       ; $6955: $0a
	ld [hl+], a                                      ; $6956: $22
	ld [hl+], a                                      ; $6957: $22
	inc hl                                           ; $6958: $23
	jr nz, jr_00e_69c2                               ; $6959: $20 $67

	ret nc                                           ; $695b: $d0

	sbc e                                            ; $695c: $9b

jr_00e_695d:
	inc c                                            ; $695d: $0c
	ld c, $10                                        ; $695e: $0e $10
	ld [de], a                                       ; $6960: $12
	db $dd                                           ; $6961: $dd

jr_00e_6962:
	jr nz, @+$81                                     ; $6962: $20 $7f

	and $9d                                          ; $6964: $e6 $9d
	add sp, -$10                                     ; $6966: $e8 $f0
	ld [hl], e                                       ; $6968: $73
	ret nc                                           ; $6969: $d0

	ld a, a                                          ; $696a: $7f
	rst GetHLinHL                                          ; $696b: $cf
	sub [hl]                                         ; $696c: $96
	ld [hl-], a                                      ; $696d: $32
	ld h, d                                          ; $696e: $62
	ld [hl+], a                                      ; $696f: $22
	ld h, d                                          ; $6970: $62
	ld [hl+], a                                      ; $6971: $22
	add sp, -$20                                     ; $6972: $e8 $e0
	db $fc                                           ; $6974: $fc
	ld [$d077], sp                                   ; $6975: $08 $77 $d0
	sbc e                                            ; $6978: $9b
	jr nc, jr_00e_69a9                               ; $6979: $30 $2e

	inc d                                            ; $697b: $14
	ld a, [de]                                       ; $697c: $1a
	ld [hl], a                                       ; $697d: $77
	ret nc                                           ; $697e: $d0

jr_00e_697f:
	cp a                                             ; $697f: $bf
	ld hl, sp-$08                                    ; $6980: $f8 $f8
	ld [hl], a                                       ; $6982: $77
	ret nc                                           ; $6983: $d0

	sbc e                                            ; $6984: $9b
	jr jr_00e_699d                                   ; $6985: $18 $16

	ld e, $1c                                        ; $6987: $1e $1c
	ld [hl], e                                       ; $6989: $73
	and b                                            ; $698a: $a0
	sbc l                                            ; $698b: $9d
	ld [$6f10], sp                                   ; $698c: $08 $10 $6f
	and b                                            ; $698f: $a0
	ld a, a                                          ; $6990: $7f
	ret nc                                           ; $6991: $d0

	sbc [hl]                                         ; $6992: $9e
	jr c, jr_00e_6a00                                ; $6993: $38 $6b

	and b                                            ; $6995: $a0
	sbc [hl]                                         ; $6996: $9e
	ld hl, sp+$77                                    ; $6997: $f8 $77
	ret nc                                           ; $6999: $d0

	sbc e                                            ; $699a: $9b
	ld [hl], $34                                     ; $699b: $36 $34

jr_00e_699d:
	ld [$6b20], sp                                   ; $699d: $08 $20 $6b
	ret nc                                           ; $69a0: $d0

	sbc [hl]                                         ; $69a1: $9e
	db $fc                                           ; $69a2: $fc
	ld a, e                                          ; $69a3: $7b
	pop de                                           ; $69a4: $d1
	sbc d                                            ; $69a5: $9a
	ldh a, [rAUD4POLY]                               ; $69a6: $f0 $22
	inc b                                            ; $69a8: $04

jr_00e_69a9:
	ld b, $08                                        ; $69a9: $06 $08
	sbc $20                                          ; $69ab: $de $20
	sbc [hl]                                         ; $69ad: $9e
	inc hl                                           ; $69ae: $23
	ld b, a                                          ; $69af: $47
	ld h, b                                          ; $69b0: $60
	ld a, a                                          ; $69b1: $7f
	ld [hl], d                                       ; $69b2: $72
	sbc l                                            ; $69b3: $9d
	ld [$5923], sp                                   ; $69b4: $08 $23 $59
	nop                                              ; $69b7: $00
	sbc [hl]                                         ; $69b8: $9e
	ld hl, sp-$41                                    ; $69b9: $f8 $bf
	ld hl, sp-$20                                    ; $69bb: $f8 $e0
	sbc b                                            ; $69bd: $98
	ldh [$f0], a                                     ; $69be: $e0 $f0
	ldh a, [rP1]                                     ; $69c0: $f0 $00

jr_00e_69c2:
	ld [bc], a                                       ; $69c2: $02
	inc b                                            ; $69c3: $04
	ld b, $dd                                        ; $69c4: $06 $dd
	jr nz, jr_00e_6962                               ; $69c6: $20 $9a

	db $fc                                           ; $69c8: $fc
	nop                                              ; $69c9: $00
	ld hl, sp-$08                                    ; $69ca: $f8 $f8
	ldh a, [$7b]                                     ; $69cc: $f0 $7b
	rst AddAOntoHL                                          ; $69ce: $ef
	sbc d                                            ; $69cf: $9a
	ld [$1a1c], sp                                   ; $69d0: $08 $1c $1a
	inc b                                            ; $69d3: $04
	inc hl                                           ; $69d4: $23
	sbc $20                                          ; $69d5: $de $20
	sbc d                                            ; $69d7: $9a
	nop                                              ; $69d8: $00
	db $fc                                           ; $69d9: $fc
	ldh a, [$f8]                                     ; $69da: $f0 $f8

jr_00e_69dc:
	ldh a, [$7b]                                     ; $69dc: $f0 $7b
	rst AddAOntoHL                                          ; $69de: $ef
	sbc d                                            ; $69df: $9a
	ld b, $08                                        ; $69e0: $06 $08
	ld e, $20                                        ; $69e2: $1e $20
	jr nz, jr_00e_6a61                               ; $69e4: $20 $7b

	rst AddAOntoHL                                          ; $69e6: $ef
	cp a                                             ; $69e7: $bf
	ld hl, sp+$08                                    ; $69e8: $f8 $08

jr_00e_69ea:
	ld a, e                                          ; $69ea: $7b
	pop de                                           ; $69eb: $d1
	sbc d                                            ; $69ec: $9a
	ldh a, [rAUD4POLY]                               ; $69ed: $f0 $22
	ld h, $28                                        ; $69ef: $26 $28
	inc l                                            ; $69f1: $2c
	ld [hl], e                                       ; $69f2: $73
	ret nc                                           ; $69f3: $d0

	ld a, e                                          ; $69f4: $7b
	ldh a, [$7b]                                     ; $69f5: $f0 $7b
	pop hl                                           ; $69f7: $e1
	sbc d                                            ; $69f8: $9a
	ldh [$2a], a                                     ; $69f9: $e0 $2a
	ld a, [bc]                                       ; $69fb: $0a
	inc c                                            ; $69fc: $0c
	ld c, $77                                        ; $69fd: $0e $77
	ret nc                                           ; $69ff: $d0

jr_00e_6a00:
	ld a, a                                          ; $6a00: $7f
	jp nc, $ce7b                                     ; $6a01: $d2 $7b $ce

	sbc $f0                                          ; $6a04: $de $f0
	sbc e                                            ; $6a06: $9b
	db $10                                           ; $6a07: $10
	ld [de], a                                       ; $6a08: $12
	inc d                                            ; $6a09: $14
	jr jr_00e_69ea                                   ; $6a0a: $18 $de

	jr nz, @-$60                                     ; $6a0c: $20 $9e

	inc hl                                           ; $6a0e: $23
	ld b, a                                          ; $6a0f: $47
	nop                                              ; $6a10: $00
	rst SubAFromDE                                          ; $6a11: $df
	ldh a, [$9c]                                     ; $6a12: $f0 $9c
	ld hl, sp+$00                                    ; $6a14: $f8 $00
	ldh a, [$de]                                     ; $6a16: $f0 $de
	ldh [$9b], a                                     ; $6a18: $e0 $9b
	ld b, $00                                        ; $6a1a: $06 $00
	ld [bc], a                                       ; $6a1c: $02
	inc b                                            ; $6a1d: $04
	db $dd                                           ; $6a1e: $dd
	jr nz, jr_00e_6aa0                               ; $6a1f: $20 $7f

	ldh a, [c]                                       ; $6a21: $f2
	sbc l                                            ; $6a22: $9d
	db $fc                                           ; $6a23: $fc
	nop                                              ; $6a24: $00
	sbc $f0                                          ; $6a25: $de $f0
	sbc e                                            ; $6a27: $9b
	ldh [$08], a                                     ; $6a28: $e0 $08

jr_00e_6a2a:
	ld a, [bc]                                       ; $6a2a: $0a
	inc c                                            ; $6a2b: $0c
	ld a, e                                          ; $6a2c: $7b
	ldh a, [$98]                                     ; $6a2d: $f0 $98
	inc hl                                           ; $6a2f: $23
	jr nz, jr_00e_6a2a                               ; $6a30: $20 $f8

	ldh a, [rP1]                                     ; $6a32: $f0 $00
	ld hl, sp-$20                                    ; $6a34: $f8 $e0
	sbc $f0                                          ; $6a36: $de $f0
	sbc e                                            ; $6a38: $9b
	ld c, $10                                        ; $6a39: $0e $10
	ld a, [bc]                                       ; $6a3b: $0a
	ld [de], a                                       ; $6a3c: $12
	db $dd                                           ; $6a3d: $dd
	jr nz, jr_00e_69dc                               ; $6a3e: $20 $9c

	db $fc                                           ; $6a40: $fc
	ld hl, sp+$00                                    ; $6a41: $f8 $00
	ld [hl], a                                       ; $6a43: $77
	ret nc                                           ; $6a44: $d0

	sbc c                                            ; $6a45: $99
	ldh a, [rAUD1HIGH]                               ; $6a46: $f0 $14
	ld c, $04                                        ; $6a48: $0e $04
	ld a, [bc]                                       ; $6a4a: $0a
	inc hl                                           ; $6a4b: $23
	ld [hl], a                                       ; $6a4c: $77
	ret nc                                           ; $6a4d: $d0

	sbc b                                            ; $6a4e: $98

jr_00e_6a4f:
	ldh a, [rAUD2LEN]                                ; $6a4f: $f0 $16
	jr nz, jr_00e_6a4f                               ; $6a51: $20 $fc

	ldh a, [rAUD2LOW]                                ; $6a53: $f0 $18
	inc hl                                           ; $6a55: $23
	ld [hl-], a                                      ; $6a56: $32
	nop                                              ; $6a57: $00
	sbc h                                            ; $6a58: $9c
	nop                                              ; $6a59: $00
	ld hl, sp+$00                                    ; $6a5a: $f8 $00
	call c, $97f8                                    ; $6a5c: $dc $f8 $97
	ld [bc], a                                       ; $6a5f: $02
	nop                                              ; $6a60: $00

jr_00e_6a61:
	ld b, $04                                        ; $6a61: $06 $04
	jr nz, jr_00e_6a86                               ; $6a63: $20 $21

	jr nz, jr_00e_6a88                               ; $6a65: $20 $21

	ld h, a                                          ; $6a67: $67
	ldh a, [$9b]                                     ; $6a68: $f0 $9b
	ld a, [bc]                                       ; $6a6a: $0a
	ld [$0c0e], sp                                   ; $6a6b: $08 $0e $0c
	ld e, a                                          ; $6a6e: $5f
	ldh a, [rIE]                                     ; $6a6f: $f0 $ff
	sub a                                            ; $6a71: $97
	ld [de], a                                       ; $6a72: $12
	db $10                                           ; $6a73: $10
	ld a, [de]                                       ; $6a74: $1a
	jr jr_00e_6a97                                   ; $6a75: $18 $20

	ld hl, $2222                                     ; $6a77: $21 $22 $22
	ld [hl], a                                       ; $6a7a: $77
	ldh a, [$df]                                     ; $6a7b: $f0 $df
	ldh a, [rIE]                                     ; $6a7d: $f0 $ff
	sub a                                            ; $6a7f: $97
	ld d, $14                                        ; $6a80: $16 $14
	ld a, [de]                                       ; $6a82: $1a
	jr jr_00e_6aa7                                   ; $6a83: $18 $22

	inc hl                                           ; $6a85: $23

jr_00e_6a86:
	ld [hl+], a                                      ; $6a86: $22
	inc hl                                           ; $6a87: $23

jr_00e_6a88:
	jr nc, jr_00e_6a8b                               ; $6a88: $30 $01

	cp a                                             ; $6a8a: $bf

jr_00e_6a8b:
	ld hl, sp-$08                                    ; $6a8b: $f8 $f8
	rst SubAFromDE                                          ; $6a8d: $df
	inc b                                            ; $6a8e: $04
	rst SubAFromDE                                          ; $6a8f: $df
	db $fc                                           ; $6a90: $fc
	sbc e                                            ; $6a91: $9b
	inc bc                                           ; $6a92: $03
	ld [bc], a                                       ; $6a93: $02
	ld bc, $de00                                     ; $6a94: $01 $00 $de

jr_00e_6a97:
	ld h, $9e                                        ; $6a97: $26 $9e
	daa                                              ; $6a99: $27
	ld h, a                                          ; $6a9a: $67
	ldh a, [$9d]                                     ; $6a9b: $f0 $9d
	dec b                                            ; $6a9d: $05
	inc b                                            ; $6a9e: $04
	ld c, a                                          ; $6a9f: $4f

jr_00e_6aa0:
	ldh a, [$9d]                                     ; $6aa0: $f0 $9d
	rlca                                             ; $6aa2: $07
	ld b, $4f                                        ; $6aa3: $06 $4f
	ldh a, [$9d]                                     ; $6aa5: $f0 $9d

jr_00e_6aa7:
	add hl, bc                                       ; $6aa7: $09
	ld [$f04f], sp                                   ; $6aa8: $08 $4f $f0
	sbc e                                            ; $6aab: $9b
	dec c                                            ; $6aac: $0d
	inc c                                            ; $6aad: $0c
	dec bc                                           ; $6aae: $0b
	ld a, [bc]                                       ; $6aaf: $0a
	ld d, a                                          ; $6ab0: $57
	ldh a, [$9c]                                     ; $6ab1: $f0 $9c
	rrca                                             ; $6ab3: $0f
	ld c, $50                                        ; $6ab4: $0e $50
	ld d, e                                          ; $6ab6: $53
	ldh a, [$9d]                                     ; $6ab7: $f0 $9d
	ld de, $6b10                                     ; $6ab9: $11 $10 $6b
	ldh [$7f], a                                     ; $6abc: $e0 $7f
	pop af                                           ; $6abe: $f1
	sbc l                                            ; $6abf: $9d
	ld hl, sp-$04                                    ; $6ac0: $f8 $fc
	ld a, e                                          ; $6ac2: $7b
	rst AddAOntoHL                                          ; $6ac3: $ef
	sbc h                                            ; $6ac4: $9c
	ld d, b                                          ; $6ac5: $50
	rrca                                             ; $6ac6: $0f
	ld c, $63                                        ; $6ac7: $0e $63
	ldh a, [$7f]                                     ; $6ac9: $f0 $7f
	ldh a, [c]                                       ; $6acb: $f2
	ld a, a                                          ; $6acc: $7f
	cp $9b                                           ; $6acd: $fe $9b
	rla                                              ; $6acf: $17
	ld d, $15                                        ; $6ad0: $16 $15
	inc d                                            ; $6ad2: $14
	ld d, a                                          ; $6ad3: $57
	ldh a, [$9d]                                     ; $6ad4: $f0 $9d
	add hl, de                                       ; $6ad6: $19
	jr jr_00e_6b28                                   ; $6ad7: $18 $4f

	ldh a, [$9d]                                     ; $6ad9: $f0 $9d
	dec de                                           ; $6adb: $1b
	ld a, [de]                                       ; $6adc: $1a
	ld c, a                                          ; $6add: $4f
	ldh a, [$9d]                                     ; $6ade: $f0 $9d
	dec e                                            ; $6ae0: $1d
	inc e                                            ; $6ae1: $1c
	ld l, e                                          ; $6ae2: $6b
	ldh a, [rOCPD]                                   ; $6ae3: $f0 $6b
	and b                                            ; $6ae5: $a0
	sbc e                                            ; $6ae6: $9b
	ld hl, $1f20                                     ; $6ae7: $21 $20 $1f
	ld e, $de                                        ; $6aea: $1e $de
	jr z, @-$60                                      ; $6aec: $28 $9e

	add hl, hl                                       ; $6aee: $29
	ld h, a                                          ; $6aef: $67
	ldh a, [$9b]                                     ; $6af0: $f0 $9b
	dec h                                            ; $6af2: $25
	inc h                                            ; $6af3: $24
	inc hl                                           ; $6af4: $23
	ld [hl+], a                                      ; $6af5: $22
	ld d, a                                          ; $6af6: $57
	ldh a, [$9b]                                     ; $6af7: $f0 $9b
	ld sp, $2f30                                     ; $6af9: $31 $30 $2f
	ld l, $57                                        ; $6afc: $2e $57
	ldh a, [$9b]                                     ; $6afe: $f0 $9b
	dec [hl]                                         ; $6b00: $35
	inc [hl]                                         ; $6b01: $34
	inc sp                                           ; $6b02: $33
	ld [hl-], a                                      ; $6b03: $32
	ld d, a                                          ; $6b04: $57
	ldh a, [$9b]                                     ; $6b05: $f0 $9b
	add hl, hl                                       ; $6b07: $29
	jr z, @+$29                                      ; $6b08: $28 $27

	ld h, $57                                        ; $6b0a: $26 $57
	ldh a, [$9b]                                     ; $6b0c: $f0 $9b
	dec l                                            ; $6b0e: $2d
	inc l                                            ; $6b0f: $2c
	dec hl                                           ; $6b10: $2b
	ld a, [hl+]                                      ; $6b11: $2a
	ld [hl], a                                       ; $6b12: $77
	ldh a, [$7f]                                     ; $6b13: $f0 $7f
	push af                                          ; $6b15: $f5
	sub c                                            ; $6b16: $91
	db $f4                                           ; $6b17: $f4
	inc b                                            ; $6b18: $04
	inc e                                            ; $6b19: $1c
	inc e                                            ; $6b1a: $1c
	inc d                                            ; $6b1b: $14
	inc d                                            ; $6b1c: $14
	dec a                                            ; $6b1d: $3d
	inc a                                            ; $6b1e: $3c
	ld [hl], $3b                                     ; $6b1f: $36 $3b
	inc c                                            ; $6b21: $0c
	inc c                                            ; $6b22: $0c
	adc h                                            ; $6b23: $8c
	inc c                                            ; $6b24: $0c
	ld a, e                                          ; $6b25: $7b
	add l                                            ; $6b26: $85
	sbc l                                            ; $6b27: $9d

jr_00e_6b28:
	db $f4                                           ; $6b28: $f4
	inc d                                            ; $6b29: $14
	sbc $0c                                          ; $6b2a: $de $0c
	sub a                                            ; $6b2c: $97
	ld a, [hl-]                                      ; $6b2d: $3a
	jr c, @+$3b                                      ; $6b2e: $38 $39

	jr c, @+$0e                                      ; $6b30: $38 $0c

	call z, $0c0c                                    ; $6b32: $cc $0c $0c
	ld [hl], a                                       ; $6b35: $77
	ldh [$de], a                                     ; $6b36: $e0 $de
	inc b                                            ; $6b38: $04
	sub a                                            ; $6b39: $97
	inc e                                            ; $6b3a: $1c
	ld [hl], $37                                     ; $6b3b: $36 $37
	ld [hl], $3d                                     ; $6b3d: $36 $3d
	ld c, h                                          ; $6b3f: $4c
	inc c                                            ; $6b40: $0c
	dec c                                            ; $6b41: $0d
	ld a, e                                          ; $6b42: $7b
	ldh [$9d], a                                     ; $6b43: $e0 $9d
	db $f4                                           ; $6b45: $f4
	db $fc                                           ; $6b46: $fc
	ld a, e                                          ; $6b47: $7b
	pop de                                           ; $6b48: $d1
	sbc d                                            ; $6b49: $9a
	inc d                                            ; $6b4a: $14
	inc a                                            ; $6b4b: $3c
	dec sp                                           ; $6b4c: $3b
	ld [hl], $42                                     ; $6b4d: $36 $42
	ld [hl], a                                       ; $6b4f: $77
	ret nc                                           ; $6b50: $d0

	ld a, e                                          ; $6b51: $7b
	pop af                                           ; $6b52: $f1
	sbc [hl]                                         ; $6b53: $9e
	inc b                                            ; $6b54: $04
	sbc $0c                                          ; $6b55: $de $0c
	sbc d                                            ; $6b57: $9a
	inc b                                            ; $6b58: $04
	ld b, c                                          ; $6b59: $41
	ccf                                              ; $6b5a: $3f
	ld b, b                                          ; $6b5b: $40
	ld [hl], $de                                     ; $6b5c: $36 $de
	inc c                                            ; $6b5e: $0c
	sbc [hl]                                         ; $6b5f: $9e
	ld c, h                                          ; $6b60: $4c
	ld a, e                                          ; $6b61: $7b
	pop de                                           ; $6b62: $d1
	ld a, e                                          ; $6b63: $7b
	ld bc, $1cdf                                     ; $6b64: $01 $df $1c
	sub a                                            ; $6b67: $97
	ld a, $36                                        ; $6b68: $3e $36
	ld c, c                                          ; $6b6a: $49
	ld c, b                                          ; $6b6b: $48
	inc c                                            ; $6b6c: $0c
	dec c                                            ; $6b6d: $0d
	ld c, $0e                                        ; $6b6e: $0e $0e
	ld a, e                                          ; $6b70: $7b
	sub h                                            ; $6b71: $94
	ld a, e                                          ; $6b72: $7b
	or b                                             ; $6b73: $b0
	rst SubAFromDE                                          ; $6b74: $df
	inc d                                            ; $6b75: $14
	sub a                                            ; $6b76: $97
	ld b, a                                          ; $6b77: $47
	ld b, l                                          ; $6b78: $45
	ld b, [hl]                                       ; $6b79: $46
	ld b, e                                          ; $6b7a: $43
	ld c, $4e                                        ; $6b7b: $0e $4e
	ld c, $8e                                        ; $6b7d: $0e $8e
	ld [hl], a                                       ; $6b7f: $77
	ldh [$7b], a                                     ; $6b80: $e0 $7b
	pop de                                           ; $6b82: $d1
	sub [hl]                                         ; $6b83: $96
	inc b                                            ; $6b84: $04
	ld c, a                                          ; $6b85: $4f
	ld b, l                                          ; $6b86: $45
	ld b, e                                          ; $6b87: $43
	ld b, h                                          ; $6b88: $44
	ld c, $0e                                        ; $6b89: $0e $0e
	ld c, [hl]                                       ; $6b8b: $4e
	ld c, [hl]                                       ; $6b8c: $4e
	ld [hl], e                                       ; $6b8d: $73
	pop de                                           ; $6b8e: $d1
	ld a, a                                          ; $6b8f: $7f
	ret nc                                           ; $6b90: $d0

	sbc b                                            ; $6b91: $98
	inc d                                            ; $6b92: $14
	ld b, e                                          ; $6b93: $43
	ld b, e                                          ; $6b94: $43
	ld c, b                                          ; $6b95: $48
	ld b, a                                          ; $6b96: $47
	rrca                                             ; $6b97: $0f
	ld c, [hl]                                       ; $6b98: $4e
	ld a, e                                          ; $6b99: $7b
	ret nc                                           ; $6b9a: $d0

	ld a, e                                          ; $6b9b: $7b
	ld a, a                                          ; $6b9c: $7f
	ld a, a                                          ; $6b9d: $7f
	ldh a, [c]                                       ; $6b9e: $f2
	rst SubAFromDE                                          ; $6b9f: $df
	inc c                                            ; $6ba0: $0c
	sbc e                                            ; $6ba1: $9b
	ld c, c                                          ; $6ba2: $49
	ld c, [hl]                                       ; $6ba3: $4e
	ld c, l                                          ; $6ba4: $4d
	ld c, h                                          ; $6ba5: $4c
	db $dd                                           ; $6ba6: $dd
	ld c, $de                                        ; $6ba7: $0e $de
	db $f4                                           ; $6ba9: $f4
	sub d                                            ; $6baa: $92
	db $fc                                           ; $6bab: $fc
	inc d                                            ; $6bac: $14
	inc b                                            ; $6bad: $04
	inc c                                            ; $6bae: $0c
	inc b                                            ; $6baf: $04
	ld b, e                                          ; $6bb0: $43
	ld b, e                                          ; $6bb1: $43
	ld c, e                                          ; $6bb2: $4b
	ld c, d                                          ; $6bb3: $4a
	adc [hl]                                         ; $6bb4: $8e
	ld c, $0e                                        ; $6bb5: $0e $0e
	rrca                                             ; $6bb7: $0f
	ld h, a                                          ; $6bb8: $67
	nop                                              ; $6bb9: $00
	sbc h                                            ; $6bba: $9c
	nop                                              ; $6bbb: $00
	ld hl, sp-$08                                    ; $6bbc: $f8 $f8
	ld [hl], a                                       ; $6bbe: $77
	db $fd                                           ; $6bbf: $fd
	sbc [hl]                                         ; $6bc0: $9e
	nop                                              ; $6bc1: $00
	db $dd                                           ; $6bc2: $dd
	ld d, c                                          ; $6bc3: $51
	sbc d                                            ; $6bc4: $9a
	xor d                                            ; $6bc5: $aa
	ld [$2b6a], a                                    ; $6bc6: $ea $6a $2b
	nop                                              ; $6bc9: $00
	ld a, e                                          ; $6bca: $7b
	pop af                                           ; $6bcb: $f1
	rst $38                                          ; $6bcc: $ff
	rst SubAFromDE                                          ; $6bcd: $df
	ld hl, sp-$21                                    ; $6bce: $f8 $df
	ld d, h                                          ; $6bd0: $54
	sbc d                                            ; $6bd1: $9a
	ld d, e                                          ; $6bd2: $53
	ld d, d                                          ; $6bd3: $52
	ld l, d                                          ; $6bd4: $6a
	ld a, [hl+]                                      ; $6bd5: $2a
	ld a, [hl+]                                      ; $6bd6: $2a
	ld h, e                                          ; $6bd7: $63
	ldh a, [$9b]                                     ; $6bd8: $f0 $9b
	ld e, b                                          ; $6bda: $58
	ld d, a                                          ; $6bdb: $57
	ld d, [hl]                                       ; $6bdc: $56
	ld d, l                                          ; $6bdd: $55
	sbc $2a                                          ; $6bde: $de $2a
	ld h, e                                          ; $6be0: $63
	ldh a, [$99]                                     ; $6be1: $f0 $99
	ld e, d                                          ; $6be3: $5a
	ld e, c                                          ; $6be4: $59
	ld e, d                                          ; $6be5: $5a
	ld e, c                                          ; $6be6: $59
	xor d                                            ; $6be7: $aa
	xor d                                            ; $6be8: $aa
	ld e, a                                          ; $6be9: $5f
	ldh a, [$9b]                                     ; $6bea: $f0 $9b
	ld e, [hl]                                       ; $6bec: $5e
	ld e, l                                          ; $6bed: $5d
	ld e, h                                          ; $6bee: $5c
	ld e, e                                          ; $6bef: $5b
	ld [hl], a                                       ; $6bf0: $77
	ldh [rPCM34], a                                  ; $6bf1: $e0 $77
	di                                               ; $6bf3: $f3
	ld [hl], a                                       ; $6bf4: $77
	ldh a, [$9b]                                     ; $6bf5: $f0 $9b
	ld h, c                                          ; $6bf7: $61
	ld h, d                                          ; $6bf8: $62
	ld h, b                                          ; $6bf9: $60
	ld e, a                                          ; $6bfa: $5f
	ld l, a                                          ; $6bfb: $6f
	ret nc                                           ; $6bfc: $d0

	ld a, e                                          ; $6bfd: $7b
	pop af                                           ; $6bfe: $f1
	ld a, e                                          ; $6bff: $7b
	ei                                               ; $6c00: $fb
	sbc $5f                                          ; $6c01: $de $5f
	sbc l                                            ; $6c03: $9d
	ld h, e                                          ; $6c04: $63
	ld [$d05b], a                                    ; $6c05: $ea $5b $d0
	sbc e                                            ; $6c08: $9b
	ld h, a                                          ; $6c09: $67
	ld h, [hl]                                       ; $6c0a: $66
	ld h, l                                          ; $6c0b: $65
	ld h, h                                          ; $6c0c: $64
	ld d, a                                          ; $6c0d: $57
	or b                                             ; $6c0e: $b0
	db $dd                                           ; $6c0f: $dd
	ld e, a                                          ; $6c10: $5f
	ld a, a                                          ; $6c11: $7f
	ldh [$7b], a                                     ; $6c12: $e0 $7b
	add b                                            ; $6c14: $80
	ld l, e                                          ; $6c15: $6b
	ld l, a                                          ; $6c16: $6f
	sbc $5f                                          ; $6c17: $de $5f
	sbc d                                            ; $6c19: $9a
	ld l, d                                          ; $6c1a: $6a
	ld [$2a6a], a                                    ; $6c1b: $ea $6a $2a
	dec hl                                           ; $6c1e: $2b
	ld e, h                                          ; $6c1f: $5c
	nop                                              ; $6c20: $00
	sbc e                                            ; $6c21: $9b
	rrca                                             ; $6c22: $0f
	rlca                                             ; $6c23: $07
	rst $38                                          ; $6c24: $ff
	rst FarCall                                          ; $6c25: $f7
	db $dd                                           ; $6c26: $dd
	db $fc                                           ; $6c27: $fc
	sbc e                                            ; $6c28: $9b
	inc b                                            ; $6c29: $04
	inc bc                                           ; $6c2a: $03
	ld [bc], a                                       ; $6c2b: $02
	ld bc, $22dd                                     ; $6c2c: $01 $dd $22
	sbc e                                            ; $6c2f: $9b
	rst AddAOntoHL                                          ; $6c30: $ef
	ld a, [bc]                                       ; $6c31: $0a
	ld [bc], a                                       ; $6c32: $02
	ld a, [$fcdd]                                    ; $6c33: $fa $dd $fc
	sbc d                                            ; $6c36: $9a
	nop                                              ; $6c37: $00
	ld [$0607], sp                                   ; $6c38: $08 $07 $06
	inc hl                                           ; $6c3b: $23
	sbc $22                                          ; $6c3c: $de $22
	sbc e                                            ; $6c3e: $9b
	ldh a, [c]                                       ; $6c3f: $f2
	inc b                                            ; $6c40: $04
	db $fc                                           ; $6c41: $fc
	db $f4                                           ; $6c42: $f4
	db $dd                                           ; $6c43: $dd
	db $fc                                           ; $6c44: $fc
	sbc e                                            ; $6c45: $9b
	dec b                                            ; $6c46: $05
	dec bc                                           ; $6c47: $0b
	ld a, [bc]                                       ; $6c48: $0a
	add hl, bc                                       ; $6c49: $09
	ld a, e                                          ; $6c4a: $7b
	ldh a, [$9a]                                     ; $6c4b: $f0 $9a
	inc hl                                           ; $6c4d: $23
	ld [$f800], sp                                   ; $6c4e: $08 $00 $f8
	nop                                              ; $6c51: $00
	ld [hl], a                                       ; $6c52: $77
	pop hl                                           ; $6c53: $e1
	sbc e                                            ; $6c54: $9b
	ld c, $0d                                        ; $6c55: $0e $0d
	inc c                                            ; $6c57: $0c
	rrca                                             ; $6c58: $0f
	ld a, e                                          ; $6c59: $7b
	pop af                                           ; $6c5a: $f1
	sbc l                                            ; $6c5b: $9d
	ldh [c], a                                       ; $6c5c: $e2
	ld hl, sp+$7b                                    ; $6c5d: $f8 $7b
	ldh a, [$7f]                                     ; $6c5f: $f0 $7f
	db $fd                                           ; $6c61: $fd
	sbc l                                            ; $6c62: $9d
	ld hl, sp+$09                                    ; $6c63: $f8 $09
	sbc $0f                                          ; $6c65: $de $0f
	sub a                                            ; $6c67: $97
	db $10                                           ; $6c68: $10
	and d                                            ; $6c69: $a2
	ld h, d                                          ; $6c6a: $62
	inc hl                                           ; $6c6b: $23
	dec h                                            ; $6c6c: $25
	ld hl, $0119                                     ; $6c6d: $21 $19 $01
	call c, $dd09                                    ; $6c70: $dc $09 $dd
	ld de, $24dd                                     ; $6c73: $11 $dd $24
	sbc e                                            ; $6c76: $9b
	ld de, $1109                                     ; $6c77: $11 $09 $11
	dec h                                            ; $6c7a: $25
	inc sp                                           ; $6c7b: $33
	nop                                              ; $6c7c: $00
	sub e                                            ; $6c7d: $93
	ld d, $1e                                        ; $6c7e: $16 $1e
	ld e, $da                                        ; $6c80: $1e $da
	ld e, $1e                                        ; $6c82: $1e $1e
	ld d, $16                                        ; $6c84: $16 $16
	ld [bc], a                                       ; $6c86: $02
	ld bc, $0000                                     ; $6c87: $01 $00 $00
	sbc $62                                          ; $6c8a: $de $62
	sbc e                                            ; $6c8c: $9b
	ld [hl+], a                                      ; $6c8d: $22
	jp c, $1ee2                                      ; $6c8e: $da $e2 $1e

	ld a, e                                          ; $6c91: $7b
	db $ed                                           ; $6c92: $ed
	sub c                                            ; $6c93: $91
	db $e4                                           ; $6c94: $e4
	call c, $0201                                    ; $6c95: $dc $01 $02
	nop                                              ; $6c98: $00
	ld [bc], a                                       ; $6c99: $02
	ld [hl+], a                                      ; $6c9a: $22
	ld [hl+], a                                      ; $6c9b: $22

Call_00e_6c9c:
	ldh [c], a                                       ; $6c9c: $e2
	ldh [c], a                                       ; $6c9d: $e2
	ld e, $e2                                        ; $6c9e: $1e $e2
	jp c, $deda                                      ; $6ca0: $da $da $de

	call c, $e49d                                    ; $6ca3: $dc $9d $e4
	ld bc, $df7b                                     ; $6ca6: $01 $7b $df
	sbc e                                            ; $6ca9: $9b
	ldh [c], a                                       ; $6caa: $e2
	and d                                            ; $6cab: $a2
	and d                                            ; $6cac: $a2
	and e                                            ; $6cad: $a3
	ld h, h                                          ; $6cae: $64
	nop                                              ; $6caf: $00
	sbc e                                            ; $6cb0: $9b
	ld [$f800], sp                                   ; $6cb1: $08 $00 $f8
	ldh a, [$fd]                                     ; $6cb4: $f0 $fd
	sbc e                                            ; $6cb6: $9b
	ld c, $0c                                        ; $6cb7: $0e $0c
	ld a, [bc]                                       ; $6cb9: $0a
	ld [$24dd], sp                                   ; $6cba: $08 $dd $24
	ld [hl], a                                       ; $6cbd: $77
	ldh a, [$dd]                                     ; $6cbe: $f0 $dd
	ldh a, [$9b]                                     ; $6cc0: $f0 $9b
	ld b, $04                                        ; $6cc2: $06 $04
	ld [bc], a                                       ; $6cc4: $02
	nop                                              ; $6cc5: $00
	sbc $24                                          ; $6cc6: $de $24
	sbc l                                            ; $6cc8: $9d
	dec h                                            ; $6cc9: $25
	db $10                                           ; $6cca: $10
	ld a, e                                          ; $6ccb: $7b
	rst AddAOntoHL                                          ; $6ccc: $ef

jr_00e_6ccd:
	db $dd                                           ; $6ccd: $dd
	db $10                                           ; $6cce: $10
	sbc e                                            ; $6ccf: $9b
	ld a, $3c                                        ; $6cd0: $3e $3c
	ld a, [hl-]                                      ; $6cd2: $3a
	jr c, @-$21                                      ; $6cd3: $38 $dd

	ld [hl+], a                                      ; $6cd5: $22
	sub e                                            ; $6cd6: $93
	ldh a, [$e8]                                     ; $6cd7: $f0 $e8
	db $10                                           ; $6cd9: $10
	ld [$1010], sp                                   ; $6cda: $08 $10 $10
	nop                                              ; $6cdd: $00
	nop                                              ; $6cde: $00
	ld [hl], $34                                     ; $6cdf: $36 $34
	ld [hl-], a                                      ; $6ce1: $32
	jr nc, @-$21                                     ; $6ce2: $30 $dd

	ld [hl+], a                                      ; $6ce4: $22
	ld a, e                                          ; $6ce5: $7b
	pop de                                           ; $6ce6: $d1
	sbc [hl]                                         ; $6ce7: $9e
	add sp, -$03                                     ; $6ce8: $e8 $fd
	sbc e                                            ; $6cea: $9b
	ld l, $2c                                        ; $6ceb: $2e $2c
	ld a, [hl+]                                      ; $6ced: $2a
	jr z, jr_00e_6ccd                                ; $6cee: $28 $dd

	ld [hl+], a                                      ; $6cf0: $22
	ld [hl], a                                       ; $6cf1: $77
	ret nc                                           ; $6cf2: $d0

	db $dd                                           ; $6cf3: $dd
	ldh a, [$9b]                                     ; $6cf4: $f0 $9b
	ld h, $24                                        ; $6cf6: $26 $24
	ld [hl+], a                                      ; $6cf8: $22
	jr nz, jr_00e_6d62                               ; $6cf9: $20 $67

	ret nc                                           ; $6cfb: $d0

	rst SubAFromDE                                          ; $6cfc: $df
	ldh a, [$df]                                     ; $6cfd: $f0 $df
	ldh [$9b], a                                     ; $6cff: $e0 $9b
	ld e, $1c                                        ; $6d01: $1e $1c
	ld a, [de]                                       ; $6d03: $1a
	jr jr_00e_6d6d                                   ; $6d04: $18 $67

	ret nc                                           ; $6d06: $d0

	db $dd                                           ; $6d07: $dd
	ldh [$9b], a                                     ; $6d08: $e0 $9b
	ld d, $14                                        ; $6d0a: $16 $14
	ld [de], a                                       ; $6d0c: $12
	db $10                                           ; $6d0d: $10
	sbc $22                                          ; $6d0e: $de $22
	sbc [hl]                                         ; $6d10: $9e
	inc hl                                           ; $6d11: $23
	adc h                                            ; $6d12: $8c
	ld l, l                                          ; $6d13: $6d
	xor a                                            ; $6d14: $af
	ld l, l                                          ; $6d15: $6d
	cp a                                             ; $6d16: $bf
	ld l, l                                          ; $6d17: $6d
	pop af                                           ; $6d18: $f1
	ld l, l                                          ; $6d19: $6d
	cp $6d                                           ; $6d1a: $fe $6d
	dec bc                                           ; $6d1c: $0b
	ld l, [hl]                                       ; $6d1d: $6e
	jr jr_00e_6d8e                                   ; $6d1e: $18 $6e

	rra                                              ; $6d20: $1f
	ld l, [hl]                                       ; $6d21: $6e
	ld h, $6e                                        ; $6d22: $26 $6e
	dec l                                            ; $6d24: $2d
	ld l, [hl]                                       ; $6d25: $6e
	ld a, [hl-]                                      ; $6d26: $3a
	ld l, [hl]                                       ; $6d27: $6e
	ld b, a                                          ; $6d28: $47
	ld l, [hl]                                       ; $6d29: $6e
	ld d, h                                          ; $6d2a: $54
	ld l, [hl]                                       ; $6d2b: $6e
	ld h, c                                          ; $6d2c: $61
	ld l, [hl]                                       ; $6d2d: $6e
	ld l, [hl]                                       ; $6d2e: $6e
	ld l, [hl]                                       ; $6d2f: $6e
	ld a, e                                          ; $6d30: $7b
	ld l, [hl]                                       ; $6d31: $6e
	sub h                                            ; $6d32: $94
	ld l, [hl]                                       ; $6d33: $6e
	or b                                             ; $6d34: $b0
	ld l, [hl]                                       ; $6d35: $6e
	call z, $d66e                                    ; $6d36: $cc $6e $d6
	ld l, [hl]                                       ; $6d39: $6e
	db $dd                                           ; $6d3a: $dd
	ld l, [hl]                                       ; $6d3b: $6e
	or $6e                                           ; $6d3c: $f6 $6e
	inc bc                                           ; $6d3e: $03
	ld l, a                                          ; $6d3f: $6f
	rlca                                             ; $6d40: $07
	ld l, a                                          ; $6d41: $6f
	inc d                                            ; $6d42: $14
	ld l, a                                          ; $6d43: $6f
	ld hl, $3a6f                                     ; $6d44: $21 $6f $3a
	ld l, a                                          ; $6d47: $6f
	ld b, c                                          ; $6d48: $41
	ld l, a                                          ; $6d49: $6f
	ld c, b                                          ; $6d4a: $48
	ld l, a                                          ; $6d4b: $6f
	ld c, a                                          ; $6d4c: $4f
	ld l, a                                          ; $6d4d: $6f
	ld d, [hl]                                       ; $6d4e: $56
	ld l, a                                          ; $6d4f: $6f
	ld e, l                                          ; $6d50: $5d
	ld l, a                                          ; $6d51: $6f
	add d                                            ; $6d52: $82
	ld l, a                                          ; $6d53: $6f
	adc c                                            ; $6d54: $89
	ld l, a                                          ; $6d55: $6f
	or h                                             ; $6d56: $b4
	ld l, a                                          ; $6d57: $6f
	cp e                                             ; $6d58: $bb
	ld l, a                                          ; $6d59: $6f
	bit 5, a                                         ; $6d5a: $cb $6f
	jp nc, $eb6f                                     ; $6d5c: $d2 $6f $eb

	ld l, a                                          ; $6d5f: $6f
	ldh a, [c]                                       ; $6d60: $f2
	ld l, a                                          ; $6d61: $6f

jr_00e_6d62:
	dec b                                            ; $6d62: $05
	ld [hl], b                                       ; $6d63: $70
	inc c                                            ; $6d64: $0c
	ld [hl], b                                       ; $6d65: $70
	ld a, [hl-]                                      ; $6d66: $3a
	ld [hl], b                                       ; $6d67: $70
	ld b, c                                          ; $6d68: $41
	ld [hl], b                                       ; $6d69: $70
	ld c, b                                          ; $6d6a: $48
	ld [hl], b                                       ; $6d6b: $70
	ld c, a                                          ; $6d6c: $4f

jr_00e_6d6d:
	ld [hl], b                                       ; $6d6d: $70
	ld [hl], h                                       ; $6d6e: $74
	ld [hl], b                                       ; $6d6f: $70
	ld a, e                                          ; $6d70: $7b
	ld [hl], b                                       ; $6d71: $70
	adc [hl]                                         ; $6d72: $8e
	ld [hl], b                                       ; $6d73: $70
	sub l                                            ; $6d74: $95
	ld [hl], b                                       ; $6d75: $70
	and d                                            ; $6d76: $a2
	ld [hl], b                                       ; $6d77: $70
	xor c                                            ; $6d78: $a9
	ld [hl], b                                       ; $6d79: $70
	or b                                             ; $6d7a: $b0
	ld [hl], b                                       ; $6d7b: $70
	or a                                             ; $6d7c: $b7
	ld [hl], b                                       ; $6d7d: $70
	jp z, $d170                                      ; $6d7e: $ca $70 $d1

	ld [hl], b                                       ; $6d81: $70
	rst SubAFromBC                                          ; $6d82: $e7
	ld [hl], b                                       ; $6d83: $70
	xor $70                                          ; $6d84: $ee $70
	push af                                          ; $6d86: $f5
	ld [hl], b                                       ; $6d87: $70
	ld [bc], a                                       ; $6d88: $02
	ld [hl], c                                       ; $6d89: $71
	rrca                                             ; $6d8a: $0f

jr_00e_6d8b:
	ld [hl], c                                       ; $6d8b: $71
	jr z, jr_00e_6d9e                                ; $6d8c: $28 $10

jr_00e_6d8e:
	nop                                              ; $6d8e: $00
	jr z, jr_00e_6db9                                ; $6d8f: $28 $28

	nop                                              ; $6d91: $00
	jr z, jr_00e_6dd8                                ; $6d92: $28 $44

	nop                                              ; $6d94: $00
	jr z, jr_00e_6dbf                                ; $6d95: $28 $28

	nop                                              ; $6d97: $00
	cp $02                                           ; $6d98: $fe $02
	pop de                                           ; $6d9a: $d1
	ld l, l                                          ; $6d9b: $6d
	inc e                                            ; $6d9c: $1c
	ld a, [hl+]                                      ; $6d9d: $2a

jr_00e_6d9e:
	stop                                             ; $6d9e: $10 $00
	jr z, @+$2a                                      ; $6da0: $28 $28

	nop                                              ; $6da2: $00
	jr z, jr_00e_6de9                                ; $6da3: $28 $44

	nop                                              ; $6da5: $00
	cp $02                                           ; $6da6: $fe $02
	nop                                              ; $6da8: $00
	sub e                                            ; $6da9: $93
	nop                                              ; $6daa: $00
	ld a, [hl+]                                      ; $6dab: $2a
	jr z, jr_00e_6dae                                ; $6dac: $28 $00

jr_00e_6dae:
	rst $38                                          ; $6dae: $ff
	ld a, [bc]                                       ; $6daf: $0a
	db $10                                           ; $6db0: $10
	ld b, b                                          ; $6db1: $40
	ld a, [bc]                                       ; $6db2: $0a
	jr z, jr_00e_6df5                                ; $6db3: $28 $40

	ld a, [bc]                                       ; $6db5: $0a
	db $10                                           ; $6db6: $10
	ld b, b                                          ; $6db7: $40
	ld a, [bc]                                       ; $6db8: $0a

jr_00e_6db9:
	jr z, jr_00e_6dfb                                ; $6db9: $28 $40

	nop                                              ; $6dbb: $00
	db $10                                           ; $6dbc: $10
	ld b, b                                          ; $6dbd: $40
	rst $38                                          ; $6dbe: $ff

jr_00e_6dbf:
	ld a, [bc]                                       ; $6dbf: $0a
	db $10                                           ; $6dc0: $10
	ret nz                                           ; $6dc1: $c0

	ld a, [bc]                                       ; $6dc2: $0a
	jr z, @-$3e                                      ; $6dc3: $28 $c0

	ld a, [bc]                                       ; $6dc5: $0a
	db $10                                           ; $6dc6: $10
	ret nz                                           ; $6dc7: $c0

	ld a, [bc]                                       ; $6dc8: $0a
	jr z, jr_00e_6d8b                                ; $6dc9: $28 $c0

	ld a, [bc]                                       ; $6dcb: $0a
	db $10                                           ; $6dcc: $10
	ret nz                                           ; $6dcd: $c0

	nop                                              ; $6dce: $00
	rst $38                                          ; $6dcf: $ff
	rst $38                                          ; $6dd0: $ff
	rst $38                                          ; $6dd1: $ff
	rst $38                                          ; $6dd2: $ff
	rst $38                                          ; $6dd3: $ff
	rst $38                                          ; $6dd4: $ff
	rst $38                                          ; $6dd5: $ff
	rst $38                                          ; $6dd6: $ff
	rst $38                                          ; $6dd7: $ff

jr_00e_6dd8:
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

jr_00e_6de9:
	rst $38                                          ; $6de9: $ff
	rst $38                                          ; $6dea: $ff

jr_00e_6deb:
	rst $38                                          ; $6deb: $ff
	rst $38                                          ; $6dec: $ff
	rst $38                                          ; $6ded: $ff
	rst $38                                          ; $6dee: $ff
	rst $38                                          ; $6def: $ff
	rst $38                                          ; $6df0: $ff
	ld [de], a                                       ; $6df1: $12
	add e                                            ; $6df2: $83
	nop                                              ; $6df3: $00
	ld [de], a                                       ; $6df4: $12

jr_00e_6df5:
	sub e                                            ; $6df5: $93
	nop                                              ; $6df6: $00
	ld [de], a                                       ; $6df7: $12
	and e                                            ; $6df8: $a3
	nop                                              ; $6df9: $00
	ld [de], a                                       ; $6dfa: $12

jr_00e_6dfb:
	or e                                             ; $6dfb: $b3
	nop                                              ; $6dfc: $00
	rst $38                                          ; $6dfd: $ff

jr_00e_6dfe:
	ld [de], a                                       ; $6dfe: $12
	ld b, e                                          ; $6dff: $43
	nop                                              ; $6e00: $00
	ld [de], a                                       ; $6e01: $12
	ld d, e                                          ; $6e02: $53
	nop                                              ; $6e03: $00
	ld [de], a                                       ; $6e04: $12
	ld h, e                                          ; $6e05: $63
	nop                                              ; $6e06: $00
	ld [de], a                                       ; $6e07: $12
	ld [hl], e                                       ; $6e08: $73
	nop                                              ; $6e09: $00
	rst $38                                          ; $6e0a: $ff
	ld [de], a                                       ; $6e0b: $12
	inc bc                                           ; $6e0c: $03
	nop                                              ; $6e0d: $00
	ld [de], a                                       ; $6e0e: $12
	inc de                                           ; $6e0f: $13
	nop                                              ; $6e10: $00
	ld [de], a                                       ; $6e11: $12
	inc hl                                           ; $6e12: $23
	nop                                              ; $6e13: $00
	ld [de], a                                       ; $6e14: $12
	inc sp                                           ; $6e15: $33
	nop                                              ; $6e16: $00

jr_00e_6e17:
	rst $38                                          ; $6e17: $ff
	jr z, jr_00e_6e1d                                ; $6e18: $28 $03

	ld bc, $1328                                     ; $6e1a: $01 $28 $13

jr_00e_6e1d:
	ld bc, $28ff                                     ; $6e1d: $01 $ff $28
	db $e3                                           ; $6e20: $e3
	nop                                              ; $6e21: $00
	jr z, jr_00e_6e17                                ; $6e22: $28 $f3

	nop                                              ; $6e24: $00
	rst $38                                          ; $6e25: $ff
	jr z, jr_00e_6deb                                ; $6e26: $28 $c3

	nop                                              ; $6e28: $00
	jr z, jr_00e_6dfe                                ; $6e29: $28 $d3

	nop                                              ; $6e2b: $00
	rst $38                                          ; $6e2c: $ff
	inc c                                            ; $6e2d: $0c
	inc bc                                           ; $6e2e: $03
	nop                                              ; $6e2f: $00
	inc c                                            ; $6e30: $0c
	dec de                                           ; $6e31: $1b
	nop                                              ; $6e32: $00
	inc c                                            ; $6e33: $0c
	inc sp                                           ; $6e34: $33
	nop                                              ; $6e35: $00
	inc c                                            ; $6e36: $0c
	ld c, e                                          ; $6e37: $4b
	nop                                              ; $6e38: $00
	rst $38                                          ; $6e39: $ff
	inc c                                            ; $6e3a: $0c
	db $d3                                           ; $6e3b: $d3
	nop                                              ; $6e3c: $00
	inc c                                            ; $6e3d: $0c
	db $eb                                           ; $6e3e: $eb
	nop                                              ; $6e3f: $00
	inc c                                            ; $6e40: $0c
	inc bc                                           ; $6e41: $03
	ld bc, $1b0c                                     ; $6e42: $01 $0c $1b
	ld bc, $0cff                                     ; $6e45: $01 $ff $0c
	ld h, e                                          ; $6e48: $63
	nop                                              ; $6e49: $00
	inc c                                            ; $6e4a: $0c
	ld a, a                                          ; $6e4b: $7f
	nop                                              ; $6e4c: $00
	inc c                                            ; $6e4d: $0c
	sbc e                                            ; $6e4e: $9b
	nop                                              ; $6e4f: $00
	inc c                                            ; $6e50: $0c
	or a                                             ; $6e51: $b7
	nop                                              ; $6e52: $00
	rst $38                                          ; $6e53: $ff
	inc c                                            ; $6e54: $0c
	ld d, l                                          ; $6e55: $55
	dec d                                            ; $6e56: $15
	inc c                                            ; $6e57: $0c
	ld l, l                                          ; $6e58: $6d
	dec d                                            ; $6e59: $15
	inc c                                            ; $6e5a: $0c
	add l                                            ; $6e5b: $85
	dec d                                            ; $6e5c: $15
	inc c                                            ; $6e5d: $0c
	sbc l                                            ; $6e5e: $9d
	dec d                                            ; $6e5f: $15
	rst $38                                          ; $6e60: $ff
	inc c                                            ; $6e61: $0c
	dec h                                            ; $6e62: $25
	ld d, $0c                                        ; $6e63: $16 $0c
	dec a                                            ; $6e65: $3d
	ld d, $0c                                        ; $6e66: $16 $0c
	ld d, l                                          ; $6e68: $55
	ld d, $0c                                        ; $6e69: $16 $0c
	ld l, l                                          ; $6e6b: $6d
	ld d, $ff                                        ; $6e6c: $16 $ff
	inc c                                            ; $6e6e: $0c
	or l                                             ; $6e6f: $b5
	dec d                                            ; $6e70: $15
	inc c                                            ; $6e71: $0c
	pop de                                           ; $6e72: $d1
	dec d                                            ; $6e73: $15
	inc c                                            ; $6e74: $0c
	db $ed                                           ; $6e75: $ed
	dec d                                            ; $6e76: $15
	inc c                                            ; $6e77: $0c
	add hl, bc                                       ; $6e78: $09
	ld d, $ff                                        ; $6e79: $16 $ff
	inc d                                            ; $6e7b: $14
	inc bc                                           ; $6e7c: $03
	nop                                              ; $6e7d: $00
	inc d                                            ; $6e7e: $14
	rla                                              ; $6e7f: $17
	nop                                              ; $6e80: $00
	inc d                                            ; $6e81: $14
	inc bc                                           ; $6e82: $03
	nop                                              ; $6e83: $00
	inc d                                            ; $6e84: $14
	rla                                              ; $6e85: $17
	nop                                              ; $6e86: $00
	inc d                                            ; $6e87: $14
	inc bc                                           ; $6e88: $03
	nop                                              ; $6e89: $00
	inc d                                            ; $6e8a: $14
	rla                                              ; $6e8b: $17
	nop                                              ; $6e8c: $00
	inc d                                            ; $6e8d: $14
	dec hl                                           ; $6e8e: $2b
	nop                                              ; $6e8f: $00
	add hl, de                                       ; $6e90: $19
	ccf                                              ; $6e91: $3f
	nop                                              ; $6e92: $00
	rst $38                                          ; $6e93: $ff
	ld l, $a3                                        ; $6e94: $2e $a3
	nop                                              ; $6e96: $00
	ld h, $03                                        ; $6e97: $26 $03
	nop                                              ; $6e99: $00
	ld h, $2f                                        ; $6e9a: $26 $2f
	nop                                              ; $6e9c: $00
	ld h, $5f                                        ; $6e9d: $26 $5f
	nop                                              ; $6e9f: $00
	ld h, $2f                                        ; $6ea0: $26 $2f
	nop                                              ; $6ea2: $00
	ld h, $5f                                        ; $6ea3: $26 $5f
	nop                                              ; $6ea5: $00
	ld h, $2f                                        ; $6ea6: $26 $2f
	nop                                              ; $6ea8: $00
	ld h, $5f                                        ; $6ea9: $26 $5f
	nop                                              ; $6eab: $00
	ld h, $8f                                        ; $6eac: $26 $8f
	nop                                              ; $6eae: $00
	rst $38                                          ; $6eaf: $ff
	ld e, $03                                        ; $6eb0: $1e $03
	nop                                              ; $6eb2: $00
	jr @+$49                                         ; $6eb3: $18 $47

	nop                                              ; $6eb5: $00
	jr @+$2d                                         ; $6eb6: $18 $2b

	nop                                              ; $6eb8: $00
	jr @+$49                                         ; $6eb9: $18 $47

	nop                                              ; $6ebb: $00
	jr @+$2d                                         ; $6ebc: $18 $2b

	nop                                              ; $6ebe: $00
	jr jr_00e_6f08                                   ; $6ebf: $18 $47

	nop                                              ; $6ec1: $00
	jr jr_00e_6eef                                   ; $6ec2: $18 $2b

	nop                                              ; $6ec4: $00
	jr jr_00e_6eca                                   ; $6ec5: $18 $03

	nop                                              ; $6ec7: $00
	ld a, [de]                                       ; $6ec8: $1a
	rla                                              ; $6ec9: $17

jr_00e_6eca:
	nop                                              ; $6eca: $00
	rst $38                                          ; $6ecb: $ff
	add hl, hl                                       ; $6ecc: $29
	inc bc                                           ; $6ecd: $03
	nop                                              ; $6ece: $00
	ld e, $1f                                        ; $6ecf: $1e $1f
	nop                                              ; $6ed1: $00
	ld e, $37                                        ; $6ed2: $1e $37
	nop                                              ; $6ed4: $00
	rst $38                                          ; $6ed5: $ff
	ld [de], a                                       ; $6ed6: $12
	sub b                                            ; $6ed7: $90
	scf                                              ; $6ed8: $37
	ld [de], a                                       ; $6ed9: $12
	and h                                            ; $6eda: $a4
	scf                                              ; $6edb: $37
	rst $38                                          ; $6edc: $ff
	inc c                                            ; $6edd: $0c
	call c, $0d37                                    ; $6ede: $dc $37 $0d
	call z, $0f37                                    ; $6ee1: $cc $37 $0f
	cp h                                             ; $6ee4: $bc
	scf                                              ; $6ee5: $37
	dec c                                            ; $6ee6: $0d
	call z, $0c37                                    ; $6ee7: $cc $37 $0c
	call c, $0d37                                    ; $6eea: $dc $37 $0d
	db $ec                                           ; $6eed: $ec
	scf                                              ; $6eee: $37

jr_00e_6eef:
	rrca                                             ; $6eef: $0f
	db $fc                                           ; $6ef0: $fc
	scf                                              ; $6ef1: $37
	dec c                                            ; $6ef2: $0d
	db $ec                                           ; $6ef3: $ec
	scf                                              ; $6ef4: $37
	rst $38                                          ; $6ef5: $ff
	inc c                                            ; $6ef6: $0c
	inc c                                            ; $6ef7: $0c
	jr c, @+$0e                                      ; $6ef8: $38 $0c

	inc e                                            ; $6efa: $1c
	jr c, jr_00e_6f09                                ; $6efb: $38 $0c

	inc l                                            ; $6efd: $2c
	jr c, jr_00e_6f0c                                ; $6efe: $38 $0c

	inc a                                            ; $6f00: $3c
	jr c, @+$01                                      ; $6f01: $38 $ff

	ld b, b                                          ; $6f03: $40
	ld c, h                                          ; $6f04: $4c
	jr c, @+$01                                      ; $6f05: $38 $ff

	inc c                                            ; $6f07: $0c

jr_00e_6f08:
	ld e, h                                          ; $6f08: $5c

jr_00e_6f09:
	jr c, @+$0e                                      ; $6f09: $38 $0c

	ld l, h                                          ; $6f0b: $6c

jr_00e_6f0c:
	jr c, @+$0e                                      ; $6f0c: $38 $0c

	ld a, h                                          ; $6f0e: $7c
	jr c, @+$0e                                      ; $6f0f: $38 $0c

	adc h                                            ; $6f11: $8c
	jr c, @+$01                                      ; $6f12: $38 $ff

	inc c                                            ; $6f14: $0c
	sbc h                                            ; $6f15: $9c
	jr c, jr_00e_6f24                                ; $6f16: $38 $0c

	cp h                                             ; $6f18: $bc
	jr c, jr_00e_6f27                                ; $6f19: $38 $0c

	call c, $0c38                                    ; $6f1b: $dc $38 $0c
	db $fc                                           ; $6f1e: $fc
	jr c, @+$01                                      ; $6f1f: $38 $ff

	db $10                                           ; $6f21: $10
	inc e                                            ; $6f22: $1c
	add hl, sp                                       ; $6f23: $39

jr_00e_6f24:
	rrca                                             ; $6f24: $0f
	inc a                                            ; $6f25: $3c
	add hl, sp                                       ; $6f26: $39

jr_00e_6f27:
	ld c, $5c                                        ; $6f27: $0e $5c
	add hl, sp                                       ; $6f29: $39
	dec c                                            ; $6f2a: $0d
	ld l, h                                          ; $6f2b: $6c
	add hl, sp                                       ; $6f2c: $39
	inc c                                            ; $6f2d: $0c
	adc h                                            ; $6f2e: $8c
	add hl, sp                                       ; $6f2f: $39
	dec c                                            ; $6f30: $0d
	ld l, h                                          ; $6f31: $6c
	add hl, sp                                       ; $6f32: $39
	ld c, $5c                                        ; $6f33: $0e $5c
	add hl, sp                                       ; $6f35: $39
	rrca                                             ; $6f36: $0f
	inc a                                            ; $6f37: $3c
	add hl, sp                                       ; $6f38: $39
	rst $38                                          ; $6f39: $ff
	db $10                                           ; $6f3a: $10
	xor h                                            ; $6f3b: $ac
	add hl, sp                                       ; $6f3c: $39
	db $10                                           ; $6f3d: $10
	ldh [$39], a                                     ; $6f3e: $e0 $39
	rst $38                                          ; $6f40: $ff
	db $10                                           ; $6f41: $10
	db $10                                           ; $6f42: $10
	ld a, [hl-]                                      ; $6f43: $3a
	dec c                                            ; $6f44: $0d
	ld d, h                                          ; $6f45: $54
	ld a, [hl-]                                      ; $6f46: $3a
	rst $38                                          ; $6f47: $ff
	ld de, $3a90                                     ; $6f48: $11 $90 $3a
	ld de, $3acc                                     ; $6f4b: $11 $cc $3a
	rst $38                                          ; $6f4e: $ff
	dec h                                            ; $6f4f: $25
	ld [$1a3b], sp                                   ; $6f50: $08 $3b $1a
	ld b, b                                          ; $6f53: $40
	dec sp                                           ; $6f54: $3b
	rst $38                                          ; $6f55: $ff
	ld de, $3b78                                     ; $6f56: $11 $78 $3b
	ld de, $3bac                                     ; $6f59: $11 $ac $3b
	rst $38                                          ; $6f5c: $ff
	ld [de], a                                       ; $6f5d: $12
	ldh [$3b], a                                     ; $6f5e: $e0 $3b
	ld [$3c14], sp                                   ; $6f60: $08 $14 $3c
	ld [de], a                                       ; $6f63: $12
	ld c, h                                          ; $6f64: $4c
	inc a                                            ; $6f65: $3c
	ld b, $14                                        ; $6f66: $06 $14
	inc a                                            ; $6f68: $3c
	ld c, $e0                                        ; $6f69: $0e $e0
	dec sp                                           ; $6f6b: $3b
	ld b, $14                                        ; $6f6c: $06 $14
	inc a                                            ; $6f6e: $3c
	db $10                                           ; $6f6f: $10
	ld c, h                                          ; $6f70: $4c
	inc a                                            ; $6f71: $3c
	ld b, $14                                        ; $6f72: $06 $14
	inc a                                            ; $6f74: $3c
	ld [de], a                                       ; $6f75: $12
	ldh [$3b], a                                     ; $6f76: $e0 $3b
	dec bc                                           ; $6f78: $0b
	inc d                                            ; $6f79: $14
	inc a                                            ; $6f7a: $3c
	inc d                                            ; $6f7b: $14
	ld c, h                                          ; $6f7c: $4c
	inc a                                            ; $6f7d: $3c
	rlca                                             ; $6f7e: $07
	inc d                                            ; $6f7f: $14
	inc a                                            ; $6f80: $3c
	rst $38                                          ; $6f81: $ff
	ld de, $3c88                                     ; $6f82: $11 $88 $3c
	ld de, $3cc4                                     ; $6f85: $11 $c4 $3c
	rst $38                                          ; $6f88: $ff
	dec bc                                           ; $6f89: $0b
	db $fc                                           ; $6f8a: $fc
	inc a                                            ; $6f8b: $3c
	dec bc                                           ; $6f8c: $0b
	jr nc, @+$3f                                     ; $6f8d: $30 $3d

	dec bc                                           ; $6f8f: $0b
	ld h, h                                          ; $6f90: $64
	dec a                                            ; $6f91: $3d
	dec bc                                           ; $6f92: $0b
	jr nc, jr_00e_6fd2                               ; $6f93: $30 $3d

	dec bc                                           ; $6f95: $0b
	ld h, h                                          ; $6f96: $64
	dec a                                            ; $6f97: $3d
	dec bc                                           ; $6f98: $0b
	jr nc, jr_00e_6fd8                               ; $6f99: $30 $3d

	dec bc                                           ; $6f9b: $0b
	ld h, h                                          ; $6f9c: $64
	dec a                                            ; $6f9d: $3d
	dec bc                                           ; $6f9e: $0b
	jr nc, jr_00e_6fde                               ; $6f9f: $30 $3d

	dec bc                                           ; $6fa1: $0b
	ld h, h                                          ; $6fa2: $64
	dec a                                            ; $6fa3: $3d
	dec bc                                           ; $6fa4: $0b
	jr nc, jr_00e_6fe4                               ; $6fa5: $30 $3d

	dec bc                                           ; $6fa7: $0b
	ld h, h                                          ; $6fa8: $64
	dec a                                            ; $6fa9: $3d
	add hl, de                                       ; $6faa: $19
	sbc b                                            ; $6fab: $98
	dec a                                            ; $6fac: $3d
	inc bc                                           ; $6fad: $03
	call z, $193d                                    ; $6fae: $cc $3d $19
	nop                                              ; $6fb1: $00
	ld a, $ff                                        ; $6fb2: $3e $ff
	ld de, $3e34                                     ; $6fb4: $11 $34 $3e
	ld de, $3e70                                     ; $6fb7: $11 $70 $3e
	rst $38                                          ; $6fba: $ff
	dec hl                                           ; $6fbb: $2b
	xor h                                            ; $6fbc: $ac
	ld a, $17                                        ; $6fbd: $3e $17
	db $e4                                           ; $6fbf: $e4
	ld a, $17                                        ; $6fc0: $3e $17
	inc e                                            ; $6fc2: $1c
	ccf                                              ; $6fc3: $3f
	rla                                              ; $6fc4: $17
	db $e4                                           ; $6fc5: $e4
	ld a, $46                                        ; $6fc6: $3e $46
	inc e                                            ; $6fc8: $1c
	ccf                                              ; $6fc9: $3f
	rst $38                                          ; $6fca: $ff
	ld de, $1715                                     ; $6fcb: $11 $15 $17
	ld de, $1749                                     ; $6fce: $11 $49 $17
	rst $38                                          ; $6fd1: $ff

jr_00e_6fd2:
	rrca                                             ; $6fd2: $0f
	ld a, l                                          ; $6fd3: $7d
	rla                                              ; $6fd4: $17
	rrca                                             ; $6fd5: $0f
	or l                                             ; $6fd6: $b5
	rla                                              ; $6fd7: $17

jr_00e_6fd8:
	rrca                                             ; $6fd8: $0f
	ld a, l                                          ; $6fd9: $7d
	rla                                              ; $6fda: $17
	rrca                                             ; $6fdb: $0f
	or l                                             ; $6fdc: $b5
	rla                                              ; $6fdd: $17

jr_00e_6fde:
	rrca                                             ; $6fde: $0f
	ld a, l                                          ; $6fdf: $7d
	rla                                              ; $6fe0: $17
	rrca                                             ; $6fe1: $0f
	or l                                             ; $6fe2: $b5
	rla                                              ; $6fe3: $17

jr_00e_6fe4:
	dec h                                            ; $6fe4: $25
	ld a, l                                          ; $6fe5: $7d
	rla                                              ; $6fe6: $17
	ld a, [hl-]                                      ; $6fe7: $3a
	db $ed                                           ; $6fe8: $ed
	rla                                              ; $6fe9: $17
	rst $38                                          ; $6fea: $ff
	ld [de], a                                       ; $6feb: $12
	ret                                              ; $6fec: $c9


	jr jr_00e_7001                                   ; $6fed: $18 $12

	ld sp, hl                                        ; $6fef: $f9
	jr @+$01                                         ; $6ff0: $18 $ff

	ld de, $1929                                     ; $6ff2: $11 $29 $19
	dec b                                            ; $6ff5: $05
	ld e, l                                          ; $6ff6: $5d
	add hl, de                                       ; $6ff7: $19
	dec b                                            ; $6ff8: $05
	sub c                                            ; $6ff9: $91
	add hl, de                                       ; $6ffa: $19
	ld b, $c5                                        ; $6ffb: $06 $c5
	add hl, de                                       ; $6ffd: $19
	ld [de], a                                       ; $6ffe: $12
	db $fd                                           ; $6fff: $fd
	add hl, de                                       ; $7000: $19

jr_00e_7001:
	inc sp                                           ; $7001: $33
	dec [hl]                                         ; $7002: $35
	ld a, [de]                                       ; $7003: $1a
	rst $38                                          ; $7004: $ff
	ld de, $1a65                                     ; $7005: $11 $65 $1a
	ld de, $1a9d                                     ; $7008: $11 $9d $1a
	rst $38                                          ; $700b: $ff
	add hl, hl                                       ; $700c: $29
	dec b                                            ; $700d: $05
	dec de                                           ; $700e: $1b
	inc c                                            ; $700f: $0c
	pop de                                           ; $7010: $d1
	ld a, [de]                                       ; $7011: $1a
	inc c                                            ; $7012: $0c
	dec b                                            ; $7013: $05
	dec de                                           ; $7014: $1b
	inc c                                            ; $7015: $0c
	pop de                                           ; $7016: $d1
	ld a, [de]                                       ; $7017: $1a
	inc c                                            ; $7018: $0c
	dec b                                            ; $7019: $05
	dec de                                           ; $701a: $1b
	inc c                                            ; $701b: $0c
	pop de                                           ; $701c: $d1
	ld a, [de]                                       ; $701d: $1a
	inc c                                            ; $701e: $0c
	dec b                                            ; $701f: $05
	dec de                                           ; $7020: $1b
	inc c                                            ; $7021: $0c
	add hl, sp                                       ; $7022: $39
	dec de                                           ; $7023: $1b
	inc c                                            ; $7024: $0c
	ld a, l                                          ; $7025: $7d
	dec de                                           ; $7026: $1b
	inc c                                            ; $7027: $0c
	add hl, sp                                       ; $7028: $39
	dec de                                           ; $7029: $1b
	inc c                                            ; $702a: $0c
	ld a, l                                          ; $702b: $7d
	dec de                                           ; $702c: $1b
	inc c                                            ; $702d: $0c
	add hl, sp                                       ; $702e: $39
	dec de                                           ; $702f: $1b
	inc c                                            ; $7030: $0c
	ld a, l                                          ; $7031: $7d
	dec de                                           ; $7032: $1b
	inc c                                            ; $7033: $0c
	add hl, sp                                       ; $7034: $39
	dec de                                           ; $7035: $1b
	jr nz, jr_00e_70b5                               ; $7036: $20 $7d

	dec de                                           ; $7038: $1b
	rst $38                                          ; $7039: $ff
	ld de, $1bc1                                     ; $703a: $11 $c1 $1b
	ld de, $1bfd                                     ; $703d: $11 $fd $1b
	rst $38                                          ; $7040: $ff
	ld b, c                                          ; $7041: $41
	add hl, sp                                       ; $7042: $39
	inc e                                            ; $7043: $1c
	inc [hl]                                         ; $7044: $34
	ld [hl], c                                       ; $7045: $71
	inc e                                            ; $7046: $1c
	rst $38                                          ; $7047: $ff
	ld de, $1ca9                                     ; $7048: $11 $a9 $1c
	ld de, $1cdd                                     ; $704b: $11 $dd $1c
	rst $38                                          ; $704e: $ff
	ld hl, $1d15                                     ; $704f: $21 $15 $1d
	inc c                                            ; $7052: $0c
	ld c, l                                          ; $7053: $4d
	dec e                                            ; $7054: $1d
	add hl, bc                                       ; $7055: $09
	add l                                            ; $7056: $85
	dec e                                            ; $7057: $1d
	inc c                                            ; $7058: $0c
	ld c, l                                          ; $7059: $4d
	dec e                                            ; $705a: $1d
	inc c                                            ; $705b: $0c
	add l                                            ; $705c: $85
	dec e                                            ; $705d: $1d
	inc c                                            ; $705e: $0c
	cp l                                             ; $705f: $bd
	dec e                                            ; $7060: $1d
	ld [$1d15], sp                                   ; $7061: $08 $15 $1d
	inc c                                            ; $7064: $0c
	cp l                                             ; $7065: $bd
	dec e                                            ; $7066: $1d
	inc c                                            ; $7067: $0c
	dec d                                            ; $7068: $15
	dec e                                            ; $7069: $1d
	inc c                                            ; $706a: $0c
	ld c, l                                          ; $706b: $4d
	dec e                                            ; $706c: $1d
	inc c                                            ; $706d: $0c
	add l                                            ; $706e: $85
	dec e                                            ; $706f: $1d
	inc hl                                           ; $7070: $23
	dec d                                            ; $7071: $15
	dec e                                            ; $7072: $1d
	rst $38                                          ; $7073: $ff
	ld de, $1df5                                     ; $7074: $11 $f5 $1d
	ld de, $1e31                                     ; $7077: $11 $31 $1e
	rst $38                                          ; $707a: $ff
	jr z, jr_00e_70ea                                ; $707b: $28 $6d

	ld e, $28                                        ; $707d: $1e $28
	and c                                            ; $707f: $a1
	ld e, $1d                                        ; $7080: $1e $1d
	push de                                          ; $7082: $d5
	ld e, $1d                                        ; $7083: $1e $1d
	and c                                            ; $7085: $a1
	ld e, $2f                                        ; $7086: $1e $2f
	push de                                          ; $7088: $d5
	ld e, $41                                        ; $7089: $1e $41
	add hl, bc                                       ; $708b: $09
	rra                                              ; $708c: $1f
	rst $38                                          ; $708d: $ff
	ld de, $1f3d                                     ; $708e: $11 $3d $1f
	ld de, $1f75                                     ; $7091: $11 $75 $1f
	rst $38                                          ; $7094: $ff
	ld b, b                                          ; $7095: $40
	xor l                                            ; $7096: $ad
	rra                                              ; $7097: $1f
	rlca                                             ; $7098: $07
	pop hl                                           ; $7099: $e1
	rra                                              ; $709a: $1f
	rlca                                             ; $709b: $07
	dec d                                            ; $709c: $15
	jr nz, jr_00e_70df                               ; $709d: $20 $40

	ld c, c                                          ; $709f: $49
	jr nz, @+$01                                     ; $70a0: $20 $ff

	ld de, $207d                                     ; $70a2: $11 $7d $20
	ld de, $20b9                                     ; $70a5: $11 $b9 $20
	rst $38                                          ; $70a8: $ff
	ld h, $e9                                        ; $70a9: $26 $e9
	jr nz, jr_00e_70d3                               ; $70ab: $20 $26

	dec e                                            ; $70ad: $1d
	ld hl, $11ff                                     ; $70ae: $21 $ff $11
	ld d, l                                          ; $70b1: $55
	ld hl, $9111                                     ; $70b2: $21 $11 $91

jr_00e_70b5:
	ld hl, $0dff                                     ; $70b5: $21 $ff $0d
	call $0d21                                       ; $70b8: $cd $21 $0d
	dec c                                            ; $70bb: $0d
	ld [hl+], a                                      ; $70bc: $22
	dec c                                            ; $70bd: $0d
	call $0d21                                       ; $70be: $cd $21 $0d
	dec c                                            ; $70c1: $0d
	ld [hl+], a                                      ; $70c2: $22
	dec c                                            ; $70c3: $0d
	call $2421                                       ; $70c4: $cd $21 $24
	dec c                                            ; $70c7: $0d
	ld [hl+], a                                      ; $70c8: $22
	rst $38                                          ; $70c9: $ff
	ld de, $2251                                     ; $70ca: $11 $51 $22
	ld de, $2289                                     ; $70cd: $11 $89 $22
	rst $38                                          ; $70d0: $ff
	inc sp                                           ; $70d1: $33
	push af                                          ; $70d2: $f5

jr_00e_70d3:
	ld [hl+], a                                      ; $70d3: $22
	ld e, $bd                                        ; $70d4: $1e $bd
	ld [hl+], a                                      ; $70d6: $22
	ld e, $f5                                        ; $70d7: $1e $f5
	ld [hl+], a                                      ; $70d9: $22
	ld e, $bd                                        ; $70da: $1e $bd
	ld [hl+], a                                      ; $70dc: $22
	ld e, $f5                                        ; $70dd: $1e $f5

jr_00e_70df:
	ld [hl+], a                                      ; $70df: $22
	ld e, $bd                                        ; $70e0: $1e $bd
	ld [hl+], a                                      ; $70e2: $22
	ld h, $f5                                        ; $70e3: $26 $f5
	ld [hl+], a                                      ; $70e5: $22
	rst $38                                          ; $70e6: $ff
	ld de, $232d                                     ; $70e7: $11 $2d $23

jr_00e_70ea:
	ld de, $2361                                     ; $70ea: $11 $61 $23
	rst $38                                          ; $70ed: $ff
	inc c                                            ; $70ee: $0c
	sub c                                            ; $70ef: $91
	inc hl                                           ; $70f0: $23
	inc c                                            ; $70f1: $0c
	call $ff23                                       ; $70f2: $cd $23 $ff
	dec c                                            ; $70f5: $0d
	add hl, bc                                       ; $70f6: $09
	inc h                                            ; $70f7: $24
	dec c                                            ; $70f8: $0d
	add hl, sp                                       ; $70f9: $39
	inc h                                            ; $70fa: $24
	dec c                                            ; $70fb: $0d
	ld h, c                                          ; $70fc: $61
	inc h                                            ; $70fd: $24
	dec c                                            ; $70fe: $0d
	add hl, sp                                       ; $70ff: $39
	inc h                                            ; $7100: $24
	rst $38                                          ; $7101: $ff
	ld c, $b9                                        ; $7102: $0e $b9
	dec h                                            ; $7104: $25
	ld c, $ed                                        ; $7105: $0e $ed
	dec h                                            ; $7107: $25
	ld c, $1d                                        ; $7108: $0e $1d
	ld h, $0e                                        ; $710a: $26 $0e
	db $ed                                           ; $710c: $ed
	dec h                                            ; $710d: $25
	rst $38                                          ; $710e: $ff
	add hl, de                                       ; $710f: $19
	sub l                                            ; $7110: $95
	inc h                                            ; $7111: $24
	rra                                              ; $7112: $1f
	ret                                              ; $7113: $c9


	inc h                                            ; $7114: $24
	inc c                                            ; $7115: $0c
	ld sp, hl                                        ; $7116: $f9
	inc h                                            ; $7117: $24
	inc c                                            ; $7118: $0c
	ret                                              ; $7119: $c9


	inc h                                            ; $711a: $24
	inc c                                            ; $711b: $0c
	ld sp, hl                                        ; $711c: $f9
	inc h                                            ; $711d: $24
	add hl, de                                       ; $711e: $19
	add hl, hl                                       ; $711f: $29
	dec h                                            ; $7120: $25
	ld de, $2559                                     ; $7121: $11 $59 $25
	ld b, $29                                        ; $7124: $06 $29
	dec h                                            ; $7126: $25
	add hl, de                                       ; $7127: $19
	ld e, c                                          ; $7128: $59
	dec h                                            ; $7129: $25
	ld d, d                                          ; $712a: $52
	add hl, hl                                       ; $712b: $29
	dec h                                            ; $712c: $25
	add hl, de                                       ; $712d: $19
	adc c                                            ; $712e: $89
	dec h                                            ; $712f: $25
	rst $38                                          ; $7130: $ff
	ld [hl], a                                       ; $7131: $77
	ld [hl], d                                       ; $7132: $72
	add h                                            ; $7133: $84
	ld [hl], d                                       ; $7134: $72
	adc e                                            ; $7135: $8b
	ld [hl], d                                       ; $7136: $72
	and e                                            ; $7137: $a3
	ld [hl], d                                       ; $7138: $72
	cp e                                             ; $7139: $bb
	ld [hl], d                                       ; $713a: $72
	pop de                                           ; $713b: $d1
	ld [hl], d                                       ; $713c: $72
	ld [$0372], a                                    ; $713d: $ea $72 $03
	ld [hl], e                                       ; $7140: $73
	ld a, [bc]                                       ; $7141: $0a
	ld [hl], e                                       ; $7142: $73
	ld de, $1873                                     ; $7143: $11 $73 $18
	ld [hl], e                                       ; $7146: $73
	rra                                              ; $7147: $1f
	ld [hl], e                                       ; $7148: $73
	ld h, $73                                        ; $7149: $26 $73
	dec l                                            ; $714b: $2d
	ld [hl], e                                       ; $714c: $73
	inc [hl]                                         ; $714d: $34
	ld [hl], e                                       ; $714e: $73
	dec sp                                           ; $714f: $3b
	ld [hl], e                                       ; $7150: $73
	ld b, d                                          ; $7151: $42
	ld [hl], e                                       ; $7152: $73
	add hl, de                                       ; $7153: $19
	ld [hl], h                                       ; $7154: $74
	jr z, jr_00e_71cb                                ; $7155: $28 $74

	dec [hl]                                         ; $7157: $35
	ld [hl], h                                       ; $7158: $74
	ld a, $74                                        ; $7159: $3e $74
	ld c, e                                          ; $715b: $4b
	ld [hl], h                                       ; $715c: $74
	ld l, [hl]                                       ; $715d: $6e
	ld [hl], e                                       ; $715e: $73
	ld c, [hl]                                       ; $715f: $4e
	ld [hl], e                                       ; $7160: $73
	ld e, b                                          ; $7161: $58
	ld [hl], e                                       ; $7162: $73
	add c                                            ; $7163: $81
	ld [hl], e                                       ; $7164: $73
	ld a, d                                          ; $7165: $7a
	ld [hl], e                                       ; $7166: $73
	adc b                                            ; $7167: $88
	ld [hl], e                                       ; $7168: $73
	sub d                                            ; $7169: $92
	ld [hl], e                                       ; $716a: $73
	and l                                            ; $716b: $a5
	ld [hl], e                                       ; $716c: $73
	xor a                                            ; $716d: $af
	ld [hl], e                                       ; $716e: $73
	cp b                                             ; $716f: $b8
	ld [hl], e                                       ; $7170: $73
	ret z                                            ; $7171: $c8

	ld [hl], e                                       ; $7172: $73
	ret c                                            ; $7173: $d8

	ld [hl], e                                       ; $7174: $73
	rst SubAFromDE                                          ; $7175: $df
	ld [hl], e                                       ; $7176: $73
	jp hl                                            ; $7177: $e9


	ld [hl], e                                       ; $7178: $73
	di                                               ; $7179: $f3
	ld [hl], e                                       ; $717a: $73
	rrca                                             ; $717b: $0f
	ld [hl], h                                       ; $717c: $74
	ld d, d                                          ; $717d: $52
	ld [hl], h                                       ; $717e: $74
	ld l, b                                          ; $717f: $68
	ld [hl], h                                       ; $7180: $74
	or $74                                           ; $7181: $f6 $74
	ld l, a                                          ; $7183: $6f
	ld [hl], h                                       ; $7184: $74
	ld b, $75                                        ; $7185: $06 $75
	dec c                                            ; $7187: $0d
	ld [hl], l                                       ; $7188: $75
	inc d                                            ; $7189: $14
	ld [hl], l                                       ; $718a: $75
	or a                                             ; $718b: $b7
	ld [hl], h                                       ; $718c: $74
	ret nc                                           ; $718d: $d0

	ld [hl], h                                       ; $718e: $74
	rst SubAFromHL                                          ; $718f: $d7
	ld [hl], h                                       ; $7190: $74
	rst SubAFromBC                                          ; $7191: $e7
	ld [hl], h                                       ; $7192: $74
	inc hl                                           ; $7193: $23
	ld [hl], l                                       ; $7194: $75
	dec l                                            ; $7195: $2d
	ld [hl], l                                       ; $7196: $75
	ld d, c                                          ; $7197: $51
	ld [hl], l                                       ; $7198: $75
	dec a                                            ; $7199: $3d
	ld [hl], l                                       ; $719a: $75
	ld c, d                                          ; $719b: $4a
	ld [hl], l                                       ; $719c: $75
	ld h, b                                          ; $719d: $60
	ld [hl], l                                       ; $719e: $75
	ld [hl], l                                       ; $719f: $75
	ld [hl], l                                       ; $71a0: $75
	adc d                                            ; $71a1: $8a
	ld [hl], l                                       ; $71a2: $75
	sbc a                                            ; $71a3: $9f
	ld [hl], l                                       ; $71a4: $75
	and [hl]                                         ; $71a5: $a6
	ld [hl], l                                       ; $71a6: $75
	xor l                                            ; $71a7: $ad
	ld [hl], l                                       ; $71a8: $75
	cp d                                             ; $71a9: $ba
	ld [hl], l                                       ; $71aa: $75
	pop bc                                           ; $71ab: $c1
	ld [hl], l                                       ; $71ac: $75
	ret z                                            ; $71ad: $c8

	ld [hl], l                                       ; $71ae: $75
	ld a, [bc]                                       ; $71af: $0a
	halt                                             ; $71b0: $76
	db $fc                                           ; $71b1: $fc
	ld [hl], l                                       ; $71b2: $75
	inc bc                                           ; $71b3: $03
	halt                                             ; $71b4: $76
	ld de, $1b76                                     ; $71b5: $11 $76 $1b
	halt                                             ; $71b8: $76
	dec h                                            ; $71b9: $25
	halt                                             ; $71ba: $76
	inc l                                            ; $71bb: $2c
	halt                                             ; $71bc: $76
	inc sp                                           ; $71bd: $33
	halt                                             ; $71be: $76
	ld c, c                                          ; $71bf: $49
	halt                                             ; $71c0: $76
	ld d, b                                          ; $71c1: $50
	halt                                             ; $71c2: $76
	ld d, a                                          ; $71c3: $57
	halt                                             ; $71c4: $76
	ld e, [hl]                                       ; $71c5: $5e
	halt                                             ; $71c6: $76
	ld l, e                                          ; $71c7: $6b
	halt                                             ; $71c8: $76
	ld [hl], d                                       ; $71c9: $72
	halt                                             ; $71ca: $76

jr_00e_71cb:
	ld a, c                                          ; $71cb: $79
	halt                                             ; $71cc: $76
	add b                                            ; $71cd: $80
	halt                                             ; $71ce: $76
	add a                                            ; $71cf: $87
	halt                                             ; $71d0: $76
	adc [hl]                                         ; $71d1: $8e
	halt                                             ; $71d2: $76
	sub l                                            ; $71d3: $95
	halt                                             ; $71d4: $76
	sbc a                                            ; $71d5: $9f
	halt                                             ; $71d6: $76
	and [hl]                                         ; $71d7: $a6
	halt                                             ; $71d8: $76
	or b                                             ; $71d9: $b0
	halt                                             ; $71da: $76
	or a                                             ; $71db: $b7
	halt                                             ; $71dc: $76
	cp [hl]                                          ; $71dd: $be
	halt                                             ; $71de: $76
	push bc                                          ; $71df: $c5
	halt                                             ; $71e0: $76
	call z, $d376                                    ; $71e1: $cc $76 $d3
	halt                                             ; $71e4: $76
	jp c, $e476                                      ; $71e5: $da $76 $e4

	halt                                             ; $71e8: $76
	xor $76                                          ; $71e9: $ee $76
	ld bc, $0e77                                     ; $71eb: $01 $77 $0e
	ld [hl], a                                       ; $71ee: $77
	dec d                                            ; $71ef: $15
	ld [hl], a                                       ; $71f0: $77
	dec h                                            ; $71f1: $25
	ld [hl], a                                       ; $71f2: $77
	cpl                                              ; $71f3: $2f
	ld [hl], a                                       ; $71f4: $77
	ccf                                              ; $71f5: $3f
	ld [hl], a                                       ; $71f6: $77
	ld b, [hl]                                       ; $71f7: $46
	ld [hl], a                                       ; $71f8: $77
	ld c, l                                          ; $71f9: $4d
	ld [hl], a                                       ; $71fa: $77
	ld d, h                                          ; $71fb: $54
	ld [hl], a                                       ; $71fc: $77
	ld e, e                                          ; $71fd: $5b
	ld [hl], a                                       ; $71fe: $77
	adc e                                            ; $71ff: $8b
	ld [hl], a                                       ; $7200: $77
	sub d                                            ; $7201: $92
	ld [hl], a                                       ; $7202: $77
	sbc c                                            ; $7203: $99
	ld [hl], a                                       ; $7204: $77
	and b                                            ; $7205: $a0
	ld [hl], a                                       ; $7206: $77
	xor l                                            ; $7207: $ad
	ld [hl], a                                       ; $7208: $77
	or h                                             ; $7209: $b4
	ld [hl], a                                       ; $720a: $77
	cp e                                             ; $720b: $bb
	ld [hl], a                                       ; $720c: $77
	jp nz, $c977                                     ; $720d: $c2 $77 $c9

	ld [hl], a                                       ; $7210: $77
	ret nc                                           ; $7211: $d0

	ld [hl], a                                       ; $7212: $77
	rst SubAFromHL                                          ; $7213: $d7
	ld [hl], a                                       ; $7214: $77
	sbc $77                                          ; $7215: $de $77
	push hl                                          ; $7217: $e5
	ld [hl], a                                       ; $7218: $77
	db $ec                                           ; $7219: $ec
	ld [hl], a                                       ; $721a: $77
	di                                               ; $721b: $f3
	ld [hl], a                                       ; $721c: $77
	ld a, [$0177]                                    ; $721d: $fa $77 $01
	ld a, b                                          ; $7220: $78
	ld a, [de]                                       ; $7221: $1a
	ld a, b                                          ; $7222: $78
	ld hl, $2878                                     ; $7223: $21 $78 $28
	ld a, b                                          ; $7226: $78
	cpl                                              ; $7227: $2f
	ld a, b                                          ; $7228: $78
	inc a                                            ; $7229: $3c
	ld a, b                                          ; $722a: $78
	ld b, e                                          ; $722b: $43
	ld a, b                                          ; $722c: $78
	ld c, d                                          ; $722d: $4a
	ld a, b                                          ; $722e: $78
	ld d, c                                          ; $722f: $51
	ld a, b                                          ; $7230: $78
	ld e, a                                          ; $7231: $5f
	ld a, b                                          ; $7232: $78
	ld l, h                                          ; $7233: $6c
	ld a, b                                          ; $7234: $78
	ld e, b                                          ; $7235: $58
	ld a, b                                          ; $7236: $78
	ld a, b                                          ; $7237: $78
	ld a, b                                          ; $7238: $78
	add l                                            ; $7239: $85
	ld a, b                                          ; $723a: $78
	sub l                                            ; $723b: $95
	ld a, b                                          ; $723c: $78
	sbc h                                            ; $723d: $9c
	ld a, b                                          ; $723e: $78
	and e                                            ; $723f: $a3
	ld a, b                                          ; $7240: $78
	xor d                                            ; $7241: $aa
	ld a, b                                          ; $7242: $78
	cp d                                             ; $7243: $ba
	ld a, b                                          ; $7244: $78
	pop bc                                           ; $7245: $c1
	ld a, b                                          ; $7246: $78
	or b                                             ; $7247: $b0
	ld a, c                                          ; $7248: $79
	or a                                             ; $7249: $b7
	ld a, c                                          ; $724a: $79
	cp [hl]                                          ; $724b: $be
	ld a, c                                          ; $724c: $79
	push bc                                          ; $724d: $c5
	ld a, c                                          ; $724e: $79
	db $d3                                           ; $724f: $d3
	ld a, c                                          ; $7250: $79
	call z, $9d79                                    ; $7251: $cc $79 $9d
	ld a, c                                          ; $7254: $79
	db $e3                                           ; $7255: $e3
	ld a, c                                          ; $7256: $79
	ld [$f179], a                                    ; $7257: $ea $79 $f1
	ld a, c                                          ; $725a: $79
	rlca                                             ; $725b: $07
	ld a, d                                          ; $725c: $7a
	ld de, $187a                                     ; $725d: $11 $7a $18
	ld a, d                                          ; $7260: $7a
	rra                                              ; $7261: $1f
	ld a, d                                          ; $7262: $7a
	ld h, $7a                                        ; $7263: $26 $7a
	cpl                                              ; $7265: $2f
	ld a, d                                          ; $7266: $7a
	ld [hl], $7a                                     ; $7267: $36 $7a
	dec a                                            ; $7269: $3d
	ld a, d                                          ; $726a: $7a
	ld b, h                                          ; $726b: $44
	ld a, d                                          ; $726c: $7a
	ld l, a                                          ; $726d: $6f
	ld a, d                                          ; $726e: $7a
	ld a, h                                          ; $726f: $7c
	ld a, d                                          ; $7270: $7a
	add [hl]                                         ; $7271: $86
	ld a, d                                          ; $7272: $7a
	sub b                                            ; $7273: $90
	ld a, d                                          ; $7274: $7a
	sbc l                                            ; $7275: $9d
	ld a, d                                          ; $7276: $7a
	dec b                                            ; $7277: $05
	inc a                                            ; $7278: $3c
	ld bc, $5405                                     ; $7279: $01 $05 $54
	ld bc, $8004                                     ; $727c: $01 $04 $80
	ld bc, $8000                                     ; $727f: $01 $00 $80
	ld bc, $10ff                                     ; $7282: $01 $ff $10
	add b                                            ; $7285: $80
	ld [bc], a                                       ; $7286: $02
	db $10                                           ; $7287: $10
	sbc h                                            ; $7288: $9c
	ld [bc], a                                       ; $7289: $02
	rst $38                                          ; $728a: $ff
	ld [bc], a                                       ; $728b: $02
	sbc b                                            ; $728c: $98
	ld bc, $a001                                     ; $728d: $01 $01 $a0
	ld bc, $a801                                     ; $7290: $01 $01 $a8
	ld bc, $b401                                     ; $7293: $01 $01 $b4
	ld bc, $c001                                     ; $7296: $01 $01 $c0
	ld bc, $cc01                                     ; $7299: $01 $01 $cc
	ld bc, $d401                                     ; $729c: $01 $01 $d4
	ld bc, $ff00                                     ; $729f: $01 $00 $ff
	rst $38                                          ; $72a2: $ff
	ld [bc], a                                       ; $72a3: $02
	call c, $0101                                    ; $72a4: $dc $01 $01
	db $e4                                           ; $72a7: $e4
	ld bc, $ec01                                     ; $72a8: $01 $01 $ec
	ld bc, $f801                                     ; $72ab: $01 $01 $f8
	ld bc, $0401                                     ; $72ae: $01 $01 $04
	ld [bc], a                                       ; $72b1: $02
	ld bc, $0210                                     ; $72b2: $01 $10 $02
	ld bc, $0218                                     ; $72b5: $01 $18 $02
	nop                                              ; $72b8: $00
	rst $38                                          ; $72b9: $ff
	rst $38                                          ; $72ba: $ff
	ld [$02f8], sp                                   ; $72bb: $08 $f8 $02
	ld [$0310], sp                                   ; $72be: $08 $10 $03
	ld [$02f8], sp                                   ; $72c1: $08 $f8 $02
	ld [$0310], sp                                   ; $72c4: $08 $10 $03
	ld [$02f8], sp                                   ; $72c7: $08 $f8 $02
	ld [$0310], sp                                   ; $72ca: $08 $10 $03
	nop                                              ; $72cd: $00
	ld hl, sp+$02                                    ; $72ce: $f8 $02
	rst $38                                          ; $72d0: $ff
	ld [bc], a                                       ; $72d1: $02
	jr z, jr_00e_72d7                                ; $72d2: $28 $03

	ld [bc], a                                       ; $72d4: $02
	ld b, b                                          ; $72d5: $40
	inc bc                                           ; $72d6: $03

jr_00e_72d7:
	ld [bc], a                                       ; $72d7: $02
	jr z, jr_00e_72dd                                ; $72d8: $28 $03

	ld [bc], a                                       ; $72da: $02
	ld l, b                                          ; $72db: $68
	inc bc                                           ; $72dc: $03

jr_00e_72dd:
	ld [bc], a                                       ; $72dd: $02
	jr z, jr_00e_72e3                                ; $72de: $28 $03

	ld [bc], a                                       ; $72e0: $02
	sub b                                            ; $72e1: $90
	inc bc                                           ; $72e2: $03

jr_00e_72e3:
	ld [bc], a                                       ; $72e3: $02
	jr z, jr_00e_72e9                                ; $72e4: $28 $03

	ld [bc], a                                       ; $72e6: $02
	cp b                                             ; $72e7: $b8
	inc bc                                           ; $72e8: $03

jr_00e_72e9:
	rst $38                                          ; $72e9: $ff
	ld [bc], a                                       ; $72ea: $02
	ldh [$03], a                                     ; $72eb: $e0 $03
	ld [bc], a                                       ; $72ed: $02
	ld hl, sp+$03                                    ; $72ee: $f8 $03
	ld [bc], a                                       ; $72f0: $02
	ldh [$03], a                                     ; $72f1: $e0 $03
	ld [bc], a                                       ; $72f3: $02
	jr nz, jr_00e_72fa                               ; $72f4: $20 $04

	ld [bc], a                                       ; $72f6: $02
	ldh [$03], a                                     ; $72f7: $e0 $03
	ld [bc], a                                       ; $72f9: $02

jr_00e_72fa:
	ld b, h                                          ; $72fa: $44
	inc b                                            ; $72fb: $04
	ld [bc], a                                       ; $72fc: $02
	ldh [$03], a                                     ; $72fd: $e0 $03
	ld [bc], a                                       ; $72ff: $02
	ld l, h                                          ; $7300: $6c
	inc b                                            ; $7301: $04
	rst $38                                          ; $7302: $ff
	db $10                                           ; $7303: $10
	jr nz, @+$07                                     ; $7304: $20 $05

	db $10                                           ; $7306: $10
	jr c, @+$07                                      ; $7307: $38 $05

	rst $38                                          ; $7309: $ff
	ld b, $f0                                        ; $730a: $06 $f0
	ld b, h                                          ; $730c: $44
	ld b, $08                                        ; $730d: $06 $08
	ld b, l                                          ; $730f: $45
	rst $38                                          ; $7310: $ff
	ld [$0580], sp                                   ; $7311: $08 $80 $05
	ld [$0598], sp                                   ; $7314: $08 $98 $05
	rst $38                                          ; $7317: $ff
	ld [$0610], sp                                   ; $7318: $08 $10 $06
	ld [$0628], sp                                   ; $731b: $08 $28 $06
	rst $38                                          ; $731e: $ff
	ld [$05b0], sp                                   ; $731f: $08 $b0 $05
	ld [$05c8], sp                                   ; $7322: $08 $c8 $05
	rst $38                                          ; $7325: $ff
	db $10                                           ; $7326: $10
	ldh [rTIMA], a                                   ; $7327: $e0 $05
	db $10                                           ; $7329: $10
	ld hl, sp+$05                                    ; $732a: $f8 $05
	rst $38                                          ; $732c: $ff
	ld [$36b8], sp                                   ; $732d: $08 $b8 $36
	ld [$36c0], sp                                   ; $7330: $08 $c0 $36
	rst $38                                          ; $7333: $ff
	ld [$36c8], sp                                   ; $7334: $08 $c8 $36
	ld [$36e8], sp                                   ; $7337: $08 $e8 $36
	rst $38                                          ; $733a: $ff
	ld [$3708], sp                                   ; $733b: $08 $08 $37
	ld [$3728], sp                                   ; $733e: $08 $28 $37
	rst $38                                          ; $7341: $ff
	inc b                                            ; $7342: $04
	ld c, b                                          ; $7343: $48
	scf                                              ; $7344: $37
	inc b                                            ; $7345: $04
	ld d, b                                          ; $7346: $50
	scf                                              ; $7347: $37
	inc b                                            ; $7348: $04
	ld [hl], b                                       ; $7349: $70
	scf                                              ; $734a: $37
	nop                                              ; $734b: $00
	rst $38                                          ; $734c: $ff
	rst $38                                          ; $734d: $ff
	inc b                                            ; $734e: $04
	ld hl, sp+$09                                    ; $734f: $f8 $09
	inc b                                            ; $7351: $04
	nop                                              ; $7352: $00
	ld a, [bc]                                       ; $7353: $0a
	nop                                              ; $7354: $00
	ld hl, sp+$09                                    ; $7355: $f8 $09
	rst $38                                          ; $7357: $ff
	ld b, $30                                        ; $7358: $06 $30
	add hl, bc                                       ; $735a: $09
	ld b, $40                                        ; $735b: $06 $40
	add hl, bc                                       ; $735d: $09
	ld b, $54                                        ; $735e: $06 $54
	add hl, bc                                       ; $7360: $09
	ld b, $6c                                        ; $7361: $06 $6c
	add hl, bc                                       ; $7363: $09
	inc c                                            ; $7364: $0c
	adc h                                            ; $7365: $8c
	add hl, bc                                       ; $7366: $09
	ld e, $ac                                        ; $7367: $1e $ac
	add hl, bc                                       ; $7369: $09
	nop                                              ; $736a: $00
	xor h                                            ; $736b: $ac
	add hl, bc                                       ; $736c: $09
	rst $38                                          ; $736d: $ff
	ld [$09ec], sp                                   ; $736e: $08 $ec $09
	ld [$09f0], sp                                   ; $7371: $08 $f0 $09
	db $10                                           ; $7374: $10
	db $f4                                           ; $7375: $f4
	add hl, bc                                       ; $7376: $09
	nop                                              ; $7377: $00
	rst $38                                          ; $7378: $ff
	rst $38                                          ; $7379: $ff
	ld [$0aa0], sp                                   ; $737a: $08 $a0 $0a
	ld [$0aa4], sp                                   ; $737d: $08 $a4 $0a
	rst $38                                          ; $7380: $ff
	ld [$0aa8], sp                                   ; $7381: $08 $a8 $0a
	ld [$0abc], sp                                   ; $7384: $08 $bc $0a
	rst $38                                          ; $7387: $ff
	inc b                                            ; $7388: $04
	db $fc                                           ; $7389: $fc
	ld a, [bc]                                       ; $738a: $0a
	inc b                                            ; $738b: $04
	nop                                              ; $738c: $00
	dec bc                                           ; $738d: $0b
	nop                                              ; $738e: $00
	db $fc                                           ; $738f: $fc
	ld a, [bc]                                       ; $7390: $0a
	rst $38                                          ; $7391: $ff
	inc bc                                           ; $7392: $03
	inc l                                            ; $7393: $2c
	ld a, [bc]                                       ; $7394: $0a
	inc bc                                           ; $7395: $03
	inc a                                            ; $7396: $3c
	ld a, [bc]                                       ; $7397: $0a
	inc bc                                           ; $7398: $03
	ld d, b                                          ; $7399: $50
	ld a, [bc]                                       ; $739a: $0a
	inc bc                                           ; $739b: $03
	ld h, b                                          ; $739c: $60
	ld a, [bc]                                       ; $739d: $0a
	inc bc                                           ; $739e: $03
	ld [hl], b                                       ; $739f: $70
	ld a, [bc]                                       ; $73a0: $0a
	inc bc                                           ; $73a1: $03
	add h                                            ; $73a2: $84
	ld a, [bc]                                       ; $73a3: $0a
	rst $38                                          ; $73a4: $ff
	ld b, $94                                        ; $73a5: $06 $94
	ld a, [bc]                                       ; $73a7: $0a
	ld b, $9c                                        ; $73a8: $06 $9c
	ld a, [bc]                                       ; $73aa: $0a
	nop                                              ; $73ab: $00
	sbc h                                            ; $73ac: $9c
	ld a, [bc]                                       ; $73ad: $0a
	rst $38                                          ; $73ae: $ff
	inc c                                            ; $73af: $0c
	inc h                                            ; $73b0: $24
	ld a, [bc]                                       ; $73b1: $0a
	inc c                                            ; $73b2: $0c
	jr z, @+$0c                                      ; $73b3: $28 $0a

	nop                                              ; $73b5: $00
	rst $38                                          ; $73b6: $ff
	rst $38                                          ; $73b7: $ff
	ld [$0b5c], sp                                   ; $73b8: $08 $5c $0b
	ld [$0b68], sp                                   ; $73bb: $08 $68 $0b
	ld [$0b80], sp                                   ; $73be: $08 $80 $0b
	ld [$0b9c], sp                                   ; $73c1: $08 $9c $0b
	nop                                              ; $73c4: $00
	sbc h                                            ; $73c5: $9c
	dec bc                                           ; $73c6: $0b
	rst $38                                          ; $73c7: $ff
	ld [$0c54], sp                                   ; $73c8: $08 $54 $0c
	ld [$0c6c], sp                                   ; $73cb: $08 $6c $0c
	ld [$0c84], sp                                   ; $73ce: $08 $84 $0c
	ld [$0c9c], sp                                   ; $73d1: $08 $9c $0c
	nop                                              ; $73d4: $00
	sbc h                                            ; $73d5: $9c
	inc c                                            ; $73d6: $0c
	rst $38                                          ; $73d7: $ff
	db $10                                           ; $73d8: $10
	or h                                             ; $73d9: $b4
	inc c                                            ; $73da: $0c
	db $10                                           ; $73db: $10
	call z, $ff0c                                    ; $73dc: $cc $0c $ff
	db $10                                           ; $73df: $10
	db $e4                                           ; $73e0: $e4
	inc c                                            ; $73e1: $0c
	db $10                                           ; $73e2: $10
	db $f4                                           ; $73e3: $f4
	inc c                                            ; $73e4: $0c
	db $10                                           ; $73e5: $10
	inc b                                            ; $73e6: $04
	dec c                                            ; $73e7: $0d
	rst $38                                          ; $73e8: $ff
	db $10                                           ; $73e9: $10
	db $e4                                           ; $73ea: $e4
	ld c, h                                          ; $73eb: $4c
	db $10                                           ; $73ec: $10
	db $f4                                           ; $73ed: $f4
	ld c, h                                          ; $73ee: $4c
	db $10                                           ; $73ef: $10
	inc b                                            ; $73f0: $04
	ld c, l                                          ; $73f1: $4d
	rst $38                                          ; $73f2: $ff
	ld [$0d88], sp                                   ; $73f3: $08 $88 $0d
	ld [$0da0], sp                                   ; $73f6: $08 $a0 $0d
	ld [$0dd8], sp                                   ; $73f9: $08 $d8 $0d
	ld [$0e10], sp                                   ; $73fc: $08 $10 $0e
	ld [$0e28], sp                                   ; $73ff: $08 $28 $0e
	ld [$0e40], sp                                   ; $7402: $08 $40 $0e
	ld [$0e58], sp                                   ; $7405: $08 $58 $0e
	ld [de], a                                       ; $7408: $12
	ld [hl], b                                       ; $7409: $70
	ld c, $00                                        ; $740a: $0e $00
	ld [hl], b                                       ; $740c: $70
	ld c, $ff                                        ; $740d: $0e $ff
	ld [$0e88], sp                                   ; $740f: $08 $88 $0e
	ld [$0e8c], sp                                   ; $7412: $08 $8c $0e
	nop                                              ; $7415: $00
	adc h                                            ; $7416: $8c
	ld c, $ff                                        ; $7417: $0e $ff
	ld a, [bc]                                       ; $7419: $0a
	ld [hl], b                                       ; $741a: $70
	ld b, $0a                                        ; $741b: $06 $0a
	ld [hl], h                                       ; $741d: $74
	ld b, $0a                                        ; $741e: $06 $0a
	ld a, b                                          ; $7420: $78
	ld b, $0a                                        ; $7421: $06 $0a
	ld a, h                                          ; $7423: $7c
	ld b, $00                                        ; $7424: $06 $00
	rst $38                                          ; $7426: $ff
	rst $38                                          ; $7427: $ff
	inc b                                            ; $7428: $04
	add b                                            ; $7429: $80
	ld b, $04                                        ; $742a: $06 $04
	adc b                                            ; $742c: $88
	ld b, $04                                        ; $742d: $06 $04
	sub b                                            ; $742f: $90
	ld b, $00                                        ; $7430: $06 $00
	sub b                                            ; $7432: $90
	ld b, $ff                                        ; $7433: $06 $ff
	ld [$0698], sp                                   ; $7435: $08 $98 $06
	ld [$069c], sp                                   ; $7438: $08 $9c $06
	nop                                              ; $743b: $00
	rst $38                                          ; $743c: $ff
	rst $38                                          ; $743d: $ff
	ld [$06d0], sp                                   ; $743e: $08 $d0 $06
	ld [$071c], sp                                   ; $7441: $08 $1c $07
	ld [$0768], sp                                   ; $7444: $08 $68 $07
	ld [$07b4], sp                                   ; $7447: $08 $b4 $07
	rst $38                                          ; $744a: $ff
	inc b                                            ; $744b: $04
	jr @+$0a                                         ; $744c: $18 $08

	inc b                                            ; $744e: $04
	ld [hl], h                                       ; $744f: $74
	ld [$18ff], sp                                   ; $7450: $08 $ff $18
	ld l, h                                          ; $7453: $6c
	db $10                                           ; $7454: $10
	ld [$1078], sp                                   ; $7455: $08 $78 $10
	ld [$1080], sp                                   ; $7458: $08 $80 $10
	ld [$1088], sp                                   ; $745b: $08 $88 $10
	ld [$1090], sp                                   ; $745e: $08 $90 $10
	ld [$1098], sp                                   ; $7461: $08 $98 $10
	nop                                              ; $7464: $00
	sbc b                                            ; $7465: $98
	db $10                                           ; $7466: $10
	rst $38                                          ; $7467: $ff
	ld [$10a4], sp                                   ; $7468: $08 $a4 $10
	ld [$10b4], sp                                   ; $746b: $08 $b4 $10
	rst $38                                          ; $746e: $ff
	ld b, $08                                        ; $746f: $06 $08
	ld de, $1006                                     ; $7471: $11 $06 $10
	ld de, $2005                                     ; $7474: $11 $05 $20
	ld de, $3004                                     ; $7477: $11 $04 $30
	ld de, $4004                                     ; $747a: $11 $04 $40
	ld de, $5004                                     ; $747d: $11 $04 $50
	ld de, $6004                                     ; $7480: $11 $04 $60
	ld de, $7004                                     ; $7483: $11 $04 $70
	ld de, $8004                                     ; $7486: $11 $04 $80
	ld de, $9004                                     ; $7489: $11 $04 $90
	ld de, $a004                                     ; $748c: $11 $04 $a0
	ld de, $b004                                     ; $748f: $11 $04 $b0
	ld de, $c004                                     ; $7492: $11 $04 $c0
	ld de, $d004                                     ; $7495: $11 $04 $d0
	ld de, $e004                                     ; $7498: $11 $04 $e0
	ld de, $f004                                     ; $749b: $11 $04 $f0
	ld de, $0004                                     ; $749e: $11 $04 $00
	ld [de], a                                       ; $74a1: $12
	inc b                                            ; $74a2: $04
	db $10                                           ; $74a3: $10
	ld [de], a                                       ; $74a4: $12
	inc b                                            ; $74a5: $04
	jr nz, jr_00e_74ba                               ; $74a6: $20 $12

	inc b                                            ; $74a8: $04
	jr nc, jr_00e_74bd                               ; $74a9: $30 $12

	inc b                                            ; $74ab: $04
	ld b, b                                          ; $74ac: $40
	ld [de], a                                       ; $74ad: $12
	inc b                                            ; $74ae: $04
	ld d, b                                          ; $74af: $50
	ld [de], a                                       ; $74b0: $12
	inc b                                            ; $74b1: $04
	ld h, b                                          ; $74b2: $60
	ld [de], a                                       ; $74b3: $12
	nop                                              ; $74b4: $00
	rst $38                                          ; $74b5: $ff
	rst $38                                          ; $74b6: $ff
	ld b, $d8                                        ; $74b7: $06 $d8
	ld [de], a                                       ; $74b9: $12

jr_00e_74ba:
	ld b, $e0                                        ; $74ba: $06 $e0
	ld [de], a                                       ; $74bc: $12

jr_00e_74bd:
	ld b, $e8                                        ; $74bd: $06 $e8
	ld [de], a                                       ; $74bf: $12
	ld b, $f0                                        ; $74c0: $06 $f0
	ld [de], a                                       ; $74c2: $12
	ld b, $f8                                        ; $74c3: $06 $f8
	ld [de], a                                       ; $74c5: $12
	ld b, $00                                        ; $74c6: $06 $00
	inc de                                           ; $74c8: $13
	ld b, $08                                        ; $74c9: $06 $08
	inc de                                           ; $74cb: $13
	ld b, $10                                        ; $74cc: $06 $10
	inc de                                           ; $74ce: $13
	rst $38                                          ; $74cf: $ff
	dec b                                            ; $74d0: $05
	jr jr_00e_74e6                                   ; $74d1: $18 $13

	dec b                                            ; $74d3: $05
	inc e                                            ; $74d4: $1c
	inc de                                           ; $74d5: $13
	rst $38                                          ; $74d6: $ff
	ld b, $20                                        ; $74d7: $06 $20
	inc de                                           ; $74d9: $13
	ld b, $40                                        ; $74da: $06 $40
	inc de                                           ; $74dc: $13
	ld b, $20                                        ; $74dd: $06 $20
	inc de                                           ; $74df: $13
	dec b                                            ; $74e0: $05
	ld b, b                                          ; $74e1: $40
	inc de                                           ; $74e2: $13
	nop                                              ; $74e3: $00
	ld b, b                                          ; $74e4: $40
	inc de                                           ; $74e5: $13

jr_00e_74e6:
	rst $38                                          ; $74e6: $ff
	db $10                                           ; $74e7: $10
	ld a, b                                          ; $74e8: $78
	inc de                                           ; $74e9: $13
	ld [$1380], sp                                   ; $74ea: $08 $80 $13
	ld [$13a0], sp                                   ; $74ed: $08 $a0 $13
	ld [$13d8], sp                                   ; $74f0: $08 $d8 $13
	nop                                              ; $74f3: $00
	rst $38                                          ; $74f4: $ff
	rst $38                                          ; $74f5: $ff
	dec b                                            ; $74f6: $05
	call nc, $0510                                   ; $74f7: $d4 $10 $05
	call c, $0510                                    ; $74fa: $dc $10 $05
	db $e4                                           ; $74fd: $e4
	db $10                                           ; $74fe: $10
	dec b                                            ; $74ff: $05
	db $ec                                           ; $7500: $ec
	stop                                             ; $7501: $10 $00
	db $ec                                           ; $7503: $ec
	db $10                                           ; $7504: $10
	rst $38                                          ; $7505: $ff
	inc b                                            ; $7506: $04
	ld [hl], b                                       ; $7507: $70
	ld [de], a                                       ; $7508: $12
	inc b                                            ; $7509: $04
	ld a, h                                          ; $750a: $7c
	ld [de], a                                       ; $750b: $12
	rst $38                                          ; $750c: $ff
	inc b                                            ; $750d: $04
	sub b                                            ; $750e: $90
	ld [de], a                                       ; $750f: $12
	inc b                                            ; $7510: $04
	sbc b                                            ; $7511: $98
	ld [de], a                                       ; $7512: $12
	rst $38                                          ; $7513: $ff
	inc bc                                           ; $7514: $03
	and b                                            ; $7515: $a0
	ld [de], a                                       ; $7516: $12
	inc bc                                           ; $7517: $03
	xor b                                            ; $7518: $a8
	ld [de], a                                       ; $7519: $12
	inc bc                                           ; $751a: $03
	or h                                             ; $751b: $b4
	ld [de], a                                       ; $751c: $12
	inc bc                                           ; $751d: $03
	call nz, $0012                                   ; $751e: $c4 $12 $00
	rst $38                                          ; $7521: $ff
	rst $38                                          ; $7522: $ff
	ld [$0f54], sp                                   ; $7523: $08 $54 $0f
	ld [$0f5c], sp                                   ; $7526: $08 $5c $0f
	ld [$0f64], sp                                   ; $7529: $08 $64 $0f
	rst $38                                          ; $752c: $ff
	inc b                                            ; $752d: $04
	and h                                            ; $752e: $a4
	ld c, $04                                        ; $752f: $0e $04
	xor h                                            ; $7531: $ac
	ld c, $04                                        ; $7532: $0e $04
	or h                                             ; $7534: $b4
	ld c, $04                                        ; $7535: $0e $04
	call z, $000e                                    ; $7537: $cc $0e $00
	call z, $ff0e                                    ; $753a: $cc $0e $ff
	ld [$0f6c], sp                                   ; $753d: $08 $6c $0f
	ld [$0f70], sp                                   ; $7540: $08 $70 $0f
	ld [$0f74], sp                                   ; $7543: $08 $74 $0f
	ld [$0f7c], sp                                   ; $7546: $08 $7c $0f
	rst $38                                          ; $7549: $ff
	dec b                                            ; $754a: $05
	add h                                            ; $754b: $84
	rrca                                             ; $754c: $0f
	dec b                                            ; $754d: $05
	adc h                                            ; $754e: $8c
	rrca                                             ; $754f: $0f
	rst $38                                          ; $7550: $ff
	inc b                                            ; $7551: $04
	and h                                            ; $7552: $a4
	ld c, $04                                        ; $7553: $0e $04
	xor h                                            ; $7555: $ac
	ld c, $04                                        ; $7556: $0e $04
	or h                                             ; $7558: $b4
	ld c, $04                                        ; $7559: $0e $04
	call z, $000e                                    ; $755b: $cc $0e $00
	rst $38                                          ; $755e: $ff
	rst $38                                          ; $755f: $ff
	ld [$0fdc], sp                                   ; $7560: $08 $dc $0f
	ld [$0ff4], sp                                   ; $7563: $08 $f4 $0f
	ld [$0fdc], sp                                   ; $7566: $08 $dc $0f
	ld [$0ff4], sp                                   ; $7569: $08 $f4 $0f
	ld [$0fdc], sp                                   ; $756c: $08 $dc $0f
	ld [$0ff4], sp                                   ; $756f: $08 $f4 $0f
	nop                                              ; $7572: $00
	rst $38                                          ; $7573: $ff
	rst $38                                          ; $7574: $ff
	ld [$100c], sp                                   ; $7575: $08 $0c $10
	ld [$1024], sp                                   ; $7578: $08 $24 $10
	ld [$100c], sp                                   ; $757b: $08 $0c $10
	ld [$1024], sp                                   ; $757e: $08 $24 $10
	ld [$100c], sp                                   ; $7581: $08 $0c $10
	ld [$1024], sp                                   ; $7584: $08 $24 $10
	nop                                              ; $7587: $00
	rst $38                                          ; $7588: $ff
	rst $38                                          ; $7589: $ff
	ld [$500c], sp                                   ; $758a: $08 $0c $50
	ld [$5024], sp                                   ; $758d: $08 $24 $50
	ld [$500c], sp                                   ; $7590: $08 $0c $50
	ld [$5024], sp                                   ; $7593: $08 $24 $50
	ld [$500c], sp                                   ; $7596: $08 $0c $50
	ld [$5024], sp                                   ; $7599: $08 $24 $50
	nop                                              ; $759c: $00
	rst $38                                          ; $759d: $ff
	rst $38                                          ; $759e: $ff
	ld [$103c], sp                                   ; $759f: $08 $3c $10
	ld [$1054], sp                                   ; $75a2: $08 $54 $10
	rst $38                                          ; $75a5: $ff
	inc d                                            ; $75a6: $14
	jr z, @+$18                                      ; $75a7: $28 $16

	inc d                                            ; $75a9: $14
	ld b, b                                          ; $75aa: $40
	ld d, $ff                                        ; $75ab: $16 $ff
	dec b                                            ; $75ad: $05
	ld e, b                                          ; $75ae: $58
	ld d, $05                                        ; $75af: $16 $05
	ld [hl], b                                       ; $75b1: $70
	ld d, $05                                        ; $75b2: $16 $05
	adc b                                            ; $75b4: $88
	ld d, $05                                        ; $75b5: $16 $05
	ld [hl], b                                       ; $75b7: $70
	ld d, $ff                                        ; $75b8: $16 $ff
	ld [$15b0], sp                                   ; $75ba: $08 $b0 $15
	ld [$15c8], sp                                   ; $75bd: $08 $c8 $15
	rst $38                                          ; $75c0: $ff
	db $10                                           ; $75c1: $10
	and b                                            ; $75c2: $a0
	ld d, $10                                        ; $75c3: $16 $10
	cp b                                             ; $75c5: $b8
	ld d, $ff                                        ; $75c6: $16 $ff
	ld b, $60                                        ; $75c8: $06 $60
	rla                                              ; $75ca: $17
	ld b, $78                                        ; $75cb: $06 $78
	rla                                              ; $75cd: $17
	ld b, $60                                        ; $75ce: $06 $60
	rla                                              ; $75d0: $17
	ld [$1778], sp                                   ; $75d1: $08 $78 $17
	ld b, $60                                        ; $75d4: $06 $60
	rla                                              ; $75d6: $17
	ld b, $78                                        ; $75d7: $06 $78
	rla                                              ; $75d9: $17
	ld b, $60                                        ; $75da: $06 $60
	rla                                              ; $75dc: $17
	ld [$1778], sp                                   ; $75dd: $08 $78 $17
	ld b, $60                                        ; $75e0: $06 $60
	rla                                              ; $75e2: $17
	ld b, $78                                        ; $75e3: $06 $78
	rla                                              ; $75e5: $17
	ld b, $60                                        ; $75e6: $06 $60
	rla                                              ; $75e8: $17
	ld b, $78                                        ; $75e9: $06 $78
	rla                                              ; $75eb: $17
	ld b, $90                                        ; $75ec: $06 $90
	rla                                              ; $75ee: $17
	ld b, $a8                                        ; $75ef: $06 $a8
	rla                                              ; $75f1: $17
	ld [$17c0], sp                                   ; $75f2: $08 $c0 $17
	ld [$17d8], sp                                   ; $75f5: $08 $d8 $17
	nop                                              ; $75f8: $00
	ldh a, [rAUD2ENV]                                ; $75f9: $f0 $17
	rst $38                                          ; $75fb: $ff
	ld [Call_000_1858], sp                                   ; $75fc: $08 $58 $18
	ld [$1870], sp                                   ; $75ff: $08 $70 $18
	rst $38                                          ; $7602: $ff
	ld [$5858], sp                                   ; $7603: $08 $58 $58
	ld [$5870], sp                                   ; $7606: $08 $70 $58
	rst $38                                          ; $7609: $ff
	db $10                                           ; $760a: $10
	jr nc, jr_00e_7624                               ; $760b: $30 $17

	db $10                                           ; $760d: $10
	ld c, b                                          ; $760e: $48
	rla                                              ; $760f: $17
	rst $38                                          ; $7610: $ff
	ld [$1808], sp                                   ; $7611: $08 $08 $18
	ld [$180c], sp                                   ; $7614: $08 $0c $18
	ld [$1810], sp                                   ; $7617: $08 $10 $18
	rst $38                                          ; $761a: $ff
	ld [$1818], sp                                   ; $761b: $08 $18 $18
	ld [$181c], sp                                   ; $761e: $08 $1c $18
	ld [$1820], sp                                   ; $7621: $08 $20 $18

jr_00e_7624:
	rst $38                                          ; $7624: $ff
	inc c                                            ; $7625: $0c
	and h                                            ; $7626: $a4
	inc d                                            ; $7627: $14
	inc c                                            ; $7628: $0c
	cp h                                             ; $7629: $bc
	inc d                                            ; $762a: $14
	rst $38                                          ; $762b: $ff
	db $10                                           ; $762c: $10
	ld [hl], h                                       ; $762d: $74
	inc d                                            ; $762e: $14
	db $10                                           ; $762f: $10
	adc h                                            ; $7630: $8c
	inc d                                            ; $7631: $14
	rst $38                                          ; $7632: $ff
	inc b                                            ; $7633: $04
	inc a                                            ; $7634: $3c
	dec d                                            ; $7635: $15
	inc b                                            ; $7636: $04
	ld b, b                                          ; $7637: $40
	dec d                                            ; $7638: $15
	inc b                                            ; $7639: $04
	ld c, b                                          ; $763a: $48
	dec d                                            ; $763b: $15
	inc b                                            ; $763c: $04
	ld d, b                                          ; $763d: $50
	dec d                                            ; $763e: $15
	inc b                                            ; $763f: $04
	ld e, b                                          ; $7640: $58
	dec d                                            ; $7641: $15
	inc b                                            ; $7642: $04
	ld e, h                                          ; $7643: $5c
	dec d                                            ; $7644: $15
	inc b                                            ; $7645: $04
	ld h, b                                          ; $7646: $60
	dec d                                            ; $7647: $15
	rst $38                                          ; $7648: $ff
	ld [$18d0], sp                                   ; $7649: $08 $d0 $18
	ld [$18e8], sp                                   ; $764c: $08 $e8 $18
	rst $38                                          ; $764f: $ff
	ld [$58d0], sp                                   ; $7650: $08 $d0 $58
	ld [$58e8], sp                                   ; $7653: $08 $e8 $58
	rst $38                                          ; $7656: $ff
	ld [$19a8], sp                                   ; $7657: $08 $a8 $19
	ld a, [bc]                                       ; $765a: $0a
	ret nz                                           ; $765b: $c0

	add hl, de                                       ; $765c: $19
	rst $38                                          ; $765d: $ff
	ld b, $d8                                        ; $765e: $06 $d8
	add hl, de                                       ; $7660: $19
	ld b, $f0                                        ; $7661: $06 $f0
	add hl, de                                       ; $7663: $19
	ld b, $08                                        ; $7664: $06 $08
	ld a, [de]                                       ; $7666: $1a
	nop                                              ; $7667: $00
	ld [$ff1a], sp                                   ; $7668: $08 $1a $ff
	ld c, $20                                        ; $766b: $0e $20
	ld a, [de]                                       ; $766d: $1a
	ld c, $38                                        ; $766e: $0e $38
	ld a, [de]                                       ; $7670: $1a
	rst $38                                          ; $7671: $ff
	db $10                                           ; $7672: $10
	ld c, b                                          ; $7673: $48
	add hl, de                                       ; $7674: $19
	db $10                                           ; $7675: $10
	ld h, b                                          ; $7676: $60
	add hl, de                                       ; $7677: $19
	rst $38                                          ; $7678: $ff
	ld [$1ac8], sp                                   ; $7679: $08 $c8 $1a
	ld [$1ae0], sp                                   ; $767c: $08 $e0 $1a
	rst $38                                          ; $767f: $ff
	ld [$5ac8], sp                                   ; $7680: $08 $c8 $5a
	ld [$5ae0], sp                                   ; $7683: $08 $e0 $5a
	rst $38                                          ; $7686: $ff
	ld [$1b28], sp                                   ; $7687: $08 $28 $1b
	ld [$1b40], sp                                   ; $768a: $08 $40 $1b
	rst $38                                          ; $768d: $ff
	ld [$1b58], sp                                   ; $768e: $08 $58 $1b
	ld [$1b70], sp                                   ; $7691: $08 $70 $1b
	rst $38                                          ; $7694: $ff
	ld [$1b88], sp                                   ; $7695: $08 $88 $1b
	ld [$1ba0], sp                                   ; $7698: $08 $a0 $1b
	nop                                              ; $769b: $00
	and b                                            ; $769c: $a0
	dec de                                           ; $769d: $1b
	rst $38                                          ; $769e: $ff
	inc d                                            ; $769f: $14
	cp h                                             ; $76a0: $bc
	dec de                                           ; $76a1: $1b
	inc d                                            ; $76a2: $14
	call c, $ff1b                                    ; $76a3: $dc $1b $ff
	ld [$1ba0], sp                                   ; $76a6: $08 $a0 $1b
	ld [$1b88], sp                                   ; $76a9: $08 $88 $1b
	nop                                              ; $76ac: $00
	adc b                                            ; $76ad: $88
	dec de                                           ; $76ae: $1b
	rst $38                                          ; $76af: $ff
	db $10                                           ; $76b0: $10
	ld hl, sp+$1a                                    ; $76b1: $f8 $1a
	db $10                                           ; $76b3: $10
	db $10                                           ; $76b4: $10
	dec de                                           ; $76b5: $1b
	rst $38                                          ; $76b6: $ff
	ld [$1c38], sp                                   ; $76b7: $08 $38 $1c
	ld [$1c50], sp                                   ; $76ba: $08 $50 $1c
	rst $38                                          ; $76bd: $ff
	ld [$5c38], sp                                   ; $76be: $08 $38 $5c
	ld [$5c50], sp                                   ; $76c1: $08 $50 $5c
	rst $38                                          ; $76c4: $ff
	ld [$1c98], sp                                   ; $76c5: $08 $98 $1c
	ld [$1cb0], sp                                   ; $76c8: $08 $b0 $1c
	rst $38                                          ; $76cb: $ff
	ld [$1cc8], sp                                   ; $76cc: $08 $c8 $1c
	ld [$1ce0], sp                                   ; $76cf: $08 $e0 $1c
	rst $38                                          ; $76d2: $ff
	db $10                                           ; $76d3: $10
	ld l, b                                          ; $76d4: $68
	inc e                                            ; $76d5: $1c
	db $10                                           ; $76d6: $10
	add b                                            ; $76d7: $80
	inc e                                            ; $76d8: $1c
	rst $38                                          ; $76d9: $ff
	ld [$21a4], sp                                   ; $76da: $08 $a4 $21
	ld [$21c8], sp                                   ; $76dd: $08 $c8 $21
	ld [$21e8], sp                                   ; $76e0: $08 $e8 $21
	rst $38                                          ; $76e3: $ff
	inc b                                            ; $76e4: $04
	and h                                            ; $76e5: $a4
	ld hl, $c804                                     ; $76e6: $21 $04 $c8
	ld hl, $e804                                     ; $76e9: $21 $04 $e8
	ld hl, $02ff                                     ; $76ec: $21 $ff $02
	nop                                              ; $76ef: $00
	ld [hl+], a                                      ; $76f0: $22
	ld [bc], a                                       ; $76f1: $02
	inc e                                            ; $76f2: $1c
	ld [hl+], a                                      ; $76f3: $22
	ld [bc], a                                       ; $76f4: $02
	jr c, @+$24                                      ; $76f5: $38 $22

	ld [bc], a                                       ; $76f7: $02
	ld d, h                                          ; $76f8: $54
	ld [hl+], a                                      ; $76f9: $22
	ld [bc], a                                       ; $76fa: $02
	ld [hl], b                                       ; $76fb: $70
	ld [hl+], a                                      ; $76fc: $22
	ld [bc], a                                       ; $76fd: $02
	adc h                                            ; $76fe: $8c
	ld [hl+], a                                      ; $76ff: $22
	rst $38                                          ; $7700: $ff
	ld [$22a8], sp                                   ; $7701: $08 $a8 $22
	ld [$22c0], sp                                   ; $7704: $08 $c0 $22
	ld [$22d8], sp                                   ; $7707: $08 $d8 $22
	ld [$22f0], sp                                   ; $770a: $08 $f0 $22
	rst $38                                          ; $770d: $ff
	inc bc                                           ; $770e: $03
	db $10                                           ; $770f: $10
	dec e                                            ; $7710: $1d
	inc bc                                           ; $7711: $03
	inc h                                            ; $7712: $24
	dec e                                            ; $7713: $1d
	rst $38                                          ; $7714: $ff
	ld [$1d3c], sp                                   ; $7715: $08 $3c $1d
	ld [$1d50], sp                                   ; $7718: $08 $50 $1d
	ld [$1d70], sp                                   ; $771b: $08 $70 $1d
	ld [$1d8c], sp                                   ; $771e: $08 $8c $1d
	nop                                              ; $7721: $00
	adc h                                            ; $7722: $8c
	dec e                                            ; $7723: $1d
	rst $38                                          ; $7724: $ff
	ld e, $6c                                        ; $7725: $1e $6c
	jr nz, @+$0a                                     ; $7727: $20 $08

	add b                                            ; $7729: $80
	jr nz, jr_00e_772c                               ; $772a: $20 $00

jr_00e_772c:
	xor h                                            ; $772c: $ac
	jr nz, @+$01                                     ; $772d: $20 $ff

	ld [$20e4], sp                                   ; $772f: $08 $e4 $20
	ld [$20e8], sp                                   ; $7732: $08 $e8 $20
	ld [$20ec], sp                                   ; $7735: $08 $ec $20
	ld [$20f4], sp                                   ; $7738: $08 $f4 $20
	nop                                              ; $773b: $00
	db $fc                                           ; $773c: $fc
	jr nz, @+$01                                     ; $773d: $20 $ff

	inc c                                            ; $773f: $0c
	ld c, h                                          ; $7740: $4c
	ld hl, $500c                                     ; $7741: $21 $0c $50
	ld hl, $08ff                                     ; $7744: $21 $ff $08
	db $ec                                           ; $7747: $ec
	dec e                                            ; $7748: $1d
	ld [$1df4], sp                                   ; $7749: $08 $f4 $1d
	rst $38                                          ; $774c: $ff
	ld b, $fc                                        ; $774d: $06 $fc
	dec e                                            ; $774f: $1d
	ld b, $04                                        ; $7750: $06 $04
	ld e, $ff                                        ; $7752: $1e $ff
	rlca                                             ; $7754: $07
	db $10                                           ; $7755: $10
	ld e, $07                                        ; $7756: $1e $07
	jr nz, @+$20                                     ; $7758: $20 $1e

	rst $38                                          ; $775a: $ff
	ld [$1e30], sp                                   ; $775b: $08 $30 $1e
	ld [$1e38], sp                                   ; $775e: $08 $38 $1e
	ld [$1e4c], sp                                   ; $7761: $08 $4c $1e
	ld [$1e6c], sp                                   ; $7764: $08 $6c $1e
	ld [$1e94], sp                                   ; $7767: $08 $94 $1e
	ld [$1ec4], sp                                   ; $776a: $08 $c4 $1e
	ld [$1efc], sp                                   ; $776d: $08 $fc $1e
	ld [$1f34], sp                                   ; $7770: $08 $34 $1f
	ld [$1f68], sp                                   ; $7773: $08 $68 $1f
	ld [$1f9c], sp                                   ; $7776: $08 $9c $1f
	ld [$1fd0], sp                                   ; $7779: $08 $d0 $1f
	ld [$1ffc], sp                                   ; $777c: $08 $fc $1f
	ld [$2020], sp                                   ; $777f: $08 $20 $20
	ld [$2038], sp                                   ; $7782: $08 $38 $20
	ld [$2048], sp                                   ; $7785: $08 $48 $20
	nop                                              ; $7788: $00
	rst $38                                          ; $7789: $ff
	rst $38                                          ; $778a: $ff
	ld b, $9c                                        ; $778b: $06 $9c
	inc hl                                           ; $778d: $23
	ld b, $b8                                        ; $778e: $06 $b8
	inc hl                                           ; $7790: $23
	rst $38                                          ; $7791: $ff
	ld b, $9c                                        ; $7792: $06 $9c
	ld h, e                                          ; $7794: $63
	ld b, $b8                                        ; $7795: $06 $b8
	ld h, e                                          ; $7797: $63
	rst $38                                          ; $7798: $ff
	ld b, $d4                                        ; $7799: $06 $d4
	inc hl                                           ; $779b: $23
	ld b, $dc                                        ; $779c: $06 $dc
	inc hl                                           ; $779e: $23
	rst $38                                          ; $779f: $ff
	ld [$23e8], sp                                   ; $77a0: $08 $e8 $23
	jr nc, jr_00e_77a9                               ; $77a3: $30 $04

	inc h                                            ; $77a5: $24
	ld e, $1c                                        ; $77a6: $1e $1c
	inc h                                            ; $77a8: $24

jr_00e_77a9:
	nop                                              ; $77a9: $00
	inc [hl]                                         ; $77aa: $34
	inc h                                            ; $77ab: $24
	rst $38                                          ; $77ac: $ff
	db $10                                           ; $77ad: $10
	sub h                                            ; $77ae: $94
	inc l                                            ; $77af: $2c
	ret z                                            ; $77b0: $c8

	call nc, $ff2b                                   ; $77b1: $d4 $2b $ff
	ld [$2b14], sp                                   ; $77b4: $08 $14 $2b
	ld [$2b2c], sp                                   ; $77b7: $08 $2c $2b
	rst $38                                          ; $77ba: $ff
	ld [$2c1c], sp                                   ; $77bb: $08 $1c $2c
	ld [$2c34], sp                                   ; $77be: $08 $34 $2c
	rst $38                                          ; $77c1: $ff
	ld [$2bec], sp                                   ; $77c2: $08 $ec $2b
	ld [$2c04], sp                                   ; $77c5: $08 $04 $2c
	rst $38                                          ; $77c8: $ff
	ld [$2c4c], sp                                   ; $77c9: $08 $4c $2c
	dec b                                            ; $77cc: $05
	ld h, h                                          ; $77cd: $64
	inc l                                            ; $77ce: $2c
	rst $38                                          ; $77cf: $ff
	ld [$2b5c], sp                                   ; $77d0: $08 $5c $2b
	ld [$2b74], sp                                   ; $77d3: $08 $74 $2b
	rst $38                                          ; $77d6: $ff
	db $10                                           ; $77d7: $10
	adc h                                            ; $77d8: $8c
	dec hl                                           ; $77d9: $2b
	db $10                                           ; $77da: $10
	and h                                            ; $77db: $a4
	dec hl                                           ; $77dc: $2b
	rst $38                                          ; $77dd: $ff
	ld [$2d3c], sp                                   ; $77de: $08 $3c $2d
	ld [$2d54], sp                                   ; $77e1: $08 $54 $2d
	rst $38                                          ; $77e4: $ff
	ld c, $6c                                        ; $77e5: $0e $6c
	dec l                                            ; $77e7: $2d
	jr @-$7a                                         ; $77e8: $18 $84

	dec l                                            ; $77ea: $2d
	rst $38                                          ; $77eb: $ff
	db $10                                           ; $77ec: $10
	db $f4                                           ; $77ed: $f4
	inc l                                            ; $77ee: $2c
	db $10                                           ; $77ef: $10
	inc c                                            ; $77f0: $0c
	dec l                                            ; $77f1: $2d
	rst $38                                          ; $77f2: $ff
	ld [$2f50], sp                                   ; $77f3: $08 $50 $2f
	ld [$2f68], sp                                   ; $77f6: $08 $68 $2f
	rst $38                                          ; $77f9: $ff
	ld [$6f50], sp                                   ; $77fa: $08 $50 $6f
	ld [$6f68], sp                                   ; $77fd: $08 $68 $6f
	rst $38                                          ; $7800: $ff
	jr nz, jr_00e_782f                               ; $7801: $20 $2c

	ld l, $10                                        ; $7803: $2e $10
	ld b, h                                          ; $7805: $44
	ld l, $10                                        ; $7806: $2e $10
	ld e, h                                          ; $7808: $5c
	ld l, $10                                        ; $7809: $2e $10
	ld [hl], h                                       ; $780b: $74
	ld l, $10                                        ; $780c: $2e $10
	adc h                                            ; $780e: $8c
	ld l, $04                                        ; $780f: $2e $04
	and h                                            ; $7811: $a4
	ld l, $10                                        ; $7812: $2e $10
	cp h                                             ; $7814: $bc
	ld l, $00                                        ; $7815: $2e $00
	and h                                            ; $7817: $a4
	ld l, $ff                                        ; $7818: $2e $ff
	ld [$2ed8], sp                                   ; $781a: $08 $d8 $2e
	ld [$2ef0], sp                                   ; $781d: $08 $f0 $2e
	rst $38                                          ; $7820: $ff
	ld [$2f20], sp                                   ; $7821: $08 $20 $2f
	ld [$2f38], sp                                   ; $7824: $08 $38 $2f
	rst $38                                          ; $7827: $ff
	db $10                                           ; $7828: $10
	db $fc                                           ; $7829: $fc
	dec l                                            ; $782a: $2d
	db $10                                           ; $782b: $10
	inc d                                            ; $782c: $14
	ld l, $ff                                        ; $782d: $2e $ff

jr_00e_782f:
	ld [$2f08], sp                                   ; $782f: $08 $08 $2f
	ld [$2f0c], sp                                   ; $7832: $08 $0c $2f
	ld [$2f10], sp                                   ; $7835: $08 $10 $2f
	ld [$2f0c], sp                                   ; $7838: $08 $0c $2f
	rst $38                                          ; $783b: $ff
	ld [$253c], sp                                   ; $783c: $08 $3c $25
	ld [$2554], sp                                   ; $783f: $08 $54 $25
	rst $38                                          ; $7842: $ff
	ld [$256c], sp                                   ; $7843: $08 $6c $25
	ld [$2584], sp                                   ; $7846: $08 $84 $25
	rst $38                                          ; $7849: $ff
	db $10                                           ; $784a: $10
	inc c                                            ; $784b: $0c
	dec h                                            ; $784c: $25
	db $10                                           ; $784d: $10
	inc h                                            ; $784e: $24
	dec h                                            ; $784f: $25
	rst $38                                          ; $7850: $ff
	db $10                                           ; $7851: $10
	and h                                            ; $7852: $a4
	ld h, $10                                        ; $7853: $26 $10
	cp h                                             ; $7855: $bc
	ld h, $ff                                        ; $7856: $26 $ff
	db $10                                           ; $7858: $10
	ld e, h                                          ; $7859: $5c
	ld h, $10                                        ; $785a: $26 $10
	ld [hl], h                                       ; $785c: $74
	ld h, $ff                                        ; $785d: $26 $ff
	ld [hl-], a                                      ; $785f: $32
	call nc, $3226                                   ; $7860: $d4 $26 $32
	call c, $3226                                    ; $7863: $dc $26 $32
	db $e4                                           ; $7866: $e4
	ld h, $00                                        ; $7867: $26 $00
	db $f4                                           ; $7869: $f4
	ld h, $ff                                        ; $786a: $26 $ff
	inc c                                            ; $786c: $0c
	db $e4                                           ; $786d: $e4
	ld h, $0c                                        ; $786e: $26 $0c
	call c, $0c26                                    ; $7870: $dc $26 $0c
	call nc, $0026                                   ; $7873: $d4 $26 $00
	rst $38                                          ; $7876: $ff
	rst $38                                          ; $7877: $ff
	ld b, $94                                        ; $7878: $06 $94
	daa                                              ; $787a: $27
	ld b, $ac                                        ; $787b: $06 $ac
	daa                                              ; $787d: $27
	ld b, $c8                                        ; $787e: $06 $c8
	daa                                              ; $7880: $27
	ld b, $e4                                        ; $7881: $06 $e4
	daa                                              ; $7883: $27
	rst $38                                          ; $7884: $ff
	ld a, [de]                                       ; $7885: $1a
	sub h                                            ; $7886: $94
	daa                                              ; $7887: $27
	dec b                                            ; $7888: $05
	nop                                              ; $7889: $00
	jr z, jr_00e_7891                                ; $788a: $28 $05

	jr jr_00e_78b6                                   ; $788c: $18 $28

	dec b                                            ; $788e: $05
	jr nc, @+$2a                                     ; $788f: $30 $28

jr_00e_7891:
	nop                                              ; $7891: $00
	jr nc, @+$2a                                     ; $7892: $30 $28

	rst $38                                          ; $7894: $ff
	ld [$2acc], sp                                   ; $7895: $08 $cc $2a
	ld [$2ae4], sp                                   ; $7898: $08 $e4 $2a
	rst $38                                          ; $789b: $ff
	ld [$6acc], sp                                   ; $789c: $08 $cc $6a
	ld [$6ae4], sp                                   ; $789f: $08 $e4 $6a
	rst $38                                          ; $78a2: $ff
	db $10                                           ; $78a3: $10
	ld h, h                                          ; $78a4: $64
	daa                                              ; $78a5: $27
	db $10                                           ; $78a6: $10
	ld a, h                                          ; $78a7: $7c
	daa                                              ; $78a8: $27
	rst $38                                          ; $78a9: $ff
	ld [$2848], sp                                   ; $78aa: $08 $48 $28
	ld [$284c], sp                                   ; $78ad: $08 $4c $28
	ld [$2854], sp                                   ; $78b0: $08 $54 $28
	ld [$285c], sp                                   ; $78b3: $08 $5c $28

jr_00e_78b6:
	nop                                              ; $78b6: $00
	ld e, h                                          ; $78b7: $5c
	jr z, @+$01                                      ; $78b8: $28 $ff

	ld [$2864], sp                                   ; $78ba: $08 $64 $28
	ld [$286c], sp                                   ; $78bd: $08 $6c $28
	rst $38                                          ; $78c0: $ff
	ld [bc], a                                       ; $78c1: $02
	ld [hl], h                                       ; $78c2: $74
	jr z, @+$04                                      ; $78c3: $28 $02

	adc h                                            ; $78c5: $8c
	jr z, @+$04                                      ; $78c6: $28 $02

	and h                                            ; $78c8: $a4
	jr z, @+$04                                      ; $78c9: $28 $02

	cp h                                             ; $78cb: $bc
	jr z, @+$04                                      ; $78cc: $28 $02

	call nc, $0228                                   ; $78ce: $d4 $28 $02
	inc b                                            ; $78d1: $04
	add hl, hl                                       ; $78d2: $29
	ld [bc], a                                       ; $78d3: $02
	ld c, h                                          ; $78d4: $4c
	add hl, hl                                       ; $78d5: $29
	ld [bc], a                                       ; $78d6: $02
	xor h                                            ; $78d7: $ac
	add hl, hl                                       ; $78d8: $29
	ld [bc], a                                       ; $78d9: $02
	ld c, h                                          ; $78da: $4c
	add hl, hl                                       ; $78db: $29
	ld [bc], a                                       ; $78dc: $02
	xor h                                            ; $78dd: $ac
	add hl, hl                                       ; $78de: $29
	ld [bc], a                                       ; $78df: $02
	inc c                                            ; $78e0: $0c
	ld a, [hl+]                                      ; $78e1: $2a
	ld [bc], a                                       ; $78e2: $02
	ld l, h                                          ; $78e3: $6c
	ld a, [hl+]                                      ; $78e4: $2a
	ld [bc], a                                       ; $78e5: $02
	inc c                                            ; $78e6: $0c
	ld a, [hl+]                                      ; $78e7: $2a
	ld [bc], a                                       ; $78e8: $02
	ld l, h                                          ; $78e9: $6c
	ld a, [hl+]                                      ; $78ea: $2a
	ld [bc], a                                       ; $78eb: $02
	inc c                                            ; $78ec: $0c
	ld a, [hl+]                                      ; $78ed: $2a
	ld [bc], a                                       ; $78ee: $02
	ld l, h                                          ; $78ef: $6c
	ld a, [hl+]                                      ; $78f0: $2a
	ld [bc], a                                       ; $78f1: $02
	inc c                                            ; $78f2: $0c
	ld a, [hl+]                                      ; $78f3: $2a
	ld [bc], a                                       ; $78f4: $02
	ld l, h                                          ; $78f5: $6c
	ld a, [hl+]                                      ; $78f6: $2a
	ld [bc], a                                       ; $78f7: $02
	inc c                                            ; $78f8: $0c
	ld a, [hl+]                                      ; $78f9: $2a
	ld [bc], a                                       ; $78fa: $02
	ld l, h                                          ; $78fb: $6c
	ld a, [hl+]                                      ; $78fc: $2a
	ld [bc], a                                       ; $78fd: $02
	inc c                                            ; $78fe: $0c
	ld a, [hl+]                                      ; $78ff: $2a
	ld [bc], a                                       ; $7900: $02
	ld l, h                                          ; $7901: $6c
	ld a, [hl+]                                      ; $7902: $2a
	ld [bc], a                                       ; $7903: $02
	inc c                                            ; $7904: $0c
	ld a, [hl+]                                      ; $7905: $2a
	ld [bc], a                                       ; $7906: $02
	ld l, h                                          ; $7907: $6c
	ld a, [hl+]                                      ; $7908: $2a
	ld [bc], a                                       ; $7909: $02
	inc c                                            ; $790a: $0c
	ld a, [hl+]                                      ; $790b: $2a
	ld [bc], a                                       ; $790c: $02
	ld l, h                                          ; $790d: $6c
	ld a, [hl+]                                      ; $790e: $2a
	ld [bc], a                                       ; $790f: $02
	inc c                                            ; $7910: $0c
	ld a, [hl+]                                      ; $7911: $2a
	ld [bc], a                                       ; $7912: $02
	ld l, h                                          ; $7913: $6c
	ld a, [hl+]                                      ; $7914: $2a
	ld [bc], a                                       ; $7915: $02
	inc c                                            ; $7916: $0c
	ld a, [hl+]                                      ; $7917: $2a
	ld [bc], a                                       ; $7918: $02
	ld l, h                                          ; $7919: $6c
	ld a, [hl+]                                      ; $791a: $2a
	ld [bc], a                                       ; $791b: $02
	inc c                                            ; $791c: $0c
	ld a, [hl+]                                      ; $791d: $2a
	ld [bc], a                                       ; $791e: $02
	ld l, h                                          ; $791f: $6c
	ld a, [hl+]                                      ; $7920: $2a
	ld [bc], a                                       ; $7921: $02
	inc c                                            ; $7922: $0c
	ld a, [hl+]                                      ; $7923: $2a
	ld [bc], a                                       ; $7924: $02
	ld l, h                                          ; $7925: $6c
	ld a, [hl+]                                      ; $7926: $2a
	ld [bc], a                                       ; $7927: $02
	inc c                                            ; $7928: $0c
	ld a, [hl+]                                      ; $7929: $2a
	ld [bc], a                                       ; $792a: $02
	ld l, h                                          ; $792b: $6c
	ld a, [hl+]                                      ; $792c: $2a
	ld [bc], a                                       ; $792d: $02
	inc c                                            ; $792e: $0c
	ld a, [hl+]                                      ; $792f: $2a
	ld [bc], a                                       ; $7930: $02
	ld l, h                                          ; $7931: $6c
	ld a, [hl+]                                      ; $7932: $2a
	ld [bc], a                                       ; $7933: $02
	inc c                                            ; $7934: $0c
	ld a, [hl+]                                      ; $7935: $2a
	ld [bc], a                                       ; $7936: $02
	ld l, h                                          ; $7937: $6c
	ld a, [hl+]                                      ; $7938: $2a
	ld [bc], a                                       ; $7939: $02
	inc c                                            ; $793a: $0c
	ld a, [hl+]                                      ; $793b: $2a
	ld [bc], a                                       ; $793c: $02
	ld l, h                                          ; $793d: $6c
	ld a, [hl+]                                      ; $793e: $2a
	ld [bc], a                                       ; $793f: $02
	inc c                                            ; $7940: $0c
	ld a, [hl+]                                      ; $7941: $2a
	ld [bc], a                                       ; $7942: $02
	ld l, h                                          ; $7943: $6c
	ld a, [hl+]                                      ; $7944: $2a
	ld [bc], a                                       ; $7945: $02
	inc c                                            ; $7946: $0c
	ld a, [hl+]                                      ; $7947: $2a
	ld [bc], a                                       ; $7948: $02
	ld l, h                                          ; $7949: $6c
	ld a, [hl+]                                      ; $794a: $2a
	ld [bc], a                                       ; $794b: $02
	inc c                                            ; $794c: $0c
	ld a, [hl+]                                      ; $794d: $2a
	ld [bc], a                                       ; $794e: $02
	ld l, h                                          ; $794f: $6c
	ld a, [hl+]                                      ; $7950: $2a
	ld [bc], a                                       ; $7951: $02
	inc c                                            ; $7952: $0c
	ld a, [hl+]                                      ; $7953: $2a
	ld [bc], a                                       ; $7954: $02
	ld l, h                                          ; $7955: $6c
	ld a, [hl+]                                      ; $7956: $2a
	ld [bc], a                                       ; $7957: $02
	inc c                                            ; $7958: $0c
	ld a, [hl+]                                      ; $7959: $2a
	ld [bc], a                                       ; $795a: $02
	ld l, h                                          ; $795b: $6c
	ld a, [hl+]                                      ; $795c: $2a
	ld [bc], a                                       ; $795d: $02
	inc c                                            ; $795e: $0c
	ld a, [hl+]                                      ; $795f: $2a
	ld [bc], a                                       ; $7960: $02
	ld l, h                                          ; $7961: $6c
	ld a, [hl+]                                      ; $7962: $2a
	ld [bc], a                                       ; $7963: $02
	inc c                                            ; $7964: $0c
	ld a, [hl+]                                      ; $7965: $2a
	ld [bc], a                                       ; $7966: $02
	ld l, h                                          ; $7967: $6c
	ld a, [hl+]                                      ; $7968: $2a
	ld [bc], a                                       ; $7969: $02
	inc c                                            ; $796a: $0c
	ld a, [hl+]                                      ; $796b: $2a
	ld [bc], a                                       ; $796c: $02
	ld l, h                                          ; $796d: $6c
	ld a, [hl+]                                      ; $796e: $2a
	ld [bc], a                                       ; $796f: $02
	ld c, h                                          ; $7970: $4c
	add hl, hl                                       ; $7971: $29
	ld [bc], a                                       ; $7972: $02
	xor h                                            ; $7973: $ac
	add hl, hl                                       ; $7974: $29
	ld [bc], a                                       ; $7975: $02
	ld c, h                                          ; $7976: $4c
	add hl, hl                                       ; $7977: $29
	ld [bc], a                                       ; $7978: $02
	xor h                                            ; $7979: $ac
	add hl, hl                                       ; $797a: $29
	ld [bc], a                                       ; $797b: $02
	ld c, h                                          ; $797c: $4c
	add hl, hl                                       ; $797d: $29
	ld [bc], a                                       ; $797e: $02
	xor h                                            ; $797f: $ac
	add hl, hl                                       ; $7980: $29
	ld [bc], a                                       ; $7981: $02
	ld c, h                                          ; $7982: $4c
	add hl, hl                                       ; $7983: $29
	ld [bc], a                                       ; $7984: $02
	xor h                                            ; $7985: $ac
	add hl, hl                                       ; $7986: $29
	inc c                                            ; $7987: $0c
	inc b                                            ; $7988: $04
	add hl, hl                                       ; $7989: $29
	inc c                                            ; $798a: $0c
	call nc, $0c28                                   ; $798b: $d4 $28 $0c
	cp h                                             ; $798e: $bc
	jr z, @+$0a                                      ; $798f: $28 $08

	and h                                            ; $7991: $a4
	jr z, @+$0a                                      ; $7992: $28 $08

	adc h                                            ; $7994: $8c
	jr z, jr_00e_79a3                                ; $7995: $28 $0c

	ld [hl], h                                       ; $7997: $74
	jr z, jr_00e_799a                                ; $7998: $28 $00

jr_00e_799a:
	ld [hl], h                                       ; $799a: $74
	jr z, @+$01                                      ; $799b: $28 $ff

	ld [$3058], sp                                   ; $799d: $08 $58 $30
	ld [$3070], sp                                   ; $79a0: $08 $70 $30

jr_00e_79a3:
	ld [$3088], sp                                   ; $79a3: $08 $88 $30
	ld [$30a0], sp                                   ; $79a6: $08 $a0 $30
	ld [$30cc], sp                                   ; $79a9: $08 $cc $30
	nop                                              ; $79ac: $00
	call z, $ff30                                    ; $79ad: $cc $30 $ff
	ld [$6fc8], sp                                   ; $79b0: $08 $c8 $6f
	ld [$6fe0], sp                                   ; $79b3: $08 $e0 $6f
	rst $38                                          ; $79b6: $ff
	ld [$2fc8], sp                                   ; $79b7: $08 $c8 $2f
	ld [$2fe0], sp                                   ; $79ba: $08 $e0 $2f
	rst $38                                          ; $79bd: $ff
	ld [$3110], sp                                   ; $79be: $08 $10 $31
	ld [$3128], sp                                   ; $79c1: $08 $28 $31
	rst $38                                          ; $79c4: $ff
	ld [$7110], sp                                   ; $79c5: $08 $10 $71
	ld [$7128], sp                                   ; $79c8: $08 $28 $71
	rst $38                                          ; $79cb: $ff
	ld [$3140], sp                                   ; $79cc: $08 $40 $31
	ld [$315c], sp                                   ; $79cf: $08 $5c $31
	rst $38                                          ; $79d2: $ff
	inc b                                            ; $79d3: $04
	ld [hl], h                                       ; $79d4: $74
	ld sp, $7804                                     ; $79d5: $31 $04 $78
	ld sp, $7c04                                     ; $79d8: $31 $04 $7c
	ld sp, $8404                                     ; $79db: $31 $04 $84
	ld sp, $8400                                     ; $79de: $31 $00 $84
	ld sp, $10ff                                     ; $79e1: $31 $ff $10
	ld hl, sp+$2f                                    ; $79e4: $f8 $2f
	db $10                                           ; $79e6: $10
	db $10                                           ; $79e7: $10
	jr nc, @+$01                                     ; $79e8: $30 $ff

	ld [$3028], sp                                   ; $79ea: $08 $28 $30
	ld [$3040], sp                                   ; $79ed: $08 $40 $30
	rst $38                                          ; $79f0: $ff
	db $10                                           ; $79f1: $10
	and h                                            ; $79f2: $a4
	ld sp, $bc10                                     ; $79f3: $31 $10 $bc
	ld sp, $d410                                     ; $79f6: $31 $10 $d4
	ld sp, $bc10                                     ; $79f9: $31 $10 $bc
	ld sp, $d410                                     ; $79fc: $31 $10 $d4
	ld sp, $ec10                                     ; $79ff: $31 $10 $ec
	ld sp, $0400                                     ; $7a02: $31 $00 $04
	ld [hl-], a                                      ; $7a05: $32
	rst $38                                          ; $7a06: $ff
	ld [$321c], sp                                   ; $7a07: $08 $1c $32
	ld [$3220], sp                                   ; $7a0a: $08 $20 $32
	ld [$3224], sp                                   ; $7a0d: $08 $24 $32
	rst $38                                          ; $7a10: $ff
	ld [$34b8], sp                                   ; $7a11: $08 $b8 $34
	ld [$34d0], sp                                   ; $7a14: $08 $d0 $34
	rst $38                                          ; $7a17: $ff
	ld [$3580], sp                                   ; $7a18: $08 $80 $35
	ld [$358c], sp                                   ; $7a1b: $08 $8c $35
	rst $38                                          ; $7a1e: $ff
	ld [$35e0], sp                                   ; $7a1f: $08 $e0 $35
	ld [$35ec], sp                                   ; $7a22: $08 $ec $35
	rst $38                                          ; $7a25: $ff
	ld [$35f8], sp                                   ; $7a26: $08 $f8 $35
	ld [$3600], sp                                   ; $7a29: $08 $00 $36
	nop                                              ; $7a2c: $00
	rst $38                                          ; $7a2d: $ff
	rst $38                                          ; $7a2e: $ff
	inc b                                            ; $7a2f: $04
	ld [$0436], sp                                   ; $7a30: $08 $36 $04
	inc c                                            ; $7a33: $0c
	ld [hl], $ff                                     ; $7a34: $36 $ff
	ld [bc], a                                       ; $7a36: $02
	ld [$0236], sp                                   ; $7a37: $08 $36 $02
	inc c                                            ; $7a3a: $0c
	ld [hl], $ff                                     ; $7a3b: $36 $ff
	inc bc                                           ; $7a3d: $03
	inc d                                            ; $7a3e: $14
	ld [hl], $03                                     ; $7a3f: $36 $03
	jr nz, jr_00e_7a79                               ; $7a41: $20 $36

	rst $38                                          ; $7a43: $ff
	ld e, $3c                                        ; $7a44: $1e $3c
	inc sp                                           ; $7a46: $33
	ld [$329c], sp                                   ; $7a47: $08 $9c $32
	ld [$32b4], sp                                   ; $7a4a: $08 $b4 $32
	ld [$32d0], sp                                   ; $7a4d: $08 $d0 $32
	ld [$32ec], sp                                   ; $7a50: $08 $ec $32
	ld [$3308], sp                                   ; $7a53: $08 $08 $33
	ld [$3320], sp                                   ; $7a56: $08 $20 $33
	ld [$329c], sp                                   ; $7a59: $08 $9c $32
	ld [$32b4], sp                                   ; $7a5c: $08 $b4 $32
	ld [$32d0], sp                                   ; $7a5f: $08 $d0 $32
	ld [$32ec], sp                                   ; $7a62: $08 $ec $32
	ld [$3308], sp                                   ; $7a65: $08 $08 $33
	ld [$3320], sp                                   ; $7a68: $08 $20 $33
	nop                                              ; $7a6b: $00
	inc a                                            ; $7a6c: $3c
	inc sp                                           ; $7a6d: $33
	rst $38                                          ; $7a6e: $ff
	ld b, $7c                                        ; $7a6f: $06 $7c
	inc sp                                           ; $7a71: $33
	ld b, $80                                        ; $7a72: $06 $80
	inc sp                                           ; $7a74: $33
	ld b, $84                                        ; $7a75: $06 $84
	inc sp                                           ; $7a77: $33
	nop                                              ; $7a78: $00

jr_00e_7a79:
	adc h                                            ; $7a79: $8c
	inc sp                                           ; $7a7a: $33
	rst $38                                          ; $7a7b: $ff
	ld b, $a4                                        ; $7a7c: $06 $a4
	inc sp                                           ; $7a7e: $33
	ld b, $a8                                        ; $7a7f: $06 $a8
	inc sp                                           ; $7a81: $33
	nop                                              ; $7a82: $00
	xor h                                            ; $7a83: $ac
	inc sp                                           ; $7a84: $33
	rst $38                                          ; $7a85: $ff
	ld [$33d4], sp                                   ; $7a86: $08 $d4 $33
	ld [$33f0], sp                                   ; $7a89: $08 $f0 $33
	nop                                              ; $7a8c: $00
	ldh a, [$33]                                     ; $7a8d: $f0 $33
	rst $38                                          ; $7a8f: $ff
	ld [$3420], sp                                   ; $7a90: $08 $20 $34
	ld [$3438], sp                                   ; $7a93: $08 $38 $34
	ld [$3450], sp                                   ; $7a96: $08 $50 $34
	ld [$3438], sp                                   ; $7a99: $08 $38 $34
	rst $38                                          ; $7a9c: $ff
	ld b, $68                                        ; $7a9d: $06 $68
	inc [hl]                                         ; $7a9f: $34
	ld b, $78                                        ; $7aa0: $06 $78
	inc [hl]                                         ; $7aa2: $34
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
