; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $027", ROMX[$4000], BANK[$27]

	ld e, h                                          ; $4000: $5c
	add b                                            ; $4001: $80
	sub a                                            ; $4002: $97
	ldh [c], a                                       ; $4003: $e2
	add h                                            ; $4004: $84
	dec c                                            ; $4005: $0d
	dec de                                           ; $4006: $1b

Call_027_4007:
	ld [hl], $fd                                     ; $4007: $36 $fd
	add l                                            ; $4009: $85
	ei                                               ; $400a: $fb
	jp c, $9aff                                      ; $400b: $da $ff $9a

	cp $7d                                           ; $400e: $fe $7d
	set 6, a                                         ; $4010: $cb $f7
	ld [$ffdd], sp                                   ; $4012: $08 $dd $ff
	add a                                            ; $4015: $87
	rst JumpTable                                          ; $4016: $c7
	cp a                                             ; $4017: $bf
	inc a                                            ; $4018: $3c
	rst $38                                          ; $4019: $ff
	rst $38                                          ; $401a: $ff
	nop                                              ; $401b: $00
	rrca                                             ; $401c: $0f
	ccf                                              ; $401d: $3f
	cpl                                              ; $401e: $2f
	rst $38                                          ; $401f: $ff
	rst $38                                          ; $4020: $ff
	ld b, [hl]                                       ; $4021: $46
	ld a, [$86ff]                                    ; $4022: $fa $ff $86
	add $f9                                          ; $4025: $c6 $f9
	pop af                                           ; $4027: $f1
	ld hl, $fffb                                     ; $4028: $21 $fb $ff
	rlca                                             ; $402b: $07
	jp $dde3                                         ; $402c: $c3 $e3 $dd


	dec a                                            ; $402f: $3d
	rst SubAFromDE                                          ; $4030: $df
	cp l                                             ; $4031: $bd
	rst SubAFromDE                                          ; $4032: $df
	cp [hl]                                          ; $4033: $be
	sbc l                                            ; $4034: $9d
	db $e4                                           ; $4035: $e4
	pop hl                                           ; $4036: $e1
	call c, $80e0                                    ; $4037: $dc $e0 $80
	ret nz                                           ; $403a: $c0

	ld [hl], e                                       ; $403b: $73
	call z, $969c                                    ; $403c: $cc $9c $96
	sub a                                            ; $403f: $97
	jp nc, $ffe0                                     ; $4040: $d2 $e0 $ff

	rst $38                                          ; $4043: $ff
	rst AddAOntoHL                                          ; $4044: $ef
	call c, Call_027_5f1e                            ; $4045: $dc $1e $5f
	rla                                              ; $4048: $17
	rrca                                             ; $4049: $0f
	nop                                              ; $404a: $00
	halt                                             ; $404b: $76
	cp d                                             ; $404c: $ba
	ld e, e                                          ; $404d: $5b
	ld [bc], a                                       ; $404e: $02
	ld [bc], a                                       ; $404f: $02
	add d                                            ; $4050: $82
	add d                                            ; $4051: $82
	ld d, l                                          ; $4052: $55
	ld h, e                                          ; $4053: $63
	and e                                            ; $4054: $a3
	pop bc                                           ; $4055: $c1
	ld b, b                                          ; $4056: $40
	ld b, b                                          ; $4057: $40
	add b                                            ; $4058: $80
	sbc l                                            ; $4059: $9d
	add b                                            ; $405a: $80
	nop                                              ; $405b: $00
	inc b                                            ; $405c: $04
	nop                                              ; $405d: $00
	sbc $44                                          ; $405e: $de $44
	ld e, a                                          ; $4060: $5f
	add b                                            ; $4061: $80
	sub a                                            ; $4062: $97
	ldh [c], a                                       ; $4063: $e2
	add h                                            ; $4064: $84
	dec c                                            ; $4065: $0d
	dec de                                           ; $4066: $1b
	ld [hl], $fd                                     ; $4067: $36 $fd
	add l                                            ; $4069: $85
	ei                                               ; $406a: $fb
	jp c, $9aff                                      ; $406b: $da $ff $9a

	cp $7d                                           ; $406e: $fe $7d
	set 6, a                                         ; $4070: $cb $f7
	ld [$ffdd], sp                                   ; $4072: $08 $dd $ff
	add b                                            ; $4075: $80
	rst JumpTable                                          ; $4076: $c7
	cp a                                             ; $4077: $bf
	inc a                                            ; $4078: $3c
	rst $38                                          ; $4079: $ff
	rst $38                                          ; $407a: $ff
	nop                                              ; $407b: $00
	nop                                              ; $407c: $00
	rrca                                             ; $407d: $0f
	cpl                                              ; $407e: $2f
	rst $38                                          ; $407f: $ff
	rst $38                                          ; $4080: $ff
	ld b, [hl]                                       ; $4081: $46
	ld a, [$c6ff]                                    ; $4082: $fa $ff $c6
	and [hl]                                         ; $4085: $a6
	ld sp, hl                                        ; $4086: $f9
	pop af                                           ; $4087: $f1
	ld hl, $fffb                                     ; $4088: $21 $fb $ff
	rlca                                             ; $408b: $07
	inc bc                                           ; $408c: $03
	jp $3c3d                                         ; $408d: $c3 $3d $3c


	dec a                                            ; $4090: $3d
	dec a                                            ; $4091: $3d
	cp l                                             ; $4092: $bd
	cp l                                             ; $4093: $bd
	cp [hl]                                          ; $4094: $be
	sbc e                                            ; $4095: $9b
	cp [hl]                                          ; $4096: $be
	db $e4                                           ; $4097: $e4
	pop hl                                           ; $4098: $e1
	pop hl                                           ; $4099: $e1
	db $dd                                           ; $409a: $dd
	ldh [$80], a                                     ; $409b: $e0 $80
	ret nz                                           ; $409d: $c0

	rst $38                                          ; $409e: $ff
	ld [hl], e                                       ; $409f: $73
	call z, $979c                                    ; $40a0: $cc $9c $97
	jp nc, $ffe0                                     ; $40a3: $d2 $e0 $ff

	ccf                                              ; $40a6: $3f
	rst $38                                          ; $40a7: $ff
	rst AddAOntoHL                                          ; $40a8: $ef
	call c, $175f                                    ; $40a9: $dc $5f $17
	rrca                                             ; $40ac: $0f
	nop                                              ; $40ad: $00
	sub $7a                                          ; $40ae: $d6 $7a
	cp e                                             ; $40b0: $bb
	ld b, d                                          ; $40b1: $42
	ld [bc], a                                       ; $40b2: $02
	add d                                            ; $40b3: $82
	add d                                            ; $40b4: $82
	ld d, l                                          ; $40b5: $55
	db $e3                                           ; $40b6: $e3
	ld h, e                                          ; $40b7: $63
	and c                                            ; $40b8: $a1
	ret nz                                           ; $40b9: $c0

	ld b, b                                          ; $40ba: $40
	add b                                            ; $40bb: $80
	sbc l                                            ; $40bc: $9d
	add b                                            ; $40bd: $80
	nop                                              ; $40be: $00
	inc b                                            ; $40bf: $04
	nop                                              ; $40c0: $00
	sbc $44                                          ; $40c1: $de $44
	ld e, c                                          ; $40c3: $59
	add b                                            ; $40c4: $80
	sub a                                            ; $40c5: $97
	ldh [c], a                                       ; $40c6: $e2
	add h                                            ; $40c7: $84
	dec c                                            ; $40c8: $0d
	dec de                                           ; $40c9: $1b
	ld [hl], $fd                                     ; $40ca: $36 $fd
	add l                                            ; $40cc: $85
	ei                                               ; $40cd: $fb
	jp c, $9aff                                      ; $40ce: $da $ff $9a

	cp $7d                                           ; $40d1: $fe $7d
	set 6, a                                         ; $40d3: $cb $f7
	ld [$ffdd], sp                                   ; $40d5: $08 $dd $ff
	sbc d                                            ; $40d8: $9a
	rst JumpTable                                          ; $40d9: $c7
	cp a                                             ; $40da: $bf
	inc a                                            ; $40db: $3c
	rst $38                                          ; $40dc: $ff
	rst $38                                          ; $40dd: $ff
	cp $8f                                           ; $40de: $fe $8f
	cpl                                              ; $40e0: $2f
	rst $38                                          ; $40e1: $ff
	rst $38                                          ; $40e2: $ff
	ld b, [hl]                                       ; $40e3: $46
	ld a, [$c6ff]                                    ; $40e4: $fa $ff $c6
	and $f9                                          ; $40e7: $e6 $f9
	pop af                                           ; $40e9: $f1
	ld hl, $fffb                                     ; $40ea: $21 $fb $ff
	rlca                                             ; $40ed: $07
	inc bc                                           ; $40ee: $03
	inc bc                                           ; $40ef: $03
	db $dd                                           ; $40f0: $dd
	dec a                                            ; $40f1: $3d
	rst SubAFromDE                                          ; $40f2: $df
	cp l                                             ; $40f3: $bd
	rst SubAFromDE                                          ; $40f4: $df
	cp [hl]                                          ; $40f5: $be
	sbc [hl]                                         ; $40f6: $9e
	db $e4                                           ; $40f7: $e4
	sbc $e0                                          ; $40f8: $de $e0
	sbc e                                            ; $40fa: $9b
	pop hl                                           ; $40fb: $e1
	ldh [$e0], a                                     ; $40fc: $e0 $e0
	ret nz                                           ; $40fe: $c0

	call c, $9dff                                    ; $40ff: $dc $ff $9d
	ccf                                              ; $4102: $3f
	ldh [rPCM34], a                                  ; $4103: $e0 $77
	push de                                          ; $4105: $d5
	adc d                                            ; $4106: $8a
	nop                                              ; $4107: $00
	rst $38                                          ; $4108: $ff
	rst $38                                          ; $4109: $ff
	rrca                                             ; $410a: $0f
	nop                                              ; $410b: $00
	or $fa                                           ; $410c: $f6 $fa
	ei                                               ; $410e: $fb
	ldh [c], a                                       ; $410f: $e2
	jp nz, $82c2                                     ; $4110: $c2 $c2 $82

	ld d, l                                          ; $4113: $55
	inc bc                                           ; $4114: $03
	inc bc                                           ; $4115: $03
	ld bc, $8000                                     ; $4116: $01 $00 $80
	ret nz                                           ; $4119: $c0

	add b                                            ; $411a: $80
	nop                                              ; $411b: $00
	inc b                                            ; $411c: $04
	nop                                              ; $411d: $00
	sbc $44                                          ; $411e: $de $44
	ld e, c                                          ; $4120: $59
	add b                                            ; $4121: $80
	sub a                                            ; $4122: $97
	ldh [c], a                                       ; $4123: $e2
	add h                                            ; $4124: $84
	dec c                                            ; $4125: $0d
	dec de                                           ; $4126: $1b
	ld [hl], $fd                                     ; $4127: $36 $fd
	add l                                            ; $4129: $85
	ei                                               ; $412a: $fb
	jp c, $9aff                                      ; $412b: $da $ff $9a

	cp $7d                                           ; $412e: $fe $7d
	set 6, a                                         ; $4130: $cb $f7
	ld [$ffdd], sp                                   ; $4132: $08 $dd $ff
	sbc d                                            ; $4135: $9a
	rst JumpTable                                          ; $4136: $c7
	cp a                                             ; $4137: $bf
	inc a                                            ; $4138: $3c
	rst $38                                          ; $4139: $ff
	rst $38                                          ; $413a: $ff
	cp $8f                                           ; $413b: $fe $8f
	cpl                                              ; $413d: $2f
	rst $38                                          ; $413e: $ff
	rst $38                                          ; $413f: $ff
	ld b, [hl]                                       ; $4140: $46
	ld a, [$c6ff]                                    ; $4141: $fa $ff $c6
	and $f9                                          ; $4144: $e6 $f9
	pop af                                           ; $4146: $f1
	ld hl, $fffb                                     ; $4147: $21 $fb $ff
	rlca                                             ; $414a: $07
	inc bc                                           ; $414b: $03
	inc bc                                           ; $414c: $03
	db $dd                                           ; $414d: $dd
	dec a                                            ; $414e: $3d
	rst SubAFromDE                                          ; $414f: $df
	cp l                                             ; $4150: $bd
	rst SubAFromDE                                          ; $4151: $df
	cp [hl]                                          ; $4152: $be
	sbc [hl]                                         ; $4153: $9e
	db $e4                                           ; $4154: $e4
	sbc $e0                                          ; $4155: $de $e0
	sbc e                                            ; $4157: $9b
	pop hl                                           ; $4158: $e1
	ldh [$e0], a                                     ; $4159: $e0 $e0
	ret nz                                           ; $415b: $c0

	call c, $9dff                                    ; $415c: $dc $ff $9d
	ccf                                              ; $415f: $3f
	rst SubAFromDE                                          ; $4160: $df
	ld [hl], a                                       ; $4161: $77
	push de                                          ; $4162: $d5
	adc a                                            ; $4163: $8f
	nop                                              ; $4164: $00
	ret nz                                           ; $4165: $c0

	rst $38                                          ; $4166: $ff
	ccf                                              ; $4167: $3f
	nop                                              ; $4168: $00
	or $fa                                           ; $4169: $f6 $fa
	ei                                               ; $416b: $fb
	ldh [c], a                                       ; $416c: $e2
	jp nz, $82c2                                     ; $416d: $c2 $c2 $82

	ld d, l                                          ; $4170: $55
	inc bc                                           ; $4171: $03
	inc bc                                           ; $4172: $03
	ld bc, $ef7b                                     ; $4173: $01 $7b $ef
	sbc l                                            ; $4176: $9d
	add b                                            ; $4177: $80
	nop                                              ; $4178: $00
	inc b                                            ; $4179: $04
	nop                                              ; $417a: $00
	sbc $44                                          ; $417b: $de $44
	ld e, [hl]                                       ; $417d: $5e
	add b                                            ; $417e: $80
	sub a                                            ; $417f: $97
	ldh [c], a                                       ; $4180: $e2
	add h                                            ; $4181: $84
	dec c                                            ; $4182: $0d
	dec de                                           ; $4183: $1b
	ld [hl], $fd                                     ; $4184: $36 $fd
	add l                                            ; $4186: $85
	ei                                               ; $4187: $fb
	jp c, $80ff                                      ; $4188: $da $ff $80

	cp $65                                           ; $418b: $fe $65
	db $db                                           ; $418d: $db
	rst FarCall                                          ; $418e: $f7
	ld [$f0ff], sp                                   ; $418f: $08 $ff $f0
	rst SubAFromDE                                          ; $4192: $df
	cp h                                             ; $4193: $bc
	rst SubAFromDE                                          ; $4194: $df
	cp a                                             ; $4195: $bf
	inc l                                            ; $4196: $2c
	rst $38                                          ; $4197: $ff
	rst $38                                          ; $4198: $ff
	rrca                                             ; $4199: $0f
	ccf                                              ; $419a: $3f
	ld a, a                                          ; $419b: $7f
	cpl                                              ; $419c: $2f
	rst $38                                          ; $419d: $ff
	rst $38                                          ; $419e: $ff
	ld b, [hl]                                       ; $419f: $46
	ld a, [$c6ff]                                    ; $41a0: $fa $ff $c6
	and $f9                                          ; $41a3: $e6 $f9
	pop af                                           ; $41a5: $f1
	ld hl, $fffb                                     ; $41a6: $21 $fb $ff
	rlca                                             ; $41a9: $07
	sbc l                                            ; $41aa: $9d
	jp $dde3                                         ; $41ab: $c3 $e3 $dd


	dec a                                            ; $41ae: $3d
	rst SubAFromDE                                          ; $41af: $df
	cp l                                             ; $41b0: $bd
	rst SubAFromDE                                          ; $41b1: $df
	cp [hl]                                          ; $41b2: $be
	sbc l                                            ; $41b3: $9d
	db $e4                                           ; $41b4: $e4
	pop hl                                           ; $41b5: $e1
	call c, $80e0                                    ; $41b6: $dc $e0 $80
	ret nz                                           ; $41b9: $c0

	ld [hl], e                                       ; $41ba: $73
	call z, $969c                                    ; $41bb: $cc $9c $96
	sub a                                            ; $41be: $97
	jp nc, $ffe0                                     ; $41bf: $d2 $e0 $ff

	rst FarCall                                          ; $41c2: $f7
	rst AddAOntoHL                                          ; $41c3: $ef
	call c, Call_027_5f1e                            ; $41c4: $dc $1e $5f
	rla                                              ; $41c7: $17
	rrca                                             ; $41c8: $0f
	nop                                              ; $41c9: $00
	halt                                             ; $41ca: $76
	cp d                                             ; $41cb: $ba
	ld e, e                                          ; $41cc: $5b
	ld [bc], a                                       ; $41cd: $02
	ld [bc], a                                       ; $41ce: $02
	add d                                            ; $41cf: $82
	add d                                            ; $41d0: $82
	ld d, l                                          ; $41d1: $55
	ld h, e                                          ; $41d2: $63
	and e                                            ; $41d3: $a3
	pop bc                                           ; $41d4: $c1
	ld b, b                                          ; $41d5: $40
	ld b, b                                          ; $41d6: $40
	add b                                            ; $41d7: $80
	sbc l                                            ; $41d8: $9d
	add b                                            ; $41d9: $80
	nop                                              ; $41da: $00
	inc b                                            ; $41db: $04
	nop                                              ; $41dc: $00
	sbc $44                                          ; $41dd: $de $44
	ld e, a                                          ; $41df: $5f
	add b                                            ; $41e0: $80
	sub a                                            ; $41e1: $97
	ldh [c], a                                       ; $41e2: $e2
	add h                                            ; $41e3: $84
	dec c                                            ; $41e4: $0d
	dec de                                           ; $41e5: $1b
	ld [hl], $fd                                     ; $41e6: $36 $fd
	add l                                            ; $41e8: $85
	ei                                               ; $41e9: $fb
	jp c, $80ff                                      ; $41ea: $da $ff $80

	cp $65                                           ; $41ed: $fe $65
	db $db                                           ; $41ef: $db
	rst FarCall                                          ; $41f0: $f7
	ld [rIE], sp                                   ; $41f1: $08 $ff $ff
	ldh a, [$df]                                     ; $41f4: $f0 $df
	rst SubAFromDE                                          ; $41f6: $df
	cp a                                             ; $41f7: $bf
	inc l                                            ; $41f8: $2c
	rst $38                                          ; $41f9: $ff
	rst $38                                          ; $41fa: $ff
	nop                                              ; $41fb: $00
	rrca                                             ; $41fc: $0f
	ccf                                              ; $41fd: $3f
	cpl                                              ; $41fe: $2f
	rst $38                                          ; $41ff: $ff
	rst $38                                          ; $4200: $ff
	ld b, [hl]                                       ; $4201: $46
	ld a, [$e6ff]                                    ; $4202: $fa $ff $e6
	add $f9                                          ; $4205: $c6 $f9
	pop af                                           ; $4207: $f1
	ld hl, $fffb                                     ; $4208: $21 $fb $ff
	rlca                                             ; $420b: $07
	sbc l                                            ; $420c: $9d
	inc bc                                           ; $420d: $03
	jp $3ddd                                         ; $420e: $c3 $dd $3d


	rst SubAFromDE                                          ; $4211: $df
	cp l                                             ; $4212: $bd
	rst SubAFromDE                                          ; $4213: $df
	cp [hl]                                          ; $4214: $be
	sbc h                                            ; $4215: $9c
	db $e4                                           ; $4216: $e4
	ldh [$e1], a                                     ; $4217: $e0 $e1
	db $dd                                           ; $4219: $dd
	ldh [$80], a                                     ; $421a: $e0 $80
	ret nz                                           ; $421c: $c0

	cp h                                             ; $421d: $bc
	ld [hl], e                                       ; $421e: $73
	call z, $979c                                    ; $421f: $cc $9c $97
	jp nc, $ffe0                                     ; $4222: $d2 $e0 $ff

	ld a, a                                          ; $4225: $7f
	rst FarCall                                          ; $4226: $f7
	rst AddAOntoHL                                          ; $4227: $ef
	call c, $175f                                    ; $4228: $dc $5f $17
	rrca                                             ; $422b: $0f
	nop                                              ; $422c: $00
	or $7a                                           ; $422d: $f6 $7a
	cp e                                             ; $422f: $bb
	ld b, d                                          ; $4230: $42
	ld [bc], a                                       ; $4231: $02
	add d                                            ; $4232: $82
	add d                                            ; $4233: $82
	ld d, l                                          ; $4234: $55
	db $e3                                           ; $4235: $e3
	ld h, e                                          ; $4236: $63
	and c                                            ; $4237: $a1
	ret nz                                           ; $4238: $c0

	ld b, b                                          ; $4239: $40
	add b                                            ; $423a: $80
	sbc l                                            ; $423b: $9d
	add b                                            ; $423c: $80
	nop                                              ; $423d: $00
	inc b                                            ; $423e: $04
	nop                                              ; $423f: $00
	sbc $44                                          ; $4240: $de $44
	ld e, b                                          ; $4242: $58
	add b                                            ; $4243: $80
	sub a                                            ; $4244: $97
	ldh [c], a                                       ; $4245: $e2
	add h                                            ; $4246: $84
	dec c                                            ; $4247: $0d
	dec de                                           ; $4248: $1b
	ld [hl], $fd                                     ; $4249: $36 $fd
	add l                                            ; $424b: $85
	ei                                               ; $424c: $fb
	jp c, $9aff                                      ; $424d: $da $ff $9a

	cp $65                                           ; $4250: $fe $65
	db $db                                           ; $4252: $db
	rst FarCall                                          ; $4253: $f7
	ld [$ffdd], sp                                   ; $4254: $08 $dd $ff
	sbc d                                            ; $4257: $9a
	rst SubAFromDE                                          ; $4258: $df
	cp a                                             ; $4259: $bf
	inc l                                            ; $425a: $2c
	rst $38                                          ; $425b: $ff
	rst $38                                          ; $425c: $ff
	cp $8f                                           ; $425d: $fe $8f
	cpl                                              ; $425f: $2f
	rst $38                                          ; $4260: $ff
	rst $38                                          ; $4261: $ff
	ld b, [hl]                                       ; $4262: $46
	ld a, [$e6ff]                                    ; $4263: $fa $ff $e6
	add $f9                                          ; $4266: $c6 $f9
	pop af                                           ; $4268: $f1
	ld hl, $fffb                                     ; $4269: $21 $fb $ff
	rlca                                             ; $426c: $07
	inc bc                                           ; $426d: $03
	inc bc                                           ; $426e: $03
	db $dd                                           ; $426f: $dd
	dec a                                            ; $4270: $3d
	rst SubAFromDE                                          ; $4271: $df
	cp l                                             ; $4272: $bd
	rst SubAFromDE                                          ; $4273: $df
	cp [hl]                                          ; $4274: $be
	sbc [hl]                                         ; $4275: $9e
	db $e4                                           ; $4276: $e4
	db $dd                                           ; $4277: $dd
	ldh [$9c], a                                     ; $4278: $e0 $9c
	pop hl                                           ; $427a: $e1
	ldh [$c0], a                                     ; $427b: $e0 $c0
	call c, $9dff                                    ; $427d: $dc $ff $9d
	or $e0                                           ; $4280: $f6 $e0
	ld [hl], a                                       ; $4282: $77
	push de                                          ; $4283: $d5
	adc d                                            ; $4284: $8a
	rra                                              ; $4285: $1f
	ld a, a                                          ; $4286: $7f
	rst $38                                          ; $4287: $ff
	rrca                                             ; $4288: $0f
	nop                                              ; $4289: $00
	or $fa                                           ; $428a: $f6 $fa
	ei                                               ; $428c: $fb
	ldh [c], a                                       ; $428d: $e2
	ldh [c], a                                       ; $428e: $e2
	jp nz, Jump_027_5582                             ; $428f: $c2 $82 $55

	inc bc                                           ; $4292: $03
	inc bc                                           ; $4293: $03
	ld bc, $e000                                     ; $4294: $01 $00 $e0
	ret nz                                           ; $4297: $c0

	add b                                            ; $4298: $80
	nop                                              ; $4299: $00
	inc b                                            ; $429a: $04
	nop                                              ; $429b: $00
	sbc $44                                          ; $429c: $de $44
	ld d, [hl]                                       ; $429e: $56
	add b                                            ; $429f: $80
	sub a                                            ; $42a0: $97
	ldh [c], a                                       ; $42a1: $e2
	add h                                            ; $42a2: $84
	dec c                                            ; $42a3: $0d
	dec de                                           ; $42a4: $1b
	ld [hl], $fd                                     ; $42a5: $36 $fd
	add l                                            ; $42a7: $85
	ei                                               ; $42a8: $fb
	jp c, $9aff                                      ; $42a9: $da $ff $9a

	cp $65                                           ; $42ac: $fe $65
	db $db                                           ; $42ae: $db
	rst FarCall                                          ; $42af: $f7
	ld [$ffdd], sp                                   ; $42b0: $08 $dd $ff
	sbc d                                            ; $42b3: $9a
	rst SubAFromDE                                          ; $42b4: $df
	cp a                                             ; $42b5: $bf
	inc l                                            ; $42b6: $2c
	rst $38                                          ; $42b7: $ff
	rst $38                                          ; $42b8: $ff
	cp $8f                                           ; $42b9: $fe $8f
	cpl                                              ; $42bb: $2f
	rst $38                                          ; $42bc: $ff
	rst $38                                          ; $42bd: $ff
	ld b, [hl]                                       ; $42be: $46
	ld a, [$e6ff]                                    ; $42bf: $fa $ff $e6
	add $f9                                          ; $42c2: $c6 $f9
	pop af                                           ; $42c4: $f1
	ld hl, $fffb                                     ; $42c5: $21 $fb $ff
	rlca                                             ; $42c8: $07
	inc bc                                           ; $42c9: $03
	inc bc                                           ; $42ca: $03
	db $dd                                           ; $42cb: $dd
	dec a                                            ; $42cc: $3d
	rst SubAFromDE                                          ; $42cd: $df
	cp l                                             ; $42ce: $bd
	rst SubAFromDE                                          ; $42cf: $df
	cp [hl]                                          ; $42d0: $be
	sbc [hl]                                         ; $42d1: $9e
	db $e4                                           ; $42d2: $e4
	db $db                                           ; $42d3: $db
	ldh [$9e], a                                     ; $42d4: $e0 $9e
	ret nz                                           ; $42d6: $c0

	db $dd                                           ; $42d7: $dd
	rst $38                                          ; $42d8: $ff
	sbc l                                            ; $42d9: $9d
	rst AddAOntoHL                                          ; $42da: $ef
	ld a, a                                          ; $42db: $7f
	ld [hl], e                                       ; $42dc: $73
	push de                                          ; $42dd: $d5
	adc d                                            ; $42de: $8a
	nop                                              ; $42df: $00
	rra                                              ; $42e0: $1f
	rst $38                                          ; $42e1: $ff
	pop hl                                           ; $42e2: $e1
	nop                                              ; $42e3: $00
	or $fa                                           ; $42e4: $f6 $fa
	ei                                               ; $42e6: $fb
	ldh [c], a                                       ; $42e7: $e2
	ld h, d                                          ; $42e8: $62
	jp nz, Jump_027_5582                             ; $42e9: $c2 $82 $55

	inc bc                                           ; $42ec: $03
	inc bc                                           ; $42ed: $03
	ld bc, $8000                                     ; $42ee: $01 $00 $80
	ldh [$80], a                                     ; $42f1: $e0 $80
	nop                                              ; $42f3: $00
	inc b                                            ; $42f4: $04
	nop                                              ; $42f5: $00
	sbc $44                                          ; $42f6: $de $44
	ld b, l                                          ; $42f8: $45
	nop                                              ; $42f9: $00
	add b                                            ; $42fa: $80
	inc a                                            ; $42fb: $3c
	rst SubAFromBC                                          ; $42fc: $e7
	dec a                                            ; $42fd: $3d
	rst SubAFromBC                                          ; $42fe: $e7
	ld a, c                                          ; $42ff: $79
	rst GetHLinHL                                          ; $4300: $cf
	ld a, [$fb8f]                                    ; $4301: $fa $8f $fb
	adc a                                            ; $4304: $8f
	rst $38                                          ; $4305: $ff
	inc c                                            ; $4306: $0c
	rst FarCall                                          ; $4307: $f7
	dec c                                            ; $4308: $0d
	rst FarCall                                          ; $4309: $f7
	rst $38                                          ; $430a: $ff
	xor $bb                                          ; $430b: $ee $bb
	xor [hl]                                         ; $430d: $ae
	ei                                               ; $430e: $fb
	sub $7b                                          ; $430f: $d6 $7b
	ld e, [hl]                                       ; $4311: $5e
	ei                                               ; $4312: $fb
	ld a, [$feff]                                    ; $4313: $fa $ff $fe
	ld b, a                                          ; $4316: $47
	db $e3                                           ; $4317: $e3
	jp $80f2                                         ; $4318: $c3 $f2 $80


	db $e3                                           ; $431b: $e3
	sub [hl]                                         ; $431c: $96
	rst $38                                          ; $431d: $ff
	push af                                          ; $431e: $f5
	rst $38                                          ; $431f: $ff
	ei                                               ; $4320: $fb
	rra                                              ; $4321: $1f
	scf                                              ; $4322: $37
	inc bc                                           ; $4323: $03
	sub l                                            ; $4324: $95
	inc bc                                           ; $4325: $03
	ld d, h                                          ; $4326: $54
	ld [bc], a                                       ; $4327: $02
	or h                                             ; $4328: $b4
	ld bc, $0057                                     ; $4329: $01 $57 $00
	ld a, [hl-]                                      ; $432c: $3a
	di                                               ; $432d: $f3
	sbc [hl]                                         ; $432e: $9e
	rst SubAFromDE                                          ; $432f: $df
	rrca                                             ; $4330: $0f
	cpl                                              ; $4331: $2f
	inc b                                            ; $4332: $04
	xor [hl]                                         ; $4333: $ae
	db $ec                                           ; $4334: $ec
	and $ac                                          ; $4335: $e6 $ac
	and $5c                                          ; $4337: $e6 $5c
	add $9d                                          ; $4339: $c6 $9d
	db $ec                                           ; $433b: $ec
	ld c, $04                                        ; $433c: $0e $04
	nop                                              ; $433e: $00
	rst SubAFromDE                                          ; $433f: $df
	ld b, h                                          ; $4340: $44
	ld b, l                                          ; $4341: $45
	nop                                              ; $4342: $00
	add b                                            ; $4343: $80
	inc a                                            ; $4344: $3c
	rst SubAFromBC                                          ; $4345: $e7
	dec a                                            ; $4346: $3d
	rst SubAFromBC                                          ; $4347: $e7
	ld a, c                                          ; $4348: $79
	rst GetHLinHL                                          ; $4349: $cf
	ld a, [$fb8f]                                    ; $434a: $fa $8f $fb
	adc a                                            ; $434d: $8f
	rst $38                                          ; $434e: $ff
	inc c                                            ; $434f: $0c
	rst FarCall                                          ; $4350: $f7
	inc c                                            ; $4351: $0c
	rst FarCall                                          ; $4352: $f7
	db $fd                                           ; $4353: $fd
	xor $bb                                          ; $4354: $ee $bb
	xor [hl]                                         ; $4356: $ae
	ei                                               ; $4357: $fb
	sub $7b                                          ; $4358: $d6 $7b
	ld e, [hl]                                       ; $435a: $5e
	ei                                               ; $435b: $fb
	ld a, [$feff]                                    ; $435c: $fa $ff $fe
	ld b, a                                          ; $435f: $47
	db $e3                                           ; $4360: $e3
	inc bc                                           ; $4361: $03
	ldh a, [c]                                       ; $4362: $f2
	add b                                            ; $4363: $80
	jp $ff97                                         ; $4364: $c3 $97 $ff


	or $ff                                           ; $4367: $f6 $ff
	ld sp, hl                                        ; $4369: $f9
	rra                                              ; $436a: $1f
	scf                                              ; $436b: $37
	inc bc                                           ; $436c: $03
	sub a                                            ; $436d: $97
	inc bc                                           ; $436e: $03
	ld d, h                                          ; $436f: $54
	ld [bc], a                                       ; $4370: $02
	or h                                             ; $4371: $b4
	ld bc, $0057                                     ; $4372: $01 $57 $00
	ld a, [$3ee3]                                    ; $4375: $fa $e3 $3e
	rst FarCall                                          ; $4378: $f7
	sbc a                                            ; $4379: $9f
	rst SubAFromDE                                          ; $437a: $df
	inc b                                            ; $437b: $04
	ld l, $0c                                        ; $437c: $2e $0c
	and [hl]                                         ; $437e: $a6
	xor h                                            ; $437f: $ac
	and $5c                                          ; $4380: $e6 $5c
	add $9d                                          ; $4382: $c6 $9d
	db $ec                                           ; $4384: $ec
	ld c, $04                                        ; $4385: $0e $04
	nop                                              ; $4387: $00
	rst SubAFromDE                                          ; $4388: $df
	ld b, h                                          ; $4389: $44
	ld b, l                                          ; $438a: $45
	nop                                              ; $438b: $00
	add b                                            ; $438c: $80
	inc a                                            ; $438d: $3c
	rst SubAFromBC                                          ; $438e: $e7
	dec a                                            ; $438f: $3d
	rst SubAFromBC                                          ; $4390: $e7
	ld a, c                                          ; $4391: $79
	rst GetHLinHL                                          ; $4392: $cf
	ld a, [$fb8f]                                    ; $4393: $fa $8f $fb
	adc a                                            ; $4396: $8f
	rst $38                                          ; $4397: $ff
	inc c                                            ; $4398: $0c
	rst FarCall                                          ; $4399: $f7
	inc c                                            ; $439a: $0c
	rst FarCall                                          ; $439b: $f7
	db $fc                                           ; $439c: $fc
	xor $bb                                          ; $439d: $ee $bb
	xor [hl]                                         ; $439f: $ae
	ei                                               ; $43a0: $fb
	sub $7b                                          ; $43a1: $d6 $7b
	ld e, [hl]                                       ; $43a3: $5e
	ei                                               ; $43a4: $fb
	ld a, [$feff]                                    ; $43a5: $fa $ff $fe
	ld b, a                                          ; $43a8: $47
	db $e3                                           ; $43a9: $e3
	inc bc                                           ; $43aa: $03
	ldh a, [c]                                       ; $43ab: $f2
	add b                                            ; $43ac: $80
	inc bc                                           ; $43ad: $03
	sub a                                            ; $43ae: $97
	db $fc                                           ; $43af: $fc
	rst FarCall                                          ; $43b0: $f7
	db $fc                                           ; $43b1: $fc
	rst $38                                          ; $43b2: $ff
	jr jr_027_43ec                                   ; $43b3: $18 $37

	nop                                              ; $43b5: $00
	sub a                                            ; $43b6: $97
	rlca                                             ; $43b7: $07
	ld d, a                                          ; $43b8: $57
	inc bc                                           ; $43b9: $03
	or h                                             ; $43ba: $b4
	ld bc, $0057                                     ; $43bb: $01 $57 $00
	ld a, [$fe03]                                    ; $43be: $fa $03 $fe
	rlca                                             ; $43c1: $07
	rst $38                                          ; $43c2: $ff
	rlca                                             ; $43c3: $07
	db $fc                                           ; $43c4: $fc
	ld b, $fc                                        ; $43c5: $06 $fc
	cp $ec                                           ; $43c7: $fe $ec
	or $5c                                           ; $43c9: $f6 $5c
	add $9d                                          ; $43cb: $c6 $9d
	db $ec                                           ; $43cd: $ec
	ld c, $04                                        ; $43ce: $0e $04
	nop                                              ; $43d0: $00
	rst SubAFromDE                                          ; $43d1: $df
	ld b, h                                          ; $43d2: $44
	ld b, h                                          ; $43d3: $44
	nop                                              ; $43d4: $00
	add b                                            ; $43d5: $80
	inc a                                            ; $43d6: $3c
	rst SubAFromBC                                          ; $43d7: $e7
	dec a                                            ; $43d8: $3d
	rst SubAFromBC                                          ; $43d9: $e7
	ld a, c                                          ; $43da: $79
	rst GetHLinHL                                          ; $43db: $cf
	ld a, [$fb8f]                                    ; $43dc: $fa $8f $fb
	adc a                                            ; $43df: $8f
	rst $38                                          ; $43e0: $ff
	inc c                                            ; $43e1: $0c
	rst FarCall                                          ; $43e2: $f7
	inc c                                            ; $43e3: $0c
	rst FarCall                                          ; $43e4: $f7
	db $fc                                           ; $43e5: $fc
	xor $bb                                          ; $43e6: $ee $bb
	xor [hl]                                         ; $43e8: $ae
	ei                                               ; $43e9: $fb
	sub $7b                                          ; $43ea: $d6 $7b

jr_027_43ec:
	ld e, [hl]                                       ; $43ec: $5e
	ei                                               ; $43ed: $fb
	ld a, [$feff]                                    ; $43ee: $fa $ff $fe
	ld b, a                                          ; $43f1: $47
	db $e3                                           ; $43f2: $e3
	inc bc                                           ; $43f3: $03
	ldh a, [c]                                       ; $43f4: $f2
	sub a                                            ; $43f5: $97
	inc bc                                           ; $43f6: $03
	sub a                                            ; $43f7: $97
	db $fc                                           ; $43f8: $fc
	rst FarCall                                          ; $43f9: $f7
	db $fc                                           ; $43fa: $fc
	rst $38                                          ; $43fb: $ff
	jr jr_027_4435                                   ; $43fc: $18 $37

	cp a                                             ; $43fe: $bf
	sub a                                            ; $43ff: $97
	ld d, a                                          ; $4400: $57
	adc d                                            ; $4401: $8a
	rlca                                             ; $4402: $07
	or a                                             ; $4403: $b7
	inc bc                                           ; $4404: $03
	ld d, a                                          ; $4405: $57
	nop                                              ; $4406: $00
	ld a, [$fe03]                                    ; $4407: $fa $03 $fe
	rlca                                             ; $440a: $07
	rst $38                                          ; $440b: $ff
	rlca                                             ; $440c: $07
	db $fc                                           ; $440d: $fc
	ld b, $fc                                        ; $440e: $06 $fc
	ld c, $f4                                        ; $4410: $0e $f4
	cp $fc                                           ; $4412: $fe $fc
	and $ec                                          ; $4414: $e6 $ec
	ld c, $04                                        ; $4416: $0e $04
	nop                                              ; $4418: $00
	rst SubAFromDE                                          ; $4419: $df
	ld b, h                                          ; $441a: $44
	ld b, h                                          ; $441b: $44
	add b                                            ; $441c: $80
	add b                                            ; $441d: $80
	inc a                                            ; $441e: $3c
	dec a                                            ; $441f: $3d
	ld a, c                                          ; $4420: $79
	ld a, [$fffb]                                    ; $4421: $fa $fb $ff
	rst FarCall                                          ; $4424: $f7
	rst FarCall                                          ; $4425: $f7
	rst SubAFromBC                                          ; $4426: $e7
	rst SubAFromBC                                          ; $4427: $e7
	rst GetHLinHL                                          ; $4428: $cf
	adc a                                            ; $4429: $8f
	adc a                                            ; $442a: $8f
	inc c                                            ; $442b: $0c
	dec c                                            ; $442c: $0d
	rst $38                                          ; $442d: $ff
	xor [hl]                                         ; $442e: $ae
	xor [hl]                                         ; $442f: $ae
	sub $5e                                          ; $4430: $d6 $5e
	ld a, [$e3fe]                                    ; $4432: $fa $fe $e3

jr_027_4435:
	ldh a, [c]                                       ; $4435: $f2
	ei                                               ; $4436: $fb
	ei                                               ; $4437: $fb
	ld a, e                                          ; $4438: $7b
	ei                                               ; $4439: $fb
	rst $38                                          ; $443a: $ff
	ld b, a                                          ; $443b: $47
	db $e3                                           ; $443c: $e3
	sub c                                            ; $443d: $91
	di                                               ; $443e: $f3
	sub [hl]                                         ; $443f: $96
	push af                                          ; $4440: $f5
	ei                                               ; $4441: $fb
	scf                                              ; $4442: $37
	sub l                                            ; $4443: $95
	ld d, h                                          ; $4444: $54
	or h                                             ; $4445: $b4
	ld d, a                                          ; $4446: $57
	rst $38                                          ; $4447: $ff
	rst $38                                          ; $4448: $ff
	rra                                              ; $4449: $1f
	inc bc                                           ; $444a: $03
	inc bc                                           ; $444b: $03
	cp a                                             ; $444c: $bf
	ld bc, $901a                                     ; $444d: $01 $1a $90
	adc [hl]                                         ; $4450: $8e
	rrca                                             ; $4451: $0f
	inc b                                            ; $4452: $04
	db $ec                                           ; $4453: $ec
	xor h                                            ; $4454: $ac
	ld e, h                                          ; $4455: $5c
	db $ec                                           ; $4456: $ec
	sbc e                                            ; $4457: $9b
	rst GetHLinHL                                          ; $4458: $cf
	cpl                                              ; $4459: $2f
	xor [hl]                                         ; $445a: $ae
	and $e6                                          ; $445b: $e6 $e6
	add $0e                                          ; $445d: $c6 $0e
	inc b                                            ; $445f: $04
	nop                                              ; $4460: $00
	rst SubAFromDE                                          ; $4461: $df
	ld b, h                                          ; $4462: $44
	ld b, h                                          ; $4463: $44

Call_027_4464:
	add b                                            ; $4464: $80
	add b                                            ; $4465: $80
	inc a                                            ; $4466: $3c
	dec a                                            ; $4467: $3d
	ld a, c                                          ; $4468: $79
	ld a, [$fffb]                                    ; $4469: $fa $fb $ff
	rst FarCall                                          ; $446c: $f7

Call_027_446d:
	rst FarCall                                          ; $446d: $f7
	rst SubAFromBC                                          ; $446e: $e7
	rst SubAFromBC                                          ; $446f: $e7
	rst GetHLinHL                                          ; $4470: $cf
	adc a                                            ; $4471: $8f
	adc a                                            ; $4472: $8f
	inc c                                            ; $4473: $0c
	inc c                                            ; $4474: $0c
	db $fd                                           ; $4475: $fd
	xor [hl]                                         ; $4476: $ae
	xor [hl]                                         ; $4477: $ae
	sub $5e                                          ; $4478: $d6 $5e
	ld a, [$e3fe]                                    ; $447a: $fa $fe $e3
	ldh a, [c]                                       ; $447d: $f2
	ei                                               ; $447e: $fb
	ei                                               ; $447f: $fb
	ld a, e                                          ; $4480: $7b
	ei                                               ; $4481: $fb
	rst $38                                          ; $4482: $ff
	ld b, a                                          ; $4483: $47
	inc bc                                           ; $4484: $03
	sub c                                            ; $4485: $91
	db $e3                                           ; $4486: $e3
	sub a                                            ; $4487: $97
	or $f9                                           ; $4488: $f6 $f9
	scf                                              ; $448a: $37
	sub a                                            ; $448b: $97
	ld d, h                                          ; $448c: $54
	or h                                             ; $448d: $b4
	ld d, a                                          ; $448e: $57
	rst $38                                          ; $448f: $ff
	rst $38                                          ; $4490: $ff
	rra                                              ; $4491: $1f
	inc bc                                           ; $4492: $03
	inc bc                                           ; $4493: $03
	cp a                                             ; $4494: $bf
	ld bc, $90fa                                     ; $4495: $01 $fa $90
	ld e, $8f                                        ; $4498: $1e $8f
	inc c                                            ; $449a: $0c
	inc b                                            ; $449b: $04
	db $ec                                           ; $449c: $ec
	ld e, h                                          ; $449d: $5c
	db $ec                                           ; $449e: $ec
	di                                               ; $449f: $f3
	sbc a                                            ; $44a0: $9f
	rst GetHLinHL                                          ; $44a1: $cf
	ld l, $ae                                        ; $44a2: $2e $ae
	and $c6                                          ; $44a4: $e6 $c6
	ld c, $04                                        ; $44a6: $0e $04
	nop                                              ; $44a8: $00
	rst SubAFromDE                                          ; $44a9: $df
	ld b, h                                          ; $44aa: $44
	ld b, h                                          ; $44ab: $44
	nop                                              ; $44ac: $00
	add b                                            ; $44ad: $80
	inc a                                            ; $44ae: $3c
	rst SubAFromBC                                          ; $44af: $e7
	dec a                                            ; $44b0: $3d
	rst SubAFromBC                                          ; $44b1: $e7
	ld a, c                                          ; $44b2: $79
	rst GetHLinHL                                          ; $44b3: $cf
	ld a, [$fb8f]                                    ; $44b4: $fa $8f $fb
	adc a                                            ; $44b7: $8f
	rst $38                                          ; $44b8: $ff
	inc c                                            ; $44b9: $0c
	rst FarCall                                          ; $44ba: $f7
	inc c                                            ; $44bb: $0c
	rst FarCall                                          ; $44bc: $f7
	db $fc                                           ; $44bd: $fc
	xor [hl]                                         ; $44be: $ae
	ei                                               ; $44bf: $fb
	xor [hl]                                         ; $44c0: $ae
	ei                                               ; $44c1: $fb
	sub $7b                                          ; $44c2: $d6 $7b
	ld e, [hl]                                       ; $44c4: $5e
	ei                                               ; $44c5: $fb
	ld a, [$feff]                                    ; $44c6: $fa $ff $fe
	ld b, a                                          ; $44c9: $47
	db $e3                                           ; $44ca: $e3
	inc bc                                           ; $44cb: $03
	ldh a, [c]                                       ; $44cc: $f2
	sub c                                            ; $44cd: $91
	inc bc                                           ; $44ce: $03
	sub a                                            ; $44cf: $97
	db $fc                                           ; $44d0: $fc
	rst FarCall                                          ; $44d1: $f7
	db $fc                                           ; $44d2: $fc
	rst $38                                          ; $44d3: $ff
	jr jr_027_450d                                   ; $44d4: $18 $37

	ld bc, $0797                                     ; $44d6: $01 $97 $07
	ld d, a                                          ; $44d9: $57
	inc bc                                           ; $44da: $03
	or [hl]                                          ; $44db: $b6
	cp a                                             ; $44dc: $bf
	ld d, a                                          ; $44dd: $57
	ld a, [$0390]                                    ; $44de: $fa $90 $03
	cp $07                                           ; $44e1: $fe $07
	rst $38                                          ; $44e3: $ff
	rlca                                             ; $44e4: $07
	db $fc                                           ; $44e5: $fc
	and $fc                                          ; $44e6: $e6 $fc
	or $3c                                           ; $44e8: $f6 $3c
	cp $1c                                           ; $44ea: $fe $1c
	add $ec                                          ; $44ec: $c6 $ec
	ld c, $04                                        ; $44ee: $0e $04
	nop                                              ; $44f0: $00
	rst SubAFromDE                                          ; $44f1: $df
	ld b, h                                          ; $44f2: $44
	ld b, l                                          ; $44f3: $45
	nop                                              ; $44f4: $00
	add b                                            ; $44f5: $80
	inc a                                            ; $44f6: $3c
	rst SubAFromBC                                          ; $44f7: $e7
	dec a                                            ; $44f8: $3d
	rst SubAFromBC                                          ; $44f9: $e7
	ld a, c                                          ; $44fa: $79
	rst GetHLinHL                                          ; $44fb: $cf
	ld a, [$fb8f]                                    ; $44fc: $fa $8f $fb
	adc a                                            ; $44ff: $8f
	rst $38                                          ; $4500: $ff
	inc c                                            ; $4501: $0c
	rst FarCall                                          ; $4502: $f7
	inc c                                            ; $4503: $0c
	rst FarCall                                          ; $4504: $f7
	db $fc                                           ; $4505: $fc
	xor [hl]                                         ; $4506: $ae
	ei                                               ; $4507: $fb
	xor [hl]                                         ; $4508: $ae
	ei                                               ; $4509: $fb
	sub $7b                                          ; $450a: $d6 $7b
	ld e, [hl]                                       ; $450c: $5e

jr_027_450d:
	ei                                               ; $450d: $fb
	ld a, [$feff]                                    ; $450e: $fa $ff $fe
	ld b, a                                          ; $4511: $47
	db $e3                                           ; $4512: $e3
	inc bc                                           ; $4513: $03
	ldh a, [c]                                       ; $4514: $f2
	add b                                            ; $4515: $80
	inc bc                                           ; $4516: $03
	sub a                                            ; $4517: $97
	db $fc                                           ; $4518: $fc
	rst FarCall                                          ; $4519: $f7
	db $fc                                           ; $451a: $fc
	rst $38                                          ; $451b: $ff
	jr jr_027_4555                                   ; $451c: $18 $37

	nop                                              ; $451e: $00
	sub a                                            ; $451f: $97
	inc bc                                           ; $4520: $03
	ld d, a                                          ; $4521: $57
	rlca                                             ; $4522: $07
	or a                                             ; $4523: $b7
	ld [bc], a                                       ; $4524: $02
	ld d, a                                          ; $4525: $57
	nop                                              ; $4526: $00
	ld a, [$fe03]                                    ; $4527: $fa $03 $fe
	rlca                                             ; $452a: $07
	rst $38                                          ; $452b: $ff
	rlca                                             ; $452c: $07
	db $fc                                           ; $452d: $fc
	ld b, $dc                                        ; $452e: $06 $dc
	and $fc                                          ; $4530: $e6 $fc
	cp $fc                                           ; $4532: $fe $fc
	ld [hl], $9d                                     ; $4534: $36 $9d
	db $ec                                           ; $4536: $ec
	ld c, $04                                        ; $4537: $0e $04
	nop                                              ; $4539: $00
	rst SubAFromDE                                          ; $453a: $df
	ld b, h                                          ; $453b: $44
	xor e                                            ; $453c: $ab
	ld b, $97                                        ; $453d: $06 $97
	adc b                                            ; $453f: $88
	ld [hl], a                                       ; $4540: $77
	ld d, l                                          ; $4541: $55
	xor d                                            ; $4542: $aa
	ld [hl+], a                                      ; $4543: $22
	db $dd                                           ; $4544: $dd
	ld d, l                                          ; $4545: $55
	xor d                                            ; $4546: $aa
	daa                                              ; $4547: $27
	ld hl, sp-$80                                    ; $4548: $f8 $80
	rst AddAOntoHL                                          ; $454a: $ef
	ld a, h                                          ; $454b: $7c
	ld b, l                                          ; $454c: $45
	cp $45                                           ; $454d: $fe $45
	cp $41                                           ; $454f: $fe $41
	cp $c7                                           ; $4551: $fe $c7
	ld a, b                                          ; $4553: $78
	ld e, a                                          ; $4554: $5f

jr_027_4555:
	ldh [$7f], a                                     ; $4555: $e0 $7f
	ret nz                                           ; $4557: $c0

	ld a, a                                          ; $4558: $7f
	ret nz                                           ; $4559: $c0

	inc a                                            ; $455a: $3c
	db $e3                                           ; $455b: $e3
	ld l, $f1                                        ; $455c: $2e $f1
	cpl                                              ; $455e: $2f
	ldh a, [rAUD2ENV]                                ; $455f: $f0 $17
	ld hl, sp+$17                                    ; $4561: $f8 $17
	ld hl, sp+$1f                                    ; $4563: $f8 $1f
	ld hl, sp-$75                                    ; $4565: $f8 $8b
	ld a, h                                          ; $4567: $7c
	adc a                                            ; $4568: $8f
	add c                                            ; $4569: $81
	ld a, h                                          ; $456a: $7c
	adc $38                                          ; $456b: $ce $38
	ld c, [hl]                                       ; $456d: $4e
	cp b                                             ; $456e: $b8
	xor [hl]                                         ; $456f: $ae
	ret c                                            ; $4570: $d8

	ld c, a                                          ; $4571: $4f
	ld hl, sp-$51                                    ; $4572: $f8 $af
	ld a, h                                          ; $4574: $7c
	rst FarCall                                          ; $4575: $f7
	ccf                                              ; $4576: $3f
	jp c, $ff3f                                      ; $4577: $da $3f $ff

	ld e, $c3                                        ; $457a: $1e $c3
	ccf                                              ; $457c: $3f
	rra                                              ; $457d: $1f
	nop                                              ; $457e: $00
	rlca                                             ; $457f: $07
	nop                                              ; $4580: $00
	ld hl, sp+$07                                    ; $4581: $f8 $07
	ei                                               ; $4583: $fb
	rlca                                             ; $4584: $07
	rst $38                                          ; $4585: $ff
	rst $38                                          ; $4586: $ff
	nop                                              ; $4587: $00
	ld a, e                                          ; $4588: $7b
	cp $80                                           ; $4589: $fe $80
	adc d                                            ; $458b: $8a
	db $fd                                           ; $458c: $fd
	xor e                                            ; $458d: $ab
	db $dd                                           ; $458e: $dd
	or a                                             ; $458f: $b7
	db $dd                                           ; $4590: $dd
	cp a                                             ; $4591: $bf
	push de                                          ; $4592: $d5
	sbc [hl]                                         ; $4593: $9e
	push af                                          ; $4594: $f5
	db $dd                                           ; $4595: $dd
	or $d5                                           ; $4596: $f6 $d5
	cp $db                                           ; $4598: $fe $db
	cp $a5                                           ; $459a: $fe $a5
	ld e, e                                          ; $459c: $5b
	or a                                             ; $459d: $b7
	ld c, c                                          ; $459e: $49
	jp nc, Jump_027_5a2d                             ; $459f: $d2 $2d $5a

	and l                                            ; $45a2: $a5
	reti                                             ; $45a3: $d9


	and [hl]                                         ; $45a4: $a6
	db $ed                                           ; $45a5: $ed
	sub d                                            ; $45a6: $92
	xor l                                            ; $45a7: $ad
	jp nc, $80ff                                     ; $45a8: $d2 $ff $80

	jp nc, $0ef9                                     ; $45ab: $d2 $f9 $0e

	inc e                                            ; $45ae: $1c
	rlca                                             ; $45af: $07
	add h                                            ; $45b0: $84
	add a                                            ; $45b1: $87
	db $e4                                           ; $45b2: $e4
	add a                                            ; $45b3: $87
	cp [hl]                                          ; $45b4: $be
	jp $f3fe                                         ; $45b5: $c3 $fe $f3


	cp $ff                                           ; $45b8: $fe $ff
	jp $22ff                                         ; $45ba: $c3 $ff $22


	rst $38                                          ; $45bd: $ff
	daa                                              ; $45be: $27
	rst $38                                          ; $45bf: $ff
	ld l, a                                          ; $45c0: $6f
	db $fd                                           ; $45c1: $fd
	ld c, a                                          ; $45c2: $4f
	db $fd                                           ; $45c3: $fd
	ld d, a                                          ; $45c4: $57
	db $f4                                           ; $45c5: $f4
	ld d, a                                          ; $45c6: $57
	db $fc                                           ; $45c7: $fc
	ld d, e                                          ; $45c8: $53
	or $9b                                           ; $45c9: $f6 $9b
	ld [hl], e                                       ; $45cb: $73
	ld a, [$fc03]                                    ; $45cc: $fa $03 $fc
	ld l, a                                          ; $45cf: $6f
	cp $9a                                           ; $45d0: $fe $9a
	add c                                            ; $45d2: $81
	cp $80                                           ; $45d3: $fe $80
	rst $38                                          ; $45d5: $ff
	ret nz                                           ; $45d6: $c0

	ld a, e                                          ; $45d7: $7b
	cp $73                                           ; $45d8: $fe $73
	xor e                                            ; $45da: $ab
	ld e, e                                          ; $45db: $5b
	cp $9d                                           ; $45dc: $fe $9d
	rst FarCall                                          ; $45de: $f7
	inc c                                            ; $45df: $0c
	ld [hl], a                                       ; $45e0: $77
	cp $99                                           ; $45e1: $fe $99
	db $f4                                           ; $45e3: $f4
	rrca                                             ; $45e4: $0f
	ldh a, [c]                                       ; $45e5: $f2
	rrca                                             ; $45e6: $0f
	di                                               ; $45e7: $f3
	ld c, $77                                        ; $45e8: $0e $77
	cp $8f                                           ; $45ea: $fe $8f
	adc b                                            ; $45ec: $88
	rst FarCall                                          ; $45ed: $f7
	ld d, l                                          ; $45ee: $55
	ld [$7da2], a                                    ; $45ef: $ea $a2 $7d
	push de                                          ; $45f2: $d5
	ld a, [hl-]                                      ; $45f3: $3a
	sbc b                                            ; $45f4: $98
	rst FarCall                                          ; $45f5: $f7
	ld d, l                                          ; $45f6: $55
	ld a, [$7db2]                                    ; $45f7: $fa $b2 $7d
	call $073a                                       ; $45fa: $cd $3a $07
	jr nz, jr_027_4606                               ; $45fd: $20 $07

	ld hl, sp-$63                                    ; $45ff: $f8 $9d
	rst $38                                          ; $4601: $ff
	ld b, b                                          ; $4602: $40
	ld [hl], a                                       ; $4603: $77
	ld a, [bc]                                       ; $4604: $0a
	ld a, a                                          ; $4605: $7f

jr_027_4606:
	inc b                                            ; $4606: $04
	adc [hl]                                         ; $4607: $8e
	rst SubAFromDE                                          ; $4608: $df
	ld h, b                                          ; $4609: $60
	ld e, a                                          ; $460a: $5f
	ldh [rVBK], a                                    ; $460b: $e0 $4f
	ldh a, [$6f]                                     ; $460d: $f0 $6f
	or b                                             ; $460f: $b0
	add l                                            ; $4610: $85
	ld a, [hl]                                       ; $4611: $7e
	add a                                            ; $4612: $87
	ld a, [hl]                                       ; $4613: $7e
	add d                                            ; $4614: $82
	ld a, a                                          ; $4615: $7f
	jp nz, $c13f                                     ; $4616: $c2 $3f $c1

	ld a, e                                          ; $4619: $7b
	cp $9e                                           ; $461a: $fe $9e
	ret nz                                           ; $461c: $c0

	ld a, e                                          ; $461d: $7b
	cp $9c                                           ; $461e: $fe $9c
	rst AddAOntoHL                                          ; $4620: $ef
	ld e, $f6                                        ; $4621: $1e $f6
	ld a, e                                          ; $4623: $7b
	add h                                            ; $4624: $84
	ld a, a                                          ; $4625: $7f
	ld [de], a                                       ; $4626: $12
	add b                                            ; $4627: $80
	ld [hl], c                                       ; $4628: $71
	adc a                                            ; $4629: $8f
	ld h, e                                          ; $462a: $63
	sbc a                                            ; $462b: $9f
	rst JumpTable                                          ; $462c: $c7
	cp a                                             ; $462d: $bf
	adc d                                            ; $462e: $8a
	rst $38                                          ; $462f: $ff
	add b                                            ; $4630: $80
	ld a, a                                          ; $4631: $7f
	ldh a, [rIF]                                     ; $4632: $f0 $0f
	ld hl, sp+$07                                    ; $4634: $f8 $07
	ld a, h                                          ; $4636: $7c
	add e                                            ; $4637: $83
	cp [hl]                                          ; $4638: $be
	pop bc                                           ; $4639: $c1
	cp a                                             ; $463a: $bf
	ret nz                                           ; $463b: $c0

	sbc $e1                                          ; $463c: $de $e1
	ld e, h                                          ; $463e: $5c
	db $e3                                           ; $463f: $e3
	ld a, a                                          ; $4640: $7f
	jp c, $d97f                                      ; $4641: $da $7f $d9

	ld [hl], a                                       ; $4644: $77
	db $fd                                           ; $4645: $fd
	ld h, a                                          ; $4646: $67
	add b                                            ; $4647: $80
	db $f4                                           ; $4648: $f4

jr_027_4649:
	daa                                              ; $4649: $27
	xor $21                                          ; $464a: $ee $21
	push af                                          ; $464c: $f5

jr_027_464d:
	jr nc, jr_027_4649                               ; $464d: $30 $fa

	jr nc, jr_027_464d                               ; $464f: $30 $fc

	rst $38                                          ; $4651: $ff
	ld d, d                                          ; $4652: $52
	rst $38                                          ; $4653: $ff
	ld c, d                                          ; $4654: $4a
	rst $38                                          ; $4655: $ff

jr_027_4656:
	ld a, [hl+]                                      ; $4656: $2a
	rst $38                                          ; $4657: $ff
	xor [hl]                                         ; $4658: $ae

jr_027_4659:
	db $fd                                           ; $4659: $fd
	ld d, a                                          ; $465a: $57
	db $fc                                           ; $465b: $fc
	call c, Call_027_4464                            ; $465c: $dc $64 $44
	jr nz, jr_027_4681                               ; $465f: $20 $20

	pop hl                                           ; $4661: $e1
	pop af                                           ; $4662: $f1
	sbc b                                            ; $4663: $98
	sbc h                                            ; $4664: $9c
	add a                                            ; $4665: $87
	adc a                                            ; $4666: $8f
	ld a, [$1580]                                    ; $4667: $fa $80 $15
	nop                                              ; $466a: $00
	ld a, [hl+]                                      ; $466b: $2a
	db $eb                                           ; $466c: $eb
	cp $a7                                           ; $466d: $fe $a7
	rst AddAOntoHL                                          ; $466f: $ef
	sub a                                            ; $4670: $97
	rst FarCall                                          ; $4671: $f7
	ld d, d                                          ; $4672: $52
	ld d, [hl]                                       ; $4673: $56
	ld b, d                                          ; $4674: $42
	ld b, [hl]                                       ; $4675: $46
	ld b, d                                          ; $4676: $42
	jp nz, $4e42                                     ; $4677: $c2 $42 $4e

	ld c, [hl]                                       ; $467a: $4e
	ld a, [hl]                                       ; $467b: $7e
	ldh [$7f], a                                     ; $467c: $e0 $7f
	ldh a, [$7f]                                     ; $467e: $f0 $7f
	ret z                                            ; $4680: $c8

jr_027_4681:
	ld a, a                                          ; $4681: $7f
	db $e4                                           ; $4682: $e4
	rst $38                                          ; $4683: $ff
	and b                                            ; $4684: $a0
	rst $38                                          ; $4685: $ff
	db $10                                           ; $4686: $10
	ld a, a                                          ; $4687: $7f
	sbc c                                            ; $4688: $99
	db $10                                           ; $4689: $10
	ccf                                              ; $468a: $3f
	ld [$7f3f], sp                                   ; $468b: $08 $3f $7f
	add b                                            ; $468e: $80
	ld [hl], a                                       ; $468f: $77
	cp $73                                           ; $4690: $fe $73
	add l                                            ; $4692: $85
	ld a, e                                          ; $4693: $7b
	cp $98                                           ; $4694: $fe $98
	rra                                              ; $4696: $1f
	ldh [$f1], a                                     ; $4697: $e0 $f1
	rrca                                             ; $4699: $0f
	di                                               ; $469a: $f3
	dec c                                            ; $469b: $0d
	ldh a, [c]                                       ; $469c: $f2
	ld a, e                                          ; $469d: $7b
	cp $9d                                           ; $469e: $fe $9d
	di                                               ; $46a0: $f3
	inc c                                            ; $46a1: $0c
	ld l, a                                          ; $46a2: $6f
	cp $7e                                           ; $46a3: $fe $7e
	or $91                                           ; $46a5: $f6 $91
	ld a, e                                          ; $46a7: $7b
	add [hl]                                         ; $46a8: $86
	sbc [hl]                                         ; $46a9: $9e
	db $e3                                           ; $46aa: $e3
	ld l, l                                          ; $46ab: $6d
	di                                               ; $46ac: $f3
	ld [hl], a                                       ; $46ad: $77
	ld sp, hl                                        ; $46ae: $f9
	dec sp                                           ; $46af: $3b
	db $fd                                           ; $46b0: $fd
	or e                                             ; $46b1: $b3
	ld a, l                                          ; $46b2: $7d
	sbc $31                                          ; $46b3: $de $31
	ld c, a                                          ; $46b5: $4f
	jr nc, jr_027_4656                               ; $46b6: $30 $9e

	push de                                          ; $46b8: $d5
	ld b, e                                          ; $46b9: $43
	jr nz, jr_027_4659                               ; $46ba: $20 $9d

	xor d                                            ; $46bc: $aa
	ld d, l                                          ; $46bd: $55
	rrca                                             ; $46be: $0f
	db $fc                                           ; $46bf: $fc
	sub e                                            ; $46c0: $93
	and a                                            ; $46c1: $a7
	ld a, b                                          ; $46c2: $78
	ld h, a                                          ; $46c3: $67
	cp b                                             ; $46c4: $b8
	and e                                            ; $46c5: $a3
	ld a, h                                          ; $46c6: $7c
	ld h, e                                          ; $46c7: $63
	cp h                                             ; $46c8: $bc
	and c                                            ; $46c9: $a1
	ld a, [hl]                                       ; $46ca: $7e
	ld h, c                                          ; $46cb: $61
	cp [hl]                                          ; $46cc: $be
	ld [hl], a                                       ; $46cd: $77
	db $fc                                           ; $46ce: $fc
	ld a, a                                          ; $46cf: $7f
	adc e                                            ; $46d0: $8b
	sbc e                                            ; $46d1: $9b
	ldh [$1f], a                                     ; $46d2: $e0 $1f
	ldh [$1f], a                                     ; $46d4: $e0 $1f
	ld [hl], a                                       ; $46d6: $77
	inc e                                            ; $46d7: $1c
	sbc l                                            ; $46d8: $9d
	cp $01                                           ; $46d9: $fe $01
	halt                                             ; $46db: $76
	add b                                            ; $46dc: $80
	add a                                            ; $46dd: $87
	sub $ff                                          ; $46de: $d6 $ff
	ld l, [hl]                                       ; $46e0: $6e
	rst $38                                          ; $46e1: $ff
	inc [hl]                                         ; $46e2: $34
	rst $38                                          ; $46e3: $ff
	inc a                                            ; $46e4: $3c
	rst $38                                          ; $46e5: $ff
	inc e                                            ; $46e6: $1c
	rst $38                                          ; $46e7: $ff
	jr @+$01                                         ; $46e8: $18 $ff

	ld [$88ff], sp                                   ; $46ea: $08 $ff $88
	ld a, a                                          ; $46ed: $7f
	ld l, $f1                                        ; $46ee: $2e $f1
	ld h, $f9                                        ; $46f0: $26 $f9
	inc de                                           ; $46f2: $13
	db $fc                                           ; $46f3: $fc
	ld de, $66fe                                     ; $46f4: $11 $fe $66
	ld e, a                                          ; $46f7: $5f
	sbc l                                            ; $46f8: $9d
	db $10                                           ; $46f9: $10
	ld hl, sp+$7b                                    ; $46fa: $f8 $7b
	cp $97                                           ; $46fc: $fe $97
	db $fc                                           ; $46fe: $fc

jr_027_46ff:
	jr jr_027_46ff                                   ; $46ff: $18 $fe

	jr @-$01                                         ; $4701: $18 $fd

	ld [$08fa], sp                                   ; $4703: $08 $fa $08
	ld a, e                                          ; $4706: $7b
	db $fc                                           ; $4707: $fc
	sbc e                                            ; $4708: $9b
	jr nz, jr_027_4730                               ; $4709: $20 $25

	nop                                              ; $470b: $00
	ld c, $79                                        ; $470c: $0e $79
	rst SubAFromDE                                          ; $470e: $df
	sbc [hl]                                         ; $470f: $9e
	ld bc, $9efe                                     ; $4710: $01 $fe $9e
	add b                                            ; $4713: $80
	db $fc                                           ; $4714: $fc
	sbc d                                            ; $4715: $9a
	ld d, h                                          ; $4716: $54
	nop                                              ; $4717: $00
	ld hl, sp+$00                                    ; $4718: $f8 $00
	ldh [rPCM34], a                                  ; $471a: $e0 $77
	db $f4                                           ; $471c: $f4
	sbc $01                                          ; $471d: $de $01
	add l                                            ; $471f: $85
	inc bc                                           ; $4720: $03
	ld [bc], a                                       ; $4721: $02
	ld b, $7b                                        ; $4722: $06 $7b
	ld a, a                                          ; $4724: $7f
	ld a, c                                          ; $4725: $79
	ld a, a                                          ; $4726: $7f
	ld a, b                                          ; $4727: $78
	ld a, l                                          ; $4728: $7d
	ld l, b                                          ; $4729: $68
	rst AddAOntoHL                                          ; $472a: $ef
	db $ec                                           ; $472b: $ec
	db $fd                                           ; $472c: $fd
	call nz, Call_027_446d                           ; $472d: $c4 $6d $44

jr_027_4730:
	ld e, a                                          ; $4730: $5f
	ld b, h                                          ; $4731: $44
	ld l, l                                          ; $4732: $6d
	ld [$081f], sp                                   ; $4733: $08 $1f $08
	sbc a                                            ; $4736: $9f
	adc b                                            ; $4737: $88
	rst AddAOntoHL                                          ; $4738: $ef
	ld l, h                                          ; $4739: $6c
	ld a, e                                          ; $473a: $7b
	sbc [hl]                                         ; $473b: $9e
	sbc c                                            ; $473c: $99
	inc b                                            ; $473d: $04
	ld a, a                                          ; $473e: $7f
	inc b                                            ; $473f: $04
	cp a                                             ; $4740: $bf
	inc b                                            ; $4741: $04
	ld e, a                                          ; $4742: $5f
	ld a, e                                          ; $4743: $7b
	add e                                            ; $4744: $83
	adc h                                            ; $4745: $8c
	ldh [rIF], a                                     ; $4746: $e0 $0f
	ldh a, [rIF]                                     ; $4748: $f0 $0f
	ldh a, [rTAC]                                    ; $474a: $f0 $07
	ld hl, sp+$03                                    ; $474c: $f8 $03
	db $fc                                           ; $474e: $fc
	ld b, c                                          ; $474f: $41
	cp [hl]                                          ; $4750: $be
	ld [hl], b                                       ; $4751: $70
	adc a                                            ; $4752: $8f
	di                                               ; $4753: $f3
	inc c                                            ; $4754: $0c
	ei                                               ; $4755: $fb
	inc b                                            ; $4756: $04
	ld sp, hl                                        ; $4757: $f9
	ld b, $77                                        ; $4758: $06 $77
	cp $7f                                           ; $475a: $fe $7f
	ld l, [hl]                                       ; $475c: $6e
	ld [hl], a                                       ; $475d: $77
	cp $7f                                           ; $475e: $fe $7f
	ld c, $99                                        ; $4760: $0e $99
	adc $31                                          ; $4762: $ce $31
	and $19                                          ; $4764: $e6 $19
	or $09                                           ; $4766: $f6 $09
	ld l, a                                          ; $4768: $6f
	cp $99                                           ; $4769: $fe $99
	ld a, [hl]                                       ; $476b: $7e
	adc c                                            ; $476c: $89
	xor d                                            ; $476d: $aa
	push de                                          ; $476e: $d5
	push de                                          ; $476f: $d5
	xor d                                            ; $4770: $aa
	ld d, e                                          ; $4771: $53
	db $fc                                           ; $4772: $fc
	dec bc                                           ; $4773: $0b
	db $10                                           ; $4774: $10
	ld b, a                                          ; $4775: $47
	db $fc                                           ; $4776: $fc
	add b                                            ; $4777: $80
	and b                                            ; $4778: $a0
	ld a, a                                          ; $4779: $7f
	ld h, c                                          ; $477a: $61
	cp a                                             ; $477b: $bf
	or e                                             ; $477c: $b3
	ld e, a                                          ; $477d: $5f
	ld d, e                                          ; $477e: $53
	cp a                                             ; $477f: $bf
	or [hl]                                          ; $4780: $b6
	ld e, a                                          ; $4781: $5f
	ld d, l                                          ; $4782: $55
	cp [hl]                                          ; $4783: $be
	or l                                             ; $4784: $b5
	ld e, [hl]                                       ; $4785: $5e
	ld d, e                                          ; $4786: $53
	cp h                                             ; $4787: $bc
	nop                                              ; $4788: $00
	rst $38                                          ; $4789: $ff
	ld sp, hl                                        ; $478a: $f9
	cp $cf                                           ; $478b: $fe $cf
	ldh a, [$bf]                                     ; $478d: $f0 $bf
	ret nz                                           ; $478f: $c0

	rst $38                                          ; $4790: $ff
	nop                                              ; $4791: $00
	db $fc                                           ; $4792: $fc
	inc bc                                           ; $4793: $03
	ld hl, sp+$07                                    ; $4794: $f8 $07
	pop af                                           ; $4796: $f1
	adc a                                            ; $4797: $8f
	rrca                                             ; $4798: $0f
	ret z                                            ; $4799: $c8

	ccf                                              ; $479a: $3f
	call z, $de3f                                    ; $479b: $cc $3f $de
	ccf                                              ; $479e: $3f
	or a                                             ; $479f: $b7
	ld a, a                                          ; $47a0: $7f
	inc sp                                           ; $47a1: $33
	rst $38                                          ; $47a2: $ff
	dec de                                           ; $47a3: $1b
	rst $38                                          ; $47a4: $ff
	rlca                                             ; $47a5: $07
	rst $38                                          ; $47a6: $ff
	ei                                               ; $47a7: $fb
	ld h, c                                          ; $47a8: $61
	ld h, a                                          ; $47a9: $67
	ld [hl], l                                       ; $47aa: $75
	ld d, d                                          ; $47ab: $52
	sbc [hl]                                         ; $47ac: $9e
	ldh [$7a], a                                     ; $47ad: $e0 $7a
	ld c, d                                          ; $47af: $4a
	ld [hl], a                                       ; $47b0: $77
	inc c                                            ; $47b1: $0c
	sub e                                            ; $47b2: $93
	ld [$08fc], sp                                   ; $47b3: $08 $fc $08
	cp $0c                                           ; $47b6: $fe $0c
	rst $38                                          ; $47b8: $ff
	inc b                                            ; $47b9: $04
	cp $04                                           ; $47ba: $fe $04
	db $fd                                           ; $47bc: $fd
	inc b                                            ; $47bd: $04
	cp $fe                                           ; $47be: $fe $fe
	add [hl]                                         ; $47c0: $86
	inc bc                                           ; $47c1: $03
	nop                                              ; $47c2: $00
	dec b                                            ; $47c3: $05
	nop                                              ; $47c4: $00
	ld [bc], a                                       ; $47c5: $02
	nop                                              ; $47c6: $00
	dec b                                            ; $47c7: $05
	ld bc, $068b                                     ; $47c8: $01 $8b $06
	ld b, a                                          ; $47cb: $47
	inc e                                            ; $47cc: $1c
	cp d                                             ; $47cd: $ba
	ld b, $1c                                        ; $47ce: $06 $1c
	inc c                                            ; $47d0: $0c
	ld hl, sp+$18                                    ; $47d1: $f8 $18
	ld [hl], b                                       ; $47d3: $70
	ld h, b                                          ; $47d4: $60
	ldh [$c0], a                                     ; $47d5: $e0 $c0
	add c                                            ; $47d7: $81
	add c                                            ; $47d8: $81
	ld bc, $e67b                                     ; $47d9: $01 $7b $e6
	add b                                            ; $47dc: $80
	inc bc                                           ; $47dd: $03
	ld b, h                                          ; $47de: $44

jr_027_47df:
	add $44                                          ; $47df: $c6 $44
	push bc                                          ; $47e1: $c5
	add h                                            ; $47e2: $84
	add $84                                          ; $47e3: $c6 $84
	push bc                                          ; $47e5: $c5
	add h                                            ; $47e6: $84
	add [hl]                                         ; $47e7: $86
	inc b                                            ; $47e8: $04
	add l                                            ; $47e9: $85
	inc b                                            ; $47ea: $04
	add [hl]                                         ; $47eb: $86
	ld [bc], a                                       ; $47ec: $02
	rlca                                             ; $47ed: $07
	inc b                                            ; $47ee: $04
	cpl                                              ; $47ef: $2f
	ld b, $17                                        ; $47f0: $06 $17
	ld b, $0f                                        ; $47f2: $06 $0f
	ld [bc], a                                       ; $47f4: $02
	rlca                                             ; $47f5: $07
	ld [bc], a                                       ; $47f6: $02
	inc bc                                           ; $47f7: $03
	ld [bc], a                                       ; $47f8: $02
	add e                                            ; $47f9: $83
	ld bc, $9b83                                     ; $47fa: $01 $83 $9b
	nop                                              ; $47fd: $00
	add c                                            ; $47fe: $81
	inc a                                            ; $47ff: $3c
	jp $0077                                         ; $4800: $c3 $77 $00


	ld [hl], a                                       ; $4803: $77
	ld [bc], a                                       ; $4804: $02
	sub l                                            ; $4805: $95
	dec b                                            ; $4806: $05
	cp $02                                           ; $4807: $fe $02
	rst $38                                          ; $4809: $ff
	add c                                            ; $480a: $81
	rst $38                                          ; $480b: $ff
	ld a, b                                          ; $480c: $78
	add a                                            ; $480d: $87
	jr nc, jr_027_47df                               ; $480e: $30 $cf

	ld a, d                                          ; $4810: $7a
	pop af                                           ; $4811: $f1
	ld [hl], e                                       ; $4812: $73
	cp $8b                                           ; $4813: $fe $8b
	pop af                                           ; $4815: $f1
	ld c, $71                                        ; $4816: $0e $71
	adc [hl]                                         ; $4818: $8e
	ld a, a                                          ; $4819: $7f
	adc c                                            ; $481a: $89
	ld l, a                                          ; $481b: $6f
	sbc c                                            ; $481c: $99
	ld [hl], l                                       ; $481d: $75
	sbc e                                            ; $481e: $9b
	rst SubAFromHL                                          ; $481f: $d7
	ld a, [hl-]                                      ; $4820: $3a
	ldh a, [c]                                       ; $4821: $f2
	ccf                                              ; $4822: $3f
	or l                                             ; $4823: $b5
	ld a, [hl]                                       ; $4824: $7e
	and [hl]                                         ; $4825: $a6
	ld a, l                                          ; $4826: $7d
	ld l, l                                          ; $4827: $6d
	ld a, [$1c03]                                    ; $4828: $fa $03 $1c
	sbc b                                            ; $482b: $98
	ld d, l                                          ; $482c: $55
	db $dd                                           ; $482d: $dd
	ld [hl+], a                                      ; $482e: $22
	xor d                                            ; $482f: $aa
	ld d, l                                          ; $4830: $55
	ld [hl], a                                       ; $4831: $77
	adc b                                            ; $4832: $88
	daa                                              ; $4833: $27
	ld hl, sp-$7d                                    ; $4834: $f8 $83
	or a                                             ; $4836: $b7
	ld e, b                                          ; $4837: $58
	db $d3                                           ; $4838: $d3
	inc a                                            ; $4839: $3c
	or e                                             ; $483a: $b3
	ld e, h                                          ; $483b: $5c
	ld [hl], e                                       ; $483c: $73
	sbc h                                            ; $483d: $9c
	and e                                            ; $483e: $a3
	ld a, h                                          ; $483f: $7c
	db $e3                                           ; $4840: $e3
	inc a                                            ; $4841: $3c
	and e                                            ; $4842: $a3
	ld a, h                                          ; $4843: $7c
	ld h, c                                          ; $4844: $61
	cp [hl]                                          ; $4845: $be
	rst FarCall                                          ; $4846: $f7
	rrca                                             ; $4847: $0f
	db $ec                                           ; $4848: $ec
	rra                                              ; $4849: $1f
	db $d3                                           ; $484a: $d3
	inc a                                            ; $484b: $3c
	xor $31                                          ; $484c: $ee $31
	sbc h                                            ; $484e: $9c
	ld h, e                                          ; $484f: $63
	cp b                                             ; $4850: $b8
	ld b, a                                          ; $4851: $47
	halt                                             ; $4852: $76
	sub b                                            ; $4853: $90
	sbc b                                            ; $4854: $98
	rrca                                             ; $4855: $0f
	rst $38                                          ; $4856: $ff
	ld [bc], a                                       ; $4857: $02
	rst $38                                          ; $4858: $ff
	ld b, $ff                                        ; $4859: $06 $ff
	inc b                                            ; $485b: $04
	ld [hl], e                                       ; $485c: $73
	cp $7f                                           ; $485d: $fe $7f
	inc e                                            ; $485f: $1c
	ld a, l                                          ; $4860: $7d
	cp $9e                                           ; $4861: $fe $9e
	sub b                                            ; $4863: $90
	ld [hl], e                                       ; $4864: $73
	cp $7f                                           ; $4865: $fe $7f
	ld [bc], a                                       ; $4867: $02
	ld h, a                                          ; $4868: $67
	cp $9e                                           ; $4869: $fe $9e
	inc bc                                           ; $486b: $03
	ld l, d                                          ; $486c: $6a
	ldh a, [$9d]                                     ; $486d: $f0 $9d
	ld b, b                                          ; $486f: $40
	cp a                                             ; $4870: $bf
	ld [hl], a                                       ; $4871: $77
	cp $7d                                           ; $4872: $fe $7d
	jp nz, $f08f                                     ; $4874: $c2 $8f $f0

	db $ec                                           ; $4877: $ec
	ret nz                                           ; $4878: $c0

	xor b                                            ; $4879: $a8
	add b                                            ; $487a: $80
	ret nc                                           ; $487b: $d0

	add b                                            ; $487c: $80
	and b                                            ; $487d: $a0
	ld b, b                                          ; $487e: $40
	ret nz                                           ; $487f: $c0

	jr nz, @-$1e                                     ; $4880: $20 $e0

	db $10                                           ; $4882: $10
	ldh a, [$08]                                     ; $4883: $f0 $08
	ld hl, sp+$79                                    ; $4885: $f8 $79
	db $f4                                           ; $4887: $f4
	sbc [hl]                                         ; $4888: $9e
	ld b, $79                                        ; $4889: $06 $79
	xor $96                                          ; $488b: $ee $96
	ld e, $00                                        ; $488d: $1e $00
	inc l                                            ; $488f: $2c
	nop                                              ; $4890: $00
	ld e, h                                          ; $4891: $5c
	nop                                              ; $4892: $00
	cp h                                             ; $4893: $bc
	nop                                              ; $4894: $00
	ld e, b                                          ; $4895: $58
	sbc $02                                          ; $4896: $de $02
	ld a, a                                          ; $4898: $7f
	ld d, $6f                                        ; $4899: $16 $6f
	db $fc                                           ; $489b: $fc
	sub [hl]                                         ; $489c: $96
	inc hl                                           ; $489d: $23
	ld [bc], a                                       ; $489e: $02
	ld [de], a                                       ; $489f: $12
	ld [bc], a                                       ; $48a0: $02
	inc hl                                           ; $48a1: $23
	nop                                              ; $48a2: $00
	ret nz                                           ; $48a3: $c0

	nop                                              ; $48a4: $00
	ld b, c                                          ; $48a5: $41
	ld a, e                                          ; $48a6: $7b
	db $fc                                           ; $48a7: $fc
	sbc [hl]                                         ; $48a8: $9e
	ld b, b                                          ; $48a9: $40
	ld a, c                                          ; $48aa: $79
	call c, Call_027_6083                            ; $48ab: $dc $83 $60
	nop                                              ; $48ae: $00
	and b                                            ; $48af: $a0
	nop                                              ; $48b0: $00
	ld [hl], b                                       ; $48b1: $70
	ld b, b                                          ; $48b2: $40
	rst $38                                          ; $48b3: $ff
	jr c, jr_027_4935                                ; $48b4: $38 $7f

	ld c, $bf                                        ; $48b6: $0e $bf
	rrca                                             ; $48b8: $0f
	ld e, a                                          ; $48b9: $5f
	inc de                                           ; $48ba: $13
	cp a                                             ; $48bb: $bf
	ld hl, $417f                                     ; $48bc: $21 $7f $41
	ld a, a                                          ; $48bf: $7f
	add c                                            ; $48c0: $81
	rst $38                                          ; $48c1: $ff
	or c                                             ; $48c2: $b1
	adc $53                                          ; $48c3: $ce $53
	db $ec                                           ; $48c5: $ec
	ld [hl+], a                                      ; $48c6: $22
	db $fd                                           ; $48c7: $fd
	sub b                                            ; $48c8: $90
	sbc $ff                                          ; $48c9: $de $ff
	ld l, a                                          ; $48cb: $6f
	ld d, b                                          ; $48cc: $50
	sbc b                                            ; $48cd: $98
	ld a, d                                          ; $48ce: $7a
	db $fd                                           ; $48cf: $fd
	ld l, l                                          ; $48d0: $6d
	ldh a, [c]                                       ; $48d1: $f2
	ld l, d                                          ; $48d2: $6a
	push de                                          ; $48d3: $d5
	rst FarCall                                          ; $48d4: $f7
	inc hl                                           ; $48d5: $23
	jr nc, @+$05                                     ; $48d6: $30 $03

	ld hl, sp+$4b                                    ; $48d8: $f8 $4b
	ld hl, sp-$6b                                    ; $48da: $f8 $95
	pop bc                                           ; $48dc: $c1
	ld a, [hl]                                       ; $48dd: $7e
	pop bc                                           ; $48de: $c1
	ld a, [hl]                                       ; $48df: $7e
	ret nz                                           ; $48e0: $c0

	ld a, a                                          ; $48e1: $7f
	ld b, b                                          ; $48e2: $40
	rst $38                                          ; $48e3: $ff
	ret nz                                           ; $48e4: $c0

	ld a, a                                          ; $48e5: $7f
	ld [hl], a                                       ; $48e6: $77
	cp $9b                                           ; $48e7: $fe $9b
	ld h, b                                          ; $48e9: $60
	cp a                                             ; $48ea: $bf
	db $fc                                           ; $48eb: $fc
	inc bc                                           ; $48ec: $03
	ld l, l                                          ; $48ed: $6d
	ld [$f87f], sp                                   ; $48ee: $08 $7f $f8
	ld a, l                                          ; $48f1: $7d
	add h                                            ; $48f2: $84
	ld a, a                                          ; $48f3: $7f
	jr nc, jr_027_4975                               ; $48f4: $30 $7f

	rst FarCall                                          ; $48f6: $f7
	ld a, a                                          ; $48f7: $7f
	ld c, $92                                        ; $48f8: $0e $92
	add hl, bc                                       ; $48fa: $09
	rst $38                                          ; $48fb: $ff
	adc c                                            ; $48fc: $89
	ld a, a                                          ; $48fd: $7f
	ld [de], a                                       ; $48fe: $12
	rst $38                                          ; $48ff: $ff
	ld [de], a                                       ; $4900: $12
	rst $38                                          ; $4901: $ff
	ld [hl], $ff                                     ; $4902: $36 $ff
	inc h                                            ; $4904: $24
	rst $38                                          ; $4905: $ff
	jr z, @+$75                                      ; $4906: $28 $73

	inc c                                            ; $4908: $0c
	sbc l                                            ; $4909: $9d
	ld bc, $77fe                                     ; $490a: $01 $fe $77
	cp $7e                                           ; $490d: $fe $7e
	ld e, [hl]                                       ; $490f: $5e
	ld [hl], a                                       ; $4910: $77
	cp $68                                           ; $4911: $fe $68
	ld d, a                                          ; $4913: $57
	ld l, e                                          ; $4914: $6b
	cp $7c                                           ; $4915: $fe $7c
	ld b, l                                          ; $4917: $45
	sbc e                                            ; $4918: $9b
	inc b                                            ; $4919: $04
	db $fc                                           ; $491a: $fc
	ld [bc], a                                       ; $491b: $02
	rst $38                                          ; $491c: $ff
	ld [hl], e                                       ; $491d: $73
	cp a                                             ; $491e: $bf
	ld h, a                                          ; $491f: $67
	cp $95                                           ; $4920: $fe $95
	cp b                                             ; $4922: $b8
	nop                                              ; $4923: $00
	ld d, b                                          ; $4924: $50
	nop                                              ; $4925: $00
	or b                                             ; $4926: $b0
	add b                                            ; $4927: $80
	pop hl                                           ; $4928: $e1
	ld b, a                                          ; $4929: $47
	rst AddAOntoHL                                          ; $492a: $ef
	jr c, @+$75                                      ; $492b: $38 $73

	ldh a, [$98]                                     ; $492d: $f0 $98
	ld [bc], a                                       ; $492f: $02
	ld d, d                                          ; $4930: $52
	ld [bc], a                                       ; $4931: $02
	dec hl                                           ; $4932: $2b
	rrca                                             ; $4933: $0f
	ld e, a                                          ; $4934: $5f

jr_027_4935:
	ldh a, [$63]                                     ; $4935: $f0 $63
	ldh [$98], a                                     ; $4937: $e0 $98
	ld bc, $02b1                                     ; $4939: $01 $b1 $02
	ld d, e                                          ; $493c: $53
	add h                                            ; $493d: $84
	cp a                                             ; $493e: $bf
	ld a, b                                          ; $493f: $78
	ld h, e                                          ; $4940: $63
	ldh a, [$7f]                                     ; $4941: $f0 $7f
	jp nz, Jump_027_7f7f                             ; $4943: $c2 $7f $7f

	sbc e                                            ; $4946: $9b
	ld a, [bc]                                       ; $4947: $0a
	rst FarCall                                          ; $4948: $f7
	dec bc                                           ; $4949: $0b
	or $77                                           ; $494a: $f6 $77
	db $fc                                           ; $494c: $fc
	sbc e                                            ; $494d: $9b
	ld a, [de]                                       ; $494e: $1a
	rst SubAFromBC                                          ; $494f: $e7
	rra                                              ; $4950: $1f
	db $e4                                           ; $4951: $e4
	inc bc                                           ; $4952: $03
	jr c, jr_027_4960                                ; $4953: $38 $0b

	ld hl, sp+$7f                                    ; $4955: $f8 $7f
	ld a, [$fc0f]                                    ; $4957: $fa $0f $fc
	sub e                                            ; $495a: $93
	ldh [$3f], a                                     ; $495b: $e0 $3f
	ld [hl], b                                       ; $495d: $70
	sbc a                                            ; $495e: $9f
	ret nc                                           ; $495f: $d0

jr_027_4960:
	ccf                                              ; $4960: $3f
	ld a, b                                          ; $4961: $78
	adc a                                            ; $4962: $8f
	call c, Call_027_7727                            ; $4963: $dc $27 $77
	adc e                                            ; $4966: $8b
	ld [hl], a                                       ; $4967: $77
	ldh a, [$5b]                                     ; $4968: $f0 $5b
	ld b, [hl]                                       ; $496a: $46
	sbc $ff                                          ; $496b: $de $ff
	sbc b                                            ; $496d: $98
	ld [hl], a                                       ; $496e: $77
	adc c                                            ; $496f: $89
	ld l, b                                          ; $4970: $68
	rst $38                                          ; $4971: $ff
	ld e, b                                          ; $4972: $58
	rst $38                                          ; $4973: $ff
	ret nc                                           ; $4974: $d0

jr_027_4975:
	ld [hl], d                                       ; $4975: $72
	inc c                                            ; $4976: $0c
	ld a, l                                          ; $4977: $7d
	inc d                                            ; $4978: $14

jr_027_4979:
	ld [hl], a                                       ; $4979: $77
	cp $7f                                           ; $497a: $fe $7f
	ld c, $70                                        ; $497c: $0e $70
	ld a, c                                          ; $497e: $79
	sbc [hl]                                         ; $497f: $9e
	ld hl, sp+$6d                                    ; $4980: $f8 $6d
	ld l, l                                          ; $4982: $6d
	ld a, l                                          ; $4983: $7d
	ld d, h                                          ; $4984: $54
	ld a, a                                          ; $4985: $7f
	ld c, $57                                        ; $4986: $0e $57
	cp $7a                                           ; $4988: $fe $7a
	ret nc                                           ; $498a: $d0

	sbc d                                            ; $498b: $9a
	rst FarCall                                          ; $498c: $f7
	inc c                                            ; $498d: $0c
	di                                               ; $498e: $f3
	ld c, $f1                                        ; $498f: $0e $f1
	ld [hl], a                                       ; $4991: $77
	and $6f                                          ; $4992: $e6 $6f
	cp $7f                                           ; $4994: $fe $7f
	xor $9b                                          ; $4996: $ee $9b
	jr nz, jr_027_4979                               ; $4998: $20 $df

	ld h, b                                          ; $499a: $60
	sbc a                                            ; $499b: $9f
	ld l, e                                          ; $499c: $6b
	di                                               ; $499d: $f3
	ld a, e                                          ; $499e: $7b
	cp $7b                                           ; $499f: $fe $7b
	ld c, $72                                        ; $49a1: $0e $72
	jp nz, $fe67                                     ; $49a3: $c2 $67 $fe

	halt                                             ; $49a6: $76
	sub b                                            ; $49a7: $90
	ld l, [hl]                                       ; $49a8: $6e
	adc [hl]                                         ; $49a9: $8e
	ld l, a                                          ; $49aa: $6f
	cp $92                                           ; $49ab: $fe $92
	dec e                                            ; $49ad: $1d
	and $3f                                          ; $49ae: $e6 $3f
	call nz, $c63d                                   ; $49b0: $c4 $3d $c6
	ccf                                              ; $49b3: $3f
	call nz, $867d                                   ; $49b4: $c4 $7d $86
	rst $38                                          ; $49b7: $ff
	inc b                                            ; $49b8: $04
	db $fd                                           ; $49b9: $fd
	ld a, c                                          ; $49ba: $79
	add a                                            ; $49bb: $87
	rlca                                             ; $49bc: $07
	ld b, b                                          ; $49bd: $40
	rlca                                             ; $49be: $07
	db $fc                                           ; $49bf: $fc
	sub l                                            ; $49c0: $95
	db $fd                                           ; $49c1: $fd
	ld [bc], a                                       ; $49c2: $02
	cp a                                             ; $49c3: $bf
	ld b, b                                          ; $49c4: $40
	ei                                               ; $49c5: $fb
	inc b                                            ; $49c6: $04
	rst AddAOntoHL                                          ; $49c7: $ef
	db $10                                           ; $49c8: $10
	rst $38                                          ; $49c9: $ff
	nop                                              ; $49ca: $00
	ld [hl], a                                       ; $49cb: $77
	ld hl, sp+$7f                                    ; $49cc: $f8 $7f
	ld a, [$ec7f]                                    ; $49ce: $fa $7f $ec
	ld a, a                                          ; $49d1: $7f
	db $fc                                           ; $49d2: $fc
	sub a                                            ; $49d3: $97
	or a                                             ; $49d4: $b7
	ld c, b                                          ; $49d5: $48
	cp $01                                           ; $49d6: $fe $01
	ld a, a                                          ; $49d8: $7f
	add b                                            ; $49d9: $80
	rst FarCall                                          ; $49da: $f7
	ld [$8e6f], sp                                   ; $49db: $08 $6f $8e
	ld [hl], a                                       ; $49de: $77
	xor $7f                                          ; $49df: $ee $7f
	ret c                                            ; $49e1: $d8

	sbc l                                            ; $49e2: $9d
	rst SubAFromDE                                          ; $49e3: $df
	jr nz, jr_027_4a5d                               ; $49e4: $20 $77

	ldh [c], a                                       ; $49e6: $e2
	ld a, e                                          ; $49e7: $7b
	ldh a, [c]                                       ; $49e8: $f2
	adc e                                            ; $49e9: $8b
	inc hl                                           ; $49ea: $23
	rst $38                                          ; $49eb: $ff
	ld bc, $21df                                     ; $49ec: $01 $df $21
	db $fd                                           ; $49ef: $fd
	inc bc                                           ; $49f0: $03
	cp $03                                           ; $49f1: $fe $03
	ld a, d                                          ; $49f3: $7a
	add a                                            ; $49f4: $87
	xor $13                                          ; $49f5: $ee $13
	cp $07                                           ; $49f7: $fe $07
	ld a, b                                          ; $49f9: $78
	rst $38                                          ; $49fa: $ff
	ld b, a                                          ; $49fb: $47
	rst $38                                          ; $49fc: $ff
	ld b, b                                          ; $49fd: $40
	ld a, e                                          ; $49fe: $7b
	cp $65                                           ; $49ff: $fe $65
	db $10                                           ; $4a01: $10
	ld a, a                                          ; $4a02: $7f
	dec a                                            ; $4a03: $3d
	sbc e                                            ; $4a04: $9b
	rst AddAOntoHL                                          ; $4a05: $ef
	ldh a, [rAUD1SWEEP]                              ; $4a06: $f0 $10
	rst AddAOntoHL                                          ; $4a08: $ef
	ld l, [hl]                                       ; $4a09: $6e
	ld de, $0d77                                     ; $4a0a: $11 $77 $0d
	ld [hl], a                                       ; $4a0d: $77
	cp l                                             ; $4a0e: $bd
	sbc h                                            ; $4a0f: $9c
	ldh [rIE], a                                     ; $4a10: $e0 $ff
	rra                                              ; $4a12: $1f
	ld h, e                                          ; $4a13: $63
	ccf                                              ; $4a14: $3f
	ld l, a                                          ; $4a15: $6f
	add hl, de                                       ; $4a16: $19
	ld a, e                                          ; $4a17: $7b
	xor $7b                                          ; $4a18: $ee $7b
	ld a, [$dc77]                                    ; $4a1a: $fa $77 $dc
	ld [hl], a                                       ; $4a1d: $77
	pop af                                           ; $4a1e: $f1
	sbc e                                            ; $4a1f: $9b
	jp $3c3f                                         ; $4a20: $c3 $3f $3c


	rst $38                                          ; $4a23: $ff
	ld h, l                                          ; $4a24: $65
	ldh [rPCM34], a                                  ; $4a25: $e0 $77
	inc c                                            ; $4a27: $0c
	rst SubAFromDE                                          ; $4a28: $df
	rst $38                                          ; $4a29: $ff
	ld e, d                                          ; $4a2a: $5a
	sbc h                                            ; $4a2b: $9c
	rst $38                                          ; $4a2c: $ff
	sbc h                                            ; $4a2d: $9c
	rst $38                                          ; $4a2e: $ff
	ld a, a                                          ; $4a2f: $7f
	add b                                            ; $4a30: $80
	ld e, a                                          ; $4a31: $5f
	rst AddAOntoHL                                          ; $4a32: $ef
	sbc e                                            ; $4a33: $9b
	push hl                                          ; $4a34: $e5
	ld e, $07                                        ; $4a35: $1e $07
	db $fc                                           ; $4a37: $fc
	ld l, a                                          ; $4a38: $6f
	ld b, $6f                                        ; $4a39: $06 $6f
	cp $03                                           ; $4a3b: $fe $03
	ld b, b                                          ; $4a3d: $40
	ld c, e                                          ; $4a3e: $4b
	ld b, b                                          ; $4a3f: $40
	ccf                                              ; $4a40: $3f
	ldh a, [$03]                                     ; $4a41: $f0 $03
	cp $53                                           ; $4a43: $fe $53
	cp $7e                                           ; $4a45: $fe $7e
	ld hl, $ff9d                                     ; $4a47: $21 $9d $ff
	rlca                                             ; $4a4a: $07
	ld a, c                                          ; $4a4b: $79
	ccf                                              ; $4a4c: $3f
	ld a, c                                          ; $4a4d: $79
	ld hl, $1f79                                     ; $4a4e: $21 $79 $1f
	ld a, a                                          ; $4a51: $7f
	ld [hl], l                                       ; $4a52: $75
	sbc [hl]                                         ; $4a53: $9e
	rlca                                             ; $4a54: $07
	ld [hl], a                                       ; $4a55: $77
	inc c                                            ; $4a56: $0c
	ld a, e                                          ; $4a57: $7b
	ld c, a                                          ; $4a58: $4f
	sub a                                            ; $4a59: $97
	rst $38                                          ; $4a5a: $ff
	add hl, sp                                       ; $4a5b: $39
	rst $38                                          ; $4a5c: $ff

jr_027_4a5d:
	ld sp, $61ff                                     ; $4a5d: $31 $ff $61
	rst $38                                          ; $4a60: $ff
	ld h, e                                          ; $4a61: $63
	ld [hl], e                                       ; $4a62: $73
	ld d, h                                          ; $4a63: $54
	ld a, a                                          ; $4a64: $7f
	add d                                            ; $4a65: $82
	sbc h                                            ; $4a66: $9c
	sbc $e1                                          ; $4a67: $de $e1
	rst $38                                          ; $4a69: $ff
	ld a, e                                          ; $4a6a: $7b
	add sp, -$65                                     ; $4a6b: $e8 $9b
	inc a                                            ; $4a6d: $3c
	jp $c33c                                         ; $4a6e: $c3 $3c $c3


	ld e, l                                          ; $4a71: $5d
	call nc, $e399                                   ; $4a72: $d4 $99 $e3
	rst $38                                          ; $4a75: $ff
	ret nz                                           ; $4a76: $c0

	rst $38                                          ; $4a77: $ff
	pop bc                                           ; $4a78: $c1
	cp $64                                           ; $4a79: $fe $64
	push af                                          ; $4a7b: $f5
	sbc b                                            ; $4a7c: $98
	or e                                             ; $4a7d: $b3
	rst GetHLinHL                                          ; $4a7e: $cf
	rst $38                                          ; $4a7f: $ff
	rst $38                                          ; $4a80: $ff
	inc a                                            ; $4a81: $3c
	rst $38                                          ; $4a82: $ff
	sbc b                                            ; $4a83: $98
	ld l, c                                          ; $4a84: $69
	add sp, -$64                                     ; $4a85: $e8 $9c
	adc a                                            ; $4a87: $8f
	ld a, a                                          ; $4a88: $7f
	rst $38                                          ; $4a89: $ff
	ld a, e                                          ; $4a8a: $7b
	cp d                                             ; $4a8b: $ba
	sbc e                                            ; $4a8c: $9b
	ld c, $ff                                        ; $4a8d: $0e $ff
	ld h, a                                          ; $4a8f: $67
	sbc [hl]                                         ; $4a90: $9e
	ld l, a                                          ; $4a91: $6f
	jp nc, $819a                                     ; $4a92: $d2 $9a $81

	cp $f8                                           ; $4a95: $fe $f8
	rst $38                                          ; $4a97: $ff
	ccf                                              ; $4a98: $3f
	ld a, e                                          ; $4a99: $7b
	ldh [c], a                                       ; $4a9a: $e2
	sbc l                                            ; $4a9b: $9d
	reti                                             ; $4a9c: $d9


	ld a, $67                                        ; $4a9d: $3e $67
	adc b                                            ; $4a9f: $88
	ld a, a                                          ; $4aa0: $7f
	ldh a, [c]                                       ; $4aa1: $f2
	adc c                                            ; $4aa2: $89
	ld sp, hl                                        ; $4aa3: $f9
	rst $38                                          ; $4aa4: $ff
	db $e3                                           ; $4aa5: $e3
	ld a, l                                          ; $4aa6: $7d
	xor $71                                          ; $4aa7: $ee $71
	rst $38                                          ; $4aa9: $ff
	inc b                                            ; $4aaa: $04
	rst FarCall                                          ; $4aab: $f7
	inc c                                            ; $4aac: $0c
	rst AddAOntoHL                                          ; $4aad: $ef
	inc e                                            ; $4aae: $1c
	ld a, a                                          ; $4aaf: $7f
	ldh a, [$df]                                     ; $4ab0: $f0 $df
	ldh a, [$bf]                                     ; $4ab2: $f0 $bf
	ret nc                                           ; $4ab4: $d0

	cp a                                             ; $4ab5: $bf
	ret nc                                           ; $4ab6: $d0

	xor a                                            ; $4ab7: $af
	ret c                                            ; $4ab8: $d8

	inc bc                                           ; $4ab9: $03
	ld c, [hl]                                       ; $4aba: $4e
	inc bc                                           ; $4abb: $03
	cp $03                                           ; $4abc: $fe $03
	cp $4b                                           ; $4abe: $fe $4b
	nop                                              ; $4ac0: $00
	ld a, l                                          ; $4ac1: $7d
	dec h                                            ; $4ac2: $25
	sbc [hl]                                         ; $4ac3: $9e
	ld sp, hl                                        ; $4ac4: $f9
	ld a, e                                          ; $4ac5: $7b
	cp $8e                                           ; $4ac6: $fe $8e
	pop af                                           ; $4ac8: $f1
	rra                                              ; $4ac9: $1f
	di                                               ; $4aca: $f3
	rra                                              ; $4acb: $1f
	ldh a, [c]                                       ; $4acc: $f2
	rra                                              ; $4acd: $1f
	ldh [c], a                                       ; $4ace: $e2
	ccf                                              ; $4acf: $3f
	jp $c2ff                                         ; $4ad0: $c3 $ff $c2


	rst $38                                          ; $4ad3: $ff
	add d                                            ; $4ad4: $82
	rst $38                                          ; $4ad5: $ff
	add [hl]                                         ; $4ad6: $86
	rst $38                                          ; $4ad7: $ff
	ld b, $7b                                        ; $4ad8: $06 $7b
	cp $7e                                           ; $4ada: $fe $7e
	xor a                                            ; $4adc: $af
	sub c                                            ; $4add: $91
	dec c                                            ; $4ade: $0d
	cp $3c                                           ; $4adf: $fe $3c
	jp $837c                                         ; $4ae1: $c3 $7c $83


	ld a, c                                          ; $4ae4: $79
	add a                                            ; $4ae5: $87
	ld a, c                                          ; $4ae6: $79
	add a                                            ; $4ae7: $87
	ld sp, hl                                        ; $4ae8: $f9
	rlca                                             ; $4ae9: $07
	pop af                                           ; $4aea: $f1
	rrca                                             ; $4aeb: $0f
	ld [hl], a                                       ; $4aec: $77
	cp $9b                                           ; $4aed: $fe $9b
	adc a                                            ; $4aef: $8f
	ldh a, [$bf]                                     ; $4af0: $f0 $bf
	ret nz                                           ; $4af2: $c0

	ld [hl], a                                       ; $4af3: $77
	cp $65                                           ; $4af4: $fe $65
	xor $9d                                          ; $4af6: $ee $9d
	add hl, de                                       ; $4af8: $19
	cp $6f                                           ; $4af9: $fe $6f
	cp $9e                                           ; $4afb: $fe $9e
	ld de, $fe73                                     ; $4afd: $11 $73 $fe
	sbc e                                            ; $4b00: $9b
	inc de                                           ; $4b01: $13
	db $fc                                           ; $4b02: $fc
	push hl                                          ; $4b03: $e5
	ld e, $77                                        ; $4b04: $1e $77
	cp $9d                                           ; $4b06: $fe $9d
	push af                                          ; $4b08: $f5
	ld c, $67                                        ; $4b09: $0e $67
	cp $9d                                           ; $4b0b: $fe $9d
	srl h                                            ; $4b0d: $cb $3c
	ld c, a                                          ; $4b0f: $4f
	cp $9d                                           ; $4b10: $fe $9d
	xor a                                            ; $4b12: $af
	ld [hl], b                                       ; $4b13: $70
	ld c, a                                          ; $4b14: $4f
	cp $9d                                           ; $4b15: $fe $9d
	cp a                                             ; $4b17: $bf
	ret z                                            ; $4b18: $c8

	ld d, a                                          ; $4b19: $57
	cp $9d                                           ; $4b1a: $fe $9d
	rst $38                                          ; $4b1c: $ff
	ret z                                            ; $4b1d: $c8

	inc bc                                           ; $4b1e: $03
	ld c, [hl]                                       ; $4b1f: $4e
	inc bc                                           ; $4b20: $03
	cp $03                                           ; $4b21: $fe $03
	cp $53                                           ; $4b23: $fe $53
	cp $7c                                           ; $4b25: $fe $7c
	add c                                            ; $4b27: $81
	ld a, a                                          ; $4b28: $7f
	cp $9a                                           ; $4b29: $fe $9a
	db $e4                                           ; $4b2b: $e4
	ccf                                              ; $4b2c: $3f
	call z, $c87f                                    ; $4b2d: $cc $7f $c8
	ld a, e                                          ; $4b30: $7b
	cp $9c                                           ; $4b31: $fe $9c
	ret c                                            ; $4b33: $d8

	ld a, a                                          ; $4b34: $7f
	sbc b                                            ; $4b35: $98
	ld a, e                                          ; $4b36: $7b
	ld c, $8e                                        ; $4b37: $0e $8e
	add hl, bc                                       ; $4b39: $09
	cp $0b                                           ; $4b3a: $fe $0b
	db $fc                                           ; $4b3c: $fc
	dec bc                                           ; $4b3d: $0b
	db $fc                                           ; $4b3e: $fc
	dec de                                           ; $4b3f: $1b
	db $fc                                           ; $4b40: $fc
	inc de                                           ; $4b41: $13
	db $fc                                           ; $4b42: $fc
	scf                                              ; $4b43: $37
	ld hl, sp+$37                                    ; $4b44: $f8 $37
	ld hl, sp-$1d                                    ; $4b46: $f8 $e3
	rra                                              ; $4b48: $1f
	ldh [c], a                                       ; $4b49: $e2
	ld [hl], e                                       ; $4b4a: $73
	cp $9d                                           ; $4b4b: $fe $9d
	and $1f                                          ; $4b4d: $e6 $1f
	ld a, b                                          ; $4b4f: $78
	ld e, e                                          ; $4b50: $5b
	ld a, e                                          ; $4b51: $7b
	cp $6a                                           ; $4b52: $fe $6a
	rra                                              ; $4b54: $1f
	sbc d                                            ; $4b55: $9a
	add b                                            ; $4b56: $80
	ld a, [hl]                                       ; $4b57: $7e
	add c                                            ; $4b58: $81
	ld a, [hl]                                       ; $4b59: $7e
	add c                                            ; $4b5a: $81
	ld [hl], h                                       ; $4b5b: $74
	ld [hl], $7f                                     ; $4b5c: $36 $7f
	jp c, $fe57                                      ; $4b5e: $da $57 $fe

	sbc l                                            ; $4b61: $9d
	inc sp                                           ; $4b62: $33
	db $fc                                           ; $4b63: $fc
	ld h, a                                          ; $4b64: $67
	ld [$f79e], sp                                   ; $4b65: $08 $9e $f7
	ld [hl], e                                       ; $4b68: $73
	cp $9b                                           ; $4b69: $fe $9b
	di                                               ; $4b6b: $f3
	ld c, $d3                                        ; $4b6c: $0e $d3
	inc a                                            ; $4b6e: $3c
	ld c, a                                          ; $4b6f: $4f
	cp $67                                           ; $4b70: $fe $67
	ld [$ef9d], sp                                   ; $4b72: $08 $9d $ef
	jr nc, jr_027_4be6                               ; $4b75: $30 $6f

	cp $7f                                           ; $4b77: $fe $7f
	adc c                                            ; $4b79: $89
	sub a                                            ; $4b7a: $97
	ld d, a                                          ; $4b7b: $57
	db $ec                                           ; $4b7c: $ec
	rst SubAFromHL                                          ; $4b7d: $d7
	ld l, h                                          ; $4b7e: $6c
	rst SubAFromHL                                          ; $4b7f: $d7
	ld l, h                                          ; $4b80: $6c
	rst SubAFromDE                                          ; $4b81: $df
	ld h, h                                          ; $4b82: $64
	ld l, a                                          ; $4b83: $6f
	cp $03                                           ; $4b84: $fe $03
	ld c, [hl]                                       ; $4b86: $4e
	inc bc                                           ; $4b87: $03
	cp $03                                           ; $4b88: $fe $03
	cp $7f                                           ; $4b8a: $fe $7f
	cp $79                                           ; $4b8c: $fe $79
	db $10                                           ; $4b8e: $10
	ld h, l                                          ; $4b8f: $65
	inc c                                            ; $4b90: $0c
	sbc b                                            ; $4b91: $98
	sub b                                            ; $4b92: $90
	rst $38                                          ; $4b93: $ff
	or b                                             ; $4b94: $b0
	rst $38                                          ; $4b95: $ff
	jr nc, @+$01                                     ; $4b96: $30 $ff

	jr nz, jr_027_4c15                               ; $4b98: $20 $7b

	cp $9c                                           ; $4b9a: $fe $9c
	ld h, b                                          ; $4b9c: $60
	rst $38                                          ; $4b9d: $ff
	ld b, b                                          ; $4b9e: $40
	ld a, e                                          ; $4b9f: $7b
	cp $98                                           ; $4ba0: $fe $98
	daa                                              ; $4ba2: $27
	ld hl, sp+$27                                    ; $4ba3: $f8 $27
	ld hl, sp+$2f                                    ; $4ba5: $f8 $2f
	ldh a, [$6f]                                     ; $4ba7: $f0 $6f
	ld a, e                                          ; $4ba9: $7b
	cp $9e                                           ; $4baa: $fe $9e
	ld c, a                                          ; $4bac: $4f
	ld [hl], e                                       ; $4bad: $73
	cp $7f                                           ; $4bae: $fe $7f
	ld c, $9a                                        ; $4bb0: $0e $9a
	adc h                                            ; $4bb2: $8c
	ld a, a                                          ; $4bb3: $7f
	adc h                                            ; $4bb4: $8c
	ld a, a                                          ; $4bb5: $7f
	adc b                                            ; $4bb6: $88
	ld a, e                                          ; $4bb7: $7b
	cp $7c                                           ; $4bb8: $fe $7c
	add c                                            ; $4bba: $81
	ld a, [hl]                                       ; $4bbb: $7e
	and $7f                                          ; $4bbc: $e6 $7f
	cp $77                                           ; $4bbe: $fe $77
	inc c                                            ; $4bc0: $0c
	ld d, a                                          ; $4bc1: $57
	cp $9d                                           ; $4bc2: $fe $9d
	inc hl                                           ; $4bc4: $23
	db $fc                                           ; $4bc5: $fc
	ld c, a                                          ; $4bc6: $4f
	cp $7f                                           ; $4bc7: $fe $7f
	ld c, $4f                                        ; $4bc9: $0e $4f
	cp $7f                                           ; $4bcb: $fe $7f
	ld c, $99                                        ; $4bcd: $0e $99
	sub e                                            ; $4bcf: $93
	ld a, h                                          ; $4bd0: $7c
	sub e                                            ; $4bd1: $93
	ld a, h                                          ; $4bd2: $7c
	sub a                                            ; $4bd3: $97
	ld a, b                                          ; $4bd4: $78
	ld h, a                                          ; $4bd5: $67
	cp $67                                           ; $4bd6: $fe $67
	ld [$fe67], sp                                   ; $4bd8: $08 $67 $fe
	ld [hl], a                                       ; $4bdb: $77
	inc c                                            ; $4bdc: $0c
	sbc h                                            ; $4bdd: $9c
	rst GetHLinHL                                          ; $4bde: $cf
	ld [hl], h                                       ; $4bdf: $74
	xor a                                            ; $4be0: $af
	ld h, e                                          ; $4be1: $63
	cp $03                                           ; $4be2: $fe $03
	ld b, h                                          ; $4be4: $44
	dec bc                                           ; $4be5: $0b

jr_027_4be6:
	cp $1b                                           ; $4be6: $fe $1b
	nop                                              ; $4be8: $00
	sbc $33                                          ; $4be9: $de $33
	sbc l                                            ; $4beb: $9d
	ld h, [hl]                                       ; $4bec: $66
	dec [hl]                                         ; $4bed: $35
	db $db                                           ; $4bee: $db
	inc sp                                           ; $4bef: $33
	rst SubAFromDE                                          ; $4bf0: $df
	ld d, l                                          ; $4bf1: $55
	sbc [hl]                                         ; $4bf2: $9e
	ld d, e                                          ; $4bf3: $53
	inc sp                                           ; $4bf4: $33
	ld hl, sp-$64                                    ; $4bf5: $f8 $9c
	dec [hl]                                         ; $4bf7: $35
	ld d, l                                          ; $4bf8: $55
	ld d, l                                          ; $4bf9: $55
	ld l, e                                          ; $4bfa: $6b
	ld hl, sp+$6f                                    ; $4bfb: $f8 $6f
	ldh a, [$03]                                     ; $4bfd: $f0 $03
	rst $38                                          ; $4bff: $ff
	push de                                          ; $4c00: $d5
	inc sp                                           ; $4c01: $33
	pop bc                                           ; $4c02: $c1
	add b                                            ; $4c03: $80
	sbc l                                            ; $4c04: $9d
	adc b                                            ; $4c05: $88
	ld [hl+], a                                      ; $4c06: $22
	ld l, a                                          ; $4c07: $6f
	cp $9d                                           ; $4c08: $fe $9d
	ld [hl], a                                       ; $4c0a: $77
	db $dd                                           ; $4c0b: $dd
	ld l, a                                          ; $4c0c: $6f
	cp $47                                           ; $4c0d: $fe $47
	ldh a, [$80]                                     ; $4c0f: $f0 $80
	sub b                                            ; $4c11: $90
	scf                                              ; $4c12: $37
	sub a                                            ; $4c13: $97
	scf                                              ; $4c14: $37

jr_027_4c15:
	or a                                             ; $4c15: $b7
	dec sp                                           ; $4c16: $3b
	cp e                                             ; $4c17: $bb
	ccf                                              ; $4c18: $3f
	ld a, a                                          ; $4c19: $7f
	ret c                                            ; $4c1a: $d8

	ld a, b                                          ; $4c1b: $78
	ld hl, sp+$78                                    ; $4c1c: $f8 $78
	db $fc                                           ; $4c1e: $fc
	ld a, h                                          ; $4c1f: $7c
	db $fc                                           ; $4c20: $fc
	inc b                                            ; $4c21: $04
	add d                                            ; $4c22: $82
	pop hl                                           ; $4c23: $e1
	ld hl, sp+$7c                                    ; $4c24: $f8 $7c
	ld a, $3f                                        ; $4c26: $3e $3f
	dec e                                            ; $4c28: $1d
	rst $38                                          ; $4c29: $ff
	ld a, a                                          ; $4c2a: $7f
	rra                                              ; $4c2b: $1f
	rlca                                             ; $4c2c: $07
	add e                                            ; $4c2d: $83
	pop bc                                           ; $4c2e: $c1
	ret nz                                           ; $4c2f: $c0

	adc h                                            ; $4c30: $8c
	ldh [c], a                                       ; $4c31: $e2
	ld c, h                                          ; $4c32: $4c
	ld c, h                                          ; $4c33: $4c
	ld h, $a6                                        ; $4c34: $26 $a6
	ld d, e                                          ; $4c36: $53
	inc sp                                           ; $4c37: $33
	dec sp                                           ; $4c38: $3b
	sbc a                                            ; $4c39: $9f
	di                                               ; $4c3a: $f3
	di                                               ; $4c3b: $f3
	ld sp, hl                                        ; $4c3c: $f9
	ld sp, hl                                        ; $4c3d: $f9
	db $fc                                           ; $4c3e: $fc
	db $fc                                           ; $4c3f: $fc
	db $f4                                           ; $4c40: $f4
	ld [hl], b                                       ; $4c41: $70
	rrca                                             ; $4c42: $0f
	inc c                                            ; $4c43: $0c
	sbc $08                                          ; $4c44: $de $08
	sbc e                                            ; $4c46: $9b
	inc c                                            ; $4c47: $0c
	inc b                                            ; $4c48: $04
	ld b, $ff                                        ; $4c49: $06 $ff
	call c, $dff8                                    ; $4c4b: $dc $f8 $df
	db $fc                                           ; $4c4e: $fc
	adc [hl]                                         ; $4c4f: $8e
	rst $38                                          ; $4c50: $ff
	rra                                              ; $4c51: $1f
	ld bc, $0901                                     ; $4c52: $01 $01 $09
	rrca                                             ; $4c55: $0f
	rra                                              ; $4c56: $1f
	ld a, a                                          ; $4c57: $7f
	db $eb                                           ; $4c58: $eb
	rra                                              ; $4c59: $1f
	add hl, bc                                       ; $4c5a: $09
	add hl, sp                                       ; $4c5b: $39

jr_027_4c5c:
	dec bc                                           ; $4c5c: $0b
	rra                                              ; $4c5d: $1f
	jr c, jr_027_4cc8                                ; $4c5e: $38 $68

	jp nz, $01dd                                     ; $4c60: $c2 $dd $01

	adc a                                            ; $4c63: $8f
	pop bc                                           ; $4c64: $c1
	pop af                                           ; $4c65: $f1
	rst $38                                          ; $4c66: $ff
	jp $e101                                         ; $4c67: $c3 $01 $e1


	add c                                            ; $4c6a: $81
	ld bc, $7bc1                                     ; $4c6b: $01 $c1 $7b
	rrca                                             ; $4c6e: $0f
	adc a                                            ; $4c6f: $8f
	ld c, a                                          ; $4c70: $4f
	rst JumpTable                                          ; $4c71: $c7
	rst SubAFromBC                                          ; $4c72: $e7
	db $e3                                           ; $4c73: $e3
	ld a, e                                          ; $4c74: $7b
	jp $f0df                                         ; $4c75: $c3 $df $f0


	sub c                                            ; $4c78: $91
	ld a, b                                          ; $4c79: $78
	jr c, jr_027_4cb8                                ; $4c7a: $38 $3c

	inc e                                            ; $4c7c: $1c
	inc e                                            ; $4c7d: $1c
	ld c, $01                                        ; $4c7e: $0e $01
	add b                                            ; $4c80: $80
	add c                                            ; $4c81: $81
	ld b, c                                          ; $4c82: $41
	ld b, c                                          ; $4c83: $41
	inc hl                                           ; $4c84: $23
	ld h, $3a                                        ; $4c85: $26 $3a
	sbc $81                                          ; $4c87: $de $81
	sub b                                            ; $4c89: $90
	pop bc                                           ; $4c8a: $c1
	jp $efe7                                         ; $4c8b: $c3 $e7 $ef


	rst $38                                          ; $4c8e: $ff
	di                                               ; $4c8f: $f3
	add c                                            ; $4c90: $81
	add b                                            ; $4c91: $80
	adc a                                            ; $4c92: $8f
	cp $38                                           ; $4c93: $fe $38
	nop                                              ; $4c95: $00
	ld bc, $fe0c                                     ; $4c96: $01 $0c $fe
	call c, $82ff                                    ; $4c99: $dc $ff $82
	cp $e8                                           ; $4c9c: $fe $e8
	or e                                             ; $4c9e: $b3
	rst SubAFromDE                                          ; $4c9f: $df
	ccf                                              ; $4ca0: $3f
	ld a, a                                          ; $4ca1: $7f
	ld a, a                                          ; $4ca2: $7f
	rst $38                                          ; $4ca3: $ff
	rst $38                                          ; $4ca4: $ff
	rra                                              ; $4ca5: $1f
	ld a, h                                          ; $4ca6: $7c
	ldh [$c0], a                                     ; $4ca7: $e0 $c0
	add b                                            ; $4ca9: $80
	add b                                            ; $4caa: $80

jr_027_4cab:
	nop                                              ; $4cab: $00
	nop                                              ; $4cac: $00
	or $ee                                           ; $4cad: $f6 $ee
	cp $fd                                           ; $4caf: $fe $fd
	ei                                               ; $4cb1: $fb
	rst FarCall                                          ; $4cb2: $f7
	rst FarCall                                          ; $4cb3: $f7
	or $1b                                           ; $4cb4: $f6 $1b
	dec de                                           ; $4cb6: $1b
	dec bc                                           ; $4cb7: $0b

jr_027_4cb8:
	dec bc                                           ; $4cb8: $0b
	db $dd                                           ; $4cb9: $dd
	dec c                                            ; $4cba: $0d
	ld l, e                                          ; $4cbb: $6b
	ld b, b                                          ; $4cbc: $40
	sbc [hl]                                         ; $4cbd: $9e
	and d                                            ; $4cbe: $a2
	daa                                              ; $4cbf: $27
	jr nc, @+$49                                     ; $4cc0: $30 $47

	ldh a, [$0a]                                     ; $4cc2: $f0 $0a
	nop                                              ; $4cc4: $00
	rst SubAFromDE                                          ; $4cc5: $df
	inc sp                                           ; $4cc6: $33
	sbc h                                            ; $4cc7: $9c

jr_027_4cc8:
	dec [hl]                                         ; $4cc8: $35
	ld d, l                                          ; $4cc9: $55
	dec [hl]                                         ; $4cca: $35
	sbc $33                                          ; $4ccb: $de $33
	db $e4                                           ; $4ccd: $e4
	add b                                            ; $4cce: $80
	rst $38                                          ; $4ccf: $ff
	sbc h                                            ; $4cd0: $9c
	inc b                                            ; $4cd1: $04
	jr nz, jr_027_4c5c                               ; $4cd2: $20 $88

	cp a                                             ; $4cd4: $bf
	ld [hl+], a                                      ; $4cd5: $22
	rst $38                                          ; $4cd6: $ff
	add b                                            ; $4cd7: $80
	rst $38                                          ; $4cd8: $ff
	ei                                               ; $4cd9: $fb
	rst SubAFromDE                                          ; $4cda: $df
	ld [hl], a                                       ; $4cdb: $77
	rst $38                                          ; $4cdc: $ff
	db $dd                                           ; $4cdd: $dd
	rst $38                                          ; $4cde: $ff
	nop                                              ; $4cdf: $00
	nop                                              ; $4ce0: $00
	ld [$0180], sp                                   ; $4ce1: $08 $80 $01
	ld c, b                                          ; $4ce4: $48
	nop                                              ; $4ce5: $00
	ld [hl+], a                                      ; $4ce6: $22
	rst $38                                          ; $4ce7: $ff
	rst $38                                          ; $4ce8: $ff
	rst FarCall                                          ; $4ce9: $f7
	ld a, a                                          ; $4cea: $7f
	cp $b7                                           ; $4ceb: $fe $b7
	rst $38                                          ; $4ced: $ff
	db $dd                                           ; $4cee: $dd
	ld bc, $0402                                     ; $4cef: $01 $02 $04
	inc h                                            ; $4cf2: $24
	adc a                                            ; $4cf3: $8f
	ld [$1030], sp                                   ; $4cf4: $08 $30 $10
	sbc $ff                                          ; $4cf7: $de $ff
	sub b                                            ; $4cf9: $90
	rst SubAFromDE                                          ; $4cfa: $df
	ld a, a                                          ; $4cfb: $7f
	rst $38                                          ; $4cfc: $ff
	rst SubAFromDE                                          ; $4cfd: $df
	rst $38                                          ; $4cfe: $ff

Call_027_4cff:
	db $e3                                           ; $4cff: $e3
	ld de, $0408                                     ; $4d00: $11 $08 $04
	ld [bc], a                                       ; $4d03: $02
	pop bc                                           ; $4d04: $c1
	jr nc, jr_027_4d0f                               ; $4d05: $30 $08

	db $fc                                           ; $4d07: $fc
	cp $db                                           ; $4d08: $fe $db
	rst $38                                          ; $4d0a: $ff
	adc a                                            ; $4d0b: $8f
	add c                                            ; $4d0c: $81
	pop bc                                           ; $4d0d: $c1
	ret nz                                           ; $4d0e: $c0

jr_027_4d0f:
	ld h, b                                          ; $4d0f: $60

jr_027_4d10:
	ld [hl], b                                       ; $4d10: $70
	jr nc, jr_027_4cab                               ; $4d11: $30 $98

	sbc b                                            ; $4d13: $98
	ld a, a                                          ; $4d14: $7f
	ccf                                              ; $4d15: $3f
	ccf                                              ; $4d16: $3f
	sbc a                                            ; $4d17: $9f
	adc a                                            ; $4d18: $8f
	rst GetHLinHL                                          ; $4d19: $cf
	rst SubAFromBC                                          ; $4d1a: $e7
	rst SubAFromBC                                          ; $4d1b: $e7
	sbc $ff                                          ; $4d1c: $de $ff
	ld a, a                                          ; $4d1e: $7f
	push af                                          ; $4d1f: $f5
	add b                                            ; $4d20: $80
	rra                                              ; $4d21: $1f
	rrca                                             ; $4d22: $0f
	inc bc                                           ; $4d23: $03
	inc sp                                           ; $4d24: $33
	ld de, $cc99                                     ; $4d25: $11 $99 $cc
	db $e4                                           ; $4d28: $e4
	ldh a, [c]                                       ; $4d29: $f2
	db $fd                                           ; $4d2a: $fd
	rst $38                                          ; $4d2b: $ff
	ld a, h                                          ; $4d2c: $7c
	inc h                                            ; $4d2d: $24
	cp h                                             ; $4d2e: $bc
	sbc b                                            ; $4d2f: $98
	call nc, $236d                                   ; $4d30: $d4 $6d $23
	sub e                                            ; $4d33: $93
	sub e                                            ; $4d34: $93
	db $db                                           ; $4d35: $db
	set 5, a                                         ; $4d36: $cb $ef
	rst AddAOntoHL                                          ; $4d38: $ef
	rst FarCall                                          ; $4d39: $f7
	rst $38                                          ; $4d3a: $ff
	rst $38                                          ; $4d3b: $ff

jr_027_4d3c:
	ldh [$e3], a                                     ; $4d3c: $e0 $e3
	db $fc                                           ; $4d3e: $fc
	add sp, -$67                                     ; $4d3f: $e8 $99
	db $e4                                           ; $4d41: $e4
	ldh [c], a                                       ; $4d42: $e2
	pop hl                                           ; $4d43: $e1
	db $fd                                           ; $4d44: $fd
	and b                                            ; $4d45: $a0
	and e                                            ; $4d46: $a3
	sbc $bf                                          ; $4d47: $de $bf
	sbc $7f                                          ; $4d49: $de $7f
	add e                                            ; $4d4b: $83
	ret nz                                           ; $4d4c: $c0

	ccf                                              ; $4d4d: $3f
	jr nz, jr_027_4d10                               ; $4d4e: $20 $c0

	rst SubAFromDE                                          ; $4d50: $df
	sbc a                                            ; $4d51: $9f
	rra                                              ; $4d52: $1f
	sbc a                                            ; $4d53: $9f
	rst $38                                          ; $4d54: $ff
	ret nz                                           ; $4d55: $c0

	ret nz                                           ; $4d56: $c0

	nop                                              ; $4d57: $00
	nop                                              ; $4d58: $00
	ld h, b                                          ; $4d59: $60
	ldh [$e0], a                                     ; $4d5a: $e0 $e0
	ld a, a                                          ; $4d5c: $7f
	rr l                                             ; $4d5d: $cb $1d
	dec e                                            ; $4d5f: $1d
	and $e4                                          ; $4d60: $e6 $e4
	and $bf                                          ; $4d62: $e6 $bf
	rst $38                                          ; $4d64: $ff
	ccf                                              ; $4d65: $3f
	rlca                                             ; $4d66: $07
	rlca                                             ; $4d67: $07
	sbc $1f                                          ; $4d68: $de $1f
	add b                                            ; $4d6a: $80
	ld a, a                                          ; $4d6b: $7f
	nop                                              ; $4d6c: $00
	inc bc                                           ; $4d6d: $03
	adc a                                            ; $4d6e: $8f
	or a                                             ; $4d6f: $b7
	rst JumpTable                                          ; $4d70: $c7
	ld [bc], a                                       ; $4d71: $02
	inc c                                            ; $4d72: $0c
	db $fd                                           ; $4d73: $fd
	nop                                              ; $4d74: $00
	inc bc                                           ; $4d75: $03
	adc h                                            ; $4d76: $8c
	cp b                                             ; $4d77: $b8
	ld hl, sp-$04                                    ; $4d78: $f8 $fc
	ldh a, [rP1]                                     ; $4d7a: $f0 $00
	ldh a, [c]                                       ; $4d7c: $f2
	di                                               ; $4d7d: $f3
	rst SubAFromBC                                          ; $4d7e: $e7
	rst JumpTable                                          ; $4d7f: $c7
	adc [hl]                                         ; $4d80: $8e
	dec e                                            ; $4d81: $1d
	ld a, [hl]                                       ; $4d82: $7e
	db $fc                                           ; $4d83: $fc
	add e                                            ; $4d84: $83
	inc bc                                           ; $4d85: $03
	ld bc, $0100                                     ; $4d86: $01 $00 $01
	inc bc                                           ; $4d89: $03
	adc l                                            ; $4d8a: $8d
	inc bc                                           ; $4d8b: $03
	rlca                                             ; $4d8c: $07
	jr c, jr_027_4da3                                ; $4d8d: $38 $14

	inc e                                            ; $4d8f: $1c
	cp h                                             ; $4d90: $bc
	call c, $dc2c                                    ; $4d91: $dc $2c $dc
	ld a, [$efcf]                                    ; $4d94: $fa $cf $ef
	rst SubAFromBC                                          ; $4d97: $e7
	rst JumpTable                                          ; $4d98: $c7
	rst SubAFromBC                                          ; $4d99: $e7
	rst FarCall                                          ; $4d9a: $f7
	scf                                              ; $4d9b: $37
	rla                                              ; $4d9c: $17
	ld b, a                                          ; $4d9d: $47
	ld b, b                                          ; $4d9e: $40
	ld b, e                                          ; $4d9f: $43
	jr nz, jr_027_4d3c                               ; $4da0: $20 $9a

	db $10                                           ; $4da2: $10

jr_027_4da3:
	add h                                            ; $4da3: $84
	nop                                              ; $4da4: $00
	ld [bc], a                                       ; $4da5: $02
	jr nz, jr_027_4e23                               ; $4da6: $20 $7b

	ldh [$98], a                                     ; $4da8: $e0 $98
	rst AddAOntoHL                                          ; $4daa: $ef
	ld a, e                                          ; $4dab: $7b
	rst $38                                          ; $4dac: $ff
	db $fd                                           ; $4dad: $fd
	rst SubAFromDE                                          ; $4dae: $df
	rst $38                                          ; $4daf: $ff
	db $dd                                           ; $4db0: $dd
	add hl, bc                                       ; $4db1: $09
	nop                                              ; $4db2: $00
	rst SubAFromDE                                          ; $4db3: $df
	inc sp                                           ; $4db4: $33
	sbc l                                            ; $4db5: $9d
	scf                                              ; $4db6: $37
	ld h, a                                          ; $4db7: $67
	db $dd                                           ; $4db8: $dd
	inc sp                                           ; $4db9: $33
	sub b                                            ; $4dba: $90
	add b                                            ; $4dbb: $80
	ld sp, hl                                        ; $4dbc: $f9
	reti                                             ; $4dbd: $d9


	rst $38                                          ; $4dbe: $ff
	inc bc                                           ; $4dbf: $03
	ldh a, [rIE]                                     ; $4dc0: $f0 $ff
	sbc d                                            ; $4dc2: $9a
	ld bc, $1c06                                     ; $4dc3: $01 $06 $1c
	ld l, [hl]                                       ; $4dc6: $6e
	add a                                            ; $4dc7: $87
	call c, $80ff                                    ; $4dc8: $dc $ff $80
	ei                                               ; $4dcb: $fb
	pop af                                           ; $4dcc: $f1
	ld hl, sp+$1f                                    ; $4dcd: $f8 $1f
	ccf                                              ; $4dcf: $3f
	rst GetHLinHL                                          ; $4dd0: $cf
	rrca                                             ; $4dd1: $0f
	rlca                                             ; $4dd2: $07
	rlca                                             ; $4dd3: $07
	inc bc                                           ; $4dd4: $03
	inc bc                                           ; $4dd5: $03
	pop af                                           ; $4dd6: $f1
	ld sp, hl                                        ; $4dd7: $f9
	ld sp, hl                                        ; $4dd8: $f9
	ld hl, sp-$04                                    ; $4dd9: $f8 $fc
	db $fc                                           ; $4ddb: $fc
	cp $fe                                           ; $4ddc: $fe $fe
	push hl                                          ; $4dde: $e5
	ld [hl], b                                       ; $4ddf: $70
	ld d, d                                          ; $4de0: $52
	ld a, [$7da8]                                    ; $4de1: $fa $a8 $7d
	ld d, h                                          ; $4de4: $54
	ld l, $38                                        ; $4de5: $2e $38
	cp h                                             ; $4de7: $bc
	cp h                                             ; $4de8: $bc
	sbc h                                            ; $4de9: $9c
	add e                                            ; $4dea: $83
	sbc $ce                                          ; $4deb: $de $ce
	rst AddAOntoHL                                          ; $4ded: $ef
	rst FarCall                                          ; $4dee: $f7
	add hl, de                                       ; $4def: $19
	ld e, l                                          ; $4df0: $5d
	ld [bc], a                                       ; $4df1: $02
	xor a                                            ; $4df2: $af
	rrca                                             ; $4df3: $0f
	ld d, a                                          ; $4df4: $57
	ld b, d                                          ; $4df5: $42
	cp h                                             ; $4df6: $bc
	adc d                                            ; $4df7: $8a
	adc d                                            ; $4df8: $8a
	call Call_027_6545                               ; $4df9: $cd $45 $65
	dec h                                            ; $4dfc: $25
	dec [hl]                                         ; $4dfd: $35
	inc de                                           ; $4dfe: $13
	ld [hl], b                                       ; $4dff: $70
	ld a, b                                          ; $4e00: $78
	ld a, b                                          ; $4e01: $78
	ld a, h                                          ; $4e02: $7c
	ld a, a                                          ; $4e03: $7f
	ccf                                              ; $4e04: $3f
	and c                                            ; $4e05: $a1
	cp h                                             ; $4e06: $bc
	call c, $dec0                                    ; $4e07: $dc $c0 $de
	ldh [$dd], a                                     ; $4e0a: $e0 $dd
	inc bc                                           ; $4e0c: $03
	sbc e                                            ; $4e0d: $9b
	rlca                                             ; $4e0e: $07
	rst $38                                          ; $4e0f: $ff
	rst $38                                          ; $4e10: $ff
	ccf                                              ; $4e11: $3f
	sbc $01                                          ; $4e12: $de $01
	db $fd                                           ; $4e14: $fd
	sbc [hl]                                         ; $4e15: $9e
	ccf                                              ; $4e16: $3f
	reti                                             ; $4e17: $d9


	rst $38                                          ; $4e18: $ff
	sub e                                            ; $4e19: $93
	add hl, bc                                       ; $4e1a: $09
	ld b, $04                                        ; $4e1b: $06 $04
	add h                                            ; $4e1d: $84
	add h                                            ; $4e1e: $84
	ld b, h                                          ; $4e1f: $44
	ld [hl+], a                                      ; $4e20: $22
	sbc d                                            ; $4e21: $9a
	pop hl                                           ; $4e22: $e1

jr_027_4e23:
	pop bc                                           ; $4e23: $c1
	add c                                            ; $4e24: $81
	add b                                            ; $4e25: $80
	db $fd                                           ; $4e26: $fd
	ld l, a                                          ; $4e27: $6f
	pop hl                                           ; $4e28: $e1
	rst $38                                          ; $4e29: $ff
	db $dd                                           ; $4e2a: $dd
	rst SubAFromBC                                          ; $4e2b: $e7
	sbc e                                            ; $4e2c: $9b
	rst $38                                          ; $4e2d: $ff
	ld b, a                                          ; $4e2e: $47
	ccf                                              ; $4e2f: $3f
	ld a, d                                          ; $4e30: $7a
	db $dd                                           ; $4e31: $dd
	add c                                            ; $4e32: $81
	sub e                                            ; $4e33: $93
	ld sp, hl                                        ; $4e34: $f9
	ld a, l                                          ; $4e35: $7d
	dec [hl]                                         ; $4e36: $35
	ld h, e                                          ; $4e37: $63
	nop                                              ; $4e38: $00
	nop                                              ; $4e39: $00
	add b                                            ; $4e3a: $80
	ld b, b                                          ; $4e3b: $40
	jr nz, jr_027_4e9e                               ; $4e3c: $20 $60

	ld d, b                                          ; $4e3e: $50
	ld [hl], b                                       ; $4e3f: $70
	call c, $dfff                                    ; $4e40: $dc $ff $df
	cp a                                             ; $4e43: $bf
	sbc [hl]                                         ; $4e44: $9e
	sbc a                                            ; $4e45: $9f
	inc bc                                           ; $4e46: $03
	ld b, b                                          ; $4e47: $40
	ld c, e                                          ; $4e48: $4b
	ldh a, [$0b]                                     ; $4e49: $f0 $0b
	nop                                              ; $4e4b: $00
	rst SubAFromDE                                          ; $4e4c: $df
	inc sp                                           ; $4e4d: $33
	sbc c                                            ; $4e4e: $99
	halt                                             ; $4e4f: $76
	ld h, h                                          ; $4e50: $64
	ld b, h                                          ; $4e51: $44
	ld b, e                                          ; $4e52: $43
	inc sp                                           ; $4e53: $33
	inc sp                                           ; $4e54: $33
	add a                                            ; $4e55: $87
	add b                                            ; $4e56: $80
	ld sp, hl                                        ; $4e57: $f9
	reti                                             ; $4e58: $d9


	rst $38                                          ; $4e59: $ff
	inc bc                                           ; $4e5a: $03
	ldh a, [rWX]                                     ; $4e5b: $f0 $4b
	ldh a, [$80]                                     ; $4e5d: $f0 $80
	cp a                                             ; $4e5f: $bf
	ld a, a                                          ; $4e60: $7f
	ld a, a                                          ; $4e61: $7f
	ld e, a                                          ; $4e62: $5f
	ccf                                              ; $4e63: $3f
	cpl                                              ; $4e64: $2f
	rra                                              ; $4e65: $1f
	rra                                              ; $4e66: $1f
	ret                                              ; $4e67: $c9


	ret z                                            ; $4e68: $c8

	call z, $e4e4                                    ; $4e69: $cc $e4 $e4
	or $f2                                           ; $4e6c: $f6 $f2
	ldh a, [c]                                       ; $4e6e: $f2
	cp l                                             ; $4e6f: $bd
	sub c                                            ; $4e70: $91
	sbc h                                            ; $4e71: $9c
	jp nc, $e146                                     ; $4e72: $d2 $46 $e1

	ld [$c8a0], a                                    ; $4e75: $ea $a0 $c8
	db $ec                                           ; $4e78: $ec
	db $e4                                           ; $4e79: $e4
	db $e4                                           ; $4e7a: $e4
	ldh a, [c]                                       ; $4e7b: $f2
	ld [hl], d                                       ; $4e7c: $72
	ld [hl], c                                       ; $4e7d: $71
	adc [hl]                                         ; $4e7e: $8e
	ld a, c                                          ; $4e7f: $79
	or a                                             ; $4e80: $b7
	ld l, a                                          ; $4e81: $6f
	db $ed                                           ; $4e82: $ed
	and e                                            ; $4e83: $a3
	ld [hl], d                                       ; $4e84: $72
	ld b, d                                          ; $4e85: $42
	ld a, [hl+]                                      ; $4e86: $2a
	and c                                            ; $4e87: $a1
	db $db                                           ; $4e88: $db
	db $db                                           ; $4e89: $db
	ld c, e                                          ; $4e8a: $4b
	ld l, l                                          ; $4e8b: $6d
	dec h                                            ; $4e8c: $25
	dec [hl]                                         ; $4e8d: $35
	dec d                                            ; $4e8e: $15
	ld a, [de]                                       ; $4e8f: $1a
	sbc $ff                                          ; $4e90: $de $ff
	sbc c                                            ; $4e92: $99
	rst SubAFromBC                                          ; $4e93: $e7
	ldh [c], a                                       ; $4e94: $e2
	ldh [$f0], a                                     ; $4e95: $e0 $f0
	ld [hl], b                                       ; $4e97: $70
	add b                                            ; $4e98: $80
	cp $de                                           ; $4e99: $fe $de
	add b                                            ; $4e9b: $80
	sbc c                                            ; $4e9c: $99
	ret nz                                           ; $4e9d: $c0

jr_027_4e9e:
	rst $38                                          ; $4e9e: $ff
	rst $38                                          ; $4e9f: $ff
	rst JumpTable                                          ; $4ea0: $c7
	rlca                                             ; $4ea1: $07
	rlca                                             ; $4ea2: $07
	sbc $03                                          ; $4ea3: $de $03
	sbc d                                            ; $4ea5: $9a
	add hl, bc                                       ; $4ea6: $09
	dec b                                            ; $4ea7: $05
	rlca                                             ; $4ea8: $07
	dec b                                            ; $4ea9: $05
	inc b                                            ; $4eaa: $04
	sbc $02                                          ; $4eab: $de $02
	add a                                            ; $4ead: $87
	adc [hl]                                         ; $4eae: $8e
	ld hl, sp-$40                                    ; $4eaf: $f8 $c0
	ldh [rIE], a                                     ; $4eb1: $e0 $ff
	ei                                               ; $4eb3: $fb
	db $fd                                           ; $4eb4: $fd
	rst $38                                          ; $4eb5: $ff
	rrca                                             ; $4eb6: $0f
	jr nc, jr_027_4f19                               ; $4eb7: $30 $60

	ld b, b                                          ; $4eb9: $40
	ret nz                                           ; $4eba: $c0

	ld b, a                                          ; $4ebb: $47
	ld [hl+], a                                      ; $4ebc: $22
	db $10                                           ; $4ebd: $10
	ld [bc], a                                       ; $4ebe: $02
	ld [bc], a                                       ; $4ebf: $02
	ld [hl-], a                                      ; $4ec0: $32
	or d                                             ; $4ec1: $b2
	or e                                             ; $4ec2: $b3
	cp c                                             ; $4ec3: $b9
	reti                                             ; $4ec4: $d9


	pop af                                           ; $4ec5: $f1
	sbc $03                                          ; $4ec6: $de $03
	sbc d                                            ; $4ec8: $9a
	ld b, e                                          ; $4ec9: $43
	ld b, c                                          ; $4eca: $41
	pop bc                                           ; $4ecb: $c1
	ld h, c                                          ; $4ecc: $61
	add c                                            ; $4ecd: $81
	call c, $9c80                                    ; $4ece: $dc $80 $9c
	cp $67                                           ; $4ed1: $fe $67
	rst SubAFromBC                                          ; $4ed3: $e7
	db $db                                           ; $4ed4: $db
	rst $38                                          ; $4ed5: $ff
	rst SubAFromDE                                          ; $4ed6: $df
	add c                                            ; $4ed7: $81
	inc bc                                           ; $4ed8: $03
	ld d, b                                          ; $4ed9: $50
	dec bc                                           ; $4eda: $0b
	ldh a, [$0b]                                     ; $4edb: $f0 $0b
	nop                                              ; $4edd: $00
	rst SubAFromDE                                          ; $4ede: $df
	inc sp                                           ; $4edf: $33
	sbc c                                            ; $4ee0: $99
	halt                                             ; $4ee1: $76
	ld h, h                                          ; $4ee2: $64
	ld b, h                                          ; $4ee3: $44
	ld b, e                                          ; $4ee4: $43
	inc sp                                           ; $4ee5: $33
	inc sp                                           ; $4ee6: $33
	add l                                            ; $4ee7: $85
	add b                                            ; $4ee8: $80
	ld sp, hl                                        ; $4ee9: $f9
	reti                                             ; $4eea: $d9


	rst $38                                          ; $4eeb: $ff
	rlca                                             ; $4eec: $07
	ldh a, [$df]                                     ; $4eed: $f0 $df
	rlca                                             ; $4eef: $07
	rst SubAFromDE                                          ; $4ef0: $df
	inc bc                                           ; $4ef1: $03
	sbc $01                                          ; $4ef2: $de $01
	ld h, e                                          ; $4ef4: $63
	ldh a, [$80]                                     ; $4ef5: $f0 $80
	or l                                             ; $4ef7: $b5
	cp h                                             ; $4ef8: $bc
	xor $ea                                          ; $4ef9: $ee $ea
	ld a, d                                          ; $4efb: $7a
	rst SubAFromDE                                          ; $4efc: $df
	push af                                          ; $4efd: $f5
	db $fd                                           ; $4efe: $fd
	ld l, [hl]                                       ; $4eff: $6e
	ld h, a                                          ; $4f00: $67
	scf                                              ; $4f01: $37
	scf                                              ; $4f02: $37
	or a                                             ; $4f03: $b7
	or e                                             ; $4f04: $b3
	sbc e                                            ; $4f05: $9b
	sbc e                                            ; $4f06: $9b
	db $ed                                           ; $4f07: $ed
	db $db                                           ; $4f08: $db
	or a                                             ; $4f09: $b7
	db $fd                                           ; $4f0a: $fd
	ld l, e                                          ; $4f0b: $6b
	ld e, a                                          ; $4f0c: $5f
	ld a, c                                          ; $4f0d: $79
	xor d                                            ; $4f0e: $aa
	ld e, e                                          ; $4f0f: $5b
	ld l, l                                          ; $4f10: $6d
	ld l, h                                          ; $4f11: $6c
	ld h, $b6                                        ; $4f12: $26 $b6

jr_027_4f14:
	or e                                             ; $4f14: $b3
	sub e                                            ; $4f15: $93
	sub e                                            ; $4f16: $93
	reti                                             ; $4f17: $d9


	ld a, a                                          ; $4f18: $7f

jr_027_4f19:
	ccf                                              ; $4f19: $3f
	cp a                                             ; $4f1a: $bf
	sbc a                                            ; $4f1b: $9f
	ld e, a                                          ; $4f1c: $5f
	cpl                                              ; $4f1d: $2f
	daa                                              ; $4f1e: $27
	sub a                                            ; $4f1f: $97
	ldh [$f0], a                                     ; $4f20: $e0 $f0
	db $fc                                           ; $4f22: $fc
	call c, $99ff                                    ; $4f23: $dc $ff $99
	add b                                            ; $4f26: $80
	ret nz                                           ; $4f27: $c0

	ret nz                                           ; $4f28: $c0

	ldh [$f0], a                                     ; $4f29: $e0 $f0
	cp $6f                                           ; $4f2b: $fe $6f
	xor b                                            ; $4f2d: $a8
	sub l                                            ; $4f2e: $95
	ret nz                                           ; $4f2f: $c0

	ld hl, sp-$01                                    ; $4f30: $f8 $ff
	pop af                                           ; $4f32: $f1
	nop                                              ; $4f33: $00
	jr jr_027_4f75                                   ; $4f34: $18 $3f

	daa                                              ; $4f36: $27
	scf                                              ; $4f37: $37
	ccf                                              ; $4f38: $3f
	ld a, e                                          ; $4f39: $7b
	ldh a, [$8e]                                     ; $4f3a: $f0 $8e
	db $10                                           ; $4f3c: $10
	add hl, hl                                       ; $4f3d: $29
	ld h, $25                                        ; $4f3e: $26 $25
	dec d                                            ; $4f40: $15
	dec d                                            ; $4f41: $15
	ld a, [$cf78]                                    ; $4f42: $fa $78 $cf
	add c                                            ; $4f45: $81
	rst $38                                          ; $4f46: $ff
	add c                                            ; $4f47: $81
	adc a                                            ; $4f48: $8f
	db $fc                                           ; $4f49: $fc
	pop bc                                           ; $4f4a: $c1
	ld a, a                                          ; $4f4b: $7f
	add a                                            ; $4f4c: $87
	cp a                                             ; $4f4d: $bf
	cp $07                                           ; $4f4e: $fe $07
	adc l                                            ; $4f50: $8d
	jr c, jr_027_4f14                                ; $4f51: $38 $c1

	ld c, c                                          ; $4f53: $49
	ld c, c                                          ; $4f54: $49
	jp hl                                            ; $4f55: $e9


	dec [hl]                                         ; $4f56: $35
	db $ec                                           ; $4f57: $ec
	inc c                                            ; $4f58: $0c
	ld [hl], d                                       ; $4f59: $72
	and $db                                          ; $4f5a: $e6 $db
	jp hl                                            ; $4f5c: $e9


	db $fd                                           ; $4f5d: $fd
	dec e                                            ; $4f5e: $1d
	dec e                                            ; $4f5f: $1d
	ld b, $06                                        ; $4f60: $06 $06
	jp nz, $ddfd                                     ; $4f62: $c2 $fd $dd

	add b                                            ; $4f65: $80
	inc bc                                           ; $4f66: $03
	ld d, b                                          ; $4f67: $50
	inc bc                                           ; $4f68: $03
	ldh a, [$db]                                     ; $4f69: $f0 $db
	rst $38                                          ; $4f6b: $ff
	dec bc                                           ; $4f6c: $0b
	nop                                              ; $4f6d: $00
	rst SubAFromDE                                          ; $4f6e: $df
	inc sp                                           ; $4f6f: $33
	sbc c                                            ; $4f70: $99
	ld h, [hl]                                       ; $4f71: $66
	ld b, h                                          ; $4f72: $44
	ld b, h                                          ; $4f73: $44
	ld b, e                                          ; $4f74: $43

jr_027_4f75:
	inc sp                                           ; $4f75: $33
	inc sp                                           ; $4f76: $33
	halt                                             ; $4f77: $76
	add b                                            ; $4f78: $80
	ld sp, hl                                        ; $4f79: $f9
	reti                                             ; $4f7a: $d9


	rst $38                                          ; $4f7b: $ff
	rlca                                             ; $4f7c: $07
	ldh a, [$df]                                     ; $4f7d: $f0 $df
	rra                                              ; $4f7f: $1f
	sub a                                            ; $4f80: $97
	rla                                              ; $4f81: $17
	rrca                                             ; $4f82: $0f
	rrca                                             ; $4f83: $0f
	ld a, [bc]                                       ; $4f84: $0a
	ld c, $06                                        ; $4f85: $0e $06
	or $f6                                           ; $4f87: $f6 $f6
	sbc $fa                                          ; $4f89: $de $fa
	sbc $ff                                          ; $4f8b: $de $ff
	sbc [hl]                                         ; $4f8d: $9e
	ret z                                            ; $4f8e: $c8

	sbc $48                                          ; $4f8f: $de $48
	sbc e                                            ; $4f91: $9b
	ld c, c                                          ; $4f92: $49
	call $b5fd                                       ; $4f93: $cd $fd $b5
	db $dd                                           ; $4f96: $dd
	rst $38                                          ; $4f97: $ff
	sub b                                            ; $4f98: $90
	cp $7e                                           ; $4f99: $fe $7e
	ld l, [hl]                                       ; $4f9b: $6e
	ld l, [hl]                                       ; $4f9c: $6e
	ei                                               ; $4f9d: $fb
	rst $38                                          ; $4f9e: $ff
	cp a                                             ; $4f9f: $bf
	cp a                                             ; $4fa0: $bf
	sub l                                            ; $4fa1: $95
	sub a                                            ; $4fa2: $97
	ld d, d                                          ; $4fa3: $52
	ld e, d                                          ; $4fa4: $5a
	add $e2                                          ; $4fa5: $c6 $e2
	cp $dc                                           ; $4fa7: $fe $dc
	rst $38                                          ; $4fa9: $ff
	sub a                                            ; $4faa: $97
	ld hl, sp-$04                                    ; $4fab: $f8 $fc
	db $fc                                           ; $4fad: $fc
	cp $fe                                           ; $4fae: $fe $fe
	ld a, [hl]                                       ; $4fb0: $7e
	rst $38                                          ; $4fb1: $ff
	ld a, a                                          ; $4fb2: $7f
	db $fc                                           ; $4fb3: $fc
	rst SubAFromDE                                          ; $4fb4: $df
	add b                                            ; $4fb5: $80
	sbc [hl]                                         ; $4fb6: $9e
	ret nz                                           ; $4fb7: $c0

	pop af                                           ; $4fb8: $f1
	sub l                                            ; $4fb9: $95
	ld a, b                                          ; $4fba: $78
	ld [hl], $1c                                     ; $4fbb: $36 $1c
	nop                                              ; $4fbd: $00
	nop                                              ; $4fbe: $00
	ld l, h                                          ; $4fbf: $6c
	db $10                                           ; $4fc0: $10
	jr c, @+$06                                      ; $4fc1: $38 $04

	inc c                                            ; $4fc3: $0c
	cp $9c                                           ; $4fc4: $fe $9c
	jr c, jr_027_4fc8                                ; $4fc6: $38 $00

jr_027_4fc8:
	nop                                              ; $4fc8: $00
	sbc $01                                          ; $4fc9: $de $01
	rst SubAFromDE                                          ; $4fcb: $df
	inc bc                                           ; $4fcc: $03
	sbc h                                            ; $4fcd: $9c
	rlca                                             ; $4fce: $07
	inc c                                            ; $4fcf: $0c
	inc e                                            ; $4fd0: $1c
	db $dd                                           ; $4fd1: $dd
	ld bc, $f77b                                     ; $4fd2: $01 $7b $f7
	adc [hl]                                         ; $4fd5: $8e
	rrca                                             ; $4fd6: $0f
	ret nz                                           ; $4fd7: $c0

	ldh [$f0], a                                     ; $4fd8: $e0 $f0
	ld hl, sp-$04                                    ; $4fda: $f8 $fc
	db $f4                                           ; $4fdc: $f4
	or $d2                                           ; $4fdd: $f6 $d2
	rst $38                                          ; $4fdf: $ff
	cp a                                             ; $4fe0: $bf
	sbc a                                            ; $4fe1: $9f
	ld c, a                                          ; $4fe2: $4f
	ld b, a                                          ; $4fe3: $47
	daa                                              ; $4fe4: $27
	sub e                                            ; $4fe5: $93
	sbc e                                            ; $4fe6: $9b
	inc bc                                           ; $4fe7: $03
	ld d, b                                          ; $4fe8: $50
	inc bc                                           ; $4fe9: $03
	ldh a, [rVBK]                                    ; $4fea: $f0 $4f
	ldh a, [$0b]                                     ; $4fec: $f0 $0b
	nop                                              ; $4fee: $00
	sub a                                            ; $4fef: $97
	inc sp                                           ; $4ff0: $33
	scf                                              ; $4ff1: $37
	ld h, h                                          ; $4ff2: $64
	ld b, h                                          ; $4ff3: $44
	ld b, h                                          ; $4ff4: $44
	ld [hl], e                                       ; $4ff5: $73
	inc sp                                           ; $4ff6: $33
	inc sp                                           ; $4ff7: $33
	add b                                            ; $4ff8: $80
	add b                                            ; $4ff9: $80
	ld sp, hl                                        ; $4ffa: $f9
	reti                                             ; $4ffb: $d9


	rst $38                                          ; $4ffc: $ff
	rlca                                             ; $4ffd: $07
	ldh a, [$df]                                     ; $4ffe: $f0 $df
	ccf                                              ; $5000: $3f
	rst SubAFromDE                                          ; $5001: $df
	cpl                                              ; $5002: $2f
	sbc $1f                                          ; $5003: $de $1f
	sbc h                                            ; $5005: $9c
	dec e                                            ; $5006: $1d
	db $e4                                           ; $5007: $e4
	push hl                                          ; $5008: $e5
	call c, $9cf4                                    ; $5009: $dc $f4 $9c
	or $bb                                           ; $500c: $f6 $bb
	set 3, [hl]                                      ; $500e: $cb $de
	adc e                                            ; $5010: $8b
	rst SubAFromDE                                          ; $5011: $df
	adc c                                            ; $5012: $89
	sbc [hl]                                         ; $5013: $9e
	ret z                                            ; $5014: $c8

	call c, $defe                                    ; $5015: $dc $fe $de
	rst $38                                          ; $5018: $ff
	add b                                            ; $5019: $80
	ei                                               ; $501a: $fb
	ld sp, hl                                        ; $501b: $f9
	ld e, c                                          ; $501c: $59
	jp hl                                            ; $501d: $e9


	cp l                                             ; $501e: $bd
	push af                                          ; $501f: $f5
	db $fd                                           ; $5020: $fd
	push af                                          ; $5021: $f5
	ld c, $6e                                        ; $5022: $0e $6e
	cp [hl]                                          ; $5024: $be
	ld e, $7e                                        ; $5025: $1e $7e
	ld c, $3e                                        ; $5027: $0e $3e
	adc [hl]                                         ; $5029: $8e
	call c, $ef77                                    ; $502a: $dc $77 $ef
	jp hl                                            ; $502d: $e9


	pop af                                           ; $502e: $f1
	cp $f0                                           ; $502f: $fe $f0
	ldh a, [$3e]                                     ; $5031: $f0 $3e
	rst $38                                          ; $5033: $ff
	cpl                                              ; $5034: $2f
	dec c                                            ; $5035: $0d
	dec b                                            ; $5036: $05
	inc bc                                           ; $5037: $03
	nop                                              ; $5038: $00
	adc h                                            ; $5039: $8c
	nop                                              ; $503a: $00
	cpl                                              ; $503b: $2f
	rlca                                             ; $503c: $07
	ldh [$a0], a                                     ; $503d: $e0 $a0
	ld b, b                                          ; $503f: $40
	ldh [rP1], a                                     ; $5040: $e0 $00
	nop                                              ; $5042: $00
	jr nz, @+$22                                     ; $5043: $20 $20

	ldh [$e0], a                                     ; $5045: $e0 $e0
	ret nz                                           ; $5047: $c0

	add b                                            ; $5048: $80
	nop                                              ; $5049: $00
	nop                                              ; $504a: $00
	jp $fe01                                         ; $504b: $c3 $01 $fe


	sbc h                                            ; $504e: $9c
	ld [$3c18], sp                                   ; $504f: $08 $18 $3c
	ld sp, hl                                        ; $5052: $f9
	adc a                                            ; $5053: $8f
	add a                                            ; $5054: $87
	db $e3                                           ; $5055: $e3
	ld a, b                                          ; $5056: $78
	xor b                                            ; $5057: $a8
	ld [$00dc], sp                                   ; $5058: $08 $dc $00
	ld bc, $e9c3                                     ; $505b: $01 $c3 $e9
	ld hl, sp-$48                                    ; $505e: $f8 $b8
	jr c, jr_027_50d2                                ; $5060: $38 $70

	nop                                              ; $5062: $00
	nop                                              ; $5063: $00
	sbc $52                                          ; $5064: $de $52
	rst SubAFromDE                                          ; $5066: $df
	sub b                                            ; $5067: $90
	rst SubAFromDE                                          ; $5068: $df
	and b                                            ; $5069: $a0
	sbc [hl]                                         ; $506a: $9e
	ret nz                                           ; $506b: $c0

	sbc $5f                                          ; $506c: $de $5f
	rst SubAFromDE                                          ; $506e: $df
	sbc a                                            ; $506f: $9f
	rst SubAFromDE                                          ; $5070: $df
	cp a                                             ; $5071: $bf
	inc bc                                           ; $5072: $03
	ld h, b                                          ; $5073: $60
	inc bc                                           ; $5074: $03
	ldh a, [rWX]                                     ; $5075: $f0 $4b
	ldh a, [$0b]                                     ; $5077: $f0 $0b
	nop                                              ; $5079: $00
	sbc l                                            ; $507a: $9d
	inc sp                                           ; $507b: $33
	scf                                              ; $507c: $37
	sbc $44                                          ; $507d: $de $44
	sbc h                                            ; $507f: $9c
	ld [hl], e                                       ; $5080: $73
	inc sp                                           ; $5081: $33
	inc sp                                           ; $5082: $33
	and c                                            ; $5083: $a1
	add b                                            ; $5084: $80
	rst SubAFromDE                                          ; $5085: $df
	ld [bc], a                                       ; $5086: $02
	ei                                               ; $5087: $fb
	reti                                             ; $5088: $d9


	rst $38                                          ; $5089: $ff
	ld sp, hl                                        ; $508a: $f9
	reti                                             ; $508b: $d9


	rst $38                                          ; $508c: $ff
	sbc [hl]                                         ; $508d: $9e
	jr nz, @+$4d                                     ; $508e: $20 $4b

	ldh a, [$9d]                                     ; $5090: $f0 $9d
	dec l                                            ; $5092: $2d
	cpl                                              ; $5093: $2f
	db $db                                           ; $5094: $db
	ccf                                              ; $5095: $3f
	sbc l                                            ; $5096: $9d
	or $f4                                           ; $5097: $f6 $f4
	db $db                                           ; $5099: $db
	db $e4                                           ; $509a: $e4
	sub a                                            ; $509b: $97
	ld b, d                                          ; $509c: $42
	ld b, [hl]                                       ; $509d: $46
	ld b, h                                          ; $509e: $44
	ld c, b                                          ; $509f: $48
	ld c, b                                          ; $50a0: $48
	ld d, c                                          ; $50a1: $51
	ld h, a                                          ; $50a2: $67
	rst GetHLinHL                                          ; $50a3: $cf
	reti                                             ; $50a4: $d9


	rst $38                                          ; $50a5: $ff

jr_027_50a6:
	sub a                                            ; $50a6: $97
	inc c                                            ; $50a7: $0c
	jr jr_027_50da                                   ; $50a8: $18 $30

	ld h, c                                          ; $50aa: $61
	jp nz, $fe87                                     ; $50ab: $c2 $87 $fe

	ld e, a                                          ; $50ae: $5f
	jp c, $8bff                                      ; $50af: $da $ff $8b

	cp [hl]                                          ; $50b2: $be
	ld b, e                                          ; $50b3: $43
	add $99                                          ; $50b4: $c6 $99
	daa                                              ; $50b6: $27
	rst $38                                          ; $50b7: $ff
	ei                                               ; $50b8: $fb
	rst $38                                          ; $50b9: $ff
	db $fc                                           ; $50ba: $fc
	cp $fd                                           ; $50bb: $fe $fd
	rst $38                                          ; $50bd: $ff
	rst $38                                          ; $50be: $ff
	jp c, $0f07                                      ; $50bf: $da $07 $0f

	ld e, $d7                                        ; $50c2: $1e $d7
	xor a                                            ; $50c4: $af
	ld a, a                                          ; $50c5: $7f
	db $dd                                           ; $50c6: $dd
	rst $38                                          ; $50c7: $ff
	sub c                                            ; $50c8: $91
	ld e, a                                          ; $50c9: $5f
	ld a, c                                          ; $50ca: $79
	ld sp, hl                                        ; $50cb: $f9
	pop af                                           ; $50cc: $f1
	add e                                            ; $50cd: $83
	ld [bc], a                                       ; $50ce: $02
	db $f4                                           ; $50cf: $f4
	ld hl, sp+$58                                    ; $50d0: $f8 $58

jr_027_50d2:
	inc hl                                           ; $50d2: $23
	ld h, a                                          ; $50d3: $67
	rst AddAOntoHL                                          ; $50d4: $ef
	rst AddAOntoHL                                          ; $50d5: $ef
	rst SubAFromDE                                          ; $50d6: $df
	sbc $ff                                          ; $50d7: $de $ff
	add b                                            ; $50d9: $80

jr_027_50da:
	cp $fc                                           ; $50da: $fe $fc
	cp c                                             ; $50dc: $b9
	add hl, sp                                       ; $50dd: $39
	ld [hl], c                                       ; $50de: $71
	ld h, e                                          ; $50df: $63
	add [hl]                                         ; $50e0: $86
	nop                                              ; $50e1: $00
	sbc [hl]                                         ; $50e2: $9e
	xor h                                            ; $50e3: $ac
	dec [hl]                                         ; $50e4: $35
	ld a, [hl]                                       ; $50e5: $7e
	rst $38                                          ; $50e6: $ff
	or a                                             ; $50e7: $b7
	ld a, l                                          ; $50e8: $7d
	rst GetHLinHL                                          ; $50e9: $cf
	di                                               ; $50ea: $f3
	rst FarCall                                          ; $50eb: $f7
	rst $38                                          ; $50ec: $ff
	rst GetHLinHL                                          ; $50ed: $cf
	add c                                            ; $50ee: $81
	ld a, b                                          ; $50ef: $78
	cp $cf                                           ; $50f0: $fe $cf
	pop af                                           ; $50f2: $f1
	ld sp, hl                                        ; $50f3: $f9
	ld sp, hl                                        ; $50f4: $f9
	ld a, c                                          ; $50f5: $79
	ld sp, hl                                        ; $50f6: $f9
	ld sp, hl                                        ; $50f7: $f9
	db $fd                                           ; $50f8: $fd
	sub [hl]                                         ; $50f9: $96
	db $fd                                           ; $50fa: $fd
	sbc a                                            ; $50fb: $9f
	sbc a                                            ; $50fc: $9f
	ccf                                              ; $50fd: $3f
	cp a                                             ; $50fe: $bf
	cp a                                             ; $50ff: $bf
	ccf                                              ; $5100: $3f
	ld e, a                                          ; $5101: $5f
	rst SubAFromDE                                          ; $5102: $df
	sbc $70                                          ; $5103: $de $70
	db $dd                                           ; $5105: $dd
	jr nz, jr_027_50a6                               ; $5106: $20 $9e

	nop                                              ; $5108: $00
	sbc $df                                          ; $5109: $de $df
	ld l, a                                          ; $510b: $6f
	sub b                                            ; $510c: $90
	sbc [hl]                                         ; $510d: $9e
	inc b                                            ; $510e: $04
	rrca                                             ; $510f: $0f
	ld b, b                                          ; $5110: $40
	sbc b                                            ; $5111: $98
	ld b, $0e                                        ; $5112: $06 $0e
	dec c                                            ; $5114: $0d
	add hl, bc                                       ; $5115: $09
	inc bc                                           ; $5116: $03
	rlca                                             ; $5117: $07
	ld b, $63                                        ; $5118: $06 $63
	ldh a, [$9b]                                     ; $511a: $f0 $9b
	ret nz                                           ; $511c: $c0

	ldh [$f0], a                                     ; $511d: $e0 $f0
	jr nc, jr_027_5198                               ; $511f: $30 $77

	inc l                                            ; $5121: $2c
	reti                                             ; $5122: $d9


	rst $38                                          ; $5123: $ff
	dec bc                                           ; $5124: $0b
	nop                                              ; $5125: $00
	sub a                                            ; $5126: $97
	inc sp                                           ; $5127: $33
	scf                                              ; $5128: $37
	ld h, h                                          ; $5129: $64
	ld b, h                                          ; $512a: $44
	ld b, h                                          ; $512b: $44
	ld b, l                                          ; $512c: $45
	inc sp                                           ; $512d: $33
	inc sp                                           ; $512e: $33
	ld a, [$9280]                                    ; $512f: $fa $80 $92
	ld a, a                                          ; $5132: $7f
	ld l, a                                          ; $5133: $6f
	xor $dd                                          ; $5134: $ee $dd
	cp e                                             ; $5136: $bb
	dec sp                                           ; $5137: $3b
	inc de                                           ; $5138: $13
	inc bc                                           ; $5139: $03
	db $fc                                           ; $513a: $fc
	sub b                                            ; $513b: $90
	ld de, $7f33                                     ; $513c: $11 $33 $7f
	sbc $ff                                          ; $513f: $de $ff
	ld a, a                                          ; $5141: $7f
	db $fc                                           ; $5142: $fc
	sub h                                            ; $5143: $94
	db $fd                                           ; $5144: $fd
	ei                                               ; $5145: $fb
	or a                                             ; $5146: $b7
	add a                                            ; $5147: $87
	ld b, $00                                        ; $5148: $06 $00
	ld sp, hl                                        ; $514a: $f9
	pop hl                                           ; $514b: $e1
	jp $efc7                                         ; $514c: $c3 $c7 $ef


	sbc $ff                                          ; $514f: $de $ff
	sub d                                            ; $5151: $92
	db $fc                                           ; $5152: $fc
	ld a, a                                          ; $5153: $7f
	rst $38                                          ; $5154: $ff
	pop af                                           ; $5155: $f1
	db $fd                                           ; $5156: $fd
	inc a                                            ; $5157: $3c
	ld [hl], $30                                     ; $5158: $36 $30
	add a                                            ; $515a: $87
	adc a                                            ; $515b: $8f
	daa                                              ; $515c: $27
	ccf                                              ; $515d: $3f
	sbc a                                            ; $515e: $9f
	sbc $ff                                          ; $515f: $de $ff
	sub e                                            ; $5161: $93
	ccf                                              ; $5162: $3f
	rst AddAOntoHL                                          ; $5163: $ef
	db $ed                                           ; $5164: $ed
	or $7f                                           ; $5165: $f6 $7f
	ccf                                              ; $5167: $3f
	ccf                                              ; $5168: $3f
	dec sp                                           ; $5169: $3b
	ld sp, hl                                        ; $516a: $f9
	ld sp, hl                                        ; $516b: $f9
	ei                                               ; $516c: $fb
	ei                                               ; $516d: $fb
	sbc $f2                                          ; $516e: $de $f2
	sub d                                            ; $5170: $92
	or $f1                                           ; $5171: $f6 $f1
	pop af                                           ; $5173: $f1
	jp nc, $a2e2                                     ; $5174: $d2 $e2 $a2

	and e                                            ; $5177: $a3
	and e                                            ; $5178: $a3
	inc hl                                           ; $5179: $23
	rra                                              ; $517a: $1f
	rra                                              ; $517b: $1f
	ccf                                              ; $517c: $3f
	ccf                                              ; $517d: $3f
	sbc $7f                                          ; $517e: $de $7f
	add b                                            ; $5180: $80
	rst $38                                          ; $5181: $ff
	dec h                                            ; $5182: $25
	ld b, l                                          ; $5183: $45
	ld c, d                                          ; $5184: $4a
	ret z                                            ; $5185: $c8

	adc h                                            ; $5186: $8c
	sbc c                                            ; $5187: $99
	inc de                                           ; $5188: $13
	ld h, $f8                                        ; $5189: $26 $f8
	ld hl, sp-$0f                                    ; $518b: $f8 $f1
	di                                               ; $518d: $f3
	di                                               ; $518e: $f3
	rst SubAFromBC                                          ; $518f: $e7
	rst AddAOntoHL                                          ; $5190: $ef
	rst SubAFromDE                                          ; $5191: $df
	jr jr_027_51a9                                   ; $5192: $18 $15

	dec [hl]                                         ; $5194: $35
	halt                                             ; $5195: $76
	or $ac                                           ; $5196: $f6 $ac

jr_027_5198:
	add hl, hl                                       ; $5198: $29
	ld h, c                                          ; $5199: $61
	db $fc                                           ; $519a: $fc
	ld hl, sp-$08                                    ; $519b: $f8 $f8
	ld sp, hl                                        ; $519d: $f9
	ld sp, hl                                        ; $519e: $f9
	di                                               ; $519f: $f3
	add l                                            ; $51a0: $85
	rst FarCall                                          ; $51a1: $f7
	rst $38                                          ; $51a2: $ff
	jr nc, jr_027_51d5                               ; $51a3: $30 $30

	ld [hl], c                                       ; $51a5: $71
	ld [hl], c                                       ; $51a6: $71
	di                                               ; $51a7: $f3
	db $e3                                           ; $51a8: $e3

jr_027_51a9:
	rst SubAFromBC                                          ; $51a9: $e7
	rst GetHLinHL                                          ; $51aa: $cf
	rst $38                                          ; $51ab: $ff
	rst $38                                          ; $51ac: $ff
	rst SubAFromDE                                          ; $51ad: $df
	rst SubAFromDE                                          ; $51ae: $df
	sbc [hl]                                         ; $51af: $9e
	cp [hl]                                          ; $51b0: $be
	inc a                                            ; $51b1: $3c
	ld a, c                                          ; $51b2: $79
	call nz, $88c4                                   ; $51b3: $c4 $c4 $88
	adc b                                            ; $51b6: $88
	sbc b                                            ; $51b7: $98
	sbc c                                            ; $51b8: $99
	sub c                                            ; $51b9: $91
	inc de                                           ; $51ba: $13
	jp c, $9eff                                      ; $51bb: $da $ff $9e

	cp $de                                           ; $51be: $fe $de
	add h                                            ; $51c0: $84
	rst SubAFromDE                                          ; $51c1: $df
	adc h                                            ; $51c2: $8c
	sbc h                                            ; $51c3: $9c
	adc [hl]                                         ; $51c4: $8e
	sbc [hl]                                         ; $51c5: $9e
	sbc [hl]                                         ; $51c6: $9e
	call c, $9bff                                    ; $51c7: $dc $ff $9b
	ei                                               ; $51ca: $fb
	di                                               ; $51cb: $f3
	di                                               ; $51cc: $f3
	sub $de                                          ; $51cd: $d6 $de
	call $e59a                                       ; $51cf: $cd $9a $e5
	ld h, c                                          ; $51d2: $61
	ld h, c                                          ; $51d3: $61
	ld [hl], c                                       ; $51d4: $71

jr_027_51d5:
	ld h, e                                          ; $51d5: $63
	sbc $73                                          ; $51d6: $de $73
	sbc [hl]                                         ; $51d8: $9e
	ld a, e                                          ; $51d9: $7b
	ld [hl], e                                       ; $51da: $73
	sbc $99                                          ; $51db: $de $99
	ldh a, [$f7]                                     ; $51dd: $f0 $f7
	cp $f8                                           ; $51df: $fe $f8
	ldh a, [$71]                                     ; $51e1: $f0 $71
	sbc $1f                                          ; $51e3: $de $1f
	db $dd                                           ; $51e5: $dd
	sbc a                                            ; $51e6: $9f
	sub b                                            ; $51e7: $90
	rst SubAFromDE                                          ; $51e8: $df
	rst $38                                          ; $51e9: $ff
	rst $38                                          ; $51ea: $ff
	db $dd                                           ; $51eb: $dd
	db $dd                                           ; $51ec: $dd
	ld sp, hl                                        ; $51ed: $f9
	call nc, $cccc                                   ; $51ee: $d4 $cc $cc
	rst $38                                          ; $51f1: $ff
	rst $38                                          ; $51f2: $ff
	and $e2                                          ; $51f3: $e6 $e2
	ld b, [hl]                                       ; $51f5: $46
	ld l, a                                          ; $51f6: $6f
	ld a, e                                          ; $51f7: $7b
	ld a, a                                          ; $51f8: $7f
	adc [hl]                                         ; $51f9: $8e
	rst $38                                          ; $51fa: $ff
	xor $85                                          ; $51fb: $ee $85
	adc a                                            ; $51fd: $8f
	sbc a                                            ; $51fe: $9f
	rrca                                             ; $51ff: $0f
	ld b, $63                                        ; $5200: $06 $63
	rst SubAFromBC                                          ; $5202: $e7
	ld [hl], a                                       ; $5203: $77
	ld a, a                                          ; $5204: $7f
	ld [hl], b                                       ; $5205: $70
	ld h, b                                          ; $5206: $60
	ldh a, [$f9]                                     ; $5207: $f0 $f9
	rst $38                                          ; $5209: $ff
	dec h                                            ; $520a: $25
	ld a, e                                          ; $520b: $7b
	inc a                                            ; $520c: $3c
	add h                                            ; $520d: $84
	xor a                                            ; $520e: $af
	rlca                                             ; $520f: $07
	dec b                                            ; $5210: $05
	sbc $ff                                          ; $5211: $de $ff
	rst SubAFromBC                                          ; $5213: $e7
	add e                                            ; $5214: $83
	rlca                                             ; $5215: $07
	ld e, [hl]                                       ; $5216: $5e
	cp $fe                                           ; $5217: $fe $fe
	rst AddAOntoHL                                          ; $5219: $ef
	rst $38                                          ; $521a: $ff
	ld sp, hl                                        ; $521b: $f9
	ld e, $bf                                        ; $521c: $1e $bf
	ld sp, hl                                        ; $521e: $f9
	ld hl, sp-$20                                    ; $521f: $f8 $e0
	inc de                                           ; $5221: $13
	sbc a                                            ; $5222: $9f
	rst AddAOntoHL                                          ; $5223: $ef
	rst SubAFromBC                                          ; $5224: $e7
	ld c, l                                          ; $5225: $4d
	ld h, [hl]                                       ; $5226: $66
	daa                                              ; $5227: $27
	ld a, a                                          ; $5228: $7f
	dec bc                                           ; $5229: $0b
	nop                                              ; $522a: $00
	sub a                                            ; $522b: $97
	ld [hl+], a                                      ; $522c: $22
	daa                                              ; $522d: $27
	ld h, [hl]                                       ; $522e: $66
	ld h, h                                          ; $522f: $64
	ld b, h                                          ; $5230: $44
	ld h, l                                          ; $5231: $65
	ld [hl+], a                                      ; $5232: $22
	ld [hl+], a                                      ; $5233: $22
	ld sp, hl                                        ; $5234: $f9
	add b                                            ; $5235: $80
	sbc l                                            ; $5236: $9d
	rst $38                                          ; $5237: $ff
	cp $db                                           ; $5238: $fe $db
	rst $38                                          ; $523a: $ff
	sub l                                            ; $523b: $95
	inc de                                           ; $523c: $13
	inc sp                                           ; $523d: $33
	and e                                            ; $523e: $a3
	dec d                                            ; $523f: $15
	inc l                                            ; $5240: $2c
	jr z, jr_027_524c                                ; $5241: $28 $09

jr_027_5243:
	cp a                                             ; $5243: $bf
	rst $38                                          ; $5244: $ff
	ccf                                              ; $5245: $3f
	db $dd                                           ; $5246: $dd
	rst $38                                          ; $5247: $ff
	ld a, a                                          ; $5248: $7f
	ld sp, hl                                        ; $5249: $f9
	rst SubAFromDE                                          ; $524a: $df
	db $fc                                           ; $524b: $fc

jr_027_524c:
	sub [hl]                                         ; $524c: $96
	or b                                             ; $524d: $b0
	ld bc, $77a3                                     ; $524e: $01 $a3 $77
	db $fd                                           ; $5251: $fd
	ld hl, sp-$02                                    ; $5252: $f8 $fe
	rst $38                                          ; $5254: $ff
	rst FarCall                                          ; $5255: $f7
	sbc $ff                                          ; $5256: $de $ff
	adc l                                            ; $5258: $8d
	ei                                               ; $5259: $fb
	pop af                                           ; $525a: $f1
	ld h, e                                          ; $525b: $63
	ld bc, $7f8f                                     ; $525c: $01 $8f $7f
	ld a, [hl+]                                      ; $525f: $2a
	ld b, b                                          ; $5260: $40
	rst $38                                          ; $5261: $ff
	rst GetHLinHL                                          ; $5262: $cf
	ld sp, hl                                        ; $5263: $f9
	ld a, [$f3fa]                                    ; $5264: $fa $fa $f3
	push af                                          ; $5267: $f5
	rst FarCall                                          ; $5268: $f7
	or $fb                                           ; $5269: $f6 $fb
	sbc $ff                                          ; $526b: $de $ff
	rst SubAFromDE                                          ; $526d: $df
	cp $80                                           ; $526e: $fe $80
	db $fc                                           ; $5270: $fc
	db $fd                                           ; $5271: $fd
	db $fd                                           ; $5272: $fd
	ld l, l                                          ; $5273: $6d
	xor [hl]                                         ; $5274: $ae
	jp c, $b75d                                      ; $5275: $da $5d $b7

	cp d                                             ; $5278: $ba
	xor c                                            ; $5279: $a9
	ld l, c                                          ; $527a: $69
	or e                                             ; $527b: $b3
	ld [hl], e                                       ; $527c: $73
	ld h, a                                          ; $527d: $67
	and $cc                                          ; $527e: $e6 $cc
	call $9fdf                                       ; $5280: $cd $df $9f
	db $e4                                           ; $5283: $e4
	and h                                            ; $5284: $a4
	ret                                              ; $5285: $c9


	ld c, c                                          ; $5286: $49
	adc d                                            ; $5287: $8a
	sub d                                            ; $5288: $92
	db $10                                           ; $5289: $10
	jr nz, jr_027_52cb                               ; $528a: $20 $3f

	ld a, a                                          ; $528c: $7f
	ld a, [hl]                                       ; $528d: $7e
	cp $dd                                           ; $528e: $fe $dd
	db $fc                                           ; $5290: $fc
	add [hl]                                         ; $5291: $86
	adc l                                            ; $5292: $8d
	add hl, de                                       ; $5293: $19
	add hl, sp                                       ; $5294: $39
	ld [hl-], a                                      ; $5295: $32
	ld h, e                                          ; $5296: $63
	ld h, h                                          ; $5297: $64
	add $8a                                          ; $5298: $c6 $8a
	inc bc                                           ; $529a: $03
	rlca                                             ; $529b: $07
	rlca                                             ; $529c: $07
	rrca                                             ; $529d: $0f
	ld e, $1e                                        ; $529e: $1e $1e
	inc a                                            ; $52a0: $3c
	ld a, h                                          ; $52a1: $7c
	ld [$3c8c], sp                                   ; $52a2: $08 $8c $3c
	dec a                                            ; $52a5: $3d
	ld e, l                                          ; $52a6: $5d
	ld d, l                                          ; $52a7: $55
	inc de                                           ; $52a8: $13
	sub d                                            ; $52a9: $92
	sbc h                                            ; $52aa: $9c
	sbc $18                                          ; $52ab: $de $18
	rst SubAFromDE                                          ; $52ad: $df
	jr c, jr_027_5243                                ; $52ae: $38 $93

	ld a, h                                          ; $52b0: $7c
	ld a, l                                          ; $52b1: $7d
	ld [bc], a                                       ; $52b2: $02
	inc b                                            ; $52b3: $04
	inc l                                            ; $52b4: $2c
	inc l                                            ; $52b5: $2c
	xor l                                            ; $52b6: $ad
	adc l                                            ; $52b7: $8d
	add l                                            ; $52b8: $85
	call nc, $cecc                                   ; $52b9: $d4 $cc $ce
	sbc $c6                                          ; $52bc: $de $c6
	adc a                                            ; $52be: $8f
	and $ee                                          ; $52bf: $e6 $ee
	rst AddAOntoHL                                          ; $52c1: $ef
	add c                                            ; $52c2: $81
	push bc                                          ; $52c3: $c5
	reti                                             ; $52c4: $d9


	adc d                                            ; $52c5: $8a
	xor e                                            ; $52c6: $ab
	adc c                                            ; $52c7: $89
	sub l                                            ; $52c8: $95
	sub l                                            ; $52c9: $95
	sbc e                                            ; $52ca: $9b

jr_027_52cb:
	sbc c                                            ; $52cb: $99
	adc l                                            ; $52cc: $8d
	call $decc                                       ; $52cd: $cd $cc $de
	xor $82                                          ; $52d0: $ee $82
	or l                                             ; $52d2: $b5
	jr jr_027_531f                                   ; $52d3: $18 $4a

	add h                                            ; $52d5: $84
	xor l                                            ; $52d6: $ad
	add d                                            ; $52d7: $82
	ld d, d                                          ; $52d8: $52
	sub $18                                          ; $52d9: $d6 $18
	adc h                                            ; $52db: $8c
	adc h                                            ; $52dc: $8c
	adc $c6                                          ; $52dd: $ce $c6
	rst SubAFromBC                                          ; $52df: $e7
	rst SubAFromBC                                          ; $52e0: $e7
	ld h, e                                          ; $52e1: $63
	rst JumpTable                                          ; $52e2: $c7
	ld h, d                                          ; $52e3: $62
	ldh a, [c]                                       ; $52e4: $f2
	ld a, b                                          ; $52e5: $78
	inc a                                            ; $52e6: $3c
	ld a, [hl]                                       ; $52e7: $7e
	ld a, [hl]                                       ; $52e8: $7e
	rst SubAFromDE                                          ; $52e9: $df
	ld sp, hl                                        ; $52ea: $f9
	db $fd                                           ; $52eb: $fd
	ld a, l                                          ; $52ec: $7d
	ld a, a                                          ; $52ed: $7f
	ld a, a                                          ; $52ee: $7f
	sbc $3f                                          ; $52ef: $de $3f
	call c, $dfff                                    ; $52f1: $dc $ff $df
	rst FarCall                                          ; $52f4: $f7
	sub a                                            ; $52f5: $97
	rst $38                                          ; $52f6: $ff
	xor $cf                                          ; $52f7: $ee $cf
	sbc a                                            ; $52f9: $9f
	rst $38                                          ; $52fa: $ff
	rst FarCall                                          ; $52fb: $f7
	rst AddAOntoHL                                          ; $52fc: $ef
	cp $7b                                           ; $52fd: $fe $7b
	ld [hl-], a                                      ; $52ff: $32
	add c                                            ; $5300: $81
	db $fc                                           ; $5301: $fc
	rst SubAFromDE                                          ; $5302: $df
	ld a, a                                          ; $5303: $7f
	ld l, $fe                                        ; $5304: $2e $fe
	db $fc                                           ; $5306: $fc
	inc a                                            ; $5307: $3c
	ld a, [hl]                                       ; $5308: $7e
	rst $38                                          ; $5309: $ff
	cp b                                             ; $530a: $b8
	sub b                                            ; $530b: $90
	db $d3                                           ; $530c: $d3
	rla                                              ; $530d: $17
	ccf                                              ; $530e: $3f
	rst $38                                          ; $530f: $ff
	cp $7f                                           ; $5310: $fe $7f
	ld a, e                                          ; $5312: $7b
	ei                                               ; $5313: $fb
	rst $38                                          ; $5314: $ff
	ld a, e                                          ; $5315: $7b
	ld a, [hl]                                       ; $5316: $7e
	db $ed                                           ; $5317: $ed
	pop af                                           ; $5318: $f1
	db $db                                           ; $5319: $db
	adc [hl]                                         ; $531a: $8e
	inc e                                            ; $531b: $1c
	inc c                                            ; $531c: $0c
	add [hl]                                         ; $531d: $86
	adc a                                            ; $531e: $8f

jr_027_531f:
	call c, $94ff                                    ; $531f: $dc $ff $94
	rst SubAFromDE                                          ; $5322: $df
	rst $38                                          ; $5323: $ff
	ld a, [hl]                                       ; $5324: $7e
	ld [$ff9b], sp                                   ; $5325: $08 $9b $ff
	scf                                              ; $5328: $37
	ld sp, $e870                                     ; $5329: $31 $70 $e8
	di                                               ; $532c: $f3
	add hl, bc                                       ; $532d: $09
	nop                                              ; $532e: $00
	sbc l                                            ; $532f: $9d
	ld [hl+], a                                      ; $5330: $22
	ld h, $dd                                        ; $5331: $26 $dd
	ld h, [hl]                                       ; $5333: $66
	rst SubAFromDE                                          ; $5334: $df
	ld [hl+], a                                      ; $5335: $22
	push af                                          ; $5336: $f5
	add b                                            ; $5337: $80
	rst SubAFromDE                                          ; $5338: $df
	rst $38                                          ; $5339: $ff
	sbc [hl]                                         ; $533a: $9e
	rst FarCall                                          ; $533b: $f7
	call c, $93ff                                    ; $533c: $dc $ff $93
	or a                                             ; $533f: $b7
	rst $38                                          ; $5340: $ff
	rst $38                                          ; $5341: $ff
	pop af                                           ; $5342: $f1
	pop af                                           ; $5343: $f1
	rrca                                             ; $5344: $0f
	rlca                                             ; $5345: $07
	and [hl]                                         ; $5346: $a6
	rst FarCall                                          ; $5347: $f7
	rst AddAOntoHL                                          ; $5348: $ef
	rst $38                                          ; $5349: $ff
	ei                                               ; $534a: $fb
	ld l, a                                          ; $534b: $6f
	xor $dd                                          ; $534c: $ee $dd
	rst $38                                          ; $534e: $ff
	sbc c                                            ; $534f: $99
	dec e                                            ; $5350: $1d
	ld sp, $f9ff                                     ; $5351: $31 $ff $f9
	ccf                                              ; $5354: $3f
	rst SubAFromDE                                          ; $5355: $df
	sbc $ff                                          ; $5356: $de $ff
	sub h                                            ; $5358: $94
	ei                                               ; $5359: $fb
	rst $38                                          ; $535a: $ff
	rst $38                                          ; $535b: $ff
	ld hl, sp-$0f                                    ; $535c: $f8 $f1
	rla                                              ; $535e: $17
	dec de                                           ; $535f: $1b
	ld [hl], e                                       ; $5360: $73
	adc a                                            ; $5361: $8f
	pop hl                                           ; $5362: $e1
	ld sp, hl                                        ; $5363: $f9
	sbc $ff                                          ; $5364: $de $ff
	sbc [hl]                                         ; $5366: $9e
	ld a, a                                          ; $5367: $7f
	ld [hl], a                                       ; $5368: $77
	pop de                                           ; $5369: $d1
	rst SubAFromDE                                          ; $536a: $df
	rst $38                                          ; $536b: $ff
	rst SubAFromDE                                          ; $536c: $df
	cp $80                                           ; $536d: $fe $80
	db $fc                                           ; $536f: $fc
	db $fd                                           ; $5370: $fd
	reti                                             ; $5371: $d9


	or e                                             ; $5372: $b3
	ld h, $cc                                        ; $5373: $26 $cc
	cp c                                             ; $5375: $b9
	ld [hl], e                                       ; $5376: $73
	and d                                            ; $5377: $a2
	ld d, a                                          ; $5378: $57
	and $cc                                          ; $5379: $e6 $cc
	reti                                             ; $537b: $d9


	inc sp                                           ; $537c: $33
	ld h, [hl]                                       ; $537d: $66
	call z, $b9dd                                    ; $537e: $cc $dd $b9
	sub h                                            ; $5381: $94
	dec sp                                           ; $5382: $3b
	ld h, [hl]                                       ; $5383: $66
	call Call_027_7199                               ; $5384: $cd $99 $71
	and d                                            ; $5387: $a2
	ld d, d                                          ; $5388: $52
	ld h, e                                          ; $5389: $63
	call nz, $3399                                   ; $538a: $c4 $99 $33
	ld h, a                                          ; $538d: $67
	add b                                            ; $538e: $80
	rst GetHLinHL                                          ; $538f: $cf
	rst SubAFromDE                                          ; $5390: $df
	cp a                                             ; $5391: $bf
	ei                                               ; $5392: $fb
	rst $38                                          ; $5393: $ff
	rst SubAFromDE                                          ; $5394: $df
	ccf                                              ; $5395: $3f
	scf                                              ; $5396: $37
	ld b, c                                          ; $5397: $41
	ld b, a                                          ; $5398: $47
	adc [hl]                                         ; $5399: $8e
	inc b                                            ; $539a: $04
	nop                                              ; $539b: $00
	ldh [$f8], a                                     ; $539c: $e0 $f8
	adc $80                                          ; $539e: $ce $80
	add b                                            ; $53a0: $80
	ld bc, $dbef                                     ; $53a1: $01 $ef $db
	jp c, $b696                                      ; $53a4: $da $96 $b6

	ld d, $da                                        ; $53a7: $16 $da
	ret z                                            ; $53a9: $c8

	db $10                                           ; $53aa: $10
	inc h                                            ; $53ab: $24
	inc h                                            ; $53ac: $24
	ld l, h                                          ; $53ad: $6c
	add b                                            ; $53ae: $80
	ld c, h                                          ; $53af: $4c
	call z, $9c8c                                    ; $53b0: $cc $8c $9c
	cp $ef                                           ; $53b3: $fe $ef
	or [hl]                                          ; $53b5: $b6
	and l                                            ; $53b6: $a5
	adc b                                            ; $53b7: $88
	ld [bc], a                                       ; $53b8: $02
	ld d, h                                          ; $53b9: $54
	ld b, c                                          ; $53ba: $41
	ld bc, $0000                                     ; $53bb: $01 $00 $00
	ld [de], a                                       ; $53be: $12
	inc de                                           ; $53bf: $13
	sbc c                                            ; $53c0: $99
	adc c                                            ; $53c1: $89

jr_027_53c2:
	adc h                                            ; $53c2: $8c
	rst FarCall                                          ; $53c3: $f7
	ld e, e                                          ; $53c4: $5b
	xor h                                            ; $53c5: $ac
	ld h, $53                                        ; $53c6: $26 $53
	add h                                            ; $53c8: $84
	inc bc                                           ; $53c9: $03
	ld a, [hl+]                                      ; $53ca: $2a
	ld [$53a4], sp                                   ; $53cb: $08 $a4 $53
	add b                                            ; $53ce: $80
	ld c, c                                          ; $53cf: $49
	inc l                                            ; $53d0: $2c
	ld [hl], $b6                                     ; $53d1: $36 $b6
	sub e                                            ; $53d3: $93
	call z, $b366                                    ; $53d4: $cc $66 $b3
	ld e, b                                          ; $53d7: $58
	db $ec                                           ; $53d8: $ec
	or $7b                                           ; $53d9: $f6 $7b
	jr jr_027_544d                                   ; $53db: $18 $70

	jr c, jr_027_53fb                                ; $53dd: $38 $1c

	adc a                                            ; $53df: $8f
	add a                                            ; $53e0: $87
	ld b, e                                          ; $53e1: $43
	ld hl, $bf31                                     ; $53e2: $21 $31 $bf
	ld e, a                                          ; $53e5: $5f
	xor a                                            ; $53e6: $af
	rst SubAFromDE                                          ; $53e7: $df
	ld [hl], a                                       ; $53e8: $77
	dec sp                                           ; $53e9: $3b
	rra                                              ; $53ea: $1f
	adc l                                            ; $53eb: $8d
	ld a, a                                          ; $53ec: $7f
	ccf                                              ; $53ed: $3f
	sbc c                                            ; $53ee: $99
	rra                                              ; $53ef: $1f
	rrca                                             ; $53f0: $0f
	adc a                                            ; $53f1: $8f
	rst JumpTable                                          ; $53f2: $c7
	db $e3                                           ; $53f3: $e3
	di                                               ; $53f4: $f3
	reti                                             ; $53f5: $d9


	rst $38                                          ; $53f6: $ff
	sub a                                            ; $53f7: $97
	ld a, a                                          ; $53f8: $7f
	sbc e                                            ; $53f9: $9b
	di                                               ; $53fa: $f3

jr_027_53fb:
	pop af                                           ; $53fb: $f1
	pop af                                           ; $53fc: $f1
	ei                                               ; $53fd: $fb
	sbc h                                            ; $53fe: $9c
	sbc $7b                                          ; $53ff: $de $7b
	ld sp, $fd90                                     ; $5401: $31 $90 $fd
	rst AddAOntoHL                                          ; $5404: $ef
	db $fd                                           ; $5405: $fd
	rst $38                                          ; $5406: $ff
	rst $38                                          ; $5407: $ff
	jr jr_027_53c2                                   ; $5408: $18 $b8

	cp h                                             ; $540a: $bc
	ld e, $1f                                        ; $540b: $1e $1f
	ccf                                              ; $540d: $3f
	jr c, jr_027_5440                                ; $540e: $38 $30

	rst SubAFromDE                                          ; $5410: $df
	sbc a                                            ; $5411: $9f
	ld h, a                                          ; $5412: $67
	rst SubAFromDE                                          ; $5413: $df
	sub h                                            ; $5414: $94
	inc a                                            ; $5415: $3c
	ld b, h                                          ; $5416: $44
	adc l                                            ; $5417: $8d
	sub b                                            ; $5418: $90
	ld h, b                                          ; $5419: $60
	ld h, l                                          ; $541a: $65
	ld e, $e7                                        ; $541b: $1e $e7
	db $fc                                           ; $541d: $fc
	rst $38                                          ; $541e: $ff
	rst AddAOntoHL                                          ; $541f: $ef
	ld a, e                                          ; $5420: $7b
	db $db                                           ; $5421: $db
	ld a, a                                          ; $5422: $7f
	ld hl, sp-$67                                    ; $5423: $f8 $99
	adc h                                            ; $5425: $8c
	add e                                            ; $5426: $83
	sbc a                                            ; $5427: $9f
	add hl, de                                       ; $5428: $19
	rst SubAFromDE                                          ; $5429: $df
	jr c, jr_027_5435                                ; $542a: $38 $09

	nop                                              ; $542c: $00
	sbc l                                            ; $542d: $9d
	ld [hl+], a                                      ; $542e: $22
	daa                                              ; $542f: $27
	db $dd                                           ; $5430: $dd
	ld h, [hl]                                       ; $5431: $66
	rst SubAFromDE                                          ; $5432: $df
	ld [hl+], a                                      ; $5433: $22
	db $e3                                           ; $5434: $e3

jr_027_5435:
	add b                                            ; $5435: $80
	reti                                             ; $5436: $d9


	rst $38                                          ; $5437: $ff
	sub a                                            ; $5438: $97
	ld c, c                                          ; $5439: $49
	ld hl, sp-$08                                    ; $543a: $f8 $f8
	or b                                             ; $543c: $b0
	ld [$3bdb], sp                                   ; $543d: $08 $db $3b

jr_027_5440:
	inc hl                                           ; $5440: $23
	reti                                             ; $5441: $d9


	rst $38                                          ; $5442: $ff
	sbc c                                            ; $5443: $99
	db $fd                                           ; $5444: $fd
	ld a, $7c                                        ; $5445: $3e $7c
	ld hl, sp-$33                                    ; $5447: $f8 $cd
	rst GetHLinHL                                          ; $5449: $cf
	jp c, $98ff                                      ; $544a: $da $ff $98

jr_027_544d:
	cp a                                             ; $544d: $bf
	push hl                                          ; $544e: $e5
	rst $38                                          ; $544f: $ff
	rra                                              ; $5450: $1f
	ccf                                              ; $5451: $3f
	rra                                              ; $5452: $1f
	ccf                                              ; $5453: $3f
	jp c, $92ff                                      ; $5454: $da $ff $92

	rst SubAFromDE                                          ; $5457: $df
	ld e, a                                          ; $5458: $5f
	rst $38                                          ; $5459: $ff
	rst $38                                          ; $545a: $ff
	rst SubAFromBC                                          ; $545b: $e7
	jp $c185                                         ; $545c: $c3 $85 $c1


	rst FarCall                                          ; $545f: $f7
	db $fc                                           ; $5460: $fc

jr_027_5461:
	db $fd                                           ; $5461: $fd
	sub e                                            ; $5462: $93
	sbc c                                            ; $5463: $99
	ld [hl], e                                       ; $5464: $73
	call nc, $fb9c                                   ; $5465: $d4 $9c $fb
	or $ec                                           ; $5468: $f6 $ec
	db $dd                                           ; $546a: $dd
	rst $38                                          ; $546b: $ff
	add b                                            ; $546c: $80
	cp $fc                                           ; $546d: $fe $fc
	ld sp, hl                                        ; $546f: $f9
	di                                               ; $5470: $f3
	rst $38                                          ; $5471: $ff
	ld a, [$71d2]                                    ; $5472: $fa $d2 $71
	ret z                                            ; $5475: $c8

	jr z, jr_027_54ea                                ; $5476: $28 $72

	ret                                              ; $5478: $c9


	rst $38                                          ; $5479: $ff
	db $fc                                           ; $547a: $fc
	pop hl                                           ; $547b: $e1
	adc [hl]                                         ; $547c: $8e
	jr nc, @-$37                                     ; $547d: $30 $c7

	adc h                                            ; $547f: $8c
	jr nc, jr_027_5461                               ; $5480: $30 $df

	ld h, d                                          ; $5482: $62
	nop                                              ; $5483: $00
	rlca                                             ; $5484: $07
	ret nz                                           ; $5485: $c0

	inc hl                                           ; $5486: $23
	ld e, $3c                                        ; $5487: $1e $3c
	db $e3                                           ; $5489: $e3
	dec e                                            ; $548a: $1d
	rst $38                                          ; $548b: $ff
	add b                                            ; $548c: $80
	nop                                              ; $548d: $00
	ccf                                              ; $548e: $3f
	ret nz                                           ; $548f: $c0

	ld bc, $4dc3                                     ; $5490: $01 $c3 $4d
	db $ec                                           ; $5493: $ec
	jr nz, @-$3e                                     ; $5494: $20 $c0

	nop                                              ; $5496: $00
	add e                                            ; $5497: $83
	rrca                                             ; $5498: $0f
	ld a, a                                          ; $5499: $7f
	ld a, [$fffb]                                    ; $549a: $fa $fb $ff
	ccf                                              ; $549d: $3f
	rst $38                                          ; $549e: $ff
	ld a, h                                          ; $549f: $7c
	ldh a, [$80]                                     ; $54a0: $f0 $80
	ld l, h                                          ; $54a2: $6c
	db $d3                                           ; $54a3: $d3
	add $40                                          ; $54a4: $c6 $40
	ld b, a                                          ; $54a6: $47
	rra                                              ; $54a7: $1f
	rst $38                                          ; $54a8: $ff
	rst $38                                          ; $54a9: $ff
	di                                               ; $54aa: $f3
	db $ec                                           ; $54ab: $ec
	add b                                            ; $54ac: $80
	ld sp, hl                                        ; $54ad: $f9
	rst $38                                          ; $54ae: $ff
	ld hl, sp-$20                                    ; $54af: $f8 $e0
	nop                                              ; $54b1: $00
	nop                                              ; $54b2: $00
	ret nz                                           ; $54b3: $c0

	rst $38                                          ; $54b4: $ff
	ld bc, $fc7f                                     ; $54b5: $01 $7f $fc
	db $e3                                           ; $54b8: $e3
	db $fc                                           ; $54b9: $fc
	cp $00                                           ; $54ba: $fe $00
	nop                                              ; $54bc: $00
	rst $38                                          ; $54bd: $ff
	add b                                            ; $54be: $80
	nop                                              ; $54bf: $00
	inc e                                            ; $54c0: $1c
	inc bc                                           ; $54c1: $03
	ld bc, $021b                                     ; $54c2: $01 $1b $02
	sbc a                                            ; $54c5: $9f
	or b                                             ; $54c6: $b0
	ld l, a                                          ; $54c7: $6f
	dec bc                                           ; $54c8: $0b
	ld b, l                                          ; $54c9: $45
	ld de, $9807                                     ; $54ca: $11 $07 $98
	ld bc, $7fe0                                     ; $54cd: $01 $e0 $7f
	rra                                              ; $54d0: $1f
	rlca                                             ; $54d1: $07
	add e                                            ; $54d2: $83
	ldh [$7b], a                                     ; $54d3: $e0 $7b
	ld [hl], e                                       ; $54d5: $73
	sub a                                            ; $54d6: $97
	rra                                              ; $54d7: $1f
	adc a                                            ; $54d8: $8f
	rst SubAFromBC                                          ; $54d9: $e7
	ei                                               ; $54da: $fb
	ld a, l                                          ; $54db: $7d
	rst $38                                          ; $54dc: $ff
	rst $38                                          ; $54dd: $ff
	ld a, a                                          ; $54de: $7f
	call c, $8aff                                    ; $54df: $dc $ff $8a
	call z, $fefe                                    ; $54e2: $cc $fe $fe
	rst FarCall                                          ; $54e5: $f7
	rst SubAFromHL                                          ; $54e6: $d7
	cp a                                             ; $54e7: $bf
	rst $38                                          ; $54e8: $ff
	rst $38                                          ; $54e9: $ff

jr_027_54ea:
	db $fc                                           ; $54ea: $fc
	cp $ff                                           ; $54eb: $fe $ff
	rst $38                                          ; $54ed: $ff
	rst AddAOntoHL                                          ; $54ee: $ef
	rst JumpTable                                          ; $54ef: $c7
	rlca                                             ; $54f0: $07
	rrca                                             ; $54f1: $0f
	adc $3f                                          ; $54f2: $ce $3f
	ldh [$e1], a                                     ; $54f4: $e0 $e1
	or $7b                                           ; $54f6: $f6 $7b
	db $f4                                           ; $54f8: $f4
	ld a, e                                          ; $54f9: $7b
	ld hl, sp-$6e                                    ; $54fa: $f8 $92
	pop af                                           ; $54fc: $f1
	cp $c2                                           ; $54fd: $fe $c2
	add c                                            ; $54ff: $81
	ld bc, $0f70                                     ; $5500: $01 $70 $0f
	nop                                              ; $5503: $00
	ldh [rAUD3LEVEL], a                              ; $5504: $e0 $1c
	jp c, $f6ff                                      ; $5506: $da $ff $f6

	ld h, a                                          ; $5509: $67
	ld hl, sp-$6a                                    ; $550a: $f8 $96
	ld [hl], e                                       ; $550c: $73
	rra                                              ; $550d: $1f
	rlca                                             ; $550e: $07
	add hl, de                                       ; $550f: $19
	pop bc                                           ; $5510: $c1
	rlca                                             ; $5511: $07
	dec de                                           ; $5512: $1b
	jr z, jr_027_5592                                ; $5513: $28 $7d

	ld l, e                                          ; $5515: $6b
	ld hl, sp+$08                                    ; $5516: $f8 $08
	nop                                              ; $5518: $00
	rst SubAFromDE                                          ; $5519: $df
	ld [hl+], a                                      ; $551a: $22
	db $dd                                           ; $551b: $dd
	ld h, [hl]                                       ; $551c: $66
	rst SubAFromDE                                          ; $551d: $df
	ld [hl+], a                                      ; $551e: $22
	reti                                             ; $551f: $d9


	add b                                            ; $5520: $80
	sbc $ff                                          ; $5521: $de $ff
	sub d                                            ; $5523: $92
	ld a, a                                          ; $5524: $7f
	rst $38                                          ; $5525: $ff
	rst FarCall                                          ; $5526: $f7
	di                                               ; $5527: $f3
	rst $38                                          ; $5528: $ff
	ccf                                              ; $5529: $3f
	ccf                                              ; $552a: $3f
	inc sp                                           ; $552b: $33
	add c                                            ; $552c: $81
	ld h, c                                          ; $552d: $61
	ld a, b                                          ; $552e: $78
	cp $30                                           ; $552f: $fe $30
	ret c                                            ; $5531: $d8

	rst $38                                          ; $5532: $ff
	sbc b                                            ; $5533: $98
	sbc $9e                                          ; $5534: $de $9e
	ccf                                              ; $5536: $3f
	ccf                                              ; $5537: $3f
	ld a, h                                          ; $5538: $7c
	ld a, b                                          ; $5539: $78
	ld a, b                                          ; $553a: $78
	sbc $ff                                          ; $553b: $de $ff
	ld a, a                                          ; $553d: $7f
	db $e3                                           ; $553e: $e3
	sbc c                                            ; $553f: $99
	rst $38                                          ; $5540: $ff
	rst AddAOntoHL                                          ; $5541: $ef
	rst $38                                          ; $5542: $ff
	pop af                                           ; $5543: $f1
	inc sp                                           ; $5544: $33
	ld [hl], a                                       ; $5545: $77
	sbc $ff                                          ; $5546: $de $ff
	sbc l                                            ; $5548: $9d
	ld e, $0f                                        ; $5549: $1e $0f
	db $dd                                           ; $554b: $dd
	rst $38                                          ; $554c: $ff
	sbc [hl]                                         ; $554d: $9e
	sbc a                                            ; $554e: $9f
	call c, $99ff                                    ; $554f: $dc $ff $99
	db $e3                                           ; $5552: $e3
	rst SubAFromBC                                          ; $5553: $e7
	db $fc                                           ; $5554: $fc
	inc l                                            ; $5555: $2c
	ld b, $22                                        ; $5556: $06 $22
	ld a, e                                          ; $5558: $7b
	pop hl                                           ; $5559: $e1
	sbc l                                            ; $555a: $9d
	ld sp, hl                                        ; $555b: $f9
	db $fc                                           ; $555c: $fc
	sbc $ff                                          ; $555d: $de $ff
	sub a                                            ; $555f: $97
	rst SubAFromBC                                          ; $5560: $e7
	adc a                                            ; $5561: $8f
	sbc a                                            ; $5562: $9f
	sbc a                                            ; $5563: $9f
	ld b, e                                          ; $5564: $43
	ld [hl+], a                                      ; $5565: $22
	rst $38                                          ; $5566: $ff
	ld c, $da                                        ; $5567: $0e $da
	rst $38                                          ; $5569: $ff
	sbc [hl]                                         ; $556a: $9e
	ld sp, hl                                        ; $556b: $f9
	jp c, $9eff                                      ; $556c: $da $ff $9e

	cp $de                                           ; $556f: $fe $de
	rst $38                                          ; $5571: $ff
	ld a, a                                          ; $5572: $7f
	jp $fd9c                                         ; $5573: $c3 $9c $fd


	cp $ee                                           ; $5576: $fe $ee
	db $dd                                           ; $5578: $dd
	rst $38                                          ; $5579: $ff
	sub e                                            ; $557a: $93
	rst FarCall                                          ; $557b: $f7
	ei                                               ; $557c: $fb
	db $fd                                           ; $557d: $fd
	rra                                              ; $557e: $1f
	rst $38                                          ; $557f: $ff
	rst FarCall                                          ; $5580: $f7
	rst $38                                          ; $5581: $ff

Jump_027_5582:
	xor $bd                                          ; $5582: $ee $bd
	cp a                                             ; $5584: $bf
	cp d                                             ; $5585: $ba
	sbc d                                            ; $5586: $9a
	ld a, e                                          ; $5587: $7b
	jp hl                                            ; $5588: $e9


	add a                                            ; $5589: $87
	rst SubAFromDE                                          ; $558a: $df
	sbc $dc                                          ; $558b: $de $dc
	db $dd                                           ; $558d: $dd
	db $fd                                           ; $558e: $fd
	rst $38                                          ; $558f: $ff
	ei                                               ; $5590: $fb
	adc a                                            ; $5591: $8f

jr_027_5592:
	sbc l                                            ; $5592: $9d
	scf                                              ; $5593: $37
	ld a, a                                          ; $5594: $7f
	rst $38                                          ; $5595: $ff
	ei                                               ; $5596: $fb
	rst $38                                          ; $5597: $ff
	db $fc                                           ; $5598: $fc
	ldh a, [$63]                                     ; $5599: $f0 $63
	rst GetHLinHL                                          ; $559b: $cf
	sbc a                                            ; $559c: $9f
	ccf                                              ; $559d: $3f
	ld a, h                                          ; $559e: $7c
	rst $38                                          ; $559f: $ff
	ei                                               ; $55a0: $fb
	ld a, a                                          ; $55a1: $7f
	sbc $ff                                          ; $55a2: $de $ff
	sbc e                                            ; $55a4: $9b
	ldh [rAUD1LEN], a                                ; $55a5: $e0 $11
	rst $38                                          ; $55a7: $ff
	rlca                                             ; $55a8: $07
	db $dd                                           ; $55a9: $dd
	rst $38                                          ; $55aa: $ff
	sbc l                                            ; $55ab: $9d
	rra                                              ; $55ac: $1f
	ldh [$da], a                                     ; $55ad: $e0 $da
	rst $38                                          ; $55af: $ff
	ld a, a                                          ; $55b0: $7f
	ret z                                            ; $55b1: $c8

	ld h, e                                          ; $55b2: $63
	xor a                                            ; $55b3: $af
	ld a, a                                          ; $55b4: $7f
	or e                                             ; $55b5: $b3
	adc e                                            ; $55b6: $8b
	rst $38                                          ; $55b7: $ff
	cp a                                             ; $55b8: $bf
	rst $38                                          ; $55b9: $ff
	rst $38                                          ; $55ba: $ff
	ld hl, sp-$1d                                    ; $55bb: $f8 $e3
	call $fffe                                       ; $55bd: $cd $fe $ff
	rst GetHLinHL                                          ; $55c0: $cf
	inc bc                                           ; $55c1: $03
	sbc a                                            ; $55c2: $9f
	rst $38                                          ; $55c3: $ff
	cp $e3                                           ; $55c4: $fe $e3
	ld [hl], c                                       ; $55c6: $71
	cp $ef                                           ; $55c7: $fe $ef
	pop af                                           ; $55c9: $f1
	sbc $6b                                          ; $55ca: $de $6b
	ld hl, sp+$7b                                    ; $55cc: $f8 $7b
	sub b                                            ; $55ce: $90
	sub [hl]                                         ; $55cf: $96
	dec sp                                           ; $55d0: $3b
	rst $38                                          ; $55d1: $ff
	dec c                                            ; $55d2: $0d
	adc a                                            ; $55d3: $8f
	sbc b                                            ; $55d4: $98
	ld l, a                                          ; $55d5: $6f
	rst $38                                          ; $55d6: $ff
	rst $38                                          ; $55d7: $ff
	ccf                                              ; $55d8: $3f
	ld l, e                                          ; $55d9: $6b
	ld hl, sp+$7b                                    ; $55da: $f8 $7b
	db $ed                                           ; $55dc: $ed
	sbc b                                            ; $55dd: $98
	di                                               ; $55de: $f3
	ld a, a                                          ; $55df: $7f
	cp e                                             ; $55e0: $bb
	ld hl, sp-$08                                    ; $55e1: $f8 $f8
	ld sp, hl                                        ; $55e3: $f9
	db $fd                                           ; $55e4: $fd
	ld a, e                                          ; $55e5: $7b
	dec d                                            ; $55e6: $15
	sbc [hl]                                         ; $55e7: $9e
	cp e                                             ; $55e8: $bb
	sbc $ff                                          ; $55e9: $de $ff
	ld a, a                                          ; $55eb: $7f
	rst SubAFromBC                                          ; $55ec: $e7
	ld a, e                                          ; $55ed: $7b
	db $db                                           ; $55ee: $db
	sub a                                            ; $55ef: $97
	ld a, a                                          ; $55f0: $7f
	ei                                               ; $55f1: $fb
	pop af                                           ; $55f2: $f1
	ldh a, [$f3]                                     ; $55f3: $f0 $f3
	rst SubAFromHL                                          ; $55f5: $d7
	inc e                                            ; $55f6: $1c
	db $fc                                           ; $55f7: $fc
	dec bc                                           ; $55f8: $0b
	nop                                              ; $55f9: $00
	rst SubAFromDE                                          ; $55fa: $df
	ld [hl+], a                                      ; $55fb: $22
	sbc c                                            ; $55fc: $99
	ld h, $66                                        ; $55fd: $26 $66
	ld h, [hl]                                       ; $55ff: $66
	ld h, d                                          ; $5600: $62
	ld [hl+], a                                      ; $5601: $22
	ld [hl+], a                                      ; $5602: $22
	add a                                            ; $5603: $87
	add [hl]                                         ; $5604: $86
	sbc e                                            ; $5605: $9b
	adc b                                            ; $5606: $88
	ld d, l                                          ; $5607: $55
	ld [hl+], a                                      ; $5608: $22
	ld d, l                                          ; $5609: $55
	ld [hl], a                                       ; $560a: $77
	db $fc                                           ; $560b: $fc
	sbc e                                            ; $560c: $9b
	ld [hl], a                                       ; $560d: $77
	xor d                                            ; $560e: $aa
	db $dd                                           ; $560f: $dd
	xor d                                            ; $5610: $aa
	ld [hl], a                                       ; $5611: $77
	db $fc                                           ; $5612: $fc
	rlca                                             ; $5613: $07
	ldh a, [hDisp1_LCDC]                                     ; $5614: $f0 $8f
	and c                                            ; $5616: $a1
	ld h, c                                          ; $5617: $61
	ld de, $9151                                     ; $5618: $11 $51 $91
	ld d, b                                          ; $561b: $50
	jr z, @+$5a                                      ; $561c: $28 $58

	ld a, [hl]                                       ; $561e: $7e
	cp [hl]                                          ; $561f: $be
	cp $be                                           ; $5620: $fe $be
	ld a, [hl]                                       ; $5622: $7e
	cp a                                             ; $5623: $bf
	rst SubAFromDE                                          ; $5624: $df
	xor a                                            ; $5625: $af
	reti                                             ; $5626: $d9


	rst $38                                          ; $5627: $ff
	ld sp, hl                                        ; $5628: $f9
	add a                                            ; $5629: $87
	db $fc                                           ; $562a: $fc
	cp $ff                                           ; $562b: $fe $ff
	rra                                              ; $562d: $1f
	rrca                                             ; $562e: $0f
	add a                                            ; $562f: $87
	add e                                            ; $5630: $83
	pop bc                                           ; $5631: $c1
	inc bc                                           ; $5632: $03
	ld bc, $e000                                     ; $5633: $01 $00 $e0
	ldh a, [$78]                                     ; $5636: $f0 $78
	ld a, h                                          ; $5638: $7c
	ld a, $08                                        ; $5639: $3e $08
	ld b, $03                                        ; $563b: $06 $03
	add b                                            ; $563d: $80
	ret nz                                           ; $563e: $c0

	add sp, -$0c                                     ; $563f: $e8 $f4
	ld a, [$ffde]                                    ; $5641: $fa $de $ff
	sub d                                            ; $5644: $92
	ld a, a                                          ; $5645: $7f
	ccf                                              ; $5646: $3f
	rra                                              ; $5647: $1f
	rrca                                             ; $5648: $0f
	rlca                                             ; $5649: $07
	ld h, a                                          ; $564a: $67
	inc sp                                           ; $564b: $33
	add hl, sp                                       ; $564c: $39
	sbc h                                            ; $564d: $9c
	ld e, a                                          ; $564e: $5f
	inc a                                            ; $564f: $3c
	rrca                                             ; $5650: $0f
	rrca                                             ; $5651: $0f
	ld a, e                                          ; $5652: $7b
	ret c                                            ; $5653: $d8

	rst SubAFromDE                                          ; $5654: $df
	rst $38                                          ; $5655: $ff

Call_027_5656:
	add b                                            ; $5656: $80
	db $fc                                           ; $5657: $fc
	ld a, [$c3f9]                                    ; $5658: $fa $f9 $c3
	pop hl                                           ; $565b: $e1
	ld hl, sp-$01                                    ; $565c: $f8 $ff
	add b                                            ; $565e: $80
	ld a, b                                          ; $565f: $78
	rst $38                                          ; $5660: $ff
	rst $38                                          ; $5661: $ff
	add b                                            ; $5662: $80
	ld b, b                                          ; $5663: $40
	jr nc, @+$01                                     ; $5664: $30 $ff

	add b                                            ; $5666: $80
	nop                                              ; $5667: $00
	nop                                              ; $5668: $00
	add b                                            ; $5669: $80
	db $fc                                           ; $566a: $fc
	sbc a                                            ; $566b: $9f
	call z, Call_027_7fe6                            ; $566c: $cc $e6 $7f
	inc bc                                           ; $566f: $03
	ret nz                                           ; $5670: $c0

	rst $38                                          ; $5671: $ff
	rst $38                                          ; $5672: $ff
	inc de                                           ; $5673: $13
	ld [$9584], sp                                   ; $5674: $08 $84 $95
	ld a, [hl]                                       ; $5677: $7e
	inc bc                                           ; $5678: $03
	nop                                              ; $5679: $00
	rlca                                             ; $567a: $07
	ld sp, $9d96                                     ; $567b: $31 $96 $9d
	ld e, e                                          ; $567e: $5b
	ld [hl], d                                       ; $567f: $72
	ld h, $73                                        ; $5680: $26 $73
	sbc c                                            ; $5682: $99
	rst SubAFromDE                                          ; $5683: $df
	ld a, [hl]                                       ; $5684: $7e
	add a                                            ; $5685: $87
	inc a                                            ; $5686: $3c
	cp a                                             ; $5687: $bf
	pop af                                           ; $5688: $f1
	rst $38                                          ; $5689: $ff
	ldh a, [c]                                       ; $568a: $f2
	and d                                            ; $568b: $a2
	ld h, h                                          ; $568c: $64
	ld c, a                                          ; $568d: $4f
	call c, $c0f0                                    ; $568e: $dc $f0 $c0
	pop hl                                           ; $5691: $e1
	and e                                            ; $5692: $a3
	inc hl                                           ; $5693: $23
	ld b, a                                          ; $5694: $47
	ld c, a                                          ; $5695: $4f
	sbc b                                            ; $5696: $98
	ld h, b                                          ; $5697: $60
	add b                                            ; $5698: $80
	rlca                                             ; $5699: $07
	inc bc                                           ; $569a: $03
	inc bc                                           ; $569b: $03
	db $fd                                           ; $569c: $fd
	inc bc                                           ; $569d: $03
	sbc $01                                          ; $569e: $de $01
	db $dd                                           ; $56a0: $dd
	rst $38                                          ; $56a1: $ff
	ld [hl], a                                       ; $56a2: $77
	ld hl, sp-$73                                    ; $56a3: $f8 $8d
	cp a                                             ; $56a5: $bf
	ld a, a                                          ; $56a6: $7f
	rst $38                                          ; $56a7: $ff
	rst $38                                          ; $56a8: $ff
	db $fd                                           ; $56a9: $fd
	ld a, a                                          ; $56aa: $7f
	cp a                                             ; $56ab: $bf
	ld e, e                                          ; $56ac: $5b
	ret nz                                           ; $56ad: $c0

	add b                                            ; $56ae: $80
	ld bc, $0301                                     ; $56af: $01 $01 $03
	add e                                            ; $56b2: $83
	jp $8867                                         ; $56b3: $c3 $67 $88


	push de                                          ; $56b6: $d5
	ld l, a                                          ; $56b7: $6f
	ld b, b                                          ; $56b8: $40
	sbc [hl]                                         ; $56b9: $9e
	rst FarCall                                          ; $56ba: $f7
	inc bc                                           ; $56bb: $03
	jr nz, @+$05                                     ; $56bc: $20 $03

	ldh a, [$6f]                                     ; $56be: $f0 $6f
	ldh a, [hDisp1_SCY]                                     ; $56c0: $f0 $90
	ld d, h                                          ; $56c2: $54
	inc h                                            ; $56c3: $24
	ld d, h                                          ; $56c4: $54
	adc d                                            ; $56c5: $8a
	ld d, d                                          ; $56c6: $52
	ld a, [hl+]                                      ; $56c7: $2a
	ld d, l                                          ; $56c8: $55
	ld a, a                                          ; $56c9: $7f
	xor a                                            ; $56ca: $af
	rst SubAFromDE                                          ; $56cb: $df
	xor a                                            ; $56cc: $af
	ld [hl], a                                       ; $56cd: $77
	xor a                                            ; $56ce: $af
	rst SubAFromHL                                          ; $56cf: $d7
	xor e                                            ; $56d0: $ab
	call c, $deff                                    ; $56d1: $dc $ff $de
	ld a, a                                          ; $56d4: $7f
	db $fc                                           ; $56d5: $fc
	sbc $80                                          ; $56d6: $de $80
	rst SubAFromDE                                          ; $56d8: $df
	ldh [$df], a                                     ; $56d9: $e0 $df
	ldh a, [$df]                                     ; $56db: $f0 $df
	ld hl, sp+$7f                                    ; $56dd: $f8 $7f
	ld [hl+], a                                      ; $56df: $22
	rst SubAFromDE                                          ; $56e0: $df
	rra                                              ; $56e1: $1f
	rst SubAFromDE                                          ; $56e2: $df
	rrca                                             ; $56e3: $0f
	rst SubAFromDE                                          ; $56e4: $df
	rlca                                             ; $56e5: $07
	ld a, a                                          ; $56e6: $7f
	ld l, [hl]                                       ; $56e7: $6e
	ld a, e                                          ; $56e8: $7b
	ld a, [bc]                                       ; $56e9: $0a
	ld [hl], a                                       ; $56ea: $77
	add hl, bc                                       ; $56eb: $09
	sbc c                                            ; $56ec: $99
	rlca                                             ; $56ed: $07
	ld bc, $c080                                     ; $56ee: $01 $80 $c0
	ret nz                                           ; $56f1: $c0

	ldh [$7b], a                                     ; $56f2: $e0 $7b
	and $9c                                          ; $56f4: $e6 $9c
	add [hl]                                         ; $56f6: $86
	ld b, [hl]                                       ; $56f7: $46
	ld l, $7b                                        ; $56f8: $2e $7b
	pop af                                           ; $56fa: $f1
	ld a, a                                          ; $56fb: $7f
	add sp, -$22                                     ; $56fc: $e8 $de
	db $fc                                           ; $56fe: $fc
	sbc $fe                                          ; $56ff: $de $fe
	ld a, e                                          ; $5701: $7b
	push bc                                          ; $5702: $c5
	rst $38                                          ; $5703: $ff
	ld a, a                                          ; $5704: $7f
	ld e, b                                          ; $5705: $58
	sbc h                                            ; $5706: $9c
	rlca                                             ; $5707: $07
	add a                                            ; $5708: $87
	jp $bf6f                                         ; $5709: $c3 $6f $bf


	rst $38                                          ; $570c: $ff
	sbc e                                            ; $570d: $9b
	ld hl, sp+$00                                    ; $570e: $f8 $00
	nop                                              ; $5710: $00
	ldh [$de], a                                     ; $5711: $e0 $de
	rst $38                                          ; $5713: $ff
	sbc [hl]                                         ; $5714: $9e
	cp $7b                                           ; $5715: $fe $7b
	ld hl, sp-$04                                    ; $5717: $f8 $fc
	sbc [hl]                                         ; $5719: $9e
	ld h, l                                          ; $571a: $65
	sbc $32                                          ; $571b: $de $32
	adc e                                            ; $571d: $8b
	sub d                                            ; $571e: $92
	rst FarCall                                          ; $571f: $f7
	rst SubAFromHL                                          ; $5720: $d7
	rra                                              ; $5721: $1f
	ld b, b                                          ; $5722: $40
	jr nz, jr_027_5745                               ; $5723: $20 $20

	db $10                                           ; $5725: $10
	ld [de], a                                       ; $5726: $12
	ldh a, [c]                                       ; $5727: $f2
	ld [de], a                                       ; $5728: $12
	inc de                                           ; $5729: $13
	add b                                            ; $572a: $80
	add b                                            ; $572b: $80
	db $fc                                           ; $572c: $fc
	rst $38                                          ; $572d: $ff
	rst $38                                          ; $572e: $ff
	rst GetHLinHL                                          ; $572f: $cf
	jp Jump_027_77e0                                 ; $5730: $c3 $e0 $77


	sub l                                            ; $5733: $95
	db $dd                                           ; $5734: $dd
	add b                                            ; $5735: $80
	sbc $03                                          ; $5736: $de $03
	db $dd                                           ; $5738: $dd
	db $e3                                           ; $5739: $e3
	sbc [hl]                                         ; $573a: $9e
	jp $02d9                                         ; $573b: $c3 $d9 $02


	adc a                                            ; $573e: $8f
	ld a, l                                          ; $573f: $7d
	dec [hl]                                         ; $5740: $35
	ld e, c                                          ; $5741: $59
	cp c                                             ; $5742: $b9
	or e                                             ; $5743: $b3
	ld [hl], e                                       ; $5744: $73

jr_027_5745:
	ld [hl], e                                       ; $5745: $73
	rst SubAFromBC                                          ; $5746: $e7
	ld b, a                                          ; $5747: $47
	cpl                                              ; $5748: $2f
	ld l, a                                          ; $5749: $6f
	rst GetHLinHL                                          ; $574a: $cf
	db $ed                                           ; $574b: $ed
	ld l, l                                          ; $574c: $6d
	ld c, h                                          ; $574d: $4c
	ret c                                            ; $574e: $d8

	ld [hl], e                                       ; $574f: $73
	ld b, b                                          ; $5750: $40
	sbc h                                            ; $5751: $9c
	push de                                          ; $5752: $d5
	and d                                            ; $5753: $a2
	push de                                          ; $5754: $d5
	daa                                              ; $5755: $27
	jr nc, @-$61                                     ; $5756: $30 $9d

	xor d                                            ; $5758: $aa
	ld d, l                                          ; $5759: $55
	ld l, a                                          ; $575a: $6f
	cp $6b                                           ; $575b: $fe $6b
	ld sp, hl                                        ; $575d: $f9
	inc bc                                           ; $575e: $03
	ldh a, [$9e]                                     ; $575f: $f0 $9e
	xor e                                            ; $5761: $ab
	ld h, a                                          ; $5762: $67
	ldh a, [rOCPD]                                   ; $5763: $f0 $6b
	rst FarCall                                          ; $5765: $f7
	ld a, a                                          ; $5766: $7f
	ld hl, $bfde                                     ; $5767: $21 $de $bf
	sbc h                                            ; $576a: $9c
	ld e, a                                          ; $576b: $5f
	rst SubAFromDE                                          ; $576c: $df
	ld l, a                                          ; $576d: $6f
	ld a, e                                          ; $576e: $7b
	ld hl, $1f7b                                     ; $576f: $21 $7b $1f
	sbc l                                            ; $5772: $9d
	ld h, b                                          ; $5773: $60
	or b                                             ; $5774: $b0
	ld b, l                                          ; $5775: $45
	ldh a, [$7f]                                     ; $5776: $f0 $7f
	ld d, $7f                                        ; $5778: $16 $7f
	and $7b                                          ; $577a: $e6 $7b
	ld [$127b], sp                                   ; $577c: $08 $7b $12
	ld [hl], d                                       ; $577f: $72
	ld bc, $0395                                     ; $5780: $01 $95 $03
	add c                                            ; $5783: $81
	pop hl                                           ; $5784: $e1
	ldh [$f0], a                                     ; $5785: $e0 $f0
	ld [hl], b                                       ; $5787: $70
	jr c, @+$1a                                      ; $5788: $38 $18

	inc c                                            ; $578a: $0c
	ld a, a                                          ; $578b: $7f
	ld a, d                                          ; $578c: $7a
	rst SubAFromDE                                          ; $578d: $df
	sbc d                                            ; $578e: $9a
	adc a                                            ; $578f: $8f
	rst JumpTable                                          ; $5790: $c7
	rst SubAFromBC                                          ; $5791: $e7
	di                                               ; $5792: $f3
	pop bc                                           ; $5793: $c1
	ld a, e                                          ; $5794: $7b
	db $e3                                           ; $5795: $e3
	ld a, a                                          ; $5796: $7f
	ret                                              ; $5797: $c9


	sbc l                                            ; $5798: $9d
	ld [hl], b                                       ; $5799: $70
	ld a, b                                          ; $579a: $78
	ld [hl], d                                       ; $579b: $72
	jp $c0de                                         ; $579c: $c3 $de $c0


	ld [hl], a                                       ; $579f: $77
	ld [$019b], sp                                   ; $57a0: $08 $9b $01
	rlca                                             ; $57a3: $07
	ld e, $7c                                        ; $57a4: $1e $7c
	db $fd                                           ; $57a6: $fd
	adc e                                            ; $57a7: $8b
	ld bc, $0402                                     ; $57a8: $01 $02 $04
	ld [$3f1f], sp                                   ; $57ab: $08 $1f $3f
	ld a, a                                          ; $57ae: $7f
	rst $38                                          ; $57af: $ff
	rst FarCall                                          ; $57b0: $f7
	ld [hl], a                                       ; $57b1: $77
	rst FarCall                                          ; $57b2: $f7
	rst SubAFromBC                                          ; $57b3: $e7
	ld d, $3f                                        ; $57b4: $16 $3f
	ld d, [hl]                                       ; $57b6: $56
	sub a                                            ; $57b7: $97
	ld d, $17                                        ; $57b8: $16 $17
	ld h, $26                                        ; $57ba: $26 $26
	ld a, d                                          ; $57bc: $7a
	and d                                            ; $57bd: $a2
	ld a, d                                          ; $57be: $7a
	rst JumpTable                                          ; $57bf: $c7
	rst SubAFromDE                                          ; $57c0: $df
	rst $38                                          ; $57c1: $ff
	ld a, e                                          ; $57c2: $7b
	sub e                                            ; $57c3: $93
	ld a, a                                          ; $57c4: $7f
	cp c                                             ; $57c5: $b9
	sbc c                                            ; $57c6: $99
	inc l                                            ; $57c7: $2c
	ld d, $13                                        ; $57c8: $16 $13
	inc bc                                           ; $57ca: $03
	ld [bc], a                                       ; $57cb: $02
	ld [bc], a                                       ; $57cc: $02
	sbc $03                                          ; $57cd: $de $03
	sbc l                                            ; $57cf: $9d
	ld [bc], a                                       ; $57d0: $02
	call z, $03da                                    ; $57d1: $cc $da $03
	sbc e                                            ; $57d4: $9b
	add a                                            ; $57d5: $87
	rst SubAFromBC                                          ; $57d6: $e7
	xor a                                            ; $57d7: $af
	rst AddAOntoHL                                          ; $57d8: $ef
	ld a, d                                          ; $57d9: $7a
	ld [hl], c                                       ; $57da: $71
	rst SubAFromDE                                          ; $57db: $df
	cp $9c                                           ; $57dc: $fe $9c
	ret c                                            ; $57de: $d8

	ret nc                                           ; $57df: $d0

	sub b                                            ; $57e0: $90
	sbc $80                                          ; $57e1: $de $80
	rst SubAFromDE                                          ; $57e3: $df
	ld bc, $aa9d                                     ; $57e4: $01 $9d $aa
	push de                                          ; $57e7: $d5
	ld l, a                                          ; $57e8: $6f
	cp $6b                                           ; $57e9: $fe $6b
	ld sp, hl                                        ; $57eb: $f9
	inc bc                                           ; $57ec: $03
	jr nz, @+$05                                     ; $57ed: $20 $03

	ldh a, [rWX]                                     ; $57ef: $f0 $4b
	ldh a, [hDisp1_SCY]                                     ; $57f1: $f0 $90
	and a                                            ; $57f3: $a7
	ld d, e                                          ; $57f4: $53
	or c                                             ; $57f5: $b1
	ld d, b                                          ; $57f6: $50
	xor b                                            ; $57f7: $a8
	ld e, h                                          ; $57f8: $5c
	xor h                                            ; $57f9: $ac
	ld e, d                                          ; $57fa: $5a
	ld a, b                                          ; $57fb: $78
	cp h                                             ; $57fc: $bc
	ld e, [hl]                                       ; $57fd: $5e
	cp a                                             ; $57fe: $bf
	ld e, a                                          ; $57ff: $5f
	xor a                                            ; $5800: $af
	ld e, a                                          ; $5801: $5f
	ld [hl], l                                       ; $5802: $75
	ld d, a                                          ; $5803: $57
	ld a, a                                          ; $5804: $7f
	rla                                              ; $5805: $17
	ld a, a                                          ; $5806: $7f
	jr jr_027_5886                                   ; $5807: $18 $7d

	ld [bc], a                                       ; $5809: $02
	ld a, e                                          ; $580a: $7b
	cpl                                              ; $580b: $2f
	sbc e                                            ; $580c: $9b
	ret nz                                           ; $580d: $c0

	ldh a, [$f8]                                     ; $580e: $f0 $f8
	cp $71                                           ; $5810: $fe $71
	jr jr_027_5885                                   ; $5812: $18 $71

	ld h, h                                          ; $5814: $64
	ei                                               ; $5815: $fb
	sbc e                                            ; $5816: $9b
	inc c                                            ; $5817: $0c
	inc b                                            ; $5818: $04
	ld [bc], a                                       ; $5819: $02
	add d                                            ; $581a: $82
	ld a, e                                          ; $581b: $7b
	add sp, -$66                                     ; $581c: $e8 $9a
	db $fc                                           ; $581e: $fc
	di                                               ; $581f: $f3
	ei                                               ; $5820: $fb
	db $fd                                           ; $5821: $fd
	ld a, l                                          ; $5822: $7d
	ld a, e                                          ; $5823: $7b
	ret c                                            ; $5824: $d8

	sbc [hl]                                         ; $5825: $9e
	inc bc                                           ; $5826: $03
	ld [hl], l                                       ; $5827: $75
	pop hl                                           ; $5828: $e1
	ld [hl], l                                       ; $5829: $75
	push de                                          ; $582a: $d5
	ld a, a                                          ; $582b: $7f
	ld sp, $f19c                                     ; $582c: $31 $9c $f1
	cp $fc                                           ; $582f: $fe $fc
	ld a, e                                          ; $5831: $7b
	dec h                                            ; $5832: $25
	adc d                                            ; $5833: $8a
	ld sp, hl                                        ; $5834: $f9
	di                                               ; $5835: $f3
	rst SubAFromBC                                          ; $5836: $e7
	rst JumpTable                                          ; $5837: $c7
	adc a                                            ; $5838: $8f
	adc a                                            ; $5839: $8f
	rrca                                             ; $583a: $0f
	ld b, $10                                        ; $583b: $06 $10
	ld h, d                                          ; $583d: $62
	add h                                            ; $583e: $84
	nop                                              ; $583f: $00
	nop                                              ; $5840: $00
	add hl, bc                                       ; $5841: $09
	ld bc, $e706                                     ; $5842: $01 $06 $e7
	rst SubAFromBC                                          ; $5845: $e7
	rst JumpTable                                          ; $5846: $c7
	add a                                            ; $5847: $87
	add a                                            ; $5848: $87
	sbc $07                                          ; $5849: $de $07
	sbc d                                            ; $584b: $9a
	inc h                                            ; $584c: $24
	ld b, h                                          ; $584d: $44
	ld b, h                                          ; $584e: $44
	add h                                            ; $584f: $84
	add h                                            ; $5850: $84
	sbc $02                                          ; $5851: $de $02
	ld a, a                                          ; $5853: $7f
	ret                                              ; $5854: $c9


	sbc l                                            ; $5855: $9d
	ld a, h                                          ; $5856: $7c
	ld a, [hl]                                       ; $5857: $7e
	ld [hl], l                                       ; $5858: $75
	xor [hl]                                         ; $5859: $ae
	rst SubAFromDE                                          ; $585a: $df
	ld [$04df], sp                                   ; $585b: $08 $df $04
	sbc e                                            ; $585e: $9b
	ld [bc], a                                       ; $585f: $02
	ld bc, $0001                                     ; $5860: $01 $01 $00
	ld a, c                                          ; $5863: $79
	sub h                                            ; $5864: $94
	sbc c                                            ; $5865: $99
	ld [hl], h                                       ; $5866: $74
	ld [hl], $12                                     ; $5867: $36 $12
	ld b, $04                                        ; $5869: $06 $04
	rst $38                                          ; $586b: $ff
	ld [hl], l                                       ; $586c: $75
	sub d                                            ; $586d: $92
	rst SubAFromDE                                          ; $586e: $df
	inc bc                                           ; $586f: $03
	sbc l                                            ; $5870: $9d
	rlca                                             ; $5871: $07
	ld a, a                                          ; $5872: $7f
	sbc $6f                                          ; $5873: $de $6f
	sbc d                                            ; $5875: $9a
	ld c, a                                          ; $5876: $4f
	rst GetHLinHL                                          ; $5877: $cf
	rst SubAFromDE                                          ; $5878: $df
	sbc a                                            ; $5879: $9f
	add c                                            ; $587a: $81
	sbc $91                                          ; $587b: $de $91
	sbc e                                            ; $587d: $9b
	or c                                             ; $587e: $b1
	ld sp, $6121                                     ; $587f: $31 $21 $61
	inc bc                                           ; $5882: $03
	jr nc, jr_027_58f2                               ; $5883: $30 $6d

jr_027_5885:
	ld sp, hl                                        ; $5885: $f9

jr_027_5886:
	sbc [hl]                                         ; $5886: $9e
	ld [hl], a                                       ; $5887: $77
	ld l, c                                          ; $5888: $69
	jp hl                                            ; $5889: $e9


	sbc [hl]                                         ; $588a: $9e
	adc b                                            ; $588b: $88
	inc bc                                           ; $588c: $03
	ldh a, [rBGP]                                    ; $588d: $f0 $47
	ldh a, [hDisp1_SCY]                                     ; $588f: $f0 $90
	reti                                             ; $5891: $d9


	xor h                                            ; $5892: $ac
	ld [hl], h                                       ; $5893: $74
	xor h                                            ; $5894: $ac
	call c, Call_027_76ac                            ; $5895: $dc $ac $76
	ld e, a                                          ; $5898: $5f
	cpl                                              ; $5899: $2f
	ld d, a                                          ; $589a: $57
	adc a                                            ; $589b: $8f
	ld d, a                                          ; $589c: $57
	daa                                              ; $589d: $27
	ld d, a                                          ; $589e: $57
	adc e                                            ; $589f: $8b
	ld a, e                                          ; $58a0: $7b
	add hl, bc                                       ; $58a1: $09
	rst SubAFromDE                                          ; $58a2: $df
	ld b, b                                          ; $58a3: $40
	sbc h                                            ; $58a4: $9c
	ld h, b                                          ; $58a5: $60
	ld d, b                                          ; $58a6: $50
	ld d, b                                          ; $58a7: $50
	reti                                             ; $58a8: $d9


	rst $38                                          ; $58a9: $ff
	halt                                             ; $58aa: $76
	ld a, [bc]                                       ; $58ab: $0a
	db $dd                                           ; $58ac: $dd
	rrca                                             ; $58ad: $0f
	ld [hl], l                                       ; $58ae: $75
	ld a, [$f0dd]                                    ; $58af: $fa $dd $f0
	ld l, d                                          ; $58b2: $6a
	pop af                                           ; $58b3: $f1
	sbc [hl]                                         ; $58b4: $9e
	rst $38                                          ; $58b5: $ff
	ld l, d                                          ; $58b6: $6a
	pop af                                           ; $58b7: $f1
	ld a, l                                          ; $58b8: $7d
	ldh [$7c], a                                     ; $58b9: $e0 $7c
	ld e, e                                          ; $58bb: $5b
	sbc [hl]                                         ; $58bc: $9e
	pop bc                                           ; $58bd: $c1
	ld a, c                                          ; $58be: $79
	db $ed                                           ; $58bf: $ed
	sbc [hl]                                         ; $58c0: $9e
	ld hl, sp+$73                                    ; $58c1: $f8 $73
	sub $79                                          ; $58c3: $d6 $79
	rst SubAFromDE                                          ; $58c5: $df
	ld l, h                                          ; $58c6: $6c
	cp d                                             ; $58c7: $ba
	rst SubAFromDE                                          ; $58c8: $df
	pop bc                                           ; $58c9: $c1
	ld h, h                                          ; $58ca: $64
	or b                                             ; $58cb: $b0
	rst SubAFromDE                                          ; $58cc: $df
	ld b, a                                          ; $58cd: $47
	sub l                                            ; $58ce: $95
	rst GetHLinHL                                          ; $58cf: $cf
	rst $38                                          ; $58d0: $ff
	rst FarCall                                          ; $58d1: $f7
	di                                               ; $58d2: $f3
	pop hl                                           ; $58d3: $e1
	and c                                            ; $58d4: $a1
	ld [bc], a                                       ; $58d5: $02
	ld [bc], a                                       ; $58d6: $02
	ld b, $0e                                        ; $58d7: $06 $0e
	ld [hl], l                                       ; $58d9: $75
	db $f4                                           ; $58da: $f4
	ld a, e                                          ; $58db: $7b
	rst SubAFromDE                                          ; $58dc: $df
	halt                                             ; $58dd: $76
	xor b                                            ; $58de: $a8
	sbc [hl]                                         ; $58df: $9e
	db $fc                                           ; $58e0: $fc
	db $fc                                           ; $58e1: $fc
	ld a, a                                          ; $58e2: $7f
	xor h                                            ; $58e3: $ac
	adc h                                            ; $58e4: $8c
	ld hl, sp+$0c                                    ; $58e5: $f8 $0c
	ld [$1018], sp                                   ; $58e7: $08 $18 $10
	jr nc, jr_027_590c                               ; $58ea: $30 $20

	ld h, b                                          ; $58ec: $60
	ret nz                                           ; $58ed: $c0

	rlca                                             ; $58ee: $07
	rrca                                             ; $58ef: $0f
	rrca                                             ; $58f0: $0f
	rra                                              ; $58f1: $1f

jr_027_58f2:
	rra                                              ; $58f2: $1f
	ccf                                              ; $58f3: $3f
	ccf                                              ; $58f4: $3f
	ld a, a                                          ; $58f5: $7f
	sbc a                                            ; $58f6: $9f
	cp a                                             ; $58f7: $bf
	ld a, e                                          ; $58f8: $7b
	ei                                               ; $58f9: $fb
	sub d                                            ; $58fa: $92
	ld a, a                                          ; $58fb: $7f
	db $fd                                           ; $58fc: $fd
	db $fd                                           ; $58fd: $fd
	ld h, c                                          ; $58fe: $61
	ld b, c                                          ; $58ff: $41
	pop bc                                           ; $5900: $c1
	pop bc                                           ; $5901: $c1
	add c                                            ; $5902: $81
	add c                                            ; $5903: $81
	inc bc                                           ; $5904: $03
	inc bc                                           ; $5905: $03
	xor d                                            ; $5906: $aa
	ld e, l                                          ; $5907: $5d
	ld l, e                                          ; $5908: $6b
	ld d, b                                          ; $5909: $50
	sbc [hl]                                         ; $590a: $9e
	and d                                            ; $590b: $a2

jr_027_590c:
	inc bc                                           ; $590c: $03
	jr nc, @+$05                                     ; $590d: $30 $03

	ldh a, [$33]                                     ; $590f: $f0 $33
	ldh a, [$9c]                                     ; $5911: $f0 $9c
	sbc $aa                                          ; $5913: $de $aa
	halt                                             ; $5915: $76
	ld [hl], a                                       ; $5916: $77
	db $fc                                           ; $5917: $fc
	sbc e                                            ; $5918: $9b
	ld d, a                                          ; $5919: $57
	inc hl                                           ; $591a: $23
	ld d, a                                          ; $591b: $57
	adc e                                            ; $591c: $8b
	ld [hl], a                                       ; $591d: $77
	db $fc                                           ; $591e: $fc
	sbc e                                            ; $591f: $9b
	ld c, b                                          ; $5920: $48
	jr z, @+$26                                      ; $5921: $28 $24

	inc h                                            ; $5923: $24
	sbc $22                                          ; $5924: $de $22
	sbc [hl]                                         ; $5926: $9e
	ld hl, $ffd9                                     ; $5927: $21 $d9 $ff
	ld [hl], a                                       ; $592a: $77
	ld l, c                                          ; $592b: $69
	sbc $1f                                          ; $592c: $de $1f
	sbc h                                            ; $592e: $9c
	rrca                                             ; $592f: $0f
	ldh a, [$f0]                                     ; $5930: $f0 $f0
	call c, $9ee0                                    ; $5932: $dc $e0 $9e
	ldh a, [rLY]                                     ; $5935: $f0 $44
	ldh [$78], a                                     ; $5937: $e0 $78
	rst SubAFromBC                                          ; $5939: $e7
	sbc [hl]                                         ; $593a: $9e
	rst $38                                          ; $593b: $ff
	halt                                             ; $593c: $76
	db $ec                                           ; $593d: $ec
	rst SubAFromDE                                          ; $593e: $df
	inc bc                                           ; $593f: $03
	sbc $01                                          ; $5940: $de $01
	cp $94                                           ; $5942: $fe $94
	ld b, a                                          ; $5944: $47
	ld l, h                                          ; $5945: $6c
	jr c, jr_027_5978                                ; $5946: $38 $30

	and b                                            ; $5948: $a0
	ld h, b                                          ; $5949: $60

jr_027_594a:
	jr nz, @+$12                                     ; $594a: $20 $10

	jp $efc7                                         ; $594c: $c3 $c7 $ef


	ld d, e                                          ; $594f: $53
	ret c                                            ; $5950: $d8

	rst SubAFromHL                                          ; $5951: $d7
	rst $38                                          ; $5952: $ff
	sbc $f9                                          ; $5953: $de $f9
	sbc e                                            ; $5955: $9b
	ldh a, [c]                                       ; $5956: $f2
	db $f4                                           ; $5957: $f4
	db $e4                                           ; $5958: $e4
	db $fc                                           ; $5959: $fc
	jp c, Jump_027_7bff                              ; $595a: $da $ff $7b

	inc e                                            ; $595d: $1c
	ld [hl], a                                       ; $595e: $77
	dec b                                            ; $595f: $05
	sbc l                                            ; $5960: $9d
	ccf                                              ; $5961: $3f
	cp $79                                           ; $5962: $fe $79
	jp nz, $9c7b                                     ; $5964: $c2 $7b $9c

	sbc h                                            ; $5967: $9c
	ret nz                                           ; $5968: $c0

	db $fd                                           ; $5969: $fd
	db $fd                                           ; $596a: $fd
	db $dd                                           ; $596b: $dd
	ld sp, hl                                        ; $596c: $f9
	sbc l                                            ; $596d: $9d
	ei                                               ; $596e: $fb
	di                                               ; $596f: $f3
	ld a, c                                          ; $5970: $79
	push af                                          ; $5971: $f5
	sbc $07                                          ; $5972: $de $07
	ld a, [hl]                                       ; $5974: $7e
	call z, Call_027_4007                            ; $5975: $cc $07 $40

jr_027_5978:
	sbc l                                            ; $5978: $9d
	db $dd                                           ; $5979: $dd
	ld [hl], a                                       ; $597a: $77
	ld l, a                                          ; $597b: $6f
	cp $9d                                           ; $597c: $fe $9d
	ld [hl+], a                                      ; $597e: $22
	adc b                                            ; $597f: $88
	ld l, a                                          ; $5980: $6f
	cp $03                                           ; $5981: $fe $03
	ldh a, [rWX]                                     ; $5983: $f0 $4b
	ldh a, [hDisp1_BGP]                                     ; $5985: $f0 $92
	call c, $dc74                                    ; $5987: $dc $74 $dc
	ld [hl], h                                       ; $598a: $74
	ret c                                            ; $598b: $d8

	ld a, b                                          ; $598c: $78
	ret c                                            ; $598d: $d8

	ld a, b                                          ; $598e: $78
	daa                                              ; $598f: $27
	adc a                                            ; $5990: $8f
	daa                                              ; $5991: $27
	adc a                                            ; $5992: $8f
	cpl                                              ; $5993: $2f
	ld a, e                                          ; $5994: $7b
	cp $df                                           ; $5995: $fe $df
	ld b, c                                          ; $5997: $41
	db $db                                           ; $5998: $db
	ld b, b                                          ; $5999: $40
	reti                                             ; $599a: $d9


	rst $38                                          ; $599b: $ff
	ld a, l                                          ; $599c: $7d
	ld l, e                                          ; $599d: $6b
	rst SubAFromDE                                          ; $599e: $df
	add b                                            ; $599f: $80
	ld a, l                                          ; $59a0: $7d
	ldh a, [$7f]                                     ; $59a1: $f0 $7f
	jr nc, @+$80                                     ; $59a3: $30 $7e

	ld c, [hl]                                       ; $59a5: $4e
	ret c                                            ; $59a6: $d8

	rst $38                                          ; $59a7: $ff
	ld [hl], l                                       ; $59a8: $75
	add hl, bc                                       ; $59a9: $09
	ld [hl], a                                       ; $59aa: $77
	dec d                                            ; $59ab: $15
	halt                                             ; $59ac: $76
	add hl, sp                                       ; $59ad: $39
	ld h, l                                          ; $59ae: $65
	pop af                                           ; $59af: $f1
	ld h, e                                          ; $59b0: $63
	jr jr_027_594a                                   ; $59b1: $18 $97

	adc b                                            ; $59b3: $88
	call nz, $f2e4                                   ; $59b4: $c4 $e4 $f2
	ld a, [$fcf9]                                    ; $59b7: $fa $f9 $fc
	cp $75                                           ; $59ba: $fe $75
	ret z                                            ; $59bc: $c8

	ld a, c                                          ; $59bd: $79
	ld l, $7f                                        ; $59be: $2e $7f
	ret c                                            ; $59c0: $d8

	sbc $01                                          ; $59c1: $de $01
	rst SubAFromDE                                          ; $59c3: $df
	ld [bc], a                                       ; $59c4: $02
	sbc l                                            ; $59c5: $9d
	add d                                            ; $59c6: $82
	ld b, c                                          ; $59c7: $41
	reti                                             ; $59c8: $d9


	rst $38                                          ; $59c9: $ff
	sbc c                                            ; $59ca: $99
	call nz, $89c8                                   ; $59cb: $c4 $c8 $89
	inc de                                           ; $59ce: $13
	rla                                              ; $59cf: $17
	cpl                                              ; $59d0: $2f
	ld a, c                                          ; $59d1: $79
	rst FarCall                                          ; $59d2: $f7
	ld a, [hl]                                       ; $59d3: $7e
	jp z, $0f7b                                      ; $59d4: $ca $7b $0f

	ld a, a                                          ; $59d7: $7f
	db $10                                           ; $59d8: $10
	ld a, e                                          ; $59d9: $7b
	rst FarCall                                          ; $59da: $f7
	call c, $9eff                                    ; $59db: $dc $ff $9e
	add b                                            ; $59de: $80
	ld a, [$f3de]                                    ; $59df: $fa $de $f3
	sbc d                                            ; $59e2: $9a
	db $e3                                           ; $59e3: $e3
	push hl                                          ; $59e4: $e5
	rst SubAFromBC                                          ; $59e5: $e7
	push hl                                          ; $59e6: $e5
	rst JumpTable                                          ; $59e7: $c7
	sbc $0e                                          ; $59e8: $de $0e
	rst SubAFromDE                                          ; $59ea: $df
	ld e, $9c                                        ; $59eb: $1e $9c
	inc e                                            ; $59ed: $1c
	ld e, $3c                                        ; $59ee: $1e $3c
	rlca                                             ; $59f0: $07
	ld b, b                                          ; $59f1: $40
	add c                                            ; $59f2: $81
	db $fd                                           ; $59f3: $fd
	cp a                                             ; $59f4: $bf
	ei                                               ; $59f5: $fb
	rst AddAOntoHL                                          ; $59f6: $ef
	rst $38                                          ; $59f7: $ff
	cp a                                             ; $59f8: $bf
	ei                                               ; $59f9: $fb
	rst $38                                          ; $59fa: $ff
	ld [bc], a                                       ; $59fb: $02
	ld b, b                                          ; $59fc: $40
	inc b                                            ; $59fd: $04
	stop                                             ; $59fe: $10 $00
	ld b, b                                          ; $5a00: $40
	inc b                                            ; $5a01: $04
	nop                                              ; $5a02: $00
	db $dd                                           ; $5a03: $dd
	rst $38                                          ; $5a04: $ff
	or a                                             ; $5a05: $b7
	rst $38                                          ; $5a06: $ff
	ld a, a                                          ; $5a07: $7f
	rst FarCall                                          ; $5a08: $f7
	rst $38                                          ; $5a09: $ff
	rst $38                                          ; $5a0a: $ff
	ld [hl+], a                                      ; $5a0b: $22
	nop                                              ; $5a0c: $00
	ld c, b                                          ; $5a0d: $48
	nop                                              ; $5a0e: $00
	add b                                            ; $5a0f: $80
	ld [$887a], sp                                   ; $5a10: $08 $7a $88
	ld a, a                                          ; $5a13: $7f
	rst AddAOntoHL                                          ; $5a14: $ef
	sbc h                                            ; $5a15: $9c
	ld [hl], a                                       ; $5a16: $77
	rst SubAFromDE                                          ; $5a17: $df
	ei                                               ; $5a18: $fb
	ld a, e                                          ; $5a19: $7b
	ld h, b                                          ; $5a1a: $60

jr_027_5a1b:
	ld a, a                                          ; $5a1b: $7f
	rst AddAOntoHL                                          ; $5a1c: $ef
	sbc h                                            ; $5a1d: $9c
	adc b                                            ; $5a1e: $88
	jr nz, @+$06                                     ; $5a1f: $20 $04

	ccf                                              ; $5a21: $3f
	ldh a, [hDisp1_LCDC]                                     ; $5a22: $f0 $8f
	ld hl, sp-$28                                    ; $5a24: $f8 $d8
	ld hl, sp+$78                                    ; $5a26: $f8 $78
	ld hl, sp-$50                                    ; $5a28: $f8 $b0
	rst $38                                          ; $5a2a: $ff
	pop af                                           ; $5a2b: $f1
	rrca                                             ; $5a2c: $0f

Jump_027_5a2d:
	cpl                                              ; $5a2d: $2f

jr_027_5a2e:
	rrca                                             ; $5a2e: $0f
	adc a                                            ; $5a2f: $8f
	rrca                                             ; $5a30: $0f
	ld e, a                                          ; $5a31: $5f
	rra                                              ; $5a32: $1f
	rra                                              ; $5a33: $1f
	db $db                                           ; $5a34: $db
	add b                                            ; $5a35: $80
	sbc l                                            ; $5a36: $9d
	ld hl, sp+$07                                    ; $5a37: $f8 $07
	reti                                             ; $5a39: $d9


	rst $38                                          ; $5a3a: $ff
	sbc [hl]                                         ; $5a3b: $9e
	db $10                                           ; $5a3c: $10
	ld l, h                                          ; $5a3d: $6c
	ld d, a                                          ; $5a3e: $57
	sbc [hl]                                         ; $5a3f: $9e
	pop hl                                           ; $5a40: $e1
	ld b, a                                          ; $5a41: $47
	jr jr_027_5a1b                                   ; $5a42: $18 $d7

	rst $38                                          ; $5a44: $ff
	call c, $9e7f                                    ; $5a45: $dc $7f $9e
	ccf                                              ; $5a48: $3f
	ld [hl], c                                       ; $5a49: $71
	inc de                                           ; $5a4a: $13
	rst SubAFromDE                                          ; $5a4b: $df
	add b                                            ; $5a4c: $80
	sbc [hl]                                         ; $5a4d: $9e
	ret nz                                           ; $5a4e: $c0

	ld b, a                                          ; $5a4f: $47
	ret c                                            ; $5a50: $d8

	sub a                                            ; $5a51: $97
	ld b, c                                          ; $5a52: $41
	and c                                            ; $5a53: $a1
	pop de                                           ; $5a54: $d1
	ldh a, [c]                                       ; $5a55: $f2
	ld [$fdf5], a                                    ; $5a56: $ea $f5 $fd

jr_027_5a59:
	db $fd                                           ; $5a59: $fd
	ld [hl], b                                       ; $5a5a: $70
	pop hl                                           ; $5a5b: $e1
	adc h                                            ; $5a5c: $8c
	ld c, $06                                        ; $5a5d: $0e $06
	ld b, $7f                                        ; $5a5f: $06 $7f
	rst $38                                          ; $5a61: $ff
	db $fc                                           ; $5a62: $fc
	ldh a, [$c0]                                     ; $5a63: $f0 $c0
	add b                                            ; $5a65: $80
	add c                                            ; $5a66: $81
	add c                                            ; $5a67: $81
	ret nz                                           ; $5a68: $c0

	add b                                            ; $5a69: $80
	inc bc                                           ; $5a6a: $03
	rrca                                             ; $5a6b: $0f
	ccf                                              ; $5a6c: $3f
	ld a, a                                          ; $5a6d: $7f
	ld a, [hl]                                       ; $5a6e: $7e
	ld a, [hl]                                       ; $5a6f: $7e
	ld [hl], a                                       ; $5a70: $77
	ret nz                                           ; $5a71: $c0

	ld l, a                                          ; $5a72: $6f
	ret nc                                           ; $5a73: $d0

	rst SubAFromDE                                          ; $5a74: $df
	add b                                            ; $5a75: $80
	db $fd                                           ; $5a76: $fd
	sbc d                                            ; $5a77: $9a
	rst GetHLinHL                                          ; $5a78: $cf
	call $cfcf                                       ; $5a79: $cd $cf $cf
	db $ed                                           ; $5a7c: $ed
	sbc $ef                                          ; $5a7d: $de $ef
	sbc d                                            ; $5a7f: $9a
	jr c, jr_027_5abc                                ; $5a80: $38 $3a

	jr c, jr_027_5abc                                ; $5a82: $38 $38

	ld a, [de]                                       ; $5a84: $1a
	sbc $18                                          ; $5a85: $de $18
	ld b, a                                          ; $5a87: $47
	ld d, b                                          ; $5a88: $50
	ld a, a                                          ; $5a89: $7f
	pop af                                           ; $5a8a: $f1
	sbc d                                            ; $5a8b: $9a
	rst SubAFromDE                                          ; $5a8c: $df
	db $fd                                           ; $5a8d: $fd
	rst $38                                          ; $5a8e: $ff
	ld a, e                                          ; $5a8f: $7b
	rst AddAOntoHL                                          ; $5a90: $ef
	ld a, e                                          ; $5a91: $7b
	jr nz, jr_027_5a2e                               ; $5a92: $20 $9a

	jr nz, jr_027_5a98                               ; $5a94: $20 $02

	nop                                              ; $5a96: $00
	add h                                            ; $5a97: $84

jr_027_5a98:
	db $10                                           ; $5a98: $10
	ld h, e                                          ; $5a99: $63
	ld a, b                                          ; $5a9a: $78
	ld b, a                                          ; $5a9b: $47
	ld l, b                                          ; $5a9c: $68
	inc bc                                           ; $5a9d: $03
	ldh a, [$fa]                                     ; $5a9e: $f0 $fa
	rst SubAFromDE                                          ; $5aa0: $df
	pop af                                           ; $5aa1: $f1
	sbc $e1                                          ; $5aa2: $de $e1
	rst SubAFromDE                                          ; $5aa4: $df
	ldh [c], a                                       ; $5aa5: $e2
	sbc [hl]                                         ; $5aa6: $9e
	rst $38                                          ; $5aa7: $ff
	ld [hl], h                                       ; $5aa8: $74
	add e                                            ; $5aa9: $83
	db $dd                                           ; $5aaa: $dd
	ccf                                              ; $5aab: $3f
	ld a, [$3863]                                    ; $5aac: $fa $63 $38
	sbc l                                            ; $5aaf: $9d
	inc e                                            ; $5ab0: $1c
	inc bc                                           ; $5ab1: $03
	ld c, a                                          ; $5ab2: $4f
	ret z                                            ; $5ab3: $c8

	ld a, c                                          ; $5ab4: $79
	ldh a, [c]                                       ; $5ab5: $f2
	rst SubAFromDE                                          ; $5ab6: $df
	ld b, b                                          ; $5ab7: $40
	rst SubAFromDE                                          ; $5ab8: $df
	jr nz, jr_027_5a59                               ; $5ab9: $20 $9e

	db $10                                           ; $5abb: $10

jr_027_5abc:
	ld h, c                                          ; $5abc: $61

jr_027_5abd:
	di                                               ; $5abd: $f3
	sbc $3f                                          ; $5abe: $de $3f
	db $dd                                           ; $5ac0: $dd
	rra                                              ; $5ac1: $1f
	db $dd                                           ; $5ac2: $dd
	ret nz                                           ; $5ac3: $c0

	db $dd                                           ; $5ac4: $dd
	ldh [$7f], a                                     ; $5ac5: $e0 $7f
	ld hl, $297e                                     ; $5ac7: $21 $7e $29
	rst SubAFromDE                                          ; $5aca: $df
	ld hl, sp-$21                                    ; $5acb: $f8 $df
	ldh a, [$9e]                                     ; $5acd: $f0 $9e
	nop                                              ; $5acf: $00
	ld [hl], c                                       ; $5ad0: $71
	ccf                                              ; $5ad1: $3f
	rst SubAFromDE                                          ; $5ad2: $df
	rrca                                             ; $5ad3: $0f
	adc l                                            ; $5ad4: $8d
	db $fd                                           ; $5ad5: $fd
	ld a, [$7dfe]                                    ; $5ad6: $fa $fe $7d
	ld a, l                                          ; $5ad9: $7d
	ld a, [hl]                                       ; $5ada: $7e
	ccf                                              ; $5adb: $3f
	ccf                                              ; $5adc: $3f
	ld b, $07                                        ; $5add: $06 $07
	inc bc                                           ; $5adf: $03
	add e                                            ; $5ae0: $83
	add e                                            ; $5ae1: $83
	add c                                            ; $5ae2: $81
	ret nz                                           ; $5ae3: $c0

	ret nz                                           ; $5ae4: $c0

	add e                                            ; $5ae5: $83
	add e                                            ; $5ae6: $83
	ld a, e                                          ; $5ae7: $7b
	add sp, -$21                                     ; $5ae8: $e8 $df
	adc a                                            ; $5aea: $8f
	sbc h                                            ; $5aeb: $9c
	ld b, h                                          ; $5aec: $44
	ld a, h                                          ; $5aed: $7c
	ld a, h                                          ; $5aee: $7c
	ld a, e                                          ; $5aef: $7b

jr_027_5af0:
	ret c                                            ; $5af0: $d8

	rst SubAFromDE                                          ; $5af1: $df
	ldh a, [$7b]                                     ; $5af2: $f0 $7b
	ld h, $6f                                        ; $5af4: $26 $6f
	cp c                                             ; $5af6: $b9
	ld c, a                                          ; $5af7: $4f
	adc b                                            ; $5af8: $88
	sbc l                                            ; $5af9: $9d
	rst AddAOntoHL                                          ; $5afa: $ef
	rst GetHLinHL                                          ; $5afb: $cf
	db $db                                           ; $5afc: $db
	ld [$189d], sp                                   ; $5afd: $08 $9d $18
	jr c, @+$05                                      ; $5b00: $38 $03

	jr nc, @+$05                                     ; $5b02: $30 $03

	ldh a, [rIF]                                     ; $5b04: $f0 $0f
	ldh a, [$7f]                                     ; $5b06: $f0 $7f
	ld a, a                                          ; $5b08: $7f
	sbc c                                            ; $5b09: $99
	ei                                               ; $5b0a: $fb
	or $ee                                           ; $5b0b: $f6 $ee
	db $fc                                           ; $5b0d: $fc
	db $ec                                           ; $5b0e: $ec
	ret c                                            ; $5b0f: $d8

	ld a, b                                          ; $5b10: $78
	ld a, h                                          ; $5b11: $7c
	ld a, d                                          ; $5b12: $7a
	cp $7a                                           ; $5b13: $fe $7a
	ld [hl], h                                       ; $5b15: $74
	sbc h                                            ; $5b16: $9c
	ld e, a                                          ; $5b17: $5f
	xor h                                            ; $5b18: $ac
	inc e                                            ; $5b19: $1c
	ld a, e                                          ; $5b1a: $7b
	adc c                                            ; $5b1b: $89
	ld h, e                                          ; $5b1c: $63
	jr nz, jr_027_5abd                               ; $5b1d: $20 $9e

	ld hl, sp+$7a                                    ; $5b1f: $f8 $7a
	ld b, a                                          ; $5b21: $47
	sbc e                                            ; $5b22: $9b
	ld e, d                                          ; $5b23: $5a

jr_027_5b24:
	dec [hl]                                         ; $5b24: $35
	ld [hl], b                                       ; $5b25: $70
	and c                                            ; $5b26: $a1
	reti                                             ; $5b27: $d9


	rst $38                                          ; $5b28: $ff
	sub a                                            ; $5b29: $97
	jr jr_027_5b24                                   ; $5b2a: $18 $f8

	db $fc                                           ; $5b2c: $fc
	db $fc                                           ; $5b2d: $fc
	ld a, [$f17a]                                    ; $5b2e: $fa $7a $f1
	ld [hl], c                                       ; $5b31: $71
	reti                                             ; $5b32: $d9


	rst $38                                          ; $5b33: $ff
	ld a, l                                          ; $5b34: $7d
	ld a, [de]                                       ; $5b35: $1a
	db $dd                                           ; $5b36: $dd
	rrca                                             ; $5b37: $0f
	rst SubAFromDE                                          ; $5b38: $df
	rlca                                             ; $5b39: $07
	sbc [hl]                                         ; $5b3a: $9e
	ldh [$dc], a                                     ; $5b3b: $e0 $dc
	ldh a, [$7b]                                     ; $5b3d: $f0 $7b
	dec l                                            ; $5b3f: $2d
	ld [hl], b                                       ; $5b40: $70
	db $ec                                           ; $5b41: $ec
	sbc l                                            ; $5b42: $9d
	add e                                            ; $5b43: $83
	add b                                            ; $5b44: $80
	ld l, h                                          ; $5b45: $6c
	call c, Call_027_7c9e                            ; $5b46: $dc $9e $7c
	halt                                             ; $5b49: $76
	ld a, [bc]                                       ; $5b4a: $0a
	ld a, a                                          ; $5b4b: $7f
	db $dd                                           ; $5b4c: $dd
	sbc h                                            ; $5b4d: $9c
	adc a                                            ; $5b4e: $8f
	rst GetHLinHL                                          ; $5b4f: $cf
	ld h, a                                          ; $5b50: $67
	halt                                             ; $5b51: $76
	db $e3                                           ; $5b52: $e3
	sub e                                            ; $5b53: $93
	ldh a, [rSVBK]                                   ; $5b54: $f0 $70
	jr nc, jr_027_5af0                               ; $5b56: $30 $98

	ld b, b                                          ; $5b58: $40
	ret nz                                           ; $5b59: $c0

	and b                                            ; $5b5a: $a0
	ldh [$e1], a                                     ; $5b5b: $e0 $e1
	and $ff                                          ; $5b5d: $e6 $ff
	ldh [$7a], a                                     ; $5b5f: $e0 $7a
	add hl, bc                                       ; $5b61: $09
	db $db                                           ; $5b62: $db
	ccf                                              ; $5b63: $3f
	ld a, a                                          ; $5b64: $7f
	adc [hl]                                         ; $5b65: $8e
	sub l                                            ; $5b66: $95
	ld e, $ee                                        ; $5b67: $1e $ee
	ld [hl], $cb                                     ; $5b69: $36 $cb
	ld sp, $80c0                                     ; $5b6b: $31 $c0 $80
	nop                                              ; $5b6e: $00
	pop hl                                           ; $5b6f: $e1
	pop af                                           ; $5b70: $f1
	ld a, b                                          ; $5b71: $78
	ret z                                            ; $5b72: $c8

	sub [hl]                                         ; $5b73: $96
	sbc a                                            ; $5b74: $9f
	rra                                              ; $5b75: $1f
	ccf                                              ; $5b76: $3f
	ld e, a                                          ; $5b77: $5f
	sbc a                                            ; $5b78: $9f
	ld e, a                                          ; $5b79: $5f
	rst $38                                          ; $5b7a: $ff
	cp a                                             ; $5b7b: $bf
	ld [hl], b                                       ; $5b7c: $70
	db $dd                                           ; $5b7d: $dd
	ldh a, [$9c]                                     ; $5b7e: $f0 $9c
	or b                                             ; $5b80: $b0
	jr nz, jr_027_5be3                               ; $5b81: $20 $60

	inc bc                                           ; $5b83: $03
	jr nc, @+$05                                     ; $5b84: $30 $03

	ldh a, [$37]                                     ; $5b86: $f0 $37
	ldh a, [$7f]                                     ; $5b88: $f0 $7f
	ld e, l                                          ; $5b8a: $5d
	cp $de                                           ; $5b8b: $fe $de
	ld bc, $03df                                     ; $5b8d: $01 $df $03
	sbc b                                            ; $5b90: $98
	cp b                                             ; $5b91: $b8
	ret c                                            ; $5b92: $d8

	or b                                             ; $5b93: $b0
	ld [hl], b                                       ; $5b94: $70
	or b                                             ; $5b95: $b0
	ld h, b                                          ; $5b96: $60
	ldh [$63], a                                     ; $5b97: $e0 $63
	sbc b                                            ; $5b99: $98
	sub a                                            ; $5b9a: $97
	jr nc, jr_027_5c0d                               ; $5b9b: $30 $70

	ld sp, $2160                                     ; $5b9d: $31 $60 $21
	ld h, b                                          ; $5ba0: $60
	pop hl                                           ; $5ba1: $e1
	ld h, d                                          ; $5ba2: $62
	reti                                             ; $5ba3: $d9


	rst $38                                          ; $5ba4: $ff
	ld a, a                                          ; $5ba5: $7f
	push af                                          ; $5ba6: $f5
	sbc d                                            ; $5ba7: $9a
	ld h, b                                          ; $5ba8: $60
	pop bc                                           ; $5ba9: $c1
	ld b, b                                          ; $5baa: $40
	pop bc                                           ; $5bab: $c1
	ret nz                                           ; $5bac: $c0

	ld h, c                                          ; $5bad: $61
	ldh a, [$7f]                                     ; $5bae: $f0 $7f
	sub $99                                          ; $5bb0: $d6 $99
	ldh [$62], a                                     ; $5bb2: $e0 $62
	db $e3                                           ; $5bb4: $e3
	ld b, e                                          ; $5bb5: $43
	jp $de47                                         ; $5bb6: $c3 $47 $de


	rst $38                                          ; $5bb9: $ff
	sbc [hl]                                         ; $5bba: $9e
	db $fd                                           ; $5bbb: $fd
	sbc $fc                                          ; $5bbc: $de $fc
	sub l                                            ; $5bbe: $95
	ld hl, sp-$7d                                    ; $5bbf: $f8 $83
	ret nz                                           ; $5bc1: $c0

	ldh [rSVBK], a                                   ; $5bc2: $e0 $70
	ld d, b                                          ; $5bc4: $50
	ld e, b                                          ; $5bc5: $58
	call nc, $fcda                                   ; $5bc6: $d4 $da $fc
	ld [hl], d                                       ; $5bc9: $72
	ld c, c                                          ; $5bca: $49
	sub d                                            ; $5bcb: $92
	ld l, a                                          ; $5bcc: $6f
	ld h, a                                          ; $5bcd: $67
	ret nz                                           ; $5bce: $c0

	db $e3                                           ; $5bcf: $e3
	ld [hl], $08                                     ; $5bd0: $36 $08
	ld de, $2120                                     ; $5bd2: $11 $20 $21
	ld b, a                                          ; $5bd5: $47
	ccf                                              ; $5bd6: $3f
	rra                                              ; $5bd7: $1f
	rst GetHLinHL                                          ; $5bd8: $cf
	ld a, e                                          ; $5bd9: $7b
	sbc d                                            ; $5bda: $9a
	sub d                                            ; $5bdb: $92
	cp $f8                                           ; $5bdc: $fe $f8
	rst $38                                          ; $5bde: $ff
	adc a                                            ; $5bdf: $8f
	ccf                                              ; $5be0: $3f
	ldh a, [$c0]                                     ; $5be1: $f0 $c0

jr_027_5be3:
	rrca                                             ; $5be3: $0f
	ccf                                              ; $5be4: $3f
	ldh a, [rIE]                                     ; $5be5: $f0 $ff
	ldh a, [$c0]                                     ; $5be7: $f0 $c0
	db $fd                                           ; $5be9: $fd
	add l                                            ; $5bea: $85
	rrca                                             ; $5beb: $0f
	db $e3                                           ; $5bec: $e3
	or c                                             ; $5bed: $b1
	pop de                                           ; $5bee: $d1
	ld a, [hl]                                       ; $5bef: $7e
	inc e                                            ; $5bf0: $1c
	rst SubAFromHL                                          ; $5bf1: $d7
	rst FarCall                                          ; $5bf2: $f7
	ld a, a                                          ; $5bf3: $7f
	db $fc                                           ; $5bf4: $fc
	ld a, [hl]                                       ; $5bf5: $7e
	ld a, $10                                        ; $5bf6: $3e $10
	db $10                                           ; $5bf8: $10
	jr @+$1a                                         ; $5bf9: $18 $18

	sbc h                                            ; $5bfb: $9c
	call z, $f9f2                                    ; $5bfc: $cc $f2 $f9
	ld a, l                                          ; $5bff: $7d
	rrca                                             ; $5c00: $0f
	add e                                            ; $5c01: $83
	rst SubAFromBC                                          ; $5c02: $e7
	rst FarCall                                          ; $5c03: $f7
	ccf                                              ; $5c04: $3f
	ld a, d                                          ; $5c05: $7a
	rst GetHLinHL                                          ; $5c06: $cf
	rst SubAFromDE                                          ; $5c07: $df
	ld [bc], a                                       ; $5c08: $02
	rst SubAFromDE                                          ; $5c09: $df
	inc b                                            ; $5c0a: $04
	ld [hl], b                                       ; $5c0b: $70
	di                                               ; $5c0c: $f3

jr_027_5c0d:
	sbc $ff                                          ; $5c0d: $de $ff
	ld a, d                                          ; $5c0f: $7a
	ldh a, [$03]                                     ; $5c10: $f0 $03
	jr nc, @+$05                                     ; $5c12: $30 $03

	ldh a, [$3b]                                     ; $5c14: $f0 $3b
	ldh a, [$7b]                                     ; $5c16: $f0 $7b
	ld l, h                                          ; $5c18: $6c
	sbc d                                            ; $5c19: $9a
	db $fd                                           ; $5c1a: $fd
	cp $fd                                           ; $5c1b: $fe $fd
	rst $38                                          ; $5c1d: $ff
	ei                                               ; $5c1e: $fb
	sbc $03                                          ; $5c1f: $de $03
	db $dd                                           ; $5c21: $dd
	rlca                                             ; $5c22: $07
	sub [hl]                                         ; $5c23: $96
	rrca                                             ; $5c24: $0f
	ret nz                                           ; $5c25: $c0

	pop bc                                           ; $5c26: $c1
	ret nz                                           ; $5c27: $c0

	pop bc                                           ; $5c28: $c1
	add b                                            ; $5c29: $80
	add c                                            ; $5c2a: $81
	add e                                            ; $5c2b: $83
	ld bc, $ffd9                                     ; $5c2c: $01 $d9 $ff
	sub a                                            ; $5c2f: $97
	pop bc                                           ; $5c30: $c1
	jp $83c1                                         ; $5c31: $c3 $c1 $83


	add l                                            ; $5c34: $85
	add e                                            ; $5c35: $83
	add a                                            ; $5c36: $87
	inc bc                                           ; $5c37: $03
	ld e, l                                          ; $5c38: $5d
	db $10                                           ; $5c39: $10
	sbc $80                                          ; $5c3a: $de $80
	ld e, e                                          ; $5c3c: $5b
	cp b                                             ; $5c3d: $b8
	sbc $c7                                          ; $5c3e: $de $c7
	call c, Call_027_718f                            ; $5c40: $dc $8f $71
	dec de                                           ; $5c43: $1b
	sbc $f0                                          ; $5c44: $de $f0
	sbc l                                            ; $5c46: $9d
	db $dd                                           ; $5c47: $dd
	call c, $9cdb                                    ; $5c48: $dc $db $9c
	reti                                             ; $5c4b: $d9


	ld h, e                                          ; $5c4c: $63
	sub h                                            ; $5c4d: $94
	adc $7c                                          ; $5c4e: $ce $7c
	ld l, c                                          ; $5c50: $69
	ld d, e                                          ; $5c51: $53
	ld d, e                                          ; $5c52: $53
	ld c, e                                          ; $5c53: $4b
	ld b, a                                          ; $5c54: $47
	ld b, c                                          ; $5c55: $41
	pop af                                           ; $5c56: $f1
	db $e3                                           ; $5c57: $e3
	rst FarCall                                          ; $5c58: $f7
	call c, Call_027_7fff                            ; $5c59: $dc $ff $7f
	jr nc, @-$65                                     ; $5c5c: $30 $99

	cp $e0                                           ; $5c5e: $fe $e0
	ret nz                                           ; $5c60: $c0

	ldh [$f0], a                                     ; $5c61: $e0 $f0
	ld hl, sp+$7b                                    ; $5c63: $f8 $7b
	nop                                              ; $5c65: $00
	ld [hl], e                                       ; $5c66: $73
	ld l, $79                                        ; $5c67: $2e $79
	dec d                                            ; $5c69: $15
	adc a                                            ; $5c6a: $8f
	ld e, $0e                                        ; $5c6b: $1e $0e
	ld c, $06                                        ; $5c6d: $0e $06
	ld b, $ff                                        ; $5c6f: $06 $ff
	db $10                                           ; $5c71: $10
	db $10                                           ; $5c72: $10
	ld [$0408], sp                                   ; $5c73: $08 $08 $04
	inc b                                            ; $5c76: $04
	ld [bc], a                                       ; $5c77: $02
	rst $38                                          ; $5c78: $ff
	cp a                                             ; $5c79: $bf
	ld h, a                                          ; $5c7a: $67
	ld a, c                                          ; $5c7b: $79
	cp l                                             ; $5c7c: $bd
	rst SubAFromDE                                          ; $5c7d: $df
	rlca                                             ; $5c7e: $07
	sbc e                                            ; $5c7f: $9b
	inc b                                            ; $5c80: $04
	call nz, $187c                                   ; $5c81: $c4 $7c $18
	ld [hl], a                                       ; $5c84: $77
	rst AddAOntoHL                                          ; $5c85: $ef
	inc bc                                           ; $5c86: $03
	jr nc, jr_027_5cd4                               ; $5c87: $30 $4b

	ldh a, [$1f]                                     ; $5c89: $f0 $1f
	nop                                              ; $5c8b: $00
	sbc $33                                          ; $5c8c: $de $33
	sbc e                                            ; $5c8e: $9b
	inc [hl]                                         ; $5c8f: $34
	ld b, h                                          ; $5c90: $44
	ld b, h                                          ; $5c91: $44
	ld b, e                                          ; $5c92: $43
	db $dd                                           ; $5c93: $dd
	inc sp                                           ; $5c94: $33
	ld h, a                                          ; $5c95: $67
	ld hl, sp-$62                                    ; $5c96: $f8 $9e
	inc sp                                           ; $5c98: $33
	ld b, a                                          ; $5c99: $47
	ld hl, sp+$7f                                    ; $5c9a: $f8 $7f
	rst SubAFromBC                                          ; $5c9c: $e7
	ld l, e                                          ; $5c9d: $6b
	ld hl, sp-$62                                    ; $5c9e: $f8 $9e
	inc [hl]                                         ; $5ca0: $34
	pop bc                                           ; $5ca1: $c1
	inc sp                                           ; $5ca2: $33
	jp nc, $9c33                                     ; $5ca3: $d2 $33 $9c

	ld d, l                                          ; $5ca6: $55
	inc sp                                           ; $5ca7: $33
	inc sp                                           ; $5ca8: $33
	xor [hl]                                         ; $5ca9: $ae
	add b                                            ; $5caa: $80
	sbc l                                            ; $5cab: $9d
	adc b                                            ; $5cac: $88
	ld [hl+], a                                      ; $5cad: $22
	ld l, a                                          ; $5cae: $6f
	cp $9d                                           ; $5caf: $fe $9d
	ld [hl], a                                       ; $5cb1: $77
	db $dd                                           ; $5cb2: $dd
	ld l, a                                          ; $5cb3: $6f
	cp $07                                           ; $5cb4: $fe $07
	ldh a, [hDisp1_OBP1]                                     ; $5cb6: $f0 $94

jr_027_5cb8:
	ld c, b                                          ; $5cb8: $48
	ld b, b                                          ; $5cb9: $40
	ret nz                                           ; $5cba: $c0

	ld b, b                                          ; $5cbb: $40
	and b                                            ; $5cbc: $a0
	jr nz, @-$5e                                     ; $5cbd: $20 $a0

	jr nz, jr_027_5cb8                               ; $5cbf: $20 $f7

	rst $38                                          ; $5cc1: $ff
	ld a, a                                          ; $5cc2: $7f
	ld [hl], e                                       ; $5cc3: $73
	cp $d9                                           ; $5cc4: $fe $d9
	rst $38                                          ; $5cc6: $ff
	ld sp, hl                                        ; $5cc7: $f9
	add [hl]                                         ; $5cc8: $86
	rst AddAOntoHL                                          ; $5cc9: $ef
	rst FarCall                                          ; $5cca: $f7
	ei                                               ; $5ccb: $fb
	db $fd                                           ; $5ccc: $fd
	adc $e3                                          ; $5ccd: $ce $e3
	pop af                                           ; $5ccf: $f1
	ld hl, sp+$1f                                    ; $5cd0: $f8 $1f
	rrca                                             ; $5cd2: $0f
	rlca                                             ; $5cd3: $07

jr_027_5cd4:
	inc bc                                           ; $5cd4: $03
	ld sp, $0e1c                                     ; $5cd5: $31 $1c $0e
	rlca                                             ; $5cd8: $07
	inc de                                           ; $5cd9: $13
	ld de, $8888                                     ; $5cda: $11 $88 $88
	call nz, $2364                                   ; $5cdd: $c4 $64 $23
	db $10                                           ; $5ce0: $10
	cp $da                                           ; $5ce1: $fe $da
	rst $38                                          ; $5ce3: $ff
	rst SubAFromDE                                          ; $5ce4: $df
	sbc a                                            ; $5ce5: $9f
	sub e                                            ; $5ce6: $93
	adc e                                            ; $5ce7: $8b
	add b                                            ; $5ce8: $80
	ld a, b                                          ; $5ce9: $78
	rrca                                             ; $5cea: $0f
	ldh a, [rIE]                                     ; $5ceb: $f0 $ff
	sub b                                            ; $5ced: $90
	sub b                                            ; $5cee: $90
	adc b                                            ; $5cef: $88
	nop                                              ; $5cf0: $00
	add b                                            ; $5cf1: $80
	ldh a, [$dc]                                     ; $5cf2: $f0 $dc
	rst $38                                          ; $5cf4: $ff
	sbc e                                            ; $5cf5: $9b
	inc bc                                           ; $5cf6: $03
	nop                                              ; $5cf7: $00
	db $fc                                           ; $5cf8: $fc
	rrca                                             ; $5cf9: $0f
	ld l, e                                          ; $5cfa: $6b
	ret nz                                           ; $5cfb: $c0

	ld a, a                                          ; $5cfc: $7f
	rst AddAOntoHL                                          ; $5cfd: $ef
	sub a                                            ; $5cfe: $97
	ld hl, sp-$04                                    ; $5cff: $f8 $fc
	cp $ff                                           ; $5d01: $fe $ff
	ld bc, $fe00                                     ; $5d03: $01 $00 $fe
	rst $38                                          ; $5d06: $ff
	ld a, e                                          ; $5d07: $7b
	pop bc                                           ; $5d08: $c1
	ld a, a                                          ; $5d09: $7f
	ld sp, hl                                        ; $5d0a: $f9
	rst $38                                          ; $5d0b: $ff
	add l                                            ; $5d0c: $85
	add b                                            ; $5d0d: $80
	ld [hl], a                                       ; $5d0e: $77
	ld [hl], a                                       ; $5d0f: $77
	ld a, a                                          ; $5d10: $7f
	rra                                              ; $5d11: $1f
	sbc a                                            ; $5d12: $9f
	sbc $58                                          ; $5d13: $de $58
	pop af                                           ; $5d15: $f1
	sbc b                                            ; $5d16: $98
	sbc b                                            ; $5d17: $98
	sub b                                            ; $5d18: $90
	ldh a, [$f0]                                     ; $5d19: $f0 $f0
	ld [hl], b                                       ; $5d1b: $70
	ld [hl], b                                       ; $5d1c: $70
	jr nc, @-$3f                                     ; $5d1d: $30 $bf

	rst $38                                          ; $5d1f: $ff
	ld hl, sp-$20                                    ; $5d20: $f8 $e0
	nop                                              ; $5d22: $00
	rra                                              ; $5d23: $1f
	ld a, a                                          ; $5d24: $7f
	rst $38                                          ; $5d25: $ff
	ld b, b                                          ; $5d26: $40
	db $fc                                           ; $5d27: $fc
	sub l                                            ; $5d28: $95
	inc bc                                           ; $5d29: $03
	rra                                              ; $5d2a: $1f
	rst SubAFromBC                                          ; $5d2b: $e7
	rst JumpTable                                          ; $5d2c: $c7
	rlca                                             ; $5d2d: $07
	rlca                                             ; $5d2e: $07
	rst $38                                          ; $5d2f: $ff
	rst $38                                          ; $5d30: $ff
	cp $0e                                           ; $5d31: $fe $0e
	db $db                                           ; $5d33: $db
	ld bc, $ffdf                                     ; $5d34: $01 $df $ff
	adc d                                            ; $5d37: $8a
	dec e                                            ; $5d38: $1d
	dec a                                            ; $5d39: $3d
	ccf                                              ; $5d3a: $3f
	ld a, [hl]                                       ; $5d3b: $7e
	ld [hl], a                                       ; $5d3c: $77
	ld l, a                                          ; $5d3d: $6f
	ld c, a                                          ; $5d3e: $4f
	sbc a                                            ; $5d3f: $9f
	db $e3                                           ; $5d40: $e3
	jp $81c1                                         ; $5d41: $c3 $c1 $81


	sbc b                                            ; $5d44: $98
	or b                                             ; $5d45: $b0
	ldh a, [$e0]                                     ; $5d46: $f0 $e0
	adc b                                            ; $5d48: $88
	ld [hl+], a                                      ; $5d49: $22
	ld [$88a2], sp                                   ; $5d4a: $08 $a2 $88
	ld a, e                                          ; $5d4d: $7b
	cp $7f                                           ; $5d4e: $fe $7f
	ld b, [hl]                                       ; $5d50: $46
	sbc [hl]                                         ; $5d51: $9e
	rst FarCall                                          ; $5d52: $f7
	ld [hl], e                                       ; $5d53: $73
	cp $47                                           ; $5d54: $fe $47
	jr nc, jr_027_5d60                               ; $5d56: $30 $08

	nop                                              ; $5d58: $00
	sbc $33                                          ; $5d59: $de $33
	sbc [hl]                                         ; $5d5b: $9e
	ld [hl], e                                       ; $5d5c: $73
	db $dd                                           ; $5d5d: $dd
	inc sp                                           ; $5d5e: $33
	pop hl                                           ; $5d5f: $e1

jr_027_5d60:
	nop                                              ; $5d60: $00
	sub l                                            ; $5d61: $95
	nop                                              ; $5d62: $00
	rst $38                                          ; $5d63: $ff
	inc b                                            ; $5d64: $04
	ei                                               ; $5d65: $fb
	ld b, b                                          ; $5d66: $40

jr_027_5d67:
	cp a                                             ; $5d67: $bf
	nop                                              ; $5d68: $00
	rst $38                                          ; $5d69: $ff
	db $10                                           ; $5d6a: $10
	rst AddAOntoHL                                          ; $5d6b: $ef
	ld [hl], a                                       ; $5d6c: $77
	ld hl, sp-$73                                    ; $5d6d: $f8 $8d
	ld [bc], a                                       ; $5d6f: $02
	db $fd                                           ; $5d70: $fd
	nop                                              ; $5d71: $00
	rst $38                                          ; $5d72: $ff
	nop                                              ; $5d73: $00
	rst $38                                          ; $5d74: $ff
	ld [$80f7], sp                                   ; $5d75: $08 $f7 $80
	ld a, a                                          ; $5d78: $7f
	ld bc, $48fe                                     ; $5d79: $01 $fe $48
	or a                                             ; $5d7c: $b7
	nop                                              ; $5d7d: $00
	rst $38                                          ; $5d7e: $ff
	ld [hl+], a                                      ; $5d7f: $22
	db $dd                                           ; $5d80: $dd
	ld [hl], a                                       ; $5d81: $77
	ldh a, [$7f]                                     ; $5d82: $f0 $7f
	and $9b                                          ; $5d84: $e6 $9b
	jr nz, jr_027_5d67                               ; $5d86: $20 $df

	adc b                                            ; $5d88: $88
	ld [hl], a                                       ; $5d89: $77
	ld l, a                                          ; $5d8a: $6f
	ldh a, [c]                                       ; $5d8b: $f2
	adc a                                            ; $5d8c: $8f
	ld [de], a                                       ; $5d8d: $12
	db $fd                                           ; $5d8e: $fd
	dec d                                            ; $5d8f: $15
	ld a, [$fd32]                                    ; $5d90: $fa $32 $fd
	dec h                                            ; $5d93: $25
	ld a, [$f52a]                                    ; $5d94: $fa $2a $f5
	ld d, h                                          ; $5d97: $54
	db $eb                                           ; $5d98: $eb
	ld c, b                                          ; $5d99: $48

jr_027_5d9a:
	rst FarCall                                          ; $5d9a: $f7
	ld d, h                                          ; $5d9b: $54
	db $eb                                           ; $5d9c: $eb
	ld a, e                                          ; $5d9d: $7b
	pop hl                                           ; $5d9e: $e1
	sbc b                                            ; $5d9f: $98
	nop                                              ; $5da0: $00
	ld hl, sp+$07                                    ; $5da1: $f8 $07
	db $fc                                           ; $5da3: $fc
	inc bc                                           ; $5da4: $03
	cp $01                                           ; $5da5: $fe $01
	ld [hl], a                                       ; $5da7: $77
	or $7f                                           ; $5da8: $f6 $7f
	cp $80                                           ; $5daa: $fe $80
	add e                                            ; $5dac: $83
	ld a, a                                          ; $5dad: $7f
	pop hl                                           ; $5dae: $e1
	rra                                              ; $5daf: $1f
	ld sp, $0ccf                                     ; $5db0: $31 $cf $0c
	di                                               ; $5db3: $f3
	add b                                            ; $5db4: $80
	rst $38                                          ; $5db5: $ff
	ld b, b                                          ; $5db6: $40
	rst $38                                          ; $5db7: $ff
	or b                                             ; $5db8: $b0
	ld a, a                                          ; $5db9: $7f
	sbc $3f                                          ; $5dba: $de $3f
	ld a, a                                          ; $5dbc: $7f
	jp c, $db7f                                      ; $5dbd: $da $7f $db

	cp a                                             ; $5dc0: $bf
	db $eb                                           ; $5dc1: $eb
	sbc a                                            ; $5dc2: $9f
	rst $38                                          ; $5dc3: $ff
	ld e, a                                          ; $5dc4: $5f
	push af                                          ; $5dc5: $f5
	ld c, a                                          ; $5dc6: $4f
	ei                                               ; $5dc7: $fb
	cpl                                              ; $5dc8: $2f
	ei                                               ; $5dc9: $fb
	daa                                              ; $5dca: $27
	sbc h                                            ; $5dcb: $9c
	db $fd                                           ; $5dcc: $fd
	rst $38                                          ; $5dcd: $ff
	ret nz                                           ; $5dce: $c0

	ld a, e                                          ; $5dcf: $7b
	cp $9d                                           ; $5dd0: $fe $9d
	ldh [$7f], a                                     ; $5dd2: $e0 $7f
	ld [hl], a                                       ; $5dd4: $77
	cp $97                                           ; $5dd5: $fe $97
	jr nz, @+$81                                     ; $5dd7: $20 $7f

	jr nz, jr_027_5d9a                               ; $5dd9: $20 $bf

	or b                                             ; $5ddb: $b0
	jp $f93f                                         ; $5ddc: $c3 $3f $f9


	ld e, e                                          ; $5ddf: $5b
	jp nz, $fe7f                                     ; $5de0: $c2 $7f $fe

	add b                                            ; $5de3: $80
	ld sp, $e2fe                                     ; $5de4: $31 $fe $e2
	db $fc                                           ; $5de7: $fc
	adc [hl]                                         ; $5de8: $8e
	ldh a, [$bd]                                     ; $5de9: $f0 $bd
	jp nz, $ee51                                     ; $5deb: $c2 $51 $ee

	pop hl                                           ; $5dee: $e1
	ld a, [hl]                                       ; $5def: $7e
	or b                                             ; $5df0: $b0
	ld a, a                                          ; $5df1: $7f
	ret nc                                           ; $5df2: $d0

jr_027_5df3:
	ccf                                              ; $5df3: $3f
	ld hl, sp+$3f                                    ; $5df4: $f8 $3f
	jr c, jr_027_5e17                                ; $5df6: $38 $1f

	add hl, de                                       ; $5df8: $19
	ld c, $cb                                        ; $5df9: $0e $cb
	inc c                                            ; $5dfb: $0c
	ei                                               ; $5dfc: $fb
	inc c                                            ; $5dfd: $0c
	db $eb                                           ; $5dfe: $eb
	inc e                                            ; $5dff: $1c
	db $eb                                           ; $5e00: $eb
	inc e                                            ; $5e01: $1c
	rst FarCall                                          ; $5e02: $f7
	adc d                                            ; $5e03: $8a
	jr @+$09                                         ; $5e04: $18 $07

	cp $c7                                           ; $5e06: $fe $c7
	ccf                                              ; $5e08: $3f
	rst SubAFromBC                                          ; $5e09: $e7
	dec e                                            ; $5e0a: $1d
	rst AddAOntoHL                                          ; $5e0b: $ef
	ld e, $ef                                        ; $5e0c: $1e $ef
	ld a, [de]                                       ; $5e0e: $1a
	rst AddAOntoHL                                          ; $5e0f: $ef
	inc e                                            ; $5e10: $1c
	rst AddAOntoHL                                          ; $5e11: $ef
	jr jr_027_5df3                                   ; $5e12: $18 $df

	jr nc, @-$0d                                     ; $5e14: $30 $f1

	add b                                            ; $5e16: $80

jr_027_5e17:
	di                                               ; $5e17: $f3
	nop                                              ; $5e18: $00
	ld l, a                                          ; $5e19: $6f
	cp $9e                                           ; $5e1a: $fe $9e
	db $e3                                           ; $5e1c: $e3

jr_027_5e1d:
	ld a, e                                          ; $5e1d: $7b
	cp $99                                           ; $5e1e: $fe $99
	ldh [c], a                                       ; $5e20: $e2
	ld bc, $c77c                                     ; $5e21: $01 $7c $c7
	db $fc                                           ; $5e24: $fc
	add a                                            ; $5e25: $87
	ld [hl], a                                       ; $5e26: $77
	cp $97                                           ; $5e27: $fe $97
	ld [$ca97], a                                    ; $5e29: $ea $97 $ca
	or a                                             ; $5e2c: $b7
	sbc [hl]                                         ; $5e2d: $9e
	db $e3                                           ; $5e2e: $e3
	sbc [hl]                                         ; $5e2f: $9e
	db $e3                                           ; $5e30: $e3
	ld b, a                                          ; $5e31: $47
	ld b, b                                          ; $5e32: $40
	ld [hl], a                                       ; $5e33: $77
	ld d, $97                                        ; $5e34: $16 $97
	add h                                            ; $5e36: $84
	ld a, e                                          ; $5e37: $7b
	nop                                              ; $5e38: $00
	rst $38                                          ; $5e39: $ff
	ld [bc], a                                       ; $5e3a: $02
	db $fd                                           ; $5e3b: $fd
	jr nz, jr_027_5e1d                               ; $5e3c: $20 $df

	ld [hl], a                                       ; $5e3e: $77
	xor $08                                          ; $5e3f: $ee $08
	nop                                              ; $5e41: $00
	sbc $33                                          ; $5e42: $de $33
	sbc [hl]                                         ; $5e44: $9e
	ld [hl], e                                       ; $5e45: $73
	db $dd                                           ; $5e46: $dd
	inc sp                                           ; $5e47: $33
	sbc l                                            ; $5e48: $9d
	add b                                            ; $5e49: $80
	ld sp, hl                                        ; $5e4a: $f9
	reti                                             ; $5e4b: $d9


	rst $38                                          ; $5e4c: $ff
	rlca                                             ; $5e4d: $07
	ldh a, [$df]                                     ; $5e4e: $f0 $df
	ld bc, $02df                                     ; $5e50: $01 $df $02
	rst SubAFromDE                                          ; $5e53: $df
	inc b                                            ; $5e54: $04
	sbc l                                            ; $5e55: $9d
	ld [$da09], sp                                   ; $5e56: $08 $09 $da
	rst $38                                          ; $5e59: $ff
	sub [hl]                                         ; $5e5a: $96
	cp $f0                                           ; $5e5b: $fe $f0
	inc c                                            ; $5e5d: $0c
	ld b, $19                                        ; $5e5e: $06 $19
	ld a, $7f                                        ; $5e60: $3e $7f
	ld sp, hl                                        ; $5e62: $f9
	cp $de                                           ; $5e63: $fe $de
	rst $38                                          ; $5e65: $ff
	adc a                                            ; $5e66: $8f
	rst SubAFromBC                                          ; $5e67: $e7
	pop bc                                           ; $5e68: $c1
	add b                                            ; $5e69: $80
	ld b, $01                                        ; $5e6a: $06 $01
	add a                                            ; $5e6c: $87
	ld b, a                                          ; $5e6d: $47
	inc hl                                           ; $5e6e: $23
	sub e                                            ; $5e6f: $93
	ld l, c                                          ; $5e70: $69
	dec e                                            ; $5e71: $1d
	ld c, $06                                        ; $5e72: $0e $06
	db $fd                                           ; $5e74: $fd
	db $fd                                           ; $5e75: $fd
	rst $38                                          ; $5e76: $ff
	ld [hl], a                                       ; $5e77: $77
	db $ec                                           ; $5e78: $ec
	ret c                                            ; $5e79: $d8

	rst $38                                          ; $5e7a: $ff
	rst SubAFromDE                                          ; $5e7b: $df
	ld l, c                                          ; $5e7c: $69
	sbc b                                            ; $5e7d: $98
	ld l, l                                          ; $5e7e: $6d
	xor h                                            ; $5e7f: $ac
	or h                                             ; $5e80: $b4
	or h                                             ; $5e81: $b4
	or [hl]                                          ; $5e82: $b6
	sub $83                                          ; $5e83: $d6 $83
	sbc $80                                          ; $5e85: $de $80
	rst SubAFromDE                                          ; $5e87: $df
	ret nz                                           ; $5e88: $c0

	sbc l                                            ; $5e89: $9d
	adc $df                                          ; $5e8a: $ce $df
	db $db                                           ; $5e8c: $db
	rst $38                                          ; $5e8d: $ff
	adc l                                            ; $5e8e: $8d
	pop af                                           ; $5e8f: $f1
	ldh [rIE], a                                     ; $5e90: $e0 $ff
	rst $38                                          ; $5e92: $ff
	ld a, a                                          ; $5e93: $7f
	ccf                                              ; $5e94: $3f
	rra                                              ; $5e95: $1f
	rrca                                             ; $5e96: $0f
	rlca                                             ; $5e97: $07
	rlca                                             ; $5e98: $07
	nop                                              ; $5e99: $00
	add b                                            ; $5e9a: $80
	ret nz                                           ; $5e9b: $c0

	ldh [$fe], a                                     ; $5e9c: $e0 $fe
	ld hl, sp-$04                                    ; $5e9e: $f8 $fc
	cp $de                                           ; $5ea0: $fe $de
	ld bc, $819b                                     ; $5ea2: $01 $9b $81
	add e                                            ; $5ea5: $83
	jp Jump_027_7bcf                                 ; $5ea6: $c3 $cf $7b


	sbc b                                            ; $5ea9: $98
	sbc [hl]                                         ; $5eaa: $9e
	ld bc, $9bfe                                     ; $5eab: $01 $fe $9b
	ld b, d                                          ; $5eae: $42
	cpl                                              ; $5eaf: $2f
	ldh a, [$f0]                                     ; $5eb0: $f0 $f0
	db $db                                           ; $5eb2: $db
	ld hl, sp+$7f                                    ; $5eb3: $f8 $7f
	jp c, $3f99                                      ; $5eb5: $da $99 $3f

	ld a, a                                          ; $5eb8: $7f
	sbc a                                            ; $5eb9: $9f
	rra                                              ; $5eba: $1f
	rrca                                             ; $5ebb: $0f
	rst GetHLinHL                                          ; $5ebc: $cf
	sbc $1f                                          ; $5ebd: $de $1f
	rst SubAFromDE                                          ; $5ebf: $df
	rla                                              ; $5ec0: $17
	sbc $07                                          ; $5ec1: $de $07
	ld l, a                                          ; $5ec3: $6f
	add d                                            ; $5ec4: $82
	rst SubAFromDE                                          ; $5ec5: $df
	cp $df                                           ; $5ec6: $fe $df
	ldh a, [$de]                                     ; $5ec8: $f0 $de
	ldh [$df], a                                     ; $5eca: $e0 $df
	ret nz                                           ; $5ecc: $c0

	sbc h                                            ; $5ecd: $9c
	add b                                            ; $5ece: $80
	ld e, c                                          ; $5ecf: $59
	ld e, c                                          ; $5ed0: $59
	call c, $9e79                                    ; $5ed1: $dc $79 $9e
	ld sp, hl                                        ; $5ed4: $f9
	sbc $20                                          ; $5ed5: $de $20
	sbc d                                            ; $5ed7: $9a
	ld d, b                                          ; $5ed8: $50
	ld [hl], b                                       ; $5ed9: $70
	ld l, b                                          ; $5eda: $68
	ld a, b                                          ; $5edb: $78
	ld [hl], h                                       ; $5edc: $74
	db $dd                                           ; $5edd: $dd
	rst $38                                          ; $5ede: $ff
	rst SubAFromDE                                          ; $5edf: $df
	rst SubAFromDE                                          ; $5ee0: $df
	rst SubAFromDE                                          ; $5ee1: $df
	rst GetHLinHL                                          ; $5ee2: $cf
	rlca                                             ; $5ee3: $07
	jr nc, jr_027_5ef1                               ; $5ee4: $30 $0b

	nop                                              ; $5ee6: $00
	rst SubAFromDE                                          ; $5ee7: $df
	inc sp                                           ; $5ee8: $33
	sbc c                                            ; $5ee9: $99
	scf                                              ; $5eea: $37
	ld [hl], e                                       ; $5eeb: $73
	ld b, l                                          ; $5eec: $45
	ld b, a                                          ; $5eed: $47
	ld [hl], e                                       ; $5eee: $73
	inc sp                                           ; $5eef: $33
	adc a                                            ; $5ef0: $8f

jr_027_5ef1:
	add b                                            ; $5ef1: $80
	ld sp, hl                                        ; $5ef2: $f9
	reti                                             ; $5ef3: $d9


	rst $38                                          ; $5ef4: $ff
	inc bc                                           ; $5ef5: $03
	ldh a, [$fb]                                     ; $5ef6: $f0 $fb
	sbc [hl]                                         ; $5ef8: $9e
	ld bc, $ffd9                                     ; $5ef9: $01 $d9 $ff
	sub a                                            ; $5efc: $97
	ld [rRAMG], sp                                   ; $5efd: $08 $00 $00
	rlca                                             ; $5f00: $07
	jr c, jr_027_5f43                                ; $5f01: $38 $40

	cp h                                             ; $5f03: $bc
	ld b, e                                          ; $5f04: $43
	reti                                             ; $5f05: $d9


	rst $38                                          ; $5f06: $ff
	sbc e                                            ; $5f07: $9b
	ccf                                              ; $5f08: $3f
	rra                                              ; $5f09: $1f
	rst $38                                          ; $5f0a: $ff
	rra                                              ; $5f0b: $1f
	sbc $0f                                          ; $5f0c: $de $0f
	sbc l                                            ; $5f0e: $9d
	rlca                                             ; $5f0f: $07
	ld [$f5de], a                                    ; $5f10: $ea $de $f5
	sbc $fa                                          ; $5f13: $de $fa
	sbc [hl]                                         ; $5f15: $9e
	cp $de                                           ; $5f16: $fe $de
	ld l, c                                          ; $5f18: $69
	sbc d                                            ; $5f19: $9a
	ld c, e                                          ; $5f1a: $4b
	call $a9c9                                       ; $5f1b: $cd $c9 $a9

Call_027_5f1e:
	xor c                                            ; $5f1e: $a9
	sbc $db                                          ; $5f1f: $de $db
	rst SubAFromDE                                          ; $5f21: $df
	ld sp, hl                                        ; $5f22: $f9
	sbc $fd                                          ; $5f23: $de $fd
	adc [hl]                                         ; $5f25: $8e
	rst SubAFromDE                                          ; $5f26: $df
	ccf                                              ; $5f27: $3f
	ld a, a                                          ; $5f28: $7f
	ld a, a                                          ; $5f29: $7f
	ccf                                              ; $5f2a: $3f
	rra                                              ; $5f2b: $1f
	rrca                                             ; $5f2c: $0f
	add a                                            ; $5f2d: $87
	pop af                                           ; $5f2e: $f1
	ldh a, [$e0]                                     ; $5f2f: $f0 $e0
	ldh [$f0], a                                     ; $5f31: $e0 $f0
	ld hl, sp-$04                                    ; $5f33: $f8 $fc
	cp $fe                                           ; $5f35: $fe $fe
	db $dd                                           ; $5f37: $dd
	rst $38                                          ; $5f38: $ff
	sbc $fe                                          ; $5f39: $de $fe
	sbc e                                            ; $5f3b: $9b
	db $fc                                           ; $5f3c: $fc
	rst $38                                          ; $5f3d: $ff
	ld a, a                                          ; $5f3e: $7f
	ld e, $fd                                        ; $5f3f: $1e $fd
	sbc e                                            ; $5f41: $9b
	rlca                                             ; $5f42: $07

jr_027_5f43:
	sbc a                                            ; $5f43: $9f
	db $fd                                           ; $5f44: $fd
	pop af                                           ; $5f45: $f1
	db $dd                                           ; $5f46: $dd
	ld bc, $039d                                     ; $5f47: $01 $9d $03
	dec c                                            ; $5f4a: $0d
	ld [hl], e                                       ; $5f4b: $73
	ld sp, hl                                        ; $5f4c: $f9
	sub [hl]                                         ; $5f4d: $96
	ld bc, $0402                                     ; $5f4e: $01 $02 $04
	inc bc                                           ; $5f51: $03
	db $fc                                           ; $5f52: $fc
	add b                                            ; $5f53: $80
	ldh [$b0], a                                     ; $5f54: $e0 $b0
	ret nc                                           ; $5f56: $d0

	ld h, e                                          ; $5f57: $63

jr_027_5f58:
	and b                                            ; $5f58: $a0
	sub [hl]                                         ; $5f59: $96
	ccf                                              ; $5f5a: $3f
	rst $38                                          ; $5f5b: $ff
	ld a, a                                          ; $5f5c: $7f
	ccf                                              ; $5f5d: $3f
	ccf                                              ; $5f5e: $3f
	rra                                              ; $5f5f: $1f
	rra                                              ; $5f60: $1f
	rst FarCall                                          ; $5f61: $f7
	ei                                               ; $5f62: $fb
	ld a, e                                          ; $5f63: $7b
	cp $de                                           ; $5f64: $fe $de
	rst $38                                          ; $5f66: $ff
	rst SubAFromDE                                          ; $5f67: $df
	inc l                                            ; $5f68: $2c
	sbc h                                            ; $5f69: $9c
	ld l, h                                          ; $5f6a: $6c
	ld l, a                                          ; $5f6b: $6f
	ld a, h                                          ; $5f6c: $7c
	sbc $f8                                          ; $5f6d: $de $f8
	db $dd                                           ; $5f6f: $dd
	daa                                              ; $5f70: $27
	sbc e                                            ; $5f71: $9b
	dec l                                            ; $5f72: $2d
	ld c, c                                          ; $5f73: $49
	ld c, c                                          ; $5f74: $49
	ld e, c                                          ; $5f75: $59
	db $fd                                           ; $5f76: $fd
	sbc [hl]                                         ; $5f77: $9e
	ret nz                                           ; $5f78: $c0

	sbc $20                                          ; $5f79: $de $20
	inc bc                                           ; $5f7b: $03
	jr nc, jr_027_5f58                               ; $5f7c: $30 $da

	rst $38                                          ; $5f7e: $ff
	dec bc                                           ; $5f7f: $0b
	nop                                              ; $5f80: $00
	rst SubAFromDE                                          ; $5f81: $df
	inc sp                                           ; $5f82: $33
	sbc c                                            ; $5f83: $99
	scf                                              ; $5f84: $37
	ld h, h                                          ; $5f85: $64
	ld d, l                                          ; $5f86: $55
	scf                                              ; $5f87: $37
	ld [hl], a                                       ; $5f88: $77
	inc sp                                           ; $5f89: $33
	ld a, a                                          ; $5f8a: $7f
	add b                                            ; $5f8b: $80
	ld sp, hl                                        ; $5f8c: $f9
	reti                                             ; $5f8d: $d9


	rst $38                                          ; $5f8e: $ff
	inc bc                                           ; $5f8f: $03
	ldh a, [rWX]                                     ; $5f90: $f0 $4b
	ldh a, [$9a]                                     ; $5f92: $f0 $9a
	rlca                                             ; $5f94: $07
	ld b, $0e                                        ; $5f95: $06 $0e
	inc c                                            ; $5f97: $0c
	inc c                                            ; $5f98: $0c
	sbc $08                                          ; $5f99: $de $08
	sbc h                                            ; $5f9b: $9c
	db $fd                                           ; $5f9c: $fd
	rst $38                                          ; $5f9d: $ff
	ei                                               ; $5f9e: $fb
	call c, $dcff                                    ; $5f9f: $dc $ff $dc
	ld a, a                                          ; $5fa2: $7f
	sbc $3f                                          ; $5fa3: $de $3f
	sbc $d4                                          ; $5fa5: $de $d4
	sbc l                                            ; $5fa7: $9d
	call nz, $dec2                                   ; $5fa8: $c4 $c2 $de
	ld [$d397], a                                    ; $5fab: $ea $97 $d3
	jp $9bcb                                         ; $5fae: $c3 $cb $9b


	sub e                                            ; $5fb1: $93
	sub e                                            ; $5fb2: $93
	add e                                            ; $5fb3: $83
	ld b, e                                          ; $5fb4: $43
	sbc $83                                          ; $5fb5: $de $83
	ld a, a                                          ; $5fb7: $7f
	or $87                                           ; $5fb8: $f6 $87
	set 3, e                                         ; $5fba: $cb $db
	db $db                                           ; $5fbc: $db
	ld a, a                                          ; $5fbd: $7f
	ld a, a                                          ; $5fbe: $7f
	rst SubAFromDE                                          ; $5fbf: $df
	sbc a                                            ; $5fc0: $9f
	sbc a                                            ; $5fc1: $9f
	ld e, a                                          ; $5fc2: $5f
	rra                                              ; $5fc3: $1f
	ccf                                              ; $5fc4: $3f
	ldh [$f0], a                                     ; $5fc5: $e0 $f0
	ld hl, sp-$04                                    ; $5fc7: $f8 $fc
	cp $ff                                           ; $5fc9: $fe $ff
	rst FarCall                                          ; $5fcb: $f7
	di                                               ; $5fcc: $f3
	nop                                              ; $5fcd: $00
	nop                                              ; $5fce: $00
	add b                                            ; $5fcf: $80
	add b                                            ; $5fd0: $80
	ret nz                                           ; $5fd1: $c0

	ld a, e                                          ; $5fd2: $7b
	di                                               ; $5fd3: $f3
	ei                                               ; $5fd4: $fb
	sbc d                                            ; $5fd5: $9a
	ret nz                                           ; $5fd6: $c0

	ldh a, [$b8]                                     ; $5fd7: $f0 $b8

jr_027_5fd9:
	nop                                              ; $5fd9: $00
	jr c, jr_027_5fd9                                ; $5fda: $38 $fd

	sbc l                                            ; $5fdc: $9d
	ld bc, $fb64                                     ; $5fdd: $01 $64 $fb
	sub b                                            ; $5fe0: $90
	ld bc, $0203                                     ; $5fe1: $01 $03 $02
	inc b                                            ; $5fe4: $04
	ld c, $16                                        ; $5fe5: $0e $16
	inc hl                                           ; $5fe7: $23
	jp $0383                                         ; $5fe8: $c3 $83 $03


	inc bc                                           ; $5feb: $03
	rlca                                             ; $5fec: $07
	rrca                                             ; $5fed: $0f
	rra                                              ; $5fee: $1f
	ccf                                              ; $5fef: $3f
	ld l, a                                          ; $5ff0: $6f
	sbc [hl]                                         ; $5ff1: $9e
	db $dd                                           ; $5ff2: $dd
	ccf                                              ; $5ff3: $3f
	sbc l                                            ; $5ff4: $9d
	or $fa                                           ; $5ff5: $f6 $fa
	ld a, e                                          ; $5ff7: $7b
	cp $9c                                           ; $5ff8: $fe $9c
	ei                                               ; $5ffa: $fb
	rst FarCall                                          ; $5ffb: $f7
	ei                                               ; $5ffc: $fb
	db $dd                                           ; $5ffd: $dd
	or [hl]                                          ; $5ffe: $b6
	sbc $a6                                          ; $5fff: $de $a6
	sbc [hl]                                         ; $6001: $9e
	inc l                                            ; $6002: $2c
	reti                                             ; $6003: $d9


	daa                                              ; $6004: $27
	inc bc                                           ; $6005: $03
	ld b, b                                          ; $6006: $40
	ld c, e                                          ; $6007: $4b
	ldh a, [$0b]                                     ; $6008: $f0 $0b
	nop                                              ; $600a: $00
	rst SubAFromDE                                          ; $600b: $df
	inc sp                                           ; $600c: $33
	sbc c                                            ; $600d: $99
	ld [hl], a                                       ; $600e: $77
	ld h, h                                          ; $600f: $64
	ld d, l                                          ; $6010: $55
	scf                                              ; $6011: $37
	ld [hl], a                                       ; $6012: $77
	inc sp                                           ; $6013: $33
	ld [hl], e                                       ; $6014: $73
	add b                                            ; $6015: $80
	ld sp, hl                                        ; $6016: $f9
	reti                                             ; $6017: $d9


	rst $38                                          ; $6018: $ff
	inc bc                                           ; $6019: $03
	ldh a, [rBGP]                                    ; $601a: $f0 $47
	ldh a, [$98]                                     ; $601c: $f0 $98
	ld bc, $0402                                     ; $601e: $01 $02 $04
	add hl, bc                                       ; $6021: $09
	add hl, bc                                       ; $6022: $09
	inc bc                                           ; $6023: $03
	inc bc                                           ; $6024: $03
	db $db                                           ; $6025: $db
	rst $38                                          ; $6026: $ff
	rst SubAFromDE                                          ; $6027: $df
	cp $97                                           ; $6028: $fe $97
	xor e                                            ; $602a: $ab
	xor c                                            ; $602b: $a9
	xor c                                            ; $602c: $a9
	jp hl                                            ; $602d: $e9


	ld l, c                                          ; $602e: $69
	ld b, l                                          ; $602f: $45
	ld d, l                                          ; $6030: $55
	db $dd                                           ; $6031: $dd
	jp c, $9afe                                      ; $6032: $da $fe $9a

	or $b7                                           ; $6035: $f6 $b7
	sub a                                            ; $6037: $97
	sub a                                            ; $6038: $97
	rst SubAFromHL                                          ; $6039: $d7
	sbc $d3                                          ; $603a: $de $d3
	sbc [hl]                                         ; $603c: $9e
	db $db                                           ; $603d: $db
	sbc $ca                                          ; $603e: $de $ca
	db $dd                                           ; $6040: $dd
	adc e                                            ; $6041: $8b
	sub a                                            ; $6042: $97
	add e                                            ; $6043: $83
	db $fc                                           ; $6044: $fc
	ldh a, [$f8]                                     ; $6045: $f0 $f8
	db $fc                                           ; $6047: $fc
	db $fc                                           ; $6048: $fc
	cp $fe                                           ; $6049: $fe $fe
	ld l, a                                          ; $604b: $6f
	cp b                                             ; $604c: $b8
	rst SubAFromDE                                          ; $604d: $df
	add b                                            ; $604e: $80
	sbc [hl]                                         ; $604f: $9e
	ret nz                                           ; $6050: $c0

	pop af                                           ; $6051: $f1
	rst SubAFromDE                                          ; $6052: $df
	ld a, b                                          ; $6053: $78
	sub b                                            ; $6054: $90
	ld a, h                                          ; $6055: $7c
	ld a, [hl]                                       ; $6056: $7e
	inc a                                            ; $6057: $3c
	nop                                              ; $6058: $00
	nop                                              ; $6059: $00
	ld e, b                                          ; $605a: $58
	nop                                              ; $605b: $00
	nop                                              ; $605c: $00
	inc b                                            ; $605d: $04
	inc c                                            ; $605e: $0c
	ld [rRAMG], sp                                   ; $605f: $08 $00 $00
	jr c, jr_027_6082                                ; $6062: $38 $1e

	db $fc                                           ; $6064: $fc
	rst SubAFromDE                                          ; $6065: $df
	ld bc, $94fa                                     ; $6066: $01 $fa $94
	ld bc, $7a7e                                     ; $6069: $01 $7e $7a
	halt                                             ; $606c: $76
	ld a, [$eaf6]                                    ; $606d: $fa $f6 $ea

jr_027_6070:
	or $fa                                           ; $6070: $f6 $fa
	ccf                                              ; $6072: $3f
	ccf                                              ; $6073: $3f
	sbc $7f                                          ; $6074: $de $7f
	sbc $ff                                          ; $6076: $de $ff
	sbc l                                            ; $6078: $9d
	ld l, e                                          ; $6079: $6b
	ld h, e                                          ; $607a: $63
	sbc $47                                          ; $607b: $de $47
	sbc $85                                          ; $607d: $de $85
	call c, $deb5                                    ; $607f: $dc $b5 $de

jr_027_6082:
	scf                                              ; $6082: $37

Call_027_6083:
	inc bc                                           ; $6083: $03
	ld d, b                                          ; $6084: $50
	ld c, e                                          ; $6085: $4b
	ldh a, [$0b]                                     ; $6086: $f0 $0b
	nop                                              ; $6088: $00
	rst SubAFromDE                                          ; $6089: $df

jr_027_608a:
	inc sp                                           ; $608a: $33
	sbc c                                            ; $608b: $99
	halt                                             ; $608c: $76
	ld h, l                                          ; $608d: $65
	ld d, l                                          ; $608e: $55
	ld d, l                                          ; $608f: $55
	ld h, e                                          ; $6090: $63
	inc sp                                           ; $6091: $33
	ld a, a                                          ; $6092: $7f
	add b                                            ; $6093: $80
	ld sp, hl                                        ; $6094: $f9
	reti                                             ; $6095: $d9


	rst $38                                          ; $6096: $ff
	inc bc                                           ; $6097: $03
	ldh a, [$0b]                                     ; $6098: $f0 $0b
	ldh a, [$de]                                     ; $609a: $f0 $de
	and d                                            ; $609c: $a2
	sbc [hl]                                         ; $609d: $9e
	and e                                            ; $609e: $a3
	db $dd                                           ; $609f: $dd
	xor e                                            ; $60a0: $ab
	sbc $ff                                          ; $60a1: $de $ff
	call c, $9dfe                                    ; $60a3: $dc $fe $9d
	ld e, a                                          ; $60a6: $5f
	ld d, e                                          ; $60a7: $53
	db $dd                                           ; $60a8: $dd
	ld a, a                                          ; $60a9: $7f
	sbc c                                            ; $60aa: $99
	ld [hl], a                                       ; $60ab: $77
	or a                                             ; $60ac: $b7
	push hl                                          ; $60ad: $e5
	db $ed                                           ; $60ae: $ed
	ret                                              ; $60af: $c9


	ret                                              ; $60b0: $c9


	sbc $cb                                          ; $60b1: $de $cb
	add e                                            ; $60b3: $83
	jp z, $fefc                                      ; $60b4: $ca $fc $fe

	rst AddAOntoHL                                          ; $60b7: $ef
	db $fd                                           ; $60b8: $fd
	ld sp, hl                                        ; $60b9: $f9
	db $f4                                           ; $60ba: $f4
	ld a, [$1eff]                                    ; $60bb: $fa $ff $1e
	ld a, a                                          ; $60be: $7f
	ccf                                              ; $60bf: $3f
	rrca                                             ; $60c0: $0f
	add hl, bc                                       ; $60c1: $09

Jump_027_60c2:
	dec c                                            ; $60c2: $0d
	rlca                                             ; $60c3: $07
	nop                                              ; $60c4: $00
	ld l, a                                          ; $60c5: $6f
	ld [hl], $24                                     ; $60c6: $36 $24
	ldh [$a0], a                                     ; $60c8: $e0 $a0
	ld b, b                                          ; $60ca: $40
	add b                                            ; $60cb: $80
	ldh [$78], a                                     ; $60cc: $e0 $78
	jr z, jr_027_6070                                ; $60ce: $28 $a0

	sbc $e0                                          ; $60d0: $de $e0
	sbc h                                            ; $60d2: $9c
	ret nz                                           ; $60d3: $c0

	nop                                              ; $60d4: $00
	ld bc, $9dfc                                     ; $60d5: $01 $fc $9d
	jr nc, jr_027_614a                               ; $60d8: $30 $70

	ld sp, hl                                        ; $60da: $f9
	add b                                            ; $60db: $80
	or a                                             ; $60dc: $b7
	db $e3                                           ; $60dd: $e3
	ld [hl], d                                       ; $60de: $72
	ld a, d                                          ; $60df: $7a
	ld e, [hl]                                       ; $60e0: $5e
	ld [$2044], a                                    ; $60e1: $ea $44 $20
	ld a, a                                          ; $60e4: $7f
	ld h, a                                          ; $60e5: $67
	di                                               ; $60e6: $f3
	ld a, [$6efe]                                    ; $60e7: $fa $fe $6e
	ld l, h                                          ; $60ea: $6c
	jr c, jr_027_608a                                ; $60eb: $38 $9d

	dec e                                            ; $60ed: $1d
	call c, $5cdc                                    ; $60ee: $dc $dc $5c
	sbc [hl]                                         ; $60f1: $9e
	ld a, $3a                                        ; $60f2: $3e $3a
	rlca                                             ; $60f4: $07
	add a                                            ; $60f5: $87
	add a                                            ; $60f6: $87
	rst GetHLinHL                                          ; $60f7: $cf
	adc a                                            ; $60f8: $8f
	rrca                                             ; $60f9: $0f
	rra                                              ; $60fa: $1f
	sub [hl]                                         ; $60fb: $96
	rra                                              ; $60fc: $1f
	ld e, a                                          ; $60fd: $5f
	ld e, e                                          ; $60fe: $5b
	cp e                                             ; $60ff: $bb
	cp e                                             ; $6100: $bb
	cp d                                             ; $6101: $ba
	cp d                                             ; $6102: $ba
	xor d                                            ; $6103: $aa
	xor e                                            ; $6104: $ab
	db $dd                                           ; $6105: $dd
	db $e4                                           ; $6106: $e4
	rst SubAFromDE                                          ; $6107: $df
	push hl                                          ; $6108: $e5
	rst SubAFromDE                                          ; $6109: $df
	push af                                          ; $610a: $f5
	jp c, $0380                                      ; $610b: $da $80 $03

	ld d, b                                          ; $610e: $50
	reti                                             ; $610f: $d9


	rst $38                                          ; $6110: $ff
	dec bc                                           ; $6111: $0b
	nop                                              ; $6112: $00
	rst SubAFromDE                                          ; $6113: $df
	inc sp                                           ; $6114: $33
	sbc c                                            ; $6115: $99
	ld [hl], $65                                     ; $6116: $36 $65
	ld d, l                                          ; $6118: $55
	ld d, l                                          ; $6119: $55
	ld h, e                                          ; $611a: $63
	inc sp                                           ; $611b: $33
	and e                                            ; $611c: $a3
	add b                                            ; $611d: $80
	rst SubAFromDE                                          ; $611e: $df
	ld [bc], a                                       ; $611f: $02
	ei                                               ; $6120: $fb
	reti                                             ; $6121: $d9


	rst $38                                          ; $6122: $ff
	ld sp, hl                                        ; $6123: $f9
	reti                                             ; $6124: $d9


	rst $38                                          ; $6125: $ff
	sbc [hl]                                         ; $6126: $9e
	jr nz, jr_027_6174                               ; $6127: $20 $4b

	ldh a, [rBGP]                                    ; $6129: $f0 $47
	ldh [$df], a                                     ; $612b: $e0 $df
	ld bc, $f04f                                     ; $612d: $01 $4f $f0
	sbc $a4                                          ; $6130: $de $a4
	sbc [hl]                                         ; $6132: $9e
	and l                                            ; $6133: $a5
	db $dd                                           ; $6134: $dd
	xor c                                            ; $6135: $a9
	reti                                             ; $6136: $d9


	rst $38                                          ; $6137: $ff
	add b                                            ; $6138: $80
	sub c                                            ; $6139: $91
	sub l                                            ; $613a: $95
	sub h                                            ; $613b: $94
	rra                                              ; $613c: $1f
	cpl                                              ; $613d: $2f
	add hl, hl                                       ; $613e: $29
	ccf                                              ; $613f: $3f
	ccf                                              ; $6140: $3f
	rst $38                                          ; $6141: $ff
	ei                                               ; $6142: $fb
	ei                                               ; $6143: $fb
	ldh a, [c]                                       ; $6144: $f2
	ldh a, [c]                                       ; $6145: $f2
	or $e4                                           ; $6146: $f6 $e4
	db $e4                                           ; $6148: $e4
	rra                                              ; $6149: $1f

jr_027_614a:
	dec a                                            ; $614a: $3d
	ccf                                              ; $614b: $3f
	ld a, l                                          ; $614c: $7d
	ld [hl], a                                       ; $614d: $77
	db $fd                                           ; $614e: $fd
	rst $38                                          ; $614f: $ff
	cp $f0                                           ; $6150: $fe $f0
	db $e3                                           ; $6152: $e3
	rst SubAFromBC                                          ; $6153: $e7
	adc $d8                                          ; $6154: $ce $d8
	add e                                            ; $6156: $83
	add a                                            ; $6157: $87
	add c                                            ; $6158: $81
	adc a                                            ; $6159: $8f
	ld a, b                                          ; $615a: $78
	db $fc                                           ; $615b: $fc
	cp h                                             ; $615c: $bc
	db $fc                                           ; $615d: $fc
	cp $de                                           ; $615e: $fe $de
	rst AddAOntoHL                                          ; $6160: $ef
	rst FarCall                                          ; $6161: $f7
	ld hl, sp-$04                                    ; $6162: $f8 $fc
	ret z                                            ; $6164: $c8

	ld [$e000], sp                                   ; $6165: $08 $00 $e0
	ldh a, [$f8]                                     ; $6168: $f0 $f8
	rrca                                             ; $616a: $0f
	rrca                                             ; $616b: $0f
	ld c, $04                                        ; $616c: $0e $04
	add hl, bc                                       ; $616e: $09
	ld bc, $0303                                     ; $616f: $01 $03 $03
	ld b, $06                                        ; $6172: $06 $06

jr_027_6174:
	inc b                                            ; $6174: $04
	inc b                                            ; $6175: $04
	ld [$86fe], sp                                   ; $6176: $08 $fe $86
	ld a, b                                          ; $6179: $78
	ld [hl], h                                       ; $617a: $74
	db $fc                                           ; $617b: $fc
	rst $38                                          ; $617c: $ff
	ei                                               ; $617d: $fb
	rst $38                                          ; $617e: $ff
	db $fd                                           ; $617f: $fd
	cp $30                                           ; $6180: $fe $30
	jr z, jr_027_61e2                                ; $6182: $28 $5e

	ld a, a                                          ; $6184: $7f
	ld b, a                                          ; $6185: $47
	nop                                              ; $6186: $00
	ld e, $3f                                        ; $6187: $1e $3f
	ld a, [$4a5a]                                    ; $6189: $fa $5a $4a
	adc d                                            ; $618c: $8a
	push bc                                          ; $618d: $c5
	ld l, l                                          ; $618e: $6d
	db $fd                                           ; $618f: $fd
	cp l                                             ; $6190: $bd
	ld c, a                                          ; $6191: $4f
	sbc $0f                                          ; $6192: $de $0f
	sub b                                            ; $6194: $90
	adc a                                            ; $6195: $8f
	rst JumpTable                                          ; $6196: $c7
	daa                                              ; $6197: $27
	rlca                                             ; $6198: $07
	cp $fa                                           ; $6199: $fe $fa
	ei                                               ; $619b: $fb
	cp a                                             ; $619c: $bf
	ld [hl], a                                       ; $619d: $77
	ld [hl], a                                       ; $619e: $77
	ld a, a                                          ; $619f: $7f
	ld a, a                                          ; $61a0: $7f
	adc c                                            ; $61a1: $89
	adc l                                            ; $61a2: $8d
	adc h                                            ; $61a3: $8c
	sbc $cc                                          ; $61a4: $de $cc
	rst SubAFromDE                                          ; $61a6: $df
	call nz, $80d9                                   ; $61a7: $c4 $d9 $80
	reti                                             ; $61aa: $d9


	rst $38                                          ; $61ab: $ff
	sbc b                                            ; $61ac: $98
	ld b, $0e                                        ; $61ad: $06 $0e
	dec c                                            ; $61af: $0d
	add hl, bc                                       ; $61b0: $09
	inc bc                                           ; $61b1: $03
	rlca                                             ; $61b2: $07
	ld b, $63                                        ; $61b3: $06 $63
	ld h, b                                          ; $61b5: $60
	sbc e                                            ; $61b6: $9b
	ret nz                                           ; $61b7: $c0

	ldh [$f0], a                                     ; $61b8: $e0 $f0
	jr nc, jr_027_6233                               ; $61ba: $30 $77

	inc l                                            ; $61bc: $2c
	reti                                             ; $61bd: $d9


	rst $38                                          ; $61be: $ff
	dec bc                                           ; $61bf: $0b
	nop                                              ; $61c0: $00
	sub a                                            ; $61c1: $97
	ld [hl-], a                                      ; $61c2: $32
	ld [hl+], a                                      ; $61c3: $22
	ld h, $65                                        ; $61c4: $26 $65
	ld d, l                                          ; $61c6: $55
	ld d, l                                          ; $61c7: $55
	ld h, d                                          ; $61c8: $62
	ld [hl+], a                                      ; $61c9: $22
	db $e3                                           ; $61ca: $e3
	add b                                            ; $61cb: $80
	sub d                                            ; $61cc: $92
	ld a, a                                          ; $61cd: $7f
	ld l, a                                          ; $61ce: $6f
	xor $dd                                          ; $61cf: $ee $dd
	cp e                                             ; $61d1: $bb
	dec sp                                           ; $61d2: $3b
	inc de                                           ; $61d3: $13
	inc bc                                           ; $61d4: $03
	db $fc                                           ; $61d5: $fc
	sub b                                            ; $61d6: $90
	ld de, $7f33                                     ; $61d7: $11 $33 $7f
	sbc $ff                                          ; $61da: $de $ff
	ld a, a                                          ; $61dc: $7f
	db $fc                                           ; $61dd: $fc
	sub h                                            ; $61de: $94
	db $fd                                           ; $61df: $fd
	ei                                               ; $61e0: $fb
	or a                                             ; $61e1: $b7

jr_027_61e2:
	add a                                            ; $61e2: $87
	ld b, $00                                        ; $61e3: $06 $00
	ld sp, hl                                        ; $61e5: $f9
	pop hl                                           ; $61e6: $e1
	jp $efc7                                         ; $61e7: $c3 $c7 $ef


	sbc $ff                                          ; $61ea: $de $ff
	sub d                                            ; $61ec: $92
	db $fc                                           ; $61ed: $fc
	ld a, h                                          ; $61ee: $7c
	ld hl, sp-$10                                    ; $61ef: $f8 $f0
	db $fc                                           ; $61f1: $fc
	inc a                                            ; $61f2: $3c
	ld [hl], $30                                     ; $61f3: $36 $30
	add a                                            ; $61f5: $87
	adc a                                            ; $61f6: $8f
	daa                                              ; $61f7: $27
	ccf                                              ; $61f8: $3f
	sbc a                                            ; $61f9: $9f
	sbc $ff                                          ; $61fa: $de $ff
	sbc l                                            ; $61fc: $9d
	inc c                                            ; $61fd: $0c
	ld [$9dfb], sp                                   ; $61fe: $08 $fb $9d
	di                                               ; $6201: $f3
	rst FarCall                                          ; $6202: $f7
	db $db                                           ; $6203: $db
	rst $38                                          ; $6204: $ff
	sbc $23                                          ; $6205: $de $23
	sbc $03                                          ; $6207: $de $03
	rst SubAFromDE                                          ; $6209: $df
	ld bc, $fe9e                                     ; $620a: $01 $9e $fe
	jp c, $9bff                                      ; $620d: $da $ff $9b

	jr z, @+$6b                                      ; $6210: $28 $69

	ret                                              ; $6212: $c9


	ld d, c                                          ; $6213: $51
	sbc $d2                                          ; $6214: $de $d2
	sbc [hl]                                         ; $6216: $9e
	and h                                            ; $6217: $a4
	reti                                             ; $6218: $d9


	rst $38                                          ; $6219: $ff
	sub a                                            ; $621a: $97
	sub e                                            ; $621b: $93
	ld [de], a                                       ; $621c: $12
	ld [bc], a                                       ; $621d: $02
	inc h                                            ; $621e: $24
	inc h                                            ; $621f: $24
	ld c, b                                          ; $6220: $48
	ld c, b                                          ; $6221: $48
	ld c, c                                          ; $6222: $49
	reti                                             ; $6223: $d9


	rst $38                                          ; $6224: $ff
	sub a                                            ; $6225: $97
	db $10                                           ; $6226: $10
	jr nz, @+$22                                     ; $6227: $20 $20

	ld b, c                                          ; $6229: $41
	ld b, e                                          ; $622a: $43
	add a                                            ; $622b: $87
	adc a                                            ; $622c: $8f
	rra                                              ; $622d: $1f
	db $dd                                           ; $622e: $dd
	rst $38                                          ; $622f: $ff
	adc c                                            ; $6230: $89
	cp $fc                                           ; $6231: $fe $fc

jr_027_6233:
	ld hl, sp-$10                                    ; $6233: $f8 $f0
	jr c, jr_027_62b0                                ; $6235: $38 $79

	ld sp, hl                                        ; $6237: $f9
	ei                                               ; $6238: $fb
	ld [$8cce], a                                    ; $6239: $ea $ce $8c
	call c, $cfef                                    ; $623c: $dc $ef $cf
	adc a                                            ; $623f: $8f
	ld c, $0e                                        ; $6240: $0e $0e
	inc c                                            ; $6242: $0c
	inc c                                            ; $6243: $0c
	ld [$86c6], sp                                   ; $6244: $08 $c6 $86
	db $dd                                           ; $6247: $dd
	ld b, $9c                                        ; $6248: $06 $9c
	rrca                                             ; $624a: $0f
	dec c                                            ; $624b: $0d
	add e                                            ; $624c: $83
	db $db                                           ; $624d: $db
	inc bc                                           ; $624e: $03
	sub [hl]                                         ; $624f: $96
	rlca                                             ; $6250: $07
	ld [hl+], a                                      ; $6251: $22
	ld [hl+], a                                      ; $6252: $22
	ld h, e                                          ; $6253: $63
	ld h, a                                          ; $6254: $67
	rst SubAFromBC                                          ; $6255: $e7
	rst AddAOntoHL                                          ; $6256: $ef
	db $ed                                           ; $6257: $ed
	ld hl, sp-$22                                    ; $6258: $f8 $de
	rst $38                                          ; $625a: $ff
	sub d                                            ; $625b: $92
	db $fd                                           ; $625c: $fd
	cp l                                             ; $625d: $bd
	cp b                                             ; $625e: $b8
	jr c, jr_027_6291                                ; $625f: $38 $30

	ld d, h                                          ; $6261: $54
	ld l, d                                          ; $6262: $6a
	ld l, d                                          ; $6263: $6a
	ld a, d                                          ; $6264: $7a
	ld [hl], l                                       ; $6265: $75
	push de                                          ; $6266: $d5
	push af                                          ; $6267: $f5
	db $ed                                           ; $6268: $ed
	db $db                                           ; $6269: $db
	rst $38                                          ; $626a: $ff
	add b                                            ; $626b: $80
	rst SubAFromDE                                          ; $626c: $df
	ld e, a                                          ; $626d: $5f
	ld [hl+], a                                      ; $626e: $22
	sbc d                                            ; $626f: $9a
	cp d                                             ; $6270: $ba
	sbc c                                            ; $6271: $99
	db $db                                           ; $6272: $db
	rst SubAFromHL                                          ; $6273: $d7
	rst GetHLinHL                                          ; $6274: $cf
	ld e, a                                          ; $6275: $5f
	inc sp                                           ; $6276: $33
	inc sp                                           ; $6277: $33
	inc de                                           ; $6278: $13
	inc de                                           ; $6279: $13
	ld de, $1919                                     ; $627a: $11 $19 $19
	adc c                                            ; $627d: $89
	rst $38                                          ; $627e: $ff
	rst $38                                          ; $627f: $ff
	sbc l                                            ; $6280: $9d
	sbc l                                            ; $6281: $9d
	cp c                                             ; $6282: $b9
	sub h                                            ; $6283: $94
	adc h                                            ; $6284: $8c
	adc h                                            ; $6285: $8c
	rst AddAOntoHL                                          ; $6286: $ef
	rst FarCall                                          ; $6287: $f7
	and $e2                                          ; $6288: $e6 $e2
	add $77                                          ; $628a: $c6 $77
	ccf                                              ; $628c: $3f
	sbc [hl]                                         ; $628d: $9e
	dec h                                            ; $628e: $25
	ld a, e                                          ; $628f: $7b
	inc a                                            ; $6290: $3c

jr_027_6291:
	add h                                            ; $6291: $84
	xor a                                            ; $6292: $af
	rlca                                             ; $6293: $07
	dec b                                            ; $6294: $05
	sbc $ff                                          ; $6295: $de $ff
	rst SubAFromBC                                          ; $6297: $e7
	add e                                            ; $6298: $83
	rlca                                             ; $6299: $07
	ld e, [hl]                                       ; $629a: $5e
	cp $fe                                           ; $629b: $fe $fe
	rst AddAOntoHL                                          ; $629d: $ef
	rst $38                                          ; $629e: $ff
	ld sp, hl                                        ; $629f: $f9
	ld e, $bf                                        ; $62a0: $1e $bf
	ld sp, hl                                        ; $62a2: $f9
	ld hl, sp-$20                                    ; $62a3: $f8 $e0
	inc de                                           ; $62a5: $13
	sbc a                                            ; $62a6: $9f
	rst AddAOntoHL                                          ; $62a7: $ef
	rst SubAFromBC                                          ; $62a8: $e7
	ld c, l                                          ; $62a9: $4d
	ld h, [hl]                                       ; $62aa: $66
	daa                                              ; $62ab: $27
	ld a, a                                          ; $62ac: $7f
	dec bc                                           ; $62ad: $0b
	nop                                              ; $62ae: $00
	rst SubAFromDE                                          ; $62af: $df

jr_027_62b0:
	ld [hl+], a                                      ; $62b0: $22
	sbc c                                            ; $62b1: $99
	halt                                             ; $62b2: $76
	ld h, l                                          ; $62b3: $65
	ld d, l                                          ; $62b4: $55
	ld d, l                                          ; $62b5: $55
	ld h, d                                          ; $62b6: $62
	ld [hl+], a                                      ; $62b7: $22
	db $f4                                           ; $62b8: $f4
	add b                                            ; $62b9: $80
	sbc l                                            ; $62ba: $9d
	rst $38                                          ; $62bb: $ff
	cp $db                                           ; $62bc: $fe $db
	rst $38                                          ; $62be: $ff
	sub l                                            ; $62bf: $95
	inc de                                           ; $62c0: $13
	inc sp                                           ; $62c1: $33
	and e                                            ; $62c2: $a3
	dec d                                            ; $62c3: $15
	inc l                                            ; $62c4: $2c
	jr z, jr_027_62d0                                ; $62c5: $28 $09

	cp a                                             ; $62c7: $bf
	rst $38                                          ; $62c8: $ff
	ccf                                              ; $62c9: $3f
	db $dd                                           ; $62ca: $dd
	rst $38                                          ; $62cb: $ff
	ld a, a                                          ; $62cc: $7f
	ld sp, hl                                        ; $62cd: $f9
	rst SubAFromDE                                          ; $62ce: $df
	db $fc                                           ; $62cf: $fc

jr_027_62d0:
	sub [hl]                                         ; $62d0: $96
	or b                                             ; $62d1: $b0
	ld bc, $77a3                                     ; $62d2: $01 $a3 $77
	db $fd                                           ; $62d5: $fd
	ld hl, sp-$02                                    ; $62d6: $f8 $fe
	rst $38                                          ; $62d8: $ff
	pop af                                           ; $62d9: $f1
	sbc $ff                                          ; $62da: $de $ff
	sub l                                            ; $62dc: $95
	ei                                               ; $62dd: $fb
	pop af                                           ; $62de: $f1
	ld h, e                                          ; $62df: $63
	nop                                              ; $62e0: $00
	adc [hl]                                         ; $62e1: $8e
	ld [hl], c                                       ; $62e2: $71
	jr z, jr_027_6325                                ; $62e3: $28 $40

	cp $ce                                           ; $62e5: $fe $ce
	ld [hl], a                                       ; $62e7: $77
	pop de                                           ; $62e8: $d1
	rst SubAFromDE                                          ; $62e9: $df
	rst JumpTable                                          ; $62ea: $c7
	adc c                                            ; $62eb: $89
	adc $8e                                          ; $62ec: $ce $8e
	rst JumpTable                                          ; $62ee: $c7
	ld h, e                                          ; $62ef: $63
	inc hl                                           ; $62f0: $23
	dec de                                           ; $62f1: $1b
	ld a, [hl-]                                      ; $62f2: $3a
	jr c, jr_027_6326                                ; $62f3: $38 $31

	ld [hl], e                                       ; $62f5: $73
	rra                                              ; $62f6: $1f
	dec a                                            ; $62f7: $3d
	cp c                                             ; $62f8: $b9
	ei                                               ; $62f9: $fb
	di                                               ; $62fa: $f3
	ld [hl], e                                       ; $62fb: $73
	ld [hl], e                                       ; $62fc: $73
	inc hl                                           ; $62fd: $23
	di                                               ; $62fe: $f3
	rst SubAFromBC                                          ; $62ff: $e7
	rst AddAOntoHL                                          ; $6300: $ef
	rst GetHLinHL                                          ; $6301: $cf
	sbc $de                                          ; $6302: $de $de
	sub h                                            ; $6304: $94
	rst $38                                          ; $6305: $ff
	ld e, h                                          ; $6306: $5c
	ld d, l                                          ; $6307: $55
	ld c, c                                          ; $6308: $49
	ld a, [hl+]                                      ; $6309: $2a
	or d                                             ; $630a: $b2
	or h                                             ; $630b: $b4
	and h                                            ; $630c: $a4
	ld h, h                                          ; $630d: $64
	rst AddAOntoHL                                          ; $630e: $ef
	rst AddAOntoHL                                          ; $630f: $ef
	db $db                                           ; $6310: $db
	rst $38                                          ; $6311: $ff
	sub l                                            ; $6312: $95
	ld [hl+], a                                      ; $6313: $22
	ld bc, $2300                                     ; $6314: $01 $00 $23
	ld b, b                                          ; $6317: $40
	ld b, b                                          ; $6318: $40
	adc c                                            ; $6319: $89
	add c                                            ; $631a: $81
	db $dd                                           ; $631b: $dd
	rst $38                                          ; $631c: $ff
	ld l, a                                          ; $631d: $6f
	sub [hl]                                         ; $631e: $96
	add b                                            ; $631f: $80
	xor l                                            ; $6320: $ad
	ld e, d                                          ; $6321: $5a
	or [hl]                                          ; $6322: $b6
	ld l, l                                          ; $6323: $6d
	ld e, d                                          ; $6324: $5a

jr_027_6325:
	push de                                          ; $6325: $d5

jr_027_6326:
	xor d                                            ; $6326: $aa
	inc c                                            ; $6327: $0c
	sbc $bc                                          ; $6328: $de $bc
	ld a, c                                          ; $632a: $79
	di                                               ; $632b: $f3
	rst SubAFromBC                                          ; $632c: $e7
	xor $dd                                          ; $632d: $ee $dd
	ei                                               ; $632f: $fb
	ld h, $97                                        ; $6330: $26 $97
	ld e, h                                          ; $6332: $5c
	ld [hl], e                                       ; $6333: $73
	rst JumpTable                                          ; $6334: $c7
	adc [hl]                                         ; $6335: $8e
	ld c, $1c                                        ; $6336: $0e $1c
	rra                                              ; $6338: $1f
	ld a, b                                          ; $6339: $78
	db $e3                                           ; $633a: $e3
	adc a                                            ; $633b: $8f
	inc a                                            ; $633c: $3c
	ld a, c                                          ; $633d: $79
	ld sp, hl                                        ; $633e: $f9
	sub [hl]                                         ; $633f: $96
	ei                                               ; $6340: $fb
	ld b, $1e                                        ; $6341: $06 $1e
	ldh [c], a                                       ; $6343: $e2
	ld b, $0e                                        ; $6344: $06 $0e
	ld e, $36                                        ; $6346: $1e $36
	ld h, [hl]                                       ; $6348: $66
	db $dd                                           ; $6349: $dd
	rst $38                                          ; $634a: $ff
	ld a, a                                          ; $634b: $7f
	and a                                            ; $634c: $a7
	add b                                            ; $634d: $80
	db $e3                                           ; $634e: $e3
	jp $a5ab                                         ; $634f: $c3 $ab $a5


	sub d                                            ; $6352: $92
	ld [hl], e                                       ; $6353: $73
	ld [$d5db], a                                    ; $6354: $ea $db $d5
	db $ed                                           ; $6357: $ed
	db $fd                                           ; $6358: $fd
	cp $ff                                           ; $6359: $fe $ff
	db $dd                                           ; $635b: $dd
	ld e, l                                          ; $635c: $5d
	ld l, h                                          ; $635d: $6c
	ld l, [hl]                                       ; $635e: $6e
	ld [hl], $5d                                     ; $635f: $36 $5d
	ld l, d                                          ; $6361: $6a
	or l                                             ; $6362: $b5
	ld d, h                                          ; $6363: $54
	jp c, $ec6a                                      ; $6364: $da $6a $ec

	db $fd                                           ; $6367: $fd
	db $e3                                           ; $6368: $e3
	or c                                             ; $6369: $b1
	ld e, b                                          ; $636a: $58
	cp b                                             ; $636b: $b8
	xor h                                            ; $636c: $ac
	adc h                                            ; $636d: $8c
	call c, Call_027_5656                            ; $636e: $dc $56 $56
	dec hl                                           ; $6371: $2b
	res 2, a                                         ; $6372: $cb $97
	ld h, l                                          ; $6374: $65
	sla e                                            ; $6375: $cb $23
	ld [hl], e                                       ; $6377: $73
	ld h, h                                          ; $6378: $64
	sub a                                            ; $6379: $97
	sub a                                            ; $637a: $97
	set 1, e                                         ; $637b: $cb $cb
	ld h, l                                          ; $637d: $65
	ld h, l                                          ; $637e: $65
	dec h                                            ; $637f: $25
	inc sp                                           ; $6380: $33
	call c, $deff                                    ; $6381: $dc $ff $de
	rst FarCall                                          ; $6384: $f7
	add a                                            ; $6385: $87
	ld l, [hl]                                       ; $6386: $6e
	ld c, a                                          ; $6387: $4f
	rra                                              ; $6388: $1f
	ld a, a                                          ; $6389: $7f
	rst SubAFromBC                                          ; $638a: $e7
	rst GetHLinHL                                          ; $638b: $cf
	adc $ee                                          ; $638c: $ce $ee
	rst $38                                          ; $638e: $ff
	cp $7f                                           ; $638f: $fe $7f
	ld a, e                                          ; $6391: $7b
	ei                                               ; $6392: $fb
	rst $38                                          ; $6393: $ff
	ld a, e                                          ; $6394: $7b
	ld a, [hl]                                       ; $6395: $7e
	db $ed                                           ; $6396: $ed
	pop af                                           ; $6397: $f1
	db $db                                           ; $6398: $db
	adc [hl]                                         ; $6399: $8e
	inc e                                            ; $639a: $1c
	inc c                                            ; $639b: $0c
	add [hl]                                         ; $639c: $86
	adc a                                            ; $639d: $8f
	call c, $94ff                                    ; $639e: $dc $ff $94
	rst SubAFromDE                                          ; $63a1: $df
	rst $38                                          ; $63a2: $ff
	ld a, [hl]                                       ; $63a3: $7e
	ld [$ff9b], sp                                   ; $63a4: $08 $9b $ff
	scf                                              ; $63a7: $37
	ld sp, $e870                                     ; $63a8: $31 $70 $e8
	di                                               ; $63ab: $f3
	dec bc                                           ; $63ac: $0b
	nop                                              ; $63ad: $00
	rst SubAFromDE                                          ; $63ae: $df

jr_027_63af:
	ld [hl+], a                                      ; $63af: $22
	sbc c                                            ; $63b0: $99
	halt                                             ; $63b1: $76
	ld h, [hl]                                       ; $63b2: $66
	ld h, l                                          ; $63b3: $65
	ld h, [hl]                                       ; $63b4: $66
	ld h, d                                          ; $63b5: $62
	ld [hl+], a                                      ; $63b6: $22
	push af                                          ; $63b7: $f5
	add b                                            ; $63b8: $80
	rst SubAFromDE                                          ; $63b9: $df
	rst $38                                          ; $63ba: $ff
	sbc [hl]                                         ; $63bb: $9e
	rst FarCall                                          ; $63bc: $f7
	call c, $93ff                                    ; $63bd: $dc $ff $93
	or a                                             ; $63c0: $b7
	rst $38                                          ; $63c1: $ff
	rst $38                                          ; $63c2: $ff
	pop af                                           ; $63c3: $f1
	pop af                                           ; $63c4: $f1
	rrca                                             ; $63c5: $0f
	rlca                                             ; $63c6: $07
	and [hl]                                         ; $63c7: $a6
	rst FarCall                                          ; $63c8: $f7
	rst AddAOntoHL                                          ; $63c9: $ef
	cp a                                             ; $63ca: $bf
	sbc e                                            ; $63cb: $9b
	ld a, e                                          ; $63cc: $7b
	db $f4                                           ; $63cd: $f4
	jp c, $99ff                                      ; $63ce: $da $ff $99

	dec e                                            ; $63d1: $1d
	ld sp, $f9ff                                     ; $63d2: $31 $ff $f9
	ccf                                              ; $63d5: $3f
	rst SubAFromDE                                          ; $63d6: $df
	sbc $ff                                          ; $63d7: $de $ff
	sub l                                            ; $63d9: $95
	ei                                               ; $63da: $fb
	rst $38                                          ; $63db: $ff
	rst $38                                          ; $63dc: $ff
	ld hl, sp-$0f                                    ; $63dd: $f8 $f1
	rla                                              ; $63df: $17
	dec de                                           ; $63e0: $1b
	ld [hl], e                                       ; $63e1: $73
	adc a                                            ; $63e2: $8f
	cp $7b                                           ; $63e3: $fe $7b
	rst GetHLinHL                                          ; $63e5: $cf
	add b                                            ; $63e6: $80
	or a                                             ; $63e7: $b7
	ld a, a                                          ; $63e8: $7f
	rst $38                                          ; $63e9: $ff
	rst $38                                          ; $63ea: $ff
	rst GetHLinHL                                          ; $63eb: $cf
	add a                                            ; $63ec: $87
	ld c, a                                          ; $63ed: $4f
	rst $38                                          ; $63ee: $ff
	cp $f4                                           ; $63ef: $fe $f4
	db $f4                                           ; $63f1: $f4
	daa                                              ; $63f2: $27
	rst $38                                          ; $63f3: $ff
	ld a, a                                          ; $63f4: $7f
	rst $38                                          ; $63f5: $ff
	rst FarCall                                          ; $63f6: $f7
	rst FarCall                                          ; $63f7: $f7
	rst $38                                          ; $63f8: $ff
	sbc a                                            ; $63f9: $9f
	rra                                              ; $63fa: $1f
	pop hl                                           ; $63fb: $e1
	ld sp, hl                                        ; $63fc: $f9
	cp $1c                                           ; $63fd: $fe $1c
	inc a                                            ; $63ff: $3c
	dec a                                            ; $6400: $3d
	ld [hl], a                                       ; $6401: $77
	rst $38                                          ; $6402: $ff
	ld a, [$f5fa]                                    ; $6403: $fa $fa $f5
	sbc d                                            ; $6406: $9a
	or $d3                                           ; $6407: $f6 $d3
	pop de                                           ; $6409: $d1
	jp z, Jump_027_7bda                              ; $640a: $ca $da $7b

	call $f980                                       ; $640d: $cd $80 $f9
	db $fd                                           ; $6410: $fd
	rst $38                                          ; $6411: $ff
	rst $38                                          ; $6412: $ff
	rst AddAOntoHL                                          ; $6413: $ef
	sub $68                                          ; $6414: $d6 $68
	ld d, c                                          ; $6416: $51
	and d                                            ; $6417: $a2
	inc c                                            ; $6418: $0c
	jr jr_027_642c                                   ; $6419: $18 $11

	ld hl, $b639                                     ; $641b: $21 $39 $b6
	db $ec                                           ; $641e: $ec
	reti                                             ; $641f: $d9


	di                                               ; $6420: $f3
	rst SubAFromBC                                          ; $6421: $e7
	xor $de                                          ; $6422: $ee $de
	db $10                                           ; $6424: $10
	ld c, b                                          ; $6425: $48
	and d                                            ; $6426: $a2
	ld c, e                                          ; $6427: $4b
	xor l                                            ; $6428: $ad
	ld d, h                                          ; $6429: $54
	xor d                                            ; $642a: $aa
	ld e, e                                          ; $642b: $5b

jr_027_642c:
	adc a                                            ; $642c: $8f
	jr nc, jr_027_63af                               ; $642d: $30 $80

	ld b, c                                          ; $642f: $41
	add a                                            ; $6430: $87
	ld e, $38                                        ; $6431: $1e $38
	ld [hl], c                                       ; $6433: $71
	rst SubAFromBC                                          ; $6434: $e7
	ld h, d                                          ; $6435: $62
	call c, Call_027_4cff                            ; $6436: $dc $ff $4c
	scf                                              ; $6439: $37
	cp c                                             ; $643a: $b9
	jp $fc49                                         ; $643b: $c3 $49 $fc


	ccf                                              ; $643e: $3f
	rst $38                                          ; $643f: $ff
	add e                                            ; $6440: $83
	rrca                                             ; $6441: $0f
	ld a, [hl]                                       ; $6442: $7e
	ldh a, [hDisp0_OBP1]                                     ; $6443: $f0 $87
	dec a                                            ; $6445: $3d
	sub a                                            ; $6446: $97
	dec hl                                           ; $6447: $2b
	rst JumpTable                                          ; $6448: $c7
	push hl                                          ; $6449: $e5
	db $d3                                           ; $644a: $d3
	dec e                                            ; $644b: $1d
	rst $38                                          ; $644c: $ff
	ld a, a                                          ; $644d: $7f
	adc [hl]                                         ; $644e: $8e
	rrca                                             ; $644f: $0f
	rst JumpTable                                          ; $6450: $c7
	di                                               ; $6451: $f3
	ei                                               ; $6452: $fb
	dec a                                            ; $6453: $3d
	rst $38                                          ; $6454: $ff
	rst $38                                          ; $6455: $ff
	ld d, l                                          ; $6456: $55
	ld [hl-], a                                      ; $6457: $32
	dec h                                            ; $6458: $25
	ld l, b                                          ; $6459: $68
	ld d, b                                          ; $645a: $50
	ld h, a                                          ; $645b: $67
	sbc l                                            ; $645c: $9d
	adc $bb                                          ; $645d: $ce $bb
	rst $38                                          ; $645f: $ff
	ld a, e                                          ; $6460: $7b
	add [hl]                                         ; $6461: $86
	ld a, e                                          ; $6462: $7b
	xor e                                            ; $6463: $ab
	sub h                                            ; $6464: $94
	ld h, d                                          ; $6465: $62
	add b                                            ; $6466: $80
	rst $38                                          ; $6467: $ff
	inc bc                                           ; $6468: $03
	ld a, h                                          ; $6469: $7c
	sbc b                                            ; $646a: $98
	dec [hl]                                         ; $646b: $35
	sbc d                                            ; $646c: $9a
	add c                                            ; $646d: $81
	nop                                              ; $646e: $00
	nop                                              ; $646f: $00
	sbc $ff                                          ; $6470: $de $ff
	adc l                                            ; $6472: $8d
	adc $e7                                          ; $6473: $ce $e7
	rst $38                                          ; $6475: $ff
	rra                                              ; $6476: $1f
	rst GetHLinHL                                          ; $6477: $cf
	rst $38                                          ; $6478: $ff
	rst GetHLinHL                                          ; $6479: $cf
	cpl                                              ; $647a: $2f
	sub a                                            ; $647b: $97
	rst SubAFromDE                                          ; $647c: $df
	rst $38                                          ; $647d: $ff
	nop                                              ; $647e: $00
	ccf                                              ; $647f: $3f
	rst $38                                          ; $6480: $ff
	ccf                                              ; $6481: $3f
	rst SubAFromDE                                          ; $6482: $df
	ld l, a                                          ; $6483: $6f
	daa                                              ; $6484: $27
	jp c, $dfff                                      ; $6485: $da $ff $df

	ld a, a                                          ; $6488: $7f
	sub [hl]                                         ; $6489: $96
	sbc e                                            ; $648a: $9b
	di                                               ; $648b: $f3
	ld sp, hl                                        ; $648c: $f9
	pop de                                           ; $648d: $d1
	dec de                                           ; $648e: $1b
	sbc h                                            ; $648f: $9c
	sbc [hl]                                         ; $6490: $9e
	rst SubAFromDE                                          ; $6491: $df
	sbc a                                            ; $6492: $9f
	ld h, a                                          ; $6493: $67
	xor $94                                          ; $6494: $ee $94
	inc a                                            ; $6496: $3c
	ld b, h                                          ; $6497: $44
	adc l                                            ; $6498: $8d
	sub b                                            ; $6499: $90
	ld h, b                                          ; $649a: $60
	ld h, l                                          ; $649b: $65
	ld e, $e7                                        ; $649c: $1e $e7
	db $fc                                           ; $649e: $fc
	rst $38                                          ; $649f: $ff
	rst AddAOntoHL                                          ; $64a0: $ef
	ld a, e                                          ; $64a1: $7b
	inc c                                            ; $64a2: $0c
	ld a, a                                          ; $64a3: $7f
	ld hl, sp-$67                                    ; $64a4: $f8 $99
	adc h                                            ; $64a6: $8c
	add e                                            ; $64a7: $83
	sbc a                                            ; $64a8: $9f
	add hl, de                                       ; $64a9: $19
	rst SubAFromDE                                          ; $64aa: $df
	jr c, @+$0d                                      ; $64ab: $38 $0b

	nop                                              ; $64ad: $00
	rst SubAFromDE                                          ; $64ae: $df
	ld [hl+], a                                      ; $64af: $22
	sbc [hl]                                         ; $64b0: $9e
	ld h, $de                                        ; $64b1: $26 $de
	ld h, [hl]                                       ; $64b3: $66
	sbc l                                            ; $64b4: $9d
	ld h, d                                          ; $64b5: $62
	ld [hl+], a                                      ; $64b6: $22
	xor $80                                          ; $64b7: $ee $80
	reti                                             ; $64b9: $d9


	rst $38                                          ; $64ba: $ff
	adc c                                            ; $64bb: $89
	ld c, c                                          ; $64bc: $49
	ld hl, sp-$08                                    ; $64bd: $f8 $f8
	or b                                             ; $64bf: $b0
	ld [$3bdb], sp                                   ; $64c0: $08 $db $3b
	inc hl                                           ; $64c3: $23
	rst $38                                          ; $64c4: $ff
	ei                                               ; $64c5: $fb
	di                                               ; $64c6: $f3
	rst $38                                          ; $64c7: $ff
	rst $38                                          ; $64c8: $ff
	ccf                                              ; $64c9: $3f
	sbc a                                            ; $64ca: $9f
	rst $38                                          ; $64cb: $ff
	db $fd                                           ; $64cc: $fd
	ld a, $7c                                        ; $64cd: $3e $7c
	ld hl, sp-$33                                    ; $64cf: $f8 $cd
	rst GetHLinHL                                          ; $64d1: $cf
	jp c, $98ff                                      ; $64d2: $da $ff $98

	cp a                                             ; $64d5: $bf
	push hl                                          ; $64d6: $e5
	rst $38                                          ; $64d7: $ff
	rra                                              ; $64d8: $1f
	ccf                                              ; $64d9: $3f
	rra                                              ; $64da: $1f
	ccf                                              ; $64db: $3f
	db $dd                                           ; $64dc: $dd
	rst $38                                          ; $64dd: $ff
	sub c                                            ; $64de: $91
	rst SubAFromDE                                          ; $64df: $df
	ld e, a                                          ; $64e0: $5f
	rst $38                                          ; $64e1: $ff
	rst $38                                          ; $64e2: $ff
	rst AddAOntoHL                                          ; $64e3: $ef
	rst SubAFromBC                                          ; $64e4: $e7
	rst AddAOntoHL                                          ; $64e5: $ef
	cp $f7                                           ; $64e6: $fe $f7
	db $fc                                           ; $64e8: $fc
	db $fc                                           ; $64e9: $fc
	sub e                                            ; $64ea: $93
	sub c                                            ; $64eb: $91
	ld hl, sp-$25                                    ; $64ec: $f8 $db
	rst $38                                          ; $64ee: $ff
	sbc [hl]                                         ; $64ef: $9e
	db $fd                                           ; $64f0: $fd
	sbc $ff                                          ; $64f1: $de $ff
	add b                                            ; $64f3: $80
	rra                                              ; $64f4: $1f
	ld h, e                                          ; $64f5: $63
	ld h, c                                          ; $64f6: $61
	pop af                                           ; $64f7: $f1
	di                                               ; $64f8: $f3
	rlca                                             ; $64f9: $07
	inc bc                                           ; $64fa: $03
	ld de, $caa9                                     ; $64fb: $11 $a9 $ca
	jp nc, $abba                                     ; $64fe: $d2 $ba $ab

	xor d                                            ; $6501: $aa
	xor l                                            ; $6502: $ad
	db $ed                                           ; $6503: $ed
	rst SubAFromHL                                          ; $6504: $d7
	or a                                             ; $6505: $b7
	xor a                                            ; $6506: $af
	rst AddAOntoHL                                          ; $6507: $ef
	rst $38                                          ; $6508: $ff
	rst $38                                          ; $6509: $ff
	cp $fe                                           ; $650a: $fe $fe
	inc sp                                           ; $650c: $33
	ld l, l                                          ; $650d: $6d
	di                                               ; $650e: $f3
	ret                                              ; $650f: $c9


	ld h, l                                          ; $6510: $65
	or d                                             ; $6511: $b2
	ld c, l                                          ; $6512: $4d
	add b                                            ; $6513: $80
	xor e                                            ; $6514: $ab
	rst $38                                          ; $6515: $ff
	rst $38                                          ; $6516: $ff
	db $fc                                           ; $6517: $fc
	cp $bf                                           ; $6518: $fe $bf
	rst SubAFromDE                                          ; $651a: $df
	cp $7c                                           ; $651b: $fe $7c
	and l                                            ; $651d: $a5
	sub d                                            ; $651e: $92
	rst GetHLinHL                                          ; $651f: $cf
	or $90                                           ; $6520: $f6 $90
	call z, $87a3                                    ; $6522: $cc $a3 $87
	cp $ff                                           ; $6525: $fe $ff
	rst $38                                          ; $6527: $ff
	ld a, b                                          ; $6528: $78
	ldh [$03], a                                     ; $6529: $e0 $03
	inc e                                            ; $652b: $1c
	ld h, e                                          ; $652c: $63
	dec h                                            ; $652d: $25
	ld e, d                                          ; $652e: $5a
	ld a, [$0437]                                    ; $652f: $fa $37 $04
	rlca                                             ; $6532: $07
	add b                                            ; $6533: $80
	ret nz                                           ; $6534: $c0

	rst $38                                          ; $6535: $ff
	ld c, [hl]                                       ; $6536: $4e
	daa                                              ; $6537: $27
	rst $38                                          ; $6538: $ff
	rrca                                             ; $6539: $0f
	inc bc                                           ; $653a: $03
	ld hl, sp+$00                                    ; $653b: $f8 $00
	rst $38                                          ; $653d: $ff
	ld d, l                                          ; $653e: $55
	and l                                            ; $653f: $a5
	ld a, d                                          ; $6540: $7a
	ld [hl-], a                                      ; $6541: $32
	rst AddAOntoHL                                          ; $6542: $ef
	sbc e                                            ; $6543: $9b
	ld l, e                                          ; $6544: $6b

Call_027_6545:
	push de                                          ; $6545: $d5
	ld h, a                                          ; $6546: $67
	scf                                              ; $6547: $37
	sub e                                            ; $6548: $93
	db $db                                           ; $6549: $db
	ld sp, hl                                        ; $654a: $f9
	ld a, l                                          ; $654b: $7d
	dec e                                            ; $654c: $1d
	rst AddAOntoHL                                          ; $654d: $ef
	halt                                             ; $654e: $76
	ld a, c                                          ; $654f: $79
	ld [$4ba5], a                                    ; $6550: $ea $a5 $4b
	sub h                                            ; $6553: $94
	ld [de], a                                       ; $6554: $12
	dec h                                            ; $6555: $25
	ld a, [hl+]                                      ; $6556: $2a
	xor a                                            ; $6557: $af
	cp h                                             ; $6558: $bc
	pop af                                           ; $6559: $f1
	jp $8f87                                         ; $655a: $c3 $87 $8f


	sbc [hl]                                         ; $655d: $9e
	sbc l                                            ; $655e: $9d
	ld a, e                                          ; $655f: $7b
	ld [hl], e                                       ; $6560: $73
	ld a, a                                          ; $6561: $7f
	rst SubAFromHL                                          ; $6562: $d7
	adc [hl]                                         ; $6563: $8e
	adc e                                            ; $6564: $8b
	adc l                                            ; $6565: $8d
	rst $38                                          ; $6566: $ff
	ccf                                              ; $6567: $3f
	ld a, a                                          ; $6568: $7f
	rst $38                                          ; $6569: $ff
	rst $38                                          ; $656a: $ff
	sbc a                                            ; $656b: $9f
	rlca                                             ; $656c: $07
	ld [hl], e                                       ; $656d: $73
	rst $38                                          ; $656e: $ff
	call z, $fefe                                    ; $656f: $cc $fe $fe
	rst FarCall                                          ; $6572: $f7
	rst SubAFromHL                                          ; $6573: $d7
	cp a                                             ; $6574: $bf
	ld [hl], a                                       ; $6575: $77
	and d                                            ; $6576: $a2
	ld a, e                                          ; $6577: $7b
	ld l, b                                          ; $6578: $68
	sub h                                            ; $6579: $94
	rst JumpTable                                          ; $657a: $c7
	rlca                                             ; $657b: $07
	rrca                                             ; $657c: $0f
	adc $3f                                          ; $657d: $ce $3f
	ldh [$e1], a                                     ; $657f: $e0 $e1
	or $fe                                           ; $6581: $f6 $fe
	cp $ff                                           ; $6583: $fe $ff
	ld a, e                                          ; $6585: $7b
	ld hl, sp-$6e                                    ; $6586: $f8 $92
	pop af                                           ; $6588: $f1
	cp $c2                                           ; $6589: $fe $c2
	add c                                            ; $658b: $81
	ld bc, $0f70                                     ; $658c: $01 $70 $0f
	nop                                              ; $658f: $00
	ldh [rAUD3LEVEL], a                              ; $6590: $e0 $1c
	jp c, $f63f                                      ; $6592: $da $3f $f6

	ld l, a                                          ; $6595: $6f
	ld hl, sp-$6c                                    ; $6596: $f8 $94
	rst $38                                          ; $6598: $ff
	or $73                                           ; $6599: $f6 $73
	rra                                              ; $659b: $1f
	rlca                                             ; $659c: $07
	add hl, de                                       ; $659d: $19
	pop bc                                           ; $659e: $c1
	rlca                                             ; $659f: $07
	dec de                                           ; $65a0: $1b
	jr z, @+$7f                                      ; $65a1: $28 $7d

	ld l, e                                          ; $65a3: $6b
	ld hl, sp+$0a                                    ; $65a4: $f8 $0a
	nop                                              ; $65a6: $00
	rst SubAFromDE                                          ; $65a7: $df
	ld [hl+], a                                      ; $65a8: $22
	sbc [hl]                                         ; $65a9: $9e
	ld h, $de                                        ; $65aa: $26 $de
	ld h, [hl]                                       ; $65ac: $66
	rst SubAFromDE                                          ; $65ad: $df
	ld [hl+], a                                      ; $65ae: $22
	rst AddAOntoHL                                          ; $65af: $ef
	add b                                            ; $65b0: $80
	add b                                            ; $65b1: $80
	adc $dc                                          ; $65b2: $ce $dc
	call c, $ff7e                                    ; $65b4: $dc $7e $ff
	rst FarCall                                          ; $65b7: $f7
	di                                               ; $65b8: $f3
	rst $38                                          ; $65b9: $ff
	ccf                                              ; $65ba: $3f
	ccf                                              ; $65bb: $3f
	inc sp                                           ; $65bc: $33
	add c                                            ; $65bd: $81
	ld h, c                                          ; $65be: $61
	ld a, b                                          ; $65bf: $78
	cp $30                                           ; $65c0: $fe $30
	rrca                                             ; $65c2: $0f
	ccf                                              ; $65c3: $3f
	ld a, a                                          ; $65c4: $7f
	db $e3                                           ; $65c5: $e3
	rst SubAFromBC                                          ; $65c6: $e7
	rst GetHLinHL                                          ; $65c7: $cf
	rst AddAOntoHL                                          ; $65c8: $ef
	rst $38                                          ; $65c9: $ff
	rst $38                                          ; $65ca: $ff
	sbc $9e                                          ; $65cb: $de $9e
	ccf                                              ; $65cd: $3f
	ccf                                              ; $65ce: $3f
	ld a, h                                          ; $65cf: $7c
	ld a, b                                          ; $65d0: $78
	sbc [hl]                                         ; $65d1: $9e
	ld a, b                                          ; $65d2: $78
	sbc $ff                                          ; $65d3: $de $ff
	ld a, a                                          ; $65d5: $7f
	db $e3                                           ; $65d6: $e3
	sbc c                                            ; $65d7: $99
	ei                                               ; $65d8: $fb
	db $eb                                           ; $65d9: $eb
	rst $38                                          ; $65da: $ff
	pop af                                           ; $65db: $f1
	inc sp                                           ; $65dc: $33
	ld [hl], a                                       ; $65dd: $77
	sbc $ff                                          ; $65de: $de $ff
	sbc e                                            ; $65e0: $9b
	ld e, $0f                                        ; $65e1: $1e $0f
	rst $38                                          ; $65e3: $ff
	sbc a                                            ; $65e4: $9f
	db $db                                           ; $65e5: $db
	rst $38                                          ; $65e6: $ff
	sub a                                            ; $65e7: $97
	rst SubAFromBC                                          ; $65e8: $e7
	db $fc                                           ; $65e9: $fc
	inc l                                            ; $65ea: $2c
	ld b, $22                                        ; $65eb: $06 $22
	jp $c084                                         ; $65ed: $c3 $84 $c0


	ld a, e                                          ; $65f0: $7b
	pop hl                                           ; $65f1: $e1
	sbc l                                            ; $65f2: $9d
	ld hl, sp-$04                                    ; $65f3: $f8 $fc
	ld [hl], a                                       ; $65f5: $77
	ldh a, [$df]                                     ; $65f6: $f0 $df
	adc a                                            ; $65f8: $8f
	sbc d                                            ; $65f9: $9a
	sbc a                                            ; $65fa: $9f
	ld b, e                                          ; $65fb: $43
	ld [hl+], a                                      ; $65fc: $22
	rst $38                                          ; $65fd: $ff
	ld c, $dd                                        ; $65fe: $0e $dd
	rst $38                                          ; $6600: $ff
	sbc e                                            ; $6601: $9b
	ld hl, sp-$15                                    ; $6602: $f8 $eb
	db $d3                                           ; $6604: $d3
	db $e4                                           ; $6605: $e4
	call c, $92ff                                    ; $6606: $dc $ff $92
	rst FarCall                                          ; $6609: $f7
	db $ec                                           ; $660a: $ec
	db $db                                           ; $660b: $db
	ld a, [$dae5]                                    ; $660c: $fa $e5 $da
	call c, $fc6b                                    ; $660f: $dc $6b $fc
	sub e                                            ; $6612: $93
	db $ec                                           ; $6613: $ec
	push hl                                          ; $6614: $e5
	db $db                                           ; $6615: $db
	db $dd                                           ; $6616: $dd
	rst $38                                          ; $6617: $ff
	add b                                            ; $6618: $80
	ld a, a                                          ; $6619: $7f
	rst $38                                          ; $661a: $ff
	db $db                                           ; $661b: $db
	dec l                                            ; $661c: $2d
	scf                                              ; $661d: $37
	jp Jump_027_671d                                 ; $661e: $c3 $1d $67


	add e                                            ; $6621: $83
	ld a, [hl]                                       ; $6622: $7e
	rst SubAFromBC                                          ; $6623: $e7
	sbc $f8                                          ; $6624: $de $f8
	rst $38                                          ; $6626: $ff
	cp $f8                                           ; $6627: $fe $f8
	rst $38                                          ; $6629: $ff
	db $fc                                           ; $662a: $fc
	ld b, b                                          ; $662b: $40
	cpl                                              ; $662c: $2f
	ld [hl], e                                       ; $662d: $73
	and b                                            ; $662e: $a0
	rla                                              ; $662f: $17
	ld a, l                                          ; $6630: $7d
	or a                                             ; $6631: $b7
	ld c, d                                          ; $6632: $4a
	add b                                            ; $6633: $80
	rra                                              ; $6634: $1f
	db $fc                                           ; $6635: $fc
	ret nz                                           ; $6636: $c0

	rrca                                             ; $6637: $0f
	add l                                            ; $6638: $85
	cp $fb                                           ; $6639: $fe $fb
	sbc h                                            ; $663b: $9c
	inc sp                                           ; $663c: $33
	rrca                                             ; $663d: $0f
	dec c                                            ; $663e: $0d
	ld h, e                                          ; $663f: $63
	cp $ef                                           ; $6640: $fe $ef
	ld d, l                                          ; $6642: $55
	xor d                                            ; $6643: $aa
	dec c                                            ; $6644: $0d
	pop af                                           ; $6645: $f1
	inc bc                                           ; $6646: $03
	rra                                              ; $6647: $1f
	rst $38                                          ; $6648: $ff
	ld a, a                                          ; $6649: $7f
	sbc [hl]                                         ; $664a: $9e
	rst GetHLinHL                                          ; $664b: $cf
	ld a, a                                          ; $664c: $7f
	sbc l                                            ; $664d: $9d
	ld e, e                                          ; $664e: $5b
	rst SubAFromBC                                          ; $664f: $e7
	rst SubAFromDE                                          ; $6650: $df
	db $eb                                           ; $6651: $eb
	cp e                                             ; $6652: $bb
	ld [hl], e                                       ; $6653: $73
	jp nz, $3f9b                                     ; $6654: $c2 $9b $3f

	rst $38                                          ; $6657: $ff
	rst SubAFromDE                                          ; $6658: $df
	ld l, a                                          ; $6659: $6f
	call c, $9cff                                    ; $665a: $dc $ff $9c
	db $fc                                           ; $665d: $fc
	rst AddAOntoHL                                          ; $665e: $ef
	cp a                                             ; $665f: $bf
	db $db                                           ; $6660: $db
	rst $38                                          ; $6661: $ff
	sub l                                            ; $6662: $95
	di                                               ; $6663: $f3
	rst GetHLinHL                                          ; $6664: $cf
	rst $38                                          ; $6665: $ff
	cp $e3                                           ; $6666: $fe $e3
	pop af                                           ; $6668: $f1
	cp $ef                                           ; $6669: $fe $ef
	pop af                                           ; $666b: $f1
	sbc $6b                                          ; $666c: $de $6b
	ld hl, sp-$69                                    ; $666e: $f8 $97
	cp $8e                                           ; $6670: $fe $8e
	rst AddAOntoHL                                          ; $6672: $ef
	ld a, [hl-]                                      ; $6673: $3a
	cp $0d                                           ; $6674: $fe $0d
	adc a                                            ; $6676: $8f
	sbc b                                            ; $6677: $98
	ld a, e                                          ; $6678: $7b
	ret c                                            ; $6679: $d8

	ld a, a                                          ; $667a: $7f
	jp nc, $f877                                     ; $667b: $d2 $77 $f8

	sub e                                            ; $667e: $93
	sbc a                                            ; $667f: $9f
	cp a                                             ; $6680: $bf
	cp $7f                                           ; $6681: $fe $7f
	rst $38                                          ; $6683: $ff
	di                                               ; $6684: $f3
	ld a, a                                          ; $6685: $7f
	cp e                                             ; $6686: $bb
	ld hl, sp-$08                                    ; $6687: $f8 $f8
	ld sp, hl                                        ; $6689: $f9
	db $fd                                           ; $668a: $fd
	ld a, e                                          ; $668b: $7b
	add b                                            ; $668c: $80
	sbc l                                            ; $668d: $9d
	cp e                                             ; $668e: $bb
	pop hl                                           ; $668f: $e1
	ld [hl], a                                       ; $6690: $77
	rst SubAFromBC                                          ; $6691: $e7
	rst SubAFromDE                                          ; $6692: $df
	rst $38                                          ; $6693: $ff
	sub [hl]                                         ; $6694: $96
	dec sp                                           ; $6695: $3b
	ld a, a                                          ; $6696: $7f
	ei                                               ; $6697: $fb
	pop af                                           ; $6698: $f1
	ldh a, [$f3]                                     ; $6699: $f0 $f3
	rst SubAFromHL                                          ; $669b: $d7
	inc e                                            ; $669c: $1c
	db $fc                                           ; $669d: $fc
	ld a, [bc]                                       ; $669e: $0a
	nop                                              ; $669f: $00
	rst SubAFromDE                                          ; $66a0: $df
	ld [hl+], a                                      ; $66a1: $22
	sbc [hl]                                         ; $66a2: $9e
	ld h, $de                                        ; $66a3: $26 $de
	ld h, [hl]                                       ; $66a5: $66
	rst SubAFromDE                                          ; $66a6: $df
	ld [hl+], a                                      ; $66a7: $22
	halt                                             ; $66a8: $76
	ld b, $97                                        ; $66a9: $06 $97
	adc b                                            ; $66ab: $88
	ld [hl], a                                       ; $66ac: $77
	ld d, l                                          ; $66ad: $55
	xor d                                            ; $66ae: $aa
	ld [hl+], a                                      ; $66af: $22
	db $dd                                           ; $66b0: $dd
	ld d, l                                          ; $66b1: $55
	xor d                                            ; $66b2: $aa
	daa                                              ; $66b3: $27
	ld hl, sp-$69                                    ; $66b4: $f8 $97
	adc c                                            ; $66b6: $89
	ld [hl], a                                       ; $66b7: $77
	ld d, l                                          ; $66b8: $55
	xor e                                            ; $66b9: $ab
	inc hl                                           ; $66ba: $23
	db $dd                                           ; $66bb: $dd
	ld d, l                                          ; $66bc: $55
	xor e                                            ; $66bd: $ab
	ld h, a                                          ; $66be: $67
	ldh a, [$9d]                                     ; $66bf: $f0 $9d
	rlca                                             ; $66c1: $07
	ld hl, sp+$6f                                    ; $66c2: $f8 $6f
	cp $9e                                           ; $66c4: $fe $9e
	add a                                            ; $66c6: $87
	ld a, e                                          ; $66c7: $7b
	cp $88                                           ; $66c8: $fe $88
	add e                                            ; $66ca: $83
	db $fc                                           ; $66cb: $fc
	add e                                            ; $66cc: $83
	db $fc                                           ; $66cd: $fc
	cp d                                             ; $66ce: $ba
	ld a, h                                          ; $66cf: $7c
	rst SubAFromDE                                          ; $66d0: $df
	inc a                                            ; $66d1: $3c
	rst AddAOntoHL                                          ; $66d2: $ef
	inc e                                            ; $66d3: $1c
	push af                                          ; $66d4: $f5
	ld c, $f3                                        ; $66d5: $0e $f3
	ld c, $fb                                        ; $66d7: $0e $fb
	ld b, $fa                                        ; $66d9: $06 $fa
	rlca                                             ; $66db: $07
	ld sp, hl                                        ; $66dc: $f9
	rlca                                             ; $66dd: $07
	ld a, a                                          ; $66de: $7f
	nop                                              ; $66df: $00
	ccf                                              ; $66e0: $3f
	ld [hl], e                                       ; $66e1: $73
	cp $9e                                           ; $66e2: $fe $9e
	sbc a                                            ; $66e4: $9f
	ld a, e                                          ; $66e5: $7b
	cp $9e                                           ; $66e6: $fe $9e
	ret nz                                           ; $66e8: $c0

	ld a, e                                          ; $66e9: $7b
	cp $9e                                           ; $66ea: $fe $9e
	rst $38                                          ; $66ec: $ff
	ld e, e                                          ; $66ed: $5b
	cp $fd                                           ; $66ee: $fe $fd
	add b                                            ; $66f0: $80
	pop af                                           ; $66f1: $f1
	ld e, $f1                                        ; $66f2: $1e $f1
	ld e, $e9                                        ; $66f4: $1e $e9
	ld e, $f8                                        ; $66f6: $1e $f8
	rrca                                             ; $66f8: $0f
	db $f4                                           ; $66f9: $f4
	rrca                                             ; $66fa: $0f
	db $fc                                           ; $66fb: $fc
	rlca                                             ; $66fc: $07
	ld a, [bc]                                       ; $66fd: $0a

jr_027_66fe:
	rlca                                             ; $66fe: $07
	ld [bc], a                                       ; $66ff: $02
	inc bc                                           ; $6700: $03
	cp $03                                           ; $6701: $fe $03
	ld a, [$fd07]                                    ; $6703: $fa $07 $fd
	ld b, $f7                                        ; $6706: $06 $f7
	inc c                                            ; $6708: $0c
	ei                                               ; $6709: $fb
	inc c                                            ; $670a: $0c
	rst AddAOntoHL                                          ; $670b: $ef
	jr jr_027_66fe                                   ; $670c: $18 $f0

	jr jr_027_6760                                   ; $670e: $18 $50

	sbc [hl]                                         ; $6710: $9e
	or b                                             ; $6711: $b0
	ld b, a                                          ; $6712: $47
	ret nc                                           ; $6713: $d0

	ld e, a                                          ; $6714: $5f
	ldh a, [c]                                       ; $6715: $f2
	sbc h                                            ; $6716: $9c
	cp $00                                           ; $6717: $fe $00
	ld c, $fe                                        ; $6719: $0e $fe
	sub h                                            ; $671b: $94
	sbc [hl]                                         ; $671c: $9e

Jump_027_671d:
	rlca                                             ; $671d: $07
	sub h                                            ; $671e: $94
	rrca                                             ; $671f: $0f
	jr c, @+$11                                      ; $6720: $38 $0f

	add hl, sp                                       ; $6722: $39
	ld c, $29                                        ; $6723: $0e $29
	ld e, $71                                        ; $6725: $1e $71
	ld a, e                                          ; $6727: $7b
	cp $95                                           ; $6728: $fe $95
	ld d, c                                          ; $672a: $51
	ld a, $7e                                        ; $672b: $3e $7e
	add c                                            ; $672d: $81
	cp $01                                           ; $672e: $fe $01

jr_027_6730:
	cp $01                                           ; $6730: $fe $01
	db $fc                                           ; $6732: $fc
	inc bc                                           ; $6733: $03
	ld h, a                                          ; $6734: $67
	cp $97                                           ; $6735: $fe $97
	jr jr_027_6730                                   ; $6737: $18 $f7

	dec d                                            ; $6739: $15
	ld a, [$fd12]                                    ; $673a: $fa $12 $fd
	dec d                                            ; $673d: $15
	ld a, [$f86f]                                    ; $673e: $fa $6f $f8
	sbc l                                            ; $6741: $9d
	dec [hl]                                         ; $6742: $35
	ld [$2007], a                                    ; $6743: $ea $07 $20
	inc bc                                           ; $6746: $03
	ld hl, sp+$4b                                    ; $6747: $f8 $4b
	ld hl, sp+$7f                                    ; $6749: $f8 $7f
	sub c                                            ; $674b: $91
	ld h, a                                          ; $674c: $67
	cp $9d                                           ; $674d: $fe $9d
	ld b, e                                          ; $674f: $43
	db $fc                                           ; $6750: $fc
	ld [hl], a                                       ; $6751: $77
	cp $7f                                           ; $6752: $fe $7f
	ld c, $9e                                        ; $6754: $0e $9e
	db $fd                                           ; $6756: $fd
	ld [hl], e                                       ; $6757: $73
	adc b                                            ; $6758: $88
	halt                                             ; $6759: $76
	db $eb                                           ; $675a: $eb
	adc e                                            ; $675b: $8b
	ldh a, [rIF]                                     ; $675c: $f0 $0f
	pop af                                           ; $675e: $f1
	rrca                                             ; $675f: $0f

jr_027_6760:
	rst $38                                          ; $6760: $ff
	nop                                              ; $6761: $00
	ld a, a                                          ; $6762: $7f
	add b                                            ; $6763: $80
	rst $38                                          ; $6764: $ff
	rst $38                                          ; $6765: $ff
	jr c, @+$01                                      ; $6766: $38 $ff

	inc sp                                           ; $6768: $33
	rst $38                                          ; $6769: $ff
	dec a                                            ; $676a: $3d
	cp $14                                           ; $676b: $fe $14
	ld hl, sp+$10                                    ; $676d: $f8 $10
	ldh a, [$73]                                     ; $676f: $f0 $73
	ld b, h                                          ; $6771: $44
	sbc e                                            ; $6772: $9b
	rst $38                                          ; $6773: $ff
	ld d, l                                          ; $6774: $55
	ret nz                                           ; $6775: $c0

	rst $38                                          ; $6776: $ff
	ld l, a                                          ; $6777: $6f
	ld sp, $0080                                     ; $6778: $31 $80 $00

jr_027_677b:
	ldh a, [c]                                       ; $677b: $f2
	inc bc                                           ; $677c: $03
	db $fd                                           ; $677d: $fd
	inc bc                                           ; $677e: $03
	rst $38                                          ; $677f: $ff
	pop hl                                           ; $6780: $e1
	ld a, h                                          ; $6781: $7c
	ccf                                              ; $6782: $3f
	rst AddAOntoHL                                          ; $6783: $ef
	rst JumpTable                                          ; $6784: $c7
	cp d                                             ; $6785: $ba
	ld [hl], c                                       ; $6786: $71
	dec a                                            ; $6787: $3d
	inc e                                            ; $6788: $1c
	rrca                                             ; $6789: $0f
	rlca                                             ; $678a: $07
	ld l, a                                          ; $678b: $6f
	or b                                             ; $678c: $b0
	ld a, a                                          ; $678d: $7f
	and b                                            ; $678e: $a0
	ld [hl], a                                       ; $678f: $77
	rst GetHLinHL                                          ; $6790: $cf
	sbc d                                            ; $6791: $9a
	ld hl, sp-$0b                                    ; $6792: $f8 $f5
	pop af                                           ; $6794: $f1
	sbc $e7                                          ; $6795: $de $e7
	ld a, [hl]                                       ; $6797: $7e
	call c, $fc9d                                    ; $6798: $dc $9d $fc
	ld hl, sp+$6f                                    ; $679b: $f8 $6f
	ret nc                                           ; $679d: $d0

	sbc d                                            ; $679e: $9a
	cp a                                             ; $679f: $bf
	rra                                              ; $67a0: $1f
	ldh a, [$e0]                                     ; $67a1: $f0 $e0
	add b                                            ; $67a3: $80
	db $fc                                           ; $67a4: $fc
	sbc [hl]                                         ; $67a5: $9e
	ldh a, [$7b]                                     ; $67a6: $f0 $7b
	ldh a, [$7f]                                     ; $67a8: $f0 $7f
	cp e                                             ; $67aa: $bb
	sbc $ff                                          ; $67ab: $de $ff
	sbc l                                            ; $67ad: $9d
	ld a, a                                          ; $67ae: $7f
	rrca                                             ; $67af: $0f
	ld a, d                                          ; $67b0: $7a
	jp nc, $fe7f                                     ; $67b1: $d2 $7f $fe

	sub l                                            ; $67b4: $95
	db $e3                                           ; $67b5: $e3
	inc a                                            ; $67b6: $3c
	db $e3                                           ; $67b7: $e3
	inc a                                            ; $67b8: $3c
	inc hl                                           ; $67b9: $23
	db $fc                                           ; $67ba: $fc
	rst JumpTable                                          ; $67bb: $c7
	ld hl, sp-$61                                    ; $67bc: $f8 $9f
	ldh [rPCM34], a                                  ; $67be: $e0 $77
	sub $9c                                          ; $67c0: $d6 $9c
	rrca                                             ; $67c2: $0f
	ldh a, [$fe]                                     ; $67c3: $f0 $fe

jr_027_67c5:
	ld a, d                                          ; $67c5: $7a
	cp [hl]                                          ; $67c6: $be
	halt                                             ; $67c7: $76
	cp h                                             ; $67c8: $bc
	ld h, a                                          ; $67c9: $67
	cp $90                                           ; $67ca: $fe $90
	jr z, jr_027_67c5                                ; $67cc: $28 $f7

	dec [hl]                                         ; $67ce: $35
	ld [$fd22], a                                    ; $67cf: $ea $22 $fd
	ld d, l                                          ; $67d2: $55
	ld [$f748], a                                    ; $67d3: $ea $48 $f7
	ld d, l                                          ; $67d6: $55
	ld [$dd62], a                                    ; $67d7: $ea $62 $dd
	push de                                          ; $67da: $d5
	inc bc                                           ; $67db: $03
	jr nc, jr_027_677b                               ; $67dc: $30 $9d

	xor d                                            ; $67de: $aa
	ld d, l                                          ; $67df: $55
	inc bc                                           ; $67e0: $03
	db $fc                                           ; $67e1: $fc
	ld d, e                                          ; $67e2: $53
	db $fc                                           ; $67e3: $fc
	adc [hl]                                         ; $67e4: $8e
	xor e                                            ; $67e5: $ab
	ld a, h                                          ; $67e6: $7c
	ld l, e                                          ; $67e7: $6b
	cp h                                             ; $67e8: $bc
	xor e                                            ; $67e9: $ab
	ld a, h                                          ; $67ea: $7c
	ld e, e                                          ; $67eb: $5b
	cp h                                             ; $67ec: $bc
	cp c                                             ; $67ed: $b9
	ld e, [hl]                                       ; $67ee: $5e
	ld e, l                                          ; $67ef: $5d
	cp [hl]                                          ; $67f0: $be
	xor l                                            ; $67f1: $ad
	ld e, [hl]                                       ; $67f2: $5e
	ld e, h                                          ; $67f3: $5c
	xor a                                            ; $67f4: $af
	ld sp, hl                                        ; $67f5: $f9
	ld a, d                                          ; $67f6: $7a
	inc c                                            ; $67f7: $0c
	halt                                             ; $67f8: $76
	cp $7e                                           ; $67f9: $fe $7e
	ld a, h                                          ; $67fb: $7c
	ld l, [hl]                                       ; $67fc: $6e
	ld e, d                                          ; $67fd: $5a
	ld a, a                                          ; $67fe: $7f
	ld c, $8c                                        ; $67ff: $0e $8c
	sbc b                                            ; $6801: $98
	ldh a, [$9c]                                     ; $6802: $f0 $9c
	ldh a, [$da]                                     ; $6804: $f0 $da
	ld hl, sp-$03                                    ; $6806: $f8 $fd
	ld hl, sp+$7e                                    ; $6808: $f8 $7e
	ld hl, sp+$7d                                    ; $680a: $f8 $7d
	ld hl, sp+$3a                                    ; $680c: $f8 $3a
	ldh a, [rP1]                                     ; $680e: $f0 $00
	nop                                              ; $6810: $00
	ld [bc], a                                       ; $6811: $02
	nop                                              ; $6812: $00
	rra                                              ; $6813: $1f
	ld a, e                                          ; $6814: $7b
	db $fc                                           ; $6815: $fc
	ld sp, hl                                        ; $6816: $f9
	sub [hl]                                         ; $6817: $96
	ld d, [hl]                                       ; $6818: $56
	ld [bc], a                                       ; $6819: $02
	xor d                                            ; $681a: $aa
	ld [bc], a                                       ; $681b: $02
	halt                                             ; $681c: $76
	ld a, [$1eae]                                    ; $681d: $fa $ae $1e
	ld d, [hl]                                       ; $6820: $56
	sbc $02                                          ; $6821: $de $02
	ld a, a                                          ; $6823: $7f
	ld sp, $0683                                     ; $6824: $31 $83 $06
	ld [bc], a                                       ; $6827: $02
	ld b, b                                          ; $6828: $40
	ld c, b                                          ; $6829: $48
	ld c, d                                          ; $682a: $4a
	ld c, b                                          ; $682b: $48
	dec e                                            ; $682c: $1d
	ld c, b                                          ; $682d: $48
	ld l, $4f                                        ; $682e: $2e $4f
	dec e                                            ; $6830: $1d
	ld c, d                                          ; $6831: $4a
	xor d                                            ; $6832: $aa
	ld c, l                                          ; $6833: $4d
	dec e                                            ; $6834: $1d
	ld c, b                                          ; $6835: $48
	xor d                                            ; $6836: $aa
	ld c, b                                          ; $6837: $48
	nop                                              ; $6838: $00
	nop                                              ; $6839: $00
	ld a, [hl+]                                      ; $683a: $2a
	nop                                              ; $683b: $00
	ld d, l                                          ; $683c: $55
	nop                                              ; $683d: $00
	xor [hl]                                         ; $683e: $ae
	ld d, b                                          ; $683f: $50
	ld d, l                                          ; $6840: $55
	add b                                            ; $6841: $80
	ld l, a                                          ; $6842: $6f
	nop                                              ; $6843: $00
	ld [hl], a                                       ; $6844: $77
	inc c                                            ; $6845: $0c
	adc a                                            ; $6846: $8f
	ld a, [bc]                                       ; $6847: $0a
	inc bc                                           ; $6848: $03
	sub a                                            ; $6849: $97
	ld [bc], a                                       ; $684a: $02
	dec c                                            ; $684b: $0d
	ld b, $15                                        ; $684c: $06 $15
	ld b, $0d                                        ; $684e: $06 $0d
	ld b, $07                                        ; $6850: $06 $07
	inc b                                            ; $6852: $04
	rra                                              ; $6853: $1f
	ldh [$3f], a                                     ; $6854: $e0 $3f
	ret nz                                           ; $6856: $c0

	ld a, d                                          ; $6857: $7a
	sbc [hl]                                         ; $6858: $9e
	ld h, c                                          ; $6859: $61
	ld [$0c77], a                                    ; $685a: $ea $77 $0c
	sbc [hl]                                         ; $685d: $9e
	ei                                               ; $685e: $fb
	ld a, e                                          ; $685f: $7b
	cp $9d                                           ; $6860: $fe $9d
	di                                               ; $6862: $f3
	rrca                                             ; $6863: $0f
	ld l, a                                          ; $6864: $6f
	cp $99                                           ; $6865: $fe $99
	xor d                                            ; $6867: $aa
	push de                                          ; $6868: $d5
	push de                                          ; $6869: $d5
	xor d                                            ; $686a: $aa
	ld a, [hl+]                                      ; $686b: $2a
	push de                                          ; $686c: $d5
	inc bc                                           ; $686d: $03
	jr c, jr_027_6873                                ; $686e: $38 $03

	db $fc                                           ; $6870: $fc
	daa                                              ; $6871: $27
	db $fc                                           ; $6872: $fc

jr_027_6873:
	sbc c                                            ; $6873: $99
	xor h                                            ; $6874: $ac
	ld e, a                                          ; $6875: $5f
	ld d, h                                          ; $6876: $54
	xor a                                            ; $6877: $af
	xor h                                            ; $6878: $ac
	ld d, a                                          ; $6879: $57
	ld e, a                                          ; $687a: $5f
	db $fc                                           ; $687b: $fc
	ld a, a                                          ; $687c: $7f
	ld [hl], h                                       ; $687d: $74
	ld a, a                                          ; $687e: $7f
	cp $7f                                           ; $687f: $fe $7f
	ld l, [hl]                                       ; $6881: $6e
	ld [hl], a                                       ; $6882: $77
	cp $7f                                           ; $6883: $fe $7f
	ld h, [hl]                                       ; $6885: $66
	ld [hl], a                                       ; $6886: $77
	cp $81                                           ; $6887: $fe $81
	inc [hl]                                         ; $6889: $34
	ldh a, [$9a]                                     ; $688a: $f0 $9a
	ld [hl], b                                       ; $688c: $70
	adc h                                            ; $688d: $8c
	ld a, b                                          ; $688e: $78
	add h                                            ; $688f: $84
	ld a, h                                          ; $6890: $7c
	jp nz, $cd3f                                     ; $6891: $c2 $3f $cd

	inc sp                                           ; $6894: $33
	adc $31                                          ; $6895: $ce $31
	rst AddAOntoHL                                          ; $6897: $ef
	stop                                             ; $6898: $10 $00
	nop                                              ; $689a: $00
	dec bc                                           ; $689b: $0b
	rlca                                             ; $689c: $07
	ld e, d                                          ; $689d: $5a
	add hl, sp                                       ; $689e: $39
	ld [hl], l                                       ; $689f: $75
	ldh [$2a], a                                     ; $68a0: $e0 $2a
	add b                                            ; $68a2: $80
	ld d, l                                          ; $68a3: $55
	nop                                              ; $68a4: $00
	xor e                                            ; $68a5: $ab
	add e                                            ; $68a6: $83
	ld a, d                                          ; $68a7: $7a
	ld h, $80                                        ; $68a8: $26 $80
	ld a, a                                          ; $68aa: $7f

jr_027_68ab:
	rst SubAFromHL                                          ; $68ab: $d7
	xor e                                            ; $68ac: $ab
	xor h                                            ; $68ad: $ac
	ld d, a                                          ; $68ae: $57
	ld c, a                                          ; $68af: $4f
	inc e                                            ; $68b0: $1c
	cp l                                             ; $68b1: $bd
	jr jr_027_692e                                   ; $68b2: $18 $7a

	jr nc, jr_027_68ab                               ; $68b4: $30 $f5

	ret nc                                           ; $68b6: $d0

	ld c, d                                          ; $68b7: $4a
	or b                                             ; $68b8: $b0
	dec d                                            ; $68b9: $15
	ld hl, sp-$01                                    ; $68ba: $f8 $ff
	rst $38                                          ; $68bc: $ff
	push af                                          ; $68bd: $f5
	ld a, [$fece]                                    ; $68be: $fa $ce $fe
	push de                                          ; $68c1: $d5
	db $eb                                           ; $68c2: $eb
	jp z, $d5f5                                      ; $68c3: $ca $f5 $d5

	ldh [c], a                                       ; $68c6: $e2
	xor d                                            ; $68c7: $aa
	pop hl                                           ; $68c8: $e1
	rst SubAFromDE                                          ; $68c9: $df
	rst $38                                          ; $68ca: $ff
	add c                                            ; $68cb: $81
	xor d                                            ; $68cc: $aa
	ld bc, $0055                                     ; $68cd: $01 $55 $00
	xor d                                            ; $68d0: $aa
	nop                                              ; $68d1: $00
	push de                                          ; $68d2: $d5
	ldh [$ba], a                                     ; $68d3: $e0 $ba
	db $fc                                           ; $68d5: $fc
	rst SubAFromHL                                          ; $68d6: $d7
	adc a                                            ; $68d7: $8f
	xor [hl]                                         ; $68d8: $ae
	rst JumpTable                                          ; $68d9: $c7
	adc e                                            ; $68da: $8b
	adc h                                            ; $68db: $8c
	bit 1, h                                         ; $68dc: $cb $4c
	ld [hl], a                                       ; $68de: $77
	cp b                                             ; $68df: $b8
	or a                                             ; $68e0: $b7
	ld a, b                                          ; $68e1: $78
	ld l, [hl]                                       ; $68e2: $6e
	ld sp, $63fc                                     ; $68e3: $31 $fc $63
	ret nc                                           ; $68e6: $d0

	rst AddAOntoHL                                          ; $68e7: $ef
	and c                                            ; $68e8: $a1
	sbc $6f                                          ; $68e9: $de $6f
	ld a, [bc]                                       ; $68eb: $0a
	ld [hl], a                                       ; $68ec: $77
	adc d                                            ; $68ed: $8a
	ld l, a                                          ; $68ee: $6f
	or $7f                                           ; $68ef: $f6 $7f
	ld c, $9b                                        ; $68f1: $0e $9b
	db $e3                                           ; $68f3: $e3
	ld e, $e2                                        ; $68f4: $1e $e2
	rra                                              ; $68f6: $1f
	ld l, a                                          ; $68f7: $6f

jr_027_68f8:
	db $fc                                           ; $68f8: $fc
	ld a, a                                          ; $68f9: $7f
	adc h                                            ; $68fa: $8c
	sbc l                                            ; $68fb: $9d
	jp $033e                                         ; $68fc: $c3 $3e $03


	inc a                                            ; $68ff: $3c
	ld b, e                                          ; $6900: $43
	db $fc                                           ; $6901: $fc
	sbc c                                            ; $6902: $99
	db $dd                                           ; $6903: $dd
	ld [hl+], a                                      ; $6904: $22
	xor d                                            ; $6905: $aa
	ld d, l                                          ; $6906: $55
	ld [hl], a                                       ; $6907: $77
	adc b                                            ; $6908: $88
	inc bc                                           ; $6909: $03
	ld hl, sp+$6b                                    ; $690a: $f8 $6b
	ld hl, sp+$7f                                    ; $690c: $f8 $7f
	ld b, h                                          ; $690e: $44
	adc l                                            ; $690f: $8d
	sbc $23                                          ; $6910: $de $23
	xor d                                            ; $6912: $aa
	ld d, a                                          ; $6913: $57
	halt                                             ; $6914: $76
	adc e                                            ; $6915: $8b
	xor d                                            ; $6916: $aa

jr_027_6917:
	ld d, a                                          ; $6917: $57
	rst SubAFromDE                                          ; $6918: $df
	inc hl                                           ; $6919: $23
	xor e                                            ; $691a: $ab
	ld d, l                                          ; $691b: $55
	ld [hl], a                                       ; $691c: $77
	adc c                                            ; $691d: $89
	rrca                                             ; $691e: $0f
	ldh a, [rIF]                                     ; $691f: $f0 $0f
	ldh a, [$79]                                     ; $6921: $f0 $79
	dec b                                            ; $6923: $05
	sbc [hl]                                         ; $6924: $9e
	ld hl, sp+$74                                    ; $6925: $f8 $74
	ei                                               ; $6927: $fb
	ld a, h                                          ; $6928: $7c

jr_027_6929:
	ld [hl], a                                       ; $6929: $77
	sub d                                            ; $692a: $92
	ld sp, $e7ce                                     ; $692b: $31 $ce $e7

jr_027_692e:
	jr jr_027_6917                                   ; $692e: $18 $e7

	jr jr_027_6929                                   ; $6930: $18 $f7

	ld [$0cf3], sp                                   ; $6932: $08 $f3 $0c
	pop af                                           ; $6935: $f1
	ld c, $f8                                        ; $6936: $0e $f8
	ld a, d                                          ; $6938: $7a
	ld h, [hl]                                       ; $6939: $66
	ld a, l                                          ; $693a: $7d
	and $80                                          ; $693b: $e6 $80
	push af                                          ; $693d: $f5
	ei                                               ; $693e: $fb
	ld l, d                                          ; $693f: $6a
	rst FarCall                                          ; $6940: $f7
	ld [hl], e                                       ; $6941: $73
	adc $7e                                          ; $6942: $ce $7e
	call nz, $c471                                   ; $6944: $c4 $71 $c4
	add hl, hl                                       ; $6947: $29
	ldh [$34], a                                     ; $6948: $e0 $34
	ldh [$28], a                                     ; $694a: $e0 $28
	ldh [$74], a                                     ; $694c: $e0 $74
	jr nz, jr_027_68f8                               ; $694e: $20 $a8

	jr nz, @+$72                                     ; $6950: $20 $70

	jr nz, @-$1e                                     ; $6952: $20 $e0

	ld b, b                                          ; $6954: $40
	ld b, b                                          ; $6955: $40
	ldh [$a0], a                                     ; $6956: $e0 $a0
	ret nz                                           ; $6958: $c0

	ret nz                                           ; $6959: $c0

	add b                                            ; $695a: $80
	and b                                            ; $695b: $a0
	sub c                                            ; $695c: $91
	nop                                              ; $695d: $00
	or c                                             ; $695e: $b1
	ldh [$aa], a                                     ; $695f: $e0 $aa
	ldh [$b1], a                                     ; $6961: $e0 $b1
	ldh [$a8], a                                     ; $6963: $e0 $a8
	ldh [$f0], a                                     ; $6965: $e0 $f0
	ld h, b                                          ; $6967: $60
	ld l, b                                          ; $6968: $68
	ld h, b                                          ; $6969: $60
	ld [hl], h                                       ; $696a: $74
	ld a, e                                          ; $696b: $7b
	db $fc                                           ; $696c: $fc
	add b                                            ; $696d: $80
	db $d3                                           ; $696e: $d3
	add d                                            ; $696f: $82
	ld h, c                                          ; $6970: $61
	add e                                            ; $6971: $83
	add c                                            ; $6972: $81
	ld b, c                                          ; $6973: $41
	ld h, b                                          ; $6974: $60
	add c                                            ; $6975: $81
	add c                                            ; $6976: $81
	ld b, b                                          ; $6977: $40
	ld h, b                                          ; $6978: $60
	add b                                            ; $6979: $80
	db $10                                           ; $697a: $10
	ld b, b                                          ; $697b: $40
	and b                                            ; $697c: $a0
	nop                                              ; $697d: $00
	add e                                            ; $697e: $83
	db $fc                                           ; $697f: $fc
	add e                                            ; $6980: $83
	db $fc                                           ; $6981: $fc
	add a                                            ; $6982: $87
	ld hl, sp-$79                                    ; $6983: $f8 $87
	ld hl, sp-$71                                    ; $6985: $f8 $8f
	ldh a, [$9f]                                     ; $6987: $f0 $9f
	ldh [$9f], a                                     ; $6989: $e0 $9f
	ldh [$bd], a                                     ; $698b: $e0 $bd
	sbc [hl]                                         ; $698d: $9e
	jp nz, $065e                                     ; $698e: $c2 $5e $06

	ld [hl], a                                       ; $6991: $77
	cp $7d                                           ; $6992: $fe $7d
	adc d                                            ; $6994: $8a
	adc a                                            ; $6995: $8f
	add $3d                                          ; $6996: $c6 $3d
	push bc                                          ; $6998: $c5
	ld a, $c6                                        ; $6999: $3e $c6
	dec a                                            ; $699b: $3d
	adc a                                            ; $699c: $8f
	ld a, b                                          ; $699d: $78
	adc d                                            ; $699e: $8a
	ld a, l                                          ; $699f: $7d
	dec c                                            ; $69a0: $0d
	ld a, [$f51a]                                    ; $69a1: $fa $1a $f5
	rla                                              ; $69a4: $17
	ld hl, sp+$03                                    ; $69a5: $f8 $03
	jr c, @+$05                                      ; $69a7: $38 $03

	ld hl, sp+$0f                                    ; $69a9: $f8 $0f
	ld hl, sp+$7f                                    ; $69ab: $f8 $7f
	inc c                                            ; $69ad: $0c
	sbc [hl]                                         ; $69ae: $9e
	db $dd                                           ; $69af: $dd
	ld [hl], e                                       ; $69b0: $73
	ld [$f867], sp                                   ; $69b1: $08 $67 $f8
	sbc b                                            ; $69b4: $98
	add hl, sp                                       ; $69b5: $39
	add $1c                                          ; $69b6: $c6 $1c
	db $e3                                           ; $69b8: $e3
	ld e, $e1                                        ; $69b9: $1e $e1
	rra                                              ; $69bb: $1f
	ld a, e                                          ; $69bc: $7b
	ld h, h                                          ; $69bd: $64
	ld a, a                                          ; $69be: $7f
	ld e, [hl]                                       ; $69bf: $5e
	ld [hl], a                                       ; $69c0: $77
	cp $7f                                           ; $69c1: $fe $7f
	ld c, $7f                                        ; $69c3: $0e $7f
	ld l, h                                          ; $69c5: $6c

jr_027_69c6:
	ld h, h                                          ; $69c6: $64
	db $f4                                           ; $69c7: $f4
	ld [hl], a                                       ; $69c8: $77
	cp $9e                                           ; $69c9: $fe $9e
	and b                                            ; $69cb: $a0
	sbc $f0                                          ; $69cc: $de $f0
	add b                                            ; $69ce: $80
	ld [hl], b                                       ; $69cf: $70
	ldh a, [$30]                                     ; $69d0: $f0 $30
	ldh a, [$b8]                                     ; $69d2: $f0 $b8
	ld a, b                                          ; $69d4: $78
	sbc b                                            ; $69d5: $98
	ld a, b                                          ; $69d6: $78
	ret z                                            ; $69d7: $c8

	jr c, jr_027_69c6                                ; $69d8: $38 $ec

	inc e                                            ; $69da: $1c
	ld d, b                                          ; $69db: $50
	nop                                              ; $69dc: $00
	and b                                            ; $69dd: $a0
	nop                                              ; $69de: $00
	ld d, c                                          ; $69df: $51
	nop                                              ; $69e0: $00
	xor e                                            ; $69e1: $ab
	ld bc, $0753                                     ; $69e2: $01 $53 $07
	xor a                                            ; $69e5: $af
	rra                                              ; $69e6: $1f
	ld a, a                                          ; $69e7: $7f
	ccf                                              ; $69e8: $3f
	ld [hl], e                                       ; $69e9: $73
	ld a, a                                          ; $69ea: $7f
	db $f4                                           ; $69eb: $f4
	ld h, b                                          ; $69ec: $60
	ld [$e095], a                                    ; $69ed: $ea $95 $e0
	or h                                             ; $69f0: $b4
	ldh a, [$3a]                                     ; $69f1: $f0 $3a
	ldh a, [rAUD3LEVEL]                              ; $69f3: $f0 $1c
	ld hl, sp+$0c                                    ; $69f5: $f8 $0c
	db $fc                                           ; $69f7: $fc
	ld b, $7b                                        ; $69f8: $06 $7b
	rst JumpTable                                          ; $69fa: $c7
	add l                                            ; $69fb: $85
	ld de, $2900                                     ; $69fc: $11 $00 $29
	ld bc, $0115                                     ; $69ff: $01 $15 $01
	dec hl                                           ; $6a02: $2b
	ld bc, $0317                                     ; $6a03: $01 $17 $03
	ld l, $03                                        ; $6a06: $2e $03
	ld d, $07                                        ; $6a08: $16 $07
	sbc [hl]                                         ; $6a0a: $9e
	rrca                                             ; $6a0b: $0f
	db $fd                                           ; $6a0c: $fd
	add d                                            ; $6a0d: $82
	ld a, l                                          ; $6a0e: $7d
	add d                                            ; $6a0f: $82
	ld a, c                                          ; $6a10: $79
	add [hl]                                         ; $6a11: $86
	ld a, c                                          ; $6a12: $79
	add [hl]                                         ; $6a13: $86
	ld [hl], c                                       ; $6a14: $71
	adc [hl]                                         ; $6a15: $8e
	ld [hl], a                                       ; $6a16: $77
	cp $9b                                           ; $6a17: $fe $9b
	db $e3                                           ; $6a19: $e3
	inc e                                            ; $6a1a: $1c
	cp $01                                           ; $6a1b: $fe $01
	ld a, d                                          ; $6a1d: $7a
	sub a                                            ; $6a1e: $97
	ld a, e                                          ; $6a1f: $7b
	cp $7a                                           ; $6a20: $fe $7a
	adc l                                            ; $6a22: $8d
	ld a, e                                          ; $6a23: $7b
	cp $7e                                           ; $6a24: $fe $7e
	add e                                            ; $6a26: $83
	ld a, a                                          ; $6a27: $7f
	inc c                                            ; $6a28: $0c
	sub c                                            ; $6a29: $91
	dec a                                            ; $6a2a: $3d
	ldh [c], a                                       ; $6a2b: $e2
	ld a, [hl+]                                      ; $6a2c: $2a
	push af                                          ; $6a2d: $f5
	ld [hl], a                                       ; $6a2e: $77
	add sp, $6a                                      ; $6a2f: $e8 $6a
	push de                                          ; $6a31: $d5
	db $dd                                           ; $6a32: $dd
	ldh [c], a                                       ; $6a33: $e2
	ld [$f7d5], a                                    ; $6a34: $ea $d5 $f7
	ret z                                            ; $6a37: $c8

	inc bc                                           ; $6a38: $03
	jr c, jr_027_6a86                                ; $6a39: $38 $4b

	ld hl, sp+$7f                                    ; $6a3b: $f8 $7f
	ld a, [$fc03]                                    ; $6a3d: $fa $03 $fc
	ld c, a                                          ; $6a40: $4f
	db $fc                                           ; $6a41: $fc
	sbc h                                            ; $6a42: $9c
	inc hl                                           ; $6a43: $23
	ld [hl], a                                       ; $6a44: $77
	adc c                                            ; $6a45: $89
	ld d, a                                          ; $6a46: $57
	db $fc                                           ; $6a47: $fc
	ld a, [hl]                                       ; $6a48: $7e
	ld h, [hl]                                       ; $6a49: $66
	sbc [hl]                                         ; $6a4a: $9e
	ld b, a                                          ; $6a4b: $47
	ld a, e                                          ; $6a4c: $7b
	cp $95                                           ; $6a4d: $fe $95
	ld b, e                                          ; $6a4f: $43
	db $fc                                           ; $6a50: $fc
	inc hl                                           ; $6a51: $23
	db $fc                                           ; $6a52: $fc
	ld hl, $21fe                                     ; $6a53: $21 $fe $21
	cp $20                                           ; $6a56: $fe $20
	rst $38                                          ; $6a58: $ff
	ld h, a                                          ; $6a59: $67
	ld [$fd9d], sp                                   ; $6a5a: $08 $9d $fd
	ld [bc], a                                       ; $6a5d: $02
	ld l, [hl]                                       ; $6a5e: $6e
	ld hl, sp-$76                                    ; $6a5f: $f8 $8a
	push hl                                          ; $6a61: $e5
	rra                                              ; $6a62: $1f
	db $e3                                           ; $6a63: $e3
	rra                                              ; $6a64: $1f
	pop af                                           ; $6a65: $f1
	rrca                                             ; $6a66: $0f
	pop af                                           ; $6a67: $f1
	rrca                                             ; $6a68: $0f
	ld hl, sp+$07                                    ; $6a69: $f8 $07
	db $fc                                           ; $6a6b: $fc
	inc bc                                           ; $6a6c: $03
	ld a, h                                          ; $6a6d: $7c
	add e                                            ; $6a6e: $83
	inc e                                            ; $6a6f: $1c
	db $e3                                           ; $6a70: $e3
	jp $83ff                                         ; $6a71: $c3 $ff $83


	rst $38                                          ; $6a74: $ff
	add c                                            ; $6a75: $81
	ld [hl], e                                       ; $6a76: $73
	cp $91                                           ; $6a77: $fe $91
	jp nz, $c2fd                                     ; $6a79: $c2 $fd $c2

	db $fd                                           ; $6a7c: $fd
	ld b, [hl]                                       ; $6a7d: $46
	ld sp, hl                                        ; $6a7e: $f9
	db $10                                           ; $6a7f: $10
	rst AddAOntoHL                                          ; $6a80: $ef
	jr @-$17                                         ; $6a81: $18 $e7

	sbc h                                            ; $6a83: $9c
	db $e3                                           ; $6a84: $e3
	sbc [hl]                                         ; $6a85: $9e

jr_027_6a86:
	pop hl                                           ; $6a86: $e1
	ld h, [hl]                                       ; $6a87: $66
	ret nz                                           ; $6a88: $c0

	sbc h                                            ; $6a89: $9c
	db $fc                                           ; $6a8a: $fc
	rst $38                                          ; $6a8b: $ff
	inc c                                            ; $6a8c: $0c
	ld a, e                                          ; $6a8d: $7b
	cp $9c                                           ; $6a8e: $fe $9c
	ld [$18ff], sp                                   ; $6a90: $08 $ff $18
	ld [hl], e                                       ; $6a93: $73
	cp $8d                                           ; $6a94: $fe $8d
	ld de, $c3ff                                     ; $6a96: $11 $ff $c3
	inc a                                            ; $6a99: $3c
	inc bc                                           ; $6a9a: $03
	db $fc                                           ; $6a9b: $fc
	rla                                              ; $6a9c: $17
	ld hl, sp+$1f                                    ; $6a9d: $f8 $1f
	ldh a, [$2f]                                     ; $6a9f: $f0 $2f
	ldh a, [$5f]                                     ; $6aa1: $f0 $5f
	ldh [$bf], a                                     ; $6aa3: $e0 $bf
	ret nz                                           ; $6aa5: $c0

	ld a, a                                          ; $6aa6: $7f
	add b                                            ; $6aa7: $80
	ld [hl], a                                       ; $6aa8: $77
	or h                                             ; $6aa9: $b4
	ld a, a                                          ; $6aaa: $7f
	cp $7f                                           ; $6aab: $fe $7f
	xor h                                            ; $6aad: $ac
	ld [hl], a                                       ; $6aae: $77
	cp $7d                                           ; $6aaf: $fe $7d
	inc c                                            ; $6ab1: $0c
	ld a, a                                          ; $6ab2: $7f
	cp $7f                                           ; $6ab3: $fe $7f
	ld a, [bc]                                       ; $6ab5: $0a
	ld a, a                                          ; $6ab6: $7f
	inc c                                            ; $6ab7: $0c
	sbc h                                            ; $6ab8: $9c
	ld e, l                                          ; $6ab9: $5d
	ldh [c], a                                       ; $6aba: $e2
	ld [hl], a                                       ; $6abb: $77
	ld h, e                                          ; $6abc: $63
	db $fc                                           ; $6abd: $fc
	inc bc                                           ; $6abe: $03
	ld b, b                                          ; $6abf: $40
	ld c, e                                          ; $6ac0: $4b
	db $fc                                           ; $6ac1: $fc
	ld a, a                                          ; $6ac2: $7f
	ld e, [hl]                                       ; $6ac3: $5e
	ld a, a                                          ; $6ac4: $7f
	ld a, [$fc7f]                                    ; $6ac5: $fa $7f $fc
	ld a, a                                          ; $6ac8: $7f

jr_027_6ac9:
	ld hl, sp-$65                                    ; $6ac9: $f8 $9b
	rst SubAFromDE                                          ; $6acb: $df
	jr nz, jr_027_6ac9                               ; $6acc: $20 $fb

	inc b                                            ; $6ace: $04
	ld l, a                                          ; $6acf: $6f
	ld b, [hl]                                       ; $6ad0: $46
	dec bc                                           ; $6ad1: $0b
	ldh a, [$9a]                                     ; $6ad2: $f0 $9a
	ld bc, $23dd                                     ; $6ad4: $01 $dd $23
	rst $38                                          ; $6ad7: $ff
	ld bc, $f05f                                     ; $6ad8: $01 $5f $f0
	adc a                                            ; $6adb: $8f
	db $10                                           ; $6adc: $10
	rst $38                                          ; $6add: $ff
	db $10                                           ; $6ade: $10
	rst $38                                          ; $6adf: $ff
	sub b                                            ; $6ae0: $90
	rst $38                                          ; $6ae1: $ff
	ld a, b                                          ; $6ae2: $78
	rst $38                                          ; $6ae3: $ff
	ret c                                            ; $6ae4: $d8

	cpl                                              ; $6ae5: $2f
	ld hl, sp+$0f                                    ; $6ae6: $f8 $0f
	ld hl, sp+$0f                                    ; $6ae8: $f8 $0f
	db $fc                                           ; $6aea: $fc
	rrca                                             ; $6aeb: $0f
	ld l, h                                          ; $6aec: $6c
	ld h, h                                          ; $6aed: $64
	ld a, a                                          ; $6aee: $7f
	cp $8b                                           ; $6aef: $fe $8b
	ccf                                              ; $6af1: $3f
	ret nz                                           ; $6af2: $c0

	ccf                                              ; $6af3: $3f
	ret nz                                           ; $6af4: $c0

	rra                                              ; $6af5: $1f
	ldh [$1f], a                                     ; $6af6: $e0 $1f
	ldh [hDisp0_WY], a                                     ; $6af8: $e0 $88
	ld [hl], a                                       ; $6afa: $77
	add b                                            ; $6afb: $80
	ld a, a                                          ; $6afc: $7f
	ret nz                                           ; $6afd: $c0

	ccf                                              ; $6afe: $3f
	ret nc                                           ; $6aff: $d0

	ccf                                              ; $6b00: $3f
	add sp, $1f                                      ; $6b01: $e8 $1f
	db $f4                                           ; $6b03: $f4
	rrca                                             ; $6b04: $0f
	ld [hl], h                                       ; $6b05: $74
	ldh a, [$7f]                                     ; $6b06: $f0 $7f
	ld c, $9e                                        ; $6b08: $0e $9e
	ld h, [hl]                                       ; $6b0a: $66
	ld l, e                                          ; $6b0b: $6b
	cp $94                                           ; $6b0c: $fe $94
	ld a, $fd                                        ; $6b0e: $3e $fd
	ccf                                              ; $6b10: $3f
	rst $38                                          ; $6b11: $ff
	ccf                                              ; $6b12: $3f
	rst $38                                          ; $6b13: $ff
	adc a                                            ; $6b14: $8f
	ldh a, [$ce]                                     ; $6b15: $f0 $ce
	pop af                                           ; $6b17: $f1
	ld c, [hl]                                       ; $6b18: $4e
	ld a, e                                          ; $6b19: $7b
	cp $8e                                           ; $6b1a: $fe $8e
	ld e, h                                          ; $6b1c: $5c
	db $e3                                           ; $6b1d: $e3
	ld e, h                                          ; $6b1e: $5c
	db $e3                                           ; $6b1f: $e3
	reti                                             ; $6b20: $d9


	rst SubAFromBC                                          ; $6b21: $e7
	rst $38                                          ; $6b22: $ff
	rst $38                                          ; $6b23: $ff
	ld [hl-], a                                      ; $6b24: $32
	rst $38                                          ; $6b25: $ff
	dec [hl]                                         ; $6b26: $35
	cp $3b                                           ; $6b27: $fe $3b
	db $fc                                           ; $6b29: $fc
	scf                                              ; $6b2a: $37
	ld hl, sp+$6f                                    ; $6b2b: $f8 $6f
	ld [hl], e                                       ; $6b2d: $73
	db $10                                           ; $6b2e: $10
	ld a, a                                          ; $6b2f: $7f
	cp h                                             ; $6b30: $bc
	ld d, l                                          ; $6b31: $55
	inc d                                            ; $6b32: $14
	ld [hl], a                                       ; $6b33: $77
	cp $95                                           ; $6b34: $fe $95
	jp nz, $c43f                                     ; $6b36: $c2 $3f $c4

	ccf                                              ; $6b39: $3f
	add h                                            ; $6b3a: $84
	ld a, a                                          ; $6b3b: $7f
	rlca                                             ; $6b3c: $07
	rst $38                                          ; $6b3d: $ff
	rlca                                             ; $6b3e: $07
	db $fc                                           ; $6b3f: $fc
	ld l, a                                          ; $6b40: $6f
	cp $7f                                           ; $6b41: $fe $7f
	and e                                            ; $6b43: $a3
	ld a, a                                          ; $6b44: $7f
	ld a, [bc]                                       ; $6b45: $0a
	ld a, a                                          ; $6b46: $7f
	db $fc                                           ; $6b47: $fc
	ld a, [hl]                                       ; $6b48: $7e
	db $fc                                           ; $6b49: $fc
	inc bc                                           ; $6b4a: $03
	ld b, b                                          ; $6b4b: $40
	inc hl                                           ; $6b4c: $23
	ldh a, [$03]                                     ; $6b4d: $f0 $03
	cp $13                                           ; $6b4f: $fe $13
	cp $7f                                           ; $6b51: $fe $7f
	ld c, $7f                                        ; $6b53: $0e $7f
	cp $9d                                           ; $6b55: $fe $9d
	cp $1f                                           ; $6b57: $fe $1f
	ld [hl], a                                       ; $6b59: $77
	cp $97                                           ; $6b5a: $fe $97
	push af                                          ; $6b5c: $f5
	ccf                                              ; $6b5d: $3f
	push af                                          ; $6b5e: $f5
	ccf                                              ; $6b5f: $3f
	db $e4                                           ; $6b60: $e4
	ccf                                              ; $6b61: $3f
	rrca                                             ; $6b62: $0f
	ldh a, [rPCM34]                                  ; $6b63: $f0 $77
	cp $75                                           ; $6b65: $fe $75
	ld h, e                                          ; $6b67: $63
	ld [hl], l                                       ; $6b68: $75
	ld e, c                                          ; $6b69: $59
	sbc l                                            ; $6b6a: $9d
	add c                                            ; $6b6b: $81
	cp $54                                           ; $6b6c: $fe $54
	db $f4                                           ; $6b6e: $f4
	ld [hl], a                                       ; $6b6f: $77
	cp $92                                           ; $6b70: $fe $92
	cp h                                             ; $6b72: $bc
	rst $38                                          ; $6b73: $ff
	ld a, h                                          ; $6b74: $7c
	rst $38                                          ; $6b75: $ff
	cp h                                             ; $6b76: $bc
	ld a, a                                          ; $6b77: $7f
	call c, $ec3f                                    ; $6b78: $dc $3f $ec
	rra                                              ; $6b7b: $1f
	db $fc                                           ; $6b7c: $fc
	rrca                                             ; $6b7d: $0f
	db $f4                                           ; $6b7e: $f4
	ld a, e                                          ; $6b7f: $7b
	cp $9c                                           ; $6b80: $fe $9c
	ld c, $ff                                        ; $6b82: $0e $ff
	ld c, $62                                        ; $6b84: $0e $62
	ld c, $7e                                        ; $6b86: $0e $7e
	or [hl]                                          ; $6b88: $b6
	sbc l                                            ; $6b89: $9d
	jr nc, @+$01                                     ; $6b8a: $30 $ff

	halt                                             ; $6b8c: $76
	add $76                                          ; $6b8d: $c6 $76
	ret z                                            ; $6b8f: $c8

	halt                                             ; $6b90: $76
	ret nz                                           ; $6b91: $c0

	ld a, a                                          ; $6b92: $7f
	db $f4                                           ; $6b93: $f4
	ld a, e                                          ; $6b94: $7b
	and b                                            ; $6b95: $a0
	ld [hl], c                                       ; $6b96: $71
	ld [de], a                                       ; $6b97: $12
	ld [hl], a                                       ; $6b98: $77
	cp $9e                                           ; $6b99: $fe $9e
	cp $73                                           ; $6b9b: $fe $73
	cp $7a                                           ; $6b9d: $fe $7a
	sbc e                                            ; $6b9f: $9b
	ld a, e                                          ; $6ba0: $7b
	cp $9e                                           ; $6ba1: $fe $9e
	rra                                              ; $6ba3: $1f
	ld a, e                                          ; $6ba4: $7b
	cp $99                                           ; $6ba5: $fe $99
	rla                                              ; $6ba7: $17
	db $fc                                           ; $6ba8: $fc
	rra                                              ; $6ba9: $1f
	db $f4                                           ; $6baa: $f4
	cpl                                              ; $6bab: $2f
	db $f4                                           ; $6bac: $f4
	inc bc                                           ; $6bad: $03
	ld e, [hl]                                       ; $6bae: $5e
	inc bc                                           ; $6baf: $03
	cp $03                                           ; $6bb0: $fe $03
	cp $13                                           ; $6bb2: $fe $13
	cp $9a                                           ; $6bb4: $fe $9a
	db $e4                                           ; $6bb6: $e4
	ld a, a                                          ; $6bb7: $7f
	db $e4                                           ; $6bb8: $e4
	ld a, a                                          ; $6bb9: $7f
	call nz, $fe73                                   ; $6bba: $c4 $73 $fe
	sbc b                                            ; $6bbd: $98
	add h                                            ; $6bbe: $84
	rst $38                                          ; $6bbf: $ff
	add [hl]                                         ; $6bc0: $86
	rst $38                                          ; $6bc1: $ff
	adc [hl]                                         ; $6bc2: $8e
	rst $38                                          ; $6bc3: $ff
	add b                                            ; $6bc4: $80
	ld a, e                                          ; $6bc5: $7b
	cp $9e                                           ; $6bc6: $fe $9e
	ld b, b                                          ; $6bc8: $40
	ld a, e                                          ; $6bc9: $7b
	cp $67                                           ; $6bca: $fe $67
	rst SubAFromDE                                          ; $6bcc: $df
	ld [hl], a                                       ; $6bcd: $77
	ei                                               ; $6bce: $fb
	ld e, l                                          ; $6bcf: $5d
	ldh a, [c]                                       ; $6bd0: $f2
	ld a, a                                          ; $6bd1: $7f
	cp $76                                           ; $6bd2: $fe $76
	ld c, e                                          ; $6bd4: $4b
	sbc e                                            ; $6bd5: $9b
	cp $07                                           ; $6bd6: $fe $07
	ld a, [$6f07]                                    ; $6bd8: $fa $07 $6f
	ld [hl-], a                                      ; $6bdb: $32
	ld a, a                                          ; $6bdc: $7f
	cp $7c                                           ; $6bdd: $fe $7c
	adc $7c                                          ; $6bdf: $ce $7c
	jp z, $c47c                                      ; $6be1: $ca $7c $c4

	sbc d                                            ; $6be4: $9a
	ld h, a                                          ; $6be5: $67
	ld hl, sp+$4f                                    ; $6be6: $f8 $4f
	ldh a, [rVBK]                                    ; $6be8: $f0 $4f
	ld a, d                                          ; $6bea: $7a
	ld c, $7f                                        ; $6beb: $0e $7f
	cp $47                                           ; $6bed: $fe $47
	and b                                            ; $6bef: $a0
	ld a, a                                          ; $6bf0: $7f
	sbc $7f                                          ; $6bf1: $de $7f
	call nc, $fe7f                                   ; $6bf3: $d4 $7f $fe
	sbc l                                            ; $6bf6: $9d
	ldh a, [c]                                       ; $6bf7: $f2
	rrca                                             ; $6bf8: $0f
	ld [hl], l                                       ; $6bf9: $75
	inc d                                            ; $6bfa: $14
	ld a, a                                          ; $6bfb: $7f
	cp $7e                                           ; $6bfc: $fe $7e
	ld [bc], a                                       ; $6bfe: $02
	adc a                                            ; $6bff: $8f
	dec hl                                           ; $6c00: $2b
	or $3b                                           ; $6c01: $f6 $3b
	and $5f                                          ; $6c03: $e6 $5f
	ldh [c], a                                       ; $6c05: $e2
	ld e, l                                          ; $6c06: $5d
	db $e3                                           ; $6c07: $e3
	ld a, l                                          ; $6c08: $7d
	db $e3                                           ; $6c09: $e3
	xor a                                            ; $6c0a: $af
	pop af                                           ; $6c0b: $f1
	xor a                                            ; $6c0c: $af
	pop af                                           ; $6c0d: $f1
	sbc [hl]                                         ; $6c0e: $9e
	pop af                                           ; $6c0f: $f1
	ld c, e                                          ; $6c10: $4b
	ret nc                                           ; $6c11: $d0

	ld a, d                                          ; $6c12: $7a
	adc $03                                          ; $6c13: $ce $03
	cp $03                                           ; $6c15: $fe $03
	cp $0b                                           ; $6c17: $fe $0b
	cp $7e                                           ; $6c19: $fe $7e
	ld l, $6b                                        ; $6c1b: $2e $6b
	cp $77                                           ; $6c1d: $fe $77
	ld b, b                                          ; $6c1f: $40
	ld a, a                                          ; $6c20: $7f
	ld c, $9c                                        ; $6c21: $0e $9c
	ld a, [bc]                                       ; $6c23: $0a
	rst $38                                          ; $6c24: $ff
	add hl, bc                                       ; $6c25: $09
	ld a, e                                          ; $6c26: $7b
	cp $7e                                           ; $6c27: $fe $7e
	ld b, b                                          ; $6c29: $40
	ld [hl], h                                       ; $6c2a: $74
	or $7f                                           ; $6c2b: $f6 $7f
	cp $67                                           ; $6c2d: $fe $67
	db $db                                           ; $6c2f: $db
	ld a, [hl]                                       ; $6c30: $7e
	ld b, $76                                        ; $6c31: $06 $76
	ld hl, sp-$80                                    ; $6c33: $f8 $80
	ld h, b                                          ; $6c35: $60
	rst $38                                          ; $6c36: $ff
	rra                                              ; $6c37: $1f
	ldh [$3e], a                                     ; $6c38: $e0 $3e
	pop bc                                           ; $6c3a: $c1
	ld a, l                                          ; $6c3b: $7d
	add e                                            ; $6c3c: $83
	ld a, [$f507]                                    ; $6c3d: $fa $07 $f5
	rrca                                             ; $6c40: $0f
	cp $0f                                           ; $6c41: $fe $0f
	dec a                                            ; $6c43: $3d
	sbc $37                                          ; $6c44: $de $37
	ld hl, sp-$02                                    ; $6c46: $f8 $fe
	inc bc                                           ; $6c48: $03
	ld a, d                                          ; $6c49: $7a
	add a                                            ; $6c4a: $87
	sub d                                            ; $6c4b: $92
	rst AddAOntoHL                                          ; $6c4c: $ef
	ld a, $ff                                        ; $6c4d: $3e $ff
	cp $e3                                           ; $6c4f: $fe $e3
	rst $38                                          ; $6c51: $ff
	inc bc                                           ; $6c52: $03
	rst $38                                          ; $6c53: $ff
	adc l                                            ; $6c54: $8d
	ld bc, $01e1                                     ; $6c55: $01 $e1 $01
	ld a, a                                          ; $6c58: $7f
	ret nz                                           ; $6c59: $c0

	ld e, a                                          ; $6c5a: $5f
	ldh [$6f], a                                     ; $6c5b: $e0 $6f
	ldh a, [$f7]                                     ; $6c5d: $f0 $f7
	ld hl, sp-$64                                    ; $6c5f: $f8 $9c
	rst $38                                          ; $6c61: $ff
	ei                                               ; $6c62: $fb
	add a                                            ; $6c63: $87
	rst $38                                          ; $6c64: $ff
	add b                                            ; $6c65: $80
	sbc a                                            ; $6c66: $9f
	ld h, e                                          ; $6c67: $63
	ld b, b                                          ; $6c68: $40
	ld a, l                                          ; $6c69: $7d
	cp h                                             ; $6c6a: $bc
	sub a                                            ; $6c6b: $97
	add e                                            ; $6c6c: $83
	db $fc                                           ; $6c6d: $fc
	ld [hl], b                                       ; $6c6e: $70
	rst $38                                          ; $6c6f: $ff
	inc e                                            ; $6c70: $1c
	rst $38                                          ; $6c71: $ff
	jp Jump_027_6f3f                                 ; $6c72: $c3 $3f $6f


	cp $7f                                           ; $6c75: $fe $7f
	ld b, $7f                                        ; $6c77: $06 $7f
	cp $9e                                           ; $6c79: $fe $9e
	ld b, $79                                        ; $6c7b: $06 $79
	call nc, $be91                                   ; $6c7d: $d4 $91 $be
	pop de                                           ; $6c80: $d1
	ccf                                              ; $6c81: $3f
	ret nc                                           ; $6c82: $d0

	ld a, a                                          ; $6c83: $7f
	sub b                                            ; $6c84: $90
	ld [hl], a                                       ; $6c85: $77
	sbc b                                            ; $6c86: $98
	ld l, a                                          ; $6c87: $6f
	sbc b                                            ; $6c88: $98
	ld a, a                                          ; $6c89: $7f
	adc b                                            ; $6c8a: $88
	ld a, a                                          ; $6c8b: $7f
	adc b                                            ; $6c8c: $88
	ld a, e                                          ; $6c8d: $7b
	adc c                                            ; $6c8e: $89
	halt                                             ; $6c8f: $76
	adc a                                            ; $6c90: $8f
	ld a, b                                          ; $6c91: $78
	sbc l                                            ; $6c92: $9d
	ld a, a                                          ; $6c93: $7f
	cp $76                                           ; $6c94: $fe $76
	adc c                                            ; $6c96: $89
	sbc l                                            ; $6c97: $9d
	cp a                                             ; $6c98: $bf
	ld h, b                                          ; $6c99: $60
	inc bc                                           ; $6c9a: $03
	ld b, d                                          ; $6c9b: $42
	inc bc                                           ; $6c9c: $03
	cp $0f                                           ; $6c9d: $fe $0f
	cp $77                                           ; $6c9f: $fe $77
	inc c                                            ; $6ca1: $0c
	ld l, b                                          ; $6ca2: $68
	add l                                            ; $6ca3: $85
	ld a, l                                          ; $6ca4: $7d
	dec e                                            ; $6ca5: $1d
	ld a, c                                          ; $6ca6: $79
	ld [hl], l                                       ; $6ca7: $75
	ld l, a                                          ; $6ca8: $6f
	ld a, [bc]                                       ; $6ca9: $0a
	ld [hl], a                                       ; $6caa: $77
	cp $7e                                           ; $6cab: $fe $7e
	ld [hl], $77                                     ; $6cad: $36 $77
	cp $96                                           ; $6caf: $fe $96
	jr c, @+$01                                      ; $6cb1: $38 $ff

	inc a                                            ; $6cb3: $3c
	rst $38                                          ; $6cb4: $ff
	cpl                                              ; $6cb5: $2f
	rst $38                                          ; $6cb6: $ff
	inc hl                                           ; $6cb7: $23
	rst $38                                          ; $6cb8: $ff
	ld hl, $fa71                                     ; $6cb9: $21 $71 $fa
	ld a, a                                          ; $6cbc: $7f
	cp $8a                                           ; $6cbd: $fe $8a
	ld b, a                                          ; $6cbf: $47
	ld hl, sp-$7e                                    ; $6cc0: $f8 $82
	db $fc                                           ; $6cc2: $fc
	add h                                            ; $6cc3: $84
	ld hl, sp+$1e                                    ; $6cc4: $f8 $1e
	ldh [$bd], a                                     ; $6cc6: $e0 $bd
	jp nz, $8ff0                                     ; $6cc8: $c2 $f0 $8f

	ldh [$df], a                                     ; $6ccb: $e0 $df
	ld b, e                                          ; $6ccd: $43
	rst $38                                          ; $6cce: $ff
	add c                                            ; $6ccf: $81
	nop                                              ; $6cd0: $00
	rra                                              ; $6cd1: $1f
	nop                                              ; $6cd2: $00
	ld a, a                                          ; $6cd3: $7f
	ld a, e                                          ; $6cd4: $7b
	cp b                                             ; $6cd5: $b8
	add [hl]                                         ; $6cd6: $86
	di                                               ; $6cd7: $f3
	rrca                                             ; $6cd8: $0f
	rst AddAOntoHL                                          ; $6cd9: $ef
	rra                                              ; $6cda: $1f
	ld a, c                                          ; $6cdb: $79
	pop af                                           ; $6cdc: $f1
	pop bc                                           ; $6cdd: $c1
	add c                                            ; $6cde: $81
	add [hl]                                         ; $6cdf: $86
	add c                                            ; $6ce0: $81
	ldh [hLCDCIntHandlerIdx], a                                     ; $6ce1: $e0 $81
	ld sp, hl                                        ; $6ce3: $f9
	add b                                            ; $6ce4: $80
	db $fd                                           ; $6ce5: $fd
	add d                                            ; $6ce6: $82
	db $fc                                           ; $6ce7: $fc
	add e                                            ; $6ce8: $83
	ld hl, sp-$19                                    ; $6ce9: $f8 $e7
	cp h                                             ; $6ceb: $bc
	rra                                              ; $6cec: $1f
	inc bc                                           ; $6ced: $03
	rlca                                             ; $6cee: $07
	rlca                                             ; $6cef: $07

jr_027_6cf0:
	ld a, d                                          ; $6cf0: $7a
	jp hl                                            ; $6cf1: $e9


	adc [hl]                                         ; $6cf2: $8e
	add d                                            ; $6cf3: $82
	ld a, a                                          ; $6cf4: $7f
	and $1f                                          ; $6cf5: $e6 $1f
	ld a, h                                          ; $6cf7: $7c
	add a                                            ; $6cf8: $87
	inc e                                            ; $6cf9: $1c
	rst SubAFromBC                                          ; $6cfa: $e7
	ld [$98ff], sp                                   ; $6cfb: $08 $ff $98
	rst $38                                          ; $6cfe: $ff
	ld e, $ff                                        ; $6cff: $1e $ff
	ldh [c], a                                       ; $6d01: $e2
	rst $38                                          ; $6d02: $ff
	ld [bc], a                                       ; $6d03: $02
	ld e, e                                          ; $6d04: $5b
	cp $7b                                           ; $6d05: $fe $7b
	ld c, $98                                        ; $6d07: $0e $98
	ld [$0cfb], sp                                   ; $6d09: $08 $fb $0c
	rst FarCall                                          ; $6d0c: $f7
	inc c                                            ; $6d0d: $0c
	rst $38                                          ; $6d0e: $ff
	inc b                                            ; $6d0f: $04
	ld l, a                                          ; $6d10: $6f
	cp $7f                                           ; $6d11: $fe $7f
	ld c, $7b                                        ; $6d13: $0e $7b
	inc c                                            ; $6d15: $0c
	ld [hl], a                                       ; $6d16: $77
	add a                                            ; $6d17: $87
	ld h, a                                          ; $6d18: $67
	ld a, c                                          ; $6d19: $79
	inc bc                                           ; $6d1a: $03
	ld a, $4f                                        ; $6d1b: $3e $4f
	cp $13                                           ; $6d1d: $fe $13
	nop                                              ; $6d1f: $00
	rst SubAFromHL                                          ; $6d20: $d7
	inc sp                                           ; $6d21: $33
	sbc e                                            ; $6d22: $9b
	ld [hl], $66                                     ; $6d23: $36 $66
	ld h, [hl]                                       ; $6d25: $66
	ld h, e                                          ; $6d26: $63
	rla                                              ; $6d27: $17
	ld hl, sp-$62                                    ; $6d28: $f8 $9e
	inc sp                                           ; $6d2a: $33
	ld h, a                                          ; $6d2b: $67
	ld hl, sp+$03                                    ; $6d2c: $f8 $03
	rst $38                                          ; $6d2e: $ff
	push de                                          ; $6d2f: $d5
	inc sp                                           ; $6d30: $33
	sbc e                                            ; $6d31: $9b
	add b                                            ; $6d32: $80
	sbc l                                            ; $6d33: $9d
	adc b                                            ; $6d34: $88
	ld [hl+], a                                      ; $6d35: $22
	ld l, a                                          ; $6d36: $6f
	cp $9d                                           ; $6d37: $fe $9d
	ld [hl], a                                       ; $6d39: $77
	db $dd                                           ; $6d3a: $dd
	ld l, a                                          ; $6d3b: $6f
	cp $3b                                           ; $6d3c: $fe $3b
	ldh a, [$9d]                                     ; $6d3e: $f0 $9d
	inc hl                                           ; $6d40: $23
	adc c                                            ; $6d41: $89
	ld a, e                                          ; $6d42: $7b
	cp $67                                           ; $6d43: $fe $67
	ldh a, [hDisp1_WX]                                     ; $6d45: $f0 $96
	add l                                            ; $6d47: $85
	add d                                            ; $6d48: $82
	add e                                            ; $6d49: $83
	ld bc, $0001                                     ; $6d4a: $01 $01 $00
	inc bc                                           ; $6d4d: $03
	rlca                                             ; $6d4e: $07
	cp $dc                                           ; $6d4f: $fe $dc
	rst $38                                          ; $6d51: $ff
	sub c                                            ; $6d52: $91
	db $fc                                           ; $6d53: $fc
	ld hl, sp-$47                                    ; $6d54: $f8 $b9
	jp hl                                            ; $6d56: $e9


	ld a, h                                          ; $6d57: $7c
	cp h                                             ; $6d58: $bc
	call nc, $deae                                   ; $6d59: $d4 $ae $de
	ld l, [hl]                                       ; $6d5c: $6e
	ld h, b                                          ; $6d5d: $60
	jr nc, jr_027_6cf0                               ; $6d5e: $30 $90

	ret nc                                           ; $6d60: $d0

	db $dd                                           ; $6d61: $dd
	ld hl, sp-$24                                    ; $6d62: $f8 $dc
	rst $38                                          ; $6d64: $ff
	sbc $7f                                          ; $6d65: $de $7f
	ld sp, hl                                        ; $6d67: $f9
	reti                                             ; $6d68: $d9


	rst $38                                          ; $6d69: $ff
	ld sp, hl                                        ; $6d6a: $f9
	sub d                                            ; $6d6b: $92
	ret c                                            ; $6d6c: $d8

	ld b, b                                          ; $6d6d: $40
	ld [hl], a                                       ; $6d6e: $77
	rst SubAFromBC                                          ; $6d6f: $e7
	and a                                            ; $6d70: $a7
	db $e3                                           ; $6d71: $e3
	db $e3                                           ; $6d72: $e3
	db $d3                                           ; $6d73: $d3
	ldh [$e0], a                                     ; $6d74: $e0 $e0
	ret nz                                           ; $6d76: $c0

	ld e, b                                          ; $6d77: $58
	ld a, b                                          ; $6d78: $78
	sbc $3c                                          ; $6d79: $de $3c
	sub a                                            ; $6d7b: $97
	inc bc                                           ; $6d7c: $03
	nop                                              ; $6d7d: $00
	db $fc                                           ; $6d7e: $fc
	rst $38                                          ; $6d7f: $ff
	rst $38                                          ; $6d80: $ff
	cp $ff                                           ; $6d81: $fe $ff
	db $fd                                           ; $6d83: $fd
	db $fc                                           ; $6d84: $fc
	rst SubAFromDE                                          ; $6d85: $df
	ld bc, $0399                                     ; $6d86: $01 $99 $03
	rst AddAOntoHL                                          ; $6d89: $ef
	ld e, a                                          ; $6d8a: $5f
	ld e, a                                          ; $6d8b: $5f
	cp a                                             ; $6d8c: $bf
	cp a                                             ; $6d8d: $bf
	ld a, e                                          ; $6d8e: $7b
	cp a                                             ; $6d8f: $bf
	sbc d                                            ; $6d90: $9a
	ld [hl], b                                       ; $6d91: $70
	ldh [$60], a                                     ; $6d92: $e0 $60
	ret nz                                           ; $6d94: $c0

	ret nz                                           ; $6d95: $c0

	sbc $80                                          ; $6d96: $de $80
	ld b, a                                          ; $6d98: $47
	ret nz                                           ; $6d99: $c0

	sub a                                            ; $6d9a: $97
	ldh a, [c]                                       ; $6d9b: $f2
	rst SubAFromBC                                          ; $6d9c: $e7
	rst SubAFromBC                                          ; $6d9d: $e7
	push hl                                          ; $6d9e: $e5
	adc $ce                                          ; $6d9f: $ce $ce
	res 3, a                                         ; $6da1: $cb $9f
	sbc $01                                          ; $6da3: $de $01
	sbc $03                                          ; $6da5: $de $03
	rst SubAFromDE                                          ; $6da7: $df
	rlca                                             ; $6da8: $07
	sub h                                            ; $6da9: $94
	xor e                                            ; $6daa: $ab
	rla                                              ; $6dab: $17
	cpl                                              ; $6dac: $2f
	ccf                                              ; $6dad: $3f
	ld e, a                                          ; $6dae: $5f
	cp a                                             ; $6daf: $bf
	ld a, [hl]                                       ; $6db0: $7e
	ld a, [hl]                                       ; $6db1: $7e
	call c, $f0f8                                    ; $6db2: $dc $f8 $f0
	ld a, e                                          ; $6db5: $7b
	xor l                                            ; $6db6: $ad
	rst SubAFromDE                                          ; $6db7: $df
	add c                                            ; $6db8: $81
	adc a                                            ; $6db9: $8f
	add sp, -$36                                     ; $6dba: $e8 $ca
	ret z                                            ; $6dbc: $c8

	adc d                                            ; $6dbd: $8a
	ld [$080a], sp                                   ; $6dbe: $08 $0a $08
	ld a, [bc]                                       ; $6dc1: $0a
	rra                                              ; $6dc2: $1f
	dec a                                            ; $6dc3: $3d
	ccf                                              ; $6dc4: $3f
	ld a, l                                          ; $6dc5: $7d
	rst $38                                          ; $6dc6: $ff
	db $fd                                           ; $6dc7: $fd
	rst $38                                          ; $6dc8: $ff
	db $fd                                           ; $6dc9: $fd
	rlca                                             ; $6dca: $07
	jr nz, jr_027_6dd1                               ; $6dcb: $20 $04

	nop                                              ; $6dcd: $00
	reti                                             ; $6dce: $d9


	inc sp                                           ; $6dcf: $33
	and h                                            ; $6dd0: $a4

jr_027_6dd1:
	add b                                            ; $6dd1: $80
	rst $38                                          ; $6dd2: $ff
	sub c                                            ; $6dd3: $91
	inc b                                            ; $6dd4: $04
	jr nz, @-$76                                     ; $6dd5: $20 $88

	nop                                              ; $6dd7: $00
	ld [hl+], a                                      ; $6dd8: $22
	nop                                              ; $6dd9: $00
	rst $38                                          ; $6dda: $ff
	rst $38                                          ; $6ddb: $ff
	ei                                               ; $6ddc: $fb
	rst SubAFromDE                                          ; $6ddd: $df
	ld [hl], a                                       ; $6dde: $77
	rst $38                                          ; $6ddf: $ff
	db $dd                                           ; $6de0: $dd
	rst $38                                          ; $6de1: $ff
	rlca                                             ; $6de2: $07
	ldh a, [$97]                                     ; $6de3: $f0 $97
	db $10                                           ; $6de5: $10
	jr nz, @+$22                                     ; $6de6: $20 $20

	ld b, b                                          ; $6de8: $40
	ret nz                                           ; $6de9: $c0

	ld h, b                                          ; $6dea: $60
	sub b                                            ; $6deb: $90
	adc e                                            ; $6dec: $8b
	db $dd                                           ; $6ded: $dd
	rst $38                                          ; $6dee: $ff
	adc c                                            ; $6def: $89
	ld a, a                                          ; $6df0: $7f
	rst $38                                          ; $6df1: $ff
	rst $38                                          ; $6df2: $ff
	db $fc                                           ; $6df3: $fc
	sbc b                                            ; $6df4: $98
	sbc b                                            ; $6df5: $98
	ld c, h                                          ; $6df6: $4c
	ld c, l                                          ; $6df7: $4d
	ld c, e                                          ; $6df8: $4b
	ld b, e                                          ; $6df9: $43
	ld e, e                                          ; $6dfa: $5b
	cp c                                             ; $6dfb: $b9
	rst SubAFromBC                                          ; $6dfc: $e7
	rst SubAFromBC                                          ; $6dfd: $e7

jr_027_6dfe:
	di                                               ; $6dfe: $f3
	ldh a, [c]                                       ; $6dff: $f2
	ldh a, [$f0]                                     ; $6e00: $f0 $f0
	ldh [$60], a                                     ; $6e02: $e0 $60
	rrca                                             ; $6e04: $0f
	rra                                              ; $6e05: $1f
	ld a, e                                          ; $6e06: $7b
	ld [$ffde], a                                    ; $6e07: $ea $de $ff
	ld a, a                                          ; $6e0a: $7f
	push af                                          ; $6e0b: $f5
	sbc [hl]                                         ; $6e0c: $9e
	add b                                            ; $6e0d: $80
	db $fc                                           ; $6e0e: $fc
	adc a                                            ; $6e0f: $8f
	add e                                            ; $6e10: $83
	pop hl                                           ; $6e11: $e1
	pop af                                           ; $6e12: $f1
	ld sp, hl                                        ; $6e13: $f9
	ld hl, sp-$04                                    ; $6e14: $f8 $fc
	db $fc                                           ; $6e16: $fc
	cp $7f                                           ; $6e17: $fe $7f
	rra                                              ; $6e19: $1f
	rrca                                             ; $6e1a: $0f
	rlca                                             ; $6e1b: $07
	rlca                                             ; $6e1c: $07
	inc bc                                           ; $6e1d: $03
	inc bc                                           ; $6e1e: $03
	ld bc, $9cfd                                     ; $6e1f: $01 $fd $9c
	add b                                            ; $6e22: $80
	add a                                            ; $6e23: $87
	cp a                                             ; $6e24: $bf

jr_027_6e25:
	ld a, e                                          ; $6e25: $7b
	xor b                                            ; $6e26: $a8
	ld [hl], a                                       ; $6e27: $77
	ld hl, sp-$63                                    ; $6e28: $f8 $9d
	cp b                                             ; $6e2a: $b8
	ldh [$fc], a                                     ; $6e2b: $e0 $fc
	sbc l                                            ; $6e2d: $9d
	cp $ff                                           ; $6e2e: $fe $ff
	ld [hl], e                                       ; $6e30: $73
	ldh a, [$7f]                                     ; $6e31: $f0 $7f
	ld hl, sp+$7f                                    ; $6e33: $f8 $7f
	pop hl                                           ; $6e35: $e1
	rst SubAFromDE                                          ; $6e36: $df
	ld [$0991], sp                                   ; $6e37: $08 $91 $09
	ld de, $1713                                     ; $6e3a: $11 $13 $17
	and a                                            ; $6e3d: $a7
	rst AddAOntoHL                                          ; $6e3e: $ef
	rrca                                             ; $6e3f: $0f
	rrca                                             ; $6e40: $0f
	ld c, $1e                                        ; $6e41: $0e $1e
	inc e                                            ; $6e43: $1c
	jr jr_027_6dfe                                   ; $6e44: $18 $b8

	ldh a, [$d9]                                     ; $6e46: $f0 $d9
	rst $38                                          ; $6e48: $ff
	ld sp, hl                                        ; $6e49: $f9
	sbc $fc                                          ; $6e4a: $de $fc
	sbc $f9                                          ; $6e4c: $de $f9
	rst SubAFromDE                                          ; $6e4e: $df
	di                                               ; $6e4f: $f3
	ld sp, hl                                        ; $6e50: $f9
	adc b                                            ; $6e51: $88
	xor $ef                                          ; $6e52: $ee $ef
	cp a                                             ; $6e54: $bf
	rst SubAFromDE                                          ; $6e55: $df
	sbc $7d                                          ; $6e56: $de $7d
	cp d                                             ; $6e58: $ba
	or l                                             ; $6e59: $b5
	ld sp, $6030                                     ; $6e5a: $31 $30 $60
	ld h, b                                          ; $6e5d: $60
	ld h, c                                          ; $6e5e: $61
	jp $cec7                                         ; $6e5f: $c3 $c7 $ce


	add b                                            ; $6e62: $80
	ld b, b                                          ; $6e63: $40
	call nz, $b860                                   ; $6e64: $c4 $60 $b8
	ld d, b                                          ; $6e67: $50
	ldh a, [c]                                       ; $6e68: $f2
	ld a, e                                          ; $6e69: $7b
	ret z                                            ; $6e6a: $c8

	sbc c                                            ; $6e6b: $99
	ld a, e                                          ; $6e6c: $7b
	rst $38                                          ; $6e6d: $ff
	rst FarCall                                          ; $6e6e: $f7
	cp a                                             ; $6e6f: $bf
	dec e                                            ; $6e70: $1d
	rra                                              ; $6e71: $1f
	rlca                                             ; $6e72: $07
	jr nc, jr_027_6e79                               ; $6e73: $30 $04

	nop                                              ; $6e75: $00
	reti                                             ; $6e76: $d9


	inc sp                                           ; $6e77: $33
	ld [hl], c                                       ; $6e78: $71

jr_027_6e79:
	add b                                            ; $6e79: $80
	ld sp, hl                                        ; $6e7a: $f9
	reti                                             ; $6e7b: $d9


	rst $38                                          ; $6e7c: $ff
	inc bc                                           ; $6e7d: $03
	ldh a, [$fd]                                     ; $6e7e: $f0 $fd
	sbc h                                            ; $6e80: $9c
	ld bc, $0807                                     ; $6e81: $01 $07 $08
	ld e, a                                          ; $6e84: $5f
	ldh a, [$99]                                     ; $6e85: $f0 $99
	ld bc, $780e                                     ; $6e87: $01 $0e $78
	ret c                                            ; $6e8a: $d8

	jr jr_027_6e25                                   ; $6e8b: $18 $98

	call c, $deff                                    ; $6e8d: $dc $ff $de
	rst SubAFromBC                                          ; $6e90: $e7
	sbc h                                            ; $6e91: $9c
	inc bc                                           ; $6e92: $03
	inc e                                            ; $6e93: $1c
	ldh [$fd], a                                     ; $6e94: $e0 $fd
	sbc [hl]                                         ; $6e96: $9e
	inc bc                                           ; $6e97: $03
	jp c, $9eff                                      ; $6e98: $da $ff $9e

	db $fc                                           ; $6e9b: $fc
	call c, $de07                                    ; $6e9c: $dc $07 $de
	inc bc                                           ; $6e9f: $03
	call c, $defc                                    ; $6ea0: $dc $fc $de
	cp $df                                           ; $6ea3: $fe $df
	ld hl, sp+$77                                    ; $6ea5: $f8 $77
	ld sp, hl                                        ; $6ea7: $f9
	sbc l                                            ; $6ea8: $9d
	rst $38                                          ; $6ea9: $ff
	rlca                                             ; $6eaa: $07
	di                                               ; $6eab: $f3
	sbc l                                            ; $6eac: $9d
	inc bc                                           ; $6ead: $03
	rrca                                             ; $6eae: $0f
	ld sp, hl                                        ; $6eaf: $f9
	sub a                                            ; $6eb0: $97
	ld a, $1e                                        ; $6eb1: $3e $1e
	ld b, $0e                                        ; $6eb3: $06 $0e
	inc a                                            ; $6eb5: $3c
	db $fc                                           ; $6eb6: $fc
	db $fc                                           ; $6eb7: $fc
	adc h                                            ; $6eb8: $8c
	db $dd                                           ; $6eb9: $dd
	inc bc                                           ; $6eba: $03
	ld [hl], e                                       ; $6ebb: $73
	push bc                                          ; $6ebc: $c5
	ld a, e                                          ; $6ebd: $7b
	sub e                                            ; $6ebe: $93
	sbc c                                            ; $6ebf: $99
	rlca                                             ; $6ec0: $07
	rra                                              ; $6ec1: $1f
	ccf                                              ; $6ec2: $3f
	ccf                                              ; $6ec3: $3f
	rst $38                                          ; $6ec4: $ff
	rst $38                                          ; $6ec5: $ff
	ld a, e                                          ; $6ec6: $7b
	push bc                                          ; $6ec7: $c5
	adc a                                            ; $6ec8: $8f
	ldh [$c0], a                                     ; $6ec9: $e0 $c0
	ret nz                                           ; $6ecb: $c0

	nop                                              ; $6ecc: $00
	ret nz                                           ; $6ecd: $c0

	or b                                             ; $6ece: $b0
	xor $fd                                          ; $6ecf: $ee $fd
	cp $fe                                           ; $6ed1: $fe $fe
	db $fc                                           ; $6ed3: $fc
	rst $38                                          ; $6ed4: $ff
	rst $38                                          ; $6ed5: $ff
	ld a, a                                          ; $6ed6: $7f
	rra                                              ; $6ed7: $1f
	inc bc                                           ; $6ed8: $03
	ld a, [$809b]                                    ; $6ed9: $fa $9b $80
	ld [hl], b                                       ; $6edc: $70
	ld a, h                                          ; $6edd: $7c
	db $d3                                           ; $6ede: $d3
	call c, Call_027_7fff                            ; $6edf: $dc $ff $7f
	db $ed                                           ; $6ee2: $ed
	sbc [hl]                                         ; $6ee3: $9e
	ccf                                              ; $6ee4: $3f
	inc bc                                           ; $6ee5: $03
	ld b, b                                          ; $6ee6: $40
	ld c, e                                          ; $6ee7: $4b
	ldh a, [$09]                                     ; $6ee8: $f0 $09
	nop                                              ; $6eea: $00
	sbc $33                                          ; $6eeb: $de $33
	sbc l                                            ; $6eed: $9d
	ld d, h                                          ; $6eee: $54
	ld b, l                                          ; $6eef: $45
	sbc $33                                          ; $6ef0: $de $33
	ld d, d                                          ; $6ef2: $52
	add b                                            ; $6ef3: $80
	ld sp, hl                                        ; $6ef4: $f9
	reti                                             ; $6ef5: $d9


	rst $38                                          ; $6ef6: $ff
	inc bc                                           ; $6ef7: $03
	ldh a, [rWX]                                     ; $6ef8: $f0 $4b
	ldh a, [$df]                                     ; $6efa: $f0 $df
	inc c                                            ; $6efc: $0c
	rst SubAFromDE                                          ; $6efd: $df
	inc b                                            ; $6efe: $04
	dec bc                                           ; $6eff: $0b
	ret nc                                           ; $6f00: $d0

	sbc d                                            ; $6f01: $9a
	rlca                                             ; $6f02: $07
	add hl, de                                       ; $6f03: $19
	inc hl                                           ; $6f04: $23
	ld b, e                                          ; $6f05: $43
	add a                                            ; $6f06: $87
	db $db                                           ; $6f07: $db
	rst $38                                          ; $6f08: $ff
	rst SubAFromDE                                          ; $6f09: $df
	cp $93                                           ; $6f0a: $fe $93
	rst $38                                          ; $6f0c: $ff
	rst SubAFromDE                                          ; $6f0d: $df
	rst FarCall                                          ; $6f0e: $f7
	rst $38                                          ; $6f0f: $ff
	rst SubAFromBC                                          ; $6f10: $e7
	di                                               ; $6f11: $f3
	ldh a, [$f8]                                     ; $6f12: $f0 $f8
	rst $38                                          ; $6f14: $ff
	cp a                                             ; $6f15: $bf
	adc a                                            ; $6f16: $8f
	add b                                            ; $6f17: $80
	db $fd                                           ; $6f18: $fd
	sub l                                            ; $6f19: $95
	rst SubAFromBC                                          ; $6f1a: $e7
	adc $7c                                          ; $6f1b: $ce $7c
	ld hl, sp-$10                                    ; $6f1d: $f8 $f0
	ret nz                                           ; $6f1f: $c0

	nop                                              ; $6f20: $00
	nop                                              ; $6f21: $00
	ld hl, sp-$10                                    ; $6f22: $f8 $f0
	ld [hl], e                                       ; $6f24: $73
	pop af                                           ; $6f25: $f1
	adc [hl]                                         ; $6f26: $8e
	nop                                              ; $6f27: $00
	ld h, b                                          ; $6f28: $60
	ld [hl], b                                       ; $6f29: $70
	ld a, h                                          ; $6f2a: $7c
	ld [hl], e                                       ; $6f2b: $73
	ld a, b                                          ; $6f2c: $78
	ld a, b                                          ; $6f2d: $78
	ld a, h                                          ; $6f2e: $7c
	ld a, h                                          ; $6f2f: $7c
	ccf                                              ; $6f30: $3f
	ccf                                              ; $6f31: $3f
	rra                                              ; $6f32: $1f
	rra                                              ; $6f33: $1f
	rrca                                             ; $6f34: $0f
	rrca                                             ; $6f35: $0f
	rlca                                             ; $6f36: $07
	rlca                                             ; $6f37: $07
	db $fd                                           ; $6f38: $fd
	sbc e                                            ; $6f39: $9b
	add b                                            ; $6f3a: $80
	ld b, b                                          ; $6f3b: $40
	jr nc, jr_027_6f4a                               ; $6f3c: $30 $0c

	inc bc                                           ; $6f3e: $03

Jump_027_6f3f:
	ld [hl], b                                       ; $6f3f: $70
	inc bc                                           ; $6f40: $03
	ldh a, [$2f]                                     ; $6f41: $f0 $2f
	ldh a, [$09]                                     ; $6f43: $f0 $09
	nop                                              ; $6f45: $00
	sbc $33                                          ; $6f46: $de $33
	sbc l                                            ; $6f48: $9d
	ld d, h                                          ; $6f49: $54

jr_027_6f4a:
	ld b, l                                          ; $6f4a: $45
	sbc $33                                          ; $6f4b: $de $33
	ld a, l                                          ; $6f4d: $7d
	add b                                            ; $6f4e: $80
	ld sp, hl                                        ; $6f4f: $f9
	reti                                             ; $6f50: $d9


	rst $38                                          ; $6f51: $ff
	rlca                                             ; $6f52: $07
	ldh a, [$9d]                                     ; $6f53: $f0 $9d
	dec c                                            ; $6f55: $0d
	rrca                                             ; $6f56: $0f
	sbc $07                                          ; $6f57: $de $07
	rst SubAFromDE                                          ; $6f59: $df
	inc bc                                           ; $6f5a: $03
	sbc h                                            ; $6f5b: $9c
	ld bc, $f9f9                                     ; $6f5c: $01 $f9 $f9
	sbc $fd                                          ; $6f5f: $de $fd
	sbc $ff                                          ; $6f61: $de $ff
	sub l                                            ; $6f63: $95
	ld c, l                                          ; $6f64: $4d
	ld l, l                                          ; $6f65: $6d
	inc l                                            ; $6f66: $2c
	inc l                                            ; $6f67: $2c
	inc a                                            ; $6f68: $3c
	inc a                                            ; $6f69: $3c
	inc e                                            ; $6f6a: $1c
	inc e                                            ; $6f6b: $1c
	rst JumpTable                                          ; $6f6c: $c7
	rst JumpTable                                          ; $6f6d: $c7
	db $dd                                           ; $6f6e: $dd
	rst SubAFromBC                                          ; $6f6f: $e7
	rst SubAFromDE                                          ; $6f70: $df
	rst FarCall                                          ; $6f71: $f7
	sbc $e4                                          ; $6f72: $de $e4
	sub [hl]                                         ; $6f74: $96
	ldh [rLCDC], a                                   ; $6f75: $e0 $40
	ld b, b                                          ; $6f77: $40
	nop                                              ; $6f78: $00
	nop                                              ; $6f79: $00
	ccf                                              ; $6f7a: $3f
	ccf                                              ; $6f7b: $3f
	cp a                                             ; $6f7c: $bf
	cp a                                             ; $6f7d: $bf
	db $dd                                           ; $6f7e: $dd
	rst $38                                          ; $6f7f: $ff
	sbc d                                            ; $6f80: $9a
	ccf                                              ; $6f81: $3f
	rra                                              ; $6f82: $1f
	rrca                                             ; $6f83: $0f
	rlca                                             ; $6f84: $07
	ld bc, $9bfe                                     ; $6f85: $01 $fe $9b
	ldh [$f0], a                                     ; $6f88: $e0 $f0
	ld hl, sp-$02                                    ; $6f8a: $f8 $fe
	db $dd                                           ; $6f8c: $dd
	rst $38                                          ; $6f8d: $ff
	sbc b                                            ; $6f8e: $98
	ld bc, $c080                                     ; $6f8f: $01 $80 $c0
	ldh [$f0], a                                     ; $6f92: $e0 $f0
	db $fc                                           ; $6f94: $fc
	cp $73                                           ; $6f95: $fe $73
	xor b                                            ; $6f97: $a8
	sub h                                            ; $6f98: $94
	add b                                            ; $6f99: $80
	ldh [$f8], a                                     ; $6f9a: $e0 $f8
	rst $38                                          ; $6f9c: $ff
	ret nz                                           ; $6f9d: $c0

	add b                                            ; $6f9e: $80
	nop                                              ; $6f9f: $00
	nop                                              ; $6fa0: $00
	ld bc, $0d07                                     ; $6fa1: $01 $07 $0d
	ld l, a                                          ; $6fa4: $6f
	sbc b                                            ; $6fa5: $98
	sub a                                            ; $6fa6: $97
	inc bc                                           ; $6fa7: $03
	ld b, $18                                        ; $6fa8: $06 $18
	inc c                                            ; $6faa: $0c
	jr jr_027_6fdd                                   ; $6fab: $18 $30

	ldh [$a0], a                                     ; $6fad: $e0 $a0
	sbc $e0                                          ; $6faf: $de $e0
	sbc d                                            ; $6fb1: $9a
	rlca                                             ; $6fb2: $07
	rrca                                             ; $6fb3: $0f
	rra                                              ; $6fb4: $1f
	ld a, a                                          ; $6fb5: $7f
	rst $38                                          ; $6fb6: $ff
	sbc $3f                                          ; $6fb7: $de $3f
	sbc l                                            ; $6fb9: $9d
	ld de, $7701                                     ; $6fba: $11 $01 $77
	jp nz, $805f                                     ; $6fbd: $c2 $5f $80

	rst SubAFromDE                                          ; $6fc0: $df
	db $10                                           ; $6fc1: $10
	ld c, a                                          ; $6fc2: $4f
	ld [hl], b                                       ; $6fc3: $70
	db $dd                                           ; $6fc4: $dd
	ld b, b                                          ; $6fc5: $40
	inc bc                                           ; $6fc6: $03
	ld b, b                                          ; $6fc7: $40
	dec de                                           ; $6fc8: $1b
	ldh a, [$0a]                                     ; $6fc9: $f0 $0a
	nop                                              ; $6fcb: $00
	sbc d                                            ; $6fcc: $9a
	inc sp                                           ; $6fcd: $33
	dec [hl]                                         ; $6fce: $35
	ld d, l                                          ; $6fcf: $55
	ld d, h                                          ; $6fd0: $54
	ld b, l                                          ; $6fd1: $45
	sbc $33                                          ; $6fd2: $de $33
	xor h                                            ; $6fd4: $ac
	add b                                            ; $6fd5: $80
	ld sp, hl                                        ; $6fd6: $f9

jr_027_6fd7:
	reti                                             ; $6fd7: $d9


	rst $38                                          ; $6fd8: $ff
	ld b, a                                          ; $6fd9: $47
	ldh a, [$df]                                     ; $6fda: $f0 $df
	dec b                                            ; $6fdc: $05

jr_027_6fdd:
	db $dd                                           ; $6fdd: $dd
	rlca                                             ; $6fde: $07
	rst SubAFromDE                                          ; $6fdf: $df
	ld [bc], a                                       ; $6fe0: $02
	sbc $fc                                          ; $6fe1: $de $fc
	sbc $fd                                          ; $6fe3: $de $fd
	rst SubAFromDE                                          ; $6fe5: $df
	rst $38                                          ; $6fe6: $ff
	sub a                                            ; $6fe7: $97
	sbc e                                            ; $6fe8: $9b
	sub e                                            ; $6fe9: $93
	sub e                                            ; $6fea: $93
	inc de                                           ; $6feb: $13
	add hl, de                                       ; $6fec: $19
	add hl, de                                       ; $6fed: $19
	add hl, bc                                       ; $6fee: $09
	dec c                                            ; $6fef: $0d
	db $db                                           ; $6ff0: $db
	ldh a, [hDisp1_WY]                                     ; $6ff1: $f0 $95
	ld hl, sp-$07                                    ; $6ff3: $f8 $f9
	ld h, l                                          ; $6ff5: $65
	ld h, l                                          ; $6ff6: $65
	ld b, l                                          ; $6ff7: $45
	push bc                                          ; $6ff8: $c5
	push de                                          ; $6ff9: $d5
	rst SubAFromHL                                          ; $6ffa: $d7
	rst FarCall                                          ; $6ffb: $f7
	sub $dd                                          ; $6ffc: $d6 $dd
	cp $df                                           ; $6ffe: $fe $df
	xor $85                                          ; $7000: $ee $85
	adc $cf                                          ; $7002: $ce $cf
	dec [hl]                                         ; $7004: $35
	inc sp                                           ; $7005: $33
	ld [hl-], a                                      ; $7006: $32
	dec sp                                           ; $7007: $3b
	cp c                                             ; $7008: $b9
	or l                                             ; $7009: $b5
	cp l                                             ; $700a: $bd
	cp d                                             ; $700b: $ba
	cp $fe                                           ; $700c: $fe $fe
	rst $38                                          ; $700e: $ff
	rst FarCall                                          ; $700f: $f7
	ld [hl], a                                       ; $7010: $77
	ld a, e                                          ; $7011: $7b
	ld a, e                                          ; $7012: $7b
	ld a, a                                          ; $7013: $7f
	push hl                                          ; $7014: $e5
	ld a, [$fefd]                                    ; $7015: $fa $fd $fe
	db $fc                                           ; $7018: $fc
	cp $be                                           ; $7019: $fe $be
	ld e, a                                          ; $701b: $5f
	db $fc                                           ; $701c: $fc
	sub e                                            ; $701d: $93
	add b                                            ; $701e: $80
	ret nz                                           ; $701f: $c0

	ldh [$57], a                                     ; $7020: $e0 $57
	adc [hl]                                         ; $7022: $8e
	ld b, $03                                        ; $7023: $06 $03
	nop                                              ; $7025: $00
	ld b, $02                                        ; $7026: $06 $02
	nop                                              ; $7028: $00
	nop                                              ; $7029: $00
	sbc $01                                          ; $702a: $de $01
	rst $38                                          ; $702c: $ff
	ld a, a                                          ; $702d: $7f
	push af                                          ; $702e: $f5
	sbc [hl]                                         ; $702f: $9e
	dec b                                            ; $7030: $05
	ld a, e                                          ; $7031: $7b
	ld [$009c], a                                    ; $7032: $ea $9c $00
	jr nc, jr_027_6fd7                               ; $7035: $30 $a0

	ld [hl], a                                       ; $7037: $77
	db $e3                                           ; $7038: $e3
	ld a, a                                          ; $7039: $7f
	ld hl, sp-$65                                    ; $703a: $f8 $9b
	nop                                              ; $703c: $00
	ld h, b                                          ; $703d: $60
	nop                                              ; $703e: $00
	ld d, h                                          ; $703f: $54
	ld a, e                                          ; $7040: $7b
	push af                                          ; $7041: $f5
	rst SubAFromDE                                          ; $7042: $df
	ld bc, $039d                                     ; $7043: $01 $9d $03
	rlca                                             ; $7046: $07
	ei                                               ; $7047: $fb
	ld a, a                                          ; $7048: $7f
	rst FarCall                                          ; $7049: $f7
	sbc [hl]                                         ; $704a: $9e
	ld a, a                                          ; $704b: $7f
	db $dd                                           ; $704c: $dd
	rst $38                                          ; $704d: $ff
	sbc b                                            ; $704e: $98
	ei                                               ; $704f: $fb
	cp e                                             ; $7050: $bb
	inc de                                           ; $7051: $13
	ld c, h                                          ; $7052: $4c
	ld c, h                                          ; $7053: $4c
	call z, $decc                                    ; $7054: $cc $cc $de
	xor $9e                                          ; $7057: $ee $9e
	cp $de                                           ; $7059: $fe $de
	db $fd                                           ; $705b: $fd
	sub c                                            ; $705c: $91
	db $fc                                           ; $705d: $fc
	cp h                                             ; $705e: $bc
	cp h                                             ; $705f: $bc
	jr c, @+$3a                                      ; $7060: $38 $38

	add a                                            ; $7062: $87
	add a                                            ; $7063: $87
	rst JumpTable                                          ; $7064: $c7
	rst JumpTable                                          ; $7065: $c7
	rst SubAFromBC                                          ; $7066: $e7
	rst SubAFromBC                                          ; $7067: $e7
	rst AddAOntoHL                                          ; $7068: $ef
	rst AddAOntoHL                                          ; $7069: $ef
	di                                               ; $706a: $f3
	sbc $f1                                          ; $706b: $de $f1
	db $dd                                           ; $706d: $dd
	ldh [$9b], a                                     ; $706e: $e0 $9b
	ld e, $1f                                        ; $7070: $1e $1f
	rra                                              ; $7072: $1f
	sbc a                                            ; $7073: $9f
	db $dd                                           ; $7074: $dd
	cp a                                             ; $7075: $bf
	db $dd                                           ; $7076: $dd
	ret nz                                           ; $7077: $c0

	db $dd                                           ; $7078: $dd
	add b                                            ; $7079: $80
	sbc $7f                                          ; $707a: $de $7f
	inc sp                                           ; $707c: $33
	jr nc, @+$49                                     ; $707d: $30 $47

	ldh a, [$0b]                                     ; $707f: $f0 $0b
	nop                                              ; $7081: $00
	sbc l                                            ; $7082: $9d
	inc sp                                           ; $7083: $33
	ld d, l                                          ; $7084: $55
	sbc $44                                          ; $7085: $de $44
	rst SubAFromDE                                          ; $7087: $df
	ld d, l                                          ; $7088: $55
	sbc [hl]                                         ; $7089: $9e
	inc sp                                           ; $708a: $33
	jp $f980                                         ; $708b: $c3 $80 $f9


	reti                                             ; $708e: $d9


	rst $38                                          ; $708f: $ff
	rst $38                                          ; $7090: $ff
	db $dd                                           ; $7091: $dd
	ld bc, $f05f                                     ; $7092: $01 $5f $f0
	sub d                                            ; $7095: $92
	pop af                                           ; $7096: $f1
	pop hl                                           ; $7097: $e1
	jp $0282                                         ; $7098: $c3 $82 $02


	ld b, $04                                        ; $709b: $06 $04
	dec b                                            ; $709d: $05
	sbc a                                            ; $709e: $9f
	cp a                                             ; $709f: $bf
	ld a, [hl]                                       ; $70a0: $7e
	cp $fe                                           ; $70a1: $fe $fe
	sbc $fc                                          ; $70a3: $de $fc
	add a                                            ; $70a5: $87
	and l                                            ; $70a6: $a5
	daa                                              ; $70a7: $27
	ld c, a                                          ; $70a8: $4f
	ld c, e                                          ; $70a9: $4b
	sbc e                                            ; $70aa: $9b
	cp a                                             ; $70ab: $bf
	rst FarCall                                          ; $70ac: $f7
	ld d, a                                          ; $70ad: $57
	ld e, $1c                                        ; $70ae: $1e $1c
	inc a                                            ; $70b0: $3c
	inc a                                            ; $70b1: $3c
	ld a, h                                          ; $70b2: $7c
	ld a, b                                          ; $70b3: $78
	ld a, b                                          ; $70b4: $78
	ld hl, sp-$73                                    ; $70b5: $f8 $8d
	adc a                                            ; $70b7: $8f
	sbc a                                            ; $70b8: $9f
	sbc a                                            ; $70b9: $9f
	ld e, $3c                                        ; $70ba: $1e $3c
	inc l                                            ; $70bc: $2c
	ld l, l                                          ; $70bd: $6d
	db $dd                                           ; $70be: $dd
	ld a, a                                          ; $70bf: $7f
	sbc $ff                                          ; $70c0: $de $ff
	adc [hl]                                         ; $70c2: $8e
	cp $ff                                           ; $70c3: $fe $ff
	xor $5b                                          ; $70c5: $ee $5b
	cp $b7                                           ; $70c7: $fe $b7
	ld a, a                                          ; $70c9: $7f
	ld a, e                                          ; $70ca: $7b
	cpl                                              ; $70cb: $2f
	jr nz, jr_027_70ff                               ; $70cc: $20 $31

	or a                                             ; $70ce: $b7
	sub c                                            ; $70cf: $91
	ret c                                            ; $70d0: $d8

	ret z                                            ; $70d1: $c8

	call z, Call_027_7bfc                            ; $70d2: $cc $fc $7b
	ret nz                                           ; $70d5: $c0

	ld a, a                                          ; $70d6: $7f
	rst JumpTable                                          ; $70d7: $c7
	sub e                                            ; $70d8: $93
	db $ec                                           ; $70d9: $ec
	pop af                                           ; $70da: $f1
	ei                                               ; $70db: $fb
	ld [hl], e                                       ; $70dc: $73
	db $e3                                           ; $70dd: $e3
	rst SubAFromBC                                          ; $70de: $e7
	cp a                                             ; $70df: $bf
	ld e, $1f                                        ; $70e0: $1e $1f
	rra                                              ; $70e2: $1f
	ld c, $c0                                        ; $70e3: $0e $c0
	sbc $80                                          ; $70e5: $de $80
	sbc e                                            ; $70e7: $9b
	nop                                              ; $70e8: $00
	add a                                            ; $70e9: $87
	sbc a                                            ; $70ea: $9f
	cp a                                             ; $70eb: $bf
	ld [hl], e                                       ; $70ec: $73
	ld hl, sp-$02                                    ; $70ed: $f8 $fe
	sbc l                                            ; $70ef: $9d
	ld b, $02                                        ; $70f0: $06 $02
	ld a, e                                          ; $70f2: $7b
	sub d                                            ; $70f3: $92
	sbc e                                            ; $70f4: $9b
	ret nz                                           ; $70f5: $c0

	rst FarCall                                          ; $70f6: $f7
	cp $07                                           ; $70f7: $fe $07
	ld [hl], e                                       ; $70f9: $73
	adc d                                            ; $70fa: $8a
	rst $38                                          ; $70fb: $ff
	add a                                            ; $70fc: $87
	rrca                                             ; $70fd: $0f
	ccf                                              ; $70fe: $3f

jr_027_70ff:
	ld hl, sp+$70                                    ; $70ff: $f8 $70
	ld h, b                                          ; $7101: $60
	adc b                                            ; $7102: $88
	call c, $1fa8                                    ; $7103: $dc $a8 $1f
	inc a                                            ; $7106: $3c
	db $fc                                           ; $7107: $fc
	ldh a, [$f8]                                     ; $7108: $f0 $f8
	ld hl, sp+$70                                    ; $710a: $f8 $70
	nop                                              ; $710c: $00
	xor $ee                                          ; $710d: $ee $ee
	ld l, [hl]                                       ; $710f: $6e
	ld l, l                                          ; $7110: $6d
	ld l, l                                          ; $7111: $6d
	ld c, c                                          ; $7112: $49
	ld c, c                                          ; $7113: $49
	ld e, c                                          ; $7114: $59
	sbc $3b                                          ; $7115: $de $3b
	rst SubAFromDE                                          ; $7117: $df
	ld a, $df                                        ; $7118: $3e $df
	ld a, [hl]                                       ; $711a: $7e
	add c                                            ; $711b: $81
	ld l, [hl]                                       ; $711c: $6e

jr_027_711d:
	sub d                                            ; $711d: $92
	adc b                                            ; $711e: $88
	adc c                                            ; $711f: $89
	sub l                                            ; $7120: $95
	sub h                                            ; $7121: $94
	or d                                             ; $7122: $b2
	or d                                             ; $7123: $b2
	cp [hl]                                          ; $7124: $be
	db $fc                                           ; $7125: $fc
	cp $fe                                           ; $7126: $fe $fe
	xor $ef                                          ; $7128: $ee $ef
	rst GetHLinHL                                          ; $712a: $cf
	rst GetHLinHL                                          ; $712b: $cf
	rst JumpTable                                          ; $712c: $c7
	ld l, b                                          ; $712d: $68
	ld h, h                                          ; $712e: $64
	ld [hl], l                                       ; $712f: $75
	add hl, de                                       ; $7130: $19
	dec de                                           ; $7131: $1b
	cp l                                             ; $7132: $bd
	cp l                                             ; $7133: $bd
	or a                                             ; $7134: $b7
	ld sp, $3839                                     ; $7135: $31 $39 $38
	inc a                                            ; $7138: $3c
	inc a                                            ; $7139: $3c
	sbc $1e                                          ; $713a: $de $1e
	sbc d                                            ; $713c: $9a
	sbc h                                            ; $713d: $9c
	adc h                                            ; $713e: $8c
	adc h                                            ; $713f: $8c
	add h                                            ; $7140: $84
	call nz, $c0de                                   ; $7141: $c4 $de $c0
	sbc [hl]                                         ; $7144: $9e
	rst FarCall                                          ; $7145: $f7
	sbc $ff                                          ; $7146: $de $ff
	db $dd                                           ; $7148: $dd
	ld a, a                                          ; $7149: $7f
	ccf                                              ; $714a: $3f
	jr nz, jr_027_719c                               ; $714b: $20 $4f

	ldh a, [$0a]                                     ; $714d: $f0 $0a
	nop                                              ; $714f: $00
	sbc l                                            ; $7150: $9d
	inc sp                                           ; $7151: $33
	ld d, h                                          ; $7152: $54
	db $dd                                           ; $7153: $dd
	ld b, h                                          ; $7154: $44
	sbc l                                            ; $7155: $9d
	ld b, l                                          ; $7156: $45
	inc sp                                           ; $7157: $33
	reti                                             ; $7158: $d9


	add b                                            ; $7159: $80
	rst SubAFromDE                                          ; $715a: $df
	ld [bc], a                                       ; $715b: $02
	ei                                               ; $715c: $fb
	reti                                             ; $715d: $d9


	rst $38                                          ; $715e: $ff
	sbc l                                            ; $715f: $9d
	add hl, bc                                       ; $7160: $09
	inc bc                                           ; $7161: $03
	ld c, a                                          ; $7162: $4f
	ldh a, [$80]                                     ; $7163: $f0 $80
	rst $38                                          ; $7165: $ff
	rst JumpTable                                          ; $7166: $c7
	rrca                                             ; $7167: $0f
	rra                                              ; $7168: $1f
	dec de                                           ; $7169: $1b
	scf                                              ; $716a: $37
	ld l, $59                                        ; $716b: $2e $59
	ccf                                              ; $716d: $3f
	cp $fc                                           ; $716e: $fe $fc
	ld hl, sp-$10                                    ; $7170: $f8 $f0
	db $e3                                           ; $7172: $e3
	rst SubAFromBC                                          ; $7173: $e7
	rst GetHLinHL                                          ; $7174: $cf
	push hl                                          ; $7175: $e5
	res 2, a                                         ; $7176: $cb $97
	ld l, [hl]                                       ; $7178: $6e
	call c, $d1a9                                    ; $7179: $dc $a9 $d1
	ld [de], a                                       ; $717c: $12
	ld e, $3c                                        ; $717d: $1e $3c
	ld a, b                                          ; $717f: $78
	pop af                                           ; $7180: $f1
	db $e3                                           ; $7181: $e3
	rst JumpTable                                          ; $7182: $c7
	adc a                                            ; $7183: $8f
	sub l                                            ; $7184: $95
	adc a                                            ; $7185: $8f
	ld e, h                                          ; $7186: $5c
	ld b, c                                          ; $7187: $41
	ld b, c                                          ; $7188: $41
	db $e3                                           ; $7189: $e3
	xor h                                            ; $718a: $ac
	jr nc, jr_027_711d                               ; $718b: $30 $90

	adc c                                            ; $718d: $89
	db $e3                                           ; $718e: $e3

Call_027_718f:
	call c, $dfff                                    ; $718f: $dc $ff $df
	ld a, a                                          ; $7192: $7f
	add b                                            ; $7193: $80
	and a                                            ; $7194: $a7
	call $ef3f                                       ; $7195: $cd $3f $ef
	ld e, [hl]                                       ; $7198: $5e

Call_027_7199:
	db $fd                                           ; $7199: $fd
	rst $38                                          ; $719a: $ff
	rst SubAFromDE                                          ; $719b: $df

jr_027_719c:
	rst $38                                          ; $719c: $ff
	cp $f8                                           ; $719d: $fe $f8
	ldh a, [$e1]                                     ; $719f: $f0 $e1
	jp Jump_027_60c2                                 ; $71a1: $c3 $c2 $60


jr_027_71a4:
	cp $e7                                           ; $71a4: $fe $e7
	sbc l                                            ; $71a6: $9d
	ld a, a                                          ; $71a7: $7f
	rst $38                                          ; $71a8: $ff
	rst $38                                          ; $71a9: $ff
	rst AddAOntoHL                                          ; $71aa: $ef
	rst $38                                          ; $71ab: $ff
	nop                                              ; $71ac: $00
	rra                                              ; $71ad: $1f
	ld a, [hl]                                       ; $71ae: $7e
	ldh [$80], a                                     ; $71af: $e0 $80
	nop                                              ; $71b1: $00
	rra                                              ; $71b2: $1f
	sbc e                                            ; $71b3: $9b
	ccf                                              ; $71b4: $3f
	inc bc                                           ; $71b5: $03
	add b                                            ; $71b6: $80
	add b                                            ; $71b7: $80
	sbc $c0                                          ; $71b8: $de $c0
	sbc l                                            ; $71ba: $9d
	ld b, b                                          ; $71bb: $40
	ret nz                                           ; $71bc: $c0

	ei                                               ; $71bd: $fb
	ld a, a                                          ; $71be: $7f
	db $f4                                           ; $71bf: $f4
	sbc l                                            ; $71c0: $9d
	cp c                                             ; $71c1: $b9
	rst FarCall                                          ; $71c2: $f7
	sbc $1f                                          ; $71c3: $de $1f
	sbc d                                            ; $71c5: $9a
	dec c                                            ; $71c6: $0d
	dec bc                                           ; $71c7: $0b
	rrca                                             ; $71c8: $0f
	rst SubAFromBC                                          ; $71c9: $e7
	ld l, a                                          ; $71ca: $6f
	cp $8a                                           ; $71cb: $fe $8a
	inc bc                                           ; $71cd: $03
	rlca                                             ; $71ce: $07
	rlca                                             ; $71cf: $07
	ld e, a                                          ; $71d0: $5f
	di                                               ; $71d1: $f3
	db $fd                                           ; $71d2: $fd
	rst $38                                          ; $71d3: $ff
	rst $38                                          ; $71d4: $ff
	rst FarCall                                          ; $71d5: $f7
	db $fd                                           ; $71d6: $fd
	rrca                                             ; $71d7: $0f
	ld sp, hl                                        ; $71d8: $f9
	db $fc                                           ; $71d9: $fc
	ld c, $02                                        ; $71da: $0e $02
	nop                                              ; $71dc: $00
	ld hl, sp-$02                                    ; $71dd: $f8 $fe
	sbc a                                            ; $71df: $9f
	ld e, $cf                                        ; $71e0: $1e $cf
	call c, $80ff                                    ; $71e2: $dc $ff $80
	xor a                                            ; $71e5: $af
	rst $38                                          ; $71e6: $ff
	rst $38                                          ; $71e7: $ff
	ccf                                              ; $71e8: $3f
	ld [de], a                                       ; $71e9: $12
	inc de                                           ; $71ea: $13
	ld de, $f911                                     ; $71eb: $11 $11 $f9
	call nc, $fffa                                   ; $71ee: $d4 $fa $ff
	xor a                                            ; $71f1: $af
	dec h                                            ; $71f2: $25
	ld h, l                                          ; $71f3: $65
	or b                                             ; $71f4: $b0
	sub d                                            ; $71f5: $92
	ld a, a                                          ; $71f6: $7f
	rst FarCall                                          ; $71f7: $f7
	di                                               ; $71f8: $f3
	ld [hl], c                                       ; $71f9: $71
	ld hl, sp-$08                                    ; $71fa: $f8 $f8
	db $fc                                           ; $71fc: $fc
	db $fc                                           ; $71fd: $fc
	ld e, b                                          ; $71fe: $58
	ld c, $2c                                        ; $71ff: $0e $2c
	rlca                                             ; $7201: $07
	sub e                                            ; $7202: $93
	db $d3                                           ; $7203: $d3
	add b                                            ; $7204: $80
	set 5, b                                         ; $7205: $cb $e8
	adc h                                            ; $7207: $8c
	call z, $e2c6                                    ; $7208: $cc $c6 $e2
	db $e3                                           ; $720b: $e3
	pop hl                                           ; $720c: $e1
	ld [hl], c                                       ; $720d: $71
	ld [hl], c                                       ; $720e: $71
	jp $2061                                         ; $720f: $c3 $61 $20


	jr nc, jr_027_71a4                               ; $7212: $30 $90

	ret c                                            ; $7214: $d8

	ld hl, sp-$44                                    ; $7215: $f8 $bc
	ld a, [hl]                                       ; $7217: $7e
	ccf                                              ; $7218: $3f
	ccf                                              ; $7219: $3f
	rra                                              ; $721a: $1f
	rra                                              ; $721b: $1f
	adc a                                            ; $721c: $8f
	rst GetHLinHL                                          ; $721d: $cf
	rst SubAFromBC                                          ; $721e: $e7
	add [hl]                                         ; $721f: $86
	adc $4d                                          ; $7220: $ce $4d
	ld c, c                                          ; $7222: $49
	inc bc                                           ; $7223: $03
	sbc l                                            ; $7224: $9d
	rlca                                             ; $7225: $07
	ld b, $63                                        ; $7226: $06 $63
	jr nc, @-$64                                     ; $7228: $30 $9a

	ret nz                                           ; $722a: $c0

	ldh [$f0], a                                     ; $722b: $e0 $f0
	jr nc, jr_027_724f                               ; $722d: $30 $20

	ld e, e                                          ; $722f: $5b
	jr nz, jr_027_723c                               ; $7230: $20 $0a

	nop                                              ; $7232: $00
	sbc l                                            ; $7233: $9d
	inc sp                                           ; $7234: $33
	ld d, h                                          ; $7235: $54
	db $dd                                           ; $7236: $dd
	ld b, h                                          ; $7237: $44
	sbc l                                            ; $7238: $9d
	ld b, l                                          ; $7239: $45
	inc sp                                           ; $723a: $33
	dec b                                            ; $723b: $05

jr_027_723c:
	add c                                            ; $723c: $81
	sub d                                            ; $723d: $92
	ld a, a                                          ; $723e: $7f
	ld l, a                                          ; $723f: $6f
	xor $dd                                          ; $7240: $ee $dd
	cp e                                             ; $7242: $bb
	dec sp                                           ; $7243: $3b
	inc de                                           ; $7244: $13
	inc bc                                           ; $7245: $03
	db $fc                                           ; $7246: $fc
	sub b                                            ; $7247: $90
	ld de, $7f33                                     ; $7248: $11 $33 $7f
	sbc $ff                                          ; $724b: $de $ff
	ld [hl], a                                       ; $724d: $77
	db $fc                                           ; $724e: $fc

jr_027_724f:
	sub [hl]                                         ; $724f: $96
	cp a                                             ; $7250: $bf
	adc a                                            ; $7251: $8f
	ld e, $18                                        ; $7252: $1e $18
	ld sp, hl                                        ; $7254: $f9
	pop hl                                           ; $7255: $e1
	jp $efcf                                         ; $7256: $c3 $cf $ef


	sbc $ff                                          ; $7259: $de $ff
	add b                                            ; $725b: $80
	cp $f7                                           ; $725c: $fe $f7
	db $db                                           ; $725e: $db
	db $fd                                           ; $725f: $fd

jr_027_7260:
	rst FarCall                                          ; $7260: $f7
	cp $f8                                           ; $7261: $fe $f8
	rst AddAOntoHL                                          ; $7263: $ef
	rst $38                                          ; $7264: $ff
	ld hl, sp-$19                                    ; $7265: $f8 $e7
	cp $f8                                           ; $7267: $fe $f8
	pop hl                                           ; $7269: $e1
	rst JumpTable                                          ; $726a: $c7
	sbc a                                            ; $726b: $9f
	ldh a, [$7f]                                     ; $726c: $f0 $7f
	cp a                                             ; $726e: $bf
	ldh [hDisp0_OBP1], a                                     ; $726f: $e0 $87
	jr jr_027_7260                                   ; $7271: $18 $ed

	cp d                                             ; $7273: $ba
	rrca                                             ; $7274: $0f
	rst $38                                          ; $7275: $ff
	ret nz                                           ; $7276: $c0

	rra                                              ; $7277: $1f
	ld a, a                                          ; $7278: $7f
	rst $38                                          ; $7279: $ff
	di                                               ; $727a: $f3
	sub e                                            ; $727b: $93
	rst JumpTable                                          ; $727c: $c7
	sbc l                                            ; $727d: $9d
	cp d                                             ; $727e: $ba
	rst AddAOntoHL                                          ; $727f: $ef
	or a                                             ; $7280: $b7
	sbc $bb                                          ; $7281: $de $bb
	xor l                                            ; $7283: $ad
	or $f3                                           ; $7284: $f6 $f3
	rst SubAFromBC                                          ; $7286: $e7
	call c, $e17b                                    ; $7287: $dc $7b $e1
	sub e                                            ; $728a: $93
	sbc $f9                                          ; $728b: $de $f9
	xor l                                            ; $728d: $ad
	dec l                                            ; $728e: $2d
	ld d, [hl]                                       ; $728f: $56

jr_027_7290:
	ld e, e                                          ; $7290: $5b
	db $db                                           ; $7291: $db
	ld c, c                                          ; $7292: $49
	ld d, e                                          ; $7293: $53
	jp nc, $f6f6                                     ; $7294: $d2 $f6 $f6

	sbc $ed                                          ; $7297: $de $ed
	sbc $ff                                          ; $7299: $de $ff
	add b                                            ; $729b: $80
	cp h                                             ; $729c: $bc
	xor h                                            ; $729d: $ac
	ld hl, sp+$58                                    ; $729e: $f8 $58
	cp b                                             ; $72a0: $b8
	or b                                             ; $72a1: $b0
	ld [hl], b                                       ; $72a2: $70
	ld hl, sp-$38                                    ; $72a3: $f8 $c8
	ret c                                            ; $72a5: $d8

	sub b                                            ; $72a6: $90
	or b                                             ; $72a7: $b0
	ld h, b                                          ; $72a8: $60
	ld h, b                                          ; $72a9: $60
	ret nz                                           ; $72aa: $c0

	add b                                            ; $72ab: $80
	push hl                                          ; $72ac: $e5
	ld h, a                                          ; $72ad: $67
	ld [hl], e                                       ; $72ae: $73
	ld a, [hl-]                                      ; $72af: $3a
	add hl, sp                                       ; $72b0: $39
	dec e                                            ; $72b1: $1d
	ld c, $07                                        ; $72b2: $0e $07
	dec sp                                           ; $72b4: $3b
	add hl, sp                                       ; $72b5: $39
	dec e                                            ; $72b6: $1d
	dec c                                            ; $72b7: $0d
	ld c, $06                                        ; $72b8: $0e $06
	inc bc                                           ; $72ba: $03
	add b                                            ; $72bb: $80
	ld bc, $9d3d                                     ; $72bc: $01 $3d $9d
	adc $e7                                          ; $72bf: $ce $e7
	push af                                          ; $72c1: $f5
	ld a, e                                          ; $72c2: $7b
	ld a, l                                          ; $72c3: $7d
	ld a, [hl]                                       ; $72c4: $7e
	add $e6                                          ; $72c5: $c6 $e6
	di                                               ; $72c7: $f3
	cp e                                             ; $72c8: $bb
	sbc e                                            ; $72c9: $9b
	call $c3c6                                       ; $72ca: $cd $c6 $c3
	call $e6cf                                       ; $72cd: $cd $cf $e6
	db $e3                                           ; $72d0: $e3
	pop af                                           ; $72d1: $f1
	ld sp, hl                                        ; $72d2: $f9
	db $fc                                           ; $72d3: $fc
	cp $73                                           ; $72d4: $fe $73
	ld [hl], c                                       ; $72d6: $71
	add hl, sp                                       ; $72d7: $39
	inc a                                            ; $72d8: $3c
	ld e, $9e                                        ; $72d9: $1e $9e
	sub d                                            ; $72db: $92
	rst GetHLinHL                                          ; $72dc: $cf
	xor e                                            ; $72dd: $ab
	dec sp                                           ; $72de: $3b
	inc a                                            ; $72df: $3c
	sbc [hl]                                         ; $72e0: $9e
	sbc e                                            ; $72e1: $9b
	ld c, [hl]                                       ; $72e2: $4e
	rst SubAFromBC                                          ; $72e3: $e7
	di                                               ; $72e4: $f3
	ld a, c                                          ; $72e5: $79
	call z, $e7cf                                    ; $72e6: $cc $cf $e7
	ld a, e                                          ; $72e9: $7b
	ld a, [$3d80]                                    ; $72ea: $fa $80 $3d
	cp [hl]                                          ; $72ed: $be
	cp a                                             ; $72ee: $bf
	ret c                                            ; $72ef: $d8

	jr z, jr_027_7290                                ; $72f0: $28 $9e

	ld l, c                                          ; $72f2: $69
	dec de                                           ; $72f3: $1b
	add hl, de                                       ; $72f4: $19
	sbc b                                            ; $72f5: $98
	ld l, a                                          ; $72f6: $6f
	ccf                                              ; $72f7: $3f
	rst SubAFromDE                                          ; $72f8: $df
	rst AddAOntoHL                                          ; $72f9: $ef
	rst $38                                          ; $72fa: $ff
	db $fc                                           ; $72fb: $fc
	cp $ff                                           ; $72fc: $fe $ff
	add h                                            ; $72fe: $84
	ldh [c], a                                       ; $72ff: $e2
	ld e, c                                          ; $7300: $59
	ld a, $1b                                        ; $7301: $3e $1b
	rst JumpTable                                          ; $7303: $c7
	xor e                                            ; $7304: $ab
	or l                                             ; $7305: $b5
	ld hl, sp-$04                                    ; $7306: $f8 $fc
	cp [hl]                                          ; $7308: $be
	rst GetHLinHL                                          ; $7309: $cf
	rst SubAFromBC                                          ; $730a: $e7
	add b                                            ; $730b: $80
	di                                               ; $730c: $f3
	ld [hl], c                                       ; $730d: $71
	jr @+$01                                         ; $730e: $18 $ff

	ld a, a                                          ; $7310: $7f
	cp [hl]                                          ; $7311: $be
	db $dd                                           ; $7312: $dd
	rst $38                                          ; $7313: $ff
	cp $9f                                           ; $7314: $fe $9f
	adc a                                            ; $7316: $8f
	ld a, a                                          ; $7317: $7f
	ccf                                              ; $7318: $3f
	rra                                              ; $7319: $1f
	rrca                                             ; $731a: $0f
	add a                                            ; $731b: $87
	db $e3                                           ; $731c: $e3
	pop af                                           ; $731d: $f1
	db $fd                                           ; $731e: $fd
	rst $38                                          ; $731f: $ff
	dec h                                            ; $7320: $25
	rst $38                                          ; $7321: $ff
	rst $38                                          ; $7322: $ff
	db $fc                                           ; $7323: $fc
	xor a                                            ; $7324: $af
	rlca                                             ; $7325: $07
	dec b                                            ; $7326: $05
	sbc $ff                                          ; $7327: $de $ff
	rst SubAFromBC                                          ; $7329: $e7
	add e                                            ; $732a: $83
	adc e                                            ; $732b: $8b
	rlca                                             ; $732c: $07
	ld e, [hl]                                       ; $732d: $5e
	cp $fe                                           ; $732e: $fe $fe
	rst AddAOntoHL                                          ; $7330: $ef
	rst $38                                          ; $7331: $ff
	ld sp, hl                                        ; $7332: $f9
	ld e, $bf                                        ; $7333: $1e $bf
	ld sp, hl                                        ; $7335: $f9
	ld hl, sp-$20                                    ; $7336: $f8 $e0
	inc de                                           ; $7338: $13
	sbc a                                            ; $7339: $9f
	rst AddAOntoHL                                          ; $733a: $ef
	rst SubAFromBC                                          ; $733b: $e7
	ld c, l                                          ; $733c: $4d
	ld h, [hl]                                       ; $733d: $66
	daa                                              ; $733e: $27
	ld a, a                                          ; $733f: $7f
	add hl, bc                                       ; $7340: $09
	nop                                              ; $7341: $00
	sbc [hl]                                         ; $7342: $9e
	ld [hl+], a                                      ; $7343: $22
	call c, $9d44                                    ; $7344: $dc $44 $9d
	ld b, l                                          ; $7347: $45
	ld [hl+], a                                      ; $7348: $22
	rst FarCall                                          ; $7349: $f7
	add b                                            ; $734a: $80
	sbc l                                            ; $734b: $9d
	rst $38                                          ; $734c: $ff
	cp $db                                           ; $734d: $fe $db
	rst $38                                          ; $734f: $ff
	sub l                                            ; $7350: $95
	inc de                                           ; $7351: $13
	inc sp                                           ; $7352: $33
	and e                                            ; $7353: $a3
	dec d                                            ; $7354: $15
	inc l                                            ; $7355: $2c
	jr z, jr_027_7361                                ; $7356: $28 $09

	cp a                                             ; $7358: $bf
	rst $38                                          ; $7359: $ff
	ccf                                              ; $735a: $3f
	db $dd                                           ; $735b: $dd

jr_027_735c:
	rst $38                                          ; $735c: $ff
	ld a, a                                          ; $735d: $7f
	ld sp, hl                                        ; $735e: $f9
	rst SubAFromDE                                          ; $735f: $df
	db $fc                                           ; $7360: $fc

jr_027_7361:
	sub [hl]                                         ; $7361: $96
	or b                                             ; $7362: $b0
	ld bc, $77a3                                     ; $7363: $01 $a3 $77
	db $fd                                           ; $7366: $fd
	ld hl, sp-$02                                    ; $7367: $f8 $fe
	rst $38                                          ; $7369: $ff
	pop af                                           ; $736a: $f1
	sbc $ff                                          ; $736b: $de $ff
	sub h                                            ; $736d: $94
	pop af                                           ; $736e: $f1
	di                                               ; $736f: $f3
	ld h, e                                          ; $7370: $63
	nop                                              ; $7371: $00
	adc [hl]                                         ; $7372: $8e
	ld [hl], c                                       ; $7373: $71
	jr z, jr_027_73f2                                ; $7374: $28 $7c

	rst $38                                          ; $7376: $ff
	rst GetHLinHL                                          ; $7377: $cf
	ld a, a                                          ; $7378: $7f
	jp c, $dfff                                      ; $7379: $da $ff $df

	push af                                          ; $737c: $f5
	add b                                            ; $737d: $80
	daa                                              ; $737e: $27
	rst JumpTable                                          ; $737f: $c7
	ld h, e                                          ; $7380: $63
	inc hl                                           ; $7381: $23
	daa                                              ; $7382: $27
	rst $38                                          ; $7383: $ff
	adc c                                            ; $7384: $89
	sub e                                            ; $7385: $93
	ld [de], a                                       ; $7386: $12
	inc h                                            ; $7387: $24
	jr nz, jr_027_73cb                               ; $7388: $20 $41

	jp $fe8b                                         ; $738a: $c3 $8b $fe


	db $fc                                           ; $738d: $fc
	db $fd                                           ; $738e: $fd
	ei                                               ; $738f: $fb
	rst $38                                          ; $7390: $ff
	rst $38                                          ; $7391: $ff
	cp $fc                                           ; $7392: $fe $fc
	sub c                                            ; $7394: $91
	ld [de], a                                       ; $7395: $12
	dec de                                           ; $7396: $1b
	ld h, [hl]                                       ; $7397: $66
	and d                                            ; $7398: $a2
	ldh [c], a                                       ; $7399: $e2
	xor l                                            ; $739a: $ad
	ld l, l                                          ; $739b: $6d
	ld a, e                                          ; $739c: $7b
	add b                                            ; $739d: $80
	ei                                               ; $739e: $fb
	ldh a, [c]                                       ; $739f: $f2
	ldh a, [c]                                       ; $73a0: $f2
	or $36                                           ; $73a1: $f6 $36
	halt                                             ; $73a3: $76
	or $68                                           ; $73a4: $f6 $68
	ld [hl+], a                                      ; $73a6: $22
	ld b, a                                          ; $73a7: $47
	ld d, e                                          ; $73a8: $53
	jp $8e4e                                         ; $73a9: $c3 $4e $8e


	or h                                             ; $73ac: $b4
	inc sp                                           ; $73ad: $33
	ld [hl], e                                       ; $73ae: $73
	ld [hl], e                                       ; $73af: $73
	ld h, a                                          ; $73b0: $67
	ld h, [hl]                                       ; $73b1: $66
	db $e4                                           ; $73b2: $e4
	db $e4                                           ; $73b3: $e4
	call z, $32a5                                    ; $73b4: $cc $a5 $32
	ld e, b                                          ; $73b7: $58
	add hl, hl                                       ; $73b8: $29
	adc h                                            ; $73b9: $8c
	sub h                                            ; $73ba: $94
	add $cf                                          ; $73bb: $c6 $cf
	adc a                                            ; $73bd: $8f
	jr c, jr_027_735c                                ; $73be: $38 $9c

	adc [hl]                                         ; $73c0: $8e
	adc $e7                                          ; $73c1: $ce $e7
	rst SubAFromBC                                          ; $73c3: $e7
	ld [hl], e                                       ; $73c4: $73
	ld [hl], e                                       ; $73c5: $73
	adc h                                            ; $73c6: $8c
	ld d, h                                          ; $73c7: $54
	add $6e                                          ; $73c8: $c6 $6e
	ld [hl], a                                       ; $73ca: $77

jr_027_73cb:
	or a                                             ; $73cb: $b7
	ld a, e                                          ; $73cc: $7b
	ld a, e                                          ; $73cd: $7b
	ld a, e                                          ; $73ce: $7b
	db $f4                                           ; $73cf: $f4
	add b                                            ; $73d0: $80
	inc sp                                           ; $73d1: $33
	add hl, de                                       ; $73d2: $19
	add hl, de                                       ; $73d3: $19
	adc h                                            ; $73d4: $8c
	adc h                                            ; $73d5: $8c
	db $10                                           ; $73d6: $10
	or d                                             ; $73d7: $b2
	ld [$1459], sp                                   ; $73d8: $08 $59 $14
	inc a                                            ; $73db: $3c
	sbc d                                            ; $73dc: $9a
	sbc [hl]                                         ; $73dd: $9e
	inc a                                            ; $73de: $3c
	inc e                                            ; $73df: $1c
	sbc [hl]                                         ; $73e0: $9e
	adc [hl]                                         ; $73e1: $8e
	rst GetHLinHL                                          ; $73e2: $cf
	rst JumpTable                                          ; $73e3: $c7
	rst SubAFromBC                                          ; $73e4: $e7
	db $e3                                           ; $73e5: $e3
	xor e                                            ; $73e6: $ab
	jp nc, Jump_027_7a69                             ; $73e7: $d2 $69 $7a

	ld [hl], a                                       ; $73ea: $77
	db $fd                                           ; $73eb: $fd
	ld a, [hl]                                       ; $73ec: $7e
	ld l, a                                          ; $73ed: $6f
	rst JumpTable                                          ; $73ee: $c7
	ld h, c                                          ; $73ef: $61
	adc c                                            ; $73f0: $89
	ld [hl], b                                       ; $73f1: $70

jr_027_73f2:
	inc a                                            ; $73f2: $3c
	ld a, $13                                        ; $73f3: $3e $13
	sub c                                            ; $73f5: $91
	sbc b                                            ; $73f6: $98
	ld e, a                                          ; $73f7: $5f
	sbc a                                            ; $73f8: $9f
	ld c, a                                          ; $73f9: $4f
	xor a                                            ; $73fa: $af
	ld e, l                                          ; $73fb: $5d
	ld [$70f8], a                                    ; $73fc: $ea $f8 $70
	cp a                                             ; $73ff: $bf
	rst $38                                          ; $7400: $ff
	rst $38                                          ; $7401: $ff
	ld a, a                                          ; $7402: $7f
	ld a, $1c                                        ; $7403: $3e $1c
	adc a                                            ; $7405: $8f
	rst GetHLinHL                                          ; $7406: $cf
	db $dd                                           ; $7407: $dd
	rst $38                                          ; $7408: $ff
	sbc e                                            ; $7409: $9b
	rst AddAOntoHL                                          ; $740a: $ef
	dec de                                           ; $740b: $1b
	push bc                                          ; $740c: $c5
	ld [de], a                                       ; $740d: $12
	db $dd                                           ; $740e: $dd
	rst $38                                          ; $740f: $ff
	sbc d                                            ; $7410: $9a
	rra                                              ; $7411: $1f
	rlca                                             ; $7412: $07
	inc bc                                           ; $7413: $03
	pop hl                                           ; $7414: $e1
	rst $38                                          ; $7415: $ff
	ld [hl], a                                       ; $7416: $77
	ld e, a                                          ; $7417: $5f
	rst SubAFromDE                                          ; $7418: $df
	cp $9d                                           ; $7419: $fe $9d
	db $fd                                           ; $741b: $fd
	db $fc                                           ; $741c: $fc
	ld [hl], a                                       ; $741d: $77
	ld sp, hl                                        ; $741e: $f9
	sbc l                                            ; $741f: $9d
	di                                               ; $7420: $f3
	sub a                                            ; $7421: $97
	ld a, e                                          ; $7422: $7b
	ei                                               ; $7423: $fb
	sub d                                            ; $7424: $92
	ld a, a                                          ; $7425: $7f
	ld a, e                                          ; $7426: $7b
	ei                                               ; $7427: $fb
	rst $38                                          ; $7428: $ff
	ei                                               ; $7429: $fb
	cp $ed                                           ; $742a: $fe $ed
	pop af                                           ; $742c: $f1
	db $db                                           ; $742d: $db
	adc [hl]                                         ; $742e: $8e
	inc e                                            ; $742f: $1c
	inc l                                            ; $7430: $2c
	or $db                                           ; $7431: $f6 $db
	rst $38                                          ; $7433: $ff
	sub h                                            ; $7434: $94
	rst SubAFromDE                                          ; $7435: $df
	rst $38                                          ; $7436: $ff
	ld a, [hl]                                       ; $7437: $7e
	ld [$ff9b], sp                                   ; $7438: $08 $9b $ff
	scf                                              ; $743b: $37
	ld sp, $e870                                     ; $743c: $31 $70 $e8
	di                                               ; $743f: $f3
	add hl, bc                                       ; $7440: $09
	nop                                              ; $7441: $00
	rst SubAFromDE                                          ; $7442: $df
	ld [hl+], a                                      ; $7443: $22
	db $dd                                           ; $7444: $dd
	ld b, h                                          ; $7445: $44
	sbc l                                            ; $7446: $9d
	ld b, d                                          ; $7447: $42
	ld [hl+], a                                      ; $7448: $22
	ldh a, [c]                                       ; $7449: $f2
	add b                                            ; $744a: $80
	rst SubAFromDE                                          ; $744b: $df
	rst $38                                          ; $744c: $ff
	sbc [hl]                                         ; $744d: $9e
	rst FarCall                                          ; $744e: $f7
	call c, $93ff                                    ; $744f: $dc $ff $93
	or a                                             ; $7452: $b7
	rst $38                                          ; $7453: $ff
	rst $38                                          ; $7454: $ff

jr_027_7455:
	pop af                                           ; $7455: $f1
	pop af                                           ; $7456: $f1
	rrca                                             ; $7457: $0f
	rlca                                             ; $7458: $07
	and [hl]                                         ; $7459: $a6
	rst FarCall                                          ; $745a: $f7
	rst AddAOntoHL                                          ; $745b: $ef
	cp a                                             ; $745c: $bf
	sbc e                                            ; $745d: $9b
	ld a, e                                          ; $745e: $7b
	db $f4                                           ; $745f: $f4
	jp c, $99ff                                      ; $7460: $da $ff $99

	dec e                                            ; $7463: $1d
	ld sp, $f9ff                                     ; $7464: $31 $ff $f9
	ccf                                              ; $7467: $3f
	rst SubAFromDE                                          ; $7468: $df
	sbc $ff                                          ; $7469: $de $ff
	add b                                            ; $746b: $80
	ei                                               ; $746c: $fb
	rst $38                                          ; $746d: $ff
	rst $38                                          ; $746e: $ff
	ld hl, sp-$0f                                    ; $746f: $f8 $f1
	rla                                              ; $7471: $17
	dec de                                           ; $7472: $1b
	ld [hl], e                                       ; $7473: $73
	adc a                                            ; $7474: $8f
	rst SubAFromBC                                          ; $7475: $e7
	rst AddAOntoHL                                          ; $7476: $ef
	rst $38                                          ; $7477: $ff
	rst $38                                          ; $7478: $ff
	db $fc                                           ; $7479: $fc
	ld hl, sp-$0d                                    ; $747a: $f8 $f3
	or a                                             ; $747c: $b7
	ld hl, sp-$01                                    ; $747d: $f8 $ff
	rst $38                                          ; $747f: $ff

jr_027_7480:
	rst GetHLinHL                                          ; $7480: $cf
	add a                                            ; $7481: $87
	ld c, a                                          ; $7482: $4f
	rst $38                                          ; $7483: $ff
	rst $38                                          ; $7484: $ff
	ldh [c], a                                       ; $7485: $e2
	push bc                                          ; $7486: $c5
	set 2, d                                         ; $7487: $cb $d2
	and c                                            ; $7489: $a1
	and d                                            ; $748a: $a2
	sbc c                                            ; $748b: $99
	call nz, $ffc5                                   ; $748c: $c4 $c5 $ff
	cp $fc                                           ; $748f: $fe $fc
	db $fd                                           ; $7491: $fd
	sbc $ff                                          ; $7492: $de $ff
	add b                                            ; $7494: $80
	cp $ed                                           ; $7495: $fe $ed
	cp [hl]                                          ; $7497: $be
	ld a, l                                          ; $7498: $7d
	or [hl]                                          ; $7499: $b6
	ld l, c                                          ; $749a: $69
	ld l, b                                          ; $749b: $68
	push af                                          ; $749c: $f5
	db $d3                                           ; $749d: $d3
	inc de                                           ; $749e: $13
	ld h, e                                          ; $749f: $63
	add $cc                                          ; $74a0: $c6 $cc
	sbc h                                            ; $74a2: $9c
	sbc l                                            ; $74a3: $9d
	add hl, de                                       ; $74a4: $19
	add hl, sp                                       ; $74a5: $39
	cp a                                             ; $74a6: $bf
	cp c                                             ; $74a7: $b9
	ld c, l                                          ; $74a8: $4d
	sbc d                                            ; $74a9: $9a
	jr nc, jr_027_7480                               ; $74aa: $30 $d4

	inc a                                            ; $74ac: $3c
	sbc c                                            ; $74ad: $99
	rst JumpTable                                          ; $74ae: $c7
	rlca                                             ; $74af: $07
	ccf                                              ; $74b0: $3f
	ld h, a                                          ; $74b1: $67
	rst GetHLinHL                                          ; $74b2: $cf
	adc e                                            ; $74b3: $8b
	add b                                            ; $74b4: $80
	sub e                                            ; $74b5: $93
	ld [hl-], a                                      ; $74b6: $32
	dec a                                            ; $74b7: $3d
	cp e                                             ; $74b8: $bb
	rra                                              ; $74b9: $1f
	add hl, de                                       ; $74ba: $19
	ld [hl], h                                       ; $74bb: $74
	ld h, [hl]                                       ; $74bc: $66
	inc de                                           ; $74bd: $13
	ret                                              ; $74be: $c9


	cp $c7                                           ; $74bf: $fe $c7
	ldh [$fe], a                                     ; $74c1: $e0 $fe
	adc a                                            ; $74c3: $8f
	add e                                            ; $74c4: $83
	pop hl                                           ; $74c5: $e1
	ld [hl], c                                       ; $74c6: $71
	ret c                                            ; $74c7: $d8

	ld [hl], h                                       ; $74c8: $74
	sub [hl]                                         ; $74c9: $96
	ld c, e                                          ; $74ca: $4b
	and l                                            ; $74cb: $a5
	ld d, d                                          ; $74cc: $52
	jr jr_027_74f8                                   ; $74cd: $18 $29

	ccf                                              ; $74cf: $3f
	adc a                                            ; $74d0: $8f
	db $e3                                           ; $74d1: $e3

jr_027_74d2:
	ld [hl], c                                       ; $74d2: $71
	jr c, jr_027_7455                                ; $74d3: $38 $80

	sbc h                                            ; $74d5: $9c
	adc $ce                                          ; $74d6: $ce $ce
	or [hl]                                          ; $74d8: $b6
	ld e, a                                          ; $74d9: $5f
	dec l                                            ; $74da: $2d
	ld de, $cb86                                     ; $74db: $11 $86 $cb
	ld b, c                                          ; $74de: $41
	ld h, l                                          ; $74df: $65
	jr @-$76                                         ; $74e0: $18 $88

	add $e7                                          ; $74e2: $c6 $e7
	di                                               ; $74e4: $f3
	ld [hl], c                                       ; $74e5: $71
	ld a, c                                          ; $74e6: $79
	jr c, @+$39                                      ; $74e7: $38 $37

	sbc e                                            ; $74e9: $9b
	db $ed                                           ; $74ea: $ed
	cp $7f                                           ; $74eb: $fe $7f
	ld e, a                                          ; $74ed: $5f
	ld l, e                                          ; $74ee: $6b
	push de                                          ; $74ef: $d5
	jr jr_027_74fe                                   ; $74f0: $18 $0c

	ld b, $83                                        ; $74f2: $06 $83
	sub l                                            ; $74f4: $95
	pop hl                                           ; $74f5: $e1
	or b                                             ; $74f6: $b0
	sbc h                                            ; $74f7: $9c

jr_027_74f8:
	adc [hl]                                         ; $74f8: $8e
	rst $38                                          ; $74f9: $ff
	ld a, a                                          ; $74fa: $7f
	rst $38                                          ; $74fb: $ff
	cp a                                             ; $74fc: $bf
	ccf                                              ; $74fd: $3f

jr_027_74fe:
	sbc a                                            ; $74fe: $9f
	ld [hl], a                                       ; $74ff: $77
	ld l, l                                          ; $7500: $6d
	rst SubAFromDE                                          ; $7501: $df
	ld a, a                                          ; $7502: $7f
	ld a, e                                          ; $7503: $7b
	db $fc                                           ; $7504: $fc
	sbc [hl]                                         ; $7505: $9e
	ccf                                              ; $7506: $3f
	jp c, Jump_027_7fff                              ; $7507: $da $ff $7f

	db $f4                                           ; $750a: $f4
	sbc b                                            ; $750b: $98
	ei                                               ; $750c: $fb
	di                                               ; $750d: $f3
	add c                                            ; $750e: $81
	ld de, $ffdb                                     ; $750f: $11 $db $ff
	cp a                                             ; $7512: $bf
	call c, Call_027_7bff                            ; $7513: $dc $ff $7b
	halt                                             ; $7516: $76
	sub l                                            ; $7517: $95
	jr jr_027_74d2                                   ; $7518: $18 $b8

	db $fc                                           ; $751a: $fc
	ld a, [hl]                                       ; $751b: $7e
	ld a, a                                          ; $751c: $7f
	rst $38                                          ; $751d: $ff
	ld a, b                                          ; $751e: $78
	ldh a, [$df]                                     ; $751f: $f0 $df
	sbc a                                            ; $7521: $9f
	ld h, a                                          ; $7522: $67
	sbc $94                                          ; $7523: $de $94
	inc a                                            ; $7525: $3c
	ld b, h                                          ; $7526: $44
	adc l                                            ; $7527: $8d
	sub b                                            ; $7528: $90
	ld h, b                                          ; $7529: $60
	ld h, l                                          ; $752a: $65
	ld e, $e7                                        ; $752b: $1e $e7
	db $fc                                           ; $752d: $fc
	rst $38                                          ; $752e: $ff
	rst AddAOntoHL                                          ; $752f: $ef
	ld a, e                                          ; $7530: $7b
	inc c                                            ; $7531: $0c
	ld a, a                                          ; $7532: $7f
	ld hl, sp-$67                                    ; $7533: $f8 $99
	adc h                                            ; $7535: $8c
	add e                                            ; $7536: $83
	sbc a                                            ; $7537: $9f
	add hl, de                                       ; $7538: $19
	rst SubAFromDE                                          ; $7539: $df
	jr c, @+$0a                                      ; $753a: $38 $08

	nop                                              ; $753c: $00
	rst SubAFromDE                                          ; $753d: $df
	ld [hl+], a                                      ; $753e: $22
	db $dd                                           ; $753f: $dd
	ld b, h                                          ; $7540: $44
	rst SubAFromDE                                          ; $7541: $df
	ld [hl+], a                                      ; $7542: $22
	ld [$d980], a                                    ; $7543: $ea $80 $d9
	rst $38                                          ; $7546: $ff
	adc c                                            ; $7547: $89
	ld c, c                                          ; $7548: $49
	ld hl, sp-$08                                    ; $7549: $f8 $f8
	or b                                             ; $754b: $b0
	ld [$3bdb], sp                                   ; $754c: $08 $db $3b
	inc hl                                           ; $754f: $23
	rst $38                                          ; $7550: $ff
	ei                                               ; $7551: $fb
	di                                               ; $7552: $f3
	rst $38                                          ; $7553: $ff
	rst $38                                          ; $7554: $ff
	ccf                                              ; $7555: $3f
	sbc a                                            ; $7556: $9f
	rst $38                                          ; $7557: $ff
	db $fd                                           ; $7558: $fd
	ld a, $7c                                        ; $7559: $3e $7c
	ld hl, sp-$33                                    ; $755b: $f8 $cd
	rst GetHLinHL                                          ; $755d: $cf
	jp c, $98ff                                      ; $755e: $da $ff $98

	cp a                                             ; $7561: $bf
	push hl                                          ; $7562: $e5
	rst $38                                          ; $7563: $ff
	rra                                              ; $7564: $1f
	ccf                                              ; $7565: $3f
	rra                                              ; $7566: $1f
	ccf                                              ; $7567: $3f
	reti                                             ; $7568: $d9


	rst $38                                          ; $7569: $ff
	sbc c                                            ; $756a: $99
	ld a, a                                          ; $756b: $7f
	rst $38                                          ; $756c: $ff
	rst $38                                          ; $756d: $ff
	rst AddAOntoHL                                          ; $756e: $ef
	jp $de85                                         ; $756f: $c3 $85 $de


	rst $38                                          ; $7572: $ff
	sub h                                            ; $7573: $94
	db $fc                                           ; $7574: $fc
	sub e                                            ; $7575: $93
	sub c                                            ; $7576: $91
	rst $38                                          ; $7577: $ff
	rst $38                                          ; $7578: $ff
	cp $fd                                           ; $7579: $fe $fd
	ei                                               ; $757b: $fb
	ldh a, [c]                                       ; $757c: $f2
	db $f4                                           ; $757d: $f4
	pop hl                                           ; $757e: $e1
	sbc $ff                                          ; $757f: $de $ff
	add b                                            ; $7581: $80
	cp $fc                                           ; $7582: $fe $fc

jr_027_7584:
	db $fd                                           ; $7584: $fd
	ei                                               ; $7585: $fb
	rst $38                                          ; $7586: $ff
	cp a                                             ; $7587: $bf
	ld a, l                                          ; $7588: $7d
	di                                               ; $7589: $f3
	rst JumpTable                                          ; $758a: $c7
	rrca                                             ; $758b: $0f
	ld e, a                                          ; $758c: $5f
	cp a                                             ; $758d: $bf
	ld [hl], a                                       ; $758e: $77
	ret nz                                           ; $758f: $c0

	add d                                            ; $7590: $82
	inc c                                            ; $7591: $0c
	jr c, jr_027_7584                                ; $7592: $38 $f0

	ldh [$c0], a                                     ; $7594: $e0 $c0
	adc b                                            ; $7596: $88
	add c                                            ; $7597: $81
	rst AddAOntoHL                                          ; $7598: $ef

jr_027_7599:
	ld sp, hl                                        ; $7599: $f9
	rst SubAFromDE                                          ; $759a: $df
	di                                               ; $759b: $f3
	ld sp, hl                                        ; $759c: $f9
	pop bc                                           ; $759d: $c1
	ld a, l                                          ; $759e: $7d
	ld a, a                                          ; $759f: $7f
	rra                                              ; $75a0: $1f
	add b                                            ; $75a1: $80
	rlca                                             ; $75a2: $07
	ccf                                              ; $75a3: $3f
	rrca                                             ; $75a4: $0f
	rlca                                             ; $75a5: $07
	ccf                                              ; $75a6: $3f
	rst $38                                          ; $75a7: $ff
	rla                                              ; $75a8: $17
	cpl                                              ; $75a9: $2f
	ld d, b                                          ; $75aa: $50
	and [hl]                                         ; $75ab: $a6
	ld [hl], a                                       ; $75ac: $77
	ld e, a                                          ; $75ad: $5f
	rst $38                                          ; $75ae: $ff
	sbc [hl]                                         ; $75af: $9e
	ld hl, sp-$10                                    ; $75b0: $f8 $f0
	rst AddAOntoHL                                          ; $75b2: $ef
	rst SubAFromDE                                          ; $75b3: $df
	cp b                                             ; $75b4: $b8
	ldh [rIE], a                                     ; $75b5: $e0 $ff
	pop hl                                           ; $75b7: $e1
	rst $38                                          ; $75b8: $ff
	jp $f638                                         ; $75b9: $c3 $38 $f6


	ld sp, hl                                        ; $75bc: $f9
	cp $0d                                           ; $75bd: $fe $0d
	ldh [c], a                                       ; $75bf: $e2
	ld bc, $0080                                     ; $75c0: $01 $80 $00
	ret nz                                           ; $75c3: $c0

	ld hl, sp+$06                                    ; $75c4: $f8 $06
	ld bc, $fcf0                                     ; $75c6: $01 $f0 $fc
	and c                                            ; $75c9: $a1
	add sp, $7c                                      ; $75ca: $e8 $7c
	dec d                                            ; $75cc: $15
	add a                                            ; $75cd: $87
	jp nz, Jump_027_78f1                             ; $75ce: $c2 $f1 $78

	ret nz                                           ; $75d1: $c0

	ld [hl], b                                       ; $75d2: $70
	jr jr_027_75e3                                   ; $75d3: $18 $0e

	inc bc                                           ; $75d5: $03
	add c                                            ; $75d6: $81
	ld b, b                                          ; $75d7: $40
	jr nz, jr_027_7599                               ; $75d8: $20 $bf

	rst SubAFromDE                                          ; $75da: $df
	ld l, a                                          ; $75db: $6f
	scf                                              ; $75dc: $37
	db $db                                           ; $75dd: $db
	rst AddAOntoHL                                          ; $75de: $ef
	db $fd                                           ; $75df: $fd
	ld a, [hl]                                       ; $75e0: $7e
	sub a                                            ; $75e1: $97
	ld a, a                                          ; $75e2: $7f

jr_027_75e3:
	ccf                                              ; $75e3: $3f
	rra                                              ; $75e4: $1f
	rrca                                             ; $75e5: $0f
	rlca                                             ; $75e6: $07
	add e                                            ; $75e7: $83
	ld b, e                                          ; $75e8: $43
	ld hl, $ffda                                     ; $75e9: $21 $da $ff
	sub c                                            ; $75ec: $91
	sbc a                                            ; $75ed: $9f
	ld hl, sp-$03                                    ; $75ee: $f8 $fd
	ld [hl], a                                       ; $75f0: $77
	inc hl                                           ; $75f1: $23
	ld bc, $cfc3                                     ; $75f2: $01 $c3 $cf
	rst AddAOntoHL                                          ; $75f5: $ef
	call z, $fefe                                    ; $75f6: $cc $fe $fe
	rst FarCall                                          ; $75f9: $f7
	rst SubAFromHL                                          ; $75fa: $d7
	ld [hl], a                                       ; $75fb: $77
	ld [hl], l                                       ; $75fc: $75
	sbc [hl]                                         ; $75fd: $9e
	cp $7b                                           ; $75fe: $fe $7b
	ld l, e                                          ; $7600: $6b
	rst SubAFromDE                                          ; $7601: $df
	rst JumpTable                                          ; $7602: $c7
	sub [hl]                                         ; $7603: $96
	rst AddAOntoHL                                          ; $7604: $ef
	adc $3f                                          ; $7605: $ce $3f
	ldh [$e1], a                                     ; $7607: $e0 $e1
	or $fe                                           ; $7609: $f6 $fe
	cp $ff                                           ; $760b: $fe $ff
	ld a, e                                          ; $760d: $7b
	ld hl, sp-$6e                                    ; $760e: $f8 $92
	pop af                                           ; $7610: $f1
	cp $c2                                           ; $7611: $fe $c2
	add c                                            ; $7613: $81
	ld bc, $0f70                                     ; $7614: $01 $70 $0f
	nop                                              ; $7617: $00
	ldh [rAUD3LEVEL], a                              ; $7618: $e0 $1c
	jp c, $f63f                                      ; $761a: $da $3f $f6

	ld l, a                                          ; $761d: $6f
	ld hl, sp-$6c                                    ; $761e: $f8 $94
	rst $38                                          ; $7620: $ff
	or $73                                           ; $7621: $f6 $73
	rra                                              ; $7623: $1f
	rlca                                             ; $7624: $07
	add hl, de                                       ; $7625: $19
	pop bc                                           ; $7626: $c1
	rlca                                             ; $7627: $07
	dec de                                           ; $7628: $1b
	jr z, jr_027_76a8                                ; $7629: $28 $7d

	ld l, e                                          ; $762b: $6b
	ld hl, sp+$0a                                    ; $762c: $f8 $0a
	nop                                              ; $762e: $00
	rst SubAFromDE                                          ; $762f: $df
	ld [hl+], a                                      ; $7630: $22
	sbc $44                                          ; $7631: $de $44
	sbc h                                            ; $7633: $9c
	ld b, d                                          ; $7634: $42
	ld [hl+], a                                      ; $7635: $22
	ld [hl+], a                                      ; $7636: $22
	db $ec                                           ; $7637: $ec
	add b                                            ; $7638: $80
	add b                                            ; $7639: $80
	adc $dc                                          ; $763a: $ce $dc
	call c, $ff7e                                    ; $763c: $dc $7e $ff
	rst FarCall                                          ; $763f: $f7
	di                                               ; $7640: $f3
	rst $38                                          ; $7641: $ff
	ccf                                              ; $7642: $3f
	ccf                                              ; $7643: $3f
	inc sp                                           ; $7644: $33
	add c                                            ; $7645: $81
	ld h, c                                          ; $7646: $61
	ld a, b                                          ; $7647: $78
	cp $30                                           ; $7648: $fe $30
	rrca                                             ; $764a: $0f
	ccf                                              ; $764b: $3f
	ld a, a                                          ; $764c: $7f
	db $e3                                           ; $764d: $e3
	rst SubAFromBC                                          ; $764e: $e7
	rst GetHLinHL                                          ; $764f: $cf
	rst AddAOntoHL                                          ; $7650: $ef
	rst $38                                          ; $7651: $ff
	rst $38                                          ; $7652: $ff
	sbc $9e                                          ; $7653: $de $9e
	ccf                                              ; $7655: $3f
	ccf                                              ; $7656: $3f
	ld a, h                                          ; $7657: $7c
	ld a, b                                          ; $7658: $78
	sbc [hl]                                         ; $7659: $9e
	ld a, b                                          ; $765a: $78
	sbc $ff                                          ; $765b: $de $ff
	ld a, a                                          ; $765d: $7f
	db $e3                                           ; $765e: $e3
	sbc c                                            ; $765f: $99
	ei                                               ; $7660: $fb
	db $eb                                           ; $7661: $eb
	rst $38                                          ; $7662: $ff
	pop af                                           ; $7663: $f1
	inc sp                                           ; $7664: $33
	ld [hl], a                                       ; $7665: $77
	sbc $ff                                          ; $7666: $de $ff
	sbc l                                            ; $7668: $9d
	ld e, $0f                                        ; $7669: $1e $0f
	db $dd                                           ; $766b: $dd
	rst $38                                          ; $766c: $ff
	sbc [hl]                                         ; $766d: $9e
	sbc a                                            ; $766e: $9f
	call c, Call_027_7fff                            ; $766f: $dc $ff $7f
	reti                                             ; $7672: $d9


	sub [hl]                                         ; $7673: $96
	db $fc                                           ; $7674: $fc
	inc l                                            ; $7675: $2c
	ld b, $22                                        ; $7676: $06 $22
	rst $38                                          ; $7678: $ff
	rst $38                                          ; $7679: $ff
	ei                                               ; $767a: $fb
	cp $fe                                           ; $767b: $fe $fe
	sbc $ff                                          ; $767d: $de $ff
	sbc b                                            ; $767f: $98
	rst SubAFromBC                                          ; $7680: $e7
	adc a                                            ; $7681: $8f
	cp a                                             ; $7682: $bf
	rst $38                                          ; $7683: $ff
	ld a, a                                          ; $7684: $7f
	ld a, $fe                                        ; $7685: $3e $fe
	ld [hl], e                                       ; $7687: $73
	ldh [$9c], a                                     ; $7688: $e0 $9c
	rst $38                                          ; $768a: $ff
	cp $fb                                           ; $768b: $fe $fb
	ld a, e                                          ; $768d: $7b
	cp a                                             ; $768e: $bf
	db $dd                                           ; $768f: $dd
	rst $38                                          ; $7690: $ff
	sbc l                                            ; $7691: $9d
	db $fc                                           ; $7692: $fc
	ldh a, [$dc]                                     ; $7693: $f0 $dc
	rst $38                                          ; $7695: $ff
	sbc h                                            ; $7696: $9c
	rrca                                             ; $7697: $0f
	di                                               ; $7698: $f3
	pop af                                           ; $7699: $f1
	db $db                                           ; $769a: $db
	rst $38                                          ; $769b: $ff
	rst SubAFromDE                                          ; $769c: $df
	rrca                                             ; $769d: $0f
	ld a, e                                          ; $769e: $7b
	db $e3                                           ; $769f: $e3
	sbc d                                            ; $76a0: $9a
	ldh a, [$c1]                                     ; $76a1: $f0 $c1
	add a                                            ; $76a3: $87
	dec e                                            ; $76a4: $1d
	ld l, $73                                        ; $76a5: $2e $73
	reti                                             ; $76a7: $d9


jr_027_76a8:
	sub h                                            ; $76a8: $94
	ld hl, sp-$1d                                    ; $76a9: $f8 $e3
	rst SubAFromDE                                          ; $76ab: $df

Call_027_76ac:
	rst $38                                          ; $76ac: $ff
	rst $38                                          ; $76ad: $ff
	ld bc, $ff1f                                     ; $76ae: $01 $1f $ff
	ldh a, [$fa]                                     ; $76b1: $f0 $fa
	or $de                                           ; $76b3: $f6 $de
	rst $38                                          ; $76b5: $ff
	sbc e                                            ; $76b6: $9b
	ldh [rP1], a                                     ; $76b7: $e0 $00
	nop                                              ; $76b9: $00
	db $fc                                           ; $76ba: $fc
	ld [hl], a                                       ; $76bb: $77
	ret nz                                           ; $76bc: $c0

	sbc d                                            ; $76bd: $9a
	ccf                                              ; $76be: $3f
	rst GetHLinHL                                          ; $76bf: $cf
	scf                                              ; $76c0: $37
	dec c                                            ; $76c1: $0d
	add [hl]                                         ; $76c2: $86
	db $dd                                           ; $76c3: $dd
	rst $38                                          ; $76c4: $ff
	sbc c                                            ; $76c5: $99
	ccf                                              ; $76c6: $3f
	rrca                                             ; $76c7: $0f
	inc bc                                           ; $76c8: $03
	ld bc, $ebff                                     ; $76c9: $01 $ff $eb
	sbc $ff                                          ; $76cc: $de $ff
	ld a, e                                          ; $76ce: $7b
	jp c, $e77f                                      ; $76cf: $da $7f $e7

	add c                                            ; $76d2: $81
	jp $ff4a                                         ; $76d3: $c3 $4a $ff


	rst $38                                          ; $76d6: $ff
	pop hl                                           ; $76d7: $e1
	db $e3                                           ; $76d8: $e3
	cp $ff                                           ; $76d9: $fe $ff
	db $fd                                           ; $76db: $fd
	cp $fd                                           ; $76dc: $fe $fd
	cp a                                             ; $76de: $bf
	rst $38                                          ; $76df: $ff
	rst $38                                          ; $76e0: $ff
	ld hl, sp-$1d                                    ; $76e1: $f8 $e3
	dec b                                            ; $76e3: $05
	ld c, $ff                                        ; $76e4: $0e $ff
	rst JumpTable                                          ; $76e6: $c7
	add e                                            ; $76e7: $83
	pop bc                                           ; $76e8: $c1
	rst $38                                          ; $76e9: $ff
	cp $e3                                           ; $76ea: $fe $e3
	ld [hl], c                                       ; $76ec: $71
	cp $ef                                           ; $76ed: $fe $ef
	pop af                                           ; $76ef: $f1
	sbc $6b                                          ; $76f0: $de $6b
	ld hl, sp-$6a                                    ; $76f2: $f8 $96
	cp $8e                                           ; $76f4: $fe $8e
	rst AddAOntoHL                                          ; $76f6: $ef
	ld a, [hl-]                                      ; $76f7: $3a
	cp $0d                                           ; $76f8: $fe $0d
	adc a                                            ; $76fa: $8f
	sbc b                                            ; $76fb: $98
	ld l, a                                          ; $76fc: $6f
	ld a, e                                          ; $76fd: $7b
	jp nz, $ff9e                                     ; $76fe: $c2 $9e $ff

	ld [hl], a                                       ; $7701: $77
	ld hl, sp-$72                                    ; $7702: $f8 $8e
	sbc a                                            ; $7704: $9f
	cp a                                             ; $7705: $bf
	cp $7f                                           ; $7706: $fe $7f
	rst $38                                          ; $7708: $ff
	di                                               ; $7709: $f3
	ld a, a                                          ; $770a: $7f
	cp e                                             ; $770b: $bb
	ld hl, sp-$08                                    ; $770c: $f8 $f8
	ld sp, hl                                        ; $770e: $f9
	db $fd                                           ; $770f: $fd
	rst $38                                          ; $7710: $ff
	rst $38                                          ; $7711: $ff
	ld a, a                                          ; $7712: $7f
	cp e                                             ; $7713: $bb
	pop hl                                           ; $7714: $e1
	ld [hl], a                                       ; $7715: $77
	rst SubAFromBC                                          ; $7716: $e7
	rst SubAFromDE                                          ; $7717: $df
	rst $38                                          ; $7718: $ff
	sub [hl]                                         ; $7719: $96
	dec sp                                           ; $771a: $3b
	ld a, a                                          ; $771b: $7f
	ei                                               ; $771c: $fb
	pop af                                           ; $771d: $f1
	ldh a, [$f3]                                     ; $771e: $f0 $f3
	rst SubAFromHL                                          ; $7720: $d7
	inc e                                            ; $7721: $1c
	db $fc                                           ; $7722: $fc
	ld a, [bc]                                       ; $7723: $0a
	nop                                              ; $7724: $00
	rst SubAFromDE                                          ; $7725: $df
	ld [hl+], a                                      ; $7726: $22

Call_027_7727:
	sbc h                                            ; $7727: $9c
	inc h                                            ; $7728: $24
	ld b, h                                          ; $7729: $44
	ld b, h                                          ; $772a: $44
	sbc $22                                          ; $772b: $de $22
	ld e, h                                          ; $772d: $5c
	add b                                            ; $772e: $80
	add b                                            ; $772f: $80
	and a                                            ; $7730: $a7
	call $ef3f                                       ; $7731: $cd $3f $ef
	ld e, [hl]                                       ; $7734: $5e
	db $fd                                           ; $7735: $fd
	rst $38                                          ; $7736: $ff
	rst SubAFromDE                                          ; $7737: $df
	rst $38                                          ; $7738: $ff
	cp $f8                                           ; $7739: $fe $f8
	ldh a, [$e1]                                     ; $773b: $f0 $e1
	jp Jump_027_60c2                                 ; $773d: $c3 $c2 $60


	cp $e7                                           ; $7740: $fe $e7
	sbc l                                            ; $7742: $9d
	ld a, a                                          ; $7743: $7f
	rst $38                                          ; $7744: $ff
	rst $38                                          ; $7745: $ff
	rst AddAOntoHL                                          ; $7746: $ef
	rst $38                                          ; $7747: $ff
	nop                                              ; $7748: $00
	rra                                              ; $7749: $1f
	ld a, [hl]                                       ; $774a: $7e
	ldh [$80], a                                     ; $774b: $e0 $80
	nop                                              ; $774d: $00
	rra                                              ; $774e: $1f
	sbc e                                            ; $774f: $9b
	ccf                                              ; $7750: $3f
	inc bc                                           ; $7751: $03
	add b                                            ; $7752: $80
	add b                                            ; $7753: $80
	sbc $c0                                          ; $7754: $de $c0
	sbc l                                            ; $7756: $9d
	ld b, b                                          ; $7757: $40
	ret nz                                           ; $7758: $c0

	ei                                               ; $7759: $fb
	ld a, a                                          ; $775a: $7f
	db $f4                                           ; $775b: $f4
	add b                                            ; $775c: $80
	rst $38                                          ; $775d: $ff
	xor $5b                                          ; $775e: $ee $5b
	cp $b7                                           ; $7760: $fe $b7
	ld a, a                                          ; $7762: $7f
	ld a, e                                          ; $7763: $7b
	cpl                                              ; $7764: $2f
	jr nz, @+$33                                     ; $7765: $20 $31

	or a                                             ; $7767: $b7
	sub c                                            ; $7768: $91
	ret c                                            ; $7769: $d8

	ret z                                            ; $776a: $c8

	call z, $f1fc                                    ; $776b: $cc $fc $f1
	pop hl                                           ; $776e: $e1
	jp $fe7e                                         ; $776f: $c3 $7e $fe


	db $ec                                           ; $7772: $ec
	pop af                                           ; $7773: $f1
	ei                                               ; $7774: $fb
	ld [hl], e                                       ; $7775: $73
	db $e3                                           ; $7776: $e3
	rst SubAFromBC                                          ; $7777: $e7
	cp a                                             ; $7778: $bf
	ld e, $1f                                        ; $7779: $1e $1f
	rra                                              ; $777b: $1f
	sbc l                                            ; $777c: $9d
	ld c, $c0                                        ; $777d: $0e $c0
	sbc $80                                          ; $777f: $de $80
	sbc e                                            ; $7781: $9b
	nop                                              ; $7782: $00
	add a                                            ; $7783: $87
	sbc a                                            ; $7784: $9f
	cp a                                             ; $7785: $bf
	ld [hl], e                                       ; $7786: $73
	ld hl, sp-$02                                    ; $7787: $f8 $fe
	inc b                                            ; $7789: $04
	nop                                              ; $778a: $00
	sbc $44                                          ; $778b: $de $44
	ld e, c                                          ; $778d: $59
	nop                                              ; $778e: $00
	add h                                            ; $778f: $84
	and a                                            ; $7790: $a7
	rst $38                                          ; $7791: $ff
	call $3ffe                                       ; $7792: $cd $fe $3f
	ld hl, sp-$11                                    ; $7795: $f8 $ef
	ldh a, [$5e]                                     ; $7797: $f0 $5e
	pop hl                                           ; $7799: $e1
	db $fd                                           ; $779a: $fd
	jp $c2ff                                         ; $779b: $c3 $ff $c2


	rst SubAFromDE                                          ; $779e: $df
	ld h, b                                          ; $779f: $60
	cp $00                                           ; $77a0: $fe $00
	rst SubAFromBC                                          ; $77a2: $e7
	rra                                              ; $77a3: $1f
	sbc l                                            ; $77a4: $9d
	ld a, [hl]                                       ; $77a5: $7e
	ld a, a                                          ; $77a6: $7f
	ldh [rIE], a                                     ; $77a7: $e0 $ff
	add b                                            ; $77a9: $80
	rst $38                                          ; $77aa: $ff
	cp a                                             ; $77ab: $bf
	rst $38                                          ; $77ac: $ff
	rst AddAOntoHL                                          ; $77ad: $ef
	sbc l                                            ; $77ae: $9d
	rra                                              ; $77af: $1f
	inc bc                                           ; $77b0: $03
	cp d                                             ; $77b1: $ba
	add b                                            ; $77b2: $80
	add b                                            ; $77b3: $80
	ret nz                                           ; $77b4: $c0

	ret nz                                           ; $77b5: $c0

	ret nz                                           ; $77b6: $c0

	ret nz                                           ; $77b7: $c0

	ld b, b                                          ; $77b8: $40
	ld a, a                                          ; $77b9: $7f
	ld [$2080], a                                    ; $77ba: $ea $80 $20
	rst AddAOntoHL                                          ; $77bd: $ef
	jr nc, jr_027_781e                               ; $77be: $30 $5e

	or c                                             ; $77c0: $b1
	ei                                               ; $77c1: $fb
	sub a                                            ; $77c2: $97
	or [hl]                                          ; $77c3: $b6
	reti                                             ; $77c4: $d9


	ld a, a                                          ; $77c5: $7f
	ret z                                            ; $77c6: $c8

	ld a, e                                          ; $77c7: $7b
	call z, $fc2f                                    ; $77c8: $cc $2f $fc
	rst $38                                          ; $77cb: $ff
	ccf                                              ; $77cc: $3f
	pop af                                           ; $77cd: $f1
	ld [hl], e                                       ; $77ce: $73
	pop hl                                           ; $77cf: $e1
	db $e3                                           ; $77d0: $e3
	jp Jump_027_7ee7                                 ; $77d1: $c3 $e7 $7e


	cp a                                             ; $77d4: $bf
	db $ec                                           ; $77d5: $ec
	rra                                              ; $77d6: $1f
	pop af                                           ; $77d7: $f1
	rra                                              ; $77d8: $1f
	ei                                               ; $77d9: $fb
	ld c, $dd                                        ; $77da: $0e $dd
	ret nz                                           ; $77dc: $c0

	db $db                                           ; $77dd: $db
	add b                                            ; $77de: $80
	sbc [hl]                                         ; $77df: $9e

Jump_027_77e0:
	add a                                            ; $77e0: $87
	cp a                                             ; $77e1: $bf
	sbc a                                            ; $77e2: $9f
	cp a                                             ; $77e3: $bf
	sbc [hl]                                         ; $77e4: $9e
	nop                                              ; $77e5: $00
	inc b                                            ; $77e6: $04
	nop                                              ; $77e7: $00
	sbc $44                                          ; $77e8: $de $44
	ld d, a                                          ; $77ea: $57
	add b                                            ; $77eb: $80
	adc e                                            ; $77ec: $8b
	and a                                            ; $77ed: $a7
	call $ef3f                                       ; $77ee: $cd $3f $ef
	ld e, [hl]                                       ; $77f1: $5e
	db $fd                                           ; $77f2: $fd
	rst $38                                          ; $77f3: $ff
	rst SubAFromDE                                          ; $77f4: $df
	rst $38                                          ; $77f5: $ff
	cp $f8                                           ; $77f6: $fe $f8
	ldh a, [$e1]                                     ; $77f8: $f0 $e1
	jp Jump_027_60c2                                 ; $77fa: $c3 $c2 $60


	cp $e7                                           ; $77fd: $fe $e7
	sbc l                                            ; $77ff: $9d
	ld a, a                                          ; $7800: $7f
	db $dd                                           ; $7801: $dd
	rst $38                                          ; $7802: $ff
	sbc d                                            ; $7803: $9a
	nop                                              ; $7804: $00
	rra                                              ; $7805: $1f
	ld a, [hl]                                       ; $7806: $7e
	ldh [$80], a                                     ; $7807: $e0 $80
	cp $9c                                           ; $7809: $fe $9c
	inc bc                                           ; $780b: $03
	add b                                            ; $780c: $80
	add b                                            ; $780d: $80
	call c, $f9c0                                    ; $780e: $dc $c0 $f9
	add b                                            ; $7811: $80
	rst $38                                          ; $7812: $ff
	rst AddAOntoHL                                          ; $7813: $ef
	ld e, a                                          ; $7814: $5f
	rst $38                                          ; $7815: $ff
	or e                                             ; $7816: $b3
	ld a, [hl]                                       ; $7817: $7e
	ld a, e                                          ; $7818: $7b
	cpl                                              ; $7819: $2f
	jr nz, jr_027_784c                               ; $781a: $20 $30

	or b                                             ; $781c: $b0
	sub b                                            ; $781d: $90

jr_027_781e:
	rst SubAFromDE                                          ; $781e: $df
	ret                                              ; $781f: $c9


	call z, $fffc                                    ; $7820: $cc $fc $ff
	di                                               ; $7823: $f3
	rst GetHLinHL                                          ; $7824: $cf
	ld sp, hl                                        ; $7825: $f9
	pop hl                                           ; $7826: $e1
	ld a, a                                          ; $7827: $7f
	pop af                                           ; $7828: $f1
	rst $38                                          ; $7829: $ff
	nop                                              ; $782a: $00
	rrca                                             ; $782b: $0f
	ccf                                              ; $782c: $3f
	ld a, a                                          ; $782d: $7f
	db $e3                                           ; $782e: $e3
	rst $38                                          ; $782f: $ff
	ccf                                              ; $7830: $3f
	sub l                                            ; $7831: $95
	ld c, $c0                                        ; $7832: $0e $c0
	ld b, b                                          ; $7834: $40
	ret nz                                           ; $7835: $c0

	ret nz                                           ; $7836: $c0

	add b                                            ; $7837: $80
	add a                                            ; $7838: $87
	sbc a                                            ; $7839: $9f
	cp a                                             ; $783a: $bf
	nop                                              ; $783b: $00
	ld a, e                                          ; $783c: $7b
	ret                                              ; $783d: $c9


	rst SubAFromDE                                          ; $783e: $df
	add b                                            ; $783f: $80
	rst $38                                          ; $7840: $ff
	inc b                                            ; $7841: $04
	nop                                              ; $7842: $00
	sbc $44                                          ; $7843: $de $44
	ld c, a                                          ; $7845: $4f
	add b                                            ; $7846: $80
	adc e                                            ; $7847: $8b
	and a                                            ; $7848: $a7
	call $ef3f                                       ; $7849: $cd $3f $ef

jr_027_784c:
	ld e, [hl]                                       ; $784c: $5e
	db $fd                                           ; $784d: $fd
	rst $38                                          ; $784e: $ff
	rst SubAFromDE                                          ; $784f: $df
	rst $38                                          ; $7850: $ff
	cp $f8                                           ; $7851: $fe $f8
	ldh a, [$e1]                                     ; $7853: $f0 $e1
	jp Jump_027_60c2                                 ; $7855: $c3 $c2 $60


	cp $e7                                           ; $7858: $fe $e7
	sbc l                                            ; $785a: $9d
	ld a, a                                          ; $785b: $7f
	db $dd                                           ; $785c: $dd
	rst $38                                          ; $785d: $ff
	sbc d                                            ; $785e: $9a
	nop                                              ; $785f: $00
	rra                                              ; $7860: $1f
	ld a, [hl]                                       ; $7861: $7e
	ldh [$80], a                                     ; $7862: $e0 $80
	cp $9c                                           ; $7864: $fe $9c
	inc bc                                           ; $7866: $03
	add b                                            ; $7867: $80
	add b                                            ; $7868: $80
	call c, $f9c0                                    ; $7869: $dc $c0 $f9
	adc a                                            ; $786c: $8f
	rst $38                                          ; $786d: $ff
	rst AddAOntoHL                                          ; $786e: $ef
	ld e, a                                          ; $786f: $5f
	rst $38                                          ; $7870: $ff
	or b                                             ; $7871: $b0
	ld a, a                                          ; $7872: $7f
	ld a, e                                          ; $7873: $7b
	cpl                                              ; $7874: $2f
	jr nz, jr_027_78a7                               ; $7875: $20 $30

	or b                                             ; $7877: $b0
	sub b                                            ; $7878: $90
	rst SubAFromDE                                          ; $7879: $df
	rst GetHLinHL                                          ; $787a: $cf
	call z, $ddfc                                    ; $787b: $cc $fc $dd
	rst $38                                          ; $787e: $ff
	sbc [hl]                                         ; $787f: $9e
	cp $77                                           ; $7880: $fe $77
	ret nc                                           ; $7882: $d0

	cp $9b                                           ; $7883: $fe $9b
	ld bc, $7fff                                     ; $7885: $01 $ff $7f
	ld e, $73                                        ; $7888: $1e $73
	call nc, $c79c                                   ; $788a: $d4 $9c $c7
	rra                                              ; $788d: $1f
	cp a                                             ; $788e: $bf
	db $fd                                           ; $788f: $fd
	rst SubAFromDE                                          ; $7890: $df
	ret nz                                           ; $7891: $c0

	ld a, a                                          ; $7892: $7f
	cp [hl]                                          ; $7893: $be
	inc b                                            ; $7894: $04
	nop                                              ; $7895: $00
	sbc $44                                          ; $7896: $de $44
	ld e, h                                          ; $7898: $5c
	add b                                            ; $7899: $80
	add b                                            ; $789a: $80
	and a                                            ; $789b: $a7
	call $ed3e                                       ; $789c: $cd $3e $ed
	ld e, a                                          ; $789f: $5f
	rst $38                                          ; $78a0: $ff
	rst $38                                          ; $78a1: $ff
	rst SubAFromDE                                          ; $78a2: $df
	rst $38                                          ; $78a3: $ff
	cp $f9                                           ; $78a4: $fe $f9
	di                                               ; $78a6: $f3

jr_027_78a7:
	ldh [c], a                                       ; $78a7: $e2
	ret nz                                           ; $78a8: $c0

	ret nz                                           ; $78a9: $c0

	ld h, b                                          ; $78aa: $60
	cp $9c                                           ; $78ab: $fe $9c
	ld h, e                                          ; $78ad: $63
	rst $38                                          ; $78ae: $ff
	rst $38                                          ; $78af: $ff
	ldh a, [$df]                                     ; $78b0: $f0 $df
	pop af                                           ; $78b2: $f1
	nop                                              ; $78b3: $00
	ld a, a                                          ; $78b4: $7f
	rst $38                                          ; $78b5: $ff
	add b                                            ; $78b6: $80
	nop                                              ; $78b7: $00
	rrca                                             ; $78b8: $0f
	ccf                                              ; $78b9: $3f
	sbc e                                            ; $78ba: $9b
	ld a, a                                          ; $78bb: $7f
	inc bc                                           ; $78bc: $03
	add b                                            ; $78bd: $80
	add b                                            ; $78be: $80
	sbc $c0                                          ; $78bf: $de $c0
	sbc l                                            ; $78c1: $9d
	ld b, b                                          ; $78c2: $40
	ret nz                                           ; $78c3: $c0

	ei                                               ; $78c4: $fb
	ld a, a                                          ; $78c5: $7f
	db $f4                                           ; $78c6: $f4
	add b                                            ; $78c7: $80
	rst $38                                          ; $78c8: $ff
	db $eb                                           ; $78c9: $eb
	ld e, [hl]                                       ; $78ca: $5e
	rst $38                                          ; $78cb: $ff
	or a                                             ; $78cc: $b7
	ld a, a                                          ; $78cd: $7f
	ld a, e                                          ; $78ce: $7b
	cpl                                              ; $78cf: $2f
	jr nz, jr_027_7909                               ; $78d0: $20 $37

	or c                                             ; $78d2: $b1
	sub b                                            ; $78d3: $90
	ret c                                            ; $78d4: $d8

	ret z                                            ; $78d5: $c8

	call z, $e1fc                                    ; $78d6: $cc $fc $e1
	pop bc                                           ; $78d9: $c1
	ld h, e                                          ; $78da: $63
	sbc $fe                                          ; $78db: $de $fe
	db $ec                                           ; $78dd: $ec
	pop af                                           ; $78de: $f1
	ei                                               ; $78df: $fb
	di                                               ; $78e0: $f3
	db $e3                                           ; $78e1: $e3
	rst SubAFromBC                                          ; $78e2: $e7
	ccf                                              ; $78e3: $3f
	ld e, $1f                                        ; $78e4: $1e $1f
	rra                                              ; $78e6: $1f
	sbc l                                            ; $78e7: $9d
	ld c, $c0                                        ; $78e8: $0e $c0
	sbc $80                                          ; $78ea: $de $80
	sbc e                                            ; $78ec: $9b
	nop                                              ; $78ed: $00
	add a                                            ; $78ee: $87
	sbc a                                            ; $78ef: $9f
	cp a                                             ; $78f0: $bf

Jump_027_78f1:
	ld [hl], e                                       ; $78f1: $73
	ld hl, sp-$02                                    ; $78f2: $f8 $fe
	inc b                                            ; $78f4: $04
	nop                                              ; $78f5: $00
	sbc $44                                          ; $78f6: $de $44
	ld e, c                                          ; $78f8: $59
	nop                                              ; $78f9: $00
	add [hl]                                         ; $78fa: $86
	and a                                            ; $78fb: $a7
	rst $38                                          ; $78fc: $ff
	call $3efe                                       ; $78fd: $cd $fe $3e
	ld sp, hl                                        ; $7900: $f9
	db $ed                                           ; $7901: $ed
	di                                               ; $7902: $f3
	ld e, a                                          ; $7903: $5f
	ldh [c], a                                       ; $7904: $e2
	rst $38                                          ; $7905: $ff
	ret nz                                           ; $7906: $c0

	rst $38                                          ; $7907: $ff
	ret nz                                           ; $7908: $c0

jr_027_7909:
	rst SubAFromDE                                          ; $7909: $df
	ld h, b                                          ; $790a: $60
	cp $00                                           ; $790b: $fe $00
	sbc h                                            ; $790d: $9c
	ld a, a                                          ; $790e: $7f
	ld h, e                                          ; $790f: $63
	rst $38                                          ; $7910: $ff
	rst $38                                          ; $7911: $ff
	add b                                            ; $7912: $80
	rst $38                                          ; $7913: $ff
	cp a                                             ; $7914: $bf
	rst $38                                          ; $7915: $ff
	ldh a, [$9b]                                     ; $7916: $f0 $9b

jr_027_7918:
	rrca                                             ; $7918: $0f
	rst SubAFromDE                                          ; $7919: $df
	ccf                                              ; $791a: $3f
	inc bc                                           ; $791b: $03
	cp d                                             ; $791c: $ba
	add b                                            ; $791d: $80
	add b                                            ; $791e: $80
	ret nz                                           ; $791f: $c0

	ret nz                                           ; $7920: $c0

	ret nz                                           ; $7921: $c0

	ret nz                                           ; $7922: $c0

	ld b, b                                          ; $7923: $40
	ld a, a                                          ; $7924: $7f
	add sp, -$80                                     ; $7925: $e8 $80
	jr nz, jr_027_7918                               ; $7927: $20 $ef

	jr nc, jr_027_7986                               ; $7929: $30 $5b

	or a                                             ; $792b: $b7
	cp $91                                           ; $792c: $fe $91
	or a                                             ; $792e: $b7
	ret c                                            ; $792f: $d8

	ld a, a                                          ; $7930: $7f
	ret z                                            ; $7931: $c8

	ld a, e                                          ; $7932: $7b
	call z, $fc2f                                    ; $7933: $cc $2f $fc
	pop af                                           ; $7936: $f1
	ld a, a                                          ; $7937: $7f
	pop hl                                           ; $7938: $e1
	di                                               ; $7939: $f3
	pop bc                                           ; $793a: $c1
	db $e3                                           ; $793b: $e3
	ld h, e                                          ; $793c: $63
	rst SubAFromBC                                          ; $793d: $e7
	sbc $3f                                          ; $793e: $de $3f
	db $ec                                           ; $7940: $ec
	rra                                              ; $7941: $1f
	pop af                                           ; $7942: $f1
	rra                                              ; $7943: $1f
	ei                                               ; $7944: $fb
	ld c, $dd                                        ; $7945: $0e $dd
	ret nz                                           ; $7947: $c0

	db $db                                           ; $7948: $db
	add b                                            ; $7949: $80
	sbc [hl]                                         ; $794a: $9e
	add a                                            ; $794b: $87
	cp a                                             ; $794c: $bf
	sbc a                                            ; $794d: $9f
	cp a                                             ; $794e: $bf
	sbc [hl]                                         ; $794f: $9e
	nop                                              ; $7950: $00
	inc b                                            ; $7951: $04
	nop                                              ; $7952: $00
	sbc $44                                          ; $7953: $de $44
	ld d, l                                          ; $7955: $55
	add b                                            ; $7956: $80
	adc h                                            ; $7957: $8c
	and a                                            ; $7958: $a7
	call $ed3e                                       ; $7959: $cd $3e $ed
	ld e, a                                          ; $795c: $5f
	rst $38                                          ; $795d: $ff
	rst $38                                          ; $795e: $ff
	rst SubAFromDE                                          ; $795f: $df
	rst $38                                          ; $7960: $ff
	cp $f9                                           ; $7961: $fe $f9
	di                                               ; $7963: $f3
	ldh [c], a                                       ; $7964: $e2
	ret nz                                           ; $7965: $c0

	ret nz                                           ; $7966: $c0

	ld h, b                                          ; $7967: $60
	cp $9c                                           ; $7968: $fe $9c
	ld h, e                                          ; $796a: $63
	call c, $9bff                                    ; $796b: $dc $ff $9b
	nop                                              ; $796e: $00
	ld a, a                                          ; $796f: $7f
	rst $38                                          ; $7970: $ff
	add b                                            ; $7971: $80
	db $fd                                           ; $7972: $fd
	sbc h                                            ; $7973: $9c
	inc bc                                           ; $7974: $03
	add b                                            ; $7975: $80
	add b                                            ; $7976: $80
	call c, $f9c0                                    ; $7977: $dc $c0 $f9
	add b                                            ; $797a: $80
	rst $38                                          ; $797b: $ff
	rst AddAOntoHL                                          ; $797c: $ef
	ld e, a                                          ; $797d: $5f
	rst $38                                          ; $797e: $ff
	or e                                             ; $797f: $b3
	ld a, a                                          ; $7980: $7f
	ld a, e                                          ; $7981: $7b
	cpl                                              ; $7982: $2f
	jr nz, jr_027_79b5                               ; $7983: $20 $30

	or b                                             ; $7985: $b0

jr_027_7986:
	sub b                                            ; $7986: $90
	rst SubAFromDE                                          ; $7987: $df
	ret z                                            ; $7988: $c8

	call z, $fffc                                    ; $7989: $cc $fc $ff
	rst AddAOntoHL                                          ; $798c: $ef
	cp c                                             ; $798d: $b9
	pop hl                                           ; $798e: $e1
	rst GetHLinHL                                          ; $798f: $cf
	ld a, [hl]                                       ; $7990: $7e
	pop af                                           ; $7991: $f1
	rst $38                                          ; $7992: $ff
	nop                                              ; $7993: $00
	rra                                              ; $7994: $1f
	ld a, a                                          ; $7995: $7f
	di                                               ; $7996: $f3
	rst $38                                          ; $7997: $ff
	rst $38                                          ; $7998: $ff
	rra                                              ; $7999: $1f
	sub l                                            ; $799a: $95
	ld c, $c0                                        ; $799b: $0e $c0
	ld b, b                                          ; $799d: $40
	ret nz                                           ; $799e: $c0

	ret nz                                           ; $799f: $c0

	add b                                            ; $79a0: $80
	rlca                                             ; $79a1: $07
	sbc a                                            ; $79a2: $9f
	cp a                                             ; $79a3: $bf
	nop                                              ; $79a4: $00
	ld a, e                                          ; $79a5: $7b
	ret                                              ; $79a6: $c9


	rst SubAFromDE                                          ; $79a7: $df
	add b                                            ; $79a8: $80
	rst $38                                          ; $79a9: $ff
	inc b                                            ; $79aa: $04
	nop                                              ; $79ab: $00
	sbc $44                                          ; $79ac: $de $44
	ld c, l                                          ; $79ae: $4d
	add b                                            ; $79af: $80
	adc h                                            ; $79b0: $8c
	and a                                            ; $79b1: $a7
	call $ed3e                                       ; $79b2: $cd $3e $ed

jr_027_79b5:
	ld e, a                                          ; $79b5: $5f
	rst $38                                          ; $79b6: $ff
	rst $38                                          ; $79b7: $ff
	rst SubAFromDE                                          ; $79b8: $df
	rst $38                                          ; $79b9: $ff
	cp $f9                                           ; $79ba: $fe $f9
	di                                               ; $79bc: $f3
	ldh [c], a                                       ; $79bd: $e2
	ret nz                                           ; $79be: $c0

	ret nz                                           ; $79bf: $c0

	ld h, b                                          ; $79c0: $60
	cp $9c                                           ; $79c1: $fe $9c
	ld h, e                                          ; $79c3: $63
	call c, $9bff                                    ; $79c4: $dc $ff $9b
	nop                                              ; $79c7: $00
	ld a, a                                          ; $79c8: $7f
	rst $38                                          ; $79c9: $ff
	add b                                            ; $79ca: $80
	db $fd                                           ; $79cb: $fd
	sbc h                                            ; $79cc: $9c
	inc bc                                           ; $79cd: $03
	add b                                            ; $79ce: $80
	add b                                            ; $79cf: $80
	call c, $f9c0                                    ; $79d0: $dc $c0 $f9
	adc a                                            ; $79d3: $8f
	rst $38                                          ; $79d4: $ff
	rst AddAOntoHL                                          ; $79d5: $ef
	ld e, a                                          ; $79d6: $5f
	rst $38                                          ; $79d7: $ff
	or b                                             ; $79d8: $b0
	ld a, a                                          ; $79d9: $7f
	ld a, e                                          ; $79da: $7b
	cpl                                              ; $79db: $2f
	jr nz, jr_027_7a0e                               ; $79dc: $20 $30

	or b                                             ; $79de: $b0
	sub b                                            ; $79df: $90
	rst SubAFromDE                                          ; $79e0: $df
	rst GetHLinHL                                          ; $79e1: $cf
	call z, $ddfc                                    ; $79e2: $cc $fc $dd
	rst $38                                          ; $79e5: $ff
	sbc [hl]                                         ; $79e6: $9e
	cp $77                                           ; $79e7: $fe $77
	ret nc                                           ; $79e9: $d0

	cp $9b                                           ; $79ea: $fe $9b
	ld bc, $7fff                                     ; $79ec: $01 $ff $7f
	ld e, $73                                        ; $79ef: $1e $73
	call nc, $c79c                                   ; $79f1: $d4 $9c $c7
	rra                                              ; $79f4: $1f
	cp a                                             ; $79f5: $bf
	db $fd                                           ; $79f6: $fd
	rst SubAFromDE                                          ; $79f7: $df
	ret nz                                           ; $79f8: $c0

	ld a, a                                          ; $79f9: $7f
	cp l                                             ; $79fa: $bd
	inc b                                            ; $79fb: $04
	nop                                              ; $79fc: $00
	sbc $44                                          ; $79fd: $de $44
	ld e, l                                          ; $79ff: $5d
	add b                                            ; $7a00: $80
	sbc l                                            ; $7a01: $9d
	cp c                                             ; $7a02: $b9
	rst FarCall                                          ; $7a03: $f7
	sbc $1f                                          ; $7a04: $de $1f
	sbc d                                            ; $7a06: $9a
	dec c                                            ; $7a07: $0d
	dec bc                                           ; $7a08: $0b
	rrca                                             ; $7a09: $0f
	rst SubAFromBC                                          ; $7a0a: $e7
	ld l, a                                          ; $7a0b: $6f
	cp $8a                                           ; $7a0c: $fe $8a

jr_027_7a0e:
	inc bc                                           ; $7a0e: $03
	rlca                                             ; $7a0f: $07
	rlca                                             ; $7a10: $07
	ld e, a                                          ; $7a11: $5f
	di                                               ; $7a12: $f3
	db $fd                                           ; $7a13: $fd
	rst $38                                          ; $7a14: $ff
	rst $38                                          ; $7a15: $ff
	rst FarCall                                          ; $7a16: $f7
	db $fd                                           ; $7a17: $fd
	rrca                                             ; $7a18: $0f
	ld sp, hl                                        ; $7a19: $f9
	db $fc                                           ; $7a1a: $fc
	ld c, $02                                        ; $7a1b: $0e $02
	nop                                              ; $7a1d: $00
	ld hl, sp-$02                                    ; $7a1e: $f8 $fe
	sbc a                                            ; $7a20: $9f
	ld e, $cf                                        ; $7a21: $1e $cf
	call c, $8dff                                    ; $7a23: $dc $ff $8d
	xor a                                            ; $7a26: $af
	rst $38                                          ; $7a27: $ff
	rst $38                                          ; $7a28: $ff
	ccf                                              ; $7a29: $3f
	ld [de], a                                       ; $7a2a: $12
	inc de                                           ; $7a2b: $13
	ld de, $f911                                     ; $7a2c: $11 $11 $f9
	ld b, $02                                        ; $7a2f: $06 $02
	ld bc, $0001                                     ; $7a31: $01 $01 $00
	ret nz                                           ; $7a34: $c0

	rst FarCall                                          ; $7a35: $f7
	cp $07                                           ; $7a36: $fe $07
	sbc $01                                          ; $7a38: $de $01
	db $fd                                           ; $7a3a: $fd
	add a                                            ; $7a3b: $87
	rrca                                             ; $7a3c: $0f
	ccf                                              ; $7a3d: $3f
	ld hl, sp+$70                                    ; $7a3e: $f8 $70
	ld h, b                                          ; $7a40: $60
	adc b                                            ; $7a41: $88
	call c, $1fa8                                    ; $7a42: $dc $a8 $1f
	inc a                                            ; $7a45: $3c
	db $fc                                           ; $7a46: $fc
	ldh a, [$f8]                                     ; $7a47: $f0 $f8
	ld hl, sp+$70                                    ; $7a49: $f8 $70
	nop                                              ; $7a4b: $00
	xor $ee                                          ; $7a4c: $ee $ee
	ld l, [hl]                                       ; $7a4e: $6e
	ld l, l                                          ; $7a4f: $6d
	ld l, l                                          ; $7a50: $6d
	ld c, c                                          ; $7a51: $49
	ld c, c                                          ; $7a52: $49
	ld e, c                                          ; $7a53: $59
	sbc $3b                                          ; $7a54: $de $3b
	rst SubAFromDE                                          ; $7a56: $df
	ld a, $df                                        ; $7a57: $3e $df
	ld a, [hl]                                       ; $7a59: $7e
	sbc [hl]                                         ; $7a5a: $9e
	ld l, [hl]                                       ; $7a5b: $6e
	inc b                                            ; $7a5c: $04
	nop                                              ; $7a5d: $00
	sbc $44                                          ; $7a5e: $de $44
	ld e, l                                          ; $7a60: $5d
	add b                                            ; $7a61: $80
	sbc l                                            ; $7a62: $9d
	cp c                                             ; $7a63: $b9
	rst FarCall                                          ; $7a64: $f7
	sbc $1f                                          ; $7a65: $de $1f
	sbc d                                            ; $7a67: $9a
	rrca                                             ; $7a68: $0f

Jump_027_7a69:
	dec c                                            ; $7a69: $0d
	dec bc                                           ; $7a6a: $0b
	rst SubAFromBC                                          ; $7a6b: $e7
	ld l, a                                          ; $7a6c: $6f
	db $fd                                           ; $7a6d: $fd
	sbc d                                            ; $7a6e: $9a
	inc bc                                           ; $7a6f: $03
	rlca                                             ; $7a70: $07
	ld e, a                                          ; $7a71: $5f
	di                                               ; $7a72: $f3
	db $fd                                           ; $7a73: $fd
	sbc $ff                                          ; $7a74: $de $ff
	sub e                                            ; $7a76: $93
	rst FarCall                                          ; $7a77: $f7
	db $fd                                           ; $7a78: $fd
	ld sp, hl                                        ; $7a79: $f9
	db $fc                                           ; $7a7a: $fc
	ld c, $02                                        ; $7a7b: $0e $02
	nop                                              ; $7a7d: $00
	nop                                              ; $7a7e: $00
	ld hl, sp-$02                                    ; $7a7f: $f8 $fe
	ld e, $cf                                        ; $7a81: $1e $cf
	call c, $8aff                                    ; $7a83: $dc $ff $8a
	rst AddAOntoHL                                          ; $7a86: $ef
	rst $38                                          ; $7a87: $ff
	rst $38                                          ; $7a88: $ff
	ccf                                              ; $7a89: $3f
	ld [de], a                                       ; $7a8a: $12
	inc de                                           ; $7a8b: $13
	ld de, $3911                                     ; $7a8c: $11 $11 $39
	rlca                                             ; $7a8f: $07
	ld b, $02                                        ; $7a90: $06 $02
	ld bc, $c000                                     ; $7a92: $01 $00 $c0
	rst FarCall                                          ; $7a95: $f7
	cp $07                                           ; $7a96: $fe $07
	rlca                                             ; $7a98: $07
	ld bc, $fd01                                     ; $7a99: $01 $01 $fd
	rst SubAFromDE                                          ; $7a9c: $df
	rrca                                             ; $7a9d: $0f
	add c                                            ; $7a9e: $81
	inc a                                            ; $7a9f: $3c
	ld hl, sp+$60                                    ; $7aa0: $f8 $60
	adc b                                            ; $7aa2: $88
	call c, $9fa8                                    ; $7aa3: $dc $a8 $9f
	rra                                              ; $7aa6: $1f
	inc a                                            ; $7aa7: $3c
	db $fc                                           ; $7aa8: $fc
	ld hl, sp-$08                                    ; $7aa9: $f8 $f8
	ld [hl], b                                       ; $7aab: $70
	nop                                              ; $7aac: $00
	xor [hl]                                         ; $7aad: $ae
	xor $6e                                          ; $7aae: $ee $6e
	ld l, l                                          ; $7ab0: $6d
	ld l, l                                          ; $7ab1: $6d
	ld c, c                                          ; $7ab2: $49
	ld c, c                                          ; $7ab3: $49
	ld e, c                                          ; $7ab4: $59
	ei                                               ; $7ab5: $fb
	dec sp                                           ; $7ab6: $3b
	dec sp                                           ; $7ab7: $3b
	ld a, $3e                                        ; $7ab8: $3e $3e
	ld a, [hl]                                       ; $7aba: $7e
	ld a, [hl]                                       ; $7abb: $7e
	ld l, [hl]                                       ; $7abc: $6e
	inc b                                            ; $7abd: $04
	nop                                              ; $7abe: $00
	sbc $44                                          ; $7abf: $de $44
	ld d, a                                          ; $7ac1: $57
	add b                                            ; $7ac2: $80
	sbc l                                            ; $7ac3: $9d
	cp c                                             ; $7ac4: $b9
	rst FarCall                                          ; $7ac5: $f7
	sbc $1f                                          ; $7ac6: $de $1f
	sbc $0f                                          ; $7ac8: $de $0f
	sbc l                                            ; $7aca: $9d
	rst SubAFromBC                                          ; $7acb: $e7
	ld l, a                                          ; $7acc: $6f
	ei                                               ; $7acd: $fb
	sbc h                                            ; $7ace: $9c
	ld e, a                                          ; $7acf: $5f
	di                                               ; $7ad0: $f3
	db $fd                                           ; $7ad1: $fd
	call c, $9bff                                    ; $7ad2: $dc $ff $9b
	ld sp, hl                                        ; $7ad5: $f9
	db $fc                                           ; $7ad6: $fc
	ld c, $02                                        ; $7ad7: $0e $02
	db $fd                                           ; $7ad9: $fd
	sbc l                                            ; $7ada: $9d
	ld e, $cf                                        ; $7adb: $1e $cf
	call c, $8dff                                    ; $7add: $dc $ff $8d
	rst AddAOntoHL                                          ; $7ae0: $ef
	rst $38                                          ; $7ae1: $ff
	rst $38                                          ; $7ae2: $ff
	ccf                                              ; $7ae3: $3f
	ld [de], a                                       ; $7ae4: $12
	inc de                                           ; $7ae5: $13
	ld de, $3911                                     ; $7ae6: $11 $11 $39
	dec b                                            ; $7ae9: $05
	inc bc                                           ; $7aea: $03
	rlca                                             ; $7aeb: $07
	ld b, $02                                        ; $7aec: $06 $02
	ret nz                                           ; $7aee: $c0

	rst FarCall                                          ; $7aef: $f7
	cp $03                                           ; $7af0: $fe $03
	sbc $07                                          ; $7af2: $de $07
	sbc [hl]                                         ; $7af4: $9e
	ld bc, $8ffe                                     ; $7af5: $01 $fe $8f
	rst GetHLinHL                                          ; $7af8: $cf
	di                                               ; $7af9: $f3
	ld a, $0f                                        ; $7afa: $3e $0f
	cp $8c                                           ; $7afc: $fe $8c
	db $fc                                           ; $7afe: $fc
	xor b                                            ; $7aff: $a8
	ldh a, [$fc]                                     ; $7b00: $f0 $fc
	rst $38                                          ; $7b02: $ff
	rra                                              ; $7b03: $1f
	cp $fc                                           ; $7b04: $fe $fc
	ld [hl], b                                       ; $7b06: $70
	nop                                              ; $7b07: $00
	sbc $ee                                          ; $7b08: $de $ee
	sbc d                                            ; $7b0a: $9a
	db $ed                                           ; $7b0b: $ed
	ld l, l                                          ; $7b0c: $6d
	ld c, c                                          ; $7b0d: $49
	ld c, c                                          ; $7b0e: $49
	ld e, c                                          ; $7b0f: $59
	sbc $3b                                          ; $7b10: $de $3b
	sbc d                                            ; $7b12: $9a
	cp $3e                                           ; $7b13: $fe $3e
	ld a, [hl]                                       ; $7b15: $7e
	ld a, [hl]                                       ; $7b16: $7e
	ld l, [hl]                                       ; $7b17: $6e
	inc b                                            ; $7b18: $04
	nop                                              ; $7b19: $00
	sbc $44                                          ; $7b1a: $de $44
	ld d, [hl]                                       ; $7b1c: $56
	add b                                            ; $7b1d: $80
	sbc l                                            ; $7b1e: $9d
	cp c                                             ; $7b1f: $b9
	rst FarCall                                          ; $7b20: $f7
	sbc $1f                                          ; $7b21: $de $1f
	sbc $0f                                          ; $7b23: $de $0f
	sbc l                                            ; $7b25: $9d
	rst SubAFromBC                                          ; $7b26: $e7
	ld l, a                                          ; $7b27: $6f
	ei                                               ; $7b28: $fb
	sbc h                                            ; $7b29: $9c
	ld e, a                                          ; $7b2a: $5f
	di                                               ; $7b2b: $f3
	db $fd                                           ; $7b2c: $fd
	call c, $9bff                                    ; $7b2d: $dc $ff $9b
	ld sp, hl                                        ; $7b30: $f9
	db $fc                                           ; $7b31: $fc
	ld c, $02                                        ; $7b32: $0e $02
	db $fd                                           ; $7b34: $fd
	sbc l                                            ; $7b35: $9d
	ld e, $cf                                        ; $7b36: $1e $cf
	call c, $96ff                                    ; $7b38: $dc $ff $96
	rst AddAOntoHL                                          ; $7b3b: $ef
	rst $38                                          ; $7b3c: $ff
	rst $38                                          ; $7b3d: $ff
	ccf                                              ; $7b3e: $3f
	ld [de], a                                       ; $7b3f: $12
	inc de                                           ; $7b40: $13
	ld de, $3911                                     ; $7b41: $11 $11 $39
	sbc $07                                          ; $7b44: $de $07
	sbc d                                            ; $7b46: $9a
	nop                                              ; $7b47: $00
	rlca                                             ; $7b48: $07
	pop bc                                           ; $7b49: $c1
	rst FarCall                                          ; $7b4a: $f7
	cp $fe                                           ; $7b4b: $fe $fe
	rst SubAFromDE                                          ; $7b4d: $df
	rlca                                             ; $7b4e: $07
	sbc h                                            ; $7b4f: $9c
	ld bc, $0000                                     ; $7b50: $01 $00 $00
	sbc $ff                                          ; $7b53: $de $ff
	sbc d                                            ; $7b55: $9a
	cp $ff                                           ; $7b56: $fe $ff
	cp $7c                                           ; $7b58: $fe $7c
	xor b                                            ; $7b5a: $a8
	cp $9a                                           ; $7b5b: $fe $9a
	ld bc, $feff                                     ; $7b5d: $01 $ff $fe
	ldh a, [rP1]                                     ; $7b60: $f0 $00
	sbc $ee                                          ; $7b62: $de $ee
	sbc d                                            ; $7b64: $9a
	dec l                                            ; $7b65: $2d
	db $ed                                           ; $7b66: $ed
	ld c, c                                          ; $7b67: $49
	ld c, c                                          ; $7b68: $49
	ld e, c                                          ; $7b69: $59
	sbc $3b                                          ; $7b6a: $de $3b
	rst SubAFromDE                                          ; $7b6c: $df
	cp $df                                           ; $7b6d: $fe $df
	ld a, [hl]                                       ; $7b6f: $7e
	sbc [hl]                                         ; $7b70: $9e
	ld l, [hl]                                       ; $7b71: $6e
	inc b                                            ; $7b72: $04
	nop                                              ; $7b73: $00
	sbc $44                                          ; $7b74: $de $44
	ld h, b                                          ; $7b76: $60
	nop                                              ; $7b77: $00
	add b                                            ; $7b78: $80
	cp l                                             ; $7b79: $bd
	db $e3                                           ; $7b7a: $e3
	cp $67                                           ; $7b7b: $fe $67
	inc de                                           ; $7b7d: $13
	inc c                                            ; $7b7e: $0c
	rra                                              ; $7b7f: $1f
	nop                                              ; $7b80: $00
	ld e, $01                                        ; $7b81: $1e $01
	dec c                                            ; $7b83: $0d
	inc bc                                           ; $7b84: $03
	dec bc                                           ; $7b85: $0b
	rlca                                             ; $7b86: $07
	ld c, $07                                        ; $7b87: $0e $07
	ei                                               ; $7b89: $fb
	db $fd                                           ; $7b8a: $fd
	dec c                                            ; $7b8b: $0d
	cp $ff                                           ; $7b8c: $fe $ff
	ld [bc], a                                       ; $7b8e: $02
	rst $38                                          ; $7b8f: $ff
	nop                                              ; $7b90: $00
	rst AddAOntoHL                                          ; $7b91: $ef
	ldh a, [$fb]                                     ; $7b92: $f0 $fb
	db $fc                                           ; $7b94: $fc
	rra                                              ; $7b95: $1f
	rst $38                                          ; $7b96: $ff
	ld c, $8b                                        ; $7b97: $0e $8b
	rra                                              ; $7b99: $1f
	ld e, $ff                                        ; $7b9a: $1e $ff
	rst GetHLinHL                                          ; $7b9c: $cf
	rst $38                                          ; $7b9d: $ff
	rst $38                                          ; $7b9e: $ff
	ccf                                              ; $7b9f: $3f
	rst $38                                          ; $7ba0: $ff
	ld [de], a                                       ; $7ba1: $12
	rst $38                                          ; $7ba2: $ff
	inc de                                           ; $7ba3: $13
	rst $38                                          ; $7ba4: $ff
	ld de, $f19f                                     ; $7ba5: $11 $9f $f1
	xor a                                            ; $7ba8: $af
	ld a, c                                          ; $7ba9: $79
	ld b, $07                                        ; $7baa: $06 $07
	ld [bc], a                                       ; $7bac: $02
	call c, $ff01                                    ; $7bad: $dc $01 $ff
	sbc [hl]                                         ; $7bb0: $9e
	ret nz                                           ; $7bb1: $c0

	cp [hl]                                          ; $7bb2: $be
	rst FarCall                                          ; $7bb3: $f7
	cp $0d                                           ; $7bb4: $fe $0d
	add b                                            ; $7bb6: $80
	ld e, $3f                                        ; $7bb7: $1e $3f
	inc a                                            ; $7bb9: $3c
	ld hl, sp-$04                                    ; $7bba: $f8 $fc
	ld [hl], b                                       ; $7bbc: $70
	ldh a, [$60]                                     ; $7bbd: $f0 $60
	ld hl, sp-$78                                    ; $7bbf: $f8 $88
	ld hl, sp-$24                                    ; $7bc1: $f8 $dc
	ld [hl], b                                       ; $7bc3: $70
	xor b                                            ; $7bc4: $a8
	nop                                              ; $7bc5: $00
	xor $3b                                          ; $7bc6: $ee $3b
	xor $3b                                          ; $7bc8: $ee $3b
	ld l, [hl]                                       ; $7bca: $6e
	dec sp                                           ; $7bcb: $3b
	ld l, l                                          ; $7bcc: $6d
	ld a, $6d                                        ; $7bcd: $3e $6d

Jump_027_7bcf:
	ld a, $49                                        ; $7bcf: $3e $49
	ld a, [hl]                                       ; $7bd1: $7e
	ld c, c                                          ; $7bd2: $49
	ld a, [hl]                                       ; $7bd3: $7e
	ld e, c                                          ; $7bd4: $59
	ld l, [hl]                                       ; $7bd5: $6e
	inc b                                            ; $7bd6: $04
	nop                                              ; $7bd7: $00
	sbc $44                                          ; $7bd8: $de $44

Jump_027_7bda:
	ld e, a                                          ; $7bda: $5f
	add b                                            ; $7bdb: $80
	adc l                                            ; $7bdc: $8d
	cp l                                             ; $7bdd: $bd
	cp $13                                           ; $7bde: $fe $13
	rra                                              ; $7be0: $1f
	rra                                              ; $7be1: $1f
	ld c, $0d                                        ; $7be2: $0e $0d
	dec bc                                           ; $7be4: $0b
	db $e3                                           ; $7be5: $e3
	ld h, a                                          ; $7be6: $67
	inc c                                            ; $7be7: $0c
	nop                                              ; $7be8: $00
	nop                                              ; $7be9: $00
	ld bc, $0703                                     ; $7bea: $01 $03 $07
	ei                                               ; $7bed: $fb
	dec c                                            ; $7bee: $0d
	sbc $ff                                          ; $7bef: $de $ff
	sub d                                            ; $7bf1: $92
	rst AddAOntoHL                                          ; $7bf2: $ef
	ei                                               ; $7bf3: $fb
	rra                                              ; $7bf4: $1f
	db $fd                                           ; $7bf5: $fd
	cp $02                                           ; $7bf6: $fe $02
	nop                                              ; $7bf8: $00
	nop                                              ; $7bf9: $00
	ldh a, [$fc]                                     ; $7bfa: $f0 $fc

Call_027_7bfc:
	rst $38                                          ; $7bfc: $ff
	ld e, $cf                                        ; $7bfd: $1e $cf

Call_027_7bff:
Jump_027_7bff:
	call c, $8aff                                    ; $7bff: $dc $ff $8a
	xor a                                            ; $7c02: $af
	rst $38                                          ; $7c03: $ff
	rst $38                                          ; $7c04: $ff
	ccf                                              ; $7c05: $3f
	ld [de], a                                       ; $7c06: $12
	inc de                                           ; $7c07: $13
	ld de, $f911                                     ; $7c08: $11 $11 $f9
	ld b, $06                                        ; $7c0b: $06 $06
	ld [bc], a                                       ; $7c0d: $02
	ld bc, $c000                                     ; $7c0e: $01 $00 $c0
	rst FarCall                                          ; $7c11: $f7
	cp $07                                           ; $7c12: $fe $07
	rlca                                             ; $7c14: $07
	ld bc, $fd01                                     ; $7c15: $01 $01 $fd
	ld a, a                                          ; $7c18: $7f
	push bc                                          ; $7c19: $c5
	adc c                                            ; $7c1a: $89
	inc a                                            ; $7c1b: $3c
	ld hl, sp+$60                                    ; $7c1c: $f8 $60
	adc b                                            ; $7c1e: $88
	call c, $1fa8                                    ; $7c1f: $dc $a8 $1f
	ld e, $3c                                        ; $7c22: $1e $3c
	db $fc                                           ; $7c24: $fc
	ld hl, sp-$08                                    ; $7c25: $f8 $f8
	ld [hl], b                                       ; $7c27: $70
	nop                                              ; $7c28: $00
	xor $ee                                          ; $7c29: $ee $ee
	ld l, [hl]                                       ; $7c2b: $6e
	ld l, l                                          ; $7c2c: $6d
	ld l, l                                          ; $7c2d: $6d
	ld c, c                                          ; $7c2e: $49
	ld c, c                                          ; $7c2f: $49
	ld e, c                                          ; $7c30: $59
	sbc $3b                                          ; $7c31: $de $3b
	rst SubAFromDE                                          ; $7c33: $df
	ld a, $df                                        ; $7c34: $3e $df
	ld a, [hl]                                       ; $7c36: $7e
	sbc [hl]                                         ; $7c37: $9e
	ld l, [hl]                                       ; $7c38: $6e
	inc b                                            ; $7c39: $04
	nop                                              ; $7c3a: $00
	sbc $44                                          ; $7c3b: $de $44
	ld e, b                                          ; $7c3d: $58
	add b                                            ; $7c3e: $80
	sbc d                                            ; $7c3f: $9a
	cp l                                             ; $7c40: $bd
	cp $13                                           ; $7c41: $fe $13
	rra                                              ; $7c43: $1f
	rra                                              ; $7c44: $1f
	sbc $0f                                          ; $7c45: $de $0f
	sbc h                                            ; $7c47: $9c
	db $e3                                           ; $7c48: $e3
	ld h, a                                          ; $7c49: $67
	inc c                                            ; $7c4a: $0c
	db $fc                                           ; $7c4b: $fc
	sbc l                                            ; $7c4c: $9d
	ei                                               ; $7c4d: $fb
	dec c                                            ; $7c4e: $0d
	db $db                                           ; $7c4f: $db
	rst $38                                          ; $7c50: $ff
	sbc h                                            ; $7c51: $9c
	db $fd                                           ; $7c52: $fd
	cp $02                                           ; $7c53: $fe $02
	db $fc                                           ; $7c55: $fc
	sbc l                                            ; $7c56: $9d
	ld e, $cf                                        ; $7c57: $1e $cf
	call c, $89ff                                    ; $7c59: $dc $ff $89
	rst AddAOntoHL                                          ; $7c5c: $ef
	rst $38                                          ; $7c5d: $ff
	rst $38                                          ; $7c5e: $ff
	ccf                                              ; $7c5f: $3f
	ld [de], a                                       ; $7c60: $12
	inc de                                           ; $7c61: $13
	ld de, $3911                                     ; $7c62: $11 $11 $39
	dec b                                            ; $7c65: $05
	inc bc                                           ; $7c66: $03
	ld b, $01                                        ; $7c67: $06 $01
	nop                                              ; $7c69: $00
	ret nz                                           ; $7c6a: $c0

	rst FarCall                                          ; $7c6b: $f7
	cp $03                                           ; $7c6c: $fe $03
	rlca                                             ; $7c6e: $07
	rlca                                             ; $7c6f: $07
	inc bc                                           ; $7c70: $03
	ld bc, $80fe                                     ; $7c71: $01 $fe $80
	rst FarCall                                          ; $7c74: $f7
	dec a                                            ; $7c75: $3d
	rrca                                             ; $7c76: $0f
	db $fc                                           ; $7c77: $fc
	ld a, h                                          ; $7c78: $7c
	adc b                                            ; $7c79: $88
	db $fc                                           ; $7c7a: $fc
	xor b                                            ; $7c7b: $a8
	ld hl, sp-$02                                    ; $7c7c: $f8 $fe
	rra                                              ; $7c7e: $1f
	cp $fc                                           ; $7c7f: $fe $fc
	ld hl, sp+$70                                    ; $7c81: $f8 $70
	nop                                              ; $7c83: $00
	xor $ee                                          ; $7c84: $ee $ee
	xor [hl]                                         ; $7c86: $ae
	ld l, l                                          ; $7c87: $6d
	ld l, l                                          ; $7c88: $6d
	ld c, c                                          ; $7c89: $49
	ld c, c                                          ; $7c8a: $49
	ld e, c                                          ; $7c8b: $59
	dec sp                                           ; $7c8c: $3b
	dec sp                                           ; $7c8d: $3b
	ei                                               ; $7c8e: $fb
	ld a, $3e                                        ; $7c8f: $3e $3e
	ld a, [hl]                                       ; $7c91: $7e
	ld a, [hl]                                       ; $7c92: $7e
	sbc [hl]                                         ; $7c93: $9e
	ld l, [hl]                                       ; $7c94: $6e
	inc b                                            ; $7c95: $04
	nop                                              ; $7c96: $00
	sbc $44                                          ; $7c97: $de $44
	ld d, [hl]                                       ; $7c99: $56
	nop                                              ; $7c9a: $00
	sub h                                            ; $7c9b: $94
	cp l                                             ; $7c9c: $bd
	db $e3                                           ; $7c9d: $e3

Call_027_7c9e:
	cp $67                                           ; $7c9e: $fe $67
	inc de                                           ; $7ca0: $13
	inc c                                            ; $7ca1: $0c
	rra                                              ; $7ca2: $1f
	nop                                              ; $7ca3: $00
	rra                                              ; $7ca4: $1f
	nop                                              ; $7ca5: $00
	rrca                                             ; $7ca6: $0f
	ld [hl], e                                       ; $7ca7: $73
	cp $97                                           ; $7ca8: $fe $97
	ei                                               ; $7caa: $fb
	db $fd                                           ; $7cab: $fd
	dec c                                            ; $7cac: $0d
	cp $ff                                           ; $7cad: $fe $ff
	ld [bc], a                                       ; $7caf: $02
	rst $38                                          ; $7cb0: $ff
	nop                                              ; $7cb1: $00
	ld h, a                                          ; $7cb2: $67
	cp $8d                                           ; $7cb3: $fe $8d
	ld e, $ff                                        ; $7cb5: $1e $ff
	rst GetHLinHL                                          ; $7cb7: $cf
	rst $38                                          ; $7cb8: $ff
	rst $38                                          ; $7cb9: $ff
	ccf                                              ; $7cba: $3f
	rst $38                                          ; $7cbb: $ff
	ld [de], a                                       ; $7cbc: $12
	rst $38                                          ; $7cbd: $ff
	inc de                                           ; $7cbe: $13
	rst $38                                          ; $7cbf: $ff
	ld de, $11ff                                     ; $7cc0: $11 $ff $11
	rst AddAOntoHL                                          ; $7cc3: $ef
	add hl, sp                                       ; $7cc4: $39
	rlca                                             ; $7cc5: $07
	nop                                              ; $7cc6: $00
	ld [hl], a                                       ; $7cc7: $77
	cp $7f                                           ; $7cc8: $fe $7f
	db $fd                                           ; $7cca: $fd
	rst SubAFromDE                                          ; $7ccb: $df
	rlca                                             ; $7ccc: $07
	sbc d                                            ; $7ccd: $9a
	pop bc                                           ; $7cce: $c1
	ld bc, $00f7                                     ; $7ccf: $01 $f7 $00
	cp $6b                                           ; $7cd2: $fe $6b
	jp c, $fe93                                      ; $7cd4: $da $93 $fe

	ld bc, rIE                                     ; $7cd7: $01 $ff $ff
	cp $fe                                           ; $7cda: $fe $fe
	ld a, h                                          ; $7cdc: $7c
	ldh a, [$a8]                                     ; $7cdd: $f0 $a8
	nop                                              ; $7cdf: $00
	xor $3b                                          ; $7ce0: $ee $3b
	ld [hl], a                                       ; $7ce2: $77
	cp $95                                           ; $7ce3: $fe $95
	dec l                                            ; $7ce5: $2d
	cp $ed                                           ; $7ce6: $fe $ed
	cp $49                                           ; $7ce8: $fe $49
	ld a, [hl]                                       ; $7cea: $7e
	ld c, c                                          ; $7ceb: $49
	ld a, [hl]                                       ; $7cec: $7e
	ld e, c                                          ; $7ced: $59
	ld l, [hl]                                       ; $7cee: $6e
	inc b                                            ; $7cef: $04
	nop                                              ; $7cf0: $00
	sbc $44                                          ; $7cf1: $de $44
	ld b, d                                          ; $7cf3: $42
	nop                                              ; $7cf4: $00
	adc c                                            ; $7cf5: $89
	rra                                              ; $7cf6: $1f
	nop                                              ; $7cf7: $00
	rrca                                             ; $7cf8: $0f
	ld bc, $0107                                     ; $7cf9: $01 $07 $01
	nop                                              ; $7cfc: $00
	nop                                              ; $7cfd: $00
	inc bc                                           ; $7cfe: $03
	ld bc, $0e06                                     ; $7cff: $01 $06 $0e
	rra                                              ; $7d02: $1f
	ld [bc], a                                       ; $7d03: $02
	inc bc                                           ; $7d04: $03
	ld bc, $8047                                     ; $7d05: $01 $47 $80
	ret nz                                           ; $7d08: $c0

	add b                                            ; $7d09: $80
	nop                                              ; $7d0a: $00
	add b                                            ; $7d0b: $80
	db $fd                                           ; $7d0c: $fd
	add b                                            ; $7d0d: $80
	ldh a, [$b0]                                     ; $7d0e: $f0 $b0
	ld a, h                                          ; $7d10: $7c
	ld c, h                                          ; $7d11: $4c
	cp [hl]                                          ; $7d12: $be
	ld a, [hl-]                                      ; $7d13: $3a
	ld c, $02                                        ; $7d14: $0e $02
	dec c                                            ; $7d16: $0d
	dec b                                            ; $7d17: $05
	ld b, $04                                        ; $7d18: $06 $04
	rrca                                             ; $7d1a: $0f
	ld b, $1f                                        ; $7d1b: $06 $1f
	ld a, [bc]                                       ; $7d1d: $0a
	dec a                                            ; $7d1e: $3d
	inc de                                           ; $7d1f: $13
	ei                                               ; $7d20: $fb
	ld h, $75                                        ; $7d21: $26 $75
	call $92fb                                       ; $7d23: $cd $fb $92
	or a                                             ; $7d26: $b7
	ld h, h                                          ; $7d27: $64
	rst SubAFromBC                                          ; $7d28: $e7
	rst JumpTable                                          ; $7d29: $c7
	ld l, a                                          ; $7d2a: $6f
	ld c, d                                          ; $7d2b: $4a
	xor [hl]                                         ; $7d2c: $ae
	sbc b                                            ; $7d2d: $98
	inc [hl]                                         ; $7d2e: $34
	sbc $18                                          ; $7d2f: $de $18
	db $fd                                           ; $7d31: $fd
	sub c                                            ; $7d32: $91
	cp e                                             ; $7d33: $bb
	ld h, d                                          ; $7d34: $62
	inc b                                            ; $7d35: $04
	nop                                              ; $7d36: $00
	rst SubAFromDE                                          ; $7d37: $df
	ld d, l                                          ; $7d38: $55
	ld b, d                                          ; $7d39: $42
	nop                                              ; $7d3a: $00
	adc c                                            ; $7d3b: $89
	rra                                              ; $7d3c: $1f
	nop                                              ; $7d3d: $00
	rrca                                             ; $7d3e: $0f
	ld bc, $0107                                     ; $7d3f: $01 $07 $01
	nop                                              ; $7d42: $00
	nop                                              ; $7d43: $00
	rlca                                             ; $7d44: $07
	ld bc, $0e1e                                     ; $7d45: $01 $1e $0e
	rra                                              ; $7d48: $1f
	ld e, $0f                                        ; $7d49: $1e $0f
	ld bc, $8047                                     ; $7d4b: $01 $47 $80
	ret nz                                           ; $7d4e: $c0

	add b                                            ; $7d4f: $80
	nop                                              ; $7d50: $00
	add b                                            ; $7d51: $80
	db $fd                                           ; $7d52: $fd
	add b                                            ; $7d53: $80
	ldh a, [$b0]                                     ; $7d54: $f0 $b0
	ld a, h                                          ; $7d56: $7c
	ld c, h                                          ; $7d57: $4c
	cp [hl]                                          ; $7d58: $be
	ld a, [hl-]                                      ; $7d59: $3a
	ld [bc], a                                       ; $7d5a: $02
	ld [bc], a                                       ; $7d5b: $02
	dec e                                            ; $7d5c: $1d
	dec b                                            ; $7d5d: $05
	ld c, $04                                        ; $7d5e: $0e $04
	rrca                                             ; $7d60: $0f
	ld b, $1f                                        ; $7d61: $06 $1f
	ld a, [bc]                                       ; $7d63: $0a
	dec a                                            ; $7d64: $3d
	inc de                                           ; $7d65: $13
	ei                                               ; $7d66: $fb
	ld h, $75                                        ; $7d67: $26 $75
	call $92fb                                       ; $7d69: $cd $fb $92
	or a                                             ; $7d6c: $b7
	ld h, h                                          ; $7d6d: $64
	rst SubAFromBC                                          ; $7d6e: $e7
	rst JumpTable                                          ; $7d6f: $c7
	ld l, a                                          ; $7d70: $6f
	ld c, d                                          ; $7d71: $4a
	xor [hl]                                         ; $7d72: $ae
	sbc b                                            ; $7d73: $98
	inc [hl]                                         ; $7d74: $34
	sbc $18                                          ; $7d75: $de $18
	db $fd                                           ; $7d77: $fd
	sub c                                            ; $7d78: $91
	cp e                                             ; $7d79: $bb
	ld h, d                                          ; $7d7a: $62
	inc b                                            ; $7d7b: $04
	nop                                              ; $7d7c: $00
	rst SubAFromDE                                          ; $7d7d: $df
	ld d, l                                          ; $7d7e: $55
	ld b, d                                          ; $7d7f: $42
	nop                                              ; $7d80: $00
	adc c                                            ; $7d81: $89
	rra                                              ; $7d82: $1f
	nop                                              ; $7d83: $00
	rrca                                             ; $7d84: $0f
	ld bc, $0107                                     ; $7d85: $01 $07 $01
	nop                                              ; $7d88: $00
	nop                                              ; $7d89: $00
	inc bc                                           ; $7d8a: $03
	ld bc, $0e0e                                     ; $7d8b: $01 $0e $0e
	rra                                              ; $7d8e: $1f
	ld e, $1f                                        ; $7d8f: $1e $1f
	rra                                              ; $7d91: $1f
	ld b, a                                          ; $7d92: $47
	add b                                            ; $7d93: $80
	ret nz                                           ; $7d94: $c0

	add b                                            ; $7d95: $80
	nop                                              ; $7d96: $00
	add b                                            ; $7d97: $80
	db $fd                                           ; $7d98: $fd
	add b                                            ; $7d99: $80
	ldh a, [$b0]                                     ; $7d9a: $f0 $b0
	ld a, h                                          ; $7d9c: $7c
	ld c, h                                          ; $7d9d: $4c
	cp [hl]                                          ; $7d9e: $be
	ld a, [hl-]                                      ; $7d9f: $3a
	ld e, $0e                                        ; $7da0: $1e $0e
	dec c                                            ; $7da2: $0d
	dec b                                            ; $7da3: $05
	ld b, $04                                        ; $7da4: $06 $04
	rrca                                             ; $7da6: $0f
	ld b, $1f                                        ; $7da7: $06 $1f
	ld a, [bc]                                       ; $7da9: $0a
	dec a                                            ; $7daa: $3d
	inc de                                           ; $7dab: $13
	ei                                               ; $7dac: $fb
	ld h, $75                                        ; $7dad: $26 $75
	call $92fb                                       ; $7daf: $cd $fb $92
	or a                                             ; $7db2: $b7
	ld h, h                                          ; $7db3: $64
	rst SubAFromBC                                          ; $7db4: $e7
	rst JumpTable                                          ; $7db5: $c7
	ld l, a                                          ; $7db6: $6f
	ld c, d                                          ; $7db7: $4a
	xor [hl]                                         ; $7db8: $ae
	sbc b                                            ; $7db9: $98
	inc [hl]                                         ; $7dba: $34
	sbc $18                                          ; $7dbb: $de $18
	db $fd                                           ; $7dbd: $fd
	sub c                                            ; $7dbe: $91
	cp e                                             ; $7dbf: $bb
	ld h, d                                          ; $7dc0: $62
	inc b                                            ; $7dc1: $04
	nop                                              ; $7dc2: $00
	rst SubAFromDE                                          ; $7dc3: $df
	ld d, l                                          ; $7dc4: $55
	ld b, d                                          ; $7dc5: $42
	nop                                              ; $7dc6: $00
	adc c                                            ; $7dc7: $89
	rra                                              ; $7dc8: $1f
	nop                                              ; $7dc9: $00
	rrca                                             ; $7dca: $0f
	ld bc, $0107                                     ; $7dcb: $01 $07 $01
	nop                                              ; $7dce: $00
	nop                                              ; $7dcf: $00
	inc bc                                           ; $7dd0: $03
	ld bc, $060e                                     ; $7dd1: $01 $0e $06
	rra                                              ; $7dd4: $1f
	ld c, $1f                                        ; $7dd5: $0e $1f
	rra                                              ; $7dd7: $1f
	ld b, a                                          ; $7dd8: $47
	add b                                            ; $7dd9: $80
	ret nz                                           ; $7dda: $c0

	add b                                            ; $7ddb: $80
	nop                                              ; $7ddc: $00
	add b                                            ; $7ddd: $80
	db $fd                                           ; $7dde: $fd
	add b                                            ; $7ddf: $80
	ldh a, [$b0]                                     ; $7de0: $f0 $b0
	ld a, h                                          ; $7de2: $7c
	ld c, h                                          ; $7de3: $4c
	cp [hl]                                          ; $7de4: $be
	ld a, [hl-]                                      ; $7de5: $3a
	ld e, $1e                                        ; $7de6: $1e $1e
	dec e                                            ; $7de8: $1d
	dec c                                            ; $7de9: $0d
	ld c, $04                                        ; $7dea: $0e $04
	rrca                                             ; $7dec: $0f
	ld b, $1f                                        ; $7ded: $06 $1f
	ld a, [bc]                                       ; $7def: $0a
	dec a                                            ; $7df0: $3d
	inc de                                           ; $7df1: $13
	ei                                               ; $7df2: $fb
	ld h, $75                                        ; $7df3: $26 $75
	call $92fb                                       ; $7df5: $cd $fb $92
	or a                                             ; $7df8: $b7
	ld h, h                                          ; $7df9: $64
	rst SubAFromBC                                          ; $7dfa: $e7
	rst JumpTable                                          ; $7dfb: $c7
	ld l, a                                          ; $7dfc: $6f
	ld c, d                                          ; $7dfd: $4a
	xor [hl]                                         ; $7dfe: $ae
	sbc b                                            ; $7dff: $98
	inc [hl]                                         ; $7e00: $34
	sbc $18                                          ; $7e01: $de $18
	db $fd                                           ; $7e03: $fd
	sub c                                            ; $7e04: $91
	cp e                                             ; $7e05: $bb
	ld h, d                                          ; $7e06: $62
	inc b                                            ; $7e07: $04
	nop                                              ; $7e08: $00
	rst SubAFromDE                                          ; $7e09: $df
	ld d, l                                          ; $7e0a: $55
	ld b, d                                          ; $7e0b: $42
	nop                                              ; $7e0c: $00
	adc c                                            ; $7e0d: $89
	rra                                              ; $7e0e: $1f
	nop                                              ; $7e0f: $00
	rrca                                             ; $7e10: $0f
	ld bc, $0107                                     ; $7e11: $01 $07 $01
	nop                                              ; $7e14: $00
	nop                                              ; $7e15: $00
	ld h, e                                          ; $7e16: $63
	ld sp, $0e36                                     ; $7e17: $31 $36 $0e
	rrca                                             ; $7e1a: $0f
	ld [bc], a                                       ; $7e1b: $02
	inc bc                                           ; $7e1c: $03
	ld bc, $8047                                     ; $7e1d: $01 $47 $80
	ret nz                                           ; $7e20: $c0

	add b                                            ; $7e21: $80
	nop                                              ; $7e22: $00
	add b                                            ; $7e23: $80

jr_027_7e24:
	db $fd                                           ; $7e24: $fd
	add b                                            ; $7e25: $80
	ldh a, [$b0]                                     ; $7e26: $f0 $b0
	ld a, h                                          ; $7e28: $7c
	ld c, h                                          ; $7e29: $4c
	cp [hl]                                          ; $7e2a: $be
	ld a, [hl-]                                      ; $7e2b: $3a
	ld c, $02                                        ; $7e2c: $0e $02
	dec c                                            ; $7e2e: $0d
	dec b                                            ; $7e2f: $05
	ld b, $04                                        ; $7e30: $06 $04
	rrca                                             ; $7e32: $0f
	ld b, $1f                                        ; $7e33: $06 $1f
	ld a, [bc]                                       ; $7e35: $0a
	dec a                                            ; $7e36: $3d
	inc de                                           ; $7e37: $13
	ei                                               ; $7e38: $fb
	ld h, $75                                        ; $7e39: $26 $75
	call $92fb                                       ; $7e3b: $cd $fb $92
	or a                                             ; $7e3e: $b7
	ld h, h                                          ; $7e3f: $64
	rst SubAFromBC                                          ; $7e40: $e7
	rst JumpTable                                          ; $7e41: $c7
	ld l, a                                          ; $7e42: $6f
	ld c, d                                          ; $7e43: $4a
	xor [hl]                                         ; $7e44: $ae
	sbc b                                            ; $7e45: $98
	inc [hl]                                         ; $7e46: $34
	sbc $18                                          ; $7e47: $de $18
	db $fd                                           ; $7e49: $fd
	sub c                                            ; $7e4a: $91
	cp e                                             ; $7e4b: $bb
	ld h, d                                          ; $7e4c: $62
	inc b                                            ; $7e4d: $04
	nop                                              ; $7e4e: $00
	rst SubAFromDE                                          ; $7e4f: $df
	ld d, l                                          ; $7e50: $55
	ld b, e                                          ; $7e51: $43
	add b                                            ; $7e52: $80
	add a                                            ; $7e53: $87
	rra                                              ; $7e54: $1f
	rrca                                             ; $7e55: $0f
	rlca                                             ; $7e56: $07
	nop                                              ; $7e57: $00
	ld a, a                                          ; $7e58: $7f
	ld a, $1f                                        ; $7e59: $3e $1f
	rrca                                             ; $7e5b: $0f
	nop                                              ; $7e5c: $00
	ld bc, $0001                                     ; $7e5d: $01 $01 $00
	ccf                                              ; $7e60: $3f
	ld e, $0e                                        ; $7e61: $1e $0e
	ld bc, $c047                                     ; $7e63: $01 $47 $c0
	nop                                              ; $7e66: $00
	nop                                              ; $7e67: $00
	ret nz                                           ; $7e68: $c0

	ldh a, [$7c]                                     ; $7e69: $f0 $7c

jr_027_7e6b:
	cp [hl]                                          ; $7e6b: $be
	sbc $80                                          ; $7e6c: $de $80
	rst $38                                          ; $7e6e: $ff
	add b                                            ; $7e6f: $80
	or b                                             ; $7e70: $b0
	ld c, h                                          ; $7e71: $4c
	ld a, [hl-]                                      ; $7e72: $3a
	ld b, $0d                                        ; $7e73: $06 $0d
	ld b, $0f                                        ; $7e75: $06 $0f
	rra                                              ; $7e77: $1f
	dec a                                            ; $7e78: $3d
	ei                                               ; $7e79: $fb
	ld [hl], l                                       ; $7e7a: $75
	ld [bc], a                                       ; $7e7b: $02
	dec b                                            ; $7e7c: $05
	inc b                                            ; $7e7d: $04
	ld b, $0a                                        ; $7e7e: $06 $0a
	inc de                                           ; $7e80: $13
	ld h, $cd                                        ; $7e81: $26 $cd
	ei                                               ; $7e83: $fb
	or a                                             ; $7e84: $b7
	rst SubAFromBC                                          ; $7e85: $e7
	ld l, a                                          ; $7e86: $6f
	xor [hl]                                         ; $7e87: $ae
	sbc $fd                                          ; $7e88: $de $fd
	cp e                                             ; $7e8a: $bb
	sub d                                            ; $7e8b: $92
	ld h, h                                          ; $7e8c: $64
	rst JumpTable                                          ; $7e8d: $c7
	ld c, d                                          ; $7e8e: $4a
	sbc e                                            ; $7e8f: $9b
	inc [hl]                                         ; $7e90: $34
	jr jr_027_7e24                                   ; $7e91: $18 $91

	ld h, d                                          ; $7e93: $62
	inc b                                            ; $7e94: $04
	nop                                              ; $7e95: $00
	rst SubAFromDE                                          ; $7e96: $df
	ld d, l                                          ; $7e97: $55
	ld b, e                                          ; $7e98: $43
	add b                                            ; $7e99: $80
	add a                                            ; $7e9a: $87
	rra                                              ; $7e9b: $1f
	rrca                                             ; $7e9c: $0f
	rlca                                             ; $7e9d: $07
	nop                                              ; $7e9e: $00
	ccf                                              ; $7e9f: $3f
	ld a, $3f                                        ; $7ea0: $3e $3f
	rra                                              ; $7ea2: $1f
	nop                                              ; $7ea3: $00
	ld bc, $0001                                     ; $7ea4: $01 $01 $00
	rra                                              ; $7ea7: $1f
	ld a, $1e                                        ; $7ea8: $3e $1e
	rrca                                             ; $7eaa: $0f
	ld b, a                                          ; $7eab: $47
	ret nz                                           ; $7eac: $c0

	nop                                              ; $7ead: $00
	nop                                              ; $7eae: $00
	ret nz                                           ; $7eaf: $c0

	ldh a, [$7c]                                     ; $7eb0: $f0 $7c

jr_027_7eb2:
	cp [hl]                                          ; $7eb2: $be
	sbc $80                                          ; $7eb3: $de $80
	rst $38                                          ; $7eb5: $ff
	add b                                            ; $7eb6: $80
	or b                                             ; $7eb7: $b0
	ld c, h                                          ; $7eb8: $4c
	ld a, [hl-]                                      ; $7eb9: $3a
	ld c, $0d                                        ; $7eba: $0e $0d
	ld b, $0f                                        ; $7ebc: $06 $0f
	rra                                              ; $7ebe: $1f
	dec a                                            ; $7ebf: $3d
	ei                                               ; $7ec0: $fb
	ld [hl], l                                       ; $7ec1: $75
	ld [bc], a                                       ; $7ec2: $02
	dec b                                            ; $7ec3: $05
	inc b                                            ; $7ec4: $04
	ld b, $0a                                        ; $7ec5: $06 $0a
	inc de                                           ; $7ec7: $13
	ld h, $cd                                        ; $7ec8: $26 $cd
	ei                                               ; $7eca: $fb
	or a                                             ; $7ecb: $b7
	rst SubAFromBC                                          ; $7ecc: $e7
	ld l, a                                          ; $7ecd: $6f
	xor [hl]                                         ; $7ece: $ae
	sbc $fd                                          ; $7ecf: $de $fd
	cp e                                             ; $7ed1: $bb
	sub d                                            ; $7ed2: $92
	ld h, h                                          ; $7ed3: $64
	rst JumpTable                                          ; $7ed4: $c7
	ld c, d                                          ; $7ed5: $4a
	sbc e                                            ; $7ed6: $9b
	inc [hl]                                         ; $7ed7: $34
	jr jr_027_7e6b                                   ; $7ed8: $18 $91

	ld h, d                                          ; $7eda: $62
	inc b                                            ; $7edb: $04
	nop                                              ; $7edc: $00
	rst SubAFromDE                                          ; $7edd: $df
	ld d, l                                          ; $7ede: $55
	ld b, e                                          ; $7edf: $43
	add b                                            ; $7ee0: $80
	add a                                            ; $7ee1: $87
	rra                                              ; $7ee2: $1f
	rrca                                             ; $7ee3: $0f
	rlca                                             ; $7ee4: $07
	nop                                              ; $7ee5: $00
	ccf                                              ; $7ee6: $3f

Jump_027_7ee7:
	ld a, [hl]                                       ; $7ee7: $7e
	ld a, a                                          ; $7ee8: $7f
	ccf                                              ; $7ee9: $3f
	nop                                              ; $7eea: $00
	ld bc, $0001                                     ; $7eeb: $01 $01 $00
	rra                                              ; $7eee: $1f
	ld [hl+], a                                      ; $7eef: $22
	ld a, $3f                                        ; $7ef0: $3e $3f
	ld b, a                                          ; $7ef2: $47
	ret nz                                           ; $7ef3: $c0

	nop                                              ; $7ef4: $00
	nop                                              ; $7ef5: $00
	ret nz                                           ; $7ef6: $c0

	ldh a, [$7c]                                     ; $7ef7: $f0 $7c
	cp [hl]                                          ; $7ef9: $be
	sbc $80                                          ; $7efa: $de $80
	rst $38                                          ; $7efc: $ff
	add b                                            ; $7efd: $80
	or b                                             ; $7efe: $b0
	ld c, h                                          ; $7eff: $4c
	ld a, [hl-]                                      ; $7f00: $3a
	ld a, $1d                                        ; $7f01: $3e $1d
	ld b, $0f                                        ; $7f03: $06 $0f
	rra                                              ; $7f05: $1f
	dec a                                            ; $7f06: $3d
	ei                                               ; $7f07: $fb
	ld [hl], l                                       ; $7f08: $75
	ld e, $0d                                        ; $7f09: $1e $0d
	inc b                                            ; $7f0b: $04
	ld b, $0a                                        ; $7f0c: $06 $0a
	inc de                                           ; $7f0e: $13
	ld h, $cd                                        ; $7f0f: $26 $cd
	ei                                               ; $7f11: $fb
	or a                                             ; $7f12: $b7
	rst SubAFromBC                                          ; $7f13: $e7
	ld l, a                                          ; $7f14: $6f
	xor [hl]                                         ; $7f15: $ae
	sbc $fd                                          ; $7f16: $de $fd
	cp e                                             ; $7f18: $bb
	sub d                                            ; $7f19: $92
	ld h, h                                          ; $7f1a: $64
	rst JumpTable                                          ; $7f1b: $c7
	ld c, d                                          ; $7f1c: $4a
	sbc e                                            ; $7f1d: $9b
	inc [hl]                                         ; $7f1e: $34
	jr jr_027_7eb2                                   ; $7f1f: $18 $91

	ld h, d                                          ; $7f21: $62
	inc b                                            ; $7f22: $04
	nop                                              ; $7f23: $00
	rst SubAFromDE                                          ; $7f24: $df
	ld d, l                                          ; $7f25: $55
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

Jump_027_7f7f:
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

Call_027_7fe6:
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

Call_027_7fff:
Jump_027_7fff:
	rst $38                                          ; $7fff: $ff
