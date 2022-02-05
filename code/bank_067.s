; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $067", ROMX[$4000], BANK[$67]

	jp nc, $d27f                                     ; $4000: $d2 $7f $d2

	ld a, a                                          ; $4003: $7f
	call nc, $947f                                   ; $4004: $d4 $7f $94
	rst $38                                          ; $4007: $ff
	sub h                                            ; $4008: $94
	rst $38                                          ; $4009: $ff
	and h                                            ; $400a: $a4
	rst $38                                          ; $400b: $ff
	dec h                                            ; $400c: $25
	rst $38                                          ; $400d: $ff
	add hl, hl                                       ; $400e: $29
	rst $38                                          ; $400f: $ff
	db $db                                           ; $4010: $db
	ld l, l                                          ; $4011: $6d
	db $db                                           ; $4012: $db
	ld l, l                                          ; $4013: $6d
	rst SubAFromDE                                          ; $4014: $df
	ld l, d                                          ; $4015: $6a
	ld [hl], a                                       ; $4016: $77
	jp c, $d77d                                      ; $4017: $da $7d $d7

	cp l                                             ; $401a: $bd
	rst SubAFromHL                                          ; $401b: $d7
	sbc e                                            ; $401c: $9b
	push af                                          ; $401d: $f5
	xor a                                            ; $401e: $af
	ld a, [$1fae]                                    ; $401f: $fa $ae $1f
	ld h, b                                          ; $4022: $60
	sbc e                                            ; $4023: $9b
	ld sp, $97e3                                     ; $4024: $31 $e3 $97
	di                                               ; $4027: $f3
	cpl                                              ; $4028: $2f
	ld h, b                                          ; $4029: $60
	ld a, a                                          ; $402a: $7f
	ld [hl], h                                       ; $402b: $74
	sub c                                            ; $402c: $91
	nop                                              ; $402d: $00
	ccf                                              ; $402e: $3f
	ccf                                              ; $402f: $3f
	rst $38                                          ; $4030: $ff
	rst $38                                          ; $4031: $ff
	ret nz                                           ; $4032: $c0

	rst $38                                          ; $4033: $ff
	nop                                              ; $4034: $00
	rst $38                                          ; $4035: $ff
	ld a, a                                          ; $4036: $7f
	and l                                            ; $4037: $a5
	or h                                             ; $4038: $b4
	ld e, e                                          ; $4039: $5b
	inc a                                            ; $403a: $3c
	inc bc                                           ; $403b: $03
	ld h, b                                          ; $403c: $60
	daa                                              ; $403d: $27
	ld h, b                                          ; $403e: $60
	ld a, e                                          ; $403f: $7b
	cp $23                                           ; $4040: $fe $23
	add b                                            ; $4042: $80
	sbc l                                            ; $4043: $9d
	ldh [$30], a                                     ; $4044: $e0 $30
	rla                                              ; $4046: $17
	add b                                            ; $4047: $80
	rst SubAFromDE                                          ; $4048: $df
	rrca                                             ; $4049: $0f
	rst SubAFromDE                                          ; $404a: $df
	rst $38                                          ; $404b: $ff
	sbc [hl]                                         ; $404c: $9e
	ldh a, [$7b]                                     ; $404d: $f0 $7b
	add b                                            ; $404f: $80
	sbc d                                            ; $4050: $9a
	nop                                              ; $4051: $00
	rst SubAFromBC                                          ; $4052: $e7
	halt                                             ; $4053: $76
	ld a, a                                          ; $4054: $7f
	jr c, jr_067_405a                                ; $4055: $38 $03

	add b                                            ; $4057: $80
	inc bc                                           ; $4058: $03
	add b                                            ; $4059: $80

jr_067_405a:
	inc bc                                           ; $405a: $03
	add b                                            ; $405b: $80
	ld c, e                                          ; $405c: $4b
	add b                                            ; $405d: $80
	ld a, e                                          ; $405e: $7b
	ld a, [hl]                                       ; $405f: $7e
	db $dd                                           ; $4060: $dd
	rst $38                                          ; $4061: $ff
	cp a                                             ; $4062: $bf
	rst $38                                          ; $4063: $ff
	rst $38                                          ; $4064: $ff
	sbc h                                            ; $4065: $9c
	rst JumpTable                                          ; $4066: $c7
	ld a, a                                          ; $4067: $7f
	ld a, h                                          ; $4068: $7c
	inc bc                                           ; $4069: $03
	add b                                            ; $406a: $80
	dec de                                           ; $406b: $1b
	add b                                            ; $406c: $80
	adc l                                            ; $406d: $8d
	rst $38                                          ; $406e: $ff
	cp h                                             ; $406f: $bc
	ld d, d                                          ; $4070: $52
	ret nz                                           ; $4071: $c0

	ld hl, sp-$20                                    ; $4072: $f8 $e0
	inc e                                            ; $4074: $1c
	nop                                              ; $4075: $00
	ld a, $10                                        ; $4076: $3e $10
	inc e                                            ; $4078: $1c
	db $10                                           ; $4079: $10
	inc bc                                           ; $407a: $03
	nop                                              ; $407b: $00
	ld [hl], $1c                                     ; $407c: $36 $1c
	inc e                                            ; $407e: $1c
	nop                                              ; $407f: $00
	cp [hl]                                          ; $4080: $be
	ld [rRAMG], sp                                   ; $4081: $08 $00 $00
	sub a                                            ; $4084: $97
	add b                                            ; $4085: $80
	nop                                              ; $4086: $00
	and d                                            ; $4087: $a2
	pop bc                                           ; $4088: $c1
	db $eb                                           ; $4089: $eb
	rst FarCall                                          ; $408a: $f7
	ld e, l                                          ; $408b: $5d
	ld a, $4f                                        ; $408c: $3e $4f
	ldh [$9a], a                                     ; $408e: $e0 $9a
	ld h, e                                          ; $4090: $63
	ld [hl], $3e                                     ; $4091: $36 $3e
	inc e                                            ; $4093: $1c
	inc d                                            ; $4094: $14
	inc hl                                           ; $4095: $23
	ldh [rIE], a                                     ; $4096: $e0 $ff
	ld a, e                                          ; $4098: $7b
	ldh [$df], a                                     ; $4099: $e0 $df
	ld a, $77                                        ; $409b: $3e $77
	cp h                                             ; $409d: $bc
	inc hl                                           ; $409e: $23
	ldh [$9a], a                                     ; $409f: $e0 $9a
	ld a, a                                          ; $40a1: $7f
	ld a, $1c                                        ; $40a2: $3e $1c
	ld a, $08                                        ; $40a4: $3e $08
	ld a, e                                          ; $40a6: $7b
	rst SubAFromDE                                          ; $40a7: $df
	ld h, a                                          ; $40a8: $67
	ldh [$a5], a                                     ; $40a9: $e0 $a5
	ld bc, $ee9c                                     ; $40ab: $01 $9c $ee
	ld b, h                                          ; $40ae: $44
	call z, $fe7b                                    ; $40af: $cc $7b $fe
	sbc [hl]                                         ; $40b2: $9e
	call c, $fe7b                                    ; $40b3: $dc $7b $fe
	sub h                                            ; $40b6: $94
	sub $4c                                          ; $40b7: $d6 $4c
	or $4c                                           ; $40b9: $f6 $4c
	ld h, l                                          ; $40bb: $65
	sbc $44                                          ; $40bc: $de $44
	rst $38                                          ; $40be: $ff
	ld b, h                                          ; $40bf: $44
	rst $38                                          ; $40c0: $ff
	ld [hl+], a                                      ; $40c1: $22
	ld a, e                                          ; $40c2: $7b
	cp $86                                           ; $40c3: $fe $86
	ld de, $91ff                                     ; $40c5: $11 $ff $91
	rst $38                                          ; $40c8: $ff
	ld c, b                                          ; $40c9: $48
	ld a, a                                          ; $40ca: $7f
	jr z, jr_067_410c                                ; $40cb: $28 $3f

	inc [hl]                                         ; $40cd: $34
	ccf                                              ; $40ce: $3f
	ld a, [hl+]                                      ; $40cf: $2a
	ccf                                              ; $40d0: $3f
	ld b, a                                          ; $40d1: $47
	ld a, a                                          ; $40d2: $7f
	ld h, l                                          ; $40d3: $65
	ld e, a                                          ; $40d4: $5f
	ld l, l                                          ; $40d5: $6d
	ld d, a                                          ; $40d6: $57
	ld l, l                                          ; $40d7: $6d
	ld d, a                                          ; $40d8: $57
	ld l, a                                          ; $40d9: $6f
	ld d, l                                          ; $40da: $55
	ld a, a                                          ; $40db: $7f
	ld b, l                                          ; $40dc: $45
	ld a, e                                          ; $40dd: $7b
	ld a, e                                          ; $40de: $7b
	cp $8e                                           ; $40df: $fe $8e
	ld l, d                                          ; $40e1: $6a
	ld d, l                                          ; $40e2: $55
	ld l, d                                          ; $40e3: $6a
	ld d, l                                          ; $40e4: $55
	ld l, [hl]                                       ; $40e5: $6e
	ld d, l                                          ; $40e6: $55
	ld c, a                                          ; $40e7: $4f
	ld [hl], l                                       ; $40e8: $75
	dec l                                            ; $40e9: $2d
	scf                                              ; $40ea: $37
	dec l                                            ; $40eb: $2d
	scf                                              ; $40ec: $37
	ld b, $04                                        ; $40ed: $06 $04
	ld c, $04                                        ; $40ef: $0e $04
	ld c, l                                          ; $40f1: $4d
	ld a, e                                          ; $40f2: $7b
	cp $97                                           ; $40f3: $fe $97
	db $ed                                           ; $40f5: $ed
	inc b                                            ; $40f6: $04
	xor l                                            ; $40f7: $ad
	ld b, h                                          ; $40f8: $44
	halt                                             ; $40f9: $76
	call $ed56                                       ; $40fa: $cd $56 $ed
	ld [hl], a                                       ; $40fd: $77
	ret nz                                           ; $40fe: $c0

	sbc [hl]                                         ; $40ff: $9e
	ld b, d                                          ; $4100: $42
	ld a, e                                          ; $4101: $7b
	ret nz                                           ; $4102: $c0

	sbc [hl]                                         ; $4103: $9e
	inc hl                                           ; $4104: $23
	ld [hl], e                                       ; $4105: $73
	cp [hl]                                          ; $4106: $be
	add b                                            ; $4107: $80
	ret z                                            ; $4108: $c8

	rst $38                                          ; $4109: $ff
	ld h, h                                          ; $410a: $64
	rst $38                                          ; $410b: $ff

jr_067_410c:
	ld [hl], $ff                                     ; $410c: $36 $ff
	dec sp                                           ; $410e: $3b
	rst AddAOntoHL                                          ; $410f: $ef
	rst SubAFromDE                                          ; $4110: $df
	or $ff                                           ; $4111: $f6 $ff
	cp c                                             ; $4113: $b9
	ret nz                                           ; $4114: $c0

	add b                                            ; $4115: $80
	ld h, b                                          ; $4116: $60
	ret nz                                           ; $4117: $c0

	ld h, b                                          ; $4118: $60
	ret nz                                           ; $4119: $c0

	jr nc, jr_067_417c                               ; $411a: $30 $60

	jr c, @+$72                                      ; $411c: $38 $70

	inc l                                            ; $411e: $2c
	ld a, b                                          ; $411f: $78
	ld h, $7c                                        ; $4120: $26 $7c
	cpl                                              ; $4122: $2f
	ld a, a                                          ; $4123: $7f
	scf                                              ; $4124: $37
	db $fd                                           ; $4125: $fd
	ld b, a                                          ; $4126: $47
	sub l                                            ; $4127: $95
	db $ec                                           ; $4128: $ec
	adc [hl]                                         ; $4129: $8e
	ret z                                            ; $412a: $c8

	ld c, [hl]                                       ; $412b: $4e
	ret c                                            ; $412c: $d8

	sbc h                                            ; $412d: $9c
	ret nc                                           ; $412e: $d0

	sbc h                                            ; $412f: $9c
	or b                                             ; $4130: $b0
	sbc b                                            ; $4131: $98
	ld l, a                                          ; $4132: $6f
	cp $9e                                           ; $4133: $fe $9e
	ldh a, [rPCM34]                                  ; $4135: $f0 $77
	cp $80                                           ; $4137: $fe $80
	ld e, b                                          ; $4139: $58
	ldh a, [rBCPS]                                   ; $413a: $f0 $68
	ld hl, sp+$7c                                    ; $413c: $f8 $7c
	call c, $e330                                    ; $413e: $dc $30 $e3
	inc sp                                           ; $4141: $33
	db $e3                                           ; $4142: $e3
	sub a                                            ; $4143: $97
	ldh a, [$cf]                                     ; $4144: $f0 $cf
	ld hl, sp-$7f                                    ; $4146: $f8 $81
	push de                                          ; $4148: $d5
	ld b, l                                          ; $4149: $45
	ld d, l                                          ; $414a: $55
	ld h, a                                          ; $414b: $67
	ld d, l                                          ; $414c: $55
	ld l, a                                          ; $414d: $6f
	ld d, l                                          ; $414e: $55
	ld l, l                                          ; $414f: $6d
	ld d, a                                          ; $4150: $57
	ld d, l                                          ; $4151: $55
	ld a, a                                          ; $4152: $7f
	ld d, l                                          ; $4153: $55
	ld a, a                                          ; $4154: $7f
	halt                                             ; $4155: $76
	ld a, a                                          ; $4156: $7f
	ld a, [hl]                                       ; $4157: $7e
	adc e                                            ; $4158: $8b
	ld e, e                                          ; $4159: $5b
	or a                                             ; $415a: $b7
	sub c                                            ; $415b: $91
	nop                                              ; $415c: $00
	rrca                                             ; $415d: $0f
	rrca                                             ; $415e: $0f
	ld a, a                                          ; $415f: $7f
	ld a, a                                          ; $4160: $7f
	ldh a, [rIE]                                     ; $4161: $f0 $ff
	sbc [hl]                                         ; $4163: $9e
	rst SubAFromBC                                          ; $4164: $e7
	ld h, a                                          ; $4165: $67
	cp l                                             ; $4166: $bd
	rst $38                                          ; $4167: $ff
	dec h                                            ; $4168: $25
	inc [hl]                                         ; $4169: $34
	ld a, a                                          ; $416a: $7f
	jr jr_067_417c                                   ; $416b: $18 $0f

	cp [hl]                                          ; $416d: $be
	inc bc                                           ; $416e: $03
	rlca                                             ; $416f: $07
	rrca                                             ; $4170: $0f
	add b                                            ; $4171: $80
	ld bc, $010f                                     ; $4172: $01 $0f $01
	rra                                              ; $4175: $1f
	inc bc                                           ; $4176: $03
	ld e, $07                                        ; $4177: $1e $07
	ld a, [hl-]                                      ; $4179: $3a
	rrca                                             ; $417a: $0f
	ld a, [hl-]                                      ; $417b: $3a

jr_067_417c:
	rra                                              ; $417c: $1f
	ld [hl], h                                       ; $417d: $74
	ld a, $f4                                        ; $417e: $3e $f4
	ld a, [hl]                                       ; $4180: $7e
	db $f4                                           ; $4181: $f4
	sbc $e4                                          ; $4182: $de $e4
	dec a                                            ; $4184: $3d
	db $e4                                           ; $4185: $e4
	dec [hl]                                         ; $4186: $35
	ld e, l                                          ; $4187: $5d
	or e                                             ; $4188: $b3
	ld [hl], a                                       ; $4189: $77
	sbc c                                            ; $418a: $99
	xor $59                                          ; $418b: $ee $59
	ld [$685d], a                                    ; $418d: $ea $5d $68
	ccf                                              ; $4190: $3f
	adc a                                            ; $4191: $8f
	and h                                            ; $4192: $a4
	ccf                                              ; $4193: $3f
	call nc, $dc9f                                   ; $4194: $d4 $9f $dc
	rst AddAOntoHL                                          ; $4197: $ef
	or d                                             ; $4198: $b2
	rst $38                                          ; $4199: $ff
	ld c, a                                          ; $419a: $4f
	rst $38                                          ; $419b: $ff
	jp nz, $e2ff                                     ; $419c: $c2 $ff $e2

	ld a, a                                          ; $419f: $7f
	ldh a, [c]                                       ; $41a0: $f2
	ccf                                              ; $41a1: $3f
	ld a, e                                          ; $41a2: $7b
	cp $80                                           ; $41a3: $fe $80
	cp a                                             ; $41a5: $bf
	ldh a, [c]                                       ; $41a6: $f2
	ccf                                              ; $41a7: $3f
	jp nc, $d27f                                     ; $41a8: $d2 $7f $d2

	ld a, a                                          ; $41ab: $7f
	call nc, $947f                                   ; $41ac: $d4 $7f $94
	rst $38                                          ; $41af: $ff
	sub h                                            ; $41b0: $94
	rst $38                                          ; $41b1: $ff
	and h                                            ; $41b2: $a4
	rst $38                                          ; $41b3: $ff
	dec h                                            ; $41b4: $25
	rst $38                                          ; $41b5: $ff
	add hl, hl                                       ; $41b6: $29
	rst $38                                          ; $41b7: $ff
	db $db                                           ; $41b8: $db
	ld l, l                                          ; $41b9: $6d
	db $db                                           ; $41ba: $db
	ld l, l                                          ; $41bb: $6d
	rst SubAFromDE                                          ; $41bc: $df
	ld l, d                                          ; $41bd: $6a
	ld [hl], a                                       ; $41be: $77
	jp c, $d77d                                      ; $41bf: $da $7d $d7

	cp l                                             ; $41c2: $bd
	rst SubAFromHL                                          ; $41c3: $d7
	sbc e                                            ; $41c4: $9b
	push af                                          ; $41c5: $f5
	xor a                                            ; $41c6: $af
	ld a, [$23ae]                                    ; $41c7: $fa $ae $23
	ld h, b                                          ; $41ca: $60
	sbc d                                            ; $41cb: $9a
	pop hl                                           ; $41cc: $e1
	ld sp, $97e3                                     ; $41cd: $31 $e3 $97
	di                                               ; $41d0: $f3
	dec hl                                           ; $41d1: $2b
	ld h, b                                          ; $41d2: $60
	rst SubAFromDE                                          ; $41d3: $df
	rlca                                             ; $41d4: $07
	rst SubAFromDE                                          ; $41d5: $df
	ccf                                              ; $41d6: $3f
	sub h                                            ; $41d7: $94
	ld hl, sp-$01                                    ; $41d8: $f8 $ff
	ret nz                                           ; $41da: $c0

	rst $38                                          ; $41db: $ff
	nop                                              ; $41dc: $00
	rst $38                                          ; $41dd: $ff
	ld a, a                                          ; $41de: $7f
	and l                                            ; $41df: $a5
	or h                                             ; $41e0: $b4
	ld e, e                                          ; $41e1: $5b
	inc a                                            ; $41e2: $3c
	inc bc                                           ; $41e3: $03
	ld h, b                                          ; $41e4: $60
	daa                                              ; $41e5: $27
	ld h, b                                          ; $41e6: $60
	ld a, e                                          ; $41e7: $7b
	cp $23                                           ; $41e8: $fe $23
	add b                                            ; $41ea: $80
	sbc l                                            ; $41eb: $9d
	ldh [$30], a                                     ; $41ec: $e0 $30
	inc hl                                           ; $41ee: $23
	add b                                            ; $41ef: $80
	ld a, a                                          ; $41f0: $7f
	sub h                                            ; $41f1: $94
	sbc c                                            ; $41f2: $99
	nop                                              ; $41f3: $00
	rra                                              ; $41f4: $1f
	rra                                              ; $41f5: $1f
	rst $38                                          ; $41f6: $ff
	rst $38                                          ; $41f7: $ff
	ldh [$7b], a                                     ; $41f8: $e0 $7b
	add b                                            ; $41fa: $80
	sbc d                                            ; $41fb: $9a
	nop                                              ; $41fc: $00
	rst SubAFromBC                                          ; $41fd: $e7
	halt                                             ; $41fe: $76
	ld a, a                                          ; $41ff: $7f
	jr c, jr_067_4205                                ; $4200: $38 $03

	add b                                            ; $4202: $80
	inc bc                                           ; $4203: $03
	add b                                            ; $4204: $80

jr_067_4205:
	inc bc                                           ; $4205: $03
	add b                                            ; $4206: $80
	ld b, a                                          ; $4207: $47
	add b                                            ; $4208: $80
	ld l, [hl]                                       ; $4209: $6e
	ld e, [hl]                                       ; $420a: $5e
	sbc [hl]                                         ; $420b: $9e
	add b                                            ; $420c: $80
	ld a, e                                          ; $420d: $7b
	ld a, [hl]                                       ; $420e: $7e
	sbc h                                            ; $420f: $9c
	rst JumpTable                                          ; $4210: $c7
	ld a, a                                          ; $4211: $7f
	ld a, h                                          ; $4212: $7c
	inc bc                                           ; $4213: $03
	add b                                            ; $4214: $80
	dec de                                           ; $4215: $1b
	add b                                            ; $4216: $80
	adc l                                            ; $4217: $8d
	rst $38                                          ; $4218: $ff
	cp h                                             ; $4219: $bc
	ld d, d                                          ; $421a: $52
	ret nz                                           ; $421b: $c0

	ld hl, sp-$20                                    ; $421c: $f8 $e0
	inc e                                            ; $421e: $1c
	nop                                              ; $421f: $00
	ld a, $10                                        ; $4220: $3e $10
	inc e                                            ; $4222: $1c
	stop                                             ; $4223: $10 $00
	nop                                              ; $4225: $00
	ld [hl], $1c                                     ; $4226: $36 $1c
	inc e                                            ; $4228: $1c
	nop                                              ; $4229: $00
	cp [hl]                                          ; $422a: $be
	ld [rRAMG], sp                                   ; $422b: $08 $00 $00
	sub a                                            ; $422e: $97
	add b                                            ; $422f: $80
	nop                                              ; $4230: $00
	and d                                            ; $4231: $a2
	pop bc                                           ; $4232: $c1
	db $eb                                           ; $4233: $eb
	rst FarCall                                          ; $4234: $f7
	ld e, l                                          ; $4235: $5d
	ld a, $47                                        ; $4236: $3e $47
	ldh [$9c], a                                     ; $4238: $e0 $9c
	ld a, $1c                                        ; $423a: $3e $1c
	inc d                                            ; $423c: $14
	dec de                                           ; $423d: $1b
	ldh [$98], a                                     ; $423e: $e0 $98
	ld [hl+], a                                      ; $4240: $22
	inc d                                            ; $4241: $14
	inc e                                            ; $4242: $1c
	ld a, $3e                                        ; $4243: $3e $3e
	inc e                                            ; $4245: $1c
	inc e                                            ; $4246: $1c
	ld a, e                                          ; $4247: $7b
	sbc $1b                                          ; $4248: $de $1b
	ldh [rPCM34], a                                  ; $424a: $e0 $77
	sbc $63                                          ; $424c: $de $63
	ldh [$a6], a                                     ; $424e: $e0 $a6
	ld bc, $ee9c                                     ; $4250: $01 $9c $ee
	ld b, h                                          ; $4253: $44
	call z, $fe7b                                    ; $4254: $cc $7b $fe
	sbc [hl]                                         ; $4257: $9e
	call c, $fe7b                                    ; $4258: $dc $7b $fe
	sub h                                            ; $425b: $94
	sub $4c                                          ; $425c: $d6 $4c
	or $4c                                           ; $425e: $f6 $4c
	ld h, l                                          ; $4260: $65
	sbc $44                                          ; $4261: $de $44
	rst $38                                          ; $4263: $ff
	ld b, h                                          ; $4264: $44
	rst $38                                          ; $4265: $ff
	ld [hl+], a                                      ; $4266: $22
	ld a, e                                          ; $4267: $7b
	cp $86                                           ; $4268: $fe $86
	ld de, $91ff                                     ; $426a: $11 $ff $91
	rst $38                                          ; $426d: $ff
	ld c, b                                          ; $426e: $48
	ld a, a                                          ; $426f: $7f
	jr z, jr_067_42b1                                ; $4270: $28 $3f

	inc [hl]                                         ; $4272: $34
	ccf                                              ; $4273: $3f
	ld a, [hl+]                                      ; $4274: $2a
	ccf                                              ; $4275: $3f
	ld b, a                                          ; $4276: $47
	ld a, a                                          ; $4277: $7f
	ld h, l                                          ; $4278: $65
	ld e, a                                          ; $4279: $5f
	ld l, l                                          ; $427a: $6d
	ld d, a                                          ; $427b: $57
	ld l, l                                          ; $427c: $6d
	ld d, a                                          ; $427d: $57
	ld l, a                                          ; $427e: $6f
	ld d, l                                          ; $427f: $55
	ld a, a                                          ; $4280: $7f
	ld b, l                                          ; $4281: $45
	ld a, e                                          ; $4282: $7b
	ld a, e                                          ; $4283: $7b
	cp $8e                                           ; $4284: $fe $8e
	ld l, d                                          ; $4286: $6a
	ld d, l                                          ; $4287: $55
	ld l, d                                          ; $4288: $6a
	ld d, l                                          ; $4289: $55
	ld l, [hl]                                       ; $428a: $6e
	ld d, l                                          ; $428b: $55
	ld c, a                                          ; $428c: $4f
	ld [hl], l                                       ; $428d: $75
	dec l                                            ; $428e: $2d
	scf                                              ; $428f: $37
	dec l                                            ; $4290: $2d
	scf                                              ; $4291: $37
	ld b, $04                                        ; $4292: $06 $04
	ld c, $04                                        ; $4294: $0e $04
	ld c, l                                          ; $4296: $4d
	ld a, e                                          ; $4297: $7b
	cp $97                                           ; $4298: $fe $97
	db $ed                                           ; $429a: $ed
	inc b                                            ; $429b: $04
	xor l                                            ; $429c: $ad
	ld b, h                                          ; $429d: $44
	halt                                             ; $429e: $76
	call $ed56                                       ; $429f: $cd $56 $ed
	ld [hl], a                                       ; $42a2: $77
	ret nz                                           ; $42a3: $c0

	sbc [hl]                                         ; $42a4: $9e
	ld b, d                                          ; $42a5: $42
	ld a, e                                          ; $42a6: $7b
	ret nz                                           ; $42a7: $c0

	sbc [hl]                                         ; $42a8: $9e
	inc hl                                           ; $42a9: $23
	ld [hl], e                                       ; $42aa: $73
	cp [hl]                                          ; $42ab: $be
	add b                                            ; $42ac: $80
	ret z                                            ; $42ad: $c8

	rst $38                                          ; $42ae: $ff
	ld h, h                                          ; $42af: $64
	rst $38                                          ; $42b0: $ff

jr_067_42b1:
	ld [hl], $ff                                     ; $42b1: $36 $ff
	dec sp                                           ; $42b3: $3b
	rst AddAOntoHL                                          ; $42b4: $ef
	rst SubAFromDE                                          ; $42b5: $df
	or $ff                                           ; $42b6: $f6 $ff
	cp c                                             ; $42b8: $b9
	ret nz                                           ; $42b9: $c0

	add b                                            ; $42ba: $80
	ld h, b                                          ; $42bb: $60
	ret nz                                           ; $42bc: $c0

	ld h, b                                          ; $42bd: $60
	ret nz                                           ; $42be: $c0

	jr nc, jr_067_4321                               ; $42bf: $30 $60

	jr c, @+$72                                      ; $42c1: $38 $70

	inc l                                            ; $42c3: $2c
	ld a, b                                          ; $42c4: $78
	ld h, $7c                                        ; $42c5: $26 $7c
	cpl                                              ; $42c7: $2f
	ld a, a                                          ; $42c8: $7f
	scf                                              ; $42c9: $37
	db $fd                                           ; $42ca: $fd

jr_067_42cb:
	ld b, a                                          ; $42cb: $47
	sub l                                            ; $42cc: $95
	db $ec                                           ; $42cd: $ec
	adc [hl]                                         ; $42ce: $8e
	ret z                                            ; $42cf: $c8

	ld c, [hl]                                       ; $42d0: $4e
	ret c                                            ; $42d1: $d8

	sbc h                                            ; $42d2: $9c
	ret nc                                           ; $42d3: $d0

	sbc h                                            ; $42d4: $9c
	or b                                             ; $42d5: $b0
	sbc b                                            ; $42d6: $98
	ld l, a                                          ; $42d7: $6f
	cp $9e                                           ; $42d8: $fe $9e
	ldh a, [rPCM34]                                  ; $42da: $f0 $77
	cp $80                                           ; $42dc: $fe $80
	ld e, b                                          ; $42de: $58
	ldh a, [rBCPS]                                   ; $42df: $f0 $68
	ld hl, sp+$7c                                    ; $42e1: $f8 $7c
	call c, $e030                                    ; $42e3: $dc $30 $e0
	jr nc, jr_067_42cb                               ; $42e6: $30 $e3

	sub a                                            ; $42e8: $97
	di                                               ; $42e9: $f3
	rst GetHLinHL                                          ; $42ea: $cf
	ld hl, sp-$7f                                    ; $42eb: $f8 $81
	push de                                          ; $42ed: $d5
	ld b, l                                          ; $42ee: $45
	ld d, l                                          ; $42ef: $55
	ld h, a                                          ; $42f0: $67
	ld d, l                                          ; $42f1: $55
	ld l, a                                          ; $42f2: $6f
	ld d, l                                          ; $42f3: $55
	ld l, l                                          ; $42f4: $6d
	ld d, a                                          ; $42f5: $57
	ld d, l                                          ; $42f6: $55
	ld a, a                                          ; $42f7: $7f
	ld d, l                                          ; $42f8: $55
	ld a, a                                          ; $42f9: $7f
	halt                                             ; $42fa: $76
	ld a, a                                          ; $42fb: $7f
	ld a, [hl]                                       ; $42fc: $7e
	adc e                                            ; $42fd: $8b
	ld e, e                                          ; $42fe: $5b
	or a                                             ; $42ff: $b7
	sub c                                            ; $4300: $91
	rlca                                             ; $4301: $07
	nop                                              ; $4302: $00
	nop                                              ; $4303: $00
	rrca                                             ; $4304: $0f
	rrca                                             ; $4305: $0f
	ld a, a                                          ; $4306: $7f
	ld a, a                                          ; $4307: $7f
	ldh a, [rIE]                                     ; $4308: $f0 $ff
	add b                                            ; $430a: $80
	rst $38                                          ; $430b: $ff
	nop                                              ; $430c: $00
	rst $38                                          ; $430d: $ff
	rst JumpTable                                          ; $430e: $c7
	ld a, a                                          ; $430f: $7f
	ld a, h                                          ; $4310: $7c
	rrca                                             ; $4311: $0f
	cp [hl]                                          ; $4312: $be
	inc bc                                           ; $4313: $03
	rlca                                             ; $4314: $07
	rrca                                             ; $4315: $0f
	add b                                            ; $4316: $80
	ld bc, $010f                                     ; $4317: $01 $0f $01
	rra                                              ; $431a: $1f
	inc bc                                           ; $431b: $03
	ld e, $07                                        ; $431c: $1e $07
	ld a, [hl-]                                      ; $431e: $3a
	rrca                                             ; $431f: $0f
	ld a, [hl-]                                      ; $4320: $3a

jr_067_4321:
	rra                                              ; $4321: $1f
	ld [hl], h                                       ; $4322: $74
	ld a, $f4                                        ; $4323: $3e $f4
	ld a, [hl]                                       ; $4325: $7e
	db $f4                                           ; $4326: $f4
	sbc $e4                                          ; $4327: $de $e4
	dec a                                            ; $4329: $3d
	db $e4                                           ; $432a: $e4
	dec [hl]                                         ; $432b: $35
	ld e, l                                          ; $432c: $5d
	or e                                             ; $432d: $b3
	ld [hl], a                                       ; $432e: $77
	sbc c                                            ; $432f: $99
	xor $59                                          ; $4330: $ee $59
	ld [$685d], a                                    ; $4332: $ea $5d $68
	ccf                                              ; $4335: $3f
	adc a                                            ; $4336: $8f
	and h                                            ; $4337: $a4
	ccf                                              ; $4338: $3f
	call nc, $dc9f                                   ; $4339: $d4 $9f $dc
	rst AddAOntoHL                                          ; $433c: $ef
	or d                                             ; $433d: $b2
	rst $38                                          ; $433e: $ff
	ld c, a                                          ; $433f: $4f
	rst $38                                          ; $4340: $ff
	jp nz, $e2ff                                     ; $4341: $c2 $ff $e2

	ld a, a                                          ; $4344: $7f
	ldh a, [c]                                       ; $4345: $f2
	ccf                                              ; $4346: $3f
	ld l, a                                          ; $4347: $6f
	cp $80                                           ; $4348: $fe $80
	jp nc, $d27f                                     ; $434a: $d2 $7f $d2

	ld a, a                                          ; $434d: $7f
	call nc, $947f                                   ; $434e: $d4 $7f $94
	rst $38                                          ; $4351: $ff
	sub h                                            ; $4352: $94
	rst $38                                          ; $4353: $ff
	and h                                            ; $4354: $a4
	rst $38                                          ; $4355: $ff
	dec h                                            ; $4356: $25
	rst $38                                          ; $4357: $ff
	add hl, hl                                       ; $4358: $29
	rst $38                                          ; $4359: $ff
	db $db                                           ; $435a: $db
	ld l, l                                          ; $435b: $6d
	db $db                                           ; $435c: $db
	ld l, l                                          ; $435d: $6d
	rst SubAFromDE                                          ; $435e: $df
	ld l, d                                          ; $435f: $6a
	ld [hl], a                                       ; $4360: $77
	jp c, $d77d                                      ; $4361: $da $7d $d7

	cp l                                             ; $4364: $bd
	rst SubAFromHL                                          ; $4365: $d7
	push af                                          ; $4366: $f5
	xor a                                            ; $4367: $af
	ld a, [$ae9e]                                    ; $4368: $fa $9e $ae
	inc bc                                           ; $436b: $03
	ld h, b                                          ; $436c: $60
	cpl                                              ; $436d: $2f
	ld h, b                                          ; $436e: $60
	rst SubAFromDE                                          ; $436f: $df
	rra                                              ; $4370: $1f
	rst SubAFromDE                                          ; $4371: $df
	rst $38                                          ; $4372: $ff
	sbc [hl]                                         ; $4373: $9e
	ldh [$7b], a                                     ; $4374: $e0 $7b
	ld h, d                                          ; $4376: $62
	sbc d                                            ; $4377: $9a
	nop                                              ; $4378: $00
	rst SubAFromBC                                          ; $4379: $e7
	halt                                             ; $437a: $76
	ld a, a                                          ; $437b: $7f
	jr c, jr_067_4381                                ; $437c: $38 $03

	ld h, b                                          ; $437e: $60
	dec de                                           ; $437f: $1b
	ld h, b                                          ; $4380: $60

jr_067_4381:
	inc bc                                           ; $4381: $03
	add b                                            ; $4382: $80

Call_067_4383:
	dec sp                                           ; $4383: $3b
	add b                                            ; $4384: $80
	ld a, a                                          ; $4385: $7f
	sub e                                            ; $4386: $93
	sub c                                            ; $4387: $91
	rlca                                             ; $4388: $07
	ccf                                              ; $4389: $3f
	ccf                                              ; $438a: $3f
	ld hl, sp-$01                                    ; $438b: $f8 $ff
	ret nz                                           ; $438d: $c0

	rst $38                                          ; $438e: $ff
	ccf                                              ; $438f: $3f
	db $eb                                           ; $4390: $eb
	ld l, [hl]                                       ; $4391: $6e
	and l                                            ; $4392: $a5
	or l                                             ; $4393: $b5
	ld e, e                                          ; $4394: $5b
	inc a                                            ; $4395: $3c
	inc bc                                           ; $4396: $03
	add b                                            ; $4397: $80
	inc bc                                           ; $4398: $03
	add b                                            ; $4399: $80
	dec sp                                           ; $439a: $3b
	add b                                            ; $439b: $80
	sbc d                                            ; $439c: $9a

Jump_067_439d:
	db $e3                                           ; $439d: $e3
	inc sp                                           ; $439e: $33
	db $e3                                           ; $439f: $e3
	sub a                                            ; $43a0: $97
	ldh a, [$37]                                     ; $43a1: $f0 $37
	add b                                            ; $43a3: $80
	adc l                                            ; $43a4: $8d
	or l                                             ; $43a5: $b5
	sub e                                            ; $43a6: $93
	rlca                                             ; $43a7: $07
	rra                                              ; $43a8: $1f
	rra                                              ; $43a9: $1f
	ld a, b                                          ; $43aa: $78
	ld a, a                                          ; $43ab: $7f
	ldh [rIE], a                                     ; $43ac: $e0 $ff
	sbc [hl]                                         ; $43ae: $9e
	rst SubAFromBC                                          ; $43af: $e7
	ld h, a                                          ; $43b0: $67
	cp l                                             ; $43b1: $bd
	rst $38                                          ; $43b2: $ff
	dec h                                            ; $43b3: $25
	inc [hl]                                         ; $43b4: $34
	ld a, a                                          ; $43b5: $7f
	jr jr_067_43bb                                   ; $43b6: $18 $03

	add b                                            ; $43b8: $80
	daa                                              ; $43b9: $27
	add b                                            ; $43ba: $80

jr_067_43bb:
	adc d                                            ; $43bb: $8a
	cp a                                             ; $43bc: $bf
	ldh a, [c]                                       ; $43bd: $f2
	ccf                                              ; $43be: $3f
	rst $38                                          ; $43bf: $ff
	cp h                                             ; $43c0: $bc
	ld d, d                                          ; $43c1: $52
	ret nz                                           ; $43c2: $c0

	ld hl, sp-$20                                    ; $43c3: $f8 $e0
	inc e                                            ; $43c5: $1c
	nop                                              ; $43c6: $00
	ld a, $10                                        ; $43c7: $3e $10
	inc e                                            ; $43c9: $1c
	stop                                             ; $43ca: $10 $00
	nop                                              ; $43cc: $00
	inc e                                            ; $43cd: $1c
	inc e                                            ; $43ce: $1c
	inc d                                            ; $43cf: $14
	ld [hl+], a                                      ; $43d0: $22
	ei                                               ; $43d1: $fb
	sub a                                            ; $43d2: $97
	add b                                            ; $43d3: $80
	nop                                              ; $43d4: $00
	and d                                            ; $43d5: $a2
	pop bc                                           ; $43d6: $c1
	db $eb                                           ; $43d7: $eb
	rst FarCall                                          ; $43d8: $f7
	ld e, l                                          ; $43d9: $5d
	ld a, $4f                                        ; $43da: $3e $4f
	ldh [$97], a                                     ; $43dc: $e0 $97
	ld [hl+], a                                      ; $43de: $22
	inc d                                            ; $43df: $14
	inc e                                            ; $43e0: $1c
	ld a, $3e                                        ; $43e1: $3e $3e
	inc e                                            ; $43e3: $1c
	inc d                                            ; $43e4: $14
	ld [$e013], sp                                   ; $43e5: $08 $13 $e0
	ld a, e                                          ; $43e8: $7b
	sbc $7f                                          ; $43e9: $de $7f
	ldh a, [rAUD2ENV]                                ; $43eb: $f0 $17
	ldh [$7f], a                                     ; $43ed: $e0 $7f
	db $fc                                           ; $43ef: $fc
	sbc l                                            ; $43f0: $9d
	ld [$671c], sp                                   ; $43f1: $08 $1c $67
	ldh [$b0], a                                     ; $43f4: $e0 $b0
	ld [bc], a                                       ; $43f6: $02
	rst $38                                          ; $43f7: $ff
	db $dd                                           ; $43f8: $dd
	ld bc, $0294                                     ; $43f9: $01 $94 $02
	inc bc                                           ; $43fc: $03
	inc bc                                           ; $43fd: $03
	ld [bc], a                                       ; $43fe: $02
	inc bc                                           ; $43ff: $03
	ld [bc], a                                       ; $4400: $02
	dec b                                            ; $4401: $05
	ld b, $06                                        ; $4402: $06 $06
	dec b                                            ; $4404: $05
	rlca                                             ; $4405: $07
	ld h, e                                          ; $4406: $63
	cp $7f                                           ; $4407: $fe $7f
	db $fd                                           ; $4409: $fd
	db $dd                                           ; $440a: $dd
	ld [bc], a                                       ; $440b: $02
	rst SubAFromBC                                          ; $440c: $e7
	ld [hl], a                                       ; $440d: $77
	jp z, $fe7f                                      ; $440e: $ca $7f $fe

	add b                                            ; $4411: $80
	inc b                                            ; $4412: $04
	rlca                                             ; $4413: $07
	ld b, $05                                        ; $4414: $06 $05
	ld b, $05                                        ; $4416: $06 $05
	ld c, $09                                        ; $4418: $0e $09
	ld c, $09                                        ; $441a: $0e $09
	rrca                                             ; $441c: $0f
	ld [$080f], sp                                   ; $441d: $08 $0f $08
	rla                                              ; $4420: $17
	jr jr_067_4442                                   ; $4421: $18 $1f

	db $10                                           ; $4423: $10
	ld e, $11                                        ; $4424: $1e $11
	ccf                                              ; $4426: $3f
	ld sp, $313f                                     ; $4427: $31 $3f $31
	dec a                                            ; $442a: $3d
	inc sp                                           ; $442b: $33
	ld e, [hl]                                       ; $442c: $5e
	ld [hl], e                                       ; $442d: $73
	ld l, a                                          ; $442e: $6f
	ld d, d                                          ; $442f: $52
	rst AddAOntoHL                                          ; $4430: $ef
	sbc [hl]                                         ; $4431: $9e
	sub d                                            ; $4432: $92
	ccf                                              ; $4433: $3f
	jp z, $cf7f                                      ; $4434: $ca $7f $cf

	add e                                            ; $4437: $83
	dec e                                            ; $4438: $1d
	dec de                                           ; $4439: $1b
	halt                                             ; $443a: $76
	ld l, a                                          ; $443b: $6f
	ei                                               ; $443c: $fb
	db $fc                                           ; $443d: $fc
	ld d, $19                                        ; $443e: $16 $19
	dec l                                            ; $4440: $2d
	ld [hl-], a                                      ; $4441: $32

jr_067_4442:
	ld e, e                                          ; $4442: $5b
	ld h, h                                          ; $4443: $64
	or [hl]                                          ; $4444: $b6
	ret                                              ; $4445: $c9


	ld l, l                                          ; $4446: $6d
	sub d                                            ; $4447: $92
	jp nc, $8824                                     ; $4448: $d2 $24 $88

	ld h, h                                          ; $444b: $64
	and h                                            ; $444c: $a4
	ld c, b                                          ; $444d: $48
	ld bc, $49c8                                     ; $444e: $01 $c8 $49
	add b                                            ; $4451: $80
	inc bc                                           ; $4452: $03
	add b                                            ; $4453: $80
	ldh [$bf], a                                     ; $4454: $e0 $bf
	rst SubAFromDE                                          ; $4456: $df
	ld bc, $0e92                                     ; $4457: $01 $92 $0e
	rrca                                             ; $445a: $0f
	jr nc, jr_067_449c                               ; $445b: $30 $3f

	rst SubAFromDE                                          ; $445d: $df
	db $e3                                           ; $445e: $e3
	ld a, a                                          ; $445f: $7f
	add d                                            ; $4460: $82
	rst $38                                          ; $4461: $ff
	ld [bc], a                                       ; $4462: $02
	rst $38                                          ; $4463: $ff
	ld bc, $fe01                                     ; $4464: $01 $01 $fe
	rst SubAFromDE                                          ; $4467: $df
	rra                                              ; $4468: $1f
	rst SubAFromDE                                          ; $4469: $df
	db $10                                           ; $446a: $10
	adc h                                            ; $446b: $8c
	sub b                                            ; $446c: $90
	db $10                                           ; $446d: $10
	ld de, $9190                                     ; $446e: $11 $90 $91
	sub b                                            ; $4471: $90
	sub d                                            ; $4472: $92
	sub c                                            ; $4473: $91
	sub d                                            ; $4474: $92
	sub c                                            ; $4475: $91
	sub c                                            ; $4476: $91
	sub d                                            ; $4477: $92
	dec d                                            ; $4478: $15
	sub d                                            ; $4479: $92
	sub l                                            ; $447a: $95
	ld [de], a                                       ; $447b: $12
	sub e                                            ; $447c: $93
	inc d                                            ; $447d: $14
	dec sp                                           ; $447e: $3b
	ld a, e                                          ; $447f: $7b
	cp $9d                                           ; $4480: $fe $9d
	inc sp                                           ; $4482: $33
	inc e                                            ; $4483: $1c
	ld sp, hl                                        ; $4484: $f9
	rst SubAFromDE                                          ; $4485: $df
	rrca                                             ; $4486: $0f
	rst SubAFromDE                                          ; $4487: $df
	inc bc                                           ; $4488: $03
	ld [hl], a                                       ; $4489: $77
	sub $80                                          ; $448a: $d6 $80
	jp hl                                            ; $448c: $e9


	ldh a, [$e0]                                     ; $448d: $f0 $e0
	nop                                              ; $448f: $00
	ldh a, [hDisp1_LCDC]                                     ; $4490: $f0 $8f
	rst JumpTable                                          ; $4492: $c7
	jr c, @+$1a                                      ; $4493: $38 $18

	rst SubAFromBC                                          ; $4495: $e7
	ld h, e                                          ; $4496: $63
	sbc h                                            ; $4497: $9c
	adc [hl]                                         ; $4498: $8e
	ld [hl], c                                       ; $4499: $71
	ld d, $cf                                        ; $449a: $16 $cf

jr_067_449c:
	ld a, $88                                        ; $449c: $3e $88
	jr c, jr_067_44b0                                ; $449e: $38 $10

	ld [hl], d                                       ; $44a0: $72
	ld hl, $46a1                                     ; $44a1: $21 $a1 $46
	ld b, [hl]                                       ; $44a4: $46
	adc h                                            ; $44a5: $8c
	adc h                                            ; $44a6: $8c
	jr jr_067_44ba                                   ; $44a7: $18 $11

	jr @+$1c                                         ; $44a9: $18 $1a

	sbc [hl]                                         ; $44ab: $9e
	ld sp, $c1e0                                     ; $44ac: $31 $e0 $c1
	sub l                                            ; $44af: $95

jr_067_44b0:
	cp [hl]                                          ; $44b0: $be
	rst $38                                          ; $44b1: $ff
	ret z                                            ; $44b2: $c8

	db $fc                                           ; $44b3: $fc
	jr nc, @-$06                                     ; $44b4: $30 $f8

	ret nz                                           ; $44b6: $c0

	ldh [rP1], a                                     ; $44b7: $e0 $00
	add b                                            ; $44b9: $80

jr_067_44ba:
	ld [hl], d                                       ; $44ba: $72
	add a                                            ; $44bb: $87
	add d                                            ; $44bc: $82
	inc bc                                           ; $44bd: $03
	add e                                            ; $44be: $83
	add e                                            ; $44bf: $83
	jp $c747                                         ; $44c0: $c3 $47 $c7


	call $0d0b                                       ; $44c3: $cd $0b $0d
	dec c                                            ; $44c6: $0d
	add hl, de                                       ; $44c7: $19
	ld de, $1819                                     ; $44c8: $11 $19 $18
	jr nc, jr_067_44ed                               ; $44cb: $30 $20

	jr nc, @+$32                                     ; $44cd: $30 $30

	ld h, b                                          ; $44cf: $60
	ld sp, $5e60                                     ; $44d0: $31 $60 $5e
	ld h, b                                          ; $44d3: $60
	ld a, b                                          ; $44d4: $78
	ret nz                                           ; $44d5: $c0

	ld h, b                                          ; $44d6: $60
	ret nz                                           ; $44d7: $c0

	add b                                            ; $44d8: $80
	ret nz                                           ; $44d9: $c0

	ld a, e                                          ; $44da: $7b
	db $fd                                           ; $44db: $fd
	ld h, d                                          ; $44dc: $62
	ldh a, [$df]                                     ; $44dd: $f0 $df
	jp nz, Jump_067_7392                             ; $44df: $c2 $92 $73

	or e                                             ; $44e2: $b3
	cp l                                             ; $44e3: $bd
	rst GetHLinHL                                          ; $44e4: $cf
	db $ed                                           ; $44e5: $ed
	rst FarCall                                          ; $44e6: $f7
	db $db                                           ; $44e7: $db
	ccf                                              ; $44e8: $3f
	ld [hl], a                                       ; $44e9: $77
	rrca                                             ; $44ea: $0f
	di                                               ; $44eb: $f3
	rst $38                                          ; $44ec: $ff

jr_067_44ed:
	dec c                                            ; $44ed: $0d
	sbc $ff                                          ; $44ee: $de $ff
	adc c                                            ; $44f0: $89
	db $e3                                           ; $44f1: $e3
	rra                                              ; $44f2: $1f
	rst $38                                          ; $44f3: $ff
	rst $38                                          ; $44f4: $ff
	ei                                               ; $44f5: $fb
	rlca                                             ; $44f6: $07
	ld hl, $9f1f                                     ; $44f7: $21 $1f $9f
	ld a, a                                          ; $44fa: $7f
	ld a, e                                          ; $44fb: $7b
	add a                                            ; $44fc: $87
	add e                                            ; $44fd: $83
	ld bc, $0f30                                     ; $44fe: $01 $30 $0f
	adc a                                            ; $4501: $8f
	ld a, [hl]                                       ; $4502: $7e
	add hl, sp                                       ; $4503: $39
	or $51                                           ; $4504: $f6 $51
	ldh [c], a                                       ; $4506: $e2
	ldh [$c1], a                                     ; $4507: $e0 $c1
	add b                                            ; $4509: $80
	rrca                                             ; $450a: $0f
	db $fc                                           ; $450b: $fc
	ld e, $38                                        ; $450c: $1e $38
	inc l                                            ; $450e: $2c
	ld a, b                                          ; $450f: $78
	ld c, h                                          ; $4510: $4c
	ret z                                            ; $4511: $c8

	adc h                                            ; $4512: $8c
	adc b                                            ; $4513: $88
	adc h                                            ; $4514: $8c
	adc b                                            ; $4515: $88
	inc b                                            ; $4516: $04
	inc b                                            ; $4517: $04
	ld b, $04                                        ; $4518: $06 $04
	dec de                                           ; $451a: $1b
	rrca                                             ; $451b: $0f
	scf                                              ; $451c: $37
	rra                                              ; $451d: $1f
	ld [hl], $3f                                     ; $451e: $36 $3f
	ld c, d                                          ; $4520: $4a
	ld a, a                                          ; $4521: $7f
	ld [$9abf], a                                    ; $4522: $ea $bf $9a
	rra                                              ; $4525: $1f
	ld [$0d0f], sp                                   ; $4526: $08 $0f $0d
	sbc l                                            ; $4529: $9d
	rrca                                             ; $452a: $0f
	ld a, [bc]                                       ; $452b: $0a
	ld e, e                                          ; $452c: $5b
	cp $9b                                           ; $452d: $fe $9b
	ld [de], a                                       ; $452f: $12
	rra                                              ; $4530: $1f
	ld [de], a                                       ; $4531: $12
	rra                                              ; $4532: $1f
	rst FarCall                                          ; $4533: $f7
	rst SubAFromDE                                          ; $4534: $df
	rra                                              ; $4535: $1f

jr_067_4536:
	add b                                            ; $4536: $80
	ld [hl], h                                       ; $4537: $74
	ld l, h                                          ; $4538: $6c
	add sp, -$68                                     ; $4539: $e8 $98
	rst SubAFromDE                                          ; $453b: $df
	ccf                                              ; $453c: $3f
	reti                                             ; $453d: $d9


	ld h, b                                          ; $453e: $60
	ld l, a                                          ; $453f: $6f
	sbc a                                            ; $4540: $9f
	or l                                             ; $4541: $b5
	ld a, b                                          ; $4542: $78
	ret c                                            ; $4543: $d8

	ldh [rAUD4LEN], a                                ; $4544: $e0 $20
	db $dd                                           ; $4546: $dd
	ld l, b                                          ; $4547: $68
	ldh a, [$a1]                                     ; $4548: $f0 $a1
	ret nz                                           ; $454a: $c0

	ld [hl], b                                       ; $454b: $70
	rst $38                                          ; $454c: $ff
	or b                                             ; $454d: $b0
	ret nz                                           ; $454e: $c0

	dec a                                            ; $454f: $3d
	cp $47                                           ; $4550: $fe $47
	db $e3                                           ; $4552: $e3
	ld a, c                                          ; $4553: $79
	ld hl, sp-$7c                                    ; $4554: $f8 $84
	sbc d                                            ; $4556: $9a
	add $72                                          ; $4557: $c6 $72
	ei                                               ; $4559: $fb
	adc c                                            ; $455a: $89
	call $c1e0                                       ; $455b: $cd $e0 $c1
	add b                                            ; $455e: $80
	xor $22                                          ; $455f: $ee $22
	ld a, a                                          ; $4561: $7f
	ld l, $37                                        ; $4562: $2e $37
	ld [de], a                                       ; $4564: $12
	ld e, $0c                                        ; $4565: $1e $0c
	ld e, $0c                                        ; $4567: $1e $0c
	inc a                                            ; $4569: $3c
	inc e                                            ; $456a: $1c
	ld l, h                                          ; $456b: $6c
	jr z, jr_067_4536                                ; $456c: $28 $c8

	ld c, b                                          ; $456e: $48
	adc b                                            ; $456f: $88
	adc b                                            ; $4570: $88
	ld c, h                                          ; $4571: $4c
	call nz, $e4a4                                   ; $4572: $c4 $a4 $e4
	sub $f2                                          ; $4575: $d6 $f2
	sbc e                                            ; $4577: $9b
	pop af                                           ; $4578: $f1
	rst $38                                          ; $4579: $ff
	db $eb                                           ; $457a: $eb
	rst GetHLinHL                                          ; $457b: $cf
	add h                                            ; $457c: $84
	rst JumpTable                                          ; $457d: $c7
	sbc l                                            ; $457e: $9d
	add b                                            ; $457f: $80
	jp $fe5b                                         ; $4580: $c3 $5b $fe


	sbc e                                            ; $4583: $9b
	ld b, e                                          ; $4584: $43
	ret nz                                           ; $4585: $c0

jr_067_4586:
	ld b, e                                          ; $4586: $43
	ret nz                                           ; $4587: $c0

	pop af                                           ; $4588: $f1
	rst SubAFromDE                                          ; $4589: $df
	ret nz                                           ; $458a: $c0

	add c                                            ; $458b: $81
	jr c, jr_067_4586                                ; $458c: $38 $f8

	add $fe                                          ; $458e: $c6 $fe
	or c                                             ; $4590: $b1
	ld a, a                                          ; $4591: $7f
	db $ec                                           ; $4592: $ec
	rra                                              ; $4593: $1f
	jp c, $b5e7                                      ; $4594: $da $e7 $b5

	ld a, e                                          ; $4597: $7b
	db $ec                                           ; $4598: $ec
	rra                                              ; $4599: $1f
	ld a, [$1d07]                                    ; $459a: $fa $07 $1d
	db $e3                                           ; $459d: $e3
	ld d, $39                                        ; $459e: $16 $39
	ld c, c                                          ; $45a0: $49
	sbc [hl]                                         ; $45a1: $9e
	and h                                            ; $45a2: $a4
	rst GetHLinHL                                          ; $45a3: $cf
	or $4f                                           ; $45a4: $f6 $4f
	jp c, $ab67                                      ; $45a6: $da $67 $ab

	ld [hl], a                                       ; $45a9: $77
	ldh [$c1], a                                     ; $45aa: $e0 $c1
	sbc h                                            ; $45ac: $9c
	ld e, [hl]                                       ; $45ad: $5e
	inc bc                                           ; $45ae: $03
	ld a, [hl]                                       ; $45af: $7e
	ld a, e                                          ; $45b0: $7b
	cp $9a                                           ; $45b1: $fe $9a
	ld a, h                                          ; $45b3: $7c
	rlca                                             ; $45b4: $07
	ld a, h                                          ; $45b5: $7c
	rlca                                             ; $45b6: $07
	db $fc                                           ; $45b7: $fc
	ld [hl], e                                       ; $45b8: $73
	cp $9a                                           ; $45b9: $fe $9a
	ld a, h                                          ; $45bb: $7c
	ld b, $7c                                        ; $45bc: $06 $7c

jr_067_45be:
	inc b                                            ; $45be: $04
	inc a                                            ; $45bf: $3c
	ld a, e                                          ; $45c0: $7b
	cp $93                                           ; $45c1: $fe $93
	ld e, $02                                        ; $45c3: $1e $02
	sbc [hl]                                         ; $45c5: $9e
	inc bc                                           ; $45c6: $03
	adc $82                                          ; $45c7: $ce $82
	rst GetHLinHL                                          ; $45c9: $cf
	add c                                            ; $45ca: $81
	rst GetHLinHL                                          ; $45cb: $cf
	add c                                            ; $45cc: $81
	rst JumpTable                                          ; $45cd: $c7
	add b                                            ; $45ce: $80
	ld [hl], a                                       ; $45cf: $77
	cp $6f                                           ; $45d0: $fe $6f
	ld e, [hl]                                       ; $45d2: $5e
	sbc [hl]                                         ; $45d3: $9e
	pop bc                                           ; $45d4: $c1
	add hl, hl                                       ; $45d5: $29
	db $10                                           ; $45d6: $10
	rst SubAFromDE                                          ; $45d7: $df
	add b                                            ; $45d8: $80
	add d                                            ; $45d9: $82
	ld b, b                                          ; $45da: $40
	ret nz                                           ; $45db: $c0

	jr nz, jr_067_45be                               ; $45dc: $20 $e0

	db $10                                           ; $45de: $10
	ldh a, [hDisp1_SCY]                                     ; $45df: $f0 $90
	ldh a, [rOBP0]                                   ; $45e1: $f0 $48
	ld hl, sp+$28                                    ; $45e3: $f8 $28
	ld hl, sp-$6c                                    ; $45e5: $f8 $94
	db $fc                                           ; $45e7: $fc
	call nc, $4afc                                   ; $45e8: $d4 $fc $4a
	cp $6a                                           ; $45eb: $fe $6a
	cp $26                                           ; $45ed: $fe $26
	cp $36                                           ; $45ef: $fe $36
	cp $13                                           ; $45f1: $fe $13
	rst $38                                          ; $45f3: $ff
	sbc e                                            ; $45f4: $9b
	rst $38                                          ; $45f5: $ff
	adc c                                            ; $45f6: $89
	ld a, e                                          ; $45f7: $7b
	cp $9c                                           ; $45f8: $fe $9c
	ret                                              ; $45fa: $c9


	rst $38                                          ; $45fb: $ff
	ld b, l                                          ; $45fc: $45
	ld a, e                                          ; $45fd: $7b
	cp $98                                           ; $45fe: $fe $98
	push bc                                          ; $4600: $c5
	rst $38                                          ; $4601: $ff
	ld h, l                                          ; $4602: $65
	rst $38                                          ; $4603: $ff
	push af                                          ; $4604: $f5
	rst $38                                          ; $4605: $ff
	dec h                                            ; $4606: $25
	ld a, e                                          ; $4607: $7b
	cp $96                                           ; $4608: $fe $96
	and l                                            ; $460a: $a5
	rst $38                                          ; $460b: $ff
	jp hl                                            ; $460c: $e9


	rst $38                                          ; $460d: $ff
	ld a, [hl+]                                      ; $460e: $2a
	cp $2a                                           ; $460f: $fe $2a
	cp $52                                           ; $4611: $fe $52
	ld a, e                                          ; $4613: $7b
	cp $90                                           ; $4614: $fe $90
	ld d, h                                          ; $4616: $54
	db $fc                                           ; $4617: $fc
	ld d, h                                          ; $4618: $54
	db $fc                                           ; $4619: $fc
	and h                                            ; $461a: $a4
	db $fc                                           ; $461b: $fc
	xor b                                            ; $461c: $a8

jr_067_461d:
	ld hl, sp-$58                                    ; $461d: $f8 $a8
	ld hl, sp+$48                                    ; $461f: $f8 $48
	ld hl, sp+$50                                    ; $4621: $f8 $50
	ldh a, [$50]                                     ; $4623: $f0 $50
	ld a, e                                          ; $4625: $7b
	cp d                                             ; $4626: $ba
	sbc l                                            ; $4627: $9d
	and b                                            ; $4628: $a0
	ldh [rPCM34], a                                  ; $4629: $e0 $77
	cp $df                                           ; $462b: $fe $df
	ret nz                                           ; $462d: $c0

	add b                                            ; $462e: $80
	ld h, b                                          ; $462f: $60
	ldh [$b0], a                                     ; $4630: $e0 $b0
	ldh a, [hDisp0_WY]                                     ; $4632: $f0 $88
	ld hl, sp+$46                                    ; $4634: $f8 $46
	cp $4f                                           ; $4636: $fe $4f
	pop af                                           ; $4638: $f1
	cp a                                             ; $4639: $bf
	ld h, b                                          ; $463a: $60
	rst $38                                          ; $463b: $ff
	jr nz, jr_067_461d                               ; $463c: $20 $df

	jr nc, @+$01                                     ; $463e: $30 $ff

	db $10                                           ; $4640: $10
	ld [$0818], sp                                   ; $4641: $08 $18 $08
	ld [$0404], sp                                   ; $4644: $08 $04 $04
	inc e                                            ; $4647: $1c
	inc a                                            ; $4648: $3c
	ld h, b                                          ; $4649: $60
	ldh a, [$80]                                     ; $464a: $f0 $80
	ldh [$60], a                                     ; $464c: $e0 $60
	sbc d                                            ; $464e: $9a
	ld [hl], b                                       ; $464f: $70
	jr jr_067_466e                                   ; $4650: $18 $1c

	ld b, $07                                        ; $4652: $06 $07
	db $dd                                           ; $4654: $dd
	add c                                            ; $4655: $81
	sub [hl]                                         ; $4656: $96
	add d                                            ; $4657: $82
	add e                                            ; $4658: $83
	call nz, $c946                                   ; $4659: $c4 $46 $c9
	ld c, l                                          ; $465c: $4d
	pop af                                           ; $465d: $f1
	add hl, sp                                       ; $465e: $39
	pop af                                           ; $465f: $f1
	add hl, hl                                       ; $4660: $29
	db $10                                           ; $4661: $10
	rst SubAFromDE                                          ; $4662: $df
	add b                                            ; $4663: $80
	ld a, a                                          ; $4664: $7f
	or [hl]                                          ; $4665: $b6
	ld a, a                                          ; $4666: $7f
	ld h, d                                          ; $4667: $62
	add b                                            ; $4668: $80
	inc c                                            ; $4669: $0c
	db $fc                                           ; $466a: $fc
	inc bc                                           ; $466b: $03
	rst $38                                          ; $466c: $ff
	rst $38                                          ; $466d: $ff

jr_067_466e:
	nop                                              ; $466e: $00
	ld a, a                                          ; $466f: $7f
	nop                                              ; $4670: $00
	ccf                                              ; $4671: $3f
	nop                                              ; $4672: $00
	ld a, $01                                        ; $4673: $3e $01
	rra                                              ; $4675: $1f
	inc bc                                           ; $4676: $03
	dec e                                            ; $4677: $1d
	ld b, $1a                                        ; $4678: $06 $1a
	inc c                                            ; $467a: $0c
	jr nc, jr_067_4699                               ; $467b: $30 $1c

	inc h                                            ; $467d: $24
	jr c, jr_067_46cc                                ; $467e: $38 $4c

	ld [hl], b                                       ; $4680: $70
	ld c, h                                          ; $4681: $4c
	ld [hl], b                                       ; $4682: $70
	sbc h                                            ; $4683: $9c
	ldh [$b8], a                                     ; $4684: $e0 $b8
	ret nz                                           ; $4686: $c0

	ld a, b                                          ; $4687: $78
	sbc e                                            ; $4688: $9b
	add b                                            ; $4689: $80
	pop af                                           ; $468a: $f1
	nop                                              ; $468b: $00
	pop af                                           ; $468c: $f1
	ld l, e                                          ; $468d: $6b
	ld [hl], $df                                     ; $468e: $36 $df
	ldh a, [$7f]                                     ; $4690: $f0 $7f
	jp nc, $089d                                     ; $4692: $d2 $9d $08

	ld hl, sp+$67                                    ; $4695: $f8 $67
	cp $93                                           ; $4697: $fe $93

jr_067_4699:
	inc d                                            ; $4699: $14
	db $fc                                           ; $469a: $fc
	inc d                                            ; $469b: $14
	db $fc                                           ; $469c: $fc
	inc h                                            ; $469d: $24
	db $fc                                           ; $469e: $fc
	inc b                                            ; $469f: $04
	db $fc                                           ; $46a0: $fc
	ld [de], a                                       ; $46a1: $12
	xor $32                                          ; $46a2: $ee $32
	adc $23                                          ; $46a4: $ce $23
	nop                                              ; $46a6: $00
	sub e                                            ; $46a7: $93
	adc b                                            ; $46a8: $88
	db $dd                                           ; $46a9: $dd
	xor d                                            ; $46aa: $aa
	adc b                                            ; $46ab: $88
	ld [$ee99], sp                                   ; $46ac: $08 $99 $ee
	ld [hl+], a                                      ; $46af: $22
	add b                                            ; $46b0: $80
	ld [$c499], sp                                   ; $46b1: $08 $99 $c4
	ld [hl], a                                       ; $46b4: $77
	ei                                               ; $46b5: $fb
	sbc l                                            ; $46b6: $9d
	sub c                                            ; $46b7: $91
	inc sp                                           ; $46b8: $33
	ld [hl], e                                       ; $46b9: $73
	ei                                               ; $46ba: $fb
	ld a, e                                          ; $46bb: $7b
	db $ec                                           ; $46bc: $ec
	sbc l                                            ; $46bd: $9d
	sub c                                            ; $46be: $91
	ld de, $88de                                     ; $46bf: $11 $de $88
	sbc d                                            ; $46c2: $9a
	call z, $dd11                                    ; $46c3: $cc $11 $dd
	ld [hl+], a                                      ; $46c6: $22
	db $dd                                           ; $46c7: $dd
	sub c                                            ; $46c8: $91
	ld bc, $9398                                     ; $46c9: $01 $98 $93

jr_067_46cc:
	nop                                              ; $46cc: $00
	add c                                            ; $46cd: $81
	ld [de], a                                       ; $46ce: $12
	add b                                            ; $46cf: $80
	ld [de], a                                       ; $46d0: $12
	add h                                            ; $46d1: $84
	ld a, e                                          ; $46d2: $7b
	cp $80                                           ; $46d3: $fe $80
	inc h                                            ; $46d5: $24
	sub d                                            ; $46d6: $92
	dec h                                            ; $46d7: $25
	sub d                                            ; $46d8: $92
	cp a                                             ; $46d9: $bf
	sub d                                            ; $46da: $92
	rst $38                                          ; $46db: $ff
	sub d                                            ; $46dc: $92
	cp a                                             ; $46dd: $bf
	jp nc, $dbb6                                     ; $46de: $d2 $b6 $db

	ld l, l                                          ; $46e1: $6d
	ld e, e                                          ; $46e2: $5b
	ld e, a                                          ; $46e3: $5f
	ld l, c                                          ; $46e4: $69
	ld [hl], $2d                                     ; $46e5: $36 $2d
	daa                                              ; $46e7: $27
	inc a                                            ; $46e8: $3c
	inc de                                           ; $46e9: $13
	ld e, $09                                        ; $46ea: $1e $09
	rrca                                             ; $46ec: $0f
	dec c                                            ; $46ed: $0d
	rrca                                             ; $46ee: $0f
	ld a, [bc]                                       ; $46ef: $0a
	rrca                                             ; $46f0: $0f
	add hl, bc                                       ; $46f1: $09
	rrca                                             ; $46f2: $0f
	dec d                                            ; $46f3: $15
	add b                                            ; $46f4: $80
	rra                                              ; $46f5: $1f
	rla                                              ; $46f6: $17
	dec e                                            ; $46f7: $1d
	ld d, $1d                                        ; $46f8: $16 $1d
	daa                                              ; $46fa: $27
	inc a                                            ; $46fb: $3c
	ld l, $3d                                        ; $46fc: $2e $3d
	ld l, $3d                                        ; $46fe: $2e $3d
	ld d, [hl]                                       ; $4700: $56
	ld [hl], l                                       ; $4701: $75
	ld d, h                                          ; $4702: $54
	ld [hl], a                                       ; $4703: $77
	ld d, d                                          ; $4704: $52
	ld [hl], e                                       ; $4705: $73
	ld h, d                                          ; $4706: $62
	ld h, e                                          ; $4707: $63
	ld h, c                                          ; $4708: $61
	ld h, c                                          ; $4709: $61
	ld hl, $6421                                     ; $470a: $21 $21 $64
	inc sp                                           ; $470d: $33
	ld [hl], h                                       ; $470e: $74
	inc hl                                           ; $470f: $23
	inc [hl]                                         ; $4710: $34
	ld h, e                                          ; $4711: $63
	jr nc, jr_067_477b                               ; $4712: $30 $67

	sbc [hl]                                         ; $4714: $9e
	cp b                                             ; $4715: $b8
	ld a, e                                          ; $4716: $7b
	cp $9d                                           ; $4717: $fe $9d
	xor b                                            ; $4719: $a8
	ld [hl], a                                       ; $471a: $77
	ld [hl], a                                       ; $471b: $77
	cp $80                                           ; $471c: $fe $80
	add sp, $37                                      ; $471e: $e8 $37
	call nc, $d43b                                   ; $4720: $d4 $3b $d4
	dec sp                                           ; $4723: $3b
	ld l, h                                          ; $4724: $6c
	sbc e                                            ; $4725: $9b
	add sp, -$61                                     ; $4726: $e8 $9f
	or h                                             ; $4728: $b4
	rst GetHLinHL                                          ; $4729: $cf

jr_067_472a:
	ld d, [hl]                                       ; $472a: $56
	rst AddAOntoHL                                          ; $472b: $ef
	xor e                                            ; $472c: $ab
	ld [hl], a                                       ; $472d: $77
	or e                                             ; $472e: $b3
	rst $38                                          ; $472f: $ff
	reti                                             ; $4730: $d9


	rst $38                                          ; $4731: $ff
	db $ec                                           ; $4732: $ec
	rst $38                                          ; $4733: $ff
	ld e, [hl]                                       ; $4734: $5e
	rst SubAFromDE                                          ; $4735: $df
	ld b, c                                          ; $4736: $41
	pop bc                                           ; $4737: $c1
	ld h, b                                          ; $4738: $60
	ldh [$60], a                                     ; $4739: $e0 $60
	ldh [$50], a                                     ; $473b: $e0 $50
	add b                                            ; $473d: $80
	ldh a, [$50]                                     ; $473e: $f0 $50
	ldh a, [rOBP0]                                   ; $4740: $f0 $48
	ld hl, sp+$4c                                    ; $4742: $f8 $4c
	db $fc                                           ; $4744: $fc
	ld a, [hl+]                                      ; $4745: $2a
	cp $29                                           ; $4746: $fe $29
	rst $38                                          ; $4748: $ff
	dec h                                            ; $4749: $25
	rst $38                                          ; $474a: $ff
	rla                                              ; $474b: $17
	rst $38                                          ; $474c: $ff
	ld h, e                                          ; $474d: $63
	rst JumpTable                                          ; $474e: $c7
	add a                                            ; $474f: $87
	call z, $98c8                                    ; $4750: $cc $c8 $98
	ret nc                                           ; $4753: $d0

	sub b                                            ; $4754: $90
	ret nc                                           ; $4755: $d0

	sub b                                            ; $4756: $90
	or b                                             ; $4757: $b0
	ret nc                                           ; $4758: $d0

	sub b                                            ; $4759: $90
	ldh a, [$d0]                                     ; $475a: $f0 $d0
	ldh a, [hDisp0_BGP]                                     ; $475c: $f0 $85
	add sp, -$48                                     ; $475e: $e8 $b8
	ld hl, sp-$68                                    ; $4760: $f8 $98
	db $fc                                           ; $4762: $fc
	adc h                                            ; $4763: $8c
	ldh a, [hLCDCIntHandlerIdx]                                     ; $4764: $f0 $81
	pop af                                           ; $4766: $f1
	add c                                            ; $4767: $81
	pop af                                           ; $4768: $f1
	add b                                            ; $4769: $80
	ld [hl], e                                       ; $476a: $73
	ret nz                                           ; $476b: $c0

	ld [hl], e                                       ; $476c: $73
	ret nz                                           ; $476d: $c0

	ld [hl], a                                       ; $476e: $77
	push hl                                          ; $476f: $e5
	db $dd                                           ; $4770: $dd
	sub [hl]                                         ; $4771: $96
	rra                                              ; $4772: $1f
	ld a, [bc]                                       ; $4773: $0a
	ld c, $0b                                        ; $4774: $0e $0b
	rrca                                             ; $4776: $0f
	dec bc                                           ; $4777: $0b
	ld a, e                                          ; $4778: $7b
	db $fd                                           ; $4779: $fd
	sub l                                            ; $477a: $95

jr_067_477b:
	ld c, $0f                                        ; $477b: $0e $0f
	inc c                                            ; $477d: $0c
	dec c                                            ; $477e: $0d
	inc c                                            ; $477f: $0c
	dec c                                            ; $4780: $0d
	ld [$0001], sp                                   ; $4781: $08 $01 $00
	nop                                              ; $4784: $00
	db $dd                                           ; $4785: $dd
	rst $38                                          ; $4786: $ff
	ld a, a                                          ; $4787: $7f
	ei                                               ; $4788: $fb
	add b                                            ; $4789: $80
	ccf                                              ; $478a: $3f
	and $e7                                          ; $478b: $e6 $e7
	cp d                                             ; $478d: $ba
	cp [hl]                                          ; $478e: $be
	dec h                                            ; $478f: $25
	ld l, h                                          ; $4790: $6c
	rst $38                                          ; $4791: $ff
	inc e                                            ; $4792: $1c
	inc bc                                           ; $4793: $03
	nop                                              ; $4794: $00
	rlca                                             ; $4795: $07
	nop                                              ; $4796: $00
	rrca                                             ; $4797: $0f
	rrca                                             ; $4798: $0f
	db $10                                           ; $4799: $10
	db $10                                           ; $479a: $10
	rra                                              ; $479b: $1f
	rrca                                             ; $479c: $0f
	rra                                              ; $479d: $1f
	ld bc, $063e                                     ; $479e: $01 $3e $06
	dec a                                            ; $47a1: $3d
	inc c                                            ; $47a2: $0c
	ccf                                              ; $47a3: $3f
	add hl, bc                                       ; $47a4: $09
	ld a, a                                          ; $47a5: $7f
	rrca                                             ; $47a6: $0f
	ld a, h                                          ; $47a7: $7c
	jr c, jr_067_472a                                ; $47a8: $38 $80

	rst $38                                          ; $47aa: $ff
	rst AddAOntoHL                                          ; $47ab: $ef
	ldh a, [rAUD1SWEEP]                              ; $47ac: $f0 $10
	ld [hl], l                                       ; $47ae: $75
	cp e                                             ; $47af: $bb
	db $fd                                           ; $47b0: $fd
	xor e                                            ; $47b1: $ab
	add sp, -$41                                     ; $47b2: $e8 $bf
	cp h                                             ; $47b4: $bc
	ld d, a                                          ; $47b5: $57
	db $fc                                           ; $47b6: $fc
	ld d, a                                          ; $47b7: $57
	ld d, [hl]                                       ; $47b8: $56
	ei                                               ; $47b9: $fb
	cp e                                             ; $47ba: $bb
	db $ed                                           ; $47bb: $ed
	cp l                                             ; $47bc: $bd
	xor $ab                                          ; $47bd: $ee $ab
	rst $38                                          ; $47bf: $ff
	push de                                          ; $47c0: $d5
	ld a, a                                          ; $47c1: $7f
	push de                                          ; $47c2: $d5
	ld a, a                                          ; $47c3: $7f
	db $eb                                           ; $47c4: $eb
	ccf                                              ; $47c5: $3f
	db $fd                                           ; $47c6: $fd
	sbc a                                            ; $47c7: $9f
	rst FarCall                                          ; $47c8: $f7
	add b                                            ; $47c9: $80
	rra                                              ; $47ca: $1f
	pop af                                           ; $47cb: $f1
	db $db                                           ; $47cc: $db
	pop af                                           ; $47cd: $f1
	sbc e                                            ; $47ce: $9b
	pop af                                           ; $47cf: $f1
	dec de                                           ; $47d0: $1b
	pop af                                           ; $47d1: $f1
	dec de                                           ; $47d2: $1b
	ldh a, [c]                                       ; $47d3: $f2
	inc de                                           ; $47d4: $13
	ldh [c], a                                       ; $47d5: $e2
	scf                                              ; $47d6: $37
	ldh [c], a                                       ; $47d7: $e2
	scf                                              ; $47d8: $37
	db $e4                                           ; $47d9: $e4
	rst FarCall                                          ; $47da: $f7
	inc [hl]                                         ; $47db: $34
	rra                                              ; $47dc: $1f
	db $dd                                           ; $47dd: $dd
	adc a                                            ; $47de: $8f
	db $ed                                           ; $47df: $ed
	rst JumpTable                                          ; $47e0: $c7
	scf                                              ; $47e1: $37
	inc hl                                           ; $47e2: $23
	sbc e                                            ; $47e3: $9b
	sub e                                            ; $47e4: $93
	res 1, c                                         ; $47e5: $cb $89
	rst AddAOntoHL                                          ; $47e7: $ef
	pop bc                                           ; $47e8: $c1
	sbc c                                            ; $47e9: $99
	rlca                                             ; $47ea: $07
	ld bc, $c1f7                                     ; $47eb: $01 $f7 $c1
	rra                                              ; $47ee: $1f
	ld bc, $8013                                     ; $47ef: $01 $13 $80
	ld [hl], e                                       ; $47f2: $73
	ld a, [hl]                                       ; $47f3: $7e
	sbc l                                            ; $47f4: $9d
	cp e                                             ; $47f5: $bb
	cp [hl]                                          ; $47f6: $be
	inc bc                                           ; $47f7: $03
	add b                                            ; $47f8: $80
	daa                                              ; $47f9: $27
	add b                                            ; $47fa: $80
	ld a, a                                          ; $47fb: $7f
	add h                                            ; $47fc: $84
	ld [hl], e                                       ; $47fd: $73
	ld a, [hl]                                       ; $47fe: $7e
	inc bc                                           ; $47ff: $03
	add b                                            ; $4800: $80
	rra                                              ; $4801: $1f
	add b                                            ; $4802: $80
	ld a, e                                          ; $4803: $7b
	ld a, [hl]                                       ; $4804: $7e
	sbc l                                            ; $4805: $9d
	ei                                               ; $4806: $fb
	rst $38                                          ; $4807: $ff
	inc bc                                           ; $4808: $03
	add b                                            ; $4809: $80
	rra                                              ; $480a: $1f
	add b                                            ; $480b: $80
	ld [hl], a                                       ; $480c: $77
	ld a, [hl]                                       ; $480d: $7e
	inc bc                                           ; $480e: $03
	add b                                            ; $480f: $80
	inc de                                           ; $4810: $13
	add b                                            ; $4811: $80
	sbc d                                            ; $4812: $9a
	nop                                              ; $4813: $00
	ei                                               ; $4814: $fb
	rst SubAFromBC                                          ; $4815: $e7
	rst $38                                          ; $4816: $ff
	ld a, [hl]                                       ; $4817: $7e
	inc bc                                           ; $4818: $03
	add b                                            ; $4819: $80
	rra                                              ; $481a: $1f
	add b                                            ; $481b: $80
	ld a, e                                          ; $481c: $7b
	ld a, [hl]                                       ; $481d: $7e
	rla                                              ; $481e: $17
	add b                                            ; $481f: $80
	adc d                                            ; $4820: $8a
	ld sp, $b0e0                                     ; $4821: $31 $e0 $b0
	ldh [$dc], a                                     ; $4824: $e0 $dc
	ld [hl], b                                       ; $4826: $70
	db $fc                                           ; $4827: $fc
	cp b                                             ; $4828: $b8
	ld a, [hl]                                       ; $4829: $7e
	ret nz                                           ; $482a: $c0

	xor [hl]                                         ; $482b: $ae
	ldh [$fe], a                                     ; $482c: $e0 $fe
	ld [hl], b                                       ; $482e: $70
	inc e                                            ; $482f: $1c
	nop                                              ; $4830: $00
	inc bc                                           ; $4831: $03
	nop                                              ; $4832: $00
	scf                                              ; $4833: $37
	ld e, $1c                                        ; $4834: $1e $1c
	db $fc                                           ; $4836: $fc
	sbc c                                            ; $4837: $99
	add b                                            ; $4838: $80
	nop                                              ; $4839: $00
	pop hl                                           ; $483a: $e1
	ret nz                                           ; $483b: $c0

	ccf                                              ; $483c: $3f
	di                                               ; $483d: $f3
	ccf                                              ; $483e: $3f
	ldh [$9b], a                                     ; $483f: $e0 $9b
	inc sp                                           ; $4841: $33
	scf                                              ; $4842: $37
	ld a, $1c                                        ; $4843: $3e $1c
	ld [hl], a                                       ; $4845: $77
	sbc $1f                                          ; $4846: $de $1f
	ldh [$9a], a                                     ; $4848: $e0 $9a
	ccf                                              ; $484a: $3f
	ld e, $1e                                        ; $484b: $1e $1e
	inc c                                            ; $484d: $0c
	inc c                                            ; $484e: $0c
	rla                                              ; $484f: $17
	ldh [$df], a                                     ; $4850: $e0 $df
	rra                                              ; $4852: $1f
	ld a, e                                          ; $4853: $7b
	sbc $9e                                          ; $4854: $de $9e
	adc h                                            ; $4856: $8c
	ld [hl], e                                       ; $4857: $73
	ldh [$7c], a                                     ; $4858: $e0 $7c
	ld [bc], a                                       ; $485a: $02
	di                                               ; $485b: $f3
	db $db                                           ; $485c: $db
	ld bc, $0293                                     ; $485d: $01 $93 $02
	inc bc                                           ; $4860: $03
	dec b                                            ; $4861: $05
	ld b, $0b                                        ; $4862: $06 $0b
	inc c                                            ; $4864: $0c
	dec d                                            ; $4865: $15
	dec de                                           ; $4866: $1b
	ld [de], a                                       ; $4867: $12
	rra                                              ; $4868: $1f
	dec c                                            ; $4869: $0d
	ld c, $77                                        ; $486a: $0e $77
	ldh a, [c]                                       ; $486c: $f2
	adc a                                            ; $486d: $8f
	inc bc                                           ; $486e: $03
	ld [bc], a                                       ; $486f: $02
	dec b                                            ; $4870: $05
	ld b, $07                                        ; $4871: $06 $07
	inc b                                            ; $4873: $04
	rlca                                             ; $4874: $07
	inc b                                            ; $4875: $04
	dec bc                                           ; $4876: $0b
	inc c                                            ; $4877: $0c
	ld c, $09                                        ; $4878: $0e $09
	ld c, $09                                        ; $487a: $0e $09
	dec c                                            ; $487c: $0d
	ld a, [bc]                                       ; $487d: $0a
	ld h, a                                          ; $487e: $67
	cp $93                                           ; $487f: $fe $93
	rrca                                             ; $4881: $0f
	ld a, [bc]                                       ; $4882: $0a
	dec bc                                           ; $4883: $0b
	ld c, $07                                        ; $4884: $0e $07
	ld b, $07                                        ; $4886: $06 $07
	ld b, $03                                        ; $4888: $06 $03
	ld [bc], a                                       ; $488a: $02
	ld [bc], a                                       ; $488b: $02
	inc bc                                           ; $488c: $03
	db $dd                                           ; $488d: $dd
	ld bc, $d1e0                                     ; $488e: $01 $e0 $d1
	rst SubAFromDE                                          ; $4891: $df
	inc bc                                           ; $4892: $03
	add b                                            ; $4893: $80
	inc c                                            ; $4894: $0c
	rrca                                             ; $4895: $0f
	rla                                              ; $4896: $17
	jr jr_067_48c8                                   ; $4897: $18 $2f

	jr nc, @+$61                                     ; $4899: $30 $5f

	ld h, b                                          ; $489b: $60
	ld a, a                                          ; $489c: $7f
	ld b, b                                          ; $489d: $40
	cp a                                             ; $489e: $bf
	ret nz                                           ; $489f: $c0

	rst $38                                          ; $48a0: $ff
	add b                                            ; $48a1: $80
	cp $81                                           ; $48a2: $fe $81
	ld a, [hl]                                       ; $48a4: $7e
	add c                                            ; $48a5: $81
	inc a                                            ; $48a6: $3c
	jp $e3dc                                         ; $48a7: $c3 $dc $e3


	inc a                                            ; $48aa: $3c
	di                                               ; $48ab: $f3
	adc $39                                          ; $48ac: $ce $39
	add [hl]                                         ; $48ae: $86
	ld a, l                                          ; $48af: $7d

jr_067_48b0:
	jp nz, $21ff                                     ; $48b0: $c2 $ff $21

	sbc h                                            ; $48b3: $9c
	rst $38                                          ; $48b4: $ff
	sub b                                            ; $48b5: $90
	ld a, a                                          ; $48b6: $7f
	db $ed                                           ; $48b7: $ed
	rst SubAFromDE                                          ; $48b8: $df
	rlca                                             ; $48b9: $07
	add l                                            ; $48ba: $85
	dec de                                           ; $48bb: $1b
	inc e                                            ; $48bc: $1c
	cpl                                              ; $48bd: $2f
	ld sp, $665f                                     ; $48be: $31 $5f $66
	cp l                                             ; $48c1: $bd
	jp z, $97fb                                      ; $48c2: $ca $fb $97

	pop de                                           ; $48c5: $d1
	ld h, $a2                                        ; $48c6: $26 $a2

jr_067_48c8:
	ld c, h                                          ; $48c8: $4c
	ld d, l                                          ; $48c9: $55
	adc b                                            ; $48ca: $88
	ld a, [bc]                                       ; $48cb: $0a
	sub c                                            ; $48cc: $91
	and l                                            ; $48cd: $a5
	ld [de], a                                       ; $48ce: $12
	inc h                                            ; $48cf: $24
	ld [bc], a                                       ; $48d0: $02
	ld a, [bc]                                       ; $48d1: $0a
	inc b                                            ; $48d2: $04
	ld c, b                                          ; $48d3: $48
	inc b                                            ; $48d4: $04
	ldh [$c1], a                                     ; $48d5: $e0 $c1
	ld e, a                                          ; $48d7: $5f
	ld a, [hl-]                                      ; $48d8: $3a
	rst SubAFromDE                                          ; $48d9: $df
	ccf                                              ; $48da: $3f
	sbc h                                            ; $48db: $9c
	rst $38                                          ; $48dc: $ff
	ret nz                                           ; $48dd: $c0

	rst $38                                          ; $48de: $ff
	cp d                                             ; $48df: $ba

jr_067_48e0:
	inc bc                                           ; $48e0: $03
	nop                                              ; $48e1: $00
	db $10                                           ; $48e2: $10
	jr nc, @+$72                                     ; $48e3: $30 $70

	ld hl, sp-$04                                    ; $48e5: $f8 $fc
	adc h                                            ; $48e7: $8c
	jr nz, @-$02                                     ; $48e8: $20 $fc

	jr nc, @-$06                                     ; $48ea: $30 $f8

	jr nc, @-$06                                     ; $48ec: $30 $f8

	jr nz, jr_067_48e0                               ; $48ee: $20 $f0

	ld h, b                                          ; $48f0: $60
	di                                               ; $48f1: $f3
	ld b, c                                          ; $48f2: $41
	or $43                                           ; $48f3: $f6 $43
	db $fc                                           ; $48f5: $fc
	rst JumpTable                                          ; $48f6: $c7
	ld hl, sp-$72                                    ; $48f7: $f8 $8e
	ldh a, [$9d]                                     ; $48f9: $f0 $9d
	push af                                          ; $48fb: $f5
	rst SubAFromDE                                          ; $48fc: $df
	rra                                              ; $48fd: $1f
	ld a, [hl]                                       ; $48fe: $7e
	di                                               ; $48ff: $f3
	rst SubAFromDE                                          ; $4900: $df
	inc bc                                           ; $4901: $03
	rst SubAFromDE                                          ; $4902: $df
	rst $38                                          ; $4903: $ff
	sbc b                                            ; $4904: $98
	ld a, a                                          ; $4905: $7f
	add b                                            ; $4906: $80
	rst $38                                          ; $4907: $ff
	ld a, a                                          ; $4908: $7f
	rst $38                                          ; $4909: $ff
	add b                                            ; $490a: $80
	rst $38                                          ; $490b: $ff
	ld a, e                                          ; $490c: $7b
	ret nz                                           ; $490d: $c0

	adc l                                            ; $490e: $8d
	ld hl, sp+$07                                    ; $490f: $f8 $07
	rst SubAFromBC                                          ; $4911: $e7
	jr jr_067_48b0                                   ; $4912: $18 $9c

	ld h, e                                          ; $4914: $63
	ld d, e                                          ; $4915: $53
	adc h                                            ; $4916: $8c
	xor l                                            ; $4917: $ad
	db $10                                           ; $4918: $10
	dec de                                           ; $4919: $1b
	jr nz, jr_067_492e                               ; $491a: $20 $12

	ld h, c                                          ; $491c: $61
	inc h                                            ; $491d: $24
	ld b, e                                          ; $491e: $43
	and l                                            ; $491f: $a5
	ld b, d                                          ; $4920: $42
	ldh [$c1], a                                     ; $4921: $e0 $c1
	add b                                            ; $4923: $80
	ld a, [hl+]                                      ; $4924: $2a
	rst $38                                          ; $4925: $ff
	xor d                                            ; $4926: $aa
	rst $38                                          ; $4927: $ff
	xor l                                            ; $4928: $ad
	rst $38                                          ; $4929: $ff
	rst SubAFromHL                                          ; $492a: $d7
	rst $38                                          ; $492b: $ff
	rst $38                                          ; $492c: $ff
	ld sp, hl                                        ; $492d: $f9

jr_067_492e:
	rst $38                                          ; $492e: $ff
	inc bc                                           ; $492f: $03
	cp $03                                           ; $4930: $fe $03
	rlca                                             ; $4932: $07
	inc bc                                           ; $4933: $03
	add l                                            ; $4934: $85
	dec b                                            ; $4935: $05
	db $fc                                           ; $4936: $fc
	ld b, $7e                                        ; $4937: $06 $7e
	rrca                                             ; $4939: $0f
	ld [hl], a                                       ; $493a: $77
	dec b                                            ; $493b: $05
	dec [hl]                                         ; $493c: $35
	inc e                                            ; $493d: $1c
	dec a                                            ; $493e: $3d
	jr jr_067_496a                                   ; $493f: $18 $29

	add hl, bc                                       ; $4941: $09
	add hl, hl                                       ; $4942: $29
	adc [hl]                                         ; $4943: $8e
	ld sp, $3072                                     ; $4944: $31 $72 $30
	ld d, d                                          ; $4947: $52
	inc de                                           ; $4948: $13
	db $d3                                           ; $4949: $d3
	ld h, e                                          ; $494a: $63
	push af                                          ; $494b: $f5
	pop hl                                           ; $494c: $e1
	dec a                                            ; $494d: $3d
	or $5f                                           ; $494e: $f6 $5f
	ld a, [hl]                                       ; $4950: $7e
	ld l, a                                          ; $4951: $6f
	db $fc                                           ; $4952: $fc
	ld [hl], a                                       ; $4953: $77
	cp $57                                           ; $4954: $fe $57
	ld h, $df                                        ; $4956: $26 $df
	add e                                            ; $4958: $83
	add b                                            ; $4959: $80
	ld h, e                                          ; $495a: $63
	db $e3                                           ; $495b: $e3
	rst $38                                          ; $495c: $ff
	dec e                                            ; $495d: $1d
	cp l                                             ; $495e: $bd
	rst GetHLinHL                                          ; $495f: $cf
	halt                                             ; $4960: $76
	rst AddAOntoHL                                          ; $4961: $ef
	dec e                                            ; $4962: $1d
	rst FarCall                                          ; $4963: $f7
	adc [hl]                                         ; $4964: $8e
	ld a, a                                          ; $4965: $7f
	push bc                                          ; $4966: $c5
	rst $38                                          ; $4967: $ff
	or [hl]                                          ; $4968: $b6
	ld a, a                                          ; $4969: $7f

jr_067_496a:
	inc c                                            ; $496a: $0c
	rst $38                                          ; $496b: $ff
	db $e4                                           ; $496c: $e4
	rra                                              ; $496d: $1f
	ld [hl], l                                       ; $496e: $75
	cp $ed                                           ; $496f: $fe $ed
	ld e, $c4                                        ; $4971: $1e $c4
	ccf                                              ; $4973: $3f
	dec [hl]                                         ; $4974: $35
	cp $7c                                           ; $4975: $fe $7c
	adc a                                            ; $4977: $8f
	and [hl]                                         ; $4978: $a6
	sbc h                                            ; $4979: $9c
	rra                                              ; $497a: $1f
	ld [hl], h                                       ; $497b: $74
	ld a, $e0                                        ; $497c: $3e $e0
	pop bc                                           ; $497e: $c1
	add b                                            ; $497f: $80
	rst SubAFromDE                                          ; $4980: $df
	rst $38                                          ; $4981: $ff
	add b                                            ; $4982: $80
	call z, $dc98                                    ; $4983: $cc $98 $dc
	adc b                                            ; $4986: $88
	call c, $dc48                                    ; $4987: $dc $48 $dc
	jr nc, @+$41                                     ; $498a: $30 $3f

	adc a                                            ; $498c: $8f
	sbc a                                            ; $498d: $9f
	ld h, e                                          ; $498e: $63
	ld h, e                                          ; $498f: $63
	ld e, $bf                                        ; $4990: $1e $bf
	adc h                                            ; $4992: $8c
	adc $64                                          ; $4993: $ce $64
	ld [hl], a                                       ; $4995: $77
	ld e, $df                                        ; $4996: $1e $df
	jp Jump_067_70f3                                 ; $4998: $c3 $f3 $70


	ld a, h                                          ; $499b: $7c
	ld e, a                                          ; $499c: $5f
	adc a                                            ; $499d: $8f
	sub a                                            ; $499e: $97
	adc [hl]                                         ; $499f: $8e
	add h                                            ; $49a0: $84
	sub h                                            ; $49a1: $94
	sbc b                                            ; $49a2: $98
	sbc h                                            ; $49a3: $9c
	jr @+$2a                                         ; $49a4: $18 $28

	ld [$302c], sp                                   ; $49a6: $08 $2c $30
	ld a, [hl]                                       ; $49a9: $7e
	jr nc, jr_067_4a0b                               ; $49aa: $30 $5f

	ld d, h                                          ; $49ac: $54
	rst SubAFromDE                                          ; $49ad: $df
	ld h, d                                          ; $49ae: $62
	rst $38                                          ; $49af: $ff
	ld h, e                                          ; $49b0: $63
	pop af                                           ; $49b1: $f1
	rst SubAFromDE                                          ; $49b2: $df
	rst $38                                          ; $49b3: $ff
	ld a, l                                          ; $49b4: $7d
	ld a, [$1d83]                                    ; $49b5: $fa $83 $1d
	cp $be                                           ; $49b8: $fe $be
	pop bc                                           ; $49ba: $c1
	rst $38                                          ; $49bb: $ff
	nop                                              ; $49bc: $00
	cp $81                                           ; $49bd: $fe $81
	add e                                            ; $49bf: $83
	ld a, h                                          ; $49c0: $7c
	ld a, h                                          ; $49c1: $7c
	add e                                            ; $49c2: $83
	pop bc                                           ; $49c3: $c1
	nop                                              ; $49c4: $00
	sub [hl]                                         ; $49c5: $96
	ld h, b                                          ; $49c6: $60
	ld b, b                                          ; $49c7: $40
	add e                                            ; $49c8: $83
	push bc                                          ; $49c9: $c5
	jr c, jr_067_49d6                                ; $49ca: $38 $0a

	call nz, $2295                                   ; $49cc: $c4 $95 $22
	ld c, [hl]                                       ; $49cf: $4e
	sub c                                            ; $49d0: $91
	ld h, $49                                        ; $49d1: $26 $49
	ldh [$c1], a                                     ; $49d3: $e0 $c1
	add b                                            ; $49d5: $80

jr_067_49d6:
	call $33ff                                       ; $49d6: $cd $ff $33
	cp a                                             ; $49d9: $bf
	ld b, [hl]                                       ; $49da: $46
	cp $5a                                           ; $49db: $fe $5a
	cp $66                                           ; $49dd: $fe $66
	cp $1a                                           ; $49df: $fe $1a
	cp $e2                                           ; $49e1: $fe $e2
	ldh a, [c]                                       ; $49e3: $f2
	adc [hl]                                         ; $49e4: $8e
	adc [hl]                                         ; $49e5: $8e
	ldh a, [c]                                       ; $49e6: $f2
	ld a, [$e762]                                    ; $49e7: $fa $62 $e7
	ld c, [hl]                                       ; $49ea: $4e
	rst SubAFromDE                                          ; $49eb: $df
	ldh a, [c]                                       ; $49ec: $f2
	di                                               ; $49ed: $f3
	add [hl]                                         ; $49ee: $86
	adc a                                            ; $49ef: $8f
	ld e, $7f                                        ; $49f0: $1e $7f
	cp $e3                                           ; $49f2: $fe $e3
	jp nc, Jump_067_439d                             ; $49f4: $d2 $9d $43

	ld d, e                                          ; $49f7: $53
	sbc $31                                          ; $49f8: $de $31
	sub e                                            ; $49fa: $93
	add hl, hl                                       ; $49fb: $29
	ld hl, $1869                                     ; $49fc: $21 $69 $18
	db $fd                                           ; $49ff: $fd
	jr @-$07                                         ; $4a00: $18 $f7

jr_067_4a02:
	ld d, l                                          ; $4a02: $55
	sub $9f                                          ; $4a03: $d6 $9f
	sbc h                                            ; $4a05: $9c
	rrca                                             ; $4a06: $0f
	rst AddAOntoHL                                          ; $4a07: $ef
	rst SubAFromDE                                          ; $4a08: $df
	ldh [hDisp0_SCY], a                                     ; $4a09: $e0 $83

jr_067_4a0b:
	ret c                                            ; $4a0b: $d8

	jr c, jr_067_4a02                                ; $4a0c: $38 $f4

	db $ec                                           ; $4a0e: $ec
	jp c, $f53e                                      ; $4a0f: $da $3e $f5

	rst GetHLinHL                                          ; $4a12: $cf
	cp d                                             ; $4a13: $ba
	ld [hl], a                                       ; $4a14: $77
	db $ed                                           ; $4a15: $ed
	dec de                                           ; $4a16: $1b
	inc a                                            ; $4a17: $3c
	rst JumpTable                                          ; $4a18: $c7
	ld c, [hl]                                       ; $4a19: $4e
	inc sp                                           ; $4a1a: $33
	and a                                            ; $4a1b: $a7
	add hl, de                                       ; $4a1c: $19
	ld [hl], e                                       ; $4a1d: $73
	adc h                                            ; $4a1e: $8c
	cp l                                             ; $4a1f: $bd
	ld b, [hl]                                       ; $4a20: $46
	sbc $23                                          ; $4a21: $de $23
	call $f133                                       ; $4a23: $cd $33 $f1
	rra                                              ; $4a26: $1f
	ldh [$c1], a                                     ; $4a27: $e0 $c1
	sub c                                            ; $4a29: $91
	ld b, l                                          ; $4a2a: $45
	ld l, a                                          ; $4a2b: $6f
	ld b, l                                          ; $4a2c: $45
	ld l, a                                          ; $4a2d: $6f
	ld c, c                                          ; $4a2e: $49
	ld c, a                                          ; $4a2f: $4f
	ld c, e                                          ; $4a30: $4b
	rst SubAFromDE                                          ; $4a31: $df
	adc a                                            ; $4a32: $8f
	rst SubAFromDE                                          ; $4a33: $df
	adc a                                            ; $4a34: $8f
	sbc b                                            ; $4a35: $98
	sbc a                                            ; $4a36: $9f
	or b                                             ; $4a37: $b0
	ld [hl], a                                       ; $4a38: $77
	cp $9d                                           ; $4a39: $fe $9d
	ccf                                              ; $4a3b: $3f
	and b                                            ; $4a3c: $a0
	ld a, e                                          ; $4a3d: $7b
	cp $87                                           ; $4a3e: $fe $87
	ldh [$39], a                                     ; $4a40: $e0 $39
	ldh [$58], a                                     ; $4a42: $e0 $58
	ret nz                                           ; $4a44: $c0

jr_067_4a45:
	ld d, b                                          ; $4a45: $50
	ldh [rSVBK], a                                   ; $4a46: $e0 $70
	ldh a, [rBCPS]                                   ; $4a48: $f0 $68
	ldh [rBCPS], a                                   ; $4a4a: $e0 $68
	ldh a, [$7c]                                     ; $4a4c: $f0 $7c
	ret c                                            ; $4a4e: $d8

	db $fc                                           ; $4a4f: $fc
	db $fc                                           ; $4a50: $fc
	jp nc, $51fe                                     ; $4a51: $d2 $fe $51

	rst $38                                          ; $4a54: $ff
	jr @-$5f                                         ; $4a55: $18 $9f

	inc e                                            ; $4a57: $1c
	inc de                                           ; $4a58: $13
	sub b                                            ; $4a59: $90
	rst SubAFromDE                                          ; $4a5a: $df
	add b                                            ; $4a5b: $80
	sub b                                            ; $4a5c: $90
	ld b, b                                          ; $4a5d: $40
	ret nz                                           ; $4a5e: $c0

	ld b, b                                          ; $4a5f: $40
	ret nz                                           ; $4a60: $c0

	jr nz, @-$1e                                     ; $4a61: $20 $e0

	jr nz, jr_067_4a45                               ; $4a63: $20 $e0

	sub b                                            ; $4a65: $90
	ldh a, [$50]                                     ; $4a66: $f0 $50
	ldh a, [rOBP0]                                   ; $4a68: $f0 $48
	ld hl, sp+$28                                    ; $4a6a: $f8 $28
	ld a, e                                          ; $4a6c: $7b
	cp $98                                           ; $4a6d: $fe $98
	sub h                                            ; $4a6f: $94
	db $fc                                           ; $4a70: $fc
	sub h                                            ; $4a71: $94
	db $fc                                           ; $4a72: $fc
	ld d, h                                          ; $4a73: $54
	db $fc                                           ; $4a74: $fc
	ld c, h                                          ; $4a75: $4c
	ld a, e                                          ; $4a76: $7b
	cp $9c                                           ; $4a77: $fe $9c
	inc l                                            ; $4a79: $2c
	db $fc                                           ; $4a7a: $fc
	inc h                                            ; $4a7b: $24
	ld a, e                                          ; $4a7c: $7b
	cp $77                                           ; $4a7d: $fe $77
	ldh a, [$6f]                                     ; $4a7f: $f0 $6f
	cp $9d                                           ; $4a81: $fe $9d
	sbc b                                            ; $4a83: $98
	ld hl, sp+$6f                                    ; $4a84: $f8 $6f
	cp $7f                                           ; $4a86: $fe $7f
	call nc, $fe6f                                   ; $4a88: $d4 $6f $fe
	ld [hl], a                                       ; $4a8b: $77
	ret z                                            ; $4a8c: $c8

	ld a, a                                          ; $4a8d: $7f
	cp $77                                           ; $4a8e: $fe $77
	cp [hl]                                          ; $4a90: $be
	ld [hl], a                                       ; $4a91: $77
	cp $d9                                           ; $4a92: $fe $d9
	add b                                            ; $4a94: $80
	ld e, a                                          ; $4a95: $5f
	and h                                            ; $4a96: $a4
	sbc d                                            ; $4a97: $9a
	ld hl, sp+$78                                    ; $4a98: $f8 $78
	rst $38                                          ; $4a9a: $ff
	rlca                                             ; $4a9b: $07
	rst $38                                          ; $4a9c: $ff
	cp b                                             ; $4a9d: $b8
	db $fc                                           ; $4a9e: $fc
	ldh a, [$e0]                                     ; $4a9f: $f0 $e0
	ret nz                                           ; $4aa1: $c0

	ldh [$f0], a                                     ; $4aa2: $e0 $f0

Jump_067_4aa4:
	ld a, b                                          ; $4aa4: $78
	ld a, h                                          ; $4aa5: $7c
	ld a, [hl]                                       ; $4aa6: $7e

jr_067_4aa7:
	sbc [hl]                                         ; $4aa7: $9e
	jr z, jr_067_4b25                                ; $4aa8: $28 $7b

	cp $94                                           ; $4aaa: $fe $94

jr_067_4aac:
	jr nc, jr_067_4aac                               ; $4aac: $30 $fe

jr_067_4aae:
	jr nc, jr_067_4aae                               ; $4aae: $30 $fe

	db $10                                           ; $4ab0: $10
	db $fc                                           ; $4ab1: $fc
	db $10                                           ; $4ab2: $10
	db $fc                                           ; $4ab3: $fc
	sub b                                            ; $4ab4: $90

jr_067_4ab5:
	ld a, h                                          ; $4ab5: $7c
	ret nc                                           ; $4ab6: $d0

	rrca                                             ; $4ab7: $0f
	ld h, b                                          ; $4ab8: $60
	adc e                                            ; $4ab9: $8b
	ld h, b                                          ; $4aba: $60
	ldh [$d0], a                                     ; $4abb: $e0 $d0
	jr nc, jr_067_4aa7                               ; $4abd: $30 $e8

	jr jr_067_4ab5                                   ; $4abf: $18 $f4

	inc c                                            ; $4ac1: $0c
	db $fc                                           ; $4ac2: $fc
	inc b                                            ; $4ac3: $04
	ld a, [$fa06]                                    ; $4ac4: $fa $06 $fa
	ld b, $fe                                        ; $4ac7: $06 $fe
	ld [bc], a                                       ; $4ac9: $02
	cp $02                                           ; $4aca: $fe $02
	db $fd                                           ; $4acc: $fd
	inc bc                                           ; $4acd: $03
	ld e, a                                          ; $4ace: $5f
	cp $7f                                           ; $4acf: $fe $7f
	xor $9d                                          ; $4ad1: $ee $9d
	ldh a, [c]                                       ; $4ad3: $f2
	ld c, $1f                                        ; $4ad4: $0e $1f
	nop                                              ; $4ad6: $00
	sub l                                            ; $4ad7: $95
	call z, $8888                                    ; $4ad8: $cc $88 $88
	db $dd                                           ; $4adb: $dd
	call z, $0888                                    ; $4adc: $cc $88 $08
	sbc c                                            ; $4adf: $99
	sbc c                                            ; $4ae0: $99
	inc sp                                           ; $4ae1: $33
	ld a, e                                          ; $4ae2: $7b
	ei                                               ; $4ae3: $fb
	sbc [hl]                                         ; $4ae4: $9e
	sub c                                            ; $4ae5: $91
	ld [hl], a                                       ; $4ae6: $77
	ei                                               ; $4ae7: $fb
	sbc [hl]                                         ; $4ae8: $9e
	and d                                            ; $4ae9: $a2
	ld h, e                                          ; $4aea: $63
	ei                                               ; $4aeb: $fb
	ld a, e                                          ; $4aec: $7b
	pop af                                           ; $4aed: $f1
	rst SubAFromDE                                          ; $4aee: $df
	adc b                                            ; $4aef: $88
	ld a, a                                          ; $4af0: $7f
	rst SubAFromBC                                          ; $4af1: $e7
	rst SubAFromDE                                          ; $4af2: $df
	db $dd                                           ; $4af3: $dd
	and d                                            ; $4af4: $a2
	ld bc, $0098                                     ; $4af5: $01 $98 $00
	ld c, h                                          ; $4af8: $4c
	inc d                                            ; $4af9: $14
	ld c, b                                          ; $4afa: $48
	ld de, $9148                                     ; $4afb: $11 $48 $91
	ld a, e                                          ; $4afe: $7b
	cp $9c                                           ; $4aff: $fe $9c
	sbc l                                            ; $4b01: $9d
	ld c, b                                          ; $4b02: $48
	db $dd                                           ; $4b03: $dd
	ld a, e                                          ; $4b04: $7b
	cp $80                                           ; $4b05: $fe $80
	rst $38                                          ; $4b07: $ff
	ld b, h                                          ; $4b08: $44
	rst $38                                          ; $4b09: $ff
	ld b, h                                          ; $4b0a: $44
	sbc e                                            ; $4b0b: $9b
	ld h, [hl]                                       ; $4b0c: $66
	ei                                               ; $4b0d: $fb
	ld h, $ed                                        ; $4b0e: $26 $ed
	inc sp                                           ; $4b10: $33
	ld e, l                                          ; $4b11: $5d
	or e                                             ; $4b12: $b3
	or [hl]                                          ; $4b13: $b6
	reti                                             ; $4b14: $d9


	ld c, d                                          ; $4b15: $4a
	ld a, l                                          ; $4b16: $7d
	inc h                                            ; $4b17: $24
	ccf                                              ; $4b18: $3f
	ld a, [de]                                       ; $4b19: $1a
	rra                                              ; $4b1a: $1f
	rrca                                             ; $4b1b: $0f
	rrca                                             ; $4b1c: $0f
	add hl, bc                                       ; $4b1d: $09
	rrca                                             ; $4b1e: $0f
	ld a, [bc]                                       ; $4b1f: $0a
	dec c                                            ; $4b20: $0d
	ld a, [bc]                                       ; $4b21: $0a
	dec c                                            ; $4b22: $0d
	rlca                                             ; $4b23: $07
	inc b                                            ; $4b24: $04

jr_067_4b25:
	dec b                                            ; $4b25: $05
	sbc b                                            ; $4b26: $98
	ld b, $04                                        ; $4b27: $06 $04
	rlca                                             ; $4b29: $07
	inc b                                            ; $4b2a: $04
	rlca                                             ; $4b2b: $07
	ld [bc], a                                       ; $4b2c: $02
	inc bc                                           ; $4b2d: $03
	ld l, a                                          ; $4b2e: $6f
	cp $dd                                           ; $4b2f: $fe $dd
	ld bc, $0880                                     ; $4b31: $01 $80 $08
	add $4a                                          ; $4b34: $c6 $4a
	add h                                            ; $4b36: $84
	ld [$1884], sp                                   ; $4b37: $08 $84 $18
	add h                                            ; $4b3a: $84
	ld de, $118c                                     ; $4b3b: $11 $8c $11
	adc h                                            ; $4b3e: $8c
	pop de                                           ; $4b3f: $d1
	adc h                                            ; $4b40: $8c
	rst SubAFromHL                                          ; $4b41: $d7
	adc h                                            ; $4b42: $8c
	rst FarCall                                          ; $4b43: $f7
	ld c, h                                          ; $4b44: $4c
	di                                               ; $4b45: $f3
	ld c, [hl]                                       ; $4b46: $4e
	or d                                             ; $4b47: $b2
	ld l, a                                          ; $4b48: $6f
	jp hl                                            ; $4b49: $e9


	scf                                              ; $4b4a: $37
	pop de                                           ; $4b4b: $d1
	ccf                                              ; $4b4c: $3f
	ld a, b                                          ; $4b4d: $78
	sbc a                                            ; $4b4e: $9f
	xor h                                            ; $4b4f: $ac
	rst SubAFromDE                                          ; $4b50: $df
	sub $81                                          ; $4b51: $d6 $81
	rst AddAOntoHL                                          ; $4b53: $ef
	ld l, e                                          ; $4b54: $6b
	rst FarCall                                          ; $4b55: $f7
	scf                                              ; $4b56: $37
	ld a, [$ff19]                                    ; $4b57: $fa $19 $ff
	xor l                                            ; $4b5a: $ad
	rst AddAOntoHL                                          ; $4b5b: $ef
	rst FarCall                                          ; $4b5c: $f7
	rst FarCall                                          ; $4b5d: $f7
	ld hl, sp-$48                                    ; $4b5e: $f8 $b8
	ldh [$a0], a                                     ; $4b60: $e0 $a0
	ldh [$a0], a                                     ; $4b62: $e0 $a0
	sub b                                            ; $4b64: $90
	ldh a, [$98]                                     ; $4b65: $f0 $98
	ldh a, [$9c]                                     ; $4b67: $f0 $9c
	ld hl, sp-$6a                                    ; $4b69: $f8 $96
	db $fc                                           ; $4b6b: $fc
	sub e                                            ; $4b6c: $93
	cp $53                                           ; $4b6d: $fe $53
	rst $38                                          ; $4b6f: $ff
	ld d, d                                          ; $4b70: $52
	ld a, e                                          ; $4b71: $7b
	cp $99                                           ; $4b72: $fe $99
	rst GetHLinHL                                          ; $4b74: $cf
	ld c, a                                          ; $4b75: $4f
	adc b                                            ; $4b76: $88
	sbc b                                            ; $4b77: $98
	sub b                                            ; $4b78: $90
	or b                                             ; $4b79: $b0
	ld a, e                                          ; $4b7a: $7b
	cp $80                                           ; $4b7b: $fe $80
	ldh a, [$50]                                     ; $4b7d: $f0 $50
	ldh a, [rBCPS]                                   ; $4b7f: $f0 $68
	ld hl, sp+$78                                    ; $4b81: $f8 $78
	ret c                                            ; $4b83: $d8

	ld a, h                                          ; $4b84: $7c
	call nz, $c060                                   ; $4b85: $c4 $60 $c0
	ld [hl], b                                       ; $4b88: $70
	pop bc                                           ; $4b89: $c1
	ld sp, $b1e1                                     ; $4b8a: $31 $e1 $b1
	ldh [$d1], a                                     ; $4b8d: $e0 $d1
	ldh a, [$fb]                                     ; $4b8f: $f0 $fb
	or b                                             ; $4b91: $b0
	ld a, e                                          ; $4b92: $7b
	ret c                                            ; $4b93: $d8

	or a                                             ; $4b94: $b7
	jr z, @-$13                                      ; $4b95: $28 $eb

	or h                                             ; $4b97: $b4
	ld a, e                                          ; $4b98: $7b
	ld d, h                                          ; $4b99: $54
	ld a, c                                          ; $4b9a: $79
	ld d, [hl]                                       ; $4b9b: $56
	add b                                            ; $4b9c: $80
	ld [hl], l                                       ; $4b9d: $75
	ld e, [hl]                                       ; $4b9e: $5e
	ld d, a                                          ; $4b9f: $57
	ld a, [hl]                                       ; $4ba0: $7e
	ld d, [hl]                                       ; $4ba1: $56
	ld a, a                                          ; $4ba2: $7f
	ld l, l                                          ; $4ba3: $6d
	ld l, l                                          ; $4ba4: $6d
	ld b, h                                          ; $4ba5: $44
	ld b, h                                          ; $4ba6: $44
	ld c, a                                          ; $4ba7: $4f
	ld a, a                                          ; $4ba8: $7f
	ld a, a                                          ; $4ba9: $7f
	ldh a, [rIE]                                     ; $4baa: $f0 $ff
	add b                                            ; $4bac: $80
	rst $38                                          ; $4bad: $ff
	nop                                              ; $4bae: $00
	rst $38                                          ; $4baf: $ff
	inc e                                            ; $4bb0: $1c
	rst SubAFromBC                                          ; $4bb1: $e7
	ld h, a                                          ; $4bb2: $67
	db $fd                                           ; $4bb3: $fd
	rst $38                                          ; $4bb4: $ff
	and l                                            ; $4bb5: $a5
	db $f4                                           ; $4bb6: $f4
	and l                                            ; $4bb7: $a5
	ld l, $5f                                        ; $4bb8: $2e $5f
	jr c, jr_067_4bbf                                ; $4bba: $38 $03

	sbc c                                            ; $4bbc: $99
	nop                                              ; $4bbd: $00
	ld e, a                                          ; $4bbe: $5f

jr_067_4bbf:
	nop                                              ; $4bbf: $00
	and a                                            ; $4bc0: $a7
	nop                                              ; $4bc1: $00
	rrca                                             ; $4bc2: $0f
	ld [hl], a                                       ; $4bc3: $77
	cp $80                                           ; $4bc4: $fe $80
	ld bc, $031f                                     ; $4bc6: $01 $1f $03
	rra                                              ; $4bc9: $1f
	dec b                                            ; $4bca: $05
	ccf                                              ; $4bcb: $3f
	add hl, bc                                       ; $4bcc: $09
	ccf                                              ; $4bcd: $3f
	ld de, $63ff                                     ; $4bce: $11 $ff $63
	db $fd                                           ; $4bd1: $fd
	adc a                                            ; $4bd2: $8f
	di                                               ; $4bd3: $f3
	ccf                                              ; $4bd4: $3f
	ld l, b                                          ; $4bd5: $68
	sbc a                                            ; $4bd6: $9f
	ld c, b                                          ; $4bd7: $48
	cp a                                             ; $4bd8: $bf
	ld b, h                                          ; $4bd9: $44
	rst $38                                          ; $4bda: $ff
	ld h, h                                          ; $4bdb: $64
	cp a                                             ; $4bdc: $bf
	ld [hl], d                                       ; $4bdd: $72
	rst SubAFromDE                                          ; $4bde: $df
	jp z, $a56f                                      ; $4bdf: $ca $6f $a5

	ld [hl], a                                       ; $4be2: $77
	scf                                              ; $4be3: $37
	ei                                               ; $4be4: $fb
	sub [hl]                                         ; $4be5: $96
	sbc a                                            ; $4be6: $9f
	rst $38                                          ; $4be7: $ff
	ret z                                            ; $4be8: $c8

	ld a, a                                          ; $4be9: $7f
	db $f4                                           ; $4bea: $f4
	ccf                                              ; $4beb: $3f
	xor $3f                                          ; $4bec: $ee $3f
	db $e4                                           ; $4bee: $e4
	ld l, a                                          ; $4bef: $6f
	cp $9e                                           ; $4bf0: $fe $9e
	cp a                                             ; $4bf2: $bf
	ld l, e                                          ; $4bf3: $6b
	ld hl, sp-$7a                                    ; $4bf4: $f8 $86
	ccf                                              ; $4bf6: $3f
	add sp, $7f                                      ; $4bf7: $e8 $7f
	jp hl                                            ; $4bf9: $e9


	ld a, a                                          ; $4bfa: $7f
	ret                                              ; $4bfb: $c9


	rst $38                                          ; $4bfc: $ff
	ret                                              ; $4bfd: $c9


	rst SubAFromDE                                          ; $4bfe: $df
	ret                                              ; $4bff: $c9


	db $db                                           ; $4c00: $db
	ret                                              ; $4c01: $c9


	db $db                                           ; $4c02: $db
	sub d                                            ; $4c03: $92
	db $db                                           ; $4c04: $db
	sub d                                            ; $4c05: $92
	sub e                                            ; $4c06: $93
	add d                                            ; $4c07: $82
	sub e                                            ; $4c08: $93
	ld [bc], a                                       ; $4c09: $02
	add a                                            ; $4c0a: $87
	inc h                                            ; $4c0b: $24
	daa                                              ; $4c0c: $27
	inc h                                            ; $4c0d: $24
	ld h, a                                          ; $4c0e: $67
	inc bc                                           ; $4c0f: $03
	ld h, b                                          ; $4c10: $60

jr_067_4c11:
	ld b, e                                          ; $4c11: $43
	ld h, b                                          ; $4c12: $60
	sbc e                                            ; $4c13: $9b
	ld b, b                                          ; $4c14: $40
	ld a, a                                          ; $4c15: $7f
	ld a, a                                          ; $4c16: $7f
	rst $38                                          ; $4c17: $ff
	ld [hl], e                                       ; $4c18: $73
	ld h, b                                          ; $4c19: $60
	ld a, a                                          ; $4c1a: $7f
	cp $9a                                           ; $4c1b: $fe $9a
	ld a, $e7                                        ; $4c1d: $3e $e7
	ld h, a                                          ; $4c1f: $67
	cp l                                             ; $4c20: $bd
	db $fd                                           ; $4c21: $fd
	inc bc                                           ; $4c22: $03
	ld h, b                                          ; $4c23: $60
	rla                                              ; $4c24: $17
	ld h, b                                          ; $4c25: $60
	ld h, e                                          ; $4c26: $63
	ld e, [hl]                                       ; $4c27: $5e
	inc bc                                           ; $4c28: $03
	ld h, b                                          ; $4c29: $60
	ld d, a                                          ; $4c2a: $57
	ld h, b                                          ; $4c2b: $60
	sbc d                                            ; $4c2c: $9a
	ret nz                                           ; $4c2d: $c0

	jr nc, jr_067_4c11                               ; $4c2e: $30 $e1

	or c                                             ; $4c30: $b1
	pop hl                                           ; $4c31: $e1
	daa                                              ; $4c32: $27
	ld h, b                                          ; $4c33: $60
	rst SubAFromDE                                          ; $4c34: $df
	ld b, h                                          ; $4c35: $44
	sbc e                                            ; $4c36: $9b
	rra                                              ; $4c37: $1f
	ld a, a                                          ; $4c38: $7f
	ld a, a                                          ; $4c39: $7f
	ldh [rOCPD], a                                   ; $4c3a: $e0 $6b
	ld e, [hl]                                       ; $4c3c: $5e
	ld a, a                                          ; $4c3d: $7f
	cp $9a                                           ; $4c3e: $fe $9a
	ccf                                              ; $4c40: $3f
	jp Jump_067_7fee                                 ; $4c41: $c3 $ee $7f


	inc a                                            ; $4c44: $3c
	inc bc                                           ; $4c45: $03
	ld h, b                                          ; $4c46: $60
	rra                                              ; $4c47: $1f
	ld h, b                                          ; $4c48: $60
	ld [bc], a                                       ; $4c49: $02
	ret nz                                           ; $4c4a: $c0

	inc bc                                           ; $4c4b: $03
	ld h, b                                          ; $4c4c: $60
	ld b, e                                          ; $4c4d: $43
	ld h, b                                          ; $4c4e: $60
	sbc [hl]                                         ; $4c4f: $9e
	nop                                              ; $4c50: $00
	ld e, [hl]                                       ; $4c51: $5e
	cp [hl]                                          ; $4c52: $be
	ld [hl], a                                       ; $4c53: $77
	cp $9c                                           ; $4c54: $fe $9c
	inc bc                                           ; $4c56: $03
	rst $38                                          ; $4c57: $ff
	ld a, [hl]                                       ; $4c58: $7e
	inc bc                                           ; $4c59: $03
	ld h, b                                          ; $4c5a: $60
	inc bc                                           ; $4c5b: $03
	ld h, b                                          ; $4c5c: $60
	daa                                              ; $4c5d: $27
	ld h, b                                          ; $4c5e: $60
	adc h                                            ; $4c5f: $8c
	ld a, c                                          ; $4c60: $79
	ret z                                            ; $4c61: $c8

	cp h                                             ; $4c62: $bc
	ldh [$f4], a                                     ; $4c63: $e0 $f4
	ld [hl], b                                       ; $4c65: $70
	or $00                                           ; $4c66: $f6 $00
	or $90                                           ; $4c68: $f6 $90
	inc a                                            ; $4c6a: $3c
	db $10                                           ; $4c6b: $10
	jr c, jr_067_4c7e                                ; $4c6c: $38 $10

	rlca                                             ; $4c6e: $07
	ld bc, $1233                                     ; $4c6f: $01 $33 $12
	inc c                                            ; $4c72: $0c
	ld a, [$c099]                                    ; $4c73: $fa $99 $c0
	add b                                            ; $4c76: $80
	pop af                                           ; $4c77: $f1
	pop hl                                           ; $4c78: $e1
	cp a                                             ; $4c79: $bf
	cp $43                                           ; $4c7a: $fe $43
	ldh [$9c], a                                     ; $4c7c: $e0 $9c

jr_067_4c7e:
	ld [hl-], a                                      ; $4c7e: $32
	ld e, $1c                                        ; $4c7f: $1e $1c
	ld l, a                                          ; $4c81: $6f
	sbc $2b                                          ; $4c82: $de $2b
	ldh [$9a], a                                     ; $4c84: $e0 $9a
	inc sp                                           ; $4c86: $33
	rra                                              ; $4c87: $1f
	ld e, $1e                                        ; $4c88: $1e $1e
	inc c                                            ; $4c8a: $0c
	ld [hl], a                                       ; $4c8b: $77
	sbc $27                                          ; $4c8c: $de $27
	ldh [$9d], a                                     ; $4c8e: $e0 $9d
	ccf                                              ; $4c90: $3f
	rra                                              ; $4c91: $1f
	ld l, a                                          ; $4c92: $6f
	sbc $6f                                          ; $4c93: $de $6f
	ldh [$9d], a                                     ; $4c95: $e0 $9d
	ld bc, $0098                                     ; $4c97: $01 $98 $00
	ld c, h                                          ; $4c9a: $4c
	inc d                                            ; $4c9b: $14
	ld c, b                                          ; $4c9c: $48
	ld de, $9148                                     ; $4c9d: $11 $48 $91
	ld a, e                                          ; $4ca0: $7b
	cp $9c                                           ; $4ca1: $fe $9c
	sbc l                                            ; $4ca3: $9d
	ld c, b                                          ; $4ca4: $48
	db $dd                                           ; $4ca5: $dd
	ld a, e                                          ; $4ca6: $7b
	cp $80                                           ; $4ca7: $fe $80
	rst $38                                          ; $4ca9: $ff
	ld b, h                                          ; $4caa: $44
	rst $38                                          ; $4cab: $ff
	ld b, h                                          ; $4cac: $44
	sbc e                                            ; $4cad: $9b
	ld h, [hl]                                       ; $4cae: $66
	ei                                               ; $4caf: $fb
	ld h, $ed                                        ; $4cb0: $26 $ed
	inc sp                                           ; $4cb2: $33
	ld e, l                                          ; $4cb3: $5d
	or e                                             ; $4cb4: $b3
	or [hl]                                          ; $4cb5: $b6
	reti                                             ; $4cb6: $d9


	ld c, d                                          ; $4cb7: $4a
	ld a, l                                          ; $4cb8: $7d
	inc h                                            ; $4cb9: $24
	ccf                                              ; $4cba: $3f
	ld a, [de]                                       ; $4cbb: $1a
	rra                                              ; $4cbc: $1f
	rrca                                             ; $4cbd: $0f
	rrca                                             ; $4cbe: $0f
	add hl, bc                                       ; $4cbf: $09
	rrca                                             ; $4cc0: $0f
	ld a, [bc]                                       ; $4cc1: $0a
	dec c                                            ; $4cc2: $0d
	ld a, [bc]                                       ; $4cc3: $0a
	dec c                                            ; $4cc4: $0d
	rlca                                             ; $4cc5: $07
	inc b                                            ; $4cc6: $04
	dec b                                            ; $4cc7: $05
	sbc b                                            ; $4cc8: $98
	ld b, $04                                        ; $4cc9: $06 $04
	rlca                                             ; $4ccb: $07
	inc b                                            ; $4ccc: $04
	rlca                                             ; $4ccd: $07
	ld [bc], a                                       ; $4cce: $02
	inc bc                                           ; $4ccf: $03
	ld l, a                                          ; $4cd0: $6f
	cp $dd                                           ; $4cd1: $fe $dd
	ld bc, $0880                                     ; $4cd3: $01 $80 $08
	add $4a                                          ; $4cd6: $c6 $4a
	add h                                            ; $4cd8: $84
	ld [$1884], sp                                   ; $4cd9: $08 $84 $18
	add h                                            ; $4cdc: $84
	ld de, $118c                                     ; $4cdd: $11 $8c $11
	adc h                                            ; $4ce0: $8c
	pop de                                           ; $4ce1: $d1
	adc h                                            ; $4ce2: $8c
	rst SubAFromHL                                          ; $4ce3: $d7
	adc h                                            ; $4ce4: $8c
	rst FarCall                                          ; $4ce5: $f7
	ld c, h                                          ; $4ce6: $4c
	di                                               ; $4ce7: $f3
	ld c, [hl]                                       ; $4ce8: $4e
	or d                                             ; $4ce9: $b2
	ld l, a                                          ; $4cea: $6f
	jp hl                                            ; $4ceb: $e9


	scf                                              ; $4cec: $37
	pop de                                           ; $4ced: $d1
	ccf                                              ; $4cee: $3f
	ld a, b                                          ; $4cef: $78
	sbc a                                            ; $4cf0: $9f
	xor h                                            ; $4cf1: $ac
	rst SubAFromDE                                          ; $4cf2: $df
	sub $81                                          ; $4cf3: $d6 $81
	rst AddAOntoHL                                          ; $4cf5: $ef
	ld l, e                                          ; $4cf6: $6b
	rst FarCall                                          ; $4cf7: $f7
	scf                                              ; $4cf8: $37
	ld a, [$ff19]                                    ; $4cf9: $fa $19 $ff
	xor l                                            ; $4cfc: $ad
	rst AddAOntoHL                                          ; $4cfd: $ef
	rst FarCall                                          ; $4cfe: $f7
	rst FarCall                                          ; $4cff: $f7
	ld hl, sp-$48                                    ; $4d00: $f8 $b8
	ldh [$a0], a                                     ; $4d02: $e0 $a0
	ldh [$a0], a                                     ; $4d04: $e0 $a0
	sub b                                            ; $4d06: $90
	ldh a, [$98]                                     ; $4d07: $f0 $98
	ldh a, [$9c]                                     ; $4d09: $f0 $9c
	ld hl, sp-$6a                                    ; $4d0b: $f8 $96
	db $fc                                           ; $4d0d: $fc
	sub e                                            ; $4d0e: $93

jr_067_4d0f:
	cp $53                                           ; $4d0f: $fe $53
	rst $38                                          ; $4d11: $ff
	ld d, d                                          ; $4d12: $52
	ld a, e                                          ; $4d13: $7b
	cp $99                                           ; $4d14: $fe $99
	rst GetHLinHL                                          ; $4d16: $cf
	ld c, a                                          ; $4d17: $4f
	adc b                                            ; $4d18: $88
	sbc b                                            ; $4d19: $98
	sub b                                            ; $4d1a: $90
	or b                                             ; $4d1b: $b0
	ld a, e                                          ; $4d1c: $7b
	cp $80                                           ; $4d1d: $fe $80
	ldh a, [$50]                                     ; $4d1f: $f0 $50
	ldh a, [rBCPS]                                   ; $4d21: $f0 $68
	ld hl, sp+$78                                    ; $4d23: $f8 $78
	ret c                                            ; $4d25: $d8

	ld a, h                                          ; $4d26: $7c
	call nz, $c060                                   ; $4d27: $c4 $60 $c0
	ld [hl], b                                       ; $4d2a: $70
	ret nz                                           ; $4d2b: $c0

	jr nc, jr_067_4d0f                               ; $4d2c: $30 $e1

	or c                                             ; $4d2e: $b1
	pop hl                                           ; $4d2f: $e1
	pop de                                           ; $4d30: $d1
	ldh a, [$fb]                                     ; $4d31: $f0 $fb
	or b                                             ; $4d33: $b0
	ld a, e                                          ; $4d34: $7b
	ret c                                            ; $4d35: $d8

	or a                                             ; $4d36: $b7
	jr z, @-$13                                      ; $4d37: $28 $eb

	or h                                             ; $4d39: $b4
	ld a, e                                          ; $4d3a: $7b
	ld d, h                                          ; $4d3b: $54
	ld a, c                                          ; $4d3c: $79
	ld d, [hl]                                       ; $4d3d: $56
	add b                                            ; $4d3e: $80
	ld [hl], l                                       ; $4d3f: $75
	ld e, [hl]                                       ; $4d40: $5e
	ld d, a                                          ; $4d41: $57
	ld a, [hl]                                       ; $4d42: $7e
	ld d, [hl]                                       ; $4d43: $56
	ld a, a                                          ; $4d44: $7f
	ld l, l                                          ; $4d45: $6d
	ld l, l                                          ; $4d46: $6d
	ld b, h                                          ; $4d47: $44
	ld b, h                                          ; $4d48: $44
	ld e, a                                          ; $4d49: $5f
	ld a, [hl]                                       ; $4d4a: $7e
	ld a, a                                          ; $4d4b: $7f
	ldh [rIE], a                                     ; $4d4c: $e0 $ff
	add b                                            ; $4d4e: $80
	rst $38                                          ; $4d4f: $ff
	nop                                              ; $4d50: $00
	rst $38                                          ; $4d51: $ff
	ccf                                              ; $4d52: $3f
	rst SubAFromBC                                          ; $4d53: $e7
	ld h, a                                          ; $4d54: $67
	cp l                                             ; $4d55: $bd
	rst $38                                          ; $4d56: $ff
	and l                                            ; $4d57: $a5
	or h                                             ; $4d58: $b4
	and l                                            ; $4d59: $a5
	ld l, $5f                                        ; $4d5a: $2e $5f
	jr c, jr_067_4d61                                ; $4d5c: $38 $03

	cp h                                             ; $4d5e: $bc
	rlca                                             ; $4d5f: $07
	rlca                                             ; $4d60: $07

jr_067_4d61:
	rrca                                             ; $4d61: $0f
	rrca                                             ; $4d62: $0f
	rrca                                             ; $4d63: $0f
	add b                                            ; $4d64: $80
	ld bc, $031f                                     ; $4d65: $01 $1f $03
	rra                                              ; $4d68: $1f
	dec b                                            ; $4d69: $05
	ccf                                              ; $4d6a: $3f
	add hl, bc                                       ; $4d6b: $09
	ccf                                              ; $4d6c: $3f
	ld de, $63ff                                     ; $4d6d: $11 $ff $63
	db $fd                                           ; $4d70: $fd
	adc a                                            ; $4d71: $8f
	di                                               ; $4d72: $f3
	ccf                                              ; $4d73: $3f
	ld l, b                                          ; $4d74: $68
	sbc a                                            ; $4d75: $9f
	ld c, b                                          ; $4d76: $48
	cp a                                             ; $4d77: $bf
	ld b, h                                          ; $4d78: $44
	rst $38                                          ; $4d79: $ff
	ld h, h                                          ; $4d7a: $64
	cp a                                             ; $4d7b: $bf
	ld [hl], d                                       ; $4d7c: $72
	rst SubAFromDE                                          ; $4d7d: $df
	jp z, $a56f                                      ; $4d7e: $ca $6f $a5

	ld [hl], a                                       ; $4d81: $77
	scf                                              ; $4d82: $37
	ei                                               ; $4d83: $fb
	sub e                                            ; $4d84: $93
	sbc a                                            ; $4d85: $9f
	rst $38                                          ; $4d86: $ff
	ret z                                            ; $4d87: $c8

	ld a, a                                          ; $4d88: $7f
	db $f4                                           ; $4d89: $f4
	ccf                                              ; $4d8a: $3f
	xor $3f                                          ; $4d8b: $ee $3f
	db $e4                                           ; $4d8d: $e4
	ccf                                              ; $4d8e: $3f
	db $e4                                           ; $4d8f: $e4
	cp a                                             ; $4d90: $bf
	ld a, e                                          ; $4d91: $7b
	db $fc                                           ; $4d92: $fc
	ld h, e                                          ; $4d93: $63
	cp $87                                           ; $4d94: $fe $87
	add sp, $7f                                      ; $4d96: $e8 $7f
	jp hl                                            ; $4d98: $e9


	ld a, a                                          ; $4d99: $7f
	ret                                              ; $4d9a: $c9


	rst $38                                          ; $4d9b: $ff
	ret                                              ; $4d9c: $c9


	rst SubAFromDE                                          ; $4d9d: $df
	ret                                              ; $4d9e: $c9


	db $db                                           ; $4d9f: $db
	ret                                              ; $4da0: $c9


	db $db                                           ; $4da1: $db
	sub d                                            ; $4da2: $92
	db $db                                           ; $4da3: $db
	sub d                                            ; $4da4: $92
	sub e                                            ; $4da5: $93
	add d                                            ; $4da6: $82
	sub e                                            ; $4da7: $93
	ld [bc], a                                       ; $4da8: $02
	add a                                            ; $4da9: $87
	inc h                                            ; $4daa: $24
	daa                                              ; $4dab: $27
	inc h                                            ; $4dac: $24
	ld h, a                                          ; $4dad: $67
	inc bc                                           ; $4dae: $03
	ld h, b                                          ; $4daf: $60
	ld b, e                                          ; $4db0: $43
	ld h, b                                          ; $4db1: $60
	sbc e                                            ; $4db2: $9b
	ld b, a                                          ; $4db3: $47
	ld e, a                                          ; $4db4: $5f
	rra                                              ; $4db5: $1f
	ld a, b                                          ; $4db6: $78
	ld l, e                                          ; $4db7: $6b
	ld e, [hl]                                       ; $4db8: $5e
	sbc [hl]                                         ; $4db9: $9e
	ld a, $7b                                        ; $4dba: $3e $7b
	ld e, [hl]                                       ; $4dbc: $5e
	sbc [hl]                                         ; $4dbd: $9e
	db $fd                                           ; $4dbe: $fd
	inc bc                                           ; $4dbf: $03
	ld h, b                                          ; $4dc0: $60
	daa                                              ; $4dc1: $27
	ld h, b                                          ; $4dc2: $60
	ld [hl], e                                       ; $4dc3: $73
	ld e, h                                          ; $4dc4: $5c
	inc bc                                           ; $4dc5: $03
	add b                                            ; $4dc6: $80
	ld b, e                                          ; $4dc7: $43
	add b                                            ; $4dc8: $80
	rst SubAFromDE                                          ; $4dc9: $df
	ld b, h                                          ; $4dca: $44
	sbc l                                            ; $4dcb: $9d
	rra                                              ; $4dcc: $1f
	ld a, a                                          ; $4dcd: $7f
	ld l, e                                          ; $4dce: $6b
	add b                                            ; $4dcf: $80
	cp a                                             ; $4dd0: $bf
	rst $38                                          ; $4dd1: $ff
	rst $38                                          ; $4dd2: $ff
	sbc d                                            ; $4dd3: $9a
	ccf                                              ; $4dd4: $3f
	jp Jump_067_7fee                                 ; $4dd5: $c3 $ee $7f


	inc a                                            ; $4dd8: $3c
	inc bc                                           ; $4dd9: $03
	add b                                            ; $4dda: $80
	daa                                              ; $4ddb: $27
	add b                                            ; $4ddc: $80
	sbc [hl]                                         ; $4ddd: $9e
	ccf                                              ; $4dde: $3f
	dec hl                                           ; $4ddf: $2b
	add b                                            ; $4de0: $80
	sbc d                                            ; $4de1: $9a
	ldh [$b0], a                                     ; $4de2: $e0 $b0
	pop hl                                           ; $4de4: $e1
	pop de                                           ; $4de5: $d1
	pop af                                           ; $4de6: $f1
	daa                                              ; $4de7: $27
	add b                                            ; $4de8: $80
	sbc c                                            ; $4de9: $99
	rrca                                             ; $4dea: $0f
	ccf                                              ; $4deb: $3f
	ccf                                              ; $4dec: $3f
	ldh a, [rIE]                                     ; $4ded: $f0 $ff
	ret nz                                           ; $4def: $c0

	ld l, e                                          ; $4df0: $6b
	add b                                            ; $4df1: $80
	ld a, a                                          ; $4df2: $7f
	cp $9c                                           ; $4df3: $fe $9c
	inc bc                                           ; $4df5: $03
	rst $38                                          ; $4df6: $ff
	ld a, [hl]                                       ; $4df7: $7e
	inc bc                                           ; $4df8: $03
	add b                                            ; $4df9: $80
	inc hl                                           ; $4dfa: $23
	add b                                            ; $4dfb: $80
	adc h                                            ; $4dfc: $8c
	ld a, c                                          ; $4dfd: $79
	ret z                                            ; $4dfe: $c8

	cp h                                             ; $4dff: $bc
	ldh [$f4], a                                     ; $4e00: $e0 $f4
	ld [hl], b                                       ; $4e02: $70
	or $00                                           ; $4e03: $f6 $00
	or $90                                           ; $4e05: $f6 $90
	inc a                                            ; $4e07: $3c
	db $10                                           ; $4e08: $10
	jr c, @+$12                                      ; $4e09: $38 $10

	inc bc                                           ; $4e0b: $03
	ld bc, $1e3e                                     ; $4e0c: $01 $3e $1e
	ld d, $bd                                        ; $4e0f: $16 $bd
	inc c                                            ; $4e11: $0c
	nop                                              ; $4e12: $00
	nop                                              ; $4e13: $00
	ret nz                                           ; $4e14: $c0

	sbc d                                            ; $4e15: $9a
	add b                                            ; $4e16: $80
	pop af                                           ; $4e17: $f1
	pop hl                                           ; $4e18: $e1
	cp a                                             ; $4e19: $bf
	cp $4f                                           ; $4e1a: $fe $4f
	ldh [$df], a                                     ; $4e1c: $e0 $df
	ld bc, $33df                                     ; $4e1e: $01 $df $33
	rst SubAFromDE                                          ; $4e21: $df
	ld e, $0f                                        ; $4e22: $1e $0f
	ldh [$9e], a                                     ; $4e24: $e0 $9e
	ccf                                              ; $4e26: $3f
	ld a, e                                          ; $4e27: $7b
	rst SubAFromDE                                          ; $4e28: $df
	ld [hl], a                                       ; $4e29: $77
	sbc $23                                          ; $4e2a: $de $23
	ldh [$df], a                                     ; $4e2c: $e0 $df
	rra                                              ; $4e2e: $1f
	ld [hl], e                                       ; $4e2f: $73
	sbc $6f                                          ; $4e30: $de $6f
	ldh [$9f], a                                     ; $4e32: $e0 $9f
	ld bc, $0098                                     ; $4e34: $01 $98 $00
	ld c, h                                          ; $4e37: $4c
	inc d                                            ; $4e38: $14
	ld c, b                                          ; $4e39: $48
	ld de, $9148                                     ; $4e3a: $11 $48 $91
	ld a, e                                          ; $4e3d: $7b
	cp $9c                                           ; $4e3e: $fe $9c
	sbc l                                            ; $4e40: $9d
	ld c, b                                          ; $4e41: $48
	db $dd                                           ; $4e42: $dd
	ld a, e                                          ; $4e43: $7b
	cp $80                                           ; $4e44: $fe $80
	rst $38                                          ; $4e46: $ff
	ld b, h                                          ; $4e47: $44
	rst $38                                          ; $4e48: $ff
	ld b, h                                          ; $4e49: $44
	sbc e                                            ; $4e4a: $9b
	ld h, [hl]                                       ; $4e4b: $66
	ei                                               ; $4e4c: $fb
	ld h, $ed                                        ; $4e4d: $26 $ed
	inc sp                                           ; $4e4f: $33
	ld e, l                                          ; $4e50: $5d
	or e                                             ; $4e51: $b3
	or [hl]                                          ; $4e52: $b6
	reti                                             ; $4e53: $d9


	ld c, d                                          ; $4e54: $4a
	ld a, l                                          ; $4e55: $7d
	inc h                                            ; $4e56: $24
	ccf                                              ; $4e57: $3f
	ld a, [de]                                       ; $4e58: $1a
	rra                                              ; $4e59: $1f
	rrca                                             ; $4e5a: $0f
	rrca                                             ; $4e5b: $0f
	add hl, bc                                       ; $4e5c: $09
	rrca                                             ; $4e5d: $0f
	ld a, [bc]                                       ; $4e5e: $0a
	dec c                                            ; $4e5f: $0d
	ld a, [bc]                                       ; $4e60: $0a
	dec c                                            ; $4e61: $0d
	rlca                                             ; $4e62: $07
	inc b                                            ; $4e63: $04
	dec b                                            ; $4e64: $05
	sbc b                                            ; $4e65: $98
	ld b, $04                                        ; $4e66: $06 $04
	rlca                                             ; $4e68: $07
	inc b                                            ; $4e69: $04
	rlca                                             ; $4e6a: $07
	ld [bc], a                                       ; $4e6b: $02
	inc bc                                           ; $4e6c: $03
	ld l, a                                          ; $4e6d: $6f
	cp $dd                                           ; $4e6e: $fe $dd
	ld bc, $0880                                     ; $4e70: $01 $80 $08
	add $4a                                          ; $4e73: $c6 $4a
	add h                                            ; $4e75: $84
	ld [$1884], sp                                   ; $4e76: $08 $84 $18
	add h                                            ; $4e79: $84
	ld de, $118c                                     ; $4e7a: $11 $8c $11
	adc h                                            ; $4e7d: $8c
	pop de                                           ; $4e7e: $d1
	adc h                                            ; $4e7f: $8c
	rst SubAFromHL                                          ; $4e80: $d7
	adc h                                            ; $4e81: $8c
	rst FarCall                                          ; $4e82: $f7
	ld c, h                                          ; $4e83: $4c
	di                                               ; $4e84: $f3
	ld c, [hl]                                       ; $4e85: $4e
	or d                                             ; $4e86: $b2
	ld l, a                                          ; $4e87: $6f
	jp hl                                            ; $4e88: $e9


	scf                                              ; $4e89: $37
	pop de                                           ; $4e8a: $d1
	ccf                                              ; $4e8b: $3f
	ld a, b                                          ; $4e8c: $78
	sbc a                                            ; $4e8d: $9f
	xor h                                            ; $4e8e: $ac
	rst SubAFromDE                                          ; $4e8f: $df
	sub $81                                          ; $4e90: $d6 $81
	rst AddAOntoHL                                          ; $4e92: $ef
	ld l, e                                          ; $4e93: $6b
	rst FarCall                                          ; $4e94: $f7
	scf                                              ; $4e95: $37
	ld a, [$ff19]                                    ; $4e96: $fa $19 $ff
	xor l                                            ; $4e99: $ad
	rst AddAOntoHL                                          ; $4e9a: $ef
	rst FarCall                                          ; $4e9b: $f7
	rst FarCall                                          ; $4e9c: $f7
	ld hl, sp-$48                                    ; $4e9d: $f8 $b8
	ldh [$a0], a                                     ; $4e9f: $e0 $a0
	ldh [$a0], a                                     ; $4ea1: $e0 $a0
	sub b                                            ; $4ea3: $90
	ldh a, [$98]                                     ; $4ea4: $f0 $98
	ldh a, [$9c]                                     ; $4ea6: $f0 $9c
	ld hl, sp-$6a                                    ; $4ea8: $f8 $96
	db $fc                                           ; $4eaa: $fc
	sub e                                            ; $4eab: $93

jr_067_4eac:
	cp $53                                           ; $4eac: $fe $53
	rst $38                                          ; $4eae: $ff
	ld d, d                                          ; $4eaf: $52
	ld a, e                                          ; $4eb0: $7b
	cp $99                                           ; $4eb1: $fe $99
	rst GetHLinHL                                          ; $4eb3: $cf
	ld c, a                                          ; $4eb4: $4f
	adc b                                            ; $4eb5: $88
	sbc b                                            ; $4eb6: $98
	sub b                                            ; $4eb7: $90
	or b                                             ; $4eb8: $b0
	ld a, e                                          ; $4eb9: $7b
	cp $80                                           ; $4eba: $fe $80
	ldh a, [$50]                                     ; $4ebc: $f0 $50
	ldh a, [rBCPS]                                   ; $4ebe: $f0 $68
	ld hl, sp+$78                                    ; $4ec0: $f8 $78
	ret c                                            ; $4ec2: $d8

	ld a, h                                          ; $4ec3: $7c
	call nz, $c060                                   ; $4ec4: $c4 $60 $c0
	ld [hl], b                                       ; $4ec7: $70
	ret nz                                           ; $4ec8: $c0

	jr nc, jr_067_4eac                               ; $4ec9: $30 $e1

	or c                                             ; $4ecb: $b1
	pop hl                                           ; $4ecc: $e1
	pop de                                           ; $4ecd: $d1
	ldh a, [$fb]                                     ; $4ece: $f0 $fb
	or b                                             ; $4ed0: $b0
	ld a, e                                          ; $4ed1: $7b
	ret c                                            ; $4ed2: $d8

	or a                                             ; $4ed3: $b7
	jr z, @-$13                                      ; $4ed4: $28 $eb

	or h                                             ; $4ed6: $b4
	ld a, e                                          ; $4ed7: $7b
	ld d, h                                          ; $4ed8: $54
	ld a, c                                          ; $4ed9: $79
	ld d, [hl]                                       ; $4eda: $56
	add b                                            ; $4edb: $80
	ld [hl], l                                       ; $4edc: $75
	ld e, [hl]                                       ; $4edd: $5e
	ld d, a                                          ; $4ede: $57
	ld a, [hl]                                       ; $4edf: $7e
	ld d, [hl]                                       ; $4ee0: $56
	ld a, a                                          ; $4ee1: $7f
	ld l, l                                          ; $4ee2: $6d
	ld l, l                                          ; $4ee3: $6d
	ld b, h                                          ; $4ee4: $44
	ld b, h                                          ; $4ee5: $44
	ld c, a                                          ; $4ee6: $4f
	ld a, a                                          ; $4ee7: $7f
	ccf                                              ; $4ee8: $3f
	ldh a, [rIE]                                     ; $4ee9: $f0 $ff
	ret nz                                           ; $4eeb: $c0

	rst $38                                          ; $4eec: $ff
	nop                                              ; $4eed: $00
	rst $38                                          ; $4eee: $ff
	rra                                              ; $4eef: $1f
	rst SubAFromBC                                          ; $4ef0: $e7
	ld h, a                                          ; $4ef1: $67
	db $fd                                           ; $4ef2: $fd
	rst $38                                          ; $4ef3: $ff
	and l                                            ; $4ef4: $a5
	db $f4                                           ; $4ef5: $f4
	and l                                            ; $4ef6: $a5
	ld l, $5f                                        ; $4ef7: $2e $5f
	jr c, jr_067_4efe                                ; $4ef9: $38 $03

	sbc l                                            ; $4efb: $9d
	nop                                              ; $4efc: $00
	rlca                                             ; $4efd: $07

jr_067_4efe:
	ld a, e                                          ; $4efe: $7b
	cp $9e                                           ; $4eff: $fe $9e
	rrca                                             ; $4f01: $0f
	ld [hl], a                                       ; $4f02: $77
	cp $80                                           ; $4f03: $fe $80
	ld bc, $031f                                     ; $4f05: $01 $1f $03
	rra                                              ; $4f08: $1f
	dec b                                            ; $4f09: $05
	ccf                                              ; $4f0a: $3f
	add hl, bc                                       ; $4f0b: $09
	ccf                                              ; $4f0c: $3f
	ld de, $63ff                                     ; $4f0d: $11 $ff $63
	db $fd                                           ; $4f10: $fd
	adc a                                            ; $4f11: $8f
	di                                               ; $4f12: $f3
	ccf                                              ; $4f13: $3f
	ld l, b                                          ; $4f14: $68
	sbc a                                            ; $4f15: $9f
	ld c, b                                          ; $4f16: $48
	cp a                                             ; $4f17: $bf
	ld b, h                                          ; $4f18: $44
	rst $38                                          ; $4f19: $ff
	ld h, h                                          ; $4f1a: $64
	cp a                                             ; $4f1b: $bf
	ld [hl], d                                       ; $4f1c: $72
	rst SubAFromDE                                          ; $4f1d: $df
	jp z, $a56f                                      ; $4f1e: $ca $6f $a5

	ld [hl], a                                       ; $4f21: $77
	scf                                              ; $4f22: $37
	ei                                               ; $4f23: $fb
	sub e                                            ; $4f24: $93
	sbc a                                            ; $4f25: $9f
	rst $38                                          ; $4f26: $ff
	ret z                                            ; $4f27: $c8

	ld a, a                                          ; $4f28: $7f
	db $f4                                           ; $4f29: $f4
	ccf                                              ; $4f2a: $3f
	xor $3f                                          ; $4f2b: $ee $3f
	db $e4                                           ; $4f2d: $e4
	ccf                                              ; $4f2e: $3f
	db $e4                                           ; $4f2f: $e4
	cp a                                             ; $4f30: $bf
	ld a, e                                          ; $4f31: $7b
	db $fc                                           ; $4f32: $fc
	ld h, e                                          ; $4f33: $63
	cp $87                                           ; $4f34: $fe $87
	add sp, $7f                                      ; $4f36: $e8 $7f
	jp hl                                            ; $4f38: $e9


	ld a, a                                          ; $4f39: $7f
	ret                                              ; $4f3a: $c9


	rst $38                                          ; $4f3b: $ff
	ret                                              ; $4f3c: $c9


	rst SubAFromDE                                          ; $4f3d: $df
	ret                                              ; $4f3e: $c9


	db $db                                           ; $4f3f: $db
	ret                                              ; $4f40: $c9


	db $db                                           ; $4f41: $db
	sub d                                            ; $4f42: $92
	db $db                                           ; $4f43: $db
	sub d                                            ; $4f44: $92
	sub e                                            ; $4f45: $93
	add d                                            ; $4f46: $82
	sub e                                            ; $4f47: $93
	ld [bc], a                                       ; $4f48: $02
	add a                                            ; $4f49: $87
	inc h                                            ; $4f4a: $24
	daa                                              ; $4f4b: $27
	inc h                                            ; $4f4c: $24
	ld h, a                                          ; $4f4d: $67
	inc bc                                           ; $4f4e: $03
	ld h, b                                          ; $4f4f: $60
	ld b, e                                          ; $4f50: $43
	ld h, b                                          ; $4f51: $60
	sub a                                            ; $4f52: $97
	ld b, a                                          ; $4f53: $47
	ld e, a                                          ; $4f54: $5f
	rra                                              ; $4f55: $1f
	ld a, b                                          ; $4f56: $78
	ld a, a                                          ; $4f57: $7f
	ldh [rIE], a                                     ; $4f58: $e0 $ff
	add b                                            ; $4f5a: $80
	ld a, e                                          ; $4f5b: $7b
	ld e, [hl]                                       ; $4f5c: $5e
	sbc d                                            ; $4f5d: $9a
	ld a, $e7                                        ; $4f5e: $3e $e7
	ld h, a                                          ; $4f60: $67
	cp l                                             ; $4f61: $bd
	db $fd                                           ; $4f62: $fd
	inc bc                                           ; $4f63: $03
	ld h, b                                          ; $4f64: $60
	daa                                              ; $4f65: $27
	ld h, b                                          ; $4f66: $60
	ld [hl], e                                       ; $4f67: $73
	ld e, h                                          ; $4f68: $5c
	inc bc                                           ; $4f69: $03
	add b                                            ; $4f6a: $80
	ld b, e                                          ; $4f6b: $43
	add b                                            ; $4f6c: $80
	rst SubAFromDE                                          ; $4f6d: $df
	ld b, h                                          ; $4f6e: $44
	sbc l                                            ; $4f6f: $9d
	rra                                              ; $4f70: $1f
	ld a, a                                          ; $4f71: $7f
	ld l, e                                          ; $4f72: $6b
	add b                                            ; $4f73: $80
	ld [hl], a                                       ; $4f74: $77
	cp $9a                                           ; $4f75: $fe $9a
	ccf                                              ; $4f77: $3f
	jp Jump_067_7fee                                 ; $4f78: $c3 $ee $7f


	inc a                                            ; $4f7b: $3c
	inc bc                                           ; $4f7c: $03
	add b                                            ; $4f7d: $80
	daa                                              ; $4f7e: $27
	add b                                            ; $4f7f: $80
	sbc [hl]                                         ; $4f80: $9e
	ccf                                              ; $4f81: $3f
	dec hl                                           ; $4f82: $2b
	add b                                            ; $4f83: $80
	sbc d                                            ; $4f84: $9a
	ldh [$b0], a                                     ; $4f85: $e0 $b0
	pop hl                                           ; $4f87: $e1
	pop de                                           ; $4f88: $d1
	pop af                                           ; $4f89: $f1
	daa                                              ; $4f8a: $27
	add b                                            ; $4f8b: $80
	sbc l                                            ; $4f8c: $9d
	rrca                                             ; $4f8d: $0f
	ccf                                              ; $4f8e: $3f
	ld l, d                                          ; $4f8f: $6a
	ld e, [hl]                                       ; $4f90: $5e
	ld l, a                                          ; $4f91: $6f
	cp $9c                                           ; $4f92: $fe $9c
	inc bc                                           ; $4f94: $03
	rst $38                                          ; $4f95: $ff
	ld a, [hl]                                       ; $4f96: $7e
	inc bc                                           ; $4f97: $03
	add b                                            ; $4f98: $80
	inc hl                                           ; $4f99: $23
	add b                                            ; $4f9a: $80
	adc d                                            ; $4f9b: $8a
	ld a, c                                          ; $4f9c: $79
	ret z                                            ; $4f9d: $c8

	cp h                                             ; $4f9e: $bc
	ldh [$f4], a                                     ; $4f9f: $e0 $f4
	ld [hl], b                                       ; $4fa1: $70
	or $00                                           ; $4fa2: $f6 $00
	or $90                                           ; $4fa4: $f6 $90
	inc a                                            ; $4fa6: $3c
	db $10                                           ; $4fa7: $10
	jr c, jr_067_4fba                                ; $4fa8: $38 $10

	rlca                                             ; $4faa: $07
	ld [bc], a                                       ; $4fab: $02
	ld a, $1c                                        ; $4fac: $3e $1c
	inc d                                            ; $4fae: $14
	nop                                              ; $4faf: $00
	ld [$99fc], sp                                   ; $4fb0: $08 $fc $99
	ret nz                                           ; $4fb3: $c0

	add b                                            ; $4fb4: $80
	pop af                                           ; $4fb5: $f1
	pop hl                                           ; $4fb6: $e1
	cp a                                             ; $4fb7: $bf
	cp $47                                           ; $4fb8: $fe $47

jr_067_4fba:
	ldh [$9a], a                                     ; $4fba: $e0 $9a
	inc sp                                           ; $4fbc: $33
	ld [de], a                                       ; $4fbd: $12
	ld e, $0c                                        ; $4fbe: $1e $0c
	inc c                                            ; $4fc0: $0c
	inc de                                           ; $4fc1: $13
	ldh [$9d], a                                     ; $4fc2: $e0 $9d
	ld a, $1e                                        ; $4fc4: $3e $1e
	ld l, a                                          ; $4fc6: $6f
	sbc $27                                          ; $4fc7: $de $27
	ldh [$9e], a                                     ; $4fc9: $e0 $9e
	ccf                                              ; $4fcb: $3f
	db $dd                                           ; $4fcc: $dd
	ld e, $7b                                        ; $4fcd: $1e $7b
	sbc $6f                                          ; $4fcf: $de $6f
	ldh [$a0], a                                     ; $4fd1: $e0 $a0
	ld bc, $0098                                     ; $4fd3: $01 $98 $00
	ld c, h                                          ; $4fd6: $4c
	inc d                                            ; $4fd7: $14
	ld c, b                                          ; $4fd8: $48
	ld de, $9148                                     ; $4fd9: $11 $48 $91
	ld a, e                                          ; $4fdc: $7b
	cp $9c                                           ; $4fdd: $fe $9c
	sbc l                                            ; $4fdf: $9d
	ld c, b                                          ; $4fe0: $48
	db $dd                                           ; $4fe1: $dd
	ld a, e                                          ; $4fe2: $7b
	cp $80                                           ; $4fe3: $fe $80
	rst $38                                          ; $4fe5: $ff
	ld b, h                                          ; $4fe6: $44
	rst $38                                          ; $4fe7: $ff
	ld b, h                                          ; $4fe8: $44
	sbc e                                            ; $4fe9: $9b
	ld h, [hl]                                       ; $4fea: $66
	ei                                               ; $4feb: $fb
	ld h, $ed                                        ; $4fec: $26 $ed
	inc sp                                           ; $4fee: $33
	ld e, l                                          ; $4fef: $5d
	or e                                             ; $4ff0: $b3
	or [hl]                                          ; $4ff1: $b6
	reti                                             ; $4ff2: $d9


	ld c, d                                          ; $4ff3: $4a
	ld a, l                                          ; $4ff4: $7d
	inc h                                            ; $4ff5: $24
	ccf                                              ; $4ff6: $3f
	ld a, [de]                                       ; $4ff7: $1a
	rra                                              ; $4ff8: $1f
	rrca                                             ; $4ff9: $0f
	rrca                                             ; $4ffa: $0f
	add hl, bc                                       ; $4ffb: $09
	rrca                                             ; $4ffc: $0f
	ld a, [bc]                                       ; $4ffd: $0a
	dec c                                            ; $4ffe: $0d
	ld a, [bc]                                       ; $4fff: $0a
	dec c                                            ; $5000: $0d
	rlca                                             ; $5001: $07
	inc b                                            ; $5002: $04
	dec b                                            ; $5003: $05
	sbc b                                            ; $5004: $98
	ld b, $04                                        ; $5005: $06 $04
	rlca                                             ; $5007: $07
	inc b                                            ; $5008: $04
	rlca                                             ; $5009: $07
	ld [bc], a                                       ; $500a: $02
	inc bc                                           ; $500b: $03
	ld l, a                                          ; $500c: $6f
	cp $dd                                           ; $500d: $fe $dd
	ld bc, $0880                                     ; $500f: $01 $80 $08
	add $4a                                          ; $5012: $c6 $4a
	add h                                            ; $5014: $84
	ld [$1884], sp                                   ; $5015: $08 $84 $18
	add h                                            ; $5018: $84
	ld de, $118c                                     ; $5019: $11 $8c $11
	adc h                                            ; $501c: $8c
	pop de                                           ; $501d: $d1
	adc h                                            ; $501e: $8c
	rst SubAFromHL                                          ; $501f: $d7
	adc h                                            ; $5020: $8c
	rst FarCall                                          ; $5021: $f7
	ld c, h                                          ; $5022: $4c
	di                                               ; $5023: $f3
	ld c, [hl]                                       ; $5024: $4e
	or d                                             ; $5025: $b2
	ld l, a                                          ; $5026: $6f
	jp hl                                            ; $5027: $e9


	scf                                              ; $5028: $37
	pop de                                           ; $5029: $d1
	ccf                                              ; $502a: $3f
	ld a, b                                          ; $502b: $78
	sbc a                                            ; $502c: $9f
	xor h                                            ; $502d: $ac
	rst SubAFromDE                                          ; $502e: $df
	sub $81                                          ; $502f: $d6 $81
	rst AddAOntoHL                                          ; $5031: $ef
	ld l, e                                          ; $5032: $6b
	rst FarCall                                          ; $5033: $f7
	scf                                              ; $5034: $37
	ld a, [$ff19]                                    ; $5035: $fa $19 $ff
	xor l                                            ; $5038: $ad
	rst AddAOntoHL                                          ; $5039: $ef
	rst FarCall                                          ; $503a: $f7
	rst FarCall                                          ; $503b: $f7
	ld hl, sp-$48                                    ; $503c: $f8 $b8
	ldh [$a0], a                                     ; $503e: $e0 $a0
	ldh [$a0], a                                     ; $5040: $e0 $a0
	sub b                                            ; $5042: $90
	ldh a, [$98]                                     ; $5043: $f0 $98
	ldh a, [$9c]                                     ; $5045: $f0 $9c
	ld hl, sp-$6a                                    ; $5047: $f8 $96
	db $fc                                           ; $5049: $fc
	sub e                                            ; $504a: $93

jr_067_504b:
	cp $53                                           ; $504b: $fe $53
	rst $38                                          ; $504d: $ff
	ld d, d                                          ; $504e: $52
	ld a, e                                          ; $504f: $7b
	cp $99                                           ; $5050: $fe $99
	rst GetHLinHL                                          ; $5052: $cf
	ld c, a                                          ; $5053: $4f
	adc b                                            ; $5054: $88
	sbc b                                            ; $5055: $98
	sub b                                            ; $5056: $90
	or b                                             ; $5057: $b0
	ld a, e                                          ; $5058: $7b
	cp $80                                           ; $5059: $fe $80
	ldh a, [$50]                                     ; $505b: $f0 $50
	ldh a, [rBCPS]                                   ; $505d: $f0 $68
	ld hl, sp+$78                                    ; $505f: $f8 $78
	ret c                                            ; $5061: $d8

	ld a, h                                          ; $5062: $7c
	call nz, $c060                                   ; $5063: $c4 $60 $c0
	ld [hl], b                                       ; $5066: $70
	ret nz                                           ; $5067: $c0

	jr nc, jr_067_504b                               ; $5068: $30 $e1

	or c                                             ; $506a: $b1
	pop hl                                           ; $506b: $e1
	pop de                                           ; $506c: $d1
	ldh a, [$fb]                                     ; $506d: $f0 $fb
	or b                                             ; $506f: $b0
	ld a, e                                          ; $5070: $7b
	ret c                                            ; $5071: $d8

	or a                                             ; $5072: $b7
	jr z, @-$13                                      ; $5073: $28 $eb

	or h                                             ; $5075: $b4
	ld a, e                                          ; $5076: $7b
	ld d, h                                          ; $5077: $54
	ld a, c                                          ; $5078: $79
	ld d, [hl]                                       ; $5079: $56
	add b                                            ; $507a: $80
	ld [hl], l                                       ; $507b: $75
	ld e, [hl]                                       ; $507c: $5e
	ld d, a                                          ; $507d: $57
	ld a, [hl]                                       ; $507e: $7e
	ld d, [hl]                                       ; $507f: $56
	ld a, a                                          ; $5080: $7f
	ld l, l                                          ; $5081: $6d
	ld l, l                                          ; $5082: $6d
	ld b, h                                          ; $5083: $44
	ld b, h                                          ; $5084: $44
	ld b, a                                          ; $5085: $47
	ld e, a                                          ; $5086: $5f
	rra                                              ; $5087: $1f
	ld a, b                                          ; $5088: $78
	ld a, a                                          ; $5089: $7f
	ldh [rIE], a                                     ; $508a: $e0 $ff
	add b                                            ; $508c: $80
	rst $38                                          ; $508d: $ff
	rra                                              ; $508e: $1f
	rst SubAFromBC                                          ; $508f: $e7
	ld h, a                                          ; $5090: $67
	db $fd                                           ; $5091: $fd
	rst $38                                          ; $5092: $ff
	and l                                            ; $5093: $a5
	db $f4                                           ; $5094: $f4
	and l                                            ; $5095: $a5
	ld l, $5f                                        ; $5096: $2e $5f
	jr c, jr_067_509d                                ; $5098: $38 $03

	sbc l                                            ; $509a: $9d
	nop                                              ; $509b: $00
	rlca                                             ; $509c: $07

jr_067_509d:
	ld a, e                                          ; $509d: $7b
	cp $9e                                           ; $509e: $fe $9e
	rrca                                             ; $50a0: $0f
	ld [hl], a                                       ; $50a1: $77
	cp $80                                           ; $50a2: $fe $80
	ld bc, $031f                                     ; $50a4: $01 $1f $03
	rra                                              ; $50a7: $1f
	dec b                                            ; $50a8: $05
	ccf                                              ; $50a9: $3f
	add hl, bc                                       ; $50aa: $09
	ccf                                              ; $50ab: $3f
	ld de, $63ff                                     ; $50ac: $11 $ff $63
	db $fd                                           ; $50af: $fd
	adc a                                            ; $50b0: $8f
	di                                               ; $50b1: $f3
	ccf                                              ; $50b2: $3f
	ld l, b                                          ; $50b3: $68
	sbc a                                            ; $50b4: $9f
	ld c, b                                          ; $50b5: $48
	cp a                                             ; $50b6: $bf
	ld b, h                                          ; $50b7: $44
	rst $38                                          ; $50b8: $ff
	ld h, h                                          ; $50b9: $64
	cp a                                             ; $50ba: $bf
	ld [hl], d                                       ; $50bb: $72
	rst SubAFromDE                                          ; $50bc: $df
	jp z, $a56f                                      ; $50bd: $ca $6f $a5

	ld [hl], a                                       ; $50c0: $77
	scf                                              ; $50c1: $37
	ei                                               ; $50c2: $fb
	sub e                                            ; $50c3: $93
	sbc a                                            ; $50c4: $9f
	rst $38                                          ; $50c5: $ff
	ret z                                            ; $50c6: $c8

	ld a, a                                          ; $50c7: $7f
	db $f4                                           ; $50c8: $f4
	ccf                                              ; $50c9: $3f
	xor $3f                                          ; $50ca: $ee $3f
	db $e4                                           ; $50cc: $e4
	ccf                                              ; $50cd: $3f
	db $e4                                           ; $50ce: $e4
	cp a                                             ; $50cf: $bf
	ld a, e                                          ; $50d0: $7b
	db $fc                                           ; $50d1: $fc
	ld h, e                                          ; $50d2: $63
	cp $87                                           ; $50d3: $fe $87
	add sp, $7f                                      ; $50d5: $e8 $7f
	jp hl                                            ; $50d7: $e9


	ld a, a                                          ; $50d8: $7f
	ret                                              ; $50d9: $c9


	rst $38                                          ; $50da: $ff
	ret                                              ; $50db: $c9


	rst SubAFromDE                                          ; $50dc: $df
	ret                                              ; $50dd: $c9


	db $db                                           ; $50de: $db
	ret                                              ; $50df: $c9


	db $db                                           ; $50e0: $db
	sub d                                            ; $50e1: $92
	db $db                                           ; $50e2: $db
	sub d                                            ; $50e3: $92
	sub e                                            ; $50e4: $93
	add d                                            ; $50e5: $82
	sub e                                            ; $50e6: $93
	ld [bc], a                                       ; $50e7: $02
	add a                                            ; $50e8: $87
	inc h                                            ; $50e9: $24
	daa                                              ; $50ea: $27
	inc h                                            ; $50eb: $24
	ld h, a                                          ; $50ec: $67
	inc bc                                           ; $50ed: $03
	ld h, b                                          ; $50ee: $60
	ld b, e                                          ; $50ef: $43
	ld h, b                                          ; $50f0: $60
	rst SubAFromDE                                          ; $50f1: $df
	ld b, h                                          ; $50f2: $44
	sbc l                                            ; $50f3: $9d
	rra                                              ; $50f4: $1f
	ld a, a                                          ; $50f5: $7f
	ld [hl], e                                       ; $50f6: $73
	ld h, b                                          ; $50f7: $60
	sbc b                                            ; $50f8: $98
	nop                                              ; $50f9: $00
	rst $38                                          ; $50fa: $ff
	ld a, $e7                                        ; $50fb: $3e $e7
	ld h, a                                          ; $50fd: $67
	cp l                                             ; $50fe: $bd
	db $fd                                           ; $50ff: $fd
	inc bc                                           ; $5100: $03
	ld h, b                                          ; $5101: $60
	daa                                              ; $5102: $27
	ld h, b                                          ; $5103: $60
	ld [hl], e                                       ; $5104: $73
	ld e, h                                          ; $5105: $5c
	dec hl                                           ; $5106: $2b
	add b                                            ; $5107: $80
	sbc d                                            ; $5108: $9a
	ldh [$b0], a                                     ; $5109: $e0 $b0
	pop hl                                           ; $510b: $e1
	pop de                                           ; $510c: $d1
	pop af                                           ; $510d: $f1
	daa                                              ; $510e: $27
	add b                                            ; $510f: $80
	sbc c                                            ; $5110: $99
	rrca                                             ; $5111: $0f
	ccf                                              ; $5112: $3f
	ccf                                              ; $5113: $3f
	ldh a, [rIE]                                     ; $5114: $f0 $ff
	ret nz                                           ; $5116: $c0

	ld a, e                                          ; $5117: $7b
	add b                                            ; $5118: $80
	ld [hl], a                                       ; $5119: $77
	cp $9a                                           ; $511a: $fe $9a
	ccf                                              ; $511c: $3f
	jp Jump_067_7fee                                 ; $511d: $c3 $ee $7f


	inc a                                            ; $5120: $3c
	inc bc                                           ; $5121: $03
	add b                                            ; $5122: $80
	daa                                              ; $5123: $27
	add b                                            ; $5124: $80
	sbc [hl]                                         ; $5125: $9e
	ccf                                              ; $5126: $3f
	inc bc                                           ; $5127: $03
	add b                                            ; $5128: $80
	dec sp                                           ; $5129: $3b
	add b                                            ; $512a: $80
	sbc l                                            ; $512b: $9d
	rlca                                             ; $512c: $07
	rra                                              ; $512d: $1f
	ld l, d                                          ; $512e: $6a
	ld e, [hl]                                       ; $512f: $5e
	ld l, a                                          ; $5130: $6f
	ld a, [hl]                                       ; $5131: $7e
	sbc h                                            ; $5132: $9c
	inc bc                                           ; $5133: $03
	rst $38                                          ; $5134: $ff
	ld a, [hl]                                       ; $5135: $7e
	inc bc                                           ; $5136: $03
	add b                                            ; $5137: $80
	inc hl                                           ; $5138: $23
	add b                                            ; $5139: $80
	adc d                                            ; $513a: $8a
	ld a, c                                          ; $513b: $79
	ret z                                            ; $513c: $c8

	cp h                                             ; $513d: $bc
	ldh [$f4], a                                     ; $513e: $e0 $f4
	ld [hl], b                                       ; $5140: $70
	or $00                                           ; $5141: $f6 $00
	or $90                                           ; $5143: $f6 $90
	inc a                                            ; $5145: $3c
	db $10                                           ; $5146: $10
	jr c, jr_067_5159                                ; $5147: $38 $10

	nop                                              ; $5149: $00
	nop                                              ; $514a: $00
	ccf                                              ; $514b: $3f
	ld d, $16                                        ; $514c: $16 $16
	nop                                              ; $514e: $00
	ld [$99fc], sp                                   ; $514f: $08 $fc $99
	ret nz                                           ; $5152: $c0

	add b                                            ; $5153: $80
	pop af                                           ; $5154: $f1
	pop hl                                           ; $5155: $e1
	cp a                                             ; $5156: $bf
	cp $47                                           ; $5157: $fe $47

jr_067_5159:
	ldh [$9a], a                                     ; $5159: $e0 $9a
	inc sp                                           ; $515b: $33
	ld [de], a                                       ; $515c: $12
	ld e, $1e                                        ; $515d: $1e $1e
	inc c                                            ; $515f: $0c
	inc de                                           ; $5160: $13
	ldh [$de], a                                     ; $5161: $e0 $de
	rra                                              ; $5163: $1f
	sbc [hl]                                         ; $5164: $9e
	ld c, $77                                        ; $5165: $0e $77
	sbc $27                                          ; $5167: $de $27
	ldh [$9e], a                                     ; $5169: $e0 $9e
	ccf                                              ; $516b: $3f
	db $dd                                           ; $516c: $dd
	rra                                              ; $516d: $1f
	rst SubAFromDE                                          ; $516e: $df
	ld c, $6b                                        ; $516f: $0e $6b
	ldh [$a5], a                                     ; $5171: $e0 $a5
	ld bc, $0098                                     ; $5173: $01 $98 $00
	ld c, h                                          ; $5176: $4c
	inc d                                            ; $5177: $14
	ld c, b                                          ; $5178: $48
	ld de, $9148                                     ; $5179: $11 $48 $91
	ld a, e                                          ; $517c: $7b
	cp $9c                                           ; $517d: $fe $9c
	sbc l                                            ; $517f: $9d
	ld c, b                                          ; $5180: $48
	db $dd                                           ; $5181: $dd
	ld a, e                                          ; $5182: $7b
	cp $80                                           ; $5183: $fe $80
	rst $38                                          ; $5185: $ff
	ld b, h                                          ; $5186: $44
	rst $38                                          ; $5187: $ff
	ld b, h                                          ; $5188: $44
	sbc e                                            ; $5189: $9b
	ld h, [hl]                                       ; $518a: $66
	ei                                               ; $518b: $fb
	ld h, $ed                                        ; $518c: $26 $ed
	inc sp                                           ; $518e: $33
	ld e, l                                          ; $518f: $5d
	or e                                             ; $5190: $b3
	or [hl]                                          ; $5191: $b6
	reti                                             ; $5192: $d9


	ld c, d                                          ; $5193: $4a
	ld a, l                                          ; $5194: $7d
	inc h                                            ; $5195: $24
	ccf                                              ; $5196: $3f
	ld a, [de]                                       ; $5197: $1a
	rra                                              ; $5198: $1f
	rrca                                             ; $5199: $0f
	rrca                                             ; $519a: $0f
	add hl, bc                                       ; $519b: $09
	rrca                                             ; $519c: $0f
	ld a, [bc]                                       ; $519d: $0a
	dec c                                            ; $519e: $0d
	ld a, [bc]                                       ; $519f: $0a
	dec c                                            ; $51a0: $0d
	rlca                                             ; $51a1: $07
	inc b                                            ; $51a2: $04
	dec b                                            ; $51a3: $05
	sbc b                                            ; $51a4: $98
	ld b, $04                                        ; $51a5: $06 $04
	rlca                                             ; $51a7: $07
	inc b                                            ; $51a8: $04
	rlca                                             ; $51a9: $07
	ld [bc], a                                       ; $51aa: $02
	inc bc                                           ; $51ab: $03
	ld l, a                                          ; $51ac: $6f
	cp $dd                                           ; $51ad: $fe $dd
	ld bc, $0880                                     ; $51af: $01 $80 $08
	add $4a                                          ; $51b2: $c6 $4a
	add h                                            ; $51b4: $84
	ld [$1884], sp                                   ; $51b5: $08 $84 $18
	add h                                            ; $51b8: $84
	ld de, $118c                                     ; $51b9: $11 $8c $11
	adc h                                            ; $51bc: $8c
	pop de                                           ; $51bd: $d1
	adc h                                            ; $51be: $8c
	rst SubAFromHL                                          ; $51bf: $d7
	adc h                                            ; $51c0: $8c
	rst FarCall                                          ; $51c1: $f7
	ld c, h                                          ; $51c2: $4c
	di                                               ; $51c3: $f3
	ld c, [hl]                                       ; $51c4: $4e
	or d                                             ; $51c5: $b2
	ld l, a                                          ; $51c6: $6f
	jp hl                                            ; $51c7: $e9


	scf                                              ; $51c8: $37
	pop de                                           ; $51c9: $d1
	ccf                                              ; $51ca: $3f
	ld a, b                                          ; $51cb: $78
	sbc a                                            ; $51cc: $9f
	xor h                                            ; $51cd: $ac
	rst SubAFromDE                                          ; $51ce: $df
	sub $81                                          ; $51cf: $d6 $81
	rst AddAOntoHL                                          ; $51d1: $ef
	ld l, e                                          ; $51d2: $6b
	rst FarCall                                          ; $51d3: $f7
	scf                                              ; $51d4: $37
	ld a, [$ff19]                                    ; $51d5: $fa $19 $ff
	xor l                                            ; $51d8: $ad
	rst AddAOntoHL                                          ; $51d9: $ef
	rst FarCall                                          ; $51da: $f7
	rst FarCall                                          ; $51db: $f7
	ld hl, sp-$48                                    ; $51dc: $f8 $b8
	ldh [$a0], a                                     ; $51de: $e0 $a0
	ldh [$a0], a                                     ; $51e0: $e0 $a0
	sub b                                            ; $51e2: $90
	ldh a, [$98]                                     ; $51e3: $f0 $98
	ldh a, [$9c]                                     ; $51e5: $f0 $9c
	ld hl, sp-$6a                                    ; $51e7: $f8 $96
	db $fc                                           ; $51e9: $fc

jr_067_51ea:
	sub e                                            ; $51ea: $93
	cp $53                                           ; $51eb: $fe $53
	rst $38                                          ; $51ed: $ff
	ld d, d                                          ; $51ee: $52
	ld a, e                                          ; $51ef: $7b
	cp $99                                           ; $51f0: $fe $99
	rst GetHLinHL                                          ; $51f2: $cf
	ld c, a                                          ; $51f3: $4f
	adc b                                            ; $51f4: $88
	sbc b                                            ; $51f5: $98
	sub b                                            ; $51f6: $90
	or b                                             ; $51f7: $b0
	ld a, e                                          ; $51f8: $7b
	cp $80                                           ; $51f9: $fe $80
	ldh a, [$50]                                     ; $51fb: $f0 $50
	ldh a, [rBCPS]                                   ; $51fd: $f0 $68
	ld hl, sp+$78                                    ; $51ff: $f8 $78
	ret c                                            ; $5201: $d8

	ld a, h                                          ; $5202: $7c
	call nz, $c060                                   ; $5203: $c4 $60 $c0
	ld [hl], b                                       ; $5206: $70
	ret nz                                           ; $5207: $c0

	jr nc, jr_067_51ea                               ; $5208: $30 $e0

	or b                                             ; $520a: $b0
	ldh [$d0], a                                     ; $520b: $e0 $d0
	ldh a, [$f8]                                     ; $520d: $f0 $f8
	or c                                             ; $520f: $b1
	ld a, c                                          ; $5210: $79
	reti                                             ; $5211: $d9


	or a                                             ; $5212: $b7
	jr z, @-$13                                      ; $5213: $28 $eb

	or h                                             ; $5215: $b4
	ld a, e                                          ; $5216: $7b
	ld d, h                                          ; $5217: $54
	ld a, c                                          ; $5218: $79
	ld d, [hl]                                       ; $5219: $56
	add b                                            ; $521a: $80
	ld [hl], l                                       ; $521b: $75
	ld e, [hl]                                       ; $521c: $5e
	ld d, a                                          ; $521d: $57
	ld a, [hl]                                       ; $521e: $7e
	ld d, [hl]                                       ; $521f: $56
	ld a, a                                          ; $5220: $7f
	ld l, l                                          ; $5221: $6d
	ld l, l                                          ; $5222: $6d
	ld b, h                                          ; $5223: $44
	ld b, h                                          ; $5224: $44
	ld b, b                                          ; $5225: $40
	ld b, b                                          ; $5226: $40
	nop                                              ; $5227: $00
	nop                                              ; $5228: $00
	inc bc                                           ; $5229: $03
	rrca                                             ; $522a: $0f
	rrca                                             ; $522b: $0f
	inc e                                            ; $522c: $1c
	rra                                              ; $522d: $1f
	ld [hl], b                                       ; $522e: $70
	ld a, a                                          ; $522f: $7f
	ldh [rIE], a                                     ; $5230: $e0 $ff
	add b                                            ; $5232: $80
	rst $38                                          ; $5233: $ff
	nop                                              ; $5234: $00
	rst $38                                          ; $5235: $ff
	inc bc                                           ; $5236: $03
	rst $38                                          ; $5237: $ff
	ld a, [hl]                                       ; $5238: $7e
	inc bc                                           ; $5239: $03
	sbc l                                            ; $523a: $9d
	nop                                              ; $523b: $00
	rlca                                             ; $523c: $07
	ld a, e                                          ; $523d: $7b
	cp $9e                                           ; $523e: $fe $9e
	rrca                                             ; $5240: $0f
	ld [hl], a                                       ; $5241: $77
	cp $80                                           ; $5242: $fe $80
	ld bc, $031f                                     ; $5244: $01 $1f $03
	rra                                              ; $5247: $1f
	dec b                                            ; $5248: $05
	ccf                                              ; $5249: $3f
	add hl, bc                                       ; $524a: $09
	ccf                                              ; $524b: $3f
	ld de, $63ff                                     ; $524c: $11 $ff $63
	db $fd                                           ; $524f: $fd
	adc a                                            ; $5250: $8f
	di                                               ; $5251: $f3
	ccf                                              ; $5252: $3f
	ld l, b                                          ; $5253: $68
	sbc a                                            ; $5254: $9f
	ld c, b                                          ; $5255: $48
	cp a                                             ; $5256: $bf
	ld b, h                                          ; $5257: $44
	rst $38                                          ; $5258: $ff
	ld h, h                                          ; $5259: $64
	cp a                                             ; $525a: $bf
	ld [hl], d                                       ; $525b: $72
	rst SubAFromDE                                          ; $525c: $df
	jp z, $a56f                                      ; $525d: $ca $6f $a5

	ld [hl], a                                       ; $5260: $77
	scf                                              ; $5261: $37
	ei                                               ; $5262: $fb
	sub [hl]                                         ; $5263: $96
	sbc a                                            ; $5264: $9f
	rst $38                                          ; $5265: $ff
	ld c, b                                          ; $5266: $48
	ld a, a                                          ; $5267: $7f
	ld [hl], h                                       ; $5268: $74
	ccf                                              ; $5269: $3f
	xor $3f                                          ; $526a: $ee $3f
	db $e4                                           ; $526c: $e4
	ld c, e                                          ; $526d: $4b
	cp $87                                           ; $526e: $fe $87
	add sp, $7f                                      ; $5270: $e8 $7f
	jp hl                                            ; $5272: $e9


	ld a, a                                          ; $5273: $7f
	ret                                              ; $5274: $c9


	rst $38                                          ; $5275: $ff
	ret                                              ; $5276: $c9


	rst SubAFromDE                                          ; $5277: $df
	ret                                              ; $5278: $c9


	db $db                                           ; $5279: $db
	ret                                              ; $527a: $c9


	db $db                                           ; $527b: $db
	sub d                                            ; $527c: $92
	db $db                                           ; $527d: $db
	sub d                                            ; $527e: $92
	sub e                                            ; $527f: $93
	add d                                            ; $5280: $82
	sub e                                            ; $5281: $93
	ld [bc], a                                       ; $5282: $02
	add a                                            ; $5283: $87
	inc h                                            ; $5284: $24
	daa                                              ; $5285: $27
	inc h                                            ; $5286: $24
	ld h, a                                          ; $5287: $67
	dec de                                           ; $5288: $1b
	ld h, b                                          ; $5289: $60
	sbc d                                            ; $528a: $9a
	pop af                                           ; $528b: $f1
	ld sp, hl                                        ; $528c: $f9
	or c                                             ; $528d: $b1
	ld a, e                                          ; $528e: $7b
	ret c                                            ; $528f: $d8

	scf                                              ; $5290: $37
	ld h, b                                          ; $5291: $60
	sbc l                                            ; $5292: $9d
	inc bc                                           ; $5293: $03
	rlca                                             ; $5294: $07
	ld e, e                                          ; $5295: $5b
	ld h, d                                          ; $5296: $62
	sbc d                                            ; $5297: $9a
	ccf                                              ; $5298: $3f
	jp Jump_067_7fee                                 ; $5299: $c3 $ee $7f


	inc a                                            ; $529c: $3c
	inc bc                                           ; $529d: $03
	ld h, b                                          ; $529e: $60
	ld e, e                                          ; $529f: $5b
	ld h, b                                          ; $52a0: $60
	sbc h                                            ; $52a1: $9c
	ret z                                            ; $52a2: $c8

	ld a, a                                          ; $52a3: $7f
	db $f4                                           ; $52a4: $f4
	ld e, e                                          ; $52a5: $5b
	ld h, b                                          ; $52a6: $60
	inc hl                                           ; $52a7: $23
	add b                                            ; $52a8: $80
	sbc d                                            ; $52a9: $9a
	pop hl                                           ; $52aa: $e1
	pop de                                           ; $52ab: $d1
	pop af                                           ; $52ac: $f1
	ei                                               ; $52ad: $fb
	or b                                             ; $52ae: $b0
	scf                                              ; $52af: $37
	add b                                            ; $52b0: $80
	sbc l                                            ; $52b1: $9d
	ld b, e                                          ; $52b2: $43
	ld b, a                                          ; $52b3: $47
	ld h, e                                          ; $52b4: $63
	add d                                            ; $52b5: $82
	sub [hl]                                         ; $52b6: $96
	ld a, $e7                                        ; $52b7: $3e $e7
	ld h, a                                          ; $52b9: $67
	cp l                                             ; $52ba: $bd
	db $fd                                           ; $52bb: $fd
	and l                                            ; $52bc: $a5
	ld l, $5f                                        ; $52bd: $2e $5f
	jr c, jr_067_52c4                                ; $52bf: $38 $03

	add b                                            ; $52c1: $80
	daa                                              ; $52c2: $27
	add b                                            ; $52c3: $80

jr_067_52c4:
	sbc [hl]                                         ; $52c4: $9e
	cp a                                             ; $52c5: $bf
	dec hl                                           ; $52c6: $2b
	add b                                            ; $52c7: $80
	sbc d                                            ; $52c8: $9a
	pop hl                                           ; $52c9: $e1
	or c                                             ; $52ca: $b1
	pop hl                                           ; $52cb: $e1
	pop de                                           ; $52cc: $d1
	ldh a, [$2f]                                     ; $52cd: $f0 $2f
	add b                                            ; $52cf: $80
	sbc e                                            ; $52d0: $9b
	ld b, a                                          ; $52d1: $47
	ld e, a                                          ; $52d2: $5f
	rra                                              ; $52d3: $1f
	ld a, b                                          ; $52d4: $78
	ld [hl], e                                       ; $52d5: $73
	add d                                            ; $52d6: $82
	sbc b                                            ; $52d7: $98
	rra                                              ; $52d8: $1f
	rst SubAFromBC                                          ; $52d9: $e7
	ld h, a                                          ; $52da: $67
	db $fd                                           ; $52db: $fd
	rst $38                                          ; $52dc: $ff
	and l                                            ; $52dd: $a5
	db $f4                                           ; $52de: $f4
	inc bc                                           ; $52df: $03
	add b                                            ; $52e0: $80
	daa                                              ; $52e1: $27
	add b                                            ; $52e2: $80
	sbc [hl]                                         ; $52e3: $9e
	cp a                                             ; $52e4: $bf
	ld [hl], a                                       ; $52e5: $77
	ld a, [hl]                                       ; $52e6: $7e
	adc h                                            ; $52e7: $8c
	ld a, c                                          ; $52e8: $79
	ret z                                            ; $52e9: $c8

	cp h                                             ; $52ea: $bc
	ldh [$f4], a                                     ; $52eb: $e0 $f4
	ld [hl], b                                       ; $52ed: $70
	or $00                                           ; $52ee: $f6 $00
	or $90                                           ; $52f0: $f6 $90
	inc a                                            ; $52f2: $3c
	db $10                                           ; $52f3: $10
	jr c, jr_067_5306                                ; $52f4: $38 $10

	nop                                              ; $52f6: $00
	nop                                              ; $52f7: $00
	rra                                              ; $52f8: $1f
	ld d, $13                                        ; $52f9: $16 $13
	ld a, [$c099]                                    ; $52fb: $fa $99 $c0
	add b                                            ; $52fe: $80
	pop af                                           ; $52ff: $f1
	pop hl                                           ; $5300: $e1
	cp a                                             ; $5301: $bf
	cp $47                                           ; $5302: $fe $47
	ldh [$98], a                                     ; $5304: $e0 $98

jr_067_5306:
	inc de                                           ; $5306: $13
	ld [de], a                                       ; $5307: $12
	ccf                                              ; $5308: $3f
	rra                                              ; $5309: $1f
	rra                                              ; $530a: $1f
	ld c, $0e                                        ; $530b: $0e $0e
	inc de                                           ; $530d: $13
	ldh [$6f], a                                     ; $530e: $e0 $6f
	sbc $13                                          ; $5310: $de $13
	ldh [$7b], a                                     ; $5312: $e0 $7b
	sbc $6f                                          ; $5314: $de $6f
	ldh [hDisp0_OBP1], a                                     ; $5316: $e0 $87
	ld [bc], a                                       ; $5318: $02
	rst FarCall                                          ; $5319: $f7
	rst SubAFromDE                                          ; $531a: $df
	ld bc, $03df                                     ; $531b: $01 $df $03
	sub [hl]                                         ; $531e: $96
	ld b, $07                                        ; $531f: $06 $07
	dec b                                            ; $5321: $05
	rlca                                             ; $5322: $07
	ld c, $0f                                        ; $5323: $0e $0f
	ld a, [bc]                                       ; $5325: $0a
	rrca                                             ; $5326: $0f
	add hl, bc                                       ; $5327: $09
	ld a, e                                          ; $5328: $7b
	cp $7f                                           ; $5329: $fe $7f
	or $7f                                           ; $532b: $f6 $7f
	ldh a, [c]                                       ; $532d: $f2
	add b                                            ; $532e: $80
	inc c                                            ; $532f: $0c
	rrca                                             ; $5330: $0f
	ld bc, $0201                                     ; $5331: $01 $01 $02
	inc bc                                           ; $5334: $03
	dec b                                            ; $5335: $05
	ld b, $07                                        ; $5336: $06 $07
	inc b                                            ; $5338: $04
	ld a, [bc]                                       ; $5339: $0a
	dec c                                            ; $533a: $0d
	dec c                                            ; $533b: $0d
	dec bc                                           ; $533c: $0b
	rrca                                             ; $533d: $0f
	dec bc                                           ; $533e: $0b
	ld [de], a                                       ; $533f: $12
	rra                                              ; $5340: $1f
	ld d, $1f                                        ; $5341: $16 $1f
	dec d                                            ; $5343: $15
	ld e, $1d                                        ; $5344: $1e $1d
	ld e, $17                                        ; $5346: $1e $17
	inc d                                            ; $5348: $14
	rla                                              ; $5349: $17
	inc d                                            ; $534a: $14
	rlca                                             ; $534b: $07
	inc b                                            ; $534c: $04
	rlca                                             ; $534d: $07
	sbc h                                            ; $534e: $9c
	inc b                                            ; $534f: $04
	dec b                                            ; $5350: $05
	ld b, $77                                        ; $5351: $06 $77
	cp $99                                           ; $5353: $fe $99
	inc bc                                           ; $5355: $03
	ld [bc], a                                       ; $5356: $02
	ld [bc], a                                       ; $5357: $02
	inc bc                                           ; $5358: $03
	ld [bc], a                                       ; $5359: $02
	inc bc                                           ; $535a: $03
	db $dd                                           ; $535b: $dd
	ld bc, $d5e0                                     ; $535c: $01 $e0 $d5
	ld [hl], a                                       ; $535f: $77
	sub b                                            ; $5360: $90
	add b                                            ; $5361: $80
	rra                                              ; $5362: $1f
	ld e, $27                                        ; $5363: $1e $27
	inc a                                            ; $5365: $3c
	ld b, a                                          ; $5366: $47
	ld a, h                                          ; $5367: $7c
	ld b, a                                          ; $5368: $47
	ld a, h                                          ; $5369: $7c
	rst GetHLinHL                                          ; $536a: $cf
	ld hl, sp-$01                                    ; $536b: $f8 $ff
	ld hl, sp-$31                                    ; $536d: $f8 $cf
	ld sp, hl                                        ; $536f: $f9
	ld a, a                                          ; $5370: $7f
	ld sp, hl                                        ; $5371: $f9
	rst GetHLinHL                                          ; $5372: $cf
	ld a, [$fa4f]                                    ; $5373: $fa $4f $fa
	ld c, a                                          ; $5376: $4f
	db $fc                                           ; $5377: $fc
	ld a, a                                          ; $5378: $7f
	call z, $cc7f                                    ; $5379: $cc $7f $cc
	ccf                                              ; $537c: $3f
	db $ec                                           ; $537d: $ec
	dec hl                                           ; $537e: $2b
	cp $33                                           ; $537f: $fe $33
	sbc h                                            ; $5381: $9c
	cp $31                                           ; $5382: $fe $31
	rst $38                                          ; $5384: $ff
	db $ed                                           ; $5385: $ed
	rst SubAFromDE                                          ; $5386: $df
	rlca                                             ; $5387: $07
	add l                                            ; $5388: $85
	dec de                                           ; $5389: $1b
	inc e                                            ; $538a: $1c
	daa                                              ; $538b: $27
	ccf                                              ; $538c: $3f
	ld e, e                                          ; $538d: $5b
	ld a, h                                          ; $538e: $7c
	ld a, l                                          ; $538f: $7d
	ld h, e                                          ; $5390: $63
	or $8f                                           ; $5391: $f6 $8f
	xor a                                            ; $5393: $af
	jr jr_067_53f0                                   ; $5394: $18 $5a

	ld sp, $63b4                                     ; $5396: $31 $b4 $63
	ld l, c                                          ; $5399: $69
	add $c2                                          ; $539a: $c6 $c2
	adc h                                            ; $539c: $8c
	dec d                                            ; $539d: $15
	adc b                                            ; $539e: $88
	adc c                                            ; $539f: $89
	db $10                                           ; $53a0: $10
	ld [hl+], a                                      ; $53a1: $22
	ld de, $c1e0                                     ; $53a2: $11 $e0 $c1
	ld [hl], a                                       ; $53a5: $77
	inc a                                            ; $53a6: $3c
	ld a, e                                          ; $53a7: $7b
	ld l, b                                          ; $53a8: $68
	sub a                                            ; $53a9: $97
	inc e                                            ; $53aa: $1c
	rst $38                                          ; $53ab: $ff
	db $e3                                           ; $53ac: $e3
	db $fd                                           ; $53ad: $fd
	rra                                              ; $53ae: $1f

jr_067_53af:
	rst $38                                          ; $53af: $ff
	pop hl                                           ; $53b0: $e1
	rst $38                                          ; $53b1: $ff
	jp c, $2f01                                      ; $53b2: $da $01 $2f

	sub $47                                          ; $53b5: $d6 $47
	and $df                                          ; $53b7: $e6 $df
	rrca                                             ; $53b9: $0f
	ld a, [hl]                                       ; $53ba: $7e
	db $f4                                           ; $53bb: $f4
	ld a, [hl]                                       ; $53bc: $7e
	ld hl, sp-$22                                    ; $53bd: $f8 $de
	rst $38                                          ; $53bf: $ff
	add l                                            ; $53c0: $85
	nop                                              ; $53c1: $00
	ld a, l                                          ; $53c2: $7d
	cp $fd                                           ; $53c3: $fe $fd
	inc bc                                           ; $53c5: $03
	ld [hl], b                                       ; $53c6: $70
	rst $38                                          ; $53c7: $ff
	cp a                                             ; $53c8: $bf
	ret nz                                           ; $53c9: $c0

	ldh a, [rIF]                                     ; $53ca: $f0 $0f
	adc h                                            ; $53cc: $8c
	ld [hl], e                                       ; $53cd: $73
	ld a, b                                          ; $53ce: $78
	add a                                            ; $53cf: $87
	rst SubAFromBC                                          ; $53d0: $e7
	jr jr_067_53af                                   ; $53d1: $18 $dc

	inc hl                                           ; $53d3: $23
	xor b                                            ; $53d4: $a8
	ld b, [hl]                                       ; $53d5: $46
	ld d, c                                          ; $53d6: $51
	adc h                                            ; $53d7: $8c
	ld [bc], a                                       ; $53d8: $02
	sbc c                                            ; $53d9: $99
	xor d                                            ; $53da: $aa
	inc bc                                           ; $53db: $03
	ld h, b                                          ; $53dc: $60
	pop hl                                           ; $53dd: $e1
	add b                                            ; $53de: $80
	rst JumpTable                                          ; $53df: $c7
	ld a, a                                          ; $53e0: $7f
	adc a                                            ; $53e1: $8f
	rst $38                                          ; $53e2: $ff
	rst GetHLinHL                                          ; $53e3: $cf
	cp l                                             ; $53e4: $bd
	adc $ba                                          ; $53e5: $ce $ba
	ld c, [hl]                                       ; $53e7: $4e
	cp d                                             ; $53e8: $ba
	adc $3a                                          ; $53e9: $ce $3a
	rst AddAOntoHL                                          ; $53eb: $ef
	dec de                                           ; $53ec: $1b
	xor $1a                                          ; $53ed: $ee $1a
	rst $38                                          ; $53ef: $ff

jr_067_53f0:
	dec b                                            ; $53f0: $05
	rst $38                                          ; $53f1: $ff
	inc b                                            ; $53f2: $04
	rst $38                                          ; $53f3: $ff
	add h                                            ; $53f4: $84
	rst $38                                          ; $53f5: $ff
	add [hl]                                         ; $53f6: $86
	ei                                               ; $53f7: $fb
	rst GetHLinHL                                          ; $53f8: $cf
	cp e                                             ; $53f9: $bb
	cp [hl]                                          ; $53fa: $be
	xor c                                            ; $53fb: $a9
	cp a                                             ; $53fc: $bf
	jp hl                                            ; $53fd: $e9


	adc [hl]                                         ; $53fe: $8e
	rst $38                                          ; $53ff: $ff
	and l                                            ; $5400: $a5
	cp a                                             ; $5401: $bf
	db $f4                                           ; $5402: $f4
	rst $38                                          ; $5403: $ff
	or d                                             ; $5404: $b2
	cp a                                             ; $5405: $bf
	ld a, [$adef]                                    ; $5406: $fa $ef $ad
	and a                                            ; $5409: $a7
	ld h, [hl]                                       ; $540a: $66
	ld b, e                                          ; $540b: $43
	db $e3                                           ; $540c: $e3
	pop bc                                           ; $540d: $c1
	ld h, e                                          ; $540e: $63
	ld b, e                                          ; $540f: $43
	di                                               ; $5410: $f3
	rst SubAFromDE                                          ; $5411: $df
	pop hl                                           ; $5412: $e1
	add b                                            ; $5413: $80
	sbc [hl]                                         ; $5414: $9e
	ccf                                              ; $5415: $3f
	xor l                                            ; $5416: $ad
	adc $67                                          ; $5417: $ce $67
	push af                                          ; $5419: $f5
	call nc, $c93b                                   ; $541a: $d4 $3b $c9
	rst $38                                          ; $541d: $ff
	ld [hl-], a                                      ; $541e: $32
	rst $38                                          ; $541f: $ff
	db $ec                                           ; $5420: $ec
	rra                                              ; $5421: $1f
	dec b                                            ; $5422: $05
	rst $38                                          ; $5423: $ff
	ld a, a                                          ; $5424: $7f
	cp $ed                                           ; $5425: $fe $ed
	rra                                              ; $5427: $1f
	ld [hl], a                                       ; $5428: $77
	cp $fd                                           ; $5429: $fe $fd
	rrca                                             ; $542b: $0f
	add $3f                                          ; $542c: $c6 $3f
	dec a                                            ; $542e: $3d
	rst GetHLinHL                                          ; $542f: $cf
	halt                                             ; $5430: $76
	adc a                                            ; $5431: $8f
	and l                                            ; $5432: $a5
	sbc [hl]                                         ; $5433: $9e
	rra                                              ; $5434: $1f
	ldh [$c1], a                                     ; $5435: $e0 $c1
	ld a, [hl]                                       ; $5437: $7e
	add $9d                                          ; $5438: $c6 $9d
	rlca                                             ; $543a: $07
	nop                                              ; $543b: $00
	ld l, [hl]                                       ; $543c: $6e
	db $eb                                           ; $543d: $eb
	sub c                                            ; $543e: $91
	add b                                            ; $543f: $80
	nop                                              ; $5440: $00
	pop bc                                           ; $5441: $c1
	nop                                              ; $5442: $00
	pop bc                                           ; $5443: $c1
	add b                                            ; $5444: $80
	ld a, a                                          ; $5445: $7f
	ld a, a                                          ; $5446: $7f
	add b                                            ; $5447: $80
	add b                                            ; $5448: $80
	rst $38                                          ; $5449: $ff
	ld a, a                                          ; $544a: $7f
	rst $38                                          ; $544b: $ff
	nop                                              ; $544c: $00
	ld a, e                                          ; $544d: $7b
	cp $9d                                           ; $544e: $fe $9d
	rst $38                                          ; $5450: $ff
	add c                                            ; $5451: $81
	ld a, d                                          ; $5452: $7a
	call z, $828f                                    ; $5453: $cc $8f $82
	inc bc                                           ; $5456: $03
	add h                                            ; $5457: $84
	add a                                            ; $5458: $87
	ret z                                            ; $5459: $c8

	adc a                                            ; $545a: $8f
	ld [hl], c                                       ; $545b: $71
	rst SubAFromDE                                          ; $545c: $df
	ld [hl], e                                       ; $545d: $73
	rst $38                                          ; $545e: $ff
	sbc h                                            ; $545f: $9c
	rst $38                                          ; $5460: $ff
	rst GetHLinHL                                          ; $5461: $cf
	rst $38                                          ; $5462: $ff
	daa                                              ; $5463: $27
	cp $f3                                           ; $5464: $fe $f3
	rst SubAFromDE                                          ; $5466: $df
	ld hl, sp-$80                                    ; $5467: $f8 $80
	and b                                            ; $5469: $a0
	ld h, b                                          ; $546a: $60
	cp $fe                                           ; $546b: $fe $fe
	rst $38                                          ; $546d: $ff
	add c                                            ; $546e: $81
	add c                                            ; $546f: $81
	ld a, [hl]                                       ; $5470: $7e
	dec a                                            ; $5471: $3d
	jp $01fe                                         ; $5472: $c3 $fe $01


	pop hl                                           ; $5475: $e1
	cp $3c                                           ; $5476: $fe $3c
	jp $0081                                         ; $5478: $c3 $81 $00


	jp hl                                            ; $547b: $e9


	add [hl]                                         ; $547c: $86
	add d                                            ; $547d: $82
	ld bc, $e0fc                                     ; $547e: $01 $fc $e0
	sub e                                            ; $5481: $93
	inc e                                            ; $5482: $1c
	db $ed                                           ; $5483: $ed
	jp z, $2536                                      ; $5484: $ca $36 $25

	rst SubAFromDE                                          ; $5487: $df
	sbc [hl]                                         ; $5488: $9e
	sub h                                            ; $5489: $94
	ldh [$c1], a                                     ; $548a: $e0 $c1
	sbc c                                            ; $548c: $99
	or $1f                                           ; $548d: $f6 $1f
	ldh a, [c]                                       ; $548f: $f2
	rra                                              ; $5490: $1f
	ld a, [$770f]                                    ; $5491: $fa $0f $77
	cp $80                                           ; $5494: $fe $80
	cp $1f                                           ; $5496: $fe $1f
	db $ed                                           ; $5498: $ed
	cpl                                              ; $5499: $2f
	reti                                             ; $549a: $d9


	rst SubAFromDE                                          ; $549b: $df
	ccf                                              ; $549c: $3f

jr_067_549d:
	ld sp, $d0ff                                     ; $549d: $31 $ff $d0
	rst $38                                          ; $54a0: $ff
	jr nc, @+$01                                     ; $54a1: $30 $ff

	jr nc, @-$2f                                     ; $54a3: $30 $cf

	ld sp, hl                                        ; $54a5: $f9
	rst GetHLinHL                                          ; $54a6: $cf
	ld a, a                                          ; $54a7: $7f
	adc l                                            ; $54a8: $8d
	db $fd                                           ; $54a9: $fd
	dec e                                            ; $54aa: $1d
	db $fd                                           ; $54ab: $fd
	scf                                              ; $54ac: $37
	rst $38                                          ; $54ad: $ff
	ld h, l                                          ; $54ae: $65
	db $fd                                           ; $54af: $fd
	rst GetHLinHL                                          ; $54b0: $cf
	rst $38                                          ; $54b1: $ff
	sbc l                                            ; $54b2: $9d
	push af                                          ; $54b3: $f5
	ccf                                              ; $54b4: $3f
	sbc b                                            ; $54b5: $98
	rst SubAFromBC                                          ; $54b6: $e7
	db $ed                                           ; $54b7: $ed
	push bc                                          ; $54b8: $c5
	adc a                                            ; $54b9: $8f
	ld c, $0b                                        ; $54ba: $0e $0b
	ld a, [bc]                                       ; $54bc: $0a
	db $ed                                           ; $54bd: $ed
	rst SubAFromDE                                          ; $54be: $df
	add b                                            ; $54bf: $80
	add l                                            ; $54c0: $85
	ldh [$60], a                                     ; $54c1: $e0 $60
	sub b                                            ; $54c3: $90
	ldh a, [rBCPS]                                   ; $54c4: $f0 $68
	ld hl, sp-$64                                    ; $54c6: $f8 $9c
	ld a, h                                          ; $54c8: $7c
	ld b, [hl]                                       ; $54c9: $46
	cp [hl]                                          ; $54ca: $be
	sbc a                                            ; $54cb: $9f
	ld h, e                                          ; $54cc: $63
	db $dd                                           ; $54cd: $dd
	inc sp                                           ; $54ce: $33
	xor $99                                          ; $54cf: $ee $99
	halt                                             ; $54d1: $76
	call Call_067_673c                               ; $54d2: $cd $3c $67
	ld [$fa37], a                                    ; $54d5: $ea $37 $fa
	rla                                              ; $54d8: $17
	ld [hl], c                                       ; $54d9: $71
	sbc a                                            ; $54da: $9f
	ldh [$c1], a                                     ; $54db: $e0 $c1
	sbc b                                            ; $54dd: $98
	ld a, [hl+]                                      ; $54de: $2a
	sbc $5e                                          ; $54df: $de $5e
	or [hl]                                          ; $54e1: $b6
	ld e, e                                          ; $54e2: $5b
	or a                                             ; $54e3: $b7
	ld e, e                                          ; $54e4: $5b
	ld [hl], e                                       ; $54e5: $73
	db $fc                                           ; $54e6: $fc
	adc c                                            ; $54e7: $89
	ld [hl], a                                       ; $54e8: $77

jr_067_54e9:
	xor h                                            ; $54e9: $ac
	ld [hl], a                                       ; $54ea: $77
	xor h                                            ; $54eb: $ac
	inc l                                            ; $54ec: $2c
	ld hl, sp-$58                                    ; $54ed: $f8 $a8
	ld hl, sp-$48                                    ; $54ef: $f8 $b8
	ldh a, [$b0]                                     ; $54f1: $f0 $b0
	ldh [$a0], a                                     ; $54f3: $e0 $a0
	ldh [$e0], a                                     ; $54f5: $e0 $e0
	ld h, b                                          ; $54f7: $60
	ldh [$60], a                                     ; $54f8: $e0 $60
	and b                                            ; $54fa: $a0
	jr nz, jr_067_549d                               ; $54fb: $20 $a0

	jr nz, jr_067_5536                               ; $54fd: $20 $37

	ld [hl], b                                       ; $54ff: $70
	rst SubAFromDE                                          ; $5500: $df
	add b                                            ; $5501: $80
	sbc c                                            ; $5502: $99
	ld b, b                                          ; $5503: $40
	ret nz                                           ; $5504: $c0

	ld b, b                                          ; $5505: $40
	ret nz                                           ; $5506: $c0

	jr nz, jr_067_54e9                               ; $5507: $20 $e0

	ld l, a                                          ; $5509: $6f
	cp $7f                                           ; $550a: $fe $7f
	ld h, h                                          ; $550c: $64
	ld [hl], a                                       ; $550d: $77
	cp $9e                                           ; $550e: $fe $9e
	ld d, b                                          ; $5510: $50
	ld l, e                                          ; $5511: $6b
	cp $9e                                           ; $5512: $fe $9e
	ret nc                                           ; $5514: $d0

	ld h, e                                          ; $5515: $63
	or $7f                                           ; $5516: $f6 $7f
	cp $7b                                           ; $5518: $fe $7b
	cp l                                             ; $551a: $bd
	ld [hl], e                                       ; $551b: $73
	cp $77                                           ; $551c: $fe $77
	jp nc, $fe77                                     ; $551e: $d2 $77 $fe

	db $db                                           ; $5521: $db
	add b                                            ; $5522: $80
	pop af                                           ; $5523: $f1
	ld a, d                                          ; $5524: $7a
	ld a, [hl]                                       ; $5525: $7e
	add b                                            ; $5526: $80
	ld bc, $feff                                     ; $5527: $01 $ff $fe
	ld bc, $3dff                                     ; $552a: $01 $ff $3d
	jp $07fa                                         ; $552d: $c3 $fa $07


	rlca                                             ; $5530: $07
	ld [bc], a                                       ; $5531: $02
	dec c                                            ; $5532: $0d
	ld b, $0f                                        ; $5533: $06 $0f
	inc b                                            ; $5535: $04

jr_067_5536:
	dec bc                                           ; $5536: $0b
	inc c                                            ; $5537: $0c
	rra                                              ; $5538: $1f
	ld [$081f], sp                                   ; $5539: $08 $1f $08
	rla                                              ; $553c: $17
	jr @+$19                                         ; $553d: $18 $17

	jr jr_067_5554                                   ; $553f: $18 $13

	inc e                                            ; $5541: $1c
	db $10                                           ; $5542: $10
	rra                                              ; $5543: $1f
	ld de, $951f                                     ; $5544: $11 $1f $95
	ld sp, $3b1f                                     ; $5547: $31 $1f $3b
	rra                                              ; $554a: $1f
	ld e, $3e                                        ; $554b: $1e $3e
	ld d, $3e                                        ; $554d: $16 $3e
	ld l, $7f                                        ; $554f: $2e $7f
	db $eb                                           ; $5551: $eb
	rst SubAFromDE                                          ; $5552: $df
	ret nz                                           ; $5553: $c0

jr_067_5554:
	sbc d                                            ; $5554: $9a
	ld hl, sp+$78                                    ; $5555: $f8 $78
	add $fe                                          ; $5557: $c6 $fe
	dec b                                            ; $5559: $05
	ld a, c                                          ; $555a: $79
	ld h, e                                          ; $555b: $63
	add b                                            ; $555c: $80
	db $fd                                           ; $555d: $fd
	rlca                                             ; $555e: $07
	push af                                          ; $555f: $f5
	rrca                                             ; $5560: $0f

jr_067_5561:
	rst $38                                          ; $5561: $ff
	rrca                                             ; $5562: $0f
	cp $01                                           ; $5563: $fe $01
	xor $11                                          ; $5565: $ee $11
	call z, $b832                                    ; $5567: $cc $32 $b8
	ld h, h                                          ; $556a: $64
	ld [hl], b                                       ; $556b: $70
	ret z                                            ; $556c: $c8

	ldh [$d0], a                                     ; $556d: $e0 $d0
	add b                                            ; $556f: $80
	pop hl                                           ; $5570: $e1
	add e                                            ; $5571: $83
	jp $8607                                         ; $5572: $c3 $07 $86


	inc c                                            ; $5575: $0c
	rrca                                             ; $5576: $0f
	dec de                                           ; $5577: $1b
	rra                                              ; $5578: $1f
	inc sp                                           ; $5579: $33
	inc a                                            ; $557a: $3c
	ret nz                                           ; $557b: $c0

	ld a, l                                          ; $557c: $7d
	jp hl                                            ; $557d: $e9


	db $e4                                           ; $557e: $e4
	ld l, a                                          ; $557f: $6f
	jr z, jr_067_5561                                ; $5580: $28 $df

	ret nz                                           ; $5582: $c0

	rst SubAFromDE                                          ; $5583: $df
	ldh [hDisp1_WX], a                                     ; $5584: $e0 $96
	ldh a, [$30]                                     ; $5586: $f0 $30
	ld hl, sp+$18                                    ; $5588: $f8 $18
	db $f4                                           ; $558a: $f4
	inc l                                            ; $558b: $2c
	sbc h                                            ; $558c: $9c
	ld [hl], h                                       ; $558d: $74
	ld [hl], h                                       ; $558e: $74
	sbc $fc                                          ; $558f: $de $fc
	sbc b                                            ; $5591: $98
	ld d, $fe                                        ; $5592: $16 $fe
	ld d, $fe                                        ; $5594: $16 $fe
	dec d                                            ; $5596: $15
	rst $38                                          ; $5597: $ff
	push de                                          ; $5598: $d5
	sbc $ff                                          ; $5599: $de $ff
	sbc l                                            ; $559b: $9d
	add hl, sp                                       ; $559c: $39
	rst $38                                          ; $559d: $ff
	inc hl                                           ; $559e: $23
	nop                                              ; $559f: $00
	call c, $9abb                                    ; $55a0: $dc $bb $9a
	adc b                                            ; $55a3: $88
	ld [$bb99], sp                                   ; $55a4: $08 $99 $bb
	nop                                              ; $55a7: $00
	ld a, e                                          ; $55a8: $7b
	ei                                               ; $55a9: $fb
	sbc b                                            ; $55aa: $98
	add b                                            ; $55ab: $80
	ld [hl+], a                                      ; $55ac: $22
	add b                                            ; $55ad: $80
	ld [$9199], sp                                   ; $55ae: $08 $99 $91
	ld [hl+], a                                      ; $55b1: $22
	ld a, e                                          ; $55b2: $7b
	or $73                                           ; $55b3: $f6 $73
	ei                                               ; $55b5: $fb
	sbc c                                            ; $55b6: $99
	adc b                                            ; $55b7: $88
	nop                                              ; $55b8: $00
	adc b                                            ; $55b9: $88
	adc b                                            ; $55ba: $88
	cp e                                             ; $55bb: $bb
	nop                                              ; $55bc: $00
	ld a, e                                          ; $55bd: $7b
	cp $9e                                           ; $55be: $fe $9e
	cp e                                             ; $55c0: $bb
	sub [hl]                                         ; $55c1: $96
	ld bc, $108c                                     ; $55c2: $01 $8c $10
	jr nz, jr_067_560c                               ; $55c5: $20 $45

	ld [hl+], a                                      ; $55c7: $22
	ld b, b                                          ; $55c8: $40
	ld h, $20                                        ; $55c9: $26 $20
	ld b, [hl]                                       ; $55cb: $46
	xor [hl]                                         ; $55cc: $ae
	ld b, h                                          ; $55cd: $44
	and $4c                                          ; $55ce: $e6 $4c
	and $4c                                          ; $55d0: $e6 $4c
	db $e4                                           ; $55d2: $e4
	ld c, [hl]                                       ; $55d3: $4e
	push af                                          ; $55d4: $f5
	ld c, [hl]                                       ; $55d5: $4e
	di                                               ; $55d6: $f3
	ld a, e                                          ; $55d7: $7b
	cp $86                                           ; $55d8: $fe $86

jr_067_55da:
	jp c, $d967                                      ; $55da: $da $67 $d9

	ld h, a                                          ; $55dd: $67
	cp c                                             ; $55de: $b9
	ld h, a                                          ; $55df: $67
	ld l, b                                          ; $55e0: $68
	or a                                             ; $55e1: $b7
	call c, $b4b3                                    ; $55e2: $dc $b3 $b4
	db $db                                           ; $55e5: $db
	ld c, d                                          ; $55e6: $4a
	ld a, l                                          ; $55e7: $7d
	inc h                                            ; $55e8: $24
	ccf                                              ; $55e9: $3f
	ld [de], a                                       ; $55ea: $12
	rra                                              ; $55eb: $1f
	add hl, bc                                       ; $55ec: $09
	rrca                                             ; $55ed: $0f
	inc b                                            ; $55ee: $04
	rlca                                             ; $55ef: $07
	ld b, $07                                        ; $55f0: $06 $07
	dec b                                            ; $55f2: $05
	ld a, e                                          ; $55f3: $7b
	cp $9d                                           ; $55f4: $fe $9d
	ld b, $05                                        ; $55f6: $06 $05
	ld [hl], a                                       ; $55f8: $77
	cp $77                                           ; $55f9: $fe $77
	or $8e                                           ; $55fb: $f6 $8e
	ld [bc], a                                       ; $55fd: $02
	inc bc                                           ; $55fe: $03
	ld [bc], a                                       ; $55ff: $02
	inc bc                                           ; $5600: $03
	ld bc, $5532                                     ; $5601: $01 $32 $55
	ld [hl+], a                                      ; $5604: $22
	ld b, d                                          ; $5605: $42
	inc h                                            ; $5606: $24
	jr nz, jr_067_566d                               ; $5607: $20 $64

	jr nz, @+$66                                     ; $5609: $20 $64

	xor d                                            ; $560b: $aa

jr_067_560c:
	ld h, h                                          ; $560c: $64
	xor a                                            ; $560d: $af
	ld a, e                                          ; $560e: $7b
	cp $80                                           ; $560f: $fe $80
	inc h                                            ; $5611: $24
	rst $38                                          ; $5612: $ff
	ld [hl+], a                                      ; $5613: $22
	rst $38                                          ; $5614: $ff
	ld [de], a                                       ; $5615: $12
	rst $38                                          ; $5616: $ff
	ld de, $09ff                                     ; $5617: $11 $ff $09
	rst $38                                          ; $561a: $ff
	inc c                                            ; $561b: $0c
	rst $38                                          ; $561c: $ff
	add [hl]                                         ; $561d: $86
	rst $38                                          ; $561e: $ff
	rst JumpTable                                          ; $561f: $c7
	db $fd                                           ; $5620: $fd
	ld h, e                                          ; $5621: $63
	cp $71                                           ; $5622: $fe $71
	rst SubAFromDE                                          ; $5624: $df
	inc a                                            ; $5625: $3c
	rst AddAOntoHL                                          ; $5626: $ef
	rra                                              ; $5627: $1f
	di                                               ; $5628: $f3
	adc a                                            ; $5629: $8f
	ld hl, sp-$19                                    ; $562a: $f8 $e7
	db $fc                                           ; $562c: $fc
	ld a, e                                          ; $562d: $7b
	sbc $bf                                          ; $562e: $de $bf
	add c                                            ; $5630: $81
	rst SubAFromBC                                          ; $5631: $e7
	ld [hl], b                                       ; $5632: $70
	ldh a, [$60]                                     ; $5633: $f0 $60
	ldh [$50], a                                     ; $5635: $e0 $50
	ldh a, [$58]                                     ; $5637: $f0 $58
	ld hl, sp+$4c                                    ; $5639: $f8 $4c
	db $fc                                           ; $563b: $fc
	dec hl                                           ; $563c: $2b
	cp $b1                                           ; $563d: $fe $b1
	rst $38                                          ; $563f: $ff
	ld h, e                                          ; $5640: $63
	rst $38                                          ; $5641: $ff
	ld e, [hl]                                       ; $5642: $5e
	ld h, $17                                        ; $5643: $26 $17
	ld c, a                                          ; $5645: $4f
	adc c                                            ; $5646: $89
	ld e, c                                          ; $5647: $59
	jr nc, jr_067_55da                               ; $5648: $30 $90

	db $10                                           ; $564a: $10
	or b                                             ; $564b: $b0
	db $10                                           ; $564c: $10
	or b                                             ; $564d: $b0
	ret nc                                           ; $564e: $d0

	ld a, e                                          ; $564f: $7b
	cp $80                                           ; $5650: $fe $80
	sub b                                            ; $5652: $90
	ldh a, [hDisp1_SCY]                                     ; $5653: $f0 $90
	ldh a, [$58]                                     ; $5655: $f0 $58
	ldh a, [rBCPS]                                   ; $5657: $f0 $68
	ld sp, hl                                        ; $5659: $f9
	dec a                                            ; $565a: $3d
	db $fd                                           ; $565b: $fd
	or c                                             ; $565c: $b1
	ldh [$db], a                                     ; $565d: $e0 $db
	ldh a, [$79]                                     ; $565f: $f0 $79
	ld hl, sp-$21                                    ; $5661: $f8 $df
	ld d, d                                          ; $5663: $52
	ld a, a                                          ; $5664: $7f
	ld c, e                                          ; $5665: $4b
	ld a, l                                          ; $5666: $7d
	dec hl                                           ; $5667: $2b
	ld sp, hl                                        ; $5668: $f9
	xor a                                            ; $5669: $af
	db $ed                                           ; $566a: $ed
	cp a                                             ; $566b: $bf
	xor h                                            ; $566c: $ac

jr_067_566d:
	rst $38                                          ; $566d: $ff
	sub $d7                                          ; $566e: $d6 $d7
	jp nc, $d3df                                     ; $5670: $d2 $df $d3

	add b                                            ; $5673: $80
	sub c                                            ; $5674: $91
	add b                                            ; $5675: $80
	ccf                                              ; $5676: $3f
	ccf                                              ; $5677: $3f
	rst $38                                          ; $5678: $ff
	rst $38                                          ; $5679: $ff
	ret nz                                           ; $567a: $c0

	rst $38                                          ; $567b: $ff
	nop                                              ; $567c: $00
	rst $38                                          ; $567d: $ff
	inc e                                            ; $567e: $1c
	rst $38                                          ; $567f: $ff
	ld a, a                                          ; $5680: $7f
	rst SubAFromBC                                          ; $5681: $e7
	rst FarCall                                          ; $5682: $f7
	cp l                                             ; $5683: $bd
	db $fd                                           ; $5684: $fd
	dec h                                            ; $5685: $25
	ld [hl], $7f                                     ; $5686: $36 $7f
	jr jr_067_568d                                   ; $5688: $18 $03

	nop                                              ; $568a: $00
	ld e, a                                          ; $568b: $5f
	nop                                              ; $568c: $00

jr_067_568d:
	or a                                             ; $568d: $b7
	nop                                              ; $568e: $00
	rrca                                             ; $568f: $0f
	nop                                              ; $5690: $00
	rrca                                             ; $5691: $0f
	ld bc, $1f80                                     ; $5692: $01 $80 $1f
	ld bc, $031f                                     ; $5695: $01 $1f $03
	rra                                              ; $5698: $1f
	rlca                                             ; $5699: $07
	ld a, $0f                                        ; $569a: $3e $0f
	ld [hl], $1f                                     ; $569c: $36 $1f
	ld [hl], d                                       ; $569e: $72
	ccf                                              ; $569f: $3f
	ldh a, [c]                                       ; $56a0: $f2
	rst SubAFromDE                                          ; $56a1: $df
	ld a, [$a91f]                                    ; $56a2: $fa $1f $a9
	ld e, a                                          ; $56a5: $5f
	adc c                                            ; $56a6: $89
	ld a, a                                          ; $56a7: $7f
	and h                                            ; $56a8: $a4
	rst $38                                          ; $56a9: $ff
	ld h, h                                          ; $56aa: $64
	rst $38                                          ; $56ab: $ff
	inc h                                            ; $56ac: $24
	cp a                                             ; $56ad: $bf
	sub h                                            ; $56ae: $94
	rst SubAFromDE                                          ; $56af: $df
	jp z, $66ef                                      ; $56b0: $ca $ef $66

	sub l                                            ; $56b3: $95
	rst FarCall                                          ; $56b4: $f7
	ld e, e                                          ; $56b5: $5b
	rst $38                                          ; $56b6: $ff
	and a                                            ; $56b7: $a7
	rst $38                                          ; $56b8: $ff
	ldh a, [c]                                       ; $56b9: $f2
	ld a, a                                          ; $56ba: $7f
	ldh a, [c]                                       ; $56bb: $f2
	ccf                                              ; $56bc: $3f
	ldh [c], a                                       ; $56bd: $e2
	ld [hl], a                                       ; $56be: $77
	cp $96                                           ; $56bf: $fe $96
	scf                                              ; $56c1: $37
	ldh [c], a                                       ; $56c2: $e2
	or a                                             ; $56c3: $b7
	ldh [c], a                                       ; $56c4: $e2
	scf                                              ; $56c5: $37
	jp nz, $c277                                     ; $56c6: $c2 $77 $c2

	ld d, a                                          ; $56c9: $57
	ld [hl], a                                       ; $56ca: $77
	cp $89                                           ; $56cb: $fe $89
	add h                                            ; $56cd: $84
	rst SubAFromHL                                          ; $56ce: $d7
	add h                                            ; $56cf: $84
	or a                                             ; $56d0: $b7
	add h                                            ; $56d1: $84
	or a                                             ; $56d2: $b7
	ld d, h                                          ; $56d3: $54
	xor a                                            ; $56d4: $af
	call nc, $d52f                                   ; $56d5: $d4 $2f $d5
	cpl                                              ; $56d8: $2f
	reti                                             ; $56d9: $d9


	cpl                                              ; $56da: $2f
	sbc c                                            ; $56db: $99
	ld l, a                                          ; $56dc: $6f
	xor d                                            ; $56dd: $aa
	ld e, [hl]                                       ; $56de: $5e
	xor d                                            ; $56df: $aa
	ld e, [hl]                                       ; $56e0: $5e
	ld a, [hl+]                                      ; $56e1: $2a
	sbc $3b                                          ; $56e2: $de $3b
	add b                                            ; $56e4: $80
	rst SubAFromDE                                          ; $56e5: $df
	rra                                              ; $56e6: $1f
	rst SubAFromDE                                          ; $56e7: $df
	rst $38                                          ; $56e8: $ff
	sbc [hl]                                         ; $56e9: $9e
	ldh [$7b], a                                     ; $56ea: $e0 $7b
	add b                                            ; $56ec: $80
	ld a, a                                          ; $56ed: $7f
	cp $99                                           ; $56ee: $fe $99
	ld e, $e7                                        ; $56f0: $1e $e7
	ld [hl], a                                       ; $56f2: $77
	db $fd                                           ; $56f3: $fd
	db $fd                                           ; $56f4: $fd
	and l                                            ; $56f5: $a5
	inc bc                                           ; $56f6: $03
	add b                                            ; $56f7: $80
	rla                                              ; $56f8: $17
	add b                                            ; $56f9: $80
	ccf                                              ; $56fa: $3f
	and b                                            ; $56fb: $a0
	sub a                                            ; $56fc: $97
	add e                                            ; $56fd: $83
	nop                                              ; $56fe: $00
	nop                                              ; $56ff: $00
	ld a, a                                          ; $5700: $7f
	ld a, a                                          ; $5701: $7f
	rst $38                                          ; $5702: $ff
	rst $38                                          ; $5703: $ff
	add b                                            ; $5704: $80
	ld [hl], e                                       ; $5705: $73
	sbc [hl]                                         ; $5706: $9e
	ld a, a                                          ; $5707: $7f
	cp $9a                                           ; $5708: $fe $9a
	rrca                                             ; $570a: $0f
	db $e3                                           ; $570b: $e3
	or $ff                                           ; $570c: $f6 $ff
	inc a                                            ; $570e: $3c
	inc bc                                           ; $570f: $03
	and b                                            ; $5710: $a0
	daa                                              ; $5711: $27
	and b                                            ; $5712: $a0
	sbc [hl]                                         ; $5713: $9e
	scf                                              ; $5714: $37
	inc sp                                           ; $5715: $33
	and b                                            ; $5716: $a0
	ld h, [hl]                                       ; $5717: $66
	cp [hl]                                          ; $5718: $be
	ld [hl], e                                       ; $5719: $73
	cp $9b                                           ; $571a: $fe $9b
	ld a, a                                          ; $571c: $7f
	rlca                                             ; $571d: $07
	rst $38                                          ; $571e: $ff
	cp $03                                           ; $571f: $fe $03
	and b                                            ; $5721: $a0
	inc hl                                           ; $5722: $23
	and b                                            ; $5723: $a0
	adc d                                            ; $5724: $8a
	and b                                            ; $5725: $a0
	ldh [$f0], a                                     ; $5726: $e0 $f0
	ld [hl], b                                       ; $5728: $70
	ld hl, sp-$80                                    ; $5729: $f8 $80
	ld [hl], h                                       ; $572b: $74
	ret nc                                           ; $572c: $d0

	or $f0                                           ; $572d: $f6 $f0
	cp $10                                           ; $572f: $fe $10
	db $fc                                           ; $5731: $fc
	db $10                                           ; $5732: $10
	ld [$2308], sp                                   ; $5733: $08 $08 $23
	ld bc, $1613                                     ; $5736: $01 $13 $16
	inc c                                            ; $5739: $0c
	ld a, [$c19b]                                    ; $573a: $fa $9b $c1
	add b                                            ; $573d: $80
	ld [hl], a                                       ; $573e: $77
	ld h, e                                          ; $573f: $63
	inc sp                                           ; $5740: $33
	ldh [rOCPD], a                                   ; $5741: $e0 $6b
	rst SubAFromDE                                          ; $5743: $df
	cpl                                              ; $5744: $2f
	ldh [$9b], a                                     ; $5745: $e0 $9b
	inc sp                                           ; $5747: $33
	scf                                              ; $5748: $37
	ld e, $1e                                        ; $5749: $1e $1e
	ld l, a                                          ; $574b: $6f
	sbc $27                                          ; $574c: $de $27
	ldh [$9e], a                                     ; $574e: $e0 $9e
	ccf                                              ; $5750: $3f
	sbc $1e                                          ; $5751: $de $1e
	sbc $0c                                          ; $5753: $de $0c
	ld [hl], e                                       ; $5755: $73
	ldh [$a9], a                                     ; $5756: $e0 $a9
	ld bc, $108c                                     ; $5758: $01 $8c $10
	jr nz, jr_067_57a2                               ; $575b: $20 $45

	ld [hl+], a                                      ; $575d: $22
	ld b, b                                          ; $575e: $40
	ld h, $20                                        ; $575f: $26 $20
	ld b, [hl]                                       ; $5761: $46
	xor [hl]                                         ; $5762: $ae
	ld b, h                                          ; $5763: $44
	and $4c                                          ; $5764: $e6 $4c
	and $4c                                          ; $5766: $e6 $4c
	db $e4                                           ; $5768: $e4
	ld c, [hl]                                       ; $5769: $4e
	push af                                          ; $576a: $f5
	ld c, [hl]                                       ; $576b: $4e
	di                                               ; $576c: $f3
	ld a, e                                          ; $576d: $7b
	cp $86                                           ; $576e: $fe $86

jr_067_5770:
	jp c, $d967                                      ; $5770: $da $67 $d9

	ld h, a                                          ; $5773: $67
	cp c                                             ; $5774: $b9
	ld h, a                                          ; $5775: $67
	ld l, b                                          ; $5776: $68
	or a                                             ; $5777: $b7
	call c, $b4b3                                    ; $5778: $dc $b3 $b4
	db $db                                           ; $577b: $db
	ld c, d                                          ; $577c: $4a
	ld a, l                                          ; $577d: $7d
	inc h                                            ; $577e: $24
	ccf                                              ; $577f: $3f
	ld [de], a                                       ; $5780: $12
	rra                                              ; $5781: $1f
	add hl, bc                                       ; $5782: $09
	rrca                                             ; $5783: $0f
	inc b                                            ; $5784: $04
	rlca                                             ; $5785: $07
	ld b, $07                                        ; $5786: $06 $07
	dec b                                            ; $5788: $05
	ld a, e                                          ; $5789: $7b
	cp $9d                                           ; $578a: $fe $9d
	ld b, $05                                        ; $578c: $06 $05
	ld [hl], a                                       ; $578e: $77
	cp $77                                           ; $578f: $fe $77
	or $8e                                           ; $5791: $f6 $8e
	ld [bc], a                                       ; $5793: $02
	inc bc                                           ; $5794: $03
	ld [bc], a                                       ; $5795: $02
	inc bc                                           ; $5796: $03
	ld bc, $5532                                     ; $5797: $01 $32 $55
	ld [hl+], a                                      ; $579a: $22
	ld b, d                                          ; $579b: $42
	inc h                                            ; $579c: $24
	jr nz, jr_067_5803                               ; $579d: $20 $64

	jr nz, @+$66                                     ; $579f: $20 $64

	xor d                                            ; $57a1: $aa

jr_067_57a2:
	ld h, h                                          ; $57a2: $64
	xor a                                            ; $57a3: $af
	ld a, e                                          ; $57a4: $7b
	cp $80                                           ; $57a5: $fe $80
	inc h                                            ; $57a7: $24
	rst $38                                          ; $57a8: $ff
	ld [hl+], a                                      ; $57a9: $22
	rst $38                                          ; $57aa: $ff
	ld [de], a                                       ; $57ab: $12
	rst $38                                          ; $57ac: $ff
	ld de, $09ff                                     ; $57ad: $11 $ff $09
	rst $38                                          ; $57b0: $ff
	inc c                                            ; $57b1: $0c
	rst $38                                          ; $57b2: $ff
	add [hl]                                         ; $57b3: $86
	rst $38                                          ; $57b4: $ff
	rst JumpTable                                          ; $57b5: $c7
	db $fd                                           ; $57b6: $fd
	ld h, e                                          ; $57b7: $63
	cp $71                                           ; $57b8: $fe $71
	rst SubAFromDE                                          ; $57ba: $df
	inc a                                            ; $57bb: $3c
	rst AddAOntoHL                                          ; $57bc: $ef
	rra                                              ; $57bd: $1f
	di                                               ; $57be: $f3
	adc a                                            ; $57bf: $8f
	ld hl, sp-$19                                    ; $57c0: $f8 $e7
	db $fc                                           ; $57c2: $fc
	ld a, e                                          ; $57c3: $7b
	sbc $bf                                          ; $57c4: $de $bf
	add c                                            ; $57c6: $81
	rst SubAFromBC                                          ; $57c7: $e7
	ld [hl], b                                       ; $57c8: $70
	ldh a, [$60]                                     ; $57c9: $f0 $60
	ldh [$50], a                                     ; $57cb: $e0 $50
	ldh a, [$58]                                     ; $57cd: $f0 $58
	ld hl, sp+$4c                                    ; $57cf: $f8 $4c
	db $fc                                           ; $57d1: $fc
	dec hl                                           ; $57d2: $2b
	cp $b1                                           ; $57d3: $fe $b1
	rst $38                                          ; $57d5: $ff
	ld h, e                                          ; $57d6: $63
	rst $38                                          ; $57d7: $ff
	ld e, [hl]                                       ; $57d8: $5e
	ld h, $17                                        ; $57d9: $26 $17
	ld c, a                                          ; $57db: $4f
	adc c                                            ; $57dc: $89
	ld e, c                                          ; $57dd: $59
	jr nc, jr_067_5770                               ; $57de: $30 $90

	db $10                                           ; $57e0: $10
	or b                                             ; $57e1: $b0
	db $10                                           ; $57e2: $10
	or b                                             ; $57e3: $b0
	ret nc                                           ; $57e4: $d0

	ld a, e                                          ; $57e5: $7b
	cp $80                                           ; $57e6: $fe $80
	sub b                                            ; $57e8: $90
	ldh a, [hDisp1_SCY]                                     ; $57e9: $f0 $90
	ldh a, [$58]                                     ; $57eb: $f0 $58
	ldh a, [rBCPS]                                   ; $57ed: $f0 $68
	ld sp, hl                                        ; $57ef: $f9
	dec a                                            ; $57f0: $3d
	db $fd                                           ; $57f1: $fd
	or c                                             ; $57f2: $b1
	ldh [$db], a                                     ; $57f3: $e0 $db
	ldh a, [$79]                                     ; $57f5: $f0 $79
	ld hl, sp-$21                                    ; $57f7: $f8 $df
	ld d, d                                          ; $57f9: $52
	ld a, a                                          ; $57fa: $7f
	ld c, e                                          ; $57fb: $4b
	ld a, l                                          ; $57fc: $7d
	dec hl                                           ; $57fd: $2b
	ld sp, hl                                        ; $57fe: $f9
	xor a                                            ; $57ff: $af
	db $ed                                           ; $5800: $ed
	cp a                                             ; $5801: $bf
	xor h                                            ; $5802: $ac

jr_067_5803:
	rst $38                                          ; $5803: $ff
	sub $d7                                          ; $5804: $d6 $d7
	jp nc, $d3df                                     ; $5806: $d2 $df $d3

	add a                                            ; $5809: $87
	sub c                                            ; $580a: $91
	add b                                            ; $580b: $80
	ccf                                              ; $580c: $3f
	ccf                                              ; $580d: $3f
	rst $38                                          ; $580e: $ff
	rst $38                                          ; $580f: $ff
	ret nz                                           ; $5810: $c0

	rst $38                                          ; $5811: $ff
	nop                                              ; $5812: $00
	rst $38                                          ; $5813: $ff
	ld e, $e7                                        ; $5814: $1e $e7
	ld h, a                                          ; $5816: $67
	db $ed                                           ; $5817: $ed
	rst $38                                          ; $5818: $ff
	or l                                             ; $5819: $b5
	db $f4                                           ; $581a: $f4
	dec h                                            ; $581b: $25
	ld [hl], $7f                                     ; $581c: $36 $7f
	jr jr_067_5823                                   ; $581e: $18 $03

	nop                                              ; $5820: $00
	rlca                                             ; $5821: $07
	ld a, e                                          ; $5822: $7b

jr_067_5823:
	cp $80                                           ; $5823: $fe $80
	rrca                                             ; $5825: $0f
	nop                                              ; $5826: $00
	rrca                                             ; $5827: $0f
	ld bc, $011f                                     ; $5828: $01 $1f $01
	rra                                              ; $582b: $1f
	inc bc                                           ; $582c: $03
	rra                                              ; $582d: $1f
	rlca                                             ; $582e: $07
	ld a, $0f                                        ; $582f: $3e $0f
	ld [hl], $1f                                     ; $5831: $36 $1f
	ld [hl], d                                       ; $5833: $72
	ccf                                              ; $5834: $3f
	ldh a, [c]                                       ; $5835: $f2
	rst SubAFromDE                                          ; $5836: $df
	ld a, [$a91f]                                    ; $5837: $fa $1f $a9
	ld e, a                                          ; $583a: $5f
	adc c                                            ; $583b: $89
	ld a, a                                          ; $583c: $7f
	and h                                            ; $583d: $a4
	rst $38                                          ; $583e: $ff
	ld h, h                                          ; $583f: $64
	rst $38                                          ; $5840: $ff
	inc h                                            ; $5841: $24
	cp a                                             ; $5842: $bf
	sub h                                            ; $5843: $94
	sub c                                            ; $5844: $91
	rst SubAFromDE                                          ; $5845: $df
	jp z, $66ef                                      ; $5846: $ca $ef $66

	rst FarCall                                          ; $5849: $f7
	ld e, e                                          ; $584a: $5b
	rst $38                                          ; $584b: $ff
	and a                                            ; $584c: $a7
	rst $38                                          ; $584d: $ff
	ldh a, [c]                                       ; $584e: $f2
	ld a, a                                          ; $584f: $7f
	ldh a, [c]                                       ; $5850: $f2
	ccf                                              ; $5851: $3f
	ldh [c], a                                       ; $5852: $e2
	ld [hl], a                                       ; $5853: $77
	cp $96                                           ; $5854: $fe $96
	or a                                             ; $5856: $b7
	ldh [c], a                                       ; $5857: $e2
	scf                                              ; $5858: $37
	ldh [c], a                                       ; $5859: $e2
	scf                                              ; $585a: $37
	jp nz, $c277                                     ; $585b: $c2 $77 $c2

	ld d, a                                          ; $585e: $57
	ld [hl], a                                       ; $585f: $77
	cp $89                                           ; $5860: $fe $89
	add h                                            ; $5862: $84
	rst SubAFromHL                                          ; $5863: $d7
	add h                                            ; $5864: $84
	or a                                             ; $5865: $b7
	add h                                            ; $5866: $84
	or a                                             ; $5867: $b7
	ld d, h                                          ; $5868: $54
	xor a                                            ; $5869: $af
	call nc, $d52f                                   ; $586a: $d4 $2f $d5
	cpl                                              ; $586d: $2f
	reti                                             ; $586e: $d9


	cpl                                              ; $586f: $2f
	sbc c                                            ; $5870: $99
	ld l, a                                          ; $5871: $6f
	xor d                                            ; $5872: $aa
	ld e, [hl]                                       ; $5873: $5e
	xor d                                            ; $5874: $aa
	ld e, [hl]                                       ; $5875: $5e
	ld a, [hl+]                                      ; $5876: $2a
	sbc $03                                          ; $5877: $de $03
	ld h, b                                          ; $5879: $60
	ccf                                              ; $587a: $3f
	ld h, b                                          ; $587b: $60
	rst SubAFromDE                                          ; $587c: $df
	rrca                                             ; $587d: $0f
	rst SubAFromDE                                          ; $587e: $df
	ld a, a                                          ; $587f: $7f
	sbc h                                            ; $5880: $9c
	ldh a, [rIE]                                     ; $5881: $f0 $ff
	add b                                            ; $5883: $80
	ld [hl], e                                       ; $5884: $73
	ld e, [hl]                                       ; $5885: $5e
	sbc e                                            ; $5886: $9b
	ld [hl], a                                       ; $5887: $77
	db $fd                                           ; $5888: $fd
	db $fd                                           ; $5889: $fd
	and l                                            ; $588a: $a5
	inc bc                                           ; $588b: $03
	ld h, b                                          ; $588c: $60
	inc hl                                           ; $588d: $23
	ld h, b                                          ; $588e: $60
	ld a, a                                          ; $588f: $7f
	ld h, d                                          ; $5890: $62
	sbc [hl]                                         ; $5891: $9e
	or a                                             ; $5892: $b7
	dec hl                                           ; $5893: $2b
	add b                                            ; $5894: $80
	sbc d                                            ; $5895: $9a
	ld hl, sp+$3c                                    ; $5896: $f8 $3c
	db $fd                                           ; $5898: $fd
	or c                                             ; $5899: $b1
	pop hl                                           ; $589a: $e1
	cpl                                              ; $589b: $2f
	add b                                            ; $589c: $80
	sbc h                                            ; $589d: $9c
	add e                                            ; $589e: $83
	nop                                              ; $589f: $00
	nop                                              ; $58a0: $00
	ld h, [hl]                                       ; $58a1: $66
	sbc $77                                          ; $58a2: $de $77
	cp $9a                                           ; $58a4: $fe $9a
	rrca                                             ; $58a6: $0f
	db $e3                                           ; $58a7: $e3
	or $ff                                           ; $58a8: $f6 $ff
	inc a                                            ; $58aa: $3c
	inc bc                                           ; $58ab: $03
	add b                                            ; $58ac: $80
	daa                                              ; $58ad: $27
	add b                                            ; $58ae: $80
	sbc [hl]                                         ; $58af: $9e
	scf                                              ; $58b0: $37
	inc bc                                           ; $58b1: $03
	add b                                            ; $58b2: $80
	scf                                              ; $58b3: $37
	add b                                            ; $58b4: $80
	rst SubAFromDE                                          ; $58b5: $df
	rra                                              ; $58b6: $1f
	rst SubAFromDE                                          ; $58b7: $df
	ld a, a                                          ; $58b8: $7f
	sbc [hl]                                         ; $58b9: $9e
	ldh [$72], a                                     ; $58ba: $e0 $72
	cp $7b                                           ; $58bc: $fe $7b
	cp $9b                                           ; $58be: $fe $9b
	ld a, a                                          ; $58c0: $7f
	rlca                                             ; $58c1: $07
	rst $38                                          ; $58c2: $ff
	cp $03                                           ; $58c3: $fe $03
	add b                                            ; $58c5: $80
	inc hl                                           ; $58c6: $23
	add b                                            ; $58c7: $80
	adc d                                            ; $58c8: $8a
	and b                                            ; $58c9: $a0
	ldh [$f0], a                                     ; $58ca: $e0 $f0
	ld [hl], b                                       ; $58cc: $70
	ld hl, sp-$80                                    ; $58cd: $f8 $80
	ld [hl], h                                       ; $58cf: $74
	ret nc                                           ; $58d0: $d0

	or $f0                                           ; $58d1: $f6 $f0
	cp $10                                           ; $58d3: $fe $10
	db $fc                                           ; $58d5: $fc
	db $10                                           ; $58d6: $10
	ld [$2108], sp                                   ; $58d7: $08 $08 $21
	ld bc, $1613                                     ; $58da: $01 $13 $16
	inc c                                            ; $58dd: $0c
	ld a, [$c19b]                                    ; $58de: $fa $9b $c1
	add b                                            ; $58e1: $80
	ld [hl], a                                       ; $58e2: $77
	ld h, e                                          ; $58e3: $63
	ld b, a                                          ; $58e4: $47
	ldh [$99], a                                     ; $58e5: $e0 $99
	inc hl                                           ; $58e7: $23
	ld bc, $1633                                     ; $58e8: $01 $33 $16
	ld e, $0c                                        ; $58eb: $1e $0c
	ld l, a                                          ; $58ed: $6f
	sbc $2f                                          ; $58ee: $de $2f
	ldh [$9b], a                                     ; $58f0: $e0 $9b
	ld hl, $3f33                                     ; $58f2: $21 $33 $3f
	ld e, $6f                                        ; $58f5: $1e $6f
	sbc $23                                          ; $58f7: $de $23
	ldh [$df], a                                     ; $58f9: $e0 $df
	ccf                                              ; $58fb: $3f
	ld [hl], e                                       ; $58fc: $73
	sbc $77                                          ; $58fd: $de $77
	ldh [$a6], a                                     ; $58ff: $e0 $a6
	ld bc, $108c                                     ; $5901: $01 $8c $10
	jr nz, jr_067_594b                               ; $5904: $20 $45

	ld [hl+], a                                      ; $5906: $22
	ld b, b                                          ; $5907: $40
	ld h, $20                                        ; $5908: $26 $20
	ld b, [hl]                                       ; $590a: $46
	xor [hl]                                         ; $590b: $ae
	ld b, h                                          ; $590c: $44
	and $4c                                          ; $590d: $e6 $4c
	and $4c                                          ; $590f: $e6 $4c
	db $e4                                           ; $5911: $e4
	ld c, [hl]                                       ; $5912: $4e
	push af                                          ; $5913: $f5
	ld c, [hl]                                       ; $5914: $4e
	di                                               ; $5915: $f3
	ld a, e                                          ; $5916: $7b
	cp $86                                           ; $5917: $fe $86

jr_067_5919:
	jp c, $d967                                      ; $5919: $da $67 $d9

	ld h, a                                          ; $591c: $67
	cp c                                             ; $591d: $b9
	ld h, a                                          ; $591e: $67
	ld l, b                                          ; $591f: $68
	or a                                             ; $5920: $b7
	call c, $b4b3                                    ; $5921: $dc $b3 $b4
	db $db                                           ; $5924: $db
	ld c, d                                          ; $5925: $4a
	ld a, l                                          ; $5926: $7d
	inc h                                            ; $5927: $24
	ccf                                              ; $5928: $3f
	ld [de], a                                       ; $5929: $12
	rra                                              ; $592a: $1f
	add hl, bc                                       ; $592b: $09
	rrca                                             ; $592c: $0f
	inc b                                            ; $592d: $04
	rlca                                             ; $592e: $07
	ld b, $07                                        ; $592f: $06 $07
	dec b                                            ; $5931: $05
	ld a, e                                          ; $5932: $7b
	cp $9d                                           ; $5933: $fe $9d
	ld b, $05                                        ; $5935: $06 $05
	ld [hl], a                                       ; $5937: $77
	cp $77                                           ; $5938: $fe $77
	or $8e                                           ; $593a: $f6 $8e
	ld [bc], a                                       ; $593c: $02
	inc bc                                           ; $593d: $03
	ld [bc], a                                       ; $593e: $02
	inc bc                                           ; $593f: $03
	ld bc, $5532                                     ; $5940: $01 $32 $55
	ld [hl+], a                                      ; $5943: $22
	ld b, d                                          ; $5944: $42
	inc h                                            ; $5945: $24
	jr nz, jr_067_59ac                               ; $5946: $20 $64

	jr nz, @+$66                                     ; $5948: $20 $64

	xor d                                            ; $594a: $aa

jr_067_594b:
	ld h, h                                          ; $594b: $64
	xor a                                            ; $594c: $af
	ld a, e                                          ; $594d: $7b
	cp $80                                           ; $594e: $fe $80
	inc h                                            ; $5950: $24
	rst $38                                          ; $5951: $ff
	ld [hl+], a                                      ; $5952: $22
	rst $38                                          ; $5953: $ff
	ld [de], a                                       ; $5954: $12
	rst $38                                          ; $5955: $ff
	ld de, $09ff                                     ; $5956: $11 $ff $09
	rst $38                                          ; $5959: $ff
	inc c                                            ; $595a: $0c
	rst $38                                          ; $595b: $ff
	add [hl]                                         ; $595c: $86
	rst $38                                          ; $595d: $ff
	rst JumpTable                                          ; $595e: $c7
	db $fd                                           ; $595f: $fd
	ld h, e                                          ; $5960: $63
	cp $71                                           ; $5961: $fe $71
	rst SubAFromDE                                          ; $5963: $df
	inc a                                            ; $5964: $3c
	rst AddAOntoHL                                          ; $5965: $ef
	rra                                              ; $5966: $1f
	di                                               ; $5967: $f3
	adc a                                            ; $5968: $8f
	ld hl, sp-$19                                    ; $5969: $f8 $e7
	db $fc                                           ; $596b: $fc
	ld a, e                                          ; $596c: $7b
	sbc $bf                                          ; $596d: $de $bf
	add c                                            ; $596f: $81
	rst SubAFromBC                                          ; $5970: $e7
	ld [hl], b                                       ; $5971: $70
	ldh a, [$60]                                     ; $5972: $f0 $60
	ldh [$50], a                                     ; $5974: $e0 $50
	ldh a, [$58]                                     ; $5976: $f0 $58
	ld hl, sp+$4c                                    ; $5978: $f8 $4c
	db $fc                                           ; $597a: $fc
	dec hl                                           ; $597b: $2b
	cp $b1                                           ; $597c: $fe $b1
	rst $38                                          ; $597e: $ff
	ld h, e                                          ; $597f: $63
	rst $38                                          ; $5980: $ff
	ld e, [hl]                                       ; $5981: $5e
	ld h, $17                                        ; $5982: $26 $17
	ld c, a                                          ; $5984: $4f
	adc c                                            ; $5985: $89
	ld e, c                                          ; $5986: $59
	jr nc, jr_067_5919                               ; $5987: $30 $90

	db $10                                           ; $5989: $10
	or b                                             ; $598a: $b0
	db $10                                           ; $598b: $10
	or b                                             ; $598c: $b0
	ret nc                                           ; $598d: $d0

	ld a, e                                          ; $598e: $7b
	cp $80                                           ; $598f: $fe $80
	sub b                                            ; $5991: $90
	ldh a, [hDisp1_SCY]                                     ; $5992: $f0 $90
	ldh a, [$58]                                     ; $5994: $f0 $58
	ldh a, [rBCPS]                                   ; $5996: $f0 $68
	ld sp, hl                                        ; $5998: $f9
	dec a                                            ; $5999: $3d
	db $fd                                           ; $599a: $fd
	or c                                             ; $599b: $b1
	ldh [$db], a                                     ; $599c: $e0 $db
	ldh a, [$79]                                     ; $599e: $f0 $79
	ld hl, sp-$21                                    ; $59a0: $f8 $df
	ld d, d                                          ; $59a2: $52
	ld a, a                                          ; $59a3: $7f
	ld c, e                                          ; $59a4: $4b
	ld a, l                                          ; $59a5: $7d
	dec hl                                           ; $59a6: $2b
	ld sp, hl                                        ; $59a7: $f9
	xor a                                            ; $59a8: $af
	db $ed                                           ; $59a9: $ed
	cp a                                             ; $59aa: $bf
	xor h                                            ; $59ab: $ac

jr_067_59ac:
	rst $38                                          ; $59ac: $ff
	sub $d7                                          ; $59ad: $d6 $d7
	jp nc, $d3df                                     ; $59af: $d2 $df $d3

	add a                                            ; $59b2: $87
	sub c                                            ; $59b3: $91
	add b                                            ; $59b4: $80
	rra                                              ; $59b5: $1f
	rra                                              ; $59b6: $1f
	ld a, a                                          ; $59b7: $7f
	ld a, a                                          ; $59b8: $7f
	ldh [rIE], a                                     ; $59b9: $e0 $ff
	add b                                            ; $59bb: $80
	rst $38                                          ; $59bc: $ff
	ld e, $ff                                        ; $59bd: $1e $ff
	ld a, a                                          ; $59bf: $7f
	push hl                                          ; $59c0: $e5
	rst FarCall                                          ; $59c1: $f7
	cp l                                             ; $59c2: $bd
	db $fc                                           ; $59c3: $fc
	dec h                                            ; $59c4: $25
	ld [hl], $7f                                     ; $59c5: $36 $7f
	jr jr_067_59cc                                   ; $59c7: $18 $03

	nop                                              ; $59c9: $00
	rlca                                             ; $59ca: $07
	ld a, e                                          ; $59cb: $7b

jr_067_59cc:
	cp $80                                           ; $59cc: $fe $80
	rrca                                             ; $59ce: $0f
	nop                                              ; $59cf: $00
	rrca                                             ; $59d0: $0f
	ld bc, $011f                                     ; $59d1: $01 $1f $01
	rra                                              ; $59d4: $1f
	inc bc                                           ; $59d5: $03
	rra                                              ; $59d6: $1f
	rlca                                             ; $59d7: $07
	ld a, $0f                                        ; $59d8: $3e $0f
	ld [hl], $1f                                     ; $59da: $36 $1f
	ld [hl], d                                       ; $59dc: $72
	ccf                                              ; $59dd: $3f
	ldh a, [c]                                       ; $59de: $f2
	rst SubAFromDE                                          ; $59df: $df
	ld a, [$a91f]                                    ; $59e0: $fa $1f $a9
	ld e, a                                          ; $59e3: $5f
	adc c                                            ; $59e4: $89
	ld a, a                                          ; $59e5: $7f
	and h                                            ; $59e6: $a4
	rst $38                                          ; $59e7: $ff
	ld h, h                                          ; $59e8: $64
	rst $38                                          ; $59e9: $ff
	inc h                                            ; $59ea: $24
	cp a                                             ; $59eb: $bf
	sub h                                            ; $59ec: $94
	sub c                                            ; $59ed: $91
	rst SubAFromDE                                          ; $59ee: $df
	jp z, $66ef                                      ; $59ef: $ca $ef $66

	rst FarCall                                          ; $59f2: $f7
	ld e, e                                          ; $59f3: $5b
	rst $38                                          ; $59f4: $ff
	and a                                            ; $59f5: $a7
	rst $38                                          ; $59f6: $ff
	ldh a, [c]                                       ; $59f7: $f2
	ld a, a                                          ; $59f8: $7f
	ldh a, [c]                                       ; $59f9: $f2
	ccf                                              ; $59fa: $3f
	ldh [c], a                                       ; $59fb: $e2
	ld [hl], a                                       ; $59fc: $77
	cp $96                                           ; $59fd: $fe $96
	or a                                             ; $59ff: $b7
	ldh [c], a                                       ; $5a00: $e2
	scf                                              ; $5a01: $37
	ldh [c], a                                       ; $5a02: $e2
	scf                                              ; $5a03: $37
	jp nz, $c277                                     ; $5a04: $c2 $77 $c2

	ld d, a                                          ; $5a07: $57
	ld [hl], a                                       ; $5a08: $77
	cp $89                                           ; $5a09: $fe $89
	add h                                            ; $5a0b: $84
	rst SubAFromHL                                          ; $5a0c: $d7
	add h                                            ; $5a0d: $84
	or a                                             ; $5a0e: $b7
	add h                                            ; $5a0f: $84
	or a                                             ; $5a10: $b7
	ld d, h                                          ; $5a11: $54
	xor a                                            ; $5a12: $af
	call nc, $d52f                                   ; $5a13: $d4 $2f $d5
	cpl                                              ; $5a16: $2f
	reti                                             ; $5a17: $d9


	cpl                                              ; $5a18: $2f
	sbc c                                            ; $5a19: $99
	ld l, a                                          ; $5a1a: $6f
	xor d                                            ; $5a1b: $aa
	ld e, [hl]                                       ; $5a1c: $5e
	xor d                                            ; $5a1d: $aa
	ld e, [hl]                                       ; $5a1e: $5e
	ld a, [hl+]                                      ; $5a1f: $2a
	sbc $03                                          ; $5a20: $de $03
	ld h, b                                          ; $5a22: $60
	ld b, e                                          ; $5a23: $43
	ld h, b                                          ; $5a24: $60
	adc [hl]                                         ; $5a25: $8e
	add e                                            ; $5a26: $83
	nop                                              ; $5a27: $00
	nop                                              ; $5a28: $00
	ccf                                              ; $5a29: $3f
	ccf                                              ; $5a2a: $3f
	rst $38                                          ; $5a2b: $ff
	rst $38                                          ; $5a2c: $ff
	ret nz                                           ; $5a2d: $c0

	rst $38                                          ; $5a2e: $ff
	nop                                              ; $5a2f: $00
	rst $38                                          ; $5a30: $ff
	ld e, $e7                                        ; $5a31: $1e $e7
	ld [hl], a                                       ; $5a33: $77
	db $fd                                           ; $5a34: $fd
	db $fd                                           ; $5a35: $fd
	and l                                            ; $5a36: $a5
	inc bc                                           ; $5a37: $03
	ld h, b                                          ; $5a38: $60
	inc hl                                           ; $5a39: $23
	ld h, b                                          ; $5a3a: $60
	ld a, a                                          ; $5a3b: $7f
	ld h, d                                          ; $5a3c: $62
	sbc [hl]                                         ; $5a3d: $9e
	or a                                             ; $5a3e: $b7
	dec hl                                           ; $5a3f: $2b
	add b                                            ; $5a40: $80
	sbc d                                            ; $5a41: $9a
	ld hl, sp+$3c                                    ; $5a42: $f8 $3c
	db $fd                                           ; $5a44: $fd
	or c                                             ; $5a45: $b1
	pop hl                                           ; $5a46: $e1
	inc hl                                           ; $5a47: $23
	add b                                            ; $5a48: $80
	ld h, [hl]                                       ; $5a49: $66
	sbc $7f                                          ; $5a4a: $de $7f
	ld a, [hl]                                       ; $5a4c: $7e
	ld a, a                                          ; $5a4d: $7f
	cp $9a                                           ; $5a4e: $fe $9a
	rrca                                             ; $5a50: $0f
	db $e3                                           ; $5a51: $e3
	or $ff                                           ; $5a52: $f6 $ff
	inc a                                            ; $5a54: $3c
	inc bc                                           ; $5a55: $03
	add b                                            ; $5a56: $80
	daa                                              ; $5a57: $27
	add b                                            ; $5a58: $80
	sbc [hl]                                         ; $5a59: $9e
	scf                                              ; $5a5a: $37
	inc bc                                           ; $5a5b: $03
	add b                                            ; $5a5c: $80
	scf                                              ; $5a5d: $37
	add b                                            ; $5a5e: $80
	rst SubAFromDE                                          ; $5a5f: $df
	rrca                                             ; $5a60: $0f
	rst SubAFromDE                                          ; $5a61: $df
	ld a, a                                          ; $5a62: $7f
	sbc [hl]                                         ; $5a63: $9e
	ldh a, [rOCPD]                                   ; $5a64: $f0 $6b
	add b                                            ; $5a66: $80
	sbc d                                            ; $5a67: $9a
	nop                                              ; $5a68: $00
	ld a, a                                          ; $5a69: $7f
	rlca                                             ; $5a6a: $07
	rst $38                                          ; $5a6b: $ff
	cp $03                                           ; $5a6c: $fe $03
	add b                                            ; $5a6e: $80
	inc hl                                           ; $5a6f: $23
	add b                                            ; $5a70: $80
	adc d                                            ; $5a71: $8a
	and b                                            ; $5a72: $a0
	ldh [$f0], a                                     ; $5a73: $e0 $f0
	ld [hl], b                                       ; $5a75: $70
	ld hl, sp-$80                                    ; $5a76: $f8 $80
	ld [hl], h                                       ; $5a78: $74
	ret nc                                           ; $5a79: $d0

	or $f0                                           ; $5a7a: $f6 $f0
	cp $10                                           ; $5a7c: $fe $10
	db $fc                                           ; $5a7e: $fc
	db $10                                           ; $5a7f: $10
	ld [$2308], sp                                   ; $5a80: $08 $08 $23
	ld bc, $1e1f                                     ; $5a83: $01 $1f $1e
	inc c                                            ; $5a86: $0c
	ld a, [$c19b]                                    ; $5a87: $fa $9b $c1
	add b                                            ; $5a8a: $80
	ld [hl], a                                       ; $5a8b: $77
	ld h, e                                          ; $5a8c: $63
	ccf                                              ; $5a8d: $3f
	ldh [$9c], a                                     ; $5a8e: $e0 $9c
	inc de                                           ; $5a90: $13
	ld d, $0c                                        ; $5a91: $16 $0c
	ld l, e                                          ; $5a93: $6b
	rst SubAFromDE                                          ; $5a94: $df
	cpl                                              ; $5a95: $2f
	ldh [$9b], a                                     ; $5a96: $e0 $9b
	inc sp                                           ; $5a98: $33
	rla                                              ; $5a99: $17
	ld e, $1e                                        ; $5a9a: $1e $1e
	ld l, a                                          ; $5a9c: $6f
	sbc $27                                          ; $5a9d: $de $27
	ldh [$7f], a                                     ; $5a9f: $e0 $7f
	sbc [hl]                                         ; $5aa1: $9e
	ld l, a                                          ; $5aa2: $6f
	rst SubAFromDE                                          ; $5aa3: $df
	ld [hl], a                                       ; $5aa4: $77
	ldh [hDisp1_OBP1], a                                     ; $5aa5: $e0 $94
	ld bc, $108c                                     ; $5aa7: $01 $8c $10
	jr nz, jr_067_5af1                               ; $5aaa: $20 $45

	ld [hl+], a                                      ; $5aac: $22
	ld b, b                                          ; $5aad: $40
	ld h, $20                                        ; $5aae: $26 $20
	ld b, [hl]                                       ; $5ab0: $46
	xor [hl]                                         ; $5ab1: $ae
	ld b, h                                          ; $5ab2: $44
	and $4c                                          ; $5ab3: $e6 $4c
	and $4c                                          ; $5ab5: $e6 $4c
	db $e4                                           ; $5ab7: $e4
	ld c, [hl]                                       ; $5ab8: $4e
	push af                                          ; $5ab9: $f5
	ld c, [hl]                                       ; $5aba: $4e
	di                                               ; $5abb: $f3
	ld a, e                                          ; $5abc: $7b
	cp $86                                           ; $5abd: $fe $86

jr_067_5abf:
	jp c, $d967                                      ; $5abf: $da $67 $d9

	ld h, a                                          ; $5ac2: $67
	cp c                                             ; $5ac3: $b9
	ld h, a                                          ; $5ac4: $67
	ld l, b                                          ; $5ac5: $68
	or a                                             ; $5ac6: $b7
	call c, $b4b3                                    ; $5ac7: $dc $b3 $b4
	db $db                                           ; $5aca: $db
	ld c, d                                          ; $5acb: $4a
	ld a, l                                          ; $5acc: $7d
	inc h                                            ; $5acd: $24
	ccf                                              ; $5ace: $3f
	ld [de], a                                       ; $5acf: $12
	rra                                              ; $5ad0: $1f
	add hl, bc                                       ; $5ad1: $09
	rrca                                             ; $5ad2: $0f
	inc b                                            ; $5ad3: $04
	rlca                                             ; $5ad4: $07
	ld b, $07                                        ; $5ad5: $06 $07
	dec b                                            ; $5ad7: $05
	ld a, e                                          ; $5ad8: $7b
	cp $9d                                           ; $5ad9: $fe $9d
	ld b, $05                                        ; $5adb: $06 $05
	ld [hl], a                                       ; $5add: $77
	cp $77                                           ; $5ade: $fe $77
	or $8e                                           ; $5ae0: $f6 $8e
	ld [bc], a                                       ; $5ae2: $02
	inc bc                                           ; $5ae3: $03
	ld [bc], a                                       ; $5ae4: $02
	inc bc                                           ; $5ae5: $03
	ld bc, $5532                                     ; $5ae6: $01 $32 $55
	ld [hl+], a                                      ; $5ae9: $22
	ld b, d                                          ; $5aea: $42
	inc h                                            ; $5aeb: $24
	jr nz, jr_067_5b52                               ; $5aec: $20 $64

	jr nz, @+$66                                     ; $5aee: $20 $64

	xor d                                            ; $5af0: $aa

jr_067_5af1:
	ld h, h                                          ; $5af1: $64
	xor a                                            ; $5af2: $af
	ld a, e                                          ; $5af3: $7b
	cp $80                                           ; $5af4: $fe $80
	inc h                                            ; $5af6: $24
	rst $38                                          ; $5af7: $ff
	ld [hl+], a                                      ; $5af8: $22
	rst $38                                          ; $5af9: $ff
	ld [de], a                                       ; $5afa: $12
	rst $38                                          ; $5afb: $ff
	ld de, $09ff                                     ; $5afc: $11 $ff $09
	rst $38                                          ; $5aff: $ff
	inc c                                            ; $5b00: $0c
	rst $38                                          ; $5b01: $ff
	add [hl]                                         ; $5b02: $86
	rst $38                                          ; $5b03: $ff
	rst JumpTable                                          ; $5b04: $c7
	db $fd                                           ; $5b05: $fd
	ld h, e                                          ; $5b06: $63
	cp $71                                           ; $5b07: $fe $71
	rst SubAFromDE                                          ; $5b09: $df
	inc a                                            ; $5b0a: $3c
	rst AddAOntoHL                                          ; $5b0b: $ef
	rra                                              ; $5b0c: $1f
	di                                               ; $5b0d: $f3
	adc a                                            ; $5b0e: $8f
	ld hl, sp-$19                                    ; $5b0f: $f8 $e7
	db $fc                                           ; $5b11: $fc
	ld a, e                                          ; $5b12: $7b
	sbc $bf                                          ; $5b13: $de $bf
	add c                                            ; $5b15: $81
	rst SubAFromBC                                          ; $5b16: $e7
	ld [hl], b                                       ; $5b17: $70
	ldh a, [$60]                                     ; $5b18: $f0 $60
	ldh [$50], a                                     ; $5b1a: $e0 $50
	ldh a, [$58]                                     ; $5b1c: $f0 $58
	ld hl, sp+$4c                                    ; $5b1e: $f8 $4c
	db $fc                                           ; $5b20: $fc
	dec hl                                           ; $5b21: $2b
	cp $b1                                           ; $5b22: $fe $b1
	rst $38                                          ; $5b24: $ff
	ld h, e                                          ; $5b25: $63
	rst $38                                          ; $5b26: $ff
	ld e, [hl]                                       ; $5b27: $5e
	ld h, $17                                        ; $5b28: $26 $17
	ld c, a                                          ; $5b2a: $4f
	adc c                                            ; $5b2b: $89
	ld e, c                                          ; $5b2c: $59
	jr nc, jr_067_5abf                               ; $5b2d: $30 $90

	db $10                                           ; $5b2f: $10
	or b                                             ; $5b30: $b0
	db $10                                           ; $5b31: $10
	or b                                             ; $5b32: $b0
	ret nc                                           ; $5b33: $d0

	ld a, e                                          ; $5b34: $7b
	cp $80                                           ; $5b35: $fe $80
	sub b                                            ; $5b37: $90
	ldh a, [hDisp1_SCY]                                     ; $5b38: $f0 $90
	ldh a, [$58]                                     ; $5b3a: $f0 $58
	ldh a, [rBCPS]                                   ; $5b3c: $f0 $68
	ld hl, sp+$3c                                    ; $5b3e: $f8 $3c
	db $fd                                           ; $5b40: $fd
	or c                                             ; $5b41: $b1
	pop hl                                           ; $5b42: $e1
	db $db                                           ; $5b43: $db
	ldh a, [$79]                                     ; $5b44: $f0 $79
	ld hl, sp-$21                                    ; $5b46: $f8 $df
	ld d, d                                          ; $5b48: $52
	ld a, a                                          ; $5b49: $7f
	ld c, e                                          ; $5b4a: $4b
	ld a, l                                          ; $5b4b: $7d
	dec hl                                           ; $5b4c: $2b
	ld sp, hl                                        ; $5b4d: $f9
	xor a                                            ; $5b4e: $af
	db $ed                                           ; $5b4f: $ed
	cp a                                             ; $5b50: $bf
	xor h                                            ; $5b51: $ac

jr_067_5b52:
	rst $38                                          ; $5b52: $ff
	sub $d7                                          ; $5b53: $d6 $d7
	jp nc, $d3df                                     ; $5b55: $d2 $df $d3

	add a                                            ; $5b58: $87
	sub c                                            ; $5b59: $91
	add b                                            ; $5b5a: $80
	rlca                                             ; $5b5b: $07
	rlca                                             ; $5b5c: $07
	ccf                                              ; $5b5d: $3f
	ccf                                              ; $5b5e: $3f
	ld hl, sp-$01                                    ; $5b5f: $f8 $ff
	ret nz                                           ; $5b61: $c0

	rst $38                                          ; $5b62: $ff
	ld e, $ff                                        ; $5b63: $1e $ff
	ld a, a                                          ; $5b65: $7f
	push hl                                          ; $5b66: $e5
	rst FarCall                                          ; $5b67: $f7
	cp l                                             ; $5b68: $bd
	db $fc                                           ; $5b69: $fc
	dec h                                            ; $5b6a: $25
	ld [hl], $7f                                     ; $5b6b: $36 $7f
	jr jr_067_5b72                                   ; $5b6d: $18 $03

	nop                                              ; $5b6f: $00
	rlca                                             ; $5b70: $07
	ld a, e                                          ; $5b71: $7b

jr_067_5b72:
	cp $80                                           ; $5b72: $fe $80
	rrca                                             ; $5b74: $0f
	nop                                              ; $5b75: $00
	rrca                                             ; $5b76: $0f
	ld bc, $011f                                     ; $5b77: $01 $1f $01
	rra                                              ; $5b7a: $1f
	inc bc                                           ; $5b7b: $03
	rra                                              ; $5b7c: $1f
	rlca                                             ; $5b7d: $07
	ld a, $0f                                        ; $5b7e: $3e $0f
	ld [hl], $1f                                     ; $5b80: $36 $1f
	ld [hl], d                                       ; $5b82: $72
	ccf                                              ; $5b83: $3f
	ldh a, [c]                                       ; $5b84: $f2
	rst SubAFromDE                                          ; $5b85: $df
	ld a, [$a91f]                                    ; $5b86: $fa $1f $a9
	ld e, a                                          ; $5b89: $5f
	adc c                                            ; $5b8a: $89
	ld a, a                                          ; $5b8b: $7f
	and h                                            ; $5b8c: $a4
	rst $38                                          ; $5b8d: $ff
	ld h, h                                          ; $5b8e: $64
	rst $38                                          ; $5b8f: $ff
	inc h                                            ; $5b90: $24
	cp a                                             ; $5b91: $bf
	sub h                                            ; $5b92: $94
	sub c                                            ; $5b93: $91
	rst SubAFromDE                                          ; $5b94: $df
	jp z, $66ef                                      ; $5b95: $ca $ef $66

	rst FarCall                                          ; $5b98: $f7
	ld e, e                                          ; $5b99: $5b
	rst $38                                          ; $5b9a: $ff
	and a                                            ; $5b9b: $a7
	rst $38                                          ; $5b9c: $ff
	ldh a, [c]                                       ; $5b9d: $f2
	ld a, a                                          ; $5b9e: $7f
	ldh a, [c]                                       ; $5b9f: $f2
	ccf                                              ; $5ba0: $3f
	ldh [c], a                                       ; $5ba1: $e2
	ld [hl], a                                       ; $5ba2: $77
	cp $96                                           ; $5ba3: $fe $96
	or a                                             ; $5ba5: $b7
	ldh [c], a                                       ; $5ba6: $e2
	scf                                              ; $5ba7: $37
	ldh [c], a                                       ; $5ba8: $e2
	scf                                              ; $5ba9: $37
	jp nz, $c277                                     ; $5baa: $c2 $77 $c2

	ld d, a                                          ; $5bad: $57
	ld [hl], a                                       ; $5bae: $77
	cp $89                                           ; $5baf: $fe $89
	add h                                            ; $5bb1: $84
	rst SubAFromHL                                          ; $5bb2: $d7
	add h                                            ; $5bb3: $84
	or a                                             ; $5bb4: $b7
	add h                                            ; $5bb5: $84
	or a                                             ; $5bb6: $b7
	ld d, h                                          ; $5bb7: $54
	xor a                                            ; $5bb8: $af
	call nc, $d52f                                   ; $5bb9: $d4 $2f $d5
	cpl                                              ; $5bbc: $2f
	reti                                             ; $5bbd: $d9


	cpl                                              ; $5bbe: $2f
	sbc c                                            ; $5bbf: $99
	ld l, a                                          ; $5bc0: $6f
	xor d                                            ; $5bc1: $aa
	ld e, [hl]                                       ; $5bc2: $5e
	xor d                                            ; $5bc3: $aa
	ld e, [hl]                                       ; $5bc4: $5e
	ld a, [hl+]                                      ; $5bc5: $2a
	sbc $3f                                          ; $5bc6: $de $3f
	add b                                            ; $5bc8: $80
	adc [hl]                                         ; $5bc9: $8e
	add e                                            ; $5bca: $83
	nop                                              ; $5bcb: $00
	nop                                              ; $5bcc: $00
	rra                                              ; $5bcd: $1f
	rra                                              ; $5bce: $1f
	rst $38                                          ; $5bcf: $ff
	rst $38                                          ; $5bd0: $ff
	ldh [rIE], a                                     ; $5bd1: $e0 $ff
	nop                                              ; $5bd3: $00
	rst $38                                          ; $5bd4: $ff
	ld e, $e7                                        ; $5bd5: $1e $e7
	ld [hl], a                                       ; $5bd7: $77
	db $fd                                           ; $5bd8: $fd
	db $fd                                           ; $5bd9: $fd
	and l                                            ; $5bda: $a5
	inc bc                                           ; $5bdb: $03
	add b                                            ; $5bdc: $80
	inc hl                                           ; $5bdd: $23
	add b                                            ; $5bde: $80
	ld a, a                                          ; $5bdf: $7f
	add d                                            ; $5be0: $82
	sbc [hl]                                         ; $5be1: $9e
	or a                                             ; $5be2: $b7
	inc sp                                           ; $5be3: $33
	and b                                            ; $5be4: $a0
	rst SubAFromDE                                          ; $5be5: $df
	rrca                                             ; $5be6: $0f
	rst SubAFromDE                                          ; $5be7: $df
	ld a, a                                          ; $5be8: $7f
	sbc h                                            ; $5be9: $9c
	ldh a, [rIE]                                     ; $5bea: $f0 $ff
	add b                                            ; $5bec: $80
	ld a, e                                          ; $5bed: $7b
	sbc [hl]                                         ; $5bee: $9e
	ld a, a                                          ; $5bef: $7f
	cp $9a                                           ; $5bf0: $fe $9a
	rrca                                             ; $5bf2: $0f
	db $e3                                           ; $5bf3: $e3
	or $ff                                           ; $5bf4: $f6 $ff
	inc a                                            ; $5bf6: $3c
	inc bc                                           ; $5bf7: $03
	and b                                            ; $5bf8: $a0
	daa                                              ; $5bf9: $27
	and b                                            ; $5bfa: $a0
	sbc [hl]                                         ; $5bfb: $9e
	scf                                              ; $5bfc: $37
	inc sp                                           ; $5bfd: $33
	and b                                            ; $5bfe: $a0
	ld h, [hl]                                       ; $5bff: $66
	cp [hl]                                          ; $5c00: $be
	ld [hl], a                                       ; $5c01: $77
	and b                                            ; $5c02: $a0
	sbc d                                            ; $5c03: $9a
	nop                                              ; $5c04: $00
	ld a, a                                          ; $5c05: $7f
	rlca                                             ; $5c06: $07
	rst $38                                          ; $5c07: $ff
	cp $03                                           ; $5c08: $fe $03
	and b                                            ; $5c0a: $a0
	inc hl                                           ; $5c0b: $23
	and b                                            ; $5c0c: $a0
	adc d                                            ; $5c0d: $8a
	and b                                            ; $5c0e: $a0
	ldh [$f0], a                                     ; $5c0f: $e0 $f0
	ld [hl], b                                       ; $5c11: $70
	ld hl, sp-$80                                    ; $5c12: $f8 $80
	ld [hl], h                                       ; $5c14: $74
	ret nc                                           ; $5c15: $d0

	or $f0                                           ; $5c16: $f6 $f0
	cp $10                                           ; $5c18: $fe $10
	db $fc                                           ; $5c1a: $fc
	db $10                                           ; $5c1b: $10
	ld [$0008], sp                                   ; $5c1c: $08 $08 $00
	nop                                              ; $5c1f: $00
	ld [de], a                                       ; $5c20: $12
	ld d, $0c                                        ; $5c21: $16 $0c
	ld a, [$c19b]                                    ; $5c23: $fa $9b $c1
	add b                                            ; $5c26: $80
	ld [hl], a                                       ; $5c27: $77
	ld h, e                                          ; $5c28: $63
	scf                                              ; $5c29: $37
	ldh [$9d], a                                     ; $5c2a: $e0 $9d
	ld e, $0c                                        ; $5c2c: $1e $0c
	ld l, a                                          ; $5c2e: $6f
	sbc $23                                          ; $5c2f: $de $23
	ldh [rOCPD], a                                   ; $5c31: $e0 $6b
	rst SubAFromDE                                          ; $5c33: $df
	rra                                              ; $5c34: $1f
	ldh [$6f], a                                     ; $5c35: $e0 $6f
	rst SubAFromDE                                          ; $5c37: $df
	ld [hl], a                                       ; $5c38: $77
	ldh [$a0], a                                     ; $5c39: $e0 $a0
	ld bc, $108c                                     ; $5c3b: $01 $8c $10
	jr nz, jr_067_5c85                               ; $5c3e: $20 $45

	ld [hl+], a                                      ; $5c40: $22
	ld b, b                                          ; $5c41: $40
	ld h, $20                                        ; $5c42: $26 $20
	ld b, [hl]                                       ; $5c44: $46
	xor [hl]                                         ; $5c45: $ae
	ld b, h                                          ; $5c46: $44
	and $4c                                          ; $5c47: $e6 $4c
	and $4c                                          ; $5c49: $e6 $4c
	db $e4                                           ; $5c4b: $e4
	ld c, [hl]                                       ; $5c4c: $4e
	push af                                          ; $5c4d: $f5
	ld c, [hl]                                       ; $5c4e: $4e
	di                                               ; $5c4f: $f3
	ld a, e                                          ; $5c50: $7b
	cp $86                                           ; $5c51: $fe $86

jr_067_5c53:
	jp c, $d967                                      ; $5c53: $da $67 $d9

	ld h, a                                          ; $5c56: $67
	cp c                                             ; $5c57: $b9
	ld h, a                                          ; $5c58: $67
	ld l, b                                          ; $5c59: $68
	or a                                             ; $5c5a: $b7
	call c, $b4b3                                    ; $5c5b: $dc $b3 $b4
	db $db                                           ; $5c5e: $db
	ld c, d                                          ; $5c5f: $4a
	ld a, l                                          ; $5c60: $7d
	inc h                                            ; $5c61: $24
	ccf                                              ; $5c62: $3f
	ld [de], a                                       ; $5c63: $12
	rra                                              ; $5c64: $1f
	add hl, bc                                       ; $5c65: $09
	rrca                                             ; $5c66: $0f
	inc b                                            ; $5c67: $04
	rlca                                             ; $5c68: $07
	ld b, $07                                        ; $5c69: $06 $07
	dec b                                            ; $5c6b: $05
	ld a, e                                          ; $5c6c: $7b
	cp $9d                                           ; $5c6d: $fe $9d
	ld b, $05                                        ; $5c6f: $06 $05
	ld [hl], a                                       ; $5c71: $77
	cp $77                                           ; $5c72: $fe $77
	or $8e                                           ; $5c74: $f6 $8e
	ld [bc], a                                       ; $5c76: $02
	inc bc                                           ; $5c77: $03
	ld [bc], a                                       ; $5c78: $02
	inc bc                                           ; $5c79: $03
	ld bc, $5532                                     ; $5c7a: $01 $32 $55
	ld [hl+], a                                      ; $5c7d: $22
	ld b, d                                          ; $5c7e: $42
	inc h                                            ; $5c7f: $24
	jr nz, jr_067_5ce6                               ; $5c80: $20 $64

	jr nz, @+$66                                     ; $5c82: $20 $64

	xor d                                            ; $5c84: $aa

jr_067_5c85:
	ld h, h                                          ; $5c85: $64
	xor a                                            ; $5c86: $af
	ld a, e                                          ; $5c87: $7b
	cp $80                                           ; $5c88: $fe $80
	inc h                                            ; $5c8a: $24
	rst $38                                          ; $5c8b: $ff
	ld [hl+], a                                      ; $5c8c: $22
	rst $38                                          ; $5c8d: $ff
	ld [de], a                                       ; $5c8e: $12
	rst $38                                          ; $5c8f: $ff
	ld de, $09ff                                     ; $5c90: $11 $ff $09
	rst $38                                          ; $5c93: $ff
	inc c                                            ; $5c94: $0c
	rst $38                                          ; $5c95: $ff
	add [hl]                                         ; $5c96: $86
	rst $38                                          ; $5c97: $ff
	rst JumpTable                                          ; $5c98: $c7
	db $fd                                           ; $5c99: $fd
	ld h, e                                          ; $5c9a: $63
	cp $71                                           ; $5c9b: $fe $71
	rst SubAFromDE                                          ; $5c9d: $df
	inc a                                            ; $5c9e: $3c
	rst AddAOntoHL                                          ; $5c9f: $ef
	rra                                              ; $5ca0: $1f
	di                                               ; $5ca1: $f3
	adc a                                            ; $5ca2: $8f
	ld hl, sp-$19                                    ; $5ca3: $f8 $e7
	db $fc                                           ; $5ca5: $fc
	ld a, e                                          ; $5ca6: $7b
	sbc $bf                                          ; $5ca7: $de $bf
	add c                                            ; $5ca9: $81
	rst SubAFromBC                                          ; $5caa: $e7
	ld [hl], b                                       ; $5cab: $70
	ldh a, [$60]                                     ; $5cac: $f0 $60
	ldh [$50], a                                     ; $5cae: $e0 $50
	ldh a, [$58]                                     ; $5cb0: $f0 $58
	ld hl, sp+$4c                                    ; $5cb2: $f8 $4c
	db $fc                                           ; $5cb4: $fc
	dec hl                                           ; $5cb5: $2b
	cp $b1                                           ; $5cb6: $fe $b1
	rst $38                                          ; $5cb8: $ff
	ld h, e                                          ; $5cb9: $63
	rst $38                                          ; $5cba: $ff
	ld e, [hl]                                       ; $5cbb: $5e
	ld h, $17                                        ; $5cbc: $26 $17
	ld c, a                                          ; $5cbe: $4f
	adc c                                            ; $5cbf: $89
	ld e, c                                          ; $5cc0: $59
	jr nc, jr_067_5c53                               ; $5cc1: $30 $90

	db $10                                           ; $5cc3: $10
	or b                                             ; $5cc4: $b0
	db $10                                           ; $5cc5: $10
	or b                                             ; $5cc6: $b0
	ret nc                                           ; $5cc7: $d0

	ld a, e                                          ; $5cc8: $7b
	cp $80                                           ; $5cc9: $fe $80
	sub b                                            ; $5ccb: $90
	ldh a, [hDisp1_SCY]                                     ; $5ccc: $f0 $90
	ldh a, [$58]                                     ; $5cce: $f0 $58
	ldh a, [rBCPS]                                   ; $5cd0: $f0 $68
	ld hl, sp+$3c                                    ; $5cd2: $f8 $3c
	db $fc                                           ; $5cd4: $fc
	or b                                             ; $5cd5: $b0
	ldh [$d8], a                                     ; $5cd6: $e0 $d8
	pop af                                           ; $5cd8: $f1
	ld a, c                                          ; $5cd9: $79
	ld sp, hl                                        ; $5cda: $f9
	rst SubAFromDE                                          ; $5cdb: $df
	ld d, d                                          ; $5cdc: $52
	ld a, a                                          ; $5cdd: $7f
	ld c, e                                          ; $5cde: $4b
	ld a, l                                          ; $5cdf: $7d
	dec hl                                           ; $5ce0: $2b
	ld sp, hl                                        ; $5ce1: $f9
	xor a                                            ; $5ce2: $af
	db $ed                                           ; $5ce3: $ed
	cp a                                             ; $5ce4: $bf
	xor h                                            ; $5ce5: $ac

jr_067_5ce6:
	rst $38                                          ; $5ce6: $ff
	sub $d7                                          ; $5ce7: $d6 $d7
	jp nc, $d3df                                     ; $5ce9: $d2 $df $d3

	sbc l                                            ; $5cec: $9d
	sub c                                            ; $5ced: $91
	add e                                            ; $5cee: $83
	cp a                                             ; $5cef: $bf
	inc bc                                           ; $5cf0: $03
	nop                                              ; $5cf1: $00
	rst SubAFromDE                                          ; $5cf2: $df
	rlca                                             ; $5cf3: $07
	rst SubAFromDE                                          ; $5cf4: $df
	rra                                              ; $5cf5: $1f
	sub e                                            ; $5cf6: $93
	ld a, b                                          ; $5cf7: $78
	ld a, a                                          ; $5cf8: $7f
	ldh [rIE], a                                     ; $5cf9: $e0 $ff
	add b                                            ; $5cfb: $80
	rst $38                                          ; $5cfc: $ff
	nop                                              ; $5cfd: $00
	ld a, a                                          ; $5cfe: $7f
	rlca                                             ; $5cff: $07
	rst $38                                          ; $5d00: $ff
	cp $03                                           ; $5d01: $fe $03
	cp l                                             ; $5d03: $bd
	rlca                                             ; $5d04: $07
	rlca                                             ; $5d05: $07
	rrca                                             ; $5d06: $0f
	rrca                                             ; $5d07: $0f
	add b                                            ; $5d08: $80
	ld bc, $011f                                     ; $5d09: $01 $1f $01
	rra                                              ; $5d0c: $1f
	inc bc                                           ; $5d0d: $03
	rra                                              ; $5d0e: $1f
	rlca                                             ; $5d0f: $07
	ld a, $0f                                        ; $5d10: $3e $0f
	ld [hl], $1f                                     ; $5d12: $36 $1f
	ld [hl], d                                       ; $5d14: $72
	ccf                                              ; $5d15: $3f
	ldh a, [c]                                       ; $5d16: $f2
	rst SubAFromDE                                          ; $5d17: $df
	ld a, [$a91f]                                    ; $5d18: $fa $1f $a9
	ld e, a                                          ; $5d1b: $5f
	adc c                                            ; $5d1c: $89
	ld a, a                                          ; $5d1d: $7f
	and h                                            ; $5d1e: $a4
	rst $38                                          ; $5d1f: $ff
	ld h, h                                          ; $5d20: $64
	rst $38                                          ; $5d21: $ff
	inc h                                            ; $5d22: $24
	cp a                                             ; $5d23: $bf
	sub h                                            ; $5d24: $94
	rst SubAFromDE                                          ; $5d25: $df
	jp z, $94ef                                      ; $5d26: $ca $ef $94

	ld h, [hl]                                       ; $5d29: $66
	rst FarCall                                          ; $5d2a: $f7
	ld e, e                                          ; $5d2b: $5b
	rst $38                                          ; $5d2c: $ff
	and a                                            ; $5d2d: $a7
	rst $38                                          ; $5d2e: $ff
	ldh a, [c]                                       ; $5d2f: $f2
	ld a, a                                          ; $5d30: $7f
	ldh a, [c]                                       ; $5d31: $f2
	ccf                                              ; $5d32: $3f
	ldh [c], a                                       ; $5d33: $e2
	ld [hl], a                                       ; $5d34: $77
	cp $9e                                           ; $5d35: $fe $9e
	scf                                              ; $5d37: $37
	ld [hl], a                                       ; $5d38: $77
	cp $9b                                           ; $5d39: $fe $9b
	jp nz, $c277                                     ; $5d3b: $c2 $77 $c2

	ld d, a                                          ; $5d3e: $57
	ld [hl], a                                       ; $5d3f: $77
	cp $89                                           ; $5d40: $fe $89
	add h                                            ; $5d42: $84
	rst SubAFromHL                                          ; $5d43: $d7
	add h                                            ; $5d44: $84
	or a                                             ; $5d45: $b7
	add h                                            ; $5d46: $84
	or a                                             ; $5d47: $b7
	ld d, h                                          ; $5d48: $54
	xor a                                            ; $5d49: $af
	call nc, $d52f                                   ; $5d4a: $d4 $2f $d5
	cpl                                              ; $5d4d: $2f
	reti                                             ; $5d4e: $d9


	cpl                                              ; $5d4f: $2f
	sbc c                                            ; $5d50: $99
	ld l, a                                          ; $5d51: $6f
	xor d                                            ; $5d52: $aa
	ld e, [hl]                                       ; $5d53: $5e
	xor d                                            ; $5d54: $aa
	ld e, [hl]                                       ; $5d55: $5e
	ld a, [hl+]                                      ; $5d56: $2a
	sbc $03                                          ; $5d57: $de $03
	ld h, b                                          ; $5d59: $60
	dec sp                                           ; $5d5a: $3b
	ld h, b                                          ; $5d5b: $60
	ld a, a                                          ; $5d5c: $7f
	ld e, a                                          ; $5d5d: $5f
	sbc c                                            ; $5d5e: $99
	inc bc                                           ; $5d5f: $03
	rrca                                             ; $5d60: $0f
	rrca                                             ; $5d61: $0f
	inc e                                            ; $5d62: $1c
	rra                                              ; $5d63: $1f
	ld [hl], b                                       ; $5d64: $70
	ld [hl], e                                       ; $5d65: $73
	ld h, b                                          ; $5d66: $60
	sbc d                                            ; $5d67: $9a
	rra                                              ; $5d68: $1f
	db $e3                                           ; $5d69: $e3
	or $ff                                           ; $5d6a: $f6 $ff
	inc a                                            ; $5d6c: $3c
	inc bc                                           ; $5d6d: $03
	ld h, b                                          ; $5d6e: $60
	inc hl                                           ; $5d6f: $23
	ld h, b                                          ; $5d70: $60
	dec de                                           ; $5d71: $1b
	add b                                            ; $5d72: $80
	sbc d                                            ; $5d73: $9a
	pop hl                                           ; $5d74: $e1
	db $db                                           ; $5d75: $db
	pop af                                           ; $5d76: $f1
	ld a, c                                          ; $5d77: $79
	ld hl, sp+$33                                    ; $5d78: $f8 $33
	add b                                            ; $5d7a: $80
	ld h, [hl]                                       ; $5d7b: $66
	ldh [c], a                                       ; $5d7c: $e2
	sub [hl]                                         ; $5d7d: $96
	sbc [hl]                                         ; $5d7e: $9e
	rst FarCall                                          ; $5d7f: $f7
	ld [hl], a                                       ; $5d80: $77
	db $fd                                           ; $5d81: $fd
	db $fd                                           ; $5d82: $fd
	and l                                            ; $5d83: $a5
	ld [hl], $7f                                     ; $5d84: $36 $7f
	jr jr_067_5d8b                                   ; $5d86: $18 $03

	add b                                            ; $5d88: $80
	daa                                              ; $5d89: $27
	add b                                            ; $5d8a: $80

jr_067_5d8b:
	sbc [hl]                                         ; $5d8b: $9e
	or a                                             ; $5d8c: $b7
	inc bc                                           ; $5d8d: $03
	add b                                            ; $5d8e: $80
	ld b, e                                          ; $5d8f: $43
	add b                                            ; $5d90: $80
	sbc d                                            ; $5d91: $9a
	add b                                            ; $5d92: $80
	rrca                                             ; $5d93: $0f
	rrca                                             ; $5d94: $0f
	ccf                                              ; $5d95: $3f
	ccf                                              ; $5d96: $3f
	ld [hl], a                                       ; $5d97: $77
	add d                                            ; $5d98: $82
	sub a                                            ; $5d99: $97
	adc a                                            ; $5d9a: $8f
	rst $38                                          ; $5d9b: $ff
	ccf                                              ; $5d9c: $3f
	push hl                                          ; $5d9d: $e5
	ld [hl], a                                       ; $5d9e: $77
	cp l                                             ; $5d9f: $bd
	db $fc                                           ; $5da0: $fc
	dec h                                            ; $5da1: $25
	inc bc                                           ; $5da2: $03
	add b                                            ; $5da3: $80
	dec hl                                           ; $5da4: $2b
	add b                                            ; $5da5: $80
	sbc [hl]                                         ; $5da6: $9e
	cp a                                             ; $5da7: $bf
	ld [hl], a                                       ; $5da8: $77
	nop                                              ; $5da9: $00
	adc e                                            ; $5daa: $8b
	and b                                            ; $5dab: $a0
	ldh [$f0], a                                     ; $5dac: $e0 $f0
	ld [hl], b                                       ; $5dae: $70
	ld hl, sp-$80                                    ; $5daf: $f8 $80
	ld [hl], h                                       ; $5db1: $74
	ret nc                                           ; $5db2: $d0

	or $f0                                           ; $5db3: $f6 $f0
	cp $10                                           ; $5db5: $fe $10
	db $fc                                           ; $5db7: $fc
	db $10                                           ; $5db8: $10
	ld [$0008], sp                                   ; $5db9: $08 $08 $00
	nop                                              ; $5dbc: $00
	inc sp                                           ; $5dbd: $33
	ld d, $f9                                        ; $5dbe: $16 $f9
	sbc e                                            ; $5dc0: $9b
	pop bc                                           ; $5dc1: $c1
	add b                                            ; $5dc2: $80
	ld [hl], a                                       ; $5dc3: $77
	ld h, e                                          ; $5dc4: $63
	scf                                              ; $5dc5: $37
	ldh [$9b], a                                     ; $5dc6: $e0 $9b
	ccf                                              ; $5dc8: $3f
	ld e, $1e                                        ; $5dc9: $1e $1e
	inc c                                            ; $5dcb: $0c
	rra                                              ; $5dcc: $1f
	ldh [$9e], a                                     ; $5dcd: $e0 $9e
	ld [de], a                                       ; $5dcf: $12
	ld a, e                                          ; $5dd0: $7b
	ldh [$6f], a                                     ; $5dd1: $e0 $6f
	sbc $17                                          ; $5dd3: $de $17
	ldh [rPCM34], a                                  ; $5dd5: $e0 $77
	sbc $77                                          ; $5dd7: $de $77
	ldh [$d8], a                                     ; $5dd9: $e0 $d8
	ld [bc], a                                       ; $5ddb: $02
	rst $38                                          ; $5ddc: $ff
	rst SubAFromDE                                          ; $5ddd: $df
	ld bc, $0283                                     ; $5dde: $01 $83 $02
	inc bc                                           ; $5de1: $03
	inc bc                                           ; $5de2: $03
	ld [bc], a                                       ; $5de3: $02
	dec b                                            ; $5de4: $05
	ld b, $0b                                        ; $5de5: $06 $0b
	inc c                                            ; $5de7: $0c
	rrca                                             ; $5de8: $0f
	ld [$1817], sp                                   ; $5de9: $08 $17 $18
	cpl                                              ; $5dec: $2f
	jr nc, @+$31                                     ; $5ded: $30 $2f

	jr nc, jr_067_5e50                               ; $5def: $30 $5f

	ld h, b                                          ; $5df1: $60
	ld e, a                                          ; $5df2: $5f
	ld h, b                                          ; $5df3: $60
	ld a, a                                          ; $5df4: $7f
	ld b, b                                          ; $5df5: $40
	cp a                                             ; $5df6: $bf
	ret nz                                           ; $5df7: $c0

	cp a                                             ; $5df8: $bf
	ret nz                                           ; $5df9: $c0

	sbc a                                            ; $5dfa: $9f
	ldh [rPCM34], a                                  ; $5dfb: $e0 $77
	ldh [rPCM34], a                                  ; $5dfd: $e0 $77
	sbc $df                                          ; $5dff: $de $df
	rlca                                             ; $5e01: $07
	db $fd                                           ; $5e02: $fd
	pop de                                           ; $5e03: $d1
	ld bc, $77ed                                     ; $5e04: $01 $ed $77
	jp nc, $b277                                     ; $5e07: $d2 $77 $b2

	ld [hl], a                                       ; $5e0a: $77
	or h                                             ; $5e0b: $b4
	ld a, a                                          ; $5e0c: $7f
	cp b                                             ; $5e0d: $b8
	sbc h                                            ; $5e0e: $9c
	ret nz                                           ; $5e0f: $c0

	add b                                            ; $5e10: $80
	add b                                            ; $5e11: $80
	cp b                                             ; $5e12: $b8
	nop                                              ; $5e13: $00
	ld bc, $0301                                     ; $5e14: $01 $01 $03
	rlca                                             ; $5e17: $07
	rrca                                             ; $5e18: $0f
	rrca                                             ; $5e19: $0f
	rra                                              ; $5e1a: $1f
	ccf                                              ; $5e1b: $3f
	sub h                                            ; $5e1c: $94
	ld bc, $013f                    ; $5e1d: $01 $3f $01
	ld a, l                                          ; $5e20: $7d

jr_067_5e21:
	inc bc                                           ; $5e21: $03
	ld a, [hl]                                       ; $5e22: $7e
	inc bc                                           ; $5e23: $03
	ld a, [$f607]                                    ; $5e24: $fa $07 $f6
	rrca                                             ; $5e27: $0f
	rst AddAOntoHL                                          ; $5e28: $ef
	rst SubAFromDE                                          ; $5e29: $df
	inc bc                                           ; $5e2a: $03
	ld [hl], a                                       ; $5e2b: $77
	db $fc                                           ; $5e2c: $fc
	add a                                            ; $5e2d: $87
	rrca                                             ; $5e2e: $0f
	inc c                                            ; $5e2f: $0c
	ld e, $11                                        ; $5e30: $1e $11
	ccf                                              ; $5e32: $3f
	ld h, $6a                                        ; $5e33: $26 $6a
	ld e, l                                          ; $5e35: $5d
	call c, $bab3                                    ; $5e36: $dc $b3 $ba
	ld h, h                                          ; $5e39: $64
	ld d, l                                          ; $5e3a: $55
	add sp, -$16                                     ; $5e3b: $e8 $ea
	pop de                                           ; $5e3d: $d1
	and c                                            ; $5e3e: $a1
	jp nc, $a2d5                                     ; $5e3f: $d2 $d5 $a2

	jp nz, Jump_067_4aa4                             ; $5e42: $c2 $a4 $4a

	and h                                            ; $5e45: $a4
	ldh [$c1], a                                     ; $5e46: $e0 $c1
	ld a, a                                          ; $5e48: $7f
	inc l                                            ; $5e49: $2c
	add a                                            ; $5e4a: $87
	ld a, a                                          ; $5e4b: $7f
	add b                                            ; $5e4c: $80
	ld sp, hl                                        ; $5e4d: $f9
	ld b, $f4                                        ; $5e4e: $06 $f4

jr_067_5e50:
	rrca                                             ; $5e50: $0f
	and $1f                                          ; $5e51: $e6 $1f
	rst SubAFromBC                                          ; $5e53: $e7
	rra                                              ; $5e54: $1f
	rst JumpTable                                          ; $5e55: $c7
	ccf                                              ; $5e56: $3f
	add [hl]                                         ; $5e57: $86
	ld a, a                                          ; $5e58: $7f
	ld a, a                                          ; $5e59: $7f
	inc c                                            ; $5e5a: $0c
	rst $38                                          ; $5e5b: $ff
	ld [$18ff], sp                                   ; $5e5c: $08 $ff $18
	rst $38                                          ; $5e5f: $ff
	db $10                                           ; $5e60: $10

jr_067_5e61:
	rst $38                                          ; $5e61: $ff
	jr nz, jr_067_5edf                               ; $5e62: $20 $7b

	cp $92                                           ; $5e64: $fe $92
	ld b, c                                          ; $5e66: $41
	rst $38                                          ; $5e67: $ff
	ld b, e                                          ; $5e68: $43
	cp $87                                           ; $5e69: $fe $87
	rst $38                                          ; $5e6b: $ff
	adc a                                            ; $5e6c: $8f
	ld hl, sp+$1f                                    ; $5e6d: $f8 $1f
	ldh a, [$3f]                                     ; $5e6f: $f0 $3f
	ldh [$7c], a                                     ; $5e71: $e0 $7c
	ld a, e                                          ; $5e73: $7b
	rst SubAFromHL                                          ; $5e74: $d7
	sbc h                                            ; $5e75: $9c
	rst AddAOntoHL                                          ; $5e76: $ef
	add b                                            ; $5e77: $80
	ldh a, [c]                                       ; $5e78: $f2
	ld c, a                                          ; $5e79: $4f
	ld h, $80                                        ; $5e7a: $26 $80
	ld e, $1f                                        ; $5e7c: $1e $1f
	rst AddAOntoHL                                          ; $5e7e: $ef
	ldh a, [$80]                                     ; $5e7f: $f0 $80
	rst $38                                          ; $5e81: $ff
	and $f8                                          ; $5e82: $e6 $f8
	ld a, b                                          ; $5e84: $78
	add b                                            ; $5e85: $80
	cp h                                             ; $5e86: $bc
	ld h, e                                          ; $5e87: $63
	ldh [c], a                                       ; $5e88: $e2
	sbc h                                            ; $5e89: $9c
	sbc a                                            ; $5e8a: $9f
	ld h, b                                          ; $5e8b: $60
	ld a, b                                          ; $5e8c: $78
	add a                                            ; $5e8d: $87
	db $e4                                           ; $5e8e: $e4
	jr jr_067_5e21                                   ; $5e8f: $18 $90

	ld h, e                                          ; $5e91: $63
	ld c, d                                          ; $5e92: $4a
	add h                                            ; $5e93: $84
	sub h                                            ; $5e94: $94
	ld [$1029], sp                                   ; $5e95: $08 $29 $10
	ld [de], a                                       ; $5e98: $12
	ld hl, $df40                                     ; $5e99: $21 $40 $df
	ld h, $9e                                        ; $5e9c: $26 $9e
	ld c, h                                          ; $5e9e: $4c
	ldh [$c1], a                                     ; $5e9f: $e0 $c1
	sbc [hl]                                         ; $5ea1: $9e
	rst $38                                          ; $5ea2: $ff
	cp [hl]                                          ; $5ea3: $be
	rst $38                                          ; $5ea4: $ff
	rst $38                                          ; $5ea5: $ff
	ld c, $80                                        ; $5ea6: $0e $80
	pop af                                           ; $5ea8: $f1
	nop                                              ; $5ea9: $00
	rst $38                                          ; $5eaa: $ff
	ldh a, [c]                                       ; $5eab: $f2
	db $fd                                           ; $5eac: $fd
	dec c                                            ; $5ead: $0d
	cp $02                                           ; $5eae: $fe $02
	rst $38                                          ; $5eb0: $ff
	cp $03                                           ; $5eb1: $fe $03
	db $fd                                           ; $5eb3: $fd
	rlca                                             ; $5eb4: $07
	ld sp, hl                                        ; $5eb5: $f9
	dec c                                            ; $5eb6: $0d
	di                                               ; $5eb7: $f3
	ld a, [de]                                       ; $5eb8: $1a
	and $34                                          ; $5eb9: $e6 $34
	call z, $9868                                    ; $5ebb: $cc $68 $98
	ret nc                                           ; $5ebe: $d0

	jr nc, jr_067_5e61                               ; $5ebf: $30 $a0

	inc hl                                           ; $5ec1: $23
	ld h, b                                          ; $5ec2: $60
	ld h, c                                          ; $5ec3: $61
	ret nz                                           ; $5ec4: $c0

	ldh [$80], a                                     ; $5ec5: $e0 $80
	sub l                                            ; $5ec7: $95
	ldh [$c0], a                                     ; $5ec8: $e0 $c0
	ld h, b                                          ; $5eca: $60
	ret nz                                           ; $5ecb: $c0

	ld [hl], b                                       ; $5ecc: $70
	ldh [$30], a                                     ; $5ecd: $e0 $30
	ldh [$38], a                                     ; $5ecf: $e0 $38
	ld [hl], b                                       ; $5ed1: $70
	ld d, e                                          ; $5ed2: $53
	call nz, $ff9d                                   ; $5ed3: $c4 $9d $ff
	db $fc                                           ; $5ed6: $fc
	ld a, d                                          ; $5ed7: $7a
	call nz, $0481                                   ; $5ed8: $c4 $81 $04
	ld hl, sp+$39                                    ; $5edb: $f8 $39
	ld b, $06                                        ; $5edd: $06 $06

jr_067_5edf:
	ld bc, $be01                                     ; $5edf: $01 $01 $be
	inc c                                            ; $5ee2: $0c
	inc bc                                           ; $5ee3: $03
	rst SubAFromBC                                          ; $5ee4: $e7
	nop                                              ; $5ee5: $00
	dec de                                           ; $5ee6: $1b
	db $fc                                           ; $5ee7: $fc
	or $0f                                           ; $5ee8: $f6 $0f
	ld a, a                                          ; $5eea: $7f
	add c                                            ; $5eeb: $81
	ld e, l                                          ; $5eec: $5d
	ld a, $e3                                        ; $5eed: $3e $e3
	ld a, a                                          ; $5eef: $7f
	cp l                                             ; $5ef0: $bd
	jp $0f90                                         ; $5ef1: $c3 $90 $0f


	ld c, [hl]                                       ; $5ef4: $4e
	ccf                                              ; $5ef5: $3f
	or l                                             ; $5ef6: $b5
	ld a, e                                          ; $5ef7: $7b
	ldh [$c1], a                                     ; $5ef8: $e0 $c1
	add c                                            ; $5efa: $81
	dec e                                            ; $5efb: $1d
	nop                                              ; $5efc: $00
	ld [hl], $0c                                     ; $5efd: $36 $0c
	ld a, e                                          ; $5eff: $7b
	ld b, $d5                                        ; $5f00: $06 $d5
	inc hl                                           ; $5f02: $23
	ei                                               ; $5f03: $fb
	ld de, $89da                                     ; $5f04: $11 $da $89
	add sp, $45                                      ; $5f07: $e8 $45
	ld c, h                                          ; $5f09: $4c
	ld h, l                                          ; $5f0a: $65
	ld [hl], h                                       ; $5f0b: $74
	dec h                                            ; $5f0c: $25
	and [hl]                                         ; $5f0d: $a6
	dec [hl]                                         ; $5f0e: $35
	ld h, $b5                                        ; $5f0f: $26 $b5
	cpl                                              ; $5f11: $2f
	or l                                             ; $5f12: $b5
	ld l, [hl]                                       ; $5f13: $6e
	or [hl]                                          ; $5f14: $b6
	ld l, b                                          ; $5f15: $68
	xor h                                            ; $5f16: $ac
	ld b, b                                          ; $5f17: $40
	ld h, b                                          ; $5f18: $60
	ld a, d                                          ; $5f19: $7a

jr_067_5f1a:
	ld b, [hl]                                       ; $5f1a: $46
	cp a                                             ; $5f1b: $bf
	rst GetHLinHL                                          ; $5f1c: $cf
	ld a, d                                          ; $5f1d: $7a
	sub h                                            ; $5f1e: $94
	add h                                            ; $5f1f: $84
	or h                                             ; $5f20: $b4

jr_067_5f21:
	ld c, b                                          ; $5f21: $48
	jr z, jr_067_5f74                                ; $5f22: $28 $50

jr_067_5f24:
	ld e, b                                          ; $5f24: $58
	jr nz, @+$52                                     ; $5f25: $20 $50

	jr nz, jr_067_5f1a                               ; $5f27: $20 $f1

	jr nz, jr_067_5f24                               ; $5f29: $20 $f9

	rst SubAFromDE                                          ; $5f2b: $df
	ld a, b                                          ; $5f2c: $78
	add b                                            ; $5f2d: $80
	ld e, $16                                        ; $5f2e: $1e $16
	dec c                                            ; $5f30: $0d
	dec bc                                           ; $5f31: $0b
	ld [$9eed], a                                    ; $5f32: $ea $ed $9e
	ld a, h                                          ; $5f35: $7c
	ld b, l                                          ; $5f36: $45
	ld a, $b3                                        ; $5f37: $3e $b3
	ld e, $5b                                        ; $5f39: $1e $5b
	adc a                                            ; $5f3b: $8f
	adc [hl]                                         ; $5f3c: $8e
	ld a, a                                          ; $5f3d: $7f
	ld l, h                                          ; $5f3e: $6c
	sbc a                                            ; $5f3f: $9f
	ld l, l                                          ; $5f40: $6d
	cp $b8                                           ; $5f41: $fe $b8
	ld a, a                                          ; $5f43: $7f
	ld e, a                                          ; $5f44: $5f
	cp a                                             ; $5f45: $bf
	sbc b                                            ; $5f46: $98
	cp $50                                           ; $5f47: $fe $50
	db $fd                                           ; $5f49: $fd
	jr nc, @+$01                                     ; $5f4a: $30 $ff

	cp [hl]                                          ; $5f4c: $be
	sbc b                                            ; $5f4d: $98
	rst $38                                          ; $5f4e: $ff
	pop hl                                           ; $5f4f: $e1
	di                                               ; $5f50: $f3
	ld b, b                                          ; $5f51: $40
	db $fd                                           ; $5f52: $fd
	ld e, h                                          ; $5f53: $5c
	cp $e0                                           ; $5f54: $fe $e0
	pop bc                                           ; $5f56: $c1
	add a                                            ; $5f57: $87
	adc [hl]                                         ; $5f58: $8e
	add e                                            ; $5f59: $83
	add $42                                          ; $5f5a: $c6 $42
	ld h, h                                          ; $5f5c: $64
	ld b, [hl]                                       ; $5f5d: $46
	inc l                                            ; $5f5e: $2c
	ld h, $ac                                        ; $5f5f: $26 $ac
	inc h                                            ; $5f61: $24
	or h                                             ; $5f62: $b4
	and l                                            ; $5f63: $a5
	ldh a, [$a5]                                     ; $5f64: $f0 $a5
	add sp, -$53                                     ; $5f66: $e8 $ad
	cp b                                             ; $5f68: $b8
	xor a                                            ; $5f69: $af

jr_067_5f6a:
	add sp, $4f                                      ; $5f6a: $e8 $4f
	ld [$110f], sp                                   ; $5f6c: $08 $0f $11
	rra                                              ; $5f6f: $1f
	ld [hl], a                                       ; $5f70: $77
	cp $9a                                           ; $5f71: $fe $9a
	inc de                                           ; $5f73: $13

jr_067_5f74:
	ld e, $93                                        ; $5f74: $1e $93
	ld e, $13                                        ; $5f76: $1e $13
	ld a, e                                          ; $5f78: $7b
	cp $94                                           ; $5f79: $fe $94
	rla                                              ; $5f7b: $17
	inc e                                            ; $5f7c: $1c
	rla                                              ; $5f7d: $17
	rra                                              ; $5f7e: $1f
	ld d, $1f                                        ; $5f7f: $16 $1f
	add hl, sp                                       ; $5f81: $39
	ld a, $58                                        ; $5f82: $3e $58
	ld a, a                                          ; $5f84: $7f
	sub c                                            ; $5f85: $91
	ld e, e                                          ; $5f86: $5b
	sub b                                            ; $5f87: $90
	rst SubAFromDE                                          ; $5f88: $df
	jr jr_067_5f6a                                   ; $5f89: $18 $df

	jr nc, jr_067_5f21                               ; $5f8b: $30 $94

	ldh a, [$d0]                                     ; $5f8d: $f0 $d0
	ld e, a                                          ; $5f8f: $5f
	rst SubAFromDE                                          ; $5f90: $df
	ld h, a                                          ; $5f91: $67
	ld h, b                                          ; $5f92: $60
	sub a                                            ; $5f93: $97
	rst GetHLinHL                                          ; $5f94: $cf
	ld a, c                                          ; $5f95: $79
	sbc a                                            ; $5f96: $9f
	add e                                            ; $5f97: $83
	ld a, d                                          ; $5f98: $7a
	or c                                             ; $5f99: $b1
	adc e                                            ; $5f9a: $8b
	add l                                            ; $5f9b: $85
	inc bc                                           ; $5f9c: $03
	rlca                                             ; $5f9d: $07
	ld hl, sp-$7f                                    ; $5f9e: $f8 $81
	ld b, $08                                        ; $5fa0: $06 $08
	ld [hl], c                                       ; $5fa2: $71
	ld [hl], e                                       ; $5fa3: $73
	adc h                                            ; $5fa4: $8c
	dec c                                            ; $5fa5: $0d
	ld [bc], a                                       ; $5fa6: $02
	ldh a, [c]                                       ; $5fa7: $f2
	ld bc, $9825                                     ; $5fa8: $01 $25 $98
	sub e                                            ; $5fab: $93
	call z, $c649                                    ; $5fac: $cc $49 $c6
	ldh [$c1], a                                     ; $5faf: $e0 $c1
	sub d                                            ; $5fb1: $92
	dec c                                            ; $5fb2: $0d
	ld c, a                                          ; $5fb3: $4f
	ld a, [bc]                                       ; $5fb4: $0a
	ld e, a                                          ; $5fb5: $5f
	rra                                              ; $5fb6: $1f
	rst SubAFromDE                                          ; $5fb7: $df
	ld e, $b8                                        ; $5fb8: $1e $b8
	inc a                                            ; $5fba: $3c
	or b                                             ; $5fbb: $b0
	jr c, jr_067_602e                                ; $5fbc: $38 $70

	ld e, b                                          ; $5fbe: $58
	ld a, e                                          ; $5fbf: $7b
	cp $96                                           ; $5fc0: $fe $96
	ret c                                            ; $5fc2: $d8

	ldh a, [$e8]                                     ; $5fc3: $f0 $e8
	xor b                                            ; $5fc5: $a8
	add sp, -$58                                     ; $5fc6: $e8 $a8
	db $ec                                           ; $5fc8: $ec
	jr z, @-$52                                      ; $5fc9: $28 $ac

	ld a, e                                          ; $5fcb: $7b
	cp $8b                                           ; $5fcc: $fe $8b
	or h                                             ; $5fce: $b4
	inc d                                            ; $5fcf: $14
	inc [hl]                                         ; $5fd0: $34
	inc d                                            ; $5fd1: $14
	dec d                                            ; $5fd2: $15
	inc d                                            ; $5fd3: $14
	rla                                              ; $5fd4: $17
	inc d                                            ; $5fd5: $14
	rst FarCall                                          ; $5fd6: $f7
	db $f4                                           ; $5fd7: $f4
	sub d                                            ; $5fd8: $92
	ld a, [$9a12]                                    ; $5fd9: $fa $12 $9a
	ld a, [bc]                                       ; $5fdc: $0a
	ld a, d                                          ; $5fdd: $7a
	dec bc                                           ; $5fde: $0b
	ld [$9b09], a                                    ; $5fdf: $ea $09 $9b
	rst AddAOntoHL                                          ; $5fe2: $ef
	rst SubAFromDE                                          ; $5fe3: $df
	ldh [$df], a                                     ; $5fe4: $e0 $df
	add b                                            ; $5fe6: $80
	rst SubAFromDE                                          ; $5fe7: $df
	ldh [$80], a                                     ; $5fe8: $e0 $80
	or b                                             ; $5fea: $b0
	ld [hl], b                                       ; $5feb: $70
	add sp, $18                                      ; $5fec: $e8 $18
	or h                                             ; $5fee: $b4
	call z, $f66a                                    ; $5fef: $cc $6a $f6
	db $dd                                           ; $5ff2: $dd
	inc sp                                           ; $5ff3: $33
	ld l, l                                          ; $5ff4: $6d
	sbc e                                            ; $5ff5: $9b
	halt                                             ; $5ff6: $76
	call Call_067_67ba                               ; $5ff7: $cd $ba $67
	jp nc, Jump_067_693f                             ; $5ffa: $d2 $3f $69

	sbc a                                            ; $5ffd: $9f
	and l                                            ; $5ffe: $a5
	ld e, a                                          ; $5fff: $5f
	call nz, $e27f                                   ; $6000: $c4 $7f $e2
	ccf                                              ; $6003: $3f
	ld h, d                                          ; $6004: $62
	cp a                                             ; $6005: $bf
	pop de                                           ; $6006: $d1

jr_067_6007:
	cp a                                             ; $6007: $bf
	sub c                                            ; $6008: $91
	adc a                                            ; $6009: $8f
	rst $38                                          ; $600a: $ff
	ld d, c                                          ; $600b: $51
	rst $38                                          ; $600c: $ff
	ret                                              ; $600d: $c9


	ld a, a                                          ; $600e: $7f
	ret z                                            ; $600f: $c8

	ld a, a                                          ; $6010: $7f
	ret z                                            ; $6011: $c8

	rst $38                                          ; $6012: $ff
	jr c, @+$01                                      ; $6013: $38 $ff

	call z, $7fff                                    ; $6015: $cc $ff $7f
	rst $38                                          ; $6018: $ff
	ld c, b                                          ; $6019: $48
	ld a, e                                          ; $601a: $7b
	cp $7f                                           ; $601b: $fe $7f
	db $f4                                           ; $601d: $f4
	sbc [hl]                                         ; $601e: $9e
	ld c, c                                          ; $601f: $49
	ld [hl], e                                       ; $6020: $73
	cp $90                                           ; $6021: $fe $90
	ld [hl], d                                       ; $6023: $72
	rst SubAFromDE                                          ; $6024: $df
	ld [hl], d                                       ; $6025: $72
	rst SubAFromDE                                          ; $6026: $df
	cp d                                             ; $6027: $ba
	rst SubAFromHL                                          ; $6028: $d7
	call c, $ecb7                                    ; $6029: $dc $b7 $ec
	or a                                             ; $602c: $b7
	db $f4                                           ; $602d: $f4

jr_067_602e:
	xor a                                            ; $602e: $af
	ld a, c                                          ; $602f: $79
	xor a                                            ; $6030: $af
	add hl, hl                                       ; $6031: $29
	ld a, e                                          ; $6032: $7b
	xor $8f                                          ; $6033: $ee $8f
	ld d, d                                          ; $6035: $52
	cp $52                                           ; $6036: $fe $52
	cp $94                                           ; $6038: $fe $94
	db $fc                                           ; $603a: $fc
	and h                                            ; $603b: $a4
	db $fc                                           ; $603c: $fc
	xor b                                            ; $603d: $a8
	ld hl, sp+$50                                    ; $603e: $f8 $50
	ldh a, [$5f]                                     ; $6040: $f0 $5f
	rst $38                                          ; $6042: $ff
	pop hl                                           ; $6043: $e1

jr_067_6044:
	pop hl                                           ; $6044: $e1
	di                                               ; $6045: $f3
	ld a, [hl]                                       ; $6046: $7e
	dec a                                            ; $6047: $3d
	sbc [hl]                                         ; $6048: $9e
	jr nc, jr_067_6007                               ; $6049: $30 $bc

	jr c, jr_067_6069                                ; $604b: $38 $1c

	ld e, $3f                                        ; $604d: $1e $3f
	rst FarCall                                          ; $604f: $f7
	adc [hl]                                         ; $6050: $8e
	ld [$48b7], sp                                   ; $6051: $08 $b7 $48
	cp a                                             ; $6054: $bf
	ld l, b                                          ; $6055: $68
	rst SubAFromDE                                          ; $6056: $df
	jr c, jr_067_6044                                ; $6057: $38 $eb

	inc e                                            ; $6059: $1c
	ei                                               ; $605a: $fb
	inc c                                            ; $605b: $0c
	ld a, e                                          ; $605c: $7b
	ld c, h                                          ; $605d: $4c
	halt                                             ; $605e: $76
	inc l                                            ; $605f: $2c
	halt                                             ; $6060: $76
	inc a                                            ; $6061: $3c
	db $fd                                           ; $6062: $fd
	db $dd                                           ; $6063: $dd
	add b                                            ; $6064: $80
	sbc l                                            ; $6065: $9d
	ld b, b                                          ; $6066: $40
	ret nz                                           ; $6067: $c0

	ld [hl], a                                       ; $6068: $77

jr_067_6069:
	cp $9a                                           ; $6069: $fe $9a
	and b                                            ; $606b: $a0
	ldh [$a0], a                                     ; $606c: $e0 $a0
	ldh [$60], a                                     ; $606e: $e0 $60
	ld [hl], e                                       ; $6070: $73
	cp $9e                                           ; $6071: $fe $9e
	jr nz, jr_067_60f0                               ; $6073: $20 $7b

	cp $77                                           ; $6075: $fe $77
	ldh a, [c]                                       ; $6077: $f2
	ld d, a                                          ; $6078: $57
	cp $77                                           ; $6079: $fe $77

Jump_067_607b:
	db $ec                                           ; $607b: $ec
	ld l, a                                          ; $607c: $6f
	ret c                                            ; $607d: $d8

	ld a, a                                          ; $607e: $7f
	cp $db                                           ; $607f: $fe $db
	add b                                            ; $6081: $80
	db $ed                                           ; $6082: $ed
	rst SubAFromDE                                          ; $6083: $df
	ret nz                                           ; $6084: $c0

	ld a, a                                          ; $6085: $7f
	inc h                                            ; $6086: $24
	adc d                                            ; $6087: $8a
	ret z                                            ; $6088: $c8

	jr c, @-$1a                                      ; $6089: $38 $e4

	inc e                                            ; $608b: $1c
	db $f4                                           ; $608c: $f4
	inc c                                            ; $608d: $0c
	ldh a, [c]                                       ; $608e: $f2
	ld c, $fa                                        ; $608f: $0e $fa
	ld b, $05                                        ; $6091: $06 $05
	inc bc                                           ; $6093: $03
	inc bc                                           ; $6094: $03
	ld bc, $0103                                     ; $6095: $01 $03 $01
	ld [bc], a                                       ; $6098: $02
	ld bc, $0106                                     ; $6099: $01 $06 $01
	rlca                                             ; $609c: $07
	or e                                             ; $609d: $b3
	rlca                                             ; $609e: $07
	inc bc                                           ; $609f: $03
	add e                                            ; $60a0: $83
	add c                                            ; $60a1: $81
	add c                                            ; $60a2: $81
	nop                                              ; $60a3: $00
	nop                                              ; $60a4: $00
	nop                                              ; $60a5: $00
	nop                                              ; $60a6: $00
	ld bc, $0000                                     ; $60a7: $01 $00 $00
	nop                                              ; $60aa: $00
	add b                                            ; $60ab: $80
	ret c                                            ; $60ac: $d8

	add b                                            ; $60ad: $80
	ld h, a                                          ; $60ae: $67
	and b                                            ; $60af: $a0
	ld h, a                                          ; $60b0: $67
	cp $28                                           ; $60b1: $fe $28
	nop                                              ; $60b3: $00
	sub d                                            ; $60b4: $92
	call z, $cc88                                    ; $60b5: $cc $88 $cc
	ld [hl+], a                                      ; $60b8: $22
	adc b                                            ; $60b9: $88
	ld [$cc99], sp                                   ; $60ba: $08 $99 $cc
	inc sp                                           ; $60bd: $33
	add b                                            ; $60be: $80
	ld [$c499], sp                                   ; $60bf: $08 $99 $c4
	ld [hl], a                                       ; $60c2: $77
	ei                                               ; $60c3: $fb
	sbc l                                            ; $60c4: $9d
	and d                                            ; $60c5: $a2
	ld [hl+], a                                      ; $60c6: $22
	ld a, e                                          ; $60c7: $7b
	ei                                               ; $60c8: $fb
	sbc l                                            ; $60c9: $9d
	sub c                                            ; $60ca: $91
	ld de, $fb77                                     ; $60cb: $11 $77 $fb
	sbc b                                            ; $60ce: $98
	inc sp                                           ; $60cf: $33
	adc b                                            ; $60d0: $88
	nop                                              ; $60d1: $00
	nop                                              ; $60d2: $00
	add b                                            ; $60d3: $80
	ld [hl+], a                                      ; $60d4: $22
	adc b                                            ; $60d5: $88
	ld a, e                                          ; $60d6: $7b
	sbc $9e                                          ; $60d7: $de $9e
	call z, $0199                                    ; $60d9: $cc $99 $01
	sub [hl]                                         ; $60dc: $96
	and b                                            ; $60dd: $a0
	ld c, h                                          ; $60de: $4c
	and h                                            ; $60df: $a4
	ld c, b                                          ; $60e0: $48
	xor l                                            ; $60e1: $ad
	ld c, b                                          ; $60e2: $48
	db $ed                                           ; $60e3: $ed
	ld c, b                                          ; $60e4: $48
	db $fd                                           ; $60e5: $fd
	ld a, e                                          ; $60e6: $7b
	cp $89                                           ; $60e7: $fe $89
	rst SubAFromDE                                          ; $60e9: $df
	ld l, b                                          ; $60ea: $68
	ei                                               ; $60eb: $fb
	xor h                                            ; $60ec: $ac
	rst $38                                          ; $60ed: $ff
	and h                                            ; $60ee: $a4
	cp a                                             ; $60ef: $bf

jr_067_60f0:
	db $e4                                           ; $60f0: $e4
	ld e, l                                          ; $60f1: $5d
	halt                                             ; $60f2: $76
	ld e, a                                          ; $60f3: $5f
	ld [hl], d                                       ; $60f4: $72
	ld l, $3b                                        ; $60f5: $2e $3b
	dec de                                           ; $60f7: $1b
	dec e                                            ; $60f8: $1d
	dec c                                            ; $60f9: $0d
	ld c, $06                                        ; $60fa: $0e $06
	rlca                                             ; $60fc: $07
	ld bc, $eb01                                     ; $60fd: $01 $01 $eb
	rst SubAFromDE                                          ; $6100: $df
	ld bc, $0e8c                                     ; $6101: $01 $8c $0e
	rrca                                             ; $6104: $0f
	scf                                              ; $6105: $37
	jr c, @+$61                                      ; $6106: $38 $5f

	ld h, b                                          ; $6108: $60
	adc b                                            ; $6109: $88
	ld c, h                                          ; $610a: $4c
	ld c, l                                          ; $610b: $4d
	sbc b                                            ; $610c: $98
	ld d, b                                          ; $610d: $50
	sbc c                                            ; $610e: $99
	ld e, d                                          ; $610f: $5a
	sub c                                            ; $6110: $91
	ld e, d                                          ; $6111: $5a
	sub c                                            ; $6112: $91
	ld e, e                                          ; $6113: $5b
	sub c                                            ; $6114: $91
	rst $38                                          ; $6115: $ff
	ld a, e                                          ; $6116: $7b
	cp $7f                                           ; $6117: $fe $7f
	db $fd                                           ; $6119: $fd
	sub [hl]                                         ; $611a: $96
	adc c                                            ; $611b: $89
	rst $38                                          ; $611c: $ff
	ld c, b                                          ; $611d: $48
	rst $38                                          ; $611e: $ff
	ld b, h                                          ; $611f: $44
	rst $38                                          ; $6120: $ff
	inc h                                            ; $6121: $24
	rst $38                                          ; $6122: $ff
	ld [hl+], a                                      ; $6123: $22
	ld a, e                                          ; $6124: $7b
	pop af                                           ; $6125: $f1
	add l                                            ; $6126: $85
	ld c, h                                          ; $6127: $4c
	rst $38                                          ; $6128: $ff
	rst SubAFromBC                                          ; $6129: $e7
	rst $38                                          ; $612a: $ff
	ld e, c                                          ; $612b: $59
	ld a, a                                          ; $612c: $7f
	ld e, a                                          ; $612d: $5f
	ld [hl], a                                       ; $612e: $77
	ld e, a                                          ; $612f: $5f
	ld [hl], b                                       ; $6130: $70
	ld e, a                                          ; $6131: $5f
	ld [hl], b                                       ; $6132: $70
	cpl                                              ; $6133: $2f
	jr c, jr_067_6175                                ; $6134: $38 $3f

	jr z, jr_067_616f                                ; $6136: $28 $37

	inc l                                            ; $6138: $2c
	rra                                              ; $6139: $1f
	ld d, $1b                                        ; $613a: $16 $1b
	rla                                              ; $613c: $17
	dec d                                            ; $613d: $15
	dec de                                           ; $613e: $1b
	inc c                                            ; $613f: $0c
	dec bc                                           ; $6140: $0b
	sbc $ff                                          ; $6141: $de $ff
	cp [hl]                                          ; $6143: $be
	rst $38                                          ; $6144: $ff
	rst $38                                          ; $6145: $ff
	ld a, [hl+]                                      ; $6146: $2a
	sub e                                            ; $6147: $93
	rst FarCall                                          ; $6148: $f7
	ld e, a                                          ; $6149: $5f
	db $ed                                           ; $614a: $ed
	ld l, h                                          ; $614b: $6c
	ret c                                            ; $614c: $d8

	cp b                                             ; $614d: $b8
	ret nc                                           ; $614e: $d0

	or b                                             ; $614f: $b0
	ret nc                                           ; $6150: $d0

	sub b                                            ; $6151: $90
	ldh a, [$50]                                     ; $6152: $f0 $50
	ld a, e                                          ; $6154: $7b
	cp $89                                           ; $6155: $fe $89
	add sp, $38                                      ; $6157: $e8 $38
	db $fc                                           ; $6159: $fc
	rra                                              ; $615a: $1f
	rst SubAFromDE                                          ; $615b: $df
	add e                                            ; $615c: $83
	rst JumpTable                                          ; $615d: $c7
	add b                                            ; $615e: $80
	ld b, c                                          ; $615f: $41
	ret nz                                           ; $6160: $c0

	ld h, e                                          ; $6161: $63
	ret nz                                           ; $6162: $c0

	or c                                             ; $6163: $b1
	ldh [$f8], a                                     ; $6164: $e0 $f8
	ldh a, [$ea]                                     ; $6166: $f0 $ea
	db $eb                                           ; $6168: $eb
	push hl                                          ; $6169: $e5
	or l                                             ; $616a: $b5
	sub l                                            ; $616b: $95
	sub l                                            ; $616c: $95
	sbc $15                                          ; $616d: $de $15

jr_067_616f:
	ld a, a                                          ; $616f: $7f
	jp z, $1f96                                      ; $6170: $ca $96 $1f

	rrca                                             ; $6173: $0f
	ld a, [bc]                                       ; $6174: $0a

jr_067_6175:
	ld a, [bc]                                       ; $6175: $0a
	rra                                              ; $6176: $1f
	rra                                              ; $6177: $1f
	rst $38                                          ; $6178: $ff
	rst $38                                          ; $6179: $ff
	ldh [$7b], a                                     ; $617a: $e0 $7b
	ret z                                            ; $617c: $c8

	sub l                                            ; $617d: $95
	rrca                                             ; $617e: $0f
	di                                               ; $617f: $f3
	inc sp                                           ; $6180: $33
	sbc $7e                                          ; $6181: $de $7e
	sub d                                            ; $6183: $92
	sub $4d                                          ; $6184: $d6 $4d
	inc e                                            ; $6186: $1c
	ccf                                              ; $6187: $3f
	cp c                                             ; $6188: $b9
	ld bc, $b75b                                     ; $6189: $01 $5b $b7
	rlca                                             ; $618c: $07
	rrca                                             ; $618d: $0f
	rrca                                             ; $618e: $0f
	rrca                                             ; $618f: $0f
	rra                                              ; $6190: $1f
	add b                                            ; $6191: $80
	ld bc, $061f                                     ; $6192: $01 $1f $06
	ccf                                              ; $6195: $3f
	inc c                                            ; $6196: $0c
	rst $38                                          ; $6197: $ff
	jr nc, @+$01                                     ; $6198: $30 $ff

	pop bc                                           ; $619a: $c1
	rst $38                                          ; $619b: $ff
	ld bc, $01ff                                     ; $619c: $01 $ff $01
	ld a, $03                                        ; $619f: $3e $03
	ld b, h                                          ; $61a1: $44
	ld h, e                                          ; $61a2: $63
	inc hl                                           ; $61a3: $23
	ld [hl], c                                       ; $61a4: $71
	jr nc, jr_067_61e0                               ; $61a5: $30 $39

	add hl, hl                                       ; $61a7: $29
	cp h                                             ; $61a8: $bc
	inc h                                            ; $61a9: $24
	cp [hl]                                          ; $61aa: $be
	ld [de], a                                       ; $61ab: $12
	cp a                                             ; $61ac: $bf
	sub c                                            ; $61ad: $91
	rst SubAFromDE                                          ; $61ae: $df
	sbc b                                            ; $61af: $98
	rst SubAFromDE                                          ; $61b0: $df
	adc a                                            ; $61b1: $8f
	adc $7f                                          ; $61b2: $ce $7f
	db $eb                                           ; $61b4: $eb
	ccf                                              ; $61b5: $3f
	or $1f                                           ; $61b6: $f6 $1f
	ld a, [$f7df]                                    ; $61b8: $fa $df $f7
	sbc a                                            ; $61bb: $9f
	ld [hl], e                                       ; $61bc: $73
	rra                                              ; $61bd: $1f
	ldh a, [c]                                       ; $61be: $f2

Jump_067_61bf:
	rra                                              ; $61bf: $1f
	ldh a, [c]                                       ; $61c0: $f2
	ld e, $6f                                        ; $61c1: $1e $6f
	cp $85                                           ; $61c3: $fe $85
	db $f4                                           ; $61c5: $f4
	inc e                                            ; $61c6: $1c
	db $f4                                           ; $61c7: $f4
	dec a                                            ; $61c8: $3d
	db $e4                                           ; $61c9: $e4
	dec a                                            ; $61ca: $3d
	ldh [rBCPD], a                                   ; $61cb: $e0 $69
	pop bc                                           ; $61cd: $c1
	jp hl                                            ; $61ce: $e9


	pop bc                                           ; $61cf: $c1
	ld l, e                                          ; $61d0: $6b
	pop bc                                           ; $61d1: $c1
	ld l, e                                          ; $61d2: $6b
	add e                                            ; $61d3: $83
	res 0, d                                         ; $61d4: $cb $82
	db $d3                                           ; $61d6: $d3
	ld [bc], a                                       ; $61d7: $02
	sub a                                            ; $61d8: $97
	ld [bc], a                                       ; $61d9: $02
	and a                                            ; $61da: $a7
	dec b                                            ; $61db: $05
	xor a                                            ; $61dc: $af
	dec b                                            ; $61dd: $05
	cpl                                              ; $61de: $2f
	inc bc                                           ; $61df: $03

jr_067_61e0:
	ld h, b                                          ; $61e0: $60
	ld c, a                                          ; $61e1: $4f
	ld h, b                                          ; $61e2: $60
	sbc b                                            ; $61e3: $98
	ld a, [bc]                                       ; $61e4: $0a
	ld [$7f7f], sp                                   ; $61e5: $08 $7f $7f
	rst $38                                          ; $61e8: $ff
	rst $38                                          ; $61e9: $ff
	add b                                            ; $61ea: $80
	ld l, a                                          ; $61eb: $6f
	ld e, [hl]                                       ; $61ec: $5e
	sbc e                                            ; $61ed: $9b
	pop af                                           ; $61ee: $f1
	ld a, l                                          ; $61ef: $7d
	ld c, [hl]                                       ; $61f0: $4e
	rra                                              ; $61f1: $1f
	inc bc                                           ; $61f2: $03
	ld h, b                                          ; $61f3: $60
	cpl                                              ; $61f4: $2f
	ld h, b                                          ; $61f5: $60
	sbc d                                            ; $61f6: $9a
	rra                                              ; $61f7: $1f
	rst FarCall                                          ; $61f8: $f7
	rra                                              ; $61f9: $1f
	di                                               ; $61fa: $f3
	sbc a                                            ; $61fb: $9f
	ld [hl], a                                       ; $61fc: $77
	ld h, b                                          ; $61fd: $60
	dec sp                                           ; $61fe: $3b
	add b                                            ; $61ff: $80
	sbc d                                            ; $6200: $9a
	inc e                                            ; $6201: $1c
	call c, $c783                                    ; $6202: $dc $83 $c7
	add e                                            ; $6205: $83
	inc hl                                           ; $6206: $23
	add b                                            ; $6207: $80
	rst SubAFromDE                                          ; $6208: $df
	rrca                                             ; $6209: $0f
	rst SubAFromDE                                          ; $620a: $df
	rst $38                                          ; $620b: $ff
	sbc [hl]                                         ; $620c: $9e
	ldh a, [$72]                                     ; $620d: $f0 $72
	and h                                            ; $620f: $a4
	sbc d                                            ; $6210: $9a
	rlca                                             ; $6211: $07
	pop hl                                           ; $6212: $e1
	ld [hl], a                                       ; $6213: $77
	ld a, a                                          ; $6214: $7f
	ld e, $03                                        ; $6215: $1e $03
	add b                                            ; $6217: $80
	inc bc                                           ; $6218: $03
	add b                                            ; $6219: $80
	inc bc                                           ; $621a: $03
	add b                                            ; $621b: $80
	ld d, e                                          ; $621c: $53
	add b                                            ; $621d: $80
	sbc h                                            ; $621e: $9c
	rrca                                             ; $621f: $0f
	ld [$dd00], sp                                   ; $6220: $08 $00 $dd
	rst $38                                          ; $6223: $ff
	cp [hl]                                          ; $6224: $be
	rst $38                                          ; $6225: $ff
	rst $38                                          ; $6226: $ff
	rst $38                                          ; $6227: $ff
	sbc h                                            ; $6228: $9c
	inc bc                                           ; $6229: $03
	ld a, a                                          ; $622a: $7f
	ld a, a                                          ; $622b: $7f
	inc bc                                           ; $622c: $03
	add b                                            ; $622d: $80
	rra                                              ; $622e: $1f
	add b                                            ; $622f: $80
	ld a, a                                          ; $6230: $7f
	add d                                            ; $6231: $82
	adc h                                            ; $6232: $8c
	rst SubAFromDE                                          ; $6233: $df
	ldh a, [c]                                       ; $6234: $f2
	ld e, $fc                                        ; $6235: $1e $fc

jr_067_6237:
	add b                                            ; $6237: $80
	db $fc                                           ; $6238: $fc
	jr nz, jr_067_6237                               ; $6239: $20 $fc

	ld b, b                                          ; $623b: $40
	ld a, h                                          ; $623c: $7c
	jr nz, jr_067_6257                               ; $623d: $20 $18

	nop                                              ; $623f: $00
	inc bc                                           ; $6240: $03
	ld [bc], a                                       ; $6241: $02
	ld [hl], $1c                                     ; $6242: $36 $1c
	inc d                                            ; $6244: $14
	nop                                              ; $6245: $00
	cp a                                             ; $6246: $bf
	inc c                                            ; $6247: $0c
	nop                                              ; $6248: $00
	rst SubAFromDE                                          ; $6249: $df
	add b                                            ; $624a: $80
	rst SubAFromDE                                          ; $624b: $df
	ret nz                                           ; $624c: $c0

	sub a                                            ; $624d: $97
	db $d3                                           ; $624e: $d3
	ldh [$3f], a                                     ; $624f: $e0 $3f
	dec de                                           ; $6251: $1b
	rrca                                             ; $6252: $0f
	ld b, $05                                        ; $6253: $06 $05
	inc bc                                           ; $6255: $03
	ld e, a                                          ; $6256: $5f

jr_067_6257:
	ldh [$97], a                                     ; $6257: $e0 $97
	rlca                                             ; $6259: $07
	ld [bc], a                                       ; $625a: $02
	ld [hl+], a                                      ; $625b: $22
	ld [hl], $1e                                     ; $625c: $36 $1e
	inc e                                            ; $625e: $1c
	inc b                                            ; $625f: $04
	ld [$e01f], sp                                   ; $6260: $08 $1f $e0
	sbc d                                            ; $6263: $9a
	inc hl                                           ; $6264: $23
	ld [hl], $3e                                     ; $6265: $36 $3e
	inc e                                            ; $6267: $1c
	inc d                                            ; $6268: $14
	rrca                                             ; $6269: $0f
	ldh [$df], a                                     ; $626a: $e0 $df
	ld a, $9c                                        ; $626c: $3e $9c
	inc e                                            ; $626e: $1c
	inc c                                            ; $626f: $0c
	jr jr_067_62c9                                   ; $6270: $18 $57

	ldh [$a2], a                                     ; $6272: $e0 $a2
	ld bc, $a096                                     ; $6274: $01 $96 $a0
	ld c, h                                          ; $6277: $4c
	and h                                            ; $6278: $a4
	ld c, b                                          ; $6279: $48
	xor l                                            ; $627a: $ad
	ld c, b                                          ; $627b: $48
	db $ed                                           ; $627c: $ed
	ld c, b                                          ; $627d: $48
	db $fd                                           ; $627e: $fd
	ld a, e                                          ; $627f: $7b
	cp $89                                           ; $6280: $fe $89
	rst SubAFromDE                                          ; $6282: $df
	ld l, b                                          ; $6283: $68
	ei                                               ; $6284: $fb
	xor h                                            ; $6285: $ac
	rst $38                                          ; $6286: $ff
	and h                                            ; $6287: $a4
	cp a                                             ; $6288: $bf
	db $e4                                           ; $6289: $e4
	ld e, l                                          ; $628a: $5d
	halt                                             ; $628b: $76
	ld e, a                                          ; $628c: $5f
	ld [hl], d                                       ; $628d: $72
	ld l, $3b                                        ; $628e: $2e $3b
	dec de                                           ; $6290: $1b
	dec e                                            ; $6291: $1d
	dec c                                            ; $6292: $0d
	ld c, $06                                        ; $6293: $0e $06
	rlca                                             ; $6295: $07
	ld bc, $eb01                                     ; $6296: $01 $01 $eb
	rst SubAFromDE                                          ; $6299: $df
	ld bc, $0e8c                                     ; $629a: $01 $8c $0e
	rrca                                             ; $629d: $0f
	scf                                              ; $629e: $37
	jr c, @+$61                                      ; $629f: $38 $5f

	ld h, b                                          ; $62a1: $60
	adc b                                            ; $62a2: $88
	ld c, h                                          ; $62a3: $4c
	ld c, l                                          ; $62a4: $4d
	sbc b                                            ; $62a5: $98
	ld d, b                                          ; $62a6: $50
	sbc c                                            ; $62a7: $99
	ld e, d                                          ; $62a8: $5a
	sub c                                            ; $62a9: $91
	ld e, d                                          ; $62aa: $5a
	sub c                                            ; $62ab: $91
	ld e, e                                          ; $62ac: $5b
	sub c                                            ; $62ad: $91
	rst $38                                          ; $62ae: $ff
	ld a, e                                          ; $62af: $7b
	cp $7f                                           ; $62b0: $fe $7f
	db $fd                                           ; $62b2: $fd
	sub [hl]                                         ; $62b3: $96
	adc c                                            ; $62b4: $89
	rst $38                                          ; $62b5: $ff
	ld c, b                                          ; $62b6: $48
	rst $38                                          ; $62b7: $ff
	ld b, h                                          ; $62b8: $44
	rst $38                                          ; $62b9: $ff
	inc h                                            ; $62ba: $24
	rst $38                                          ; $62bb: $ff
	ld [hl+], a                                      ; $62bc: $22
	ld a, e                                          ; $62bd: $7b
	pop af                                           ; $62be: $f1
	add l                                            ; $62bf: $85
	ld c, h                                          ; $62c0: $4c
	rst $38                                          ; $62c1: $ff
	rst SubAFromBC                                          ; $62c2: $e7
	rst $38                                          ; $62c3: $ff
	ld e, c                                          ; $62c4: $59
	ld a, a                                          ; $62c5: $7f
	ld e, a                                          ; $62c6: $5f
	ld [hl], a                                       ; $62c7: $77
	ld e, a                                          ; $62c8: $5f

jr_067_62c9:
	ld [hl], b                                       ; $62c9: $70
	ld e, a                                          ; $62ca: $5f
	ld [hl], b                                       ; $62cb: $70
	cpl                                              ; $62cc: $2f
	jr c, jr_067_630e                                ; $62cd: $38 $3f

	jr z, jr_067_6308                                ; $62cf: $28 $37

	inc l                                            ; $62d1: $2c
	rra                                              ; $62d2: $1f
	ld d, $1b                                        ; $62d3: $16 $1b
	rla                                              ; $62d5: $17
	dec d                                            ; $62d6: $15
	dec de                                           ; $62d7: $1b
	inc c                                            ; $62d8: $0c
	dec bc                                           ; $62d9: $0b
	sbc $ff                                          ; $62da: $de $ff
	cp [hl]                                          ; $62dc: $be
	rst $38                                          ; $62dd: $ff
	rst $38                                          ; $62de: $ff
	ld a, [hl+]                                      ; $62df: $2a
	sub e                                            ; $62e0: $93
	rst FarCall                                          ; $62e1: $f7
	ld e, a                                          ; $62e2: $5f
	db $ed                                           ; $62e3: $ed
	ld l, h                                          ; $62e4: $6c
	ret c                                            ; $62e5: $d8

	cp b                                             ; $62e6: $b8
	ret nc                                           ; $62e7: $d0

	or b                                             ; $62e8: $b0
	ret nc                                           ; $62e9: $d0

	sub b                                            ; $62ea: $90
	ldh a, [$50]                                     ; $62eb: $f0 $50
	ld a, e                                          ; $62ed: $7b
	cp $89                                           ; $62ee: $fe $89
	add sp, $38                                      ; $62f0: $e8 $38
	db $fc                                           ; $62f2: $fc
	dec e                                            ; $62f3: $1d
	db $dd                                           ; $62f4: $dd
	add e                                            ; $62f5: $83
	rst JumpTable                                          ; $62f6: $c7
	add d                                            ; $62f7: $82
	ld b, c                                          ; $62f8: $41
	ret nz                                           ; $62f9: $c0

	ld h, e                                          ; $62fa: $63
	ret nz                                           ; $62fb: $c0

	or c                                             ; $62fc: $b1
	ldh [$f8], a                                     ; $62fd: $e0 $f8
	ldh a, [$ea]                                     ; $62ff: $f0 $ea
	db $eb                                           ; $6301: $eb
	push hl                                          ; $6302: $e5
	or l                                             ; $6303: $b5
	sub l                                            ; $6304: $95
	sub l                                            ; $6305: $95
	sbc $15                                          ; $6306: $de $15

jr_067_6308:
	ld a, a                                          ; $6308: $7f
	jp z, $1f89                                      ; $6309: $ca $89 $1f

	rrca                                             ; $630c: $0f
	ld a, [bc]                                       ; $630d: $0a

jr_067_630e:
	ld a, [bc]                                       ; $630e: $0a
	rra                                              ; $630f: $1f
	ccf                                              ; $6310: $3f
	rst $38                                          ; $6311: $ff
	rst $38                                          ; $6312: $ff
	ret nz                                           ; $6313: $c0

	rst $38                                          ; $6314: $ff
	rrca                                             ; $6315: $0f
	di                                               ; $6316: $f3
	inc sp                                           ; $6317: $33
	ldh a, [c]                                       ; $6318: $f2
	ld [hl], a                                       ; $6319: $77
	sbc $fe                                          ; $631a: $de $fe
	sub d                                            ; $631c: $92
	sub $4d                                          ; $631d: $d6 $4d
	inc e                                            ; $631f: $1c
	ccf                                              ; $6320: $3f
	cp c                                             ; $6321: $b9
	ld bc, $0703                                     ; $6322: $01 $03 $07
	rlca                                             ; $6325: $07
	rrca                                             ; $6326: $0f
	rrca                                             ; $6327: $0f
	rrca                                             ; $6328: $0f
	rra                                              ; $6329: $1f
	add b                                            ; $632a: $80
	ld bc, $061f                                     ; $632b: $01 $1f $06
	ccf                                              ; $632e: $3f
	inc c                                            ; $632f: $0c
	rst $38                                          ; $6330: $ff
	jr nc, @+$01                                     ; $6331: $30 $ff

	pop bc                                           ; $6333: $c1
	rst $38                                          ; $6334: $ff
	ld bc, $01ff                                     ; $6335: $01 $ff $01
	ld a, $03                                        ; $6338: $3e $03
	ld b, h                                          ; $633a: $44
	ld h, e                                          ; $633b: $63
	inc hl                                           ; $633c: $23
	ld [hl], c                                       ; $633d: $71
	jr nc, jr_067_6379                               ; $633e: $30 $39

	add hl, hl                                       ; $6340: $29
	cp h                                             ; $6341: $bc
	inc h                                            ; $6342: $24
	cp [hl]                                          ; $6343: $be
	ld [de], a                                       ; $6344: $12
	cp a                                             ; $6345: $bf
	sub c                                            ; $6346: $91
	rst SubAFromDE                                          ; $6347: $df
	sbc b                                            ; $6348: $98
	rst SubAFromDE                                          ; $6349: $df
	adc a                                            ; $634a: $8f
	adc $7f                                          ; $634b: $ce $7f
	db $eb                                           ; $634d: $eb
	ccf                                              ; $634e: $3f
	or $1f                                           ; $634f: $f6 $1f
	ld a, [$f7df]                                    ; $6351: $fa $df $f7
	sbc a                                            ; $6354: $9f
	ld [hl], e                                       ; $6355: $73
	rra                                              ; $6356: $1f
	ldh a, [c]                                       ; $6357: $f2
	rra                                              ; $6358: $1f
	ldh a, [c]                                       ; $6359: $f2
	ld e, $6f                                        ; $635a: $1e $6f
	cp $85                                           ; $635c: $fe $85
	db $f4                                           ; $635e: $f4
	inc e                                            ; $635f: $1c
	db $f4                                           ; $6360: $f4
	dec a                                            ; $6361: $3d
	db $e4                                           ; $6362: $e4
	dec a                                            ; $6363: $3d
	ldh [rBCPD], a                                   ; $6364: $e0 $69
	pop bc                                           ; $6366: $c1
	jp hl                                            ; $6367: $e9


	pop bc                                           ; $6368: $c1
	ld l, e                                          ; $6369: $6b
	pop bc                                           ; $636a: $c1
	ld l, e                                          ; $636b: $6b
	add e                                            ; $636c: $83
	res 0, d                                         ; $636d: $cb $82
	db $d3                                           ; $636f: $d3
	ld [bc], a                                       ; $6370: $02
	sub a                                            ; $6371: $97
	ld [bc], a                                       ; $6372: $02
	and a                                            ; $6373: $a7
	dec b                                            ; $6374: $05
	xor a                                            ; $6375: $af
	dec b                                            ; $6376: $05
	cpl                                              ; $6377: $2f
	dec sp                                           ; $6378: $3b

jr_067_6379:
	ld h, b                                          ; $6379: $60
	sbc d                                            ; $637a: $9a
	inc e                                            ; $637b: $1c
	call c, $c783                                    ; $637c: $dc $83 $c7
	add e                                            ; $637f: $83
	dec hl                                           ; $6380: $2b
	ld h, b                                          ; $6381: $60
	sbc h                                            ; $6382: $9c
	ld a, [bc]                                       ; $6383: $0a
	ld [$733f], sp                                   ; $6384: $08 $3f $73
	ld e, [hl]                                       ; $6387: $5e
	ld a, a                                          ; $6388: $7f
	ld h, $7b                                        ; $6389: $26 $7b
	ld e, h                                          ; $638b: $5c
	sbc e                                            ; $638c: $9b
	pop af                                           ; $638d: $f1
	ld a, l                                          ; $638e: $7d
	ld c, [hl]                                       ; $638f: $4e
	rra                                              ; $6390: $1f
	inc bc                                           ; $6391: $03
	ld h, b                                          ; $6392: $60
	cpl                                              ; $6393: $2f
	ld h, b                                          ; $6394: $60
	sbc c                                            ; $6395: $99
	rra                                              ; $6396: $1f
	rst FarCall                                          ; $6397: $f7
	rst SubAFromDE                                          ; $6398: $df
	di                                               ; $6399: $f3
	sbc a                                            ; $639a: $9f
	ld [hl], d                                       ; $639b: $72
	ld a, e                                          ; $639c: $7b
	ld h, b                                          ; $639d: $60
	inc sp                                           ; $639e: $33
	add b                                            ; $639f: $80
	sbc d                                            ; $63a0: $9a
	add b                                            ; $63a1: $80
	call nz, Call_067_4383                           ; $63a2: $c4 $83 $43
	jp $802b                                         ; $63a5: $c3 $2b $80


	rst SubAFromDE                                          ; $63a8: $df
	rrca                                             ; $63a9: $0f
	rst SubAFromDE                                          ; $63aa: $df
	ccf                                              ; $63ab: $3f
	sbc [hl]                                         ; $63ac: $9e
	ldh a, [$73]                                     ; $63ad: $f0 $73
	ld a, [hl]                                       ; $63af: $7e
	sbc d                                            ; $63b0: $9a
	rlca                                             ; $63b1: $07
	pop hl                                           ; $63b2: $e1
	ld [hl], a                                       ; $63b3: $77
	ld a, a                                          ; $63b4: $7f
	ld e, $03                                        ; $63b5: $1e $03
	add b                                            ; $63b7: $80
	daa                                              ; $63b8: $27
	add b                                            ; $63b9: $80
	sbc h                                            ; $63ba: $9c
	rra                                              ; $63bb: $1f
	di                                               ; $63bc: $f3
	rst SubAFromDE                                          ; $63bd: $df
	halt                                             ; $63be: $76
	ldh [$03], a                                     ; $63bf: $e0 $03
	add b                                            ; $63c1: $80
	ld c, e                                          ; $63c2: $4b
	add b                                            ; $63c3: $80
	sbc h                                            ; $63c4: $9c
	rrca                                             ; $63c5: $0f
	ld [$6600], sp                                   ; $63c6: $08 $00 $66
	cp $7f                                           ; $63c9: $fe $7f
	cp $9c                                           ; $63cb: $fe $9c
	inc bc                                           ; $63cd: $03
	ld a, a                                          ; $63ce: $7f
	ld a, a                                          ; $63cf: $7f
	inc bc                                           ; $63d0: $03
	add b                                            ; $63d1: $80
	rra                                              ; $63d2: $1f
	add b                                            ; $63d3: $80
	ld a, a                                          ; $63d4: $7f
	add d                                            ; $63d5: $82
	ld a, a                                          ; $63d6: $7f
	ld a, [hl]                                       ; $63d7: $7e
	adc [hl]                                         ; $63d8: $8e
	ld e, $fc                                        ; $63d9: $1e $fc

jr_067_63db:
	add b                                            ; $63db: $80
	db $fc                                           ; $63dc: $fc
	jr nz, jr_067_63db                               ; $63dd: $20 $fc

	ld b, b                                          ; $63df: $40
	ld a, h                                          ; $63e0: $7c
	jr nz, jr_067_63fb                               ; $63e1: $20 $18

	nop                                              ; $63e3: $00
	ld h, a                                          ; $63e4: $67
	ld bc, $3623                                     ; $63e5: $01 $23 $36
	ld e, $0c                                        ; $63e8: $1e $0c
	db $fd                                           ; $63ea: $fd
	rst SubAFromDE                                          ; $63eb: $df
	add b                                            ; $63ec: $80
	rst SubAFromDE                                          ; $63ed: $df
	ret nz                                           ; $63ee: $c0

	sub a                                            ; $63ef: $97
	db $d3                                           ; $63f0: $d3
	ldh [$3f], a                                     ; $63f1: $e0 $3f
	dec de                                           ; $63f3: $1b
	rrca                                             ; $63f4: $0f
	ld b, $05                                        ; $63f5: $06 $05
	inc bc                                           ; $63f7: $03
	ld e, a                                          ; $63f8: $5f
	ldh [$98], a                                     ; $63f9: $e0 $98

jr_067_63fb:
	daa                                              ; $63fb: $27
	ld bc, $3723                                     ; $63fc: $01 $23 $37
	rra                                              ; $63ff: $1f
	ld e, $02                                        ; $6400: $1e $02
	ld a, e                                          ; $6402: $7b
	sbc $1f                                          ; $6403: $de $1f
	ldh [$9a], a                                     ; $6405: $e0 $9a
	ccf                                              ; $6407: $3f
	rra                                              ; $6408: $1f
	rra                                              ; $6409: $1f
	ld c, $0e                                        ; $640a: $0e $0e
	inc de                                           ; $640c: $13
	ldh [$9b], a                                     ; $640d: $e0 $9b
	ld c, $1f                                        ; $640f: $0e $1f
	inc b                                            ; $6411: $04
	ld c, $57                                        ; $6412: $0e $57
	ldh [$a7], a                                     ; $6414: $e0 $a7
	ld bc, $a096                                     ; $6416: $01 $96 $a0
	ld c, h                                          ; $6419: $4c
	and h                                            ; $641a: $a4
	ld c, b                                          ; $641b: $48
	xor l                                            ; $641c: $ad
	ld c, b                                          ; $641d: $48
	db $ed                                           ; $641e: $ed
	ld c, b                                          ; $641f: $48
	db $fd                                           ; $6420: $fd
	ld a, e                                          ; $6421: $7b
	cp $89                                           ; $6422: $fe $89
	rst SubAFromDE                                          ; $6424: $df
	ld l, b                                          ; $6425: $68
	ei                                               ; $6426: $fb
	xor h                                            ; $6427: $ac
	rst $38                                          ; $6428: $ff
	and h                                            ; $6429: $a4
	cp a                                             ; $642a: $bf
	db $e4                                           ; $642b: $e4
	ld e, l                                          ; $642c: $5d
	halt                                             ; $642d: $76
	ld e, a                                          ; $642e: $5f
	ld [hl], d                                       ; $642f: $72
	ld l, $3b                                        ; $6430: $2e $3b
	dec de                                           ; $6432: $1b
	dec e                                            ; $6433: $1d
	dec c                                            ; $6434: $0d
	ld c, $06                                        ; $6435: $0e $06
	rlca                                             ; $6437: $07
	ld bc, $eb01                                     ; $6438: $01 $01 $eb
	rst SubAFromDE                                          ; $643b: $df
	ld bc, $0e8c                                     ; $643c: $01 $8c $0e
	rrca                                             ; $643f: $0f
	scf                                              ; $6440: $37
	jr c, @+$61                                      ; $6441: $38 $5f

	ld h, b                                          ; $6443: $60
	adc b                                            ; $6444: $88
	ld c, h                                          ; $6445: $4c
	ld c, l                                          ; $6446: $4d
	sbc b                                            ; $6447: $98
	ld d, b                                          ; $6448: $50
	sbc c                                            ; $6449: $99
	ld e, d                                          ; $644a: $5a
	sub c                                            ; $644b: $91
	ld e, d                                          ; $644c: $5a
	sub c                                            ; $644d: $91
	ld e, e                                          ; $644e: $5b
	sub c                                            ; $644f: $91
	rst $38                                          ; $6450: $ff
	ld a, e                                          ; $6451: $7b
	cp $7f                                           ; $6452: $fe $7f
	db $fd                                           ; $6454: $fd
	sub [hl]                                         ; $6455: $96
	adc c                                            ; $6456: $89
	rst $38                                          ; $6457: $ff
	ld c, b                                          ; $6458: $48
	rst $38                                          ; $6459: $ff
	ld b, h                                          ; $645a: $44
	rst $38                                          ; $645b: $ff
	inc h                                            ; $645c: $24
	rst $38                                          ; $645d: $ff
	ld [hl+], a                                      ; $645e: $22
	ld a, e                                          ; $645f: $7b
	pop af                                           ; $6460: $f1
	add l                                            ; $6461: $85
	ld c, h                                          ; $6462: $4c
	rst $38                                          ; $6463: $ff
	rst SubAFromBC                                          ; $6464: $e7
	rst $38                                          ; $6465: $ff
	ld e, c                                          ; $6466: $59
	ld a, a                                          ; $6467: $7f
	ld e, a                                          ; $6468: $5f
	ld [hl], a                                       ; $6469: $77
	ld e, a                                          ; $646a: $5f
	ld [hl], b                                       ; $646b: $70
	ld e, a                                          ; $646c: $5f
	ld [hl], b                                       ; $646d: $70
	cpl                                              ; $646e: $2f
	jr c, @+$41                                      ; $646f: $38 $3f

	jr z, jr_067_64aa                                ; $6471: $28 $37

	inc l                                            ; $6473: $2c
	rra                                              ; $6474: $1f
	ld d, $1b                                        ; $6475: $16 $1b
	rla                                              ; $6477: $17
	dec d                                            ; $6478: $15
	dec de                                           ; $6479: $1b
	inc c                                            ; $647a: $0c
	dec bc                                           ; $647b: $0b
	sbc $ff                                          ; $647c: $de $ff
	cp [hl]                                          ; $647e: $be
	rst $38                                          ; $647f: $ff
	rst $38                                          ; $6480: $ff
	ld a, [hl+]                                      ; $6481: $2a
	sub e                                            ; $6482: $93
	rst FarCall                                          ; $6483: $f7
	ld e, a                                          ; $6484: $5f
	db $ed                                           ; $6485: $ed
	ld l, h                                          ; $6486: $6c
	ret c                                            ; $6487: $d8

	cp b                                             ; $6488: $b8
	ret nc                                           ; $6489: $d0

	or b                                             ; $648a: $b0
	ret nc                                           ; $648b: $d0

	sub b                                            ; $648c: $90
	ldh a, [$50]                                     ; $648d: $f0 $50
	ld a, e                                          ; $648f: $7b
	cp $89                                           ; $6490: $fe $89
	add sp, $38                                      ; $6492: $e8 $38
	db $fc                                           ; $6494: $fc
	inc e                                            ; $6495: $1c
	call c, $c783                                    ; $6496: $dc $83 $c7
	add e                                            ; $6499: $83
	ld b, c                                          ; $649a: $41
	ret nz                                           ; $649b: $c0

	ld h, e                                          ; $649c: $63
	ret nz                                           ; $649d: $c0

	or c                                             ; $649e: $b1
	ldh [$f8], a                                     ; $649f: $e0 $f8
	ldh a, [$ea]                                     ; $64a1: $f0 $ea
	db $eb                                           ; $64a3: $eb
	push hl                                          ; $64a4: $e5
	or l                                             ; $64a5: $b5
	sub l                                            ; $64a6: $95
	sub l                                            ; $64a7: $95
	sbc $15                                          ; $64a8: $de $15

jr_067_64aa:
	ld a, a                                          ; $64aa: $7f
	jp z, $1f9d                                      ; $64ab: $ca $9d $1f

	rrca                                             ; $64ae: $0f
	sbc $0a                                          ; $64af: $de $0a
	adc [hl]                                         ; $64b1: $8e
	ld [$3f3f], sp                                   ; $64b2: $08 $3f $3f
	rst $38                                          ; $64b5: $ff
	rst $38                                          ; $64b6: $ff
	ret nz                                           ; $64b7: $c0

	rst $38                                          ; $64b8: $ff
	rrca                                             ; $64b9: $0f
	di                                               ; $64ba: $f3
	inc sp                                           ; $64bb: $33
	sbc $7e                                          ; $64bc: $de $7e
	sub d                                            ; $64be: $92
	sub $4d                                          ; $64bf: $d6 $4d
	inc e                                            ; $64c1: $1c
	ccf                                              ; $64c2: $3f
	cp c                                             ; $64c3: $b9
	ld bc, $0703                                     ; $64c4: $01 $03 $07
	rlca                                             ; $64c7: $07
	rrca                                             ; $64c8: $0f
	rrca                                             ; $64c9: $0f
	rrca                                             ; $64ca: $0f
	rra                                              ; $64cb: $1f
	add b                                            ; $64cc: $80
	ld bc, $061f                                     ; $64cd: $01 $1f $06
	ccf                                              ; $64d0: $3f
	inc c                                            ; $64d1: $0c
	rst $38                                          ; $64d2: $ff
	jr nc, @+$01                                     ; $64d3: $30 $ff

	pop bc                                           ; $64d5: $c1
	rst $38                                          ; $64d6: $ff
	ld bc, $01ff                                     ; $64d7: $01 $ff $01
	ld a, $03                                        ; $64da: $3e $03
	ld b, h                                          ; $64dc: $44
	ld h, e                                          ; $64dd: $63
	inc hl                                           ; $64de: $23
	ld [hl], c                                       ; $64df: $71
	jr nc, jr_067_651b                               ; $64e0: $30 $39

	add hl, hl                                       ; $64e2: $29
	cp h                                             ; $64e3: $bc
	inc h                                            ; $64e4: $24
	cp [hl]                                          ; $64e5: $be
	ld [de], a                                       ; $64e6: $12
	cp a                                             ; $64e7: $bf
	sub c                                            ; $64e8: $91
	rst SubAFromDE                                          ; $64e9: $df
	sbc b                                            ; $64ea: $98
	rst SubAFromDE                                          ; $64eb: $df
	adc a                                            ; $64ec: $8f
	adc $7f                                          ; $64ed: $ce $7f
	db $eb                                           ; $64ef: $eb
	ccf                                              ; $64f0: $3f
	or $1f                                           ; $64f1: $f6 $1f
	ld a, [$f7df]                                    ; $64f3: $fa $df $f7
	sbc a                                            ; $64f6: $9f
	ld [hl], e                                       ; $64f7: $73
	rra                                              ; $64f8: $1f
	ldh a, [c]                                       ; $64f9: $f2
	rra                                              ; $64fa: $1f
	ldh a, [c]                                       ; $64fb: $f2
	ld e, $6f                                        ; $64fc: $1e $6f
	cp $85                                           ; $64fe: $fe $85
	db $f4                                           ; $6500: $f4
	inc e                                            ; $6501: $1c
	db $f4                                           ; $6502: $f4
	dec a                                            ; $6503: $3d
	db $e4                                           ; $6504: $e4
	dec a                                            ; $6505: $3d
	ldh [rBCPD], a                                   ; $6506: $e0 $69
	pop bc                                           ; $6508: $c1
	jp hl                                            ; $6509: $e9


	pop bc                                           ; $650a: $c1
	ld l, e                                          ; $650b: $6b
	pop bc                                           ; $650c: $c1
	ld l, e                                          ; $650d: $6b
	add e                                            ; $650e: $83
	res 0, d                                         ; $650f: $cb $82
	db $d3                                           ; $6511: $d3
	ld [bc], a                                       ; $6512: $02
	sub a                                            ; $6513: $97
	ld [bc], a                                       ; $6514: $02
	and a                                            ; $6515: $a7
	dec b                                            ; $6516: $05
	xor a                                            ; $6517: $af
	dec b                                            ; $6518: $05
	cpl                                              ; $6519: $2f
	inc sp                                           ; $651a: $33

jr_067_651b:
	ld h, b                                          ; $651b: $60
	sbc d                                            ; $651c: $9a
	add c                                            ; $651d: $81
	push bc                                          ; $651e: $c5
	add e                                            ; $651f: $83
	ld b, e                                          ; $6520: $43
	jp nz, $602b                                     ; $6521: $c2 $2b $60

	rst SubAFromDE                                          ; $6524: $df
	rra                                              ; $6525: $1f
	rst SubAFromDE                                          ; $6526: $df
	ld a, a                                          ; $6527: $7f
	sbc h                                            ; $6528: $9c
	ldh [rIE], a                                     ; $6529: $e0 $ff
	add b                                            ; $652b: $80
	ld [hl], a                                       ; $652c: $77
	ld e, [hl]                                       ; $652d: $5e
	sbc e                                            ; $652e: $9b
	pop af                                           ; $652f: $f1
	ld a, l                                          ; $6530: $7d
	ld c, [hl]                                       ; $6531: $4e
	rra                                              ; $6532: $1f
	inc bc                                           ; $6533: $03
	ld h, b                                          ; $6534: $60
	cpl                                              ; $6535: $2f
	ld h, b                                          ; $6536: $60
	sbc c                                            ; $6537: $99
	rra                                              ; $6538: $1f
	rst FarCall                                          ; $6539: $f7
	rst SubAFromDE                                          ; $653a: $df
	di                                               ; $653b: $f3
	sbc a                                            ; $653c: $9f
	ld [hl], d                                       ; $653d: $72
	ld a, e                                          ; $653e: $7b
	ld h, b                                          ; $653f: $60
	inc sp                                           ; $6540: $33
	add b                                            ; $6541: $80
	sbc d                                            ; $6542: $9a
	add b                                            ; $6543: $80
	call nz, Call_067_4383                           ; $6544: $c4 $83 $43
	jp $802b                                         ; $6547: $c3 $2b $80


	rst SubAFromDE                                          ; $654a: $df
	rrca                                             ; $654b: $0f
	rst SubAFromDE                                          ; $654c: $df
	ccf                                              ; $654d: $3f
	sbc [hl]                                         ; $654e: $9e
	ldh a, [$7a]                                     ; $654f: $f0 $7a
	sbc $7e                                          ; $6551: $de $7e
	and h                                            ; $6553: $a4
	sbc d                                            ; $6554: $9a
	rlca                                             ; $6555: $07
	pop hl                                           ; $6556: $e1
	ld [hl], a                                       ; $6557: $77
	ld a, a                                          ; $6558: $7f
	ld e, $03                                        ; $6559: $1e $03
	add b                                            ; $655b: $80
	daa                                              ; $655c: $27
	add b                                            ; $655d: $80
	sbc h                                            ; $655e: $9c
	rra                                              ; $655f: $1f
	di                                               ; $6560: $f3
	rst SubAFromDE                                          ; $6561: $df
	halt                                             ; $6562: $76
	ldh [$03], a                                     ; $6563: $e0 $03
	add b                                            ; $6565: $80
	ld c, e                                          ; $6566: $4b
	add b                                            ; $6567: $80
	sbc h                                            ; $6568: $9c
	rrca                                             ; $6569: $0f
	ld [$6e00], sp                                   ; $656a: $08 $00 $6e
	ld e, [hl]                                       ; $656d: $5e
	cp a                                             ; $656e: $bf
	rst $38                                          ; $656f: $ff
	rst $38                                          ; $6570: $ff
	sbc h                                            ; $6571: $9c
	inc bc                                           ; $6572: $03
	ld a, a                                          ; $6573: $7f
	ld a, a                                          ; $6574: $7f
	inc bc                                           ; $6575: $03
	add b                                            ; $6576: $80
	rra                                              ; $6577: $1f
	add b                                            ; $6578: $80
	ld a, a                                          ; $6579: $7f
	add d                                            ; $657a: $82
	ld a, a                                          ; $657b: $7f
	ld a, [hl]                                       ; $657c: $7e
	adc [hl]                                         ; $657d: $8e
	ld e, $fc                                        ; $657e: $1e $fc

jr_067_6580:
	add b                                            ; $6580: $80
	db $fc                                           ; $6581: $fc
	jr nz, jr_067_6580                               ; $6582: $20 $fc

	ld b, b                                          ; $6584: $40
	ld a, h                                          ; $6585: $7c
	jr nz, jr_067_65a0                               ; $6586: $20 $18

	nop                                              ; $6588: $00
	inc bc                                           ; $6589: $03
	ld [bc], a                                       ; $658a: $02
	ld a, $14                                        ; $658b: $3e $14
	inc d                                            ; $658d: $14
	nop                                              ; $658e: $00
	cp a                                             ; $658f: $bf
	inc c                                            ; $6590: $0c
	nop                                              ; $6591: $00
	rst SubAFromDE                                          ; $6592: $df
	add b                                            ; $6593: $80
	rst SubAFromDE                                          ; $6594: $df
	ret nz                                           ; $6595: $c0

	sub a                                            ; $6596: $97
	db $d3                                           ; $6597: $d3
	ldh [$3f], a                                     ; $6598: $e0 $3f
	dec de                                           ; $659a: $1b
	rrca                                             ; $659b: $0f
	ld b, $05                                        ; $659c: $06 $05
	inc bc                                           ; $659e: $03
	ld e, a                                          ; $659f: $5f

jr_067_65a0:
	ldh [$97], a                                     ; $65a0: $e0 $97
	rlca                                             ; $65a2: $07
	ld [bc], a                                       ; $65a3: $02
	ld [hl+], a                                      ; $65a4: $22
	ld d, $1e                                        ; $65a5: $16 $1e
	inc c                                            ; $65a7: $0c
	inc b                                            ; $65a8: $04
	ld [$e01f], sp                                   ; $65a9: $08 $1f $e0
	sbc d                                            ; $65ac: $9a
	inc hl                                           ; $65ad: $23
	ld [hl], $3e                                     ; $65ae: $36 $3e
	inc e                                            ; $65b0: $1c
	inc d                                            ; $65b1: $14
	inc de                                           ; $65b2: $13
	ldh [$9a], a                                     ; $65b3: $e0 $9a
	ccf                                              ; $65b5: $3f
	ld e, $0e                                        ; $65b6: $1e $0e
	inc e                                            ; $65b8: $1c
	inc c                                            ; $65b9: $0c
	ld d, e                                          ; $65ba: $53
	ldh [$aa], a                                     ; $65bb: $e0 $aa
	ld bc, $a096                                     ; $65bd: $01 $96 $a0
	ld c, h                                          ; $65c0: $4c
	and h                                            ; $65c1: $a4
	ld c, b                                          ; $65c2: $48
	xor l                                            ; $65c3: $ad
	ld c, b                                          ; $65c4: $48
	db $ed                                           ; $65c5: $ed
	ld c, b                                          ; $65c6: $48
	db $fd                                           ; $65c7: $fd
	ld a, e                                          ; $65c8: $7b
	cp $89                                           ; $65c9: $fe $89
	rst SubAFromDE                                          ; $65cb: $df
	ld l, b                                          ; $65cc: $68
	ei                                               ; $65cd: $fb
	xor h                                            ; $65ce: $ac
	rst $38                                          ; $65cf: $ff
	and h                                            ; $65d0: $a4
	cp a                                             ; $65d1: $bf
	db $e4                                           ; $65d2: $e4
	ld e, l                                          ; $65d3: $5d
	halt                                             ; $65d4: $76
	ld e, a                                          ; $65d5: $5f
	ld [hl], d                                       ; $65d6: $72
	ld l, $3b                                        ; $65d7: $2e $3b
	dec de                                           ; $65d9: $1b
	dec e                                            ; $65da: $1d
	dec c                                            ; $65db: $0d
	ld c, $06                                        ; $65dc: $0e $06
	rlca                                             ; $65de: $07
	ld bc, $eb01                                     ; $65df: $01 $01 $eb
	rst SubAFromDE                                          ; $65e2: $df
	ld bc, $0e8c                                     ; $65e3: $01 $8c $0e
	rrca                                             ; $65e6: $0f
	scf                                              ; $65e7: $37
	jr c, @+$61                                      ; $65e8: $38 $5f

	ld h, b                                          ; $65ea: $60
	adc b                                            ; $65eb: $88
	ld c, h                                          ; $65ec: $4c
	ld c, l                                          ; $65ed: $4d
	sbc b                                            ; $65ee: $98
	ld d, b                                          ; $65ef: $50
	sbc c                                            ; $65f0: $99
	ld e, d                                          ; $65f1: $5a
	sub c                                            ; $65f2: $91
	ld e, d                                          ; $65f3: $5a
	sub c                                            ; $65f4: $91
	ld e, e                                          ; $65f5: $5b
	sub c                                            ; $65f6: $91
	rst $38                                          ; $65f7: $ff
	ld a, e                                          ; $65f8: $7b
	cp $7f                                           ; $65f9: $fe $7f
	db $fd                                           ; $65fb: $fd
	sub [hl]                                         ; $65fc: $96
	adc c                                            ; $65fd: $89
	rst $38                                          ; $65fe: $ff
	ld c, b                                          ; $65ff: $48
	rst $38                                          ; $6600: $ff
	ld b, h                                          ; $6601: $44
	rst $38                                          ; $6602: $ff
	inc h                                            ; $6603: $24
	rst $38                                          ; $6604: $ff
	ld [hl+], a                                      ; $6605: $22
	ld a, e                                          ; $6606: $7b
	pop af                                           ; $6607: $f1
	add l                                            ; $6608: $85
	ld c, h                                          ; $6609: $4c
	rst $38                                          ; $660a: $ff
	rst SubAFromBC                                          ; $660b: $e7
	rst $38                                          ; $660c: $ff
	ld e, c                                          ; $660d: $59
	ld a, a                                          ; $660e: $7f
	ld e, a                                          ; $660f: $5f
	ld [hl], a                                       ; $6610: $77
	ld e, a                                          ; $6611: $5f
	ld [hl], b                                       ; $6612: $70
	ld e, a                                          ; $6613: $5f
	ld [hl], b                                       ; $6614: $70
	cpl                                              ; $6615: $2f
	jr c, @+$41                                      ; $6616: $38 $3f

	jr z, jr_067_6651                                ; $6618: $28 $37

	inc l                                            ; $661a: $2c
	rra                                              ; $661b: $1f
	ld d, $1b                                        ; $661c: $16 $1b
	rla                                              ; $661e: $17
	dec d                                            ; $661f: $15
	dec de                                           ; $6620: $1b
	inc c                                            ; $6621: $0c
	dec bc                                           ; $6622: $0b
	sbc $ff                                          ; $6623: $de $ff
	cp [hl]                                          ; $6625: $be
	rst $38                                          ; $6626: $ff
	rst $38                                          ; $6627: $ff
	ld a, [hl+]                                      ; $6628: $2a
	sub e                                            ; $6629: $93
	rst FarCall                                          ; $662a: $f7
	ld e, a                                          ; $662b: $5f
	db $ed                                           ; $662c: $ed
	ld l, h                                          ; $662d: $6c
	ret c                                            ; $662e: $d8

	cp b                                             ; $662f: $b8
	ret nc                                           ; $6630: $d0

	or b                                             ; $6631: $b0
	ret nc                                           ; $6632: $d0

	sub b                                            ; $6633: $90
	ldh a, [$50]                                     ; $6634: $f0 $50
	ld a, e                                          ; $6636: $7b
	cp $89                                           ; $6637: $fe $89
	add sp, $38                                      ; $6639: $e8 $38
	db $fc                                           ; $663b: $fc
	inc e                                            ; $663c: $1c
	call c, $c581                                    ; $663d: $dc $81 $c5
	add e                                            ; $6640: $83
	ld b, e                                          ; $6641: $43
	jp nz, $c063                                     ; $6642: $c2 $63 $c0

	or c                                             ; $6645: $b1
	ldh [$f8], a                                     ; $6646: $e0 $f8
	ldh a, [$ea]                                     ; $6648: $f0 $ea
	db $eb                                           ; $664a: $eb
	push hl                                          ; $664b: $e5
	or l                                             ; $664c: $b5
	sub l                                            ; $664d: $95
	sub l                                            ; $664e: $95
	sbc $15                                          ; $664f: $de $15

jr_067_6651:
	ld a, a                                          ; $6651: $7f
	jp z, $1f9d                                      ; $6652: $ca $9d $1f

	rrca                                             ; $6655: $0f
	sbc $0a                                          ; $6656: $de $0a
	adc [hl]                                         ; $6658: $8e
	ld [$1f1f], sp                                   ; $6659: $08 $1f $1f
	ld a, a                                          ; $665c: $7f
	ld a, a                                          ; $665d: $7f
	ldh [rIE], a                                     ; $665e: $e0 $ff
	adc a                                            ; $6660: $8f
	di                                               ; $6661: $f3
	inc sp                                           ; $6662: $33
	sbc $7e                                          ; $6663: $de $7e
	sub d                                            ; $6665: $92
	sub $4d                                          ; $6666: $d6 $4d
	inc e                                            ; $6668: $1c
	ccf                                              ; $6669: $3f
	cp c                                             ; $666a: $b9
	ld bc, $0703                                     ; $666b: $01 $03 $07
	rlca                                             ; $666e: $07
	rrca                                             ; $666f: $0f
	rrca                                             ; $6670: $0f
	rrca                                             ; $6671: $0f
	rra                                              ; $6672: $1f
	add b                                            ; $6673: $80
	ld bc, $061f                                     ; $6674: $01 $1f $06
	ccf                                              ; $6677: $3f
	inc c                                            ; $6678: $0c
	rst $38                                          ; $6679: $ff
	jr nc, @+$01                                     ; $667a: $30 $ff

	pop bc                                           ; $667c: $c1
	rst $38                                          ; $667d: $ff
	ld bc, $01ff                                     ; $667e: $01 $ff $01
	ld a, $03                                        ; $6681: $3e $03
	ld b, h                                          ; $6683: $44
	ld h, e                                          ; $6684: $63
	inc hl                                           ; $6685: $23
	ld [hl], c                                       ; $6686: $71
	jr nc, jr_067_66c2                               ; $6687: $30 $39

	add hl, hl                                       ; $6689: $29
	cp h                                             ; $668a: $bc
	inc h                                            ; $668b: $24
	cp [hl]                                          ; $668c: $be
	ld [de], a                                       ; $668d: $12
	cp a                                             ; $668e: $bf
	sub c                                            ; $668f: $91
	rst SubAFromDE                                          ; $6690: $df
	sbc b                                            ; $6691: $98
	rst SubAFromDE                                          ; $6692: $df
	adc a                                            ; $6693: $8f
	adc $7f                                          ; $6694: $ce $7f
	db $eb                                           ; $6696: $eb
	ccf                                              ; $6697: $3f
	or $1f                                           ; $6698: $f6 $1f
	ld a, [$f7df]                                    ; $669a: $fa $df $f7
	sbc a                                            ; $669d: $9f
	ld [hl], e                                       ; $669e: $73
	rra                                              ; $669f: $1f
	ldh a, [c]                                       ; $66a0: $f2
	rra                                              ; $66a1: $1f
	ldh a, [c]                                       ; $66a2: $f2
	ld e, $6f                                        ; $66a3: $1e $6f
	cp $85                                           ; $66a5: $fe $85
	db $f4                                           ; $66a7: $f4
	inc e                                            ; $66a8: $1c
	db $f4                                           ; $66a9: $f4
	dec a                                            ; $66aa: $3d
	db $e4                                           ; $66ab: $e4
	dec a                                            ; $66ac: $3d
	ldh [rBCPD], a                                   ; $66ad: $e0 $69
	pop bc                                           ; $66af: $c1
	jp hl                                            ; $66b0: $e9


	pop bc                                           ; $66b1: $c1
	ld l, e                                          ; $66b2: $6b
	pop bc                                           ; $66b3: $c1
	ld l, e                                          ; $66b4: $6b
	add e                                            ; $66b5: $83
	res 0, d                                         ; $66b6: $cb $82
	db $d3                                           ; $66b8: $d3
	ld [bc], a                                       ; $66b9: $02
	sub a                                            ; $66ba: $97
	ld [bc], a                                       ; $66bb: $02
	and a                                            ; $66bc: $a7
	dec b                                            ; $66bd: $05
	xor a                                            ; $66be: $af
	dec b                                            ; $66bf: $05
	cpl                                              ; $66c0: $2f
	inc sp                                           ; $66c1: $33

jr_067_66c2:
	ld h, b                                          ; $66c2: $60
	sbc d                                            ; $66c3: $9a
	add b                                            ; $66c4: $80
	call nz, Call_067_4383                           ; $66c5: $c4 $83 $43
	jp $602b                                         ; $66c8: $c3 $2b $60


	rst SubAFromDE                                          ; $66cb: $df
	rrca                                             ; $66cc: $0f
	rst SubAFromDE                                          ; $66cd: $df
	ccf                                              ; $66ce: $3f
	sub h                                            ; $66cf: $94
	ldh a, [rIE]                                     ; $66d0: $f0 $ff
	ret nz                                           ; $66d2: $c0

	rst $38                                          ; $66d3: $ff
	rrca                                             ; $66d4: $0f
	di                                               ; $66d5: $f3
	inc sp                                           ; $66d6: $33
	pop af                                           ; $66d7: $f1
	ld a, l                                          ; $66d8: $7d
	ld c, [hl]                                       ; $66d9: $4e
	rra                                              ; $66da: $1f
	inc bc                                           ; $66db: $03
	ld h, b                                          ; $66dc: $60
	cpl                                              ; $66dd: $2f
	ld h, b                                          ; $66de: $60
	sbc c                                            ; $66df: $99
	rra                                              ; $66e0: $1f
	rst FarCall                                          ; $66e1: $f7
	rst SubAFromDE                                          ; $66e2: $df
	di                                               ; $66e3: $f3
	sbc a                                            ; $66e4: $9f
	ld [hl], d                                       ; $66e5: $72
	ld a, e                                          ; $66e6: $7b
	ld h, b                                          ; $66e7: $60
	dec hl                                           ; $66e8: $2b
	add b                                            ; $66e9: $80
	sbc d                                            ; $66ea: $9a
	add c                                            ; $66eb: $81
	ld b, c                                          ; $66ec: $41
	jp $c263                                         ; $66ed: $c3 $63 $c2


	cpl                                              ; $66f0: $2f
	add b                                            ; $66f1: $80
	sbc e                                            ; $66f2: $9b

Call_067_66f3:
	rlca                                             ; $66f3: $07
	rra                                              ; $66f4: $1f
	rra                                              ; $66f5: $1f
	ld a, b                                          ; $66f6: $78
	ld a, d                                          ; $66f7: $7a
	sbc $98                                          ; $66f8: $de $98
	add b                                            ; $66fa: $80
	rst $38                                          ; $66fb: $ff
	rlca                                             ; $66fc: $07
	pop hl                                           ; $66fd: $e1
	ld [hl], a                                       ; $66fe: $77
	ld a, a                                          ; $66ff: $7f
	ld e, $03                                        ; $6700: $1e $03
	add b                                            ; $6702: $80
	daa                                              ; $6703: $27
	add b                                            ; $6704: $80
	sbc h                                            ; $6705: $9c
	rra                                              ; $6706: $1f
	di                                               ; $6707: $f3
	sbc a                                            ; $6708: $9f
	halt                                             ; $6709: $76
	ldh [$2b], a                                     ; $670a: $e0 $2b
	add b                                            ; $670c: $80
	sbc d                                            ; $670d: $9a
	add b                                            ; $670e: $80
	ld b, b                                          ; $670f: $40
	jp $c363                                         ; $6710: $c3 $63 $c3


	scf                                              ; $6713: $37
	add b                                            ; $6714: $80
	sbc h                                            ; $6715: $9c
	rrca                                             ; $6716: $0f
	ld [$6600], sp                                   ; $6717: $08 $00 $66
	cp $7e                                           ; $671a: $fe $7e
	ld [hl+], a                                      ; $671c: $22
	sbc h                                            ; $671d: $9c
	inc bc                                           ; $671e: $03
	ld a, a                                          ; $671f: $7f
	ld a, a                                          ; $6720: $7f
	inc bc                                           ; $6721: $03
	add b                                            ; $6722: $80
	rra                                              ; $6723: $1f
	add b                                            ; $6724: $80
	ld a, a                                          ; $6725: $7f
	add d                                            ; $6726: $82
	sub e                                            ; $6727: $93
	rst SubAFromDE                                          ; $6728: $df
	ldh a, [c]                                       ; $6729: $f2
	ld e, $fc                                        ; $672a: $1e $fc

jr_067_672c:
	add b                                            ; $672c: $80
	db $fc                                           ; $672d: $fc
	jr nz, jr_067_672c                               ; $672e: $20 $fc

	ld b, b                                          ; $6730: $40
	ld a, h                                          ; $6731: $7c
	jr nz, @+$1a                                     ; $6732: $20 $18

	cp a                                             ; $6734: $bf
	nop                                              ; $6735: $00
	ld a, $df                                        ; $6736: $3e $df
	inc d                                            ; $6738: $14
	rst $38                                          ; $6739: $ff
	sub b                                            ; $673a: $90
	inc c                                            ; $673b: $0c

Call_067_673c:
	nop                                              ; $673c: $00
	nop                                              ; $673d: $00
	add b                                            ; $673e: $80
	add b                                            ; $673f: $80
	ret nz                                           ; $6740: $c0

	ret nz                                           ; $6741: $c0

	db $d3                                           ; $6742: $d3
	ldh [$3f], a                                     ; $6743: $e0 $3f
	dec de                                           ; $6745: $1b
	rrca                                             ; $6746: $0f
	ld b, $05                                        ; $6747: $06 $05
	inc bc                                           ; $6749: $03
	ld d, a                                          ; $674a: $57
	ldh [$99], a                                     ; $674b: $e0 $99
	ld [bc], a                                       ; $674d: $02
	ld d, $1e                                        ; $674e: $16 $1e
	inc e                                            ; $6750: $1c
	inc b                                            ; $6751: $04
	ld [$e01b], sp                                   ; $6752: $08 $1b $e0
	sbc b                                            ; $6755: $98
	inc d                                            ; $6756: $14
	rra                                              ; $6757: $1f
	ld e, $0e                                        ; $6758: $1e $0e
	ld e, $04                                        ; $675a: $1e $04
	ld [$e017], sp                                   ; $675c: $08 $17 $e0
	ld a, a                                          ; $675f: $7f
	cp $9d                                           ; $6760: $fe $9d
	ld e, $0c                                        ; $6762: $1e $0c
	ld d, a                                          ; $6764: $57
	ldh [$ac], a                                     ; $6765: $e0 $ac
	ld bc, $a096                                     ; $6767: $01 $96 $a0
	ld c, h                                          ; $676a: $4c
	and h                                            ; $676b: $a4
	ld c, b                                          ; $676c: $48
	xor l                                            ; $676d: $ad
	ld c, b                                          ; $676e: $48
	db $ed                                           ; $676f: $ed
	ld c, b                                          ; $6770: $48
	db $fd                                           ; $6771: $fd
	ld a, e                                          ; $6772: $7b
	cp $89                                           ; $6773: $fe $89
	rst SubAFromDE                                          ; $6775: $df
	ld l, b                                          ; $6776: $68
	ei                                               ; $6777: $fb
	xor h                                            ; $6778: $ac
	rst $38                                          ; $6779: $ff
	and h                                            ; $677a: $a4
	cp a                                             ; $677b: $bf
	db $e4                                           ; $677c: $e4
	ld e, l                                          ; $677d: $5d
	halt                                             ; $677e: $76
	ld e, a                                          ; $677f: $5f
	ld [hl], d                                       ; $6780: $72
	ld l, $3b                                        ; $6781: $2e $3b
	dec de                                           ; $6783: $1b
	dec e                                            ; $6784: $1d
	dec c                                            ; $6785: $0d
	ld c, $06                                        ; $6786: $0e $06
	rlca                                             ; $6788: $07
	ld bc, $eb01                                     ; $6789: $01 $01 $eb
	rst SubAFromDE                                          ; $678c: $df
	ld bc, $0e8c                                     ; $678d: $01 $8c $0e
	rrca                                             ; $6790: $0f
	scf                                              ; $6791: $37
	jr c, @+$61                                      ; $6792: $38 $5f

	ld h, b                                          ; $6794: $60
	adc b                                            ; $6795: $88
	ld c, h                                          ; $6796: $4c
	ld c, l                                          ; $6797: $4d
	sbc b                                            ; $6798: $98
	ld d, b                                          ; $6799: $50
	sbc c                                            ; $679a: $99
	ld e, d                                          ; $679b: $5a
	sub c                                            ; $679c: $91
	ld e, d                                          ; $679d: $5a
	sub c                                            ; $679e: $91
	ld e, e                                          ; $679f: $5b
	sub c                                            ; $67a0: $91
	rst $38                                          ; $67a1: $ff
	ld a, e                                          ; $67a2: $7b
	cp $7f                                           ; $67a3: $fe $7f
	db $fd                                           ; $67a5: $fd
	sub [hl]                                         ; $67a6: $96
	adc c                                            ; $67a7: $89
	rst $38                                          ; $67a8: $ff
	ld c, b                                          ; $67a9: $48
	rst $38                                          ; $67aa: $ff
	ld b, h                                          ; $67ab: $44
	rst $38                                          ; $67ac: $ff
	inc h                                            ; $67ad: $24
	rst $38                                          ; $67ae: $ff
	ld [hl+], a                                      ; $67af: $22
	ld a, e                                          ; $67b0: $7b
	pop af                                           ; $67b1: $f1
	add l                                            ; $67b2: $85
	ld c, h                                          ; $67b3: $4c
	rst $38                                          ; $67b4: $ff
	rst SubAFromBC                                          ; $67b5: $e7
	rst $38                                          ; $67b6: $ff
	ld e, c                                          ; $67b7: $59
	ld a, a                                          ; $67b8: $7f
	ld e, a                                          ; $67b9: $5f

Call_067_67ba:
	ld [hl], a                                       ; $67ba: $77
	ld e, a                                          ; $67bb: $5f
	ld [hl], b                                       ; $67bc: $70
	ld e, a                                          ; $67bd: $5f
	ld [hl], b                                       ; $67be: $70
	cpl                                              ; $67bf: $2f
	jr c, @+$41                                      ; $67c0: $38 $3f

	jr z, jr_067_67fb                                ; $67c2: $28 $37

	inc l                                            ; $67c4: $2c
	rra                                              ; $67c5: $1f
	ld d, $1b                                        ; $67c6: $16 $1b
	rla                                              ; $67c8: $17
	dec d                                            ; $67c9: $15
	dec de                                           ; $67ca: $1b
	inc c                                            ; $67cb: $0c
	dec bc                                           ; $67cc: $0b
	sbc $ff                                          ; $67cd: $de $ff
	cp [hl]                                          ; $67cf: $be
	rst $38                                          ; $67d0: $ff
	rst $38                                          ; $67d1: $ff
	ld a, [hl+]                                      ; $67d2: $2a
	sub e                                            ; $67d3: $93
	rst FarCall                                          ; $67d4: $f7
	ld e, a                                          ; $67d5: $5f
	db $ed                                           ; $67d6: $ed
	ld l, h                                          ; $67d7: $6c
	ret c                                            ; $67d8: $d8

	cp b                                             ; $67d9: $b8
	ret nc                                           ; $67da: $d0

	or b                                             ; $67db: $b0
	ret nc                                           ; $67dc: $d0

	sub b                                            ; $67dd: $90
	ldh a, [$50]                                     ; $67de: $f0 $50
	ld a, e                                          ; $67e0: $7b
	cp $89                                           ; $67e1: $fe $89
	add sp, $38                                      ; $67e3: $e8 $38
	db $fc                                           ; $67e5: $fc
	inc e                                            ; $67e6: $1c
	call c, $c480                                    ; $67e7: $dc $80 $c4
	add b                                            ; $67ea: $80
	ld b, b                                          ; $67eb: $40
	jp $c363                                         ; $67ec: $c3 $63 $c3


	or c                                             ; $67ef: $b1
	ldh [$f8], a                                     ; $67f0: $e0 $f8
	ldh a, [$ea]                                     ; $67f2: $f0 $ea
	db $eb                                           ; $67f4: $eb
	push hl                                          ; $67f5: $e5
	or l                                             ; $67f6: $b5
	sub l                                            ; $67f7: $95
	sub l                                            ; $67f8: $95
	sbc $15                                          ; $67f9: $de $15

jr_067_67fb:
	ld a, a                                          ; $67fb: $7f
	jp z, $1f9d                                      ; $67fc: $ca $9d $1f

	rrca                                             ; $67ff: $0f
	sbc $0a                                          ; $6800: $de $0a
	adc [hl]                                         ; $6802: $8e
	rrca                                             ; $6803: $0f
	ld [$0700], sp                                   ; $6804: $08 $00 $07
	rlca                                             ; $6807: $07
	rra                                              ; $6808: $1f
	rra                                              ; $6809: $1f
	ld a, b                                          ; $680a: $78
	ld a, a                                          ; $680b: $7f
	ldh [rIE], a                                     ; $680c: $e0 $ff
	add b                                            ; $680e: $80
	rst $38                                          ; $680f: $ff
	inc bc                                           ; $6810: $03
	ld a, a                                          ; $6811: $7f
	ld a, a                                          ; $6812: $7f
	ccf                                              ; $6813: $3f
	cp c                                             ; $6814: $b9
	ld bc, $0703                                     ; $6815: $01 $03 $07
	rlca                                             ; $6818: $07
	rrca                                             ; $6819: $0f
	rrca                                             ; $681a: $0f
	rrca                                             ; $681b: $0f
	rra                                              ; $681c: $1f
	add b                                            ; $681d: $80
	ld bc, $061f                                     ; $681e: $01 $1f $06
	ccf                                              ; $6821: $3f
	inc c                                            ; $6822: $0c
	rst $38                                          ; $6823: $ff
	jr nc, @+$01                                     ; $6824: $30 $ff

	pop bc                                           ; $6826: $c1
	rst $38                                          ; $6827: $ff
	ld bc, $01ff                                     ; $6828: $01 $ff $01
	ld a, $03                                        ; $682b: $3e $03
	ld b, h                                          ; $682d: $44
	ld h, e                                          ; $682e: $63
	inc hl                                           ; $682f: $23
	ld [hl], c                                       ; $6830: $71
	jr nc, jr_067_686c                               ; $6831: $30 $39

	add hl, hl                                       ; $6833: $29
	cp h                                             ; $6834: $bc
	inc h                                            ; $6835: $24
	cp [hl]                                          ; $6836: $be
	ld [de], a                                       ; $6837: $12
	cp a                                             ; $6838: $bf
	sub c                                            ; $6839: $91
	rst SubAFromDE                                          ; $683a: $df
	sbc b                                            ; $683b: $98
	rst SubAFromDE                                          ; $683c: $df
	adc a                                            ; $683d: $8f
	adc $7f                                          ; $683e: $ce $7f
	db $eb                                           ; $6840: $eb
	ccf                                              ; $6841: $3f
	or $1f                                           ; $6842: $f6 $1f
	ld a, [$f71f]                                    ; $6844: $fa $1f $f7
	rra                                              ; $6847: $1f
	di                                               ; $6848: $f3
	rra                                              ; $6849: $1f
	ldh a, [c]                                       ; $684a: $f2
	rst SubAFromDE                                          ; $684b: $df
	ldh a, [c]                                       ; $684c: $f2
	ld e, $6f                                        ; $684d: $1e $6f
	cp $85                                           ; $684f: $fe $85
	db $f4                                           ; $6851: $f4
	inc e                                            ; $6852: $1c
	db $f4                                           ; $6853: $f4
	dec a                                            ; $6854: $3d
	db $e4                                           ; $6855: $e4
	dec a                                            ; $6856: $3d
	ldh [rBCPD], a                                   ; $6857: $e0 $69
	pop bc                                           ; $6859: $c1
	jp hl                                            ; $685a: $e9


	pop bc                                           ; $685b: $c1
	ld l, e                                          ; $685c: $6b
	pop bc                                           ; $685d: $c1
	ld l, e                                          ; $685e: $6b
	add e                                            ; $685f: $83
	res 0, d                                         ; $6860: $cb $82
	db $d3                                           ; $6862: $d3
	ld [bc], a                                       ; $6863: $02
	sub a                                            ; $6864: $97
	ld [bc], a                                       ; $6865: $02
	and a                                            ; $6866: $a7
	dec b                                            ; $6867: $05
	xor a                                            ; $6868: $af
	dec b                                            ; $6869: $05
	cpl                                              ; $686a: $2f
	inc bc                                           ; $686b: $03

jr_067_686c:
	ld h, b                                          ; $686c: $60
	ld c, e                                          ; $686d: $4b
	ld h, b                                          ; $686e: $60
	ld a, a                                          ; $686f: $7f
	ld h, $91                                        ; $6870: $26 $91
	inc bc                                           ; $6872: $03
	rrca                                             ; $6873: $0f
	rrca                                             ; $6874: $0f
	inc a                                            ; $6875: $3c
	ccf                                              ; $6876: $3f
	ldh a, [rIE]                                     ; $6877: $f0 $ff
	ret nz                                           ; $6879: $c0

	rst $38                                          ; $687a: $ff
	rlca                                             ; $687b: $07
	pop hl                                           ; $687c: $e1
	ld [hl], a                                       ; $687d: $77
	ld a, a                                          ; $687e: $7f
	ld e, $03                                        ; $687f: $1e $03
	ld h, b                                          ; $6881: $60
	rra                                              ; $6882: $1f
	ld h, b                                          ; $6883: $60
	sbc d                                            ; $6884: $9a
	sbc a                                            ; $6885: $9f
	ldh a, [c]                                       ; $6886: $f2
	rra                                              ; $6887: $1f
	ldh a, [c]                                       ; $6888: $f2
	ld e, $2b                                        ; $6889: $1e $2b
	add b                                            ; $688b: $80
	sbc d                                            ; $688c: $9a
	add c                                            ; $688d: $81
	ld b, c                                          ; $688e: $41
	jp $c263                                         ; $688f: $c3 $63 $c2


	scf                                              ; $6892: $37
	add b                                            ; $6893: $80
	sbc c                                            ; $6894: $99
	ld [$0f0f], sp                                   ; $6895: $08 $0f $0f
	rra                                              ; $6898: $1f
	rra                                              ; $6899: $1f
	ld a, h                                          ; $689a: $7c
	ld a, d                                          ; $689b: $7a
	ldh [c], a                                       ; $689c: $e2
	sbc b                                            ; $689d: $98
	adc a                                            ; $689e: $8f
	di                                               ; $689f: $f3
	inc sp                                           ; $68a0: $33
	pop af                                           ; $68a1: $f1
	ld a, l                                          ; $68a2: $7d
	ld c, [hl]                                       ; $68a3: $4e
	rra                                              ; $68a4: $1f
	inc bc                                           ; $68a5: $03
	add b                                            ; $68a6: $80
	daa                                              ; $68a7: $27
	add b                                            ; $68a8: $80
	sbc e                                            ; $68a9: $9b
	rst SubAFromDE                                          ; $68aa: $df
	di                                               ; $68ab: $f3
	sbc a                                            ; $68ac: $9f
	ld [hl], d                                       ; $68ad: $72
	rra                                              ; $68ae: $1f
	add b                                            ; $68af: $80
	sbc d                                            ; $68b0: $9a
	add e                                            ; $68b1: $83
	ld b, e                                          ; $68b2: $43
	jp $c063                                         ; $68b3: $c3 $63 $c0


	dec hl                                           ; $68b6: $2b
	add b                                            ; $68b7: $80
	rst SubAFromDE                                          ; $68b8: $df
	ccf                                              ; $68b9: $3f
	ld a, a                                          ; $68ba: $7f
	ld [bc], a                                       ; $68bb: $02
	sub [hl]                                         ; $68bc: $96
	rst GetHLinHL                                          ; $68bd: $cf
	di                                               ; $68be: $f3
	inc sp                                           ; $68bf: $33
	sbc $7e                                          ; $68c0: $de $7e
	sub d                                            ; $68c2: $92
	sub $4d                                          ; $68c3: $d6 $4d
	inc e                                            ; $68c5: $1c
	inc bc                                           ; $68c6: $03
	add b                                            ; $68c7: $80
	cpl                                              ; $68c8: $2f
	add b                                            ; $68c9: $80
	sbc d                                            ; $68ca: $9a
	rst SubAFromDE                                          ; $68cb: $df
	rst FarCall                                          ; $68cc: $f7
	sbc a                                            ; $68cd: $9f
	ld [hl], e                                       ; $68ce: $73
	rra                                              ; $68cf: $1f
	ld [hl], a                                       ; $68d0: $77
	nop                                              ; $68d1: $00
	sub [hl]                                         ; $68d2: $96
	db $fc                                           ; $68d3: $fc

jr_067_68d4:
	add b                                            ; $68d4: $80
	db $fc                                           ; $68d5: $fc
	jr nz, jr_067_68d4                               ; $68d6: $20 $fc

	ld b, b                                          ; $68d8: $40
	ld a, h                                          ; $68d9: $7c
	jr nz, jr_067_68f4                               ; $68da: $20 $18

	cp a                                             ; $68dc: $bf
	nop                                              ; $68dd: $00
	inc [hl]                                         ; $68de: $34
	sbc h                                            ; $68df: $9c
	inc e                                            ; $68e0: $1c
	ld [de], a                                       ; $68e1: $12
	nop                                              ; $68e2: $00
	cp a                                             ; $68e3: $bf
	inc c                                            ; $68e4: $0c
	nop                                              ; $68e5: $00
	rst SubAFromDE                                          ; $68e6: $df
	add b                                            ; $68e7: $80
	rst SubAFromDE                                          ; $68e8: $df
	ret nz                                           ; $68e9: $c0

	sub a                                            ; $68ea: $97
	db $d3                                           ; $68eb: $d3
	ldh [$3f], a                                     ; $68ec: $e0 $3f
	dec de                                           ; $68ee: $1b
	rrca                                             ; $68ef: $0f
	ld b, $05                                        ; $68f0: $06 $05
	inc bc                                           ; $68f2: $03
	ld d, a                                          ; $68f3: $57

jr_067_68f4:
	ldh [$97], a                                     ; $68f4: $e0 $97
	ld [hl+], a                                      ; $68f6: $22
	inc d                                            ; $68f7: $14
	ccf                                              ; $68f8: $3f
	ld e, $0e                                        ; $68f9: $1e $0e
	ld e, $02                                        ; $68fb: $1e $02
	inc c                                            ; $68fd: $0c
	rla                                              ; $68fe: $17
	ldh [$99], a                                     ; $68ff: $e0 $99
	ld e, $1f                                        ; $6901: $1e $1f
	ld c, $1f                                        ; $6903: $0e $1f
	add d                                            ; $6905: $82
	adc h                                            ; $6906: $8c
	rra                                              ; $6907: $1f
	ldh [$9e], a                                     ; $6908: $e0 $9e
	ccf                                              ; $690a: $3f
	sbc $1f                                          ; $690b: $de $1f
	sbc l                                            ; $690d: $9d
	sbc a                                            ; $690e: $9f
	adc [hl]                                         ; $690f: $8e
	ld e, a                                          ; $6910: $5f
	ldh [$c9], a                                     ; $6911: $e0 $c9
	ld [bc], a                                       ; $6913: $02
	db $eb                                           ; $6914: $eb
	rst SubAFromDE                                          ; $6915: $df
	rlca                                             ; $6916: $07
	sub l                                            ; $6917: $95
	add hl, bc                                       ; $6918: $09

jr_067_6919:
	ld c, $10                                        ; $6919: $0e $10
	rra                                              ; $691b: $1f
	inc l                                            ; $691c: $2c
	inc sp                                           ; $691d: $33
	cpl                                              ; $691e: $2f
	ld sp, $0000                                     ; $691f: $31 $00 $00
	db $dd                                           ; $6922: $dd
	ld bc, $0785                                     ; $6923: $01 $85 $07
	ld b, $1f                                        ; $6926: $06 $1f
	jr jr_067_6969                                   ; $6928: $18 $3f

	jr nz, jr_067_69ab                               ; $692a: $20 $7f

	ld b, b                                          ; $692c: $40
	ld a, a                                          ; $692d: $7f
	ld b, b                                          ; $692e: $40
	cp a                                             ; $692f: $bf
	ret nz                                           ; $6930: $c0

	cp $81                                           ; $6931: $fe $81
	rst $38                                          ; $6933: $ff
	add e                                            ; $6934: $83
	rst $38                                          ; $6935: $ff
	inc c                                            ; $6936: $0c
	rst $38                                          ; $6937: $ff
	jr nc, jr_067_6919                               ; $6938: $30 $df

	ld h, b                                          ; $693a: $60
	cp a                                             ; $693b: $bf
	ret nz                                           ; $693c: $c0

	ld a, a                                          ; $693d: $7f
	add b                                            ; $693e: $80

Jump_067_693f:
	jp hl                                            ; $693f: $e9


	rst SubAFromDE                                          ; $6940: $df
	ld bc, $0289                                     ; $6941: $01 $89 $02
	inc bc                                           ; $6944: $03
	inc bc                                           ; $6945: $03
	ld [bc], a                                       ; $6946: $02
	dec b                                            ; $6947: $05
	rlca                                             ; $6948: $07
	ld a, [bc]                                       ; $6949: $0a
	rrca                                             ; $694a: $0f
	rla                                              ; $694b: $17
	ld e, $3d                                        ; $694c: $1e $3d
	ld a, $07                                        ; $694e: $3e $07
	inc b                                            ; $6950: $04
	dec bc                                           ; $6951: $0b
	inc c                                            ; $6952: $0c
	rrca                                             ; $6953: $0f
	ld [$1916], sp                                   ; $6954: $08 $16 $19
	ld e, $11                                        ; $6957: $1e $11
	ld [hl], a                                       ; $6959: $77
	cp $8b                                           ; $695a: $fe $8b
	inc e                                            ; $695c: $1c
	inc de                                           ; $695d: $13
	inc e                                            ; $695e: $1c
	inc de                                           ; $695f: $13
	inc d                                            ; $6960: $14
	dec de                                           ; $6961: $1b
	inc c                                            ; $6962: $0c
	dec bc                                           ; $6963: $0b
	inc c                                            ; $6964: $0c
	dec bc                                           ; $6965: $0b
	ld [$040f], sp                                   ; $6966: $08 $0f $04

jr_067_6969:
	rlca                                             ; $6969: $07
	inc b                                            ; $696a: $04
	rlca                                             ; $696b: $07
	ld [bc], a                                       ; $696c: $02
	inc bc                                           ; $696d: $03
	ld [bc], a                                       ; $696e: $02
	inc bc                                           ; $696f: $03
	db $dd                                           ; $6970: $dd
	ld bc, $d7e0                                     ; $6971: $01 $e0 $d7
	rst SubAFromDE                                          ; $6974: $df
	rrca                                             ; $6975: $0f
	add e                                            ; $6976: $83
	add hl, sp                                       ; $6977: $39
	ld a, $4b                                        ; $6978: $3e $4b
	ld a, h                                          ; $697a: $7c
	ld c, e                                          ; $697b: $4b
	ld a, h                                          ; $697c: $7c
	cp e                                             ; $697d: $bb
	call z, $9c84                                    ; $697e: $cc $84 $9c

jr_067_6981:
	inc b                                            ; $6981: $04
	db $fc                                           ; $6982: $fc
	inc b                                            ; $6983: $04
	adc $02                                          ; $6984: $ce $02
	rlca                                             ; $6986: $07
	ld [bc], a                                       ; $6987: $02
	rlca                                             ; $6988: $07
	inc bc                                           ; $6989: $03

jr_067_698a:
	rrca                                             ; $698a: $0f
	rlca                                             ; $698b: $07
	ld a, $0c                                        ; $698c: $3e $0c
	ld a, b                                          ; $698e: $78
	jr c, jr_067_6981                                ; $698f: $38 $f0

	ldh [$c0], a                                     ; $6991: $e0 $c0
	ld [hl], a                                       ; $6993: $77
	ld l, e                                          ; $6994: $6b
	ld a, a                                          ; $6995: $7f
	or e                                             ; $6996: $b3
	sbc d                                            ; $6997: $9a
	rlca                                             ; $6998: $07
	nop                                              ; $6999: $00
	rra                                              ; $699a: $1f
	nop                                              ; $699b: $00
	ccf                                              ; $699c: $3f
	dec sp                                           ; $699d: $3b
	ld h, $7f                                        ; $699e: $26 $7f
	ld [hl], $83                                     ; $69a0: $36 $83
	ld l, h                                          ; $69a2: $6c
	ld [hl], e                                       ; $69a3: $73
	or c                                             ; $69a4: $b1
	adc $47                                          ; $69a5: $ce $47
	cp b                                             ; $69a7: $b8
	sbc [hl]                                         ; $69a8: $9e
	ld h, c                                          ; $69a9: $61
	cp b                                             ; $69aa: $b8

jr_067_69ab:
	rst JumpTable                                          ; $69ab: $c7
	ld [hl], e                                       ; $69ac: $73
	adc h                                            ; $69ad: $8c
	db $e4                                           ; $69ae: $e4
	jr jr_067_698a                                   ; $69af: $18 $d9

	jr nc, @-$5c                                     ; $69b1: $30 $a2

	ld [hl], c                                       ; $69b3: $71
	or e                                             ; $69b4: $b3
	ld h, c                                          ; $69b5: $61
	ld b, l                                          ; $69b6: $45
	db $e3                                           ; $69b7: $e3
	ld h, a                                          ; $69b8: $67
	jp nz, $c64a                                     ; $69b9: $c2 $4a $c6

	adc [hl]                                         ; $69bc: $8e
	call nz, $c1e0                                   ; $69bd: $c4 $e0 $c1
	sub b                                            ; $69c0: $90
	inc de                                           ; $69c1: $13
	ld e, $1f                                        ; $69c2: $1e $1f
	ld e, $f3                                        ; $69c4: $1e $f3
	cp $1b                                           ; $69c6: $fe $1b
	and $ff                                          ; $69c8: $e6 $ff
	inc b                                            ; $69ca: $04
	rst $38                                          ; $69cb: $ff
	inc b                                            ; $69cc: $04
	rst FarCall                                          ; $69cd: $f7
	inc c                                            ; $69ce: $0c
	rst $38                                          ; $69cf: $ff
	sbc $08                                          ; $69d0: $de $08
	sub [hl]                                         ; $69d2: $96
	add hl, de                                       ; $69d3: $19
	db $10                                           ; $69d4: $10
	ld sp, $6320                                     ; $69d5: $31 $20 $63
	ld b, b                                          ; $69d8: $40
	jp $8780                                         ; $69d9: $c3 $80 $87


	ld a, e                                          ; $69dc: $7b
	ld l, [hl]                                       ; $69dd: $6e
	adc l                                            ; $69de: $8d
	rrca                                             ; $69df: $0f
	nop                                              ; $69e0: $00
	rra                                              ; $69e1: $1f
	ld bc, $023e                                     ; $69e2: $01 $3e $02
	ld a, h                                          ; $69e5: $7c
	ld b, $f8                                        ; $69e6: $06 $f8
	inc c                                            ; $69e8: $0c
	ld hl, sp+$18                                    ; $69e9: $f8 $18
	add sp, $38                                      ; $69eb: $e8 $38
	call nz, $846c                                   ; $69ed: $c4 $6c $84
	db $e4                                           ; $69f0: $e4
	ld d, a                                          ; $69f1: $57
	inc l                                            ; $69f2: $2c
	rst SubAFromDE                                          ; $69f3: $df
	ld bc, $ffdf                                     ; $69f4: $01 $df $ff
	sbc d                                            ; $69f7: $9a
	add e                                            ; $69f8: $83
	nop                                              ; $69f9: $00
	ld b, c                                          ; $69fa: $41
	ccf                                              ; $69fb: $3f
	ld hl, $3e7b                                     ; $69fc: $21 $7b $3e
	add a                                            ; $69ff: $87
	pop bc                                           ; $6a00: $c1
	ccf                                              ; $6a01: $3f
	ccf                                              ; $6a02: $3f
	ret nz                                           ; $6a03: $c0

	rst JumpTable                                          ; $6a04: $c7
	nop                                              ; $6a05: $00
	jr nc, jr_067_6a17                               ; $6a06: $30 $0f

	ret z                                            ; $6a08: $c8

	scf                                              ; $6a09: $37
	ld sp, $c4ce                                     ; $6a0a: $31 $ce $c4
	sbc b                                            ; $6a0d: $98
	adc c                                            ; $6a0e: $89
	jr nc, jr_067_6a62                               ; $6a0f: $30 $51

	inc hl                                           ; $6a11: $23
	rlca                                             ; $6a12: $07
	ld h, d                                          ; $6a13: $62
	xor d                                            ; $6a14: $aa
	ld b, [hl]                                       ; $6a15: $46
	ld c, [hl]                                       ; $6a16: $4e

jr_067_6a17:
	add h                                            ; $6a17: $84
	ldh [$c1], a                                     ; $6a18: $e0 $c1
	ld a, [hl]                                       ; $6a1a: $7e
	sub l                                            ; $6a1b: $95
	sub h                                            ; $6a1c: $94
	ld a, c                                          ; $6a1d: $79
	ld sp, $1d3d                                     ; $6a1e: $31 $3d $1d
	ccf                                              ; $6a21: $3f
	add hl, bc                                       ; $6a22: $09
	ld a, a                                          ; $6a23: $7f
	add hl, bc                                       ; $6a24: $09
	ld a, a                                          ; $6a25: $7f
	rlca                                             ; $6a26: $07
	ld a, a                                          ; $6a27: $7f
	ld a, e                                          ; $6a28: $7b
	ld e, h                                          ; $6a29: $5c
	add b                                            ; $6a2a: $80
	db $fc                                           ; $6a2b: $fc
	ld [$18f8], sp                                   ; $6a2c: $08 $f8 $18
	rst $38                                          ; $6a2f: $ff
	jr nc, @+$01                                     ; $6a30: $30 $ff

	ld b, a                                          ; $6a32: $47
	ei                                               ; $6a33: $fb
	ld c, $f2                                        ; $6a34: $0e $f2
	ld d, $e6                                        ; $6a36: $16 $e6
	ld h, h                                          ; $6a38: $64
	add [hl]                                         ; $6a39: $86
	adc h                                            ; $6a3a: $8c
	ld b, $0c                                        ; $6a3b: $06 $0c
	ld c, $08                                        ; $6a3d: $0e $08
	rrca                                             ; $6a3f: $0f
	inc e                                            ; $6a40: $1c
	dec bc                                           ; $6a41: $0b
	ld e, $0d                                        ; $6a42: $1e $0d
	rra                                              ; $6a44: $1f
	ld d, $3f                                        ; $6a45: $16 $3f
	ld de, $103f                                     ; $6a47: $11 $3f $10
	sbc [hl]                                         ; $6a4a: $9e
	add hl, sp                                       ; $6a4b: $39
	rst FarCall                                          ; $6a4c: $f7
	rst SubAFromDE                                          ; $6a4d: $df
	pop bc                                           ; $6a4e: $c1
	add b                                            ; $6a4f: $80
	ld [hl], d                                       ; $6a50: $72
	or e                                             ; $6a51: $b3
	xor a                                            ; $6a52: $af
	sbc $c7                                          ; $6a53: $de $c7
	ld c, $f2                                        ; $6a55: $0e $f2
	rst JumpTable                                          ; $6a57: $c7
	cp d                                             ; $6a58: $ba
	ld a, e                                          ; $6a59: $7b
	ld [hl], a                                       ; $6a5a: $77
	rrca                                             ; $6a5b: $0f
	rst SubAFromDE                                          ; $6a5c: $df
	rst SubAFromBC                                          ; $6a5d: $e7
	ld [hl-], a                                      ; $6a5e: $32
	rst $38                                          ; $6a5f: $ff
	xor $1f                                          ; $6a60: $ee $1f

jr_067_6a62:
	rlca                                             ; $6a62: $07
	rst $38                                          ; $6a63: $ff
	ld a, [$76ff]                                    ; $6a64: $fa $ff $76
	rrca                                             ; $6a67: $0f
	adc a                                            ; $6a68: $8f
	ld [hl], e                                       ; $6a69: $73
	ld [hl], d                                       ; $6a6a: $72
	rst $38                                          ; $6a6b: $ff
	or a                                             ; $6a6c: $b7
	rrca                                             ; $6a6d: $0f
	ld e, d                                          ; $6a6e: $5a
	sbc d                                            ; $6a6f: $9a
	ccf                                              ; $6a70: $3f
	cp c                                             ; $6a71: $b9
	ld h, [hl]                                       ; $6a72: $66
	ld l, h                                          ; $6a73: $6c
	rst SubAFromDE                                          ; $6a74: $df
	ldh [$c1], a                                     ; $6a75: $e0 $c1
	adc e                                            ; $6a77: $8b
	ld e, a                                          ; $6a78: $5f
	ld d, a                                          ; $6a79: $57
	ld a, a                                          ; $6a7a: $7f
	ld e, b                                          ; $6a7b: $58
	rst $38                                          ; $6a7c: $ff
	ld d, c                                          ; $6a7d: $51
	cp $62                                           ; $6a7e: $fe $62
	db $ec                                           ; $6a80: $ec
	ld b, h                                          ; $6a81: $44

jr_067_6a82:
	ret c                                            ; $6a82: $d8

	adc b                                            ; $6a83: $88
	sub b                                            ; $6a84: $90
	db $10                                           ; $6a85: $10
	jr nc, jr_067_6a98                               ; $6a86: $30 $10

	ld h, c                                          ; $6a88: $61
	jr nz, jr_067_6a82                               ; $6a89: $20 $f7

	ld h, e                                          ; $6a8b: $63
	ld l, [hl]                                       ; $6a8c: $6e
	ld l, $f9                                        ; $6a8d: $2e $f9
	sbc [hl]                                         ; $6a8f: $9e
	ld [$fe7b], sp                                   ; $6a90: $08 $7b $fe
	sub l                                            ; $6a93: $95
	sbc h                                            ; $6a94: $9c
	nop                                              ; $6a95: $00
	rst $38                                          ; $6a96: $ff
	add b                                            ; $6a97: $80

jr_067_6a98:
	ld a, a                                          ; $6a98: $7f
	pop af                                           ; $6a99: $f1
	adc [hl]                                         ; $6a9a: $8e
	adc $71                                          ; $6a9b: $ce $71
	pop af                                           ; $6a9d: $f1
	ld sp, hl                                        ; $6a9e: $f9
	db $dd                                           ; $6a9f: $dd
	add b                                            ; $6aa0: $80
	rst SubAFromDE                                          ; $6aa1: $df
	cp a                                             ; $6aa2: $bf
	add b                                            ; $6aa3: $80
	cp $c1                                           ; $6aa4: $fe $c1
	sbc a                                            ; $6aa6: $9f
	rst $38                                          ; $6aa7: $ff
	ld b, [hl]                                       ; $6aa8: $46
	add c                                            ; $6aa9: $81
	or c                                             ; $6aaa: $b1
	ld a, [hl]                                       ; $6aab: $7e
	ldh [c], a                                       ; $6aac: $e2
	pop bc                                           ; $6aad: $c1
	ld c, a                                          ; $6aae: $4f
	add b                                            ; $6aaf: $80
	pop hl                                           ; $6ab0: $e1
	ld a, [hl]                                       ; $6ab1: $7e
	and h                                            ; $6ab2: $a4
	jp $0080                                         ; $6ab3: $c3 $80 $00


	inc c                                            ; $6ab6: $0c
	ldh a, [$73]                                     ; $6ab7: $f0 $73
	db $fc                                           ; $6ab9: $fc
	cp [hl]                                          ; $6aba: $be
	rst GetHLinHL                                          ; $6abb: $cf
	ld l, l                                          ; $6abc: $6d
	push af                                          ; $6abd: $f5
	ld [hl], $da                                     ; $6abe: $36 $da
	sbc $eb                                          ; $6ac0: $de $eb
	cp e                                             ; $6ac2: $bb
	sbc h                                            ; $6ac3: $9c
	ld l, l                                          ; $6ac4: $6d
	db $ed                                           ; $6ac5: $ed
	or l                                             ; $6ac6: $b5
	ldh [$c1], a                                     ; $6ac7: $e0 $c1
	sub [hl]                                         ; $6ac9: $96
	add hl, bc                                       ; $6aca: $09
	dec c                                            ; $6acb: $0d
	adc c                                            ; $6acc: $89
	adc l                                            ; $6acd: $8d
	ld de, $111b                                     ; $6ace: $11 $1b $11
	dec de                                           ; $6ad1: $1b
	ld [hl-], a                                      ; $6ad2: $32
	ld a, e                                          ; $6ad3: $7b
	cp $98                                           ; $6ad4: $fe $98
	ld [hl], d                                       ; $6ad6: $72
	rra                                              ; $6ad7: $1f
	ldh a, [c]                                       ; $6ad8: $f2
	rra                                              ; $6ad9: $1f
	ldh a, [c]                                       ; $6ada: $f2
	rst $38                                          ; $6adb: $ff
	ld [de], a                                       ; $6adc: $12
	ld a, e                                          ; $6add: $7b
	ld a, [$3298]                                    ; $6ade: $fa $98 $32
	rra                                              ; $6ae1: $1f
	ld [de], a                                       ; $6ae2: $12
	rra                                              ; $6ae3: $1f
	add hl, de                                       ; $6ae4: $19
	rrca                                             ; $6ae5: $0f
	add hl, bc                                       ; $6ae6: $09
	ld a, e                                          ; $6ae7: $7b
	cp $8f                                           ; $6ae8: $fe $8f
	dec c                                            ; $6aea: $0d
	rlca                                             ; $6aeb: $07
	dec c                                            ; $6aec: $0d
	rlca                                             ; $6aed: $07
	dec e                                            ; $6aee: $1d
	rlca                                             ; $6aef: $07
	ld a, e                                          ; $6af0: $7b
	rrca                                             ; $6af1: $0f
	rst FarCall                                          ; $6af2: $f7
	ccf                                              ; $6af3: $3f
	call $31ff                                       ; $6af4: $cd $ff $31
	ld sp, hl                                        ; $6af7: $f9
	pop bc                                           ; $6af8: $c1
	pop hl                                           ; $6af9: $e1
	di                                               ; $6afa: $f3
	rst SubAFromDE                                          ; $6afb: $df
	ret nz                                           ; $6afc: $c0

	rst $38                                          ; $6afd: $ff
	rst SubAFromDE                                          ; $6afe: $df
	ldh [hDisp0_SCY], a                                     ; $6aff: $e0 $83
	ret c                                            ; $6b01: $d8

	jr c, jr_067_6b78                                ; $6b02: $38 $74

	adc h                                            ; $6b04: $8c
	sbc d                                            ; $6b05: $9a
	ld h, [hl]                                       ; $6b06: $66
	push hl                                          ; $6b07: $e5
	dec de                                           ; $6b08: $1b
	ld [hl], d                                       ; $6b09: $72
	adc l                                            ; $6b0a: $8d
	xor h                                            ; $6b0b: $ac
	ld [hl], a                                       ; $6b0c: $77
	halt                                             ; $6b0d: $76
	dec de                                           ; $6b0e: $1b
	cp c                                             ; $6b0f: $b9
	rrca                                             ; $6b10: $0f
	push de                                          ; $6b11: $d5
	rrca                                             ; $6b12: $0f
	cp h                                             ; $6b13: $bc
	rst JumpTable                                          ; $6b14: $c7
	ld e, d                                          ; $6b15: $5a
	rst SubAFromBC                                          ; $6b16: $e7
	cp [hl]                                          ; $6b17: $be
	ld h, e                                          ; $6b18: $63
	ld e, l                                          ; $6b19: $5d
	or e                                             ; $6b1a: $b3
	or l                                             ; $6b1b: $b5
	db $db                                           ; $6b1c: $db
	ldh [$c1], a                                     ; $6b1d: $e0 $c1
	add b                                            ; $6b1f: $80
	ld e, b                                          ; $6b20: $58
	cp b                                             ; $6b21: $b8
	sub b                                            ; $6b22: $90
	ld [hl], b                                       ; $6b23: $70
	cp [hl]                                          ; $6b24: $be
	ld a, [hl]                                       ; $6b25: $7e
	cp a                                             ; $6b26: $bf
	ld h, e                                          ; $6b27: $63
	cp a                                             ; $6b28: $bf
	ld h, b                                          ; $6b29: $60
	ld a, a                                          ; $6b2a: $7f
	ldh [$7f], a                                     ; $6b2b: $e0 $7f
	ret nc                                           ; $6b2d: $d0

	ld a, a                                          ; $6b2e: $7f
	ret nc                                           ; $6b2f: $d0

	rst $38                                          ; $6b30: $ff
	ret nc                                           ; $6b31: $d0

	db $fc                                           ; $6b32: $fc
	adc b                                            ; $6b33: $88

jr_067_6b34:
	db $fc                                           ; $6b34: $fc
	adc b                                            ; $6b35: $88
	call z, $8e88                                    ; $6b36: $cc $88 $8e
	add h                                            ; $6b39: $84

jr_067_6b3a:
	add [hl]                                         ; $6b3a: $86
	inc b                                            ; $6b3b: $04
	add [hl]                                         ; $6b3c: $86
	inc b                                            ; $6b3d: $04
	add a                                            ; $6b3e: $87
	sbc l                                            ; $6b3f: $9d
	ld [bc], a                                       ; $6b40: $02
	add e                                            ; $6b41: $83
	ld [hl], a                                       ; $6b42: $77
	cp $9d                                           ; $6b43: $fe $9d
	ld bc, $7b81                                     ; $6b45: $01 $81 $7b
	cp $7f                                           ; $6b48: $fe $7f
	ld a, [$8e9b]                                    ; $6b4a: $fa $9b $8e
	ld b, $b9                                        ; $6b4d: $06 $b9
	add hl, de                                       ; $6b4f: $19
	push hl                                          ; $6b50: $e5
	db $dd                                           ; $6b51: $dd
	add b                                            ; $6b52: $80
	sbc b                                            ; $6b53: $98
	ld b, b                                          ; $6b54: $40
	ret nz                                           ; $6b55: $c0

	ld b, b                                          ; $6b56: $40
	ret nz                                           ; $6b57: $c0

	jr nz, jr_067_6b3a                               ; $6b58: $20 $e0

	and b                                            ; $6b5a: $a0
	ld a, e                                          ; $6b5b: $7b
	cp $9d                                           ; $6b5c: $fe $9d
	ld d, b                                          ; $6b5e: $50
	ldh a, [rPCM34]                                  ; $6b5f: $f0 $77
	cp $9c                                           ; $6b61: $fe $9c
	jr z, @-$06                                      ; $6b63: $28 $f8

	xor b                                            ; $6b65: $a8
	ld [hl], e                                       ; $6b66: $73
	cp $9c                                           ; $6b67: $fe $9c
	sbc b                                            ; $6b69: $98
	ld hl, sp+$58                                    ; $6b6a: $f8 $58
	ld l, e                                          ; $6b6c: $6b
	cp $9e                                           ; $6b6d: $fe $9e
	ld c, b                                          ; $6b6f: $48
	ld l, e                                          ; $6b70: $6b
	cp $77                                           ; $6b71: $fe $77
	ldh [c], a                                       ; $6b73: $e2
	sbc l                                            ; $6b74: $9d
	sub b                                            ; $6b75: $90
	ldh a, [rPCM34]                                  ; $6b76: $f0 $77

jr_067_6b78:
	sub $7f                                          ; $6b78: $d6 $7f
	cp $7f                                           ; $6b7a: $fe $7f
	adc $77                                          ; $6b7c: $ce $77
	ret z                                            ; $6b7e: $c8

	ld a, a                                          ; $6b7f: $7f
	cp $dd                                           ; $6b80: $fe $dd
	add b                                            ; $6b82: $80
	db $ed                                           ; $6b83: $ed
	rst SubAFromDE                                          ; $6b84: $df
	ldh [$80], a                                     ; $6b85: $e0 $80
	ld a, $fe                                        ; $6b87: $3e $fe
	ld bc, $1dff                                     ; $6b89: $01 $ff $1d
	db $e3                                           ; $6b8c: $e3
	ld a, $c3                                        ; $6b8d: $3e $c3
	rlca                                             ; $6b8f: $07
	ld [bc], a                                       ; $6b90: $02
	ld b, $04                                        ; $6b91: $06 $04
	ld c, $04                                        ; $6b93: $0e $04
	dec c                                            ; $6b95: $0d
	add hl, bc                                       ; $6b96: $09
	dec c                                            ; $6b97: $0d
	add hl, bc                                       ; $6b98: $09
	ld a, [de]                                       ; $6b99: $1a
	ld a, [bc]                                       ; $6b9a: $0a
	dec de                                           ; $6b9b: $1b
	ld [de], a                                       ; $6b9c: $12
	dec e                                            ; $6b9d: $1d
	dec d                                            ; $6b9e: $15
	rra                                              ; $6b9f: $1f
	dec d                                            ; $6ba0: $15
	rra                                              ; $6ba1: $1f
	ld e, $9f                                        ; $6ba2: $1e $9f
	inc de                                           ; $6ba4: $13
	cp a                                             ; $6ba5: $bf
	sub [hl]                                         ; $6ba6: $96
	ld sp, $61ff                                     ; $6ba7: $31 $ff $61
	rst $38                                          ; $6baa: $ff
	jp nz, $85fd                                     ; $6bab: $c2 $fd $85

	ld a, [$e90a]                                    ; $6bae: $fa $0a $e9
	rst SubAFromDE                                          ; $6bb1: $df
	jr jr_067_6b34                                   ; $6bb2: $18 $80

	xor b                                            ; $6bb4: $a8
	cp b                                             ; $6bb5: $b8
	add sp, -$08                                     ; $6bb6: $e8 $f8
	ret nc                                           ; $6bb8: $d0

	ld [hl], b                                       ; $6bb9: $70
	ret nc                                           ; $6bba: $d0

	ld [hl], b                                       ; $6bbb: $70
	ldh a, [$b0]                                     ; $6bbc: $f0 $b0
	xor b                                            ; $6bbe: $a8
	ld hl, sp-$38                                    ; $6bbf: $f8 $c8
	ld a, b                                          ; $6bc1: $78
	ld l, h                                          ; $6bc2: $6c
	call c, $ccbc                                    ; $6bc3: $dc $bc $cc
	db $fc                                           ; $6bc6: $fc
	adc h                                            ; $6bc7: $8c
	ld a, d                                          ; $6bc8: $7a
	adc [hl]                                         ; $6bc9: $8e
	ld a, [$fa0e]                                    ; $6bca: $fa $0e $fa
	ld c, $f5                                        ; $6bcd: $0e $f5
	dec bc                                           ; $6bcf: $0b
	push af                                          ; $6bd0: $f5
	adc e                                            ; $6bd1: $8b
	ld a, l                                          ; $6bd2: $7d
	sbc b                                            ; $6bd3: $98
	jp $e33d                                         ; $6bd4: $c3 $3d $e3


	sbc l                                            ; $6bd7: $9d
	di                                               ; $6bd8: $f3
	db $dd                                           ; $6bd9: $dd
	di                                               ; $6bda: $f3
	ld [hl+], a                                      ; $6bdb: $22
	nop                                              ; $6bdc: $00
	sbc l                                            ; $6bdd: $9d
	call z, $dedd                                    ; $6bde: $cc $dd $de
	adc b                                            ; $6be1: $88
	sub h                                            ; $6be2: $94
	call z, $8833                                    ; $6be3: $cc $33 $88
	ld [$cc99], sp                                   ; $6be6: $08 $99 $cc
	inc sp                                           ; $6be9: $33
	add b                                            ; $6bea: $80
	ld [$9199], sp                                   ; $6beb: $08 $99 $91
	ld e, a                                          ; $6bee: $5f
	ei                                               ; $6bef: $fb
	sbc [hl]                                         ; $6bf0: $9e
	ld de, $ec7b                                     ; $6bf1: $11 $7b $ec
	sbc l                                            ; $6bf4: $9d
	adc b                                            ; $6bf5: $88
	ld [hl+], a                                      ; $6bf6: $22
	ld [hl], a                                       ; $6bf7: $77
	ldh [c], a                                       ; $6bf8: $e2
	sbc h                                            ; $6bf9: $9c
	ld [hl+], a                                      ; $6bfa: $22
	call z, $b8cc                                    ; $6bfb: $cc $cc $b8
	ld bc, $c498                                     ; $6bfe: $01 $98 $c4
	adc h                                            ; $6c01: $8c
	sub h                                            ; $6c02: $94
	adc h                                            ; $6c03: $8c
	sbc h                                            ; $6c04: $9c
	adc b                                            ; $6c05: $88
	sbc b                                            ; $6c06: $98
	ld a, e                                          ; $6c07: $7b
	cp $80                                           ; $6c08: $fe $80
	sbc c                                            ; $6c0a: $99
	adc b                                            ; $6c0b: $88
	sbc l                                            ; $6c0c: $9d
	adc b                                            ; $6c0d: $88
	db $dd                                           ; $6c0e: $dd
	adc b                                            ; $6c0f: $88
	sub l                                            ; $6c10: $95
	call z, $cc77                                    ; $6c11: $cc $77 $cc
	ld d, l                                          ; $6c14: $55
	xor $33                                          ; $6c15: $ee $33
	xor $22                                          ; $6c17: $ee $22
	rst $38                                          ; $6c19: $ff
	sub c                                            ; $6c1a: $91
	rst $38                                          ; $6c1b: $ff
	pop de                                           ; $6c1c: $d1
	rst $38                                          ; $6c1d: $ff
	add sp, -$01                                     ; $6c1e: $e8 $ff
	sbc h                                            ; $6c20: $9c
	rst $38                                          ; $6c21: $ff
	and [hl]                                         ; $6c22: $a6
	rst SubAFromDE                                          ; $6c23: $df
	xor l                                            ; $6c24: $ad
	rst SubAFromHL                                          ; $6c25: $d7
	add $95                                          ; $6c26: $c6 $95
	add $9d                                          ; $6c28: $c6 $9d
	sub l                                            ; $6c2a: $95
	add [hl]                                         ; $6c2b: $86
	ld a, e                                          ; $6c2c: $7b
	cp $9c                                           ; $6c2d: $fe $9c
	sub [hl]                                         ; $6c2f: $96
	add l                                            ; $6c30: $85
	cp $7b                                           ; $6c31: $fe $7b
	cp $80                                           ; $6c33: $fe $80
	xor $95                                          ; $6c35: $ee $95
	xor [hl]                                         ; $6c37: $ae
	push de                                          ; $6c38: $d5
	xor h                                            ; $6c39: $ac
	rst SubAFromHL                                          ; $6c3a: $d7
	ld h, d                                          ; $6c3b: $62
	ld e, a                                          ; $6c3c: $5f
	ld b, d                                          ; $6c3d: $42
	ld a, a                                          ; $6c3e: $7f
	ld hl, $453f                                     ; $6c3f: $21 $3f $45
	adc h                                            ; $6c42: $8c
	inc e                                            ; $6c43: $1c
	adc c                                            ; $6c44: $89
	sbc e                                            ; $6c45: $9b
	add hl, bc                                       ; $6c46: $09
	dec bc                                           ; $6c47: $0b
	add hl, de                                       ; $6c48: $19
	xor c                                            ; $6c49: $a9
	dec de                                           ; $6c4a: $1b
	xor l                                            ; $6c4b: $ad
	sbc e                                            ; $6c4c: $9b
	xor l                                            ; $6c4d: $ad
	sbc e                                            ; $6c4e: $9b
	call $88bb                                       ; $6c4f: $cd $bb $88
	rst $38                                          ; $6c52: $ff
	ld b, h                                          ; $6c53: $44
	ld a, e                                          ; $6c54: $7b
	cp $7f                                           ; $6c55: $fe $7f
	jp nz, $2380                                     ; $6c57: $c2 $80 $23

	rst $38                                          ; $6c5a: $ff
	ld de, $19ff                                     ; $6c5b: $11 $ff $19
	rst $38                                          ; $6c5e: $ff
	adc h                                            ; $6c5f: $8c
	rst $38                                          ; $6c60: $ff
	ld b, [hl]                                       ; $6c61: $46
	rst $38                                          ; $6c62: $ff
	inc sp                                           ; $6c63: $33
	rst $38                                          ; $6c64: $ff
	rra                                              ; $6c65: $1f
	rst $38                                          ; $6c66: $ff
	rst GetHLinHL                                          ; $6c67: $cf
	ld hl, sp-$04                                    ; $6c68: $f8 $fc
	cp h                                             ; $6c6a: $bc
	ret nz                                           ; $6c6b: $c0

	add b                                            ; $6c6c: $80
	ld b, b                                          ; $6c6d: $40
	ret nz                                           ; $6c6e: $c0

	ld h, b                                          ; $6c6f: $60
	ret nz                                           ; $6c70: $c0

	ld [hl], b                                       ; $6c71: $70
	ldh [$58], a                                     ; $6c72: $e0 $58
	ldh a, [$5c]                                     ; $6c74: $f0 $5c
	ld hl, sp+$56                                    ; $6c76: $f8 $56
	adc e                                            ; $6c78: $8b
	cp $57                                           ; $6c79: $fe $57
	rst $38                                          ; $6c7b: $ff
	ld a, h                                          ; $6c7c: $7c
	ld hl, sp-$1d                                    ; $6c7d: $f8 $e3
	pop bc                                           ; $6c7f: $c1
	sbc h                                            ; $6c80: $9c
	inc c                                            ; $6c81: $0c
	ei                                               ; $6c82: $fb
	sbc e                                            ; $6c83: $9b
	sub b                                            ; $6c84: $90
	or b                                             ; $6c85: $b0
	and b                                            ; $6c86: $a0
	jr nz, @+$62                                     ; $6c87: $20 $60

	jr nz, jr_067_6cab                               ; $6c89: $20 $20

	ld h, b                                          ; $6c8b: $60
	and b                                            ; $6c8c: $a0
	ld [hl], e                                       ; $6c8d: $73
	cp $8e                                           ; $6c8e: $fe $8e
	or b                                             ; $6c90: $b0
	ldh [hDisp1_SCY], a                                     ; $6c91: $e0 $90
	ldh a, [$58]                                     ; $6c93: $f0 $58
	ldh a, [rBCPS]                                   ; $6c95: $f0 $68
	ei                                               ; $6c97: $fb
	ld a, a                                          ; $6c98: $7f
	db $db                                           ; $6c99: $db
	cp a                                             ; $6c9a: $bf
	add sp, -$25                                     ; $6c9b: $e8 $db
	ld [hl], b                                       ; $6c9d: $70
	ld sp, hl                                        ; $6c9e: $f9
	cp b                                             ; $6c9f: $b8
	push af                                          ; $6ca0: $f5
	sbc $55                                          ; $6ca1: $de $55
	adc e                                            ; $6ca3: $8b
	ld d, a                                          ; $6ca4: $57
	ld d, l                                          ; $6ca5: $55
	ld e, l                                          ; $6ca6: $5d
	ld d, [hl]                                       ; $6ca7: $56
	ld a, l                                          ; $6ca8: $7d
	ld d, [hl]                                       ; $6ca9: $56
	ld d, [hl]                                       ; $6caa: $56

jr_067_6cab:
	ld a, a                                          ; $6cab: $7f
	ld l, e                                          ; $6cac: $6b
	ld l, e                                          ; $6cad: $6b
	ld c, c                                          ; $6cae: $49
	ld c, c                                          ; $6caf: $49
	inc bc                                           ; $6cb0: $03
	nop                                              ; $6cb1: $00
	jr nz, @+$21                                     ; $6cb2: $20 $1f

	rra                                              ; $6cb4: $1f
	rst $38                                          ; $6cb5: $ff
	rst $38                                          ; $6cb6: $ff
	ldh [$7b], a                                     ; $6cb7: $e0 $7b
	xor e                                            ; $6cb9: $ab
	add b                                            ; $6cba: $80
	ld a, a                                          ; $6cbb: $7f
	push hl                                          ; $6cbc: $e5
	rst SubAFromBC                                          ; $6cbd: $e7
	cp l                                             ; $6cbe: $bd
	db $fc                                           ; $6cbf: $fc
	dec h                                            ; $6cc0: $25
	ld l, $7b                                        ; $6cc1: $2e $7b
	inc e                                            ; $6cc3: $1c
	inc bc                                           ; $6cc4: $03
	nop                                              ; $6cc5: $00
	rlca                                             ; $6cc6: $07
	nop                                              ; $6cc7: $00
	rrca                                             ; $6cc8: $0f
	nop                                              ; $6cc9: $00
	rrca                                             ; $6cca: $0f
	ld bc, $011f                                     ; $6ccb: $01 $1f $01
	ld e, $03                                        ; $6cce: $1e $03
	ld a, $07                                        ; $6cd0: $3e $07
	ld a, $0f                                        ; $6cd2: $3e $0f
	ld a, h                                          ; $6cd4: $7c
	ld d, $fc                                        ; $6cd5: $16 $fc
	ld h, $fc                                        ; $6cd7: $26 $fc
	add $81                                          ; $6cd9: $c6 $81
	ld hl, sp-$72                                    ; $6cdb: $f8 $8e
	ld hl, sp+$0d                                    ; $6cdd: $f8 $0d
	sbc b                                            ; $6cdf: $98
	dec c                                            ; $6ce0: $0d
	reti                                             ; $6ce1: $d9


	ld l, a                                          ; $6ce2: $6f
	ld l, b                                          ; $6ce3: $68
	cp a                                             ; $6ce4: $bf
	or h                                             ; $6ce5: $b4
	rst SubAFromDE                                          ; $6ce6: $df
	call c, $beef                                    ; $6ce7: $dc $ef $be
	di                                               ; $6cea: $f3
	rst GetHLinHL                                          ; $6ceb: $cf
	ld a, a                                          ; $6cec: $7f
	ld b, d                                          ; $6ced: $42
	rst $38                                          ; $6cee: $ff
	and d                                            ; $6cef: $a2
	rst $38                                          ; $6cf0: $ff
	ldh a, [c]                                       ; $6cf1: $f2
	ld [hl], a                                       ; $6cf2: $77
	ld h, d                                          ; $6cf3: $62
	or a                                             ; $6cf4: $b7
	ldh [c], a                                       ; $6cf5: $e2
	or a                                             ; $6cf6: $b7
	ldh [c], a                                       ; $6cf7: $e2
	scf                                              ; $6cf8: $37
	ld [hl], e                                       ; $6cf9: $73
	db $fc                                           ; $6cfa: $fc
	ld a, a                                          ; $6cfb: $7f
	cp $80                                           ; $6cfc: $fe $80
	ld [hl], a                                       ; $6cfe: $77
	db $e4                                           ; $6cff: $e4
	ld h, a                                          ; $6d00: $67
	db $e4                                           ; $6d01: $e4
	ld h, a                                          ; $6d02: $67
	and h                                            ; $6d03: $a4
	rst AddAOntoHL                                          ; $6d04: $ef
	and l                                            ; $6d05: $a5
	rst AddAOntoHL                                          ; $6d06: $ef
	and l                                            ; $6d07: $a5
	xor a                                            ; $6d08: $af
	add hl, hl                                       ; $6d09: $29
	xor a                                            ; $6d0a: $af
	ld c, d                                          ; $6d0b: $4a
	ld l, a                                          ; $6d0c: $6f
	ld c, d                                          ; $6d0d: $4a
	ld l, a                                          ; $6d0e: $6f
	db $fc                                           ; $6d0f: $fc
	ld c, a                                          ; $6d10: $4f
	db $fd                                           ; $6d11: $fd
	ld c, a                                          ; $6d12: $4f
	ld l, l                                          ; $6d13: $6d
	rst SubAFromDE                                          ; $6d14: $df
	ld l, d                                          ; $6d15: $6a
	sbc $aa                                          ; $6d16: $de $aa
	sbc $d4                                          ; $6d18: $de $d4
	cp h                                             ; $6d1a: $bc
	call nc, $9dbc                                   ; $6d1b: $d4 $bc $9d
	ret c                                            ; $6d1e: $d8

	cp b                                             ; $6d1f: $b8
	inc bc                                           ; $6d20: $03
	ld h, b                                          ; $6d21: $60
	ld b, e                                          ; $6d22: $43
	ld h, b                                          ; $6d23: $60
	adc a                                            ; $6d24: $8f
	db $10                                           ; $6d25: $10
	rrca                                             ; $6d26: $0f
	rrca                                             ; $6d27: $0f
	ld a, a                                          ; $6d28: $7f
	ld a, a                                          ; $6d29: $7f
	ldh a, [rIE]                                     ; $6d2a: $f0 $ff
	add b                                            ; $6d2c: $80
	rst $38                                          ; $6d2d: $ff
	rra                                              ; $6d2e: $1f
	rst SubAFromBC                                          ; $6d2f: $e7
	ld h, a                                          ; $6d30: $67
	db $fd                                           ; $6d31: $fd
	db $fd                                           ; $6d32: $fd
	and l                                            ; $6d33: $a5
	xor [hl]                                         ; $6d34: $ae
	inc bc                                           ; $6d35: $03
	ld h, b                                          ; $6d36: $60
	cpl                                              ; $6d37: $2f
	ld h, b                                          ; $6d38: $60
	ld l, a                                          ; $6d39: $6f
	ld e, [hl]                                       ; $6d3a: $5e
	sbc [hl]                                         ; $6d3b: $9e
	ld [hl], a                                       ; $6d3c: $77
	dec hl                                           ; $6d3d: $2b
	add b                                            ; $6d3e: $80
	sbc d                                            ; $6d3f: $9a
	ld hl, sp+$7c                                    ; $6d40: $f8 $7c
	db $db                                           ; $6d42: $db
	cp a                                             ; $6d43: $bf
	db $eb                                           ; $6d44: $eb
	scf                                              ; $6d45: $37
	add b                                            ; $6d46: $80
	sub e                                            ; $6d47: $93
	ld bc, $0800                                     ; $6d48: $01 $00 $08
	rlca                                             ; $6d4b: $07
	ld b, a                                          ; $6d4c: $47
	ccf                                              ; $6d4d: $3f
	ccf                                              ; $6d4e: $3f
	ld hl, sp-$01                                    ; $6d4f: $f8 $ff
	ret nz                                           ; $6d51: $c0

	rst $38                                          ; $6d52: $ff
	nop                                              ; $6d53: $00
	ld a, e                                          ; $6d54: $7b
	cp $9a                                           ; $6d55: $fe $9a
	rra                                              ; $6d57: $1f
	rst JumpTable                                          ; $6d58: $c7
	xor $ff                                          ; $6d59: $ee $ff
	jr jr_067_6d60                                   ; $6d5b: $18 $03

	add b                                            ; $6d5d: $80
	cpl                                              ; $6d5e: $2f
	add b                                            ; $6d5f: $80

jr_067_6d60:
	ld [hl], d                                       ; $6d60: $72
	ldh [$03], a                                     ; $6d61: $e0 $03
	add b                                            ; $6d63: $80
	ld c, e                                          ; $6d64: $4b
	add b                                            ; $6d65: $80
	rst $38                                          ; $6d66: $ff
	ld a, a                                          ; $6d67: $7f
	ld a, [hl]                                       ; $6d68: $7e
	ld l, d                                          ; $6d69: $6a
	ld e, [hl]                                       ; $6d6a: $5e
	ld [hl], a                                       ; $6d6b: $77
	add b                                            ; $6d6c: $80
	sbc d                                            ; $6d6d: $9a
	nop                                              ; $6d6e: $00
	ccf                                              ; $6d6f: $3f
	rlca                                             ; $6d70: $07
	rst $38                                          ; $6d71: $ff
	cp $03                                           ; $6d72: $fe $03
	add b                                            ; $6d74: $80
	ld d, e                                          ; $6d75: $53
	add b                                            ; $6d76: $80
	ld a, a                                          ; $6d77: $7f
	adc d                                            ; $6d78: $8a
	ld e, e                                          ; $6d79: $5b
	ld a, [hl]                                       ; $6d7a: $7e
	adc l                                            ; $6d7b: $8d
	ld [hl], a                                       ; $6d7c: $77
	ld [hl], b                                       ; $6d7d: $70
	ret nz                                           ; $6d7e: $c0

	ldh a, [$e0]                                     ; $6d7f: $f0 $e0
	ld hl, sp+$00                                    ; $6d81: $f8 $00
	db $fc                                           ; $6d83: $fc
	jr nz, jr_067_6e02                               ; $6d84: $20 $7c

	jr nz, @+$3a                                     ; $6d86: $20 $38

	nop                                              ; $6d88: $00
	ld [bc], a                                       ; $6d89: $02
	nop                                              ; $6d8a: $00

jr_067_6d8b:
	ld l, [hl]                                       ; $6d8b: $6e
	inc l                                            ; $6d8c: $2c
	jr c, jr_067_6d8b                                ; $6d8d: $38 $fc

	rst SubAFromDE                                          ; $6d8f: $df
	ld [hl], b                                       ; $6d90: $70
	sub a                                            ; $6d91: $97
	call Call_067_738c                               ; $6d92: $cd $8c $73
	ld h, e                                          ; $6d95: $63
	add hl, sp                                       ; $6d96: $39
	add hl, de                                       ; $6d97: $19
	rst SubAFromDE                                          ; $6d98: $df
	sub l                                            ; $6d99: $95
	ld d, a                                          ; $6d9a: $57
	ldh [$7f], a                                     ; $6d9b: $e0 $7f
	sbc b                                            ; $6d9d: $98
	sbc d                                            ; $6d9e: $9a
	ld h, [hl]                                       ; $6d9f: $66
	ld h, $3c                                        ; $6da0: $26 $3c
	inc e                                            ; $6da2: $1c
	jr @+$1d                                         ; $6da3: $18 $1b

	ldh [$9a], a                                     ; $6da5: $e0 $9a
	ld h, e                                          ; $6da7: $63
	ld [hl+], a                                      ; $6da8: $22
	ld a, $1c                                        ; $6da9: $3e $1c
	inc e                                            ; $6dab: $1c
	inc de                                           ; $6dac: $13
	ldh [$9d], a                                     ; $6dad: $e0 $9d
	ld a, [hl]                                       ; $6daf: $7e
	ld a, $77                                        ; $6db0: $3e $77
	sbc $5f                                          ; $6db2: $de $5f
	ldh [$7b], a                                     ; $6db4: $e0 $7b
	ld [bc], a                                       ; $6db6: $02
	rst SubAFromDE                                          ; $6db7: $df
	ld bc, $03df                                     ; $6db8: $01 $df $03
	rst SubAFromDE                                          ; $6dbb: $df
	rlca                                             ; $6dbc: $07
	add l                                            ; $6dbd: $85
	rrca                                             ; $6dbe: $0f
	ld c, $1e                                        ; $6dbf: $0e $1e
	dec e                                            ; $6dc1: $1d
	inc c                                            ; $6dc2: $0c
	dec bc                                           ; $6dc3: $0b
	dec e                                            ; $6dc4: $1d
	inc de                                           ; $6dc5: $13
	dec de                                           ; $6dc6: $1b
	ld d, $3f                                        ; $6dc7: $16 $3f
	dec h                                            ; $6dc9: $25
	ccf                                              ; $6dca: $3f
	cpl                                              ; $6dcb: $2f
	ccf                                              ; $6dcc: $3f
	ld [hl+], a                                      ; $6dcd: $22
	ccf                                              ; $6dce: $3f
	ld [hl+], a                                      ; $6dcf: $22
	ld a, [hl]                                       ; $6dd0: $7e
	ld b, l                                          ; $6dd1: $45
	ld a, [hl]                                       ; $6dd2: $7e
	ld b, l                                          ; $6dd3: $45
	ld a, h                                          ; $6dd4: $7c
	ld b, e                                          ; $6dd5: $43
	ld a, l                                          ; $6dd6: $7d
	ld b, e                                          ; $6dd7: $43
	ldh [$c1], a                                     ; $6dd8: $e0 $c1
	db $dd                                           ; $6dda: $dd
	db $10                                           ; $6ddb: $10
	ld sp, hl                                        ; $6ddc: $f9
	rst SubAFromDE                                          ; $6ddd: $df
	ld bc, $028d                                     ; $6dde: $01 $8d $02
	inc bc                                           ; $6de1: $03
	inc b                                            ; $6de2: $04
	rlca                                             ; $6de3: $07
	add hl, bc                                       ; $6de4: $09
	rrca                                             ; $6de5: $0f
	inc de                                           ; $6de6: $13
	ld e, $25                                        ; $6de7: $1e $25
	ld a, $4b                                        ; $6de9: $3e $4b
	ld a, h                                          ; $6deb: $7c
	ld d, a                                          ; $6dec: $57
	ld a, b                                          ; $6ded: $78
	xor a                                            ; $6dee: $af
	pop af                                           ; $6def: $f1
	xor [hl]                                         ; $6df0: $ae
	di                                               ; $6df1: $f3
	rst AddAOntoHL                                          ; $6df2: $ef
	rst SubAFromDE                                          ; $6df3: $df
	ld hl, sp-$80                                    ; $6df4: $f8 $80
	ld a, [hl]                                       ; $6df6: $7e
	ld b, [hl]                                       ; $6df7: $46
	dec l                                            ; $6df8: $2d
	inc sp                                           ; $6df9: $33
	rla                                              ; $6dfa: $17
	jr jr_067_6e38                                   ; $6dfb: $18 $3b

	inc a                                            ; $6dfd: $3c
	ld l, h                                          ; $6dfe: $6c
	ld e, a                                          ; $6dff: $5f
	db $dd                                           ; $6e00: $dd
	cp a                                             ; $6e01: $bf

jr_067_6e02:
	ld h, c                                          ; $6e02: $61

jr_067_6e03:
	rst $38                                          ; $6e03: $ff
	add b                                            ; $6e04: $80
	rst $38                                          ; $6e05: $ff
	rlca                                             ; $6e06: $07
	rst $38                                          ; $6e07: $ff
	jr jr_067_6e03                                   ; $6e08: $18 $f9

	ld h, b                                          ; $6e0a: $60
	db $e3                                           ; $6e0b: $e3
	add b                                            ; $6e0c: $80
	adc a                                            ; $6e0d: $8f
	rlca                                             ; $6e0e: $07
	ccf                                              ; $6e0f: $3f
	inc a                                            ; $6e10: $3c
	ld a, l                                          ; $6e11: $7d
	ld hl, sp-$05                                    ; $6e12: $f8 $fb
	ld de, $f392                                     ; $6e14: $11 $92 $f3
	inc sp                                           ; $6e17: $33
	or $67                                           ; $6e18: $f6 $67
	db $ec                                           ; $6e1a: $ec
	ld l, [hl]                                       ; $6e1b: $6e
	ld hl, sp-$04                                    ; $6e1c: $f8 $fc
	ldh a, [$f8]                                     ; $6e1e: $f0 $f8
	ldh [$f0], a                                     ; $6e20: $e0 $f0
	ldh [$e0], a                                     ; $6e22: $e0 $e0
	pop bc                                           ; $6e24: $c1
	ld [hl], a                                       ; $6e25: $77
	nop                                              ; $6e26: $00
	add b                                            ; $6e27: $80
	inc c                                            ; $6e28: $0c
	rrca                                             ; $6e29: $0f
	jr nc, jr_067_6e6b                               ; $6e2a: $30 $3f

	ld b, e                                          ; $6e2c: $43
	ld a, a                                          ; $6e2d: $7f
	adc h                                            ; $6e2e: $8c
	rst $38                                          ; $6e2f: $ff
	inc sp                                           ; $6e30: $33
	db $fc                                           ; $6e31: $fc
	ld c, a                                          ; $6e32: $4f
	ldh a, [$b3]                                     ; $6e33: $f0 $b3
	rst GetHLinHL                                          ; $6e35: $cf
	ld l, l                                          ; $6e36: $6d
	sbc [hl]                                         ; $6e37: $9e

jr_067_6e38:
	rst SubAFromHL                                          ; $6e38: $d7
	jr c, @-$4f                                      ; $6e39: $38 $af

	ld [hl], b                                       ; $6e3b: $70
	rst SubAFromDE                                          ; $6e3c: $df
	ld h, b                                          ; $6e3d: $60
	cp a                                             ; $6e3e: $bf
	ret nz                                           ; $6e3f: $c0

	ld a, a                                          ; $6e40: $7f
	add b                                            ; $6e41: $80
	ld a, a                                          ; $6e42: $7f
	add b                                            ; $6e43: $80
	ld b, b                                          ; $6e44: $40
	ld b, b                                          ; $6e45: $40
	jr nc, @-$7e                                     ; $6e46: $30 $80

	jr nc, jr_067_6e82                               ; $6e48: $30 $38

	jr z, jr_067_6e78                                ; $6e4a: $28 $2c

	inc [hl]                                         ; $6e4c: $34
	ld a, [de]                                       ; $6e4d: $1a
	ld d, $1e                                        ; $6e4e: $16 $1e
	ld [de], a                                       ; $6e50: $12
	dec d                                            ; $6e51: $15
	dec de                                           ; $6e52: $1b
	rrca                                             ; $6e53: $0f
	add hl, bc                                       ; $6e54: $09
	ld c, $09                                        ; $6e55: $0e $09
	rrca                                             ; $6e57: $0f
	ld [$080f], sp                                   ; $6e58: $08 $0f $08
	sbc a                                            ; $6e5b: $9f
	sbc b                                            ; $6e5c: $98
	ld a, a                                          ; $6e5d: $7f
	add sp, -$52                                     ; $6e5e: $e8 $ae
	ld a, c                                          ; $6e60: $79
	xor $39                                          ; $6e61: $ee $39
	ld a, h                                          ; $6e63: $7c
	sbc e                                            ; $6e64: $9b
	sbc c                                            ; $6e65: $99
	rst $38                                          ; $6e66: $ff
	sbc h                                            ; $6e67: $9c
	ld e, c                                          ; $6e68: $59
	rst $38                                          ; $6e69: $ff
	ei                                               ; $6e6a: $fb

jr_067_6e6b:
	ld a, e                                          ; $6e6b: $7b
	cp $87                                           ; $6e6c: $fe $87
	ld a, [hl]                                       ; $6e6e: $7e
	rst $38                                          ; $6e6f: $ff
	adc h                                            ; $6e70: $8c
	cp $1f                                           ; $6e71: $fe $1f
	rst $38                                          ; $6e73: $ff
	scf                                              ; $6e74: $37
	rst $38                                          ; $6e75: $ff
	and $f7                                          ; $6e76: $e6 $f7

jr_067_6e78:
	xor $aa                                          ; $6e78: $ee $aa
	adc $5a                                          ; $6e7a: $ce $5a
	adc $5b                                          ; $6e7c: $ce $5b
	sbc [hl]                                         ; $6e7e: $9e
	or e                                             ; $6e7f: $b3
	sbc d                                            ; $6e80: $9a
	or e                                             ; $6e81: $b3

jr_067_6e82:
	or e                                             ; $6e82: $b3
	db $e3                                           ; $6e83: $e3
	or e                                             ; $6e84: $b3
	db $e3                                           ; $6e85: $e3
	ldh [$c1], a                                     ; $6e86: $e0 $c1
	rst SubAFromDE                                          ; $6e88: $df
	ld a, a                                          ; $6e89: $7f
	sbc [hl]                                         ; $6e8a: $9e
	sbc [hl]                                         ; $6e8b: $9e
	ld a, e                                          ; $6e8c: $7b
	ld l, b                                          ; $6e8d: $68
	sbc d                                            ; $6e8e: $9a
	ld a, a                                          ; $6e8f: $7f
	rst $38                                          ; $6e90: $ff
	rst $38                                          ; $6e91: $ff
	ret nz                                           ; $6e92: $c0

	ret nz                                           ; $6e93: $c0

	cp $df                                           ; $6e94: $fe $df
	ldh a, [hDisp1_WX]                                     ; $6e96: $f0 $96
	adc h                                            ; $6e98: $8c
	inc e                                            ; $6e99: $1c
	dec de                                           ; $6e9a: $1b
	rlca                                             ; $6e9b: $07
	ld e, $01                                        ; $6e9c: $1e $01
	rra                                              ; $6e9e: $1f
	nop                                              ; $6e9f: $00
	ld d, $7b                                        ; $6ea0: $16 $7b
	cp $9c                                           ; $6ea2: $fe $9c
	ld d, d                                          ; $6ea4: $52
	nop                                              ; $6ea5: $00
	add b                                            ; $6ea6: $80
	ldh a, [$df]                                     ; $6ea7: $f0 $df
	add b                                            ; $6ea9: $80
	rst SubAFromDE                                          ; $6eaa: $df

jr_067_6eab:
	rst SubAFromDE                                          ; $6eab: $df
	sub d                                            ; $6eac: $92
	and $f9                                          ; $6ead: $e6 $f9
	ld e, e                                          ; $6eaf: $5b
	db $fc                                           ; $6eb0: $fc
	ld a, b                                          ; $6eb1: $78
	rst SubAFromBC                                          ; $6eb2: $e7
	ld h, a                                          ; $6eb3: $67
	ret c                                            ; $6eb4: $d8

	rst SubAFromDE                                          ; $6eb5: $df
	rst $38                                          ; $6eb6: $ff
	rst AddAOntoHL                                          ; $6eb7: $ef
	ldh a, [$9c]                                     ; $6eb8: $f0 $9c
	ld a, e                                          ; $6eba: $7b
	ld h, h                                          ; $6ebb: $64
	ld a, a                                          ; $6ebc: $7f
	ld h, $85                                        ; $6ebd: $26 $85
	cp $ff                                           ; $6ebf: $fe $ff
	ld [bc], a                                       ; $6ec1: $02
	rst $38                                          ; $6ec2: $ff
	ld bc, $f00f                                     ; $6ec3: $01 $0f $f0
	di                                               ; $6ec6: $f3
	cp h                                             ; $6ec7: $bc
	rst $38                                          ; $6ec8: $ff
	sub $ff                                          ; $6ec9: $d6 $ff
	ld d, l                                          ; $6ecb: $55
	rst $38                                          ; $6ecc: $ff
	ld c, d                                          ; $6ecd: $4a
	rst $38                                          ; $6ece: $ff
	ld l, d                                          ; $6ecf: $6a
	rst $38                                          ; $6ed0: $ff
	ldh [c], a                                       ; $6ed1: $e2
	rst $38                                          ; $6ed2: $ff
	ldh [$bf], a                                     ; $6ed3: $e0 $bf
	ldh [$3f], a                                     ; $6ed5: $e0 $3f
	ld [hl], b                                       ; $6ed7: $70
	ccf                                              ; $6ed8: $3f
	ldh [$c1], a                                     ; $6ed9: $e0 $c1
	add b                                            ; $6edb: $80
	ldh a, [rIE]                                     ; $6edc: $f0 $ff
	nop                                              ; $6ede: $00
	rst $38                                          ; $6edf: $ff
	ldh [$1f], a                                     ; $6ee0: $e0 $1f
	jr c, jr_067_6eab                                ; $6ee2: $38 $c7

	call z, Call_067_66f3                            ; $6ee4: $cc $f3 $66
	add hl, sp                                       ; $6ee7: $39
	inc sp                                           ; $6ee8: $33
	inc e                                            ; $6ee9: $1c
	add hl, de                                       ; $6eea: $19
	ld c, $0c                                        ; $6eeb: $0e $0c
	rlca                                             ; $6eed: $07
	ld [bc], a                                       ; $6eee: $02
	rlca                                             ; $6eef: $07
	add [hl]                                         ; $6ef0: $86
	add e                                            ; $6ef1: $83
	ld l, l                                          ; $6ef2: $6d
	jp Jump_067_61bf                                 ; $6ef3: $c3 $bf $61


	ld a, [hl]                                       ; $6ef6: $7e
	ld hl, $305f                                     ; $6ef7: $21 $5f $30
	ld e, a                                          ; $6efa: $5f
	add b                                            ; $6efb: $80
	jr nc, jr_067_6f1e                               ; $6efc: $30 $20

	jr nz, @+$42                                     ; $6efe: $20 $40

	ld b, b                                          ; $6f00: $40
	add b                                            ; $6f01: $80
	ret nz                                           ; $6f02: $c0

	cp a                                             ; $6f03: $bf
	rst $38                                          ; $6f04: $ff
	xor a                                            ; $6f05: $af
	db $f4                                           ; $6f06: $f4
	ld d, a                                          ; $6f07: $57
	ld l, c                                          ; $6f08: $69
	xor l                                            ; $6f09: $ad
	jp nc, $f4ab                                     ; $6f0a: $d2 $ab $f4

	ld e, [hl]                                       ; $6f0d: $5e
	jp hl                                            ; $6f0e: $e9


	push de                                          ; $6f0f: $d5
	ei                                               ; $6f10: $fb
	or e                                             ; $6f11: $b3
	cp $f3                                           ; $6f12: $fe $f3
	sbc $df                                          ; $6f14: $de $df
	ld l, a                                          ; $6f16: $6f
	ld h, h                                          ; $6f17: $64
	rst $38                                          ; $6f18: $ff
	inc sp                                           ; $6f19: $33
	rst $38                                          ; $6f1a: $ff
	add e                                            ; $6f1b: $83
	db $db                                           ; $6f1c: $db
	inc a                                            ; $6f1d: $3c

jr_067_6f1e:
	db $ec                                           ; $6f1e: $ec
	rra                                              ; $6f1f: $1f
	add a                                            ; $6f20: $87
	rst $38                                          ; $6f21: $ff
	ld a, [hl]                                       ; $6f22: $7e
	ld sp, hl                                        ; $6f23: $f9
	and c                                            ; $6f24: $a1
	ld a, a                                          ; $6f25: $7f
	ld e, a                                          ; $6f26: $5f
	cp a                                             ; $6f27: $bf
	inc l                                            ; $6f28: $2c
	rst SubAFromDE                                          ; $6f29: $df
	dec [hl]                                         ; $6f2a: $35
	rst GetHLinHL                                          ; $6f2b: $cf
	sub [hl]                                         ; $6f2c: $96
	rst AddAOntoHL                                          ; $6f2d: $ef
	sub e                                            ; $6f2e: $93
	and $46                                          ; $6f2f: $e6 $46
	di                                               ; $6f31: $f3
	ld c, e                                          ; $6f32: $4b
	di                                               ; $6f33: $f3
	dec bc                                           ; $6f34: $0b
	di                                               ; $6f35: $f3
	dec h                                            ; $6f36: $25
	ei                                               ; $6f37: $fb
	ld [hl], a                                       ; $6f38: $77
	cp $9c                                           ; $6f39: $fe $9c
	ld hl, $01ff                                     ; $6f3b: $21 $ff $01
	ld [hl], a                                       ; $6f3e: $77
	cp $9e                                           ; $6f3f: $fe $9e
	cp a                                             ; $6f41: $bf
	ld [hl], a                                       ; $6f42: $77
	cp $9e                                           ; $6f43: $fe $9e
	add hl, bc                                       ; $6f45: $09
	ld l, e                                          ; $6f46: $6b
	cp $9d                                           ; $6f47: $fe $9d
	xor e                                            ; $6f49: $ab
	rst $38                                          ; $6f4a: $ff
	ld [hl], a                                       ; $6f4b: $77
	cp $89                                           ; $6f4c: $fe $89
	ld l, e                                          ; $6f4e: $6b
	cp $4b                                           ; $6f4f: $fe $4b
	cp $5f                                           ; $6f51: $fe $5f
	rst $38                                          ; $6f53: $ff
	ld d, a                                          ; $6f54: $57
	db $fc                                           ; $6f55: $fc
	rst SubAFromHL                                          ; $6f56: $d7
	db $fd                                           ; $6f57: $fd
	or a                                             ; $6f58: $b7
	rst $38                                          ; $6f59: $ff
	xor [hl]                                         ; $6f5a: $ae
	cp $ac                                           ; $6f5b: $fe $ac
	db $fc                                           ; $6f5d: $fc
	xor b                                            ; $6f5e: $a8
	ld hl, sp+$38                                    ; $6f5f: $f8 $38
	ld hl, sp+$70                                    ; $6f61: $f8 $70
	ldh a, [rPCM34]                                  ; $6f63: $f0 $77
	cp $df                                           ; $6f65: $fe $df
	ret nc                                           ; $6f67: $d0

	rst SubAFromDE                                          ; $6f68: $df
	sub b                                            ; $6f69: $90
	rst SubAFromDE                                          ; $6f6a: $df
	adc b                                            ; $6f6b: $88

jr_067_6f6c:
	rst $38                                          ; $6f6c: $ff
	rst SubAFromDE                                          ; $6f6d: $df
	ldh [hDisp1_OBP1], a                                     ; $6f6e: $e0 $94
	sbc b                                            ; $6f70: $98
	ld hl, sp-$3a                                    ; $6f71: $f8 $c6
	cp $07                                           ; $6f73: $fe $07
	ei                                               ; $6f75: $fb
	rlca                                             ; $6f76: $07
	ld sp, hl                                        ; $6f77: $f9
	rrca                                             ; $6f78: $0f
	di                                               ; $6f79: $f3
	dec b                                            ; $6f7a: $05
	ld a, e                                          ; $6f7b: $7b
	cp d                                             ; $6f7c: $ba
	ld a, a                                          ; $6f7d: $7f
	ld e, b                                          ; $6f7e: $58
	ld a, a                                          ; $6f7f: $7f
	cp $7a                                           ; $6f80: $fe $7a
	cpl                                              ; $6f82: $2f
	sub h                                            ; $6f83: $94
	ld a, a                                          ; $6f84: $7f
	ret nz                                           ; $6f85: $c0

	ccf                                              ; $6f86: $3f
	ld b, b                                          ; $6f87: $40
	cp a                                             ; $6f88: $bf
	ld h, b                                          ; $6f89: $60
	sbc a                                            ; $6f8a: $9f
	jr nz, jr_067_6f6c                               ; $6f8b: $20 $df

	or b                                             ; $6f8d: $b0
	rst GetHLinHL                                          ; $6f8e: $cf
	ld [hl], a                                       ; $6f8f: $77
	cp $66                                           ; $6f90: $fe $66
	jp z, $c87f                                      ; $6f92: $ca $7f $c8

	add b                                            ; $6f95: $80
	add sp, -$68                                     ; $6f96: $e8 $98
	db $f4                                           ; $6f98: $f4
	inc c                                            ; $6f99: $0c
	inc a                                            ; $6f9a: $3c
	call c, $af77                                    ; $6f9b: $dc $77 $af
	ei                                               ; $6f9e: $fb
	ld e, [hl]                                       ; $6f9f: $5e
	rst $38                                          ; $6fa0: $ff
	cp [hl]                                          ; $6fa1: $be
	db $fd                                           ; $6fa2: $fd
	cp [hl]                                          ; $6fa3: $be
	cp e                                             ; $6fa4: $bb
	db $fd                                           ; $6fa5: $fd
	rst FarCall                                          ; $6fa6: $f7
	ld a, [$c43f]                                    ; $6fa7: $fa $3f $c4
	cp $f9                                           ; $6faa: $fe $f9
	di                                               ; $6fac: $f3
	ld a, a                                          ; $6fad: $7f
	ld a, a                                          ; $6fae: $7f
	sbc h                                            ; $6faf: $9c
	sbc e                                            ; $6fb0: $9b
	rst SubAFromBC                                          ; $6fb1: $e7
	rst JumpTable                                          ; $6fb2: $c7
	ld hl, sp+$30                                    ; $6fb3: $f8 $30
	adc e                                            ; $6fb5: $8b
	rst $38                                          ; $6fb6: $ff
	ld a, a                                          ; $6fb7: $7f
	rst $38                                          ; $6fb8: $ff
	cp h                                             ; $6fb9: $bc
	rst GetHLinHL                                          ; $6fba: $cf
	xor $1f                                          ; $6fbb: $ee $1f
	db $dd                                           ; $6fbd: $dd
	ccf                                              ; $6fbe: $3f
	ld a, $ff                                        ; $6fbf: $3e $ff
	rst SubAFromDE                                          ; $6fc1: $df
	rst $38                                          ; $6fc2: $ff
	xor d                                            ; $6fc3: $aa
	ld a, [hl]                                       ; $6fc4: $7e
	ld l, d                                          ; $6fc5: $6a
	cp $db                                           ; $6fc6: $fe $db
	rst $38                                          ; $6fc8: $ff
	sbc e                                            ; $6fc9: $9b
	ld a, e                                          ; $6fca: $7b
	ld a, b                                          ; $6fcb: $78
	sbc d                                            ; $6fcc: $9a
	set 7, a                                         ; $6fcd: $cb $ff
	sub e                                            ; $6fcf: $93
	rst $38                                          ; $6fd0: $ff
	sub l                                            ; $6fd1: $95
	ld a, e                                          ; $6fd2: $7b
	cp $87                                           ; $6fd3: $fe $87
	and l                                            ; $6fd5: $a5
	rst $38                                          ; $6fd6: $ff
	ld [$cafe], a                                    ; $6fd7: $ea $fe $ca
	cp $9a                                           ; $6fda: $fe $9a
	cp $d4                                           ; $6fdc: $fe $d4
	db $fc                                           ; $6fde: $fc
	db $f4                                           ; $6fdf: $f4
	inc a                                            ; $6fe0: $3c
	ld hl, sp-$68                                    ; $6fe1: $f8 $98
	ld hl, sp+$58                                    ; $6fe3: $f8 $58
	ldh a, [rAUD1SWEEP]                              ; $6fe5: $f0 $10
	ldh a, [$b0]                                     ; $6fe7: $f0 $b0
	ldh [rAUD4LEN], a                                ; $6fe9: $e0 $20
	ldh [$60], a                                     ; $6feb: $e0 $60
	reti                                             ; $6fed: $d9


	ldh [$9e], a                                     ; $6fee: $e0 $9e
	and b                                            ; $6ff0: $a0
	ld a, e                                          ; $6ff1: $7b
	cp $db                                           ; $6ff2: $fe $db
	ret nz                                           ; $6ff4: $c0

	db $db                                           ; $6ff5: $db
	ld b, b                                          ; $6ff6: $40
	rst SubAFromDE                                          ; $6ff7: $df
	add b                                            ; $6ff8: $80
	ld c, [hl]                                       ; $6ff9: $4e
	ld c, d                                          ; $6ffa: $4a
	rst SubAFromDE                                          ; $6ffb: $df
	add b                                            ; $6ffc: $80
	db $db                                           ; $6ffd: $db
	ret nz                                           ; $6ffe: $c0

	ld [hl], e                                       ; $6fff: $73
	rst SubAFromHL                                          ; $7000: $d7
	sbc b                                            ; $7001: $98
	and b                                            ; $7002: $a0
	ldh a, [hDisp1_SCY]                                     ; $7003: $f0 $90
	ldh a, [hDisp1_SCY]                                     ; $7005: $f0 $90
	ld hl, sp-$78                                    ; $7007: $f8 $88
	ld [hl], a                                       ; $7009: $77
	cp $ef                                           ; $700a: $fe $ef
	ld l, a                                          ; $700c: $6f

jr_067_700d:
	sub $9a                                          ; $700d: $d6 $9a
	add sp, $28                                      ; $700f: $e8 $28
	or b                                             ; $7011: $b0
	ld [hl], b                                       ; $7012: $70
	ld h, b                                          ; $7013: $60
	ld a, e                                          ; $7014: $7b
	sbc a                                            ; $7015: $9f
	ld a, a                                          ; $7016: $7f
	or c                                             ; $7017: $b1
	rst SubAFromDE                                          ; $7018: $df
	ret nz                                           ; $7019: $c0

	ld a, a                                          ; $701a: $7f
	rst GetHLinHL                                          ; $701b: $cf
	ld a, a                                          ; $701c: $7f
	db $f4                                           ; $701d: $f4
	sbc c                                            ; $701e: $99
	ld d, b                                          ; $701f: $50
	ldh a, [$b0]                                     ; $7020: $f0 $b0
	ret nc                                           ; $7022: $d0

	ldh [rAUD4LEN], a                                ; $7023: $e0 $20
	ld a, e                                          ; $7025: $7b
	di                                               ; $7026: $f3
	ld a, a                                          ; $7027: $7f
	ldh a, [c]                                       ; $7028: $f2
	sbc [hl]                                         ; $7029: $9e
	and b                                            ; $702a: $a0
	db $dd                                           ; $702b: $dd
	jr nz, jr_067_700d                               ; $702c: $20 $df

	ld b, b                                          ; $702e: $40
	ei                                               ; $702f: $fb
	ld a, [de]                                       ; $7030: $1a
	nop                                              ; $7031: $00
	sbc $99                                          ; $7032: $de $99
	sbc h                                            ; $7034: $9c
	xor d                                            ; $7035: $aa
	sbc c                                            ; $7036: $99
	nop                                              ; $7037: $00
	ld l, e                                          ; $7038: $6b
	ei                                               ; $7039: $fb
	sbc [hl]                                         ; $703a: $9e
	ld d, l                                          ; $703b: $55
	ld l, a                                          ; $703c: $6f
	ei                                               ; $703d: $fb
	sub h                                            ; $703e: $94
	ld de, $8800                                     ; $703f: $11 $00 $88
	ld d, l                                          ; $7042: $55
	sbc c                                            ; $7043: $99
	sbc c                                            ; $7044: $99
	adc b                                            ; $7045: $88
	adc b                                            ; $7046: $88
	xor d                                            ; $7047: $aa
	sbc c                                            ; $7048: $99
	sbc c                                            ; $7049: $99
	and a                                            ; $704a: $a7
	ld bc, $979b                                     ; $704b: $01 $9b $97
	add c                                            ; $704e: $81
	add a                                            ; $704f: $87
	add e                                            ; $7050: $83
	ld a, e                                          ; $7051: $7b
	cp $84                                           ; $7052: $fe $84
	add [hl]                                         ; $7054: $86
	adc a                                            ; $7055: $8f
	add [hl]                                         ; $7056: $86
	xor a                                            ; $7057: $af
	add [hl]                                         ; $7058: $86
	xor a                                            ; $7059: $af
	adc a                                            ; $705a: $8f
	cp [hl]                                          ; $705b: $be
	adc [hl]                                         ; $705c: $8e
	cp [hl]                                          ; $705d: $be
	adc [hl]                                         ; $705e: $8e
	cp $8e                                           ; $705f: $fe $8e
	cp $96                                           ; $7061: $fe $96
	cp $94                                           ; $7063: $fe $94
	db $fc                                           ; $7065: $fc
	sub h                                            ; $7066: $94
	cp h                                             ; $7067: $bc
	call nc, $d4be                                   ; $7068: $d4 $be $d4
	cp [hl]                                          ; $706b: $be
	sub $b7                                          ; $706c: $d6 $b7
	sbc $7b                                          ; $706e: $de $7b
	cp $9a                                           ; $7070: $fe $9a
	rst SubAFromDE                                          ; $7072: $df
	or a                                             ; $7073: $b7
	rst SubAFromDE                                          ; $7074: $df
	sub a                                            ; $7075: $97
	rst $38                                          ; $7076: $ff
	ld [hl], a                                       ; $7077: $77
	cp $95                                           ; $7078: $fe $95
	add a                                            ; $707a: $87
	rst $38                                          ; $707b: $ff
	ld c, [hl]                                       ; $707c: $4e
	ld a, [hl]                                       ; $707d: $7e
	ld c, [hl]                                       ; $707e: $4e
	ld a, [hl]                                       ; $707f: $7e
	ld c, d                                          ; $7080: $4a
	ld a, d                                          ; $7081: $7a
	ld a, [hl+]                                      ; $7082: $2a
	ld a, [hl-]                                      ; $7083: $3a
	ld [hl], a                                       ; $7084: $77
	cp $df                                           ; $7085: $fe $df
	add hl, de                                       ; $7087: $19
	rst SubAFromDE                                          ; $7088: $df
	ld de, $c882                                     ; $7089: $11 $82 $c8
	or b                                             ; $708c: $b0
	ldh a, [$f8]                                     ; $708d: $f0 $f8
	inc c                                            ; $708f: $0c
	ld hl, sp-$64                                    ; $7090: $f8 $9c

jr_067_7092:
	nop                                              ; $7092: $00
	db $ec                                           ; $7093: $ec
	jr nz, jr_067_7092                               ; $7094: $20 $fc

	ld [hl], b                                       ; $7096: $70
	ret c                                            ; $7097: $d8

	ld hl, sp+$48                                    ; $7098: $f8 $48
	ld e, b                                          ; $709a: $58
	jr c, jr_067_710d                                ; $709b: $38 $70

	ld [de], a                                       ; $709d: $12
	ld d, b                                          ; $709e: $50
	ld [hl], a                                       ; $709f: $77
	ld h, b                                          ; $70a0: $60
	rst AddAOntoHL                                          ; $70a1: $ef
	nop                                              ; $70a2: $00
	cp a                                             ; $70a3: $bf
	db $10                                           ; $70a4: $10
	ld e, a                                          ; $70a5: $5f
	ld [$bf0e], sp                                   ; $70a6: $08 $0e $bf
	nop                                              ; $70a9: $00
	db $e3                                           ; $70aa: $e3
	sub l                                            ; $70ab: $95
	jp nz, $c2e3                                     ; $70ac: $c2 $e3 $c2

	jp nz, $8382                                     ; $70af: $c2 $82 $83

	rlca                                             ; $70b2: $07
	inc c                                            ; $70b3: $0c
	rrca                                             ; $70b4: $0f
	rra                                              ; $70b5: $1f
	cp a                                             ; $70b6: $bf
	ccf                                              ; $70b7: $3f
	ccf                                              ; $70b8: $3f
	adc a                                            ; $70b9: $8f
	inc bc                                           ; $70ba: $03
	ccf                                              ; $70bb: $3f
	rlca                                             ; $70bc: $07
	add hl, de                                       ; $70bd: $19
	dec c                                            ; $70be: $0d
	inc bc                                           ; $70bf: $03
	inc bc                                           ; $70c0: $03
	add e                                            ; $70c1: $83
	inc bc                                           ; $70c2: $03

jr_067_70c3:
	add d                                            ; $70c3: $82
	inc bc                                           ; $70c4: $03
	sbc d                                            ; $70c5: $9a
	rlca                                             ; $70c6: $07
	rlca                                             ; $70c7: $07
	ld bc, $ba0a                                     ; $70c8: $01 $0a $ba
	dec b                                            ; $70cb: $05
	inc bc                                           ; $70cc: $03
	rlca                                             ; $70cd: $07
	rrca                                             ; $70ce: $0f
	rra                                              ; $70cf: $1f
	ccf                                              ; $70d0: $3f
	rst $38                                          ; $70d1: $ff
	add b                                            ; $70d2: $80
	inc bc                                           ; $70d3: $03
	rst $38                                          ; $70d4: $ff
	rrca                                             ; $70d5: $0f
	rst $38                                          ; $70d6: $ff
	ld a, a                                          ; $70d7: $7f
	cp $ff                                           ; $70d8: $fe $ff
	cp $8f                                           ; $70da: $fe $8f
	call c, $9d87                                    ; $70dc: $dc $87 $9d
	add a                                            ; $70df: $87
	sbc c                                            ; $70e0: $99
	rrca                                             ; $70e1: $0f
	ld a, [hl-]                                      ; $70e2: $3a
	rrca                                             ; $70e3: $0f
	ld [hl], a                                       ; $70e4: $77
	rra                                              ; $70e5: $1f

jr_067_70e6:
	ld [hl], b                                       ; $70e6: $70
	ccf                                              ; $70e7: $3f
	ld [hl], b                                       ; $70e8: $70
	dec e                                            ; $70e9: $1d
	ldh a, [rAUD3LOW]                                ; $70ea: $f0 $1d
	ldh a, [$15]                                     ; $70ec: $f0 $15
	ldh a, [$d5]                                     ; $70ee: $f0 $d5
	jr nc, jr_067_70e6                               ; $70f0: $30 $f4

	add b                                            ; $70f2: $80

Jump_067_70f3:
	ldh a, [rAUD1HIGH]                               ; $70f3: $f0 $14
	ldh a, [hDisp1_SCY]                                     ; $70f5: $f0 $90
	ldh a, [$d0]                                     ; $70f7: $f0 $d0
	ld [hl], b                                       ; $70f9: $70
	ldh a, [$30]                                     ; $70fa: $f0 $30
	ld [hl], l                                       ; $70fc: $75
	or b                                             ; $70fd: $b0
	push af                                          ; $70fe: $f5
	ld [hl], c                                       ; $70ff: $71
	push af                                          ; $7100: $f5
	ld [hl], c                                       ; $7101: $71
	ld d, a                                          ; $7102: $57
	pop hl                                           ; $7103: $e1
	and a                                            ; $7104: $a7
	ldh [c], a                                       ; $7105: $e2
	daa                                              ; $7106: $27
	ldh [c], a                                       ; $7107: $e2
	cpl                                              ; $7108: $2f
	jp nz, $c04f                                     ; $7109: $c2 $4f $c0

	ld e, a                                          ; $710c: $5f

jr_067_710d:
	push bc                                          ; $710d: $c5
	ld e, a                                          ; $710e: $5f
	add l                                            ; $710f: $85
	rst $38                                          ; $7110: $ff
	add c                                            ; $7111: $81
	sbc l                                            ; $7112: $9d
	rst $38                                          ; $7113: $ff
	add e                                            ; $7114: $83
	ld a, e                                          ; $7115: $7b
	cp a                                             ; $7116: $bf
	adc a                                            ; $7117: $8f
	ld b, $ff                                        ; $7118: $06 $ff
	ld b, [hl]                                       ; $711a: $46
	rst $38                                          ; $711b: $ff
	ld c, [hl]                                       ; $711c: $4e
	rst $38                                          ; $711d: $ff
	sbc l                                            ; $711e: $9d
	rst $38                                          ; $711f: $ff
	cp a                                             ; $7120: $bf
	rst FarCall                                          ; $7121: $f7
	ld a, a                                          ; $7122: $7f
	push af                                          ; $7123: $f5
	rst $38                                          ; $7124: $ff
	pop hl                                           ; $7125: $e1
	rst $38                                          ; $7126: $ff
	rst GetHLinHL                                          ; $7127: $cf
	ld h, a                                          ; $7128: $67
	jr nz, jr_067_70c3                               ; $7129: $20 $98

	adc [hl]                                         ; $712b: $8e
	add [hl]                                         ; $712c: $86
	xor [hl]                                         ; $712d: $ae
	add [hl]                                         ; $712e: $86
	xor [hl]                                         ; $712f: $ae
	adc [hl]                                         ; $7130: $8e
	cp a                                             ; $7131: $bf
	ld a, e                                          ; $7132: $7b
	ld e, $4f                                        ; $7133: $1e $4f
	jr nz, jr_067_719e                               ; $7135: $20 $67

	ld b, b                                          ; $7137: $40
	sub a                                            ; $7138: $97
	inc c                                            ; $7139: $0c
	nop                                              ; $713a: $00
	ld a, h                                          ; $713b: $7c
	jr nz, @-$06                                     ; $713c: $20 $f8

	ld [hl], b                                       ; $713e: $70
	ret z                                            ; $713f: $c8

	ret c                                            ; $7140: $d8

	dec bc                                           ; $7141: $0b
	ld b, b                                          ; $7142: $40
	ld a, a                                          ; $7143: $7f
	cp $9a                                           ; $7144: $fe $9a
	rlca                                             ; $7146: $07
	rra                                              ; $7147: $1f
	rrca                                             ; $7148: $0f
	dec bc                                           ; $7149: $0b

jr_067_714a:
	rrca                                             ; $714a: $0f
	ld e, a                                          ; $714b: $5f
	ld b, b                                          ; $714c: $40
	ld c, e                                          ; $714d: $4b
	ld h, b                                          ; $714e: $60
	sbc [hl]                                         ; $714f: $9e
	db $10                                           ; $7150: $10
	ld [hl], e                                       ; $7151: $73
	ld e, [hl]                                       ; $7152: $5e
	ld e, e                                          ; $7153: $5b
	ld h, b                                          ; $7154: $60
	ld c, a                                          ; $7155: $4f
	add b                                            ; $7156: $80
	ld a, a                                          ; $7157: $7f
	add d                                            ; $7158: $82
	ld a, a                                          ; $7159: $7f
	ld a, [hl]                                       ; $715a: $7e
	daa                                              ; $715b: $27
	add b                                            ; $715c: $80
	sbc [hl]                                         ; $715d: $9e
	ld l, h                                          ; $715e: $6c
	cp a                                             ; $715f: $bf
	jr jr_067_714a                                   ; $7160: $18 $e8

	sbc d                                            ; $7162: $9a
	ldh [$f8], a                                     ; $7163: $e0 $f8
	ldh a, [rAUD1ENV]                                ; $7165: $f0 $12
	ret nc                                           ; $7167: $d0

	rla                                              ; $7168: $17
	add b                                            ; $7169: $80
	sbc [hl]                                         ; $716a: $9e
	inc sp                                           ; $716b: $33
	cp a                                             ; $716c: $bf
	inc c                                            ; $716d: $0c
	inc bc                                           ; $716e: $03
	sbc d                                            ; $716f: $9a
	inc bc                                           ; $7170: $03
	adc a                                            ; $7171: $8f
	rrca                                             ; $7172: $0f
	add [hl]                                         ; $7173: $86
	rlca                                             ; $7174: $07
	dec hl                                           ; $7175: $2b
	add b                                            ; $7176: $80
	sub a                                            ; $7177: $97
	db $10                                           ; $7178: $10
	ld [hl], b                                       ; $7179: $70
	db $10                                           ; $717a: $10
	or b                                             ; $717b: $b0
	sub l                                            ; $717c: $95
	ldh a, [$f5]                                     ; $717d: $f0 $f5
	pop af                                           ; $717f: $f1
	ld c, e                                          ; $7180: $4b
	add b                                            ; $7181: $80
	ld a, [hl]                                       ; $7182: $7e
	jr nz, jr_067_718c                               ; $7183: $20 $07

	add b                                            ; $7185: $80
	ld a, a                                          ; $7186: $7f
	cp $9e                                           ; $7187: $fe $9e
	ld [$78bf], sp                                   ; $7189: $08 $bf $78

jr_067_718c:
	sbc b                                            ; $718c: $98
	sbc h                                            ; $718d: $9c
	sub b                                            ; $718e: $90
	ldh a, [c]                                       ; $718f: $f2
	ldh a, [rAUD2ENV]                                ; $7190: $f0 $17
	add b                                            ; $7192: $80
	sbc [hl]                                         ; $7193: $9e
	db $10                                           ; $7194: $10
	cp [hl]                                          ; $7195: $be
	inc b                                            ; $7196: $04
	inc bc                                           ; $7197: $03
	adc b                                            ; $7198: $88
	sbc c                                            ; $7199: $99
	ld [$0787], sp                                   ; $719a: $08 $87 $07
	sbc e                                            ; $719d: $9b

jr_067_719e:
	inc bc                                           ; $719e: $03
	rlca                                             ; $719f: $07
	cp a                                             ; $71a0: $bf
	ld a, [bc]                                       ; $71a1: $0a
	ld [hl], b                                       ; $71a2: $70
	dec sp                                           ; $71a3: $3b
	add b                                            ; $71a4: $80
	ld a, a                                          ; $71a5: $7f
	ldh a, [c]                                       ; $71a6: $f2
	add c                                            ; $71a7: $81
	ld [hl], b                                       ; $71a8: $70
	ld d, l                                          ; $71a9: $55
	pop af                                           ; $71aa: $f1
	push de                                          ; $71ab: $d5
	pop af                                           ; $71ac: $f1
	sub a                                            ; $71ad: $97
	pop hl                                           ; $71ae: $e1
	daa                                              ; $71af: $27
	ldh [c], a                                       ; $71b0: $e2
	daa                                              ; $71b1: $27
	di                                               ; $71b2: $f3
	inc e                                            ; $71b3: $1c
	rst AddAOntoHL                                          ; $71b4: $ef
	ld e, $ff                                        ; $71b5: $1e $ff
	inc c                                            ; $71b7: $0c
	ld a, a                                          ; $71b8: $7f
	add b                                            ; $71b9: $80
	di                                               ; $71ba: $f3
	adc h                                            ; $71bb: $8c
	cp a                                             ; $71bc: $bf
	ret nz                                           ; $71bd: $c0

	ld a, a                                          ; $71be: $7f
	ld b, b                                          ; $71bf: $40
	ld e, h                                          ; $71c0: $5c
	ld h, e                                          ; $71c1: $63
	jr nz, jr_067_7203                               ; $71c2: $20 $3f

	rra                                              ; $71c4: $1f
	rra                                              ; $71c5: $1f
	db $dd                                           ; $71c6: $dd
	inc c                                            ; $71c7: $0c
	rst SubAFromDE                                          ; $71c8: $df
	ld [$09df], sp                                   ; $71c9: $08 $df $09
	rst SubAFromDE                                          ; $71cc: $df
	ld de, $01df                                     ; $71cd: $11 $df $01
	ld a, a                                          ; $71d0: $7f
	ldh [$9b], a                                     ; $71d1: $e0 $9b
	rst $38                                          ; $71d3: $ff
	ld e, $fd                                        ; $71d4: $1e $fd
	ld c, $1f                                        ; $71d6: $0e $1f
	ldh [hDisp1_OBP0], a                                     ; $71d8: $e0 $93
	rst FarCall                                          ; $71da: $f7
	jr @-$04                                         ; $71db: $18 $fa

	rra                                              ; $71dd: $1f
	db $fd                                           ; $71de: $fd
	ld c, $7b                                        ; $71df: $0e $7b
	adc h                                            ; $71e1: $8c
	rst $38                                          ; $71e2: $ff
	add b                                            ; $71e3: $80
	or e                                             ; $71e4: $b3
	call z, $c02f                                    ; $71e5: $cc $2f $c0
	ld a, a                                          ; $71e8: $7f
	ldh [$9b], a                                     ; $71e9: $e0 $9b
	xor $1f                                          ; $71eb: $ee $1f
	ld a, l                                          ; $71ed: $7d
	adc [hl]                                         ; $71ee: $8e
	daa                                              ; $71ef: $27
	ldh [$b6], a                                     ; $71f0: $e0 $b6
	ld bc, $979b                                     ; $71f2: $01 $9b $97
	add c                                            ; $71f5: $81
	add a                                            ; $71f6: $87
	add e                                            ; $71f7: $83
	ld a, e                                          ; $71f8: $7b
	cp $97                                           ; $71f9: $fe $97
	add [hl]                                         ; $71fb: $86
	adc a                                            ; $71fc: $8f
	add [hl]                                         ; $71fd: $86
	xor a                                            ; $71fe: $af
	add a                                            ; $71ff: $87
	xor a                                            ; $7200: $af
	adc [hl]                                         ; $7201: $8e
	cp [hl]                                          ; $7202: $be

jr_067_7203:
	ld a, e                                          ; $7203: $7b
	cp $8f                                           ; $7204: $fe $8f
	cp $8e                                           ; $7206: $fe $8e
	cp $96                                           ; $7208: $fe $96
	cp $94                                           ; $720a: $fe $94
	db $fc                                           ; $720c: $fc
	sub h                                            ; $720d: $94
	cp h                                             ; $720e: $bc
	call nc, $d4be                                   ; $720f: $d4 $be $d4
	cp [hl]                                          ; $7212: $be
	sub $b7                                          ; $7213: $d6 $b7
	sbc $7b                                          ; $7215: $de $7b
	cp $9a                                           ; $7217: $fe $9a
	rst SubAFromDE                                          ; $7219: $df
	or a                                             ; $721a: $b7
	rst SubAFromDE                                          ; $721b: $df
	sub a                                            ; $721c: $97
	rst $38                                          ; $721d: $ff
	ld [hl], a                                       ; $721e: $77
	cp $95                                           ; $721f: $fe $95
	add a                                            ; $7221: $87
	rst $38                                          ; $7222: $ff
	ld c, [hl]                                       ; $7223: $4e
	ld a, [hl]                                       ; $7224: $7e
	ld c, [hl]                                       ; $7225: $4e
	ld a, [hl]                                       ; $7226: $7e

jr_067_7227:
	ld c, d                                          ; $7227: $4a
	ld a, d                                          ; $7228: $7a
	ld a, [hl+]                                      ; $7229: $2a
	ld a, [hl-]                                      ; $722a: $3a
	ld [hl], a                                       ; $722b: $77
	cp $df                                           ; $722c: $fe $df
	add hl, de                                       ; $722e: $19
	rst SubAFromDE                                          ; $722f: $df
	ld de, $f095                                     ; $7230: $11 $95 $f0
	ld hl, sp-$08                                    ; $7233: $f8 $f8
	adc h                                            ; $7235: $8c
	sbc b                                            ; $7236: $98

jr_067_7237:
	inc b                                            ; $7237: $04
	db $fc                                           ; $7238: $fc
	jr nz, jr_067_7237                               ; $7239: $20 $fc

	ld [hl], b                                       ; $723b: $70
	sbc $d8                                          ; $723c: $de $d8
	adc a                                            ; $723e: $8f
	ldh a, [rSVBK]                                   ; $723f: $f0 $70
	ld [hl], b                                       ; $7241: $70
	jr nc, jr_067_72b4                               ; $7242: $30 $70

	ld [hl-], a                                      ; $7244: $32
	ld h, b                                          ; $7245: $60
	ld [hl], a                                       ; $7246: $77
	ld h, b                                          ; $7247: $60
	rrca                                             ; $7248: $0f
	nop                                              ; $7249: $00
	rra                                              ; $724a: $1f
	db $10                                           ; $724b: $10
	rra                                              ; $724c: $1f
	ld [$bf0e], sp                                   ; $724d: $08 $0e $bf
	nop                                              ; $7250: $00
	db $e3                                           ; $7251: $e3
	adc l                                            ; $7252: $8d
	jp nz, $c2e3                                     ; $7253: $c2 $e3 $c2

	ret nz                                           ; $7256: $c0

	add e                                            ; $7257: $83
	add e                                            ; $7258: $83
	rlca                                             ; $7259: $07
	rrca                                             ; $725a: $0f
	inc c                                            ; $725b: $0c
	rra                                              ; $725c: $1f
	nop                                              ; $725d: $00
	ccf                                              ; $725e: $3f
	inc bc                                           ; $725f: $03
	dec a                                            ; $7260: $3d
	rlca                                             ; $7261: $07
	add hl, de                                       ; $7262: $19
	dec c                                            ; $7263: $0d
	ld bc, $03de                                     ; $7264: $01 $de $03
	sbc [hl]                                         ; $7267: $9e
	add d                                            ; $7268: $82

jr_067_7269:
	ld a, e                                          ; $7269: $7b
	cp $9a                                           ; $726a: $fe $9a
	ld a, [de]                                       ; $726c: $1a
	rlca                                             ; $726d: $07
	rlca                                             ; $726e: $07
	ld bc, $ba03                                     ; $726f: $01 $03 $ba
	ld bc, $0703                                     ; $7272: $01 $03 $07
	rrca                                             ; $7275: $0f
	rra                                              ; $7276: $1f
	ccf                                              ; $7277: $3f
	rst $38                                          ; $7278: $ff
	add b                                            ; $7279: $80
	inc bc                                           ; $727a: $03
	rst $38                                          ; $727b: $ff
	rrca                                             ; $727c: $0f
	rst $38                                          ; $727d: $ff
	ld a, a                                          ; $727e: $7f
	cp $ff                                           ; $727f: $fe $ff
	cp $8f                                           ; $7281: $fe $8f
	call c, $9d87                                    ; $7283: $dc $87 $9d
	add a                                            ; $7286: $87
	sbc c                                            ; $7287: $99
	rrca                                             ; $7288: $0f
	ld a, [hl-]                                      ; $7289: $3a
	rrca                                             ; $728a: $0f
	ld [hl], a                                       ; $728b: $77
	rra                                              ; $728c: $1f
	ld [hl], b                                       ; $728d: $70
	ccf                                              ; $728e: $3f
	ld [hl], b                                       ; $728f: $70
	dec e                                            ; $7290: $1d
	jr nc, @-$21                                     ; $7291: $30 $dd

	ret nc                                           ; $7293: $d0

	push af                                          ; $7294: $f5
	ldh a, [$35]                                     ; $7295: $f0 $35
	ldh a, [rAUD1HIGH]                               ; $7297: $f0 $14
	sbc e                                            ; $7299: $9b
	ldh a, [$d4]                                     ; $729a: $f0 $d4
	ld [hl], b                                       ; $729c: $70
	ldh a, [$dd]                                     ; $729d: $f0 $dd
	jr nc, jr_067_7227                               ; $729f: $30 $86

	ldh a, [$f5]                                     ; $72a1: $f0 $f5
	ldh a, [$f5]                                     ; $72a3: $f0 $f5
	ld [hl], c                                       ; $72a5: $71
	push de                                          ; $72a6: $d5
	pop af                                           ; $72a7: $f1
	rst SubAFromHL                                          ; $72a8: $d7
	pop hl                                           ; $72a9: $e1
	and a                                            ; $72aa: $a7
	ldh [c], a                                       ; $72ab: $e2
	daa                                              ; $72ac: $27
	ldh [c], a                                       ; $72ad: $e2
	cpl                                              ; $72ae: $2f
	jp nz, $c04f                                     ; $72af: $c2 $4f $c0

	ld e, a                                          ; $72b2: $5f
	push bc                                          ; $72b3: $c5

jr_067_72b4:
	ld e, a                                          ; $72b4: $5f
	add l                                            ; $72b5: $85
	rst $38                                          ; $72b6: $ff
	add c                                            ; $72b7: $81
	rst $38                                          ; $72b8: $ff
	add e                                            ; $72b9: $83
	ld a, e                                          ; $72ba: $7b
	cp a                                             ; $72bb: $bf
	adc a                                            ; $72bc: $8f
	ld b, $ff                                        ; $72bd: $06 $ff
	ld b, [hl]                                       ; $72bf: $46
	rst $38                                          ; $72c0: $ff
	ld c, [hl]                                       ; $72c1: $4e
	rst $38                                          ; $72c2: $ff
	sbc l                                            ; $72c3: $9d
	rst $38                                          ; $72c4: $ff
	cp a                                             ; $72c5: $bf
	rst FarCall                                          ; $72c6: $f7
	ld a, a                                          ; $72c7: $7f
	push af                                          ; $72c8: $f5
	rst $38                                          ; $72c9: $ff
	pop hl                                           ; $72ca: $e1
	rst $38                                          ; $72cb: $ff
	rst GetHLinHL                                          ; $72cc: $cf
	ld e, a                                          ; $72cd: $5f
	jr nz, jr_067_7269                               ; $72ce: $20 $99

	xor [hl]                                         ; $72d0: $ae
	add [hl]                                         ; $72d1: $86
	xor [hl]                                         ; $72d2: $ae
	adc [hl]                                         ; $72d3: $8e
	cp a                                             ; $72d4: $bf
	adc a                                            ; $72d5: $8f
	ld b, a                                          ; $72d6: $47
	jr nz, jr_067_7348                               ; $72d7: $20 $6f

	ld b, b                                          ; $72d9: $40
	sbc d                                            ; $72da: $9a
	inc c                                            ; $72db: $0c
	nop                                              ; $72dc: $00
	ld a, h                                          ; $72dd: $7c
	jr nz, @-$06                                     ; $72de: $20 $f8

	ld [hl], e                                       ; $72e0: $73
	ld a, $7b                                        ; $72e1: $3e $7b
	ld b, b                                          ; $72e3: $40
	sbc l                                            ; $72e4: $9d
	ld [hl], b                                       ; $72e5: $70
	rst FarCall                                          ; $72e6: $f7
	daa                                              ; $72e7: $27
	ld b, b                                          ; $72e8: $40
	ld a, a                                          ; $72e9: $7f
	cp $9a                                           ; $72ea: $fe $9a
	rlca                                             ; $72ec: $07
	rra                                              ; $72ed: $1f
	rrca                                             ; $72ee: $0f
	ld de, $570b                                     ; $72ef: $11 $0b $57
	ld b, b                                          ; $72f2: $40
	ld d, e                                          ; $72f3: $53
	ld h, b                                          ; $72f4: $60
	ld a, a                                          ; $72f5: $7f
	cp $9a                                           ; $72f6: $fe $9a
	sub b                                            ; $72f8: $90
	ldh a, [$d0]                                     ; $72f9: $f0 $d0
	ld [hl], b                                       ; $72fb: $70
	ld [hl], b                                       ; $72fc: $70
	ld d, a                                          ; $72fd: $57
	ld h, b                                          ; $72fe: $60
	inc bc                                           ; $72ff: $03
	add b                                            ; $7300: $80
	ld l, e                                          ; $7301: $6b
	add b                                            ; $7302: $80
	sbc [hl]                                         ; $7303: $9e
	ld l, h                                          ; $7304: $6c
	cp a                                             ; $7305: $bf
	jr jr_067_7370                                   ; $7306: $18 $68

	sbc b                                            ; $7308: $98
	ld h, b                                          ; $7309: $60
	ld hl, sp-$10                                    ; $730a: $f8 $f0
	sbc b                                            ; $730c: $98
	ret c                                            ; $730d: $d8

	or d                                             ; $730e: $b2
	ldh a, [$1f]                                     ; $730f: $f0 $1f
	add b                                            ; $7311: $80
	sub d                                            ; $7312: $92
	inc [hl]                                         ; $7313: $34
	nop                                              ; $7314: $00
	inc bc                                           ; $7315: $03
	inc bc                                           ; $7316: $03
	rlca                                             ; $7317: $07
	rlca                                             ; $7318: $07
	rrca                                             ; $7319: $0f
	rrca                                             ; $731a: $0f
	add d                                            ; $731b: $82
	inc bc                                           ; $731c: $03
	add e                                            ; $731d: $83
	inc bc                                           ; $731e: $03
	dec de                                           ; $731f: $1b
	dec sp                                           ; $7320: $3b
	add b                                            ; $7321: $80
	sbc e                                            ; $7322: $9b
	ld [hl], b                                       ; $7323: $70
	db $10                                           ; $7324: $10
	or b                                             ; $7325: $b0
	sub b                                            ; $7326: $90
	sbc $f0                                          ; $7327: $de $f0
	sbc h                                            ; $7329: $9c
	push af                                          ; $732a: $f5
	ld [hl], b                                       ; $732b: $70
	ld [hl], l                                       ; $732c: $75
	inc bc                                           ; $732d: $03
	add b                                            ; $732e: $80
	ld c, e                                          ; $732f: $4b
	add b                                            ; $7330: $80
	ld a, a                                          ; $7331: $7f
	cp $9e                                           ; $7332: $fe $9e
	ld [$78bf], sp                                   ; $7334: $08 $bf $78
	sub b                                            ; $7337: $90
	sbc d                                            ; $7338: $9a
	add b                                            ; $7339: $80
	ldh a, [$f0]                                     ; $733a: $f0 $f0
	ldh a, [c]                                       ; $733c: $f2
	ld h, b                                          ; $733d: $60
	ld [hl], d                                       ; $733e: $72
	ld [hl], b                                       ; $733f: $70
	cpl                                              ; $7340: $2f
	nop                                              ; $7341: $00
	cp l                                             ; $7342: $bd
	ld de, $0700                                     ; $7343: $11 $00 $07
	adc b                                            ; $7346: $88
	sbc h                                            ; $7347: $9c

jr_067_7348:
	ld [$0787], sp                                   ; $7348: $08 $87 $07
	ld a, e                                          ; $734b: $7b
	add b                                            ; $734c: $80
	cp a                                             ; $734d: $bf
	inc bc                                           ; $734e: $03
	ld [hl], b                                       ; $734f: $70
	ld c, a                                          ; $7350: $4f
	nop                                              ; $7351: $00
	sbc h                                            ; $7352: $9c
	db $10                                           ; $7353: $10
	ldh a, [rAUD1SWEEP]                              ; $7354: $f0 $10
	ld a, e                                          ; $7356: $7b
	ld a, h                                          ; $7357: $7c
	add b                                            ; $7358: $80
	dec d                                            ; $7359: $15
	ld [hl], b                                       ; $735a: $70
	dec d                                            ; $735b: $15
	pop af                                           ; $735c: $f1
	push de                                          ; $735d: $d5
	pop af                                           ; $735e: $f1
	sub a                                            ; $735f: $97
	pop hl                                           ; $7360: $e1
	daa                                              ; $7361: $27
	ldh [c], a                                       ; $7362: $e2
	daa                                              ; $7363: $27
	db $fd                                           ; $7364: $fd
	inc de                                           ; $7365: $13
	rst SubAFromBC                                          ; $7366: $e7
	ld e, $f3                                        ; $7367: $1e $f3
	inc c                                            ; $7369: $0c
	ld a, a                                          ; $736a: $7f
	add b                                            ; $736b: $80
	di                                               ; $736c: $f3
	adc h                                            ; $736d: $8c
	cp a                                             ; $736e: $bf
	ret nz                                           ; $736f: $c0

jr_067_7370:
	ld a, a                                          ; $7370: $7f
	ld b, b                                          ; $7371: $40
	ld e, h                                          ; $7372: $5c
	ld h, e                                          ; $7373: $63
	jr nz, jr_067_73b5                               ; $7374: $20 $3f

	rra                                              ; $7376: $1f
	rra                                              ; $7377: $1f
	db $dd                                           ; $7378: $dd
	inc c                                            ; $7379: $0c
	rst SubAFromDE                                          ; $737a: $df
	ld [$09df], sp                                   ; $737b: $08 $df $09
	rst SubAFromDE                                          ; $737e: $df
	ld de, $01df                                     ; $737f: $11 $df $01
	sbc c                                            ; $7382: $99
	di                                               ; $7383: $f3
	rra                                              ; $7384: $1f
	rst AddAOntoHL                                          ; $7385: $ef
	rra                                              ; $7386: $1f
	rst $38                                          ; $7387: $ff
	ld c, $0f                                        ; $7388: $0e $0f
	ldh [$97], a                                     ; $738a: $e0 $97

Call_067_738c:
	ld a, [$7d0f]                                    ; $738c: $fa $0f $7d
	adc [hl]                                         ; $738f: $8e
	rst $38                                          ; $7390: $ff
	add b                                            ; $7391: $80

Jump_067_7392:
	or e                                             ; $7392: $b3
	call z, $e037                                    ; $7393: $cc $37 $e0
	sub c                                            ; $7396: $91
	rst FarCall                                          ; $7397: $f7
	dec de                                           ; $7398: $1b
	rst $38                                          ; $7399: $ff
	rra                                              ; $739a: $1f
	db $ed                                           ; $739b: $ed
	rra                                              ; $739c: $1f
	ld a, d                                          ; $739d: $7a
	adc a                                            ; $739e: $8f
	push af                                          ; $739f: $f5
	adc [hl]                                         ; $73a0: $8e
	cp a                                             ; $73a1: $bf
	ret nz                                           ; $73a2: $c0

	ld [hl], e                                       ; $73a3: $73
	ld c, h                                          ; $73a4: $4c
	ccf                                              ; $73a5: $3f
	ldh [$c1], a                                     ; $73a6: $e0 $c1
	ld bc, $979b                                     ; $73a8: $01 $9b $97
	add c                                            ; $73ab: $81
	add a                                            ; $73ac: $87
	add e                                            ; $73ad: $83
	ld a, e                                          ; $73ae: $7b
	cp $97                                           ; $73af: $fe $97
	add [hl]                                         ; $73b1: $86
	adc a                                            ; $73b2: $8f
	add [hl]                                         ; $73b3: $86
	xor a                                            ; $73b4: $af

jr_067_73b5:
	add a                                            ; $73b5: $87
	xor a                                            ; $73b6: $af
	adc [hl]                                         ; $73b7: $8e
	cp [hl]                                          ; $73b8: $be
	ld a, e                                          ; $73b9: $7b
	cp $8f                                           ; $73ba: $fe $8f
	cp $8e                                           ; $73bc: $fe $8e
	cp $96                                           ; $73be: $fe $96
	cp $94                                           ; $73c0: $fe $94
	db $fc                                           ; $73c2: $fc
	sub h                                            ; $73c3: $94
	cp h                                             ; $73c4: $bc
	call nc, $d4be                                   ; $73c5: $d4 $be $d4
	cp [hl]                                          ; $73c8: $be
	sub $b7                                          ; $73c9: $d6 $b7
	sbc $7b                                          ; $73cb: $de $7b
	cp $9a                                           ; $73cd: $fe $9a
	rst SubAFromDE                                          ; $73cf: $df
	or a                                             ; $73d0: $b7
	rst SubAFromDE                                          ; $73d1: $df
	sub a                                            ; $73d2: $97
	rst $38                                          ; $73d3: $ff
	ld [hl], a                                       ; $73d4: $77
	cp $95                                           ; $73d5: $fe $95
	add a                                            ; $73d7: $87
	rst $38                                          ; $73d8: $ff
	ld c, [hl]                                       ; $73d9: $4e
	ld a, [hl]                                       ; $73da: $7e

jr_067_73db:
	ld c, [hl]                                       ; $73db: $4e
	ld a, [hl]                                       ; $73dc: $7e
	ld c, d                                          ; $73dd: $4a
	ld a, d                                          ; $73de: $7a
	ld a, [hl+]                                      ; $73df: $2a
	ld a, [hl-]                                      ; $73e0: $3a
	ld [hl], a                                       ; $73e1: $77
	cp $df                                           ; $73e2: $fe $df
	add hl, de                                       ; $73e4: $19
	rst SubAFromDE                                          ; $73e5: $df
	ld de, $f882                                     ; $73e6: $11 $82 $f8
	ldh a, [rAUD2LOW]                                ; $73e9: $f0 $18
	ld hl, sp-$78                                    ; $73eb: $f8 $88

jr_067_73ed:
	jr jr_067_73db                                   ; $73ed: $18 $ec

	jr nz, jr_067_73ed                               ; $73ef: $20 $fc

	ld [hl], b                                       ; $73f1: $70
	call c, $48f8                                    ; $73f2: $dc $f8 $48
	ret c                                            ; $73f5: $d8

	ld a, b                                          ; $73f6: $78
	ld [hl], b                                       ; $73f7: $70
	jr nc, jr_067_746a                               ; $73f8: $30 $70

	ld [hl-], a                                      ; $73fa: $32
	ld [hl], b                                       ; $73fb: $70
	ld [hl], a                                       ; $73fc: $77
	ld h, b                                          ; $73fd: $60
	rrca                                             ; $73fe: $0f
	nop                                              ; $73ff: $00
	rra                                              ; $7400: $1f
	db $10                                           ; $7401: $10
	rra                                              ; $7402: $1f
	ld [$bf0e], sp                                   ; $7403: $08 $0e $bf
	nop                                              ; $7406: $00
	db $e3                                           ; $7407: $e3
	adc l                                            ; $7408: $8d
	jp nz, $c2e3                                     ; $7409: $c2 $e3 $c2

	jp nz, $8182                                     ; $740c: $c2 $82 $81

	inc bc                                           ; $740f: $03
	ld b, $07                                        ; $7410: $06 $07
	rra                                              ; $7412: $1f
	nop                                              ; $7413: $00
	ccf                                              ; $7414: $3f
	inc bc                                           ; $7415: $03
	ccf                                              ; $7416: $3f
	rlca                                             ; $7417: $07
	add hl, de                                       ; $7418: $19
	dec c                                            ; $7419: $0d
	ld bc, $03de                                     ; $741a: $01 $de $03
	sbc [hl]                                         ; $741d: $9e
	add d                                            ; $741e: $82
	ld a, e                                          ; $741f: $7b
	cp $9a                                           ; $7420: $fe $9a
	ld [bc], a                                       ; $7422: $02
	rlca                                             ; $7423: $07
	rlca                                             ; $7424: $07
	ld bc, $ba03                                     ; $7425: $01 $03 $ba

jr_067_7428:
	ld bc, $0703                                     ; $7428: $01 $03 $07
	rrca                                             ; $742b: $0f
	rra                                              ; $742c: $1f
	ccf                                              ; $742d: $3f
	rst $38                                          ; $742e: $ff
	add b                                            ; $742f: $80
	inc bc                                           ; $7430: $03
	rst $38                                          ; $7431: $ff
	rrca                                             ; $7432: $0f
	rst $38                                          ; $7433: $ff
	ld a, a                                          ; $7434: $7f
	cp $ff                                           ; $7435: $fe $ff
	cp $8f                                           ; $7437: $fe $8f
	call c, $9d87                                    ; $7439: $dc $87 $9d
	add a                                            ; $743c: $87
	sbc c                                            ; $743d: $99
	rrca                                             ; $743e: $0f
	ld a, [hl-]                                      ; $743f: $3a
	rrca                                             ; $7440: $0f
	ld [hl], a                                       ; $7441: $77

jr_067_7442:
	rra                                              ; $7442: $1f
	ld [hl], b                                       ; $7443: $70
	ccf                                              ; $7444: $3f
	ld [hl], b                                       ; $7445: $70

jr_067_7446:
	dec e                                            ; $7446: $1d
	ldh a, [rAUD3LOW]                                ; $7447: $f0 $1d
	ldh a, [$f5]                                     ; $7449: $f0 $f5
	jr nc, jr_067_7442                               ; $744b: $30 $f5

	ldh a, [rAUD1HIGH]                               ; $744d: $f0 $14
	sbc c                                            ; $744f: $99
	ldh a, [hDisp1_OBP1]                                     ; $7450: $f0 $94
	ldh a, [$d0]                                     ; $7452: $f0 $d0
	jr nc, jr_067_7446                               ; $7454: $30 $f0

	sbc $30                                          ; $7456: $de $30
	add a                                            ; $7458: $87
	or l                                             ; $7459: $b5
	ldh a, [$f5]                                     ; $745a: $f0 $f5
	ld [hl], c                                       ; $745c: $71
	push de                                          ; $745d: $d5
	pop af                                           ; $745e: $f1
	rst SubAFromHL                                          ; $745f: $d7
	pop hl                                           ; $7460: $e1
	and a                                            ; $7461: $a7
	ldh [c], a                                       ; $7462: $e2
	daa                                              ; $7463: $27
	ldh [c], a                                       ; $7464: $e2
	cpl                                              ; $7465: $2f
	jp nz, $c04f                                     ; $7466: $c2 $4f $c0

	ld e, a                                          ; $7469: $5f

jr_067_746a:
	push bc                                          ; $746a: $c5
	ld e, a                                          ; $746b: $5f
	add l                                            ; $746c: $85
	rst $38                                          ; $746d: $ff
	add c                                            ; $746e: $81
	rst $38                                          ; $746f: $ff
	add e                                            ; $7470: $83
	ld a, e                                          ; $7471: $7b
	cp a                                             ; $7472: $bf
	adc a                                            ; $7473: $8f
	ld b, $ff                                        ; $7474: $06 $ff
	ld b, [hl]                                       ; $7476: $46
	rst $38                                          ; $7477: $ff
	ld c, [hl]                                       ; $7478: $4e
	rst $38                                          ; $7479: $ff
	sbc l                                            ; $747a: $9d
	rst $38                                          ; $747b: $ff
	cp a                                             ; $747c: $bf
	rst FarCall                                          ; $747d: $f7
	ld a, a                                          ; $747e: $7f
	push af                                          ; $747f: $f5
	rst $38                                          ; $7480: $ff
	pop hl                                           ; $7481: $e1
	rst $38                                          ; $7482: $ff
	rst GetHLinHL                                          ; $7483: $cf
	rlca                                             ; $7484: $07
	jr nz, jr_067_74fe                               ; $7485: $20 $77

	ld b, b                                          ; $7487: $40
	adc [hl]                                         ; $7488: $8e
	xor b                                            ; $7489: $a8
	jr jr_067_7428                                   ; $748a: $18 $9c

	nop                                              ; $748c: $00
	db $fc                                           ; $748d: $fc
	ld h, b                                          ; $748e: $60
	db $fc                                           ; $748f: $fc
	ldh a, [$c8]                                     ; $7490: $f0 $c8
	ld hl, sp+$58                                    ; $7492: $f8 $58
	ld d, b                                          ; $7494: $50
	jr nc, jr_067_7507                               ; $7495: $30 $70

	ld [hl], d                                       ; $7497: $72
	ld [hl], b                                       ; $7498: $70
	rst FarCall                                          ; $7499: $f7
	daa                                              ; $749a: $27
	ld b, b                                          ; $749b: $40
	ld a, a                                          ; $749c: $7f
	cp $7f                                           ; $749d: $fe $7f
	ld a, [$0f9c]                                    ; $749f: $fa $9c $0f
	ld bc, $570b                                     ; $74a2: $01 $0b $57
	ld b, b                                          ; $74a5: $40
	ld d, e                                          ; $74a6: $53
	ld h, b                                          ; $74a7: $60
	ld a, a                                          ; $74a8: $7f
	cp $9a                                           ; $74a9: $fe $9a
	sub b                                            ; $74ab: $90
	ldh a, [$d0]                                     ; $74ac: $f0 $d0
	ld [hl], b                                       ; $74ae: $70
	ldh a, [$57]                                     ; $74af: $f0 $57
	ld h, b                                          ; $74b1: $60
	ld e, a                                          ; $74b2: $5f
	add b                                            ; $74b3: $80
	sbc e                                            ; $74b4: $9b
	xor [hl]                                         ; $74b5: $ae
	add [hl]                                         ; $74b6: $86
	xor a                                            ; $74b7: $af
	adc a                                            ; $74b8: $8f
	cpl                                              ; $74b9: $2f
	add b                                            ; $74ba: $80
	ld a, [hl]                                       ; $74bb: $7e
	ret nz                                           ; $74bc: $c0

	sbc [hl]                                         ; $74bd: $9e
	ld a, h                                          ; $74be: $7c
	cp a                                             ; $74bf: $bf
	inc e                                            ; $74c0: $1c
	db $ec                                           ; $74c1: $ec
	sub [hl]                                         ; $74c2: $96
	ldh [$f8], a                                     ; $74c3: $e0 $f8
	ldh a, [$d8]                                     ; $74c5: $f0 $d8
	ret c                                            ; $74c7: $d8

	jr jr_067_753a                                   ; $74c8: $18 $70

	ldh a, [c]                                       ; $74ca: $f2
	jr nz, jr_067_753f                               ; $74cb: $20 $72

	ldh a, [$3b]                                     ; $74cd: $f0 $3b
	add b                                            ; $74cf: $80
	sub a                                            ; $74d0: $97
	add hl, sp                                       ; $74d1: $39
	nop                                              ; $74d2: $00
	ld [hl], $06                                     ; $74d3: $36 $06
	rrca                                             ; $74d5: $0f
	rrca                                             ; $74d6: $0f
	dec bc                                           ; $74d7: $0b
	rrca                                             ; $74d8: $0f
	ld [hl], e                                       ; $74d9: $73
	add b                                            ; $74da: $80
	sbc h                                            ; $74db: $9c
	rlca                                             ; $74dc: $07
	dec b                                            ; $74dd: $05
	inc bc                                           ; $74de: $03
	halt                                             ; $74df: $76
	jp nz, $804f                                     ; $74e0: $c2 $4f $80

	sbc h                                            ; $74e3: $9c
	ld [hl], b                                       ; $74e4: $70
	db $10                                           ; $74e5: $10
	or b                                             ; $74e6: $b0
	ld [hl], a                                       ; $74e7: $77
	ld a, [hl]                                       ; $74e8: $7e
	sbc h                                            ; $74e9: $9c
	ld [hl], l                                       ; $74ea: $75
	ldh a, [$d5]                                     ; $74eb: $f0 $d5
	ld a, e                                          ; $74ed: $7b
	add b                                            ; $74ee: $80
	sbc h                                            ; $74ef: $9c
	sub a                                            ; $74f0: $97
	pop hl                                           ; $74f1: $e1
	daa                                              ; $74f2: $27
	ld c, a                                          ; $74f3: $4f
	add b                                            ; $74f4: $80
	sbc h                                            ; $74f5: $9c
	xor [hl]                                         ; $74f6: $ae
	adc [hl]                                         ; $74f7: $8e
	cp a                                             ; $74f8: $bf
	ld a, e                                          ; $74f9: $7b
	ld a, [hl]                                       ; $74fa: $7e
	scf                                              ; $74fb: $37
	nop                                              ; $74fc: $00
	ld a, a                                          ; $74fd: $7f

jr_067_74fe:
	add d                                            ; $74fe: $82
	sbc [hl]                                         ; $74ff: $9e
	inc c                                            ; $7500: $0c
	cp [hl]                                          ; $7501: $be
	inc c                                            ; $7502: $0c
	ld l, b                                          ; $7503: $68
	sbc b                                            ; $7504: $98
	sbc d                                            ; $7505: $9a
	add b                                            ; $7506: $80

jr_067_7507:
	ld hl, sp-$10                                    ; $7507: $f8 $f0
	ldh a, [c]                                       ; $7509: $f2
	ld h, b                                          ; $750a: $60
	daa                                              ; $750b: $27
	add b                                            ; $750c: $80
	ld a, e                                          ; $750d: $7b
	nop                                              ; $750e: $00
	cp l                                             ; $750f: $bd
	inc de                                           ; $7510: $13
	inc b                                            ; $7511: $04
	inc bc                                           ; $7512: $03
	adc b                                            ; $7513: $88
	sbc e                                            ; $7514: $9b
	ld [$0787], sp                                   ; $7515: $08 $87 $07
	rlca                                             ; $7518: $07
	dec sp                                           ; $7519: $3b
	add b                                            ; $751a: $80
	sub h                                            ; $751b: $94
	ldh a, [rAUD1SWEEP]                              ; $751c: $f0 $10
	ldh a, [rAUD1SWEEP]                              ; $751e: $f0 $10
	ld [hl], b                                       ; $7520: $70
	db $10                                           ; $7521: $10
	ldh a, [$15]                                     ; $7522: $f0 $15
	ld [hl], b                                       ; $7524: $70
	dec d                                            ; $7525: $15
	pop af                                           ; $7526: $f1
	ld l, e                                          ; $7527: $6b
	add b                                            ; $7528: $80
	adc e                                            ; $7529: $8b
	cp $11                                           ; $752a: $fe $11
	ei                                               ; $752c: $fb
	ld c, $ff                                        ; $752d: $0e $ff
	nop                                              ; $752f: $00
	ld [hl], e                                       ; $7530: $73
	adc h                                            ; $7531: $8c
	rst $38                                          ; $7532: $ff
	add b                                            ; $7533: $80
	cp a                                             ; $7534: $bf
	ret nz                                           ; $7535: $c0

	ld a, a                                          ; $7536: $7f
	ld b, b                                          ; $7537: $40
	ld e, h                                          ; $7538: $5c
	ld h, e                                          ; $7539: $63

jr_067_753a:
	jr nz, jr_067_757b                               ; $753a: $20 $3f

	rra                                              ; $753c: $1f
	rra                                              ; $753d: $1f
	db $dd                                           ; $753e: $dd

jr_067_753f:
	inc c                                            ; $753f: $0c
	rst SubAFromDE                                          ; $7540: $df
	ld [$09df], sp                                   ; $7541: $08 $df $09
	rst SubAFromDE                                          ; $7544: $df
	ld de, $01df                                     ; $7545: $11 $df $01
	sub l                                            ; $7548: $95
	db $f4                                           ; $7549: $f4
	dec de                                           ; $754a: $1b
	rst AddAOntoHL                                          ; $754b: $ef
	rra                                              ; $754c: $1f
	push af                                          ; $754d: $f5
	ld c, $7f                                        ; $754e: $0e $7f
	add b                                            ; $7550: $80
	di                                               ; $7551: $f3
	adc h                                            ; $7552: $8c
	daa                                              ; $7553: $27
	ldh [$9b], a                                     ; $7554: $e0 $9b
	cp $0f                                           ; $7556: $fe $0f
	rst FarCall                                          ; $7558: $f7
	ld c, $77                                        ; $7559: $0e $77
	ret nz                                           ; $755b: $c0

	sbc l                                            ; $755c: $9d
	or e                                             ; $755d: $b3
	call z, $c027                                    ; $755e: $cc $27 $c0
	ld a, a                                          ; $7561: $7f
	sbc $9d                                          ; $7562: $de $9d
	ld [hl], l                                       ; $7564: $75
	adc [hl]                                         ; $7565: $8e
	daa                                              ; $7566: $27
	ldh [$be], a                                     ; $7567: $e0 $be
	ld bc, $979b                                     ; $7569: $01 $9b $97
	add c                                            ; $756c: $81
	add a                                            ; $756d: $87
	add e                                            ; $756e: $83
	ld a, e                                          ; $756f: $7b
	cp $84                                           ; $7570: $fe $84
	add [hl]                                         ; $7572: $86
	adc a                                            ; $7573: $8f
	add [hl]                                         ; $7574: $86
	xor a                                            ; $7575: $af
	add [hl]                                         ; $7576: $86
	xor a                                            ; $7577: $af
	adc a                                            ; $7578: $8f
	cp [hl]                                          ; $7579: $be
	adc [hl]                                         ; $757a: $8e

jr_067_757b:
	cp [hl]                                          ; $757b: $be
	adc [hl]                                         ; $757c: $8e
	cp $8e                                           ; $757d: $fe $8e
	cp $96                                           ; $757f: $fe $96
	cp $94                                           ; $7581: $fe $94
	db $fc                                           ; $7583: $fc
	sub h                                            ; $7584: $94
	cp h                                             ; $7585: $bc
	call nc, $d4be                                   ; $7586: $d4 $be $d4
	cp [hl]                                          ; $7589: $be
	sub $b7                                          ; $758a: $d6 $b7
	sbc $7b                                          ; $758c: $de $7b
	cp $9a                                           ; $758e: $fe $9a
	rst SubAFromDE                                          ; $7590: $df
	or a                                             ; $7591: $b7
	rst SubAFromDE                                          ; $7592: $df
	sub a                                            ; $7593: $97
	rst $38                                          ; $7594: $ff
	ld [hl], a                                       ; $7595: $77
	cp $95                                           ; $7596: $fe $95
	add a                                            ; $7598: $87
	rst $38                                          ; $7599: $ff
	ld c, [hl]                                       ; $759a: $4e
	ld a, [hl]                                       ; $759b: $7e
	ld c, [hl]                                       ; $759c: $4e
	ld a, [hl]                                       ; $759d: $7e
	ld c, d                                          ; $759e: $4a
	ld a, d                                          ; $759f: $7a
	ld a, [hl+]                                      ; $75a0: $2a
	ld a, [hl-]                                      ; $75a1: $3a
	ld [hl], a                                       ; $75a2: $77
	cp $df                                           ; $75a3: $fe $df
	add hl, de                                       ; $75a5: $19
	rst SubAFromDE                                          ; $75a6: $df
	ld de, $f882                                     ; $75a7: $11 $82 $f8
	ldh a, [rAUD2LOW]                                ; $75aa: $f0 $18

jr_067_75ac:
	ld hl, sp-$78                                    ; $75ac: $f8 $88
	jr jr_067_75ac                                   ; $75ae: $18 $fc

	inc h                                            ; $75b0: $24
	ld hl, sp+$74                                    ; $75b1: $f8 $74
	ret c                                            ; $75b3: $d8

	ld hl, sp-$28                                    ; $75b4: $f8 $d8
	ret nc                                           ; $75b6: $d0

	jr nc, @+$72                                     ; $75b7: $30 $70

	jr nc, jr_067_762b                               ; $75b9: $30 $70

	ld d, d                                          ; $75bb: $52
	ld [hl], b                                       ; $75bc: $70
	ld [hl], a                                       ; $75bd: $77
	ld h, b                                          ; $75be: $60
	rrca                                             ; $75bf: $0f
	nop                                              ; $75c0: $00
	rra                                              ; $75c1: $1f
	db $10                                           ; $75c2: $10
	rra                                              ; $75c3: $1f
	ld [$bf0e], sp                                   ; $75c4: $08 $0e $bf
	nop                                              ; $75c7: $00
	db $e3                                           ; $75c8: $e3
	adc l                                            ; $75c9: $8d
	jp nz, $c2e3                                     ; $75ca: $c2 $e3 $c2

	jp nz, $8382                                     ; $75cd: $c2 $82 $83

	rlca                                             ; $75d0: $07
	inc c                                            ; $75d1: $0c
	rrca                                             ; $75d2: $0f
	rra                                              ; $75d3: $1f
	db $10                                           ; $75d4: $10
	ccf                                              ; $75d5: $3f
	inc bc                                           ; $75d6: $03
	ccf                                              ; $75d7: $3f
	rlca                                             ; $75d8: $07
	dec e                                            ; $75d9: $1d
	dec c                                            ; $75da: $0d
	ld bc, $03de                                     ; $75db: $01 $de $03
	sbc [hl]                                         ; $75de: $9e
	add d                                            ; $75df: $82

jr_067_75e0:
	ld a, e                                          ; $75e0: $7b
	cp $9a                                           ; $75e1: $fe $9a
	ld [bc], a                                       ; $75e3: $02
	rlca                                             ; $75e4: $07
	rrca                                             ; $75e5: $0f
	ld bc, $ba03                                     ; $75e6: $01 $03 $ba
	ld bc, $0703                                     ; $75e9: $01 $03 $07
	rrca                                             ; $75ec: $0f
	rra                                              ; $75ed: $1f
	ccf                                              ; $75ee: $3f
	rst $38                                          ; $75ef: $ff
	add b                                            ; $75f0: $80
	inc bc                                           ; $75f1: $03
	rst $38                                          ; $75f2: $ff
	rrca                                             ; $75f3: $0f
	rst $38                                          ; $75f4: $ff
	ld a, a                                          ; $75f5: $7f
	cp $ff                                           ; $75f6: $fe $ff
	cp $8f                                           ; $75f8: $fe $8f
	call c, $9d87                                    ; $75fa: $dc $87 $9d
	add a                                            ; $75fd: $87
	sbc c                                            ; $75fe: $99
	rrca                                             ; $75ff: $0f
	ld a, [hl-]                                      ; $7600: $3a
	rrca                                             ; $7601: $0f
	ld [hl], a                                       ; $7602: $77

jr_067_7603:
	rra                                              ; $7603: $1f
	ld [hl], b                                       ; $7604: $70
	ccf                                              ; $7605: $3f
	ld [hl], b                                       ; $7606: $70

jr_067_7607:
	dec e                                            ; $7607: $1d
	ldh a, [rAUD3LOW]                                ; $7608: $f0 $1d
	ldh a, [$f5]                                     ; $760a: $f0 $f5
	jr nc, jr_067_7603                               ; $760c: $30 $f5

	ldh a, [rAUD1HIGH]                               ; $760e: $f0 $14
	sbc c                                            ; $7610: $99
	ldh a, [hDisp1_OBP1]                                     ; $7611: $f0 $94
	ldh a, [$d0]                                     ; $7613: $f0 $d0
	jr nc, jr_067_7607                               ; $7615: $30 $f0

	sbc $30                                          ; $7617: $de $30
	add a                                            ; $7619: $87
	or l                                             ; $761a: $b5
	ldh a, [$f5]                                     ; $761b: $f0 $f5
	ld [hl], c                                       ; $761d: $71
	push de                                          ; $761e: $d5
	pop af                                           ; $761f: $f1
	rst SubAFromHL                                          ; $7620: $d7
	pop hl                                           ; $7621: $e1
	and a                                            ; $7622: $a7
	ldh [c], a                                       ; $7623: $e2
	daa                                              ; $7624: $27
	ldh [c], a                                       ; $7625: $e2
	cpl                                              ; $7626: $2f
	jp nz, $c04f                                     ; $7627: $c2 $4f $c0

	ld e, a                                          ; $762a: $5f

jr_067_762b:
	push bc                                          ; $762b: $c5
	ld e, a                                          ; $762c: $5f
	add l                                            ; $762d: $85
	rst $38                                          ; $762e: $ff
	add c                                            ; $762f: $81
	rst $38                                          ; $7630: $ff
	add e                                            ; $7631: $83
	ld a, e                                          ; $7632: $7b
	cp a                                             ; $7633: $bf
	adc a                                            ; $7634: $8f
	ld b, $ff                                        ; $7635: $06 $ff
	ld b, [hl]                                       ; $7637: $46
	rst $38                                          ; $7638: $ff
	ld c, [hl]                                       ; $7639: $4e
	rst $38                                          ; $763a: $ff
	sbc l                                            ; $763b: $9d
	rst $38                                          ; $763c: $ff
	cp a                                             ; $763d: $bf
	rst FarCall                                          ; $763e: $f7
	ld a, a                                          ; $763f: $7f
	push af                                          ; $7640: $f5
	rst $38                                          ; $7641: $ff
	pop hl                                           ; $7642: $e1
	rst $38                                          ; $7643: $ff
	rst GetHLinHL                                          ; $7644: $cf
	ld h, a                                          ; $7645: $67
	jr nz, jr_067_75e0                               ; $7646: $20 $98

	adc [hl]                                         ; $7648: $8e
	add [hl]                                         ; $7649: $86
	xor [hl]                                         ; $764a: $ae
	add [hl]                                         ; $764b: $86
	xor [hl]                                         ; $764c: $ae
	adc [hl]                                         ; $764d: $8e
	cp a                                             ; $764e: $bf
	ld a, e                                          ; $764f: $7b
	ld e, $4f                                        ; $7650: $1e $4f
	jr nz, jr_067_76cb                               ; $7652: $20 $77

	ld b, b                                          ; $7654: $40
	sub h                                            ; $7655: $94
	xor b                                            ; $7656: $a8
	jr jr_067_7675                                   ; $7657: $18 $1c

	inc b                                            ; $7659: $04
	jr z, jr_067_7680                                ; $765a: $28 $24

	ld hl, sp+$70                                    ; $765c: $f8 $70
	ld hl, sp-$08                                    ; $765e: $f8 $f8
	sbc b                                            ; $7660: $98
	ld a, e                                          ; $7661: $7b
	ld a, $7f                                        ; $7662: $3e $7f
	ld b, b                                          ; $7664: $40
	sbc [hl]                                         ; $7665: $9e
	rst FarCall                                          ; $7666: $f7
	daa                                              ; $7667: $27
	ld b, b                                          ; $7668: $40
	ld a, a                                          ; $7669: $7f
	ld e, h                                          ; $766a: $5c
	sbc d                                            ; $766b: $9a
	inc bc                                           ; $766c: $03
	rra                                              ; $766d: $1f
	rrca                                             ; $766e: $0f
	ld bc, $570f                                     ; $766f: $01 $0f $57
	ld b, b                                          ; $7672: $40
	ld d, e                                          ; $7673: $53
	ld h, b                                          ; $7674: $60

jr_067_7675:
	ld a, a                                          ; $7675: $7f
	cp $9a                                           ; $7676: $fe $9a
	ret nc                                           ; $7678: $d0

	ldh a, [$f0]                                     ; $7679: $f0 $f0
	ld [hl], b                                       ; $767b: $70
	ld [hl], b                                       ; $767c: $70
	ld d, a                                          ; $767d: $57
	ld h, b                                          ; $767e: $60
	inc bc                                           ; $767f: $03

jr_067_7680:
	add b                                            ; $7680: $80
	ld l, e                                          ; $7681: $6b
	add b                                            ; $7682: $80
	sub l                                            ; $7683: $95
	ld l, b                                          ; $7684: $68
	inc b                                            ; $7685: $04
	jr jr_067_7688                                   ; $7686: $18 $00

jr_067_7688:
	ld hl, sp-$10                                    ; $7688: $f8 $f0
	ld hl, sp-$08                                    ; $768a: $f8 $f8
	jr jr_067_76de                                   ; $768c: $18 $50

	ld e, $c0                                        ; $768e: $1e $c0
	sbc [hl]                                         ; $7690: $9e
	inc a                                            ; $7691: $3c
	cp a                                             ; $7692: $bf
	jr c, jr_067_76a8                                ; $7693: $38 $13

	sbc d                                            ; $7695: $9a
	inc bc                                           ; $7696: $03
	rrca                                             ; $7697: $0f
	rrca                                             ; $7698: $0f
	inc bc                                           ; $7699: $03
	rlca                                             ; $769a: $07
	ld [hl], a                                       ; $769b: $77
	add b                                            ; $769c: $80
	ld a, a                                          ; $769d: $7f
	ld a, [$8047]                                    ; $769e: $fa $47 $80
	sub h                                            ; $76a1: $94
	ld [hl], b                                       ; $76a2: $70
	inc d                                            ; $76a3: $14
	jr nc, jr_067_76b6                               ; $76a4: $30 $10

	ldh a, [hDisp1_SCY]                                     ; $76a6: $f0 $90

jr_067_76a8:
	ldh a, [$d0]                                     ; $76a8: $f0 $d0
	ld [hl], b                                       ; $76aa: $70
	ld [hl], l                                       ; $76ab: $75
	or b                                             ; $76ac: $b0
	inc bc                                           ; $76ad: $03
	add b                                            ; $76ae: $80
	ld b, a                                          ; $76af: $47
	add b                                            ; $76b0: $80
	sbc h                                            ; $76b1: $9c
	ld [$0c04], sp                                   ; $76b2: $08 $04 $0c
	cp a                                             ; $76b5: $bf

jr_067_76b6:
	ld l, h                                          ; $76b6: $6c
	sbc b                                            ; $76b7: $98
	sbc d                                            ; $76b8: $9a
	add b                                            ; $76b9: $80
	ldh a, [$f0]                                     ; $76ba: $f0 $f0
	ldh a, [c]                                       ; $76bc: $f2
	ld h, b                                          ; $76bd: $60
	ld [hl], d                                       ; $76be: $72
	ld [hl], b                                       ; $76bf: $70
	cpl                                              ; $76c0: $2f
	nop                                              ; $76c1: $00
	cp l                                             ; $76c2: $bd
	inc de                                           ; $76c3: $13
	inc b                                            ; $76c4: $04
	inc bc                                           ; $76c5: $03
	adc b                                            ; $76c6: $88
	sbc c                                            ; $76c7: $99
	ld [$0787], sp                                   ; $76c8: $08 $87 $07

jr_067_76cb:
	inc bc                                           ; $76cb: $03
	inc bc                                           ; $76cc: $03
	rrca                                             ; $76cd: $0f
	cp a                                             ; $76ce: $bf
	inc bc                                           ; $76cf: $03
	ld [hl], b                                       ; $76d0: $70
	ld c, a                                          ; $76d1: $4f
	nop                                              ; $76d2: $00
	ld a, a                                          ; $76d3: $7f
	add b                                            ; $76d4: $80
	add b                                            ; $76d5: $80
	db $10                                           ; $76d6: $10
	ld [hl], b                                       ; $76d7: $70
	db $10                                           ; $76d8: $10
	ldh a, [$15]                                     ; $76d9: $f0 $15
	ld [hl], b                                       ; $76db: $70
	dec d                                            ; $76dc: $15
	pop af                                           ; $76dd: $f1

jr_067_76de:
	push de                                          ; $76de: $d5
	pop af                                           ; $76df: $f1
	sub a                                            ; $76e0: $97
	pop hl                                           ; $76e1: $e1
	daa                                              ; $76e2: $27
	ldh [c], a                                       ; $76e3: $e2
	daa                                              ; $76e4: $27
	di                                               ; $76e5: $f3
	inc e                                            ; $76e6: $1c
	ei                                               ; $76e7: $fb
	ld c, $ff                                        ; $76e8: $0e $ff
	nop                                              ; $76ea: $00
	ld [hl], c                                       ; $76eb: $71
	adc [hl]                                         ; $76ec: $8e
	ei                                               ; $76ed: $fb
	add h                                            ; $76ee: $84
	cp a                                             ; $76ef: $bf
	ret nz                                           ; $76f0: $c0

	ld a, a                                          ; $76f1: $7f

jr_067_76f2:
	ld b, b                                          ; $76f2: $40
	ld e, h                                          ; $76f3: $5c
	ld h, e                                          ; $76f4: $63
	sbc e                                            ; $76f5: $9b
	jr nz, jr_067_7737                               ; $76f6: $20 $3f

	rra                                              ; $76f8: $1f
	rra                                              ; $76f9: $1f
	db $dd                                           ; $76fa: $dd
	inc c                                            ; $76fb: $0c
	rst SubAFromDE                                          ; $76fc: $df
	ld [$09df], sp                                   ; $76fd: $08 $df $09
	rst SubAFromDE                                          ; $7700: $df
	ld de, $01df                                     ; $7701: $11 $df $01

jr_067_7704:
	ld a, a                                          ; $7704: $7f
	ldh [$97], a                                     ; $7705: $e0 $97
	db $eb                                           ; $7707: $eb
	ld d, $fd                                        ; $7708: $16 $fd
	ld c, $7f                                        ; $770a: $0e $7f
	add b                                            ; $770c: $80
	di                                               ; $770d: $f3
	adc h                                            ; $770e: $8c
	cpl                                              ; $770f: $2f
	ldh [$9a], a                                     ; $7710: $e0 $9a
	rst $38                                          ; $7712: $ff
	jr jr_067_7704                                   ; $7713: $18 $ef

	ld d, $ff                                        ; $7715: $16 $ff
	inc de                                           ; $7717: $13
	ldh [hDisp1_WY], a                                     ; $7718: $e0 $95
	rst $38                                          ; $771a: $ff
	ld d, $ef                                        ; $771b: $16 $ef
	ld e, $77                                        ; $771d: $1e $77
	adc [hl]                                         ; $771f: $8e
	rst $38                                          ; $7720: $ff
	add b                                            ; $7721: $80
	or e                                             ; $7722: $b3
	call z, $e037                                    ; $7723: $cc $37 $e0
	cp l                                             ; $7726: $bd
	ld bc, $979b                                     ; $7727: $01 $9b $97
	add c                                            ; $772a: $81
	add a                                            ; $772b: $87
	add e                                            ; $772c: $83
	ld a, e                                          ; $772d: $7b
	cp $84                                           ; $772e: $fe $84
	add [hl]                                         ; $7730: $86
	adc a                                            ; $7731: $8f
	add [hl]                                         ; $7732: $86
	xor a                                            ; $7733: $af
	add [hl]                                         ; $7734: $86
	xor a                                            ; $7735: $af
	adc a                                            ; $7736: $8f

jr_067_7737:
	cp [hl]                                          ; $7737: $be
	adc [hl]                                         ; $7738: $8e
	cp [hl]                                          ; $7739: $be
	adc [hl]                                         ; $773a: $8e
	cp $8e                                           ; $773b: $fe $8e
	cp $96                                           ; $773d: $fe $96
	cp $94                                           ; $773f: $fe $94
	db $fc                                           ; $7741: $fc
	sub h                                            ; $7742: $94
	cp h                                             ; $7743: $bc
	call nc, $d4be                                   ; $7744: $d4 $be $d4
	cp [hl]                                          ; $7747: $be
	sub $b7                                          ; $7748: $d6 $b7
	sbc $7b                                          ; $774a: $de $7b
	cp $9a                                           ; $774c: $fe $9a
	rst SubAFromDE                                          ; $774e: $df
	or a                                             ; $774f: $b7
	rst SubAFromDE                                          ; $7750: $df
	sub a                                            ; $7751: $97
	rst $38                                          ; $7752: $ff
	ld [hl], a                                       ; $7753: $77

jr_067_7754:
	cp $95                                           ; $7754: $fe $95
	add a                                            ; $7756: $87
	rst $38                                          ; $7757: $ff
	ld c, [hl]                                       ; $7758: $4e
	ld a, [hl]                                       ; $7759: $7e
	ld c, [hl]                                       ; $775a: $4e
	ld a, [hl]                                       ; $775b: $7e
	ld c, d                                          ; $775c: $4a
	ld a, d                                          ; $775d: $7a
	ld a, [hl+]                                      ; $775e: $2a
	ld a, [hl-]                                      ; $775f: $3a
	ld [hl], a                                       ; $7760: $77
	cp $df                                           ; $7761: $fe $df
	add hl, de                                       ; $7763: $19
	rst SubAFromDE                                          ; $7764: $df
	ld de, $f88a                                     ; $7765: $11 $8a $f8
	ldh a, [$d8]                                     ; $7768: $f0 $d8
	jr c, jr_067_7754                                ; $776a: $38 $e8

	jr jr_067_76f2                                   ; $776c: $18 $84

	inc c                                            ; $776e: $0c

Call_067_776f:
	inc a                                            ; $776f: $3c
	ld [hl], h                                       ; $7770: $74
	db $fc                                           ; $7771: $fc
	ld hl, sp-$04                                    ; $7772: $f8 $fc
	ld hl, sp+$28                                    ; $7774: $f8 $28
	ld l, b                                          ; $7776: $68
	ld e, b                                          ; $7777: $58
	ld [hl], b                                       ; $7778: $70
	ld [hl-], a                                      ; $7779: $32
	ld [hl], b                                       ; $777a: $70
	rst SubAFromBC                                          ; $777b: $e7
	cp a                                             ; $777c: $bf
	rrca                                             ; $777d: $0f
	rra                                              ; $777e: $1f
	sbc e                                            ; $777f: $9b
	db $10                                           ; $7780: $10
	rra                                              ; $7781: $1f
	ld [$bf0e], sp                                   ; $7782: $08 $0e $bf
	nop                                              ; $7785: $00
	db $e3                                           ; $7786: $e3
	add e                                            ; $7787: $83
	jp nz, $c2e3                                     ; $7788: $c2 $e3 $c2

	jp nz, $8082                                     ; $778b: $c2 $82 $80

	rlca                                             ; $778e: $07
	rlca                                             ; $778f: $07
	rrca                                             ; $7790: $0f
	cpl                                              ; $7791: $2f
	jr jr_067_7810                                   ; $7792: $18 $7c

	nop                                              ; $7794: $00
	ld a, e                                          ; $7795: $7b
	inc bc                                           ; $7796: $03
	ccf                                              ; $7797: $3f
	rlca                                             ; $7798: $07
	ld e, $0e                                        ; $7799: $1e $0e
	dec bc                                           ; $779b: $0b
	rrca                                             ; $779c: $0f
	add d                                            ; $779d: $82
	inc bc                                           ; $779e: $03
	add d                                            ; $779f: $82

jr_067_77a0:
	inc bc                                           ; $77a0: $03
	dec de                                           ; $77a1: $1b
	rlca                                             ; $77a2: $07
	inc bc                                           ; $77a3: $03
	cp c                                             ; $77a4: $b9
	ld bc, $0301                                     ; $77a5: $01 $01 $03
	rlca                                             ; $77a8: $07
	rrca                                             ; $77a9: $0f
	rra                                              ; $77aa: $1f
	ccf                                              ; $77ab: $3f
	rst $38                                          ; $77ac: $ff
	add b                                            ; $77ad: $80
	inc bc                                           ; $77ae: $03
	rst $38                                          ; $77af: $ff
	rrca                                             ; $77b0: $0f
	rst $38                                          ; $77b1: $ff
	ld a, a                                          ; $77b2: $7f
	cp $ff                                           ; $77b3: $fe $ff
	cp $8f                                           ; $77b5: $fe $8f
	call c, $9d87                                    ; $77b7: $dc $87 $9d
	add a                                            ; $77ba: $87
	sbc c                                            ; $77bb: $99
	rrca                                             ; $77bc: $0f
	ld a, [hl-]                                      ; $77bd: $3a
	rrca                                             ; $77be: $0f
	ld [hl], a                                       ; $77bf: $77
	rra                                              ; $77c0: $1f
	ld [hl], b                                       ; $77c1: $70
	ccf                                              ; $77c2: $3f
	ld [hl], b                                       ; $77c3: $70
	dec e                                            ; $77c4: $1d
	ldh a, [rAUD3LOW]                                ; $77c5: $f0 $1d
	ldh a, [$f5]                                     ; $77c7: $f0 $f5
	db $10                                           ; $77c9: $10
	push af                                          ; $77ca: $f5
	ldh a, [rAUD1HIGH]                               ; $77cb: $f0 $14
	add b                                            ; $77cd: $80
	ld [hl], b                                       ; $77ce: $70
	ld d, h                                          ; $77cf: $54
	or b                                             ; $77d0: $b0
	or b                                             ; $77d1: $b0
	ld [hl], b                                       ; $77d2: $70
	ret nc                                           ; $77d3: $d0

	ld [hl], b                                       ; $77d4: $70
	ld [hl], b                                       ; $77d5: $70
	or b                                             ; $77d6: $b0
	push af                                          ; $77d7: $f5
	ld [hl], b                                       ; $77d8: $70
	push af                                          ; $77d9: $f5
	ld [hl], c                                       ; $77da: $71
	push de                                          ; $77db: $d5
	pop af                                           ; $77dc: $f1
	sub a                                            ; $77dd: $97
	pop hl                                           ; $77de: $e1
	daa                                              ; $77df: $27
	ldh [c], a                                       ; $77e0: $e2
	daa                                              ; $77e1: $27
	ldh [c], a                                       ; $77e2: $e2
	cpl                                              ; $77e3: $2f
	jp nz, $c04f                                     ; $77e4: $c2 $4f $c0

	ld e, a                                          ; $77e7: $5f
	push bc                                          ; $77e8: $c5
	ld e, a                                          ; $77e9: $5f
	add l                                            ; $77ea: $85
	rst $38                                          ; $77eb: $ff
	add c                                            ; $77ec: $81
	sbc l                                            ; $77ed: $9d
	rst $38                                          ; $77ee: $ff
	add e                                            ; $77ef: $83
	ld a, e                                          ; $77f0: $7b
	cp a                                             ; $77f1: $bf
	adc a                                            ; $77f2: $8f
	ld b, $ff                                        ; $77f3: $06 $ff
	ld b, [hl]                                       ; $77f5: $46
	rst $38                                          ; $77f6: $ff
	ld c, [hl]                                       ; $77f7: $4e
	rst $38                                          ; $77f8: $ff
	sbc l                                            ; $77f9: $9d
	rst $38                                          ; $77fa: $ff
	cp a                                             ; $77fb: $bf
	rst FarCall                                          ; $77fc: $f7
	ld a, a                                          ; $77fd: $7f
	push af                                          ; $77fe: $f5
	rst $38                                          ; $77ff: $ff
	pop hl                                           ; $7800: $e1
	rst $38                                          ; $7801: $ff
	rst GetHLinHL                                          ; $7802: $cf
	ld e, a                                          ; $7803: $5f
	jr nz, jr_067_77a0                               ; $7804: $20 $9a

	xor [hl]                                         ; $7806: $ae
	add [hl]                                         ; $7807: $86
	xor [hl]                                         ; $7808: $ae
	adc [hl]                                         ; $7809: $8e
	cp a                                             ; $780a: $bf
	ld a, e                                          ; $780b: $7b

jr_067_780c:
	ld e, $4f                                        ; $780c: $1e $4f
	jr nz, jr_067_7877                               ; $780e: $20 $67

jr_067_7810:
	ld b, b                                          ; $7810: $40
	sub l                                            ; $7811: $95
	ld a, h                                          ; $7812: $7c
	inc b                                            ; $7813: $04
	inc c                                            ; $7814: $0c
	nop                                              ; $7815: $00
	db $fc                                           ; $7816: $fc
	ldh a, [$f8]                                     ; $7817: $f0 $f8
	ld hl, sp+$58                                    ; $7819: $f8 $58
	ret nc                                           ; $781b: $d0

	rra                                              ; $781c: $1f
	ld b, b                                          ; $781d: $40
	sbc [hl]                                         ; $781e: $9e
	ld a, a                                          ; $781f: $7f
	cp a                                             ; $7820: $bf
	ld a, h                                          ; $7821: $7c
	dec sp                                           ; $7822: $3b
	sbc h                                            ; $7823: $9c
	inc bc                                           ; $7824: $03
	rla                                              ; $7825: $17
	rlca                                             ; $7826: $07
	ld l, a                                          ; $7827: $6f
	ld b, b                                          ; $7828: $40
	sbc [hl]                                         ; $7829: $9e
	dec bc                                           ; $782a: $0b
	ld [hl], e                                       ; $782b: $73
	ld b, b                                          ; $782c: $40
	ld d, a                                          ; $782d: $57
	ld h, b                                          ; $782e: $60
	ld a, e                                          ; $782f: $7b
	cp $96                                           ; $7830: $fe $96
	db $10                                           ; $7832: $10
	jr nc, jr_067_7865                               ; $7833: $30 $30

	ret nc                                           ; $7835: $d0

	ret nc                                           ; $7836: $d0

	ldh a, [$f5]                                     ; $7837: $f0 $f5
	ld [hl], b                                       ; $7839: $70
	ld [hl], l                                       ; $783a: $75
	ld h, a                                          ; $783b: $67
	ld h, b                                          ; $783c: $60
	inc bc                                           ; $783d: $03
	add b                                            ; $783e: $80
	ld [hl], e                                       ; $783f: $73
	add b                                            ; $7840: $80
	sub d                                            ; $7841: $92
	sub h                                            ; $7842: $94
	inc c                                            ; $7843: $0c

jr_067_7844:
	inc c                                            ; $7844: $0c
	inc b                                            ; $7845: $04
	ld e, h                                          ; $7846: $5c
	nop                                              ; $7847: $00
	adc h                                            ; $7848: $8c
	add b                                            ; $7849: $80
	ld hl, sp-$20                                    ; $784a: $f8 $e0
	ret c                                            ; $784c: $d8

	ldh a, [$72]                                     ; $784d: $f0 $72
	dec de                                           ; $784f: $1b
	add b                                            ; $7850: $80
	sbc [hl]                                         ; $7851: $9e
	ld a, b                                          ; $7852: $78
	cp [hl]                                          ; $7853: $be
	inc sp                                           ; $7854: $33
	nop                                              ; $7855: $00
	add hl, bc                                       ; $7856: $09
	sbc c                                            ; $7857: $99
	rrca                                             ; $7858: $0f
	add a                                            ; $7859: $87
	rlca                                             ; $785a: $07
	add d                                            ; $785b: $82
	ld [bc], a                                       ; $785c: $02
	inc bc                                           ; $785d: $03
	inc sp                                           ; $785e: $33
	add b                                            ; $785f: $80
	ld a, e                                          ; $7860: $7b
	ld a, [hl]                                       ; $7861: $7e
	sbc e                                            ; $7862: $9b
	db $10                                           ; $7863: $10
	sub b                                            ; $7864: $90

jr_067_7865:
	push af                                          ; $7865: $f5
	ldh a, [$62]                                     ; $7866: $f0 $62
	ldh [$57], a                                     ; $7868: $e0 $57
	add b                                            ; $786a: $80
	ld a, [hl]                                       ; $786b: $7e
	jr nz, jr_067_780c                               ; $786c: $20 $9e

	cp a                                             ; $786e: $bf
	ld b, d                                          ; $786f: $42
	jr nz, jr_067_78d1                               ; $7870: $20 $5f

	add b                                            ; $7872: $80
	sbc [hl]                                         ; $7873: $9e
	inc e                                            ; $7874: $1c
	cp a                                             ; $7875: $bf
	ld a, h                                          ; $7876: $7c

jr_067_7877:
	sbc h                                            ; $7877: $9c
	ld a, a                                          ; $7878: $7f
	ld a, [hl]                                       ; $7879: $7e
	sbc l                                            ; $787a: $9d
	ld [hl], b                                       ; $787b: $70
	ld [bc], a                                       ; $787c: $02
	cp [hl]                                          ; $787d: $be
	rlca                                             ; $787e: $07
	rrca                                             ; $787f: $0f
	rra                                              ; $7880: $1f
	dec hl                                           ; $7881: $2b
	add b                                            ; $7882: $80
	sbc [hl]                                         ; $7883: $9e
	jr nc, jr_067_7844                               ; $7884: $30 $be

	nop                                              ; $7886: $00
	inc bc                                           ; $7887: $03
	adc h                                            ; $7888: $8c
	sbc l                                            ; $7889: $9d
	inc c                                            ; $788a: $0c
	add a                                            ; $788b: $87
	ld l, d                                          ; $788c: $6a
	ld b, d                                          ; $788d: $42
	ld c, a                                          ; $788e: $4f
	add b                                            ; $788f: $80
	sbc [hl]                                         ; $7890: $9e
	ld [hl], b                                       ; $7891: $70
	ld a, e                                          ; $7892: $7b
	add d                                            ; $7893: $82

jr_067_7894:
	ld a, a                                          ; $7894: $7f
	db $fc                                           ; $7895: $fc
	sub a                                            ; $7896: $97
	ldh a, [$15]                                     ; $7897: $f0 $15
	ldh a, [$75]                                     ; $7899: $f0 $75
	pop af                                           ; $789b: $f1
	push de                                          ; $789c: $d5
	pop af                                           ; $789d: $f1
	rla                                              ; $789e: $17
	ld [hl], a                                       ; $789f: $77
	add b                                            ; $78a0: $80
	adc e                                            ; $78a1: $8b
	rst FarCall                                          ; $78a2: $f7
	jr jr_067_7894                                   ; $78a3: $18 $ef

	inc d                                            ; $78a5: $14
	di                                               ; $78a6: $f3
	inc c                                            ; $78a7: $0c
	ld a, a                                          ; $78a8: $7f
	add b                                            ; $78a9: $80
	di                                               ; $78aa: $f3
	adc h                                            ; $78ab: $8c
	cp a                                             ; $78ac: $bf
	ret nz                                           ; $78ad: $c0

	ld a, a                                          ; $78ae: $7f
	ld b, b                                          ; $78af: $40
	ld e, h                                          ; $78b0: $5c
	ld h, e                                          ; $78b1: $63
	jr nz, jr_067_78f3                               ; $78b2: $20 $3f

	rra                                              ; $78b4: $1f
	rra                                              ; $78b5: $1f
	db $dd                                           ; $78b6: $dd
	inc c                                            ; $78b7: $0c
	rst SubAFromDE                                          ; $78b8: $df
	ld [$09df], sp                                   ; $78b9: $08 $df $09
	rst SubAFromDE                                          ; $78bc: $df
	ld de, $01df                                     ; $78bd: $11 $df $01
	sub e                                            ; $78c0: $93
	di                                               ; $78c1: $f3
	inc e                                            ; $78c2: $1c
	db $ed                                           ; $78c3: $ed
	ld e, $fd                                        ; $78c4: $1e $fd
	ld c, $73                                        ; $78c6: $0e $73
	adc h                                            ; $78c8: $8c
	rst $38                                          ; $78c9: $ff
	add b                                            ; $78ca: $80
	or e                                             ; $78cb: $b3
	call z, $e037                                    ; $78cc: $cc $37 $e0
	sbc [hl]                                         ; $78cf: $9e
	db $eb                                           ; $78d0: $eb

jr_067_78d1:
	ld a, e                                          ; $78d1: $7b
	ldh [$9b], a                                     ; $78d2: $e0 $9b
	rst $38                                          ; $78d4: $ff
	ld c, $7d                                        ; $78d5: $0e $7d
	adc [hl]                                         ; $78d7: $8e
	daa                                              ; $78d8: $27
	ldh [$99], a                                     ; $78d9: $e0 $99
	rst $38                                          ; $78db: $ff
	inc e                                            ; $78dc: $1c
	rst AddAOntoHL                                          ; $78dd: $ef
	ld e, $ef                                        ; $78de: $1e $ef
	ld e, $1f                                        ; $78e0: $1e $1f
	ldh [$cb], a                                     ; $78e2: $e0 $cb
	ld bc, $9780                                     ; $78e4: $01 $80 $97
	add c                                            ; $78e7: $81
	add a                                            ; $78e8: $87
	add e                                            ; $78e9: $83
	add a                                            ; $78ea: $87
	add e                                            ; $78eb: $83
	add [hl]                                         ; $78ec: $86
	add a                                            ; $78ed: $87
	adc a                                            ; $78ee: $8f
	add [hl]                                         ; $78ef: $86
	xor a                                            ; $78f0: $af
	add [hl]                                         ; $78f1: $86
	xor a                                            ; $78f2: $af

jr_067_78f3:
	adc a                                            ; $78f3: $8f
	cp [hl]                                          ; $78f4: $be
	adc [hl]                                         ; $78f5: $8e
	cp [hl]                                          ; $78f6: $be
	adc [hl]                                         ; $78f7: $8e
	cp $8e                                           ; $78f8: $fe $8e
	cp $96                                           ; $78fa: $fe $96
	cp $94                                           ; $78fc: $fe $94
	db $fc                                           ; $78fe: $fc
	sub h                                            ; $78ff: $94
	cp h                                             ; $7900: $bc
	call nc, $d4be                                   ; $7901: $d4 $be $d4
	cp [hl]                                          ; $7904: $be
	sbc h                                            ; $7905: $9c
	sub $b7                                          ; $7906: $d6 $b7
	sbc $7b                                          ; $7908: $de $7b
	cp $9a                                           ; $790a: $fe $9a
	rst SubAFromDE                                          ; $790c: $df
	or a                                             ; $790d: $b7
	rst SubAFromDE                                          ; $790e: $df
	sub a                                            ; $790f: $97
	rst $38                                          ; $7910: $ff
	ld [hl], a                                       ; $7911: $77
	cp $95                                           ; $7912: $fe $95
	add a                                            ; $7914: $87
	rst $38                                          ; $7915: $ff
	ld c, [hl]                                       ; $7916: $4e
	ld a, [hl]                                       ; $7917: $7e
	ld c, [hl]                                       ; $7918: $4e
	ld a, [hl]                                       ; $7919: $7e
	ld c, d                                          ; $791a: $4a
	ld a, d                                          ; $791b: $7a
	ld a, [hl+]                                      ; $791c: $2a
	ld a, [hl-]                                      ; $791d: $3a
	ld [hl], a                                       ; $791e: $77
	cp $df                                           ; $791f: $fe $df
	add hl, de                                       ; $7921: $19
	rst SubAFromDE                                          ; $7922: $df
	ld de, $c882                                     ; $7923: $11 $82 $c8
	cp b                                             ; $7926: $b8
	cp h                                             ; $7927: $bc
	ldh a, [$5c]                                     ; $7928: $f0 $5c
	ret nz                                           ; $792a: $c0

	db $ec                                           ; $792b: $ec
	and b                                            ; $792c: $a0
	db $fc                                           ; $792d: $fc
	ld [hl], b                                       ; $792e: $70
	cp b                                             ; $792f: $b8
	ld hl, sp-$38                                    ; $7930: $f8 $c8
	add sp, $38                                      ; $7932: $e8 $38
	ld a, b                                          ; $7934: $78
	jr jr_067_79a7                                   ; $7935: $18 $70

	ld [hl-], a                                      ; $7937: $32
	ld [hl], b                                       ; $7938: $70
	rst FarCall                                          ; $7939: $f7
	ld h, b                                          ; $793a: $60
	rrca                                             ; $793b: $0f
	nop                                              ; $793c: $00
	rra                                              ; $793d: $1f
	db $10                                           ; $793e: $10
	rra                                              ; $793f: $1f
	ld [$fe0e], sp                                   ; $7940: $08 $0e $fe
	adc h                                            ; $7943: $8c
	db $e3                                           ; $7944: $e3
	jp nz, $c2e3                                     ; $7945: $c2 $e3 $c2

	add $8e                                          ; $7948: $c6 $8e
	sub e                                            ; $794a: $93
	rrca                                             ; $794b: $0f
	inc a                                            ; $794c: $3c
	inc bc                                           ; $794d: $03
	ccf                                              ; $794e: $3f
	nop                                              ; $794f: $00
	ccf                                              ; $7950: $3f
	inc bc                                           ; $7951: $03
	rra                                              ; $7952: $1f
	rlca                                             ; $7953: $07
	add hl, bc                                       ; $7954: $09
	dec c                                            ; $7955: $0d
	ld bc, $03de                                     ; $7956: $01 $de $03
	sbc [hl]                                         ; $7959: $9e
	add d                                            ; $795a: $82
	ld a, e                                          ; $795b: $7b
	cp $93                                           ; $795c: $fe $93
	ld a, [de]                                       ; $795e: $1a
	rlca                                             ; $795f: $07
	inc bc                                           ; $7960: $03
	ld bc, $0001                                     ; $7961: $01 $01 $00
	ld bc, $0300                                     ; $7964: $01 $00 $03
	nop                                              ; $7967: $00
	rlca                                             ; $7968: $07
	nop                                              ; $7969: $00
	ld a, e                                          ; $796a: $7b
	ret nc                                           ; $796b: $d0

	ld a, a                                          ; $796c: $7f
	ldh [c], a                                       ; $796d: $e2
	add b                                            ; $796e: $80
	nop                                              ; $796f: $00
	rst $38                                          ; $7970: $ff
	inc bc                                           ; $7971: $03
	rst $38                                          ; $7972: $ff
	rrca                                             ; $7973: $0f
	rst $38                                          ; $7974: $ff
	ld a, a                                          ; $7975: $7f
	cp $ff                                           ; $7976: $fe $ff
	cp $8f                                           ; $7978: $fe $8f
	call c, $9d87                                    ; $797a: $dc $87 $9d
	add a                                            ; $797d: $87
	sbc c                                            ; $797e: $99
	rrca                                             ; $797f: $0f
	ld a, [hl-]                                      ; $7980: $3a
	rrca                                             ; $7981: $0f
	ld [hl], a                                       ; $7982: $77
	rra                                              ; $7983: $1f
	ld [hl], b                                       ; $7984: $70
	ccf                                              ; $7985: $3f
	ld [hl], b                                       ; $7986: $70

jr_067_7987:
	dec e                                            ; $7987: $1d
	ldh a, [rAUD3LOW]                                ; $7988: $f0 $1d
	ld [hl], b                                       ; $798a: $70
	sub l                                            ; $798b: $95
	ldh a, [$f5]                                     ; $798c: $f0 $f5
	sub a                                            ; $798e: $97
	sub b                                            ; $798f: $90
	ld [hl], h                                       ; $7990: $74
	ldh a, [hDisp1_OBP1]                                     ; $7991: $f0 $94
	ldh a, [$d0]                                     ; $7993: $f0 $d0
	jr nc, jr_067_7987                               ; $7995: $30 $f0

	sbc $30                                          ; $7997: $de $30
	add a                                            ; $7999: $87
	or l                                             ; $799a: $b5
	ldh a, [$f5]                                     ; $799b: $f0 $f5
	ld [hl], c                                       ; $799d: $71
	push de                                          ; $799e: $d5
	pop af                                           ; $799f: $f1
	rst SubAFromHL                                          ; $79a0: $d7
	pop hl                                           ; $79a1: $e1
	and a                                            ; $79a2: $a7
	ldh [c], a                                       ; $79a3: $e2
	daa                                              ; $79a4: $27
	ldh [c], a                                       ; $79a5: $e2
	cpl                                              ; $79a6: $2f

jr_067_79a7:
	jp nz, $c04f                                     ; $79a7: $c2 $4f $c0

	ld e, a                                          ; $79aa: $5f
	push bc                                          ; $79ab: $c5
	ld e, a                                          ; $79ac: $5f
	add l                                            ; $79ad: $85
	rst $38                                          ; $79ae: $ff
	add c                                            ; $79af: $81
	rst $38                                          ; $79b0: $ff
	add e                                            ; $79b1: $83
	ld a, e                                          ; $79b2: $7b
	cp a                                             ; $79b3: $bf
	adc a                                            ; $79b4: $8f
	ld b, $ff                                        ; $79b5: $06 $ff
	ld b, [hl]                                       ; $79b7: $46
	rst $38                                          ; $79b8: $ff
	ld c, [hl]                                       ; $79b9: $4e
	rst $38                                          ; $79ba: $ff
	sbc l                                            ; $79bb: $9d
	rst $38                                          ; $79bc: $ff
	cp a                                             ; $79bd: $bf
	rst FarCall                                          ; $79be: $f7
	ld a, a                                          ; $79bf: $7f
	push af                                          ; $79c0: $f5
	rst $38                                          ; $79c1: $ff
	pop hl                                           ; $79c2: $e1
	rst $38                                          ; $79c3: $ff
	rst GetHLinHL                                          ; $79c4: $cf
	ld e, a                                          ; $79c5: $5f
	jr nz, @-$60                                     ; $79c6: $20 $9e

	xor [hl]                                         ; $79c8: $ae
	inc sp                                           ; $79c9: $33
	jr nz, jr_067_7a3b                               ; $79ca: $20 $6f

	ld b, b                                          ; $79cc: $40
	sbc c                                            ; $79cd: $99
	adc h                                            ; $79ce: $8c
	add b                                            ; $79cf: $80
	ld l, h                                          ; $79d0: $6c
	nop                                              ; $79d1: $00
	ld hl, sp+$70                                    ; $79d2: $f8 $70
	ld a, e                                          ; $79d4: $7b
	ld b, b                                          ; $79d5: $40
	sbc [hl]                                         ; $79d6: $9e
	ld hl, sp+$17                                    ; $79d7: $f8 $17
	ld b, b                                          ; $79d9: $40
	sub l                                            ; $79da: $95
	jr c, jr_067_79dd                                ; $79db: $38 $00

jr_067_79dd:
	rla                                              ; $79dd: $17
	inc bc                                           ; $79de: $03
	rrca                                             ; $79df: $0f
	rlca                                             ; $79e0: $07
	dec c                                            ; $79e1: $0d
	rrca                                             ; $79e2: $0f
	dec bc                                           ; $79e3: $0b
	rrca                                             ; $79e4: $0f
	ld a, e                                          ; $79e5: $7b
	ld b, b                                          ; $79e6: $40
	sbc e                                            ; $79e7: $9b
	rlca                                             ; $79e8: $07
	rra                                              ; $79e9: $1f
	ld bc, $7b03                                     ; $79ea: $01 $03 $7b
	ld b, d                                          ; $79ed: $42
	ld d, e                                          ; $79ee: $53
	ld h, b                                          ; $79ef: $60
	sub h                                            ; $79f0: $94
	inc d                                            ; $79f1: $14
	ldh a, [rAUD1SWEEP]                              ; $79f2: $f0 $10
	ldh a, [$d0]                                     ; $79f4: $f0 $d0
	ld [hl], b                                       ; $79f6: $70
	ldh a, [rSVBK]                                   ; $79f7: $f0 $70
	ld [hl], l                                       ; $79f9: $75
	ldh a, [$d5]                                     ; $79fa: $f0 $d5
	ld a, e                                          ; $79fc: $7b
	ld h, b                                          ; $79fd: $60
	sbc d                                            ; $79fe: $9a
	sub a                                            ; $79ff: $97
	pop hl                                           ; $7a00: $e1
	daa                                              ; $7a01: $27
	ldh [c], a                                       ; $7a02: $e2
	daa                                              ; $7a03: $27
	ld e, d                                          ; $7a04: $5a
	and b                                            ; $7a05: $a0
	sbc e                                            ; $7a06: $9b
	add a                                            ; $7a07: $87
	xor [hl]                                         ; $7a08: $ae
	adc [hl]                                         ; $7a09: $8e
	cp a                                             ; $7a0a: $bf
	ld a, e                                          ; $7a0b: $7b
	ld a, [hl]                                       ; $7a0c: $7e
	cpl                                              ; $7a0d: $2f
	add b                                            ; $7a0e: $80
	sbc [hl]                                         ; $7a0f: $9e
	add sp, -$02                                     ; $7a10: $e8 $fe
	sub [hl]                                         ; $7a12: $96
	ldh a, [$e0]                                     ; $7a13: $f0 $e0
	ld hl, sp-$10                                    ; $7a15: $f8 $f0
	ld e, b                                          ; $7a17: $58
	ret c                                            ; $7a18: $d8

	ld [hl], d                                       ; $7a19: $72
	ld [hl], b                                       ; $7a1a: $70
	rst SubAFromBC                                          ; $7a1b: $e7
	halt                                             ; $7a1c: $76
	ldh a, [$36]                                     ; $7a1d: $f0 $36
	ret nz                                           ; $7a1f: $c0

	ld a, d                                          ; $7a20: $7a
	jp c, $0894                                      ; $7a21: $da $94 $08

	nop                                              ; $7a24: $00
	rlca                                             ; $7a25: $07
	rlca                                             ; $7a26: $07
	rrca                                             ; $7a27: $0f
	rrca                                             ; $7a28: $0f
	add b                                            ; $7a29: $80
	ld [bc], a                                       ; $7a2a: $02
	sbc a                                            ; $7a2b: $9f
	inc bc                                           ; $7a2c: $03
	rlca                                             ; $7a2d: $07
	ld a, d                                          ; $7a2e: $7a
	add $3b                                          ; $7a2f: $c6 $3b
	add b                                            ; $7a31: $80
	sbc d                                            ; $7a32: $9a
	ld d, b                                          ; $7a33: $50
	ldh a, [$b0]                                     ; $7a34: $f0 $b0
	ldh a, [$d5]                                     ; $7a36: $f0 $d5
	ld a, e                                          ; $7a38: $7b
	add b                                            ; $7a39: $80
	sbc h                                            ; $7a3a: $9c

jr_067_7a3b:
	push af                                          ; $7a3b: $f5
	pop af                                           ; $7a3c: $f1
	rla                                              ; $7a3d: $17
	ld c, a                                          ; $7a3e: $4f
	add b                                            ; $7a3f: $80
	ld a, a                                          ; $7a40: $7f
	nop                                              ; $7a41: $00
	rla                                              ; $7a42: $17
	add b                                            ; $7a43: $80
	ld a, a                                          ; $7a44: $7f
	xor b                                            ; $7a45: $a8
	sub l                                            ; $7a46: $95
	ld [hl], b                                       ; $7a47: $70
	ld b, b                                          ; $7a48: $40
	add b                                            ; $7a49: $80
	add b                                            ; $7a4a: $80
	ldh a, [$60]                                     ; $7a4b: $f0 $60
	ldh a, [$f0]                                     ; $7a4d: $f0 $f0
	ld a, [$7210]                                    ; $7a4f: $fa $10 $72
	ld [hl], b                                       ; $7a52: $70
	inc sp                                           ; $7a53: $33
	add b                                            ; $7a54: $80
	sub h                                            ; $7a55: $94
	jr jr_067_7a58                                   ; $7a56: $18 $00

jr_067_7a58:
	rlca                                             ; $7a58: $07
	inc bc                                           ; $7a59: $03
	nop                                              ; $7a5a: $00
	nop                                              ; $7a5b: $00
	rrca                                             ; $7a5c: $0f
	rlca                                             ; $7a5d: $07
	adc a                                            ; $7a5e: $8f
	rrca                                             ; $7a5f: $0f
	sbc a                                            ; $7a60: $9f
	ld [hl], e                                       ; $7a61: $73
	ld [bc], a                                       ; $7a62: $02
	dec sp                                           ; $7a63: $3b
	add b                                            ; $7a64: $80
	ld a, d                                          ; $7a65: $7a
	cp $99                                           ; $7a66: $fe $99
	sub b                                            ; $7a68: $90
	dec d                                            ; $7a69: $15
	ldh a, [$f5]                                     ; $7a6a: $f0 $f5
	pop af                                           ; $7a6c: $f1
	push de                                          ; $7a6d: $d5
	ld l, a                                          ; $7a6e: $6f
	add b                                            ; $7a6f: $80
	adc e                                            ; $7a70: $8b
	cp $11                                           ; $7a71: $fe $11
	ld a, [rIF]                                    ; $7a73: $fa $0f $ff
	nop                                              ; $7a76: $00
	ld [hl], c                                       ; $7a77: $71
	adc [hl]                                         ; $7a78: $8e
	ei                                               ; $7a79: $fb
	add h                                            ; $7a7a: $84
	cp a                                             ; $7a7b: $bf
	ret nz                                           ; $7a7c: $c0

	ld a, a                                          ; $7a7d: $7f
	ld b, b                                          ; $7a7e: $40
	ld e, h                                          ; $7a7f: $5c
	ld h, e                                          ; $7a80: $63
	jr nz, jr_067_7ac2                               ; $7a81: $20 $3f

	rra                                              ; $7a83: $1f
	rra                                              ; $7a84: $1f
	db $dd                                           ; $7a85: $dd
	inc c                                            ; $7a86: $0c
	rst SubAFromDE                                          ; $7a87: $df
	ld [$09df], sp                                   ; $7a88: $08 $df $09
	rst SubAFromDE                                          ; $7a8b: $df
	ld de, $01df                                     ; $7a8c: $11 $df $01
	sbc e                                            ; $7a8f: $9b
	ld sp, hl                                        ; $7a90: $f9
	rla                                              ; $7a91: $17
	rst $38                                          ; $7a92: $ff
	ld c, $0f                                        ; $7a93: $0e $0f
	ldh [$97], a                                     ; $7a95: $e0 $97
	rst AddAOntoHL                                          ; $7a97: $ef
	rra                                              ; $7a98: $1f
	rst $38                                          ; $7a99: $ff
	ld c, $7f                                        ; $7a9a: $0e $7f
	add b                                            ; $7a9c: $80
	di                                               ; $7a9d: $f3
	adc h                                            ; $7a9e: $8c
	daa                                              ; $7a9f: $27
	ldh [hDisp1_WY], a                                     ; $7aa0: $e0 $95
	cp $1f                                           ; $7aa2: $fe $1f
	rst AddAOntoHL                                          ; $7aa4: $ef
	ld e, $7d                                        ; $7aa5: $1e $7d
	adc [hl]                                         ; $7aa7: $8e
	rst $38                                          ; $7aa8: $ff
	add b                                            ; $7aa9: $80
	or e                                             ; $7aaa: $b3
	call z, $e037                                    ; $7aab: $cc $37 $e0
	rlc d                                            ; $7aae: $cb $02
	db $ed                                           ; $7ab0: $ed
	db $db                                           ; $7ab1: $db
	ld bc, $029b                                     ; $7ab2: $01 $9b $02
	inc bc                                           ; $7ab5: $03
	inc bc                                           ; $7ab6: $03
	ld [bc], a                                       ; $7ab7: $02
	ld [hl], a                                       ; $7ab8: $77
	cp $77                                           ; $7ab9: $fe $77
	ei                                               ; $7abb: $fb
	sbc d                                            ; $7abc: $9a
	inc b                                            ; $7abd: $04
	rlca                                             ; $7abe: $07
	inc b                                            ; $7abf: $04
	rlca                                             ; $7ac0: $07
	dec b                                            ; $7ac1: $05

jr_067_7ac2:
	ld e, e                                          ; $7ac2: $5b
	cp $6f                                           ; $7ac3: $fe $6f
	push hl                                          ; $7ac5: $e5
	ld h, a                                          ; $7ac6: $67
	ldh [c], a                                       ; $7ac7: $e2
	reti                                             ; $7ac8: $d9


	ld bc, $77e3                                     ; $7ac9: $01 $e3 $77
	xor [hl]                                         ; $7acc: $ae
	ld a, a                                          ; $7acd: $7f
	cp $8f                                           ; $7ace: $fe $8f
	ld b, $07                                        ; $7ad0: $06 $07
	ld a, [bc]                                       ; $7ad2: $0a
	rrca                                             ; $7ad3: $0f
	ld d, $1b                                        ; $7ad4: $16 $1b
	ld e, $13                                        ; $7ad6: $1e $13
	ld a, [hl+]                                      ; $7ad8: $2a
	scf                                              ; $7ad9: $37
	ld e, d                                          ; $7ada: $5a
	ld h, a                                          ; $7adb: $67
	or d                                             ; $7adc: $b2
	rst GetHLinHL                                          ; $7add: $cf
	ld h, e                                          ; $7ade: $63
	sbc a                                            ; $7adf: $9f
	rst AddAOntoHL                                          ; $7ae0: $ef
	rst SubAFromDE                                          ; $7ae1: $df
	inc b                                            ; $7ae2: $04
	rst SubAFromDE                                          ; $7ae3: $df
	dec b                                            ; $7ae4: $05
	rst SubAFromDE                                          ; $7ae5: $df
	rlca                                             ; $7ae6: $07
	ld l, a                                          ; $7ae7: $6f
	xor d                                            ; $7ae8: $aa
	ld a, e                                          ; $7ae9: $7b
	sbc h                                            ; $7aea: $9c
	ld a, e                                          ; $7aeb: $7b
	add h                                            ; $7aec: $84
	add b                                            ; $7aed: $80
	dec bc                                           ; $7aee: $0b
	inc c                                            ; $7aef: $0c
	ld e, $11                                        ; $7af0: $1e $11
	dec sp                                           ; $7af2: $3b
	daa                                              ; $7af3: $27
	ld e, l                                          ; $7af4: $5d
	ld l, [hl]                                       ; $7af5: $6e
	ld [hl], a                                       ; $7af6: $77
	ld e, b                                          ; $7af7: $58
	rst $38                                          ; $7af8: $ff
	rst $38                                          ; $7af9: $ff
	add h                                            ; $7afa: $84
	rst $38                                          ; $7afb: $ff
	ret z                                            ; $7afc: $c8

	cp a                                             ; $7afd: $bf
	ld c, c                                          ; $7afe: $49
	cp a                                             ; $7aff: $bf
	sub d                                            ; $7b00: $92
	ld a, l                                          ; $7b01: $7d
	sub b                                            ; $7b02: $90
	ld a, a                                          ; $7b03: $7f
	add h                                            ; $7b04: $84
	ld a, e                                          ; $7b05: $7b
	inc h                                            ; $7b06: $24
	ei                                               ; $7b07: $fb
	ld a, [hl-]                                      ; $7b08: $3a
	push hl                                          ; $7b09: $e5
	ld a, [de]                                       ; $7b0a: $1a
	push hl                                          ; $7b0b: $e5
	cp [hl]                                          ; $7b0c: $be
	sub a                                            ; $7b0d: $97
	pop bc                                           ; $7b0e: $c1
	cp c                                             ; $7b0f: $b9
	jp $83f9                                         ; $7b10: $c3 $f9 $83


	jp hl                                            ; $7b13: $e9


	sub e                                            ; $7b14: $93
	ld hl, $fe7b                                     ; $7b15: $21 $7b $fe
	sbc b                                            ; $7b18: $98
	ld sp, $2583                                     ; $7b19: $31 $83 $25
	add e                                            ; $7b1c: $83
	dec b                                            ; $7b1d: $05
	and e                                            ; $7b1e: $a3
	ld c, l                                          ; $7b1f: $4d
	ld a, e                                          ; $7b20: $7b
	cp $80                                           ; $7b21: $fe $80
	ld e, c                                          ; $7b23: $59
	and a                                            ; $7b24: $a7
	ret                                              ; $7b25: $c9


	or a                                             ; $7b26: $b7
	jp hl                                            ; $7b27: $e9


	sub a                                            ; $7b28: $97
	jp hl                                            ; $7b29: $e9


	sub a                                            ; $7b2a: $97
	xor l                                            ; $7b2b: $ad
	db $d3                                           ; $7b2c: $d3
	push hl                                          ; $7b2d: $e5
	db $db                                           ; $7b2e: $db
	ld b, a                                          ; $7b2f: $47
	ei                                               ; $7b30: $fb
	dec bc                                           ; $7b31: $0b
	rst $38                                          ; $7b32: $ff
	dec bc                                           ; $7b33: $0b
	rst $38                                          ; $7b34: $ff
	dec hl                                           ; $7b35: $2b
	rst $38                                          ; $7b36: $ff
	xor d                                            ; $7b37: $aa
	cp $8a                                           ; $7b38: $fe $8a
	cp $86                                           ; $7b3a: $fe $86
	cp $d6                                           ; $7b3c: $fe $d6
	cp $56                                           ; $7b3e: $fe $56
	ld a, [hl]                                       ; $7b40: $7e
	ld d, d                                          ; $7b41: $52
	sbc c                                            ; $7b42: $99
	ld a, [hl]                                       ; $7b43: $7e
	ld l, d                                          ; $7b44: $6a
	ld a, [hl]                                       ; $7b45: $7e
	ld a, [hl+]                                      ; $7b46: $2a
	ld a, $3a                                        ; $7b47: $3e $3a
	ld a, e                                          ; $7b49: $7b
	cp $df                                           ; $7b4a: $fe $df
	ld e, $df                                        ; $7b4c: $1e $df
	rra                                              ; $7b4e: $1f
	rst SubAFromDE                                          ; $7b4f: $df
	rrca                                             ; $7b50: $0f
	rst SubAFromDE                                          ; $7b51: $df
	ccf                                              ; $7b52: $3f
	sbc b                                            ; $7b53: $98
	rst JumpTable                                          ; $7b54: $c7
	rst $38                                          ; $7b55: $ff
	inc bc                                           ; $7b56: $03
	rst $38                                          ; $7b57: $ff
	add c                                            ; $7b58: $81
	ld a, a                                          ; $7b59: $7f
	add b                                            ; $7b5a: $80
	ld h, e                                          ; $7b5b: $63
	cp $98                                           ; $7b5c: $fe $98
	ret nz                                           ; $7b5e: $c0

	ccf                                              ; $7b5f: $3f
	ret nz                                           ; $7b60: $c0

	ccf                                              ; $7b61: $3f
	ld b, b                                          ; $7b62: $40
	cp a                                             ; $7b63: $bf
	ld h, b                                          ; $7b64: $60
	ld l, e                                          ; $7b65: $6b
	ld h, b                                          ; $7b66: $60
	ld l, [hl]                                       ; $7b67: $6e
	ldh a, [c]                                       ; $7b68: $f2
	sbc b                                            ; $7b69: $98
	dec b                                            ; $7b6a: $05
	ld b, $0c                                        ; $7b6b: $06 $0c
	rrca                                             ; $7b6d: $0f
	dec a                                            ; $7b6e: $3d
	ccf                                              ; $7b6f: $3f
	rst SubAFromBC                                          ; $7b70: $e7
	sbc $ff                                          ; $7b71: $de $ff
	add b                                            ; $7b73: $80
	ld a, a                                          ; $7b74: $7f
	add a                                            ; $7b75: $87
	rst SubAFromDE                                          ; $7b76: $df
	pop hl                                           ; $7b77: $e1
	scf                                              ; $7b78: $37
	ld hl, sp-$07                                    ; $7b79: $f8 $f9
	cp $24                                           ; $7b7b: $fe $24
	rst $38                                          ; $7b7d: $ff
	ldh a, [c]                                       ; $7b7e: $f2
	rst $38                                          ; $7b7f: $ff
	dec c                                            ; $7b80: $0d
	rst $38                                          ; $7b81: $ff
	inc bc                                           ; $7b82: $03
	ccf                                              ; $7b83: $3f
	ldh [rIE], a                                     ; $7b84: $e0 $ff
	jr @+$01                                         ; $7b86: $18 $ff

	rlca                                             ; $7b88: $07
	ccf                                              ; $7b89: $3f
	ld bc, $f00f                                     ; $7b8a: $01 $0f $f0
	rst $38                                          ; $7b8d: $ff
	adc a                                            ; $7b8e: $8f
	rst $38                                          ; $7b8f: $ff
	db $10                                           ; $7b90: $10
	ld sp, hl                                        ; $7b91: $f9
	ld hl, $f394                                     ; $7b92: $21 $94 $f3
	ld [hl+], a                                      ; $7b95: $22
	rst SubAFromBC                                          ; $7b96: $e7
	ld b, h                                          ; $7b97: $44
	rst AddAOntoHL                                          ; $7b98: $ef
	ld c, c                                          ; $7b99: $49
	rst SubAFromDE                                          ; $7b9a: $df
	sbc c                                            ; $7b9b: $99
	ei                                               ; $7b9c: $fb
	cp e                                             ; $7b9d: $bb
	ld [$c1e0], a                                    ; $7b9e: $ea $e0 $c1
	sbc d                                            ; $7ba1: $9a
	jr c, jr_067_7be3                                ; $7ba2: $38 $3f

	pop bc                                           ; $7ba4: $c1
	rst $38                                          ; $7ba5: $ff
	ld bc, $fe7b                                     ; $7ba6: $01 $7b $fe
	adc l                                            ; $7ba9: $8d
	inc de                                           ; $7baa: $13
	rst AddAOntoHL                                          ; $7bab: $ef
	or e                                             ; $7bac: $b3
	adc $23                                          ; $7bad: $ce $23
	sbc $67                                          ; $7baf: $de $67
	sbc a                                            ; $7bb1: $9f
	ld b, [hl]                                       ; $7bb2: $46
	cp a                                             ; $7bb3: $bf
	push bc                                          ; $7bb4: $c5
	ld a, $c4                                        ; $7bb5: $3e $c4
	inc a                                            ; $7bb7: $3c
	call nz, $e53c                                   ; $7bb8: $c4 $3c $e5
	ld e, $77                                        ; $7bbb: $1e $77
	cp $9d                                           ; $7bbd: $fe $9d
	or $0f                                           ; $7bbf: $f6 $0f
	db $fd                                           ; $7bc1: $fd
	rst SubAFromDE                                          ; $7bc2: $df
	cp $7e                                           ; $7bc3: $fe $7e
	xor $80                                          ; $7bc5: $ee $80
	and e                                            ; $7bc7: $a3
	ld e, a                                          ; $7bc8: $5f
	ld c, h                                          ; $7bc9: $4c
	or a                                             ; $7bca: $b7
	ld e, e                                          ; $7bcb: $5b
	xor l                                            ; $7bcc: $ad
	rra                                              ; $7bcd: $1f
	db $eb                                           ; $7bce: $eb
	ld [hl], a                                       ; $7bcf: $77
	rst SubAFromDE                                          ; $7bd0: $df
	ld d, a                                          ; $7bd1: $57
	rst $38                                          ; $7bd2: $ff
	db $fc                                           ; $7bd3: $fc
	rst $38                                          ; $7bd4: $ff
	sbc l                                            ; $7bd5: $9d
	db $e3                                           ; $7bd6: $e3
	rst $38                                          ; $7bd7: $ff
	cp $97                                           ; $7bd8: $fe $97
	rst AddAOntoHL                                          ; $7bda: $ef
	push de                                          ; $7bdb: $d5
	ld l, e                                          ; $7bdc: $6b
	ld a, e                                          ; $7bdd: $7b
	xor a                                            ; $7bde: $af
	inc l                                            ; $7bdf: $2c
	rst $38                                          ; $7be0: $ff
	inc sp                                           ; $7be1: $33
	rst $38                                          ; $7be2: $ff

jr_067_7be3:
	inc h                                            ; $7be3: $24
	db $fc                                           ; $7be4: $fc
	xor b                                            ; $7be5: $a8
	add [hl]                                         ; $7be6: $86
	ei                                               ; $7be7: $fb
	di                                               ; $7be8: $f3
	rst FarCall                                          ; $7be9: $f7
	db $e4                                           ; $7bea: $e4
	rst AddAOntoHL                                          ; $7beb: $ef
	ld hl, sp-$01                                    ; $7bec: $f8 $ff
	ld h, [hl]                                       ; $7bee: $66
	rst FarCall                                          ; $7bef: $f7
	di                                               ; $7bf0: $f3
	ei                                               ; $7bf1: $fb
	reti                                             ; $7bf2: $d9


	db $dd                                           ; $7bf3: $dd
	sbc h                                            ; $7bf4: $9c
	or $9c                                           ; $7bf5: $f6 $9c
	or [hl]                                          ; $7bf7: $b6
	or [hl]                                          ; $7bf8: $b6
	and e                                            ; $7bf9: $a3
	or [hl]                                          ; $7bfa: $b6
	db $e3                                           ; $7bfb: $e3
	or e                                             ; $7bfc: $b3
	ld h, c                                          ; $7bfd: $61
	di                                               ; $7bfe: $f3
	ld h, c                                          ; $7bff: $61
	ldh [$c1], a                                     ; $7c00: $e0 $c1
	sbc [hl]                                         ; $7c02: $9e
	pop bc                                           ; $7c03: $c1
	db $dd                                           ; $7c04: $dd
	ret nz                                           ; $7c05: $c0

	sub c                                            ; $7c06: $91
	ld b, b                                          ; $7c07: $40

jr_067_7c08:
	ret nz                                           ; $7c08: $c0

	nop                                              ; $7c09: $00

jr_067_7c0a:
	pop bc                                           ; $7c0a: $c1
	nop                                              ; $7c0b: $00
	jp $2700                                         ; $7c0c: $c3 $00 $27


	nop                                              ; $7c0f: $00
	rst $38                                          ; $7c10: $ff
	cp $01                                           ; $7c11: $fe $01
	rst $38                                          ; $7c13: $ff
	nop                                              ; $7c14: $00
	ld a, d                                          ; $7c15: $7a
	ld b, [hl]                                       ; $7c16: $46
	sub l                                            ; $7c17: $95
	ld [bc], a                                       ; $7c18: $02
	ei                                               ; $7c19: $fb
	inc b                                            ; $7c1a: $04
	rst $38                                          ; $7c1b: $ff
	ld [$10ff], sp                                   ; $7c1c: $08 $ff $10
	rst $38                                          ; $7c1f: $ff
	ld h, b                                          ; $7c20: $60
	rst $38                                          ; $7c21: $ff
	ei                                               ; $7c22: $fb
	rst SubAFromDE                                          ; $7c23: $df
	add b                                            ; $7c24: $80
	rst SubAFromDE                                          ; $7c25: $df
	ret nz                                           ; $7c26: $c0

	adc [hl]                                         ; $7c27: $8e
	jr nz, jr_067_7c0a                               ; $7c28: $20 $e0

	and e                                            ; $7c2a: $a3
	db $e3                                           ; $7c2b: $e3
	db $fc                                           ; $7c2c: $fc
	db $fc                                           ; $7c2d: $fc
	xor b                                            ; $7c2e: $a8
	ld hl, sp+$47                                    ; $7c2f: $f8 $47
	cp a                                             ; $7c31: $bf
	cp d                                             ; $7c32: $ba
	ld c, a                                          ; $7c33: $4f
	ld [hl], e                                       ; $7c34: $73
	sbc a                                            ; $7c35: $9f
	rst SubAFromBC                                          ; $7c36: $e7
	ld a, a                                          ; $7c37: $7f
	adc h                                            ; $7c38: $8c
	ld a, e                                          ; $7c39: $7b
	ld e, b                                          ; $7c3a: $58
	sub h                                            ; $7c3b: $94
	ld [hl], e                                       ; $7c3c: $73
	adc a                                            ; $7c3d: $8f
	nop                                              ; $7c3e: $00
	rst JumpTable                                          ; $7c3f: $c7
	ret nz                                           ; $7c40: $c0

	rst $38                                          ; $7c41: $ff
	jr nc, @+$01                                     ; $7c42: $30 $ff

	ret nz                                           ; $7c44: $c0

	rst $38                                          ; $7c45: $ff
	nop                                              ; $7c46: $00
	ld a, e                                          ; $7c47: $7b
	db $fc                                           ; $7c48: $fc
	ld a, a                                          ; $7c49: $7f
	jp nc, $308d                                     ; $7c4a: $d2 $8d $30

	cp a                                             ; $7c4d: $bf
	db $10                                           ; $7c4e: $10
	sbc a                                            ; $7c4f: $9f
	add b                                            ; $7c50: $80
	rst GetHLinHL                                          ; $7c51: $cf
	ret nz                                           ; $7c52: $c0

	rst SubAFromBC                                          ; $7c53: $e7
	ldh [$f3], a                                     ; $7c54: $e0 $f3
	ldh a, [$bb]                                     ; $7c56: $f0 $bb
	ldh a, [$99]                                     ; $7c58: $f0 $99
	ld hl, sp-$73                                    ; $7c5a: $f8 $8d
	db $fc                                           ; $7c5c: $fc
	add a                                            ; $7c5d: $87
	ldh [$c1], a                                     ; $7c5e: $e0 $c1
	ld a, [hl]                                       ; $7c60: $7e
	ld h, e                                          ; $7c61: $63
	adc [hl]                                         ; $7c62: $8e
	ld a, [hl]                                       ; $7c63: $7e
	inc bc                                           ; $7c64: $03
	or $03                                           ; $7c65: $f6 $03
	db $e4                                           ; $7c67: $e4
	rlca                                             ; $7c68: $07
	adc h                                            ; $7c69: $8c
	rlca                                             ; $7c6a: $07
	ld a, b                                          ; $7c6b: $78
	rrca                                             ; $7c6c: $0f
	ldh a, [$1f]                                     ; $7c6d: $f0 $1f
	ldh [$3f], a                                     ; $7c6f: $e0 $3f
	ret nz                                           ; $7c71: $c0

	rst $38                                          ; $7c72: $ff
	add b                                            ; $7c73: $80
	ld a, e                                          ; $7c74: $7b
	sub h                                            ; $7c75: $94
	ld e, e                                          ; $7c76: $5b
	cp $f6                                           ; $7c77: $fe $f6
	rst SubAFromDE                                          ; $7c79: $df
	add b                                            ; $7c7a: $80
	rst SubAFromDE                                          ; $7c7b: $df
	ld b, b                                          ; $7c7c: $40
	rst $38                                          ; $7c7d: $ff
	rst SubAFromDE                                          ; $7c7e: $df
	ret nz                                           ; $7c7f: $c0

	sub [hl]                                         ; $7c80: $96
	ld h, b                                          ; $7c81: $60
	ldh [rAUD4LEN], a                                ; $7c82: $e0 $20
	ld h, b                                          ; $7c84: $60
	nop                                              ; $7c85: $00
	jr nz, jr_067_7c08                               ; $7c86: $20 $80

	and b                                            ; $7c88: $a0
	ld b, b                                          ; $7c89: $40
	sbc $c0                                          ; $7c8a: $de $c0
	ld a, a                                          ; $7c8c: $7f
	db $f4                                           ; $7c8d: $f4
	add b                                            ; $7c8e: $80
	db $10                                           ; $7c8f: $10
	ldh a, [$e8]                                     ; $7c90: $f0 $e8
	jr jr_067_7d08                                   ; $7c92: $18 $74

	adc h                                            ; $7c94: $8c
	jp c, $2ee6                                      ; $7c95: $da $e6 $2e

	ldh a, [c]                                       ; $7c98: $f2
	rst SubAFromHL                                          ; $7c99: $d7
	add hl, sp                                       ; $7c9a: $39
	ld l, d                                          ; $7c9b: $6a
	sbc l                                            ; $7c9c: $9d
	scf                                              ; $7c9d: $37
	call z, $26dd                                    ; $7c9e: $cc $dd $26
	ld a, d                                          ; $7ca1: $7a
	add a                                            ; $7ca2: $87
	ld a, $c3                                        ; $7ca3: $3e $c3
	dec d                                            ; $7ca5: $15
	db $eb                                           ; $7ca6: $eb
	dec de                                           ; $7ca7: $1b
	push hl                                          ; $7ca8: $e5
	ld a, [bc]                                       ; $7ca9: $0a
	push af                                          ; $7caa: $f5
	ld [$00f7], sp                                   ; $7cab: $08 $f7 $00
	sbc l                                            ; $7cae: $9d
	rst $38                                          ; $7caf: $ff
	jr nz, @+$7d                                     ; $7cb0: $20 $7b

	cp $7f                                           ; $7cb2: $fe $7f
	ld d, $91                                        ; $7cb4: $16 $91
	db $10                                           ; $7cb6: $10
	cp a                                             ; $7cb7: $bf
	ld [de], a                                       ; $7cb8: $12
	cp a                                             ; $7cb9: $bf
	adc d                                            ; $7cba: $8a
	sbc a                                            ; $7cbb: $9f
	adc c                                            ; $7cbc: $89
	rst SubAFromDE                                          ; $7cbd: $df
	adc c                                            ; $7cbe: $89
	rst SubAFromDE                                          ; $7cbf: $df
	ret                                              ; $7cc0: $c9


	rst SubAFromDE                                          ; $7cc1: $df
	call nz, Call_067_776f                           ; $7cc2: $c4 $6f $77
	cp $9b                                           ; $7cc5: $fe $9b
	ldh [c], a                                       ; $7cc7: $e2
	cpl                                              ; $7cc8: $2f
	ldh [c], a                                       ; $7cc9: $e2
	ccf                                              ; $7cca: $3f
	ld [hl], e                                       ; $7ccb: $73
	cp $9e                                           ; $7ccc: $fe $9e
	ld a, a                                          ; $7cce: $7f
	ld a, e                                          ; $7ccf: $7b
	cp $9a                                           ; $7cd0: $fe $9a
	rst $38                                          ; $7cd2: $ff
	pop af                                           ; $7cd3: $f1
	rst $38                                          ; $7cd4: $ff
	pop de                                           ; $7cd5: $d1
	rst SubAFromDE                                          ; $7cd6: $df
	ld l, a                                          ; $7cd7: $6f
	cp $9a                                           ; $7cd8: $fe $9a
	adc c                                            ; $7cda: $89
	adc a                                            ; $7cdb: $8f
	add hl, bc                                       ; $7cdc: $09
	rrca                                             ; $7cdd: $0f
	dec bc                                           ; $7cde: $0b
	ld [hl], e                                       ; $7cdf: $73
	cp $91                                           ; $7ce0: $fe $91
	jp z, $3ace                                      ; $7ce2: $ca $ce $3a

	cp $0f                                           ; $7ce5: $fe $0f
	rst $38                                          ; $7ce7: $ff
	inc e                                            ; $7ce8: $1c
	rst $38                                          ; $7ce9: $ff
	ret c                                            ; $7cea: $d8

	ccf                                              ; $7ceb: $3f
	ldh a, [$3f]                                     ; $7cec: $f0 $3f
	add b                                            ; $7cee: $80
	ld a, a                                          ; $7cef: $7f
	ld [hl], a                                       ; $7cf0: $77
	ld [hl], d                                       ; $7cf1: $72
	sub d                                            ; $7cf2: $92
	ldh [$1f], a                                     ; $7cf3: $e0 $1f
	ldh a, [rIF]                                     ; $7cf5: $f0 $0f
	db $fc                                           ; $7cf7: $fc
	inc bc                                           ; $7cf8: $03
	cp $00                                           ; $7cf9: $fe $00
	db $fc                                           ; $7cfb: $fc
	nop                                              ; $7cfc: $00
	ld sp, hl                                        ; $7cfd: $f9
	nop                                              ; $7cfe: $00
	di                                               ; $7cff: $f3
	ld a, e                                          ; $7d00: $7b
	cp $9e                                           ; $7d01: $fe $9e
	rst SubAFromBC                                          ; $7d03: $e7
	ldh a, [c]                                       ; $7d04: $f2
	db $dd                                           ; $7d05: $dd
	add b                                            ; $7d06: $80
	ld a, e                                          ; $7d07: $7b

jr_067_7d08:
	ld l, d                                          ; $7d08: $6a
	ld a, a                                          ; $7d09: $7f
	db $fd                                           ; $7d0a: $fd
	adc [hl]                                         ; $7d0b: $8e
	ld b, b                                          ; $7d0c: $40
	and b                                            ; $7d0d: $a0
	ld h, b                                          ; $7d0e: $60
	ld h, b                                          ; $7d0f: $60
	and b                                            ; $7d10: $a0
	ldh [$a0], a                                     ; $7d11: $e0 $a0
	ret nc                                           ; $7d13: $d0

	or b                                             ; $7d14: $b0
	or b                                             ; $7d15: $b0
	ret nc                                           ; $7d16: $d0

	or b                                             ; $7d17: $b0
	ret nc                                           ; $7d18: $d0

	ld [hl], b                                       ; $7d19: $70
	ret nc                                           ; $7d1a: $d0

	ld d, b                                          ; $7d1b: $50

jr_067_7d1c:
	ldh a, [$7b]                                     ; $7d1c: $f0 $7b
	ei                                               ; $7d1e: $fb
	sbc d                                            ; $7d1f: $9a
	ld [hl], b                                       ; $7d20: $70
	or b                                             ; $7d21: $b0
	ld [hl], b                                       ; $7d22: $70
	ldh a, [$30]                                     ; $7d23: $f0 $30
	ld a, e                                          ; $7d25: $7b
	ei                                               ; $7d26: $fb
	sbc c                                            ; $7d27: $99
	or b                                             ; $7d28: $b0
	ldh a, [$b0]                                     ; $7d29: $f0 $b0
	or b                                             ; $7d2b: $b0
	ldh a, [hDisp1_SCY]                                     ; $7d2c: $f0 $90
	ld a, e                                          ; $7d2e: $7b
	cp $7f                                           ; $7d2f: $fe $7f
	ld [$fe77], a                                    ; $7d31: $ea $77 $fe
	ld a, a                                          ; $7d34: $7f
	ld a, $6f                                        ; $7d35: $3e $6f
	cp $7b                                           ; $7d37: $fe $7b
	bit 6, e                                         ; $7d39: $cb $73
	cp $db                                           ; $7d3b: $fe $db
	add b                                            ; $7d3d: $80
	rst FarCall                                          ; $7d3e: $f7
	rst SubAFromDE                                          ; $7d3f: $df
	ldh a, [$7f]                                     ; $7d40: $f0 $7f
	ld a, h                                          ; $7d42: $7c

jr_067_7d43:
	ld a, d                                          ; $7d43: $7a
	reti                                             ; $7d44: $d9


	adc b                                            ; $7d45: $88
	db $fc                                           ; $7d46: $fc
	ld c, $f1                                        ; $7d47: $0e $f1
	jr @-$17                                         ; $7d49: $18 $e7

	jr nc, jr_067_7d1c                               ; $7d4b: $30 $cf

	ld h, c                                          ; $7d4d: $61
	sbc a                                            ; $7d4e: $9f
	jp nz, $843f                                     ; $7d4f: $c2 $3f $84

	ld a, a                                          ; $7d52: $7f
	ld [$89ff], sp                                   ; $7d53: $08 $ff $89
	ld a, [hl]                                       ; $7d56: $7e
	db $d3                                           ; $7d57: $d3
	inc a                                            ; $7d58: $3c

jr_067_7d59:
	rst FarCall                                          ; $7d59: $f7
	jr jr_067_7d43                                   ; $7d5a: $18 $e7

	jr c, jr_067_7d59                                ; $7d5c: $38 $fb

	rst SubAFromDE                                          ; $7d5e: $df
	ldh [hDisp0_OBP1], a                                     ; $7d5f: $e0 $87
	sub b                                            ; $7d61: $90
	ld [hl], b                                       ; $7d62: $70
	db $10                                           ; $7d63: $10
	ldh a, [rSVBK]                                   ; $7d64: $f0 $70
	ldh a, [hDisp0_WY]                                     ; $7d66: $f0 $88
	ld hl, sp+$08                                    ; $7d68: $f8 $08
	ld hl, sp+$04                                    ; $7d6a: $f8 $04
	db $fc                                           ; $7d6c: $fc
	ld b, h                                          ; $7d6d: $44
	cp h                                             ; $7d6e: $bc
	call nz, $943c                                   ; $7d6f: $c4 $3c $94
	ld l, h                                          ; $7d72: $6c
	or d                                             ; $7d73: $b2
	ld c, [hl]                                       ; $7d74: $4e
	ld a, [$fa06]                                    ; $7d75: $fa $06 $fa
	ld b, $1f                                        ; $7d78: $06 $1f
	nop                                              ; $7d7a: $00
	sbc $99                                          ; $7d7b: $de $99
	sub h                                            ; $7d7d: $94
	db $dd                                           ; $7d7e: $dd
	sbc c                                            ; $7d7f: $99
	sbc c                                            ; $7d80: $99
	ld de, $cc99                                     ; $7d81: $11 $99 $cc
	sbc c                                            ; $7d84: $99
	nop                                              ; $7d85: $00
	sbc c                                            ; $7d86: $99
	sbc c                                            ; $7d87: $99
	push de                                          ; $7d88: $d5
	ld [hl], a                                       ; $7d89: $77
	ei                                               ; $7d8a: $fb
	sbc [hl]                                         ; $7d8b: $9e
	ld [hl+], a                                      ; $7d8c: $22
	ld l, a                                          ; $7d8d: $6f
	ei                                               ; $7d8e: $fb
	ld a, a                                          ; $7d8f: $7f

jr_067_7d90:
	ld a, [$889d]                                    ; $7d90: $fa $9d $88
	ld d, l                                          ; $7d93: $55
	ld [hl], a                                       ; $7d94: $77
	db $e3                                           ; $7d95: $e3
	sbc [hl]                                         ; $7d96: $9e
	db $dd                                           ; $7d97: $dd
	ld sp, $8001                                     ; $7d98: $31 $01 $80
	cp e                                             ; $7d9b: $bb
	ld [$cefa], a                                    ; $7d9c: $ea $fa $ce
	cp $c6                                           ; $7d9f: $fe $c6
	cp $86                                           ; $7da1: $fe $86
	cp $82                                           ; $7da3: $fe $82
	cp $00                                           ; $7da5: $fe $00
	and $1e                                          ; $7da7: $e6 $1e
	ld a, e                                          ; $7da9: $7b
	db $fc                                           ; $7daa: $fc
	rst $38                                          ; $7dab: $ff
	nop                                              ; $7dac: $00
	db $ed                                           ; $7dad: $ed
	ld e, $f3                                        ; $7dae: $1e $f3
	ccf                                              ; $7db0: $3f
	di                                               ; $7db1: $f3
	ld [hl], e                                       ; $7db2: $73
	call c, $d0ff                                    ; $7db3: $dc $ff $d0
	dec de                                           ; $7db6: $1b
	jp c, $ce1e                                      ; $7db7: $da $1e $ce

	adc b                                            ; $7dba: $88
	cp h                                             ; $7dbb: $bc
	xor e                                            ; $7dbc: $ab
	call nc, $e897                                   ; $7dbd: $d4 $97 $e8
	rst $38                                          ; $7dc0: $ff
	ret nz                                           ; $7dc1: $c0

	ld e, a                                          ; $7dc2: $5f
	ld h, b                                          ; $7dc3: $60
	ld e, a                                          ; $7dc4: $5f
	ld h, b                                          ; $7dc5: $60
	cpl                                              ; $7dc6: $2f
	jr nc, jr_067_7e08                               ; $7dc7: $30 $3f

	jr nc, jr_067_7e02                               ; $7dc9: $30 $37

	jr c, jr_067_7e3c                                ; $7dcb: $38 $6f

	ld l, h                                          ; $7dcd: $6c
	ld c, [hl]                                       ; $7dce: $4e
	ld c, a                                          ; $7dcf: $4f
	ld e, c                                          ; $7dd0: $59
	ld e, c                                          ; $7dd1: $59
	db $dd                                           ; $7dd2: $dd
	db $10                                           ; $7dd3: $10
	rst SubAFromDE                                          ; $7dd4: $df
	ld [$01df], sp                                   ; $7dd5: $08 $df $01
	rst SubAFromDE                                          ; $7dd8: $df
	rlca                                             ; $7dd9: $07
	sbc d                                            ; $7dda: $9a
	pop af                                           ; $7ddb: $f1
	ld h, b                                          ; $7ddc: $60
	pop af                                           ; $7ddd: $f1
	jr nz, jr_067_7d90                               ; $7dde: $20 $b0

	or e                                             ; $7de0: $b3
	sub b                                            ; $7de1: $90
	nop                                              ; $7de2: $00
	nop                                              ; $7de3: $00
	ld bc, $8383                                     ; $7de4: $01 $83 $83
	add c                                            ; $7de7: $81
	nop                                              ; $7de8: $00
	add b                                            ; $7de9: $80
	add b                                            ; $7dea: $80
	nop                                              ; $7deb: $00
	ld [$fc0c], sp                                   ; $7dec: $08 $0c $fc
	add b                                            ; $7def: $80
	add a                                            ; $7df0: $87
	sbc $03                                          ; $7df1: $de $03
	sbc [hl]                                         ; $7df3: $9e
	inc bc                                           ; $7df4: $03
	ccf                                              ; $7df5: $3f
	inc bc                                           ; $7df6: $03
	rrca                                             ; $7df7: $0f
	ld [hl], c                                       ; $7df8: $71
	di                                               ; $7df9: $f3
	db $fd                                           ; $7dfa: $fd
	rst AddAOntoHL                                          ; $7dfb: $ef
	rra                                              ; $7dfc: $1f
	rst $38                                          ; $7dfd: $ff
	nop                                              ; $7dfe: $00
	cp e                                             ; $7dff: $bb
	ld a, h                                          ; $7e00: $7c
	ld c, l                                          ; $7e01: $4d

jr_067_7e02:
	cp $ce                                           ; $7e02: $fe $ce
	rst GetHLinHL                                          ; $7e04: $cf
	cp e                                             ; $7e05: $bb
	rst $38                                          ; $7e06: $ff
	dec bc                                           ; $7e07: $0b

jr_067_7e08:
	ld a, $27                                        ; $7e08: $3e $27
	inc l                                            ; $7e0a: $2c
	ld a, b                                          ; $7e0b: $78
	rra                                              ; $7e0c: $1f
	dec hl                                           ; $7e0d: $2b
	nop                                              ; $7e0e: $00
	sbc c                                            ; $7e0f: $99
	xor b                                            ; $7e10: $a8
	ld d, a                                          ; $7e11: $57
	db $fc                                           ; $7e12: $fc
	inc bc                                           ; $7e13: $03
	ld hl, sp+$07                                    ; $7e14: $f8 $07
	ld [hl], a                                       ; $7e16: $77
	cp $89                                           ; $7e17: $fe $89
	pop af                                           ; $7e19: $f1
	rrca                                             ; $7e1a: $0f
	di                                               ; $7e1b: $f3
	rrca                                             ; $7e1c: $0f
	and $1e                                          ; $7e1d: $e6 $1e
	db $ec                                           ; $7e1f: $ec
	inc e                                            ; $7e20: $1c
	call c, $bd3c                                    ; $7e21: $dc $3c $bd
	ld a, l                                          ; $7e24: $7d
	db $fc                                           ; $7e25: $fc
	db $fc                                           ; $7e26: $fc
	db $f4                                           ; $7e27: $f4
	db $fc                                           ; $7e28: $fc
	rst SubAFromBC                                          ; $7e29: $e7
	rst $38                                          ; $7e2a: $ff
	add a                                            ; $7e2b: $87
	rst $38                                          ; $7e2c: $ff
	rlca                                             ; $7e2d: $07
	rst $38                                          ; $7e2e: $ff
	ccf                                              ; $7e2f: $3f
	ld h, b                                          ; $7e30: $60
	ld a, a                                          ; $7e31: $7f
	cp $96                                           ; $7e32: $fe $96
	db $dd                                           ; $7e34: $dd
	ld a, $be                                        ; $7e35: $3e $be
	ld a, a                                          ; $7e37: $7f
	ldh a, [rPCM34]                                  ; $7e38: $f0 $77
	ret c                                            ; $7e3a: $d8

	ei                                               ; $7e3b: $fb

jr_067_7e3c:
	jp nc, Jump_067_607b                             ; $7e3c: $d2 $7b $60

	ld b, a                                          ; $7e3f: $47
	and b                                            ; $7e40: $a0
	ld a, a                                          ; $7e41: $7f
	cp $95                                           ; $7e42: $fe $95
	cp l                                             ; $7e44: $bd
	ld a, [hl]                                       ; $7e45: $7e
	ld a, [hl]                                       ; $7e46: $7e
	rst $38                                          ; $7e47: $ff
	xor e                                            ; $7e48: $ab
	rst AddAOntoHL                                          ; $7e49: $ef
	dec bc                                           ; $7e4a: $0b
	ccf                                              ; $7e4b: $3f
	dec h                                            ; $7e4c: $25
	ld a, $77                                        ; $7e4d: $3e $77
	and b                                            ; $7e4f: $a0
	scf                                              ; $7e50: $37
	ret nz                                           ; $7e51: $c0

	ld a, a                                          ; $7e52: $7f
	cp $96                                           ; $7e53: $fe $96
	pop hl                                           ; $7e55: $e1
	nop                                              ; $7e56: $00
	sbc $3e                                          ; $7e57: $de $3e
	di                                               ; $7e59: $f3
	ld [hl], a                                       ; $7e5a: $77
	and $1e                                          ; $7e5b: $e6 $1e
	ret nz                                           ; $7e5d: $c0

	dec sp                                           ; $7e5e: $3b
	ret nz                                           ; $7e5f: $c0

	ld a, a                                          ; $7e60: $7f
	cp $95                                           ; $7e61: $fe $95
	pop bc                                           ; $7e63: $c1
	nop                                              ; $7e64: $00
	dec a                                            ; $7e65: $3d
	ld a, $67                                        ; $7e66: $3e $67

jr_067_7e68:
	rst AddAOntoHL                                          ; $7e68: $ef
	dec [hl]                                         ; $7e69: $35
	ld a, [hl]                                       ; $7e6a: $7e
	ld b, c                                          ; $7e6b: $41
	ld a, $27                                        ; $7e6c: $3e $27
	ret nz                                           ; $7e6e: $c0

	sub l                                            ; $7e6f: $95
	pop af                                           ; $7e70: $f1
	nop                                              ; $7e71: $00
	db $e4                                           ; $7e72: $e4
	jr jr_067_7e68                                   ; $7e73: $18 $f3

	ld h, c                                          ; $7e75: $61
	sbc $3e                                          ; $7e76: $de $3e
	ret nz                                           ; $7e78: $c0

	cp h                                             ; $7e79: $bc
	cpl                                              ; $7e7a: $2f
	nop                                              ; $7e7b: $00
	ei                                               ; $7e7c: $fb
	scf                                              ; $7e7d: $37
	nop                                              ; $7e7e: $00
	ld a, a                                          ; $7e7f: $7f
	cp $9e                                           ; $7e80: $fe $9e
	rst GetHLinHL                                          ; $7e82: $cf
	cp a                                             ; $7e83: $bf
	rlca                                             ; $7e84: $07
	add hl, sp                                       ; $7e85: $39
	sbc e                                            ; $7e86: $9b
	ld [bc], a                                       ; $7e87: $02
	ld b, e                                          ; $7e88: $43
	rst JumpTable                                          ; $7e89: $c7
	ccf                                              ; $7e8a: $3f
	ld [hl], e                                       ; $7e8b: $73
	and b                                            ; $7e8c: $a0
	adc a                                            ; $7e8d: $8f
	pop af                                           ; $7e8e: $f1
	ld c, $f1                                        ; $7e8f: $0e $f1
	ld e, $eb                                        ; $7e91: $1e $eb
	inc e                                            ; $7e93: $1c
	rst $38                                          ; $7e94: $ff
	nop                                              ; $7e95: $00
	cp $01                                           ; $7e96: $fe $01
	db $db                                           ; $7e98: $db
	ld [hl], $f3                                     ; $7e99: $36 $f3
	inc c                                            ; $7e9b: $0c
	rst $38                                          ; $7e9c: $ff
	nop                                              ; $7e9d: $00
	ld [hl], a                                       ; $7e9e: $77
	db $fc                                           ; $7e9f: $fc
	sub e                                            ; $7ea0: $93
	ccf                                              ; $7ea1: $3f
	ret nz                                           ; $7ea2: $c0

	sbc $e1                                          ; $7ea3: $de $e1
	ld [hl], e                                       ; $7ea5: $73
	ld a, a                                          ; $7ea6: $7f
	rst GetHLinHL                                          ; $7ea7: $cf
	rst $38                                          ; $7ea8: $ff
	rst JumpTable                                          ; $7ea9: $c7
	rst $38                                          ; $7eaa: $ff
	ret c                                            ; $7eab: $d8

	rst SubAFromBC                                          ; $7eac: $e7
	ld e, a                                          ; $7ead: $5f
	ldh [$9b], a                                     ; $7eae: $e0 $9b
	ld a, [$dd37]                                    ; $7eb0: $fa $37 $dd
	ld a, $1f                                        ; $7eb3: $3e $1f
	ldh [$98], a                                     ; $7eb5: $e0 $98
	ret nc                                           ; $7eb7: $d0

	cpl                                              ; $7eb8: $2f
	ld a, [$ff37]                                    ; $7eb9: $fa $37 $ff
	ld e, $fb                                        ; $7ebc: $1e $fb
	ld [hl], e                                       ; $7ebe: $73
	cp [hl]                                          ; $7ebf: $be
	daa                                              ; $7ec0: $27

jr_067_7ec1:
	ldh [$9b], a                                     ; $7ec1: $e0 $9b
	sbc $3f                                          ; $7ec3: $de $3f
	db $ed                                           ; $7ec5: $ed
	ld e, $47                                        ; $7ec6: $1e $47
	ldh [$33], a                                     ; $7ec8: $e0 $33
	ld bc, $bb80                                     ; $7eca: $01 $80 $bb
	ld [$cefa], a                                    ; $7ecd: $ea $fa $ce
	cp $c6                                           ; $7ed0: $fe $c6
	cp $86                                           ; $7ed2: $fe $86
	add $ba                                          ; $7ed4: $c6 $ba
	cp d                                             ; $7ed6: $ba
	ld a, h                                          ; $7ed7: $7c
	ld a, l                                          ; $7ed8: $7d
	add $ff                                          ; $7ed9: $c6 $ff
	add b                                            ; $7edb: $80
	db $fd                                           ; $7edc: $fd
	ld e, $f2                                        ; $7edd: $1e $f2
	inc sp                                           ; $7edf: $33
	di                                               ; $7ee0: $f3
	di                                               ; $7ee1: $f3
	jp nc, $9c77                                     ; $7ee2: $d2 $77 $9c

	ld e, a                                          ; $7ee5: $5f
	ret nc                                           ; $7ee6: $d0

	dec de                                           ; $7ee7: $1b
	ld a, [$fe1e]                                    ; $7ee8: $fa $1e $fe
	adc b                                            ; $7eeb: $88
	adc h                                            ; $7eec: $8c
	cp a                                             ; $7eed: $bf
	ret nz                                           ; $7eee: $c0

	cp a                                             ; $7eef: $bf
	ret nz                                           ; $7ef0: $c0

	rst $38                                          ; $7ef1: $ff
	ret nz                                           ; $7ef2: $c0

	ld e, a                                          ; $7ef3: $5f
	ld h, b                                          ; $7ef4: $60
	ld e, a                                          ; $7ef5: $5f
	ld h, b                                          ; $7ef6: $60
	cpl                                              ; $7ef7: $2f
	jr nc, jr_067_7f39                               ; $7ef8: $30 $3f

	jr nc, @+$39                                     ; $7efa: $30 $37

	jr c, jr_067_7f6d                                ; $7efc: $38 $6f

	ld l, h                                          ; $7efe: $6c
	ld c, [hl]                                       ; $7eff: $4e
	ld c, a                                          ; $7f00: $4f
	ld e, c                                          ; $7f01: $59
	ld e, c                                          ; $7f02: $59
	db $dd                                           ; $7f03: $dd
	db $10                                           ; $7f04: $10
	rst SubAFromDE                                          ; $7f05: $df
	ld [$01df], sp                                   ; $7f06: $08 $df $01
	rst SubAFromDE                                          ; $7f09: $df
	rlca                                             ; $7f0a: $07
	sbc d                                            ; $7f0b: $9a
	pop af                                           ; $7f0c: $f1
	ld h, b                                          ; $7f0d: $60
	pop af                                           ; $7f0e: $f1
	jr nz, jr_067_7ec1                               ; $7f0f: $20 $b0

	or e                                             ; $7f11: $b3
	sub b                                            ; $7f12: $90
	nop                                              ; $7f13: $00
	nop                                              ; $7f14: $00
	ld bc, $8383                                     ; $7f15: $01 $83 $83
	ld bc, $0000                                     ; $7f18: $01 $00 $00
	nop                                              ; $7f1b: $00
	nop                                              ; $7f1c: $00
	ld [$fc0c], sp                                   ; $7f1d: $08 $0c $fc
	add b                                            ; $7f20: $80
	add a                                            ; $7f21: $87
	sbc $83                                          ; $7f22: $de $83
	add [hl]                                         ; $7f24: $86
	dec sp                                           ; $7f25: $3b
	dec sp                                           ; $7f26: $3b
	ld a, a                                          ; $7f27: $7f
	ld a, a                                          ; $7f28: $7f
	rst JumpTable                                          ; $7f29: $c7
	rst $38                                          ; $7f2a: $ff
	add c                                            ; $7f2b: $81
	rst $38                                          ; $7f2c: $ff
	nop                                              ; $7f2d: $00
	ei                                               ; $7f2e: $fb
	inc a                                            ; $7f2f: $3c
	rst SubAFromBC                                          ; $7f30: $e7
	ld h, a                                          ; $7f31: $67
	add $e7                                          ; $7f32: $c6 $e7
	ld l, [hl]                                       ; $7f34: $6e
	xor $3a                                          ; $7f35: $ee $3a
	ld a, [hl]                                       ; $7f37: $7e
	dec bc                                           ; $7f38: $0b

jr_067_7f39:
	ld a, [hl]                                       ; $7f39: $7e
	daa                                              ; $7f3a: $27
	inc l                                            ; $7f3b: $2c
	ld a, a                                          ; $7f3c: $7f
	jr jr_067_7f42                                   ; $7f3d: $18 $03

	nop                                              ; $7f3f: $00
	sbc c                                            ; $7f40: $99
	db $fc                                           ; $7f41: $fc

jr_067_7f42:
	inc bc                                           ; $7f42: $03
	db $fc                                           ; $7f43: $fc
	inc bc                                           ; $7f44: $03
	ld hl, sp+$07                                    ; $7f45: $f8 $07
	ld [hl], a                                       ; $7f47: $77
	cp $89                                           ; $7f48: $fe $89
	pop af                                           ; $7f4a: $f1
	rrca                                             ; $7f4b: $0f
	di                                               ; $7f4c: $f3
	rrca                                             ; $7f4d: $0f
	and $1e                                          ; $7f4e: $e6 $1e
	db $ec                                           ; $7f50: $ec
	inc e                                            ; $7f51: $1c
	call c, $bd3c                                    ; $7f52: $dc $3c $bd
	ld a, l                                          ; $7f55: $7d
	db $fc                                           ; $7f56: $fc
	db $fc                                           ; $7f57: $fc
	db $f4                                           ; $7f58: $f4
	db $fc                                           ; $7f59: $fc
	rst SubAFromBC                                          ; $7f5a: $e7
	rst $38                                          ; $7f5b: $ff
	add a                                            ; $7f5c: $87
	rst $38                                          ; $7f5d: $ff
	rlca                                             ; $7f5e: $07
	rst $38                                          ; $7f5f: $ff
	ld b, a                                          ; $7f60: $47
	ld h, b                                          ; $7f61: $60
	ld a, a                                          ; $7f62: $7f
	cp h                                             ; $7f63: $bc
	sbc b                                            ; $7f64: $98
	rst $38                                          ; $7f65: $ff
	ld e, $ff                                        ; $7f66: $1e $ff
	ccf                                              ; $7f68: $3f
	di                                               ; $7f69: $f3
	rst $38                                          ; $7f6a: $ff
	sbc [hl]                                         ; $7f6b: $9e
	ld l, e                                          ; $7f6c: $6b

jr_067_7f6d:
	ld h, b                                          ; $7f6d: $60
	ld c, a                                          ; $7f6e: $4f
	and b                                            ; $7f6f: $a0
	ld a, e                                          ; $7f70: $7b
	cp $96                                           ; $7f71: $fe $96
	inc a                                            ; $7f73: $3c
	rst $38                                          ; $7f74: $ff
	ld a, a                                          ; $7f75: $7f
	xor $ff                                          ; $7f76: $ee $ff
	adc d                                            ; $7f78: $8a
	xor [hl]                                         ; $7f79: $ae
	dec bc                                           ; $7f7a: $0b
	ld a, $6f                                        ; $7f7b: $3e $6f
	and b                                            ; $7f7d: $a0
	dec sp                                           ; $7f7e: $3b
	ret nz                                           ; $7f7f: $c0

	cp a                                             ; $7f80: $bf
	pop hl                                           ; $7f81: $e1
	sbc [hl]                                         ; $7f82: $9e
	sub [hl]                                         ; $7f83: $96
	ld e, $7f                                        ; $7f84: $1e $7f
	rst $38                                          ; $7f86: $ff
	ld [$fa3f], a                                    ; $7f87: $ea $3f $fa
	inc e                                            ; $7f8a: $1c
	cp $80                                           ; $7f8b: $fe $80
	ld b, e                                          ; $7f8d: $43
	ret nz                                           ; $7f8e: $c0

	cp a                                             ; $7f8f: $bf
	jp $97bf                                         ; $7f90: $c3 $bf $97


	ld a, $f7                                        ; $7f93: $3e $f7
	rst $38                                          ; $7f95: $ff
	ld e, a                                          ; $7f96: $5f
	ld a, [hl]                                       ; $7f97: $7e
	ccf                                              ; $7f98: $3f
	inc a                                            ; $7f99: $3c
	ld a, a                                          ; $7f9a: $7f
	cp a                                             ; $7f9b: $bf
	inc bc                                           ; $7f9c: $03
	cp e                                             ; $7f9d: $bb
	dec sp                                           ; $7f9e: $3b
	ret nz                                           ; $7f9f: $c0

	sbc [hl]                                         ; $7fa0: $9e
	ld hl, sp-$41                                    ; $7fa1: $f8 $bf
	pop af                                           ; $7fa3: $f1
	sbc $9a                                          ; $7fa4: $de $9a
	ld h, b                                          ; $7fa6: $60
	ldh [$31], a                                     ; $7fa7: $e0 $31
	rst SubAFromDE                                          ; $7fa9: $df
	ld a, $37                                        ; $7faa: $3e $37
	ret nz                                           ; $7fac: $c0

	sbc [hl]                                         ; $7fad: $9e
	rst JumpTable                                          ; $7fae: $c7
	cp a                                             ; $7faf: $bf
	inc bc                                           ; $7fb0: $03
	dec a                                            ; $7fb1: $3d
	sbc d                                            ; $7fb2: $9a
	ld bc, $4342                                     ; $7fb3: $01 $42 $43
	ld a, l                                          ; $7fb6: $7d
	ld a, $77                                        ; $7fb7: $3e $77
	ret nz                                           ; $7fb9: $c0

	sbc c                                            ; $7fba: $99
	pop af                                           ; $7fbb: $f1
	ld c, $f1                                        ; $7fbc: $0e $f1
	ld e, $eb                                        ; $7fbe: $1e $eb
	inc e                                            ; $7fc0: $1c
	ld a, e                                          ; $7fc1: $7b
	add sp, -$68                                     ; $7fc2: $e8 $98
	ld bc, $36db                                     ; $7fc4: $01 $db $36
	di                                               ; $7fc7: $f3
	inc c                                            ; $7fc8: $0c
	rst $38                                          ; $7fc9: $ff
	nop                                              ; $7fca: $00
	ld [hl], a                                       ; $7fcb: $77
	db $fc                                           ; $7fcc: $fc
	sub e                                            ; $7fcd: $93
	ccf                                              ; $7fce: $3f
	ret nz                                           ; $7fcf: $c0

	sbc $e1                                          ; $7fd0: $de $e1
	ld [hl], e                                       ; $7fd2: $73
	ld a, a                                          ; $7fd3: $7f
	rst GetHLinHL                                          ; $7fd4: $cf
	rst $38                                          ; $7fd5: $ff
	rst JumpTable                                          ; $7fd6: $c7
	rst $38                                          ; $7fd7: $ff
	ret c                                            ; $7fd8: $d8

	rst SubAFromBC                                          ; $7fd9: $e7
	ld h, a                                          ; $7fda: $67
	ldh [$99], a                                     ; $7fdb: $e0 $99
	cp a                                             ; $7fdd: $bf
	ld b, c                                          ; $7fde: $41
	ldh a, [c]                                       ; $7fdf: $f2
	ccf                                              ; $7fe0: $3f
	db $fd                                           ; $7fe1: $fd
	ld e, $1f                                        ; $7fe2: $1e $1f
	ldh [$98], a                                     ; $7fe4: $e0 $98
	add c                                            ; $7fe6: $81
	ld a, a                                          ; $7fe7: $7f
	db $eb                                           ; $7fe8: $eb
	scf                                              ; $7fe9: $37
	rst SubAFromDE                                          ; $7fea: $df
	ld a, $ed                                        ; $7feb: $3e $ed
	ld [hl], e                                       ; $7fed: $73

Jump_067_7fee:
	sbc $37                                          ; $7fee: $de $37
	ldh [$97], a                                     ; $7ff0: $e0 $97
	pop bc                                           ; $7ff2: $c1
	ld a, a                                          ; $7ff3: $7f
	xor e                                            ; $7ff4: $ab
	ld [hl], a                                       ; $7ff5: $77
	cp $3f                                           ; $7ff6: $fe $3f
	db $dd                                           ; $7ff8: $dd
	ld a, $47                                        ; $7ff9: $3e $47
	ldh [rLCDC], a                                   ; $7ffb: $e0 $40
	ld bc, $bb80                                     ; $7ffd: $01 $80 $bb
