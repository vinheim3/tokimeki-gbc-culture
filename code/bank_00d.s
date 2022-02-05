; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

	ld hl, sp-$10                                    ; $4000: $f8 $f0
	jr nc, jr_00d_4004                               ; $4002: $30 $00

jr_00d_4004:
	nop                                              ; $4004: $00
	ldh a, [$32]                                     ; $4005: $f0 $32
	nop                                              ; $4007: $00
	ld hl, sp+$00                                    ; $4008: $f8 $00
	inc [hl]                                         ; $400a: $34
	nop                                              ; $400b: $00
	nop                                              ; $400c: $00
	nop                                              ; $400d: $00
	ld [hl], $01                                     ; $400e: $36 $01
	db $18, $e8                                      ; $4010: $18 $e8

jr_00d_4012:
	nop                                              ; $4012: $00
	nop                                              ; $4013: $00
	db $f4                                           ; $4014: $f4
	add sp, $00                                      ; $4015: $e8 $00
	nop                                              ; $4017: $00
	inc b                                            ; $4018: $04
	add sp, $00                                      ; $4019: $e8 $00
	nop                                              ; $401b: $00
	db $fc                                           ; $401c: $fc
	ld hl, sp+$00                                    ; $401d: $f8 $00
	nop                                              ; $401f: $00
	xor $08                                          ; $4020: $ee $08
	nop                                              ; $4022: $00
	nop                                              ; $4023: $00
	inc b                                            ; $4024: $04
	ld [$0100], sp                                   ; $4025: $08 $00 $01
	jr jr_00d_4012                                   ; $4028: $18 $e8

	nop                                              ; $402a: $00
	nop                                              ; $402b: $00
	ld hl, sp-$18                                    ; $402c: $f8 $e8

jr_00d_402e:
	nop                                              ; $402e: $00
	nop                                              ; $402f: $00
	nop                                              ; $4030: $00
	add sp, $00                                      ; $4031: $e8 $00
	nop                                              ; $4033: $00
	ldh a, [$f8]                                     ; $4034: $f0 $f8
	nop                                              ; $4036: $00
	nop                                              ; $4037: $00
	ld [$00f8], sp                                   ; $4038: $08 $f8 $00
	nop                                              ; $403b: $00
	ld hl, sp+$08                                    ; $403c: $f8 $08
	nop                                              ; $403e: $00
	nop                                              ; $403f: $00
	nop                                              ; $4040: $00
	ld [$0100], sp                                   ; $4041: $08 $00 $01
	jr jr_00d_402e                                   ; $4044: $18 $e8

	nop                                              ; $4046: $00
	nop                                              ; $4047: $00
	ld hl, sp-$18                                    ; $4048: $f8 $e8
	nop                                              ; $404a: $00
	nop                                              ; $404b: $00
	nop                                              ; $404c: $00
	add sp, $00                                      ; $404d: $e8 $00
	nop                                              ; $404f: $00
	ldh a, [$f8]                                     ; $4050: $f0 $f8
	nop                                              ; $4052: $00
	nop                                              ; $4053: $00
	ld [$00f8], sp                                   ; $4054: $08 $f8 $00
	nop                                              ; $4057: $00
	add sp, $08                                      ; $4058: $e8 $08
	nop                                              ; $405a: $00
	nop                                              ; $405b: $00
	db $10                                           ; $405c: $10
	ld [$0100], sp                                   ; $405d: $08 $00 $01
	ld [rRAMG], sp                                   ; $4060: $08 $00 $00
	nop                                              ; $4063: $00
	stop                                             ; $4064: $10 $00
	ld bc, $0800                                     ; $4066: $01 $00 $08
	ld [$000e], sp                                   ; $4069: $08 $0e $00
	db $10                                           ; $406c: $10
	ld [$010f], sp                                   ; $406d: $08 $0f $01
	ld [$0200], sp                                   ; $4070: $08 $00 $02
	ld [bc], a                                       ; $4073: $02
	stop                                             ; $4074: $10 $00
	inc bc                                           ; $4076: $03
	ld [bc], a                                       ; $4077: $02
	ld [$1008], sp                                   ; $4078: $08 $08 $10
	ld [bc], a                                       ; $407b: $02
	db $10                                           ; $407c: $10
	ld [$0311], sp                                   ; $407d: $08 $11 $03
	ld [$0400], sp                                   ; $4080: $08 $00 $04
	ld [bc], a                                       ; $4083: $02
	stop                                             ; $4084: $10 $00
	dec b                                            ; $4086: $05
	ld [bc], a                                       ; $4087: $02
	ld [$1208], sp                                   ; $4088: $08 $08 $12
	ld [bc], a                                       ; $408b: $02
	db $10                                           ; $408c: $10
	ld [$0313], sp                                   ; $408d: $08 $13 $03
	ld [$0600], sp                                   ; $4090: $08 $00 $06
	inc b                                            ; $4093: $04
	stop                                             ; $4094: $10 $00
	rlca                                             ; $4096: $07
	inc b                                            ; $4097: $04
	ld [$1408], sp                                   ; $4098: $08 $08 $14
	inc b                                            ; $409b: $04
	db $10                                           ; $409c: $10
	ld [$0515], sp                                   ; $409d: $08 $15 $05
	ld [$0800], sp                                   ; $40a0: $08 $00 $08
	ld b, $10                                        ; $40a3: $06 $10
	nop                                              ; $40a5: $00
	add hl, bc                                       ; $40a6: $09
	ld b, $08                                        ; $40a7: $06 $08
	ld [$0616], sp                                   ; $40a9: $08 $16 $06
	db $10                                           ; $40ac: $10
	ld [$0717], sp                                   ; $40ad: $08 $17 $07
	ld [$0a00], sp                                   ; $40b0: $08 $00 $0a
	ld b, $10                                        ; $40b3: $06 $10
	nop                                              ; $40b5: $00
	dec bc                                           ; $40b6: $0b
	ld b, $08                                        ; $40b7: $06 $08
	ld [$0618], sp                                   ; $40b9: $08 $18 $06
	db $10                                           ; $40bc: $10
	ld [$0719], sp                                   ; $40bd: $08 $19 $07
	ld [$0c00], sp                                   ; $40c0: $08 $00 $0c
	ld b, $10                                        ; $40c3: $06 $10
	nop                                              ; $40c5: $00
	dec c                                            ; $40c6: $0d
	ld b, $08                                        ; $40c7: $06 $08
	ld [$061a], sp                                   ; $40c9: $08 $1a $06
	db $10                                           ; $40cc: $10
	ld [$071b], sp                                   ; $40cd: $08 $1b $07
	ld [$1c00], sp                                   ; $40d0: $08 $00 $1c
	ld [$0010], sp                                   ; $40d3: $08 $10 $00
	dec e                                            ; $40d6: $1d
	ld [$0808], sp                                   ; $40d7: $08 $08 $08
	ld e, $08                                        ; $40da: $1e $08
	db $10                                           ; $40dc: $10
	ld [$091f], sp                                   ; $40dd: $08 $1f $09
	ld [$2000], sp                                   ; $40e0: $08 $00 $20
	ld [$0010], sp                                   ; $40e3: $08 $10 $00
	ld hl, $0808                                     ; $40e6: $21 $08 $08
	ld [$0822], sp                                   ; $40e9: $08 $22 $08
	db $10                                           ; $40ec: $10
	ld [$0923], sp                                   ; $40ed: $08 $23 $09
	ld [$2400], sp                                   ; $40f0: $08 $00 $24
	ld [$0010], sp                                   ; $40f3: $08 $10 $00
	dec h                                            ; $40f6: $25
	ld [$0808], sp                                   ; $40f7: $08 $08 $08
	ld h, $08                                        ; $40fa: $26 $08
	db $10                                           ; $40fc: $10
	ld [$0927], sp                                   ; $40fd: $08 $27 $09
	nop                                              ; $4100: $00
	ldh a, [rP1]                                     ; $4101: $f0 $00
	nop                                              ; $4103: $00
	ld [$01f0], sp                                   ; $4104: $08 $f0 $01
	nop                                              ; $4107: $00
	nop                                              ; $4108: $00
	ld hl, sp+$06                                    ; $4109: $f8 $06
	nop                                              ; $410b: $00
	ld [$07f8], sp                                   ; $410c: $08 $f8 $07
	nop                                              ; $410f: $00
	nop                                              ; $4110: $00
	nop                                              ; $4111: $00
	inc c                                            ; $4112: $0c
	nop                                              ; $4113: $00
	ld [$0d00], sp                                   ; $4114: $08 $00 $0d
	nop                                              ; $4117: $00
	nop                                              ; $4118: $00
	ld [$0012], sp                                   ; $4119: $08 $12 $00
	ld [$1308], sp                                   ; $411c: $08 $08 $13
	ld bc, $0c00                                     ; $411f: $01 $00 $0c
	adc h                                            ; $4122: $8c
	add hl, bc                                       ; $4123: $09
	nop                                              ; $4124: $00
	db $10                                           ; $4125: $10
	adc l                                            ; $4126: $8d
	ld [$1800], sp                                   ; $4127: $08 $00 $18
	adc l                                            ; $412a: $8d
	adc b                                            ; $412b: $88
	ld [$8d10], sp                                   ; $412c: $08 $10 $8d
	ld c, b                                          ; $412f: $48
	ld [$8d18], sp                                   ; $4130: $08 $18 $8d
	ret                                              ; $4133: $c9


	ld [$8e10], sp                                   ; $4134: $08 $10 $8e
	ld c, b                                          ; $4137: $48
	nop                                              ; $4138: $00
	db $10                                           ; $4139: $10
	adc a                                            ; $413a: $8f
	ld c, c                                          ; $413b: $49
	db $f4                                           ; $413c: $f4

jr_00d_413d:
	ldh [c], a                                       ; $413d: $e2
	nop                                              ; $413e: $00
	jr nz, jr_00d_413d                               ; $413f: $20 $fc

	ldh [c], a                                       ; $4141: $e2
	ld [bc], a                                       ; $4142: $02
	jr nz, jr_00d_4149                               ; $4143: $20 $04

	ldh [c], a                                       ; $4145: $e2
	inc b                                            ; $4146: $04
	jr nz, jr_00d_413d                               ; $4147: $20 $f4

jr_00d_4149:
	ldh a, [c]                                       ; $4149: $f2
	jr nz, @+$24                                     ; $414a: $20 $22

	db $fc                                           ; $414c: $fc
	ldh a, [c]                                       ; $414d: $f2
	ld [hl+], a                                      ; $414e: $22
	ld [hl+], a                                      ; $414f: $22
	inc b                                            ; $4150: $04
	ldh a, [c]                                       ; $4151: $f2
	inc h                                            ; $4152: $24
	inc hl                                           ; $4153: $23
	inc b                                            ; $4154: $04
	ldh a, [c]                                       ; $4155: $f2
	ld l, $22                                        ; $4156: $2e $22
	db $ec                                           ; $4158: $ec
	ldh a, [c]                                       ; $4159: $f2
	ld h, $20                                        ; $415a: $26 $20
	db $ec                                           ; $415c: $ec
	ldh [c], a                                       ; $415d: $e2
	ld b, $20                                        ; $415e: $06 $20
	db $f4                                           ; $4160: $f4
	ldh a, [c]                                       ; $4161: $f2
	jr z, jr_00d_4186                                ; $4162: $28 $22

	db $f4                                           ; $4164: $f4
	ldh [c], a                                       ; $4165: $e2
	ld [$fc20], sp                                   ; $4166: $08 $20 $fc

jr_00d_4169:
	ldh [c], a                                       ; $4169: $e2
	ld a, [hl+]                                      ; $416a: $2a
	jr nz, jr_00d_4169                               ; $416b: $20 $fc

	jp nc, $200a                                     ; $416d: $d2 $0a $20

	inc b                                            ; $4170: $04
	jp nc, $200c                                     ; $4171: $d2 $0c $20

	inc b                                            ; $4174: $04

jr_00d_4175:
	ldh [c], a                                       ; $4175: $e2
	inc l                                            ; $4176: $2c
	jr nz, jr_00d_4175                               ; $4177: $20 $fc

	ldh a, [c]                                       ; $4179: $f2
	ld c, $22                                        ; $417a: $0e $22
	inc c                                            ; $417c: $0c
	ldh a, [c]                                       ; $417d: $f2
	db $10                                           ; $417e: $10
	inc hl                                           ; $417f: $23
	inc b                                            ; $4180: $04
	ldh a, [c]                                       ; $4181: $f2
	ld d, $22                                        ; $4182: $16 $22
	db $fc                                           ; $4184: $fc
	ldh a, [c]                                       ; $4185: $f2

jr_00d_4186:
	inc d                                            ; $4186: $14
	ld [hl+], a                                      ; $4187: $22
	db $f4                                           ; $4188: $f4

jr_00d_4189:
	ldh a, [c]                                       ; $4189: $f2
	ld [de], a                                       ; $418a: $12
	ld [hl+], a                                      ; $418b: $22
	inc b                                            ; $418c: $04

jr_00d_418d:
	ldh [c], a                                       ; $418d: $e2
	inc [hl]                                         ; $418e: $34
	jr nz, jr_00d_418d                               ; $418f: $20 $fc

	ldh [c], a                                       ; $4191: $e2
	ld [hl-], a                                      ; $4192: $32
	jr nz, jr_00d_4189                               ; $4193: $20 $f4

	ldh [c], a                                       ; $4195: $e2
	jr nc, jr_00d_41b9                               ; $4196: $30 $21

	rlca                                             ; $4198: $07
	ldh a, [rAUD3ENA]                                ; $4199: $f0 $1a
	jr z, @+$04                                      ; $419b: $28 $02

	db $ed                                           ; $419d: $ed
	jr jr_00d_41c9                                   ; $419e: $18 $29

	dec b                                            ; $41a0: $05
	ldh a, [c]                                       ; $41a1: $f2
	inc e                                            ; $41a2: $1c
	jr z, jr_00d_41a5                                ; $41a3: $28 $00

jr_00d_41a5:
	rst AddAOntoHL                                          ; $41a5: $ef
	jr jr_00d_41d1                                   ; $41a6: $18 $29

	nop                                              ; $41a8: $00
	rst FarCall                                          ; $41a9: $f7
	inc e                                            ; $41aa: $1c
	jr z, @-$04                                      ; $41ab: $28 $fa

	push af                                          ; $41ad: $f5
	jr @+$2a                                         ; $41ae: $18 $28

	inc b                                            ; $41b0: $04
	di                                               ; $41b1: $f3
	inc e                                            ; $41b2: $1c
	add hl, hl                                       ; $41b3: $29

jr_00d_41b4:
	db $fd                                           ; $41b4: $fd
	ld a, [$281c]                                    ; $41b5: $fa $1c $28
	ld [bc], a                                       ; $41b8: $02

jr_00d_41b9:
	push af                                          ; $41b9: $f5
	ld a, [de]                                       ; $41ba: $1a
	jr z, jr_00d_41b4                                ; $41bb: $28 $f7

	ld hl, sp+$18                                    ; $41bd: $f8 $18
	add hl, hl                                       ; $41bf: $29
	ei                                               ; $41c0: $fb

jr_00d_41c1:
	db $fc                                           ; $41c1: $fc
	inc e                                            ; $41c2: $1c

jr_00d_41c3:
	jr z, jr_00d_41c5                                ; $41c3: $28 $00

jr_00d_41c5:
	rst FarCall                                          ; $41c5: $f7
	ld a, [de]                                       ; $41c6: $1a
	jr z, @-$09                                      ; $41c7: $28 $f5

jr_00d_41c9:
	ld a, [$2918]                                    ; $41c9: $fa $18 $29
	ld hl, sp-$01                                    ; $41cc: $f8 $ff
	ld a, [de]                                       ; $41ce: $1a
	jr z, jr_00d_41c3                                ; $41cf: $28 $f2

jr_00d_41d1:
	db $fd                                           ; $41d1: $fd
	jr jr_00d_41fd                                   ; $41d2: $18 $29

	push af                                          ; $41d4: $f5
	ld [bc], a                                       ; $41d5: $02
	ld a, [de]                                       ; $41d6: $1a
	jr z, jr_00d_41c9                                ; $41d7: $28 $f0

	rst $38                                          ; $41d9: $ff
	jr jr_00d_4205                                   ; $41da: $18 $29

	rlca                                             ; $41dc: $07
	nop                                              ; $41dd: $00
	ld a, [de]                                       ; $41de: $1a
	xor b                                            ; $41df: $a8
	ld [bc], a                                       ; $41e0: $02
	inc bc                                           ; $41e1: $03
	jr jr_00d_418d                                   ; $41e2: $18 $a9

	dec b                                            ; $41e4: $05
	cp $1c                                           ; $41e5: $fe $1c
	xor b                                            ; $41e7: $a8
	nop                                              ; $41e8: $00
	ld bc, $a918                                     ; $41e9: $01 $18 $a9
	nop                                              ; $41ec: $00
	ld sp, hl                                        ; $41ed: $f9
	inc e                                            ; $41ee: $1c
	xor b                                            ; $41ef: $a8
	ld a, [$18fb]                                    ; $41f0: $fa $fb $18
	xor b                                            ; $41f3: $a8
	inc b                                            ; $41f4: $04
	db $fd                                           ; $41f5: $fd
	inc e                                            ; $41f6: $1c
	xor c                                            ; $41f7: $a9
	db $fd                                           ; $41f8: $fd
	or $1c                                           ; $41f9: $f6 $1c
	xor b                                            ; $41fb: $a8
	ld [bc], a                                       ; $41fc: $02

jr_00d_41fd:
	ei                                               ; $41fd: $fb
	ld a, [de]                                       ; $41fe: $1a
	xor b                                            ; $41ff: $a8
	rst FarCall                                          ; $4200: $f7
	ld hl, sp+$18                                    ; $4201: $f8 $18
	xor c                                            ; $4203: $a9
	ei                                               ; $4204: $fb

jr_00d_4205:
	db $f4                                           ; $4205: $f4
	inc e                                            ; $4206: $1c
	xor b                                            ; $4207: $a8
	nop                                              ; $4208: $00
	ld sp, hl                                        ; $4209: $f9
	ld a, [de]                                       ; $420a: $1a
	xor b                                            ; $420b: $a8
	push af                                          ; $420c: $f5
	or $18                                           ; $420d: $f6 $18
	xor c                                            ; $420f: $a9
	ld hl, sp-$0f                                    ; $4210: $f8 $f1
	ld a, [de]                                       ; $4212: $1a
	xor b                                            ; $4213: $a8
	ldh a, [c]                                       ; $4214: $f2
	di                                               ; $4215: $f3
	jr jr_00d_41c1                                   ; $4216: $18 $a9

	push af                                          ; $4218: $f5
	xor $1a                                          ; $4219: $ee $1a
	xor b                                            ; $421b: $a8
	ldh a, [$f1]                                     ; $421c: $f0 $f1
	jr jr_00d_41c9                                   ; $421e: $18 $a9

	inc b                                            ; $4220: $04
	ldh a, [c]                                       ; $4221: $f2
	ld a, [bc]                                       ; $4222: $0a
	ld [hl+], a                                      ; $4223: $22
	db $fc                                           ; $4224: $fc

jr_00d_4225:
	ldh a, [c]                                       ; $4225: $f2
	ld [$0422], sp                                   ; $4226: $08 $22 $04

jr_00d_4229:
	ldh [c], a                                       ; $4229: $e2
	inc b                                            ; $422a: $04
	jr nz, jr_00d_4229                               ; $422b: $20 $fc

	ldh [c], a                                       ; $422d: $e2
	ld [bc], a                                       ; $422e: $02
	jr nz, jr_00d_4225                               ; $422f: $20 $f4

	ldh a, [c]                                       ; $4231: $f2
	ld b, $22                                        ; $4232: $06 $22
	db $f4                                           ; $4234: $f4
	ldh [c], a                                       ; $4235: $e2
	nop                                              ; $4236: $00
	ld hl, $f204                                     ; $4237: $21 $04 $f2
	ld d, $22                                        ; $423a: $16 $22
	db $fc                                           ; $423c: $fc
	ldh a, [c]                                       ; $423d: $f2
	inc d                                            ; $423e: $14
	ld [hl+], a                                      ; $423f: $22
	inc b                                            ; $4240: $04

jr_00d_4241:
	ldh [c], a                                       ; $4241: $e2
	db $10                                           ; $4242: $10
	jr nz, jr_00d_4241                               ; $4243: $20 $fc

	ldh [c], a                                       ; $4245: $e2
	ld c, $20                                        ; $4246: $0e $20
	db $f4                                           ; $4248: $f4
	ldh a, [c]                                       ; $4249: $f2
	ld [de], a                                       ; $424a: $12
	ld [hl+], a                                      ; $424b: $22
	db $f4                                           ; $424c: $f4
	ldh [c], a                                       ; $424d: $e2
	inc c                                            ; $424e: $0c
	ld hl, $f2f4                                     ; $424f: $21 $f4 $f2
	ld b, $22                                        ; $4252: $06 $22
	db $fc                                           ; $4254: $fc
	ldh a, [c]                                       ; $4255: $f2
	ld [$0422], sp                                   ; $4256: $08 $22 $04

jr_00d_4259:
	ldh a, [c]                                       ; $4259: $f2
	ld a, [bc]                                       ; $425a: $0a
	ld [hl+], a                                      ; $425b: $22
	inc b                                            ; $425c: $04

jr_00d_425d:
	ldh [c], a                                       ; $425d: $e2
	inc b                                            ; $425e: $04
	jr nz, jr_00d_425d                               ; $425f: $20 $fc

	ldh [c], a                                       ; $4261: $e2
	ld [bc], a                                       ; $4262: $02
	jr nz, jr_00d_4259                               ; $4263: $20 $f4

	ldh [c], a                                       ; $4265: $e2
	nop                                              ; $4266: $00
	ld hl, $f2f4                                     ; $4267: $21 $f4 $f2
	ld b, $22                                        ; $426a: $06 $22
	db $fc                                           ; $426c: $fc
	ldh a, [c]                                       ; $426d: $f2
	ld [$0422], sp                                   ; $426e: $08 $22 $04

jr_00d_4271:
	ldh a, [c]                                       ; $4271: $f2
	ld a, [bc]                                       ; $4272: $0a
	ld [hl+], a                                      ; $4273: $22
	inc b                                            ; $4274: $04

jr_00d_4275:
	ldh [c], a                                       ; $4275: $e2
	inc b                                            ; $4276: $04
	jr nz, jr_00d_4275                               ; $4277: $20 $fc

	ldh [c], a                                       ; $4279: $e2
	ld [bc], a                                       ; $427a: $02
	jr nz, jr_00d_4271                               ; $427b: $20 $f4

	ldh [c], a                                       ; $427d: $e2
	nop                                              ; $427e: $00
	ld hl, $0100                                     ; $427f: $21 $00 $01
	inc c                                            ; $4282: $0c
	ld [hl+], a                                      ; $4283: $22
	ld bc, $0af1                                     ; $4284: $01 $f1 $0a
	ld [hl+], a                                      ; $4287: $22
	pop af                                           ; $4288: $f1
	pop af                                           ; $4289: $f1

jr_00d_428a:
	ld b, $22                                        ; $428a: $06 $22
	ld sp, hl                                        ; $428c: $f9
	pop af                                           ; $428d: $f1

jr_00d_428e:
	ld [$0122], sp                                   ; $428e: $08 $22 $01
	pop hl                                           ; $4291: $e1
	inc b                                            ; $4292: $04
	jr nz, jr_00d_428e                               ; $4293: $20 $f9

	pop hl                                           ; $4295: $e1
	ld [bc], a                                       ; $4296: $02
	jr nz, jr_00d_428a                               ; $4297: $20 $f1

	pop hl                                           ; $4299: $e1

jr_00d_429a:
	nop                                              ; $429a: $00
	ld hl, $f1f1                                     ; $429b: $21 $f1 $f1
	ld [de], a                                       ; $429e: $12
	ld [hl+], a                                      ; $429f: $22
	ld sp, hl                                        ; $42a0: $f9
	pop af                                           ; $42a1: $f1
	inc d                                            ; $42a2: $14
	ld [hl+], a                                      ; $42a3: $22
	ld sp, hl                                        ; $42a4: $f9
	pop hl                                           ; $42a5: $e1
	db $10                                           ; $42a6: $10
	jr nz, jr_00d_429a                               ; $42a7: $20 $f1

	pop hl                                           ; $42a9: $e1
	ld c, $22                                        ; $42aa: $0e $22
	nop                                              ; $42ac: $00
	ld bc, $220c                                     ; $42ad: $01 $0c $22
	ld bc, $0af1                                     ; $42b0: $01 $f1 $0a
	ld [hl+], a                                      ; $42b3: $22
	ld bc, $04e1                                     ; $42b4: $01 $e1 $04
	ld hl, $f30c                                     ; $42b7: $21 $0c $f3
	ld b, $20                                        ; $42ba: $06 $20
	inc b                                            ; $42bc: $04

jr_00d_42bd:
	di                                               ; $42bd: $f3
	inc b                                            ; $42be: $04
	jr nz, jr_00d_42bd                               ; $42bf: $20 $fc

	di                                               ; $42c1: $f3
	ld [bc], a                                       ; $42c2: $02
	ld [hl+], a                                      ; $42c3: $22
	db $f4                                           ; $42c4: $f4
	di                                               ; $42c5: $f3
	nop                                              ; $42c6: $00
	inc hl                                           ; $42c7: $23
	inc b                                            ; $42c8: $04

jr_00d_42c9:
	ldh [c], a                                       ; $42c9: $e2
	inc b                                            ; $42ca: $04
	jr nz, jr_00d_42c9                               ; $42cb: $20 $fc

	ldh [c], a                                       ; $42cd: $e2
	ld [bc], a                                       ; $42ce: $02
	jr nz, jr_00d_42d5                               ; $42cf: $20 $04

	ldh a, [c]                                       ; $42d1: $f2
	ld a, [bc]                                       ; $42d2: $0a
	ld [hl+], a                                      ; $42d3: $22
	db $fc                                           ; $42d4: $fc

jr_00d_42d5:
	ldh a, [c]                                       ; $42d5: $f2
	ld [$f422], sp                                   ; $42d6: $08 $22 $f4
	ldh a, [c]                                       ; $42d9: $f2
	ld b, $22                                        ; $42da: $06 $22
	db $f4                                           ; $42dc: $f4
	ldh [c], a                                       ; $42dd: $e2
	nop                                              ; $42de: $00
	ld hl, $f204                                     ; $42df: $21 $04 $f2
	ld a, [bc]                                       ; $42e2: $0a
	ld [hl+], a                                      ; $42e3: $22
	db $fc                                           ; $42e4: $fc
	ldh a, [c]                                       ; $42e5: $f2
	ld [$f422], sp                                   ; $42e6: $08 $22 $f4

jr_00d_42e9:
	ldh a, [c]                                       ; $42e9: $f2
	ld b, $22                                        ; $42ea: $06 $22
	inc b                                            ; $42ec: $04

jr_00d_42ed:
	ldh [c], a                                       ; $42ed: $e2
	inc b                                            ; $42ee: $04
	jr nz, jr_00d_42ed                               ; $42ef: $20 $fc

	ldh [c], a                                       ; $42f1: $e2
	ld [bc], a                                       ; $42f2: $02
	jr nz, jr_00d_42e9                               ; $42f3: $20 $f4

	ldh [c], a                                       ; $42f5: $e2
	nop                                              ; $42f6: $00
	ld hl, $f304                                     ; $42f7: $21 $04 $f3
	ld a, [bc]                                       ; $42fa: $0a
	ld h, $fc                                        ; $42fb: $26 $fc
	di                                               ; $42fd: $f3
	ld [$f426], sp                                   ; $42fe: $08 $26 $f4
	di                                               ; $4301: $f3
	ld b, $26                                        ; $4302: $06 $26
	inc b                                            ; $4304: $04
	db $e3                                           ; $4305: $e3
	inc b                                            ; $4306: $04
	inc h                                            ; $4307: $24
	db $fc                                           ; $4308: $fc
	db $e3                                           ; $4309: $e3
	ld [bc], a                                       ; $430a: $02
	inc h                                            ; $430b: $24
	db $f4                                           ; $430c: $f4
	db $e3                                           ; $430d: $e3
	nop                                              ; $430e: $00
	dec h                                            ; $430f: $25
	inc b                                            ; $4310: $04
	di                                               ; $4311: $f3
	ld a, [bc]                                       ; $4312: $0a
	ld h, $fc                                        ; $4313: $26 $fc
	di                                               ; $4315: $f3
	inc c                                            ; $4316: $0c
	ld h, $04                                        ; $4317: $26 $04
	db $e3                                           ; $4319: $e3
	inc b                                            ; $431a: $04
	inc h                                            ; $431b: $24
	db $f4                                           ; $431c: $f4
	db $e3                                           ; $431d: $e3
	nop                                              ; $431e: $00
	inc h                                            ; $431f: $24
	db $f4                                           ; $4320: $f4
	di                                               ; $4321: $f3
	ld b, $26                                        ; $4322: $06 $26
	db $fc                                           ; $4324: $fc
	db $e3                                           ; $4325: $e3
	ld [bc], a                                       ; $4326: $02
	dec h                                            ; $4327: $25
	nop                                              ; $4328: $00
	di                                               ; $4329: $f3
	ld a, [bc]                                       ; $432a: $0a
	ld h, $f8                                        ; $432b: $26 $f8
	di                                               ; $432d: $f3
	ld [$f026], sp                                   ; $432e: $08 $26 $f0
	di                                               ; $4331: $f3
	ld b, $26                                        ; $4332: $06 $26
	nop                                              ; $4334: $00
	db $e3                                           ; $4335: $e3
	inc b                                            ; $4336: $04
	inc h                                            ; $4337: $24
	ld hl, sp-$1d                                    ; $4338: $f8 $e3
	ld [bc], a                                       ; $433a: $02
	inc h                                            ; $433b: $24
	ldh a, [$e3]                                     ; $433c: $f0 $e3
	nop                                              ; $433e: $00
	dec h                                            ; $433f: $25
	ldh a, [$f3]                                     ; $4340: $f0 $f3
	ld b, $26                                        ; $4342: $06 $26
	ld hl, sp-$0d                                    ; $4344: $f8 $f3
	ld [$f226], sp                                   ; $4346: $08 $26 $f2
	di                                               ; $4349: $f3
	ld d, $2a                                        ; $434a: $16 $2a
	nop                                              ; $434c: $00
	di                                               ; $434d: $f3
	ld c, $26                                        ; $434e: $0e $26
	nop                                              ; $4350: $00
	db $e3                                           ; $4351: $e3
	inc c                                            ; $4352: $0c
	inc h                                            ; $4353: $24
	ld hl, sp-$1d                                    ; $4354: $f8 $e3
	ld [bc], a                                       ; $4356: $02
	inc h                                            ; $4357: $24
	ldh a, [$e3]                                     ; $4358: $f0 $e3
	nop                                              ; $435a: $00
	inc h                                            ; $435b: $24
	ldh a, [c]                                       ; $435c: $f2
	db $e3                                           ; $435d: $e3
	ld [de], a                                       ; $435e: $12
	ld a, [hl+]                                      ; $435f: $2a
	ld [$14f3], a                                    ; $4360: $ea $f3 $14
	ld a, [hl+]                                      ; $4363: $2a
	ld [$10e3], a                                    ; $4364: $ea $e3 $10
	dec hl                                           ; $4367: $2b
	ldh a, [c]                                       ; $4368: $f2
	di                                               ; $4369: $f3
	ld e, $28                                        ; $436a: $1e $28
	ld [$1cf3], a                                    ; $436c: $ea $f3 $1c

jr_00d_436f:
	jr z, jr_00d_4371                                ; $436f: $28 $00

jr_00d_4371:
	di                                               ; $4371: $f3
	ld c, $26                                        ; $4372: $0e $26
	nop                                              ; $4374: $00
	db $e3                                           ; $4375: $e3
	inc c                                            ; $4376: $0c
	inc h                                            ; $4377: $24
	ld hl, sp-$0d                                    ; $4378: $f8 $f3
	ld [$f026], sp                                   ; $437a: $08 $26 $f0
	di                                               ; $437d: $f3
	ld b, $26                                        ; $437e: $06 $26
	ldh a, [c]                                       ; $4380: $f2
	db $e3                                           ; $4381: $e3
	ld a, [de]                                       ; $4382: $1a
	jr z, jr_00d_436f                                ; $4383: $28 $ea

	db $e3                                           ; $4385: $e3
	jr jr_00d_43b0                                   ; $4386: $18 $28

	ldh a, [$e3]                                     ; $4388: $f0 $e3
	nop                                              ; $438a: $00
	inc h                                            ; $438b: $24
	ld hl, sp-$1d                                    ; $438c: $f8 $e3
	ld [bc], a                                       ; $438e: $02
	dec h                                            ; $438f: $25
	nop                                              ; $4390: $00
	db $e3                                           ; $4391: $e3
	inc b                                            ; $4392: $04
	inc h                                            ; $4393: $24
	nop                                              ; $4394: $00
	di                                               ; $4395: $f3
	ld a, [bc]                                       ; $4396: $0a
	ld h, $f0                                        ; $4397: $26 $f0
	di                                               ; $4399: $f3
	ld b, $26                                        ; $439a: $06 $26
	ld hl, sp-$0d                                    ; $439c: $f8 $f3
	ld [$f226], sp                                   ; $439e: $08 $26 $f2
	di                                               ; $43a1: $f3
	ld d, $2a                                        ; $43a2: $16 $2a
	ld hl, sp-$1d                                    ; $43a4: $f8 $e3
	ld [bc], a                                       ; $43a6: $02
	inc h                                            ; $43a7: $24
	ldh a, [$e3]                                     ; $43a8: $f0 $e3
	nop                                              ; $43aa: $00
	inc h                                            ; $43ab: $24
	ldh a, [c]                                       ; $43ac: $f2
	db $e3                                           ; $43ad: $e3
	ld [de], a                                       ; $43ae: $12
	ld a, [hl+]                                      ; $43af: $2a

jr_00d_43b0:
	ld [$14f3], a                                    ; $43b0: $ea $f3 $14
	ld a, [hl+]                                      ; $43b3: $2a
	ld [$10e3], a                                    ; $43b4: $ea $e3 $10
	dec hl                                           ; $43b7: $2b
	nop                                              ; $43b8: $00
	db $e3                                           ; $43b9: $e3
	inc b                                            ; $43ba: $04
	inc h                                            ; $43bb: $24
	nop                                              ; $43bc: $00
	di                                               ; $43bd: $f3
	ld a, [bc]                                       ; $43be: $0a

jr_00d_43bf:
	ld h, $f2                                        ; $43bf: $26 $f2

jr_00d_43c1:
	di                                               ; $43c1: $f3
	ld e, $28                                        ; $43c2: $1e $28
	ld [$1cf3], a                                    ; $43c4: $ea $f3 $1c
	jr z, jr_00d_43c1                                ; $43c7: $28 $f8

	di                                               ; $43c9: $f3
	ld [$f026], sp                                   ; $43ca: $08 $26 $f0
	di                                               ; $43cd: $f3
	ld b, $26                                        ; $43ce: $06 $26
	ldh a, [c]                                       ; $43d0: $f2
	db $e3                                           ; $43d1: $e3
	ld a, [de]                                       ; $43d2: $1a
	jr z, jr_00d_43bf                                ; $43d3: $28 $ea

	db $e3                                           ; $43d5: $e3
	jr @+$2a                                         ; $43d6: $18 $28

	ldh a, [$e3]                                     ; $43d8: $f0 $e3
	nop                                              ; $43da: $00
	inc h                                            ; $43db: $24
	ld hl, sp-$1d                                    ; $43dc: $f8 $e3
	ld [bc], a                                       ; $43de: $02
	dec h                                            ; $43df: $25
	rst FarCall                                          ; $43e0: $f7
	di                                               ; $43e1: $f3
	ld [$ef26], sp                                   ; $43e2: $08 $26 $ef
	di                                               ; $43e5: $f3
	ld b, $26                                        ; $43e6: $06 $26
	rst $38                                          ; $43e8: $ff
	di                                               ; $43e9: $f3
	inc h                                            ; $43ea: $24
	ld h, $ff                                        ; $43eb: $26 $ff
	db $e3                                           ; $43ed: $e3
	inc b                                            ; $43ee: $04
	inc h                                            ; $43ef: $24
	rst FarCall                                          ; $43f0: $f7
	db $e3                                           ; $43f1: $e3
	ld [bc], a                                       ; $43f2: $02
	inc h                                            ; $43f3: $24
	rst AddAOntoHL                                          ; $43f4: $ef
	db $e3                                           ; $43f5: $e3
	nop                                              ; $43f6: $00
	dec h                                            ; $43f7: $25
	rst $38                                          ; $43f8: $ff
	di                                               ; $43f9: $f3
	ld c, $26                                        ; $43fa: $0e $26
	rst FarCall                                          ; $43fc: $f7
	di                                               ; $43fd: $f3
	ld [$ef26], sp                                   ; $43fe: $08 $26 $ef
	di                                               ; $4401: $f3
	ld b, $26                                        ; $4402: $06 $26
	rst $38                                          ; $4404: $ff
	db $e3                                           ; $4405: $e3
	inc c                                            ; $4406: $0c
	inc h                                            ; $4407: $24
	rst FarCall                                          ; $4408: $f7
	db $e3                                           ; $4409: $e3
	ld [bc], a                                       ; $440a: $02
	inc h                                            ; $440b: $24
	or $f9                                           ; $440c: $f6 $f9
	ld d, $2a                                        ; $440e: $16 $2a
	or $e9                                           ; $4410: $f6 $e9
	ld [de], a                                       ; $4412: $12
	ld a, [hl+]                                      ; $4413: $2a
	rst AddAOntoHL                                          ; $4414: $ef
	db $e3                                           ; $4415: $e3
	nop                                              ; $4416: $00
	inc h                                            ; $4417: $24
	xor $f9                                          ; $4418: $ee $f9
	inc d                                            ; $441a: $14
	ld a, [hl+]                                      ; $441b: $2a
	xor $e9                                          ; $441c: $ee $e9
	db $10                                           ; $441e: $10
	dec hl                                           ; $441f: $2b
	rst $38                                          ; $4420: $ff
	db $e3                                           ; $4421: $e3
	inc c                                            ; $4422: $0c

jr_00d_4423:
	inc h                                            ; $4423: $24
	rst $38                                          ; $4424: $ff
	di                                               ; $4425: $f3
	ld c, $26                                        ; $4426: $0e $26
	or $e9                                           ; $4428: $f6 $e9
	ld a, [de]                                       ; $442a: $1a
	jr z, jr_00d_4423                                ; $442b: $28 $f6

	ld sp, hl                                        ; $442d: $f9
	ld e, $28                                        ; $442e: $1e $28
	xor $f9                                          ; $4430: $ee $f9
	inc e                                            ; $4432: $1c
	jr z, @-$07                                      ; $4433: $28 $f7

	di                                               ; $4435: $f3
	ld [$ee26], sp                                   ; $4436: $08 $26 $ee
	jp hl                                            ; $4439: $e9


	jr jr_00d_4464                                   ; $443a: $18 $28

	rst FarCall                                          ; $443c: $f7
	db $e3                                           ; $443d: $e3
	ld [bc], a                                       ; $443e: $02
	inc h                                            ; $443f: $24
	rst AddAOntoHL                                          ; $4440: $ef
	db $e3                                           ; $4441: $e3
	nop                                              ; $4442: $00
	dec h                                            ; $4443: $25
	rst $38                                          ; $4444: $ff
	di                                               ; $4445: $f3
	ld a, [bc]                                       ; $4446: $0a
	ld h, $ff                                        ; $4447: $26 $ff
	db $e3                                           ; $4449: $e3
	inc b                                            ; $444a: $04
	inc h                                            ; $444b: $24
	rst FarCall                                          ; $444c: $f7
	di                                               ; $444d: $f3
	ld [$ef26], sp                                   ; $444e: $08 $26 $ef
	di                                               ; $4451: $f3
	ld b, $26                                        ; $4452: $06 $26
	rst FarCall                                          ; $4454: $f7
	db $e3                                           ; $4455: $e3
	ld [bc], a                                       ; $4456: $02
	inc h                                            ; $4457: $24
	or $f9                                           ; $4458: $f6 $f9
	ld d, $2a                                        ; $445a: $16 $2a
	or $e9                                           ; $445c: $f6 $e9
	ld [de], a                                       ; $445e: $12
	ld a, [hl+]                                      ; $445f: $2a
	rst AddAOntoHL                                          ; $4460: $ef
	db $e3                                           ; $4461: $e3
	nop                                              ; $4462: $00
	inc h                                            ; $4463: $24

jr_00d_4464:
	xor $f9                                          ; $4464: $ee $f9
	inc d                                            ; $4466: $14
	ld a, [hl+]                                      ; $4467: $2a
	xor $e9                                          ; $4468: $ee $e9
	db $10                                           ; $446a: $10
	dec hl                                           ; $446b: $2b
	rst $38                                          ; $446c: $ff
	di                                               ; $446d: $f3
	inc h                                            ; $446e: $24

jr_00d_446f:
	ld h, $ff                                        ; $446f: $26 $ff
	db $e3                                           ; $4471: $e3
	inc b                                            ; $4472: $04
	inc h                                            ; $4473: $24
	or $e9                                           ; $4474: $f6 $e9
	ld a, [de]                                       ; $4476: $1a
	jr z, jr_00d_446f                                ; $4477: $28 $f6

	ld sp, hl                                        ; $4479: $f9
	ld e, $28                                        ; $447a: $1e $28
	xor $f9                                          ; $447c: $ee $f9
	inc e                                            ; $447e: $1c
	jr z, @-$07                                      ; $447f: $28 $f7

	di                                               ; $4481: $f3
	ld [$ee26], sp                                   ; $4482: $08 $26 $ee
	jp hl                                            ; $4485: $e9


	jr jr_00d_44b0                                   ; $4486: $18 $28

	rst FarCall                                          ; $4488: $f7
	db $e3                                           ; $4489: $e3
	ld [bc], a                                       ; $448a: $02
	inc h                                            ; $448b: $24
	rst AddAOntoHL                                          ; $448c: $ef
	db $e3                                           ; $448d: $e3
	nop                                              ; $448e: $00
	dec h                                            ; $448f: $25
	nop                                              ; $4490: $00
	db $e3                                           ; $4491: $e3
	ld [hl+], a                                      ; $4492: $22
	inc h                                            ; $4493: $24
	ld hl, sp-$1d                                    ; $4494: $f8 $e3
	jr nz, @+$26                                     ; $4496: $20 $24

	ld hl, sp-$0d                                    ; $4498: $f8 $f3
	ld [$f026], sp                                   ; $449a: $08 $26 $f0
	di                                               ; $449d: $f3
	ld b, $26                                        ; $449e: $06 $26
	nop                                              ; $44a0: $00
	di                                               ; $44a1: $f3
	inc h                                            ; $44a2: $24
	ld h, $f0                                        ; $44a3: $26 $f0
	db $e3                                           ; $44a5: $e3
	nop                                              ; $44a6: $00
	dec h                                            ; $44a7: $25
	rst $38                                          ; $44a8: $ff
	db $e3                                           ; $44a9: $e3
	ld [hl+], a                                      ; $44aa: $22
	inc h                                            ; $44ab: $24
	rst FarCall                                          ; $44ac: $f7
	db $e3                                           ; $44ad: $e3
	jr nz, jr_00d_44d4                               ; $44ae: $20 $24

jr_00d_44b0:
	rst FarCall                                          ; $44b0: $f7
	di                                               ; $44b1: $f3
	ld [$ef26], sp                                   ; $44b2: $08 $26 $ef
	di                                               ; $44b5: $f3
	ld b, $26                                        ; $44b6: $06 $26
	rst $38                                          ; $44b8: $ff
	di                                               ; $44b9: $f3
	inc h                                            ; $44ba: $24
	ld h, $ef                                        ; $44bb: $26 $ef
	db $e3                                           ; $44bd: $e3
	nop                                              ; $44be: $00
	dec h                                            ; $44bf: $25
	ld sp, hl                                        ; $44c0: $f9
	ld a, [$2a2a]                                    ; $44c1: $fa $2a $2a
	pop af                                           ; $44c4: $f1
	ld a, [$2a28]                                    ; $44c5: $fa $28 $2a
	jp hl                                            ; $44c8: $e9


	ld a, [$2b26]                                    ; $44c9: $fa $26 $2b
	ld [bc], a                                       ; $44cc: $02
	db $fd                                           ; $44cd: $fd
	ld a, [hl+]                                      ; $44ce: $2a
	ld a, [hl+]                                      ; $44cf: $2a
	ld a, [$28fd]                                    ; $44d0: $fa $fd $28
	ld a, [hl+]                                      ; $44d3: $2a

jr_00d_44d4:
	ldh a, [c]                                       ; $44d4: $f2
	db $fd                                           ; $44d5: $fd
	ld h, $2b                                        ; $44d6: $26 $2b
	inc b                                            ; $44d8: $04
	di                                               ; $44d9: $f3
	ld a, [bc]                                       ; $44da: $0a
	ld h, $fc                                        ; $44db: $26 $fc
	di                                               ; $44dd: $f3
	ld [$f426], sp                                   ; $44de: $08 $26 $f4
	di                                               ; $44e1: $f3
	ld b, $26                                        ; $44e2: $06 $26
	inc b                                            ; $44e4: $04
	db $e3                                           ; $44e5: $e3
	inc b                                            ; $44e6: $04
	inc h                                            ; $44e7: $24
	db $fc                                           ; $44e8: $fc
	db $e3                                           ; $44e9: $e3
	ld [bc], a                                       ; $44ea: $02
	inc h                                            ; $44eb: $24
	db $f4                                           ; $44ec: $f4
	db $e3                                           ; $44ed: $e3
	nop                                              ; $44ee: $00
	dec h                                            ; $44ef: $25
	inc b                                            ; $44f0: $04
	di                                               ; $44f1: $f3
	ld a, [bc]                                       ; $44f2: $0a
	ld h, $fc                                        ; $44f3: $26 $fc
	di                                               ; $44f5: $f3
	ld [$f426], sp                                   ; $44f6: $08 $26 $f4
	di                                               ; $44f9: $f3
	ld b, $26                                        ; $44fa: $06 $26
	inc b                                            ; $44fc: $04
	db $e3                                           ; $44fd: $e3
	inc b                                            ; $44fe: $04
	inc h                                            ; $44ff: $24
	db $fc                                           ; $4500: $fc
	db $e3                                           ; $4501: $e3
	ld [bc], a                                       ; $4502: $02
	inc h                                            ; $4503: $24
	db $f4                                           ; $4504: $f4
	db $e3                                           ; $4505: $e3
	nop                                              ; $4506: $00
	dec h                                            ; $4507: $25
	inc b                                            ; $4508: $04
	db $f4                                           ; $4509: $f4
	db $10                                           ; $450a: $10
	ld h, $fc                                        ; $450b: $26 $fc
	db $f4                                           ; $450d: $f4
	ld c, $26                                        ; $450e: $0e $26
	db $f4                                           ; $4510: $f4
	db $f4                                           ; $4511: $f4
	inc c                                            ; $4512: $0c
	ld h, $04                                        ; $4513: $26 $04
	db $e4                                           ; $4515: $e4
	inc b                                            ; $4516: $04
	inc h                                            ; $4517: $24
	db $fc                                           ; $4518: $fc
	db $e4                                           ; $4519: $e4
	ld [bc], a                                       ; $451a: $02
	inc h                                            ; $451b: $24
	db $f4                                           ; $451c: $f4
	db $e4                                           ; $451d: $e4
	nop                                              ; $451e: $00
	dec h                                            ; $451f: $25
	inc b                                            ; $4520: $04
	di                                               ; $4521: $f3
	ld a, [bc]                                       ; $4522: $0a
	ld h, $fc                                        ; $4523: $26 $fc
	di                                               ; $4525: $f3
	ld [$f426], sp                                   ; $4526: $08 $26 $f4
	di                                               ; $4529: $f3
	ld b, $26                                        ; $452a: $06 $26
	inc b                                            ; $452c: $04
	db $e3                                           ; $452d: $e3
	inc b                                            ; $452e: $04
	inc h                                            ; $452f: $24
	db $fc                                           ; $4530: $fc
	db $e3                                           ; $4531: $e3
	ld [bc], a                                       ; $4532: $02
	inc h                                            ; $4533: $24
	db $f4                                           ; $4534: $f4
	db $e3                                           ; $4535: $e3
	nop                                              ; $4536: $00
	dec h                                            ; $4537: $25
	inc b                                            ; $4538: $04
	db $f4                                           ; $4539: $f4
	db $10                                           ; $453a: $10
	ld h, $fc                                        ; $453b: $26 $fc
	db $f4                                           ; $453d: $f4
	ld c, $26                                        ; $453e: $0e $26
	db $f4                                           ; $4540: $f4
	db $f4                                           ; $4541: $f4
	inc c                                            ; $4542: $0c
	ld h, $04                                        ; $4543: $26 $04
	db $e4                                           ; $4545: $e4
	inc b                                            ; $4546: $04
	inc h                                            ; $4547: $24
	db $fc                                           ; $4548: $fc
	db $e4                                           ; $4549: $e4
	ld [bc], a                                       ; $454a: $02
	inc h                                            ; $454b: $24
	db $f4                                           ; $454c: $f4
	db $e4                                           ; $454d: $e4
	nop                                              ; $454e: $00
	dec h                                            ; $454f: $25
	db $f4                                           ; $4550: $f4
	ldh a, [c]                                       ; $4551: $f2
	ld b, $26                                        ; $4552: $06 $26
	db $fc                                           ; $4554: $fc
	ldh a, [c]                                       ; $4555: $f2
	ld [$0426], sp                                   ; $4556: $08 $26 $04
	ldh a, [c]                                       ; $4559: $f2
	ld a, [bc]                                       ; $455a: $0a
	inc h                                            ; $455b: $24
	inc b                                            ; $455c: $04
	ldh [c], a                                       ; $455d: $e2
	inc b                                            ; $455e: $04
	inc h                                            ; $455f: $24
	db $fc                                           ; $4560: $fc
	ldh [c], a                                       ; $4561: $e2
	ld [bc], a                                       ; $4562: $02
	inc h                                            ; $4563: $24
	db $f4                                           ; $4564: $f4
	ldh [c], a                                       ; $4565: $e2
	nop                                              ; $4566: $00
	dec h                                            ; $4567: $25
	inc b                                            ; $4568: $04
	ldh a, [c]                                       ; $4569: $f2
	ld b, $66                                        ; $456a: $06 $66
	db $fc                                           ; $456c: $fc
	ldh a, [c]                                       ; $456d: $f2
	ld [$f466], sp                                   ; $456e: $08 $66 $f4
	ldh a, [c]                                       ; $4571: $f2
	ld a, [bc]                                       ; $4572: $0a
	ld h, h                                          ; $4573: $64
	db $f4                                           ; $4574: $f4
	ldh [c], a                                       ; $4575: $e2
	inc b                                            ; $4576: $04
	ld h, h                                          ; $4577: $64
	db $fc                                           ; $4578: $fc
	ldh [c], a                                       ; $4579: $e2
	ld [bc], a                                       ; $457a: $02
	ld h, h                                          ; $457b: $64
	inc b                                            ; $457c: $04
	ldh [c], a                                       ; $457d: $e2
	nop                                              ; $457e: $00
	ld h, l                                          ; $457f: $65
	db $f4                                           ; $4580: $f4
	ldh a, [c]                                       ; $4581: $f2
	db $10                                           ; $4582: $10
	ld h, $fc                                        ; $4583: $26 $fc
	ldh a, [c]                                       ; $4585: $f2
	ld [de], a                                       ; $4586: $12
	ld h, $04                                        ; $4587: $26 $04
	ldh a, [c]                                       ; $4589: $f2
	ld a, [bc]                                       ; $458a: $0a
	inc h                                            ; $458b: $24
	inc b                                            ; $458c: $04
	ldh [c], a                                       ; $458d: $e2
	inc b                                            ; $458e: $04
	inc h                                            ; $458f: $24
	db $fc                                           ; $4590: $fc
	ldh [c], a                                       ; $4591: $e2
	ld [bc], a                                       ; $4592: $02
	inc h                                            ; $4593: $24
	db $f4                                           ; $4594: $f4
	ldh [c], a                                       ; $4595: $e2
	nop                                              ; $4596: $00
	dec h                                            ; $4597: $25
	inc b                                            ; $4598: $04
	di                                               ; $4599: $f3
	ld a, [bc]                                       ; $459a: $0a
	inc h                                            ; $459b: $24
	inc b                                            ; $459c: $04
	db $e3                                           ; $459d: $e3
	inc b                                            ; $459e: $04
	inc h                                            ; $459f: $24
	db $fc                                           ; $45a0: $fc
	db $e3                                           ; $45a1: $e3
	ld [bc], a                                       ; $45a2: $02
	inc h                                            ; $45a3: $24
	db $f4                                           ; $45a4: $f4
	db $e3                                           ; $45a5: $e3
	nop                                              ; $45a6: $00
	inc h                                            ; $45a7: $24
	db $fc                                           ; $45a8: $fc
	di                                               ; $45a9: $f3
	ld [$f426], sp                                   ; $45aa: $08 $26 $f4
	di                                               ; $45ad: $f3
	ld b, $27                                        ; $45ae: $06 $27
	db $f4                                           ; $45b0: $f4
	ldh a, [c]                                       ; $45b1: $f2
	ld a, [bc]                                       ; $45b2: $0a
	ld h, h                                          ; $45b3: $64
	inc b                                            ; $45b4: $04
	ldh a, [c]                                       ; $45b5: $f2
	db $10                                           ; $45b6: $10
	ld h, [hl]                                       ; $45b7: $66
	db $fc                                           ; $45b8: $fc
	ldh a, [c]                                       ; $45b9: $f2
	ld [de], a                                       ; $45ba: $12
	ld h, [hl]                                       ; $45bb: $66
	db $f4                                           ; $45bc: $f4
	ldh [c], a                                       ; $45bd: $e2
	inc b                                            ; $45be: $04
	ld h, h                                          ; $45bf: $64
	db $fc                                           ; $45c0: $fc
	ldh [c], a                                       ; $45c1: $e2
	ld [bc], a                                       ; $45c2: $02
	ld h, h                                          ; $45c3: $64
	inc b                                            ; $45c4: $04
	ldh [c], a                                       ; $45c5: $e2
	nop                                              ; $45c6: $00
	ld h, l                                          ; $45c7: $65
	db $f4                                           ; $45c8: $f4
	di                                               ; $45c9: $f3
	ld a, [bc]                                       ; $45ca: $0a
	ld h, h                                          ; $45cb: $64
	db $f4                                           ; $45cc: $f4
	db $e3                                           ; $45cd: $e3
	inc b                                            ; $45ce: $04
	ld h, h                                          ; $45cf: $64
	db $fc                                           ; $45d0: $fc
	db $e3                                           ; $45d1: $e3
	ld [bc], a                                       ; $45d2: $02
	ld h, h                                          ; $45d3: $64
	inc b                                            ; $45d4: $04
	db $e3                                           ; $45d5: $e3
	nop                                              ; $45d6: $00
	ld h, h                                          ; $45d7: $64
	db $fc                                           ; $45d8: $fc
	di                                               ; $45d9: $f3
	ld [$0466], sp                                   ; $45da: $08 $66 $04
	di                                               ; $45dd: $f3
	ld b, $67                                        ; $45de: $06 $67
	inc b                                            ; $45e0: $04
	ldh a, [c]                                       ; $45e1: $f2
	inc b                                            ; $45e2: $04
	inc h                                            ; $45e3: $24
	db $fc                                           ; $45e4: $fc
	ldh a, [c]                                       ; $45e5: $f2
	ld [bc], a                                       ; $45e6: $02
	ld h, $f4                                        ; $45e7: $26 $f4
	ldh a, [c]                                       ; $45e9: $f2
	nop                                              ; $45ea: $00
	ld h, $04                                        ; $45eb: $26 $04
	ldh [c], a                                       ; $45ed: $e2
	db $10                                           ; $45ee: $10
	inc h                                            ; $45ef: $24
	db $fc                                           ; $45f0: $fc
	ldh [c], a                                       ; $45f1: $e2
	ld [$f424], sp                                   ; $45f2: $08 $24 $f4
	ldh [c], a                                       ; $45f5: $e2
	ld b, $25                                        ; $45f6: $06 $25
	db $f4                                           ; $45f8: $f4
	di                                               ; $45f9: $f3
	ld a, [bc]                                       ; $45fa: $0a
	ld h, $fc                                        ; $45fb: $26 $fc
	di                                               ; $45fd: $f3
	inc c                                            ; $45fe: $0c
	ld h, $04                                        ; $45ff: $26 $04
	di                                               ; $4601: $f3
	inc b                                            ; $4602: $04
	inc h                                            ; $4603: $24
	inc b                                            ; $4604: $04
	db $e3                                           ; $4605: $e3
	db $10                                           ; $4606: $10
	inc h                                            ; $4607: $24
	db $fc                                           ; $4608: $fc
	db $e3                                           ; $4609: $e3
	ld c, $24                                        ; $460a: $0e $24
	db $f4                                           ; $460c: $f4
	db $e3                                           ; $460d: $e3
	ld b, $25                                        ; $460e: $06 $25
	inc b                                            ; $4610: $04
	ldh a, [c]                                       ; $4611: $f2
	inc e                                            ; $4612: $1c
	inc h                                            ; $4613: $24
	db $fc                                           ; $4614: $fc
	ldh a, [c]                                       ; $4615: $f2
	ld a, [de]                                       ; $4616: $1a
	ld h, $f4                                        ; $4617: $26 $f4
	ldh a, [c]                                       ; $4619: $f2
	jr jr_00d_4642                                   ; $461a: $18 $26

	inc b                                            ; $461c: $04
	ldh [c], a                                       ; $461d: $e2
	inc b                                            ; $461e: $04
	inc h                                            ; $461f: $24
	db $fc                                           ; $4620: $fc
	ldh [c], a                                       ; $4621: $e2
	ld [bc], a                                       ; $4622: $02
	inc h                                            ; $4623: $24
	db $f4                                           ; $4624: $f4
	ldh [c], a                                       ; $4625: $e2
	nop                                              ; $4626: $00
	dec h                                            ; $4627: $25
	db $fc                                           ; $4628: $fc
	ldh [c], a                                       ; $4629: $e2
	ld e, $24                                        ; $462a: $1e $24
	inc b                                            ; $462c: $04
	ldh a, [c]                                       ; $462d: $f2
	inc e                                            ; $462e: $1c
	inc h                                            ; $462f: $24
	db $fc                                           ; $4630: $fc
	ldh a, [c]                                       ; $4631: $f2
	ld a, [de]                                       ; $4632: $1a
	ld h, $f4                                        ; $4633: $26 $f4
	ldh a, [c]                                       ; $4635: $f2
	jr jr_00d_465e                                   ; $4636: $18 $26

	inc b                                            ; $4638: $04
	ldh [c], a                                       ; $4639: $e2
	inc b                                            ; $463a: $04
	inc h                                            ; $463b: $24
	db $f4                                           ; $463c: $f4
	ldh [c], a                                       ; $463d: $e2
	nop                                              ; $463e: $00
	dec h                                            ; $463f: $25
	inc b                                            ; $4640: $04
	ldh a, [c]                                       ; $4641: $f2

jr_00d_4642:
	ld a, [bc]                                       ; $4642: $0a
	inc h                                            ; $4643: $24
	db $f4                                           ; $4644: $f4
	ldh a, [c]                                       ; $4645: $f2
	db $10                                           ; $4646: $10
	ld h, $fc                                        ; $4647: $26 $fc
	ldh a, [c]                                       ; $4649: $f2
	ld [de], a                                       ; $464a: $12
	ld h, $fc                                        ; $464b: $26 $fc
	ldh [c], a                                       ; $464d: $e2
	ld [bc], a                                       ; $464e: $02
	inc h                                            ; $464f: $24
	inc b                                            ; $4650: $04
	ldh [c], a                                       ; $4651: $e2
	inc b                                            ; $4652: $04
	inc h                                            ; $4653: $24
	db $f4                                           ; $4654: $f4
	ldh [c], a                                       ; $4655: $e2
	nop                                              ; $4656: $00
	dec h                                            ; $4657: $25
	db $fc                                           ; $4658: $fc
	ldh [c], a                                       ; $4659: $e2
	ld d, $24                                        ; $465a: $16 $24
	inc b                                            ; $465c: $04
	ldh a, [c]                                       ; $465d: $f2

jr_00d_465e:
	ld a, [bc]                                       ; $465e: $0a
	inc h                                            ; $465f: $24
	db $fc                                           ; $4660: $fc
	ldh a, [c]                                       ; $4661: $f2
	ld [de], a                                       ; $4662: $12
	ld h, $f4                                        ; $4663: $26 $f4
	ldh a, [c]                                       ; $4665: $f2
	db $10                                           ; $4666: $10
	ld h, $04                                        ; $4667: $26 $04
	ldh [c], a                                       ; $4669: $e2
	inc b                                            ; $466a: $04
	inc h                                            ; $466b: $24
	db $f4                                           ; $466c: $f4
	ldh [c], a                                       ; $466d: $e2
	nop                                              ; $466e: $00
	dec h                                            ; $466f: $25
	db $fc                                           ; $4670: $fc
	ld hl, sp+$00                                    ; $4671: $f8 $00
	dec l                                            ; $4673: $2d
	db $fc                                           ; $4674: $fc
	ld hl, sp+$02                                    ; $4675: $f8 $02
	dec l                                            ; $4677: $2d
	db $fd                                           ; $4678: $fd
	ld hl, sp+$00                                    ; $4679: $f8 $00
	dec l                                            ; $467b: $2d
	db $fd                                           ; $467c: $fd
	ld hl, sp+$02                                    ; $467d: $f8 $02
	dec l                                            ; $467f: $2d
	nop                                              ; $4680: $00
	ld hl, sp+$06                                    ; $4681: $f8 $06
	inc l                                            ; $4683: $2c
	ld hl, sp-$08                                    ; $4684: $f8 $f8
	inc b                                            ; $4686: $04
	dec l                                            ; $4687: $2d
	nop                                              ; $4688: $00
	ld hl, sp+$0a                                    ; $4689: $f8 $0a
	inc l                                            ; $468b: $2c
	ld hl, sp-$08                                    ; $468c: $f8 $f8
	ld [$f82d], sp                                   ; $468e: $08 $2d $f8
	ld hl, sp+$0c                                    ; $4691: $f8 $0c
	inc l                                            ; $4693: $2c
	nop                                              ; $4694: $00
	ld hl, sp+$0e                                    ; $4695: $f8 $0e
	dec l                                            ; $4697: $2d
	db $fd                                           ; $4698: $fd
	ei                                               ; $4699: $fb
	inc c                                            ; $469a: $0c
	dec l                                            ; $469b: $2d
	db $fd                                           ; $469c: $fd
	ei                                               ; $469d: $fb
	ld c, $2d                                        ; $469e: $0e $2d
	rrca                                             ; $46a0: $0f
	inc b                                            ; $46a1: $04
	ld d, $2c                                        ; $46a2: $16 $2c
	rlca                                             ; $46a4: $07
	inc b                                            ; $46a5: $04
	inc d                                            ; $46a6: $14
	inc l                                            ; $46a7: $2c
	rst $38                                          ; $46a8: $ff
	inc b                                            ; $46a9: $04
	ld [de], a                                       ; $46aa: $12
	inc l                                            ; $46ab: $2c
	rst FarCall                                          ; $46ac: $f7
	inc b                                            ; $46ad: $04
	db $10                                           ; $46ae: $10
	inc l                                            ; $46af: $2c
	rst AddAOntoHL                                          ; $46b0: $ef
	inc b                                            ; $46b1: $04
	ld c, $2c                                        ; $46b2: $0e $2c
	rst SubAFromBC                                          ; $46b4: $e7
	inc b                                            ; $46b5: $04
	inc c                                            ; $46b6: $0c
	inc l                                            ; $46b7: $2c
	rrca                                             ; $46b8: $0f
	db $f4                                           ; $46b9: $f4
	ld a, [bc]                                       ; $46ba: $0a
	inc l                                            ; $46bb: $2c
	rlca                                             ; $46bc: $07
	db $f4                                           ; $46bd: $f4
	ld [$ff2c], sp                                   ; $46be: $08 $2c $ff
	db $f4                                           ; $46c1: $f4
	ld b, $2c                                        ; $46c2: $06 $2c
	rst FarCall                                          ; $46c4: $f7
	db $f4                                           ; $46c5: $f4
	inc b                                            ; $46c6: $04
	inc l                                            ; $46c7: $2c
	rst AddAOntoHL                                          ; $46c8: $ef
	db $f4                                           ; $46c9: $f4
	ld [bc], a                                       ; $46ca: $02
	inc l                                            ; $46cb: $2c
	rst SubAFromBC                                          ; $46cc: $e7
	db $f4                                           ; $46cd: $f4
	nop                                              ; $46ce: $00
	dec l                                            ; $46cf: $2d
	ld [$3c10], sp                                   ; $46d0: $08 $10 $3c
	inc l                                            ; $46d3: $2c
	nop                                              ; $46d4: $00
	db $10                                           ; $46d5: $10
	ld a, [hl-]                                      ; $46d6: $3a
	inc l                                            ; $46d7: $2c
	ld hl, sp+$10                                    ; $46d8: $f8 $10
	jr c, jr_00d_4708                                ; $46da: $38 $2c

	ldh a, [rAUD1SWEEP]                              ; $46dc: $f0 $10
	ld [hl], $2c                                     ; $46de: $36 $2c
	ld [$3400], sp                                   ; $46e0: $08 $00 $34
	inc l                                            ; $46e3: $2c
	nop                                              ; $46e4: $00
	nop                                              ; $46e5: $00
	ld [hl-], a                                      ; $46e6: $32
	inc l                                            ; $46e7: $2c
	ld hl, sp+$00                                    ; $46e8: $f8 $00
	jr nc, jr_00d_4718                               ; $46ea: $30 $2c

	ldh a, [rP1]                                     ; $46ec: $f0 $00
	ld l, $2c                                        ; $46ee: $2e $2c
	add sp, $00                                      ; $46f0: $e8 $00
	inc l                                            ; $46f2: $2c
	inc l                                            ; $46f3: $2c
	ld [$2af0], sp                                   ; $46f4: $08 $f0 $2a
	inc l                                            ; $46f7: $2c
	nop                                              ; $46f8: $00
	ldh a, [$28]                                     ; $46f9: $f0 $28
	inc l                                            ; $46fb: $2c
	ld hl, sp-$10                                    ; $46fc: $f8 $f0
	ld h, $2c                                        ; $46fe: $26 $2c
	ldh a, [$f0]                                     ; $4700: $f0 $f0
	inc h                                            ; $4702: $24
	inc l                                            ; $4703: $2c
	add sp, -$10                                     ; $4704: $e8 $f0
	ld [hl+], a                                      ; $4706: $22
	inc l                                            ; $4707: $2c

jr_00d_4708:
	ld [$20e0], sp                                   ; $4708: $08 $e0 $20
	inc l                                            ; $470b: $2c
	nop                                              ; $470c: $00
	ldh [rAUD3HIGH], a                               ; $470d: $e0 $1e
	inc l                                            ; $470f: $2c
	ld hl, sp-$20                                    ; $4710: $f8 $e0
	inc e                                            ; $4712: $1c
	inc l                                            ; $4713: $2c
	ldh a, [$e0]                                     ; $4714: $f0 $e0
	ld a, [de]                                       ; $4716: $1a
	inc l                                            ; $4717: $2c

jr_00d_4718:
	add sp, -$20                                     ; $4718: $e8 $e0
	jr @+$2f                                         ; $471a: $18 $2d

	db $10                                           ; $471c: $10
	ldh [rAUD2LOW], a                                ; $471d: $e0 $18
	ld l, h                                          ; $471f: $6c

jr_00d_4720:
	ldh a, [rAUD1SWEEP]                              ; $4720: $f0 $10
	inc a                                            ; $4722: $3c
	ld l, h                                          ; $4723: $6c
	ld hl, sp+$10                                    ; $4724: $f8 $10
	ld a, [hl-]                                      ; $4726: $3a
	ld l, h                                          ; $4727: $6c
	nop                                              ; $4728: $00
	db $10                                           ; $4729: $10
	jr c, jr_00d_4798                                ; $472a: $38 $6c

	ld [$3610], sp                                   ; $472c: $08 $10 $36
	ld l, h                                          ; $472f: $6c

jr_00d_4730:
	ldh a, [rP1]                                     ; $4730: $f0 $00
	inc [hl]                                         ; $4732: $34
	ld l, h                                          ; $4733: $6c
	ld hl, sp+$00                                    ; $4734: $f8 $00
	ld [hl-], a                                      ; $4736: $32
	ld l, h                                          ; $4737: $6c
	nop                                              ; $4738: $00
	nop                                              ; $4739: $00
	jr nc, jr_00d_47a8                               ; $473a: $30 $6c

	ld [$2e00], sp                                   ; $473c: $08 $00 $2e
	ld l, h                                          ; $473f: $6c

jr_00d_4740:
	stop                                             ; $4740: $10 $00
	inc l                                            ; $4742: $2c
	ld l, h                                          ; $4743: $6c
	ldh a, [$f0]                                     ; $4744: $f0 $f0
	ld a, [hl+]                                      ; $4746: $2a
	ld l, h                                          ; $4747: $6c
	ld hl, sp-$10                                    ; $4748: $f8 $f0
	jr z, jr_00d_47b8                                ; $474a: $28 $6c

	nop                                              ; $474c: $00
	ldh a, [rAUDENA]                                 ; $474d: $f0 $26
	ld l, h                                          ; $474f: $6c
	ld [$24f0], sp                                   ; $4750: $08 $f0 $24
	ld l, h                                          ; $4753: $6c
	db $10                                           ; $4754: $10
	ldh a, [rAUD4POLY]                               ; $4755: $f0 $22
	ld l, h                                          ; $4757: $6c
	ldh a, [$e0]                                     ; $4758: $f0 $e0
	jr nz, jr_00d_47c8                               ; $475a: $20 $6c

	ld hl, sp-$20                                    ; $475c: $f8 $e0
	ld e, $6c                                        ; $475e: $1e $6c
	nop                                              ; $4760: $00

jr_00d_4761:
	ldh [rAUD3LEVEL], a                              ; $4761: $e0 $1c
	ld l, h                                          ; $4763: $6c
	ld [$1ae0], sp                                   ; $4764: $08 $e0 $1a
	ld l, l                                          ; $4767: $6d
	ld [$3ce0], sp                                   ; $4768: $08 $e0 $3c
	xor h                                            ; $476b: $ac
	nop                                              ; $476c: $00
	ldh [$3a], a                                     ; $476d: $e0 $3a
	xor h                                            ; $476f: $ac
	ld hl, sp-$20                                    ; $4770: $f8 $e0
	jr c, jr_00d_4720                                ; $4772: $38 $ac

	ldh a, [$e0]                                     ; $4774: $f0 $e0
	ld [hl], $ac                                     ; $4776: $36 $ac
	ld [$34f0], sp                                   ; $4778: $08 $f0 $34
	xor h                                            ; $477b: $ac
	nop                                              ; $477c: $00
	ldh a, [$32]                                     ; $477d: $f0 $32
	xor h                                            ; $477f: $ac
	ld hl, sp-$10                                    ; $4780: $f8 $f0
	jr nc, jr_00d_4730                               ; $4782: $30 $ac

	ldh a, [$f0]                                     ; $4784: $f0 $f0
	ld l, $ac                                        ; $4786: $2e $ac
	add sp, -$10                                     ; $4788: $e8 $f0
	inc l                                            ; $478a: $2c
	xor h                                            ; $478b: $ac
	ld [$2a00], sp                                   ; $478c: $08 $00 $2a
	xor h                                            ; $478f: $ac
	nop                                              ; $4790: $00
	nop                                              ; $4791: $00
	jr z, jr_00d_4740                                ; $4792: $28 $ac

	ld hl, sp+$00                                    ; $4794: $f8 $00
	ld h, $ac                                        ; $4796: $26 $ac

jr_00d_4798:
	ldh a, [rP1]                                     ; $4798: $f0 $00
	inc h                                            ; $479a: $24
	xor h                                            ; $479b: $ac
	add sp, $00                                      ; $479c: $e8 $00
	ld [hl+], a                                      ; $479e: $22
	xor h                                            ; $479f: $ac
	ld [$2010], sp                                   ; $47a0: $08 $10 $20
	xor h                                            ; $47a3: $ac
	nop                                              ; $47a4: $00
	db $10                                           ; $47a5: $10
	ld e, $ac                                        ; $47a6: $1e $ac

jr_00d_47a8:
	ld hl, sp+$10                                    ; $47a8: $f8 $10
	inc e                                            ; $47aa: $1c
	xor h                                            ; $47ab: $ac
	ldh a, [rAUD1SWEEP]                              ; $47ac: $f0 $10
	ld a, [de]                                       ; $47ae: $1a
	xor h                                            ; $47af: $ac
	add sp, $10                                      ; $47b0: $e8 $10
	jr jr_00d_4761                                   ; $47b2: $18 $ad

	ldh a, [$e0]                                     ; $47b4: $f0 $e0
	inc a                                            ; $47b6: $3c
	db $ec                                           ; $47b7: $ec

jr_00d_47b8:
	ld hl, sp-$20                                    ; $47b8: $f8 $e0
	ld a, [hl-]                                      ; $47ba: $3a
	db $ec                                           ; $47bb: $ec
	nop                                              ; $47bc: $00
	ldh [$38], a                                     ; $47bd: $e0 $38
	db $ec                                           ; $47bf: $ec
	ld [$36e0], sp                                   ; $47c0: $08 $e0 $36
	db $ec                                           ; $47c3: $ec
	ldh a, [$f0]                                     ; $47c4: $f0 $f0
	inc [hl]                                         ; $47c6: $34
	db $ec                                           ; $47c7: $ec

jr_00d_47c8:
	ld hl, sp-$10                                    ; $47c8: $f8 $f0
	ld [hl-], a                                      ; $47ca: $32
	db $ec                                           ; $47cb: $ec

jr_00d_47cc:
	nop                                              ; $47cc: $00
	ldh a, [$30]                                     ; $47cd: $f0 $30
	db $ec                                           ; $47cf: $ec
	ld [$2ef0], sp                                   ; $47d0: $08 $f0 $2e
	db $ec                                           ; $47d3: $ec
	db $10                                           ; $47d4: $10
	ldh a, [$2c]                                     ; $47d5: $f0 $2c
	db $ec                                           ; $47d7: $ec
	ldh a, [rP1]                                     ; $47d8: $f0 $00
	ld a, [hl+]                                      ; $47da: $2a
	db $ec                                           ; $47db: $ec

jr_00d_47dc:
	ld hl, sp+$00                                    ; $47dc: $f8 $00
	jr z, jr_00d_47cc                                ; $47de: $28 $ec

	nop                                              ; $47e0: $00
	nop                                              ; $47e1: $00
	ld h, $ec                                        ; $47e2: $26 $ec
	ld [$2400], sp                                   ; $47e4: $08 $00 $24
	db $ec                                           ; $47e7: $ec
	stop                                             ; $47e8: $10 $00
	ld [hl+], a                                      ; $47ea: $22
	db $ec                                           ; $47eb: $ec
	ldh a, [rAUD1SWEEP]                              ; $47ec: $f0 $10
	jr nz, jr_00d_47dc                               ; $47ee: $20 $ec

	ld hl, sp+$10                                    ; $47f0: $f8 $10
	ld e, $ec                                        ; $47f2: $1e $ec
	nop                                              ; $47f4: $00
	db $10                                           ; $47f5: $10
	inc e                                            ; $47f6: $1c
	db $ec                                           ; $47f7: $ec
	ld [$1a10], sp                                   ; $47f8: $08 $10 $1a
	db $ec                                           ; $47fb: $ec
	db $10                                           ; $47fc: $10
	db $10                                           ; $47fd: $10
	jr @-$11                                         ; $47fe: $18 $ed

	inc bc                                           ; $4800: $03
	ld b, $0a                                        ; $4801: $06 $0a
	ld l, $fb                                        ; $4803: $2e $fb
	ld b, $08                                        ; $4805: $06 $08
	ld l, $f3                                        ; $4807: $2e $f3
	ld b, $06                                        ; $4809: $06 $06
	ld l, $03                                        ; $480b: $2e $03
	or $04                                           ; $480d: $f6 $04
	ld l, $fb                                        ; $480f: $2e $fb
	or $02                                           ; $4811: $f6 $02
	ld l, $f3                                        ; $4813: $2e $f3
	or $00                                           ; $4815: $f6 $00
	cpl                                              ; $4817: $2f
	db $10                                           ; $4818: $10
	ret nc                                           ; $4819: $d0

	ld [hl-], a                                      ; $481a: $32
	inc l                                            ; $481b: $2c
	db $10                                           ; $481c: $10
	ldh a, [$2a]                                     ; $481d: $f0 $2a
	inc l                                            ; $481f: $2c
	ld [$28f0], sp                                   ; $4820: $08 $f0 $28
	inc l                                            ; $4823: $2c
	nop                                              ; $4824: $00
	ldh a, [rAUDENA]                                 ; $4825: $f0 $26
	inc l                                            ; $4827: $2c
	ld hl, sp-$10                                    ; $4828: $f8 $f0
	inc h                                            ; $482a: $24
	inc l                                            ; $482b: $2c
	ldh a, [$f0]                                     ; $482c: $f0 $f0
	ld [hl+], a                                      ; $482e: $22
	inc l                                            ; $482f: $2c
	db $10                                           ; $4830: $10
	ldh [rAUD4LEN], a                                ; $4831: $e0 $20
	inc l                                            ; $4833: $2c
	ld [$1ee0], sp                                   ; $4834: $08 $e0 $1e
	inc l                                            ; $4837: $2c
	nop                                              ; $4838: $00
	ldh [rAUD3LEVEL], a                              ; $4839: $e0 $1c
	inc l                                            ; $483b: $2c
	ld hl, sp-$20                                    ; $483c: $f8 $e0
	ld a, [de]                                       ; $483e: $1a
	inc l                                            ; $483f: $2c
	ldh a, [$e0]                                     ; $4840: $f0 $e0
	jr jr_00d_4870                                   ; $4842: $18 $2c

	ld [$16d0], sp                                   ; $4844: $08 $d0 $16
	inc l                                            ; $4847: $2c
	ld hl, sp-$30                                    ; $4848: $f8 $d0
	inc d                                            ; $484a: $14
	inc l                                            ; $484b: $2c
	ldh a, [$d0]                                     ; $484c: $f0 $d0
	ld [de], a                                       ; $484e: $12
	inc l                                            ; $484f: $2c
	add sp, -$30                                     ; $4850: $e8 $d0
	db $10                                           ; $4852: $10
	inc l                                            ; $4853: $2c
	ld [$0ec0], sp                                   ; $4854: $08 $c0 $0e
	inc l                                            ; $4857: $2c
	nop                                              ; $4858: $00
	ret nz                                           ; $4859: $c0

	inc c                                            ; $485a: $0c
	inc l                                            ; $485b: $2c
	ld hl, sp-$40                                    ; $485c: $f8 $c0
	ld a, [bc]                                       ; $485e: $0a
	inc l                                            ; $485f: $2c
	ldh a, [$c0]                                     ; $4860: $f0 $c0
	ld [$e82c], sp                                   ; $4862: $08 $2c $e8
	ret nz                                           ; $4865: $c0

	ld b, $2c                                        ; $4866: $06 $2c
	ld [$04b0], sp                                   ; $4868: $08 $b0 $04
	inc l                                            ; $486b: $2c
	nop                                              ; $486c: $00
	or b                                             ; $486d: $b0
	ld [bc], a                                       ; $486e: $02
	inc l                                            ; $486f: $2c

jr_00d_4870:
	ld hl, sp-$50                                    ; $4870: $f8 $b0
	nop                                              ; $4872: $00
	dec l                                            ; $4873: $2d
	db $10                                           ; $4874: $10
	ldh [$3c], a                                     ; $4875: $e0 $3c
	inc l                                            ; $4877: $2c
	db $10                                           ; $4878: $10
	jp $2c32                                         ; $4879: $c3 $32 $2c


	db $10                                           ; $487c: $10
	ret nc                                           ; $487d: $d0

	ld [hl-], a                                      ; $487e: $32
	inc l                                            ; $487f: $2c
	ldh a, [$e0]                                     ; $4880: $f0 $e0
	ld a, [hl-]                                      ; $4882: $3a
	inc l                                            ; $4883: $2c
	ld [$36c0], sp                                   ; $4884: $08 $c0 $36
	inc l                                            ; $4887: $2c
	ldh a, [$c0]                                     ; $4888: $f0 $c0
	inc [hl]                                         ; $488a: $34
	inc l                                            ; $488b: $2c
	ld [$30b0], sp                                   ; $488c: $08 $b0 $30
	inc l                                            ; $488f: $2c
	nop                                              ; $4890: $00
	or b                                             ; $4891: $b0
	ld l, $2c                                        ; $4892: $2e $2c
	ld hl, sp-$50                                    ; $4894: $f8 $b0
	inc l                                            ; $4896: $2c
	inc l                                            ; $4897: $2c
	db $10                                           ; $4898: $10
	ldh a, [$2a]                                     ; $4899: $f0 $2a
	inc l                                            ; $489b: $2c
	ld [$28f0], sp                                   ; $489c: $08 $f0 $28
	inc l                                            ; $489f: $2c
	nop                                              ; $48a0: $00
	ldh a, [rAUDENA]                                 ; $48a1: $f0 $26
	inc l                                            ; $48a3: $2c
	ld hl, sp-$10                                    ; $48a4: $f8 $f0
	inc h                                            ; $48a6: $24
	inc l                                            ; $48a7: $2c
	ldh a, [$f0]                                     ; $48a8: $f0 $f0
	ld [hl+], a                                      ; $48aa: $22
	inc l                                            ; $48ab: $2c
	ld [$1ee0], sp                                   ; $48ac: $08 $e0 $1e
	inc l                                            ; $48af: $2c
	nop                                              ; $48b0: $00
	ldh [rAUD3LEVEL], a                              ; $48b1: $e0 $1c
	inc l                                            ; $48b3: $2c
	ld hl, sp-$20                                    ; $48b4: $f8 $e0
	ld a, [de]                                       ; $48b6: $1a
	inc l                                            ; $48b7: $2c
	ld [$16d0], sp                                   ; $48b8: $08 $d0 $16
	inc l                                            ; $48bb: $2c
	ld hl, sp-$30                                    ; $48bc: $f8 $d0
	inc d                                            ; $48be: $14
	inc l                                            ; $48bf: $2c
	ldh a, [$d0]                                     ; $48c0: $f0 $d0
	ld [de], a                                       ; $48c2: $12
	inc l                                            ; $48c3: $2c
	add sp, -$30                                     ; $48c4: $e8 $d0
	db $10                                           ; $48c6: $10
	inc l                                            ; $48c7: $2c
	nop                                              ; $48c8: $00
	ret nz                                           ; $48c9: $c0

	inc c                                            ; $48ca: $0c
	inc l                                            ; $48cb: $2c
	ld hl, sp-$40                                    ; $48cc: $f8 $c0
	ld a, [bc]                                       ; $48ce: $0a
	dec l                                            ; $48cf: $2d
	ld hl, sp+$20                                    ; $48d0: $f8 $20
	ld [bc], a                                       ; $48d2: $02
	inc l                                            ; $48d3: $2c
	nop                                              ; $48d4: $00
	jr nz, jr_00d_48d9                               ; $48d5: $20 $02

	inc l                                            ; $48d7: $2c
	nop                                              ; $48d8: $00

jr_00d_48d9:
	db $10                                           ; $48d9: $10
	ld [bc], a                                       ; $48da: $02
	inc l                                            ; $48db: $2c
	ld hl, sp+$10                                    ; $48dc: $f8 $10
	ld [bc], a                                       ; $48de: $02
	inc l                                            ; $48df: $2c
	ld hl, sp+$00                                    ; $48e0: $f8 $00
	ld [bc], a                                       ; $48e2: $02
	inc l                                            ; $48e3: $2c
	ld hl, sp-$30                                    ; $48e4: $f8 $d0
	ld [bc], a                                       ; $48e6: $02
	inc l                                            ; $48e7: $2c
	nop                                              ; $48e8: $00
	ret nc                                           ; $48e9: $d0

	ld [bc], a                                       ; $48ea: $02
	inc l                                            ; $48eb: $2c
	ld [$0420], sp                                   ; $48ec: $08 $20 $04
	inc l                                            ; $48ef: $2c
	ld [$0410], sp                                   ; $48f0: $08 $10 $04
	inc l                                            ; $48f3: $2c
	ld [$0400], sp                                   ; $48f4: $08 $00 $04
	inc l                                            ; $48f7: $2c
	ld [$04d0], sp                                   ; $48f8: $08 $d0 $04
	inc l                                            ; $48fb: $2c
	ldh a, [rAUD4LEN]                                ; $48fc: $f0 $20
	nop                                              ; $48fe: $00
	inc l                                            ; $48ff: $2c
	ldh a, [$d0]                                     ; $4900: $f0 $d0
	nop                                              ; $4902: $00
	inc l                                            ; $4903: $2c
	ldh a, [rAUD1SWEEP]                              ; $4904: $f0 $10
	nop                                              ; $4906: $00
	inc l                                            ; $4907: $2c
	ldh a, [rP1]                                     ; $4908: $f0 $00
	nop                                              ; $490a: $00
	inc l                                            ; $490b: $2c
	ldh a, [$f0]                                     ; $490c: $f0 $f0
	nop                                              ; $490e: $00
	inc l                                            ; $490f: $2c
	nop                                              ; $4910: $00
	nop                                              ; $4911: $00
	ld [bc], a                                       ; $4912: $02
	inc l                                            ; $4913: $2c
	nop                                              ; $4914: $00
	ldh a, [rSC]                                     ; $4915: $f0 $02
	inc l                                            ; $4917: $2c
	ld hl, sp-$10                                    ; $4918: $f8 $f0
	ld [bc], a                                       ; $491a: $02
	inc l                                            ; $491b: $2c
	ld [$04f0], sp                                   ; $491c: $08 $f0 $04
	inc l                                            ; $491f: $2c
	nop                                              ; $4920: $00
	ldh [rSC], a                                     ; $4921: $e0 $02
	inc l                                            ; $4923: $2c
	ld [$04e0], sp                                   ; $4924: $08 $e0 $04
	inc l                                            ; $4927: $2c
	ld hl, sp-$20                                    ; $4928: $f8 $e0
	ld [bc], a                                       ; $492a: $02
	inc l                                            ; $492b: $2c
	ldh a, [$e0]                                     ; $492c: $f0 $e0
	nop                                              ; $492e: $00
	dec l                                            ; $492f: $2d
	add sp, -$20                                     ; $4930: $e8 $e0
	ld [bc], a                                       ; $4932: $02
	ld l, $e0                                        ; $4933: $2e $e0
	ldh [rP1], a                                     ; $4935: $e0 $00
	ld l, $00                                        ; $4937: $2e $00
	ld hl, sp+$0c                                    ; $4939: $f8 $0c
	inc l                                            ; $493b: $2c
	ld hl, sp-$08                                    ; $493c: $f8 $f8
	ld a, [bc]                                       ; $493e: $0a
	dec l                                            ; $493f: $2d
	add sp, -$20                                     ; $4940: $e8 $e0
	ld [bc], a                                       ; $4942: $02
	ld l, $e0                                        ; $4943: $2e $e0
	ldh [rP1], a                                     ; $4945: $e0 $00
	ld l, $08                                        ; $4947: $2e $08
	ld hl, sp+$10                                    ; $4949: $f8 $10
	inc l                                            ; $494b: $2c
	nop                                              ; $494c: $00
	ld hl, sp+$0e                                    ; $494d: $f8 $0e
	inc l                                            ; $494f: $2c
	ld hl, sp-$08                                    ; $4950: $f8 $f8
	ld a, [bc]                                       ; $4952: $0a
	dec l                                            ; $4953: $2d
	add sp, -$20                                     ; $4954: $e8 $e0
	ld [bc], a                                       ; $4956: $02
	ld l, $e0                                        ; $4957: $2e $e0
	ldh [rP1], a                                     ; $4959: $e0 $00
	ld l, $10                                        ; $495b: $2e $10
	ld hl, sp+$14                                    ; $495d: $f8 $14
	inc l                                            ; $495f: $2c
	ld [$12f8], sp                                   ; $4960: $08 $f8 $12
	inc l                                            ; $4963: $2c
	nop                                              ; $4964: $00
	ld hl, sp+$0e                                    ; $4965: $f8 $0e
	inc l                                            ; $4967: $2c
	ld hl, sp-$08                                    ; $4968: $f8 $f8
	ld a, [bc]                                       ; $496a: $0a
	dec l                                            ; $496b: $2d
	ld hl, sp+$00                                    ; $496c: $f8 $00
	inc h                                            ; $496e: $24
	ld l, $e8                                        ; $496f: $2e $e8
	ldh [rSC], a                                     ; $4971: $e0 $02
	ld l, $e0                                        ; $4973: $2e $e0
	ldh [rP1], a                                     ; $4975: $e0 $00
	ld l, $10                                        ; $4977: $2e $10
	ld hl, sp+$1e                                    ; $4979: $f8 $1e
	inc l                                            ; $497b: $2c
	ld [$1cf8], sp                                   ; $497c: $08 $f8 $1c
	inc l                                            ; $497f: $2c
	nop                                              ; $4980: $00
	nop                                              ; $4981: $00
	ld a, [de]                                       ; $4982: $1a
	inc l                                            ; $4983: $2c
	nop                                              ; $4984: $00
	ldh a, [rAUD2LOW]                                ; $4985: $f0 $18
	inc l                                            ; $4987: $2c
	ld hl, sp-$10                                    ; $4988: $f8 $f0
	ld d, $2d                                        ; $498a: $16 $2d
	ld hl, sp+$01                                    ; $498c: $f8 $01
	ld a, $2c                                        ; $498e: $3e $2c
	ldh [$e0], a                                     ; $4990: $e0 $e0
	nop                                              ; $4992: $00
	ld l, $e8                                        ; $4993: $2e $e8
	ldh [rSC], a                                     ; $4995: $e0 $02
	ld l, $10                                        ; $4997: $2e $10
	ld sp, hl                                        ; $4999: $f9
	inc [hl]                                         ; $499a: $34
	inc l                                            ; $499b: $2c
	ld [$32f9], sp                                   ; $499c: $08 $f9 $32
	inc l                                            ; $499f: $2c
	nop                                              ; $49a0: $00
	ld bc, $2c30                                     ; $49a1: $01 $30 $2c
	nop                                              ; $49a4: $00
	pop af                                           ; $49a5: $f1
	ld l, $2c                                        ; $49a6: $2e $2c
	ld hl, sp-$0f                                    ; $49a8: $f8 $f1
	inc l                                            ; $49aa: $2c
	dec l                                            ; $49ab: $2d
	ldh [$e0], a                                     ; $49ac: $e0 $e0
	nop                                              ; $49ae: $00
	ld l, $e8                                        ; $49af: $2e $e8
	ldh [rSC], a                                     ; $49b1: $e0 $02
	ld l, $10                                        ; $49b3: $2e $10
	ld hl, sp+$2a                                    ; $49b5: $f8 $2a
	ld l, $08                                        ; $49b7: $2e $08
	ld hl, sp+$28                                    ; $49b9: $f8 $28
	ld l, $00                                        ; $49bb: $2e $00
	nop                                              ; $49bd: $00
	ld h, $2e                                        ; $49be: $26 $2e
	ld hl, sp+$00                                    ; $49c0: $f8 $00
	inc h                                            ; $49c2: $24
	ld l, $00                                        ; $49c3: $2e $00
	ldh a, [rAUD4POLY]                               ; $49c5: $f0 $22
	ld l, $f8                                        ; $49c7: $2e $f8
	ldh a, [rAUD4LEN]                                ; $49c9: $f0 $20
	cpl                                              ; $49cb: $2f
	add sp, -$20                                     ; $49cc: $e8 $e0
	ld [bc], a                                       ; $49ce: $02
	ld l, $e0                                        ; $49cf: $2e $e0
	ldh [rP1], a                                     ; $49d1: $e0 $00
	ld l, $10                                        ; $49d3: $2e $10
	ld hl, sp+$2a                                    ; $49d5: $f8 $2a
	ld l, $08                                        ; $49d7: $2e $08
	nop                                              ; $49d9: $00
	jr z, jr_00d_4a0a                                ; $49da: $28 $2e

	nop                                              ; $49dc: $00
	nop                                              ; $49dd: $00
	ld h, $2e                                        ; $49de: $26 $2e
	ld hl, sp+$00                                    ; $49e0: $f8 $00
	inc h                                            ; $49e2: $24
	ld l, $00                                        ; $49e3: $2e $00
	ldh a, [rAUD4POLY]                               ; $49e5: $f0 $22
	ld l, $f8                                        ; $49e7: $2e $f8
	ldh a, [rAUD4LEN]                                ; $49e9: $f0 $20
	cpl                                              ; $49eb: $2f
	db $fc                                           ; $49ec: $fc
	ei                                               ; $49ed: $fb
	inc b                                            ; $49ee: $04
	dec l                                            ; $49ef: $2d
	db $fc                                           ; $49f0: $fc
	ei                                               ; $49f1: $fb
	ld b, $2d                                        ; $49f2: $06 $2d
	db $fc                                           ; $49f4: $fc
	ei                                               ; $49f5: $fb
	ld [$ff2d], sp                                   ; $49f6: $08 $2d $ff
	ld hl, sp+$38                                    ; $49f9: $f8 $38
	ld l, $f7                                        ; $49fb: $2e $f7
	ld hl, sp+$36                                    ; $49fd: $f8 $36
	cpl                                              ; $49ff: $2f
	ld bc, $3cf8                                     ; $4a00: $01 $f8 $3c
	ld l, $f6                                        ; $4a03: $2e $f6
	ld hl, sp+$3a                                    ; $4a05: $f8 $3a
	cpl                                              ; $4a07: $2f
	add sp, -$20                                     ; $4a08: $e8 $e0

jr_00d_4a0a:
	ld [bc], a                                       ; $4a0a: $02
	ld l, $e0                                        ; $4a0b: $2e $e0
	ldh [rP1], a                                     ; $4a0d: $e0 $00
	cpl                                              ; $4a0f: $2f
	ld [$3408], sp                                   ; $4a10: $08 $08 $34
	inc l                                            ; $4a13: $2c
	nop                                              ; $4a14: $00
	ld [$2c32], sp                                   ; $4a15: $08 $32 $2c
	ld [$30f8], sp                                   ; $4a18: $08 $f8 $30
	inc l                                            ; $4a1b: $2c
	nop                                              ; $4a1c: $00
	ld hl, sp+$2e                                    ; $4a1d: $f8 $2e
	inc l                                            ; $4a1f: $2c
	ld hl, sp-$08                                    ; $4a20: $f8 $f8
	inc l                                            ; $4a22: $2c
	dec l                                            ; $4a23: $2d
	ei                                               ; $4a24: $fb
	rst FarCall                                          ; $4a25: $f7
	ld [hl-], a                                      ; $4a26: $32
	cpl                                              ; $4a27: $2f
	db $fc                                           ; $4a28: $fc
	rst FarCall                                          ; $4a29: $f7
	inc [hl]                                         ; $4a2a: $34
	cpl                                              ; $4a2b: $2f
	db $ec                                           ; $4a2c: $ec
	di                                               ; $4a2d: $f3
	db $10                                           ; $4a2e: $10
	db $ec                                           ; $4a2f: $ec
	db $f4                                           ; $4a30: $f4
	di                                               ; $4a31: $f3
	ld c, $ec                                        ; $4a32: $0e $ec
	db $fc                                           ; $4a34: $fc
	di                                               ; $4a35: $f3
	inc c                                            ; $4a36: $0c
	db $ec                                           ; $4a37: $ec
	inc b                                            ; $4a38: $04
	di                                               ; $4a39: $f3
	ld a, [bc]                                       ; $4a3a: $0a
	db $ed                                           ; $4a3b: $ed
	db $f4                                           ; $4a3c: $f4
	ld [$ec24], a                                    ; $4a3d: $ea $24 $ec
	db $fc                                           ; $4a40: $fc
	ld [$ec22], a                                    ; $4a41: $ea $22 $ec
	inc b                                            ; $4a44: $04
	ld [$ec20], a                                    ; $4a45: $ea $20 $ec
	db $fc                                           ; $4a48: $fc
	ld a, [$ec1e]                                    ; $4a49: $fa $1e $ec
	inc b                                            ; $4a4c: $04
	ld a, [$ed1c]                                    ; $4a4d: $fa $1c $ed
	db $fc                                           ; $4a50: $fc
	xor $06                                          ; $4a51: $ee $06
	db $ec                                           ; $4a53: $ec
	inc b                                            ; $4a54: $04
	xor $2a                                          ; $4a55: $ee $2a
	db $ec                                           ; $4a57: $ec
	db $fc                                           ; $4a58: $fc
	cp $28                                           ; $4a59: $fe $28
	db $ec                                           ; $4a5b: $ec
	inc b                                            ; $4a5c: $04
	cp $26                                           ; $4a5d: $fe $26
	db $ed                                           ; $4a5f: $ed
	inc bc                                           ; $4a60: $03
	inc bc                                           ; $4a61: $03
	ld [$032c], sp                                   ; $4a62: $08 $2c $03
	di                                               ; $4a65: $f3
	inc b                                            ; $4a66: $04
	inc l                                            ; $4a67: $2c
	ei                                               ; $4a68: $fb
	db $fc                                           ; $4a69: $fc
	ld [bc], a                                       ; $4a6a: $02
	inc l                                            ; $4a6b: $2c
	di                                               ; $4a6c: $f3
	db $fc                                           ; $4a6d: $fc
	nop                                              ; $4a6e: $00
	dec l                                            ; $4a6f: $2d
	inc bc                                           ; $4a70: $03
	inc bc                                           ; $4a71: $03
	inc h                                            ; $4a72: $24
	inc l                                            ; $4a73: $2c
	ei                                               ; $4a74: $fb
	inc bc                                           ; $4a75: $03
	ld [hl+], a                                      ; $4a76: $22
	inc l                                            ; $4a77: $2c
	di                                               ; $4a78: $f3
	inc bc                                           ; $4a79: $03
	jr nz, jr_00d_4aa8                               ; $4a7a: $20 $2c

	ei                                               ; $4a7c: $fb
	di                                               ; $4a7d: $f3
	ld e, $2c                                        ; $4a7e: $1e $2c
	di                                               ; $4a80: $f3
	di                                               ; $4a81: $f3
	inc e                                            ; $4a82: $1c
	dec l                                            ; $4a83: $2d
	db $f4                                           ; $4a84: $f4
	pop af                                           ; $4a85: $f1
	ld h, $2c                                        ; $4a86: $26 $2c
	db $fc                                           ; $4a88: $fc
	ld bc, $2c06                                     ; $4a89: $01 $06 $2c
	db $f4                                           ; $4a8c: $f4
	ld bc, $2c2a                                     ; $4a8d: $01 $2a $2c
	db $fc                                           ; $4a90: $fc
	pop af                                           ; $4a91: $f1
	jr z, jr_00d_4ac1                                ; $4a92: $28 $2d

	or $f5                                           ; $4a94: $f6 $f5
	inc l                                            ; $4a96: $2c
	ld l, $fe                                        ; $4a97: $2e $fe
	push af                                          ; $4a99: $f5
	ld l, $2f                                        ; $4a9a: $2e $2f
	rst $38                                          ; $4a9c: $ff
	db $f4                                           ; $4a9d: $f4
	jr nc, @+$31                                     ; $4a9e: $30 $2f

	db $fd                                           ; $4aa0: $fd
	cp $2e                                           ; $4aa1: $fe $2e
	cpl                                              ; $4aa3: $2f
	db $fd                                           ; $4aa4: $fd
	cp $30                                           ; $4aa5: $fe $30
	cpl                                              ; $4aa7: $2f

jr_00d_4aa8:
	ld [bc], a                                       ; $4aa8: $02
	ei                                               ; $4aa9: $fb
	ld [$fa2c], sp                                   ; $4aaa: $08 $2c $fa
	ei                                               ; $4aad: $fb
	ld b, $2c                                        ; $4aae: $06 $2c
	ldh a, [c]                                       ; $4ab0: $f2
	ei                                               ; $4ab1: $fb
	inc b                                            ; $4ab2: $04
	inc l                                            ; $4ab3: $2c
	ld [bc], a                                       ; $4ab4: $02
	db $eb                                           ; $4ab5: $eb
	ld [bc], a                                       ; $4ab6: $02
	inc l                                            ; $4ab7: $2c
	ld a, [$00eb]                                    ; $4ab8: $fa $eb $00
	cpl                                              ; $4abb: $2f
	dec b                                            ; $4abc: $05
	nop                                              ; $4abd: $00
	ld d, $2c                                        ; $4abe: $16 $2c
	db $fd                                           ; $4ac0: $fd

jr_00d_4ac1:
	add hl, bc                                       ; $4ac1: $09
	inc d                                            ; $4ac2: $14
	inc l                                            ; $4ac3: $2c
	dec b                                            ; $4ac4: $05
	ldh a, [rAUD1SWEEP]                              ; $4ac5: $f0 $10
	inc l                                            ; $4ac7: $2c
	db $fd                                           ; $4ac8: $fd
	ld sp, hl                                        ; $4ac9: $f9
	ld [de], a                                       ; $4aca: $12
	inc l                                            ; $4acb: $2c
	db $fd                                           ; $4acc: $fd
	jp hl                                            ; $4acd: $e9


	ld c, $2e                                        ; $4ace: $0e $2e
	push af                                          ; $4ad0: $f5
	ld sp, hl                                        ; $4ad1: $f9
	inc c                                            ; $4ad2: $0c
	inc l                                            ; $4ad3: $2c
	db $ed                                           ; $4ad4: $ed
	ld sp, hl                                        ; $4ad5: $f9
	ld a, [bc]                                       ; $4ad6: $0a
	dec l                                            ; $4ad7: $2d
	xor $f4                                          ; $4ad8: $ee $f4
	jr jr_00d_4b08                                   ; $4ada: $18 $2c

	or $f4                                           ; $4adc: $f6 $f4
	ld a, [de]                                       ; $4ade: $1a
	inc l                                            ; $4adf: $2c
	cp $f4                                           ; $4ae0: $fe $f4
	inc e                                            ; $4ae2: $1c
	inc l                                            ; $4ae3: $2c
	ld b, $ed                                        ; $4ae4: $06 $ed
	ld e, $2e                                        ; $4ae6: $1e $2e
	xor $04                                          ; $4ae8: $ee $04
	jr nz, jr_00d_4b18                               ; $4aea: $20 $2c

	or $04                                           ; $4aec: $f6 $04
	ld [hl+], a                                      ; $4aee: $22
	inc l                                            ; $4aef: $2c
	cp $04                                           ; $4af0: $fe $04
	inc h                                            ; $4af2: $24
	inc l                                            ; $4af3: $2c
	ld b, $fd                                        ; $4af4: $06 $fd
	ld h, $2c                                        ; $4af6: $26 $2c
	ld c, $fd                                        ; $4af8: $0e $fd
	jr z, jr_00d_4b29                                ; $4afa: $28 $2d

	ei                                               ; $4afc: $fb
	rst FarCall                                          ; $4afd: $f7
	ld a, [hl+]                                      ; $4afe: $2a
	dec l                                            ; $4aff: $2d
	ei                                               ; $4b00: $fb
	rst FarCall                                          ; $4b01: $f7
	inc l                                            ; $4b02: $2c
	dec l                                            ; $4b03: $2d
	nop                                              ; $4b04: $00
	ld hl, sp+$04                                    ; $4b05: $f8 $04
	inc l                                            ; $4b07: $2c

jr_00d_4b08:
	nop                                              ; $4b08: $00
	add sp, $02                                      ; $4b09: $e8 $02
	inc l                                            ; $4b0b: $2c
	ld hl, sp-$08                                    ; $4b0c: $f8 $f8
	nop                                              ; $4b0e: $00
	dec l                                            ; $4b0f: $2d
	nop                                              ; $4b10: $00
	ld hl, sp+$0c                                    ; $4b11: $f8 $0c
	inc l                                            ; $4b13: $2c
	ld hl, sp-$08                                    ; $4b14: $f8 $f8
	ld a, [bc]                                       ; $4b16: $0a
	inc l                                            ; $4b17: $2c

jr_00d_4b18:
	nop                                              ; $4b18: $00
	add sp, $08                                      ; $4b19: $e8 $08
	inc l                                            ; $4b1b: $2c
	ld hl, sp-$18                                    ; $4b1c: $f8 $e8
	ld b, $2d                                        ; $4b1e: $06 $2d
	inc b                                            ; $4b20: $04
	nop                                              ; $4b21: $00
	ld d, $2c                                        ; $4b22: $16 $2c
	inc b                                            ; $4b24: $04
	ldh a, [rAUD1ENV]                                ; $4b25: $f0 $12
	inc l                                            ; $4b27: $2c
	db $fc                                           ; $4b28: $fc

jr_00d_4b29:
	ldh a, [rAUD1SWEEP]                              ; $4b29: $f0 $10
	inc l                                            ; $4b2b: $2c
	db $fc                                           ; $4b2c: $fc
	nop                                              ; $4b2d: $00
	ld d, $2c                                        ; $4b2e: $16 $2c
	db $f4                                           ; $4b30: $f4
	nop                                              ; $4b31: $00
	inc d                                            ; $4b32: $14
	inc l                                            ; $4b33: $2c
	db $f4                                           ; $4b34: $f4
	ldh a, [$0e]                                     ; $4b35: $f0 $0e
	dec l                                            ; $4b37: $2d
	inc b                                            ; $4b38: $04
	ld hl, sp+$24                                    ; $4b39: $f8 $24
	inc l                                            ; $4b3b: $2c
	db $fc                                           ; $4b3c: $fc
	ld hl, sp+$22                                    ; $4b3d: $f8 $22
	inc l                                            ; $4b3f: $2c
	inc b                                            ; $4b40: $04
	add sp, $1e                                      ; $4b41: $e8 $1e
	inc l                                            ; $4b43: $2c
	db $fc                                           ; $4b44: $fc
	add sp, $1c                                      ; $4b45: $e8 $1c
	inc l                                            ; $4b47: $2c
	db $f4                                           ; $4b48: $f4
	add sp, $1a                                      ; $4b49: $e8 $1a
	inc l                                            ; $4b4b: $2c
	db $f4                                           ; $4b4c: $f4
	ld hl, sp+$18                                    ; $4b4d: $f8 $18
	dec l                                            ; $4b4f: $2d
	inc b                                            ; $4b50: $04
	ldh a, [c]                                       ; $4b51: $f2
	inc b                                            ; $4b52: $04
	inc l                                            ; $4b53: $2c
	db $fc                                           ; $4b54: $fc
	ldh a, [c]                                       ; $4b55: $f2
	ld [bc], a                                       ; $4b56: $02
	inc l                                            ; $4b57: $2c
	db $f4                                           ; $4b58: $f4
	ldh a, [c]                                       ; $4b59: $f2
	nop                                              ; $4b5a: $00
	dec l                                            ; $4b5b: $2d
	inc b                                            ; $4b5c: $04
	ldh a, [c]                                       ; $4b5d: $f2
	inc b                                            ; $4b5e: $04
	inc l                                            ; $4b5f: $2c
	db $fc                                           ; $4b60: $fc
	ldh a, [c]                                       ; $4b61: $f2
	ld [bc], a                                       ; $4b62: $02
	inc l                                            ; $4b63: $2c
	db $f4                                           ; $4b64: $f4
	ldh a, [c]                                       ; $4b65: $f2
	nop                                              ; $4b66: $00
	dec l                                            ; $4b67: $2d
	inc bc                                           ; $4b68: $03
	rst FarCall                                          ; $4b69: $f7
	inc a                                            ; $4b6a: $3c
	ld l, $fb                                        ; $4b6b: $2e $fb
	rst FarCall                                          ; $4b6d: $f7
	ld a, [hl-]                                      ; $4b6e: $3a
	ld l, $f3                                        ; $4b6f: $2e $f3
	rst FarCall                                          ; $4b71: $f7
	jr c, jr_00d_4ba2                                ; $4b72: $38 $2e

	inc bc                                           ; $4b74: $03
	rst SubAFromBC                                          ; $4b75: $e7
	ld [hl], $2e                                     ; $4b76: $36 $2e
	ei                                               ; $4b78: $fb
	rst SubAFromBC                                          ; $4b79: $e7
	inc [hl]                                         ; $4b7a: $34
	ld l, $f3                                        ; $4b7b: $2e $f3
	rst SubAFromBC                                          ; $4b7d: $e7
	ld [hl-], a                                      ; $4b7e: $32
	cpl                                              ; $4b7f: $2f
	inc b                                            ; $4b80: $04
	rst AddAOntoHL                                          ; $4b81: $ef
	jr nc, @+$30                                     ; $4b82: $30 $2e

	db $fc                                           ; $4b84: $fc
	rst AddAOntoHL                                          ; $4b85: $ef
	ld l, $2e                                        ; $4b86: $2e $2e
	db $f4                                           ; $4b88: $f4
	rst AddAOntoHL                                          ; $4b89: $ef
	inc l                                            ; $4b8a: $2c
	ld l, $04                                        ; $4b8b: $2e $04
	rst SubAFromDE                                          ; $4b8d: $df
	ld a, [hl+]                                      ; $4b8e: $2a
	ld l, $fc                                        ; $4b8f: $2e $fc
	rst SubAFromDE                                          ; $4b91: $df
	jr z, @+$30                                      ; $4b92: $28 $2e

	db $f4                                           ; $4b94: $f4
	rst SubAFromDE                                          ; $4b95: $df
	ld h, $2e                                        ; $4b96: $26 $2e
	db $ec                                           ; $4b98: $ec
	and $24                                          ; $4b99: $e6 $24
	cpl                                              ; $4b9b: $2f
	dec bc                                           ; $4b9c: $0b
	db $ec                                           ; $4b9d: $ec
	ld [hl+], a                                      ; $4b9e: $22
	inc l                                            ; $4b9f: $2c
	inc bc                                           ; $4ba0: $03
	db $ec                                           ; $4ba1: $ec

jr_00d_4ba2:
	jr nz, jr_00d_4bd0                               ; $4ba2: $20 $2c

	ei                                               ; $4ba4: $fb
	db $ec                                           ; $4ba5: $ec
	ld e, $2c                                        ; $4ba6: $1e $2c
	dec bc                                           ; $4ba8: $0b
	call c, $2c1c                                    ; $4ba9: $dc $1c $2c
	inc bc                                           ; $4bac: $03
	call c, $2c1a                                    ; $4bad: $dc $1a $2c
	ei                                               ; $4bb0: $fb
	call c, $2c18                                    ; $4bb1: $dc $18 $2c
	di                                               ; $4bb4: $f3
	call c, $2c16                                    ; $4bb5: $dc $16 $2c
	db $eb                                           ; $4bb8: $eb
	call c, $2c14                                    ; $4bb9: $dc $14 $2c
	db $e3                                           ; $4bbc: $e3
	call c, $2c12                                    ; $4bbd: $dc $12 $2c
	dec bc                                           ; $4bc0: $0b
	call z, $2c10                                    ; $4bc1: $cc $10 $2c
	inc bc                                           ; $4bc4: $03
	call z, $2c0e                                    ; $4bc5: $cc $0e $2c
	ei                                               ; $4bc8: $fb
	call z, $2c0c                                    ; $4bc9: $cc $0c $2c
	di                                               ; $4bcc: $f3
	call z, $2c0a                                    ; $4bcd: $cc $0a $2c

jr_00d_4bd0:
	db $eb                                           ; $4bd0: $eb
	call z, $2c08                                    ; $4bd1: $cc $08 $2c
	db $e3                                           ; $4bd4: $e3
	call z, $2d06                                    ; $4bd5: $cc $06 $2d
	dec bc                                           ; $4bd8: $0b
	call z, $2c14                                    ; $4bd9: $cc $14 $2c
	dec bc                                           ; $4bdc: $0b
	call c, $2c16                                    ; $4bdd: $dc $16 $2c
	dec bc                                           ; $4be0: $0b
	db $ec                                           ; $4be1: $ec
	jr jr_00d_4c10                                   ; $4be2: $18 $2c

	inc bc                                           ; $4be4: $03
	db $e4                                           ; $4be5: $e4
	ld [de], a                                       ; $4be6: $12
	inc l                                            ; $4be7: $2c
	ei                                               ; $4be8: $fb
	db $e4                                           ; $4be9: $e4
	db $10                                           ; $4bea: $10
	inc l                                            ; $4beb: $2c
	di                                               ; $4bec: $f3
	db $e4                                           ; $4bed: $e4
	ld c, $2c                                        ; $4bee: $0e $2c
	inc bc                                           ; $4bf0: $03
	call nc, $2c08                                   ; $4bf1: $d4 $08 $2c
	ei                                               ; $4bf4: $fb
	call nc, $2c06                                   ; $4bf5: $d4 $06 $2c
	di                                               ; $4bf8: $f3
	call nc, $2c04                                   ; $4bf9: $d4 $04 $2c
	db $eb                                           ; $4bfc: $eb
	db $e4                                           ; $4bfd: $e4
	inc c                                            ; $4bfe: $0c
	inc l                                            ; $4bff: $2c
	db $eb                                           ; $4c00: $eb
	call nc, $2c02                                   ; $4c01: $d4 $02 $2c
	db $e3                                           ; $4c04: $e3
	db $e4                                           ; $4c05: $e4
	ld a, [bc]                                       ; $4c06: $0a
	inc l                                            ; $4c07: $2c
	db $e3                                           ; $4c08: $e3
	call nc, $2d00                                   ; $4c09: $d4 $00 $2d
	rst FarCall                                          ; $4c0c: $f7
	di                                               ; $4c0d: $f3
	ld d, $2c                                        ; $4c0e: $16 $2c

jr_00d_4c10:
	rst SubAFromBC                                          ; $4c10: $e7
	di                                               ; $4c11: $f3
	ld [de], a                                       ; $4c12: $12
	inc l                                            ; $4c13: $2c
	rst AddAOntoHL                                          ; $4c14: $ef
	di                                               ; $4c15: $f3
	inc d                                            ; $4c16: $14
	inc l                                            ; $4c17: $2c
	rst $38                                          ; $4c18: $ff
	db $e3                                           ; $4c19: $e3
	db $10                                           ; $4c1a: $10
	inc l                                            ; $4c1b: $2c
	rlca                                             ; $4c1c: $07
	db $d3                                           ; $4c1d: $d3
	ld [$ff2c], sp                                   ; $4c1e: $08 $2c $ff
	db $d3                                           ; $4c21: $d3
	ld b, $2c                                        ; $4c22: $06 $2c
	rst FarCall                                          ; $4c24: $f7
	db $d3                                           ; $4c25: $d3
	inc b                                            ; $4c26: $04
	inc l                                            ; $4c27: $2c
	rst FarCall                                          ; $4c28: $f7
	db $e3                                           ; $4c29: $e3
	ld c, $2c                                        ; $4c2a: $0e $2c
	rst AddAOntoHL                                          ; $4c2c: $ef
	db $e3                                           ; $4c2d: $e3
	inc c                                            ; $4c2e: $0c
	inc l                                            ; $4c2f: $2c
	rst SubAFromBC                                          ; $4c30: $e7
	db $e3                                           ; $4c31: $e3
	ld a, [bc]                                       ; $4c32: $0a
	inc l                                            ; $4c33: $2c
	rst AddAOntoHL                                          ; $4c34: $ef
	db $d3                                           ; $4c35: $d3
	ld [bc], a                                       ; $4c36: $02
	inc l                                            ; $4c37: $2c
	rst SubAFromBC                                          ; $4c38: $e7
	db $d3                                           ; $4c39: $d3
	nop                                              ; $4c3a: $00
	dec l                                            ; $4c3b: $2d
	inc b                                            ; $4c3c: $04
	ldh a, [c]                                       ; $4c3d: $f2
	ld a, [bc]                                       ; $4c3e: $0a
	inc l                                            ; $4c3f: $2c
	db $fc                                           ; $4c40: $fc
	ldh a, [c]                                       ; $4c41: $f2
	ld [$f42c], sp                                   ; $4c42: $08 $2c $f4
	ldh a, [c]                                       ; $4c45: $f2
	ld b, $2c                                        ; $4c46: $06 $2c
	inc b                                            ; $4c48: $04
	ldh [c], a                                       ; $4c49: $e2
	inc b                                            ; $4c4a: $04
	inc l                                            ; $4c4b: $2c
	db $fc                                           ; $4c4c: $fc
	ldh [c], a                                       ; $4c4d: $e2
	ld [bc], a                                       ; $4c4e: $02
	inc l                                            ; $4c4f: $2c
	db $f4                                           ; $4c50: $f4
	ldh [c], a                                       ; $4c51: $e2
	nop                                              ; $4c52: $00
	dec l                                            ; $4c53: $2d
	inc b                                            ; $4c54: $04
	ldh a, [c]                                       ; $4c55: $f2
	inc c                                            ; $4c56: $0c
	inc l                                            ; $4c57: $2c
	db $fc                                           ; $4c58: $fc
	ldh a, [c]                                       ; $4c59: $f2
	ld a, [bc]                                       ; $4c5a: $0a
	inc l                                            ; $4c5b: $2c
	db $f4                                           ; $4c5c: $f4
	ldh a, [c]                                       ; $4c5d: $f2
	ld [$042c], sp                                   ; $4c5e: $08 $2c $04
	ldh [c], a                                       ; $4c61: $e2
	inc b                                            ; $4c62: $04
	inc l                                            ; $4c63: $2c
	db $fc                                           ; $4c64: $fc
	ldh [c], a                                       ; $4c65: $e2
	ld [bc], a                                       ; $4c66: $02
	inc l                                            ; $4c67: $2c
	db $f4                                           ; $4c68: $f4
	ldh [c], a                                       ; $4c69: $e2
	nop                                              ; $4c6a: $00
	dec l                                            ; $4c6b: $2d
	db $f4                                           ; $4c6c: $f4
	ldh [c], a                                       ; $4c6d: $e2
	ld b, $2c                                        ; $4c6e: $06 $2c
	inc b                                            ; $4c70: $04
	ldh a, [c]                                       ; $4c71: $f2
	inc c                                            ; $4c72: $0c
	inc l                                            ; $4c73: $2c
	db $fc                                           ; $4c74: $fc
	ldh a, [c]                                       ; $4c75: $f2
	ld a, [bc]                                       ; $4c76: $0a
	inc l                                            ; $4c77: $2c
	db $f4                                           ; $4c78: $f4
	ldh a, [c]                                       ; $4c79: $f2
	ld [$042c], sp                                   ; $4c7a: $08 $2c $04
	ldh [c], a                                       ; $4c7d: $e2
	inc b                                            ; $4c7e: $04
	inc l                                            ; $4c7f: $2c
	db $fc                                           ; $4c80: $fc
	ldh [c], a                                       ; $4c81: $e2
	ld [bc], a                                       ; $4c82: $02
	dec l                                            ; $4c83: $2d
	db $f4                                           ; $4c84: $f4
	ldh a, [c]                                       ; $4c85: $f2
	db $10                                           ; $4c86: $10
	inc l                                            ; $4c87: $2c
	db $f4                                           ; $4c88: $f4
	ldh [c], a                                       ; $4c89: $e2
	ld c, $2c                                        ; $4c8a: $0e $2c
	inc b                                            ; $4c8c: $04
	ldh a, [c]                                       ; $4c8d: $f2
	inc c                                            ; $4c8e: $0c
	inc l                                            ; $4c8f: $2c
	db $fc                                           ; $4c90: $fc
	ldh a, [c]                                       ; $4c91: $f2
	ld a, [bc]                                       ; $4c92: $0a
	inc l                                            ; $4c93: $2c
	inc b                                            ; $4c94: $04
	ldh [c], a                                       ; $4c95: $e2
	inc b                                            ; $4c96: $04
	inc l                                            ; $4c97: $2c
	db $fc                                           ; $4c98: $fc
	ldh [c], a                                       ; $4c99: $e2
	ld [bc], a                                       ; $4c9a: $02
	dec l                                            ; $4c9b: $2d
	db $f4                                           ; $4c9c: $f4
	ldh a, [c]                                       ; $4c9d: $f2
	inc d                                            ; $4c9e: $14
	inc l                                            ; $4c9f: $2c
	db $f4                                           ; $4ca0: $f4
	ldh [c], a                                       ; $4ca1: $e2
	ld [de], a                                       ; $4ca2: $12
	inc l                                            ; $4ca3: $2c
	inc b                                            ; $4ca4: $04
	ldh a, [c]                                       ; $4ca5: $f2
	inc c                                            ; $4ca6: $0c
	inc l                                            ; $4ca7: $2c
	db $fc                                           ; $4ca8: $fc
	ldh a, [c]                                       ; $4ca9: $f2
	ld a, [bc]                                       ; $4caa: $0a
	inc l                                            ; $4cab: $2c
	inc b                                            ; $4cac: $04
	ldh [c], a                                       ; $4cad: $e2
	inc b                                            ; $4cae: $04
	inc l                                            ; $4caf: $2c
	db $fc                                           ; $4cb0: $fc
	ldh [c], a                                       ; $4cb1: $e2
	ld [bc], a                                       ; $4cb2: $02
	dec l                                            ; $4cb3: $2d
	db $f4                                           ; $4cb4: $f4
	ldh a, [c]                                       ; $4cb5: $f2
	ld d, $2c                                        ; $4cb6: $16 $2c
	db $f4                                           ; $4cb8: $f4
	ldh [c], a                                       ; $4cb9: $e2
	ld [de], a                                       ; $4cba: $12
	inc l                                            ; $4cbb: $2c
	inc b                                            ; $4cbc: $04
	ldh a, [c]                                       ; $4cbd: $f2
	inc c                                            ; $4cbe: $0c
	inc l                                            ; $4cbf: $2c
	db $fc                                           ; $4cc0: $fc
	ldh a, [c]                                       ; $4cc1: $f2
	ld a, [bc]                                       ; $4cc2: $0a
	inc l                                            ; $4cc3: $2c
	inc b                                            ; $4cc4: $04
	ldh [c], a                                       ; $4cc5: $e2
	inc b                                            ; $4cc6: $04
	inc l                                            ; $4cc7: $2c
	db $fc                                           ; $4cc8: $fc
	ldh [c], a                                       ; $4cc9: $e2
	ld [bc], a                                       ; $4cca: $02
	dec l                                            ; $4ccb: $2d
	db $f4                                           ; $4ccc: $f4
	ldh a, [c]                                       ; $4ccd: $f2
	jr jr_00d_4cfc                                   ; $4cce: $18 $2c

	db $f4                                           ; $4cd0: $f4
	ldh [c], a                                       ; $4cd1: $e2
	ld [de], a                                       ; $4cd2: $12
	inc l                                            ; $4cd3: $2c
	inc b                                            ; $4cd4: $04
	ldh a, [c]                                       ; $4cd5: $f2
	inc c                                            ; $4cd6: $0c
	inc l                                            ; $4cd7: $2c
	db $fc                                           ; $4cd8: $fc
	ldh a, [c]                                       ; $4cd9: $f2
	ld a, [bc]                                       ; $4cda: $0a
	inc l                                            ; $4cdb: $2c
	inc b                                            ; $4cdc: $04
	ldh [c], a                                       ; $4cdd: $e2
	inc b                                            ; $4cde: $04
	inc l                                            ; $4cdf: $2c
	db $fc                                           ; $4ce0: $fc
	ldh [c], a                                       ; $4ce1: $e2
	ld [bc], a                                       ; $4ce2: $02
	dec l                                            ; $4ce3: $2d
	db $fc                                           ; $4ce4: $fc
	pop hl                                           ; $4ce5: $e1
	ld a, [de]                                       ; $4ce6: $1a
	ld l, [hl]                                       ; $4ce7: $6e
	db $f4                                           ; $4ce8: $f4
	pop af                                           ; $4ce9: $f1
	inc h                                            ; $4cea: $24
	ld l, [hl]                                       ; $4ceb: $6e
	db $fc                                           ; $4cec: $fc
	pop af                                           ; $4ced: $f1
	ld [hl+], a                                      ; $4cee: $22
	ld l, [hl]                                       ; $4cef: $6e
	inc b                                            ; $4cf0: $04
	pop af                                           ; $4cf1: $f1
	jr nz, jr_00d_4d63                               ; $4cf2: $20 $6f

	push af                                          ; $4cf4: $f5
	pop af                                           ; $4cf5: $f1
	inc l                                            ; $4cf6: $2c
	ld l, [hl]                                       ; $4cf7: $6e
	db $fd                                           ; $4cf8: $fd
	pop af                                           ; $4cf9: $f1
	ld a, [hl+]                                      ; $4cfa: $2a
	ld l, [hl]                                       ; $4cfb: $6e

jr_00d_4cfc:
	dec b                                            ; $4cfc: $05
	pop af                                           ; $4cfd: $f1
	jr z, jr_00d_4d6e                                ; $4cfe: $28 $6e

	db $fd                                           ; $4d00: $fd
	pop hl                                           ; $4d01: $e1
	ld h, $6f                                        ; $4d02: $26 $6f
	db $fc                                           ; $4d04: $fc
	ldh [c], a                                       ; $4d05: $e2
	ld e, $6e                                        ; $4d06: $1e $6e
	inc b                                            ; $4d08: $04
	ldh [c], a                                       ; $4d09: $e2
	inc e                                            ; $4d0a: $1c
	ld l, [hl]                                       ; $4d0b: $6e
	db $fc                                           ; $4d0c: $fc
	ldh a, [c]                                       ; $4d0d: $f2
	jr nc, jr_00d_4d7e                               ; $4d0e: $30 $6e

	db $f4                                           ; $4d10: $f4
	ldh a, [c]                                       ; $4d11: $f2
	ld [hl-], a                                      ; $4d12: $32
	ld l, [hl]                                       ; $4d13: $6e
	inc b                                            ; $4d14: $04
	ldh a, [c]                                       ; $4d15: $f2
	ld l, $6f                                        ; $4d16: $2e $6f
	db $fc                                           ; $4d18: $fc
	pop hl                                           ; $4d19: $e1
	ld a, [de]                                       ; $4d1a: $1a
	ld l, $04                                        ; $4d1b: $2e $04
	pop af                                           ; $4d1d: $f1
	inc h                                            ; $4d1e: $24
	ld l, $fc                                        ; $4d1f: $2e $fc
	pop af                                           ; $4d21: $f1
	ld [hl+], a                                      ; $4d22: $22
	ld l, $f4                                        ; $4d23: $2e $f4
	pop af                                           ; $4d25: $f1
	jr nz, @+$31                                     ; $4d26: $20 $2f

	inc bc                                           ; $4d28: $03
	ldh a, [c]                                       ; $4d29: $f2
	inc l                                            ; $4d2a: $2c
	ld l, $fb                                        ; $4d2b: $2e $fb
	ldh a, [c]                                       ; $4d2d: $f2
	ld a, [hl+]                                      ; $4d2e: $2a
	ld l, $f3                                        ; $4d2f: $2e $f3
	ldh a, [c]                                       ; $4d31: $f2
	jr z, jr_00d_4d62                                ; $4d32: $28 $2e

	ei                                               ; $4d34: $fb
	ldh [c], a                                       ; $4d35: $e2
	ld h, $2f                                        ; $4d36: $26 $2f
	ei                                               ; $4d38: $fb
	ldh [c], a                                       ; $4d39: $e2
	ld e, $2e                                        ; $4d3a: $1e $2e
	di                                               ; $4d3c: $f3
	ldh [c], a                                       ; $4d3d: $e2
	inc e                                            ; $4d3e: $1c
	ld l, $fb                                        ; $4d3f: $2e $fb
	ldh a, [c]                                       ; $4d41: $f2
	jr nc, jr_00d_4d72                               ; $4d42: $30 $2e

	inc bc                                           ; $4d44: $03
	ldh a, [c]                                       ; $4d45: $f2
	ld [hl-], a                                      ; $4d46: $32
	ld l, $f3                                        ; $4d47: $2e $f3
	ldh a, [c]                                       ; $4d49: $f2
	ld l, $2f                                        ; $4d4a: $2e $2f
	ld [bc], a                                       ; $4d4c: $02
	ldh a, [c]                                       ; $4d4d: $f2
	ld a, [bc]                                       ; $4d4e: $0a
	inc l                                            ; $4d4f: $2c
	ld a, [$08f2]                                    ; $4d50: $fa $f2 $08
	inc l                                            ; $4d53: $2c
	ldh a, [c]                                       ; $4d54: $f2
	ldh a, [c]                                       ; $4d55: $f2
	ld b, $2c                                        ; $4d56: $06 $2c
	ld [bc], a                                       ; $4d58: $02
	ldh [c], a                                       ; $4d59: $e2

jr_00d_4d5a:
	inc b                                            ; $4d5a: $04
	inc l                                            ; $4d5b: $2c
	ld a, [$02e2]                                    ; $4d5c: $fa $e2 $02
	inc l                                            ; $4d5f: $2c
	ldh a, [c]                                       ; $4d60: $f2
	ldh [c], a                                       ; $4d61: $e2

jr_00d_4d62:
	nop                                              ; $4d62: $00

jr_00d_4d63:
	dec l                                            ; $4d63: $2d
	cp $f6                                           ; $4d64: $fe $f6
	ld d, $2e                                        ; $4d66: $16 $2e
	or $f6                                           ; $4d68: $f6 $f6
	inc d                                            ; $4d6a: $14
	cpl                                              ; $4d6b: $2f
	rst $38                                          ; $4d6c: $ff
	push af                                          ; $4d6d: $f5

jr_00d_4d6e:
	ld a, [de]                                       ; $4d6e: $1a
	ld l, $f7                                        ; $4d6f: $2e $f7
	push af                                          ; $4d71: $f5

jr_00d_4d72:
	jr jr_00d_4da3                                   ; $4d72: $18 $2f

	rst $38                                          ; $4d74: $ff
	db $f4                                           ; $4d75: $f4
	ld e, $2e                                        ; $4d76: $1e $2e
	rst FarCall                                          ; $4d78: $f7
	db $f4                                           ; $4d79: $f4
	inc e                                            ; $4d7a: $1c
	cpl                                              ; $4d7b: $2f
	db $fc                                           ; $4d7c: $fc
	di                                               ; $4d7d: $f3

jr_00d_4d7e:
	jr nz, @+$31                                     ; $4d7e: $20 $2f

	db $fc                                           ; $4d80: $fc
	ldh a, [c]                                       ; $4d81: $f2
	ld [hl+], a                                      ; $4d82: $22
	cpl                                              ; $4d83: $2f
	db $fc                                           ; $4d84: $fc
	ldh a, [c]                                       ; $4d85: $f2
	inc h                                            ; $4d86: $24
	cpl                                              ; $4d87: $2f
	ld [bc], a                                       ; $4d88: $02
	ldh a, [c]                                       ; $4d89: $f2
	ld a, [bc]                                       ; $4d8a: $0a
	inc l                                            ; $4d8b: $2c
	ld a, [$08f2]                                    ; $4d8c: $fa $f2 $08
	inc l                                            ; $4d8f: $2c
	ldh a, [c]                                       ; $4d90: $f2
	ldh a, [c]                                       ; $4d91: $f2
	ld b, $2c                                        ; $4d92: $06 $2c
	ld [bc], a                                       ; $4d94: $02
	ldh [c], a                                       ; $4d95: $e2
	inc b                                            ; $4d96: $04
	inc l                                            ; $4d97: $2c
	ld a, [$02e2]                                    ; $4d98: $fa $e2 $02
	inc l                                            ; $4d9b: $2c
	ldh a, [c]                                       ; $4d9c: $f2
	ldh [c], a                                       ; $4d9d: $e2
	nop                                              ; $4d9e: $00
	dec l                                            ; $4d9f: $2d
	jp hl                                            ; $4da0: $e9


	ldh a, [c]                                       ; $4da1: $f2

jr_00d_4da2:
	inc l                                            ; $4da2: $2c

jr_00d_4da3:
	xor [hl]                                         ; $4da3: $ae
	pop hl                                           ; $4da4: $e1
	ldh a, [c]                                       ; $4da5: $f2
	ld a, [hl+]                                      ; $4da6: $2a
	xor [hl]                                         ; $4da7: $ae
	reti                                             ; $4da8: $d9


	ldh a, [c]                                       ; $4da9: $f2
	jr z, jr_00d_4d5a                                ; $4daa: $28 $ae

	pop de                                           ; $4dac: $d1
	ldh a, [c]                                       ; $4dad: $f2
	ld h, $ae                                        ; $4dae: $26 $ae
	pop de                                           ; $4db0: $d1
	ldh [c], a                                       ; $4db1: $e2
	ld h, $2e                                        ; $4db2: $26 $2e
	reti                                             ; $4db4: $d9


	ldh [c], a                                       ; $4db5: $e2
	jr z, jr_00d_4de6                                ; $4db6: $28 $2e

	pop hl                                           ; $4db8: $e1
	ldh [c], a                                       ; $4db9: $e2
	ld a, [hl+]                                      ; $4dba: $2a
	ld l, $e9                                        ; $4dbb: $2e $e9
	ldh [c], a                                       ; $4dbd: $e2
	inc l                                            ; $4dbe: $2c
	ld l, $02                                        ; $4dbf: $2e $02
	ldh a, [c]                                       ; $4dc1: $f2
	ld a, [bc]                                       ; $4dc2: $0a
	inc l                                            ; $4dc3: $2c
	ld a, [$08f2]                                    ; $4dc4: $fa $f2 $08
	inc l                                            ; $4dc7: $2c
	ldh a, [c]                                       ; $4dc8: $f2
	ldh a, [c]                                       ; $4dc9: $f2
	ld b, $2c                                        ; $4dca: $06 $2c
	ld [bc], a                                       ; $4dcc: $02
	ldh [c], a                                       ; $4dcd: $e2
	inc b                                            ; $4dce: $04
	inc l                                            ; $4dcf: $2c
	ld a, [$02e2]                                    ; $4dd0: $fa $e2 $02
	inc l                                            ; $4dd3: $2c
	ldh a, [c]                                       ; $4dd4: $f2
	ldh [c], a                                       ; $4dd5: $e2
	nop                                              ; $4dd6: $00
	dec l                                            ; $4dd7: $2d
	ldh a, [c]                                       ; $4dd8: $f2
	ldh a, [c]                                       ; $4dd9: $f2
	db $10                                           ; $4dda: $10
	inc l                                            ; $4ddb: $2c
	ld a, [$12f2]                                    ; $4ddc: $fa $f2 $12
	inc l                                            ; $4ddf: $2c
	ld a, [$0ee2]                                    ; $4de0: $fa $e2 $0e
	inc l                                            ; $4de3: $2c
	ldh a, [c]                                       ; $4de4: $f2
	ldh [c], a                                       ; $4de5: $e2

jr_00d_4de6:
	inc c                                            ; $4de6: $0c
	inc l                                            ; $4de7: $2c
	jp hl                                            ; $4de8: $e9


	ldh a, [c]                                       ; $4de9: $f2
	inc l                                            ; $4dea: $2c
	xor [hl]                                         ; $4deb: $ae
	pop hl                                           ; $4dec: $e1
	ldh a, [c]                                       ; $4ded: $f2
	ld a, [hl+]                                      ; $4dee: $2a
	xor [hl]                                         ; $4def: $ae
	reti                                             ; $4df0: $d9


	ldh a, [c]                                       ; $4df1: $f2
	jr z, jr_00d_4da2                                ; $4df2: $28 $ae

	pop de                                           ; $4df4: $d1
	ldh a, [c]                                       ; $4df5: $f2
	ld h, $ae                                        ; $4df6: $26 $ae
	pop de                                           ; $4df8: $d1
	ldh [c], a                                       ; $4df9: $e2
	ld h, $2e                                        ; $4dfa: $26 $2e
	reti                                             ; $4dfc: $d9


	ldh [c], a                                       ; $4dfd: $e2
	jr z, jr_00d_4e2e                                ; $4dfe: $28 $2e

	pop hl                                           ; $4e00: $e1
	ldh [c], a                                       ; $4e01: $e2
	ld a, [hl+]                                      ; $4e02: $2a
	ld l, $e9                                        ; $4e03: $2e $e9
	ldh [c], a                                       ; $4e05: $e2
	inc l                                            ; $4e06: $2c
	ld l, $02                                        ; $4e07: $2e $02
	ldh a, [c]                                       ; $4e09: $f2
	ld a, [bc]                                       ; $4e0a: $0a
	inc l                                            ; $4e0b: $2c
	ld [bc], a                                       ; $4e0c: $02
	ldh [c], a                                       ; $4e0d: $e2
	inc b                                            ; $4e0e: $04
	dec l                                            ; $4e0f: $2d
	ldh a, [c]                                       ; $4e10: $f2
	ldh a, [c]                                       ; $4e11: $f2
	db $10                                           ; $4e12: $10
	inc l                                            ; $4e13: $2c
	ld a, [$12f2]                                    ; $4e14: $fa $f2 $12
	inc l                                            ; $4e17: $2c
	ld a, [$0ee2]                                    ; $4e18: $fa $e2 $0e
	inc l                                            ; $4e1b: $2c
	ldh a, [c]                                       ; $4e1c: $f2
	ldh [c], a                                       ; $4e1d: $e2
	inc c                                            ; $4e1e: $0c
	inc l                                            ; $4e1f: $2c
	ld [bc], a                                       ; $4e20: $02
	ldh a, [c]                                       ; $4e21: $f2
	ld a, [bc]                                       ; $4e22: $0a
	inc l                                            ; $4e23: $2c
	ld [bc], a                                       ; $4e24: $02
	ldh [c], a                                       ; $4e25: $e2
	inc b                                            ; $4e26: $04
	dec l                                            ; $4e27: $2d
	ldh a, [c]                                       ; $4e28: $f2
	ldh [c], a                                       ; $4e29: $e2
	ld l, $2c                                        ; $4e2a: $2e $2c
	ldh a, [c]                                       ; $4e2c: $f2
	ldh a, [c]                                       ; $4e2d: $f2

jr_00d_4e2e:
	db $10                                           ; $4e2e: $10
	inc l                                            ; $4e2f: $2c
	ld a, [$12f2]                                    ; $4e30: $fa $f2 $12
	inc l                                            ; $4e33: $2c
	ld a, [$0ee2]                                    ; $4e34: $fa $e2 $0e
	inc l                                            ; $4e37: $2c
	ld [bc], a                                       ; $4e38: $02
	ldh a, [c]                                       ; $4e39: $f2
	ld a, [bc]                                       ; $4e3a: $0a
	inc l                                            ; $4e3b: $2c
	ld [bc], a                                       ; $4e3c: $02
	ldh [c], a                                       ; $4e3d: $e2
	inc b                                            ; $4e3e: $04
	dec l                                            ; $4e3f: $2d
	ldh a, [c]                                       ; $4e40: $f2
	ldh [c], a                                       ; $4e41: $e2
	jr nc, jr_00d_4e70                               ; $4e42: $30 $2c

	ldh a, [c]                                       ; $4e44: $f2
	ldh a, [c]                                       ; $4e45: $f2
	db $10                                           ; $4e46: $10
	inc l                                            ; $4e47: $2c
	ld a, [$12f2]                                    ; $4e48: $fa $f2 $12
	inc l                                            ; $4e4b: $2c
	ld a, [$0ee2]                                    ; $4e4c: $fa $e2 $0e
	inc l                                            ; $4e4f: $2c
	ld [bc], a                                       ; $4e50: $02
	ldh a, [c]                                       ; $4e51: $f2
	ld a, [bc]                                       ; $4e52: $0a
	inc l                                            ; $4e53: $2c
	ld [bc], a                                       ; $4e54: $02
	ldh [c], a                                       ; $4e55: $e2
	inc b                                            ; $4e56: $04
	dec l                                            ; $4e57: $2d
	ldh a, [c]                                       ; $4e58: $f2
	ldh [c], a                                       ; $4e59: $e2
	ld [hl-], a                                      ; $4e5a: $32
	inc l                                            ; $4e5b: $2c
	ldh a, [c]                                       ; $4e5c: $f2
	ldh a, [c]                                       ; $4e5d: $f2
	db $10                                           ; $4e5e: $10
	inc l                                            ; $4e5f: $2c
	ld a, [$12f2]                                    ; $4e60: $fa $f2 $12
	inc l                                            ; $4e63: $2c
	ld a, [$0ee2]                                    ; $4e64: $fa $e2 $0e
	inc l                                            ; $4e67: $2c
	ld [bc], a                                       ; $4e68: $02
	ldh a, [c]                                       ; $4e69: $f2
	ld a, [bc]                                       ; $4e6a: $0a
	inc l                                            ; $4e6b: $2c
	ld [bc], a                                       ; $4e6c: $02
	ldh [c], a                                       ; $4e6d: $e2
	inc b                                            ; $4e6e: $04
	dec l                                            ; $4e6f: $2d

jr_00d_4e70:
	ldh a, [c]                                       ; $4e70: $f2
	ldh [c], a                                       ; $4e71: $e2
	inc [hl]                                         ; $4e72: $34
	inc l                                            ; $4e73: $2c
	ldh a, [c]                                       ; $4e74: $f2
	ldh a, [c]                                       ; $4e75: $f2
	db $10                                           ; $4e76: $10
	inc l                                            ; $4e77: $2c
	ld a, [$12f2]                                    ; $4e78: $fa $f2 $12
	inc l                                            ; $4e7b: $2c
	ld a, [$0ee2]                                    ; $4e7c: $fa $e2 $0e
	inc l                                            ; $4e7f: $2c
	ld [bc], a                                       ; $4e80: $02
	ldh a, [c]                                       ; $4e81: $f2
	ld a, [bc]                                       ; $4e82: $0a
	inc l                                            ; $4e83: $2c
	ld [bc], a                                       ; $4e84: $02
	ldh [c], a                                       ; $4e85: $e2
	inc b                                            ; $4e86: $04
	dec l                                            ; $4e87: $2d
	ld hl, sp-$08                                    ; $4e88: $f8 $f8
	ld [hl], $2f                                     ; $4e8a: $36 $2f
	nop                                              ; $4e8c: $00
	ld hl, sp+$3a                                    ; $4e8d: $f8 $3a
	ld l, $f8                                        ; $4e8f: $2e $f8
	ld hl, sp+$38                                    ; $4e91: $f8 $38
	cpl                                              ; $4e93: $2f
	ld [$30f8], sp                                   ; $4e94: $08 $f8 $30
	ld l, [hl]                                       ; $4e97: $6e
	nop                                              ; $4e98: $00
	ld hl, sp+$32                                    ; $4e99: $f8 $32
	ld l, [hl]                                       ; $4e9b: $6e
	ld hl, sp-$08                                    ; $4e9c: $f8 $f8
	ld [hl-], a                                      ; $4e9e: $32
	ld l, $f0                                        ; $4e9f: $2e $f0
	ld hl, sp+$30                                    ; $4ea1: $f8 $30
	cpl                                              ; $4ea3: $2f
	ld [bc], a                                       ; $4ea4: $02
	rst FarCall                                          ; $4ea5: $f7
	ld [bc], a                                       ; $4ea6: $02
	inc l                                            ; $4ea7: $2c
	ld a, [$00f7]                                    ; $4ea8: $fa $f7 $00
	dec l                                            ; $4eab: $2d
	rst $38                                          ; $4eac: $ff
	rst FarCall                                          ; $4ead: $f7
	ld b, $2c                                        ; $4eae: $06 $2c
	rst FarCall                                          ; $4eb0: $f7
	rst FarCall                                          ; $4eb1: $f7
	inc b                                            ; $4eb2: $04
	dec l                                            ; $4eb3: $2d
	ld bc, $1200                                     ; $4eb4: $01 $00 $12
	inc l                                            ; $4eb7: $2c
	ld sp, hl                                        ; $4eb8: $f9
	nop                                              ; $4eb9: $00
	db $10                                           ; $4eba: $10
	inc l                                            ; $4ebb: $2c
	pop af                                           ; $4ebc: $f1
	nop                                              ; $4ebd: $00
	ld c, $2c                                        ; $4ebe: $0e $2c
	ld bc, $0cf0                                     ; $4ec0: $01 $f0 $0c
	inc l                                            ; $4ec3: $2c
	ld sp, hl                                        ; $4ec4: $f9
	ldh a, [$0a]                                     ; $4ec5: $f0 $0a
	inc l                                            ; $4ec7: $2c
	pop af                                           ; $4ec8: $f1
	ldh a, [$08]                                     ; $4ec9: $f0 $08
	dec l                                            ; $4ecb: $2d
	ld [$2200], sp                                   ; $4ecc: $08 $00 $22
	inc l                                            ; $4ecf: $2c
	nop                                              ; $4ed0: $00
	nop                                              ; $4ed1: $00
	jr nz, jr_00d_4f00                               ; $4ed2: $20 $2c

	ld hl, sp+$00                                    ; $4ed4: $f8 $00
	ld e, $2c                                        ; $4ed6: $1e $2c
	ldh a, [rP1]                                     ; $4ed8: $f0 $00
	inc e                                            ; $4eda: $1c
	inc l                                            ; $4edb: $2c
	ld [$1af0], sp                                   ; $4edc: $08 $f0 $1a
	inc l                                            ; $4edf: $2c
	nop                                              ; $4ee0: $00
	ldh a, [rAUD2LOW]                                ; $4ee1: $f0 $18
	inc l                                            ; $4ee3: $2c
	ld hl, sp-$10                                    ; $4ee4: $f8 $f0
	ld d, $2c                                        ; $4ee6: $16 $2c
	ldh a, [$f0]                                     ; $4ee8: $f0 $f0
	inc d                                            ; $4eea: $14
	dec l                                            ; $4eeb: $2d
	ei                                               ; $4eec: $fb
	ld hl, sp+$24                                    ; $4eed: $f8 $24
	dec l                                            ; $4eef: $2d
	db $fc                                           ; $4ef0: $fc
	ld hl, sp+$26                                    ; $4ef1: $f8 $26
	dec l                                            ; $4ef3: $2d
	nop                                              ; $4ef4: $00
	ld hl, sp+$2a                                    ; $4ef5: $f8 $2a
	inc l                                            ; $4ef7: $2c
	ld hl, sp-$08                                    ; $4ef8: $f8 $f8
	jr z, jr_00d_4f29                                ; $4efa: $28 $2d

	nop                                              ; $4efc: $00
	ld hl, sp+$2e                                    ; $4efd: $f8 $2e
	inc l                                            ; $4eff: $2c

jr_00d_4f00:
	ld hl, sp-$08                                    ; $4f00: $f8 $f8
	inc l                                            ; $4f02: $2c
	dec l                                            ; $4f03: $2d
	ld [$3418], sp                                   ; $4f04: $08 $18 $34
	ld l, [hl]                                       ; $4f07: $6e
	ld [$3408], sp                                   ; $4f08: $08 $08 $34
	ld l, [hl]                                       ; $4f0b: $6e
	ld [$34f8], sp                                   ; $4f0c: $08 $f8 $34
	ld l, [hl]                                       ; $4f0f: $6e
	ld [$34e8], sp                                   ; $4f10: $08 $e8 $34
	ld l, [hl]                                       ; $4f13: $6e
	ld [$34d8], sp                                   ; $4f14: $08 $d8 $34
	ld l, [hl]                                       ; $4f17: $6e
	nop                                              ; $4f18: $00
	jr jr_00d_4f51                                   ; $4f19: $18 $36

	ld l, [hl]                                       ; $4f1b: $6e
	nop                                              ; $4f1c: $00
	ld [$6e36], sp                                   ; $4f1d: $08 $36 $6e
	nop                                              ; $4f20: $00
	ld hl, sp+$36                                    ; $4f21: $f8 $36
	ld l, [hl]                                       ; $4f23: $6e
	nop                                              ; $4f24: $00
	add sp, $36                                      ; $4f25: $e8 $36
	ld l, [hl]                                       ; $4f27: $6e
	nop                                              ; $4f28: $00

jr_00d_4f29:
	ret c                                            ; $4f29: $d8

	ld [hl], $6e                                     ; $4f2a: $36 $6e
	ld hl, sp+$18                                    ; $4f2c: $f8 $18
	ld [hl], $2e                                     ; $4f2e: $36 $2e
	ld hl, sp+$08                                    ; $4f30: $f8 $08
	ld [hl], $2e                                     ; $4f32: $36 $2e
	ld hl, sp-$08                                    ; $4f34: $f8 $f8
	ld [hl], $2e                                     ; $4f36: $36 $2e
	ld hl, sp-$18                                    ; $4f38: $f8 $e8
	ld [hl], $2e                                     ; $4f3a: $36 $2e
	ld hl, sp-$28                                    ; $4f3c: $f8 $d8
	ld [hl], $2e                                     ; $4f3e: $36 $2e
	ldh a, [rAUD2LOW]                                ; $4f40: $f0 $18
	inc [hl]                                         ; $4f42: $34
	ld l, $f0                                        ; $4f43: $2e $f0
	ld [$2e34], sp                                   ; $4f45: $08 $34 $2e
	ldh a, [$f8]                                     ; $4f48: $f0 $f8
	inc [hl]                                         ; $4f4a: $34
	ld l, $f0                                        ; $4f4b: $2e $f0
	add sp, $34                                      ; $4f4d: $e8 $34
	ld l, $f0                                        ; $4f4f: $2e $f0

jr_00d_4f51:
	ret c                                            ; $4f51: $d8

	inc [hl]                                         ; $4f52: $34
	cpl                                              ; $4f53: $2f
	nop                                              ; $4f54: $00
	ld hl, sp+$38                                    ; $4f55: $f8 $38
	ld l, [hl]                                       ; $4f57: $6e
	ld hl, sp-$08                                    ; $4f58: $f8 $f8
	jr c, jr_00d_4f8b                                ; $4f5a: $38 $2f

	nop                                              ; $4f5c: $00
	ld hl, sp+$3a                                    ; $4f5d: $f8 $3a
	ld l, [hl]                                       ; $4f5f: $6e
	ld hl, sp-$08                                    ; $4f60: $f8 $f8
	ld a, [hl-]                                      ; $4f62: $3a
	cpl                                              ; $4f63: $2f
	nop                                              ; $4f64: $00
	rst FarCall                                          ; $4f65: $f7
	inc a                                            ; $4f66: $3c
	ld l, [hl]                                       ; $4f67: $6e
	ld hl, sp-$09                                    ; $4f68: $f8 $f7
	inc a                                            ; $4f6a: $3c
	cpl                                              ; $4f6b: $2f
	db $fc                                           ; $4f6c: $fc
	rst FarCall                                          ; $4f6d: $f7
	ld [$fc2d], sp                                   ; $4f6e: $08 $2d $fc
	rst FarCall                                          ; $4f71: $f7
	ld [$006d], sp                                   ; $4f72: $08 $6d $00
	ld hl, sp+$0c                                    ; $4f75: $f8 $0c
	inc l                                            ; $4f77: $2c
	ld hl, sp-$08                                    ; $4f78: $f8 $f8
	ld a, [bc]                                       ; $4f7a: $0a
	dec l                                            ; $4f7b: $2d
	ld hl, sp-$08                                    ; $4f7c: $f8 $f8
	inc c                                            ; $4f7e: $0c
	ld l, h                                          ; $4f7f: $6c
	nop                                              ; $4f80: $00
	ld hl, sp+$0a                                    ; $4f81: $f8 $0a
	ld l, l                                          ; $4f83: $6d
	db $fc                                           ; $4f84: $fc
	inc b                                            ; $4f85: $04
	ld [bc], a                                       ; $4f86: $02
	inc l                                            ; $4f87: $2c
	db $fc                                           ; $4f88: $fc
	db $f4                                           ; $4f89: $f4
	nop                                              ; $4f8a: $00

jr_00d_4f8b:
	dec l                                            ; $4f8b: $2d
	db $fc                                           ; $4f8c: $fc
	inc b                                            ; $4f8d: $04
	ld b, $2c                                        ; $4f8e: $06 $2c
	db $fc                                           ; $4f90: $fc
	db $f4                                           ; $4f91: $f4
	inc b                                            ; $4f92: $04
	dec l                                            ; $4f93: $2d
	inc b                                            ; $4f94: $04
	ldh a, [c]                                       ; $4f95: $f2
	ld a, [bc]                                       ; $4f96: $0a
	ld h, $fc                                        ; $4f97: $26 $fc
	ldh a, [c]                                       ; $4f99: $f2
	ld [$f426], sp                                   ; $4f9a: $08 $26 $f4
	ldh a, [c]                                       ; $4f9d: $f2
	ld b, $26                                        ; $4f9e: $06 $26
	inc b                                            ; $4fa0: $04
	ldh [c], a                                       ; $4fa1: $e2
	inc b                                            ; $4fa2: $04
	inc h                                            ; $4fa3: $24
	db $fc                                           ; $4fa4: $fc
	ldh [c], a                                       ; $4fa5: $e2
	ld [bc], a                                       ; $4fa6: $02
	inc h                                            ; $4fa7: $24
	db $f4                                           ; $4fa8: $f4
	ldh [c], a                                       ; $4fa9: $e2
	nop                                              ; $4faa: $00
	dec h                                            ; $4fab: $25
	inc b                                            ; $4fac: $04
	ldh a, [c]                                       ; $4fad: $f2
	ld a, [bc]                                       ; $4fae: $0a
	ld h, $fc                                        ; $4faf: $26 $fc
	ldh a, [c]                                       ; $4fb1: $f2
	ld [$f426], sp                                   ; $4fb2: $08 $26 $f4
	ldh a, [c]                                       ; $4fb5: $f2
	ld b, $26                                        ; $4fb6: $06 $26
	inc b                                            ; $4fb8: $04
	ldh [c], a                                       ; $4fb9: $e2
	inc b                                            ; $4fba: $04
	inc h                                            ; $4fbb: $24
	db $fc                                           ; $4fbc: $fc
	ldh [c], a                                       ; $4fbd: $e2
	ld [bc], a                                       ; $4fbe: $02
	inc h                                            ; $4fbf: $24
	db $f4                                           ; $4fc0: $f4
	ldh [c], a                                       ; $4fc1: $e2
	nop                                              ; $4fc2: $00
	dec h                                            ; $4fc3: $25
	db $fc                                           ; $4fc4: $fc
	di                                               ; $4fc5: $f3
	inc c                                            ; $4fc6: $0c
	ld h, $04                                        ; $4fc7: $26 $04
	di                                               ; $4fc9: $f3
	ld a, [bc]                                       ; $4fca: $0a
	ld h, $f4                                        ; $4fcb: $26 $f4
	di                                               ; $4fcd: $f3
	ld b, $26                                        ; $4fce: $06 $26
	inc b                                            ; $4fd0: $04
	db $e3                                           ; $4fd1: $e3
	inc b                                            ; $4fd2: $04
	inc h                                            ; $4fd3: $24
	db $fc                                           ; $4fd4: $fc
	db $e3                                           ; $4fd5: $e3
	ld [bc], a                                       ; $4fd6: $02
	inc h                                            ; $4fd7: $24
	db $f4                                           ; $4fd8: $f4
	db $e3                                           ; $4fd9: $e3
	nop                                              ; $4fda: $00
	dec h                                            ; $4fdb: $25
	inc b                                            ; $4fdc: $04
	ldh a, [c]                                       ; $4fdd: $f2
	ld a, [bc]                                       ; $4fde: $0a
	ld h, $fc                                        ; $4fdf: $26 $fc
	ldh a, [c]                                       ; $4fe1: $f2
	ld [$f426], sp                                   ; $4fe2: $08 $26 $f4
	ldh a, [c]                                       ; $4fe5: $f2
	ld b, $26                                        ; $4fe6: $06 $26
	inc bc                                           ; $4fe8: $03
	ldh [c], a                                       ; $4fe9: $e2
	inc b                                            ; $4fea: $04
	inc h                                            ; $4feb: $24
	ei                                               ; $4fec: $fb
	ldh [c], a                                       ; $4fed: $e2
	ld [bc], a                                       ; $4fee: $02
	inc h                                            ; $4fef: $24
	di                                               ; $4ff0: $f3
	ldh [c], a                                       ; $4ff1: $e2
	nop                                              ; $4ff2: $00
	dec h                                            ; $4ff3: $25
	db $f4                                           ; $4ff4: $f4
	ldh a, [c]                                       ; $4ff5: $f2
	ld c, $26                                        ; $4ff6: $0e $26
	di                                               ; $4ff8: $f3
	ldh [c], a                                       ; $4ff9: $e2
	inc c                                            ; $4ffa: $0c
	inc h                                            ; $4ffb: $24
	inc b                                            ; $4ffc: $04
	ldh a, [c]                                       ; $4ffd: $f2
	ld a, [bc]                                       ; $4ffe: $0a
	ld h, $fc                                        ; $4fff: $26 $fc
	ldh a, [c]                                       ; $5001: $f2
	ld [$0326], sp                                   ; $5002: $08 $26 $03
	ldh [c], a                                       ; $5005: $e2
	inc b                                            ; $5006: $04
	inc h                                            ; $5007: $24
	ei                                               ; $5008: $fb
	ldh [c], a                                       ; $5009: $e2
	ld [bc], a                                       ; $500a: $02
	dec h                                            ; $500b: $25
	inc b                                            ; $500c: $04
	ldh a, [c]                                       ; $500d: $f2
	inc c                                            ; $500e: $0c
	ld h, $fc                                        ; $500f: $26 $fc
	ldh a, [c]                                       ; $5011: $f2
	ld a, [bc]                                       ; $5012: $0a
	ld h, $f4                                        ; $5013: $26 $f4
	ldh a, [c]                                       ; $5015: $f2
	ld [$0726], sp                                   ; $5016: $08 $26 $07
	ldh [c], a                                       ; $5019: $e2
	inc b                                            ; $501a: $04
	inc h                                            ; $501b: $24
	rst $38                                          ; $501c: $ff
	ldh [c], a                                       ; $501d: $e2
	ld [bc], a                                       ; $501e: $02
	inc h                                            ; $501f: $24
	rst FarCall                                          ; $5020: $f7
	ldh [c], a                                       ; $5021: $e2
	nop                                              ; $5022: $00
	dec h                                            ; $5023: $25
	inc b                                            ; $5024: $04
	ldh a, [c]                                       ; $5025: $f2
	ld c, $26                                        ; $5026: $0e $26
	db $fc                                           ; $5028: $fc
	ldh a, [c]                                       ; $5029: $f2
	ld a, [bc]                                       ; $502a: $0a
	ld h, $f4                                        ; $502b: $26 $f4
	ldh a, [c]                                       ; $502d: $f2
	ld [$0726], sp                                   ; $502e: $08 $26 $07
	ldh [c], a                                       ; $5031: $e2
	ld b, $24                                        ; $5032: $06 $24
	rst $38                                          ; $5034: $ff
	ldh [c], a                                       ; $5035: $e2
	ld [bc], a                                       ; $5036: $02
	inc h                                            ; $5037: $24
	rst FarCall                                          ; $5038: $f7
	ldh [c], a                                       ; $5039: $e2
	nop                                              ; $503a: $00
	dec h                                            ; $503b: $25
	db $fc                                           ; $503c: $fc
	ldh [c], a                                       ; $503d: $e2
	ld [bc], a                                       ; $503e: $02
	inc h                                            ; $503f: $24
	db $f4                                           ; $5040: $f4
	ldh a, [c]                                       ; $5041: $f2
	ld [$fc26], sp                                   ; $5042: $08 $26 $fc
	ldh a, [c]                                       ; $5045: $f2
	ld a, [bc]                                       ; $5046: $0a
	ld h, $04                                        ; $5047: $26 $04
	ldh a, [c]                                       ; $5049: $f2
	inc c                                            ; $504a: $0c
	ld h, $04                                        ; $504b: $26 $04
	ldh [c], a                                       ; $504d: $e2
	inc b                                            ; $504e: $04
	inc h                                            ; $504f: $24
	db $f4                                           ; $5050: $f4
	ldh [c], a                                       ; $5051: $e2
	nop                                              ; $5052: $00
	dec h                                            ; $5053: $25
	db $f4                                           ; $5054: $f4
	ldh a, [c]                                       ; $5055: $f2
	ld [$fc26], sp                                   ; $5056: $08 $26 $fc
	ldh a, [c]                                       ; $5059: $f2
	ld a, [bc]                                       ; $505a: $0a
	ld h, $04                                        ; $505b: $26 $04
	ldh a, [c]                                       ; $505d: $f2
	inc c                                            ; $505e: $0c
	ld h, $04                                        ; $505f: $26 $04
	ldh [c], a                                       ; $5061: $e2
	inc b                                            ; $5062: $04
	inc h                                            ; $5063: $24
	db $fc                                           ; $5064: $fc
	ldh [c], a                                       ; $5065: $e2
	ld b, $24                                        ; $5066: $06 $24
	db $f4                                           ; $5068: $f4
	ldh [c], a                                       ; $5069: $e2
	nop                                              ; $506a: $00
	dec h                                            ; $506b: $25
	ld [$04f5], sp                                   ; $506c: $08 $f5 $04
	inc l                                            ; $506f: $2c
	nop                                              ; $5070: $00
	push af                                          ; $5071: $f5
	ld [bc], a                                       ; $5072: $02
	inc l                                            ; $5073: $2c
	ld hl, sp-$0b                                    ; $5074: $f8 $f5
	nop                                              ; $5076: $00
	dec l                                            ; $5077: $2d
	nop                                              ; $5078: $00
	push af                                          ; $5079: $f5
	ld b, $2c                                        ; $507a: $06 $2c
	ld hl, sp-$0b                                    ; $507c: $f8 $f5
	nop                                              ; $507e: $00
	dec l                                            ; $507f: $2d
	nop                                              ; $5080: $00
	push af                                          ; $5081: $f5
	ld [$f82c], sp                                   ; $5082: $08 $2c $f8
	push af                                          ; $5085: $f5

jr_00d_5086:
	nop                                              ; $5086: $00
	dec l                                            ; $5087: $2d
	nop                                              ; $5088: $00
	push af                                          ; $5089: $f5
	ld a, [bc]                                       ; $508a: $0a
	inc l                                            ; $508b: $2c
	ld hl, sp-$0b                                    ; $508c: $f8 $f5
	nop                                              ; $508e: $00
	dec l                                            ; $508f: $2d
	nop                                              ; $5090: $00
	push af                                          ; $5091: $f5
	inc c                                            ; $5092: $0c
	inc l                                            ; $5093: $2c
	ld hl, sp-$0b                                    ; $5094: $f8 $f5
	nop                                              ; $5096: $00
	dec l                                            ; $5097: $2d
	ld [$10f5], sp                                   ; $5098: $08 $f5 $10
	inc l                                            ; $509b: $2c
	nop                                              ; $509c: $00
	push af                                          ; $509d: $f5
	ld c, $2c                                        ; $509e: $0e $2c
	ld hl, sp-$0b                                    ; $50a0: $f8 $f5
	nop                                              ; $50a2: $00
	dec l                                            ; $50a3: $2d
	ldh a, [$f5]                                     ; $50a4: $f0 $f5
	ld [de], a                                       ; $50a6: $12
	ld l, $08                                        ; $50a7: $2e $08
	push af                                          ; $50a9: $f5
	db $10                                           ; $50aa: $10
	inc l                                            ; $50ab: $2c
	nop                                              ; $50ac: $00
	push af                                          ; $50ad: $f5
	ld c, $2c                                        ; $50ae: $0e $2c
	ld hl, sp-$0b                                    ; $50b0: $f8 $f5
	nop                                              ; $50b2: $00
	dec l                                            ; $50b3: $2d
	add sp, -$09                                     ; $50b4: $e8 $f7
	inc d                                            ; $50b6: $14
	ld l, $f0                                        ; $50b7: $2e $f0
	rst FarCall                                          ; $50b9: $f7
	ld d, $2e                                        ; $50ba: $16 $2e
	ld [$10f5], sp                                   ; $50bc: $08 $f5 $10
	inc l                                            ; $50bf: $2c
	nop                                              ; $50c0: $00
	push af                                          ; $50c1: $f5
	ld c, $2c                                        ; $50c2: $0e $2c
	ld hl, sp-$0b                                    ; $50c4: $f8 $f5
	nop                                              ; $50c6: $00
	dec l                                            ; $50c7: $2d
	ld [$10f5], sp                                   ; $50c8: $08 $f5 $10
	inc l                                            ; $50cb: $2c
	nop                                              ; $50cc: $00
	push af                                          ; $50cd: $f5
	ld c, $2c                                        ; $50ce: $0e $2c
	ld hl, sp-$0b                                    ; $50d0: $f8 $f5
	nop                                              ; $50d2: $00
	dec l                                            ; $50d3: $2d
	db $fc                                           ; $50d4: $fc
	nop                                              ; $50d5: $00
	jr jr_00d_5086                                   ; $50d6: $18 $ae

	db $fc                                           ; $50d8: $fc
	db $eb                                           ; $50d9: $eb
	jr jr_00d_510b                                   ; $50da: $18 $2f

	db $fd                                           ; $50dc: $fd
	db $fd                                           ; $50dd: $fd
	ld a, [de]                                       ; $50de: $1a
	xor [hl]                                         ; $50df: $ae
	db $fd                                           ; $50e0: $fd
	ld [$2f1a], a                                    ; $50e1: $ea $1a $2f
	db $fd                                           ; $50e4: $fd
	cp $1c                                           ; $50e5: $fe $1c
	xor [hl]                                         ; $50e7: $ae
	db $fd                                           ; $50e8: $fd
	jp hl                                            ; $50e9: $e9


	inc e                                            ; $50ea: $1c
	cpl                                              ; $50eb: $2f
	db $fd                                           ; $50ec: $fd
	cp $1e                                           ; $50ed: $fe $1e
	xor [hl]                                         ; $50ef: $ae
	db $fd                                           ; $50f0: $fd
	jp hl                                            ; $50f1: $e9


	ld e, $2f                                        ; $50f2: $1e $2f
	ld sp, hl                                        ; $50f4: $f9
	ld [bc], a                                       ; $50f5: $02
	inc b                                            ; $50f6: $04
	ld l, $01                                        ; $50f7: $2e $01
	ldh a, [c]                                       ; $50f9: $f2
	ld [bc], a                                       ; $50fa: $02
	ld l, $f9                                        ; $50fb: $2e $f9
	ldh a, [c]                                       ; $50fd: $f2
	nop                                              ; $50fe: $00
	cpl                                              ; $50ff: $2f
	nop                                              ; $5100: $00
	or $08                                           ; $5101: $f6 $08
	ld l, $f8                                        ; $5103: $2e $f8
	or $06                                           ; $5105: $f6 $06
	cpl                                              ; $5107: $2f
	nop                                              ; $5108: $00
	or $08                                           ; $5109: $f6 $08

jr_00d_510b:
	ld l, $f8                                        ; $510b: $2e $f8
	or $06                                           ; $510d: $f6 $06
	cpl                                              ; $510f: $2f
	inc b                                            ; $5110: $04
	rst FarCall                                          ; $5111: $f7
	db $10                                           ; $5112: $10
	ld l, $fc                                        ; $5113: $2e $fc
	rst FarCall                                          ; $5115: $f7
	ld c, $2e                                        ; $5116: $0e $2e
	db $fd                                           ; $5118: $fd
	di                                               ; $5119: $f3
	inc c                                            ; $511a: $0c
	ld l, $f5                                        ; $511b: $2e $f5
	di                                               ; $511d: $f3
	ld a, [bc]                                       ; $511e: $0a
	cpl                                              ; $511f: $2f
	dec b                                            ; $5120: $05
	ld hl, sp+$10                                    ; $5121: $f8 $10
	ld l, $fd                                        ; $5123: $2e $fd
	ld hl, sp+$0e                                    ; $5125: $f8 $0e
	ld l, $fc                                        ; $5127: $2e $fc
	ldh a, [c]                                       ; $5129: $f2
	inc c                                            ; $512a: $0c
	ld l, $f4                                        ; $512b: $2e $f4
	ldh a, [c]                                       ; $512d: $f2
	ld a, [bc]                                       ; $512e: $0a
	cpl                                              ; $512f: $2f
	ld b, $fb                                        ; $5130: $06 $fb
	db $10                                           ; $5132: $10
	ld l, $fe                                        ; $5133: $2e $fe
	ei                                               ; $5135: $fb
	ld c, $2e                                        ; $5136: $0e $2e
	ld sp, hl                                        ; $5138: $f9
	pop af                                           ; $5139: $f1
	inc c                                            ; $513a: $0c
	ld l, $f1                                        ; $513b: $2e $f1
	pop af                                           ; $513d: $f1
	ld a, [bc]                                       ; $513e: $0a
	cpl                                              ; $513f: $2f
	ld b, $fc                                        ; $5140: $06 $fc
	db $10                                           ; $5142: $10
	ld l, $fe                                        ; $5143: $2e $fe
	db $fc                                           ; $5145: $fc
	ld c, $2e                                        ; $5146: $0e $2e
	rst FarCall                                          ; $5148: $f7
	pop af                                           ; $5149: $f1
	inc c                                            ; $514a: $0c
	ld l, $ef                                        ; $514b: $2e $ef
	pop af                                           ; $514d: $f1
	ld a, [bc]                                       ; $514e: $0a
	cpl                                              ; $514f: $2f
	dec b                                            ; $5150: $05
	cp $10                                           ; $5151: $fe $10
	ld l, $fd                                        ; $5153: $2e $fd
	cp $0e                                           ; $5155: $fe $0e
	ld l, $f4                                        ; $5157: $2e $f4
	pop af                                           ; $5159: $f1
	inc c                                            ; $515a: $0c
	ld l, $ec                                        ; $515b: $2e $ec
	pop af                                           ; $515d: $f1
	ld a, [bc]                                       ; $515e: $0a
	cpl                                              ; $515f: $2f
	dec b                                            ; $5160: $05
	rst $38                                          ; $5161: $ff
	db $10                                           ; $5162: $10
	ld l, $fd                                        ; $5163: $2e $fd
	rst $38                                          ; $5165: $ff
	ld c, $2e                                        ; $5166: $0e $2e
	di                                               ; $5168: $f3
	pop af                                           ; $5169: $f1
	inc c                                            ; $516a: $0c
	ld l, $eb                                        ; $516b: $2e $eb
	pop af                                           ; $516d: $f1
	ld a, [bc]                                       ; $516e: $0a
	cpl                                              ; $516f: $2f
	inc b                                            ; $5170: $04
	ld bc, $2e10                                     ; $5171: $01 $10 $2e
	db $fc                                           ; $5174: $fc
	ld bc, $2e0e                                     ; $5175: $01 $0e $2e
	ldh a, [$f2]                                     ; $5178: $f0 $f2
	inc c                                            ; $517a: $0c
	ld l, $e8                                        ; $517b: $2e $e8
	ldh a, [c]                                       ; $517d: $f2
	ld a, [bc]                                       ; $517e: $0a
	cpl                                              ; $517f: $2f
	inc bc                                           ; $5180: $03
	inc bc                                           ; $5181: $03
	db $10                                           ; $5182: $10
	ld l, $fb                                        ; $5183: $2e $fb
	inc bc                                           ; $5185: $03
	ld c, $2e                                        ; $5186: $0e $2e
	xor $f2                                          ; $5188: $ee $f2
	inc c                                            ; $518a: $0c
	ld l, $e6                                        ; $518b: $2e $e6
	ldh a, [c]                                       ; $518d: $f2
	ld a, [bc]                                       ; $518e: $0a
	cpl                                              ; $518f: $2f
	ld [bc], a                                       ; $5190: $02
	dec b                                            ; $5191: $05
	db $10                                           ; $5192: $10
	ld l, $fa                                        ; $5193: $2e $fa
	dec b                                            ; $5195: $05
	ld c, $2e                                        ; $5196: $0e $2e
	db $eb                                           ; $5198: $eb
	ldh a, [c]                                       ; $5199: $f2
	inc c                                            ; $519a: $0c
	ld l, $e3                                        ; $519b: $2e $e3
	ldh a, [c]                                       ; $519d: $f2
	ld a, [bc]                                       ; $519e: $0a
	cpl                                              ; $519f: $2f
	ld bc, $1006                                     ; $51a0: $01 $06 $10
	ld l, $f9                                        ; $51a3: $2e $f9
	ld b, $0e                                        ; $51a5: $06 $0e
	ld l, $e9                                        ; $51a7: $2e $e9
	di                                               ; $51a9: $f3
	inc c                                            ; $51aa: $0c
	ld l, $e1                                        ; $51ab: $2e $e1
	di                                               ; $51ad: $f3
	ld a, [bc]                                       ; $51ae: $0a
	cpl                                              ; $51af: $2f
	nop                                              ; $51b0: $00
	add hl, bc                                       ; $51b1: $09
	db $10                                           ; $51b2: $10
	ld l, $f8                                        ; $51b3: $2e $f8
	add hl, bc                                       ; $51b5: $09
	ld c, $2e                                        ; $51b6: $0e $2e
	push hl                                          ; $51b8: $e5
	db $f4                                           ; $51b9: $f4
	inc c                                            ; $51ba: $0c
	ld l, $dd                                        ; $51bb: $2e $dd
	db $f4                                           ; $51bd: $f4
	ld a, [bc]                                       ; $51be: $0a
	cpl                                              ; $51bf: $2f
	db $fd                                           ; $51c0: $fd
	dec c                                            ; $51c1: $0d
	db $10                                           ; $51c2: $10
	ld l, $f5                                        ; $51c3: $2e $f5
	dec c                                            ; $51c5: $0d
	ld c, $2e                                        ; $51c6: $0e $2e
	ldh [c], a                                       ; $51c8: $e2
	or $0c                                           ; $51c9: $f6 $0c
	ld l, $da                                        ; $51cb: $2e $da
	or $0a                                           ; $51cd: $f6 $0a
	cpl                                              ; $51cf: $2f
	ld a, [$1010]                                    ; $51d0: $fa $10 $10
	ld l, $f2                                        ; $51d3: $2e $f2
	db $10                                           ; $51d5: $10
	ld c, $2e                                        ; $51d6: $0e $2e
	sbc $f8                                          ; $51d8: $de $f8
	inc c                                            ; $51da: $0c
	ld l, $d6                                        ; $51db: $2e $d6
	ld hl, sp+$0a                                    ; $51dd: $f8 $0a
	cpl                                              ; $51df: $2f
	rst $38                                          ; $51e0: $ff
	add hl, bc                                       ; $51e1: $09
	inc a                                            ; $51e2: $3c
	inc l                                            ; $51e3: $2c
	rst FarCall                                          ; $51e4: $f7
	add hl, bc                                       ; $51e5: $09
	inc a                                            ; $51e6: $3c
	inc l                                            ; $51e7: $2c
	and $f2                                          ; $51e8: $e6 $f2
	inc a                                            ; $51ea: $3c
	inc l                                            ; $51eb: $2c
	sbc $f2                                          ; $51ec: $de $f2
	inc a                                            ; $51ee: $3c
	dec l                                            ; $51ef: $2d
	ld a, [$1014]                                    ; $51f0: $fa $14 $10
	ld l, $f2                                        ; $51f3: $2e $f2
	inc d                                            ; $51f5: $14
	ld c, $2e                                        ; $51f6: $0e $2e
	jp c, $0cfa                                      ; $51f8: $da $fa $0c

	ld l, $d2                                        ; $51fb: $2e $d2
	ld a, [$2f0a]                                    ; $51fd: $fa $0a $2f
	cp $0b                                           ; $5200: $fe $0b
	inc a                                            ; $5202: $3c
	inc l                                            ; $5203: $2c
	or $0b                                           ; $5204: $f6 $0b
	inc a                                            ; $5206: $3c
	inc l                                            ; $5207: $2c
	ldh [c], a                                       ; $5208: $e2
	di                                               ; $5209: $f3
	inc a                                            ; $520a: $3c
	inc l                                            ; $520b: $2c
	jp c, $3cf3                                      ; $520c: $da $f3 $3c

	dec l                                            ; $520f: $2d
	ld hl, sp+$16                                    ; $5210: $f8 $16
	db $10                                           ; $5212: $10
	ld l, $f0                                        ; $5213: $2e $f0
	ld d, $0e                                        ; $5215: $16 $0e
	ld l, $d6                                        ; $5217: $2e $d6
	cp $0c                                           ; $5219: $fe $0c
	ld l, $ce                                        ; $521b: $2e $ce
	cp $0a                                           ; $521d: $fe $0a
	cpl                                              ; $521f: $2f
	cp $0c                                           ; $5220: $fe $0c
	inc a                                            ; $5222: $3c
	inc l                                            ; $5223: $2c
	or $0c                                           ; $5224: $f6 $0c
	inc a                                            ; $5226: $3c
	inc l                                            ; $5227: $2c
	ldh [$f4], a                                     ; $5228: $e0 $f4
	inc a                                            ; $522a: $3c
	inc l                                            ; $522b: $2c
	ret c                                            ; $522c: $d8

	db $f4                                           ; $522d: $f4
	inc a                                            ; $522e: $3c
	dec l                                            ; $522f: $2d
	or $1c                                           ; $5230: $f6 $1c
	db $10                                           ; $5232: $10
	ld l, $ee                                        ; $5233: $2e $ee
	inc e                                            ; $5235: $1c
	ld c, $2e                                        ; $5236: $0e $2e
	call nc, $0c02                                   ; $5238: $d4 $02 $0c
	ld l, $cc                                        ; $523b: $2e $cc
	ld [bc], a                                       ; $523d: $02
	ld a, [bc]                                       ; $523e: $0a
	cpl                                              ; $523f: $2f
	db $fd                                           ; $5240: $fd
	rrca                                             ; $5241: $0f
	inc a                                            ; $5242: $3c
	inc l                                            ; $5243: $2c
	push af                                          ; $5244: $f5
	rrca                                             ; $5245: $0f
	inc a                                            ; $5246: $3c
	inc l                                            ; $5247: $2c
	sbc $f5                                          ; $5248: $de $f5
	inc a                                            ; $524a: $3c
	inc l                                            ; $524b: $2c
	sub $f5                                          ; $524c: $d6 $f5
	inc a                                            ; $524e: $3c
	dec l                                            ; $524f: $2d
	db $f4                                           ; $5250: $f4
	jr nz, jr_00d_5263                               ; $5251: $20 $10

	ld l, $ec                                        ; $5253: $2e $ec
	jr nz, jr_00d_5265                               ; $5255: $20 $0e

	ld l, $d2                                        ; $5257: $2e $d2
	inc b                                            ; $5259: $04
	inc c                                            ; $525a: $0c
	ld l, $ca                                        ; $525b: $2e $ca
	inc b                                            ; $525d: $04
	ld a, [bc]                                       ; $525e: $0a
	cpl                                              ; $525f: $2f
	db $fc                                           ; $5260: $fc
	db $10                                           ; $5261: $10
	inc a                                            ; $5262: $3c

jr_00d_5263:
	inc l                                            ; $5263: $2c
	db $f4                                           ; $5264: $f4

jr_00d_5265:
	db $10                                           ; $5265: $10
	inc a                                            ; $5266: $3c
	inc l                                            ; $5267: $2c
	db $dd                                           ; $5268: $dd
	or $3c                                           ; $5269: $f6 $3c
	inc l                                            ; $526b: $2c
	push de                                          ; $526c: $d5
	or $3c                                           ; $526d: $f6 $3c
	dec l                                            ; $526f: $2d
	ld a, [$14f5]                                    ; $5270: $fa $f5 $14
	ld l, $f3                                        ; $5273: $2e $f3
	inc b                                            ; $5275: $04
	inc e                                            ; $5276: $1c
	inc l                                            ; $5277: $2c
	ld [bc], a                                       ; $5278: $02
	push af                                          ; $5279: $f5
	ld d, $2f                                        ; $527a: $16 $2f
	di                                               ; $527c: $f3
	inc b                                            ; $527d: $04
	ld e, $2c                                        ; $527e: $1e $2c
	ld [bc], a                                       ; $5280: $02
	push af                                          ; $5281: $f5
	ld d, $2e                                        ; $5282: $16 $2e
	ld a, [$14f5]                                    ; $5284: $fa $f5 $14
	cpl                                              ; $5287: $2f
	ld a, [$14f5]                                    ; $5288: $fa $f5 $14
	ld l, $02                                        ; $528b: $2e $02
	push af                                          ; $528d: $f5
	ld d, $2f                                        ; $528e: $16 $2f
	ei                                               ; $5290: $fb
	ld hl, sp+$12                                    ; $5291: $f8 $12
	ld l, $fb                                        ; $5293: $2e $fb
	ld [$2d18], a                                    ; $5295: $ea $18 $2d
	ei                                               ; $5298: $fb
	add sp, $1a                                      ; $5299: $e8 $1a
	inc l                                            ; $529b: $2c
	ei                                               ; $529c: $fb
	ld hl, sp+$12                                    ; $529d: $f8 $12
	cpl                                              ; $529f: $2f
	nop                                              ; $52a0: $00
	pop af                                           ; $52a1: $f1
	ld [hl+], a                                      ; $52a2: $22
	inc l                                            ; $52a3: $2c
	ld hl, sp-$0f                                    ; $52a4: $f8 $f1
	jr nz, jr_00d_52d5                               ; $52a6: $20 $2d

	rlca                                             ; $52a8: $07
	pop af                                           ; $52a9: $f1
	jr z, jr_00d_52d8                                ; $52aa: $28 $2c

	rst $38                                          ; $52ac: $ff
	pop af                                           ; $52ad: $f1
	ld h, $2c                                        ; $52ae: $26 $2c
	rst FarCall                                          ; $52b0: $f7
	pop af                                           ; $52b1: $f1
	inc h                                            ; $52b2: $24
	dec l                                            ; $52b3: $2d
	add hl, bc                                       ; $52b4: $09
	pop af                                           ; $52b5: $f1
	jr nc, jr_00d_52e4                               ; $52b6: $30 $2c

	ld bc, $2ef1                                     ; $52b8: $01 $f1 $2e
	inc l                                            ; $52bb: $2c
	rst FarCall                                          ; $52bc: $f7
	pop af                                           ; $52bd: $f1
	inc l                                            ; $52be: $2c
	inc l                                            ; $52bf: $2c
	db $fd                                           ; $52c0: $fd
	ldh [$2a], a                                     ; $52c1: $e0 $2a
	dec l                                            ; $52c3: $2d
	ld sp, hl                                        ; $52c4: $f9
	ld [$2c3a], a                                    ; $52c5: $ea $3a $2c
	nop                                              ; $52c8: $00
	jp hl                                            ; $52c9: $e9


	jr c, jr_00d_52f8                                ; $52ca: $38 $2c

	rst $38                                          ; $52cc: $ff
	ldh a, [$36]                                     ; $52cd: $f0 $36
	inc l                                            ; $52cf: $2c
	rlca                                             ; $52d0: $07
	ldh a, [$34]                                     ; $52d1: $f0 $34
	inc l                                            ; $52d3: $2c
	rst FarCall                                          ; $52d4: $f7

jr_00d_52d5:
	ldh a, [$32]                                     ; $52d5: $f0 $32
	dec l                                            ; $52d7: $2d

jr_00d_52d8:
	nop                                              ; $52d8: $00
	ld hl, sp+$02                                    ; $52d9: $f8 $02
	inc l                                            ; $52db: $2c
	ld hl, sp-$08                                    ; $52dc: $f8 $f8
	nop                                              ; $52de: $00
	dec l                                            ; $52df: $2d
	nop                                              ; $52e0: $00
	ld hl, sp+$02                                    ; $52e1: $f8 $02
	xor h                                            ; $52e3: $ac

jr_00d_52e4:
	ld hl, sp-$08                                    ; $52e4: $f8 $f8
	nop                                              ; $52e6: $00
	xor l                                            ; $52e7: $ad
	nop                                              ; $52e8: $00
	ld hl, sp+$06                                    ; $52e9: $f8 $06
	inc l                                            ; $52eb: $2c
	ld hl, sp-$08                                    ; $52ec: $f8 $f8
	inc b                                            ; $52ee: $04
	dec l                                            ; $52ef: $2d
	nop                                              ; $52f0: $00
	ld hl, sp+$06                                    ; $52f1: $f8 $06
	xor h                                            ; $52f3: $ac
	ld hl, sp-$08                                    ; $52f4: $f8 $f8
	inc b                                            ; $52f6: $04
	xor l                                            ; $52f7: $ad

jr_00d_52f8:
	nop                                              ; $52f8: $00
	ld hl, sp+$06                                    ; $52f9: $f8 $06
	inc l                                            ; $52fb: $2c
	ld hl, sp-$08                                    ; $52fc: $f8 $f8
	inc b                                            ; $52fe: $04
	dec l                                            ; $52ff: $2d
	ld hl, sp-$08                                    ; $5300: $f8 $f8
	inc b                                            ; $5302: $04
	xor h                                            ; $5303: $ac
	nop                                              ; $5304: $00
	ld hl, sp+$06                                    ; $5305: $f8 $06
	xor l                                            ; $5307: $ad
	nop                                              ; $5308: $00
	ld hl, sp+$0a                                    ; $5309: $f8 $0a
	inc l                                            ; $530b: $2c
	ld hl, sp-$08                                    ; $530c: $f8 $f8
	ld [$002d], sp                                   ; $530e: $08 $2d $00
	ld hl, sp+$0a                                    ; $5311: $f8 $0a
	xor h                                            ; $5313: $ac
	ld hl, sp-$08                                    ; $5314: $f8 $f8
	ld [$f8ad], sp                                   ; $5316: $08 $ad $f8
	ld hl, sp+$0e                                    ; $5319: $f8 $0e
	dec l                                            ; $531b: $2d
	ld hl, sp-$08                                    ; $531c: $f8 $f8
	inc c                                            ; $531e: $0c
	dec l                                            ; $531f: $2d
	ld [$1804], sp                                   ; $5320: $08 $04 $18
	ld l, h                                          ; $5323: $6c
	nop                                              ; $5324: $00
	inc b                                            ; $5325: $04
	ld a, [de]                                       ; $5326: $1a
	ld l, h                                          ; $5327: $6c
	nop                                              ; $5328: $00
	db $f4                                           ; $5329: $f4
	ld d, $6c                                        ; $532a: $16 $6c
	ld [$14f4], sp                                   ; $532c: $08 $f4 $14
	ld l, h                                          ; $532f: $6c
	ld hl, sp+$04                                    ; $5330: $f8 $04
	ld a, [de]                                       ; $5332: $1a
	inc l                                            ; $5333: $2c
	ldh a, [rDIV]                                    ; $5334: $f0 $04
	jr jr_00d_5364                                   ; $5336: $18 $2c

	ld hl, sp-$0c                                    ; $5338: $f8 $f4
	ld d, $2c                                        ; $533a: $16 $2c
	ldh a, [$f4]                                     ; $533c: $f0 $f4
	inc d                                            ; $533e: $14
	dec l                                            ; $533f: $2d
	ldh a, [$e8]                                     ; $5340: $f0 $e8
	inc e                                            ; $5342: $1c
	inc l                                            ; $5343: $2c
	db $10                                           ; $5344: $10
	ld hl, sp+$20                                    ; $5345: $f8 $20
	ld l, h                                          ; $5347: $6c
	nop                                              ; $5348: $00
	ld hl, sp+$32                                    ; $5349: $f8 $32
	inc l                                            ; $534b: $2c
	nop                                              ; $534c: $00
	ld [$6c26], sp                                   ; $534d: $08 $26 $6c
	ld [$2408], sp                                   ; $5350: $08 $08 $24
	ld l, h                                          ; $5353: $6c
	ld [$22f8], sp                                   ; $5354: $08 $f8 $22
	ld l, h                                          ; $5357: $6c
	nop                                              ; $5358: $00
	add sp, $1e                                      ; $5359: $e8 $1e
	ld l, h                                          ; $535b: $6c
	ld [$1ce8], sp                                   ; $535c: $08 $e8 $1c
	ld l, h                                          ; $535f: $6c
	ld hl, sp+$08                                    ; $5360: $f8 $08
	ld h, $2c                                        ; $5362: $26 $2c

jr_00d_5364:
	ldh a, [$08]                                     ; $5364: $f0 $08
	inc h                                            ; $5366: $24
	inc l                                            ; $5367: $2c
	ld hl, sp-$08                                    ; $5368: $f8 $f8
	ld [hl-], a                                      ; $536a: $32
	inc l                                            ; $536b: $2c
	ldh a, [$f8]                                     ; $536c: $f0 $f8
	ld [hl+], a                                      ; $536e: $22
	inc l                                            ; $536f: $2c
	add sp, -$08                                     ; $5370: $e8 $f8
	jr nz, jr_00d_53a0                               ; $5372: $20 $2c

	ld hl, sp-$18                                    ; $5374: $f8 $e8
	ld e, $2d                                        ; $5376: $1e $2d
	nop                                              ; $5378: $00
	ld hl, sp+$12                                    ; $5379: $f8 $12
	inc l                                            ; $537b: $2c
	ld hl, sp-$08                                    ; $537c: $f8 $f8
	db $10                                           ; $537e: $10
	dec l                                            ; $537f: $2d
	ld [$14f4], sp                                   ; $5380: $08 $f4 $14
	ld l, h                                          ; $5383: $6c
	ld [$1804], sp                                   ; $5384: $08 $04 $18
	ld l, h                                          ; $5387: $6c
	nop                                              ; $5388: $00
	inc b                                            ; $5389: $04
	ld a, [de]                                       ; $538a: $1a
	ld l, h                                          ; $538b: $6c
	nop                                              ; $538c: $00
	db $f4                                           ; $538d: $f4
	ld d, $6c                                        ; $538e: $16 $6c
	ld hl, sp+$04                                    ; $5390: $f8 $04
	ld a, [de]                                       ; $5392: $1a
	inc l                                            ; $5393: $2c
	ldh a, [rDIV]                                    ; $5394: $f0 $04
	jr jr_00d_53c4                                   ; $5396: $18 $2c

	ld hl, sp-$0c                                    ; $5398: $f8 $f4
	ld d, $2c                                        ; $539a: $16 $2c
	ldh a, [$f4]                                     ; $539c: $f0 $f4
	inc d                                            ; $539e: $14
	dec l                                            ; $539f: $2d

jr_00d_53a0:
	nop                                              ; $53a0: $00
	rst FarCall                                          ; $53a1: $f7
	ld [hl-], a                                      ; $53a2: $32
	inc l                                            ; $53a3: $2c
	nop                                              ; $53a4: $00
	rlca                                             ; $53a5: $07
	ld h, $6c                                        ; $53a6: $26 $6c
	ld [$2407], sp                                   ; $53a8: $08 $07 $24
	ld l, h                                          ; $53ab: $6c
	ld [$22f7], sp                                   ; $53ac: $08 $f7 $22
	ld l, h                                          ; $53af: $6c
	db $10                                           ; $53b0: $10
	rst FarCall                                          ; $53b1: $f7
	jr nz, @+$6e                                     ; $53b2: $20 $6c

	nop                                              ; $53b4: $00
	rst SubAFromBC                                          ; $53b5: $e7
	ld e, $6c                                        ; $53b6: $1e $6c
	ld [$1ce7], sp                                   ; $53b8: $08 $e7 $1c
	ld l, h                                          ; $53bb: $6c
	ld hl, sp-$09                                    ; $53bc: $f8 $f7
	ld [hl-], a                                      ; $53be: $32
	inc l                                            ; $53bf: $2c
	ld hl, sp+$07                                    ; $53c0: $f8 $07
	ld h, $2c                                        ; $53c2: $26 $2c

jr_00d_53c4:
	ldh a, [rTAC]                                    ; $53c4: $f0 $07
	inc h                                            ; $53c6: $24
	inc l                                            ; $53c7: $2c
	ldh a, [$f7]                                     ; $53c8: $f0 $f7
	ld [hl+], a                                      ; $53ca: $22
	inc l                                            ; $53cb: $2c
	add sp, -$09                                     ; $53cc: $e8 $f7
	jr nz, jr_00d_53fc                               ; $53ce: $20 $2c

	ld hl, sp-$19                                    ; $53d0: $f8 $e7
	ld e, $2c                                        ; $53d2: $1e $2c
	ldh a, [$e7]                                     ; $53d4: $f0 $e7
	inc e                                            ; $53d6: $1c
	dec l                                            ; $53d7: $2d
	dec bc                                           ; $53d8: $0b
	ld hl, sp+$34                                    ; $53d9: $f8 $34
	ld l, h                                          ; $53db: $6c
	dec b                                            ; $53dc: $05
	ld hl, sp+$32                                    ; $53dd: $f8 $32
	inc l                                            ; $53df: $2c
	push af                                          ; $53e0: $f5
	ld hl, sp+$32                                    ; $53e1: $f8 $32
	inc l                                            ; $53e3: $2c
	db $fd                                           ; $53e4: $fd
	ld hl, sp+$32                                    ; $53e5: $f8 $32
	inc l                                            ; $53e7: $2c
	dec c                                            ; $53e8: $0d
	ld [$ac30], sp                                   ; $53e9: $08 $30 $ac
	dec b                                            ; $53ec: $05
	ld [$ac2e], sp                                   ; $53ed: $08 $2e $ac
	db $fd                                           ; $53f0: $fd
	ld [$ac2c], sp                                   ; $53f1: $08 $2c $ac
	push af                                          ; $53f4: $f5
	ld [$ac2a], sp                                   ; $53f5: $08 $2a $ac
	db $ed                                           ; $53f8: $ed
	ld [$ac28], sp                                   ; $53f9: $08 $28 $ac

jr_00d_53fc:
	db $ed                                           ; $53fc: $ed
	ld hl, sp+$34                                    ; $53fd: $f8 $34
	inc l                                            ; $53ff: $2c
	dec c                                            ; $5400: $0d
	add sp, $30                                      ; $5401: $e8 $30
	inc l                                            ; $5403: $2c
	dec b                                            ; $5404: $05
	add sp, $2e                                      ; $5405: $e8 $2e
	inc l                                            ; $5407: $2c
	db $fd                                           ; $5408: $fd
	add sp, $2c                                      ; $5409: $e8 $2c
	inc l                                            ; $540b: $2c
	push af                                          ; $540c: $f5
	add sp, $2a                                      ; $540d: $e8 $2a
	inc l                                            ; $540f: $2c
	db $ed                                           ; $5410: $ed
	add sp, $28                                      ; $5411: $e8 $28
	dec l                                            ; $5413: $2d
	db $fc                                           ; $5414: $fc
	ldh [c], a                                       ; $5415: $e2
	ld [bc], a                                       ; $5416: $02
	inc l                                            ; $5417: $2c
	db $f4                                           ; $5418: $f4
	ldh a, [c]                                       ; $5419: $f2
	ld [$fc2e], sp                                   ; $541a: $08 $2e $fc
	ldh a, [c]                                       ; $541d: $f2
	ld a, [bc]                                       ; $541e: $0a
	ld l, $04                                        ; $541f: $2e $04
	ldh a, [c]                                       ; $5421: $f2
	inc c                                            ; $5422: $0c
	ld l, $04                                        ; $5423: $2e $04
	ldh [c], a                                       ; $5425: $e2
	inc b                                            ; $5426: $04
	inc l                                            ; $5427: $2c
	db $f4                                           ; $5428: $f4
	ldh [c], a                                       ; $5429: $e2
	nop                                              ; $542a: $00
	dec l                                            ; $542b: $2d
	db $f4                                           ; $542c: $f4
	ldh a, [c]                                       ; $542d: $f2
	ld [$fc2e], sp                                   ; $542e: $08 $2e $fc
	ldh a, [c]                                       ; $5431: $f2
	ld a, [bc]                                       ; $5432: $0a
	ld l, $04                                        ; $5433: $2e $04
	ldh a, [c]                                       ; $5435: $f2
	inc c                                            ; $5436: $0c
	ld l, $04                                        ; $5437: $2e $04
	ldh [c], a                                       ; $5439: $e2
	inc b                                            ; $543a: $04
	inc l                                            ; $543b: $2c
	db $fc                                           ; $543c: $fc
	ldh [c], a                                       ; $543d: $e2
	ld b, $2c                                        ; $543e: $06 $2c
	db $f4                                           ; $5440: $f4
	ldh [c], a                                       ; $5441: $e2
	nop                                              ; $5442: $00
	dec l                                            ; $5443: $2d
	inc b                                            ; $5444: $04
	ldh a, [c]                                       ; $5445: $f2
	ld a, [bc]                                       ; $5446: $0a
	ld h, $fc                                        ; $5447: $26 $fc
	ldh a, [c]                                       ; $5449: $f2
	ld [$f426], sp                                   ; $544a: $08 $26 $f4
	ldh a, [c]                                       ; $544d: $f2
	ld b, $26                                        ; $544e: $06 $26
	inc b                                            ; $5450: $04
	ldh [c], a                                       ; $5451: $e2
	inc b                                            ; $5452: $04
	inc h                                            ; $5453: $24
	db $fc                                           ; $5454: $fc
	ldh [c], a                                       ; $5455: $e2
	ld [bc], a                                       ; $5456: $02
	inc h                                            ; $5457: $24
	db $f4                                           ; $5458: $f4
	ldh [c], a                                       ; $5459: $e2
	nop                                              ; $545a: $00
	dec h                                            ; $545b: $25
	db $f4                                           ; $545c: $f4
	ldh a, [c]                                       ; $545d: $f2
	ld a, [bc]                                       ; $545e: $0a
	ld h, [hl]                                       ; $545f: $66
	db $fc                                           ; $5460: $fc
	ldh a, [c]                                       ; $5461: $f2
	ld [$0466], sp                                   ; $5462: $08 $66 $04
	ldh a, [c]                                       ; $5465: $f2
	ld b, $66                                        ; $5466: $06 $66
	db $f4                                           ; $5468: $f4
	ldh [c], a                                       ; $5469: $e2
	inc b                                            ; $546a: $04
	ld h, h                                          ; $546b: $64
	db $fc                                           ; $546c: $fc
	ldh [c], a                                       ; $546d: $e2
	ld [bc], a                                       ; $546e: $02
	ld h, h                                          ; $546f: $64
	inc b                                            ; $5470: $04
	ldh [c], a                                       ; $5471: $e2
	nop                                              ; $5472: $00
	ld h, l                                          ; $5473: $65
	inc b                                            ; $5474: $04
	ldh [c], a                                       ; $5475: $e2
	ld a, [bc]                                       ; $5476: $0a
	inc h                                            ; $5477: $24
	db $fc                                           ; $5478: $fc
	ldh [c], a                                       ; $5479: $e2
	ld [$0424], sp                                   ; $547a: $08 $24 $04
	ldh a, [c]                                       ; $547d: $f2
	inc b                                            ; $547e: $04
	ld h, $f4                                        ; $547f: $26 $f4
	ldh a, [c]                                       ; $5481: $f2
	nop                                              ; $5482: $00
	ld h, $fc                                        ; $5483: $26 $fc
	ldh a, [c]                                       ; $5485: $f2
	ld [bc], a                                       ; $5486: $02
	ld h, $f4                                        ; $5487: $26 $f4
	ldh [c], a                                       ; $5489: $e2
	ld b, $25                                        ; $548a: $06 $25
	db $fc                                           ; $548c: $fc
	ldh [c], a                                       ; $548d: $e2
	inc c                                            ; $548e: $0c
	inc h                                            ; $548f: $24
	inc b                                            ; $5490: $04
	ldh [c], a                                       ; $5491: $e2
	ld a, [bc]                                       ; $5492: $0a
	inc h                                            ; $5493: $24
	inc b                                            ; $5494: $04
	ldh a, [c]                                       ; $5495: $f2
	inc b                                            ; $5496: $04
	ld h, $f4                                        ; $5497: $26 $f4
	ldh a, [c]                                       ; $5499: $f2
	nop                                              ; $549a: $00
	ld h, $fc                                        ; $549b: $26 $fc
	ldh a, [c]                                       ; $549d: $f2
	ld [bc], a                                       ; $549e: $02
	ld h, $f4                                        ; $549f: $26 $f4
	ldh [c], a                                       ; $54a1: $e2
	ld b, $25                                        ; $54a2: $06 $25
	inc b                                            ; $54a4: $04
	ldh a, [c]                                       ; $54a5: $f2
	ld a, [bc]                                       ; $54a6: $0a
	ld h, $fc                                        ; $54a7: $26 $fc
	ldh a, [c]                                       ; $54a9: $f2
	ld [$f426], sp                                   ; $54aa: $08 $26 $f4
	ldh a, [c]                                       ; $54ad: $f2
	ld b, $26                                        ; $54ae: $06 $26
	inc b                                            ; $54b0: $04
	ldh [c], a                                       ; $54b1: $e2
	inc b                                            ; $54b2: $04
	inc h                                            ; $54b3: $24
	db $fc                                           ; $54b4: $fc
	ldh [c], a                                       ; $54b5: $e2
	ld [bc], a                                       ; $54b6: $02
	inc h                                            ; $54b7: $24
	db $f4                                           ; $54b8: $f4
	ldh [c], a                                       ; $54b9: $e2
	nop                                              ; $54ba: $00
	dec h                                            ; $54bb: $25
	db $fc                                           ; $54bc: $fc
	ldh [c], a                                       ; $54bd: $e2
	inc c                                            ; $54be: $0c
	inc h                                            ; $54bf: $24
	inc b                                            ; $54c0: $04
	ldh a, [c]                                       ; $54c1: $f2
	ld a, [bc]                                       ; $54c2: $0a
	ld h, $fc                                        ; $54c3: $26 $fc
	ldh a, [c]                                       ; $54c5: $f2
	ld [$f426], sp                                   ; $54c6: $08 $26 $f4
	ldh a, [c]                                       ; $54c9: $f2
	ld b, $26                                        ; $54ca: $06 $26
	inc b                                            ; $54cc: $04
	ldh [c], a                                       ; $54cd: $e2
	inc b                                            ; $54ce: $04
	inc h                                            ; $54cf: $24
	db $f4                                           ; $54d0: $f4
	ldh [c], a                                       ; $54d1: $e2
	nop                                              ; $54d2: $00
	dec h                                            ; $54d3: $25
	ld a, [de]                                       ; $54d4: $1a
	ldh [c], a                                       ; $54d5: $e2
	inc [hl]                                         ; $54d6: $34
	jr z, @+$1c                                      ; $54d7: $28 $1a

	jp nc, $2832                                     ; $54d9: $d2 $32 $28

	ld [de], a                                       ; $54dc: $12
	ldh a, [c]                                       ; $54dd: $f2
	jr nc, jr_00d_5508                               ; $54de: $30 $28

	ld [de], a                                       ; $54e0: $12
	ldh [c], a                                       ; $54e1: $e2
	ld l, $28                                        ; $54e2: $2e $28
	ld [de], a                                       ; $54e4: $12
	jp nc, $282c                                     ; $54e5: $d2 $2c $28

	ld [de], a                                       ; $54e8: $12
	jp nz, $282a                                     ; $54e9: $c2 $2a $28

	ld a, [bc]                                       ; $54ec: $0a
	ldh a, [c]                                       ; $54ed: $f2
	jr z, @+$2a                                      ; $54ee: $28 $28

	ld a, [bc]                                       ; $54f0: $0a
	ldh [c], a                                       ; $54f1: $e2
	ld h, $28                                        ; $54f2: $26 $28
	ld a, [bc]                                       ; $54f4: $0a
	jp nc, $2824                                     ; $54f5: $d2 $24 $28

	ld a, [bc]                                       ; $54f8: $0a
	jp nz, $2822                                     ; $54f9: $c2 $22 $28

	ld [bc], a                                       ; $54fc: $02
	ldh a, [c]                                       ; $54fd: $f2
	jr nz, jr_00d_5528                               ; $54fe: $20 $28

	ld [bc], a                                       ; $5500: $02
	ldh [c], a                                       ; $5501: $e2
	ld e, $28                                        ; $5502: $1e $28
	ld [bc], a                                       ; $5504: $02
	jp nc, $281c                                     ; $5505: $d2 $1c $28

jr_00d_5508:
	ld [bc], a                                       ; $5508: $02
	jp nz, $281a                                     ; $5509: $c2 $1a $28

	ld a, [$18f2]                                    ; $550c: $fa $f2 $18
	jr z, @-$04                                      ; $550f: $28 $fa

	ldh [c], a                                       ; $5511: $e2
	ld d, $28                                        ; $5512: $16 $28
	ld a, [$14d2]                                    ; $5514: $fa $d2 $14
	jr z, @-$04                                      ; $5517: $28 $fa

	jp nz, $2812                                     ; $5519: $c2 $12 $28

	ldh a, [c]                                       ; $551c: $f2
	ldh a, [c]                                       ; $551d: $f2
	db $10                                           ; $551e: $10
	jr z, @-$0c                                      ; $551f: $28 $f2

	ldh [c], a                                       ; $5521: $e2
	ld c, $28                                        ; $5522: $0e $28
	ldh a, [c]                                       ; $5524: $f2
	jp nc, $280c                                     ; $5525: $d2 $0c $28

jr_00d_5528:
	ldh a, [c]                                       ; $5528: $f2
	jp nz, $280a                                     ; $5529: $c2 $0a $28

	ld [$08f2], a                                    ; $552c: $ea $f2 $08
	jr z, @-$14                                      ; $552f: $28 $ea

	ldh [c], a                                       ; $5531: $e2
	ld b, $28                                        ; $5532: $06 $28
	ld [$02c2], a                                    ; $5534: $ea $c2 $02
	jr z, @-$1c                                      ; $5537: $28 $e2

	jp nz, $2900                                     ; $5539: $c2 $00 $29

	ret c                                            ; $553c: $d8

	call z, $2b36                                    ; $553d: $cc $36 $2b
	ret c                                            ; $5540: $d8

	pop de                                           ; $5541: $d1
	ld a, $2a                                        ; $5542: $3e $2a
	ret nc                                           ; $5544: $d0

	pop de                                           ; $5545: $d1
	inc a                                            ; $5546: $3c
	dec hl                                           ; $5547: $2b
	rst SubAFromHL                                          ; $5548: $d7
	call c, $aa36                                    ; $5549: $dc $36 $aa
	call $3ad8                                       ; $554c: $cd $d8 $3a
	dec hl                                           ; $554f: $2b
	ret nc                                           ; $5550: $d0

	ret c                                            ; $5551: $d8

	inc a                                            ; $5552: $3c
	xor d                                            ; $5553: $aa
	ret c                                            ; $5554: $d8

	ret c                                            ; $5555: $d8

	ld a, $ab                                        ; $5556: $3e $ab
	rst GetHLinHL                                          ; $5558: $cf
	db $d3                                           ; $5559: $d3
	ld a, [hl-]                                      ; $555a: $3a
	xor e                                            ; $555b: $ab
	set 1, b                                         ; $555c: $cb $c8
	jr c, @-$53                                      ; $555e: $38 $ab

	sub $d3                                          ; $5560: $d6 $d3
	ld a, $2a                                        ; $5562: $3e $2a
	adc $d4                                          ; $5564: $ce $d4
	inc a                                            ; $5566: $3c
	dec hl                                           ; $5567: $2b
	inc b                                            ; $5568: $04
	ldh a, [c]                                       ; $5569: $f2
	jr jr_00d_5592                                   ; $556a: $18 $26

	db $fc                                           ; $556c: $fc
	ldh a, [c]                                       ; $556d: $f2
	ld d, $26                                        ; $556e: $16 $26
	db $f4                                           ; $5570: $f4
	ldh a, [c]                                       ; $5571: $f2
	inc d                                            ; $5572: $14
	ld h, $04                                        ; $5573: $26 $04
	ldh [c], a                                       ; $5575: $e2
	nop                                              ; $5576: $00
	ld h, h                                          ; $5577: $64
	db $fc                                           ; $5578: $fc
	ldh [c], a                                       ; $5579: $e2
	ld [de], a                                       ; $557a: $12
	inc h                                            ; $557b: $24
	db $f4                                           ; $557c: $f4
	ldh [c], a                                       ; $557d: $e2
	db $10                                           ; $557e: $10
	dec h                                            ; $557f: $25
	db $fc                                           ; $5580: $fc
	ldh [c], a                                       ; $5581: $e2
	ld a, [de]                                       ; $5582: $1a
	inc h                                            ; $5583: $24
	inc b                                            ; $5584: $04
	ldh a, [c]                                       ; $5585: $f2
	jr jr_00d_55ae                                   ; $5586: $18 $26

	db $fc                                           ; $5588: $fc
	ldh a, [c]                                       ; $5589: $f2
	ld d, $26                                        ; $558a: $16 $26
	db $f4                                           ; $558c: $f4
	ldh a, [c]                                       ; $558d: $f2
	inc d                                            ; $558e: $14
	ld h, $04                                        ; $558f: $26 $04
	ldh [c], a                                       ; $5591: $e2

jr_00d_5592:
	nop                                              ; $5592: $00
	ld h, h                                          ; $5593: $64
	db $f4                                           ; $5594: $f4
	ldh [c], a                                       ; $5595: $e2
	db $10                                           ; $5596: $10
	dec h                                            ; $5597: $25
	inc b                                            ; $5598: $04
	ldh a, [c]                                       ; $5599: $f2
	ld a, [bc]                                       ; $559a: $0a
	inc h                                            ; $559b: $24
	db $fc                                           ; $559c: $fc
	ldh a, [c]                                       ; $559d: $f2
	ld [$f426], sp                                   ; $559e: $08 $26 $f4
	ldh a, [c]                                       ; $55a1: $f2
	ld b, $26                                        ; $55a2: $06 $26
	inc b                                            ; $55a4: $04
	ldh [c], a                                       ; $55a5: $e2
	inc b                                            ; $55a6: $04
	inc h                                            ; $55a7: $24
	db $fc                                           ; $55a8: $fc
	ldh [c], a                                       ; $55a9: $e2
	ld [bc], a                                       ; $55aa: $02
	inc h                                            ; $55ab: $24
	db $f4                                           ; $55ac: $f4
	ldh [c], a                                       ; $55ad: $e2

jr_00d_55ae:
	nop                                              ; $55ae: $00
	dec h                                            ; $55af: $25
	inc b                                            ; $55b0: $04
	di                                               ; $55b1: $f3
	ld a, [bc]                                       ; $55b2: $0a
	inc h                                            ; $55b3: $24
	db $fc                                           ; $55b4: $fc
	di                                               ; $55b5: $f3
	ld [$f426], sp                                   ; $55b6: $08 $26 $f4
	di                                               ; $55b9: $f3
	ld b, $26                                        ; $55ba: $06 $26
	inc b                                            ; $55bc: $04
	db $e3                                           ; $55bd: $e3
	inc b                                            ; $55be: $04
	inc h                                            ; $55bf: $24
	db $fc                                           ; $55c0: $fc
	db $e3                                           ; $55c1: $e3
	ld [bc], a                                       ; $55c2: $02
	inc h                                            ; $55c3: $24
	db $f4                                           ; $55c4: $f4
	db $e3                                           ; $55c5: $e3
	nop                                              ; $55c6: $00
	dec h                                            ; $55c7: $25
	db $fc                                           ; $55c8: $fc
	db $f4                                           ; $55c9: $f4
	inc c                                            ; $55ca: $0c
	ld h, $04                                        ; $55cb: $26 $04
	db $f4                                           ; $55cd: $f4
	ld a, [bc]                                       ; $55ce: $0a
	inc h                                            ; $55cf: $24
	db $f4                                           ; $55d0: $f4
	db $f4                                           ; $55d1: $f4
	ld b, $26                                        ; $55d2: $06 $26
	inc b                                            ; $55d4: $04
	db $e4                                           ; $55d5: $e4
	inc b                                            ; $55d6: $04
	inc h                                            ; $55d7: $24
	db $fc                                           ; $55d8: $fc
	db $e4                                           ; $55d9: $e4
	ld [bc], a                                       ; $55da: $02
	inc h                                            ; $55db: $24
	db $f4                                           ; $55dc: $f4
	db $e4                                           ; $55dd: $e4
	nop                                              ; $55de: $00
	dec h                                            ; $55df: $25
	db $f4                                           ; $55e0: $f4
	ldh a, [c]                                       ; $55e1: $f2
	ld a, [bc]                                       ; $55e2: $0a
	ld h, h                                          ; $55e3: $64
	db $fc                                           ; $55e4: $fc
	ldh a, [c]                                       ; $55e5: $f2
	ld [$0466], sp                                   ; $55e6: $08 $66 $04
	ldh a, [c]                                       ; $55e9: $f2
	ld b, $66                                        ; $55ea: $06 $66
	db $f4                                           ; $55ec: $f4
	ldh [c], a                                       ; $55ed: $e2
	inc b                                            ; $55ee: $04
	ld h, h                                          ; $55ef: $64
	db $fc                                           ; $55f0: $fc
	ldh [c], a                                       ; $55f1: $e2
	ld [bc], a                                       ; $55f2: $02
	ld h, h                                          ; $55f3: $64
	inc b                                            ; $55f4: $04
	ldh [c], a                                       ; $55f5: $e2
	nop                                              ; $55f6: $00
	ld h, l                                          ; $55f7: $65
	db $f4                                           ; $55f8: $f4
	di                                               ; $55f9: $f3
	ld a, [bc]                                       ; $55fa: $0a
	ld h, h                                          ; $55fb: $64
	db $fc                                           ; $55fc: $fc
	di                                               ; $55fd: $f3
	ld [$0466], sp                                   ; $55fe: $08 $66 $04
	di                                               ; $5601: $f3
	ld b, $66                                        ; $5602: $06 $66
	db $f4                                           ; $5604: $f4
	db $e3                                           ; $5605: $e3
	inc b                                            ; $5606: $04
	ld h, h                                          ; $5607: $64
	db $fc                                           ; $5608: $fc
	db $e3                                           ; $5609: $e3
	ld [bc], a                                       ; $560a: $02
	ld h, h                                          ; $560b: $64
	inc b                                            ; $560c: $04
	db $e3                                           ; $560d: $e3
	nop                                              ; $560e: $00
	ld h, l                                          ; $560f: $65
	db $fc                                           ; $5610: $fc
	db $f4                                           ; $5611: $f4
	inc c                                            ; $5612: $0c
	ld h, [hl]                                       ; $5613: $66
	db $f4                                           ; $5614: $f4
	db $f4                                           ; $5615: $f4
	ld a, [bc]                                       ; $5616: $0a
	ld h, h                                          ; $5617: $64
	inc b                                            ; $5618: $04
	db $f4                                           ; $5619: $f4
	ld b, $66                                        ; $561a: $06 $66
	db $f4                                           ; $561c: $f4
	db $e4                                           ; $561d: $e4
	inc b                                            ; $561e: $04
	ld h, h                                          ; $561f: $64
	db $fc                                           ; $5620: $fc
	db $e4                                           ; $5621: $e4
	ld [bc], a                                       ; $5622: $02
	ld h, h                                          ; $5623: $64
	inc b                                            ; $5624: $04
	db $e4                                           ; $5625: $e4
	nop                                              ; $5626: $00
	ld h, l                                          ; $5627: $65
	inc b                                            ; $5628: $04
	ldh a, [c]                                       ; $5629: $f2
	ld a, [bc]                                       ; $562a: $0a
	inc h                                            ; $562b: $24
	db $fc                                           ; $562c: $fc
	ldh a, [c]                                       ; $562d: $f2
	ld [$f426], sp                                   ; $562e: $08 $26 $f4
	ldh a, [c]                                       ; $5631: $f2
	ld b, $26                                        ; $5632: $06 $26
	inc b                                            ; $5634: $04
	ldh [c], a                                       ; $5635: $e2
	ld [de], a                                       ; $5636: $12
	inc h                                            ; $5637: $24
	db $fc                                           ; $5638: $fc
	ldh [c], a                                       ; $5639: $e2
	ld [bc], a                                       ; $563a: $02
	inc h                                            ; $563b: $24
	db $f4                                           ; $563c: $f4
	ldh [c], a                                       ; $563d: $e2
	db $10                                           ; $563e: $10
	dec h                                            ; $563f: $25
	db $f4                                           ; $5640: $f4
	ldh a, [c]                                       ; $5641: $f2
	jr nz, jr_00d_5668                               ; $5642: $20 $24

	db $fc                                           ; $5644: $fc
	ldh a, [c]                                       ; $5645: $f2
	ld [hl+], a                                      ; $5646: $22
	ld h, $fc                                        ; $5647: $26 $fc
	ldh [c], a                                       ; $5649: $e2
	ld d, $24                                        ; $564a: $16 $24
	inc b                                            ; $564c: $04
	ldh a, [c]                                       ; $564d: $f2
	ld b, $66                                        ; $564e: $06 $66
	db $f4                                           ; $5650: $f4
	ldh [c], a                                       ; $5651: $e2
	ld [de], a                                       ; $5652: $12
	ld h, h                                          ; $5653: $64
	inc b                                            ; $5654: $04
	ldh [c], a                                       ; $5655: $e2
	db $10                                           ; $5656: $10
	ld h, l                                          ; $5657: $65
	inc b                                            ; $5658: $04
	ldh a, [c]                                       ; $5659: $f2
	inc e                                            ; $565a: $1c
	ld h, $04                                        ; $565b: $26 $04
	ldh [c], a                                       ; $565d: $e2
	nop                                              ; $565e: $00
	ld h, h                                          ; $565f: $64
	db $f4                                           ; $5660: $f4
	ldh [c], a                                       ; $5661: $e2
	inc d                                            ; $5662: $14
	inc h                                            ; $5663: $24
	db $fc                                           ; $5664: $fc
	ldh [c], a                                       ; $5665: $e2
	ld d, $24                                        ; $5666: $16 $24

jr_00d_5668:
	db $f4                                           ; $5668: $f4
	ldh a, [c]                                       ; $5669: $f2
	jr jr_00d_5690                                   ; $566a: $18 $24

	db $fc                                           ; $566c: $fc
	ldh a, [c]                                       ; $566d: $f2
	ld a, [de]                                       ; $566e: $1a
	daa                                              ; $566f: $27
	db $fc                                           ; $5670: $fc
	db $e3                                           ; $5671: $e3
	ld d, $24                                        ; $5672: $16 $24
	db $f4                                           ; $5674: $f4
	db $e3                                           ; $5675: $e3
	ld e, $24                                        ; $5676: $1e $24
	inc b                                            ; $5678: $04
	di                                               ; $5679: $f3
	inc h                                            ; $567a: $24
	ld h, $f4                                        ; $567b: $26 $f4
	di                                               ; $567d: $f3
	jr nz, @+$26                                     ; $567e: $20 $24

	db $fc                                           ; $5680: $fc
	di                                               ; $5681: $f3
	ld [hl+], a                                      ; $5682: $22
	ld h, $04                                        ; $5683: $26 $04
	db $e3                                           ; $5685: $e3
	nop                                              ; $5686: $00
	ld h, l                                          ; $5687: $65
	inc b                                            ; $5688: $04
	ldh a, [c]                                       ; $5689: $f2
	ld a, [hl+]                                      ; $568a: $2a
	ld h, $f4                                        ; $568b: $26 $f4
	ldh [c], a                                       ; $568d: $e2
	inc d                                            ; $568e: $14
	inc h                                            ; $568f: $24

jr_00d_5690:
	db $f4                                           ; $5690: $f4
	ldh a, [c]                                       ; $5691: $f2
	ld h, $24                                        ; $5692: $26 $24
	db $fc                                           ; $5694: $fc
	ldh a, [c]                                       ; $5695: $f2
	jr z, jr_00d_56be                                ; $5696: $28 $26

	db $fc                                           ; $5698: $fc
	ldh [c], a                                       ; $5699: $e2
	ld d, $24                                        ; $569a: $16 $24
	inc b                                            ; $569c: $04
	ldh [c], a                                       ; $569d: $e2
	nop                                              ; $569e: $00
	ld h, l                                          ; $569f: $65
	db $f4                                           ; $56a0: $f4
	di                                               ; $56a1: $f3
	nop                                              ; $56a2: $00
	ld h, $fc                                        ; $56a3: $26 $fc
	di                                               ; $56a5: $f3
	ld [bc], a                                       ; $56a6: $02
	ld h, $04                                        ; $56a7: $26 $04
	di                                               ; $56a9: $f3
	ld [$0424], sp                                   ; $56aa: $08 $24 $04
	db $e3                                           ; $56ad: $e3
	ld c, $24                                        ; $56ae: $0e $24
	db $fc                                           ; $56b0: $fc
	db $e3                                           ; $56b1: $e3
	inc c                                            ; $56b2: $0c
	inc h                                            ; $56b3: $24
	db $f4                                           ; $56b4: $f4
	db $e3                                           ; $56b5: $e3
	ld a, [bc]                                       ; $56b6: $0a
	dec h                                            ; $56b7: $25
	db $f4                                           ; $56b8: $f4
	db $f4                                           ; $56b9: $f4
	nop                                              ; $56ba: $00
	ld h, $fc                                        ; $56bb: $26 $fc
	db $f4                                           ; $56bd: $f4

jr_00d_56be:
	ld b, $26                                        ; $56be: $06 $26
	inc b                                            ; $56c0: $04
	db $f4                                           ; $56c1: $f4
	ld [$0424], sp                                   ; $56c2: $08 $24 $04
	db $e4                                           ; $56c5: $e4
	ld c, $24                                        ; $56c6: $0e $24
	db $fc                                           ; $56c8: $fc
	db $e4                                           ; $56c9: $e4
	inc c                                            ; $56ca: $0c
	inc h                                            ; $56cb: $24
	db $f4                                           ; $56cc: $f4
	db $e4                                           ; $56cd: $e4
	ld a, [bc]                                       ; $56ce: $0a
	dec h                                            ; $56cf: $25
	inc b                                            ; $56d0: $04
	ldh a, [c]                                       ; $56d1: $f2
	ld a, [bc]                                       ; $56d2: $0a
	inc h                                            ; $56d3: $24
	db $fc                                           ; $56d4: $fc
	ldh a, [c]                                       ; $56d5: $f2
	ld [$f426], sp                                   ; $56d6: $08 $26 $f4
	ldh a, [c]                                       ; $56d9: $f2
	ld b, $26                                        ; $56da: $06 $26
	inc b                                            ; $56dc: $04
	ldh [c], a                                       ; $56dd: $e2
	inc b                                            ; $56de: $04
	inc h                                            ; $56df: $24
	db $fc                                           ; $56e0: $fc
	ldh [c], a                                       ; $56e1: $e2
	ld [bc], a                                       ; $56e2: $02
	inc h                                            ; $56e3: $24
	db $f4                                           ; $56e4: $f4
	ldh [c], a                                       ; $56e5: $e2
	nop                                              ; $56e6: $00
	dec h                                            ; $56e7: $25
	inc b                                            ; $56e8: $04
	ldh [c], a                                       ; $56e9: $e2
	ld [de], a                                       ; $56ea: $12
	inc h                                            ; $56eb: $24
	db $f4                                           ; $56ec: $f4
	ldh [c], a                                       ; $56ed: $e2
	db $10                                           ; $56ee: $10
	inc h                                            ; $56ef: $24
	inc b                                            ; $56f0: $04
	ldh a, [c]                                       ; $56f1: $f2
	ld a, [bc]                                       ; $56f2: $0a
	inc h                                            ; $56f3: $24
	db $fc                                           ; $56f4: $fc
	ldh a, [c]                                       ; $56f5: $f2
	ld [$f426], sp                                   ; $56f6: $08 $26 $f4
	ldh a, [c]                                       ; $56f9: $f2
	ld b, $26                                        ; $56fa: $06 $26
	db $fc                                           ; $56fc: $fc
	ldh [c], a                                       ; $56fd: $e2
	ld [bc], a                                       ; $56fe: $02
	dec h                                            ; $56ff: $25
	db $f4                                           ; $5700: $f4
	ldh a, [c]                                       ; $5701: $f2
	ld b, $26                                        ; $5702: $06 $26
	db $fc                                           ; $5704: $fc
	ldh a, [c]                                       ; $5705: $f2
	ld [$0426], sp                                   ; $5706: $08 $26 $04
	ldh a, [c]                                       ; $5709: $f2
	ld a, [bc]                                       ; $570a: $0a
	ld h, $04                                        ; $570b: $26 $04
	ldh [c], a                                       ; $570d: $e2
	inc b                                            ; $570e: $04
	inc h                                            ; $570f: $24
	db $fc                                           ; $5710: $fc
	ldh [c], a                                       ; $5711: $e2
	ld [bc], a                                       ; $5712: $02
	inc h                                            ; $5713: $24
	db $f4                                           ; $5714: $f4
	ldh [c], a                                       ; $5715: $e2
	nop                                              ; $5716: $00
	dec h                                            ; $5717: $25
	inc b                                            ; $5718: $04
	ldh a, [c]                                       ; $5719: $f2
	ld b, $66                                        ; $571a: $06 $66
	db $fc                                           ; $571c: $fc
	ldh a, [c]                                       ; $571d: $f2
	ld [$f466], sp                                   ; $571e: $08 $66 $f4
	ldh a, [c]                                       ; $5721: $f2
	ld a, [bc]                                       ; $5722: $0a
	ld h, [hl]                                       ; $5723: $66
	db $f4                                           ; $5724: $f4
	ldh [c], a                                       ; $5725: $e2
	inc b                                            ; $5726: $04
	ld h, h                                          ; $5727: $64
	db $fc                                           ; $5728: $fc
	ldh [c], a                                       ; $5729: $e2
	ld [bc], a                                       ; $572a: $02
	ld h, h                                          ; $572b: $64
	inc b                                            ; $572c: $04
	ldh [c], a                                       ; $572d: $e2
	nop                                              ; $572e: $00
	ld h, l                                          ; $572f: $65
	inc b                                            ; $5730: $04
	ldh a, [c]                                       ; $5731: $f2
	db $10                                           ; $5732: $10
	ld h, $fc                                        ; $5733: $26 $fc
	ldh a, [c]                                       ; $5735: $f2
	ld c, $26                                        ; $5736: $0e $26
	db $f4                                           ; $5738: $f4
	ldh a, [c]                                       ; $5739: $f2
	inc c                                            ; $573a: $0c
	ld h, $04                                        ; $573b: $26 $04
	ldh [c], a                                       ; $573d: $e2
	inc b                                            ; $573e: $04
	inc h                                            ; $573f: $24
	db $fc                                           ; $5740: $fc
	ldh [c], a                                       ; $5741: $e2
	ld [bc], a                                       ; $5742: $02
	inc h                                            ; $5743: $24
	db $f4                                           ; $5744: $f4
	ldh [c], a                                       ; $5745: $e2
	nop                                              ; $5746: $00
	dec h                                            ; $5747: $25
	inc b                                            ; $5748: $04
	di                                               ; $5749: $f3
	ld d, $26                                        ; $574a: $16 $26
	db $fc                                           ; $574c: $fc
	di                                               ; $574d: $f3
	inc d                                            ; $574e: $14
	ld h, $f4                                        ; $574f: $26 $f4
	di                                               ; $5751: $f3
	ld [de], a                                       ; $5752: $12
	ld h, $04                                        ; $5753: $26 $04
	db $e3                                           ; $5755: $e3
	inc b                                            ; $5756: $04
	inc h                                            ; $5757: $24
	db $fc                                           ; $5758: $fc
	db $e3                                           ; $5759: $e3
	ld [bc], a                                       ; $575a: $02
	inc h                                            ; $575b: $24
	db $f4                                           ; $575c: $f4
	db $e3                                           ; $575d: $e3
	nop                                              ; $575e: $00
	dec h                                            ; $575f: $25
	inc b                                            ; $5760: $04
	ldh a, [c]                                       ; $5761: $f2
	db $10                                           ; $5762: $10
	ld h, $fc                                        ; $5763: $26 $fc
	ldh a, [c]                                       ; $5765: $f2
	ld c, $26                                        ; $5766: $0e $26
	db $f4                                           ; $5768: $f4
	ldh a, [c]                                       ; $5769: $f2
	inc c                                            ; $576a: $0c
	ld h, $04                                        ; $576b: $26 $04
	ldh [c], a                                       ; $576d: $e2
	ld [de], a                                       ; $576e: $12
	inc h                                            ; $576f: $24
	db $f4                                           ; $5770: $f4
	ldh [c], a                                       ; $5771: $e2
	inc b                                            ; $5772: $04
	ld h, h                                          ; $5773: $64
	db $fc                                           ; $5774: $fc
	ldh [c], a                                       ; $5775: $e2
	ld [bc], a                                       ; $5776: $02
	ld h, l                                          ; $5777: $65
	inc b                                            ; $5778: $04
	ldh a, [c]                                       ; $5779: $f2
	ld d, $26                                        ; $577a: $16 $26
	inc b                                            ; $577c: $04
	ldh [c], a                                       ; $577d: $e2
	inc d                                            ; $577e: $14
	inc h                                            ; $577f: $24
	db $fc                                           ; $5780: $fc
	ldh a, [c]                                       ; $5781: $f2
	ld c, $26                                        ; $5782: $0e $26
	db $f4                                           ; $5784: $f4
	ldh a, [c]                                       ; $5785: $f2
	inc c                                            ; $5786: $0c
	ld h, $f4                                        ; $5787: $26 $f4
	ldh [c], a                                       ; $5789: $e2
	inc b                                            ; $578a: $04
	ld h, h                                          ; $578b: $64
	db $fc                                           ; $578c: $fc
	ldh [c], a                                       ; $578d: $e2
	ld [bc], a                                       ; $578e: $02
	ld h, l                                          ; $578f: $65
	inc b                                            ; $5790: $04
	ldh [c], a                                       ; $5791: $e2
	nop                                              ; $5792: $00
	ld h, h                                          ; $5793: $64
	inc b                                            ; $5794: $04
	ldh a, [c]                                       ; $5795: $f2
	inc e                                            ; $5796: $1c
	ld h, $fc                                        ; $5797: $26 $fc
	ldh a, [c]                                       ; $5799: $f2
	ld c, $26                                        ; $579a: $0e $26
	db $f4                                           ; $579c: $f4
	ldh a, [c]                                       ; $579d: $f2
	inc c                                            ; $579e: $0c
	ld h, $f4                                        ; $579f: $26 $f4
	ldh [c], a                                       ; $57a1: $e2
	inc b                                            ; $57a2: $04
	ld h, h                                          ; $57a3: $64
	db $fc                                           ; $57a4: $fc
	ldh [c], a                                       ; $57a5: $e2
	ld [bc], a                                       ; $57a6: $02
	ld h, l                                          ; $57a7: $65
	db $fc                                           ; $57a8: $fc
	ldh a, [c]                                       ; $57a9: $f2
	ld a, [de]                                       ; $57aa: $1a
	ld h, $f4                                        ; $57ab: $26 $f4
	ldh a, [c]                                       ; $57ad: $f2
	jr jr_00d_57d6                                   ; $57ae: $18 $26

	inc b                                            ; $57b0: $04
	ldh [c], a                                       ; $57b1: $e2
	nop                                              ; $57b2: $00
	ld h, h                                          ; $57b3: $64
	inc b                                            ; $57b4: $04
	ldh a, [c]                                       ; $57b5: $f2
	inc e                                            ; $57b6: $1c
	ld h, $f4                                        ; $57b7: $26 $f4
	ldh [c], a                                       ; $57b9: $e2
	inc b                                            ; $57ba: $04
	ld h, h                                          ; $57bb: $64
	db $fc                                           ; $57bc: $fc
	ldh [c], a                                       ; $57bd: $e2
	ld [bc], a                                       ; $57be: $02
	ld h, l                                          ; $57bf: $65
	db $fc                                           ; $57c0: $fc
	ldh [c], a                                       ; $57c1: $e2
	ld [hl+], a                                      ; $57c2: $22
	inc h                                            ; $57c3: $24
	inc b                                            ; $57c4: $04
	ldh a, [c]                                       ; $57c5: $f2
	ld h, $26                                        ; $57c6: $26 $26
	db $fc                                           ; $57c8: $fc
	ldh a, [c]                                       ; $57c9: $f2
	inc h                                            ; $57ca: $24
	ld h, $f4                                        ; $57cb: $26 $f4
	ldh a, [c]                                       ; $57cd: $f2
	jr nz, jr_00d_57f6                               ; $57ce: $20 $26

	db $f4                                           ; $57d0: $f4
	ldh [c], a                                       ; $57d1: $e2
	ld e, $24                                        ; $57d2: $1e $24
	inc b                                            ; $57d4: $04
	ldh [c], a                                       ; $57d5: $e2

jr_00d_57d6:
	nop                                              ; $57d6: $00
	ld h, l                                          ; $57d7: $65
	db $fc                                           ; $57d8: $fc
	ldh [c], a                                       ; $57d9: $e2
	ld [bc], a                                       ; $57da: $02
	ld h, h                                          ; $57db: $64
	inc b                                            ; $57dc: $04
	ldh a, [c]                                       ; $57dd: $f2
	ld h, $26                                        ; $57de: $26 $26
	db $fc                                           ; $57e0: $fc
	ldh a, [c]                                       ; $57e1: $f2
	inc h                                            ; $57e2: $24
	ld h, $f4                                        ; $57e3: $26 $f4
	ldh a, [c]                                       ; $57e5: $f2
	jr nz, @+$28                                     ; $57e6: $20 $26

	db $f4                                           ; $57e8: $f4
	ldh [c], a                                       ; $57e9: $e2
	ld e, $24                                        ; $57ea: $1e $24
	inc b                                            ; $57ec: $04
	ldh [c], a                                       ; $57ed: $e2
	nop                                              ; $57ee: $00
	ld h, l                                          ; $57ef: $65
	inc b                                            ; $57f0: $04
	ldh [c], a                                       ; $57f1: $e2
	ld l, $24                                        ; $57f2: $2e $24
	db $f4                                           ; $57f4: $f4
	ldh [c], a                                       ; $57f5: $e2

jr_00d_57f6:
	ld e, $24                                        ; $57f6: $1e $24
	db $fc                                           ; $57f8: $fc
	ldh [c], a                                       ; $57f9: $e2
	jr z, jr_00d_5820                                ; $57fa: $28 $24

	inc b                                            ; $57fc: $04
	ldh a, [c]                                       ; $57fd: $f2
	ld h, $26                                        ; $57fe: $26 $26
	db $fc                                           ; $5800: $fc
	ldh a, [c]                                       ; $5801: $f2
	inc h                                            ; $5802: $24
	ld h, $f4                                        ; $5803: $26 $f4
	ldh a, [c]                                       ; $5805: $f2
	jr nz, @+$29                                     ; $5806: $20 $27

	ei                                               ; $5808: $fb
	db $ec                                           ; $5809: $ec
	ld [hl-], a                                      ; $580a: $32
	add hl, hl                                       ; $580b: $29
	ld a, [$34ec]                                    ; $580c: $fa $ec $34
	add hl, hl                                       ; $580f: $29
	rst $38                                          ; $5810: $ff
	db $ec                                           ; $5811: $ec
	jr c, jr_00d_583c                                ; $5812: $38 $28

	rst FarCall                                          ; $5814: $f7
	db $ec                                           ; $5815: $ec
	ld [hl], $29                                     ; $5816: $36 $29
	ei                                               ; $5818: $fb
	db $ec                                           ; $5819: $ec
	ld a, [hl-]                                      ; $581a: $3a
	dec hl                                           ; $581b: $2b
	ld a, [$3cec]                                    ; $581c: $fa $ec $3c
	dec hl                                           ; $581f: $2b

jr_00d_5820:
	rst $38                                          ; $5820: $ff
	db $ec                                           ; $5821: $ec
	ld b, b                                          ; $5822: $40
	ld a, [hl+]                                      ; $5823: $2a
	rst FarCall                                          ; $5824: $f7
	db $ec                                           ; $5825: $ec
	ld a, $2b                                        ; $5826: $3e $2b
	inc b                                            ; $5828: $04
	ldh a, [c]                                       ; $5829: $f2
	ld a, [bc]                                       ; $582a: $0a
	ld h, $fc                                        ; $582b: $26 $fc
	ldh a, [c]                                       ; $582d: $f2
	ld [$f426], sp                                   ; $582e: $08 $26 $f4
	ldh a, [c]                                       ; $5831: $f2
	ld b, $26                                        ; $5832: $06 $26
	inc b                                            ; $5834: $04
	ldh [c], a                                       ; $5835: $e2
	inc b                                            ; $5836: $04
	inc h                                            ; $5837: $24
	db $fc                                           ; $5838: $fc
	ldh [c], a                                       ; $5839: $e2
	ld [bc], a                                       ; $583a: $02
	inc h                                            ; $583b: $24

jr_00d_583c:
	db $f4                                           ; $583c: $f4
	ldh [c], a                                       ; $583d: $e2
	nop                                              ; $583e: $00
	dec h                                            ; $583f: $25
	db $fc                                           ; $5840: $fc
	ldh [c], a                                       ; $5841: $e2
	inc l                                            ; $5842: $2c
	inc h                                            ; $5843: $24
	inc b                                            ; $5844: $04
	ldh a, [c]                                       ; $5845: $f2
	ld a, [bc]                                       ; $5846: $0a
	ld h, $fc                                        ; $5847: $26 $fc
	ldh a, [c]                                       ; $5849: $f2
	ld [$f426], sp                                   ; $584a: $08 $26 $f4
	ldh a, [c]                                       ; $584d: $f2
	ld b, $26                                        ; $584e: $06 $26
	inc b                                            ; $5850: $04
	ldh [c], a                                       ; $5851: $e2
	inc b                                            ; $5852: $04
	inc h                                            ; $5853: $24
	db $f4                                           ; $5854: $f4
	ldh [c], a                                       ; $5855: $e2
	nop                                              ; $5856: $00
	dec h                                            ; $5857: $25
	inc b                                            ; $5858: $04
	ldh a, [c]                                       ; $5859: $f2
	ld a, [bc]                                       ; $585a: $0a
	ld h, $fc                                        ; $585b: $26 $fc
	ldh a, [c]                                       ; $585d: $f2
	ld [$f426], sp                                   ; $585e: $08 $26 $f4
	ldh a, [c]                                       ; $5861: $f2
	ld b, $26                                        ; $5862: $06 $26
	inc b                                            ; $5864: $04
	ldh [c], a                                       ; $5865: $e2
	inc b                                            ; $5866: $04
	inc h                                            ; $5867: $24
	db $fc                                           ; $5868: $fc
	ldh [c], a                                       ; $5869: $e2
	ld [bc], a                                       ; $586a: $02
	inc h                                            ; $586b: $24
	db $f4                                           ; $586c: $f4
	ldh [c], a                                       ; $586d: $e2
	nop                                              ; $586e: $00
	dec h                                            ; $586f: $25
	inc b                                            ; $5870: $04
	di                                               ; $5871: $f3
	ld a, [bc]                                       ; $5872: $0a
	ld h, $f4                                        ; $5873: $26 $f4
	di                                               ; $5875: $f3
	jr nc, jr_00d_589e                               ; $5876: $30 $26

	db $fc                                           ; $5878: $fc
	di                                               ; $5879: $f3
	ld a, [hl+]                                      ; $587a: $2a
	ld h, $04                                        ; $587b: $26 $04
	db $e3                                           ; $587d: $e3
	inc b                                            ; $587e: $04
	inc h                                            ; $587f: $24
	db $fc                                           ; $5880: $fc
	db $e3                                           ; $5881: $e3
	ld [bc], a                                       ; $5882: $02
	inc h                                            ; $5883: $24
	db $f4                                           ; $5884: $f4
	db $e3                                           ; $5885: $e3
	nop                                              ; $5886: $00
	dec h                                            ; $5887: $25
	db $f4                                           ; $5888: $f4
	ldh a, [c]                                       ; $5889: $f2
	ld a, [bc]                                       ; $588a: $0a
	ld h, [hl]                                       ; $588b: $66
	db $fc                                           ; $588c: $fc
	ldh a, [c]                                       ; $588d: $f2
	ld [$0466], sp                                   ; $588e: $08 $66 $04
	ldh a, [c]                                       ; $5891: $f2
	ld b, $66                                        ; $5892: $06 $66
	db $f4                                           ; $5894: $f4
	ldh [c], a                                       ; $5895: $e2
	inc b                                            ; $5896: $04
	ld h, h                                          ; $5897: $64
	db $fc                                           ; $5898: $fc
	ldh [c], a                                       ; $5899: $e2
	ld [bc], a                                       ; $589a: $02
	ld h, h                                          ; $589b: $64
	inc b                                            ; $589c: $04
	ldh [c], a                                       ; $589d: $e2

jr_00d_589e:
	nop                                              ; $589e: $00
	ld h, l                                          ; $589f: $65
	db $f4                                           ; $58a0: $f4
	di                                               ; $58a1: $f3
	ld a, [bc]                                       ; $58a2: $0a
	ld h, [hl]                                       ; $58a3: $66
	inc b                                            ; $58a4: $04
	di                                               ; $58a5: $f3
	jr nc, jr_00d_590e                               ; $58a6: $30 $66

	db $fc                                           ; $58a8: $fc
	di                                               ; $58a9: $f3
	ld a, [hl+]                                      ; $58aa: $2a
	ld h, [hl]                                       ; $58ab: $66
	db $f4                                           ; $58ac: $f4
	db $e3                                           ; $58ad: $e3
	inc b                                            ; $58ae: $04
	ld h, h                                          ; $58af: $64
	db $fc                                           ; $58b0: $fc
	db $e3                                           ; $58b1: $e3
	ld [bc], a                                       ; $58b2: $02
	ld h, h                                          ; $58b3: $64
	inc b                                            ; $58b4: $04
	db $e3                                           ; $58b5: $e3
	nop                                              ; $58b6: $00
	ld h, l                                          ; $58b7: $65
	inc b                                            ; $58b8: $04
	ldh a, [c]                                       ; $58b9: $f2
	ld a, [bc]                                       ; $58ba: $0a
	ld h, $fc                                        ; $58bb: $26 $fc
	ldh a, [c]                                       ; $58bd: $f2
	ld [$f426], sp                                   ; $58be: $08 $26 $f4
	ldh a, [c]                                       ; $58c1: $f2
	ld b, $26                                        ; $58c2: $06 $26
	inc b                                            ; $58c4: $04
	ldh [c], a                                       ; $58c5: $e2
	inc b                                            ; $58c6: $04
	inc h                                            ; $58c7: $24
	db $fc                                           ; $58c8: $fc
	ldh [c], a                                       ; $58c9: $e2
	ld [bc], a                                       ; $58ca: $02
	inc h                                            ; $58cb: $24
	db $f4                                           ; $58cc: $f4
	ldh [c], a                                       ; $58cd: $e2
	nop                                              ; $58ce: $00
	dec h                                            ; $58cf: $25
	db $f4                                           ; $58d0: $f4
	ldh a, [c]                                       ; $58d1: $f2
	inc h                                            ; $58d2: $24
	ld h, $04                                        ; $58d3: $26 $04
	ldh a, [c]                                       ; $58d5: $f2
	ld h, $26                                        ; $58d6: $26 $26
	db $fc                                           ; $58d8: $fc
	ldh a, [c]                                       ; $58d9: $f2
	ld a, [bc]                                       ; $58da: $0a
	ld h, $fc                                        ; $58db: $26 $fc
	ldh [c], a                                       ; $58dd: $e2
	ld [bc], a                                       ; $58de: $02
	inc h                                            ; $58df: $24
	inc b                                            ; $58e0: $04
	ldh [c], a                                       ; $58e1: $e2
	inc b                                            ; $58e2: $04
	inc h                                            ; $58e3: $24
	db $f4                                           ; $58e4: $f4
	ldh [c], a                                       ; $58e5: $e2
	nop                                              ; $58e6: $00
	dec h                                            ; $58e7: $25
	inc b                                            ; $58e8: $04
	di                                               ; $58e9: $f3
	inc l                                            ; $58ea: $2c
	ld h, $f4                                        ; $58eb: $26 $f4
	di                                               ; $58ed: $f3
	jr z, jr_00d_5916                                ; $58ee: $28 $26

	db $fc                                           ; $58f0: $fc
	di                                               ; $58f1: $f3
	ld a, [hl+]                                      ; $58f2: $2a
	ld h, $fc                                        ; $58f3: $26 $fc
	db $e3                                           ; $58f5: $e3
	ld [bc], a                                       ; $58f6: $02
	inc h                                            ; $58f7: $24
	inc b                                            ; $58f8: $04
	db $e3                                           ; $58f9: $e3
	inc b                                            ; $58fa: $04
	inc h                                            ; $58fb: $24
	db $f4                                           ; $58fc: $f4
	db $e3                                           ; $58fd: $e3
	nop                                              ; $58fe: $00
	dec h                                            ; $58ff: $25
	db $f4                                           ; $5900: $f4
	ldh a, [c]                                       ; $5901: $f2
	ld a, [bc]                                       ; $5902: $0a
	ld h, [hl]                                       ; $5903: $66
	db $fc                                           ; $5904: $fc
	ldh a, [c]                                       ; $5905: $f2
	ld [$0466], sp                                   ; $5906: $08 $66 $04
	ldh a, [c]                                       ; $5909: $f2
	ld b, $66                                        ; $590a: $06 $66
	db $f4                                           ; $590c: $f4
	ldh [c], a                                       ; $590d: $e2

jr_00d_590e:
	inc b                                            ; $590e: $04
	ld h, h                                          ; $590f: $64
	db $fc                                           ; $5910: $fc
	ldh [c], a                                       ; $5911: $e2
	ld [bc], a                                       ; $5912: $02
	ld h, h                                          ; $5913: $64
	inc b                                            ; $5914: $04
	ldh [c], a                                       ; $5915: $e2

jr_00d_5916:
	nop                                              ; $5916: $00
	ld h, l                                          ; $5917: $65
	inc b                                            ; $5918: $04
	ldh a, [c]                                       ; $5919: $f2
	inc h                                            ; $591a: $24
	ld h, [hl]                                       ; $591b: $66
	db $f4                                           ; $591c: $f4
	ldh a, [c]                                       ; $591d: $f2
	ld h, $66                                        ; $591e: $26 $66
	db $fc                                           ; $5920: $fc
	ldh a, [c]                                       ; $5921: $f2
	ld a, [bc]                                       ; $5922: $0a
	ld h, [hl]                                       ; $5923: $66
	db $fc                                           ; $5924: $fc
	ldh [c], a                                       ; $5925: $e2
	ld [bc], a                                       ; $5926: $02
	ld h, h                                          ; $5927: $64
	db $f4                                           ; $5928: $f4
	ldh [c], a                                       ; $5929: $e2
	inc b                                            ; $592a: $04
	ld h, h                                          ; $592b: $64
	inc b                                            ; $592c: $04
	ldh [c], a                                       ; $592d: $e2
	nop                                              ; $592e: $00
	ld h, l                                          ; $592f: $65
	db $f4                                           ; $5930: $f4
	di                                               ; $5931: $f3
	inc l                                            ; $5932: $2c
	ld h, [hl]                                       ; $5933: $66
	inc b                                            ; $5934: $04
	di                                               ; $5935: $f3
	jr z, jr_00d_599e                                ; $5936: $28 $66

	db $fc                                           ; $5938: $fc
	di                                               ; $5939: $f3
	ld a, [hl+]                                      ; $593a: $2a
	ld h, [hl]                                       ; $593b: $66
	db $fc                                           ; $593c: $fc
	db $e3                                           ; $593d: $e3
	ld [bc], a                                       ; $593e: $02
	ld h, h                                          ; $593f: $64
	db $f4                                           ; $5940: $f4
	db $e3                                           ; $5941: $e3
	inc b                                            ; $5942: $04
	ld h, h                                          ; $5943: $64
	inc b                                            ; $5944: $04
	db $e3                                           ; $5945: $e3
	nop                                              ; $5946: $00
	ld h, l                                          ; $5947: $65
	inc b                                            ; $5948: $04
	ldh a, [c]                                       ; $5949: $f2
	ld a, [bc]                                       ; $594a: $0a
	ld h, $fc                                        ; $594b: $26 $fc
	ldh a, [c]                                       ; $594d: $f2
	ld [$f426], sp                                   ; $594e: $08 $26 $f4
	ldh a, [c]                                       ; $5951: $f2
	ld b, $26                                        ; $5952: $06 $26
	inc b                                            ; $5954: $04
	ldh [c], a                                       ; $5955: $e2
	inc b                                            ; $5956: $04
	inc h                                            ; $5957: $24
	db $fc                                           ; $5958: $fc
	ldh [c], a                                       ; $5959: $e2
	ld [bc], a                                       ; $595a: $02
	inc h                                            ; $595b: $24
	db $f4                                           ; $595c: $f4
	ldh [c], a                                       ; $595d: $e2
	nop                                              ; $595e: $00
	dec h                                            ; $595f: $25
	inc b                                            ; $5960: $04
	di                                               ; $5961: $f3
	db $10                                           ; $5962: $10
	ld h, $f4                                        ; $5963: $26 $f4
	di                                               ; $5965: $f3
	inc c                                            ; $5966: $0c
	ld h, $fc                                        ; $5967: $26 $fc
	di                                               ; $5969: $f3
	ld c, $26                                        ; $596a: $0e $26
	db $fc                                           ; $596c: $fc
	db $e3                                           ; $596d: $e3
	ld [de], a                                       ; $596e: $12
	inc h                                            ; $596f: $24
	inc b                                            ; $5970: $04
	db $e3                                           ; $5971: $e3
	inc b                                            ; $5972: $04
	inc h                                            ; $5973: $24
	db $f4                                           ; $5974: $f4
	db $e3                                           ; $5975: $e3
	nop                                              ; $5976: $00
	dec h                                            ; $5977: $25
	inc b                                            ; $5978: $04
	ldh [c], a                                       ; $5979: $e2
	inc b                                            ; $597a: $04
	inc h                                            ; $597b: $24
	db $fc                                           ; $597c: $fc
	ldh [c], a                                       ; $597d: $e2
	ld [bc], a                                       ; $597e: $02
	inc h                                            ; $597f: $24
	db $f4                                           ; $5980: $f4
	ldh [c], a                                       ; $5981: $e2
	nop                                              ; $5982: $00
	inc h                                            ; $5983: $24
	inc b                                            ; $5984: $04
	ldh a, [c]                                       ; $5985: $f2
	inc c                                            ; $5986: $0c
	ld h, $fc                                        ; $5987: $26 $fc
	ldh a, [c]                                       ; $5989: $f2
	ld a, [bc]                                       ; $598a: $0a
	ld h, $f4                                        ; $598b: $26 $f4
	ldh a, [c]                                       ; $598d: $f2
	ld l, $27                                        ; $598e: $2e $27
	db $f4                                           ; $5990: $f4
	ldh [c], a                                       ; $5991: $e2
	jr nz, @+$26                                     ; $5992: $20 $24

	db $fc                                           ; $5994: $fc
	ldh [c], a                                       ; $5995: $e2
	ld [hl+], a                                      ; $5996: $22
	inc h                                            ; $5997: $24
	db $f4                                           ; $5998: $f4
	ldh a, [c]                                       ; $5999: $f2
	ld l, $26                                        ; $599a: $2e $26
	inc b                                            ; $599c: $04
	ldh a, [c]                                       ; $599d: $f2

jr_00d_599e:
	inc c                                            ; $599e: $0c
	ld h, $04                                        ; $599f: $26 $04
	ldh [c], a                                       ; $59a1: $e2
	inc b                                            ; $59a2: $04
	inc h                                            ; $59a3: $24
	db $fc                                           ; $59a4: $fc
	ldh a, [c]                                       ; $59a5: $f2
	ld a, [bc]                                       ; $59a6: $0a
	daa                                              ; $59a7: $27
	db $f4                                           ; $59a8: $f4
	ldh a, [c]                                       ; $59a9: $f2
	ld [$f426], sp                                   ; $59aa: $08 $26 $f4
	ldh [c], a                                       ; $59ad: $e2
	nop                                              ; $59ae: $00
	inc h                                            ; $59af: $24
	db $fc                                           ; $59b0: $fc
	ldh [c], a                                       ; $59b1: $e2
	ld b, $24                                        ; $59b2: $06 $24
	inc b                                            ; $59b4: $04
	ldh a, [c]                                       ; $59b5: $f2
	inc c                                            ; $59b6: $0c
	ld h, $04                                        ; $59b7: $26 $04
	ldh [c], a                                       ; $59b9: $e2
	inc b                                            ; $59ba: $04
	inc h                                            ; $59bb: $24
	db $fc                                           ; $59bc: $fc
	ldh a, [c]                                       ; $59bd: $f2
	ld a, [bc]                                       ; $59be: $0a
	daa                                              ; $59bf: $27
	db $f4                                           ; $59c0: $f4
	ldh a, [c]                                       ; $59c1: $f2
	ld [de], a                                       ; $59c2: $12
	ld h, $fc                                        ; $59c3: $26 $fc
	ldh [c], a                                       ; $59c5: $e2
	ld c, $24                                        ; $59c6: $0e $24
	db $f4                                           ; $59c8: $f4
	ldh [c], a                                       ; $59c9: $e2
	db $10                                           ; $59ca: $10
	inc h                                            ; $59cb: $24
	inc b                                            ; $59cc: $04
	ldh a, [c]                                       ; $59cd: $f2
	inc c                                            ; $59ce: $0c
	ld h, $04                                        ; $59cf: $26 $04
	ldh [c], a                                       ; $59d1: $e2
	inc b                                            ; $59d2: $04
	inc h                                            ; $59d3: $24
	db $fc                                           ; $59d4: $fc
	ldh a, [c]                                       ; $59d5: $f2
	ld a, [bc]                                       ; $59d6: $0a
	daa                                              ; $59d7: $27
	db $fc                                           ; $59d8: $fc
	ldh [c], a                                       ; $59d9: $e2
	ld b, $24                                        ; $59da: $06 $24
	db $f4                                           ; $59dc: $f4
	ldh a, [c]                                       ; $59dd: $f2
	ld d, $26                                        ; $59de: $16 $26
	db $f4                                           ; $59e0: $f4
	ldh [c], a                                       ; $59e1: $e2
	inc d                                            ; $59e2: $14
	inc h                                            ; $59e3: $24
	inc b                                            ; $59e4: $04
	ldh [c], a                                       ; $59e5: $e2
	inc b                                            ; $59e6: $04
	inc h                                            ; $59e7: $24
	inc b                                            ; $59e8: $04
	ldh a, [c]                                       ; $59e9: $f2
	inc c                                            ; $59ea: $0c
	ld h, $fc                                        ; $59eb: $26 $fc
	ldh a, [c]                                       ; $59ed: $f2
	ld a, [bc]                                       ; $59ee: $0a
	daa                                              ; $59ef: $27
	db $fc                                           ; $59f0: $fc
	ldh [c], a                                       ; $59f1: $e2
	ld c, $24                                        ; $59f2: $0e $24
	db $f4                                           ; $59f4: $f4
	ldh a, [c]                                       ; $59f5: $f2
	ld a, [de]                                       ; $59f6: $1a
	ld h, $f4                                        ; $59f7: $26 $f4
	ldh [c], a                                       ; $59f9: $e2
	jr jr_00d_5a20                                   ; $59fa: $18 $24

	inc b                                            ; $59fc: $04
	ldh [c], a                                       ; $59fd: $e2
	inc b                                            ; $59fe: $04
	inc h                                            ; $59ff: $24
	inc b                                            ; $5a00: $04
	ldh a, [c]                                       ; $5a01: $f2
	inc c                                            ; $5a02: $0c
	ld h, $fc                                        ; $5a03: $26 $fc
	ldh a, [c]                                       ; $5a05: $f2
	ld a, [bc]                                       ; $5a06: $0a
	daa                                              ; $5a07: $27
	db $fc                                           ; $5a08: $fc
	ldh [c], a                                       ; $5a09: $e2
	ld b, $24                                        ; $5a0a: $06 $24
	db $f4                                           ; $5a0c: $f4
	ldh a, [c]                                       ; $5a0d: $f2
	ld a, [de]                                       ; $5a0e: $1a
	ld h, $f4                                        ; $5a0f: $26 $f4
	ldh [c], a                                       ; $5a11: $e2
	jr jr_00d_5a38                                   ; $5a12: $18 $24

	inc b                                            ; $5a14: $04
	ldh [c], a                                       ; $5a15: $e2
	inc b                                            ; $5a16: $04
	inc h                                            ; $5a17: $24
	inc b                                            ; $5a18: $04
	ldh a, [c]                                       ; $5a19: $f2
	inc c                                            ; $5a1a: $0c
	ld h, $fc                                        ; $5a1b: $26 $fc
	ldh a, [c]                                       ; $5a1d: $f2
	ld a, [bc]                                       ; $5a1e: $0a
	daa                                              ; $5a1f: $27

jr_00d_5a20:
	db $fc                                           ; $5a20: $fc
	ldh [c], a                                       ; $5a21: $e2
	inc e                                            ; $5a22: $1c
	inc h                                            ; $5a23: $24
	db $f4                                           ; $5a24: $f4
	ldh [c], a                                       ; $5a25: $e2
	nop                                              ; $5a26: $00
	inc h                                            ; $5a27: $24
	db $f4                                           ; $5a28: $f4
	ldh a, [c]                                       ; $5a29: $f2
	ld [$0426], sp                                   ; $5a2a: $08 $26 $04
	ldh [c], a                                       ; $5a2d: $e2
	inc b                                            ; $5a2e: $04
	inc h                                            ; $5a2f: $24
	inc b                                            ; $5a30: $04
	ldh a, [c]                                       ; $5a31: $f2
	inc c                                            ; $5a32: $0c
	ld h, $fc                                        ; $5a33: $26 $fc
	ldh a, [c]                                       ; $5a35: $f2
	ld a, [bc]                                       ; $5a36: $0a
	daa                                              ; $5a37: $27

jr_00d_5a38:
	db $fc                                           ; $5a38: $fc
	ldh [c], a                                       ; $5a39: $e2
	ld e, $24                                        ; $5a3a: $1e $24
	db $f4                                           ; $5a3c: $f4
	ldh [c], a                                       ; $5a3d: $e2
	db $10                                           ; $5a3e: $10
	inc h                                            ; $5a3f: $24
	db $f4                                           ; $5a40: $f4
	ldh a, [c]                                       ; $5a41: $f2
	ld [de], a                                       ; $5a42: $12
	ld h, $04                                        ; $5a43: $26 $04
	ldh [c], a                                       ; $5a45: $e2
	inc b                                            ; $5a46: $04
	inc h                                            ; $5a47: $24
	inc b                                            ; $5a48: $04
	ldh a, [c]                                       ; $5a49: $f2
	inc c                                            ; $5a4a: $0c
	ld h, $fc                                        ; $5a4b: $26 $fc
	ldh a, [c]                                       ; $5a4d: $f2
	ld a, [bc]                                       ; $5a4e: $0a
	daa                                              ; $5a4f: $27
	db $fc                                           ; $5a50: $fc
	ldh [c], a                                       ; $5a51: $e2
	ld b, $24                                        ; $5a52: $06 $24
	db $f4                                           ; $5a54: $f4
	ldh a, [c]                                       ; $5a55: $f2
	inc h                                            ; $5a56: $24
	ld h, $04                                        ; $5a57: $26 $04
	ldh a, [c]                                       ; $5a59: $f2
	ld h, $26                                        ; $5a5a: $26 $26
	db $f4                                           ; $5a5c: $f4
	ldh [c], a                                       ; $5a5d: $e2
	nop                                              ; $5a5e: $00
	inc h                                            ; $5a5f: $24
	inc b                                            ; $5a60: $04
	ldh [c], a                                       ; $5a61: $e2
	inc b                                            ; $5a62: $04
	inc h                                            ; $5a63: $24
	db $fc                                           ; $5a64: $fc
	ldh a, [c]                                       ; $5a65: $f2
	ld a, [bc]                                       ; $5a66: $0a
	daa                                              ; $5a67: $27
	db $fc                                           ; $5a68: $fc
	ldh [c], a                                       ; $5a69: $e2
	ld c, $24                                        ; $5a6a: $0e $24
	db $f4                                           ; $5a6c: $f4
	ldh a, [c]                                       ; $5a6d: $f2
	inc h                                            ; $5a6e: $24
	ld h, $04                                        ; $5a6f: $26 $04
	ldh a, [c]                                       ; $5a71: $f2
	ld h, $26                                        ; $5a72: $26 $26
	db $f4                                           ; $5a74: $f4
	ldh [c], a                                       ; $5a75: $e2
	nop                                              ; $5a76: $00
	inc h                                            ; $5a77: $24
	inc b                                            ; $5a78: $04
	ldh [c], a                                       ; $5a79: $e2
	inc b                                            ; $5a7a: $04
	inc h                                            ; $5a7b: $24
	db $fc                                           ; $5a7c: $fc
	ldh a, [c]                                       ; $5a7d: $f2
	ld a, [bc]                                       ; $5a7e: $0a
	daa                                              ; $5a7f: $27
	db $fc                                           ; $5a80: $fc
	ldh [c], a                                       ; $5a81: $e2
	inc e                                            ; $5a82: $1c
	inc h                                            ; $5a83: $24
	db $f4                                           ; $5a84: $f4
	ldh a, [c]                                       ; $5a85: $f2
	inc h                                            ; $5a86: $24
	ld h, $04                                        ; $5a87: $26 $04
	ldh a, [c]                                       ; $5a89: $f2
	ld h, $26                                        ; $5a8a: $26 $26
	db $f4                                           ; $5a8c: $f4
	ldh [c], a                                       ; $5a8d: $e2
	nop                                              ; $5a8e: $00
	inc h                                            ; $5a8f: $24
	inc b                                            ; $5a90: $04
	ldh [c], a                                       ; $5a91: $e2
	inc b                                            ; $5a92: $04
	inc h                                            ; $5a93: $24
	db $fc                                           ; $5a94: $fc
	ldh a, [c]                                       ; $5a95: $f2
	ld a, [bc]                                       ; $5a96: $0a
	daa                                              ; $5a97: $27
	db $fc                                           ; $5a98: $fc
	ldh [c], a                                       ; $5a99: $e2
	ld e, $24                                        ; $5a9a: $1e $24
	db $f4                                           ; $5a9c: $f4
	ldh a, [c]                                       ; $5a9d: $f2
	inc h                                            ; $5a9e: $24
	ld h, $04                                        ; $5a9f: $26 $04
	ldh a, [c]                                       ; $5aa1: $f2
	ld h, $26                                        ; $5aa2: $26 $26
	db $f4                                           ; $5aa4: $f4
	ldh [c], a                                       ; $5aa5: $e2
	nop                                              ; $5aa6: $00
	inc h                                            ; $5aa7: $24
	inc b                                            ; $5aa8: $04
	ldh [c], a                                       ; $5aa9: $e2
	inc b                                            ; $5aaa: $04
	inc h                                            ; $5aab: $24
	db $fc                                           ; $5aac: $fc
	ldh a, [c]                                       ; $5aad: $f2
	ld a, [bc]                                       ; $5aae: $0a
	daa                                              ; $5aaf: $27
	inc b                                            ; $5ab0: $04
	ldh a, [c]                                       ; $5ab1: $f2
	ld a, [bc]                                       ; $5ab2: $0a
	inc h                                            ; $5ab3: $24
	db $fc                                           ; $5ab4: $fc
	ldh a, [c]                                       ; $5ab5: $f2
	ld [$f424], sp                                   ; $5ab6: $08 $24 $f4
	ldh a, [c]                                       ; $5ab9: $f2
	ld b, $24                                        ; $5aba: $06 $24
	inc b                                            ; $5abc: $04
	ldh [c], a                                       ; $5abd: $e2
	inc b                                            ; $5abe: $04
	inc h                                            ; $5abf: $24
	db $fc                                           ; $5ac0: $fc
	ldh [c], a                                       ; $5ac1: $e2
	ld [bc], a                                       ; $5ac2: $02
	inc h                                            ; $5ac3: $24
	db $f4                                           ; $5ac4: $f4
	ldh [c], a                                       ; $5ac5: $e2
	nop                                              ; $5ac6: $00
	dec h                                            ; $5ac7: $25
	inc b                                            ; $5ac8: $04
	ldh a, [c]                                       ; $5ac9: $f2
	ld a, [bc]                                       ; $5aca: $0a
	inc h                                            ; $5acb: $24
	db $fc                                           ; $5acc: $fc
	ldh a, [c]                                       ; $5acd: $f2
	ld [$f424], sp                                   ; $5ace: $08 $24 $f4
	ldh a, [c]                                       ; $5ad1: $f2
	ld b, $24                                        ; $5ad2: $06 $24
	inc b                                            ; $5ad4: $04
	ldh [c], a                                       ; $5ad5: $e2
	inc b                                            ; $5ad6: $04
	inc h                                            ; $5ad7: $24
	db $fc                                           ; $5ad8: $fc
	ldh [c], a                                       ; $5ad9: $e2
	ld [bc], a                                       ; $5ada: $02
	inc h                                            ; $5adb: $24
	db $f4                                           ; $5adc: $f4
	ldh [c], a                                       ; $5add: $e2
	nop                                              ; $5ade: $00
	dec h                                            ; $5adf: $25
	db $f4                                           ; $5ae0: $f4
	di                                               ; $5ae1: $f3
	inc c                                            ; $5ae2: $0c
	inc h                                            ; $5ae3: $24
	db $fc                                           ; $5ae4: $fc
	di                                               ; $5ae5: $f3
	ld c, $24                                        ; $5ae6: $0e $24
	inc b                                            ; $5ae8: $04
	di                                               ; $5ae9: $f3
	ld a, [bc]                                       ; $5aea: $0a
	inc h                                            ; $5aeb: $24
	inc b                                            ; $5aec: $04
	db $e3                                           ; $5aed: $e3
	inc b                                            ; $5aee: $04
	inc h                                            ; $5aef: $24
	db $fc                                           ; $5af0: $fc
	db $e3                                           ; $5af1: $e3
	ld [bc], a                                       ; $5af2: $02
	inc h                                            ; $5af3: $24
	db $f4                                           ; $5af4: $f4
	db $e3                                           ; $5af5: $e3
	nop                                              ; $5af6: $00
	dec h                                            ; $5af7: $25
	inc b                                            ; $5af8: $04
	ldh a, [c]                                       ; $5af9: $f2
	inc c                                            ; $5afa: $0c
	inc h                                            ; $5afb: $24
	db $fc                                           ; $5afc: $fc
	ldh a, [c]                                       ; $5afd: $f2
	ld a, [bc]                                       ; $5afe: $0a
	inc h                                            ; $5aff: $24
	db $f4                                           ; $5b00: $f4
	ldh a, [c]                                       ; $5b01: $f2
	ld [$0424], sp                                   ; $5b02: $08 $24 $04
	ldh [c], a                                       ; $5b05: $e2
	inc b                                            ; $5b06: $04
	inc h                                            ; $5b07: $24
	db $fc                                           ; $5b08: $fc
	ldh [c], a                                       ; $5b09: $e2
	ld [bc], a                                       ; $5b0a: $02
	inc h                                            ; $5b0b: $24
	db $f4                                           ; $5b0c: $f4
	ldh [c], a                                       ; $5b0d: $e2
	nop                                              ; $5b0e: $00
	dec h                                            ; $5b0f: $25
	db $f4                                           ; $5b10: $f4
	di                                               ; $5b11: $f3
	ld c, $24                                        ; $5b12: $0e $24
	db $fc                                           ; $5b14: $fc
	di                                               ; $5b15: $f3
	db $10                                           ; $5b16: $10
	inc h                                            ; $5b17: $24
	db $fc                                           ; $5b18: $fc
	db $e3                                           ; $5b19: $e3
	ld b, $24                                        ; $5b1a: $06 $24
	inc b                                            ; $5b1c: $04
	di                                               ; $5b1d: $f3
	inc c                                            ; $5b1e: $0c
	inc h                                            ; $5b1f: $24
	inc b                                            ; $5b20: $04
	db $e3                                           ; $5b21: $e3
	inc b                                            ; $5b22: $04
	inc h                                            ; $5b23: $24
	db $f4                                           ; $5b24: $f4
	db $e3                                           ; $5b25: $e3
	nop                                              ; $5b26: $00
	dec h                                            ; $5b27: $25
	inc b                                            ; $5b28: $04
	ldh a, [c]                                       ; $5b29: $f2
	ld a, [bc]                                       ; $5b2a: $0a
	inc h                                            ; $5b2b: $24
	db $fc                                           ; $5b2c: $fc
	ldh a, [c]                                       ; $5b2d: $f2
	ld [$f424], sp                                   ; $5b2e: $08 $24 $f4
	ldh a, [c]                                       ; $5b31: $f2
	ld b, $24                                        ; $5b32: $06 $24
	inc b                                            ; $5b34: $04
	ldh [c], a                                       ; $5b35: $e2
	inc b                                            ; $5b36: $04
	inc h                                            ; $5b37: $24
	db $fc                                           ; $5b38: $fc
	ldh [c], a                                       ; $5b39: $e2
	ld [bc], a                                       ; $5b3a: $02
	inc h                                            ; $5b3b: $24
	db $f4                                           ; $5b3c: $f4
	ldh [c], a                                       ; $5b3d: $e2
	nop                                              ; $5b3e: $00
	dec h                                            ; $5b3f: $25
	inc b                                            ; $5b40: $04
	di                                               ; $5b41: $f3
	ld d, $24                                        ; $5b42: $16 $24
	db $fc                                           ; $5b44: $fc
	di                                               ; $5b45: $f3
	inc d                                            ; $5b46: $14
	inc h                                            ; $5b47: $24
	db $f4                                           ; $5b48: $f4
	di                                               ; $5b49: $f3
	ld [de], a                                       ; $5b4a: $12
	inc h                                            ; $5b4b: $24
	inc b                                            ; $5b4c: $04
	db $e3                                           ; $5b4d: $e3
	db $10                                           ; $5b4e: $10
	inc h                                            ; $5b4f: $24
	db $fc                                           ; $5b50: $fc
	db $e3                                           ; $5b51: $e3
	ld c, $24                                        ; $5b52: $0e $24
	db $f4                                           ; $5b54: $f4
	db $e3                                           ; $5b55: $e3
	inc c                                            ; $5b56: $0c
	dec h                                            ; $5b57: $25
	db $f4                                           ; $5b58: $f4
	ldh a, [c]                                       ; $5b59: $f2
	ld e, $64                                        ; $5b5a: $1e $64
	db $fc                                           ; $5b5c: $fc
	ldh a, [c]                                       ; $5b5d: $f2
	inc e                                            ; $5b5e: $1c
	ld h, h                                          ; $5b5f: $64
	inc b                                            ; $5b60: $04
	ldh a, [c]                                       ; $5b61: $f2
	ld a, [de]                                       ; $5b62: $1a
	ld h, h                                          ; $5b63: $64
	db $f4                                           ; $5b64: $f4
	ldh [c], a                                       ; $5b65: $e2
	inc b                                            ; $5b66: $04
	ld h, h                                          ; $5b67: $64
	db $fc                                           ; $5b68: $fc
	ldh [c], a                                       ; $5b69: $e2
	jr jr_00d_5bd0                                   ; $5b6a: $18 $64

	inc b                                            ; $5b6c: $04
	ldh [c], a                                       ; $5b6d: $e2
	nop                                              ; $5b6e: $00
	ld h, l                                          ; $5b6f: $65
	db $f4                                           ; $5b70: $f4
	di                                               ; $5b71: $f3
	ld a, [hl+]                                      ; $5b72: $2a
	ld h, h                                          ; $5b73: $64
	db $fc                                           ; $5b74: $fc
	di                                               ; $5b75: $f3
	jr z, jr_00d_5bdc                                ; $5b76: $28 $64

	inc b                                            ; $5b78: $04
	di                                               ; $5b79: $f3
	ld h, $64                                        ; $5b7a: $26 $64
	db $f4                                           ; $5b7c: $f4
	db $e3                                           ; $5b7d: $e3
	inc h                                            ; $5b7e: $24
	ld h, h                                          ; $5b7f: $64
	inc b                                            ; $5b80: $04
	db $e3                                           ; $5b81: $e3
	jr nz, jr_00d_5be8                               ; $5b82: $20 $64

	db $fc                                           ; $5b84: $fc
	db $e3                                           ; $5b85: $e3
	ld [hl+], a                                      ; $5b86: $22
	ld h, l                                          ; $5b87: $65
	inc b                                            ; $5b88: $04
	ldh a, [c]                                       ; $5b89: $f2
	ld a, [bc]                                       ; $5b8a: $0a
	inc h                                            ; $5b8b: $24
	db $fc                                           ; $5b8c: $fc
	ldh a, [c]                                       ; $5b8d: $f2
	ld [$f424], sp                                   ; $5b8e: $08 $24 $f4
	ldh a, [c]                                       ; $5b91: $f2
	ld b, $26                                        ; $5b92: $06 $26
	inc b                                            ; $5b94: $04
	ldh [c], a                                       ; $5b95: $e2
	inc b                                            ; $5b96: $04
	inc h                                            ; $5b97: $24
	db $fc                                           ; $5b98: $fc
	ldh [c], a                                       ; $5b99: $e2
	ld [bc], a                                       ; $5b9a: $02
	inc h                                            ; $5b9b: $24
	db $f4                                           ; $5b9c: $f4
	ldh [c], a                                       ; $5b9d: $e2
	nop                                              ; $5b9e: $00
	dec h                                            ; $5b9f: $25
	inc b                                            ; $5ba0: $04
	ldh a, [c]                                       ; $5ba1: $f2
	ld [de], a                                       ; $5ba2: $12
	inc h                                            ; $5ba3: $24
	db $fc                                           ; $5ba4: $fc
	ldh a, [c]                                       ; $5ba5: $f2
	db $10                                           ; $5ba6: $10
	inc h                                            ; $5ba7: $24
	db $f4                                           ; $5ba8: $f4
	ldh a, [c]                                       ; $5ba9: $f2
	ld c, $26                                        ; $5baa: $0e $26
	db $ec                                           ; $5bac: $ec
	ldh a, [c]                                       ; $5bad: $f2
	inc c                                            ; $5bae: $0c
	ld h, $04                                        ; $5baf: $26 $04
	ldh [c], a                                       ; $5bb1: $e2
	inc b                                            ; $5bb2: $04
	inc h                                            ; $5bb3: $24
	db $fc                                           ; $5bb4: $fc
	ldh [c], a                                       ; $5bb5: $e2
	ld [bc], a                                       ; $5bb6: $02
	inc h                                            ; $5bb7: $24
	db $f4                                           ; $5bb8: $f4
	ldh [c], a                                       ; $5bb9: $e2
	nop                                              ; $5bba: $00
	dec h                                            ; $5bbb: $25
	add sp, -$1d                                     ; $5bbc: $e8 $e3
	inc h                                            ; $5bbe: $24
	ld h, $03                                        ; $5bbf: $26 $03
	ldh a, [c]                                       ; $5bc1: $f2
	jr nz, jr_00d_5be8                               ; $5bc2: $20 $24

	ei                                               ; $5bc4: $fb
	ldh a, [c]                                       ; $5bc5: $f2
	ld e, $24                                        ; $5bc6: $1e $24
	inc bc                                           ; $5bc8: $03
	ldh [c], a                                       ; $5bc9: $e2
	ld a, [de]                                       ; $5bca: $1a
	inc h                                            ; $5bcb: $24
	ei                                               ; $5bcc: $fb
	ldh [c], a                                       ; $5bcd: $e2
	jr jr_00d_5bf4                                   ; $5bce: $18 $24

jr_00d_5bd0:
	di                                               ; $5bd0: $f3
	ldh a, [c]                                       ; $5bd1: $f2
	inc e                                            ; $5bd2: $1c
	ld h, $eb                                        ; $5bd3: $26 $eb
	ld [$2614], a                                    ; $5bd5: $ea $14 $26
	di                                               ; $5bd8: $f3
	ldh [c], a                                       ; $5bd9: $e2
	ld d, $27                                        ; $5bda: $16 $27

jr_00d_5bdc:
	sbc $d6                                          ; $5bdc: $de $d6
	inc h                                            ; $5bde: $24
	ld h, $ec                                        ; $5bdf: $26 $ec
	rst SubAFromDE                                          ; $5be1: $df
	jr z, jr_00d_5c0a                                ; $5be2: $28 $26

	db $e4                                           ; $5be4: $e4
	rst SubAFromDE                                          ; $5be5: $df
	ld h, $26                                        ; $5be6: $26 $26

jr_00d_5be8:
	ei                                               ; $5be8: $fb
	ldh a, [c]                                       ; $5be9: $f2
	ld [hl+], a                                      ; $5bea: $22
	inc h                                            ; $5beb: $24
	inc bc                                           ; $5bec: $03
	ldh a, [c]                                       ; $5bed: $f2
	jr nz, jr_00d_5c14                               ; $5bee: $20 $24

	inc bc                                           ; $5bf0: $03
	ldh [c], a                                       ; $5bf1: $e2
	ld a, [de]                                       ; $5bf2: $1a
	inc h                                            ; $5bf3: $24

jr_00d_5bf4:
	ei                                               ; $5bf4: $fb
	ldh [c], a                                       ; $5bf5: $e2
	jr jr_00d_5c1c                                   ; $5bf6: $18 $24

	di                                               ; $5bf8: $f3
	ldh a, [c]                                       ; $5bf9: $f2
	inc e                                            ; $5bfa: $1c
	ld h, $eb                                        ; $5bfb: $26 $eb
	ld [$2614], a                                    ; $5bfd: $ea $14 $26
	di                                               ; $5c00: $f3
	ldh [c], a                                       ; $5c01: $e2
	ld d, $27                                        ; $5c02: $16 $27
	inc b                                            ; $5c04: $04
	ldh a, [c]                                       ; $5c05: $f2
	inc c                                            ; $5c06: $0c
	inc h                                            ; $5c07: $24
	db $fc                                           ; $5c08: $fc
	ldh a, [c]                                       ; $5c09: $f2

jr_00d_5c0a:
	ld a, [bc]                                       ; $5c0a: $0a
	inc h                                            ; $5c0b: $24
	db $f4                                           ; $5c0c: $f4
	ldh a, [c]                                       ; $5c0d: $f2
	ld [$ec26], sp                                   ; $5c0e: $08 $26 $ec
	ldh a, [c]                                       ; $5c11: $f2
	ld b, $26                                        ; $5c12: $06 $26

jr_00d_5c14:
	inc b                                            ; $5c14: $04
	ldh [c], a                                       ; $5c15: $e2
	inc b                                            ; $5c16: $04
	inc h                                            ; $5c17: $24
	db $fc                                           ; $5c18: $fc
	ldh [c], a                                       ; $5c19: $e2
	ld [bc], a                                       ; $5c1a: $02
	inc h                                            ; $5c1b: $24

jr_00d_5c1c:
	db $f4                                           ; $5c1c: $f4
	ldh [c], a                                       ; $5c1d: $e2
	nop                                              ; $5c1e: $00
	dec h                                            ; $5c1f: $25
	inc b                                            ; $5c20: $04
	ldh a, [c]                                       ; $5c21: $f2
	ld a, [bc]                                       ; $5c22: $0a
	inc h                                            ; $5c23: $24
	db $f4                                           ; $5c24: $f4
	ldh a, [c]                                       ; $5c25: $f2
	ld b, $24                                        ; $5c26: $06 $24
	db $fc                                           ; $5c28: $fc
	ldh a, [c]                                       ; $5c29: $f2
	ld [$0426], sp                                   ; $5c2a: $08 $26 $04
	ldh [c], a                                       ; $5c2d: $e2
	inc b                                            ; $5c2e: $04
	inc h                                            ; $5c2f: $24
	db $fc                                           ; $5c30: $fc
	ldh [c], a                                       ; $5c31: $e2
	ld [bc], a                                       ; $5c32: $02
	inc h                                            ; $5c33: $24
	db $f4                                           ; $5c34: $f4
	ldh [c], a                                       ; $5c35: $e2
	nop                                              ; $5c36: $00
	dec h                                            ; $5c37: $25
	inc b                                            ; $5c38: $04
	ldh [c], a                                       ; $5c39: $e2
	inc b                                            ; $5c3a: $04
	inc h                                            ; $5c3b: $24
	inc b                                            ; $5c3c: $04
	ldh a, [c]                                       ; $5c3d: $f2
	ld a, [bc]                                       ; $5c3e: $0a
	inc h                                            ; $5c3f: $24
	db $fc                                           ; $5c40: $fc
	ldh a, [c]                                       ; $5c41: $f2
	ld [$f426], sp                                   ; $5c42: $08 $26 $f4
	ldh a, [c]                                       ; $5c45: $f2
	ld b, $24                                        ; $5c46: $06 $24
	db $fc                                           ; $5c48: $fc
	ldh [c], a                                       ; $5c49: $e2
	ld [bc], a                                       ; $5c4a: $02
	inc h                                            ; $5c4b: $24
	db $f4                                           ; $5c4c: $f4
	ldh [c], a                                       ; $5c4d: $e2
	nop                                              ; $5c4e: $00
	dec h                                            ; $5c4f: $25
	inc b                                            ; $5c50: $04
	di                                               ; $5c51: $f3
	ld a, [bc]                                       ; $5c52: $0a
	inc h                                            ; $5c53: $24
	db $f4                                           ; $5c54: $f4
	di                                               ; $5c55: $f3
	ld b, $24                                        ; $5c56: $06 $24
	db $fc                                           ; $5c58: $fc
	di                                               ; $5c59: $f3
	inc c                                            ; $5c5a: $0c
	ld h, $04                                        ; $5c5b: $26 $04
	db $e3                                           ; $5c5d: $e3
	inc b                                            ; $5c5e: $04
	inc h                                            ; $5c5f: $24
	db $fc                                           ; $5c60: $fc
	db $e3                                           ; $5c61: $e3
	ld [bc], a                                       ; $5c62: $02
	inc h                                            ; $5c63: $24
	db $f4                                           ; $5c64: $f4
	db $e3                                           ; $5c65: $e3
	nop                                              ; $5c66: $00
	dec h                                            ; $5c67: $25
	inc b                                            ; $5c68: $04
	ldh a, [c]                                       ; $5c69: $f2
	ld a, [bc]                                       ; $5c6a: $0a
	inc h                                            ; $5c6b: $24
	db $fc                                           ; $5c6c: $fc
	ldh a, [c]                                       ; $5c6d: $f2
	ld [$f426], sp                                   ; $5c6e: $08 $26 $f4
	ldh a, [c]                                       ; $5c71: $f2
	ld b, $24                                        ; $5c72: $06 $24
	inc b                                            ; $5c74: $04
	ldh [c], a                                       ; $5c75: $e2
	inc b                                            ; $5c76: $04
	inc h                                            ; $5c77: $24
	db $fc                                           ; $5c78: $fc
	ldh [c], a                                       ; $5c79: $e2
	ld [bc], a                                       ; $5c7a: $02
	inc h                                            ; $5c7b: $24
	db $f4                                           ; $5c7c: $f4
	ldh [c], a                                       ; $5c7d: $e2
	nop                                              ; $5c7e: $00
	dec h                                            ; $5c7f: $25
	db $f4                                           ; $5c80: $f4
	db $e3                                           ; $5c81: $e3
	inc d                                            ; $5c82: $14
	inc h                                            ; $5c83: $24
	inc b                                            ; $5c84: $04
	di                                               ; $5c85: $f3
	ld [de], a                                       ; $5c86: $12
	inc h                                            ; $5c87: $24
	db $f4                                           ; $5c88: $f4
	di                                               ; $5c89: $f3
	ld c, $24                                        ; $5c8a: $0e $24
	db $fc                                           ; $5c8c: $fc
	di                                               ; $5c8d: $f3
	db $10                                           ; $5c8e: $10
	ld h, $fc                                        ; $5c8f: $26 $fc
	db $e3                                           ; $5c91: $e3
	inc c                                            ; $5c92: $0c
	inc h                                            ; $5c93: $24
	inc b                                            ; $5c94: $04
	db $e3                                           ; $5c95: $e3
	inc b                                            ; $5c96: $04
	dec h                                            ; $5c97: $25
	inc b                                            ; $5c98: $04
	ldh [c], a                                       ; $5c99: $e2
	inc b                                            ; $5c9a: $04
	inc h                                            ; $5c9b: $24
	inc b                                            ; $5c9c: $04
	ldh a, [c]                                       ; $5c9d: $f2
	ld a, [bc]                                       ; $5c9e: $0a
	inc h                                            ; $5c9f: $24
	db $fc                                           ; $5ca0: $fc
	ldh a, [c]                                       ; $5ca1: $f2
	ld [$f426], sp                                   ; $5ca2: $08 $26 $f4
	ldh a, [c]                                       ; $5ca5: $f2
	ld b, $24                                        ; $5ca6: $06 $24
	db $fc                                           ; $5ca8: $fc
	ldh [c], a                                       ; $5ca9: $e2
	ld [bc], a                                       ; $5caa: $02
	inc h                                            ; $5cab: $24
	db $f4                                           ; $5cac: $f4
	ldh [c], a                                       ; $5cad: $e2
	nop                                              ; $5cae: $00
	dec h                                            ; $5caf: $25
	inc b                                            ; $5cb0: $04
	ldh a, [c]                                       ; $5cb1: $f2
	ld [de], a                                       ; $5cb2: $12
	inc h                                            ; $5cb3: $24
	db $f4                                           ; $5cb4: $f4
	ldh a, [c]                                       ; $5cb5: $f2
	db $10                                           ; $5cb6: $10
	inc h                                            ; $5cb7: $24
	db $fc                                           ; $5cb8: $fc
	ldh [c], a                                       ; $5cb9: $e2
	ld c, $24                                        ; $5cba: $0e $24
	db $f4                                           ; $5cbc: $f4
	ldh [c], a                                       ; $5cbd: $e2
	inc c                                            ; $5cbe: $0c
	inc h                                            ; $5cbf: $24
	inc b                                            ; $5cc0: $04
	ldh [c], a                                       ; $5cc1: $e2
	inc b                                            ; $5cc2: $04
	inc h                                            ; $5cc3: $24
	db $fc                                           ; $5cc4: $fc
	ldh a, [c]                                       ; $5cc5: $f2
	ld [$fc27], sp                                   ; $5cc6: $08 $27 $fc
	ldh a, [c]                                       ; $5cc9: $f2
	jr jr_00d_5cf2                                   ; $5cca: $18 $26

	inc b                                            ; $5ccc: $04
	ldh a, [c]                                       ; $5ccd: $f2
	ld a, [de]                                       ; $5cce: $1a
	inc h                                            ; $5ccf: $24
	db $f4                                           ; $5cd0: $f4
	ldh a, [c]                                       ; $5cd1: $f2
	ld d, $24                                        ; $5cd2: $16 $24
	db $fc                                           ; $5cd4: $fc
	ldh [c], a                                       ; $5cd5: $e2
	inc d                                            ; $5cd6: $14
	inc h                                            ; $5cd7: $24
	inc b                                            ; $5cd8: $04
	ldh [c], a                                       ; $5cd9: $e2
	inc b                                            ; $5cda: $04
	inc h                                            ; $5cdb: $24
	db $f4                                           ; $5cdc: $f4
	ldh [c], a                                       ; $5cdd: $e2
	nop                                              ; $5cde: $00
	dec h                                            ; $5cdf: $25
	db $fc                                           ; $5ce0: $fc
	ldh [c], a                                       ; $5ce1: $e2
	inc e                                            ; $5ce2: $1c
	inc h                                            ; $5ce3: $24
	inc b                                            ; $5ce4: $04
	ldh a, [c]                                       ; $5ce5: $f2
	ld a, [de]                                       ; $5ce6: $1a
	inc h                                            ; $5ce7: $24
	db $f4                                           ; $5ce8: $f4
	ldh a, [c]                                       ; $5ce9: $f2
	ld d, $24                                        ; $5cea: $16 $24
	db $fc                                           ; $5cec: $fc
	ldh a, [c]                                       ; $5ced: $f2
	jr jr_00d_5d16                                   ; $5cee: $18 $26

	inc b                                            ; $5cf0: $04
	ldh [c], a                                       ; $5cf1: $e2

jr_00d_5cf2:
	inc b                                            ; $5cf2: $04
	inc h                                            ; $5cf3: $24
	db $f4                                           ; $5cf4: $f4
	ldh [c], a                                       ; $5cf5: $e2
	nop                                              ; $5cf6: $00
	dec h                                            ; $5cf7: $25
	inc b                                            ; $5cf8: $04
	ldh a, [c]                                       ; $5cf9: $f2
	ld a, [bc]                                       ; $5cfa: $0a
	ld [hl+], a                                      ; $5cfb: $22
	db $fc                                           ; $5cfc: $fc
	ldh a, [c]                                       ; $5cfd: $f2
	ld [$f422], sp                                   ; $5cfe: $08 $22 $f4

jr_00d_5d01:
	ldh a, [c]                                       ; $5d01: $f2
	ld b, $22                                        ; $5d02: $06 $22
	inc b                                            ; $5d04: $04

jr_00d_5d05:
	ldh [c], a                                       ; $5d05: $e2
	inc b                                            ; $5d06: $04
	jr nz, jr_00d_5d05                               ; $5d07: $20 $fc

	ldh [c], a                                       ; $5d09: $e2
	ld [bc], a                                       ; $5d0a: $02
	jr nz, jr_00d_5d01                               ; $5d0b: $20 $f4

	ldh [c], a                                       ; $5d0d: $e2
	nop                                              ; $5d0e: $00
	ld hl, $f200                                     ; $5d0f: $21 $00 $f2
	ld [$f822], sp                                   ; $5d12: $08 $22 $f8

jr_00d_5d15:
	ldh a, [c]                                       ; $5d15: $f2

jr_00d_5d16:
	ld b, $22                                        ; $5d16: $06 $22
	inc b                                            ; $5d18: $04

jr_00d_5d19:
	ldh [c], a                                       ; $5d19: $e2
	inc b                                            ; $5d1a: $04
	jr nz, jr_00d_5d19                               ; $5d1b: $20 $fc

	ldh [c], a                                       ; $5d1d: $e2
	ld [bc], a                                       ; $5d1e: $02
	jr nz, jr_00d_5d15                               ; $5d1f: $20 $f4

	ldh [c], a                                       ; $5d21: $e2
	nop                                              ; $5d22: $00
	ld hl, $f204                                     ; $5d23: $21 $04 $f2
	ld [de], a                                       ; $5d26: $12
	ld [hl+], a                                      ; $5d27: $22
	db $fc                                           ; $5d28: $fc

jr_00d_5d29:
	ldh a, [c]                                       ; $5d29: $f2
	db $10                                           ; $5d2a: $10
	ld [hl+], a                                      ; $5d2b: $22
	db $f4                                           ; $5d2c: $f4
	ldh a, [c]                                       ; $5d2d: $f2
	ld c, $22                                        ; $5d2e: $0e $22
	inc b                                            ; $5d30: $04
	ldh [c], a                                       ; $5d31: $e2
	inc c                                            ; $5d32: $0c
	jr nz, jr_00d_5d29                               ; $5d33: $20 $f4

jr_00d_5d35:
	ldh [c], a                                       ; $5d35: $e2
	ld a, [bc]                                       ; $5d36: $0a
	jr nz, jr_00d_5d35                               ; $5d37: $20 $fc

	ldh [c], a                                       ; $5d39: $e2
	ld [bc], a                                       ; $5d3a: $02
	ld hl, $e2f2                                     ; $5d3b: $21 $f2 $e2
	inc d                                            ; $5d3e: $14
	ld [hl+], a                                      ; $5d3f: $22
	ld a, [$16e2]                                    ; $5d40: $fa $e2 $16
	jr nz, @+$04                                     ; $5d43: $20 $02

	ldh [c], a                                       ; $5d45: $e2
	jr jr_00d_5d68                                   ; $5d46: $18 $20

	rst $38                                          ; $5d48: $ff
	ldh a, [c]                                       ; $5d49: $f2
	inc e                                            ; $5d4a: $1c
	ld [hl+], a                                      ; $5d4b: $22
	rst FarCall                                          ; $5d4c: $f7
	ldh a, [c]                                       ; $5d4d: $f2
	ld a, [de]                                       ; $5d4e: $1a
	inc hl                                           ; $5d4f: $23
	ld [$46e0], sp                                   ; $5d50: $08 $e0 $46
	ld [hl+], a                                      ; $5d53: $22
	nop                                              ; $5d54: $00

jr_00d_5d55:
	ldh a, [c]                                       ; $5d55: $f2
	ld b, [hl]                                       ; $5d56: $46
	ld [hl+], a                                      ; $5d57: $22
	ldh a, [$ea]                                     ; $5d58: $f0 $ea
	ld b, d                                          ; $5d5a: $42
	jr nz, jr_00d_5d55                               ; $5d5b: $20 $f8

	ld [$2044], a                                    ; $5d5d: $ea $44 $20
	ld [$40e2], sp                                   ; $5d60: $08 $e2 $40
	ld [hl+], a                                      ; $5d63: $22
	nop                                              ; $5d64: $00
	ldh [c], a                                       ; $5d65: $e2
	ld a, $22                                        ; $5d66: $3e $22

jr_00d_5d68:
	ld hl, sp-$26                                    ; $5d68: $f8 $da
	inc a                                            ; $5d6a: $3c
	ld [hl+], a                                      ; $5d6b: $22
	nop                                              ; $5d6c: $00
	jp nc, $213a                                     ; $5d6d: $d2 $3a $21

	dec b                                            ; $5d70: $05
	rst SubAFromHL                                          ; $5d71: $d7
	ld c, b                                          ; $5d72: $48
	ld [hl+], a                                      ; $5d73: $22
	dec b                                            ; $5d74: $05
	rst SubAFromBC                                          ; $5d75: $e7
	jr z, @+$22                                      ; $5d76: $28 $20

	db $fd                                           ; $5d78: $fd
	rst SubAFromBC                                          ; $5d79: $e7
	ld h, $20                                        ; $5d7a: $26 $20
	db $fd                                           ; $5d7c: $fd
	rst SubAFromHL                                          ; $5d7d: $d7
	inc h                                            ; $5d7e: $24
	ld [hl+], a                                      ; $5d7f: $22
	push af                                          ; $5d80: $f5
	rst SubAFromBC                                          ; $5d81: $e7
	ld [hl+], a                                      ; $5d82: $22
	ld [hl+], a                                      ; $5d83: $22
	push af                                          ; $5d84: $f5
	rst SubAFromHL                                          ; $5d85: $d7
	jr nz, jr_00d_5da8                               ; $5d86: $20 $20

	db $ed                                           ; $5d88: $ed
	ldh [rAUD3HIGH], a                               ; $5d89: $e0 $1e
	ld hl, $f807                                     ; $5d8b: $21 $07 $f8
	inc [hl]                                         ; $5d8e: $34
	jr nz, @+$01                                     ; $5d8f: $20 $ff

	ld hl, sp+$32                                    ; $5d91: $f8 $32
	jr nz, @+$09                                     ; $5d93: $20 $07

	add sp, $30                                      ; $5d95: $e8 $30
	jr nz, @+$01                                     ; $5d97: $20 $ff

	add sp, $2e                                      ; $5d99: $e8 $2e
	jr nz, @-$07                                     ; $5d9b: $20 $f7

	ldh a, [$2c]                                     ; $5d9d: $f0 $2c
	ld [hl+], a                                      ; $5d9f: $22
	rst AddAOntoHL                                          ; $5da0: $ef
	ldh a, [$2a]                                     ; $5da1: $f0 $2a
	inc hl                                           ; $5da3: $23
	nop                                              ; $5da4: $00
	ld hl, sp+$3c                                    ; $5da5: $f8 $3c
	ld a, [hl+]                                      ; $5da7: $2a

jr_00d_5da8:
	ld hl, sp-$08                                    ; $5da8: $f8 $f8
	ld a, [hl-]                                      ; $5daa: $3a
	dec hl                                           ; $5dab: $2b
	ld bc, $38f7                                     ; $5dac: $01 $f7 $38
	ld a, [hl+]                                      ; $5daf: $2a
	ld sp, hl                                        ; $5db0: $f9
	rst FarCall                                          ; $5db1: $f7

jr_00d_5db2:
	ld [hl], $2b                                     ; $5db2: $36 $2b
	ld bc, $38f5                                     ; $5db4: $01 $f5 $38
	jr z, jr_00d_5db2                                ; $5db7: $28 $f9

	push af                                          ; $5db9: $f5
	ld [hl], $29                                     ; $5dba: $36 $29
	inc b                                            ; $5dbc: $04

jr_00d_5dbd:
	ldh a, [c]                                       ; $5dbd: $f2
	ld a, [bc]                                       ; $5dbe: $0a
	jr nz, jr_00d_5dbd                               ; $5dbf: $20 $fc

	ldh a, [c]                                       ; $5dc1: $f2
	ld [$f420], sp                                   ; $5dc2: $08 $20 $f4

jr_00d_5dc5:
	ldh a, [c]                                       ; $5dc5: $f2
	ld b, $20                                        ; $5dc6: $06 $20
	inc b                                            ; $5dc8: $04

jr_00d_5dc9:
	ldh [c], a                                       ; $5dc9: $e2
	inc b                                            ; $5dca: $04
	jr nz, jr_00d_5dc9                               ; $5dcb: $20 $fc

	ldh [c], a                                       ; $5dcd: $e2
	ld [bc], a                                       ; $5dce: $02
	jr nz, jr_00d_5dc5                               ; $5dcf: $20 $f4

	ldh [c], a                                       ; $5dd1: $e2
	nop                                              ; $5dd2: $00
	ld hl, $f204                                     ; $5dd3: $21 $04 $f2
	ld a, [bc]                                       ; $5dd6: $0a
	jr nz, @-$02                                     ; $5dd7: $20 $fc

	ldh a, [c]                                       ; $5dd9: $f2
	ld [$f420], sp                                   ; $5dda: $08 $20 $f4

jr_00d_5ddd:
	ldh a, [c]                                       ; $5ddd: $f2
	ld b, $20                                        ; $5dde: $06 $20
	inc b                                            ; $5de0: $04

jr_00d_5de1:
	ldh [c], a                                       ; $5de1: $e2
	inc b                                            ; $5de2: $04
	jr nz, jr_00d_5de1                               ; $5de3: $20 $fc

	ldh [c], a                                       ; $5de5: $e2
	ld [bc], a                                       ; $5de6: $02
	jr nz, jr_00d_5ddd                               ; $5de7: $20 $f4

	ldh [c], a                                       ; $5de9: $e2
	nop                                              ; $5dea: $00
	ld hl, $f000                                     ; $5deb: $21 $00 $f0
	ld b, h                                          ; $5dee: $44
	ld a, [hl+]                                      ; $5def: $2a
	ld hl, sp-$10                                    ; $5df0: $f8 $f0
	ld b, d                                          ; $5df2: $42
	dec hl                                           ; $5df3: $2b
	ld hl, sp-$10                                    ; $5df4: $f8 $f0
	ld a, $2a                                        ; $5df6: $3e $2a
	nop                                              ; $5df8: $00
	ldh a, [rLCDC]                                   ; $5df9: $f0 $40
	dec hl                                           ; $5dfb: $2b
	nop                                              ; $5dfc: $00
	ldh a, [rLCDC]                                   ; $5dfd: $f0 $40
	ld a, [hl+]                                      ; $5dff: $2a
	ld hl, sp-$10                                    ; $5e00: $f8 $f0
	ld a, $2b                                        ; $5e02: $3e $2b
	inc b                                            ; $5e04: $04
	ldh a, [$3c]                                     ; $5e05: $f0 $3c
	ld a, [hl+]                                      ; $5e07: $2a
	db $f4                                           ; $5e08: $f4
	ldh a, [$38]                                     ; $5e09: $f0 $38
	ld a, [hl+]                                      ; $5e0b: $2a
	db $fc                                           ; $5e0c: $fc
	ldh a, [$3a]                                     ; $5e0d: $f0 $3a
	dec hl                                           ; $5e0f: $2b
	ld [$2ef0], sp                                   ; $5e10: $08 $f0 $2e
	ld a, [hl+]                                      ; $5e13: $2a
	nop                                              ; $5e14: $00
	ldh a, [$2c]                                     ; $5e15: $f0 $2c
	ld a, [hl+]                                      ; $5e17: $2a
	ld hl, sp-$10                                    ; $5e18: $f8 $f0
	ld a, [hl+]                                      ; $5e1a: $2a
	ld a, [hl+]                                      ; $5e1b: $2a
	ldh a, [$f0]                                     ; $5e1c: $f0 $f0
	jr z, jr_00d_5e4b                                ; $5e1e: $28 $2b

	ld [$36f0], sp                                   ; $5e20: $08 $f0 $36
	ld a, [hl+]                                      ; $5e23: $2a
	nop                                              ; $5e24: $00
	ldh a, [$34]                                     ; $5e25: $f0 $34
	ld a, [hl+]                                      ; $5e27: $2a
	ld hl, sp-$10                                    ; $5e28: $f8 $f0
	ld [hl-], a                                      ; $5e2a: $32
	ld a, [hl+]                                      ; $5e2b: $2a

jr_00d_5e2c:
	ldh a, [$f0]                                     ; $5e2c: $f0 $f0
	jr nc, jr_00d_5e5b                               ; $5e2e: $30 $2b

	rst $38                                          ; $5e30: $ff
	ldh a, [$0e]                                     ; $5e31: $f0 $0e
	jr z, jr_00d_5e2c                                ; $5e33: $28 $f7

	ldh a, [$0c]                                     ; $5e35: $f0 $0c
	add hl, hl                                       ; $5e37: $29

jr_00d_5e38:
	rlca                                             ; $5e38: $07
	ldh a, [rAUD1HIGH]                               ; $5e39: $f0 $14
	jr z, @+$01                                      ; $5e3b: $28 $ff

	ldh a, [rAUD1ENV]                                ; $5e3d: $f0 $12
	jr z, jr_00d_5e38                                ; $5e3f: $28 $f7

	ldh a, [rAUD1SWEEP]                              ; $5e41: $f0 $10
	jr z, @+$01                                      ; $5e43: $28 $ff

	ldh [$0e], a                                     ; $5e45: $e0 $0e
	jr z, @-$07                                      ; $5e47: $28 $f7

	ldh [$0c], a                                     ; $5e49: $e0 $0c

jr_00d_5e4b:
	add hl, hl                                       ; $5e4b: $29
	ld bc, $1af0                                     ; $5e4c: $01 $f0 $1a
	jr z, @-$05                                      ; $5e4f: $28 $f9

	ldh a, [rAUD2LOW]                                ; $5e51: $f0 $18
	jr z, @-$0d                                      ; $5e53: $28 $f1

	ldh a, [rAUD2LEN]                                ; $5e55: $f0 $16
	jr z, @+$09                                      ; $5e57: $28 $07

	ldh [rAUD1HIGH], a                               ; $5e59: $e0 $14

jr_00d_5e5b:
	jr z, @+$01                                      ; $5e5b: $28 $ff

	ldh [rAUD1ENV], a                                ; $5e5d: $e0 $12
	jr z, @-$07                                      ; $5e5f: $28 $f7

	ldh [rAUD1SWEEP], a                              ; $5e61: $e0 $10
	jr z, @+$01                                      ; $5e63: $28 $ff

	ret nc                                           ; $5e65: $d0

	ld c, $28                                        ; $5e66: $0e $28
	rst FarCall                                          ; $5e68: $f7
	ret nc                                           ; $5e69: $d0

	inc c                                            ; $5e6a: $0c

jr_00d_5e6b:
	add hl, hl                                       ; $5e6b: $29
	ld [bc], a                                       ; $5e6c: $02
	ldh a, [rAUD3HIGH]                               ; $5e6d: $f0 $1e
	jr z, jr_00d_5e6b                                ; $5e6f: $28 $fa

	ldh a, [rAUD3LEVEL]                              ; $5e71: $f0 $1c
	jr z, @+$03                                      ; $5e73: $28 $01

	ldh [rAUD3ENA], a                                ; $5e75: $e0 $1a
	jr z, @-$05                                      ; $5e77: $28 $f9

	ldh [rAUD2LOW], a                                ; $5e79: $e0 $18
	jr z, @-$0d                                      ; $5e7b: $28 $f1

	ldh [rAUD2LEN], a                                ; $5e7d: $e0 $16
	jr z, @+$09                                      ; $5e7f: $28 $07

	ret nc                                           ; $5e81: $d0

	inc d                                            ; $5e82: $14
	jr z, @+$01                                      ; $5e83: $28 $ff

	ret nc                                           ; $5e85: $d0

	ld [de], a                                       ; $5e86: $12
	jr z, @-$07                                      ; $5e87: $28 $f7

	ret nc                                           ; $5e89: $d0

	db $10                                           ; $5e8a: $10
	jr z, @+$01                                      ; $5e8b: $28 $ff

	ret nz                                           ; $5e8d: $c0

	ld c, $28                                        ; $5e8e: $0e $28
	rst FarCall                                          ; $5e90: $f7
	ret nz                                           ; $5e91: $c0

	inc c                                            ; $5e92: $0c

jr_00d_5e93:
	add hl, hl                                       ; $5e93: $29
	ld [bc], a                                       ; $5e94: $02
	ldh a, [rAUD3HIGH]                               ; $5e95: $f0 $1e
	jr z, jr_00d_5e93                                ; $5e97: $28 $fa

	ldh a, [rAUD3LEVEL]                              ; $5e99: $f0 $1c

jr_00d_5e9b:
	jr z, jr_00d_5e9f                                ; $5e9b: $28 $02

	ldh [rAUD3HIGH], a                               ; $5e9d: $e0 $1e

jr_00d_5e9f:
	jr z, jr_00d_5e9b                                ; $5e9f: $28 $fa

	ldh [rAUD3LEVEL], a                              ; $5ea1: $e0 $1c
	jr z, jr_00d_5ea6                                ; $5ea3: $28 $01

	ret nc                                           ; $5ea5: $d0

jr_00d_5ea6:
	ld a, [de]                                       ; $5ea6: $1a
	jr z, @-$05                                      ; $5ea7: $28 $f9

	ret nc                                           ; $5ea9: $d0

	jr @+$2a                                         ; $5eaa: $18 $28

	pop af                                           ; $5eac: $f1
	ret nc                                           ; $5ead: $d0

	ld d, $28                                        ; $5eae: $16 $28

jr_00d_5eb0:
	rlca                                             ; $5eb0: $07
	ret nz                                           ; $5eb1: $c0

	inc d                                            ; $5eb2: $14
	jr z, @+$01                                      ; $5eb3: $28 $ff

	ret nz                                           ; $5eb5: $c0

	ld [de], a                                       ; $5eb6: $12
	jr z, jr_00d_5eb0                                ; $5eb7: $28 $f7

	ret nz                                           ; $5eb9: $c0

	db $10                                           ; $5eba: $10
	jr z, @+$01                                      ; $5ebb: $28 $ff

	or b                                             ; $5ebd: $b0
	ld c, $28                                        ; $5ebe: $0e $28
	rst FarCall                                          ; $5ec0: $f7
	or b                                             ; $5ec1: $b0
	inc c                                            ; $5ec2: $0c

jr_00d_5ec3:
	add hl, hl                                       ; $5ec3: $29
	ld [bc], a                                       ; $5ec4: $02
	ldh a, [rAUD3HIGH]                               ; $5ec5: $f0 $1e
	jr z, jr_00d_5ec3                                ; $5ec7: $28 $fa

	ldh a, [rAUD3LEVEL]                              ; $5ec9: $f0 $1c

jr_00d_5ecb:
	jr z, jr_00d_5ecf                                ; $5ecb: $28 $02

	ldh [rAUD3HIGH], a                               ; $5ecd: $e0 $1e

jr_00d_5ecf:
	jr z, jr_00d_5ecb                                ; $5ecf: $28 $fa

	ldh [rAUD3LEVEL], a                              ; $5ed1: $e0 $1c
	jr z, @+$04                                      ; $5ed3: $28 $02

	ret nc                                           ; $5ed5: $d0

	ld e, $28                                        ; $5ed6: $1e $28
	ld a, [$1cd0]                                    ; $5ed8: $fa $d0 $1c
	jr z, @+$04                                      ; $5edb: $28 $02

	ret nz                                           ; $5edd: $c0

	ld e, $28                                        ; $5ede: $1e $28
	ld a, [$1cc0]                                    ; $5ee0: $fa $c0 $1c
	jr z, jr_00d_5ee6                                ; $5ee3: $28 $01

	or b                                             ; $5ee5: $b0

jr_00d_5ee6:
	ld a, [de]                                       ; $5ee6: $1a
	jr z, @-$05                                      ; $5ee7: $28 $f9

	or b                                             ; $5ee9: $b0
	jr @+$2a                                         ; $5eea: $18 $28

	pop af                                           ; $5eec: $f1
	or b                                             ; $5eed: $b0
	ld d, $28                                        ; $5eee: $16 $28

jr_00d_5ef0:
	rlca                                             ; $5ef0: $07
	and b                                            ; $5ef1: $a0
	inc d                                            ; $5ef2: $14
	jr z, @+$01                                      ; $5ef3: $28 $ff

	and b                                            ; $5ef5: $a0

jr_00d_5ef6:
	ld [de], a                                       ; $5ef6: $12
	jr z, jr_00d_5ef0                                ; $5ef7: $28 $f7

	and b                                            ; $5ef9: $a0

jr_00d_5efa:
	db $10                                           ; $5efa: $10
	add hl, hl                                       ; $5efb: $29
	ld bc, $46f0                                     ; $5efc: $01 $f0 $46
	jr z, jr_00d_5efa                                ; $5eff: $28 $f9

	ldh a, [rAUD2LOW]                                ; $5f01: $f0 $18

jr_00d_5f03:
	jr z, jr_00d_5ef6                                ; $5f03: $28 $f1

	ldh a, [rAUD2LEN]                                ; $5f05: $f0 $16
	jr z, jr_00d_5f03                                ; $5f07: $28 $fa

	ret nc                                           ; $5f09: $d0

	inc e                                            ; $5f0a: $1c
	jr z, @+$04                                      ; $5f0b: $28 $02

	ret nc                                           ; $5f0d: $d0

	ld e, $28                                        ; $5f0e: $1e $28
	ld [bc], a                                       ; $5f10: $02
	ldh [rAUD3HIGH], a                               ; $5f11: $e0 $1e
	jr z, @-$04                                      ; $5f13: $28 $fa

	ldh [rAUD3LEVEL], a                              ; $5f15: $e0 $1c
	jr z, @+$04                                      ; $5f17: $28 $02

	ret nz                                           ; $5f19: $c0

	ld e, $28                                        ; $5f1a: $1e $28
	ld a, [$1cc0]                                    ; $5f1c: $fa $c0 $1c
	jr z, @+$04                                      ; $5f1f: $28 $02

	or b                                             ; $5f21: $b0
	ld e, $28                                        ; $5f22: $1e $28
	ld a, [$1cb0]                                    ; $5f24: $fa $b0 $1c
	jr z, jr_00d_5f2a                                ; $5f27: $28 $01

	and b                                            ; $5f29: $a0

jr_00d_5f2a:
	ld a, [de]                                       ; $5f2a: $1a
	jr z, @-$05                                      ; $5f2b: $28 $f9

	and b                                            ; $5f2d: $a0
	jr @+$2a                                         ; $5f2e: $18 $28

	pop af                                           ; $5f30: $f1
	and b                                            ; $5f31: $a0
	ld d, $29                                        ; $5f32: $16 $29
	ld bc, $46e0                                     ; $5f34: $01 $e0 $46

jr_00d_5f37:
	jr z, jr_00d_5f3b                                ; $5f37: $28 $02

	ldh a, [rAUD3HIGH]                               ; $5f39: $f0 $1e

jr_00d_5f3b:
	jr z, jr_00d_5f37                                ; $5f3b: $28 $fa

	ldh a, [rAUD3LEVEL]                              ; $5f3d: $f0 $1c
	jr z, @-$05                                      ; $5f3f: $28 $f9

	ldh [rAUD2LOW], a                                ; $5f41: $e0 $18
	jr z, @+$04                                      ; $5f43: $28 $02

	ret nc                                           ; $5f45: $d0

jr_00d_5f46:
	ld e, $28                                        ; $5f46: $1e $28
	ld a, [$1cd0]                                    ; $5f48: $fa $d0 $1c
	jr z, @+$04                                      ; $5f4b: $28 $02

	ret nz                                           ; $5f4d: $c0

	ld e, $28                                        ; $5f4e: $1e $28
	ld a, [$1cc0]                                    ; $5f50: $fa $c0 $1c
	jr z, jr_00d_5f46                                ; $5f53: $28 $f1

	ldh [rAUD2LEN], a                                ; $5f55: $e0 $16
	jr z, @+$04                                      ; $5f57: $28 $02

	or b                                             ; $5f59: $b0
	ld e, $28                                        ; $5f5a: $1e $28
	ld a, [$1cb0]                                    ; $5f5c: $fa $b0 $1c
	jr z, @+$04                                      ; $5f5f: $28 $02

	and b                                            ; $5f61: $a0
	ld e, $28                                        ; $5f62: $1e $28
	ld a, [$1ca0]                                    ; $5f64: $fa $a0 $1c

jr_00d_5f67:
	add hl, hl                                       ; $5f67: $29
	ld [bc], a                                       ; $5f68: $02
	ldh [rAUD3HIGH], a                               ; $5f69: $e0 $1e
	jr z, jr_00d_5f67                                ; $5f6b: $28 $fa

	ldh [rAUD3LEVEL], a                              ; $5f6d: $e0 $1c
	jr z, jr_00d_5f72                                ; $5f6f: $28 $01

	ret nc                                           ; $5f71: $d0

jr_00d_5f72:
	ld b, [hl]                                       ; $5f72: $46
	jr z, @-$05                                      ; $5f73: $28 $f9

	ret nc                                           ; $5f75: $d0

	jr @+$2a                                         ; $5f76: $18 $28

	pop af                                           ; $5f78: $f1

jr_00d_5f79:
	ret nc                                           ; $5f79: $d0

	ld d, $28                                        ; $5f7a: $16 $28
	nop                                              ; $5f7c: $00
	ldh a, [rAUD4POLY]                               ; $5f7d: $f0 $22
	jr z, jr_00d_5f79                                ; $5f7f: $28 $f8

	ldh a, [rAUD4LEN]                                ; $5f81: $f0 $20
	jr z, @+$04                                      ; $5f83: $28 $02

	ret nz                                           ; $5f85: $c0

	ld e, $28                                        ; $5f86: $1e $28
	ld a, [$1cc0]                                    ; $5f88: $fa $c0 $1c
	jr z, @+$04                                      ; $5f8b: $28 $02

	or b                                             ; $5f8d: $b0
	ld e, $28                                        ; $5f8e: $1e $28
	ld a, [$1cb0]                                    ; $5f90: $fa $b0 $1c
	jr z, @+$04                                      ; $5f93: $28 $02

	and b                                            ; $5f95: $a0
	ld e, $28                                        ; $5f96: $1e $28
	ld a, [$1ca0]                                    ; $5f98: $fa $a0 $1c
	add hl, hl                                       ; $5f9b: $29
	nop                                              ; $5f9c: $00
	ldh a, [rAUDENA]                                 ; $5f9d: $f0 $26
	jr z, @-$06                                      ; $5f9f: $28 $f8

	ldh a, [rAUDVOL]                                 ; $5fa1: $f0 $24
	jr z, @+$04                                      ; $5fa3: $28 $02

	ret nc                                           ; $5fa5: $d0

	ld e, $28                                        ; $5fa6: $1e $28
	ld a, [$1cd0]                                    ; $5fa8: $fa $d0 $1c
	jr z, jr_00d_5fae                                ; $5fab: $28 $01

	ret nz                                           ; $5fad: $c0

jr_00d_5fae:
	ld b, [hl]                                       ; $5fae: $46
	jr z, @-$05                                      ; $5faf: $28 $f9

	ret nz                                           ; $5fb1: $c0

	jr jr_00d_5fdc                                   ; $5fb2: $18 $28

	pop af                                           ; $5fb4: $f1

jr_00d_5fb5:
	ret nz                                           ; $5fb5: $c0

	ld d, $28                                        ; $5fb6: $16 $28
	nop                                              ; $5fb8: $00
	ldh [rAUD4POLY], a                               ; $5fb9: $e0 $22
	jr z, jr_00d_5fb5                                ; $5fbb: $28 $f8

	ldh [rAUD4LEN], a                                ; $5fbd: $e0 $20
	jr z, @+$04                                      ; $5fbf: $28 $02

	or b                                             ; $5fc1: $b0
	ld e, $28                                        ; $5fc2: $1e $28
	ld a, [$1cb0]                                    ; $5fc4: $fa $b0 $1c
	jr z, @+$04                                      ; $5fc7: $28 $02

	and b                                            ; $5fc9: $a0
	ld e, $28                                        ; $5fca: $1e $28
	ld a, [$1ca0]                                    ; $5fcc: $fa $a0 $1c
	add hl, hl                                       ; $5fcf: $29
	nop                                              ; $5fd0: $00
	ldh [rAUDENA], a                                 ; $5fd1: $e0 $26
	jr z, @-$06                                      ; $5fd3: $28 $f8

	ldh [rAUDVOL], a                                 ; $5fd5: $e0 $24
	jr z, @+$04                                      ; $5fd7: $28 $02

	ret nz                                           ; $5fd9: $c0

	ld e, $28                                        ; $5fda: $1e $28

jr_00d_5fdc:
	ld a, [$1cc0]                                    ; $5fdc: $fa $c0 $1c
	jr z, jr_00d_5fe2                                ; $5fdf: $28 $01

	or b                                             ; $5fe1: $b0

jr_00d_5fe2:
	ld b, [hl]                                       ; $5fe2: $46
	jr z, @-$05                                      ; $5fe3: $28 $f9

	or b                                             ; $5fe5: $b0
	jr @+$2a                                         ; $5fe6: $18 $28

	pop af                                           ; $5fe8: $f1

jr_00d_5fe9:
	or b                                             ; $5fe9: $b0
	ld d, $28                                        ; $5fea: $16 $28
	nop                                              ; $5fec: $00
	ret nc                                           ; $5fed: $d0

	ld [hl+], a                                      ; $5fee: $22
	jr z, jr_00d_5fe9                                ; $5fef: $28 $f8

	ret nc                                           ; $5ff1: $d0

	jr nz, @+$2a                                     ; $5ff2: $20 $28

	ld [bc], a                                       ; $5ff4: $02
	and b                                            ; $5ff5: $a0
	ld e, $28                                        ; $5ff6: $1e $28
	ld a, [$1ca0]                                    ; $5ff8: $fa $a0 $1c
	add hl, hl                                       ; $5ffb: $29
	nop                                              ; $5ffc: $00
	ret nc                                           ; $5ffd: $d0

	ld h, $28                                        ; $5ffe: $26 $28
	ld hl, sp-$30                                    ; $6000: $f8 $d0
	inc h                                            ; $6002: $24
	jr z, @+$04                                      ; $6003: $28 $02

	or b                                             ; $6005: $b0
	ld e, $28                                        ; $6006: $1e $28
	ld a, [$1cb0]                                    ; $6008: $fa $b0 $1c
	jr z, jr_00d_600e                                ; $600b: $28 $01

	and b                                            ; $600d: $a0

jr_00d_600e:
	ld b, [hl]                                       ; $600e: $46
	jr z, @-$05                                      ; $600f: $28 $f9

	and b                                            ; $6011: $a0
	jr jr_00d_603c                                   ; $6012: $18 $28

	pop af                                           ; $6014: $f1

jr_00d_6015:
	and b                                            ; $6015: $a0
	ld d, $28                                        ; $6016: $16 $28
	nop                                              ; $6018: $00
	ret nz                                           ; $6019: $c0

	ld [hl+], a                                      ; $601a: $22
	jr z, jr_00d_6015                                ; $601b: $28 $f8

	ret nz                                           ; $601d: $c0

	jr nz, jr_00d_6049                               ; $601e: $20 $29

	nop                                              ; $6020: $00
	ret nz                                           ; $6021: $c0

	ld h, $28                                        ; $6022: $26 $28
	ld hl, sp-$40                                    ; $6024: $f8 $c0
	inc h                                            ; $6026: $24
	jr z, @+$04                                      ; $6027: $28 $02

	and b                                            ; $6029: $a0
	ld e, $28                                        ; $602a: $1e $28
	ld a, [$1ca0]                                    ; $602c: $fa $a0 $1c
	jr z, jr_00d_6031                                ; $602f: $28 $00

jr_00d_6031:
	or b                                             ; $6031: $b0
	ld [hl+], a                                      ; $6032: $22
	jr z, @-$06                                      ; $6033: $28 $f8

	or b                                             ; $6035: $b0
	jr nz, jr_00d_6061                               ; $6036: $20 $29

	nop                                              ; $6038: $00
	or b                                             ; $6039: $b0
	ld h, $28                                        ; $603a: $26 $28

jr_00d_603c:
	ld hl, sp-$50                                    ; $603c: $f8 $b0
	inc h                                            ; $603e: $24
	jr z, jr_00d_6041                                ; $603f: $28 $00

jr_00d_6041:
	and b                                            ; $6041: $a0
	ld [hl+], a                                      ; $6042: $22
	jr z, @-$06                                      ; $6043: $28 $f8

	and b                                            ; $6045: $a0
	jr nz, jr_00d_6071                               ; $6046: $20 $29

	nop                                              ; $6048: $00

jr_00d_6049:
	and b                                            ; $6049: $a0
	ld h, $28                                        ; $604a: $26 $28
	ld hl, sp-$60                                    ; $604c: $f8 $a0
	inc h                                            ; $604e: $24
	add hl, hl                                       ; $604f: $29
	db $fc                                           ; $6050: $fc
	ldh a, [c]                                       ; $6051: $f2
	ld [$0422], sp                                   ; $6052: $08 $22 $04
	ldh a, [c]                                       ; $6055: $f2
	ld a, [bc]                                       ; $6056: $0a
	ld [hl+], a                                      ; $6057: $22
	db $f4                                           ; $6058: $f4
	ldh a, [c]                                       ; $6059: $f2
	ld b, $22                                        ; $605a: $06 $22
	db $fc                                           ; $605c: $fc

jr_00d_605d:
	ldh a, [c]                                       ; $605d: $f2
	ld [$0422], sp                                   ; $605e: $08 $22 $04

jr_00d_6061:
	ldh [c], a                                       ; $6061: $e2
	inc b                                            ; $6062: $04
	jr nz, jr_00d_6061                               ; $6063: $20 $fc

	ldh [c], a                                       ; $6065: $e2
	ld [bc], a                                       ; $6066: $02
	jr nz, jr_00d_605d                               ; $6067: $20 $f4

	ldh [c], a                                       ; $6069: $e2
	nop                                              ; $606a: $00
	ld hl, $f204                                     ; $606b: $21 $04 $f2
	ld [$fc22], sp                                   ; $606e: $08 $22 $fc

jr_00d_6071:
	ldh a, [c]                                       ; $6071: $f2
	ld b, $22                                        ; $6072: $06 $22
	db $f4                                           ; $6074: $f4
	ldh a, [c]                                       ; $6075: $f2
	inc b                                            ; $6076: $04
	ld [hl+], a                                      ; $6077: $22
	db $fc                                           ; $6078: $fc
	ldh [c], a                                       ; $6079: $e2
	ld [bc], a                                       ; $607a: $02
	jr nz, jr_00d_6071                               ; $607b: $20 $f4

	ldh [c], a                                       ; $607d: $e2
	nop                                              ; $607e: $00
	ld hl, $dd04                                     ; $607f: $21 $04 $dd
	ld [de], a                                       ; $6082: $12
	jr nz, jr_00d_6089                               ; $6083: $20 $04

	db $fd                                           ; $6085: $fd
	ld e, $22                                        ; $6086: $1e $22
	db $fc                                           ; $6088: $fc

jr_00d_6089:
	db $fd                                           ; $6089: $fd
	inc e                                            ; $608a: $1c
	ld [hl+], a                                      ; $608b: $22
	inc b                                            ; $608c: $04
	db $ed                                           ; $608d: $ed
	ld a, [de]                                       ; $608e: $1a
	ld [hl+], a                                      ; $608f: $22
	db $fc                                           ; $6090: $fc
	db $ed                                           ; $6091: $ed
	jr jr_00d_60b6                                   ; $6092: $18 $22

	db $f4                                           ; $6094: $f4

jr_00d_6095:
	db $ed                                           ; $6095: $ed
	ld d, $22                                        ; $6096: $16 $22
	db $ec                                           ; $6098: $ec

jr_00d_6099:
	db $ed                                           ; $6099: $ed
	inc d                                            ; $609a: $14
	jr nz, jr_00d_6099                               ; $609b: $20 $fc

	db $dd                                           ; $609d: $dd
	db $10                                           ; $609e: $10
	jr nz, jr_00d_6095                               ; $609f: $20 $f4

	db $dd                                           ; $60a1: $dd
	ld c, $20                                        ; $60a2: $0e $20
	ld hl, sp-$27                                    ; $60a4: $f8 $d9
	inc c                                            ; $60a6: $0c
	ld [hl+], a                                      ; $60a7: $22
	ldh a, [$d9]                                     ; $60a8: $f0 $d9
	ld a, [bc]                                       ; $60aa: $0a
	inc hl                                           ; $60ab: $23
	db $ec                                           ; $60ac: $ec
	ldh a, [c]                                       ; $60ad: $f2
	ld h, $20                                        ; $60ae: $26 $20
	db $f4                                           ; $60b0: $f4

jr_00d_60b1:
	ldh [c], a                                       ; $60b1: $e2
	jr nz, @+$22                                     ; $60b2: $20 $20

	db $fc                                           ; $60b4: $fc
	ldh [c], a                                       ; $60b5: $e2

jr_00d_60b6:
	ld [hl+], a                                      ; $60b6: $22
	jr nz, jr_00d_60bd                               ; $60b7: $20 $04

	ldh [c], a                                       ; $60b9: $e2
	inc h                                            ; $60ba: $24
	jr nz, jr_00d_60b1                               ; $60bb: $20 $f4

jr_00d_60bd:
	ldh a, [c]                                       ; $60bd: $f2
	jr z, jr_00d_60e2                                ; $60be: $28 $22

	inc b                                            ; $60c0: $04
	ldh a, [c]                                       ; $60c1: $f2
	inc l                                            ; $60c2: $2c
	ld [hl+], a                                      ; $60c3: $22
	db $fc                                           ; $60c4: $fc
	ldh a, [c]                                       ; $60c5: $f2
	ld a, [hl+]                                      ; $60c6: $2a
	inc hl                                           ; $60c7: $23
	db $ec                                           ; $60c8: $ec
	ldh a, [c]                                       ; $60c9: $f2
	ld h, $20                                        ; $60ca: $26 $20
	db $f4                                           ; $60cc: $f4

jr_00d_60cd:
	ldh [c], a                                       ; $60cd: $e2
	jr nz, @+$22                                     ; $60ce: $20 $20

	db $fc                                           ; $60d0: $fc
	ldh [c], a                                       ; $60d1: $e2
	ld [hl+], a                                      ; $60d2: $22
	jr nz, jr_00d_60d9                               ; $60d3: $20 $04

	ldh [c], a                                       ; $60d5: $e2
	inc h                                            ; $60d6: $24
	jr nz, jr_00d_60cd                               ; $60d7: $20 $f4

jr_00d_60d9:
	ldh a, [c]                                       ; $60d9: $f2
	jr z, @+$24                                      ; $60da: $28 $22

	inc b                                            ; $60dc: $04
	ldh a, [c]                                       ; $60dd: $f2
	inc l                                            ; $60de: $2c
	ld [hl+], a                                      ; $60df: $22
	db $fc                                           ; $60e0: $fc
	ldh a, [c]                                       ; $60e1: $f2

jr_00d_60e2:
	ld a, [hl+]                                      ; $60e2: $2a
	inc hl                                           ; $60e3: $23
	ei                                               ; $60e4: $fb
	or $44                                           ; $60e5: $f6 $44
	add hl, hl                                       ; $60e7: $29
	ei                                               ; $60e8: $fb
	ldh a, [rWY]                                     ; $60e9: $f0 $4a
	add hl, hl                                       ; $60eb: $29
	ld sp, hl                                        ; $60ec: $f9
	ldh a, [rDMA]                                    ; $60ed: $f0 $46
	jr z, @+$03                                      ; $60ef: $28 $01

jr_00d_60f1:
	ldh a, [rOBP0]                                   ; $60f1: $f0 $48
	add hl, hl                                       ; $60f3: $29
	nop                                              ; $60f4: $00
	ldh a, [$4e]                                     ; $60f5: $f0 $4e
	jr z, jr_00d_60f1                                ; $60f7: $28 $f8

	ldh a, [$4c]                                     ; $60f9: $f0 $4c
	add hl, hl                                       ; $60fb: $29

jr_00d_60fc:
	dec bc                                           ; $60fc: $0b
	ldh a, [rLCDC]                                   ; $60fd: $f0 $40
	jr z, @+$05                                      ; $60ff: $28 $03

	ldh a, [$3e]                                     ; $6101: $f0 $3e
	jr z, @-$03                                      ; $6103: $28 $fb

	ldh a, [$3c]                                     ; $6105: $f0 $3c
	jr z, jr_00d_60fc                                ; $6107: $28 $f3

	ldh a, [$3a]                                     ; $6109: $f0 $3a
	jr z, @-$13                                      ; $610b: $28 $eb

	ldh a, [$38]                                     ; $610d: $f0 $38
	jr z, @+$0d                                      ; $610f: $28 $0b

	ldh [$36], a                                     ; $6111: $e0 $36
	jr z, @+$05                                      ; $6113: $28 $03

	ldh [$34], a                                     ; $6115: $e0 $34
	jr z, @-$03                                      ; $6117: $28 $fb

	ldh [$32], a                                     ; $6119: $e0 $32
	jr z, @-$0b                                      ; $611b: $28 $f3

	ldh [$30], a                                     ; $611d: $e0 $30
	jr z, @-$13                                      ; $611f: $28 $eb

jr_00d_6121:
	ldh [$2e], a                                     ; $6121: $e0 $2e
	add hl, hl                                       ; $6123: $29
	inc c                                            ; $6124: $0c

jr_00d_6125:
	cp $40                                           ; $6125: $fe $40
	jr z, jr_00d_612d                                ; $6127: $28 $04

jr_00d_6129:
	cp $3e                                           ; $6129: $fe $3e
	jr z, jr_00d_6129                                ; $612b: $28 $fc

jr_00d_612d:
	cp $3c                                           ; $612d: $fe $3c
	jr z, jr_00d_6125                                ; $612f: $28 $f4

	cp $3a                                           ; $6131: $fe $3a
	jr z, jr_00d_6121                                ; $6133: $28 $ec

jr_00d_6135:
	cp $38                                           ; $6135: $fe $38
	jr z, jr_00d_6145                                ; $6137: $28 $0c

jr_00d_6139:
	xor $36                                          ; $6139: $ee $36
	jr z, jr_00d_6141                                ; $613b: $28 $04

jr_00d_613d:
	xor $34                                          ; $613d: $ee $34
	jr z, jr_00d_613d                                ; $613f: $28 $fc

jr_00d_6141:
	xor $32                                          ; $6141: $ee $32
	jr z, jr_00d_6139                                ; $6143: $28 $f4

jr_00d_6145:
	xor $30                                          ; $6145: $ee $30
	jr z, jr_00d_6135                                ; $6147: $28 $ec

	xor $2e                                          ; $6149: $ee $2e
	add hl, hl                                       ; $614b: $29
	db $fc                                           ; $614c: $fc
	rst FarCall                                          ; $614d: $f7
	ld b, d                                          ; $614e: $42
	add hl, hl                                       ; $614f: $29
	db $fc                                           ; $6150: $fc
	rst FarCall                                          ; $6151: $f7
	ld b, d                                          ; $6152: $42
	ld l, c                                          ; $6153: $69
	inc b                                            ; $6154: $04
	ldh a, [c]                                       ; $6155: $f2
	ld a, [bc]                                       ; $6156: $0a
	ld [hl+], a                                      ; $6157: $22
	db $fc                                           ; $6158: $fc
	ldh a, [c]                                       ; $6159: $f2
	ld [$f422], sp                                   ; $615a: $08 $22 $f4

jr_00d_615d:
	ldh a, [c]                                       ; $615d: $f2
	ld b, $22                                        ; $615e: $06 $22
	inc b                                            ; $6160: $04

jr_00d_6161:
	ldh [c], a                                       ; $6161: $e2
	inc b                                            ; $6162: $04
	jr nz, jr_00d_6161                               ; $6163: $20 $fc

	ldh [c], a                                       ; $6165: $e2
	ld [bc], a                                       ; $6166: $02
	jr nz, jr_00d_615d                               ; $6167: $20 $f4

	ldh [c], a                                       ; $6169: $e2
	nop                                              ; $616a: $00
	ld hl, $f20c                                     ; $616b: $21 $0c $f2
	ld c, $22                                        ; $616e: $0e $22
	inc b                                            ; $6170: $04
	ldh a, [c]                                       ; $6171: $f2
	inc c                                            ; $6172: $0c
	ld [hl+], a                                      ; $6173: $22
	db $fc                                           ; $6174: $fc

jr_00d_6175:
	ldh a, [c]                                       ; $6175: $f2
	ld a, [bc]                                       ; $6176: $0a
	ld [hl+], a                                      ; $6177: $22
	db $f4                                           ; $6178: $f4

jr_00d_6179:
	ldh a, [c]                                       ; $6179: $f2
	ld [$0422], sp                                   ; $617a: $08 $22 $04
	ldh [c], a                                       ; $617d: $e2
	ld b, $20                                        ; $617e: $06 $20
	db $fc                                           ; $6180: $fc
	ldh [c], a                                       ; $6181: $e2
	inc b                                            ; $6182: $04
	jr nz, jr_00d_6179                               ; $6183: $20 $f4

	ldh [c], a                                       ; $6185: $e2
	ld [bc], a                                       ; $6186: $02
	jr nz, jr_00d_6175                               ; $6187: $20 $ec

	ldh a, [c]                                       ; $6189: $f2
	nop                                              ; $618a: $00
	inc hl                                           ; $618b: $23
	inc b                                            ; $618c: $04
	di                                               ; $618d: $f3
	ld a, [de]                                       ; $618e: $1a
	ld [hl+], a                                      ; $618f: $22
	db $fc                                           ; $6190: $fc
	di                                               ; $6191: $f3
	jr @+$24                                         ; $6192: $18 $22

	db $f4                                           ; $6194: $f4

jr_00d_6195:
	di                                               ; $6195: $f3
	ld d, $22                                        ; $6196: $16 $22
	inc b                                            ; $6198: $04

jr_00d_6199:
	db $e3                                           ; $6199: $e3
	inc d                                            ; $619a: $14
	jr nz, jr_00d_6199                               ; $619b: $20 $fc

	db $e3                                           ; $619d: $e3
	ld [de], a                                       ; $619e: $12
	jr nz, jr_00d_6195                               ; $619f: $20 $f4

	db $e3                                           ; $61a1: $e3
	db $10                                           ; $61a2: $10
	ld hl, $00fc                                     ; $61a3: $21 $fc $00
	ld [hl+], a                                      ; $61a6: $22
	ld [hl+], a                                      ; $61a7: $22
	inc b                                            ; $61a8: $04
	ldh a, [rAUD4LEN]                                ; $61a9: $f0 $20
	ld [hl+], a                                      ; $61ab: $22
	db $fc                                           ; $61ac: $fc
	ldh a, [rAUD3HIGH]                               ; $61ad: $f0 $1e
	ld [hl+], a                                      ; $61af: $22
	db $f4                                           ; $61b0: $f4

jr_00d_61b1:
	ldh a, [rAUD3LEVEL]                              ; $61b1: $f0 $1c
	ld [hl+], a                                      ; $61b3: $22
	inc c                                            ; $61b4: $0c

jr_00d_61b5:
	ldh a, [$0e]                                     ; $61b5: $f0 $0e
	ld [hl+], a                                      ; $61b7: $22
	inc b                                            ; $61b8: $04

jr_00d_61b9:
	ldh [rTMA], a                                    ; $61b9: $e0 $06
	jr nz, jr_00d_61b9                               ; $61bb: $20 $fc

	ldh [rDIV], a                                    ; $61bd: $e0 $04
	jr nz, jr_00d_61b5                               ; $61bf: $20 $f4

	ldh [rSC], a                                     ; $61c1: $e0 $02
	jr nz, jr_00d_61b1                               ; $61c3: $20 $ec

	ldh a, [rP1]                                     ; $61c5: $f0 $00
	inc hl                                           ; $61c7: $23
	db $fc                                           ; $61c8: $fc
	rst $38                                          ; $61c9: $ff
	ld [hl-], a                                      ; $61ca: $32
	ld [hl+], a                                      ; $61cb: $22
	ld [bc], a                                       ; $61cc: $02
	rst SubAFromDE                                          ; $61cd: $df
	jr z, jr_00d_61f0                                ; $61ce: $28 $20

	ld a, [bc]                                       ; $61d0: $0a
	rst AddAOntoHL                                          ; $61d1: $ef
	jr nc, @+$24                                     ; $61d2: $30 $22

	ld [bc], a                                       ; $61d4: $02
	rst AddAOntoHL                                          ; $61d5: $ef
	ld l, $22                                        ; $61d6: $2e $22
	ldh a, [c]                                       ; $61d8: $f2
	rst AddAOntoHL                                          ; $61d9: $ef
	ld a, [hl+]                                      ; $61da: $2a
	ld [hl+], a                                      ; $61db: $22
	ld a, [$2cef]                                    ; $61dc: $fa $ef $2c
	ld [hl+], a                                      ; $61df: $22
	ld a, [$26df]                                    ; $61e0: $fa $df $26
	jr nz, @-$0c                                     ; $61e3: $20 $f2

	rst SubAFromDE                                          ; $61e5: $df
	inc h                                            ; $61e6: $24
	inc hl                                           ; $61e7: $23
	push af                                          ; $61e8: $f5
	ldh [rSCY], a                                    ; $61e9: $e0 $42
	jr nz, @-$01                                     ; $61eb: $20 $fd

	nop                                              ; $61ed: $00
	inc a                                            ; $61ee: $3c
	ld [hl+], a                                      ; $61ef: $22

jr_00d_61f0:
	push af                                          ; $61f0: $f5
	ldh a, [$38]                                     ; $61f1: $f0 $38
	ld [hl+], a                                      ; $61f3: $22
	db $fd                                           ; $61f4: $fd
	ldh a, [$3a]                                     ; $61f5: $f0 $3a
	ld [hl+], a                                      ; $61f7: $22
	dec b                                            ; $61f8: $05
	ldh [$36], a                                     ; $61f9: $e0 $36
	jr nz, @-$01                                     ; $61fb: $20 $fd

	ldh [$34], a                                     ; $61fd: $e0 $34
	ld hl, $e0f4                                     ; $61ff: $21 $f4 $e0
	ld [bc], a                                       ; $6202: $02
	jr nz, jr_00d_6209                               ; $6203: $20 $04

	ldh [rTMA], a                                    ; $6205: $e0 $06
	jr nz, @+$0b                                     ; $6207: $20 $09

jr_00d_6209:
	ldh a, [rAUD2LEN]                                ; $6209: $f0 $16
	jr z, @+$03                                      ; $620b: $28 $01

	ldh a, [rAUD1HIGH]                               ; $620d: $f0 $14
	jr z, @-$05                                      ; $620f: $28 $f9

	ldh a, [rAUD1ENV]                                ; $6211: $f0 $12
	jr z, @-$0d                                      ; $6213: $28 $f1

jr_00d_6215:
	ldh a, [rAUD1SWEEP]                              ; $6215: $f0 $10
	jr z, jr_00d_6215                                ; $6217: $28 $fc

	ldh [rDIV], a                                    ; $6219: $e0 $04
	ld hl, $e002                                     ; $621b: $21 $02 $e0
	jr z, @+$22                                      ; $621e: $28 $20

	ldh a, [c]                                       ; $6220: $f2
	ldh [rAUDVOL], a                                 ; $6221: $e0 $24
	ld [hl+], a                                      ; $6223: $22
	ld a, [$26e0]                                    ; $6224: $fa $e0 $26
	jr nz, @+$0b                                     ; $6227: $20 $09

	ldh a, [rLCDC]                                   ; $6229: $f0 $40
	jr z, @+$03                                      ; $622b: $28 $01

	ldh a, [$3e]                                     ; $622d: $f0 $3e
	jr z, @-$05                                      ; $622f: $28 $f9

	ldh a, [rAUD3ENA]                                ; $6231: $f0 $1a
	jr z, @-$0d                                      ; $6233: $28 $f1

	ldh a, [rAUD2LOW]                                ; $6235: $f0 $18
	add hl, hl                                       ; $6237: $29
	push af                                          ; $6238: $f5
	ldh [rSCY], a                                    ; $6239: $e0 $42
	jr nz, @+$07                                     ; $623b: $20 $05

	ldh [$36], a                                     ; $623d: $e0 $36
	jr nz, @-$01                                     ; $623f: $20 $fd

	ldh [$34], a                                     ; $6241: $e0 $34
	jr nz, @+$0b                                     ; $6243: $20 $09

	ldh a, [rAUD2LEN]                                ; $6245: $f0 $16
	jr z, @+$03                                      ; $6247: $28 $01

	ldh a, [rAUD1HIGH]                               ; $6249: $f0 $14
	jr z, @-$05                                      ; $624b: $28 $f9

	ldh a, [rAUD1ENV]                                ; $624d: $f0 $12
	jr z, @-$0d                                      ; $624f: $28 $f1

	ldh a, [rAUD1SWEEP]                              ; $6251: $f0 $10
	add hl, hl                                       ; $6253: $29
	db $f4                                           ; $6254: $f4

jr_00d_6255:
	ldh [rSC], a                                     ; $6255: $e0 $02
	jr nz, jr_00d_6255                               ; $6257: $20 $fc

	ldh [rDIV], a                                    ; $6259: $e0 $04
	jr nz, jr_00d_6261                               ; $625b: $20 $04

	ldh [rTMA], a                                    ; $625d: $e0 $06
	jr nz, @+$0b                                     ; $625f: $20 $09

jr_00d_6261:
	ldh a, [rLCDC]                                   ; $6261: $f0 $40
	jr z, @+$03                                      ; $6263: $28 $01

	ldh a, [$3e]                                     ; $6265: $f0 $3e

jr_00d_6267:
	jr z, @-$05                                      ; $6267: $28 $f9

	ldh a, [rAUD3ENA]                                ; $6269: $f0 $1a
	jr z, @-$0d                                      ; $626b: $28 $f1

	ldh a, [rAUD2LOW]                                ; $626d: $f0 $18
	add hl, hl                                       ; $626f: $29
	ld [bc], a                                       ; $6270: $02
	ldh [$28], a                                     ; $6271: $e0 $28
	jr nz, jr_00d_6267                               ; $6273: $20 $f2

	ldh [rAUDVOL], a                                 ; $6275: $e0 $24
	ld [hl+], a                                      ; $6277: $22
	ld a, [$26e0]                                    ; $6278: $fa $e0 $26
	jr nz, @+$0b                                     ; $627b: $20 $09

	ldh a, [rAUD2LEN]                                ; $627d: $f0 $16
	jr z, @+$03                                      ; $627f: $28 $01

	ldh a, [rAUD1HIGH]                               ; $6281: $f0 $14
	jr z, @-$05                                      ; $6283: $28 $f9

	ldh a, [rAUD1ENV]                                ; $6285: $f0 $12
	jr z, @-$0d                                      ; $6287: $28 $f1

	ldh a, [rAUD1SWEEP]                              ; $6289: $f0 $10

jr_00d_628b:
	add hl, hl                                       ; $628b: $29
	ld b, $e0                                        ; $628c: $06 $e0
	ld [hl], $20                                     ; $628e: $36 $20
	cp $e0                                           ; $6290: $fe $e0
	inc [hl]                                         ; $6292: $34
	jr nz, jr_00d_628b                               ; $6293: $20 $f6

	ldh [rSCY], a                                    ; $6295: $e0 $42
	jr nz, @+$0b                                     ; $6297: $20 $09

	ldh a, [rLCDC]                                   ; $6299: $f0 $40
	jr z, @+$03                                      ; $629b: $28 $01

	ldh a, [$3e]                                     ; $629d: $f0 $3e
	jr z, @-$05                                      ; $629f: $28 $f9

	ldh a, [rAUD3ENA]                                ; $62a1: $f0 $1a
	jr z, @-$0d                                      ; $62a3: $28 $f1

	ldh a, [rAUD2LOW]                                ; $62a5: $f0 $18
	add hl, hl                                       ; $62a7: $29
	dec b                                            ; $62a8: $05
	inc bc                                           ; $62a9: $03
	ld a, [bc]                                       ; $62aa: $0a
	ld a, [hl+]                                      ; $62ab: $2a
	db $fd                                           ; $62ac: $fd
	inc bc                                           ; $62ad: $03
	ld [$f52a], sp                                   ; $62ae: $08 $2a $f5
	inc bc                                           ; $62b1: $03
	ld b, $2a                                        ; $62b2: $06 $2a
	dec b                                            ; $62b4: $05
	di                                               ; $62b5: $f3
	inc b                                            ; $62b6: $04
	ld a, [hl+]                                      ; $62b7: $2a
	db $fd                                           ; $62b8: $fd
	di                                               ; $62b9: $f3
	ld [bc], a                                       ; $62ba: $02
	ld a, [hl+]                                      ; $62bb: $2a
	push af                                          ; $62bc: $f5
	di                                               ; $62bd: $f3
	nop                                              ; $62be: $00
	dec hl                                           ; $62bf: $2b
	dec b                                            ; $62c0: $05
	inc bc                                           ; $62c1: $03
	ld d, $2a                                        ; $62c2: $16 $2a
	db $fd                                           ; $62c4: $fd
	inc bc                                           ; $62c5: $03
	inc d                                            ; $62c6: $14
	ld a, [hl+]                                      ; $62c7: $2a
	push af                                          ; $62c8: $f5
	inc bc                                           ; $62c9: $03
	ld [de], a                                       ; $62ca: $12
	ld a, [hl+]                                      ; $62cb: $2a
	dec b                                            ; $62cc: $05
	di                                               ; $62cd: $f3
	db $10                                           ; $62ce: $10
	ld a, [hl+]                                      ; $62cf: $2a
	db $fd                                           ; $62d0: $fd
	di                                               ; $62d1: $f3
	ld c, $2a                                        ; $62d2: $0e $2a
	push af                                          ; $62d4: $f5
	di                                               ; $62d5: $f3
	inc c                                            ; $62d6: $0c
	dec hl                                           ; $62d7: $2b
	dec b                                            ; $62d8: $05
	inc bc                                           ; $62d9: $03
	ld [hl+], a                                      ; $62da: $22
	ld a, [hl+]                                      ; $62db: $2a
	db $fd                                           ; $62dc: $fd
	inc bc                                           ; $62dd: $03
	jr nz, jr_00d_630a                               ; $62de: $20 $2a

	push af                                          ; $62e0: $f5
	inc bc                                           ; $62e1: $03
	ld e, $2a                                        ; $62e2: $1e $2a
	dec b                                            ; $62e4: $05
	di                                               ; $62e5: $f3
	inc e                                            ; $62e6: $1c
	ld a, [hl+]                                      ; $62e7: $2a
	db $fd                                           ; $62e8: $fd
	di                                               ; $62e9: $f3
	ld a, [de]                                       ; $62ea: $1a
	ld a, [hl+]                                      ; $62eb: $2a
	push af                                          ; $62ec: $f5
	di                                               ; $62ed: $f3
	jr jr_00d_631b                                   ; $62ee: $18 $2b

	dec b                                            ; $62f0: $05
	inc bc                                           ; $62f1: $03
	ld l, $2a                                        ; $62f2: $2e $2a
	db $fd                                           ; $62f4: $fd
	inc bc                                           ; $62f5: $03
	inc l                                            ; $62f6: $2c
	ld a, [hl+]                                      ; $62f7: $2a
	push af                                          ; $62f8: $f5
	inc bc                                           ; $62f9: $03
	ld a, [hl+]                                      ; $62fa: $2a
	ld a, [hl+]                                      ; $62fb: $2a
	dec b                                            ; $62fc: $05
	di                                               ; $62fd: $f3
	jr z, @+$2c                                      ; $62fe: $28 $2a

	db $fd                                           ; $6300: $fd
	di                                               ; $6301: $f3
	ld h, $2a                                        ; $6302: $26 $2a
	push af                                          ; $6304: $f5
	di                                               ; $6305: $f3
	inc h                                            ; $6306: $24
	dec hl                                           ; $6307: $2b
	db $fc                                           ; $6308: $fc
	nop                                              ; $6309: $00

jr_00d_630a:
	ld [hl+], a                                      ; $630a: $22
	ld [hl+], a                                      ; $630b: $22
	inc b                                            ; $630c: $04
	ldh a, [rAUD4LEN]                                ; $630d: $f0 $20
	ld [hl+], a                                      ; $630f: $22
	db $fc                                           ; $6310: $fc
	ldh a, [rAUD3HIGH]                               ; $6311: $f0 $1e
	ld [hl+], a                                      ; $6313: $22
	db $f4                                           ; $6314: $f4

jr_00d_6315:
	ldh a, [rAUD3LEVEL]                              ; $6315: $f0 $1c
	ld [hl+], a                                      ; $6317: $22
	inc c                                            ; $6318: $0c

jr_00d_6319:
	ldh a, [$0e]                                     ; $6319: $f0 $0e

jr_00d_631b:
	ld [hl+], a                                      ; $631b: $22
	inc b                                            ; $631c: $04

jr_00d_631d:
	ldh [rTMA], a                                    ; $631d: $e0 $06
	jr nz, jr_00d_631d                               ; $631f: $20 $fc

	ldh [rDIV], a                                    ; $6321: $e0 $04
	jr nz, jr_00d_6319                               ; $6323: $20 $f4

	ldh [rSC], a                                     ; $6325: $e0 $02
	jr nz, jr_00d_6315                               ; $6327: $20 $ec

	ldh a, [rP1]                                     ; $6329: $f0 $00
	inc hl                                           ; $632b: $23
	db $fc                                           ; $632c: $fc
	rst $38                                          ; $632d: $ff
	ld [hl-], a                                      ; $632e: $32
	ld [hl+], a                                      ; $632f: $22
	ld [bc], a                                       ; $6330: $02
	rst SubAFromDE                                          ; $6331: $df
	jr z, jr_00d_6354                                ; $6332: $28 $20

	ld a, [bc]                                       ; $6334: $0a
	rst AddAOntoHL                                          ; $6335: $ef
	jr nc, @+$24                                     ; $6336: $30 $22

	ld [bc], a                                       ; $6338: $02
	rst AddAOntoHL                                          ; $6339: $ef
	ld l, $22                                        ; $633a: $2e $22
	ldh a, [c]                                       ; $633c: $f2
	rst AddAOntoHL                                          ; $633d: $ef
	ld a, [hl+]                                      ; $633e: $2a
	ld [hl+], a                                      ; $633f: $22
	ld a, [$2cef]                                    ; $6340: $fa $ef $2c
	ld [hl+], a                                      ; $6343: $22
	ld a, [$26df]                                    ; $6344: $fa $df $26
	jr nz, @-$0c                                     ; $6347: $20 $f2

	rst SubAFromDE                                          ; $6349: $df
	inc h                                            ; $634a: $24
	inc hl                                           ; $634b: $23
	push af                                          ; $634c: $f5
	ldh [rSCY], a                                    ; $634d: $e0 $42
	jr nz, @-$01                                     ; $634f: $20 $fd

	nop                                              ; $6351: $00
	inc a                                            ; $6352: $3c
	ld [hl+], a                                      ; $6353: $22

jr_00d_6354:
	push af                                          ; $6354: $f5
	ldh a, [$38]                                     ; $6355: $f0 $38
	ld [hl+], a                                      ; $6357: $22
	db $fd                                           ; $6358: $fd
	ldh a, [$3a]                                     ; $6359: $f0 $3a
	ld [hl+], a                                      ; $635b: $22
	dec b                                            ; $635c: $05
	ldh [$36], a                                     ; $635d: $e0 $36
	jr nz, @-$01                                     ; $635f: $20 $fd

	ldh [$34], a                                     ; $6361: $e0 $34
	ld hl, $f2ec                                     ; $6363: $21 $ec $f2
	nop                                              ; $6366: $00
	ld [hl+], a                                      ; $6367: $22
	db $f4                                           ; $6368: $f4

jr_00d_6369:
	ldh [c], a                                       ; $6369: $e2
	ld [bc], a                                       ; $636a: $02
	jr nz, jr_00d_6369                               ; $636b: $20 $fc

	ldh [c], a                                       ; $636d: $e2
	inc b                                            ; $636e: $04
	jr nz, jr_00d_6375                               ; $636f: $20 $04

	ldh [c], a                                       ; $6371: $e2
	ld b, $20                                        ; $6372: $06 $20
	inc c                                            ; $6374: $0c

jr_00d_6375:
	ldh a, [c]                                       ; $6375: $f2
	ld c, $22                                        ; $6376: $0e $22
	inc b                                            ; $6378: $04
	ldh a, [c]                                       ; $6379: $f2
	inc c                                            ; $637a: $0c
	ld [hl+], a                                      ; $637b: $22
	db $fc                                           ; $637c: $fc
	ldh a, [c]                                       ; $637d: $f2
	ld a, [bc]                                       ; $637e: $0a
	ld [hl+], a                                      ; $637f: $22
	db $f4                                           ; $6380: $f4
	ldh a, [c]                                       ; $6381: $f2
	ld [$0423], sp                                   ; $6382: $08 $23 $04
	ldh a, [c]                                       ; $6385: $f2
	ld a, [bc]                                       ; $6386: $0a
	ld [hl+], a                                      ; $6387: $22
	db $fc                                           ; $6388: $fc
	ldh a, [c]                                       ; $6389: $f2
	ld [$f422], sp                                   ; $638a: $08 $22 $f4

jr_00d_638d:
	ldh a, [c]                                       ; $638d: $f2
	ld b, $22                                        ; $638e: $06 $22
	inc b                                            ; $6390: $04

jr_00d_6391:
	ldh [c], a                                       ; $6391: $e2
	inc b                                            ; $6392: $04
	jr nz, jr_00d_6391                               ; $6393: $20 $fc

	ldh [c], a                                       ; $6395: $e2
	ld [bc], a                                       ; $6396: $02
	jr nz, jr_00d_638d                               ; $6397: $20 $f4

	ldh [c], a                                       ; $6399: $e2
	nop                                              ; $639a: $00
	ld hl, $f204                                     ; $639b: $21 $04 $f2
	inc c                                            ; $639e: $0c
	ld [hl+], a                                      ; $639f: $22
	db $fc                                           ; $63a0: $fc
	ldh a, [c]                                       ; $63a1: $f2
	ld a, [bc]                                       ; $63a2: $0a
	ld [hl+], a                                      ; $63a3: $22
	db $f4                                           ; $63a4: $f4
	ldh a, [c]                                       ; $63a5: $f2
	ld [$ec22], sp                                   ; $63a6: $08 $22 $ec

jr_00d_63a9:
	ldh a, [c]                                       ; $63a9: $f2
	ld b, $22                                        ; $63aa: $06 $22
	inc b                                            ; $63ac: $04

jr_00d_63ad:
	ldh [c], a                                       ; $63ad: $e2
	inc b                                            ; $63ae: $04
	jr nz, jr_00d_63ad                               ; $63af: $20 $fc

	ldh [c], a                                       ; $63b1: $e2
	ld [bc], a                                       ; $63b2: $02
	jr nz, jr_00d_63a9                               ; $63b3: $20 $f4

	ldh [c], a                                       ; $63b5: $e2
	nop                                              ; $63b6: $00
	ld hl, $f304                                     ; $63b7: $21 $04 $f3
	inc d                                            ; $63ba: $14
	ld [hl+], a                                      ; $63bb: $22
	db $fc                                           ; $63bc: $fc
	di                                               ; $63bd: $f3
	ld [de], a                                       ; $63be: $12
	ld [hl+], a                                      ; $63bf: $22
	db $f4                                           ; $63c0: $f4
	di                                               ; $63c1: $f3
	db $10                                           ; $63c2: $10
	ld [hl+], a                                      ; $63c3: $22
	db $ec                                           ; $63c4: $ec

jr_00d_63c5:
	di                                               ; $63c5: $f3
	ld c, $22                                        ; $63c6: $0e $22
	inc b                                            ; $63c8: $04

jr_00d_63c9:
	db $e3                                           ; $63c9: $e3
	inc b                                            ; $63ca: $04
	jr nz, jr_00d_63c9                               ; $63cb: $20 $fc

	db $e3                                           ; $63cd: $e3
	ld [bc], a                                       ; $63ce: $02
	jr nz, jr_00d_63c5                               ; $63cf: $20 $f4

jr_00d_63d1:
	db $e3                                           ; $63d1: $e3
	nop                                              ; $63d2: $00
	ld hl, $f200                                     ; $63d3: $21 $00 $f2
	ld c, b                                          ; $63d6: $48
	jr z, jr_00d_63d1                                ; $63d7: $28 $f8

	ldh a, [c]                                       ; $63d9: $f2
	ld b, [hl]                                       ; $63da: $46
	add hl, hl                                       ; $63db: $29
	ld [$4ef2], sp                                   ; $63dc: $08 $f2 $4e
	jr z, jr_00d_63e1                                ; $63df: $28 $00

jr_00d_63e1:
	ldh a, [c]                                       ; $63e1: $f2
	ld c, h                                          ; $63e2: $4c
	jr z, @-$06                                      ; $63e3: $28 $f8

jr_00d_63e5:
	ldh a, [c]                                       ; $63e5: $f2
	ld c, d                                          ; $63e6: $4a
	add hl, hl                                       ; $63e7: $29
	inc b                                            ; $63e8: $04

jr_00d_63e9:
	ldh [c], a                                       ; $63e9: $e2
	inc b                                            ; $63ea: $04
	jr nz, jr_00d_63e9                               ; $63eb: $20 $fc

	ldh [c], a                                       ; $63ed: $e2
	ld [bc], a                                       ; $63ee: $02
	jr nz, jr_00d_63e5                               ; $63ef: $20 $f4

	ldh [c], a                                       ; $63f1: $e2
	nop                                              ; $63f2: $00
	jr nz, jr_00d_63f9                               ; $63f3: $20 $04

	ldh a, [c]                                       ; $63f5: $f2
	inc d                                            ; $63f6: $14
	ld [hl+], a                                      ; $63f7: $22
	db $fc                                           ; $63f8: $fc

jr_00d_63f9:
	ldh a, [c]                                       ; $63f9: $f2
	ld [de], a                                       ; $63fa: $12
	ld [hl+], a                                      ; $63fb: $22
	db $f4                                           ; $63fc: $f4
	ldh a, [c]                                       ; $63fd: $f2
	db $10                                           ; $63fe: $10
	ld [hl+], a                                      ; $63ff: $22
	db $ec                                           ; $6400: $ec
	ldh a, [c]                                       ; $6401: $f2
	ld c, $23                                        ; $6402: $0e $23
	dec b                                            ; $6404: $05
	ldh a, [rAUD4LEN]                                ; $6405: $f0 $20
	ld [hl+], a                                      ; $6407: $22
	db $fd                                           ; $6408: $fd
	ldh a, [rAUD3HIGH]                               ; $6409: $f0 $1e
	ld [hl+], a                                      ; $640b: $22
	push af                                          ; $640c: $f5
	ldh a, [rAUD3LEVEL]                              ; $640d: $f0 $1c
	ld [hl+], a                                      ; $640f: $22
	dec b                                            ; $6410: $05
	ldh [rAUD3ENA], a                                ; $6411: $e0 $1a
	ld [hl+], a                                      ; $6413: $22
	db $fd                                           ; $6414: $fd
	ldh [rAUD2LOW], a                                ; $6415: $e0 $18
	jr nz, @-$09                                     ; $6417: $20 $f5

	ldh [rAUD2LEN], a                                ; $6419: $e0 $16
	ld hl, $f208                                     ; $641b: $21 $08 $f2
	inc l                                            ; $641e: $2c
	jr nz, jr_00d_6421                               ; $641f: $20 $00

jr_00d_6421:
	ldh a, [c]                                       ; $6421: $f2

jr_00d_6422:
	ld a, [hl+]                                      ; $6422: $2a
	ld [hl+], a                                      ; $6423: $22
	ld hl, sp-$0e                                    ; $6424: $f8 $f2

jr_00d_6426:
	jr z, jr_00d_644a                                ; $6426: $28 $22

	ld bc, $26e2                                     ; $6428: $01 $e2 $26
	jr nz, jr_00d_6426                               ; $642b: $20 $f9

	ldh [c], a                                       ; $642d: $e2
	inc h                                            ; $642e: $24
	jr nz, jr_00d_6422                               ; $642f: $20 $f1

	ldh [c], a                                       ; $6431: $e2
	ld [hl+], a                                      ; $6432: $22
	ld hl, $f204                                     ; $6433: $21 $04 $f2
	ld b, d                                          ; $6436: $42
	ld [hl+], a                                      ; $6437: $22
	db $fc                                           ; $6438: $fc

jr_00d_6439:
	ldh a, [c]                                       ; $6439: $f2
	ld b, b                                          ; $643a: $40
	ld [hl+], a                                      ; $643b: $22
	inc b                                            ; $643c: $04

jr_00d_643d:
	ldh [c], a                                       ; $643d: $e2
	inc a                                            ; $643e: $3c
	jr nz, jr_00d_643d                               ; $643f: $20 $fc

	ldh [c], a                                       ; $6441: $e2
	ld a, [hl-]                                      ; $6442: $3a
	jr nz, jr_00d_6439                               ; $6443: $20 $f4

	ldh [c], a                                       ; $6445: $e2
	jr c, jr_00d_6468                                ; $6446: $38 $20

	db $f4                                           ; $6448: $f4
	ldh a, [c]                                       ; $6449: $f2

jr_00d_644a:
	ld a, $23                                        ; $644a: $3e $23
	inc b                                            ; $644c: $04
	ldh a, [c]                                       ; $644d: $f2
	ld [hl], $22                                     ; $644e: $36 $22
	db $fc                                           ; $6450: $fc
	ldh a, [c]                                       ; $6451: $f2
	inc [hl]                                         ; $6452: $34
	ld [hl+], a                                      ; $6453: $22
	db $f4                                           ; $6454: $f4
	ldh a, [c]                                       ; $6455: $f2
	ld [hl-], a                                      ; $6456: $32
	ld [hl+], a                                      ; $6457: $22
	rst $38                                          ; $6458: $ff
	ldh [c], a                                       ; $6459: $e2
	jr nc, jr_00d_647c                               ; $645a: $30 $20

	rst FarCall                                          ; $645c: $f7
	ldh [c], a                                       ; $645d: $e2
	ld l, $21                                        ; $645e: $2e $21
	db $fc                                           ; $6460: $fc
	db $f4                                           ; $6461: $f4
	ld b, h                                          ; $6462: $44
	inc hl                                           ; $6463: $23
	inc bc                                           ; $6464: $03
	ldh a, [c]                                       ; $6465: $f2
	ld b, d                                          ; $6466: $42
	ld [hl+], a                                      ; $6467: $22

jr_00d_6468:
	ei                                               ; $6468: $fb
	ldh a, [c]                                       ; $6469: $f2
	ld b, b                                          ; $646a: $40
	ld [hl+], a                                      ; $646b: $22
	di                                               ; $646c: $f3

jr_00d_646d:
	ldh a, [c]                                       ; $646d: $f2
	ld a, $22                                        ; $646e: $3e $22
	inc b                                            ; $6470: $04

jr_00d_6471:
	ldh [c], a                                       ; $6471: $e2
	inc a                                            ; $6472: $3c
	jr nz, jr_00d_6471                               ; $6473: $20 $fc

	ldh [c], a                                       ; $6475: $e2
	ld a, [hl-]                                      ; $6476: $3a
	jr nz, jr_00d_646d                               ; $6477: $20 $f4

	ldh [c], a                                       ; $6479: $e2
	jr c, jr_00d_649d                                ; $647a: $38 $21

jr_00d_647c:
	inc b                                            ; $647c: $04
	ldh a, [c]                                       ; $647d: $f2
	ld a, [bc]                                       ; $647e: $0a
	ld h, $fc                                        ; $647f: $26 $fc
	ldh a, [c]                                       ; $6481: $f2
	ld [$f426], sp                                   ; $6482: $08 $26 $f4
	ldh a, [c]                                       ; $6485: $f2
	ld b, $26                                        ; $6486: $06 $26
	inc b                                            ; $6488: $04
	ldh [c], a                                       ; $6489: $e2
	inc b                                            ; $648a: $04
	inc h                                            ; $648b: $24
	db $fc                                           ; $648c: $fc
	ldh [c], a                                       ; $648d: $e2
	ld [bc], a                                       ; $648e: $02
	inc h                                            ; $648f: $24
	db $f4                                           ; $6490: $f4
	ldh [c], a                                       ; $6491: $e2
	nop                                              ; $6492: $00
	dec h                                            ; $6493: $25
	db $f4                                           ; $6494: $f4
	ldh a, [c]                                       ; $6495: $f2
	ld a, [bc]                                       ; $6496: $0a
	ld h, [hl]                                       ; $6497: $66
	db $fc                                           ; $6498: $fc
	ldh a, [c]                                       ; $6499: $f2
	ld [$0466], sp                                   ; $649a: $08 $66 $04

jr_00d_649d:
	ldh a, [c]                                       ; $649d: $f2
	ld b, $66                                        ; $649e: $06 $66
	db $f4                                           ; $64a0: $f4
	ldh [c], a                                       ; $64a1: $e2
	inc b                                            ; $64a2: $04
	ld h, h                                          ; $64a3: $64
	db $fc                                           ; $64a4: $fc
	ldh [c], a                                       ; $64a5: $e2
	ld [bc], a                                       ; $64a6: $02
	ld h, h                                          ; $64a7: $64
	inc b                                            ; $64a8: $04
	ldh [c], a                                       ; $64a9: $e2
	nop                                              ; $64aa: $00
	ld h, l                                          ; $64ab: $65
	inc b                                            ; $64ac: $04
	ldh a, [c]                                       ; $64ad: $f2
	ld a, [bc]                                       ; $64ae: $0a
	ld h, $fc                                        ; $64af: $26 $fc
	ldh a, [c]                                       ; $64b1: $f2
	ld [$f426], sp                                   ; $64b2: $08 $26 $f4
	ldh a, [c]                                       ; $64b5: $f2
	ld b, $26                                        ; $64b6: $06 $26
	inc b                                            ; $64b8: $04
	ldh [c], a                                       ; $64b9: $e2
	inc b                                            ; $64ba: $04
	inc h                                            ; $64bb: $24
	db $fc                                           ; $64bc: $fc
	ldh [c], a                                       ; $64bd: $e2
	ld [bc], a                                       ; $64be: $02
	inc h                                            ; $64bf: $24
	db $f4                                           ; $64c0: $f4
	ldh [c], a                                       ; $64c1: $e2
	nop                                              ; $64c2: $00
	dec h                                            ; $64c3: $25
	db $fc                                           ; $64c4: $fc
	db $e3                                           ; $64c5: $e3
	ld [bc], a                                       ; $64c6: $02
	inc h                                            ; $64c7: $24
	db $fc                                           ; $64c8: $fc
	di                                               ; $64c9: $f3
	ld c, $26                                        ; $64ca: $0e $26
	db $f4                                           ; $64cc: $f4
	di                                               ; $64cd: $f3
	inc c                                            ; $64ce: $0c
	ld h, $04                                        ; $64cf: $26 $04
	di                                               ; $64d1: $f3
	ld a, [bc]                                       ; $64d2: $0a
	ld h, $04                                        ; $64d3: $26 $04
	db $e3                                           ; $64d5: $e3
	inc b                                            ; $64d6: $04
	inc h                                            ; $64d7: $24
	db $f4                                           ; $64d8: $f4
	db $e3                                           ; $64d9: $e3
	nop                                              ; $64da: $00
	dec h                                            ; $64db: $25
	db $f4                                           ; $64dc: $f4
	ldh a, [c]                                       ; $64dd: $f2
	ld a, [bc]                                       ; $64de: $0a
	ld h, [hl]                                       ; $64df: $66
	db $fc                                           ; $64e0: $fc
	ldh a, [c]                                       ; $64e1: $f2
	ld [$0466], sp                                   ; $64e2: $08 $66 $04
	ldh a, [c]                                       ; $64e5: $f2
	ld b, $66                                        ; $64e6: $06 $66
	db $f4                                           ; $64e8: $f4
	ldh [c], a                                       ; $64e9: $e2
	inc b                                            ; $64ea: $04
	ld h, h                                          ; $64eb: $64
	db $fc                                           ; $64ec: $fc
	ldh [c], a                                       ; $64ed: $e2
	ld [bc], a                                       ; $64ee: $02
	ld h, h                                          ; $64ef: $64
	inc b                                            ; $64f0: $04
	ldh [c], a                                       ; $64f1: $e2
	nop                                              ; $64f2: $00
	ld h, l                                          ; $64f3: $65
	db $fc                                           ; $64f4: $fc
	db $e3                                           ; $64f5: $e3
	ld [bc], a                                       ; $64f6: $02
	ld h, h                                          ; $64f7: $64
	db $fc                                           ; $64f8: $fc
	di                                               ; $64f9: $f3
	ld c, $66                                        ; $64fa: $0e $66
	inc b                                            ; $64fc: $04
	di                                               ; $64fd: $f3
	inc c                                            ; $64fe: $0c
	ld h, [hl]                                       ; $64ff: $66
	db $f4                                           ; $6500: $f4
	di                                               ; $6501: $f3
	ld a, [bc]                                       ; $6502: $0a
	ld h, [hl]                                       ; $6503: $66
	db $f4                                           ; $6504: $f4
	db $e3                                           ; $6505: $e3
	inc b                                            ; $6506: $04
	ld h, h                                          ; $6507: $64
	inc b                                            ; $6508: $04
	db $e3                                           ; $6509: $e3
	nop                                              ; $650a: $00
	ld h, l                                          ; $650b: $65
	inc b                                            ; $650c: $04
	ldh a, [c]                                       ; $650d: $f2
	ld a, [bc]                                       ; $650e: $0a
	ld h, $fc                                        ; $650f: $26 $fc
	ldh a, [c]                                       ; $6511: $f2
	ld [$f426], sp                                   ; $6512: $08 $26 $f4
	ldh a, [c]                                       ; $6515: $f2
	ld b, $26                                        ; $6516: $06 $26
	inc b                                            ; $6518: $04
	ldh [c], a                                       ; $6519: $e2
	inc b                                            ; $651a: $04
	inc h                                            ; $651b: $24
	db $fc                                           ; $651c: $fc
	ldh [c], a                                       ; $651d: $e2
	ld [bc], a                                       ; $651e: $02
	inc h                                            ; $651f: $24
	db $f4                                           ; $6520: $f4
	ldh [c], a                                       ; $6521: $e2
	nop                                              ; $6522: $00
	dec h                                            ; $6523: $25
	db $f4                                           ; $6524: $f4
	di                                               ; $6525: $f3
	ld c, $26                                        ; $6526: $0e $26
	db $fc                                           ; $6528: $fc
	di                                               ; $6529: $f3
	db $10                                           ; $652a: $10
	ld h, $fc                                        ; $652b: $26 $fc
	db $e3                                           ; $652d: $e3
	inc c                                            ; $652e: $0c
	inc h                                            ; $652f: $24
	inc b                                            ; $6530: $04
	di                                               ; $6531: $f3
	ld a, [bc]                                       ; $6532: $0a
	ld h, $04                                        ; $6533: $26 $04
	db $e3                                           ; $6535: $e3
	inc b                                            ; $6536: $04
	inc h                                            ; $6537: $24
	db $f4                                           ; $6538: $f4
	db $e3                                           ; $6539: $e3
	nop                                              ; $653a: $00
	dec h                                            ; $653b: $25
	db $f4                                           ; $653c: $f4
	ldh [c], a                                       ; $653d: $e2
	db $10                                           ; $653e: $10
	inc h                                            ; $653f: $24
	inc b                                            ; $6540: $04
	ldh [c], a                                       ; $6541: $e2
	inc b                                            ; $6542: $04
	inc h                                            ; $6543: $24
	inc b                                            ; $6544: $04
	ldh a, [c]                                       ; $6545: $f2
	jr jr_00d_656e                                   ; $6546: $18 $26

	db $fc                                           ; $6548: $fc
	ldh a, [c]                                       ; $6549: $f2
	ld d, $26                                        ; $654a: $16 $26
	db $f4                                           ; $654c: $f4
	ldh a, [c]                                       ; $654d: $f2
	inc d                                            ; $654e: $14
	ld h, $fc                                        ; $654f: $26 $fc
	ldh [c], a                                       ; $6551: $e2
	ld [de], a                                       ; $6552: $12
	dec h                                            ; $6553: $25
	inc b                                            ; $6554: $04
	ldh a, [c]                                       ; $6555: $f2
	inc h                                            ; $6556: $24
	ld h, $fc                                        ; $6557: $26 $fc
	ldh a, [c]                                       ; $6559: $f2
	ld [hl+], a                                      ; $655a: $22
	ld h, $f4                                        ; $655b: $26 $f4
	ldh a, [c]                                       ; $655d: $f2
	jr nz, jr_00d_6586                               ; $655e: $20 $26

	inc b                                            ; $6560: $04
	ldh [c], a                                       ; $6561: $e2
	ld e, $24                                        ; $6562: $1e $24
	db $fc                                           ; $6564: $fc
	ldh [c], a                                       ; $6565: $e2
	inc e                                            ; $6566: $1c
	inc h                                            ; $6567: $24
	db $f4                                           ; $6568: $f4
	ldh [c], a                                       ; $6569: $e2
	ld a, [de]                                       ; $656a: $1a
	dec h                                            ; $656b: $25
	inc b                                            ; $656c: $04
	ldh [c], a                                       ; $656d: $e2

jr_00d_656e:
	db $10                                           ; $656e: $10
	ld h, h                                          ; $656f: $64
	db $f4                                           ; $6570: $f4
	ldh [c], a                                       ; $6571: $e2
	inc b                                            ; $6572: $04
	ld h, h                                          ; $6573: $64
	db $f4                                           ; $6574: $f4
	ldh a, [c]                                       ; $6575: $f2
	jr jr_00d_65de                                   ; $6576: $18 $66

	db $fc                                           ; $6578: $fc
	ldh a, [c]                                       ; $6579: $f2
	ld d, $66                                        ; $657a: $16 $66
	inc b                                            ; $657c: $04
	ldh a, [c]                                       ; $657d: $f2
	inc d                                            ; $657e: $14
	ld h, [hl]                                       ; $657f: $66
	db $fc                                           ; $6580: $fc
	ldh [c], a                                       ; $6581: $e2
	ld [de], a                                       ; $6582: $12
	ld h, l                                          ; $6583: $65
	db $f4                                           ; $6584: $f4
	ldh a, [c]                                       ; $6585: $f2

jr_00d_6586:
	inc h                                            ; $6586: $24
	ld h, [hl]                                       ; $6587: $66
	db $fc                                           ; $6588: $fc
	ldh a, [c]                                       ; $6589: $f2
	ld [hl+], a                                      ; $658a: $22
	ld h, [hl]                                       ; $658b: $66
	inc b                                            ; $658c: $04
	ldh a, [c]                                       ; $658d: $f2
	jr nz, jr_00d_65f6                               ; $658e: $20 $66

	db $f4                                           ; $6590: $f4
	ldh [c], a                                       ; $6591: $e2
	ld e, $64                                        ; $6592: $1e $64
	db $fc                                           ; $6594: $fc
	ldh [c], a                                       ; $6595: $e2
	inc e                                            ; $6596: $1c
	ld h, h                                          ; $6597: $64
	inc b                                            ; $6598: $04
	ldh [c], a                                       ; $6599: $e2
	ld a, [de]                                       ; $659a: $1a
	ld h, l                                          ; $659b: $65
	inc b                                            ; $659c: $04
	ldh a, [c]                                       ; $659d: $f2
	ld a, [bc]                                       ; $659e: $0a
	ld h, $fc                                        ; $659f: $26 $fc
	ldh a, [c]                                       ; $65a1: $f2
	ld [$f426], sp                                   ; $65a2: $08 $26 $f4
	ldh a, [c]                                       ; $65a5: $f2
	ld b, $26                                        ; $65a6: $06 $26
	inc b                                            ; $65a8: $04
	ldh [c], a                                       ; $65a9: $e2
	inc b                                            ; $65aa: $04
	inc h                                            ; $65ab: $24
	db $fc                                           ; $65ac: $fc
	ldh [c], a                                       ; $65ad: $e2
	jr z, @+$26                                      ; $65ae: $28 $24

	db $f4                                           ; $65b0: $f4
	ldh [c], a                                       ; $65b1: $e2
	ld h, $25                                        ; $65b2: $26 $25
	db $fc                                           ; $65b4: $fc
	ldh [c], a                                       ; $65b5: $e2
	ld [de], a                                       ; $65b6: $12
	inc h                                            ; $65b7: $24
	inc b                                            ; $65b8: $04
	ldh a, [c]                                       ; $65b9: $f2
	ld a, [bc]                                       ; $65ba: $0a
	ld h, $fc                                        ; $65bb: $26 $fc
	ldh a, [c]                                       ; $65bd: $f2
	ld [$f426], sp                                   ; $65be: $08 $26 $f4
	ldh a, [c]                                       ; $65c1: $f2
	ld b, $26                                        ; $65c2: $06 $26
	inc b                                            ; $65c4: $04
	ldh [c], a                                       ; $65c5: $e2
	inc b                                            ; $65c6: $04
	inc h                                            ; $65c7: $24
	db $f4                                           ; $65c8: $f4
	ldh [c], a                                       ; $65c9: $e2
	ld h, $25                                        ; $65ca: $26 $25
	inc b                                            ; $65cc: $04
	ldh a, [c]                                       ; $65cd: $f2
	ld a, [bc]                                       ; $65ce: $0a
	ld h, $fc                                        ; $65cf: $26 $fc
	ldh a, [c]                                       ; $65d1: $f2
	ld [$f426], sp                                   ; $65d2: $08 $26 $f4
	ldh a, [c]                                       ; $65d5: $f2
	ld b, $26                                        ; $65d6: $06 $26
	inc b                                            ; $65d8: $04
	ldh [c], a                                       ; $65d9: $e2
	inc b                                            ; $65da: $04
	inc h                                            ; $65db: $24
	db $fc                                           ; $65dc: $fc
	ldh [c], a                                       ; $65dd: $e2

jr_00d_65de:
	ld [bc], a                                       ; $65de: $02
	inc h                                            ; $65df: $24
	db $f4                                           ; $65e0: $f4
	ldh [c], a                                       ; $65e1: $e2
	nop                                              ; $65e2: $00
	dec h                                            ; $65e3: $25
	inc b                                            ; $65e4: $04
	ldh a, [c]                                       ; $65e5: $f2
	inc l                                            ; $65e6: $2c
	ld h, $fc                                        ; $65e7: $26 $fc
	ldh a, [c]                                       ; $65e9: $f2
	ld a, [hl+]                                      ; $65ea: $2a
	ld h, $f4                                        ; $65eb: $26 $f4
	ldh a, [c]                                       ; $65ed: $f2
	jr z, jr_00d_6616                                ; $65ee: $28 $26

	inc b                                            ; $65f0: $04
	ldh [c], a                                       ; $65f1: $e2
	inc b                                            ; $65f2: $04
	inc h                                            ; $65f3: $24
	db $fc                                           ; $65f4: $fc
	ldh [c], a                                       ; $65f5: $e2

jr_00d_65f6:
	inc [hl]                                         ; $65f6: $34
	inc h                                            ; $65f7: $24
	db $f4                                           ; $65f8: $f4
	ldh [c], a                                       ; $65f9: $e2
	ld [hl-], a                                      ; $65fa: $32
	dec h                                            ; $65fb: $25
	inc b                                            ; $65fc: $04
	di                                               ; $65fd: $f3
	inc l                                            ; $65fe: $2c
	ld h, $fc                                        ; $65ff: $26 $fc
	di                                               ; $6601: $f3
	jr nc, jr_00d_662a                               ; $6602: $30 $26

	db $f4                                           ; $6604: $f4
	di                                               ; $6605: $f3
	ld l, $26                                        ; $6606: $2e $26
	inc b                                            ; $6608: $04
	db $e3                                           ; $6609: $e3
	inc b                                            ; $660a: $04
	inc h                                            ; $660b: $24
	db $fc                                           ; $660c: $fc
	db $e3                                           ; $660d: $e3
	inc [hl]                                         ; $660e: $34
	inc h                                            ; $660f: $24
	db $f4                                           ; $6610: $f4
	db $e3                                           ; $6611: $e3
	ld [hl-], a                                      ; $6612: $32
	dec h                                            ; $6613: $25
	db $f4                                           ; $6614: $f4
	ldh a, [c]                                       ; $6615: $f2

jr_00d_6616:
	ld a, [bc]                                       ; $6616: $0a
	ld h, [hl]                                       ; $6617: $66
	db $fc                                           ; $6618: $fc
	ldh a, [c]                                       ; $6619: $f2
	ld [$0466], sp                                   ; $661a: $08 $66 $04
	ldh a, [c]                                       ; $661d: $f2
	ld b, $66                                        ; $661e: $06 $66
	db $f4                                           ; $6620: $f4
	ldh [c], a                                       ; $6621: $e2
	inc b                                            ; $6622: $04
	ld h, h                                          ; $6623: $64
	db $fc                                           ; $6624: $fc
	ldh [c], a                                       ; $6625: $e2
	ld [bc], a                                       ; $6626: $02
	ld h, h                                          ; $6627: $64
	inc b                                            ; $6628: $04
	ldh [c], a                                       ; $6629: $e2

jr_00d_662a:
	nop                                              ; $662a: $00
	ld h, l                                          ; $662b: $65
	db $f4                                           ; $662c: $f4
	ldh a, [c]                                       ; $662d: $f2
	inc l                                            ; $662e: $2c
	ld h, [hl]                                       ; $662f: $66
	db $fc                                           ; $6630: $fc
	ldh a, [c]                                       ; $6631: $f2
	ld a, [hl+]                                      ; $6632: $2a
	ld h, [hl]                                       ; $6633: $66
	inc b                                            ; $6634: $04
	ldh a, [c]                                       ; $6635: $f2
	jr z, jr_00d_669e                                ; $6636: $28 $66

	db $f4                                           ; $6638: $f4
	ldh [c], a                                       ; $6639: $e2
	inc b                                            ; $663a: $04
	ld h, h                                          ; $663b: $64
	db $fc                                           ; $663c: $fc
	ldh [c], a                                       ; $663d: $e2
	inc [hl]                                         ; $663e: $34
	ld h, h                                          ; $663f: $64
	inc b                                            ; $6640: $04
	ldh [c], a                                       ; $6641: $e2
	ld [hl-], a                                      ; $6642: $32
	ld h, l                                          ; $6643: $65
	db $f4                                           ; $6644: $f4
	di                                               ; $6645: $f3
	inc l                                            ; $6646: $2c
	ld h, [hl]                                       ; $6647: $66
	db $fc                                           ; $6648: $fc
	di                                               ; $6649: $f3
	jr nc, jr_00d_66b2                               ; $664a: $30 $66

	inc b                                            ; $664c: $04
	di                                               ; $664d: $f3
	ld l, $66                                        ; $664e: $2e $66
	db $f4                                           ; $6650: $f4
	db $e3                                           ; $6651: $e3
	inc b                                            ; $6652: $04
	ld h, h                                          ; $6653: $64
	db $fc                                           ; $6654: $fc
	db $e3                                           ; $6655: $e3
	inc [hl]                                         ; $6656: $34
	ld h, h                                          ; $6657: $64
	inc b                                            ; $6658: $04
	db $e3                                           ; $6659: $e3
	ld [hl-], a                                      ; $665a: $32
	ld h, l                                          ; $665b: $65
	inc b                                            ; $665c: $04
	ldh a, [c]                                       ; $665d: $f2
	ld a, [bc]                                       ; $665e: $0a
	ld h, $fc                                        ; $665f: $26 $fc
	ldh a, [c]                                       ; $6661: $f2
	ld [$f426], sp                                   ; $6662: $08 $26 $f4
	ldh a, [c]                                       ; $6665: $f2
	ld b, $26                                        ; $6666: $06 $26
	inc b                                            ; $6668: $04
	ldh [c], a                                       ; $6669: $e2
	inc b                                            ; $666a: $04
	inc h                                            ; $666b: $24
	db $fc                                           ; $666c: $fc
	ldh [c], a                                       ; $666d: $e2
	ld [bc], a                                       ; $666e: $02
	inc h                                            ; $666f: $24
	db $f4                                           ; $6670: $f4
	ldh [c], a                                       ; $6671: $e2
	nop                                              ; $6672: $00
	dec h                                            ; $6673: $25
	db $fc                                           ; $6674: $fc
	db $e3                                           ; $6675: $e3
	db $10                                           ; $6676: $10
	inc h                                            ; $6677: $24
	inc b                                            ; $6678: $04
	di                                               ; $6679: $f3
	ld a, [bc]                                       ; $667a: $0a
	ld h, $fc                                        ; $667b: $26 $fc
	di                                               ; $667d: $f3
	ld c, $26                                        ; $667e: $0e $26
	db $f4                                           ; $6680: $f4
	di                                               ; $6681: $f3
	inc c                                            ; $6682: $0c
	ld h, $04                                        ; $6683: $26 $04
	db $e3                                           ; $6685: $e3
	inc b                                            ; $6686: $04
	inc h                                            ; $6687: $24
	db $f4                                           ; $6688: $f4
	db $e3                                           ; $6689: $e3
	nop                                              ; $668a: $00
	dec h                                            ; $668b: $25
	inc b                                            ; $668c: $04
	ldh a, [c]                                       ; $668d: $f2
	ld a, [bc]                                       ; $668e: $0a
	ld h, $fc                                        ; $668f: $26 $fc
	ldh a, [c]                                       ; $6691: $f2
	ld [$f426], sp                                   ; $6692: $08 $26 $f4
	ldh a, [c]                                       ; $6695: $f2
	ld b, $26                                        ; $6696: $06 $26
	inc b                                            ; $6698: $04
	ldh [c], a                                       ; $6699: $e2
	inc b                                            ; $669a: $04
	inc h                                            ; $669b: $24
	db $fc                                           ; $669c: $fc
	ldh [c], a                                       ; $669d: $e2

jr_00d_669e:
	ld [bc], a                                       ; $669e: $02
	inc h                                            ; $669f: $24
	db $f4                                           ; $66a0: $f4
	ldh [c], a                                       ; $66a1: $e2
	nop                                              ; $66a2: $00
	dec h                                            ; $66a3: $25
	inc b                                            ; $66a4: $04
	ldh a, [c]                                       ; $66a5: $f2
	ld d, $26                                        ; $66a6: $16 $26
	db $fc                                           ; $66a8: $fc
	ldh a, [c]                                       ; $66a9: $f2
	inc d                                            ; $66aa: $14
	ld h, $f4                                        ; $66ab: $26 $f4
	ldh a, [c]                                       ; $66ad: $f2
	ld [de], a                                       ; $66ae: $12
	ld h, $04                                        ; $66af: $26 $04
	ldh [c], a                                       ; $66b1: $e2

jr_00d_66b2:
	db $10                                           ; $66b2: $10
	inc h                                            ; $66b3: $24
	db $fc                                           ; $66b4: $fc
	ldh [c], a                                       ; $66b5: $e2
	ld c, $24                                        ; $66b6: $0e $24
	db $f4                                           ; $66b8: $f4
	ldh [c], a                                       ; $66b9: $e2
	inc c                                            ; $66ba: $0c
	dec h                                            ; $66bb: $25
	inc b                                            ; $66bc: $04
	ldh a, [c]                                       ; $66bd: $f2
	ld e, $26                                        ; $66be: $1e $26
	db $f4                                           ; $66c0: $f4
	ldh a, [c]                                       ; $66c1: $f2
	inc e                                            ; $66c2: $1c
	ld h, $04                                        ; $66c3: $26 $04
	ldh [c], a                                       ; $66c5: $e2
	inc b                                            ; $66c6: $04
	inc h                                            ; $66c7: $24
	db $fc                                           ; $66c8: $fc
	ldh [c], a                                       ; $66c9: $e2
	ld a, [de]                                       ; $66ca: $1a
	inc h                                            ; $66cb: $24
	db $f4                                           ; $66cc: $f4
	ldh [c], a                                       ; $66cd: $e2
	jr jr_00d_66f4                                   ; $66ce: $18 $24

	db $fc                                           ; $66d0: $fc
	ldh a, [c]                                       ; $66d1: $f2
	inc d                                            ; $66d2: $14
	daa                                              ; $66d3: $27
	ld b, $f5                                        ; $66d4: $06 $f5
	jr nz, jr_00d_673e                               ; $66d6: $20 $66

	pop af                                           ; $66d8: $f1
	push af                                          ; $66d9: $f5
	jr nz, jr_00d_6703                               ; $66da: $20 $27

	ld b, $f5                                        ; $66dc: $06 $f5
	ld [hl+], a                                      ; $66de: $22
	ld h, [hl]                                       ; $66df: $66
	pop af                                           ; $66e0: $f1
	push af                                          ; $66e1: $f5
	ld [hl+], a                                      ; $66e2: $22
	daa                                              ; $66e3: $27
	dec bc                                           ; $66e4: $0b
	push af                                          ; $66e5: $f5
	inc h                                            ; $66e6: $24
	ld h, [hl]                                       ; $66e7: $66
	inc bc                                           ; $66e8: $03
	push af                                          ; $66e9: $f5
	ld h, $64                                        ; $66ea: $26 $64
	push af                                          ; $66ec: $f5
	push af                                          ; $66ed: $f5
	ld h, $24                                        ; $66ee: $26 $24
	db $ed                                           ; $66f0: $ed
	push af                                          ; $66f1: $f5
	inc h                                            ; $66f2: $24
	daa                                              ; $66f3: $27

jr_00d_66f4:
	dec bc                                           ; $66f4: $0b
	push af                                          ; $66f5: $f5
	inc h                                            ; $66f6: $24
	ld h, [hl]                                       ; $66f7: $66
	inc bc                                           ; $66f8: $03
	push af                                          ; $66f9: $f5
	ld h, $64                                        ; $66fa: $26 $64
	push af                                          ; $66fc: $f5
	push af                                          ; $66fd: $f5
	ld h, $24                                        ; $66fe: $26 $24
	db $ed                                           ; $6700: $ed
	push af                                          ; $6701: $f5
	inc h                                            ; $6702: $24

jr_00d_6703:
	daa                                              ; $6703: $27
	inc b                                            ; $6704: $04
	ldh a, [c]                                       ; $6705: $f2
	inc l                                            ; $6706: $2c
	ld h, $fc                                        ; $6707: $26 $fc
	ldh a, [c]                                       ; $6709: $f2
	ld a, [hl+]                                      ; $670a: $2a
	ld h, $f4                                        ; $670b: $26 $f4
	ldh a, [c]                                       ; $670d: $f2
	jr z, jr_00d_6736                                ; $670e: $28 $26

	inc b                                            ; $6710: $04
	ldh [c], a                                       ; $6711: $e2
	inc b                                            ; $6712: $04
	inc h                                            ; $6713: $24
	db $fc                                           ; $6714: $fc
	ldh [c], a                                       ; $6715: $e2
	inc [hl]                                         ; $6716: $34
	inc h                                            ; $6717: $24
	db $f4                                           ; $6718: $f4
	ldh [c], a                                       ; $6719: $e2
	ld [hl-], a                                      ; $671a: $32
	dec h                                            ; $671b: $25
	db $fc                                           ; $671c: $fc
	ldh [c], a                                       ; $671d: $e2
	ld [hl], $24                                     ; $671e: $36 $24
	inc b                                            ; $6720: $04
	ldh a, [c]                                       ; $6721: $f2
	inc l                                            ; $6722: $2c
	ld h, $fc                                        ; $6723: $26 $fc
	ldh a, [c]                                       ; $6725: $f2
	ld a, [hl+]                                      ; $6726: $2a
	ld h, $f4                                        ; $6727: $26 $f4
	ldh a, [c]                                       ; $6729: $f2
	jr z, jr_00d_6752                                ; $672a: $28 $26

	inc b                                            ; $672c: $04
	ldh [c], a                                       ; $672d: $e2
	inc b                                            ; $672e: $04
	inc h                                            ; $672f: $24
	db $f4                                           ; $6730: $f4
	ldh [c], a                                       ; $6731: $e2
	ld [hl-], a                                      ; $6732: $32
	dec h                                            ; $6733: $25
	inc b                                            ; $6734: $04
	ldh a, [c]                                       ; $6735: $f2

jr_00d_6736:
	ld a, [bc]                                       ; $6736: $0a
	ld h, $fc                                        ; $6737: $26 $fc
	ldh a, [c]                                       ; $6739: $f2
	ld [$f426], sp                                   ; $673a: $08 $26 $f4
	ldh a, [c]                                       ; $673d: $f2

jr_00d_673e:
	ld b, $26                                        ; $673e: $06 $26
	inc b                                            ; $6740: $04
	ldh [c], a                                       ; $6741: $e2
	inc b                                            ; $6742: $04
	inc h                                            ; $6743: $24
	db $fc                                           ; $6744: $fc
	ldh [c], a                                       ; $6745: $e2
	ld [bc], a                                       ; $6746: $02
	inc h                                            ; $6747: $24
	db $f4                                           ; $6748: $f4
	ldh [c], a                                       ; $6749: $e2
	nop                                              ; $674a: $00
	dec h                                            ; $674b: $25
	db $f4                                           ; $674c: $f4
	ldh a, [c]                                       ; $674d: $f2
	ld a, [bc]                                       ; $674e: $0a
	ld h, [hl]                                       ; $674f: $66
	db $fc                                           ; $6750: $fc
	ldh a, [c]                                       ; $6751: $f2

jr_00d_6752:
	ld [$0466], sp                                   ; $6752: $08 $66 $04
	ldh a, [c]                                       ; $6755: $f2
	ld b, $66                                        ; $6756: $06 $66
	db $f4                                           ; $6758: $f4
	ldh [c], a                                       ; $6759: $e2
	inc b                                            ; $675a: $04
	ld h, h                                          ; $675b: $64
	db $fc                                           ; $675c: $fc
	ldh [c], a                                       ; $675d: $e2
	ld [bc], a                                       ; $675e: $02
	ld h, h                                          ; $675f: $64
	inc b                                            ; $6760: $04
	ldh [c], a                                       ; $6761: $e2
	nop                                              ; $6762: $00
	ld h, l                                          ; $6763: $65
	inc b                                            ; $6764: $04
	ldh a, [c]                                       ; $6765: $f2
	ld a, [bc]                                       ; $6766: $0a
	ld h, $fc                                        ; $6767: $26 $fc
	ldh a, [c]                                       ; $6769: $f2
	ld [$f426], sp                                   ; $676a: $08 $26 $f4
	ldh a, [c]                                       ; $676d: $f2
	ld b, $26                                        ; $676e: $06 $26
	inc b                                            ; $6770: $04
	ldh [c], a                                       ; $6771: $e2
	inc b                                            ; $6772: $04
	inc h                                            ; $6773: $24
	db $fc                                           ; $6774: $fc
	ldh [c], a                                       ; $6775: $e2
	ld [bc], a                                       ; $6776: $02
	inc h                                            ; $6777: $24
	db $f4                                           ; $6778: $f4
	ldh [c], a                                       ; $6779: $e2
	nop                                              ; $677a: $00
	dec h                                            ; $677b: $25
	db $fc                                           ; $677c: $fc
	ldh [c], a                                       ; $677d: $e2
	inc c                                            ; $677e: $0c
	inc h                                            ; $677f: $24
	inc b                                            ; $6780: $04
	ldh a, [c]                                       ; $6781: $f2
	ld a, [bc]                                       ; $6782: $0a
	ld h, $fc                                        ; $6783: $26 $fc
	ldh a, [c]                                       ; $6785: $f2
	ld [$f426], sp                                   ; $6786: $08 $26 $f4
	ldh a, [c]                                       ; $6789: $f2
	ld b, $26                                        ; $678a: $06 $26
	inc b                                            ; $678c: $04
	ldh [c], a                                       ; $678d: $e2
	inc b                                            ; $678e: $04
	inc h                                            ; $678f: $24
	db $f4                                           ; $6790: $f4
	ldh [c], a                                       ; $6791: $e2
	nop                                              ; $6792: $00
	dec h                                            ; $6793: $25
	inc b                                            ; $6794: $04
	ldh [c], a                                       ; $6795: $e2
	inc b                                            ; $6796: $04
	inc h                                            ; $6797: $24
	db $f4                                           ; $6798: $f4
	ldh [c], a                                       ; $6799: $e2
	nop                                              ; $679a: $00
	inc h                                            ; $679b: $24
	db $fc                                           ; $679c: $fc
	ldh [c], a                                       ; $679d: $e2
	ld b, $24                                        ; $679e: $06 $24
	db $f4                                           ; $67a0: $f4
	ldh a, [c]                                       ; $67a1: $f2
	inc c                                            ; $67a2: $0c
	ld h, $fc                                        ; $67a3: $26 $fc
	ldh a, [c]                                       ; $67a5: $f2
	ld c, $26                                        ; $67a6: $0e $26
	inc b                                            ; $67a8: $04
	ldh a, [c]                                       ; $67a9: $f2
	db $10                                           ; $67aa: $10
	daa                                              ; $67ab: $27
	inc b                                            ; $67ac: $04
	ldh [c], a                                       ; $67ad: $e2
	inc b                                            ; $67ae: $04
	inc h                                            ; $67af: $24
	db $f4                                           ; $67b0: $f4
	ldh [c], a                                       ; $67b1: $e2
	nop                                              ; $67b2: $00
	inc h                                            ; $67b3: $24
	db $fc                                           ; $67b4: $fc
	ldh [c], a                                       ; $67b5: $e2
	ld b, $24                                        ; $67b6: $06 $24
	ld a, [$0aee]                                    ; $67b8: $fa $ee $0a
	ld a, [hl+]                                      ; $67bb: $2a
	db $f4                                           ; $67bc: $f4
	ldh a, [c]                                       ; $67bd: $f2
	inc c                                            ; $67be: $0c
	ld h, $fc                                        ; $67bf: $26 $fc
	ldh a, [c]                                       ; $67c1: $f2
	ld c, $26                                        ; $67c2: $0e $26
	inc b                                            ; $67c4: $04
	ldh a, [c]                                       ; $67c5: $f2
	db $10                                           ; $67c6: $10
	daa                                              ; $67c7: $27
	inc b                                            ; $67c8: $04
	ldh [c], a                                       ; $67c9: $e2
	inc b                                            ; $67ca: $04
	inc h                                            ; $67cb: $24
	db $f4                                           ; $67cc: $f4
	ldh [c], a                                       ; $67cd: $e2
	nop                                              ; $67ce: $00
	inc h                                            ; $67cf: $24
	ld a, [$3ced]                                    ; $67d0: $fa $ed $3c
	jr z, jr_00d_67d9                                ; $67d3: $28 $04

	ldh a, [c]                                       ; $67d5: $f2
	db $10                                           ; $67d6: $10
	ld h, $fc                                        ; $67d7: $26 $fc

jr_00d_67d9:
	ldh a, [c]                                       ; $67d9: $f2
	ld c, $26                                        ; $67da: $0e $26
	db $f4                                           ; $67dc: $f4
	ldh a, [c]                                       ; $67dd: $f2
	inc c                                            ; $67de: $0c
	ld h, $fc                                        ; $67df: $26 $fc
	ldh [c], a                                       ; $67e1: $e2
	ld [$0425], sp                                   ; $67e2: $08 $25 $04
	ldh [c], a                                       ; $67e5: $e2
	inc b                                            ; $67e6: $04
	inc h                                            ; $67e7: $24
	db $f4                                           ; $67e8: $f4
	ldh [c], a                                       ; $67e9: $e2
	nop                                              ; $67ea: $00
	inc h                                            ; $67eb: $24
	ld a, [$0aee]                                    ; $67ec: $fa $ee $0a
	ld a, [hl+]                                      ; $67ef: $2a
	db $fc                                           ; $67f0: $fc
	ldh a, [c]                                       ; $67f1: $f2
	ld c, $26                                        ; $67f2: $0e $26
	inc b                                            ; $67f4: $04
	ldh a, [c]                                       ; $67f5: $f2
	db $10                                           ; $67f6: $10
	ld h, $f4                                        ; $67f7: $26 $f4
	ldh a, [c]                                       ; $67f9: $f2
	inc c                                            ; $67fa: $0c
	ld h, $fc                                        ; $67fb: $26 $fc
	ldh [c], a                                       ; $67fd: $e2
	ld [$fc25], sp                                   ; $67fe: $08 $25 $fc
	ldh [c], a                                       ; $6801: $e2
	ld [de], a                                       ; $6802: $12
	inc h                                            ; $6803: $24
	inc b                                            ; $6804: $04
	ldh a, [c]                                       ; $6805: $f2
	ld a, [de]                                       ; $6806: $1a
	ld h, $fc                                        ; $6807: $26 $fc
	ldh a, [c]                                       ; $6809: $f2
	jr jr_00d_6832                                   ; $680a: $18 $26

	db $f4                                           ; $680c: $f4
	ldh a, [c]                                       ; $680d: $f2
	ld d, $26                                        ; $680e: $16 $26
	inc b                                            ; $6810: $04
	ldh [c], a                                       ; $6811: $e2
	inc b                                            ; $6812: $04
	inc h                                            ; $6813: $24
	db $f4                                           ; $6814: $f4
	ldh [c], a                                       ; $6815: $e2
	nop                                              ; $6816: $00
	dec h                                            ; $6817: $25
	db $fc                                           ; $6818: $fc
	ldh [c], a                                       ; $6819: $e2
	inc d                                            ; $681a: $14
	inc h                                            ; $681b: $24
	inc b                                            ; $681c: $04
	ldh a, [c]                                       ; $681d: $f2
	ld a, [de]                                       ; $681e: $1a
	ld h, $fc                                        ; $681f: $26 $fc
	ldh a, [c]                                       ; $6821: $f2
	jr @+$28                                         ; $6822: $18 $26

	db $f4                                           ; $6824: $f4
	ldh a, [c]                                       ; $6825: $f2
	ld d, $26                                        ; $6826: $16 $26
	inc b                                            ; $6828: $04
	ldh [c], a                                       ; $6829: $e2
	inc b                                            ; $682a: $04
	inc h                                            ; $682b: $24
	db $f4                                           ; $682c: $f4
	ldh [c], a                                       ; $682d: $e2
	nop                                              ; $682e: $00
	dec h                                            ; $682f: $25
	db $fc                                           ; $6830: $fc
	ldh [c], a                                       ; $6831: $e2

jr_00d_6832:
	inc d                                            ; $6832: $14
	inc h                                            ; $6833: $24
	inc b                                            ; $6834: $04
	ldh a, [c]                                       ; $6835: $f2
	ld a, [de]                                       ; $6836: $1a
	ld h, $fc                                        ; $6837: $26 $fc
	ldh a, [c]                                       ; $6839: $f2
	jr @+$28                                         ; $683a: $18 $26

	db $f4                                           ; $683c: $f4
	ldh a, [c]                                       ; $683d: $f2
	ld d, $26                                        ; $683e: $16 $26
	inc b                                            ; $6840: $04
	ldh [c], a                                       ; $6841: $e2
	inc b                                            ; $6842: $04
	inc h                                            ; $6843: $24
	db $f4                                           ; $6844: $f4
	ldh [c], a                                       ; $6845: $e2
	nop                                              ; $6846: $00
	dec h                                            ; $6847: $25
	ei                                               ; $6848: $fb

jr_00d_6849:
	ld hl, sp+$0a                                    ; $6849: $f8 $0a
	dec hl                                           ; $684b: $2b
	nop                                              ; $684c: $00
	ld hl, sp+$24                                    ; $684d: $f8 $24
	jr z, jr_00d_6849                                ; $684f: $28 $f8

jr_00d_6851:
	ld hl, sp+$22                                    ; $6851: $f8 $22
	add hl, hl                                       ; $6853: $29
	nop                                              ; $6854: $00
	ld hl, sp+$28                                    ; $6855: $f8 $28
	jr z, jr_00d_6851                                ; $6857: $28 $f8

	ld hl, sp+$26                                    ; $6859: $f8 $26
	add hl, hl                                       ; $685b: $29
	ld hl, sp-$08                                    ; $685c: $f8 $f8
	ld a, [hl+]                                      ; $685e: $2a
	jr z, jr_00d_6861                                ; $685f: $28 $00

jr_00d_6861:
	ld hl, sp+$2c                                    ; $6861: $f8 $2c
	add hl, hl                                       ; $6863: $29
	nop                                              ; $6864: $00
	ld hl, sp+$28                                    ; $6865: $f8 $28
	jr z, jr_00d_6861                                ; $6867: $28 $f8

	ld hl, sp+$26                                    ; $6869: $f8 $26
	add hl, hl                                       ; $686b: $29
	ld hl, sp-$08                                    ; $686c: $f8 $f8
	ld a, [hl+]                                      ; $686e: $2a
	jr z, jr_00d_6871                                ; $686f: $28 $00

jr_00d_6871:
	ld hl, sp+$2c                                    ; $6871: $f8 $2c
	add hl, hl                                       ; $6873: $29
	ld hl, sp-$60                                    ; $6874: $f8 $a0
	ld l, $2a                                        ; $6876: $2e $2a
	ld hl, sp-$50                                    ; $6878: $f8 $b0
	ld l, $2a                                        ; $687a: $2e $2a
	ld hl, sp-$40                                    ; $687c: $f8 $c0
	ld l, $2a                                        ; $687e: $2e $2a
	ld hl, sp-$30                                    ; $6880: $f8 $d0
	ld l, $2a                                        ; $6882: $2e $2a
	ld hl, sp-$20                                    ; $6884: $f8 $e0
	ld l, $2a                                        ; $6886: $2e $2a
	ld hl, sp-$10                                    ; $6888: $f8 $f0
	ld l, $2b                                        ; $688a: $2e $2b
	ld hl, sp-$10                                    ; $688c: $f8 $f0
	jr nc, jr_00d_68ba                               ; $688e: $30 $2a

	ld hl, sp-$20                                    ; $6890: $f8 $e0
	jr nc, @+$2c                                     ; $6892: $30 $2a

	ld hl, sp-$30                                    ; $6894: $f8 $d0
	jr nc, @+$2c                                     ; $6896: $30 $2a

	ld hl, sp-$40                                    ; $6898: $f8 $c0
	jr nc, jr_00d_68c6                               ; $689a: $30 $2a

	ld hl, sp-$50                                    ; $689c: $f8 $b0
	jr nc, jr_00d_68ca                               ; $689e: $30 $2a

	ld hl, sp-$60                                    ; $68a0: $f8 $a0
	jr nc, jr_00d_68cf                               ; $68a2: $30 $2b

	ld hl, sp-$10                                    ; $68a4: $f8 $f0
	ld [hl-], a                                      ; $68a6: $32
	ld a, [hl+]                                      ; $68a7: $2a
	ld hl, sp-$20                                    ; $68a8: $f8 $e0
	ld [hl-], a                                      ; $68aa: $32
	ld a, [hl+]                                      ; $68ab: $2a
	ld hl, sp-$30                                    ; $68ac: $f8 $d0
	ld [hl-], a                                      ; $68ae: $32
	ld a, [hl+]                                      ; $68af: $2a
	ld hl, sp-$40                                    ; $68b0: $f8 $c0
	ld [hl-], a                                      ; $68b2: $32
	ld a, [hl+]                                      ; $68b3: $2a
	ld hl, sp-$50                                    ; $68b4: $f8 $b0
	ld [hl-], a                                      ; $68b6: $32
	ld a, [hl+]                                      ; $68b7: $2a
	ld hl, sp-$60                                    ; $68b8: $f8 $a0

jr_00d_68ba:
	ld [hl-], a                                      ; $68ba: $32
	dec hl                                           ; $68bb: $2b
	ld sp, hl                                        ; $68bc: $f9
	ldh a, [$34]                                     ; $68bd: $f0 $34
	ld a, [hl+]                                      ; $68bf: $2a
	ld sp, hl                                        ; $68c0: $f9
	ldh [$34], a                                     ; $68c1: $e0 $34
	ld a, [hl+]                                      ; $68c3: $2a
	ld sp, hl                                        ; $68c4: $f9
	ret nc                                           ; $68c5: $d0

jr_00d_68c6:
	inc [hl]                                         ; $68c6: $34
	ld a, [hl+]                                      ; $68c7: $2a
	ld sp, hl                                        ; $68c8: $f9
	ret nz                                           ; $68c9: $c0

jr_00d_68ca:
	inc [hl]                                         ; $68ca: $34
	ld a, [hl+]                                      ; $68cb: $2a
	ld sp, hl                                        ; $68cc: $f9
	or b                                             ; $68cd: $b0
	inc [hl]                                         ; $68ce: $34

jr_00d_68cf:
	ld a, [hl+]                                      ; $68cf: $2a
	ld sp, hl                                        ; $68d0: $f9
	and b                                            ; $68d1: $a0
	inc [hl]                                         ; $68d2: $34
	dec hl                                           ; $68d3: $2b
	nop                                              ; $68d4: $00
	ldh a, [$36]                                     ; $68d5: $f0 $36
	ld l, d                                          ; $68d7: $6a
	nop                                              ; $68d8: $00
	ldh [$36], a                                     ; $68d9: $e0 $36
	ld l, d                                          ; $68db: $6a
	nop                                              ; $68dc: $00
	ret nc                                           ; $68dd: $d0

	ld [hl], $6a                                     ; $68de: $36 $6a
	ld hl, sp-$10                                    ; $68e0: $f8 $f0
	ld [hl], $2a                                     ; $68e2: $36 $2a
	ld hl, sp-$20                                    ; $68e4: $f8 $e0
	ld [hl], $2a                                     ; $68e6: $36 $2a
	ld hl, sp-$30                                    ; $68e8: $f8 $d0
	ld [hl], $2a                                     ; $68ea: $36 $2a
	nop                                              ; $68ec: $00
	ret nz                                           ; $68ed: $c0

	ld [hl], $6a                                     ; $68ee: $36 $6a
	ld hl, sp-$40                                    ; $68f0: $f8 $c0
	ld [hl], $2a                                     ; $68f2: $36 $2a
	nop                                              ; $68f4: $00
	or b                                             ; $68f5: $b0
	ld [hl], $6a                                     ; $68f6: $36 $6a
	ld hl, sp-$50                                    ; $68f8: $f8 $b0
	ld [hl], $2a                                     ; $68fa: $36 $2a
	nop                                              ; $68fc: $00
	and b                                            ; $68fd: $a0
	ld [hl], $6a                                     ; $68fe: $36 $6a
	ld hl, sp-$60                                    ; $6900: $f8 $a0
	ld [hl], $2b                                     ; $6902: $36 $2b
	inc b                                            ; $6904: $04
	ldh a, [$3a]                                     ; $6905: $f0 $3a
	ld l, d                                          ; $6907: $6a
	inc b                                            ; $6908: $04
	ldh [$3a], a                                     ; $6909: $e0 $3a
	ld l, d                                          ; $690b: $6a
	inc b                                            ; $690c: $04
	ret nc                                           ; $690d: $d0

	ld a, [hl-]                                      ; $690e: $3a
	ld l, d                                          ; $690f: $6a
	inc b                                            ; $6910: $04
	ret nz                                           ; $6911: $c0

	ld a, [hl-]                                      ; $6912: $3a
	ld l, d                                          ; $6913: $6a
	inc b                                            ; $6914: $04
	or b                                             ; $6915: $b0
	ld a, [hl-]                                      ; $6916: $3a
	ld l, d                                          ; $6917: $6a
	inc b                                            ; $6918: $04
	and b                                            ; $6919: $a0
	ld a, [hl-]                                      ; $691a: $3a
	ld l, d                                          ; $691b: $6a
	db $f4                                           ; $691c: $f4
	ldh a, [$3a]                                     ; $691d: $f0 $3a
	ld a, [hl+]                                      ; $691f: $2a
	db $f4                                           ; $6920: $f4
	ldh [$3a], a                                     ; $6921: $e0 $3a
	ld a, [hl+]                                      ; $6923: $2a
	db $f4                                           ; $6924: $f4
	ret nc                                           ; $6925: $d0

	ld a, [hl-]                                      ; $6926: $3a
	ld a, [hl+]                                      ; $6927: $2a
	db $f4                                           ; $6928: $f4
	ret nz                                           ; $6929: $c0

	ld a, [hl-]                                      ; $692a: $3a
	ld a, [hl+]                                      ; $692b: $2a
	db $f4                                           ; $692c: $f4
	or b                                             ; $692d: $b0
	ld a, [hl-]                                      ; $692e: $3a
	ld a, [hl+]                                      ; $692f: $2a
	db $f4                                           ; $6930: $f4
	and b                                            ; $6931: $a0
	ld a, [hl-]                                      ; $6932: $3a
	ld a, [hl+]                                      ; $6933: $2a
	db $fc                                           ; $6934: $fc
	ldh a, [$38]                                     ; $6935: $f0 $38
	ld a, [hl+]                                      ; $6937: $2a
	db $fc                                           ; $6938: $fc
	ldh [$38], a                                     ; $6939: $e0 $38
	ld a, [hl+]                                      ; $693b: $2a
	db $fc                                           ; $693c: $fc
	ret nc                                           ; $693d: $d0

	jr c, @+$2c                                      ; $693e: $38 $2a

	db $fc                                           ; $6940: $fc
	ret nz                                           ; $6941: $c0

	jr c, @+$2c                                      ; $6942: $38 $2a

	db $fc                                           ; $6944: $fc
	or b                                             ; $6945: $b0
	jr c, @+$2c                                      ; $6946: $38 $2a

	db $fc                                           ; $6948: $fc
	and b                                            ; $6949: $a0
	jr c, @+$2d                                      ; $694a: $38 $2b

	db $ec                                           ; $694c: $ec
	ldh a, [$3a]                                     ; $694d: $f0 $3a
	ld a, [hl+]                                      ; $694f: $2a
	db $ec                                           ; $6950: $ec
	ldh [$3a], a                                     ; $6951: $e0 $3a
	ld a, [hl+]                                      ; $6953: $2a
	db $ec                                           ; $6954: $ec
	ret nc                                           ; $6955: $d0

	ld a, [hl-]                                      ; $6956: $3a
	ld a, [hl+]                                      ; $6957: $2a
	db $ec                                           ; $6958: $ec
	ret nz                                           ; $6959: $c0

	ld a, [hl-]                                      ; $695a: $3a
	ld a, [hl+]                                      ; $695b: $2a
	db $ec                                           ; $695c: $ec
	or b                                             ; $695d: $b0
	ld a, [hl-]                                      ; $695e: $3a
	ld a, [hl+]                                      ; $695f: $2a
	db $ec                                           ; $6960: $ec
	and b                                            ; $6961: $a0
	ld a, [hl-]                                      ; $6962: $3a
	ld a, [hl+]                                      ; $6963: $2a
	inc b                                            ; $6964: $04
	ldh a, [$38]                                     ; $6965: $f0 $38
	ld a, [hl+]                                      ; $6967: $2a
	inc b                                            ; $6968: $04
	ldh [$38], a                                     ; $6969: $e0 $38
	ld a, [hl+]                                      ; $696b: $2a
	db $f4                                           ; $696c: $f4
	ldh a, [$38]                                     ; $696d: $f0 $38
	ld a, [hl+]                                      ; $696f: $2a
	db $f4                                           ; $6970: $f4
	ldh [$38], a                                     ; $6971: $e0 $38
	ld a, [hl+]                                      ; $6973: $2a
	inc b                                            ; $6974: $04
	ret nc                                           ; $6975: $d0

	jr c, jr_00d_69a2                                ; $6976: $38 $2a

	db $f4                                           ; $6978: $f4
	ret nc                                           ; $6979: $d0

	jr c, jr_00d_69a6                                ; $697a: $38 $2a

	inc b                                            ; $697c: $04
	ret nz                                           ; $697d: $c0

	jr c, jr_00d_69aa                                ; $697e: $38 $2a

	db $f4                                           ; $6980: $f4
	ret nz                                           ; $6981: $c0

	jr c, @+$2c                                      ; $6982: $38 $2a

	inc b                                            ; $6984: $04
	or b                                             ; $6985: $b0
	jr c, @+$2c                                      ; $6986: $38 $2a

	inc b                                            ; $6988: $04
	and b                                            ; $6989: $a0
	jr c, jr_00d_69b6                                ; $698a: $38 $2a

	db $f4                                           ; $698c: $f4
	or b                                             ; $698d: $b0
	jr c, jr_00d_69ba                                ; $698e: $38 $2a

	db $f4                                           ; $6990: $f4
	and b                                            ; $6991: $a0
	jr c, jr_00d_69be                                ; $6992: $38 $2a

	db $fc                                           ; $6994: $fc
	ldh a, [$38]                                     ; $6995: $f0 $38
	ld a, [hl+]                                      ; $6997: $2a
	db $fc                                           ; $6998: $fc
	ldh [$38], a                                     ; $6999: $e0 $38
	ld a, [hl+]                                      ; $699b: $2a
	db $fc                                           ; $699c: $fc
	ret nc                                           ; $699d: $d0

	jr c, @+$2c                                      ; $699e: $38 $2a

	db $fc                                           ; $69a0: $fc
	ret nz                                           ; $69a1: $c0

jr_00d_69a2:
	jr c, @+$2c                                      ; $69a2: $38 $2a

	db $fc                                           ; $69a4: $fc
	or b                                             ; $69a5: $b0

jr_00d_69a6:
	jr c, @+$2c                                      ; $69a6: $38 $2a

	db $fc                                           ; $69a8: $fc
	and b                                            ; $69a9: $a0

jr_00d_69aa:
	jr c, @+$2d                                      ; $69aa: $38 $2b

	inc c                                            ; $69ac: $0c
	ldh a, [$3a]                                     ; $69ad: $f0 $3a
	ld l, d                                          ; $69af: $6a
	inc c                                            ; $69b0: $0c
	ldh [$3a], a                                     ; $69b1: $e0 $3a
	ld l, d                                          ; $69b3: $6a
	inc c                                            ; $69b4: $0c
	ret nc                                           ; $69b5: $d0

jr_00d_69b6:
	ld a, [hl-]                                      ; $69b6: $3a
	ld l, d                                          ; $69b7: $6a
	inc c                                            ; $69b8: $0c
	ret nz                                           ; $69b9: $c0

jr_00d_69ba:
	ld a, [hl-]                                      ; $69ba: $3a
	ld l, d                                          ; $69bb: $6a
	inc c                                            ; $69bc: $0c
	or b                                             ; $69bd: $b0

jr_00d_69be:
	ld a, [hl-]                                      ; $69be: $3a
	ld l, d                                          ; $69bf: $6a
	inc c                                            ; $69c0: $0c
	and b                                            ; $69c1: $a0
	ld a, [hl-]                                      ; $69c2: $3a
	ld l, d                                          ; $69c3: $6a
	inc b                                            ; $69c4: $04
	ldh a, [$38]                                     ; $69c5: $f0 $38
	ld a, [hl+]                                      ; $69c7: $2a
	inc b                                            ; $69c8: $04
	ldh [$38], a                                     ; $69c9: $e0 $38
	ld a, [hl+]                                      ; $69cb: $2a
	db $f4                                           ; $69cc: $f4
	ldh a, [$38]                                     ; $69cd: $f0 $38
	ld a, [hl+]                                      ; $69cf: $2a
	db $f4                                           ; $69d0: $f4
	ldh [$38], a                                     ; $69d1: $e0 $38
	ld a, [hl+]                                      ; $69d3: $2a
	inc b                                            ; $69d4: $04
	ret nc                                           ; $69d5: $d0

	jr c, jr_00d_6a02                                ; $69d6: $38 $2a

	db $f4                                           ; $69d8: $f4
	ret nc                                           ; $69d9: $d0

	jr c, jr_00d_6a06                                ; $69da: $38 $2a

	inc b                                            ; $69dc: $04
	ret nz                                           ; $69dd: $c0

	jr c, jr_00d_6a0a                                ; $69de: $38 $2a

	db $f4                                           ; $69e0: $f4
	ret nz                                           ; $69e1: $c0

	jr c, jr_00d_6a0e                                ; $69e2: $38 $2a

	inc b                                            ; $69e4: $04
	or b                                             ; $69e5: $b0
	jr c, jr_00d_6a12                                ; $69e6: $38 $2a

	inc b                                            ; $69e8: $04
	and b                                            ; $69e9: $a0
	jr c, jr_00d_6a16                                ; $69ea: $38 $2a

	db $f4                                           ; $69ec: $f4
	or b                                             ; $69ed: $b0
	jr c, @+$2c                                      ; $69ee: $38 $2a

	db $f4                                           ; $69f0: $f4
	and b                                            ; $69f1: $a0
	jr c, @+$2c                                      ; $69f2: $38 $2a

	db $fc                                           ; $69f4: $fc
	ldh a, [$38]                                     ; $69f5: $f0 $38
	ld a, [hl+]                                      ; $69f7: $2a
	db $fc                                           ; $69f8: $fc
	ldh [$38], a                                     ; $69f9: $e0 $38
	ld a, [hl+]                                      ; $69fb: $2a
	db $fc                                           ; $69fc: $fc
	ret nc                                           ; $69fd: $d0

	jr c, jr_00d_6a2a                                ; $69fe: $38 $2a

	db $fc                                           ; $6a00: $fc
	ret nz                                           ; $6a01: $c0

jr_00d_6a02:
	jr c, jr_00d_6a2e                                ; $6a02: $38 $2a

	db $fc                                           ; $6a04: $fc
	or b                                             ; $6a05: $b0

jr_00d_6a06:
	jr c, jr_00d_6a32                                ; $6a06: $38 $2a

	db $fc                                           ; $6a08: $fc
	and b                                            ; $6a09: $a0

jr_00d_6a0a:
	jr c, @+$2d                                      ; $6a0a: $38 $2b

	inc b                                            ; $6a0c: $04
	ret nc                                           ; $6a0d: $d0

jr_00d_6a0e:
	jr c, jr_00d_6a3a                                ; $6a0e: $38 $2a

	db $fc                                           ; $6a10: $fc
	ret nc                                           ; $6a11: $d0

jr_00d_6a12:
	jr c, @+$2c                                      ; $6a12: $38 $2a

	db $f4                                           ; $6a14: $f4
	ret nc                                           ; $6a15: $d0

jr_00d_6a16:
	jr c, @+$2c                                      ; $6a16: $38 $2a

	inc b                                            ; $6a18: $04
	ldh [$38], a                                     ; $6a19: $e0 $38
	ld a, [hl+]                                      ; $6a1b: $2a
	db $fc                                           ; $6a1c: $fc
	ldh [$38], a                                     ; $6a1d: $e0 $38
	ld a, [hl+]                                      ; $6a1f: $2a
	db $fc                                           ; $6a20: $fc
	ret nz                                           ; $6a21: $c0

	jr c, jr_00d_6a4e                                ; $6a22: $38 $2a

	inc b                                            ; $6a24: $04
	ret nz                                           ; $6a25: $c0

	jr c, jr_00d_6a52                                ; $6a26: $38 $2a

	inc b                                            ; $6a28: $04
	or b                                             ; $6a29: $b0

jr_00d_6a2a:
	jr c, @+$2c                                      ; $6a2a: $38 $2a

	inc b                                            ; $6a2c: $04
	and b                                            ; $6a2d: $a0

jr_00d_6a2e:
	jr c, @+$2c                                      ; $6a2e: $38 $2a

	db $f4                                           ; $6a30: $f4
	ret nz                                           ; $6a31: $c0

jr_00d_6a32:
	jr c, jr_00d_6a5e                                ; $6a32: $38 $2a

	db $fc                                           ; $6a34: $fc
	or b                                             ; $6a35: $b0
	jr c, jr_00d_6a62                                ; $6a36: $38 $2a

	db $fc                                           ; $6a38: $fc
	and b                                            ; $6a39: $a0

jr_00d_6a3a:
	jr c, jr_00d_6a66                                ; $6a3a: $38 $2a

	db $f4                                           ; $6a3c: $f4
	ldh a, [$38]                                     ; $6a3d: $f0 $38
	ld a, [hl+]                                      ; $6a3f: $2a
	db $fc                                           ; $6a40: $fc
	ldh a, [$38]                                     ; $6a41: $f0 $38
	ld a, [hl+]                                      ; $6a43: $2a
	db $f4                                           ; $6a44: $f4
	ldh [$38], a                                     ; $6a45: $e0 $38
	ld a, [hl+]                                      ; $6a47: $2a
	inc b                                            ; $6a48: $04
	ldh a, [$38]                                     ; $6a49: $f0 $38
	ld a, [hl+]                                      ; $6a4b: $2a
	db $f4                                           ; $6a4c: $f4
	or b                                             ; $6a4d: $b0

jr_00d_6a4e:
	jr c, @+$2c                                      ; $6a4e: $38 $2a

	db $f4                                           ; $6a50: $f4
	and b                                            ; $6a51: $a0

jr_00d_6a52:
	jr c, @+$2c                                      ; $6a52: $38 $2a

	inc c                                            ; $6a54: $0c
	ldh a, [$36]                                     ; $6a55: $f0 $36
	ld l, d                                          ; $6a57: $6a
	inc c                                            ; $6a58: $0c
	ldh [$36], a                                     ; $6a59: $e0 $36
	ld l, d                                          ; $6a5b: $6a
	inc c                                            ; $6a5c: $0c
	ret nc                                           ; $6a5d: $d0

jr_00d_6a5e:
	ld [hl], $6a                                     ; $6a5e: $36 $6a
	inc c                                            ; $6a60: $0c
	ret nz                                           ; $6a61: $c0

jr_00d_6a62:
	ld [hl], $6a                                     ; $6a62: $36 $6a
	inc c                                            ; $6a64: $0c
	or b                                             ; $6a65: $b0

jr_00d_6a66:
	ld [hl], $6a                                     ; $6a66: $36 $6a
	inc c                                            ; $6a68: $0c
	and b                                            ; $6a69: $a0
	ld [hl], $6b                                     ; $6a6a: $36 $6b
	inc b                                            ; $6a6c: $04
	ret nc                                           ; $6a6d: $d0

	jr c, jr_00d_6a9a                                ; $6a6e: $38 $2a

	db $fc                                           ; $6a70: $fc
	ret nc                                           ; $6a71: $d0

	jr c, @+$2c                                      ; $6a72: $38 $2a

	db $f4                                           ; $6a74: $f4
	ret nc                                           ; $6a75: $d0

	jr c, @+$2c                                      ; $6a76: $38 $2a

	inc b                                            ; $6a78: $04
	ldh [$38], a                                     ; $6a79: $e0 $38
	ld a, [hl+]                                      ; $6a7b: $2a
	db $fc                                           ; $6a7c: $fc
	ldh [$38], a                                     ; $6a7d: $e0 $38
	ld a, [hl+]                                      ; $6a7f: $2a
	db $fc                                           ; $6a80: $fc
	ret nz                                           ; $6a81: $c0

	jr c, jr_00d_6aae                                ; $6a82: $38 $2a

	inc b                                            ; $6a84: $04
	ret nz                                           ; $6a85: $c0

	jr c, jr_00d_6ab2                                ; $6a86: $38 $2a

	inc b                                            ; $6a88: $04
	or b                                             ; $6a89: $b0
	jr c, @+$2c                                      ; $6a8a: $38 $2a

	inc b                                            ; $6a8c: $04
	and b                                            ; $6a8d: $a0
	jr c, @+$2c                                      ; $6a8e: $38 $2a

	db $f4                                           ; $6a90: $f4
	ret nz                                           ; $6a91: $c0

	jr c, jr_00d_6abe                                ; $6a92: $38 $2a

	db $fc                                           ; $6a94: $fc
	or b                                             ; $6a95: $b0
	jr c, jr_00d_6ac2                                ; $6a96: $38 $2a

	db $fc                                           ; $6a98: $fc
	and b                                            ; $6a99: $a0

jr_00d_6a9a:
	jr c, jr_00d_6ac6                                ; $6a9a: $38 $2a

	db $f4                                           ; $6a9c: $f4
	ldh a, [$38]                                     ; $6a9d: $f0 $38
	ld a, [hl+]                                      ; $6a9f: $2a
	db $fc                                           ; $6aa0: $fc
	ldh a, [$38]                                     ; $6aa1: $f0 $38
	ld a, [hl+]                                      ; $6aa3: $2a
	db $f4                                           ; $6aa4: $f4
	ldh [$38], a                                     ; $6aa5: $e0 $38
	ld a, [hl+]                                      ; $6aa7: $2a
	inc b                                            ; $6aa8: $04
	ldh a, [$38]                                     ; $6aa9: $f0 $38
	ld a, [hl+]                                      ; $6aab: $2a
	db $f4                                           ; $6aac: $f4
	or b                                             ; $6aad: $b0

jr_00d_6aae:
	jr c, jr_00d_6ada                                ; $6aae: $38 $2a

	db $f4                                           ; $6ab0: $f4
	and b                                            ; $6ab1: $a0

jr_00d_6ab2:
	jr c, jr_00d_6ade                                ; $6ab2: $38 $2a

	db $ec                                           ; $6ab4: $ec
	ldh a, [$36]                                     ; $6ab5: $f0 $36
	ld a, [hl+]                                      ; $6ab7: $2a
	db $ec                                           ; $6ab8: $ec
	ldh [$36], a                                     ; $6ab9: $e0 $36
	ld a, [hl+]                                      ; $6abb: $2a
	db $ec                                           ; $6abc: $ec
	ret nc                                           ; $6abd: $d0

jr_00d_6abe:
	ld [hl], $2a                                     ; $6abe: $36 $2a
	db $ec                                           ; $6ac0: $ec
	ret nz                                           ; $6ac1: $c0

jr_00d_6ac2:
	ld [hl], $2a                                     ; $6ac2: $36 $2a
	db $ec                                           ; $6ac4: $ec
	or b                                             ; $6ac5: $b0

jr_00d_6ac6:
	ld [hl], $2a                                     ; $6ac6: $36 $2a
	db $ec                                           ; $6ac8: $ec
	and b                                            ; $6ac9: $a0
	ld [hl], $2b                                     ; $6aca: $36 $2b
	inc b                                            ; $6acc: $04
	ldh a, [c]                                       ; $6acd: $f2
	db $10                                           ; $6ace: $10
	ld h, $fc                                        ; $6acf: $26 $fc
	ldh a, [c]                                       ; $6ad1: $f2
	ld c, $26                                        ; $6ad2: $0e $26
	db $f4                                           ; $6ad4: $f4
	ldh a, [c]                                       ; $6ad5: $f2
	inc c                                            ; $6ad6: $0c
	ld h, $fc                                        ; $6ad7: $26 $fc
	ldh [c], a                                       ; $6ad9: $e2

jr_00d_6ada:
	ld [bc], a                                       ; $6ada: $02
	inc h                                            ; $6adb: $24
	inc b                                            ; $6adc: $04
	ldh [c], a                                       ; $6add: $e2

jr_00d_6ade:
	inc b                                            ; $6ade: $04
	inc h                                            ; $6adf: $24
	db $f4                                           ; $6ae0: $f4
	ldh [c], a                                       ; $6ae1: $e2
	nop                                              ; $6ae2: $00
	dec h                                            ; $6ae3: $25
	db $fc                                           ; $6ae4: $fc
	db $e3                                           ; $6ae5: $e3
	ld [bc], a                                       ; $6ae6: $02
	inc h                                            ; $6ae7: $24
	db $f4                                           ; $6ae8: $f4
	di                                               ; $6ae9: $f3
	inc e                                            ; $6aea: $1c
	ld h, $04                                        ; $6aeb: $26 $04
	di                                               ; $6aed: $f3
	jr nz, jr_00d_6b16                               ; $6aee: $20 $26

	db $fc                                           ; $6af0: $fc
	di                                               ; $6af1: $f3
	ld e, $26                                        ; $6af2: $1e $26
	inc b                                            ; $6af4: $04
	db $e3                                           ; $6af5: $e3
	inc b                                            ; $6af6: $04
	inc h                                            ; $6af7: $24
	db $f4                                           ; $6af8: $f4
	db $e3                                           ; $6af9: $e3
	nop                                              ; $6afa: $00
	dec h                                            ; $6afb: $25
	inc b                                            ; $6afc: $04
	ldh a, [c]                                       ; $6afd: $f2
	ld a, [bc]                                       ; $6afe: $0a
	ld h, $fc                                        ; $6aff: $26 $fc
	ldh a, [c]                                       ; $6b01: $f2
	ld [$f426], sp                                   ; $6b02: $08 $26 $f4
	ldh a, [c]                                       ; $6b05: $f2
	ld b, $26                                        ; $6b06: $06 $26
	inc b                                            ; $6b08: $04
	ldh [c], a                                       ; $6b09: $e2
	inc b                                            ; $6b0a: $04
	inc h                                            ; $6b0b: $24
	db $f4                                           ; $6b0c: $f4
	ldh [c], a                                       ; $6b0d: $e2
	nop                                              ; $6b0e: $00
	inc h                                            ; $6b0f: $24
	db $fc                                           ; $6b10: $fc
	ldh [c], a                                       ; $6b11: $e2
	ld [bc], a                                       ; $6b12: $02
	dec h                                            ; $6b13: $25
	inc b                                            ; $6b14: $04
	ldh a, [c]                                       ; $6b15: $f2

jr_00d_6b16:
	ld a, [bc]                                       ; $6b16: $0a
	ld h, $fc                                        ; $6b17: $26 $fc
	ldh a, [c]                                       ; $6b19: $f2
	ld [$f426], sp                                   ; $6b1a: $08 $26 $f4
	ldh a, [c]                                       ; $6b1d: $f2
	ld b, $26                                        ; $6b1e: $06 $26
	inc b                                            ; $6b20: $04
	ldh [c], a                                       ; $6b21: $e2
	inc b                                            ; $6b22: $04
	inc h                                            ; $6b23: $24
	db $fc                                           ; $6b24: $fc
	ldh [c], a                                       ; $6b25: $e2
	ld [bc], a                                       ; $6b26: $02
	inc h                                            ; $6b27: $24
	db $f4                                           ; $6b28: $f4
	ldh [c], a                                       ; $6b29: $e2
	nop                                              ; $6b2a: $00
	dec h                                            ; $6b2b: $25
	inc b                                            ; $6b2c: $04
	di                                               ; $6b2d: $f3
	ld a, [hl-]                                      ; $6b2e: $3a
	ld h, $fc                                        ; $6b2f: $26 $fc
	di                                               ; $6b31: $f3
	inc c                                            ; $6b32: $0c
	ld h, $f4                                        ; $6b33: $26 $f4
	di                                               ; $6b35: $f3
	ld b, $26                                        ; $6b36: $06 $26
	inc b                                            ; $6b38: $04
	db $e3                                           ; $6b39: $e3
	inc b                                            ; $6b3a: $04
	inc h                                            ; $6b3b: $24
	db $fc                                           ; $6b3c: $fc
	db $e3                                           ; $6b3d: $e3
	ld [bc], a                                       ; $6b3e: $02
	inc h                                            ; $6b3f: $24
	db $f4                                           ; $6b40: $f4
	db $e3                                           ; $6b41: $e3
	nop                                              ; $6b42: $00
	dec h                                            ; $6b43: $25
	db $f4                                           ; $6b44: $f4
	ldh a, [c]                                       ; $6b45: $f2
	ld a, [bc]                                       ; $6b46: $0a
	ld h, [hl]                                       ; $6b47: $66
	db $fc                                           ; $6b48: $fc
	ldh a, [c]                                       ; $6b49: $f2
	ld [$0466], sp                                   ; $6b4a: $08 $66 $04
	ldh a, [c]                                       ; $6b4d: $f2
	ld b, $66                                        ; $6b4e: $06 $66
	db $f4                                           ; $6b50: $f4
	ldh [c], a                                       ; $6b51: $e2
	inc b                                            ; $6b52: $04
	ld h, h                                          ; $6b53: $64
	db $fc                                           ; $6b54: $fc
	ldh [c], a                                       ; $6b55: $e2
	ld [bc], a                                       ; $6b56: $02
	ld h, h                                          ; $6b57: $64
	inc b                                            ; $6b58: $04
	ldh [c], a                                       ; $6b59: $e2
	nop                                              ; $6b5a: $00
	ld h, l                                          ; $6b5b: $65
	db $f4                                           ; $6b5c: $f4
	ldh a, [c]                                       ; $6b5d: $f2
	ld a, [bc]                                       ; $6b5e: $0a
	ld h, [hl]                                       ; $6b5f: $66
	db $fc                                           ; $6b60: $fc
	ldh a, [c]                                       ; $6b61: $f2
	ld [$0466], sp                                   ; $6b62: $08 $66 $04
	ldh a, [c]                                       ; $6b65: $f2
	ld b, $66                                        ; $6b66: $06 $66
	db $f4                                           ; $6b68: $f4
	ldh [c], a                                       ; $6b69: $e2
	inc b                                            ; $6b6a: $04
	ld h, h                                          ; $6b6b: $64
	db $fc                                           ; $6b6c: $fc
	ldh [c], a                                       ; $6b6d: $e2
	ld [bc], a                                       ; $6b6e: $02
	ld h, h                                          ; $6b6f: $64
	inc b                                            ; $6b70: $04
	ldh [c], a                                       ; $6b71: $e2
	nop                                              ; $6b72: $00
	ld h, l                                          ; $6b73: $65
	db $f4                                           ; $6b74: $f4
	di                                               ; $6b75: $f3
	ld a, [hl-]                                      ; $6b76: $3a
	ld h, [hl]                                       ; $6b77: $66
	db $fc                                           ; $6b78: $fc
	di                                               ; $6b79: $f3
	inc c                                            ; $6b7a: $0c
	ld h, [hl]                                       ; $6b7b: $66
	inc b                                            ; $6b7c: $04
	di                                               ; $6b7d: $f3
	ld b, $66                                        ; $6b7e: $06 $66
	db $f4                                           ; $6b80: $f4
	db $e3                                           ; $6b81: $e3
	inc b                                            ; $6b82: $04
	ld h, h                                          ; $6b83: $64
	db $fc                                           ; $6b84: $fc
	db $e3                                           ; $6b85: $e3
	ld [bc], a                                       ; $6b86: $02
	ld h, h                                          ; $6b87: $64
	inc b                                            ; $6b88: $04
	db $e3                                           ; $6b89: $e3
	nop                                              ; $6b8a: $00
	ld h, l                                          ; $6b8b: $65
	inc b                                            ; $6b8c: $04
	ldh a, [c]                                       ; $6b8d: $f2
	ld [$fc26], sp                                   ; $6b8e: $08 $26 $fc
	ldh a, [c]                                       ; $6b91: $f2
	ld b, $26                                        ; $6b92: $06 $26
	db $f4                                           ; $6b94: $f4
	ldh a, [c]                                       ; $6b95: $f2
	inc b                                            ; $6b96: $04
	ld h, $04                                        ; $6b97: $26 $04
	ldh [c], a                                       ; $6b99: $e2
	ld [bc], a                                       ; $6b9a: $02
	inc h                                            ; $6b9b: $24
	db $fc                                           ; $6b9c: $fc
	ldh [c], a                                       ; $6b9d: $e2
	ld a, [bc]                                       ; $6b9e: $0a
	inc h                                            ; $6b9f: $24
	db $f4                                           ; $6ba0: $f4
	ldh [c], a                                       ; $6ba1: $e2
	nop                                              ; $6ba2: $00
	dec h                                            ; $6ba3: $25
	inc b                                            ; $6ba4: $04
	di                                               ; $6ba5: $f3
	db $10                                           ; $6ba6: $10
	ld h, $fc                                        ; $6ba7: $26 $fc
	di                                               ; $6ba9: $f3
	ld c, $26                                        ; $6baa: $0e $26
	db $f4                                           ; $6bac: $f4
	di                                               ; $6bad: $f3
	inc b                                            ; $6bae: $04
	ld h, $04                                        ; $6baf: $26 $04
	db $e3                                           ; $6bb1: $e3
	ld [bc], a                                       ; $6bb2: $02
	inc h                                            ; $6bb3: $24
	db $fc                                           ; $6bb4: $fc
	db $e3                                           ; $6bb5: $e3
	inc c                                            ; $6bb6: $0c
	inc h                                            ; $6bb7: $24
	db $f4                                           ; $6bb8: $f4
	db $e3                                           ; $6bb9: $e3
	nop                                              ; $6bba: $00
	dec h                                            ; $6bbb: $25
	db $fc                                           ; $6bbc: $fc
	ldh [c], a                                       ; $6bbd: $e2
	ld [bc], a                                       ; $6bbe: $02
	inc h                                            ; $6bbf: $24
	db $f4                                           ; $6bc0: $f4
	ldh a, [c]                                       ; $6bc1: $f2
	ld b, $26                                        ; $6bc2: $06 $26
	db $fc                                           ; $6bc4: $fc
	ldh a, [c]                                       ; $6bc5: $f2
	ld [$0426], sp                                   ; $6bc6: $08 $26 $04
	ldh a, [c]                                       ; $6bc9: $f2
	ld a, [bc]                                       ; $6bca: $0a
	ld h, $04                                        ; $6bcb: $26 $04
	ldh [c], a                                       ; $6bcd: $e2
	inc b                                            ; $6bce: $04
	inc h                                            ; $6bcf: $24
	db $f4                                           ; $6bd0: $f4
	ldh [c], a                                       ; $6bd1: $e2
	nop                                              ; $6bd2: $00
	dec h                                            ; $6bd3: $25
	inc b                                            ; $6bd4: $04
	ldh a, [c]                                       ; $6bd5: $f2
	db $10                                           ; $6bd6: $10
	ld h, $fc                                        ; $6bd7: $26 $fc
	ldh a, [c]                                       ; $6bd9: $f2
	ld c, $26                                        ; $6bda: $0e $26
	db $fc                                           ; $6bdc: $fc
	ldh [c], a                                       ; $6bdd: $e2
	ld [bc], a                                       ; $6bde: $02
	inc h                                            ; $6bdf: $24
	inc b                                            ; $6be0: $04
	ldh [c], a                                       ; $6be1: $e2
	inc b                                            ; $6be2: $04
	inc h                                            ; $6be3: $24
	db $f4                                           ; $6be4: $f4
	ldh [c], a                                       ; $6be5: $e2
	nop                                              ; $6be6: $00
	inc h                                            ; $6be7: $24
	db $f4                                           ; $6be8: $f4
	ldh a, [c]                                       ; $6be9: $f2
	ld b, $27                                        ; $6bea: $06 $27
	db $fc                                           ; $6bec: $fc
	ldh [c], a                                       ; $6bed: $e2
	jr z, jr_00d_6c14                                ; $6bee: $28 $24

	inc b                                            ; $6bf0: $04
	ldh a, [c]                                       ; $6bf1: $f2
	ld a, [bc]                                       ; $6bf2: $0a
	ld h, $fc                                        ; $6bf3: $26 $fc
	ldh a, [c]                                       ; $6bf5: $f2
	ld [$f426], sp                                   ; $6bf6: $08 $26 $f4
	ldh a, [c]                                       ; $6bf9: $f2
	ld b, $26                                        ; $6bfa: $06 $26
	inc b                                            ; $6bfc: $04
	ldh [c], a                                       ; $6bfd: $e2
	inc b                                            ; $6bfe: $04
	inc h                                            ; $6bff: $24
	db $f4                                           ; $6c00: $f4
	ldh [c], a                                       ; $6c01: $e2
	nop                                              ; $6c02: $00
	dec h                                            ; $6c03: $25
	inc b                                            ; $6c04: $04
	di                                               ; $6c05: $f3
	ld a, [hl-]                                      ; $6c06: $3a
	ld h, $fc                                        ; $6c07: $26 $fc
	db $e3                                           ; $6c09: $e3
	jr z, jr_00d_6c30                                ; $6c0a: $28 $24

	db $fc                                           ; $6c0c: $fc
	di                                               ; $6c0d: $f3
	inc c                                            ; $6c0e: $0c
	ld h, $f4                                        ; $6c0f: $26 $f4
	di                                               ; $6c11: $f3
	ld b, $26                                        ; $6c12: $06 $26

jr_00d_6c14:
	inc b                                            ; $6c14: $04
	db $e3                                           ; $6c15: $e3
	inc b                                            ; $6c16: $04
	inc h                                            ; $6c17: $24
	db $f4                                           ; $6c18: $f4
	db $e3                                           ; $6c19: $e3
	nop                                              ; $6c1a: $00
	dec h                                            ; $6c1b: $25
	inc b                                            ; $6c1c: $04
	ldh [c], a                                       ; $6c1d: $e2
	jr c, jr_00d_6c44                                ; $6c1e: $38 $24

	db $fc                                           ; $6c20: $fc
	ldh [c], a                                       ; $6c21: $e2
	inc d                                            ; $6c22: $14
	inc h                                            ; $6c23: $24
	inc b                                            ; $6c24: $04
	ldh a, [c]                                       ; $6c25: $f2
	inc [hl]                                         ; $6c26: $34
	ld h, $fc                                        ; $6c27: $26 $fc
	ldh a, [c]                                       ; $6c29: $f2
	ld [hl-], a                                      ; $6c2a: $32
	ld h, $f4                                        ; $6c2b: $26 $f4
	ldh a, [c]                                       ; $6c2d: $f2
	jr nc, jr_00d_6c56                               ; $6c2e: $30 $26

jr_00d_6c30:
	db $f4                                           ; $6c30: $f4
	ldh [c], a                                       ; $6c31: $e2
	inc l                                            ; $6c32: $2c
	dec h                                            ; $6c33: $25
	db $fc                                           ; $6c34: $fc
	ldh a, [c]                                       ; $6c35: $f2
	ld [hl-], a                                      ; $6c36: $32
	ld h, $f4                                        ; $6c37: $26 $f4
	ldh a, [c]                                       ; $6c39: $f2
	ld [hl], $26                                     ; $6c3a: $36 $26
	inc b                                            ; $6c3c: $04
	ldh [c], a                                       ; $6c3d: $e2
	jr c, jr_00d_6c64                                ; $6c3e: $38 $24

	db $f4                                           ; $6c40: $f4
	ldh [c], a                                       ; $6c41: $e2
	inc l                                            ; $6c42: $2c
	inc h                                            ; $6c43: $24

jr_00d_6c44:
	db $fc                                           ; $6c44: $fc
	ldh [c], a                                       ; $6c45: $e2
	ld l, $24                                        ; $6c46: $2e $24
	inc b                                            ; $6c48: $04
	ldh a, [c]                                       ; $6c49: $f2
	inc [hl]                                         ; $6c4a: $34
	daa                                              ; $6c4b: $27
	inc b                                            ; $6c4c: $04
	ldh [c], a                                       ; $6c4d: $e2
	jr c, jr_00d_6c74                                ; $6c4e: $38 $24

	inc b                                            ; $6c50: $04
	ldh a, [c]                                       ; $6c51: $f2
	ld a, [de]                                       ; $6c52: $1a
	ld h, $fc                                        ; $6c53: $26 $fc
	ldh a, [c]                                       ; $6c55: $f2

jr_00d_6c56:
	jr jr_00d_6c7e                                   ; $6c56: $18 $26

	db $f4                                           ; $6c58: $f4
	ldh [c], a                                       ; $6c59: $e2
	ld [de], a                                       ; $6c5a: $12
	inc h                                            ; $6c5b: $24
	db $f4                                           ; $6c5c: $f4
	ldh a, [c]                                       ; $6c5d: $f2
	ld d, $26                                        ; $6c5e: $16 $26
	db $fc                                           ; $6c60: $fc
	ldh [c], a                                       ; $6c61: $e2
	inc d                                            ; $6c62: $14
	dec h                                            ; $6c63: $25

jr_00d_6c64:
	inc b                                            ; $6c64: $04
	ldh [c], a                                       ; $6c65: $e2
	jr nz, @+$26                                     ; $6c66: $20 $24

	inc b                                            ; $6c68: $04
	ldh a, [c]                                       ; $6c69: $f2
	ld h, $26                                        ; $6c6a: $26 $26
	db $fc                                           ; $6c6c: $fc
	ldh a, [c]                                       ; $6c6d: $f2
	inc h                                            ; $6c6e: $24
	ld h, $f4                                        ; $6c6f: $26 $f4
	ldh [c], a                                       ; $6c71: $e2
	inc e                                            ; $6c72: $1c
	inc h                                            ; $6c73: $24

jr_00d_6c74:
	db $fc                                           ; $6c74: $fc
	ldh [c], a                                       ; $6c75: $e2
	ld e, $24                                        ; $6c76: $1e $24
	db $f4                                           ; $6c78: $f4
	ldh a, [c]                                       ; $6c79: $f2
	ld [hl+], a                                      ; $6c7a: $22
	daa                                              ; $6c7b: $27
	inc b                                            ; $6c7c: $04
	ldh [c], a                                       ; $6c7d: $e2

jr_00d_6c7e:
	inc b                                            ; $6c7e: $04
	inc h                                            ; $6c7f: $24
	db $fc                                           ; $6c80: $fc
	ldh [c], a                                       ; $6c81: $e2
	ld [bc], a                                       ; $6c82: $02
	inc h                                            ; $6c83: $24
	db $f4                                           ; $6c84: $f4
	ldh [c], a                                       ; $6c85: $e2
	nop                                              ; $6c86: $00
	inc h                                            ; $6c87: $24
	inc b                                            ; $6c88: $04
	ldh a, [c]                                       ; $6c89: $f2
	ld a, [bc]                                       ; $6c8a: $0a
	ld h, $fc                                        ; $6c8b: $26 $fc
	ldh a, [c]                                       ; $6c8d: $f2
	ld [$f426], sp                                   ; $6c8e: $08 $26 $f4
	ldh a, [c]                                       ; $6c91: $f2
	ld b, $27                                        ; $6c92: $06 $27
	db $fc                                           ; $6c94: $fc
	ldh [c], a                                       ; $6c95: $e2
	jr z, jr_00d_6cbc                                ; $6c96: $28 $24

	inc b                                            ; $6c98: $04
	ldh a, [c]                                       ; $6c99: $f2
	ld a, [bc]                                       ; $6c9a: $0a
	ld h, $fc                                        ; $6c9b: $26 $fc
	ldh a, [c]                                       ; $6c9d: $f2
	ld [$f426], sp                                   ; $6c9e: $08 $26 $f4
	ldh a, [c]                                       ; $6ca1: $f2
	ld b, $26                                        ; $6ca2: $06 $26
	inc b                                            ; $6ca4: $04
	ldh [c], a                                       ; $6ca5: $e2
	inc b                                            ; $6ca6: $04
	inc h                                            ; $6ca7: $24
	db $f4                                           ; $6ca8: $f4
	ldh [c], a                                       ; $6ca9: $e2
	nop                                              ; $6caa: $00
	dec h                                            ; $6cab: $25
	inc b                                            ; $6cac: $04
	ldh a, [c]                                       ; $6cad: $f2
	ld a, [bc]                                       ; $6cae: $0a
	inc h                                            ; $6caf: $24
	db $fc                                           ; $6cb0: $fc
	ldh a, [c]                                       ; $6cb1: $f2
	ld [$f424], sp                                   ; $6cb2: $08 $24 $f4
	ldh a, [c]                                       ; $6cb5: $f2
	ld b, $24                                        ; $6cb6: $06 $24
	inc b                                            ; $6cb8: $04
	ldh [c], a                                       ; $6cb9: $e2
	inc b                                            ; $6cba: $04
	inc h                                            ; $6cbb: $24

jr_00d_6cbc:
	db $fc                                           ; $6cbc: $fc
	ldh [c], a                                       ; $6cbd: $e2
	ld [bc], a                                       ; $6cbe: $02
	inc h                                            ; $6cbf: $24
	db $f4                                           ; $6cc0: $f4
	ldh [c], a                                       ; $6cc1: $e2
	nop                                              ; $6cc2: $00
	dec h                                            ; $6cc3: $25
	db $f4                                           ; $6cc4: $f4
	ldh a, [c]                                       ; $6cc5: $f2
	ld a, [bc]                                       ; $6cc6: $0a
	ld h, h                                          ; $6cc7: $64
	db $fc                                           ; $6cc8: $fc
	ldh a, [c]                                       ; $6cc9: $f2
	ld [$0464], sp                                   ; $6cca: $08 $64 $04
	ldh a, [c]                                       ; $6ccd: $f2
	ld b, $64                                        ; $6cce: $06 $64
	db $f4                                           ; $6cd0: $f4
	ldh [c], a                                       ; $6cd1: $e2
	inc b                                            ; $6cd2: $04
	ld h, h                                          ; $6cd3: $64
	db $fc                                           ; $6cd4: $fc
	ldh [c], a                                       ; $6cd5: $e2
	ld [bc], a                                       ; $6cd6: $02
	ld h, h                                          ; $6cd7: $64
	inc b                                            ; $6cd8: $04
	ldh [c], a                                       ; $6cd9: $e2
	nop                                              ; $6cda: $00
	ld h, l                                          ; $6cdb: $65
	inc b                                            ; $6cdc: $04
	ldh a, [c]                                       ; $6cdd: $f2
	ld a, [bc]                                       ; $6cde: $0a
	inc h                                            ; $6cdf: $24
	db $fc                                           ; $6ce0: $fc
	ldh a, [c]                                       ; $6ce1: $f2
	ld [$f424], sp                                   ; $6ce2: $08 $24 $f4
	ldh a, [c]                                       ; $6ce5: $f2
	ld b, $24                                        ; $6ce6: $06 $24
	inc b                                            ; $6ce8: $04
	ldh [c], a                                       ; $6ce9: $e2
	inc b                                            ; $6cea: $04
	inc h                                            ; $6ceb: $24
	db $fc                                           ; $6cec: $fc
	ldh [c], a                                       ; $6ced: $e2
	ld [bc], a                                       ; $6cee: $02
	inc h                                            ; $6cef: $24
	db $f4                                           ; $6cf0: $f4
	ldh [c], a                                       ; $6cf1: $e2
	nop                                              ; $6cf2: $00
	dec h                                            ; $6cf3: $25
	inc b                                            ; $6cf4: $04
	ldh a, [c]                                       ; $6cf5: $f2
	ld a, [bc]                                       ; $6cf6: $0a
	inc h                                            ; $6cf7: $24
	db $fc                                           ; $6cf8: $fc
	ldh a, [c]                                       ; $6cf9: $f2
	ld [$f424], sp                                   ; $6cfa: $08 $24 $f4
	ldh a, [c]                                       ; $6cfd: $f2
	ld b, $24                                        ; $6cfe: $06 $24
	inc b                                            ; $6d00: $04
	ldh [c], a                                       ; $6d01: $e2
	inc b                                            ; $6d02: $04
	inc h                                            ; $6d03: $24
	db $fc                                           ; $6d04: $fc
	ldh [c], a                                       ; $6d05: $e2
	ld [bc], a                                       ; $6d06: $02
	inc h                                            ; $6d07: $24
	db $f4                                           ; $6d08: $f4
	ldh [c], a                                       ; $6d09: $e2
	nop                                              ; $6d0a: $00
	dec h                                            ; $6d0b: $25
	db $fc                                           ; $6d0c: $fc
	di                                               ; $6d0d: $f3
	db $10                                           ; $6d0e: $10
	inc h                                            ; $6d0f: $24
	db $f4                                           ; $6d10: $f4
	di                                               ; $6d11: $f3
	ld c, $24                                        ; $6d12: $0e $24
	inc b                                            ; $6d14: $04
	di                                               ; $6d15: $f3
	ld a, [bc]                                       ; $6d16: $0a
	inc h                                            ; $6d17: $24
	inc b                                            ; $6d18: $04
	db $e3                                           ; $6d19: $e3
	inc b                                            ; $6d1a: $04
	inc h                                            ; $6d1b: $24
	db $fc                                           ; $6d1c: $fc
	db $e3                                           ; $6d1d: $e3
	ld [bc], a                                       ; $6d1e: $02
	inc h                                            ; $6d1f: $24
	db $f4                                           ; $6d20: $f4
	db $e3                                           ; $6d21: $e3
	nop                                              ; $6d22: $00
	dec h                                            ; $6d23: $25
	db $f4                                           ; $6d24: $f4
	ldh a, [c]                                       ; $6d25: $f2
	ld b, $24                                        ; $6d26: $06 $24
	db $fc                                           ; $6d28: $fc
	ldh a, [c]                                       ; $6d29: $f2
	ld [$0424], sp                                   ; $6d2a: $08 $24 $04
	ldh a, [c]                                       ; $6d2d: $f2
	ld a, [bc]                                       ; $6d2e: $0a
	inc h                                            ; $6d2f: $24
	inc b                                            ; $6d30: $04
	ldh [c], a                                       ; $6d31: $e2
	inc b                                            ; $6d32: $04
	inc h                                            ; $6d33: $24
	db $fc                                           ; $6d34: $fc
	ldh [c], a                                       ; $6d35: $e2
	ld [bc], a                                       ; $6d36: $02
	inc h                                            ; $6d37: $24
	db $f4                                           ; $6d38: $f4
	ldh [c], a                                       ; $6d39: $e2
	nop                                              ; $6d3a: $00
	dec h                                            ; $6d3b: $25
	db $f4                                           ; $6d3c: $f4
	ldh a, [c]                                       ; $6d3d: $f2
	ld b, $24                                        ; $6d3e: $06 $24
	db $fc                                           ; $6d40: $fc
	ldh a, [c]                                       ; $6d41: $f2
	ld [$0424], sp                                   ; $6d42: $08 $24 $04
	ldh a, [c]                                       ; $6d45: $f2
	ld a, [bc]                                       ; $6d46: $0a
	inc h                                            ; $6d47: $24
	inc b                                            ; $6d48: $04
	ldh [c], a                                       ; $6d49: $e2
	inc b                                            ; $6d4a: $04
	inc h                                            ; $6d4b: $24
	db $fc                                           ; $6d4c: $fc
	ldh [c], a                                       ; $6d4d: $e2
	ld [bc], a                                       ; $6d4e: $02
	inc h                                            ; $6d4f: $24
	db $f4                                           ; $6d50: $f4
	ldh [c], a                                       ; $6d51: $e2
	nop                                              ; $6d52: $00
	dec h                                            ; $6d53: $25
	db $f4                                           ; $6d54: $f4
	ldh [c], a                                       ; $6d55: $e2
	inc c                                            ; $6d56: $0c
	inc h                                            ; $6d57: $24
	db $fc                                           ; $6d58: $fc
	ldh [c], a                                       ; $6d59: $e2
	ld c, $24                                        ; $6d5a: $0e $24
	db $f4                                           ; $6d5c: $f4
	ldh a, [c]                                       ; $6d5d: $f2
	ld b, $24                                        ; $6d5e: $06 $24
	db $fc                                           ; $6d60: $fc
	ldh a, [c]                                       ; $6d61: $f2
	ld [$0424], sp                                   ; $6d62: $08 $24 $04
	ldh a, [c]                                       ; $6d65: $f2
	ld a, [bc]                                       ; $6d66: $0a
	inc h                                            ; $6d67: $24
	inc b                                            ; $6d68: $04
	ldh [c], a                                       ; $6d69: $e2
	inc b                                            ; $6d6a: $04
	dec h                                            ; $6d6b: $25
	inc b                                            ; $6d6c: $04
	ldh [c], a                                       ; $6d6d: $e2
	inc d                                            ; $6d6e: $14
	inc h                                            ; $6d6f: $24
	db $fc                                           ; $6d70: $fc
	ldh [c], a                                       ; $6d71: $e2
	ld [de], a                                       ; $6d72: $12
	inc h                                            ; $6d73: $24
	db $f4                                           ; $6d74: $f4
	ldh [c], a                                       ; $6d75: $e2
	db $10                                           ; $6d76: $10
	inc h                                            ; $6d77: $24
	inc b                                            ; $6d78: $04
	ldh a, [c]                                       ; $6d79: $f2
	ld a, [de]                                       ; $6d7a: $1a
	inc h                                            ; $6d7b: $24
	db $fc                                           ; $6d7c: $fc
	ldh a, [c]                                       ; $6d7d: $f2
	jr @+$26                                         ; $6d7e: $18 $24

	db $f4                                           ; $6d80: $f4
	ldh a, [c]                                       ; $6d81: $f2
	ld d, $25                                        ; $6d82: $16 $25
	db $fc                                           ; $6d84: $fc
	ldh a, [c]                                       ; $6d85: $f2
	ld [hl+], a                                      ; $6d86: $22
	inc h                                            ; $6d87: $24
	db $f4                                           ; $6d88: $f4
	ldh a, [c]                                       ; $6d89: $f2
	jr nz, jr_00d_6db0                               ; $6d8a: $20 $24

	db $fc                                           ; $6d8c: $fc
	ldh [c], a                                       ; $6d8d: $e2
	ld e, $24                                        ; $6d8e: $1e $24
	db $f4                                           ; $6d90: $f4
	ldh [c], a                                       ; $6d91: $e2
	inc e                                            ; $6d92: $1c
	inc h                                            ; $6d93: $24
	inc b                                            ; $6d94: $04
	ldh [c], a                                       ; $6d95: $e2
	inc d                                            ; $6d96: $14
	inc h                                            ; $6d97: $24
	inc b                                            ; $6d98: $04
	ldh a, [c]                                       ; $6d99: $f2
	ld a, [de]                                       ; $6d9a: $1a
	dec h                                            ; $6d9b: $25
	db $f4                                           ; $6d9c: $f4
	ldh a, [c]                                       ; $6d9d: $f2
	ld b, $24                                        ; $6d9e: $06 $24
	db $fc                                           ; $6da0: $fc
	ldh a, [c]                                       ; $6da1: $f2
	ld [$0424], sp                                   ; $6da2: $08 $24 $04
	ldh [c], a                                       ; $6da5: $e2
	inc b                                            ; $6da6: $04
	inc h                                            ; $6da7: $24
	db $fc                                           ; $6da8: $fc
	ldh [c], a                                       ; $6da9: $e2
	ld h, $24                                        ; $6daa: $26 $24
	db $f4                                           ; $6dac: $f4
	ldh [c], a                                       ; $6dad: $e2
	nop                                              ; $6dae: $00
	inc h                                            ; $6daf: $24

jr_00d_6db0:
	inc b                                            ; $6db0: $04
	ldh a, [c]                                       ; $6db1: $f2
	ld a, [de]                                       ; $6db2: $1a
	dec h                                            ; $6db3: $25
	db $fc                                           ; $6db4: $fc
	ldh [c], a                                       ; $6db5: $e2
	inc h                                            ; $6db6: $24
	inc h                                            ; $6db7: $24
	db $fc                                           ; $6db8: $fc
	ldh a, [c]                                       ; $6db9: $f2
	ld [$f424], sp                                   ; $6dba: $08 $24 $f4
	ldh a, [c]                                       ; $6dbd: $f2
	ld b, $24                                        ; $6dbe: $06 $24
	inc b                                            ; $6dc0: $04
	ldh [c], a                                       ; $6dc1: $e2
	inc b                                            ; $6dc2: $04
	inc h                                            ; $6dc3: $24
	db $f4                                           ; $6dc4: $f4
	ldh [c], a                                       ; $6dc5: $e2
	nop                                              ; $6dc6: $00
	inc h                                            ; $6dc7: $24
	inc b                                            ; $6dc8: $04
	ldh a, [c]                                       ; $6dc9: $f2
	ld a, [de]                                       ; $6dca: $1a
	dec h                                            ; $6dcb: $25
	inc b                                            ; $6dcc: $04
	ldh a, [c]                                       ; $6dcd: $f2
	ld a, [bc]                                       ; $6dce: $0a
	inc h                                            ; $6dcf: $24
	db $fc                                           ; $6dd0: $fc
	ldh a, [c]                                       ; $6dd1: $f2
	ld [$f424], sp                                   ; $6dd2: $08 $24 $f4
	ldh a, [c]                                       ; $6dd5: $f2
	ld b, $24                                        ; $6dd6: $06 $24
	inc b                                            ; $6dd8: $04
	ldh [c], a                                       ; $6dd9: $e2
	inc b                                            ; $6dda: $04
	inc h                                            ; $6ddb: $24
	db $fc                                           ; $6ddc: $fc
	ldh [c], a                                       ; $6ddd: $e2
	ld [bc], a                                       ; $6dde: $02
	inc h                                            ; $6ddf: $24
	db $f4                                           ; $6de0: $f4
	ldh [c], a                                       ; $6de1: $e2
	nop                                              ; $6de2: $00
	dec h                                            ; $6de3: $25
	db $f4                                           ; $6de4: $f4
	ldh a, [c]                                       ; $6de5: $f2
	ld a, [bc]                                       ; $6de6: $0a
	ld h, h                                          ; $6de7: $64
	db $fc                                           ; $6de8: $fc
	ldh a, [c]                                       ; $6de9: $f2
	ld [$0464], sp                                   ; $6dea: $08 $64 $04
	ldh a, [c]                                       ; $6ded: $f2
	ld b, $64                                        ; $6dee: $06 $64
	db $f4                                           ; $6df0: $f4
	ldh [c], a                                       ; $6df1: $e2
	inc b                                            ; $6df2: $04
	ld h, h                                          ; $6df3: $64
	db $fc                                           ; $6df4: $fc
	ldh [c], a                                       ; $6df5: $e2
	ld [bc], a                                       ; $6df6: $02
	ld h, h                                          ; $6df7: $64
	inc b                                            ; $6df8: $04
	ldh [c], a                                       ; $6df9: $e2
	nop                                              ; $6dfa: $00
	ld h, l                                          ; $6dfb: $65
	inc b                                            ; $6dfc: $04
	ldh a, [c]                                       ; $6dfd: $f2
	ld a, [bc]                                       ; $6dfe: $0a
	inc h                                            ; $6dff: $24
	db $fc                                           ; $6e00: $fc
	ldh a, [c]                                       ; $6e01: $f2
	ld [$f424], sp                                   ; $6e02: $08 $24 $f4
	ldh a, [c]                                       ; $6e05: $f2
	ld b, $24                                        ; $6e06: $06 $24
	inc b                                            ; $6e08: $04
	ldh [c], a                                       ; $6e09: $e2
	inc b                                            ; $6e0a: $04
	inc h                                            ; $6e0b: $24
	db $fc                                           ; $6e0c: $fc
	ldh [c], a                                       ; $6e0d: $e2
	ld [bc], a                                       ; $6e0e: $02
	inc h                                            ; $6e0f: $24
	db $f4                                           ; $6e10: $f4
	ldh [c], a                                       ; $6e11: $e2
	nop                                              ; $6e12: $00
	dec h                                            ; $6e13: $25
	db $f4                                           ; $6e14: $f4
	di                                               ; $6e15: $f3
	db $10                                           ; $6e16: $10
	inc h                                            ; $6e17: $24
	db $fc                                           ; $6e18: $fc
	db $e3                                           ; $6e19: $e3
	inc c                                            ; $6e1a: $0c
	inc h                                            ; $6e1b: $24
	db $fc                                           ; $6e1c: $fc
	di                                               ; $6e1d: $f3
	ld c, $24                                        ; $6e1e: $0e $24
	inc b                                            ; $6e20: $04
	di                                               ; $6e21: $f3
	ld a, [bc]                                       ; $6e22: $0a
	inc h                                            ; $6e23: $24
	inc b                                            ; $6e24: $04
	db $e3                                           ; $6e25: $e3
	inc b                                            ; $6e26: $04
	inc h                                            ; $6e27: $24
	db $f4                                           ; $6e28: $f4
	db $e3                                           ; $6e29: $e3
	nop                                              ; $6e2a: $00
	dec h                                            ; $6e2b: $25
	inc b                                            ; $6e2c: $04
	ldh a, [c]                                       ; $6e2d: $f2
	ld a, [bc]                                       ; $6e2e: $0a
	inc h                                            ; $6e2f: $24
	db $fc                                           ; $6e30: $fc
	ldh a, [c]                                       ; $6e31: $f2
	ld [$f424], sp                                   ; $6e32: $08 $24 $f4
	ldh a, [c]                                       ; $6e35: $f2
	ld b, $24                                        ; $6e36: $06 $24
	inc b                                            ; $6e38: $04
	ldh [c], a                                       ; $6e39: $e2
	inc b                                            ; $6e3a: $04
	inc h                                            ; $6e3b: $24
	db $fc                                           ; $6e3c: $fc
	ldh [c], a                                       ; $6e3d: $e2
	ld [bc], a                                       ; $6e3e: $02
	inc h                                            ; $6e3f: $24
	db $f4                                           ; $6e40: $f4
	ldh [c], a                                       ; $6e41: $e2
	nop                                              ; $6e42: $00
	dec h                                            ; $6e43: $25
	db $f4                                           ; $6e44: $f4
	ldh [c], a                                       ; $6e45: $e2
	jr jr_00d_6e6c                                   ; $6e46: $18 $24

	inc b                                            ; $6e48: $04
	ldh a, [c]                                       ; $6e49: $f2
	ld a, [bc]                                       ; $6e4a: $0a
	inc h                                            ; $6e4b: $24
	db $fc                                           ; $6e4c: $fc
	ldh a, [c]                                       ; $6e4d: $f2
	ld [$0424], sp                                   ; $6e4e: $08 $24 $04
	ldh [c], a                                       ; $6e51: $e2
	inc b                                            ; $6e52: $04
	inc h                                            ; $6e53: $24
	db $fc                                           ; $6e54: $fc
	ldh [c], a                                       ; $6e55: $e2
	ld [hl+], a                                      ; $6e56: $22
	inc h                                            ; $6e57: $24
	db $f4                                           ; $6e58: $f4
	ldh a, [c]                                       ; $6e59: $f2
	ld b, $25                                        ; $6e5a: $06 $25
	inc b                                            ; $6e5c: $04
	ldh a, [c]                                       ; $6e5d: $f2
	db $10                                           ; $6e5e: $10
	inc h                                            ; $6e5f: $24
	db $fc                                           ; $6e60: $fc
	ldh a, [c]                                       ; $6e61: $f2
	ld c, $24                                        ; $6e62: $0e $24
	db $f4                                           ; $6e64: $f4
	ldh a, [c]                                       ; $6e65: $f2
	inc c                                            ; $6e66: $0c
	inc h                                            ; $6e67: $24
	db $fc                                           ; $6e68: $fc
	ldh [c], a                                       ; $6e69: $e2
	ld [bc], a                                       ; $6e6a: $02
	inc h                                            ; $6e6b: $24

jr_00d_6e6c:
	db $f4                                           ; $6e6c: $f4
	ldh [c], a                                       ; $6e6d: $e2
	nop                                              ; $6e6e: $00
	inc h                                            ; $6e6f: $24
	inc b                                            ; $6e70: $04
	ldh [c], a                                       ; $6e71: $e2
	inc b                                            ; $6e72: $04
	dec h                                            ; $6e73: $25
	db $fc                                           ; $6e74: $fc
	ldh a, [c]                                       ; $6e75: $f2
	ld c, $24                                        ; $6e76: $0e $24
	db $fc                                           ; $6e78: $fc
	ldh [c], a                                       ; $6e79: $e2
	jr nz, jr_00d_6ea0                               ; $6e7a: $20 $24

	inc b                                            ; $6e7c: $04
	ldh a, [c]                                       ; $6e7d: $f2
	db $10                                           ; $6e7e: $10
	inc h                                            ; $6e7f: $24
	db $f4                                           ; $6e80: $f4
	ldh a, [c]                                       ; $6e81: $f2
	inc c                                            ; $6e82: $0c
	inc h                                            ; $6e83: $24
	db $f4                                           ; $6e84: $f4
	ldh [c], a                                       ; $6e85: $e2
	nop                                              ; $6e86: $00
	inc h                                            ; $6e87: $24
	inc b                                            ; $6e88: $04
	ldh [c], a                                       ; $6e89: $e2
	inc b                                            ; $6e8a: $04
	dec h                                            ; $6e8b: $25
	db $fc                                           ; $6e8c: $fc
	ldh a, [c]                                       ; $6e8d: $f2
	ld d, $24                                        ; $6e8e: $16 $24
	db $fc                                           ; $6e90: $fc
	ldh [c], a                                       ; $6e91: $e2
	inc d                                            ; $6e92: $14
	inc h                                            ; $6e93: $24
	db $f4                                           ; $6e94: $f4
	ldh a, [c]                                       ; $6e95: $f2
	ld [de], a                                       ; $6e96: $12
	inc h                                            ; $6e97: $24
	inc b                                            ; $6e98: $04
	ldh a, [c]                                       ; $6e99: $f2
	db $10                                           ; $6e9a: $10
	inc h                                            ; $6e9b: $24
	db $f4                                           ; $6e9c: $f4
	ldh [c], a                                       ; $6e9d: $e2
	nop                                              ; $6e9e: $00
	inc h                                            ; $6e9f: $24

jr_00d_6ea0:
	inc b                                            ; $6ea0: $04
	ldh [c], a                                       ; $6ea1: $e2
	inc b                                            ; $6ea2: $04
	dec h                                            ; $6ea3: $25
	db $fc                                           ; $6ea4: $fc
	ldh a, [c]                                       ; $6ea5: $f2
	ld e, $24                                        ; $6ea6: $1e $24
	db $fc                                           ; $6ea8: $fc
	ldh [c], a                                       ; $6ea9: $e2
	inc e                                            ; $6eaa: $1c
	inc h                                            ; $6eab: $24
	db $f4                                           ; $6eac: $f4
	ldh [c], a                                       ; $6ead: $e2
	jr jr_00d_6ed4                                   ; $6eae: $18 $24

	db $f4                                           ; $6eb0: $f4
	ldh a, [c]                                       ; $6eb1: $f2
	ld a, [de]                                       ; $6eb2: $1a
	inc h                                            ; $6eb3: $24
	inc b                                            ; $6eb4: $04
	ldh a, [c]                                       ; $6eb5: $f2
	db $10                                           ; $6eb6: $10
	inc h                                            ; $6eb7: $24
	inc b                                            ; $6eb8: $04
	ldh [c], a                                       ; $6eb9: $e2
	inc b                                            ; $6eba: $04
	dec h                                            ; $6ebb: $25
	xor $e9                                          ; $6ebc: $ee $e9
	inc l                                            ; $6ebe: $2c
	ld h, $fc                                        ; $6ebf: $26 $fc
	ldh a, [c]                                       ; $6ec1: $f2
	ld e, $24                                        ; $6ec2: $1e $24
	db $fc                                           ; $6ec4: $fc
	ldh [c], a                                       ; $6ec5: $e2
	inc e                                            ; $6ec6: $1c
	inc h                                            ; $6ec7: $24
	db $f4                                           ; $6ec8: $f4
	ldh [c], a                                       ; $6ec9: $e2
	jr jr_00d_6ef0                                   ; $6eca: $18 $24

	db $f4                                           ; $6ecc: $f4
	ldh a, [c]                                       ; $6ecd: $f2
	ld a, [de]                                       ; $6ece: $1a
	inc h                                            ; $6ecf: $24
	inc b                                            ; $6ed0: $04
	ldh a, [c]                                       ; $6ed1: $f2
	db $10                                           ; $6ed2: $10
	inc h                                            ; $6ed3: $24

jr_00d_6ed4:
	inc b                                            ; $6ed4: $04
	ldh [c], a                                       ; $6ed5: $e2
	inc b                                            ; $6ed6: $04
	dec h                                            ; $6ed7: $25
	db $f4                                           ; $6ed8: $f4
	ldh [c], a                                       ; $6ed9: $e2
	jr jr_00d_6f00                                   ; $6eda: $18 $24

	db $fc                                           ; $6edc: $fc
	ldh [c], a                                       ; $6edd: $e2
	ld [hl+], a                                      ; $6ede: $22
	inc h                                            ; $6edf: $24
	inc b                                            ; $6ee0: $04
	ldh a, [c]                                       ; $6ee1: $f2
	db $10                                           ; $6ee2: $10
	inc h                                            ; $6ee3: $24
	db $fc                                           ; $6ee4: $fc
	ldh a, [c]                                       ; $6ee5: $f2
	ld c, $24                                        ; $6ee6: $0e $24
	db $f4                                           ; $6ee8: $f4
	ldh a, [c]                                       ; $6ee9: $f2
	inc c                                            ; $6eea: $0c
	inc h                                            ; $6eeb: $24
	inc b                                            ; $6eec: $04
	ldh [c], a                                       ; $6eed: $e2
	inc b                                            ; $6eee: $04
	dec h                                            ; $6eef: $25

jr_00d_6ef0:
	db $fc                                           ; $6ef0: $fc
	ldh [c], a                                       ; $6ef1: $e2
	inc h                                            ; $6ef2: $24
	inc h                                            ; $6ef3: $24
	db $f4                                           ; $6ef4: $f4
	ldh [c], a                                       ; $6ef5: $e2
	jr jr_00d_6f1c                                   ; $6ef6: $18 $24

	inc b                                            ; $6ef8: $04
	ldh a, [c]                                       ; $6ef9: $f2
	db $10                                           ; $6efa: $10
	inc h                                            ; $6efb: $24
	db $fc                                           ; $6efc: $fc
	ldh a, [c]                                       ; $6efd: $f2
	ld c, $24                                        ; $6efe: $0e $24

jr_00d_6f00:
	db $f4                                           ; $6f00: $f4
	ldh a, [c]                                       ; $6f01: $f2
	inc c                                            ; $6f02: $0c
	inc h                                            ; $6f03: $24
	inc b                                            ; $6f04: $04
	ldh [c], a                                       ; $6f05: $e2
	inc b                                            ; $6f06: $04
	dec h                                            ; $6f07: $25
	db $ed                                           ; $6f08: $ed
	add sp, $2a                                      ; $6f09: $e8 $2a
	daa                                              ; $6f0b: $27
	db $ec                                           ; $6f0c: $ec
	rst SubAFromBC                                          ; $6f0d: $e7
	jr z, jr_00d_6f37                                ; $6f0e: $28 $27

	db $ec                                           ; $6f10: $ec
	and $26                                          ; $6f11: $e6 $26
	daa                                              ; $6f13: $27
	db $ec                                           ; $6f14: $ec
	rst SubAFromBC                                          ; $6f15: $e7
	jr z, jr_00d_6f3f                                ; $6f16: $28 $27

	db $ec                                           ; $6f18: $ec
	and $26                                          ; $6f19: $e6 $26
	daa                                              ; $6f1b: $27

jr_00d_6f1c:
	db $ec                                           ; $6f1c: $ec
	and $2e                                          ; $6f1d: $e6 $2e
	ld bc, $f204                                     ; $6f1f: $01 $04 $f2
	ld a, [bc]                                       ; $6f22: $0a
	inc h                                            ; $6f23: $24
	db $fc                                           ; $6f24: $fc
	ldh a, [c]                                       ; $6f25: $f2
	ld [$f424], sp                                   ; $6f26: $08 $24 $f4
	ldh a, [c]                                       ; $6f29: $f2
	ld b, $24                                        ; $6f2a: $06 $24
	inc b                                            ; $6f2c: $04
	ldh [c], a                                       ; $6f2d: $e2
	inc b                                            ; $6f2e: $04
	inc h                                            ; $6f2f: $24
	db $fc                                           ; $6f30: $fc
	ldh [c], a                                       ; $6f31: $e2
	ld [bc], a                                       ; $6f32: $02
	inc h                                            ; $6f33: $24
	db $f4                                           ; $6f34: $f4
	ldh [c], a                                       ; $6f35: $e2
	nop                                              ; $6f36: $00

jr_00d_6f37:
	dec h                                            ; $6f37: $25
	db $fc                                           ; $6f38: $fc
	ldh [c], a                                       ; $6f39: $e2
	jr nz, jr_00d_6f60                               ; $6f3a: $20 $24

	inc b                                            ; $6f3c: $04
	ldh a, [c]                                       ; $6f3d: $f2
	ld a, [bc]                                       ; $6f3e: $0a

jr_00d_6f3f:
	inc h                                            ; $6f3f: $24
	db $fc                                           ; $6f40: $fc
	ldh a, [c]                                       ; $6f41: $f2
	ld [$f424], sp                                   ; $6f42: $08 $24 $f4
	ldh a, [c]                                       ; $6f45: $f2
	ld b, $24                                        ; $6f46: $06 $24
	inc b                                            ; $6f48: $04
	ldh [c], a                                       ; $6f49: $e2
	inc b                                            ; $6f4a: $04
	inc h                                            ; $6f4b: $24
	db $f4                                           ; $6f4c: $f4
	ldh [c], a                                       ; $6f4d: $e2
	nop                                              ; $6f4e: $00
	dec h                                            ; $6f4f: $25
	inc b                                            ; $6f50: $04
	ldh a, [c]                                       ; $6f51: $f2
	ld a, [bc]                                       ; $6f52: $0a
	inc h                                            ; $6f53: $24
	db $fc                                           ; $6f54: $fc
	ldh a, [c]                                       ; $6f55: $f2
	ld [$f424], sp                                   ; $6f56: $08 $24 $f4
	ldh a, [c]                                       ; $6f59: $f2
	ld b, $24                                        ; $6f5a: $06 $24
	inc b                                            ; $6f5c: $04
	ldh [c], a                                       ; $6f5d: $e2
	inc b                                            ; $6f5e: $04
	inc h                                            ; $6f5f: $24

jr_00d_6f60:
	db $fc                                           ; $6f60: $fc
	ldh [c], a                                       ; $6f61: $e2
	ld [bc], a                                       ; $6f62: $02
	inc h                                            ; $6f63: $24
	db $f4                                           ; $6f64: $f4
	ldh [c], a                                       ; $6f65: $e2
	nop                                              ; $6f66: $00
	dec h                                            ; $6f67: $25
	db $fc                                           ; $6f68: $fc
	di                                               ; $6f69: $f3
	ld [hl-], a                                      ; $6f6a: $32
	inc h                                            ; $6f6b: $24
	db $f4                                           ; $6f6c: $f4
	di                                               ; $6f6d: $f3
	jr nc, jr_00d_6f94                               ; $6f6e: $30 $24

	inc b                                            ; $6f70: $04
	di                                               ; $6f71: $f3
	ld a, [bc]                                       ; $6f72: $0a
	inc h                                            ; $6f73: $24
	inc b                                            ; $6f74: $04
	db $e3                                           ; $6f75: $e3
	inc b                                            ; $6f76: $04
	inc h                                            ; $6f77: $24
	db $fc                                           ; $6f78: $fc
	db $e3                                           ; $6f79: $e3
	ld [bc], a                                       ; $6f7a: $02
	inc h                                            ; $6f7b: $24
	db $f4                                           ; $6f7c: $f4
	db $e3                                           ; $6f7d: $e3
	nop                                              ; $6f7e: $00
	dec h                                            ; $6f7f: $25
	db $f4                                           ; $6f80: $f4
	ldh a, [c]                                       ; $6f81: $f2
	ld a, [bc]                                       ; $6f82: $0a
	ld h, h                                          ; $6f83: $64
	db $fc                                           ; $6f84: $fc
	ldh a, [c]                                       ; $6f85: $f2
	ld [$0464], sp                                   ; $6f86: $08 $64 $04
	ldh a, [c]                                       ; $6f89: $f2
	ld b, $64                                        ; $6f8a: $06 $64
	db $f4                                           ; $6f8c: $f4
	ldh [c], a                                       ; $6f8d: $e2
	inc b                                            ; $6f8e: $04
	ld h, h                                          ; $6f8f: $64
	db $fc                                           ; $6f90: $fc
	ldh [c], a                                       ; $6f91: $e2
	ld [bc], a                                       ; $6f92: $02
	ld h, h                                          ; $6f93: $64

jr_00d_6f94:
	inc b                                            ; $6f94: $04
	ldh [c], a                                       ; $6f95: $e2
	nop                                              ; $6f96: $00
	ld h, l                                          ; $6f97: $65
	db $fc                                           ; $6f98: $fc
	di                                               ; $6f99: $f3
	ld [hl-], a                                      ; $6f9a: $32
	ld h, h                                          ; $6f9b: $64
	inc b                                            ; $6f9c: $04
	di                                               ; $6f9d: $f3
	jr nc, jr_00d_7004                               ; $6f9e: $30 $64

	db $f4                                           ; $6fa0: $f4
	di                                               ; $6fa1: $f3
	ld a, [bc]                                       ; $6fa2: $0a
	ld h, h                                          ; $6fa3: $64
	db $f4                                           ; $6fa4: $f4
	db $e3                                           ; $6fa5: $e3
	inc b                                            ; $6fa6: $04
	ld h, h                                          ; $6fa7: $64
	db $fc                                           ; $6fa8: $fc
	db $e3                                           ; $6fa9: $e3
	ld [bc], a                                       ; $6faa: $02
	ld h, h                                          ; $6fab: $64
	inc b                                            ; $6fac: $04
	db $e3                                           ; $6fad: $e3
	nop                                              ; $6fae: $00
	ld h, l                                          ; $6faf: $65
	inc b                                            ; $6fb0: $04
	ldh a, [c]                                       ; $6fb1: $f2
	ld a, [bc]                                       ; $6fb2: $0a
	ld h, $fc                                        ; $6fb3: $26 $fc
	ldh a, [c]                                       ; $6fb5: $f2
	ld [$f426], sp                                   ; $6fb6: $08 $26 $f4
	ldh a, [c]                                       ; $6fb9: $f2
	ld b, $26                                        ; $6fba: $06 $26
	inc b                                            ; $6fbc: $04
	ldh [c], a                                       ; $6fbd: $e2
	inc b                                            ; $6fbe: $04
	inc h                                            ; $6fbf: $24
	db $fc                                           ; $6fc0: $fc
	ldh [c], a                                       ; $6fc1: $e2
	ld [bc], a                                       ; $6fc2: $02
	inc h                                            ; $6fc3: $24
	db $f4                                           ; $6fc4: $f4
	ldh [c], a                                       ; $6fc5: $e2
	nop                                              ; $6fc6: $00
	dec h                                            ; $6fc7: $25
	inc b                                            ; $6fc8: $04
	ldh a, [c]                                       ; $6fc9: $f2
	ld a, [bc]                                       ; $6fca: $0a
	ld h, $fc                                        ; $6fcb: $26 $fc
	ldh a, [c]                                       ; $6fcd: $f2
	ld [$f426], sp                                   ; $6fce: $08 $26 $f4
	ldh a, [c]                                       ; $6fd1: $f2
	ld b, $26                                        ; $6fd2: $06 $26
	inc b                                            ; $6fd4: $04
	ldh [c], a                                       ; $6fd5: $e2
	inc b                                            ; $6fd6: $04
	inc h                                            ; $6fd7: $24
	db $fc                                           ; $6fd8: $fc
	ldh [c], a                                       ; $6fd9: $e2
	ld [bc], a                                       ; $6fda: $02
	inc h                                            ; $6fdb: $24
	db $f4                                           ; $6fdc: $f4
	ldh [c], a                                       ; $6fdd: $e2
	nop                                              ; $6fde: $00
	dec h                                            ; $6fdf: $25
	db $fc                                           ; $6fe0: $fc
	di                                               ; $6fe1: $f3
	ld c, $26                                        ; $6fe2: $0e $26
	db $f4                                           ; $6fe4: $f4
	di                                               ; $6fe5: $f3
	inc c                                            ; $6fe6: $0c
	ld h, $04                                        ; $6fe7: $26 $04
	di                                               ; $6fe9: $f3
	ld a, [bc]                                       ; $6fea: $0a
	ld h, $04                                        ; $6feb: $26 $04
	db $e3                                           ; $6fed: $e3
	inc b                                            ; $6fee: $04
	inc h                                            ; $6fef: $24
	db $fc                                           ; $6ff0: $fc
	db $e3                                           ; $6ff1: $e3
	ld [bc], a                                       ; $6ff2: $02
	inc h                                            ; $6ff3: $24
	db $f4                                           ; $6ff4: $f4
	db $e3                                           ; $6ff5: $e3
	nop                                              ; $6ff6: $00
	dec h                                            ; $6ff7: $25
	inc b                                            ; $6ff8: $04
	ldh a, [c]                                       ; $6ff9: $f2
	ld a, [bc]                                       ; $6ffa: $0a
	ld h, $fc                                        ; $6ffb: $26 $fc
	ldh a, [c]                                       ; $6ffd: $f2
	ld [$f426], sp                                   ; $6ffe: $08 $26 $f4
	ldh a, [c]                                       ; $7001: $f2
	ld b, $26                                        ; $7002: $06 $26

jr_00d_7004:
	inc b                                            ; $7004: $04
	ldh [c], a                                       ; $7005: $e2
	inc b                                            ; $7006: $04
	inc h                                            ; $7007: $24
	db $fc                                           ; $7008: $fc
	ldh [c], a                                       ; $7009: $e2
	ld [bc], a                                       ; $700a: $02
	inc h                                            ; $700b: $24
	db $f4                                           ; $700c: $f4
	ldh [c], a                                       ; $700d: $e2
	nop                                              ; $700e: $00
	dec h                                            ; $700f: $25
	db $f4                                           ; $7010: $f4
	di                                               ; $7011: $f3
	ld c, $26                                        ; $7012: $0e $26
	db $fc                                           ; $7014: $fc
	di                                               ; $7015: $f3
	db $10                                           ; $7016: $10
	ld h, $fc                                        ; $7017: $26 $fc
	db $e3                                           ; $7019: $e3
	inc c                                            ; $701a: $0c
	inc h                                            ; $701b: $24
	inc b                                            ; $701c: $04
	di                                               ; $701d: $f3
	ld a, [bc]                                       ; $701e: $0a
	ld h, $04                                        ; $701f: $26 $04
	db $e3                                           ; $7021: $e3
	inc b                                            ; $7022: $04
	inc h                                            ; $7023: $24
	db $f4                                           ; $7024: $f4
	db $e3                                           ; $7025: $e3
	nop                                              ; $7026: $00
	dec h                                            ; $7027: $25
	inc b                                            ; $7028: $04
	ldh a, [c]                                       ; $7029: $f2
	ld a, [bc]                                       ; $702a: $0a
	ld h, $fc                                        ; $702b: $26 $fc
	ldh a, [c]                                       ; $702d: $f2
	ld [$f426], sp                                   ; $702e: $08 $26 $f4
	ldh a, [c]                                       ; $7031: $f2
	ld b, $26                                        ; $7032: $06 $26
	inc b                                            ; $7034: $04
	ldh [c], a                                       ; $7035: $e2
	inc b                                            ; $7036: $04
	inc h                                            ; $7037: $24
	db $fc                                           ; $7038: $fc
	ldh [c], a                                       ; $7039: $e2
	ld [bc], a                                       ; $703a: $02
	inc h                                            ; $703b: $24
	db $f4                                           ; $703c: $f4
	ldh [c], a                                       ; $703d: $e2
	nop                                              ; $703e: $00
	dec h                                            ; $703f: $25
	db $fc                                           ; $7040: $fc
	ldh [c], a                                       ; $7041: $e2
	inc c                                            ; $7042: $0c
	inc h                                            ; $7043: $24
	inc b                                            ; $7044: $04
	ldh a, [c]                                       ; $7045: $f2
	ld a, [bc]                                       ; $7046: $0a
	ld h, $fc                                        ; $7047: $26 $fc
	ldh a, [c]                                       ; $7049: $f2
	ld [$f426], sp                                   ; $704a: $08 $26 $f4
	ldh a, [c]                                       ; $704d: $f2
	ld b, $26                                        ; $704e: $06 $26
	inc b                                            ; $7050: $04
	ldh [c], a                                       ; $7051: $e2
	inc b                                            ; $7052: $04
	inc h                                            ; $7053: $24
	db $f4                                           ; $7054: $f4
	ldh [c], a                                       ; $7055: $e2
	nop                                              ; $7056: $00
	dec h                                            ; $7057: $25
	inc b                                            ; $7058: $04
	ldh a, [c]                                       ; $7059: $f2
	ld a, [bc]                                       ; $705a: $0a
	ld h, $fc                                        ; $705b: $26 $fc
	ldh a, [c]                                       ; $705d: $f2
	ld [$f426], sp                                   ; $705e: $08 $26 $f4
	ldh a, [c]                                       ; $7061: $f2
	ld b, $26                                        ; $7062: $06 $26
	inc b                                            ; $7064: $04
	ldh [c], a                                       ; $7065: $e2
	inc b                                            ; $7066: $04
	inc h                                            ; $7067: $24
	db $fc                                           ; $7068: $fc
	ldh [c], a                                       ; $7069: $e2
	ld [bc], a                                       ; $706a: $02
	inc h                                            ; $706b: $24
	db $f4                                           ; $706c: $f4
	ldh [c], a                                       ; $706d: $e2
	nop                                              ; $706e: $00
	dec h                                            ; $706f: $25
	inc b                                            ; $7070: $04
	ldh a, [c]                                       ; $7071: $f2
	inc d                                            ; $7072: $14
	ld h, $fc                                        ; $7073: $26 $fc
	ldh a, [c]                                       ; $7075: $f2
	ld [de], a                                       ; $7076: $12
	ld h, $f4                                        ; $7077: $26 $f4
	ldh a, [c]                                       ; $7079: $f2
	db $10                                           ; $707a: $10
	ld h, $fc                                        ; $707b: $26 $fc
	ldh [c], a                                       ; $707d: $e2
	ld c, $24                                        ; $707e: $0e $24
	db $f4                                           ; $7080: $f4
	ldh [c], a                                       ; $7081: $e2
	inc c                                            ; $7082: $0c
	inc h                                            ; $7083: $24
	inc b                                            ; $7084: $04
	ldh [c], a                                       ; $7085: $e2
	inc b                                            ; $7086: $04
	dec h                                            ; $7087: $25
	inc b                                            ; $7088: $04
	db $e4                                           ; $7089: $e4
	inc b                                            ; $708a: $04
	inc h                                            ; $708b: $24
	db $f4                                           ; $708c: $f4
	db $e4                                           ; $708d: $e4
	inc c                                            ; $708e: $0c
	inc h                                            ; $708f: $24
	inc b                                            ; $7090: $04
	db $f4                                           ; $7091: $f4
	inc e                                            ; $7092: $1c
	ld h, $f4                                        ; $7093: $26 $f4
	db $f4                                           ; $7095: $f4
	jr jr_00d_70be                                   ; $7096: $18 $26

	db $fc                                           ; $7098: $fc
	db $f4                                           ; $7099: $f4
	ld a, [de]                                       ; $709a: $1a
	ld h, $fc                                        ; $709b: $26 $fc
	db $e4                                           ; $709d: $e4
	ld d, $25                                        ; $709e: $16 $25
	ldh a, [c]                                       ; $70a0: $f2
	rst SubAFromHL                                          ; $70a1: $d7
	ld e, $24                                        ; $70a2: $1e $24
	ld a, [bc]                                       ; $70a4: $0a
	rst SubAFromHL                                          ; $70a5: $d7
	inc h                                            ; $70a6: $24
	inc h                                            ; $70a7: $24
	ld [bc], a                                       ; $70a8: $02
	rst SubAFromHL                                          ; $70a9: $d7
	ld [hl+], a                                      ; $70aa: $22
	inc h                                            ; $70ab: $24
	ldh a, [c]                                       ; $70ac: $f2
	rst SubAFromBC                                          ; $70ad: $e7
	jr nz, jr_00d_70d4                               ; $70ae: $20 $24

	ld a, [$26e7]                                    ; $70b0: $fa $e7 $26
	inc h                                            ; $70b3: $24
	ld [bc], a                                       ; $70b4: $02
	rst SubAFromBC                                          ; $70b5: $e7
	jr z, @+$26                                      ; $70b6: $28 $24

	ld a, [bc]                                       ; $70b8: $0a
	rst SubAFromBC                                          ; $70b9: $e7
	ld a, [hl+]                                      ; $70ba: $2a
	inc h                                            ; $70bb: $24
	ldh a, [c]                                       ; $70bc: $f2
	rst FarCall                                          ; $70bd: $f7

jr_00d_70be:
	inc l                                            ; $70be: $2c
	ld h, $fa                                        ; $70bf: $26 $fa
	rst FarCall                                          ; $70c1: $f7
	ld l, $26                                        ; $70c2: $2e $26
	ld [bc], a                                       ; $70c4: $02
	rst FarCall                                          ; $70c5: $f7
	jr nc, @+$28                                     ; $70c6: $30 $26

	ld a, [bc]                                       ; $70c8: $0a
	rst FarCall                                          ; $70c9: $f7
	ld [hl-], a                                      ; $70ca: $32
	daa                                              ; $70cb: $27
	push af                                          ; $70cc: $f5
	add sp, $34                                      ; $70cd: $e8 $34
	inc h                                            ; $70cf: $24
	db $fd                                           ; $70d0: $fd
	add sp, $36                                      ; $70d1: $e8 $36
	inc h                                            ; $70d3: $24

jr_00d_70d4:
	dec b                                            ; $70d4: $05
	add sp, $38                                      ; $70d5: $e8 $38
	inc h                                            ; $70d7: $24
	push af                                          ; $70d8: $f5
	ld hl, sp+$3a                                    ; $70d9: $f8 $3a
	ld h, $fd                                        ; $70db: $26 $fd
	ld hl, sp+$3c                                    ; $70dd: $f8 $3c
	ld h, $05                                        ; $70df: $26 $05
	ld hl, sp+$3e                                    ; $70e1: $f8 $3e
	daa                                              ; $70e3: $27
	push af                                          ; $70e4: $f5
	ld hl, sp+$06                                    ; $70e5: $f8 $06
	ld h, $fd                                        ; $70e7: $26 $fd
	ld hl, sp+$08                                    ; $70e9: $f8 $08
	ld h, $f5                                        ; $70eb: $26 $f5
	add sp, $00                                      ; $70ed: $e8 $00
	inc h                                            ; $70ef: $24
	dec b                                            ; $70f0: $05
	add sp, $04                                      ; $70f1: $e8 $04
	inc h                                            ; $70f3: $24
	db $fd                                           ; $70f4: $fd
	add sp, $02                                      ; $70f5: $e8 $02
	inc h                                            ; $70f7: $24
	dec b                                            ; $70f8: $05
	ld hl, sp+$0a                                    ; $70f9: $f8 $0a
	daa                                              ; $70fb: $27
	inc b                                            ; $70fc: $04
	ldh a, [c]                                       ; $70fd: $f2
	ld [$fc26], sp                                   ; $70fe: $08 $26 $fc
	ldh a, [c]                                       ; $7101: $f2
	ld b, $26                                        ; $7102: $06 $26
	db $f4                                           ; $7104: $f4
	ldh a, [c]                                       ; $7105: $f2
	inc b                                            ; $7106: $04
	ld h, $01                                        ; $7107: $26 $01
	ldh [c], a                                       ; $7109: $e2
	ld [bc], a                                       ; $710a: $02
	ld h, $f9                                        ; $710b: $26 $f9
	ldh [c], a                                       ; $710d: $e2
	nop                                              ; $710e: $00
	daa                                              ; $710f: $27
	db $f4                                           ; $7110: $f4
	ldh a, [c]                                       ; $7111: $f2
	ld b, $26                                        ; $7112: $06 $26
	inc b                                            ; $7114: $04
	ldh a, [c]                                       ; $7115: $f2
	ld a, [bc]                                       ; $7116: $0a
	ld h, $fc                                        ; $7117: $26 $fc
	ldh a, [c]                                       ; $7119: $f2
	ld [$0426], sp                                   ; $711a: $08 $26 $04
	ldh [c], a                                       ; $711d: $e2
	inc b                                            ; $711e: $04
	ld h, $fc                                        ; $711f: $26 $fc
	ldh [c], a                                       ; $7121: $e2
	ld [bc], a                                       ; $7122: $02
	ld h, $f4                                        ; $7123: $26 $f4
	ldh [c], a                                       ; $7125: $e2
	nop                                              ; $7126: $00
	daa                                              ; $7127: $27
	db $f4                                           ; $7128: $f4
	di                                               ; $7129: $f3
	inc c                                            ; $712a: $0c
	ld h, $fc                                        ; $712b: $26 $fc
	di                                               ; $712d: $f3
	ld c, $26                                        ; $712e: $0e $26
	inc b                                            ; $7130: $04
	di                                               ; $7131: $f3
	db $10                                           ; $7132: $10
	ld h, $04                                        ; $7133: $26 $04
	db $e3                                           ; $7135: $e3
	inc b                                            ; $7136: $04
	ld h, $fc                                        ; $7137: $26 $fc
	db $e3                                           ; $7139: $e3
	ld [bc], a                                       ; $713a: $02
	ld h, $f4                                        ; $713b: $26 $f4

jr_00d_713d:
	db $e3                                           ; $713d: $e3
	nop                                              ; $713e: $00
	daa                                              ; $713f: $27
	inc b                                            ; $7140: $04
	di                                               ; $7141: $f3
	jr nz, jr_00d_716a                               ; $7142: $20 $26

	db $fc                                           ; $7144: $fc
	di                                               ; $7145: $f3
	ld e, $26                                        ; $7146: $1e $26
	db $f4                                           ; $7148: $f4

jr_00d_7149:
	di                                               ; $7149: $f3
	inc e                                            ; $714a: $1c
	ld h, $ec                                        ; $714b: $26 $ec
	di                                               ; $714d: $f3
	ld a, [de]                                       ; $714e: $1a
	jr z, jr_00d_713d                                ; $714f: $28 $ec

	db $e3                                           ; $7151: $e3
	ld [de], a                                       ; $7152: $12
	jr z, jr_00d_7149                                ; $7153: $28 $f4

	db $e3                                           ; $7155: $e3
	inc d                                            ; $7156: $14
	ld h, $fc                                        ; $7157: $26 $fc
	db $e3                                           ; $7159: $e3
	ld d, $27                                        ; $715a: $16 $27
	db $f4                                           ; $715c: $f4
	di                                               ; $715d: $f3
	inc h                                            ; $715e: $24
	ld h, $ec                                        ; $715f: $26 $ec
	jp hl                                            ; $7161: $e9


	ld [hl+], a                                      ; $7162: $22
	jr z, jr_00d_7169                                ; $7163: $28 $04

	di                                               ; $7165: $f3
	jr nz, jr_00d_718e                               ; $7166: $20 $26

	db $fc                                           ; $7168: $fc

jr_00d_7169:
	di                                               ; $7169: $f3

jr_00d_716a:
	ld e, $26                                        ; $716a: $1e $26
	db $f4                                           ; $716c: $f4
	db $e3                                           ; $716d: $e3
	inc d                                            ; $716e: $14
	ld h, $fc                                        ; $716f: $26 $fc
	db $e3                                           ; $7171: $e3
	ld d, $27                                        ; $7172: $16 $27
	ei                                               ; $7174: $fb
	or $30                                           ; $7175: $f6 $30
	add hl, hl                                       ; $7177: $29
	db $fc                                           ; $7178: $fc
	ld hl, sp+$2e                                    ; $7179: $f8 $2e
	add hl, hl                                       ; $717b: $29
	ld hl, sp-$08                                    ; $717c: $f8 $f8
	ld h, $28                                        ; $717e: $26 $28
	nop                                              ; $7180: $00
	ld hl, sp+$28                                    ; $7181: $f8 $28
	add hl, hl                                       ; $7183: $29
	ld hl, sp-$08                                    ; $7184: $f8 $f8
	ld a, [hl+]                                      ; $7186: $2a
	jr z, jr_00d_7189                                ; $7187: $28 $00

jr_00d_7189:
	ld hl, sp+$2c                                    ; $7189: $f8 $2c
	add hl, hl                                       ; $718b: $29
	inc b                                            ; $718c: $04

jr_00d_718d:
	ldh [c], a                                       ; $718d: $e2

jr_00d_718e:
	inc b                                            ; $718e: $04
	jr nz, jr_00d_718d                               ; $718f: $20 $fc

	ldh [c], a                                       ; $7191: $e2
	ld [bc], a                                       ; $7192: $02
	jr nz, jr_00d_7199                               ; $7193: $20 $04

jr_00d_7195:
	ldh a, [c]                                       ; $7195: $f2
	ld a, [bc]                                       ; $7196: $0a
	jr nz, jr_00d_7195                               ; $7197: $20 $fc

jr_00d_7199:
	ldh a, [c]                                       ; $7199: $f2
	ld [$f420], sp                                   ; $719a: $08 $20 $f4
	ldh a, [c]                                       ; $719d: $f2
	ld b, $20                                        ; $719e: $06 $20
	db $f4                                           ; $71a0: $f4
	ldh [c], a                                       ; $71a1: $e2
	nop                                              ; $71a2: $00
	ld hl, $f204                                     ; $71a3: $21 $04 $f2
	ld a, [bc]                                       ; $71a6: $0a
	jr nz, @-$02                                     ; $71a7: $20 $fc

	ldh a, [c]                                       ; $71a9: $f2
	ld [$f420], sp                                   ; $71aa: $08 $20 $f4

jr_00d_71ad:
	ldh a, [c]                                       ; $71ad: $f2
	ld b, $20                                        ; $71ae: $06 $20
	inc b                                            ; $71b0: $04

jr_00d_71b1:
	ldh [c], a                                       ; $71b1: $e2
	inc b                                            ; $71b2: $04
	jr nz, jr_00d_71b1                               ; $71b3: $20 $fc

	ldh [c], a                                       ; $71b5: $e2
	ld [bc], a                                       ; $71b6: $02
	jr nz, jr_00d_71ad                               ; $71b7: $20 $f4

jr_00d_71b9:
	ldh [c], a                                       ; $71b9: $e2
	nop                                              ; $71ba: $00
	ld hl, $f204                                     ; $71bb: $21 $04 $f2
	inc d                                            ; $71be: $14
	jr nz, @-$02                                     ; $71bf: $20 $fc

	ldh a, [c]                                       ; $71c1: $f2
	ld [de], a                                       ; $71c2: $12
	jr nz, jr_00d_71b9                               ; $71c3: $20 $f4

jr_00d_71c5:
	ldh a, [c]                                       ; $71c5: $f2
	db $10                                           ; $71c6: $10
	jr nz, jr_00d_71c5                               ; $71c7: $20 $fc

	ldh [c], a                                       ; $71c9: $e2
	ld c, $20                                        ; $71ca: $0e $20
	db $f4                                           ; $71cc: $f4
	ldh [c], a                                       ; $71cd: $e2
	inc c                                            ; $71ce: $0c
	jr nz, @+$06                                     ; $71cf: $20 $04

	ldh [c], a                                       ; $71d1: $e2
	inc b                                            ; $71d2: $04
	ld hl, $e2fc                                     ; $71d3: $21 $fc $e2
	ld d, $20                                        ; $71d6: $16 $20
	inc b                                            ; $71d8: $04

jr_00d_71d9:
	ldh a, [c]                                       ; $71d9: $f2
	inc d                                            ; $71da: $14
	jr nz, jr_00d_71d9                               ; $71db: $20 $fc

	ldh a, [c]                                       ; $71dd: $f2
	ld [de], a                                       ; $71de: $12
	jr nz, @-$0a                                     ; $71df: $20 $f4

	ldh a, [c]                                       ; $71e1: $f2
	db $10                                           ; $71e2: $10
	jr nz, jr_00d_71d9                               ; $71e3: $20 $f4

	ldh [c], a                                       ; $71e5: $e2
	inc c                                            ; $71e6: $0c
	jr nz, @+$06                                     ; $71e7: $20 $04

jr_00d_71e9:
	ldh [c], a                                       ; $71e9: $e2
	inc b                                            ; $71ea: $04
	ld hl, $f204                                     ; $71eb: $21 $04 $f2
	ld e, $20                                        ; $71ee: $1e $20
	db $fc                                           ; $71f0: $fc
	ldh a, [c]                                       ; $71f1: $f2
	inc e                                            ; $71f2: $1c
	jr nz, jr_00d_71e9                               ; $71f3: $20 $f4

	ldh a, [c]                                       ; $71f5: $f2
	ld a, [de]                                       ; $71f6: $1a
	jr nz, @-$0a                                     ; $71f7: $20 $f4

jr_00d_71f9:
	ldh [c], a                                       ; $71f9: $e2
	nop                                              ; $71fa: $00
	jr nz, jr_00d_71f9                               ; $71fb: $20 $fc

	ldh [c], a                                       ; $71fd: $e2
	jr @+$22                                         ; $71fe: $18 $20

	inc b                                            ; $7200: $04
	ldh [c], a                                       ; $7201: $e2
	inc b                                            ; $7202: $04
	ld hl, $f204                                     ; $7203: $21 $04 $f2
	ld a, [hl+]                                      ; $7206: $2a
	jr nz, @-$02                                     ; $7207: $20 $fc

	ldh a, [c]                                       ; $7209: $f2
	jr z, @+$22                                      ; $720a: $28 $20

	db $f4                                           ; $720c: $f4

jr_00d_720d:
	ldh a, [c]                                       ; $720d: $f2
	ld h, $20                                        ; $720e: $26 $20
	inc b                                            ; $7210: $04

jr_00d_7211:
	ldh [c], a                                       ; $7211: $e2
	inc h                                            ; $7212: $24
	jr nz, jr_00d_7211                               ; $7213: $20 $fc

	ldh [c], a                                       ; $7215: $e2
	ld [hl+], a                                      ; $7216: $22
	jr nz, jr_00d_720d                               ; $7217: $20 $f4

	ldh [c], a                                       ; $7219: $e2
	jr nz, jr_00d_723d                               ; $721a: $20 $21

	db $fc                                           ; $721c: $fc
	db $fc                                           ; $721d: $fc
	inc l                                            ; $721e: $2c
	ld hl, $fcfc                                     ; $721f: $21 $fc $fc
	ld l, $21                                        ; $7222: $2e $21
	db $fc                                           ; $7224: $fc
	db $fc                                           ; $7225: $fc
	jr nc, @+$23                                     ; $7226: $30 $21

	inc b                                            ; $7228: $04

jr_00d_7229:
	ldh a, [c]                                       ; $7229: $f2
	ld a, [hl+]                                      ; $722a: $2a
	jr nz, jr_00d_7229                               ; $722b: $20 $fc

	ldh a, [c]                                       ; $722d: $f2
	jr z, jr_00d_7250                                ; $722e: $28 $20

	db $f4                                           ; $7230: $f4

jr_00d_7231:
	ldh a, [c]                                       ; $7231: $f2
	ld h, $20                                        ; $7232: $26 $20
	inc b                                            ; $7234: $04

jr_00d_7235:
	ldh [c], a                                       ; $7235: $e2
	inc h                                            ; $7236: $24
	jr nz, jr_00d_7235                               ; $7237: $20 $fc

	ldh [c], a                                       ; $7239: $e2
	ld [hl+], a                                      ; $723a: $22
	jr nz, jr_00d_7231                               ; $723b: $20 $f4

jr_00d_723d:
	ldh [c], a                                       ; $723d: $e2
	jr nz, @+$23                                     ; $723e: $20 $21

	ld [$3efc], sp                                   ; $7240: $08 $fc $3e
	ld a, [hl+]                                      ; $7243: $2a
	nop                                              ; $7244: $00
	db $fc                                           ; $7245: $fc
	inc a                                            ; $7246: $3c
	ld a, [hl+]                                      ; $7247: $2a
	ld hl, sp-$04                                    ; $7248: $f8 $fc
	ld a, [hl-]                                      ; $724a: $3a
	ld a, [hl+]                                      ; $724b: $2a
	ldh a, [$fc]                                     ; $724c: $f0 $fc
	jr c, jr_00d_727a                                ; $724e: $38 $2a

jr_00d_7250:
	ld [$36ec], sp                                   ; $7250: $08 $ec $36
	ld a, [hl+]                                      ; $7253: $2a
	nop                                              ; $7254: $00
	inc c                                            ; $7255: $0c
	ld b, d                                          ; $7256: $42
	ld a, [hl+]                                      ; $7257: $2a
	ld hl, sp+$0c                                    ; $7258: $f8 $0c
	ld b, d                                          ; $725a: $42
	ld a, [hl+]                                      ; $725b: $2a
	ld hl, sp-$14                                    ; $725c: $f8 $ec
	inc [hl]                                         ; $725e: $34
	ld a, [hl+]                                      ; $725f: $2a
	ld [$440c], sp                                   ; $7260: $08 $0c $44
	ld a, [hl+]                                      ; $7263: $2a
	ldh a, [$0c]                                     ; $7264: $f0 $0c
	ld b, b                                          ; $7266: $40
	ld a, [hl+]                                      ; $7267: $2a
	nop                                              ; $7268: $00
	db $ec                                           ; $7269: $ec
	inc [hl]                                         ; $726a: $34
	ld a, [hl+]                                      ; $726b: $2a
	ldh a, [$ec]                                     ; $726c: $f0 $ec
	ld [hl-], a                                      ; $726e: $32
	dec hl                                           ; $726f: $2b
	nop                                              ; $7270: $00
	ldh a, [c]                                       ; $7271: $f2
	ld c, b                                          ; $7272: $48
	jr nz, @-$06                                     ; $7273: $20 $f8

	ldh a, [c]                                       ; $7275: $f2
	ld b, [hl]                                       ; $7276: $46
	ld hl, $f20a                                     ; $7277: $21 $0a $f2

jr_00d_727a:
	ld c, [hl]                                       ; $727a: $4e

jr_00d_727b:
	jr nz, jr_00d_727f                               ; $727b: $20 $02

	ldh a, [c]                                       ; $727d: $f2
	ld c, h                                          ; $727e: $4c

jr_00d_727f:
	jr nz, jr_00d_727b                               ; $727f: $20 $fa

	ldh a, [c]                                       ; $7281: $f2
	ld c, d                                          ; $7282: $4a
	ld hl, $f204                                     ; $7283: $21 $04 $f2
	ld a, [bc]                                       ; $7286: $0a
	ld [hl+], a                                      ; $7287: $22
	db $fc                                           ; $7288: $fc
	ldh a, [c]                                       ; $7289: $f2
	ld [$f422], sp                                   ; $728a: $08 $22 $f4

jr_00d_728d:
	ldh a, [c]                                       ; $728d: $f2
	ld b, $22                                        ; $728e: $06 $22
	inc b                                            ; $7290: $04

jr_00d_7291:
	ldh [c], a                                       ; $7291: $e2
	inc b                                            ; $7292: $04
	jr nz, jr_00d_7291                               ; $7293: $20 $fc

	ldh [c], a                                       ; $7295: $e2
	ld [bc], a                                       ; $7296: $02
	jr nz, jr_00d_728d                               ; $7297: $20 $f4

	ldh [c], a                                       ; $7299: $e2
	nop                                              ; $729a: $00
	ld hl, $f204                                     ; $729b: $21 $04 $f2
	ld c, $22                                        ; $729e: $0e $22
	db $fc                                           ; $72a0: $fc
	ldh a, [c]                                       ; $72a1: $f2
	inc c                                            ; $72a2: $0c
	ld [hl+], a                                      ; $72a3: $22
	db $f4                                           ; $72a4: $f4
	ldh a, [c]                                       ; $72a5: $f2
	ld a, [bc]                                       ; $72a6: $0a
	ld [hl+], a                                      ; $72a7: $22
	inc b                                            ; $72a8: $04
	ldh [c], a                                       ; $72a9: $e2
	ld [$fc20], sp                                   ; $72aa: $08 $20 $fc
	ldh [c], a                                       ; $72ad: $e2
	ld b, $20                                        ; $72ae: $06 $20
	db $f4                                           ; $72b0: $f4
	ldh [c], a                                       ; $72b1: $e2
	nop                                              ; $72b2: $00
	ld hl, $f2fc                                     ; $72b3: $21 $fc $f2
	inc d                                            ; $72b6: $14
	ld [hl+], a                                      ; $72b7: $22
	db $f4                                           ; $72b8: $f4
	ldh a, [c]                                       ; $72b9: $f2
	ld [de], a                                       ; $72ba: $12
	ld [hl+], a                                      ; $72bb: $22
	db $ec                                           ; $72bc: $ec
	ldh a, [c]                                       ; $72bd: $f2
	db $10                                           ; $72be: $10
	jr z, jr_00d_72c5                                ; $72bf: $28 $04

jr_00d_72c1:
	ldh [c], a                                       ; $72c1: $e2
	inc b                                            ; $72c2: $04
	jr nz, jr_00d_72c1                               ; $72c3: $20 $fc

jr_00d_72c5:
	ldh [c], a                                       ; $72c5: $e2
	ld [bc], a                                       ; $72c6: $02
	jr nz, jr_00d_72cd                               ; $72c7: $20 $04

	ldh a, [c]                                       ; $72c9: $f2
	ld c, $22                                        ; $72ca: $0e $22
	db $f4                                           ; $72cc: $f4

jr_00d_72cd:
	ldh [c], a                                       ; $72cd: $e2
	nop                                              ; $72ce: $00
	ld hl, $f2f4                                     ; $72cf: $21 $f4 $f2
	jr jr_00d_72f6                                   ; $72d2: $18 $22

	db $ec                                           ; $72d4: $ec
	ldh a, [c]                                       ; $72d5: $f2
	ld d, $28                                        ; $72d6: $16 $28
	db $fc                                           ; $72d8: $fc
	ldh a, [c]                                       ; $72d9: $f2
	inc d                                            ; $72da: $14
	ld [hl+], a                                      ; $72db: $22
	inc b                                            ; $72dc: $04

jr_00d_72dd:
	ldh [c], a                                       ; $72dd: $e2
	inc b                                            ; $72de: $04
	jr nz, jr_00d_72dd                               ; $72df: $20 $fc

	ldh [c], a                                       ; $72e1: $e2
	ld [bc], a                                       ; $72e2: $02
	jr nz, jr_00d_72e9                               ; $72e3: $20 $04

	ldh a, [c]                                       ; $72e5: $f2
	ld c, $22                                        ; $72e6: $0e $22
	db $f4                                           ; $72e8: $f4

jr_00d_72e9:
	ldh [c], a                                       ; $72e9: $e2
	nop                                              ; $72ea: $00
	ld hl, $f2fc                                     ; $72eb: $21 $fc $f2
	ld [hl+], a                                      ; $72ee: $22
	ld [hl+], a                                      ; $72ef: $22
	db $f4                                           ; $72f0: $f4
	ldh a, [c]                                       ; $72f1: $f2
	jr nz, jr_00d_7316                               ; $72f2: $20 $22

	inc c                                            ; $72f4: $0c
	ldh [c], a                                       ; $72f5: $e2

jr_00d_72f6:
	ld e, $20                                        ; $72f6: $1e $20
	inc b                                            ; $72f8: $04

jr_00d_72f9:
	ldh [c], a                                       ; $72f9: $e2
	inc e                                            ; $72fa: $1c
	jr nz, jr_00d_72f9                               ; $72fb: $20 $fc

	ldh [c], a                                       ; $72fd: $e2
	ld a, [de]                                       ; $72fe: $1a
	jr nz, jr_00d_7305                               ; $72ff: $20 $04

	ldh a, [c]                                       ; $7301: $f2
	ld c, $22                                        ; $7302: $0e $22
	db $f4                                           ; $7304: $f4

jr_00d_7305:
	ldh [c], a                                       ; $7305: $e2
	nop                                              ; $7306: $00
	ld hl, $e204                                     ; $7307: $21 $04 $e2
	ld h, $20                                        ; $730a: $26 $20
	db $fc                                           ; $730c: $fc
	ldh a, [c]                                       ; $730d: $f2
	ld [hl+], a                                      ; $730e: $22
	ld [hl+], a                                      ; $730f: $22
	db $f4                                           ; $7310: $f4
	ldh a, [c]                                       ; $7311: $f2
	jr nz, @+$24                                     ; $7312: $20 $22

	db $fc                                           ; $7314: $fc
	ldh [c], a                                       ; $7315: $e2

jr_00d_7316:
	ld a, [de]                                       ; $7316: $1a
	jr nz, jr_00d_731d                               ; $7317: $20 $04

	ldh a, [c]                                       ; $7319: $f2
	ld c, $22                                        ; $731a: $0e $22
	db $f4                                           ; $731c: $f4

jr_00d_731d:
	ldh [c], a                                       ; $731d: $e2
	nop                                              ; $731e: $00
	ld hl, $f2fc                                     ; $731f: $21 $fc $f2
	inc d                                            ; $7322: $14
	ld [hl+], a                                      ; $7323: $22
	db $f4                                           ; $7324: $f4
	ldh a, [c]                                       ; $7325: $f2
	inc l                                            ; $7326: $2c
	ld [hl+], a                                      ; $7327: $22
	db $f4                                           ; $7328: $f4

jr_00d_7329:
	ldh [c], a                                       ; $7329: $e2
	ld a, [hl+]                                      ; $732a: $2a
	jr nz, jr_00d_7329                               ; $732b: $20 $fc

	ldh [c], a                                       ; $732d: $e2
	ld [bc], a                                       ; $732e: $02
	jr nz, jr_00d_7335                               ; $732f: $20 $04

	ldh [c], a                                       ; $7331: $e2
	inc b                                            ; $7332: $04
	jr nz, jr_00d_7329                               ; $7333: $20 $f4

jr_00d_7335:
	jp nc, $2828                                     ; $7335: $d2 $28 $28

	inc b                                            ; $7338: $04
	ldh a, [c]                                       ; $7339: $f2
	ld c, $23                                        ; $733a: $0e $23
	db $e4                                           ; $733c: $e4
	ld [$282e], a                                    ; $733d: $ea $2e $28
	db $ec                                           ; $7340: $ec
	ld [$2830], a                                    ; $7341: $ea $30 $28
	db $f4                                           ; $7344: $f4
	ldh a, [c]                                       ; $7345: $f2
	inc [hl]                                         ; $7346: $34
	ld [hl+], a                                      ; $7347: $22
	db $f4                                           ; $7348: $f4

jr_00d_7349:
	ldh [c], a                                       ; $7349: $e2
	ld [hl-], a                                      ; $734a: $32
	jr nz, jr_00d_7349                               ; $734b: $20 $fc

	ldh a, [c]                                       ; $734d: $f2
	inc d                                            ; $734e: $14
	ld [hl+], a                                      ; $734f: $22
	db $fc                                           ; $7350: $fc
	ldh [c], a                                       ; $7351: $e2
	ld [bc], a                                       ; $7352: $02
	jr nz, jr_00d_7359                               ; $7353: $20 $04

	ldh [c], a                                       ; $7355: $e2
	inc b                                            ; $7356: $04
	jr nz, jr_00d_735d                               ; $7357: $20 $04

jr_00d_7359:
	ldh a, [c]                                       ; $7359: $f2
	ld c, $23                                        ; $735a: $0e $23
	db $e4                                           ; $735c: $e4

jr_00d_735d:
	ld [$282e], a                                    ; $735d: $ea $2e $28
	db $ec                                           ; $7360: $ec
	ld [$2830], a                                    ; $7361: $ea $30 $28
	db $f4                                           ; $7364: $f4
	ldh a, [c]                                       ; $7365: $f2
	inc [hl]                                         ; $7366: $34
	ld [hl+], a                                      ; $7367: $22
	db $f4                                           ; $7368: $f4

jr_00d_7369:
	ldh [c], a                                       ; $7369: $e2
	ld [hl-], a                                      ; $736a: $32
	jr nz, jr_00d_7369                               ; $736b: $20 $fc

	ldh a, [c]                                       ; $736d: $f2
	inc d                                            ; $736e: $14
	ld [hl+], a                                      ; $736f: $22
	db $fc                                           ; $7370: $fc
	ldh [c], a                                       ; $7371: $e2
	ld [bc], a                                       ; $7372: $02
	jr nz, jr_00d_7379                               ; $7373: $20 $04

	ldh [c], a                                       ; $7375: $e2
	inc b                                            ; $7376: $04
	jr nz, jr_00d_737d                               ; $7377: $20 $04

jr_00d_7379:
	ldh a, [c]                                       ; $7379: $f2
	ld c, $23                                        ; $737a: $0e $23
	inc bc                                           ; $737c: $03

jr_00d_737d:
	db $f4                                           ; $737d: $f4
	ld b, b                                          ; $737e: $40
	add hl, hl                                       ; $737f: $29
	inc bc                                           ; $7380: $03
	db $f4                                           ; $7381: $f4
	ld a, $29                                        ; $7382: $3e $29
	ei                                               ; $7384: $fb
	db $f4                                           ; $7385: $f4
	inc a                                            ; $7386: $3c
	jr z, jr_00d_738c                                ; $7387: $28 $03

	db $f4                                           ; $7389: $f4
	ld a, $29                                        ; $738a: $3e $29

jr_00d_738c:
	di                                               ; $738c: $f3
	db $fc                                           ; $738d: $fc
	ld [hl], $28                                     ; $738e: $36 $28
	ei                                               ; $7390: $fb
	db $fc                                           ; $7391: $fc
	jr c, jr_00d_73bc                                ; $7392: $38 $28

	inc bc                                           ; $7394: $03
	db $f4                                           ; $7395: $f4
	ld a, [hl-]                                      ; $7396: $3a
	add hl, hl                                       ; $7397: $29
	di                                               ; $7398: $f3
	db $fc                                           ; $7399: $fc
	ld [hl], $28                                     ; $739a: $36 $28
	ei                                               ; $739c: $fb
	db $fc                                           ; $739d: $fc
	jr c, jr_00d_73c8                                ; $739e: $38 $28

	inc bc                                           ; $73a0: $03
	db $f4                                           ; $73a1: $f4
	ld a, [hl-]                                      ; $73a2: $3a
	add hl, hl                                       ; $73a3: $29
	ld sp, hl                                        ; $73a4: $f9
	pop af                                           ; $73a5: $f1
	ld b, [hl]                                       ; $73a6: $46
	dec hl                                           ; $73a7: $2b
	ld sp, hl                                        ; $73a8: $f9
	pop af                                           ; $73a9: $f1
	ld c, b                                          ; $73aa: $48
	dec hl                                           ; $73ab: $2b
	rst $38                                          ; $73ac: $ff
	ld sp, hl                                        ; $73ad: $f9
	ld b, h                                          ; $73ae: $44
	ld a, [hl+]                                      ; $73af: $2a
	rst FarCall                                          ; $73b0: $f7
	ld sp, hl                                        ; $73b1: $f9
	ld b, d                                          ; $73b2: $42
	dec hl                                           ; $73b3: $2b
	rst $38                                          ; $73b4: $ff
	ld sp, hl                                        ; $73b5: $f9
	ld b, h                                          ; $73b6: $44
	ld a, [hl+]                                      ; $73b7: $2a
	rst FarCall                                          ; $73b8: $f7
	ld sp, hl                                        ; $73b9: $f9
	ld b, d                                          ; $73ba: $42
	dec hl                                           ; $73bb: $2b

jr_00d_73bc:
	inc bc                                           ; $73bc: $03
	ldh a, [c]                                       ; $73bd: $f2
	ld a, [bc]                                       ; $73be: $0a
	jr nz, jr_00d_73bc                               ; $73bf: $20 $fb

	ldh a, [c]                                       ; $73c1: $f2
	ld [$f320], sp                                   ; $73c2: $08 $20 $f3
	ldh a, [c]                                       ; $73c5: $f2
	ld b, $20                                        ; $73c6: $06 $20

jr_00d_73c8:
	inc bc                                           ; $73c8: $03
	ldh [c], a                                       ; $73c9: $e2
	inc b                                            ; $73ca: $04
	jr nz, jr_00d_73c8                               ; $73cb: $20 $fb

	ldh [c], a                                       ; $73cd: $e2
	ld [bc], a                                       ; $73ce: $02
	jr nz, @-$0b                                     ; $73cf: $20 $f3

jr_00d_73d1:
	ldh [c], a                                       ; $73d1: $e2
	nop                                              ; $73d2: $00
	ld hl, $f204                                     ; $73d3: $21 $04 $f2
	inc c                                            ; $73d6: $0c
	jr nz, @-$02                                     ; $73d7: $20 $fc

	ldh a, [c]                                       ; $73d9: $f2
	ld a, [bc]                                       ; $73da: $0a
	jr nz, jr_00d_73d1                               ; $73db: $20 $f4

	ldh a, [c]                                       ; $73dd: $f2
	ld [$ec20], sp                                   ; $73de: $08 $20 $ec

jr_00d_73e1:
	ldh a, [c]                                       ; $73e1: $f2
	ld b, $22                                        ; $73e2: $06 $22
	inc b                                            ; $73e4: $04

jr_00d_73e5:
	ldh [c], a                                       ; $73e5: $e2
	inc b                                            ; $73e6: $04
	jr nz, jr_00d_73e5                               ; $73e7: $20 $fc

	ldh [c], a                                       ; $73e9: $e2
	ld [bc], a                                       ; $73ea: $02
	jr nz, jr_00d_73e1                               ; $73eb: $20 $f4

	ldh [c], a                                       ; $73ed: $e2
	nop                                              ; $73ee: $00
	ld hl, $f2f6                                     ; $73ef: $21 $f6 $f2
	inc d                                            ; $73f2: $14
	jr nz, @+$08                                     ; $73f3: $20 $06

	ldh a, [c]                                       ; $73f5: $f2
	jr jr_00d_7418                                   ; $73f6: $18 $20

	cp $f2                                           ; $73f8: $fe $f2
	ld d, $20                                        ; $73fa: $16 $20
	ld b, $e2                                        ; $73fc: $06 $e2
	ld [de], a                                       ; $73fe: $12

jr_00d_73ff:
	jr nz, jr_00d_73ff                               ; $73ff: $20 $fe

	ldh [c], a                                       ; $7401: $e2
	db $10                                           ; $7402: $10
	jr nz, @-$08                                     ; $7403: $20 $f6

jr_00d_7405:
	ldh [c], a                                       ; $7405: $e2
	ld c, $21                                        ; $7406: $0e $21
	inc b                                            ; $7408: $04

jr_00d_7409:
	di                                               ; $7409: $f3
	inc h                                            ; $740a: $24
	jr z, jr_00d_7409                                ; $740b: $28 $fc

	di                                               ; $740d: $f3
	ld [hl+], a                                      ; $740e: $22
	jr z, jr_00d_7405                                ; $740f: $28 $f4

jr_00d_7411:
	di                                               ; $7411: $f3
	jr nz, jr_00d_743c                               ; $7412: $20 $28

	inc b                                            ; $7414: $04
	db $e3                                           ; $7415: $e3
	ld e, $28                                        ; $7416: $1e $28

jr_00d_7418:
	db $fc                                           ; $7418: $fc
	db $e3                                           ; $7419: $e3
	inc e                                            ; $741a: $1c
	jr z, jr_00d_7411                                ; $741b: $28 $f4

jr_00d_741d:
	db $e3                                           ; $741d: $e3
	ld a, [de]                                       ; $741e: $1a
	add hl, hl                                       ; $741f: $29
	inc b                                            ; $7420: $04

jr_00d_7421:
	di                                               ; $7421: $f3
	inc h                                            ; $7422: $24
	jr z, jr_00d_7421                                ; $7423: $28 $fc

	di                                               ; $7425: $f3
	ld [hl+], a                                      ; $7426: $22
	jr z, jr_00d_741d                                ; $7427: $28 $f4

jr_00d_7429:
	di                                               ; $7429: $f3
	jr nz, @+$2a                                     ; $742a: $20 $28

	inc b                                            ; $742c: $04
	db $e3                                           ; $742d: $e3
	ld e, $28                                        ; $742e: $1e $28
	db $fc                                           ; $7430: $fc
	db $e3                                           ; $7431: $e3
	inc e                                            ; $7432: $1c
	jr z, jr_00d_7429                                ; $7433: $28 $f4

	db $e3                                           ; $7435: $e3
	ld a, [de]                                       ; $7436: $1a
	add hl, hl                                       ; $7437: $29
	dec b                                            ; $7438: $05
	db $f4                                           ; $7439: $f4
	jr nc, jr_00d_7464                               ; $743a: $30 $28

jr_00d_743c:
	db $fd                                           ; $743c: $fd
	db $f4                                           ; $743d: $f4
	ld l, $28                                        ; $743e: $2e $28
	dec b                                            ; $7440: $05
	db $e4                                           ; $7441: $e4

jr_00d_7442:
	ld a, [hl+]                                      ; $7442: $2a
	jr z, jr_00d_7442                                ; $7443: $28 $fd

	db $e4                                           ; $7445: $e4
	jr z, jr_00d_7470                                ; $7446: $28 $28

	push af                                          ; $7448: $f5
	db $f4                                           ; $7449: $f4
	inc l                                            ; $744a: $2c
	jr z, jr_00d_7442                                ; $744b: $28 $f5

jr_00d_744d:
	db $e4                                           ; $744d: $e4
	ld h, $29                                        ; $744e: $26 $29
	inc b                                            ; $7450: $04

jr_00d_7451:
	di                                               ; $7451: $f3
	ld c, b                                          ; $7452: $48
	jr z, jr_00d_7451                                ; $7453: $28 $fc

	di                                               ; $7455: $f3
	ld b, [hl]                                       ; $7456: $46
	jr z, jr_00d_744d                                ; $7457: $28 $f4

	di                                               ; $7459: $f3
	ld b, h                                          ; $745a: $44
	jr z, jr_00d_7461                                ; $745b: $28 $04

	db $e3                                           ; $745d: $e3

jr_00d_745e:
	ld b, d                                          ; $745e: $42
	jr z, jr_00d_745e                                ; $745f: $28 $fd

jr_00d_7461:
	db $e3                                           ; $7461: $e3
	jr z, @+$2a                                      ; $7462: $28 $28

jr_00d_7464:
	push af                                          ; $7464: $f5

jr_00d_7465:
	db $e3                                           ; $7465: $e3
	ld h, $29                                        ; $7466: $26 $29
	ld [$38f5], sp                                   ; $7468: $08 $f5 $38
	jr nz, jr_00d_746d                               ; $746b: $20 $00

jr_00d_746d:
	push af                                          ; $746d: $f5
	ld [hl], $20                                     ; $746e: $36 $20

jr_00d_7470:
	ld hl, sp-$0b                                    ; $7470: $f8 $f5
	inc [hl]                                         ; $7472: $34
	jr nz, jr_00d_7465                               ; $7473: $20 $f0

jr_00d_7475:
	push af                                          ; $7475: $f5
	ld [hl-], a                                      ; $7476: $32
	ld hl, $f508                                     ; $7477: $21 $08 $f5
	ld b, b                                          ; $747a: $40
	jr nz, jr_00d_747d                               ; $747b: $20 $00

jr_00d_747d:
	push af                                          ; $747d: $f5
	ld a, $20                                        ; $747e: $3e $20
	ld hl, sp-$0b                                    ; $7480: $f8 $f5
	inc a                                            ; $7482: $3c
	jr nz, jr_00d_7475                               ; $7483: $20 $f0

	push af                                          ; $7485: $f5
	ld a, [hl-]                                      ; $7486: $3a
	ld hl, $f2f6                                     ; $7487: $21 $f6 $f2
	inc d                                            ; $748a: $14
	jr nz, @+$08                                     ; $748b: $20 $06

	ldh a, [c]                                       ; $748d: $f2
	jr @+$22                                         ; $748e: $18 $20

	cp $f2                                           ; $7490: $fe $f2
	ld d, $20                                        ; $7492: $16 $20
	ld b, $e2                                        ; $7494: $06 $e2
	ld [de], a                                       ; $7496: $12

jr_00d_7497:
	jr nz, jr_00d_7497                               ; $7497: $20 $fe

	ldh [c], a                                       ; $7499: $e2
	db $10                                           ; $749a: $10
	jr nz, @-$08                                     ; $749b: $20 $f6

	ldh [c], a                                       ; $749d: $e2
	ld c, $21                                        ; $749e: $0e $21
	inc b                                            ; $74a0: $04
	ldh a, [c]                                       ; $74a1: $f2
	ld a, [bc]                                       ; $74a2: $0a
	ld [hl+], a                                      ; $74a3: $22
	db $fc                                           ; $74a4: $fc
	ldh a, [c]                                       ; $74a5: $f2
	ld [$f422], sp                                   ; $74a6: $08 $22 $f4

jr_00d_74a9:
	ldh a, [c]                                       ; $74a9: $f2
	ld b, $22                                        ; $74aa: $06 $22
	inc b                                            ; $74ac: $04

jr_00d_74ad:
	ldh [c], a                                       ; $74ad: $e2
	inc b                                            ; $74ae: $04
	jr nz, jr_00d_74ad                               ; $74af: $20 $fc

	ldh [c], a                                       ; $74b1: $e2
	ld [bc], a                                       ; $74b2: $02
	jr nz, jr_00d_74a9                               ; $74b3: $20 $f4

	ldh [c], a                                       ; $74b5: $e2
	nop                                              ; $74b6: $00
	ld hl, $f204                                     ; $74b7: $21 $04 $f2
	ld a, [bc]                                       ; $74ba: $0a
	ld [hl+], a                                      ; $74bb: $22
	db $fc                                           ; $74bc: $fc
	ldh a, [c]                                       ; $74bd: $f2
	ld [$f422], sp                                   ; $74be: $08 $22 $f4

jr_00d_74c1:
	ldh a, [c]                                       ; $74c1: $f2
	ld b, $22                                        ; $74c2: $06 $22
	inc b                                            ; $74c4: $04

jr_00d_74c5:
	ldh [c], a                                       ; $74c5: $e2
	inc b                                            ; $74c6: $04
	jr nz, jr_00d_74c5                               ; $74c7: $20 $fc

	ldh [c], a                                       ; $74c9: $e2
	ld [bc], a                                       ; $74ca: $02
	jr nz, jr_00d_74c1                               ; $74cb: $20 $f4

	ldh [c], a                                       ; $74cd: $e2
	nop                                              ; $74ce: $00
	ld hl, $e2fc                                     ; $74cf: $21 $fc $e2
	inc c                                            ; $74d2: $0c
	jr nz, jr_00d_74d9                               ; $74d3: $20 $04

	ldh a, [c]                                       ; $74d5: $f2
	ld a, [bc]                                       ; $74d6: $0a
	ld [hl+], a                                      ; $74d7: $22
	db $fc                                           ; $74d8: $fc

jr_00d_74d9:
	ldh a, [c]                                       ; $74d9: $f2
	ld [$f422], sp                                   ; $74da: $08 $22 $f4
	ldh a, [c]                                       ; $74dd: $f2
	ld b, $22                                        ; $74de: $06 $22
	inc b                                            ; $74e0: $04
	ldh [c], a                                       ; $74e1: $e2
	inc b                                            ; $74e2: $04
	jr nz, jr_00d_74d9                               ; $74e3: $20 $f4

	ldh [c], a                                       ; $74e5: $e2
	nop                                              ; $74e6: $00
	ld hl, $f110                                     ; $74e7: $21 $10 $f1
	ld [hl+], a                                      ; $74ea: $22
	jr z, jr_00d_74f5                                ; $74eb: $28 $08

	pop af                                           ; $74ed: $f1
	jr nz, @+$2a                                     ; $74ee: $20 $28

	ld [$1ee1], sp                                   ; $74f0: $08 $e1 $1e
	jr z, jr_00d_7505                                ; $74f3: $28 $10

jr_00d_74f5:
	pop de                                           ; $74f5: $d1
	inc e                                            ; $74f6: $1c
	jr z, @+$0a                                      ; $74f7: $28 $08

	pop de                                           ; $74f9: $d1
	ld a, [de]                                       ; $74fa: $1a
	jr z, jr_00d_750d                                ; $74fb: $28 $10

	pop bc                                           ; $74fd: $c1
	jr @+$2a                                         ; $74fe: $18 $28

	ld [$16c1], sp                                   ; $7500: $08 $c1 $16
	jr z, jr_00d_7505                                ; $7503: $28 $00

jr_00d_7505:
	pop af                                           ; $7505: $f1
	inc d                                            ; $7506: $14
	jr z, @-$06                                      ; $7507: $28 $f8

jr_00d_7509:
	pop af                                           ; $7509: $f1
	ld [de], a                                       ; $750a: $12
	jr z, jr_00d_750d                                ; $750b: $28 $00

jr_00d_750d:
	pop hl                                           ; $750d: $e1
	db $10                                           ; $750e: $10
	jr z, jr_00d_7509                                ; $750f: $28 $f8

jr_00d_7511:
	pop hl                                           ; $7511: $e1
	ld c, $28                                        ; $7512: $0e $28
	nop                                              ; $7514: $00
	pop de                                           ; $7515: $d1
	inc c                                            ; $7516: $0c
	jr z, jr_00d_7511                                ; $7517: $28 $f8

jr_00d_7519:
	pop de                                           ; $7519: $d1
	ld a, [bc]                                       ; $751a: $0a
	jr z, jr_00d_751d                                ; $751b: $28 $00

jr_00d_751d:
	pop bc                                           ; $751d: $c1
	ld [$f828], sp                                   ; $751e: $08 $28 $f8
	pop bc                                           ; $7521: $c1
	ld b, $28                                        ; $7522: $06 $28
	ldh a, [$f1]                                     ; $7524: $f0 $f1
	inc b                                            ; $7526: $04
	jr z, jr_00d_7519                                ; $7527: $28 $f0

	reti                                             ; $7529: $d9


	ld [bc], a                                       ; $752a: $02
	jr z, jr_00d_751d                                ; $752b: $28 $f0

	ret                                              ; $752d: $c9


	nop                                              ; $752e: $00
	add hl, hl                                       ; $752f: $29
	ldh a, [$d9]                                     ; $7530: $f0 $d9
	inc l                                            ; $7532: $2c
	jr z, @-$0e                                      ; $7533: $28 $f0

	ret                                              ; $7535: $c9


	ld a, [hl+]                                      ; $7536: $2a
	jr z, jr_00d_7549                                ; $7537: $28 $10

	pop af                                           ; $7539: $f1
	ld [hl+], a                                      ; $753a: $22
	jr z, jr_00d_7545                                ; $753b: $28 $08

	pop af                                           ; $753d: $f1
	jr nz, @+$2a                                     ; $753e: $20 $28

	ld [$1ee1], sp                                   ; $7540: $08 $e1 $1e
	jr z, jr_00d_7555                                ; $7543: $28 $10

jr_00d_7545:
	pop de                                           ; $7545: $d1
	inc e                                            ; $7546: $1c
	jr z, @+$0a                                      ; $7547: $28 $08

jr_00d_7549:
	pop de                                           ; $7549: $d1
	ld a, [de]                                       ; $754a: $1a
	jr z, jr_00d_755d                                ; $754b: $28 $10

	pop bc                                           ; $754d: $c1
	jr jr_00d_7578                                   ; $754e: $18 $28

	ld [$16c1], sp                                   ; $7550: $08 $c1 $16
	jr z, jr_00d_7555                                ; $7553: $28 $00

jr_00d_7555:
	pop af                                           ; $7555: $f1
	inc d                                            ; $7556: $14
	jr z, @-$06                                      ; $7557: $28 $f8

jr_00d_7559:
	pop af                                           ; $7559: $f1
	ld [de], a                                       ; $755a: $12
	jr z, jr_00d_755d                                ; $755b: $28 $00

jr_00d_755d:
	pop hl                                           ; $755d: $e1
	db $10                                           ; $755e: $10

jr_00d_755f:
	jr z, jr_00d_7559                                ; $755f: $28 $f8

jr_00d_7561:
	pop hl                                           ; $7561: $e1
	ld c, $28                                        ; $7562: $0e $28
	nop                                              ; $7564: $00
	pop de                                           ; $7565: $d1
	inc c                                            ; $7566: $0c
	jr z, jr_00d_7561                                ; $7567: $28 $f8

	pop de                                           ; $7569: $d1
	ld a, [bc]                                       ; $756a: $0a

jr_00d_756b:
	jr z, jr_00d_756d                                ; $756b: $28 $00

jr_00d_756d:
	pop bc                                           ; $756d: $c1
	ld [$f828], sp                                   ; $756e: $08 $28 $f8
	pop bc                                           ; $7571: $c1
	ld b, $28                                        ; $7572: $06 $28
	ldh a, [$f1]                                     ; $7574: $f0 $f1
	inc b                                            ; $7576: $04

jr_00d_7577:
	add hl, hl                                       ; $7577: $29

jr_00d_7578:
	ld [$30c8], a                                    ; $7578: $ea $c8 $30
	jr z, jr_00d_755f                                ; $757b: $28 $e2

	ret z                                            ; $757d: $c8

	ld l, $29                                        ; $757e: $2e $29
	ldh a, [c]                                       ; $7580: $f2
	call $2232                                       ; $7581: $cd $32 $22
	ld [$30c8], a                                    ; $7584: $ea $c8 $30
	jr z, jr_00d_756b                                ; $7587: $28 $e2

	ret z                                            ; $7589: $c8

	ld l, $29                                        ; $758a: $2e $29
	ldh a, [c]                                       ; $758c: $f2

jr_00d_758d:
	call z, $2234                                    ; $758d: $cc $34 $22
	ld [$30c8], a                                    ; $7590: $ea $c8 $30
	jr z, jr_00d_7577                                ; $7593: $28 $e2

	ret z                                            ; $7595: $c8

	ld l, $29                                        ; $7596: $2e $29
	ld hl, sp-$2f                                    ; $7598: $f8 $d1
	inc h                                            ; $759a: $24
	jr z, jr_00d_758d                                ; $759b: $28 $f0

	reti                                             ; $759d: $d9


	ld [bc], a                                       ; $759e: $02
	jr z, @-$0e                                      ; $759f: $28 $f0

	ret                                              ; $75a1: $c9


	nop                                              ; $75a2: $00
	jr z, jr_00d_75b5                                ; $75a3: $28 $10

	pop af                                           ; $75a5: $f1
	ld [hl+], a                                      ; $75a6: $22
	jr z, jr_00d_75b1                                ; $75a7: $28 $08

	pop af                                           ; $75a9: $f1
	jr nz, @+$2a                                     ; $75aa: $20 $28

	ld [$1ee1], sp                                   ; $75ac: $08 $e1 $1e
	jr z, jr_00d_75c1                                ; $75af: $28 $10

jr_00d_75b1:
	pop de                                           ; $75b1: $d1
	inc e                                            ; $75b2: $1c
	jr z, @+$0a                                      ; $75b3: $28 $08

jr_00d_75b5:
	pop de                                           ; $75b5: $d1
	ld a, [de]                                       ; $75b6: $1a
	jr z, jr_00d_75c9                                ; $75b7: $28 $10

	pop bc                                           ; $75b9: $c1
	jr jr_00d_75e4                                   ; $75ba: $18 $28

	ld [$16c1], sp                                   ; $75bc: $08 $c1 $16
	jr z, jr_00d_75c1                                ; $75bf: $28 $00

jr_00d_75c1:
	pop af                                           ; $75c1: $f1
	inc d                                            ; $75c2: $14
	jr z, @-$06                                      ; $75c3: $28 $f8

jr_00d_75c5:
	pop af                                           ; $75c5: $f1
	ld [de], a                                       ; $75c6: $12
	jr z, jr_00d_75c9                                ; $75c7: $28 $00

jr_00d_75c9:
	pop hl                                           ; $75c9: $e1
	db $10                                           ; $75ca: $10
	jr z, jr_00d_75c5                                ; $75cb: $28 $f8

	pop hl                                           ; $75cd: $e1
	ld c, $28                                        ; $75ce: $0e $28
	nop                                              ; $75d0: $00
	pop de                                           ; $75d1: $d1
	inc c                                            ; $75d2: $0c
	jr z, jr_00d_75d5                                ; $75d3: $28 $00

jr_00d_75d5:
	pop bc                                           ; $75d5: $c1
	ld [$f828], sp                                   ; $75d6: $08 $28 $f8
	pop bc                                           ; $75d9: $c1
	ld b, $28                                        ; $75da: $06 $28
	ldh a, [$f1]                                     ; $75dc: $f0 $f1
	inc b                                            ; $75de: $04
	add hl, hl                                       ; $75df: $29
	db $eb                                           ; $75e0: $eb
	jp c, $2828                                      ; $75e1: $da $28 $28

jr_00d_75e4:
	db $e3                                           ; $75e4: $e3
	jp c, $2826                                      ; $75e5: $da $26 $28

	ldh a, [$dd]                                     ; $75e8: $f0 $dd
	ld [hl-], a                                      ; $75ea: $32
	inc hl                                           ; $75eb: $23
	db $eb                                           ; $75ec: $eb
	jp c, $2828                                      ; $75ed: $da $28 $28

	ldh a, [$dc]                                     ; $75f0: $f0 $dc
	inc [hl]                                         ; $75f2: $34
	ld [hl+], a                                      ; $75f3: $22
	db $e3                                           ; $75f4: $e3
	jp c, $2926                                      ; $75f5: $da $26 $29

	nop                                              ; $75f8: $00
	ld hl, sp+$38                                    ; $75f9: $f8 $38
	ld [hl+], a                                      ; $75fb: $22
	ld hl, sp-$08                                    ; $75fc: $f8 $f8
	ld [hl], $23                                     ; $75fe: $36 $23
	ld hl, sp-$08                                    ; $7600: $f8 $f8
	ld a, [hl-]                                      ; $7602: $3a
	ld [hl+], a                                      ; $7603: $22
	nop                                              ; $7604: $00
	ld hl, sp+$3c                                    ; $7605: $f8 $3c
	inc hl                                           ; $7607: $23
	pop af                                           ; $7608: $f1
	sub $3e                                          ; $7609: $d6 $3e
	dec hl                                           ; $760b: $2b
	add sp, -$2b                                     ; $760c: $e8 $d5
	ld b, b                                          ; $760e: $40
	ld a, [hl+]                                      ; $760f: $2a
	ldh a, [$d5]                                     ; $7610: $f0 $d5
	ld b, d                                          ; $7612: $42
	dec hl                                           ; $7613: $2b
	ldh [$d4], a                                     ; $7614: $e0 $d4
	ld c, b                                          ; $7616: $48
	ld a, [hl+]                                      ; $7617: $2a
	add sp, -$2c                                     ; $7618: $e8 $d4
	ld c, d                                          ; $761a: $4a
	ld a, [hl+]                                      ; $761b: $2a
	ldh a, [$d8]                                     ; $761c: $f0 $d8
	ld c, h                                          ; $761e: $4c
	dec hl                                           ; $761f: $2b
	ldh [$d4], a                                     ; $7620: $e0 $d4
	ld b, h                                          ; $7622: $44
	ld a, [hl+]                                      ; $7623: $2a
	add sp, -$2c                                     ; $7624: $e8 $d4
	ld b, [hl]                                       ; $7626: $46
	ld a, [hl+]                                      ; $7627: $2a
	ldh a, [$d8]                                     ; $7628: $f0 $d8
	ld c, h                                          ; $762a: $4c
	dec hl                                           ; $762b: $2b
	ld hl, sp-$2f                                    ; $762c: $f8 $d1
	inc h                                            ; $762e: $24
	jr z, @-$0e                                      ; $762f: $28 $f0

	ret                                              ; $7631: $c9


	nop                                              ; $7632: $00
	jr z, jr_00d_7645                                ; $7633: $28 $10

	pop af                                           ; $7635: $f1
	ld [hl+], a                                      ; $7636: $22
	jr z, jr_00d_7641                                ; $7637: $28 $08

	pop af                                           ; $7639: $f1
	jr nz, @+$2a                                     ; $763a: $20 $28

	ld [$1ee1], sp                                   ; $763c: $08 $e1 $1e
	jr z, jr_00d_7651                                ; $763f: $28 $10

jr_00d_7641:
	pop de                                           ; $7641: $d1
	inc e                                            ; $7642: $1c
	jr z, @+$0a                                      ; $7643: $28 $08

jr_00d_7645:
	pop de                                           ; $7645: $d1
	ld a, [de]                                       ; $7646: $1a
	jr z, jr_00d_7659                                ; $7647: $28 $10

	pop bc                                           ; $7649: $c1
	jr @+$2a                                         ; $764a: $18 $28

	ld [$16c1], sp                                   ; $764c: $08 $c1 $16
	jr z, jr_00d_7651                                ; $764f: $28 $00

jr_00d_7651:
	pop af                                           ; $7651: $f1
	inc d                                            ; $7652: $14
	jr z, @-$06                                      ; $7653: $28 $f8

jr_00d_7655:
	pop af                                           ; $7655: $f1
	ld [de], a                                       ; $7656: $12
	jr z, jr_00d_7659                                ; $7657: $28 $00

jr_00d_7659:
	pop hl                                           ; $7659: $e1
	db $10                                           ; $765a: $10
	jr z, jr_00d_7655                                ; $765b: $28 $f8

	pop hl                                           ; $765d: $e1
	ld c, $28                                        ; $765e: $0e $28
	nop                                              ; $7660: $00
	pop de                                           ; $7661: $d1
	inc c                                            ; $7662: $0c
	jr z, jr_00d_7665                                ; $7663: $28 $00

jr_00d_7665:
	pop bc                                           ; $7665: $c1
	ld [$f828], sp                                   ; $7666: $08 $28 $f8
	pop bc                                           ; $7669: $c1
	ld b, $28                                        ; $766a: $06 $28
	ldh a, [$f1]                                     ; $766c: $f0 $f1
	inc b                                            ; $766e: $04
	add hl, hl                                       ; $766f: $29
	inc b                                            ; $7670: $04

jr_00d_7671:
	ldh a, [c]                                       ; $7671: $f2
	ld a, [bc]                                       ; $7672: $0a
	jr nz, jr_00d_7671                               ; $7673: $20 $fc

	ldh a, [c]                                       ; $7675: $f2
	ld [$f420], sp                                   ; $7676: $08 $20 $f4

jr_00d_7679:
	ldh a, [c]                                       ; $7679: $f2
	ld b, $20                                        ; $767a: $06 $20
	inc b                                            ; $767c: $04

jr_00d_767d:
	ldh [c], a                                       ; $767d: $e2
	inc b                                            ; $767e: $04
	jr nz, jr_00d_767d                               ; $767f: $20 $fc

	ldh [c], a                                       ; $7681: $e2
	ld [bc], a                                       ; $7682: $02
	jr nz, jr_00d_7679                               ; $7683: $20 $f4

	ldh [c], a                                       ; $7685: $e2
	nop                                              ; $7686: $00
	ld hl, $f2f4                                     ; $7687: $21 $f4 $f2
	ld b, $20                                        ; $768a: $06 $20
	inc b                                            ; $768c: $04

jr_00d_768d:
	ldh a, [c]                                       ; $768d: $f2
	ld a, [bc]                                       ; $768e: $0a
	jr nz, jr_00d_768d                               ; $768f: $20 $fc

jr_00d_7691:
	ldh a, [c]                                       ; $7691: $f2
	ld [$0420], sp                                   ; $7692: $08 $20 $04

jr_00d_7695:
	ldh [c], a                                       ; $7695: $e2
	inc b                                            ; $7696: $04
	jr nz, jr_00d_7695                               ; $7697: $20 $fc

	ldh [c], a                                       ; $7699: $e2
	ld [bc], a                                       ; $769a: $02
	jr nz, jr_00d_7691                               ; $769b: $20 $f4

jr_00d_769d:
	ldh [c], a                                       ; $769d: $e2
	nop                                              ; $769e: $00
	ld hl, $f204                                     ; $769f: $21 $04 $f2
	ld d, $20                                        ; $76a2: $16 $20
	db $fc                                           ; $76a4: $fc
	ldh a, [c]                                       ; $76a5: $f2
	inc d                                            ; $76a6: $14
	jr nz, jr_00d_769d                               ; $76a7: $20 $f4

	ldh a, [c]                                       ; $76a9: $f2
	ld [de], a                                       ; $76aa: $12
	jr nz, jr_00d_76b1                               ; $76ab: $20 $04

jr_00d_76ad:
	ldh [c], a                                       ; $76ad: $e2
	db $10                                           ; $76ae: $10
	jr nz, jr_00d_76ad                               ; $76af: $20 $fc

jr_00d_76b1:
	ldh [c], a                                       ; $76b1: $e2
	ld c, $20                                        ; $76b2: $0e $20

jr_00d_76b4:
	db $f4                                           ; $76b4: $f4
	ldh [c], a                                       ; $76b5: $e2
	inc c                                            ; $76b6: $0c
	ld hl, $f800                                     ; $76b7: $21 $00 $f8
	ld [hl+], a                                      ; $76ba: $22
	add sp, -$08                                     ; $76bb: $e8 $f8
	ld hl, sp+$22                                    ; $76bd: $f8 $22
	add hl, hl                                       ; $76bf: $29
	nop                                              ; $76c0: $00
	ld hl, sp+$24                                    ; $76c1: $f8 $24
	add sp, -$08                                     ; $76c3: $e8 $f8
	ld hl, sp+$24                                    ; $76c5: $f8 $24
	add hl, hl                                       ; $76c7: $29
	nop                                              ; $76c8: $00
	ld [bc], a                                       ; $76c9: $02
	jr z, jr_00d_76b4                                ; $76ca: $28 $e8

	nop                                              ; $76cc: $00

jr_00d_76cd:
	ldh a, [c]                                       ; $76cd: $f2
	inc l                                            ; $76ce: $2c
	add sp, $08                                      ; $76cf: $e8 $08
	ld [bc], a                                       ; $76d1: $02
	ld h, $e8                                        ; $76d2: $26 $e8
	ld [$2af2], sp                                   ; $76d4: $08 $f2 $2a
	add sp, -$08                                     ; $76d7: $e8 $f8

jr_00d_76d9:
	db $fd                                           ; $76d9: $fd
	inc l                                            ; $76da: $2c
	jr z, jr_00d_76cd                                ; $76db: $28 $f0

	db $fd                                           ; $76dd: $fd
	ld a, [hl+]                                      ; $76de: $2a
	jr z, jr_00d_76d9                                ; $76df: $28 $f8

	db $ed                                           ; $76e1: $ed
	jr z, @+$2a                                      ; $76e2: $28 $28

	ldh a, [$ed]                                     ; $76e4: $f0 $ed
	ld h, $29                                        ; $76e6: $26 $29
	nop                                              ; $76e8: $00
	ldh a, [c]                                       ; $76e9: $f2
	inc [hl]                                         ; $76ea: $34
	add sp, $08                                      ; $76eb: $e8 $08

jr_00d_76ed:
	ldh a, [c]                                       ; $76ed: $f2
	ld [hl-], a                                      ; $76ee: $32
	add sp, $00                                      ; $76ef: $e8 $00
	ld [bc], a                                       ; $76f1: $02
	jr nc, @-$16                                     ; $76f2: $30 $e8

	ld [$2e02], sp                                   ; $76f4: $08 $02 $2e
	add sp, -$08                                     ; $76f7: $e8 $f8

jr_00d_76f9:
	db $fd                                           ; $76f9: $fd
	inc [hl]                                         ; $76fa: $34
	jr z, jr_00d_76ed                                ; $76fb: $28 $f0

	db $fd                                           ; $76fd: $fd
	ld [hl-], a                                      ; $76fe: $32
	jr z, jr_00d_76f9                                ; $76ff: $28 $f8

	db $ed                                           ; $7701: $ed
	jr nc, @+$2a                                     ; $7702: $30 $28

	ldh a, [$ed]                                     ; $7704: $f0 $ed
	ld l, $29                                        ; $7706: $2e $29
	nop                                              ; $7708: $00
	ldh a, [c]                                       ; $7709: $f2
	ld b, h                                          ; $770a: $44
	add sp, $08                                      ; $770b: $e8 $08

jr_00d_770d:
	ldh a, [c]                                       ; $770d: $f2
	ld b, d                                          ; $770e: $42
	add sp, $00                                      ; $770f: $e8 $00
	ld [bc], a                                       ; $7711: $02
	ld b, b                                          ; $7712: $40
	add sp, $08                                      ; $7713: $e8 $08

jr_00d_7715:
	ld [bc], a                                       ; $7715: $02
	ld a, $e8                                        ; $7716: $3e $e8
	ld hl, sp-$02                                    ; $7718: $f8 $fe
	ld b, h                                          ; $771a: $44
	jr z, jr_00d_770d                                ; $771b: $28 $f0

	cp $42                                           ; $771d: $fe $42
	jr z, @-$06                                      ; $771f: $28 $f8

	xor $40                                          ; $7721: $ee $40
	jr z, jr_00d_7715                                ; $7723: $28 $f0

	xor $3e                                          ; $7725: $ee $3e
	add hl, hl                                       ; $7727: $29
	nop                                              ; $7728: $00
	ldh a, [c]                                       ; $7729: $f2
	inc a                                            ; $772a: $3c
	add sp, $08                                      ; $772b: $e8 $08

jr_00d_772d:
	ldh a, [c]                                       ; $772d: $f2
	ld a, [hl-]                                      ; $772e: $3a
	add sp, $00                                      ; $772f: $e8 $00
	ld [bc], a                                       ; $7731: $02
	jr c, @-$16                                      ; $7732: $38 $e8

	ld [$3602], sp                                   ; $7734: $08 $02 $36
	add sp, -$08                                     ; $7737: $e8 $f8

jr_00d_7739:
	cp $3c                                           ; $7739: $fe $3c
	jr z, jr_00d_772d                                ; $773b: $28 $f0

	cp $3a                                           ; $773d: $fe $3a
	jr z, jr_00d_7739                                ; $773f: $28 $f8

	xor $38                                          ; $7741: $ee $38
	jr z, @-$0e                                      ; $7743: $28 $f0

	xor $36                                          ; $7745: $ee $36
	add hl, hl                                       ; $7747: $29
	nop                                              ; $7748: $00
	ld hl, sp+$18                                    ; $7749: $f8 $18
	ld l, d                                          ; $774b: $6a
	ld hl, sp-$08                                    ; $774c: $f8 $f8
	jr @+$2d                                         ; $774e: $18 $2b

	ld [$1a00], sp                                   ; $7750: $08 $00 $1a
	ld [rRAMG], a                                    ; $7753: $ea $00 $00
	inc e                                            ; $7756: $1c
	ld [$00f8], a                                    ; $7757: $ea $f8 $00
	inc e                                            ; $775a: $1c
	xor d                                            ; $775b: $aa
	ldh a, [rP1]                                     ; $775c: $f0 $00

jr_00d_775e:
	ld a, [de]                                       ; $775e: $1a
	xor d                                            ; $775f: $aa
	ld [$1af0], sp                                   ; $7760: $08 $f0 $1a
	ld l, d                                          ; $7763: $6a
	nop                                              ; $7764: $00
	ldh a, [rAUD3LEVEL]                              ; $7765: $f0 $1c
	ld l, d                                          ; $7767: $6a
	ld hl, sp-$10                                    ; $7768: $f8 $f0
	inc e                                            ; $776a: $1c
	ld a, [hl+]                                      ; $776b: $2a
	ldh a, [$f0]                                     ; $776c: $f0 $f0
	ld a, [de]                                       ; $776e: $1a
	dec hl                                           ; $776f: $2b
	nop                                              ; $7770: $00
	nop                                              ; $7771: $00
	jr nz, jr_00d_775e                               ; $7772: $20 $ea

	ld [$1e00], sp                                   ; $7774: $08 $00 $1e
	ld [$00f8], a                                    ; $7777: $ea $f8 $00
	jr nz, @-$54                                     ; $777a: $20 $aa

	ldh a, [rP1]                                     ; $777c: $f0 $00
	ld e, $aa                                        ; $777e: $1e $aa
	nop                                              ; $7780: $00
	ldh a, [rAUD4LEN]                                ; $7781: $f0 $20
	ld l, d                                          ; $7783: $6a
	ld [$1ef0], sp                                   ; $7784: $08 $f0 $1e
	ld l, d                                          ; $7787: $6a
	ld hl, sp-$10                                    ; $7788: $f8 $f0
	jr nz, @+$2c                                     ; $778a: $20 $2a

	ldh a, [$f0]                                     ; $778c: $f0 $f0
	ld e, $2b                                        ; $778e: $1e $2b
	ld [$60fb], sp                                   ; $7790: $08 $fb $60
	jr nz, jr_00d_7795                               ; $7793: $20 $00

jr_00d_7795:
	ei                                               ; $7795: $fb
	ld e, [hl]                                       ; $7796: $5e
	jr nz, @-$06                                     ; $7797: $20 $f8

	db $eb                                           ; $7799: $eb
	jr @+$22                                         ; $779a: $18 $20

	ld [$5ceb], sp                                   ; $779c: $08 $eb $5c
	jr nz, jr_00d_77a1                               ; $779f: $20 $00

jr_00d_77a1:
	db $eb                                           ; $77a1: $eb
	ld e, d                                          ; $77a2: $5a
	ld hl, $fbf8                                     ; $77a3: $21 $f8 $fb
	ld h, d                                          ; $77a6: $62
	jr nz, jr_00d_77b1                               ; $77a7: $20 $08

jr_00d_77a9:
	ei                                               ; $77a9: $fb
	ld h, [hl]                                       ; $77aa: $66
	jr nz, jr_00d_77ad                               ; $77ab: $20 $00

jr_00d_77ad:
	ei                                               ; $77ad: $fb
	ld h, h                                          ; $77ae: $64
	jr nz, jr_00d_77a9                               ; $77af: $20 $f8

jr_00d_77b1:
	db $eb                                           ; $77b1: $eb
	jr @+$22                                         ; $77b2: $18 $20

	ld [$5ceb], sp                                   ; $77b4: $08 $eb $5c
	jr nz, jr_00d_77b9                               ; $77b7: $20 $00

jr_00d_77b9:
	db $eb                                           ; $77b9: $eb
	ld e, d                                          ; $77ba: $5a
	ld hl, $f100                                     ; $77bb: $21 $00 $f1
	ld c, b                                          ; $77be: $48
	jr nz, jr_00d_77b9                               ; $77bf: $20 $f8

jr_00d_77c1:
	pop af                                           ; $77c1: $f1
	ld b, [hl]                                       ; $77c2: $46
	jr nz, jr_00d_77c5                               ; $77c3: $20 $00

jr_00d_77c5:
	pop hl                                           ; $77c5: $e1
	ld b, h                                          ; $77c6: $44
	jr nz, jr_00d_77c1                               ; $77c7: $20 $f8

jr_00d_77c9:
	pop hl                                           ; $77c9: $e1
	ld b, d                                          ; $77ca: $42
	ld hl, $f200                                     ; $77cb: $21 $00 $f2
	ld c, h                                          ; $77ce: $4c
	jr nz, jr_00d_77c9                               ; $77cf: $20 $f8

jr_00d_77d1:
	ldh a, [c]                                       ; $77d1: $f2
	ld c, d                                          ; $77d2: $4a
	jr nz, jr_00d_77d5                               ; $77d3: $20 $00

jr_00d_77d5:
	ldh [c], a                                       ; $77d5: $e2
	ld a, [de]                                       ; $77d6: $1a
	jr nz, jr_00d_77d1                               ; $77d7: $20 $f8

jr_00d_77d9:
	ldh [c], a                                       ; $77d9: $e2
	jr jr_00d_77fd                                   ; $77da: $18 $21

	nop                                              ; $77dc: $00
	di                                               ; $77dd: $f3
	ld d, b                                          ; $77de: $50
	jr nz, jr_00d_77d9                               ; $77df: $20 $f8

jr_00d_77e1:
	di                                               ; $77e1: $f3
	ld c, [hl]                                       ; $77e2: $4e
	jr nz, jr_00d_77e5                               ; $77e3: $20 $00

jr_00d_77e5:
	db $e3                                           ; $77e5: $e3
	ld a, [de]                                       ; $77e6: $1a
	jr nz, jr_00d_77e1                               ; $77e7: $20 $f8

jr_00d_77e9:
	db $e3                                           ; $77e9: $e3
	jr jr_00d_780d                                   ; $77ea: $18 $21

	nop                                              ; $77ec: $00
	ldh a, [c]                                       ; $77ed: $f2
	ld d, h                                          ; $77ee: $54
	jr nz, jr_00d_77e9                               ; $77ef: $20 $f8

jr_00d_77f1:
	ldh a, [c]                                       ; $77f1: $f2
	ld d, d                                          ; $77f2: $52
	jr nz, jr_00d_77f5                               ; $77f3: $20 $00

jr_00d_77f5:
	ldh [c], a                                       ; $77f5: $e2
	ld a, [de]                                       ; $77f6: $1a
	jr nz, jr_00d_77f1                               ; $77f7: $20 $f8

jr_00d_77f9:
	ldh [c], a                                       ; $77f9: $e2
	jr @+$23                                         ; $77fa: $18 $21

	nop                                              ; $77fc: $00

jr_00d_77fd:
	rst AddAOntoHL                                          ; $77fd: $ef
	ld e, b                                          ; $77fe: $58
	jr nz, jr_00d_77f9                               ; $77ff: $20 $f8

jr_00d_7801:
	rst AddAOntoHL                                          ; $7801: $ef
	ld d, [hl]                                       ; $7802: $56
	jr nz, jr_00d_7805                               ; $7803: $20 $00

jr_00d_7805:
	pop hl                                           ; $7805: $e1
	ld a, [de]                                       ; $7806: $1a
	jr nz, jr_00d_7801                               ; $7807: $20 $f8

	pop hl                                           ; $7809: $e1
	jr jr_00d_782d                                   ; $780a: $18 $21

	nop                                              ; $780c: $00

jr_00d_780d:
	di                                               ; $780d: $f3
	ld b, $20                                        ; $780e: $06 $20
	ld hl, sp-$0d                                    ; $7810: $f8 $f3
	inc b                                            ; $7812: $04
	jr nz, jr_00d_7815                               ; $7813: $20 $00

jr_00d_7815:
	db $e3                                           ; $7815: $e3
	ld [bc], a                                       ; $7816: $02
	jr nz, @-$06                                     ; $7817: $20 $f8

	db $e3                                           ; $7819: $e3
	nop                                              ; $781a: $00
	ld hl, $f300                                     ; $781b: $21 $00 $f3
	ld c, $20                                        ; $781e: $0e $20
	ld hl, sp-$0d                                    ; $7820: $f8 $f3
	inc c                                            ; $7822: $0c
	jr nz, jr_00d_7825                               ; $7823: $20 $00

jr_00d_7825:
	db $e3                                           ; $7825: $e3
	ld a, [bc]                                       ; $7826: $0a
	jr nz, @-$06                                     ; $7827: $20 $f8

	db $e3                                           ; $7829: $e3
	ld [$0121], sp                                   ; $782a: $08 $21 $01

jr_00d_782d:
	di                                               ; $782d: $f3
	ld d, $20                                        ; $782e: $16 $20
	ld sp, hl                                        ; $7830: $f9
	di                                               ; $7831: $f3

jr_00d_7832:
	inc d                                            ; $7832: $14
	jr nz, jr_00d_7836                               ; $7833: $20 $01

	db $e3                                           ; $7835: $e3

jr_00d_7836:
	ld [de], a                                       ; $7836: $12
	jr nz, jr_00d_7832                               ; $7837: $20 $f9

	db $e3                                           ; $7839: $e3
	db $10                                           ; $783a: $10
	ld hl, $f3f8                                     ; $783b: $21 $f8 $f3
	ld c, $60                                        ; $783e: $0e $60
	nop                                              ; $7840: $00
	di                                               ; $7841: $f3
	inc c                                            ; $7842: $0c
	ld h, b                                          ; $7843: $60
	nop                                              ; $7844: $00
	db $e3                                           ; $7845: $e3
	ld [$f860], sp                                   ; $7846: $08 $60 $f8

jr_00d_7849:
	db $e3                                           ; $7849: $e3
	ld a, [bc]                                       ; $784a: $0a
	ld h, c                                          ; $784b: $61
	nop                                              ; $784c: $00
	di                                               ; $784d: $f3
	ld l, d                                          ; $784e: $6a
	jr nz, jr_00d_7849                               ; $784f: $20 $f8

jr_00d_7851:
	di                                               ; $7851: $f3
	ld l, b                                          ; $7852: $68
	jr nz, jr_00d_7855                               ; $7853: $20 $00

jr_00d_7855:
	db $e3                                           ; $7855: $e3
	ld a, [de]                                       ; $7856: $1a
	jr nz, jr_00d_7851                               ; $7857: $20 $f8

jr_00d_7859:
	db $e3                                           ; $7859: $e3
	jr jr_00d_787d                                   ; $785a: $18 $21

	nop                                              ; $785c: $00
	ldh a, [c]                                       ; $785d: $f2
	ld b, b                                          ; $785e: $40
	jr nz, jr_00d_7859                               ; $785f: $20 $f8

	ldh a, [c]                                       ; $7861: $f2

jr_00d_7862:
	jr nz, jr_00d_7884                               ; $7862: $20 $20

	ld bc, $28e2                                     ; $7864: $01 $e2 $28
	jr nz, jr_00d_7862                               ; $7867: $20 $f9

jr_00d_7869:
	ldh [c], a                                       ; $7869: $e2
	ld h, $21                                        ; $786a: $26 $21
	nop                                              ; $786c: $00
	ldh a, [c]                                       ; $786d: $f2
	inc h                                            ; $786e: $24
	jr nz, jr_00d_7869                               ; $786f: $20 $f8

	ldh a, [c]                                       ; $7871: $f2
	ld [hl+], a                                      ; $7872: $22
	jr nz, jr_00d_7876                               ; $7873: $20 $01

	ldh [c], a                                       ; $7875: $e2

jr_00d_7876:
	jr z, @+$22                                      ; $7876: $28 $20

	ld sp, hl                                        ; $7878: $f9
	ldh [c], a                                       ; $7879: $e2
	ld h, $21                                        ; $787a: $26 $21
	ld [bc], a                                       ; $787c: $02

jr_00d_787d:
	ldh a, [c]                                       ; $787d: $f2
	jr nz, jr_00d_78e0                               ; $787e: $20 $60

	ld a, [$40f2]                                    ; $7880: $fa $f2 $40
	ld h, b                                          ; $7883: $60

jr_00d_7884:
	ld bc, $28e2                                     ; $7884: $01 $e2 $28
	jr nz, @-$05                                     ; $7887: $20 $f9

	ldh [c], a                                       ; $7889: $e2
	ld h, $21                                        ; $788a: $26 $21
	ld [bc], a                                       ; $788c: $02
	ldh a, [c]                                       ; $788d: $f2
	ld [hl+], a                                      ; $788e: $22
	ld h, b                                          ; $788f: $60
	ld a, [$24f2]                                    ; $7890: $fa $f2 $24
	ld h, b                                          ; $7893: $60
	ld bc, $28e2                                     ; $7894: $01 $e2 $28
	jr nz, @-$05                                     ; $7897: $20 $f9

	ldh [c], a                                       ; $7899: $e2
	ld h, $21                                        ; $789a: $26 $21
	ld [$76f2], sp                                   ; $789c: $08 $f2 $76
	ld [hl+], a                                      ; $789f: $22
	nop                                              ; $78a0: $00

jr_00d_78a1:
	ldh a, [c]                                       ; $78a1: $f2
	ld [hl], h                                       ; $78a2: $74
	ld [hl+], a                                      ; $78a3: $22
	add hl, bc                                       ; $78a4: $09
	ldh [c], a                                       ; $78a5: $e2
	ld l, [hl]                                       ; $78a6: $6e
	ld [hl+], a                                      ; $78a7: $22
	ld bc, $6ce2                                     ; $78a8: $01 $e2 $6c
	ld [hl+], a                                      ; $78ab: $22
	ld hl, sp-$0e                                    ; $78ac: $f8 $f2
	ld b, b                                          ; $78ae: $40
	jr nz, jr_00d_78a1                               ; $78af: $20 $f0

	ldh a, [c]                                       ; $78b1: $f2
	jr nz, @+$22                                     ; $78b2: $20 $20

	ld sp, hl                                        ; $78b4: $f9
	ldh [c], a                                       ; $78b5: $e2
	jr z, jr_00d_78d8                                ; $78b6: $28 $20

	pop af                                           ; $78b8: $f1
	ldh [c], a                                       ; $78b9: $e2
	ld h, $21                                        ; $78ba: $26 $21
	ld [$72f2], sp                                   ; $78bc: $08 $f2 $72
	ld [hl+], a                                      ; $78bf: $22
	nop                                              ; $78c0: $00

jr_00d_78c1:
	ldh a, [c]                                       ; $78c1: $f2
	ld [hl], b                                       ; $78c2: $70
	ld [hl+], a                                      ; $78c3: $22
	add hl, bc                                       ; $78c4: $09
	ldh [c], a                                       ; $78c5: $e2
	ld l, [hl]                                       ; $78c6: $6e
	ld [hl+], a                                      ; $78c7: $22
	ld bc, $6ce2                                     ; $78c8: $01 $e2 $6c
	ld [hl+], a                                      ; $78cb: $22
	ld hl, sp-$0e                                    ; $78cc: $f8 $f2

jr_00d_78ce:
	inc h                                            ; $78ce: $24
	jr nz, jr_00d_78c1                               ; $78cf: $20 $f0

	ldh a, [c]                                       ; $78d1: $f2
	ld [hl+], a                                      ; $78d2: $22
	jr nz, jr_00d_78ce                               ; $78d3: $20 $f9

	ldh [c], a                                       ; $78d5: $e2
	jr z, jr_00d_78f8                                ; $78d6: $28 $20

jr_00d_78d8:
	pop af                                           ; $78d8: $f1
	ldh [c], a                                       ; $78d9: $e2
	ld h, $21                                        ; $78da: $26 $21
	ld [bc], a                                       ; $78dc: $02
	ldh a, [c]                                       ; $78dd: $f2
	halt                                             ; $78de: $76
	ld h, d                                          ; $78df: $62

jr_00d_78e0:
	ld a, [bc]                                       ; $78e0: $0a
	ldh a, [c]                                       ; $78e1: $f2
	ld [hl], h                                       ; $78e2: $74
	ld h, d                                          ; $78e3: $62
	add hl, bc                                       ; $78e4: $09
	ldh [c], a                                       ; $78e5: $e2
	ld l, [hl]                                       ; $78e6: $6e
	ld [hl+], a                                      ; $78e7: $22
	ld bc, $6ce2                                     ; $78e8: $01 $e2 $6c
	ld [hl+], a                                      ; $78eb: $22
	ld a, [$20f2]                                    ; $78ec: $fa $f2 $20
	ld h, b                                          ; $78ef: $60
	ldh a, [c]                                       ; $78f0: $f2
	ldh a, [c]                                       ; $78f1: $f2
	ld b, b                                          ; $78f2: $40
	ld h, b                                          ; $78f3: $60
	ld sp, hl                                        ; $78f4: $f9
	ldh [c], a                                       ; $78f5: $e2
	jr z, jr_00d_7918                                ; $78f6: $28 $20

jr_00d_78f8:
	pop af                                           ; $78f8: $f1
	ldh [c], a                                       ; $78f9: $e2
	ld h, $21                                        ; $78fa: $26 $21
	add hl, bc                                       ; $78fc: $09
	ldh [c], a                                       ; $78fd: $e2
	ld l, [hl]                                       ; $78fe: $6e
	ld [hl+], a                                      ; $78ff: $22
	ld bc, $6ce2                                     ; $7900: $01 $e2 $6c
	ld [hl+], a                                      ; $7903: $22
	ld [bc], a                                       ; $7904: $02
	ldh a, [c]                                       ; $7905: $f2
	ld [hl], d                                       ; $7906: $72
	ld h, d                                          ; $7907: $62
	ld a, [bc]                                       ; $7908: $0a
	ldh a, [c]                                       ; $7909: $f2
	ld [hl], b                                       ; $790a: $70
	ld h, d                                          ; $790b: $62
	ld a, [$22f2]                                    ; $790c: $fa $f2 $22
	ld h, b                                          ; $790f: $60
	ldh a, [c]                                       ; $7910: $f2
	ldh a, [c]                                       ; $7911: $f2
	inc h                                            ; $7912: $24
	ld h, b                                          ; $7913: $60
	ld sp, hl                                        ; $7914: $f9
	ldh [c], a                                       ; $7915: $e2
	jr z, @+$22                                      ; $7916: $28 $20

jr_00d_7918:
	pop af                                           ; $7918: $f1
	ldh [c], a                                       ; $7919: $e2
	ld h, $21                                        ; $791a: $26 $21
	cp $f3                                           ; $791c: $fe $f3
	ld a, [hl-]                                      ; $791e: $3a
	ld [hl+], a                                      ; $791f: $22
	or $f3                                           ; $7920: $f6 $f3
	jr c, jr_00d_7946                                ; $7922: $38 $22

	ld sp, hl                                        ; $7924: $f9
	db $e3                                           ; $7925: $e3
	ld e, $22                                        ; $7926: $1e $22
	pop af                                           ; $7928: $f1
	db $e3                                           ; $7929: $e3

jr_00d_792a:
	inc e                                            ; $792a: $1c
	ld [hl+], a                                      ; $792b: $22
	ld bc, $3ef3                                     ; $792c: $01 $f3 $3e
	jr nz, jr_00d_792a                               ; $792f: $20 $f9

	di                                               ; $7931: $f3
	inc a                                            ; $7932: $3c
	jr nz, @+$05                                     ; $7933: $20 $03

	add sp, $1a                                      ; $7935: $e8 $1a
	jr nz, @-$03                                     ; $7937: $20 $fb

	add sp, $18                                      ; $7939: $e8 $18
	ld hl, $f3f4                                     ; $793b: $21 $f4 $f3
	ld l, $22                                        ; $793e: $2e $22
	cp $f3                                           ; $7940: $fe $f3
	ld a, [hl-]                                      ; $7942: $3a
	ld [hl+], a                                      ; $7943: $22
	db $fc                                           ; $7944: $fc
	db $e3                                           ; $7945: $e3

jr_00d_7946:
	ld [hl], $22                                     ; $7946: $36 $22
	db $f4                                           ; $7948: $f4
	db $e3                                           ; $7949: $e3

jr_00d_794a:
	inc [hl]                                         ; $794a: $34
	ld [hl+], a                                      ; $794b: $22
	ld bc, $1ae9                                     ; $794c: $01 $e9 $1a
	jr nz, jr_00d_794a                               ; $794f: $20 $f9

	jp hl                                            ; $7951: $e9


	jr jr_00d_7974                                   ; $7952: $18 $20

	rst $38                                          ; $7954: $ff
	di                                               ; $7955: $f3
	ld [hl-], a                                      ; $7956: $32
	jr nz, @-$07                                     ; $7957: $20 $f7

	di                                               ; $7959: $f3
	jr nc, jr_00d_797d                               ; $795a: $30 $21

	rst $38                                          ; $795c: $ff
	di                                               ; $795d: $f3
	inc l                                            ; $795e: $2c
	jr nz, @-$07                                     ; $795f: $20 $f7

	di                                               ; $7961: $f3
	ld a, [hl+]                                      ; $7962: $2a
	jr nz, @+$01                                     ; $7963: $20 $ff

	ld [$201a], a                                    ; $7965: $ea $1a $20
	rst FarCall                                          ; $7968: $f7
	ld [$2118], a                                    ; $7969: $ea $18 $21
	ei                                               ; $796c: $fb
	db $e3                                           ; $796d: $e3
	ld [hl], $62                                     ; $796e: $36 $62
	inc bc                                           ; $7970: $03
	db $e3                                           ; $7971: $e3
	inc [hl]                                         ; $7972: $34
	ld h, d                                          ; $7973: $62

jr_00d_7974:
	or $e9                                           ; $7974: $f6 $e9
	ld a, [de]                                       ; $7976: $1a
	ld h, b                                          ; $7977: $60
	cp $e9                                           ; $7978: $fe $e9
	jr @+$62                                         ; $797a: $18 $60

	inc bc                                           ; $797c: $03

jr_00d_797d:
	di                                               ; $797d: $f3
	ld l, $62                                        ; $797e: $2e $62
	ld sp, hl                                        ; $7980: $f9
	di                                               ; $7981: $f3
	ld a, [hl-]                                      ; $7982: $3a
	ld h, d                                          ; $7983: $62
	ld hl, sp-$0d                                    ; $7984: $f8 $f3
	ld [hl-], a                                      ; $7986: $32
	ld h, b                                          ; $7987: $60
	nop                                              ; $7988: $00
	di                                               ; $7989: $f3
	jr nc, @+$63                                     ; $798a: $30 $61

	cp $e3                                           ; $798c: $fe $e3
	ld e, $62                                        ; $798e: $1e $62
	ld b, $e3                                        ; $7990: $06 $e3
	inc e                                            ; $7992: $1c
	ld h, d                                          ; $7993: $62
	db $f4                                           ; $7994: $f4
	add sp, $1a                                      ; $7995: $e8 $1a
	ld h, b                                          ; $7997: $60
	db $fc                                           ; $7998: $fc
	add sp, $18                                      ; $7999: $e8 $18
	ld h, b                                          ; $799b: $60
	ld sp, hl                                        ; $799c: $f9
	di                                               ; $799d: $f3
	ld a, [hl-]                                      ; $799e: $3a
	ld h, d                                          ; $799f: $62
	ld bc, $38f3                                     ; $79a0: $01 $f3 $38
	ld h, d                                          ; $79a3: $62
	or $f3                                           ; $79a4: $f6 $f3
	ld a, $60                                        ; $79a6: $3e $60
	cp $f3                                           ; $79a8: $fe $f3
	inc a                                            ; $79aa: $3c
	ld h, c                                          ; $79ab: $61
	ld bc, $16f0                                     ; $79ac: $01 $f0 $16
	ld [hl+], a                                      ; $79af: $22
	ld sp, hl                                        ; $79b0: $f9
	ldh a, [rAUD1HIGH]                               ; $79b1: $f0 $14
	ld [hl+], a                                      ; $79b3: $22
	pop af                                           ; $79b4: $f1
	ldh a, [rAUD1ENV]                                ; $79b5: $f0 $12
	ld [hl+], a                                      ; $79b7: $22
	jp hl                                            ; $79b8: $e9


	ldh a, [rAUD1SWEEP]                              ; $79b9: $f0 $10
	ld [hl+], a                                      ; $79bb: $22
	ld bc, $34e0                                     ; $79bc: $01 $e0 $34
	ld [hl+], a                                      ; $79bf: $22
	ld sp, hl                                        ; $79c0: $f9

jr_00d_79c1:
	ldh [$32], a                                     ; $79c1: $e0 $32
	ld [hl+], a                                      ; $79c3: $22
	pop af                                           ; $79c4: $f1
	ldh [$30], a                                     ; $79c5: $e0 $30
	ld [hl+], a                                      ; $79c7: $22
	nop                                              ; $79c8: $00
	ret nz                                           ; $79c9: $c0

	ld b, $20                                        ; $79ca: $06 $20
	ld hl, sp-$40                                    ; $79cc: $f8 $c0
	inc b                                            ; $79ce: $04
	jr nz, jr_00d_79c1                               ; $79cf: $20 $f0

	ret nz                                           ; $79d1: $c0

	ld [bc], a                                       ; $79d2: $02
	jr nz, jr_00d_79d5                               ; $79d3: $20 $00

jr_00d_79d5:
	ret nc                                           ; $79d5: $d0

	ld a, $20                                        ; $79d6: $3e $20
	ld hl, sp-$30                                    ; $79d8: $f8 $d0
	inc a                                            ; $79da: $3c
	jr nz, @-$0e                                     ; $79db: $20 $f0

	ret nc                                           ; $79dd: $d0

	ld a, [hl-]                                      ; $79de: $3a
	ld hl, $f0ef                                     ; $79df: $21 $ef $f0
	ld d, d                                          ; $79e2: $52
	ld [hl+], a                                      ; $79e3: $22
	rst $38                                          ; $79e4: $ff
	ldh a, [rRP]                                     ; $79e5: $f0 $56
	ld [hl+], a                                      ; $79e7: $22
	rst FarCall                                          ; $79e8: $f7
	ldh a, [rHDMA4]                                  ; $79e9: $f0 $54
	ld [hl+], a                                      ; $79eb: $22
	cp $e0                                           ; $79ec: $fe $e0
	ld d, b                                          ; $79ee: $50
	ld [hl+], a                                      ; $79ef: $22
	xor $e0                                          ; $79f0: $ee $e0
	ld c, h                                          ; $79f2: $4c
	ld [hl+], a                                      ; $79f3: $22
	or $e0                                           ; $79f4: $f6 $e0
	ld c, [hl]                                       ; $79f6: $4e
	ld [hl+], a                                      ; $79f7: $22
	nop                                              ; $79f8: $00

jr_00d_79f9:
	ret nz                                           ; $79f9: $c0

	ld b, $20                                        ; $79fa: $06 $20
	nop                                              ; $79fc: $00

jr_00d_79fd:
	ret nc                                           ; $79fd: $d0

	ld a, $20                                        ; $79fe: $3e $20
	ld hl, sp-$40                                    ; $7a00: $f8 $c0
	inc b                                            ; $7a02: $04
	jr nz, jr_00d_79fd                               ; $7a03: $20 $f8

	ret nc                                           ; $7a05: $d0

	inc a                                            ; $7a06: $3c
	jr nz, jr_00d_79f9                               ; $7a07: $20 $f0

	ret nz                                           ; $7a09: $c0

	ld [bc], a                                       ; $7a0a: $02
	jr nz, jr_00d_79fd                               ; $7a0b: $20 $f0

	ret nc                                           ; $7a0d: $d0

	ld a, [hl-]                                      ; $7a0e: $3a
	ld hl, $f2e9                                     ; $7a0f: $21 $e9 $f2
	ld h, $20                                        ; $7a12: $26 $20
	ld bc, $4af2                                     ; $7a14: $01 $f2 $4a
	ld [hl+], a                                      ; $7a17: $22
	ld sp, hl                                        ; $7a18: $f9
	ldh a, [c]                                       ; $7a19: $f2
	ld c, b                                          ; $7a1a: $48
	ld [hl+], a                                      ; $7a1b: $22
	pop af                                           ; $7a1c: $f1
	ldh a, [c]                                       ; $7a1d: $f2
	ld b, [hl]                                       ; $7a1e: $46
	ld [hl+], a                                      ; $7a1f: $22
	ld bc, $1ed2                                     ; $7a20: $01 $d2 $1e
	ld [hl+], a                                      ; $7a23: $22
	jp hl                                            ; $7a24: $e9


	jp nc, $221c                                     ; $7a25: $d2 $1c $22

	ld bc, $2ee2                                     ; $7a28: $01 $e2 $2e
	ld [hl+], a                                      ; $7a2b: $22
	ld sp, hl                                        ; $7a2c: $f9
	ldh [c], a                                       ; $7a2d: $e2
	inc l                                            ; $7a2e: $2c
	ld [hl+], a                                      ; $7a2f: $22
	pop af                                           ; $7a30: $f1
	ldh [c], a                                       ; $7a31: $e2
	ld a, [hl+]                                      ; $7a32: $2a
	ld [hl+], a                                      ; $7a33: $22
	jp hl                                            ; $7a34: $e9


	ldh [c], a                                       ; $7a35: $e2
	jr z, jr_00d_7a5a                                ; $7a36: $28 $22

	jp hl                                            ; $7a38: $e9


	jp nc, $2008                                     ; $7a39: $d2 $08 $20

	ld bc, $0ed2                                     ; $7a3c: $01 $d2 $0e
	jr nz, @-$05                                     ; $7a3f: $20 $f9

jr_00d_7a41:
	jp nc, $200c                                     ; $7a41: $d2 $0c $20

	pop af                                           ; $7a44: $f1
	jp nc, $200a                                     ; $7a45: $d2 $0a $20

	nop                                              ; $7a48: $00
	jp nz, $2006                                     ; $7a49: $c2 $06 $20

	ld hl, sp-$3e                                    ; $7a4c: $f8 $c2
	inc b                                            ; $7a4e: $04
	jr nz, jr_00d_7a41                               ; $7a4f: $20 $f0

	jp nz, $2102                                     ; $7a51: $c2 $02 $21

	ld bc, $38d1                                     ; $7a54: $01 $d1 $38
	ld [hl+], a                                      ; $7a57: $22
	jp hl                                            ; $7a58: $e9


	pop de                                           ; $7a59: $d1

jr_00d_7a5a:
	nop                                              ; $7a5a: $00
	ld [hl+], a                                      ; $7a5b: $22
	ld bc, $20d1                                     ; $7a5c: $01 $d1 $20
	jr nz, jr_00d_7a5a                               ; $7a5f: $20 $f9

	pop de                                           ; $7a61: $d1

jr_00d_7a62:
	inc h                                            ; $7a62: $24
	jr nz, @-$0d                                     ; $7a63: $20 $f1

	pop de                                           ; $7a65: $d1
	ld [hl+], a                                      ; $7a66: $22
	jr nz, jr_00d_7a62                               ; $7a67: $20 $f9

	pop hl                                           ; $7a69: $e1
	ld b, d                                          ; $7a6a: $42
	ld [hl+], a                                      ; $7a6b: $22
	ld bc, $44e1                                     ; $7a6c: $01 $e1 $44
	ld [hl+], a                                      ; $7a6f: $22
	pop af                                           ; $7a70: $f1
	pop hl                                           ; $7a71: $e1
	ld b, b                                          ; $7a72: $40
	ld [hl+], a                                      ; $7a73: $22
	ld bc, $66f1                                     ; $7a74: $01 $f1 $66
	ld [hl+], a                                      ; $7a77: $22
	ld sp, hl                                        ; $7a78: $f9
	pop af                                           ; $7a79: $f1
	ld h, h                                          ; $7a7a: $64
	ld [hl+], a                                      ; $7a7b: $22
	pop af                                           ; $7a7c: $f1

jr_00d_7a7d:
	pop af                                           ; $7a7d: $f1
	ld h, d                                          ; $7a7e: $62
	ld [hl+], a                                      ; $7a7f: $22
	jp hl                                            ; $7a80: $e9


	pop af                                           ; $7a81: $f1
	ld h, b                                          ; $7a82: $60
	ld [hl+], a                                      ; $7a83: $22
	nop                                              ; $7a84: $00
	pop bc                                           ; $7a85: $c1
	ld b, $20                                        ; $7a86: $06 $20
	ld hl, sp-$3f                                    ; $7a88: $f8 $c1
	inc b                                            ; $7a8a: $04
	jr nz, jr_00d_7a7d                               ; $7a8b: $20 $f0

	pop bc                                           ; $7a8d: $c1
	ld [bc], a                                       ; $7a8e: $02
	ld hl, $e0f8                                     ; $7a8f: $21 $f8 $e0
	ld e, [hl]                                       ; $7a92: $5e
	ld [hl+], a                                      ; $7a93: $22
	ld [$5ce0], sp                                   ; $7a94: $08 $e0 $5c
	ld [hl+], a                                      ; $7a97: $22
	ld [$42f0], sp                                   ; $7a98: $08 $f0 $42
	jr nz, jr_00d_7a9d                               ; $7a9b: $20 $00

jr_00d_7a9d:
	ldh a, [rLCDC]                                   ; $7a9d: $f0 $40
	jr nz, @-$06                                     ; $7a9f: $20 $f8

	ldh a, [$3e]                                     ; $7aa1: $f0 $3e
	jr nz, @-$0e                                     ; $7aa3: $20 $f0

	ldh a, [$3c]                                     ; $7aa5: $f0 $3c
	jr nz, @+$0a                                     ; $7aa7: $20 $08

	ldh [$2c], a                                     ; $7aa9: $e0 $2c
	jr nz, jr_00d_7aad                               ; $7aab: $20 $00

jr_00d_7aad:
	ldh [$2a], a                                     ; $7aad: $e0 $2a
	ld [hl+], a                                      ; $7aaf: $22
	ld hl, sp-$20                                    ; $7ab0: $f8 $e0
	jr z, jr_00d_7ad4                                ; $7ab2: $28 $20

	ld [$04c0], sp                                   ; $7ab4: $08 $c0 $04
	jr nz, jr_00d_7ab9                               ; $7ab7: $20 $00

jr_00d_7ab9:
	ret nz                                           ; $7ab9: $c0

	ld [bc], a                                       ; $7aba: $02
	jr nz, @-$06                                     ; $7abb: $20 $f8

	ret nz                                           ; $7abd: $c0

	nop                                              ; $7abe: $00
	jr nz, jr_00d_7ac9                               ; $7abf: $20 $08

jr_00d_7ac1:
	ret nc                                           ; $7ac1: $d0

	ld d, $20                                        ; $7ac2: $16 $20
	nop                                              ; $7ac4: $00
	ret nc                                           ; $7ac5: $d0

	inc d                                            ; $7ac6: $14
	jr nz, jr_00d_7ac1                               ; $7ac7: $20 $f8

jr_00d_7ac9:
	ret nc                                           ; $7ac9: $d0

	ld [de], a                                       ; $7aca: $12
	ld hl, $e0f5                                     ; $7acb: $21 $f5 $e0
	ld e, d                                          ; $7ace: $5a
	ld [hl+], a                                      ; $7acf: $22
	dec b                                            ; $7ad0: $05
	ldh [$58], a                                     ; $7ad1: $e0 $58
	ld [hl+], a                                      ; $7ad3: $22

jr_00d_7ad4:
	dec b                                            ; $7ad4: $05
	ldh a, [rHDMA4]                                  ; $7ad5: $f0 $54
	jr nz, @-$01                                     ; $7ad7: $20 $fd

	ldh a, [rHDMA2]                                  ; $7ad9: $f0 $52
	jr nz, @-$09                                     ; $7adb: $20 $f5

	ldh a, [$3c]                                     ; $7add: $f0 $3c
	jr nz, @+$0f                                     ; $7adf: $20 $0d

	ldh [$50], a                                     ; $7ae1: $e0 $50
	jr nz, @+$07                                     ; $7ae3: $20 $05

	ldh [$4e], a                                     ; $7ae5: $e0 $4e
	jr nz, @-$01                                     ; $7ae7: $20 $fd

	ldh [$4c], a                                     ; $7ae9: $e0 $4c
	ld [hl+], a                                      ; $7aeb: $22
	push af                                          ; $7aec: $f5
	ldh [rWY], a                                     ; $7aed: $e0 $4a
	jr nz, jr_00d_7af9                               ; $7aef: $20 $08

jr_00d_7af1:
	ret nc                                           ; $7af1: $d0

	ld d, $20                                        ; $7af2: $16 $20
	nop                                              ; $7af4: $00
	ret nc                                           ; $7af5: $d0

	inc d                                            ; $7af6: $14
	jr nz, jr_00d_7af1                               ; $7af7: $20 $f8

jr_00d_7af9:
	ret nc                                           ; $7af9: $d0

	ld [de], a                                       ; $7afa: $12
	jr nz, jr_00d_7b05                               ; $7afb: $20 $08

jr_00d_7afd:
	ret nz                                           ; $7afd: $c0

	inc b                                            ; $7afe: $04
	jr nz, jr_00d_7b01                               ; $7aff: $20 $00

jr_00d_7b01:
	ret nz                                           ; $7b01: $c0

	ld [bc], a                                       ; $7b02: $02
	jr nz, jr_00d_7afd                               ; $7b03: $20 $f8

jr_00d_7b05:
	ret nz                                           ; $7b05: $c0

	nop                                              ; $7b06: $00
	ld hl, $e0f8                                     ; $7b07: $21 $f8 $e0
	ld a, [hl-]                                      ; $7b0a: $3a
	ld [hl+], a                                      ; $7b0b: $22
	ld [$48f0], sp                                   ; $7b0c: $08 $f0 $48
	jr nz, jr_00d_7b11                               ; $7b0f: $20 $00

jr_00d_7b11:
	ldh a, [rDMA]                                    ; $7b11: $f0 $46
	jr nz, @-$06                                     ; $7b13: $20 $f8

	ldh a, [rLY]                                     ; $7b15: $f0 $44
	jr nz, @+$0a                                     ; $7b17: $20 $08

	ldh [$32], a                                     ; $7b19: $e0 $32
	jr nz, jr_00d_7b1d                               ; $7b1b: $20 $00

jr_00d_7b1d:
	ldh [$30], a                                     ; $7b1d: $e0 $30
	ld [hl+], a                                      ; $7b1f: $22
	ld hl, sp-$20                                    ; $7b20: $f8 $e0
	ld l, $20                                        ; $7b22: $2e $20
	ld [$26d0], sp                                   ; $7b24: $08 $d0 $26
	jr nz, jr_00d_7b29                               ; $7b27: $20 $00

jr_00d_7b29:
	ret nc                                           ; $7b29: $d0

	inc h                                            ; $7b2a: $24
	jr nz, @-$06                                     ; $7b2b: $20 $f8

	ret nc                                           ; $7b2d: $d0

	ld [hl+], a                                      ; $7b2e: $22
	jr nz, @-$0e                                     ; $7b2f: $20 $f0

	ret nc                                           ; $7b31: $d0

	jr nz, jr_00d_7b54                               ; $7b32: $20 $20

	ld [$0ac0], sp                                   ; $7b34: $08 $c0 $0a
	jr nz, jr_00d_7b39                               ; $7b37: $20 $00

jr_00d_7b39:
	ret nz                                           ; $7b39: $c0

	ld [$f820], sp                                   ; $7b3a: $08 $20 $f8
	ret nz                                           ; $7b3d: $c0

	ld b, $21                                        ; $7b3e: $06 $21
	ld hl, sp-$20                                    ; $7b40: $f8 $e0
	ld a, [hl-]                                      ; $7b42: $3a
	ld [hl+], a                                      ; $7b43: $22
	ld [$38e0], sp                                   ; $7b44: $08 $e0 $38
	jr nz, jr_00d_7b49                               ; $7b47: $20 $00

jr_00d_7b49:
	ldh [$36], a                                     ; $7b49: $e0 $36
	ld [hl+], a                                      ; $7b4b: $22
	ld hl, sp-$20                                    ; $7b4c: $f8 $e0
	inc [hl]                                         ; $7b4e: $34
	jr nz, jr_00d_7b59                               ; $7b4f: $20 $08

jr_00d_7b51:
	ret nc                                           ; $7b51: $d0

	ld e, $20                                        ; $7b52: $1e $20

jr_00d_7b54:
	nop                                              ; $7b54: $00
	ret nc                                           ; $7b55: $d0

	inc e                                            ; $7b56: $1c
	jr nz, jr_00d_7b51                               ; $7b57: $20 $f8

jr_00d_7b59:
	ret nc                                           ; $7b59: $d0

	ld a, [de]                                       ; $7b5a: $1a
	jr nz, @-$0e                                     ; $7b5b: $20 $f0

	ret nc                                           ; $7b5d: $d0

	jr jr_00d_7b80                                   ; $7b5e: $18 $20

	ld [$10c0], sp                                   ; $7b60: $08 $c0 $10
	jr nz, jr_00d_7b65                               ; $7b63: $20 $00

jr_00d_7b65:
	ret nz                                           ; $7b65: $c0

	ld c, $20                                        ; $7b66: $0e $20
	ld hl, sp-$40                                    ; $7b68: $f8 $c0
	inc c                                            ; $7b6a: $0c
	jr nz, jr_00d_7b75                               ; $7b6b: $20 $08

jr_00d_7b6d:
	ldh a, [rOBP0]                                   ; $7b6d: $f0 $48
	jr nz, jr_00d_7b71                               ; $7b6f: $20 $00

jr_00d_7b71:
	ldh a, [rDMA]                                    ; $7b71: $f0 $46
	jr nz, jr_00d_7b6d                               ; $7b73: $20 $f8

jr_00d_7b75:
	ldh a, [rLY]                                     ; $7b75: $f0 $44
	ld hl, $f000                                     ; $7b77: $21 $00 $f0
	jr jr_00d_7b9e                                   ; $7b7a: $18 $22

	ld hl, sp-$10                                    ; $7b7c: $f8 $f0
	ld d, $22                                        ; $7b7e: $16 $22

jr_00d_7b80:
	ldh a, [$f0]                                     ; $7b80: $f0 $f0
	inc d                                            ; $7b82: $14
	ld [hl+], a                                      ; $7b83: $22
	nop                                              ; $7b84: $00

jr_00d_7b85:
	ldh [rAUD1ENV], a                                ; $7b85: $e0 $12
	ld [hl+], a                                      ; $7b87: $22
	nop                                              ; $7b88: $00
	ldh [rAUD1SWEEP], a                              ; $7b89: $e0 $10
	jr nz, jr_00d_7b85                               ; $7b8b: $20 $f8

	ldh [$0e], a                                     ; $7b8d: $e0 $0e
	ld [hl+], a                                      ; $7b8f: $22
	ldh a, [$e0]                                     ; $7b90: $f0 $e0
	inc c                                            ; $7b92: $0c
	ld [hl+], a                                      ; $7b93: $22
	nop                                              ; $7b94: $00
	ret nc                                           ; $7b95: $d0

	ld a, [bc]                                       ; $7b96: $0a
	jr nz, @-$06                                     ; $7b97: $20 $f8

	ret nc                                           ; $7b99: $d0

	ld [$f020], sp                                   ; $7b9a: $08 $20 $f0
	ret nc                                           ; $7b9d: $d0

jr_00d_7b9e:
	ld b, $20                                        ; $7b9e: $06 $20
	ldh a, [$c0]                                     ; $7ba0: $f0 $c0
	nop                                              ; $7ba2: $00
	jr nz, jr_00d_7ba5                               ; $7ba3: $20 $00

jr_00d_7ba5:
	ret nz                                           ; $7ba5: $c0

	inc b                                            ; $7ba6: $04
	jr nz, @-$06                                     ; $7ba7: $20 $f8

jr_00d_7ba9:
	ret nz                                           ; $7ba9: $c0

	ld [bc], a                                       ; $7baa: $02
	ld hl, $f004                                     ; $7bab: $21 $04 $f0
	ld h, $20                                        ; $7bae: $26 $20
	db $fc                                           ; $7bb0: $fc
	ldh a, [rAUDVOL]                                 ; $7bb1: $f0 $24
	jr nz, jr_00d_7ba9                               ; $7bb3: $20 $f4

	ldh a, [rAUD4POLY]                               ; $7bb5: $f0 $22
	jr nz, jr_00d_7ba5                               ; $7bb7: $20 $ec

	ldh a, [rAUD4LEN]                                ; $7bb9: $f0 $20
	jr nz, jr_00d_7bc1                               ; $7bbb: $20 $04

jr_00d_7bbd:
	ldh [rAUD3HIGH], a                               ; $7bbd: $e0 $1e
	jr nz, jr_00d_7bbd                               ; $7bbf: $20 $fc

jr_00d_7bc1:
	ldh [rAUD3LEVEL], a                              ; $7bc1: $e0 $1c
	ld [hl+], a                                      ; $7bc3: $22
	db $f4                                           ; $7bc4: $f4
	ldh [rAUD3ENA], a                                ; $7bc5: $e0 $1a
	ld [hl+], a                                      ; $7bc7: $22
	nop                                              ; $7bc8: $00

jr_00d_7bc9:
	ret nc                                           ; $7bc9: $d0

	ld a, [bc]                                       ; $7bca: $0a
	jr nz, jr_00d_7bcd                               ; $7bcb: $20 $00

jr_00d_7bcd:
	ret nz                                           ; $7bcd: $c0

	inc b                                            ; $7bce: $04
	jr nz, jr_00d_7bc9                               ; $7bcf: $20 $f8

	ret nc                                           ; $7bd1: $d0

	ld [$f020], sp                                   ; $7bd2: $08 $20 $f0
	ret nc                                           ; $7bd5: $d0

	ld b, $20                                        ; $7bd6: $06 $20
	ld hl, sp-$40                                    ; $7bd8: $f8 $c0
	ld [bc], a                                       ; $7bda: $02
	jr nz, jr_00d_7bcd                               ; $7bdb: $20 $f0

	ret nz                                           ; $7bdd: $c0

	nop                                              ; $7bde: $00
	ld hl, $f000                                     ; $7bdf: $21 $00 $f0
	jr jr_00d_7c06                                   ; $7be2: $18 $22

	ld hl, sp-$10                                    ; $7be4: $f8 $f0
	ld d, $22                                        ; $7be6: $16 $22
	ldh a, [$f0]                                     ; $7be8: $f0 $f0
	inc d                                            ; $7bea: $14
	ld [hl+], a                                      ; $7beb: $22
	nop                                              ; $7bec: $00

jr_00d_7bed:
	ldh [$34], a                                     ; $7bed: $e0 $34
	ld [hl+], a                                      ; $7bef: $22
	nop                                              ; $7bf0: $00
	ldh [$32], a                                     ; $7bf1: $e0 $32
	jr nz, jr_00d_7bed                               ; $7bf3: $20 $f8

jr_00d_7bf5:
	ldh [$30], a                                     ; $7bf5: $e0 $30
	ld [hl+], a                                      ; $7bf7: $22
	ldh a, [$e0]                                     ; $7bf8: $f0 $e0
	ld l, $22                                        ; $7bfa: $2e $22
	nop                                              ; $7bfc: $00
	ret nz                                           ; $7bfd: $c0

	inc b                                            ; $7bfe: $04
	jr nz, @-$06                                     ; $7bff: $20 $f8

jr_00d_7c01:
	ret nz                                           ; $7c01: $c0

	ld [bc], a                                       ; $7c02: $02
	jr nz, jr_00d_7bf5                               ; $7c03: $20 $f0

jr_00d_7c05:
	ret nz                                           ; $7c05: $c0

jr_00d_7c06:
	nop                                              ; $7c06: $00
	jr nz, jr_00d_7c09                               ; $7c07: $20 $00

jr_00d_7c09:
	ret nc                                           ; $7c09: $d0

	inc l                                            ; $7c0a: $2c
	jr nz, jr_00d_7c05                               ; $7c0b: $20 $f8

	ret nc                                           ; $7c0d: $d0

	ld a, [hl+]                                      ; $7c0e: $2a
	jr nz, jr_00d_7c01                               ; $7c0f: $20 $f0

	ret nc                                           ; $7c11: $d0

	jr z, jr_00d_7c35                                ; $7c12: $28 $21

	ld [$3cd8], sp                                   ; $7c14: $08 $d8 $3c
	ld [hl+], a                                      ; $7c17: $22
	nop                                              ; $7c18: $00

jr_00d_7c19:
	ldh [rLY], a                                     ; $7c19: $e0 $44
	ld [hl+], a                                      ; $7c1b: $22
	nop                                              ; $7c1c: $00
	ldh [rSCY], a                                    ; $7c1d: $e0 $42
	jr nz, jr_00d_7c19                               ; $7c1f: $20 $f8

	ldh [rLCDC], a                                   ; $7c21: $e0 $40
	ld [hl+], a                                      ; $7c23: $22
	ldh a, [$e0]                                     ; $7c24: $f0 $e0
	ld a, $22                                        ; $7c26: $3e $22
	nop                                              ; $7c28: $00
	ret nc                                           ; $7c29: $d0

	ld a, [hl-]                                      ; $7c2a: $3a
	jr nz, @-$06                                     ; $7c2b: $20 $f8

	ret nc                                           ; $7c2d: $d0

	jr c, jr_00d_7c50                                ; $7c2e: $38 $20

	ldh a, [$d0]                                     ; $7c30: $f0 $d0
	ld [hl], $20                                     ; $7c32: $36 $20
	nop                                              ; $7c34: $00

jr_00d_7c35:
	ldh a, [rAUD2LOW]                                ; $7c35: $f0 $18
	ld [hl+], a                                      ; $7c37: $22
	ld hl, sp-$10                                    ; $7c38: $f8 $f0
	ld d, $22                                        ; $7c3a: $16 $22
	ldh a, [$f0]                                     ; $7c3c: $f0 $f0
	inc d                                            ; $7c3e: $14
	ld [hl+], a                                      ; $7c3f: $22
	nop                                              ; $7c40: $00
	ret nz                                           ; $7c41: $c0

	inc b                                            ; $7c42: $04
	jr nz, @-$06                                     ; $7c43: $20 $f8

	ret nz                                           ; $7c45: $c0

	ld [bc], a                                       ; $7c46: $02
	jr nz, @-$0e                                     ; $7c47: $20 $f0

	ret nz                                           ; $7c49: $c0

	nop                                              ; $7c4a: $00
	ld hl, $e000                                     ; $7c4b: $21 $00 $e0
	ld d, [hl]                                       ; $7c4e: $56
	ld [hl+], a                                      ; $7c4f: $22

jr_00d_7c50:
	ld [$54e0], sp                                   ; $7c50: $08 $e0 $54
	jr nz, jr_00d_7c55                               ; $7c53: $20 $00

jr_00d_7c55:
	ldh [rHDMA2], a                                  ; $7c55: $e0 $52
	jr nz, @-$06                                     ; $7c57: $20 $f8

	ldh [$50], a                                     ; $7c59: $e0 $50
	ld [hl+], a                                      ; $7c5b: $22
	ldh a, [$e0]                                     ; $7c5c: $f0 $e0
	ld c, [hl]                                       ; $7c5e: $4e
	ld [hl+], a                                      ; $7c5f: $22
	ld [$4cd0], sp                                   ; $7c60: $08 $d0 $4c
	jr nz, jr_00d_7c65                               ; $7c63: $20 $00

jr_00d_7c65:
	ret nc                                           ; $7c65: $d0

	ld c, d                                          ; $7c66: $4a
	jr nz, @-$06                                     ; $7c67: $20 $f8

	ret nc                                           ; $7c69: $d0

	ld c, b                                          ; $7c6a: $48
	jr nz, @-$0e                                     ; $7c6b: $20 $f0

	ret nc                                           ; $7c6d: $d0

	ld b, [hl]                                       ; $7c6e: $46
	jr nz, jr_00d_7c71                               ; $7c6f: $20 $00

jr_00d_7c71:
	ldh a, [rAUD2LOW]                                ; $7c71: $f0 $18
	ld [hl+], a                                      ; $7c73: $22
	ld hl, sp-$10                                    ; $7c74: $f8 $f0
	ld d, $22                                        ; $7c76: $16 $22
	ldh a, [$f0]                                     ; $7c78: $f0 $f0
	inc d                                            ; $7c7a: $14
	ld [hl+], a                                      ; $7c7b: $22
	nop                                              ; $7c7c: $00
	ret nz                                           ; $7c7d: $c0

	inc b                                            ; $7c7e: $04
	jr nz, @-$06                                     ; $7c7f: $20 $f8

	ret nz                                           ; $7c81: $c0

	ld [bc], a                                       ; $7c82: $02
	jr nz, @-$0e                                     ; $7c83: $20 $f0

	ret nz                                           ; $7c85: $c0

	nop                                              ; $7c86: $00
	ld hl, $c203                                     ; $7c87: $21 $03 $c2
	ld b, $20                                        ; $7c8a: $06 $20

jr_00d_7c8c:
	ld [bc], a                                       ; $7c8c: $02
	ret nc                                           ; $7c8d: $d0

	ld a, [de]                                       ; $7c8e: $1a
	jr nz, jr_00d_7c8c                               ; $7c8f: $20 $fb

jr_00d_7c91:
	ret nc                                           ; $7c91: $d0

	jr @+$22                                         ; $7c92: $18 $20

	ei                                               ; $7c94: $fb
	jp nz, $2004                                     ; $7c95: $c2 $04 $20

	di                                               ; $7c98: $f3
	ret nc                                           ; $7c99: $d0

	ld d, $20                                        ; $7c9a: $16 $20
	di                                               ; $7c9c: $f3
	jp nz, $2002                                     ; $7c9d: $c2 $02 $20

jr_00d_7ca0:
	db $ec                                           ; $7ca0: $ec
	pop de                                           ; $7ca1: $d1
	inc d                                            ; $7ca2: $14
	jr nz, jr_00d_7c91                               ; $7ca3: $20 $ec

	pop bc                                           ; $7ca5: $c1
	nop                                              ; $7ca6: $00
	jr nz, @+$05                                     ; $7ca7: $20 $03

	ldh a, [rOBP0]                                   ; $7ca9: $f0 $48
	jr nz, @-$03                                     ; $7cab: $20 $fb

	ldh a, [rDMA]                                    ; $7cad: $f0 $46
	jr nz, @-$0b                                     ; $7caf: $20 $f3

	ldh a, [rLY]                                     ; $7cb1: $f0 $44
	jr nz, jr_00d_7ca0                               ; $7cb3: $20 $eb

	ldh a, [rSCY]                                    ; $7cb5: $f0 $42
	ld [hl+], a                                      ; $7cb7: $22
	inc bc                                           ; $7cb8: $03
	ldh [$36], a                                     ; $7cb9: $e0 $36
	ld [hl+], a                                      ; $7cbb: $22
	ei                                               ; $7cbc: $fb
	ldh [$34], a                                     ; $7cbd: $e0 $34
	ld [hl+], a                                      ; $7cbf: $22
	di                                               ; $7cc0: $f3
	ldh [$32], a                                     ; $7cc1: $e0 $32
	inc hl                                           ; $7cc3: $23
	inc bc                                           ; $7cc4: $03
	jp nz, $2006                                     ; $7cc5: $c2 $06 $20

jr_00d_7cc8:
	ld [bc], a                                       ; $7cc8: $02
	ret nc                                           ; $7cc9: $d0

	ld a, [de]                                       ; $7cca: $1a
	jr nz, jr_00d_7cc8                               ; $7ccb: $20 $fb

jr_00d_7ccd:
	ret nc                                           ; $7ccd: $d0

	jr jr_00d_7cf0                                   ; $7cce: $18 $20

	ei                                               ; $7cd0: $fb
	jp nz, $2004                                     ; $7cd1: $c2 $04 $20

	di                                               ; $7cd4: $f3
	ret nc                                           ; $7cd5: $d0

	ld d, $20                                        ; $7cd6: $16 $20
	di                                               ; $7cd8: $f3
	jp nz, $2002                                     ; $7cd9: $c2 $02 $20

	db $ec                                           ; $7cdc: $ec
	pop de                                           ; $7cdd: $d1

jr_00d_7cde:
	inc d                                            ; $7cde: $14
	jr nz, jr_00d_7ccd                               ; $7cdf: $20 $ec

	pop bc                                           ; $7ce1: $c1

jr_00d_7ce2:
	nop                                              ; $7ce2: $00
	jr nz, @+$03                                     ; $7ce3: $20 $01

	ldh a, [$4c]                                     ; $7ce5: $f0 $4c
	jr nz, jr_00d_7ce2                               ; $7ce7: $20 $f9

	ldh a, [rWY]                                     ; $7ce9: $f0 $4a
	jr nz, jr_00d_7cde                               ; $7ceb: $20 $f1

	ldh a, [rSCY]                                    ; $7ced: $f0 $42
	ld [hl+], a                                      ; $7cef: $22

jr_00d_7cf0:
	nop                                              ; $7cf0: $00
	ldh [$3c], a                                     ; $7cf1: $e0 $3c
	ld [hl+], a                                      ; $7cf3: $22
	ld hl, sp-$20                                    ; $7cf4: $f8 $e0
	ld a, [hl-]                                      ; $7cf6: $3a
	ld [hl+], a                                      ; $7cf7: $22
	ldh a, [$e0]                                     ; $7cf8: $f0 $e0
	jr c, jr_00d_7d1f                                ; $7cfa: $38 $23

	ld [$0cc1], sp                                   ; $7cfc: $08 $c1 $0c
	jr nz, jr_00d_7d01                               ; $7cff: $20 $00

jr_00d_7d01:
	pop bc                                           ; $7d01: $c1
	ld a, [bc]                                       ; $7d02: $0a
	jr nz, @-$06                                     ; $7d03: $20 $f8

	pop bc                                           ; $7d05: $c1
	ld [$0820], sp                                   ; $7d06: $08 $20 $08
	pop de                                           ; $7d09: $d1
	ld [hl+], a                                      ; $7d0a: $22
	jr nz, jr_00d_7d0d                               ; $7d0b: $20 $00

jr_00d_7d0d:
	pop de                                           ; $7d0d: $d1
	jr nz, jr_00d_7d30                               ; $7d0e: $20 $20

	ld hl, sp-$2f                                    ; $7d10: $f8 $d1
	ld e, $20                                        ; $7d12: $1e $20
	ldh a, [$d1]                                     ; $7d14: $f0 $d1
	inc e                                            ; $7d16: $1c
	jr nz, jr_00d_7d21                               ; $7d17: $20 $08

jr_00d_7d19:
	pop af                                           ; $7d19: $f1
	ld d, h                                          ; $7d1a: $54
	ld [hl+], a                                      ; $7d1b: $22
	nop                                              ; $7d1c: $00
	pop af                                           ; $7d1d: $f1
	ld d, d                                          ; $7d1e: $52

jr_00d_7d1f:
	jr nz, jr_00d_7d19                               ; $7d1f: $20 $f8

jr_00d_7d21:
	pop af                                           ; $7d21: $f1
	ld d, b                                          ; $7d22: $50
	jr nz, @-$0e                                     ; $7d23: $20 $f0

	pop af                                           ; $7d25: $f1
	ld c, [hl]                                       ; $7d26: $4e
	jr nz, jr_00d_7d29                               ; $7d27: $20 $00

jr_00d_7d29:
	pop hl                                           ; $7d29: $e1
	ld b, b                                          ; $7d2a: $40
	ld [hl+], a                                      ; $7d2b: $22
	ld hl, sp-$1f                                    ; $7d2c: $f8 $e1
	ld a, $23                                        ; $7d2e: $3e $23

jr_00d_7d30:
	ld [$58f1], sp                                   ; $7d30: $08 $f1 $58
	jr nz, jr_00d_7d35                               ; $7d33: $20 $00

jr_00d_7d35:
	pop af                                           ; $7d35: $f1
	ld d, [hl]                                       ; $7d36: $56
	ld [hl+], a                                      ; $7d37: $22
	ld [BCHLequHLdivModBC], sp                                   ; $7d38: $08 $c1 $12
	jr nz, jr_00d_7d3d                               ; $7d3b: $20 $00

jr_00d_7d3d:
	pop bc                                           ; $7d3d: $c1
	db $10                                           ; $7d3e: $10
	jr nz, @-$06                                     ; $7d3f: $20 $f8

	pop bc                                           ; $7d41: $c1
	ld c, $20                                        ; $7d42: $0e $20
	ld [$2ad1], sp                                   ; $7d44: $08 $d1 $2a
	jr nz, jr_00d_7d49                               ; $7d47: $20 $00

jr_00d_7d49:
	pop de                                           ; $7d49: $d1
	jr z, @+$22                                      ; $7d4a: $28 $20

	ld hl, sp-$2f                                    ; $7d4c: $f8 $d1
	ld h, $20                                        ; $7d4e: $26 $20
	ldh a, [$d1]                                     ; $7d50: $f0 $d1
	inc h                                            ; $7d52: $24
	jr nz, @-$06                                     ; $7d53: $20 $f8

	pop af                                           ; $7d55: $f1
	ld d, b                                          ; $7d56: $50
	jr nz, jr_00d_7d49                               ; $7d57: $20 $f0

	pop af                                           ; $7d59: $f1
	ld c, [hl]                                       ; $7d5a: $4e
	jr nz, jr_00d_7d5d                               ; $7d5b: $20 $00

jr_00d_7d5d:
	pop hl                                           ; $7d5d: $e1
	ld b, b                                          ; $7d5e: $40
	ld [hl+], a                                      ; $7d5f: $22
	ld hl, sp-$1f                                    ; $7d60: $f8 $e1
	ld a, $23                                        ; $7d62: $3e $23
	ld [$54f1], sp                                   ; $7d64: $08 $f1 $54
	ld [hl+], a                                      ; $7d67: $22
	nop                                              ; $7d68: $00
	pop af                                           ; $7d69: $f1
	ld d, d                                          ; $7d6a: $52
	jr nz, @-$06                                     ; $7d6b: $20 $f8

	pop af                                           ; $7d6d: $f1
	ld d, b                                          ; $7d6e: $50
	jr nz, @-$0e                                     ; $7d6f: $20 $f0

	pop af                                           ; $7d71: $f1
	ld c, [hl]                                       ; $7d72: $4e
	jr nz, jr_00d_7d75                               ; $7d73: $20 $00

jr_00d_7d75:
	pop hl                                           ; $7d75: $e1
	ld b, b                                          ; $7d76: $40
	ld [hl+], a                                      ; $7d77: $22
	ld hl, sp-$1f                                    ; $7d78: $f8 $e1
	ld a, $22                                        ; $7d7a: $3e $22
	ld [$2ad1], sp                                   ; $7d7c: $08 $d1 $2a
	jr nz, jr_00d_7d81                               ; $7d7f: $20 $00

jr_00d_7d81:
	pop de                                           ; $7d81: $d1
	jr z, @+$22                                      ; $7d82: $28 $20

	ld hl, sp-$2f                                    ; $7d84: $f8 $d1
	ld h, $20                                        ; $7d86: $26 $20
	ldh a, [$d1]                                     ; $7d88: $f0 $d1
	inc h                                            ; $7d8a: $24
	jr nz, jr_00d_7d95                               ; $7d8b: $20 $08

jr_00d_7d8d:
	pop bc                                           ; $7d8d: $c1
	ld [de], a                                       ; $7d8e: $12
	jr nz, jr_00d_7d91                               ; $7d8f: $20 $00

jr_00d_7d91:
	pop bc                                           ; $7d91: $c1
	db $10                                           ; $7d92: $10
	jr nz, jr_00d_7d8d                               ; $7d93: $20 $f8

jr_00d_7d95:
	pop bc                                           ; $7d95: $c1
	ld c, $21                                        ; $7d96: $0e $21
	ld [$0cc1], sp                                   ; $7d98: $08 $c1 $0c
	jr nz, jr_00d_7d9d                               ; $7d9b: $20 $00

jr_00d_7d9d:
	pop bc                                           ; $7d9d: $c1
	ld a, [bc]                                       ; $7d9e: $0a
	jr nz, @-$06                                     ; $7d9f: $20 $f8

	pop bc                                           ; $7da1: $c1
	ld [$0820], sp                                   ; $7da2: $08 $20 $08

jr_00d_7da5:
	pop de                                           ; $7da5: $d1
	ld [hl+], a                                      ; $7da6: $22
	jr nz, jr_00d_7da9                               ; $7da7: $20 $00

jr_00d_7da9:
	pop de                                           ; $7da9: $d1
	inc l                                            ; $7daa: $2c
	jr nz, jr_00d_7da5                               ; $7dab: $20 $f8

	pop de                                           ; $7dad: $d1
	ld e, $20                                        ; $7dae: $1e $20
	ldh a, [$d1]                                     ; $7db0: $f0 $d1
	inc e                                            ; $7db2: $1c
	jr nz, jr_00d_7dbd                               ; $7db3: $20 $08

jr_00d_7db5:
	pop af                                           ; $7db5: $f1
	ld d, h                                          ; $7db6: $54
	ld [hl+], a                                      ; $7db7: $22
	nop                                              ; $7db8: $00
	pop af                                           ; $7db9: $f1
	ld d, d                                          ; $7dba: $52
	jr nz, jr_00d_7db5                               ; $7dbb: $20 $f8

jr_00d_7dbd:
	pop af                                           ; $7dbd: $f1
	ld d, b                                          ; $7dbe: $50
	jr nz, @-$0e                                     ; $7dbf: $20 $f0

	pop af                                           ; $7dc1: $f1
	ld c, [hl]                                       ; $7dc2: $4e
	jr nz, jr_00d_7dc5                               ; $7dc3: $20 $00

jr_00d_7dc5:
	pop hl                                           ; $7dc5: $e1
	ld b, b                                          ; $7dc6: $40
	ld [hl+], a                                      ; $7dc7: $22
	ld hl, sp-$1f                                    ; $7dc8: $f8 $e1
	ld a, $23                                        ; $7dca: $3e $23
	nop                                              ; $7dcc: $00

jr_00d_7dcd:
	pop de                                           ; $7dcd: $d1
	jr nc, jr_00d_7df0                               ; $7dce: $30 $20

	ld [$54f1], sp                                   ; $7dd0: $08 $f1 $54
	ld [hl+], a                                      ; $7dd3: $22
	nop                                              ; $7dd4: $00
	pop af                                           ; $7dd5: $f1
	ld d, d                                          ; $7dd6: $52
	jr nz, @-$06                                     ; $7dd7: $20 $f8

	pop af                                           ; $7dd9: $f1
	ld d, b                                          ; $7dda: $50
	jr nz, jr_00d_7dcd                               ; $7ddb: $20 $f0

	pop af                                           ; $7ddd: $f1
	ld c, [hl]                                       ; $7dde: $4e
	jr nz, jr_00d_7de1                               ; $7ddf: $20 $00

jr_00d_7de1:
	pop hl                                           ; $7de1: $e1
	ld b, b                                          ; $7de2: $40
	ld [hl+], a                                      ; $7de3: $22
	ld hl, sp-$1f                                    ; $7de4: $f8 $e1
	ld a, $22                                        ; $7de6: $3e $22
	ld [$22d1], sp                                   ; $7de8: $08 $d1 $22
	jr nz, @-$06                                     ; $7deb: $20 $f8

	pop de                                           ; $7ded: $d1
	ld e, $20                                        ; $7dee: $1e $20

jr_00d_7df0:
	ldh a, [$d1]                                     ; $7df0: $f0 $d1
	inc e                                            ; $7df2: $1c
	jr nz, jr_00d_7dfd                               ; $7df3: $20 $08

jr_00d_7df5:
	pop bc                                           ; $7df5: $c1
	inc c                                            ; $7df6: $0c
	jr nz, jr_00d_7df9                               ; $7df7: $20 $00

jr_00d_7df9:
	pop bc                                           ; $7df9: $c1
	ld a, [bc]                                       ; $7dfa: $0a
	jr nz, jr_00d_7df5                               ; $7dfb: $20 $f8

jr_00d_7dfd:
	pop bc                                           ; $7dfd: $c1
	ld [$0021], sp                                   ; $7dfe: $08 $21 $00

jr_00d_7e01:
	pop de                                           ; $7e01: $d1
	ld l, $20                                        ; $7e02: $2e $20
	ld [$54f1], sp                                   ; $7e04: $08 $f1 $54
	ld [hl+], a                                      ; $7e07: $22
	nop                                              ; $7e08: $00
	pop af                                           ; $7e09: $f1
	ld d, d                                          ; $7e0a: $52
	jr nz, @-$06                                     ; $7e0b: $20 $f8

	pop af                                           ; $7e0d: $f1
	ld d, b                                          ; $7e0e: $50
	jr nz, jr_00d_7e01                               ; $7e0f: $20 $f0

	pop af                                           ; $7e11: $f1
	ld c, [hl]                                       ; $7e12: $4e
	jr nz, jr_00d_7e15                               ; $7e13: $20 $00

jr_00d_7e15:
	pop hl                                           ; $7e15: $e1
	ld b, b                                          ; $7e16: $40
	ld [hl+], a                                      ; $7e17: $22
	ld hl, sp-$1f                                    ; $7e18: $f8 $e1
	ld a, $22                                        ; $7e1a: $3e $22
	ld [$22d1], sp                                   ; $7e1c: $08 $d1 $22
	jr nz, @-$06                                     ; $7e1f: $20 $f8

	pop de                                           ; $7e21: $d1
	ld e, $20                                        ; $7e22: $1e $20
	ldh a, [$d1]                                     ; $7e24: $f0 $d1
	inc e                                            ; $7e26: $1c
	jr nz, jr_00d_7e31                               ; $7e27: $20 $08

jr_00d_7e29:
	pop bc                                           ; $7e29: $c1
	inc c                                            ; $7e2a: $0c
	jr nz, jr_00d_7e2d                               ; $7e2b: $20 $00

jr_00d_7e2d:
	pop bc                                           ; $7e2d: $c1
	ld a, [bc]                                       ; $7e2e: $0a
	jr nz, jr_00d_7e29                               ; $7e2f: $20 $f8

jr_00d_7e31:
	pop bc                                           ; $7e31: $c1
	ld [$0821], sp                                   ; $7e32: $08 $21 $08

jr_00d_7e35:
	ldh [$6e], a                                     ; $7e35: $e0 $6e
	ld [hl+], a                                      ; $7e37: $22
	ld [$46f0], sp                                   ; $7e38: $08 $f0 $46
	jr nz, jr_00d_7e3d                               ; $7e3b: $20 $00

jr_00d_7e3d:
	ldh a, [rLY]                                     ; $7e3d: $f0 $44
	jr nz, @-$06                                     ; $7e3f: $20 $f8

	ldh a, [rSCY]                                    ; $7e41: $f0 $42
	jr nz, jr_00d_7e35                               ; $7e43: $20 $f0

	ldh a, [$3c]                                     ; $7e45: $f0 $3c
	jr nz, @+$0a                                     ; $7e47: $20 $08

	ldh [$32], a                                     ; $7e49: $e0 $32
	jr nz, jr_00d_7e4d                               ; $7e4b: $20 $00

jr_00d_7e4d:
	ldh [$30], a                                     ; $7e4d: $e0 $30
	ld [hl+], a                                      ; $7e4f: $22
	ld hl, sp-$20                                    ; $7e50: $f8 $e0
	ld l, $22                                        ; $7e52: $2e $22
	ld [$04c0], sp                                   ; $7e54: $08 $c0 $04
	jr nz, jr_00d_7e59                               ; $7e57: $20 $00

jr_00d_7e59:
	ret nz                                           ; $7e59: $c0

	ld [bc], a                                       ; $7e5a: $02
	jr nz, @-$06                                     ; $7e5b: $20 $f8

	ret nz                                           ; $7e5d: $c0

	nop                                              ; $7e5e: $00
	jr nz, @+$0a                                     ; $7e5f: $20 $08

	ret nc                                           ; $7e61: $d0

	ld a, [de]                                       ; $7e62: $1a
	jr nz, jr_00d_7e65                               ; $7e63: $20 $00

jr_00d_7e65:
	ret nc                                           ; $7e65: $d0

	jr @+$22                                         ; $7e66: $18 $20

	ld hl, sp-$30                                    ; $7e68: $f8 $d0
	ld d, $20                                        ; $7e6a: $16 $20
	ldh a, [$d0]                                     ; $7e6c: $f0 $d0

jr_00d_7e6e:
	inc d                                            ; $7e6e: $14
	ld hl, $f005                                     ; $7e6f: $21 $05 $f0

jr_00d_7e72:
	ld b, b                                          ; $7e72: $40
	jr nz, jr_00d_7e72                               ; $7e73: $20 $fd

	ldh a, [$3e]                                     ; $7e75: $f0 $3e
	jr nz, jr_00d_7e6e                               ; $7e77: $20 $f5

	ldh a, [$3c]                                     ; $7e79: $f0 $3c
	jr nz, @+$07                                     ; $7e7b: $20 $05

	ldh [$6c], a                                     ; $7e7d: $e0 $6c
	ld [hl+], a                                      ; $7e7f: $22
	dec c                                            ; $7e80: $0d
	ldh [$3a], a                                     ; $7e81: $e0 $3a
	jr nz, @+$07                                     ; $7e83: $20 $05

	ldh [$38], a                                     ; $7e85: $e0 $38
	jr nz, @-$01                                     ; $7e87: $20 $fd

	ldh [$36], a                                     ; $7e89: $e0 $36
	ld [hl+], a                                      ; $7e8b: $22
	push af                                          ; $7e8c: $f5
	ldh [$34], a                                     ; $7e8d: $e0 $34
	ld [hl+], a                                      ; $7e8f: $22
	ld [$1ad0], sp                                   ; $7e90: $08 $d0 $1a
	jr nz, jr_00d_7e95                               ; $7e93: $20 $00

jr_00d_7e95:
	ret nc                                           ; $7e95: $d0

	jr jr_00d_7eb8                                   ; $7e96: $18 $20

	ld hl, sp-$30                                    ; $7e98: $f8 $d0
	ld d, $20                                        ; $7e9a: $16 $20
	ldh a, [$d0]                                     ; $7e9c: $f0 $d0
	inc d                                            ; $7e9e: $14
	jr nz, jr_00d_7ea9                               ; $7e9f: $20 $08

jr_00d_7ea1:
	ret nz                                           ; $7ea1: $c0

	inc b                                            ; $7ea2: $04
	jr nz, jr_00d_7ea5                               ; $7ea3: $20 $00

jr_00d_7ea5:
	ret nz                                           ; $7ea5: $c0

	ld [bc], a                                       ; $7ea6: $02
	jr nz, jr_00d_7ea1                               ; $7ea7: $20 $f8

jr_00d_7ea9:
	ret nz                                           ; $7ea9: $c0

	nop                                              ; $7eaa: $00
	ld hl, $c008                                     ; $7eab: $21 $08 $c0
	ld [de], a                                       ; $7eae: $12
	jr nz, jr_00d_7eb1                               ; $7eaf: $20 $00

jr_00d_7eb1:
	ret nz                                           ; $7eb1: $c0

	db $10                                           ; $7eb2: $10
	jr nz, @-$06                                     ; $7eb3: $20 $f8

	ret nz                                           ; $7eb5: $c0

	ld c, $20                                        ; $7eb6: $0e $20

jr_00d_7eb8:
	ld [$72e0], sp                                   ; $7eb8: $08 $e0 $72
	ld [hl+], a                                      ; $7ebb: $22
	ld [$5ef0], sp                                   ; $7ebc: $08 $f0 $5e
	jr nz, jr_00d_7ec1                               ; $7ebf: $20 $00

jr_00d_7ec1:
	ldh a, [$5c]                                     ; $7ec1: $f0 $5c
	jr nz, @-$06                                     ; $7ec3: $20 $f8

	ldh a, [$5a]                                     ; $7ec5: $f0 $5a
	jr nz, @+$0a                                     ; $7ec7: $20 $08

	ldh [$4c], a                                     ; $7ec9: $e0 $4c
	jr nz, jr_00d_7ecd                               ; $7ecb: $20 $00

jr_00d_7ecd:
	ldh [rWY], a                                     ; $7ecd: $e0 $4a
	ld [hl+], a                                      ; $7ecf: $22
	ld hl, sp-$20                                    ; $7ed0: $f8 $e0
	ld c, b                                          ; $7ed2: $48
	ld [hl+], a                                      ; $7ed3: $22
	ld [$22d0], sp                                   ; $7ed4: $08 $d0 $22
	jr nz, jr_00d_7ed9                               ; $7ed7: $20 $00

jr_00d_7ed9:
	ret nc                                           ; $7ed9: $d0

	jr nz, @+$22                                     ; $7eda: $20 $20

	ld hl, sp-$30                                    ; $7edc: $f8 $d0
	ld e, $20                                        ; $7ede: $1e $20
	ldh a, [$d0]                                     ; $7ee0: $f0 $d0
	inc e                                            ; $7ee2: $1c
	ld hl, $c008                                     ; $7ee3: $21 $08 $c0
	inc c                                            ; $7ee6: $0c
	jr nz, jr_00d_7ee9                               ; $7ee7: $20 $00

jr_00d_7ee9:
	ret nz                                           ; $7ee9: $c0

	ld a, [bc]                                       ; $7eea: $0a
	jr nz, @-$06                                     ; $7eeb: $20 $f8

	ret nz                                           ; $7eed: $c0

	ld [$f020], sp                                   ; $7eee: $08 $20 $f0
	ret nz                                           ; $7ef1: $c0

	ld b, $20                                        ; $7ef2: $06 $20
	ld [$70e0], sp                                   ; $7ef4: $08 $e0 $70
	ld [hl+], a                                      ; $7ef7: $22
	ld [$64f0], sp                                   ; $7ef8: $08 $f0 $64
	jr nz, jr_00d_7efd                               ; $7efb: $20 $00

jr_00d_7efd:
	ldh a, [$62]                                     ; $7efd: $f0 $62
	jr nz, @-$06                                     ; $7eff: $20 $f8

	ldh a, [$60]                                     ; $7f01: $f0 $60
	jr nz, @+$0a                                     ; $7f03: $20 $08

	ldh [rHDMA2], a                                  ; $7f05: $e0 $52
	jr nz, jr_00d_7f09                               ; $7f07: $20 $00

jr_00d_7f09:
	ldh [$50], a                                     ; $7f09: $e0 $50
	ld [hl+], a                                      ; $7f0b: $22
	ld hl, sp-$20                                    ; $7f0c: $f8 $e0
	ld c, [hl]                                       ; $7f0e: $4e
	ld [hl+], a                                      ; $7f0f: $22
	ld [$2cd0], sp                                   ; $7f10: $08 $d0 $2c
	jr nz, jr_00d_7f15                               ; $7f13: $20 $00

jr_00d_7f15:
	ret nc                                           ; $7f15: $d0

	ld h, $20                                        ; $7f16: $26 $20
	ld hl, sp-$30                                    ; $7f18: $f8 $d0
	inc h                                            ; $7f1a: $24
	ld hl, $f008                                     ; $7f1b: $21 $08 $f0
	ld l, d                                          ; $7f1e: $6a
	jr nz, jr_00d_7f21                               ; $7f1f: $20 $00

jr_00d_7f21:
	ldh a, [rBCPS]                                   ; $7f21: $f0 $68
	jr nz, @-$06                                     ; $7f23: $20 $f8

jr_00d_7f25:
	ldh a, [$66]                                     ; $7f25: $f0 $66
	jr nz, jr_00d_7f29                               ; $7f27: $20 $00

jr_00d_7f29:
	ret nc                                           ; $7f29: $d0

	ld a, [hl+]                                      ; $7f2a: $2a
	jr nz, jr_00d_7f25                               ; $7f2b: $20 $f8

	ret nc                                           ; $7f2d: $d0

	jr z, @+$22                                      ; $7f2e: $28 $20

	ld [$70e0], sp                                   ; $7f30: $08 $e0 $70
	ld [hl+], a                                      ; $7f33: $22
	ld [$52e0], sp                                   ; $7f34: $08 $e0 $52
	jr nz, jr_00d_7f39                               ; $7f37: $20 $00

jr_00d_7f39:
	ldh [$50], a                                     ; $7f39: $e0 $50
	ld [hl+], a                                      ; $7f3b: $22
	ld hl, sp-$20                                    ; $7f3c: $f8 $e0
	ld c, [hl]                                       ; $7f3e: $4e
	ld [hl+], a                                      ; $7f3f: $22
	ld [$2cd0], sp                                   ; $7f40: $08 $d0 $2c
	jr nz, jr_00d_7f4d                               ; $7f43: $20 $08

jr_00d_7f45:
	ret nz                                           ; $7f45: $c0

	inc c                                            ; $7f46: $0c
	jr nz, jr_00d_7f49                               ; $7f47: $20 $00

jr_00d_7f49:
	ret nz                                           ; $7f49: $c0

	ld a, [bc]                                       ; $7f4a: $0a
	jr nz, jr_00d_7f45                               ; $7f4b: $20 $f8

jr_00d_7f4d:
	ret nz                                           ; $7f4d: $c0

	ld [$f020], sp                                   ; $7f4e: $08 $20 $f0
	ret nz                                           ; $7f51: $c0

	ld b, $21                                        ; $7f52: $06 $21
	stop                                             ; $7f54: $10 $00
	nop                                              ; $7f56: $00
	ld c, b                                          ; $7f57: $48
	ld [$0100], sp                                   ; $7f58: $08 $00 $01
	ld c, c                                          ; $7f5b: $49
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
