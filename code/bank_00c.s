; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

; HL - task idx
Func_0c_4000::
	ld e, l                                          ; $4000: $5d
	ld d, h                                          ; $4001: $54
	ld hl, TasksTable+2                                     ; $4002: $21 $4f $55
	add hl, de                                       ; $4005: $19
	add hl, de                                       ; $4006: $19
	add hl, de                                       ; $4007: $19
	ld a, [hl]                                       ; $4008: $7e
	and $0f                                          ; $4009: $e6 $0f
	ld b, a                                          ; $400b: $47
	ld c, $00                                        ; $400c: $0e $00

.loop_400e:
	ld a, c                                          ; $400e: $79
	cp b                                             ; $400f: $b8
	ret nc                                           ; $4010: $d0

	rst FarCall                                          ; $4011: $f7
	AddrBank Call_003_5aea
	inc c                                            ; $4015: $0c
	jr .loop_400e                                   ; $4016: $18 $f6

	ret                                              ; $4018: $c9


; HL - task idx
PerformScriptTask::
; Save task idx, and store in DE
	ld a, l                                                         ; $4019
	ld [sCurrTaskIdx], a                                            ; $401a
	ld a, h                                                         ; $401d
	ld [sCurrTaskIdx+1], a                                          ; $401e
	ld e, l                                                         ; $4021
	ld d, h                                                         ; $4022

; Task idx is triple-idxed in below table, pointing to the 3rd byte (ctrl byte)
	ld hl, TasksTable+2                                             ; $4023
	add hl, de                                                      ; $4026
	add hl, de                                                      ; $4027
	add hl, de                                                      ; $4028

; Store ctrl byte's high nybble * 2
	ld a, [hl]                                                      ; $4029
	swap a                                                          ; $402a
	and $0f                                                         ; $402c
	sla a                                                           ; $402e
	ld [sTaskCtrlByteHighNybbleTimes2], a                           ; $4030

; return address = 4076 if ctrl byte high nybble == 0, else 4061
	ld de, todo_PostTaskForCtrlByteHighNybbleZero                                    ; $4033: $11 $76 $40
	jr z, :+                                ; $4036: $28 $03
	ld de, todo_PostTaskForCtrlByteHighNybbleNonZero                                    ; $4038: $11 $61 $40
:	push de                                          ; $403b: $d5

; Get ctrl byte again, low nybble is num task params. Jump if 0 to process
	ld a, [hl]                                                      ; $403c
	and $0f                                                         ; $403d
	jr z, .afterTaskParams                                          ; $403f

; Else loop through, and save 4 bytes per num params
	push hl                                                         ; $4041
	ld bc, wTaskParams                                              ; $4042

.nextTaskParam:
	push af                                                         ; $4045

; Get the 4 task param bytes from script src
	push bc                                                         ; $4046
	rst FarCall                                                     ; $4047
	AddrBank DEHLequTaskParams
	pop bc                                                          ; $404b

; Save the 4 task param bytes
	ld a, e                                                         ; $404c
	ld [bc], a                                                      ; $404d
	inc bc                                                          ; $404e

	ld a, d                                                         ; $404f
	ld [bc], a                                                      ; $4050
	inc bc                                                          ; $4051

	ld a, l                                                         ; $4052
	ld [bc], a                                                      ; $4053
	inc bc                                                          ; $4054

	ld a, h                                                         ; $4055
	ld [bc], a                                                      ; $4056
	inc bc                                                          ; $4057

; Go to next task param
	pop af                                                          ; $4058
	dec a                                                           ; $4059
	jr nz, .nextTaskParam                                           ; $405a

	pop hl                                                          ; $405c

.afterTaskParams:
; Task's 1st 2 bytes is the task handler to jump to
	dec hl                                                          ; $405d
	dec hl                                                          ; $405e
	rst GetHLinHL                                                   ; $405f
	jp hl                                                           ; $4060


; HL -
todo_PostTaskForCtrlByteHighNybbleNonZero:
; High nybble is double-idxed into below table to get HL, DE = orig HL
	push hl                                          ; $4061: $e5
	ld a, [sTaskCtrlByteHighNybbleTimes2]                                    ; $4062: $fa $a8 $bd
	ld l, a                                          ; $4065: $6f
	ld h, $00                                        ; $4066: $26 $00
	ld de, TaskCtrlByteHighNybbleBitMask                                     ; $4068: $11 $7d $40
	add hl, de                                       ; $406b: $19
	pop de                                           ; $406c: $d1

; Word in table is masked with orig HL to get HL (DE after swap is ignored)
	ld a, [hl+]                                      ; $406d: $2a
	and e                                            ; $406e: $a3
	ld e, a                                          ; $406f: $5f
	ld a, [hl]                                       ; $4070: $7e
	and d                                            ; $4071: $a2
	ld d, a                                          ; $4072: $57
	call wSwapDEandHL                                       ; $4073: $cd $d4 $ce

; HL -
todo_PostTaskForCtrlByteHighNybbleZero:
	ld b, $00                                        ; $4076: $06 $00
	rst FarCall                                          ; $4078: $f7
	AddrBank SetTempLHBforScriptRelatedReturnsToLHB
	ret                                              ; $407c: $c9


TaskCtrlByteHighNybbleBitMask:
	dw $0000
	dw $0001
	dw $0003
	dw $0007
	dw $000f
	dw $001f
	dw $003f
	dw $007f
	dw $00ff
	dw $01ff
	dw $03ff
	dw $07ff
	dw $0fff
	dw $1fff
	dw $3fff
	dw $7fff
	dw $ffff


; A - eg $0b
todo_DisplayCharAsName:
; A is idxed into table to get HL
	ld e, a                                          ; $409f: $5f
	ld d, $00                                        ; $40a0: $16 $00
	push de                                          ; $40a2: $d5
	ld hl, Data_0c_5ac9-1                                     ; $40a3: $21 $c8 $5a
	add hl, de                                       ; $40a6: $19

;
	ld a, [hl]                                       ; $40a7: $7e
	ld [$c18b], a                                    ; $40a8: $ea $8b $c1
	cp $10                                           ; $40ab: $fe $10
	jr nc, .cont_40c0                               ; $40ad: $30 $11

	ld [$a1c7], a                                    ; $40af: $ea $c7 $a1

;
	rst FarCall                                          ; $40b2: $f7
	AddrBank Call_004_43c0

;
	cp $02                                           ; $40b6: $fe $02
	ld a, $01                                        ; $40b8: $3e $01
	jr c, :+                                ; $40ba: $38 $01
	xor a                                            ; $40bc: $af
:	ld [$a1c8], a                                    ; $40bd: $ea $c8 $a1

.cont_40c0:
; Orig A idx is done again to get HL
	pop de                                           ; $40c0: $d1
	ld hl, todo_IdxToCharNameIdx-1                                     ; $40c1: $21 $f7 $5a
	add hl, de                                       ; $40c4: $19

;
	ld a, [hl]                                       ; $40c5: $7e
	ld [$c18c], a                                    ; $40c6: $ea $8c $c1
	push af                                          ; $40c9: $f5

; Set script src to char name table
	ld b, BANK(CharacterNames)/4                                    ; $40ca
	ld hl, CharacterNames                                           ; $40cc
	rst FarCall                                                     ; $40cf
	AddrBank SetFarTextByteSrc

;
	rst FarCall                                          ; $40d3: $f7
	AddrBank Call_003_4c22

; Pop char name idx, and use as a double idx into char name table
	pop af                                                          ; $40d7
	add a                                                           ; $40d8
	ld e, a                                                         ; $40d9
	ld d, $00                                                       ; $40da
	rst FarCall                                                     ; $40dc
	AddrBank AddDEtoFarTextByteSrc

; HL equals table entry: addr to char name
	rst FarCall                                                     ; $40e0
	AddrBank HLequNextFarTextWord

; DE = curr far text byte addr
	push hl                                                         ; $40e4
	rst FarCall                                                     ; $40e5
	AddrBank GetFarTextByteAddr
	call wSwapDEandHL                                               ; $40e9
	pop hl                                                          ; $40ec

; DE = new addr - curr far addr, add it to set new addr as new text src
	call wHLminusEquDE                                              ; $40ed
	call wSwapDEandHL                                               ; $40f0

	rst FarCall                                                     ; $40f3
	AddrBank AddDEtoFarTextByteSrc

; Get the addr back in HL, then display text
	rst FarCall                                          ; $40f7: $f7
	AddrBank GetFarTextByteSrc
	rst FarCall                                          ; $40fb: $f7
	AddrBank Func_03_4ca7
	ret                                              ; $40ff: $c9


Call_00c_4100::
	ld a, $01                                        ; $4100: $3e $01
	ldh [$8a], a                                     ; $4102: $e0 $8a
	rst FarCall                                          ; $4104: $f7
	AddrBank Func_03_72b4
	ret                                              ; $4108: $c9


todo_Clear_ff8a:
	xor a                                            ; $4109: $af
	ldh [$8a], a                                     ; $410a: $e0 $8a
	ret                                              ; $410c: $c9


TaskHandler_000:
	ld a, [$c186]                                    ; $410d: $fa $86 $c1
	cp $0d                                           ; $4110: $fe $0d
	jp z, Jump_00c_53d1                              ; $4112: $ca $d1 $53

	rst FarCall                                          ; $4115: $f7
	AddrBank Call_003_4c22
	xor a                                            ; $4119: $af
	ld [$c163], a                                    ; $411a: $ea $63 $c1
	ld a, [wTaskParam0_word0]                                    ; $411d: $fa $b0 $d0
	ld l, a                                          ; $4120: $6f
	ld a, [wTaskParam0_word0+1]                                    ; $4121: $fa $b1 $d0
	ld h, a                                          ; $4124: $67
	ld a, [wTaskParam0_word1]                                    ; $4125: $fa $b2 $d0
	ld b, a                                          ; $4128: $47
	rst FarCall                                          ; $4129: $f7
	AddrBank Func_1c27

jr_00c_412d:
	ld a, [$d7ff]                                    ; $412d: $fa $ff $d7
	ld l, a                                          ; $4130: $6f
	ld a, [wCurrTextLinePixelIdx]                                    ; $4131: $fa $00 $d8
	ld h, a                                          ; $4134: $67
	ld de, $0020                                     ; $4135: $11 $20 $00
	call wCpHLtoDE                                       ; $4138: $cd $80 $ce
	ret z                                            ; $413b: $c8

	jp Func_1be4                                         ; $413c: $c3 $e4 $1b


TaskHandler_001:
	ld a, [$c186]                                    ; $413f: $fa $86 $c1
	cp $0c                                           ; $4142: $fe $0c
	jp z, Jump_00c_53a9                              ; $4144: $ca $a9 $53

	rst FarCall                                          ; $4147: $f7
	AddrBank Call_003_4c22
	xor a                                            ; $414b: $af
	ld [$c163], a                                    ; $414c: $ea $63 $c1

; eg $0b
	ld a, [wTaskParam0_word0]                                    ; $414f: $fa $b0 $d0
	and a                                            ; $4152: $a7
	call nz, todo_DisplayCharAsName                           ; $4153: $c4 $9f $40

;
	xor a                                            ; $4156: $af
	ld [$c163], a                                    ; $4157: $ea $63 $c1
	ld a, [$c18c]                                    ; $415a: $fa $8c $c1
	cp $32                                           ; $415d: $fe $32
	jr z, .cont_4172                                ; $415f: $28 $11

	cp $33                                           ; $4161: $fe $33
	jr z, .cont_4172                                ; $4163: $28 $0d

	cp $01                                           ; $4165: $fe $01
	jr z, .cont_4172                                ; $4167: $28 $09

	cp $3e                                           ; $4169: $fe $3e
	jr z, .cont_4172                                ; $416b: $28 $05

	ld a, $01                                        ; $416d: $3e $01
	ld [$c163], a                                    ; $416f: $ea $63 $c1

.cont_4172:
	ld a, [wTaskParam1_word0]                                    ; $4172: $fa $b4 $d0
	ld l, a                                          ; $4175: $6f
	ld a, [wTaskParam1_word0+1]                                    ; $4176: $fa $b5 $d0
	ld h, a                                          ; $4179: $67
	ld a, [wTaskParam1_word1]                                    ; $417a: $fa $b6 $d0
	ld b, a                                          ; $417d: $47
	rst FarCall                                          ; $417e: $f7
	AddrBank Func_1c27
	xor a                                            ; $4182: $af
	ld [$c163], a                                    ; $4183: $ea $63 $c1
	jr jr_00c_412d                                   ; $4186: $18 $a5


TaskHandler_002:
	ld a, [wTaskParam0_word0]                                    ; $4188: $fa $b0 $d0
	ld l, a                                          ; $418b: $6f
	ld a, [wTaskParam0_word0+1]                                    ; $418c: $fa $b1 $d0
	ld h, a                                          ; $418f: $67
	ld a, h                                          ; $4190: $7c
	or l                                             ; $4191: $b5
	ret z                                            ; $4192: $c8

	ld a, h                                          ; $4193: $7c
	call Call_000_12fc                                       ; $4194: $cd $fc $12
	ld h, a                                          ; $4197: $67
	ld a, l                                          ; $4198: $7d
	and a                                            ; $4199: $a7
	jr z, .br_41a5                                ; $419a: $28 $09

	call Call_000_12fc                                       ; $419c: $cd $fc $12

.cont_419f:
	ld l, a                                          ; $419f: $6f
	or h                                             ; $41a0: $b4
	ld de, $0000                                     ; $41a1: $11 $00 $00
	ret                                              ; $41a4: $c9

.br_41a5:
	call Call_000_1309                                       ; $41a5: $cd $09 $13
	jp .cont_419f                                 ; $41a8: $c3 $9f $41


TaskHandler_003:
	ld a, [wTaskParam0_word0]                                    ; $41ab: $fa $b0 $d0
	rst FarCall                                          ; $41ae: $f7
	ld e, [hl]                                       ; $41af: $5e
	ld e, a                                          ; $41b0: $5f
	inc b                                            ; $41b1: $04
	ld [$d3a6], a                                    ; $41b2: $ea $a6 $d3
	rst FarCall                                          ; $41b5: $f7
	pop hl                                           ; $41b6: $e1
	ld h, [hl]                                       ; $41b7: $66
	inc b                                            ; $41b8: $04
	rst FarCall                                          ; $41b9: $f7
	or d                                             ; $41ba: $b2
	ld b, e                                          ; $41bb: $43
	inc bc                                           ; $41bc: $03
	ld a, [$d3a6]                                    ; $41bd: $fa $a6 $d3
	rst FarCall                                          ; $41c0: $f7
	ld h, h                                          ; $41c1: $64
	ld e, a                                          ; $41c2: $5f
	inc b                                            ; $41c3: $04
	ld l, a                                          ; $41c4: $6f
	ld a, $08                                        ; $41c5: $3e $08
	ld [wCurrTextLinePixelIdx], a                                    ; $41c7: $ea $00 $d8
	ret                                              ; $41ca: $c9


TaskHandler_004:
	rst FarCall                                          ; $41cb: $f7
	call $045d                                       ; $41cc: $cd $5d $04
	ret                                              ; $41cf: $c9


TaskHandler_005_Stub:
	ret                                              ; $41d0: $c9


	ld bc, $67e6                                     ; $41d1: $01 $e6 $67
	ld de, $0000                                     ; $41d4: $11 $00 $00
	call $19f5                                       ; $41d7: $cd $f5 $19
	jp Func_1aa6                                         ; $41da: $c3 $a6 $1a


TaskHandler_006:
	rst FarCall                                          ; $41dd: $f7
	inc c                                            ; $41de: $0c
	ld l, c                                          ; $41df: $69
	inc b                                            ; $41e0: $04
	ld l, a                                          ; $41e1: $6f
	ret                                              ; $41e2: $c9


TaskHandler_007:
	rst FarCall                                          ; $41e3: $f7
	db $eb                                           ; $41e4: $eb
	ld l, b                                          ; $41e5: $68
	inc b                                            ; $41e6: $04
	ld l, a                                          ; $41e7: $6f
	ret                                              ; $41e8: $c9


TaskHandler_008:
	ld a, [$d035]                                    ; $41e9: $fa $35 $d0
	ld l, a                                          ; $41ec: $6f
	ret                                              ; $41ed: $c9


TaskHandler_009:
	ld a, [wTaskParam0_word0]                                    ; $41ee: $fa $b0 $d0
	jp Jump_000_1af7                                         ; $41f1: $c3 $f7 $1a


TaskHandler_00a:
	ret                                              ; $41f4: $c9


TaskHandler_00b:
	ld a, [wTaskParam0_word0]                                    ; $41f5: $fa $b0 $d0
	jp $1e2e                                         ; $41f8: $c3 $2e $1e


TaskHandler_00c_Wait:
	ld a, [$c186]                                    ; $41fb: $fa $86 $c1
	cp $0c                                           ; $41fe: $fe $0c
	jp z, Jump_00c_53ea                              ; $4200: $ca $ea $53

	ld a, [wTaskParam0_word0]                                    ; $4203: $fa $b0 $d0
	ld c, a                                          ; $4206: $4f
	ld a, [wTaskParam0_word0+1]                                    ; $4207: $fa $b1 $d0
	ld b, a                                          ; $420a: $47
	rst FarCall                                          ; $420b: $f7
	AddrBank Func_04_7184
	ret                                              ; $420f: $c9


TaskHandler_00d:
	jp TaskHandler_000                                 ; $4210: $c3 $0d $41


TaskHandler_00e:
	ret                                              ; $4213: $c9


TaskHandler_00f:
	rst FarCall                                          ; $4214: $f7
	AddrBank Func_1ac6

	ld de, .return                                     ; $4218: $11 $35 $42
	push de                                          ; $421b: $d5

	call Call_00c_5503                               ; $421c: $cd $03 $55
	rst FarCall                                          ; $421f: $f7
	AddrBank Func_3974
	call Call_00c_5546                               ; $4223: $cd $46 $55
	rst FarCall                                          ; $4226: $f7
	AddrBank Func_388c
	rst FarCall                                          ; $422a: $f7
	AddrBank Func_1a02
	and a                                            ; $422e: $a7
	jp z, Jump_00c_549e                              ; $422f: $ca $9e $54

	jp Jump_00c_54b2                                 ; $4232: $c3 $b2 $54

.return:
	jp todo_Clear_ff8a                                 ; $4235: $c3 $09 $41


;
TaskHandler_010:
TaskHandler_011:
	ld a, [$c14a]                                    ; $4238: $fa $4a $c1
	and $40                                          ; $423b: $e6 $40
	jr nz, jr_00c_424c                               ; $423d: $20 $0d

	call Call_00c_4100                               ; $423f: $cd $00 $41
	rst FarCall                                          ; $4242: $f7
	ld [hl], l                                       ; $4243: $75
	ld d, h                                          ; $4244: $54
	inc c                                            ; $4245: $0c
	ld d, $ff                                        ; $4246: $16 $ff
	rst FarCall                                          ; $4248: $f7
	sub l                                            ; $4249: $95
	ld d, h                                          ; $424a: $54
	inc c                                            ; $424b: $0c

jr_00c_424c:
	call Call_00c_5503                               ; $424c: $cd $03 $55
	rst FarCall                                          ; $424f: $f7
	ld [hl], h                                       ; $4250: $74
	add hl, sp                                       ; $4251: $39
	nop                                              ; $4252: $00
	ld a, [$c14a]                                    ; $4253: $fa $4a $c1
	and $40                                          ; $4256: $e6 $40
	ret nz                                           ; $4258: $c0

	call $388c                                       ; $4259: $cd $8c $38
	jp todo_Clear_ff8a                                 ; $425c: $c3 $09 $41


TaskHandler_012:
	ret                                              ; $425f: $c9


TaskHandler_013:
	ret                                              ; $4260: $c9


TaskHandler_014:
	call Call_00c_4100                               ; $4261: $cd $00 $41
	ld a, [$c14a]                                    ; $4264: $fa $4a $c1
	and $40                                          ; $4267: $e6 $40
	jr nz, jr_00c_4279                               ; $4269: $20 $0e

	rst FarCall                                          ; $426b: $f7
	ld [hl], l                                       ; $426c: $75
	ld d, h                                          ; $426d: $54
	inc c                                            ; $426e: $0c
	ld d, $ff                                        ; $426f: $16 $ff
	rst FarCall                                          ; $4271: $f7
	sub l                                            ; $4272: $95
	ld d, h                                          ; $4273: $54
	inc c                                            ; $4274: $0c
	rst FarCall                                          ; $4275: $f7
	ld d, b                                          ; $4276: $50
	ld [hl], l                                       ; $4277: $75
	inc b                                            ; $4278: $04

jr_00c_4279:
	rst FarCall                                          ; $4279: $f7
	add $1a                                          ; $427a: $c6 $1a
	nop                                              ; $427c: $00
	call Call_00c_5503                               ; $427d: $cd $03 $55
	rst FarCall                                          ; $4280: $f7
	ld [hl], h                                       ; $4281: $74
	add hl, sp                                       ; $4282: $39
	nop                                              ; $4283: $00
	rst FarCall                                          ; $4284: $f7
	adc h                                            ; $4285: $8c
	jr c, jr_00c_4288                                ; $4286: $38 $00

jr_00c_4288:
	rst FarCall                                          ; $4288: $f7
	ld h, c                                          ; $4289: $61
	ld [hl], l                                       ; $428a: $75
	inc b                                            ; $428b: $04
	jp todo_Clear_ff8a                                 ; $428c: $c3 $09 $41


TaskHandler_015:
	ld a, [wTaskParam0_word0]                                    ; $428f: $fa $b0 $d0
	rst FarCall                                          ; $4292: $f7
	ldh a, [c]                                       ; $4293: $f2
	ld b, c                                          ; $4294: $41
	inc b                                            ; $4295: $04
	ld l, a                                          ; $4296: $6f
	ret                                              ; $4297: $c9


TaskHandler_016:
	ld a, [wTaskParam0_word0]                                    ; $4298: $fa $b0 $d0
	rst FarCall                                          ; $429b: $f7
	jr jr_00c_42e0                                   ; $429c: $18 $42

	inc b                                            ; $429e: $04
	ld l, a                                          ; $429f: $6f
	ret                                              ; $42a0: $c9


TaskHandler_017:
	ld a, [wTaskParam0_word0]                                    ; $42a1: $fa $b0 $d0
	rst FarCall                                          ; $42a4: $f7
	cp e                                             ; $42a5: $bb
	ld b, d                                          ; $42a6: $42
	inc b                                            ; $42a7: $04
	ld l, a                                          ; $42a8: $6f
	ret                                              ; $42a9: $c9


TaskHandler_018:
	rst FarCall                                          ; $42aa: $f7
	ld c, [hl]                                       ; $42ab: $4e
	ld b, e                                          ; $42ac: $43
	inc b                                            ; $42ad: $04
	ret                                              ; $42ae: $c9


TaskHandler_019:
	rst FarCall                                          ; $42af: $f7
	ld a, h                                          ; $42b0: $7c
	ld b, e                                          ; $42b1: $43
	inc b                                            ; $42b2: $04
	ret                                              ; $42b3: $c9


TaskHandler_01a:
	rst FarCall                                          ; $42b4: $f7
	and e                                            ; $42b5: $a3
	ld b, e                                          ; $42b6: $43
	inc b                                            ; $42b7: $04
	ret                                              ; $42b8: $c9


TaskHandler_01b:
	ld a, [wTaskParam0_word0]                                    ; $42b9: $fa $b0 $d0
	rst FarCall                                          ; $42bc: $f7
	ret nz                                           ; $42bd: $c0

	ld b, e                                          ; $42be: $43
	inc b                                            ; $42bf: $04
	ld l, a                                          ; $42c0: $6f
	ret                                              ; $42c1: $c9


TaskHandler_01c:
	ld a, [wTaskParam0_word0]                                    ; $42c2: $fa $b0 $d0
	rst FarCall                                          ; $42c5: $f7
	jr z, jr_00c_430c                                ; $42c6: $28 $44

	inc b                                            ; $42c8: $04
	ld l, a                                          ; $42c9: $6f
	ret                                              ; $42ca: $c9


TaskHandler_01d:
	ld a, [wTaskParam0_word0]                                    ; $42cb: $fa $b0 $d0
	rst FarCall                                          ; $42ce: $f7
	adc [hl]                                         ; $42cf: $8e
	ld b, h                                          ; $42d0: $44
	inc b                                            ; $42d1: $04
	ld l, a                                          ; $42d2: $6f
	ret                                              ; $42d3: $c9


TaskHandler_01e:
	ld a, [wTaskParam1_word0]                                    ; $42d4: $fa $b4 $d0
	ld b, a                                          ; $42d7: $47
	ld a, [wTaskParam0_word0]                                    ; $42d8: $fa $b0 $d0
	rst FarCall                                          ; $42db: $f7
	ld a, d                                          ; $42dc: $7a
	ld b, [hl]                                       ; $42dd: $46
	inc b                                            ; $42de: $04
	ret                                              ; $42df: $c9


jr_00c_42e0:
TaskHandler_01f:
	ld a, [wTaskParam1_word0]                                    ; $42e0: $fa $b4 $d0
	ld b, a                                          ; $42e3: $47
	ld a, [wTaskParam0_word0]                                    ; $42e4: $fa $b0 $d0
	rst FarCall                                          ; $42e7: $f7
	add d                                            ; $42e8: $82
	ld b, [hl]                                       ; $42e9: $46
	inc b                                            ; $42ea: $04
	ret                                              ; $42eb: $c9


TaskHandler_020:
	ld a, [wTaskParam1_word0]                                    ; $42ec: $fa $b4 $d0
	ld b, a                                          ; $42ef: $47
	ld a, [wTaskParam0_word0]                                    ; $42f0: $fa $b0 $d0
	rst FarCall                                          ; $42f3: $f7
	adc d                                            ; $42f4: $8a
	ld b, [hl]                                       ; $42f5: $46
	inc b                                            ; $42f6: $04
	ret                                              ; $42f7: $c9


TaskHandler_021:
	call Call_00c_546d                               ; $42f8: $cd $6d $54
	rst FarCall                                          ; $42fb: $f7
	sbc e                                            ; $42fc: $9b
	ld b, [hl]                                       ; $42fd: $46
	inc b                                            ; $42fe: $04
	ret                                              ; $42ff: $c9


TaskHandler_022:
	call Call_00c_546d                               ; $4300: $cd $6d $54
	rst FarCall                                          ; $4303: $f7
	and b                                            ; $4304: $a0
	ld b, [hl]                                       ; $4305: $46
	inc b                                            ; $4306: $04
	ret                                              ; $4307: $c9


TaskHandler_023:
	call Call_00c_546d                               ; $4308: $cd $6d $54
	rst FarCall                                          ; $430b: $f7

jr_00c_430c:
	and l                                            ; $430c: $a5
	ld b, [hl]                                       ; $430d: $46
	inc b                                            ; $430e: $04
	ret                                              ; $430f: $c9


TaskHandler_024:
	call Call_00c_546d                               ; $4310: $cd $6d $54
	rst FarCall                                          ; $4313: $f7
	or h                                             ; $4314: $b4
	ld b, [hl]                                       ; $4315: $46
	inc b                                            ; $4316: $04
	ret                                              ; $4317: $c9


TaskHandler_025:
	call Call_00c_546d                               ; $4318: $cd $6d $54
	rst FarCall                                          ; $431b: $f7
	cp c                                             ; $431c: $b9
	ld b, [hl]                                       ; $431d: $46
	inc b                                            ; $431e: $04
	ret                                              ; $431f: $c9


TaskHandler_026:
	call Call_00c_546d                               ; $4320: $cd $6d $54
	rst FarCall                                          ; $4323: $f7
	cp [hl]                                          ; $4324: $be
	ld b, [hl]                                       ; $4325: $46
	inc b                                            ; $4326: $04
	ret                                              ; $4327: $c9


TaskHandler_027:
	ld a, [wTaskParam0_word0]                                    ; $4328: $fa $b0 $d0
	rst FarCall                                          ; $432b: $f7
	call z, $0446                                    ; $432c: $cc $46 $04
	ret                                              ; $432f: $c9


TaskHandler_028:
	ld a, [wTaskParam0_word0]                                    ; $4330: $fa $b0 $d0
	rst FarCall                                          ; $4333: $f7
	pop de                                           ; $4334: $d1
	ld b, [hl]                                       ; $4335: $46
	inc b                                            ; $4336: $04
	ret                                              ; $4337: $c9


TaskHandler_029:
	ld a, [wTaskParam0_word0]                                    ; $4338: $fa $b0 $d0
	rst FarCall                                          ; $433b: $f7
	sub $46                                          ; $433c: $d6 $46
	inc b                                            ; $433e: $04
	ret                                              ; $433f: $c9


TaskHandler_02a:
	ld a, [wTaskParam0_word0]                                    ; $4340: $fa $b0 $d0
	rst FarCall                                          ; $4343: $f7
	xor $46                                          ; $4344: $ee $46
	inc b                                            ; $4346: $04
	ret                                              ; $4347: $c9


TaskHandler_02b:
	ld a, [wTaskParam0_word0]                                    ; $4348: $fa $b0 $d0
	rst FarCall                                          ; $434b: $f7
	di                                               ; $434c: $f3
	ld b, [hl]                                       ; $434d: $46
	inc b                                            ; $434e: $04
	ret                                              ; $434f: $c9


TaskHandler_02c:
	ld a, [wTaskParam0_word0]                                    ; $4350: $fa $b0 $d0
	rst FarCall                                          ; $4353: $f7
	ld hl, sp+$46                                    ; $4354: $f8 $46
	inc b                                            ; $4356: $04
	ret                                              ; $4357: $c9


TaskHandler_02d:
	call Call_00c_546d                               ; $4358: $cd $6d $54
	rst FarCall                                          ; $435b: $f7
	rrca                                             ; $435c: $0f
	ld b, a                                          ; $435d: $47
	inc b                                            ; $435e: $04
	ret                                              ; $435f: $c9


TaskHandler_02e:
	call Call_00c_546d                               ; $4360: $cd $6d $54
	rst FarCall                                          ; $4363: $f7
	add hl, de                                       ; $4364: $19
	ld b, a                                          ; $4365: $47
	inc b                                            ; $4366: $04
	ret                                              ; $4367: $c9


TaskHandler_02f:
	call Call_00c_546d                               ; $4368: $cd $6d $54
	rst FarCall                                          ; $436b: $f7
	inc hl                                           ; $436c: $23
	ld b, a                                          ; $436d: $47
	inc b                                            ; $436e: $04
	ret                                              ; $436f: $c9


TaskHandler_030:
	call Call_00c_546d                               ; $4370: $cd $6d $54
	rst FarCall                                          ; $4373: $f7
	ld a, [bc]                                       ; $4374: $0a
	ld b, a                                          ; $4375: $47
	inc b                                            ; $4376: $04
	ret                                              ; $4377: $c9


TaskHandler_031:
	call Call_00c_546d                               ; $4378: $cd $6d $54
	rst FarCall                                          ; $437b: $f7
	inc d                                            ; $437c: $14
	ld b, a                                          ; $437d: $47
	inc b                                            ; $437e: $04
	ret                                              ; $437f: $c9


TaskHandler_032:
	call Call_00c_546d                               ; $4380: $cd $6d $54
	rst FarCall                                          ; $4383: $f7
	ld e, $47                                        ; $4384: $1e $47
	inc b                                            ; $4386: $04
	ret                                              ; $4387: $c9


TaskHandler_033:
	rst FarCall                                          ; $4388: $f7
	ld [hl-], a                                      ; $4389: $32
	ld b, e                                          ; $438a: $43
	inc b                                            ; $438b: $04
	ld l, a                                          ; $438c: $6f
	ret                                              ; $438d: $c9


TaskHandler_034:
	rst FarCall                                          ; $438e: $f7
	ld [hl], $43                                     ; $438f: $36 $43
	inc b                                            ; $4391: $04
	ld l, a                                          ; $4392: $6f
	ret                                              ; $4393: $c9


TaskHandler_035:
	rst FarCall                                          ; $4394: $f7
	ld a, [hl-]                                      ; $4395: $3a
	ld b, e                                          ; $4396: $43
	inc b                                            ; $4397: $04
	ld l, a                                          ; $4398: $6f
	ret                                              ; $4399: $c9


TaskHandler_036:
	ld a, [wTaskParam0_word0]                                    ; $439a: $fa $b0 $d0
	rst FarCall                                          ; $439d: $f7
	sbc e                                            ; $439e: $9b
	ld b, a                                          ; $439f: $47
	inc b                                            ; $43a0: $04
	ret                                              ; $43a1: $c9


TaskHandler_037:
	ld a, [wTaskParam0_word0]                                    ; $43a2: $fa $b0 $d0
	rst FarCall                                          ; $43a5: $f7
	and l                                            ; $43a6: $a5
	ld b, a                                          ; $43a7: $47
	inc b                                            ; $43a8: $04
	ret                                              ; $43a9: $c9


TaskHandler_038:
	ld a, [wTaskParam0_word0]                                    ; $43aa: $fa $b0 $d0
	rst FarCall                                          ; $43ad: $f7
	xor a                                            ; $43ae: $af
	ld b, a                                          ; $43af: $47
	inc b                                            ; $43b0: $04
	ret                                              ; $43b1: $c9


TaskHandler_039:
	ld a, [wTaskParam0_word0]                                    ; $43b2: $fa $b0 $d0
	rst FarCall                                          ; $43b5: $f7
	sub [hl]                                         ; $43b6: $96
	ld b, a                                          ; $43b7: $47
	inc b                                            ; $43b8: $04
	ret                                              ; $43b9: $c9


TaskHandler_03a:
	ld a, [wTaskParam0_word0]                                    ; $43ba: $fa $b0 $d0
	rst FarCall                                          ; $43bd: $f7
	and b                                            ; $43be: $a0
	ld b, a                                          ; $43bf: $47
	inc b                                            ; $43c0: $04
	ret                                              ; $43c1: $c9


TaskHandler_03b:
	ld a, [wTaskParam0_word0]                                    ; $43c2: $fa $b0 $d0
	rst FarCall                                          ; $43c5: $f7
	xor d                                            ; $43c6: $aa
	ld b, a                                          ; $43c7: $47
	inc b                                            ; $43c8: $04
	ret                                              ; $43c9: $c9


TaskHandler_03c:
	call Call_00c_546d                               ; $43ca: $cd $6d $54
	rst FarCall                                          ; $43cd: $f7
	ld [$0447], a                                    ; $43ce: $ea $47 $04
	ret                                              ; $43d1: $c9


TaskHandler_03d:
	call Call_00c_546d                               ; $43d2: $cd $6d $54
	rst FarCall                                          ; $43d5: $f7
	db $f4                                           ; $43d6: $f4
	ld b, a                                          ; $43d7: $47
	inc b                                            ; $43d8: $04
	ret                                              ; $43d9: $c9


TaskHandler_03e:
	call Call_00c_546d                               ; $43da: $cd $6d $54
	rst FarCall                                          ; $43dd: $f7
	cp $47                                           ; $43de: $fe $47
	inc b                                            ; $43e0: $04
	ret                                              ; $43e1: $c9


TaskHandler_03f:
	call Call_00c_546d                               ; $43e2: $cd $6d $54
	rst FarCall                                          ; $43e5: $f7
	push hl                                          ; $43e6: $e5
	ld b, a                                          ; $43e7: $47
	inc b                                            ; $43e8: $04
	ret                                              ; $43e9: $c9


TaskHandler_040:
	call Call_00c_546d                               ; $43ea: $cd $6d $54
	rst FarCall                                          ; $43ed: $f7
	rst AddAOntoHL                                          ; $43ee: $ef
	ld b, a                                          ; $43ef: $47
	inc b                                            ; $43f0: $04
	ret                                              ; $43f1: $c9


TaskHandler_041:
	call Call_00c_546d                               ; $43f2: $cd $6d $54
	rst FarCall                                          ; $43f5: $f7
	ld sp, hl                                        ; $43f6: $f9
	ld b, a                                          ; $43f7: $47
	inc b                                            ; $43f8: $04
	ret                                              ; $43f9: $c9


TaskHandler_042:
	rst FarCall                                          ; $43fa: $f7
	add hl, hl                                       ; $43fb: $29
	ld c, c                                          ; $43fc: $49
	inc b                                            ; $43fd: $04
	ld l, a                                          ; $43fe: $6f
	ret                                              ; $43ff: $c9


TaskHandler_043:
	rst FarCall                                          ; $4400: $f7
	add hl, de                                       ; $4401: $19
	ld c, c                                          ; $4402: $49
	inc b                                            ; $4403: $04
	ld l, a                                          ; $4404: $6f
	ret                                              ; $4405: $c9


TaskHandler_044:
	rst FarCall                                          ; $4406: $f7
	inc sp                                           ; $4407: $33
	ld c, c                                          ; $4408: $49
	inc b                                            ; $4409: $04
	ld l, a                                          ; $440a: $6f
	ret                                              ; $440b: $c9


TaskHandler_045:
	rst FarCall                                          ; $440c: $f7
	ld a, [hl-]                                      ; $440d: $3a
	ld c, c                                          ; $440e: $49
	inc b                                            ; $440f: $04
	ld l, a                                          ; $4410: $6f
	ret                                              ; $4411: $c9


TaskHandler_046:
	rst FarCall                                          ; $4412: $f7
	ld b, c                                          ; $4413: $41
	ld c, c                                          ; $4414: $49
	inc b                                            ; $4415: $04
	ld l, a                                          ; $4416: $6f
	ret                                              ; $4417: $c9


TaskHandler_1cf:
	rst FarCall                                          ; $4418: $f7
	ld c, [hl]                                       ; $4419: $4e
	ld c, c                                          ; $441a: $49
	inc b                                            ; $441b: $04
	ld l, a                                          ; $441c: $6f
	ret                                              ; $441d: $c9


TaskHandler_1d0:
	ld a, [wTaskParam0_word0]                                    ; $441e: $fa $b0 $d0
	rst FarCall                                          ; $4421: $f7
	ld h, [hl]                                       ; $4422: $66
	ld c, c                                          ; $4423: $49
	inc b                                            ; $4424: $04
	ld l, a                                          ; $4425: $6f
	ret                                              ; $4426: $c9


TaskHandler_047:
	rst FarCall                                          ; $4427: $f7
	xor b                                            ; $4428: $a8
	ld e, c                                          ; $4429: $59
	inc b                                            ; $442a: $04
	ld h, b                                          ; $442b: $60
	ld l, c                                          ; $442c: $69
	ret                                              ; $442d: $c9


TaskHandler_048:
	call Call_00c_546d                               ; $442e: $cd $6d $54
	rst FarCall                                          ; $4431: $f7
	inc de                                           ; $4432: $13
	ld h, a                                          ; $4433: $67
	inc b                                            ; $4434: $04
	ret                                              ; $4435: $c9


TaskHandler_049:
	ld a, [wTaskParam0_word0]                                    ; $4436: $fa $b0 $d0
	rst FarCall                                          ; $4439: $f7
	cp h                                             ; $443a: $bc
	ld h, a                                          ; $443b: $67
	inc b                                            ; $443c: $04
	ld l, a                                          ; $443d: $6f
	ret                                              ; $443e: $c9


TaskHandler_04a:
	ld a, [wTaskParam0_word0]                                    ; $443f: $fa $b0 $d0
	rst FarCall                                          ; $4442: $f7
	add e                                            ; $4443: $83
	ld c, b                                          ; $4444: $48
	inc b                                            ; $4445: $04
	ret                                              ; $4446: $c9


TaskHandler_04b:
	call Call_00c_5465                               ; $4447: $cd $65 $54
	rst FarCall                                          ; $444a: $f7
	ldh a, [rOBP0]                                   ; $444b: $f0 $48
	inc b                                            ; $444d: $04
	ld l, a                                          ; $444e: $6f
	ret                                              ; $444f: $c9


TaskHandler_04c:
	ld a, [wTaskParam0_word0]                                    ; $4450: $fa $b0 $d0
	rst FarCall                                          ; $4453: $f7
	ld d, h                                          ; $4454: $54
	ld c, [hl]                                       ; $4455: $4e
	inc b                                            ; $4456: $04
	ret                                              ; $4457: $c9


TaskHandler_04d:
	ld a, [wTaskParam0_word0]                                    ; $4458: $fa $b0 $d0
	rst FarCall                                          ; $445b: $f7
	ld e, h                                          ; $445c: $5c
	ld c, [hl]                                       ; $445d: $4e
	inc b                                            ; $445e: $04
	ld l, a                                          ; $445f: $6f
	ret                                              ; $4460: $c9


TaskHandler_04e:
	rst FarCall                                          ; $4461: $f7
	ld h, h                                          ; $4462: $64
	ld c, [hl]                                       ; $4463: $4e
	inc b                                            ; $4464: $04
	ld l, a                                          ; $4465: $6f
	ret                                              ; $4466: $c9


TaskHandler_04f:
	rst FarCall                                          ; $4467: $f7
	rst SubAFromHL                                          ; $4468: $d7
	ld d, e                                          ; $4469: $53
	inc b                                            ; $446a: $04
	ret                                              ; $446b: $c9


TaskHandler_050:
	ld a, [wTaskParam0_word0]                                    ; $446c: $fa $b0 $d0
	rst FarCall                                          ; $446f: $f7
	push hl                                          ; $4470: $e5
	ld d, e                                          ; $4471: $53
	inc b                                            ; $4472: $04
	ret                                              ; $4473: $c9


TaskHandler_051:
	ld a, [wTaskParam0_word0]                                    ; $4474: $fa $b0 $d0
	rst FarCall                                          ; $4477: $f7
	db $ed                                           ; $4478: $ed
	ld d, e                                          ; $4479: $53
	inc b                                            ; $447a: $04
	ret                                              ; $447b: $c9


TaskHandler_052:
	ld a, [wTaskParam0_word0]                                    ; $447c: $fa $b0 $d0
	rst FarCall                                          ; $447f: $f7
	push af                                          ; $4480: $f5
	ld d, e                                          ; $4481: $53
	inc b                                            ; $4482: $04
	ret                                              ; $4483: $c9


TaskHandler_053:
	ld a, [wTaskParam0_word0]                                    ; $4484: $fa $b0 $d0
	rst FarCall                                          ; $4487: $f7
	ldh [c], a                                       ; $4488: $e2
	ld d, e                                          ; $4489: $53
	inc b                                            ; $448a: $04
	ret                                              ; $448b: $c9


TaskHandler_054:
	ld a, [wTaskParam0_word0]                                    ; $448c: $fa $b0 $d0
	rst FarCall                                          ; $448f: $f7
	ld [$0453], a                                    ; $4490: $ea $53 $04
	ret                                              ; $4493: $c9


TaskHandler_055:
	ld a, [wTaskParam0_word0]                                    ; $4494: $fa $b0 $d0
	rst FarCall                                          ; $4497: $f7
	ldh a, [c]                                       ; $4498: $f2
	ld d, e                                          ; $4499: $53
	inc b                                            ; $449a: $04
	ret                                              ; $449b: $c9


TaskHandler_056:
	ld a, [wTaskParam2_word0]                                    ; $449c: $fa $b8 $d0
	ld c, a                                          ; $449f: $4f
	call Call_00c_546d                               ; $44a0: $cd $6d $54
	rst FarCall                                          ; $44a3: $f7
	sub $57                                          ; $44a4: $d6 $57
	inc b                                            ; $44a6: $04
	ret                                              ; $44a7: $c9


TaskHandler_057:
	ld a, [wTaskParam0_word0]                                    ; $44a8: $fa $b0 $d0
	ld c, a                                          ; $44ab: $4f
	call Call_00c_546d                               ; $44ac: $cd $6d $54
	rst FarCall                                          ; $44af: $f7
	cp $53                                           ; $44b0: $fe $53
	inc b                                            ; $44b2: $04
	ld l, a                                          ; $44b3: $6f
	ret                                              ; $44b4: $c9


TaskHandler_058:
	call Call_00c_5465                               ; $44b5: $cd $65 $54
	rst FarCall                                          ; $44b8: $f7
	adc a                                            ; $44b9: $8f
	ld c, [hl]                                       ; $44ba: $4e
	inc b                                            ; $44bb: $04
	ld l, a                                          ; $44bc: $6f
	ret                                              ; $44bd: $c9


TaskHandler_059:
	call Call_00c_546d                               ; $44be: $cd $6d $54
	rst FarCall                                          ; $44c1: $f7
	ld l, d                                          ; $44c2: $6a
	ld c, a                                          ; $44c3: $4f
	inc b                                            ; $44c4: $04
	ld l, a                                          ; $44c5: $6f
	ret                                              ; $44c6: $c9


TaskHandler_05a:
	rst FarCall                                          ; $44c7: $f7
	rst GetHLinHL                                          ; $44c8: $cf
	ld b, b                                          ; $44c9: $40
	inc b                                            ; $44ca: $04
	ld l, a                                          ; $44cb: $6f
	ret                                              ; $44cc: $c9


TaskHandler_05b:
	ld a, [wTaskParam0_word0]                                    ; $44cd: $fa $b0 $d0
	ld b, a                                          ; $44d0: $47
	rst FarCall                                          ; $44d1: $f7
	db $e4                                           ; $44d2: $e4
	ld l, [hl]                                       ; $44d3: $6e
	inc b                                            ; $44d4: $04
	ld l, a                                          ; $44d5: $6f
	ret                                              ; $44d6: $c9


TaskHandler_05c:
	rst FarCall                                          ; $44d7: $f7
	rrca                                             ; $44d8: $0f
	ld l, a                                          ; $44d9: $6f
	inc b                                            ; $44da: $04
	ld l, a                                          ; $44db: $6f
	ret                                              ; $44dc: $c9


TaskHandler_05d:
	ld a, [wTaskParam0_word0]                                    ; $44dd: $fa $b0 $d0
	rst FarCall                                          ; $44e0: $f7
	ld a, [hl-]                                      ; $44e1: $3a
	ld c, b                                          ; $44e2: $48
	inc b                                            ; $44e3: $04
	ret                                              ; $44e4: $c9


TaskHandler_05e:
	rst FarCall                                          ; $44e5: $f7
	ld l, d                                          ; $44e6: $6a
	ld h, h                                          ; $44e7: $64
	inc b                                            ; $44e8: $04
	ret                                              ; $44e9: $c9


TaskHandler_05f:
	rst FarCall                                          ; $44ea: $f7
	ld a, b                                          ; $44eb: $78
	ld h, h                                          ; $44ec: $64
	inc b                                            ; $44ed: $04
	ret                                              ; $44ee: $c9


TaskHandler_060:
	rst FarCall                                          ; $44ef: $f7
	ld l, [hl]                                       ; $44f0: $6e
	ld h, h                                          ; $44f1: $64
	inc b                                            ; $44f2: $04
	ret                                              ; $44f3: $c9


TaskHandler_061:
	rst FarCall                                          ; $44f4: $f7
	ld a, b                                          ; $44f5: $78
	ld h, h                                          ; $44f6: $64
	inc b                                            ; $44f7: $04
	ret                                              ; $44f8: $c9


TaskHandler_062:
	rst FarCall                                          ; $44f9: $f7
	ld [hl], d                                       ; $44fa: $72
	ld h, h                                          ; $44fb: $64
	inc b                                            ; $44fc: $04
	ret                                              ; $44fd: $c9


TaskHandler_063:
	rst FarCall                                          ; $44fe: $f7
	ld a, b                                          ; $44ff: $78
	ld h, h                                          ; $4500: $64
	inc b                                            ; $4501: $04
	ret                                              ; $4502: $c9


TaskHandler_064:
	rst FarCall                                          ; $4503: $f7
	xor [hl]                                         ; $4504: $ae
	ld h, e                                          ; $4505: $63
	inc b                                            ; $4506: $04
	ld l, a                                          ; $4507: $6f
	ret                                              ; $4508: $c9


TaskHandler_065:
	rst FarCall                                          ; $4509: $f7
	cp b                                             ; $450a: $b8
	ld h, e                                          ; $450b: $63
	inc b                                            ; $450c: $04
	ld l, a                                          ; $450d: $6f
	ret                                              ; $450e: $c9


TaskHandler_066:
	rst FarCall                                          ; $450f: $f7
	cp l                                             ; $4510: $bd
	ld h, e                                          ; $4511: $63
	inc b                                            ; $4512: $04
	ld l, a                                          ; $4513: $6f
	ret                                              ; $4514: $c9


TaskHandler_067:
	rst FarCall                                          ; $4515: $f7
	jp nz, $0463                                     ; $4516: $c2 $63 $04

	ld l, a                                          ; $4519: $6f
	ret                                              ; $451a: $c9


TaskHandler_068:
	rst FarCall                                          ; $451b: $f7
	add $63                                          ; $451c: $c6 $63
	inc b                                            ; $451e: $04
	ld l, a                                          ; $451f: $6f
	ret                                              ; $4520: $c9


TaskHandler_069:
	rst FarCall                                          ; $4521: $f7
	call $0463                                       ; $4522: $cd $63 $04
	ld l, a                                          ; $4525: $6f
	ret                                              ; $4526: $c9


TaskHandler_06a:
	rst FarCall                                          ; $4527: $f7
	rst SubAFromHL                                          ; $4528: $d7
	ld h, e                                          ; $4529: $63
	inc b                                            ; $452a: $04
	ld l, a                                          ; $452b: $6f
	ret                                              ; $452c: $c9


TaskHandler_06b:
	ret                                              ; $452d: $c9


TaskHandler_06c:
	ret                                              ; $452e: $c9


TaskHandler_06d:
	ret                                              ; $452f: $c9


TaskHandler_06e:
	ret                                              ; $4530: $c9


TaskHandler_06f:
	ret                                              ; $4531: $c9


TaskHandler_070:
	ret                                              ; $4532: $c9


TaskHandler_071:
	rst FarCall                                          ; $4533: $f7
	add hl, bc                                       ; $4534: $09
	ld h, h                                          ; $4535: $64
	inc b                                            ; $4536: $04
	ld l, a                                          ; $4537: $6f
	ret                                              ; $4538: $c9


TaskHandler_072:
	rst FarCall                                          ; $4539: $f7
	ld c, $64                                        ; $453a: $0e $64
	inc b                                            ; $453c: $04
	ld l, a                                          ; $453d: $6f
	ret                                              ; $453e: $c9


TaskHandler_073:
	rst FarCall                                          ; $453f: $f7
	inc de                                           ; $4540: $13
	ld h, h                                          ; $4541: $64
	inc b                                            ; $4542: $04
	ld l, a                                          ; $4543: $6f
	ret                                              ; $4544: $c9


TaskHandler_074:
	rst FarCall                                          ; $4545: $f7
	rla                                              ; $4546: $17
	ld h, h                                          ; $4547: $64
	inc b                                            ; $4548: $04
	ld l, a                                          ; $4549: $6f
	ret                                              ; $454a: $c9


TaskHandler_075:
	rst FarCall                                          ; $454b: $f7
	inc e                                            ; $454c: $1c
	ld h, h                                          ; $454d: $64
	inc b                                            ; $454e: $04
	ld l, a                                          ; $454f: $6f
	ret                                              ; $4550: $c9


TaskHandler_076:
	rst FarCall                                          ; $4551: $f7
	ld hl, $0464                                     ; $4552: $21 $64 $04
	ld l, a                                          ; $4555: $6f
	ret                                              ; $4556: $c9


TaskHandler_077:
	rst FarCall                                          ; $4557: $f7
	sbc $63                                          ; $4558: $de $63
	inc b                                            ; $455a: $04
	ret                                              ; $455b: $c9


TaskHandler_078:
	rst FarCall                                          ; $455c: $f7
	ldh [c], a                                       ; $455d: $e2
	ld h, e                                          ; $455e: $63
	inc b                                            ; $455f: $04
	ret                                              ; $4560: $c9


TaskHandler_079:
	rst FarCall                                          ; $4561: $f7
	and $63                                          ; $4562: $e6 $63
	inc b                                            ; $4564: $04
	ret                                              ; $4565: $c9


TaskHandler_07a:
	rst FarCall                                          ; $4566: $f7
	xor $63                                          ; $4567: $ee $63
	inc b                                            ; $4569: $04
	ret                                              ; $456a: $c9


TaskHandler_07b:
	rst FarCall                                          ; $456b: $f7
	xor $63                                          ; $456c: $ee $63
	inc b                                            ; $456e: $04
	ret                                              ; $456f: $c9


TaskHandler_07c:
	rst FarCall                                          ; $4570: $f7
	xor $63                                          ; $4571: $ee $63
	inc b                                            ; $4573: $04
	ret                                              ; $4574: $c9


TaskHandler_07d:
	rst FarCall                                          ; $4575: $f7
	di                                               ; $4576: $f3
	ld h, e                                          ; $4577: $63
	inc b                                            ; $4578: $04
	ret                                              ; $4579: $c9


TaskHandler_07e:
	rst FarCall                                          ; $457a: $f7
	ld hl, sp+$63                                    ; $457b: $f8 $63
	inc b                                            ; $457d: $04
	ret                                              ; $457e: $c9


TaskHandler_07f:
	rst FarCall                                          ; $457f: $f7
	cp $63                                           ; $4580: $fe $63
	inc b                                            ; $4582: $04
	ret                                              ; $4583: $c9


TaskHandler_080:
	rst FarCall                                          ; $4584: $f7
	inc b                                            ; $4585: $04
	ld h, h                                          ; $4586: $64
	inc b                                            ; $4587: $04
	ld l, a                                          ; $4588: $6f
	ret                                              ; $4589: $c9


TaskHandler_081:
	ret                                              ; $458a: $c9


TaskHandler_082:
	ld a, [wTaskParam0_word0]                                    ; $458b: $fa $b0 $d0
	ld c, a                                          ; $458e: $4f
	ld a, [wTaskParam0_word0+1]                                    ; $458f: $fa $b1 $d0
	ld b, a                                          ; $4592: $47
	ld a, [wTaskParam1_word0]                                    ; $4593: $fa $b4 $d0
	rst FarCall                                          ; $4596: $f7
	rra                                              ; $4597: $1f
	ld h, d                                          ; $4598: $62
	inc b                                            ; $4599: $04
	ret                                              ; $459a: $c9


TaskHandler_083:
	ld a, [wTaskParam0_word0]                                    ; $459b: $fa $b0 $d0
	rst FarCall                                          ; $459e: $f7
	ld a, [hl]                                       ; $459f: $7e
	ld h, d                                          ; $45a0: $62
	inc b                                            ; $45a1: $04
	ld l, c                                          ; $45a2: $69
	ld h, b                                          ; $45a3: $60
	ret                                              ; $45a4: $c9


TaskHandler_084:
	rst FarCall                                          ; $45a5: $f7
	ld d, a                                          ; $45a6: $57
	ld h, h                                          ; $45a7: $64
	inc b                                            ; $45a8: $04
	ret                                              ; $45a9: $c9


TaskHandler_085:
	rst FarCall                                          ; $45aa: $f7
	ld h, l                                          ; $45ab: $65
	ld h, h                                          ; $45ac: $64
	inc b                                            ; $45ad: $04
	ret                                              ; $45ae: $c9


TaskHandler_086:
	rst FarCall                                          ; $45af: $f7
	ld e, e                                          ; $45b0: $5b
	ld h, h                                          ; $45b1: $64
	inc b                                            ; $45b2: $04
	ret                                              ; $45b3: $c9


TaskHandler_087:
	rst FarCall                                          ; $45b4: $f7
	ld h, l                                          ; $45b5: $65
	ld h, h                                          ; $45b6: $64
	inc b                                            ; $45b7: $04
	ret                                              ; $45b8: $c9


TaskHandler_088:
	rst FarCall                                          ; $45b9: $f7
	ld e, a                                          ; $45ba: $5f
	ld h, h                                          ; $45bb: $64
	inc b                                            ; $45bc: $04
	ret                                              ; $45bd: $c9


TaskHandler_089:
	rst FarCall                                          ; $45be: $f7
	ld h, l                                          ; $45bf: $65
	ld h, h                                          ; $45c0: $64
	inc b                                            ; $45c1: $04
	ret                                              ; $45c2: $c9


TaskHandler_08a:
	ld a, [wTaskParam0_word0]                                    ; $45c3: $fa $b0 $d0
	rst FarCall                                          ; $45c6: $f7
	ld a, d                                          ; $45c7: $7a
	ld l, c                                          ; $45c8: $69
	inc b                                            ; $45c9: $04
	ld l, a                                          ; $45ca: $6f
	ret                                              ; $45cb: $c9


TaskHandler_08b:
	ld a, [wTaskParam0_word0]                                    ; $45cc: $fa $b0 $d0
	rst FarCall                                          ; $45cf: $f7
	ld a, a                                          ; $45d0: $7f
	ld l, c                                          ; $45d1: $69
	inc b                                            ; $45d2: $04
	ld l, a                                          ; $45d3: $6f
	ret                                              ; $45d4: $c9


TaskHandler_08c:
	ld b, $00                                        ; $45d5: $06 $00
	rst FarCall                                          ; $45d7: $f7
	ld [de], a                                       ; $45d8: $12
	ld e, e                                          ; $45d9: $5b
	ld [$c969], sp                                   ; $45da: $08 $69 $c9
TaskHandler_08d:
	ld b, $01                                        ; $45dd: $06 $01
	rst FarCall                                          ; $45df: $f7
	ld [de], a                                       ; $45e0: $12
	ld e, e                                          ; $45e1: $5b
	ld [$c969], sp                                   ; $45e2: $08 $69 $c9
TaskHandler_08e:
	ld b, $02                                        ; $45e5: $06 $02
	rst FarCall                                          ; $45e7: $f7
	ld [de], a                                       ; $45e8: $12
	ld e, e                                          ; $45e9: $5b
	ld [$c969], sp                                   ; $45ea: $08 $69 $c9
TaskHandler_08f:
	ld b, $03                                        ; $45ed: $06 $03
	rst FarCall                                          ; $45ef: $f7
	ld [de], a                                       ; $45f0: $12
	ld e, e                                          ; $45f1: $5b
	ld [$c969], sp                                   ; $45f2: $08 $69 $c9
TaskHandler_090:
	ld b, $04                                        ; $45f5: $06 $04
	rst FarCall                                          ; $45f7: $f7
	ld [de], a                                       ; $45f8: $12
	ld e, e                                          ; $45f9: $5b
	ld [$c969], sp                                   ; $45fa: $08 $69 $c9
TaskHandler_091:
	rst FarCall                                          ; $45fd: $f7
	pop af                                           ; $45fe: $f1
	ld e, b                                          ; $45ff: $58
	inc b                                            ; $4600: $04
	ld l, a                                          ; $4601: $6f
	ret                                              ; $4602: $c9


TaskHandler_092:
	ld a, [wTaskParam0_word0]                                    ; $4603: $fa $b0 $d0
	rst FarCall                                          ; $4606: $f7
	AddrBank todo_Set_a30c
	ret                                              ; $460a: $c9


TaskHandler_093:
	rst FarCall                                          ; $460b: $f7
	ld sp, hl                                        ; $460c: $f9
	ld e, b                                          ; $460d: $58
	inc b                                            ; $460e: $04
	ret                                              ; $460f: $c9


TaskHandler_094:
	rst FarCall                                          ; $4610: $f7
	ld hl, $0459                                     ; $4611: $21 $59 $04
	ld l, a                                          ; $4614: $6f
	ret                                              ; $4615: $c9


TaskHandler_095:
	rst FarCall                                          ; $4616: $f7
	dec l                                            ; $4617: $2d
	ld e, c                                          ; $4618: $59
	inc b                                            ; $4619: $04
	ret                                              ; $461a: $c9


TaskHandler_096:
	rst FarCall                                          ; $461b: $f7
	ccf                                              ; $461c: $3f
	ld e, c                                          ; $461d: $59
	inc b                                            ; $461e: $04
	ret                                              ; $461f: $c9


TaskHandler_097:
	rst FarCall                                          ; $4620: $f7
	ld [hl], $59                                     ; $4621: $36 $59
	inc b                                            ; $4623: $04
	ret                                              ; $4624: $c9


TaskHandler_098:
	rst FarCall                                          ; $4625: $f7
	ccf                                              ; $4626: $3f
	ld e, c                                          ; $4627: $59
	inc b                                            ; $4628: $04
	ret                                              ; $4629: $c9


TaskHandler_099:
	ld a, [wTaskParam0_word0]                                    ; $462a: $fa $b0 $d0
	rst FarCall                                          ; $462d: $f7
	ld [hl+], a                                      ; $462e: $22
	ld b, b                                          ; $462f: $40
	inc b                                            ; $4630: $04
	ld l, a                                          ; $4631: $6f
	ret                                              ; $4632: $c9


TaskHandler_09a:
	ld a, [wTaskParam0_word0]                                    ; $4633: $fa $b0 $d0
	rst FarCall                                          ; $4636: $f7
	ld sp, $0440                                     ; $4637: $31 $40 $04
	ld l, a                                          ; $463a: $6f
	ret                                              ; $463b: $c9


TaskHandler_09b:
	ld a, [wTaskParam0_word0]                                    ; $463c: $fa $b0 $d0
	rst FarCall                                          ; $463f: $f7
	ld b, b                                          ; $4640: $40
	ld b, b                                          ; $4641: $40
	inc b                                            ; $4642: $04
	ret                                              ; $4643: $c9


TaskHandler_09c:
	ld a, [wTaskParam0_word0]                                    ; $4644: $fa $b0 $d0
	rst FarCall                                          ; $4647: $f7
	ld d, a                                          ; $4648: $57
	ld b, b                                          ; $4649: $40
	inc b                                            ; $464a: $04
	ret                                              ; $464b: $c9


TaskHandler_09d:
	ld a, [wTaskParam0_word0]                                    ; $464c: $fa $b0 $d0
	rst FarCall                                          ; $464f: $f7
	rrca                                             ; $4650: $0f
	ld b, b                                          ; $4651: $40
	inc b                                            ; $4652: $04
	ld l, a                                          ; $4653: $6f
	ret                                              ; $4654: $c9


TaskHandler_09e:
	ld a, [wTaskParam0_word0]                                    ; $4655: $fa $b0 $d0
	rst FarCall                                          ; $4658: $f7
	ret nz                                           ; $4659: $c0

	ld b, b                                          ; $465a: $40
	inc b                                            ; $465b: $04
	ld l, a                                          ; $465c: $6f
	ret                                              ; $465d: $c9


TaskHandler_09f:
	ld a, [wTaskParam0_word0]                                    ; $465e: $fa $b0 $d0
	rst FarCall                                          ; $4661: $f7
	and d                                            ; $4662: $a2
	ld b, b                                          ; $4663: $40
	inc b                                            ; $4664: $04
	ld l, a                                          ; $4665: $6f
	ret                                              ; $4666: $c9


TaskHandler_0a0:
	ld a, [wTaskParam0_word0]                                    ; $4667: $fa $b0 $d0
	rst FarCall                                          ; $466a: $f7
	cp b                                             ; $466b: $b8
	ld b, b                                          ; $466c: $40
	inc b                                            ; $466d: $04
	ld l, a                                          ; $466e: $6f
	ret                                              ; $466f: $c9


TaskHandler_0a1:
	rst FarCall                                          ; $4670: $f7
	ld a, l                                          ; $4671: $7d
	ld h, h                                          ; $4672: $64
	inc b                                            ; $4673: $04
	ld l, a                                          ; $4674: $6f
	ret                                              ; $4675: $c9


TaskHandler_0a2:
	rst FarCall                                          ; $4676: $f7
	ld d, $37                                        ; $4677: $16 $37
	nop                                              ; $4679: $00
	ret                                              ; $467a: $c9


TaskHandler_0a3:
	ret                                              ; $467b: $c9


TaskHandler_0a4:
TaskHandler_0a5:
	rst FarCall                                          ; $467c: $f7
	ret nc                                           ; $467d: $d0

	ld a, [de]                                       ; $467e: $1a
	nop                                              ; $467f: $00
	rst FarCall                                          ; $4680: $f7
	push de                                          ; $4681: $d5
	ld a, [de]                                       ; $4682: $1a
	nop                                              ; $4683: $00
	rst FarCall                                          ; $4684: $f7
	ld sp, hl                                        ; $4685: $f9
	cpl                                              ; $4686: $2f
	nop                                              ; $4687: $00

Call_00c_4688:
	rst FarCall                                          ; $4688: $f7
	inc [hl]                                         ; $4689: $34
	scf                                              ; $468a: $37
	nop                                              ; $468b: $00
	ret                                              ; $468c: $c9


TaskHandler_0a6:
	rst FarCall                                          ; $468d: $f7
	rst JumpTable                                          ; $468e: $c7
	jr nc, jr_00c_4691                               ; $468f: $30 $00

jr_00c_4691:
	ret                                              ; $4691: $c9


TaskHandler_0a7:
	ld a, [wTaskParam2_word0]                                    ; $4692: $fa $b8 $d0
	ld b, a                                          ; $4695: $47
	ld a, [wTaskParam1_word0]                                    ; $4696: $fa $b4 $d0
	ld c, a                                          ; $4699: $4f
	ld a, [wTaskParam0_word0]                                    ; $469a: $fa $b0 $d0
	ld [$c171], a                                    ; $469d: $ea $71 $c1
	rst FarCall                                          ; $46a0: $f7
	sbc d                                            ; $46a1: $9a
	ld l, h                                          ; $46a2: $6c
	inc b                                            ; $46a3: $04
	ret                                              ; $46a4: $c9


TaskHandler_0a8:
	ld a, [wTaskParam0_word0]                                    ; $46a5: $fa $b0 $d0
	ld [$c171], a                                    ; $46a8: $ea $71 $c1
	rst FarCall                                          ; $46ab: $f7
	or h                                             ; $46ac: $b4
	ld l, h                                          ; $46ad: $6c
	inc b                                            ; $46ae: $04
	ret                                              ; $46af: $c9


TaskHandler_0a9:
	ld a, [wTaskParam0_word0]                                    ; $46b0: $fa $b0 $d0
	ld [$c171], a                                    ; $46b3: $ea $71 $c1
	rst FarCall                                          ; $46b6: $f7
	push de                                          ; $46b7: $d5
	ld l, h                                          ; $46b8: $6c
	inc b                                            ; $46b9: $04
	ret                                              ; $46ba: $c9


TaskHandler_0aa:
	ld a, [wTaskParam0_word0]                                    ; $46bb: $fa $b0 $d0
	ld [$c171], a                                    ; $46be: $ea $71 $c1
	rst FarCall                                          ; $46c1: $f7
	ld a, [bc]                                       ; $46c2: $0a
	ld l, l                                          ; $46c3: $6d
	inc b                                            ; $46c4: $04
	ret                                              ; $46c5: $c9


TaskHandler_0ab:
	ld a, [wTaskParam0_word0]                                    ; $46c6: $fa $b0 $d0
	rst FarCall                                          ; $46c9: $f7
	ld c, e                                          ; $46ca: $4b
	ld l, [hl]                                       ; $46cb: $6e
	inc b                                            ; $46cc: $04
	jp $30c7                                         ; $46cd: $c3 $c7 $30


TaskHandler_0ac:
	ld a, [$c171]                                    ; $46d0: $fa $71 $c1
	rst FarCall                                          ; $46d3: $f7
	jr z, jr_00c_471a                                ; $46d4: $28 $44

	inc b                                            ; $46d6: $04
	rst FarCall                                          ; $46d7: $f7
	ld c, e                                          ; $46d8: $4b
	ld l, [hl]                                       ; $46d9: $6e
	inc b                                            ; $46da: $04
	jp $30c7                                         ; $46db: $c3 $c7 $30


TaskHandler_0ad:
	ld a, $01                                        ; $46de: $3e $01
	ld [$c162], a                                    ; $46e0: $ea $62 $c1
	ret                                              ; $46e3: $c9


TaskHandler_0ae:
	ld a, $01                                        ; $46e4: $3e $01
	ld [$c163], a                                    ; $46e6: $ea $63 $c1
	ret                                              ; $46e9: $c9


TaskHandler_0af:
	xor a                                            ; $46ea: $af
	ld [$c163], a                                    ; $46eb: $ea $63 $c1
	ret                                              ; $46ee: $c9


TaskHandler_0b0:
	ret                                              ; $46ef: $c9


TaskHandler_0b1:
	ret                                              ; $46f0: $c9


TaskHandler_0b2:
	ret                                              ; $46f1: $c9


TaskHandler_0b3:
	rst FarCall                                          ; $46f2: $f7
	jp c, $001a                                      ; $46f3: $da $1a $00

	jp $3768                                         ; $46f6: $c3 $68 $37


TaskHandler_0b4:
TaskHandler_0b5:
	rst FarCall                                          ; $46f9: $f7
	pop af                                           ; $46fa: $f1
	ld c, c                                          ; $46fb: $49
	inc b                                            ; $46fc: $04
	ld l, a                                          ; $46fd: $6f
	ret                                              ; $46fe: $c9


TaskHandler_0b6:
	ld a, [wTaskParam0_word0]                                    ; $46ff: $fa $b0 $d0
	sla a                                            ; $4702: $cb $27
	sla a                                            ; $4704: $cb $27
	sla a                                            ; $4706: $cb $27
	ld [$c14b], a                                    ; $4708: $ea $4b $c1
	ret                                              ; $470b: $c9


TaskHandler_0b7:
	xor a                                            ; $470c: $af
	ld [$c14b], a                                    ; $470d: $ea $4b $c1
	ret                                              ; $4710: $c9


TaskHandler_0b8:
	ret                                              ; $4711: $c9


TaskHandler_0b9:
	ret                                              ; $4712: $c9


TaskHandler_0ba:
	ret                                              ; $4713: $c9


TaskHandler_0bb:
	ld a, [wTaskParam0_word0]                                    ; $4714: $fa $b0 $d0
	rst FarCall                                          ; $4717: $f7
	pop af                                           ; $4718: $f1
	ld h, [hl]                                       ; $4719: $66

jr_00c_471a:
	inc b                                            ; $471a: $04
	ret                                              ; $471b: $c9


TaskHandler_0bc:
	ld a, [wTaskParam0_word0]                                    ; $471c: $fa $b0 $d0
	rst FarCall                                          ; $471f: $f7
	ld l, a                                          ; $4720: $6f
	ld b, b                                          ; $4721: $40
	inc b                                            ; $4722: $04
	ret                                              ; $4723: $c9


TaskHandler_0bd:
	ld a, [wTaskParam0_word0]                                    ; $4724: $fa $b0 $d0
	rst FarCall                                          ; $4727: $f7
	ld h, b                                          ; $4728: $60
	ld b, b                                          ; $4729: $40
	inc b                                            ; $472a: $04
	ld l, a                                          ; $472b: $6f
	ret                                              ; $472c: $c9


TaskHandler_0be:
	ld a, [wTaskParam0_word0]                                    ; $472d: $fa $b0 $d0
	rst FarCall                                          ; $4730: $f7
	add l                                            ; $4731: $85
	ld b, b                                          ; $4732: $40
	inc b                                            ; $4733: $04
	ret                                              ; $4734: $c9


TaskHandler_0bf:
	ld a, [wTaskParam0_word0]                                    ; $4735: $fa $b0 $d0
	rst FarCall                                          ; $4738: $f7
	halt                                             ; $4739: $76
	ld b, b                                          ; $473a: $40
	inc b                                            ; $473b: $04
	ld l, a                                          ; $473c: $6f
	ret                                              ; $473d: $c9


TaskHandler_0c0:
	ld a, [wTaskParam0_word0]                                    ; $473e: $fa $b0 $d0
	rst FarCall                                          ; $4741: $f7
	sbc e                                            ; $4742: $9b
	ld b, b                                          ; $4743: $40
	inc b                                            ; $4744: $04
	ret                                              ; $4745: $c9


TaskHandler_0c1:
	ld a, [wTaskParam0_word0]                                    ; $4746: $fa $b0 $d0
	rst FarCall                                          ; $4749: $f7
	adc h                                            ; $474a: $8c
	ld b, b                                          ; $474b: $40
	inc b                                            ; $474c: $04
	ld l, a                                          ; $474d: $6f
	ret                                              ; $474e: $c9


TaskHandler_0c2:
	ld a, [wTaskParam0_word0]                                    ; $474f: $fa $b0 $d0
	rst FarCall                                          ; $4752: $f7
	xor [hl]                                         ; $4753: $ae
	ld b, c                                          ; $4754: $41
	inc b                                            ; $4755: $04
	ret                                              ; $4756: $c9


TaskHandler_0c3:
	ld a, [wTaskParam0_word0]                                    ; $4757: $fa $b0 $d0
	rst FarCall                                          ; $475a: $f7
	cp c                                             ; $475b: $b9
	ld b, c                                          ; $475c: $41
	inc b                                            ; $475d: $04
	ld l, a                                          ; $475e: $6f
	ret                                              ; $475f: $c9


TaskHandler_0c4:
	ld a, [wTaskParam0_word0]                                    ; $4760: $fa $b0 $d0
	ld b, a                                          ; $4763: $47
	ld a, $03                                        ; $4764: $3e $03
	rst FarCall                                          ; $4766: $f7
	cp $71                                           ; $4767: $fe $71
	inc b                                            ; $4769: $04
	ret                                              ; $476a: $c9


TaskHandler_0c5:
	ld a, [wTaskParam0_word0]                                    ; $476b: $fa $b0 $d0
	rst FarCall                                          ; $476e: $f7
	ld a, $43                                        ; $476f: $3e $43
	inc b                                            ; $4771: $04
	ld l, a                                          ; $4772: $6f
	ret                                              ; $4773: $c9


TaskHandler_0c6:
	ld a, [wTaskParam0_word0]                                    ; $4774: $fa $b0 $d0
	rst FarCall                                          ; $4777: $f7
	push bc                                          ; $4778: $c5
	ld b, d                                          ; $4779: $42
	inc b                                            ; $477a: $04
	ld l, a                                          ; $477b: $6f
	ret                                              ; $477c: $c9


TaskHandler_0c7:
	ld a, [wTaskParam0_word0]                                    ; $477d: $fa $b0 $d0
	ld b, a                                          ; $4780: $47
	ld a, $01                                        ; $4781: $3e $01
	rst FarCall                                          ; $4783: $f7
	cp $71                                           ; $4784: $fe $71
	inc b                                            ; $4786: $04
	ret                                              ; $4787: $c9


TaskHandler_0c8:
	call Call_00c_5465                               ; $4788: $cd $65 $54
	rst FarCall                                          ; $478b: $f7
	inc l                                            ; $478c: $2c
	ld h, [hl]                                       ; $478d: $66
	inc b                                            ; $478e: $04
	ret                                              ; $478f: $c9


TaskHandler_0ca:
	rst FarCall                                          ; $4790: $f7
	add $1a                                          ; $4791: $c6 $1a
	nop                                              ; $4793: $00
	rst FarCall                                          ; $4794: $f7
	ret nc                                           ; $4795: $d0

	ld a, [de]                                       ; $4796: $1a
	nop                                              ; $4797: $00
	call Call_00c_5546                               ; $4798: $cd $46 $55
	rst FarCall                                          ; $479b: $f7
	adc h                                            ; $479c: $8c
	jr c, jr_00c_479f                                ; $479d: $38 $00

jr_00c_479f:
	rst FarCall                                          ; $479f: $f7
	ld sp, hl                                        ; $47a0: $f9
	cpl                                              ; $47a1: $2f
	nop                                              ; $47a2: $00
	ld bc, $680c                                     ; $47a3: $01 $0c $68
	ld de, $0000                                     ; $47a6: $11 $00 $00
	rst FarCall                                          ; $47a9: $f7
	ld [bc], a                                       ; $47aa: $02
	ld a, [de]                                       ; $47ab: $1a
	nop                                              ; $47ac: $00
	and a                                            ; $47ad: $a7
	jr z, jr_00c_47b3                                ; $47ae: $28 $03

	ld bc, $67d4                                     ; $47b0: $01 $d4 $67

jr_00c_47b3:
	rst FarCall                                          ; $47b3: $f7
	push af                                          ; $47b4: $f5
	add hl, de                                       ; $47b5: $19
	nop                                              ; $47b6: $00
	call Func_1aa6                                       ; $47b7: $cd $a6 $1a
	call todo_Clear_ff8a                               ; $47ba: $cd $09 $41
	ret                                              ; $47bd: $c9


TaskHandler_0cb:
	rst FarCall                                          ; $47be: $f7
	AddrBank Func_1ac1
	rst FarCall                                          ; $47c2: $f7
	AddrBank Func_1acb
	call Call_00c_4100                               ; $47c6: $cd $00 $41
	ld a, [$c186]                                    ; $47c9: $fa $86 $c1
	cp $00                                           ; $47cc: $fe $00
	jr z, .br_47dd                                ; $47ce: $28 $0d

	ld bc, $67f0                                     ; $47d0: $01 $f0 $67
	ld de, $0000                                     ; $47d3: $11 $00 $00
	rst FarCall                                          ; $47d6: $f7
	AddrBank Call_000_19f5
	jp Func_1aa6                                         ; $47da: $c3 $a6 $1a

.br_47dd:
	rst FarCall                                          ; $47dd: $f7
	AddrBank Call_003_51c0
	ld bc, $67f2                                     ; $47e1: $01 $f2 $67
	ld de, $0000                                     ; $47e4: $11 $00 $00
	rst FarCall                                          ; $47e7: $f7
	AddrBank Call_000_19f5
	jp Func_1aa6                                         ; $47eb: $c3 $a6 $1a


TaskHandler_1a1:
	rst FarCall                                          ; $47ee: $f7
	pop bc                                           ; $47ef: $c1
	ld a, [de]                                       ; $47f0: $1a
	nop                                              ; $47f1: $00
	rst FarCall                                          ; $47f2: $f7
	rr d                                             ; $47f3: $cb $1a
	nop                                              ; $47f5: $00
	call Call_00c_4100                               ; $47f6: $cd $00 $41
	rst FarCall                                          ; $47f9: $f7
	ret nz                                           ; $47fa: $c0

	ld d, c                                          ; $47fb: $51
	inc bc                                           ; $47fc: $03
	ld bc, $67b8                                     ; $47fd: $01 $b8 $67
	ld de, $0000                                     ; $4800: $11 $00 $00
	rst FarCall                                          ; $4803: $f7
	push af                                          ; $4804: $f5
	add hl, de                                       ; $4805: $19
	nop                                              ; $4806: $00
	jp Func_1aa6                                         ; $4807: $c3 $a6 $1a


TaskHandler_0cc:
	ld a, [wTaskParam0_word0]                                    ; $480a: $fa $b0 $d0
	rst FarCall                                          ; $480d: $f7
	add a                                            ; $480e: $87
	ld b, c                                          ; $480f: $41
	inc b                                            ; $4810: $04
	ld l, a                                          ; $4811: $6f
	ret                                              ; $4812: $c9


TaskHandler_0cf:
	ld hl, $ff82                                     ; $4813: $21 $82 $ff
	res 3, [hl]                                      ; $4816: $cb $9e
	ldh a, [$8b]                                     ; $4818: $f0 $8b
	cp $59                                           ; $481a: $fe $59
	jr nc, jr_00c_4822                               ; $481c: $30 $04

	rst FarCall                                          ; $481e: $f7
	ret z                                            ; $481f: $c8

	ld [hl], d                                       ; $4820: $72
	inc bc                                           ; $4821: $03

jr_00c_4822:
	xor a                                            ; $4822: $af
	ld [$d818], a                                    ; $4823: $ea $18 $d8
	ld a, [wTaskParam0_word0]                                    ; $4826: $fa $b0 $d0
	rst FarCall                                          ; $4829: $f7
	db $e4                                           ; $482a: $e4
	ld e, [hl]                                       ; $482b: $5e
	inc b                                            ; $482c: $04
	rst FarCall                                          ; $482d: $f7
	jp c, $0466                                      ; $482e: $da $66 $04

	ld a, [wTaskParam0_word0]                                    ; $4831: $fa $b0 $d0
	cp $ff                                           ; $4834: $fe $ff
	ret z                                            ; $4836: $c8

	rst FarCall                                          ; $4837: $f7
	db $ec                                           ; $4838: $ec
	ld [hl], l                                       ; $4839: $75
	inc b                                            ; $483a: $04
	ret                                              ; $483b: $c9


TaskHandler_0d0:
	ret                                              ; $483c: $c9


TaskHandler_0d1:
	ret                                              ; $483d: $c9


TaskHandler_0d2:
	ret                                              ; $483e: $c9


TaskHandler_0d3:
	ret                                              ; $483f: $c9


TaskHandler_0d4:
	ret                                              ; $4840: $c9


TaskHandler_0d5:
	rst FarCall                                          ; $4841: $f7
	and l                                            ; $4842: $a5
	ld b, c                                          ; $4843: $41
	inc b                                            ; $4844: $04
	ld l, a                                          ; $4845: $6f
	ret                                              ; $4846: $c9


TaskHandler_0d6:
	rst FarCall                                          ; $4847: $f7
	add $41                                          ; $4848: $c6 $41
	inc b                                            ; $484a: $04
	ret                                              ; $484b: $c9


TaskHandler_0d7:
	call Call_00c_546d                               ; $484c: $cd $6d $54
	rst FarCall                                          ; $484f: $f7
	ld d, l                                          ; $4850: $55
	ld b, a                                          ; $4851: $47
	inc b                                            ; $4852: $04
	ret                                              ; $4853: $c9


TaskHandler_0d8:
	call Call_00c_546d                               ; $4854: $cd $6d $54
	rst FarCall                                          ; $4857: $f7
	ld l, [hl]                                       ; $4858: $6e
	ld b, a                                          ; $4859: $47
	inc b                                            ; $485a: $04
	ret                                              ; $485b: $c9


TaskHandler_0d9:
	ld a, [wTaskParam0_word0]                                    ; $485c: $fa $b0 $d0
	ld c, a                                          ; $485f: $4f
	ld a, [wTaskParam0_word0+1]                                    ; $4860: $fa $b1 $d0
	ld b, a                                          ; $4863: $47
	ld a, [wTaskParam1_word0]                                    ; $4864: $fa $b4 $d0
	rst FarCall                                          ; $4867: $f7
	AddrBank Func_04_621f
	ret                                              ; $486b: $c9


TaskHandler_0da:
	ld a, [wTaskParam0_word0]                                    ; $486c: $fa $b0 $d0
	ld c, a                                          ; $486f: $4f
	ld a, [wTaskParam0_word0+1]                                    ; $4870: $fa $b1 $d0
	ld b, a                                          ; $4873: $47
	ld a, [wTaskParam1_word0]                                    ; $4874: $fa $b4 $d0
	rst FarCall                                          ; $4877: $f7
	ld b, a                                          ; $4878: $47
	ld h, d                                          ; $4879: $62
	inc b                                            ; $487a: $04
	ret                                              ; $487b: $c9


TaskHandler_0db:
	ld a, [wTaskParam0_word0]                                    ; $487c: $fa $b0 $d0
	ld c, a                                          ; $487f: $4f
	ld a, [wTaskParam0_word0+1]                                    ; $4880: $fa $b1 $d0
	ld b, a                                          ; $4883: $47
	ld a, [wTaskParam1_word0]                                    ; $4884: $fa $b4 $d0
	rst FarCall                                          ; $4887: $f7
	ld [hl], d                                       ; $4888: $72
	ld h, d                                          ; $4889: $62
	inc b                                            ; $488a: $04
	ret                                              ; $488b: $c9


TaskHandler_0dc:
	ld a, [wTaskParam0_word0]                                    ; $488c: $fa $b0 $d0
	rst FarCall                                          ; $488f: $f7
	inc de                                           ; $4890: $13
	ld h, h                                          ; $4891: $64
	dec b                                            ; $4892: $05
	ld l, a                                          ; $4893: $6f
	ret                                              ; $4894: $c9


TaskHandler_0dd:
	ret                                              ; $4895: $c9


TaskHandler_0de:
	ret                                              ; $4896: $c9


TaskHandler_0df:
	ret                                              ; $4897: $c9


TaskHandler_0e0:
	ret                                              ; $4898: $c9


TaskHandler_0e1:
	ret                                              ; $4899: $c9


TaskHandler_0e2:
	ret                                              ; $489a: $c9


TaskHandler_0e3:
	ret                                              ; $489b: $c9


TaskHandler_0e4:
	ret                                              ; $489c: $c9


TaskHandler_0e5:
	ret                                              ; $489d: $c9


TaskHandler_0e6:
	ret                                              ; $489e: $c9


TaskHandler_0e7:
	rst FarCall                                          ; $489f: $f7
	db $eb                                           ; $48a0: $eb
	ld e, c                                          ; $48a1: $59
	inc b                                            ; $48a2: $04
	ld l, a                                          ; $48a3: $6f
	ret                                              ; $48a4: $c9


TaskHandler_0e8:
	rst FarCall                                          ; $48a5: $f7
	ld b, d                                          ; $48a6: $42
	ld e, h                                          ; $48a7: $5c
	inc b                                            ; $48a8: $04
	ret                                              ; $48a9: $c9


TaskHandler_0e9:
	ld a, [wTaskParam0_word0]                                    ; $48aa: $fa $b0 $d0
	rst FarCall                                          ; $48ad: $f7
	ld h, [hl]                                       ; $48ae: $66
	ld e, h                                          ; $48af: $5c
	inc b                                            ; $48b0: $04
	ret                                              ; $48b1: $c9


TaskHandler_0ea:
	rst FarCall                                          ; $48b2: $f7
	ld a, a                                          ; $48b3: $7f
	ld e, h                                          ; $48b4: $5c
	inc b                                            ; $48b5: $04
	ret                                              ; $48b6: $c9


TaskHandler_0eb:
	ret                                              ; $48b7: $c9


	ret                                              ; $48b8: $c9


TaskHandler_0ec:
	ret                                              ; $48b9: $c9


TaskHandler_0ed:
	ret                                              ; $48ba: $c9


	ret                                              ; $48bb: $c9


	ret                                              ; $48bc: $c9


TaskHandler_0ee:
	call todo_Clear_ff8a                               ; $48bd: $cd $09 $41
	rst FarCall                                          ; $48c0: $f7
	ld e, a                                          ; $48c1: $5f
	ld [hl], b                                       ; $48c2: $70
	ld bc, $013e                                     ; $48c3: $01 $3e $01
	rst FarCall                                          ; $48c6: $f7
	ld l, d                                          ; $48c7: $6a
	ld [hl], b                                       ; $48c8: $70
	ld bc, $50fa                                     ; $48c9: $01 $fa $50
	pop bc                                           ; $48cc: $c1
	ld l, a                                          ; $48cd: $6f
	ret                                              ; $48ce: $c9


	ret                                              ; $48cf: $c9


TaskHandler_0ef:
	ld a, [wTaskParam0_word0]                                    ; $48d0: $fa $b0 $d0
	ld b, a                                          ; $48d3: $47
	ld a, $06                                        ; $48d4: $3e $06
	rst FarCall                                          ; $48d6: $f7
	cp $71                                           ; $48d7: $fe $71
	inc b                                            ; $48d9: $04
	ret                                              ; $48da: $c9


TaskHandler_0f0:
	ld a, [wTaskParam0_word0]                                    ; $48db: $fa $b0 $d0
	ld b, a                                          ; $48de: $47
	ld a, [wTaskParam1_word0]                                    ; $48df: $fa $b4 $d0
	ld c, a                                          ; $48e2: $4f
	ld a, $00                                        ; $48e3: $3e $00
	rst FarCall                                          ; $48e5: $f7
	cp $71                                           ; $48e6: $fe $71
	inc b                                            ; $48e8: $04
	ld l, a                                          ; $48e9: $6f
	ret                                              ; $48ea: $c9


TaskHandler_0f1:
	ret                                              ; $48eb: $c9


TaskHandler_0f2:
	ld a, [wTaskParam0_word0]                                    ; $48ec: $fa $b0 $d0
	ld b, a                                          ; $48ef: $47
	ld a, $07                                        ; $48f0: $3e $07
	rst FarCall                                          ; $48f2: $f7
	cp $71                                           ; $48f3: $fe $71
	inc b                                            ; $48f5: $04
	ld l, a                                          ; $48f6: $6f
	ret                                              ; $48f7: $c9


TaskHandler_0f3:
	call todo_Clear_ff8a                               ; $48f8: $cd $09 $41
	rst FarCall                                          ; $48fb: $f7
	ld e, a                                          ; $48fc: $5f
	ld [hl], b                                       ; $48fd: $70
	ld bc, $043e                                     ; $48fe: $01 $3e $04
	rst FarCall                                          ; $4901: $f7
	ld l, d                                          ; $4902: $6a
	ld [hl], b                                       ; $4903: $70
	ld bc, $50fa                                     ; $4904: $01 $fa $50
	pop bc                                           ; $4907: $c1
	ld l, a                                          ; $4908: $6f
	ret                                              ; $4909: $c9


TaskHandler_179:
	call todo_Clear_ff8a                               ; $490a: $cd $09 $41
	rst FarCall                                          ; $490d: $f7
	ld e, a                                          ; $490e: $5f
	ld [hl], b                                       ; $490f: $70
	ld bc, $b0fa                                     ; $4910: $01 $fa $b0
	ret nc                                           ; $4913: $d0

	ld [$c158], a                                    ; $4914: $ea $58 $c1
	ld a, $05                                        ; $4917: $3e $05
	rst FarCall                                          ; $4919: $f7
	ld l, d                                          ; $491a: $6a
	ld [hl], b                                       ; $491b: $70
	ld bc, $50fa                                     ; $491c: $01 $fa $50
	pop bc                                           ; $491f: $c1
	ld l, a                                          ; $4920: $6f
	ret                                              ; $4921: $c9


TaskHandler_0f4:
	ld a, [wTaskParam0_word0]                                    ; $4922: $fa $b0 $d0
	rst FarCall                                          ; $4925: $f7
	adc a                                            ; $4926: $8f
	ld e, h                                          ; $4927: $5c
	inc b                                            ; $4928: $04
	ret                                              ; $4929: $c9


TaskHandler_0f5:
	rst FarCall                                          ; $492a: $f7
	ld l, a                                          ; $492b: $6f
	ld e, l                                          ; $492c: $5d
	inc b                                            ; $492d: $04
	ret                                              ; $492e: $c9


TaskHandler_0f6:
	ld a, [wTaskParam0_word0]                                    ; $492f: $fa $b0 $d0
	rst FarCall                                          ; $4932: $f7
	ld e, c                                          ; $4933: $59
	ld l, [hl]                                       ; $4934: $6e
	inc b                                            ; $4935: $04
	ret                                              ; $4936: $c9


TaskHandler_0f7:
	jp TaskHandler_001                                 ; $4937: $c3 $3f $41


TaskHandler_0f8:
	ld a, $08                                        ; $493a: $3e $08
	ld [wGameState], a                                    ; $493c: $ea $42 $c1
	rst FarCall                                          ; $493f: $f7
	ld a, l                                          ; $4940: $7d
	ld a, [hl-]                                      ; $4941: $3a
	nop                                              ; $4942: $00
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $4943: $cd $ef $2d
	ld d, $ff                                        ; $4946: $16 $ff
	call $1a38                                       ; $4948: $cd $38 $1a
	ret                                              ; $494b: $c9


TaskHandler_0f9:
	rst FarCall                                          ; $494c: $f7
	adc c                                            ; $494d: $89
	dec sp                                           ; $494e: $3b
	nop                                              ; $494f: $00
	ld a, [$d08a]                                    ; $4950: $fa $8a $d0
	and a                                            ; $4953: $a7
	ld l, $0f                                        ; $4954: $2e $0f
	ret z                                            ; $4956: $c8

	ld a, [$d08b]                                    ; $4957: $fa $8b $d0
	ld l, a                                          ; $495a: $6f
	ret                                              ; $495b: $c9


TaskHandler_0fa:
	rst FarCall                                          ; $495c: $f7
	adc c                                            ; $495d: $89
	dec sp                                           ; $495e: $3b
	nop                                              ; $495f: $00
	ld a, [$d08c]                                    ; $4960: $fa $8c $d0
	ld l, a                                          ; $4963: $6f
	ret                                              ; $4964: $c9


TaskHandler_0fb:
	ret                                              ; $4965: $c9


TaskHandler_0fc:
	rst FarCall                                          ; $4966: $f7
	xor l                                            ; $4967: $ad
	ld a, [hl+]                                      ; $4968: $2a
	nop                                              ; $4969: $00
	ret                                              ; $496a: $c9


TaskHandler_0fd:
	rst FarCall                                          ; $496b: $f7
	db $eb                                           ; $496c: $eb
	ld e, [hl]                                       ; $496d: $5e
	ld [$c96f], sp                                   ; $496e: $08 $6f $c9
TaskHandler_0fe:
	ret                                              ; $4971: $c9


TaskHandler_0ff:
	rst FarCall                                          ; $4972: $f7
	add $1a                                          ; $4973: $c6 $1a
	nop                                              ; $4975: $00
	rst FarCall                                          ; $4976: $f7
	ret nc                                           ; $4977: $d0

	ld a, [de]                                       ; $4978: $1a
	nop                                              ; $4979: $00
	rst FarCall                                          ; $497a: $f7
	adc h                                            ; $497b: $8c
	jr c, jr_00c_497e                                ; $497c: $38 $00

jr_00c_497e:
	ld a, [$c14a]                                    ; $497e: $fa $4a $c1
	and $08                                          ; $4981: $e6 $08
	jr z, jr_00c_498c                                ; $4983: $28 $07

	rst FarCall                                          ; $4985: $f7
	ld sp, hl                                        ; $4986: $f9
	cpl                                              ; $4987: $2f
	nop                                              ; $4988: $00
	call $3734                                       ; $4989: $cd $34 $37

jr_00c_498c:
	jp todo_Clear_ff8a                                 ; $498c: $c3 $09 $41


TaskHandler_100:
	rst FarCall                                          ; $498f: $f7
	ld a, c                                          ; $4990: $79
	ld c, c                                          ; $4991: $49
	inc b                                            ; $4992: $04
	ld l, a                                          ; $4993: $6f
	ret                                              ; $4994: $c9


TaskHandler_101:
	rst FarCall                                          ; $4995: $f7
	cp a                                             ; $4996: $bf
	ld c, c                                          ; $4997: $49
	inc b                                            ; $4998: $04
	ld l, a                                          ; $4999: $6f
	ret                                              ; $499a: $c9


TaskHandler_102:
	ld a, $01                                        ; $499b: $3e $01
	ld [$c1ee], a                                    ; $499d: $ea $ee $c1
	ret                                              ; $49a0: $c9


TaskHandler_103:
	rst FarCall                                          ; $49a1: $f7
	add l                                            ; $49a2: $85
	ld e, l                                          ; $49a3: $5d
	inc b                                            ; $49a4: $04
	ld l, a                                          ; $49a5: $6f
	ret                                              ; $49a6: $c9


TaskHandler_104:
	ld a, [$c1fa]                                    ; $49a7: $fa $fa $c1
	ld l, a                                          ; $49aa: $6f
	ret                                              ; $49ab: $c9


TaskHandler_105:
	rst FarCall                                          ; $49ac: $f7
	db $ec                                           ; $49ad: $ec
	ld [hl], l                                       ; $49ae: $75
	inc b                                            ; $49af: $04
	ret                                              ; $49b0: $c9


TaskHandler_1ac:
	rst FarCall                                          ; $49b1: $f7
	call c, $085c                                    ; $49b2: $dc $5c $08
	ret                                              ; $49b5: $c9


TaskHandler_106:
	ld a, [wTaskParam0_word0]                                    ; $49b6: $fa $b0 $d0
	rst FarCall                                          ; $49b9: $f7
	or l                                             ; $49ba: $b5
	ld e, [hl]                                       ; $49bb: $5e
	ld [$6069], sp                                   ; $49bc: $08 $69 $60
	ret                                              ; $49bf: $c9


TaskHandler_107:
	call Call_00c_546d                               ; $49c0: $cd $6d $54
	ld c, $00                                        ; $49c3: $0e $00
	rst FarCall                                          ; $49c5: $f7
	ld a, $70                                        ; $49c6: $3e $70
	inc b                                            ; $49c8: $04
	ret                                              ; $49c9: $c9


TaskHandler_108:
	call Call_00c_546d                               ; $49ca: $cd $6d $54
	ld c, $01                                        ; $49cd: $0e $01
	rst FarCall                                          ; $49cf: $f7
	ld a, $70                                        ; $49d0: $3e $70
	inc b                                            ; $49d2: $04
	ret                                              ; $49d3: $c9


TaskHandler_109:
	ld a, [wTaskParam0_word0]                                    ; $49d4: $fa $b0 $d0
	ld [$c18a], a                                    ; $49d7: $ea $8a $c1
TaskHandler_10a:
TaskHandler_10b:
	ret                                              ; $49da: $c9


TaskHandler_10c:
	ret                                              ; $49db: $c9


TaskHandler_10d:
	ret                                              ; $49dc: $c9


TaskHandler_10e:
	rst FarCall                                          ; $49dd: $f7
	push bc                                          ; $49de: $c5
	ld l, e                                          ; $49df: $6b
	inc b                                            ; $49e0: $04
	ld l, a                                          ; $49e1: $6f
	ret                                              ; $49e2: $c9


TaskHandler_10f:
	ret                                              ; $49e3: $c9


TaskHandler_110:
	ret                                              ; $49e4: $c9


TaskHandler_111:
	ld a, [wTaskParam0_word0]                                    ; $49e5: $fa $b0 $d0
	rst FarCall                                          ; $49e8: $f7
	adc d                                            ; $49e9: $8a
	ld h, d                                          ; $49ea: $62
	inc b                                            ; $49eb: $04
	ret                                              ; $49ec: $c9


TaskHandler_112:
	ld a, [wTaskParam0_word0]                                    ; $49ed: $fa $b0 $d0
	rst FarCall                                          ; $49f0: $f7
	sbc b                                            ; $49f1: $98
	ld h, d                                          ; $49f2: $62
	inc b                                            ; $49f3: $04
	ld l, c                                          ; $49f4: $69
	ld h, b                                          ; $49f5: $60
	ret                                              ; $49f6: $c9


TaskHandler_113:
	rst FarCall                                          ; $49f7: $f7
	and d                                            ; $49f8: $a2
	ld h, d                                          ; $49f9: $62
	inc b                                            ; $49fa: $04
	ld l, a                                          ; $49fb: $6f
	ret                                              ; $49fc: $c9


TaskHandler_114:
	ret                                              ; $49fd: $c9


TaskHandler_115:
	rst FarCall                                          ; $49fe: $f7
	and c                                            ; $49ff: $a1
	ld d, e                                          ; $4a00: $53
	inc bc                                           ; $4a01: $03
	ret                                              ; $4a02: $c9


TaskHandler_116:
	ret                                              ; $4a03: $c9


TaskHandler_117:
	rst FarCall                                          ; $4a04: $f7
	di                                               ; $4a05: $f3
	halt                                             ; $4a06: $76
	inc b                                            ; $4a07: $04
	ld a, [$d0af]                                    ; $4a08: $fa $af $d0
	ld l, a                                          ; $4a0b: $6f
	ret                                              ; $4a0c: $c9


TaskHandler_118:
	ret                                              ; $4a0d: $c9


TaskHandler_119:
	ret                                              ; $4a0e: $c9


	ret                                              ; $4a0f: $c9


TaskHandler_11a:
	call todo_Clear_ff8a                               ; $4a10: $cd $09 $41
	ld a, $01                                        ; $4a13: $3e $01
	ld [$d840], a                                    ; $4a15: $ea $40 $d8
	ld a, [wTaskParam0_word0]                                    ; $4a18: $fa $b0 $d0
	call Call_00c_5528                               ; $4a1b: $cd $28 $55
	ld [$d841], a                                    ; $4a1e: $ea $41 $d8
	ld a, $0f                                        ; $4a21: $3e $0f
	call Call_00c_5519                               ; $4a23: $cd $19 $55
	xor a                                            ; $4a26: $af
	rst FarCall                                          ; $4a27: $f7
	AddrBank Call_001_706a
	ret                                     ; $4a2b: $c9


TaskHandler_11b:
	call todo_Clear_ff8a                                     ; $4a2c: $cd $09 $41
	ld a, $02                                        ; $4a2f: $3e $02
	ld [$d840], a                                    ; $4a31: $ea $40 $d8
	ld a, [wTaskParam0_word0]                                    ; $4a34: $fa $b0 $d0
	call Call_00c_5528                               ; $4a37: $cd $28 $55
	ld [$d841], a                                    ; $4a3a: $ea $41 $d8
	ld a, $0f                                        ; $4a3d: $3e $0f
	call Call_00c_5519                               ; $4a3f: $cd $19 $55
	xor a                                            ; $4a42: $af
	rst FarCall                                          ; $4a43: $f7
	AddrBank Call_001_706a
	ret                                     ; $4a47: $c9


TaskHandler_11c:
	call todo_Clear_ff8a                                     ; $4a48: $cd $09 $41
	ld a, $00                                        ; $4a4b: $3e $00
	ld [$d840], a                                    ; $4a4d: $ea $40 $d8
	ld a, [wTaskParam0_word0]                                    ; $4a50: $fa $b0 $d0
	call Call_00c_5528                               ; $4a53: $cd $28 $55
	ld [$d841], a                                    ; $4a56: $ea $41 $d8
	ld a, $0f                                        ; $4a59: $3e $0f
	call Call_00c_5519                               ; $4a5b: $cd $19 $55
	xor a                                            ; $4a5e: $af
	rst FarCall                                          ; $4a5f: $f7
	AddrBank Call_001_706a
	ret                                     ; $4a63: $c9


TaskHandler_11e:
	call todo_Clear_ff8a                                     ; $4a64: $cd $09 $41
	ld a, $06                                        ; $4a67: $3e $06
	ld [$d840], a                                    ; $4a69: $ea $40 $d8
	ld a, [wTaskParam0_word0]                                    ; $4a6c: $fa $b0 $d0
	ld [$d841], a                                    ; $4a6f: $ea $41 $d8
	ld a, [wTaskParam1_word0]                                    ; $4a72: $fa $b4 $d0
	call Call_00c_5519                               ; $4a75: $cd $19 $55
	xor a                                            ; $4a78: $af
	rst FarCall                                          ; $4a79: $f7
	ld l, d                                          ; $4a7a: $6a
	ld [hl], b                                       ; $4a7b: $70
	ld bc, $50fa                                     ; $4a7c: $01 $fa $50
	pop bc                                           ; $4a7f: $c1
	ld l, a                                          ; $4a80: $6f
	ret                                              ; $4a81: $c9


TaskHandler_122:
	call todo_Clear_ff8a                               ; $4a82: $cd $09 $41
	ld a, $03                                        ; $4a85: $3e $03
	ld [$d840], a                                    ; $4a87: $ea $40 $d8
	ld a, $0f                                        ; $4a8a: $3e $0f
	ld [$d841], a                                    ; $4a8c: $ea $41 $d8
	ld a, [wTaskParam0_word0]                                    ; $4a8f: $fa $b0 $d0
	call Call_00c_5519                               ; $4a92: $cd $19 $55
	xor a                                            ; $4a95: $af
	rst FarCall                                          ; $4a96: $f7
	ld l, d                                          ; $4a97: $6a
	ld [hl], b                                       ; $4a98: $70
	ld bc, $71cd                                     ; $4a99: $01 $cd $71
	ld a, [hl-]                                      ; $4a9c: $3a
	ld a, [wInitialA]                                    ; $4a9d: $fa $00 $c1
	cp $11                                           ; $4aa0: $fe $11
	jr nz, jr_00c_4aab                               ; $4aa2: $20 $07

	xor a                                            ; $4aa4: $af
	ld bc, $4217                                     ; $4aa5: $01 $17 $42
	call $1926                                       ; $4aa8: $cd $26 $19

jr_00c_4aab:
	call Call_00c_4100                               ; $4aab: $cd $00 $41
	ret                                              ; $4aae: $c9


TaskHandler_123:
	ld a, [wTaskParam0_word0]                                    ; $4aaf: $fa $b0 $d0
	ld c, a                                          ; $4ab2: $4f
	ld a, [wTaskParam0_word0+1]                                    ; $4ab3: $fa $b1 $d0
	ld b, a                                          ; $4ab6: $47
	rst FarCall                                          ; $4ab7: $f7
	cp [hl]                                          ; $4ab8: $be
	ld h, h                                          ; $4ab9: $64
	inc b                                            ; $4aba: $04
	ld l, a                                          ; $4abb: $6f
	ret                                              ; $4abc: $c9


TaskHandler_124:
	rst FarCall                                          ; $4abd: $f7
	ld d, $65                                        ; $4abe: $16 $65
	inc b                                            ; $4ac0: $04
	ld l, a                                          ; $4ac1: $6f
	ret                                              ; $4ac2: $c9


TaskHandler_125:
	rst FarCall                                          ; $4ac3: $f7
	add hl, hl                                       ; $4ac4: $29
	ld h, l                                          ; $4ac5: $65
	inc b                                            ; $4ac6: $04
	ld l, a                                          ; $4ac7: $6f
	ret                                              ; $4ac8: $c9


TaskHandler_126:
	ret                                              ; $4ac9: $c9


TaskHandler_127:
	ret                                              ; $4aca: $c9


TaskHandler_128:
	call Call_00c_4100                               ; $4acb: $cd $00 $41
	ld bc, $622c                                     ; $4ace: $01 $2c $62
	ld de, $0000                                     ; $4ad1: $11 $00 $00
	rst FarCall                                          ; $4ad4: $f7
	push af                                          ; $4ad5: $f5
	add hl, de                                       ; $4ad6: $19
	nop                                              ; $4ad7: $00
	rst FarCall                                          ; $4ad8: $f7
	ld h, c                                          ; $4ad9: $61
	ld [hl], l                                       ; $4ada: $75
	inc b                                            ; $4adb: $04
	rst FarCall                                          ; $4adc: $f7
	adc h                                            ; $4add: $8c
	jr c, jr_00c_4ae0                                ; $4ade: $38 $00

jr_00c_4ae0:
	rst FarCall                                          ; $4ae0: $f7
	ld h, c                                          ; $4ae1: $61
	ld [hl], l                                       ; $4ae2: $75
	inc b                                            ; $4ae3: $04
	jp todo_Clear_ff8a                                 ; $4ae4: $c3 $09 $41


TaskHandler_129:
	ld a, $01                                        ; $4ae7: $3e $01
	ld [$c162], a                                    ; $4ae9: $ea $62 $c1

jr_00c_4aec:
	rst FarCall                                          ; $4aec: $f7
	ld [hl], c                                       ; $4aed: $71
	inc e                                            ; $4aee: $1c
	nop                                              ; $4aef: $00
	ld a, [$c162]                                    ; $4af0: $fa $62 $c1
	and a                                            ; $4af3: $a7
	jr nz, jr_00c_4aec                               ; $4af4: $20 $f6

	ld a, $01                                        ; $4af6: $3e $01
	ld [$c162], a                                    ; $4af8: $ea $62 $c1
	ret                                              ; $4afb: $c9


TaskHandler_12a:
	ret                                              ; $4afc: $c9


TaskHandler_12b:
	ret                                              ; $4afd: $c9


TaskHandler_12c:
	rst FarCall                                          ; $4afe: $f7
	dec sp                                           ; $4aff: $3b
	ld d, c                                          ; $4b00: $51
	inc b                                            ; $4b01: $04
	ret                                              ; $4b02: $c9


TaskHandler_12d:
	rst FarCall                                          ; $4b03: $f7
	inc l                                            ; $4b04: $2c
	ld d, d                                          ; $4b05: $52
	inc b                                            ; $4b06: $04
	ld l, a                                          ; $4b07: $6f
	ret                                              ; $4b08: $c9


	ret                                              ; $4b09: $c9


TaskHandler_12e:
	ld a, [wTaskParam0_word0]                                    ; $4b0a: $fa $b0 $d0
	rst FarCall                                          ; $4b0d: $f7
	ld a, $52                                        ; $4b0e: $3e $52
	inc b                                            ; $4b10: $04
	ld l, a                                          ; $4b11: $6f
	ret                                              ; $4b12: $c9


TaskHandler_12f:
	rst FarCall                                          ; $4b13: $f7
	ld [hl+], a                                      ; $4b14: $22
	ld c, h                                          ; $4b15: $4c
	inc bc                                           ; $4b16: $03
	jp Func_1be4                                         ; $4b17: $c3 $e4 $1b


TaskHandler_130:
	rst FarCall                                          ; $4b1a: $f7
	db $fd                                           ; $4b1b: $fd
	ld d, b                                          ; $4b1c: $50
	inc b                                            ; $4b1d: $04
	ld l, a                                          ; $4b1e: $6f
	ret                                              ; $4b1f: $c9


TaskHandler_131:
	ret                                              ; $4b20: $c9


TaskHandler_132:
	ret                                              ; $4b21: $c9


TaskHandler_133:
	ret                                              ; $4b22: $c9


TaskHandler_134:
	ld a, [wTaskParam0_word0]                                    ; $4b23: $fa $b0 $d0
	rst FarCall                                          ; $4b26: $f7
	ld [hl], $65                                     ; $4b27: $36 $65
	inc b                                            ; $4b29: $04
	ld l, a                                          ; $4b2a: $6f
	ret                                              ; $4b2b: $c9


TaskHandler_1d3:
	rst FarCall                                          ; $4b2c: $f7
	jr nc, jr_00c_4b80                               ; $4b2d: $30 $51

	inc b                                            ; $4b2f: $04
	ld l, a                                          ; $4b30: $6f
	ret                                              ; $4b31: $c9


TaskHandler_1d2:
	ld hl, $a39d                                     ; $4b32: $21 $9d $a3
	ld a, [wTaskParam0_word0]                                    ; $4b35: $fa $b0 $d0
	srl a                                            ; $4b38: $cb $3f
	srl a                                            ; $4b3a: $cb $3f
	srl a                                            ; $4b3c: $cb $3f
	rst AddAOntoHL                                          ; $4b3e: $ef
	ld a, [wTaskParam0_word0]                                    ; $4b3f: $fa $b0 $d0
	and $07                                          ; $4b42: $e6 $07
	ld b, $01                                        ; $4b44: $06 $01

jr_00c_4b46:
	and a                                            ; $4b46: $a7
	jr z, jr_00c_4b4e                                ; $4b47: $28 $05

	sla b                                            ; $4b49: $cb $20
	dec a                                            ; $4b4b: $3d
	jr jr_00c_4b46                                   ; $4b4c: $18 $f8

jr_00c_4b4e:
	ld a, [hl]                                       ; $4b4e: $7e
	or b                                             ; $4b4f: $b0
	ld [hl], a                                       ; $4b50: $77
	ret                                              ; $4b51: $c9


TaskHandler_135:
	ld a, [wTaskParam0_word0]                                    ; $4b52: $fa $b0 $d0
	ld [$d235], a                                    ; $4b55: $ea $35 $d2
	rst FarCall                                          ; $4b58: $f7
	ld b, l                                          ; $4b59: $45
	ld d, d                                          ; $4b5a: $52
	inc b                                            ; $4b5b: $04
	ld l, a                                          ; $4b5c: $6f
	ret                                              ; $4b5d: $c9


TaskHandler_136:
	ld hl, $a39d                                     ; $4b5e: $21 $9d $a3
	ld a, [$d235]                                    ; $4b61: $fa $35 $d2
	srl a                                            ; $4b64: $cb $3f
	srl a                                            ; $4b66: $cb $3f
	srl a                                            ; $4b68: $cb $3f
	rst AddAOntoHL                                          ; $4b6a: $ef
	ld a, [$d235]                                    ; $4b6b: $fa $35 $d2
	and $07                                          ; $4b6e: $e6 $07
	ld b, $01                                        ; $4b70: $06 $01

jr_00c_4b72:
	jr z, jr_00c_4b79                                ; $4b72: $28 $05

	sla b                                            ; $4b74: $cb $20
	dec a                                            ; $4b76: $3d
	jr jr_00c_4b72                                   ; $4b77: $18 $f9

jr_00c_4b79:
	ld a, b                                          ; $4b79: $78
	or [hl]                                          ; $4b7a: $b6
	ret                                              ; $4b7b: $c9


TaskHandler_137:
	ld a, [wTaskParam0_word0]                                    ; $4b7c: $fa $b0 $d0
	ld b, a                                          ; $4b7f: $47

jr_00c_4b80:
	ld a, $08                                        ; $4b80: $3e $08
	rst FarCall                                          ; $4b82: $f7
	cp $71                                           ; $4b83: $fe $71
	inc b                                            ; $4b85: $04
	ret                                              ; $4b86: $c9


TaskHandler_138:
	ld a, [wTaskParam0_word0]                                    ; $4b87: $fa $b0 $d0
	rst FarCall                                          ; $4b8a: $f7
	rla                                              ; $4b8b: $17
	ld d, a                                          ; $4b8c: $57
	dec b                                            ; $4b8d: $05
	ld l, a                                          ; $4b8e: $6f
	ret                                              ; $4b8f: $c9


TaskHandler_139:
	ld a, [wTaskParam1_word0]                                    ; $4b90: $fa $b4 $d0
	ld b, a                                          ; $4b93: $47
	ld a, [wTaskParam0_word0]                                    ; $4b94: $fa $b0 $d0
	rst FarCall                                          ; $4b97: $f7
	dec d                                            ; $4b98: $15
	ld d, c                                          ; $4b99: $51
	inc b                                            ; $4b9a: $04
	ret                                              ; $4b9b: $c9


TaskHandler_13a:
	rst FarCall                                          ; $4b9c: $f7
	inc hl                                           ; $4b9d: $23
	halt                                             ; $4b9e: $76
	inc b                                            ; $4b9f: $04
	ret                                              ; $4ba0: $c9


TaskHandler_13b:
	rst FarCall                                          ; $4ba1: $f7
	AddrBank Func_04_7627
	ret                                              ; $4ba5: $c9


TaskHandler_13c:
	rst FarCall                                          ; $4ba6: $f7
	dec hl                                           ; $4ba7: $2b
	halt                                             ; $4ba8: $76
	inc b                                            ; $4ba9: $04
	ret                                              ; $4baa: $c9


TaskHandler_13d:
	rst FarCall                                          ; $4bab: $f7
	cpl                                              ; $4bac: $2f
	halt                                             ; $4bad: $76
	inc b                                            ; $4bae: $04
	ret                                              ; $4baf: $c9


TaskHandler_13f:
	ld a, [wTaskParam2_word0]                                    ; $4bb0: $fa $b8 $d0
	ld c, a                                          ; $4bb3: $4f
	ld a, [wTaskParam1_word0]                                    ; $4bb4: $fa $b4 $d0
	ld b, a                                          ; $4bb7: $47
	ld a, [wTaskParam0_word0]                                    ; $4bb8: $fa $b0 $d0
	rst FarCall                                          ; $4bbb: $f7
	and a                                            ; $4bbc: $a7
	ld c, a                                          ; $4bbd: $4f
	inc b                                            ; $4bbe: $04
	ret                                              ; $4bbf: $c9


TaskHandler_140:
	rst FarCall                                          ; $4bc0: $f7
	adc b                                            ; $4bc1: $88
	ld c, a                                          ; $4bc2: $4f
	inc b                                            ; $4bc3: $04
	ret                                              ; $4bc4: $c9


TaskHandler_141:
	ld a, [wTaskParam2_word0]                                    ; $4bc5: $fa $b8 $d0
	ld c, a                                          ; $4bc8: $4f
	ld a, [wTaskParam1_word0]                                    ; $4bc9: $fa $b4 $d0
	ld b, a                                          ; $4bcc: $47
	ld a, [wTaskParam0_word0]                                    ; $4bcd: $fa $b0 $d0
	rst FarCall                                          ; $4bd0: $f7
	ld [hl], d                                       ; $4bd1: $72
	ld d, b                                          ; $4bd2: $50
	inc b                                            ; $4bd3: $04
	ld l, a                                          ; $4bd4: $6f
	ret                                              ; $4bd5: $c9


TaskHandler_13e:
	ret                                              ; $4bd6: $c9


TaskHandler_142:
	ld a, [wTaskParam0_word0]                                    ; $4bd7: $fa $b0 $d0
	ld [$d035], a                                    ; $4bda: $ea $35 $d0
	ret                                              ; $4bdd: $c9


TaskHandler_143:
	ld a, [wTaskParam0_word0]                                    ; $4bde: $fa $b0 $d0
	rst FarCall                                          ; $4be1: $f7
	or l                                             ; $4be2: $b5
	ld d, b                                          ; $4be3: $50
	inc b                                            ; $4be4: $04
	ret                                              ; $4be5: $c9


TaskHandler_144:
	ld a, [wTaskParam0_word0]                                    ; $4be6: $fa $b0 $d0
	rst FarCall                                          ; $4be9: $f7
	pop bc                                           ; $4bea: $c1
	ld d, b                                          ; $4beb: $50
	inc b                                            ; $4bec: $04
	ret                                              ; $4bed: $c9


TaskHandler_145:
	ld a, [wTaskParam0_word0]                                    ; $4bee: $fa $b0 $d0
	rst FarCall                                          ; $4bf1: $f7
	call $0450                                       ; $4bf2: $cd $50 $04
	ret                                              ; $4bf5: $c9


TaskHandler_146:
	ret                                              ; $4bf6: $c9


TaskHandler_147:
	ld a, [wTaskParam0_word0]                                    ; $4bf7: $fa $b0 $d0
	ld [$d036], a                                    ; $4bfa: $ea $36 $d0
	ret                                              ; $4bfd: $c9


TaskHandler_148:
	ld a, [wTaskParam0_word0]                                    ; $4bfe: $fa $b0 $d0
	ld [$d038], a                                    ; $4c01: $ea $38 $d0
	ret                                              ; $4c04: $c9


TaskHandler_149:
	ld a, [wTaskParam0_word0]                                    ; $4c05: $fa $b0 $d0
	ld [$d03a], a                                    ; $4c08: $ea $3a $d0
	ret                                              ; $4c0b: $c9


TaskHandler_14a:
	ld a, [wTaskParam0_word0]                                    ; $4c0c: $fa $b0 $d0
	rst FarCall                                          ; $4c0f: $f7
	call nz, $045c                                   ; $4c10: $c4 $5c $04
	ret                                              ; $4c13: $c9


TaskHandler_14b:
	ret                                              ; $4c14: $c9


TaskHandler_14c:
	ret                                              ; $4c15: $c9


TaskHandler_14d:
	rst FarCall                                          ; $4c16: $f7
	or [hl]                                          ; $4c17: $b6
	ld e, c                                          ; $4c18: $59
	inc b                                            ; $4c19: $04
	ld h, b                                          ; $4c1a: $60
	ld l, c                                          ; $4c1b: $69
	ret                                              ; $4c1c: $c9


TaskHandler_14e:
	rst FarCall                                          ; $4c1d: $f7
	call $0459                                       ; $4c1e: $cd $59 $04
	ret                                              ; $4c21: $c9


TaskHandler_11d:
	call todo_Clear_ff8a                               ; $4c22: $cd $09 $41
	ld a, $05                                        ; $4c25: $3e $05
	ld [$d840], a                                    ; $4c27: $ea $40 $d8
	ld a, [wTaskParam0_word0]                                    ; $4c2a: $fa $b0 $d0
	ld [$d841], a                                    ; $4c2d: $ea $41 $d8
	ld a, [wTaskParam1_word0]                                    ; $4c30: $fa $b4 $d0
	call Call_00c_5519                               ; $4c33: $cd $19 $55
	xor a                                            ; $4c36: $af
	rst FarCall                                          ; $4c37: $f7
	ld l, d                                          ; $4c38: $6a
	ld [hl], b                                       ; $4c39: $70
	ld bc, $50fa                                     ; $4c3a: $01 $fa $50
	pop bc                                           ; $4c3d: $c1
	ld l, a                                          ; $4c3e: $6f
	ret                                              ; $4c3f: $c9


TaskHandler_150:
	rst FarCall                                          ; $4c40: $f7
	pop bc                                           ; $4c41: $c1
	ld a, [de]                                       ; $4c42: $1a
	nop                                              ; $4c43: $00
	call Call_00c_4100                               ; $4c44: $cd $00 $41
	rst FarCall                                          ; $4c47: $f7
	ld [hl], l                                       ; $4c48: $75
	ld d, h                                          ; $4c49: $54
	inc c                                            ; $4c4a: $0c
	ld d, $ff                                        ; $4c4b: $16 $ff
	rst FarCall                                          ; $4c4d: $f7
	sub l                                            ; $4c4e: $95
	ld d, h                                          ; $4c4f: $54
	inc c                                            ; $4c50: $0c
	ret                                              ; $4c51: $c9


TaskHandler_151:
	rst FarCall                                          ; $4c52: $f7
	pop bc                                           ; $4c53: $c1
	ld a, [de]                                       ; $4c54: $1a
	nop                                              ; $4c55: $00
	call Call_00c_4100                               ; $4c56: $cd $00 $41
	rst FarCall                                          ; $4c59: $f7
	ld [hl], l                                       ; $4c5a: $75
	ld d, h                                          ; $4c5b: $54
	inc c                                            ; $4c5c: $0c
	ld d, $00                                        ; $4c5d: $16 $00
	rst FarCall                                          ; $4c5f: $f7
	sub l                                            ; $4c60: $95
	ld d, h                                          ; $4c61: $54
	inc c                                            ; $4c62: $0c
	ret                                              ; $4c63: $c9


TaskHandler_152:
	rst FarCall                                          ; $4c64: $f7
	pop bc                                           ; $4c65: $c1
	ld a, [de]                                       ; $4c66: $1a
	nop                                              ; $4c67: $00
	call Call_00c_4100                               ; $4c68: $cd $00 $41
	ld d, $00                                        ; $4c6b: $16 $00
	rst FarCall                                          ; $4c6d: $f7
	jr c, @+$1c                                      ; $4c6e: $38 $1a

	nop                                              ; $4c70: $00
	ret                                              ; $4c71: $c9


TaskHandler_156:
	rst FarCall                                          ; $4c72: $f7
	pop bc                                           ; $4c73: $c1
	ld a, [de]                                       ; $4c74: $1a
	nop                                              ; $4c75: $00
	ld de, $4c8c                                     ; $4c76: $11 $8c $4c
	push de                                          ; $4c79: $d5
	call Call_00c_5546                               ; $4c7a: $cd $46 $55
	rst FarCall                                          ; $4c7d: $f7
	adc h                                            ; $4c7e: $8c
	jr c, jr_00c_4c81                                ; $4c7f: $38 $00

jr_00c_4c81:
	rst FarCall                                          ; $4c81: $f7
	ld [bc], a                                       ; $4c82: $02
	ld a, [de]                                       ; $4c83: $1a
	nop                                              ; $4c84: $00
	and a                                            ; $4c85: $a7
	jp z, Jump_00c_549e                              ; $4c86: $ca $9e $54

	jp Jump_00c_54b2                                 ; $4c89: $c3 $b2 $54


	jp todo_Clear_ff8a                                 ; $4c8c: $c3 $09 $41


TaskHandler_157:
	rst FarCall                                          ; $4c8f: $f7
	pop bc                                           ; $4c90: $c1
	ld a, [de]                                       ; $4c91: $1a
	nop                                              ; $4c92: $00
	call Call_00c_4100                               ; $4c93: $cd $00 $41
	jp Jump_00c_54c6                                 ; $4c96: $c3 $c6 $54


TaskHandler_158:
	rst FarCall                                          ; $4c99: $f7
	pop bc                                           ; $4c9a: $c1
	ld a, [de]                                       ; $4c9b: $1a
	nop                                              ; $4c9c: $00
	call Call_00c_4100                               ; $4c9d: $cd $00 $41
	jp Jump_00c_54da                                 ; $4ca0: $c3 $da $54


TaskHandler_159:
	rst FarCall                                          ; $4ca3: $f7
	add $1a                                          ; $4ca4: $c6 $1a
	nop                                              ; $4ca6: $00
	call Call_00c_4100                               ; $4ca7: $cd $00 $41
	ld a, [$c186]                                    ; $4caa: $fa $86 $c1
	cp $00                                           ; $4cad: $fe $00
	jr z, jr_00c_4cdc                                ; $4caf: $28 $2b

	call Call_00c_54c6                               ; $4cb1: $cd $c6 $54
	call Call_00c_5503                               ; $4cb4: $cd $03 $55
	ld a, [$c115]                                    ; $4cb7: $fa $15 $c1
	ld c, a                                          ; $4cba: $4f
	ld a, [$c116]                                    ; $4cbb: $fa $16 $c1
	ld b, a                                          ; $4cbe: $47
	ld de, $00d5                                     ; $4cbf: $11 $d5 $00
	call wCpBCtoDE                                       ; $4cc2: $cd $8c $ce
	ld d, $ff                                        ; $4cc5: $16 $ff
	call nc, $1a38                                   ; $4cc7: $d4 $38 $1a
	rst FarCall                                          ; $4cca: $f7
	ld [hl], h                                       ; $4ccb: $74
	add hl, sp                                       ; $4ccc: $39
	nop                                              ; $4ccd: $00
	call Call_00c_5546                               ; $4cce: $cd $46 $55
	rst FarCall                                          ; $4cd1: $f7
	adc h                                            ; $4cd2: $8c
	jr c, jr_00c_4cd5                                ; $4cd3: $38 $00

jr_00c_4cd5:
	rst FarCall                                          ; $4cd5: $f7
	sbc [hl]                                         ; $4cd6: $9e
	ld d, h                                          ; $4cd7: $54
	inc c                                            ; $4cd8: $0c
	jp todo_Clear_ff8a                                 ; $4cd9: $c3 $09 $41


jr_00c_4cdc:
	rst FarCall                                          ; $4cdc: $f7
	ret nz                                           ; $4cdd: $c0

	ld d, c                                          ; $4cde: $51
	inc bc                                           ; $4cdf: $03
	ld bc, $67f2                                     ; $4ce0: $01 $f2 $67
	ld de, $0000                                     ; $4ce3: $11 $00 $00
	call $19f5                                       ; $4ce6: $cd $f5 $19
	call Func_1aa6                                       ; $4ce9: $cd $a6 $1a
	call Call_00c_5503                               ; $4cec: $cd $03 $55
	rst FarCall                                          ; $4cef: $f7
	ld [hl], h                                       ; $4cf0: $74
	add hl, sp                                       ; $4cf1: $39
	nop                                              ; $4cf2: $00
	call Call_00c_5546                               ; $4cf3: $cd $46 $55
	rst FarCall                                          ; $4cf6: $f7
	adc h                                            ; $4cf7: $8c
	jr c, jr_00c_4cfa                                ; $4cf8: $38 $00

jr_00c_4cfa:
	ld bc, $680c                                     ; $4cfa: $01 $0c $68
	ld de, $0000                                     ; $4cfd: $11 $00 $00
	call $19f5                                       ; $4d00: $cd $f5 $19
	call Func_1aa6                                       ; $4d03: $cd $a6 $1a
	jp todo_Clear_ff8a                                 ; $4d06: $c3 $09 $41


TaskHandler_15a:
	rst FarCall                                          ; $4d09: $f7
	add $1a                                          ; $4d0a: $c6 $1a
	nop                                              ; $4d0c: $00
	call $388c                                       ; $4d0d: $cd $8c $38
	jp todo_Clear_ff8a                                 ; $4d10: $c3 $09 $41


Call_00c_4d13:
TaskHandler_15b:
	ld a, [$c14a]                                    ; $4d13: $fa $4a $c1
	and $04                                          ; $4d16: $e6 $04
	ret z                                            ; $4d18: $c8

	rst FarCall                                          ; $4d19: $f7
	jp c, $001a                                      ; $4d1a: $da $1a $00

	jp $3768                                         ; $4d1d: $c3 $68 $37


TaskHandler_15c:
	rst FarCall                                          ; $4d20: $f7
	push de                                          ; $4d21: $d5
	ld a, [de]                                       ; $4d22: $1a
	nop                                              ; $4d23: $00
	call $3734                                       ; $4d24: $cd $34 $37
	ret                                              ; $4d27: $c9


TaskHandler_15d:
	call Call_00c_4688                               ; $4d28: $cd $88 $46
	rst FarCall                                          ; $4d2b: $f7
	ret nc                                           ; $4d2c: $d0

	ld a, [de]                                       ; $4d2d: $1a
	nop                                              ; $4d2e: $00
	rst FarCall                                          ; $4d2f: $f7
	ld sp, hl                                        ; $4d30: $f9
	cpl                                              ; $4d31: $2f
	nop                                              ; $4d32: $00
	ld bc, $6806                                     ; $4d33: $01 $06 $68
	ld de, $6804                                     ; $4d36: $11 $04 $68
	rst FarCall                                          ; $4d39: $f7
	push af                                          ; $4d3a: $f5
	add hl, de                                       ; $4d3b: $19
	nop                                              ; $4d3c: $00
	jp Func_1aa6                                         ; $4d3d: $c3 $a6 $1a


TaskHandler_15e:
	rst FarCall                                          ; $4d40: $f7
	rr d                                             ; $4d41: $cb $1a
	nop                                              ; $4d43: $00
	ld bc, $67ea                                     ; $4d44: $01 $ea $67
	ld de, $67e8                                     ; $4d47: $11 $e8 $67
	rst FarCall                                          ; $4d4a: $f7
	push af                                          ; $4d4b: $f5
	add hl, de                                       ; $4d4c: $19
	nop                                              ; $4d4d: $00
	rst FarCall                                          ; $4d4e: $f7
	and [hl]                                         ; $4d4f: $a6
	ld a, [de]                                       ; $4d50: $1a
	nop                                              ; $4d51: $00
	rst FarCall                                          ; $4d52: $f7
	ld l, b                                          ; $4d53: $68
	scf                                              ; $4d54: $37
	nop                                              ; $4d55: $00
	ret                                              ; $4d56: $c9


TaskHandler_15f:
	rst FarCall                                          ; $4d57: $f7
	rr d                                             ; $4d58: $cb $1a
	nop                                              ; $4d5a: $00
	ld bc, $67b2                                     ; $4d5b: $01 $b2 $67
	ld de, $67b0                                     ; $4d5e: $11 $b0 $67
	rst FarCall                                          ; $4d61: $f7
	push af                                          ; $4d62: $f5
	add hl, de                                       ; $4d63: $19
	nop                                              ; $4d64: $00
	jp Func_1aa6                                         ; $4d65: $c3 $a6 $1a


Call_00c_4d68:
TaskHandler_153:
	rst FarCall                                          ; $4d68: $f7
	pop bc                                           ; $4d69: $c1
	ld a, [de]                                       ; $4d6a: $1a
	nop                                              ; $4d6b: $00
	rst FarCall                                          ; $4d6c: $f7
	rr d                                             ; $4d6d: $cb $1a
	nop                                              ; $4d6f: $00
	call Call_00c_4100                               ; $4d70: $cd $00 $41
	ld a, [$c186]                                    ; $4d73: $fa $86 $c1
	cp $00                                           ; $4d76: $fe $00
	jr z, jr_00c_4d81                                ; $4d78: $28 $07

	ld d, $ff                                        ; $4d7a: $16 $ff
	rst FarCall                                          ; $4d7c: $f7
	ld l, c                                          ; $4d7d: $69
	ld a, [de]                                       ; $4d7e: $1a
	nop                                              ; $4d7f: $00
	ret                                              ; $4d80: $c9


jr_00c_4d81:
	rst FarCall                                          ; $4d81: $f7
	ret nz                                           ; $4d82: $c0

	ld d, c                                          ; $4d83: $51
	inc bc                                           ; $4d84: $03
	ld d, $ff                                        ; $4d85: $16 $ff
	rst FarCall                                          ; $4d87: $f7
	ld a, l                                          ; $4d88: $7d
	ld a, [de]                                       ; $4d89: $1a
	nop                                              ; $4d8a: $00
	ret                                              ; $4d8b: $c9


TaskHandler_154:
	rst FarCall                                          ; $4d8c: $f7
	pop bc                                           ; $4d8d: $c1
	ld a, [de]                                       ; $4d8e: $1a
	nop                                              ; $4d8f: $00
	rst FarCall                                          ; $4d90: $f7
	rr d                                             ; $4d91: $cb $1a
	nop                                              ; $4d93: $00
	call Call_00c_4100                               ; $4d94: $cd $00 $41
	ld a, [$c186]                                    ; $4d97: $fa $86 $c1
	cp $00                                           ; $4d9a: $fe $00
	jr z, jr_00c_4da5                                ; $4d9c: $28 $07

	ld d, $00                                        ; $4d9e: $16 $00
	rst FarCall                                          ; $4da0: $f7
	ld l, c                                          ; $4da1: $69
	ld a, [de]                                       ; $4da2: $1a
	nop                                              ; $4da3: $00
	ret                                              ; $4da4: $c9


jr_00c_4da5:
	rst FarCall                                          ; $4da5: $f7
	ret nz                                           ; $4da6: $c0

	ld d, c                                          ; $4da7: $51
	inc bc                                           ; $4da8: $03
	ld d, $00                                        ; $4da9: $16 $00
	rst FarCall                                          ; $4dab: $f7
	ld a, l                                          ; $4dac: $7d
	ld a, [de]                                       ; $4dad: $1a
	nop                                              ; $4dae: $00
	ret                                              ; $4daf: $c9


TaskHandler_1b7:
	rst FarCall                                          ; $4db0: $f7
	pop bc                                           ; $4db1: $c1
	ld a, [de]                                       ; $4db2: $1a
	nop                                              ; $4db3: $00
	rst FarCall                                          ; $4db4: $f7
	rr d                                             ; $4db5: $cb $1a
	nop                                              ; $4db7: $00
	rst FarCall                                          ; $4db8: $f7
	or h                                             ; $4db9: $b4
	ld [hl], d                                       ; $4dba: $72
	inc bc                                           ; $4dbb: $03
	call todo_Clear_ff8a                               ; $4dbc: $cd $09 $41
	ld bc, $67f2                                     ; $4dbf: $01 $f2 $67
	ld de, $0000                                     ; $4dc2: $11 $00 $00
	call $19f5                                       ; $4dc5: $cd $f5 $19
	jp Func_1aa6                                         ; $4dc8: $c3 $a6 $1a


TaskHandler_1b8:
	rst FarCall                                          ; $4dcb: $f7
	pop bc                                           ; $4dcc: $c1
	ld a, [de]                                       ; $4dcd: $1a
	nop                                              ; $4dce: $00
	rst FarCall                                          ; $4dcf: $f7
	rr d                                             ; $4dd0: $cb $1a
	nop                                              ; $4dd2: $00
	call todo_Clear_ff8a                               ; $4dd3: $cd $09 $41
	ld bc, $67ba                                     ; $4dd6: $01 $ba $67
	ld de, $0000                                     ; $4dd9: $11 $00 $00
	call $19f5                                       ; $4ddc: $cd $f5 $19
	jp Func_1aa6                                         ; $4ddf: $c3 $a6 $1a


TaskHandler_155:
	ld a, [wTaskParam0_word0]                                    ; $4de2: $fa $b0 $d0
	rst FarCall                                          ; $4de5: $f7
	ld e, c                                          ; $4de6: $59
	ld l, [hl]                                       ; $4de7: $6e
	inc b                                            ; $4de8: $04
	ret                                              ; $4de9: $c9


TaskHandler_160:
	ld a, [wTaskParam0_word0]                                    ; $4dea: $fa $b0 $d0
	ld b, a                                          ; $4ded: $47
	rst FarCall                                          ; $4dee: $f7
	rra                                              ; $4def: $1f
	ld l, a                                          ; $4df0: $6f
	inc b                                            ; $4df1: $04
	ld l, a                                          ; $4df2: $6f
	ret                                              ; $4df3: $c9


TaskHandler_161:
	ld a, [wTaskParam0_word0]                                    ; $4df4: $fa $b0 $d0
	ld b, a                                          ; $4df7: $47
	rst FarCall                                          ; $4df8: $f7
	ld a, [hl]                                       ; $4df9: $7e
	ld l, a                                          ; $4dfa: $6f
	inc b                                            ; $4dfb: $04
	ld l, a                                          ; $4dfc: $6f
	ret                                              ; $4dfd: $c9


TaskHandler_162:
	rst FarCall                                          ; $4dfe: $f7
	cp $6f                                           ; $4dff: $fe $6f
	inc b                                            ; $4e01: $04
	ld l, a                                          ; $4e02: $6f
	ret                                              ; $4e03: $c9


TaskHandler_163:
	rst FarCall                                          ; $4e04: $f7
	inc bc                                           ; $4e05: $03
	ld [hl], b                                       ; $4e06: $70
	inc b                                            ; $4e07: $04
	ld l, a                                          ; $4e08: $6f
	ret                                              ; $4e09: $c9


TaskHandler_164:
	rst FarCall                                          ; $4e0a: $f7
	dec c                                            ; $4e0b: $0d
	ld [hl], b                                       ; $4e0c: $70
	inc b                                            ; $4e0d: $04
	ld l, a                                          ; $4e0e: $6f
	ret                                              ; $4e0f: $c9


TaskHandler_165:
	call todo_Clear_ff8a                               ; $4e10: $cd $09 $41
	rst FarCall                                          ; $4e13: $f7
	ld e, a                                          ; $4e14: $5f
	ld [hl], b                                       ; $4e15: $70
	ld bc, $b0fa                                     ; $4e16: $01 $fa $b0
	ret nc                                           ; $4e19: $d0

	inc a                                            ; $4e1a: $3c
	ld [$c171], a                                    ; $4e1b: $ea $71 $c1
	ld a, $00                                        ; $4e1e: $3e $00
	ld [$c154], a                                    ; $4e20: $ea $54 $c1
	ld a, $02                                        ; $4e23: $3e $02
	rst FarCall                                          ; $4e25: $f7
	ld l, d                                          ; $4e26: $6a
	ld [hl], b                                       ; $4e27: $70
	ld bc, $50fa                                     ; $4e28: $01 $fa $50
	pop bc                                           ; $4e2b: $c1
	ld l, a                                          ; $4e2c: $6f
	jr jr_00c_4e49                                   ; $4e2d: $18 $1a

TaskHandler_166:
	call todo_Clear_ff8a                               ; $4e2f: $cd $09 $41
	rst FarCall                                          ; $4e32: $f7
	ld e, a                                          ; $4e33: $5f
	ld [hl], b                                       ; $4e34: $70
	ld bc, $eaaf                                     ; $4e35: $01 $af $ea
	ld [hl], c                                       ; $4e38: $71
	pop bc                                           ; $4e39: $c1
	ld a, $00                                        ; $4e3a: $3e $00
	ld [$c154], a                                    ; $4e3c: $ea $54 $c1
	ld a, $02                                        ; $4e3f: $3e $02
	rst FarCall                                          ; $4e41: $f7
	ld l, d                                          ; $4e42: $6a
	ld [hl], b                                       ; $4e43: $70
	ld bc, $50fa                                     ; $4e44: $01 $fa $50
	pop bc                                           ; $4e47: $c1
	ld l, a                                          ; $4e48: $6f

jr_00c_4e49:
	push hl                                          ; $4e49: $e5
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $4e4a: $cd $ef $2d
	call $3768                                       ; $4e4d: $cd $68 $37
	call $3a71                                       ; $4e50: $cd $71 $3a
	ld a, [wInitialA]                                    ; $4e53: $fa $00 $c1
	cp $11                                           ; $4e56: $fe $11
	jr nz, jr_00c_4e61                               ; $4e58: $20 $07

	xor a                                            ; $4e5a: $af
	ld bc, $4217                                     ; $4e5b: $01 $17 $42
	call $1926                                       ; $4e5e: $cd $26 $19

jr_00c_4e61:
	call Call_00c_4100                               ; $4e61: $cd $00 $41
	pop hl                                           ; $4e64: $e1
	ret                                              ; $4e65: $c9


TaskHandler_1ce:
	ld a, [$a1c4]                                    ; $4e66: $fa $c4 $a1
	ld l, a                                          ; $4e69: $6f
	ret                                              ; $4e6a: $c9


TaskHandler_167:
	ld a, [wTaskParam0_word0]                                    ; $4e6b: $fa $b0 $d0
	ld b, a                                          ; $4e6e: $47
	rst FarCall                                          ; $4e6f: $f7
	ld a, $70                                        ; $4e70: $3e $70
	inc b                                            ; $4e72: $04
	ret                                              ; $4e73: $c9


TaskHandler_168:
	rst FarCall                                          ; $4e74: $f7
	sbc a                                            ; $4e75: $9f
	ld [hl], b                                       ; $4e76: $70
	inc b                                            ; $4e77: $04
	ld l, a                                          ; $4e78: $6f
	ret                                              ; $4e79: $c9


TaskHandler_169:
	ld a, [wTaskParam0_word0]                                    ; $4e7a: $fa $b0 $d0
	ld b, a                                          ; $4e7d: $47
	rst FarCall                                          ; $4e7e: $f7
	and e                                            ; $4e7f: $a3
	ld [hl], b                                       ; $4e80: $70
	inc b                                            ; $4e81: $04
	ld l, a                                          ; $4e82: $6f
	ret                                              ; $4e83: $c9


TaskHandler_16a:
	rst FarCall                                          ; $4e84: $f7
	xor d                                            ; $4e85: $aa
	ld [hl], b                                       ; $4e86: $70
	inc b                                            ; $4e87: $04
	ld l, a                                          ; $4e88: $6f
	ret                                              ; $4e89: $c9


TaskHandler_16b:
	call Call_00c_5465                               ; $4e8a: $cd $65 $54
	rst FarCall                                          ; $4e8d: $f7
	jp c, $0470                                      ; $4e8e: $da $70 $04

	ret                                              ; $4e91: $c9


TaskHandler_16c:
	ld a, [wTaskParam0_word0]                                    ; $4e92: $fa $b0 $d0
	rst FarCall                                          ; $4e95: $f7
	ld b, $71                                        ; $4e96: $06 $71
	inc b                                            ; $4e98: $04
	ld l, a                                          ; $4e99: $6f
	ret                                              ; $4e9a: $c9


TaskHandler_171:
	ld a, [wTaskParam0_word0]                                    ; $4e9b: $fa $b0 $d0
	rst FarCall                                          ; $4e9e: $f7
	ld [hl-], a                                      ; $4e9f: $32
	ld [hl], c                                       ; $4ea0: $71
	inc b                                            ; $4ea1: $04
	ld l, a                                          ; $4ea2: $6f
	ret                                              ; $4ea3: $c9


TaskHandler_1b5:
	ld a, [wTaskParam1_word0]                                    ; $4ea4: $fa $b4 $d0
	ld b, a                                          ; $4ea7: $47
	ld a, [wTaskParam0_word0]                                    ; $4ea8: $fa $b0 $d0
	rst FarCall                                          ; $4eab: $f7
	ld c, l                                          ; $4eac: $4d
	ld [hl], c                                       ; $4ead: $71
	inc b                                            ; $4eae: $04
	ret                                              ; $4eaf: $c9


TaskHandler_16d:
	ld a, [wTaskParam0_word0]                                    ; $4eb0: $fa $b0 $d0
	rst FarCall                                          ; $4eb3: $f7
	ld e, [hl]                                       ; $4eb4: $5e
	ld [hl], c                                       ; $4eb5: $71
	inc b                                            ; $4eb6: $04
	ret                                              ; $4eb7: $c9


TaskHandler_16e:
	ret                                              ; $4eb8: $c9


TaskHandler_16f:
	ret                                              ; $4eb9: $c9


TaskHandler_170:
	call todo_Clear_ff8a                               ; $4eba: $cd $09 $41
	rst FarCall                                          ; $4ebd: $f7
	ld e, a                                          ; $4ebe: $5f
	ld [hl], b                                       ; $4ebf: $70
	ld bc, $b0fa                                     ; $4ec0: $01 $fa $b0
	ret nc                                           ; $4ec3: $d0

	ld [$c162], a                                    ; $4ec4: $ea $62 $c1
	ld a, $03                                        ; $4ec7: $3e $03
	rst FarCall                                          ; $4ec9: $f7
	ld l, d                                          ; $4eca: $6a
	ld [hl], b                                       ; $4ecb: $70
	ld bc, $50fa                                     ; $4ecc: $01 $fa $50
	pop bc                                           ; $4ecf: $c1
	ld l, a                                          ; $4ed0: $6f
	ret                                              ; $4ed1: $c9


TaskHandler_177:
	rst FarCall                                          ; $4ed2: $f7
	halt                                             ; $4ed3: $76
	ld [hl], c                                       ; $4ed4: $71
	inc b                                            ; $4ed5: $04
	ret                                              ; $4ed6: $c9


TaskHandler_178:
	rst FarCall                                          ; $4ed7: $f7
	ld a, l                                          ; $4ed8: $7d
	ld [hl], c                                       ; $4ed9: $71
	inc b                                            ; $4eda: $04
	ret                                              ; $4edb: $c9


TaskHandler_172:
	ld a, [wTaskParam0_word0]                                    ; $4edc: $fa $b0 $d0
	ld b, a                                          ; $4edf: $47
	ld a, $02                                        ; $4ee0: $3e $02
	rst FarCall                                          ; $4ee2: $f7
	cp $71                                           ; $4ee3: $fe $71
	inc b                                            ; $4ee5: $04
	ret                                              ; $4ee6: $c9


TaskHandler_173:
	ld a, [wTaskParam0_word0]                                    ; $4ee7: $fa $b0 $d0
	ld b, a                                          ; $4eea: $47
	ld a, $04                                        ; $4eeb: $3e $04
	rst FarCall                                          ; $4eed: $f7
	cp $71                                           ; $4eee: $fe $71
	inc b                                            ; $4ef0: $04
	ret                                              ; $4ef1: $c9


TaskHandler_11f:
	call todo_Clear_ff8a                               ; $4ef2: $cd $09 $41
	ld a, $08                                        ; $4ef5: $3e $08
	ld [$d840], a                                    ; $4ef7: $ea $40 $d8
	ld a, $0d                                        ; $4efa: $3e $0d
	ld [$d841], a                                    ; $4efc: $ea $41 $d8
	ld a, $0f                                        ; $4eff: $3e $0f
	call Call_00c_5519                               ; $4f01: $cd $19 $55
	xor a                                            ; $4f04: $af
	rst FarCall                                          ; $4f05: $f7
	ld l, d                                          ; $4f06: $6a
	ld [hl], b                                       ; $4f07: $70
	ld bc, $50fa                                     ; $4f08: $01 $fa $50
	pop bc                                           ; $4f0b: $c1
	ld l, a                                          ; $4f0c: $6f
	ret                                              ; $4f0d: $c9


TaskHandler_120:
	call todo_Clear_ff8a                               ; $4f0e: $cd $09 $41
	ld a, $04                                        ; $4f11: $3e $04
	ld [$d840], a                                    ; $4f13: $ea $40 $d8
	ld a, $02                                        ; $4f16: $3e $02
	ld [$d841], a                                    ; $4f18: $ea $41 $d8
	ld a, $0f                                        ; $4f1b: $3e $0f
	call Call_00c_5519                               ; $4f1d: $cd $19 $55
	xor a                                            ; $4f20: $af
	rst FarCall                                          ; $4f21: $f7
	ld l, d                                          ; $4f22: $6a
	ld [hl], b                                       ; $4f23: $70
	ld bc, $50fa                                     ; $4f24: $01 $fa $50
	pop bc                                           ; $4f27: $c1
	ld l, a                                          ; $4f28: $6f
	ret                                              ; $4f29: $c9


TaskHandler_121:
	call todo_Clear_ff8a                               ; $4f2a: $cd $09 $41
	ld a, $09                                        ; $4f2d: $3e $09
	ld [$d840], a                                    ; $4f2f: $ea $40 $d8
	ld a, $0d                                        ; $4f32: $3e $0d
	ld [$d841], a                                    ; $4f34: $ea $41 $d8
	ld a, $0f                                        ; $4f37: $3e $0f
	call Call_00c_5519                               ; $4f39: $cd $19 $55
	xor a                                            ; $4f3c: $af
	rst FarCall                                          ; $4f3d: $f7
	ld l, d                                          ; $4f3e: $6a
	ld [hl], b                                       ; $4f3f: $70
	ld bc, $50fa                                     ; $4f40: $01 $fa $50
	pop bc                                           ; $4f43: $c1
	ld l, a                                          ; $4f44: $6f
	push hl                                          ; $4f45: $e5
	call $3a71                                       ; $4f46: $cd $71 $3a
	ld a, [wInitialA]                                    ; $4f49: $fa $00 $c1
	cp $11                                           ; $4f4c: $fe $11
	jr nz, jr_00c_4f57                               ; $4f4e: $20 $07

	xor a                                            ; $4f50: $af
	ld bc, $4217                                     ; $4f51: $01 $17 $42
	call $1926                                       ; $4f54: $cd $26 $19

jr_00c_4f57:
	call Call_00c_4100                               ; $4f57: $cd $00 $41
	pop hl                                           ; $4f5a: $e1
	ret                                              ; $4f5b: $c9


TaskHandler_174:
	ld a, [wTaskParam0_word0]                                    ; $4f5c: $fa $b0 $d0
	ld b, a                                          ; $4f5f: $47
	ld a, $05                                        ; $4f60: $3e $05
	rst FarCall                                          ; $4f62: $f7
	cp $71                                           ; $4f63: $fe $71
	inc b                                            ; $4f65: $04
	ret                                              ; $4f66: $c9


TaskHandler_175:
	call todo_Clear_ff8a                               ; $4f67: $cd $09 $41
	rst FarCall                                          ; $4f6a: $f7
	ld e, a                                          ; $4f6b: $5f
	ld [hl], b                                       ; $4f6c: $70
	ld bc, $063e                                     ; $4f6d: $01 $3e $06
	rst FarCall                                          ; $4f70: $f7
	ld l, d                                          ; $4f71: $6a
	ld [hl], b                                       ; $4f72: $70
	ld bc, $50fa                                     ; $4f73: $01 $fa $50
	pop bc                                           ; $4f76: $c1
	ld l, a                                          ; $4f77: $6f
	ret                                              ; $4f78: $c9


TaskHandler_176:
	call todo_Clear_ff8a                               ; $4f79: $cd $09 $41
	rst FarCall                                          ; $4f7c: $f7
	ld e, a                                          ; $4f7d: $5f
	ld [hl], b                                       ; $4f7e: $70
	ld bc, $073e                                     ; $4f7f: $01 $3e $07
	rst FarCall                                          ; $4f82: $f7
	ld l, d                                          ; $4f83: $6a
	ld [hl], b                                       ; $4f84: $70
	ld bc, $50fa                                     ; $4f85: $01 $fa $50
	pop bc                                           ; $4f88: $c1
	ld l, a                                          ; $4f89: $6f
	ret                                              ; $4f8a: $c9


TaskHandler_183:
	ld a, [$a397]                                    ; $4f8b: $fa $97 $a3
	inc a                                            ; $4f8e: $3c
	ld [$a397], a                                    ; $4f8f: $ea $97 $a3
	ret                                              ; $4f92: $c9


TaskHandler_184:
	ld a, [$a398]                                    ; $4f93: $fa $98 $a3
	inc a                                            ; $4f96: $3c
	ld [$a398], a                                    ; $4f97: $ea $98 $a3
	ret                                              ; $4f9a: $c9


TaskHandler_185:
	ld a, [$a399]                                    ; $4f9b: $fa $99 $a3
	cp $05                                           ; $4f9e: $fe $05
	ret z                                            ; $4fa0: $c8

	inc a                                            ; $4fa1: $3c
	ld [$a399], a                                    ; $4fa2: $ea $99 $a3
	ret                                              ; $4fa5: $c9


TaskHandler_186:
	ld a, [$a39a]                                    ; $4fa6: $fa $9a $a3
	cp $08                                           ; $4fa9: $fe $08
	ret z                                            ; $4fab: $c8

	inc a                                            ; $4fac: $3c
	ld [$a39a], a                                    ; $4fad: $ea $9a $a3
	ret                                              ; $4fb0: $c9


TaskHandler_187:
	xor a                                            ; $4fb1: $af
	jp Jump_000_1af7                                         ; $4fb2: $c3 $f7 $1a


TaskHandler_1b0_todoSets_d80c_to_d80e:
	ld a, [wTaskParam0_word0]                                    ; $4fb5: $fa $b0 $d0
	ld [$d80c], a                                    ; $4fb8: $ea $0c $d8
	ld a, [wTaskParam1_word0]                                    ; $4fbb: $fa $b4 $d0
	ld [$d80d], a                                    ; $4fbe: $ea $0d $d8
	ld a, [wTaskParam2_word0]                                    ; $4fc1: $fa $b8 $d0
	ld [$d80e], a                                    ; $4fc4: $ea $0e $d8
	ret                                              ; $4fc7: $c9


TaskHandler_1b1:
	ld a, [wTaskParam0_word0]                                    ; $4fc8: $fa $b0 $d0
	ld [wUseRulesForTextLine1stOrLastChar], a                                    ; $4fcb: $ea $0f $d8
	ret                                              ; $4fce: $c9


TaskHandler_1bd:
	ld a, [wTaskParam0_word0]                                    ; $4fcf: $fa $b0 $d0
	ld [$bde2], a                                    ; $4fd2: $ea $e2 $bd
	ret                                              ; $4fd5: $c9


TaskHandler_1be:
	ld a, [wTaskParam0_word0]                                    ; $4fd6: $fa $b0 $d0
	ld [$bde5], a                                    ; $4fd9: $ea $e5 $bd
	ret                                              ; $4fdc: $c9


TaskHandler_1bf:
	ld a, [wTaskParam0_word0]                                    ; $4fdd: $fa $b0 $d0
	ld [$bde6], a                                    ; $4fe0: $ea $e6 $bd
	ret                                              ; $4fe3: $c9


TaskHandler_1c0:
	ld a, [wTaskParam0_word0]                                    ; $4fe4: $fa $b0 $d0
	ld [$a1c5], a                                    ; $4fe7: $ea $c5 $a1
	ret                                              ; $4fea: $c9


TaskHandler_1c1:
	ld a, [$a1c5]                                    ; $4feb: $fa $c5 $a1
	ld [$bde5], a                                    ; $4fee: $ea $e5 $bd
	ret                                              ; $4ff1: $c9


TaskHandler_1c2:
	ld a, [wTaskParam0_word0]                                    ; $4ff2: $fa $b0 $d0
	ld [$a1c6], a                                    ; $4ff5: $ea $c6 $a1
	ret                                              ; $4ff8: $c9


TaskHandler_1c3:
	ld a, [$a1c6]                                    ; $4ff9: $fa $c6 $a1
	ld [$bde5], a                                    ; $4ffc: $ea $e5 $bd
	ret                                              ; $4fff: $c9


TaskHandler_17a:
	ld a, $01                                        ; $5000: $3e $01
	ld [$d230], a                                    ; $5002: $ea $30 $d2
	ld a, $04                                        ; $5005: $3e $04
	ld [$d231], a                                    ; $5007: $ea $31 $d2
	ret                                              ; $500a: $c9


TaskHandler_17b:
	xor a                                            ; $500b: $af
	ld [$d230], a                                    ; $500c: $ea $30 $d2
	ld [$d231], a                                    ; $500f: $ea $31 $d2
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $5012: $cd $ef $2d
	ret                                              ; $5015: $c9


TaskHandler_17c:
	ld a, $01                                        ; $5016: $3e $01
	rst FarCall                                          ; $5018: $f7
	ld b, h                                          ; $5019: $44
	halt                                             ; $501a: $76
	ld bc, $c96f                                     ; $501b: $01 $6f $c9
TaskHandler_17d:
	ld a, [$d32f]                                    ; $501e: $fa $2f $d3
	ld l, a                                          ; $5021: $6f
	ret                                              ; $5022: $c9


TaskHandler_17e:
	ld a, [wTaskParam0_word0]                                    ; $5023: $fa $b0 $d0
	ld [$c13b], a                                    ; $5026: $ea $3b $c1
	ld a, $00                                        ; $5029: $3e $00
	rst FarCall                                          ; $502b: $f7
	ld b, h                                          ; $502c: $44
	halt                                             ; $502d: $76
	ld bc, $6f3d                                     ; $502e: $01 $3d $6f
	ret                                              ; $5031: $c9


TaskHandler_17f:
	ld a, [wTaskParam0_word0]                                    ; $5032: $fa $b0 $d0
	ld [$c13b], a                                    ; $5035: $ea $3b $c1
	ld a, $04                                        ; $5038: $3e $04
	rst FarCall                                          ; $503a: $f7
	ld b, h                                          ; $503b: $44
	halt                                             ; $503c: $76
	ld bc, $002e                                     ; $503d: $01 $2e $00
	ret                                              ; $5040: $c9


TaskHandler_181:
	ld a, $02                                        ; $5041: $3e $02
	rst FarCall                                          ; $5043: $f7
	ld b, h                                          ; $5044: $44
	halt                                             ; $5045: $76
	ld bc, $6f3d                                     ; $5046: $01 $3d $6f
	ret                                              ; $5049: $c9


TaskHandler_180:
	ld a, $03                                        ; $504a: $3e $03
	rst FarCall                                          ; $504c: $f7
	ld b, h                                          ; $504d: $44
	halt                                             ; $504e: $76
	ld bc, $c96f                                     ; $504f: $01 $6f $c9
TaskHandler_182:
	ld a, [wTaskParam0_word0]                                    ; $5052: $fa $b0 $d0
	rst FarCall                                          ; $5055: $f7
	db $d3                                           ; $5056: $d3
	ld [hl], e                                       ; $5057: $73
	ld bc, $c96f                                     ; $5058: $01 $6f $c9
TaskHandler_189:
	rst FarCall                                          ; $505b: $f7
	sbc d                                            ; $505c: $9a
	ld e, [hl]                                       ; $505d: $5e
	inc b                                            ; $505e: $04
	ld l, a                                          ; $505f: $6f
	ret                                              ; $5060: $c9


TaskHandler_188:
	rst FarCall                                          ; $5061: $f7
	and d                                            ; $5062: $a2
	ld e, [hl]                                       ; $5063: $5e
	inc b                                            ; $5064: $04
	ld l, a                                          ; $5065: $6f
	ret                                              ; $5066: $c9


TaskHandler_18a:
	ld a, [wTaskParam0_word0]                                    ; $5067: $fa $b0 $d0
	ld [$c16a], a                                    ; $506a: $ea $6a $c1
	rst FarCall                                          ; $506d: $f7
	AddrBank Func_3ba8
	ret                                              ; $5071: $c9


TaskHandler_18b:
	ld a, [wTaskParam0_word0]                                    ; $5072: $fa $b0 $d0
	ld [$c14d], a                                    ; $5075: $ea $4d $c1
	rst FarCall                                          ; $5078: $f7
	ld [hl-], a                                      ; $5079: $32
	inc [hl]                                         ; $507a: $34
	nop                                              ; $507b: $00
	ret                                              ; $507c: $c9


TaskHandler_18c:
	ld a, [wTaskParam0_word0]                                    ; $507d: $fa $b0 $d0
	ld [$c14e], a                                    ; $5080: $ea $4e $c1
	rst FarCall                                          ; $5083: $f7
	ld l, l                                          ; $5084: $6d
	inc [hl]                                         ; $5085: $34
	nop                                              ; $5086: $00
	ret                                              ; $5087: $c9


TaskHandler_18d:
	xor a                                            ; $5088: $af
	ld [$c14d], a                                    ; $5089: $ea $4d $c1
	ret                                              ; $508c: $c9


TaskHandler_18e:
	xor a                                            ; $508d: $af
	ld [$c14e], a                                    ; $508e: $ea $4e $c1
	ret                                              ; $5091: $c9


TaskHandler_1ab:
	ld a, $01                                        ; $5092: $3e $01
	ld [$c1f0], a                                    ; $5094: $ea $f0 $c1
	ret                                              ; $5097: $c9


TaskHandler_1c5:
	rst FarCall                                          ; $5098: $f7
	ld b, [hl]                                       ; $5099: $46
	ld h, [hl]                                       ; $509a: $66
	dec b                                            ; $509b: $05
	ld l, a                                          ; $509c: $6f
	ret                                              ; $509d: $c9


TaskHandler_1ca:
	ld b, $01                                        ; $509e: $06 $01
	ld a, [wTaskParam0_word0]                                    ; $50a0: $fa $b0 $d0
	and a                                            ; $50a3: $a7
	jr z, jr_00c_50a8                                ; $50a4: $28 $02

	ld b, $03                                        ; $50a6: $06 $03

jr_00c_50a8:
	ld a, b                                          ; $50a8: $78
	ld [$a39b], a                                    ; $50a9: $ea $9b $a3
	ld a, [wTaskParam1_word0]                                    ; $50ac: $fa $b4 $d0
	ld [$a39c], a                                    ; $50af: $ea $9c $a3
	ret                                              ; $50b2: $c9


TaskHandler_1c9:
	rst FarCall                                          ; $50b3: $f7
	sub e                                            ; $50b4: $93
	ld h, [hl]                                       ; $50b5: $66
	inc b                                            ; $50b6: $04
	ld a, [wTaskParam0_word0]                                    ; $50b7: $fa $b0 $d0
	sub $04                                          ; $50ba: $d6 $04
	ld b, $09                                        ; $50bc: $06 $09
	rst FarCall                                          ; $50be: $f7
	ld h, [hl]                                       ; $50bf: $66
	ld h, a                                          ; $50c0: $67
	inc b                                            ; $50c1: $04
	ret                                              ; $50c2: $c9


TaskHandler_1c4_todoClearsBytes:
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $50c3: $cd $ef $2d
	ret                                              ; $50c6: $c9


TaskHandler_14f:
	xor a                                            ; $50c7: $af
	ld [$c163], a                                    ; $50c8: $ea $63 $c1
	ld [$c164], a                                    ; $50cb: $ea $64 $c1
	ld [$c16a], a                                    ; $50ce: $ea $6a $c1
	call Call_00c_4d68                               ; $50d1: $cd $68 $4d
	call Call_00c_4d13                               ; $50d4: $cd $13 $4d
	ld bc, $012a                                     ; $50d7: $01 $2a $01
	rst FarCall                                          ; $50da: $f7
	ld [de], a                                       ; $50db: $12
	ld a, [hl-]                                      ; $50dc: $3a
	nop                                              ; $50dd: $00
	rst FarCall                                          ; $50de: $f7
	ld a, a                                          ; $50df: $7f
	add hl, sp                                       ; $50e0: $39
	nop                                              ; $50e1: $00
	ld a, [wTaskParam0_word0]                                    ; $50e2: $fa $b0 $d0
	ld [$c172], a                                    ; $50e5: $ea $72 $c1
	and a                                            ; $50e8: $a7
	jr z, jr_00c_510c                                ; $50e9: $28 $21

	cp $01                                           ; $50eb: $fe $01
	jr nz, jr_00c_50fa                               ; $50ed: $20 $0b

	ld a, $04                                        ; $50ef: $3e $04
	ld [$c16a], a                                    ; $50f1: $ea $6a $c1
	rst FarCall                                          ; $50f4: $f7
	xor b                                            ; $50f5: $a8
	dec sp                                           ; $50f6: $3b
	nop                                              ; $50f7: $00
	jr jr_00c_510c                                   ; $50f8: $18 $12

jr_00c_50fa:
	ld a, $07                                        ; $50fa: $3e $07
	ld [$c16a], a                                    ; $50fc: $ea $6a $c1
	rst FarCall                                          ; $50ff: $f7
	xor b                                            ; $5100: $a8
	dec sp                                           ; $5101: $3b
	nop                                              ; $5102: $00
	ld a, $0a                                        ; $5103: $3e $0a
	ld [$c16a], a                                    ; $5105: $ea $6a $c1
	rst FarCall                                          ; $5108: $f7
	xor b                                            ; $5109: $a8
	dec sp                                           ; $510a: $3b
	nop                                              ; $510b: $00

jr_00c_510c:
	call Call_00c_5546                               ; $510c: $cd $46 $55
	rst FarCall                                          ; $510f: $f7
	adc h                                            ; $5110: $8c
	jr c, jr_00c_5113                                ; $5111: $38 $00

jr_00c_5113:
	ld a, [$c14a]                                    ; $5113: $fa $4a $c1
	and $40                                          ; $5116: $e6 $40
	ret z                                            ; $5118: $c8

	rst FarCall                                          ; $5119: $f7
	add $1a                                          ; $511a: $c6 $1a
	nop                                              ; $511c: $00
	ld bc, $6808                                     ; $511d: $01 $08 $68
	ld de, $0000                                     ; $5120: $11 $00 $00
	call $19f5                                       ; $5123: $cd $f5 $19
	jp Func_1aa6                                         ; $5126: $c3 $a6 $1a


TaskHandler_0c9:
	rst FarCall                                          ; $5129: $f7
	add $1a                                          ; $512a: $c6 $1a
	nop                                              ; $512c: $00
	ld a, $00                                        ; $512d: $3e $00
	ld [wGameState], a                                    ; $512f: $ea $42 $c1
	call Func_3a7d                                       ; $5132: $cd $7d $3a
	ld l, a                                          ; $5135: $6f
	ret                                              ; $5136: $c9


TaskHandler_1af:
	xor a                                            ; $5137: $af
	ld [$d036], a                                    ; $5138: $ea $36 $d0
	ld [$d22d], a                                    ; $513b: $ea $2d $d2
	ld [$d22f], a                                    ; $513e: $ea $2f $d2
	ld a, $01                                        ; $5141: $3e $01
	ld [wGameState], a                                    ; $5143: $ea $42 $c1
	call Func_3a7d                                       ; $5146: $cd $7d $3a
	cp $16                                           ; $5149: $fe $16
	jr nz, jr_00c_5151                               ; $514b: $20 $04

	ld a, $02                                        ; $514d: $3e $02
	jr jr_00c_5197                                   ; $514f: $18 $46

jr_00c_5151:
	ld [$d035], a                                    ; $5151: $ea $35 $d0
	ld b, a                                          ; $5154: $47
	ld a, [wTaskParam0_word0]                                    ; $5155: $fa $b0 $d0
	ld c, a                                          ; $5158: $4f
	push bc                                          ; $5159: $c5
	rst FarCall                                          ; $515a: $f7
	adc a                                            ; $515b: $8f
	ld c, [hl]                                       ; $515c: $4e
	inc b                                            ; $515d: $04
	pop bc                                           ; $515e: $c1
	and a                                            ; $515f: $a7
	jr nz, jr_00c_5197                               ; $5160: $20 $35

	push af                                          ; $5162: $f5
	xor a                                            ; $5163: $af
	ld [$d08d], a                                    ; $5164: $ea $8d $d0
	ld a, b                                          ; $5167: $78
	ld [$d08c], a                                    ; $5168: $ea $8c $d0
	ld a, c                                          ; $516b: $79
	ld [$d08b], a                                    ; $516c: $ea $8b $d0
	ld a, [$d22c]                                    ; $516f: $fa $2c $d2
	ld [$d082], a                                    ; $5172: $ea $82 $d0
	cp $00                                           ; $5175: $fe $00
	jr nz, jr_00c_5184                               ; $5177: $20 $0b

	ld a, [$a226]                                    ; $5179: $fa $26 $a2
	cp $0b                                           ; $517c: $fe $0b
	jr nz, jr_00c_5184                               ; $517e: $20 $04

	ld a, $01                                        ; $5180: $3e $01
	jr jr_00c_5185                                   ; $5182: $18 $01

jr_00c_5184:
	xor a                                            ; $5184: $af

jr_00c_5185:
	ld hl, $a224                                     ; $5185: $21 $24 $a2
	add [hl]                                         ; $5188: $86
	ld [$d081], a                                    ; $5189: $ea $81 $d0
	ld a, [$d22e]                                    ; $518c: $fa $2e $d2
	ld [$d083], a                                    ; $518f: $ea $83 $d0
	rst FarCall                                          ; $5192: $f7
	and a                                            ; $5193: $a7
	ld c, c                                          ; $5194: $49
	dec b                                            ; $5195: $05
	pop af                                           ; $5196: $f1

jr_00c_5197:
	ld l, a                                          ; $5197: $6f
	ret                                              ; $5198: $c9


	ld a, [$d22c]                                    ; $5199: $fa $2c $d2
	ld l, a                                          ; $519c: $6f
	ret                                              ; $519d: $c9


	ld a, [$d22e]                                    ; $519e: $fa $2e $d2
	ld l, a                                          ; $51a1: $6f
	ret                                              ; $51a2: $c9


TaskHandler_1cd:
	ld a, [$d22e]                                    ; $51a3: $fa $2e $d2
	ld [$d083], a                                    ; $51a6: $ea $83 $d0
	ld a, [$d22c]                                    ; $51a9: $fa $2c $d2
	ld [$d082], a                                    ; $51ac: $ea $82 $d0
	cp $00                                           ; $51af: $fe $00
	jr nz, jr_00c_51c3                               ; $51b1: $20 $10

	ld a, [$a226]                                    ; $51b3: $fa $26 $a2
	cp $0b                                           ; $51b6: $fe $0b
	jr nz, jr_00c_51c3                               ; $51b8: $20 $09

	ld a, [$a224]                                    ; $51ba: $fa $24 $a2
	inc a                                            ; $51bd: $3c
	ld [$d081], a                                    ; $51be: $ea $81 $d0
	jr jr_00c_51c9                                   ; $51c1: $18 $06

jr_00c_51c3:
	ld a, [$a224]                                    ; $51c3: $fa $24 $a2
	ld [$d081], a                                    ; $51c6: $ea $81 $d0

jr_00c_51c9:
	rst FarCall                                          ; $51c9: $f7
	rst SubAFromHL                                          ; $51ca: $d7
	ld b, a                                          ; $51cb: $47
	dec b                                            ; $51cc: $05
	ld a, [$d084]                                    ; $51cd: $fa $84 $d0
	and a                                            ; $51d0: $a7
	jr nz, jr_00c_51e1                               ; $51d1: $20 $0e

	rst FarCall                                          ; $51d3: $f7
	sbc d                                            ; $51d4: $9a
	ld c, c                                          ; $51d5: $49
	dec b                                            ; $51d6: $05
	ld a, [$d085]                                    ; $51d7: $fa $85 $d0
	cp $03                                           ; $51da: $fe $03
	jr nz, jr_00c_51e1                               ; $51dc: $20 $03

	ld l, $00                                        ; $51de: $2e $00
	ret                                              ; $51e0: $c9


jr_00c_51e1:
	ld l, $01                                        ; $51e1: $2e $01
	ret                                              ; $51e3: $c9


TaskHandler_0ce:
	ld a, $02                                        ; $51e4: $3e $02
	ld [wGameState], a                                    ; $51e6: $ea $42 $c1
	call Func_3a7d                                       ; $51e9: $cd $7d $3a
	ret                                              ; $51ec: $c9


TaskHandler_0cd:
	ld a, [wTaskParam0_word0]                                    ; $51ed: $fa $b0 $d0
	ld [wMenuOptionSelected], a                                    ; $51f0: $ea $5f $c1
	ld a, $04                                        ; $51f3: $3e $04
	ld [wGameState], a                                    ; $51f5: $ea $42 $c1
	call Func_3a7d                                       ; $51f8: $cd $7d $3a
	ret                                              ; $51fb: $c9


TaskHandler_1b4:
	jp $3e33                                         ; $51fc: $c3 $33 $3e


TaskHandler_1b6:
	ld a, [$d0af]                                    ; $51ff: $fa $af $d0
	ld l, a                                          ; $5202: $6f
	ret                                              ; $5203: $c9


TaskHandler_1b9:
	rst FarCall                                          ; $5204: $f7
	dec l                                            ; $5205: $2d
	ld [hl], l                                       ; $5206: $75
	inc b                                            ; $5207: $04
	ret                                              ; $5208: $c9


TaskHandler_1bb:
	ld a, [wTaskParam0_word0]                                    ; $5209: $fa $b0 $d0
	sla a                                            ; $520c: $cb $27
	sla a                                            ; $520e: $cb $27
	sla a                                            ; $5210: $cb $27
	ld [$c14b], a                                    ; $5212: $ea $4b $c1
	ret                                              ; $5215: $c9


TaskHandler_1bc:
	ld a, [wTaskParam0_word0]                                    ; $5216: $fa $b0 $d0
	sla a                                            ; $5219: $cb $27
	sla a                                            ; $521b: $cb $27
	sla a                                            ; $521d: $cb $27
	cpl                                              ; $521f: $2f
	inc a                                            ; $5220: $3c
	ld [$c14b], a                                    ; $5221: $ea $4b $c1
	ret                                              ; $5224: $c9


TaskHandler_1a2:
	ld a, $06                                        ; $5225: $3e $06
	ld [wGameState], a                                    ; $5227: $ea $42 $c1
	call Func_3a7d                                       ; $522a: $cd $7d $3a
	ld l, a                                          ; $522d: $6f
	ret                                              ; $522e: $c9


TaskHandler_1a3:
	rst FarCall                                          ; $522f: $f7
	add $1a                                          ; $5230: $c6 $1a
	nop                                              ; $5232: $00
	ld a, $05                                        ; $5233: $3e $05
	ld [wGameState], a                                    ; $5235: $ea $42 $c1
	call Func_3a7d                                       ; $5238: $cd $7d $3a
	push af                                          ; $523b: $f5
	ld d, $ff                                        ; $523c: $16 $ff
	call $1a38                                       ; $523e: $cd $38 $1a
	pop af                                           ; $5241: $f1
	ld l, a                                          ; $5242: $6f
	ret                                              ; $5243: $c9


TaskHandler_1a4:
	ld a, $07                                        ; $5244: $3e $07
	ld [wGameState], a                                    ; $5246: $ea $42 $c1
	ld a, [wTaskParam0_word0]                                    ; $5249: $fa $b0 $d0
	ld [$d203], a                                    ; $524c: $ea $03 $d2
	call Func_3a7d                                       ; $524f: $cd $7d $3a
	ld l, a                                          ; $5252: $6f
	ret                                              ; $5253: $c9


TaskHandler_1a5_EnterNamesAndDates:
	call _EnterNamesAndDates                                       ; $5254: $cd $d4 $2a
	ret                                              ; $5257: $c9


TaskHandler_1a6:
	ld a, [wTaskParam0_word0]                                    ; $5258: $fa $b0 $d0
	ld b, $00                                        ; $525b: $06 $00
	rst FarCall                                          ; $525d: $f7
	call z, $0562                                    ; $525e: $cc $62 $05
	ld l, a                                          ; $5261: $6f
	ret                                              ; $5262: $c9


TaskHandler_1a7:
	ld a, [wTaskParam1_word0]                                    ; $5263: $fa $b4 $d0
	and a                                            ; $5266: $a7
	jr nz, jr_00c_5279                               ; $5267: $20 $10

	ld a, [wTaskParam0_word0]                                    ; $5269: $fa $b0 $d0
	ld b, a                                          ; $526c: $47
	dec a                                            ; $526d: $3d
	rst FarCall                                          ; $526e: $f7
	ld a, c                                          ; $526f: $79
	ld h, d                                          ; $5270: $62
	dec b                                            ; $5271: $05
	cp $01                                           ; $5272: $fe $01
	jr nz, jr_00c_5279                               ; $5274: $20 $03

	ld l, $02                                        ; $5276: $2e $02
	ret                                              ; $5278: $c9


jr_00c_5279:
	ld a, [wTaskParam0_word0]                                    ; $5279: $fa $b0 $d0
	ld b, a                                          ; $527c: $47
	xor a                                            ; $527d: $af
	push bc                                          ; $527e: $c5
	rst FarCall                                          ; $527f: $f7
	call z, $0562                                    ; $5280: $cc $62 $05
	pop bc                                           ; $5283: $c1
	push af                                          ; $5284: $f5
	and a                                            ; $5285: $a7
	jr nz, jr_00c_52a0                               ; $5286: $20 $18

	dec b                                            ; $5288: $05
	ld a, b                                          ; $5289: $78
	ld hl, $d204                                     ; $528a: $21 $04 $d2
	rst AddAOntoHL                                          ; $528d: $ef
	ld [hl], $01                                     ; $528e: $36 $01
	ld a, b                                          ; $5290: $78
	ld [wCurrMenuOption], a                                    ; $5291: $ea $01 $d2
	rst FarCall                                          ; $5294: $f7
	ld d, d                                          ; $5295: $52
	ld h, d                                          ; $5296: $62
	dec b                                            ; $5297: $05
	rst FarCall                                          ; $5298: $f7
	ld h, l                                          ; $5299: $65
	ld e, l                                          ; $529a: $5d
	dec b                                            ; $529b: $05
	rst FarCall                                          ; $529c: $f7
	add $4e                                          ; $529d: $c6 $4e
	dec b                                            ; $529f: $05

jr_00c_52a0:
	pop af                                           ; $52a0: $f1
	ld l, a                                          ; $52a1: $6f
	ret                                              ; $52a2: $c9


TaskHandler_1a8:
	ld a, [wTaskParam2_word0]                                    ; $52a3: $fa $b8 $d0
	and a                                            ; $52a6: $a7
	jr nz, jr_00c_52b8                               ; $52a7: $20 $0f

	ld a, [wTaskParam1_word0]                                    ; $52a9: $fa $b4 $d0
	dec a                                            ; $52ac: $3d
	rst FarCall                                          ; $52ad: $f7
	ld a, c                                          ; $52ae: $79
	ld h, d                                          ; $52af: $62
	dec b                                            ; $52b0: $05
	cp $01                                           ; $52b1: $fe $01
	jr nz, jr_00c_52b8                               ; $52b3: $20 $03

	ld l, $02                                        ; $52b5: $2e $02
	ret                                              ; $52b7: $c9


jr_00c_52b8:
	ld a, [wTaskParam1_word0]                                    ; $52b8: $fa $b4 $d0
	ld b, a                                          ; $52bb: $47
	ld a, [wTaskParam0_word0]                                    ; $52bc: $fa $b0 $d0
	rst FarCall                                          ; $52bf: $f7
	call z, $0562                                    ; $52c0: $cc $62 $05
	ld l, a                                          ; $52c3: $6f
	ret                                              ; $52c4: $c9


TaskHandler_1a9:
	ld a, [wTaskParam0_word0]                                    ; $52c5: $fa $b0 $d0
	rst FarCall                                          ; $52c8: $f7
	AddrBank ClearSaveFileAaddr
	ret                                              ; $52cc: $c9


TaskHandler_1aa:
	rst FarCall                                          ; $52cd: $f7
	and [hl]                                         ; $52ce: $a6
	ld h, d                                          ; $52cf: $62
	dec b                                            ; $52d0: $05
	ret                                              ; $52d1: $c9


TaskHandler_1ae:
	xor a                                            ; $52d2: $af
	ld hl, $a3b0                                     ; $52d3: $21 $b0 $a3
	rst FarCall                                          ; $52d6: $f7
	pop de                                           ; $52d7: $d1
	rlc b                                            ; $52d8: $cb $00
	rst FarCall                                          ; $52da: $f7
	pop de                                           ; $52db: $d1
	rlc b                                            ; $52dc: $cb $00
	ret                                              ; $52de: $c9


TaskHandler_1ad:
	ld a, [$a3b0]                                    ; $52df: $fa $b0 $a3
	inc a                                            ; $52e2: $3c
	cp $40                                           ; $52e3: $fe $40
	jr nz, jr_00c_52e9                               ; $52e5: $20 $02

	ld a, $01                                        ; $52e7: $3e $01

jr_00c_52e9:
	ld [$a3b0], a                                    ; $52e9: $ea $b0 $a3
	ld hl, $a3b0                                     ; $52ec: $21 $b0 $a3
	rst AddAOntoHL                                          ; $52ef: $ef
	ld a, [wTaskParam0_word0]                                    ; $52f0: $fa $b0 $d0
	ld [hl+], a                                      ; $52f3: $22
	ld a, [$a3b0]                                    ; $52f4: $fa $b0 $a3
	cp $3f                                           ; $52f7: $fe $3f
	jr nz, jr_00c_52fe                               ; $52f9: $20 $03

	ld hl, $a3b1                                     ; $52fb: $21 $b1 $a3

jr_00c_52fe:
	xor a                                            ; $52fe: $af
	ld [hl], a                                       ; $52ff: $77
	ret                                              ; $5300: $c9


TaskHandler_1c8:
	ld a, $01                                        ; $5301: $3e $01
	ld [$a3a1], a                                    ; $5303: $ea $a1 $a3
	ret                                              ; $5306: $c9


TaskHandler_1c7:
	ld hl, $a125                                     ; $5307: $21 $25 $a1
	rst FarCall                                          ; $530a: $f7
	ld a, [hl-]                                      ; $530b: $3a
	halt                                             ; $530c: $76
	ld bc, $eaaf                                     ; $530d: $01 $af $ea
	ld b, d                                          ; $5310: $42
	ret nc                                           ; $5311: $d0

	ret                                              ; $5312: $c9


TaskHandler_1c6:
	rst FarCall                                          ; $5313: $f7
	AddrBank Func_01_7629
	ret                                     ; $5317: $c9


TaskHandler_1ba:
	xor a                                     ; $5318: $af
	ld [$d042], a                                    ; $5319: $ea $42 $d0
	ld a, [wTaskParam0_word0]                                    ; $531c: $fa $b0 $d0
	ld [$d043], a                                    ; $531f: $ea $43 $d0
	rst FarCall                                          ; $5322: $f7
	AddrBank Func_01_759a
	ret                                     ; $5326: $c9


TaskHandler_18f:
	rst FarCall                                     ; $5327: $f7
	ld h, $2b                                        ; $5328: $26 $2b
	nop                                              ; $532a: $00
	ret                                              ; $532b: $c9


TaskHandler_190:
	rst FarCall                                          ; $532c: $f7
	ld b, [hl]                                       ; $532d: $46
	dec hl                                           ; $532e: $2b
	nop                                              ; $532f: $00
	ret                                              ; $5330: $c9


TaskHandler_191:
	rst FarCall                                          ; $5331: $f7
	ld b, a                                          ; $5332: $47
	inc l                                            ; $5333: $2c
	nop                                              ; $5334: $00
	ret                                              ; $5335: $c9


TaskHandler_192:
	rst FarCall                                          ; $5336: $f7
	ld h, c                                          ; $5337: $61
	inc l                                            ; $5338: $2c
	nop                                              ; $5339: $00
	ret                                              ; $533a: $c9


TaskHandler_193:
	rst FarCall                                          ; $533b: $f7
	cp e                                             ; $533c: $bb
	inc l                                            ; $533d: $2c
	nop                                              ; $533e: $00
	ret                                              ; $533f: $c9


TaskHandler_194:
	rst FarCall                                          ; $5340: $f7
	add c                                            ; $5341: $81
	inc l                                            ; $5342: $2c
	nop                                              ; $5343: $00
	ret                                              ; $5344: $c9


TaskHandler_195:
	ld hl, $a146                                     ; $5345: $21 $46 $a1
	ld a, [hl+]                                      ; $5348: $2a
	and [hl]                                         ; $5349: $a6
	inc a                                            ; $534a: $3c
	ret nz                                           ; $534b: $c0

	ld bc, $e58f                                     ; $534c: $01 $8f $e5
	ld hl, $a112                                     ; $534f: $21 $12 $a1
	ld a, [hl+]                                      ; $5352: $2a
	and c                                            ; $5353: $a1
	cp c                                             ; $5354: $b9
	ret nz                                           ; $5355: $c0

	ld a, [hl+]                                      ; $5356: $2a
	and b                                            ; $5357: $a0
	cp b                                             ; $5358: $b8
	ret nz                                           ; $5359: $c0

	rst FarCall                                          ; $535a: $f7
	and c                                            ; $535b: $a1
	inc l                                            ; $535c: $2c
	nop                                              ; $535d: $00
	ret                                              ; $535e: $c9


TaskHandler_197:
	ld a, [wTaskParam0_word0]                                    ; $535f: $fa $b0 $d0
	ld b, a                                          ; $5362: $47
	rst FarCall                                          ; $5363: $f7
	halt                                             ; $5364: $76
	dec hl                                           ; $5365: $2b
	nop                                              ; $5366: $00
	ret                                              ; $5367: $c9


TaskHandler_198:
	rst FarCall                                          ; $5368: $f7
	add [hl]                                         ; $5369: $86
	dec hl                                           ; $536a: $2b
	nop                                              ; $536b: $00
	ret                                              ; $536c: $c9


Call_00c_536d:
TaskHandler_199:
	rst FarCall                                          ; $536d: $f7
	sub [hl]                                         ; $536e: $96
	dec hl                                           ; $536f: $2b
	nop                                              ; $5370: $00
	ret                                              ; $5371: $c9


Call_00c_5372:
TaskHandler_19a:
	rst FarCall                                          ; $5372: $f7
	and [hl]                                         ; $5373: $a6
	dec hl                                           ; $5374: $2b
	nop                                              ; $5375: $00
	ret                                              ; $5376: $c9


TaskHandler_196:
	ld a, [wTaskParam0_word0]                                    ; $5377: $fa $b0 $d0
	ld b, a                                          ; $537a: $47
	rst FarCall                                          ; $537b: $f7
	or [hl]                                          ; $537c: $b6
	dec hl                                           ; $537d: $2b
	nop                                              ; $537e: $00
	ret                                              ; $537f: $c9


TaskHandler_19b:
	ld a, [wTaskParam0_word0]                                    ; $5380: $fa $b0 $d0
	ld b, a                                          ; $5383: $47
	rst FarCall                                          ; $5384: $f7
	add $2b                                          ; $5385: $c6 $2b
	nop                                              ; $5387: $00
	ret                                              ; $5388: $c9


TaskHandler_19c:
	ld a, [wTaskParam0_word0]                                    ; $5389: $fa $b0 $d0
	ld b, a                                          ; $538c: $47
	rst FarCall                                          ; $538d: $f7
	sub $2b                                          ; $538e: $d6 $2b
	nop                                              ; $5390: $00
	ret                                              ; $5391: $c9


TaskHandler_19d:
	ld a, [wTaskParam0_word0]                                    ; $5392: $fa $b0 $d0
	ld b, a                                          ; $5395: $47
	rst FarCall                                          ; $5396: $f7
	and $2b                                          ; $5397: $e6 $2b
	nop                                              ; $5399: $00
	ret                                              ; $539a: $c9


TaskHandler_19e:
	ld a, [wTaskParam0_word0]                                    ; $539b: $fa $b0 $d0
	ld b, a                                          ; $539e: $47
	rst FarCall                                          ; $539f: $f7
	or $2b                                           ; $53a0: $f6 $2b
	nop                                              ; $53a2: $00
	ret                                              ; $53a3: $c9


TaskHandler_19f:
	rst FarCall                                          ; $53a4: $f7
	jr nz, @+$2e                                     ; $53a5: $20 $2c

	nop                                              ; $53a7: $00
	ret                                              ; $53a8: $c9


Jump_00c_53a9:
	ld a, [wTaskParam0_word0]                                    ; $53a9: $fa $b0 $d0
	cp $01                                           ; $53ac: $fe $01
	jr z, .br_53b5                                ; $53ae: $28 $05

	call Call_00c_5372                               ; $53b0: $cd $72 $53
	jr :+                                   ; $53b3: $18 $03

.br_53b5:
	call Call_00c_536d                               ; $53b5: $cd $6d $53

:	ld hl, $0c0f                                     ; $53b8: $21 $0f $0c
	call Func_1ceb                                       ; $53bb: $cd $eb $1c
	ld a, [wTaskParam1_word0]                                    ; $53be: $fa $b4 $d0
	ld l, a                                          ; $53c1: $6f
	ld a, [wTaskParam1_word0+1]                                    ; $53c2: $fa $b5 $d0
	ld h, a                                          ; $53c5: $67
	ld a, [wTaskParam1_word1]                                    ; $53c6: $fa $b6 $d0
	ld b, a                                          ; $53c9: $47
	rst FarCall                                          ; $53ca: $f7
	AddrBank Func_1c27
	jp Func_1be4                                         ; $53ce: $c3 $e4 $1b


Jump_00c_53d1:
	ld hl, $0c0f                                     ; $53d1: $21 $0f $0c
	call Func_1ceb                                       ; $53d4: $cd $eb $1c
	ld a, [wTaskParam0_word0]                                    ; $53d7: $fa $b0 $d0
	ld l, a                                          ; $53da: $6f
	ld a, [wTaskParam0_word0+1]                                    ; $53db: $fa $b1 $d0
	ld h, a                                          ; $53de: $67
	ld a, [wTaskParam0_word1]                                    ; $53df: $fa $b2 $d0
	ld b, a                                          ; $53e2: $47
	rst FarCall                                          ; $53e3: $f7
	AddrBank Func_1c27
	jp Func_1be4                                         ; $53e7: $c3 $e4 $1b


Jump_00c_53ea:
TaskHandler_1a0:
	call Call_00c_536d                               ; $53ea: $cd $6d $53
	ld hl, wTaskParam0_word0                                     ; $53ed: $21 $b0 $d0
	ld c, [hl]                                       ; $53f0: $4e
	inc hl                                           ; $53f1: $23
	ld b, [hl]                                       ; $53f2: $46
	rst FarCall                                          ; $53f3: $f7
	ld b, $2c                                        ; $53f4: $06 $2c
	nop                                              ; $53f6: $00
	ret                                              ; $53f7: $c9


	ret                                              ; $53f8: $c9


TaskHandler_1d1:
	ld a, [$a1ff]                                    ; $53f9: $fa $ff $a1
	and a                                            ; $53fc: $a7
	ret z                                            ; $53fd: $c8

	xor a                                            ; $53fe: $af
	call Jump_000_1af7                                       ; $53ff: $cd $f7 $1a
	ld a, $80                                        ; $5402: $3e $80
	ld [wTaskParam0_word0+1], a                                    ; $5404: $ea $b1 $d0
	ld a, $21                                        ; $5407: $3e $21
	ld [wTaskParam0_word0], a                                    ; $5409: $ea $b0 $d0
TaskHandler_1b2:
	ld b, $0f                                        ; $540c: $06 $0f
	jr jr_00c_5414                                   ; $540e: $18 $04

TaskHandler_1b3:
	ld a, [wTaskParam1_word0]                                    ; $5410: $fa $b4 $d0
	ld b, a                                          ; $5413: $47

jr_00c_5414:
	ld a, [wTaskParam0_word0]                                    ; $5414: $fa $b0 $d0
	ld c, a                                          ; $5417: $4f
	and a                                            ; $5418: $a7
	ret z                                            ; $5419: $c8

	dec c                                            ; $541a: $0d
	ld a, [$c186]                                    ; $541b: $fa $86 $c1
	cp $0c                                           ; $541e: $fe $0c
	jr z, jr_00c_5460                                ; $5420: $28 $3e

	xor a                                            ; $5422: $af
	ld [$bde6], a                                    ; $5423: $ea $e6 $bd
	rst FarCall                                          ; $5426: $f7
	or h                                             ; $5427: $b4
	ld d, c                                          ; $5428: $51
	inc bc                                           ; $5429: $03
	ld a, [wTaskParam0_word0+1]                                    ; $542a: $fa $b1 $d0
	and $80                                          ; $542d: $e6 $80
	jr nz, jr_00c_5437                               ; $542f: $20 $06

	ld a, [wButtonsHeld]                                    ; $5431: $fa $23 $c1
	bit 5, a                                         ; $5434: $cb $6f
	ret nz                                           ; $5436: $c0

jr_00c_5437:
	ld a, [$a1c5]                                    ; $5437: $fa $c5 $a1
	and a                                            ; $543a: $a7
	ret nz                                           ; $543b: $c0

	push bc                                          ; $543c: $c5
	rst FarCall                                          ; $543d: $f7
	ld e, e                                          ; $543e: $5b
	ld b, d                                          ; $543f: $42
	inc bc                                           ; $5440: $03
	pop bc                                           ; $5441: $c1
	ldh a, [$8e]                                     ; $5442: $f0 $8e
	push af                                          ; $5444: $f5
	xor a                                            ; $5445: $af
	call Call_00c_544d                               ; $5446: $cd $4d $54
	call z, PlaySampledSound                                    ; $5449: $cc $ef $27
	pop af                                           ; $544c: $f1

Call_00c_544d:
	call $068e                                       ; $544d: $cd $8e $06
	ldh a, [hDisp0_LCDC]                                     ; $5450: $f0 $82
	rlca                                             ; $5452: $07
	ret nc                                           ; $5453: $d0

	ld a, $01                                        ; $5454: $3e $01
	ld [$c110], a                                    ; $5456: $ea $10 $c1

jr_00c_5459:
	ld a, [$c110]                                    ; $5459: $fa $10 $c1
	and a                                            ; $545c: $a7
	jr nz, jr_00c_5459                               ; $545d: $20 $fa

	ret                                              ; $545f: $c9


jr_00c_5460:
	rst FarCall                                          ; $5460: $f7
	sbc l                                            ; $5461: $9d
	ld [hl], c                                       ; $5462: $71
	ld b, $c9                                        ; $5463: $06 $c9

Call_00c_5465:
	ld a, [wTaskParam0_word0]                                    ; $5465: $fa $b0 $d0
	ld b, a                                          ; $5468: $47
	ld a, [wTaskParam1_word0]                                    ; $5469: $fa $b4 $d0
	ret                                              ; $546c: $c9


Call_00c_546d:
	ld a, [wTaskParam1_word0]                                    ; $546d: $fa $b4 $d0
	ld b, a                                          ; $5470: $47
	ld a, [wTaskParam0_word0]                                    ; $5471: $fa $b0 $d0
	ret                                              ; $5474: $c9


	call $3a1b                                       ; $5475: $cd $1b $3a
	ld de, $00d5                                     ; $5478: $11 $d5 $00
	call wCpBCtoDE                                       ; $547b: $cd $8c $ce
	jr c, jr_00c_5493                                ; $547e: $38 $13

	ld de, $012c                                     ; $5480: $11 $2c $01
	call wCpBCtoDE                                       ; $5483: $cd $8c $ce
	jr z, jr_00c_5493                                ; $5486: $28 $0b

	ld de, $012d                                     ; $5488: $11 $2d $01
	call wCpBCtoDE                                       ; $548b: $cd $8c $ce
	jr z, jr_00c_5493                                ; $548e: $28 $03

	ld a, $01                                        ; $5490: $3e $01
	ret                                              ; $5492: $c9


jr_00c_5493:
	xor a                                            ; $5493: $af
	ret                                              ; $5494: $c9


	and a                                            ; $5495: $a7
	jr nz, jr_00c_549b                               ; $5496: $20 $03

	jp $1a55                                         ; $5498: $c3 $55 $1a


jr_00c_549b:
	jp $1a38                                         ; $549b: $c3 $38 $1a


Jump_00c_549e:
	rst FarCall                                          ; $549e: $f7
	ld [hl], l                                       ; $549f: $75
	ld d, h                                          ; $54a0: $54
	inc c                                            ; $54a1: $0c
	ld de, $6810                                     ; $54a2: $11 $10 $68
	and a                                            ; $54a5: $a7
	jr nz, jr_00c_54ad                               ; $54a6: $20 $05

	ld bc, $6808                                     ; $54a8: $01 $08 $68
	jr jr_00c_54ec                                   ; $54ab: $18 $3f

jr_00c_54ad:
	ld bc, $680a                                     ; $54ad: $01 $0a $68
	jr jr_00c_54ec                                   ; $54b0: $18 $3a

Jump_00c_54b2:
	rst FarCall                                          ; $54b2: $f7
	ld [hl], l                                       ; $54b3: $75
	ld d, h                                          ; $54b4: $54
	inc c                                            ; $54b5: $0c
	ld de, $67d8                                     ; $54b6: $11 $d8 $67
	and a                                            ; $54b9: $a7
	jr nz, jr_00c_54c1                               ; $54ba: $20 $05

	ld bc, $67d0                                     ; $54bc: $01 $d0 $67
	jr jr_00c_54ec                                   ; $54bf: $18 $2b

jr_00c_54c1:
	ld bc, $67d2                                     ; $54c1: $01 $d2 $67
	jr jr_00c_54ec                                   ; $54c4: $18 $26

Call_00c_54c6:
Jump_00c_54c6:
	rst FarCall                                          ; $54c6: $f7
	ld [hl], l                                       ; $54c7: $75
	ld d, h                                          ; $54c8: $54
	inc c                                            ; $54c9: $0c
	ld de, $67f4                                     ; $54ca: $11 $f4 $67
	and a                                            ; $54cd: $a7
	jr nz, jr_00c_54d5                               ; $54ce: $20 $05

	ld bc, $67ec                                     ; $54d0: $01 $ec $67
	jr jr_00c_54ec                                   ; $54d3: $18 $17

jr_00c_54d5:
	ld bc, $67ee                                     ; $54d5: $01 $ee $67
	jr jr_00c_54ec                                   ; $54d8: $18 $12

Jump_00c_54da:
	rst FarCall                                          ; $54da: $f7
	ld [hl], l                                       ; $54db: $75
	ld d, h                                          ; $54dc: $54
	inc c                                            ; $54dd: $0c
	ld de, $67bc                                     ; $54de: $11 $bc $67
	and a                                            ; $54e1: $a7
	jr nz, jr_00c_54e9                               ; $54e2: $20 $05

	ld bc, $67b4                                     ; $54e4: $01 $b4 $67
	jr jr_00c_54ec                                   ; $54e7: $18 $03

jr_00c_54e9:
	ld bc, $67b6                                     ; $54e9: $01 $b6 $67

jr_00c_54ec:
	push bc                                          ; $54ec: $c5
	ld a, [$c132]                                    ; $54ed: $fa $32 $c1
	ld b, $01                                        ; $54f0: $06 $01
	call $1ae9                                       ; $54f2: $cd $e9 $1a
	and $01                                          ; $54f5: $e6 $01
	pop bc                                           ; $54f7: $c1
	jr nz, jr_00c_54fd                               ; $54f8: $20 $03

	ld de, $0000                                     ; $54fa: $11 $00 $00

jr_00c_54fd:
	call $19f5                                       ; $54fd: $cd $f5 $19
	jp Func_1aa6                                         ; $5500: $c3 $a6 $1a


Call_00c_5503:
	ld a, [wTaskParam0_word0]                                    ; $5503: $fa $b0 $d0
	ld [$c115], a                                    ; $5506: $ea $15 $c1
	ld a, [wTaskParam0_word0+1]                                    ; $5509: $fa $b1 $d0
	ld [$c116], a                                    ; $550c: $ea $16 $c1
	ret                                              ; $550f: $c9


	ld bc, $67f2                                     ; $5510: $01 $f2 $67
	ld de, $0000                                     ; $5513: $11 $00 $00
	call $19f5                                       ; $5516: $cd $f5 $19

Call_00c_5519:
	cp $0f                                           ; $5519: $fe $0f
	jr z, jr_00c_5523                                ; $551b: $28 $06

	or $80                                           ; $551d: $f6 $80
	ld [$d842], a                                    ; $551f: $ea $42 $d8
	ret                                              ; $5522: $c9


jr_00c_5523:
	xor a                                            ; $5523: $af
	ld [$d842], a                                    ; $5524: $ea $42 $d8
	ret                                              ; $5527: $c9


Call_00c_5528:
	and a                                            ; $5528: $a7
	ld a, $0f                                        ; $5529: $3e $0f
	ret z                                            ; $552b: $c8

	ld a, $0e                                        ; $552c: $3e $0e
	ret                                              ; $552e: $c9


TaskHandler_1cb:
	ld a, [$a226]                                    ; $552f: $fa $26 $a2
	ld [$a3a2], a                                    ; $5532: $ea $a2 $a3
	ld a, [$a228]                                    ; $5535: $fa $28 $a2
	inc a                                            ; $5538: $3c
	ld [$a3a3], a                                    ; $5539: $ea $a3 $a3
	ret                                              ; $553c: $c9


TaskHandler_1cc:
	ld a, $ff                                        ; $553d: $3e $ff
	ld [$a3a2], a                                    ; $553f: $ea $a2 $a3
	ld [$a3a3], a                                    ; $5542: $ea $a3 $a3
	ret                                              ; $5545: $c9


Call_00c_5546:
jr_00c_5546:
	ld a, [$c110]                                    ; $5546: $fa $10 $c1
	and a                                            ; $5549: $a7
	jr nz, jr_00c_5546                               ; $554a: $20 $fa

	ret                                              ; $554c: $c9


; handler func after loading scripts, num scripts to load
TasksTable:
	dwb TaskHandler_000, $01
	dwb TaskHandler_001, $02
	dwb TaskHandler_002, $81
	dwb TaskHandler_003, $51
	dwb TaskHandler_004, $00
	dwb TaskHandler_005_Stub, $01
	dwb TaskHandler_006, $20
	dwb TaskHandler_007, $20
	dwb TaskHandler_008, $50
	dwb TaskHandler_009, $01
	dwb TaskHandler_00a, $01
	dwb TaskHandler_00b, $01
	dwb TaskHandler_00c_Wait, $01
	dwb TaskHandler_00d, $01
	dwb TaskHandler_00e, $00
	dwb TaskHandler_00f, $01
	dwb TaskHandler_010, $01
	dwb TaskHandler_011, $01
	dwb TaskHandler_012, $01
	dwb TaskHandler_013, $01
	dwb TaskHandler_014, $01
	dwb TaskHandler_015, $81
	dwb TaskHandler_016, $81
	dwb TaskHandler_017, $81
	dwb TaskHandler_018, $00
	dwb TaskHandler_019, $00
	dwb TaskHandler_01a, $00
	dwb TaskHandler_01b, $31
	dwb TaskHandler_01c, $31
	dwb TaskHandler_01d, $31
	dwb TaskHandler_01e, $02
	dwb TaskHandler_01f, $02
	dwb TaskHandler_020, $02
	dwb TaskHandler_021, $02
	dwb TaskHandler_022, $02
	dwb TaskHandler_023, $02
	dwb TaskHandler_024, $02
	dwb TaskHandler_025, $02
	dwb TaskHandler_026, $02
	dwb TaskHandler_027, $01
	dwb TaskHandler_028, $01
	dwb TaskHandler_029, $01
	dwb TaskHandler_02a, $01
	dwb TaskHandler_02b, $01
	dwb TaskHandler_02c, $01
	dwb TaskHandler_02d, $02
	dwb TaskHandler_02e, $02
	dwb TaskHandler_02f, $02
	dwb TaskHandler_030, $02
	dwb TaskHandler_031, $02
	dwb TaskHandler_032, $02
	dwb TaskHandler_033, $80
	dwb TaskHandler_034, $80
	dwb TaskHandler_035, $80
	dwb TaskHandler_036, $01
	dwb TaskHandler_037, $01
	dwb TaskHandler_038, $01
	dwb TaskHandler_039, $01
	dwb TaskHandler_03a, $01
	dwb TaskHandler_03b, $01
	dwb TaskHandler_03c, $02
	dwb TaskHandler_03d, $02
	dwb TaskHandler_03e, $02
	dwb TaskHandler_03f, $02
	dwb TaskHandler_040, $02
	dwb TaskHandler_041, $02
	dwb TaskHandler_042, $40
	dwb TaskHandler_043, $40
	dwb TaskHandler_044, $40
	dwb TaskHandler_045, $40
	dwb TaskHandler_046, $40
	dwb TaskHandler_047, $a0
	dwb TaskHandler_048, $02
	dwb TaskHandler_049, $41
	dwb TaskHandler_04a, $01
	dwb TaskHandler_04b, $22
	dwb TaskHandler_04c, $01
	dwb TaskHandler_04d, $81
	dwb TaskHandler_04e, $40
	dwb TaskHandler_04f, $00
	dwb TaskHandler_050, $01
	dwb TaskHandler_051, $01
	dwb TaskHandler_052, $01
	dwb TaskHandler_053, $01
	dwb TaskHandler_054, $01
	dwb TaskHandler_055, $01
	dwb TaskHandler_056, $03
	dwb TaskHandler_057, $33
	dwb TaskHandler_058, $12
	dwb TaskHandler_059, $32
	dwb TaskHandler_05a, $40
	dwb TaskHandler_05b, $81
	dwb TaskHandler_05c, $40
	dwb TaskHandler_05d, $01
	dwb TaskHandler_05e, $00
	dwb TaskHandler_05f, $00
	dwb TaskHandler_060, $00
	dwb TaskHandler_061, $00
	dwb TaskHandler_062, $00
	dwb TaskHandler_063, $00
	dwb TaskHandler_064, $80
	dwb TaskHandler_065, $40
	dwb TaskHandler_066, $50
	dwb TaskHandler_067, $30
	dwb TaskHandler_068, $20
	dwb TaskHandler_069, $30
	dwb TaskHandler_06a, $20
	dwb TaskHandler_06b, $40
	dwb TaskHandler_06c, $41
	dwb TaskHandler_06d, $20
	dwb TaskHandler_06e, $20
	dwb TaskHandler_06f, $20
	dwb TaskHandler_070, $00
	dwb TaskHandler_071, $40
	dwb TaskHandler_072, $50
	dwb TaskHandler_073, $20
	dwb TaskHandler_074, $40
	dwb TaskHandler_075, $50
	dwb TaskHandler_076, $20
	dwb TaskHandler_077, $00
	dwb TaskHandler_078, $00
	dwb TaskHandler_079, $00
	dwb TaskHandler_07a, $00
	dwb TaskHandler_07b, $00
	dwb TaskHandler_07c, $00
	dwb TaskHandler_07d, $00
	dwb TaskHandler_07e, $00
	dwb TaskHandler_07f, $00
	dwb TaskHandler_080, $20
	dwb TaskHandler_081, $01
	dwb TaskHandler_082, $02
	dwb TaskHandler_083, $a1
	dwb TaskHandler_084, $00
	dwb TaskHandler_085, $00
	dwb TaskHandler_086, $00
	dwb TaskHandler_087, $00
	dwb TaskHandler_088, $00
	dwb TaskHandler_089, $00
	dwb TaskHandler_08a, $41
	dwb TaskHandler_08b, $41
	dwb TaskHandler_08c, $70
	dwb TaskHandler_08d, $70
	dwb TaskHandler_08e, $70
	dwb TaskHandler_08f, $70
	dwb TaskHandler_090, $70
	dwb TaskHandler_091, $40
	dwb TaskHandler_092, $01
	dwb TaskHandler_093, $00
	dwb TaskHandler_094, $80
	dwb TaskHandler_095, $00
	dwb TaskHandler_096, $00
	dwb TaskHandler_097, $00
	dwb TaskHandler_098, $00
	dwb TaskHandler_099, $11
	dwb TaskHandler_09a, $11
	dwb TaskHandler_09b, $01
	dwb TaskHandler_09c, $01
	dwb TaskHandler_09d, $11
	dwb TaskHandler_09e, $41
	dwb TaskHandler_09f, $41
	dwb TaskHandler_0a0, $41
	dwb TaskHandler_0a1, $30
	dwb TaskHandler_0a2, $00
	dwb TaskHandler_0a3, $00
	dwb TaskHandler_0a4, $00
	dwb TaskHandler_0a5, $00
	dwb TaskHandler_0a6, $00
	dwb TaskHandler_0a7, $03
	dwb TaskHandler_0a8, $01
	dwb TaskHandler_0a9, $01
	dwb TaskHandler_0aa, $01
	dwb TaskHandler_0ab, $01
	dwb TaskHandler_0ac, $00
	dwb TaskHandler_0ad, $00
	dwb TaskHandler_0ae, $00
	dwb TaskHandler_0af, $00
	dwb TaskHandler_0b0, $00
	dwb TaskHandler_0b1, $00
	dwb TaskHandler_0b2, $00
	dwb TaskHandler_0b3, $00
	dwb TaskHandler_0b4, $00
	dwb TaskHandler_0b5, $40
	dwb TaskHandler_0b6, $01
	dwb TaskHandler_0b7, $00
	dwb TaskHandler_0b8, $40
	dwb TaskHandler_0b9, $40
	dwb TaskHandler_0ba, $00
	dwb TaskHandler_0bb, $01
	dwb TaskHandler_0bc, $01
	dwb TaskHandler_0bd, $11
	dwb TaskHandler_0be, $01
	dwb TaskHandler_0bf, $11
	dwb TaskHandler_0c0, $01
	dwb TaskHandler_0c1, $11
	dwb TaskHandler_0c2, $01
	dwb TaskHandler_0c3, $11
	dwb TaskHandler_0c4, $01
	dwb TaskHandler_0c5, $81
	dwb TaskHandler_0c6, $81
	dwb TaskHandler_0c7, $01
	dwb TaskHandler_0c8, $12
	dwb TaskHandler_0c9, $80
	dwb TaskHandler_0ca, $00
	dwb TaskHandler_0cb, $00
	dwb TaskHandler_0cc, $11
	dwb TaskHandler_0cd, $01
	dwb TaskHandler_0ce, $00
	dwb TaskHandler_0cf, $01
	dwb TaskHandler_0d0, $00
	dwb TaskHandler_0d1, $00
	dwb TaskHandler_0d2, $00
	dwb TaskHandler_0d3, $00
	dwb TaskHandler_0d4, $00
	dwb TaskHandler_0d5, $00
	dwb TaskHandler_0d6, $00
	dwb TaskHandler_0d7, $02
	dwb TaskHandler_0d8, $02
	dwb TaskHandler_0d9, $02
	dwb TaskHandler_0da, $02
	dwb TaskHandler_0db, $02
	dwb TaskHandler_0dc, $81
	dwb TaskHandler_0dd, $01
	dwb TaskHandler_0de, $01
	dwb TaskHandler_0df, $20
	dwb TaskHandler_0e0, $20
	dwb TaskHandler_0e1, $10
	dwb TaskHandler_0e2, $10
	dwb TaskHandler_0e3, $20
	dwb TaskHandler_0e4, $10
	dwb TaskHandler_0e5, $10
	dwb TaskHandler_0e6, $10
	dwb TaskHandler_0e7, $50
	dwb TaskHandler_0e8, $00
	dwb TaskHandler_0e9, $01
	dwb TaskHandler_0ea, $00
	dwb TaskHandler_0eb, $30
	dwb TaskHandler_0ec, $00
	dwb TaskHandler_0ed, $00
	dwb TaskHandler_0ee, $80
	dwb TaskHandler_0ef, $00
	dwb TaskHandler_0f0, $42
	dwb TaskHandler_0f1, $00
	dwb TaskHandler_0f2, $30
	dwb TaskHandler_0f3, $20
	dwb TaskHandler_0f4, $01
	dwb TaskHandler_0f5, $00
	dwb TaskHandler_0f6, $00
	dwb TaskHandler_0f7, $02
	dwb TaskHandler_0f8, $30
	dwb TaskHandler_0f9, $40
	dwb TaskHandler_0fa, $50
	dwb TaskHandler_0fb, $01
	dwb TaskHandler_0fc, $40
	dwb TaskHandler_0fd, $30
	dwb TaskHandler_0fe, $00
	dwb TaskHandler_0ff, $00
	dwb TaskHandler_100, $10
	dwb TaskHandler_101, $10
	dwb TaskHandler_102, $00
	dwb TaskHandler_103, $40
	dwb TaskHandler_104, $40
	dwb TaskHandler_105, $00
	dwb TaskHandler_106, $91
	dwb TaskHandler_107, $02
	dwb TaskHandler_108, $02
	dwb TaskHandler_109, $01
	dwb TaskHandler_10a, $30
	dwb TaskHandler_10b, $30
	dwb TaskHandler_10c, $01
	dwb TaskHandler_10d, $01
	dwb TaskHandler_10e, $40
	dwb TaskHandler_10f, $00
	dwb TaskHandler_110, $01
	dwb TaskHandler_111, $01
	dwb TaskHandler_112, $c1
	dwb TaskHandler_113, $40
	dwb TaskHandler_114, $00
	dwb TaskHandler_115, $01
	dwb TaskHandler_116, $00
	dwb TaskHandler_117, $10
	dwb TaskHandler_118, $00
	dwb TaskHandler_119, $01
	dwb TaskHandler_11a, $01
	dwb TaskHandler_11b, $01
	dwb TaskHandler_11c, $01
	dwb TaskHandler_11d, $12
	dwb TaskHandler_11e, $12
	dwb TaskHandler_11f, $11
	dwb TaskHandler_120, $11
	dwb TaskHandler_121, $10
	dwb TaskHandler_122, $11
	dwb TaskHandler_123, $11
	dwb TaskHandler_124, $10
	dwb TaskHandler_125, $10
	dwb TaskHandler_126, $21
	dwb TaskHandler_127, $21
	dwb TaskHandler_128, $00
	dwb TaskHandler_129, $00
	dwb TaskHandler_12a, $01
	dwb TaskHandler_12b, $00
	dwb TaskHandler_12c, $00
	dwb TaskHandler_12d, $30
	dwb TaskHandler_12e, $51
	dwb TaskHandler_12f, $00
	dwb TaskHandler_130, $10
	dwb TaskHandler_131, $11
	dwb TaskHandler_132, $12
	dwb TaskHandler_133, $02
	dwb TaskHandler_134, $51
	dwb TaskHandler_135, $11
	dwb TaskHandler_136, $00
	dwb TaskHandler_137, $00
	dwb TaskHandler_138, $11
	dwb TaskHandler_139, $02
	dwb TaskHandler_13a, $00
	dwb TaskHandler_13b, $00
	dwb TaskHandler_13c, $00
	dwb TaskHandler_13d, $00
	dwb TaskHandler_13e, $00
	dwb TaskHandler_13f, $03
	dwb TaskHandler_140, $00
	dwb TaskHandler_141, $13
	dwb TaskHandler_142, $01
	dwb TaskHandler_143, $11
	dwb TaskHandler_144, $11
	dwb TaskHandler_145, $11
	dwb TaskHandler_146, $00
	dwb TaskHandler_147, $01
	dwb TaskHandler_148, $01
	dwb TaskHandler_149, $01
	dwb TaskHandler_14a, $01
	dwb TaskHandler_14b, $00
	dwb TaskHandler_14c, $01
	dwb TaskHandler_14d, $a0
	dwb TaskHandler_14e, $00
	dwb TaskHandler_14f, $01
	dwb TaskHandler_150, $00
	dwb TaskHandler_151, $00
	dwb TaskHandler_152, $00
	dwb TaskHandler_153, $00
	dwb TaskHandler_154, $00
	dwb TaskHandler_155, $01
	dwb TaskHandler_156, $00
	dwb TaskHandler_157, $00
	dwb TaskHandler_158, $00
	dwb TaskHandler_159, $01
	dwb TaskHandler_15a, $00
	dwb TaskHandler_15b, $00
	dwb TaskHandler_15c, $00
	dwb TaskHandler_15d, $00
	dwb TaskHandler_15e, $00
	dwb TaskHandler_15f, $00
	dwb TaskHandler_160, $41
	dwb TaskHandler_161, $51
	dwb TaskHandler_162, $40
	dwb TaskHandler_163, $30
	dwb TaskHandler_164, $40
	dwb TaskHandler_165, $01
	dwb TaskHandler_166, $80
	dwb TaskHandler_167, $01
	dwb TaskHandler_168, $80
	dwb TaskHandler_169, $81
	dwb TaskHandler_16a, $40
	dwb TaskHandler_16b, $02
	dwb TaskHandler_16c, $81
	dwb TaskHandler_16d, $01
	dwb TaskHandler_16e, $00
	dwb TaskHandler_16f, $80
	dwb TaskHandler_170, $80
	dwb TaskHandler_171, $41
	dwb TaskHandler_172, $01
	dwb TaskHandler_173, $01
	dwb TaskHandler_174, $01
	dwb TaskHandler_175, $30
	dwb TaskHandler_176, $10
	dwb TaskHandler_177, $00
	dwb TaskHandler_178, $00
	dwb TaskHandler_179, $21
	dwb TaskHandler_17a, $00
	dwb TaskHandler_17b, $00
	dwb TaskHandler_17c, $60
	dwb TaskHandler_17d, $10
	dwb TaskHandler_17e, $81
	dwb TaskHandler_17f, $81
	dwb TaskHandler_180, $80
	dwb TaskHandler_181, $10
	dwb TaskHandler_182, $81
	dwb TaskHandler_183, $00
	dwb TaskHandler_184, $00
	dwb TaskHandler_185, $00
	dwb TaskHandler_186, $00
	dwb TaskHandler_187, $00
	dwb TaskHandler_188, $40
	dwb TaskHandler_189, $40
	dwb TaskHandler_18a, $01
	dwb TaskHandler_18b, $01
	dwb TaskHandler_18c, $01
	dwb TaskHandler_18d, $00
	dwb TaskHandler_18e, $00
	dwb TaskHandler_18f, $00
	dwb TaskHandler_190, $00
	dwb TaskHandler_191, $00
	dwb TaskHandler_192, $00
	dwb TaskHandler_193, $00
	dwb TaskHandler_194, $00
	dwb TaskHandler_195, $00
	dwb TaskHandler_196, $01
	dwb TaskHandler_197, $01
	dwb TaskHandler_198, $00
	dwb TaskHandler_199, $00
	dwb TaskHandler_19a, $00
	dwb TaskHandler_19b, $01
	dwb TaskHandler_19c, $01
	dwb TaskHandler_19d, $01
	dwb TaskHandler_19e, $01
	dwb TaskHandler_19f, $00
	dwb TaskHandler_1a0, $00
	dwb TaskHandler_1a1, $00
	dwb TaskHandler_1a2, $80
	dwb TaskHandler_1a3, $80
	dwb TaskHandler_1a4, $81
	dwb TaskHandler_1a5_EnterNamesAndDates, $00
	dwb TaskHandler_1a6, $81
	dwb TaskHandler_1a7, $82
	dwb TaskHandler_1a8, $23
	dwb TaskHandler_1a9, $01
	dwb TaskHandler_1aa, $00
	dwb TaskHandler_1ab, $00
	dwb TaskHandler_1ac, $00
	dwb TaskHandler_1ad, $01
	dwb TaskHandler_1ae, $00
	dwb TaskHandler_1af, $21
	dwb TaskHandler_1b0_todoSets_d80c_to_d80e, $03
	dwb TaskHandler_1b1, $01
	dwb TaskHandler_1b2, $01
	dwb TaskHandler_1b3, $02
	dwb TaskHandler_1b4, $00
	dwb TaskHandler_1b5, $02
	dwb TaskHandler_1b6, $20
	dwb TaskHandler_1b7, $00
	dwb TaskHandler_1b8, $00
	dwb TaskHandler_1b9, $00
	dwb TaskHandler_1ba, $01
	dwb TaskHandler_1bb, $01
	dwb TaskHandler_1bc, $01
	dwb TaskHandler_1bd, $01
	dwb TaskHandler_1be, $01
	dwb TaskHandler_1bf, $01
	dwb TaskHandler_1c0, $01
	dwb TaskHandler_1c1, $00
	dwb TaskHandler_1c2, $01
	dwb TaskHandler_1c3, $00
	dwb TaskHandler_1c4_todoClearsBytes, $00
	dwb TaskHandler_1c5, $40
	dwb TaskHandler_1c6, $00
	dwb TaskHandler_1c7, $00
	dwb TaskHandler_1c8, $00
	dwb TaskHandler_1c9, $01
	dwb TaskHandler_1ca, $02
	dwb TaskHandler_1cb, $00
	dwb TaskHandler_1cc, $00
	dwb TaskHandler_1cd, $10
	dwb TaskHandler_1ce, $80
	dwb TaskHandler_1cf, $40
	dwb TaskHandler_1d0, $41
	dwb TaskHandler_1d1, $00
	dwb TaskHandler_1d2, $01
	dwb TaskHandler_1d3, $40


Data_0c_5ac9:
	db $12, $00, $01, $02, $03, $0a, $10, $07
	db $08, $0d, $0f, $12, $0e, $12, $12, $12
	db $12, $12, $12, $11, $11, $08, $02, $0d
	db $07, $03, $01, $0a, $0e, $12, $12, $12
	db $12, $12, $12, $12, $12, $12, $12, $12
	db $12, $12, $12, $12, $12, $12, $12


todo_IdxToCharNameIdx:
	db $01, $03, $04, $05, $06, $0d, $13, $0a
	db $0b, $10, $12, $2b, $11, $2c, $15, $32
	db $33, $34, $02, $27, $14, $2c, $2c, $2c
	db $2c, $2c, $2c, $2c, $28, $1a, $1b, $20
	db $21, $2f, $30, $31, $1f, $26, $17, $18
	db $19, $3b, $2d, $23, $3d, $3e, $3f


;
	add e                                            ; $5b27: $83
	ld b, e                                          ; $5b28: $43
	ld c, e                                          ; $5b29: $4b
	ld b, e                                          ; $5b2a: $43
	ld bc, $7b42                                     ; $5b2b: $01 $42 $7b
	ld b, c                                          ; $5b2e: $41
	ld h, a                                          ; $5b2f: $67

jr_00c_5b30:
	ld b, e                                          ; $5b30: $43
	ld h, e                                          ; $5b31: $63
	ld b, l                                          ; $5b32: $45
	nop                                              ; $5b33: $00
	ld b, b                                          ; $5b34: $40
	sbc a                                            ; $5b35: $9f
	ld b, e                                          ; $5b36: $43
	adc h                                            ; $5b37: $8c
	ld h, l                                          ; $5b38: $65
	adc h                                            ; $5b39: $8c

jr_00c_5b3a:
	ld h, l                                          ; $5b3a: $65
	add b                                            ; $5b3b: $80
	ld h, l                                          ; $5b3c: $65
	add b                                            ; $5b3d: $80
	ld h, l                                          ; $5b3e: $65
	adc h                                            ; $5b3f: $8c
	ld h, l                                          ; $5b40: $65
	adc h                                            ; $5b41: $8c
	ld h, l                                          ; $5b42: $65
	ld c, [hl]                                       ; $5b43: $4e
	ld h, l                                          ; $5b44: $65
	sub h                                            ; $5b45: $94
	ld h, l                                          ; $5b46: $65
	ld d, a                                          ; $5b47: $57
	ld e, e                                          ; $5b48: $5b
	ld [hl], l                                       ; $5b49: $75
	ld e, e                                          ; $5b4a: $5b
	or c                                             ; $5b4b: $b1
	ld e, e                                          ; $5b4c: $5b

jr_00c_5b4d:
	and d                                            ; $5b4d: $a2
	ld e, e                                          ; $5b4e: $5b
	add h                                            ; $5b4f: $84
	ld e, e                                          ; $5b50: $5b
	sub e                                            ; $5b51: $93
	ld e, e                                          ; $5b52: $5b
	ret nz                                           ; $5b53: $c0

	ld e, e                                          ; $5b54: $5b
	ld h, [hl]                                       ; $5b55: $66
	ld e, e                                          ; $5b56: $5b
	ld e, $d1                                        ; $5b57: $1e $d1
	sbc c                                            ; $5b59: $99
	ld e, $eb                                        ; $5b5a: $1e $eb
	sbc c                                            ; $5b5c: $99
	ld e, $06                                        ; $5b5d: $1e $06
	sbc d                                            ; $5b5f: $9a
	ld e, $17                                        ; $5b60: $1e $17
	sbc d                                            ; $5b62: $9a
	ld e, $31                                        ; $5b63: $1e $31
	sbc d                                            ; $5b65: $9a
	ld e, $3c                                        ; $5b66: $1e $3c
	sbc d                                            ; $5b68: $9a
	ld e, $56                                        ; $5b69: $1e $56
	sbc d                                            ; $5b6b: $9a
	ld e, $71                                        ; $5b6c: $1e $71
	sbc d                                            ; $5b6e: $9a
	ld e, $83                                        ; $5b6f: $1e $83
	sbc d                                            ; $5b71: $9a
	ld e, $9d                                        ; $5b72: $1e $9d
	sbc d                                            ; $5b74: $9a
	ld e, $a9                                        ; $5b75: $1e $a9
	sbc d                                            ; $5b77: $9a
	ld e, $c3                                        ; $5b78: $1e $c3
	sbc d                                            ; $5b7a: $9a
	ld e, $d7                                        ; $5b7b: $1e $d7
	sbc d                                            ; $5b7d: $9a
	ld e, $de                                        ; $5b7e: $1e $de
	sbc d                                            ; $5b80: $9a
	ld e, $f7                                        ; $5b81: $1e $f7
	sbc d                                            ; $5b83: $9a
	ld e, $f8                                        ; $5b84: $1e $f8
	sbc d                                            ; $5b86: $9a
	ld e, $12                                        ; $5b87: $1e $12
	sbc e                                            ; $5b89: $9b
	ld e, $32                                        ; $5b8a: $1e $32
	sbc e                                            ; $5b8c: $9b
	ld e, $49                                        ; $5b8d: $1e $49
	sbc e                                            ; $5b8f: $9b
	ld e, $58                                        ; $5b90: $1e $58
	sbc e                                            ; $5b92: $9b
	ld e, $59                                        ; $5b93: $1e $59
	sbc e                                            ; $5b95: $9b
	ld e, $73                                        ; $5b96: $1e $73
	sbc e                                            ; $5b98: $9b
	ld e, $92                                        ; $5b99: $1e $92
	sbc e                                            ; $5b9b: $9b
	ld e, $b1                                        ; $5b9c: $1e $b1
	sbc e                                            ; $5b9e: $9b
	ld e, $c5                                        ; $5b9f: $1e $c5
	sbc e                                            ; $5ba1: $9b
	ld e, $80                                        ; $5ba2: $1e $80
	sbc b                                            ; $5ba4: $98
	ld e, $9a                                        ; $5ba5: $1e $9a
	sbc b                                            ; $5ba7: $98
	ld e, $b7                                        ; $5ba8: $1e $b7
	sbc b                                            ; $5baa: $98
	ld e, $d4                                        ; $5bab: $1e $d4
	sbc b                                            ; $5bad: $98
	ld e, $f4                                        ; $5bae: $1e $f4
	sbc b                                            ; $5bb0: $98
	ld e, $02                                        ; $5bb1: $1e $02
	sbc c                                            ; $5bb3: $99
	ld e, $15                                        ; $5bb4: $1e $15
	sbc c                                            ; $5bb6: $99
	ld e, $30                                        ; $5bb7: $1e $30
	sbc c                                            ; $5bb9: $99
	ld e, $43                                        ; $5bba: $1e $43
	sbc c                                            ; $5bbc: $99
	ld e, $5e                                        ; $5bbd: $1e $5e
	sbc c                                            ; $5bbf: $99
	ld e, $72                                        ; $5bc0: $1e $72
	sbc c                                            ; $5bc2: $99
	ld e, $88                                        ; $5bc3: $1e $88
	sbc c                                            ; $5bc5: $99
	ld e, $98                                        ; $5bc6: $1e $98
	sbc c                                            ; $5bc8: $99
	ld e, $ae                                        ; $5bc9: $1e $ae
	sbc c                                            ; $5bcb: $99
	ld e, $c5                                        ; $5bcc: $1e $c5
	sbc c                                            ; $5bce: $99
	push de                                          ; $5bcf: $d5
	and $0f                                          ; $5bd0: $e6 $0f
	jr z, jr_00c_5bdf                                ; $5bd2: $28 $0b

	ld de, $5be2                                     ; $5bd4: $11 $e2 $5b
	call $1327                                       ; $5bd7: $cd $27 $13
	ld a, [de]                                       ; $5bda: $1a
	pop de                                           ; $5bdb: $d1
	scf                                              ; $5bdc: $37
	ccf                                              ; $5bdd: $3f
	ret                                              ; $5bde: $c9


jr_00c_5bdf:
	pop de                                           ; $5bdf: $d1
	scf                                              ; $5be0: $37
	ret                                              ; $5be1: $c9


	nop                                              ; $5be2: $00
	nop                                              ; $5be3: $00
	stop                                             ; $5be4: $10 $00
	ld [$0c04], sp                                   ; $5be6: $08 $04 $0c
	nop                                              ; $5be9: $00
	jr jr_00c_5c08                                   ; $5bea: $18 $1c

	inc d                                            ; $5bec: $14
	ld l, $16                                        ; $5bed: $2e $16
	ld a, [hl+]                                      ; $5bef: $2a
	ld c, a                                          ; $5bf0: $4f
	ld b, [hl]                                       ; $5bf1: $46
	ld l, $13                                        ; $5bf2: $2e $13
	ld a, [hl+]                                      ; $5bf4: $2a
	ld e, a                                          ; $5bf5: $5f
	ld d, [hl]                                       ; $5bf6: $56
	ld a, $68                                        ; $5bf7: $3e $68
	call $1327                                       ; $5bf9: $cd $27 $13
	call wCpBCtoDE                                       ; $5bfc: $cd $8c $ce
	jp nc, Jump_00c_5c0b                             ; $5bff: $d2 $0b $5c

	ld b, $20                                        ; $5c02: $06 $20
	rst FarCall                                          ; $5c04: $f7
	ld e, d                                          ; $5c05: $5a
	ld [hl], d                                       ; $5c06: $72
	dec bc                                           ; $5c07: $0b

jr_00c_5c08:
	jp $3d32                                         ; $5c08: $c3 $32 $3d


Jump_00c_5c0b:
	ld a, [$c162]                                    ; $5c0b: $fa $62 $c1
	or a                                             ; $5c0e: $b7
	jp z, Jump_00c_5c17                              ; $5c0f: $ca $17 $5c

	dec a                                            ; $5c12: $3d
	ld [$c162], a                                    ; $5c13: $ea $62 $c1
	ret                                              ; $5c16: $c9


Jump_00c_5c17:
	rst FarCall                                          ; $5c17: $f7
	ld l, c                                          ; $5c18: $69
	ld [hl], d                                       ; $5c19: $72
	dec bc                                           ; $5c1a: $0b
	ret                                              ; $5c1b: $c9


	ld d, a                                          ; $5c1c: $57
	ld a, [$c158]                                    ; $5c1d: $fa $58 $c1
	or a                                             ; $5c20: $b7
	ld a, d                                          ; $5c21: $7a
	ret z                                            ; $5c22: $c8

	cp $be                                           ; $5c23: $fe $be
	jr c, jr_00c_5c29                                ; $5c25: $38 $02

	ld a, $bd                                        ; $5c27: $3e $bd

jr_00c_5c29:
	sub $1e                                          ; $5c29: $d6 $1e
	jr nc, jr_00c_5c2e                               ; $5c2b: $30 $01

	xor a                                            ; $5c2d: $af

jr_00c_5c2e:
	ret                                              ; $5c2e: $c9


	push hl                                          ; $5c2f: $e5
	ld hl, $a2f9                                     ; $5c30: $21 $f9 $a2
	rst GetHLinHL                                          ; $5c33: $cf
	ld a, [$a33a]                                    ; $5c34: $fa $3a $a3
	and $01                                          ; $5c37: $e6 $01
	jr z, jr_00c_5c3f                                ; $5c39: $28 $04

	srl h                                            ; $5c3b: $cb $3c
	rr l                                             ; $5c3d: $cb $1d

jr_00c_5c3f:
	ld a, h                                          ; $5c3f: $7c
	or a                                             ; $5c40: $b7
	ld a, $f0                                        ; $5c41: $3e $f0
	jr nz, jr_00c_5c4d                               ; $5c43: $20 $08

	ld a, l                                          ; $5c45: $7d
	cp $f0                                           ; $5c46: $fe $f0
	ld a, $f0                                        ; $5c48: $3e $f0
	jr nc, jr_00c_5c4d                               ; $5c4a: $30 $01

	ld a, l                                          ; $5c4c: $7d

jr_00c_5c4d:
	pop hl                                           ; $5c4d: $e1
	ret                                              ; $5c4e: $c9


	push hl                                          ; $5c4f: $e5
	call $3d01                                       ; $5c50: $cd $01 $3d
	ld h, b                                          ; $5c53: $60
	call $3cf7                                       ; $5c54: $cd $f7 $3c
	jr jr_00c_5c5a                                   ; $5c57: $18 $01

	push hl                                          ; $5c59: $e5

jr_00c_5c5a:
	ld h, $00                                        ; $5c5a: $26 $00
	ld a, b                                          ; $5c5c: $78
	sub d                                            ; $5c5d: $92
	jr nc, jr_00c_5c63                               ; $5c5e: $30 $03

	cpl                                              ; $5c60: $2f
	inc a                                            ; $5c61: $3c
	inc h                                            ; $5c62: $24

jr_00c_5c63:
	ld [$c0d0], a                                    ; $5c63: $ea $d0 $c0
	ld l, a                                          ; $5c66: $6f
	ld a, c                                          ; $5c67: $79
	sub e                                            ; $5c68: $93
	jr nc, jr_00c_5c6f                               ; $5c69: $30 $04

	cpl                                              ; $5c6b: $2f
	inc a                                            ; $5c6c: $3c
	inc h                                            ; $5c6d: $24
	inc h                                            ; $5c6e: $24

jr_00c_5c6f:
	ld [$c0d1], a                                    ; $5c6f: $ea $d1 $c0
	ld b, a                                          ; $5c72: $47
	ld a, h                                          ; $5c73: $7c
	ld [$c0d2], a                                    ; $5c74: $ea $d2 $c0
	ld a, b                                          ; $5c77: $78
	cp l                                             ; $5c78: $bd
	jr nc, jr_00c_5c90                               ; $5c79: $30 $15

	ld b, l                                          ; $5c7b: $45
	ld l, a                                          ; $5c7c: $6f
	ld a, b                                          ; $5c7d: $78

jr_00c_5c7e:
	cp $08                                           ; $5c7e: $fe $08
	jr c, jr_00c_5c88                                ; $5c80: $38 $06

	srl a                                            ; $5c82: $cb $3f
	srl l                                            ; $5c84: $cb $3d
	jr jr_00c_5c7e                                   ; $5c86: $18 $f6

jr_00c_5c88:
	sla l                                            ; $5c88: $cb $25
	sla l                                            ; $5c8a: $cb $25
	sla l                                            ; $5c8c: $cb $25
	jr jr_00c_5c9d                                   ; $5c8e: $18 $0d

jr_00c_5c90:
	cp $08                                           ; $5c90: $fe $08
	jr c, jr_00c_5c9a                                ; $5c92: $38 $06

	srl a                                            ; $5c94: $cb $3f
	srl l                                            ; $5c96: $cb $3d
	jr jr_00c_5c90                                   ; $5c98: $18 $f6

jr_00c_5c9a:
	rlca                                             ; $5c9a: $07
	rlca                                             ; $5c9b: $07
	rlca                                             ; $5c9c: $07

jr_00c_5c9d:
	or l                                             ; $5c9d: $b5
	or a                                             ; $5c9e: $b7
	jr nz, jr_00c_5ca4                               ; $5c9f: $20 $03

	scf                                              ; $5ca1: $37
	jr jr_00c_5cc0                                   ; $5ca2: $18 $1c

jr_00c_5ca4:
	ld hl, $5df0                                     ; $5ca4: $21 $f0 $5d
	rst AddAOntoHL                                          ; $5ca7: $ef
	ld a, [$c0d2]                                    ; $5ca8: $fa $d2 $c0
	inc a                                            ; $5cab: $3c
	bit 1, a                                         ; $5cac: $cb $4f
	ld a, [hl]                                       ; $5cae: $7e
	jr z, jr_00c_5cb3                                ; $5caf: $28 $02

	cpl                                              ; $5cb1: $2f
	inc a                                            ; $5cb2: $3c

jr_00c_5cb3:
	ld c, a                                          ; $5cb3: $4f
	ld a, [$c0d2]                                    ; $5cb4: $fa $d2 $c0
	ld hl, $5dec                                     ; $5cb7: $21 $ec $5d
	rst AddAOntoHL                                          ; $5cba: $ef
	ld b, [hl]                                       ; $5cbb: $46
	ld a, c                                          ; $5cbc: $79
	add b                                            ; $5cbd: $80
	scf                                              ; $5cbe: $37
	ccf                                              ; $5cbf: $3f

jr_00c_5cc0:
	ld [$c0d0], a                                    ; $5cc0: $ea $d0 $c0
	pop hl                                           ; $5cc3: $e1
	ret                                              ; $5cc4: $c9


	push hl                                          ; $5cc5: $e5
	ld [$c0d4], a                                    ; $5cc6: $ea $d4 $c0
	ld b, a                                          ; $5cc9: $47
	ld a, c                                          ; $5cca: $79
	ld [$c0d5], a                                    ; $5ccb: $ea $d5 $c0
	ld a, b                                          ; $5cce: $78
	call $133e                                       ; $5ccf: $cd $3e $13
	call Call_00c_5cf5                               ; $5cd2: $cd $f5 $5c
	ld de, $c0d0                                     ; $5cd5: $11 $d0 $c0
	call Call_00c_5de6                               ; $5cd8: $cd $e6 $5d
	ld a, [$c0d4]                                    ; $5cdb: $fa $d4 $c0
	call $1331                                       ; $5cde: $cd $31 $13
	call Call_00c_5cf5                               ; $5ce1: $cd $f5 $5c
	ld de, $c0d2                                     ; $5ce4: $11 $d2 $c0
	call Call_00c_5de6                               ; $5ce7: $cd $e6 $5d
	pop hl                                           ; $5cea: $e1
	ret                                              ; $5ceb: $c9


Call_00c_5cec:
jr_00c_5cec:
	or a                                             ; $5cec: $b7
	ret z                                            ; $5ced: $c8

	dec a                                            ; $5cee: $3d
	srl b                                            ; $5cef: $cb $38
	rr c                                             ; $5cf1: $cb $19
	jr jr_00c_5cec                                   ; $5cf3: $18 $f7

Call_00c_5cf5:
	jr nc, jr_00c_5d06                               ; $5cf5: $30 $0f

	dec bc                                           ; $5cf7: $0b
	call $cec0                                       ; $5cf8: $cd $c0 $ce
	dec bc                                           ; $5cfb: $0b
	ld a, [$c0d5]                                    ; $5cfc: $fa $d5 $c0
	call Call_00c_5cec                               ; $5cff: $cd $ec $5c
	call $cec0                                       ; $5d02: $cd $c0 $ce
	ret                                              ; $5d05: $c9


jr_00c_5d06:
	ld a, [$c0d5]                                    ; $5d06: $fa $d5 $c0
	call Call_00c_5cec                               ; $5d09: $cd $ec $5c
	ret                                              ; $5d0c: $c9


	push hl                                          ; $5d0d: $e5
	ld de, $c0d0                                     ; $5d0e: $11 $d0 $c0
	ld l, $11                                        ; $5d11: $2e $11
	ld a, [de]                                       ; $5d13: $1a
	ld [hl+], a                                      ; $5d14: $22
	inc de                                           ; $5d15: $13
	ld a, [de]                                       ; $5d16: $1a
	ld [hl+], a                                      ; $5d17: $22
	inc de                                           ; $5d18: $13
	ld a, [de]                                       ; $5d19: $1a
	ld [hl+], a                                      ; $5d1a: $22
	inc de                                           ; $5d1b: $13
	ld a, [de]                                       ; $5d1c: $1a
	ld [hl+], a                                      ; $5d1d: $22
	pop hl                                           ; $5d1e: $e1
	ret                                              ; $5d1f: $c9


	push hl                                          ; $5d20: $e5
	ld [$c0d4], a                                    ; $5d21: $ea $d4 $c0
	ld b, a                                          ; $5d24: $47
	ld a, c                                          ; $5d25: $79
	ld [$c0d5], a                                    ; $5d26: $ea $d5 $c0
	ld a, b                                          ; $5d29: $78
	call $133e                                       ; $5d2a: $cd $3e $13
	call Call_00c_5d47                               ; $5d2d: $cd $47 $5d
	ld de, $c0d0                                     ; $5d30: $11 $d0 $c0
	call Call_00c_5de6                               ; $5d33: $cd $e6 $5d
	ld a, [$c0d4]                                    ; $5d36: $fa $d4 $c0
	call $1331                                       ; $5d39: $cd $31 $13
	call Call_00c_5d47                               ; $5d3c: $cd $47 $5d
	ld de, $c0d2                                     ; $5d3f: $11 $d2 $c0
	call Call_00c_5de6                               ; $5d42: $cd $e6 $5d
	pop hl                                           ; $5d45: $e1
	ret                                              ; $5d46: $c9


Call_00c_5d47:
	jr nc, jr_00c_5d5b                               ; $5d47: $30 $12

	call $cec0                                       ; $5d49: $cd $c0 $ce
	sla c                                            ; $5d4c: $cb $21
	rl b                                             ; $5d4e: $cb $10
	ld a, [$c0d5]                                    ; $5d50: $fa $d5 $c0
	ld c, a                                          ; $5d53: $4f
	call BCequBtimesC                                       ; $5d54: $cd $5f $12
	call $cec0                                       ; $5d57: $cd $c0 $ce
	ret                                              ; $5d5a: $c9


jr_00c_5d5b:
	sla c                                            ; $5d5b: $cb $21
	rl b                                             ; $5d5d: $cb $10
	ld a, [$c0d5]                                    ; $5d5f: $fa $d5 $c0
	ld c, a                                          ; $5d62: $4f
	call BCequBtimesC                                       ; $5d63: $cd $5f $12
	ret                                              ; $5d66: $c9


	push hl                                          ; $5d67: $e5
	ld h, b                                          ; $5d68: $60
	ld l, $04                                        ; $5d69: $2e $04
	ld a, [hl+]                                      ; $5d6b: $2a
	ld c, a                                          ; $5d6c: $4f
	ld a, [hl+]                                      ; $5d6d: $2a
	ld b, a                                          ; $5d6e: $47
	ld a, [hl+]                                      ; $5d6f: $2a
	ld e, a                                          ; $5d70: $5f
	ld d, [hl]                                       ; $5d71: $56
	pop hl                                           ; $5d72: $e1
	push hl                                          ; $5d73: $e5
	ld l, $04                                        ; $5d74: $2e $04
	ld a, [$c0d0]                                    ; $5d76: $fa $d0 $c0
	add c                                            ; $5d79: $81
	ld [hl+], a                                      ; $5d7a: $22
	ld c, a                                          ; $5d7b: $4f
	ld a, [$c0d1]                                    ; $5d7c: $fa $d1 $c0
	adc b                                            ; $5d7f: $88
	ld [hl+], a                                      ; $5d80: $22
	ld b, a                                          ; $5d81: $47
	ld a, [$c0d2]                                    ; $5d82: $fa $d2 $c0
	adc e                                            ; $5d85: $8b
	ld [hl+], a                                      ; $5d86: $22
	ld e, a                                          ; $5d87: $5f
	ld a, [$c0d3]                                    ; $5d88: $fa $d3 $c0
	adc d                                            ; $5d8b: $8a
	ld [hl], a                                       ; $5d8c: $77
	ld d, a                                          ; $5d8d: $57
	pop hl                                           ; $5d8e: $e1
	ret                                              ; $5d8f: $c9


	push hl                                          ; $5d90: $e5
	ld [$c0d0], a                                    ; $5d91: $ea $d0 $c0
	call $3d01                                       ; $5d94: $cd $01 $3d
	ld h, b                                          ; $5d97: $60
	call $3cf7                                       ; $5d98: $cd $f7 $3c
	jr jr_00c_5da1                                   ; $5d9b: $18 $04

	push hl                                          ; $5d9d: $e5
	ld [$c0d0], a                                    ; $5d9e: $ea $d0 $c0

jr_00c_5da1:
	ld a, b                                          ; $5da1: $78
	sub d                                            ; $5da2: $92
	jr nc, jr_00c_5da7                               ; $5da3: $30 $02

	cpl                                              ; $5da5: $2f
	inc a                                            ; $5da6: $3c

jr_00c_5da7:
	ld [$c0d1], a                                    ; $5da7: $ea $d1 $c0
	ld a, c                                          ; $5daa: $79
	sub e                                            ; $5dab: $93
	jr nc, jr_00c_5db0                               ; $5dac: $30 $02

	cpl                                              ; $5dae: $2f
	inc a                                            ; $5daf: $3c

jr_00c_5db0:
	call Call_00c_5de0                               ; $5db0: $cd $e0 $5d
	ld a, c                                          ; $5db3: $79
	ld [$c0d2], a                                    ; $5db4: $ea $d2 $c0
	ld a, b                                          ; $5db7: $78
	ld [$c0d3], a                                    ; $5db8: $ea $d3 $c0
	ld a, [$c0d1]                                    ; $5dbb: $fa $d1 $c0
	call Call_00c_5de0                               ; $5dbe: $cd $e0 $5d
	ld a, [$c0d2]                                    ; $5dc1: $fa $d2 $c0
	ld e, a                                          ; $5dc4: $5f
	ld a, [$c0d3]                                    ; $5dc5: $fa $d3 $c0
	ld d, a                                          ; $5dc8: $57
	call wAddBContoDE                                       ; $5dc9: $cd $92 $ce
	jr c, jr_00c_5ddc                                ; $5dcc: $38 $0e

	ld a, [$c0d0]                                    ; $5dce: $fa $d0 $c0
	call Call_00c_5de0                               ; $5dd1: $cd $e0 $5d
	call wCpBCtoDE                                       ; $5dd4: $cd $8c $ce
	jr c, jr_00c_5ddc                                ; $5dd7: $38 $03

	scf                                              ; $5dd9: $37
	pop hl                                           ; $5dda: $e1
	ret                                              ; $5ddb: $c9


jr_00c_5ddc:
	scf                                              ; $5ddc: $37
	ccf                                              ; $5ddd: $3f
	pop hl                                           ; $5dde: $e1
	ret                                              ; $5ddf: $c9


Call_00c_5de0:
	ld b, a                                          ; $5de0: $47
	ld c, a                                          ; $5de1: $4f
	call BCequBtimesC                                       ; $5de2: $cd $5f $12
	ret                                              ; $5de5: $c9


Call_00c_5de6:
	ld a, c                                          ; $5de6: $79
	ld [de], a                                       ; $5de7: $12
	inc de                                           ; $5de8: $13
	ld a, b                                          ; $5de9: $78
	ld [de], a                                       ; $5dea: $12
	ret                                              ; $5deb: $c9


	jr @+$1a                                         ; $5dec: $18 $18

	ld [$0808], sp                                   ; $5dee: $08 $08 $08
	ld [$0808], sp                                   ; $5df1: $08 $08 $08
	ld [$0808], sp                                   ; $5df4: $08 $08 $08
	ld [$0400], sp                                   ; $5df7: $08 $00 $04
	dec b                                            ; $5dfa: $05
	ld b, $06                                        ; $5dfb: $06 $06
	rlca                                             ; $5dfd: $07
	rlca                                             ; $5dfe: $07
	rlca                                             ; $5dff: $07
	nop                                              ; $5e00: $00
	ld [bc], a                                       ; $5e01: $02
	inc b                                            ; $5e02: $04
	dec b                                            ; $5e03: $05
	dec b                                            ; $5e04: $05
	ld b, $06                                        ; $5e05: $06 $06
	ld b, $00                                        ; $5e07: $06 $00
	ld [bc], a                                       ; $5e09: $02
	inc bc                                           ; $5e0a: $03
	inc b                                            ; $5e0b: $04
	inc b                                            ; $5e0c: $04
	dec b                                            ; $5e0d: $05
	dec b                                            ; $5e0e: $05
	ld b, $00                                        ; $5e0f: $06 $00
	ld bc, $0302                                     ; $5e11: $01 $02 $03
	inc b                                            ; $5e14: $04
	inc b                                            ; $5e15: $04
	dec b                                            ; $5e16: $05
	dec b                                            ; $5e17: $05
	nop                                              ; $5e18: $00
	ld bc, $0302                                     ; $5e19: $01 $02 $03
	inc bc                                           ; $5e1c: $03
	inc b                                            ; $5e1d: $04
	inc b                                            ; $5e1e: $04
	dec b                                            ; $5e1f: $05
	nop                                              ; $5e20: $00
	ld bc, $0202                                     ; $5e21: $01 $02 $02
	inc bc                                           ; $5e24: $03
	inc bc                                           ; $5e25: $03
	inc b                                            ; $5e26: $04
	inc b                                            ; $5e27: $04
	nop                                              ; $5e28: $00
	ld bc, $0201                                     ; $5e29: $01 $01 $02
	ld [bc], a                                       ; $5e2c: $02
	inc bc                                           ; $5e2d: $03
	inc bc                                           ; $5e2e: $03
	inc b                                            ; $5e2f: $04
	rra                                              ; $5e30: $1f
	rra                                              ; $5e31: $1f
	rra                                              ; $5e32: $1f
	rra                                              ; $5e33: $1f
	rra                                              ; $5e34: $1f
	rra                                              ; $5e35: $1f
	rra                                              ; $5e36: $1f
	rra                                              ; $5e37: $1f
	rra                                              ; $5e38: $1f
	rra                                              ; $5e39: $1f
	rra                                              ; $5e3a: $1f
	rra                                              ; $5e3b: $1f
	jr nz, jr_00c_5e5d                               ; $5e3c: $20 $1f

	rra                                              ; $5e3e: $1f
	rra                                              ; $5e3f: $1f
	rra                                              ; $5e40: $1f
	rra                                              ; $5e41: $1f
	rra                                              ; $5e42: $1f
	rra                                              ; $5e43: $1f
	rra                                              ; $5e44: $1f
	rra                                              ; $5e45: $1f
	rra                                              ; $5e46: $1f
	rra                                              ; $5e47: $1f
	ld hl, $1f1f                                     ; $5e48: $21 $1f $1f
	rra                                              ; $5e4b: $1f
	rra                                              ; $5e4c: $1f
	rra                                              ; $5e4d: $1f
	rra                                              ; $5e4e: $1f
	rra                                              ; $5e4f: $1f
	rra                                              ; $5e50: $1f
	rra                                              ; $5e51: $1f
	rra                                              ; $5e52: $1f
	rra                                              ; $5e53: $1f
	ld [hl+], a                                      ; $5e54: $22
	rra                                              ; $5e55: $1f
	rra                                              ; $5e56: $1f
	rra                                              ; $5e57: $1f
	rra                                              ; $5e58: $1f
	rra                                              ; $5e59: $1f
	rra                                              ; $5e5a: $1f
	rra                                              ; $5e5b: $1f
	rra                                              ; $5e5c: $1f

jr_00c_5e5d:
	rra                                              ; $5e5d: $1f
	rra                                              ; $5e5e: $1f
	rra                                              ; $5e5f: $1f
	inc hl                                           ; $5e60: $23
	rra                                              ; $5e61: $1f
	rra                                              ; $5e62: $1f
	rra                                              ; $5e63: $1f
	rra                                              ; $5e64: $1f
	rra                                              ; $5e65: $1f
	rra                                              ; $5e66: $1f
	rra                                              ; $5e67: $1f
	rra                                              ; $5e68: $1f
	rra                                              ; $5e69: $1f
	rra                                              ; $5e6a: $1f
	rra                                              ; $5e6b: $1f
	inc hl                                           ; $5e6c: $23
	jr nz, jr_00c_5e8e                               ; $5e6d: $20 $1f

	rra                                              ; $5e6f: $1f
	rra                                              ; $5e70: $1f
	rra                                              ; $5e71: $1f
	rra                                              ; $5e72: $1f
	rra                                              ; $5e73: $1f
	rra                                              ; $5e74: $1f
	rra                                              ; $5e75: $1f
	rra                                              ; $5e76: $1f
	rra                                              ; $5e77: $1f
	inc hl                                           ; $5e78: $23
	ld hl, $1f1f                                     ; $5e79: $21 $1f $1f
	rra                                              ; $5e7c: $1f
	rra                                              ; $5e7d: $1f
	rra                                              ; $5e7e: $1f
	rra                                              ; $5e7f: $1f
	rra                                              ; $5e80: $1f
	rra                                              ; $5e81: $1f
	rra                                              ; $5e82: $1f
	rra                                              ; $5e83: $1f
	inc hl                                           ; $5e84: $23
	ld [hl+], a                                      ; $5e85: $22
	rra                                              ; $5e86: $1f
	rra                                              ; $5e87: $1f
	rra                                              ; $5e88: $1f
	rra                                              ; $5e89: $1f
	rra                                              ; $5e8a: $1f
	rra                                              ; $5e8b: $1f
	rra                                              ; $5e8c: $1f
	rra                                              ; $5e8d: $1f

jr_00c_5e8e:
	rra                                              ; $5e8e: $1f
	rra                                              ; $5e8f: $1f
	inc hl                                           ; $5e90: $23
	inc hl                                           ; $5e91: $23
	rra                                              ; $5e92: $1f
	rra                                              ; $5e93: $1f
	rra                                              ; $5e94: $1f
	rra                                              ; $5e95: $1f
	rra                                              ; $5e96: $1f
	rra                                              ; $5e97: $1f
	rra                                              ; $5e98: $1f
	rra                                              ; $5e99: $1f
	rra                                              ; $5e9a: $1f
	rra                                              ; $5e9b: $1f
	inc hl                                           ; $5e9c: $23
	inc hl                                           ; $5e9d: $23
	jr nz, jr_00c_5ebf                               ; $5e9e: $20 $1f

	rra                                              ; $5ea0: $1f
	rra                                              ; $5ea1: $1f
	rra                                              ; $5ea2: $1f
	rra                                              ; $5ea3: $1f
	rra                                              ; $5ea4: $1f
	rra                                              ; $5ea5: $1f
	rra                                              ; $5ea6: $1f
	rra                                              ; $5ea7: $1f
	inc hl                                           ; $5ea8: $23
	inc hl                                           ; $5ea9: $23
	ld hl, $1f1f                                     ; $5eaa: $21 $1f $1f
	rra                                              ; $5ead: $1f
	rra                                              ; $5eae: $1f
	rra                                              ; $5eaf: $1f
	rra                                              ; $5eb0: $1f
	rra                                              ; $5eb1: $1f
	rra                                              ; $5eb2: $1f
	rra                                              ; $5eb3: $1f
	inc hl                                           ; $5eb4: $23
	inc hl                                           ; $5eb5: $23
	ld [hl+], a                                      ; $5eb6: $22
	rra                                              ; $5eb7: $1f
	rra                                              ; $5eb8: $1f
	rra                                              ; $5eb9: $1f
	rra                                              ; $5eba: $1f
	rra                                              ; $5ebb: $1f
	rra                                              ; $5ebc: $1f
	rra                                              ; $5ebd: $1f
	rra                                              ; $5ebe: $1f

jr_00c_5ebf:
	rra                                              ; $5ebf: $1f
	inc hl                                           ; $5ec0: $23
	inc hl                                           ; $5ec1: $23
	inc hl                                           ; $5ec2: $23
	rra                                              ; $5ec3: $1f
	rra                                              ; $5ec4: $1f
	rra                                              ; $5ec5: $1f
	rra                                              ; $5ec6: $1f
	rra                                              ; $5ec7: $1f
	rra                                              ; $5ec8: $1f
	rra                                              ; $5ec9: $1f
	rra                                              ; $5eca: $1f
	rra                                              ; $5ecb: $1f
	inc hl                                           ; $5ecc: $23
	inc hl                                           ; $5ecd: $23
	inc hl                                           ; $5ece: $23
	jr nz, jr_00c_5ef0                               ; $5ecf: $20 $1f

	rra                                              ; $5ed1: $1f
	rra                                              ; $5ed2: $1f
	rra                                              ; $5ed3: $1f
	rra                                              ; $5ed4: $1f
	rra                                              ; $5ed5: $1f
	rra                                              ; $5ed6: $1f
	rra                                              ; $5ed7: $1f
	inc hl                                           ; $5ed8: $23
	inc hl                                           ; $5ed9: $23
	inc hl                                           ; $5eda: $23
	ld hl, $1f1f                                     ; $5edb: $21 $1f $1f
	rra                                              ; $5ede: $1f
	rra                                              ; $5edf: $1f
	rra                                              ; $5ee0: $1f
	rra                                              ; $5ee1: $1f
	rra                                              ; $5ee2: $1f
	rra                                              ; $5ee3: $1f
	inc hl                                           ; $5ee4: $23
	inc hl                                           ; $5ee5: $23
	inc hl                                           ; $5ee6: $23
	ld [hl+], a                                      ; $5ee7: $22
	rra                                              ; $5ee8: $1f
	rra                                              ; $5ee9: $1f
	rra                                              ; $5eea: $1f
	rra                                              ; $5eeb: $1f
	rra                                              ; $5eec: $1f
	rra                                              ; $5eed: $1f
	rra                                              ; $5eee: $1f
	rra                                              ; $5eef: $1f

jr_00c_5ef0:
	inc hl                                           ; $5ef0: $23
	inc hl                                           ; $5ef1: $23
	inc hl                                           ; $5ef2: $23
	inc hl                                           ; $5ef3: $23
	rra                                              ; $5ef4: $1f
	rra                                              ; $5ef5: $1f
	rra                                              ; $5ef6: $1f
	rra                                              ; $5ef7: $1f
	rra                                              ; $5ef8: $1f
	rra                                              ; $5ef9: $1f
	rra                                              ; $5efa: $1f
	rra                                              ; $5efb: $1f
	inc hl                                           ; $5efc: $23
	inc hl                                           ; $5efd: $23
	inc hl                                           ; $5efe: $23
	inc hl                                           ; $5eff: $23
	jr nz, jr_00c_5f21                               ; $5f00: $20 $1f

	rra                                              ; $5f02: $1f
	rra                                              ; $5f03: $1f
	rra                                              ; $5f04: $1f
	rra                                              ; $5f05: $1f
	rra                                              ; $5f06: $1f
	rra                                              ; $5f07: $1f
	inc hl                                           ; $5f08: $23
	inc hl                                           ; $5f09: $23
	inc hl                                           ; $5f0a: $23
	inc hl                                           ; $5f0b: $23
	ld hl, $1f1f                                     ; $5f0c: $21 $1f $1f
	rra                                              ; $5f0f: $1f
	rra                                              ; $5f10: $1f
	rra                                              ; $5f11: $1f
	rra                                              ; $5f12: $1f
	rra                                              ; $5f13: $1f
	inc hl                                           ; $5f14: $23
	inc hl                                           ; $5f15: $23
	inc hl                                           ; $5f16: $23
	inc hl                                           ; $5f17: $23
	ld [hl+], a                                      ; $5f18: $22
	rra                                              ; $5f19: $1f
	rra                                              ; $5f1a: $1f
	rra                                              ; $5f1b: $1f
	rra                                              ; $5f1c: $1f
	rra                                              ; $5f1d: $1f
	rra                                              ; $5f1e: $1f
	rra                                              ; $5f1f: $1f
	inc hl                                           ; $5f20: $23

jr_00c_5f21:
	inc hl                                           ; $5f21: $23
	inc hl                                           ; $5f22: $23
	inc hl                                           ; $5f23: $23
	inc hl                                           ; $5f24: $23
	rra                                              ; $5f25: $1f
	rra                                              ; $5f26: $1f
	rra                                              ; $5f27: $1f
	rra                                              ; $5f28: $1f
	rra                                              ; $5f29: $1f
	rra                                              ; $5f2a: $1f
	rra                                              ; $5f2b: $1f
	inc hl                                           ; $5f2c: $23
	inc hl                                           ; $5f2d: $23
	inc hl                                           ; $5f2e: $23
	inc hl                                           ; $5f2f: $23
	inc hl                                           ; $5f30: $23
	jr nz, jr_00c_5f52                               ; $5f31: $20 $1f

	rra                                              ; $5f33: $1f
	rra                                              ; $5f34: $1f
	rra                                              ; $5f35: $1f
	rra                                              ; $5f36: $1f
	rra                                              ; $5f37: $1f
	inc hl                                           ; $5f38: $23
	inc hl                                           ; $5f39: $23
	inc hl                                           ; $5f3a: $23
	inc hl                                           ; $5f3b: $23
	inc hl                                           ; $5f3c: $23
	ld hl, $1f1f                                     ; $5f3d: $21 $1f $1f
	rra                                              ; $5f40: $1f
	rra                                              ; $5f41: $1f
	rra                                              ; $5f42: $1f
	rra                                              ; $5f43: $1f
	inc hl                                           ; $5f44: $23
	inc hl                                           ; $5f45: $23
	inc hl                                           ; $5f46: $23
	inc hl                                           ; $5f47: $23
	inc hl                                           ; $5f48: $23
	ld [hl+], a                                      ; $5f49: $22
	rra                                              ; $5f4a: $1f
	rra                                              ; $5f4b: $1f
	rra                                              ; $5f4c: $1f
	rra                                              ; $5f4d: $1f
	rra                                              ; $5f4e: $1f
	rra                                              ; $5f4f: $1f
	inc hl                                           ; $5f50: $23
	inc hl                                           ; $5f51: $23

jr_00c_5f52:
	inc hl                                           ; $5f52: $23
	inc hl                                           ; $5f53: $23
	inc hl                                           ; $5f54: $23
	inc hl                                           ; $5f55: $23
	rra                                              ; $5f56: $1f
	rra                                              ; $5f57: $1f
	rra                                              ; $5f58: $1f
	rra                                              ; $5f59: $1f
	rra                                              ; $5f5a: $1f
	rra                                              ; $5f5b: $1f
	inc hl                                           ; $5f5c: $23
	inc hl                                           ; $5f5d: $23
	inc hl                                           ; $5f5e: $23
	inc hl                                           ; $5f5f: $23
	inc hl                                           ; $5f60: $23
	inc hl                                           ; $5f61: $23
	jr nz, jr_00c_5f83                               ; $5f62: $20 $1f

	rra                                              ; $5f64: $1f
	rra                                              ; $5f65: $1f
	rra                                              ; $5f66: $1f
	rra                                              ; $5f67: $1f
	inc hl                                           ; $5f68: $23
	inc hl                                           ; $5f69: $23
	inc hl                                           ; $5f6a: $23
	inc hl                                           ; $5f6b: $23
	inc hl                                           ; $5f6c: $23
	inc hl                                           ; $5f6d: $23
	ld hl, $1f1f                                     ; $5f6e: $21 $1f $1f
	rra                                              ; $5f71: $1f
	rra                                              ; $5f72: $1f
	rra                                              ; $5f73: $1f
	inc hl                                           ; $5f74: $23
	inc hl                                           ; $5f75: $23
	inc hl                                           ; $5f76: $23
	inc hl                                           ; $5f77: $23
	inc hl                                           ; $5f78: $23
	inc hl                                           ; $5f79: $23
	ld [hl+], a                                      ; $5f7a: $22
	rra                                              ; $5f7b: $1f
	rra                                              ; $5f7c: $1f
	rra                                              ; $5f7d: $1f
	rra                                              ; $5f7e: $1f
	rra                                              ; $5f7f: $1f
	inc hl                                           ; $5f80: $23
	inc hl                                           ; $5f81: $23
	inc hl                                           ; $5f82: $23

jr_00c_5f83:
	inc hl                                           ; $5f83: $23
	inc hl                                           ; $5f84: $23
	inc hl                                           ; $5f85: $23
	inc hl                                           ; $5f86: $23
	rra                                              ; $5f87: $1f
	rra                                              ; $5f88: $1f
	rra                                              ; $5f89: $1f
	rra                                              ; $5f8a: $1f
	rra                                              ; $5f8b: $1f
	inc hl                                           ; $5f8c: $23
	inc hl                                           ; $5f8d: $23
	inc hl                                           ; $5f8e: $23
	inc hl                                           ; $5f8f: $23
	inc hl                                           ; $5f90: $23
	inc hl                                           ; $5f91: $23
	inc hl                                           ; $5f92: $23
	jr nz, jr_00c_5fb4                               ; $5f93: $20 $1f

	rra                                              ; $5f95: $1f
	rra                                              ; $5f96: $1f
	rra                                              ; $5f97: $1f
	inc hl                                           ; $5f98: $23
	inc hl                                           ; $5f99: $23
	inc hl                                           ; $5f9a: $23
	inc hl                                           ; $5f9b: $23
	inc hl                                           ; $5f9c: $23
	inc hl                                           ; $5f9d: $23
	inc hl                                           ; $5f9e: $23
	ld hl, $1f1f                                     ; $5f9f: $21 $1f $1f
	rra                                              ; $5fa2: $1f
	rra                                              ; $5fa3: $1f
	inc hl                                           ; $5fa4: $23
	inc hl                                           ; $5fa5: $23
	inc hl                                           ; $5fa6: $23
	inc hl                                           ; $5fa7: $23
	inc hl                                           ; $5fa8: $23
	inc hl                                           ; $5fa9: $23
	inc hl                                           ; $5faa: $23
	ld [hl+], a                                      ; $5fab: $22
	rra                                              ; $5fac: $1f
	rra                                              ; $5fad: $1f
	rra                                              ; $5fae: $1f
	rra                                              ; $5faf: $1f
	inc hl                                           ; $5fb0: $23
	inc hl                                           ; $5fb1: $23
	inc hl                                           ; $5fb2: $23
	inc hl                                           ; $5fb3: $23

jr_00c_5fb4:
	inc hl                                           ; $5fb4: $23
	inc hl                                           ; $5fb5: $23
	inc hl                                           ; $5fb6: $23
	inc hl                                           ; $5fb7: $23
	rra                                              ; $5fb8: $1f
	rra                                              ; $5fb9: $1f
	rra                                              ; $5fba: $1f
	rra                                              ; $5fbb: $1f
	inc hl                                           ; $5fbc: $23
	inc hl                                           ; $5fbd: $23
	inc hl                                           ; $5fbe: $23
	inc hl                                           ; $5fbf: $23
	inc hl                                           ; $5fc0: $23
	inc hl                                           ; $5fc1: $23
	inc hl                                           ; $5fc2: $23
	inc hl                                           ; $5fc3: $23
	jr nz, jr_00c_5fe5                               ; $5fc4: $20 $1f

	rra                                              ; $5fc6: $1f
	rra                                              ; $5fc7: $1f
	inc hl                                           ; $5fc8: $23
	inc hl                                           ; $5fc9: $23
	inc hl                                           ; $5fca: $23
	inc hl                                           ; $5fcb: $23
	inc hl                                           ; $5fcc: $23
	inc hl                                           ; $5fcd: $23
	inc hl                                           ; $5fce: $23
	inc hl                                           ; $5fcf: $23
	ld hl, $1f1f                                     ; $5fd0: $21 $1f $1f
	rra                                              ; $5fd3: $1f
	inc hl                                           ; $5fd4: $23
	inc hl                                           ; $5fd5: $23
	inc hl                                           ; $5fd6: $23
	inc hl                                           ; $5fd7: $23
	inc hl                                           ; $5fd8: $23
	inc hl                                           ; $5fd9: $23
	inc hl                                           ; $5fda: $23
	inc hl                                           ; $5fdb: $23
	ld [hl+], a                                      ; $5fdc: $22
	rra                                              ; $5fdd: $1f
	rra                                              ; $5fde: $1f
	rra                                              ; $5fdf: $1f
	inc hl                                           ; $5fe0: $23
	inc hl                                           ; $5fe1: $23
	inc hl                                           ; $5fe2: $23
	inc hl                                           ; $5fe3: $23
	inc hl                                           ; $5fe4: $23

jr_00c_5fe5:
	inc hl                                           ; $5fe5: $23
	inc hl                                           ; $5fe6: $23
	inc hl                                           ; $5fe7: $23
	inc hl                                           ; $5fe8: $23
	rra                                              ; $5fe9: $1f
	rra                                              ; $5fea: $1f
	rra                                              ; $5feb: $1f
	inc hl                                           ; $5fec: $23
	inc hl                                           ; $5fed: $23
	inc hl                                           ; $5fee: $23
	inc hl                                           ; $5fef: $23
	inc hl                                           ; $5ff0: $23
	inc hl                                           ; $5ff1: $23
	inc hl                                           ; $5ff2: $23
	inc hl                                           ; $5ff3: $23
	inc hl                                           ; $5ff4: $23
	jr nz, jr_00c_6016                               ; $5ff5: $20 $1f

	rra                                              ; $5ff7: $1f
	inc hl                                           ; $5ff8: $23
	inc hl                                           ; $5ff9: $23
	inc hl                                           ; $5ffa: $23
	inc hl                                           ; $5ffb: $23
	inc hl                                           ; $5ffc: $23
	inc hl                                           ; $5ffd: $23
	inc hl                                           ; $5ffe: $23
	inc hl                                           ; $5fff: $23
	inc hl                                           ; $6000: $23
	ld hl, $1f1f                                     ; $6001: $21 $1f $1f
	inc hl                                           ; $6004: $23
	inc hl                                           ; $6005: $23
	inc hl                                           ; $6006: $23
	inc hl                                           ; $6007: $23
	inc hl                                           ; $6008: $23
	inc hl                                           ; $6009: $23
	inc hl                                           ; $600a: $23
	inc hl                                           ; $600b: $23
	inc hl                                           ; $600c: $23
	ld [hl+], a                                      ; $600d: $22
	rra                                              ; $600e: $1f
	rra                                              ; $600f: $1f
	inc hl                                           ; $6010: $23
	inc hl                                           ; $6011: $23
	inc hl                                           ; $6012: $23
	inc hl                                           ; $6013: $23
	inc hl                                           ; $6014: $23
	inc hl                                           ; $6015: $23

jr_00c_6016:
	inc hl                                           ; $6016: $23
	inc hl                                           ; $6017: $23
	inc hl                                           ; $6018: $23
	inc hl                                           ; $6019: $23
	rra                                              ; $601a: $1f
	rra                                              ; $601b: $1f
	inc hl                                           ; $601c: $23
	inc hl                                           ; $601d: $23
	inc hl                                           ; $601e: $23
	inc hl                                           ; $601f: $23
	inc hl                                           ; $6020: $23
	inc hl                                           ; $6021: $23
	inc hl                                           ; $6022: $23
	inc hl                                           ; $6023: $23
	inc hl                                           ; $6024: $23
	inc hl                                           ; $6025: $23
	jr nz, jr_00c_6047                               ; $6026: $20 $1f

	inc hl                                           ; $6028: $23
	inc hl                                           ; $6029: $23
	inc hl                                           ; $602a: $23
	inc hl                                           ; $602b: $23
	inc hl                                           ; $602c: $23
	inc hl                                           ; $602d: $23
	inc hl                                           ; $602e: $23
	inc hl                                           ; $602f: $23
	inc hl                                           ; $6030: $23
	inc hl                                           ; $6031: $23
	ld hl, $231f                                     ; $6032: $21 $1f $23
	inc hl                                           ; $6035: $23
	inc hl                                           ; $6036: $23
	inc hl                                           ; $6037: $23
	inc hl                                           ; $6038: $23
	inc hl                                           ; $6039: $23
	inc hl                                           ; $603a: $23
	inc hl                                           ; $603b: $23
	inc hl                                           ; $603c: $23
	inc hl                                           ; $603d: $23
	ld [hl+], a                                      ; $603e: $22
	rra                                              ; $603f: $1f
	inc hl                                           ; $6040: $23
	inc hl                                           ; $6041: $23
	inc hl                                           ; $6042: $23
	inc hl                                           ; $6043: $23
	inc hl                                           ; $6044: $23
	inc hl                                           ; $6045: $23
	inc hl                                           ; $6046: $23

jr_00c_6047:
	inc hl                                           ; $6047: $23
	inc hl                                           ; $6048: $23
	inc hl                                           ; $6049: $23
	inc hl                                           ; $604a: $23
	rra                                              ; $604b: $1f
	inc hl                                           ; $604c: $23
	inc hl                                           ; $604d: $23
	inc hl                                           ; $604e: $23
	inc hl                                           ; $604f: $23
	inc hl                                           ; $6050: $23
	inc hl                                           ; $6051: $23
	inc hl                                           ; $6052: $23
	inc hl                                           ; $6053: $23
	inc hl                                           ; $6054: $23
	inc hl                                           ; $6055: $23
	inc hl                                           ; $6056: $23
	jr nz, jr_00c_607c                               ; $6057: $20 $23

	inc hl                                           ; $6059: $23
	inc hl                                           ; $605a: $23
	inc hl                                           ; $605b: $23
	inc hl                                           ; $605c: $23
	inc hl                                           ; $605d: $23
	inc hl                                           ; $605e: $23
	inc hl                                           ; $605f: $23
	inc hl                                           ; $6060: $23
	inc hl                                           ; $6061: $23
	inc hl                                           ; $6062: $23
	ld hl, $2323                                     ; $6063: $21 $23 $23
	inc hl                                           ; $6066: $23
	inc hl                                           ; $6067: $23
	inc hl                                           ; $6068: $23
	inc hl                                           ; $6069: $23
	inc hl                                           ; $606a: $23
	inc hl                                           ; $606b: $23
	inc hl                                           ; $606c: $23
	inc hl                                           ; $606d: $23
	inc hl                                           ; $606e: $23
	ld [hl+], a                                      ; $606f: $22
	inc hl                                           ; $6070: $23
	inc hl                                           ; $6071: $23
	inc hl                                           ; $6072: $23
	inc hl                                           ; $6073: $23
	inc hl                                           ; $6074: $23
	inc hl                                           ; $6075: $23
	inc hl                                           ; $6076: $23
	inc hl                                           ; $6077: $23
	inc hl                                           ; $6078: $23
	inc hl                                           ; $6079: $23
	inc hl                                           ; $607a: $23
	inc hl                                           ; $607b: $23

jr_00c_607c: