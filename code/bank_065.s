; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $065", ROMX[$4000], BANK[$65]

	daa                                              ; $4000: $27
	ldh [$0e], a                                     ; $4001: $e0 $0e
	ld bc, $d980                                     ; $4003: $01 $80 $d9
	ld a, a                                          ; $4006: $7f
	sbc l                                            ; $4007: $9d
	rst FarCall                                          ; $4008: $f7
	db $ed                                           ; $4009: $ed
	ld [hl], a                                       ; $400a: $77
	rst $38                                          ; $400b: $ff
	ld e, l                                          ; $400c: $5d
	nop                                              ; $400d: $00
	rra                                              ; $400e: $1f
	rst $38                                          ; $400f: $ff
	inc bc                                           ; $4010: $03
	rst $38                                          ; $4011: $ff
	nop                                              ; $4012: $00
	db $ed                                           ; $4013: $ed
	ld e, $b3                                        ; $4014: $1e $b3
	ld [hl], e                                       ; $4016: $73
	db $dd                                           ; $4017: $dd
	rst $38                                          ; $4018: $ff
	ld d, e                                          ; $4019: $53
	ld e, $0d                                        ; $401a: $1e $0d
	ld c, $9e                                        ; $401c: $0e $9e
	nop                                              ; $401e: $00
	add b                                            ; $401f: $80

Jump_065_4020:
	add b                                            ; $4020: $80
	rst GetHLinHL                                          ; $4021: $cf
	add b                                            ; $4022: $80
	ld h, b                                          ; $4023: $60
	add b                                            ; $4024: $80
	ret nz                                           ; $4025: $c0

	ld h, b                                          ; $4026: $60
	ldh [rSVBK], a                                   ; $4027: $e0 $70
	ldh [$78], a                                     ; $4029: $e0 $78
	ldh a, [$7c]                                     ; $402b: $f0 $7c
	ld hl, sp+$6f                                    ; $402d: $f8 $6f
	cp $6f                                           ; $402f: $fe $6f
	rst $38                                          ; $4031: $ff
	rst GetHLinHL                                          ; $4032: $cf
	rst AddAOntoHL                                          ; $4033: $ef
	adc $ef                                          ; $4034: $ce $ef
	sbc [hl]                                         ; $4036: $9e
	rst GetHLinHL                                          ; $4037: $cf
	adc d                                            ; $4038: $8a
	rst SubAFromDE                                          ; $4039: $df
	inc de                                           ; $403a: $13
	sbc $1b                                          ; $403b: $de $1b
	or [hl]                                          ; $403d: $b6
	dec e                                            ; $403e: $1d
	or [hl]                                          ; $403f: $b6
	ld [hl], $6d                                     ; $4040: $36 $6d
	dec sp                                           ; $4042: $3b
	ld l, l                                          ; $4043: $6d
	add [hl]                                         ; $4044: $86
	ld l, l                                          ; $4045: $6d
	db $db                                           ; $4046: $db
	ld b, a                                          ; $4047: $47
	rst $38                                          ; $4048: $ff
	ld h, a                                          ; $4049: $67
	db $fc                                           ; $404a: $fc
	ld [hl], a                                       ; $404b: $77
	call c, $cffb                                    ; $404c: $dc $fb $cf
	ld a, [hl]                                       ; $404f: $7e
	add $3f                                          ; $4050: $c6 $3f
	jp nz, Jump_065_42bd                             ; $4052: $c2 $bd $42

	cp l                                             ; $4055: $bd
	ld a, [hl]                                       ; $4056: $7e
	cp c                                             ; $4057: $b9
	ld h, [hl]                                       ; $4058: $66
	rst $38                                          ; $4059: $ff
	ld h, [hl]                                       ; $405a: $66
	db $e4                                           ; $405b: $e4
	ld b, b                                          ; $405c: $40
	ld b, d                                          ; $405d: $42
	cp [hl]                                          ; $405e: $be
	add hl, de                                       ; $405f: $19
	sbc h                                            ; $4060: $9c
	db $38, $8a                                      ; $4061: $38 $8a
	stop                                             ; $4063: $10 $00
	nop                                              ; $4065: $00
	dec de                                           ; $4066: $1b
	cp $65                                           ; $4067: $fe $65
	rst $38                                          ; $4069: $ff
	rst $38                                          ; $406a: $ff
	rst SubAFromDE                                          ; $406b: $df
	nop                                              ; $406c: $00
	rrca                                             ; $406d: $0f
	rst $38                                          ; $406e: $ff
	add b                                            ; $406f: $80
	rst $38                                          ; $4070: $ff
	nop                                              ; $4071: $00
	db $fd                                           ; $4072: $fd
	ld a, $e3                                        ; $4073: $3e $e3
	ld [hl], e                                       ; $4075: $73
	db $dd                                           ; $4076: $dd
	rra                                              ; $4077: $1f
	ld [hl], a                                       ; $4078: $77
	and d                                            ; $4079: $a2
	sbc [hl]                                         ; $407a: $9e
	ld e, $bc                                        ; $407b: $1e $bc
	ld bc, $033f                                     ; $407d: $01 $3f $03
	inc bc                                           ; $4080: $03
	inc bc                                           ; $4081: $03
	adc a                                            ; $4082: $8f
	ld bc, $0107                                     ; $4083: $01 $07 $01
	rlca                                             ; $4086: $07
	rlca                                             ; $4087: $07
	ld c, $07                                        ; $4088: $0e $07
	inc a                                            ; $408a: $3c
	rra                                              ; $408b: $1f
	db $fc                                           ; $408c: $fc
	ld l, a                                          ; $408d: $6f
	ld sp, hl                                        ; $408e: $f9
	adc a                                            ; $408f: $8f
	ld sp, hl                                        ; $4090: $f9
	rra                                              ; $4091: $1f
	pop af                                           ; $4092: $f1
	ld [hl], e                                       ; $4093: $73
	cp $7f                                           ; $4094: $fe $7f
	ld hl, sp-$69                                    ; $4096: $f8 $97

Jump_065_4098:
	ld a, c                                          ; $4098: $79
	rra                                              ; $4099: $1f
	ld a, l                                          ; $409a: $7d
	rra                                              ; $409b: $1f
	push af                                          ; $409c: $f5
	rra                                              ; $409d: $1f
	rst FarCall                                          ; $409e: $f7
	rst $38                                          ; $409f: $ff
	ld c, a                                          ; $40a0: $4f
	ld h, b                                          ; $40a1: $60
	ld a, e                                          ; $40a2: $7b
	cp $98                                           ; $40a3: $fe $98
	ld a, $f1                                        ; $40a5: $3e $f1
	di                                               ; $40a7: $f3
	ld d, e                                          ; $40a8: $53
	rra                                              ; $40a9: $1f
	rra                                              ; $40aa: $1f
	ld e, $67                                        ; $40ab: $1e $67
	ld h, b                                          ; $40ad: $60
	ld h, e                                          ; $40ae: $63
	and b                                            ; $40af: $a0
	cp [hl]                                          ; $40b0: $be
	rst $38                                          ; $40b1: $ff
	rst $38                                          ; $40b2: $ff
	rst $38                                          ; $40b3: $ff
	sbc e                                            ; $40b4: $9b
	ccf                                              ; $40b5: $3f
	pop af                                           ; $40b6: $f1
	ld [hl], e                                       ; $40b7: $73
	ld c, a                                          ; $40b8: $4f
	ld a, e                                          ; $40b9: $7b
	ldh [c], a                                       ; $40ba: $e2
	ld e, a                                          ; $40bb: $5f
	and b                                            ; $40bc: $a0
	ld b, e                                          ; $40bd: $43
	ret nz                                           ; $40be: $c0

	ld a, e                                          ; $40bf: $7b
	call c, $e79d                                    ; $40c0: $dc $9d $e7
	ld [hl], a                                       ; $40c3: $77
	inc hl                                           ; $40c4: $23
	ret nz                                           ; $40c5: $c0

	ld a, e                                          ; $40c6: $7b
	ldh [c], a                                       ; $40c7: $e2
	sbc [hl]                                         ; $40c8: $9e
	ld h, e                                          ; $40c9: $63
	ld a, e                                          ; $40ca: $7b
	ldh [c], a                                       ; $40cb: $e2
	inc de                                           ; $40cc: $13
	ret nz                                           ; $40cd: $c0

	sbc d                                            ; $40ce: $9a
	jr nc, @+$81                                     ; $40cf: $30 $7f

	ld h, e                                          ; $40d1: $63
	ccf                                              ; $40d2: $3f
	ld a, $23                                        ; $40d3: $3e $23
	ret nz                                           ; $40d5: $c0

	ld [hl], e                                       ; $40d6: $73
	ldh [c], a                                       ; $40d7: $e2
	ld e, a                                          ; $40d8: $5f
	ret nz                                           ; $40d9: $c0

	sbc h                                            ; $40da: $9c
	inc e                                            ; $40db: $1c
	jr @+$12                                         ; $40dc: $18 $10

	cp l                                             ; $40de: $bd
	ld [rRAMG], sp                                   ; $40df: $08 $00 $00
	ret nz                                           ; $40e2: $c0

	sub c                                            ; $40e3: $91
	add b                                            ; $40e4: $80
	di                                               ; $40e5: $f3
	pop hl                                           ; $40e6: $e1
	rst $38                                          ; $40e7: $ff
	sbc $cf                                          ; $40e8: $de $cf
	add b                                            ; $40ea: $80
	rst JumpTable                                          ; $40eb: $c7
	add b                                            ; $40ec: $80
	jp $c180                                         ; $40ed: $c3 $80 $c1


	add b                                            ; $40f0: $80
	ret nz                                           ; $40f1: $c0

	ld [hl], e                                       ; $40f2: $73
	cp $9e                                           ; $40f3: $fe $9e
	ldh [$7b], a                                     ; $40f5: $e0 $7b
	ldh [$9c], a                                     ; $40f7: $e0 $9c
	inc e                                            ; $40f9: $1c
	inc c                                            ; $40fa: $0c
	ld [$0cbe], sp                                   ; $40fb: $08 $be $0c
	nop                                              ; $40fe: $00
	ret nz                                           ; $40ff: $c0

	daa                                              ; $4100: $27
	ldh [$7f], a                                     ; $4101: $e0 $7f
	rst SubAFromDE                                          ; $4103: $df
	ld [hl], e                                       ; $4104: $73
	sbc $1f                                          ; $4105: $de $1f
	ldh [$7b], a                                     ; $4107: $e0 $7b
	rst SubAFromDE                                          ; $4109: $df
	ld a, e                                          ; $410a: $7b
	sbc $9e                                          ; $410b: $de $9e
	call z, $e033                                    ; $410d: $cc $33 $e0
	dec b                                            ; $4110: $05
	inc bc                                           ; $4111: $03
	ei                                               ; $4112: $fb
	rst SubAFromDE                                          ; $4113: $df
	ld bc, $03df                                     ; $4114: $01 $df $03
	sbc [hl]                                         ; $4117: $9e
	ld [bc], a                                       ; $4118: $02
	ld [hl], e                                       ; $4119: $73
	cp $9c                                           ; $411a: $fe $9c
	ld b, $07                                        ; $411c: $06 $07
	inc b                                            ; $411e: $04
	ld a, e                                          ; $411f: $7b
	cp $df                                           ; $4120: $fe $df
	rrca                                             ; $4122: $0f
	add b                                            ; $4123: $80
	inc c                                            ; $4124: $0c
	rrca                                             ; $4125: $0f
	add hl, bc                                       ; $4126: $09
	rrca                                             ; $4127: $0f
	dec de                                           ; $4128: $1b
	ld e, $17                                        ; $4129: $1e $17
	inc e                                            ; $412b: $1c
	ld bc, $0201                                     ; $412c: $01 $01 $02
	inc bc                                           ; $412f: $03
	dec b                                            ; $4130: $05
	ld b, $04                                        ; $4131: $06 $04
	rlca                                             ; $4133: $07
	dec bc                                           ; $4134: $0b
	dec c                                            ; $4135: $0d
	dec c                                            ; $4136: $0d
	dec bc                                           ; $4137: $0b
	ld d, $1b                                        ; $4138: $16 $1b
	dec de                                           ; $413a: $1b
	ld d, $1d                                        ; $413b: $16 $1d
	ld d, $27                                        ; $413d: $16 $27
	inc a                                            ; $413f: $3c
	ld a, [hl+]                                      ; $4140: $2a
	dec a                                            ; $4141: $3d
	cpl                                              ; $4142: $2f
	sub a                                            ; $4143: $97
	add hl, sp                                       ; $4144: $39
	dec [hl]                                         ; $4145: $35
	dec sp                                           ; $4146: $3b
	ld [hl-], a                                      ; $4147: $32
	ccf                                              ; $4148: $3f
	ld [hl-], a                                      ; $4149: $32
	ccf                                              ; $414a: $3f
	inc h                                            ; $414b: $24
	ld [hl], e                                       ; $414c: $73
	cp $9e                                           ; $414d: $fe $9e
	jr z, jr_065_41cc                                ; $414f: $28 $7b

	cp $9a                                           ; $4151: $fe $9a
	add hl, hl                                       ; $4153: $29
	ccf                                              ; $4154: $3f
	dec hl                                           ; $4155: $2b
	ccf                                              ; $4156: $3f
	ld l, $73                                        ; $4157: $2e $73
	or $7f                                           ; $4159: $f6 $7f
	ldh [c], a                                       ; $415b: $e2
	sbc e                                            ; $415c: $9b
	ld a, [hl-]                                      ; $415d: $3a
	dec a                                            ; $415e: $3d
	ld a, [de]                                       ; $415f: $1a
	dec e                                            ; $4160: $1d
	ld l, a                                          ; $4161: $6f
	cp $9d                                           ; $4162: $fe $9d
	ld a, [bc]                                       ; $4164: $0a
	dec c                                            ; $4165: $0d
	ld l, a                                          ; $4166: $6f
	cp $99                                           ; $4167: $fe $99
	dec bc                                           ; $4169: $0b
	inc c                                            ; $416a: $0c
	dec c                                            ; $416b: $0d
	ld c, $05                                        ; $416c: $0e $05
	ld b, $77                                        ; $416e: $06 $77
	cp $7f                                           ; $4170: $fe $7f
	and b                                            ; $4172: $a0
	ld a, a                                          ; $4173: $7f
	cp $d9                                           ; $4174: $fe $d9
	inc bc                                           ; $4176: $03
	db $dd                                           ; $4177: $dd
	ld bc, $07df                                     ; $4178: $01 $df $07
	adc l                                            ; $417b: $8d
	dec e                                            ; $417c: $1d
	rra                                              ; $417d: $1f
	ld a, a                                          ; $417e: $7f
	ld a, d                                          ; $417f: $7a

jr_065_4180:
	rst $38                                          ; $4180: $ff
	push de                                          ; $4181: $d5
	ld a, [hl-]                                      ; $4182: $3a
	rst AddAOntoHL                                          ; $4183: $ef
	db $10                                           ; $4184: $10
	rst $38                                          ; $4185: $ff
	inc bc                                           ; $4186: $03
	rst $38                                          ; $4187: $ff
	rlca                                             ; $4188: $07
	db $fc                                           ; $4189: $fc
	rlca                                             ; $418a: $07
	db $fc                                           ; $418b: $fc
	rrca                                             ; $418c: $0f

jr_065_418d:
	ld hl, sp+$7b                                    ; $418d: $f8 $7b
	cp $96                                           ; $418f: $fe $96
	rst $38                                          ; $4191: $ff
	ret nz                                           ; $4192: $c0

	rst $38                                          ; $4193: $ff
	jr nz, @+$01                                     ; $4194: $20 $ff

	sub b                                            ; $4196: $90
	rst $38                                          ; $4197: $ff
	ret z                                            ; $4198: $c8

	ld a, a                                          ; $4199: $7f
	db $ed                                           ; $419a: $ed
	rst SubAFromDE                                          ; $419b: $df
	rrca                                             ; $419c: $0f
	add b                                            ; $419d: $80
	ld a, $3f                                        ; $419e: $3e $3f
	rst AddAOntoHL                                          ; $41a0: $ef
	pop af                                           ; $41a1: $f1
	dec c                                            ; $41a2: $0d
	ld c, $30                                        ; $41a3: $0e $30
	ccf                                              ; $41a5: $3f
	rst GetHLinHL                                          ; $41a6: $cf
	ldh a, [$36]                                     ; $41a7: $f0 $36
	rst GetHLinHL                                          ; $41a9: $cf
	db $dd                                           ; $41aa: $dd
	jr c, jr_065_420d                                ; $41ab: $38 $60

	di                                               ; $41ad: $f3
	and d                                            ; $41ae: $a2
	call nz, $8044                                   ; $41af: $c4 $44 $80
	add c                                            ; $41b2: $81
	nop                                              ; $41b3: $00
	or d                                             ; $41b4: $b2
	ld bc, $63d4                                     ; $41b5: $01 $d4 $63
	ld h, d                                          ; $41b8: $62
	rst JumpTable                                          ; $41b9: $c7
	xor e                                            ; $41ba: $ab
	add $84                                          ; $41bb: $c6 $84
	add b                                            ; $41bd: $80
	adc $56                                          ; $41be: $ce $56
	adc h                                            ; $41c0: $8c
	add hl, de                                       ; $41c1: $19
	adc h                                            ; $41c2: $8c
	xor d                                            ; $41c3: $aa
	dec e                                            ; $41c4: $1d
	or l                                             ; $41c5: $b5
	dec de                                           ; $41c6: $1b
	ld e, d                                          ; $41c7: $5a
	or a                                             ; $41c8: $b7
	dec h                                            ; $41c9: $25
	rst $38                                          ; $41ca: $ff
	add hl, hl                                       ; $41cb: $29

jr_065_41cc:
	rst $38                                          ; $41cc: $ff
	ld d, d                                          ; $41cd: $52
	rst $38                                          ; $41ce: $ff
	db $e4                                           ; $41cf: $e4
	rst $38                                          ; $41d0: $ff
	push bc                                          ; $41d1: $c5
	rst $38                                          ; $41d2: $ff
	dec bc                                           ; $41d3: $0b
	cp $1e                                           ; $41d4: $fe $1e
	db $fd                                           ; $41d6: $fd
	ld a, $f9                                        ; $41d7: $3e $f9
	ld [hl], b                                       ; $41d9: $70
	rst SubAFromDE                                          ; $41da: $df
	cp $89                                           ; $41db: $fe $89
	add b                                            ; $41dd: $80
	cp b                                             ; $41de: $b8
	adc b                                            ; $41df: $88
	cp h                                             ; $41e0: $bc
	adc b                                            ; $41e1: $88
	ld a, h                                          ; $41e2: $7c
	call nc, $cc5c                                   ; $41e3: $d4 $5c $cc
	ld [hl], b                                       ; $41e6: $70
	ldh [$5e], a                                     ; $41e7: $e0 $5e
	db $fc                                           ; $41e9: $fc
	rst GetHLinHL                                          ; $41ea: $cf
	ld a, [hl]                                       ; $41eb: $7e
	rst AddAOntoHL                                          ; $41ec: $ef
	ld e, a                                          ; $41ed: $5f
	or a                                             ; $41ee: $b7
	ld c, a                                          ; $41ef: $4f
	dec d                                            ; $41f0: $15
	ld c, a                                          ; $41f1: $4f
	dec e                                            ; $41f2: $1d
	ld b, a                                          ; $41f3: $47
	ld a, [hl+]                                      ; $41f4: $2a
	ld b, a                                          ; $41f5: $47
	ld c, l                                          ; $41f6: $4d
	ld [hl+], a                                      ; $41f7: $22
	inc c                                            ; $41f8: $0c
	ld [hl+], a                                      ; $41f9: $22
	add [hl]                                         ; $41fa: $86
	jr nz, jr_065_418d                               ; $41fb: $20 $90

	rst SubAFromDE                                          ; $41fd: $df
	jr nz, jr_065_4180                               ; $41fe: $20 $80

	sub b                                            ; $4200: $90
	ld bc, $ca90                                     ; $4201: $01 $90 $ca
	sub c                                            ; $4204: $91
	sbc e                                            ; $4205: $9b
	ret z                                            ; $4206: $c8

	db $fd                                           ; $4207: $fd
	ret z                                            ; $4208: $c8

	ld d, [hl]                                       ; $4209: $56
	db $ed                                           ; $420a: $ed
	and h                                            ; $420b: $a4
	rst $38                                          ; $420c: $ff

jr_065_420d:
	sub d                                            ; $420d: $92
	rst $38                                          ; $420e: $ff
	ret                                              ; $420f: $c9


jr_065_4210:
	rst $38                                          ; $4210: $ff
	ld h, h                                          ; $4211: $64
	ld a, a                                          ; $4212: $7f
	di                                               ; $4213: $f3

jr_065_4214:
	cp a                                             ; $4214: $bf
	db $fd                                           ; $4215: $fd
	rst $38                                          ; $4216: $ff
	rra                                              ; $4217: $1f
	rla                                              ; $4218: $17
	rra                                              ; $4219: $1f
	ld de, $121e                                     ; $421a: $11 $1e $12
	ld e, $12                                        ; $421d: $1e $12
	sub h                                            ; $421f: $94
	ld a, $22                                        ; $4220: $3e $22
	cp [hl]                                          ; $4222: $be
	and d                                            ; $4223: $a2
	cp $c2                                           ; $4224: $fe $c2
	rst $38                                          ; $4226: $ff
	ld bc, $00ff                                     ; $4227: $01 $ff $00
	rst $38                                          ; $422a: $ff
	or $df                                           ; $422b: $f6 $df
	inc bc                                           ; $422d: $03
	rst SubAFromDE                                          ; $422e: $df
	ld c, $80                                        ; $422f: $0e $80
	rra                                              ; $4231: $1f
	dec de                                           ; $4232: $1b
	ld a, [hl-]                                      ; $4233: $3a
	scf                                              ; $4234: $37
	cpl                                              ; $4235: $2f
	ld [hl], $f5                                     ; $4236: $36 $f5
	xor $77                                          ; $4238: $ee $77
	db $ec                                           ; $423a: $ec
	cp e                                             ; $423b: $bb
	ld h, h                                          ; $423c: $64
	db $fd                                           ; $423d: $fd
	ld [bc], a                                       ; $423e: $02
	jr nc, jr_065_4210                               ; $423f: $30 $cf

	db $fc                                           ; $4241: $fc
	inc bc                                           ; $4242: $03
	jr nc, jr_065_4214                               ; $4243: $30 $cf

	ld c, $f1                                        ; $4245: $0e $f1
	ld a, a                                          ; $4247: $7f
	add b                                            ; $4248: $80
	ld a, a                                          ; $4249: $7f
	nop                                              ; $424a: $00
	adc [hl]                                         ; $424b: $8e
	ld [hl], b                                       ; $424c: $70
	inc a                                            ; $424d: $3c
	ret nz                                           ; $424e: $c0

	ld c, h                                          ; $424f: $4c
	adc l                                            ; $4250: $8d
	add b                                            ; $4251: $80
	add l                                            ; $4252: $85
	ld [$091c], sp                                   ; $4253: $08 $1c $09
	add hl, hl                                       ; $4256: $29
	add hl, de                                       ; $4257: $19
	ld d, e                                          ; $4258: $53
	add hl, sp                                       ; $4259: $39
	cp c                                             ; $425a: $b9
	ld [hl], e                                       ; $425b: $73
	ld h, [hl]                                       ; $425c: $66
	di                                               ; $425d: $f3
	db $db                                           ; $425e: $db
	and $b5                                          ; $425f: $e6 $b5
	adc $84                                          ; $4261: $ce $84
	ld d, a                                          ; $4263: $57
	cp a                                             ; $4264: $bf
	ldh [$cc], a                                     ; $4265: $e0 $cc
	add b                                            ; $4267: $80
	db $dd                                           ; $4268: $dd
	or a                                             ; $4269: $b7
	db $dd                                           ; $426a: $dd
	or a                                             ; $426b: $b7
	db $db                                           ; $426c: $db
	or l                                             ; $426d: $b5
	db $db                                           ; $426e: $db
	or l                                             ; $426f: $b5
	rst FarCall                                          ; $4270: $f7
	xor e                                            ; $4271: $ab
	scf                                              ; $4272: $37
	db $eb                                           ; $4273: $eb
	rst $38                                          ; $4274: $ff
	rst $38                                          ; $4275: $ff
	pop af                                           ; $4276: $f1
	pop af                                           ; $4277: $f1
	ld de, $f311                                     ; $4278: $11 $11 $f3
	di                                               ; $427b: $f3
	rrca                                             ; $427c: $0f
	rrca                                             ; $427d: $0f
	ld e, $1f                                        ; $427e: $1e $1f
	ld a, [hl-]                                      ; $4280: $3a
	ccf                                              ; $4281: $3f
	ld a, [$4bff]                                    ; $4282: $fa $ff $4b
	rst $38                                          ; $4285: $ff
	bit 3, e                                         ; $4286: $cb $5b
	and b                                            ; $4288: $a0
	rst SubAFromDE                                          ; $4289: $df
	rra                                              ; $428a: $1f
	rst SubAFromDE                                          ; $428b: $df
	ld a, b                                          ; $428c: $78
	add b                                            ; $428d: $80
	xor a                                            ; $428e: $af
	rst SubAFromDE                                          ; $428f: $df
	db $dd                                           ; $4290: $dd
	ld a, $a6                                        ; $4291: $3e $a6
	ld a, c                                          ; $4293: $79
	ld e, e                                          ; $4294: $5b
	rst SubAFromBC                                          ; $4295: $e7
	or h                                             ; $4296: $b4
	rst GetHLinHL                                          ; $4297: $cf
	xor c                                            ; $4298: $a9
	sbc $03                                          ; $4299: $de $03
	db $fc                                           ; $429b: $fc
	inc bc                                           ; $429c: $03
	db $fc                                           ; $429d: $fc
	ld b, $f9                                        ; $429e: $06 $f9
	inc bc                                           ; $42a0: $03
	db $fc                                           ; $42a1: $fc
	ld e, $e1                                        ; $42a2: $1e $e1
	ccf                                              ; $42a4: $3f
	ret nz                                           ; $42a5: $c0

	cp c                                             ; $42a6: $b9
	ld b, [hl]                                       ; $42a7: $46
	halt                                             ; $42a8: $76
	inc bc                                           ; $42a9: $03
	push de                                          ; $42aa: $d5
	inc bc                                           ; $42ab: $03
	ld d, d                                          ; $42ac: $52
	rst SubAFromDE                                          ; $42ad: $df
	add c                                            ; $42ae: $81
	sub c                                            ; $42af: $91
	add b                                            ; $42b0: $80
	adc b                                            ; $42b1: $88
	add b                                            ; $42b2: $80
	ld [de], a                                       ; $42b3: $12
	adc b                                            ; $42b4: $88
	sbc e                                            ; $42b5: $9b
	ld [$192a], sp                                   ; $42b6: $08 $2a $19
	ld l, c                                          ; $42b9: $69
	dec de                                           ; $42ba: $1b
	db $ed                                           ; $42bb: $ed
	ld e, e                                          ; $42bc: $5b

Jump_065_42bd:
	ld c, c                                          ; $42bd: $49
	ld a, e                                          ; $42be: $7b
	ld b, $e0                                        ; $42bf: $06 $e0
	pop bc                                           ; $42c1: $c1
	add b                                            ; $42c2: $80
	ldh a, [$30]                                     ; $42c3: $f0 $30
	ld hl, sp+$18                                    ; $42c5: $f8 $18
	db $fc                                           ; $42c7: $fc
	adc h                                            ; $42c8: $8c
	or $56                                           ; $42c9: $f6 $56
	db $eb                                           ; $42cb: $eb
	dec hl                                           ; $42cc: $2b
	rst FarCall                                          ; $42cd: $f7
	inc d                                            ; $42ce: $14
	rst $38                                          ; $42cf: $ff
	rst $38                                          ; $42d0: $ff
	dec c                                            ; $42d1: $0d
	dec c                                            ; $42d2: $0d
	call z, $0ccc                                    ; $42d3: $cc $cc $0c
	inc c                                            ; $42d6: $0c
	adc [hl]                                         ; $42d7: $8e
	adc d                                            ; $42d8: $8a
	rst GetHLinHL                                          ; $42d9: $cf
	ret                                              ; $42da: $c9


	rst $38                                          ; $42db: $ff
	db $fc                                           ; $42dc: $fc
	ld a, a                                          ; $42dd: $7f
	ldh [c], a                                       ; $42de: $e2
	ld a, a                                          ; $42df: $7f
	pop af                                           ; $42e0: $f1
	ccf                                              ; $42e1: $3f
	sbc [hl]                                         ; $42e2: $9e
	ld hl, sp-$0b                                    ; $42e3: $f8 $f5
	rst SubAFromDE                                          ; $42e5: $df
	rst $38                                          ; $42e6: $ff
	add b                                            ; $42e7: $80
	and a                                            ; $42e8: $a7
	rst SubAFromDE                                          ; $42e9: $df
	ret c                                            ; $42ea: $d8

	jr c, @+$01                                      ; $42eb: $38 $ff

	rst $38                                          ; $42ed: $ff
	ccf                                              ; $42ee: $3f
	ret nz                                           ; $42ef: $c0

	db $fc                                           ; $42f0: $fc
	inc bc                                           ; $42f1: $03
	ldh [$1f], a                                     ; $42f2: $e0 $1f
	sbc a                                            ; $42f4: $9f
	ld a, a                                          ; $42f5: $7f
	ld l, a                                          ; $42f6: $6f
	ldh a, [$bf]                                     ; $42f7: $f0 $bf
	ret nz                                           ; $42f9: $c0

	rst $38                                          ; $42fa: $ff
	rlca                                             ; $42fb: $07
	rst $38                                          ; $42fc: $ff
	nop                                              ; $42fd: $00
	ld c, [hl]                                       ; $42fe: $4e
	pop hl                                           ; $42ff: $e1
	and e                                            ; $4300: $a3
	ld [hl], h                                       ; $4301: $74
	ret nc                                           ; $4302: $d0

	inc sp                                           ; $4303: $33
	add hl, hl                                       ; $4304: $29
	sub c                                            ; $4305: $91
	adc c                                            ; $4306: $89
	adc l                                            ; $4307: $8d
	ret nz                                           ; $4308: $c0

	ld h, h                                          ; $4309: $64
	jp nz, $66c3                                     ; $430a: $c2 $c3 $66

	or d                                             ; $430d: $b2
	ld h, a                                          ; $430e: $67
	push hl                                          ; $430f: $e5
	inc sp                                           ; $4310: $33
	push de                                          ; $4311: $d5
	inc sp                                           ; $4312: $33
	ld e, c                                          ; $4313: $59
	or a                                             ; $4314: $b7
	ld d, c                                          ; $4315: $51
	cp a                                             ; $4316: $bf
	sub c                                            ; $4317: $91
	rst $38                                          ; $4318: $ff
	sub e                                            ; $4319: $93
	inc bc                                           ; $431a: $03
	ld h, b                                          ; $431b: $60
	pop hl                                           ; $431c: $e1
	add h                                            ; $431d: $84
	db $fd                                           ; $431e: $fd
	rra                                              ; $431f: $1f
	db $fd                                           ; $4320: $fd
	rra                                              ; $4321: $1f
	rst $38                                          ; $4322: $ff
	rrca                                             ; $4323: $0f
	rst SubAFromBC                                          ; $4324: $e7
	rlca                                             ; $4325: $07
	rst GetHLinHL                                          ; $4326: $cf
	rlca                                             ; $4327: $07
	rst JumpTable                                          ; $4328: $c7
	add e                                            ; $4329: $83
	ld b, a                                          ; $432a: $47
	jp $e3f6                                         ; $432b: $c3 $f6 $e3


	cp $33                                           ; $432e: $fe $33
	cp $33                                           ; $4330: $fe $33
	xor $3b                                          ; $4332: $ee $3b
	xor $3b                                          ; $4334: $ee $3b
	and $ff                                          ; $4336: $e6 $ff
	ld b, $7b                                        ; $4338: $06 $7b
	cp $9e                                           ; $433a: $fe $9e
	add [hl]                                         ; $433c: $86
	ld d, e                                          ; $433d: $53
	and b                                            ; $433e: $a0
	rst SubAFromDE                                          ; $433f: $df
	add b                                            ; $4340: $80
	db $fd                                           ; $4341: $fd
	rst SubAFromDE                                          ; $4342: $df
	ldh [$9b], a                                     ; $4343: $e0 $9b
	call c, $3b3c                                    ; $4345: $dc $3c $3b
	rst JumpTable                                          ; $4348: $c7
	ld a, e                                          ; $4349: $7b
	ld d, e                                          ; $434a: $53
	add e                                            ; $434b: $83
	rst $38                                          ; $434c: $ff
	cp b                                             ; $434d: $b8
	ld a, b                                          ; $434e: $78
	or $0e                                           ; $434f: $f6 $0e
	db $dd                                           ; $4351: $dd
	db $e3                                           ; $4352: $e3
	or [hl]                                          ; $4353: $b6
	ld a, c                                          ; $4354: $79
	db $ec                                           ; $4355: $ec
	rra                                              ; $4356: $1f
	or d                                             ; $4357: $b2
	rst GetHLinHL                                          ; $4358: $cf
	db $dd                                           ; $4359: $dd
	ld h, e                                          ; $435a: $63
	ld l, l                                          ; $435b: $6d
	or e                                             ; $435c: $b3
	or h                                             ; $435d: $b4
	db $db                                           ; $435e: $db
	ld hl, sp+$4f                                    ; $435f: $f8 $4f
	ld d, h                                          ; $4361: $54
	ld l, a                                          ; $4362: $6f
	and d                                            ; $4363: $a2
	ld a, a                                          ; $4364: $7f
	inc hl                                           ; $4365: $23
	rst $38                                          ; $4366: $ff
	ld de, $fe7b                                     ; $4367: $11 $7b $fe
	sbc [hl]                                         ; $436a: $9e
	sbc b                                            ; $436b: $98
	ld a, e                                          ; $436c: $7b
	cp $8d                                           ; $436d: $fe $8d
	sbc h                                            ; $436f: $9c
	rst $38                                          ; $4370: $ff
	call nc, $d4f7                                   ; $4371: $d4 $f7 $d4
	ld [hl], a                                       ; $4374: $77
	jp nc, $d273                                     ; $4375: $d2 $73 $d2

	ld [hl], e                                       ; $4378: $73
	ld [hl], c                                       ; $4379: $71
	pop af                                           ; $437a: $f1
	or c                                             ; $437b: $b1
	ld [hl], c                                       ; $437c: $71
	pop de                                           ; $437d: $d1
	ld sp, $30d0                                     ; $437e: $31 $d0 $30
	ld [hl], a                                       ; $4381: $77
	cp $9d                                           ; $4382: $fe $9d
	ldh a, [rAUD1SWEEP]                              ; $4384: $f0 $10
	ld [hl], a                                       ; $4386: $77
	cp $9b                                           ; $4387: $fe $9b
	ldh [rAUD4LEN], a                                ; $4389: $e0 $20
	ret nz                                           ; $438b: $c0

	ret nz                                           ; $438c: $c0

	ld h, a                                          ; $438d: $67
	xor b                                            ; $438e: $a8
	rst SubAFromDE                                          ; $438f: $df
	add b                                            ; $4390: $80
	rst SubAFromDE                                          ; $4391: $df
	ret nz                                           ; $4392: $c0

	sub c                                            ; $4393: $91
	ld b, b                                          ; $4394: $40
	ret nz                                           ; $4395: $c0

	ld h, b                                          ; $4396: $60
	ldh [rAUD4LEN], a                                ; $4397: $e0 $20
	ldh [$30], a                                     ; $4399: $e0 $30
	ldh a, [$30]                                     ; $439b: $f0 $30
	ldh a, [$b0]                                     ; $439d: $f0 $b0
	ldh a, [$b8]                                     ; $439f: $f0 $b8
	ld hl, sp+$77                                    ; $43a1: $f8 $77
	cp $9c                                           ; $43a3: $fe $9c
	cp h                                             ; $43a5: $bc
	db $fc                                           ; $43a6: $fc
	or h                                             ; $43a7: $b4
	ld [hl], e                                       ; $43a8: $73
	cp $83                                           ; $43a9: $fe $83
	or [hl]                                          ; $43ab: $b6
	cp $bf                                           ; $43ac: $fe $bf

jr_065_43ae:
	rst $38                                          ; $43ae: $ff
	cp a                                             ; $43af: $bf
	ld sp, hl                                        ; $43b0: $f9
	rst $38                                          ; $43b1: $ff
	di                                               ; $43b2: $f3
	rst $38                                          ; $43b3: $ff
	cp $ff                                           ; $43b4: $fe $ff
	ret nz                                           ; $43b6: $c0

	rst SubAFromBC                                          ; $43b7: $e7
	add b                                            ; $43b8: $80
	sbc [hl]                                         ; $43b9: $9e
	adc h                                            ; $43ba: $8c
	ld sp, hl                                        ; $43bb: $f9
	sub b                                            ; $43bc: $90
	di                                               ; $43bd: $f3
	ldh [c], a                                       ; $43be: $e2
	ld a, [hl]                                       ; $43bf: $7e
	db $ec                                           ; $43c0: $ec
	dec a                                            ; $43c1: $3d
	ldh a, [$3f]                                     ; $43c2: $f0 $3f
	di                                               ; $43c4: $f3
	rra                                              ; $43c5: $1f
	db $fc                                           ; $43c6: $fc
	jp hl                                            ; $43c7: $e9


	rst SubAFromDE                                          ; $43c8: $df
	ret nz                                           ; $43c9: $c0

	rst SubAFromDE                                          ; $43ca: $df
	ldh a, [$df]                                     ; $43cb: $f0 $df
	jr c, jr_065_43ae                                ; $43cd: $38 $df

	inc c                                            ; $43cf: $0c
	ld [hl], a                                       ; $43d0: $77
	and [hl]                                         ; $43d1: $a6
	ld a, a                                          ; $43d2: $7f
	xor b                                            ; $43d3: $a8
	ld a, a                                          ; $43d4: $7f
	xor h                                            ; $43d5: $ac
	sub d                                            ; $43d6: $92
	sub b                                            ; $43d7: $90
	ldh a, [rOBP0]                                   ; $43d8: $f0 $48
	ld a, b                                          ; $43da: $78
	xor b                                            ; $43db: $a8
	cp b                                             ; $43dc: $b8
	sbc h                                            ; $43dd: $9c
	sbc h                                            ; $43de: $9c
	ld c, h                                          ; $43df: $4c
	call z, $c444                                    ; $43e0: $cc $44 $c4
	jr nz, jr_065_4460                               ; $43e3: $20 $7b

	sbc b                                            ; $43e5: $98
	ld a, a                                          ; $43e6: $7f
	ldh a, [$7f]                                     ; $43e7: $f0 $7f
	cp $9d                                           ; $43e9: $fe $9d
	ret nc                                           ; $43eb: $d0

	ldh a, [$db]                                     ; $43ec: $f0 $db
	or b                                             ; $43ee: $b0
	db $dd                                           ; $43ef: $dd
	sub b                                            ; $43f0: $90
	rst SubAFromHL                                          ; $43f1: $d7
	add b                                            ; $43f2: $80
	db $eb                                           ; $43f3: $eb
	ld [hl], a                                       ; $43f4: $77
	cp b                                             ; $43f5: $b8
	ld a, a                                          ; $43f6: $7f
	jp z, Jump_065_447f                              ; $43f7: $ca $7f $44

	adc a                                            ; $43fa: $8f
	ld hl, sp+$08                                    ; $43fb: $f8 $08
	db $f4                                           ; $43fd: $f4
	inc c                                            ; $43fe: $0c
	inc sp                                           ; $43ff: $33
	rst GetHLinHL                                          ; $4400: $cf
	ld [hl], b                                       ; $4401: $70
	adc a                                            ; $4402: $8f
	or d                                             ; $4403: $b2
	ld c, l                                          ; $4404: $4d
	and e                                            ; $4405: $a3
	call c, $8c73                                    ; $4406: $dc $73 $8c
	rra                                              ; $4409: $1f
	ldh [rAUD4GO], a                                 ; $440a: $e0 $23
	jp nc, Jump_065_4098                             ; $440c: $d2 $98 $40

	and b                                            ; $440f: $a0
	ld h, b                                          ; $4410: $60
	and b                                            ; $4411: $a0
	ld h, b                                          ; $4412: $60
	ret nc                                           ; $4413: $d0

	jr nc, @+$24                                     ; $4414: $30 $22

	nop                                              ; $4416: $00
	sbc [hl]                                         ; $4417: $9e
	xor $de                                          ; $4418: $ee $de
	sbc c                                            ; $441a: $99
	ld a, a                                          ; $441b: $7f
	db $fc                                           ; $441c: $fc
	sub l                                            ; $441d: $95
	ld de, $1100                                     ; $441e: $11 $00 $11
	ld [hl], a                                       ; $4421: $77
	sbc c                                            ; $4422: $99
	ld de, $9999                                     ; $4423: $11 $99 $99
	ld d, l                                          ; $4426: $55
	sub c                                            ; $4427: $91
	ld [hl], a                                       ; $4428: $77
	ei                                               ; $4429: $fb
	ld [hl], a                                       ; $442a: $77
	or $99                                           ; $442b: $f6 $99
	ld [hl+], a                                      ; $442d: $22
	sbc c                                            ; $442e: $99
	ld de, $9988                                     ; $442f: $11 $88 $99
	add b                                            ; $4432: $80
	sbc $99                                          ; $4433: $de $99
	rst SubAFromDE                                          ; $4435: $df
	cp e                                             ; $4436: $bb
	ld d, $01                                        ; $4437: $16 $01
	add [hl]                                         ; $4439: $86
	inc c                                            ; $443a: $0c
	ei                                               ; $443b: $fb
	add hl, de                                       ; $443c: $19
	rst $38                                          ; $443d: $ff
	inc hl                                           ; $443e: $23
	rst $38                                          ; $443f: $ff
	ld [hl], a                                       ; $4440: $77
	call z, $ff98                                    ; $4441: $cc $98 $ff
	ld a, a                                          ; $4444: $7f
	add b                                            ; $4445: $80
	db $ed                                           ; $4446: $ed
	ld e, $de                                        ; $4447: $1e $de
	ccf                                              ; $4449: $3f
	and l                                            ; $444a: $a5
	ld h, a                                          ; $444b: $67
	call $e5dc                                       ; $444c: $cd $dc $e5
	inc a                                            ; $444f: $3c
	cp d                                             ; $4450: $ba
	inc e                                            ; $4451: $1c
	inc e                                            ; $4452: $1c
	cp e                                             ; $4453: $bb
	add b                                            ; $4454: $80
	ld a, a                                          ; $4455: $7f
	nop                                              ; $4456: $00
	nop                                              ; $4457: $00
	add b                                            ; $4458: $80
	ret nz                                           ; $4459: $c0

	add b                                            ; $445a: $80
	add b                                            ; $445b: $80
	ldh [$c0], a                                     ; $445c: $e0 $c0
	ld hl, sp-$10                                    ; $445e: $f8 $f0

jr_065_4460:
	db $fc                                           ; $4460: $fc
	ld hl, sp-$41                                    ; $4461: $f8 $bf
	cp $bf                                           ; $4463: $fe $bf
	ei                                               ; $4465: $fb
	ld d, a                                          ; $4466: $57
	db $fc                                           ; $4467: $fc
	ld d, a                                          ; $4468: $57
	ld a, h                                          ; $4469: $7c
	ld c, e                                          ; $446a: $4b
	ld a, [hl]                                       ; $446b: $7e
	ld c, e                                          ; $446c: $4b
	ld a, [hl]                                       ; $446d: $7e
	dec hl                                           ; $446e: $2b
	ld a, a                                          ; $446f: $7f
	dec h                                            ; $4470: $25
	cp a                                             ; $4471: $bf
	dec h                                            ; $4472: $25
	cp a                                             ; $4473: $bf
	sub l                                            ; $4474: $95
	cp a                                             ; $4475: $bf
	reti                                             ; $4476: $d9


	cp a                                             ; $4477: $bf
	reti                                             ; $4478: $d9


	scf                                              ; $4479: $37
	adc [hl]                                         ; $447a: $8e
	db $db                                           ; $447b: $db
	ld [hl], $bb                                     ; $447c: $36 $bb
	ld h, [hl]                                       ; $447e: $66

Jump_065_447f:
	scf                                              ; $447f: $37

Call_065_4480:
	call z, Call_065_689f                            ; $4480: $cc $9f $68
	sbc $21                                          ; $4483: $de $21
	sbc $21                                          ; $4485: $de $21
	ret nz                                           ; $4487: $c0

	ccf                                              ; $4488: $3f
	sbc [hl]                                         ; $4489: $9e
	ld hl, $bd31                                     ; $448a: $21 $31 $bd
	jr nz, jr_065_44bd                               ; $448d: $20 $2e

	ld e, a                                          ; $448f: $5f
	cp a                                             ; $4490: $bf
	sub e                                            ; $4491: $93
	inc b                                            ; $4492: $04
	rlca                                             ; $4493: $07
	nop                                              ; $4494: $00
	sbc e                                            ; $4495: $9b
	halt                                             ; $4496: $76
	cp e                                             ; $4497: $bb
	ld a, [hl]                                       ; $4498: $7e
	and c                                            ; $4499: $a1
	ld a, a                                          ; $449a: $7f
	ld a, a                                          ; $449b: $7f
	db $e4                                           ; $449c: $e4
	add b                                            ; $449d: $80
	ld a, e                                          ; $449e: $7b
	and b                                            ; $449f: $a0
	sub d                                            ; $44a0: $92
	ei                                               ; $44a1: $fb
	inc e                                            ; $44a2: $1c
	ld a, a                                          ; $44a3: $7f
	ld a, $65                                        ; $44a4: $3e $65
	ld h, a                                          ; $44a6: $67
	ld c, l                                          ; $44a7: $4d
	ld e, h                                          ; $44a8: $5c
	ld h, l                                          ; $44a9: $65
	inc a                                            ; $44aa: $3c
	ld a, d                                          ; $44ab: $7a
	inc e                                            ; $44ac: $1c
	inc a                                            ; $44ad: $3c
	cp [hl]                                          ; $44ae: $be
	nop                                              ; $44af: $00
	rst SubAFromDE                                          ; $44b0: $df
	adc a                                            ; $44b1: $8f
	adc a                                            ; $44b2: $8f
	ld bc, $010f                                     ; $44b3: $01 $0f $01
	rra                                              ; $44b6: $1f
	inc bc                                           ; $44b7: $03
	rra                                              ; $44b8: $1f
	rlca                                             ; $44b9: $07
	inc a                                            ; $44ba: $3c
	rrca                                             ; $44bb: $0f
	inc a                                            ; $44bc: $3c

jr_065_44bd:
	rra                                              ; $44bd: $1f
	or $7f                                           ; $44be: $f6 $7f
	sub $ff                                          ; $44c0: $d6 $ff
	push de                                          ; $44c2: $d5
	ld [hl], e                                       ; $44c3: $73
	cp $93                                           ; $44c4: $fe $93
	call nc, $caff                                   ; $44c6: $d4 $ff $ca
	rst $38                                          ; $44c9: $ff
	ld [$eaff], a                                    ; $44ca: $ea $ff $ea
	ld a, a                                          ; $44cd: $7f
	push hl                                          ; $44ce: $e5
	ccf                                              ; $44cf: $3f
	push af                                          ; $44d0: $f5
	ccf                                              ; $44d1: $3f
	ld d, a                                          ; $44d2: $57
	ld h, b                                          ; $44d3: $60
	sub a                                            ; $44d4: $97
	rst $38                                          ; $44d5: $ff
	nop                                              ; $44d6: $00
	db $dd                                           ; $44d7: $dd
	ld a, $bf                                        ; $44d8: $3e $bf
	ld a, a                                          ; $44da: $7f
	call Call_065_57ce                               ; $44db: $cd $ce $57
	ld h, b                                          ; $44de: $60
	ld d, a                                          ; $44df: $57
	and b                                            ; $44e0: $a0
	ld a, a                                          ; $44e1: $7f
	ldh [$99], a                                     ; $44e2: $e0 $99
	ld e, l                                          ; $44e4: $5d
	ld a, $7f                                        ; $44e5: $3e $7f
	ld a, a                                          ; $44e7: $7f
	ld c, l                                          ; $44e8: $4d
	ld c, [hl]                                       ; $44e9: $4e
	ld d, a                                          ; $44ea: $57
	and b                                            ; $44eb: $a0
	ld c, a                                          ; $44ec: $4f
	ret nz                                           ; $44ed: $c0

	ld l, a                                          ; $44ee: $6f
	cp [hl]                                          ; $44ef: $be
	sbc l                                            ; $44f0: $9d
	push bc                                          ; $44f1: $c5
	call z, $c027                                    ; $44f2: $cc $27 $c0
	ld a, a                                          ; $44f5: $7f
	xor $7f                                          ; $44f6: $ee $7f
	cp [hl]                                          ; $44f8: $be
	sbc e                                            ; $44f9: $9b
	ccf                                              ; $44fa: $3f
	ld a, a                                          ; $44fb: $7f
	ld b, l                                          ; $44fc: $45
	ld c, h                                          ; $44fd: $4c
	rra                                              ; $44fe: $1f
	ret nz                                           ; $44ff: $c0

	ld a, a                                          ; $4500: $7f
	cp $99                                           ; $4501: $fe $99
	rst GetHLinHL                                          ; $4503: $cf
	ld b, e                                          ; $4504: $43
	rst $38                                          ; $4505: $ff
	cp $be                                           ; $4506: $fe $be
	inc a                                            ; $4508: $3c
	daa                                              ; $4509: $27
	ret nz                                           ; $450a: $c0

	ld a, a                                          ; $450b: $7f
	cp $99                                           ; $450c: $fe $99
	ld c, a                                          ; $450e: $4f
	ld b, e                                          ; $450f: $43
	ld a, a                                          ; $4510: $7f
	ld a, [hl]                                       ; $4511: $7e
	ld a, [hl]                                       ; $4512: $7e
	inc a                                            ; $4513: $3c
	ld h, a                                          ; $4514: $67
	ret nz                                           ; $4515: $c0

	rst $38                                          ; $4516: $ff
	sbc d                                            ; $4517: $9a
	inc c                                            ; $4518: $0c
	nop                                              ; $4519: $00
	inc e                                            ; $451a: $1c
	ld [$be00], sp                                   ; $451b: $08 $00 $be
	ld [$0300], sp                                   ; $451e: $08 $00 $03
	sbc c                                            ; $4521: $99
	ld bc, $87ef                                     ; $4522: $01 $ef $87
	rst $38                                          ; $4525: $ff
	ld a, h                                          ; $4526: $7c
	rst $38                                          ; $4527: $ff
	cp l                                             ; $4528: $bd
	sbc a                                            ; $4529: $9f
	add a                                            ; $452a: $87
	add e                                            ; $452b: $83
	ret nz                                           ; $452c: $c0

	ld a, d                                          ; $452d: $7a
	xor d                                            ; $452e: $aa
	sub h                                            ; $452f: $94
	pop hl                                           ; $4530: $e1
	ldh [rAUD3LEVEL], a                              ; $4531: $e0 $1c
	inc c                                            ; $4533: $0c
	inc a                                            ; $4534: $3c
	db $10                                           ; $4535: $10
	inc a                                            ; $4536: $3c
	inc d                                            ; $4537: $14
	inc e                                            ; $4538: $1c
	jr jr_065_4553                                   ; $4539: $18 $18

	dec hl                                           ; $453b: $2b
	ldh [$7f], a                                     ; $453c: $e0 $7f
	sub a                                            ; $453e: $97
	sbc l                                            ; $453f: $9d
	inc a                                            ; $4540: $3c
	inc h                                            ; $4541: $24
	ld a, e                                          ; $4542: $7b
	cp $07                                           ; $4543: $fe $07
	ldh [$9d], a                                     ; $4545: $e0 $9d
	jr nz, jr_065_4581                               ; $4547: $20 $38

	ld a, e                                          ; $4549: $7b
	sbc $37                                          ; $454a: $de $37
	ldh [rAUD4POLY], a                               ; $454c: $e0 $22
	ld bc, $0c86                                     ; $454e: $01 $86 $0c
	ei                                               ; $4551: $fb
	add hl, de                                       ; $4552: $19

jr_065_4553:
	rst $38                                          ; $4553: $ff
	inc hl                                           ; $4554: $23
	rst $38                                          ; $4555: $ff
	ld [hl], a                                       ; $4556: $77
	call z, $ff80                                    ; $4557: $cc $80 $ff
	ld a, a                                          ; $455a: $7f
	sbc [hl]                                         ; $455b: $9e
	rst SubAFromBC                                          ; $455c: $e7
	ccf                                              ; $455d: $3f
	push bc                                          ; $455e: $c5
	ld h, a                                          ; $455f: $67
	call $fddc                                       ; $4560: $cd $dc $fd
	inc a                                            ; $4563: $3c
	push hl                                          ; $4564: $e5
	inc a                                            ; $4565: $3c
	cp d                                             ; $4566: $ba
	inc e                                            ; $4567: $1c
	inc e                                            ; $4568: $1c
	cp e                                             ; $4569: $bb
	add b                                            ; $456a: $80
	ld a, a                                          ; $456b: $7f
	nop                                              ; $456c: $00
	nop                                              ; $456d: $00
	add b                                            ; $456e: $80
	ret nz                                           ; $456f: $c0

	add b                                            ; $4570: $80
	add b                                            ; $4571: $80
	ldh [$c0], a                                     ; $4572: $e0 $c0
	ld hl, sp-$10                                    ; $4574: $f8 $f0
	db $fc                                           ; $4576: $fc
	ld hl, sp-$41                                    ; $4577: $f8 $bf
	cp $bf                                           ; $4579: $fe $bf
	ei                                               ; $457b: $fb
	ld d, a                                          ; $457c: $57
	db $fc                                           ; $457d: $fc
	ld d, a                                          ; $457e: $57
	ld a, h                                          ; $457f: $7c
	ld c, e                                          ; $4580: $4b

jr_065_4581:
	ld a, [hl]                                       ; $4581: $7e
	ld c, e                                          ; $4582: $4b
	ld a, [hl]                                       ; $4583: $7e
	dec hl                                           ; $4584: $2b
	ld a, a                                          ; $4585: $7f
	dec h                                            ; $4586: $25
	cp a                                             ; $4587: $bf
	dec h                                            ; $4588: $25
	cp a                                             ; $4589: $bf
	sub l                                            ; $458a: $95
	cp a                                             ; $458b: $bf
	reti                                             ; $458c: $d9


	cp a                                             ; $458d: $bf
	reti                                             ; $458e: $d9


	scf                                              ; $458f: $37
	adc [hl]                                         ; $4590: $8e
	db $db                                           ; $4591: $db
	ld [hl], $bb                                     ; $4592: $36 $bb
	ld h, [hl]                                       ; $4594: $66
	scf                                              ; $4595: $37
	call z, Call_065_689f                            ; $4596: $cc $9f $68
	sbc $21                                          ; $4599: $de $21
	sbc $21                                          ; $459b: $de $21
	ret nz                                           ; $459d: $c0

	ccf                                              ; $459e: $3f
	sbc [hl]                                         ; $459f: $9e
	ld hl, $bd31                                     ; $45a0: $21 $31 $bd
	jr nz, jr_065_45c9                               ; $45a3: $20 $24

	ld b, a                                          ; $45a5: $47
	add a                                            ; $45a6: $87
	sub h                                            ; $45a7: $94
	inc b                                            ; $45a8: $04
	ld b, $00                                        ; $45a9: $06 $00
	sbc e                                            ; $45ab: $9b
	halt                                             ; $45ac: $76
	cp e                                             ; $45ad: $bb
	ld a, [hl]                                       ; $45ae: $7e
	and c                                            ; $45af: $a1
	ld a, a                                          ; $45b0: $7f
	ld a, a                                          ; $45b1: $7f
	db $e4                                           ; $45b2: $e4
	ld a, e                                          ; $45b3: $7b
	and b                                            ; $45b4: $a0
	sub c                                            ; $45b5: $91
	sbc h                                            ; $45b6: $9c
	rst SubAFromBC                                          ; $45b7: $e7
	ld a, $45                                        ; $45b8: $3e $45
	ld h, a                                          ; $45ba: $67
	ld c, l                                          ; $45bb: $4d
	ld e, h                                          ; $45bc: $5c
	dec a                                            ; $45bd: $3d
	ld a, h                                          ; $45be: $7c
	ld h, l                                          ; $45bf: $65
	inc a                                            ; $45c0: $3c
	ld a, [hl]                                       ; $45c1: $7e
	jr jr_065_4600                                   ; $45c2: $18 $3c

	cp [hl]                                          ; $45c4: $be
	nop                                              ; $45c5: $00
	ld a, a                                          ; $45c6: $7f
	rrca                                             ; $45c7: $0f
	adc a                                            ; $45c8: $8f

jr_065_45c9:
	ld bc, $010f                                     ; $45c9: $01 $0f $01
	rra                                              ; $45cc: $1f
	inc bc                                           ; $45cd: $03
	rra                                              ; $45ce: $1f
	rlca                                             ; $45cf: $07
	inc a                                            ; $45d0: $3c
	rrca                                             ; $45d1: $0f
	inc a                                            ; $45d2: $3c
	rra                                              ; $45d3: $1f
	or $7f                                           ; $45d4: $f6 $7f
	sub $ff                                          ; $45d6: $d6 $ff
	push de                                          ; $45d8: $d5
	ld [hl], e                                       ; $45d9: $73
	cp $93                                           ; $45da: $fe $93
	call nc, $caff                                   ; $45dc: $d4 $ff $ca
	rst $38                                          ; $45df: $ff
	ld [$eaff], a                                    ; $45e0: $ea $ff $ea
	ld a, a                                          ; $45e3: $7f
	push hl                                          ; $45e4: $e5
	ccf                                              ; $45e5: $3f
	push af                                          ; $45e6: $f5
	ccf                                              ; $45e7: $3f
	ld e, e                                          ; $45e8: $5b
	ld h, b                                          ; $45e9: $60
	ld a, a                                          ; $45ea: $7f
	db $fd                                           ; $45eb: $fd
	sbc l                                            ; $45ec: $9d
	ld e, $ff                                        ; $45ed: $1e $ff
	ld [hl], e                                       ; $45ef: $73
	ld e, [hl]                                       ; $45f0: $5e
	ld d, a                                          ; $45f1: $57
	ld h, b                                          ; $45f2: $60
	ld e, e                                          ; $45f3: $5b
	and b                                            ; $45f4: $a0
	ld a, a                                          ; $45f5: $7f
	db $fd                                           ; $45f6: $fd
	sbc l                                            ; $45f7: $9d
	inc e                                            ; $45f8: $1c
	ld a, a                                          ; $45f9: $7f
	ld [hl], e                                       ; $45fa: $73
	sbc [hl]                                         ; $45fb: $9e
	ld d, a                                          ; $45fc: $57
	and b                                            ; $45fd: $a0
	ld d, e                                          ; $45fe: $53
	ret nz                                           ; $45ff: $c0

jr_065_4600:
	sbc l                                            ; $4600: $9d
	nop                                              ; $4601: $00
	db $fd                                           ; $4602: $fd
	ld a, e                                          ; $4603: $7b
	cp [hl]                                          ; $4604: $be
	sbc e                                            ; $4605: $9b
	db $fd                                           ; $4606: $fd
	ld a, a                                          ; $4607: $7f
	call $2bdc                                       ; $4608: $cd $dc $2b
	ret nz                                           ; $460b: $c0

	sbc l                                            ; $460c: $9d
	nop                                              ; $460d: $00
	ld a, e                                          ; $460e: $7b
	ld a, e                                          ; $460f: $7b
	cp [hl]                                          ; $4610: $be
	sbc e                                            ; $4611: $9b
	ld a, l                                          ; $4612: $7d
	ld a, a                                          ; $4613: $7f
	ld c, l                                          ; $4614: $4d
	ld e, h                                          ; $4615: $5c
	ccf                                              ; $4616: $3f
	ret nz                                           ; $4617: $c0

	sbc [hl]                                         ; $4618: $9e
	sbc b                                            ; $4619: $98
	ld [hl], e                                       ; $461a: $73
	ldh [rPCM34], a                                  ; $461b: $e0 $77
	cp $99                                           ; $461d: $fe $99
	rst SubAFromDE                                          ; $461f: $df
	pop bc                                           ; $4620: $c1
	cp a                                             ; $4621: $bf
	ld a, $be                                        ; $4622: $3e $be
	ld e, $2f                                        ; $4624: $1e $2f
	ret nz                                           ; $4626: $c0

	ld a, a                                          ; $4627: $7f
	xor $7f                                          ; $4628: $ee $7f
	cp $99                                           ; $462a: $fe $99
	ld e, a                                          ; $462c: $5f
	ld b, d                                          ; $462d: $42
	ld a, a                                          ; $462e: $7f
	ld a, h                                          ; $462f: $7c
	ld a, [hl]                                       ; $4630: $7e
	inc a                                            ; $4631: $3c
	ld h, a                                          ; $4632: $67
	ret nz                                           ; $4633: $c0

	sbc b                                            ; $4634: $98
	jr nc, jr_065_4637                               ; $4635: $30 $00

jr_065_4637:
	ld a, $14                                        ; $4637: $3e $14
	inc c                                            ; $4639: $0c
	ld [$be0c], sp                                   ; $463a: $08 $0c $be
	nop                                              ; $463d: $00
	nop                                              ; $463e: $00
	inc bc                                           ; $463f: $03
	sbc c                                            ; $4640: $99
	ld bc, $87ef                                     ; $4641: $01 $ef $87
	rst $38                                          ; $4644: $ff
	ld a, h                                          ; $4645: $7c
	rst $38                                          ; $4646: $ff
	cp l                                             ; $4647: $bd
	sbc a                                            ; $4648: $9f
	add a                                            ; $4649: $87
	add e                                            ; $464a: $83
	ret nz                                           ; $464b: $c0

	ld a, d                                          ; $464c: $7a
	xor d                                            ; $464d: $aa
	sbc l                                            ; $464e: $9d
	pop hl                                           ; $464f: $e1
	ldh [$7b], a                                     ; $4650: $e0 $7b
	ldh [$9b], a                                     ; $4652: $e0 $9b
	inc [hl]                                         ; $4654: $34
	inc a                                            ; $4655: $3c
	jr jr_065_4670                                   ; $4656: $18 $18

	inc hl                                           ; $4658: $23
	ldh [$de], a                                     ; $4659: $e0 $de
	inc a                                            ; $465b: $3c
	sbc e                                            ; $465c: $9b
	inc h                                            ; $465d: $24
	inc a                                            ; $465e: $3c
	jr nz, jr_065_4699                               ; $465f: $20 $38

	ld [hl], e                                       ; $4661: $73
	sbc $37                                          ; $4662: $de $37
	ldh [$9c], a                                     ; $4664: $e0 $9c
	ld a, h                                          ; $4666: $7c
	inc a                                            ; $4667: $3c
	ld a, h                                          ; $4668: $7c
	ld a, e                                          ; $4669: $7b
	ldh [$6f], a                                     ; $466a: $e0 $6f
	sbc $37                                          ; $466c: $de $37
	ldh [rAUD2LOW], a                                ; $466e: $e0 $18

jr_065_4670:
	ld bc, $0c86                                     ; $4670: $01 $86 $0c
	ei                                               ; $4673: $fb
	add hl, de                                       ; $4674: $19
	rst $38                                          ; $4675: $ff
	inc hl                                           ; $4676: $23
	rst $38                                          ; $4677: $ff
	ld [hl], a                                       ; $4678: $77
	call z, $ff80                                    ; $4679: $cc $80 $ff
	ld a, a                                          ; $467c: $7f
	add b                                            ; $467d: $80
	db $fd                                           ; $467e: $fd
	ld e, $e3                                        ; $467f: $1e $e3
	daa                                              ; $4681: $27
	call $f55f                                       ; $4682: $cd $5f $f5
	db $fc                                           ; $4685: $fc
	push hl                                          ; $4686: $e5
	inc a                                            ; $4687: $3c
	cp d                                             ; $4688: $ba
	inc e                                            ; $4689: $1c
	inc e                                            ; $468a: $1c
	cp e                                             ; $468b: $bb
	add b                                            ; $468c: $80
	ld a, a                                          ; $468d: $7f
	nop                                              ; $468e: $00
	nop                                              ; $468f: $00
	add b                                            ; $4690: $80
	ret nz                                           ; $4691: $c0

	add b                                            ; $4692: $80
	add b                                            ; $4693: $80
	ldh [$c0], a                                     ; $4694: $e0 $c0
	ld hl, sp-$10                                    ; $4696: $f8 $f0
	db $fc                                           ; $4698: $fc

jr_065_4699:
	ld hl, sp-$41                                    ; $4699: $f8 $bf
	cp $bf                                           ; $469b: $fe $bf
	ei                                               ; $469d: $fb
	ld d, a                                          ; $469e: $57
	db $fc                                           ; $469f: $fc
	ld d, a                                          ; $46a0: $57
	ld a, h                                          ; $46a1: $7c
	ld c, e                                          ; $46a2: $4b
	ld a, [hl]                                       ; $46a3: $7e
	ld c, e                                          ; $46a4: $4b
	ld a, [hl]                                       ; $46a5: $7e
	dec hl                                           ; $46a6: $2b
	ld a, a                                          ; $46a7: $7f
	dec h                                            ; $46a8: $25
	cp a                                             ; $46a9: $bf
	dec h                                            ; $46aa: $25
	cp a                                             ; $46ab: $bf
	sub l                                            ; $46ac: $95
	cp a                                             ; $46ad: $bf
	reti                                             ; $46ae: $d9


	cp a                                             ; $46af: $bf
	reti                                             ; $46b0: $d9


	scf                                              ; $46b1: $37
	adc [hl]                                         ; $46b2: $8e
	db $db                                           ; $46b3: $db
	ld [hl], $bb                                     ; $46b4: $36 $bb
	ld h, [hl]                                       ; $46b6: $66
	scf                                              ; $46b7: $37
	call z, Call_065_689f                            ; $46b8: $cc $9f $68
	sbc $21                                          ; $46bb: $de $21
	sbc $21                                          ; $46bd: $de $21
	ret nz                                           ; $46bf: $c0

	ccf                                              ; $46c0: $3f
	sbc [hl]                                         ; $46c1: $9e
	ld hl, $bd31                                     ; $46c2: $21 $31 $bd
	jr nz, @+$26                                     ; $46c5: $20 $24

	ld b, a                                          ; $46c7: $47
	add a                                            ; $46c8: $87
	sub h                                            ; $46c9: $94
	inc b                                            ; $46ca: $04
	ld b, $00                                        ; $46cb: $06 $00
	sbc e                                            ; $46cd: $9b
	halt                                             ; $46ce: $76
	cp e                                             ; $46cf: $bb
	ld a, [hl]                                       ; $46d0: $7e
	and c                                            ; $46d1: $a1
	ld a, a                                          ; $46d2: $7f
	ld a, a                                          ; $46d3: $7f
	db $e4                                           ; $46d4: $e4
	ld [hl], a                                       ; $46d5: $77
	and b                                            ; $46d6: $a0
	sub d                                            ; $46d7: $92
	ei                                               ; $46d8: $fb
	inc e                                            ; $46d9: $1c
	ld h, a                                          ; $46da: $67
	ld h, $4d                                        ; $46db: $26 $4d
	ld e, a                                          ; $46dd: $5f
	ld [hl], l                                       ; $46de: $75
	ld a, h                                          ; $46df: $7c
	ld h, l                                          ; $46e0: $65
	inc a                                            ; $46e1: $3c
	ld a, [hl]                                       ; $46e2: $7e
	jr jr_065_4721                                   ; $46e3: $18 $3c

	cp [hl]                                          ; $46e5: $be
	nop                                              ; $46e6: $00
	ld a, a                                          ; $46e7: $7f
	rrca                                             ; $46e8: $0f
	adc a                                            ; $46e9: $8f
	ld bc, $010f                                     ; $46ea: $01 $0f $01
	rra                                              ; $46ed: $1f
	inc bc                                           ; $46ee: $03
	rra                                              ; $46ef: $1f
	rlca                                             ; $46f0: $07
	inc a                                            ; $46f1: $3c
	rrca                                             ; $46f2: $0f
	inc a                                            ; $46f3: $3c
	rra                                              ; $46f4: $1f
	or $7f                                           ; $46f5: $f6 $7f
	sub $ff                                          ; $46f7: $d6 $ff
	push de                                          ; $46f9: $d5
	ld [hl], e                                       ; $46fa: $73
	cp $93                                           ; $46fb: $fe $93
	call nc, $caff                                   ; $46fd: $d4 $ff $ca
	rst $38                                          ; $4700: $ff
	ld [$eaff], a                                    ; $4701: $ea $ff $ea
	ld a, a                                          ; $4704: $7f
	push hl                                          ; $4705: $e5
	ccf                                              ; $4706: $3f
	push af                                          ; $4707: $f5
	ccf                                              ; $4708: $3f
	ld d, a                                          ; $4709: $57
	ld h, b                                          ; $470a: $60
	sbc c                                            ; $470b: $99
	rst $38                                          ; $470c: $ff
	nop                                              ; $470d: $00
	db $ed                                           ; $470e: $ed
	ld e, $ff                                        ; $470f: $1e $ff
	ccf                                              ; $4711: $3f
	ld [hl], a                                       ; $4712: $77
	ld e, [hl]                                       ; $4713: $5e
	ld e, a                                          ; $4714: $5f
	ld h, b                                          ; $4715: $60
	ld d, a                                          ; $4716: $57
	and b                                            ; $4717: $a0
	ld a, a                                          ; $4718: $7f
	ldh [$9b], a                                     ; $4719: $e0 $9b
	ld a, e                                          ; $471b: $7b
	inc e                                            ; $471c: $1c
	ld a, a                                          ; $471d: $7f
	ld a, $7b                                        ; $471e: $3e $7b
	sbc [hl]                                         ; $4720: $9e

jr_065_4721:
	ld e, e                                          ; $4721: $5b
	and b                                            ; $4722: $a0
	ld c, a                                          ; $4723: $4f
	ret nz                                           ; $4724: $c0

	ld l, e                                          ; $4725: $6b
	cp [hl]                                          ; $4726: $be
	sbc [hl]                                         ; $4727: $9e
	call c, $c027                                    ; $4728: $dc $27 $c0
	ld l, a                                          ; $472b: $6f
	cp [hl]                                          ; $472c: $be
	sbc e                                            ; $472d: $9b
	ld c, a                                          ; $472e: $4f
	ld e, a                                          ; $472f: $5f
	ld a, [hl]                                       ; $4730: $7e
	jr c, jr_065_477a                                ; $4731: $38 $47

	ret nz                                           ; $4733: $c0

	sbc [hl]                                         ; $4734: $9e
	sbc b                                            ; $4735: $98
	ld l, e                                          ; $4736: $6b
	ldh [$7b], a                                     ; $4737: $e0 $7b
	cp $9a                                           ; $4739: $fe $9a
	ld bc, $7eff                                     ; $473b: $01 $ff $7e
	cp [hl]                                          ; $473e: $be
	inc a                                            ; $473f: $3c
	cpl                                              ; $4740: $2f
	ret nz                                           ; $4741: $c0

	ld a, a                                          ; $4742: $7f
	xor $7b                                          ; $4743: $ee $7b
	cp $9a                                           ; $4745: $fe $9a
	ld bc, $7e7f                                     ; $4747: $01 $7f $7e
	ld a, [hl]                                       ; $474a: $7e
	inc a                                            ; $474b: $3c
	ld h, a                                          ; $474c: $67
	ret nz                                           ; $474d: $c0

	sbc d                                            ; $474e: $9a
	jr nc, jr_065_4751                               ; $474f: $30 $00

jr_065_4751:
	ld a, $14                                        ; $4751: $3e $14
	inc b                                            ; $4753: $04
	cp l                                             ; $4754: $bd
	inc e                                            ; $4755: $1c
	nop                                              ; $4756: $00
	nop                                              ; $4757: $00
	inc bc                                           ; $4758: $03
	sbc c                                            ; $4759: $99
	ld bc, $87ef                                     ; $475a: $01 $ef $87
	rst $38                                          ; $475d: $ff
	ld a, h                                          ; $475e: $7c
	rst $38                                          ; $475f: $ff
	cp l                                             ; $4760: $bd
	sbc a                                            ; $4761: $9f
	add a                                            ; $4762: $87
	add e                                            ; $4763: $83
	ret nz                                           ; $4764: $c0

	ld a, d                                          ; $4765: $7a
	xor d                                            ; $4766: $aa
	sbc l                                            ; $4767: $9d
	pop hl                                           ; $4768: $e1
	ldh [$7b], a                                     ; $4769: $e0 $7b
	ldh [$9d], a                                     ; $476b: $e0 $9d
	inc [hl]                                         ; $476d: $34
	inc a                                            ; $476e: $3c
	ld a, e                                          ; $476f: $7b
	ld [hl], d                                       ; $4770: $72
	daa                                              ; $4771: $27
	ldh [hDisp1_WX], a                                     ; $4772: $e0 $96
	ld a, $3a                                        ; $4774: $3e $3a
	ld a, $32                                        ; $4776: $3e $32
	inc a                                            ; $4778: $3c
	db $10                                           ; $4779: $10

jr_065_477a:
	inc e                                            ; $477a: $1c
	inc c                                            ; $477b: $0c
	inc c                                            ; $477c: $0c
	rra                                              ; $477d: $1f
	ldh [$9c], a                                     ; $477e: $e0 $9c
	ld [hl+], a                                      ; $4780: $22
	ld a, $22                                        ; $4781: $3e $22
	ld l, a                                          ; $4783: $6f
	sbc $37                                          ; $4784: $de $37
	ldh [rAUD2LOW], a                                ; $4786: $e0 $18
	ld bc, $0c86                                     ; $4788: $01 $86 $0c
	ei                                               ; $478b: $fb
	add hl, de                                       ; $478c: $19
	rst $38                                          ; $478d: $ff
	inc hl                                           ; $478e: $23
	rst $38                                          ; $478f: $ff
	ld [hl], a                                       ; $4790: $77
	call z, $ff80                                    ; $4791: $cc $80 $ff
	ld a, a                                          ; $4794: $7f
	add b                                            ; $4795: $80
	db $fd                                           ; $4796: $fd
	ld e, $e3                                        ; $4797: $1e $e3
	daa                                              ; $4799: $27
	call $f55f                                       ; $479a: $cd $5f $f5
	db $fc                                           ; $479d: $fc
	push hl                                          ; $479e: $e5
	inc a                                            ; $479f: $3c
	cp d                                             ; $47a0: $ba
	inc e                                            ; $47a1: $1c
	inc e                                            ; $47a2: $1c
	cp e                                             ; $47a3: $bb
	add b                                            ; $47a4: $80
	ld a, a                                          ; $47a5: $7f
	nop                                              ; $47a6: $00
	nop                                              ; $47a7: $00
	add b                                            ; $47a8: $80
	ret nz                                           ; $47a9: $c0

	add b                                            ; $47aa: $80
	add b                                            ; $47ab: $80
	ldh [$c0], a                                     ; $47ac: $e0 $c0
	ld hl, sp-$10                                    ; $47ae: $f8 $f0
	db $fc                                           ; $47b0: $fc
	ld hl, sp-$41                                    ; $47b1: $f8 $bf
	cp $bf                                           ; $47b3: $fe $bf
	ei                                               ; $47b5: $fb
	ld d, a                                          ; $47b6: $57
	db $fc                                           ; $47b7: $fc
	ld d, a                                          ; $47b8: $57
	ld a, h                                          ; $47b9: $7c
	ld c, e                                          ; $47ba: $4b
	ld a, [hl]                                       ; $47bb: $7e
	ld c, e                                          ; $47bc: $4b
	ld a, [hl]                                       ; $47bd: $7e
	dec hl                                           ; $47be: $2b
	ld a, a                                          ; $47bf: $7f
	dec h                                            ; $47c0: $25
	cp a                                             ; $47c1: $bf
	dec h                                            ; $47c2: $25
	cp a                                             ; $47c3: $bf
	sub l                                            ; $47c4: $95
	cp a                                             ; $47c5: $bf
	reti                                             ; $47c6: $d9


	cp a                                             ; $47c7: $bf
	reti                                             ; $47c8: $d9


	scf                                              ; $47c9: $37
	adc [hl]                                         ; $47ca: $8e
	db $db                                           ; $47cb: $db
	ld [hl], $bb                                     ; $47cc: $36 $bb
	ld h, [hl]                                       ; $47ce: $66
	scf                                              ; $47cf: $37
	call z, Call_065_689f                            ; $47d0: $cc $9f $68
	sbc $21                                          ; $47d3: $de $21
	sbc $21                                          ; $47d5: $de $21
	ret nz                                           ; $47d7: $c0

	ccf                                              ; $47d8: $3f
	sbc [hl]                                         ; $47d9: $9e
	ld hl, $bd31                                     ; $47da: $21 $31 $bd
	jr nz, @+$26                                     ; $47dd: $20 $24

	ld b, a                                          ; $47df: $47
	add a                                            ; $47e0: $87
	sub h                                            ; $47e1: $94
	inc b                                            ; $47e2: $04
	ld b, $00                                        ; $47e3: $06 $00
	sbc e                                            ; $47e5: $9b
	halt                                             ; $47e6: $76
	cp e                                             ; $47e7: $bb
	ld a, [hl]                                       ; $47e8: $7e
	and c                                            ; $47e9: $a1
	ld a, a                                          ; $47ea: $7f
	ld a, a                                          ; $47eb: $7f
	db $e4                                           ; $47ec: $e4
	ld [hl], a                                       ; $47ed: $77
	and b                                            ; $47ee: $a0
	sub d                                            ; $47ef: $92
	ei                                               ; $47f0: $fb
	inc e                                            ; $47f1: $1c
	ld h, a                                          ; $47f2: $67
	ld h, $4d                                        ; $47f3: $26 $4d
	ld e, a                                          ; $47f5: $5f
	ld [hl], l                                       ; $47f6: $75
	ld a, h                                          ; $47f7: $7c
	ld h, l                                          ; $47f8: $65
	inc a                                            ; $47f9: $3c
	ld a, [hl]                                       ; $47fa: $7e
	jr jr_065_4839                                   ; $47fb: $18 $3c

	cp [hl]                                          ; $47fd: $be
	nop                                              ; $47fe: $00
	ld a, a                                          ; $47ff: $7f
	rrca                                             ; $4800: $0f
	adc a                                            ; $4801: $8f
	ld bc, $010f                                     ; $4802: $01 $0f $01
	rra                                              ; $4805: $1f
	inc bc                                           ; $4806: $03
	rra                                              ; $4807: $1f
	rlca                                             ; $4808: $07
	inc a                                            ; $4809: $3c
	rrca                                             ; $480a: $0f
	inc a                                            ; $480b: $3c
	rra                                              ; $480c: $1f
	or $7f                                           ; $480d: $f6 $7f
	sub $ff                                          ; $480f: $d6 $ff
	push de                                          ; $4811: $d5
	ld [hl], e                                       ; $4812: $73
	cp $93                                           ; $4813: $fe $93
	call nc, $caff                                   ; $4815: $d4 $ff $ca
	rst $38                                          ; $4818: $ff
	ld [$eaff], a                                    ; $4819: $ea $ff $ea
	ld a, a                                          ; $481c: $7f
	push hl                                          ; $481d: $e5
	ccf                                              ; $481e: $3f
	push af                                          ; $481f: $f5
	ccf                                              ; $4820: $3f
	ld d, a                                          ; $4821: $57
	ld h, b                                          ; $4822: $60
	sbc c                                            ; $4823: $99
	rst $38                                          ; $4824: $ff
	nop                                              ; $4825: $00
	db $ed                                           ; $4826: $ed
	ld e, $ff                                        ; $4827: $1e $ff
	ccf                                              ; $4829: $3f
	ld [hl], a                                       ; $482a: $77
	ld e, [hl]                                       ; $482b: $5e
	ld e, a                                          ; $482c: $5f
	ld h, b                                          ; $482d: $60
	ld d, a                                          ; $482e: $57
	and b                                            ; $482f: $a0
	ld a, a                                          ; $4830: $7f
	ldh [$9b], a                                     ; $4831: $e0 $9b
	ld a, e                                          ; $4833: $7b
	inc e                                            ; $4834: $1c
	ld a, a                                          ; $4835: $7f
	ld a, $7b                                        ; $4836: $3e $7b
	sbc [hl]                                         ; $4838: $9e

jr_065_4839:
	ld e, e                                          ; $4839: $5b
	and b                                            ; $483a: $a0
	ld c, a                                          ; $483b: $4f
	ret nz                                           ; $483c: $c0

	ld l, e                                          ; $483d: $6b
	cp [hl]                                          ; $483e: $be
	sbc [hl]                                         ; $483f: $9e
	call c, $c027                                    ; $4840: $dc $27 $c0
	ld l, a                                          ; $4843: $6f
	cp [hl]                                          ; $4844: $be
	sbc e                                            ; $4845: $9b
	ld c, a                                          ; $4846: $4f
	ld e, a                                          ; $4847: $5f
	ld a, [hl]                                       ; $4848: $7e
	jr c, @+$49                                      ; $4849: $38 $47

	ret nz                                           ; $484b: $c0

	sbc [hl]                                         ; $484c: $9e
	sbc b                                            ; $484d: $98
	ld l, e                                          ; $484e: $6b
	ldh [$7b], a                                     ; $484f: $e0 $7b
	cp $9a                                           ; $4851: $fe $9a
	ld bc, $7eff                                     ; $4853: $01 $ff $7e
	cp [hl]                                          ; $4856: $be
	inc a                                            ; $4857: $3c
	cpl                                              ; $4858: $2f
	ret nz                                           ; $4859: $c0

	ld a, a                                          ; $485a: $7f
	xor $7b                                          ; $485b: $ee $7b
	cp $9a                                           ; $485d: $fe $9a
	ld bc, $7e7f                                     ; $485f: $01 $7f $7e
	ld a, [hl]                                       ; $4862: $7e
	inc a                                            ; $4863: $3c
	ld h, a                                          ; $4864: $67
	ret nz                                           ; $4865: $c0

	rst $38                                          ; $4866: $ff
	sbc h                                            ; $4867: $9c
	ld a, $14                                        ; $4868: $3e $14
	inc b                                            ; $486a: $04
	cp l                                             ; $486b: $bd
	inc e                                            ; $486c: $1c
	nop                                              ; $486d: $00
	nop                                              ; $486e: $00
	inc bc                                           ; $486f: $03
	sbc c                                            ; $4870: $99
	ld bc, $87ef                                     ; $4871: $01 $ef $87
	rst $38                                          ; $4874: $ff
	ld a, h                                          ; $4875: $7c
	rst $38                                          ; $4876: $ff
	cp l                                             ; $4877: $bd
	sbc a                                            ; $4878: $9f
	add a                                            ; $4879: $87
	add e                                            ; $487a: $83
	ret nz                                           ; $487b: $c0

	ld a, d                                          ; $487c: $7a
	xor d                                            ; $487d: $aa
	sbc l                                            ; $487e: $9d
	pop hl                                           ; $487f: $e1
	ldh [$7b], a                                     ; $4880: $e0 $7b
	ldh [$df], a                                     ; $4882: $e0 $df
	inc e                                            ; $4884: $1c
	sbc [hl]                                         ; $4885: $9e
	jr @+$15                                         ; $4886: $18 $13

	ldh [$df], a                                     ; $4888: $e0 $df
	inc a                                            ; $488a: $3c
	ld a, a                                          ; $488b: $7f
	ld [hl], d                                       ; $488c: $72
	sbc l                                            ; $488d: $9d
	db $10                                           ; $488e: $10
	jr jr_065_48bc                                   ; $488f: $18 $2b

	ldh [$7f], a                                     ; $4891: $e0 $7f
	jp nz, $3e9b                                     ; $4893: $c2 $9b $3e

	inc [hl]                                         ; $4896: $34
	inc a                                            ; $4897: $3c
	inc [hl]                                         ; $4898: $34
	ld a, e                                          ; $4899: $7b
	ldh [$df], a                                     ; $489a: $e0 $df
	ld [$e033], sp                                   ; $489c: $08 $33 $e0
	dec l                                            ; $489f: $2d
	ld bc, $0c86                                     ; $48a0: $01 $86 $0c
	ei                                               ; $48a3: $fb
	ld de, $2cff                                     ; $48a4: $11 $ff $2c
	rst $38                                          ; $48a7: $ff
	ld a, [hl]                                       ; $48a8: $7e
	jp $ff80                                         ; $48a9: $c3 $80 $ff


	ld a, a                                          ; $48ac: $7f
	add b                                            ; $48ad: $80
	db $fd                                           ; $48ae: $fd
	ld e, $e6                                        ; $48af: $1e $e6
	daa                                              ; $48b1: $27
	call $f45f                                       ; $48b2: $cd $5f $f4
	db $fd                                           ; $48b5: $fd
	push hl                                          ; $48b6: $e5
	inc a                                            ; $48b7: $3c
	cp d                                             ; $48b8: $ba
	inc e                                            ; $48b9: $1c
	inc e                                            ; $48ba: $1c
	cp e                                             ; $48bb: $bb

jr_065_48bc:
	add b                                            ; $48bc: $80
	ld a, a                                          ; $48bd: $7f
	nop                                              ; $48be: $00
	nop                                              ; $48bf: $00
	add b                                            ; $48c0: $80
	ret nz                                           ; $48c1: $c0

	add b                                            ; $48c2: $80
	add b                                            ; $48c3: $80
	ldh [$c0], a                                     ; $48c4: $e0 $c0
	ld hl, sp-$10                                    ; $48c6: $f8 $f0
	db $fc                                           ; $48c8: $fc
	ld hl, sp-$41                                    ; $48c9: $f8 $bf
	cp $bf                                           ; $48cb: $fe $bf
	ei                                               ; $48cd: $fb
	ld d, a                                          ; $48ce: $57
	db $fc                                           ; $48cf: $fc
	ld d, a                                          ; $48d0: $57
	ld a, h                                          ; $48d1: $7c
	ld c, e                                          ; $48d2: $4b
	ld a, [hl]                                       ; $48d3: $7e
	ld c, e                                          ; $48d4: $4b
	ld a, [hl]                                       ; $48d5: $7e
	dec hl                                           ; $48d6: $2b
	ld a, a                                          ; $48d7: $7f
	dec h                                            ; $48d8: $25
	cp a                                             ; $48d9: $bf
	dec h                                            ; $48da: $25
	cp a                                             ; $48db: $bf
	sub l                                            ; $48dc: $95
	cp a                                             ; $48dd: $bf
	reti                                             ; $48de: $d9


	cp a                                             ; $48df: $bf
	reti                                             ; $48e0: $d9


	scf                                              ; $48e1: $37
	adc [hl]                                         ; $48e2: $8e
	db $db                                           ; $48e3: $db
	or [hl]                                          ; $48e4: $b6
	ld e, e                                          ; $48e5: $5b
	or $37                                           ; $48e6: $f6 $37
	db $ec                                           ; $48e8: $ec
	sbc a                                            ; $48e9: $9f
	ld l, b                                          ; $48ea: $68
	sbc $21                                          ; $48eb: $de $21
	sbc $21                                          ; $48ed: $de $21
	ret nz                                           ; $48ef: $c0

	ccf                                              ; $48f0: $3f
	sbc [hl]                                         ; $48f1: $9e
	ld hl, $bd31                                     ; $48f2: $21 $31 $bd
	jr nz, @+$26                                     ; $48f5: $20 $24

	ld b, a                                          ; $48f7: $47
	add a                                            ; $48f8: $87
	sub h                                            ; $48f9: $94
	inc b                                            ; $48fa: $04
	ld b, $00                                        ; $48fb: $06 $00
	sbc e                                            ; $48fd: $9b
	ld a, [hl]                                       ; $48fe: $7e
	cp b                                             ; $48ff: $b8
	ld l, a                                          ; $4900: $6f
	or e                                             ; $4901: $b3
	ld a, a                                          ; $4902: $7f
	ld l, a                                          ; $4903: $6f
	db $fc                                           ; $4904: $fc
	ld [hl], a                                       ; $4905: $77
	and b                                            ; $4906: $a0
	sub d                                            ; $4907: $92
	ei                                               ; $4908: $fb
	inc e                                            ; $4909: $1c
	ld h, a                                          ; $490a: $67
	ld h, $4d                                        ; $490b: $26 $4d
	ld e, a                                          ; $490d: $5f
	ld [hl], l                                       ; $490e: $75
	ld a, h                                          ; $490f: $7c
	ld h, l                                          ; $4910: $65
	inc a                                            ; $4911: $3c
	ld a, [hl]                                       ; $4912: $7e
	jr jr_065_4951                                   ; $4913: $18 $3c

	cp [hl]                                          ; $4915: $be
	nop                                              ; $4916: $00
	ld a, a                                          ; $4917: $7f
	rrca                                             ; $4918: $0f
	adc a                                            ; $4919: $8f
	ld bc, $010f                                     ; $491a: $01 $0f $01
	rra                                              ; $491d: $1f
	inc bc                                           ; $491e: $03
	rra                                              ; $491f: $1f
	rlca                                             ; $4920: $07
	inc a                                            ; $4921: $3c
	rrca                                             ; $4922: $0f
	inc a                                            ; $4923: $3c
	rra                                              ; $4924: $1f
	or $7f                                           ; $4925: $f6 $7f
	sub $ff                                          ; $4927: $d6 $ff
	push de                                          ; $4929: $d5
	ld [hl], e                                       ; $492a: $73
	cp $93                                           ; $492b: $fe $93
	call nc, $caff                                   ; $492d: $d4 $ff $ca
	rst $38                                          ; $4930: $ff
	ld [$eaff], a                                    ; $4931: $ea $ff $ea
	ld a, a                                          ; $4934: $7f
	push hl                                          ; $4935: $e5
	ccf                                              ; $4936: $3f
	push af                                          ; $4937: $f5
	ccf                                              ; $4938: $3f
	ld d, a                                          ; $4939: $57
	ld h, b                                          ; $493a: $60
	sbc c                                            ; $493b: $99
	rst $38                                          ; $493c: $ff
	nop                                              ; $493d: $00
	db $fd                                           ; $493e: $fd
	ld e, $fe                                        ; $493f: $1e $fe
	ccf                                              ; $4941: $3f
	ld [hl], a                                       ; $4942: $77
	ld e, [hl]                                       ; $4943: $5e
	ld e, a                                          ; $4944: $5f
	ld h, b                                          ; $4945: $60
	ld d, a                                          ; $4946: $57
	and b                                            ; $4947: $a0
	ld a, a                                          ; $4948: $7f
	ldh [$9b], a                                     ; $4949: $e0 $9b
	ld a, e                                          ; $494b: $7b
	inc e                                            ; $494c: $1c
	ld a, a                                          ; $494d: $7f
	ld a, $7b                                        ; $494e: $3e $7b
	sbc [hl]                                         ; $4950: $9e

jr_065_4951:
	ld e, e                                          ; $4951: $5b
	and b                                            ; $4952: $a0
	ld c, a                                          ; $4953: $4f
	ret nz                                           ; $4954: $c0

	ld a, e                                          ; $4955: $7b
	cp $98                                           ; $4956: $fe $98
	ld a, $fd                                        ; $4958: $3e $fd
	ld a, a                                          ; $495a: $7f
	call z, $badd                                    ; $495b: $cc $dd $ba

jr_065_495e:
	inc a                                            ; $495e: $3c
	ld h, a                                          ; $495f: $67
	ret nz                                           ; $4960: $c0

	inc bc                                           ; $4961: $03
	ld b, b                                          ; $4962: $40
	ld d, e                                          ; $4963: $53
	and b                                            ; $4964: $a0
	ld a, a                                          ; $4965: $7f
	adc $99                                          ; $4966: $ce $99
	ld a, a                                          ; $4968: $7f
	inc a                                            ; $4969: $3c
	ld a, a                                          ; $496a: $7f
	ld a, [hl]                                       ; $496b: $7e
	ld c, l                                          ; $496c: $4d
	rra                                              ; $496d: $1f
	ld d, a                                          ; $496e: $57
	and b                                            ; $496f: $a0
	sbc b                                            ; $4970: $98
	dec d                                            ; $4971: $15
	rst $38                                          ; $4972: $ff
	inc sp                                           ; $4973: $33
	rst AddAOntoHL                                          ; $4974: $ef
	ld [hl], h                                       ; $4975: $74
	rst GetHLinHL                                          ; $4976: $cf
	sbc b                                            ; $4977: $98
	ld h, a                                          ; $4978: $67
	and b                                            ; $4979: $a0
	sbc b                                            ; $497a: $98
	nop                                              ; $497b: $00
	sbc a                                            ; $497c: $9f
	add c                                            ; $497d: $81
	rst $38                                          ; $497e: $ff
	ld a, [hl]                                       ; $497f: $7e
	cp [hl]                                          ; $4980: $be
	ld a, $63                                        ; $4981: $3e $63
	ld h, b                                          ; $4983: $60
	sbc b                                            ; $4984: $98
	halt                                             ; $4985: $76
	cp e                                             ; $4986: $bb
	ld l, a                                          ; $4987: $6f
	or e                                             ; $4988: $b3
	ld a, [hl]                                       ; $4989: $7e
	ld h, a                                          ; $498a: $67
	cp $63                                           ; $498b: $fe $63
	ret nz                                           ; $498d: $c0

	sbc b                                            ; $498e: $98
	nop                                              ; $498f: $00
	ld e, a                                          ; $4990: $5f
	ld b, c                                          ; $4991: $41
	ld a, a                                          ; $4992: $7f
	ld a, [hl]                                       ; $4993: $7e
	ld a, [hl]                                       ; $4994: $7e
	jr c, jr_065_49fe                                ; $4995: $38 $67

	ret nz                                           ; $4997: $c0

	rst $38                                          ; $4998: $ff
	sbc d                                            ; $4999: $9a
	ld e, $0c                                        ; $499a: $1e $0c
	inc e                                            ; $499c: $1c
	db $10                                           ; $499d: $10
	jr jr_065_495e                                   ; $499e: $18 $be

	nop                                              ; $49a0: $00
	nop                                              ; $49a1: $00
	inc bc                                           ; $49a2: $03
	sbc d                                            ; $49a3: $9a
	ld bc, $87ef                                     ; $49a4: $01 $ef $87
	rst $38                                          ; $49a7: $ff
	ld a, h                                          ; $49a8: $7c
	ld a, e                                          ; $49a9: $7b
	cp [hl]                                          ; $49aa: $be
	cp [hl]                                          ; $49ab: $be
	add a                                            ; $49ac: $87
	add e                                            ; $49ad: $83
	ret nz                                           ; $49ae: $c0

	ld a, d                                          ; $49af: $7a
	adc d                                            ; $49b0: $8a
	sbc l                                            ; $49b1: $9d
	pop hl                                           ; $49b2: $e1
	ldh [$73], a                                     ; $49b3: $e0 $73
	ldh [$7b], a                                     ; $49b5: $e0 $7b
	ld [de], a                                       ; $49b7: $12
	rra                                              ; $49b8: $1f
	ldh [$7f], a                                     ; $49b9: $e0 $7f
	sub l                                            ; $49bb: $95
	sbc [hl]                                         ; $49bc: $9e
	ld a, $dd                                        ; $49bd: $3e $dd
	inc a                                            ; $49bf: $3c
	rst SubAFromDE                                          ; $49c0: $df
	jr jr_065_49f6                                   ; $49c1: $18 $33

	ldh [$7f], a                                     ; $49c3: $e0 $7f
	rla                                              ; $49c5: $17
	ld a, a                                          ; $49c6: $7f
	ldh [c], a                                       ; $49c7: $e2
	ld [hl], a                                       ; $49c8: $77
	cp $27                                           ; $49c9: $fe $27
	ldh [$8e], a                                     ; $49cb: $e0 $8e
	inc bc                                           ; $49cd: $03
	rst $38                                          ; $49ce: $ff
	db $dd                                           ; $49cf: $dd
	ld bc, $028b                                     ; $49d0: $01 $8b $02
	inc bc                                           ; $49d3: $03
	inc bc                                           ; $49d4: $03
	ld [bc], a                                       ; $49d5: $02
	dec b                                            ; $49d6: $05
	ld b, $05                                        ; $49d7: $06 $05
	ld b, $08                                        ; $49d9: $06 $08
	rrca                                             ; $49db: $0f
	add hl, bc                                       ; $49dc: $09
	rrca                                             ; $49dd: $0f
	dec bc                                           ; $49de: $0b
	rrca                                             ; $49df: $0f
	ld c, $0e                                        ; $49e0: $0e $0e
	inc c                                            ; $49e2: $0c
	inc c                                            ; $49e3: $0c
	ld [$f908], sp                                   ; $49e4: $08 $08 $f9
	rst SubAFromDE                                          ; $49e7: $df
	ld bc, $03db                                     ; $49e8: $01 $db $03
	ld a, a                                          ; $49eb: $7f
	call c, $0693                                    ; $49ec: $dc $93 $06
	rlca                                             ; $49ef: $07
	dec b                                            ; $49f0: $05
	ld b, $0d                                        ; $49f1: $06 $0d
	ld c, $0b                                        ; $49f3: $0e $0b
	inc c                                            ; $49f5: $0c

jr_065_49f6:
	dec bc                                           ; $49f6: $0b
	inc c                                            ; $49f7: $0c
	ld [$770f], sp                                   ; $49f8: $08 $0f $77
	ld a, [$fe67]                                    ; $49fb: $fa $67 $fe

jr_065_49fe:
	sbc e                                            ; $49fe: $9b
	dec de                                           ; $49ff: $1b
	inc e                                            ; $4a00: $1c
	rla                                              ; $4a01: $17
	jr @+$79                                         ; $4a02: $18 $77

	cp $8e                                           ; $4a04: $fe $8e
	ld d, $19                                        ; $4a06: $16 $19
	inc d                                            ; $4a08: $14
	dec de                                           ; $4a09: $1b
	add hl, bc                                       ; $4a0a: $09
	ld c, $09                                        ; $4a0b: $0e $09
	ld c, $04                                        ; $4a0d: $0e $04
	rlca                                             ; $4a0f: $07
	dec b                                            ; $4a10: $05
	rlca                                             ; $4a11: $07
	ld b, $07                                        ; $4a12: $06 $07
	inc c                                            ; $4a14: $0c
	rrca                                             ; $4a15: $0f
	ld [$fe7b], sp                                   ; $4a16: $08 $7b $fe
	rst AddAOntoHL                                          ; $4a19: $ef
	rst SubAFromDE                                          ; $4a1a: $df
	inc bc                                           ; $4a1b: $03
	ld a, a                                          ; $4a1c: $7f
	and $df                                          ; $4a1d: $e6 $df
	rra                                              ; $4a1f: $1f
	rst SubAFromDE                                          ; $4a20: $df
	inc sp                                           ; $4a21: $33
	adc h                                            ; $4a22: $8c
	ld c, $0f                                        ; $4a23: $0e $0f
	add hl, sp                                       ; $4a25: $39
	ld a, $67                                        ; $4a26: $3e $67
	ld a, b                                          ; $4a28: $78
	pop hl                                           ; $4a29: $e1
	ret nz                                           ; $4a2a: $c0

	call nz, $8983                                   ; $4a2b: $c4 $83 $89
	ld b, $92                                        ; $4a2e: $06 $92
	inc c                                            ; $4a30: $0c
	inc h                                            ; $4a31: $24
	jr @+$4a                                         ; $4a32: $18 $48

	jr nc, @+$32                                     ; $4a34: $30 $30

	sbc $e0                                          ; $4a36: $de $e0
	sub d                                            ; $4a38: $92
	db $ed                                           ; $4a39: $ed
	ret nz                                           ; $4a3a: $c0

	db $db                                           ; $4a3b: $db
	pop bc                                           ; $4a3c: $c1
	cp [hl]                                          ; $4a3d: $be
	jp $c6bb                                         ; $4a3e: $c3 $bb $c6


	sub a                                            ; $4a41: $97
	xor $84                                          ; $4a42: $ee $84
	cp $8c                                           ; $4a44: $fe $8c
	ld a, e                                          ; $4a46: $7b
	cp $8d                                           ; $4a47: $fe $8d
	adc l                                            ; $4a49: $8d
	cp $cd                                           ; $4a4a: $fe $cd
	cp $44                                           ; $4a4c: $fe $44
	ld [hl], a                                       ; $4a4e: $77
	ld b, h                                          ; $4a4f: $44
	ld [hl], a                                       ; $4a50: $77
	ld h, h                                          ; $4a51: $64
	ld [hl], a                                       ; $4a52: $77
	ld [hl+], a                                      ; $4a53: $22
	inc sp                                           ; $4a54: $33
	ld [hl-], a                                      ; $4a55: $32
	inc sp                                           ; $4a56: $33
	ld de, $0111                                     ; $4a57: $11 $11 $01
	ld bc, $dff5                                     ; $4a5a: $01 $f5 $df
	inc e                                            ; $4a5d: $1c
	rst SubAFromDE                                          ; $4a5e: $df
	db $e3                                           ; $4a5f: $e3
	add b                                            ; $4a60: $80
	ld sp, hl                                        ; $4a61: $f9
	add c                                            ; $4a62: $81
	or h                                             ; $4a63: $b4
	ld a, b                                          ; $4a64: $78
	jp z, Jump_065_74fc                              ; $4a65: $ca $fc $74

	adc a                                            ; $4a68: $8f
	adc d                                            ; $4a69: $8a
	rlca                                             ; $4a6a: $07
	ld d, $03                                        ; $4a6b: $16 $03
	dec bc                                           ; $4a6d: $0b
	ld bc, $0107                                     ; $4a6e: $01 $07 $01
	dec b                                            ; $4a71: $05
	ld [bc], a                                       ; $4a72: $02
	ld [bc], a                                       ; $4a73: $02
	ld bc, $0102                                     ; $4a74: $01 $02 $01
	pop bc                                           ; $4a77: $c1
	nop                                              ; $4a78: $00
	ld [hl-], a                                      ; $4a79: $32
	ld bc, $030c                                     ; $4a7a: $01 $0c $03
	ld b, $01                                        ; $4a7d: $06 $01
	pop hl                                           ; $4a7f: $e1
	cp l                                             ; $4a80: $bd
	jr c, jr_065_4a91                                ; $4a81: $38 $0e

	inc bc                                           ; $4a83: $03
	ld [bc], a                                       ; $4a84: $02
	ld a, e                                          ; $4a85: $7b
	db $ec                                           ; $4a86: $ec
	sub h                                            ; $4a87: $94
	add h                                            ; $4a88: $84
	inc bc                                           ; $4a89: $03
	dec bc                                           ; $4a8a: $0b
	rlca                                             ; $4a8b: $07
	dec a                                            ; $4a8c: $3d
	ld e, $ef                                        ; $4a8d: $1e $ef
	ld [hl], b                                       ; $4a8f: $70
	cp a                                             ; $4a90: $bf

jr_065_4a91:
	ret nz                                           ; $4a91: $c0

	rst $38                                          ; $4a92: $ff
	cp a                                             ; $4a93: $bf
	rst $38                                          ; $4a94: $ff
	db $fc                                           ; $4a95: $fc
	sbc d                                            ; $4a96: $9a
	inc bc                                           ; $4a97: $03
	di                                               ; $4a98: $f3
	rrca                                             ; $4a99: $0f
	rst GetHLinHL                                          ; $4a9a: $cf
	inc a                                            ; $4a9b: $3c
	ld d, a                                          ; $4a9c: $57
	ld l, b                                          ; $4a9d: $68
	db $fd                                           ; $4a9e: $fd
	rst SubAFromDE                                          ; $4a9f: $df
	rst $38                                          ; $4aa0: $ff
	sub [hl]                                         ; $4aa1: $96
	add a                                            ; $4aa2: $87
	nop                                              ; $4aa3: $00
	inc b                                            ; $4aa4: $04
	ld hl, sp-$08                                    ; $4aa5: $f8 $f8
	rst $38                                          ; $4aa7: $ff
	cp a                                             ; $4aa8: $bf
	ret nz                                           ; $4aa9: $c0

	jp $00bf                                         ; $4aaa: $c3 $bf $00


	ld [hl], b                                       ; $4aad: $70
	sbc c                                            ; $4aae: $99
	rrca                                             ; $4aaf: $0f
	adc a                                            ; $4ab0: $8f
	ld [hl], b                                       ; $4ab1: $70
	ld h, a                                          ; $4ab2: $67

jr_065_4ab3:
	add b                                            ; $4ab3: $80
	sbc a                                            ; $4ab4: $9f
	cp a                                             ; $4ab5: $bf
	ld a, a                                          ; $4ab6: $7f
	sbc c                                            ; $4ab7: $99
	add b                                            ; $4ab8: $80
	inc b                                            ; $4ab9: $04
	inc hl                                           ; $4aba: $23
	jr jr_065_4b14                                   ; $4abb: $18 $57

	jr nz, @-$51                                     ; $4abd: $20 $ad

	ld b, b                                          ; $4abf: $40
	jp z, $0481                                      ; $4ac0: $ca $81 $04

	add d                                            ; $4ac3: $82
	adc c                                            ; $4ac4: $89
	inc b                                            ; $4ac5: $04
	dec d                                            ; $4ac6: $15
	ld [$0830], sp                                   ; $4ac7: $08 $30 $08
	ld l, b                                          ; $4aca: $68
	db $10                                           ; $4acb: $10
	ld d, c                                          ; $4acc: $51
	jr nc, jr_065_4ab3                               ; $4acd: $30 $e4

	ld sp, $63bc                                     ; $4acf: $31 $bc $63
	reti                                             ; $4ad2: $d9


	ld h, a                                          ; $4ad3: $67
	ld e, c                                          ; $4ad4: $59
	rst SubAFromBC                                          ; $4ad5: $e7
	ld d, d                                          ; $4ad6: $52
	rst AddAOntoHL                                          ; $4ad7: $ef
	ld a, a                                          ; $4ad8: $7f
	cp $9c                                           ; $4ad9: $fe $9c
	ld b, d                                          ; $4adb: $42
	rst $38                                          ; $4adc: $ff
	ld b, [hl]                                       ; $4add: $46
	ld a, e                                          ; $4ade: $7b
	cp $80                                           ; $4adf: $fe $80
	ld h, [hl]                                       ; $4ae1: $66
	rst $38                                          ; $4ae2: $ff
	push af                                          ; $4ae3: $f5
	db $fd                                           ; $4ae4: $fd
	call $c8cd                                       ; $4ae5: $cd $cd $c8
	call nz, $dbd4                                   ; $4ae8: $c4 $d4 $db
	ret z                                            ; $4aeb: $c8

	adc $e8                                          ; $4aec: $ce $e8
	db $ec                                           ; $4aee: $ec
	ret c                                            ; $4aef: $d8

	cp h                                             ; $4af0: $bc
	ret z                                            ; $4af1: $c8

	or h                                             ; $4af2: $b4
	call c, $deb4                                    ; $4af3: $dc $b4 $de
	or d                                             ; $4af6: $b2
	sbc a                                            ; $4af7: $9f
	di                                               ; $4af8: $f3
	sbc l                                            ; $4af9: $9d
	di                                               ; $4afa: $f3
	db $dd                                           ; $4afb: $dd
	di                                               ; $4afc: $f3
	db $dd                                           ; $4afd: $dd
	ld [hl], e                                       ; $4afe: $73
	db $dd                                           ; $4aff: $dd
	add b                                            ; $4b00: $80
	ld [hl], e                                       ; $4b01: $73
	ld a, l                                          ; $4b02: $7d
	di                                               ; $4b03: $f3
	db $fd                                           ; $4b04: $fd
	or e                                             ; $4b05: $b3
	db $fd                                           ; $4b06: $fd
	or e                                             ; $4b07: $b3
	or l                                             ; $4b08: $b5
	ei                                               ; $4b09: $fb
	db $fd                                           ; $4b0a: $fd
	ld e, e                                          ; $4b0b: $5b
	ld e, [hl]                                       ; $4b0c: $5e
	ld sp, hl                                        ; $4b0d: $f9
	ld a, $e9                                        ; $4b0e: $3e $e9
	ld a, [hl+]                                      ; $4b10: $2a
	db $fd                                           ; $4b11: $fd
	inc d                                            ; $4b12: $14
	rst $38                                          ; $4b13: $ff

jr_065_4b14:
	sub h                                            ; $4b14: $94
	ld a, a                                          ; $4b15: $7f
	adc [hl]                                         ; $4b16: $8e
	ld a, a                                          ; $4b17: $7f
	adc d                                            ; $4b18: $8a
	ld a, a                                          ; $4b19: $7f
	dec bc                                           ; $4b1a: $0b
	rst $38                                          ; $4b1b: $ff
	rrca                                             ; $4b1c: $0f
	rst $38                                          ; $4b1d: $ff
	ld a, [bc]                                       ; $4b1e: $0a
	rst $38                                          ; $4b1f: $ff
	sub c                                            ; $4b20: $91
	ei                                               ; $4b21: $fb
	rst $38                                          ; $4b22: $ff
	rst GetHLinHL                                          ; $4b23: $cf
	ccf                                              ; $4b24: $3f
	and $1e                                          ; $4b25: $e6 $1e
	add d                                            ; $4b27: $82
	ld a, [hl]                                       ; $4b28: $7e
	ld a, [$b606]                                    ; $4b29: $fa $06 $b6
	ld a, d                                          ; $4b2c: $7a
	rst $38                                          ; $4b2d: $ff
	rst $38                                          ; $4b2e: $ff
	db $dd                                           ; $4b2f: $dd

jr_065_4b30:
	inc b                                            ; $4b30: $04
	rst FarCall                                          ; $4b31: $f7
	rst SubAFromDE                                          ; $4b32: $df
	ldh a, [$80]                                     ; $4b33: $f0 $80
	ld a, h                                          ; $4b35: $7c
	ld l, h                                          ; $4b36: $6c
	ld a, [de]                                       ; $4b37: $1a
	ld d, $8d                                        ; $4b38: $16 $8d
	adc e                                            ; $4b3a: $8b
	push af                                          ; $4b3b: $f5
	rst FarCall                                          ; $4b3c: $f7
	dec c                                            ; $4b3d: $0d
	rst $38                                          ; $4b3e: $ff
	ld [hl], l                                       ; $4b3f: $75
	adc [hl]                                         ; $4b40: $8e
	sbc d                                            ; $4b41: $9a
	ld h, l                                          ; $4b42: $65

jr_065_4b43:
	ld [$f015], a                                    ; $4b43: $ea $15 $f0
	rrca                                             ; $4b46: $0f
	jr jr_065_4b30                                   ; $4b47: $18 $e7

	ldh [$1f], a                                     ; $4b49: $e0 $1f
	ldh a, [rIF]                                     ; $4b4b: $f0 $0f
	ret nz                                           ; $4b4d: $c0

	ccf                                              ; $4b4e: $3f
	ld hl, sp+$07                                    ; $4b4f: $f8 $07
	db $fc                                           ; $4b51: $fc
	inc bc                                           ; $4b52: $03
	db $fd                                           ; $4b53: $fd
	adc d                                            ; $4b54: $8a
	ld [bc], a                                       ; $4b55: $02
	ei                                               ; $4b56: $fb
	inc b                                            ; $4b57: $04
	halt                                             ; $4b58: $76
	adc b                                            ; $4b59: $88
	halt                                             ; $4b5a: $76
	ld [$10ee], sp                                   ; $4b5b: $08 $ee $10
	and h                                            ; $4b5e: $a4
	db $10                                           ; $4b5f: $10
	ld h, h                                          ; $4b60: $64
	db $10                                           ; $4b61: $10
	ld h, b                                          ; $4b62: $60

jr_065_4b63:
	db $10                                           ; $4b63: $10
	jp nc, Jump_065_4020                             ; $4b64: $d2 $20 $40

	and d                                            ; $4b67: $a2
	ld b, h                                          ; $4b68: $44
	and d                                            ; $4b69: $a2
	ldh [$c1], a                                     ; $4b6a: $e0 $c1
	add b                                            ; $4b6c: $80
	jp hl                                            ; $4b6d: $e9


	call nz, $e44a                                   ; $4b6e: $c4 $4a $e4
	ld [hl], h                                       ; $4b71: $74
	ldh [c], a                                       ; $4b72: $e2
	inc [hl]                                         ; $4b73: $34
	ldh [c], a                                       ; $4b74: $e2
	add hl, hl                                       ; $4b75: $29
	di                                               ; $4b76: $f3
	sbc c                                            ; $4b77: $99
	di                                               ; $4b78: $f3
	push de                                          ; $4b79: $d5
	ei                                               ; $4b7a: $fb
	db $ed                                           ; $4b7b: $ed
	ei                                               ; $4b7c: $fb
	ld a, e                                          ; $4b7d: $7b
	ld a, l                                          ; $4b7e: $7d
	dec a                                            ; $4b7f: $3d
	ccf                                              ; $4b80: $3f
	rra                                              ; $4b81: $1f
	rra                                              ; $4b82: $1f
	ld sp, $1731                                     ; $4b83: $31 $31 $17
	rla                                              ; $4b86: $17
	di                                               ; $4b87: $f3
	di                                               ; $4b88: $f3
	ld e, $1f                                        ; $4b89: $1e $1f
	inc d                                            ; $4b8b: $14
	sbc [hl]                                         ; $4b8c: $9e
	dec de                                           ; $4b8d: $1b
	push af                                          ; $4b8e: $f5
	rst SubAFromDE                                          ; $4b8f: $df
	rra                                              ; $4b90: $1f
	add b                                            ; $4b91: $80
	ld a, c                                          ; $4b92: $79
	ld h, a                                          ; $4b93: $67
	db $e3                                           ; $4b94: $e3
	rst SubAFromDE                                          ; $4b95: $df
	call z, $93bf                                    ; $4b96: $cc $bf $93
	ld a, h                                          ; $4b99: $7c
	rrca                                             ; $4b9a: $0f
	ldh a, [$3c]                                     ; $4b9b: $f0 $3c
	jp $8f70                                         ; $4b9d: $c3 $70 $8f


	ldh [$1f], a                                     ; $4ba0: $e0 $1f
	rst SubAFromDE                                          ; $4ba2: $df
	jr nz, jr_065_4b63                               ; $4ba3: $20 $be

	ld b, b                                          ; $4ba5: $40
	ld sp, $60c0                                     ; $4ba6: $31 $c0 $60
	sbc a                                            ; $4ba9: $9f
	rra                                              ; $4baa: $1f
	ldh [$3c], a                                     ; $4bab: $e0 $3c
	jp Jump_065_609e                                 ; $4bad: $c3 $9e $60


	call c, $208c                                    ; $4bb0: $dc $8c $20
	ret c                                            ; $4bb3: $d8

	jr nz, @-$2f                                     ; $4bb4: $20 $cf

	jr nc, jr_065_4b43                               ; $4bb6: $30 $8b

	inc [hl]                                         ; $4bb8: $34
	adc l                                            ; $4bb9: $8d
	ld [hl-], a                                      ; $4bba: $32
	inc h                                            ; $4bbb: $24
	sbc e                                            ; $4bbc: $9b
	ld b, [hl]                                       ; $4bbd: $46
	sbc c                                            ; $4bbe: $99
	ld [bc], a                                       ; $4bbf: $02
	db $dd                                           ; $4bc0: $dd
	inc bc                                           ; $4bc1: $03
	call c, $ee01                                    ; $4bc2: $dc $01 $ee
	ldh [$c1], a                                     ; $4bc5: $e0 $c1
	sub h                                            ; $4bc7: $94
	and l                                            ; $4bc8: $a5
	and $a5                                          ; $4bc9: $e6 $a5
	and $e5                                          ; $4bcb: $e6 $e5
	and $75                                          ; $4bcd: $e6 $75
	or $7d                                           ; $4bcf: $f6 $7d
	cp $6d                                           ; $4bd1: $fe $6d
	ld a, e                                          ; $4bd3: $7b
	cp $8d                                           ; $4bd4: $fe $8d
	ld d, l                                          ; $4bd6: $55
	xor $fb                                          ; $4bd7: $ee $fb
	add $ff                                          ; $4bd9: $c6 $ff
	rst $38                                          ; $4bdb: $ff
	db $e3                                           ; $4bdc: $e3
	db $e3                                           ; $4bdd: $e3
	ld a, [hl-]                                      ; $4bde: $3a
	ld a, [hl-]                                      ; $4bdf: $3a
	ld [hl+], a                                      ; $4be0: $22
	ld [hl+], a                                      ; $4be1: $22
	sub $fe                                          ; $4be2: $d6 $fe
	ld l, e                                          ; $4be4: $6b
	rst SubAFromDE                                          ; $4be5: $df
	db $d3                                           ; $4be6: $d3
	ld l, h                                          ; $4be7: $6c
	push af                                          ; $4be8: $f5
	rst SubAFromDE                                          ; $4be9: $df
	ret nz                                           ; $4bea: $c0

	rst $38                                          ; $4beb: $ff
	rst SubAFromDE                                          ; $4bec: $df
	db $fc                                           ; $4bed: $fc
	sub e                                            ; $4bee: $93
	rlca                                             ; $4bef: $07
	rst $38                                          ; $4bf0: $ff
	pop af                                           ; $4bf1: $f1
	rrca                                             ; $4bf2: $0f
	cp $01                                           ; $4bf3: $fe $01
	nop                                              ; $4bf5: $00
	rst $38                                          ; $4bf6: $ff
	ld a, $c1                                        ; $4bf7: $3e $c1
	rrca                                             ; $4bf9: $0f
	ldh a, [$bf]                                     ; $4bfa: $f0 $bf
	rst $38                                          ; $4bfc: $ff
	nop                                              ; $4bfd: $00
	sbc h                                            ; $4bfe: $9c
	sbc c                                            ; $4bff: $99
	ld b, $06                                        ; $4c00: $06 $06
	ld a, c                                          ; $4c02: $79
	db $e4                                           ; $4c03: $e4
	adc b                                            ; $4c04: $88
	add hl, bc                                       ; $4c05: $09
	ldh a, [rAUD4GO]                                 ; $4c06: $f0 $23
	inc e                                            ; $4c08: $1c
	jr jr_065_4c12                                   ; $4c09: $18 $07

	ld c, $01                                        ; $4c0b: $0e $01
	jp $b104                                         ; $4c0d: $c3 $04 $b1


	ld b, d                                          ; $4c10: $42
	db $db                                           ; $4c11: $db

jr_065_4c12:
	ld hl, $306d                                     ; $4c12: $21 $6d $30
	or [hl]                                          ; $4c15: $b6
	jr jr_065_4c73                                   ; $4c16: $18 $5b

	adc h                                            ; $4c18: $8c
	dec [hl]                                         ; $4c19: $35
	adc $04                                          ; $4c1a: $ce $04
	ld a, e                                          ; $4c1c: $7b
	ldh [$e0], a                                     ; $4c1d: $e0 $e0
	jp Jump_065_5480                                 ; $4c1f: $c3 $80 $54


	inc c                                            ; $4c22: $0c
	sub [hl]                                         ; $4c23: $96
	ld c, $2d                                        ; $4c24: $0e $2d
	dec de                                           ; $4c26: $1b
	ld c, l                                          ; $4c27: $4d
	dec sp                                           ; $4c28: $3b
	add hl, de                                       ; $4c29: $19
	ld [hl], a                                       ; $4c2a: $77
	or e                                             ; $4c2b: $b3
	ld l, a                                          ; $4c2c: $6f
	ld h, a                                          ; $4c2d: $67
	rst SubAFromDE                                          ; $4c2e: $df
	ld l, e                                          ; $4c2f: $6b
	rst SubAFromDE                                          ; $4c30: $df
	rst SubAFromHL                                          ; $4c31: $d7
	cp a                                             ; $4c32: $bf
	and h                                            ; $4c33: $a4
	db $fc                                           ; $4c34: $fc
	xor a                                            ; $4c35: $af
	rst $38                                          ; $4c36: $ff
	ld [hl], c                                       ; $4c37: $71
	ld [hl], c                                       ; $4c38: $71
	sbc c                                            ; $4c39: $99
	sbc c                                            ; $4c3a: $99
	ld [hl], c                                       ; $4c3b: $71
	ld [hl], c                                       ; $4c3c: $71
	sbc a                                            ; $4c3d: $9f
	rst $38                                          ; $4c3e: $ff
	ld h, h                                          ; $4c3f: $64
	sbc [hl]                                         ; $4c40: $9e
	sbc h                                            ; $4c41: $9c
	db $ed                                           ; $4c42: $ed
	rst SubAFromDE                                          ; $4c43: $df
	ret nz                                           ; $4c44: $c0

	add b                                            ; $4c45: $80
	ld h, b                                          ; $4c46: $60
	ldh [$30], a                                     ; $4c47: $e0 $30
	ldh a, [rAUD2LOW]                                ; $4c49: $f0 $18
	ld hl, sp-$34                                    ; $4c4b: $f8 $cc
	inc a                                            ; $4c4d: $3c
	ld b, $fe                                        ; $4c4e: $06 $fe
	add e                                            ; $4c50: $83
	ld a, a                                          ; $4c51: $7f
	pop hl                                           ; $4c52: $e1
	rra                                              ; $4c53: $1f
	ld sp, hl                                        ; $4c54: $f9
	rlca                                             ; $4c55: $07
	ld a, h                                          ; $4c56: $7c
	jp Jump_065_71ae                                 ; $4c57: $c3 $ae $71


	sub $39                                          ; $4c5a: $d6 $39
	db $eb                                           ; $4c5c: $eb
	inc e                                            ; $4c5d: $1c
	push de                                          ; $4c5e: $d5
	ld l, $0a                                        ; $4c5f: $2e $0a
	rst FarCall                                          ; $4c61: $f7
	add d                                            ; $4c62: $82
	ld a, a                                          ; $4c63: $7f
	ld h, c                                          ; $4c64: $61
	add b                                            ; $4c65: $80
	cp a                                             ; $4c66: $bf
	pop de                                           ; $4c67: $d1
	cp a                                             ; $4c68: $bf
	xor b                                            ; $4c69: $a8
	rst SubAFromDE                                          ; $4c6a: $df
	ld d, h                                          ; $4c6b: $54
	rst AddAOntoHL                                          ; $4c6c: $ef
	xor d                                            ; $4c6d: $aa
	ld [hl], a                                       ; $4c6e: $77
	sub e                                            ; $4c6f: $93
	ld a, a                                          ; $4c70: $7f
	ld d, c                                          ; $4c71: $51
	cp a                                             ; $4c72: $bf

jr_065_4c73:
	add hl, hl                                       ; $4c73: $29
	rst SubAFromDE                                          ; $4c74: $df
	add h                                            ; $4c75: $84
	rst $38                                          ; $4c76: $ff
	ld h, d                                          ; $4c77: $62
	rst $38                                          ; $4c78: $ff
	ld a, c                                          ; $4c79: $79
	rst SubAFromDE                                          ; $4c7a: $df
	ld [hl], $ef                                     ; $4c7b: $36 $ef
	cp e                                             ; $4c7d: $bb
	rst FarCall                                          ; $4c7e: $f7
	cp $ff                                           ; $4c7f: $fe $ff
	ld a, [hl-]                                      ; $4c81: $3a
	push af                                          ; $4c82: $f5
	ld [$91e5], a                                    ; $4c83: $ea $e5 $91
	ld c, d                                          ; $4c86: $4a
	push bc                                          ; $4c87: $c5
	ld e, d                                          ; $4c88: $5a
	push de                                          ; $4c89: $d5
	xor c                                            ; $4c8a: $a9
	or [hl]                                          ; $4c8b: $b6
	xor l                                            ; $4c8c: $ad
	cp d                                             ; $4c8d: $ba
	db $ed                                           ; $4c8e: $ed
	ld a, [$faad]                                    ; $4c8f: $fa $ad $fa
	xor d                                            ; $4c92: $aa
	rst $38                                          ; $4c93: $ff
	ld [hl], a                                       ; $4c94: $77
	cp $80                                           ; $4c95: $fe $80
	db $eb                                           ; $4c97: $eb
	rst $38                                          ; $4c98: $ff
	dec a                                            ; $4c99: $3d
	ccf                                              ; $4c9a: $3f
	push af                                          ; $4c9b: $f5
	ld a, a                                          ; $4c9c: $7f
	adc l                                            ; $4c9d: $8d
	rrca                                             ; $4c9e: $0f
	dec e                                            ; $4c9f: $1d
	rrca                                             ; $4ca0: $0f
	db $e3                                           ; $4ca1: $e3
	ld b, e                                          ; $4ca2: $43
	sbc a                                            ; $4ca3: $9f
	adc b                                            ; $4ca4: $88
	ccf                                              ; $4ca5: $3f
	jr jr_065_4ce7                                   ; $4ca6: $18 $3f

	inc a                                            ; $4ca8: $3c
	cp a                                             ; $4ca9: $bf
	inc e                                            ; $4caa: $1c
	rst $38                                          ; $4cab: $ff
	sbc b                                            ; $4cac: $98
	ei                                               ; $4cad: $fb
	ldh a, [$fb]                                     ; $4cae: $f0 $fb
	jr nc, jr_065_4d2d                               ; $4cb0: $30 $7b

	jr @+$3b                                         ; $4cb2: $18 $39

	ld [$84c8], sp                                   ; $4cb4: $08 $c8 $84
	add b                                            ; $4cb7: $80
	ldh a, [$e0]                                     ; $4cb8: $f0 $e0
	sub b                                            ; $4cba: $90
	ldh a, [$b8]                                     ; $4cbb: $f0 $b8
	ld hl, sp-$34                                    ; $4cbd: $f8 $cc
	ret z                                            ; $4cbf: $c8

	ld e, $1c                                        ; $4cc0: $1e $1c
	ldh a, [c]                                       ; $4cc2: $f2
	cp $22                                           ; $4cc3: $fe $22
	ld a, $23                                        ; $4cc5: $3e $23
	ld a, $21                                        ; $4cc7: $3e $21
	ccf                                              ; $4cc9: $3f

Call_065_4cca:
jr_065_4cca:
	ld hl, $613f                                     ; $4cca: $21 $3f $61
	ld a, a                                          ; $4ccd: $7f
	ld b, b                                          ; $4cce: $40
	ld a, a                                          ; $4ccf: $7f
	ld h, b                                          ; $4cd0: $60
	ld a, a                                          ; $4cd1: $7f
	db $fd                                           ; $4cd2: $fd
	db $dd                                           ; $4cd3: $dd
	add b                                            ; $4cd4: $80
	rst SubAFromDE                                          ; $4cd5: $df
	ret nz                                           ; $4cd6: $c0

	sbc [hl]                                         ; $4cd7: $9e
	ld b, b                                          ; $4cd8: $40
	ld a, e                                          ; $4cd9: $7b
	cp $7f                                           ; $4cda: $fe $7f
	ld l, b                                          ; $4cdc: $68
	sbc [hl]                                         ; $4cdd: $9e
	jr nz, jr_065_4d4b                               ; $4cde: $20 $6b

	cp $9e                                           ; $4ce0: $fe $9e
	and b                                            ; $4ce2: $a0
	ld a, e                                          ; $4ce3: $7b
	cp $7f                                           ; $4ce4: $fe $7f
	ldh a, [c]                                       ; $4ce6: $f2

jr_065_4ce7:
	ld [hl], a                                       ; $4ce7: $77
	ldh a, [rPCM34]                                  ; $4ce8: $f0 $77
	or $7f                                           ; $4cea: $f6 $7f
	cp $d9                                           ; $4cec: $fe $d9
	ldh [$d9], a                                     ; $4cee: $e0 $d9
	ret nz                                           ; $4cf0: $c0

	db $db                                           ; $4cf1: $db
	add b                                            ; $4cf2: $80
	rst SubAFromDE                                          ; $4cf3: $df
	db $fc                                           ; $4cf4: $fc
	add e                                            ; $4cf5: $83
	rst JumpTable                                          ; $4cf6: $c7
	rst $38                                          ; $4cf7: $ff
	add c                                            ; $4cf8: $81
	di                                               ; $4cf9: $f3
	add e                                            ; $4cfa: $83
	rst SubAFromBC                                          ; $4cfb: $e7
	add h                                            ; $4cfc: $84
	rst GetHLinHL                                          ; $4cfd: $cf
	adc b                                            ; $4cfe: $88
	sbc a                                            ; $4cff: $9f
	sub b                                            ; $4d00: $90
	cp [hl]                                          ; $4d01: $be
	jr nz, jr_065_4d80                               ; $4d02: $20 $7c

	jr nz, jr_065_4d7e                               ; $4d04: $20 $78

	ret nz                                           ; $4d06: $c0

	pop af                                           ; $4d07: $f1

jr_065_4d08:
	ret nz                                           ; $4d08: $c0

	rst FarCall                                          ; $4d09: $f7
	ret nz                                           ; $4d0a: $c0

	rst AddAOntoHL                                          ; $4d0b: $ef
	ret nz                                           ; $4d0c: $c0

	ld e, [hl]                                       ; $4d0d: $5e
	ret nz                                           ; $4d0e: $c0

	ld e, h                                          ; $4d0f: $5c
	ret nz                                           ; $4d10: $c0

	ld a, b                                          ; $4d11: $78
	ld [hl], e                                       ; $4d12: $73
	xor a                                            ; $4d13: $af
	adc e                                            ; $4d14: $8b
	ld hl, $33e0                                     ; $4d15: $21 $e0 $33
	ldh [$33], a                                     ; $4d18: $e0 $33
	ld [hl], b                                       ; $4d1a: $70
	dec de                                           ; $4d1b: $1b
	jr nc, @+$21                                     ; $4d1c: $30 $1f

	ld a, b                                          ; $4d1e: $78
	rrca                                             ; $4d1f: $0f
	ld a, a                                          ; $4d20: $7f
	rrca                                             ; $4d21: $0f
	inc a                                            ; $4d22: $3c
	rlca                                             ; $4d23: $07

jr_065_4d24:
	ld a, $03                                        ; $4d24: $3e $03

jr_065_4d26:
	rra                                              ; $4d26: $1f
	ld bc, $bd0f                                     ; $4d27: $01 $0f $bd
	rlca                                             ; $4d2a: $07
	add e                                            ; $4d2b: $83
	add c                                            ; $4d2c: $81

jr_065_4d2d:
	add b                                            ; $4d2d: $80
	sbc $80                                          ; $4d2e: $de $80
	ld c, a                                          ; $4d30: $4f
	add b                                            ; $4d31: $80
	ld a, a                                          ; $4d32: $7f
	db $fd                                           ; $4d33: $fd
	ld [hl], a                                       ; $4d34: $77
	adc [hl]                                         ; $4d35: $8e
	ld a, [hl]                                       ; $4d36: $7e
	db $e4                                           ; $4d37: $e4
	sub e                                            ; $4d38: $93
	ret c                                            ; $4d39: $d8

	jr c, jr_065_4d24                                ; $4d3a: $38 $e8

	jr jr_065_4d26                                   ; $4d3c: $18 $e8

	jr jr_065_4d08                                   ; $4d3e: $18 $c8

	jr c, jr_065_4cca                                ; $4d40: $38 $88

	ld a, b                                          ; $4d42: $78
	ld [$5ff8], sp                                   ; $4d43: $08 $f8 $5f
	cp $df                                           ; $4d46: $fe $df
	cp $9e                                           ; $4d48: $fe $9e
	ld [bc], a                                       ; $4d4a: $02

jr_065_4d4b:
	ld [hl], e                                       ; $4d4b: $73
	cp $93                                           ; $4d4c: $fe $93
	add d                                            ; $4d4e: $82
	cp $c2                                           ; $4d4f: $fe $c2
	ld a, [hl]                                       ; $4d51: $7e
	ldh [c], a                                       ; $4d52: $e2
	ld a, $f2                                        ; $4d53: $3e $f2
	ld e, $fe                                        ; $4d55: $1e $fe
	ld c, $fe                                        ; $4d57: $0e $fe
	ld b, $25                                        ; $4d59: $06 $25
	nop                                              ; $4d5b: $00
	adc a                                            ; $4d5c: $8f
	sbc c                                            ; $4d5d: $99
	cp e                                             ; $4d5e: $bb
	cp e                                             ; $4d5f: $bb
	rst $38                                          ; $4d60: $ff
	ld de, $6699                                     ; $4d61: $11 $99 $66
	ld h, [hl]                                       ; $4d64: $66
	sub c                                            ; $4d65: $91
	ld de, $4444                                     ; $4d66: $11 $44 $44
	ld d, l                                          ; $4d69: $55
	sbc c                                            ; $4d6a: $99
	ld de, $7b99                                     ; $4d6b: $11 $99 $7b
	db $fd                                           ; $4d6e: $fd
	ld a, e                                          ; $4d6f: $7b
	ei                                               ; $4d70: $fb
	sbc [hl]                                         ; $4d71: $9e
	ld b, h                                          ; $4d72: $44
	ld l, e                                          ; $4d73: $6b
	or $96                                           ; $4d74: $f6 $96
	ld b, h                                          ; $4d76: $44
	nop                                              ; $4d77: $00
	ld [hl+], a                                      ; $4d78: $22
	sbc c                                            ; $4d79: $99
	sbc c                                            ; $4d7a: $99
	ld [hl+], a                                      ; $4d7b: $22
	ld [hl+], a                                      ; $4d7c: $22
	cp e                                             ; $4d7d: $bb

jr_065_4d7e:
	xor d                                            ; $4d7e: $aa
	pop de                                           ; $4d7f: $d1

jr_065_4d80:
	add b                                            ; $4d80: $80
	cp $9a                                           ; $4d81: $fe $9a
	ld [bc], a                                       ; $4d83: $02
	ld [de], a                                       ; $4d84: $12
	inc de                                           ; $4d85: $13
	inc sp                                           ; $4d86: $33
	dec sp                                           ; $4d87: $3b
	sbc $e6                                          ; $4d88: $de $e6
	sbc $f7                                          ; $4d8a: $de $f7
	add l                                            ; $4d8c: $85
	rst $38                                          ; $4d8d: $ff
	xor $7b                                          ; $4d8e: $ee $7b
	ld c, c                                          ; $4d90: $49
	ld a, l                                          ; $4d91: $7d
	rst $38                                          ; $4d92: $ff
	ld b, b                                          ; $4d93: $40
	rst $38                                          ; $4d94: $ff
	rst SubAFromDE                                          ; $4d95: $df
	ld [hl+], a                                      ; $4d96: $22
	xor $ff                                          ; $4d97: $ee $ff
	rst $38                                          ; $4d99: $ff
	rst JumpTable                                          ; $4d9a: $c7
	rst $38                                          ; $4d9b: $ff
	rrca                                             ; $4d9c: $0f
	sbc $00                                          ; $4d9d: $de $00
	db $fc                                           ; $4d9f: $fc
	ldh a, [$03]                                     ; $4da0: $f0 $03
	ldh [$f0], a                                     ; $4da2: $e0 $f0
	call c, $b76f                                    ; $4da4: $dc $6f $b7
	cp $80                                           ; $4da7: $fe $80
	ret nz                                           ; $4da9: $c0

	ldh [$f8], a                                     ; $4daa: $e0 $f8
	cp $7f                                           ; $4dac: $fe $7f
	dec de                                           ; $4dae: $1b
	ld b, l                                          ; $4daf: $45
	add l                                            ; $4db0: $85
	ld [bc], a                                       ; $4db1: $02
	and d                                            ; $4db2: $a2
	pop bc                                           ; $4db3: $c1
	add c                                            ; $4db4: $81
	jp hl                                            ; $4db5: $e9


	ld a, a                                          ; $4db6: $7f
	ccf                                              ; $4db7: $3f
	scf                                              ; $4db8: $37
	or a                                             ; $4db9: $b7
	sbc e                                            ; $4dba: $9b
	sbc e                                            ; $4dbb: $9b
	pop bc                                           ; $4dbc: $c1
	pop bc                                           ; $4dbd: $c1
	nop                                              ; $4dbe: $00
	jr nz, @+$23                                     ; $4dbf: $20 $21

	ld sp, $3830                                     ; $4dc1: $31 $30 $38
	inc a                                            ; $4dc4: $3c
	cp [hl]                                          ; $4dc5: $be
	rst AddAOntoHL                                          ; $4dc6: $ef
	rst FarCall                                          ; $4dc7: $f7
	add c                                            ; $4dc8: $81
	rst FarCall                                          ; $4dc9: $f7
	ld a, e                                          ; $4dca: $7b
	ld a, e                                          ; $4dcb: $7b
	ld l, l                                          ; $4dcc: $6d
	rst SubAFromBC                                          ; $4dcd: $e7
	db $e3                                           ; $4dce: $e3
	cp c                                             ; $4dcf: $b9
	rst SubAFromDE                                          ; $4dd0: $df
	rst $38                                          ; $4dd1: $ff
	ld hl, sp-$09                                    ; $4dd2: $f8 $f7
	rlca                                             ; $4dd4: $07
	ld [hl], a                                       ; $4dd5: $77
	ld d, a                                          ; $4dd6: $57
	ld [hl], a                                       ; $4dd7: $77
	ld [hl], e                                       ; $4dd8: $73
	jr nc, jr_065_4dfa                               ; $4dd9: $30 $1f

	adc d                                            ; $4ddb: $8a
	ld sp, hl                                        ; $4ddc: $f9
	adc b                                            ; $4ddd: $88
	add b                                            ; $4dde: $80
	ld [bc], a                                       ; $4ddf: $02
	ld de, $0c08                                     ; $4de0: $11 $08 $0c
	adc d                                            ; $4de3: $8a
	push bc                                          ; $4de4: $c5
	ld h, h                                          ; $4de5: $64
	ld [hl], d                                       ; $4de6: $72
	reti                                             ; $4de7: $d9


	rst $38                                          ; $4de8: $ff
	add b                                            ; $4de9: $80
	dec sp                                           ; $4dea: $3b
	cp l                                             ; $4deb: $bd
	rst $38                                          ; $4dec: $ff
	nop                                              ; $4ded: $00
	cp $be                                           ; $4dee: $fe $be
	ld c, h                                          ; $4df0: $4c
	pop af                                           ; $4df1: $f1
	rst $38                                          ; $4df2: $ff
	rst AddAOntoHL                                          ; $4df3: $ef
	ld [hl], a                                       ; $4df4: $77
	rst $38                                          ; $4df5: $ff
	dec e                                            ; $4df6: $1d
	cp c                                             ; $4df7: $b9
	nop                                              ; $4df8: $00
	nop                                              ; $4df9: $00

jr_065_4dfa:
	db $e3                                           ; $4dfa: $e3
	rrca                                             ; $4dfb: $0f
	rst $38                                          ; $4dfc: $ff
	add c                                            ; $4dfd: $81
	ld a, [hl]                                       ; $4dfe: $7e
	db $e4                                           ; $4dff: $e4
	ld sp, hl                                        ; $4e00: $f9
	di                                               ; $4e01: $f3
	ld bc, $7f07                                     ; $4e02: $01 $07 $7f
	add b                                            ; $4e05: $80
	nop                                              ; $4e06: $00
	ld a, h                                          ; $4e07: $7c
	ld sp, hl                                        ; $4e08: $f9
	add b                                            ; $4e09: $80
	ldh a, [$e6]                                     ; $4e0a: $f0 $e6
	push hl                                          ; $4e0c: $e5
	ld h, l                                          ; $4e0d: $65
	push de                                          ; $4e0e: $d5
	db $dd                                           ; $4e0f: $dd
	ccf                                              ; $4e10: $3f
	dec de                                           ; $4e11: $1b
	add hl, bc                                       ; $4e12: $09
	ldh [c], a                                       ; $4e13: $e2
	db $e4                                           ; $4e14: $e4
	dec h                                            ; $4e15: $25
	sub h                                            ; $4e16: $94
	call nc, $90ef                                   ; $4e17: $d4 $ef $90
	jr c, jr_065_4e57                                ; $4e1a: $38 $3b

	ld a, b                                          ; $4e1c: $78
	add e                                            ; $4e1d: $83
	add hl, sp                                       ; $4e1e: $39
	dec bc                                           ; $4e1f: $0b
	ld a, [hl-]                                      ; $4e20: $3a
	rlca                                             ; $4e21: $07
	rst GetHLinHL                                          ; $4e22: $cf
	nop                                              ; $4e23: $00
	jr nz, jr_065_4e26                               ; $4e24: $20 $00

jr_065_4e26:
	jr z, jr_065_4e29                                ; $4e26: $28 $01

	ld [bc], a                                       ; $4e28: $02

jr_065_4e29:
	sbc l                                            ; $4e29: $9d
	ld [bc], a                                       ; $4e2a: $02
	add a                                            ; $4e2b: $87
	sbc $ff                                          ; $4e2c: $de $ff
	sub d                                            ; $4e2e: $92
	rst FarCall                                          ; $4e2f: $f7
	rst SubAFromBC                                          ; $4e30: $e7
	ld h, a                                          ; $4e31: $67
	ld h, [hl]                                       ; $4e32: $66
	ld h, $ff                                        ; $4e33: $26 $ff
	rlca                                             ; $4e35: $07
	add d                                            ; $4e36: $82
	add e                                            ; $4e37: $83
	jp $e3c3                                         ; $4e38: $c3 $c3 $e3


	rst SubAFromBC                                          ; $4e3b: $e7
	ld e, e                                          ; $4e3c: $5b
	ldh [$9e], a                                     ; $4e3d: $e0 $9e
	jr c, jr_065_4e68                                ; $4e3f: $38 $27

	ldh [$9e], a                                     ; $4e41: $e0 $9e
	dec sp                                           ; $4e43: $3b
	ld l, e                                          ; $4e44: $6b
	ldh [$9e], a                                     ; $4e45: $e0 $9e
	add hl, de                                       ; $4e47: $19
	rrca                                             ; $4e48: $0f
	ldh [$9c], a                                     ; $4e49: $e0 $9c
	jr nc, @+$3b                                     ; $4e4b: $30 $39

	ld [de], a                                       ; $4e4d: $12
	ccf                                              ; $4e4e: $3f
	ldh [$62], a                                     ; $4e4f: $e0 $62
	inc bc                                           ; $4e51: $03
	rst SubAFromDE                                          ; $4e52: $df
	ld bc, $0289                                     ; $4e53: $01 $89 $02
	inc bc                                           ; $4e56: $03

jr_065_4e57:
	dec b                                            ; $4e57: $05
	ld b, $07                                        ; $4e58: $06 $07
	inc b                                            ; $4e5a: $04
	dec bc                                           ; $4e5b: $0b
	inc c                                            ; $4e5c: $0c
	rrca                                             ; $4e5d: $0f
	ld [$080f], sp                                   ; $4e5e: $08 $0f $08
	rla                                              ; $4e61: $17
	jr jr_065_4e7b                                   ; $4e62: $18 $17

	jr jr_065_4e85                                   ; $4e64: $18 $1f

	db $10                                           ; $4e66: $10
	rra                                              ; $4e67: $1f

jr_065_4e68:
	db $10                                           ; $4e68: $10
	ld e, $11                                        ; $4e69: $1e $11
	ld [hl], a                                       ; $4e6b: $77
	ld a, [$fe77]                                    ; $4e6c: $fa $77 $fe
	db $eb                                           ; $4e6f: $eb
	rst SubAFromDE                                          ; $4e70: $df
	inc bc                                           ; $4e71: $03
	add b                                            ; $4e72: $80
	inc b                                            ; $4e73: $04
	rlca                                             ; $4e74: $07
	ld [$100f], sp                                   ; $4e75: $08 $0f $10
	rra                                              ; $4e78: $1f
	daa                                              ; $4e79: $27
	ccf                                              ; $4e7a: $3f

jr_065_4e7b:
	ld e, e                                          ; $4e7b: $5b
	ld a, e                                          ; $4e7c: $7b
	ld h, l                                          ; $4e7d: $65
	ld h, [hl]                                       ; $4e7e: $66
	dec bc                                           ; $4e7f: $0b
	inc c                                            ; $4e80: $0c
	rla                                              ; $4e81: $17
	jr jr_065_4eb0                                   ; $4e82: $18 $2c

	inc sp                                           ; $4e84: $33

jr_065_4e85:
	jr c, jr_065_4eae                                ; $4e85: $38 $27

	ld d, c                                          ; $4e87: $51
	ld l, a                                          ; $4e88: $6f
	ld b, e                                          ; $4e89: $43
	ld a, a                                          ; $4e8a: $7f
	add [hl]                                         ; $4e8b: $86
	rst $38                                          ; $4e8c: $ff
	adc l                                            ; $4e8d: $8d
	cp $95                                           ; $4e8e: $fe $95
	or $a8                                           ; $4e90: $f6 $a8
	sbc d                                            ; $4e92: $9a
	rst AddAOntoHL                                          ; $4e93: $ef
	ret z                                            ; $4e94: $c8

	rst GetHLinHL                                          ; $4e95: $cf
	adc b                                            ; $4e96: $88
	adc a                                            ; $4e97: $8f
	ld [hl], a                                       ; $4e98: $77
	cp a                                             ; $4e99: $bf
	ld a, a                                          ; $4e9a: $7f
	or a                                             ; $4e9b: $b7
	ld a, a                                          ; $4e9c: $7f
	cp $9e                                           ; $4e9d: $fe $9e
	inc de                                           ; $4e9f: $13
	ld a, e                                          ; $4ea0: $7b
	cp $9c                                           ; $4ea1: $fe $9c
	dec de                                           ; $4ea3: $1b
	rra                                              ; $4ea4: $1f
	add hl, bc                                       ; $4ea5: $09
	call c, $dd0d                                    ; $4ea6: $dc $0d $dd
	dec b                                            ; $4ea9: $05
	reti                                             ; $4eaa: $d9


	ld bc, $03df                                     ; $4eab: $01 $df $03

jr_065_4eae:
	ld a, a                                          ; $4eae: $7f
	add h                                            ; $4eaf: $84

jr_065_4eb0:
	ld l, a                                          ; $4eb0: $6f
	cp $df                                           ; $4eb1: $fe $df
	rlca                                             ; $4eb3: $07
	sbc [hl]                                         ; $4eb4: $9e
	dec b                                            ; $4eb5: $05
	ld a, e                                          ; $4eb6: $7b
	cp $80                                           ; $4eb7: $fe $80
	dec c                                            ; $4eb9: $0d
	rrca                                             ; $4eba: $0f
	dec bc                                           ; $4ebb: $0b
	rrca                                             ; $4ebc: $0f
	rrca                                             ; $4ebd: $0f
	dec c                                            ; $4ebe: $0d
	rra                                              ; $4ebf: $1f
	dec e                                            ; $4ec0: $1d
	ccf                                              ; $4ec1: $3f
	dec [hl]                                         ; $4ec2: $35
	ld a, a                                          ; $4ec3: $7f
	ld [hl], a                                       ; $4ec4: $77
	ld a, a                                          ; $4ec5: $7f
	ld d, h                                          ; $4ec6: $54
	ld a, a                                          ; $4ec7: $7f
	ld a, [hl]                                       ; $4ec8: $7e
	jp $b9ff                                         ; $4ec9: $c3 $ff $b9


	rst JumpTable                                          ; $4ecc: $c7
	ld l, b                                          ; $4ecd: $68
	sbc a                                            ; $4ece: $9f
	db $e4                                           ; $4ecf: $e4
	rra                                              ; $4ed0: $1f
	ldh a, [c]                                       ; $4ed1: $f2
	rrca                                             ; $4ed2: $0f
	sub d                                            ; $4ed3: $92
	ld a, a                                          ; $4ed4: $7f
	jp hl                                            ; $4ed5: $e9


	rra                                              ; $4ed6: $1f
	ld sp, hl                                        ; $4ed7: $f9
	sub l                                            ; $4ed8: $95
	rrca                                             ; $4ed9: $0f
	db $f4                                           ; $4eda: $f4
	rrca                                             ; $4edb: $0f
	db $fc                                           ; $4edc: $fc
	rlca                                             ; $4edd: $07
	ld a, [$fe07]                                    ; $4ede: $fa $07 $fe
	inc bc                                           ; $4ee1: $03
	db $fd                                           ; $4ee2: $fd
	ld a, e                                          ; $4ee3: $7b
	cp $97                                           ; $4ee4: $fe $97
	ld a, [hl]                                       ; $4ee6: $7e
	add c                                            ; $4ee7: $81
	ld l, [hl]                                       ; $4ee8: $6e
	sub c                                            ; $4ee9: $91
	and [hl]                                         ; $4eea: $a6
	ld e, c                                          ; $4eeb: $59
	or b                                             ; $4eec: $b0
	ld c, a                                          ; $4eed: $4f
	pop af                                           ; $4eee: $f1
	rst SubAFromDE                                          ; $4eef: $df
	rlca                                             ; $4ef0: $07
	add b                                            ; $4ef1: $80
	jr c, @+$41                                      ; $4ef2: $38 $3f

	rst GetHLinHL                                          ; $4ef4: $cf
	ldh a, [$3f]                                     ; $4ef5: $f0 $3f
	ret nz                                           ; $4ef7: $c0

	rst $38                                          ; $4ef8: $ff
	nop                                              ; $4ef9: $00

jr_065_4efa:
	inc bc                                           ; $4efa: $03
	rst $38                                          ; $4efb: $ff
	inc a                                            ; $4efc: $3c
	rst $38                                          ; $4efd: $ff
	rst SubAFromDE                                          ; $4efe: $df
	ldh [rSVBK], a                                   ; $4eff: $e0 $70
	add b                                            ; $4f01: $80
	jp nz, $b001                                     ; $4f02: $c2 $01 $b0

	rrca                                             ; $4f05: $0f
	ld [bc], a                                       ; $4f06: $02
	db $fc                                           ; $4f07: $fc
	jr c, jr_065_4efa                                ; $4f08: $38 $f0

	sub $e0                                          ; $4f0a: $d6 $e0
	xor c                                            ; $4f0c: $a9
	add $76                                          ; $4f0d: $c6 $76
	adc h                                            ; $4f0f: $8c
	ret                                              ; $4f10: $c9


	sub e                                            ; $4f11: $93
	inc a                                            ; $4f12: $3c
	sub d                                            ; $4f13: $92
	ld a, c                                          ; $4f14: $79
	dec l                                            ; $4f15: $2d
	di                                               ; $4f16: $f3
	add hl, sp                                       ; $4f17: $39
	rst SubAFromBC                                          ; $4f18: $e7
	ld d, d                                          ; $4f19: $52
	rst AddAOntoHL                                          ; $4f1a: $ef
	ld b, e                                          ; $4f1b: $43
	cp $87                                           ; $4f1c: $fe $87
	ld a, e                                          ; $4f1e: $7b
	cp $7f                                           ; $4f1f: $fe $7f
	ld d, b                                          ; $4f21: $50
	adc h                                            ; $4f22: $8c
	add [hl]                                         ; $4f23: $86
	db $fd                                           ; $4f24: $fd
	add a                                            ; $4f25: $87
	db $fd                                           ; $4f26: $fd
	add $fd                                          ; $4f27: $c6 $fd
	rst JumpTable                                          ; $4f29: $c7
	db $fc                                           ; $4f2a: $fc
	rst SubAFromBC                                          ; $4f2b: $e7
	db $fc                                           ; $4f2c: $fc
	and $fc                                          ; $4f2d: $e6 $fc
	pop af                                           ; $4f2f: $f1
	db $fc                                           ; $4f30: $fc
	rst $38                                          ; $4f31: $ff
	cp $bd                                           ; $4f32: $fe $bd
	db $f4                                           ; $4f34: $f4
	or l                                             ; $4f35: $b5
	ld a, e                                          ; $4f36: $7b
	cp $80                                           ; $4f37: $fe $80
	cp h                                             ; $4f39: $bc
	db $f4                                           ; $4f3a: $f4
	xor [hl]                                         ; $4f3b: $ae
	ld a, [$fdad]                                    ; $4f3c: $fa $ad $fd
	xor a                                            ; $4f3f: $af
	rst $38                                          ; $4f40: $ff
	ld a, [$9aaf]                                    ; $4f41: $fa $af $9a
	xor a                                            ; $4f44: $af
	cp a                                             ; $4f45: $bf
	adc d                                            ; $4f46: $8a
	cp l                                             ; $4f47: $bd
	adc d                                            ; $4f48: $8a
	dec e                                            ; $4f49: $1d
	xor d                                            ; $4f4a: $aa
	ld [hl], a                                       ; $4f4b: $77
	xor d                                            ; $4f4c: $aa
	cp e                                             ; $4f4d: $bb
	ld h, [hl]                                       ; $4f4e: $66
	xor $f7                                          ; $4f4f: $ee $f7
	scf                                              ; $4f51: $37
	ccf                                              ; $4f52: $3f
	dec e                                            ; $4f53: $1d
	rra                                              ; $4f54: $1f
	dec c                                            ; $4f55: $0d
	rrca                                             ; $4f56: $0f
	rst SubAFromBC                                          ; $4f57: $e7
	add b                                            ; $4f58: $80
	rlca                                             ; $4f59: $07
	rst $38                                          ; $4f5a: $ff
	rst SubAFromBC                                          ; $4f5b: $e7
	sbc l                                            ; $4f5c: $9d
	sub a                                            ; $4f5d: $97
	sbc l                                            ; $4f5e: $9d
	adc l                                            ; $4f5f: $8d
	db $fd                                           ; $4f60: $fd
	db $fd                                           ; $4f61: $fd
	adc l                                            ; $4f62: $8d
	add l                                            ; $4f63: $85
	cp l                                             ; $4f64: $bd
	sbc l                                            ; $4f65: $9d
	push af                                          ; $4f66: $f5
	push af                                          ; $4f67: $f5
	ld c, [hl]                                       ; $4f68: $4e
	add $5e                                          ; $4f69: $c6 $5e
	sbc $66                                          ; $4f6b: $de $66
	ldh [c], a                                       ; $4f6d: $e2
	rst GetHLinHL                                          ; $4f6e: $cf
	rst JumpTable                                          ; $4f6f: $c7
	db $eb                                           ; $4f70: $eb
	jp hl                                            ; $4f71: $e9


	ld e, l                                          ; $4f72: $5d
	db $fd                                           ; $4f73: $fd
	ld b, a                                          ; $4f74: $47
	rst $38                                          ; $4f75: $ff
	inc hl                                           ; $4f76: $23
	rst $38                                          ; $4f77: $ff
	sbc b                                            ; $4f78: $98
	inc hl                                           ; $4f79: $23
	cp $91                                           ; $4f7a: $fe $91
	rst $38                                          ; $4f7c: $ff
	sub b                                            ; $4f7d: $90
	rst $38                                          ; $4f7e: $ff
	ld c, b                                          ; $4f7f: $48
	ld a, e                                          ; $4f80: $7b
	cp $4f                                           ; $4f81: $fe $4f
	ld h, h                                          ; $4f83: $64
	ld a, a                                          ; $4f84: $7f
	ld d, $80                                        ; $4f85: $16 $80

jr_065_4f87:
	di                                               ; $4f87: $f3
	ldh a, [c]                                       ; $4f88: $f2
	dec c                                            ; $4f89: $0d
	db $fd                                           ; $4f8a: $fd
	add e                                            ; $4f8b: $83
	ld a, a                                          ; $4f8c: $7f
	ldh [$1f], a                                     ; $4f8d: $e0 $1f
	ldh a, [rIF]                                     ; $4f8f: $f0 $0f
	ldh [rIE], a                                     ; $4f91: $e0 $ff
	ld a, $c1                                        ; $4f93: $3e $c1
	rst $38                                          ; $4f95: $ff
	nop                                              ; $4f96: $00
	jr nc, jr_065_4fa8                               ; $4f97: $30 $0f

	rrca                                             ; $4f99: $0f
	ldh a, [$bf]                                     ; $4f9a: $f0 $bf
	nop                                              ; $4f9c: $00
	ld l, e                                          ; $4f9d: $6b
	inc b                                            ; $4f9e: $04
	rra                                              ; $4f9f: $1f
	ld [$103a], sp                                   ; $4fa0: $08 $3a $10
	ld [hl], l                                       ; $4fa3: $75
	jr nz, jr_065_4f87                               ; $4fa4: $20 $e1

	adc a                                            ; $4fa6: $8f
	ld b, b                                          ; $4fa7: $40

jr_065_4fa8:
	jp $8380                                         ; $4fa8: $c3 $80 $83


	add b                                            ; $4fab: $80
	or a                                             ; $4fac: $b7
	nop                                              ; $4fad: $00
	ld [hl], d                                       ; $4fae: $72
	dec b                                            ; $4faf: $05
	ld [hl], d                                       ; $4fb0: $72
	dec b                                            ; $4fb1: $05
	or c                                             ; $4fb2: $b1
	ld b, a                                          ; $4fb3: $47
	ld e, c                                          ; $4fb4: $59
	rst SubAFromBC                                          ; $4fb5: $e7
	ld c, c                                          ; $4fb6: $49
	ld d, e                                          ; $4fb7: $53
	ret nz                                           ; $4fb8: $c0

	ldh [$cd], a                                     ; $4fb9: $e0 $cd
	add b                                            ; $4fbb: $80
	adc a                                            ; $4fbc: $8f
	inc bc                                           ; $4fbd: $03
	add e                                            ; $4fbe: $83
	ld bc, $0283                                     ; $4fbf: $01 $83 $02

jr_065_4fc2:
	rst JumpTable                                          ; $4fc2: $c7
	add h                                            ; $4fc3: $84
	ret                                              ; $4fc4: $c9


	adc b                                            ; $4fc5: $88
	pop de                                           ; $4fc6: $d1
	sub b                                            ; $4fc7: $90
	ld h, e                                          ; $4fc8: $63
	ld h, c                                          ; $4fc9: $61
	ld b, e                                          ; $4fca: $43
	ld b, c                                          ; $4fcb: $41
	add [hl]                                         ; $4fcc: $86
	add d                                            ; $4fcd: $82
	ld c, $02                                        ; $4fce: $0e $02
	adc h                                            ; $4fd0: $8c
	add h                                            ; $4fd1: $84
	db $fd                                           ; $4fd2: $fd
	add h                                            ; $4fd3: $84
	rst $38                                          ; $4fd4: $ff
	xor $ff                                          ; $4fd5: $ee $ff
	cp d                                             ; $4fd7: $ba
	rst $38                                          ; $4fd8: $ff
	bit 7, a                                         ; $4fd9: $cb $7f
	sbc [hl]                                         ; $4fdb: $9e
	db $e4                                           ; $4fdc: $e4
	ld d, [hl]                                       ; $4fdd: $56
	inc l                                            ; $4fde: $2c
	ld a, l                                          ; $4fdf: $7d
	ld a, [$8f80]                                    ; $4fe0: $fa $80 $8f
	adc c                                            ; $4fe3: $89
	ld e, a                                          ; $4fe4: $5f
	db $d3                                           ; $4fe5: $d3
	cp [hl]                                          ; $4fe6: $be
	ld [hl], a                                       ; $4fe7: $77
	db $fc                                           ; $4fe8: $fc
	cp a                                             ; $4fe9: $bf
	ret c                                            ; $4fea: $d8

	cp a                                             ; $4feb: $bf
	ld e, e                                          ; $4fec: $5b
	cp a                                             ; $4fed: $bf
	dec d                                            ; $4fee: $15
	cp $1b                                           ; $4fef: $fe $1b
	db $fc                                           ; $4ff1: $fc
	sub [hl]                                         ; $4ff2: $96
	ld a, c                                          ; $4ff3: $79
	ld e, a                                          ; $4ff4: $5f
	or b                                             ; $4ff5: $b0
	add a                                            ; $4ff6: $87
	ld a, b                                          ; $4ff7: $78
	pop bc                                           ; $4ff8: $c1
	ld a, $e6                                        ; $4ff9: $3e $e6
	add hl, bc                                       ; $4ffb: $09
	jp hl                                            ; $4ffc: $e9


	inc b                                            ; $4ffd: $04
	or d                                             ; $4ffe: $b2
	inc b                                            ; $4fff: $04
	or h                                             ; $5000: $b4
	adc l                                            ; $5001: $8d
	ld [bc], a                                       ; $5002: $02
	add h                                            ; $5003: $84
	ld [bc], a                                       ; $5004: $02
	inc b                                            ; $5005: $04
	ld [bc], a                                       ; $5006: $02
	ld [hl], $02                                     ; $5007: $36 $02
	ld d, $22                                        ; $5009: $16 $22
	sub a                                            ; $500b: $97
	ld [hl+], a                                      ; $500c: $22
	ld d, $b3                                        ; $500d: $16 $b3
	ld e, [hl]                                       ; $500f: $5e
	or e                                             ; $5010: $b3
	ld d, $fb                                        ; $5011: $16 $fb
	ld de, $6003                                     ; $5013: $11 $03 $60
	pop hl                                           ; $5016: $e1
	adc e                                            ; $5017: $8b
	rst $38                                          ; $5018: $ff
	ld d, a                                          ; $5019: $57
	rst $38                                          ; $501a: $ff
	db $dd                                           ; $501b: $dd
	ld sp, hl                                        ; $501c: $f9
	ld e, h                                          ; $501d: $5c
	ld hl, sp+$5c                                    ; $501e: $f8 $5c
	ld a, [$bc9c]                                    ; $5020: $fa $9c $bc
	sbc d                                            ; $5023: $9a
	inc hl                                           ; $5024: $23
	jr z, jr_065_5087                                ; $5025: $28 $60

	add hl, hl                                       ; $5027: $29
	ld l, c                                          ; $5028: $69
	inc h                                            ; $5029: $24
	ret z                                            ; $502a: $c8

	ld b, h                                          ; $502b: $44
	ld [hl], a                                       ; $502c: $77
	cp $97                                           ; $502d: $fe $97
	adc h                                            ; $502f: $8c
	add d                                            ; $5030: $82
	db $fc                                           ; $5031: $fc
	add d                                            ; $5032: $82
	db $fc                                           ; $5033: $fc
	ldh [c], a                                       ; $5034: $e2
	ccf                                              ; $5035: $3f
	ccf                                              ; $5036: $3f
	rst FarCall                                          ; $5037: $f7
	rst SubAFromDE                                          ; $5038: $df
	ret nz                                           ; $5039: $c0

	rst SubAFromDE                                          ; $503a: $df
	add b                                            ; $503b: $80
	rst $38                                          ; $503c: $ff
	rst SubAFromDE                                          ; $503d: $df
	db $fc                                           ; $503e: $fc
	ld a, [hl]                                       ; $503f: $7e
	jr z, jr_065_4fc2                                ; $5040: $28 $80

	cp $01                                           ; $5042: $fe $01
	inc bc                                           ; $5044: $03
	db $fc                                           ; $5045: $fc
	ld a, h                                          ; $5046: $7c
	add e                                            ; $5047: $83
	rst GetHLinHL                                          ; $5048: $cf
	jr nc, jr_065_5082                               ; $5049: $30 $37

	ret z                                            ; $504b: $c8

	ei                                               ; $504c: $fb
	inc b                                            ; $504d: $04
	sbc e                                            ; $504e: $9b
	inc b                                            ; $504f: $04
	dec bc                                           ; $5050: $0b
	inc b                                            ; $5051: $04
	call $ed02                                       ; $5052: $cd $02 $ed
	ld [bc], a                                       ; $5055: $02
	ld [hl], l                                       ; $5056: $75
	jp nz, $e15f                                     ; $5057: $c2 $5f $e1

	ld a, a                                          ; $505a: $7f
	pop hl                                           ; $505b: $e1
	ld l, [hl]                                       ; $505c: $6e
	pop af                                           ; $505d: $f1
	ld d, a                                          ; $505e: $57
	ld hl, sp+$57                                    ; $505f: $f8 $57
	sub e                                            ; $5061: $93
	ld hl, sp+$6b                                    ; $5062: $f8 $6b
	call c, $dc6b                                    ; $5064: $dc $6b $dc
	ld d, l                                          ; $5067: $55
	xor $36                                          ; $5068: $ee $36
	rst AddAOntoHL                                          ; $506a: $ef
	dec hl                                           ; $506b: $2b
	rst FarCall                                          ; $506c: $f7
	ld [hl-], a                                      ; $506d: $32
	inc bc                                           ; $506e: $03
	ld h, b                                          ; $506f: $60
	pop hl                                           ; $5070: $e1
	add b                                            ; $5071: $80
	ld a, h                                          ; $5072: $7c
	ldh [$f0], a                                     ; $5073: $e0 $f0
	ret nz                                           ; $5075: $c0

	ldh [$c0], a                                     ; $5076: $e0 $c0
	ldh a, [$60]                                     ; $5078: $f0 $60
	ld hl, sp+$10                                    ; $507a: $f8 $10
	ld a, l                                          ; $507c: $7d
	ld [$053f], sp                                   ; $507d: $08 $3f $05
	ccf                                              ; $5080: $3f
	dec b                                            ; $5081: $05

jr_065_5082:
	ld e, $02                                        ; $5082: $1e $02
	sbc [hl]                                         ; $5084: $9e
	ld [bc], a                                       ; $5085: $02
	adc a                                            ; $5086: $8f

jr_065_5087:
	ld bc, $1f5f                                     ; $5087: $01 $5f $1f
	ld a, a                                          ; $508a: $7f
	ld [de], a                                       ; $508b: $12
	ld a, a                                          ; $508c: $7f
	ld a, c                                          ; $508d: $79
	ld a, a                                          ; $508e: $7f
	ld c, a                                          ; $508f: $4f
	cp $9e                                           ; $5090: $fe $9e
	jp $dfef                                         ; $5092: $c3 $ef $df


	add b                                            ; $5095: $80
	add b                                            ; $5096: $80
	ld h, b                                          ; $5097: $60
	ldh [rAUD1SWEEP], a                              ; $5098: $e0 $10
	ldh a, [$08]                                     ; $509a: $f0 $08
	ld hl, sp-$3c                                    ; $509c: $f8 $c4
	db $fc                                           ; $509e: $fc
	or d                                             ; $509f: $b2
	ld a, [hl]                                       ; $50a0: $7e
	db $ed                                           ; $50a1: $ed
	rra                                              ; $50a2: $1f
	cp e                                             ; $50a3: $bb
	ld b, a                                          ; $50a4: $47
	db $ed                                           ; $50a5: $ed
	inc sp                                           ; $50a6: $33
	sub $39                                          ; $50a7: $d6 $39
	db $eb                                           ; $50a9: $eb
	inc e                                            ; $50aa: $1c
	push af                                          ; $50ab: $f5
	ld c, [hl]                                       ; $50ac: $4e
	ld a, l                                          ; $50ad: $7d
	and [hl]                                         ; $50ae: $a6
	ld e, d                                          ; $50af: $5a
	or a                                             ; $50b0: $b7
	cp $93                                           ; $50b1: $fe $93
	xor l                                            ; $50b3: $ad
	db $db                                           ; $50b4: $db
	ld a, l                                          ; $50b5: $7d
	add b                                            ; $50b6: $80
	set 2, [hl]                                      ; $50b7: $cb $d6
	ld l, l                                          ; $50b9: $6d
	or [hl]                                          ; $50ba: $b6
	ld l, l                                          ; $50bb: $6d
	rst AddAOntoHL                                          ; $50bc: $ef
	inc [hl]                                         ; $50bd: $34
	db $db                                           ; $50be: $db
	ld [hl], $13                                     ; $50bf: $36 $13
	cp $8b                                           ; $50c1: $fe $8b
	cp $49                                           ; $50c3: $fe $49
	rst $38                                          ; $50c5: $ff
	dec h                                            ; $50c6: $25
	rst $38                                          ; $50c7: $ff
	sub l                                            ; $50c8: $95
	rst $38                                          ; $50c9: $ff
	ld c, e                                          ; $50ca: $4b
	rst $38                                          ; $50cb: $ff
	rst SubAFromBC                                          ; $50cc: $e7
	rst $38                                          ; $50cd: $ff
	db $e3                                           ; $50ce: $e3
	ld a, a                                          ; $50cf: $7f
	ld [hl], d                                       ; $50d0: $72
	rra                                              ; $50d1: $1f
	and d                                            ; $50d2: $a2
	rra                                              ; $50d3: $1f
	cp d                                             ; $50d4: $ba
	cpl                                              ; $50d5: $2f
	ld [hl], a                                       ; $50d6: $77
	cp $80                                           ; $50d7: $fe $80
	ld a, [hl-]                                      ; $50d9: $3a
	cpl                                              ; $50da: $2f
	ld a, e                                          ; $50db: $7b
	ccf                                              ; $50dc: $3f
	ld [hl], c                                       ; $50dd: $71
	ld a, a                                          ; $50de: $7f
	pop af                                           ; $50df: $f1
	ld a, a                                          ; $50e0: $7f
	pop de                                           ; $50e1: $d1
	rst $38                                          ; $50e2: $ff
	ld a, c                                          ; $50e3: $79
	rst SubAFromHL                                          ; $50e4: $d7
	ld h, l                                          ; $50e5: $65
	db $d3                                           ; $50e6: $d3
	push hl                                          ; $50e7: $e5
	ld d, e                                          ; $50e8: $53
	and l                                            ; $50e9: $a5
	ld d, e                                          ; $50ea: $53
	and h                                            ; $50eb: $a4
	ld d, e                                          ; $50ec: $53
	cp d                                             ; $50ed: $ba
	ld d, c                                          ; $50ee: $51
	or d                                             ; $50ef: $b2
	ld e, c                                          ; $50f0: $59
	adc $79                                          ; $50f1: $ce $79
	ld c, e                                          ; $50f3: $4b
	rst $38                                          ; $50f4: $ff
	cpl                                              ; $50f5: $2f
	rst $38                                          ; $50f6: $ff
	and [hl]                                         ; $50f7: $a6
	add b                                            ; $50f8: $80
	cp $dc                                           ; $50f9: $fe $dc
	db $fc                                           ; $50fb: $fc
	ld sp, hl                                        ; $50fc: $f9
	ld hl, sp+$57                                    ; $50fd: $f8 $57
	di                                               ; $50ff: $f3
	ld e, [hl]                                       ; $5100: $5e
	call c, $d85c                                    ; $5101: $dc $5c $d8
	ld e, a                                          ; $5104: $5f
	ld e, a                                          ; $5105: $5f
	ld e, l                                          ; $5106: $5d
	ld e, c                                          ; $5107: $59
	reti                                             ; $5108: $d9


	ld d, c                                          ; $5109: $51
	cp a                                             ; $510a: $bf
	cp a                                             ; $510b: $bf
	or c                                             ; $510c: $b1
	and c                                            ; $510d: $a1

jr_065_510e:
	cp l                                             ; $510e: $bd
	cp l                                             ; $510f: $bd
	ld [hl], l                                       ; $5110: $75
	ld h, l                                          ; $5111: $65
	ld h, a                                          ; $5112: $67
	ld b, a                                          ; $5113: $47
	rst FarCall                                          ; $5114: $f7
	rst SubAFromBC                                          ; $5115: $e7
	sbc l                                            ; $5116: $9d
	rst $38                                          ; $5117: $ff
	sbc [hl]                                         ; $5118: $9e
	dec b                                            ; $5119: $05
	ld a, e                                          ; $511a: $7b

jr_065_511b:
	cp $97                                           ; $511b: $fe $97
	ld b, $ff                                        ; $511d: $06 $ff
	dec b                                            ; $511f: $05
	cp $0b                                           ; $5120: $fe $0b
	db $fc                                           ; $5122: $fc
	dec bc                                           ; $5123: $0b
	db $fc                                           ; $5124: $fc
	db $dd                                           ; $5125: $dd
	add b                                            ; $5126: $80
	rst SubAFromDE                                          ; $5127: $df
	ret nz                                           ; $5128: $c0

	adc d                                            ; $5129: $8a
	ld b, b                                          ; $512a: $40
	ret nz                                           ; $512b: $c0

	jr nz, jr_065_510e                               ; $512c: $20 $e0

	and b                                            ; $512e: $a0
	ld h, b                                          ; $512f: $60
	and b                                            ; $5130: $a0
	ld h, b                                          ; $5131: $60
	sub b                                            ; $5132: $90
	ld [hl], b                                       ; $5133: $70
	db $10                                           ; $5134: $10
	ldh a, [rAUD1SWEEP]                              ; $5135: $f0 $10
	ldh a, [hDisp1_SCY]                                     ; $5137: $f0 $90
	ldh a, [hDisp0_WY]                                     ; $5139: $f0 $88
	ld hl, sp-$78                                    ; $513b: $f8 $88
	ld hl, sp+$48                                    ; $513d: $f8 $48
	ld [hl], e                                       ; $513f: $73
	cp $9e                                           ; $5140: $fe $9e
	jr z, jr_065_51af                                ; $5142: $28 $6b

	cp $9e                                           ; $5144: $fe $9e
	xor b                                            ; $5146: $a8
	ld a, e                                          ; $5147: $7b
	cp $df                                           ; $5148: $fe $df
	ld hl, sp-$62                                    ; $514a: $f8 $9e
	or b                                             ; $514c: $b0
	ld a, e                                          ; $514d: $7b
	db $e4                                           ; $514e: $e4
	ld [hl], a                                       ; $514f: $77
	cp $9e                                           ; $5150: $fe $9e
	ld d, b                                          ; $5152: $50
	ld a, e                                          ; $5153: $7b
	cp $9e                                           ; $5154: $fe $9e
	ld e, b                                          ; $5156: $58
	ld l, e                                          ; $5157: $6b
	sbc $77                                          ; $5158: $de $77
	call c, $e277                                    ; $515a: $dc $77 $e2

jr_065_515d:
	sbc h                                            ; $515d: $9c
	xor h                                            ; $515e: $ac
	db $fc                                           ; $515f: $fc
	and h                                            ; $5160: $a4
	ld a, e                                          ; $5161: $7b
	cp $de                                           ; $5162: $fe $de
	db $fc                                           ; $5164: $fc
	add b                                            ; $5165: $80
	inc e                                            ; $5166: $1c
	cp $16                                           ; $5167: $fe $16
	rst $38                                          ; $5169: $ff
	rla                                              ; $516a: $17
	rst $38                                          ; $516b: $ff
	inc d                                            ; $516c: $14
	rst $38                                          ; $516d: $ff
	sub $ff                                          ; $516e: $d6 $ff
	cp a                                             ; $5170: $bf
	rst $38                                          ; $5171: $ff
	cp a                                             ; $5172: $bf
	db $fc                                           ; $5173: $fc
	rst $38                                          ; $5174: $ff
	ldh a, [$7f]                                     ; $5175: $f0 $7f
	ldh [c], a                                       ; $5177: $e2
	ld a, a                                          ; $5178: $7f
	rst JumpTable                                          ; $5179: $c7
	ld a, h                                          ; $517a: $7c
	rst SubAFromDE                                          ; $517b: $df
	ld hl, sp-$01                                    ; $517c: $f8 $ff
	ldh [$fc], a                                     ; $517e: $e0 $fc
	jp $8f76                                         ; $5180: $c3 $76 $8f


	jr @+$01                                         ; $5183: $18 $ff

	ld a, l                                          ; $5185: $7d
	jr z, jr_065_511b                                ; $5186: $28 $93

	add c                                            ; $5188: $81
	cp $63                                           ; $5189: $fe $63
	sbc h                                            ; $518b: $9c
	rst SubAFromBC                                          ; $518c: $e7
	jr jr_065_515d                                   ; $518d: $18 $ce

	ld sp, $21de                                     ; $518f: $31 $de $21
	cp h                                             ; $5192: $bc
	ld b, e                                          ; $5193: $43
	jp hl                                            ; $5194: $e9


	db $db                                           ; $5195: $db
	add b                                            ; $5196: $80
	ld l, a                                          ; $5197: $6f
	ld h, [hl]                                       ; $5198: $66
	ld a, a                                          ; $5199: $7f
	cp $73                                           ; $519a: $fe $73
	ld l, d                                          ; $519c: $6a
	sub d                                            ; $519d: $92
	ld [hl], b                                       ; $519e: $70
	adc b                                            ; $519f: $88
	ld a, b                                          ; $51a0: $78
	ld [$04f8], sp                                   ; $51a1: $08 $f8 $04
	db $fc                                           ; $51a4: $fc
	add h                                            ; $51a5: $84
	ld a, h                                          ; $51a6: $7c
	add h                                            ; $51a7: $84
	ld a, h                                          ; $51a8: $7c
	ld [bc], a                                       ; $51a9: $02
	cp $77                                           ; $51aa: $fe $77
	cp $9b                                           ; $51ac: $fe $9b
	ld [hl], d                                       ; $51ae: $72

jr_065_51af:
	adc [hl]                                         ; $51af: $8e
	ld a, [$1906]                                    ; $51b0: $fa $06 $19
	nop                                              ; $51b3: $00
	sbc [hl]                                         ; $51b4: $9e
	xor d                                            ; $51b5: $aa
	sbc $99                                          ; $51b6: $de $99
	sbc c                                            ; $51b8: $99
	call z, $9922                                    ; $51b9: $cc $22 $99
	ld de, $1100                                     ; $51bc: $11 $00 $11
	ld a, e                                          ; $51bf: $7b
	ei                                               ; $51c0: $fb
	rst SubAFromDE                                          ; $51c1: $df
	sbc c                                            ; $51c2: $99
	ld d, e                                          ; $51c3: $53
	ei                                               ; $51c4: $fb
	ld [hl], a                                       ; $51c5: $77
	db $ec                                           ; $51c6: $ec
	ld a, e                                          ; $51c7: $7b
	db $e3                                           ; $51c8: $e3
	rst SubAFromDE                                          ; $51c9: $df
	xor d                                            ; $51ca: $aa
	ld [de], a                                       ; $51cb: $12
	ld bc, $499a                                     ; $51cc: $01 $9a $49
	rst $38                                          ; $51cf: $ff
	ret                                              ; $51d0: $c9


	cp a                                             ; $51d1: $bf
	sub l                                            ; $51d2: $95
	sbc $ff                                          ; $51d3: $de $ff
	rst SubAFromDE                                          ; $51d5: $df
	sub e                                            ; $51d6: $93
	sub b                                            ; $51d7: $90
	rst $38                                          ; $51d8: $ff
	ld bc, $1eed                                     ; $51d9: $01 $ed $1e
	cp a                                             ; $51dc: $bf
	ld a, a                                          ; $51dd: $7f
	ld b, d                                          ; $51de: $42
	rst SubAFromBC                                          ; $51df: $e7
	adc [hl]                                         ; $51e0: $8e
	sbc $a6                                          ; $51e1: $de $a6
	ld a, $dd                                        ; $51e3: $3e $dd
	inc a                                            ; $51e5: $3c
	cp $bd                                           ; $51e6: $fe $bd
	ld c, [hl]                                       ; $51e8: $4e
	nop                                              ; $51e9: $00
	add a                                            ; $51ea: $87
	ret nz                                           ; $51eb: $c0

	adc d                                            ; $51ec: $8a
	add b                                            ; $51ed: $80
	ldh [$c0], a                                     ; $51ee: $e0 $c0
	ldh a, [$e0]                                     ; $51f0: $f0 $e0
	ld hl, sp-$10                                    ; $51f2: $f8 $f0
	db $fc                                           ; $51f4: $fc
	ld hl, sp-$02                                    ; $51f5: $f8 $fe

jr_065_51f7:
	cp $f7                                           ; $51f7: $fe $f7
	db $fd                                           ; $51f9: $fd
	ldh a, [c]                                       ; $51fa: $f2
	cp $f1                                           ; $51fb: $fe $f1
	ei                                               ; $51fd: $fb
	ldh a, [$f9]                                     ; $51fe: $f0 $f9
	ldh [$f0], a                                     ; $5200: $e0 $f0
	ld [hl], a                                       ; $5202: $77
	cp $8a                                           ; $5203: $fe $8a
	jr nz, jr_065_51f7                               ; $5205: $20 $f0

	db $10                                           ; $5207: $10
	cp h                                             ; $5208: $bc
	inc c                                            ; $5209: $0c
	sbc a                                            ; $520a: $9f
	add hl, de                                       ; $520b: $19
	rst $38                                          ; $520c: $ff
	sbc c                                            ; $520d: $99
	rst FarCall                                          ; $520e: $f7
	db $dd                                           ; $520f: $dd
	ld [hl], a                                       ; $5210: $77
	db $dd                                           ; $5211: $dd
	ld [hl], e                                       ; $5212: $73
	rst AddAOntoHL                                          ; $5213: $ef
	dec sp                                           ; $5214: $3b
	ld a, h                                          ; $5215: $7c
	jr @-$65                                         ; $5216: $18 $99

	ld [$bac1], sp                                   ; $5218: $08 $c1 $ba
	db $db                                           ; $521b: $db
	db $d3                                           ; $521c: $d3
	add e                                            ; $521d: $83
	dec a                                            ; $521e: $3d
	dec a                                            ; $521f: $3d
	ld a, [hl]                                       ; $5220: $7e
	rst $38                                          ; $5221: $ff
	add e                                            ; $5222: $83
	ld [$088f], sp                                   ; $5223: $08 $8f $08
	cp c                                             ; $5226: $b9
	rst AddAOntoHL                                          ; $5227: $ef
	sbc l                                            ; $5228: $9d
	rst FarCall                                          ; $5229: $f7
	ld d, d                                          ; $522a: $52
	rst $38                                          ; $522b: $ff
	rst $38                                          ; $522c: $ff
	db $fd                                           ; $522d: $fd
	ld de, $fe10                                     ; $522e: $11 $10 $fe
	nop                                              ; $5231: $00
	or a                                             ; $5232: $b7
	ld a, b                                          ; $5233: $78
	db $fd                                           ; $5234: $fd
	cp $46                                           ; $5235: $fe $46
	rst GetHLinHL                                          ; $5237: $cf
	dec e                                            ; $5238: $1d
	ccf                                              ; $5239: $3f
	ld c, h                                          ; $523a: $4c
	ld a, h                                          ; $523b: $7c
	cp d                                             ; $523c: $ba
	inc a                                            ; $523d: $3c
	db $fc                                           ; $523e: $fc
	cp l                                             ; $523f: $bd
	ld hl, sp+$00                                    ; $5240: $f8 $00
	cp a                                             ; $5242: $bf
	rrca                                             ; $5243: $0f
	add b                                            ; $5244: $80
	ld bc, $031f                                     ; $5245: $01 $1f $03
	rra                                              ; $5248: $1f
	rlca                                             ; $5249: $07
	ccf                                              ; $524a: $3f
	rrca                                             ; $524b: $0f
	ld a, a                                          ; $524c: $7f
	rra                                              ; $524d: $1f
	rst $38                                          ; $524e: $ff
	ld a, a                                          ; $524f: $7f
	rst $38                                          ; $5250: $ff
	rst SubAFromDE                                          ; $5251: $df
	rst FarCall                                          ; $5252: $f7
	ccf                                              ; $5253: $3f
	rst SubAFromBC                                          ; $5254: $e7
	ld a, a                                          ; $5255: $7f
	add a                                            ; $5256: $87
	rst AddAOntoHL                                          ; $5257: $ef
	inc bc                                           ; $5258: $03
	adc a                                            ; $5259: $8f
	inc bc                                           ; $525a: $03
	rrca                                             ; $525b: $0f
	inc bc                                           ; $525c: $03
	rra                                              ; $525d: $1f
	ld [bc], a                                       ; $525e: $02
	ccf                                              ; $525f: $3f
	inc b                                            ; $5260: $04
	ccf                                              ; $5261: $3f
	jr jr_065_52e3                                   ; $5262: $18 $7f

Call_065_5264:
	ld d, a                                          ; $5264: $57
	ld h, b                                          ; $5265: $60
	sbc l                                            ; $5266: $9d
	rst $38                                          ; $5267: $ff
	nop                                              ; $5268: $00
	ld h, a                                          ; $5269: $67
	ld e, [hl]                                       ; $526a: $5e
	ld e, a                                          ; $526b: $5f
	ld h, b                                          ; $526c: $60
	ld d, a                                          ; $526d: $57
	and b                                            ; $526e: $a0
	ld a, a                                          ; $526f: $7f
	ldh [$67], a                                     ; $5270: $e0 $67
	sbc [hl]                                         ; $5272: $9e
	ld e, a                                          ; $5273: $5f
	and b                                            ; $5274: $a0
	ld c, a                                          ; $5275: $4f
	ret nz                                           ; $5276: $c0

	ld a, a                                          ; $5277: $7f
	cp $9b                                           ; $5278: $fe $9b
	db $dd                                           ; $527a: $dd
	ld a, $7e                                        ; $527b: $3e $7e
	rst $38                                          ; $527d: $ff
	rra                                              ; $527e: $1f
	ret nz                                           ; $527f: $c0

	ld a, a                                          ; $5280: $7f
	cp $98                                           ; $5281: $fe $98
	cp e                                             ; $5283: $bb
	ld a, h                                          ; $5284: $7c
	cp $ff                                           ; $5285: $fe $ff
	dec c                                            ; $5287: $0d
	ld e, a                                          ; $5288: $5f
	sbc d                                            ; $5289: $9a
	dec sp                                           ; $528a: $3b
	ret nz                                           ; $528b: $c0

	sbc [hl]                                         ; $528c: $9e
	ld a, a                                          ; $528d: $7f
	ld [hl], e                                       ; $528e: $73
	ret nz                                           ; $528f: $c0

	ld a, a                                          ; $5290: $7f
	cp $99                                           ; $5291: $fe $99
	ccf                                              ; $5293: $3f
	inc bc                                           ; $5294: $03
	cp $fe                                           ; $5295: $fe $fe
	db $fd                                           ; $5297: $fd
	ld a, h                                          ; $5298: $7c
	daa                                              ; $5299: $27
	ret nz                                           ; $529a: $c0

	sub a                                            ; $529b: $97
	ld a, a                                          ; $529c: $7f
	nop                                              ; $529d: $00
	rst GetHLinHL                                          ; $529e: $cf
	ret nz                                           ; $529f: $c0

	ld a, a                                          ; $52a0: $7f
	ld a, a                                          ; $52a1: $7f
	cp [hl]                                          ; $52a2: $be
	ld a, $67                                        ; $52a3: $3e $67
	ret nz                                           ; $52a5: $c0

	rst $38                                          ; $52a6: $ff
	sbc h                                            ; $52a7: $9c
	inc e                                            ; $52a8: $1c
	ld [$bd04], sp                                   ; $52a9: $08 $04 $bd
	inc c                                            ; $52ac: $0c
	nop                                              ; $52ad: $00
	nop                                              ; $52ae: $00
	jp $818c                                         ; $52af: $c3 $8c $81


	rst $38                                          ; $52b2: $ff
	ld h, a                                          ; $52b3: $67
	ccf                                              ; $52b4: $3f
	inc e                                            ; $52b5: $1c
	rst GetHLinHL                                          ; $52b6: $cf
	add b                                            ; $52b7: $80
	ld a, a                                          ; $52b8: $7f
	db $e3                                           ; $52b9: $e3
	inc e                                            ; $52ba: $1c
	ld a, [hl]                                       ; $52bb: $7e
	inc e                                            ; $52bc: $1c
	ld a, $14                                        ; $52bd: $3e $14
	ld [hl], $2e                                     ; $52bf: $36 $2e
	ld h, d                                          ; $52c1: $62
	ld l, $63                                        ; $52c2: $2e $63
	ld a, e                                          ; $52c4: $7b
	ldh [$de], a                                     ; $52c5: $e0 $de
	inc d                                            ; $52c7: $14
	inc bc                                           ; $52c8: $03
	ldh [$9e], a                                     ; $52c9: $e0 $9e
	ld [$de77], sp                                   ; $52cb: $08 $77 $de
	scf                                              ; $52ce: $37
	ldh [$9d], a                                     ; $52cf: $e0 $9d
	inc e                                            ; $52d1: $1c
	nop                                              ; $52d2: $00
	db $dd                                           ; $52d3: $dd
	inc d                                            ; $52d4: $14
	ld a, a                                          ; $52d5: $7f
	call c, $9a7f                                    ; $52d6: $dc $7f $9a
	ld a, a                                          ; $52d9: $7f
	sbc $37                                          ; $52da: $de $37
	ldh [rAUD4GO], a                                 ; $52dc: $e0 $23
	ld bc, $499a                                     ; $52de: $01 $9a $49
	rst $38                                          ; $52e1: $ff
	ret                                              ; $52e2: $c9


jr_065_52e3:
	cp a                                             ; $52e3: $bf
	sub l                                            ; $52e4: $95
	sbc $ff                                          ; $52e5: $de $ff
	rst SubAFromDE                                          ; $52e7: $df
	sub e                                            ; $52e8: $93
	sub b                                            ; $52e9: $90
	rst $38                                          ; $52ea: $ff
	dec e                                            ; $52eb: $1d
	rst SubAFromBC                                          ; $52ec: $e7
	ld a, $c3                                        ; $52ed: $3e $c3
	ld h, a                                          ; $52ef: $67
	add $cf                                          ; $52f0: $c6 $cf
	cp [hl]                                          ; $52f2: $be
	ld a, $b2                                        ; $52f3: $3e $b2
	ld a, $fd                                        ; $52f5: $3e $fd
	inc e                                            ; $52f7: $1c
	cp $bd                                           ; $52f8: $fe $bd
	ld c, [hl]                                       ; $52fa: $4e
	nop                                              ; $52fb: $00
	add a                                            ; $52fc: $87
	ret nz                                           ; $52fd: $c0

	adc d                                            ; $52fe: $8a
	add b                                            ; $52ff: $80
	ldh [$c0], a                                     ; $5300: $e0 $c0
	ldh a, [$e0]                                     ; $5302: $f0 $e0
	ld hl, sp-$10                                    ; $5304: $f8 $f0
	db $fc                                           ; $5306: $fc
	ld hl, sp-$02                                    ; $5307: $f8 $fe

jr_065_5309:
	cp $f7                                           ; $5309: $fe $f7
	db $fd                                           ; $530b: $fd
	ldh a, [c]                                       ; $530c: $f2
	cp $f1                                           ; $530d: $fe $f1
	ei                                               ; $530f: $fb
	ldh a, [$f9]                                     ; $5310: $f0 $f9
	ldh [$f0], a                                     ; $5312: $e0 $f0

jr_065_5314:
	ld [hl], a                                       ; $5314: $77
	cp $8a                                           ; $5315: $fe $8a
	jr nz, jr_065_5309                               ; $5317: $20 $f0

	db $10                                           ; $5319: $10
	cp h                                             ; $531a: $bc
	inc c                                            ; $531b: $0c
	sbc a                                            ; $531c: $9f
	add hl, de                                       ; $531d: $19
	rst $38                                          ; $531e: $ff
	sbc c                                            ; $531f: $99
	rst FarCall                                          ; $5320: $f7
	db $dd                                           ; $5321: $dd
	ld [hl], a                                       ; $5322: $77
	db $dd                                           ; $5323: $dd
	ld [hl], e                                       ; $5324: $73
	rst AddAOntoHL                                          ; $5325: $ef
	dec sp                                           ; $5326: $3b
	ld a, h                                          ; $5327: $7c
	jr @-$65                                         ; $5328: $18 $99

	ld [$bac1], sp                                   ; $532a: $08 $c1 $ba
	db $db                                           ; $532d: $db
	db $d3                                           ; $532e: $d3
	add e                                            ; $532f: $83
	ld hl, $4c29                                     ; $5330: $21 $29 $4c
	sbc h                                            ; $5333: $9c
	add e                                            ; $5334: $83
	ld [$080c], sp                                   ; $5335: $08 $0c $08
	cp c                                             ; $5338: $b9
	rst AddAOntoHL                                          ; $5339: $ef
	sbc l                                            ; $533a: $9d
	rst FarCall                                          ; $533b: $f7
	ld d, d                                          ; $533c: $52
	rst $38                                          ; $533d: $ff
	rst $38                                          ; $533e: $ff
	db $fd                                           ; $533f: $fd
	ld de, $fe10                                     ; $5340: $11 $10 $fe
	jr nc, jr_065_5314                               ; $5343: $30 $cf

	ld a, h                                          ; $5345: $7c
	add a                                            ; $5346: $87
	adc $0f                                          ; $5347: $ce $0f
	sbc l                                            ; $5349: $9d
	ld a, h                                          ; $534a: $7c
	ld a, h                                          ; $534b: $7c
	ld h, h                                          ; $534c: $64

jr_065_534d:
	ld a, h                                          ; $534d: $7c
	cp [hl]                                          ; $534e: $be
	jr c, jr_065_534d                                ; $534f: $38 $fc

	cp l                                             ; $5351: $bd
	ld hl, sp+$00                                    ; $5352: $f8 $00
	ccf                                              ; $5354: $3f
	rrca                                             ; $5355: $0f
	add b                                            ; $5356: $80
	ld bc, $031f                                     ; $5357: $01 $1f $03
	rra                                              ; $535a: $1f
	rlca                                             ; $535b: $07
	ccf                                              ; $535c: $3f
	rrca                                             ; $535d: $0f
	ld a, a                                          ; $535e: $7f
	rra                                              ; $535f: $1f
	rst $38                                          ; $5360: $ff
	ld a, a                                          ; $5361: $7f
	rst $38                                          ; $5362: $ff
	rst SubAFromDE                                          ; $5363: $df
	rst FarCall                                          ; $5364: $f7
	ccf                                              ; $5365: $3f
	rst SubAFromBC                                          ; $5366: $e7
	ld a, a                                          ; $5367: $7f
	add a                                            ; $5368: $87
	rst AddAOntoHL                                          ; $5369: $ef
	inc bc                                           ; $536a: $03
	adc a                                            ; $536b: $8f
	inc bc                                           ; $536c: $03
	rrca                                             ; $536d: $0f
	inc bc                                           ; $536e: $03
	rra                                              ; $536f: $1f
	ld [bc], a                                       ; $5370: $02
	ccf                                              ; $5371: $3f
	inc b                                            ; $5372: $04
	ccf                                              ; $5373: $3f
	jr jr_065_53f5                                   ; $5374: $18 $7f

	ld e, e                                          ; $5376: $5b
	ld h, b                                          ; $5377: $60
	sub [hl]                                         ; $5378: $96
	ld bc, $1cef                                     ; $5379: $01 $ef $1c
	rst $38                                          ; $537c: $ff
	ld a, $43                                        ; $537d: $3e $43
	rst SubAFromBC                                          ; $537f: $e7
	sbc [hl]                                         ; $5380: $9e
	rst SubAFromDE                                          ; $5381: $df
	ld d, a                                          ; $5382: $57
	ld h, b                                          ; $5383: $60
	ld e, e                                          ; $5384: $5b
	and b                                            ; $5385: $a0
	sbc e                                            ; $5386: $9b
	nop                                              ; $5387: $00
	rst FarCall                                          ; $5388: $f7
	jr c, @+$01                                      ; $5389: $38 $ff

	ld a, e                                          ; $538b: $7b
	sbc [hl]                                         ; $538c: $9e
	sbc l                                            ; $538d: $9d
	dec a                                            ; $538e: $3d
	cp a                                             ; $538f: $bf
	ld d, a                                          ; $5390: $57
	and b                                            ; $5391: $a0
	ld d, a                                          ; $5392: $57
	ret nz                                           ; $5393: $c0

	sbc l                                            ; $5394: $9d
	rst $38                                          ; $5395: $ff
	nop                                              ; $5396: $00
	ld [hl], a                                       ; $5397: $77
	cp [hl]                                          ; $5398: $be
	sbc e                                            ; $5399: $9b
	ld h, a                                          ; $539a: $67
	rst AddAOntoHL                                          ; $539b: $ef
	xor [hl]                                         ; $539c: $ae
	cp $2f                                           ; $539d: $fe $2f
	ret nz                                           ; $539f: $c0

	ld a, a                                          ; $53a0: $7f
	ldh [rPCM34], a                                  ; $53a1: $e0 $77
	cp [hl]                                          ; $53a3: $be
	sbc c                                            ; $53a4: $99
	rst GetHLinHL                                          ; $53a5: $cf
	rst SubAFromDE                                          ; $53a6: $df
	ld e, h                                          ; $53a7: $5c
	ld a, [hl]                                       ; $53a8: $7e
	cp [hl]                                          ; $53a9: $be
	inc a                                            ; $53aa: $3c
	cpl                                              ; $53ab: $2f
	ret nz                                           ; $53ac: $c0

	ld [hl], a                                       ; $53ad: $77
	cp $99                                           ; $53ae: $fe $99
	ccf                                              ; $53b0: $3f
	inc bc                                           ; $53b1: $03
	cp $fe                                           ; $53b2: $fe $fe
	db $fd                                           ; $53b4: $fd
	inc a                                            ; $53b5: $3c
	cpl                                              ; $53b6: $2f
	ret nz                                           ; $53b7: $c0

	ld [hl], a                                       ; $53b8: $77
	cp $99                                           ; $53b9: $fe $99
	rst GetHLinHL                                          ; $53bb: $cf
	ret nz                                           ; $53bc: $c0

	ld a, a                                          ; $53bd: $7f
	ld a, a                                          ; $53be: $7f
	cp [hl]                                          ; $53bf: $be
	ld a, $67                                        ; $53c0: $3e $67
	ret nz                                           ; $53c2: $c0

	sbc b                                            ; $53c3: $98
	ld [hl+], a                                      ; $53c4: $22
	nop                                              ; $53c5: $00
	ld a, $14                                        ; $53c6: $3e $14
	inc c                                            ; $53c8: $0c
	ld [$be0c], sp                                   ; $53c9: $08 $0c $be
	nop                                              ; $53cc: $00
	nop                                              ; $53cd: $00
	jp $818c                                         ; $53ce: $c3 $8c $81


	rst $38                                          ; $53d1: $ff
	ld h, a                                          ; $53d2: $67
	ccf                                              ; $53d3: $3f
	inc e                                            ; $53d4: $1c
	rst GetHLinHL                                          ; $53d5: $cf
	add b                                            ; $53d6: $80
	ld a, a                                          ; $53d7: $7f
	db $e3                                           ; $53d8: $e3
	inc e                                            ; $53d9: $1c
	ld a, [hl]                                       ; $53da: $7e
	inc e                                            ; $53db: $1c
	ld a, $14                                        ; $53dc: $3e $14
	ld [hl], $2e                                     ; $53de: $36 $2e
	ld h, d                                          ; $53e0: $62
	ld l, $63                                        ; $53e1: $2e $63
	ld a, e                                          ; $53e3: $7b
	ldh [$9c], a                                     ; $53e4: $e0 $9c

jr_065_53e6:
	ld [hl], $1c                                     ; $53e6: $36 $1c
	inc e                                            ; $53e8: $1c
	rra                                              ; $53e9: $1f
	ldh [rIE], a                                     ; $53ea: $e0 $ff
	ld a, e                                          ; $53ec: $7b
	ldh [$9c], a                                     ; $53ed: $e0 $9c
	inc d                                            ; $53ef: $14
	ld [$2708], sp                                   ; $53f0: $08 $08 $27
	ldh [$98], a                                     ; $53f3: $e0 $98

jr_065_53f5:
	ld a, $26                                        ; $53f5: $3e $26
	ld h, $22                                        ; $53f7: $26 $22
	ld a, $14                                        ; $53f9: $3e $14
	inc e                                            ; $53fb: $1c
	ld [hl], e                                       ; $53fc: $73
	rst SubAFromDE                                          ; $53fd: $df
	scf                                              ; $53fe: $37
	ldh [rAUD2ENV], a                                ; $53ff: $e0 $17
	ld bc, $499a                                     ; $5401: $01 $9a $49
	rst $38                                          ; $5404: $ff
	ret                                              ; $5405: $c9


	cp a                                             ; $5406: $bf
	sub l                                            ; $5407: $95
	sbc $ff                                          ; $5408: $de $ff
	rst SubAFromDE                                          ; $540a: $df
	sub e                                            ; $540b: $93
	sub b                                            ; $540c: $90
	ld a, a                                          ; $540d: $7f
	ld bc, $1efd                                     ; $540e: $01 $fd $1e
	and e                                            ; $5411: $a3
	ld h, a                                          ; $5412: $67
	ld b, [hl]                                       ; $5413: $46
	rst GetHLinHL                                          ; $5414: $cf
	cp [hl]                                          ; $5415: $be
	cp [hl]                                          ; $5416: $be
	or d                                             ; $5417: $b2
	ld a, $fd                                        ; $5418: $3e $fd
	inc e                                            ; $541a: $1c
	cp $bd                                           ; $541b: $fe $bd
	ld c, [hl]                                       ; $541d: $4e
	nop                                              ; $541e: $00
	add a                                            ; $541f: $87
	ret nz                                           ; $5420: $c0

	adc d                                            ; $5421: $8a
	add b                                            ; $5422: $80
	ldh [$c0], a                                     ; $5423: $e0 $c0
	ldh a, [$e0]                                     ; $5425: $f0 $e0
	ld hl, sp-$10                                    ; $5427: $f8 $f0
	db $fc                                           ; $5429: $fc
	ld hl, sp-$02                                    ; $542a: $f8 $fe

jr_065_542c:
	cp $f7                                           ; $542c: $fe $f7
	db $fd                                           ; $542e: $fd
	ldh a, [c]                                       ; $542f: $f2
	cp $f1                                           ; $5430: $fe $f1
	ei                                               ; $5432: $fb
	ldh a, [$f9]                                     ; $5433: $f0 $f9
	ldh [$f0], a                                     ; $5435: $e0 $f0
	ld [hl], a                                       ; $5437: $77
	cp $8a                                           ; $5438: $fe $8a
	jr nz, jr_065_542c                               ; $543a: $20 $f0

	db $10                                           ; $543c: $10
	cp h                                             ; $543d: $bc
	inc c                                            ; $543e: $0c
	sbc a                                            ; $543f: $9f
	add hl, de                                       ; $5440: $19
	rst $38                                          ; $5441: $ff
	sbc c                                            ; $5442: $99
	rst FarCall                                          ; $5443: $f7
	db $dd                                           ; $5444: $dd
	ld [hl], a                                       ; $5445: $77
	db $dd                                           ; $5446: $dd
	ld [hl], e                                       ; $5447: $73
	rst AddAOntoHL                                          ; $5448: $ef
	dec sp                                           ; $5449: $3b
	ld a, h                                          ; $544a: $7c
	jr jr_065_53e6                                   ; $544b: $18 $99

	ld [$bac1], sp                                   ; $544d: $08 $c1 $ba
	db $db                                           ; $5450: $db
	db $d3                                           ; $5451: $d3
	add e                                            ; $5452: $83
	ld hl, $4c29                                     ; $5453: $21 $29 $4c
	sbc h                                            ; $5456: $9c
	add e                                            ; $5457: $83
	ld [$080c], sp                                   ; $5458: $08 $0c $08
	cp c                                             ; $545b: $b9
	rst AddAOntoHL                                          ; $545c: $ef
	sbc l                                            ; $545d: $9d
	rst FarCall                                          ; $545e: $f7
	ld d, d                                          ; $545f: $52
	rst $38                                          ; $5460: $ff
	rst $38                                          ; $5461: $ff
	db $fd                                           ; $5462: $fd
	ld de, $fe10                                     ; $5463: $11 $10 $fe
	nop                                              ; $5466: $00
	cp a                                             ; $5467: $bf
	ld a, b                                          ; $5468: $78
	push bc                                          ; $5469: $c5
	adc $0e                                          ; $546a: $ce $0e
	sbc a                                            ; $546c: $9f
	ld a, l                                          ; $546d: $7d
	ld a, l                                          ; $546e: $7d
	ld h, h                                          ; $546f: $64

jr_065_5470:
	ld a, h                                          ; $5470: $7c
	cp [hl]                                          ; $5471: $be
	jr c, jr_065_5470                                ; $5472: $38 $fc

	cp l                                             ; $5474: $bd
	ld hl, sp+$00                                    ; $5475: $f8 $00
	ccf                                              ; $5477: $3f
	rrca                                             ; $5478: $0f
	add b                                            ; $5479: $80
	ld bc, $031f                                     ; $547a: $01 $1f $03
	rra                                              ; $547d: $1f
	rlca                                             ; $547e: $07
	ccf                                              ; $547f: $3f

Jump_065_5480:
	rrca                                             ; $5480: $0f
	ld a, a                                          ; $5481: $7f
	rra                                              ; $5482: $1f
	rst $38                                          ; $5483: $ff
	ld a, a                                          ; $5484: $7f
	rst $38                                          ; $5485: $ff
	rst SubAFromDE                                          ; $5486: $df
	rst FarCall                                          ; $5487: $f7
	ccf                                              ; $5488: $3f
	rst SubAFromBC                                          ; $5489: $e7
	ld a, a                                          ; $548a: $7f
	add a                                            ; $548b: $87
	rst AddAOntoHL                                          ; $548c: $ef
	inc bc                                           ; $548d: $03
	adc a                                            ; $548e: $8f
	inc bc                                           ; $548f: $03
	rrca                                             ; $5490: $0f
	inc bc                                           ; $5491: $03
	rra                                              ; $5492: $1f
	ld [bc], a                                       ; $5493: $02
	ccf                                              ; $5494: $3f
	inc b                                            ; $5495: $04
	ccf                                              ; $5496: $3f
	jr jr_065_5518                                   ; $5497: $18 $7f

	ld d, a                                          ; $5499: $57
	ld h, b                                          ; $549a: $60
	sub e                                            ; $549b: $93
	rst $38                                          ; $549c: $ff
	nop                                              ; $549d: $00
	rst SubAFromDE                                          ; $549e: $df
	ld a, $e3                                        ; $549f: $3e $e3
	ld h, a                                          ; $54a1: $67
	adc [hl]                                         ; $54a2: $8e
	sbc $b2                                          ; $54a3: $de $b2
	ld a, $dd                                        ; $54a5: $3e $dd
	inc a                                            ; $54a7: $3c
	ld h, a                                          ; $54a8: $67
	ld h, b                                          ; $54a9: $60
	ld d, a                                          ; $54aa: $57
	and b                                            ; $54ab: $a0
	ld a, a                                          ; $54ac: $7f
	ldh [hDisp1_WY], a                                     ; $54ad: $e0 $95
	ei                                               ; $54af: $fb
	ld a, h                                          ; $54b0: $7c
	rst JumpTable                                          ; $54b1: $c7
	adc $1d                                          ; $54b2: $ce $1d
	ccf                                              ; $54b4: $3f
	ld h, h                                          ; $54b5: $64
	ld a, h                                          ; $54b6: $7c
	cp d                                             ; $54b7: $ba
	inc a                                            ; $54b8: $3c
	ld h, a                                          ; $54b9: $67
	and b                                            ; $54ba: $a0
	ld c, a                                          ; $54bb: $4f
	ret nz                                           ; $54bc: $c0

	ld [hl], a                                       ; $54bd: $77
	cp [hl]                                          ; $54be: $be
	sbc e                                            ; $54bf: $9b
	rst JumpTable                                          ; $54c0: $c7
	ld d, a                                          ; $54c1: $57
	or d                                             ; $54c2: $b2
	cp $27                                           ; $54c3: $fe $27
	ret nz                                           ; $54c5: $c0

	ld [hl], a                                       ; $54c6: $77
	cp [hl]                                          ; $54c7: $be
	sbc e                                            ; $54c8: $9b
	adc a                                            ; $54c9: $8f
	xor [hl]                                         ; $54ca: $ae
	ld h, l                                          ; $54cb: $65
	ld a, a                                          ; $54cc: $7f
	rra                                              ; $54cd: $1f
	ret nz                                           ; $54ce: $c0

	ld a, e                                          ; $54cf: $7b
	cp $9b                                           ; $54d0: $fe $9b
	add e                                            ; $54d2: $83
	cp $7e                                           ; $54d3: $fe $7e
	db $fd                                           ; $54d5: $fd
	inc hl                                           ; $54d6: $23
	ret nz                                           ; $54d7: $c0

	ld a, e                                          ; $54d8: $7b
	cp $9b                                           ; $54d9: $fe $9b
	pop bc                                           ; $54db: $c1
	ld a, a                                          ; $54dc: $7f
	ld a, [hl]                                       ; $54dd: $7e
	cp [hl]                                          ; $54de: $be
	ld h, e                                          ; $54df: $63
	ret nz                                           ; $54e0: $c0

	sbc d                                            ; $54e1: $9a
	ld [hl+], a                                      ; $54e2: $22
	nop                                              ; $54e3: $00
	ld a, $14                                        ; $54e4: $3e $14
	inc b                                            ; $54e6: $04
	cp l                                             ; $54e7: $bd
	inc c                                            ; $54e8: $0c
	nop                                              ; $54e9: $00
	nop                                              ; $54ea: $00
	jp $818c                                         ; $54eb: $c3 $8c $81


	rst $38                                          ; $54ee: $ff
	ld h, a                                          ; $54ef: $67
	ccf                                              ; $54f0: $3f
	inc e                                            ; $54f1: $1c
	rst GetHLinHL                                          ; $54f2: $cf
	add b                                            ; $54f3: $80
	ld a, a                                          ; $54f4: $7f
	db $e3                                           ; $54f5: $e3
	inc e                                            ; $54f6: $1c
	ld a, [hl]                                       ; $54f7: $7e
	inc e                                            ; $54f8: $1c
	ld a, $14                                        ; $54f9: $3e $14
	ld [hl], $2e                                     ; $54fb: $36 $2e

jr_065_54fd:
	ld h, d                                          ; $54fd: $62
	ld l, $63                                        ; $54fe: $2e $63
	ld [hl], a                                       ; $5500: $77
	ldh [$9d], a                                     ; $5501: $e0 $9d
	inc e                                            ; $5503: $1c
	ld [$e013], sp                                   ; $5504: $08 $13 $e0
	sbc h                                            ; $5507: $9c
	ld [hl], $1c                                     ; $5508: $36 $1c
	inc e                                            ; $550a: $1c
	rla                                              ; $550b: $17
	ldh [$98], a                                     ; $550c: $e0 $98
	ld a, a                                          ; $550e: $7f
	ld [hl], $3e                                     ; $550f: $36 $3e
	inc e                                            ; $5511: $1c
	inc e                                            ; $5512: $1c
	ld [$2b08], sp                                   ; $5513: $08 $08 $2b
	ldh [rAUD1SWEEP], a                              ; $5516: $e0 $10

jr_065_5518:
	ld bc, $499a                                     ; $5518: $01 $9a $49
	rst $38                                          ; $551b: $ff
	ret                                              ; $551c: $c9


	cp a                                             ; $551d: $bf
	sub l                                            ; $551e: $95
	sbc $ff                                          ; $551f: $de $ff
	rst SubAFromDE                                          ; $5521: $df
	sub e                                            ; $5522: $93
	sub b                                            ; $5523: $90
	rst $38                                          ; $5524: $ff
	ld bc, $1efd                                     ; $5525: $01 $fd $1e
	and e                                            ; $5528: $a3
	ld h, a                                          ; $5529: $67
	ld c, [hl]                                       ; $552a: $4e
	rst SubAFromDE                                          ; $552b: $df
	xor [hl]                                         ; $552c: $ae
	cp $a6                                           ; $552d: $fe $a6
	ld a, $dd                                        ; $552f: $3e $dd
	inc a                                            ; $5531: $3c
	cp $bd                                           ; $5532: $fe $bd
	ld c, [hl]                                       ; $5534: $4e
	nop                                              ; $5535: $00
	add a                                            ; $5536: $87
	ret nz                                           ; $5537: $c0

	adc d                                            ; $5538: $8a
	add b                                            ; $5539: $80
	ldh [$c0], a                                     ; $553a: $e0 $c0
	ldh a, [$e0]                                     ; $553c: $f0 $e0
	ld hl, sp-$10                                    ; $553e: $f8 $f0
	db $fc                                           ; $5540: $fc
	ld hl, sp-$02                                    ; $5541: $f8 $fe

jr_065_5543:
	cp $f7                                           ; $5543: $fe $f7
	db $fd                                           ; $5545: $fd
	ldh a, [c]                                       ; $5546: $f2
	cp $f1                                           ; $5547: $fe $f1
	ei                                               ; $5549: $fb
	ldh a, [$f9]                                     ; $554a: $f0 $f9
	ldh [$f0], a                                     ; $554c: $e0 $f0
	ld [hl], a                                       ; $554e: $77
	cp $8a                                           ; $554f: $fe $8a
	jr nz, jr_065_5543                               ; $5551: $20 $f0

	db $10                                           ; $5553: $10
	cp h                                             ; $5554: $bc
	inc c                                            ; $5555: $0c
	sbc a                                            ; $5556: $9f
	add hl, de                                       ; $5557: $19
	rst $38                                          ; $5558: $ff
	sbc c                                            ; $5559: $99
	rst FarCall                                          ; $555a: $f7
	db $dd                                           ; $555b: $dd
	ld [hl], a                                       ; $555c: $77
	db $dd                                           ; $555d: $dd
	ld [hl], e                                       ; $555e: $73
	rst AddAOntoHL                                          ; $555f: $ef
	dec sp                                           ; $5560: $3b
	ld a, h                                          ; $5561: $7c
	jr jr_065_54fd                                   ; $5562: $18 $99

	ld [$bac1], sp                                   ; $5564: $08 $c1 $ba
	db $db                                           ; $5567: $db
	db $d3                                           ; $5568: $d3
	add e                                            ; $5569: $83
	ld hl, $4c29                                     ; $556a: $21 $29 $4c
	sbc h                                            ; $556d: $9c
	add e                                            ; $556e: $83
	ld [$080c], sp                                   ; $556f: $08 $0c $08
	cp c                                             ; $5572: $b9
	rst AddAOntoHL                                          ; $5573: $ef
	sbc l                                            ; $5574: $9d
	rst FarCall                                          ; $5575: $f7
	ld d, d                                          ; $5576: $52
	rst $38                                          ; $5577: $ff
	rst $38                                          ; $5578: $ff
	db $fd                                           ; $5579: $fd
	ld de, $fe10                                     ; $557a: $11 $10 $fe
	nop                                              ; $557d: $00
	cp a                                             ; $557e: $bf
	ld a, b                                          ; $557f: $78
	push bc                                          ; $5580: $c5
	adc $1e                                          ; $5581: $ce $1e
	cp a                                             ; $5583: $bf
	ld e, l                                          ; $5584: $5d
	ld a, a                                          ; $5585: $7f
	ld c, h                                          ; $5586: $4c
	ld a, h                                          ; $5587: $7c
	cp d                                             ; $5588: $ba
	inc a                                            ; $5589: $3c
	db $fc                                           ; $558a: $fc
	cp l                                             ; $558b: $bd
	ld hl, sp+$00                                    ; $558c: $f8 $00
	ccf                                              ; $558e: $3f
	rrca                                             ; $558f: $0f
	add b                                            ; $5590: $80
	ld bc, $031f                                     ; $5591: $01 $1f $03
	rra                                              ; $5594: $1f
	rlca                                             ; $5595: $07
	ccf                                              ; $5596: $3f
	rrca                                             ; $5597: $0f
	ld a, a                                          ; $5598: $7f
	rra                                              ; $5599: $1f
	rst $38                                          ; $559a: $ff
	ld a, a                                          ; $559b: $7f
	rst $38                                          ; $559c: $ff
	rst SubAFromDE                                          ; $559d: $df
	rst FarCall                                          ; $559e: $f7
	ccf                                              ; $559f: $3f
	rst SubAFromBC                                          ; $55a0: $e7
	ld a, a                                          ; $55a1: $7f
	add a                                            ; $55a2: $87
	rst AddAOntoHL                                          ; $55a3: $ef
	inc bc                                           ; $55a4: $03
	adc a                                            ; $55a5: $8f
	inc bc                                           ; $55a6: $03
	rrca                                             ; $55a7: $0f
	inc bc                                           ; $55a8: $03
	rra                                              ; $55a9: $1f
	ld [bc], a                                       ; $55aa: $02
	ccf                                              ; $55ab: $3f
	inc b                                            ; $55ac: $04
	ccf                                              ; $55ad: $3f
	jr jr_065_562f                                   ; $55ae: $18 $7f

	ld d, a                                          ; $55b0: $57
	ld h, b                                          ; $55b1: $60
	sub l                                            ; $55b2: $95
	rst $38                                          ; $55b3: $ff
	nop                                              ; $55b4: $00
	rst SubAFromDE                                          ; $55b5: $df
	ccf                                              ; $55b6: $3f
	add $4e                                          ; $55b7: $c6 $4e
	sbc [hl]                                         ; $55b9: $9e
	cp $b2                                           ; $55ba: $fe $b2
	cp [hl]                                          ; $55bc: $be
	ld e, a                                          ; $55bd: $5f
	ld h, b                                          ; $55be: $60
	ld d, a                                          ; $55bf: $57
	and b                                            ; $55c0: $a0
	ld a, a                                          ; $55c1: $7f
	ldh [$97], a                                     ; $55c2: $e0 $97
	ei                                               ; $55c4: $fb
	db $fc                                           ; $55c5: $fc
	rrca                                             ; $55c6: $0f
	ld e, $5d                                        ; $55c7: $1e $5d
	ld a, a                                          ; $55c9: $7f
	ld h, l                                          ; $55ca: $65
	ld a, l                                          ; $55cb: $7d
	ld e, a                                          ; $55cc: $5f
	and b                                            ; $55cd: $a0
	ld c, a                                          ; $55ce: $4f
	ret nz                                           ; $55cf: $c0

	ld a, e                                          ; $55d0: $7b
	cp $9a                                           ; $55d1: $fe $9a
	ld a, $c7                                        ; $55d3: $3e $c7
	ld d, a                                          ; $55d5: $57
	or d                                             ; $55d6: $b2
	cp $27                                           ; $55d7: $fe $27
	ret nz                                           ; $55d9: $c0

	ld a, e                                          ; $55da: $7b
	cp $9a                                           ; $55db: $fe $9a
	ld a, h                                          ; $55dd: $7c
	adc a                                            ; $55de: $8f
	xor [hl]                                         ; $55df: $ae
	ld h, l                                          ; $55e0: $65
	ld a, a                                          ; $55e1: $7f
	dec de                                           ; $55e2: $1b
	ret nz                                           ; $55e3: $c0

	ld a, a                                          ; $55e4: $7f
	cp $9b                                           ; $55e5: $fe $9b
	add e                                            ; $55e7: $83
	cp $7e                                           ; $55e8: $fe $7e
	db $fd                                           ; $55ea: $fd
	rra                                              ; $55eb: $1f
	ret nz                                           ; $55ec: $c0

	ld a, a                                          ; $55ed: $7f
	cp $9b                                           ; $55ee: $fe $9b
	pop bc                                           ; $55f0: $c1
	ld a, a                                          ; $55f1: $7f
	ld a, [hl]                                       ; $55f2: $7e
	cp [hl]                                          ; $55f3: $be
	ld h, e                                          ; $55f4: $63
	ret nz                                           ; $55f5: $c0

	rst $38                                          ; $55f6: $ff
	sbc h                                            ; $55f7: $9c
	ld a, $14                                        ; $55f8: $3e $14
	inc b                                            ; $55fa: $04
	cp l                                             ; $55fb: $bd
	inc c                                            ; $55fc: $0c
	nop                                              ; $55fd: $00
	nop                                              ; $55fe: $00
	jp $818c                                         ; $55ff: $c3 $8c $81


	rst $38                                          ; $5602: $ff
	ld h, a                                          ; $5603: $67
	ccf                                              ; $5604: $3f
	inc e                                            ; $5605: $1c
	rst GetHLinHL                                          ; $5606: $cf
	add b                                            ; $5607: $80
	ld a, a                                          ; $5608: $7f
	db $e3                                           ; $5609: $e3
	inc e                                            ; $560a: $1c
	ld a, [hl]                                       ; $560b: $7e
	inc e                                            ; $560c: $1c

jr_065_560d:
	ld a, $14                                        ; $560d: $3e $14
	ld [hl], $2e                                     ; $560f: $36 $2e
	ld h, d                                          ; $5611: $62
	ld l, $63                                        ; $5612: $2e $63
	ld [hl], a                                       ; $5614: $77
	ldh [$df], a                                     ; $5615: $e0 $df
	inc e                                            ; $5617: $1c
	rlca                                             ; $5618: $07
	ldh [$9c], a                                     ; $5619: $e0 $9c
	inc e                                            ; $561b: $1c
	ld [$2308], sp                                   ; $561c: $08 $08 $23
	ldh [$9d], a                                     ; $561f: $e0 $9d
	ld [hl], $14                                     ; $5621: $36 $14
	ld h, a                                          ; $5623: $67
	sbc $37                                          ; $5624: $de $37
	ldh [rAUD3HIGH], a                               ; $5626: $e0 $1e
	ld bc, $7986                                     ; $5628: $01 $86 $79
	rst $38                                          ; $562b: $ff
	sbc c                                            ; $562c: $99
	rst $38                                          ; $562d: $ff
	push hl                                          ; $562e: $e5

jr_065_562f:
	rst $38                                          ; $562f: $ff
	di                                               ; $5630: $f3
	sbc a                                            ; $5631: $9f
	sub e                                            ; $5632: $93
	sub e                                            ; $5633: $93
	rst $38                                          ; $5634: $ff
	ld bc, $3edd                                     ; $5635: $01 $dd $3e
	cp a                                             ; $5638: $bf
	ld a, a                                          ; $5639: $7f
	ld b, [hl]                                       ; $563a: $46
	rst SubAFromBC                                          ; $563b: $e7
	adc [hl]                                         ; $563c: $8e
	sbc $a6                                          ; $563d: $de $a6
	ld a, $dd                                        ; $563f: $3e $dd
	inc a                                            ; $5641: $3c
	cp $bd                                           ; $5642: $fe $bd
	ld c, [hl]                                       ; $5644: $4e
	nop                                              ; $5645: $00
	add a                                            ; $5646: $87
	ret nz                                           ; $5647: $c0

	adc d                                            ; $5648: $8a
	add b                                            ; $5649: $80
	ldh [$c0], a                                     ; $564a: $e0 $c0
	ldh a, [$e0]                                     ; $564c: $f0 $e0
	ld hl, sp-$10                                    ; $564e: $f8 $f0
	db $fc                                           ; $5650: $fc
	ld hl, sp-$02                                    ; $5651: $f8 $fe

jr_065_5653:
	cp $f7                                           ; $5653: $fe $f7
	db $fd                                           ; $5655: $fd
	ldh a, [c]                                       ; $5656: $f2
	cp $f1                                           ; $5657: $fe $f1
	ei                                               ; $5659: $fb
	ldh a, [$f9]                                     ; $565a: $f0 $f9
	ldh [$f0], a                                     ; $565c: $e0 $f0
	ld [hl], a                                       ; $565e: $77
	cp $8a                                           ; $565f: $fe $8a
	jr nz, jr_065_5653                               ; $5661: $20 $f0

	db $10                                           ; $5663: $10
	cp h                                             ; $5664: $bc
	inc c                                            ; $5665: $0c
	sbc a                                            ; $5666: $9f
	add hl, de                                       ; $5667: $19
	rst $38                                          ; $5668: $ff
	sbc c                                            ; $5669: $99
	rst FarCall                                          ; $566a: $f7
	db $dd                                           ; $566b: $dd
	ld [hl], a                                       ; $566c: $77
	db $dd                                           ; $566d: $dd
	ld [hl], e                                       ; $566e: $73
	rst AddAOntoHL                                          ; $566f: $ef
	dec sp                                           ; $5670: $3b
	ld a, h                                          ; $5671: $7c
	jr jr_065_560d                                   ; $5672: $18 $99

	ld [$bac1], sp                                   ; $5674: $08 $c1 $ba
	db $db                                           ; $5677: $db
	db $d3                                           ; $5678: $d3
	add e                                            ; $5679: $83
	ld hl, $4c29                                     ; $567a: $21 $29 $4c
	sbc h                                            ; $567d: $9c
	add e                                            ; $567e: $83
	ld [$080c], sp                                   ; $567f: $08 $0c $08
	ret                                              ; $5682: $c9


	rst $38                                          ; $5683: $ff
	sbc l                                            ; $5684: $9d
	rst FarCall                                          ; $5685: $f7
	ld a, $f3                                        ; $5686: $3e $f3
	rst $38                                          ; $5688: $ff
	pop de                                           ; $5689: $d1
	ld de, $fe10                                     ; $568a: $11 $10 $fe
	nop                                              ; $568d: $00
	cp e                                             ; $568e: $bb
	ld a, h                                          ; $568f: $7c
	db $fd                                           ; $5690: $fd
	cp $0e                                           ; $5691: $fe $0e
	rst GetHLinHL                                          ; $5693: $cf
	dec e                                            ; $5694: $1d
	ccf                                              ; $5695: $3f
	ld c, h                                          ; $5696: $4c
	ld a, h                                          ; $5697: $7c
	cp d                                             ; $5698: $ba
	inc a                                            ; $5699: $3c
	db $fc                                           ; $569a: $fc
	cp l                                             ; $569b: $bd
	ld hl, sp+$00                                    ; $569c: $f8 $00
	ccf                                              ; $569e: $3f
	rrca                                             ; $569f: $0f
	add b                                            ; $56a0: $80
	ld bc, $031f                                     ; $56a1: $01 $1f $03
	rra                                              ; $56a4: $1f
	rlca                                             ; $56a5: $07
	ccf                                              ; $56a6: $3f
	rrca                                             ; $56a7: $0f
	ld a, a                                          ; $56a8: $7f
	rra                                              ; $56a9: $1f
	rst $38                                          ; $56aa: $ff
	ld a, a                                          ; $56ab: $7f
	rst $38                                          ; $56ac: $ff
	rst SubAFromDE                                          ; $56ad: $df
	rst FarCall                                          ; $56ae: $f7
	ccf                                              ; $56af: $3f
	rst SubAFromBC                                          ; $56b0: $e7
	ld a, a                                          ; $56b1: $7f
	add a                                            ; $56b2: $87
	rst AddAOntoHL                                          ; $56b3: $ef
	inc bc                                           ; $56b4: $03
	adc a                                            ; $56b5: $8f
	inc bc                                           ; $56b6: $03
	rrca                                             ; $56b7: $0f
	inc bc                                           ; $56b8: $03
	rra                                              ; $56b9: $1f
	ld [bc], a                                       ; $56ba: $02
	ccf                                              ; $56bb: $3f
	inc b                                            ; $56bc: $04
	ccf                                              ; $56bd: $3f
	jr jr_065_573f                                   ; $56be: $18 $7f

	ld d, a                                          ; $56c0: $57
	ld h, b                                          ; $56c1: $60
	sbc c                                            ; $56c2: $99
	rst $38                                          ; $56c3: $ff
	nop                                              ; $56c4: $00
	cp a                                             ; $56c5: $bf
	ld a, [hl]                                       ; $56c6: $7e
	ld a, a                                          ; $56c7: $7f
	rst $38                                          ; $56c8: $ff
	ld c, a                                          ; $56c9: $4f
	ld h, b                                          ; $56ca: $60
	ld d, a                                          ; $56cb: $57
	and b                                            ; $56cc: $a0
	ld a, a                                          ; $56cd: $7f
	ldh [$99], a                                     ; $56ce: $e0 $99
	db $fd                                           ; $56d0: $fd
	ld a, [hl]                                       ; $56d1: $7e
	cp $ff                                           ; $56d2: $fe $ff
	dec e                                            ; $56d4: $1d
	cp a                                             ; $56d5: $bf
	ld d, a                                          ; $56d6: $57
	and b                                            ; $56d7: $a0
	ld c, a                                          ; $56d8: $4f
	ret nz                                           ; $56d9: $c0

	ld a, a                                          ; $56da: $7f
	cp $99                                           ; $56db: $fe $99
	rst SubAFromDE                                          ; $56dd: $df
	ld a, $ff                                        ; $56de: $3e $ff
	ld a, a                                          ; $56e0: $7f
	add $df                                          ; $56e1: $c6 $df
	daa                                              ; $56e3: $27
	ret nz                                           ; $56e4: $c0

	ld a, a                                          ; $56e5: $7f
	cp $97                                           ; $56e6: $fe $97
	ei                                               ; $56e8: $fb
	ld a, h                                          ; $56e9: $7c
	rst $38                                          ; $56ea: $ff
	cp $0f                                           ; $56eb: $fe $0f
	cp a                                             ; $56ed: $bf
	cp d                                             ; $56ee: $ba
	ld a, h                                          ; $56ef: $7c
	ccf                                              ; $56f0: $3f
	ret nz                                           ; $56f1: $c0

	sbc l                                            ; $56f2: $9d
	ld sp, hl                                        ; $56f3: $f9
	rlca                                             ; $56f4: $07
	ld [hl], a                                       ; $56f5: $77
	ldh [$7f], a                                     ; $56f6: $e0 $7f
	cp $9a                                           ; $56f8: $fe $9a
	adc a                                            ; $56fa: $8f
	add c                                            ; $56fb: $81
	rst $38                                          ; $56fc: $ff
	ld a, a                                          ; $56fd: $7f
	db $fd                                           ; $56fe: $fd
	dec sp                                           ; $56ff: $3b
	ret nz                                           ; $5700: $c0

	sbc l                                            ; $5701: $9d
	ld a, $c0                                        ; $5702: $3e $c0
	ld l, a                                          ; $5704: $6f
	ldh [$99], a                                     ; $5705: $e0 $99
	sbc a                                            ; $5707: $9f
	add c                                            ; $5708: $81
	cp $fe                                           ; $5709: $fe $fe
	cp [hl]                                          ; $570b: $be
	ld a, $67                                        ; $570c: $3e $67
	ret nz                                           ; $570e: $c0

	rst $38                                          ; $570f: $ff
	sbc h                                            ; $5710: $9c
	ld a, $14                                        ; $5711: $3e $14
	ld b, $bd                                        ; $5713: $06 $bd
	inc c                                            ; $5715: $0c
	nop                                              ; $5716: $00
	nop                                              ; $5717: $00
	jp $c67f                                         ; $5718: $c3 $7f $c6


	adc [hl]                                         ; $571b: $8e
	ld h, a                                          ; $571c: $67
	ccf                                              ; $571d: $3f
	inc e                                            ; $571e: $1c
	rst GetHLinHL                                          ; $571f: $cf
	add b                                            ; $5720: $80
	ld a, a                                          ; $5721: $7f
	db $e3                                           ; $5722: $e3
	inc e                                            ; $5723: $1c
	ld a, [hl]                                       ; $5724: $7e
	inc e                                            ; $5725: $1c
	ld a, $14                                        ; $5726: $3e $14
	ld [hl], $2e                                     ; $5728: $36 $2e
	ld h, d                                          ; $572a: $62
	ld l, $63                                        ; $572b: $2e $63
	ld a, e                                          ; $572d: $7b
	ldh [$7f], a                                     ; $572e: $e0 $7f
	push af                                          ; $5730: $f5
	rst SubAFromDE                                          ; $5731: $df
	inc e                                            ; $5732: $1c
	rrca                                             ; $5733: $0f
	ldh [$df], a                                     ; $5734: $e0 $df
	ld a, $73                                        ; $5736: $3e $73
	sbc $37                                          ; $5738: $de $37
	ldh [$7b], a                                     ; $573a: $e0 $7b
	ldh [c], a                                       ; $573c: $e2
	sbc h                                            ; $573d: $9c
	ld [hl+], a                                      ; $573e: $22

jr_065_573f:
	ld a, $22                                        ; $573f: $3e $22
	sbc $1c                                          ; $5741: $de $1c
	dec hl                                           ; $5743: $2b
	ldh [$eb], a                                     ; $5744: $e0 $eb
	ld [bc], a                                       ; $5746: $02
	ld sp, hl                                        ; $5747: $f9
	db $dd                                           ; $5748: $dd
	ld bc, $029e                                     ; $5749: $01 $9e $02
	sbc $03                                          ; $574c: $de $03
	db $db                                           ; $574e: $db
	ld [bc], a                                       ; $574f: $02
	db $ed                                           ; $5750: $ed
	ld l, a                                          ; $5751: $6f
	sbc $77                                          ; $5752: $de $77
	cp $9d                                           ; $5754: $fe $9d
	dec b                                            ; $5756: $05
	ld b, $5f                                        ; $5757: $06 $5f
	cp $eb                                           ; $5759: $fe $eb
	rst SubAFromDE                                          ; $575b: $df
	rlca                                             ; $575c: $07
	rst SubAFromDE                                          ; $575d: $df
	rra                                              ; $575e: $1f
	rst $38                                          ; $575f: $ff
	rst SubAFromDE                                          ; $5760: $df
	inc bc                                           ; $5761: $03
	add a                                            ; $5762: $87
	dec c                                            ; $5763: $0d
	ld c, $36                                        ; $5764: $0e $36
	add hl, sp                                       ; $5766: $39
	ld e, c                                          ; $5767: $59
	ld h, a                                          ; $5768: $67
	and [hl]                                         ; $5769: $a6
	rst SubAFromDE                                          ; $576a: $df
	sbc e                                            ; $576b: $9b
	db $fc                                           ; $576c: $fc
	ld [hl], $f9                                     ; $576d: $36 $f9
	ld l, c                                          ; $576f: $69
	rst FarCall                                          ; $5770: $f7
	db $e3                                           ; $5771: $e3
	rst $38                                          ; $5772: $ff
	add $ff                                          ; $5773: $c6 $ff
	call $cdfe                                       ; $5775: $cd $fe $cd
	cp $98                                           ; $5778: $fe $98
	rst $38                                          ; $577a: $ff
	ld [hl], a                                       ; $577b: $77
	cp $9e                                           ; $577c: $fe $9e
	cp b                                             ; $577e: $b8
	ld a, e                                          ; $577f: $7b
	cp $96                                           ; $5780: $fe $96
	xor d                                            ; $5782: $aa
	rst AddAOntoHL                                          ; $5783: $ef
	ld l, d                                          ; $5784: $6a
	ld l, a                                          ; $5785: $6f
	ld l, d                                          ; $5786: $6a
	ld l, a                                          ; $5787: $6f
	ld a, [hl+]                                      ; $5788: $2a
	cpl                                              ; $5789: $2f
	dec bc                                           ; $578a: $0b
	sbc $0f                                          ; $578b: $de $0f
	rst SubAFromDE                                          ; $578d: $df
	dec b                                            ; $578e: $05
	pop bc                                           ; $578f: $c1
	ld bc, $01cf                                     ; $5790: $01 $cf $01
	rst SubAFromDE                                          ; $5793: $df
	rlca                                             ; $5794: $07
	adc c                                            ; $5795: $89
	jr @+$21                                         ; $5796: $18 $1f

	daa                                              ; $5798: $27
	jr c, jr_065_57fa                                ; $5799: $38 $5f

	ld h, b                                          ; $579b: $60
	adc a                                            ; $579c: $8f
	ldh a, [$b7]                                     ; $579d: $f0 $b7
	ret z                                            ; $579f: $c8

	ld a, e                                          ; $57a0: $7b
	add h                                            ; $57a1: $84
	ld a, l                                          ; $57a2: $7d
	add d                                            ; $57a3: $82
	cp $01                                           ; $57a4: $fe $01
	rst $38                                          ; $57a6: $ff
	nop                                              ; $57a7: $00
	db $fd                                           ; $57a8: $fd
	ld [bc], a                                       ; $57a9: $02
	cp $01                                           ; $57aa: $fe $01
	ld [hl], a                                       ; $57ac: $77
	ld hl, sp+$6f                                    ; $57ad: $f8 $6f
	cp $f1                                           ; $57af: $fe $f1
	rst SubAFromDE                                          ; $57b1: $df
	ld e, $80                                        ; $57b2: $1e $80
	dec c                                            ; $57b4: $0d
	rrca                                             ; $57b5: $0f
	ld a, [$f7fb]                                    ; $57b6: $fa $fb $f7
	adc a                                            ; $57b9: $8f
	dec e                                            ; $57ba: $1d

jr_065_57bb:
	db $e3                                           ; $57bb: $e3
	ldh [c], a                                       ; $57bc: $e2

jr_065_57bd:
	db $fd                                           ; $57bd: $fd
	db $fc                                           ; $57be: $fc
	rst $38                                          ; $57bf: $ff
	add b                                            ; $57c0: $80
	ld a, a                                          ; $57c1: $7f
	ld [hl], c                                       ; $57c2: $71
	ldh [$c6], a                                     ; $57c3: $e0 $c6
	add b                                            ; $57c5: $80
	adc c                                            ; $57c6: $89
	nop                                              ; $57c7: $00
	and e                                            ; $57c8: $a3
	ld b, c                                          ; $57c9: $41
	add $83                                          ; $57ca: $c6 $83
	ld c, h                                          ; $57cc: $4c
	add a                                            ; $57cd: $87

Call_065_57ce:
	sub l                                            ; $57ce: $95
	rrca                                             ; $57cf: $0f
	ld l, $1f                                        ; $57d0: $2e $1f
	ld e, c                                          ; $57d2: $59
	adc e                                            ; $57d3: $8b
	inc a                                            ; $57d4: $3c
	sub e                                            ; $57d5: $93
	ld a, b                                          ; $57d6: $78
	ld h, $f0                                        ; $57d7: $26 $f0
	jr nc, jr_065_57bb                               ; $57d9: $30 $e0

	jr nz, jr_065_57bd                               ; $57db: $20 $e0

	ld c, [hl]                                       ; $57dd: $4e
	ldh [rLYC], a                                    ; $57de: $e0 $45
	ld [$ef58], a                                    ; $57e0: $ea $58 $ef
	ld c, c                                          ; $57e3: $49
	rst $38                                          ; $57e4: $ff
	ld c, c                                          ; $57e5: $49
	rst $38                                          ; $57e6: $ff
	ld c, l                                          ; $57e7: $4d
	ld [hl], e                                       ; $57e8: $73
	cp $87                                           ; $57e9: $fe $87
	xor $ff                                          ; $57eb: $ee $ff
	db $ec                                           ; $57ed: $ec
	rst $38                                          ; $57ee: $ff
	db $fd                                           ; $57ef: $fd
	cp $fd                                           ; $57f0: $fe $fd
	ld a, [$f2fd]                                    ; $57f2: $fa $fd $f2
	db $dd                                           ; $57f5: $dd
	ldh a, [$dd]                                     ; $57f6: $f0 $dd
	ldh a, [$dc]                                     ; $57f8: $f0 $dc

jr_065_57fa:
	ldh a, [$de]                                     ; $57fa: $f0 $de
	ld hl, sp-$21                                    ; $57fc: $f8 $df
	cp $db                                           ; $57fe: $fe $db
	rst $38                                          ; $5800: $ff
	or a                                             ; $5801: $b7
	db $db                                           ; $5802: $db
	ld [hl], a                                       ; $5803: $77
	cp $92                                           ; $5804: $fe $92
	ld [hl], a                                       ; $5806: $77
	sbc e                                            ; $5807: $9b
	scf                                              ; $5808: $37
	sub e                                            ; $5809: $93
	scf                                              ; $580a: $37
	sub e                                            ; $580b: $93
	dec h                                            ; $580c: $25
	sub e                                            ; $580d: $93
	dec d                                            ; $580e: $15
	add e                                            ; $580f: $83
	dec d                                            ; $5810: $15
	add e                                            ; $5811: $83
	dec b                                            ; $5812: $05
	ld a, e                                          ; $5813: $7b
	cp $80                                           ; $5814: $fe $80
	rla                                              ; $5816: $17
	add c                                            ; $5817: $81
	inc hl                                           ; $5818: $23
	sub c                                            ; $5819: $91
	dec hl                                           ; $581a: $2b
	sub c                                            ; $581b: $91
	ld d, [hl]                                       ; $581c: $56
	xor c                                            ; $581d: $a9
	sbc d                                            ; $581e: $9a
	db $ed                                           ; $581f: $ed
	adc b                                            ; $5820: $88
	rst $38                                          ; $5821: $ff
	adc b                                            ; $5822: $88
	rst $38                                          ; $5823: $ff
	ld b, h                                          ; $5824: $44
	rst $38                                          ; $5825: $ff
	ld b, h                                          ; $5826: $44
	ld a, a                                          ; $5827: $7f
	ld b, h                                          ; $5828: $44
	ld a, a                                          ; $5829: $7f
	ld [hl+], a                                      ; $582a: $22
	ld a, a                                          ; $582b: $7f
	ld [hl+], a                                      ; $582c: $22
	ccf                                              ; $582d: $3f
	ld de, $993f                                     ; $582e: $11 $3f $99
	rrca                                             ; $5831: $0f
	ld c, h                                          ; $5832: $4c
	rlca                                             ; $5833: $07
	ld l, a                                          ; $5834: $6f
	sub h                                            ; $5835: $94
	inc bc                                           ; $5836: $03
	cp a                                             ; $5837: $bf
	ld hl, $15ff                                     ; $5838: $21 $ff $15
	ld a, [hl]                                       ; $583b: $7e
	inc c                                            ; $583c: $0c
	ld a, [hl]                                       ; $583d: $7e
	inc c                                            ; $583e: $0c
	ld a, $04                                        ; $583f: $3e $04
	di                                               ; $5841: $f3
	rst SubAFromDE                                          ; $5842: $df
	ld c, $8b                                        ; $5843: $0e $8b
	push af                                          ; $5845: $f5
	rst FarCall                                          ; $5846: $f7
	xor [hl]                                         ; $5847: $ae
	db $dd                                           ; $5848: $dd
	push de                                          ; $5849: $d5
	ld l, [hl]                                       ; $584a: $6e
	ld l, d                                          ; $584b: $6a
	or a                                             ; $584c: $b7
	dec [hl]                                         ; $584d: $35
	db $db                                           ; $584e: $db
	sub [hl]                                         ; $584f: $96
	jp hl                                            ; $5850: $e9


	ld d, h                                          ; $5851: $54
	db $eb                                           ; $5852: $eb
	ld bc, $feff                                     ; $5853: $01 $ff $fe
	rra                                              ; $5856: $1f
	ldh [$7f], a                                     ; $5857: $e0 $7f
	ld a, e                                          ; $5859: $7b
	ld e, b                                          ; $585a: $58
	sub [hl]                                         ; $585b: $96
	rst $38                                          ; $585c: $ff
	ld bc, $7fff                                     ; $585d: $01 $ff $7f
	cp $ee                                           ; $5860: $fe $ee
	add h                                            ; $5862: $84
	db $dd                                           ; $5863: $dd
	ld [$90e1], sp                                   ; $5864: $08 $e1 $90
	adc b                                            ; $5867: $88
	ld e, c                                          ; $5868: $59
	sub d                                            ; $5869: $92
	ld e, c                                          ; $586a: $59
	ld a, d                                          ; $586b: $7a
	sub c                                            ; $586c: $91
	ld e, h                                          ; $586d: $5c
	or e                                             ; $586e: $b3
	call c, $94b3                                    ; $586f: $dc $b3 $94
	ei                                               ; $5872: $fb
	sub c                                            ; $5873: $91
	rst $38                                          ; $5874: $ff
	sbc c                                            ; $5875: $99
	ld a, $ff                                        ; $5876: $3e $ff
	ldh [$d2], a                                     ; $5878: $e0 $d2
	sbc h                                            ; $587a: $9c
	sub e                                            ; $587b: $93
	rst $38                                          ; $587c: $ff
	ld c, e                                          ; $587d: $4b
	ld [hl], e                                       ; $587e: $73
	cp $9c                                           ; $587f: $fe $9c
	ld l, e                                          ; $5881: $6b
	rst $38                                          ; $5882: $ff
	ld l, a                                          ; $5883: $6f
	ld [hl], e                                       ; $5884: $73
	cp $7f                                           ; $5885: $fe $7f
	ld a, d                                          ; $5887: $7a
	ld a, a                                          ; $5888: $7f
	ld l, l                                          ; $5889: $6d
	sub e                                            ; $588a: $93
	rst $38                                          ; $588b: $ff
	db $fc                                           ; $588c: $fc
	rst SubAFromBC                                          ; $588d: $e7
	jp nz, $1e9f                                     ; $588e: $c2 $9f $1e

	adc e                                            ; $5891: $8b
	adc d                                            ; $5892: $8a
	rst SubAFromDE                                          ; $5893: $df
	sbc [hl]                                         ; $5894: $9e
	ld h, e                                          ; $5895: $63
	ld a, a                                          ; $5896: $7f
	di                                               ; $5897: $f3
	rst SubAFromDE                                          ; $5898: $df
	ld b, $df                                        ; $5899: $06 $df
	inc e                                            ; $589b: $1c
	sub d                                            ; $589c: $92
	or a                                             ; $589d: $b7
	xor a                                            ; $589e: $af
	ld l, b                                          ; $589f: $68
	rst SubAFromDE                                          ; $58a0: $df
	or e                                             ; $58a1: $b3
	ld e, h                                          ; $58a2: $5c
	ld b, $f9                                        ; $58a3: $06 $f9
	adc b                                            ; $58a5: $88
	rst FarCall                                          ; $58a6: $f7
	add c                                            ; $58a7: $81
	cp $ff                                           ; $58a8: $fe $ff
	ld a, d                                          ; $58aa: $7a
	ld a, l                                          ; $58ab: $7d
	sbc [hl]                                         ; $58ac: $9e
	rrca                                             ; $58ad: $0f
	ld a, e                                          ; $58ae: $7b
	ld b, h                                          ; $58af: $44
	sbc [hl]                                         ; $58b0: $9e
	inc bc                                           ; $58b1: $03
	sbc $ff                                          ; $58b2: $de $ff
	sbc d                                            ; $58b4: $9a
	ld l, l                                          ; $58b5: $6d
	nop                                              ; $58b6: $00
	ld l, [hl]                                       ; $58b7: $6e
	nop                                              ; $58b8: $00
	ld h, a                                          ; $58b9: $67
	ldh [$e0], a                                     ; $58ba: $e0 $e0
	sub b                                            ; $58bc: $90
	ld b, d                                          ; $58bd: $42
	dec h                                            ; $58be: $25
	ld d, l                                          ; $58bf: $55
	ld [hl+], a                                      ; $58c0: $22
	and l                                            ; $58c1: $a5
	ld [hl], d                                       ; $58c2: $72
	xor l                                            ; $58c3: $ad
	ld [hl], d                                       ; $58c4: $72
	and h                                            ; $58c5: $a4
	ld a, e                                          ; $58c6: $7b
	inc h                                            ; $58c7: $24
	ei                                               ; $58c8: $fb
	ld sp, $31ff                                     ; $58c9: $31 $ff $31
	inc bc                                           ; $58cc: $03
	ld b, b                                          ; $58cd: $40
	pop hl                                           ; $58ce: $e1
	sub c                                            ; $58cf: $91
	rst $38                                          ; $58d0: $ff
	jr nz, @+$01                                     ; $58d1: $20 $ff

	rst SubAFromDE                                          ; $58d3: $df
	ccf                                              ; $58d4: $3f
	ldh [$1f], a                                     ; $58d5: $e0 $1f
	rst $38                                          ; $58d7: $ff
	ret nz                                           ; $58d8: $c0

	rst $38                                          ; $58d9: $ff
	and b                                            ; $58da: $a0
	ld a, a                                          ; $58db: $7f
	rst SubAFromDE                                          ; $58dc: $df
	ccf                                              ; $58dd: $3f
	ld [hl], l                                       ; $58de: $75
	xor $98                                          ; $58df: $ee $98
	cp $00                                           ; $58e1: $fe $00
	sbc h                                            ; $58e3: $9c
	nop                                              ; $58e4: $00
	adc h                                            ; $58e5: $8c
	nop                                              ; $58e6: $00
	xor b                                            ; $58e7: $a8
	ld [hl], e                                       ; $58e8: $73
	cp $9e                                           ; $58e9: $fe $9e
	cp b                                             ; $58eb: $b8
	xor $df                                          ; $58ec: $ee $df
	ldh a, [$7f]                                     ; $58ee: $f0 $7f
	ld c, [hl]                                       ; $58f0: $4e
	ld a, a                                          ; $58f1: $7f
	db $fd                                           ; $58f2: $fd
	add a                                            ; $58f3: $87
	ccf                                              ; $58f4: $3f
	ret nz                                           ; $58f5: $c0

	ld hl, sp+$07                                    ; $58f6: $f8 $07
	cp $01                                           ; $58f8: $fe $01
	sbc d                                            ; $58fa: $9a
	rst SubAFromBC                                          ; $58fb: $e7
	ld a, a                                          ; $58fc: $7f
	pop hl                                           ; $58fd: $e1
	rst $38                                          ; $58fe: $ff

Call_065_58ff:
	ld hl, sp-$01                                    ; $58ff: $f8 $ff
	adc [hl]                                         ; $5901: $8e
	adc l                                            ; $5902: $8d
	rlca                                             ; $5903: $07
	call nz, $e607                                   ; $5904: $c4 $07 $e6
	add e                                            ; $5907: $83
	db $e3                                           ; $5908: $e3
	ld b, e                                          ; $5909: $43
	ld [hl], e                                       ; $590a: $73
	ld b, c                                          ; $590b: $41
	pop hl                                           ; $590c: $e1
	sub b                                            ; $590d: $90
	ld [hl], e                                       ; $590e: $73
	ld hl, $b16b                                     ; $590f: $21 $6b $b1
	jp c, $f5b1                                      ; $5912: $da $b1 $f5

	ld e, b                                          ; $5915: $58
	push af                                          ; $5916: $f5
	ld e, b                                          ; $5917: $58
	bit 7, h                                         ; $5918: $cb $7c
	add hl, hl                                       ; $591a: $29
	cp $24                                           ; $591b: $fe $24
	inc bc                                           ; $591d: $03
	ld b, b                                          ; $591e: $40
	pop hl                                           ; $591f: $e1
	sbc d                                            ; $5920: $9a
	push bc                                          ; $5921: $c5
	rst $38                                          ; $5922: $ff
	push bc                                          ; $5923: $c5
	rst $38                                          ; $5924: $ff
	call nz, $fe73                                   ; $5925: $c4 $73 $fe
	adc c                                            ; $5928: $89
	db $e4                                           ; $5929: $e4
	rst $38                                          ; $592a: $ff
	ldh [c], a                                       ; $592b: $e2
	ld a, a                                          ; $592c: $7f
	ldh a, [c]                                       ; $592d: $f2
	ccf                                              ; $592e: $3f
	ccf                                              ; $592f: $3f
	rra                                              ; $5930: $1f
	rra                                              ; $5931: $1f
	rlca                                             ; $5932: $07
	rlca                                             ; $5933: $07
	ld [bc], a                                       ; $5934: $02
	rlca                                             ; $5935: $07
	inc bc                                           ; $5936: $03
	ccf                                              ; $5937: $3f
	ld a, $3f                                        ; $5938: $3e $3f
	inc hl                                           ; $593a: $23
	inc a                                            ; $593b: $3c
	daa                                              ; $593c: $27
	jr c, jr_065_596e                                ; $593d: $38 $2f

	db $eb                                           ; $593f: $eb
	rst SubAFromDE                                          ; $5940: $df
	ret nz                                           ; $5941: $c0

	add b                                            ; $5942: $80
	or b                                             ; $5943: $b0
	ld [hl], b                                       ; $5944: $70
	ld l, b                                          ; $5945: $68
	sbc b                                            ; $5946: $98
	call nc, $3aec                                   ; $5947: $d4 $ec $3a
	or $ad                                           ; $594a: $f6 $ad
	rst SubAFromDE                                          ; $594c: $df
	ld d, [hl]                                       ; $594d: $56
	rst AddAOntoHL                                          ; $594e: $ef
	xor e                                            ; $594f: $ab
	ld [hl], a                                       ; $5950: $77
	ld d, l                                          ; $5951: $55
	cp e                                             ; $5952: $bb
	xor e                                            ; $5953: $ab
	db $dd                                           ; $5954: $dd
	sub $ed                                          ; $5955: $d6 $ed
	db $f4                                           ; $5957: $f4
	rst AddAOntoHL                                          ; $5958: $ef
	ld [hl+], a                                      ; $5959: $22
	rst $38                                          ; $595a: $ff
	ld d, d                                          ; $595b: $52
	cp a                                             ; $595c: $bf
	ld [hl], d                                       ; $595d: $72
	sbc a                                            ; $595e: $9f
	jp hl                                            ; $595f: $e9


	sbc a                                            ; $5960: $9f
	cp c                                             ; $5961: $b9
	sub l                                            ; $5962: $95
	rst GetHLinHL                                          ; $5963: $cf
	ld [hl], l                                       ; $5964: $75
	rst GetHLinHL                                          ; $5965: $cf
	ld d, l                                          ; $5966: $55
	rst AddAOntoHL                                          ; $5967: $ef
	inc l                                            ; $5968: $2c
	rst FarCall                                          ; $5969: $f7
	ld [hl+], a                                      ; $596a: $22
	rst $38                                          ; $596b: $ff
	ld [de], a                                       ; $596c: $12
	ld a, e                                          ; $596d: $7b

jr_065_596e:
	cp $80                                           ; $596e: $fe $80
	adc d                                            ; $5970: $8a
	rst $38                                          ; $5971: $ff
	add $7f                                          ; $5972: $c6 $7f
	ldh [c], a                                       ; $5974: $e2
	ld a, a                                          ; $5975: $7f
	ld e, c                                          ; $5976: $59
	rst $38                                          ; $5977: $ff
	daa                                              ; $5978: $27
	rst $38                                          ; $5979: $ff
	and e                                            ; $597a: $a3
	ld a, a                                          ; $597b: $7f
	cp e                                             ; $597c: $bb
	ld e, a                                          ; $597d: $5f
	cp c                                             ; $597e: $b9
	ld c, a                                          ; $597f: $4f
	cp c                                             ; $5980: $b9
	rrca                                             ; $5981: $0f
	cp c                                             ; $5982: $b9
	rrca                                             ; $5983: $0f
	cp l                                             ; $5984: $bd
	rrca                                             ; $5985: $0f
	dec a                                            ; $5986: $3d
	rra                                              ; $5987: $1f
	ld a, l                                          ; $5988: $7d
	ccf                                              ; $5989: $3f
	push af                                          ; $598a: $f5
	ld a, a                                          ; $598b: $7f
	or l                                             ; $598c: $b5
	rst $38                                          ; $598d: $ff
	sub a                                            ; $598e: $97
	add b                                            ; $598f: $80
	db $fd                                           ; $5990: $fd
	dec de                                           ; $5991: $1b
	push af                                          ; $5992: $f5
	sub a                                            ; $5993: $97
	ld a, e                                          ; $5994: $7b
	rrca                                             ; $5995: $0f
	ld a, e                                          ; $5996: $7b
	ld c, a                                          ; $5997: $4f
	dec sp                                           ; $5998: $3b
	rra                                              ; $5999: $1f
	dec hl                                           ; $599a: $2b
	daa                                              ; $599b: $27
	dec bc                                           ; $599c: $0b
	rrca                                             ; $599d: $0f
	inc bc                                           ; $599e: $03
	rrca                                             ; $599f: $0f
	inc bc                                           ; $59a0: $03
	rlca                                             ; $59a1: $07
	dec bc                                           ; $59a2: $0b
	inc hl                                           ; $59a3: $23
	rrca                                             ; $59a4: $0f
	dec hl                                           ; $59a5: $2b
	rrca                                             ; $59a6: $0f
	ld e, e                                          ; $59a7: $5b
	cpl                                              ; $59a8: $2f
	dec de                                           ; $59a9: $1b
	ld l, a                                          ; $59aa: $6f
	sbc e                                            ; $59ab: $9b
	ld l, a                                          ; $59ac: $6f
	ld a, [bc]                                       ; $59ad: $0a
	rst $38                                          ; $59ae: $ff
	ld a, a                                          ; $59af: $7f
	cp $7f                                           ; $59b0: $fe $7f
	ret nz                                           ; $59b2: $c0

	sbc b                                            ; $59b3: $98
	adc l                                            ; $59b4: $8d
	cp $8d                                           ; $59b5: $fe $8d
	cp $9f                                           ; $59b7: $fe $9f
	db $fc                                           ; $59b9: $fc
	db $db                                           ; $59ba: $db
	ld a, e                                          ; $59bb: $7b
	cp $9e                                           ; $59bc: $fe $9e
	ei                                               ; $59be: $fb
	ld a, e                                          ; $59bf: $7b
	cp $94                                           ; $59c0: $fe $94
	dec de                                           ; $59c2: $1b
	inc c                                            ; $59c3: $0c
	cp a                                             ; $59c4: $bf
	inc e                                            ; $59c5: $1c
	rrca                                             ; $59c6: $0f
	inc b                                            ; $59c7: $04
	rst $38                                          ; $59c8: $ff
	db $fc                                           ; $59c9: $fc
	dec hl                                           ; $59ca: $2b
	cp $15                                           ; $59cb: $fe $15
	ld a, e                                          ; $59cd: $7b
	nop                                              ; $59ce: $00
	db $dd                                           ; $59cf: $dd
	add b                                            ; $59d0: $80
	db $db                                           ; $59d1: $db
	ret nz                                           ; $59d2: $c0

	rst SubAFromDE                                          ; $59d3: $df
	ldh [$9e], a                                     ; $59d4: $e0 $9e
	ld h, b                                          ; $59d6: $60
	ld [hl], e                                       ; $59d7: $73
	cp $7c                                           ; $59d8: $fe $7c
	and h                                            ; $59da: $a4
	ld l, a                                          ; $59db: $6f
	cp $9e                                           ; $59dc: $fe $9e
	and b                                            ; $59de: $a0
	ld b, e                                          ; $59df: $43
	cp $67                                           ; $59e0: $fe $67
	and $57                                          ; $59e2: $e6 $57
	cp $7f                                           ; $59e4: $fe $7f
	ret nc                                           ; $59e6: $d0

	sbc l                                            ; $59e7: $9d
	ld b, b                                          ; $59e8: $40
	ret nz                                           ; $59e9: $c0

	ld l, a                                          ; $59ea: $6f
	cp $dd                                           ; $59eb: $fe $dd
	ret nz                                           ; $59ed: $c0

	rst SubAFromHL                                          ; $59ee: $d7
	add b                                            ; $59ef: $80
	db $fd                                           ; $59f0: $fd
	rst SubAFromDE                                          ; $59f1: $df
	ld hl, sp-$62                                    ; $59f2: $f8 $9e
	rlca                                             ; $59f4: $07
	ld a, d                                          ; $59f5: $7a
	dec l                                            ; $59f6: $2d
	add e                                            ; $59f7: $83
	dec c                                            ; $59f8: $0d
	ldh a, [c]                                       ; $59f9: $f2
	dec sp                                           ; $59fa: $3b
	call nz, $8877                                   ; $59fb: $c4 $77 $88
	inc l                                            ; $59fe: $2c
	sub b                                            ; $59ff: $90
	xor h                                            ; $5a00: $ac
	db $10                                           ; $5a01: $10
	ld e, b                                          ; $5a02: $58
	jr nz, jr_065_5a55                               ; $5a03: $20 $50

	jr nz, jr_065_5a47                               ; $5a05: $20 $40

	jr nz, @+$22                                     ; $5a07: $20 $20

	ld b, c                                          ; $5a09: $41
	ld hl, $2242                                     ; $5a0a: $21 $42 $22
	ld b, h                                          ; $5a0d: $44
	inc h                                            ; $5a0e: $24
	ld c, b                                          ; $5a0f: $48
	inc h                                            ; $5a10: $24
	ld c, b                                          ; $5a11: $48
	jr z, jr_065_5a64                                ; $5a12: $28 $50

	halt                                             ; $5a14: $76
	db $f4                                           ; $5a15: $f4
	ld a, a                                          ; $5a16: $7f
	cp h                                             ; $5a17: $bc
	sub c                                            ; $5a18: $91
	db $10                                           ; $5a19: $10
	ldh a, [rAUD1SWEEP]                              ; $5a1a: $f0 $10
	ldh a, [$08]                                     ; $5a1c: $f0 $08
	ld hl, sp+$08                                    ; $5a1e: $f8 $08
	ld hl, sp-$7c                                    ; $5a20: $f8 $84
	ld a, h                                          ; $5a22: $7c
	add h                                            ; $5a23: $84
	ld a, h                                          ; $5a24: $7c
	call nz, Call_065_773c                           ; $5a25: $c4 $3c $77
	cp $77                                           ; $5a28: $fe $77
	or $9b                                           ; $5a2a: $f6 $9b
	adc b                                            ; $5a2c: $88
	ld a, b                                          ; $5a2d: $78
	ld [$1ef8], sp                                   ; $5a2e: $08 $f8 $1e
	nop                                              ; $5a31: $00
	sbc l                                            ; $5a32: $9d
	sbc c                                            ; $5a33: $99
	xor d                                            ; $5a34: $aa
	db $dd                                           ; $5a35: $dd
	sbc c                                            ; $5a36: $99
	ld a, a                                          ; $5a37: $7f
	ei                                               ; $5a38: $fb
	sub a                                            ; $5a39: $97
	ld de, $1100                                     ; $5a3a: $11 $00 $11
	inc sp                                           ; $5a3d: $33
	sbc c                                            ; $5a3e: $99
	ld h, c                                          ; $5a3f: $61
	sbc c                                            ; $5a40: $99
	sbc c                                            ; $5a41: $99
	ld [hl], e                                       ; $5a42: $73
	ei                                               ; $5a43: $fb
	sbc [hl]                                         ; $5a44: $9e
	ld d, l                                          ; $5a45: $55
	ld l, a                                          ; $5a46: $6f

jr_065_5a47:
	or $73                                           ; $5a47: $f6 $73
	db $ec                                           ; $5a49: $ec
	ld a, e                                          ; $5a4a: $7b
	ldh a, [c]                                       ; $5a4b: $f2
	sbc [hl]                                         ; $5a4c: $9e
	xor d                                            ; $5a4d: $aa
	ld de, $8401                                     ; $5a4e: $11 $01 $84
	sbc c                                            ; $5a51: $99
	rst FarCall                                          ; $5a52: $f7
	reti                                             ; $5a53: $d9


	ld a, a                                          ; $5a54: $7f

jr_065_5a55:
	push de                                          ; $5a55: $d5
	ld a, a                                          ; $5a56: $7f
	db $dd                                           ; $5a57: $dd
	ld a, a                                          ; $5a58: $7f
	rst $38                                          ; $5a59: $ff
	inc sp                                           ; $5a5a: $33
	ld bc, $feff                                     ; $5a5b: $01 $ff $fe
	ld bc, $1cef                                     ; $5a5e: $01 $ef $1c
	cp a                                             ; $5a61: $bf
	ld a, [hl]                                       ; $5a62: $7e
	db $e3                                           ; $5a63: $e3

jr_065_5a64:
	rst SubAFromBC                                          ; $5a64: $e7
	ld c, [hl]                                       ; $5a65: $4e
	sbc $d2                                          ; $5a66: $de $d2
	ld e, $6d                                        ; $5a68: $1e $6d
	ld e, $3f                                        ; $5a6a: $1e $3f
	cp [hl]                                          ; $5a6c: $be
	nop                                              ; $5a6d: $00
	db $fd                                           ; $5a6e: $fd
	ret nz                                           ; $5a6f: $c0

	adc l                                            ; $5a70: $8d
	add b                                            ; $5a71: $80
	ldh [$80], a                                     ; $5a72: $e0 $80
	ldh [$c0], a                                     ; $5a74: $e0 $c0
	ldh a, [$e0]                                     ; $5a76: $f0 $e0
	ld hl, sp-$10                                    ; $5a78: $f8 $f0
	xor [hl]                                         ; $5a7a: $ae
	db $fc                                           ; $5a7b: $fc
	xor a                                            ; $5a7c: $af
	rst $38                                          ; $5a7d: $ff
	and a                                            ; $5a7e: $a7
	rst $38                                          ; $5a7f: $ff
	sub a                                            ; $5a80: $97
	rst $38                                          ; $5a81: $ff
	sub e                                            ; $5a82: $93
	ld a, e                                          ; $5a83: $7b
	cp $9e                                           ; $5a84: $fe $9e
	ld c, c                                          ; $5a86: $49
	ld a, e                                          ; $5a87: $7b
	cp $9c                                           ; $5a88: $fe $9c
	dec h                                            ; $5a8a: $25
	rst $38                                          ; $5a8b: $ff
	and l                                            ; $5a8c: $a5
	ld a, e                                          ; $5a8d: $7b
	or $8a                                           ; $5a8e: $f6 $8a
	add hl, de                                       ; $5a90: $19
	rst $38                                          ; $5a91: $ff
	sbc c                                            ; $5a92: $99
	rst $38                                          ; $5a93: $ff
	sbc l                                            ; $5a94: $9d
	rst FarCall                                          ; $5a95: $f7
	db $dd                                           ; $5a96: $dd
	ld [hl], a                                       ; $5a97: $77
	rst AddAOntoHL                                          ; $5a98: $ef
	dec sp                                           ; $5a99: $3b
	rst $38                                          ; $5a9a: $ff
	add hl, de                                       ; $5a9b: $19
	ld a, [hl]                                       ; $5a9c: $7e
	adc c                                            ; $5a9d: $89
	nop                                              ; $5a9e: $00
	rst $38                                          ; $5a9f: $ff
	cp l                                             ; $5aa0: $bd
	ld a, [hl]                                       ; $5aa1: $7e
	rst $38                                          ; $5aa2: $ff
	ld b, d                                          ; $5aa3: $42
	and c                                            ; $5aa4: $a1
	cp l                                             ; $5aa5: $bd
	and c                                            ; $5aa6: $a1
	cp l                                             ; $5aa7: $bd
	ld a, [hl]                                       ; $5aa8: $7e
	rst $38                                          ; $5aa9: $ff
	add d                                            ; $5aaa: $82
	ld [$00e3], sp                                   ; $5aab: $08 $e3 $00
	or [hl]                                          ; $5aae: $b6
	rst $38                                          ; $5aaf: $ff
	or e                                             ; $5ab0: $b3
	ld a, a                                          ; $5ab1: $7f
	dec hl                                           ; $5ab2: $2b
	rst $38                                          ; $5ab3: $ff
	db $fd                                           ; $5ab4: $fd
	rst $38                                          ; $5ab5: $ff
	rst $38                                          ; $5ab6: $ff
	inc hl                                           ; $5ab7: $23
	nop                                              ; $5ab8: $00
	rst $38                                          ; $5ab9: $ff
	ld a, a                                          ; $5aba: $7f
	add b                                            ; $5abb: $80

jr_065_5abc:
	rst FarCall                                          ; $5abc: $f7
	jr c, jr_065_5abc                                ; $5abd: $38 $fd

	ld a, [hl]                                       ; $5abf: $7e
	rst JumpTable                                          ; $5ac0: $c7
	rst GetHLinHL                                          ; $5ac1: $cf
	sbc h                                            ; $5ac2: $9c
	dec a                                            ; $5ac3: $3d
	and l                                            ; $5ac4: $a5
	inc a                                            ; $5ac5: $3c
	ld e, e                                          ; $5ac6: $5b
	inc a                                            ; $5ac7: $3c
	ld [hl], a                                       ; $5ac8: $77
	and b                                            ; $5ac9: $a0
	sbc [hl]                                         ; $5aca: $9e
	sbc a                                            ; $5acb: $9f
	cp [hl]                                          ; $5acc: $be
	rrca                                             ; $5acd: $0f
	rrca                                             ; $5ace: $0f
	rrca                                             ; $5acf: $0f
	adc e                                            ; $5ad0: $8b
	ld bc, $030f                                     ; $5ad1: $01 $0f $03
	rra                                              ; $5ad4: $1f
	rlca                                             ; $5ad5: $07
	dec a                                            ; $5ad6: $3d
	rrca                                             ; $5ad7: $0f
	push af                                          ; $5ad8: $f5
	ccf                                              ; $5ad9: $3f
	push af                                          ; $5ada: $f5
	rst $38                                          ; $5adb: $ff
	push hl                                          ; $5adc: $e5
	rst $38                                          ; $5add: $ff
	jp hl                                            ; $5ade: $e9


	rst $38                                          ; $5adf: $ff
	db $eb                                           ; $5ae0: $eb
	ld a, a                                          ; $5ae1: $7f
	bit 7, a                                         ; $5ae2: $cb $7f
	db $d3                                           ; $5ae4: $d3
	ld a, e                                          ; $5ae5: $7b
	and h                                            ; $5ae6: $a4
	ld a, a                                          ; $5ae7: $7f
	sub d                                            ; $5ae8: $92
	ld a, a                                          ; $5ae9: $7f
	cp $4f                                           ; $5aea: $fe $4f
	ld h, b                                          ; $5aec: $60
	sub a                                            ; $5aed: $97
	rst $38                                          ; $5aee: $ff
	nop                                              ; $5aef: $00
	rst SubAFromDE                                          ; $5af0: $df
	inc a                                            ; $5af1: $3c
	and e                                            ; $5af2: $a3
	halt                                             ; $5af3: $76
	rst SubAFromDE                                          ; $5af4: $df
	rst $38                                          ; $5af5: $ff
	ld e, a                                          ; $5af6: $5f
	ld h, b                                          ; $5af7: $60
	ld c, a                                          ; $5af8: $4f
	and b                                            ; $5af9: $a0
	ld a, a                                          ; $5afa: $7f
	ldh [$99], a                                     ; $5afb: $e0 $99
	ei                                               ; $5afd: $fb
	inc a                                            ; $5afe: $3c
	rst JumpTable                                          ; $5aff: $c7
	ld l, [hl]                                       ; $5b00: $6e
	cp l                                             ; $5b01: $bd
	rst $38                                          ; $5b02: $ff
	ld e, a                                          ; $5b03: $5f
	and b                                            ; $5b04: $a0
	ld b, a                                          ; $5b05: $47
	ret nz                                           ; $5b06: $c0

	ld a, e                                          ; $5b07: $7b
	cp $9a                                           ; $5b08: $fe $9a
	ld a, $ff                                        ; $5b0a: $3e $ff
	ld a, a                                          ; $5b0c: $7f
	jp nz, $27d6                                     ; $5b0d: $c2 $d6 $27

	ret nz                                           ; $5b10: $c0

	ld a, e                                          ; $5b11: $7b
	cp $7f                                           ; $5b12: $fe $7f
	ld a, $9c                                        ; $5b14: $3e $9c
	rst $38                                          ; $5b16: $ff
	add l                                            ; $5b17: $85
	dec l                                            ; $5b18: $2d
	dec de                                           ; $5b19: $1b
	ret nz                                           ; $5b1a: $c0

	sbc c                                            ; $5b1b: $99
	nop                                              ; $5b1c: $00
	ccf                                              ; $5b1d: $3f
	ld bc, $fefe                                     ; $5b1e: $01 $fe $fe
	ld a, l                                          ; $5b21: $7d
	ld [hl], e                                       ; $5b22: $73
	ldh [$33], a                                     ; $5b23: $e0 $33
	ret nz                                           ; $5b25: $c0

	ld a, a                                          ; $5b26: $7f
	jp z, $f87f                                      ; $5b27: $ca $7f $f8

	rst SubAFromDE                                          ; $5b2a: $df
	ld a, a                                          ; $5b2b: $7f
	sbc [hl]                                         ; $5b2c: $9e
	ld a, $6f                                        ; $5b2d: $3e $6f
	ret nz                                           ; $5b2f: $c0

	rst $38                                          ; $5b30: $ff
	sbc h                                            ; $5b31: $9c
	inc e                                            ; $5b32: $1c
	ld [$bc04], sp                                   ; $5b33: $08 $04 $bc
	inc e                                            ; $5b36: $1c
	nop                                              ; $5b37: $00
	nop                                              ; $5b38: $00
	add b                                            ; $5b39: $80
	db $e3                                           ; $5b3a: $e3
	sbc c                                            ; $5b3b: $99
	ret nz                                           ; $5b3c: $c0

	rst $38                                          ; $5b3d: $ff
	inc sp                                           ; $5b3e: $33
	adc a                                            ; $5b3f: $8f
	ld c, $87                                        ; $5b40: $0e $87
	cp h                                             ; $5b42: $bc
	add e                                            ; $5b43: $83
	add e                                            ; $5b44: $83
	add e                                            ; $5b45: $83
	jp $9ee3                                         ; $5b46: $c3 $e3 $9e


	ret nz                                           ; $5b49: $c0

	ld a, e                                          ; $5b4a: $7b
	ldh [$9e], a                                     ; $5b4b: $e0 $9e
	inc e                                            ; $5b4d: $1c
	rrca                                             ; $5b4e: $0f
	ldh [$9b], a                                     ; $5b4f: $e0 $9b
	ld a, $1c                                        ; $5b51: $3e $1c
	ld a, $1c                                        ; $5b53: $3e $1c
	rlca                                             ; $5b55: $07
	ldh [$9a], a                                     ; $5b56: $e0 $9a
	ld e, $1c                                        ; $5b58: $1e $1c
	inc e                                            ; $5b5a: $1c
	ld [$3308], sp                                   ; $5b5b: $08 $08 $33
	ldh [rAUD1LOW], a                                ; $5b5e: $e0 $13
	ld bc, $9984                                     ; $5b60: $01 $84 $99
	rst FarCall                                          ; $5b63: $f7
	reti                                             ; $5b64: $d9


	ld a, a                                          ; $5b65: $7f
	push de                                          ; $5b66: $d5
	ld a, a                                          ; $5b67: $7f
	db $dd                                           ; $5b68: $dd
	ld a, a                                          ; $5b69: $7f
	rst $38                                          ; $5b6a: $ff
	inc sp                                           ; $5b6b: $33
	ld bc, $eeff                                     ; $5b6c: $01 $ff $ee
	dec e                                            ; $5b6f: $1d
	or e                                             ; $5b70: $b3
	ld [hl], d                                       ; $5b71: $72
	db $e3                                           ; $5b72: $e3
	rst SubAFromBC                                          ; $5b73: $e7
	sbc $7f                                          ; $5b74: $de $7f
	sub [hl]                                         ; $5b76: $96
	ld e, $d2                                        ; $5b77: $1e $d2
	ld e, $6d                                        ; $5b79: $1e $6d
	ld e, $3f                                        ; $5b7b: $1e $3f
	cp [hl]                                          ; $5b7d: $be
	nop                                              ; $5b7e: $00
	di                                               ; $5b7f: $f3
	ret nz                                           ; $5b80: $c0

	adc l                                            ; $5b81: $8d
	add b                                            ; $5b82: $80
	ldh [$80], a                                     ; $5b83: $e0 $80
	ldh [$c0], a                                     ; $5b85: $e0 $c0
	ldh a, [$e0]                                     ; $5b87: $f0 $e0
	ld hl, sp-$10                                    ; $5b89: $f8 $f0
	xor [hl]                                         ; $5b8b: $ae
	db $fc                                           ; $5b8c: $fc
	xor a                                            ; $5b8d: $af
	rst $38                                          ; $5b8e: $ff
	and a                                            ; $5b8f: $a7
	rst $38                                          ; $5b90: $ff
	sub a                                            ; $5b91: $97
	rst $38                                          ; $5b92: $ff
	sub e                                            ; $5b93: $93
	ld a, e                                          ; $5b94: $7b
	cp $9e                                           ; $5b95: $fe $9e
	ld c, c                                          ; $5b97: $49
	ld a, e                                          ; $5b98: $7b
	cp $9c                                           ; $5b99: $fe $9c
	dec h                                            ; $5b9b: $25
	rst $38                                          ; $5b9c: $ff
	and l                                            ; $5b9d: $a5
	ld a, e                                          ; $5b9e: $7b
	or $8a                                           ; $5b9f: $f6 $8a
	add hl, de                                       ; $5ba1: $19
	rst $38                                          ; $5ba2: $ff
	sbc c                                            ; $5ba3: $99
	rst $38                                          ; $5ba4: $ff
	sbc l                                            ; $5ba5: $9d
	rst FarCall                                          ; $5ba6: $f7
	db $dd                                           ; $5ba7: $dd
	ld [hl], a                                       ; $5ba8: $77
	rst AddAOntoHL                                          ; $5ba9: $ef
	dec sp                                           ; $5baa: $3b
	rst $38                                          ; $5bab: $ff
	add hl, de                                       ; $5bac: $19
	ld a, [hl]                                       ; $5bad: $7e
	adc c                                            ; $5bae: $89
	nop                                              ; $5baf: $00
	rst $38                                          ; $5bb0: $ff
	cp l                                             ; $5bb1: $bd
	ld a, [hl]                                       ; $5bb2: $7e
	rst SubAFromBC                                          ; $5bb3: $e7
	ld b, d                                          ; $5bb4: $42
	and c                                            ; $5bb5: $a1
	cp l                                             ; $5bb6: $bd
	and c                                            ; $5bb7: $a1
	xor c                                            ; $5bb8: $a9
	ld c, h                                          ; $5bb9: $4c
	sbc [hl]                                         ; $5bba: $9e
	add d                                            ; $5bbb: $82
	ld [rRAMG], sp                                   ; $5bbc: $08 $00 $00
	or [hl]                                          ; $5bbf: $b6
	rst $38                                          ; $5bc0: $ff
	or e                                             ; $5bc1: $b3
	ld a, a                                          ; $5bc2: $7f
	dec hl                                           ; $5bc3: $2b
	rst $38                                          ; $5bc4: $ff
	db $fd                                           ; $5bc5: $fd
	rst $38                                          ; $5bc6: $ff
	rst $38                                          ; $5bc7: $ff
	inc hl                                           ; $5bc8: $23
	nop                                              ; $5bc9: $00
	rst $38                                          ; $5bca: $ff
	ld [hl], a                                       ; $5bcb: $77
	cp b                                             ; $5bcc: $b8
	push hl                                          ; $5bcd: $e5
	ld h, [hl]                                       ; $5bce: $66
	rst JumpTable                                          ; $5bcf: $c7
	rst GetHLinHL                                          ; $5bd0: $cf
	cp l                                             ; $5bd1: $bd
	ld a, a                                          ; $5bd2: $7f
	xor h                                            ; $5bd3: $ac
	inc a                                            ; $5bd4: $3c
	and l                                            ; $5bd5: $a5
	inc a                                            ; $5bd6: $3c
	ld e, e                                          ; $5bd7: $5b
	inc a                                            ; $5bd8: $3c
	ld [hl], a                                       ; $5bd9: $77
	and b                                            ; $5bda: $a0
	sbc [hl]                                         ; $5bdb: $9e
	rra                                              ; $5bdc: $1f
	cp [hl]                                          ; $5bdd: $be
	rrca                                             ; $5bde: $0f
	rrca                                             ; $5bdf: $0f
	rrca                                             ; $5be0: $0f
	adc e                                            ; $5be1: $8b
	ld bc, $030f                                     ; $5be2: $01 $0f $03
	rra                                              ; $5be5: $1f
	rlca                                             ; $5be6: $07
	dec a                                            ; $5be7: $3d
	rrca                                             ; $5be8: $0f
	push af                                          ; $5be9: $f5
	ccf                                              ; $5bea: $3f
	push af                                          ; $5beb: $f5
	rst $38                                          ; $5bec: $ff
	push hl                                          ; $5bed: $e5
	rst $38                                          ; $5bee: $ff
	jp hl                                            ; $5bef: $e9


	rst $38                                          ; $5bf0: $ff
	db $eb                                           ; $5bf1: $eb
	ld a, a                                          ; $5bf2: $7f
	bit 7, a                                         ; $5bf3: $cb $7f
	db $d3                                           ; $5bf5: $d3
	ld a, e                                          ; $5bf6: $7b
	and h                                            ; $5bf7: $a4
	ld a, a                                          ; $5bf8: $7f
	sub d                                            ; $5bf9: $92
	ld a, a                                          ; $5bfa: $7f
	cp $57                                           ; $5bfb: $fe $57
	ld h, b                                          ; $5bfd: $60
	sub l                                            ; $5bfe: $95
	cp $01                                           ; $5bff: $fe $01
	rst $38                                          ; $5c01: $ff
	inc e                                            ; $5c02: $1c
	db $e3                                           ; $5c03: $e3
	ld [hl-], a                                      ; $5c04: $32
	rst SubAFromBC                                          ; $5c05: $e7
	rst AddAOntoHL                                          ; $5c06: $ef
	sbc $7e                                          ; $5c07: $de $7e
	ld e, a                                          ; $5c09: $5f
	ld h, b                                          ; $5c0a: $60
	ld d, a                                          ; $5c0b: $57
	and b                                            ; $5c0c: $a0
	sub l                                            ; $5c0d: $95
	ld a, a                                          ; $5c0e: $7f
	add b                                            ; $5c0f: $80
	rst $38                                          ; $5c10: $ff
	inc a                                            ; $5c11: $3c
	rst JumpTable                                          ; $5c12: $c7
	ld h, [hl]                                       ; $5c13: $66
	rst GetHLinHL                                          ; $5c14: $cf
	rst SubAFromDE                                          ; $5c15: $df
	cp l                                             ; $5c16: $bd
	ccf                                              ; $5c17: $3f
	ld e, a                                          ; $5c18: $5f
	and b                                            ; $5c19: $a0
	ld c, e                                          ; $5c1a: $4b
	ret nz                                           ; $5c1b: $c0

	ld a, a                                          ; $5c1c: $7f
	db $db                                           ; $5c1d: $db
	sbc d                                            ; $5c1e: $9a
	inc a                                            ; $5c1f: $3c
	rst SubAFromBC                                          ; $5c20: $e7
	ld l, [hl]                                       ; $5c21: $6e
	rst SubAFromDE                                          ; $5c22: $df
	rst $38                                          ; $5c23: $ff
	inc hl                                           ; $5c24: $23
	ret nz                                           ; $5c25: $c0

	ld a, e                                          ; $5c26: $7b
	ldh [$9b], a                                     ; $5c27: $e0 $9b
	rst GetHLinHL                                          ; $5c29: $cf
	ld e, [hl]                                       ; $5c2a: $5e
	cp l                                             ; $5c2b: $bd
	rst $38                                          ; $5c2c: $ff
	dec de                                           ; $5c2d: $1b
	ret nz                                           ; $5c2e: $c0

	cp a                                             ; $5c2f: $bf
	rst $38                                          ; $5c30: $ff
	rst GetHLinHL                                          ; $5c31: $cf
	sbc d                                            ; $5c32: $9a
	pop bc                                           ; $5c33: $c1
	rst $38                                          ; $5c34: $ff
	ccf                                              ; $5c35: $3f
	ld a, a                                          ; $5c36: $7f
	ld a, $2b                                        ; $5c37: $3e $2b
	ret nz                                           ; $5c39: $c0

	ld l, a                                          ; $5c3a: $6f
	ldh [$9e], a                                     ; $5c3b: $e0 $9e
	ld a, [hl]                                       ; $5c3d: $7e
	ld l, a                                          ; $5c3e: $6f
	ldh [$7f], a                                     ; $5c3f: $e0 $7f
	ret nz                                           ; $5c41: $c0

	sbc b                                            ; $5c42: $98
	ld [hl+], a                                      ; $5c43: $22
	nop                                              ; $5c44: $00
	ld a, $14                                        ; $5c45: $3e $14
	inc c                                            ; $5c47: $0c
	ld [$bd1c], sp                                   ; $5c48: $08 $1c $bd
	nop                                              ; $5c4b: $00
	nop                                              ; $5c4c: $00
	add b                                            ; $5c4d: $80
	db $e3                                           ; $5c4e: $e3
	sbc c                                            ; $5c4f: $99
	ret nz                                           ; $5c50: $c0

	rst $38                                          ; $5c51: $ff
	inc sp                                           ; $5c52: $33
	adc a                                            ; $5c53: $8f
	ld c, $87                                        ; $5c54: $0e $87
	cp h                                             ; $5c56: $bc
	add e                                            ; $5c57: $83
	add e                                            ; $5c58: $83
	add e                                            ; $5c59: $83
	jp $9ee3                                         ; $5c5a: $c3 $e3 $9e


	ret nz                                           ; $5c5d: $c0

	ld a, e                                          ; $5c5e: $7b
	ldh [$dd], a                                     ; $5c5f: $e0 $dd
	inc e                                            ; $5c61: $1c
	ld a, d                                          ; $5c62: $7a
	sub $23                                          ; $5c63: $d6 $23
	ldh [rPCM34], a                                  ; $5c65: $e0 $77
	rst SubAFromDE                                          ; $5c67: $df
	rla                                              ; $5c68: $17
	ldh [$9e], a                                     ; $5c69: $e0 $9e
	ld [hl], $77                                     ; $5c6b: $36 $77
	sbc $df                                          ; $5c6d: $de $df
	ld [$e02f], sp                                   ; $5c6f: $08 $2f $e0
	rla                                              ; $5c72: $17
	ld bc, $9984                                     ; $5c73: $01 $84 $99
	rst FarCall                                          ; $5c76: $f7
	reti                                             ; $5c77: $d9


	ld a, a                                          ; $5c78: $7f
	push de                                          ; $5c79: $d5
	ld a, a                                          ; $5c7a: $7f
	db $dd                                           ; $5c7b: $dd
	ld a, a                                          ; $5c7c: $7f
	rst $38                                          ; $5c7d: $ff
	inc sp                                           ; $5c7e: $33
	ld bc, $feff                                     ; $5c7f: $01 $ff $fe
	ld bc, $1cff                                     ; $5c82: $01 $ff $1c
	db $e3                                           ; $5c85: $e3
	ld [hl-], a                                      ; $5c86: $32
	rst SubAFromBC                                          ; $5c87: $e7
	rst AddAOntoHL                                          ; $5c88: $ef
	sbc $7e                                          ; $5c89: $de $7e
	jp nc, Jump_065_6d1e                             ; $5c8b: $d2 $1e $6d

	ld e, $3f                                        ; $5c8e: $1e $3f
	cp [hl]                                          ; $5c90: $be
	nop                                              ; $5c91: $00
	cp $c0                                           ; $5c92: $fe $c0
	adc l                                            ; $5c94: $8d
	add b                                            ; $5c95: $80
	ldh [$80], a                                     ; $5c96: $e0 $80
	ldh [$c0], a                                     ; $5c98: $e0 $c0
	ldh a, [$e0]                                     ; $5c9a: $f0 $e0
	ld hl, sp-$10                                    ; $5c9c: $f8 $f0
	xor [hl]                                         ; $5c9e: $ae
	db $fc                                           ; $5c9f: $fc
	xor a                                            ; $5ca0: $af
	rst $38                                          ; $5ca1: $ff
	and a                                            ; $5ca2: $a7
	rst $38                                          ; $5ca3: $ff
	sub a                                            ; $5ca4: $97
	rst $38                                          ; $5ca5: $ff
	sub e                                            ; $5ca6: $93
	ld a, e                                          ; $5ca7: $7b
	cp $9e                                           ; $5ca8: $fe $9e
	ld c, c                                          ; $5caa: $49
	ld a, e                                          ; $5cab: $7b
	cp $9c                                           ; $5cac: $fe $9c
	dec h                                            ; $5cae: $25
	rst $38                                          ; $5caf: $ff
	and l                                            ; $5cb0: $a5
	ld a, e                                          ; $5cb1: $7b
	or $8a                                           ; $5cb2: $f6 $8a
	add hl, de                                       ; $5cb4: $19
	rst $38                                          ; $5cb5: $ff
	sbc c                                            ; $5cb6: $99
	rst $38                                          ; $5cb7: $ff
	sbc l                                            ; $5cb8: $9d
	rst FarCall                                          ; $5cb9: $f7
	db $dd                                           ; $5cba: $dd
	ld [hl], a                                       ; $5cbb: $77
	rst AddAOntoHL                                          ; $5cbc: $ef
	dec sp                                           ; $5cbd: $3b
	rst $38                                          ; $5cbe: $ff
	add hl, de                                       ; $5cbf: $19
	ld a, [hl]                                       ; $5cc0: $7e
	adc c                                            ; $5cc1: $89
	nop                                              ; $5cc2: $00
	rst $38                                          ; $5cc3: $ff
	cp l                                             ; $5cc4: $bd
	ld a, [hl]                                       ; $5cc5: $7e
	rst SubAFromBC                                          ; $5cc6: $e7
	ld b, d                                          ; $5cc7: $42
	and c                                            ; $5cc8: $a1
	cp l                                             ; $5cc9: $bd
	and c                                            ; $5cca: $a1
	xor c                                            ; $5ccb: $a9
	ld c, h                                          ; $5ccc: $4c
	sbc [hl]                                         ; $5ccd: $9e
	add d                                            ; $5cce: $82
	ld [rRAMG], sp                                   ; $5ccf: $08 $00 $00
	or [hl]                                          ; $5cd2: $b6
	rst $38                                          ; $5cd3: $ff
	or e                                             ; $5cd4: $b3
	ld a, a                                          ; $5cd5: $7f
	dec hl                                           ; $5cd6: $2b
	rst $38                                          ; $5cd7: $ff
	db $fd                                           ; $5cd8: $fd
	rst $38                                          ; $5cd9: $ff
	rst $38                                          ; $5cda: $ff
	inc hl                                           ; $5cdb: $23
	nop                                              ; $5cdc: $00
	rst $38                                          ; $5cdd: $ff
	ld a, a                                          ; $5cde: $7f
	add b                                            ; $5cdf: $80
	rst $38                                          ; $5ce0: $ff
	inc a                                            ; $5ce1: $3c
	rst JumpTable                                          ; $5ce2: $c7
	ld h, [hl]                                       ; $5ce3: $66
	rst GetHLinHL                                          ; $5ce4: $cf
	rst SubAFromDE                                          ; $5ce5: $df
	cp l                                             ; $5ce6: $bd

Call_065_5ce7:
	ccf                                              ; $5ce7: $3f
	and l                                            ; $5ce8: $a5
	inc a                                            ; $5ce9: $3c
	ld e, e                                          ; $5cea: $5b
	inc a                                            ; $5ceb: $3c
	ld [hl], a                                       ; $5cec: $77
	and b                                            ; $5ced: $a0
	sbc [hl]                                         ; $5cee: $9e
	rra                                              ; $5cef: $1f
	cp [hl]                                          ; $5cf0: $be
	rrca                                             ; $5cf1: $0f
	rrca                                             ; $5cf2: $0f
	rrca                                             ; $5cf3: $0f
	adc e                                            ; $5cf4: $8b
	ld bc, $030f                                     ; $5cf5: $01 $0f $03
	rra                                              ; $5cf8: $1f
	rlca                                             ; $5cf9: $07
	dec a                                            ; $5cfa: $3d
	rrca                                             ; $5cfb: $0f
	push af                                          ; $5cfc: $f5
	ccf                                              ; $5cfd: $3f
	push af                                          ; $5cfe: $f5
	rst $38                                          ; $5cff: $ff
	push hl                                          ; $5d00: $e5
	rst $38                                          ; $5d01: $ff
	jp hl                                            ; $5d02: $e9


	rst $38                                          ; $5d03: $ff
	db $eb                                           ; $5d04: $eb
	ld a, a                                          ; $5d05: $7f
	bit 7, a                                         ; $5d06: $cb $7f
	db $d3                                           ; $5d08: $d3
	ld a, e                                          ; $5d09: $7b
	and h                                            ; $5d0a: $a4
	ld a, a                                          ; $5d0b: $7f
	sub d                                            ; $5d0c: $92
	ld a, a                                          ; $5d0d: $7f
	cp $4b                                           ; $5d0e: $fe $4b
	ld h, b                                          ; $5d10: $60
	ld a, a                                          ; $5d11: $7f
	cp e                                             ; $5d12: $bb
	sbc d                                            ; $5d13: $9a
	inc a                                            ; $5d14: $3c
	rst SubAFromBC                                          ; $5d15: $e7
	ld l, [hl]                                       ; $5d16: $6e
	rst SubAFromDE                                          ; $5d17: $df
	rst $38                                          ; $5d18: $ff
	ld e, a                                          ; $5d19: $5f
	ld h, b                                          ; $5d1a: $60
	ld c, e                                          ; $5d1b: $4b
	and b                                            ; $5d1c: $a0
	ld a, e                                          ; $5d1d: $7b
	ldh [$9b], a                                     ; $5d1e: $e0 $9b
	rst GetHLinHL                                          ; $5d20: $cf
	ld e, [hl]                                       ; $5d21: $5e
	cp l                                             ; $5d22: $bd
	rst $38                                          ; $5d23: $ff
	ld e, a                                          ; $5d24: $5f
	and b                                            ; $5d25: $a0
	ld b, e                                          ; $5d26: $43
	ret nz                                           ; $5d27: $c0

	ld a, a                                          ; $5d28: $7f
	cp $9a                                           ; $5d29: $fe $9a
	ld a, $e7                                        ; $5d2b: $3e $e7
	ld l, a                                          ; $5d2d: $6f
	jp c, $23fe                                      ; $5d2e: $da $fe $23

	ret nz                                           ; $5d31: $c0

	ld a, a                                          ; $5d32: $7f
	cp $9a                                           ; $5d33: $fe $9a
	ld a, h                                          ; $5d35: $7c
	adc a                                            ; $5d36: $8f
	sbc $b5                                          ; $5d37: $de $b5
	ccf                                              ; $5d39: $3f
	dec de                                           ; $5d3a: $1b
	ret nz                                           ; $5d3b: $c0

	sbc b                                            ; $5d3c: $98
	nop                                              ; $5d3d: $00
	ccf                                              ; $5d3e: $3f
	inc bc                                           ; $5d3f: $03
	rst $38                                          ; $5d40: $ff
	rst $38                                          ; $5d41: $ff
	ld a, a                                          ; $5d42: $7f
	ld a, [hl]                                       ; $5d43: $7e
	inc hl                                           ; $5d44: $23
	ret nz                                           ; $5d45: $c0

	sbc b                                            ; $5d46: $98
	nop                                              ; $5d47: $00
	rst JumpTable                                          ; $5d48: $c7
	ret nz                                           ; $5d49: $c0

	rst $38                                          ; $5d4a: $ff
	ld a, a                                          ; $5d4b: $7f
	ld a, a                                          ; $5d4c: $7f
	ld a, $6f                                        ; $5d4d: $3e $6f
	ret nz                                           ; $5d4f: $c0

	sbc d                                            ; $5d50: $9a
	ld [hl+], a                                      ; $5d51: $22
	nop                                              ; $5d52: $00
	ld a, $14                                        ; $5d53: $3e $14
	inc b                                            ; $5d55: $04
	cp h                                             ; $5d56: $bc
	inc e                                            ; $5d57: $1c
	nop                                              ; $5d58: $00
	nop                                              ; $5d59: $00
	add b                                            ; $5d5a: $80
	db $e3                                           ; $5d5b: $e3
	ld a, a                                          ; $5d5c: $7f
	and $9b                                          ; $5d5d: $e6 $9b
	inc sp                                           ; $5d5f: $33
	adc a                                            ; $5d60: $8f
	ld c, $87                                        ; $5d61: $0e $87
	cp h                                             ; $5d63: $bc
	add e                                            ; $5d64: $83
	add e                                            ; $5d65: $83
	add e                                            ; $5d66: $83
	jp $9ee3                                         ; $5d67: $c3 $e3 $9e


	ret nz                                           ; $5d6a: $c0

	ld a, e                                          ; $5d6b: $7b
	ldh [$9e], a                                     ; $5d6c: $e0 $9e
	ld [hl], $de                                     ; $5d6e: $36 $de
	inc e                                            ; $5d70: $1c
	rla                                              ; $5d71: $17
	ldh [$9e], a                                     ; $5d72: $e0 $9e
	ld [hl-], a                                      ; $5d74: $32
	sbc $1c                                          ; $5d75: $de $1c
	ld a, d                                          ; $5d77: $7a
	or [hl]                                          ; $5d78: $b6
	cpl                                              ; $5d79: $2f
	ldh [hDisp1_WX], a                                     ; $5d7a: $e0 $96
	ld [hl], $14                                     ; $5d7c: $36 $14
	ld a, $22                                        ; $5d7e: $3e $22
	ld a, $22                                        ; $5d80: $3e $22
	inc e                                            ; $5d82: $1c
	inc d                                            ; $5d83: $14
	ld [$de7b], sp                                   ; $5d84: $08 $7b $de
	scf                                              ; $5d87: $37
	ldh [$0c], a                                     ; $5d88: $e0 $0c
	ld bc, $9984                                     ; $5d8a: $01 $84 $99
	rst FarCall                                          ; $5d8d: $f7
	reti                                             ; $5d8e: $d9


	ld a, a                                          ; $5d8f: $7f
	push de                                          ; $5d90: $d5
	ld a, a                                          ; $5d91: $7f
	db $dd                                           ; $5d92: $dd
	ld a, a                                          ; $5d93: $7f
	rst $38                                          ; $5d94: $ff
	inc sp                                           ; $5d95: $33
	ld bc, $feff                                     ; $5d96: $01 $ff $fe
	ld bc, $1cff                                     ; $5d99: $01 $ff $1c
	cp a                                             ; $5d9c: $bf
	ld a, [hl]                                       ; $5d9d: $7e
	rst SubAFromBC                                          ; $5d9e: $e7
	rst AddAOntoHL                                          ; $5d9f: $ef
	sbc $7e                                          ; $5da0: $de $7e
	jp nc, Jump_065_6d1e                             ; $5da2: $d2 $1e $6d

	ld e, $3f                                        ; $5da5: $1e $3f
	cp [hl]                                          ; $5da7: $be
	nop                                              ; $5da8: $00
	cp $c0                                           ; $5da9: $fe $c0
	adc l                                            ; $5dab: $8d
	add b                                            ; $5dac: $80
	ldh [$80], a                                     ; $5dad: $e0 $80
	ldh [$c0], a                                     ; $5daf: $e0 $c0
	ldh a, [$e0]                                     ; $5db1: $f0 $e0
	ld hl, sp-$10                                    ; $5db3: $f8 $f0
	xor [hl]                                         ; $5db5: $ae
	db $fc                                           ; $5db6: $fc
	xor a                                            ; $5db7: $af
	rst $38                                          ; $5db8: $ff
	and a                                            ; $5db9: $a7
	rst $38                                          ; $5dba: $ff
	sub a                                            ; $5dbb: $97
	rst $38                                          ; $5dbc: $ff
	sub e                                            ; $5dbd: $93
	ld a, e                                          ; $5dbe: $7b
	cp $9e                                           ; $5dbf: $fe $9e
	ld c, c                                          ; $5dc1: $49
	ld a, e                                          ; $5dc2: $7b
	cp $9c                                           ; $5dc3: $fe $9c
	dec h                                            ; $5dc5: $25
	rst $38                                          ; $5dc6: $ff
	and l                                            ; $5dc7: $a5
	ld a, e                                          ; $5dc8: $7b
	or $8a                                           ; $5dc9: $f6 $8a
	add hl, de                                       ; $5dcb: $19
	rst $38                                          ; $5dcc: $ff
	sbc c                                            ; $5dcd: $99
	rst $38                                          ; $5dce: $ff
	sbc l                                            ; $5dcf: $9d
	rst FarCall                                          ; $5dd0: $f7
	db $dd                                           ; $5dd1: $dd
	ld [hl], a                                       ; $5dd2: $77
	rst AddAOntoHL                                          ; $5dd3: $ef
	dec sp                                           ; $5dd4: $3b
	rst $38                                          ; $5dd5: $ff
	add hl, de                                       ; $5dd6: $19
	ld a, [hl]                                       ; $5dd7: $7e
	adc c                                            ; $5dd8: $89
	nop                                              ; $5dd9: $00
	rst $38                                          ; $5dda: $ff
	cp l                                             ; $5ddb: $bd
	ld a, [hl]                                       ; $5ddc: $7e
	rst SubAFromBC                                          ; $5ddd: $e7
	ld b, d                                          ; $5dde: $42
	and c                                            ; $5ddf: $a1
	cp l                                             ; $5de0: $bd
	and c                                            ; $5de1: $a1
	xor c                                            ; $5de2: $a9
	ld c, h                                          ; $5de3: $4c
	sbc [hl]                                         ; $5de4: $9e
	add d                                            ; $5de5: $82
	ld [rRAMG], sp                                   ; $5de6: $08 $00 $00
	or [hl]                                          ; $5de9: $b6
	rst $38                                          ; $5dea: $ff
	or e                                             ; $5deb: $b3
	ld a, a                                          ; $5dec: $7f
	dec hl                                           ; $5ded: $2b
	rst $38                                          ; $5dee: $ff
	db $fd                                           ; $5def: $fd
	rst $38                                          ; $5df0: $ff
	rst $38                                          ; $5df1: $ff
	inc hl                                           ; $5df2: $23
	nop                                              ; $5df3: $00
	rst $38                                          ; $5df4: $ff
	ld a, a                                          ; $5df5: $7f
	add b                                            ; $5df6: $80
	ei                                               ; $5df7: $fb
	inc a                                            ; $5df8: $3c
	rst $38                                          ; $5df9: $ff
	ld a, [hl]                                       ; $5dfa: $7e
	call $bddf                                       ; $5dfb: $cd $df $bd
	inc a                                            ; $5dfe: $3c
	and l                                            ; $5dff: $a5
	inc a                                            ; $5e00: $3c
	ld e, e                                          ; $5e01: $5b
	inc a                                            ; $5e02: $3c
	ld [hl], a                                       ; $5e03: $77
	and b                                            ; $5e04: $a0
	sbc [hl]                                         ; $5e05: $9e
	rra                                              ; $5e06: $1f
	cp [hl]                                          ; $5e07: $be
	rrca                                             ; $5e08: $0f
	rrca                                             ; $5e09: $0f
	rrca                                             ; $5e0a: $0f
	adc e                                            ; $5e0b: $8b
	ld bc, $030f                                     ; $5e0c: $01 $0f $03
	rra                                              ; $5e0f: $1f
	rlca                                             ; $5e10: $07
	dec a                                            ; $5e11: $3d
	rrca                                             ; $5e12: $0f
	push af                                          ; $5e13: $f5
	ccf                                              ; $5e14: $3f
	push af                                          ; $5e15: $f5
	rst $38                                          ; $5e16: $ff
	push hl                                          ; $5e17: $e5
	rst $38                                          ; $5e18: $ff
	jp hl                                            ; $5e19: $e9


	rst $38                                          ; $5e1a: $ff
	db $eb                                           ; $5e1b: $eb
	ld a, a                                          ; $5e1c: $7f
	bit 7, a                                         ; $5e1d: $cb $7f
	db $d3                                           ; $5e1f: $d3
	ld a, e                                          ; $5e20: $7b
	and h                                            ; $5e21: $a4
	ld a, a                                          ; $5e22: $7f
	sub d                                            ; $5e23: $92
	ld a, a                                          ; $5e24: $7f
	cp $4b                                           ; $5e25: $fe $4b
	ld h, b                                          ; $5e27: $60
	sbc b                                            ; $5e28: $98
	nop                                              ; $5e29: $00
	db $dd                                           ; $5e2a: $dd
	ld a, $ff                                        ; $5e2b: $3e $ff
	ld a, a                                          ; $5e2d: $7f
	add $ee                                          ; $5e2e: $c6 $ee
	ld e, a                                          ; $5e30: $5f
	ld h, b                                          ; $5e31: $60
	ld c, a                                          ; $5e32: $4f
	and b                                            ; $5e33: $a0
	ld a, a                                          ; $5e34: $7f
	ldh [$99], a                                     ; $5e35: $e0 $99
	cp e                                             ; $5e37: $bb
	ld a, h                                          ; $5e38: $7c
	rst $38                                          ; $5e39: $ff
	cp $8d                                           ; $5e3a: $fe $8d
	ld e, a                                          ; $5e3c: $5f
	ld e, a                                          ; $5e3d: $5f
	and b                                            ; $5e3e: $a0
	ld b, a                                          ; $5e3f: $47
	ret nz                                           ; $5e40: $c0

	ld a, e                                          ; $5e41: $7b
	cp $9c                                           ; $5e42: $fe $9c
	ld a, [hl]                                       ; $5e44: $7e
	rst GetHLinHL                                          ; $5e45: $cf
	rst AddAOntoHL                                          ; $5e46: $ef
	rra                                              ; $5e47: $1f
	ret nz                                           ; $5e48: $c0

	ld [hl], a                                       ; $5e49: $77
	ldh [$7f], a                                     ; $5e4a: $e0 $7f
	ld e, [hl]                                       ; $5e4c: $5e
	sbc [hl]                                         ; $5e4d: $9e
	or l                                             ; $5e4e: $b5
	rla                                              ; $5e4f: $17
	ret nz                                           ; $5e50: $c0

	sbc c                                            ; $5e51: $99
	nop                                              ; $5e52: $00
	sbc a                                            ; $5e53: $9f
	add c                                            ; $5e54: $81
	rst $38                                          ; $5e55: $ff
	ld a, a                                          ; $5e56: $7f
	ld a, l                                          ; $5e57: $7d
	ld [hl], e                                       ; $5e58: $73
	ldh [$33], a                                     ; $5e59: $e0 $33
	ret nz                                           ; $5e5b: $c0

	ld [hl], a                                       ; $5e5c: $77
	ldh [$9d], a                                     ; $5e5d: $e0 $9d
	cp $7f                                           ; $5e5f: $fe $7f
	ld l, e                                          ; $5e61: $6b
	ret nz                                           ; $5e62: $c0

	rst $38                                          ; $5e63: $ff
	sbc h                                            ; $5e64: $9c
	ld a, $14                                        ; $5e65: $3e $14
	ld b, $bc                                        ; $5e67: $06 $bc
	inc e                                            ; $5e69: $1c
	nop                                              ; $5e6a: $00
	nop                                              ; $5e6b: $00
	add b                                            ; $5e6c: $80
	db $e3                                           ; $5e6d: $e3
	sbc c                                            ; $5e6e: $99
	ret nz                                           ; $5e6f: $c0

	rst $38                                          ; $5e70: $ff
	inc sp                                           ; $5e71: $33
	adc a                                            ; $5e72: $8f
	ld c, $87                                        ; $5e73: $0e $87
	cp h                                             ; $5e75: $bc
	add e                                            ; $5e76: $83
	add e                                            ; $5e77: $83
	add e                                            ; $5e78: $83
	jp $9ee3                                         ; $5e79: $c3 $e3 $9e


	ret nz                                           ; $5e7c: $c0

	ld a, e                                          ; $5e7d: $7b
	ldh [$9c], a                                     ; $5e7e: $e0 $9c
	inc e                                            ; $5e80: $1c
	ld e, $1c                                        ; $5e81: $1e $1c
	rrca                                             ; $5e83: $0f
	ldh [$7f], a                                     ; $5e84: $e0 $7f
	cp $df                                           ; $5e86: $fe $df
	inc e                                            ; $5e88: $1c
	sbc [hl]                                         ; $5e89: $9e
	inc c                                            ; $5e8a: $0c
	dec hl                                           ; $5e8b: $2b
	ldh [$df], a                                     ; $5e8c: $e0 $df
	inc e                                            ; $5e8e: $1c
	call c, Call_065_733e                            ; $5e8f: $dc $3e $73
	cp [hl]                                          ; $5e92: $be
	scf                                              ; $5e93: $37
	ldh [$08], a                                     ; $5e94: $e0 $08
	ld bc, $9984                                     ; $5e96: $01 $84 $99
	rst FarCall                                          ; $5e99: $f7
	reti                                             ; $5e9a: $d9


	ld [hl], a                                       ; $5e9b: $77
	db $dd                                           ; $5e9c: $dd
	ld a, e                                          ; $5e9d: $7b
	push de                                          ; $5e9e: $d5
	ld a, a                                          ; $5e9f: $7f
	ei                                               ; $5ea0: $fb
	ccf                                              ; $5ea1: $3f
	ld bc, $feff                                     ; $5ea2: $01 $ff $fe
	ld bc, $00ff                                     ; $5ea5: $01 $ff $00
	db $dd                                           ; $5ea8: $dd
	ld a, $e7                                        ; $5ea9: $3e $e7
	rst AddAOntoHL                                          ; $5eab: $ef
	sbc $7e                                          ; $5eac: $de $7e
	jp nc, Jump_065_6d1e                             ; $5eae: $d2 $1e $6d

	ld e, $3f                                        ; $5eb1: $1e $3f
	cp [hl]                                          ; $5eb3: $be
	nop                                              ; $5eb4: $00
	cp $c0                                           ; $5eb5: $fe $c0
	adc l                                            ; $5eb7: $8d
	add b                                            ; $5eb8: $80
	ldh [$80], a                                     ; $5eb9: $e0 $80
	ldh [$c0], a                                     ; $5ebb: $e0 $c0
	ldh a, [$e0]                                     ; $5ebd: $f0 $e0
	ld hl, sp-$10                                    ; $5ebf: $f8 $f0
	xor [hl]                                         ; $5ec1: $ae
	db $fc                                           ; $5ec2: $fc
	xor a                                            ; $5ec3: $af
	rst $38                                          ; $5ec4: $ff
	and a                                            ; $5ec5: $a7
	rst $38                                          ; $5ec6: $ff
	sub a                                            ; $5ec7: $97
	rst $38                                          ; $5ec8: $ff
	sub e                                            ; $5ec9: $93
	ld a, e                                          ; $5eca: $7b
	cp $9e                                           ; $5ecb: $fe $9e
	ld c, c                                          ; $5ecd: $49
	ld a, e                                          ; $5ece: $7b
	cp $9c                                           ; $5ecf: $fe $9c
	dec h                                            ; $5ed1: $25
	rst $38                                          ; $5ed2: $ff
	and l                                            ; $5ed3: $a5
	ld a, e                                          ; $5ed4: $7b
	or $8a                                           ; $5ed5: $f6 $8a
	add hl, de                                       ; $5ed7: $19
	rst $38                                          ; $5ed8: $ff
	sbc c                                            ; $5ed9: $99
	rst $38                                          ; $5eda: $ff
	sbc l                                            ; $5edb: $9d
	rst FarCall                                          ; $5edc: $f7
	db $dd                                           ; $5edd: $dd
	ld [hl], a                                       ; $5ede: $77
	rst AddAOntoHL                                          ; $5edf: $ef
	dec sp                                           ; $5ee0: $3b
	rst $38                                          ; $5ee1: $ff
	add hl, de                                       ; $5ee2: $19
	ld a, [hl]                                       ; $5ee3: $7e
	adc c                                            ; $5ee4: $89
	nop                                              ; $5ee5: $00
	rst $38                                          ; $5ee6: $ff
	cp l                                             ; $5ee7: $bd
	ld a, [hl]                                       ; $5ee8: $7e
	rst SubAFromBC                                          ; $5ee9: $e7
	ld b, d                                          ; $5eea: $42
	and c                                            ; $5eeb: $a1
	cp l                                             ; $5eec: $bd
	and c                                            ; $5eed: $a1
	xor c                                            ; $5eee: $a9
	ld c, h                                          ; $5eef: $4c
	sbc [hl]                                         ; $5ef0: $9e
	add d                                            ; $5ef1: $82
	ld [rRAMG], sp                                   ; $5ef2: $08 $00 $00
	or [hl]                                          ; $5ef5: $b6
	rst $38                                          ; $5ef6: $ff
	or e                                             ; $5ef7: $b3
	ld a, a                                          ; $5ef8: $7f
	cp e                                             ; $5ef9: $bb
	ld l, a                                          ; $5efa: $6f
	push af                                          ; $5efb: $f5
	ld a, a                                          ; $5efc: $7f
	rst AddAOntoHL                                          ; $5efd: $ef
	ld a, e                                          ; $5efe: $7b
	nop                                              ; $5eff: $00
	rst $38                                          ; $5f00: $ff
	ld a, a                                          ; $5f01: $7f
	add b                                            ; $5f02: $80
	rst $38                                          ; $5f03: $ff
	nop                                              ; $5f04: $00
	cp l                                             ; $5f05: $bd
	ld a, [hl]                                       ; $5f06: $7e
	rst GetHLinHL                                          ; $5f07: $cf
	rst SubAFromDE                                          ; $5f08: $df
	cp l                                             ; $5f09: $bd
	ccf                                              ; $5f0a: $3f
	and l                                            ; $5f0b: $a5
	inc a                                            ; $5f0c: $3c
	ld e, e                                          ; $5f0d: $5b
	inc a                                            ; $5f0e: $3c
	ld [hl], a                                       ; $5f0f: $77
	and b                                            ; $5f10: $a0
	sbc [hl]                                         ; $5f11: $9e
	rra                                              ; $5f12: $1f
	cp [hl]                                          ; $5f13: $be
	rrca                                             ; $5f14: $0f
	rrca                                             ; $5f15: $0f
	rrca                                             ; $5f16: $0f
	adc e                                            ; $5f17: $8b
	ld bc, $030f                                     ; $5f18: $01 $0f $03
	rra                                              ; $5f1b: $1f
	rlca                                             ; $5f1c: $07
	dec a                                            ; $5f1d: $3d
	rrca                                             ; $5f1e: $0f
	push af                                          ; $5f1f: $f5
	ccf                                              ; $5f20: $3f
	push af                                          ; $5f21: $f5
	rst $38                                          ; $5f22: $ff
	push hl                                          ; $5f23: $e5
	rst $38                                          ; $5f24: $ff
	jp hl                                            ; $5f25: $e9


	rst $38                                          ; $5f26: $ff
	db $eb                                           ; $5f27: $eb
	ld a, a                                          ; $5f28: $7f
	bit 7, a                                         ; $5f29: $cb $7f
	db $d3                                           ; $5f2b: $d3
	ld a, e                                          ; $5f2c: $7b
	and h                                            ; $5f2d: $a4
	ld a, a                                          ; $5f2e: $7f
	sub d                                            ; $5f2f: $92
	ld a, a                                          ; $5f30: $7f
	cp $47                                           ; $5f31: $fe $47
	ld h, b                                          ; $5f33: $60
	ld a, e                                          ; $5f34: $7b
	cp $7f                                           ; $5f35: $fe $7f
	cp [hl]                                          ; $5f37: $be
	sbc [hl]                                         ; $5f38: $9e
	rst AddAOntoHL                                          ; $5f39: $ef
	ld e, a                                          ; $5f3a: $5f
	ld h, b                                          ; $5f3b: $60
	ld b, a                                          ; $5f3c: $47
	and b                                            ; $5f3d: $a0
	ld [hl], a                                       ; $5f3e: $77
	ldh [$9d], a                                     ; $5f3f: $e0 $9d
	sbc l                                            ; $5f41: $9d
	rst SubAFromDE                                          ; $5f42: $df
	ld e, a                                          ; $5f43: $5f
	and b                                            ; $5f44: $a0
	ld d, e                                          ; $5f45: $53
	ret nz                                           ; $5f46: $c0

	sbc [hl]                                         ; $5f47: $9e
	rlca                                             ; $5f48: $07
	ld [hl], e                                       ; $5f49: $73
	ldh [$7f], a                                     ; $5f4a: $e0 $7f
	cp $9a                                           ; $5f4c: $fe $9a
	ld a, $c7                                        ; $5f4e: $3e $c7
	ld l, a                                          ; $5f50: $6f
	ret                                              ; $5f51: $c9


	call c, $c03b                                    ; $5f52: $dc $3b $c0
	sbc [hl]                                         ; $5f55: $9e
	ldh [rOCPD], a                                   ; $5f56: $e0 $6b
	ldh [$9a], a                                     ; $5f58: $e0 $9a
	ld a, h                                          ; $5f5a: $7c
	adc a                                            ; $5f5b: $8f
	sbc $5b                                          ; $5f5c: $de $5b
	ccf                                              ; $5f5e: $3f
	dec de                                           ; $5f5f: $1b
	ret nz                                           ; $5f60: $c0

	sbc d                                            ; $5f61: $9a
	add c                                            ; $5f62: $81
	rst $38                                          ; $5f63: $ff
	ld a, a                                          ; $5f64: $7f
	db $fd                                           ; $5f65: $fd
	db $fc                                           ; $5f66: $fc
	dec de                                           ; $5f67: $1b
	ret nz                                           ; $5f68: $c0

	ld a, a                                          ; $5f69: $7f
	ldh [$9d], a                                     ; $5f6a: $e0 $9d
	cp $7f                                           ; $5f6c: $fe $7f
	ld l, e                                          ; $5f6e: $6b
	ret nz                                           ; $5f6f: $c0

	rst $38                                          ; $5f70: $ff
	sbc h                                            ; $5f71: $9c
	ld a, $14                                        ; $5f72: $3e $14
	ld b, $bc                                        ; $5f74: $06 $bc
	inc e                                            ; $5f76: $1c
	nop                                              ; $5f77: $00
	nop                                              ; $5f78: $00
	add b                                            ; $5f79: $80
	db $e3                                           ; $5f7a: $e3
	sbc c                                            ; $5f7b: $99
	ret nz                                           ; $5f7c: $c0

	rst $38                                          ; $5f7d: $ff
	inc sp                                           ; $5f7e: $33
	adc a                                            ; $5f7f: $8f
	ld c, $87                                        ; $5f80: $0e $87
	cp h                                             ; $5f82: $bc
	add e                                            ; $5f83: $83
	add e                                            ; $5f84: $83
	add e                                            ; $5f85: $83
	jp $9ee3                                         ; $5f86: $c3 $e3 $9e


	ret nz                                           ; $5f89: $c0

	ld [hl], a                                       ; $5f8a: $77
	ldh [$de], a                                     ; $5f8b: $e0 $de
	inc e                                            ; $5f8d: $1c
	rla                                              ; $5f8e: $17
	ldh [$9d], a                                     ; $5f8f: $e0 $9d
	inc e                                            ; $5f91: $1c
	ld e, $6b                                        ; $5f92: $1e $6b
	rst SubAFromDE                                          ; $5f94: $df
	daa                                              ; $5f95: $27
	ldh [$dc], a                                     ; $5f96: $e0 $dc
	ld a, $7b                                        ; $5f98: $3e $7b
	db $dd                                           ; $5f9a: $dd
	scf                                              ; $5f9b: $37
	ldh [$38], a                                     ; $5f9c: $e0 $38
	inc bc                                           ; $5f9e: $03
	push af                                          ; $5f9f: $f5
	reti                                             ; $5fa0: $d9


	ld bc, $03dd                                     ; $5fa1: $01 $dd $03
	sbc [hl]                                         ; $5fa4: $9e
	ld [bc], a                                       ; $5fa5: $02
	ld a, e                                          ; $5fa6: $7b
	cp $9c                                           ; $5fa7: $fe $9c
	ld b, $07                                        ; $5fa9: $06 $07
	inc b                                            ; $5fab: $04
	ld c, e                                          ; $5fac: $4b
	cp $7f                                           ; $5fad: $fe $7f
	xor $7f                                          ; $5faf: $ee $7f
	cp $7f                                           ; $5fb1: $fe $7f
	add sp, -$21                                     ; $5fb3: $e8 $df
	inc bc                                           ; $5fb5: $03
	ld e, a                                          ; $5fb6: $5f
	sub $77                                          ; $5fb7: $d6 $77
	ret c                                            ; $5fb9: $d8

	ld b, a                                          ; $5fba: $47
	cp $dd                                           ; $5fbb: $fe $dd
	inc bc                                           ; $5fbd: $03
	ld e, a                                          ; $5fbe: $5f
	sbc $7f                                          ; $5fbf: $de $7f
	adc $92                                          ; $5fc1: $ce $92
	dec b                                            ; $5fc3: $05
	ld b, $0f                                        ; $5fc4: $06 $0f
	inc c                                            ; $5fc6: $0c
	dec de                                           ; $5fc7: $1b
	inc e                                            ; $5fc8: $1c
	rla                                              ; $5fc9: $17
	jr jr_065_5fe3                                   ; $5fca: $18 $17

	jr @+$41                                         ; $5fcc: $18 $3f

	jr nc, jr_065_5fff                               ; $5fce: $30 $2f

	ld c, e                                          ; $5fd0: $4b
	cp $eb                                           ; $5fd1: $fe $eb
	rst SubAFromDE                                          ; $5fd3: $df
	ld bc, $977f                                     ; $5fd4: $01 $7f $97
	add b                                            ; $5fd7: $80
	add hl, bc                                       ; $5fd8: $09
	rrca                                             ; $5fd9: $0f
	rra                                              ; $5fda: $1f
	rra                                              ; $5fdb: $1f
	rrca                                             ; $5fdc: $0f
	inc c                                            ; $5fdd: $0c
	ld e, $19                                        ; $5fde: $1e $19
	add hl, sp                                       ; $5fe0: $39
	scf                                              ; $5fe1: $37
	ld h, [hl]                                       ; $5fe2: $66

jr_065_5fe3:
	ld a, a                                          ; $5fe3: $7f
	ld c, d                                          ; $5fe4: $4a
	ld a, l                                          ; $5fe5: $7d
	push de                                          ; $5fe6: $d5
	ei                                               ; $5fe7: $fb
	xor d                                            ; $5fe8: $aa
	rst FarCall                                          ; $5fe9: $f7
	ld d, l                                          ; $5fea: $55
	xor $eb                                          ; $5feb: $ee $eb
	call c, $f88e                                    ; $5fed: $dc $8e $f8
	sub [hl]                                         ; $5ff0: $96
	ld hl, sp+$1c                                    ; $5ff1: $f8 $1c
	ldh a, [$2d]                                     ; $5ff3: $f0 $2d
	ldh a, [$28]                                     ; $5ff5: $f0 $28
	sub a                                            ; $5ff7: $97
	pop af                                           ; $5ff8: $f1
	ld c, d                                          ; $5ff9: $4a
	pop af                                           ; $5ffa: $f1
	ld c, l                                          ; $5ffb: $4d
	di                                               ; $5ffc: $f3
	ld b, c                                          ; $5ffd: $41
	rst $38                                          ; $5ffe: $ff

jr_065_5fff:
	add d                                            ; $5fff: $82
	ld a, e                                          ; $6000: $7b
	cp $80                                           ; $6001: $fe $80

Jump_065_6003:
	add h                                            ; $6003: $84
	rst $38                                          ; $6004: $ff
	adc b                                            ; $6005: $88
	rst $38                                          ; $6006: $ff
	sub c                                            ; $6007: $91
	rst $38                                          ; $6008: $ff
	and $ff                                          ; $6009: $e6 $ff
	ld a, [$a2ff]                                    ; $600b: $fa $ff $a2
	rst $38                                          ; $600e: $ff
	and e                                            ; $600f: $a3
	rst $38                                          ; $6010: $ff
	and [hl]                                         ; $6011: $a6
	db $fc                                           ; $6012: $fc
	and h                                            ; $6013: $a4
	db $fc                                           ; $6014: $fc
	ld h, $fc                                        ; $6015: $26 $fc
	inc hl                                           ; $6017: $23
	cp $43                                           ; $6018: $fe $43
	cp $43                                           ; $601a: $fe $43
	rst $38                                          ; $601c: $ff
	ld b, e                                          ; $601d: $43
	rst $38                                          ; $601e: $ff
	ld d, e                                          ; $601f: $53
	rst AddAOntoHL                                          ; $6020: $ef
	rst SubAFromHL                                          ; $6021: $d7
	sbc [hl]                                         ; $6022: $9e
	db $eb                                           ; $6023: $eb
	ld [hl], a                                       ; $6024: $77
	cp $9b                                           ; $6025: $fe $9b
	rst SubAFromDE                                          ; $6027: $df
	pop hl                                           ; $6028: $e1
	ld e, a                                          ; $6029: $5f
	ld h, c                                          ; $602a: $61
	ld [hl], a                                       ; $602b: $77
	cp $8f                                           ; $602c: $fe $8f
	cpl                                              ; $602e: $2f
	ld sp, $342b                                     ; $602f: $31 $2b $34

jr_065_6032:
	add hl, hl                                       ; $6032: $29
	ld [hl], $15                                     ; $6033: $36 $15
	ld a, [de]                                       ; $6035: $1a
	dec d                                            ; $6036: $15
	dec de                                           ; $6037: $1b
	dec bc                                           ; $6038: $0b
	dec c                                            ; $6039: $0d
	ld a, a                                          ; $603a: $7f
	ld a, a                                          ; $603b: $7f
	rst $38                                          ; $603c: $ff
	ret nz                                           ; $603d: $c0

	db $dd                                           ; $603e: $dd

jr_065_603f:
	add b                                            ; $603f: $80
	sbc h                                            ; $6040: $9c
	add e                                            ; $6041: $83
	add b                                            ; $6042: $80
	ld bc, $00bc                                     ; $6043: $01 $bc $00
	nop                                              ; $6046: $00
	nop                                              ; $6047: $00
	nop                                              ; $6048: $00
	add hl, bc                                       ; $6049: $09
	sub b                                            ; $604a: $90
	ld b, $17                                        ; $604b: $06 $17
	ld [$102f], sp                                   ; $604d: $08 $2f $10
	rra                                              ; $6050: $1f
	jr nz, jr_065_6072                               ; $6051: $20 $1f

	jr nz, jr_065_6083                               ; $6053: $20 $2e

	ld de, $130c                                     ; $6055: $11 $0c $13
	inc d                                            ; $6058: $14
	dec bc                                           ; $6059: $0b
	pop af                                           ; $605a: $f1
	rst SubAFromDE                                          ; $605b: $df
	rlca                                             ; $605c: $07
	ld a, a                                          ; $605d: $7f
	jr nz, jr_065_603f                               ; $605e: $20 $df

	ld a, a                                          ; $6060: $7f
	sbc b                                            ; $6061: $98
	rst SubAFromDE                                          ; $6062: $df
	ldh [rIE], a                                     ; $6063: $e0 $ff
	nop                                              ; $6065: $00
	sbc b                                            ; $6066: $98
	rst SubAFromBC                                          ; $6067: $e7
	rst $38                                          ; $6068: $ff
	cp a                                             ; $6069: $bf
	rst $38                                          ; $606a: $ff
	ld e, b                                          ; $606b: $58
	add b                                            ; $606c: $80
	rst SubAFromBC                                          ; $606d: $e7
	db $ec                                           ; $606e: $ec
	sbc a                                            ; $606f: $9f
	or a                                             ; $6070: $b7
	ld a, b                                          ; $6071: $78

jr_065_6072:
	rst SubAFromDE                                          ; $6072: $df
	ldh [rPCM34], a                                  ; $6073: $e0 $77
	adc a                                            ; $6075: $8f
	rr h                                             ; $6076: $cb $1c
	sub h                                            ; $6078: $94
	jr jr_065_60b3                                   ; $6079: $18 $38

	db $10                                           ; $607b: $10
	ld h, c                                          ; $607c: $61
	jr nc, jr_065_6032                               ; $607d: $30 $b3

	ld h, c                                          ; $607f: $61
	ld b, c                                          ; $6080: $41
	db $e3                                           ; $6081: $e3
	ld h, [hl]                                       ; $6082: $66

jr_065_6083:
	jp $c68b                                         ; $6083: $c3 $8b $c6


	push de                                          ; $6086: $d5
	adc [hl]                                         ; $6087: $8e
	inc h                                            ; $6088: $24
	sbc a                                            ; $6089: $9f
	ld [$e0ff], sp                                   ; $608a: $08 $ff $e0
	pop bc                                           ; $608d: $c1

jr_065_608e:
	sbc b                                            ; $608e: $98
	db $fc                                           ; $608f: $fc
	ld a, $1c                                        ; $6090: $3e $1c
	ld b, $c4                                        ; $6092: $06 $c4
	ld b, $e4                                        ; $6094: $06 $e4
	ld a, e                                          ; $6096: $7b
	cp $7f                                           ; $6097: $fe $7f
	ld a, [$849c]                                    ; $6099: $fa $9c $84
	ld b, $04                                        ; $609c: $06 $04

Jump_065_609e:
	ld [hl], e                                       ; $609e: $73
	cp $93                                           ; $609f: $fe $93
	add h                                            ; $60a1: $84
	rlca                                             ; $60a2: $07
	add d                                            ; $60a3: $82
	inc bc                                           ; $60a4: $03

jr_065_60a5:
	jp nz, $e203                                     ; $60a5: $c2 $03 $e2

	add e                                            ; $60a8: $83
	ldh a, [c]                                       ; $60a9: $f2

jr_065_60aa:
	add e                                            ; $60aa: $83
	ld sp, hl                                        ; $60ab: $f9
	pop bc                                           ; $60ac: $c1
	ld d, a                                          ; $60ad: $57
	ld h, [hl]                                       ; $60ae: $66
	rst SubAFromDE                                          ; $60af: $df
	ld e, $80                                        ; $60b0: $1e $80

jr_065_60b2:
	inc a                                            ; $60b2: $3c

jr_065_60b3:
	inc [hl]                                         ; $60b3: $34

jr_065_60b4:
	rst FarCall                                          ; $60b4: $f7
	rst AddAOntoHL                                          ; $60b5: $ef
	db $ed                                           ; $60b6: $ed
	sbc $eb                                          ; $60b7: $de $eb
	ld e, h                                          ; $60b9: $5c
	or $19                                           ; $60ba: $f6 $19
	push hl                                          ; $60bc: $e5
	dec de                                           ; $60bd: $1b
	ld l, h                                          ; $60be: $6c
	sub e                                            ; $60bf: $93
	adc a                                            ; $60c0: $8f
	ld [hl], b                                       ; $60c1: $70
	call nz, $013b                                   ; $60c2: $c4 $3b $01
	cp $03                                           ; $60c5: $fe $03
	db $fc                                           ; $60c7: $fc
	rst JumpTable                                          ; $60c8: $c7
	jr c, jr_065_60b2                                ; $60c9: $38 $e7

	db $10                                           ; $60cb: $10
	ld [hl], c                                       ; $60cc: $71
	adc d                                            ; $60cd: $8a
	ld [hl-], a                                      ; $60ce: $32
	ret                                              ; $60cf: $c9


	pop hl                                           ; $60d0: $e1
	sbc l                                            ; $60d1: $9d
	jr jr_065_60b4                                   ; $60d2: $18 $e0

	ld a, e                                          ; $60d4: $7b
	cp $92                                           ; $60d5: $fe $92
	ret                                              ; $60d7: $c9


	jr c, jr_065_60a5                                ; $60d8: $38 $cb

	add hl, sp                                       ; $60da: $39
	sub c                                            ; $60db: $91
	ld a, e                                          ; $60dc: $7b
	sbc [hl]                                         ; $60dd: $9e
	ld [hl], e                                       ; $60de: $73
	ld a, [hl+]                                      ; $60df: $2a
	or $35                                           ; $60e0: $f6 $35
	xor $44                                          ; $60e2: $ee $44
	inc bc                                           ; $60e4: $03
	ld h, b                                          ; $60e5: $60
	pop hl                                           ; $60e6: $e1
	sub b                                            ; $60e7: $90
	xor $18                                          ; $60e8: $ee $18
	xor $18                                          ; $60ea: $ee $18
	rst AddAOntoHL                                          ; $60ec: $ef
	jr jr_065_608e                                   ; $60ed: $18 $9f

	jr jr_065_60aa                                   ; $60ef: $18 $b9

	db $10                                           ; $60f1: $10
	sbc h                                            ; $60f2: $9c
	db $10                                           ; $60f3: $10
	sbc a                                            ; $60f4: $9f
	db $10                                           ; $60f5: $10
	ret nz                                           ; $60f6: $c0

	cp d                                             ; $60f7: $ba
	ret nz                                           ; $60f8: $c0

	ret nz                                           ; $60f9: $c0

	ld b, b                                          ; $60fa: $40
	ld h, b                                          ; $60fb: $60
	ld h, b                                          ; $60fc: $60
	ld h, b                                          ; $60fd: $60
	ld hl, $819c                                     ; $60fe: $21 $9c $81
	ld [hl-], a                                      ; $6101: $32
	add e                                            ; $6102: $83
	ld d, a                                          ; $6103: $57
	ld h, b                                          ; $6104: $60
	adc h                                            ; $6105: $8c
	jr c, jr_065_6147                                ; $6106: $38 $3f

	jp Jump_065_67ff                                 ; $6108: $c3 $ff $67


	sbc a                                            ; $610b: $9f
	sbc [hl]                                         ; $610c: $9e
	ld a, b                                          ; $610d: $78
	ld l, c                                          ; $610e: $69
	ldh a, [$a6]                                     ; $610f: $f0 $a6
	pop bc                                           ; $6111: $c1
	ld e, c                                          ; $6112: $59
	add a                                            ; $6113: $87
	or [hl]                                          ; $6114: $b6
	rrca                                             ; $6115: $0f
	rst $38                                          ; $6116: $ff
	nop                                              ; $6117: $00
	rra                                              ; $6118: $1f
	ld a, d                                          ; $6119: $7a
	cp b                                             ; $611a: $b8
	add h                                            ; $611b: $84
	cp $01                                           ; $611c: $fe $01
	rst $38                                          ; $611e: $ff
	nop                                              ; $611f: $00
	rst FarCall                                          ; $6120: $f7
	ld [$0857], sp                                   ; $6121: $08 $57 $08
	ld l, e                                          ; $6124: $6b
	inc b                                            ; $6125: $04
	ld l, c                                          ; $6126: $69
	inc b                                            ; $6127: $04
	add hl, hl                                       ; $6128: $29
	inc b                                            ; $6129: $04
	inc h                                            ; $612a: $24
	ld [bc], a                                       ; $612b: $02
	inc h                                            ; $612c: $24
	ld [bc], a                                       ; $612d: $02
	and h                                            ; $612e: $a4
	ld [bc], a                                       ; $612f: $02
	xor h                                            ; $6130: $ac
	ld b, $0c                                        ; $6131: $06 $0c
	ld h, [hl]                                       ; $6133: $66
	push de                                          ; $6134: $d5
	ld l, [hl]                                       ; $6135: $6e
	ld b, h                                          ; $6136: $44
	ld a, d                                          ; $6137: $7a
	ld h, $e0                                        ; $6138: $26 $e0
	pop bc                                           ; $613a: $c1
	sbc [hl]                                         ; $613b: $9e
	rra                                              ; $613c: $1f
	or e                                             ; $613d: $b3
	ccf                                              ; $613e: $3f
	rra                                              ; $613f: $1f
	adc a                                            ; $6140: $8f

jr_065_6141:
	jp $3171                                         ; $6141: $c3 $71 $31


	adc b                                            ; $6144: $88
	nop                                              ; $6145: $00
	nop                                              ; $6146: $00

jr_065_6147:
	jr nc, jr_065_6141                               ; $6147: $30 $f8

	ld a, h                                          ; $6149: $7c
	ccf                                              ; $614a: $3f
	rst $38                                          ; $614b: $ff
	sbc h                                            ; $614c: $9c

jr_065_614d:
	rst GetHLinHL                                          ; $614d: $cf
	jr nc, jr_065_614d                               ; $614e: $30 $fd

	rst FarCall                                          ; $6150: $f7
	rst SubAFromDE                                          ; $6151: $df
	ld hl, sp-$6a                                    ; $6152: $f8 $96
	ld h, b                                          ; $6154: $60
	ldh [rP1], a                                     ; $6155: $e0 $00
	nop                                              ; $6157: $00
	rst $38                                          ; $6158: $ff
	rst $38                                          ; $6159: $ff
	db $10                                           ; $615a: $10
	rrca                                             ; $615b: $0f
	adc a                                            ; $615c: $8f
	ld a, c                                          ; $615d: $79
	rst SubAFromBC                                          ; $615e: $e7
	rst SubAFromDE                                          ; $615f: $df
	rst $38                                          ; $6160: $ff
	ld a, e                                          ; $6161: $7b
	push af                                          ; $6162: $f5
	cp [hl]                                          ; $6163: $be
	rst $38                                          ; $6164: $ff
	rst $38                                          ; $6165: $ff
	ld a, a                                          ; $6166: $7f
	add e                                            ; $6167: $83
	add b                                            ; $6168: $80
	sbc a                                            ; $6169: $9f
	ld h, b                                          ; $616a: $60
	ld l, [hl]                                       ; $616b: $6e
	ld de, $0897                                     ; $616c: $11 $97 $08
	xor e                                            ; $616f: $ab
	ld b, h                                          ; $6170: $44
	ld d, [hl]                                       ; $6171: $56
	inc hl                                           ; $6172: $23
	xor c                                            ; $6173: $a9
	inc de                                           ; $6174: $13
	ld a, [bc]                                       ; $6175: $0a
	ld de, $8855                                     ; $6176: $11 $55 $88
	adc c                                            ; $6179: $89
	call z, Call_065_4cca                            ; $617a: $cc $ca $4c
	xor $44                                          ; $617d: $ee $44
	db $dd                                           ; $617f: $dd
	ld h, [hl]                                       ; $6180: $66
	xor $77                                          ; $6181: $ee $77
	ld h, [hl]                                       ; $6183: $66
	inc bc                                           ; $6184: $03
	ld h, b                                          ; $6185: $60
	pop hl                                           ; $6186: $e1
	adc [hl]                                         ; $6187: $8e
	rst SubAFromDE                                          ; $6188: $df
	ret                                              ; $6189: $c9


	cp $7a                                           ; $618a: $fe $7a
	push hl                                          ; $618c: $e5
	inc a                                            ; $618d: $3c
	push af                                          ; $618e: $f5
	dec e                                            ; $618f: $1d
	db $fd                                           ; $6190: $fd
	dec c                                            ; $6191: $0d
	adc l                                            ; $6192: $8d
	dec c                                            ; $6193: $0d
	dec a                                            ; $6194: $3d
	dec b                                            ; $6195: $05
	ld b, [hl]                                       ; $6196: $46
	inc bc                                           ; $6197: $03
	ld b, d                                          ; $6198: $42
	ld [hl], b                                       ; $6199: $70
	push bc                                          ; $619a: $c5
	sub l                                            ; $619b: $95
	ld b, c                                          ; $619c: $41
	ld bc, $00c1                                     ; $619d: $01 $c1 $00
	rst SubAFromDE                                          ; $61a0: $df
	ld e, $e1                                        ; $61a1: $1e $e1
	ccf                                              ; $61a3: $3f

jr_065_61a4:
	pop bc                                           ; $61a4: $c1
	db $e3                                           ; $61a5: $e3
	rst AddAOntoHL                                          ; $61a6: $ef
	rst SubAFromDE                                          ; $61a7: $df
	ldh [$99], a                                     ; $61a8: $e0 $99
	jr jr_065_61a4                                   ; $61aa: $18 $f8

	db $fc                                           ; $61ac: $fc
	db $fc                                           ; $61ad: $fc
	ld b, $06                                        ; $61ae: $06 $06
	ld [hl], a                                       ; $61b0: $77
	ld hl, sp-$80                                    ; $61b1: $f8 $80
	and $1e                                          ; $61b3: $e6 $1e
	ld sp, hl                                        ; $61b5: $f9
	rlca                                             ; $61b6: $07
	and h                                            ; $61b7: $a4
	ld a, e                                          ; $61b8: $7b
	ret c                                            ; $61b9: $d8

	ccf                                              ; $61ba: $3f
	and $1f                                          ; $61bb: $e6 $1f
	ld [hl], e                                       ; $61bd: $73
	adc a                                            ; $61be: $8f
	cp e                                             ; $61bf: $bb
	ld b, a                                          ; $61c0: $47
	ld e, l                                          ; $61c1: $5d
	inc hl                                           ; $61c2: $23
	dec [hl]                                         ; $61c3: $35
	sbc e                                            ; $61c4: $9b
	ret z                                            ; $61c5: $c8

	sbc a                                            ; $61c6: $9f
	or h                                             ; $61c7: $b4
	rst GetHLinHL                                          ; $61c8: $cf
	ld e, h                                          ; $61c9: $5c
	rst SubAFromBC                                          ; $61ca: $e7
	ld e, d                                          ; $61cb: $5a
	rst SubAFromBC                                          ; $61cc: $e7
	xor d                                            ; $61cd: $aa
	ld [hl], a                                       ; $61ce: $77
	or c                                             ; $61cf: $b1
	ld a, a                                          ; $61d0: $7f
	or c                                             ; $61d1: $b1
	sub l                                            ; $61d2: $95
	ld a, a                                          ; $61d3: $7f
	cp c                                             ; $61d4: $b9
	ld a, a                                          ; $61d5: $7f
	add hl, hl                                       ; $61d6: $29
	rst AddAOntoHL                                          ; $61d7: $ef
	add hl, hl                                       ; $61d8: $29
	rst AddAOntoHL                                          ; $61d9: $ef
	dec h                                            ; $61da: $25
	rst SubAFromBC                                          ; $61db: $e7
	ld h, l                                          ; $61dc: $65
	ld a, e                                          ; $61dd: $7b
	cp $df                                           ; $61de: $fe $df
	db $e3                                           ; $61e0: $e3
	db $dd                                           ; $61e1: $dd
	jp $82df                                         ; $61e2: $c3 $df $82


	rst SubAFromDE                                          ; $61e5: $df
	add b                                            ; $61e6: $80
	ld [hl], c                                       ; $61e7: $71
	xor b                                            ; $61e8: $a8
	add c                                            ; $61e9: $81
	db $fc                                           ; $61ea: $fc
	xor $f2                                          ; $61eb: $ee $f2
	ccf                                              ; $61ed: $3f
	rst SubAFromDE                                          ; $61ee: $df
	db $fc                                           ; $61ef: $fc
	db $fc                                           ; $61f0: $fc
	ld [hl], a                                       ; $61f1: $77
	adc a                                            ; $61f2: $8f
	ld sp, hl                                        ; $61f3: $f9
	rst $38                                          ; $61f4: $ff
	sub $ef                                          ; $61f5: $d6 $ef
	db $fd                                           ; $61f7: $fd
	dec sp                                           ; $61f8: $3b
	ld [hl], $cf                                     ; $61f9: $36 $cf
	dec c                                            ; $61fb: $0d
	di                                               ; $61fc: $f3
	ld c, $f1                                        ; $61fd: $0e $f1
	ld a, a                                          ; $61ff: $7f
	add b                                            ; $6200: $80
	inc e                                            ; $6201: $1c
	db $e3                                           ; $6202: $e3
	add $f9                                          ; $6203: $c6 $f9
	ld sp, $88fe                                     ; $6205: $31 $fe $88
	sbc $ff                                          ; $6208: $de $ff
	add b                                            ; $620a: $80
	rlca                                             ; $620b: $07
	nop                                              ; $620c: $00
	ldh a, [$f0]                                     ; $620d: $f0 $f0
	add $c2                                          ; $620f: $c6 $c2
	inc e                                            ; $6211: $1c
	inc c                                            ; $6212: $0c
	ld a, c                                          ; $6213: $79
	jr c, @-$0b                                      ; $6214: $38 $f3

	pop de                                           ; $6216: $d1
	xor $a6                                          ; $6217: $ee $a6
	xor $2e                                          ; $6219: $ee $2e
	xor $2a                                          ; $621b: $ee $2a
	xor $ee                                          ; $621d: $ee $ee
	xor e                                            ; $621f: $ab
	xor d                                            ; $6220: $aa
	rst $38                                          ; $6221: $ff
	db $fd                                           ; $6222: $fd
	ld a, a                                          ; $6223: $7f
	db $d3                                           ; $6224: $d3
	ld a, a                                          ; $6225: $7f
	ret nc                                           ; $6226: $d0

	ld a, a                                          ; $6227: $7f
	ret z                                            ; $6228: $c8

	cp a                                             ; $6229: $bf
	sbc c                                            ; $622a: $99
	db $e4                                           ; $622b: $e4
	rst $38                                          ; $622c: $ff
	xor $33                                          ; $622d: $ee $33
	rst $38                                          ; $622f: $ff
	ld de, $007b                                     ; $6230: $11 $7b $00
	rst SubAFromDE                                          ; $6233: $df

jr_065_6234:
	add b                                            ; $6234: $80
	adc e                                            ; $6235: $8b
	ld b, b                                          ; $6236: $40
	ret nz                                           ; $6237: $c0

	jr nz, @-$1e                                     ; $6238: $20 $e0

	jr nz, @-$1e                                     ; $623a: $20 $e0

	sub b                                            ; $623c: $90
	ldh a, [$50]                                     ; $623d: $f0 $50
	ld [hl], b                                       ; $623f: $70
	xor b                                            ; $6240: $a8
	cp b                                             ; $6241: $b8
	sbc b                                            ; $6242: $98
	sbc b                                            ; $6243: $98
	ret c                                            ; $6244: $d8

	ret c                                            ; $6245: $d8

	ld c, b                                          ; $6246: $48
	ret z                                            ; $6247: $c8

	ld b, b                                          ; $6248: $40
	ret nz                                           ; $6249: $c0

	ld [hl], a                                       ; $624a: $77
	cp $df                                           ; $624b: $fe $df
	ret nz                                           ; $624d: $c0

	rst SubAFromDE                                          ; $624e: $df
	ld b, b                                          ; $624f: $40
	rst SubAFromDE                                          ; $6250: $df
	ldh [$df], a                                     ; $6251: $e0 $df
	jr c, jr_065_6234                                ; $6253: $38 $df

	adc h                                            ; $6255: $8c
	rst SubAFromDE                                          ; $6256: $df
	call nz, Call_065_4480                           ; $6257: $c4 $80 $44
	call nz, $e828                                   ; $625a: $c4 $28 $e8
	and b                                            ; $625d: $a0
	ldh [$63], a                                     ; $625e: $e0 $63
	db $e3                                           ; $6260: $e3
	scf                                              ; $6261: $37
	db $f4                                           ; $6262: $f4
	rra                                              ; $6263: $1f
	ld hl, sp+$3f                                    ; $6264: $f8 $3f
	ld sp, hl                                        ; $6266: $f9
	ld a, a                                          ; $6267: $7f
	ld [$c4ff], a                                    ; $6268: $ea $ff $c4
	rst $38                                          ; $626b: $ff
	ld h, a                                          ; $626c: $67
	ld hl, sp+$3f                                    ; $626d: $f8 $3f
	db $fc                                           ; $626f: $fc
	rrca                                             ; $6270: $0f
	ccf                                              ; $6271: $3f
	rst SubAFromBC                                          ; $6272: $e7
	rst AddAOntoHL                                          ; $6273: $ef
	pop bc                                           ; $6274: $c1
	sbc a                                            ; $6275: $9f

jr_065_6276:
	nop                                              ; $6276: $00
	ld d, a                                          ; $6277: $57
	add [hl]                                         ; $6278: $86
	jr c, jr_065_6276                                ; $6279: $38 $fb

	ld a, h                                          ; $627b: $7c
	rst SubAFromDE                                          ; $627c: $df
	db $fc                                           ; $627d: $fc
	and l                                            ; $627e: $a5
	sbc $fd                                          ; $627f: $de $fd
	add d                                            ; $6281: $82
	sbc a                                            ; $6282: $9f
	add b                                            ; $6283: $80
	rlca                                             ; $6284: $07
	ret nz                                           ; $6285: $c0

	ret nz                                           ; $6286: $c0

	rst $38                                          ; $6287: $ff
	ccf                                              ; $6288: $3f
	rst $38                                          ; $6289: $ff
	ld h, b                                          ; $628a: $60
	sbc a                                            ; $628b: $9f
	ld a, a                                          ; $628c: $7f
	add b                                            ; $628d: $80
	ld h, b                                          ; $628e: $60
	add b                                            ; $628f: $80
	and b                                            ; $6290: $a0
	ret nz                                           ; $6291: $c0

	ld c, a                                          ; $6292: $4f
	ld b, $82                                        ; $6293: $06 $82
	ldh a, [rAUD1SWEEP]                              ; $6295: $f0 $10
	ld hl, sp+$18                                    ; $6297: $f8 $18
	ld hl, sp+$08                                    ; $6299: $f8 $08
	ld hl, sp-$78                                    ; $629b: $f8 $88
	ld hl, sp+$18                                    ; $629d: $f8 $18
	db $fc                                           ; $629f: $fc
	inc a                                            ; $62a0: $3c
	and $fe                                          ; $62a1: $e6 $fe
	or e                                             ; $62a3: $b3
	rst $38                                          ; $62a4: $ff
	ld c, c                                          ; $62a5: $49
	rst $38                                          ; $62a6: $ff
	dec h                                            ; $62a7: $25
	rst $38                                          ; $62a8: $ff
	sub e                                            ; $62a9: $93
	rst $38                                          ; $62aa: $ff

jr_065_62ab:
	sub c                                            ; $62ab: $91
	rst $38                                          ; $62ac: $ff
	adc b                                            ; $62ad: $88
	rst $38                                          ; $62ae: $ff
	xor b                                            ; $62af: $a8
	rst $38                                          ; $62b0: $ff
	xor h                                            ; $62b1: $ac
	ld a, e                                          ; $62b2: $7b
	cp $8d                                           ; $62b3: $fe $8d
	db $ec                                           ; $62b5: $ec
	rst SubAFromDE                                          ; $62b6: $df
	db $ed                                           ; $62b7: $ed
	sbc a                                            ; $62b8: $9f
	rst AddAOntoHL                                          ; $62b9: $ef
	dec de                                           ; $62ba: $1b
	rst $38                                          ; $62bb: $ff
	add hl, bc                                       ; $62bc: $09
	rst $38                                          ; $62bd: $ff
	add b                                            ; $62be: $80
	rst AddAOntoHL                                          ; $62bf: $ef
	add b                                            ; $62c0: $80
	rst SubAFromBC                                          ; $62c1: $e7
	ld b, b                                          ; $62c2: $40
	di                                               ; $62c3: $f3
	ld b, b                                          ; $62c4: $40

jr_065_62c5:
	ld a, c                                          ; $62c5: $79
	jr nz, jr_065_62c5                               ; $62c6: $20 $fd

	db $d3                                           ; $62c8: $d3
	add b                                            ; $62c9: $80
	ld l, a                                          ; $62ca: $6f
	xor $7f                                          ; $62cb: $ee $7f
	ld h, d                                          ; $62cd: $62
	sbc c                                            ; $62ce: $99
	or b                                             ; $62cf: $b0
	ld [hl], b                                       ; $62d0: $70
	adc b                                            ; $62d1: $88
	ld a, b                                          ; $62d2: $78
	add $3e                                          ; $62d3: $c6 $3e
	ld h, $00                                        ; $62d5: $26 $00
	sbc $99                                          ; $62d7: $de $99
	sub e                                            ; $62d9: $93
	rst $38                                          ; $62da: $ff
	sbc c                                            ; $62db: $99
	sub c                                            ; $62dc: $91
	nop                                              ; $62dd: $00
	sbc c                                            ; $62de: $99
	inc sp                                           ; $62df: $33
	sbc c                                            ; $62e0: $99
	ld de, $9999                                     ; $62e1: $11 $99 $99
	ld [hl+], a                                      ; $62e4: $22
	sub c                                            ; $62e5: $91
	ld a, e                                          ; $62e6: $7b
	ei                                               ; $62e7: $fb
	sbc [hl]                                         ; $62e8: $9e
	nop                                              ; $62e9: $00
	ld [hl], a                                       ; $62ea: $77
	ei                                               ; $62eb: $fb
	ld [hl], e                                       ; $62ec: $73
	or $9e                                           ; $62ed: $f6 $9e
	ld [hl+], a                                      ; $62ef: $22
	ld a, e                                          ; $62f0: $7b
	db $ec                                           ; $62f1: $ec
	sub a                                            ; $62f2: $97
	ld de, $9955                                     ; $62f3: $11 $55 $99
	adc b                                            ; $62f6: $88
	inc sp                                           ; $62f7: $33
	adc b                                            ; $62f8: $88
	nop                                              ; $62f9: $00
	cp e                                             ; $62fa: $bb
	adc a                                            ; $62fb: $8f
	ld bc, $1880                                     ; $62fc: $01 $80 $18
	rst $38                                          ; $62ff: $ff
	ld sp, $53ff                                     ; $6300: $31 $ff $53
	cp $a7                                           ; $6303: $fe $a7
	rst $38                                          ; $6305: $ff
	inc l                                            ; $6306: $2c
	ei                                               ; $6307: $fb
	ld e, e                                          ; $6308: $5b
	db $f4                                           ; $6309: $f4
	ld [hl], a                                       ; $630a: $77
	add sp, $76                                      ; $630b: $e8 $76
	ret                                              ; $630d: $c9


	sub l                                            ; $630e: $95
	sbc e                                            ; $630f: $9b
	and $7e                                          ; $6310: $e6 $7e
	push hl                                          ; $6312: $e5
	jp hl                                            ; $6313: $e9


	db $e4                                           ; $6314: $e4
	ld hl, $20e4                                     ; $6315: $21 $e4 $20
	ld h, d                                          ; $6318: $62
	jr nz, jr_065_62ab                               ; $6319: $20 $90

	nop                                              ; $631b: $00
	ldh a, [$80]                                     ; $631c: $f0 $80
	ldh [$b8], a                                     ; $631e: $e0 $b8
	ldh a, [$bc]                                     ; $6320: $f0 $bc
	ld hl, sp+$7c                                    ; $6322: $f8 $7c
	cp h                                             ; $6324: $bc
	ld a, a                                          ; $6325: $7f
	cp [hl]                                          ; $6326: $be
	ld l, a                                          ; $6327: $6f
	cp a                                             ; $6328: $bf
	ld l, a                                          ; $6329: $6f
	cp a                                             ; $632a: $bf
	ld e, e                                          ; $632b: $5b
	xor a                                            ; $632c: $af
	db $db                                           ; $632d: $db
	xor a                                            ; $632e: $af
	rst SubAFromHL                                          ; $632f: $d7
	xor e                                            ; $6330: $ab
	rst SubAFromHL                                          ; $6331: $d7
	xor e                                            ; $6332: $ab
	rst $38                                          ; $6333: $ff
	rst $38                                          ; $6334: $ff
	rst GetHLinHL                                          ; $6335: $cf
	add e                                            ; $6336: $83
	db $e3                                           ; $6337: $e3
	ld h, c                                          ; $6338: $61
	cp a                                             ; $6339: $bf
	rra                                              ; $633a: $1f
	rst $38                                          ; $633b: $ff
	add c                                            ; $633c: $81
	add h                                            ; $633d: $84
	rst $38                                          ; $633e: $ff
	di                                               ; $633f: $f3
	ret z                                            ; $6340: $c8

	cp a                                             ; $6341: $bf
	ret                                              ; $6342: $c9


	ccf                                              ; $6343: $3f
	db $db                                           ; $6344: $db
	cp $1f                                           ; $6345: $fe $1f
	db $e4                                           ; $6347: $e4
	ld bc, $fefe                                     ; $6348: $01 $fe $fe
	ld bc, $f06f                                     ; $634b: $01 $6f $f0
	rst FarCall                                          ; $634e: $f7
	ld hl, sp+$2f                                    ; $634f: $f8 $2f
	ld a, b                                          ; $6351: $78
	ld h, [hl]                                       ; $6352: $66
	add sp, $24                                      ; $6353: $e8 $24
	ldh [$c8], a                                     ; $6355: $e0 $c8
	ret nz                                           ; $6357: $c0

	pop af                                           ; $6358: $f1

jr_065_6359:
	cp c                                             ; $6359: $b9
	inc bc                                           ; $635a: $03
	cp $0f                                           ; $635b: $fe $0f
	nop                                              ; $635d: $00
	nop                                              ; $635e: $00
	nop                                              ; $635f: $00
	nop                                              ; $6360: $00
	ret nz                                           ; $6361: $c0

	sub b                                            ; $6362: $90

jr_065_6363:
	add b                                            ; $6363: $80
	ldh a, [$e0]                                     ; $6364: $f0 $e0
	ld a, h                                          ; $6366: $7c
	ld hl, sp-$41                                    ; $6367: $f8 $bf
	and $bf                                          ; $6369: $e6 $bf
	pop af                                           ; $636b: $f1
	ret c                                            ; $636c: $d8

	ld [hl], b                                       ; $636d: $70
	ret c                                            ; $636e: $d8

	jr nc, jr_065_6359                               ; $636f: $30 $e8

	jr c, jr_065_63ee                                ; $6371: $38 $7b

	cp $9d                                           ; $6373: $fe $9d
	jr jr_065_6363                                   ; $6375: $18 $ec

	ld a, e                                          ; $6377: $7b
	cp $80                                           ; $6378: $fe $80
	adc h                                            ; $637a: $8c
	ei                                               ; $637b: $fb
	adc h                                            ; $637c: $8c

jr_065_637d:
	ld a, e                                          ; $637d: $7b
	sbc h                                            ; $637e: $9c
	ld [hl], e                                       ; $637f: $73
	dec e                                            ; $6380: $1d
	di                                               ; $6381: $f3
	dec sp                                           ; $6382: $3b
	and $fc                                          ; $6383: $e6 $fc
	rst JumpTable                                          ; $6385: $c7
	ld a, c                                          ; $6386: $79
	add [hl]                                         ; $6387: $86
	dec bc                                           ; $6388: $0b
	add h                                            ; $6389: $84
	inc bc                                           ; $638a: $03
	db $fd                                           ; $638b: $fd
	ld a, b                                          ; $638c: $78
	add l                                            ; $638d: $85
	call z, $8500                                    ; $638e: $cc $00 $85
	ld bc, $00b9                                     ; $6391: $01 $b9 $00
	ld a, l                                          ; $6394: $7d
	db $10                                           ; $6395: $10
	cp $10                                           ; $6396: $fe $10
	adc a                                            ; $6398: $8f
	add b                                            ; $6399: $80
	nop                                              ; $639a: $00
	rst FarCall                                          ; $639b: $f7
	sbc a                                            ; $639c: $9f
	rst FarCall                                          ; $639d: $f7
	db $dd                                           ; $639e: $dd
	or a                                             ; $639f: $b7
	db $fd                                           ; $63a0: $fd
	adc a                                            ; $63a1: $8f
	ld a, l                                          ; $63a2: $7d
	rst SubAFromBC                                          ; $63a3: $e7
	dec e                                            ; $63a4: $1d
	ld bc, $fcff                                     ; $63a5: $01 $ff $fc
	inc bc                                           ; $63a8: $03
	xor $f1                                          ; $63a9: $ee $f1
	or $f9                                           ; $63ab: $f6 $f9
	ld l, $7d                                        ; $63ad: $2e $7d
	ld h, l                                          ; $63af: $65
	jp hl                                            ; $63b0: $e9


	ld c, c                                          ; $63b1: $49
	pop hl                                           ; $63b2: $e1
	sub c                                            ; $63b3: $91
	pop bc                                           ; $63b4: $c1
	pop af                                           ; $63b5: $f1
	ld bc, $0303                                     ; $63b6: $01 $03 $03
	add [hl]                                         ; $63b9: $86
	rst $38                                          ; $63ba: $ff
	rlca                                             ; $63bb: $07
	ld a, $07                                        ; $63bc: $3e $07
	ccf                                              ; $63be: $3f
	rrca                                             ; $63bf: $0f
	ld a, a                                          ; $63c0: $7f
	rra                                              ; $63c1: $1f
	ldh a, [$3f]                                     ; $63c2: $f0 $3f
	ldh a, [$7f]                                     ; $63c4: $f0 $7f
	ldh [rIE], a                                     ; $63c6: $e0 $ff
	or b                                             ; $63c8: $b0
	rst $38                                          ; $63c9: $ff
	call z, Call_065_63ff                            ; $63ca: $cc $ff $63
	rst $38                                          ; $63cd: $ff
	jr @+$01                                         ; $63ce: $18 $ff

	add $ff                                          ; $63d0: $c6 $ff
	ld sp, $3fde                                     ; $63d2: $31 $de $3f
	rst SubAFromDE                                          ; $63d5: $df
	cp h                                             ; $63d6: $bc
	sbc e                                            ; $63d7: $9b
	ld [hl], e                                       ; $63d8: $73
	ld [hl], c                                       ; $63d9: $71
	rst AddAOntoHL                                          ; $63da: $ef
	and $2b                                          ; $63db: $e6 $2b
	jr nz, jr_065_637d                               ; $63dd: $20 $9e

	jr nz, jr_065_6448                               ; $63df: $20 $67

	jr nz, jr_065_643a                               ; $63e1: $20 $57

	ld b, b                                          ; $63e3: $40
	sub a                                            ; $63e4: $97
	rst $38                                          ; $63e5: $ff
	nop                                              ; $63e6: $00
	rst $38                                          ; $63e7: $ff
	ldh a, [$3f]                                     ; $63e8: $f0 $3f
	ld a, b                                          ; $63ea: $78
	ld l, [hl]                                       ; $63eb: $6e
	ld hl, sp+$57                                    ; $63ec: $f8 $57

jr_065_63ee:
	ld b, b                                          ; $63ee: $40
	ld b, e                                          ; $63ef: $43
	ld h, b                                          ; $63f0: $60
	sbc l                                            ; $63f1: $9d
	db $fc                                           ; $63f2: $fc
	ld a, c                                          ; $63f3: $79
	dec de                                           ; $63f4: $1b
	ld h, b                                          ; $63f5: $60
	ld a, a                                          ; $63f6: $7f
	cp h                                             ; $63f7: $bc
	ld a, a                                          ; $63f8: $7f
	ld e, [hl]                                       ; $63f9: $5e
	sbc b                                            ; $63fa: $98
	ld [hl], $79                                     ; $63fb: $36 $79
	db $ed                                           ; $63fd: $ed
	db $fd                                           ; $63fe: $fd

Call_065_63ff:
	add hl, hl                                       ; $63ff: $29
	pop hl                                           ; $6400: $e1
	pop de                                           ; $6401: $d1
	ld l, e                                          ; $6402: $6b
	ld h, b                                          ; $6403: $60
	ld c, a                                          ; $6404: $4f
	add b                                            ; $6405: $80
	sub a                                            ; $6406: $97
	ld [hl], a                                       ; $6407: $77
	ret z                                            ; $6408: $c8

	sub [hl]                                         ; $6409: $96
	sbc c                                            ; $640a: $99
	push hl                                          ; $640b: $e5
	ld a, e                                          ; $640c: $7b
	and $ef                                          ; $640d: $e6 $ef
	inc hl                                           ; $640f: $23
	add b                                            ; $6410: $80
	sub [hl]                                         ; $6411: $96
	nop                                              ; $6412: $00
	rst AddAOntoHL                                          ; $6413: $ef
	ldh a, [$fe]                                     ; $6414: $f0 $fe
	ld hl, sp+$2c                                    ; $6416: $f8 $2c
	ld a, b                                          ; $6418: $78
	ret z                                            ; $6419: $c8

	ldh [rAUD3LEN], a                                ; $641a: $e0 $1b
	add b                                            ; $641c: $80
	sbc h                                            ; $641d: $9c
	add h                                            ; $641e: $84
	call $1f01                                       ; $641f: $cd $01 $1f
	add b                                            ; $6422: $80
	ld [hl], a                                       ; $6423: $77
	ld a, [hl]                                       ; $6424: $7e
	sbc c                                            ; $6425: $99
	push af                                          ; $6426: $f5
	ld sp, hl                                        ; $6427: $f9
	dec l                                            ; $6428: $2d
	ld a, l                                          ; $6429: $7d
	pop de                                           ; $642a: $d1
	pop hl                                           ; $642b: $e1
	cpl                                              ; $642c: $2f
	add b                                            ; $642d: $80
	sbc d                                            ; $642e: $9a
	sub a                                            ; $642f: $97
	sbc b                                            ; $6430: $98
	and $7a                                          ; $6431: $e6 $7a
	rst SubAFromBC                                          ; $6433: $e7
	rra                                              ; $6434: $1f
	nop                                              ; $6435: $00
	cp a                                             ; $6436: $bf
	rst $38                                          ; $6437: $ff
	ld a, [hl]                                       ; $6438: $7e
	sbc l                                            ; $6439: $9d

jr_065_643a:
	inc c                                            ; $643a: $0c
	db $fc                                           ; $643b: $fc
	sbc $f8                                          ; $643c: $de $f8
	inc bc                                           ; $643e: $03
	add b                                            ; $643f: $80
	inc hl                                           ; $6440: $23
	add b                                            ; $6441: $80
	ld a, a                                          ; $6442: $7f
	cp $9c                                           ; $6443: $fe $9c
	db $fd                                           ; $6445: $fd
	dec c                                            ; $6446: $0d
	db $fd                                           ; $6447: $fd

jr_065_6448:
	sbc $f9                                          ; $6448: $de $f9
	ld l, a                                          ; $644a: $6f
	add b                                            ; $644b: $80
	rst $38                                          ; $644c: $ff
	sbc d                                            ; $644d: $9a
	ld hl, sp+$50                                    ; $644e: $f8 $50
	ldh a, [$60]                                     ; $6450: $f0 $60
	ld h, b                                          ; $6452: $60
	cp a                                             ; $6453: $bf
	ld bc, $8103                                     ; $6454: $01 $03 $81
	ld bc, $070f                                     ; $6457: $01 $0f $07
	ccf                                              ; $645a: $3f
	rra                                              ; $645b: $1f
	cp $f7                                           ; $645c: $fe $f7
	rst $38                                          ; $645e: $ff
	rlca                                             ; $645f: $07
	ld a, a                                          ; $6460: $7f
	rlca                                             ; $6461: $07
	inc a                                            ; $6462: $3c
	inc b                                            ; $6463: $04
	inc e                                            ; $6464: $1c
	inc b                                            ; $6465: $04
	rrca                                             ; $6466: $0f
	rlca                                             ; $6467: $07
	ld c, $06                                        ; $6468: $0e $06
	rrca                                             ; $646a: $0f
	dec b                                            ; $646b: $05
	nop                                              ; $646c: $00
	nop                                              ; $646d: $00
	ld a, b                                          ; $646e: $78
	jr nc, jr_065_64e9                               ; $646f: $30 $78

	ld d, b                                          ; $6471: $50
	ld [hl], b                                       ; $6472: $70
	ld h, b                                          ; $6473: $60
	ld h, c                                          ; $6474: $61
	rra                                              ; $6475: $1f
	ldh [$9b], a                                     ; $6476: $e0 $9b
	ld [hl], b                                       ; $6478: $70
	ld hl, sp-$70                                    ; $6479: $f8 $90
	ldh a, [rAUD3LEN]                                ; $647b: $f0 $1b
	ldh [hDisp1_WX], a                                     ; $647d: $e0 $96
	ld hl, sp+$70                                    ; $647f: $f8 $70
	ret c                                            ; $6481: $d8

	sub b                                            ; $6482: $90
	ret nc                                           ; $6483: $d0

	sub b                                            ; $6484: $90
	ld [hl], c                                       ; $6485: $71
	ld h, b                                          ; $6486: $60
	ld h, e                                          ; $6487: $63
	inc sp                                           ; $6488: $33
	ldh [hDisp1_SCY], a                                     ; $6489: $e0 $90
	ld bc, $1880                                     ; $648b: $01 $80 $18
	rst $38                                          ; $648e: $ff
	ld sp, $52ff                                     ; $648f: $31 $ff $52
	rst $38                                          ; $6492: $ff
	and a                                            ; $6493: $a7
	db $fc                                           ; $6494: $fc
	inc l                                            ; $6495: $2c
	ei                                               ; $6496: $fb
	ld e, e                                          ; $6497: $5b
	db $f4                                           ; $6498: $f4
	ld [hl], a                                       ; $6499: $77
	jp hl                                            ; $649a: $e9


	halt                                             ; $649b: $76
	rst GetHLinHL                                          ; $649c: $cf
	sub d                                            ; $649d: $92
	sbc d                                            ; $649e: $9a
	pop hl                                           ; $649f: $e1
	ld a, c                                          ; $64a0: $79
	push hl                                          ; $64a1: $e5
	jp hl                                            ; $64a2: $e9


	db $e4                                           ; $64a3: $e4
	jr nz, @-$1a                                     ; $64a4: $20 $e4

	jr nz, jr_065_650a                               ; $64a6: $20 $62

	jr nz, jr_065_643a                               ; $64a8: $20 $90

	nop                                              ; $64aa: $00
	ldh a, [$80]                                     ; $64ab: $f0 $80
	ldh [$b8], a                                     ; $64ad: $e0 $b8
	ldh a, [$bc]                                     ; $64af: $f0 $bc
	ld hl, sp+$7c                                    ; $64b1: $f8 $7c
	cp h                                             ; $64b3: $bc
	ld a, a                                          ; $64b4: $7f
	cp [hl]                                          ; $64b5: $be
	ld l, a                                          ; $64b6: $6f
	cp a                                             ; $64b7: $bf
	ld l, a                                          ; $64b8: $6f
	cp a                                             ; $64b9: $bf
	ld e, e                                          ; $64ba: $5b
	xor a                                            ; $64bb: $af
	db $db                                           ; $64bc: $db
	xor a                                            ; $64bd: $af
	rst SubAFromHL                                          ; $64be: $d7
	xor e                                            ; $64bf: $ab
	rst SubAFromHL                                          ; $64c0: $d7
	xor e                                            ; $64c1: $ab
	rst $38                                          ; $64c2: $ff
	rst $38                                          ; $64c3: $ff
	rst GetHLinHL                                          ; $64c4: $cf
	add e                                            ; $64c5: $83
	db $e3                                           ; $64c6: $e3
	ld h, c                                          ; $64c7: $61
	cp a                                             ; $64c8: $bf
	rra                                              ; $64c9: $1f
	rst $38                                          ; $64ca: $ff
	add c                                            ; $64cb: $81
	add b                                            ; $64cc: $80
	rst $38                                          ; $64cd: $ff
	di                                               ; $64ce: $f3
	ret z                                            ; $64cf: $c8

	cp a                                             ; $64d0: $bf
	ret                                              ; $64d1: $c9


	rst $38                                          ; $64d2: $ff
	dec de                                           ; $64d3: $1b
	or $bf                                           ; $64d4: $f6 $bf
	ld h, h                                          ; $64d6: $64
	ld bc, $fefe                                     ; $64d7: $01 $fe $fe
	pop hl                                           ; $64da: $e1
	cp a                                             ; $64db: $bf
	ldh a, [$1f]                                     ; $64dc: $f0 $1f
	jr c, jr_065_650f                                ; $64de: $38 $2f

	ld [hl], b                                       ; $64e0: $70
	halt                                             ; $64e1: $76
	ldh [rAUDVOL], a                                 ; $64e2: $e0 $24
	ldh [$c8], a                                     ; $64e4: $e0 $c8
	ldh a, [$f1]                                     ; $64e6: $f0 $f1
	nop                                              ; $64e8: $00

jr_065_64e9:
	inc bc                                           ; $64e9: $03
	nop                                              ; $64ea: $00
	cp $f6                                           ; $64eb: $fe $f6
	adc a                                            ; $64ed: $8f
	ret nz                                           ; $64ee: $c0

jr_065_64ef:
	add b                                            ; $64ef: $80
	ldh a, [$e0]                                     ; $64f0: $f0 $e0
	ld a, h                                          ; $64f2: $7c
	ld hl, sp-$41                                    ; $64f3: $f8 $bf
	and $bf                                          ; $64f5: $e6 $bf
	pop af                                           ; $64f7: $f1
	ret c                                            ; $64f8: $d8

	ld [hl], b                                       ; $64f9: $70
	ret c                                            ; $64fa: $d8

	jr nc, @-$16                                     ; $64fb: $30 $e8

	jr c, jr_065_657a                                ; $64fd: $38 $7b

	cp $9d                                           ; $64ff: $fe $9d
	jr jr_065_64ef                                   ; $6501: $18 $ec

	ld a, e                                          ; $6503: $7b

jr_065_6504:
	cp $80                                           ; $6504: $fe $80
	adc h                                            ; $6506: $8c
	ei                                               ; $6507: $fb
	adc h                                            ; $6508: $8c
	ld a, e                                          ; $6509: $7b

jr_065_650a:
	sbc h                                            ; $650a: $9c
	ld [hl], e                                       ; $650b: $73
	dec e                                            ; $650c: $1d
	di                                               ; $650d: $f3
	dec sp                                           ; $650e: $3b

jr_065_650f:
	and $fc                                          ; $650f: $e6 $fc
	rst JumpTable                                          ; $6511: $c7
	ld a, c                                          ; $6512: $79
	add [hl]                                         ; $6513: $86
	inc bc                                           ; $6514: $03
	add l                                            ; $6515: $85
	inc bc                                           ; $6516: $03
	db $fd                                           ; $6517: $fd
	ld a, b                                          ; $6518: $78
	add h                                            ; $6519: $84
	db $dd                                           ; $651a: $dd
	ld bc, $018d                                     ; $651b: $01 $8d $01
	sub l                                            ; $651e: $95
	nop                                              ; $651f: $00
	jr @+$12                                         ; $6520: $18 $10

	inc a                                            ; $6522: $3c
	stop                                             ; $6523: $10 $00
	add b                                            ; $6525: $80
	nop                                              ; $6526: $00
	rst FarCall                                          ; $6527: $f7
	sbc a                                            ; $6528: $9f
	rst FarCall                                          ; $6529: $f7
	db $fd                                           ; $652a: $fd
	rrca                                             ; $652b: $0f
	db $fd                                           ; $652c: $fd
	rst $38                                          ; $652d: $ff
	dec c                                            ; $652e: $0d
	rst FarCall                                          ; $652f: $f7
	dec c                                            ; $6530: $0d
	ld bc, $fcff                                     ; $6531: $01 $ff $fc
	db $e3                                           ; $6534: $e3
	ld a, $f1                                        ; $6535: $3e $f1
	ld l, $3d                                        ; $6537: $2e $3d
	ld h, $69                                        ; $6539: $26 $69
	ld l, l                                          ; $653b: $6d
	pop hl                                           ; $653c: $e1
	add hl, hl                                       ; $653d: $29
	pop hl                                           ; $653e: $e1
	pop af                                           ; $653f: $f1
	pop bc                                           ; $6540: $c1
	pop af                                           ; $6541: $f1
	ld bc, $0303                                     ; $6542: $01 $03 $03
	add [hl]                                         ; $6545: $86
	rst $38                                          ; $6546: $ff
	rlca                                             ; $6547: $07
	ld a, $07                                        ; $6548: $3e $07
	ccf                                              ; $654a: $3f
	rrca                                             ; $654b: $0f
	ld a, a                                          ; $654c: $7f
	rra                                              ; $654d: $1f
	ldh a, [$3f]                                     ; $654e: $f0 $3f
	ldh a, [$7f]                                     ; $6550: $f0 $7f
	ldh [rIE], a                                     ; $6552: $e0 $ff
	or b                                             ; $6554: $b0
	rst $38                                          ; $6555: $ff
	call z, Call_065_63ff                            ; $6556: $cc $ff $63
	rst $38                                          ; $6559: $ff
	jr @+$01                                         ; $655a: $18 $ff

	add $ff                                          ; $655c: $c6 $ff
	ld sp, $3fde                                     ; $655e: $31 $de $3f
	rst SubAFromDE                                          ; $6561: $df
	cp h                                             ; $6562: $bc
	sbc e                                            ; $6563: $9b
	ld [hl], e                                       ; $6564: $73
	ld [hl], c                                       ; $6565: $71
	rst AddAOntoHL                                          ; $6566: $ef
	and $57                                          ; $6567: $e6 $57
	jr nz, jr_065_6504                               ; $6569: $20 $99

	halt                                             ; $656b: $76
	jp hl                                            ; $656c: $e9


	ld [hl], l                                       ; $656d: $75
	res 2, [hl]                                      ; $656e: $cb $96
	sbc [hl]                                         ; $6570: $9e
	ld c, a                                          ; $6571: $4f
	jr nz, jr_065_65cf                               ; $6572: $20 $5b

	ld b, b                                          ; $6574: $40
	ld a, a                                          ; $6575: $7f
	sbc a                                            ; $6576: $9f
	ld [hl], a                                       ; $6577: $77
	ld b, b                                          ; $6578: $40
	sbc h                                            ; $6579: $9c

jr_065_657a:
	ld a, b                                          ; $657a: $78
	ld h, [hl]                                       ; $657b: $66
	ldh a, [$57]                                     ; $657c: $f0 $57
	ld b, b                                          ; $657e: $40
	ld c, e                                          ; $657f: $4b
	ld h, b                                          ; $6580: $60
	sbc [hl]                                         ; $6581: $9e
	add h                                            ; $6582: $84
	inc de                                           ; $6583: $13
	ld h, b                                          ; $6584: $60
	sub [hl]                                         ; $6585: $96
	inc bc                                           ; $6586: $03
	xor $f1                                          ; $6587: $ee $f1
	ld d, $39                                        ; $6589: $16 $39
	ld l, $7d                                        ; $658b: $2e $7d
	ld h, l                                          ; $658d: $65
	jp hl                                            ; $658e: $e9


	ld e, a                                          ; $658f: $5f
	ld h, b                                          ; $6590: $60
	ld d, d                                          ; $6591: $52
	and b                                            ; $6592: $a0
	sbc b                                            ; $6593: $98
	add sp, $76                                      ; $6594: $e8 $76
	ret                                              ; $6596: $c9


	sub l                                            ; $6597: $95
	sbc e                                            ; $6598: $9b
	rst SubAFromBC                                          ; $6599: $e7
	ld a, a                                          ; $659a: $7f
	inc hl                                           ; $659b: $23
	add b                                            ; $659c: $80
	sbc b                                            ; $659d: $98
	nop                                              ; $659e: $00
	rst $38                                          ; $659f: $ff
	ldh a, [$3f]                                     ; $65a0: $f0 $3f
	ld a, b                                          ; $65a2: $78
	xor $f8                                          ; $65a3: $ee $f8
	rrca                                             ; $65a5: $0f
	add b                                            ; $65a6: $80
	sbc l                                            ; $65a7: $9d
	ld a, d                                          ; $65a8: $7a
	add [hl]                                         ; $65a9: $86
	rra                                              ; $65aa: $1f
	add b                                            ; $65ab: $80
	ld a, a                                          ; $65ac: $7f
	cp h                                             ; $65ad: $bc
	ld a, a                                          ; $65ae: $7f
	ld a, [hl]                                       ; $65af: $7e
	sbc e                                            ; $65b0: $9b
	ld [hl], $79                                     ; $65b1: $36 $79
	db $ed                                           ; $65b3: $ed
	db $fd                                           ; $65b4: $fd
	daa                                              ; $65b5: $27
	add b                                            ; $65b6: $80
	sbc c                                            ; $65b7: $99
	ld [hl], a                                       ; $65b8: $77
	ret z                                            ; $65b9: $c8

jr_065_65ba:
	sub a                                            ; $65ba: $97
	sbc b                                            ; $65bb: $98
	and $7a                                          ; $65bc: $e6 $7a
	dec de                                           ; $65be: $1b
	add b                                            ; $65bf: $80
	ld a, e                                          ; $65c0: $7b
	cp $9a                                           ; $65c1: $fe $9a
	ld a, [hl]                                       ; $65c3: $7e
	jr jr_065_65ba                                   ; $65c4: $18 $f4

	ldh a, [$f8]                                     ; $65c6: $f0 $f8
	rra                                              ; $65c8: $1f
	add b                                            ; $65c9: $80

jr_065_65ca:
	sbc l                                            ; $65ca: $9d
	db $fc                                           ; $65cb: $fc
	ld a, e                                          ; $65cc: $7b
	dec de                                           ; $65cd: $1b
	nop                                              ; $65ce: $00

jr_065_65cf:
	ld a, a                                          ; $65cf: $7f
	cp h                                             ; $65d0: $bc
	ld [hl], a                                       ; $65d1: $77
	cp $9c                                           ; $65d2: $fe $9c
	dec a                                            ; $65d4: $3d
	add hl, de                                       ; $65d5: $19
	ld sp, hl                                        ; $65d6: $f9
	db $dd                                           ; $65d7: $dd
	pop af                                           ; $65d8: $f1
	ld [hl], e                                       ; $65d9: $73
	add b                                            ; $65da: $80
	add b                                            ; $65db: $80
	ret nz                                           ; $65dc: $c0

	nop                                              ; $65dd: $00
	ld hl, sp+$50                                    ; $65de: $f8 $50
	ld [hl], b                                       ; $65e0: $70
	jr nz, jr_065_6613                               ; $65e1: $20 $30

	nop                                              ; $65e3: $00
	ld bc, $0300                                     ; $65e4: $01 $00 $03
	ld bc, $070f                                     ; $65e7: $01 $0f $07
	ccf                                              ; $65ea: $3f
	rra                                              ; $65eb: $1f
	cp $f7                                           ; $65ec: $fe $f7
	rst $38                                          ; $65ee: $ff
	rlca                                             ; $65ef: $07
	ld a, a                                          ; $65f0: $7f
	rlca                                             ; $65f1: $07
	inc a                                            ; $65f2: $3c
	inc b                                            ; $65f3: $04
	inc e                                            ; $65f4: $1c
	inc b                                            ; $65f5: $04
	rrca                                             ; $65f6: $0f
	rlca                                             ; $65f7: $07
	ld c, $06                                        ; $65f8: $0e $06
	rrca                                             ; $65fa: $0f
	sbc [hl]                                         ; $65fb: $9e
	dec b                                            ; $65fc: $05
	ld a, e                                          ; $65fd: $7b
	ldh [$9b], a                                     ; $65fe: $e0 $9b
	ret nc                                           ; $6600: $d0

	ldh a, [$60]                                     ; $6601: $f0 $60
	ld h, b                                          ; $6603: $60
	rrca                                             ; $6604: $0f
	ldh [$9b], a                                     ; $6605: $e0 $9b
	sub b                                            ; $6607: $90
	ldh a, [$60]                                     ; $6608: $f0 $60
	ld h, c                                          ; $660a: $61
	ld l, e                                          ; $660b: $6b
	ldh [$9b], a                                     ; $660c: $e0 $9b
	ldh a, [$d0]                                     ; $660e: $f0 $d0
	ret nc                                           ; $6610: $d0

	sub b                                            ; $6611: $90
	ld [hl], a                                       ; $6612: $77

jr_065_6613:
	cp $9c                                           ; $6613: $fe $9c
	pop af                                           ; $6615: $f1
	ld h, b                                          ; $6616: $60
	ld h, e                                          ; $6617: $63
	inc sp                                           ; $6618: $33
	ret nc                                           ; $6619: $d0

jr_065_661a:
	sub l                                            ; $661a: $95
	ld bc, $1880                                     ; $661b: $01 $80 $18
	rst $38                                          ; $661e: $ff
	ld sp, $52ff                                     ; $661f: $31 $ff $52
	rst $38                                          ; $6622: $ff
	and a                                            ; $6623: $a7
	db $fc                                           ; $6624: $fc
	inc l                                            ; $6625: $2c
	ei                                               ; $6626: $fb
	ld e, e                                          ; $6627: $5b
	db $f4                                           ; $6628: $f4
	halt                                             ; $6629: $76
	jp hl                                            ; $662a: $e9


	ld [hl], l                                       ; $662b: $75
	res 2, [hl]                                      ; $662c: $cb $96
	sbc [hl]                                         ; $662e: $9e
	pop hl                                           ; $662f: $e1
	ld a, c                                          ; $6630: $79
	push hl                                          ; $6631: $e5
	jp hl                                            ; $6632: $e9


	db $e4                                           ; $6633: $e4
	jr nz, jr_065_661a                               ; $6634: $20 $e4

	jr nz, jr_065_669a                               ; $6636: $20 $62

	jr nz, jr_065_65ca                               ; $6638: $20 $90

	nop                                              ; $663a: $00
	ldh a, [$80]                                     ; $663b: $f0 $80
	ldh [$b8], a                                     ; $663d: $e0 $b8
	ldh a, [$bc]                                     ; $663f: $f0 $bc
	ld hl, sp+$7c                                    ; $6641: $f8 $7c
	cp h                                             ; $6643: $bc
	ld a, a                                          ; $6644: $7f
	cp [hl]                                          ; $6645: $be
	ld l, a                                          ; $6646: $6f
	cp a                                             ; $6647: $bf
	ld l, a                                          ; $6648: $6f
	cp a                                             ; $6649: $bf
	ld e, e                                          ; $664a: $5b
	xor a                                            ; $664b: $af
	db $db                                           ; $664c: $db
	xor a                                            ; $664d: $af
	rst SubAFromHL                                          ; $664e: $d7
	xor e                                            ; $664f: $ab
	rst SubAFromHL                                          ; $6650: $d7
	xor e                                            ; $6651: $ab
	rst $38                                          ; $6652: $ff
	rst $38                                          ; $6653: $ff
	rst GetHLinHL                                          ; $6654: $cf
	add e                                            ; $6655: $83
	db $e3                                           ; $6656: $e3
	ld h, c                                          ; $6657: $61
	cp a                                             ; $6658: $bf
	rra                                              ; $6659: $1f
	rst $38                                          ; $665a: $ff
	add c                                            ; $665b: $81
	add b                                            ; $665c: $80
	rst $38                                          ; $665d: $ff
	di                                               ; $665e: $f3
	ret z                                            ; $665f: $c8

	cp a                                             ; $6660: $bf
	ret                                              ; $6661: $c9


	rst $38                                          ; $6662: $ff
	dec de                                           ; $6663: $1b
	or $bf                                           ; $6664: $f6 $bf
	ld h, h                                          ; $6666: $64
	ld bc, $fefe                                     ; $6667: $01 $fe $fe
	ld bc, $f0ff                                     ; $666a: $01 $ff $f0
	rra                                              ; $666d: $1f
	jr c, jr_065_669f                                ; $666e: $38 $2f

	ld a, b                                          ; $6670: $78
	ld h, [hl]                                       ; $6671: $66
	ldh a, [rAUDVOL]                                 ; $6672: $f0 $24
	ldh [$c8], a                                     ; $6674: $e0 $c8
	ldh a, [$f1]                                     ; $6676: $f0 $f1
	nop                                              ; $6678: $00
	inc bc                                           ; $6679: $03
	nop                                              ; $667a: $00
	cp $f6                                           ; $667b: $fe $f6
	adc a                                            ; $667d: $8f
	ret nz                                           ; $667e: $c0

jr_065_667f:
	add b                                            ; $667f: $80
	ldh a, [$e0]                                     ; $6680: $f0 $e0
	ld a, h                                          ; $6682: $7c
	ld hl, sp-$41                                    ; $6683: $f8 $bf
	and $bf                                          ; $6685: $e6 $bf
	pop af                                           ; $6687: $f1
	ret c                                            ; $6688: $d8

	ld [hl], b                                       ; $6689: $70
	ret c                                            ; $668a: $d8

	jr nc, @-$16                                     ; $668b: $30 $e8

	jr c, jr_065_670a                                ; $668d: $38 $7b

	cp $9d                                           ; $668f: $fe $9d
	jr jr_065_667f                                   ; $6691: $18 $ec

	ld a, e                                          ; $6693: $7b
	cp $80                                           ; $6694: $fe $80
	adc h                                            ; $6696: $8c
	ei                                               ; $6697: $fb
	adc h                                            ; $6698: $8c
	ld a, e                                          ; $6699: $7b

jr_065_669a:
	sbc h                                            ; $669a: $9c
	ld [hl], e                                       ; $669b: $73
	dec e                                            ; $669c: $1d
	di                                               ; $669d: $f3
	dec sp                                           ; $669e: $3b

jr_065_669f:
	and $fc                                          ; $669f: $e6 $fc
	rst JumpTable                                          ; $66a1: $c7
	ld a, c                                          ; $66a2: $79
	add [hl]                                         ; $66a3: $86
	inc bc                                           ; $66a4: $03
	add h                                            ; $66a5: $84
	inc bc                                           ; $66a6: $03
	db $fd                                           ; $66a7: $fd
	ld a, b                                          ; $66a8: $78
	add h                                            ; $66a9: $84
	db $dd                                           ; $66aa: $dd
	ld bc, $018d                                     ; $66ab: $01 $8d $01
	sub l                                            ; $66ae: $95
	nop                                              ; $66af: $00
	jr @+$12                                         ; $66b0: $18 $10

	inc a                                            ; $66b2: $3c
	stop                                             ; $66b3: $10 $00
	add b                                            ; $66b5: $80
	nop                                              ; $66b6: $00
	rst FarCall                                          ; $66b7: $f7
	sbc a                                            ; $66b8: $9f
	rst FarCall                                          ; $66b9: $f7
	db $fd                                           ; $66ba: $fd
	rrca                                             ; $66bb: $0f
	db $fd                                           ; $66bc: $fd
	rst $38                                          ; $66bd: $ff
	dec c                                            ; $66be: $0d
	rst FarCall                                          ; $66bf: $f7
	dec c                                            ; $66c0: $0d
	ld bc, $fcff                                     ; $66c1: $01 $ff $fc
	inc bc                                           ; $66c4: $03
	xor $f1                                          ; $66c5: $ee $f1
	ld e, $39                                        ; $66c7: $1e $39
	ld l, $7d                                        ; $66c9: $2e $7d
	ld h, l                                          ; $66cb: $65
	jp hl                                            ; $66cc: $e9


	add hl, hl                                       ; $66cd: $29
	pop hl                                           ; $66ce: $e1
	pop af                                           ; $66cf: $f1
	pop bc                                           ; $66d0: $c1
	pop af                                           ; $66d1: $f1
	ld bc, $0303                                     ; $66d2: $01 $03 $03
	add [hl]                                         ; $66d5: $86
	rst $38                                          ; $66d6: $ff
	rlca                                             ; $66d7: $07
	ld a, $07                                        ; $66d8: $3e $07
	ccf                                              ; $66da: $3f

Call_065_66db:
	rrca                                             ; $66db: $0f
	ld a, a                                          ; $66dc: $7f
	rra                                              ; $66dd: $1f
	ldh a, [$3f]                                     ; $66de: $f0 $3f
	ldh a, [$7f]                                     ; $66e0: $f0 $7f
	ldh [rIE], a                                     ; $66e2: $e0 $ff
	or b                                             ; $66e4: $b0
	rst $38                                          ; $66e5: $ff
	call z, Call_065_63ff                            ; $66e6: $cc $ff $63
	rst $38                                          ; $66e9: $ff
	jr @+$01                                         ; $66ea: $18 $ff

	add $ff                                          ; $66ec: $c6 $ff
	ld sp, $3fde                                     ; $66ee: $31 $de $3f
	rst SubAFromDE                                          ; $66f1: $df
	cp h                                             ; $66f2: $bc
	sbc e                                            ; $66f3: $9b
	ld [hl], e                                       ; $66f4: $73
	ld [hl], c                                       ; $66f5: $71
	rst AddAOntoHL                                          ; $66f6: $ef
	and $57                                          ; $66f7: $e6 $57
	jr nz, @-$67                                     ; $66f9: $20 $97

	ld [hl], a                                       ; $66fb: $77
	add sp, $76                                      ; $66fc: $e8 $76
	ret                                              ; $66fe: $c9


	sub l                                            ; $66ff: $95
	sbc e                                            ; $6700: $9b
	and $7e                                          ; $6701: $e6 $7e
	ld d, a                                          ; $6703: $57
	jr nz, jr_065_6759                               ; $6704: $20 $53

	ld b, b                                          ; $6706: $40
	sbc [hl]                                         ; $6707: $9e
	nop                                              ; $6708: $00
	ld a, e                                          ; $6709: $7b

jr_065_670a:
	ld a, $9c                                        ; $670a: $3e $9c
	cp b                                             ; $670c: $b8
	ld l, [hl]                                       ; $670d: $6e
	ld a, b                                          ; $670e: $78
	ld d, a                                          ; $670f: $57
	ld b, b                                          ; $6710: $40
	ld b, e                                          ; $6711: $43
	ld h, b                                          ; $6712: $60
	sbc d                                            ; $6713: $9a
	db $fc                                           ; $6714: $fc
	ld a, e                                          ; $6715: $7b
	add l                                            ; $6716: $85
	call c, $2700                                    ; $6717: $dc $00 $27
	ld h, b                                          ; $671a: $60
	ld a, a                                          ; $671b: $7f
	cp h                                             ; $671c: $bc
	ld a, e                                          ; $671d: $7b
	ld e, [hl]                                       ; $671e: $5e
	sbc h                                            ; $671f: $9c
	cp c                                             ; $6720: $b9
	ld l, l                                          ; $6721: $6d
	ld a, l                                          ; $6722: $7d
	ld e, a                                          ; $6723: $5f
	ld h, b                                          ; $6724: $60
	ld c, a                                          ; $6725: $4f
	add b                                            ; $6726: $80
	sub a                                            ; $6727: $97
	ld [hl], a                                       ; $6728: $77
	ret z                                            ; $6729: $c8

	sub a                                            ; $672a: $97
	sbc c                                            ; $672b: $99
	rst SubAFromBC                                          ; $672c: $e7
	ld a, e                                          ; $672d: $7b
	push hl                                          ; $672e: $e5
	rst AddAOntoHL                                          ; $672f: $ef
	ccf                                              ; $6730: $3f
	add b                                            ; $6731: $80
	sbc [hl]                                         ; $6732: $9e
	pop bc                                           ; $6733: $c1
	ld l, a                                          ; $6734: $6f
	add b                                            ; $6735: $80
	ld a, e                                          ; $6736: $7b
	ld a, [hl]                                       ; $6737: $7e
	sbc c                                            ; $6738: $99
	cp $f8                                           ; $6739: $fe $f8
	inc h                                            ; $673b: $24
	ld [hl], b                                       ; $673c: $70
	ret z                                            ; $673d: $c8

	ldh [rAUD3LEN], a                                ; $673e: $e0 $1b
	add b                                            ; $6740: $80
	ld a, [de]                                       ; $6741: $1a
	ldh [$7f], a                                     ; $6742: $e0 $7f
	cp h                                             ; $6744: $bc
	ld a, e                                          ; $6745: $7b
	cp $99                                           ; $6746: $fe $99
	pop af                                           ; $6748: $f1
	db $fd                                           ; $6749: $fd
	db $fd                                           ; $674a: $fd
	add hl, hl                                       ; $674b: $29
	ld [hl], c                                       ; $674c: $71
	pop de                                           ; $674d: $d1
	daa                                              ; $674e: $27
	add b                                            ; $674f: $80
	sbc e                                            ; $6750: $9b
	sbc b                                            ; $6751: $98
	and $7a                                          ; $6752: $e6 $7a
	rst SubAFromBC                                          ; $6754: $e7
	dec sp                                           ; $6755: $3b
	nop                                              ; $6756: $00
	ld h, e                                          ; $6757: $63
	add b                                            ; $6758: $80

jr_065_6759:
	sbc e                                            ; $6759: $9b
	nop                                              ; $675a: $00
	ld a, [hl]                                       ; $675b: $7e
	inc b                                            ; $675c: $04
	db $fc                                           ; $675d: $fc
	sbc $f8                                          ; $675e: $de $f8
	rla                                              ; $6760: $17
	add b                                            ; $6761: $80
	rla                                              ; $6762: $17
	nop                                              ; $6763: $00
	ld [hl], a                                       ; $6764: $77
	cp $99                                           ; $6765: $fe $99
	ld a, c                                          ; $6767: $79
	add hl, de                                       ; $6768: $19
	ld sp, hl                                        ; $6769: $f9
	pop af                                           ; $676a: $f1
	pop af                                           ; $676b: $f1
	pop hl                                           ; $676c: $e1
	ld l, a                                          ; $676d: $6f
	add b                                            ; $676e: $80
	add b                                            ; $676f: $80
	ret nz                                           ; $6770: $c0

	nop                                              ; $6771: $00
	ret c                                            ; $6772: $d8

	ld [hl], b                                       ; $6773: $70
	ld d, b                                          ; $6774: $50
	nop                                              ; $6775: $00
	jr nc, jr_065_6778                               ; $6776: $30 $00

jr_065_6778:
	ld bc, $0300                                     ; $6778: $01 $00 $03
	ld bc, $070f                                     ; $677b: $01 $0f $07
	ccf                                              ; $677e: $3f
	rra                                              ; $677f: $1f
	cp $f7                                           ; $6780: $fe $f7
	rst $38                                          ; $6782: $ff
	rlca                                             ; $6783: $07
	ld a, a                                          ; $6784: $7f
	rlca                                             ; $6785: $07
	inc a                                            ; $6786: $3c
	inc b                                            ; $6787: $04
	inc e                                            ; $6788: $1c
	inc b                                            ; $6789: $04
	rrca                                             ; $678a: $0f
	rlca                                             ; $678b: $07
	ld c, $06                                        ; $678c: $0e $06
	rrca                                             ; $678e: $0f
	sbc [hl]                                         ; $678f: $9e
	dec b                                            ; $6790: $05
	ld a, e                                          ; $6791: $7b
	ldh [$df], a                                     ; $6792: $e0 $df
	ldh a, [$df]                                     ; $6794: $f0 $df
	ld h, b                                          ; $6796: $60
	dec de                                           ; $6797: $1b
	ldh [$df], a                                     ; $6798: $e0 $df
	add sp, -$66                                     ; $679a: $e8 $9a
	ldh a, [rLCDC]                                   ; $679c: $f0 $40
	ld [hl], b                                       ; $679e: $70
	jr nc, jr_065_67d2                               ; $679f: $30 $31

	dec hl                                           ; $67a1: $2b
	ldh [rIE], a                                     ; $67a2: $e0 $ff
	sub a                                            ; $67a4: $97
	ld hl, sp-$18                                    ; $67a5: $f8 $e8
	ld hl, sp-$78                                    ; $67a7: $f8 $88
	ldh a, [$80]                                     ; $67a9: $f0 $80
	ld h, c                                          ; $67ab: $61
	ld h, b                                          ; $67ac: $60
	cpl                                              ; $67ad: $2f
	ldh [hDisp1_OBP0], a                                     ; $67ae: $e0 $93
	ld bc, $1880                                     ; $67b0: $01 $80 $18
	rst $38                                          ; $67b3: $ff
	ld sp, $52ff                                     ; $67b4: $31 $ff $52
	rst $38                                          ; $67b7: $ff
	and a                                            ; $67b8: $a7
	db $fc                                           ; $67b9: $fc
	inc l                                            ; $67ba: $2c
	ei                                               ; $67bb: $fb
	ld e, e                                          ; $67bc: $5b
	db $f4                                           ; $67bd: $f4
	halt                                             ; $67be: $76
	jp hl                                            ; $67bf: $e9


	ld [hl], l                                       ; $67c0: $75
	res 2, [hl]                                      ; $67c1: $cb $96
	sbc [hl]                                         ; $67c3: $9e
	pop hl                                           ; $67c4: $e1
	ld a, c                                          ; $67c5: $79
	push hl                                          ; $67c6: $e5
	jp hl                                            ; $67c7: $e9


	db $e4                                           ; $67c8: $e4
	jr nz, @-$1a                                     ; $67c9: $20 $e4

	jr nz, jr_065_682f                               ; $67cb: $20 $62

	jr nz, @-$6e                                     ; $67cd: $20 $90

	nop                                              ; $67cf: $00
	ldh a, [$80]                                     ; $67d0: $f0 $80

jr_065_67d2:
	ldh [$b8], a                                     ; $67d2: $e0 $b8
	ldh a, [$bc]                                     ; $67d4: $f0 $bc
	ld hl, sp+$7c                                    ; $67d6: $f8 $7c
	cp h                                             ; $67d8: $bc
	ld a, a                                          ; $67d9: $7f
	cp [hl]                                          ; $67da: $be
	ld l, a                                          ; $67db: $6f
	cp a                                             ; $67dc: $bf
	ld l, a                                          ; $67dd: $6f
	cp a                                             ; $67de: $bf
	ld e, e                                          ; $67df: $5b
	xor a                                            ; $67e0: $af
	db $db                                           ; $67e1: $db
	xor a                                            ; $67e2: $af
	rst SubAFromHL                                          ; $67e3: $d7
	xor e                                            ; $67e4: $ab
	rst SubAFromHL                                          ; $67e5: $d7
	xor e                                            ; $67e6: $ab
	rst $38                                          ; $67e7: $ff
	rst $38                                          ; $67e8: $ff
	rst GetHLinHL                                          ; $67e9: $cf
	add e                                            ; $67ea: $83
	db $e3                                           ; $67eb: $e3
	ld h, c                                          ; $67ec: $61
	cp a                                             ; $67ed: $bf
	rra                                              ; $67ee: $1f
	rst $38                                          ; $67ef: $ff
	add c                                            ; $67f0: $81
	add b                                            ; $67f1: $80
	rst $38                                          ; $67f2: $ff
	di                                               ; $67f3: $f3
	ret z                                            ; $67f4: $c8

	cp a                                             ; $67f5: $bf
	ret                                              ; $67f6: $c9


	rst $38                                          ; $67f7: $ff
	dec de                                           ; $67f8: $1b
	or $bf                                           ; $67f9: $f6 $bf
	ld h, h                                          ; $67fb: $64
	pop bc                                           ; $67fc: $c1
	cp $fe                                           ; $67fd: $fe $fe

Jump_065_67ff:
	ld bc, $f0ff                                     ; $67ff: $01 $ff $f0
	rra                                              ; $6802: $1f
	jr c, jr_065_6834                                ; $6803: $38 $2f

	ld a, b                                          ; $6805: $78
	ld h, [hl]                                       ; $6806: $66
	ldh a, [rAUDVOL]                                 ; $6807: $f0 $24
	ldh [$c8], a                                     ; $6809: $e0 $c8
	ldh a, [$f1]                                     ; $680b: $f0 $f1
	nop                                              ; $680d: $00
	inc bc                                           ; $680e: $03
	nop                                              ; $680f: $00
	cp $f6                                           ; $6810: $fe $f6
	adc a                                            ; $6812: $8f
	ret nz                                           ; $6813: $c0

jr_065_6814:
	add b                                            ; $6814: $80
	ldh a, [$e0]                                     ; $6815: $f0 $e0
	ld a, h                                          ; $6817: $7c
	ld hl, sp-$41                                    ; $6818: $f8 $bf
	and $bf                                          ; $681a: $e6 $bf
	pop af                                           ; $681c: $f1
	ret c                                            ; $681d: $d8

	ld [hl], b                                       ; $681e: $70
	ret c                                            ; $681f: $d8

	jr nc, @-$16                                     ; $6820: $30 $e8

	jr c, jr_065_689f                                ; $6822: $38 $7b

	cp $9d                                           ; $6824: $fe $9d
	jr jr_065_6814                                   ; $6826: $18 $ec

	ld a, e                                          ; $6828: $7b
	cp $80                                           ; $6829: $fe $80
	adc h                                            ; $682b: $8c
	ei                                               ; $682c: $fb
	adc h                                            ; $682d: $8c
	ld a, e                                          ; $682e: $7b

jr_065_682f:
	sbc h                                            ; $682f: $9c
	ld [hl], e                                       ; $6830: $73
	dec e                                            ; $6831: $1d
	di                                               ; $6832: $f3
	dec sp                                           ; $6833: $3b

jr_065_6834:
	and $fc                                          ; $6834: $e6 $fc
	rst JumpTable                                          ; $6836: $c7
	ld a, c                                          ; $6837: $79
	add [hl]                                         ; $6838: $86
	inc bc                                           ; $6839: $03
	add h                                            ; $683a: $84
	inc bc                                           ; $683b: $03
	db $fd                                           ; $683c: $fd
	ld a, b                                          ; $683d: $78
	add h                                            ; $683e: $84
	db $dd                                           ; $683f: $dd
	ld bc, $018d                                     ; $6840: $01 $8d $01
	sub l                                            ; $6843: $95
	nop                                              ; $6844: $00
	jr @+$12                                         ; $6845: $18 $10

	inc a                                            ; $6847: $3c
	stop                                             ; $6848: $10 $00
	add b                                            ; $684a: $80
	nop                                              ; $684b: $00
	rst FarCall                                          ; $684c: $f7
	sbc a                                            ; $684d: $9f
	rst FarCall                                          ; $684e: $f7
	db $fd                                           ; $684f: $fd
	rlca                                             ; $6850: $07
	db $fd                                           ; $6851: $fd
	ld a, a                                          ; $6852: $7f
	adc l                                            ; $6853: $8d
	rst FarCall                                          ; $6854: $f7
	dec c                                            ; $6855: $0d
	ld bc, $fcff                                     ; $6856: $01 $ff $fc
	inc bc                                           ; $6859: $03
	xor $f1                                          ; $685a: $ee $f1
	ld e, $39                                        ; $685c: $1e $39
	ld l, $7d                                        ; $685e: $2e $7d
	ld h, l                                          ; $6860: $65
	jp hl                                            ; $6861: $e9


	add hl, hl                                       ; $6862: $29
	pop hl                                           ; $6863: $e1
	pop af                                           ; $6864: $f1
	pop bc                                           ; $6865: $c1
	pop af                                           ; $6866: $f1
	ld bc, $0303                                     ; $6867: $01 $03 $03
	add [hl]                                         ; $686a: $86
	rst $38                                          ; $686b: $ff
	rlca                                             ; $686c: $07
	ld a, $07                                        ; $686d: $3e $07
	ccf                                              ; $686f: $3f
	rrca                                             ; $6870: $0f
	ld a, a                                          ; $6871: $7f
	rra                                              ; $6872: $1f
	ldh a, [$3f]                                     ; $6873: $f0 $3f
	ldh a, [$7f]                                     ; $6875: $f0 $7f
	ldh [rIE], a                                     ; $6877: $e0 $ff
	or b                                             ; $6879: $b0
	rst $38                                          ; $687a: $ff
	call z, Call_065_63ff                            ; $687b: $cc $ff $63
	rst $38                                          ; $687e: $ff
	jr @+$01                                         ; $687f: $18 $ff

	add $ff                                          ; $6881: $c6 $ff
	ld sp, $3fde                                     ; $6883: $31 $de $3f
	rst SubAFromDE                                          ; $6886: $df
	cp h                                             ; $6887: $bc
	sbc e                                            ; $6888: $9b
	ld [hl], e                                       ; $6889: $73
	ld [hl], c                                       ; $688a: $71
	rst AddAOntoHL                                          ; $688b: $ef
	and $57                                          ; $688c: $e6 $57
	jr nz, @-$67                                     ; $688e: $20 $97

	ld [hl], a                                       ; $6890: $77
	add sp, $76                                      ; $6891: $e8 $76
	ret                                              ; $6893: $c9


	sub l                                            ; $6894: $95
	sbc e                                            ; $6895: $9b
	and $7e                                          ; $6896: $e6 $7e
	ld d, a                                          ; $6898: $57
	jr nz, jr_065_68ee                               ; $6899: $20 $53

	ld b, b                                          ; $689b: $40
	sbc [hl]                                         ; $689c: $9e
	nop                                              ; $689d: $00
	ld a, e                                          ; $689e: $7b

Call_065_689f:
jr_065_689f:
	ld a, $9c                                        ; $689f: $3e $9c
	cp b                                             ; $68a1: $b8
	ld l, [hl]                                       ; $68a2: $6e
	ld a, b                                          ; $68a3: $78
	ld d, a                                          ; $68a4: $57
	ld b, b                                          ; $68a5: $40
	ld b, e                                          ; $68a6: $43
	ld h, b                                          ; $68a7: $60
	sbc d                                            ; $68a8: $9a
	db $fc                                           ; $68a9: $fc
	ld a, e                                          ; $68aa: $7b
	add l                                            ; $68ab: $85
	call c, $2700                                    ; $68ac: $dc $00 $27
	ld h, b                                          ; $68af: $60
	ld a, a                                          ; $68b0: $7f
	cp h                                             ; $68b1: $bc
	ld a, e                                          ; $68b2: $7b
	ld e, [hl]                                       ; $68b3: $5e
	sbc h                                            ; $68b4: $9c
	cp c                                             ; $68b5: $b9
	ld l, l                                          ; $68b6: $6d
	ld a, l                                          ; $68b7: $7d
	ld e, a                                          ; $68b8: $5f
	ld h, b                                          ; $68b9: $60
	ld c, a                                          ; $68ba: $4f
	add b                                            ; $68bb: $80
	sub a                                            ; $68bc: $97
	ld [hl], a                                       ; $68bd: $77
	ret z                                            ; $68be: $c8

	sub [hl]                                         ; $68bf: $96
	sbc c                                            ; $68c0: $99
	push hl                                          ; $68c1: $e5
	ld a, e                                          ; $68c2: $7b
	and $ef                                          ; $68c3: $e6 $ef
	inc hl                                           ; $68c5: $23
	add b                                            ; $68c6: $80
	ld a, e                                          ; $68c7: $7b
	ld a, [hl]                                       ; $68c8: $7e
	sbc c                                            ; $68c9: $99
	cp $f8                                           ; $68ca: $fe $f8
	inc l                                            ; $68cc: $2c
	ld [hl], b                                       ; $68cd: $70
	ret z                                            ; $68ce: $c8

	ldh [rAUD3LEN], a                                ; $68cf: $e0 $1b
	add b                                            ; $68d1: $80
	sbc l                                            ; $68d2: $9d
	add h                                            ; $68d3: $84
	rst SubAFromDE                                          ; $68d4: $df
	ld [hl+], a                                      ; $68d5: $22
	ldh [$7f], a                                     ; $68d6: $e0 $7f
	cp h                                             ; $68d8: $bc
	ld [hl], a                                       ; $68d9: $77
	ld a, [hl]                                       ; $68da: $7e
	sbc d                                            ; $68db: $9a
	ld sp, hl                                        ; $68dc: $f9
	db $fd                                           ; $68dd: $fd
	add hl, hl                                       ; $68de: $29
	ld [hl], c                                       ; $68df: $71
	pop de                                           ; $68e0: $d1
	dec hl                                           ; $68e1: $2b
	add b                                            ; $68e2: $80
	sbc d                                            ; $68e3: $9a
	sub a                                            ; $68e4: $97
	sbc b                                            ; $68e5: $98
	and $7a                                          ; $68e6: $e6 $7a
	rst SubAFromBC                                          ; $68e8: $e7
	rra                                              ; $68e9: $1f
	nop                                              ; $68ea: $00
	ld a, e                                          ; $68eb: $7b
	cp $9c                                           ; $68ec: $fe $9c

jr_065_68ee:
	ld a, [hl]                                       ; $68ee: $7e
	inc b                                            ; $68ef: $04
	db $fc                                           ; $68f0: $fc
	sbc $f8                                          ; $68f1: $de $f8
	inc bc                                           ; $68f3: $03
	add b                                            ; $68f4: $80
	inc hl                                           ; $68f5: $23
	add b                                            ; $68f6: $80
	ld a, a                                          ; $68f7: $7f
	cp $99                                           ; $68f8: $fe $99
	dec a                                            ; $68fa: $3d
	add hl, bc                                       ; $68fb: $09
	ld sp, hl                                        ; $68fc: $f9
	pop af                                           ; $68fd: $f1
	pop af                                           ; $68fe: $f1
	pop hl                                           ; $68ff: $e1
	ld l, a                                          ; $6900: $6f
	add b                                            ; $6901: $80
	rst $38                                          ; $6902: $ff
	ld a, [hl]                                       ; $6903: $7e
	db $10                                           ; $6904: $10
	add b                                            ; $6905: $80
	jr jr_065_6908                                   ; $6906: $18 $00

jr_065_6908:
	jr nc, jr_065_690a                               ; $6908: $30 $00

jr_065_690a:
	ld bc, $0300                                     ; $690a: $01 $00 $03
	ld bc, $070f                                     ; $690d: $01 $0f $07
	ccf                                              ; $6910: $3f
	rra                                              ; $6911: $1f
	cp $f7                                           ; $6912: $fe $f7
	rst $38                                          ; $6914: $ff
	rlca                                             ; $6915: $07
	ld a, a                                          ; $6916: $7f
	rlca                                             ; $6917: $07
	inc a                                            ; $6918: $3c
	inc b                                            ; $6919: $04
	inc e                                            ; $691a: $1c
	inc b                                            ; $691b: $04
	rrca                                             ; $691c: $0f
	rlca                                             ; $691d: $07
	ld c, $06                                        ; $691e: $0e $06

jr_065_6920:
	rrca                                             ; $6920: $0f
	dec b                                            ; $6921: $05
	nop                                              ; $6922: $00
	nop                                              ; $6923: $00
	ld a, b                                          ; $6924: $78
	sbc d                                            ; $6925: $9a
	jr nc, jr_065_6920                               ; $6926: $30 $f8

	ld [hl], b                                       ; $6928: $70
	ld [hl], b                                       ; $6929: $70
	jr nz, jr_065_693b                               ; $692a: $20 $0f

	ldh [$9b], a                                     ; $692c: $e0 $9b
	ldh a, [rSVBK]                                   ; $692e: $f0 $70
	ld [hl], c                                       ; $6930: $71
	jr nz, jr_065_6962                               ; $6931: $20 $2f

	ldh [$9a], a                                     ; $6933: $e0 $9a
	ld [hl], b                                       ; $6935: $70
	nop                                              ; $6936: $00
	ld hl, sp+$70                                    ; $6937: $f8 $70
	ld hl, sp-$22                                    ; $6939: $f8 $de

jr_065_693b:
	ldh a, [$9c]                                     ; $693b: $f0 $9c
	pop af                                           ; $693d: $f1
	ld h, b                                          ; $693e: $60
	ld h, e                                          ; $693f: $63
	inc sp                                           ; $6940: $33
	ldh [hDisp1_OBP1], a                                     ; $6941: $e0 $94
	ld bc, $1880                                     ; $6943: $01 $80 $18
	rst $38                                          ; $6946: $ff
	ld sp, $52ff                                     ; $6947: $31 $ff $52
	rst $38                                          ; $694a: $ff
	and a                                            ; $694b: $a7
	db $fc                                           ; $694c: $fc
	inc l                                            ; $694d: $2c
	ei                                               ; $694e: $fb
	ld e, e                                          ; $694f: $5b
	db $f4                                           ; $6950: $f4
	halt                                             ; $6951: $76
	jp hl                                            ; $6952: $e9


	ld [hl], l                                       ; $6953: $75
	res 2, [hl]                                      ; $6954: $cb $96
	sbc [hl]                                         ; $6956: $9e
	pop hl                                           ; $6957: $e1
	ld a, c                                          ; $6958: $79
	push hl                                          ; $6959: $e5
	jp hl                                            ; $695a: $e9


	db $e4                                           ; $695b: $e4
	jr nz, @-$1a                                     ; $695c: $20 $e4

	jr nz, jr_065_69c2                               ; $695e: $20 $62

	jr nz, @-$6e                                     ; $6960: $20 $90

jr_065_6962:
	nop                                              ; $6962: $00
	ldh a, [$80]                                     ; $6963: $f0 $80
	ldh [$b8], a                                     ; $6965: $e0 $b8
	ldh a, [$bc]                                     ; $6967: $f0 $bc
	ld hl, sp+$7c                                    ; $6969: $f8 $7c
	cp h                                             ; $696b: $bc
	ld a, a                                          ; $696c: $7f
	cp [hl]                                          ; $696d: $be
	ld l, a                                          ; $696e: $6f
	cp a                                             ; $696f: $bf
	ld l, a                                          ; $6970: $6f
	cp a                                             ; $6971: $bf
	ld e, e                                          ; $6972: $5b
	xor a                                            ; $6973: $af
	db $db                                           ; $6974: $db
	xor a                                            ; $6975: $af
	rst SubAFromHL                                          ; $6976: $d7
	xor e                                            ; $6977: $ab
	rst SubAFromHL                                          ; $6978: $d7
	xor e                                            ; $6979: $ab
	rst $38                                          ; $697a: $ff
	rst $38                                          ; $697b: $ff
	rst GetHLinHL                                          ; $697c: $cf
	add e                                            ; $697d: $83
	db $e3                                           ; $697e: $e3
	ld h, c                                          ; $697f: $61
	cp a                                             ; $6980: $bf
	rra                                              ; $6981: $1f
	rst $38                                          ; $6982: $ff
	add c                                            ; $6983: $81
	add b                                            ; $6984: $80
	rst $38                                          ; $6985: $ff
	di                                               ; $6986: $f3
	ret z                                            ; $6987: $c8

	cp a                                             ; $6988: $bf
	ret                                              ; $6989: $c9


	rst $38                                          ; $698a: $ff
	dec de                                           ; $698b: $1b
	cp $af                                           ; $698c: $fe $af
	ld a, h                                          ; $698e: $7c
	pop bc                                           ; $698f: $c1
	cp $fe                                           ; $6990: $fe $fe
	ld bc, $f0ef                                     ; $6992: $01 $ef $f0
	rst $38                                          ; $6995: $ff
	ld hl, sp+$2f                                    ; $6996: $f8 $2f
	ld a, b                                          ; $6998: $78
	ld h, [hl]                                       ; $6999: $66
	ldh a, [rAUDVOL]                                 ; $699a: $f0 $24
	ldh [$c8], a                                     ; $699c: $e0 $c8
	ldh a, [$f1]                                     ; $699e: $f0 $f1
	nop                                              ; $69a0: $00
	inc bc                                           ; $69a1: $03
	nop                                              ; $69a2: $00
	cp $f6                                           ; $69a3: $fe $f6
	adc a                                            ; $69a5: $8f
	ret nz                                           ; $69a6: $c0

jr_065_69a7:
	add b                                            ; $69a7: $80
	ldh a, [$e0]                                     ; $69a8: $f0 $e0
	ld a, h                                          ; $69aa: $7c
	ld hl, sp-$41                                    ; $69ab: $f8 $bf
	and $bf                                          ; $69ad: $e6 $bf
	pop af                                           ; $69af: $f1
	ret c                                            ; $69b0: $d8

	ld [hl], b                                       ; $69b1: $70
	ret c                                            ; $69b2: $d8

	jr nc, @-$16                                     ; $69b3: $30 $e8

	jr c, jr_065_6a32                                ; $69b5: $38 $7b

	cp $9d                                           ; $69b7: $fe $9d
	jr jr_065_69a7                                   ; $69b9: $18 $ec

	ld a, e                                          ; $69bb: $7b
	cp $80                                           ; $69bc: $fe $80
	adc h                                            ; $69be: $8c
	ei                                               ; $69bf: $fb
	adc h                                            ; $69c0: $8c
	ld a, e                                          ; $69c1: $7b

jr_065_69c2:
	sbc h                                            ; $69c2: $9c
	ld [hl], e                                       ; $69c3: $73
	dec e                                            ; $69c4: $1d
	di                                               ; $69c5: $f3
	ld a, [hl-]                                      ; $69c6: $3a
	rst SubAFromBC                                          ; $69c7: $e7
	db $fc                                           ; $69c8: $fc
	rst JumpTable                                          ; $69c9: $c7
	ld a, c                                          ; $69ca: $79
	add [hl]                                         ; $69cb: $86
	inc bc                                           ; $69cc: $03
	add h                                            ; $69cd: $84
	inc bc                                           ; $69ce: $03
	db $fd                                           ; $69cf: $fd
	ld a, b                                          ; $69d0: $78
	add h                                            ; $69d1: $84
	db $dd                                           ; $69d2: $dd
	ld bc, $018d                                     ; $69d3: $01 $8d $01
	sub l                                            ; $69d6: $95
	nop                                              ; $69d7: $00
	jr @+$12                                         ; $69d8: $18 $10

	inc a                                            ; $69da: $3c
	stop                                             ; $69db: $10 $00
	add b                                            ; $69dd: $80
	nop                                              ; $69de: $00
	rst FarCall                                          ; $69df: $f7
	sbc a                                            ; $69e0: $9f
	rst FarCall                                          ; $69e1: $f7
	cp l                                             ; $69e2: $bd
	rst GetHLinHL                                          ; $69e3: $cf
	db $fd                                           ; $69e4: $fd
	rra                                              ; $69e5: $1f
	db $ed                                           ; $69e6: $ed
	ld a, a                                          ; $69e7: $7f
	add l                                            ; $69e8: $85
	ld bc, $fcff                                     ; $69e9: $01 $ff $fc
	inc bc                                           ; $69ec: $03
	xor $f1                                          ; $69ed: $ee $f1
	cp $f9                                           ; $69ef: $fe $f9
	ld l, $7d                                        ; $69f1: $2e $7d
	ld h, l                                          ; $69f3: $65
	jp hl                                            ; $69f4: $e9


	add hl, hl                                       ; $69f5: $29
	pop hl                                           ; $69f6: $e1
	pop af                                           ; $69f7: $f1
	pop bc                                           ; $69f8: $c1
	pop af                                           ; $69f9: $f1
	ld bc, $0303                                     ; $69fa: $01 $03 $03
	add [hl]                                         ; $69fd: $86
	rst $38                                          ; $69fe: $ff
	rlca                                             ; $69ff: $07
	ld a, $07                                        ; $6a00: $3e $07
	ccf                                              ; $6a02: $3f
	rrca                                             ; $6a03: $0f
	ld a, a                                          ; $6a04: $7f
	rra                                              ; $6a05: $1f
	ldh a, [$3f]                                     ; $6a06: $f0 $3f
	ldh a, [$7f]                                     ; $6a08: $f0 $7f
	ldh [rIE], a                                     ; $6a0a: $e0 $ff
	or b                                             ; $6a0c: $b0
	rst $38                                          ; $6a0d: $ff
	call z, Call_065_63ff                            ; $6a0e: $cc $ff $63
	rst $38                                          ; $6a11: $ff
	jr @+$01                                         ; $6a12: $18 $ff

	add $ff                                          ; $6a14: $c6 $ff
	ld sp, $3fde                                     ; $6a16: $31 $de $3f
	rst SubAFromDE                                          ; $6a19: $df
	cp h                                             ; $6a1a: $bc
	sbc e                                            ; $6a1b: $9b
	ld [hl], e                                       ; $6a1c: $73
	ld [hl], c                                       ; $6a1d: $71
	rst AddAOntoHL                                          ; $6a1e: $ef
	and $57                                          ; $6a1f: $e6 $57
	jr nz, @-$67                                     ; $6a21: $20 $97

	ld [hl], a                                       ; $6a23: $77
	add sp, $76                                      ; $6a24: $e8 $76
	ret                                              ; $6a26: $c9


	sub l                                            ; $6a27: $95
	sbc e                                            ; $6a28: $9b
	and $7e                                          ; $6a29: $e6 $7e
	ld d, a                                          ; $6a2b: $57
	jr nz, jr_065_6a85                               ; $6a2c: $20 $57

	ld b, b                                          ; $6a2e: $40
	sub a                                            ; $6a2f: $97
	rst $38                                          ; $6a30: $ff
	nop                                              ; $6a31: $00

jr_065_6a32:
	rst AddAOntoHL                                          ; $6a32: $ef
	ldh a, [$7f]                                     ; $6a33: $f0 $7f
	ld hl, sp-$12                                    ; $6a35: $f8 $ee
	ld hl, sp+$57                                    ; $6a37: $f8 $57
	ld b, b                                          ; $6a39: $40
	ld b, e                                          ; $6a3a: $43
	ld h, b                                          ; $6a3b: $60
	sbc d                                            ; $6a3c: $9a
	db $fc                                           ; $6a3d: $fc
	ld a, c                                          ; $6a3e: $79
	add l                                            ; $6a3f: $85
	call c, $2700                                    ; $6a40: $dc $00 $27
	ld h, b                                          ; $6a43: $60
	ld a, a                                          ; $6a44: $7f
	cp h                                             ; $6a45: $bc
	ld a, a                                          ; $6a46: $7f
	ld e, [hl]                                       ; $6a47: $5e
	sbc e                                            ; $6a48: $9b
	halt                                             ; $6a49: $76
	ld sp, hl                                        ; $6a4a: $f9
	db $ed                                           ; $6a4b: $ed
	db $fd                                           ; $6a4c: $fd
	ld e, a                                          ; $6a4d: $5f
	ld h, b                                          ; $6a4e: $60
	ld c, a                                          ; $6a4f: $4f
	add b                                            ; $6a50: $80
	sub a                                            ; $6a51: $97
	ld [hl], a                                       ; $6a52: $77
	ret z                                            ; $6a53: $c8

	sub [hl]                                         ; $6a54: $96
	sbc c                                            ; $6a55: $99
	push hl                                          ; $6a56: $e5
	ld a, e                                          ; $6a57: $7b
	rst SubAFromBC                                          ; $6a58: $e7
	rst AddAOntoHL                                          ; $6a59: $ef
	daa                                              ; $6a5a: $27
	add b                                            ; $6a5b: $80
	ld a, e                                          ; $6a5c: $7b
	cp $9e                                           ; $6a5d: $fe $9e
	ldh a, [$03]                                     ; $6a5f: $f0 $03
	add b                                            ; $6a61: $80
	sbc [hl]                                         ; $6a62: $9e
	add h                                            ; $6a63: $84
	rla                                              ; $6a64: $17
	add b                                            ; $6a65: $80
	ld a, a                                          ; $6a66: $7f
	cp $99                                           ; $6a67: $fe $99
	ld l, [hl]                                       ; $6a69: $6e
	pop af                                           ; $6a6a: $f1
	push af                                          ; $6a6b: $f5
	ld sp, hl                                        ; $6a6c: $f9
	dec l                                            ; $6a6d: $2d
	db $ed                                           ; $6a6e: $ed
	daa                                              ; $6a6f: $27
	add b                                            ; $6a70: $80
	sub a                                            ; $6a71: $97
	sub a                                            ; $6a72: $97
	sbc b                                            ; $6a73: $98
	push hl                                          ; $6a74: $e5
	ld a, h                                          ; $6a75: $7c
	rst SubAFromBC                                          ; $6a76: $e7
	db $eb                                           ; $6a77: $eb
	push hl                                          ; $6a78: $e5
	ld hl, $8023                                     ; $6a79: $21 $23 $80
	ld a, a                                          ; $6a7c: $7f
	adc d                                            ; $6a7d: $8a
	sbc e                                            ; $6a7e: $9b
	ld [$f8fc], sp                                   ; $6a7f: $08 $fc $f8
	ld hl, sp+$03                                    ; $6a82: $f8 $03
	add b                                            ; $6a84: $80

jr_065_6a85:
	rra                                              ; $6a85: $1f
	add b                                            ; $6a86: $80
	ld a, a                                          ; $6a87: $7f
	cp $99                                           ; $6a88: $fe $99
	ld a, l                                          ; $6a8a: $7d
	dec b                                            ; $6a8b: $05
	db $fd                                           ; $6a8c: $fd
	ld sp, hl                                        ; $6a8d: $f9
	ld sp, hl                                        ; $6a8e: $f9
	pop af                                           ; $6a8f: $f1
	ld l, a                                          ; $6a90: $6f
	add b                                            ; $6a91: $80
	rst $38                                          ; $6a92: $ff
	add b                                            ; $6a93: $80
	ld hl, sp+$50                                    ; $6a94: $f8 $50
	ret nc                                           ; $6a96: $d0

	nop                                              ; $6a97: $00
	jr nc, jr_065_6a9a                               ; $6a98: $30 $00

jr_065_6a9a:
	ld bc, $0300                                     ; $6a9a: $01 $00 $03
	ld bc, $070f                                     ; $6a9d: $01 $0f $07
	ccf                                              ; $6aa0: $3f
	rra                                              ; $6aa1: $1f
	cp $f7                                           ; $6aa2: $fe $f7
	rst $38                                          ; $6aa4: $ff
	rlca                                             ; $6aa5: $07
	ld a, a                                          ; $6aa6: $7f
	rlca                                             ; $6aa7: $07

jr_065_6aa8:
	inc a                                            ; $6aa8: $3c
	inc b                                            ; $6aa9: $04
	inc e                                            ; $6aaa: $1c
	inc b                                            ; $6aab: $04
	rrca                                             ; $6aac: $0f
	rlca                                             ; $6aad: $07
	ld c, $06                                        ; $6aae: $0e $06
	rrca                                             ; $6ab0: $0f
	dec b                                            ; $6ab1: $05
	nop                                              ; $6ab2: $00
	sbc c                                            ; $6ab3: $99
	nop                                              ; $6ab4: $00
	ld a, b                                          ; $6ab5: $78
	jr nc, jr_065_6aa8                               ; $6ab6: $30 $f0

	ld [hl], b                                       ; $6ab8: $70
	ld [hl], b                                       ; $6ab9: $70
	inc hl                                           ; $6aba: $23
	ldh [$7f], a                                     ; $6abb: $e0 $7f
	ldh [c], a                                       ; $6abd: $e2
	sbc l                                            ; $6abe: $9d
	ld hl, sp+$70                                    ; $6abf: $f8 $70
	ld a, e                                          ; $6ac1: $7b
	ldh [$9d], a                                     ; $6ac2: $e0 $9d
	ld h, b                                          ; $6ac4: $60
	ld h, c                                          ; $6ac5: $61
	dec hl                                           ; $6ac6: $2b
	ldh [$7f], a                                     ; $6ac7: $e0 $7f
	db $e4                                           ; $6ac9: $e4
	ld a, a                                          ; $6aca: $7f
	ld d, h                                          ; $6acb: $54
	ld a, a                                          ; $6acc: $7f
	cp $df                                           ; $6acd: $fe $df
	ldh a, [$9c]                                     ; $6acf: $f0 $9c
	pop af                                           ; $6ad1: $f1
	ld h, b                                          ; $6ad2: $60
	ld h, e                                          ; $6ad3: $63
	inc sp                                           ; $6ad4: $33
	ldh [$c9], a                                     ; $6ad5: $e0 $c9
	ld [bc], a                                       ; $6ad7: $02
	rst SubAFromBC                                          ; $6ad8: $e7
	rst SubAFromDE                                          ; $6ad9: $df
	ld bc, $0681                                     ; $6ada: $01 $81 $06
	rlca                                             ; $6add: $07
	rrca                                             ; $6ade: $0f
	rrca                                             ; $6adf: $0f
	nop                                              ; $6ae0: $00
	nop                                              ; $6ae1: $00
	inc bc                                           ; $6ae2: $03
	inc bc                                           ; $6ae3: $03
	inc b                                            ; $6ae4: $04
	rlca                                             ; $6ae5: $07
	ld [$100f], sp                                   ; $6ae6: $08 $0f $10
	rra                                              ; $6ae9: $1f
	db $10                                           ; $6aea: $10
	rra                                              ; $6aeb: $1f
	inc hl                                           ; $6aec: $23
	ccf                                              ; $6aed: $3f
	daa                                              ; $6aee: $27
	ccf                                              ; $6aef: $3f
	ld c, h                                          ; $6af0: $4c
	ld a, h                                          ; $6af1: $7c
	ld d, c                                          ; $6af2: $51
	ld [hl], c                                       ; $6af3: $71
	ldh [c], a                                       ; $6af4: $e2
	db $e3                                           ; $6af5: $e3
	jp nz, $84c3                                     ; $6af6: $c2 $c3 $84

	add a                                            ; $6af9: $87
	ld [hl], a                                       ; $6afa: $77
	ld [$099e], a                                    ; $6afb: $ea $9e $09
	ld a, e                                          ; $6afe: $7b
	cp $9d                                           ; $6aff: $fe $9d
	ld a, [bc]                                       ; $6b01: $0a
	ld c, $dd                                        ; $6b02: $0e $dd
	ld b, $df                                        ; $6b04: $06 $df
	ld [bc], a                                       ; $6b06: $02
	rla                                              ; $6b07: $17
	or [hl]                                          ; $6b08: $b6
	rst SubAFromDE                                          ; $6b09: $df
	ld bc, $029c                                     ; $6b0a: $01 $9c $02
	inc bc                                           ; $6b0d: $03
	ld [bc], a                                       ; $6b0e: $02
	ld a, e                                          ; $6b0f: $7b
	cp b                                             ; $6b10: $b8
	adc l                                            ; $6b11: $8d
	dec b                                            ; $6b12: $05
	rlca                                             ; $6b13: $07
	add hl, bc                                       ; $6b14: $09
	rrca                                             ; $6b15: $0f
	dec bc                                           ; $6b16: $0b
	ld c, $17                                        ; $6b17: $0e $17
	ld e, $1f                                        ; $6b19: $1e $1f
	inc e                                            ; $6b1b: $1c
	ccf                                              ; $6b1c: $3f
	jr c, jr_065_6b5e                                ; $6b1d: $38 $3f

	jr nc, jr_065_6ba0                               ; $6b1f: $30 $7f

	ld h, b                                          ; $6b21: $60
	rst $38                                          ; $6b22: $ff
	ret nz                                           ; $6b23: $c0

	ld b, a                                          ; $6b24: $47
	sub $df                                          ; $6b25: $d6 $df
	rlca                                             ; $6b27: $07
	db $fd                                           ; $6b28: $fd
	rst SubAFromDE                                          ; $6b29: $df
	rrca                                             ; $6b2a: $0f
	add b                                            ; $6b2b: $80
	ld a, e                                          ; $6b2c: $7b
	ld a, h                                          ; $6b2d: $7c
	rst $38                                          ; $6b2e: $ff
	ret nz                                           ; $6b2f: $c0

	ret nz                                           ; $6b30: $c0

	ccf                                              ; $6b31: $3f
	db $fc                                           ; $6b32: $fc
	rst $38                                          ; $6b33: $ff
	di                                               ; $6b34: $f3
	db $fc                                           ; $6b35: $fc
	db $10                                           ; $6b36: $10
	ldh [rVBK], a                                    ; $6b37: $e0 $4f
	add b                                            ; $6b39: $80
	nop                                              ; $6b3a: $00
	rst $38                                          ; $6b3b: $ff
	rra                                              ; $6b3c: $1f
	rst $38                                          ; $6b3d: $ff
	ld hl, sp-$04                                    ; $6b3e: $f8 $fc
	ldh [c], a                                       ; $6b40: $e2
	pop af                                           ; $6b41: $f1
	set 4, [hl]                                      ; $6b42: $cb $e6
	sub [hl]                                         ; $6b44: $96
	call z, $9c68                                    ; $6b45: $cc $68 $9c
	ret nc                                           ; $6b48: $d0

	add hl, sp                                       ; $6b49: $39
	xor l                                            ; $6b4a: $ad
	sub l                                            ; $6b4b: $95
	ld [hl], e                                       ; $6b4c: $73
	ld a, d                                          ; $6b4d: $7a
	rst SubAFromBC                                          ; $6b4e: $e7
	jp nc, $d4ef                                     ; $6b4f: $d2 $ef $d4

	rst AddAOntoHL                                          ; $6b52: $ef
	add h                                            ; $6b53: $84
	rst $38                                          ; $6b54: $ff
	adc h                                            ; $6b55: $8c
	ld [hl], e                                       ; $6b56: $73
	cp $85                                           ; $6b57: $fe $85
	sub h                                            ; $6b59: $94
	rst FarCall                                          ; $6b5a: $f7
	sub [hl]                                         ; $6b5b: $96
	rst FarCall                                          ; $6b5c: $f7
	sub d                                            ; $6b5d: $92

jr_065_6b5e:
	di                                               ; $6b5e: $f3

jr_065_6b5f:
	and e                                            ; $6b5f: $a3
	db $e3                                           ; $6b60: $e3
	and c                                            ; $6b61: $a1
	pop hl                                           ; $6b62: $e1
	ld h, c                                          ; $6b63: $61
	ld h, c                                          ; $6b64: $61
	ld h, e                                          ; $6b65: $63
	ld h, d                                          ; $6b66: $62
	scf                                              ; $6b67: $37
	inc [hl]                                         ; $6b68: $34
	rla                                              ; $6b69: $17
	inc d                                            ; $6b6a: $14
	rlca                                             ; $6b6b: $07
	inc b                                            ; $6b6c: $04
	rlca                                             ; $6b6d: $07
	inc b                                            ; $6b6e: $04
	inc bc                                           ; $6b6f: $03
	ld [bc], a                                       ; $6b70: $02
	ld bc, $6701                                     ; $6b71: $01 $01 $67
	add b                                            ; $6b74: $80
	db $dd                                           ; $6b75: $dd
	ld bc, $03dd                                     ; $6b76: $01 $dd $03
	sbc $07                                          ; $6b79: $de $07
	add b                                            ; $6b7b: $80
	ld b, $05                                        ; $6b7c: $06 $05
	ld b, $06                                        ; $6b7e: $06 $06
	dec b                                            ; $6b80: $05
	ld c, $0d                                        ; $6b81: $0e $0d
	ld c, $09                                        ; $6b83: $0e $09
	ccf                                              ; $6b85: $3f
	jr c, @+$59                                      ; $6b86: $38 $57

	ld a, b                                          ; $6b88: $78
	ldh a, [hDisp1_SCY]                                     ; $6b89: $f0 $90
	ldh a, [$a0]                                     ; $6b8b: $f0 $a0
	pop hl                                           ; $6b8d: $e1
	jr nz, jr_065_6b5f                               ; $6b8e: $20 $cf

	ld b, a                                          ; $6b90: $47
	rst JumpTable                                          ; $6b91: $c7
	ld b, b                                          ; $6b92: $40
	add a                                            ; $6b93: $87
	add b                                            ; $6b94: $80
	adc a                                            ; $6b95: $8f
	add b                                            ; $6b96: $80
	rrca                                             ; $6b97: $0f
	nop                                              ; $6b98: $00
	rrca                                             ; $6b99: $0f
	ld bc, $fe7f                                     ; $6b9a: $01 $7f $fe
	sub e                                            ; $6b9d: $93
	ld e, $03                                        ; $6b9e: $1e $03

jr_065_6ba0:
	ld e, $02                                        ; $6ba0: $1e $02
	ld a, $06                                        ; $6ba2: $3e $06
	inc a                                            ; $6ba4: $3c
	ld b, $7c                                        ; $6ba5: $06 $7c
	dec c                                            ; $6ba7: $0d
	ld hl, sp+$0d                                    ; $6ba8: $f8 $0d
	di                                               ; $6baa: $f3
	rst SubAFromDE                                          ; $6bab: $df
	rst $38                                          ; $6bac: $ff
	sub a                                            ; $6bad: $97
	ldh a, [rIE]                                     ; $6bae: $f0 $ff
	dec e                                            ; $6bb0: $1d
	ld e, $07                                        ; $6bb1: $1e $07
	rlca                                             ; $6bb3: $07
	rst $38                                          ; $6bb4: $ff
	rst $38                                          ; $6bb5: $ff
	ld a, e                                          ; $6bb6: $7b
	ld h, h                                          ; $6bb7: $64
	sub a                                            ; $6bb8: $97
	inc bc                                           ; $6bb9: $03
	rrca                                             ; $6bba: $0f
	ldh a, [rSB]                                     ; $6bbb: $f0 $01
	cp $fc                                           ; $6bbd: $fe $fc
	inc bc                                           ; $6bbf: $03
	rlca                                             ; $6bc0: $07
	cp a                                             ; $6bc1: $bf
	ld sp, hl                                        ; $6bc2: $f9
	ld bc, $fe86                                     ; $6bc3: $01 $86 $fe
	ld c, $f1                                        ; $6bc6: $0e $f1
	dec a                                            ; $6bc8: $3d
	jp nz, $04b2                                     ; $6bc9: $c2 $b2 $04

	ld bc, $140c                                     ; $6bcc: $01 $0c $14
	add hl, bc                                       ; $6bcf: $09
	add d                                            ; $6bd0: $82
	add hl, de                                       ; $6bd1: $19
	xor b                                            ; $6bd2: $a8
	sub e                                            ; $6bd3: $93
	ld b, h                                          ; $6bd4: $44
	or e                                             ; $6bd5: $b3
	adc b                                            ; $6bd6: $88
	ld [hl], a                                       ; $6bd7: $77
	add b                                            ; $6bd8: $80
	ld a, a                                          ; $6bd9: $7f
	ld [bc], a                                       ; $6bda: $02
	rst $38                                          ; $6bdb: $ff
	ld [hl+], a                                      ; $6bdc: $22
	rst $38                                          ; $6bdd: $ff
	ldh [$c1], a                                     ; $6bde: $e0 $c1
	rst SubAFromDE                                          ; $6be0: $df
	ld [de], a                                       ; $6be1: $12
	rst SubAFromDE                                          ; $6be2: $df
	inc e                                            ; $6be3: $1c
	rst SubAFromDE                                          ; $6be4: $df
	pop hl                                           ; $6be5: $e1
	rst SubAFromDE                                          ; $6be6: $df
	rrca                                             ; $6be7: $0f
	add a                                            ; $6be8: $87
	scf                                              ; $6be9: $37
	ccf                                              ; $6bea: $3f
	ld c, b                                          ; $6beb: $48
	ld a, b                                          ; $6bec: $78
	ldh a, [$f0]                                     ; $6bed: $f0 $f0
	adc a                                            ; $6bef: $8f
	adc a                                            ; $6bf0: $8f
	adc b                                            ; $6bf1: $88
	adc b                                            ; $6bf2: $88
	or $fe                                           ; $6bf3: $f6 $fe

jr_065_6bf5:
	cpl                                              ; $6bf5: $2f
	rst SubAFromHL                                          ; $6bf6: $d7
	ld c, l                                          ; $6bf7: $4d
	or a                                             ; $6bf8: $b7
	ld d, l                                          ; $6bf9: $55
	xor a                                            ; $6bfa: $af
	push de                                          ; $6bfb: $d5
	cpl                                              ; $6bfc: $2f
	xor c                                            ; $6bfd: $a9
	ld e, a                                          ; $6bfe: $5f
	cp e                                             ; $6bff: $bb

jr_065_6c00:
	ld e, a                                          ; $6c00: $5f
	rst FarCall                                          ; $6c01: $f7
	rst SubAFromDE                                          ; $6c02: $df
	ldh a, [$80]                                     ; $6c03: $f0 $80
	ld e, h                                          ; $6c05: $5c
	ld l, h                                          ; $6c06: $6c
	cpl                                              ; $6c07: $2f
	scf                                              ; $6c08: $37
	db $f4                                           ; $6c09: $f4
	ei                                               ; $6c0a: $fb
	sbc d                                            ; $6c0b: $9a
	ld a, l                                          ; $6c0c: $7d
	ld c, e                                          ; $6c0d: $4b
	cp h                                             ; $6c0e: $bc
	and a                                            ; $6c0f: $a7
	ret c                                            ; $6c10: $d8

	add $f9                                          ; $6c11: $c6 $f9
	ld b, b                                          ; $6c13: $40
	rst $38                                          ; $6c14: $ff
	nop                                              ; $6c15: $00
	rst $38                                          ; $6c16: $ff
	add b                                            ; $6c17: $80
	ld a, a                                          ; $6c18: $7f
	ld b, c                                          ; $6c19: $41
	cp [hl]                                          ; $6c1a: $be
	ld [bc], a                                       ; $6c1b: $02
	db $fd                                           ; $6c1c: $fd
	add b                                            ; $6c1d: $80
	ld a, a                                          ; $6c1e: $7f
	call nz, $d53b                                   ; $6c1f: $c4 $3b $d5
	ld a, [hl+]                                      ; $6c22: $2a
	and l                                            ; $6c23: $a5
	adc e                                            ; $6c24: $8b
	ld c, d                                          ; $6c25: $4a
	ld d, b                                          ; $6c26: $50
	adc d                                            ; $6c27: $8a
	ld e, b                                          ; $6c28: $58
	add d                                            ; $6c29: $82
	add b                                            ; $6c2a: $80
	ld [bc], a                                       ; $6c2b: $02
	add c                                            ; $6c2c: $81
	ld [bc], a                                       ; $6c2d: $02
	sbc d                                            ; $6c2e: $9a
	ld bc, $0990                                     ; $6c2f: $01 $90 $09
	call nc, $6a09                                   ; $6c32: $d4 $09 $6a
	sbc l                                            ; $6c35: $9d
	ld a, [bc]                                       ; $6c36: $0a
	db $fd                                           ; $6c37: $fd
	ld c, b                                          ; $6c38: $48
	inc bc                                           ; $6c39: $03
	ld h, b                                          ; $6c3a: $60

jr_065_6c3b:
	pop hl                                           ; $6c3b: $e1
	sub b                                            ; $6c3c: $90
	ld b, b                                          ; $6c3d: $40
	ldh [$a0], a                                     ; $6c3e: $e0 $a0
	ret nz                                           ; $6c40: $c0

	db $10                                           ; $6c41: $10
	ldh [$09], a                                     ; $6c42: $e0 $09
	db $10                                           ; $6c44: $10
	call nz, $e0cb                                   ; $6c45: $c4 $cb $e0
	jr nz, jr_065_6c3b                               ; $6c48: $20 $f1

	ld de, $77f9                                     ; $6c4a: $11 $f9 $77
	cp $93                                           ; $6c4d: $fe $93
	ld sp, $e1f1                                     ; $6c4f: $31 $f1 $e1
	inc bc                                           ; $6c52: $03
	nop                                              ; $6c53: $00
	dec b                                            ; $6c54: $05
	ld [bc], a                                       ; $6c55: $02
	jp c, $f004                                      ; $6c56: $da $04 $f0

	call z, $53e7                                    ; $6c59: $cc $e7 $53
	and b                                            ; $6c5c: $a0
	rst SubAFromDE                                          ; $6c5d: $df
	ld h, b                                          ; $6c5e: $60
	rst SubAFromDE                                          ; $6c5f: $df
	jr nc, jr_065_6bf5                               ; $6c60: $30 $93

	cp b                                             ; $6c62: $b8
	xor b                                            ; $6c63: $a8
	ld a, e                                          ; $6c64: $7b
	db $eb                                           ; $6c65: $eb
	ld a, h                                          ; $6c66: $7c
	rst GetHLinHL                                          ; $6c67: $cf
	jr nz, @-$1f                                     ; $6c68: $20 $df

	ld c, $f1                                        ; $6c6a: $0e $f1
	ld bc, $7afe                                     ; $6c6c: $01 $fe $7a
	or c                                             ; $6c6f: $b1
	add b                                            ; $6c70: $80
	nop                                              ; $6c71: $00
	add b                                            ; $6c72: $80
	ld a, a                                          ; $6c73: $7f
	db $10                                           ; $6c74: $10
	ldh [$59], a                                     ; $6c75: $e0 $59
	add b                                            ; $6c77: $80
	rst AddAOntoHL                                          ; $6c78: $ef
	rra                                              ; $6c79: $1f
	jp nc, $3121                                     ; $6c7a: $d2 $21 $31

	add b                                            ; $6c7d: $80
	jr c, jr_065_6c00                                ; $6c7e: $38 $80

	ret nc                                           ; $6c80: $d0

	inc c                                            ; $6c81: $0c
	sbc d                                            ; $6c82: $9a
	ld b, [hl]                                       ; $6c83: $46
	dec hl                                           ; $6c84: $2b
	ld b, [hl]                                       ; $6c85: $46
	ld d, l                                          ; $6c86: $55
	inc hl                                           ; $6c87: $23
	adc c                                            ; $6c88: $89
	inc sp                                           ; $6c89: $33
	ld h, $99                                        ; $6c8a: $26 $99
	jp z, $d49d                                      ; $6c8c: $ca $9d $d4

	rst AddAOntoHL                                          ; $6c8f: $ef
	sbc [hl]                                         ; $6c90: $9e
	jp nz, Jump_065_6003                             ; $6c91: $c2 $03 $60

	pop hl                                           ; $6c94: $e1
	sub [hl]                                         ; $6c95: $96
	ld a, d                                          ; $6c96: $7a
	rrca                                             ; $6c97: $0f
	ld a, d                                          ; $6c98: $7a
	rrca                                             ; $6c99: $0f
	cp $0f                                           ; $6c9a: $fe $0f
	adc [hl]                                         ; $6c9c: $8e
	rrca                                             ; $6c9d: $0f
	ld e, $7a                                        ; $6c9e: $1e $7a
	ld c, h                                          ; $6ca0: $4c
	sbc c                                            ; $6ca1: $99
	rst $38                                          ; $6ca2: $ff
	add a                                            ; $6ca3: $87
	rst $38                                          ; $6ca4: $ff
	inc bc                                           ; $6ca5: $03
	rst $38                                          ; $6ca6: $ff
	ld e, $7b                                        ; $6ca7: $1e $7b
	db $fc                                           ; $6ca9: $fc
	sub h                                            ; $6caa: $94
	rrca                                             ; $6cab: $0f
	db $f4                                           ; $6cac: $f4
	cp $2c                                           ; $6cad: $fe $2c
	ld a, $48                                        ; $6caf: $3e $48
	ld l, l                                          ; $6cb1: $6d
	sub b                                            ; $6cb2: $90
	db $dd                                           ; $6cb3: $dd
	sub b                                            ; $6cb4: $90
	cp e                                             ; $6cb5: $bb
	rst AddAOntoHL                                          ; $6cb6: $ef
	rst SubAFromDE                                          ; $6cb7: $df
	ldh a, [$80]                                     ; $6cb8: $f0 $80
	inc c                                            ; $6cba: $0c
	db $fc                                           ; $6cbb: $fc
	ld a, a                                          ; $6cbc: $7f
	rst $38                                          ; $6cbd: $ff
	ldh [$e0], a                                     ; $6cbe: $e0 $e0
	ret c                                            ; $6cc0: $d8

	jr c, jr_065_6cf9                                ; $6cc1: $38 $36

	adc $cd                                          ; $6cc3: $ce $cd
	inc sp                                           ; $6cc5: $33
	ld [hl], e                                       ; $6cc6: $73
	adc h                                            ; $6cc7: $8c
	adc h                                            ; $6cc8: $8c
	ld [hl], e                                       ; $6cc9: $73
	inc sp                                           ; $6cca: $33
	inc c                                            ; $6ccb: $0c
	sbc l                                            ; $6ccc: $9d
	ld h, d                                          ; $6ccd: $62
	cp $99                                           ; $6cce: $fe $99
	and a                                            ; $6cd0: $a7
	call c, Call_065_66db                            ; $6cd1: $dc $db $66
	cpl                                              ; $6cd4: $2f
	ld [hl], d                                       ; $6cd5: $72
	ld d, l                                          ; $6cd6: $55
	dec sp                                           ; $6cd7: $3b
	cpl                                              ; $6cd8: $2f
	sub e                                            ; $6cd9: $93
	add hl, de                                       ; $6cda: $19
	xor d                                            ; $6cdb: $aa
	dec e                                            ; $6cdc: $1d
	ld b, h                                          ; $6cdd: $44
	sbc a                                            ; $6cde: $9f
	and d                                            ; $6cdf: $a2
	rst GetHLinHL                                          ; $6ce0: $cf
	ld b, d                                          ; $6ce1: $42
	rst $38                                          ; $6ce2: $ff
	ld hl, $31ff                                     ; $6ce3: $21 $ff $31
	inc bc                                           ; $6ce6: $03
	ld h, b                                          ; $6ce7: $60
	pop hl                                           ; $6ce8: $e1
	sub e                                            ; $6ce9: $93
	ld b, [hl]                                       ; $6cea: $46
	rst $38                                          ; $6ceb: $ff
	ld b, l                                          ; $6cec: $45
	rst $38                                          ; $6ced: $ff
	adc a                                            ; $6cee: $8f
	rst $38                                          ; $6cef: $ff
	adc a                                            ; $6cf0: $8f
	cp $9f                                           ; $6cf1: $fe $9f
	db $fc                                           ; $6cf3: $fc
	cp a                                             ; $6cf4: $bf
	ld sp, hl                                        ; $6cf5: $f9
	sbc $ff                                          ; $6cf6: $de $ff
	adc a                                            ; $6cf8: $8f

jr_065_6cf9:
	ldh [rIE], a                                     ; $6cf9: $e0 $ff
	jr nz, @+$01                                     ; $6cfb: $20 $ff

	inc a                                            ; $6cfd: $3c
	rst $38                                          ; $6cfe: $ff
	ldh [$7f], a                                     ; $6cff: $e0 $7f
	ldh a, [$5f]                                     ; $6d01: $f0 $5f
	db $fc                                           ; $6d03: $fc
	ld e, a                                          ; $6d04: $5f
	rst $38                                          ; $6d05: $ff
	ld e, e                                          ; $6d06: $5b
	rst $38                                          ; $6d07: $ff
	cp e                                             ; $6d08: $bb
	ld a, b                                          ; $6d09: $78
	ei                                               ; $6d0a: $fb
	add l                                            ; $6d0b: $85
	and b                                            ; $6d0c: $a0
	ld h, b                                          ; $6d0d: $60
	ld d, b                                          ; $6d0e: $50
	or b                                             ; $6d0f: $b0
	xor b                                            ; $6d10: $a8
	ld e, b                                          ; $6d11: $58
	call nc, $442c                                   ; $6d12: $d4 $2c $44
	cp h                                             ; $6d15: $bc
	and d                                            ; $6d16: $a2
	ld e, [hl]                                       ; $6d17: $5e
	xor d                                            ; $6d18: $aa
	ld e, [hl]                                       ; $6d19: $5e
	ret                                              ; $6d1a: $c9


	ccf                                              ; $6d1b: $3f
	push bc                                          ; $6d1c: $c5
	ccf                                              ; $6d1d: $3f

Jump_065_6d1e:
	push bc                                          ; $6d1e: $c5
	cp a                                             ; $6d1f: $bf
	push hl                                          ; $6d20: $e5
	sbc a                                            ; $6d21: $9f
	push hl                                          ; $6d22: $e5
	sbc a                                            ; $6d23: $9f
	ld h, l                                          ; $6d24: $65
	rst SubAFromDE                                          ; $6d25: $df
	ld a, e                                          ; $6d26: $7b
	cp $8e                                           ; $6d27: $fe $8e
	rst $38                                          ; $6d29: $ff
	and l                                            ; $6d2a: $a5
	rst $38                                          ; $6d2b: $ff
	ld h, l                                          ; $6d2c: $65
	rst $38                                          ; $6d2d: $ff
	dec [hl]                                         ; $6d2e: $35
	rst $38                                          ; $6d2f: $ff
	rst SubAFromDE                                          ; $6d30: $df
	rst $38                                          ; $6d31: $ff
	ld [hl], a                                       ; $6d32: $77
	rst $38                                          ; $6d33: $ff
	ld h, a                                          ; $6d34: $67
	rst $38                                          ; $6d35: $ff
	rst SubAFromBC                                          ; $6d36: $e7
	rst $38                                          ; $6d37: $ff
	rst SubAFromBC                                          ; $6d38: $e7
	ccf                                              ; $6d39: $3f
	ld h, a                                          ; $6d3a: $67
	cp $9b                                           ; $6d3b: $fe $9b
	and $7e                                          ; $6d3d: $e6 $7e
	and [hl]                                         ; $6d3f: $a6
	cp $77                                           ; $6d40: $fe $77
	cp $80                                           ; $6d42: $fe $80
	ld l, [hl]                                       ; $6d44: $6e
	or [hl]                                          ; $6d45: $b6
	ld l, [hl]                                       ; $6d46: $6e
	or [hl]                                          ; $6d47: $b6
	xor [hl]                                         ; $6d48: $ae
	or $ae                                           ; $6d49: $f6 $ae
	or $be                                           ; $6d4b: $f6 $be
	and $bc                                          ; $6d4d: $e6 $bc
	db $e4                                           ; $6d4f: $e4
	call c, $d4e4                                    ; $6d50: $dc $e4 $d4
	db $ec                                           ; $6d53: $ec
	call nc, $fcec                                   ; $6d54: $d4 $ec $fc
	call z, $d8a8                                    ; $6d57: $cc $a8 $d8
	xor b                                            ; $6d5a: $a8
	ret c                                            ; $6d5b: $d8

	ld e, b                                          ; $6d5c: $58
	cp b                                             ; $6d5d: $b8
	ld d, b                                          ; $6d5e: $50
	or b                                             ; $6d5f: $b0
	jr nc, @-$0e                                     ; $6d60: $30 $f0

	ld a, b                                          ; $6d62: $78
	add b                                            ; $6d63: $80
	ld hl, sp-$01                                    ; $6d64: $f8 $ff
	rst JumpTable                                          ; $6d66: $c7
	db $fc                                           ; $6d67: $fc
	sbc a                                            ; $6d68: $9f
	ldh a, [$3f]                                     ; $6d69: $f0 $3f
	ret nz                                           ; $6d6b: $c0

	rst SubAFromBC                                          ; $6d6c: $e7
	add b                                            ; $6d6d: $80
	jp $e180                                         ; $6d6e: $c3 $80 $e1


	ld bc, $83e3                                     ; $6d71: $01 $e3 $83
	rst $38                                          ; $6d74: $ff
	rst JumpTable                                          ; $6d75: $c7
	ld a, [hl]                                       ; $6d76: $7e
	add $6c                                          ; $6d77: $c6 $6c
	add $44                                          ; $6d79: $c6 $44
	add [hl]                                         ; $6d7b: $86
	call z, $cc87                                    ; $6d7c: $cc $87 $cc
	rrca                                             ; $6d7f: $0f
	adc b                                            ; $6d80: $88
	rrca                                             ; $6d81: $0f
	sbc b                                            ; $6d82: $98
	adc l                                            ; $6d83: $8d
	rra                                              ; $6d84: $1f
	ldh a, [$80]                                     ; $6d85: $f0 $80
	add b                                            ; $6d87: $80
	ldh [$e0], a                                     ; $6d88: $e0 $e0
	ld a, b                                          ; $6d8a: $78
	ld hl, sp-$34                                    ; $6d8b: $f8 $cc
	db $fc                                           ; $6d8d: $fc
	add [hl]                                         ; $6d8e: $86
	cp $b2                                           ; $6d8f: $fe $b2
	adc $7b                                          ; $6d91: $ce $7b
	add a                                            ; $6d93: $87
	db $fd                                           ; $6d94: $fd
	inc bc                                           ; $6d95: $03
	ld e, a                                          ; $6d96: $5f
	cp $99                                           ; $6d97: $fe $99
	ld a, l                                          ; $6d99: $7d
	add e                                            ; $6d9a: $83
	ld a, c                                          ; $6d9b: $79
	add a                                            ; $6d9c: $87
	ld [hl], c                                       ; $6d9d: $71
	adc a                                            ; $6d9e: $8f
	rra                                              ; $6d9f: $1f
	nop                                              ; $6da0: $00
	sbc $99                                          ; $6da1: $de $99
	sub h                                            ; $6da3: $94
	xor d                                            ; $6da4: $aa
	sbc c                                            ; $6da5: $99
	ld de, $aa88                                     ; $6da6: $11 $88 $aa
	nop                                              ; $6da9: $00
	sbc c                                            ; $6daa: $99
	ld de, $9999                                     ; $6dab: $11 $99 $99
	ld h, [hl]                                       ; $6dae: $66
	ld [hl], a                                       ; $6daf: $77
	ei                                               ; $6db0: $fb
	sbc [hl]                                         ; $6db1: $9e
	ld b, h                                          ; $6db2: $44
	ld [hl], a                                       ; $6db3: $77
	ei                                               ; $6db4: $fb
	ld [hl], e                                       ; $6db5: $73
	pop af                                           ; $6db6: $f1
	ld a, a                                          ; $6db7: $7f
	ei                                               ; $6db8: $fb
	sbc e                                            ; $6db9: $9b
	adc b                                            ; $6dba: $88
	sbc c                                            ; $6dbb: $99
	ld d, l                                          ; $6dbc: $55
	xor d                                            ; $6dbd: $aa
	and d                                            ; $6dbe: $a2
	ld bc, $2280                                     ; $6dbf: $01 $80 $22
	rst $38                                          ; $6dc2: $ff
	ld h, [hl]                                       ; $6dc3: $66
	db $dd                                           ; $6dc4: $dd
	ld h, [hl]                                       ; $6dc5: $66
	rst SubAFromDE                                          ; $6dc6: $df
	db $e4                                           ; $6dc7: $e4
	rst SubAFromDE                                          ; $6dc8: $df
	rst FarCall                                          ; $6dc9: $f7
	cp h                                             ; $6dca: $bc
	rst FarCall                                          ; $6dcb: $f7
	adc h                                            ; $6dcc: $8c
	add b                                            ; $6dcd: $80
	rst $38                                          ; $6dce: $ff
	cp a                                             ; $6dcf: $bf
	ret nz                                           ; $6dd0: $c0

	ld a, e                                          ; $6dd1: $7b
	add a                                            ; $6dd2: $87
	inc l                                            ; $6dd3: $2c
	sbc h                                            ; $6dd4: $9c
	inc de                                           ; $6dd5: $13
	cp e                                             ; $6dd6: $bb
	or l                                             ; $6dd7: $b5
	rlca                                             ; $6dd8: $07
	add h                                            ; $6dd9: $84
	rlca                                             ; $6dda: $07
	rlca                                             ; $6ddb: $07
	inc bc                                           ; $6ddc: $03
	ld b, b                                          ; $6ddd: $40
	ld b, b                                          ; $6dde: $40
	rst $38                                          ; $6ddf: $ff
	add b                                            ; $6de0: $80
	ldh [$f0], a                                     ; $6de1: $e0 $f0
	ldh [hDisp1_SCY], a                                     ; $6de3: $e0 $90
	ldh a, [$b8]                                     ; $6de5: $f0 $b8
	ldh a, [$ac]                                     ; $6de7: $f0 $ac
	ld hl, sp+$2f                                    ; $6de9: $f8 $2f
	rst $38                                          ; $6deb: $ff
	ld c, a                                          ; $6dec: $4f
	ld hl, sp+$5c                                    ; $6ded: $f8 $5c
	ldh a, [$71]                                     ; $6def: $f0 $71
	ldh [$c6], a                                     ; $6df1: $e0 $c6
	add d                                            ; $6df3: $82
	inc sp                                           ; $6df4: $33
	ld bc, $089b                                     ; $6df5: $01 $9b $08
	rst GetHLinHL                                          ; $6df8: $cf
	call nz, $22f7                                   ; $6df9: $c4 $f7 $22
	rst $38                                          ; $6dfc: $ff
	ld [hl], c                                       ; $6dfd: $71
	rst $38                                          ; $6dfe: $ff
	ld e, c                                          ; $6dff: $59
	add b                                            ; $6e00: $80
	rst $38                                          ; $6e01: $ff
	add hl, hl                                       ; $6e02: $29
	ld c, h                                          ; $6e03: $4c
	ei                                               ; $6e04: $fb
	ld c, h                                          ; $6e05: $4c
	ei                                               ; $6e06: $fb
	ld c, [hl]                                       ; $6e07: $4e
	ld sp, hl                                        ; $6e08: $f9
	ld b, [hl]                                       ; $6e09: $46
	db $fd                                           ; $6e0a: $fd
	ld h, a                                          ; $6e0b: $67
	call c, Call_065_5ce7                            ; $6e0c: $dc $e7 $5c
	ld [de], a                                       ; $6e0f: $12
	rst AddAOntoHL                                          ; $6e10: $ef
	jp z, Jump_065_6e37                              ; $6e11: $ca $37 $6e

	sub c                                            ; $6e14: $91
	and b                                            ; $6e15: $a0
	rst SubAFromDE                                          ; $6e16: $df
	xor $d1                                          ; $6e17: $ee $d1
	db $fc                                           ; $6e19: $fc
	ret nz                                           ; $6e1a: $c0

	jp $d780                                         ; $6e1b: $c3 $80 $d7


	nop                                              ; $6e1e: $00
	rla                                              ; $6e1f: $17
	add c                                            ; $6e20: $81
	inc b                                            ; $6e21: $04
	rst AddAOntoHL                                          ; $6e22: $ef
	inc b                                            ; $6e23: $04
	db $e3                                           ; $6e24: $e3
	cp a                                             ; $6e25: $bf
	pop af                                           ; $6e26: $f1
	sbc a                                            ; $6e27: $9f
	ret nz                                           ; $6e28: $c0

	cp a                                             ; $6e29: $bf
	db $fc                                           ; $6e2a: $fc
	rst $38                                          ; $6e2b: $ff
	cp $c3                                           ; $6e2c: $fe $c3
	ld h, c                                          ; $6e2e: $61
	rst $38                                          ; $6e2f: $ff
	ld a, a                                          ; $6e30: $7f
	add b                                            ; $6e31: $80
	or $0f                                           ; $6e32: $f6 $0f
	reti                                             ; $6e34: $d9


	add hl, sp                                       ; $6e35: $39
	rst SubAFromBC                                          ; $6e36: $e7

Jump_065_6e37:
	scf                                              ; $6e37: $37
	db $eb                                           ; $6e38: $eb
	rrca                                             ; $6e39: $0f
	jr z, jr_065_6e4b                                ; $6e3a: $28 $0f

	rra                                              ; $6e3c: $1f
	rlca                                             ; $6e3d: $07
	rlca                                             ; $6e3e: $07
	cp d                                             ; $6e3f: $ba
	add b                                            ; $6e40: $80
	sbc a                                            ; $6e41: $9f
	inc bc                                           ; $6e42: $03
	add c                                            ; $6e43: $81
	ld bc, $0703                                     ; $6e44: $01 $03 $07
	add b                                            ; $6e47: $80
	ld bc, $030f                                     ; $6e48: $01 $0f $03

jr_065_6e4b:
	rra                                              ; $6e4b: $1f
	dec c                                            ; $6e4c: $0d
	ld a, a                                          ; $6e4d: $7f
	ld [hl], c                                       ; $6e4e: $71
	cp $c3                                           ; $6e4f: $fe $c3
	cp $03                                           ; $6e51: $fe $03
	rst $38                                          ; $6e53: $ff
	inc bc                                           ; $6e54: $03
	db $fd                                           ; $6e55: $fd
	rlca                                             ; $6e56: $07
	db $fd                                           ; $6e57: $fd
	rlca                                             ; $6e58: $07
	ld a, l                                          ; $6e59: $7d
	rlca                                             ; $6e5a: $07
	ld a, $0f                                        ; $6e5b: $3e $0f
	ld a, [hl-]                                      ; $6e5d: $3a
	rrca                                             ; $6e5e: $0f
	jr @+$01                                         ; $6e5f: $18 $ff

	sub [hl]                                         ; $6e61: $96
	rst $38                                          ; $6e62: $ff
	ret                                              ; $6e63: $c9


	rst $38                                          ; $6e64: $ff
	db $e4                                           ; $6e65: $e4
	rst $38                                          ; $6e66: $ff

jr_065_6e67:
	add b                                            ; $6e67: $80
	ld [hl], d                                       ; $6e68: $72
	rst $38                                          ; $6e69: $ff
	cp $ff                                           ; $6e6a: $fe $ff
	ret z                                            ; $6e6c: $c8

	ccf                                              ; $6e6d: $3f
	rst SubAFromBC                                          ; $6e6e: $e7
	rra                                              ; $6e6f: $1f
	xor c                                            ; $6e70: $a9
	sub $4d                                          ; $6e71: $d6 $4d
	rst FarCall                                          ; $6e73: $f7
	dec l                                            ; $6e74: $2d
	ld b, [hl]                                       ; $6e75: $46
	ld l, a                                          ; $6e76: $6f
	ld b, $8f                                        ; $6e77: $06 $8f
	inc b                                            ; $6e79: $04
	rra                                              ; $6e7a: $1f
	nop                                              ; $6e7b: $00
	rst $38                                          ; $6e7c: $ff
	ld bc, $0ffe                                     ; $6e7d: $01 $fe $0f
	dec e                                            ; $6e80: $1d
	ld e, $1d                                        ; $6e81: $1e $1d
	ld a, $3f                                        ; $6e83: $3e $3f
	ld a, h                                          ; $6e85: $7c
	halt                                             ; $6e86: $76
	sbc l                                            ; $6e87: $9d
	db $fd                                           ; $6e88: $fd
	or $7b                                           ; $6e89: $f6 $7b
	cp $8b                                           ; $6e8b: $fe $8b
	xor $f5                                          ; $6e8d: $ee $f5
	rst AddAOntoHL                                          ; $6e8f: $ef
	push af                                          ; $6e90: $f5
	cp a                                             ; $6e91: $bf
	push hl                                          ; $6e92: $e5
	db $fd                                           ; $6e93: $fd

jr_065_6e94:
	and a                                            ; $6e94: $a7
	rst SubAFromHL                                          ; $6e95: $d7
	xor a                                            ; $6e96: $af
	ld d, a                                          ; $6e97: $57
	xor a                                            ; $6e98: $af
	rst FarCall                                          ; $6e99: $f7
	cpl                                              ; $6e9a: $2f
	or a                                             ; $6e9b: $b7
	ld l, a                                          ; $6e9c: $6f
	or a                                             ; $6e9d: $b7
	ld l, a                                          ; $6e9e: $6f
	ld b, [hl]                                       ; $6e9f: $46
	rst $38                                          ; $6ea0: $ff
	ld b, a                                          ; $6ea1: $47
	jr nz, jr_065_6f23                               ; $6ea2: $20 $7f

	ld a, h                                          ; $6ea4: $7c
	sbc c                                            ; $6ea5: $99
	scf                                              ; $6ea6: $37
	adc a                                            ; $6ea7: $8f
	jr jr_065_6e67                                   ; $6ea8: $18 $bd

	or e                                             ; $6eaa: $b3
	dec bc                                           ; $6eab: $0b
	ld h, a                                          ; $6eac: $67
	jr nz, jr_065_6ef6                               ; $6ead: $20 $47

	ld b, b                                          ; $6eaf: $40
	sbc d                                            ; $6eb0: $9a
	xor $11                                          ; $6eb1: $ee $11
	ld h, b                                          ; $6eb3: $60
	sbc a                                            ; $6eb4: $9f
	xor [hl]                                         ; $6eb5: $ae
	ld a, e                                          ; $6eb6: $7b
	ld b, b                                          ; $6eb7: $40
	sbc e                                            ; $6eb8: $9b
	ld b, e                                          ; $6eb9: $43
	ret nz                                           ; $6eba: $c0

	rst SubAFromHL                                          ; $6ebb: $d7
	add b                                            ; $6ebc: $80
	ccf                                              ; $6ebd: $3f
	ld b, b                                          ; $6ebe: $40
	sub a                                            ; $6ebf: $97
	rst $38                                          ; $6ec0: $ff
	nop                                              ; $6ec1: $00
	xor $1f                                          ; $6ec2: $ee $1f
	pop af                                           ; $6ec4: $f1
	dec sp                                           ; $6ec5: $3b
	rst SubAFromBC                                          ; $6ec6: $e7
	rla                                              ; $6ec7: $17
	ld e, a                                          ; $6ec8: $5f
	ld b, b                                          ; $6ec9: $40
	ld b, a                                          ; $6eca: $47
	ld h, b                                          ; $6ecb: $60
	sub a                                            ; $6ecc: $97
	jp hl                                            ; $6ecd: $e9


	ld d, $ed                                        ; $6ece: $16 $ed
	sub a                                            ; $6ed0: $97
	call $efe6                                       ; $6ed1: $cd $e6 $ef
	add [hl]                                         ; $6ed4: $86
	ld h, a                                          ; $6ed5: $67
	ld h, b                                          ; $6ed6: $60
	ccf                                              ; $6ed7: $3f
	add b                                            ; $6ed8: $80
	sbc [hl]                                         ; $6ed9: $9e
	ccf                                              ; $6eda: $3f
	ld a, e                                          ; $6edb: $7b
	ld a, [hl]                                       ; $6edc: $7e
	sbc h                                            ; $6edd: $9c
	sbc c                                            ; $6ede: $99
	dec sp                                           ; $6edf: $3b
	add d                                            ; $6ee0: $82
	sbc $07                                          ; $6ee1: $de $07
	cpl                                              ; $6ee3: $2f
	add b                                            ; $6ee4: $80
	sbc e                                            ; $6ee5: $9b
	ldh [$1f], a                                     ; $6ee6: $e0 $1f
	xor $91                                          ; $6ee8: $ee $91
	rra                                              ; $6eea: $1f
	add b                                            ; $6eeb: $80
	ld [hl], a                                       ; $6eec: $77
	ld a, [hl]                                       ; $6eed: $7e
	sbc c                                            ; $6eee: $99
	di                                               ; $6eef: $f3
	scf                                              ; $6ef0: $37
	inc h                                            ; $6ef1: $24
	rrca                                             ; $6ef2: $0f
	rra                                              ; $6ef3: $1f
	rrca                                             ; $6ef4: $0f
	inc hl                                           ; $6ef5: $23

jr_065_6ef6:
	add b                                            ; $6ef6: $80
	sbc d                                            ; $6ef7: $9a
	rla                                              ; $6ef8: $17
	db $ed                                           ; $6ef9: $ed
	add [hl]                                         ; $6efa: $86
	rst GetHLinHL                                          ; $6efb: $cf
	and $17                                          ; $6efc: $e6 $17
	add b                                            ; $6efe: $80
	ld a, a                                          ; $6eff: $7f
	cp $99                                           ; $6f00: $fe $99
	cp e                                             ; $6f02: $bb
	jr jr_065_6e94                                   ; $6f03: $18 $8f

	rrca                                             ; $6f05: $0f

jr_065_6f06:
	rlca                                             ; $6f06: $07
	rrca                                             ; $6f07: $0f
	inc hl                                           ; $6f08: $23
	add b                                            ; $6f09: $80
	sbc e                                            ; $6f0a: $9b
	ld de, $40fc                                     ; $6f0b: $11 $fc $40
	jp $8023                                         ; $6f0e: $c3 $23 $80


	ld a, a                                          ; $6f11: $7f
	cp $9b                                           ; $6f12: $fe $9b
	rst FarCall                                          ; $6f14: $f7
	jr nc, @+$41                                     ; $6f15: $30 $3f

	rra                                              ; $6f17: $1f
	inc de                                           ; $6f18: $13
	add b                                            ; $6f19: $80
	sbc d                                            ; $6f1a: $9a
	ld b, [hl]                                       ; $6f1b: $46
	xor a                                            ; $6f1c: $af
	add $8f                                          ; $6f1d: $c6 $8f
	add h                                            ; $6f1f: $84
	ld l, a                                          ; $6f20: $6f
	add b                                            ; $6f21: $80
	sbc [hl]                                         ; $6f22: $9e

jr_065_6f23:
	rrca                                             ; $6f23: $0f
	cp a                                             ; $6f24: $bf
	ld bc, $800f                                     ; $6f25: $01 $0f $80
	ld a, [bc]                                       ; $6f28: $0a
	ld [bc], a                                       ; $6f29: $02
	nop                                              ; $6f2a: $00
	add $c0                                          ; $6f2b: $c6 $c0
	or b                                             ; $6f2d: $b0
	ld [hl], b                                       ; $6f2e: $70
	ld l, b                                          ; $6f2f: $68
	jr jr_065_6f06                                   ; $6f30: $18 $d4

	db $ec                                           ; $6f32: $ec
	db $eb                                           ; $6f33: $eb
	ld [hl], a                                       ; $6f34: $77
	di                                               ; $6f35: $f3
	ld a, $9b                                        ; $6f36: $3e $9b
	cp $da                                           ; $6f38: $fe $da
	ld a, [hl]                                       ; $6f3a: $7e
	ld a, d                                          ; $6f3b: $7a
	cp $5e                                           ; $6f3c: $fe $5e
	db $fc                                           ; $6f3e: $fc
	sub b                                            ; $6f3f: $90
	ldh a, [$30]                                     ; $6f40: $f0 $30
	ldh [rIF], a                                     ; $6f42: $e0 $0f
	nop                                              ; $6f44: $00
	rrca                                             ; $6f45: $0f
	dec bc                                           ; $6f46: $0b
	sbc d                                            ; $6f47: $9a
	rrca                                             ; $6f48: $0f
	ld b, $06                                        ; $6f49: $06 $06
	nop                                              ; $6f4b: $00
	ret nz                                           ; $6f4c: $c0

	dec de                                           ; $6f4d: $1b
	ldh [$df], a                                     ; $6f4e: $e0 $df
	add hl, bc                                       ; $6f50: $09
	sbc l                                            ; $6f51: $9d
	rlca                                             ; $6f52: $07
	ld [bc], a                                       ; $6f53: $02
	rla                                              ; $6f54: $17
	ldh [$7f], a                                     ; $6f55: $e0 $7f
	rst SubAFromDE                                          ; $6f57: $df
	sbc d                                            ; $6f58: $9a
	dec bc                                           ; $6f59: $0b
	ld bc, $c6c7                                     ; $6f5a: $01 $c7 $c6
	or [hl]                                          ; $6f5d: $b6
	inc sp                                           ; $6f5e: $33
	ldh [rP1], a                                     ; $6f5f: $e0 $00
	add e                                            ; $6f61: $83
	adc e                                            ; $6f62: $8b
	nop                                              ; $6f63: $00
	inc bc                                           ; $6f64: $03
	ld b, $0c                                        ; $6f65: $06 $0c
	ld [$1118], sp                                   ; $6f67: $08 $18 $11
	ld [de], a                                       ; $6f6a: $12
	nop                                              ; $6f6b: $00
	inc bc                                           ; $6f6c: $03
	rlca                                             ; $6f6d: $07
	rrca                                             ; $6f6e: $0f
	rrca                                             ; $6f6f: $0f
	rra                                              ; $6f70: $1f
	rra                                              ; $6f71: $1f
	ld e, $15                                        ; $6f72: $1e $15
	add hl, de                                       ; $6f74: $19
	ld [de], a                                       ; $6f75: $12
	ld [bc], a                                       ; $6f76: $02
	sbc $04                                          ; $6f77: $de $04
	sbc d                                            ; $6f79: $9a
	dec b                                            ; $6f7a: $05
	dec e                                            ; $6f7b: $1d
	add hl, de                                       ; $6f7c: $19
	inc de                                           ; $6f7d: $13
	inc bc                                           ; $6f7e: $03
	call c, $df07                                    ; $6f7f: $dc $07 $df
	ld b, $df                                        ; $6f82: $06 $df
	inc b                                            ; $6f84: $04
	cp $67                                           ; $6f85: $fe $67
	ld hl, sp-$1f                                    ; $6f87: $f8 $e1
	sbc [hl]                                         ; $6f89: $9e
	ld bc, $03da                                     ; $6f8a: $01 $da $03
	sbc e                                            ; $6f8d: $9b
	ld bc, $0202                                     ; $6f8e: $01 $02 $02
	inc bc                                           ; $6f91: $03
	ld a, e                                          ; $6f92: $7b
	cp $7f                                           ; $6f93: $fe $7f
	db $fd                                           ; $6f95: $fd
	ld [hl], a                                       ; $6f96: $77
	db $f4                                           ; $6f97: $f4
	sbc $01                                          ; $6f98: $de $01
	ld [hl], a                                       ; $6f9a: $77
	push af                                          ; $6f9b: $f5
	db $db                                           ; $6f9c: $db
	ld bc, $e06b                                     ; $6f9d: $01 $6b $e0
	ld a, e                                          ; $6fa0: $7b
	rst SubAFromDE                                          ; $6fa1: $df
	db $dd                                           ; $6fa2: $dd
	ld [bc], a                                       ; $6fa3: $02
	ld a, [$079e]                                    ; $6fa4: $fa $9e $07
	ld e, a                                          ; $6fa7: $5f
	ld hl, sp-$67                                    ; $6fa8: $f8 $99
	rrca                                             ; $6faa: $0f
	ld sp, $ff6f                                     ; $6fab: $31 $6f $ff
	inc bc                                           ; $6fae: $03
	rra                                              ; $6faf: $1f
	ld a, e                                          ; $6fb0: $7b
	ld hl, sp-$63                                    ; $6fb1: $f8 $9d
	ld a, $70                                        ; $6fb3: $3e $70
	ld a, e                                          ; $6fb5: $7b
	ld hl, sp-$80                                    ; $6fb6: $f8 $80
	ldh a, [c]                                       ; $6fb8: $f2
	sub b                                            ; $6fb9: $90
	ld a, h                                          ; $6fba: $7c
	inc bc                                           ; $6fbb: $03
	ld e, $79                                        ; $6fbc: $1e $79
	db $ec                                           ; $6fbe: $ec
	ret nc                                           ; $6fbf: $d0

	db $fc                                           ; $6fc0: $fc
	ldh [hDisp0_SCY], a                                     ; $6fc1: $e0 $83
	rst $38                                          ; $6fc3: $ff
	rst $38                                          ; $6fc4: $ff
	cp $f0                                           ; $6fc5: $fe $f0
	ldh [$bc], a                                     ; $6fc7: $e0 $bc
	ld bc, $1806                                     ; $6fc9: $01 $06 $18
	scf                                              ; $6fcc: $37
	ld h, d                                          ; $6fcd: $62
	rst SubAFromBC                                          ; $6fce: $e7
	call z, $fec3                                    ; $6fcf: $cc $c3 $fe
	db $fc                                           ; $6fd2: $fc
	db $fd                                           ; $6fd3: $fd
	ld sp, hl                                        ; $6fd4: $f9
	rst $38                                          ; $6fd5: $ff
	cp $96                                           ; $6fd6: $fe $96
	rst $38                                          ; $6fd8: $ff
	adc h                                            ; $6fd9: $8c
	sbc b                                            ; $6fda: $98
	sbc b                                            ; $6fdb: $98
	cp c                                             ; $6fdc: $b9
	xor c                                            ; $6fdd: $a9
	db $eb                                           ; $6fde: $eb
	ld b, a                                          ; $6fdf: $47
	ld b, [hl]                                       ; $6fe0: $46
	db $dd                                           ; $6fe1: $dd
	rst $38                                          ; $6fe2: $ff
	rst SubAFromDE                                          ; $6fe3: $df
	rst AddAOntoHL                                          ; $6fe4: $ef
	rst SubAFromDE                                          ; $6fe5: $df
	ld b, a                                          ; $6fe6: $47
	ld a, a                                          ; $6fe7: $7f
	ld b, [hl]                                       ; $6fe8: $46
	rst SubAFromDE                                          ; $6fe9: $df
	dec b                                            ; $6fea: $05
	sbc $07                                          ; $6feb: $de $07
	ld [hl], a                                       ; $6fed: $77
	ld b, h                                          ; $6fee: $44
	ld a, e                                          ; $6fef: $7b
	ld c, a                                          ; $6ff0: $4f
	sbc l                                            ; $6ff1: $9d
	inc b                                            ; $6ff2: $04
	ld [bc], a                                       ; $6ff3: $02
	ld a, e                                          ; $6ff4: $7b
	add a                                            ; $6ff5: $87
	ld a, a                                          ; $6ff6: $7f
	ld hl, sp-$64                                    ; $6ff7: $f8 $9c
	inc c                                            ; $6ff9: $0c
	dec c                                            ; $6ffa: $0d
	add hl, bc                                       ; $6ffb: $09
	ld a, e                                          ; $6ffc: $7b
	adc c                                            ; $6ffd: $89
	rst SubAFromDE                                          ; $6ffe: $df
	rlca                                             ; $6fff: $07
	sbc $0f                                          ; $7000: $de $0f
	sbc $f9                                          ; $7002: $de $f9
	call c, $99fb                                    ; $7004: $dc $fb $99
	rst $38                                          ; $7007: $ff
	rrca                                             ; $7008: $0f
	rst $38                                          ; $7009: $ff
	rrca                                             ; $700a: $0f
	ld l, a                                          ; $700b: $6f
	adc a                                            ; $700c: $8f
	ld a, e                                          ; $700d: $7b
	db $fd                                           ; $700e: $fd
	adc b                                            ; $700f: $88
	scf                                              ; $7010: $37
	rst SubAFromBC                                          ; $7011: $e7
	rst $38                                          ; $7012: $ff
	ei                                               ; $7013: $fb
	rst JumpTable                                          ; $7014: $c7
	add l                                            ; $7015: $85
	add h                                            ; $7016: $84
	adc a                                            ; $7017: $8f
	rrca                                             ; $7018: $0f
	ld a, a                                          ; $7019: $7f
	rst $38                                          ; $701a: $ff
	add a                                            ; $701b: $87
	add e                                            ; $701c: $83
	inc bc                                           ; $701d: $03
	inc bc                                           ; $701e: $03
	add [hl]                                         ; $701f: $86
	adc [hl]                                         ; $7020: $8e
	ld c, $0e                                        ; $7021: $0e $0e
	ld e, $1d                                        ; $7023: $1e $1d
	dec de                                           ; $7025: $1b
	ld d, $6f                                        ; $7026: $16 $6f
	ld d, l                                          ; $7028: $55
	ld a, [hl]                                       ; $7029: $7e
	db $e4                                           ; $702a: $e4
	ei                                               ; $702b: $fb
	sbc l                                            ; $702c: $9d
	ccf                                              ; $702d: $3f
	di                                               ; $702e: $f3
	ld l, e                                          ; $702f: $6b
	ld hl, sp-$7f                                    ; $7030: $f8 $81
	db $fc                                           ; $7032: $fc
	ld c, $ff                                        ; $7033: $0e $ff
	add b                                            ; $7035: $80
	db $fc                                           ; $7036: $fc
	rst $38                                          ; $7037: $ff
	ccf                                              ; $7038: $3f
	rst SubAFromBC                                          ; $7039: $e7
	ld sp, hl                                        ; $703a: $f9
	rrca                                             ; $703b: $0f
	rst $38                                          ; $703c: $ff
	rst $38                                          ; $703d: $ff
	inc bc                                           ; $703e: $03
	nop                                              ; $703f: $00
	ret nz                                           ; $7040: $c0

	ld hl, sp-$02                                    ; $7041: $f8 $fe
	ld a, $0f                                        ; $7043: $3e $0f
	rra                                              ; $7045: $1f
	rst SubAFromBC                                          ; $7046: $e7
	ld b, a                                          ; $7047: $47
	rra                                              ; $7048: $1f
	dec c                                            ; $7049: $0d
	ld [bc], a                                       ; $704a: $02
	rlca                                             ; $704b: $07
	ld bc, $f8e0                                     ; $704c: $01 $e0 $f8
	add b                                            ; $704f: $80
	ld a, e                                          ; $7050: $7b
	ld bc, $058f                                     ; $7051: $01 $8f $05
	add hl, hl                                       ; $7054: $29
	sub a                                            ; $7055: $97
	xor a                                            ; $7056: $af
	ld e, [hl]                                       ; $7057: $5e
	db $ec                                           ; $7058: $ec
	xor d                                            ; $7059: $aa
	ld b, [hl]                                       ; $705a: $46
	ld [bc], a                                       ; $705b: $02
	ld b, $4c                                        ; $705c: $06 $4c
	sbc b                                            ; $705e: $98
	or c                                             ; $705f: $b1
	inc sp                                           ; $7060: $33
	ld [hl], a                                       ; $7061: $77
	rst $38                                          ; $7062: $ff
	ldh [$c1], a                                     ; $7063: $e0 $c1
	rst SubAFromDE                                          ; $7065: $df
	inc hl                                           ; $7066: $23
	sbc c                                            ; $7067: $99
	ld h, a                                          ; $7068: $67
	ld b, a                                          ; $7069: $47
	ld b, a                                          ; $706a: $47
	ld c, a                                          ; $706b: $4f
	call z, $dedd                                    ; $706c: $cc $dd $de
	cp $8d                                           ; $706f: $fe $8d
	db $fd                                           ; $7071: $fd
	db $fc                                           ; $7072: $fc
	db $fc                                           ; $7073: $fc
	ld hl, sp-$0f                                    ; $7074: $f8 $f1
	rst SubAFromDE                                          ; $7076: $df
	rst SubAFromDE                                          ; $7077: $df
	ld a, h                                          ; $7078: $7c
	ld [hl], b                                       ; $7079: $70
	ldh [$c0], a                                     ; $707a: $e0 $c0
	ld bc, $f303                                     ; $707c: $01 $03 $f3
	cp $f8                                           ; $707f: $fe $f8
	ldh [$c0], a                                     ; $7081: $e0 $c0
	ld sp, hl                                        ; $7083: $f9
	sbc h                                            ; $7084: $9c
	rra                                              ; $7085: $1f
	and $d9                                          ; $7086: $e6 $d9
	ld l, a                                          ; $7088: $6f
	ld hl, sp-$80                                    ; $7089: $f8 $80
	rst SubAFromBC                                          ; $708b: $e7
	add hl, sp                                       ; $708c: $39
	ld [hl], e                                       ; $708d: $73
	cp e                                             ; $708e: $bb
	jp hl                                            ; $708f: $e9


	db $10                                           ; $7090: $10
	ld [$c080], sp                                   ; $7091: $08 $80 $c0
	pop bc                                           ; $7094: $c1
	adc a                                            ; $7095: $8f
	rst JumpTable                                          ; $7096: $c7
	rst FarCall                                          ; $7097: $f7
	rst $38                                          ; $7098: $ff
	rst $38                                          ; $7099: $ff
	ld a, a                                          ; $709a: $7f
	ccf                                              ; $709b: $3f
	ld a, $e0                                        ; $709c: $3e $e0
	pop hl                                           ; $709e: $e1
	ld h, d                                          ; $709f: $62
	and $c0                                          ; $70a0: $e6 $c0
	add e                                            ; $70a2: $83
	inc sp                                           ; $70a3: $33
	db $db                                           ; $70a4: $db
	rra                                              ; $70a5: $1f
	ld e, $9c                                        ; $70a6: $1e $9c
	add hl, de                                       ; $70a8: $19
	ccf                                              ; $70a9: $3f
	sub h                                            ; $70aa: $94
	ld a, h                                          ; $70ab: $7c
	call z, $9b04                                    ; $70ac: $cc $04 $9b
	inc sp                                           ; $70af: $33
	dec h                                            ; $70b0: $25
	dec b                                            ; $70b1: $05
	inc b                                            ; $70b2: $04
	dec h                                            ; $70b3: $25
	ld d, b                                          ; $70b4: $50
	ld c, [hl]                                       ; $70b5: $4e
	ld l, [hl]                                       ; $70b6: $6e
	inc sp                                           ; $70b7: $33
	sbc l                                            ; $70b8: $9d
	dec h                                            ; $70b9: $25
	dec [hl]                                         ; $70ba: $35
	ldh [$c1], a                                     ; $70bb: $e0 $c1
	sub a                                            ; $70bd: $97
	push bc                                          ; $70be: $c5
	ld h, a                                          ; $70bf: $67
	cp a                                             ; $70c0: $bf
	adc a                                            ; $70c1: $8f
	rst SubAFromDE                                          ; $70c2: $df
	cp $f8                                           ; $70c3: $fe $f8
	pop hl                                           ; $70c5: $e1
	db $dd                                           ; $70c6: $dd
	rlca                                             ; $70c7: $07
	sub e                                            ; $70c8: $93
	add [hl]                                         ; $70c9: $86
	ld e, h                                          ; $70ca: $5c
	ld [hl], b                                       ; $70cb: $70
	ret nz                                           ; $70cc: $c0

	add a                                            ; $70cd: $87
	rrca                                             ; $70ce: $0f
	rra                                              ; $70cf: $1f
	ccf                                              ; $70d0: $3f
	ld a, h                                          ; $70d1: $7c
	ld sp, hl                                        ; $70d2: $f9
	db $e3                                           ; $70d3: $e3
	add a                                            ; $70d4: $87
	db $fd                                           ; $70d5: $fd
	ld a, [hl]                                       ; $70d6: $7e
	adc [hl]                                         ; $70d7: $8e
	sbc l                                            ; $70d8: $9d
	rra                                              ; $70d9: $1f
	ld a, [hl]                                       ; $70da: $7e
	db $fc                                           ; $70db: $fc
	sbc h                                            ; $70dc: $9c
	add b                                            ; $70dd: $80
	ld h, h                                          ; $70de: $64
	or d                                             ; $70df: $b2
	ld l, a                                          ; $70e0: $6f
	ld hl, sp-$7e                                    ; $70e1: $f8 $82
	db $e4                                           ; $70e3: $e4
	ld [hl], d                                       ; $70e4: $72
	ld e, e                                          ; $70e5: $5b
	xor l                                            ; $70e6: $ad
	or a                                             ; $70e7: $b7
	ld [hl], a                                       ; $70e8: $77
	ld [hl], e                                       ; $70e9: $73
	ld [hl], e                                       ; $70ea: $73
	rst SubAFromBC                                          ; $70eb: $e7
	add b                                            ; $70ec: $80
	cp e                                             ; $70ed: $bb
	db $dd                                           ; $70ee: $dd
	rst GetHLinHL                                          ; $70ef: $cf
	adc a                                            ; $70f0: $8f
	adc a                                            ; $70f1: $8f
	adc [hl]                                         ; $70f2: $8e
	ld e, $7f                                        ; $70f3: $1e $7f
	ld b, b                                          ; $70f5: $40
	ld [hl-], a                                      ; $70f6: $32
	and b                                            ; $70f7: $a0
	nop                                              ; $70f8: $00
	rst $38                                          ; $70f9: $ff
	rst $38                                          ; $70fa: $ff
	rst FarCall                                          ; $70fb: $f7
	ld hl, sp-$80                                    ; $70fc: $f8 $80
	ld bc, $7a40                                     ; $70fe: $01 $40 $7a
	call nc, $c37f                                   ; $7101: $d4 $7f $c3
	sub b                                            ; $7104: $90
	and $ff                                          ; $7105: $e6 $ff
	rst $38                                          ; $7107: $ff
	db $dd                                           ; $7108: $dd
	adc $d6                                          ; $7109: $ce $d6
	ld d, l                                          ; $710b: $55
	adc c                                            ; $710c: $89
	add hl, de                                       ; $710d: $19
	nop                                              ; $710e: $00
	nop                                              ; $710f: $00
	ld [hl+], a                                      ; $7110: $22
	inc sp                                           ; $7111: $33
	dec sp                                           ; $7112: $3b
	cp e                                             ; $7113: $bb
	ld [bc], a                                       ; $7114: $02
	ret nz                                           ; $7115: $c0

	pop hl                                           ; $7116: $e1
	sub [hl]                                         ; $7117: $96
	ld a, b                                          ; $7118: $78
	ld [hl], b                                       ; $7119: $70
	ldh [hLCDCIntHandlerIdx], a                                     ; $711a: $e0 $81
	rrca                                             ; $711c: $0f
	dec a                                            ; $711d: $3d
	ei                                               ; $711e: $fb
	rst FarCall                                          ; $711f: $f7
	ldh a, [$7a]                                     ; $7120: $f0 $7a
	jp nc, $ca7e                                     ; $7122: $d2 $7e $ca

	ld a, l                                          ; $7125: $7d
	cp $8f                                           ; $7126: $fe $8f
	rst AddAOntoHL                                          ; $7128: $ef
	pop de                                           ; $7129: $d1
	and d                                            ; $712a: $a2
	ld b, l                                          ; $712b: $45
	adc d                                            ; $712c: $8a
	inc c                                            ; $712d: $0c
	sub h                                            ; $712e: $94
	ld hl, sp+$1f                                    ; $712f: $f8 $1f
	inc sp                                           ; $7131: $33
	ld h, a                                          ; $7132: $67
	sbc $fc                                          ; $7133: $de $fc
	ld hl, sp-$08                                    ; $7135: $f8 $f8
	ldh a, [$f0]                                     ; $7137: $f0 $f0
	rst SubAFromDE                                          ; $7139: $df
	add b                                            ; $713a: $80
	sbc d                                            ; $713b: $9a
	ret nz                                           ; $713c: $c0

	ld b, b                                          ; $713d: $40
	ld e, a                                          ; $713e: $5f
	ld a, d                                          ; $713f: $7a
	rst FarCall                                          ; $7140: $f7
	ld [hl], a                                       ; $7141: $77
	ld hl, sp-$80                                    ; $7142: $f8 $80
	ret nz                                           ; $7144: $c0

	rst SubAFromDE                                          ; $7145: $df
	or $cf                                           ; $7146: $f6 $cf
	dec a                                            ; $7148: $3d
	ld c, a                                          ; $7149: $4f
	inc de                                           ; $714a: $13
	add l                                            ; $714b: $85
	add hl, hl                                       ; $714c: $29
	adc $f3                                          ; $714d: $ce $f3
	db $fd                                           ; $714f: $fd
	inc bc                                           ; $7150: $03
	add b                                            ; $7151: $80
	ld h, b                                          ; $7152: $60
	jr @-$38                                         ; $7153: $18 $c6

	ld sp, $820c                                     ; $7155: $31 $0c $82
	xor a                                            ; $7158: $af
	ld [hl], a                                       ; $7159: $77
	ld e, e                                          ; $715a: $5b
	cp e                                             ; $715b: $bb
	xor l                                            ; $715c: $ad
	db $dd                                           ; $715d: $dd
	ld d, [hl]                                       ; $715e: $56
	ld l, a                                          ; $715f: $6f
	pop de                                           ; $7160: $d1
	ret z                                            ; $7161: $c8

	db $e4                                           ; $7162: $e4
	sub d                                            ; $7163: $92
	ld h, h                                          ; $7164: $64
	ld [hl], d                                       ; $7165: $72
	ld [hl-], a                                      ; $7166: $32
	cp c                                             ; $7167: $b9
	sbc c                                            ; $7168: $99
	adc b                                            ; $7169: $88
	call nz, Call_065_5264                           ; $716a: $c4 $64 $52
	ld a, [hl+]                                      ; $716d: $2a
	dec h                                            ; $716e: $25
	sub d                                            ; $716f: $92
	ld c, c                                          ; $7170: $49
	reti                                             ; $7171: $d9


	rst $38                                          ; $7172: $ff
	sbc l                                            ; $7173: $9d
	ld a, $8b                                        ; $7174: $3e $8b
	db $dd                                           ; $7176: $dd
	cp e                                             ; $7177: $bb
	adc l                                            ; $7178: $8d
	ccf                                              ; $7179: $3f
	ld a, [hl]                                       ; $717a: $7e
	rst $38                                          ; $717b: $ff
	ld a, l                                          ; $717c: $7d

jr_065_717d:
	ld c, h                                          ; $717d: $4c
	ld c, h                                          ; $717e: $4c
	dec c                                            ; $717f: $0d
	rrca                                             ; $7180: $0f
	rrca                                             ; $7181: $0f
	ccf                                              ; $7182: $3f
	push af                                          ; $7183: $f5
	jp hl                                            ; $7184: $e9


	ld d, c                                          ; $7185: $51
	sub e                                            ; $7186: $93
	ld a, $3c                                        ; $7187: $3e $3c
	ld a, b                                          ; $7189: $78
	pop af                                           ; $718a: $f1
	reti                                             ; $718b: $d9


	rst $38                                          ; $718c: $ff
	sbc [hl]                                         ; $718d: $9e
	jp $e07a                                         ; $718e: $c3 $7a $e0


	sbc h                                            ; $7191: $9c
	rst $38                                          ; $7192: $ff
	db $e3                                           ; $7193: $e3
	nop                                              ; $7194: $00
	ld a, e                                          ; $7195: $7b
	inc c                                            ; $7196: $0c
	sbc h                                            ; $7197: $9c
	cp $f3                                           ; $7198: $fe $f3
	rst $38                                          ; $719a: $ff
	ld a, c                                          ; $719b: $79
	rst GetHLinHL                                          ; $719c: $cf
	sub a                                            ; $719d: $97
	nop                                              ; $719e: $00
	jr nc, @+$7b                                     ; $719f: $30 $79

	db $fd                                           ; $71a1: $fd
	jp nz, $e37f                                     ; $71a2: $c2 $7f $e3

	db $dd                                           ; $71a5: $dd
	db $fd                                           ; $71a6: $fd
	sub a                                            ; $71a7: $97
	db $fc                                           ; $71a8: $fc
	ld a, [hl]                                       ; $71a9: $7e
	rst $38                                          ; $71aa: $ff
	db $e3                                           ; $71ab: $e3
	cp [hl]                                          ; $71ac: $be
	ld a, b                                          ; $71ad: $78

Jump_065_71ae:
	ldh [$80], a                                     ; $71ae: $e0 $80
	ld a, c                                          ; $71b0: $79
	add a                                            ; $71b1: $87
	sbc h                                            ; $71b2: $9c
	rlca                                             ; $71b3: $07
	pop bc                                           ; $71b4: $c1
	add c                                            ; $71b5: $81
	ld a, b                                          ; $71b6: $78
	sbc $7d                                          ; $71b7: $de $7d
	add c                                            ; $71b9: $81
	add b                                            ; $71ba: $80
	jr jr_065_717d                                   ; $71bb: $18 $c0

	ld h, b                                          ; $71bd: $60
	or b                                             ; $71be: $b0
	ret c                                            ; $71bf: $d8

	add sp, $6c                                      ; $71c0: $e8 $6c
	inc [hl]                                         ; $71c2: $34
	sub [hl]                                         ; $71c3: $96
	ret nz                                           ; $71c4: $c0

	ldh [rSVBK], a                                   ; $71c5: $e0 $70
	jr c, jr_065_71e1                                ; $71c7: $38 $18

	sbc h                                            ; $71c9: $9c
	call z, $ca6e                                    ; $71ca: $cc $6e $ca
	ld [$d362], a                                    ; $71cd: $ea $62 $d3
	or c                                             ; $71d0: $b1
	pop hl                                           ; $71d1: $e1
	pop de                                           ; $71d2: $d1
	ld [hl], c                                       ; $71d3: $71
	ld [hl], $96                                     ; $71d4: $36 $96
	sbc $6f                                          ; $71d6: $de $6f
	ld l, a                                          ; $71d8: $6f
	ccf                                              ; $71d9: $3f
	sub e                                            ; $71da: $93
	ccf                                              ; $71db: $3f
	sbc a                                            ; $71dc: $9f
	xor c                                            ; $71dd: $a9
	xor c                                            ; $71de: $a9
	ld c, c                                          ; $71df: $49
	ld b, l                                          ; $71e0: $45

jr_065_71e1:
	dec h                                            ; $71e1: $25
	dec h                                            ; $71e2: $25
	sub l                                            ; $71e3: $95
	ld d, l                                          ; $71e4: $55
	rst SubAFromDE                                          ; $71e5: $df
	rst SubAFromDE                                          ; $71e6: $df
	db $db                                           ; $71e7: $db
	rst $38                                          ; $71e8: $ff
	sub a                                            ; $71e9: $97
	db $ed                                           ; $71ea: $ed
	db $fd                                           ; $71eb: $fd
	push af                                          ; $71ec: $f5
	push af                                          ; $71ed: $f5
	push de                                          ; $71ee: $d5
	push de                                          ; $71ef: $d5
	and l                                            ; $71f0: $a5
	xor e                                            ; $71f1: $ab
	reti                                             ; $71f2: $d9


	rst $38                                          ; $71f3: $ff
	rst SubAFromDE                                          ; $71f4: $df
	ld c, d                                          ; $71f5: $4a
	sbc c                                            ; $71f6: $99
	sub [hl]                                         ; $71f7: $96
	inc d                                            ; $71f8: $14
	inc l                                            ; $71f9: $2c
	ld e, b                                          ; $71fa: $58
	db $fc                                           ; $71fb: $fc
	rst $38                                          ; $71fc: $ff
	sbc $fe                                          ; $71fd: $de $fe
	ld a, c                                          ; $71ff: $79
	pop bc                                           ; $7200: $c1
	sbc l                                            ; $7201: $9d
	db $fc                                           ; $7202: $fc
	jp $ffdd                                         ; $7203: $c3 $dd $ff


	add b                                            ; $7206: $80
	ei                                               ; $7207: $fb
	db $fd                                           ; $7208: $fd
	rrca                                             ; $7209: $0f
	scf                                              ; $720a: $37
	ld hl, sp+$06                                    ; $720b: $f8 $06
	ld a, c                                          ; $720d: $79
	cp $ff                                           ; $720e: $fe $ff
	ld c, $06                                        ; $7210: $0e $06
	ld [hl-], a                                      ; $7212: $32
	db $db                                           ; $7213: $db
	ld l, l                                          ; $7214: $6d
	scf                                              ; $7215: $37
	cp e                                             ; $7216: $bb
	db $dd                                           ; $7217: $dd
	call z, $f666                                    ; $7218: $cc $66 $f6
	add hl, de                                       ; $721b: $19
	ld b, a                                          ; $721c: $47
	inc hl                                           ; $721d: $23
	sub c                                            ; $721e: $91
	adc b                                            ; $721f: $88
	ld b, a                                          ; $7220: $47
	cpl                                              ; $7221: $2f
	cp a                                             ; $7222: $bf
	push de                                          ; $7223: $d5
	ld d, l                                          ; $7224: $55
	ld [hl], l                                       ; $7225: $75
	sbc e                                            ; $7226: $9b
	sbc l                                            ; $7227: $9d
	db $e3                                           ; $7228: $e3
	rst FarCall                                          ; $7229: $f7
	rst AddAOntoHL                                          ; $722a: $ef
	ld [hl], a                                       ; $722b: $77
	or d                                             ; $722c: $b2
	sbc d                                            ; $722d: $9a
	ld a, a                                          ; $722e: $7f
	rra                                              ; $722f: $1f
	ld c, $1c                                        ; $7230: $0e $1c
	add hl, sp                                       ; $7232: $39
	pop af                                           ; $7233: $f1
	ld a, l                                          ; $7234: $7d
	ld a, [de]                                       ; $7235: $1a
	sbc [hl]                                         ; $7236: $9e
	db $fc                                           ; $7237: $fc
	call c, $97fe                                    ; $7238: $dc $fe $97
	ldh [rAUD2LOW], a                                ; $723b: $e0 $18
	add h                                            ; $723d: $84
	ld b, d                                          ; $723e: $42
	or d                                             ; $723f: $b2
	jp z, $3a76                                      ; $7240: $ca $76 $3a

	sbc $5a                                          ; $7243: $de $5a
	sbc d                                            ; $7245: $9a
	sbc d                                            ; $7246: $9a
	sub b                                            ; $7247: $90
	sub h                                            ; $7248: $94
	and b                                            ; $7249: $a0
	xor b                                            ; $724a: $a8
	sbc $be                                          ; $724b: $de $be
	ld [hl], a                                       ; $724d: $77
	sbc a                                            ; $724e: $9f
	ld a, [hl]                                       ; $724f: $7e
	xor a                                            ; $7250: $af
	sub e                                            ; $7251: $93
	ld d, b                                          ; $7252: $50
	ldh [$e0], a                                     ; $7253: $e0 $e0
	ret nz                                           ; $7255: $c0

	add b                                            ; $7256: $80
	add b                                            ; $7257: $80
	nop                                              ; $7258: $00
	ldh a, [$f0]                                     ; $7259: $f0 $f0
	ldh [$e0], a                                     ; $725b: $e0 $e0
	ld b, b                                          ; $725d: $40
	ld a, e                                          ; $725e: $7b
	ld hl, sp+$22                                    ; $725f: $f8 $22
	nop                                              ; $7261: $00
	rst SubAFromDE                                          ; $7262: $df
	sbc c                                            ; $7263: $99
	rst SubAFromDE                                          ; $7264: $df
	adc b                                            ; $7265: $88
	sub l                                            ; $7266: $95
	sbc c                                            ; $7267: $99
	ld de, $88dd                                     ; $7268: $11 $dd $88
	ld b, h                                          ; $726b: $44
	sbc c                                            ; $726c: $99
	ld de, $9999                                     ; $726d: $11 $99 $99
	nop                                              ; $7270: $00
	ld [hl], a                                       ; $7271: $77
	ei                                               ; $7272: $fb
	ld [hl], e                                       ; $7273: $73
	or $9a                                           ; $7274: $f6 $9a
	ld [hl+], a                                      ; $7276: $22
	sbc c                                            ; $7277: $99
	ld de, $0000                                     ; $7278: $11 $00 $00
	ld a, e                                          ; $727b: $7b
	or $9b                                           ; $727c: $f6 $9b
	or e                                             ; $727e: $b3
	ld b, h                                          ; $727f: $44
	cp e                                             ; $7280: $bb
	call z, $00d5                                    ; $7281: $cc $d5 $00
	adc l                                            ; $7284: $8d
	ld b, [hl]                                       ; $7285: $46
	rst $38                                          ; $7286: $ff
	adc $ff                                          ; $7287: $ce $ff
	adc $fb                                          ; $7289: $ce $fb
	sbc $f3                                          ; $728b: $de $f3
	rst SubAFromDE                                          ; $728d: $df
	ld [hl], a                                       ; $728e: $77
	pop af                                           ; $728f: $f1
	ld a, a                                          ; $7290: $7f
	rst SubAFromBC                                          ; $7291: $e7
	ccf                                              ; $7292: $3f
	nop                                              ; $7293: $00
	rst $38                                          ; $7294: $ff
	rst $38                                          ; $7295: $ff
	nop                                              ; $7296: $00
	ld a, e                                          ; $7297: $7b
	cp $97                                           ; $7298: $fe $97
	inc a                                            ; $729a: $3c
	rst $38                                          ; $729b: $ff
	ld a, $ff                                        ; $729c: $3e $ff
	ld h, c                                          ; $729e: $61
	ld a, a                                          ; $729f: $7f
	nop                                              ; $72a0: $00
	ld a, $fe                                        ; $72a1: $3e $fe
	adc h                                            ; $72a3: $8c
	rst $38                                          ; $72a4: $ff
	rst GetHLinHL                                          ; $72a5: $cf
	ld b, b                                          ; $72a6: $40
	ret nz                                           ; $72a7: $c0

	ld h, b                                          ; $72a8: $60
	ret nz                                           ; $72a9: $c0

	ld [hl], b                                       ; $72aa: $70
	ldh [$98], a                                     ; $72ab: $e0 $98
	ldh a, [$dc]                                     ; $72ad: $f0 $dc
	cp b                                             ; $72af: $b8
	ld l, $be                                        ; $72b0: $2e $be
	sbc e                                            ; $72b2: $9b
	cpl                                              ; $72b3: $2f
	sbc e                                            ; $72b4: $9b
	cpl                                              ; $72b5: $2f
	dec de                                           ; $72b6: $1b
	ld a, e                                          ; $72b7: $7b
	cp $92                                           ; $72b8: $fe $92
	ld e, e                                          ; $72ba: $5b
	cpl                                              ; $72bb: $2f
	ld e, e                                          ; $72bc: $5b
	ccf                                              ; $72bd: $3f
	ld d, e                                          ; $72be: $53
	ld a, $73                                        ; $72bf: $3e $73
	ld a, $b3                                        ; $72c1: $3e $b3
	ld a, [hl]                                       ; $72c3: $7e
	ld b, h                                          ; $72c4: $44
	rst $38                                          ; $72c5: $ff
	ld b, [hl]                                       ; $72c6: $46
	ld a, e                                          ; $72c7: $7b
	cp $80                                           ; $72c8: $fe $80
	ld c, [hl]                                       ; $72ca: $4e
	ei                                               ; $72cb: $fb
	ld c, a                                          ; $72cc: $4f
	ld sp, hl                                        ; $72cd: $f9
	rst AddAOntoHL                                          ; $72ce: $ef
	ld sp, hl                                        ; $72cf: $f9
	rst AddAOntoHL                                          ; $72d0: $ef
	cp b                                             ; $72d1: $b8
	cp $99                                           ; $72d2: $fe $99
	inc a                                            ; $72d4: $3c
	db $db                                           ; $72d5: $db
	cp l                                             ; $72d6: $bd
	ld c, d                                          ; $72d7: $4a
	add c                                            ; $72d8: $81
	ld a, [hl]                                       ; $72d9: $7e
	db $fd                                           ; $72da: $fd
	ld h, [hl]                                       ; $72db: $66
	rst $38                                          ; $72dc: $ff
	ld h, [hl]                                       ; $72dd: $66
	sbc [hl]                                         ; $72de: $9e
	ld [bc], a                                       ; $72df: $02
	inc e                                            ; $72e0: $1c
	nop                                              ; $72e1: $00
	cp [hl]                                          ; $72e2: $be
	nop                                              ; $72e3: $00
	adc b                                            ; $72e4: $88
	rst $38                                          ; $72e5: $ff
	call z, $ecff                                    ; $72e6: $cc $ff $ec
	sub d                                            ; $72e9: $92
	rst $38                                          ; $72ea: $ff
	xor $bb                                          ; $72eb: $ee $bb
	rst AddAOntoHL                                          ; $72ed: $ef
	cp c                                             ; $72ee: $b9
	xor a                                            ; $72ef: $af
	db $fd                                           ; $72f0: $fd
	reti                                             ; $72f1: $d9


	cp $08                                           ; $72f2: $fe $08
	rst $38                                          ; $72f4: $ff
	rst $38                                          ; $72f5: $ff
	ld [$fe7b], sp                                   ; $72f6: $08 $7b $fe
	ld a, a                                          ; $72f9: $7f
	xor d                                            ; $72fa: $aa
	sbc c                                            ; $72fb: $99
	ld a, b                                          ; $72fc: $78
	rst $38                                          ; $72fd: $ff
	cp $ff                                           ; $72fe: $fe $ff
	inc bc                                           ; $7300: $03
	ld a, a                                          ; $7301: $7f
	cp $80                                           ; $7302: $fe $80
	ld c, $01                                        ; $7304: $0e $01
	inc bc                                           ; $7306: $03
	inc bc                                           ; $7307: $03
	dec c                                            ; $7308: $0d
	ld c, $1b                                        ; $7309: $0e $1b
	ld de, $2234                                     ; $730b: $11 $34 $22
	ld l, b                                          ; $730e: $68
	ld b, l                                          ; $730f: $45
	jp nc, $2589                                     ; $7310: $d2 $89 $25

	sub b                                            ; $7313: $90
	ret nz                                           ; $7314: $c0

	ld hl, $4381                                     ; $7315: $21 $81 $43
	ld h, d                                          ; $7318: $62
	sub a                                            ; $7319: $97
	db $fc                                           ; $731a: $fc
	and a                                            ; $731b: $a7
	db $f4                                           ; $731c: $f4
	cpl                                              ; $731d: $2f
	bit 7, a                                         ; $731e: $cb $7f
	adc $7e                                          ; $7320: $ce $7e
	ld e, h                                          ; $7322: $5c
	sbc b                                            ; $7323: $98
	db $fc                                           ; $7324: $fc
	inc a                                            ; $7325: $3c
	stop                                             ; $7326: $10 $00
	nop                                              ; $7328: $00
	ld a, $3c                                        ; $7329: $3e $3c
	sbc $3e                                          ; $732b: $de $3e
	rst SubAFromDE                                          ; $732d: $df
	ld e, $df                                        ; $732e: $1e $df
	inc e                                            ; $7330: $1c
	adc h                                            ; $7331: $8c
	nop                                              ; $7332: $00
	add c                                            ; $7333: $81
	ld bc, $c3e7                                     ; $7334: $01 $e7 $c3
	cp $ff                                           ; $7337: $fe $ff
	cp $e3                                           ; $7339: $fe $e3
	db $f4                                           ; $733b: $f4
	and a                                            ; $733c: $a7
	push hl                                          ; $733d: $e5

Call_065_733e:
	daa                                              ; $733e: $27
	push hl                                          ; $733f: $e5
	rlca                                             ; $7340: $07
	push hl                                          ; $7341: $e5
	rlca                                             ; $7342: $07
	push bc                                          ; $7343: $c5
	rlca                                             ; $7344: $07
	ld e, e                                          ; $7345: $5b
	ldh [$fe], a                                     ; $7346: $e0 $fe
	dec hl                                           ; $7348: $2b
	ldh [$9e], a                                     ; $7349: $e0 $9e
	inc e                                            ; $734b: $1c
	ld l, a                                          ; $734c: $6f
	ldh [c], a                                       ; $734d: $e2
	daa                                              ; $734e: $27
	ldh [$9c], a                                     ; $734f: $e0 $9c
	ld e, $16                                        ; $7351: $1e $16
	inc c                                            ; $7353: $0c
	ld a, [$e03f]                                    ; $7354: $fa $3f $e0
	xor e                                            ; $7357: $ab
	ld [bc], a                                       ; $7358: $02
	jp hl                                            ; $7359: $e9


	rst SubAFromDE                                          ; $735a: $df
	ld bc, $0299                                     ; $735b: $01 $99 $02
	inc bc                                           ; $735e: $03
	inc bc                                           ; $735f: $03
	ld [bc], a                                       ; $7360: $02
	dec b                                            ; $7361: $05
	ld b, $77                                        ; $7362: $06 $77
	or $77                                           ; $7364: $f6 $77
	db $f4                                           ; $7366: $f4
	ld a, a                                          ; $7367: $7f
	or $7f                                           ; $7368: $f6 $7f
	cp $8f                                           ; $736a: $fe $8f
	dec bc                                           ; $736c: $0b
	inc c                                            ; $736d: $0c
	dec bc                                           ; $736e: $0b
	inc c                                            ; $736f: $0c
	rla                                              ; $7370: $17
	jr jr_065_73ab                                   ; $7371: $18 $38

	ccf                                              ; $7373: $3f
	ld b, a                                          ; $7374: $47
	ld a, b                                          ; $7375: $78
	sbc a                                            ; $7376: $9f
	ldh [$7f], a                                     ; $7377: $e0 $7f
	add b                                            ; $7379: $80
	rst $38                                          ; $737a: $ff
	nop                                              ; $737b: $00
	ld [hl], a                                       ; $737c: $77
	cp $e5                                           ; $737d: $fe $e5
	rst SubAFromDE                                          ; $737f: $df
	ld bc, $03df                                     ; $7380: $01 $df $03
	rst SubAFromDE                                          ; $7383: $df
	dec b                                            ; $7384: $05

jr_065_7385:
	rst SubAFromDE                                          ; $7385: $df
	inc bc                                           ; $7386: $03
	add b                                            ; $7387: $80
	rlca                                             ; $7388: $07
	ld b, $06                                        ; $7389: $06 $06
	dec b                                            ; $738b: $05
	dec bc                                           ; $738c: $0b
	dec c                                            ; $738d: $0d
	dec c                                            ; $738e: $0d
	dec bc                                           ; $738f: $0b
	rla                                              ; $7390: $17
	ld a, [de]                                       ; $7391: $1a
	ld e, $13                                        ; $7392: $1e $13
	dec de                                           ; $7394: $1b
	ld d, $2d                                        ; $7395: $16 $2d
	ld [hl], $37                                     ; $7397: $36 $37
	inc l                                            ; $7399: $2c
	ccf                                              ; $739a: $3f
	inc l                                            ; $739b: $2c
	cpl                                              ; $739c: $2f
	inc a                                            ; $739d: $3c
	scf                                              ; $739e: $37
	inc [hl]                                         ; $739f: $34
	dec [hl]                                         ; $73a0: $35
	ld [hl], $25                                     ; $73a1: $36 $25
	ld h, $05                                        ; $73a3: $26 $05
	ld b, $07                                        ; $73a5: $06 $07
	sbc [hl]                                         ; $73a7: $9e
	ld b, $7b                                        ; $73a8: $06 $7b
	sub [hl]                                         ; $73aa: $96

jr_065_73ab:
	sbc [hl]                                         ; $73ab: $9e
	inc bc                                           ; $73ac: $03
	db $dd                                           ; $73ad: $dd
	ld bc, $c247                                     ; $73ae: $01 $47 $c2
	db $d3                                           ; $73b1: $d3
	ld bc, $dff3                                     ; $73b2: $01 $f3 $df
	inc bc                                           ; $73b5: $03
	add b                                            ; $73b6: $80
	rra                                              ; $73b7: $1f
	inc e                                            ; $73b8: $1c
	inc hl                                           ; $73b9: $23
	inc a                                            ; $73ba: $3c
	ld [hl], e                                       ; $73bb: $73
	ld a, h                                          ; $73bc: $7c
	ldh a, [$de]                                     ; $73bd: $f0 $de
	cp $c8                                           ; $73bf: $fe $c8
	cp $28                                           ; $73c1: $fe $28
	ld a, $14                                        ; $73c3: $3e $14
	ccf                                              ; $73c5: $3f
	inc c                                            ; $73c6: $0c
	rra                                              ; $73c7: $1f
	inc c                                            ; $73c8: $0c
	rra                                              ; $73c9: $1f
	inc b                                            ; $73ca: $04
	rrca                                             ; $73cb: $0f
	ld b, $1f                                        ; $73cc: $06 $1f
	ld [bc], a                                       ; $73ce: $02
	ld a, a                                          ; $73cf: $7f
	ld [bc], a                                       ; $73d0: $02
	rrca                                             ; $73d1: $0f
	ld [bc], a                                       ; $73d2: $02
	rlca                                             ; $73d3: $07
	ld [bc], a                                       ; $73d4: $02
	rra                                              ; $73d5: $1f
	ld [hl], e                                       ; $73d6: $73
	ld a, [$079d]                                    ; $73d7: $fa $9d $07
	inc bc                                           ; $73da: $03
	rst AddAOntoHL                                          ; $73db: $ef
	rst SubAFromDE                                          ; $73dc: $df
	rlca                                             ; $73dd: $07
	add e                                            ; $73de: $83
	dec de                                           ; $73df: $1b
	inc e                                            ; $73e0: $1c
	dec l                                            ; $73e1: $2d
	inc sp                                           ; $73e2: $33
	ld d, [hl]                                       ; $73e3: $56
	ld l, a                                          ; $73e4: $6f
	sbc c                                            ; $73e5: $99
	cp $66                                           ; $73e6: $fe $66
	ld sp, hl                                        ; $73e8: $f9
	set 6, a                                         ; $73e9: $cb $f7
	and [hl]                                         ; $73eb: $a6
	call $9a4c                                       ; $73ec: $cd $4c $9a
	jr jr_065_7385                                   ; $73ef: $18 $94

	or c                                             ; $73f1: $b1
	jr jr_065_7464                                   ; $73f2: $18 $70

	ld hl, $7123                                     ; $73f4: $21 $23 $71
	pop hl                                           ; $73f7: $e1
	ld b, e                                          ; $73f8: $43
	ld b, a                                          ; $73f9: $47
	ldh [c], a                                       ; $73fa: $e2
	ldh [$c1], a                                     ; $73fb: $e0 $c1
	sbc b                                            ; $73fd: $98
	halt                                             ; $73fe: $76
	ld e, e                                          ; $73ff: $5b
	ld e, c                                          ; $7400: $59
	ld l, a                                          ; $7401: $6f
	cpl                                              ; $7402: $2f
	ccf                                              ; $7403: $3f
	ld a, b                                          ; $7404: $78
	ld h, [hl]                                       ; $7405: $66
	pop hl                                           ; $7406: $e1
	sbc d                                            ; $7407: $9a
	rst $38                                          ; $7408: $ff
	ld a, [hl]                                       ; $7409: $7e
	ld bc, $007f                                     ; $740a: $01 $7f $00
	ld [hl], a                                       ; $740d: $77
	cp $9e                                           ; $740e: $fe $9e
	ccf                                              ; $7410: $3f
	ld [hl], e                                       ; $7411: $73
	cp $9c                                           ; $7412: $fe $9c
	cp a                                             ; $7414: $bf
	nop                                              ; $7415: $00
	sbc a                                            ; $7416: $9f
	ld [hl], e                                       ; $7417: $73
	cp $9e                                           ; $7418: $fe $9e
	rst GetHLinHL                                          ; $741a: $cf
	ld a, e                                          ; $741b: $7b
	cp $99                                           ; $741c: $fe $99
	jp $c000                                         ; $741e: $c3 $00 $c0


	nop                                              ; $7421: $00
	db $fc                                           ; $7422: $fc
	add b                                            ; $7423: $80
	rst FarCall                                          ; $7424: $f7
	rst SubAFromDE                                          ; $7425: $df
	rra                                              ; $7426: $1f
	ld a, [hl]                                       ; $7427: $7e
	push af                                          ; $7428: $f5
	rst SubAFromDE                                          ; $7429: $df
	ld bc, $ffdf                                     ; $742a: $01 $df $ff
	add c                                            ; $742d: $81
	ld [hl], b                                       ; $742e: $70
	add b                                            ; $742f: $80
	rst $38                                          ; $7430: $ff
	ccf                                              ; $7431: $3f
	ldh [$c0], a                                     ; $7432: $e0 $c0
	sbc e                                            ; $7434: $9b
	rlca                                             ; $7435: $07
	cp h                                             ; $7436: $bc
	ld a, b                                          ; $7437: $78
	db $dd                                           ; $7438: $dd
	db $e3                                           ; $7439: $e3
	halt                                             ; $743a: $76
	adc a                                            ; $743b: $8f
	jr jr_065_747a                                   ; $743c: $18 $3c

	add hl, hl                                       ; $743e: $29
	ld [hl], e                                       ; $743f: $73
	ld d, e                                          ; $7440: $53
	and $a6                                          ; $7441: $e6 $a6
	call z, $8cc0                                    ; $7443: $cc $c0 $8c
	add b                                            ; $7446: $80
	ld bc, $9301                                     ; $7447: $01 $01 $93
	ld hl, $e013                                     ; $744a: $21 $13 $e0
	pop bc                                           ; $744d: $c1
	add l                                            ; $744e: $85
	or $fc                                           ; $744f: $f6 $fc
	adc $fc                                          ; $7451: $ce $fc
	ld c, $f8                                        ; $7453: $0e $f8
	inc c                                            ; $7455: $0c
	ld hl, sp+$0e                                    ; $7456: $f8 $0e
	db $fc                                           ; $7458: $fc
	rlca                                             ; $7459: $07
	db $fc                                           ; $745a: $fc
	rlca                                             ; $745b: $07
	cp $07                                           ; $745c: $fe $07
	rst $38                                          ; $745e: $ff
	ld [bc], a                                       ; $745f: $02
	cp $e2                                           ; $7460: $fe $e2
	ld e, $fb                                        ; $7462: $1e $fb

jr_065_7464:
	rlca                                             ; $7464: $07
	db $fd                                           ; $7465: $fd
	inc bc                                           ; $7466: $03
	cp $01                                           ; $7467: $fe $01
	ld l, e                                          ; $7469: $6b
	ld c, a                                          ; $746a: $4f
	ld e, e                                          ; $746b: $5b
	cp $7f                                           ; $746c: $fe $7f
	ld d, b                                          ; $746e: $50
	push af                                          ; $746f: $f5
	rst SubAFromDE                                          ; $7470: $df
	add h                                            ; $7471: $84
	add b                                            ; $7472: $80
	db $ed                                           ; $7473: $ed
	ld l, l                                          ; $7474: $6d
	cp a                                             ; $7475: $bf
	jp c, $fbce                                      ; $7476: $da $ce $fb

	ld c, e                                          ; $7479: $4b

jr_065_747a:
	ccf                                              ; $747a: $3f
	ldh a, [c]                                       ; $747b: $f2
	rst $38                                          ; $747c: $ff
	add a                                            ; $747d: $87
	ld a, a                                          ; $747e: $7f
	rst $38                                          ; $747f: $ff
	rst $38                                          ; $7480: $ff
	ld h, $1f                                        ; $7481: $26 $1f
	rst $38                                          ; $7483: $ff
	rst $38                                          ; $7484: $ff
	ld [de], a                                       ; $7485: $12
	rrca                                             ; $7486: $0f
	ld a, a                                          ; $7487: $7f
	rst $38                                          ; $7488: $ff
	rst JumpTable                                          ; $7489: $c7
	cp e                                             ; $748a: $bb
	rrca                                             ; $748b: $0f
	sbc a                                            ; $748c: $9f
	dec sp                                           ; $748d: $3b
	ld [hl], l                                       ; $748e: $75
	ld l, a                                          ; $748f: $6f
	rst SubAFromHL                                          ; $7490: $d7
	db $db                                           ; $7491: $db
	sbc d                                            ; $7492: $9a
	xor l                                            ; $7493: $ad
	or a                                             ; $7494: $b7
	ld e, e                                          ; $7495: $5b
	xor [hl]                                         ; $7496: $ae
	ld [hl], a                                       ; $7497: $77
	ldh [$c1], a                                     ; $7498: $e0 $c1
	sbc c                                            ; $749a: $99
	rra                                              ; $749b: $1f
	nop                                              ; $749c: $00
	rrca                                             ; $749d: $0f
	nop                                              ; $749e: $00
	rlca                                             ; $749f: $07
	nop                                              ; $74a0: $00
	ld l, [hl]                                       ; $74a1: $6e
	ld c, c                                          ; $74a2: $49
	sub e                                            ; $74a3: $93
	add c                                            ; $74a4: $81
	nop                                              ; $74a5: $00
	pop hl                                           ; $74a6: $e1
	nop                                              ; $74a7: $00
	di                                               ; $74a8: $f3
	ret nz                                           ; $74a9: $c0

	ld a, a                                          ; $74aa: $7f
	ld sp, $0a1f                                     ; $74ab: $31 $1f $0a
	nop                                              ; $74ae: $00
	nop                                              ; $74af: $00
	db $dd                                           ; $74b0: $dd
	add b                                            ; $74b1: $80
	adc e                                            ; $74b2: $8b
	ret nz                                           ; $74b3: $c0

	ld b, b                                          ; $74b4: $40
	ret nz                                           ; $74b5: $c0

	ld b, b                                          ; $74b6: $40
	ldh [rAUD4LEN], a                                ; $74b7: $e0 $20
	ldh [rAUD4LEN], a                                ; $74b9: $e0 $20
	ldh a, [rAUD1SWEEP]                              ; $74bb: $f0 $10
	ldh a, [rAUD1SWEEP]                              ; $74bd: $f0 $10
	ld hl, sp+$08                                    ; $74bf: $f8 $08
	ld sp, hl                                        ; $74c1: $f9
	add hl, bc                                       ; $74c2: $09
	db $fd                                           ; $74c3: $fd
	dec b                                            ; $74c4: $05
	rlca                                             ; $74c5: $07
	rlca                                             ; $74c6: $07
	rst FarCall                                          ; $74c7: $f7
	rst SubAFromDE                                          ; $74c8: $df
	ldh [$99], a                                     ; $74c9: $e0 $99
	adc $4e                                          ; $74cb: $ce $4e
	or h                                             ; $74cd: $b4
	cp h                                             ; $74ce: $bc
	rst GetHLinHL                                          ; $74cf: $cf
	rst $38                                          ; $74d0: $ff
	ld a, d                                          ; $74d1: $7a
	add l                                            ; $74d2: $85
	add h                                            ; $74d3: $84
	ld a, [hl]                                       ; $74d4: $7e
	or d                                             ; $74d5: $b2
	pop bc                                           ; $74d6: $c1
	ld h, b                                          ; $74d7: $60
	add b                                            ; $74d8: $80
	call c, $b2e3                                    ; $74d9: $dc $e3 $b2
	pop bc                                           ; $74dc: $c1
	ld h, h                                          ; $74dd: $64
	ld hl, sp-$47                                    ; $74de: $f8 $b9
	rst JumpTable                                          ; $74e0: $c7
	ld a, b                                          ; $74e1: $78
	add c                                            ; $74e2: $81
	ldh a, [c]                                       ; $74e3: $f2
	db $fc                                           ; $74e4: $fc
	dec c                                            ; $74e5: $0d
	rst GetHLinHL                                          ; $74e6: $cf
	add $f7                                          ; $74e7: $c6 $f7
	ld [hl-], a                                      ; $74e9: $32
	ei                                               ; $74ea: $fb
	xor c                                            ; $74eb: $a9
	ei                                               ; $74ec: $fb
	push de                                          ; $74ed: $d5
	ld a, l                                          ; $74ee: $7d
	ldh [$c1], a                                     ; $74ef: $e0 $c1
	sbc l                                            ; $74f1: $9d
	ldh a, [c]                                       ; $74f2: $f2
	dec de                                           ; $74f3: $1b
	ld a, e                                          ; $74f4: $7b
	cp $80                                           ; $74f5: $fe $80
	ld a, [de]                                       ; $74f7: $1a
	ldh [$36], a                                     ; $74f8: $e0 $36
	ldh [$36], a                                     ; $74fa: $e0 $36

Jump_065_74fc:
	and b                                            ; $74fc: $a0
	ld [hl], $a0                                     ; $74fd: $36 $a0
	inc [hl]                                         ; $74ff: $34
	ld h, b                                          ; $7500: $60
	inc [hl]                                         ; $7501: $34
	ld l, c                                          ; $7502: $69
	ld [hl], h                                       ; $7503: $74
	sbc c                                            ; $7504: $99
	sub h                                            ; $7505: $94
	ld de, $111c                                     ; $7506: $11 $1c $11
	inc e                                            ; $7509: $1c
	dec sp                                           ; $750a: $3b
	inc l                                            ; $750b: $2c
	dec sp                                           ; $750c: $3b
	inc l                                            ; $750d: $2c
	dec a                                            ; $750e: $3d
	ld h, $7d                                        ; $750f: $26 $7d
	ld h, [hl]                                       ; $7511: $66
	ld a, a                                          ; $7512: $7f
	ld b, d                                          ; $7513: $42
	ld a, a                                          ; $7514: $7f
	ld b, d                                          ; $7515: $42
	sub l                                            ; $7516: $95
	ld a, [hl]                                       ; $7517: $7e
	ld b, e                                          ; $7518: $43

jr_065_7519:
	rst $38                                          ; $7519: $ff
	add c                                            ; $751a: $81

jr_065_751b:
	rst $38                                          ; $751b: $ff
	add c                                            ; $751c: $81
	db $fc                                           ; $751d: $fc
	add b                                            ; $751e: $80
	ldh [rP1], a                                     ; $751f: $e0 $00
	ld c, c                                          ; $7521: $49
	ld c, e                                          ; $7522: $4b
	cp $df                                           ; $7523: $fe $df
	ret nz                                           ; $7525: $c0

	add c                                            ; $7526: $81
	jr nc, jr_065_7519                               ; $7527: $30 $f0

	add sp, $18                                      ; $7529: $e8 $18
	db $f4                                           ; $752b: $f4
	call z, Call_065_76ba                            ; $752c: $cc $ba $76
	ld l, l                                          ; $752f: $6d
	sbc e                                            ; $7530: $9b
	sub $ed                                          ; $7531: $d6 $ed
	xor [hl]                                         ; $7533: $ae
	ld [hl], a                                       ; $7534: $77
	ld [hl], $1b                                     ; $7535: $36 $1b
	sbc e                                            ; $7537: $9b
	call $e74d                                       ; $7538: $cd $4d $e7
	dec h                                            ; $753b: $25
	halt                                             ; $753c: $76
	sub [hl]                                         ; $753d: $96
	or e                                             ; $753e: $b3
	sub $5b                                          ; $753f: $d6 $5b
	ld c, a                                          ; $7541: $4f
	ld sp, hl                                        ; $7542: $f9
	ld l, e                                          ; $7543: $6b
	cp l                                             ; $7544: $bd
	ldh [$c1], a                                     ; $7545: $e0 $c1
	sub l                                            ; $7547: $95
	ret c                                            ; $7548: $d8

jr_065_7549:
	jr c, jr_065_751b                                ; $7549: $38 $d0

	jr nc, jr_065_7549                               ; $754b: $30 $fc

	inc a                                            ; $754d: $3c
	db $e3                                           ; $754e: $e3
	ccf                                              ; $754f: $3f
	and b                                            ; $7550: $a0
	ld a, a                                          ; $7551: $7f
	ld [hl], a                                       ; $7552: $77
	cp $7e                                           ; $7553: $fe $7e
	jp $c195                                         ; $7555: $c3 $95 $c1


	ld a, [hl]                                       ; $7558: $7e
	rst JumpTable                                          ; $7559: $c7
	ld a, b                                          ; $755a: $78
	ld e, a                                          ; $755b: $5f
	ldh [$7f], a                                     ; $755c: $e0 $7f
	ret nz                                           ; $755e: $c0

	rst $38                                          ; $755f: $ff
	add b                                            ; $7560: $80
	ld d, a                                          ; $7561: $57
	cp $95                                           ; $7562: $fe $95
	cp $80                                           ; $7564: $fe $80
	ldh [$80], a                                     ; $7566: $e0 $80
	add c                                            ; $7568: $81
	add b                                            ; $7569: $80
	sbc a                                            ; $756a: $9f
	add b                                            ; $756b: $80
	rst $38                                          ; $756c: $ff
	rrca                                             ; $756d: $0f
	push hl                                          ; $756e: $e5
	ld a, d                                          ; $756f: $7a
	adc [hl]                                         ; $7570: $8e
	rst SubAFromDE                                          ; $7571: $df
	ret nz                                           ; $7572: $c0

	adc b                                            ; $7573: $88
	ld b, b                                          ; $7574: $40
	and b                                            ; $7575: $a0
	ld h, b                                          ; $7576: $60
	ldh [$a0], a                                     ; $7577: $e0 $a0
	ret nc                                           ; $7579: $d0

	or b                                             ; $757a: $b0
	ldh a, [$50]                                     ; $757b: $f0 $50
	add sp, $58                                      ; $757d: $e8 $58
	ld e, b                                          ; $757f: $58
	add sp, $38                                      ; $7580: $e8 $38
	add sp, $68                                      ; $7582: $e8 $68
	cp b                                             ; $7584: $b8
	ld h, h                                          ; $7585: $64
	cp h                                             ; $7586: $bc
	call c, $bcb4                                    ; $7587: $dc $b4 $bc
	call nc, $fe6f                                   ; $758a: $d4 $6f $fe
	sbc l                                            ; $758d: $9d
	or h                                             ; $758e: $b4
	call c, $fe77                                    ; $758f: $dc $77 $fe

jr_065_7592:
	ld a, a                                          ; $7592: $7f
	rst AddAOntoHL                                          ; $7593: $ef
	adc a                                            ; $7594: $8f
	cp b                                             ; $7595: $b8
	ret c                                            ; $7596: $d8

	ld hl, sp-$68                                    ; $7597: $f8 $98
	ret c                                            ; $7599: $d8

	cp b                                             ; $759a: $b8
	ret c                                            ; $759b: $d8

	cp b                                             ; $759c: $b8
	ld d, b                                          ; $759d: $50
	or b                                             ; $759e: $b0
	ret nc                                           ; $759f: $d0

	jr nc, @-$6e                                     ; $75a0: $30 $90

	ld [hl], b                                       ; $75a2: $70
	and b                                            ; $75a3: $a0
	ld h, b                                          ; $75a4: $60
	ld [hl], a                                       ; $75a5: $77
	cp $7a                                           ; $75a6: $fe $7a
	ld d, e                                          ; $75a8: $53
	sbc [hl]                                         ; $75a9: $9e
	ret nz                                           ; $75aa: $c0

	db $dd                                           ; $75ab: $dd
	add b                                            ; $75ac: $80
	db $ed                                           ; $75ad: $ed
	rst SubAFromDE                                          ; $75ae: $df
	ret nz                                           ; $75af: $c0

	add b                                            ; $75b0: $80
	inc a                                            ; $75b1: $3c
	db $fc                                           ; $75b2: $fc
	rlca                                             ; $75b3: $07
	ei                                               ; $75b4: $fb
	ld c, $f1                                        ; $75b5: $0e $f1
	inc c                                            ; $75b7: $0c
	di                                               ; $75b8: $f3
	di                                               ; $75b9: $f3
	nop                                              ; $75ba: $00
	rst SubAFromBC                                          ; $75bb: $e7
	ld bc, $03e7                                     ; $75bc: $01 $e7 $03
	rst AddAOntoHL                                          ; $75bf: $ef
	ld [bc], a                                       ; $75c0: $02
	rst GetHLinHL                                          ; $75c1: $cf
	ld b, $cf                                        ; $75c2: $06 $cf
	inc b                                            ; $75c4: $04
	sbc a                                            ; $75c5: $9f
	dec b                                            ; $75c6: $05
	sbc a                                            ; $75c7: $9f
	dec c                                            ; $75c8: $0d
	sbc a                                            ; $75c9: $9f
	ld a, [bc]                                       ; $75ca: $0a
	ccf                                              ; $75cb: $3f
	ld a, [bc]                                       ; $75cc: $0a
	ccf                                              ; $75cd: $3f
	ld a, [de]                                       ; $75ce: $1a
	ld [hl], $99                                     ; $75cf: $36 $99
	inc e                                            ; $75d1: $1c
	ld [hl], $1c                                     ; $75d2: $36 $1c
	or $1c                                           ; $75d4: $f6 $1c
	or $79                                           ; $75d6: $f6 $79
	ld e, h                                          ; $75d8: $5c
	rst SubAFromBC                                          ; $75d9: $e7
	rst SubAFromDE                                          ; $75da: $df
	ret nz                                           ; $75db: $c0

	ld a, l                                          ; $75dc: $7d
	push af                                          ; $75dd: $f5
	add b                                            ; $75de: $80
	ld [hl], b                                       ; $75df: $70
	ldh a, [$f0]                                     ; $75e0: $f0 $f0
	sub b                                            ; $75e2: $90
	ret c                                            ; $75e3: $d8

	jr c, jr_065_7592                                ; $75e4: $38 $ac

	ld a, h                                          ; $75e6: $7c
	ld d, h                                          ; $75e7: $54
	db $ec                                           ; $75e8: $ec
	or h                                             ; $75e9: $b4
	call z, $c6ba                                    ; $75ea: $cc $ba $c6
	ld a, d                                          ; $75ed: $7a
	add [hl]                                         ; $75ee: $86
	ld a, d                                          ; $75ef: $7a
	add [hl]                                         ; $75f0: $86
	ld a, [$f106]                                    ; $75f1: $fa $06 $f1
	rrca                                             ; $75f4: $0f
	pop hl                                           ; $75f5: $e1
	rra                                              ; $75f6: $1f
	db $ed                                           ; $75f7: $ed
	inc de                                           ; $75f8: $13
	rst SubAFromDE                                          ; $75f9: $df
	ld hl, $01ff                                     ; $75fa: $21 $ff $01
	rst $38                                          ; $75fd: $ff
	sbc h                                            ; $75fe: $9c
	ld bc, $03fd                                     ; $75ff: $01 $fd $03
	add hl, de                                       ; $7602: $19
	nop                                              ; $7603: $00
	rst SubAFromDE                                          ; $7604: $df
	xor d                                            ; $7605: $aa
	db $dd                                           ; $7606: $dd
	adc b                                            ; $7607: $88
	sub l                                            ; $7608: $95
	nop                                              ; $7609: $00
	adc b                                            ; $760a: $88
	ld [$8899], sp                                   ; $760b: $08 $99 $88
	nop                                              ; $760e: $00
	add b                                            ; $760f: $80
	ld [$9199], sp                                   ; $7610: $08 $99 $91
	ld e, e                                          ; $7613: $5b
	ei                                               ; $7614: $fb
	ld [hl], e                                       ; $7615: $73
	db $ec                                           ; $7616: $ec
	ld l, a                                          ; $7617: $6f
	ldh [c], a                                       ; $7618: $e2
	sbc [hl]                                         ; $7619: $9e
	xor d                                            ; $761a: $aa
	or d                                             ; $761b: $b2
	ld bc, $4280                                     ; $761c: $01 $80 $42
	rst SubAFromBC                                          ; $761f: $e7
	jp nz, $c686                                     ; $7620: $c2 $86 $c6

	add h                                            ; $7623: $84
	sub [hl]                                         ; $7624: $96
	call nz, $c694                                   ; $7625: $c4 $94 $c6
	add h                                            ; $7628: $84
	sub $8c                                          ; $7629: $d6 $8c
	sub $8d                                          ; $762b: $d6 $8d
	sub $6d                                          ; $762d: $d6 $6d
	sub $ed                                          ; $762f: $d6 $ed
	ld d, [hl]                                       ; $7631: $56
	jp z, $ae77                                      ; $7632: $ca $77 $ae

	ld [hl], e                                       ; $7635: $73
	push hl                                          ; $7636: $e5
	dec sp                                           ; $7637: $3b
	rst SubAFromHL                                          ; $7638: $d7
	cp c                                             ; $7639: $b9
	ldh a, [c]                                       ; $763a: $f2
	sbc l                                            ; $763b: $9d
	jp hl                                            ; $763c: $e9


	adc l                                            ; $763d: $8d
	sbc $f4                                          ; $763e: $de $f4
	rst AddAOntoHL                                          ; $7640: $ef
	sub d                                            ; $7641: $92
	rst $38                                          ; $7642: $ff
	sbc l                                            ; $7643: $9d
	rst $38                                          ; $7644: $ff
	sub e                                            ; $7645: $93
	rst $38                                          ; $7646: $ff
	and d                                            ; $7647: $a2
	rst $38                                          ; $7648: $ff
	inc [hl]                                         ; $7649: $34
	rst AddAOntoHL                                          ; $764a: $ef
	or l                                             ; $764b: $b5
	ld l, a                                          ; $764c: $6f
	db $fd                                           ; $764d: $fd
	dec hl                                           ; $764e: $2b
	cp $7b                                           ; $764f: $fe $7b
	cp $9e                                           ; $7651: $fe $9e
	sbc $7b                                          ; $7653: $de $7b
	cp $80                                           ; $7655: $fe $80
	ld e, [hl]                                       ; $7657: $5e
	xor e                                            ; $7658: $ab
	reti                                             ; $7659: $d9


	xor a                                            ; $765a: $af
	call $bcb7                                       ; $765b: $cd $b7 $bc
	rst SubAFromHL                                          ; $765e: $d7
	daa                                              ; $765f: $27
	ld [hl+], a                                      ; $7660: $22
	inc hl                                           ; $7661: $23
	ld h, [hl]                                       ; $7662: $66
	ld c, e                                          ; $7663: $4b
	ld h, [hl]                                       ; $7664: $66
	db $ed                                           ; $7665: $ed
	ld b, [hl]                                       ; $7666: $46
	push hl                                          ; $7667: $e5
	ld c, [hl]                                       ; $7668: $4e
	ld h, l                                          ; $7669: $65
	adc $55                                          ; $766a: $ce $55
	xor $55                                          ; $766c: $ee $55
	xor $44                                          ; $766e: $ee $44
	rst $38                                          ; $7670: $ff

jr_065_7671:
	ld b, h                                          ; $7671: $44
	rst $38                                          ; $7672: $ff
	inc h                                            ; $7673: $24
	rst $38                                          ; $7674: $ff
	ld [hl+], a                                      ; $7675: $22
	ld a, e                                          ; $7676: $7b
	cp $80                                           ; $7677: $fe $80
	ld [de], a                                       ; $7679: $12
	rst $38                                          ; $767a: $ff
	sub c                                            ; $767b: $91
	rst $38                                          ; $767c: $ff
	ret                                              ; $767d: $c9


	rst $38                                          ; $767e: $ff
	call $eeff                                       ; $767f: $cd $ff $ee
	cp e                                             ; $7682: $bb

jr_065_7683:
	ld [hl], a                                       ; $7683: $77
	db $dd                                           ; $7684: $dd
	rst $38                                          ; $7685: $ff
	xor $ee                                          ; $7686: $ee $ee
	add b                                            ; $7688: $80
	ret nz                                           ; $7689: $c0

	add b                                            ; $768a: $80
	ld b, b                                          ; $768b: $40
	ret nz                                           ; $768c: $c0

	ld h, b                                          ; $768d: $60
	ret nz                                           ; $768e: $c0

	jr nc, jr_065_7671                               ; $768f: $30 $e0

	jr c, jr_065_7683                                ; $7691: $38 $f0

	inc l                                            ; $7693: $2c
	ld hl, sp+$26                                    ; $7694: $f8 $26
	db $fc                                           ; $7696: $fc
	rla                                              ; $7697: $17
	adc a                                            ; $7698: $8f
	cp $17                                           ; $7699: $fe $17
	db $fd                                           ; $769b: $fd
	rrca                                             ; $769c: $0f
	db $fc                                           ; $769d: $fc
	adc [hl]                                         ; $769e: $8e
	db $fc                                           ; $769f: $fc
	xor [hl]                                         ; $76a0: $ae
	ld a, h                                          ; $76a1: $7c
	inc e                                            ; $76a2: $1c
	add sp, $58                                      ; $76a3: $e8 $58
	add sp, $78                                      ; $76a5: $e8 $78
	ret nc                                           ; $76a7: $d0

	ld [hl], b                                       ; $76a8: $70
	ld l, e                                          ; $76a9: $6b
	cp $9c                                           ; $76aa: $fe $9c
	ld d, b                                          ; $76ac: $50
	ldh a, [rSVBK]                                   ; $76ad: $f0 $70
	ld a, e                                          ; $76af: $7b
	cp $7f                                           ; $76b0: $fe $7f
	ldh a, [$97]                                     ; $76b2: $f0 $97
	ld l, b                                          ; $76b4: $68
	ret                                              ; $76b5: $c9


	ld h, e                                          ; $76b6: $63
	pop bc                                           ; $76b7: $c1
	ld h, e                                          ; $76b8: $63
	ret nz                                           ; $76b9: $c0

Call_065_76ba:
	xor e                                            ; $76ba: $ab
	ldh [$d8], a                                     ; $76bb: $e0 $d8
	ld d, l                                          ; $76bd: $55
	add c                                            ; $76be: $81
	ld a, l                                          ; $76bf: $7d
	ld d, h                                          ; $76c0: $54
	ld a, a                                          ; $76c1: $7f
	ld l, [hl]                                       ; $76c2: $6e
	ld a, e                                          ; $76c3: $7b
	ld l, [hl]                                       ; $76c4: $6e
	ld a, e                                          ; $76c5: $7b
	rst $38                                          ; $76c6: $ff
	ld d, c                                          ; $76c7: $51
	rst SubAFromDE                                          ; $76c8: $df
	sub c                                            ; $76c9: $91
	and b                                            ; $76ca: $a0
	rra                                              ; $76cb: $1f
	sbc a                                            ; $76cc: $9f
	ld a, a                                          ; $76cd: $7f
	ld a, a                                          ; $76ce: $7f
	ldh [rIE], a                                     ; $76cf: $e0 $ff
	add b                                            ; $76d1: $80
	rst $38                                          ; $76d2: $ff
	rra                                              ; $76d3: $1f
	di                                               ; $76d4: $f3
	ld [hl], e                                       ; $76d5: $73
	sbc $ff                                          ; $76d6: $de $ff
	sub d                                            ; $76d8: $92
	ld d, $0d                                        ; $76d9: $16 $0d
	inc c                                            ; $76db: $0c
	rlca                                             ; $76dc: $07
	cp l                                             ; $76dd: $bd
	ld l, a                                          ; $76de: $6f
	cp a                                             ; $76df: $bf
	rrca                                             ; $76e0: $0f
	rra                                              ; $76e1: $1f
	add b                                            ; $76e2: $80
	ld bc, $033f                                     ; $76e3: $01 $3f $03
	ccf                                              ; $76e6: $3f
	rlca                                             ; $76e7: $07
	ld a, l                                          ; $76e8: $7d
	rrca                                             ; $76e9: $0f
	ld a, l                                          ; $76ea: $7d
	rla                                              ; $76eb: $17
	db $fd                                           ; $76ec: $fd
	ld h, l                                          ; $76ed: $65
	ld sp, hl                                        ; $76ee: $f9
	call $0df9                                       ; $76ef: $cd $f9 $0d
	ld sp, hl                                        ; $76f2: $f9
	dec bc                                           ; $76f3: $0b
	xor e                                            ; $76f4: $ab
	db $fd                                           ; $76f5: $fd
	cp a                                             ; $76f6: $bf
	push de                                          ; $76f7: $d5
	ld e, l                                          ; $76f8: $5d
	or $5d                                           ; $76f9: $f6 $5d
	or $37                                           ; $76fb: $f6 $37
	ld a, [$fab7]                                    ; $76fd: $fa $b7 $fa
	sub [hl]                                         ; $7700: $96
	ei                                               ; $7701: $fb
	add b                                            ; $7702: $80
	ld c, d                                          ; $7703: $4a
	rst $38                                          ; $7704: $ff
	ld h, [hl]                                       ; $7705: $66
	rst $38                                          ; $7706: $ff
	ld a, d                                          ; $7707: $7a
	rst SubAFromDE                                          ; $7708: $df
	rst FarCall                                          ; $7709: $f7
	rst SubAFromDE                                          ; $770a: $df
	ldh a, [c]                                       ; $770b: $f2
	rst SubAFromDE                                          ; $770c: $df
	ldh a, [c]                                       ; $770d: $f2
	ccf                                              ; $770e: $3f
	ldh a, [c]                                       ; $770f: $f2
	rra                                              ; $7710: $1f
	ldh a, [c]                                       ; $7711: $f2
	rra                                              ; $7712: $1f
	push af                                          ; $7713: $f5
	rst SubAFromDE                                          ; $7714: $df
	push hl                                          ; $7715: $e5
	cp a                                             ; $7716: $bf
	push hl                                          ; $7717: $e5
	ccf                                              ; $7718: $3f
	and $3f                                          ; $7719: $e6 $3f
	and $7f                                          ; $771b: $e6 $7f
	add $7f                                          ; $771d: $c6 $7f
	call nz, $c4ff                                   ; $771f: $c4 $ff $c4
	adc h                                            ; $7722: $8c
	rst $38                                          ; $7723: $ff
	call z, Call_065_58ff                            ; $7724: $cc $ff $58
	rst AddAOntoHL                                          ; $7727: $ef
	ld a, c                                          ; $7728: $79
	rst GetHLinHL                                          ; $7729: $cf
	ld a, c                                          ; $772a: $79
	rst GetHLinHL                                          ; $772b: $cf
	xor d                                            ; $772c: $aa
	sbc $ba                                          ; $772d: $de $ba
	sbc $b4                                          ; $772f: $de $b4
	call c, $9c74                                    ; $7731: $dc $74 $9c
	ld a, b                                          ; $7734: $78
	sbc b                                            ; $7735: $98
	scf                                              ; $7736: $37
	add b                                            ; $7737: $80
	adc [hl]                                         ; $7738: $8e
	cp b                                             ; $7739: $b8
	rlca                                             ; $773a: $07
	rst JumpTable                                          ; $773b: $c7

Call_065_773c:
	ccf                                              ; $773c: $3f
	ccf                                              ; $773d: $3f
	ld hl, sp-$01                                    ; $773e: $f8 $ff
	ret nz                                           ; $7740: $c0

	rst $38                                          ; $7741: $ff
	nop                                              ; $7742: $00
	rst $38                                          ; $7743: $ff
	rra                                              ; $7744: $1f
	cp $7f                                           ; $7745: $fe $7f
	jp nc, $1dd6                                     ; $7747: $d2 $d6 $1d

	inc bc                                           ; $774a: $03
	add b                                            ; $774b: $80
	inc hl                                           ; $774c: $23
	add b                                            ; $774d: $80
	sbc [hl]                                         ; $774e: $9e
	rra                                              ; $774f: $1f
	inc bc                                           ; $7750: $03
	add b                                            ; $7751: $80
	dec sp                                           ; $7752: $3b
	add b                                            ; $7753: $80
	sbc c                                            ; $7754: $99
	cp [hl]                                          ; $7755: $be
	ld bc, $3fc1                                     ; $7756: $01 $c1 $3f
	ccf                                              ; $7759: $3f
	cp $73                                           ; $775a: $fe $73
	add b                                            ; $775c: $80
	sbc b                                            ; $775d: $98
	nop                                              ; $775e: $00
	ei                                               ; $775f: $fb
	rra                                              ; $7760: $1f
	rst SubAFromBC                                          ; $7761: $e7
	ld a, [hl]                                       ; $7762: $7e
	ccf                                              ; $7763: $3f
	jr jr_065_7769                                   ; $7764: $18 $03

	add b                                            ; $7766: $80
	inc bc                                           ; $7767: $03
	add b                                            ; $7768: $80

jr_065_7769:
	inc bc                                           ; $7769: $03
	add b                                            ; $776a: $80
	ld e, e                                          ; $776b: $5b
	add b                                            ; $776c: $80
	ld a, a                                          ; $776d: $7f
	sub [hl]                                         ; $776e: $96
	sbc e                                            ; $776f: $9b
	ret nz                                           ; $7770: $c0

	ccf                                              ; $7771: $3f
	ccf                                              ; $7772: $3f
	rst $38                                          ; $7773: $ff
	ld l, a                                          ; $7774: $6f
	add b                                            ; $7775: $80
	sbc c                                            ; $7776: $99
	rst $38                                          ; $7777: $ff
	ld a, $ff                                        ; $7778: $3e $ff
	pop bc                                           ; $777a: $c1
	ccf                                              ; $777b: $3f
	ld a, $03                                        ; $777c: $3e $03
	add b                                            ; $777e: $80
	ld c, e                                          ; $777f: $4b
	add b                                            ; $7780: $80
	sbc e                                            ; $7781: $9b
	ld [hl], d                                       ; $7782: $72
	rst SubAFromDE                                          ; $7783: $df
	ldh a, [c]                                       ; $7784: $f2
	cp a                                             ; $7785: $bf
	ld l, e                                          ; $7786: $6b
	add b                                            ; $7787: $80
	sbc [hl]                                         ; $7788: $9e
	ccf                                              ; $7789: $3f
	rrca                                             ; $778a: $0f
	add b                                            ; $778b: $80
	adc d                                            ; $778c: $8a
	ei                                               ; $778d: $fb
	ld h, b                                          ; $778e: $60
	ld sp, hl                                        ; $778f: $f9
	or b                                             ; $7790: $b0
	db $fc                                           ; $7791: $fc
	add b                                            ; $7792: $80
	call c, $cec0                                    ; $7793: $dc $c0 $ce
	nop                                              ; $7796: $00
	inc a                                            ; $7797: $3c
	stop                                             ; $7798: $10 $00
	nop                                              ; $779a: $00
	inc bc                                           ; $779b: $03
	ld bc, $3633                                     ; $779c: $01 $33 $36
	ld e, $0c                                        ; $779f: $1e $0c
	inc c                                            ; $77a1: $0c
	cp [hl]                                          ; $77a2: $be
	nop                                              ; $77a3: $00
	nop                                              ; $77a4: $00
	pop bc                                           ; $77a5: $c1
	ld a, [hl]                                       ; $77a6: $7e
	nop                                              ; $77a7: $00
	sbc h                                            ; $77a8: $9c
	ld h, e                                          ; $77a9: $63
	ld a, a                                          ; $77aa: $7f
	inc e                                            ; $77ab: $1c
	ld b, a                                          ; $77ac: $47
	ldh [$9b], a                                     ; $77ad: $e0 $9b
	inc hl                                           ; $77af: $23
	ld [hl], $1e                                     ; $77b0: $36 $1e
	inc e                                            ; $77b2: $1c
	rra                                              ; $77b3: $1f
	ldh [$98], a                                     ; $77b4: $e0 $98
	inc hl                                           ; $77b6: $23
	ld bc, $3723                                     ; $77b7: $01 $23 $37
	ld a, $1e                                        ; $77ba: $3e $1e
	ld e, $73                                        ; $77bc: $1e $73
	rst SubAFromDE                                          ; $77be: $df
	scf                                              ; $77bf: $37
	ldh [$9e], a                                     ; $77c0: $e0 $9e
	daa                                              ; $77c2: $27
	ld a, e                                          ; $77c3: $7b
	ldh [$9e], a                                     ; $77c4: $e0 $9e
	ccf                                              ; $77c6: $3f
	db $dd                                           ; $77c7: $dd
	ld e, $7b                                        ; $77c8: $1e $7b
	sbc h                                            ; $77ca: $9c
	ld l, a                                          ; $77cb: $6f
	ldh [$c3], a                                     ; $77cc: $e0 $c3
	ld bc, $4280                                     ; $77ce: $01 $80 $42
	rst SubAFromBC                                          ; $77d1: $e7
	jp nz, $c686                                     ; $77d2: $c2 $86 $c6

	add h                                            ; $77d5: $84
	sub [hl]                                         ; $77d6: $96
	call nz, $c694                                   ; $77d7: $c4 $94 $c6
	add h                                            ; $77da: $84
	sub $8c                                          ; $77db: $d6 $8c
	sub $8d                                          ; $77dd: $d6 $8d
	sub $6d                                          ; $77df: $d6 $6d
	sub $ed                                          ; $77e1: $d6 $ed
	ld d, [hl]                                       ; $77e3: $56
	jp z, $ae77                                      ; $77e4: $ca $77 $ae

	ld [hl], e                                       ; $77e7: $73
	push hl                                          ; $77e8: $e5
	dec sp                                           ; $77e9: $3b
	rst SubAFromHL                                          ; $77ea: $d7
	cp c                                             ; $77eb: $b9
	ldh a, [c]                                       ; $77ec: $f2
	sbc l                                            ; $77ed: $9d
	jp hl                                            ; $77ee: $e9


	adc l                                            ; $77ef: $8d
	sbc $f4                                          ; $77f0: $de $f4
	rst AddAOntoHL                                          ; $77f2: $ef
	sub d                                            ; $77f3: $92
	rst $38                                          ; $77f4: $ff
	sbc l                                            ; $77f5: $9d
	rst $38                                          ; $77f6: $ff
	sub e                                            ; $77f7: $93
	rst $38                                          ; $77f8: $ff
	and d                                            ; $77f9: $a2
	rst $38                                          ; $77fa: $ff
	inc [hl]                                         ; $77fb: $34
	rst AddAOntoHL                                          ; $77fc: $ef
	or l                                             ; $77fd: $b5
	ld l, a                                          ; $77fe: $6f
	db $fd                                           ; $77ff: $fd
	dec hl                                           ; $7800: $2b
	cp $7b                                           ; $7801: $fe $7b
	cp $9e                                           ; $7803: $fe $9e
	sbc $7b                                          ; $7805: $de $7b
	cp $80                                           ; $7807: $fe $80
	ld e, [hl]                                       ; $7809: $5e
	xor e                                            ; $780a: $ab
	reti                                             ; $780b: $d9


	xor a                                            ; $780c: $af
	call $bcb7                                       ; $780d: $cd $b7 $bc
	rst SubAFromHL                                          ; $7810: $d7
	daa                                              ; $7811: $27
	ld [hl+], a                                      ; $7812: $22
	inc hl                                           ; $7813: $23
	ld h, [hl]                                       ; $7814: $66
	ld c, e                                          ; $7815: $4b
	ld h, [hl]                                       ; $7816: $66
	db $ed                                           ; $7817: $ed
	ld b, [hl]                                       ; $7818: $46
	push hl                                          ; $7819: $e5
	ld c, [hl]                                       ; $781a: $4e
	ld h, l                                          ; $781b: $65
	adc $55                                          ; $781c: $ce $55
	xor $55                                          ; $781e: $ee $55
	xor $44                                          ; $7820: $ee $44
	rst $38                                          ; $7822: $ff

jr_065_7823:
	ld b, h                                          ; $7823: $44
	rst $38                                          ; $7824: $ff
	inc h                                            ; $7825: $24
	rst $38                                          ; $7826: $ff
	ld [hl+], a                                      ; $7827: $22
	ld a, e                                          ; $7828: $7b
	cp $80                                           ; $7829: $fe $80
	ld [de], a                                       ; $782b: $12
	rst $38                                          ; $782c: $ff
	sub c                                            ; $782d: $91
	rst $38                                          ; $782e: $ff
	ret                                              ; $782f: $c9


	rst $38                                          ; $7830: $ff
	call $eeff                                       ; $7831: $cd $ff $ee
	cp e                                             ; $7834: $bb

jr_065_7835:
	ld [hl], a                                       ; $7835: $77
	db $dd                                           ; $7836: $dd
	rst $38                                          ; $7837: $ff
	xor $ee                                          ; $7838: $ee $ee
	add b                                            ; $783a: $80
	ret nz                                           ; $783b: $c0

	add b                                            ; $783c: $80
	ld b, b                                          ; $783d: $40
	ret nz                                           ; $783e: $c0

	ld h, b                                          ; $783f: $60
	ret nz                                           ; $7840: $c0

	jr nc, jr_065_7823                               ; $7841: $30 $e0

	jr c, jr_065_7835                                ; $7843: $38 $f0

	inc l                                            ; $7845: $2c
	ld hl, sp+$26                                    ; $7846: $f8 $26
	db $fc                                           ; $7848: $fc
	rla                                              ; $7849: $17
	adc a                                            ; $784a: $8f
	cp $17                                           ; $784b: $fe $17
	db $fd                                           ; $784d: $fd
	rrca                                             ; $784e: $0f
	db $fc                                           ; $784f: $fc
	adc [hl]                                         ; $7850: $8e
	db $fc                                           ; $7851: $fc
	xor [hl]                                         ; $7852: $ae
	ld a, h                                          ; $7853: $7c
	inc e                                            ; $7854: $1c
	add sp, $58                                      ; $7855: $e8 $58
	add sp, $78                                      ; $7857: $e8 $78
	ret nc                                           ; $7859: $d0

	ld [hl], b                                       ; $785a: $70
	ld l, e                                          ; $785b: $6b
	cp $9c                                           ; $785c: $fe $9c
	ld d, b                                          ; $785e: $50
	ldh a, [rSVBK]                                   ; $785f: $f0 $70
	ld a, e                                          ; $7861: $7b
	cp $7f                                           ; $7862: $fe $7f
	ldh a, [$97]                                     ; $7864: $f0 $97
	ld l, c                                          ; $7866: $69
	ret                                              ; $7867: $c9


	ld h, e                                          ; $7868: $63
	ret nz                                           ; $7869: $c0

	ld h, e                                          ; $786a: $63
	ret nz                                           ; $786b: $c0

	xor e                                            ; $786c: $ab
	ldh [$d8], a                                     ; $786d: $e0 $d8
	ld d, l                                          ; $786f: $55
	add c                                            ; $7870: $81
	ld a, l                                          ; $7871: $7d
	ld d, h                                          ; $7872: $54
	ld a, a                                          ; $7873: $7f
	ld l, [hl]                                       ; $7874: $6e
	ld a, e                                          ; $7875: $7b
	ld l, [hl]                                       ; $7876: $6e
	ld a, e                                          ; $7877: $7b
	rst $38                                          ; $7878: $ff
	ld d, c                                          ; $7879: $51
	rst SubAFromDE                                          ; $787a: $df
	sub c                                            ; $787b: $91
	add b                                            ; $787c: $80
	ccf                                              ; $787d: $3f
	ccf                                              ; $787e: $3f
	rst $38                                          ; $787f: $ff
	rst $38                                          ; $7880: $ff
	ret nz                                           ; $7881: $c0

	rst $38                                          ; $7882: $ff
	rra                                              ; $7883: $1f
	di                                               ; $7884: $f3
	ld [hl], e                                       ; $7885: $73
	jp nc, $9ef3                                     ; $7886: $d2 $f3 $9e

	sbc $92                                          ; $7889: $de $92
	ld d, $0f                                        ; $788b: $16 $0f
	inc c                                            ; $788d: $0c
	rra                                              ; $788e: $1f
	cp l                                             ; $788f: $bd
	rlca                                             ; $7890: $07
	rrca                                             ; $7891: $0f
	rra                                              ; $7892: $1f
	rra                                              ; $7893: $1f
	add b                                            ; $7894: $80
	ld bc, $033f                                     ; $7895: $01 $3f $03
	ccf                                              ; $7898: $3f
	rlca                                             ; $7899: $07
	ld a, l                                          ; $789a: $7d
	rrca                                             ; $789b: $0f
	ld a, l                                          ; $789c: $7d
	rla                                              ; $789d: $17
	db $fd                                           ; $789e: $fd
	ld h, l                                          ; $789f: $65
	ld sp, hl                                        ; $78a0: $f9
	call $0df9                                       ; $78a1: $cd $f9 $0d
	ld sp, hl                                        ; $78a4: $f9
	dec bc                                           ; $78a5: $0b
	xor e                                            ; $78a6: $ab
	db $fd                                           ; $78a7: $fd
	cp a                                             ; $78a8: $bf
	push de                                          ; $78a9: $d5
	ld e, l                                          ; $78aa: $5d
	or $5d                                           ; $78ab: $f6 $5d
	or $37                                           ; $78ad: $f6 $37
	ld a, [$fab7]                                    ; $78af: $fa $b7 $fa
	sub [hl]                                         ; $78b2: $96
	ei                                               ; $78b3: $fb
	add b                                            ; $78b4: $80
	ld c, d                                          ; $78b5: $4a
	rst $38                                          ; $78b6: $ff
	ld h, [hl]                                       ; $78b7: $66
	rst $38                                          ; $78b8: $ff
	ld a, d                                          ; $78b9: $7a
	rst SubAFromDE                                          ; $78ba: $df
	rst FarCall                                          ; $78bb: $f7
	rst SubAFromDE                                          ; $78bc: $df
	ldh a, [c]                                       ; $78bd: $f2
	rst SubAFromDE                                          ; $78be: $df
	ldh a, [c]                                       ; $78bf: $f2
	ccf                                              ; $78c0: $3f
	ldh a, [c]                                       ; $78c1: $f2
	rra                                              ; $78c2: $1f
	ldh a, [c]                                       ; $78c3: $f2
	rst SubAFromDE                                          ; $78c4: $df
	push af                                          ; $78c5: $f5
	sbc a                                            ; $78c6: $9f
	push hl                                          ; $78c7: $e5
	ccf                                              ; $78c8: $3f
	push hl                                          ; $78c9: $e5
	ccf                                              ; $78ca: $3f

jr_065_78cb:
	and $3f                                          ; $78cb: $e6 $3f
	and $7f                                          ; $78cd: $e6 $7f
	add $7f                                          ; $78cf: $c6 $7f
	call nz, $c4ff                                   ; $78d1: $c4 $ff $c4
	adc h                                            ; $78d4: $8c
	rst $38                                          ; $78d5: $ff
	call z, Call_065_58ff                            ; $78d6: $cc $ff $58
	rst AddAOntoHL                                          ; $78d9: $ef
	ld a, c                                          ; $78da: $79
	rst GetHLinHL                                          ; $78db: $cf
	ld a, c                                          ; $78dc: $79
	rst GetHLinHL                                          ; $78dd: $cf
	xor d                                            ; $78de: $aa
	sbc $ba                                          ; $78df: $de $ba
	sbc $b4                                          ; $78e1: $de $b4
	call c, $9c74                                    ; $78e3: $dc $74 $9c

jr_065_78e6:
	ld a, b                                          ; $78e6: $78
	sbc b                                            ; $78e7: $98
	daa                                              ; $78e8: $27
	ld h, b                                          ; $78e9: $60
	sbc e                                            ; $78ea: $9b
	ld l, b                                          ; $78eb: $68
	ret                                              ; $78ec: $c9


	ld h, e                                          ; $78ed: $63
	pop bc                                           ; $78ee: $c1
	daa                                              ; $78ef: $27
	ld h, b                                          ; $78f0: $60
	sbc c                                            ; $78f1: $99
	cp b                                             ; $78f2: $b8
	rlca                                             ; $78f3: $07
	rst JumpTable                                          ; $78f4: $c7
	ccf                                              ; $78f5: $3f
	ccf                                              ; $78f6: $3f
	ld hl, sp+$7b                                    ; $78f7: $f8 $7b
	ld e, [hl]                                       ; $78f9: $5e
	sub l                                            ; $78fa: $95
	nop                                              ; $78fb: $00
	rst $38                                          ; $78fc: $ff
	rra                                              ; $78fd: $1f
	cp $7f                                           ; $78fe: $fe $7f
	jp nc, $1dd6                                     ; $7900: $d2 $d6 $1d

	inc c                                            ; $7903: $0c
	rrca                                             ; $7904: $0f
	inc bc                                           ; $7905: $03
	ld h, b                                          ; $7906: $60
	inc sp                                           ; $7907: $33
	ld h, b                                          ; $7908: $60
	sbc d                                            ; $7909: $9a
	rra                                              ; $790a: $1f
	push af                                          ; $790b: $f5
	rra                                              ; $790c: $1f
	push hl                                          ; $790d: $e5
	cp a                                             ; $790e: $bf
	inc bc                                           ; $790f: $03
	ld h, b                                          ; $7910: $60
	inc bc                                           ; $7911: $03
	ld h, b                                          ; $7912: $60
	ld b, a                                          ; $7913: $47
	ld h, b                                          ; $7914: $60
	sub a                                            ; $7915: $97
	cp [hl]                                          ; $7916: $be
	ld bc, $1fe1                                     ; $7917: $01 $e1 $1f
	rra                                              ; $791a: $1f
	cp $ff                                           ; $791b: $fe $ff
	ldh [$7b], a                                     ; $791d: $e0 $7b
	ld h, b                                          ; $791f: $60
	sbc b                                            ; $7920: $98
	nop                                              ; $7921: $00
	ei                                               ; $7922: $fb
	rra                                              ; $7923: $1f
	rst SubAFromBC                                          ; $7924: $e7
	ld a, [hl]                                       ; $7925: $7e
	ccf                                              ; $7926: $3f
	jr jr_065_792c                                   ; $7927: $18 $03

	ld h, b                                          ; $7929: $60
	inc bc                                           ; $792a: $03
	ld h, b                                          ; $792b: $60

jr_065_792c:
	inc bc                                           ; $792c: $03
	ld h, b                                          ; $792d: $60
	ld b, [hl]                                       ; $792e: $46
	jr nz, jr_065_78cb                               ; $792f: $20 $9a

	ret z                                            ; $7931: $c8

	ld h, d                                          ; $7932: $62
	pop bc                                           ; $7933: $c1
	ld h, e                                          ; $7934: $63
	pop bc                                           ; $7935: $c1
	cpl                                              ; $7936: $2f
	ld h, b                                          ; $7937: $60
	sub l                                            ; $7938: $95
	cp a                                             ; $7939: $bf
	nop                                              ; $793a: $00
	ldh [$1f], a                                     ; $793b: $e0 $1f
	sbc a                                            ; $793d: $9f
	ld a, a                                          ; $793e: $7f
	ld a, a                                          ; $793f: $7f
	ldh [rIE], a                                     ; $7940: $e0 $ff
	add b                                            ; $7942: $80
	ld a, e                                          ; $7943: $7b
	ld e, [hl]                                       ; $7944: $5e
	sbc d                                            ; $7945: $9a
	ld a, $ff                                        ; $7946: $3e $ff
	pop bc                                           ; $7948: $c1
	ccf                                              ; $7949: $3f
	ld a, $03                                        ; $794a: $3e $03
	ld h, b                                          ; $794c: $60
	ld c, e                                          ; $794d: $4b
	ld h, b                                          ; $794e: $60
	sbc e                                            ; $794f: $9b
	ld [hl], d                                       ; $7950: $72
	rst SubAFromDE                                          ; $7951: $df
	ldh a, [c]                                       ; $7952: $f2
	cp a                                             ; $7953: $bf
	ld l, e                                          ; $7954: $6b
	ld h, b                                          ; $7955: $60
	ld a, [bc]                                       ; $7956: $0a
	jr nz, jr_065_78e6                               ; $7957: $20 $8d

	ei                                               ; $7959: $fb
	ld h, b                                          ; $795a: $60
	ld sp, hl                                        ; $795b: $f9
	or b                                             ; $795c: $b0
	db $fc                                           ; $795d: $fc
	add b                                            ; $795e: $80
	call c, $cec0                                    ; $795f: $dc $c0 $ce
	nop                                              ; $7962: $00
	inc a                                            ; $7963: $3c
	stop                                             ; $7964: $10 $00
	nop                                              ; $7966: $00
	db $e3                                           ; $7967: $e3
	ld b, c                                          ; $7968: $41
	ld [hl+], a                                      ; $7969: $22
	ld [hl], $de                                     ; $796a: $36 $de
	inc e                                            ; $796c: $1c
	cp [hl]                                          ; $796d: $be
	nop                                              ; $796e: $00
	nop                                              ; $796f: $00
	pop bc                                           ; $7970: $c1
	ld a, a                                          ; $7971: $7f
	add d                                            ; $7972: $82
	sbc h                                            ; $7973: $9c
	ld h, e                                          ; $7974: $63
	ld a, a                                          ; $7975: $7f
	inc e                                            ; $7976: $1c
	ld c, a                                          ; $7977: $4f
	ldh [$9a], a                                     ; $7978: $e0 $9a
	ld h, e                                          ; $797a: $63
	ld b, c                                          ; $797b: $41
	ld h, e                                          ; $797c: $63
	ld [hl], $3e                                     ; $797d: $36 $3e
	dec de                                           ; $797f: $1b
	ldh [$99], a                                     ; $7980: $e0 $99
	ld a, a                                          ; $7982: $7f
	ld b, c                                          ; $7983: $41
	ld h, e                                          ; $7984: $63
	ld [hl], a                                       ; $7985: $77
	ld a, a                                          ; $7986: $7f
	ld a, $6f                                        ; $7987: $3e $6f
	sbc $1f                                          ; $7989: $de $1f
	ldh [$6f], a                                     ; $798b: $e0 $6f
	sbc $6f                                          ; $798d: $de $6f
	ldh [$a6], a                                     ; $798f: $e0 $a6
	ld bc, $4280                                     ; $7991: $01 $80 $42
	rst SubAFromBC                                          ; $7994: $e7
	jp nz, $c686                                     ; $7995: $c2 $86 $c6

	add h                                            ; $7998: $84
	sub [hl]                                         ; $7999: $96
	call nz, $c694                                   ; $799a: $c4 $94 $c6
	add h                                            ; $799d: $84
	sub $8c                                          ; $799e: $d6 $8c
	sub $8d                                          ; $79a0: $d6 $8d
	sub $6d                                          ; $79a2: $d6 $6d
	sub $ed                                          ; $79a4: $d6 $ed
	ld d, [hl]                                       ; $79a6: $56
	jp z, $ae77                                      ; $79a7: $ca $77 $ae

	ld [hl], e                                       ; $79aa: $73
	push hl                                          ; $79ab: $e5
	dec sp                                           ; $79ac: $3b
	rst SubAFromHL                                          ; $79ad: $d7
	cp c                                             ; $79ae: $b9
	ldh a, [c]                                       ; $79af: $f2
	sbc l                                            ; $79b0: $9d
	jp hl                                            ; $79b1: $e9


	adc l                                            ; $79b2: $8d
	sbc $f4                                          ; $79b3: $de $f4
	rst AddAOntoHL                                          ; $79b5: $ef
	sub d                                            ; $79b6: $92
	rst $38                                          ; $79b7: $ff
	sbc l                                            ; $79b8: $9d
	rst $38                                          ; $79b9: $ff
	sub e                                            ; $79ba: $93
	rst $38                                          ; $79bb: $ff
	and d                                            ; $79bc: $a2
	rst $38                                          ; $79bd: $ff
	inc [hl]                                         ; $79be: $34
	rst AddAOntoHL                                          ; $79bf: $ef
	or l                                             ; $79c0: $b5
	ld l, a                                          ; $79c1: $6f
	db $fd                                           ; $79c2: $fd
	dec hl                                           ; $79c3: $2b
	cp $7b                                           ; $79c4: $fe $7b
	cp $9e                                           ; $79c6: $fe $9e
	sbc $7b                                          ; $79c8: $de $7b
	cp $80                                           ; $79ca: $fe $80
	ld e, [hl]                                       ; $79cc: $5e
	xor e                                            ; $79cd: $ab
	reti                                             ; $79ce: $d9


	xor a                                            ; $79cf: $af
	call $bcb7                                       ; $79d0: $cd $b7 $bc
	rst SubAFromHL                                          ; $79d3: $d7
	daa                                              ; $79d4: $27
	ld [hl+], a                                      ; $79d5: $22
	inc hl                                           ; $79d6: $23
	ld h, [hl]                                       ; $79d7: $66
	ld c, e                                          ; $79d8: $4b
	ld h, [hl]                                       ; $79d9: $66
	db $ed                                           ; $79da: $ed
	ld b, [hl]                                       ; $79db: $46
	push hl                                          ; $79dc: $e5
	ld c, [hl]                                       ; $79dd: $4e
	ld h, l                                          ; $79de: $65
	adc $55                                          ; $79df: $ce $55
	xor $55                                          ; $79e1: $ee $55
	xor $44                                          ; $79e3: $ee $44
	rst $38                                          ; $79e5: $ff

jr_065_79e6:
	ld b, h                                          ; $79e6: $44
	rst $38                                          ; $79e7: $ff
	inc h                                            ; $79e8: $24
	rst $38                                          ; $79e9: $ff
	ld [hl+], a                                      ; $79ea: $22
	ld a, e                                          ; $79eb: $7b
	cp $80                                           ; $79ec: $fe $80
	ld [de], a                                       ; $79ee: $12
	rst $38                                          ; $79ef: $ff
	sub c                                            ; $79f0: $91
	rst $38                                          ; $79f1: $ff
	ret                                              ; $79f2: $c9


	rst $38                                          ; $79f3: $ff
	call $eeff                                       ; $79f4: $cd $ff $ee
	cp e                                             ; $79f7: $bb

jr_065_79f8:
	ld [hl], a                                       ; $79f8: $77
	db $dd                                           ; $79f9: $dd
	rst $38                                          ; $79fa: $ff
	xor $ee                                          ; $79fb: $ee $ee
	add b                                            ; $79fd: $80
	ret nz                                           ; $79fe: $c0

	add b                                            ; $79ff: $80
	ld b, b                                          ; $7a00: $40
	ret nz                                           ; $7a01: $c0

	ld h, b                                          ; $7a02: $60
	ret nz                                           ; $7a03: $c0

	jr nc, jr_065_79e6                               ; $7a04: $30 $e0

	jr c, jr_065_79f8                                ; $7a06: $38 $f0

	inc l                                            ; $7a08: $2c
	ld hl, sp+$26                                    ; $7a09: $f8 $26
	db $fc                                           ; $7a0b: $fc
	rla                                              ; $7a0c: $17
	adc a                                            ; $7a0d: $8f
	cp $17                                           ; $7a0e: $fe $17
	db $fd                                           ; $7a10: $fd
	rrca                                             ; $7a11: $0f
	db $fc                                           ; $7a12: $fc
	adc [hl]                                         ; $7a13: $8e
	db $fc                                           ; $7a14: $fc
	xor [hl]                                         ; $7a15: $ae
	ld a, h                                          ; $7a16: $7c
	inc e                                            ; $7a17: $1c
	add sp, $58                                      ; $7a18: $e8 $58
	add sp, $78                                      ; $7a1a: $e8 $78
	ret nc                                           ; $7a1c: $d0

	ld [hl], b                                       ; $7a1d: $70
	ld l, e                                          ; $7a1e: $6b
	cp $9c                                           ; $7a1f: $fe $9c
	ld d, b                                          ; $7a21: $50
	ldh a, [rSVBK]                                   ; $7a22: $f0 $70
	ld a, e                                          ; $7a24: $7b
	cp $7f                                           ; $7a25: $fe $7f
	ldh a, [$97]                                     ; $7a27: $f0 $97
	ld l, b                                          ; $7a29: $68
	ret                                              ; $7a2a: $c9


	ld h, e                                          ; $7a2b: $63
	pop bc                                           ; $7a2c: $c1
	ld h, e                                          ; $7a2d: $63
	ret nz                                           ; $7a2e: $c0

	xor e                                            ; $7a2f: $ab
	ldh [$d8], a                                     ; $7a30: $e0 $d8
	ld d, l                                          ; $7a32: $55
	add c                                            ; $7a33: $81
	ld a, l                                          ; $7a34: $7d
	ld d, h                                          ; $7a35: $54
	ld a, a                                          ; $7a36: $7f
	ld l, [hl]                                       ; $7a37: $6e
	ld a, e                                          ; $7a38: $7b
	ld l, [hl]                                       ; $7a39: $6e
	ld a, e                                          ; $7a3a: $7b
	rst $38                                          ; $7a3b: $ff
	ld d, c                                          ; $7a3c: $51
	rst SubAFromDE                                          ; $7a3d: $df
	sub c                                            ; $7a3e: $91
	and b                                            ; $7a3f: $a0
	rra                                              ; $7a40: $1f
	sbc a                                            ; $7a41: $9f
	ld a, a                                          ; $7a42: $7f
	ld a, a                                          ; $7a43: $7f
	ldh [rIE], a                                     ; $7a44: $e0 $ff
	add b                                            ; $7a46: $80
	rst $38                                          ; $7a47: $ff
	rra                                              ; $7a48: $1f
	di                                               ; $7a49: $f3
	ld [hl], e                                       ; $7a4a: $73
	sbc $ff                                          ; $7a4b: $de $ff
	sub d                                            ; $7a4d: $92
	ld d, $0d                                        ; $7a4e: $16 $0d
	inc c                                            ; $7a50: $0c
	ccf                                              ; $7a51: $3f
	cp l                                             ; $7a52: $bd
	rlca                                             ; $7a53: $07
	rrca                                             ; $7a54: $0f
	rra                                              ; $7a55: $1f
	rra                                              ; $7a56: $1f
	add b                                            ; $7a57: $80
	ld bc, $033f                                     ; $7a58: $01 $3f $03
	ccf                                              ; $7a5b: $3f
	rlca                                             ; $7a5c: $07
	ld a, l                                          ; $7a5d: $7d
	rrca                                             ; $7a5e: $0f
	ld a, l                                          ; $7a5f: $7d
	rla                                              ; $7a60: $17
	db $fd                                           ; $7a61: $fd
	ld h, l                                          ; $7a62: $65
	ld sp, hl                                        ; $7a63: $f9
	call $0df9                                       ; $7a64: $cd $f9 $0d
	ld sp, hl                                        ; $7a67: $f9
	dec bc                                           ; $7a68: $0b
	xor e                                            ; $7a69: $ab
	db $fd                                           ; $7a6a: $fd
	cp a                                             ; $7a6b: $bf
	push de                                          ; $7a6c: $d5
	ld e, l                                          ; $7a6d: $5d
	or $5d                                           ; $7a6e: $f6 $5d
	or $37                                           ; $7a70: $f6 $37
	ld a, [$fab7]                                    ; $7a72: $fa $b7 $fa
	sub [hl]                                         ; $7a75: $96
	ei                                               ; $7a76: $fb
	add b                                            ; $7a77: $80
	ld c, d                                          ; $7a78: $4a
	rst $38                                          ; $7a79: $ff
	ld h, [hl]                                       ; $7a7a: $66
	rst $38                                          ; $7a7b: $ff
	ld a, d                                          ; $7a7c: $7a
	rst SubAFromDE                                          ; $7a7d: $df
	rst FarCall                                          ; $7a7e: $f7
	rst SubAFromDE                                          ; $7a7f: $df
	ldh a, [c]                                       ; $7a80: $f2
	rst SubAFromDE                                          ; $7a81: $df
	ldh a, [c]                                       ; $7a82: $f2
	ccf                                              ; $7a83: $3f
	ldh a, [c]                                       ; $7a84: $f2
	rra                                              ; $7a85: $1f
	ldh a, [c]                                       ; $7a86: $f2
	rra                                              ; $7a87: $1f
	push af                                          ; $7a88: $f5
	rst SubAFromDE                                          ; $7a89: $df
	push hl                                          ; $7a8a: $e5
	cp a                                             ; $7a8b: $bf
	push hl                                          ; $7a8c: $e5
	ccf                                              ; $7a8d: $3f
	and $3f                                          ; $7a8e: $e6 $3f
	and $7f                                          ; $7a90: $e6 $7f
	add $7f                                          ; $7a92: $c6 $7f
	call nz, $c4ff                                   ; $7a94: $c4 $ff $c4
	adc h                                            ; $7a97: $8c
	rst $38                                          ; $7a98: $ff
	call z, Call_065_58ff                            ; $7a99: $cc $ff $58
	rst AddAOntoHL                                          ; $7a9c: $ef
	ld a, c                                          ; $7a9d: $79
	rst GetHLinHL                                          ; $7a9e: $cf
	ld a, c                                          ; $7a9f: $79
	rst GetHLinHL                                          ; $7aa0: $cf
	xor d                                            ; $7aa1: $aa
	sbc $ba                                          ; $7aa2: $de $ba
	sbc $b4                                          ; $7aa4: $de $b4
	call c, $9c74                                    ; $7aa6: $dc $74 $9c
	ld a, b                                          ; $7aa9: $78
	sbc b                                            ; $7aaa: $98
	scf                                              ; $7aab: $37
	add b                                            ; $7aac: $80
	adc [hl]                                         ; $7aad: $8e
	cp b                                             ; $7aae: $b8
	rlca                                             ; $7aaf: $07
	rst JumpTable                                          ; $7ab0: $c7
	ccf                                              ; $7ab1: $3f
	ccf                                              ; $7ab2: $3f
	ld hl, sp-$01                                    ; $7ab3: $f8 $ff
	ret nz                                           ; $7ab5: $c0

	rst $38                                          ; $7ab6: $ff
	nop                                              ; $7ab7: $00
	rst $38                                          ; $7ab8: $ff
	rra                                              ; $7ab9: $1f
	cp $7f                                           ; $7aba: $fe $7f
	jp nc, $1dd6                                     ; $7abc: $d2 $d6 $1d

	inc bc                                           ; $7abf: $03
	add b                                            ; $7ac0: $80
	inc hl                                           ; $7ac1: $23
	add b                                            ; $7ac2: $80
	sbc [hl]                                         ; $7ac3: $9e
	rra                                              ; $7ac4: $1f
	inc bc                                           ; $7ac5: $03
	add b                                            ; $7ac6: $80
	dec sp                                           ; $7ac7: $3b
	add b                                            ; $7ac8: $80
	sbc c                                            ; $7ac9: $99
	cp [hl]                                          ; $7aca: $be
	ld bc, $3fc1                                     ; $7acb: $01 $c1 $3f
	ccf                                              ; $7ace: $3f
	cp $73                                           ; $7acf: $fe $73
	add b                                            ; $7ad1: $80
	sbc b                                            ; $7ad2: $98
	nop                                              ; $7ad3: $00
	ei                                               ; $7ad4: $fb
	rra                                              ; $7ad5: $1f
	rst SubAFromBC                                          ; $7ad6: $e7
	ld a, [hl]                                       ; $7ad7: $7e
	ccf                                              ; $7ad8: $3f
	jr jr_065_7ade                                   ; $7ad9: $18 $03

	add b                                            ; $7adb: $80
	inc bc                                           ; $7adc: $03
	add b                                            ; $7add: $80

jr_065_7ade:
	inc bc                                           ; $7ade: $03
	add b                                            ; $7adf: $80
	ld e, e                                          ; $7ae0: $5b
	add b                                            ; $7ae1: $80
	sbc c                                            ; $7ae2: $99
	cp a                                             ; $7ae3: $bf
	nop                                              ; $7ae4: $00
	ret nz                                           ; $7ae5: $c0

	ccf                                              ; $7ae6: $3f
	ccf                                              ; $7ae7: $3f
	rst $38                                          ; $7ae8: $ff
	ld l, a                                          ; $7ae9: $6f
	add b                                            ; $7aea: $80
	sbc c                                            ; $7aeb: $99
	rst $38                                          ; $7aec: $ff
	ld a, $ff                                        ; $7aed: $3e $ff
	pop bc                                           ; $7aef: $c1
	ccf                                              ; $7af0: $3f
	ld a, $03                                        ; $7af1: $3e $03
	add b                                            ; $7af3: $80
	ld c, e                                          ; $7af4: $4b
	add b                                            ; $7af5: $80
	sbc e                                            ; $7af6: $9b
	ld [hl], d                                       ; $7af7: $72
	rst SubAFromDE                                          ; $7af8: $df
	ldh a, [c]                                       ; $7af9: $f2
	cp a                                             ; $7afa: $bf
	ld l, e                                          ; $7afb: $6b
	add b                                            ; $7afc: $80
	sbc [hl]                                         ; $7afd: $9e
	ccf                                              ; $7afe: $3f
	rrca                                             ; $7aff: $0f
	add b                                            ; $7b00: $80
	adc h                                            ; $7b01: $8c
	ei                                               ; $7b02: $fb
	ld h, b                                          ; $7b03: $60
	ld sp, hl                                        ; $7b04: $f9
	or b                                             ; $7b05: $b0
	db $fc                                           ; $7b06: $fc
	add b                                            ; $7b07: $80
	call c, $cec0                                    ; $7b08: $dc $c0 $ce
	nop                                              ; $7b0b: $00
	inc a                                            ; $7b0c: $3c
	stop                                             ; $7b0d: $10 $00
	nop                                              ; $7b0f: $00
	ld [hl], a                                       ; $7b10: $77
	ld [hl+], a                                      ; $7b11: $22
	ld a, $1c                                        ; $7b12: $3e $1c
	nop                                              ; $7b14: $00
	cp l                                             ; $7b15: $bd
	inc c                                            ; $7b16: $0c
	nop                                              ; $7b17: $00
	nop                                              ; $7b18: $00
	pop bc                                           ; $7b19: $c1
	ld a, [hl]                                       ; $7b1a: $7e
	nop                                              ; $7b1b: $00
	sbc h                                            ; $7b1c: $9c
	ld h, e                                          ; $7b1d: $63
	ld a, a                                          ; $7b1e: $7f
	inc e                                            ; $7b1f: $1c
	ld b, e                                          ; $7b20: $43
	ldh [$7f], a                                     ; $7b21: $e0 $7f
	rst SubAFromDE                                          ; $7b23: $df
	ld a, e                                          ; $7b24: $7b
	sbc $1f                                          ; $7b25: $de $1f
	ldh [$9e], a                                     ; $7b27: $e0 $9e
	ld a, a                                          ; $7b29: $7f
	ld h, e                                          ; $7b2a: $63
	rst SubAFromDE                                          ; $7b2b: $df
	inc sp                                           ; $7b2c: $33
	ldh [$7f], a                                     ; $7b2d: $e0 $7f
	xor $dd                                          ; $7b2f: $ee $dd
	ld a, $73                                        ; $7b31: $3e $73
	sbc $6f                                          ; $7b33: $de $6f
	ldh [$a2], a                                     ; $7b35: $e0 $a2
	ld bc, $4280                                     ; $7b37: $01 $80 $42
	rst SubAFromBC                                          ; $7b3a: $e7
	jp nz, $c686                                     ; $7b3b: $c2 $86 $c6

	add h                                            ; $7b3e: $84
	sub [hl]                                         ; $7b3f: $96
	call nz, $c694                                   ; $7b40: $c4 $94 $c6
	add h                                            ; $7b43: $84
	sub $8c                                          ; $7b44: $d6 $8c
	sub $8d                                          ; $7b46: $d6 $8d
	sub $6d                                          ; $7b48: $d6 $6d
	sub $ed                                          ; $7b4a: $d6 $ed
	ld d, [hl]                                       ; $7b4c: $56
	jp z, $ae77                                      ; $7b4d: $ca $77 $ae

	ld [hl], e                                       ; $7b50: $73
	push hl                                          ; $7b51: $e5
	dec sp                                           ; $7b52: $3b
	rst SubAFromHL                                          ; $7b53: $d7
	cp c                                             ; $7b54: $b9
	ldh a, [c]                                       ; $7b55: $f2
	sbc l                                            ; $7b56: $9d
	jp hl                                            ; $7b57: $e9


	adc l                                            ; $7b58: $8d
	sbc $f4                                          ; $7b59: $de $f4
	rst AddAOntoHL                                          ; $7b5b: $ef
	sub d                                            ; $7b5c: $92
	rst $38                                          ; $7b5d: $ff
	sbc l                                            ; $7b5e: $9d
	rst $38                                          ; $7b5f: $ff
	sub e                                            ; $7b60: $93
	rst $38                                          ; $7b61: $ff
	and d                                            ; $7b62: $a2
	rst $38                                          ; $7b63: $ff
	inc [hl]                                         ; $7b64: $34
	rst AddAOntoHL                                          ; $7b65: $ef
	or l                                             ; $7b66: $b5
	ld l, a                                          ; $7b67: $6f
	db $fd                                           ; $7b68: $fd
	dec hl                                           ; $7b69: $2b
	cp $7b                                           ; $7b6a: $fe $7b
	cp $9e                                           ; $7b6c: $fe $9e
	sbc $7b                                          ; $7b6e: $de $7b
	cp $80                                           ; $7b70: $fe $80
	ld e, [hl]                                       ; $7b72: $5e
	xor e                                            ; $7b73: $ab
	reti                                             ; $7b74: $d9


	xor a                                            ; $7b75: $af
	call $bcb7                                       ; $7b76: $cd $b7 $bc
	rst SubAFromHL                                          ; $7b79: $d7
	daa                                              ; $7b7a: $27
	ld [hl+], a                                      ; $7b7b: $22
	inc hl                                           ; $7b7c: $23
	ld h, [hl]                                       ; $7b7d: $66
	ld c, e                                          ; $7b7e: $4b
	ld h, [hl]                                       ; $7b7f: $66
	db $ed                                           ; $7b80: $ed
	ld b, [hl]                                       ; $7b81: $46
	push hl                                          ; $7b82: $e5
	ld c, [hl]                                       ; $7b83: $4e
	ld h, l                                          ; $7b84: $65
	adc $55                                          ; $7b85: $ce $55
	xor $55                                          ; $7b87: $ee $55
	xor $44                                          ; $7b89: $ee $44
	rst $38                                          ; $7b8b: $ff

jr_065_7b8c:
	ld b, h                                          ; $7b8c: $44
	rst $38                                          ; $7b8d: $ff
	inc h                                            ; $7b8e: $24
	rst $38                                          ; $7b8f: $ff
	ld [hl+], a                                      ; $7b90: $22
	ld a, e                                          ; $7b91: $7b
	cp $80                                           ; $7b92: $fe $80
	ld [de], a                                       ; $7b94: $12
	rst $38                                          ; $7b95: $ff
	sub c                                            ; $7b96: $91
	rst $38                                          ; $7b97: $ff
	ret                                              ; $7b98: $c9


	rst $38                                          ; $7b99: $ff
	call $eeff                                       ; $7b9a: $cd $ff $ee
	cp e                                             ; $7b9d: $bb

jr_065_7b9e:
	ld [hl], a                                       ; $7b9e: $77
	db $dd                                           ; $7b9f: $dd
	rst $38                                          ; $7ba0: $ff
	xor $ee                                          ; $7ba1: $ee $ee
	add b                                            ; $7ba3: $80
	ret nz                                           ; $7ba4: $c0

	add b                                            ; $7ba5: $80
	ld b, b                                          ; $7ba6: $40
	ret nz                                           ; $7ba7: $c0

	ld h, b                                          ; $7ba8: $60
	ret nz                                           ; $7ba9: $c0

	jr nc, jr_065_7b8c                               ; $7baa: $30 $e0

	jr c, jr_065_7b9e                                ; $7bac: $38 $f0

	inc l                                            ; $7bae: $2c
	ld hl, sp+$26                                    ; $7baf: $f8 $26
	db $fc                                           ; $7bb1: $fc
	rla                                              ; $7bb2: $17
	adc a                                            ; $7bb3: $8f
	cp $17                                           ; $7bb4: $fe $17
	db $fd                                           ; $7bb6: $fd
	rrca                                             ; $7bb7: $0f
	db $fc                                           ; $7bb8: $fc
	adc [hl]                                         ; $7bb9: $8e
	db $fc                                           ; $7bba: $fc
	xor [hl]                                         ; $7bbb: $ae
	ld a, h                                          ; $7bbc: $7c
	inc e                                            ; $7bbd: $1c
	add sp, $58                                      ; $7bbe: $e8 $58
	add sp, $78                                      ; $7bc0: $e8 $78
	ret nc                                           ; $7bc2: $d0

	ld [hl], b                                       ; $7bc3: $70
	ld l, e                                          ; $7bc4: $6b
	cp $9c                                           ; $7bc5: $fe $9c
	ld d, b                                          ; $7bc7: $50
	ldh a, [rSVBK]                                   ; $7bc8: $f0 $70
	ld a, e                                          ; $7bca: $7b
	cp $7f                                           ; $7bcb: $fe $7f
	ldh a, [$97]                                     ; $7bcd: $f0 $97
	ld l, b                                          ; $7bcf: $68
	ret                                              ; $7bd0: $c9


	ld h, e                                          ; $7bd1: $63
	pop bc                                           ; $7bd2: $c1
	ld h, e                                          ; $7bd3: $63
	ret nz                                           ; $7bd4: $c0

	xor e                                            ; $7bd5: $ab
	ldh [$d8], a                                     ; $7bd6: $e0 $d8
	ld d, l                                          ; $7bd8: $55
	add c                                            ; $7bd9: $81
	ld a, l                                          ; $7bda: $7d
	ld d, h                                          ; $7bdb: $54
	ld a, a                                          ; $7bdc: $7f
	ld l, [hl]                                       ; $7bdd: $6e
	ld a, e                                          ; $7bde: $7b
	ld l, [hl]                                       ; $7bdf: $6e
	ld a, e                                          ; $7be0: $7b
	rst $38                                          ; $7be1: $ff
	ld d, c                                          ; $7be2: $51
	rst SubAFromDE                                          ; $7be3: $df
	sub c                                            ; $7be4: $91
	or b                                             ; $7be5: $b0
	rrca                                             ; $7be6: $0f
	rst GetHLinHL                                          ; $7be7: $cf
	ccf                                              ; $7be8: $3f
	ccf                                              ; $7be9: $3f
	ldh a, [rIE]                                     ; $7bea: $f0 $ff
	ret nz                                           ; $7bec: $c0

	rst $38                                          ; $7bed: $ff
	rra                                              ; $7bee: $1f
	di                                               ; $7bef: $f3
	ld [hl], e                                       ; $7bf0: $73
	sbc $ff                                          ; $7bf1: $de $ff
	sub d                                            ; $7bf3: $92
	ld d, $0d                                        ; $7bf4: $16 $0d
	inc c                                            ; $7bf6: $0c
	rrca                                             ; $7bf7: $0f
	cp l                                             ; $7bf8: $bd
	rlca                                             ; $7bf9: $07
	rrca                                             ; $7bfa: $0f
	rra                                              ; $7bfb: $1f
	rra                                              ; $7bfc: $1f
	add b                                            ; $7bfd: $80
	ld bc, $033f                                     ; $7bfe: $01 $3f $03
	ccf                                              ; $7c01: $3f
	rlca                                             ; $7c02: $07
	ld a, l                                          ; $7c03: $7d
	rrca                                             ; $7c04: $0f
	ld a, l                                          ; $7c05: $7d
	rla                                              ; $7c06: $17
	db $fd                                           ; $7c07: $fd
	ld h, l                                          ; $7c08: $65
	ld sp, hl                                        ; $7c09: $f9
	call $0df9                                       ; $7c0a: $cd $f9 $0d
	ld sp, hl                                        ; $7c0d: $f9
	dec bc                                           ; $7c0e: $0b
	xor e                                            ; $7c0f: $ab
	db $fd                                           ; $7c10: $fd
	cp a                                             ; $7c11: $bf
	push de                                          ; $7c12: $d5
	ld e, l                                          ; $7c13: $5d
	or $5d                                           ; $7c14: $f6 $5d
	or $37                                           ; $7c16: $f6 $37
	ld a, [$fab7]                                    ; $7c18: $fa $b7 $fa
	sub [hl]                                         ; $7c1b: $96
	ei                                               ; $7c1c: $fb
	add b                                            ; $7c1d: $80
	ld c, d                                          ; $7c1e: $4a
	rst $38                                          ; $7c1f: $ff
	ld h, [hl]                                       ; $7c20: $66
	rst $38                                          ; $7c21: $ff
	ld a, d                                          ; $7c22: $7a
	rst SubAFromDE                                          ; $7c23: $df
	rst FarCall                                          ; $7c24: $f7
	rst SubAFromDE                                          ; $7c25: $df
	ldh a, [c]                                       ; $7c26: $f2
	rst SubAFromDE                                          ; $7c27: $df
	ldh a, [c]                                       ; $7c28: $f2
	ccf                                              ; $7c29: $3f
	ldh a, [c]                                       ; $7c2a: $f2
	rra                                              ; $7c2b: $1f
	ldh a, [c]                                       ; $7c2c: $f2
	rra                                              ; $7c2d: $1f
	push af                                          ; $7c2e: $f5
	rst SubAFromDE                                          ; $7c2f: $df
	push hl                                          ; $7c30: $e5
	cp a                                             ; $7c31: $bf
	push hl                                          ; $7c32: $e5
	ccf                                              ; $7c33: $3f
	and $3f                                          ; $7c34: $e6 $3f
	and $7f                                          ; $7c36: $e6 $7f
	add $7f                                          ; $7c38: $c6 $7f
	call nz, $c4ff                                   ; $7c3a: $c4 $ff $c4
	adc h                                            ; $7c3d: $8c
	rst $38                                          ; $7c3e: $ff
	call z, Call_065_58ff                            ; $7c3f: $cc $ff $58
	rst AddAOntoHL                                          ; $7c42: $ef
	ld a, c                                          ; $7c43: $79
	rst GetHLinHL                                          ; $7c44: $cf
	ld a, c                                          ; $7c45: $79
	rst GetHLinHL                                          ; $7c46: $cf
	xor d                                            ; $7c47: $aa
	sbc $ba                                          ; $7c48: $de $ba
	sbc $b4                                          ; $7c4a: $de $b4
	call c, $9c74                                    ; $7c4c: $dc $74 $9c
	ld a, b                                          ; $7c4f: $78
	sbc b                                            ; $7c50: $98
	scf                                              ; $7c51: $37
	add b                                            ; $7c52: $80
	sbc c                                            ; $7c53: $99
	cp b                                             ; $7c54: $b8
	rlca                                             ; $7c55: $07
	rst JumpTable                                          ; $7c56: $c7
	ccf                                              ; $7c57: $3f
	ccf                                              ; $7c58: $3f
	ld hl, sp+$7b                                    ; $7c59: $f8 $7b
	add b                                            ; $7c5b: $80
	sub a                                            ; $7c5c: $97
	nop                                              ; $7c5d: $00
	rst $38                                          ; $7c5e: $ff
	rra                                              ; $7c5f: $1f
	cp $7f                                           ; $7c60: $fe $7f
	jp nc, $1dd6                                     ; $7c62: $d2 $d6 $1d

	inc bc                                           ; $7c65: $03
	add b                                            ; $7c66: $80
	inc hl                                           ; $7c67: $23
	add b                                            ; $7c68: $80
	sbc [hl]                                         ; $7c69: $9e
	rra                                              ; $7c6a: $1f
	inc bc                                           ; $7c6b: $03
	add b                                            ; $7c6c: $80
	dec sp                                           ; $7c6d: $3b
	add b                                            ; $7c6e: $80
	sbc c                                            ; $7c6f: $99
	cp [hl]                                          ; $7c70: $be
	ld bc, $3fc1                                     ; $7c71: $01 $c1 $3f
	ccf                                              ; $7c74: $3f
	cp $73                                           ; $7c75: $fe $73
	add b                                            ; $7c77: $80
	sbc b                                            ; $7c78: $98
	nop                                              ; $7c79: $00
	ei                                               ; $7c7a: $fb
	rra                                              ; $7c7b: $1f
	rst SubAFromBC                                          ; $7c7c: $e7
	ld a, [hl]                                       ; $7c7d: $7e
	ccf                                              ; $7c7e: $3f
	jr jr_065_7c84                                   ; $7c7f: $18 $03

	add b                                            ; $7c81: $80
	inc bc                                           ; $7c82: $03
	add b                                            ; $7c83: $80

jr_065_7c84:
	inc bc                                           ; $7c84: $03
	add b                                            ; $7c85: $80
	ld e, e                                          ; $7c86: $5b
	add b                                            ; $7c87: $80
	sbc c                                            ; $7c88: $99
	cp a                                             ; $7c89: $bf
	nop                                              ; $7c8a: $00
	ret nz                                           ; $7c8b: $c0

	ccf                                              ; $7c8c: $3f
	ccf                                              ; $7c8d: $3f
	rst $38                                          ; $7c8e: $ff
	ld l, a                                          ; $7c8f: $6f
	add b                                            ; $7c90: $80
	sbc c                                            ; $7c91: $99
	rst $38                                          ; $7c92: $ff
	ld a, $ff                                        ; $7c93: $3e $ff
	pop bc                                           ; $7c95: $c1
	ccf                                              ; $7c96: $3f
	ld a, $03                                        ; $7c97: $3e $03
	add b                                            ; $7c99: $80
	ld c, e                                          ; $7c9a: $4b
	add b                                            ; $7c9b: $80
	sbc e                                            ; $7c9c: $9b
	ld [hl], d                                       ; $7c9d: $72
	rst SubAFromDE                                          ; $7c9e: $df
	ldh a, [c]                                       ; $7c9f: $f2
	cp a                                             ; $7ca0: $bf
	ld l, e                                          ; $7ca1: $6b
	add b                                            ; $7ca2: $80
	sbc [hl]                                         ; $7ca3: $9e
	ccf                                              ; $7ca4: $3f
	rrca                                             ; $7ca5: $0f
	add b                                            ; $7ca6: $80
	sub e                                            ; $7ca7: $93
	ei                                               ; $7ca8: $fb
	ld h, b                                          ; $7ca9: $60
	ld sp, hl                                        ; $7caa: $f9
	or b                                             ; $7cab: $b0
	db $fc                                           ; $7cac: $fc
	add b                                            ; $7cad: $80
	call c, $cec0                                    ; $7cae: $dc $c0 $ce
	nop                                              ; $7cb1: $00
	inc a                                            ; $7cb2: $3c
	db $10                                           ; $7cb3: $10
	db $fd                                           ; $7cb4: $fd
	sbc h                                            ; $7cb5: $9c
	ld [hl], $1c                                     ; $7cb6: $36 $1c
	nop                                              ; $7cb8: $00
	cp l                                             ; $7cb9: $bd
	inc e                                            ; $7cba: $1c
	nop                                              ; $7cbb: $00
	nop                                              ; $7cbc: $00
	pop bc                                           ; $7cbd: $c1
	sbc d                                            ; $7cbe: $9a
	add b                                            ; $7cbf: $80
	rst $38                                          ; $7cc0: $ff
	ld h, e                                          ; $7cc1: $63
	ld a, a                                          ; $7cc2: $7f
	inc e                                            ; $7cc3: $1c
	ccf                                              ; $7cc4: $3f
	ldh [$9d], a                                     ; $7cc5: $e0 $9d
	inc e                                            ; $7cc7: $1c
	ld [$e017], sp                                   ; $7cc8: $08 $17 $e0
	sbc e                                            ; $7ccb: $9b
	ld [hl+], a                                      ; $7ccc: $22
	ld [hl], $3e                                     ; $7ccd: $36 $3e
	inc e                                            ; $7ccf: $1c
	dec bc                                           ; $7cd0: $0b
	ldh [$df], a                                     ; $7cd1: $e0 $df
	ld a, $73                                        ; $7cd3: $3e $73
	sbc $6f                                          ; $7cd5: $de $6f
	ldh [$b7], a                                     ; $7cd7: $e0 $b7
	ld bc, $4280                                     ; $7cd9: $01 $80 $42
	rst SubAFromBC                                          ; $7cdc: $e7
	jp nz, $c686                                     ; $7cdd: $c2 $86 $c6

	add h                                            ; $7ce0: $84
	sub [hl]                                         ; $7ce1: $96
	call nz, $c694                                   ; $7ce2: $c4 $94 $c6
	add h                                            ; $7ce5: $84
	sub $8c                                          ; $7ce6: $d6 $8c
	sub $8d                                          ; $7ce8: $d6 $8d
	sub $6d                                          ; $7cea: $d6 $6d
	sub $ed                                          ; $7cec: $d6 $ed
	ld d, [hl]                                       ; $7cee: $56
	jp z, $ae77                                      ; $7cef: $ca $77 $ae

	ld [hl], e                                       ; $7cf2: $73
	push hl                                          ; $7cf3: $e5
	dec sp                                           ; $7cf4: $3b
	rst SubAFromHL                                          ; $7cf5: $d7
	cp c                                             ; $7cf6: $b9
	ldh a, [c]                                       ; $7cf7: $f2
	sbc l                                            ; $7cf8: $9d
	jp hl                                            ; $7cf9: $e9


	adc l                                            ; $7cfa: $8d
	sbc $f4                                          ; $7cfb: $de $f4
	rst AddAOntoHL                                          ; $7cfd: $ef
	sub d                                            ; $7cfe: $92
	rst $38                                          ; $7cff: $ff
	sbc l                                            ; $7d00: $9d
	rst $38                                          ; $7d01: $ff
	sub e                                            ; $7d02: $93
	rst $38                                          ; $7d03: $ff
	and d                                            ; $7d04: $a2
	rst $38                                          ; $7d05: $ff
	inc [hl]                                         ; $7d06: $34
	rst AddAOntoHL                                          ; $7d07: $ef
	or l                                             ; $7d08: $b5
	ld l, a                                          ; $7d09: $6f
	db $fd                                           ; $7d0a: $fd
	dec hl                                           ; $7d0b: $2b
	cp $7b                                           ; $7d0c: $fe $7b
	cp $9e                                           ; $7d0e: $fe $9e
	sbc $7b                                          ; $7d10: $de $7b
	cp $80                                           ; $7d12: $fe $80
	ld e, [hl]                                       ; $7d14: $5e
	xor e                                            ; $7d15: $ab
	reti                                             ; $7d16: $d9


	xor a                                            ; $7d17: $af
	call $bcb7                                       ; $7d18: $cd $b7 $bc
	rst SubAFromHL                                          ; $7d1b: $d7
	daa                                              ; $7d1c: $27
	ld [hl+], a                                      ; $7d1d: $22
	inc hl                                           ; $7d1e: $23
	ld h, [hl]                                       ; $7d1f: $66
	ld c, e                                          ; $7d20: $4b
	ld h, [hl]                                       ; $7d21: $66
	db $ed                                           ; $7d22: $ed
	ld b, [hl]                                       ; $7d23: $46
	push hl                                          ; $7d24: $e5
	ld c, [hl]                                       ; $7d25: $4e
	ld h, l                                          ; $7d26: $65
	adc $55                                          ; $7d27: $ce $55
	xor $55                                          ; $7d29: $ee $55
	xor $44                                          ; $7d2b: $ee $44
	rst $38                                          ; $7d2d: $ff

jr_065_7d2e:
	ld b, h                                          ; $7d2e: $44
	rst $38                                          ; $7d2f: $ff
	inc h                                            ; $7d30: $24
	rst $38                                          ; $7d31: $ff
	ld [hl+], a                                      ; $7d32: $22
	ld a, e                                          ; $7d33: $7b
	cp $80                                           ; $7d34: $fe $80
	ld [de], a                                       ; $7d36: $12
	rst $38                                          ; $7d37: $ff
	sub c                                            ; $7d38: $91
	rst $38                                          ; $7d39: $ff
	ret                                              ; $7d3a: $c9


	rst $38                                          ; $7d3b: $ff
	call $eeff                                       ; $7d3c: $cd $ff $ee
	cp e                                             ; $7d3f: $bb

jr_065_7d40:
	ld [hl], a                                       ; $7d40: $77
	db $dd                                           ; $7d41: $dd
	rst $38                                          ; $7d42: $ff
	xor $ee                                          ; $7d43: $ee $ee
	add b                                            ; $7d45: $80
	ret nz                                           ; $7d46: $c0

	add b                                            ; $7d47: $80
	ld b, b                                          ; $7d48: $40
	ret nz                                           ; $7d49: $c0

	ld h, b                                          ; $7d4a: $60
	ret nz                                           ; $7d4b: $c0

	jr nc, jr_065_7d2e                               ; $7d4c: $30 $e0

	jr c, jr_065_7d40                                ; $7d4e: $38 $f0

	inc l                                            ; $7d50: $2c
	ld hl, sp+$26                                    ; $7d51: $f8 $26
	db $fc                                           ; $7d53: $fc
	rla                                              ; $7d54: $17
	adc a                                            ; $7d55: $8f
	cp $17                                           ; $7d56: $fe $17
	db $fd                                           ; $7d58: $fd
	rrca                                             ; $7d59: $0f
	db $fc                                           ; $7d5a: $fc
	adc [hl]                                         ; $7d5b: $8e
	db $fc                                           ; $7d5c: $fc
	xor [hl]                                         ; $7d5d: $ae
	ld a, h                                          ; $7d5e: $7c
	inc e                                            ; $7d5f: $1c
	add sp, $58                                      ; $7d60: $e8 $58
	add sp, $78                                      ; $7d62: $e8 $78
	ret nc                                           ; $7d64: $d0

	ld [hl], b                                       ; $7d65: $70
	ld l, e                                          ; $7d66: $6b
	cp $9c                                           ; $7d67: $fe $9c
	ld d, b                                          ; $7d69: $50
	ldh a, [rSVBK]                                   ; $7d6a: $f0 $70
	ld a, e                                          ; $7d6c: $7b
	cp $7f                                           ; $7d6d: $fe $7f
	ldh a, [$97]                                     ; $7d6f: $f0 $97
	ld l, c                                          ; $7d71: $69
	ret z                                            ; $7d72: $c8

	ld h, e                                          ; $7d73: $63
	ret nz                                           ; $7d74: $c0

	ld h, d                                          ; $7d75: $62
	pop bc                                           ; $7d76: $c1
	xor e                                            ; $7d77: $ab
	pop hl                                           ; $7d78: $e1
	ret c                                            ; $7d79: $d8

	ld d, l                                          ; $7d7a: $55
	add c                                            ; $7d7b: $81
	ld a, l                                          ; $7d7c: $7d
	ld d, h                                          ; $7d7d: $54
	ld a, a                                          ; $7d7e: $7f
	ld l, [hl]                                       ; $7d7f: $6e
	ld a, e                                          ; $7d80: $7b
	ld l, [hl]                                       ; $7d81: $6e
	ld a, e                                          ; $7d82: $7b
	rst $38                                          ; $7d83: $ff
	ld d, c                                          ; $7d84: $51
	rst SubAFromDE                                          ; $7d85: $df
	sub c                                            ; $7d86: $91
	cp a                                             ; $7d87: $bf
	nop                                              ; $7d88: $00
	cp $01                                           ; $7d89: $fe $01
	di                                               ; $7d8b: $f3
	rrca                                             ; $7d8c: $0f
	sbc a                                            ; $7d8d: $9f
	ld a, h                                          ; $7d8e: $7c
	ld a, a                                          ; $7d8f: $7f
	ldh [rIE], a                                     ; $7d90: $e0 $ff
	nop                                              ; $7d92: $00
	rst $38                                          ; $7d93: $ff
	ld a, $ff                                        ; $7d94: $3e $ff
	pop bc                                           ; $7d96: $c1
	ccf                                              ; $7d97: $3f
	ld a, $0f                                        ; $7d98: $3e $0f
	cp l                                             ; $7d9a: $bd
	rlca                                             ; $7d9b: $07
	rrca                                             ; $7d9c: $0f
	rra                                              ; $7d9d: $1f
	rra                                              ; $7d9e: $1f
	add b                                            ; $7d9f: $80
	ld bc, $033f                                     ; $7da0: $01 $3f $03
	ccf                                              ; $7da3: $3f
	rlca                                             ; $7da4: $07
	ld a, l                                          ; $7da5: $7d
	rrca                                             ; $7da6: $0f
	ld a, l                                          ; $7da7: $7d
	rla                                              ; $7da8: $17
	db $fd                                           ; $7da9: $fd
	ld h, l                                          ; $7daa: $65
	ld sp, hl                                        ; $7dab: $f9
	call $0df9                                       ; $7dac: $cd $f9 $0d
	ld sp, hl                                        ; $7daf: $f9
	dec bc                                           ; $7db0: $0b
	xor e                                            ; $7db1: $ab
	db $fd                                           ; $7db2: $fd
	cp a                                             ; $7db3: $bf
	push de                                          ; $7db4: $d5
	ld e, l                                          ; $7db5: $5d
	or $5d                                           ; $7db6: $f6 $5d
	or $37                                           ; $7db8: $f6 $37
	ld a, [$fab7]                                    ; $7dba: $fa $b7 $fa
	sub [hl]                                         ; $7dbd: $96
	ei                                               ; $7dbe: $fb
	add b                                            ; $7dbf: $80
	ld c, d                                          ; $7dc0: $4a
	rst $38                                          ; $7dc1: $ff
	ld h, [hl]                                       ; $7dc2: $66
	rst $38                                          ; $7dc3: $ff
	ld a, d                                          ; $7dc4: $7a
	rst SubAFromDE                                          ; $7dc5: $df
	rst FarCall                                          ; $7dc6: $f7
	rst SubAFromDE                                          ; $7dc7: $df
	ld [hl], d                                       ; $7dc8: $72
	rst SubAFromDE                                          ; $7dc9: $df
	ldh a, [c]                                       ; $7dca: $f2
	cp a                                             ; $7dcb: $bf
	ldh a, [c]                                       ; $7dcc: $f2
	rra                                              ; $7dcd: $1f
	ldh a, [c]                                       ; $7dce: $f2
	rra                                              ; $7dcf: $1f
	push af                                          ; $7dd0: $f5
	rra                                              ; $7dd1: $1f
	push hl                                          ; $7dd2: $e5
	ccf                                              ; $7dd3: $3f
	push hl                                          ; $7dd4: $e5
	ccf                                              ; $7dd5: $3f
	and $3f                                          ; $7dd6: $e6 $3f
	and $7f                                          ; $7dd8: $e6 $7f
	add $7f                                          ; $7dda: $c6 $7f
	call nz, $c4ff                                   ; $7ddc: $c4 $ff $c4
	adc h                                            ; $7ddf: $8c
	rst $38                                          ; $7de0: $ff
	call z, Call_065_58ff                            ; $7de1: $cc $ff $58
	rst AddAOntoHL                                          ; $7de4: $ef
	ld a, c                                          ; $7de5: $79
	rst GetHLinHL                                          ; $7de6: $cf
	ld a, c                                          ; $7de7: $79
	rst GetHLinHL                                          ; $7de8: $cf
	xor d                                            ; $7de9: $aa
	sbc $ba                                          ; $7dea: $de $ba
	sbc $b4                                          ; $7dec: $de $b4
	call c, $9c74                                    ; $7dee: $dc $74 $9c
	ld a, b                                          ; $7df1: $78
	sbc b                                            ; $7df2: $98
	rra                                              ; $7df3: $1f
	ld h, b                                          ; $7df4: $60
	ld a, a                                          ; $7df5: $7f
	ld h, d                                          ; $7df6: $62
	sbc e                                            ; $7df7: $9b
	ld h, e                                          ; $7df8: $63
	pop bc                                           ; $7df9: $c1
	xor e                                            ; $7dfa: $ab
	ldh [$2f], a                                     ; $7dfb: $e0 $2f
	ld h, b                                          ; $7dfd: $60
	adc a                                            ; $7dfe: $8f
	db $fc                                           ; $7dff: $fc
	inc bc                                           ; $7e00: $03
	rst JumpTable                                          ; $7e01: $c7
	ccf                                              ; $7e02: $3f
	ccf                                              ; $7e03: $3f
	ld hl, sp-$01                                    ; $7e04: $f8 $ff
	ret nz                                           ; $7e06: $c0

	rst $38                                          ; $7e07: $ff
	nop                                              ; $7e08: $00
	ei                                               ; $7e09: $fb
	rra                                              ; $7e0a: $1f
	rst SubAFromBC                                          ; $7e0b: $e7
	ld a, [hl]                                       ; $7e0c: $7e
	ccf                                              ; $7e0d: $3f
	jr jr_065_7e13                                   ; $7e0e: $18 $03

	ld h, b                                          ; $7e10: $60
	rra                                              ; $7e11: $1f
	ld h, b                                          ; $7e12: $60

jr_065_7e13:
	sbc [hl]                                         ; $7e13: $9e
	cp a                                             ; $7e14: $bf
	inc bc                                           ; $7e15: $03
	ld h, b                                          ; $7e16: $60
	inc bc                                           ; $7e17: $03
	ld h, b                                          ; $7e18: $60
	ld b, a                                          ; $7e19: $47
	ld h, b                                          ; $7e1a: $60
	sbc c                                            ; $7e1b: $99
	cp b                                             ; $7e1c: $b8
	rlca                                             ; $7e1d: $07
	rst SubAFromBC                                          ; $7e1e: $e7
	rra                                              ; $7e1f: $1f
	sbc a                                            ; $7e20: $9f
	ld a, b                                          ; $7e21: $78
	ld a, d                                          ; $7e22: $7a
	jp nz, $8096                                     ; $7e23: $c2 $96 $80

	rst $38                                          ; $7e26: $ff
	rra                                              ; $7e27: $1f
	cp $7f                                           ; $7e28: $fe $7f
	jp nc, $1dd6                                     ; $7e2a: $d2 $d6 $1d

	inc c                                            ; $7e2d: $0c
	inc bc                                           ; $7e2e: $03
	ld h, b                                          ; $7e2f: $60
	ld c, e                                          ; $7e30: $4b
	ld h, b                                          ; $7e31: $60
	sbc e                                            ; $7e32: $9b
	ldh a, [c]                                       ; $7e33: $f2
	rst SubAFromDE                                          ; $7e34: $df
	ldh a, [c]                                       ; $7e35: $f2
	ccf                                              ; $7e36: $3f
	inc bc                                           ; $7e37: $03
	ld h, b                                          ; $7e38: $60
	inc bc                                           ; $7e39: $03
	ld h, b                                          ; $7e3a: $60
	daa                                              ; $7e3b: $27
	ld h, b                                          ; $7e3c: $60
	sbc c                                            ; $7e3d: $99
	or b                                             ; $7e3e: $b0
	rrca                                             ; $7e3f: $0f
	rst GetHLinHL                                          ; $7e40: $cf
	ccf                                              ; $7e41: $3f
	ccf                                              ; $7e42: $3f
	ldh a, [$7a]                                     ; $7e43: $f0 $7a
	jp nz, $1f97                                     ; $7e45: $c2 $97 $1f

	di                                               ; $7e48: $f3
	ld [hl], e                                       ; $7e49: $73
	sbc $ff                                          ; $7e4a: $de $ff
	sub d                                            ; $7e4c: $92
	ld d, $0d                                        ; $7e4d: $16 $0d
	inc bc                                           ; $7e4f: $03
	ld h, b                                          ; $7e50: $60
	inc hl                                           ; $7e51: $23
	ld h, b                                          ; $7e52: $60
	sbc [hl]                                         ; $7e53: $9e
	rst SubAFromDE                                          ; $7e54: $df
	rlca                                             ; $7e55: $07
	ld h, b                                          ; $7e56: $60
	sub d                                            ; $7e57: $92
	ei                                               ; $7e58: $fb
	ld h, b                                          ; $7e59: $60
	ld sp, hl                                        ; $7e5a: $f9
	or b                                             ; $7e5b: $b0
	db $fc                                           ; $7e5c: $fc
	add b                                            ; $7e5d: $80
	call c, $cec0                                    ; $7e5e: $dc $c0 $ce
	nop                                              ; $7e61: $00
	inc a                                            ; $7e62: $3c
	stop                                             ; $7e63: $10 $00
	cp a                                             ; $7e65: $bf
	inc e                                            ; $7e66: $1c
	ld [hl], $9e                                     ; $7e67: $36 $9e
	ld a, $77                                        ; $7e69: $3e $77
	ld a, [$99fd]                                    ; $7e6b: $fa $fd $99
	pop bc                                           ; $7e6e: $c1
	add b                                            ; $7e6f: $80
	rst $38                                          ; $7e70: $ff
	ld h, e                                          ; $7e71: $63
	ld a, a                                          ; $7e72: $7f
	inc e                                            ; $7e73: $1c
	ld b, a                                          ; $7e74: $47
	ldh [$de], a                                     ; $7e75: $e0 $de
	ld a, $df                                        ; $7e77: $3e $df
	inc e                                            ; $7e79: $1c
	rra                                              ; $7e7a: $1f
	ldh [$9e], a                                     ; $7e7b: $e0 $9e
	inc e                                            ; $7e7d: $1c
	call c, Call_065_733e                            ; $7e7e: $dc $3e $73
	sbc $37                                          ; $7e81: $de $37
	ldh [$7f], a                                     ; $7e83: $e0 $7f
	and $9d                                          ; $7e85: $e6 $9d
	ld a, a                                          ; $7e87: $7f
	ld a, $77                                        ; $7e88: $3e $77
	cp $77                                           ; $7e8a: $fe $77
	sbc $6f                                          ; $7e8c: $de $6f
	ldh [$af], a                                     ; $7e8e: $e0 $af
	ld bc, $4280                                     ; $7e90: $01 $80 $42
	rst SubAFromBC                                          ; $7e93: $e7
	jp nz, $c686                                     ; $7e94: $c2 $86 $c6

	add h                                            ; $7e97: $84
	sub [hl]                                         ; $7e98: $96
	call nz, $c694                                   ; $7e99: $c4 $94 $c6
	add h                                            ; $7e9c: $84
	sub $8c                                          ; $7e9d: $d6 $8c
	sub $8d                                          ; $7e9f: $d6 $8d
	sub $6d                                          ; $7ea1: $d6 $6d
	sub $ed                                          ; $7ea3: $d6 $ed
	ld d, [hl]                                       ; $7ea5: $56
	jp z, $ae77                                      ; $7ea6: $ca $77 $ae

	ld [hl], e                                       ; $7ea9: $73
	push hl                                          ; $7eaa: $e5
	dec sp                                           ; $7eab: $3b
	rst SubAFromHL                                          ; $7eac: $d7
	cp c                                             ; $7ead: $b9
	ldh a, [c]                                       ; $7eae: $f2
	sbc l                                            ; $7eaf: $9d
	jp hl                                            ; $7eb0: $e9


	adc l                                            ; $7eb1: $8d
	sbc $f4                                          ; $7eb2: $de $f4
	rst AddAOntoHL                                          ; $7eb4: $ef
	sub d                                            ; $7eb5: $92
	rst $38                                          ; $7eb6: $ff
	sbc l                                            ; $7eb7: $9d
	rst $38                                          ; $7eb8: $ff
	sub e                                            ; $7eb9: $93
	rst $38                                          ; $7eba: $ff
	and d                                            ; $7ebb: $a2
	rst $38                                          ; $7ebc: $ff
	inc [hl]                                         ; $7ebd: $34
	rst AddAOntoHL                                          ; $7ebe: $ef
	or l                                             ; $7ebf: $b5
	ld l, a                                          ; $7ec0: $6f
	db $fd                                           ; $7ec1: $fd
	dec hl                                           ; $7ec2: $2b
	cp $7b                                           ; $7ec3: $fe $7b
	cp $9e                                           ; $7ec5: $fe $9e
	sbc $7b                                          ; $7ec7: $de $7b
	cp $80                                           ; $7ec9: $fe $80
	ld e, [hl]                                       ; $7ecb: $5e
	xor e                                            ; $7ecc: $ab
	reti                                             ; $7ecd: $d9


	xor a                                            ; $7ece: $af
	call $bcb7                                       ; $7ecf: $cd $b7 $bc
	rst SubAFromHL                                          ; $7ed2: $d7
	daa                                              ; $7ed3: $27
	ld [hl+], a                                      ; $7ed4: $22
	inc hl                                           ; $7ed5: $23
	ld h, [hl]                                       ; $7ed6: $66
	ld c, e                                          ; $7ed7: $4b
	ld h, [hl]                                       ; $7ed8: $66
	db $ed                                           ; $7ed9: $ed
	ld b, [hl]                                       ; $7eda: $46
	push hl                                          ; $7edb: $e5
	ld c, [hl]                                       ; $7edc: $4e
	ld h, l                                          ; $7edd: $65
	adc $55                                          ; $7ede: $ce $55
	xor $55                                          ; $7ee0: $ee $55
	xor $44                                          ; $7ee2: $ee $44
	rst $38                                          ; $7ee4: $ff

jr_065_7ee5:
	ld b, h                                          ; $7ee5: $44
	rst $38                                          ; $7ee6: $ff
	inc h                                            ; $7ee7: $24
	rst $38                                          ; $7ee8: $ff
	ld [hl+], a                                      ; $7ee9: $22
	ld a, e                                          ; $7eea: $7b
	cp $80                                           ; $7eeb: $fe $80
	ld [de], a                                       ; $7eed: $12
	rst $38                                          ; $7eee: $ff
	sub c                                            ; $7eef: $91
	rst $38                                          ; $7ef0: $ff
	ret                                              ; $7ef1: $c9


	rst $38                                          ; $7ef2: $ff
	call $eeff                                       ; $7ef3: $cd $ff $ee
	cp e                                             ; $7ef6: $bb

jr_065_7ef7:
	ld [hl], a                                       ; $7ef7: $77
	db $dd                                           ; $7ef8: $dd
	rst $38                                          ; $7ef9: $ff
	xor $ee                                          ; $7efa: $ee $ee
	add b                                            ; $7efc: $80
	ret nz                                           ; $7efd: $c0

	add b                                            ; $7efe: $80
	ld b, b                                          ; $7eff: $40
	ret nz                                           ; $7f00: $c0

	ld h, b                                          ; $7f01: $60
	ret nz                                           ; $7f02: $c0

	jr nc, jr_065_7ee5                               ; $7f03: $30 $e0

	jr c, jr_065_7ef7                                ; $7f05: $38 $f0

	inc l                                            ; $7f07: $2c
	ld hl, sp+$26                                    ; $7f08: $f8 $26
	db $fc                                           ; $7f0a: $fc
	rla                                              ; $7f0b: $17
	adc a                                            ; $7f0c: $8f
	cp $17                                           ; $7f0d: $fe $17
	db $fd                                           ; $7f0f: $fd
	rrca                                             ; $7f10: $0f
	db $fc                                           ; $7f11: $fc
	adc [hl]                                         ; $7f12: $8e
	db $fc                                           ; $7f13: $fc
	xor [hl]                                         ; $7f14: $ae
	ld a, h                                          ; $7f15: $7c
	inc e                                            ; $7f16: $1c
	add sp, $58                                      ; $7f17: $e8 $58
	add sp, $78                                      ; $7f19: $e8 $78
	ret nc                                           ; $7f1b: $d0

	ld [hl], b                                       ; $7f1c: $70
	ld l, e                                          ; $7f1d: $6b
	cp $9c                                           ; $7f1e: $fe $9c
	ld d, b                                          ; $7f20: $50
	ldh a, [rSVBK]                                   ; $7f21: $f0 $70
	ld a, e                                          ; $7f23: $7b
	cp $7f                                           ; $7f24: $fe $7f
	ldh a, [$97]                                     ; $7f26: $f0 $97
	ld l, c                                          ; $7f28: $69
	ret z                                            ; $7f29: $c8

	ld h, e                                          ; $7f2a: $63
	ret nz                                           ; $7f2b: $c0

	ld h, e                                          ; $7f2c: $63
	ret nz                                           ; $7f2d: $c0

	xor e                                            ; $7f2e: $ab
	ldh [$d8], a                                     ; $7f2f: $e0 $d8
	ld d, l                                          ; $7f31: $55
	add c                                            ; $7f32: $81
	ld a, l                                          ; $7f33: $7d
	ld d, h                                          ; $7f34: $54
	ld a, a                                          ; $7f35: $7f
	ld l, [hl]                                       ; $7f36: $6e
	ld a, e                                          ; $7f37: $7b
	ld l, [hl]                                       ; $7f38: $6e
	ld a, e                                          ; $7f39: $7b
	rst $38                                          ; $7f3a: $ff
	ld d, c                                          ; $7f3b: $51
	rst SubAFromDE                                          ; $7f3c: $df
	sub c                                            ; $7f3d: $91
	rrca                                             ; $7f3e: $0f
	ldh a, [$f0]                                     ; $7f3f: $f0 $f0
	rst $38                                          ; $7f41: $ff
	rst $38                                          ; $7f42: $ff
	rrca                                             ; $7f43: $0f
	rst $38                                          ; $7f44: $ff
	nop                                              ; $7f45: $00
	rst $38                                          ; $7f46: $ff
	rra                                              ; $7f47: $1f
	di                                               ; $7f48: $f3
	ld [hl], e                                       ; $7f49: $73
	sbc $ff                                          ; $7f4a: $de $ff
	sub d                                            ; $7f4c: $92
	ld d, $0d                                        ; $7f4d: $16 $0d
	inc c                                            ; $7f4f: $0c
	rrca                                             ; $7f50: $0f
	cp l                                             ; $7f51: $bd
	rlca                                             ; $7f52: $07
	rrca                                             ; $7f53: $0f
	rra                                              ; $7f54: $1f
	sbc a                                            ; $7f55: $9f
	add b                                            ; $7f56: $80
	ld bc, $033f                                     ; $7f57: $01 $3f $03
	ccf                                              ; $7f5a: $3f
	rlca                                             ; $7f5b: $07
	ld a, l                                          ; $7f5c: $7d
	rrca                                             ; $7f5d: $0f
	ld a, l                                          ; $7f5e: $7d
	rla                                              ; $7f5f: $17
	db $fd                                           ; $7f60: $fd
	ld h, l                                          ; $7f61: $65
	ld sp, hl                                        ; $7f62: $f9
	call $0df9                                       ; $7f63: $cd $f9 $0d
	ld sp, hl                                        ; $7f66: $f9
	dec bc                                           ; $7f67: $0b
	xor e                                            ; $7f68: $ab
	db $fd                                           ; $7f69: $fd
	cp a                                             ; $7f6a: $bf
	push de                                          ; $7f6b: $d5
	ld e, l                                          ; $7f6c: $5d
	or $5d                                           ; $7f6d: $f6 $5d
	or $37                                           ; $7f6f: $f6 $37
	ld a, [$fab7]                                    ; $7f71: $fa $b7 $fa
	sub [hl]                                         ; $7f74: $96
	ei                                               ; $7f75: $fb
	add b                                            ; $7f76: $80
	ld c, d                                          ; $7f77: $4a
	rst $38                                          ; $7f78: $ff
	ld h, [hl]                                       ; $7f79: $66
	rst $38                                          ; $7f7a: $ff
	ld a, d                                          ; $7f7b: $7a
	rst SubAFromDE                                          ; $7f7c: $df
	rst FarCall                                          ; $7f7d: $f7
	rst SubAFromDE                                          ; $7f7e: $df
	ld [hl], d                                       ; $7f7f: $72
	rst SubAFromDE                                          ; $7f80: $df
	ldh a, [c]                                       ; $7f81: $f2
	cp a                                             ; $7f82: $bf
	ldh a, [c]                                       ; $7f83: $f2
	rra                                              ; $7f84: $1f
	ldh a, [c]                                       ; $7f85: $f2
	rra                                              ; $7f86: $1f
	push af                                          ; $7f87: $f5
	rst SubAFromDE                                          ; $7f88: $df
	push hl                                          ; $7f89: $e5
	cp a                                             ; $7f8a: $bf
	push hl                                          ; $7f8b: $e5
	ccf                                              ; $7f8c: $3f
	and $3f                                          ; $7f8d: $e6 $3f
	and $7f                                          ; $7f8f: $e6 $7f
	add $7f                                          ; $7f91: $c6 $7f
	call nz, $c4ff                                   ; $7f93: $c4 $ff $c4
	adc h                                            ; $7f96: $8c
	rst $38                                          ; $7f97: $ff
	call z, Call_065_58ff                            ; $7f98: $cc $ff $58
	rst AddAOntoHL                                          ; $7f9b: $ef
	ld a, c                                          ; $7f9c: $79
	rst GetHLinHL                                          ; $7f9d: $cf
	ld a, c                                          ; $7f9e: $79
	rst GetHLinHL                                          ; $7f9f: $cf
	xor d                                            ; $7fa0: $aa
	sbc $ba                                          ; $7fa1: $de $ba
	sbc $b4                                          ; $7fa3: $de $b4
	call c, $9c74                                    ; $7fa5: $dc $74 $9c
	ld a, b                                          ; $7fa8: $78
	sbc b                                            ; $7fa9: $98
	cpl                                              ; $7faa: $2f
	add b                                            ; $7fab: $80
	sbc c                                            ; $7fac: $99
	pop af                                           ; $7fad: $f1
	cp $fe                                           ; $7fae: $fe $fe
	rrca                                             ; $7fb0: $0f
	rst $38                                          ; $7fb1: $ff
	ld bc, $7e77                                     ; $7fb2: $01 $77 $7e
	sbc d                                            ; $7fb5: $9a
	cp $7f                                           ; $7fb6: $fe $7f
	jp nc, $1dd6                                     ; $7fb8: $d2 $d6 $1d

	inc bc                                           ; $7fbb: $03
	add b                                            ; $7fbc: $80
	ld b, a                                          ; $7fbd: $47
	add b                                            ; $7fbe: $80
	sbc c                                            ; $7fbf: $99
	ldh a, [c]                                       ; $7fc0: $f2
	ld e, a                                          ; $7fc1: $5f
	ld [hl], d                                       ; $7fc2: $72
	cp a                                             ; $7fc3: $bf
	ldh a, [c]                                       ; $7fc4: $f2
	sbc a                                            ; $7fc5: $9f
	ld a, e                                          ; $7fc6: $7b
	add b                                            ; $7fc7: $80
	sbc [hl]                                         ; $7fc8: $9e
	rra                                              ; $7fc9: $1f
	inc bc                                           ; $7fca: $03
	add b                                            ; $7fcb: $80
	dec sp                                           ; $7fcc: $3b
	add b                                            ; $7fcd: $80
	sub a                                            ; $7fce: $97
	rra                                              ; $7fcf: $1f
	ldh [$e3], a                                     ; $7fd0: $e0 $e3
	db $fc                                           ; $7fd2: $fc
	db $fc                                           ; $7fd3: $fc
	rra                                              ; $7fd4: $1f
	rst $38                                          ; $7fd5: $ff
	inc bc                                           ; $7fd6: $03
	ld a, e                                          ; $7fd7: $7b
	add b                                            ; $7fd8: $80
	sbc b                                            ; $7fd9: $98
	nop                                              ; $7fda: $00
	ei                                               ; $7fdb: $fb
	rra                                              ; $7fdc: $1f
	rst SubAFromBC                                          ; $7fdd: $e7
	ld a, [hl]                                       ; $7fde: $7e
	ccf                                              ; $7fdf: $3f
	jr jr_065_7fe5                                   ; $7fe0: $18 $03

	add b                                            ; $7fe2: $80
	inc bc                                           ; $7fe3: $03
	add b                                            ; $7fe4: $80

jr_065_7fe5:
	inc bc                                           ; $7fe5: $03
	add b                                            ; $7fe6: $80
	ld e, e                                          ; $7fe7: $5b
	add b                                            ; $7fe8: $80
	sub a                                            ; $7fe9: $97
	cp a                                             ; $7fea: $bf
	nop                                              ; $7feb: $00
	rlca                                             ; $7fec: $07
	ld hl, sp-$08                                    ; $7fed: $f8 $f8
	rst $38                                          ; $7fef: $ff
	rst $38                                          ; $7ff0: $ff
	rlca                                             ; $7ff1: $07
	ld [hl], a                                       ; $7ff2: $77
	add b                                            ; $7ff3: $80
	sbc c                                            ; $7ff4: $99
	rst $38                                          ; $7ff5: $ff
	ld a, $ff                                        ; $7ff6: $3e $ff
	pop bc                                           ; $7ff8: $c1
	ccf                                              ; $7ff9: $3f
	ld a, $03                                        ; $7ffa: $3e $03
	add b                                            ; $7ffc: $80
	rra                                              ; $7ffd: $1f
	add b                                            ; $7ffe: $80
	sbc [hl]                                         ; $7fff: $9e
