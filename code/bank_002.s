; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

LoadSelfModifiableCode::
;
	ld hl, Func_02_4224                                     ; $4000: $21 $24 $42
	ld de, $ca80                                     ; $4003: $11 $80 $ca
	ld c, Func_02_4224End-Func_02_4224                                        ; $4006: $0e $36
	call MemCopyC                               ; $4008: $cd $82 $40

; Jump if not GBC/GBA
	ld a, [wInitialA]                                    ; $400b: $fa $00 $c1
	cp $11                                           ; $400e: $fe $11
	jr nz, .cont_4026                               ; $4010: $20 $14

;
	ld a, $02                                        ; $4012: $3e $02
	call SetWramBankAStoringCurrInHighByteInStackAfterReturn                                       ; $4014: $cd $05 $08
	ld hl, $43ab                                     ; $4017: $21 $ab $43
	ld de, $d800                                     ; $401a: $11 $00 $d8
	ld bc, $05b7                                     ; $401d: $01 $b7 $05
	call MemCopyBC                               ; $4020: $cd $84 $40
	call _SetWramBankToHighByteInStackAfterReturn                                       ; $4023: $cd $48 $08

.cont_4026:
; Copy vert sets to ram, and end with a `ret`
	ld hl, wVertSets                                                ; $4026
	ld b, NUM_WRAM_VERT_SETS                                        ; $4029

.nextVertSet:
	ld a, _ADD_HL_DE                                                ; $402b
	ld [hl+], a                                                     ; $402d
	ld a, _LD_HL_A                                                  ; $402e
	ld [hl+], a                                                     ; $4030
	dec b                                                           ; $4031
	jr nz, .nextVertSet                                             ; $4032

	ld a, _RET                                                      ; $4034
	ld [hl+], a                                                     ; $4036

; Copy mem sets to wMemSets, and end with a `ret`
	ld b, NUM_WRAM_MEM_SETS                                         ; $4037
	ld a, _LD_HLI_A                                                 ; $4039

:	ld [hl+], a                                                     ; $403b
	dec b                                                           ; $403c
	jr nz, :-                                                       ; $403d

	ld a, _RET                                                      ; $403f
	ld [hl+], a                                                     ; $4041

; Copy mem copies to ram, and end with a `ret`
	ld hl, wMemCopies                                               ; $4042
	ld b, NUM_WRAM_MEM_COPIES                                       ; $4045

.nextByteCopy:
	ld a, _LD_A_HLI                                                 ; $4047
	ld [hl+], a                                                     ; $4049
	ld a, _LD_DE_A                                                  ; $404a
	ld [hl+], a                                                     ; $404c
	ld a, _INC_DE                                                   ; $404d
	ld [hl+], a                                                     ; $404f
	dec b                                                           ; $4050
	jr nz, .nextByteCopy                                            ; $4051

	ld a, _RET                                                      ; $4053
	ld [hl+], a                                                     ; $4055

; Copy vert copies to ram...
	ld hl, wVertCopies                                              ; $4056
	ld b, NUM_WRAM_VERT_COPIES                                      ; $4059

.nextVertCopy:
	ld a, _LD_A_DE                                                  ; $405b
	ld [hl+], a                                                     ; $405d
	ld a, _LD_HL_A                                                  ; $405e
	ld [hl+], a                                                     ; $4060
	ld a, _ADD_HL_BC                                                ; $4061
	ld [hl+], a                                                     ; $4063
	ld a, _INC_DE                                                   ; $4064
	ld [hl+], a                                                     ; $4066
	dec b                                                           ; $4067
	jr nz, .nextVertCopy                                            ; $4068

; And end, replacing the `add hl, bc` with a `ret`
	dec hl                                                          ; $406a
	dec hl                                                          ; $406b
	ld a, _RET                                                      ; $406c
	ld [hl+], a                                                     ; $406e

; Load 2 groups of wram funcs
	ld hl, WramFuncs0                                               ; $406f
	ld de, wWramFuncs0Start                                         ; $4072
	ld c, WramFuncs1-WramFuncs0                                     ; $4075
	call MemCopyC                                                   ; $4077

	ld hl, WramFuncs1                                               ; $407a
	ld de, wWramFuncs1Start                                         ; $407d
	ld c, WramFuncs1End-WramFuncs1                                  ; $4080

; DE - dest addr
; HL - src addr
MemCopyC:
	ld b, $00                                                       ; $4082

; DE - dest addr
; HL - src addr
MemCopyBC:
; If C is non-0, add 1 to B, eg if BC = $40, it turning to $140 means that when
; C == 0, `dec b` turns B into 0 and loop exits
	xor a                                                           ; $4084
	or c                                                            ; $4085
	jr z, .nextByte                                                 ; $4086

	inc b                                                           ; $4088

.nextByte:
	ld a, [hl+]                                                     ; $4089
	ld [de], a                                                      ; $408a
	inc de                                                          ; $408b
	dec c                                                           ; $408c
	jr nz, .nextByte                                                ; $408d

	dec b                                                           ; $408f
	jr nz, .nextByte                                                ; $4090

	ret                                                             ; $4092


WramFuncs0:
; $ce80
; CpHLtoDE:
	ld a, h                                                         ; $4093
	cp d                                                            ; $4094
	ret nz                                                          ; $4095

	ld a, l                                                         ; $4096
	cp e                                                            ; $4097
	ret                                                             ; $4098


; $ce86
; CpHLtoBC:
	ld a, h                                                         ; $4099
	cp b                                                            ; $409a
	ret nz                                                          ; $409b

	ld a, l                                                         ; $409c
	cp c                                                            ; $409d
	ret                                                             ; $409e


; $ce8c
; CpBCtoDE:
	ld a, b                                                         ; $409f
	cp d                                                            ; $40a0
	ret nz                                                          ; $40a1

	ld a, c                                                         ; $40a2
	cp e                                                            ; $40a3
	ret                                                             ; $40a4


; $ce92
; AddBContoDE:
	ld a, e                                                         ; $40a5
	add c                                                           ; $40a6
	ld e, a                                                         ; $40a7
	ld a, d                                                         ; $40a8
	adc b                                                           ; $40a9
	ld d, a                                                         ; $40aa
	ret                                                             ; $40ab


;
	add l                                            ; $40ac: $85
	ld l, a                                          ; $40ad: $6f
	ret nc                                           ; $40ae: $d0

	inc h                                            ; $40af: $24
	ret                                              ; $40b0: $c9


; $ce9e
; HLminusEquDE:
	call wCpHLtoDE                                                  ; $40b1
	push af                                                         ; $40b4
	ld a, l                                                         ; $40b5
	sub e                                                           ; $40b6
	ld l, a                                                         ; $40b7
	ld a, h                                                         ; $40b8
	sbc d                                                           ; $40b9
	ld h, a                                                         ; $40ba
	pop af                                                          ; $40bb
	ret                                                             ; $40bc


; $ceaa
; HLminusEquBC:
	call wCpHLtoBC                                                  ; $40bd
	push af                                                         ; $40c0
	ld a, l                                                         ; $40c1
	sub c                                                           ; $40c2
	ld l, a                                                         ; $40c3
	ld a, h                                                         ; $40c4
	sbc b                                                           ; $40c5
	ld h, a                                                         ; $40c6
	pop af                                                          ; $40c7
	ret                                                             ; $40c8


;
	push af                                          ; $40c9: $f5
	xor a                                            ; $40ca: $af
	sub e                                            ; $40cb: $93
	ld e, a                                          ; $40cc: $5f
	ld a, $00                                        ; $40cd: $3e $00
	sbc d                                            ; $40cf: $9a
	ld d, a                                          ; $40d0: $57
	pop af                                           ; $40d1: $f1
	ret                                              ; $40d2: $c9


	push af                                          ; $40d3: $f5
	xor a                                            ; $40d4: $af
	sub c                                            ; $40d5: $91
	ld c, a                                          ; $40d6: $4f
	ld a, $00                                        ; $40d7: $3e $00
	sbc b                                            ; $40d9: $98
	ld b, a                                          ; $40da: $47
	pop af                                           ; $40db: $f1
	ret                                              ; $40dc: $c9


	push af                                          ; $40dd: $f5
	xor a                                            ; $40de: $af
	sub l                                            ; $40df: $95
	ld l, a                                          ; $40e0: $6f
	ld a, $00                                        ; $40e1: $3e $00
	sbc h                                            ; $40e3: $9c
	ld h, a                                          ; $40e4: $67
	pop af                                           ; $40e5: $f1
	ret                                              ; $40e6: $c9


; $ced4
SwapDEandHL:
	push de                                                         ; $40e7
	ld e, l                                                         ; $40e8
	ld d, h                                                         ; $40e9
	pop hl                                                          ; $40ea
	ret                                                             ; $40eb


; $ced9
SwapBCandHL:
	push bc                                                         ; $40ec
	ld c, l                                                         ; $40ed
	ld b, h                                                         ; $40ee
	pop hl                                                          ; $40ef
	ret                                                             ; $40f0


;
	push bc                                          ; $40f1: $c5
	ld c, e                                          ; $40f2: $4b
	ld b, d                                          ; $40f3: $42
	pop de                                           ; $40f4: $d1
	ret                                              ; $40f5: $c9


	call wSwapBCandHL                                       ; $40f6: $cd $d9 $ce
	call $cef3                                       ; $40f9: $cd $f3 $ce
	jr SwapBCandHL                                   ; $40fc: $18 $ee

	call wSwapDEandHL                                       ; $40fe: $cd $d4 $ce
	call $cef3                                       ; $4101: $cd $f3 $ce
	jr SwapDEandHL                                   ; $4104: $18 $e1

	add hl, hl                                       ; $4106: $29
	add hl, hl                                       ; $4107: $29
	add hl, hl                                       ; $4108: $29
	add hl, hl                                       ; $4109: $29
	ret                                              ; $410a: $c9


WramFuncs1:
; $cf80
; A - table idx
; Table at return address
; JumpTable:
	ld l, a                                                         ; $410b
	ld h, $00                                                       ; $410c
	add hl, hl                                                      ; $410e
	pop de                                                          ; $410f
	add hl, de                                                      ; $4110
	ld a, [hl+]                                                     ; $4111
	ld h, [hl]                                                      ; $4112
	ld l, a                                                         ; $4113
	jp hl                                                           ; $4114


;
	ld e, l                                          ; $4115: $5d
	ld d, h                                          ; $4116: $54
	ld l, a                                          ; $4117: $6f
	ld h, $00                                        ; $4118: $26 $00
	add hl, hl                                       ; $411a: $29
	add hl, de                                       ; $411b: $19
	ld a, [hl+]                                      ; $411c: $2a
	ld h, [hl]                                       ; $411d: $66
	ld l, a                                          ; $411e: $6f
	ret                                              ; $411f: $c9


	ld e, l                                          ; $4120: $5d
	ld d, h                                          ; $4121: $54
	ld l, a                                          ; $4122: $6f
	ld h, $00                                        ; $4123: $26 $00
	add hl, hl                                       ; $4125: $29
	add hl, de                                       ; $4126: $19
	ld e, [hl]                                       ; $4127: $5e
	inc hl                                           ; $4128: $23
	ld d, [hl]                                       ; $4129: $56
	ret                                              ; $412a: $c9


	ld c, l                                          ; $412b: $4d
	ld b, h                                          ; $412c: $44
	ld l, a                                          ; $412d: $6f
	ld h, $00                                        ; $412e: $26 $00
	add hl, hl                                       ; $4130: $29
	add hl, bc                                       ; $4131: $09
	ld c, [hl]                                       ; $4132: $4e
	inc hl                                           ; $4133: $23
	ld b, [hl]                                       ; $4134: $46
	ret                                              ; $4135: $c9


	ld e, l                                          ; $4136: $5d
	ld d, h                                          ; $4137: $54
	ld l, a                                          ; $4138: $6f
	ld h, $00                                        ; $4139: $26 $00
	add hl, hl                                       ; $413b: $29
	add hl, hl                                       ; $413c: $29
	add hl, de                                       ; $413d: $19
	ld e, [hl]                                       ; $413e: $5e
	inc hl                                           ; $413f: $23
	ld d, [hl]                                       ; $4140: $56
	inc hl                                           ; $4141: $23
	ld c, [hl]                                       ; $4142: $4e
	inc hl                                           ; $4143: $23
	ld b, [hl]                                       ; $4144: $46
	inc hl                                           ; $4145: $23
	ret                                              ; $4146: $c9


jr_002_4147:
	ld a, [hl+]                                      ; $4147: $2a
	ld [de], a                                       ; $4148: $12
	inc de                                           ; $4149: $13
	dec bc                                           ; $414a: $0b
	ld a, c                                          ; $414b: $79
	or b                                             ; $414c: $b0
	jr nz, jr_002_4147                               ; $414d: $20 $f8

	ret                                              ; $414f: $c9


jr_002_4150:
	ld a, [hl+]                                      ; $4150: $2a
	ld [de], a                                       ; $4151: $12
	inc de                                           ; $4152: $13
	dec c                                            ; $4153: $0d
	jr nz, jr_002_4150                               ; $4154: $20 $fa

	ret                                              ; $4156: $c9


; $cfcc
; A - byte to set
; HL - dest addr
; MemSetBC:
	ld d, a                                                         ; $4157

:	ld a, d                                                         ; $4158
	ld [hl+], a                                                     ; $4159

	dec bc                                                          ; $415a
	ld a, c                                                         ; $415b
	or b                                                            ; $415c
	jr nz, :-                                                       ; $415d

	ret                                                             ; $415f


;
jr_002_4160:
	ld [hl+], a                                      ; $4160: $22
	dec c                                            ; $4161: $0d
	jr nz, jr_002_4160                               ; $4162: $20 $fc

	ret                                              ; $4164: $c9


jr_002_4165:
	di                                               ; $4165: $f3

jr_002_4166:
	ldh a, [rSTAT]                                   ; $4166: $f0 $41
	bit 1, a                                         ; $4168: $cb $4f
	jr nz, jr_002_4166                               ; $416a: $20 $fa

	ld a, [hl+]                                      ; $416c: $2a
	ld [de], a                                       ; $416d: $12
	ei                                               ; $416e: $fb
	inc de                                           ; $416f: $13
	dec bc                                           ; $4170: $0b
	ld a, c                                          ; $4171: $79
	or b                                             ; $4172: $b0
	jr nz, jr_002_4165                               ; $4173: $20 $f0

	ret                                              ; $4175: $c9


	ld d, a                                          ; $4176: $57

jr_002_4177:
	di                                               ; $4177: $f3

jr_002_4178:
	ldh a, [rSTAT]                                   ; $4178: $f0 $41
	bit 1, a                                         ; $417a: $cb $4f
	jr nz, jr_002_4178                               ; $417c: $20 $fa

	ld [hl], d                                       ; $417e: $72
	ei                                               ; $417f: $fb
	inc hl                                           ; $4180: $23
	dec bc                                           ; $4181: $0b
	ld a, c                                          ; $4182: $79
	or b                                             ; $4183: $b0
	jr nz, jr_002_4177                               ; $4184: $20 $f1

	ret                                              ; $4186: $c9

WramFuncs1End:


Func_02_4187::
	ld hl, sp+$00                                    ; $4187: $f8 $00
	ld a, l                                          ; $4189: $7d
	ld [$cab2], a                                    ; $418a: $ea $b2 $ca
	ld a, h                                          ; $418d: $7c
	ld [$cab3], a                                    ; $418e: $ea $b3 $ca
	ld sp, $d7a0                                     ; $4191: $31 $a0 $d7
	ld a, [$c186]                                    ; $4194: $fa $86 $c1
	cp $06                                           ; $4197: $fe $06
	jr nz, .br_419f                               ; $4199: $20 $04

	ld a, $da                                        ; $419b: $3e $da
	jr jr_002_41a1                                   ; $419d: $18 $02

.br_419f:
	ld a, $cf                                        ; $419f: $3e $cf

jr_002_41a1:
	ld [$cab0], a                                    ; $41a1: $ea $b0 $ca
	ld h, a                                          ; $41a4: $67
	ld l, $08                                        ; $41a5: $2e $08
	ld a, [hl+]                                      ; $41a7: $2a
	or [hl]                                          ; $41a8: $b6
	jr z, Func_02_41f8                                ; $41a9: $28 $4d

	ld l, $00                                        ; $41ab: $2e $00
	ld a, [hl+]                                      ; $41ad: $2a
	or a                                             ; $41ae: $b7
	jr z, Func_02_41f8                                ; $41af: $28 $47

	bit 7, [hl]                                      ; $41b1: $cb $7e
	jr nz, Func_02_41f8                               ; $41b3: $20 $43

	inc l                                            ; $41b5: $2c
	ld a, [hl+]                                      ; $41b6: $2a
	ld [$ca99], a                                    ; $41b7: $ea $99 $ca
	ld a, [hl]                                       ; $41ba: $7e
	ld [$ca89], a                                    ; $41bb: $ea $89 $ca
	ld [$caa1], a                                    ; $41be: $ea $a1 $ca
	push af                                          ; $41c1: $f5
	and $40                                          ; $41c2: $e6 $40
	ld l, $05                                        ; $41c4: $2e $05
	ld a, [hl]                                       ; $41c6: $7e
	ld b, $00                                        ; $41c7: $06 $00
	jr z, :+                                ; $41c9: $28 $03

	ld b, $2f                                        ; $41cb: $06 $2f
	inc a                                            ; $41cd: $3c

:	ld [$ca95], a                                    ; $41ce: $ea $95 $ca
	ld a, b                                          ; $41d1: $78
	ld [$ca93], a                                    ; $41d2: $ea $93 $ca
	pop af                                           ; $41d5: $f1
	and $20                                          ; $41d6: $e6 $20
	ld l, $07                                        ; $41d8: $2e $07
	ld a, [hl+]                                      ; $41da: $2a
	jr nz, .br_41e6                               ; $41db: $20 $09

	add $08                                          ; $41dd: $c6 $08
	ld [$ca90], a                                    ; $41df: $ea $90 $ca
	ld a, $00                                        ; $41e2: $3e $00
	jr :+                                   ; $41e4: $18 $05

.br_41e6:
	ld [$ca90], a                                    ; $41e6: $ea $90 $ca
	ld a, $2f                                        ; $41e9: $3e $2f

:	ld [$ca8e], a                                    ; $41eb: $ea $8e $ca
	ld a, [hl+]                                      ; $41ee: $2a
	ld h, [hl]                                       ; $41ef: $66
	ld l, a                                          ; $41f0: $6f
	and $03                                          ; $41f1: $e6 $03
	add $0d                                          ; $41f3: $c6 $0d
	jp $ca80                                         ; $41f5: $c3 $80 $ca


Func_02_41f8:
	ld a, [$cab0]                                    ; $41f8: $fa $b0 $ca
	dec a                                            ; $41fb: $3d
	cp $d8                                           ; $41fc: $fe $d8
	jr z, Func_02_4187.br_419f                                ; $41fe: $28 $9f

	cp $c1                                           ; $4200: $fe $c1
	jr nz, jr_002_41a1                               ; $4202: $20 $9d

	ld hl, sp+$00                                    ; $4204: $f8 $00
	ld a, l                                          ; $4206: $7d
	srl a                                            ; $4207: $cb $3f
	cpl                                              ; $4209: $2f
	inc a                                            ; $420a: $3c
	ld bc, $4259                                     ; $420b: $01 $59 $42
	jp z, $cab1                                      ; $420e: $ca $b1 $ca

	ld e, a                                          ; $4211: $5f
	ld d, $ff                                        ; $4212: $16 $ff
	ld hl, $cbd0                                     ; $4214: $21 $d0 $cb
	add hl, de                                       ; $4217: $19
	ld c, l                                          ; $4218: $4d
	ld b, h                                          ; $4219: $44
	ld a, $a0                                        ; $421a: $3e $a0
	ld de, $fffc                                     ; $421c: $11 $fc $ff
	ld hl, sp+$00                                    ; $421f: $f8 $00
	jp $cab1                                         ; $4221: $c3 $b1 $ca


Func_02_4224:
	ld [wRomBank], a                                    ; $4224: $ea $03 $c1
	ld [rROMB0], a                                    ; $4227: $ea $00 $20
	jr .start                                   ; $422a: $18 $05

.loop_422c:
	xor $00                                          ; $422c: $ee $00
	ld d, a                                          ; $422e: $57
	push de                                          ; $422f: $d5
	push bc                                          ; $4230: $c5

.start:
	ld a, [hl+]                                      ; $4231: $2a
	nop                                              ; $4232: $00
	add $00                                          ; $4233: $c6 $00
	ld b, a                                          ; $4235: $47
	ld a, [hl+]                                      ; $4236: $2a
	nop                                              ; $4237: $00
	add $00                                          ; $4238: $c6 $00
	ld c, a                                          ; $423a: $4f
	ld a, [hl+]                                      ; $423b: $2a
	add $00                                          ; $423c: $c6 $00
	ld e, a                                          ; $423e: $5f
	ld a, [hl+]                                      ; $423f: $2a
	srl a                                            ; $4240: $cb $3f
	jr nc, .loop_422c                               ; $4242: $30 $e8

	xor $00                                          ; $4244: $ee $00
	ld d, a                                          ; $4246: $57
	push de                                          ; $4247: $d5
	push bc                                          ; $4248: $c5
	ld a, $02                                        ; $4249: $3e $02
	ld [wRomBank], a                                    ; $424b: $ea $03 $c1
	ld [rROMB0], a                                    ; $424e: $ea $00 $20
	jp Func_02_41f8                                 ; $4251: $c3 $f8 $41


	nop                                              ; $4254: $00
	ld sp, $0000                                     ; $4255: $31 $00 $00
	push bc                                          ; $4258: $c5
	ret                                              ; $4259: $c9
Func_02_4224End:


	ld hl, $4265                                     ; $425a: $21 $65 $42

jr_002_425d:
	ld a, [hl+]                                      ; $425d: $2a
	ld c, a                                          ; $425e: $4f
	ld a, [hl+]                                      ; $425f: $2a
	ldh [c], a                                       ; $4260: $e2
	inc c                                            ; $4261: $0c
	jr nz, jr_002_425d                               ; $4262: $20 $f9

	ret                                              ; $4264: $c9


	nop                                              ; $4265: $00
	nop                                              ; $4266: $00
	ld bc, $0200                                     ; $4267: $01 $00 $02
	nop                                              ; $426a: $00
	inc b                                            ; $426b: $04
	nop                                              ; $426c: $00
	dec b                                            ; $426d: $05
	nop                                              ; $426e: $00
	ld b, $c0                                        ; $426f: $06 $c0
	rlca                                             ; $4271: $07
	nop                                              ; $4272: $00
	rrca                                             ; $4273: $0f
	nop                                              ; $4274: $00
	rst $38                                          ; $4275: $ff
	ld bc, $008e                                     ; $4276: $01 $8e $00
	add d                                            ; $4279: $82
	sub c                                            ; $427a: $91
	add e                                            ; $427b: $83
	nop                                              ; $427c: $00
	add h                                            ; $427d: $84
	nop                                              ; $427e: $00
	sbc e                                            ; $427f: $9b
	nop                                              ; $4280: $00
	adc a                                            ; $4281: $8f
	sub c                                            ; $4282: $91
	sub b                                            ; $4283: $90
	nop                                              ; $4284: $00
	sub c                                            ; $4285: $91
	nop                                              ; $4286: $00
	rrca                                             ; $4287: $0f
	nop                                              ; $4288: $00
	rst $38                                          ; $4289: $ff
	nop                                              ; $428a: $00


PollInput::
; Poll for direction btns, store in B
	ld a, P1F_5                                                     ; $428b
	ldh [rP1], a                                                    ; $428d
	ldh a, [rP1]                                                    ; $428f
	ldh a, [rP1]                                                    ; $4291
	cpl                                                             ; $4293
	and $0f                                                         ; $4294
	ld b, a                                                         ; $4296

; Poll for action btns, place in high nybble, combine with B into C
	ld a, P1F_4                                                     ; $4297
	ldh [rP1], a                                                    ; $4299
	ldh a, [rP1]                                                    ; $429b
	ldh a, [rP1]                                                    ; $429d
	ldh a, [rP1]                                                    ; $429f
	ldh a, [rP1]                                                    ; $42a1
	ldh a, [rP1]                                                    ; $42a3
	ldh a, [rP1]                                                    ; $42a5
	ldh a, [rP1]                                                    ; $42a7
	ldh a, [rP1]                                                    ; $42a9
	cpl                                                             ; $42ab
	and $0f                                                         ; $42ac
	swap a                                                          ; $42ae
	or b                                                            ; $42b0
	ld c, a                                                         ; $42b1

; Set btns held + pressed
	ld a, [wButtonsHeld]                                            ; $42b2
	xor c                                                           ; $42b5
	and c                                                           ; $42b6
	ld [wButtonsPressed], a                                         ; $42b7
	ld a, c                                                         ; $42ba
	ld [wButtonsHeld], a                                            ; $42bb

; If any buttons held, wait longer before resetting inputs (unnecessary)
	and a                                                           ; $42be
	jr z, :+                                                        ; $42bf

	nop                                                             ; $42c1
	nop                                                             ; $42c2
	nop                                                             ; $42c3
	nop                                                             ; $42c4

:	nop                                                             ; $42c5
	nop                                                             ; $42c6
	nop                                                             ; $42c7
	nop                                                             ; $42c8
	ld a, $30                                                       ; $42c9
	ldh [rP1], a                                                    ; $42cb
	ret                                                             ; $42cd


;
	ld c, LOW(hOamDmaFunc)                                        ; $42ce: $0e $e0
	ld b, OamDmaFunc.end-OamDmaFunc                                        ; $42d0: $06 $0a
	ld hl, OamDmaFunc                                     ; $42d2: $21 $dc $42
:	ld a, [hl+]                                      ; $42d5: $2a
	ldh [c], a                                       ; $42d6: $e2
	inc c                                            ; $42d7: $0c
	dec b                                            ; $42d8: $05
	jr nz, :-                               ; $42d9: $20 $fa

	ret                                              ; $42db: $c9


OamDmaFunc:
	ld a, HIGH(wOam)                                                ; $42dc
	ldh [rDMA], a                                                   ; $42de
	ld a, $28                                                       ; $42e0
:	dec a                                                           ; $42e2
	jr nz, :-                                                       ; $42e3

	ret                                                             ; $42e5
.end:


;
	ld hl, wButtonsHeld                                     ; $42e6: $21 $23 $c1
	call Call_002_42ef                               ; $42e9: $cd $ef $42
	ld hl, wButtonsPressed                                     ; $42ec: $21 $25 $c1

Call_002_42ef:
	ld b, $00                                        ; $42ef: $06 $00
	ld a, [hl+]                                      ; $42f1: $2a
	or a                                             ; $42f2: $b7
	jr z, jr_002_42f9                                ; $42f3: $28 $04

jr_002_42f5:
	inc b                                            ; $42f5: $04
	rra                                              ; $42f6: $1f
	jr nc, jr_002_42f5                               ; $42f7: $30 $fc

jr_002_42f9:
	ld [hl], b                                       ; $42f9: $70
	ret                                              ; $42fa: $c9


	ld a, b                                          ; $42fb: $78
	ld [$c130], a                                    ; $42fc: $ea $30 $c1
	ld [$c131], a                                    ; $42ff: $ea $31 $c1
	ld a, $ff                                        ; $4302: $3e $ff
	ld [$c12f], a                                    ; $4304: $ea $2f $c1
	ret                                              ; $4307: $c9


	ld de, $4342                                     ; $4308: $11 $42 $43
	jr jr_002_431a                                   ; $430b: $18 $0d

	ld de, $434b                                     ; $430d: $11 $4b $43
	jr jr_002_431a                                   ; $4310: $18 $08

	ld de, $4354                                     ; $4312: $11 $54 $43
	jr jr_002_431a                                   ; $4315: $18 $03

	ld de, $435d                                     ; $4317: $11 $5d $43

jr_002_431a:
	push hl                                          ; $431a: $e5
	call Call_002_4320                               ; $431b: $cd $20 $43
	pop hl                                           ; $431e: $e1
	ret                                              ; $431f: $c9


Call_002_4320:
	ld hl, $c130                                     ; $4320: $21 $30 $c1
	dec [hl]                                         ; $4323: $35
	scf                                              ; $4324: $37
	ret nz                                           ; $4325: $c0

	inc l                                            ; $4326: $2c
	ld a, [hl-]                                      ; $4327: $3a
	ld [hl-], a                                      ; $4328: $32
	inc [hl]                                         ; $4329: $34
	ld a, [hl]                                       ; $432a: $7e
	cp $04                                           ; $432b: $fe $04
	jr nc, jr_002_4341                               ; $432d: $30 $12

	add a                                            ; $432f: $87
	add [hl]                                         ; $4330: $86
	call $1327                                       ; $4331: $cd $27 $13
	ld a, [de]                                       ; $4334: $1a
	ldh [hDisp0_BGP], a                                     ; $4335: $e0 $85
	inc de                                           ; $4337: $13
	ld a, [de]                                       ; $4338: $1a
	ldh [hDisp0_OBP0], a                                     ; $4339: $e0 $86
	inc de                                           ; $433b: $13
	ld a, [de]                                       ; $433c: $1a
	ldh [hDisp0_OBP1], a                                     ; $433d: $e0 $87
	scf                                              ; $433f: $37
	ret                                              ; $4340: $c9


jr_002_4341:
	ret                                              ; $4341: $c9


	nop                                              ; $4342: $00
	nop                                              ; $4343: $00
	nop                                              ; $4344: $00
	ld b, b                                          ; $4345: $40
	ld b, b                                          ; $4346: $40
	ld b, b                                          ; $4347: $40
	sub b                                            ; $4348: $90
	sub b                                            ; $4349: $90
	sub b                                            ; $434a: $90
	db $e4                                           ; $434b: $e4
	db $e4                                           ; $434c: $e4
	ret nc                                           ; $434d: $d0

	ld sp, hl                                        ; $434e: $f9
	ld sp, hl                                        ; $434f: $f9
	push hl                                          ; $4350: $e5
	cp $fe                                           ; $4351: $fe $fe
	ld a, [rIE]                                    ; $4353: $fa $ff $ff
	rst $38                                          ; $4356: $ff
	cp $fe                                           ; $4357: $fe $fe
	ld a, [$f9f9]                                    ; $4359: $fa $f9 $f9
	push hl                                          ; $435c: $e5
	db $e4                                           ; $435d: $e4
	db $e4                                           ; $435e: $e4
	ret nc                                           ; $435f: $d0

	sub b                                            ; $4360: $90
	sub b                                            ; $4361: $90
	sub b                                            ; $4362: $90
	ld b, b                                          ; $4363: $40
	ld b, b                                          ; $4364: $40
	ld b, b                                          ; $4365: $40
	nop                                              ; $4366: $00
	nop                                              ; $4367: $00
	nop                                              ; $4368: $00
	nop                                              ; $4369: $00
	nop                                              ; $436a: $00
	nop                                              ; $436b: $00
	nop                                              ; $436c: $00
	nop                                              ; $436d: $00
	nop                                              ; $436e: $00
	db $fc                                           ; $436f: $fc
	db $e4                                           ; $4370: $e4
	ret nc                                           ; $4371: $d0

	db $fd                                           ; $4372: $fd
	ld sp, hl                                        ; $4373: $f9
	push hl                                          ; $4374: $e5
	cp $fe                                           ; $4375: $fe $fe
	ld a, [rIE]                                    ; $4377: $fa $ff $ff
	rst $38                                          ; $437a: $ff
	cp $fe                                           ; $437b: $fe $fe
	ld a, [$f9fd]                                    ; $437d: $fa $fd $f9
	push hl                                          ; $4380: $e5
	db $fc                                           ; $4381: $fc
	db $e4                                           ; $4382: $e4
	ret nc                                           ; $4383: $d0

	xor b                                            ; $4384: $a8
	sub b                                            ; $4385: $90
	sub b                                            ; $4386: $90
	ld d, h                                          ; $4387: $54
	ld b, b                                          ; $4388: $40
	ld b, b                                          ; $4389: $40
	nop                                              ; $438a: $00
	nop                                              ; $438b: $00
	nop                                              ; $438c: $00
	ld d, h                                          ; $438d: $54
	ld b, b                                          ; $438e: $40
	ld b, b                                          ; $438f: $40
	xor b                                            ; $4390: $a8
	sub b                                            ; $4391: $90
	sub b                                            ; $4392: $90
	db $fc                                           ; $4393: $fc
	db $e4                                           ; $4394: $e4
	ret nc                                           ; $4395: $d0

	ld hl, $c130                                     ; $4396: $21 $30 $c1
	dec [hl]                                         ; $4399: $35
	ret nz                                           ; $439a: $c0

	ld [hl], $08                                     ; $439b: $36 $08
	ldh a, [hDisp0_BGP]                                     ; $439d: $f0 $85
	and $03                                          ; $439f: $e6 $03
	ret z                                            ; $43a1: $c8

	inc a                                            ; $43a2: $3c
	and $03                                          ; $43a3: $e6 $03
	ret z                                            ; $43a5: $c8

	or $0c                                           ; $43a6: $f6 $0c
	ldh [hDisp0_BGP], a                                     ; $43a8: $e0 $85
	ret                                              ; $43aa: $c9


	ld d, a                                          ; $43ab: $57
	ld hl, $d500                                     ; $43ac: $21 $00 $d5
	ld e, $ff                                        ; $43af: $1e $ff
	call $d837                                       ; $43b1: $cd $37 $d8
	xor a                                            ; $43b4: $af
	ld [$c10e], a                                    ; $43b5: $ea $0e $c1
	ret                                              ; $43b8: $c9


	ld d, a                                          ; $43b9: $57
	ld hl, $d540                                     ; $43ba: $21 $40 $d5
	ld e, $ff                                        ; $43bd: $1e $ff
	call $d85a                                       ; $43bf: $cd $5a $d8
	xor a                                            ; $43c2: $af
	ld [$c10f], a                                    ; $43c3: $ea $0f $c1
	ret                                              ; $43c6: $c9


jr_002_43c7:
	ld a, e                                          ; $43c7: $7b
	rlca                                             ; $43c8: $07
	rlca                                             ; $43c9: $07
	rlca                                             ; $43ca: $07
	or $80                                           ; $43cb: $f6 $80
	ldh [rBCPS], a                                   ; $43cd: $e0 $68
	ld bc, $ff69                                     ; $43cf: $01 $69 $ff
	ld a, [hl+]                                      ; $43d2: $2a
	ld [bc], a                                       ; $43d3: $02
	ld a, [hl+]                                      ; $43d4: $2a
	ld [bc], a                                       ; $43d5: $02
	ld a, [hl+]                                      ; $43d6: $2a
	ld [bc], a                                       ; $43d7: $02
	ld a, [hl+]                                      ; $43d8: $2a
	ld [bc], a                                       ; $43d9: $02
	ld a, [hl+]                                      ; $43da: $2a
	ld [bc], a                                       ; $43db: $02
	ld a, [hl+]                                      ; $43dc: $2a
	ld [bc], a                                       ; $43dd: $02
	ld a, [hl+]                                      ; $43de: $2a
	ld [bc], a                                       ; $43df: $02
	ld a, [hl+]                                      ; $43e0: $2a
	ld [bc], a                                       ; $43e1: $02
	ld bc, $0008                                     ; $43e2: $01 $08 $00

jr_002_43e5:
	inc e                                            ; $43e5: $1c
	srl d                                            ; $43e6: $cb $3a
	jr c, jr_002_43c7                                ; $43e8: $38 $dd

	ret z                                            ; $43ea: $c8

	add hl, bc                                       ; $43eb: $09
	jr jr_002_43e5                                   ; $43ec: $18 $f7

jr_002_43ee:
	ld a, e                                          ; $43ee: $7b
	rlca                                             ; $43ef: $07
	rlca                                             ; $43f0: $07
	rlca                                             ; $43f1: $07
	or $82                                           ; $43f2: $f6 $82
	ldh [rOCPS], a                                   ; $43f4: $e0 $6a
	ld bc, $ff6b                                     ; $43f6: $01 $6b $ff
	ld a, [hl+]                                      ; $43f9: $2a
	ld [bc], a                                       ; $43fa: $02
	ld a, [hl+]                                      ; $43fb: $2a
	ld [bc], a                                       ; $43fc: $02
	ld a, [hl+]                                      ; $43fd: $2a
	ld [bc], a                                       ; $43fe: $02
	ld a, [hl+]                                      ; $43ff: $2a
	ld [bc], a                                       ; $4400: $02
	ld a, [hl+]                                      ; $4401: $2a
	ld [bc], a                                       ; $4402: $02
	ld a, [hl+]                                      ; $4403: $2a
	ld [bc], a                                       ; $4404: $02
	ld bc, $0006                                     ; $4405: $01 $06 $00

jr_002_4408:
	inc e                                            ; $4408: $1c
	srl d                                            ; $4409: $cb $3a
	jr c, jr_002_43ee                                ; $440b: $38 $e1

	ret z                                            ; $440d: $c8

	add hl, bc                                       ; $440e: $09
	jr jr_002_4408                                   ; $440f: $18 $f7

	push hl                                          ; $4411: $e5
	ld h, $d0                                        ; $4412: $26 $d0
	call $d992                                       ; $4414: $cd $92 $d9
	ld h, $d1                                        ; $4417: $26 $d1
	call $d992                                       ; $4419: $cd $92 $d9
	ld h, $d2                                        ; $441c: $26 $d2
	call $d992                                       ; $441e: $cd $92 $d9
	ld h, $d3                                        ; $4421: $26 $d3
	call $d992                                       ; $4423: $cd $92 $d9
	ld h, $d4                                        ; $4426: $26 $d4
	call $d992                                       ; $4428: $cd $92 $d9
	pop hl                                           ; $442b: $e1
	ret                                              ; $442c: $c9


	ld h, $d0                                        ; $442d: $26 $d0
	call $d993                                       ; $442f: $cd $93 $d9
	jp $d89f                                         ; $4432: $c3 $9f $d8


	ld h, $d4                                        ; $4435: $26 $d4
	jr jr_002_4447                                   ; $4437: $18 $0e

	ld h, $d3                                        ; $4439: $26 $d3
	jr jr_002_4447                                   ; $443b: $18 $0a

	ld h, $d2                                        ; $443d: $26 $d2
	jr jr_002_4447                                   ; $443f: $18 $06

	ld h, $d1                                        ; $4441: $26 $d1
	jr jr_002_4447                                   ; $4443: $18 $02

	ld h, $d0                                        ; $4445: $26 $d0

jr_002_4447:
	call $d992                                       ; $4447: $cd $92 $d9
	push hl                                          ; $444a: $e5
	call $d8ad                                       ; $444b: $cd $ad $d8
	pop hl                                           ; $444e: $e1
	ld l, $00                                        ; $444f: $2e $00
	ld [hl], d                                       ; $4451: $72

Call_002_4452:
	ld l, $04                                        ; $4452: $2e $04
	ld [hl], c                                       ; $4454: $71
	inc hl                                           ; $4455: $23
	ld [hl], b                                       ; $4456: $70
	ret                                              ; $4457: $c9


	ld d, $02                                        ; $4458: $16 $02
	ld hl, $6681                                     ; $445a: $21 $81 $66
	call wCpHLtoBC                                       ; $445d: $cd $86 $ce
	ret nc                                           ; $4460: $d0

	inc d                                            ; $4461: $14
	ld hl, $67ad                                     ; $4462: $21 $ad $67
	call wCpHLtoBC                                       ; $4465: $cd $86 $ce
	ret nc                                           ; $4468: $d0

	inc d                                            ; $4469: $14
	ld hl, $67c9                                     ; $446a: $21 $c9 $67
	call wCpHLtoBC                                       ; $446d: $cd $86 $ce
	ret nc                                           ; $4470: $d0

	inc d                                            ; $4471: $14
	ld hl, $67e5                                     ; $4472: $21 $e5 $67
	call wCpHLtoBC                                       ; $4475: $cd $86 $ce
	ret nc                                           ; $4478: $d0

	inc d                                            ; $4479: $14
	ld hl, $6803                                     ; $447a: $21 $03 $68
	call wCpHLtoBC                                       ; $447d: $cd $86 $ce
	ret nc                                           ; $4480: $d0

	inc d                                            ; $4481: $14
	ld hl, $6825                                     ; $4482: $21 $25 $68
	call wCpHLtoBC                                       ; $4485: $cd $86 $ce
	ret nc                                           ; $4488: $d0

	inc d                                            ; $4489: $14
	ret                                              ; $448a: $c9


	ld h, $d4                                        ; $448b: $26 $d4
	jr jr_002_449d                                   ; $448d: $18 $0e

	ld h, $d3                                        ; $448f: $26 $d3
	jr jr_002_449d                                   ; $4491: $18 $0a

	ld h, $d2                                        ; $4493: $26 $d2
	jr jr_002_449d                                   ; $4495: $18 $06

	ld h, $d1                                        ; $4497: $26 $d1
	jr jr_002_449d                                   ; $4499: $18 $02

	ld h, $d0                                        ; $449b: $26 $d0

jr_002_449d:
	push af                                          ; $449d: $f5
	call $d992                                       ; $449e: $cd $92 $d9
	pop af                                           ; $44a1: $f1
	ld l, $00                                        ; $44a2: $2e $00
	ld [hl], $09                                     ; $44a4: $36 $09
	ld l, $04                                        ; $44a6: $2e $04
	ld [hl], a                                       ; $44a8: $77
	ret                                              ; $44a9: $c9


	ld h, $d4                                        ; $44aa: $26 $d4
	jr jr_002_44bc                                   ; $44ac: $18 $0e

	ld h, $d3                                        ; $44ae: $26 $d3
	jr jr_002_44bc                                   ; $44b0: $18 $0a

	ld h, $d2                                        ; $44b2: $26 $d2
	jr jr_002_44bc                                   ; $44b4: $18 $06

	ld h, $d1                                        ; $44b6: $26 $d1
	jr jr_002_44bc                                   ; $44b8: $18 $02

	ld h, $d0                                        ; $44ba: $26 $d0

jr_002_44bc:
	push af                                          ; $44bc: $f5
	call $d992                                       ; $44bd: $cd $92 $d9
	ld l, $06                                        ; $44c0: $2e $06
	pop af                                           ; $44c2: $f1
	ld [hl], a                                       ; $44c3: $77
	ld l, $04                                        ; $44c4: $2e $04
	ld [hl], c                                       ; $44c6: $71
	inc hl                                           ; $44c7: $23
	ld [hl], b                                       ; $44c8: $70
	ld l, $00                                        ; $44c9: $2e $00
	ld [hl], $01                                     ; $44cb: $36 $01
	ret                                              ; $44cd: $c9


	ld a, $ff                                        ; $44ce: $3e $ff
	ld [$c10e], a                                    ; $44d0: $ea $0e $c1
	ld [$c10f], a                                    ; $44d3: $ea $0f $c1
	ret                                              ; $44d6: $c9


	xor a                                            ; $44d7: $af
	ld [$c10e], a                                    ; $44d8: $ea $0e $c1
	ld [$c10f], a                                    ; $44db: $ea $0f $c1
	ret                                              ; $44de: $c9


	push bc                                          ; $44df: $c5
	push hl                                          ; $44e0: $e5
	push de                                          ; $44e1: $d5
	push af                                          ; $44e2: $f5
	and $f0                                          ; $44e3: $e6 $f0
	swap a                                           ; $44e5: $cb $37
	ld hl, $d500                                     ; $44e7: $21 $00 $d5
	add h                                            ; $44ea: $84
	ld h, a                                          ; $44eb: $67
	pop af                                           ; $44ec: $f1
	and $0f                                          ; $44ed: $e6 $0f
	ld de, $d500                                     ; $44ef: $11 $00 $d5
	add d                                            ; $44f2: $82
	ld d, a                                          ; $44f3: $57
	ld c, $70                                        ; $44f4: $0e $70

jr_002_44f6:
	ld a, [hl+]                                      ; $44f6: $2a
	ld [de], a                                       ; $44f7: $12
	inc de                                           ; $44f8: $13
	dec c                                            ; $44f9: $0d
	jr nz, jr_002_44f6                               ; $44fa: $20 $fa

	pop de                                           ; $44fc: $d1
	pop hl                                           ; $44fd: $e1
	pop bc                                           ; $44fe: $c1
	ret                                              ; $44ff: $c9


	push bc                                          ; $4500: $c5
	push hl                                          ; $4501: $e5
	push de                                          ; $4502: $d5
	push af                                          ; $4503: $f5
	and $f0                                          ; $4504: $e6 $f0
	swap a                                           ; $4506: $cb $37
	call $dbb0                                       ; $4508: $cd $b0 $db
	ld l, e                                          ; $450b: $6b
	ld h, d                                          ; $450c: $62
	inc d                                            ; $450d: $14
	inc d                                            ; $450e: $14
	pop af                                           ; $450f: $f1
	and $0f                                          ; $4510: $e6 $0f
	sub b                                            ; $4512: $90
	inc a                                            ; $4513: $3c
	ld c, a                                          ; $4514: $4f
	call $d974                                       ; $4515: $cd $74 $d9
	pop de                                           ; $4518: $d1
	pop hl                                           ; $4519: $e1
	pop bc                                           ; $451a: $c1
	ret                                              ; $451b: $c9


jr_002_451c:
	inc b                                            ; $451c: $04
	dec c                                            ; $451d: $0d
	ret z                                            ; $451e: $c8

	ld a, [hl+]                                      ; $451f: $2a
	ld [de], a                                       ; $4520: $12
	inc de                                           ; $4521: $13
	ld a, [hl+]                                      ; $4522: $2a
	ld [de], a                                       ; $4523: $12
	inc de                                           ; $4524: $13
	ld a, [hl+]                                      ; $4525: $2a
	ld [de], a                                       ; $4526: $12
	inc de                                           ; $4527: $13
	ld a, [hl+]                                      ; $4528: $2a
	ld [de], a                                       ; $4529: $12
	inc de                                           ; $452a: $13
	ld a, [hl+]                                      ; $452b: $2a
	ld [de], a                                       ; $452c: $12
	inc de                                           ; $452d: $13
	ld a, [hl+]                                      ; $452e: $2a
	ld [de], a                                       ; $452f: $12
	inc de                                           ; $4530: $13
	bit 3, b                                         ; $4531: $cb $58
	jr nz, jr_002_451c                               ; $4533: $20 $e7

	ld a, [hl+]                                      ; $4535: $2a
	ld [de], a                                       ; $4536: $12
	inc de                                           ; $4537: $13
	ld a, [hl+]                                      ; $4538: $2a
	ld [de], a                                       ; $4539: $12
	inc de                                           ; $453a: $13
	jr jr_002_451c                                   ; $453b: $18 $df

	xor a                                            ; $453d: $af
	push bc                                          ; $453e: $c5
	push hl                                          ; $453f: $e5
	ld l, $00                                        ; $4540: $2e $00
	ld c, $10                                        ; $4542: $0e $10

jr_002_4544:
	ld [hl+], a                                      ; $4544: $22
	dec c                                            ; $4545: $0d
	jr nz, jr_002_4544                               ; $4546: $20 $fc

	pop hl                                           ; $4548: $e1
	pop bc                                           ; $4549: $c1
	ret                                              ; $454a: $c9


	ld hl, $d000                                     ; $454b: $21 $00 $d0

jr_002_454e:
	ld l, $00                                        ; $454e: $2e $00
	ld a, [hl]                                       ; $4550: $7e
	or a                                             ; $4551: $b7
	push hl                                          ; $4552: $e5
	call nz, $d9b3                                   ; $4553: $c4 $b3 $d9
	pop hl                                           ; $4556: $e1
	inc h                                            ; $4557: $24
	ld a, h                                          ; $4558: $7c
	cp $d5                                           ; $4559: $fe $d5
	jr c, jr_002_454e                                ; $455b: $38 $f1

	ret                                              ; $455d: $c9


	push af                                          ; $455e: $f5
	ld a, h                                          ; $455f: $7c
	ld [$c0f8], a                                    ; $4560: $ea $f8 $c0
	ld a, l                                          ; $4563: $7d
	ld [$c0f9], a                                    ; $4564: $ea $f9 $c0
	pop af                                           ; $4567: $f1
	dec a                                            ; $4568: $3d
	call wJumpTable                                       ; $4569: $cd $80 $cf
	db $d3                                           ; $456c: $d3
	reti                                             ; $456d: $d9


	db $f4                                           ; $456e: $f4
	reti                                             ; $456f: $d9


	or c                                             ; $4570: $b1
	jp c, $db20                                      ; $4571: $da $20 $db

	dec hl                                           ; $4574: $2b
	call c, $db20                                    ; $4575: $dc $20 $db
	dec hl                                           ; $4578: $2b
	call c, $dc2b                                    ; $4579: $dc $2b $dc
	ld b, b                                          ; $457c: $40
	db $dd                                           ; $457d: $dd
	call $1843                                       ; $457e: $cd $43 $18
	ld a, $10                                        ; $4581: $3e $10
	call $0783                                       ; $4583: $cd $83 $07
	ld l, $06                                        ; $4586: $2e $06
	ld a, [hl]                                       ; $4588: $7e
	push af                                          ; $4589: $f5
	ld l, $04                                        ; $458a: $2e $04
	ld a, [hl+]                                      ; $458c: $2a
	ld h, [hl]                                       ; $458d: $66
	ld l, a                                          ; $458e: $6f
	pop af                                           ; $458f: $f1
	call $da27                                       ; $4590: $cd $27 $da
	call $da62                                       ; $4593: $cd $62 $da
	call $1843                                       ; $4596: $cd $43 $18
	call $d992                                       ; $4599: $cd $92 $d9
	jp $077b                                         ; $459c: $c3 $7b $07


	call $1843                                       ; $459f: $cd $43 $18
	ld a, $10                                        ; $45a2: $3e $10
	call $0783                                       ; $45a4: $cd $83 $07
	ld l, $04                                        ; $45a7: $2e $04
	ld e, [hl]                                       ; $45a9: $5e
	inc hl                                           ; $45aa: $23
	ld d, [hl]                                       ; $45ab: $56

jr_002_45ac:
	ld a, [de]                                       ; $45ac: $1a
	ld l, a                                          ; $45ad: $6f
	inc de                                           ; $45ae: $13
	ld a, [de]                                       ; $45af: $1a
	ld h, a                                          ; $45b0: $67
	inc de                                           ; $45b1: $13
	call $da1f                                       ; $45b2: $cd $1f $da
	jr z, jr_002_45c1                                ; $45b5: $28 $0a

	ld a, $ff                                        ; $45b7: $3e $ff
	call $da27                                       ; $45b9: $cd $27 $da
	call $da62                                       ; $45bc: $cd $62 $da
	jr jr_002_45ac                                   ; $45bf: $18 $eb

jr_002_45c1:
	call $1843                                       ; $45c1: $cd $43 $18
	call $d992                                       ; $45c4: $cd $92 $d9
	jp $077b                                         ; $45c7: $c3 $7b $07


	ld a, h                                          ; $45ca: $7c
	cp $00                                           ; $45cb: $fe $00
	ret nz                                           ; $45cd: $c0

	ld a, l                                          ; $45ce: $7d
	cp $00                                           ; $45cf: $fe $00
	ret                                              ; $45d1: $c9


	push de                                          ; $45d2: $d5
	push af                                          ; $45d3: $f5
	ld a, [hl]                                       ; $45d4: $7e
	and $f0                                          ; $45d5: $e6 $f0
	swap a                                           ; $45d7: $cb $37
	ld c, a                                          ; $45d9: $4f
	ld d, a                                          ; $45da: $57
	ld a, [hl+]                                      ; $45db: $2a
	and $0f                                          ; $45dc: $e6 $0f
	sub c                                            ; $45de: $91
	inc a                                            ; $45df: $3c
	ld bc, $0000                                     ; $45e0: $01 $00 $00

jr_002_45e3:
	scf                                              ; $45e3: $37
	rl c                                             ; $45e4: $cb $11
	rl b                                             ; $45e6: $cb $10
	dec a                                            ; $45e8: $3d
	jr nz, jr_002_45e3                               ; $45e9: $20 $f8

	pop af                                           ; $45eb: $f1
	inc a                                            ; $45ec: $3c
	jr nz, jr_002_45f1                               ; $45ed: $20 $02

	ld a, d                                          ; $45ef: $7a
	inc a                                            ; $45f0: $3c

jr_002_45f1:
	dec a                                            ; $45f1: $3d
	call nz, $da5a                                   ; $45f2: $c4 $5a $da
	ld a, [$c10e]                                    ; $45f5: $fa $0e $c1
	or c                                             ; $45f8: $b1
	ld [$c10e], a                                    ; $45f9: $ea $0e $c1
	ld a, [$c10f]                                    ; $45fc: $fa $0f $c1
	or b                                             ; $45ff: $b0
	ld [$c10f], a                                    ; $4600: $ea $0f $c1
	pop de                                           ; $4603: $d1
	ret                                              ; $4604: $c9


jr_002_4605:
	sla c                                            ; $4605: $cb $21
	rl b                                             ; $4607: $cb $10
	dec a                                            ; $4609: $3d
	jr nz, jr_002_4605                               ; $460a: $20 $f9

	ret                                              ; $460c: $c9


	push de                                          ; $460d: $d5
	ld de, $d500                                     ; $460e: $11 $00 $d5
	call $da89                                       ; $4611: $cd $89 $da
	ld de, $d540                                     ; $4614: $11 $40 $d5
	call $daa6                                       ; $4617: $cd $a6 $da
	pop de                                           ; $461a: $d1
	ret                                              ; $461b: $c9


jr_002_461c:
	ld a, [hl+]                                      ; $461c: $2a
	ld [de], a                                       ; $461d: $12
	inc de                                           ; $461e: $13
	ld a, [hl+]                                      ; $461f: $2a
	ld [de], a                                       ; $4620: $12
	inc de                                           ; $4621: $13
	ld a, [hl+]                                      ; $4622: $2a
	ld [de], a                                       ; $4623: $12
	inc de                                           ; $4624: $13
	ld a, [hl+]                                      ; $4625: $2a
	ld [de], a                                       ; $4626: $12
	inc de                                           ; $4627: $13
	ld a, [hl+]                                      ; $4628: $2a
	ld [de], a                                       ; $4629: $12
	inc de                                           ; $462a: $13
	ld a, [hl+]                                      ; $462b: $2a
	ld [de], a                                       ; $462c: $12
	inc de                                           ; $462d: $13
	ld a, [hl+]                                      ; $462e: $2a
	ld [de], a                                       ; $462f: $12
	inc de                                           ; $4630: $13
	ld a, [hl+]                                      ; $4631: $2a
	ld [de], a                                       ; $4632: $12
	inc de                                           ; $4633: $13

jr_002_4634:
	srl c                                            ; $4634: $cb $39
	jr c, jr_002_461c                                ; $4636: $38 $e4

	ret z                                            ; $4638: $c8

	ld a, $08                                        ; $4639: $3e $08
	add e                                            ; $463b: $83
	ld e, a                                          ; $463c: $5f
	jr jr_002_4634                                   ; $463d: $18 $f5

jr_002_463f:
	ld a, [hl+]                                      ; $463f: $2a
	ld [de], a                                       ; $4640: $12
	inc de                                           ; $4641: $13
	ld a, [hl+]                                      ; $4642: $2a
	ld [de], a                                       ; $4643: $12
	inc de                                           ; $4644: $13
	ld a, [hl+]                                      ; $4645: $2a
	ld [de], a                                       ; $4646: $12
	inc de                                           ; $4647: $13
	ld a, [hl+]                                      ; $4648: $2a
	ld [de], a                                       ; $4649: $12
	inc de                                           ; $464a: $13
	ld a, [hl+]                                      ; $464b: $2a
	ld [de], a                                       ; $464c: $12
	inc de                                           ; $464d: $13
	ld a, [hl+]                                      ; $464e: $2a
	ld [de], a                                       ; $464f: $12
	inc de                                           ; $4650: $13

jr_002_4651:
	srl b                                            ; $4651: $cb $38
	jr c, jr_002_463f                                ; $4653: $38 $ea

	ret z                                            ; $4655: $c8

	ld a, $06                                        ; $4656: $3e $06
	add e                                            ; $4658: $83
	ld e, a                                          ; $4659: $5f
	jr jr_002_4651                                   ; $465a: $18 $f5

	ld a, $10                                        ; $465c: $3e $10
	call $0783                                       ; $465e: $cd $83 $07
	call $1843                                       ; $4661: $cd $43 $18
	ld d, h                                          ; $4664: $54
	ld e, l                                          ; $4665: $5d
	ld e, $02                                        ; $4666: $1e $02
	ld a, [de]                                       ; $4668: $1a
	or a                                             ; $4669: $b7
	jr z, jr_002_4671                                ; $466a: $28 $05

	dec a                                            ; $466c: $3d
	ld [de], a                                       ; $466d: $12
	jp $077b                                         ; $466e: $c3 $7b $07


jr_002_4671:
	ld e, $04                                        ; $4671: $1e $04
	ld a, [de]                                       ; $4673: $1a
	ld l, a                                          ; $4674: $6f
	inc de                                           ; $4675: $13
	ld a, [de]                                       ; $4676: $1a
	ld h, a                                          ; $4677: $67
	push hl                                          ; $4678: $e5
	ld a, [hl]                                       ; $4679: $7e
	ld e, $02                                        ; $467a: $1e $02
	ld [de], a                                       ; $467c: $12
	ld e, $08                                        ; $467d: $1e $08
	ld a, [de]                                       ; $467f: $1a
	inc a                                            ; $4680: $3c
	inc a                                            ; $4681: $3c
	ld [de], a                                       ; $4682: $12
	call $ce99                                       ; $4683: $cd $99 $ce
	inc hl                                           ; $4686: $23
	inc hl                                           ; $4687: $23
	ld a, [hl-]                                      ; $4688: $3a
	ld c, a                                          ; $4689: $4f
	ld a, [hl-]                                      ; $468a: $3a
	ld l, [hl]                                       ; $468b: $6e
	ld h, a                                          ; $468c: $67
	call $da1f                                       ; $468d: $cd $1f $da
	jr z, jr_002_46a2                                ; $4690: $28 $10

	ld a, c                                          ; $4692: $79
	call $da27                                       ; $4693: $cd $27 $da
	call $da62                                       ; $4696: $cd $62 $da
	ld e, $08                                        ; $4699: $1e $08
	ld a, [de]                                       ; $469b: $1a
	inc a                                            ; $469c: $3c
	ld [de], a                                       ; $469d: $12
	pop af                                           ; $469e: $f1
	jp $dab6                                         ; $469f: $c3 $b6 $da


jr_002_46a2:
	ld e, $06                                        ; $46a2: $1e $06
	ld a, [de]                                       ; $46a4: $1a
	inc a                                            ; $46a5: $3c
	ld [de], a                                       ; $46a6: $12
	xor a                                            ; $46a7: $af
	ld e, $08                                        ; $46a8: $1e $08
	ld [de], a                                       ; $46aa: $12
	pop hl                                           ; $46ab: $e1
	push hl                                          ; $46ac: $e5
	inc hl                                           ; $46ad: $23
	ld a, [hl]                                       ; $46ae: $7e
	or a                                             ; $46af: $b7
	jr z, jr_002_46c1                                ; $46b0: $28 $0f

	cp $80                                           ; $46b2: $fe $80
	jp nc, $dad2                                     ; $46b4: $d2 $d2 $da

	and $7f                                          ; $46b7: $e6 $7f
	ld b, a                                          ; $46b9: $47
	ld e, $06                                        ; $46ba: $1e $06
	ld a, [de]                                       ; $46bc: $1a
	cp b                                             ; $46bd: $b8
	jp c, $dad2                                      ; $46be: $da $d2 $da

jr_002_46c1:
	pop af                                           ; $46c1: $f1
	ld h, d                                          ; $46c2: $62
	ld l, $00                                        ; $46c3: $2e $00
	call $07ef                                       ; $46c5: $cd $ef $07
	jp $d992                                         ; $46c8: $c3 $92 $d9


	call $1843                                       ; $46cb: $cd $43 $18
	ld a, $10                                        ; $46ce: $3e $10
	call $0783                                       ; $46d0: $cd $83 $07
	ld l, $02                                        ; $46d3: $2e $02
	ld a, [hl]                                       ; $46d5: $7e
	or a                                             ; $46d6: $b7
	jr z, jr_002_46de                                ; $46d7: $28 $05

	dec a                                            ; $46d9: $3d
	ld [hl], a                                       ; $46da: $77
	jp $077b                                         ; $46db: $c3 $7b $07


jr_002_46de:
	ld l, $06                                        ; $46de: $2e $06
	inc [hl]                                         ; $46e0: $34
	ld a, [hl]                                       ; $46e1: $7e
	cp $20                                           ; $46e2: $fe $20
	jr c, jr_002_46ef                                ; $46e4: $38 $09

	call $1843                                       ; $46e6: $cd $43 $18
	call $07ef                                       ; $46e9: $cd $ef $07
	jp $d992                                         ; $46ec: $c3 $92 $d9


jr_002_46ef:
	ld l, $04                                        ; $46ef: $2e $04
	ld e, [hl]                                       ; $46f1: $5e
	inc hl                                           ; $46f2: $23
	ld d, [hl]                                       ; $46f3: $56
	ld l, $02                                        ; $46f4: $2e $02
	ld a, [de]                                       ; $46f6: $1a
	and $0f                                          ; $46f7: $e6 $0f
	ld [hl], a                                       ; $46f9: $77
	ld a, [de]                                       ; $46fa: $1a
	and $f0                                          ; $46fb: $e6 $f0
	swap a                                           ; $46fd: $cb $37
	inc a                                            ; $46ff: $3c
	ld b, a                                          ; $4700: $47
	ld l, $06                                        ; $4701: $2e $06
	ld c, [hl]                                       ; $4703: $4e
	dec a                                            ; $4704: $3d
	add c                                            ; $4705: $81
	ld [hl], a                                       ; $4706: $77
	inc de                                           ; $4707: $13
	ld h, d                                          ; $4708: $62
	ld l, e                                          ; $4709: $6b
	ld a, $ff                                        ; $470a: $3e $ff
	push bc                                          ; $470c: $c5
	call $da27                                       ; $470d: $cd $27 $da
	pop bc                                           ; $4710: $c1

jr_002_4711:
	push bc                                          ; $4711: $c5
	push de                                          ; $4712: $d5
	ld a, [de]                                       ; $4713: $1a
	call $db8b                                       ; $4714: $cd $8b $db

jr_002_4717:
	push hl                                          ; $4717: $e5
	call $1843                                       ; $4718: $cd $43 $18
	ld l, $00                                        ; $471b: $2e $00
	ld a, [hl]                                       ; $471d: $7e
	pop hl                                           ; $471e: $e1
	cp $04                                           ; $471f: $fe $04
	call z, $dbc8                                    ; $4721: $cc $c8 $db
	call nz, $dbfa                                   ; $4724: $c4 $fa $db
	inc hl                                           ; $4727: $23
	inc hl                                           ; $4728: $23
	call wCpHLtoDE                                       ; $4729: $cd $80 $ce
	jr c, jr_002_4717                                ; $472c: $38 $e9

	pop de                                           ; $472e: $d1
	pop bc                                           ; $472f: $c1
	dec b                                            ; $4730: $05
	jr nz, jr_002_4711                               ; $4731: $20 $de

	jp $077b                                         ; $4733: $c3 $7b $07


	push bc                                          ; $4736: $c5
	ld hl, $d500                                     ; $4737: $21 $00 $d5
	push af                                          ; $473a: $f5
	and $f0                                          ; $473b: $e6 $f0
	swap a                                           ; $473d: $cb $37
	call $dbb0                                       ; $473f: $cd $b0 $db
	pop af                                           ; $4742: $f1

Jump_002_4743:
	push de                                          ; $4743: $d5
	and $0f                                          ; $4744: $e6 $0f
	bit 3, a                                         ; $4746: $cb $5f
	ld hl, $0008                                     ; $4748: $21 $08 $00
	jr z, jr_002_4750                                ; $474b: $28 $03

	ld hl, $0006                                     ; $474d: $21 $06 $00

jr_002_4750:
	push hl                                          ; $4750: $e5
	call $dbb0                                       ; $4751: $cd $b0 $db
	pop hl                                           ; $4754: $e1
	add hl, de                                       ; $4755: $19
	ld e, l                                          ; $4756: $5d
	ld d, h                                          ; $4757: $54
	pop hl                                           ; $4758: $e1

Jump_002_4759:
	pop bc                                           ; $4759: $c1
	ret                                              ; $475a: $c9


	ld b, a                                          ; $475b: $47
	ld de, $d500                                     ; $475c: $11 $00 $d5
	swap a                                           ; $475f: $cb $37
	srl a                                            ; $4761: $cb $3f
	bit 3, b                                         ; $4763: $cb $58
	jr z, jr_002_476c                                ; $4765: $28 $05

	ld de, $d510                                     ; $4767: $11 $10 $d5
	sub b                                            ; $476a: $90
	sub b                                            ; $476b: $90

jr_002_476c:
	add e                                            ; $476c: $83
	ld e, a                                          ; $476d: $5f
	ld a, $00                                        ; $476e: $3e $00
	adc d                                            ; $4770: $8a
	ld d, a                                          ; $4771: $57
	ret                                              ; $4772: $c9


	push af                                          ; $4773: $f5
	push de                                          ; $4774: $d5
	ld a, [hl]                                       ; $4775: $7e
	and $1f                                          ; $4776: $e6 $1f
	jr z, jr_002_477b                                ; $4778: $28 $01

	dec a                                            ; $477a: $3d

jr_002_477b:
	ld e, a                                          ; $477b: $5f
	ld a, [hl+]                                      ; $477c: $2a
	and $e0                                          ; $477d: $e6 $e0
	ld b, a                                          ; $477f: $47
	ld a, [hl]                                       ; $4780: $7e
	and $03                                          ; $4781: $e6 $03
	or b                                             ; $4783: $b0
	swap a                                           ; $4784: $cb $37
	jr z, jr_002_478a                                ; $4786: $28 $02

	dec a                                            ; $4788: $3d
	dec a                                            ; $4789: $3d

jr_002_478a:
	swap a                                           ; $478a: $cb $37
	ld d, a                                          ; $478c: $57
	and $e0                                          ; $478d: $e6 $e0
	or e                                             ; $478f: $b3
	ld e, a                                          ; $4790: $5f
	ld a, d                                          ; $4791: $7a
	and $03                                          ; $4792: $e6 $03
	ld d, a                                          ; $4794: $57
	ld a, [hl]                                       ; $4795: $7e
	and $7c                                          ; $4796: $e6 $7c
	jr z, jr_002_479c                                ; $4798: $28 $02

	sub $04                                          ; $479a: $d6 $04

jr_002_479c:
	and $7c                                          ; $479c: $e6 $7c
	or d                                             ; $479e: $b2
	ld [hl], a                                       ; $479f: $77
	dec hl                                           ; $47a0: $2b
	ld [hl], e                                       ; $47a1: $73
	pop de                                           ; $47a2: $d1
	pop af                                           ; $47a3: $f1
	ret                                              ; $47a4: $c9


	push af                                          ; $47a5: $f5
	push de                                          ; $47a6: $d5
	ld a, [hl]                                       ; $47a7: $7e
	and $1f                                          ; $47a8: $e6 $1f
	cp $1f                                           ; $47aa: $fe $1f
	jr z, jr_002_47af                                ; $47ac: $28 $01

	inc a                                            ; $47ae: $3c

jr_002_47af:
	ld e, a                                          ; $47af: $5f
	ld a, [hl+]                                      ; $47b0: $2a
	and $e0                                          ; $47b1: $e6 $e0
	ld b, a                                          ; $47b3: $47
	ld a, [hl]                                       ; $47b4: $7e
	and $03                                          ; $47b5: $e6 $03
	or b                                             ; $47b7: $b0
	swap a                                           ; $47b8: $cb $37
	cp $3e                                           ; $47ba: $fe $3e
	jr z, jr_002_47c0                                ; $47bc: $28 $02

	inc a                                            ; $47be: $3c
	inc a                                            ; $47bf: $3c

jr_002_47c0:
	swap a                                           ; $47c0: $cb $37
	ld d, a                                          ; $47c2: $57
	and $e0                                          ; $47c3: $e6 $e0
	or e                                             ; $47c5: $b3
	ld e, a                                          ; $47c6: $5f
	ld a, d                                          ; $47c7: $7a
	and $03                                          ; $47c8: $e6 $03
	ld d, a                                          ; $47ca: $57
	ld a, [hl]                                       ; $47cb: $7e
	and $7c                                          ; $47cc: $e6 $7c
	cp $7c                                           ; $47ce: $fe $7c
	jr z, jr_002_479c                                ; $47d0: $28 $ca

	add $04                                          ; $47d2: $c6 $04
	jr jr_002_479c                                   ; $47d4: $18 $c6

	call $1843                                       ; $47d6: $cd $43 $18
	ld a, $10                                        ; $47d9: $3e $10
	call $0783                                       ; $47db: $cd $83 $07
	ld l, $02                                        ; $47de: $2e $02
	ld a, [hl]                                       ; $47e0: $7e
	or a                                             ; $47e1: $b7
	jr z, jr_002_47e9                                ; $47e2: $28 $05

	dec a                                            ; $47e4: $3d
	ld [hl], a                                       ; $47e5: $77
	jp $077b                                         ; $47e6: $c3 $7b $07


jr_002_47e9:
	ld l, $06                                        ; $47e9: $2e $06
	inc [hl]                                         ; $47eb: $34
	ld a, [hl]                                       ; $47ec: $7e
	cp $20                                           ; $47ed: $fe $20
	jr c, jr_002_47fa                                ; $47ef: $38 $09

	call $1843                                       ; $47f1: $cd $43 $18
	call $07ef                                       ; $47f4: $cd $ef $07
	jp $d992                                         ; $47f7: $c3 $92 $d9


jr_002_47fa:
	ld c, a                                          ; $47fa: $4f
	ld l, $04                                        ; $47fb: $2e $04
	ld e, [hl]                                       ; $47fd: $5e
	inc hl                                           ; $47fe: $23
	ld d, [hl]                                       ; $47ff: $56
	ld l, $02                                        ; $4800: $2e $02
	ld a, [de]                                       ; $4802: $1a
	and $0f                                          ; $4803: $e6 $0f
	ld [hl], a                                       ; $4805: $77
	ld a, [de]                                       ; $4806: $1a
	and $f0                                          ; $4807: $e6 $f0
	swap a                                           ; $4809: $cb $37
	inc a                                            ; $480b: $3c
	push af                                          ; $480c: $f5
	ld l, $06                                        ; $480d: $2e $06
	ld b, [hl]                                       ; $480f: $46
	dec a                                            ; $4810: $3d
	add b                                            ; $4811: $80
	ld [hl], a                                       ; $4812: $77
	inc de                                           ; $4813: $13
	push de                                          ; $4814: $d5
	dec c                                            ; $4815: $0d
	call z, $dc8d                                    ; $4816: $cc $8d $dc
	pop hl                                           ; $4819: $e1
	ld a, $ff                                        ; $481a: $3e $ff
	call $da27                                       ; $481c: $cd $27 $da
	pop af                                           ; $481f: $f1

jr_002_4820:
	push af                                          ; $4820: $f5
	push de                                          ; $4821: $d5
	ld a, [de]                                       ; $4822: $1a
	call $db8b                                       ; $4823: $cd $8b $db

jr_002_4826:
	call $dca1                                       ; $4826: $cd $a1 $dc
	inc hl                                           ; $4829: $23
	inc hl                                           ; $482a: $23
	call wCpHLtoDE                                       ; $482b: $cd $80 $ce
	jr c, jr_002_4826                                ; $482e: $38 $f6

	pop de                                           ; $4830: $d1
	pop af                                           ; $4831: $f1
	dec a                                            ; $4832: $3d
	jr nz, jr_002_4820                               ; $4833: $20 $eb

	jp $077b                                         ; $4835: $c3 $7b $07


	ld l, $00                                        ; $4838: $2e $00
	ld a, [hl]                                       ; $483a: $7e
	cp $08                                           ; $483b: $fe $08
	ret z                                            ; $483d: $c8

	ld a, [de]                                       ; $483e: $1a
	call $d955                                       ; $483f: $cd $55 $d9
	ld a, [hl]                                       ; $4842: $7e
	cp $05                                           ; $4843: $fe $05
	ld a, [de]                                       ; $4845: $1a
	jp nz, $dd0e                                     ; $4846: $c2 $0e $dd

	jp $dcff                                         ; $4849: $c3 $ff $dc


	push af                                          ; $484c: $f5
	push de                                          ; $484d: $d5
	inc h                                            ; $484e: $24
	inc h                                            ; $484f: $24

Jump_002_4850:
	ld a, [hl]                                       ; $4850: $7e
	dec h                                            ; $4851: $25
	dec h                                            ; $4852: $25
	and $1f                                          ; $4853: $e6 $1f
	ld c, a                                          ; $4855: $4f
	ld a, [hl]                                       ; $4856: $7e
	and $1f                                          ; $4857: $e6 $1f
	cp c                                             ; $4859: $b9
	jr z, jr_002_4861                                ; $485a: $28 $05

	dec a                                            ; $485c: $3d
	jr nc, jr_002_4861                               ; $485d: $30 $02

	inc a                                            ; $485f: $3c
	inc a                                            ; $4860: $3c

jr_002_4861:
	inc h                                            ; $4861: $24
	inc h                                            ; $4862: $24
	ld e, a                                          ; $4863: $5f
	ld a, [hl+]                                      ; $4864: $2a
	and $e0                                          ; $4865: $e6 $e0
	ld b, a                                          ; $4867: $47
	ld a, [hl-]                                      ; $4868: $3a
	and $03                                          ; $4869: $e6 $03
	or b                                             ; $486b: $b0
	swap a                                           ; $486c: $cb $37
	ld c, a                                          ; $486e: $4f
	dec h                                            ; $486f: $25
	dec h                                            ; $4870: $25
	ld a, [hl+]                                      ; $4871: $2a
	and $e0                                          ; $4872: $e6 $e0
	ld b, a                                          ; $4874: $47
	ld a, [hl]                                       ; $4875: $7e
	and $03                                          ; $4876: $e6 $03
	or b                                             ; $4878: $b0
	swap a                                           ; $4879: $cb $37
	cp c                                             ; $487b: $b9
	jr z, jr_002_4884                                ; $487c: $28 $06

	dec a                                            ; $487e: $3d
	dec a                                            ; $487f: $3d
	jr nc, jr_002_4884                               ; $4880: $30 $02

	add $04                                          ; $4882: $c6 $04

jr_002_4884:
	swap a                                           ; $4884: $cb $37
	ld d, a                                          ; $4886: $57
	and $e0                                          ; $4887: $e6 $e0
	or e                                             ; $4889: $b3
	ld e, a                                          ; $488a: $5f
	ld a, d                                          ; $488b: $7a
	and $03                                          ; $488c: $e6 $03
	ld d, a                                          ; $488e: $57
	inc h                                            ; $488f: $24
	inc h                                            ; $4890: $24
	ld a, [hl]                                       ; $4891: $7e
	and $7c                                          ; $4892: $e6 $7c
	ld c, a                                          ; $4894: $4f
	dec h                                            ; $4895: $25
	dec h                                            ; $4896: $25
	ld a, [hl]                                       ; $4897: $7e
	and $7c                                          ; $4898: $e6 $7c
	cp c                                             ; $489a: $b9
	jp z, $dbf1                                      ; $489b: $ca $f1 $db

	jr c, jr_002_48a5                                ; $489e: $38 $05

	sub $04                                          ; $48a0: $d6 $04
	jp $dbf1                                         ; $48a2: $c3 $f1 $db


jr_002_48a5:
	add $04                                          ; $48a5: $c6 $04
	jp $dbf1                                         ; $48a7: $c3 $f1 $db


	push hl                                          ; $48aa: $e5
	push de                                          ; $48ab: $d5
	call $db8b                                       ; $48ac: $cd $8b $db

jr_002_48af:
	xor a                                            ; $48af: $af
	ld [hl+], a                                      ; $48b0: $22
	call wCpHLtoDE                                       ; $48b1: $cd $80 $ce
	jr c, jr_002_48af                                ; $48b4: $38 $f9

	pop de                                           ; $48b6: $d1
	pop hl                                           ; $48b7: $e1
	ret                                              ; $48b8: $c9


	push hl                                          ; $48b9: $e5
	push de                                          ; $48ba: $d5
	call $db8b                                       ; $48bb: $cd $8b $db

jr_002_48be:
	ld a, $ff                                        ; $48be: $3e $ff
	ld [hl+], a                                      ; $48c0: $22
	ld a, $7f                                        ; $48c1: $3e $7f
	ld [hl+], a                                      ; $48c3: $22
	call wCpHLtoDE                                       ; $48c4: $cd $80 $ce
	jr c, jr_002_48be                                ; $48c7: $38 $f5

	pop de                                           ; $48c9: $d1
	pop hl                                           ; $48ca: $e1
	ret                                              ; $48cb: $c9


	ld hl, $d500                                     ; $48cc: $21 $00 $d5
	ld c, $70                                        ; $48cf: $0e $70
	xor a                                            ; $48d1: $af

jr_002_48d2:
	ld [hl+], a                                      ; $48d2: $22
	dec c                                            ; $48d3: $0d
	jr nz, jr_002_48d2                               ; $48d4: $20 $fc

	jp $d923                                         ; $48d6: $c3 $23 $d9


	ld hl, $d500                                     ; $48d9: $21 $00 $d5
	ld c, $70                                        ; $48dc: $0e $70

jr_002_48de:
	ld a, $ff                                        ; $48de: $3e $ff
	ld [hl+], a                                      ; $48e0: $22
	ld a, $7f                                        ; $48e1: $3e $7f
	ld [hl+], a                                      ; $48e3: $22
	dec c                                            ; $48e4: $0d
	dec c                                            ; $48e5: $0d
	jr nz, jr_002_48de                               ; $48e6: $20 $f6

	jp $d923                                         ; $48e8: $c3 $23 $d9


	call $1843                                       ; $48eb: $cd $43 $18
	push hl                                          ; $48ee: $e5
	ld l, $04                                        ; $48ef: $2e $04
	ld a, [hl]                                       ; $48f1: $7e
	call $d934                                       ; $48f2: $cd $34 $d9
	pop hl                                           ; $48f5: $e1
	jp $d992                                         ; $48f6: $c3 $92 $d9


	ld a, [wRomBank]                                    ; $48f9: $fa $03 $c1
	ld e, a                                          ; $48fc: $5f
	ld a, $10                                        ; $48fd: $3e $10
	ld [wRomBank], a                                    ; $48ff: $ea $03 $c1
	ld [rROMB0], a                                    ; $4902: $ea $00 $20
	ld bc, $ff69                                     ; $4905: $01 $69 $ff

jr_002_4908:
	ldh a, [rSTAT]                                   ; $4908: $f0 $41
	bit 1, a                                         ; $490a: $cb $4f
	jr nz, jr_002_4908                               ; $490c: $20 $fa

	ld a, [hl+]                                      ; $490e: $2a
	ld [bc], a                                       ; $490f: $02
	ld a, [hl+]                                      ; $4910: $2a
	ld [bc], a                                       ; $4911: $02

jr_002_4912:
	ldh a, [rSTAT]                                   ; $4912: $f0 $41
	bit 1, a                                         ; $4914: $cb $4f
	jr nz, jr_002_4912                               ; $4916: $20 $fa

	ld a, [hl+]                                      ; $4918: $2a
	ld [bc], a                                       ; $4919: $02
	ld a, [hl+]                                      ; $491a: $2a
	ld [bc], a                                       ; $491b: $02

jr_002_491c:
	ldh a, [rSTAT]                                   ; $491c: $f0 $41
	bit 1, a                                         ; $491e: $cb $4f
	jr nz, jr_002_491c                               ; $4920: $20 $fa

	ld a, [hl+]                                      ; $4922: $2a
	ld [bc], a                                       ; $4923: $02
	ld a, [hl+]                                      ; $4924: $2a
	ld [bc], a                                       ; $4925: $02

jr_002_4926:
	ldh a, [rSTAT]                                   ; $4926: $f0 $41
	bit 1, a                                         ; $4928: $cb $4f
	jr nz, jr_002_4926                               ; $492a: $20 $fa

	ld a, [hl+]                                      ; $492c: $2a
	ld [bc], a                                       ; $492d: $02
	ld a, [hl+]                                      ; $492e: $2a
	ld [bc], a                                       ; $492f: $02

jr_002_4930:
	ldh a, [rSTAT]                                   ; $4930: $f0 $41
	bit 1, a                                         ; $4932: $cb $4f
	jr nz, jr_002_4930                               ; $4934: $20 $fa

	ld a, [hl+]                                      ; $4936: $2a
	ld [bc], a                                       ; $4937: $02
	ld a, [hl+]                                      ; $4938: $2a
	ld [bc], a                                       ; $4939: $02

jr_002_493a:
	ldh a, [rSTAT]                                   ; $493a: $f0 $41
	bit 1, a                                         ; $493c: $cb $4f
	jr nz, jr_002_493a                               ; $493e: $20 $fa

	ld a, [hl+]                                      ; $4940: $2a
	ld [bc], a                                       ; $4941: $02
	ld a, [hl+]                                      ; $4942: $2a
	ld [bc], a                                       ; $4943: $02

jr_002_4944:
	ldh a, [rSTAT]                                   ; $4944: $f0 $41
	bit 1, a                                         ; $4946: $cb $4f
	jr nz, jr_002_4944                               ; $4948: $20 $fa

	ld a, [hl+]                                      ; $494a: $2a
	ld [bc], a                                       ; $494b: $02
	ld a, [hl+]                                      ; $494c: $2a
	ld [bc], a                                       ; $494d: $02

jr_002_494e:
	ldh a, [rSTAT]                                   ; $494e: $f0 $41
	bit 1, a                                         ; $4950: $cb $4f
	jr nz, jr_002_494e                               ; $4952: $20 $fa

	ld a, [hl+]                                      ; $4954: $2a
	ld [bc], a                                       ; $4955: $02
	ld a, [hl+]                                      ; $4956: $2a
	ld [bc], a                                       ; $4957: $02
	ld a, e                                          ; $4958: $7b
	ld [wRomBank], a                                    ; $4959: $ea $03 $c1
	ld [rROMB0], a                                    ; $495c: $ea $00 $20
	jp $02c8                                         ; $495f: $c3 $c8 $02


	push af                                          ; $4962: $f5
	call Call_002_4a0d                               ; $4963: $cd $0d $4a
	ld a, d                                          ; $4966: $7a
	pop de                                           ; $4967: $d1
	and a                                            ; $4968: $a7
	ret z                                            ; $4969: $c8

	push af                                          ; $496a: $f5
	ld [$d7a0], a                                    ; $496b: $ea $a0 $d7
	ld a, c                                          ; $496e: $79
	ld [$d7a1], a                                    ; $496f: $ea $a1 $d7
	ld a, b                                          ; $4972: $78
	ld [$d7a2], a                                    ; $4973: $ea $a2 $d7
	xor a                                            ; $4976: $af

Jump_002_4977:
	ld hl, $d7a3                                     ; $4977: $21 $a3 $d7
	ld [hl+], a                                      ; $497a: $22
	ld [hl+], a                                      ; $497b: $22
	ld [hl], $1e                                     ; $497c: $36 $1e
	inc hl                                           ; $497e: $23
	ld [hl], $00                                     ; $497f: $36 $00
	bit 7, d                                         ; $4981: $cb $7a
	jr nz, jr_002_49a5                               ; $4983: $20 $20

	ld a, [$d7a1]                                    ; $4985: $fa $a1 $d7
	ld e, a                                          ; $4988: $5f
	ld a, [$d7a2]                                    ; $4989: $fa $a2 $d7
	ld d, a                                          ; $498c: $57
	inc de                                           ; $498d: $13
	call $19e7                                       ; $498e: $cd $e7 $19
	ld d, $01                                        ; $4991: $16 $01
	cp $80                                           ; $4993: $fe $80
	jr c, jr_002_4999                                ; $4995: $38 $02

	ld d, $06                                        ; $4997: $16 $06

jr_002_4999:
	and $0f                                          ; $4999: $e6 $0f
	cp $08                                           ; $499b: $fe $08
	ld a, $01                                        ; $499d: $3e $01
	jr c, jr_002_49a3                                ; $499f: $38 $02

	ld a, $06                                        ; $49a1: $3e $06

jr_002_49a3:
	or d                                             ; $49a3: $b2
	ld d, a                                          ; $49a4: $57

jr_002_49a5:
	ld a, d                                          ; $49a5: $7a
	ld [$d7a7], a                                    ; $49a6: $ea $a7 $d7
	pop de                                           ; $49a9: $d1
	ld e, a                                          ; $49aa: $5f
	ld a, $ff                                        ; $49ab: $3e $ff
	dec d                                            ; $49ad: $15
	jr z, jr_002_49da                                ; $49ae: $28 $2a

	dec d                                            ; $49b0: $15
	jr z, jr_002_49bc                                ; $49b1: $28 $09

	cpl                                              ; $49b3: $2f
	dec d                                            ; $49b4: $15
	jr z, jr_002_49da                                ; $49b5: $28 $23

	dec d                                            ; $49b7: $15
	ret nz                                           ; $49b8: $c0

	jr z, jr_002_49bc                                ; $49b9: $28 $01

	ret                                              ; $49bb: $c9


jr_002_49bc:
	call Call_002_49f2                               ; $49bc: $cd $f2 $49
	rrc e                                            ; $49bf: $cb $0b
	jr nc, jr_002_49c8                               ; $49c1: $30 $05

	ld [$d7a8], a                                    ; $49c3: $ea $a8 $d7
	ldh [hDisp0_BGP], a                                     ; $49c6: $e0 $85

jr_002_49c8:
	rrc e                                            ; $49c8: $cb $0b
	jr nc, jr_002_49d1                               ; $49ca: $30 $05

	ld [$d7a9], a                                    ; $49cc: $ea $a9 $d7
	ldh [hDisp0_OBP0], a                                     ; $49cf: $e0 $86

jr_002_49d1:
	rrc e                                            ; $49d1: $cb $0b
	ret nc                                           ; $49d3: $d0

	ld [$d7aa], a                                    ; $49d4: $ea $aa $d7
	ldh [hDisp0_OBP1], a                                     ; $49d7: $e0 $87
	ret                                              ; $49d9: $c9


jr_002_49da:
	call Call_002_49f2                               ; $49da: $cd $f2 $49
	rrc e                                            ; $49dd: $cb $0b
	jr nc, jr_002_49e4                               ; $49df: $30 $03

	ld [$d7ab], a                                    ; $49e1: $ea $ab $d7

jr_002_49e4:
	rrc e                                            ; $49e4: $cb $0b
	jr nc, jr_002_49eb                               ; $49e6: $30 $03

	ld [$d7ac], a                                    ; $49e8: $ea $ac $d7

jr_002_49eb:
	rrc e                                            ; $49eb: $cb $0b
	ret nc                                           ; $49ed: $d0

	ld [$d7ad], a                                    ; $49ee: $ea $ad $d7
	ret                                              ; $49f1: $c9


Call_002_49f2:
	push af                                          ; $49f2: $f5
	ldh a, [hDisp0_BGP]                                     ; $49f3: $f0 $85
	ld [$d7a8], a                                    ; $49f5: $ea $a8 $d7
	ld [$d7ab], a                                    ; $49f8: $ea $ab $d7
	ldh a, [hDisp0_OBP0]                                     ; $49fb: $f0 $86
	ld [$d7a9], a                                    ; $49fd: $ea $a9 $d7
	ld [$d7ac], a                                    ; $4a00: $ea $ac $d7
	ldh a, [hDisp0_OBP1]                                     ; $4a03: $f0 $87
	ld [$d7aa], a                                    ; $4a05: $ea $aa $d7
	ld [$d7ad], a                                    ; $4a08: $ea $ad $d7
	pop af                                           ; $4a0b: $f1
	ret                                              ; $4a0c: $c9


Call_002_4a0d:
	ld d, $00                                        ; $4a0d: $16 $00
	ld hl, $67ad                                     ; $4a0f: $21 $ad $67
	call wCpHLtoBC                                       ; $4a12: $cd $86 $ce
	ret nc                                           ; $4a15: $d0

	inc d                                            ; $4a16: $14
	ld hl, $67c9                                     ; $4a17: $21 $c9 $67
	call wCpHLtoBC                                       ; $4a1a: $cd $86 $ce
	ret nc                                           ; $4a1d: $d0

	inc d                                            ; $4a1e: $14
	ld hl, $67e5                                     ; $4a1f: $21 $e5 $67
	call wCpHLtoBC                                       ; $4a22: $cd $86 $ce
	ret nc                                           ; $4a25: $d0

	inc d                                            ; $4a26: $14
	ld hl, $6803                                     ; $4a27: $21 $03 $68
	call wCpHLtoBC                                       ; $4a2a: $cd $86 $ce
	ret nc                                           ; $4a2d: $d0

	inc d                                            ; $4a2e: $14
	ld hl, $6825                                     ; $4a2f: $21 $25 $68
	call wCpHLtoBC                                       ; $4a32: $cd $86 $ce
	ret nc                                           ; $4a35: $d0

	inc d                                            ; $4a36: $14
	ret                                              ; $4a37: $c9


	call Call_002_4a44                               ; $4a38: $cd $44 $4a
	ld hl, $d7a6                                     ; $4a3b: $21 $a6 $d7
	ld a, [hl-]                                      ; $4a3e: $3a
	inc a                                            ; $4a3f: $3c
	dec [hl]                                         ; $4a40: $35
	jr z, jr_002_4a86                                ; $4a41: $28 $43

	ret                                              ; $4a43: $c9


Call_002_4a44:
	ld hl, $d7a3                                     ; $4a44: $21 $a3 $d7
	ld a, [hl]                                       ; $4a47: $7e
	or a                                             ; $4a48: $b7
	jr z, jr_002_4a54                                ; $4a49: $28 $09

	dec [hl]                                         ; $4a4b: $35
	ret                                              ; $4a4c: $c9


jr_002_4a4d:
	xor a                                            ; $4a4d: $af
	ld hl, $d7a0                                     ; $4a4e: $21 $a0 $d7
	jp $cbe9                                         ; $4a51: $c3 $e9 $cb


jr_002_4a54:
	inc hl                                           ; $4a54: $23
	inc [hl]                                         ; $4a55: $34
	ld a, [hl-]                                      ; $4a56: $3a
	cp $20                                           ; $4a57: $fe $20
	jr nc, jr_002_4a4d                               ; $4a59: $30 $f2

	ld a, [$d7a1]                                    ; $4a5b: $fa $a1 $d7
	ld e, a                                          ; $4a5e: $5f
	ld a, [$d7a2]                                    ; $4a5f: $fa $a2 $d7
	ld d, a                                          ; $4a62: $57
	call $19e7                                       ; $4a63: $cd $e7 $19
	push af                                          ; $4a66: $f5
	and $0f                                          ; $4a67: $e6 $0f
	ld [hl+], a                                      ; $4a69: $22
	pop af                                           ; $4a6a: $f1
	and $f0                                          ; $4a6b: $e6 $f0
	swap a                                           ; $4a6d: $cb $37
	add [hl]                                         ; $4a6f: $86
	ld c, a                                          ; $4a70: $4f
	ld a, [hl]                                       ; $4a71: $7e
	dec a                                            ; $4a72: $3d
	xor c                                            ; $4a73: $a9
	ld [hl], c                                       ; $4a74: $71
	and $18                                          ; $4a75: $e6 $18
	ret z                                            ; $4a77: $c8

	ld a, [hl]                                       ; $4a78: $7e
	srl a                                            ; $4a79: $cb $3f
	srl a                                            ; $4a7b: $cb $3f
	srl a                                            ; $4a7d: $cb $3f
	ld hl, $d7a6                                     ; $4a7f: $21 $a6 $d7
	cp [hl]                                          ; $4a82: $be
	ret z                                            ; $4a83: $c8

	ret c                                            ; $4a84: $d8

	dec hl                                           ; $4a85: $2b

jr_002_4a86:
	ld [hl], $1e                                     ; $4a86: $36 $1e
	cp $04                                           ; $4a88: $fe $04
	ret nc                                           ; $4a8a: $d0

	inc hl                                           ; $4a8b: $23
	ld [hl], a                                       ; $4a8c: $77
	ld de, $d7ab                                     ; $4a8d: $11 $ab $d7
	ld hl, $d7a8                                     ; $4a90: $21 $a8 $d7
	ld bc, $ff85                                     ; $4a93: $01 $85 $ff
	ld a, [$d7a7]                                    ; $4a96: $fa $a7 $d7
	rrca                                             ; $4a99: $0f
	call c, Call_002_4aa9                            ; $4a9a: $dc $a9 $4a
	inc de                                           ; $4a9d: $13
	inc hl                                           ; $4a9e: $23
	inc bc                                           ; $4a9f: $03
	rrca                                             ; $4aa0: $0f
	call c, Call_002_4aa9                            ; $4aa1: $dc $a9 $4a
	inc de                                           ; $4aa4: $13
	inc hl                                           ; $4aa5: $23
	inc bc                                           ; $4aa6: $03
	rrca                                             ; $4aa7: $0f
	ret nc                                           ; $4aa8: $d0

Call_002_4aa9:
	push af                                          ; $4aa9: $f5
	push bc                                          ; $4aaa: $c5
	ld a, [de]                                       ; $4aab: $1a
	ld c, a                                          ; $4aac: $4f
	ld a, [hl]                                       ; $4aad: $7e
	ld b, $04                                        ; $4aae: $06 $04

jr_002_4ab0:
	push bc                                          ; $4ab0: $c5
	ld b, a                                          ; $4ab1: $47
	res 2, c                                         ; $4ab2: $cb $91
	res 2, a                                         ; $4ab4: $cb $97
	sub c                                            ; $4ab6: $91
	ld c, a                                          ; $4ab7: $4f
	and $03                                          ; $4ab8: $e6 $03
	jr z, jr_002_4ac3                                ; $4aba: $28 $07

	dec b                                            ; $4abc: $05
	bit 2, c                                         ; $4abd: $cb $51
	jr z, jr_002_4ac3                                ; $4abf: $28 $02

	inc b                                            ; $4ac1: $04
	inc b                                            ; $4ac2: $04

jr_002_4ac3:
	ld a, b                                          ; $4ac3: $78
	rrca                                             ; $4ac4: $0f
	rrca                                             ; $4ac5: $0f
	pop bc                                           ; $4ac6: $c1
	rrc c                                            ; $4ac7: $cb $09
	rrc c                                            ; $4ac9: $cb $09
	dec b                                            ; $4acb: $05
	jr nz, jr_002_4ab0                               ; $4acc: $20 $e2

	ld [hl], a                                       ; $4ace: $77
	pop bc                                           ; $4acf: $c1
	ld [bc], a                                       ; $4ad0: $02
	pop af                                           ; $4ad1: $f1
	ret                                              ; $4ad2: $c9


	ld hl, wButtonsPressed                                     ; $4ad3: $21 $25 $c1
	bit 7, [hl]                                      ; $4ad6: $cb $7e
	jp nz, Jump_002_4b52                             ; $4ad8: $c2 $52 $4b

	ld a, [$c102]                                    ; $4adb: $fa $02 $c1
	call wJumpTable                                       ; $4ade: $cd $80 $cf
	db $ed                                           ; $4ae1: $ed
	ld c, d                                          ; $4ae2: $4a
	ei                                               ; $4ae3: $fb
	ld c, d                                          ; $4ae4: $4a
	dec e                                            ; $4ae5: $1d
	ld c, e                                          ; $4ae6: $4b
	inc sp                                           ; $4ae7: $33
	ld c, e                                          ; $4ae8: $4b
	ld b, b                                          ; $4ae9: $40
	ld c, e                                          ; $4aea: $4b
	ld c, a                                          ; $4aeb: $4f
	ld c, e                                          ; $4aec: $4b

Jump_002_4aed:
	ld a, $13                                        ; $4aed: $3e $13
	ld [$c186], a                                    ; $4aef: $ea $86 $c1
	call $09d3                                       ; $4af2: $cd $d3 $09
	call $1973                                       ; $4af5: $cd $73 $19
	jp $2929                                         ; $4af8: $c3 $29 $29


	ld hl, $4be8                                     ; $4afb: $21 $e8 $4b

Jump_002_4afe:
	push hl                                          ; $4afe: $e5
	ld hl, $6b6a                                     ; $4aff: $21 $6a $6b
	rst FarCall                                          ; $4b02: $f7
	ld c, c                                          ; $4b03: $49
	ld l, c                                          ; $4b04: $69
	dec b                                            ; $4b05: $05
	call $0986                                       ; $4b06: $cd $86 $09
	call $0911                                       ; $4b09: $cd $11 $09
	call $0963                                       ; $4b0c: $cd $63 $09
	pop hl                                           ; $4b0f: $e1
	call $0ab5                                       ; $4b10: $cd $b5 $0a
	ld a, $c1                                        ; $4b13: $3e $c1
	ldh [hDisp0_LCDC], a                                     ; $4b15: $e0 $82
	call $0971                                       ; $4b17: $cd $71 $09
	jp $2929                                         ; $4b1a: $c3 $29 $29


	ld bc, $50c5                                     ; $4b1d: $01 $c5 $50
	ld de, $4393                                     ; $4b20: $11 $93 $43

Jump_002_4b23:
	call $0aa0                                       ; $4b23: $cd $a0 $0a
	xor a                                            ; $4b26: $af
	call $193c                                       ; $4b27: $cd $3c $19
	ld bc, $6814                                     ; $4b2a: $01 $14 $68
	call $18b3                                       ; $4b2d: $cd $b3 $18
	jp $2929                                         ; $4b30: $c3 $29 $29


	call $1998                                       ; $4b33: $cd $98 $19
	ret nz                                           ; $4b36: $c0

	ld bc, $0088                                     ; $4b37: $01 $88 $00
	call $2937                                       ; $4b3a: $cd $37 $29
	jp $2929                                         ; $4b3d: $c3 $29 $29


	ld a, [wButtonsHeld]                                    ; $4b40: $fa $23 $c1
	and a                                            ; $4b43: $a7
	ret nz                                           ; $4b44: $c0

	call $293e                                       ; $4b45: $cd $3e $29
	ret nz                                           ; $4b48: $c0

	call Call_002_4bdc                               ; $4b49: $cd $dc $4b
	jp $2929                                         ; $4b4c: $c3 $29 $29


	call Call_002_4be2                               ; $4b4f: $cd $e2 $4b

Jump_002_4b52:
	jp $2917                                         ; $4b52: $c3 $17 $29


	ld hl, $0000                                     ; $4b55: $21 $00 $00
	call $0955                                       ; $4b58: $cd $55 $09
	ld hl, $0750                                     ; $4b5b: $21 $50 $07
	jp $095c                                         ; $4b5e: $c3 $5c $09


	ld hl, wButtonsPressed                                     ; $4b61: $21 $25 $c1
	bit 7, [hl]                                      ; $4b64: $cb $7e
	jp nz, Jump_002_4b52                             ; $4b66: $c2 $52 $4b

	ld a, [$c102]                                    ; $4b69: $fa $02 $c1
	call wJumpTable                                       ; $4b6c: $cd $80 $cf
	db $ed                                           ; $4b6f: $ed
	ld c, d                                          ; $4b70: $4a
	ld a, e                                          ; $4b71: $7b
	ld c, e                                          ; $4b72: $4b
	add c                                            ; $4b73: $81
	ld c, e                                          ; $4b74: $4b
	inc sp                                           ; $4b75: $33
	ld c, e                                          ; $4b76: $4b
	ld b, b                                          ; $4b77: $40
	ld c, e                                          ; $4b78: $4b
	ld c, a                                          ; $4b79: $4f
	ld c, e                                          ; $4b7a: $4b
	ld hl, $4bf9                                     ; $4b7b: $21 $f9 $4b
	jp Jump_002_4afe                                 ; $4b7e: $c3 $fe $4a


	ld bc, $50d6                                     ; $4b81: $01 $d6 $50
	ld de, $434b                                     ; $4b84: $11 $4b $43
	jp Jump_002_4b23                                 ; $4b87: $c3 $23 $4b


	ld a, [$c102]                                    ; $4b8a: $fa $02 $c1
	rst JumpTable                                          ; $4b8d: $c7
	sbc d                                            ; $4b8e: $9a
	ld c, e                                          ; $4b8f: $4b
	xor a                                            ; $4b90: $af
	ld c, e                                          ; $4b91: $4b
	or [hl]                                          ; $4b92: $b6
	ld c, e                                          ; $4b93: $4b
	inc sp                                           ; $4b94: $33
	ld c, e                                          ; $4b95: $4b
	bit 1, e                                         ; $4b96: $cb $4b
	ld c, a                                          ; $4b98: $4f
	ld c, e                                          ; $4b99: $4b
	ld bc, $e58f                                     ; $4b9a: $01 $8f $e5
	ld hl, $a112                                     ; $4b9d: $21 $12 $a1
	ld a, [hl+]                                      ; $4ba0: $2a
	and c                                            ; $4ba1: $a1
	cp c                                             ; $4ba2: $b9
	jp nz, Jump_002_4b52                             ; $4ba3: $c2 $52 $4b

	ld a, [hl+]                                      ; $4ba6: $2a
	and b                                            ; $4ba7: $a0
	cp b                                             ; $4ba8: $b8
	jp nz, Jump_002_4b52                             ; $4ba9: $c2 $52 $4b

	jp Jump_002_4aed                                 ; $4bac: $c3 $ed $4a


	rst FarCall                                          ; $4baf: $f7
	ld sp, $0669                                     ; $4bb0: $31 $69 $06
	jp $2929                                         ; $4bb3: $c3 $29 $29


	ld de, $435d                                     ; $4bb6: $11 $5d $43
	call $0aa0                                       ; $4bb9: $cd $a0 $0a
	ld bc, $666e                                     ; $4bbc: $01 $6e $66
	call $18c4                                       ; $4bbf: $cd $c4 $18
	ld bc, $6814                                     ; $4bc2: $01 $14 $68
	call $18b3                                       ; $4bc5: $cd $b3 $18
	jp $2929                                         ; $4bc8: $c3 $29 $29


	ld hl, wButtonsPressed                                     ; $4bcb: $21 $25 $c1
	bit 7, [hl]                                      ; $4bce: $cb $7e
	jr nz, jr_002_4bd6                               ; $4bd0: $20 $04

	call $293e                                       ; $4bd2: $cd $3e $29
	ret nz                                           ; $4bd5: $c0

jr_002_4bd6:
	call Call_002_4bdc                               ; $4bd6: $cd $dc $4b
	jp $2929                                         ; $4bd9: $c3 $29 $29


Call_002_4bdc:
	ld bc, $67f6                                     ; $4bdc: $01 $f6 $67
	jp $18c0                                         ; $4bdf: $c3 $c0 $18


Call_002_4be2:
	call $199f                                       ; $4be2: $cd $9f $19
	ret z                                            ; $4be5: $c8

	pop hl                                           ; $4be6: $e1
	ret                                              ; $4be7: $c9


	ld a, [$9f11]                                    ; $4be8: $fa $11 $9f
	ld a, [hl]                                       ; $4beb: $7e
	nop                                              ; $4bec: $00
	jr jr_002_4c00                                   ; $4bed: $18 $11

	ld [hl+], a                                      ; $4bef: $22
	ld a, [hl]                                       ; $4bf0: $7e
	nop                                              ; $4bf1: $00
	sbc b                                            ; $4bf2: $98
	ld de, $7cc4                                     ; $4bf3: $11 $c4 $7c
	nop                                              ; $4bf6: $00
	sub b                                            ; $4bf7: $90
	rst $38                                          ; $4bf8: $ff
	ld a, [$a711]                                    ; $4bf9: $fa $11 $a7
	ld l, [hl]                                       ; $4bfc: $6e
	nop                                              ; $4bfd: $00
	jr @+$13                                         ; $4bfe: $18 $11

jr_002_4c00:
	ld [hl-], a                                      ; $4c00: $32
	ld l, [hl]                                       ; $4c01: $6e
	nop                                              ; $4c02: $00
	sbc b                                            ; $4c03: $98
	ld de, $6bcc                                     ; $4c04: $11 $cc $6b
	nop                                              ; $4c07: $00
	sub b                                            ; $4c08: $90
	rst $38                                          ; $4c09: $ff
	ld a, [$c102]                                    ; $4c0a: $fa $02 $c1
	call wJumpTable                                       ; $4c0d: $cd $80 $cf
	jr @+$4e                                         ; $4c10: $18 $4c

	ld d, a                                          ; $4c12: $57
	ld c, h                                          ; $4c13: $4c
	ld h, l                                          ; $4c14: $65
	ld c, h                                          ; $4c15: $4c
	xor $4c                                          ; $4c16: $ee $4c
	xor a                                            ; $4c18: $af
	call $068e                                       ; $4c19: $cd $8e $06
	ld a, $0e                                        ; $4c1c: $3e $0e
	ld [$c186], a                                    ; $4c1e: $ea $86 $c1
	call $0911                                       ; $4c21: $cd $11 $09
	ld hl, $6b6a                                     ; $4c24: $21 $6a $6b
	rst FarCall                                          ; $4c27: $f7
	ld c, c                                          ; $4c28: $49
	ld l, c                                          ; $4c29: $69
	dec b                                            ; $4c2a: $05
	call $0986                                       ; $4c2b: $cd $86 $09
	call todo_Clears40hBytesAtWramBank0Pages2Plus                                       ; $4c2e: $cd $ef $2d
	ld a, $c1                                        ; $4c31: $3e $c1
	ldh [hDisp0_LCDC], a                                     ; $4c33: $e0 $82
	ld hl, $4d77                                     ; $4c35: $21 $77 $4d
	call $0ab5                                       ; $4c38: $cd $b5 $0a
	call $096e                                       ; $4c3b: $cd $6e $09
	ld de, $434b                                     ; $4c3e: $11 $4b $43
	call $0aa0                                       ; $4c41: $cd $a0 $0a
	ld bc, $5084                                     ; $4c44: $01 $84 $50
	xor a                                            ; $4c47: $af
	call $193c                                       ; $4c48: $cd $3c $19
	ld a, $03                                        ; $4c4b: $3e $03
	call $068e                                       ; $4c4d: $cd $8e $06
	xor a                                            ; $4c50: $af
	ld [$c150], a                                    ; $4c51: $ea $50 $c1
	jp $2929                                         ; $4c54: $c3 $29 $29


	ld a, $72                                        ; $4c57: $3e $72
	call Jump_000_1af7                                       ; $4c59: $cd $f7 $1a
	ld bc, $04f0                                     ; $4c5c: $01 $f0 $04
	call $2937                                       ; $4c5f: $cd $37 $29
	jp $2929                                         ; $4c62: $c3 $29 $29


	ld hl, wButtonsPressed                                     ; $4c65: $21 $25 $c1
	bit 7, [hl]                                      ; $4c68: $cb $7e
	jr nz, jr_002_4c90                               ; $4c6a: $20 $24

	ld a, [$c150]                                    ; $4c6c: $fa $50 $c1
	xor $01                                          ; $4c6f: $ee $01
	bit 6, [hl]                                      ; $4c71: $cb $76
	jr nz, jr_002_4c7f                               ; $4c73: $20 $0a

	xor a                                            ; $4c75: $af
	bit 1, [hl]                                      ; $4c76: $cb $4e
	jr nz, jr_002_4c7f                               ; $4c78: $20 $05

	inc a                                            ; $4c7a: $3c
	bit 0, [hl]                                      ; $4c7b: $cb $46
	jr z, jr_002_4c82                                ; $4c7d: $28 $03

jr_002_4c7f:
	ld [$c150], a                                    ; $4c7f: $ea $50 $c1

jr_002_4c82:
	call $293e                                       ; $4c82: $cd $3e $29
	ret nz                                           ; $4c85: $c0

	ld a, $d0                                        ; $4c86: $3e $d0
	ld [$c2c7], a                                    ; $4c88: $ea $c7 $c2
	ld a, $04                                        ; $4c8b: $3e $04
	jp $291f                                         ; $4c8d: $c3 $1f $29


jr_002_4c90:
	xor a                                            ; $4c90: $af
	call Jump_000_1af7                                       ; $4c91: $cd $f7 $1a
	ld a, [$c150]                                    ; $4c94: $fa $50 $c1
	and a                                            ; $4c97: $a7
	jr nz, jr_002_4ca0                               ; $4c98: $20 $06

	ld a, [$a1c5]                                    ; $4c9a: $fa $c5 $a1
	and a                                            ; $4c9d: $a7
	jr z, jr_002_4ca7                                ; $4c9e: $28 $07

jr_002_4ca0:
	ld a, $6c                                        ; $4ca0: $3e $6c
	call $1e2e                                       ; $4ca2: $cd $2e $1e
	jr jr_002_4cc5                                   ; $4ca5: $18 $1e

jr_002_4ca7:
	ld b, $0f                                        ; $4ca7: $06 $0f
	ld h, $00                                        ; $4ca9: $26 $00
	ld a, [$a1c8]                                    ; $4cab: $fa $c8 $a1
	and a                                            ; $4cae: $a7
	jr z, jr_002_4cb2                                ; $4caf: $28 $01

	scf                                              ; $4cb1: $37

jr_002_4cb2:
	ld a, [$a1c7]                                    ; $4cb2: $fa $c7 $a1
	rla                                              ; $4cb5: $17
	cp $20                                           ; $4cb6: $fe $20
	jr nc, jr_002_4cc5                               ; $4cb8: $30 $0b

	ld l, a                                          ; $4cba: $6f
	ld de, $4cce                                     ; $4cbb: $11 $ce $4c
	add hl, de                                       ; $4cbe: $19
	ld a, [hl]                                       ; $4cbf: $7e
	and a                                            ; $4cc0: $a7
	ld c, a                                          ; $4cc1: $4f
	call nz, PlaySampledSound                                   ; $4cc2: $c4 $ef $27

jr_002_4cc5:
	ld bc, $0050                                     ; $4cc5: $01 $50 $00
	call $2937                                       ; $4cc8: $cd $37 $29
	jp $2929                                         ; $4ccb: $c3 $29 $29


	db $10                                           ; $4cce: $10
	ld de, $2d2c                                     ; $4ccf: $11 $2c $2d
	jr c, @+$3b                                      ; $4cd2: $38 $39

	ld c, b                                          ; $4cd4: $48
	ld c, c                                          ; $4cd5: $49
	nop                                              ; $4cd6: $00
	nop                                              ; $4cd7: $00
	nop                                              ; $4cd8: $00
	nop                                              ; $4cd9: $00
	nop                                              ; $4cda: $00
	nop                                              ; $4cdb: $00
	ld d, [hl]                                       ; $4cdc: $56
	ld d, a                                          ; $4cdd: $57
	ld e, a                                          ; $4cde: $5f
	ld h, b                                          ; $4cdf: $60
	nop                                              ; $4ce0: $00
	nop                                              ; $4ce1: $00
	ld [hl], a                                       ; $4ce2: $77
	ld a, b                                          ; $4ce3: $78
	nop                                              ; $4ce4: $00
	nop                                              ; $4ce5: $00
	nop                                              ; $4ce6: $00
	nop                                              ; $4ce7: $00
	sub c                                            ; $4ce8: $91
	sub d                                            ; $4ce9: $92
	inc e                                            ; $4cea: $1c
	inc e                                            ; $4ceb: $1c
	dec e                                            ; $4cec: $1d
	dec e                                            ; $4ced: $1d
	ld a, [$c121]                                    ; $4cee: $fa $21 $c1
	and $07                                          ; $4cf1: $e6 $07
	jr nz, jr_002_4d0e                               ; $4cf3: $20 $19

	ld a, [$c150]                                    ; $4cf5: $fa $50 $c1
	and a                                            ; $4cf8: $a7
	ld hl, $4dc7                                     ; $4cf9: $21 $c7 $4d
	jr nz, jr_002_4d01                               ; $4cfc: $20 $03

	ld hl, $4d9d                                     ; $4cfe: $21 $9d $4d

jr_002_4d01:
	ld a, [$c121]                                    ; $4d01: $fa $21 $c1
	and $08                                          ; $4d04: $e6 $08
	push af                                          ; $4d06: $f5
	call z, $0a0d                                    ; $4d07: $cc $0d $0a
	pop af                                           ; $4d0a: $f1
	call nz, $0a10                                   ; $4d0b: $c4 $10 $0a

jr_002_4d0e:
	call $293e                                       ; $4d0e: $cd $3e $29
	ret nz                                           ; $4d11: $c0

	rst FarCall                                          ; $4d12: $f7
	rla                                              ; $4d13: $17
	ld e, c                                          ; $4d14: $59
	ld bc, $eaaf                                     ; $4d15: $01 $af $ea
	ld b, d                                          ; $4d18: $42
	pop bc                                           ; $4d19: $c1
	ld [$d7ef], a                                    ; $4d1a: $ea $ef $d7
	ld [$d0af], a                                    ; $4d1d: $ea $af $d0
	ld [$c14a], a                                    ; $4d20: $ea $4a $c1
	ld [$c14b], a                                    ; $4d23: $ea $4b $c1
	ld [$c14c], a                                    ; $4d26: $ea $4c $c1
	ld [$c14d], a                                    ; $4d29: $ea $4d $c1
	ld [$c14e], a                                    ; $4d2c: $ea $4e $c1
	call $087a                                       ; $4d2f: $cd $7a $08
	ld hl, $a3f0                                     ; $4d32: $21 $f0 $a3
	ld bc, $0180                                     ; $4d35: $01 $80 $01
	xor a                                            ; $4d38: $af
	call wMemSetBC                                       ; $4d39: $cd $cc $cf
	ld hl, stodo_ScriptRelatedStruct                                     ; $4d3c: $21 $80 $ba
	ld bc, $0580                                     ; $4d3f: $01 $80 $05
	xor a                                            ; $4d42: $af
	call wMemSetBC                                       ; $4d43: $cd $cc $cf
	ld bc, $67f2                                     ; $4d46: $01 $f2 $67
	ld de, $0000                                     ; $4d49: $11 $00 $00
	call $19f5                                       ; $4d4c: $cd $f5 $19
	call Func_1aa6                                       ; $4d4f: $cd $a6 $1a
	call $0911                                       ; $4d52: $cd $11 $09
	ld a, [$c150]                                    ; $4d55: $fa $50 $c1
	and a                                            ; $4d58: $a7
	jr nz, jr_002_4d69                               ; $4d59: $20 $0e

	rst FarCall                                          ; $4d5b: $f7
	ld a, a                                          ; $4d5c: $7f
	ld c, l                                          ; $4d5d: $4d
	dec b                                            ; $4d5e: $05
	ld a, $08                                        ; $4d5f: $3e $08
	ld [$c183], a                                    ; $4d61: $ea $83 $c1
	ld a, $08                                        ; $4d64: $3e $08
	jp $291f                                         ; $4d66: $c3 $1f $29


jr_002_4d69:
	ld a, $07                                        ; $4d69: $3e $07
	ld [$c183], a                                    ; $4d6b: $ea $83 $c1
	xor a                                            ; $4d6e: $af
	ld [$d370], a                                    ; $4d6f: $ea $70 $d3
	ld a, $08                                        ; $4d72: $3e $08
	jp $291f                                         ; $4d74: $c3 $1f $29


	ld a, [$bf11]                                    ; $4d77: $fa $11 $bf
	ld a, d                                          ; $4d7a: $7a
	nop                                              ; $4d7b: $00
	jr jr_002_4d8f                                   ; $4d7c: $18 $11

	add l                                            ; $4d7e: $85
	ld a, c                                          ; $4d7f: $79
	nop                                              ; $4d80: $00
	sbc b                                            ; $4d81: $98
	ld de, $6ec1                                     ; $4d82: $11 $c1 $6e
	nop                                              ; $4d85: $00
	sub b                                            ; $4d86: $90
	ld de, $7370                                     ; $4d87: $11 $70 $73
	nop                                              ; $4d8a: $00
	adc b                                            ; $4d8b: $88
	ld a, [$b711]                                    ; $4d8c: $fa $11 $b7

jr_002_4d8f:
	ld a, h                                          ; $4d8f: $7c
	nop                                              ; $4d90: $00
	inc e                                            ; $4d91: $1c
	ld de, $7c78                                     ; $4d92: $11 $78 $7c
	nop                                              ; $4d95: $00
	sbc h                                            ; $4d96: $9c
	ld de, $7ae4                                     ; $4d97: $11 $e4 $7a
	nop                                              ; $4d9a: $00
	add b                                            ; $4d9b: $80
	rst $38                                          ; $4d9c: $ff
	and b                                            ; $4d9d: $a0
	sbc c                                            ; $4d9e: $99
	ld a, e                                          ; $4d9f: $7b
	ld a, d                                          ; $4da0: $7a
	ld a, c                                          ; $4da1: $79
	ld a, e                                          ; $4da2: $7b
	ld a, b                                          ; $4da3: $78
	ld [hl], a                                       ; $4da4: $77
	halt                                             ; $4da5: $76
	ld [hl], l                                       ; $4da6: $75
	nop                                              ; $4da7: $00
	ld l, a                                          ; $4da8: $6f
	ld h, b                                          ; $4da9: $60
	cp $c0                                           ; $4daa: $fe $c0
	sbc c                                            ; $4dac: $99
	ld e, e                                          ; $4dad: $5b
	ld e, d                                          ; $4dae: $5a
	ld e, c                                          ; $4daf: $59
	ld e, b                                          ; $4db0: $58
	ld d, a                                          ; $4db1: $57
	ld d, [hl]                                       ; $4db2: $56
	ld d, l                                          ; $4db3: $55
	ld d, e                                          ; $4db4: $53
	ld d, d                                          ; $4db5: $52
	ld d, c                                          ; $4db6: $51
	ld d, b                                          ; $4db7: $50
	cp $e0                                           ; $4db8: $fe $e0
	sbc c                                            ; $4dba: $99
	inc a                                            ; $4dbb: $3c
	dec sp                                           ; $4dbc: $3b
	ld a, [hl-]                                      ; $4dbd: $3a
	add hl, sp                                       ; $4dbe: $39
	jr c, @+$39                                      ; $4dbf: $38 $37

	ld [hl], $35                                     ; $4dc1: $36 $35
	inc [hl]                                         ; $4dc3: $34
	inc [hl]                                         ; $4dc4: $34
	inc sp                                           ; $4dc5: $33
	rst $38                                          ; $4dc6: $ff
	dec bc                                           ; $4dc7: $0b
	sbc h                                            ; $4dc8: $9c
	inc c                                            ; $4dc9: $0c
	dec c                                            ; $4dca: $0d
	ld c, $0f                                        ; $4dcb: $0e $0f
	stop                                             ; $4dcd: $10 $00
	inc c                                            ; $4dcf: $0c
	stop                                             ; $4dd0: $10 $00
	cp $2b                                           ; $4dd2: $fe $2b
	sbc h                                            ; $4dd4: $9c
	jr nz, jr_002_4df6                               ; $4dd5: $20 $1f

	ld e, $1d                                        ; $4dd7: $1e $1d
	inc e                                            ; $4dd9: $1c
	dec de                                           ; $4dda: $1b
	ld a, [de]                                       ; $4ddb: $1a
	add hl, de                                       ; $4ddc: $19

jr_002_4ddd:
	jr jr_002_4ddd                                   ; $4ddd: $18 $fe

	ld c, e                                          ; $4ddf: $4b
	sbc h                                            ; $4de0: $9c
	rla                                              ; $4de1: $17
	ld d, $15                                        ; $4de2: $16 $15
	inc d                                            ; $4de4: $14
	inc de                                           ; $4de5: $13
	ld [de], a                                       ; $4de6: $12
	ld de, $0409                                     ; $4de7: $11 $09 $04
	rst $38                                          ; $4dea: $ff
	ld a, [$c137]                                    ; $4deb: $fa $37 $c1
	rst JumpTable                                          ; $4dee: $c7
	push af                                          ; $4def: $f5
	ld c, l                                          ; $4df0: $4d
	ld d, $4e                                        ; $4df1: $16 $4e
	dec d                                            ; $4df3: $15
	ld c, [hl]                                       ; $4df4: $4e
	di                                               ; $4df5: $f3

jr_002_4df6:
	call Call_002_4f7c                               ; $4df6: $cd $7c $4f
	xor a                                            ; $4df9: $af
	ldh [rSC], a                                     ; $4dfa: $e0 $02
	ldh [$9d], a                                     ; $4dfc: $e0 $9d
	ldh [$9e], a                                     ; $4dfe: $e0 $9e
	ldh [$9f], a                                     ; $4e00: $e0 $9f
	ld [$c138], a                                    ; $4e02: $ea $38 $c1
	ld a, $01                                        ; $4e05: $3e $01
	ld [$c137], a                                    ; $4e07: $ea $37 $c1
	ld hl, $ff02                                     ; $4e0a: $21 $02 $ff
	set 7, [hl]                                      ; $4e0d: $cb $fe
	ld hl, rIE                                     ; $4e0f: $21 $ff $ff
	set 3, [hl]                                      ; $4e12: $cb $de
	ei                                               ; $4e14: $fb
	ret                                              ; $4e15: $c9


	ldh a, [$9d]                                     ; $4e16: $f0 $9d
	inc a                                            ; $4e18: $3c
	jp z, Jump_002_4e7f                              ; $4e19: $ca $7f $4e

	cp $04                                           ; $4e1c: $fe $04
	jr z, jr_002_4e50                                ; $4e1e: $28 $30

	cp $10                                           ; $4e20: $fe $10
	jr z, jr_002_4e43                                ; $4e22: $28 $1f

	ld a, $02                                        ; $4e24: $3e $02
	ldh [rSC], a                                     ; $4e26: $e0 $02
	ld a, $0f                                        ; $4e28: $3e $0f
	ldh [rSB], a                                     ; $4e2a: $e0 $01
	call $2d72                                       ; $4e2c: $cd $72 $2d
	ld a, [wButtonsPressed]                                    ; $4e2f: $fa $25 $c1
	and $80                                          ; $4e32: $e6 $80
	ret z                                            ; $4e34: $c8

	ld a, $03                                        ; $4e35: $3e $03
	ldh [rSC], a                                     ; $4e37: $e0 $02
	ld a, $03                                        ; $4e39: $3e $03
	ldh [rSB], a                                     ; $4e3b: $e0 $01
	call $2d72                                       ; $4e3d: $cd $72 $2d
	jp Jump_002_4f87                                 ; $4e40: $c3 $87 $4f


jr_002_4e43:
	ld a, $02                                        ; $4e43: $3e $02
	ld [$c137], a                                    ; $4e45: $ea $37 $c1
	ld [$c139], a                                    ; $4e48: $ea $39 $c1
	dec a                                            ; $4e4b: $3d
	ldh [$9f], a                                     ; $4e4c: $e0 $9f
	jr jr_002_4e5a                                   ; $4e4e: $18 $0a

jr_002_4e50:
	ld a, $02                                        ; $4e50: $3e $02
	ld [$c137], a                                    ; $4e52: $ea $37 $c1
	ld [$c139], a                                    ; $4e55: $ea $39 $c1
	ldh [$9f], a                                     ; $4e58: $e0 $9f

jr_002_4e5a:
	ld a, $02                                        ; $4e5a: $3e $02
	ldh [rSC], a                                     ; $4e5c: $e0 $02
	call $2d78                                       ; $4e5e: $cd $78 $2d
	call $2d72                                       ; $4e61: $cd $72 $2d
	jp Jump_002_4f7c                                 ; $4e64: $c3 $7c $4f


	call Call_002_4f7c                               ; $4e67: $cd $7c $4f
	ld a, $03                                        ; $4e6a: $3e $03
	ldh [rSC], a                                     ; $4e6c: $e0 $02
	call $2d78                                       ; $4e6e: $cd $78 $2d
	call $2d72                                       ; $4e71: $cd $72 $2d
	call Call_002_4f87                               ; $4e74: $cd $87 $4f
	ldh a, [rSB]                                     ; $4e77: $f0 $01
	inc a                                            ; $4e79: $3c
	ld a, $fe                                        ; $4e7a: $3e $fe
	ldh [rSB], a                                     ; $4e7c: $e0 $01
	ret nz                                           ; $4e7e: $c0

Call_002_4e7f:
Jump_002_4e7f:
	ld a, $01                                        ; $4e7f: $3e $01
	ld [$c139], a                                    ; $4e81: $ea $39 $c1
	ret                                              ; $4e84: $c9


	ld hl, $ff02                                     ; $4e85: $21 $02 $ff
	ld [hl], $03                                     ; $4e88: $36 $03
	ldh a, [$9e]                                     ; $4e8a: $f0 $9e
	ldh [rSB], a                                     ; $4e8c: $e0 $01
	set 7, [hl]                                      ; $4e8e: $cb $fe

jr_002_4e90:
	bit 7, [hl]                                      ; $4e90: $cb $7e
	jr nz, jr_002_4e90                               ; $4e92: $20 $fc

	ldh a, [rSB]                                     ; $4e94: $f0 $01
	cp $ff                                           ; $4e96: $fe $ff
	call z, Call_002_4e7f                            ; $4e98: $cc $7f $4e
	ld a, $fe                                        ; $4e9b: $3e $fe
	ldh [rSB], a                                     ; $4e9d: $e0 $01
	ld [hl], $02                                     ; $4e9f: $36 $02
	set 7, [hl]                                      ; $4ea1: $cb $fe
	ret                                              ; $4ea3: $c9


	ldh a, [$9f]                                     ; $4ea4: $f0 $9f
	dec a                                            ; $4ea6: $3d
	jr z, jr_002_4ebc                                ; $4ea7: $28 $13

	ldh a, [$9d]                                     ; $4ea9: $f0 $9d
	cp $fd                                           ; $4eab: $fe $fd
	jr nz, jr_002_4ece                               ; $4ead: $20 $1f

	ld a, [$c138]                                    ; $4eaf: $fa $38 $c1
	or a                                             ; $4eb2: $b7
	jr nz, jr_002_4ece                               ; $4eb3: $20 $19

	ld a, $fc                                        ; $4eb5: $3e $fc
	call $2d9f                                       ; $4eb7: $cd $9f $2d
	jr jr_002_4ed3                                   ; $4eba: $18 $17

jr_002_4ebc:
	ldh a, [$9d]                                     ; $4ebc: $f0 $9d
	cp $fc                                           ; $4ebe: $fe $fc
	jr z, jr_002_4ed3                                ; $4ec0: $28 $11

	ld a, [wFrameCounter]                                    ; $4ec2: $fa $1f $c1
	and $03                                          ; $4ec5: $e6 $03
	jr nz, jr_002_4ece                               ; $4ec7: $20 $05

	ld a, $fd                                        ; $4ec9: $3e $fd
	call $2d9f                                       ; $4ecb: $cd $9f $2d

jr_002_4ece:
	xor a                                            ; $4ece: $af
	ld [$c13c], a                                    ; $4ecf: $ea $3c $c1
	ret                                              ; $4ed2: $c9


jr_002_4ed3:
	ld a, $01                                        ; $4ed3: $3e $01
	ld [$c13c], a                                    ; $4ed5: $ea $3c $c1
	ret                                              ; $4ed8: $c9


	ldh a, [$9f]                                     ; $4ed9: $f0 $9f
	dec a                                            ; $4edb: $3d
	jr z, jr_002_4f03                                ; $4edc: $28 $25

	ld a, [$c13d]                                    ; $4ede: $fa $3d $c1
	or a                                             ; $4ee1: $b7
	jr nz, jr_002_4eef                               ; $4ee2: $20 $0b

	ld a, [$c138]                                    ; $4ee4: $fa $38 $c1
	or a                                             ; $4ee7: $b7
	ret z                                            ; $4ee8: $c8

	ld a, $01                                        ; $4ee9: $3e $01
	ld [$c13d], a                                    ; $4eeb: $ea $3d $c1
	ret                                              ; $4eee: $c9


jr_002_4eef:
	xor a                                            ; $4eef: $af
	ld [$c13d], a                                    ; $4ef0: $ea $3d $c1
	ld a, [$c13b]                                    ; $4ef3: $fa $3b $c1
	call $2d9f                                       ; $4ef6: $cd $9f $2d
	ldh a, [$9d]                                     ; $4ef9: $f0 $9d
	ld hl, $c13b                                     ; $4efb: $21 $3b $c1
	cp [hl]                                          ; $4efe: $be
	jr z, jr_002_4f1d                                ; $4eff: $28 $1c

	jr jr_002_4f23                                   ; $4f01: $18 $20

jr_002_4f03:
	ld a, [wFrameCounter]                                    ; $4f03: $fa $1f $c1
	and $03                                          ; $4f06: $e6 $03
	jr nz, jr_002_4f10                               ; $4f08: $20 $06

	ld a, [$c13b]                                    ; $4f0a: $fa $3b $c1
	jp $2d9f                                         ; $4f0d: $c3 $9f $2d


jr_002_4f10:
	ld a, [$c138]                                    ; $4f10: $fa $38 $c1
	or a                                             ; $4f13: $b7
	ret z                                            ; $4f14: $c8

	ldh a, [$9d]                                     ; $4f15: $f0 $9d
	ld hl, $c13b                                     ; $4f17: $21 $3b $c1
	cp [hl]                                          ; $4f1a: $be
	jr nz, jr_002_4f23                               ; $4f1b: $20 $06

jr_002_4f1d:
	ld a, $01                                        ; $4f1d: $3e $01
	ld [$c13c], a                                    ; $4f1f: $ea $3c $c1
	ret                                              ; $4f22: $c9


jr_002_4f23:
	ld a, $02                                        ; $4f23: $3e $02
	ld [$c13c], a                                    ; $4f25: $ea $3c $c1
	ret                                              ; $4f28: $c9


	xor a                                            ; $4f29: $af
	ld [$c13d], a                                    ; $4f2a: $ea $3d $c1
	ldh a, [$9f]                                     ; $4f2d: $f0 $9f
	dec a                                            ; $4f2f: $3d
	jr z, jr_002_4f43                                ; $4f30: $28 $11

	ld a, [$c13c]                                    ; $4f32: $fa $3c $c1
	dec a                                            ; $4f35: $3d
	jr z, jr_002_4f4e                                ; $4f36: $28 $16

	ld a, [$c138]                                    ; $4f38: $fa $38 $c1
	or a                                             ; $4f3b: $b7
	ret z                                            ; $4f3c: $c8

	ld a, $01                                        ; $4f3d: $3e $01
	ld [$c13c], a                                    ; $4f3f: $ea $3c $c1
	ret                                              ; $4f42: $c9


jr_002_4f43:
	ld a, [$c138]                                    ; $4f43: $fa $38 $c1
	or a                                             ; $4f46: $b7
	ret nz                                           ; $4f47: $c0

	ld a, [wFrameCounter]                                    ; $4f48: $fa $1f $c1
	and $03                                          ; $4f4b: $e6 $03
	ret nz                                           ; $4f4d: $c0

jr_002_4f4e:
	ld [$c13c], a                                    ; $4f4e: $ea $3c $c1
	ldh a, [rSB]                                     ; $4f51: $f0 $01
	cp $fe                                           ; $4f53: $fe $fe
	ret nz                                           ; $4f55: $c0

	ld a, [$c13b]                                    ; $4f56: $fa $3b $c1
	call $2d9f                                       ; $4f59: $cd $9f $2d
	ld a, $01                                        ; $4f5c: $3e $01
	ld [$c13d], a                                    ; $4f5e: $ea $3d $c1
	ret                                              ; $4f61: $c9


	ld a, $02                                        ; $4f62: $3e $02
	ldh [rSC], a                                     ; $4f64: $e0 $02
	call $2d78                                       ; $4f66: $cd $78 $2d
	call $2d72                                       ; $4f69: $cd $72 $2d
	xor a                                            ; $4f6c: $af
	ldh [$9d], a                                     ; $4f6d: $e0 $9d
	ldh [$9e], a                                     ; $4f6f: $e0 $9e
	ldh [$9f], a                                     ; $4f71: $e0 $9f
	ld hl, $c137                                     ; $4f73: $21 $37 $c1
	call $cbee                                       ; $4f76: $cd $ee $cb
	jp Jump_002_4f7c                                 ; $4f79: $c3 $7c $4f


Call_002_4f7c:
Jump_002_4f7c:
	ld hl, rIE                                     ; $4f7c: $21 $ff $ff
	res 3, [hl]                                      ; $4f7f: $cb $9e
	ld hl, rIF                                     ; $4f81: $21 $0f $ff
	res 3, [hl]                                      ; $4f84: $cb $9e
	ret                                              ; $4f86: $c9


Call_002_4f87:
Jump_002_4f87:
	ld hl, $ff02                                     ; $4f87: $21 $02 $ff

jr_002_4f8a:
	bit 7, [hl]                                      ; $4f8a: $cb $7e
	jr nz, jr_002_4f8a                               ; $4f8c: $20 $fc

	ret                                              ; $4f8e: $c9


	ld a, $04                                        ; $4f8f: $3e $04
	call Call_000_12fc                                       ; $4f91: $cd $fc $12
	push af                                          ; $4f94: $f5
	ld hl, $5022                                     ; $4f95: $21 $22 $50
	call $cfa0                                       ; $4f98: $cd $a0 $cf
	call $18b7                                       ; $4f9b: $cd $b7 $18
	pop af                                           ; $4f9e: $f1
	ld b, a                                          ; $4f9f: $47

jr_002_4fa0:
	ld a, $04                                        ; $4fa0: $3e $04
	call Call_000_12fc                                       ; $4fa2: $cd $fc $12
	cp b                                             ; $4fa5: $b8
	jr z, jr_002_4fa0                                ; $4fa6: $28 $f8

	ld hl, $502a                                     ; $4fa8: $21 $2a $50
	call $cfa0                                       ; $4fab: $cd $a0 $cf
	jp $18aa                                         ; $4fae: $c3 $aa $18


	ld bc, $1080                                     ; $4fb1: $01 $80 $10
	ld hl, $99a2                                     ; $4fb4: $21 $a2 $99

jr_002_4fb7:
	ld [hl], c                                       ; $4fb7: $71
	ld a, $20                                        ; $4fb8: $3e $20
	rst AddAOntoHL                                          ; $4fba: $ef
	inc c                                            ; $4fbb: $0c
	ld [hl], c                                       ; $4fbc: $71
	ld a, $1f                                        ; $4fbd: $3e $1f
	rst SubAFromHL                                          ; $4fbf: $d7
	inc c                                            ; $4fc0: $0c
	dec b                                            ; $4fc1: $05
	jr nz, jr_002_4fb7                               ; $4fc2: $20 $f3

	ret                                              ; $4fc4: $c9


	push af                                          ; $4fc5: $f5
	xor a                                            ; $4fc6: $af
	ld bc, $0200                                     ; $4fc7: $01 $00 $02
	ld hl, $8800                                     ; $4fca: $21 $00 $88
	call $cfeb                                       ; $4fcd: $cd $eb $cf
	ld a, $20                                        ; $4fd0: $3e $20
	ld [$d7ff], a                                    ; $4fd2: $ea $ff $d7
	xor a                                            ; $4fd5: $af
	ld [wCurrTextLinePixelIdx], a                                    ; $4fd6: $ea $00 $d8
	ld [$d7fb], a                                    ; $4fd9: $ea $fb $d7
	ld [$d7f9], a                                    ; $4fdc: $ea $f9 $d7
	ld [wCharTilesDataDest], a                                    ; $4fdf: $ea $fc $d7
	ld [wCurrTilePixelIdx], a                                    ; $4fe2: $ea $fe $d7
	ld a, $03                                        ; $4fe5: $3e $03
	ld [$d7fa], a                                    ; $4fe7: $ea $fa $d7
	ld a, $88                                        ; $4fea: $3e $88
	ld [wCharTilesDataDest+1], a                                    ; $4fec: $ea $fd $d7
	pop af                                           ; $4fef: $f1
	ld b, a                                          ; $4ff0: $47
	add a                                            ; $4ff1: $87
	add b                                            ; $4ff2: $80
	ld hl, $5010                                     ; $4ff3: $21 $10 $50
	rst AddAOntoHL                                          ; $4ff6: $ef
	ld a, [hl+]                                      ; $4ff7: $2a
	ld b, a                                          ; $4ff8: $47
	ld a, [hl+]                                      ; $4ff9: $2a
	ld h, [hl]                                       ; $4ffa: $66
	ld l, a                                          ; $4ffb: $6f
	jp Func_1c32                                         ; $4ffc: $c3 $32 $1c


	ld a, [$0d17]                                    ; $4fff: $fa $17 $0d
	ld l, c                                          ; $5002: $69
	nop                                              ; $5003: $00
	jr @+$19                                         ; $5004: $18 $17

	ccf                                              ; $5006: $3f
	ld l, b                                          ; $5007: $68
	nop                                              ; $5008: $00
	sbc b                                            ; $5009: $98
	ld d, $00                                        ; $500a: $16 $00
	ld b, b                                          ; $500c: $40
	nop                                              ; $500d: $00
	sub b                                            ; $500e: $90
	rst $38                                          ; $500f: $ff
	ld e, $d3                                        ; $5010: $1e $d3
	sbc e                                            ; $5012: $9b
	ld e, $ef                                        ; $5013: $1e $ef
	sbc e                                            ; $5015: $9b
	ld e, $e2                                        ; $5016: $1e $e2
	sbc e                                            ; $5018: $9b
	ld e, $fc                                        ; $5019: $1e $fc
	sbc e                                            ; $501b: $9b
	ld e, $05                                        ; $501c: $1e $05
	ld a, c                                          ; $501e: $79
	ld e, $12                                        ; $501f: $1e $12
	ld a, c                                          ; $5021: $79
	adc [hl]                                         ; $5022: $8e
	ld h, a                                          ; $5023: $67
	sub [hl]                                         ; $5024: $96
	ld h, a                                          ; $5025: $67
	sbc [hl]                                         ; $5026: $9e
	ld h, a                                          ; $5027: $67
	and [hl]                                         ; $5028: $a6
	ld h, a                                          ; $5029: $67
	ld l, [hl]                                       ; $502a: $6e
	ld h, a                                          ; $502b: $67
	halt                                             ; $502c: $76
	ld h, a                                          ; $502d: $67
	ld a, [hl]                                       ; $502e: $7e
	ld h, a                                          ; $502f: $67
	add [hl]                                         ; $5030: $86
	ld h, a                                          ; $5031: $67
	push hl                                          ; $5032: $e5
	push bc                                          ; $5033: $c5
	ld b, l                                          ; $5034: $45
	ld c, $14                                        ; $5035: $0e $14
	call BCequBtimesC                                       ; $5037: $cd $5f $12
	ld a, h                                          ; $503a: $7c
	call $132c                                       ; $503b: $cd $2c $13
	call $cee3                                       ; $503e: $cd $e3 $ce
	ld hl, $8a40                                     ; $5041: $21 $40 $8a
	add hl, bc                                       ; $5044: $09
	pop bc                                           ; $5045: $c1
	ld a, h                                          ; $5046: $7c
	ld [$c0d8], a                                    ; $5047: $ea $d8 $c0
	ld a, l                                          ; $504a: $7d
	ld [$c0d9], a                                    ; $504b: $ea $d9 $c0
	push bc                                          ; $504e: $c5
	ld a, $10                                        ; $504f: $3e $10
	ld [$c0da], a                                    ; $5051: $ea $da $c0
	ld de, $89a0                                     ; $5054: $11 $a0 $89
	call Call_002_516c                               ; $5057: $cd $6c $51
	ld a, $40                                        ; $505a: $3e $40
	ld [$c0da], a                                    ; $505c: $ea $da $c0
	ld a, $01                                        ; $505f: $3e $01
	ld [$c0db], a                                    ; $5061: $ea $db $c0
	ld de, $89d0                                     ; $5064: $11 $d0 $89
	call Call_002_5182                               ; $5067: $cd $82 $51
	pop bc                                           ; $506a: $c1
	push bc                                          ; $506b: $c5
	ld a, $f0                                        ; $506c: $3e $f0
	ld [$c0da], a                                    ; $506e: $ea $da $c0
	ld de, $89a0                                     ; $5071: $11 $a0 $89
	call Call_002_516c                               ; $5074: $cd $6c $51
	ld a, $c0                                        ; $5077: $3e $c0
	ld [$c0da], a                                    ; $5079: $ea $da $c0
	ld a, $fe                                        ; $507c: $3e $fe
	ld [$c0db], a                                    ; $507e: $ea $db $c0
	ld de, $89d0                                     ; $5081: $11 $d0 $89
	call Call_002_5182                               ; $5084: $cd $82 $51
	pop bc                                           ; $5087: $c1
	call Call_002_5152                               ; $5088: $cd $52 $51
	push bc                                          ; $508b: $c5
	push hl                                          ; $508c: $e5
	ld de, $8980                                     ; $508d: $11 $80 $89
	call Call_002_5148                               ; $5090: $cd $48 $51
	ld a, $10                                        ; $5093: $3e $10
	rst AddAOntoHL                                          ; $5095: $ef
	ld de, $8990                                     ; $5096: $11 $90 $89
	call Call_002_5148                               ; $5099: $cd $48 $51
	pop hl                                           ; $509c: $e1
	ld c, b                                          ; $509d: $48
	dec b                                            ; $509e: $05
	ld c, $10                                        ; $509f: $0e $10
	call BCequBtimesC                                       ; $50a1: $cd $5f $12
	add hl, bc                                       ; $50a4: $09
	ld de, $89b0                                     ; $50a5: $11 $b0 $89
	call Call_002_5148                               ; $50a8: $cd $48 $51
	ld a, $10                                        ; $50ab: $3e $10
	rst AddAOntoHL                                          ; $50ad: $ef
	ld de, $89c0                                     ; $50ae: $11 $c0 $89
	call Call_002_5148                               ; $50b1: $cd $48 $51
	pop bc                                           ; $50b4: $c1
	call Call_002_5152                               ; $50b5: $cd $52 $51
	push bc                                          ; $50b8: $c5

jr_002_50b9:
	ld de, $0140                                     ; $50b9: $11 $40 $01
	add hl, de                                       ; $50bc: $19
	dec c                                            ; $50bd: $0d
	jr nz, jr_002_50b9                               ; $50be: $20 $f9

	pop bc                                           ; $50c0: $c1
	push bc                                          ; $50c1: $c5
	push hl                                          ; $50c2: $e5
	ld de, $89e0                                     ; $50c3: $11 $e0 $89
	call Call_002_5148                               ; $50c6: $cd $48 $51
	ld a, $10                                        ; $50c9: $3e $10
	rst AddAOntoHL                                          ; $50cb: $ef
	ld de, $8990                                     ; $50cc: $11 $90 $89
	call Call_002_5148                               ; $50cf: $cd $48 $51
	pop hl                                           ; $50d2: $e1
	ld c, b                                          ; $50d3: $48
	dec b                                            ; $50d4: $05
	ld c, $10                                        ; $50d5: $0e $10
	call BCequBtimesC                                       ; $50d7: $cd $5f $12
	add hl, bc                                       ; $50da: $09
	ld de, $89b0                                     ; $50db: $11 $b0 $89
	call Call_002_5148                               ; $50de: $cd $48 $51
	ld a, $10                                        ; $50e1: $3e $10
	rst AddAOntoHL                                          ; $50e3: $ef
	ld de, $89f0                                     ; $50e4: $11 $f0 $89
	call Call_002_5148                               ; $50e7: $cd $48 $51
	call Call_002_5152                               ; $50ea: $cd $52 $51
	ld de, $0150                                     ; $50ed: $11 $50 $01
	add hl, de                                       ; $50f0: $19
	pop bc                                           ; $50f1: $c1
	push bc                                          ; $50f2: $c5
	dec b                                            ; $50f3: $05
	dec c                                            ; $50f4: $0d

jr_002_50f5:
	push bc                                          ; $50f5: $c5
	push hl                                          ; $50f6: $e5

jr_002_50f7:
	ld a, [$d7f9]                                    ; $50f7: $fa $f9 $d7
	add a                                            ; $50fa: $87
	add a                                            ; $50fb: $87
	add a                                            ; $50fc: $87
	add a                                            ; $50fd: $87
	ld de, $8a00                                     ; $50fe: $11 $00 $8a
	call $1327                                       ; $5101: $cd $27 $13
	call Call_002_5148                               ; $5104: $cd $48 $51
	ld a, $10                                        ; $5107: $3e $10
	rst AddAOntoHL                                          ; $5109: $ef
	dec b                                            ; $510a: $05
	jr nz, jr_002_50f7                               ; $510b: $20 $ea

	pop hl                                           ; $510d: $e1
	pop bc                                           ; $510e: $c1
	ld de, $0140                                     ; $510f: $11 $40 $01
	add hl, de                                       ; $5112: $19
	dec c                                            ; $5113: $0d
	jr nz, jr_002_50f5                               ; $5114: $20 $df

	pop bc                                           ; $5116: $c1
	pop hl                                           ; $5117: $e1
	ld a, [wInitialA]                                    ; $5118: $fa $00 $c1
	cp $11                                           ; $511b: $fe $11
	jp nz, SafelyExecuteDataCopies                                     ; $511d: $c2 $8b $14

	push bc                                          ; $5120: $c5
	ld b, l                                          ; $5121: $45
	ld c, $20                                        ; $5122: $0e $20
	call BCequBtimesC                                       ; $5124: $cd $5f $12
	ld a, h                                          ; $5127: $7c
	call $132c                                       ; $5128: $cd $2c $13
	ld hl, $1800                                     ; $512b: $21 $00 $18
	add hl, bc                                       ; $512e: $09
	pop bc                                           ; $512f: $c1
	push bc                                          ; $5130: $c5
	push hl                                          ; $5131: $e5
	inc c                                            ; $5132: $0c
	inc b                                            ; $5133: $04
	ld e, $01                                        ; $5134: $1e $01
	call Call_002_515b                               ; $5136: $cd $5b $51
	pop hl                                           ; $5139: $e1
	pop bc                                           ; $513a: $c1
	dec b                                            ; $513b: $05
	dec c                                            ; $513c: $0d
	ld a, $21                                        ; $513d: $3e $21
	rst AddAOntoHL                                          ; $513f: $ef
	ld e, $07                                        ; $5140: $1e $07
	call Call_002_515b                               ; $5142: $cd $5b $51
	jp SafelyExecuteDataCopies                                         ; $5145: $c3 $8b $14


Call_002_5148:
	push bc                                          ; $5148: $c5
	push hl                                          ; $5149: $e5
	ld a, $10                                        ; $514a: $3e $10
	call $1675                                       ; $514c: $cd $75 $16
	pop hl                                           ; $514f: $e1
	pop bc                                           ; $5150: $c1
	ret                                              ; $5151: $c9


Call_002_5152:
	ld a, [$c0d8]                                    ; $5152: $fa $d8 $c0
	ld h, a                                          ; $5155: $67
	ld a, [$c0d9]                                    ; $5156: $fa $d9 $c0
	ld l, a                                          ; $5159: $6f
	ret                                              ; $515a: $c9


Call_002_515b:
jr_002_515b:
	push de                                          ; $515b: $d5
	ld a, b                                          ; $515c: $78
	push hl                                          ; $515d: $e5
	push bc                                          ; $515e: $c5
	call $165f                                       ; $515f: $cd $5f $16
	pop bc                                           ; $5162: $c1
	pop hl                                           ; $5163: $e1
	ld a, $20                                        ; $5164: $3e $20
	rst AddAOntoHL                                          ; $5166: $ef
	dec c                                            ; $5167: $0d
	pop de                                           ; $5168: $d1
	jr nz, jr_002_515b                               ; $5169: $20 $f0

	ret                                              ; $516b: $c9


Call_002_516c:
jr_002_516c:
	push de                                          ; $516c: $d5
	call Call_002_5148                               ; $516d: $cd $48 $51
	ld a, [$c0da]                                    ; $5170: $fa $da $c0
	bit 7, a                                         ; $5173: $cb $7f
	jr z, jr_002_517c                                ; $5175: $28 $05

	cpl                                              ; $5177: $2f
	inc a                                            ; $5178: $3c
	rst SubAFromHL                                          ; $5179: $d7
	jr jr_002_517d                                   ; $517a: $18 $01

jr_002_517c:
	rst AddAOntoHL                                          ; $517c: $ef

jr_002_517d:
	pop de                                           ; $517d: $d1
	dec b                                            ; $517e: $05
	jr nz, jr_002_516c                               ; $517f: $20 $eb

	ret                                              ; $5181: $c9


Call_002_5182:
jr_002_5182:
	push de                                          ; $5182: $d5
	call Call_002_5148                               ; $5183: $cd $48 $51
	ld a, [$c0da]                                    ; $5186: $fa $da $c0
	ld e, a                                          ; $5189: $5f
	ld a, [$c0db]                                    ; $518a: $fa $db $c0
	ld d, a                                          ; $518d: $57
	add hl, de                                       ; $518e: $19
	pop de                                           ; $518f: $d1
	dec c                                            ; $5190: $0d
	jr nz, jr_002_5182                               ; $5191: $20 $ef

	ret                                              ; $5193: $c9


	ld c, l                                          ; $5194: $4d
	ld bc, $1cdf                                     ; $5195: $01 $df $1c
	rst SubAFromDE                                          ; $5198: $df
	ld [hl+], a                                      ; $5199: $22
	rst SubAFromDE                                          ; $519a: $df

jr_002_519b:
	ld c, l                                          ; $519b: $4d
	db $dd                                           ; $519c: $dd
	ld d, c                                          ; $519d: $51
	rst SubAFromDE                                          ; $519e: $df
	ld c, l                                          ; $519f: $4d
	rst SubAFromDE                                          ; $51a0: $df

jr_002_51a1:
	ld [hl+], a                                      ; $51a1: $22
	db $dd                                           ; $51a2: $dd
	inc e                                            ; $51a3: $1c
	rst SubAFromDE                                          ; $51a4: $df
	ld [hl+], a                                      ; $51a5: $22
	rst SubAFromDE                                          ; $51a6: $df
	ld e, l                                          ; $51a7: $5d
	rst SubAFromDE                                          ; $51a8: $df
	ld d, l                                          ; $51a9: $55
	rst SubAFromDE                                          ; $51aa: $df
	ld e, c                                          ; $51ab: $59
	rst SubAFromDE                                          ; $51ac: $df
	ld d, l                                          ; $51ad: $55
	ld [hl], a                                       ; $51ae: $77
	ldh a, [$f9]                                     ; $51af: $f0 $f9
	rst SubAFromDE                                          ; $51b1: $df
	jp hl                                            ; $51b2: $e9


	rst SubAFromDE                                          ; $51b3: $df
	ld c, a                                          ; $51b4: $4f
	db $dd                                           ; $51b5: $dd
	ld c, c                                          ; $51b6: $49
	rst $38                                          ; $51b7: $ff
	rst SubAFromDE                                          ; $51b8: $df
	ld a, $d7                                        ; $51b9: $3e $d7
	ld h, e                                          ; $51bb: $63
	rst SubAFromDE                                          ; $51bc: $df
	ld a, $ff                                        ; $51bd: $3e $ff
	rst SubAFromDE                                          ; $51bf: $df
	jr jr_002_51a1                                   ; $51c0: $18 $df

	jr c, jr_002_519b                                ; $51c2: $38 $d7

	jr jr_002_5235                                   ; $51c4: $18 $6f

	ldh [$df], a                                     ; $51c6: $e0 $df
	inc bc                                           ; $51c8: $03
	rst SubAFromDE                                          ; $51c9: $df
	ld a, $dd                                        ; $51ca: $3e $dd
	ld h, b                                          ; $51cc: $60
	rst SubAFromDE                                          ; $51cd: $df
	ld a, a                                          ; $51ce: $7f
	ld h, a                                          ; $51cf: $67
	ldh a, [$df]                                     ; $51d0: $f0 $df
	ld e, $df                                        ; $51d2: $1e $df
	inc bc                                           ; $51d4: $03
	ld l, a                                          ; $51d5: $6f
	ret nc                                           ; $51d6: $d0

	rst SubAFromDE                                          ; $51d7: $df
	ld c, $df                                        ; $51d8: $0e $df
	ld e, $df                                        ; $51da: $1e $df
	ld [hl], $df                                     ; $51dc: $36 $df
	ld h, [hl]                                       ; $51de: $66
	rst SubAFromDE                                          ; $51df: $df
	ld a, a                                          ; $51e0: $7f
	db $dd                                           ; $51e1: $dd
	ld b, $ff                                        ; $51e2: $06 $ff
	rst SubAFromDE                                          ; $51e4: $df
	ld a, a                                          ; $51e5: $7f
	rst SubAFromDE                                          ; $51e6: $df
	ld h, b                                          ; $51e7: $60
	rst SubAFromDE                                          ; $51e8: $df
	ld a, [hl]                                       ; $51e9: $7e
	ld [hl], a                                       ; $51ea: $77
	call c, $e06f                                    ; $51eb: $dc $6f $e0
	ld [hl], a                                       ; $51ee: $77
	ret nc                                           ; $51ef: $d0

	ld l, a                                          ; $51f0: $6f
	xor $6f                                          ; $51f1: $ee $6f
	ldh a, [$df]                                     ; $51f3: $f0 $df
	ld a, a                                          ; $51f5: $7f
	rst SubAFromDE                                          ; $51f6: $df
	inc bc                                           ; $51f7: $03
	db $dd                                           ; $51f8: $dd
	ld b, $db                                        ; $51f9: $06 $db
	inc c                                            ; $51fb: $0c
	ld h, a                                          ; $51fc: $67
	add b                                            ; $51fd: $80
	ld h, a                                          ; $51fe: $67
	ld a, [$f067]                                    ; $51ff: $fa $67 $f0
	rst SubAFromDE                                          ; $5202: $df
	ccf                                              ; $5203: $3f
	ld h, a                                          ; $5204: $67
	ret nz                                           ; $5205: $c0

	ld l, a                                          ; $5206: $6f
	ld a, d                                          ; $5207: $7a
	cpl                                              ; $5208: $2f
	ld hl, sp-$21                                    ; $5209: $f8 $df
	ld [$f86f], sp                                   ; $520b: $08 $6f $f8
	ld l, a                                          ; $520e: $6f
	db $ec                                           ; $520f: $ec
	ld h, a                                          ; $5210: $67
	and $fb                                          ; $5211: $e6 $fb
	ld h, a                                          ; $5213: $67
	ldh [$57], a                                     ; $5214: $e0 $57
	ldh a, [$fd]                                     ; $5216: $f0 $fd
	ld [hl], a                                       ; $5218: $77
	and b                                            ; $5219: $a0
	rst SubAFromDE                                          ; $521a: $df
	ld h, a                                          ; $521b: $67
	rst SubAFromDE                                          ; $521c: $df
	ld c, $77                                        ; $521d: $0e $77
	add h                                            ; $521f: $84
	ld [hl], a                                       ; $5220: $77
	db $fc                                           ; $5221: $fc
	rst SubAFromDE                                          ; $5222: $df
	ld b, $df                                        ; $5223: $06 $df
	inc b                                            ; $5225: $04
	rst SubAFromDE                                          ; $5226: $df
	inc c                                            ; $5227: $0c
	rst SubAFromDE                                          ; $5228: $df
	ld [$18df], sp                                   ; $5229: $08 $df $18
	rst SubAFromDE                                          ; $522c: $df
	db $10                                           ; $522d: $10
	rst SubAFromDE                                          ; $522e: $df
	jr nc, jr_002_52a7                               ; $522f: $30 $76

	cp [hl]                                          ; $5231: $be
	rst SubAFromDE                                          ; $5232: $df
	inc e                                            ; $5233: $1c
	db $dd                                           ; $5234: $dd

jr_002_5235:
	ld [hl], $6f                                     ; $5235: $36 $6f
	ld a, b                                          ; $5237: $78
	rst $38                                          ; $5238: $ff
	ld l, a                                          ; $5239: $6f
	ld b, [hl]                                       ; $523a: $46
	ld h, a                                          ; $523b: $67
	ld a, [$6067]                                    ; $523c: $fa $67 $60
	rst SubAFromDE                                          ; $523f: $df
	ld h, b                                          ; $5240: $60
	ld h, a                                          ; $5241: $67
	ld d, b                                          ; $5242: $50
	ld l, a                                          ; $5243: $6f
	and $db                                          ; $5244: $e6 $db
	ld h, e                                          ; $5246: $63
	ld [hl], a                                       ; $5247: $77
	ldh [rPCM34], a                                  ; $5248: $e0 $77
	nop                                              ; $524a: $00
	ld [hl], a                                       ; $524b: $77
	db $10                                           ; $524c: $10
	ld h, [hl]                                       ; $524d: $66
	ret nc                                           ; $524e: $d0

	ld d, a                                          ; $524f: $57
	ldh a, [$df]                                     ; $5250: $f0 $df
	ld h, b                                          ; $5252: $60
	ld h, [hl]                                       ; $5253: $66
	ldh a, [$df]                                     ; $5254: $f0 $df
	ld l, a                                          ; $5256: $6f
	ld l, a                                          ; $5257: $6f
	ld a, [de]                                       ; $5258: $1a
	rst $38                                          ; $5259: $ff
	db $db                                           ; $525a: $db
	ld h, e                                          ; $525b: $63
	rst SubAFromDE                                          ; $525c: $df
	ld a, a                                          ; $525d: $7f
	db $db                                           ; $525e: $db
	ld h, e                                          ; $525f: $63
	rst $38                                          ; $5260: $ff
	rst SubAFromDE                                          ; $5261: $df
	inc a                                            ; $5262: $3c
	rst SubAFromHL                                          ; $5263: $d7
	jr @-$1f                                         ; $5264: $18 $df

	inc a                                            ; $5266: $3c
	rst $38                                          ; $5267: $ff
	db $db                                           ; $5268: $db
	inc bc                                           ; $5269: $03
	ld e, [hl]                                       ; $526a: $5e
	ld h, b                                          ; $526b: $60
	rst SubAFromDE                                          ; $526c: $df
	ld h, e                                          ; $526d: $63
	rst SubAFromDE                                          ; $526e: $df
	ld h, [hl]                                       ; $526f: $66
	rst SubAFromDE                                          ; $5270: $df
	ld l, h                                          ; $5271: $6c
	rst SubAFromDE                                          ; $5272: $df
	ld a, h                                          ; $5273: $7c
	rst SubAFromDE                                          ; $5274: $df
	ld a, [hl]                                       ; $5275: $7e
	rst SubAFromDE                                          ; $5276: $df
	ld h, a                                          ; $5277: $67
	ld [hl], a                                       ; $5278: $77
	ret nc                                           ; $5279: $d0

	push de                                          ; $527a: $d5
	ld h, b                                          ; $527b: $60
	ld [hl], a                                       ; $527c: $77
	sub b                                            ; $527d: $90
	rst SubAFromDE                                          ; $527e: $df
	ld b, c                                          ; $527f: $41
	rst SubAFromDE                                          ; $5280: $df
	ld h, e                                          ; $5281: $63
	rst SubAFromDE                                          ; $5282: $df
	ld [hl], a                                       ; $5283: $77
	rst SubAFromDE                                          ; $5284: $df
	ld a, a                                          ; $5285: $7f
	rst SubAFromDE                                          ; $5286: $df
	ld l, e                                          ; $5287: $6b
	ld l, a                                          ; $5288: $6f
	or b                                             ; $5289: $b0
	rst SubAFromDE                                          ; $528a: $df
	ld h, e                                          ; $528b: $63
	rst SubAFromDE                                          ; $528c: $df
	ld [hl], e                                       ; $528d: $73
	rst SubAFromDE                                          ; $528e: $df
	ld a, e                                          ; $528f: $7b
	rst SubAFromDE                                          ; $5290: $df
	ld a, a                                          ; $5291: $7f
	rst SubAFromDE                                          ; $5292: $df
	ld l, a                                          ; $5293: $6f
	ld l, a                                          ; $5294: $6f
	ret nc                                           ; $5295: $d0

	ld b, [hl]                                       ; $5296: $46
	db $10                                           ; $5297: $10
	ld h, a                                          ; $5298: $67
	ld h, $57                                        ; $5299: $26 $57
	ld h, b                                          ; $529b: $60
	rst SubAFromDE                                          ; $529c: $df
	ld h, e                                          ; $529d: $63
	rst SubAFromDE                                          ; $529e: $df
	ld l, a                                          ; $529f: $6f
	rst SubAFromDE                                          ; $52a0: $df
	ld a, e                                          ; $52a1: $7b
	rst SubAFromDE                                          ; $52a2: $df
	ld [hl], e                                       ; $52a3: $73
	ld [hl], a                                       ; $52a4: $77
	ld h, b                                          ; $52a5: $60
	ld h, a                                          ; $52a6: $67

jr_002_52a7:
	ldh [$df], a                                     ; $52a7: $e0 $df
	ld h, [hl]                                       ; $52a9: $66
	ld l, a                                          ; $52aa: $6f
	or b                                             ; $52ab: $b0
	ld l, a                                          ; $52ac: $6f
	ld b, b                                          ; $52ad: $40
	rst SubAFromDE                                          ; $52ae: $df
	ld a, $66                                        ; $52af: $3e $66
	ld h, b                                          ; $52b1: $60
	rst SubAFromDE                                          ; $52b2: $df
	ld a, [hl]                                       ; $52b3: $7e
	push de                                          ; $52b4: $d5
	db $18, $67

	db $30, $57

	ld d, b                                          ; $52b9: $50
	rst SubAFromDE                                          ; $52ba: $df
	ld h, e                                          ; $52bb: $63
	db $dd                                           ; $52bc: $dd
	ld [hl], $dd                                     ; $52bd: $36 $dd
	inc e                                            ; $52bf: $1c
	halt                                             ; $52c0: $76
	ld [hl], b                                       ; $52c1: $70
	db $dd                                           ; $52c2: $dd
	ld h, e                                          ; $52c3: $63
	rst SubAFromDE                                          ; $52c4: $df
	ld l, e                                          ; $52c5: $6b
	rst SubAFromDE                                          ; $52c6: $df
	ld a, a                                          ; $52c7: $7f
	rst SubAFromDE                                          ; $52c8: $df
	ld [hl], a                                       ; $52c9: $77
	rst SubAFromDE                                          ; $52ca: $df
	ld [hl], $df                                     ; $52cb: $36 $df
	ld [hl+], a                                      ; $52cd: $22
	ld [hl], a                                       ; $52ce: $77
	ldh a, [$df]                                     ; $52cf: $f0 $df
	halt                                             ; $52d1: $76
	rst SubAFromDE                                          ; $52d2: $df
	inc a                                            ; $52d3: $3c
	rst SubAFromDE                                          ; $52d4: $df
	inc e                                            ; $52d5: $1c
	rst SubAFromDE                                          ; $52d6: $df
	ld a, $df                                        ; $52d7: $3e $df
	ld h, a                                          ; $52d9: $67
	rst SubAFromDE                                          ; $52da: $df
	ld b, e                                          ; $52db: $43
	rst $38                                          ; $52dc: $ff
	db $db                                           ; $52dd: $db
	ld h, [hl]                                       ; $52de: $66
	ld h, [hl]                                       ; $52df: $66
	db $fa


Data_02_52e1::
	db $3a, $00, $40, $3a, $34, $42, $01, $40
	db $3a, $4d, $42, $3a, $2a, $47, $01, $40
	db $3a, $49, $47, $3a, $44, $49, $2a, $40
	db $3a, $59, $49, $3a, $4a, $4e, $2a, $40
	db $3a, $69, $4e, $3a, $c2, $50, $53, $40
	db $3a, $d3, $50, $3a, $e4, $55, $53, $40
	db $3a, $06, $56, $3a, $5f, $58, $7c, $40
	db $3a, $70, $58, $3a, $ae, $5d, $7c, $40
	db $3a, $d0, $5d, $3a, $27, $61, $a5, $40
	db $3a, $41, $61, $3a, $67, $66, $a5, $40
	db $3a, $94, $66, $3a, $43, $68, $ce, $40
	db $3a, $51, $68, $3a, $43, $6d, $ce, $40
	db $3a, $72, $6d, $3a, $ef, $70, $f7, $40
	db $3a, $04, $71, $3a, $51, $76, $f7, $40
	db $3a, $77, $76, $3a, $82, $79, $20, $41
	db $3a, $a3, $79, $3a, $73, $7e, $20, $41
	db $3a, $a9, $7e, $3b, $3c, $41, $49, $41
	db $3b, $53, $41, $3b, $97, $46, $49, $41
	db $3b, $d0, $46, $3b, $b7, $48, $72, $41
	db $3b, $c4, $48, $3b, $17, $4c, $72, $41
	db $3b, $3d, $4c, $3b, $26, $4f, $9b, $41
	db $3b, $43, $4f, $3b, $54, $54, $9b, $41
	db $3b, $75, $54, $3b, $21, $57, $bc, $41
	db $3b, $3c, $57, $3b, $da, $5c, $bc, $41
	db $3b, $0c, $5d, $3b, $9d, $5f, $e5, $41
	db $3b, $b9, $5f, $3b, $cd, $65, $e5, $41
	db $3b, $02, $66, $3b, $53, $68, $0e, $42
	db $3b, $6d, $68, $3b, $30, $6e, $0e, $42
	db $3b, $63, $6e, $3b, $4d, $70, $37, $42
	db $3b, $62, $70, $3b, $c5, $75, $37, $42
	db $3b, $e5, $75, $3b, $3f, $79, $60, $42
	db $3b, $4b, $79, $3b, $5a, $7e, $60, $42
	db $3b, $83, $7e, $3c, $d5, $41, $89, $42
	db $3c, $de, $41, $3c, $b2, $48, $89, $42
	db $3c, $d1, $48, $3c, $56, $4c, $b2, $42
	db $3c, $71, $4c, $3c, $f3, $50, $b2, $42
	db $3c, $0f, $51, $3c, $d1, $53, $db, $42
	db $3c, $ee, $53, $3c, $a7, $5a, $db, $42
	db $3c, $cd, $5a, $3c, $da, $5b, $04, $43
	db $3c, $f7, $5b, $3c, $c9, $60, $04, $43
	db $3c, $fb, $60, $3c, $6c, $64, $2d, $43
	db $3c, $8d, $64, $3c, $14, $6a, $2d, $43
	db $3c, $4e, $6a, $3c, $80, $6c, $56, $43
	db $3c, $97, $6c, $3c, $22, $71, $56, $43
	db $3c, $58, $71, $3c, $a5, $73, $7f, $43
	db $3c, $bb, $73, $3c, $30, $7a, $7f, $43
	db $3c, $6b, $7a, $3c, $1f, $7c, $a8, $43
	db $3c, $33, $7c, $3d, $48, $41, $a8, $43
	db $3d, $85, $41, $3d, $cf, $44, $d1, $43
	db $3d, $e6, $44, $3d, $7b, $4a, $d1, $43
	db $3d, $ac, $4a, $3d, $3d, $4d, $fa, $43
	db $3d, $53, $4d, $3d, $5a, $51, $fa, $43
	db $3d, $8e, $51, $3d, $39, $54, $23, $44
	db $3d, $45, $54, $3d, $e7, $58, $23, $44
	db $3d, $0a, $59, $3d, $29, $5b, $4c, $44
	db $3d, $36, $5b, $3d, $bd, $60, $4c, $44
	db $3d, $e0, $60, $3d, $db, $63, $75, $44
	db $3d, $f4, $63, $3d, $5e, $6a, $75, $44
	db $3d, $9b, $6a, $3d, $2b, $6d, $9e, $44
	db $3d, $48, $6d, $3d, $14, $72, $9e, $44
	db $3d, $4d, $72, $3d, $ae, $7a, $c7, $44
	db $3d, $01, $7b, $3e, $62, $44, $f0, $44
	db $3e, $b2, $44, $3e, $b0, $4b, $19, $45
	db $3e, $cc, $4b, $3e, $93, $55, $42, $45
	db $3e, $d3, $55, $3e, $42, $5f, $bc, $41
	db $3e, $93, $5f, $3e, $87, $69, $6b, $45
	db $3e, $bb, $69, $3e, $9d, $74, $94, $45
	db $3e, $ed, $74, $3e, $ca, $7e, $bd, $45
	db $3e, $ee, $7e, $3f, $a0, $45, $e6, $45
	db $3f, $ce, $45, $3f, $21, $4b, $0f, $46
	db $3f, $3b, $4b, $3f, $d9, $51, $38, $46
	db $3f, $04, $52, $3f, $2c, $5b, $94, $45
	db $3f, $7c, $5b, $3f, $ef, $62, $61, $46
	db $3f, $3a, $63, $3f, $75, $6a, $8a, $46
	db $3f, $bb, $6a, $3f, $f3, $70, $b3, $46
	db $3f, $bb, $6a, $3f, $f3, $70, $b3, $46
	db $3f, $34, $71, $3f, $0d, $78, $dc, $46
	db $3f, $32, $78, $40, $5f, $41, $05, $47
	db $3f, $32, $78, $40, $5f, $41, $05, $47
	db $40, $b9, $41, $40, $39, $46, $2e, $47
	db $40, $6c, $46, $40, $0f, $4b, $57, $47
	db $40, $25, $4b, $40, $4f, $54, $80, $47
	db $40, $9d, $54, $40, $6a, $5c, $a9, $47
	db $40, $93, $5c, $40, $19, $64, $d2, $47
	db $40, $3a, $64, $40, $aa, $68, $fb, $47
	db $40, $c3, $68, $40, $62, $70, $24, $48
	db $40, $96, $70, $40, $53, $78, $4d, $48
	db $40, $92, $78, $41, $f5, $40, $76, $48
	db $41, $2e, $41, $41, $2b, $48, $9f, $48
	db $41, $2e, $41, $41, $2b, $48, $9f, $48
	db $41, $5d, $48, $41, $d1, $52, $c8, $48
	db $41, $18, $53, $41, $9f, $5c, $f1, $48
	db $3f, $3b, $4b, $3f, $d9, $51, $38, $46
	db $41, $ad, $5c, $41, $4b, $64, $1a, $49
	db $41, $7d, $64, $41, $35, $6c, $43, $49
	db $41, $89, $6c, $41, $06, $74, $6c, $49
	db $41, $30, $74, $41, $b9, $7d, $95, $49
	db $41, $06, $7e, $42, $df, $45, $be, $49
	db $42, $15, $46, $42, $db, $50, $e7, $49
	db $42, $07, $51, $42, $0c, $5b, $10, $4a
	db $42, $61, $5b, $42, $3d, $64, $39, $4a
	db $42, $5f, $64, $42, $45, $70, $62, $4a
	db $42, $7d, $70, $42, $e6, $7a, $8b, $4a
	db $42, $25, $7b, $43, $3b, $46, $b4, $4a
	db $43, $87, $46, $43, $20, $52, $dd, $4a
	db $43, $6f, $52, $43, $e9, $5b, $06, $4b
	db $43, $1d, $5c, $43, $20, $65, $2f, $4b
	db $43, $6e, $65, $43, $45, $6f, $58, $4b
	db $43, $9e, $6f, $43, $40, $79, $81, $4b
	db $43, $97, $79, $44, $50, $43, $aa, $4b
	db $44, $97, $43, $44, $c1, $4a, $d3, $4b
	db $44, $ef, $4a, $44, $a2, $52, $fc, $4b
	db $44, $cd, $52, $44, $7a, $5b, $25, $4c
	db $44, $af, $5b, $44, $20, $65, $4e, $4c
	db $44, $6d, $65, $44, $fe, $6d, $77, $4c
	db $44, $25, $6e, $44, $e9, $76, $a0, $4c
	db $44, $25, $77, $44, $8a, $7e, $c9, $4c
	db $44, $bd, $7e, $45, $ea, $44, $f2, $4c
	db $45, $fd, $44, $45, $85, $4c, $1b, $4d
	db $45, $bb, $4c, $45, $55, $52, $44, $4d
	db $45, $6e, $52, $45, $20, $59, $6d, $4d
	db $45, $49, $59, $45, $8f, $65, $96, $4d
	db $45, $bf, $65, $45, $e9, $6d, $bf, $4d
	db $45, $40, $6e, $45, $68, $7a, $e8, $4d
	db $45, $40, $6e, $45, $68, $7a, $e8, $4d
	db $45, $a9, $7a, $46, $b4, $43, $11, $4e
	db $45, $a9, $7a, $46, $b4, $43, $11, $4e
	db $46, $e1, $43, $46, $45, $4c, $3a, $4e
	db $46, $72, $4c, $46, $c2, $53, $63, $4e
	db $46, $f7, $53, $46, $1a, $5d, $8c, $4e
	db $46, $f7, $53, $46, $1a, $5d, $8c, $4e
	db $46, $55, $5d, $46, $b5, $68, $b5, $4e
	db $46, $f5, $68, $46, $e2, $73, $de, $4e
	db $46, $f5, $68, $46, $e2, $73, $de, $4e
	db $46, $23, $74, $46, $c3, $7a, $07, $4f
	db $46, $f4, $7a, $47, $a5, $43, $30, $4f
	db $47, $da, $43, $47, $eb, $4e, $59, $4f
	db $47, $1e, $4f, $47, $86, $59, $82, $4f
	db $47, $da, $59, $47, $70, $64, $ab, $4f
	db $47, $da, $59, $47, $70, $64, $ab, $4f
	db $47, $bd, $64, $47, $ff, $6d, $d4, $4f
	db $47, $58, $6e, $47, $4a, $79, $fd, $4f
	db $47, $91, $79, $48, $e7, $42, $26, $50
	db $48, $38, $43, $48, $6f, $4d, $4f, $50
	db $48, $b4, $4d, $48, $92, $56, $78, $50
	db $48, $cf, $56, $48, $c1, $62, $a1, $50
	db $48, $1c, $63, $48, $d8, $6c, $ca, $50
	db $48, $0d, $6d, $48, $80, $77, $f3, $50
	db $48, $d2, $77, $49, $76, $42, $1c, $51
	db $49, $90, $42, $49, $48, $49, $45, $51
	db $49, $76, $49, $49, $2d, $54, $6e, $51
	db $49, $44, $54, $49, $50, $5e, $97, $51
	db $49, $73, $5e, $49, $f2, $68, $c0, $51
	db $49, $30, $69, $49, $d2, $72, $e9, $51
	db $49, $07, $73, $49, $27, $7d, $12, $52
	db $49, $61, $7d, $4a, $bf, $44, $3b, $52
	db $4a, $e5, $44, $4a, $de, $50, $64, $52
	db $4a, $3e, $51, $4a, $bd, $5b, $8d, $52
	db $4a, $00, $5c, $4a, $3e, $63, $b6, $52
	db $4a, $78, $63, $4a, $07, $6f, $df, $52
	db $4a, $64, $6f, $4a, $9b, $79, $08, $53
	db $4a, $64, $6f, $4a, $9b, $79, $08, $53
	db $4a, $cf, $79, $4b, $1a, $45, $31, $53
	db $4b, $73, $45, $4b, $1c, $50, $5a, $53
	db $4b, $66, $50, $4b, $f4, $59, $83, $53
	db $4b, $40, $5a, $4b, $9e, $64, $ac, $53
	db $4b, $cb, $64, $4b, $72, $6d, $d5, $53
	db $4b, $be, $6d, $4b, $01, $77, $fe, $53
	db $4b, $37, $77, $4b, $39, $7d, $27, $54
	db $4b, $4f, $7d, $4c, $4e, $47, $50, $54
	db $4c, $82, $47, $4c, $b6, $51, $79, $54
	db $4c, $fb, $51, $4c, $b3, $5b, $a2, $54
	db $4c, $f9, $5b, $4c, $14, $66, $cb, $54
	db $4c, $58, $66, $4c, $d4, $6f, $f4, $54
	db $4c, $28, $70, $4c, $e1, $77, $1d, $55
	db $4c, $2e, $78, $4c, $99, $7e, $46, $55
	db $4c, $bf, $7e, $4d, $d7, $48, $6f, $55
	db $4d, $2d, $49, $4d, $88, $52, $98, $55
	db $4d, $d6, $52, $4d, $37, $5c, $c1, $55
	db $4d, $77, $5c, $4d, $d3, $66, $ea, $55
	db $4d, $2d, $67, $4d, $f3, $70, $13, $56
	db $4d, $49, $71, $4d, $44, $7b, $3c, $56
	db $4d, $89, $7b, $4e, $bd, $44, $65, $56
	db $4e, $cf, $44, $4e, $5f, $4f, $8e, $56
	db $4e, $aa, $4f, $4e, $f4, $57, $b7, $56
	db $4e, $13, $58, $4e, $d8, $61, $e0, $56
	db $4e, $2c, $62, $4e, $ff, $6b, $09, $57
	db $4e, $48, $6c, $4e, $c8, $71, $32, $57
	db $4e, $f4, $71, $4e, $1f, $7c, $5b, $57
	db $4e, $72, $7c, $4f, $15, $46, $84, $57
	db $4f, $63, $46, $4f, $50, $4e, $ad, $57
	db $4f, $73, $4e, $4f, $d4, $56, $d6, $57
	db $4f, $f7, $56, $4f, $41, $61, $ff, $57
	db $4f, $7c, $61, $4f, $da, $68, $28, $58
	db $4f, $f4, $68, $4f, $c0, $73, $51, $58
	db $4f, $04, $74, $4f, $df, $7b, $7a, $58
	db $4f, $20, $7c, $50, $81, $45, $a3, $58
	db $50, $a8, $45, $50, $35, $4e, $cc, $58
	db $50, $5b, $4e, $50, $35, $52, $f5, $58
	db $50, $55, $52, $50, $bc, $58, $1e, $59
	db $50, $e2, $58, $50, $5c, $5a, $2f, $59
	db $50, $66, $5a, $50, $c2, $60, $58, $59
	db $50, $e9, $60, $50, $a4, $67, $81, $59
	db $50, $ce, $67, $50, $a1, $71, $aa, $59
	db $50, $eb, $71, $50, $59, $7c, $d3, $59
	db $50, $b6, $7c, $51, $fa, $43, $fc, $59
	db $51, $37, $44, $51, $b7, $4b, $25, $5a
	db $51, $e8, $4b, $51, $db, $4d, $4e, $5a
	db $51, $ec, $4d, $51, $23, $58, $77, $5a
	db $51, $65, $58, $51, $f7, $59, $a0, $5a
	db $51, $0c, $5a, $51, $61, $5b, $b1, $5a
	db $51, $76, $5b, $51, $08, $5d, $c2, $5a
	db $51, $1d, $5d, $51, $dc, $5d, $d3, $5a
	db $51, $ec, $5d, $51, $22, $68, $f4, $5a
	db $51, $61, $68, $51, $5a, $72, $25, $5b
	db $51, $b0, $72, $51, $e5, $7c, $56, $5b
	db $51, $25, $7d, $52, $10, $49, $87, $5b
	db $52, $57, $49, $52, $3b, $53, $b8, $5b
	db $52, $76, $53, $52, $5f, $5e, $e9, $5b
	db $52, $9e, $5e, $52, $5e, $69, $1a, $5c
	db $52, $bb, $69, $52, $de, $73, $4b, $5c
	db $52, $09, $74, $52, $f5, $7d, $7c, $5c
	db $52, $38, $7e, $53, $be, $47, $ad, $5c
	db $53, $0c, $48, $53, $22, $54, $de, $5c
	db $53, $81, $54, $53, $5b, $5f, $0f, $5d
	db $53, $b2, $5f, $53, $f3, $69, $40, $5d
	db $53, $3d, $6a, $53, $7a, $74, $71, $5d
	db $53, $be, $74, $53, $93, $7d, $a2, $5d
	db $53, $d6, $7d, $54, $54, $46, $d3, $5d
	db $54, $a4, $46, $54, $b4, $4e, $04, $5e
	db $54, $07, $4f, $54, $7b, $58, $35, $5e
	db $54, $d4, $58, $54, $59, $62, $66, $5e
	db $54, $a0, $62, $54, $d9, $6b, $97, $5e
	db $54, $2d, $6c, $54, $6a, $76, $c8, $5e
	db $54, $b2, $76, $55, $f9, $41, $f9, $5e
	db $55, $5b, $42, $55, $98, $4d, $2a, $5f
	db $55, $ee, $4d, $55, $07, $59, $5b, $5f
	db $55, $6c, $59, $55, $31, $64, $8c, $5f
	db $55, $74, $64, $55, $19, $70, $bd, $5f
	db $55, $65, $70, $55, $e5, $7a, $ee, $5f
	db $55, $36, $7b, $56, $32, $43, $1f, $60
	db $56, $7f, $43, $56, $3f, $4e, $50, $60
	db $56, $89, $4e, $56, $d7, $57, $81, $60
	db $56, $39, $58, $56, $a0, $62, $b2, $60
	db $56, $e4, $62, $56, $dc, $6d, $e3, $60
	db $56, $3d, $6e, $56, $9d, $74, $14, $61
	db $56, $ed, $74, $56, $ed, $7a, $45, $61
	db $56, $31, $7b, $57, $bf, $46, $76, $61
	db $57, $0e, $47, $57, $ab, $51, $a7, $61
	db $57, $03, $52, $57, $cd, $5c, $d8, $61
	db $57, $0f, $5d, $57, $0e, $68, $09, $62
	db $57, $0f, $5d, $57, $0e, $68, $3a, $62
	db $57, $0f, $5d, $57, $0e, $68, $6b, $62
	db $57, $64, $68, $57, $0d, $72, $9c, $62
	db $57, $5a, $72, $57, $93, $7c, $cd, $62
	db $57, $d5, $7c, $58, $c2, $47, $fe, $62
	db $58, $24, $48, $58, $e5, $52, $2f, $63
	db $58, $1b, $53, $58, $e1, $5e, $60, $63
	db $58, $34, $5f, $58, $94, $6a, $91, $63
	db $58, $ca, $6a, $58, $55, $74, $c2, $63
	db $58, $aa, $74, $58, $df, $7c, $f3, $63
	db $58, $32, $7d, $59, $0f, $49, $24, $64
	db $59, $64, $49, $59, $bd, $53, $55, $64
	db $59, $0a, $54, $59, $17, $5c, $86, $64
	db $59, $5d, $5c, $59, $15, $67, $b7, $64
	db $59, $61, $67, $59, $c8, $72, $e8, $64
	db $59, $0b, $73, $59, $bc, $7e, $19, $65
	db $59, $24, $7f, $5a, $d8, $46, $4a, $65
	db $5a, $15, $47, $5a, $7b, $50, $73, $65
	db $5a, $c9, $50, $5a, $5f, $58, $a4, $65
	db $5a, $94, $58, $5a, $46, $60, $d5, $65
	db $5a, $8c, $60, $5a, $b5, $69, $06, $66
	db $5a, $04, $6a, $5a, $a7, $74, $37, $66
	db $5a, $07, $75, $5a, $c8, $7d, $68, $66
	db $5a, $11, $7e, $5b, $31, $49, $99, $66
	db $5b, $87, $49, $5b, $d2, $54, $ca, $66
	db $5b, $28, $55, $5b, $b4, $5f, $fb, $66
	db $5b, $0a, $60, $5b, $74, $69, $2c, $67
	db $5b, $c9, $69, $5b, $1f, $74, $5d, $67
	db $5b, $64, $74, $5b, $96, $7e, $8e, $67
	db $5b, $d6, $7e, $5c, $eb, $48, $bf, $67
	db $5c, $3d, $49, $5c, $9a, $53, $f0, $67
	db $5c, $e6, $53, $5c, $7f, $5d, $21, $68
	db $5c, $d5, $5d, $5c, $b3, $66, $52, $68
	db $5c, $08, $67, $5c, $f9, $6c, $83, $68
	db $5c, $27, $6d, $5c, $19, $74, $b4, $68
	db $5c, $32, $74, $5c, $df, $7b, $b4, $68
	db $5c, $f2, $7b, $5d, $fe, $45, $cd, $68
	db $5d, $3f, $46, $5d, $c1, $51, $fe, $68
	db $5d, $1b, $52, $5d, $d8, $5d, $2f, $69
	db $5d, $20, $5e, $5d, $59, $67, $60, $69
	db $5d, $9b, $67, $5d, $1a, $71, $91, $69
	db $5d, $72, $71, $5d, $ba, $7d, $c2, $69
	db $5d, $16, $7e, $5e, $53, $49, $f3, $69
	db $5e, $ab, $49, $5e, $bd, $54, $24, $6a
	db $5e, $0b, $55, $5e, $bd, $5d, $55, $6a
	db $5e, $0b, $5e, $5e, $c3, $66, $7e, $6a
	db $5e, $15, $67, $5e, $9f, $71, $a7, $6a
	db $5e, $fd, $71, $5e, $58, $7c, $d0, $6a
	db $5e, $ab, $7c, $5f, $41, $45, $f9, $6a
	db $5f, $99, $45, $5f, $25, $4e, $22, $6b
	db $5f, $6f, $4e, $5f, $29, $56, $4b, $6b
	db $5f, $44, $56, $5f, $f5, $5a, $74, $6b
	db $5f, $2d, $5b, $5f, $25, $61, $a5, $6b
	db $5f, $55, $61, $5f, $7f, $67, $d6, $6b
	db $5f, $a3, $67, $5f, $ca, $6e, $ff, $6b
	db $5f, $fa, $6e, $5f, $18, $6f, $30, $6c
	db $5f, $22, $6f, $5f, $10, $71, $61, $6c
	db $5f, $1e, $71, $5f, $4a, $74, $72, $6c


Data_02_5c89::
	dw $5d75
	dw $5da0
	dw $5dcb
	dw $5df3
	dw $5e1b
	dw $5e43
	dw $5e6b
	dw $5e93
	dw $5ebb
	dw $5ee3
	dw $5f0b
	dw $5f33
	dw $5f4f
	dw $5f77
	dw $5f9f
	dw $5fc7
	dw $5fe3
	dw $5fff
	dw $602a
	dw $6055
	dw $607d
	dw $60a5
	dw $60cd
	dw $60f5
	dw $611d
	dw $6145
	dw $6161
	dw $6189
	dw $61b1
	dw $61d9
	dw $61f5
	dw $6211
	dw $623c
	dw $6267
	dw $628f
	dw $62b7
	dw $62df
	dw $6307
	dw $632f
	dw $634b
	dw $6373
	dw $639b
	dw $63c3
	dw $63df
	dw $640a
	dw $6435
	dw $645d
	dw $6485
	dw $64ad
	dw $64d5
	dw $6500
	dw $6528
	dw $6544
	dw $656c
	dw $6594
	dw $65bc
	dw $65d8
	dw $65f4
	dw $661f
	dw $664a
	dw $6672
	dw $669a
	dw $66c2
	dw $66ea
	dw $6712
	dw $673a
	dw $6765
	dw $678d
	dw $67b5
	dw $67dd
	dw $6808
	dw $6833
	dw $685b
	dw $6883
	dw $68ab
	dw $68d3
	dw $68fb
	dw $6923
	dw $694b
	dw $6973
	dw $699b
	dw $69c3
	dw $69ee
	dw $6a19
	dw $6a41
	dw $6a69
	dw $6a91
	dw $6ab9
	dw $6ae1
	dw $6b09
	dw $6b31
	dw $6b59
	dw $6b84
	dw $6baf
	dw $6bd7
	dw $6bff
	dw $6c27
	dw $6c4f
	dw $6c77
	dw $6c9f
	dw $6cc7
	dw $6cef
	dw $6d17
	dw $6d33
	dw $6d4f
	dw $6d6b
	dw $6d87
	dw $6da3
	dw $6dbf
	dw $6dde
	dw $6dfa
	dw $6e22
	dw $6e3e
	dw $6e5a
	dw $6e76
	dw $6e95
	dw $6eb4
	dw $6ed0


;
	nop                                              ; $5d75: $00
	nop                                              ; $5d76: $00
	ld sp, hl                                        ; $5d77: $f9
	ld h, c                                          ; $5d78: $61
	nop                                              ; $5d79: $00
	ld b, b                                          ; $5d7a: $40
	nop                                              ; $5d7b: $00
	add b                                            ; $5d7c: $80
	rst $38                                          ; $5d7d: $ff
	ld sp, hl                                        ; $5d7e: $f9
	ld h, c                                          ; $5d7f: $61
	jp nc, $d342                                     ; $5d80: $d2 $42 $d3

	call nc, $0aff                                   ; $5d83: $d4 $ff $0a
	ld b, $10                                        ; $5d86: $06 $10
	jr nz, jr_002_5d8c                               ; $5d88: $20 $02

	ld h, d                                          ; $5d8a: $62
	ld b, a                                          ; $5d8b: $47

jr_002_5d8c:
	ld h, c                                          ; $5d8c: $61
	ldh a, [rSCY]                                    ; $5d8d: $f0 $42
	ld h, c                                          ; $5d8f: $61
	xor l                                            ; $5d90: $ad
	ld b, h                                          ; $5d91: $44
	ld h, c                                          ; $5d92: $61
	halt                                             ; $5d93: $76
	ld b, [hl]                                       ; $5d94: $46
	ld h, c                                          ; $5d95: $61
	ld [hl], $48                                     ; $5d96: $36 $48
	ld h, c                                          ; $5d98: $61
	ld bc, $614a                                     ; $5d99: $01 $4a $61
	jp $004b                                         ; $5d9c: $c3 $4b $00


	nop                                              ; $5d9f: $00
	ld [$f900], sp                                   ; $5da0: $08 $00 $f9
	ld h, c                                          ; $5da3: $61
	and l                                            ; $5da4: $a5
	ld c, l                                          ; $5da5: $4d
	nop                                              ; $5da6: $00
	add b                                            ; $5da7: $80
	rst $38                                          ; $5da8: $ff
	ld sp, hl                                        ; $5da9: $f9
	ld h, c                                          ; $5daa: $61
	ld b, a                                          ; $5dab: $47
	ld d, b                                          ; $5dac: $50
	db $d3                                           ; $5dad: $d3
	call nc, $0aff                                   ; $5dae: $d4 $ff $0a
	ld b, $10                                        ; $5db1: $06 $10
	jr jr_002_5db7                                   ; $5db3: $18 $02

	and $47                                          ; $5db5: $e6 $47

jr_002_5db7:
	ld h, c                                          ; $5db7: $61
	ld l, c                                          ; $5db8: $69
	ld d, b                                          ; $5db9: $50
	ld h, c                                          ; $5dba: $61
	ld a, $52                                        ; $5dbb: $3e $52
	ld h, c                                          ; $5dbd: $61
	ld e, $54                                        ; $5dbe: $1e $54
	ld h, c                                          ; $5dc0: $61
	rst SubAFromBC                                          ; $5dc1: $e7
	ld d, l                                          ; $5dc2: $55
	ld h, c                                          ; $5dc3: $61
	adc $57                                          ; $5dc4: $ce $57
	ld h, c                                          ; $5dc6: $61
	xor d                                            ; $5dc7: $aa
	ld e, c                                          ; $5dc8: $59
	nop                                              ; $5dc9: $00
	nop                                              ; $5dca: $00
	nop                                              ; $5dcb: $00
	nop                                              ; $5dcc: $00
	ld sp, hl                                        ; $5dcd: $f9
	ld h, c                                          ; $5dce: $61
	and l                                            ; $5dcf: $a5
	ld e, e                                          ; $5dd0: $5b
	nop                                              ; $5dd1: $00
	add b                                            ; $5dd2: $80
	rst $38                                          ; $5dd3: $ff
	ld sp, hl                                        ; $5dd4: $f9
	ld h, c                                          ; $5dd5: $61
	and l                                            ; $5dd6: $a5
	ld e, [hl]                                       ; $5dd7: $5e
	db $d3                                           ; $5dd8: $d3
	call nc, $0aff                                   ; $5dd9: $d4 $ff $0a
	dec b                                            ; $5ddc: $05
	db $10                                           ; $5ddd: $10
	jr nz, jr_002_5de2                               ; $5dde: $20 $02

	ld d, [hl]                                       ; $5de0: $56
	ld c, b                                          ; $5de1: $48

jr_002_5de2:
	ld h, c                                          ; $5de2: $61
	rst JumpTable                                          ; $5de3: $c7
	ld e, [hl]                                       ; $5de4: $5e
	ld h, c                                          ; $5de5: $61
	call nz, Call_002_6160                           ; $5de6: $c4 $60 $61
	cp [hl]                                          ; $5de9: $be
	ld h, d                                          ; $5dea: $62
	ld h, c                                          ; $5deb: $61
	cp a                                             ; $5dec: $bf
	ld h, h                                          ; $5ded: $64
	ld h, c                                          ; $5dee: $61
	cp b                                             ; $5def: $b8
	ld h, [hl]                                       ; $5df0: $66
	nop                                              ; $5df1: $00
	nop                                              ; $5df2: $00
	ld [$f900], sp                                   ; $5df3: $08 $00 $f9
	ld h, c                                          ; $5df6: $61
	or d                                             ; $5df7: $b2
	ld l, b                                          ; $5df8: $68
	nop                                              ; $5df9: $00
	add b                                            ; $5dfa: $80
	rst $38                                          ; $5dfb: $ff
	ld sp, hl                                        ; $5dfc: $f9
	ld h, c                                          ; $5dfd: $61
	xor b                                            ; $5dfe: $a8
	ld l, e                                          ; $5dff: $6b
	db $d3                                           ; $5e00: $d3
	call nc, $08ff                                   ; $5e01: $d4 $ff $08
	dec b                                            ; $5e04: $05
	db $10                                           ; $5e05: $10
	jr nz, @+$03                                     ; $5e06: $20 $01

	add $48                                          ; $5e08: $c6 $48
	ld h, c                                          ; $5e0a: $61
	ret nz                                           ; $5e0b: $c0

	ld l, e                                          ; $5e0c: $6b
	ld h, c                                          ; $5e0d: $61
	ld a, h                                          ; $5e0e: $7c
	ld l, l                                          ; $5e0f: $6d
	ld h, c                                          ; $5e10: $61
	ld c, [hl]                                       ; $5e11: $4e
	ld l, a                                          ; $5e12: $6f
	ld h, c                                          ; $5e13: $61
	ld hl, $6171                                     ; $5e14: $21 $71 $61
	rst FarCall                                          ; $5e17: $f7
	ld [hl], d                                       ; $5e18: $72
	nop                                              ; $5e19: $00
	nop                                              ; $5e1a: $00
	nop                                              ; $5e1b: $00
	nop                                              ; $5e1c: $00
	ld sp, hl                                        ; $5e1d: $f9
	ld h, c                                          ; $5e1e: $61
	or a                                             ; $5e1f: $b7
	ld [hl], h                                       ; $5e20: $74
	nop                                              ; $5e21: $00
	add b                                            ; $5e22: $80
	rst $38                                          ; $5e23: $ff
	ld sp, hl                                        ; $5e24: $f9
	ld h, c                                          ; $5e25: $61
	sbc a                                            ; $5e26: $9f
	ld [hl], a                                       ; $5e27: $77
	db $d3                                           ; $5e28: $d3
	call nc, $0aff                                   ; $5e29: $d4 $ff $0a
	dec b                                            ; $5e2c: $05
	db $10                                           ; $5e2d: $10
	jr nz, jr_002_5e32                               ; $5e2e: $20 $02

	ld [hl], $49                                     ; $5e30: $36 $49

jr_002_5e32:
	ld h, c                                          ; $5e32: $61
	jp nz, $6177                                     ; $5e33: $c2 $77 $61

	and l                                            ; $5e36: $a5
	ld a, c                                          ; $5e37: $79
	ld h, c                                          ; $5e38: $61
	and h                                            ; $5e39: $a4
	ld a, e                                          ; $5e3a: $7b
	ld h, c                                          ; $5e3b: $61
	halt                                             ; $5e3c: $76
	ld a, l                                          ; $5e3d: $7d
	ld h, c                                          ; $5e3e: $61
	ld h, b                                          ; $5e3f: $60
	ld a, a                                          ; $5e40: $7f
	nop                                              ; $5e41: $00
	nop                                              ; $5e42: $00
	nop                                              ; $5e43: $00
	nop                                              ; $5e44: $00
	ld sp, hl                                        ; $5e45: $f9
	ld h, d                                          ; $5e46: $62
	ld [hl], $41                                     ; $5e47: $36 $41
	nop                                              ; $5e49: $00
	add b                                            ; $5e4a: $80
	rst $38                                          ; $5e4b: $ff
	ld sp, hl                                        ; $5e4c: $f9
	ld h, d                                          ; $5e4d: $62
	ld d, c                                          ; $5e4e: $51
	ld b, h                                          ; $5e4f: $44
	db $d3                                           ; $5e50: $d3
	call nc, $0aff                                   ; $5e51: $d4 $ff $0a
	dec b                                            ; $5e54: $05
	jr jr_002_5e77                                   ; $5e55: $18 $20

	ld [bc], a                                       ; $5e57: $02
	and [hl]                                         ; $5e58: $a6
	ld c, c                                          ; $5e59: $49
	ld h, d                                          ; $5e5a: $62
	ld [hl], c                                       ; $5e5b: $71
	ld b, h                                          ; $5e5c: $44
	ld h, d                                          ; $5e5d: $62
	scf                                              ; $5e5e: $37
	ld b, [hl]                                       ; $5e5f: $46
	ld h, d                                          ; $5e60: $62
	rst SubAFromDE                                          ; $5e61: $df
	ld b, a                                          ; $5e62: $47
	ld h, d                                          ; $5e63: $62
	adc l                                            ; $5e64: $8d
	ld c, c                                          ; $5e65: $49
	ld h, d                                          ; $5e66: $62
	ld a, $4b                                        ; $5e67: $3e $4b
	nop                                              ; $5e69: $00
	nop                                              ; $5e6a: $00
	nop                                              ; $5e6b: $00
	nop                                              ; $5e6c: $00
	ld sp, hl                                        ; $5e6d: $f9
	ld h, d                                          ; $5e6e: $62
	jp hl                                            ; $5e6f: $e9


	ld c, h                                          ; $5e70: $4c
	nop                                              ; $5e71: $00
	add b                                            ; $5e72: $80
	rst $38                                          ; $5e73: $ff
	ld sp, hl                                        ; $5e74: $f9
	ld h, d                                          ; $5e75: $62
	xor b                                            ; $5e76: $a8

jr_002_5e77:
	ld c, a                                          ; $5e77: $4f
	db $d3                                           ; $5e78: $d3
	call nc, $0aff                                   ; $5e79: $d4 $ff $0a
	dec b                                            ; $5e7c: $05
	db $10                                           ; $5e7d: $10
	jr nz, jr_002_5e82                               ; $5e7e: $20 $02

	ld d, $4a                                        ; $5e80: $16 $4a

jr_002_5e82:
	ld h, d                                          ; $5e82: $62
	ret                                              ; $5e83: $c9


	ld c, a                                          ; $5e84: $4f
	ld h, d                                          ; $5e85: $62
	xor [hl]                                         ; $5e86: $ae
	ld d, c                                          ; $5e87: $51
	ld h, d                                          ; $5e88: $62
	add l                                            ; $5e89: $85
	ld d, e                                          ; $5e8a: $53
	ld h, d                                          ; $5e8b: $62
	ld c, l                                          ; $5e8c: $4d
	ld d, l                                          ; $5e8d: $55
	ld h, d                                          ; $5e8e: $62
	dec de                                           ; $5e8f: $1b
	ld d, a                                          ; $5e90: $57
	nop                                              ; $5e91: $00
	nop                                              ; $5e92: $00
	ld [$f900], sp                                   ; $5e93: $08 $00 $f9
	ld h, d                                          ; $5e96: $62
	db $dd                                           ; $5e97: $dd
	ld e, b                                          ; $5e98: $58
	nop                                              ; $5e99: $00
	add b                                            ; $5e9a: $80
	rst $38                                          ; $5e9b: $ff
	ld sp, hl                                        ; $5e9c: $f9
	ld h, d                                          ; $5e9d: $62
	ld a, l                                          ; $5e9e: $7d
	ld e, e                                          ; $5e9f: $5b
	db $d3                                           ; $5ea0: $d3
	call nc, $0aff                                   ; $5ea1: $d4 $ff $0a
	dec b                                            ; $5ea4: $05
	db $10                                           ; $5ea5: $10
	jr nz, jr_002_5ea9                               ; $5ea6: $20 $01

	add [hl]                                         ; $5ea8: $86

jr_002_5ea9:
	ld c, d                                          ; $5ea9: $4a
	ld h, d                                          ; $5eaa: $62
	sbc [hl]                                         ; $5eab: $9e
	ld e, e                                          ; $5eac: $5b
	ld h, d                                          ; $5ead: $62
	halt                                             ; $5eae: $76
	ld e, l                                          ; $5eaf: $5d
	ld h, d                                          ; $5eb0: $62
	ld h, c                                          ; $5eb1: $61
	ld e, a                                          ; $5eb2: $5f
	ld h, d                                          ; $5eb3: $62
	dec [hl]                                         ; $5eb4: $35
	ld h, c                                          ; $5eb5: $61
	ld h, d                                          ; $5eb6: $62
	nop                                              ; $5eb7: $00
	ld h, e                                          ; $5eb8: $63
	nop                                              ; $5eb9: $00
	nop                                              ; $5eba: $00
	nop                                              ; $5ebb: $00
	nop                                              ; $5ebc: $00
	ld sp, hl                                        ; $5ebd: $f9
	ld h, d                                          ; $5ebe: $62
	call nz, $0064                                   ; $5ebf: $c4 $64 $00
	add b                                            ; $5ec2: $80
	rst $38                                          ; $5ec3: $ff
	ld sp, hl                                        ; $5ec4: $f9
	ld h, d                                          ; $5ec5: $62
	ldh [c], a                                       ; $5ec6: $e2
	ld h, [hl]                                       ; $5ec7: $66
	db $d3                                           ; $5ec8: $d3
	call nc, $0aff                                   ; $5ec9: $d4 $ff $0a
	dec b                                            ; $5ecc: $05
	ld [$0220], sp                                   ; $5ecd: $08 $20 $02
	or $4a                                           ; $5ed0: $f6 $4a
	ld h, d                                          ; $5ed2: $62
	ld [$6267], sp                                   ; $5ed3: $08 $67 $62
	db $db                                           ; $5ed6: $db
	ld l, b                                          ; $5ed7: $68
	ld h, d                                          ; $5ed8: $62
	jp nz, Jump_002_626a                             ; $5ed9: $c2 $6a $62

	sub h                                            ; $5edc: $94
	ld l, h                                          ; $5edd: $6c
	ld h, d                                          ; $5ede: $62
	ld h, d                                          ; $5edf: $62
	ld l, [hl]                                       ; $5ee0: $6e
	nop                                              ; $5ee1: $00
	nop                                              ; $5ee2: $00
	nop                                              ; $5ee3: $00
	ld [$62f9], sp                                   ; $5ee4: $08 $f9 $62
	jr z, jr_002_5f59                                ; $5ee7: $28 $70

	nop                                              ; $5ee9: $00
	add b                                            ; $5eea: $80
	rst $38                                          ; $5eeb: $ff
	ld sp, hl                                        ; $5eec: $f9
	ld h, d                                          ; $5eed: $62
	dec d                                            ; $5eee: $15
	ld [hl], e                                       ; $5eef: $73
	db $d3                                           ; $5ef0: $d3
	call nc, $0aff                                   ; $5ef1: $d4 $ff $0a
	dec b                                            ; $5ef4: $05
	db $10                                           ; $5ef5: $10
	db $10                                           ; $5ef6: $10
	ld [bc], a                                       ; $5ef7: $02
	ld h, [hl]                                       ; $5ef8: $66
	ld c, e                                          ; $5ef9: $4b
	ld h, d                                          ; $5efa: $62
	inc a                                            ; $5efb: $3c
	ld [hl], e                                       ; $5efc: $73
	ld h, d                                          ; $5efd: $62
	add hl, bc                                       ; $5efe: $09
	ld [hl], l                                       ; $5eff: $75
	ld h, d                                          ; $5f00: $62
	call $6276                                       ; $5f01: $cd $76 $62
	adc h                                            ; $5f04: $8c
	ld a, b                                          ; $5f05: $78
	ld h, d                                          ; $5f06: $62
	ld d, [hl]                                       ; $5f07: $56
	ld a, d                                          ; $5f08: $7a
	nop                                              ; $5f09: $00
	nop                                              ; $5f0a: $00
	nop                                              ; $5f0b: $00
	nop                                              ; $5f0c: $00
	ld sp, hl                                        ; $5f0d: $f9
	ld h, d                                          ; $5f0e: $62
	dec de                                           ; $5f0f: $1b
	ld a, h                                          ; $5f10: $7c
	nop                                              ; $5f11: $00
	add b                                            ; $5f12: $80
	rst $38                                          ; $5f13: $ff
	ld sp, hl                                        ; $5f14: $f9
	ld h, d                                          ; $5f15: $62
	jr @+$81                                         ; $5f16: $18 $7f

	db $d3                                           ; $5f18: $d3
	call nc, $0aff                                   ; $5f19: $d4 $ff $0a
	dec b                                            ; $5f1c: $05
	ld [$0220], sp                                   ; $5f1d: $08 $20 $02
	sub $4b                                          ; $5f20: $d6 $4b
	ld h, d                                          ; $5f22: $62
	inc a                                            ; $5f23: $3c
	ld a, a                                          ; $5f24: $7f
	ld h, e                                          ; $5f25: $63
	rlca                                             ; $5f26: $07
	ld b, c                                          ; $5f27: $41
	ld h, e                                          ; $5f28: $63
	add $42                                          ; $5f29: $c6 $42
	ld h, e                                          ; $5f2b: $63
	add h                                            ; $5f2c: $84
	ld b, h                                          ; $5f2d: $44
	ld h, e                                          ; $5f2e: $63
	ld b, d                                          ; $5f2f: $42
	ld b, [hl]                                       ; $5f30: $46
	nop                                              ; $5f31: $00
	nop                                              ; $5f32: $00
	ld [$f900], sp                                   ; $5f33: $08 $00 $f9
	ld h, e                                          ; $5f36: $63
	ld a, [$0047]                                    ; $5f37: $fa $47 $00
	add b                                            ; $5f3a: $80
	rst $38                                          ; $5f3b: $ff
	ld sp, hl                                        ; $5f3c: $f9
	ld h, e                                          ; $5f3d: $63
	jp hl                                            ; $5f3e: $e9


	ld c, d                                          ; $5f3f: $4a
	db $d3                                           ; $5f40: $d3
	call nc, $0aff                                   ; $5f41: $d4 $ff $0a
	ld bc, $2008                                     ; $5f44: $01 $08 $20
	ld [bc], a                                       ; $5f47: $02
	or $4b                                           ; $5f48: $f6 $4b
	ld h, e                                          ; $5f4a: $63
	ld c, $4b                                        ; $5f4b: $0e $4b
	nop                                              ; $5f4d: $00
	nop                                              ; $5f4e: $00
	ld [$f900], sp                                   ; $5f4f: $08 $00 $f9
	ld h, e                                          ; $5f52: $63
	add sp, $4c                                      ; $5f53: $e8 $4c
	nop                                              ; $5f55: $00
	add b                                            ; $5f56: $80
	rst $38                                          ; $5f57: $ff
	ld sp, hl                                        ; $5f58: $f9

jr_002_5f59:
	ld h, e                                          ; $5f59: $63
	ld l, b                                          ; $5f5a: $68
	ld c, a                                          ; $5f5b: $4f
	db $d3                                           ; $5f5c: $d3
	call nc, $0aff                                   ; $5f5d: $d4 $ff $0a
	dec b                                            ; $5f60: $05
	ld [$0120], sp                                   ; $5f61: $08 $20 $01
	ld h, [hl]                                       ; $5f64: $66
	ld c, h                                          ; $5f65: $4c
	ld h, e                                          ; $5f66: $63
	adc d                                            ; $5f67: $8a
	ld c, a                                          ; $5f68: $4f
	ld h, e                                          ; $5f69: $63
	ld d, l                                          ; $5f6a: $55
	ld d, c                                          ; $5f6b: $51
	ld h, e                                          ; $5f6c: $63
	inc l                                            ; $5f6d: $2c
	ld d, e                                          ; $5f6e: $53
	ld h, e                                          ; $5f6f: $63
	add hl, de                                       ; $5f70: $19
	ld d, l                                          ; $5f71: $55
	ld h, e                                          ; $5f72: $63
	rst FarCall                                          ; $5f73: $f7
	ld d, [hl]                                       ; $5f74: $56
	nop                                              ; $5f75: $00
	nop                                              ; $5f76: $00
	nop                                              ; $5f77: $00
	nop                                              ; $5f78: $00
	ld sp, hl                                        ; $5f79: $f9
	ld h, e                                          ; $5f7a: $63
	rst SubAFromHL                                          ; $5f7b: $d7
	ld e, b                                          ; $5f7c: $58
	nop                                              ; $5f7d: $00
	add b                                            ; $5f7e: $80
	rst $38                                          ; $5f7f: $ff
	ld sp, hl                                        ; $5f80: $f9
	ld h, e                                          ; $5f81: $63
	bit 3, e                                         ; $5f82: $cb $5b
	db $d3                                           ; $5f84: $d3
	call nc, $0aff                                   ; $5f85: $d4 $ff $0a
	dec b                                            ; $5f88: $05
	db $10                                           ; $5f89: $10
	jr nz, @+$03                                     ; $5f8a: $20 $01

	sub $4c                                          ; $5f8c: $d6 $4c
	ld h, e                                          ; $5f8e: $63
	add sp, $5b                                      ; $5f8f: $e8 $5b
	ld h, e                                          ; $5f91: $63
	db $ed                                           ; $5f92: $ed
	ld e, l                                          ; $5f93: $5d
	ld h, e                                          ; $5f94: $63
	ld [$635f], a                                    ; $5f95: $ea $5f $63
	ldh a, [$61]                                     ; $5f98: $f0 $61
	ld h, e                                          ; $5f9a: $63
	ldh a, [c]                                       ; $5f9b: $f2
	ld h, e                                          ; $5f9c: $63
	nop                                              ; $5f9d: $00
	nop                                              ; $5f9e: $00
	nop                                              ; $5f9f: $00
	nop                                              ; $5fa0: $00
	ld sp, hl                                        ; $5fa1: $f9
	ld h, e                                          ; $5fa2: $63
	push hl                                          ; $5fa3: $e5
	ld h, l                                          ; $5fa4: $65
	nop                                              ; $5fa5: $00
	add b                                            ; $5fa6: $80
	rst $38                                          ; $5fa7: $ff
	ld sp, hl                                        ; $5fa8: $f9
	ld h, e                                          ; $5fa9: $63
	jp nz, $d368                                     ; $5faa: $c2 $68 $d3

	call nc, $0aff                                   ; $5fad: $d4 $ff $0a
	dec b                                            ; $5fb0: $05
	ld [$0220], sp                                   ; $5fb1: $08 $20 $02
	ld b, [hl]                                       ; $5fb4: $46
	ld c, l                                          ; $5fb5: $4d
	ld h, e                                          ; $5fb6: $63
	rst SubAFromDE                                          ; $5fb7: $df
	ld l, b                                          ; $5fb8: $68
	ld h, e                                          ; $5fb9: $63
	adc d                                            ; $5fba: $8a
	ld l, d                                          ; $5fbb: $6a
	ld h, e                                          ; $5fbc: $63
	ld b, c                                          ; $5fbd: $41
	ld l, h                                          ; $5fbe: $6c
	ld h, e                                          ; $5fbf: $63
	di                                               ; $5fc0: $f3
	ld l, l                                          ; $5fc1: $6d
	ld h, e                                          ; $5fc2: $63
	and d                                            ; $5fc3: $a2
	ld l, a                                          ; $5fc4: $6f
	nop                                              ; $5fc5: $00
	nop                                              ; $5fc6: $00
	ld [$f900], sp                                   ; $5fc7: $08 $00 $f9
	ld h, e                                          ; $5fca: $63
	ld e, e                                          ; $5fcb: $5b
	ld [hl], c                                       ; $5fcc: $71
	nop                                              ; $5fcd: $00
	add b                                            ; $5fce: $80
	rst $38                                          ; $5fcf: $ff
	ld sp, hl                                        ; $5fd0: $f9
	ld h, e                                          ; $5fd1: $63
	db $ed                                           ; $5fd2: $ed
	ld [hl], e                                       ; $5fd3: $73
	db $d3                                           ; $5fd4: $d3
	call nc, $0aff                                   ; $5fd5: $d4 $ff $0a
	ld bc, $2008                                     ; $5fd8: $01 $08 $20
	ld [bc], a                                       ; $5fdb: $02
	ld h, [hl]                                       ; $5fdc: $66
	ld c, l                                          ; $5fdd: $4d
	ld h, e                                          ; $5fde: $63
	rlca                                             ; $5fdf: $07
	ld [hl], h                                       ; $5fe0: $74
	nop                                              ; $5fe1: $00
	nop                                              ; $5fe2: $00
	nop                                              ; $5fe3: $00
	nop                                              ; $5fe4: $00
	ld sp, hl                                        ; $5fe5: $f9
	ld h, e                                          ; $5fe6: $63
	rst SubAFromDE                                          ; $5fe7: $df
	ld [hl], l                                       ; $5fe8: $75
	nop                                              ; $5fe9: $00
	add b                                            ; $5fea: $80
	rst $38                                          ; $5feb: $ff
	ld sp, hl                                        ; $5fec: $f9
	ld h, e                                          ; $5fed: $63
	or b                                             ; $5fee: $b0
	ld a, b                                          ; $5fef: $78
	db $d3                                           ; $5ff0: $d3
	call nc, $0aff                                   ; $5ff1: $d4 $ff $0a
	ld bc, $1010                                     ; $5ff4: $01 $10 $10
	ld [bc], a                                       ; $5ff7: $02
	add [hl]                                         ; $5ff8: $86
	ld c, l                                          ; $5ff9: $4d
	ld h, e                                          ; $5ffa: $63
	db $d3                                           ; $5ffb: $d3
	ld a, b                                          ; $5ffc: $78
	nop                                              ; $5ffd: $00
	nop                                              ; $5ffe: $00
	nop                                              ; $5fff: $00
	nop                                              ; $6000: $00
	ld sp, hl                                        ; $6001: $f9
	ld h, e                                          ; $6002: $63
	xor h                                            ; $6003: $ac
	ld a, d                                          ; $6004: $7a
	nop                                              ; $6005: $00
	add b                                            ; $6006: $80
	rst $38                                          ; $6007: $ff
	ld sp, hl                                        ; $6008: $f9
	ld h, e                                          ; $6009: $63
	dec sp                                           ; $600a: $3b
	ld a, [hl]                                       ; $600b: $7e
	db $d3                                           ; $600c: $d3
	call nc, $06ff                                   ; $600d: $d4 $ff $06
	ld b, $20                                        ; $6010: $06 $20
	jr nz, jr_002_6015                               ; $6012: $20 $01

	ld a, [bc]                                       ; $6014: $0a

jr_002_6015:
	ld c, [hl]                                       ; $6015: $4e
	ld h, e                                          ; $6016: $63
	ld h, c                                          ; $6017: $61
	ld a, [hl]                                       ; $6018: $7e
	ld h, e                                          ; $6019: $63
	add b                                            ; $601a: $80
	ld a, a                                          ; $601b: $7f
	ld h, h                                          ; $601c: $64
	xor a                                            ; $601d: $af
	ld b, b                                          ; $601e: $40
	ld h, h                                          ; $601f: $64
	db $dd                                           ; $6020: $dd
	ld b, c                                          ; $6021: $41
	ld h, h                                          ; $6022: $64
	ld [bc], a                                       ; $6023: $02
	ld b, e                                          ; $6024: $43
	ld h, h                                          ; $6025: $64
	add hl, sp                                       ; $6026: $39
	ld b, h                                          ; $6027: $44
	nop                                              ; $6028: $00
	nop                                              ; $6029: $00
	nop                                              ; $602a: $00
	nop                                              ; $602b: $00
	ld sp, hl                                        ; $602c: $f9
	ld h, h                                          ; $602d: $64
	ld l, e                                          ; $602e: $6b
	ld b, l                                          ; $602f: $45
	nop                                              ; $6030: $00
	add b                                            ; $6031: $80
	rst $38                                          ; $6032: $ff
	ld sp, hl                                        ; $6033: $f9
	ld h, h                                          ; $6034: $64
	sbc c                                            ; $6035: $99
	ld c, b                                          ; $6036: $48
	db $d3                                           ; $6037: $d3
	call nc, $06ff                                   ; $6038: $d4 $ff $06
	ld b, $18                                        ; $603b: $06 $18
	jr nz, jr_002_6040                               ; $603d: $20 $01

	adc [hl]                                         ; $603f: $8e

jr_002_6040:
	ld c, [hl]                                       ; $6040: $4e
	ld h, h                                          ; $6041: $64
	cp c                                             ; $6042: $b9
	ld c, b                                          ; $6043: $48
	ld h, h                                          ; $6044: $64
	ret z                                            ; $6045: $c8

	ld c, c                                          ; $6046: $49
	ld h, h                                          ; $6047: $64
	db $dd                                           ; $6048: $dd
	ld c, d                                          ; $6049: $4a
	ld h, h                                          ; $604a: $64
	ldh a, [rWX]                                     ; $604b: $f0 $4b
	ld h, h                                          ; $604d: $64
	db $fc                                           ; $604e: $fc
	ld c, h                                          ; $604f: $4c
	ld h, h                                          ; $6050: $64
	rlca                                             ; $6051: $07
	ld c, [hl]                                       ; $6052: $4e
	nop                                              ; $6053: $00
	nop                                              ; $6054: $00
	ld [$f900], sp                                   ; $6055: $08 $00 $f9
	ld h, h                                          ; $6058: $64
	ld [de], a                                       ; $6059: $12
	ld c, a                                          ; $605a: $4f
	nop                                              ; $605b: $00
	add b                                            ; $605c: $80
	rst $38                                          ; $605d: $ff
	ld sp, hl                                        ; $605e: $f9
	ld h, h                                          ; $605f: $64
	dec d                                            ; $6060: $15
	ld d, d                                          ; $6061: $52
	db $d3                                           ; $6062: $d3
	call nc, $08ff                                   ; $6063: $d4 $ff $08
	dec b                                            ; $6066: $05
	db $10                                           ; $6067: $10
	jr nz, jr_002_606c                               ; $6068: $20 $02

	cp $4e                                           ; $606a: $fe $4e

jr_002_606c:
	ld h, h                                          ; $606c: $64
	ld a, [hl-]                                      ; $606d: $3a
	ld d, d                                          ; $606e: $52
	ld h, h                                          ; $606f: $64
	sbc [hl]                                         ; $6070: $9e
	ld d, e                                          ; $6071: $53
	ld h, h                                          ; $6072: $64
	dec e                                            ; $6073: $1d
	ld d, l                                          ; $6074: $55
	ld h, h                                          ; $6075: $64
	adc a                                            ; $6076: $8f
	ld d, [hl]                                       ; $6077: $56
	ld h, h                                          ; $6078: $64
	ldh a, [$57]                                     ; $6079: $f0 $57
	nop                                              ; $607b: $00
	nop                                              ; $607c: $00
	nop                                              ; $607d: $00
	nop                                              ; $607e: $00
	ld sp, hl                                        ; $607f: $f9
	ld h, h                                          ; $6080: $64
	ld [hl], c                                       ; $6081: $71
	ld e, c                                          ; $6082: $59
	nop                                              ; $6083: $00
	add b                                            ; $6084: $80
	rst $38                                          ; $6085: $ff
	ld sp, hl                                        ; $6086: $f9
	ld h, h                                          ; $6087: $64
	add c                                            ; $6088: $81
	ld e, h                                          ; $6089: $5c
	db $d3                                           ; $608a: $d3
	call nc, $08ff                                   ; $608b: $d4 $ff $08
	dec b                                            ; $608e: $05
	jr nz, jr_002_60b1                               ; $608f: $20 $20

	ld bc, $4f6e                                     ; $6091: $01 $6e $4f
	ld h, h                                          ; $6094: $64
	and [hl]                                         ; $6095: $a6
	ld e, h                                          ; $6096: $5c
	ld h, h                                          ; $6097: $64
	ld c, e                                          ; $6098: $4b
	ld e, [hl]                                       ; $6099: $5e
	ld h, h                                          ; $609a: $64
	di                                               ; $609b: $f3
	ld e, a                                          ; $609c: $5f
	ld h, h                                          ; $609d: $64
	adc h                                            ; $609e: $8c
	ld h, c                                          ; $609f: $61
	ld h, h                                          ; $60a0: $64
	inc h                                            ; $60a1: $24
	ld h, e                                          ; $60a2: $63
	nop                                              ; $60a3: $00
	nop                                              ; $60a4: $00
	ld [$f900], sp                                   ; $60a5: $08 $00 $f9
	ld h, h                                          ; $60a8: $64
	or [hl]                                          ; $60a9: $b6
	ld h, h                                          ; $60aa: $64
	nop                                              ; $60ab: $00
	add b                                            ; $60ac: $80
	rst $38                                          ; $60ad: $ff
	ld sp, hl                                        ; $60ae: $f9
	ld h, h                                          ; $60af: $64
	or l                                             ; $60b0: $b5

jr_002_60b1:
	ld h, a                                          ; $60b1: $67
	db $d3                                           ; $60b2: $d3
	call nc, $08ff                                   ; $60b3: $d4 $ff $08
	dec b                                            ; $60b6: $05
	db $10                                           ; $60b7: $10
	jr nz, jr_002_60bc                               ; $60b8: $20 $02

	sbc $4f                                          ; $60ba: $de $4f

jr_002_60bc:
	ld h, h                                          ; $60bc: $64
	rst SubAFromHL                                          ; $60bd: $d7
	ld h, a                                          ; $60be: $67
	ld h, h                                          ; $60bf: $64
	ld e, l                                          ; $60c0: $5d
	ld l, c                                          ; $60c1: $69
	ld h, h                                          ; $60c2: $64
	ldh a, [rOCPS]                                   ; $60c3: $f0 $6a
	ld h, h                                          ; $60c5: $64
	ld l, a                                          ; $60c6: $6f
	ld l, h                                          ; $60c7: $6c
	ld h, h                                          ; $60c8: $64
	ld [$006d], a                                    ; $60c9: $ea $6d $00
	nop                                              ; $60cc: $00
	ld [$f900], sp                                   ; $60cd: $08 $00 $f9
	ld h, h                                          ; $60d0: $64
	ld h, a                                          ; $60d1: $67
	ld l, a                                          ; $60d2: $6f
	nop                                              ; $60d3: $00
	add b                                            ; $60d4: $80
	rst $38                                          ; $60d5: $ff
	ld sp, hl                                        ; $60d6: $f9
	ld h, h                                          ; $60d7: $64
	and h                                            ; $60d8: $a4
	ld [hl], d                                       ; $60d9: $72
	db $d3                                           ; $60da: $d3
	call nc, $06ff                                   ; $60db: $d4 $ff $06
	dec b                                            ; $60de: $05
	db $10                                           ; $60df: $10
	jr nz, jr_002_60e3                               ; $60e0: $20 $01

	ld c, [hl]                                       ; $60e2: $4e

jr_002_60e3:
	ld d, b                                          ; $60e3: $50
	ld h, h                                          ; $60e4: $64
	call nz, $6472                                   ; $60e5: $c4 $72 $64
	rst SubAFromBC                                          ; $60e8: $e7
	ld [hl], e                                       ; $60e9: $73
	ld h, h                                          ; $60ea: $64
	inc c                                            ; $60eb: $0c
	ld [hl], l                                       ; $60ec: $75
	ld h, h                                          ; $60ed: $64
	cpl                                              ; $60ee: $2f
	halt                                             ; $60ef: $76
	ld h, h                                          ; $60f0: $64
	ld c, l                                          ; $60f1: $4d
	ld [hl], a                                       ; $60f2: $77
	nop                                              ; $60f3: $00
	nop                                              ; $60f4: $00
	ld [$f900], sp                                   ; $60f5: $08 $00 $f9
	ld h, h                                          ; $60f8: $64
	ld [hl], e                                       ; $60f9: $73
	ld a, b                                          ; $60fa: $78
	nop                                              ; $60fb: $00
	add b                                            ; $60fc: $80
	rst $38                                          ; $60fd: $ff
	ld sp, hl                                        ; $60fe: $f9
	ld h, h                                          ; $60ff: $64
	add a                                            ; $6100: $87
	ld a, e                                          ; $6101: $7b
	db $d3                                           ; $6102: $d3
	call nc, $06ff                                   ; $6103: $d4 $ff $06
	dec b                                            ; $6106: $05
	db $10                                           ; $6107: $10
	jr nz, jr_002_610b                               ; $6108: $20 $01

	cp [hl]                                          ; $610a: $be

jr_002_610b:
	ld d, b                                          ; $610b: $50
	ld h, h                                          ; $610c: $64
	xor c                                            ; $610d: $a9
	ld a, e                                          ; $610e: $7b
	ld h, h                                          ; $610f: $64
	cp l                                             ; $6110: $bd
	ld a, h                                          ; $6111: $7c
	ld h, h                                          ; $6112: $64
	rst SubAFromHL                                          ; $6113: $d7
	ld a, l                                          ; $6114: $7d
	ld h, h                                          ; $6115: $64
	db $ed                                           ; $6116: $ed
	ld a, [hl]                                       ; $6117: $7e
	ld h, l                                          ; $6118: $65
	ld [bc], a                                       ; $6119: $02
	ld b, b                                          ; $611a: $40
	nop                                              ; $611b: $00
	nop                                              ; $611c: $00
	ld [$f900], sp                                   ; $611d: $08 $00 $f9
	ld h, l                                          ; $6120: $65
	db $10                                           ; $6121: $10
	ld b, c                                          ; $6122: $41
	nop                                              ; $6123: $00
	add b                                            ; $6124: $80
	rst $38                                          ; $6125: $ff
	ld sp, hl                                        ; $6126: $f9
	ld h, l                                          ; $6127: $65
	dec d                                            ; $6128: $15
	ld b, h                                          ; $6129: $44
	db $d3                                           ; $612a: $d3
	call nc, $06ff                                   ; $612b: $d4 $ff $06
	dec b                                            ; $612e: $05
	jr jr_002_6151                                   ; $612f: $18 $20

	ld bc, $512e                                     ; $6131: $01 $2e $51
	ld h, l                                          ; $6134: $65
	scf                                              ; $6135: $37
	ld b, h                                          ; $6136: $44
	ld h, l                                          ; $6137: $65
	ld c, l                                          ; $6138: $4d
	ld b, l                                          ; $6139: $45
	ld h, l                                          ; $613a: $65
	ld l, a                                          ; $613b: $6f
	ld b, [hl]                                       ; $613c: $46
	ld h, l                                          ; $613d: $65
	add a                                            ; $613e: $87
	ld b, a                                          ; $613f: $47
	ld h, l                                          ; $6140: $65
	sbc a                                            ; $6141: $9f
	ld c, b                                          ; $6142: $48
	nop                                              ; $6143: $00
	nop                                              ; $6144: $00
	ld [$f900], sp                                   ; $6145: $08 $00 $f9
	ld h, l                                          ; $6148: $65
	call z, $0049                                    ; $6149: $cc $49 $00
	add b                                            ; $614c: $80
	rst $38                                          ; $614d: $ff
	ld sp, hl                                        ; $614e: $f9
	ld h, l                                          ; $614f: $65
	ld e, d                                          ; $6150: $5a

jr_002_6151:
	ld c, l                                          ; $6151: $4d
	db $d3                                           ; $6152: $d3
	call nc, $06ff                                   ; $6153: $d4 $ff $06
	ld bc, $2018                                     ; $6156: $01 $18 $20
	ld bc, $514e                                     ; $6159: $01 $4e $51
	ld h, l                                          ; $615c: $65
	ld a, a                                          ; $615d: $7f
	ld c, l                                          ; $615e: $4d
	nop                                              ; $615f: $00

Call_002_6160:
	nop                                              ; $6160: $00
	ld [$f900], sp                                   ; $6161: $08 $00 $f9
	ld h, l                                          ; $6164: $65
	ld d, b                                          ; $6165: $50
	ld c, [hl]                                       ; $6166: $4e
	nop                                              ; $6167: $00
	add b                                            ; $6168: $80
	rst $38                                          ; $6169: $ff
	ld sp, hl                                        ; $616a: $f9
	ld h, l                                          ; $616b: $65
	or d                                             ; $616c: $b2
	ld d, c                                          ; $616d: $51
	db $d3                                           ; $616e: $d3
	call nc, $06ff                                   ; $616f: $d4 $ff $06
	dec b                                            ; $6172: $05
	jr @+$22                                         ; $6173: $18 $20

	ld bc, $51be                                     ; $6175: $01 $be $51
	ld h, l                                          ; $6178: $65
	bit 2, c                                         ; $6179: $cb $51
	ld h, l                                          ; $617b: $65
	db $dd                                           ; $617c: $dd
	ld d, d                                          ; $617d: $52
	ld h, l                                          ; $617e: $65
	nop                                              ; $617f: $00
	ld d, h                                          ; $6180: $54
	ld h, l                                          ; $6181: $65
	rla                                              ; $6182: $17
	ld d, l                                          ; $6183: $55
	ld h, l                                          ; $6184: $65
	daa                                              ; $6185: $27
	ld d, [hl]                                       ; $6186: $56
	nop                                              ; $6187: $00
	nop                                              ; $6188: $00
	ld [$f900], sp                                   ; $6189: $08 $00 $f9
	ld h, l                                          ; $618c: $65
	ld b, l                                          ; $618d: $45
	ld d, a                                          ; $618e: $57
	nop                                              ; $618f: $00
	add b                                            ; $6190: $80
	rst $38                                          ; $6191: $ff
	ld sp, hl                                        ; $6192: $f9
	ld h, l                                          ; $6193: $65
	jr nc, jr_002_61f0                               ; $6194: $30 $5a

	db $d3                                           ; $6196: $d3
	call nc, $06ff                                   ; $6197: $d4 $ff $06
	dec b                                            ; $619a: $05
	jr jr_002_61bd                                   ; $619b: $18 $20

	ld bc, $522e                                     ; $619d: $01 $2e $52
	ld h, l                                          ; $61a0: $65
	ld c, [hl]                                       ; $61a1: $4e
	ld e, d                                          ; $61a2: $5a
	ld h, l                                          ; $61a3: $65
	ld e, a                                          ; $61a4: $5f
	ld e, e                                          ; $61a5: $5b
	ld h, l                                          ; $61a6: $65
	ld [hl], d                                       ; $61a7: $72
	ld e, h                                          ; $61a8: $5c
	ld h, l                                          ; $61a9: $65
	adc c                                            ; $61aa: $89
	ld e, l                                          ; $61ab: $5d
	ld h, l                                          ; $61ac: $65
	sub l                                            ; $61ad: $95
	ld e, [hl]                                       ; $61ae: $5e
	nop                                              ; $61af: $00
	nop                                              ; $61b0: $00
	ld [$f900], sp                                   ; $61b1: $08 $00 $f9
	ld h, l                                          ; $61b4: $65
	sbc l                                            ; $61b5: $9d
	ld e, a                                          ; $61b6: $5f
	nop                                              ; $61b7: $00
	add b                                            ; $61b8: $80
	rst $38                                          ; $61b9: $ff
	ld sp, hl                                        ; $61ba: $f9
	ld h, l                                          ; $61bb: $65
	push de                                          ; $61bc: $d5

jr_002_61bd:
	ld h, d                                          ; $61bd: $62
	db $d3                                           ; $61be: $d3
	call nc, $08ff                                   ; $61bf: $d4 $ff $08
	dec b                                            ; $61c2: $05
	db $10                                           ; $61c3: $10
	jr nz, jr_002_61c8                               ; $61c4: $20 $02

	sbc [hl]                                         ; $61c6: $9e
	ld d, d                                          ; $61c7: $52

jr_002_61c8:
	ld h, l                                          ; $61c8: $65
	ei                                               ; $61c9: $fb
	ld h, d                                          ; $61ca: $62
	ld h, l                                          ; $61cb: $65
	adc d                                            ; $61cc: $8a
	ld h, h                                          ; $61cd: $64
	ld h, l                                          ; $61ce: $65
	ld a, [de]                                       ; $61cf: $1a
	ld h, [hl]                                       ; $61d0: $66
	ld h, l                                          ; $61d1: $65
	xor a                                            ; $61d2: $af
	ld h, a                                          ; $61d3: $67
	ld h, l                                          ; $61d4: $65
	ld b, d                                          ; $61d5: $42
	ld l, c                                          ; $61d6: $69
	nop                                              ; $61d7: $00
	nop                                              ; $61d8: $00
	ld [$f900], sp                                   ; $61d9: $08 $00 $f9
	ld h, l                                          ; $61dc: $65
	sub $6a                                          ; $61dd: $d6 $6a
	nop                                              ; $61df: $00
	add b                                            ; $61e0: $80
	rst $38                                          ; $61e1: $ff
	ld sp, hl                                        ; $61e2: $f9
	ld h, l                                          ; $61e3: $65
	sbc a                                            ; $61e4: $9f
	ld l, l                                          ; $61e5: $6d
	db $d3                                           ; $61e6: $d3
	call nc, $08ff                                   ; $61e7: $d4 $ff $08
	ld bc, $2010                                     ; $61ea: $01 $10 $20
	ld bc, $52be                                     ; $61ed: $01 $be $52

jr_002_61f0:
	ld h, l                                          ; $61f0: $65
	cp [hl]                                          ; $61f1: $be
	ld l, l                                          ; $61f2: $6d
	nop                                              ; $61f3: $00
	nop                                              ; $61f4: $00
	ld [$f900], sp                                   ; $61f5: $08 $00 $f9
	ld h, l                                          ; $61f8: $65
	ld h, b                                          ; $61f9: $60
	ld l, a                                          ; $61fa: $6f
	nop                                              ; $61fb: $00
	add b                                            ; $61fc: $80
	rst $38                                          ; $61fd: $ff
	ld sp, hl                                        ; $61fe: $f9
	ld h, l                                          ; $61ff: $65
	ld h, b                                          ; $6200: $60
	ld [hl], d                                       ; $6201: $72
	db $d3                                           ; $6202: $d3
	call nc, $06ff                                   ; $6203: $d4 $ff $06
	ld bc, $2010                                     ; $6206: $01 $10 $20
	ld bc, $52de                                     ; $6209: $01 $de $52
	ld h, l                                          ; $620c: $65
	add d                                            ; $620d: $82
	ld [hl], d                                       ; $620e: $72
	nop                                              ; $620f: $00
	nop                                              ; $6210: $00
	nop                                              ; $6211: $00
	nop                                              ; $6212: $00
	ld sp, hl                                        ; $6213: $f9
	ld h, l                                          ; $6214: $65
	ld d, a                                          ; $6215: $57
	ld [hl], e                                       ; $6216: $73
	nop                                              ; $6217: $00
	add b                                            ; $6218: $80
	rst $38                                          ; $6219: $ff
	ld sp, hl                                        ; $621a: $f9
	ld h, l                                          ; $621b: $65
	ld [bc], a                                       ; $621c: $02
	halt                                             ; $621d: $76
	db $d3                                           ; $621e: $d3
	call nc, $0aff                                   ; $621f: $d4 $ff $0a
	ld b, $18                                        ; $6222: $06 $18
	jr jr_002_6228                                   ; $6224: $18 $02

	ld h, d                                          ; $6226: $62
	ld d, e                                          ; $6227: $53

jr_002_6228:
	ld h, l                                          ; $6228: $65
	dec de                                           ; $6229: $1b
	halt                                             ; $622a: $76
	ld h, l                                          ; $622b: $65
	call Call_002_6577                               ; $622c: $cd $77 $65
	sub b                                            ; $622f: $90
	ld a, c                                          ; $6230: $79
	ld h, l                                          ; $6231: $65
	ld [hl], $7b                                     ; $6232: $36 $7b
	ld h, l                                          ; $6234: $65
	ret c                                            ; $6235: $d8

	ld a, h                                          ; $6236: $7c
	ld h, l                                          ; $6237: $65
	adc a                                            ; $6238: $8f
	ld a, [hl]                                       ; $6239: $7e
	nop                                              ; $623a: $00
	nop                                              ; $623b: $00
	ld [$f900], sp                                   ; $623c: $08 $00 $f9
	ld h, [hl]                                       ; $623f: $66
	ld a, $40                                        ; $6240: $3e $40
	nop                                              ; $6242: $00
	add b                                            ; $6243: $80
	rst $38                                          ; $6244: $ff
	ld sp, hl                                        ; $6245: $f9
	ld h, [hl]                                       ; $6246: $66
	rst GetHLinHL                                          ; $6247: $cf
	ld b, d                                          ; $6248: $42
	db $d3                                           ; $6249: $d3
	call nc, $0aff                                   ; $624a: $d4 $ff $0a
	ld b, $08                                        ; $624d: $06 $08
	jr nz, jr_002_6253                               ; $624f: $20 $02

	and $53                                          ; $6251: $e6 $53

jr_002_6253:
	ld h, [hl]                                       ; $6253: $66
	db $ec                                           ; $6254: $ec
	ld b, d                                          ; $6255: $42
	ld h, [hl]                                       ; $6256: $66
	sbc e                                            ; $6257: $9b
	ld b, h                                          ; $6258: $44
	ld h, [hl]                                       ; $6259: $66
	ld d, d                                          ; $625a: $52
	ld b, [hl]                                       ; $625b: $46
	ld h, [hl]                                       ; $625c: $66
	ld [$6648], sp                                   ; $625d: $08 $48 $66
	or l                                             ; $6260: $b5
	ld c, c                                          ; $6261: $49
	ld h, [hl]                                       ; $6262: $66
	ld [hl], c                                       ; $6263: $71
	ld c, e                                          ; $6264: $4b
	nop                                              ; $6265: $00
	nop                                              ; $6266: $00
	nop                                              ; $6267: $00
	nop                                              ; $6268: $00
	ld sp, hl                                        ; $6269: $f9

Jump_002_626a:
	ld h, [hl]                                       ; $626a: $66
	cpl                                              ; $626b: $2f
	ld c, l                                          ; $626c: $4d
	nop                                              ; $626d: $00
	add b                                            ; $626e: $80
	rst $38                                          ; $626f: $ff
	ld sp, hl                                        ; $6270: $f9
	ld h, [hl]                                       ; $6271: $66
	db $e4                                           ; $6272: $e4
	ld c, a                                          ; $6273: $4f
	db $d3                                           ; $6274: $d3
	call nc, $0aff                                   ; $6275: $d4 $ff $0a
	dec b                                            ; $6278: $05
	jr jr_002_6293                                   ; $6279: $18 $18

	ld [bc], a                                       ; $627b: $02
	ld d, [hl]                                       ; $627c: $56
	ld d, h                                          ; $627d: $54
	ld h, [hl]                                       ; $627e: $66
	ld b, $50                                        ; $627f: $06 $50
	ld h, [hl]                                       ; $6281: $66
	cp d                                             ; $6282: $ba
	ld d, c                                          ; $6283: $51
	ld h, [hl]                                       ; $6284: $66
	ld [hl], d                                       ; $6285: $72
	ld d, e                                          ; $6286: $53
	ld h, [hl]                                       ; $6287: $66
	dec h                                            ; $6288: $25
	ld d, l                                          ; $6289: $55
	ld h, [hl]                                       ; $628a: $66
	pop de                                           ; $628b: $d1
	ld d, [hl]                                       ; $628c: $56
	nop                                              ; $628d: $00
	nop                                              ; $628e: $00
	nop                                              ; $628f: $00
	ld [$66f9], sp                                   ; $6290: $08 $f9 $66

jr_002_6293:
	adc c                                            ; $6293: $89
	ld e, b                                          ; $6294: $58
	nop                                              ; $6295: $00
	add b                                            ; $6296: $80
	rst $38                                          ; $6297: $ff
	ld sp, hl                                        ; $6298: $f9
	ld h, [hl]                                       ; $6299: $66
	cp a                                             ; $629a: $bf
	ld e, d                                          ; $629b: $5a
	db $d3                                           ; $629c: $d3
	call nc, $0aff                                   ; $629d: $d4 $ff $0a
	dec b                                            ; $62a0: $05
	ld [$0110], sp                                   ; $62a1: $08 $10 $01
	add $54                                          ; $62a4: $c6 $54
	ld h, [hl]                                       ; $62a6: $66
	db $dd                                           ; $62a7: $dd
	ld e, d                                          ; $62a8: $5a
	ld h, [hl]                                       ; $62a9: $66
	add d                                            ; $62aa: $82
	ld e, h                                          ; $62ab: $5c
	ld h, [hl]                                       ; $62ac: $66
	dec sp                                           ; $62ad: $3b
	ld e, [hl]                                       ; $62ae: $5e
	ld h, [hl]                                       ; $62af: $66
	db $eb                                           ; $62b0: $eb
	ld e, a                                          ; $62b1: $5f
	ld h, [hl]                                       ; $62b2: $66
	sub d                                            ; $62b3: $92
	ld h, c                                          ; $62b4: $61
	nop                                              ; $62b5: $00
	nop                                              ; $62b6: $00
	nop                                              ; $62b7: $00
	nop                                              ; $62b8: $00
	ld sp, hl                                        ; $62b9: $f9
	ld h, [hl]                                       ; $62ba: $66
	ld d, a                                          ; $62bb: $57
	ld h, e                                          ; $62bc: $63
	nop                                              ; $62bd: $00
	add b                                            ; $62be: $80
	rst $38                                          ; $62bf: $ff
	ld sp, hl                                        ; $62c0: $f9
	ld h, [hl]                                       ; $62c1: $66
	bit 4, l                                         ; $62c2: $cb $65
	db $d3                                           ; $62c4: $d3
	call nc, $0aff                                   ; $62c5: $d4 $ff $0a
	dec b                                            ; $62c8: $05
	db $10                                           ; $62c9: $10
	jr jr_002_62ce                                   ; $62ca: $18 $02

	ld [hl], $55                                     ; $62cc: $36 $55

jr_002_62ce:
	ld h, [hl]                                       ; $62ce: $66
	pop af                                           ; $62cf: $f1
	ld h, l                                          ; $62d0: $65
	ld h, [hl]                                       ; $62d1: $66
	sub e                                            ; $62d2: $93
	ld h, a                                          ; $62d3: $67
	ld h, [hl]                                       ; $62d4: $66
	add hl, sp                                       ; $62d5: $39
	ld l, c                                          ; $62d6: $69
	ld h, [hl]                                       ; $62d7: $66
	rst GetHLinHL                                          ; $62d8: $cf
	ld l, d                                          ; $62d9: $6a
	ld h, [hl]                                       ; $62da: $66
	ld [hl], a                                       ; $62db: $77
	ld l, h                                          ; $62dc: $6c
	nop                                              ; $62dd: $00
	nop                                              ; $62de: $00
	ld [$f900], sp                                   ; $62df: $08 $00 $f9
	ld h, [hl]                                       ; $62e2: $66
	rla                                              ; $62e3: $17
	ld l, [hl]                                       ; $62e4: $6e
	nop                                              ; $62e5: $00
	add b                                            ; $62e6: $80
	rst $38                                          ; $62e7: $ff
	ld sp, hl                                        ; $62e8: $f9
	ld h, [hl]                                       ; $62e9: $66
	adc c                                            ; $62ea: $89
	ld [hl], b                                       ; $62eb: $70
	db $d3                                           ; $62ec: $d3
	call nc, $0aff                                   ; $62ed: $d4 $ff $0a
	dec b                                            ; $62f0: $05
	jr jr_002_630b                                   ; $62f1: $18 $18

	ld [bc], a                                       ; $62f3: $02
	and [hl]                                         ; $62f4: $a6
	ld d, l                                          ; $62f5: $55
	ld h, [hl]                                       ; $62f6: $66
	xor h                                            ; $62f7: $ac
	ld [hl], b                                       ; $62f8: $70
	ld h, [hl]                                       ; $62f9: $66
	ld b, [hl]                                       ; $62fa: $46
	ld [hl], d                                       ; $62fb: $72
	ld h, [hl]                                       ; $62fc: $66
	add sp, $73                                      ; $62fd: $e8 $73
	ld h, [hl]                                       ; $62ff: $66
	adc l                                            ; $6300: $8d
	ld [hl], l                                       ; $6301: $75
	ld h, [hl]                                       ; $6302: $66
	inc h                                            ; $6303: $24
	ld [hl], a                                       ; $6304: $77
	nop                                              ; $6305: $00
	nop                                              ; $6306: $00
	nop                                              ; $6307: $00
	nop                                              ; $6308: $00
	ld sp, hl                                        ; $6309: $f9
	ld h, [hl]                                       ; $630a: $66

jr_002_630b:
	jp $0078                                         ; $630b: $c3 $78 $00


	add b                                            ; $630e: $80
	rst $38                                          ; $630f: $ff
	ld sp, hl                                        ; $6310: $f9
	ld h, [hl]                                       ; $6311: $66
	add b                                            ; $6312: $80
	ld a, e                                          ; $6313: $7b
	db $d3                                           ; $6314: $d3
	call nc, $0aff                                   ; $6315: $d4 $ff $0a
	dec b                                            ; $6318: $05
	db $10                                           ; $6319: $10
	jr jr_002_631e                                   ; $631a: $18 $02

	ld d, $56                                        ; $631c: $16 $56

jr_002_631e:
	ld h, [hl]                                       ; $631e: $66
	xor b                                            ; $631f: $a8
	ld a, e                                          ; $6320: $7b
	ld h, [hl]                                       ; $6321: $66
	ld d, l                                          ; $6322: $55
	ld a, l                                          ; $6323: $7d
	ld h, [hl]                                       ; $6324: $66
	ld [bc], a                                       ; $6325: $02
	ld a, a                                          ; $6326: $7f
	ld h, a                                          ; $6327: $67
	xor d                                            ; $6328: $aa
	ld b, b                                          ; $6329: $40
	ld h, a                                          ; $632a: $67
	ld c, a                                          ; $632b: $4f
	ld b, d                                          ; $632c: $42
	nop                                              ; $632d: $00
	nop                                              ; $632e: $00
	nop                                              ; $632f: $00
	nop                                              ; $6330: $00
	ld sp, hl                                        ; $6331: $f9
	ld h, a                                          ; $6332: $67
	push af                                          ; $6333: $f5
	ld b, e                                          ; $6334: $43
	nop                                              ; $6335: $00
	add b                                            ; $6336: $80
	rst $38                                          ; $6337: $ff
	ld sp, hl                                        ; $6338: $f9
	ld h, a                                          ; $6339: $67
	and l                                            ; $633a: $a5
	ld b, [hl]                                       ; $633b: $46
	db $d3                                           ; $633c: $d3
	call nc, $0aff                                   ; $633d: $d4 $ff $0a
	ld bc, $1808                                     ; $6340: $01 $08 $18
	ld [bc], a                                       ; $6343: $02
	ld [hl], $56                                     ; $6344: $36 $56
	ld h, a                                          ; $6346: $67
	ret z                                            ; $6347: $c8

	ld b, [hl]                                       ; $6348: $46
	nop                                              ; $6349: $00
	nop                                              ; $634a: $00
	nop                                              ; $634b: $00
	nop                                              ; $634c: $00
	ld sp, hl                                        ; $634d: $f9
	ld h, a                                          ; $634e: $67
	ld e, c                                          ; $634f: $59
	ld c, b                                          ; $6350: $48
	nop                                              ; $6351: $00
	add b                                            ; $6352: $80

Jump_002_6353:
	rst $38                                          ; $6353: $ff
	ld sp, hl                                        ; $6354: $f9
	ld h, a                                          ; $6355: $67
	push de                                          ; $6356: $d5
	ld c, d                                          ; $6357: $4a
	db $d3                                           ; $6358: $d3
	call nc, $0aff                                   ; $6359: $d4 $ff $0a
	dec b                                            ; $635c: $05
	db $10                                           ; $635d: $10
	jr jr_002_6362                                   ; $635e: $18 $02

	and [hl]                                         ; $6360: $a6
	ld d, [hl]                                       ; $6361: $56

jr_002_6362:
	ld h, a                                          ; $6362: $67
	db $f4                                           ; $6363: $f4
	ld c, d                                          ; $6364: $4a
	ld h, a                                          ; $6365: $67
	sub [hl]                                         ; $6366: $96
	ld c, h                                          ; $6367: $4c
	ld h, a                                          ; $6368: $67
	inc sp                                           ; $6369: $33
	ld c, [hl]                                       ; $636a: $4e
	ld h, a                                          ; $636b: $67
	jp nc, Jump_002_674f                             ; $636c: $d2 $4f $67

	ld [hl], d                                       ; $636f: $72
	ld d, c                                          ; $6370: $51
	nop                                              ; $6371: $00
	nop                                              ; $6372: $00
	nop                                              ; $6373: $00
	nop                                              ; $6374: $00
	ld sp, hl                                        ; $6375: $f9
	ld h, a                                          ; $6376: $67
	rla                                              ; $6377: $17
	ld d, e                                          ; $6378: $53
	nop                                              ; $6379: $00
	add b                                            ; $637a: $80
	rst $38                                          ; $637b: $ff
	ld sp, hl                                        ; $637c: $f9
	ld h, a                                          ; $637d: $67
	sbc [hl]                                         ; $637e: $9e
	ld d, l                                          ; $637f: $55
	db $d3                                           ; $6380: $d3
	call nc, $0aff                                   ; $6381: $d4 $ff $0a
	dec b                                            ; $6384: $05
	db $10                                           ; $6385: $10
	jr jr_002_638a                                   ; $6386: $18 $02

	ld d, $57                                        ; $6388: $16 $57

jr_002_638a:
	ld h, a                                          ; $638a: $67
	pop bc                                           ; $638b: $c1
	ld d, l                                          ; $638c: $55
	ld h, a                                          ; $638d: $67
	ld d, a                                          ; $638e: $57
	ld d, a                                          ; $638f: $57
	ld h, a                                          ; $6390: $67
	nop                                              ; $6391: $00
	ld e, c                                          ; $6392: $59
	ld h, a                                          ; $6393: $67
	and [hl]                                         ; $6394: $a6
	ld e, d                                          ; $6395: $5a
	ld h, a                                          ; $6396: $67
	ld a, [hl-]                                      ; $6397: $3a
	ld e, h                                          ; $6398: $5c
	nop                                              ; $6399: $00
	nop                                              ; $639a: $00
	nop                                              ; $639b: $00
	nop                                              ; $639c: $00
	ld sp, hl                                        ; $639d: $f9
	ld h, a                                          ; $639e: $67
	jp c, $005d                                      ; $639f: $da $5d $00

	add b                                            ; $63a2: $80
	rst $38                                          ; $63a3: $ff
	ld sp, hl                                        ; $63a4: $f9
	ld h, a                                          ; $63a5: $67
	or d                                             ; $63a6: $b2
	ld h, b                                          ; $63a7: $60
	db $d3                                           ; $63a8: $d3
	call nc, $0aff                                   ; $63a9: $d4 $ff $0a
	dec b                                            ; $63ac: $05
	db $10                                           ; $63ad: $10
	jr jr_002_63b2                                   ; $63ae: $18 $02

	add [hl]                                         ; $63b0: $86
	ld d, a                                          ; $63b1: $57

jr_002_63b2:
	ld h, a                                          ; $63b2: $67
	jp c, Jump_002_6760                              ; $63b3: $da $60 $67

	ld [hl], e                                       ; $63b6: $73
	ld h, d                                          ; $63b7: $62
	ld h, a                                          ; $63b8: $67
	dec d                                            ; $63b9: $15
	ld h, h                                          ; $63ba: $64
	ld h, a                                          ; $63bb: $67
	cp h                                             ; $63bc: $bc
	ld h, l                                          ; $63bd: $65
	ld h, a                                          ; $63be: $67
	ld h, [hl]                                       ; $63bf: $66
	ld h, a                                          ; $63c0: $67
	nop                                              ; $63c1: $00
	nop                                              ; $63c2: $00
	nop                                              ; $63c3: $00
	nop                                              ; $63c4: $00
	ld sp, hl                                        ; $63c5: $f9
	ld h, a                                          ; $63c6: $67
	ld [de], a                                       ; $63c7: $12
	ld l, c                                          ; $63c8: $69
	nop                                              ; $63c9: $00
	add b                                            ; $63ca: $80
	rst $38                                          ; $63cb: $ff
	ld sp, hl                                        ; $63cc: $f9
	ld h, a                                          ; $63cd: $67
	db $db                                           ; $63ce: $db
	ld l, e                                          ; $63cf: $6b
	db $d3                                           ; $63d0: $d3
	call nc, $0aff                                   ; $63d1: $d4 $ff $0a
	ld bc, $1818                                     ; $63d4: $01 $18 $18
	ld [bc], a                                       ; $63d7: $02
	and [hl]                                         ; $63d8: $a6
	ld d, a                                          ; $63d9: $57
	ld h, a                                          ; $63da: $67
	db $fd                                           ; $63db: $fd
	ld l, e                                          ; $63dc: $6b
	nop                                              ; $63dd: $00
	nop                                              ; $63de: $00
	stop                                             ; $63df: $10 $00
	ld sp, hl                                        ; $63e1: $f9
	ld h, a                                          ; $63e2: $67
	or l                                             ; $63e3: $b5
	ld l, l                                          ; $63e4: $6d
	nop                                              ; $63e5: $00
	add b                                            ; $63e6: $80
	rst $38                                          ; $63e7: $ff
	ld sp, hl                                        ; $63e8: $f9
	ld h, a                                          ; $63e9: $67
	jr nc, jr_002_645c                               ; $63ea: $30 $70

	db $d3                                           ; $63ec: $d3
	call nc, $08ff                                   ; $63ed: $d4 $ff $08
	ld b, $00                                        ; $63f0: $06 $00
	jr nz, jr_002_63f5                               ; $63f2: $20 $01

	ld a, [hl+]                                      ; $63f4: $2a

jr_002_63f5:
	ld e, b                                          ; $63f5: $58
	ld h, a                                          ; $63f6: $67
	ld c, d                                          ; $63f7: $4a
	ld [hl], b                                       ; $63f8: $70
	ld h, a                                          ; $63f9: $67
	pop af                                           ; $63fa: $f1
	ld [hl], c                                       ; $63fb: $71
	ld h, a                                          ; $63fc: $67
	and a                                            ; $63fd: $a7
	ld [hl], e                                       ; $63fe: $73
	ld h, a                                          ; $63ff: $67
	ld l, b                                          ; $6400: $68
	ld [hl], l                                       ; $6401: $75
	ld h, a                                          ; $6402: $67
	ld h, $77                                        ; $6403: $26 $77
	ld h, a                                          ; $6405: $67
	db $e3                                           ; $6406: $e3
	ld a, b                                          ; $6407: $78
	nop                                              ; $6408: $00
	nop                                              ; $6409: $00
	nop                                              ; $640a: $00
	nop                                              ; $640b: $00
	ld sp, hl                                        ; $640c: $f9
	ld h, a                                          ; $640d: $67
	xor [hl]                                         ; $640e: $ae
	ld a, d                                          ; $640f: $7a
	nop                                              ; $6410: $00
	add b                                            ; $6411: $80
	rst $38                                          ; $6412: $ff
	ld sp, hl                                        ; $6413: $f9
	ld h, a                                          ; $6414: $67
	ld a, c                                          ; $6415: $79
	ld a, l                                          ; $6416: $7d
	db $d3                                           ; $6417: $d3
	call nc, $06ff                                   ; $6418: $d4 $ff $06
	ld b, $10                                        ; $641b: $06 $10
	jr nz, jr_002_6420                               ; $641d: $20 $01

	xor [hl]                                         ; $641f: $ae

jr_002_6420:
	ld e, b                                          ; $6420: $58
	ld h, a                                          ; $6421: $67
	sbc b                                            ; $6422: $98
	ld a, l                                          ; $6423: $7d
	ld h, a                                          ; $6424: $67
	ret                                              ; $6425: $c9


	ld a, [hl]                                       ; $6426: $7e
	ld h, a                                          ; $6427: $67
	db $fc                                           ; $6428: $fc
	ld a, a                                          ; $6429: $7f
	ld l, b                                          ; $642a: $68
	inc a                                            ; $642b: $3c
	ld b, c                                          ; $642c: $41
	ld l, b                                          ; $642d: $68
	ld h, l                                          ; $642e: $65
	ld b, d                                          ; $642f: $42
	ld l, b                                          ; $6430: $68
	sbc d                                            ; $6431: $9a
	ld b, e                                          ; $6432: $43
	nop                                              ; $6433: $00
	nop                                              ; $6434: $00
	ld [$f900], sp                                   ; $6435: $08 $00 $f9
	ld l, b                                          ; $6438: $68
	pop de                                           ; $6439: $d1
	ld b, h                                          ; $643a: $44
	nop                                              ; $643b: $00
	add b                                            ; $643c: $80
	rst $38                                          ; $643d: $ff
	ld sp, hl                                        ; $643e: $f9
	ld l, b                                          ; $643f: $68
	db $e3                                           ; $6440: $e3
	ld b, a                                          ; $6441: $47
	db $d3                                           ; $6442: $d3
	call nc, $08ff                                   ; $6443: $d4 $ff $08
	dec b                                            ; $6446: $05
	ld [$0220], sp                                   ; $6447: $08 $20 $02
	ld e, $59                                        ; $644a: $1e $59
	ld l, b                                          ; $644c: $68
	nop                                              ; $644d: $00
	ld c, b                                          ; $644e: $48
	ld l, b                                          ; $644f: $68
	adc d                                            ; $6450: $8a
	ld c, c                                          ; $6451: $49
	ld l, b                                          ; $6452: $68
	add hl, de                                       ; $6453: $19
	ld c, e                                          ; $6454: $4b
	ld l, b                                          ; $6455: $68
	and h                                            ; $6456: $a4
	ld c, h                                          ; $6457: $4c
	ld l, b                                          ; $6458: $68
	inc h                                            ; $6459: $24
	ld c, [hl]                                       ; $645a: $4e
	nop                                              ; $645b: $00

jr_002_645c:
	nop                                              ; $645c: $00
	ld [$f900], sp                                   ; $645d: $08 $00 $f9
	ld l, b                                          ; $6460: $68
	or c                                             ; $6461: $b1
	ld c, a                                          ; $6462: $4f
	nop                                              ; $6463: $00
	add b                                            ; $6464: $80
	rst $38                                          ; $6465: $ff
	ld sp, hl                                        ; $6466: $f9
	ld l, b                                          ; $6467: $68
	rst SubAFromHL                                          ; $6468: $d7
	ld d, d                                          ; $6469: $52
	db $d3                                           ; $646a: $d3
	call nc, $06ff                                   ; $646b: $d4 $ff $06
	dec b                                            ; $646e: $05
	jr jr_002_6491                                   ; $646f: $18 $20

	ld bc, $598e                                     ; $6471: $01 $8e $59
	ld l, b                                          ; $6474: $68
	ei                                               ; $6475: $fb
	ld d, d                                          ; $6476: $52
	ld l, b                                          ; $6477: $68
	ld e, e                                          ; $6478: $5b
	ld d, h                                          ; $6479: $54
	ld l, b                                          ; $647a: $68
	or h                                             ; $647b: $b4
	ld d, l                                          ; $647c: $55
	ld l, b                                          ; $647d: $68
	rla                                              ; $647e: $17
	ld d, a                                          ; $647f: $57
	ld l, b                                          ; $6480: $68
	ld h, h                                          ; $6481: $64
	ld e, b                                          ; $6482: $58
	nop                                              ; $6483: $00
	nop                                              ; $6484: $00
	ld [$f900], sp                                   ; $6485: $08 $00 $f9
	ld l, b                                          ; $6488: $68
	and l                                            ; $6489: $a5
	ld e, c                                          ; $648a: $59
	nop                                              ; $648b: $00
	add b                                            ; $648c: $80
	rst $38                                          ; $648d: $ff
	ld sp, hl                                        ; $648e: $f9
	ld l, b                                          ; $648f: $68
	xor l                                            ; $6490: $ad

jr_002_6491:
	ld e, h                                          ; $6491: $5c
	db $d3                                           ; $6492: $d3
	call nc, $08ff                                   ; $6493: $d4 $ff $08
	dec b                                            ; $6496: $05
	db $10                                           ; $6497: $10
	jr nz, @+$03                                     ; $6498: $20 $01

	cp $59                                           ; $649a: $fe $59
	ld l, b                                          ; $649c: $68
	ret nc                                           ; $649d: $d0

	ld e, h                                          ; $649e: $5c
	ld l, b                                          ; $649f: $68
	ld e, l                                          ; $64a0: $5d
	ld e, [hl]                                       ; $64a1: $5e
	ld l, b                                          ; $64a2: $68
	rst FarCall                                          ; $64a3: $f7
	ld e, a                                          ; $64a4: $5f
	ld l, b                                          ; $64a5: $68
	sbc b                                            ; $64a6: $98
	ld h, c                                          ; $64a7: $61
	ld l, b                                          ; $64a8: $68
	inc [hl]                                         ; $64a9: $34
	ld h, e                                          ; $64aa: $63
	nop                                              ; $64ab: $00
	nop                                              ; $64ac: $00
	ld [$f900], sp                                   ; $64ad: $08 $00 $f9
	ld l, b                                          ; $64b0: $68
	cp b                                             ; $64b1: $b8
	ld h, h                                          ; $64b2: $64
	nop                                              ; $64b3: $00
	add b                                            ; $64b4: $80
	rst $38                                          ; $64b5: $ff
	ld sp, hl                                        ; $64b6: $f9
	ld l, b                                          ; $64b7: $68
	cp h                                             ; $64b8: $bc
	ld h, a                                          ; $64b9: $67
	db $d3                                           ; $64ba: $d3
	call nc, $08ff                                   ; $64bb: $d4 $ff $08
	dec b                                            ; $64be: $05
	db $10                                           ; $64bf: $10
	jr nz, jr_002_64c4                               ; $64c0: $20 $02

	ld l, [hl]                                       ; $64c2: $6e
	ld e, d                                          ; $64c3: $5a

jr_002_64c4:
	ld l, b                                          ; $64c4: $68
	jp c, Jump_002_6867                              ; $64c5: $da $67 $68

	ld e, e                                          ; $64c8: $5b
	ld l, c                                          ; $64c9: $69
	ld l, b                                          ; $64ca: $68
	rst AddAOntoHL                                          ; $64cb: $ef
	ld l, d                                          ; $64cc: $6a
	ld l, b                                          ; $64cd: $68
	ld l, a                                          ; $64ce: $6f
	ld l, h                                          ; $64cf: $6c
	ld l, b                                          ; $64d0: $68
	ld [$006d], a                                    ; $64d1: $ea $6d $00
	nop                                              ; $64d4: $00
	nop                                              ; $64d5: $00
	nop                                              ; $64d6: $00
	ld sp, hl                                        ; $64d7: $f9
	ld l, b                                          ; $64d8: $68
	adc a                                            ; $64d9: $8f
	ld l, a                                          ; $64da: $6f
	nop                                              ; $64db: $00
	add b                                            ; $64dc: $80
	rst $38                                          ; $64dd: $ff
	ld sp, hl                                        ; $64de: $f9
	ld l, b                                          ; $64df: $68
	call $d372                                       ; $64e0: $cd $72 $d3
	call nc, $06ff                                   ; $64e3: $d4 $ff $06
	ld b, $18                                        ; $64e6: $06 $18
	jr nz, jr_002_64eb                               ; $64e8: $20 $01

	ldh a, [c]                                       ; $64ea: $f2

jr_002_64eb:
	ld e, d                                          ; $64eb: $5a
	ld l, b                                          ; $64ec: $68
	db $ed                                           ; $64ed: $ed
	ld [hl], d                                       ; $64ee: $72
	ld l, b                                          ; $64ef: $68
	inc sp                                           ; $64f0: $33
	ld [hl], h                                       ; $64f1: $74
	ld l, b                                          ; $64f2: $68
	ld a, h                                          ; $64f3: $7c
	ld [hl], l                                       ; $64f4: $75
	ld l, b                                          ; $64f5: $68
	ret                                              ; $64f6: $c9


	halt                                             ; $64f7: $76
	ld l, b                                          ; $64f8: $68
	dec bc                                           ; $64f9: $0b
	ld a, b                                          ; $64fa: $78
	ld l, b                                          ; $64fb: $68
	ld e, b                                          ; $64fc: $58
	ld a, c                                          ; $64fd: $79
	nop                                              ; $64fe: $00
	nop                                              ; $64ff: $00
	ld [$f900], sp                                   ; $6500: $08 $00 $f9
	ld l, b                                          ; $6503: $68
	ld e, d                                          ; $6504: $5a
	ld a, c                                          ; $6505: $79
	nop                                              ; $6506: $00
	add b                                            ; $6507: $80
	rst $38                                          ; $6508: $ff
	ld sp, hl                                        ; $6509: $f9
	ld l, b                                          ; $650a: $68
	ld a, [hl-]                                      ; $650b: $3a
	ld a, h                                          ; $650c: $7c
	db $d3                                           ; $650d: $d3
	call nc, $0aff                                   ; $650e: $d4 $ff $0a
	dec b                                            ; $6511: $05
	db $10                                           ; $6512: $10
	jr nz, jr_002_6517                               ; $6513: $20 $02

	ld h, d                                          ; $6515: $62
	ld e, e                                          ; $6516: $5b

jr_002_6517:
	ld l, b                                          ; $6517: $68
	ld d, c                                          ; $6518: $51
	ld a, h                                          ; $6519: $7c
	ld l, b                                          ; $651a: $68
	ld bc, $687e                                     ; $651b: $01 $7e $68
	ret z                                            ; $651e: $c8

	ld a, a                                          ; $651f: $7f
	ld l, c                                          ; $6520: $69
	and c                                            ; $6521: $a1
	ld b, c                                          ; $6522: $41
	ld l, c                                          ; $6523: $69
	ld e, b                                          ; $6524: $58
	ld b, e                                          ; $6525: $43
	nop                                              ; $6526: $00
	nop                                              ; $6527: $00
	ld [$f900], sp                                   ; $6528: $08 $00 $f9
	ld l, c                                          ; $652b: $69
	dec de                                           ; $652c: $1b
	ld b, l                                          ; $652d: $45
	nop                                              ; $652e: $00
	add b                                            ; $652f: $80
	rst $38                                          ; $6530: $ff
	ld sp, hl                                        ; $6531: $f9
	ld l, c                                          ; $6532: $69
	pop hl                                           ; $6533: $e1
	ld c, b                                          ; $6534: $48
	db $d3                                           ; $6535: $d3
	call nc, $06ff                                   ; $6536: $d4 $ff $06
	ld bc, $2010                                     ; $6539: $01 $10 $20
	ld bc, $5b82                                     ; $653c: $01 $82 $5b
	ld l, c                                          ; $653f: $69
	rlca                                             ; $6540: $07
	ld c, c                                          ; $6541: $49
	nop                                              ; $6542: $00
	nop                                              ; $6543: $00
	ld [$f900], sp                                   ; $6544: $08 $00 $f9
	ld l, c                                          ; $6547: $69
	dec sp                                           ; $6548: $3b
	ld c, d                                          ; $6549: $4a
	nop                                              ; $654a: $00
	add b                                            ; $654b: $80
	rst $38                                          ; $654c: $ff
	ld sp, hl                                        ; $654d: $f9
	ld l, c                                          ; $654e: $69
	ld d, h                                          ; $654f: $54
	ld c, l                                          ; $6550: $4d
	db $d3                                           ; $6551: $d3
	call nc, $06ff                                   ; $6552: $d4 $ff $06
	dec b                                            ; $6555: $05
	jr @+$22                                         ; $6556: $18 $20

	ld bc, $5bf2                                     ; $6558: $01 $f2 $5b
	ld l, c                                          ; $655b: $69
	ld [hl], d                                       ; $655c: $72
	ld c, l                                          ; $655d: $4d
	ld l, c                                          ; $655e: $69
	cp h                                             ; $655f: $bc
	ld c, [hl]                                       ; $6560: $4e
	ld l, c                                          ; $6561: $69
	ld b, $50                                        ; $6562: $06 $50
	ld l, c                                          ; $6564: $69
	ld b, [hl]                                       ; $6565: $46
	ld d, c                                          ; $6566: $51
	ld l, c                                          ; $6567: $69
	ld a, h                                          ; $6568: $7c
	ld d, d                                          ; $6569: $52
	nop                                              ; $656a: $00
	nop                                              ; $656b: $00
	nop                                              ; $656c: $00
	nop                                              ; $656d: $00
	ld sp, hl                                        ; $656e: $f9
	ld l, c                                          ; $656f: $69
	or [hl]                                          ; $6570: $b6
	ld d, e                                          ; $6571: $53
	nop                                              ; $6572: $00
	add b                                            ; $6573: $80
	rst $38                                          ; $6574: $ff
	ld sp, hl                                        ; $6575: $f9
	ld l, c                                          ; $6576: $69

Call_002_6577:
	ld [$d356], a                                    ; $6577: $ea $56 $d3
	call nc, $08ff                                   ; $657a: $d4 $ff $08
	dec b                                            ; $657d: $05
	db $10                                           ; $657e: $10
	jr nz, jr_002_6582                               ; $657f: $20 $01

	ld h, d                                          ; $6581: $62

jr_002_6582:
	ld e, h                                          ; $6582: $5c
	ld l, c                                          ; $6583: $69
	add hl, bc                                       ; $6584: $09
	ld d, a                                          ; $6585: $57
	ld l, c                                          ; $6586: $69
	cp a                                             ; $6587: $bf
	ld e, b                                          ; $6588: $58
	ld l, c                                          ; $6589: $69
	add h                                            ; $658a: $84
	ld e, d                                          ; $658b: $5a
	ld l, c                                          ; $658c: $69
	ld d, d                                          ; $658d: $52
	ld e, h                                          ; $658e: $5c
	ld l, c                                          ; $658f: $69
	inc b                                            ; $6590: $04
	ld e, [hl]                                       ; $6591: $5e
	nop                                              ; $6592: $00
	nop                                              ; $6593: $00
	ld [$f900], sp                                   ; $6594: $08 $00 $f9
	ld l, c                                          ; $6597: $69
	jp $005f                                         ; $6598: $c3 $5f $00


	add b                                            ; $659b: $80
	rst $38                                          ; $659c: $ff
	ld sp, hl                                        ; $659d: $f9
	ld l, c                                          ; $659e: $69
	cpl                                              ; $659f: $2f
	ld h, e                                          ; $65a0: $63
	db $d3                                           ; $65a1: $d3
	call nc, $06ff                                   ; $65a2: $d4 $ff $06
	dec b                                            ; $65a5: $05
	jr jr_002_65c8                                   ; $65a6: $18 $20

	ld bc, $5cd2                                     ; $65a8: $01 $d2 $5c
	ld l, c                                          ; $65ab: $69
	ld d, c                                          ; $65ac: $51
	ld h, e                                          ; $65ad: $63
	ld l, c                                          ; $65ae: $69
	adc d                                            ; $65af: $8a
	ld h, h                                          ; $65b0: $64
	ld l, c                                          ; $65b1: $69
	sub $65                                          ; $65b2: $d6 $65
	ld l, c                                          ; $65b4: $69
	ld e, $67                                        ; $65b5: $1e $67
	ld l, c                                          ; $65b7: $69
	ld e, l                                          ; $65b8: $5d
	ld l, b                                          ; $65b9: $68
	nop                                              ; $65ba: $00
	nop                                              ; $65bb: $00
	nop                                              ; $65bc: $00
	nop                                              ; $65bd: $00
	ld sp, hl                                        ; $65be: $f9
	ld l, c                                          ; $65bf: $69
	sbc a                                            ; $65c0: $9f
	ld l, c                                          ; $65c1: $69
	nop                                              ; $65c2: $00
	add b                                            ; $65c3: $80
	rst $38                                          ; $65c4: $ff
	ld sp, hl                                        ; $65c5: $f9
	ld l, c                                          ; $65c6: $69
	push de                                          ; $65c7: $d5

jr_002_65c8:
	ld l, h                                          ; $65c8: $6c
	db $d3                                           ; $65c9: $d3
	call nc, $08ff                                   ; $65ca: $d4 $ff $08
	ld bc, $1008                                     ; $65cd: $01 $08 $10
	nop                                              ; $65d0: $00
	ldh a, [c]                                       ; $65d1: $f2
	ld e, h                                          ; $65d2: $5c
	ld l, c                                          ; $65d3: $69
	rst FarCall                                          ; $65d4: $f7
	ld l, h                                          ; $65d5: $6c
	nop                                              ; $65d6: $00
	nop                                              ; $65d7: $00
	ld [$f900], sp                                   ; $65d8: $08 $00 $f9
	ld l, c                                          ; $65db: $69
	reti                                             ; $65dc: $d9


	ld l, [hl]                                       ; $65dd: $6e
	nop                                              ; $65de: $00
	add b                                            ; $65df: $80
	rst $38                                          ; $65e0: $ff
	ld sp, hl                                        ; $65e1: $f9
	ld l, c                                          ; $65e2: $69
	ld hl, sp+$71                                    ; $65e3: $f8 $71
	db $d3                                           ; $65e5: $d3
	call nc, $08ff                                   ; $65e6: $d4 $ff $08
	ld bc, $2008                                     ; $65e9: $01 $08 $20
	ld [bc], a                                       ; $65ec: $02
	ld [de], a                                       ; $65ed: $12
	ld e, l                                          ; $65ee: $5d
	ld l, c                                          ; $65ef: $69
	db $10                                           ; $65f0: $10
	ld [hl], d                                       ; $65f1: $72
	nop                                              ; $65f2: $00
	nop                                              ; $65f3: $00
	nop                                              ; $65f4: $00
	nop                                              ; $65f5: $00
	ld sp, hl                                        ; $65f6: $f9
	ld l, c                                          ; $65f7: $69
	and c                                            ; $65f8: $a1
	ld [hl], e                                       ; $65f9: $73
	nop                                              ; $65fa: $00
	add b                                            ; $65fb: $80
	rst $38                                          ; $65fc: $ff
	ld sp, hl                                        ; $65fd: $f9
	ld l, c                                          ; $65fe: $69
	jp nc, $d376                                     ; $65ff: $d2 $76 $d3

	call nc, $0aff                                   ; $6602: $d4 $ff $0a
	ld b, $18                                        ; $6605: $06 $18
	jr nz, jr_002_660b                               ; $6607: $20 $02

	sub [hl]                                         ; $6609: $96
	ld e, l                                          ; $660a: $5d

jr_002_660b:
	ld l, c                                          ; $660b: $69
	rst AddAOntoHL                                          ; $660c: $ef
	halt                                             ; $660d: $76
	ld l, c                                          ; $660e: $69
	db $ec                                           ; $660f: $ec
	ld a, b                                          ; $6610: $78
	ld l, c                                          ; $6611: $69
	add sp, $7a                                      ; $6612: $e8 $7a
	ld l, c                                          ; $6614: $69
	ret c                                            ; $6615: $d8

	ld a, h                                          ; $6616: $7c
	ld l, c                                          ; $6617: $69
	rst JumpTable                                          ; $6618: $c7
	ld a, [hl]                                       ; $6619: $7e
	ld l, d                                          ; $661a: $6a
	push bc                                          ; $661b: $c5
	ld b, b                                          ; $661c: $40
	nop                                              ; $661d: $00
	nop                                              ; $661e: $00
	ld [$f900], sp                                   ; $661f: $08 $00 $f9
	ld l, d                                          ; $6622: $6a
	or h                                             ; $6623: $b4
	ld b, d                                          ; $6624: $42
	nop                                              ; $6625: $00
	add b                                            ; $6626: $80
	rst $38                                          ; $6627: $ff
	ld sp, hl                                        ; $6628: $f9
	ld l, d                                          ; $6629: $6a
	xor a                                            ; $662a: $af
	ld b, l                                          ; $662b: $45
	db $d3                                           ; $662c: $d3
	call nc, $0aff                                   ; $662d: $d4 $ff $0a
	ld b, $08                                        ; $6630: $06 $08
	jr nz, jr_002_6635                               ; $6632: $20 $01

	ld a, [de]                                       ; $6634: $1a

jr_002_6635:
	ld e, [hl]                                       ; $6635: $5e
	ld l, d                                          ; $6636: $6a
	rst GetHLinHL                                          ; $6637: $cf
	ld b, l                                          ; $6638: $45
	ld l, d                                          ; $6639: $6a
	db $dd                                           ; $663a: $dd
	ld b, a                                          ; $663b: $47
	ld l, d                                          ; $663c: $6a
	rst SubAFromDE                                          ; $663d: $df
	ld c, c                                          ; $663e: $49
	ld l, d                                          ; $663f: $6a
	rst SubAFromHL                                          ; $6640: $d7
	ld c, e                                          ; $6641: $4b
	ld l, d                                          ; $6642: $6a
	ret nc                                           ; $6643: $d0

	ld c, l                                          ; $6644: $4d
	ld l, d                                          ; $6645: $6a
	jp z, $004f                                      ; $6646: $ca $4f $00

	nop                                              ; $6649: $00
	ld [$f900], sp                                   ; $664a: $08 $00 $f9
	ld l, d                                          ; $664d: $6a
	call nc, $0051                                   ; $664e: $d4 $51 $00
	add b                                            ; $6651: $80
	rst $38                                          ; $6652: $ff
	ld sp, hl                                        ; $6653: $f9
	ld l, d                                          ; $6654: $6a
	pop de                                           ; $6655: $d1
	ld d, h                                          ; $6656: $54
	db $d3                                           ; $6657: $d3
	call nc, $0aff                                   ; $6658: $d4 $ff $0a
	dec b                                            ; $665b: $05
	ld [$0220], sp                                   ; $665c: $08 $20 $02
	adc d                                            ; $665f: $8a
	ld e, [hl]                                       ; $6660: $5e
	ld l, d                                          ; $6661: $6a
	ldh a, [rHDMA4]                                  ; $6662: $f0 $54
	ld l, d                                          ; $6664: $6a
	jp Jump_002_6a56                                 ; $6665: $c3 $56 $6a


	and h                                            ; $6668: $a4
	ld e, b                                          ; $6669: $58
	ld l, d                                          ; $666a: $6a
	ld h, h                                          ; $666b: $64
	ld e, d                                          ; $666c: $5a
	ld l, d                                          ; $666d: $6a
	ld h, $5c                                        ; $666e: $26 $5c
	nop                                              ; $6670: $00
	nop                                              ; $6671: $00
	nop                                              ; $6672: $00
	nop                                              ; $6673: $00
	ld sp, hl                                        ; $6674: $f9
	ld l, d                                          ; $6675: $6a
	db $fc                                           ; $6676: $fc
	ld e, l                                          ; $6677: $5d
	nop                                              ; $6678: $00
	add b                                            ; $6679: $80
	rst $38                                          ; $667a: $ff
	ld sp, hl                                        ; $667b: $f9
	ld l, d                                          ; $667c: $6a
	dec a                                            ; $667d: $3d
	ld h, c                                          ; $667e: $61
	db $d3                                           ; $667f: $d3
	call nc, $08ff                                   ; $6680: $d4 $ff $08
	dec b                                            ; $6683: $05
	jr jr_002_66a6                                   ; $6684: $18 $20

	ld bc, $5efa                                     ; $6686: $01 $fa $5e
	ld l, d                                          ; $6689: $6a
	ld h, b                                          ; $668a: $60
	ld h, c                                          ; $668b: $61
	ld l, d                                          ; $668c: $6a
	cpl                                              ; $668d: $2f
	ld h, e                                          ; $668e: $63
	ld l, d                                          ; $668f: $6a
	nop                                              ; $6690: $00
	ld h, l                                          ; $6691: $65
	ld l, d                                          ; $6692: $6a
	adc $66                                          ; $6693: $ce $66
	ld l, d                                          ; $6695: $6a
	or h                                             ; $6696: $b4
	ld l, b                                          ; $6697: $68
	nop                                              ; $6698: $00
	nop                                              ; $6699: $00
	nop                                              ; $669a: $00
	nop                                              ; $669b: $00
	ld sp, hl                                        ; $669c: $f9
	ld l, d                                          ; $669d: $6a
	add h                                            ; $669e: $84
	ld l, d                                          ; $669f: $6a
	nop                                              ; $66a0: $00
	add b                                            ; $66a1: $80
	rst $38                                          ; $66a2: $ff
	ld sp, hl                                        ; $66a3: $f9
	ld l, d                                          ; $66a4: $6a
	pop de                                           ; $66a5: $d1

jr_002_66a6:
	ld l, l                                          ; $66a6: $6d
	db $d3                                           ; $66a7: $d3
	call nc, $08ff                                   ; $66a8: $d4 $ff $08
	dec b                                            ; $66ab: $05
	jr jr_002_66ce                                   ; $66ac: $18 $20

	ld bc, $5f6a                                     ; $66ae: $01 $6a $5f
	ld l, d                                          ; $66b1: $6a
	di                                               ; $66b2: $f3
	ld l, l                                          ; $66b3: $6d
	ld l, d                                          ; $66b4: $6a
	sbc [hl]                                         ; $66b5: $9e
	ld l, a                                          ; $66b6: $6f
	ld l, d                                          ; $66b7: $6a
	ld b, h                                          ; $66b8: $44
	ld [hl], c                                       ; $66b9: $71
	ld l, d                                          ; $66ba: $6a
	pop hl                                           ; $66bb: $e1
	ld [hl], d                                       ; $66bc: $72
	ld l, d                                          ; $66bd: $6a
	sub [hl]                                         ; $66be: $96
	ld [hl], h                                       ; $66bf: $74
	nop                                              ; $66c0: $00
	nop                                              ; $66c1: $00
	ld [$f900], sp                                   ; $66c2: $08 $00 $f9
	ld l, d                                          ; $66c5: $6a
	ld c, c                                          ; $66c6: $49
	halt                                             ; $66c7: $76
	nop                                              ; $66c8: $00
	add b                                            ; $66c9: $80
	rst $38                                          ; $66ca: $ff
	ld sp, hl                                        ; $66cb: $f9
	ld l, d                                          ; $66cc: $6a
	sub c                                            ; $66cd: $91

jr_002_66ce:
	ld a, c                                          ; $66ce: $79
	db $d3                                           ; $66cf: $d3
	call nc, $08ff                                   ; $66d0: $d4 $ff $08
	dec b                                            ; $66d3: $05
	db $10                                           ; $66d4: $10
	jr nz, @+$03                                     ; $66d5: $20 $01

	jp c, Jump_002_6a5f                              ; $66d7: $da $5f $6a

	xor a                                            ; $66da: $af
	ld a, c                                          ; $66db: $79
	ld l, d                                          ; $66dc: $6a
	ld e, c                                          ; $66dd: $59
	ld a, e                                          ; $66de: $7b
	ld l, d                                          ; $66df: $6a
	ld hl, sp+$7c                                    ; $66e0: $f8 $7c
	ld l, d                                          ; $66e2: $6a
	adc [hl]                                         ; $66e3: $8e
	ld a, [hl]                                       ; $66e4: $7e
	ld l, e                                          ; $66e5: $6b
	dec hl                                           ; $66e6: $2b
	ld b, b                                          ; $66e7: $40
	nop                                              ; $66e8: $00
	nop                                              ; $66e9: $00
	nop                                              ; $66ea: $00
	nop                                              ; $66eb: $00
	ld sp, hl                                        ; $66ec: $f9
	ld l, e                                          ; $66ed: $6b
	jp z, $0041                                      ; $66ee: $ca $41 $00

	add b                                            ; $66f1: $80
	rst $38                                          ; $66f2: $ff
	ld sp, hl                                        ; $66f3: $f9
	ld l, e                                          ; $66f4: $6b
	rst SubAFromHL                                          ; $66f5: $d7
	ld b, h                                          ; $66f6: $44
	db $d3                                           ; $66f7: $d3
	call nc, $08ff                                   ; $66f8: $d4 $ff $08
	dec b                                            ; $66fb: $05
	db $10                                           ; $66fc: $10
	jr nz, jr_002_6700                               ; $66fd: $20 $01

	ld c, d                                          ; $66ff: $4a

jr_002_6700:
	ld h, b                                          ; $6700: $60
	ld l, e                                          ; $6701: $6b
	or $44                                           ; $6702: $f6 $44
	ld l, e                                          ; $6704: $6b
	jp nz, Jump_002_6b46                             ; $6705: $c2 $46 $6b

	and d                                            ; $6708: $a2
	ld c, b                                          ; $6709: $48
	ld l, e                                          ; $670a: $6b
	add e                                            ; $670b: $83
	ld c, d                                          ; $670c: $4a
	ld l, e                                          ; $670d: $6b
	ld l, [hl]                                       ; $670e: $6e
	ld c, h                                          ; $670f: $4c
	nop                                              ; $6710: $00
	nop                                              ; $6711: $00
	nop                                              ; $6712: $00
	nop                                              ; $6713: $00
	ld sp, hl                                        ; $6714: $f9
	ld l, e                                          ; $6715: $6b
	ld a, [de]                                       ; $6716: $1a
	ld c, [hl]                                       ; $6717: $4e
	nop                                              ; $6718: $00
	add b                                            ; $6719: $80
	rst $38                                          ; $671a: $ff
	ld sp, hl                                        ; $671b: $f9
	ld l, e                                          ; $671c: $6b
	ld c, e                                          ; $671d: $4b
	ld d, c                                          ; $671e: $51
	db $d3                                           ; $671f: $d3
	call nc, $08ff                                   ; $6720: $d4 $ff $08
	dec b                                            ; $6723: $05
	jr jr_002_6746                                   ; $6724: $18 $20

	ld bc, $60ba                                     ; $6726: $01 $ba $60
	ld l, e                                          ; $6729: $6b
	ld l, a                                          ; $672a: $6f
	ld d, c                                          ; $672b: $51
	ld l, e                                          ; $672c: $6b
	ld c, c                                          ; $672d: $49
	ld d, e                                          ; $672e: $53
	ld l, e                                          ; $672f: $6b
	ld a, [hl+]                                      ; $6730: $2a
	ld d, l                                          ; $6731: $55
	ld l, e                                          ; $6732: $6b
	rst FarCall                                          ; $6733: $f7
	ld d, [hl]                                       ; $6734: $56
	ld l, e                                          ; $6735: $6b
	or l                                             ; $6736: $b5
	ld e, b                                          ; $6737: $58
	nop                                              ; $6738: $00
	nop                                              ; $6739: $00
	nop                                              ; $673a: $00
	nop                                              ; $673b: $00
	ld sp, hl                                        ; $673c: $f9
	ld l, e                                          ; $673d: $6b
	ld a, d                                          ; $673e: $7a
	ld e, d                                          ; $673f: $5a
	nop                                              ; $6740: $00
	add b                                            ; $6741: $80
	rst $38                                          ; $6742: $ff
	ld sp, hl                                        ; $6743: $f9
	ld l, e                                          ; $6744: $6b
	ld h, b                                          ; $6745: $60

jr_002_6746:
	ld e, l                                          ; $6746: $5d
	db $d3                                           ; $6747: $d3
	call nc, $08ff                                   ; $6748: $d4 $ff $08
	ld b, $20                                        ; $674b: $06 $20
	jr nz, @+$03                                     ; $674d: $20 $01

Jump_002_674f:
	ld a, $61                                        ; $674f: $3e $61
	ld l, e                                          ; $6751: $6b
	add [hl]                                         ; $6752: $86
	ld e, l                                          ; $6753: $5d
	ld l, e                                          ; $6754: $6b
	ld b, h                                          ; $6755: $44
	ld e, a                                          ; $6756: $5f
	ld l, e                                          ; $6757: $6b
	inc d                                            ; $6758: $14
	ld h, c                                          ; $6759: $61
	ld l, e                                          ; $675a: $6b
	sub $62                                          ; $675b: $d6 $62
	ld l, e                                          ; $675d: $6b
	adc d                                            ; $675e: $8a
	ld h, h                                          ; $675f: $64

Jump_002_6760:
	ld l, e                                          ; $6760: $6b
	ld c, d                                          ; $6761: $4a
	ld h, [hl]                                       ; $6762: $66
	nop                                              ; $6763: $00
	nop                                              ; $6764: $00
	nop                                              ; $6765: $00
	nop                                              ; $6766: $00
	ld sp, hl                                        ; $6767: $f9
	ld l, e                                          ; $6768: $6b
	rlca                                             ; $6769: $07
	ld l, b                                          ; $676a: $68
	nop                                              ; $676b: $00
	add b                                            ; $676c: $80
	rst $38                                          ; $676d: $ff
	ld sp, hl                                        ; $676e: $f9
	ld l, e                                          ; $676f: $6b
	dec b                                            ; $6770: $05
	ld l, e                                          ; $6771: $6b
	db $d3                                           ; $6772: $d3
	call nc, $08ff                                   ; $6773: $d4 $ff $08
	dec b                                            ; $6776: $05
	jr nz, jr_002_6799                               ; $6777: $20 $20

	ld bc, $61ae                                     ; $6779: $01 $ae $61
	ld l, e                                          ; $677c: $6b
	jr z, jr_002_67ea                                ; $677d: $28 $6b

	ld l, e                                          ; $677f: $6b
	db $e3                                           ; $6780: $e3
	ld l, h                                          ; $6781: $6c
	ld l, e                                          ; $6782: $6b
	or c                                             ; $6783: $b1
	ld l, [hl]                                       ; $6784: $6e
	ld l, e                                          ; $6785: $6b
	ld [hl], b                                       ; $6786: $70
	ld [hl], b                                       ; $6787: $70
	ld l, e                                          ; $6788: $6b
	ld h, $72                                        ; $6789: $26 $72
	nop                                              ; $678b: $00
	nop                                              ; $678c: $00
	nop                                              ; $678d: $00
	nop                                              ; $678e: $00
	ld sp, hl                                        ; $678f: $f9
	ld l, e                                          ; $6790: $6b
	add sp, $73                                      ; $6791: $e8 $73
	nop                                              ; $6793: $00
	add b                                            ; $6794: $80
	rst $38                                          ; $6795: $ff
	ld sp, hl                                        ; $6796: $f9
	ld l, e                                          ; $6797: $6b
	dec hl                                           ; $6798: $2b

jr_002_6799:
	ld [hl], a                                       ; $6799: $77
	db $d3                                           ; $679a: $d3
	call nc, $08ff                                   ; $679b: $d4 $ff $08
	dec b                                            ; $679e: $05
	jr jr_002_67c1                                   ; $679f: $18 $20

	ld bc, $621e                                     ; $67a1: $01 $1e $62
	ld l, e                                          ; $67a4: $6b
	ld d, c                                          ; $67a5: $51
	ld [hl], a                                       ; $67a6: $77
	ld l, e                                          ; $67a7: $6b
	db $10                                           ; $67a8: $10
	ld a, c                                          ; $67a9: $79
	ld l, e                                          ; $67aa: $6b
	rst SubAFromHL                                          ; $67ab: $d7
	ld a, d                                          ; $67ac: $7a
	ld l, e                                          ; $67ad: $6b
	adc d                                            ; $67ae: $8a
	ld a, h                                          ; $67af: $7c
	ld l, e                                          ; $67b0: $6b
	add hl, sp                                       ; $67b1: $39
	ld a, [hl]                                       ; $67b2: $7e
	nop                                              ; $67b3: $00
	nop                                              ; $67b4: $00
	nop                                              ; $67b5: $00
	nop                                              ; $67b6: $00
	ld sp, hl                                        ; $67b7: $f9
	ld l, e                                          ; $67b8: $6b
	db $f4                                           ; $67b9: $f4
	ld a, a                                          ; $67ba: $7f
	nop                                              ; $67bb: $00
	add b                                            ; $67bc: $80
	rst $38                                          ; $67bd: $ff
	ld sp, hl                                        ; $67be: $f9
	ld l, h                                          ; $67bf: $6c
	add c                                            ; $67c0: $81

jr_002_67c1:
	ld b, e                                          ; $67c1: $43
	db $d3                                           ; $67c2: $d3
	call nc, $06ff                                   ; $67c3: $d4 $ff $06
	dec b                                            ; $67c6: $05
	jr nz, @+$22                                     ; $67c7: $20 $20

	ld bc, $628e                                     ; $67c9: $01 $8e $62
	ld l, h                                          ; $67cc: $6c
	and e                                            ; $67cd: $a3
	ld b, e                                          ; $67ce: $43
	ld l, h                                          ; $67cf: $6c
	db $fd                                           ; $67d0: $fd
	ld b, h                                          ; $67d1: $44
	ld l, h                                          ; $67d2: $6c
	ld h, l                                          ; $67d3: $65
	ld b, [hl]                                       ; $67d4: $46
	ld l, h                                          ; $67d5: $6c
	xor [hl]                                         ; $67d6: $ae
	ld b, a                                          ; $67d7: $47
	ld l, h                                          ; $67d8: $6c
	inc bc                                           ; $67d9: $03
	ld c, c                                          ; $67da: $49
	nop                                              ; $67db: $00
	nop                                              ; $67dc: $00
	nop                                              ; $67dd: $00
	nop                                              ; $67de: $00
	ld sp, hl                                        ; $67df: $f9
	ld l, h                                          ; $67e0: $6c
	ld e, h                                          ; $67e1: $5c
	ld c, d                                          ; $67e2: $4a
	nop                                              ; $67e3: $00
	add b                                            ; $67e4: $80
	rst $38                                          ; $67e5: $ff
	ld sp, hl                                        ; $67e6: $f9
	ld l, h                                          ; $67e7: $6c
	jr jr_002_6837                                   ; $67e8: $18 $4d

jr_002_67ea:
	db $d3                                           ; $67ea: $d3
	call nc, $0aff                                   ; $67eb: $d4 $ff $0a
	ld b, $10                                        ; $67ee: $06 $10
	jr nz, jr_002_67f5                               ; $67f0: $20 $03

	ld [de], a                                       ; $67f2: $12
	ld h, e                                          ; $67f3: $63
	ld l, h                                          ; $67f4: $6c

jr_002_67f5:
	inc sp                                           ; $67f5: $33
	ld c, l                                          ; $67f6: $4d
	ld l, h                                          ; $67f7: $6c
	rla                                              ; $67f8: $17
	ld c, a                                          ; $67f9: $4f
	ld l, h                                          ; $67fa: $6c
	ld [bc], a                                       ; $67fb: $02
	ld d, c                                          ; $67fc: $51
	ld l, h                                          ; $67fd: $6c
	pop bc                                           ; $67fe: $c1
	ld d, d                                          ; $67ff: $52
	ld l, h                                          ; $6800: $6c
	cp [hl]                                          ; $6801: $be
	ld d, h                                          ; $6802: $54
	ld l, h                                          ; $6803: $6c
	add [hl]                                         ; $6804: $86
	ld d, [hl]                                       ; $6805: $56
	nop                                              ; $6806: $00
	nop                                              ; $6807: $00
	nop                                              ; $6808: $00
	nop                                              ; $6809: $00
	ld sp, hl                                        ; $680a: $f9
	ld l, h                                          ; $680b: $6c
	ld h, h                                          ; $680c: $64
	ld e, b                                          ; $680d: $58
	nop                                              ; $680e: $00
	add b                                            ; $680f: $80
	rst $38                                          ; $6810: $ff
	ld sp, hl                                        ; $6811: $f9
	ld l, h                                          ; $6812: $6c
	jr nz, jr_002_6870                               ; $6813: $20 $5b

	db $d3                                           ; $6815: $d3
	call nc, $0aff                                   ; $6816: $d4 $ff $0a
	ld b, $10                                        ; $6819: $06 $10
	jr nz, jr_002_681f                               ; $681b: $20 $02

	sub [hl]                                         ; $681d: $96
	ld h, e                                          ; $681e: $63

jr_002_681f:
	ld l, h                                          ; $681f: $6c
	inc a                                            ; $6820: $3c
	ld e, e                                          ; $6821: $5b
	ld l, h                                          ; $6822: $6c
	db $10                                           ; $6823: $10
	ld e, l                                          ; $6824: $5d
	ld l, h                                          ; $6825: $6c
	inc bc                                           ; $6826: $03
	ld e, a                                          ; $6827: $5f
	ld l, h                                          ; $6828: $6c
	db $e3                                           ; $6829: $e3
	ld h, b                                          ; $682a: $60
	ld l, h                                          ; $682b: $6c
	pop bc                                           ; $682c: $c1
	ld h, d                                          ; $682d: $62
	ld l, h                                          ; $682e: $6c
	sbc b                                            ; $682f: $98
	ld h, h                                          ; $6830: $64
	nop                                              ; $6831: $00
	nop                                              ; $6832: $00
	nop                                              ; $6833: $00
	nop                                              ; $6834: $00
	ld sp, hl                                        ; $6835: $f9
	ld l, h                                          ; $6836: $6c

jr_002_6837:
	ld [hl], l                                       ; $6837: $75
	ld h, [hl]                                       ; $6838: $66
	nop                                              ; $6839: $00
	add b                                            ; $683a: $80
	rst $38                                          ; $683b: $ff
	ld sp, hl                                        ; $683c: $f9
	ld l, h                                          ; $683d: $6c
	ld b, h                                          ; $683e: $44
	ld l, c                                          ; $683f: $69
	db $d3                                           ; $6840: $d3
	call nc, $0aff                                   ; $6841: $d4 $ff $0a
	dec b                                            ; $6844: $05
	db $10                                           ; $6845: $10
	jr nz, @+$03                                     ; $6846: $20 $01

	ld b, $64                                        ; $6848: $06 $64
	ld l, h                                          ; $684a: $6c
	ld h, h                                          ; $684b: $64
	ld l, c                                          ; $684c: $69
	ld l, h                                          ; $684d: $6c
	ld d, d                                          ; $684e: $52
	ld l, e                                          ; $684f: $6b
	ld l, h                                          ; $6850: $6c
	ld e, d                                          ; $6851: $5a
	ld l, l                                          ; $6852: $6d
	ld l, h                                          ; $6853: $6c
	ld b, h                                          ; $6854: $44
	ld l, a                                          ; $6855: $6f
	ld l, h                                          ; $6856: $6c
	ld d, c                                          ; $6857: $51
	ld [hl], c                                       ; $6858: $71
	nop                                              ; $6859: $00
	nop                                              ; $685a: $00
	nop                                              ; $685b: $00
	nop                                              ; $685c: $00
	ld sp, hl                                        ; $685d: $f9
	ld l, h                                          ; $685e: $6c
	ld l, b                                          ; $685f: $68
	ld [hl], e                                       ; $6860: $73
	nop                                              ; $6861: $00
	add b                                            ; $6862: $80
	rst $38                                          ; $6863: $ff
	ld sp, hl                                        ; $6864: $f9
	ld l, h                                          ; $6865: $6c
	ld h, [hl]                                       ; $6866: $66

Jump_002_6867:
	halt                                             ; $6867: $76
	db $d3                                           ; $6868: $d3
	call nc, $0aff                                   ; $6869: $d4 $ff $0a
	dec b                                            ; $686c: $05
	db $10                                           ; $686d: $10
	jr nz, jr_002_6871                               ; $686e: $20 $01

jr_002_6870:
	halt                                             ; $6870: $76

jr_002_6871:
	ld h, h                                          ; $6871: $64
	ld l, h                                          ; $6872: $6c
	adc h                                            ; $6873: $8c
	halt                                             ; $6874: $76
	ld l, h                                          ; $6875: $6c
	ld a, c                                          ; $6876: $79
	ld a, b                                          ; $6877: $78
	ld l, h                                          ; $6878: $6c
	adc e                                            ; $6879: $8b
	ld a, d                                          ; $687a: $7a
	ld l, h                                          ; $687b: $6c
	add h                                            ; $687c: $84
	ld a, h                                          ; $687d: $7c
	ld l, h                                          ; $687e: $6c
	ld a, e                                          ; $687f: $7b
	ld a, [hl]                                       ; $6880: $7e
	nop                                              ; $6881: $00
	nop                                              ; $6882: $00
	nop                                              ; $6883: $00
	nop                                              ; $6884: $00
	ld sp, hl                                        ; $6885: $f9
	ld l, l                                          ; $6886: $6d
	ld [hl], a                                       ; $6887: $77
	ld b, b                                          ; $6888: $40
	nop                                              ; $6889: $00
	add b                                            ; $688a: $80
	rst $38                                          ; $688b: $ff
	ld sp, hl                                        ; $688c: $f9
	ld l, l                                          ; $688d: $6d
	ld d, c                                          ; $688e: $51
	ld b, e                                          ; $688f: $43
	db $d3                                           ; $6890: $d3
	call nc, $0aff                                   ; $6891: $d4 $ff $0a
	dec b                                            ; $6894: $05
	db $10                                           ; $6895: $10
	jr nz, jr_002_689a                               ; $6896: $20 $02

	and $64                                          ; $6898: $e6 $64

jr_002_689a:
	ld l, l                                          ; $689a: $6d
	ld [hl], a                                       ; $689b: $77
	ld b, e                                          ; $689c: $43
	ld l, l                                          ; $689d: $6d
	ld e, e                                          ; $689e: $5b
	ld b, l                                          ; $689f: $45
	ld l, l                                          ; $68a0: $6d
	ld b, h                                          ; $68a1: $44
	ld b, a                                          ; $68a2: $47
	ld l, l                                          ; $68a3: $6d
	daa                                              ; $68a4: $27
	ld c, c                                          ; $68a5: $49
	ld l, l                                          ; $68a6: $6d
	inc c                                            ; $68a7: $0c
	ld c, e                                          ; $68a8: $4b
	nop                                              ; $68a9: $00
	nop                                              ; $68aa: $00
	nop                                              ; $68ab: $00
	nop                                              ; $68ac: $00
	ld sp, hl                                        ; $68ad: $f9
	ld l, l                                          ; $68ae: $6d
	push af                                          ; $68af: $f5
	ld c, h                                          ; $68b0: $4c
	nop                                              ; $68b1: $00
	add b                                            ; $68b2: $80
	rst $38                                          ; $68b3: $ff
	ld sp, hl                                        ; $68b4: $f9
	ld l, l                                          ; $68b5: $6d
	add hl, hl                                       ; $68b6: $29
	ld d, b                                          ; $68b7: $50
	db $d3                                           ; $68b8: $d3
	call nc, $0aff                                   ; $68b9: $d4 $ff $0a
	dec b                                            ; $68bc: $05
	jr jr_002_68df                                   ; $68bd: $18 $20

	ld [bc], a                                       ; $68bf: $02
	ld d, [hl]                                       ; $68c0: $56
	ld h, l                                          ; $68c1: $65
	ld l, l                                          ; $68c2: $6d
	ld c, c                                          ; $68c3: $49
	ld d, b                                          ; $68c4: $50
	ld l, l                                          ; $68c5: $6d
	dec [hl]                                         ; $68c6: $35
	ld d, d                                          ; $68c7: $52
	ld l, l                                          ; $68c8: $6d
	dec l                                            ; $68c9: $2d
	ld d, h                                          ; $68ca: $54
	ld l, l                                          ; $68cb: $6d
	add hl, de                                       ; $68cc: $19
	ld d, [hl]                                       ; $68cd: $56
	ld l, l                                          ; $68ce: $6d
	ld b, $58                                        ; $68cf: $06 $58
	nop                                              ; $68d1: $00
	nop                                              ; $68d2: $00
	nop                                              ; $68d3: $00
	nop                                              ; $68d4: $00
	ld sp, hl                                        ; $68d5: $f9
	ld l, l                                          ; $68d6: $6d
	rst AddAOntoHL                                          ; $68d7: $ef
	ld e, c                                          ; $68d8: $59
	nop                                              ; $68d9: $00
	add b                                            ; $68da: $80
	rst $38                                          ; $68db: $ff
	ld sp, hl                                        ; $68dc: $f9
	ld l, l                                          ; $68dd: $6d
	ret nc                                           ; $68de: $d0

jr_002_68df:
	ld e, h                                          ; $68df: $5c
	db $d3                                           ; $68e0: $d3
	call nc, $0aff                                   ; $68e1: $d4 $ff $0a
	dec b                                            ; $68e4: $05
	jr nz, jr_002_6907                               ; $68e5: $20 $20

	ld bc, $65c6                                     ; $68e7: $01 $c6 $65
	ld l, l                                          ; $68ea: $6d
	push af                                          ; $68eb: $f5
	ld e, h                                          ; $68ec: $5c
	ld l, l                                          ; $68ed: $6d
	or b                                             ; $68ee: $b0
	ld e, [hl]                                       ; $68ef: $5e
	ld l, l                                          ; $68f0: $6d
	ld l, h                                          ; $68f1: $6c
	ld h, b                                          ; $68f2: $60
	ld l, l                                          ; $68f3: $6d
	inc h                                            ; $68f4: $24
	ld h, d                                          ; $68f5: $62
	ld l, l                                          ; $68f6: $6d
	rst SubAFromDE                                          ; $68f7: $df
	ld h, e                                          ; $68f8: $63
	nop                                              ; $68f9: $00
	nop                                              ; $68fa: $00
	nop                                              ; $68fb: $00
	nop                                              ; $68fc: $00
	ld sp, hl                                        ; $68fd: $f9
	ld l, l                                          ; $68fe: $6d
	sbc e                                            ; $68ff: $9b
	ld h, l                                          ; $6900: $65
	nop                                              ; $6901: $00
	add b                                            ; $6902: $80
	rst $38                                          ; $6903: $ff
	ld sp, hl                                        ; $6904: $f9
	ld l, l                                          ; $6905: $6d
	ld l, e                                          ; $6906: $6b

jr_002_6907:
	ld l, b                                          ; $6907: $68
	db $d3                                           ; $6908: $d3
	call nc, $0aff                                   ; $6909: $d4 $ff $0a
	dec b                                            ; $690c: $05
	db $10                                           ; $690d: $10
	jr nz, jr_002_6912                               ; $690e: $20 $02

	ld [hl], $66                                     ; $6910: $36 $66

jr_002_6912:
	ld l, l                                          ; $6912: $6d
	adc b                                            ; $6913: $88
	ld l, b                                          ; $6914: $68
	ld l, l                                          ; $6915: $6d
	ld d, [hl]                                       ; $6916: $56
	ld l, d                                          ; $6917: $6a
	ld l, l                                          ; $6918: $6d
	inc sp                                           ; $6919: $33
	ld l, h                                          ; $691a: $6c
	ld l, l                                          ; $691b: $6d
	ld b, $6e                                        ; $691c: $06 $6e
	ld l, l                                          ; $691e: $6d
	push de                                          ; $691f: $d5
	ld l, a                                          ; $6920: $6f
	nop                                              ; $6921: $00
	nop                                              ; $6922: $00
	nop                                              ; $6923: $00
	nop                                              ; $6924: $00
	ld sp, hl                                        ; $6925: $f9
	ld l, l                                          ; $6926: $6d
	sbc b                                            ; $6927: $98
	ld [hl], c                                       ; $6928: $71
	nop                                              ; $6929: $00
	add b                                            ; $692a: $80
	rst $38                                          ; $692b: $ff
	ld sp, hl                                        ; $692c: $f9
	ld l, l                                          ; $692d: $6d
	rla                                              ; $692e: $17
	ld [hl], h                                       ; $692f: $74
	db $d3                                           ; $6930: $d3
	call nc, $0aff                                   ; $6931: $d4 $ff $0a
	dec b                                            ; $6934: $05
	db $10                                           ; $6935: $10
	jr nz, jr_002_6939                               ; $6936: $20 $01

	and [hl]                                         ; $6938: $a6

jr_002_6939:
	ld h, [hl]                                       ; $6939: $66
	ld l, l                                          ; $693a: $6d
	jr nc, @+$76                                     ; $693b: $30 $74

	ld l, l                                          ; $693d: $6d
	ld h, $76                                        ; $693e: $26 $76
	ld l, l                                          ; $6940: $6d
	ld a, [hl+]                                      ; $6941: $2a
	ld a, b                                          ; $6942: $78
	ld l, l                                          ; $6943: $6d
	inc hl                                           ; $6944: $23
	ld a, d                                          ; $6945: $7a
	ld l, l                                          ; $6946: $6d
	rra                                              ; $6947: $1f
	ld a, h                                          ; $6948: $7c
	nop                                              ; $6949: $00
	nop                                              ; $694a: $00
	ldh a, [rP1]                                     ; $694b: $f0 $00
	ld sp, hl                                        ; $694d: $f9
	ld l, l                                          ; $694e: $6d
	add hl, de                                       ; $694f: $19
	ld a, [hl]                                       ; $6950: $7e
	nop                                              ; $6951: $00
	add b                                            ; $6952: $80
	rst $38                                          ; $6953: $ff
	ld sp, hl                                        ; $6954: $f9
	ld l, [hl]                                       ; $6955: $6e
	db $eb                                           ; $6956: $eb
	ld b, b                                          ; $6957: $40
	db $d3                                           ; $6958: $d3
	call nc, $0aff                                   ; $6959: $d4 $ff $0a
	dec b                                            ; $695c: $05
	jr @+$22                                         ; $695d: $18 $20

	ld [bc], a                                       ; $695f: $02
	ld d, $67                                        ; $6960: $16 $67
	ld l, [hl]                                       ; $6962: $6e
	ld [bc], a                                       ; $6963: $02
	ld b, c                                          ; $6964: $41
	ld l, [hl]                                       ; $6965: $6e
	ldh a, [c]                                       ; $6966: $f2
	ld b, d                                          ; $6967: $42
	ld l, [hl]                                       ; $6968: $6e
	inc c                                            ; $6969: $0c
	ld b, l                                          ; $696a: $45
	ld l, [hl]                                       ; $696b: $6e
	dec bc                                           ; $696c: $0b
	ld b, a                                          ; $696d: $47
	ld l, [hl]                                       ; $696e: $6e
	rst $38                                          ; $696f: $ff
	ld c, b                                          ; $6970: $48
	nop                                              ; $6971: $00
	nop                                              ; $6972: $00
	ldh a, [rP1]                                     ; $6973: $f0 $00
	ld sp, hl                                        ; $6975: $f9
	ld l, [hl]                                       ; $6976: $6e
	db $fc                                           ; $6977: $fc
	ld c, d                                          ; $6978: $4a
	nop                                              ; $6979: $00
	add b                                            ; $697a: $80
	rst $38                                          ; $697b: $ff
	ld sp, hl                                        ; $697c: $f9
	ld l, [hl]                                       ; $697d: $6e
	jp nc, $d34d                                     ; $697e: $d2 $4d $d3

	call nc, $0aff                                   ; $6981: $d4 $ff $0a
	dec b                                            ; $6984: $05
	jr jr_002_69a7                                   ; $6985: $18 $20

	ld [bc], a                                       ; $6987: $02
	add [hl]                                         ; $6988: $86
	ld h, a                                          ; $6989: $67
	ld l, [hl]                                       ; $698a: $6e
	jp hl                                            ; $698b: $e9


	ld c, l                                          ; $698c: $4d
	ld l, [hl]                                       ; $698d: $6e
	ret c                                            ; $698e: $d8

	ld c, a                                          ; $698f: $4f
	ld l, [hl]                                       ; $6990: $6e
	rst FarCall                                          ; $6991: $f7
	ld d, c                                          ; $6992: $51
	ld l, [hl]                                       ; $6993: $6e
	rst FarCall                                          ; $6994: $f7
	ld d, e                                          ; $6995: $53
	ld l, [hl]                                       ; $6996: $6e
	jp hl                                            ; $6997: $e9


	ld d, l                                          ; $6998: $55
	nop                                              ; $6999: $00
	nop                                              ; $699a: $00
	ldh a, [rP1]                                     ; $699b: $f0 $00
	ld sp, hl                                        ; $699d: $f9
	ld l, [hl]                                       ; $699e: $6e
	and $57                                          ; $699f: $e6 $57
	nop                                              ; $69a1: $00
	add b                                            ; $69a2: $80
	rst $38                                          ; $69a3: $ff
	ld sp, hl                                        ; $69a4: $f9
	ld l, [hl]                                       ; $69a5: $6e
	xor [hl]                                         ; $69a6: $ae

jr_002_69a7:
	ld e, d                                          ; $69a7: $5a
	db $d3                                           ; $69a8: $d3
	call nc, $0aff                                   ; $69a9: $d4 $ff $0a
	dec b                                            ; $69ac: $05
	jr jr_002_69cf                                   ; $69ad: $18 $20

	ld [bc], a                                       ; $69af: $02
	or $67                                           ; $69b0: $f6 $67
	ld l, [hl]                                       ; $69b2: $6e
	push bc                                          ; $69b3: $c5
	ld e, d                                          ; $69b4: $5a
	ld l, [hl]                                       ; $69b5: $6e
	or h                                             ; $69b6: $b4
	ld e, h                                          ; $69b7: $5c
	ld l, [hl]                                       ; $69b8: $6e
	ret nc                                           ; $69b9: $d0

	ld e, [hl]                                       ; $69ba: $5e
	ld l, [hl]                                       ; $69bb: $6e
	call Call_002_6e60                               ; $69bc: $cd $60 $6e
	pop bc                                           ; $69bf: $c1
	ld h, d                                          ; $69c0: $62
	nop                                              ; $69c1: $00
	nop                                              ; $69c2: $00
	ld [$f900], sp                                   ; $69c3: $08 $00 $f9
	ld l, [hl]                                       ; $69c6: $6e
	ret nz                                           ; $69c7: $c0

	ld h, h                                          ; $69c8: $64
	nop                                              ; $69c9: $00
	add b                                            ; $69ca: $80
	rst $38                                          ; $69cb: $ff
	ld sp, hl                                        ; $69cc: $f9
	ld l, [hl]                                       ; $69cd: $6e
	adc b                                            ; $69ce: $88

jr_002_69cf:
	ld h, a                                          ; $69cf: $67
	db $d3                                           ; $69d0: $d3
	call nc, $08ff                                   ; $69d1: $d4 $ff $08
	ld b, $08                                        ; $69d4: $06 $08
	jr nz, jr_002_69da                               ; $69d6: $20 $02

	ld a, d                                          ; $69d8: $7a
	ld l, b                                          ; $69d9: $68

jr_002_69da:
	ld l, [hl]                                       ; $69da: $6e
	and c                                            ; $69db: $a1
	ld h, a                                          ; $69dc: $67
	ld l, [hl]                                       ; $69dd: $6e
	ld h, b                                          ; $69de: $60
	ld l, c                                          ; $69df: $69
	ld l, [hl]                                       ; $69e0: $6e
	dec l                                            ; $69e1: $2d
	ld l, e                                          ; $69e2: $6b
	ld l, [hl]                                       ; $69e3: $6e
	di                                               ; $69e4: $f3
	ld l, h                                          ; $69e5: $6c
	ld l, [hl]                                       ; $69e6: $6e
	xor a                                            ; $69e7: $af
	ld l, [hl]                                       ; $69e8: $6e
	ld l, [hl]                                       ; $69e9: $6e
	ld h, a                                          ; $69ea: $67
	ld [hl], b                                       ; $69eb: $70
	nop                                              ; $69ec: $00
	nop                                              ; $69ed: $00
	nop                                              ; $69ee: $00
	nop                                              ; $69ef: $00
	ld sp, hl                                        ; $69f0: $f9
	ld l, [hl]                                       ; $69f1: $6e
	add b                                            ; $69f2: $80
	ld [hl], c                                       ; $69f3: $71
	nop                                              ; $69f4: $00
	add b                                            ; $69f5: $80
	rst $38                                          ; $69f6: $ff
	ld sp, hl                                        ; $69f7: $f9
	ld l, [hl]                                       ; $69f8: $6e
	ld a, l                                          ; $69f9: $7d
	ld [hl], h                                       ; $69fa: $74
	db $d3                                           ; $69fb: $d3
	call nc, $08ff                                   ; $69fc: $d4 $ff $08
	ld b, $28                                        ; $69ff: $06 $28
	jr nz, jr_002_6a05                               ; $6a01: $20 $02

	cp $68                                           ; $6a03: $fe $68

jr_002_6a05:
	ld l, [hl]                                       ; $6a05: $6e
	sbc [hl]                                         ; $6a06: $9e
	ld [hl], h                                       ; $6a07: $74
	ld l, [hl]                                       ; $6a08: $6e
	ld l, e                                          ; $6a09: $6b
	halt                                             ; $6a0a: $76
	ld l, [hl]                                       ; $6a0b: $6e
	ld a, [hl+]                                      ; $6a0c: $2a
	ld a, b                                          ; $6a0d: $78
	ld l, [hl]                                       ; $6a0e: $6e
	ld a, [de]                                       ; $6a0f: $1a
	ld a, d                                          ; $6a10: $7a
	ld l, [hl]                                       ; $6a11: $6e
	ld [bc], a                                       ; $6a12: $02
	ld a, h                                          ; $6a13: $7c
	ld l, [hl]                                       ; $6a14: $6e
	call nc, $007d                                   ; $6a15: $d4 $7d $00
	nop                                              ; $6a18: $00
	ld [$f900], sp                                   ; $6a19: $08 $00 $f9
	ld l, [hl]                                       ; $6a1c: $6e
	call nc, $007f                                   ; $6a1d: $d4 $7f $00
	add b                                            ; $6a20: $80
	rst $38                                          ; $6a21: $ff
	ld sp, hl                                        ; $6a22: $f9
	ld l, a                                          ; $6a23: $6f
	ld l, a                                          ; $6a24: $6f
	ld b, d                                          ; $6a25: $42
	db $d3                                           ; $6a26: $d3
	call nc, $0aff                                   ; $6a27: $d4 $ff $0a
	dec b                                            ; $6a2a: $05
	ld [$0220], sp                                   ; $6a2b: $08 $20 $02
	ld l, [hl]                                       ; $6a2e: $6e
	ld l, c                                          ; $6a2f: $69
	ld l, a                                          ; $6a30: $6f
	adc e                                            ; $6a31: $8b
	ld b, d                                          ; $6a32: $42
	ld l, a                                          ; $6a33: $6f
	ld [hl], h                                       ; $6a34: $74
	ld b, h                                          ; $6a35: $44
	ld l, a                                          ; $6a36: $6f
	ld e, e                                          ; $6a37: $5b
	ld b, [hl]                                       ; $6a38: $46
	ld l, a                                          ; $6a39: $6f
	inc a                                            ; $6a3a: $3c
	ld c, b                                          ; $6a3b: $48
	ld l, a                                          ; $6a3c: $6f
	jr jr_002_6a89                                   ; $6a3d: $18 $4a

	nop                                              ; $6a3f: $00
	nop                                              ; $6a40: $00
	ld [$f900], sp                                   ; $6a41: $08 $00 $f9
	ld l, a                                          ; $6a44: $6f
	ld c, $4c                                        ; $6a45: $0e $4c
	nop                                              ; $6a47: $00
	add b                                            ; $6a48: $80
	rst $38                                          ; $6a49: $ff
	ld sp, hl                                        ; $6a4a: $f9
	ld l, a                                          ; $6a4b: $6f
	rst JumpTable                                          ; $6a4c: $c7
	ld c, [hl]                                       ; $6a4d: $4e
	db $d3                                           ; $6a4e: $d3
	call nc, $0aff                                   ; $6a4f: $d4 $ff $0a
	dec b                                            ; $6a52: $05
	ld [$0220], sp                                   ; $6a53: $08 $20 $02

Jump_002_6a56:
	sbc $69                                          ; $6a56: $de $69
	ld l, a                                          ; $6a58: $6f
	add sp, $4e                                      ; $6a59: $e8 $4e
	ld l, a                                          ; $6a5b: $6f
	or h                                             ; $6a5c: $b4
	ld d, b                                          ; $6a5d: $50
	ld l, a                                          ; $6a5e: $6f

Jump_002_6a5f:
	ld a, e                                          ; $6a5f: $7b
	ld d, d                                          ; $6a60: $52
	ld l, a                                          ; $6a61: $6f
	ld d, d                                          ; $6a62: $52
	ld d, h                                          ; $6a63: $54
	ld l, a                                          ; $6a64: $6f
	ld [hl+], a                                      ; $6a65: $22
	ld d, [hl]                                       ; $6a66: $56
	nop                                              ; $6a67: $00
	nop                                              ; $6a68: $00
	nop                                              ; $6a69: $00
	nop                                              ; $6a6a: $00
	ld sp, hl                                        ; $6a6b: $f9
	ld l, a                                          ; $6a6c: $6f
	rst SubAFromHL                                          ; $6a6d: $d7
	ld d, a                                          ; $6a6e: $57
	nop                                              ; $6a6f: $00
	add b                                            ; $6a70: $80
	rst $38                                          ; $6a71: $ff
	ld sp, hl                                        ; $6a72: $f9
	ld l, a                                          ; $6a73: $6f
	ld hl, sp+$5a                                    ; $6a74: $f8 $5a
	db $d3                                           ; $6a76: $d3
	call nc, $08ff                                   ; $6a77: $d4 $ff $08
	dec b                                            ; $6a7a: $05
	jr jr_002_6a9d                                   ; $6a7b: $18 $20

	ld [bc], a                                       ; $6a7d: $02
	ld c, [hl]                                       ; $6a7e: $4e
	ld l, d                                          ; $6a7f: $6a
	ld l, a                                          ; $6a80: $6f
	add hl, de                                       ; $6a81: $19
	ld e, e                                          ; $6a82: $5b
	ld l, a                                          ; $6a83: $6f
	push de                                          ; $6a84: $d5
	ld e, h                                          ; $6a85: $5c
	ld l, a                                          ; $6a86: $6f
	xor d                                            ; $6a87: $aa
	ld e, [hl]                                       ; $6a88: $5e

jr_002_6a89:
	ld l, a                                          ; $6a89: $6f
	adc b                                            ; $6a8a: $88
	ld h, b                                          ; $6a8b: $60
	ld l, a                                          ; $6a8c: $6f
	ld h, l                                          ; $6a8d: $65
	ld h, d                                          ; $6a8e: $62
	nop                                              ; $6a8f: $00
	nop                                              ; $6a90: $00
	nop                                              ; $6a91: $00
	nop                                              ; $6a92: $00
	ld sp, hl                                        ; $6a93: $f9
	ld l, a                                          ; $6a94: $6f
	ld a, [hl+]                                      ; $6a95: $2a
	ld h, h                                          ; $6a96: $64
	nop                                              ; $6a97: $00
	add b                                            ; $6a98: $80
	rst $38                                          ; $6a99: $ff
	ld sp, hl                                        ; $6a9a: $f9
	ld l, a                                          ; $6a9b: $6f
	ld e, b                                          ; $6a9c: $58

jr_002_6a9d:
	ld h, a                                          ; $6a9d: $67
	db $d3                                           ; $6a9e: $d3
	call nc, $08ff                                   ; $6a9f: $d4 $ff $08
	dec b                                            ; $6aa2: $05
	jr jr_002_6ac5                                   ; $6aa3: $18 $20

	ld bc, $6abe                                     ; $6aa5: $01 $be $6a
	ld l, a                                          ; $6aa8: $6f
	ld [hl], a                                       ; $6aa9: $77
	ld h, a                                          ; $6aaa: $67
	ld l, a                                          ; $6aab: $6f
	jr jr_002_6b17                                   ; $6aac: $18 $69

	ld l, a                                          ; $6aae: $6f
	cp l                                             ; $6aaf: $bd
	ld l, d                                          ; $6ab0: $6a
	ld l, a                                          ; $6ab1: $6f
	ld e, [hl]                                       ; $6ab2: $5e
	ld l, h                                          ; $6ab3: $6c
	ld l, a                                          ; $6ab4: $6f
	db $fc                                           ; $6ab5: $fc
	ld l, l                                          ; $6ab6: $6d
	nop                                              ; $6ab7: $00
	nop                                              ; $6ab8: $00
	ld [$f900], sp                                   ; $6ab9: $08 $00 $f9
	ld l, a                                          ; $6abc: $6f
	ld l, b                                          ; $6abd: $68
	ld l, a                                          ; $6abe: $6f
	nop                                              ; $6abf: $00
	add b                                            ; $6ac0: $80
	rst $38                                          ; $6ac1: $ff
	ld sp, hl                                        ; $6ac2: $f9
	ld l, a                                          ; $6ac3: $6f
	xor b                                            ; $6ac4: $a8

jr_002_6ac5:
	ld [hl], d                                       ; $6ac5: $72
	db $d3                                           ; $6ac6: $d3
	call nc, $08ff                                   ; $6ac7: $d4 $ff $08
	dec b                                            ; $6aca: $05
	jr z, jr_002_6aed                                ; $6acb: $28 $20

	ld bc, $6b2e                                     ; $6acd: $01 $2e $6b
	ld l, a                                          ; $6ad0: $6f
	ret nc                                           ; $6ad1: $d0

	ld [hl], d                                       ; $6ad2: $72
	ld l, a                                          ; $6ad3: $6f
	and l                                            ; $6ad4: $a5
	ld [hl], h                                       ; $6ad5: $74
	ld l, a                                          ; $6ad6: $6f
	adc d                                            ; $6ad7: $8a
	halt                                             ; $6ad8: $76
	ld l, a                                          ; $6ad9: $6f
	ld h, a                                          ; $6ada: $67
	ld a, b                                          ; $6adb: $78
	ld l, a                                          ; $6adc: $6f
	ld d, b                                          ; $6add: $50
	ld a, d                                          ; $6ade: $7a
	nop                                              ; $6adf: $00
	nop                                              ; $6ae0: $00
	ld [$f900], sp                                   ; $6ae1: $08 $00 $f9
	ld l, a                                          ; $6ae4: $6f
	rra                                              ; $6ae5: $1f
	ld a, h                                          ; $6ae6: $7c
	nop                                              ; $6ae7: $00
	add b                                            ; $6ae8: $80
	rst $38                                          ; $6ae9: $ff
	ld sp, hl                                        ; $6aea: $f9
	ld l, a                                          ; $6aeb: $6f
	add hl, hl                                       ; $6aec: $29

jr_002_6aed:
	ld a, a                                          ; $6aed: $7f
	db $d3                                           ; $6aee: $d3
	call nc, $08ff                                   ; $6aef: $d4 $ff $08
	dec b                                            ; $6af2: $05
	db $10                                           ; $6af3: $10
	jr nz, jr_002_6af7                               ; $6af4: $20 $01

	sbc [hl]                                         ; $6af6: $9e

jr_002_6af7:
	ld l, e                                          ; $6af7: $6b
	ld l, a                                          ; $6af8: $6f
	ld c, l                                          ; $6af9: $4d
	ld a, a                                          ; $6afa: $7f
	ld [hl], b                                       ; $6afb: $70
	db $ec                                           ; $6afc: $ec
	ld b, b                                          ; $6afd: $40
	ld [hl], b                                       ; $6afe: $70
	adc a                                            ; $6aff: $8f
	ld b, d                                          ; $6b00: $42
	ld [hl], b                                       ; $6b01: $70
	dec h                                            ; $6b02: $25
	ld b, h                                          ; $6b03: $44
	ld [hl], b                                       ; $6b04: $70
	cp b                                             ; $6b05: $b8
	ld b, l                                          ; $6b06: $45
	nop                                              ; $6b07: $00
	nop                                              ; $6b08: $00
	ld hl, sp+$00                                    ; $6b09: $f8 $00
	ld sp, hl                                        ; $6b0b: $f9
	ld [hl], b                                       ; $6b0c: $70
	ld c, l                                          ; $6b0d: $4d
	ld b, a                                          ; $6b0e: $47
	nop                                              ; $6b0f: $00
	add b                                            ; $6b10: $80
	rst $38                                          ; $6b11: $ff
	ld sp, hl                                        ; $6b12: $f9
	ld [hl], b                                       ; $6b13: $70
	cpl                                              ; $6b14: $2f
	ld c, d                                          ; $6b15: $4a
	db $d3                                           ; $6b16: $d3

jr_002_6b17:
	call nc, $0aff                                   ; $6b17: $d4 $ff $0a
	dec b                                            ; $6b1a: $05
	jr jr_002_6b3d                                   ; $6b1b: $18 $20

	ld [bc], a                                       ; $6b1d: $02
	ld c, $6c                                        ; $6b1e: $0e $6c
	ld [hl], b                                       ; $6b20: $70
	ld c, l                                          ; $6b21: $4d
	ld c, d                                          ; $6b22: $4a
	ld [hl], b                                       ; $6b23: $70
	ld b, h                                          ; $6b24: $44
	ld c, h                                          ; $6b25: $4c
	ld [hl], b                                       ; $6b26: $70
	dec sp                                           ; $6b27: $3b
	ld c, [hl]                                       ; $6b28: $4e
	ld [hl], b                                       ; $6b29: $70
	ld e, $50                                        ; $6b2a: $1e $50
	ld [hl], b                                       ; $6b2c: $70
	rrca                                             ; $6b2d: $0f
	ld d, d                                          ; $6b2e: $52
	nop                                              ; $6b2f: $00
	nop                                              ; $6b30: $00
	nop                                              ; $6b31: $00
	nop                                              ; $6b32: $00
	ld sp, hl                                        ; $6b33: $f9
	ld [hl], b                                       ; $6b34: $70
	ld a, [bc]                                       ; $6b35: $0a
	ld d, h                                          ; $6b36: $54
	nop                                              ; $6b37: $00
	add b                                            ; $6b38: $80
	rst $38                                          ; $6b39: $ff
	ld sp, hl                                        ; $6b3a: $f9
	ld [hl], b                                       ; $6b3b: $70
	db $db                                           ; $6b3c: $db

jr_002_6b3d:
	ld d, [hl]                                       ; $6b3d: $56
	db $d3                                           ; $6b3e: $d3
	call nc, $08ff                                   ; $6b3f: $d4 $ff $08
	dec b                                            ; $6b42: $05
	ld [$0120], sp                                   ; $6b43: $08 $20 $01

Jump_002_6b46:
	ld a, [hl]                                       ; $6b46: $7e
	ld l, h                                          ; $6b47: $6c
	ld [hl], b                                       ; $6b48: $70
	nop                                              ; $6b49: $00
	ld d, a                                          ; $6b4a: $57
	ld [hl], b                                       ; $6b4b: $70
	adc c                                            ; $6b4c: $89
	ld e, b                                          ; $6b4d: $58
	ld [hl], b                                       ; $6b4e: $70
	add hl, de                                       ; $6b4f: $19
	ld e, d                                          ; $6b50: $5a
	ld [hl], b                                       ; $6b51: $70
	call Call_002_705b                               ; $6b52: $cd $5b $70
	adc b                                            ; $6b55: $88
	ld e, l                                          ; $6b56: $5d
	nop                                              ; $6b57: $00
	nop                                              ; $6b58: $00
	nop                                              ; $6b59: $00
	nop                                              ; $6b5a: $00
	ld sp, hl                                        ; $6b5b: $f9
	ld [hl], b                                       ; $6b5c: $70
	inc l                                            ; $6b5d: $2c
	ld e, a                                          ; $6b5e: $5f
	nop                                              ; $6b5f: $00
	add b                                            ; $6b60: $80
	rst $38                                          ; $6b61: $ff
	ld sp, hl                                        ; $6b62: $f9
	ld [hl], b                                       ; $6b63: $70
	ld l, h                                          ; $6b64: $6c
	ld h, d                                          ; $6b65: $62
	db $d3                                           ; $6b66: $d3
	call nc, $08ff                                   ; $6b67: $d4 $ff $08
	ld b, $20                                        ; $6b6a: $06 $20
	jr nz, jr_002_6b6f                               ; $6b6c: $20 $01

	ld [bc], a                                       ; $6b6e: $02

jr_002_6b6f:
	ld l, l                                          ; $6b6f: $6d
	ld [hl], b                                       ; $6b70: $70
	adc a                                            ; $6b71: $8f
	ld h, d                                          ; $6b72: $62
	ld [hl], b                                       ; $6b73: $70
	add hl, sp                                       ; $6b74: $39
	ld h, h                                          ; $6b75: $64
	ld [hl], b                                       ; $6b76: $70
	ldh a, [c]                                       ; $6b77: $f2
	ld h, l                                          ; $6b78: $65
	ld [hl], b                                       ; $6b79: $70
	sub d                                            ; $6b7a: $92
	ld h, a                                          ; $6b7b: $67
	ld [hl], b                                       ; $6b7c: $70
	add hl, hl                                       ; $6b7d: $29
	ld l, c                                          ; $6b7e: $69
	ld [hl], b                                       ; $6b7f: $70
	rst JumpTable                                          ; $6b80: $c7
	ld l, d                                          ; $6b81: $6a
	nop                                              ; $6b82: $00
	nop                                              ; $6b83: $00
	ld [$f900], sp                                   ; $6b84: $08 $00 $f9
	ld [hl], b                                       ; $6b87: $70
	ret                                              ; $6b88: $c9


	ld l, d                                          ; $6b89: $6a
	nop                                              ; $6b8a: $00
	add b                                            ; $6b8b: $80
	rst $38                                          ; $6b8c: $ff
	ld sp, hl                                        ; $6b8d: $f9
	ld [hl], b                                       ; $6b8e: $70
	xor c                                            ; $6b8f: $a9
	ld l, l                                          ; $6b90: $6d
	db $d3                                           ; $6b91: $d3
	call nc, $08ff                                   ; $6b92: $d4 $ff $08
	ld b, $10                                        ; $6b95: $06 $10
	jr jr_002_6b9a                                   ; $6b97: $18 $01

	add [hl]                                         ; $6b99: $86

jr_002_6b9a:
	ld l, l                                          ; $6b9a: $6d
	ld [hl], b                                       ; $6b9b: $70
	ret z                                            ; $6b9c: $c8

	ld l, l                                          ; $6b9d: $6d
	ld [hl], b                                       ; $6b9e: $70
	ret z                                            ; $6b9f: $c8

	ld l, a                                          ; $6ba0: $6f
	ld [hl], b                                       ; $6ba1: $70
	cp a                                             ; $6ba2: $bf
	ld [hl], c                                       ; $6ba3: $71
	ld [hl], b                                       ; $6ba4: $70
	sub a                                            ; $6ba5: $97
	ld [hl], e                                       ; $6ba6: $73
	ld [hl], b                                       ; $6ba7: $70
	ld a, l                                          ; $6ba8: $7d
	ld [hl], l                                       ; $6ba9: $75
	ld [hl], b                                       ; $6baa: $70
	ld h, a                                          ; $6bab: $67
	ld [hl], a                                       ; $6bac: $77
	nop                                              ; $6bad: $00
	nop                                              ; $6bae: $00
	ld [$f900], sp                                   ; $6baf: $08 $00 $f9
	ld [hl], b                                       ; $6bb2: $70
	ld e, b                                          ; $6bb3: $58
	ld a, c                                          ; $6bb4: $79
	nop                                              ; $6bb5: $00
	add b                                            ; $6bb6: $80
	rst $38                                          ; $6bb7: $ff
	ld sp, hl                                        ; $6bb8: $f9
	ld [hl], b                                       ; $6bb9: $70
	ld c, e                                          ; $6bba: $4b
	ld a, h                                          ; $6bbb: $7c
	db $d3                                           ; $6bbc: $d3
	call nc, $08ff                                   ; $6bbd: $d4 $ff $08
	dec b                                            ; $6bc0: $05
	nop                                              ; $6bc1: $00
	jr @+$01                                         ; $6bc2: $18 $ff

	or $6d                                           ; $6bc4: $f6 $6d
	ld [hl], b                                       ; $6bc6: $70
	ld l, a                                          ; $6bc7: $6f
	ld a, h                                          ; $6bc8: $7c
	ld [hl], b                                       ; $6bc9: $70
	inc [hl]                                         ; $6bca: $34
	ld a, [hl]                                       ; $6bcb: $7e
	ld [hl], b                                       ; $6bcc: $70
	db $fc                                           ; $6bcd: $fc
	ld a, a                                          ; $6bce: $7f
	ld [hl], c                                       ; $6bcf: $71
	sbc e                                            ; $6bd0: $9b
	ld b, c                                          ; $6bd1: $41
	ld [hl], c                                       ; $6bd2: $71
	dec sp                                           ; $6bd3: $3b
	ld b, e                                          ; $6bd4: $43
	nop                                              ; $6bd5: $00
	nop                                              ; $6bd6: $00
	nop                                              ; $6bd7: $00
	nop                                              ; $6bd8: $00
	ld sp, hl                                        ; $6bd9: $f9
	ld [hl], c                                       ; $6bda: $71
	ld sp, hl                                        ; $6bdb: $f9
	ld b, h                                          ; $6bdc: $44
	nop                                              ; $6bdd: $00
	add b                                            ; $6bde: $80
	rst $38                                          ; $6bdf: $ff
	ld sp, hl                                        ; $6be0: $f9
	ld [hl], c                                       ; $6be1: $71
	add sp, $47                                      ; $6be2: $e8 $47
	db $d3                                           ; $6be4: $d3
	call nc, $08ff                                   ; $6be5: $d4 $ff $08
	dec b                                            ; $6be8: $05
	jr jr_002_6c0b                                   ; $6be9: $18 $20

	ld [bc], a                                       ; $6beb: $02
	ld h, [hl]                                       ; $6bec: $66
	ld l, [hl]                                       ; $6bed: $6e
	ld [hl], c                                       ; $6bee: $71
	ld a, [bc]                                       ; $6bef: $0a
	ld c, b                                          ; $6bf0: $48
	ld [hl], c                                       ; $6bf1: $71
	ret nc                                           ; $6bf2: $d0

	ld c, c                                          ; $6bf3: $49
	ld [hl], c                                       ; $6bf4: $71
	sbc e                                            ; $6bf5: $9b
	ld c, e                                          ; $6bf6: $4b
	ld [hl], c                                       ; $6bf7: $71
	ld e, b                                          ; $6bf8: $58
	ld c, l                                          ; $6bf9: $4d
	ld [hl], c                                       ; $6bfa: $71
	dec e                                            ; $6bfb: $1d
	ld c, a                                          ; $6bfc: $4f
	nop                                              ; $6bfd: $00
	nop                                              ; $6bfe: $00
	nop                                              ; $6bff: $00
	nop                                              ; $6c00: $00
	ld sp, hl                                        ; $6c01: $f9
	ld [hl], c                                       ; $6c02: $71
	rst SubAFromDE                                          ; $6c03: $df
	ld d, b                                          ; $6c04: $50
	nop                                              ; $6c05: $00
	add b                                            ; $6c06: $80
	rst $38                                          ; $6c07: $ff
	ld sp, hl                                        ; $6c08: $f9
	ld [hl], c                                       ; $6c09: $71
	add c                                            ; $6c0a: $81

jr_002_6c0b:
	ld d, e                                          ; $6c0b: $53
	db $d3                                           ; $6c0c: $d3
	call nc, $08ff                                   ; $6c0d: $d4 $ff $08
	dec b                                            ; $6c10: $05
	jr jr_002_6c33                                   ; $6c11: $18 $20

	ld bc, $6ed6                                     ; $6c13: $01 $d6 $6e
	ld [hl], c                                       ; $6c16: $71
	and c                                            ; $6c17: $a1
	ld d, e                                          ; $6c18: $53
	ld [hl], c                                       ; $6c19: $71
	inc hl                                           ; $6c1a: $23
	ld d, l                                          ; $6c1b: $55
	ld [hl], c                                       ; $6c1c: $71
	ret nz                                           ; $6c1d: $c0

	ld d, [hl]                                       ; $6c1e: $56
	ld [hl], c                                       ; $6c1f: $71
	ld a, $58                                        ; $6c20: $3e $58
	ld [hl], c                                       ; $6c22: $71
	ret                                              ; $6c23: $c9


	ld e, c                                          ; $6c24: $59
	nop                                              ; $6c25: $00
	nop                                              ; $6c26: $00
	ld [$f900], sp                                   ; $6c27: $08 $00 $f9
	ld [hl], c                                       ; $6c2a: $71
	ld d, e                                          ; $6c2b: $53
	ld e, e                                          ; $6c2c: $5b
	nop                                              ; $6c2d: $00
	add b                                            ; $6c2e: $80
	rst $38                                          ; $6c2f: $ff
	ld sp, hl                                        ; $6c30: $f9
	ld [hl], c                                       ; $6c31: $71
	rrca                                             ; $6c32: $0f

jr_002_6c33:
	ld e, [hl]                                       ; $6c33: $5e
	db $d3                                           ; $6c34: $d3
	call nc, $08ff                                   ; $6c35: $d4 $ff $08
	dec b                                            ; $6c38: $05
	db $10                                           ; $6c39: $10
	jr nz, jr_002_6c3d                               ; $6c3a: $20 $01

	ld b, [hl]                                       ; $6c3c: $46

jr_002_6c3d:
	ld l, a                                          ; $6c3d: $6f
	ld [hl], c                                       ; $6c3e: $71
	ld sp, $715e                                     ; $6c3f: $31 $5e $71
	jp $715f                                 ; $6c42: $c3 $5f $71


	ld [hl], h                                       ; $6c45: $74
	ld h, c                                          ; $6c46: $61
	ld [hl], c                                       ; $6c47: $71
	nop                                              ; $6c48: $00
	ld h, e                                          ; $6c49: $63
	ld [hl], c                                       ; $6c4a: $71
	sbc d                                            ; $6c4b: $9a
	ld h, h                                          ; $6c4c: $64
	nop                                              ; $6c4d: $00
	nop                                              ; $6c4e: $00
	ld [$f900], sp                                   ; $6c4f: $08 $00 $f9
	ld [hl], c                                       ; $6c52: $71
	inc [hl]                                         ; $6c53: $34
	ld h, [hl]                                       ; $6c54: $66
	nop                                              ; $6c55: $00
	add b                                            ; $6c56: $80
	rst $38                                          ; $6c57: $ff
	ld sp, hl                                        ; $6c58: $f9
	ld [hl], c                                       ; $6c59: $71
	jr z, jr_002_6cc5                                ; $6c5a: $28 $69

	db $d3                                           ; $6c5c: $d3
	call nc, $08ff                                   ; $6c5d: $d4 $ff $08
	dec b                                            ; $6c60: $05
	ld [$0018], sp                                   ; $6c61: $08 $18 $00
	or [hl]                                          ; $6c64: $b6
	ld l, a                                          ; $6c65: $6f
	ld [hl], c                                       ; $6c66: $71
	ld c, [hl]                                       ; $6c67: $4e
	ld l, c                                          ; $6c68: $69
	ld [hl], c                                       ; $6c69: $71
	rra                                              ; $6c6a: $1f
	ld l, e                                          ; $6c6b: $6b
	ld [hl], c                                       ; $6c6c: $71
	or $6c                                           ; $6c6d: $f6 $6c
	ld [hl], c                                       ; $6c6f: $71
	or c                                             ; $6c70: $b1
	ld l, [hl]                                       ; $6c71: $6e
	ld [hl], c                                       ; $6c72: $71
	ld [hl], a                                       ; $6c73: $77
	ld [hl], b                                       ; $6c74: $70
	nop                                              ; $6c75: $00
	nop                                              ; $6c76: $00
	nop                                              ; $6c77: $00
	nop                                              ; $6c78: $00
	ld sp, hl                                        ; $6c79: $f9
	ld [hl], c                                       ; $6c7a: $71
	ld c, b                                          ; $6c7b: $48
	ld [hl], d                                       ; $6c7c: $72
	nop                                              ; $6c7d: $00
	add b                                            ; $6c7e: $80
	rst $38                                          ; $6c7f: $ff
	ld sp, hl                                        ; $6c80: $f9
	ld [hl], c                                       ; $6c81: $71
	ld a, h                                          ; $6c82: $7c
	ld [hl], l                                       ; $6c83: $75
	db $d3                                           ; $6c84: $d3
	call nc, $08ff                                   ; $6c85: $d4 $ff $08
	dec b                                            ; $6c88: $05
	jr jr_002_6cab                                   ; $6c89: $18 $20

	ld bc, $7026                                     ; $6c8b: $01 $26 $70
	ld [hl], c                                       ; $6c8e: $71
	sbc a                                            ; $6c8f: $9f
	ld [hl], l                                       ; $6c90: $75
	ld [hl], c                                       ; $6c91: $71
	ld a, l                                          ; $6c92: $7d
	ld [hl], a                                       ; $6c93: $77
	ld [hl], c                                       ; $6c94: $71
	ld d, l                                          ; $6c95: $55
	ld a, c                                          ; $6c96: $79
	ld [hl], c                                       ; $6c97: $71
	ld e, $7b                                        ; $6c98: $1e $7b
	ld [hl], c                                       ; $6c9a: $71
	ei                                               ; $6c9b: $fb
	ld a, h                                          ; $6c9c: $7c
	nop                                              ; $6c9d: $00
	nop                                              ; $6c9e: $00
	ld [$f900], sp                                   ; $6c9f: $08 $00 $f9
	ld [hl], c                                       ; $6ca2: $71
	db $d3                                           ; $6ca3: $d3
	ld a, [hl]                                       ; $6ca4: $7e
	nop                                              ; $6ca5: $00
	add b                                            ; $6ca6: $80
	rst $38                                          ; $6ca7: $ff
	ld sp, hl                                        ; $6ca8: $f9
	ld [hl], d                                       ; $6ca9: $72
	ld [hl], l                                       ; $6caa: $75

jr_002_6cab:
	ld b, c                                          ; $6cab: $41
	db $d3                                           ; $6cac: $d3
	call nc, $08ff                                   ; $6cad: $d4 $ff $08
	dec b                                            ; $6cb0: $05
	jr nz, jr_002_6ccb                               ; $6cb1: $20 $18

	inc bc                                           ; $6cb3: $03
	sub [hl]                                         ; $6cb4: $96
	ld [hl], b                                       ; $6cb5: $70
	ld [hl], d                                       ; $6cb6: $72
	sbc h                                            ; $6cb7: $9c
	ld b, c                                          ; $6cb8: $41
	ld [hl], d                                       ; $6cb9: $72
	ld h, d                                          ; $6cba: $62
	ld b, e                                          ; $6cbb: $43
	ld [hl], d                                       ; $6cbc: $72
	dec hl                                           ; $6cbd: $2b
	ld b, l                                          ; $6cbe: $45
	ld [hl], d                                       ; $6cbf: $72
	ret z                                            ; $6cc0: $c8

	ld b, [hl]                                       ; $6cc1: $46
	ld [hl], d                                       ; $6cc2: $72
	ld [hl], b                                       ; $6cc3: $70
	ld c, b                                          ; $6cc4: $48

jr_002_6cc5:
	nop                                              ; $6cc5: $00
	nop                                              ; $6cc6: $00
	nop                                              ; $6cc7: $00
	nop                                              ; $6cc8: $00
	ld sp, hl                                        ; $6cc9: $f9
	ld [hl], d                                       ; $6cca: $72

jr_002_6ccb:
	cpl                                              ; $6ccb: $2f
	ld c, d                                          ; $6ccc: $4a
	nop                                              ; $6ccd: $00
	add b                                            ; $6cce: $80
	rst $38                                          ; $6ccf: $ff
	ld sp, hl                                        ; $6cd0: $f9
	ld [hl], d                                       ; $6cd1: $72
	or [hl]                                          ; $6cd2: $b6
	ld c, h                                          ; $6cd3: $4c
	db $d3                                           ; $6cd4: $d3
	call nc, $08ff                                   ; $6cd5: $d4 $ff $08
	dec b                                            ; $6cd8: $05
	db $10                                           ; $6cd9: $10
	jr @+$03                                         ; $6cda: $18 $01

	ld b, $71                                        ; $6cdc: $06 $71
	ld [hl], d                                       ; $6cde: $72
	ret c                                            ; $6cdf: $d8

	ld c, h                                          ; $6ce0: $4c
	ld [hl], d                                       ; $6ce1: $72
	ld a, b                                          ; $6ce2: $78
	ld c, [hl]                                       ; $6ce3: $4e
	ld [hl], d                                       ; $6ce4: $72
	ld e, $50                                        ; $6ce5: $1e $50
	ld [hl], d                                       ; $6ce7: $72
	ret nz                                           ; $6ce8: $c0

	ld d, c                                          ; $6ce9: $51
	ld [hl], d                                       ; $6cea: $72
	ld [hl], e                                       ; $6ceb: $73
	ld d, e                                          ; $6cec: $53
	nop                                              ; $6ced: $00
	nop                                              ; $6cee: $00
	ld [$f900], sp                                   ; $6cef: $08 $00 $f9
	ld [hl], d                                       ; $6cf2: $72
	dec l                                            ; $6cf3: $2d
	ld d, l                                          ; $6cf4: $55
	nop                                              ; $6cf5: $00
	add b                                            ; $6cf6: $80
	rst $38                                          ; $6cf7: $ff
	ld sp, hl                                        ; $6cf8: $f9
	ld [hl], d                                       ; $6cf9: $72
	ld sp, hl                                        ; $6cfa: $f9
	ld d, a                                          ; $6cfb: $57
	db $d3                                           ; $6cfc: $d3
	call nc, $08ff                                   ; $6cfd: $d4 $ff $08
	dec b                                            ; $6d00: $05
	jr jr_002_6d1b                                   ; $6d01: $18 $18

	ld [bc], a                                       ; $6d03: $02
	halt                                             ; $6d04: $76
	ld [hl], c                                       ; $6d05: $71
	ld [hl], d                                       ; $6d06: $72
	dec e                                            ; $6d07: $1d
	ld e, b                                          ; $6d08: $58
	ld [hl], d                                       ; $6d09: $72
	xor $59                                          ; $6d0a: $ee $59
	ld [hl], d                                       ; $6d0c: $72
	add $5b                                          ; $6d0d: $c6 $5b
	ld [hl], d                                       ; $6d0f: $72
	add d                                            ; $6d10: $82
	ld e, l                                          ; $6d11: $5d
	ld [hl], d                                       ; $6d12: $72
	ld c, b                                          ; $6d13: $48
	ld e, a                                          ; $6d14: $5f
	nop                                              ; $6d15: $00
	nop                                              ; $6d16: $00
	ld [$f900], sp                                   ; $6d17: $08 $00 $f9
	ld [hl], d                                       ; $6d1a: $72

jr_002_6d1b:
	add hl, de                                       ; $6d1b: $19
	ld h, c                                          ; $6d1c: $61
	nop                                              ; $6d1d: $00
	add b                                            ; $6d1e: $80
	rst $38                                          ; $6d1f: $ff
	ld sp, hl                                        ; $6d20: $f9
	ld [hl], d                                       ; $6d21: $72
	ld [hl], $64                                     ; $6d22: $36 $64
	db $d3                                           ; $6d24: $d3
	call nc, $06ff                                   ; $6d25: $d4 $ff $06
	ld bc, $2010                                     ; $6d28: $01 $10 $20
	nop                                              ; $6d2b: $00
	sub [hl]                                         ; $6d2c: $96
	ld [hl], c                                       ; $6d2d: $71
	ld [hl], d                                       ; $6d2e: $72
	ld e, h                                          ; $6d2f: $5c
	ld h, h                                          ; $6d30: $64
	nop                                              ; $6d31: $00
	nop                                              ; $6d32: $00
	nop                                              ; $6d33: $00
	nop                                              ; $6d34: $00
	ld sp, hl                                        ; $6d35: $f9
	ld [hl], d                                       ; $6d36: $72
	or l                                             ; $6d37: $b5
	ld h, l                                          ; $6d38: $65
	nop                                              ; $6d39: $00
	add b                                            ; $6d3a: $80
	rst $38                                          ; $6d3b: $ff
	ld sp, hl                                        ; $6d3c: $f9
	ld [hl], d                                       ; $6d3d: $72
	pop de                                           ; $6d3e: $d1
	ld l, b                                          ; $6d3f: $68
	db $d3                                           ; $6d40: $d3
	call nc, $08ff                                   ; $6d41: $d4 $ff $08
	ld bc, $2020                                     ; $6d44: $01 $20 $20
	ld bc, $71b6                                     ; $6d47: $01 $b6 $71
	ld [hl], d                                       ; $6d4a: $72
	ldh a, [rBCPS]                                   ; $6d4b: $f0 $68
	nop                                              ; $6d4d: $00
	nop                                              ; $6d4e: $00
	ld [$f900], sp                                   ; $6d4f: $08 $00 $f9
	ld [hl], d                                       ; $6d52: $72
	ld l, a                                          ; $6d53: $6f
	ld l, d                                          ; $6d54: $6a
	nop                                              ; $6d55: $00
	add b                                            ; $6d56: $80
	rst $38                                          ; $6d57: $ff
	ld sp, hl                                        ; $6d58: $f9
	ld [hl], d                                       ; $6d59: $72
	ld a, a                                          ; $6d5a: $7f
	ld l, l                                          ; $6d5b: $6d
	db $d3                                           ; $6d5c: $d3
	call nc, $0aff                                   ; $6d5d: $d4 $ff $0a
	ld bc, $2010                                     ; $6d60: $01 $10 $20
	ld [bc], a                                       ; $6d63: $02
	sub $71                                          ; $6d64: $d6 $71
	ld [hl], d                                       ; $6d66: $72
	sub a                                            ; $6d67: $97
	ld l, l                                          ; $6d68: $6d
	nop                                              ; $6d69: $00
	nop                                              ; $6d6a: $00
	nop                                              ; $6d6b: $00
	nop                                              ; $6d6c: $00
	ld sp, hl                                        ; $6d6d: $f9
	ld [hl], d                                       ; $6d6e: $72
	ld l, l                                          ; $6d6f: $6d
	ld l, a                                          ; $6d70: $6f
	nop                                              ; $6d71: $00
	add b                                            ; $6d72: $80
	rst $38                                          ; $6d73: $ff
	ld sp, hl                                        ; $6d74: $f9
	ld [hl], d                                       ; $6d75: $72
	or e                                             ; $6d76: $b3
	ld [hl], d                                       ; $6d77: $72
	db $d3                                           ; $6d78: $d3
	call nc, $08ff                                   ; $6d79: $d4 $ff $08
	ld bc, $2018                                     ; $6d7c: $01 $18 $20
	ld bc, $71f6                                     ; $6d7f: $01 $f6 $71
	ld [hl], d                                       ; $6d82: $72
	jp c, $0072                                      ; $6d83: $da $72 $00

	nop                                              ; $6d86: $00
	nop                                              ; $6d87: $00
	nop                                              ; $6d88: $00
	ld sp, hl                                        ; $6d89: $f9
	ld [hl], d                                       ; $6d8a: $72
	or [hl]                                          ; $6d8b: $b6
	ld [hl], h                                       ; $6d8c: $74
	nop                                              ; $6d8d: $00
	add b                                            ; $6d8e: $80
	rst $38                                          ; $6d8f: $ff
	ld sp, hl                                        ; $6d90: $f9
	ld [hl], d                                       ; $6d91: $72
	dec b                                            ; $6d92: $05
	ld a, b                                          ; $6d93: $78
	db $d3                                           ; $6d94: $d3
	call nc, $08ff                                   ; $6d95: $d4 $ff $08
	ld bc, $2018                                     ; $6d98: $01 $18 $20
	ld [bc], a                                       ; $6d9b: $02
	ld d, $72                                        ; $6d9c: $16 $72
	ld [hl], d                                       ; $6d9e: $72
	inc l                                            ; $6d9f: $2c
	ld a, b                                          ; $6da0: $78
	nop                                              ; $6da1: $00
	nop                                              ; $6da2: $00
	nop                                              ; $6da3: $00
	nop                                              ; $6da4: $00
	ld sp, hl                                        ; $6da5: $f9
	ld [hl], d                                       ; $6da6: $72
	push de                                          ; $6da7: $d5
	ld a, c                                          ; $6da8: $79
	nop                                              ; $6da9: $00
	add b                                            ; $6daa: $80
	rst $38                                          ; $6dab: $ff
	ld sp, hl                                        ; $6dac: $f9
	ld [hl], d                                       ; $6dad: $72
	ld [hl], a                                       ; $6dae: $77
	ld a, h                                          ; $6daf: $7c
	db $d3                                           ; $6db0: $d3
	call nc, $08ff                                   ; $6db1: $d4 $ff $08
	ld bc, $2018                                     ; $6db4: $01 $18 $20
	ld bc, $7236                                     ; $6db7: $01 $36 $72
	ld [hl], d                                       ; $6dba: $72
	sub l                                            ; $6dbb: $95
	ld a, h                                          ; $6dbc: $7c
	nop                                              ; $6dbd: $00
	nop                                              ; $6dbe: $00
	nop                                              ; $6dbf: $00
	nop                                              ; $6dc0: $00
	ld sp, hl                                        ; $6dc1: $f9
	ld [hl], d                                       ; $6dc2: $72
	scf                                              ; $6dc3: $37
	ld a, [hl]                                       ; $6dc4: $7e
	nop                                              ; $6dc5: $00
	add b                                            ; $6dc6: $80
	rst $38                                          ; $6dc7: $ff
	ld sp, hl                                        ; $6dc8: $f9
	ld [hl], e                                       ; $6dc9: $73
	ld l, a                                          ; $6dca: $6f
	ld b, c                                          ; $6dcb: $41
	db $d3                                           ; $6dcc: $d3
	call nc, $06ff                                   ; $6dcd: $d4 $ff $06
	ld [bc], a                                       ; $6dd0: $02
	jr jr_002_6df3                                   ; $6dd1: $18 $20

	ld bc, $726a                                     ; $6dd3: $01 $6a $72
	ld [hl], e                                       ; $6dd6: $73
	sub [hl]                                         ; $6dd7: $96
	ld b, c                                          ; $6dd8: $41
	ld [hl], e                                       ; $6dd9: $73
	ld a, [hl]                                       ; $6dda: $7e
	ld b, d                                          ; $6ddb: $42
	nop                                              ; $6ddc: $00
	nop                                              ; $6ddd: $00
	nop                                              ; $6dde: $00
	nop                                              ; $6ddf: $00
	ld sp, hl                                        ; $6de0: $f9
	ld [hl], e                                       ; $6de1: $73
	ld [hl], l                                       ; $6de2: $75
	ld b, e                                          ; $6de3: $43
	nop                                              ; $6de4: $00
	add b                                            ; $6de5: $80
	rst $38                                          ; $6de6: $ff
	ld sp, hl                                        ; $6de7: $f9
	ld [hl], e                                       ; $6de8: $73
	call z, $d346                                    ; $6de9: $cc $46 $d3
	call nc, $06ff                                   ; $6dec: $d4 $ff $06
	ld bc, $2018                                     ; $6def: $01 $18 $20
	nop                                              ; $6df2: $00

jr_002_6df3:
	adc d                                            ; $6df3: $8a
	ld [hl], d                                       ; $6df4: $72
	ld [hl], e                                       ; $6df5: $73
	rst AddAOntoHL                                          ; $6df6: $ef
	ld b, [hl]                                       ; $6df7: $46
	nop                                              ; $6df8: $00
	nop                                              ; $6df9: $00
	ld [$f900], sp                                   ; $6dfa: $08 $00 $f9
	ld [hl], e                                       ; $6dfd: $73
	nop                                              ; $6dfe: $00
	ld c, b                                          ; $6dff: $48
	nop                                              ; $6e00: $00
	add b                                            ; $6e01: $80
	rst $38                                          ; $6e02: $ff
	ld sp, hl                                        ; $6e03: $f9
	ld [hl], e                                       ; $6e04: $73
	cp e                                             ; $6e05: $bb
	ld c, d                                          ; $6e06: $4a
	db $d3                                           ; $6e07: $d3
	call nc, $08ff                                   ; $6e08: $d4 $ff $08
	dec b                                            ; $6e0b: $05
	ld [$0120], sp                                   ; $6e0c: $08 $20 $01
	ld a, [$7372]                                    ; $6e0f: $fa $72 $73
	call c, $734a                            ; $6e12: $dc $4a $73
	ld [hl], h                                       ; $6e15: $74
	ld c, h                                          ; $6e16: $4c
	ld [hl], e                                       ; $6e17: $73
	rla                                              ; $6e18: $17
	ld c, [hl]                                       ; $6e19: $4e
	ld [hl], e                                       ; $6e1a: $73
	and b                                            ; $6e1b: $a0
	ld c, a                                          ; $6e1c: $4f
	ld [hl], e                                       ; $6e1d: $73
	inc a                                            ; $6e1e: $3c
	ld d, c                                          ; $6e1f: $51
	nop                                              ; $6e20: $00
	nop                                              ; $6e21: $00
	nop                                              ; $6e22: $00
	nop                                              ; $6e23: $00
	ld sp, hl                                        ; $6e24: $f9
	ld [hl], e                                       ; $6e25: $73
	ret c                                            ; $6e26: $d8

	ld d, d                                          ; $6e27: $52
	nop                                              ; $6e28: $00
	add b                                            ; $6e29: $80
	rst $38                                          ; $6e2a: $ff
	ld sp, hl                                        ; $6e2b: $f9
	ld [hl], e                                       ; $6e2c: $73
	ld c, c                                          ; $6e2d: $49
	ld d, l                                          ; $6e2e: $55
	db $d3                                           ; $6e2f: $d3
	call nc, $08ff                                   ; $6e30: $d4 $ff $08
	ld bc, $2018                                     ; $6e33: $01 $18 $20
	ld bc, $731a                                     ; $6e36: $01 $1a $73
	ld [hl], e                                       ; $6e39: $73
	ld h, [hl]                                       ; $6e3a: $66
	ld d, l                                          ; $6e3b: $55
	nop                                              ; $6e3c: $00
	nop                                              ; $6e3d: $00
	nop                                              ; $6e3e: $00
	nop                                              ; $6e3f: $00
	ld sp, hl                                        ; $6e40: $f9
	ld [hl], e                                       ; $6e41: $73
	ld a, [hl]                                       ; $6e42: $7e
	ld d, a                                          ; $6e43: $57
	nop                                              ; $6e44: $00
	add b                                            ; $6e45: $80
	rst $38                                          ; $6e46: $ff
	ld sp, hl                                        ; $6e47: $f9
	ld [hl], e                                       ; $6e48: $73
	push bc                                          ; $6e49: $c5
	ld e, c                                          ; $6e4a: $59
	db $d3                                           ; $6e4b: $d3
	call nc, $08ff                                   ; $6e4c: $d4 $ff $08
	ld bc, $2018                                     ; $6e4f: $01 $18 $20
	ld bc, $733a                                     ; $6e52: $01 $3a $73
	ld [hl], e                                       ; $6e55: $73
	sbc $59                                          ; $6e56: $de $59
	nop                                              ; $6e58: $00
	nop                                              ; $6e59: $00
	nop                                              ; $6e5a: $00
	nop                                              ; $6e5b: $00
	ld sp, hl                                        ; $6e5c: $f9
	ld [hl], e                                       ; $6e5d: $73
	cp a                                             ; $6e5e: $bf
	ld e, e                                          ; $6e5f: $5b

Call_002_6e60:
	nop                                              ; $6e60: $00
	add b                                            ; $6e61: $80
	rst $38                                          ; $6e62: $ff
	ld sp, hl                                        ; $6e63: $f9
	ld [hl], e                                       ; $6e64: $73
	and a                                            ; $6e65: $a7
	ld e, [hl]                                       ; $6e66: $5e
	db $d3                                           ; $6e67: $d3
	call nc, $06ff                                   ; $6e68: $d4 $ff $06
	ld bc, $2018                                     ; $6e6b: $01 $18 $20
	ld bc, $735a                                     ; $6e6e: $01 $5a $73
	ld [hl], e                                       ; $6e71: $73
	adc $5e                                          ; $6e72: $ce $5e
	nop                                              ; $6e74: $00
	nop                                              ; $6e75: $00
	nop                                              ; $6e76: $00
	nop                                              ; $6e77: $00
	ld sp, hl                                        ; $6e78: $f9
	ld [hl], e                                       ; $6e79: $73
	inc de                                           ; $6e7a: $13
	ld h, b                                          ; $6e7b: $60
	nop                                              ; $6e7c: $00
	add b                                            ; $6e7d: $80
	rst $38                                          ; $6e7e: $ff
	ld sp, hl                                        ; $6e7f: $f9
	ld [hl], e                                       ; $6e80: $73
	ld a, d                                          ; $6e81: $7a
	ld h, d                                          ; $6e82: $62
	db $d3                                           ; $6e83: $d3
	call nc, $06ff                                   ; $6e84: $d4 $ff $06
	ld [bc], a                                       ; $6e87: $02
	jr jr_002_6eaa                                   ; $6e88: $18 $20

	nop                                              ; $6e8a: $00
	adc [hl]                                         ; $6e8b: $8e
	ld [hl], e                                       ; $6e8c: $73
	ld [hl], e                                       ; $6e8d: $73
	sub [hl]                                         ; $6e8e: $96
	ld h, d                                          ; $6e8f: $62
	ld [hl], e                                       ; $6e90: $73
	rst SubAFromDE                                          ; $6e91: $df
	ld h, e                                          ; $6e92: $63
	nop                                              ; $6e93: $00
	nop                                              ; $6e94: $00
	nop                                              ; $6e95: $00
	nop                                              ; $6e96: $00
	ld sp, hl                                        ; $6e97: $f9
	ld [hl], e                                       ; $6e98: $73
	ld e, $65                                        ; $6e99: $1e $65
	nop                                              ; $6e9b: $00
	add b                                            ; $6e9c: $80
	rst $38                                          ; $6e9d: $ff
	ld sp, hl                                        ; $6e9e: $f9
	ld [hl], e                                       ; $6e9f: $73
	add a                                            ; $6ea0: $87
	ld h, a                                          ; $6ea1: $67
	db $d3                                           ; $6ea2: $d3
	call nc, $06ff                                   ; $6ea3: $d4 $ff $06
	ld [bc], a                                       ; $6ea6: $02
	jr jr_002_6ec9                                   ; $6ea7: $18 $20

	nop                                              ; $6ea9: $00

jr_002_6eaa:
	jp nz, $7373                             ; $6eaa: $c2 $73 $73

	and e                                            ; $6ead: $a3
	ld h, a                                          ; $6eae: $67
	ld [hl], e                                       ; $6eaf: $73
	xor $68                                          ; $6eb0: $ee $68
	nop                                              ; $6eb2: $00
	nop                                              ; $6eb3: $00
	nop                                              ; $6eb4: $00
	nop                                              ; $6eb5: $00
	ld sp, hl                                        ; $6eb6: $f9
	ld [hl], e                                       ; $6eb7: $73
	cpl                                              ; $6eb8: $2f
	ld l, d                                          ; $6eb9: $6a
	nop                                              ; $6eba: $00
	add b                                            ; $6ebb: $80
	rst $38                                          ; $6ebc: $ff
	ld sp, hl                                        ; $6ebd: $f9
	ld [hl], e                                       ; $6ebe: $73
	sbc $6c                                          ; $6ebf: $de $6c
	db $d3                                           ; $6ec1: $d3
	call nc, $0aff                                   ; $6ec2: $d4 $ff $0a
	ld bc, $1810                                     ; $6ec5: $01 $10 $18
	ld [bc], a                                       ; $6ec8: $02

jr_002_6ec9:
	ldh [c], a                                       ; $6ec9: $e2
	ld [hl], e                                       ; $6eca: $73
	ld [hl], e                                       ; $6ecb: $73
	ld bc, $006d                                     ; $6ecc: $01 $6d $00
	nop                                              ; $6ecf: $00
	nop                                              ; $6ed0: $00
	nop                                              ; $6ed1: $00
	ld sp, hl                                        ; $6ed2: $f9
	ld [hl], e                                       ; $6ed3: $73
	ld l, d                                          ; $6ed4: $6a
	ld l, [hl]                                       ; $6ed5: $6e
	nop                                              ; $6ed6: $00
	add b                                            ; $6ed7: $80
	rst $38                                          ; $6ed8: $ff
	ld sp, hl                                        ; $6ed9: $f9
	ld [hl], e                                       ; $6eda: $73
	push de                                          ; $6edb: $d5
	ld [hl], b                                       ; $6edc: $70
	db $d3                                           ; $6edd: $d3
	call nc, $0aff                                   ; $6ede: $d4 $ff $0a
	ld bc, $0818                                     ; $6ee1: $01 $18 $08
	ld [bc], a                                       ; $6ee4: $02
	ld [bc], a                                       ; $6ee5: $02
	ld [hl], h                                       ; $6ee6: $74
	ld [hl], e                                       ; $6ee7: $73
	di                                               ; $6ee8: $f3
	ld [hl], b                                       ; $6ee9: $70
	nop                                              ; $6eea: $00
	nop                                              ; $6eeb: $00
	nop                                              ; $6eec: $00
	ld b, b                                          ; $6eed: $40
	ld b, h                                          ; $6eee: $44
	ld b, b                                          ; $6eef: $40
	add b                                            ; $6ef0: $80
	ld b, b                                          ; $6ef1: $40
	call nz, $f840                                   ; $6ef2: $c4 $40 $f8
	ld b, b                                          ; $6ef5: $40
	inc [hl]                                         ; $6ef6: $34
	ld b, c                                          ; $6ef7: $41
	ld [hl], b                                       ; $6ef8: $70
	ld b, c                                          ; $6ef9: $41
	or h                                             ; $6efa: $b4
	ld b, c                                          ; $6efb: $41
	ldh a, [rSTAT]                                   ; $6efc: $f0 $41
	inc [hl]                                         ; $6efe: $34
	ld b, d                                          ; $6eff: $42
	ld l, b                                          ; $6f00: $68
	ld b, d                                          ; $6f01: $42
	xor h                                            ; $6f02: $ac
	ld b, d                                          ; $6f03: $42
	ldh [rSCY], a                                    ; $6f04: $e0 $42
	inc h                                            ; $6f06: $24
	ld b, e                                          ; $6f07: $43
	ld h, b                                          ; $6f08: $60
	ld b, e                                          ; $6f09: $43
	add h                                            ; $6f0a: $84
	ld b, e                                          ; $6f0b: $43
	ret nz                                           ; $6f0c: $c0

	ld b, e                                          ; $6f0d: $43
	db $fc                                           ; $6f0e: $fc
	ld b, e                                          ; $6f0f: $43
	jr c, jr_002_6f56                                ; $6f10: $38 $44

	ld [hl], h                                       ; $6f12: $74
	ld b, h                                          ; $6f13: $44
	or b                                             ; $6f14: $b0
	ld b, h                                          ; $6f15: $44
	db $e4                                           ; $6f16: $e4
	ld b, h                                          ; $6f17: $44
	jr @+$47                                         ; $6f18: $18 $45

	ld e, h                                          ; $6f1a: $5c
	ld b, l                                          ; $6f1b: $45
	sub b                                            ; $6f1c: $90
	ld b, l                                          ; $6f1d: $45
	call z, $1045                                    ; $6f1e: $cc $45 $10
	ld b, [hl]                                       ; $6f21: $46
	inc a                                            ; $6f22: $3c
	ld b, [hl]                                       ; $6f23: $46
	ld a, b                                          ; $6f24: $78
	ld b, [hl]                                       ; $6f25: $46
	xor h                                            ; $6f26: $ac
	ld b, [hl]                                       ; $6f27: $46
	ldh [rDMA], a                                    ; $6f28: $e0 $46
	inc d                                            ; $6f2a: $14
	ld b, a                                          ; $6f2b: $47
	jr nc, jr_002_6f75                               ; $6f2c: $30 $47

	ld c, h                                          ; $6f2e: $4c
	ld b, a                                          ; $6f2f: $47
	ld a, b                                          ; $6f30: $78
	ld b, a                                          ; $6f31: $47
	xor h                                            ; $6f32: $ac
	ld b, a                                          ; $6f33: $47
	add sp, $47                                      ; $6f34: $e8 $47
	inc d                                            ; $6f36: $14
	ld c, b                                          ; $6f37: $48
	ld e, b                                          ; $6f38: $58
	ld c, b                                          ; $6f39: $48
	sub h                                            ; $6f3a: $94
	ld c, b                                          ; $6f3b: $48
	ret z                                            ; $6f3c: $c8

	ld c, b                                          ; $6f3d: $48
	db $ec                                           ; $6f3e: $ec
	ld c, b                                          ; $6f3f: $48
	jr nz, jr_002_6f8b                               ; $6f40: $20 $49

	ld d, h                                          ; $6f42: $54
	ld c, c                                          ; $6f43: $49
	sbc b                                            ; $6f44: $98
	ld c, c                                          ; $6f45: $49
	call nc, $f849                                   ; $6f46: $d4 $49 $f8
	ld c, c                                          ; $6f49: $49
	inc [hl]                                         ; $6f4a: $34
	ld c, d                                          ; $6f4b: $4a
	ld l, b                                          ; $6f4c: $68
	ld c, d                                          ; $6f4d: $4a
	sbc h                                            ; $6f4e: $9c
	ld c, d                                          ; $6f4f: $4a
	ret c                                            ; $6f50: $d8

	ld c, d                                          ; $6f51: $4a
	inc b                                            ; $6f52: $04
	ld c, e                                          ; $6f53: $4b
	jr nc, jr_002_6fa1                               ; $6f54: $30 $4b

jr_002_6f56:
	ld e, h                                          ; $6f56: $5c
	ld c, e                                          ; $6f57: $4b
	sbc b                                            ; $6f58: $98
	ld c, e                                          ; $6f59: $4b
	call nz, $c44b                                   ; $6f5a: $c4 $4b $c4
	ld c, e                                          ; $6f5d: $4b
	add sp, $4b                                      ; $6f5e: $e8 $4b
	inc h                                            ; $6f60: $24
	ld c, h                                          ; $6f61: $4c
	ld h, b                                          ; $6f62: $60
	ld c, h                                          ; $6f63: $4c
	adc h                                            ; $6f64: $8c
	ld c, h                                          ; $6f65: $4c
	ret nz                                           ; $6f66: $c0

	ld c, h                                          ; $6f67: $4c
	inc b                                            ; $6f68: $04
	ld c, l                                          ; $6f69: $4d
	jr nc, jr_002_6fb9                               ; $6f6a: $30 $4d

	ld h, h                                          ; $6f6c: $64
	ld c, l                                          ; $6f6d: $4d
	xor b                                            ; $6f6e: $a8
	ld c, l                                          ; $6f6f: $4d
	db $e4                                           ; $6f70: $e4
	ld c, l                                          ; $6f71: $4d
	jr jr_002_6fc2                                   ; $6f72: $18 $4e

	ld e, h                                          ; $6f74: $5c

jr_002_6f75:
	ld c, [hl]                                       ; $6f75: $4e
	sub b                                            ; $6f76: $90
	ld c, [hl]                                       ; $6f77: $4e
	call nz, $f84e                                   ; $6f78: $c4 $4e $f8
	ld c, [hl]                                       ; $6f7b: $4e
	inc l                                            ; $6f7c: $2c
	ld c, a                                          ; $6f7d: $4f
	ld [hl], b                                       ; $6f7e: $70
	ld c, a                                          ; $6f7f: $4f
	and h                                            ; $6f80: $a4
	ld c, a                                          ; $6f81: $4f
	ldh [rVBK], a                                    ; $6f82: $e0 $4f
	inc h                                            ; $6f84: $24
	ld d, b                                          ; $6f85: $50
	ld e, b                                          ; $6f86: $58
	ld d, b                                          ; $6f87: $50
	sub h                                            ; $6f88: $94
	ld d, b                                          ; $6f89: $50
	ret nz                                           ; $6f8a: $c0

jr_002_6f8b:
	ld d, b                                          ; $6f8b: $50
	inc b                                            ; $6f8c: $04
	ld d, c                                          ; $6f8d: $51
	jr z, jr_002_6fe1                                ; $6f8e: $28 $51

	ld l, h                                          ; $6f90: $6c
	ld d, c                                          ; $6f91: $51
	or b                                             ; $6f92: $b0
	ld d, c                                          ; $6f93: $51
	db $f4                                           ; $6f94: $f4
	ld d, c                                          ; $6f95: $51
	jr nc, jr_002_6fea                               ; $6f96: $30 $52

	ld [hl], h                                       ; $6f98: $74
	ld d, d                                          ; $6f99: $52
	cp b                                             ; $6f9a: $b8
	ld d, d                                          ; $6f9b: $52
	db $fc                                           ; $6f9c: $fc
	ld d, d                                          ; $6f9d: $52
	ld b, b                                          ; $6f9e: $40
	ld d, e                                          ; $6f9f: $53
	add h                                            ; $6fa0: $84

jr_002_6fa1:
	ld d, e                                          ; $6fa1: $53
	ret z                                            ; $6fa2: $c8

	ld d, e                                          ; $6fa3: $53
	db $f4                                           ; $6fa4: $f4
	ld d, e                                          ; $6fa5: $53
	jr nz, jr_002_6ffc                               ; $6fa6: $20 $54

	ld c, h                                          ; $6fa8: $4c
	ld d, h                                          ; $6fa9: $54
	ld a, b                                          ; $6faa: $78
	ld d, h                                          ; $6fab: $54
	xor h                                            ; $6fac: $ac
	ld d, h                                          ; $6fad: $54
	ldh a, [rHDMA4]                                  ; $6fae: $f0 $54
	inc h                                            ; $6fb0: $24
	ld d, l                                          ; $6fb1: $55
	ld h, b                                          ; $6fb2: $60
	ld d, l                                          ; $6fb3: $55
	and h                                            ; $6fb4: $a4
	ld d, l                                          ; $6fb5: $55
	add sp, $55                                      ; $6fb6: $e8 $55
	inc e                                            ; $6fb8: $1c

jr_002_6fb9:
	ld d, [hl]                                       ; $6fb9: $56
	ld h, b                                          ; $6fba: $60
	ld d, [hl]                                       ; $6fbb: $56
	sbc h                                            ; $6fbc: $9c
	ld d, [hl]                                       ; $6fbd: $56
	ret z                                            ; $6fbe: $c8

	ld d, [hl]                                       ; $6fbf: $56
	inc c                                            ; $6fc0: $0c
	ld d, a                                          ; $6fc1: $57

jr_002_6fc2:
	ld c, b                                          ; $6fc2: $48
	ld d, a                                          ; $6fc3: $57
	adc h                                            ; $6fc4: $8c
	ld d, a                                          ; $6fc5: $57
	ret z                                            ; $6fc6: $c8

	ld d, a                                          ; $6fc7: $57
	inc c                                            ; $6fc8: $0c
	ld e, b                                          ; $6fc9: $58
	ld d, b                                          ; $6fca: $50
	ld e, b                                          ; $6fcb: $58
	ld a, h                                          ; $6fcc: $7c
	ld e, b                                          ; $6fcd: $58
	and b                                            ; $6fce: $a0
	ld e, b                                          ; $6fcf: $58
	call z, $1058                                    ; $6fd0: $cc $58 $10
	ld e, c                                          ; $6fd3: $59
	ld d, h                                          ; $6fd4: $54
	ld e, c                                          ; $6fd5: $59
	sbc b                                            ; $6fd6: $98
	ld e, c                                          ; $6fd7: $59
	rst $38                                          ; $6fd8: $ff
	rst $38                                          ; $6fd9: $ff
	rst $38                                          ; $6fda: $ff
	rst $38                                          ; $6fdb: $ff
	rst $38                                          ; $6fdc: $ff
	rst $38                                          ; $6fdd: $ff
	rst $38                                          ; $6fde: $ff
	rst $38                                          ; $6fdf: $ff
	rst $38                                          ; $6fe0: $ff

jr_002_6fe1:
	rst $38                                          ; $6fe1: $ff
	rst $38                                          ; $6fe2: $ff
	rst $38                                          ; $6fe3: $ff
	rst $38                                          ; $6fe4: $ff
	rst $38                                          ; $6fe5: $ff
	rst $38                                          ; $6fe6: $ff
	rst $38                                          ; $6fe7: $ff
	rst $38                                          ; $6fe8: $ff
	rst $38                                          ; $6fe9: $ff

jr_002_6fea:
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

jr_002_6ffc:
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
	ld b, a                                          ; $7012: $47
	ld b, a                                          ; $7013: $47
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
	rrca                                             ; $702d: $0f
	rst $38                                          ; $702e: $ff
	rst $38                                          ; $702f: $ff
	rst $38                                          ; $7030: $ff
	rst $38                                          ; $7031: $ff
	rst $38                                          ; $7032: $ff
	rst $38                                          ; $7033: $ff
	rst $38                                          ; $7034: $ff
	ld [hl], l                                       ; $7035: $75
	rst $38                                          ; $7036: $ff
	rst $38                                          ; $7037: $ff
	rst $38                                          ; $7038: $ff
	rst $38                                          ; $7039: $ff
	add b                                            ; $703a: $80
	add c                                            ; $703b: $81
	rst $38                                          ; $703c: $ff
	rst $38                                          ; $703d: $ff
	ld l, h                                          ; $703e: $6c
	ld l, h                                          ; $703f: $6c
	ld l, h                                          ; $7040: $6c
	ld l, h                                          ; $7041: $6c
	rst $38                                          ; $7042: $ff
	rst $38                                          ; $7043: $ff
	rst $38                                          ; $7044: $ff
	ld e, a                                          ; $7045: $5f
	ld e, a                                          ; $7046: $5f
	ld e, a                                          ; $7047: $5f
	ld e, d                                          ; $7048: $5a
	ld e, d                                          ; $7049: $5a
	ld e, d                                          ; $704a: $5a
	ld d, h                                          ; $704b: $54
	ld d, h                                          ; $704c: $54
	ld d, h                                          ; $704d: $54
	rst $38                                          ; $704e: $ff
	rst $38                                          ; $704f: $ff
	rst $38                                          ; $7050: $ff
	ld c, [hl]                                       ; $7051: $4e
	rst $38                                          ; $7052: $ff
	inc sp                                           ; $7053: $33
	rst $38                                          ; $7054: $ff
	ld sp, rIE                                     ; $7055: $31 $ff $ff
	ld [hl-], a                                      ; $7058: $32
	ld [hl-], a                                      ; $7059: $32
	rst $38                                          ; $705a: $ff

Call_002_705b:
	ld [hl-], a                                      ; $705b: $32
	ld [hl-], a                                      ; $705c: $32
	rst $38                                          ; $705d: $ff
	ld [hl-], a                                      ; $705e: $32
	ld [hl-], a                                      ; $705f: $32
	ld [hl-], a                                      ; $7060: $32
	ld b, c                                          ; $7061: $41
	ld b, c                                          ; $7062: $41
	rst $38                                          ; $7063: $ff
	ld b, c                                          ; $7064: $41
	ld b, c                                          ; $7065: $41
	ld b, c                                          ; $7066: $41
	ld b, c                                          ; $7067: $41
	ld b, c                                          ; $7068: $41
	inc [hl]                                         ; $7069: $34
	dec l                                            ; $706a: $2d
	jr z, jr_002_7095                                ; $706b: $28 $28

	ld hl, $2a21                                     ; $706d: $21 $21 $2a
	ld a, [hl+]                                      ; $7070: $2a
	ld a, [hl+]                                      ; $7071: $2a
	add hl, de                                       ; $7072: $19
	add hl, de                                       ; $7073: $19
	add hl, de                                       ; $7074: $19
	add hl, de                                       ; $7075: $19
	add hl, de                                       ; $7076: $19
	jr c, jr_002_7095                                ; $7077: $38 $1c

	rst $38                                          ; $7079: $ff
	add hl, hl                                       ; $707a: $29
	ld l, $3e                                        ; $707b: $2e $3e
	ld a, $3a                                        ; $707d: $3e $3a
	ld a, [hl-]                                      ; $707f: $3a
	add hl, sp                                       ; $7080: $39
	add hl, sp                                       ; $7081: $39
	ld b, e                                          ; $7082: $43
	ld b, e                                          ; $7083: $43
	inc a                                            ; $7084: $3c
	inc a                                            ; $7085: $3c
	ccf                                              ; $7086: $3f
	ccf                                              ; $7087: $3f
	ccf                                              ; $7088: $3f
	ld [hl], $36                                     ; $7089: $36 $36
	dec a                                            ; $708b: $3d
	dec a                                            ; $708c: $3d
	dec [hl]                                         ; $708d: $35
	dec [hl]                                         ; $708e: $35
	dec sp                                           ; $708f: $3b
	dec de                                           ; $7090: $1b
	scf                                              ; $7091: $37
	jr nc, jr_002_70c4                               ; $7092: $30 $30

	ld a, [de]                                       ; $7094: $1a

jr_002_7095:
	ld a, [de]                                       ; $7095: $1a
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
	ld d, b                                          ; $70a2: $50
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

jr_002_70c4:
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
	ld h, a                                          ; $70f5: $67
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
	ld c, $0e                                        ; $7106: $0e $0e
