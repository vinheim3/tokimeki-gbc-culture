; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $000", ROM0[$0]

; A - table idx
; Table after rst call
JumpTable::
	jp _JumpTable                                                   ; $0000


SECTION "r08", ROM0[$8]

GetHLinHL::
	ld a, [hl+]                                                     ; $0008
	ld h, [hl]                                                      ; $0009
	ld l, a                                                         ; $000a
	ret                                                             ; $000b


SECTION "r10", ROM0[$10]

SubAFromHL::
	cpl                                                             ; $0010
	inc a                                                           ; $0011
	ret z                                                           ; $0012

	add l                                                           ; $0013
	ld l, a                                                         ; $0014
	ret c                                                           ; $0015

	dec h                                                           ; $0016
	ret                                                             ; $0017


SubAFromDE::
	cpl                                                             ; $0018
	inc a                                                           ; $0019
	ret z                                                           ; $001a

	add e                                                           ; $001b
	ld e, a                                                         ; $001c
	ret c                                                           ; $001d

	dec d                                                           ; $001e
	ret                                                             ; $001f


SubAFromBC::
	cpl                                                             ; $0020
	inc a                                                           ; $0021
	ret z                                                           ; $0022

	add c                                                           ; $0023
	ld c, a                                                         ; $0024
	ret c                                                           ; $0025

	dec b                                                           ; $0026
	ret                                                             ; $0027


AddAOntoHL::
	add l                                                           ; $0028
	ld l, a                                                         ; $0029
	ret nc                                                          ; $002a

	inc h                                                           ; $002b
	ret                                                             ; $002c


SECTION "r30", ROM0[$30]

; Addr, then bank after rst call
FarCall::
	jp _FarCall                                                     ; $0030


SECTION "VBlank Interrupt", ROM0[$40]

VBlankInterrupt::
	jr VBlankInterruptHandler                                       ; $0040


SECTION "LCDC Interrupt", ROM0[$48]

LCDCInterrupt::
	jr LCDCInterruptHandler                                         ; $0048


SECTION "Timer Interrupt", ROM0[$50]

TimerOverflowInterrupt::
	jr TimerInterruptHandler                                        ; $0050


SECTION "Serial Interrupt", ROM0[$58]

SerialTransferCompleteInterrupt::
	jp SerialInterruptHandler                                       ; $0058


SECTION "Joypad Interrupt", ROM0[$60]

JoypadTransitionInterrupt::
	reti                                                            ; $0060


SECTION "VBlank Interrupt Handler", ROM0[$68]

VBlankInterruptHandler:
	push af                                                         ; $0068
	push bc                                                         ; $0069
	push de                                                         ; $006a
	push hl                                                         ; $006b
	call _VBlankInterruptHandler                                    ; $006c
	pop hl                                                          ; $006f
	pop de                                                          ; $0070
	pop bc                                                          ; $0071
	pop af                                                          ; $0072
	reti                                                            ; $0073


LCDCInterruptHandler:
	push af                                                         ; $0074
	push hl                                                         ; $0075

; Push address to return to
	ld hl, .return                                                  ; $0076
	push hl                                                         ; $0079

; LCDC int func is double-idxed into table to get HL
	ldh a, [hLCDCIntHandlerIdx]                                     ; $007a
	ld hl, LCDCIntHandlers                                          ; $007c
	add a                                                           ; $007f
	add l                                                           ; $0080
	ld l, a                                                         ; $0081
	jr nc, :+                                                       ; $0082
	inc h                                                           ; $0084

; Jump to table entry address
:	ld a, [hl+]                                                     ; $0085
	ld h, [hl]                                                      ; $0086
	ld l, a                                                         ; $0087
	jp hl                                                           ; $0088

.return:
	pop hl                                                          ; $0089
	pop af                                                          ; $008a
	ei                                                              ; $008b
	ret                                                             ; $008c


;
	ld hl, rSTAT                                     ; $008d: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $0090: $cb $4e
	jr nz, :-                               ; $0092: $20 $fc

	ret                                              ; $0094: $c9


; Wait until in hblank/vblank
:	ldh a, [rSTAT]                                   ; $0095: $f0 $41
	bit 1, a                                         ; $0097: $cb $4f
	jr nz, :-                               ; $0099: $20 $fa

	ret                                              ; $009b: $c9


TimerInterruptHandler:
	push hl                                          ; $009c: $e5
	push de                                          ; $009d: $d5
	push bc                                          ; $009e: $c5
	push af                                          ; $009f: $f5

;
	ld hl, $c106                                     ; $00a0: $21 $06 $c1
	ld a, [hl]                                       ; $00a3: $7e
	and $03                                          ; $00a4: $e6 $03
	jr nz, .end                               ; $00a6: $20 $17

;
	set 0, [hl]                                      ; $00a8: $cb $c6
	ei                                               ; $00aa: $fb

; Call actual handler, preserving rom bank
	ld a, [wRomBank]                                                ; $00ab
	push af                                                         ; $00ae
	call _TimerInterruptHandler                                     ; $00af
	pop af                                                          ; $00b2
	ld [wRomBank], a                                                ; $00b3
	ld [rROMB0], a                                                  ; $00b6

;
	ld hl, $c106                                     ; $00b9: $21 $06 $c1
	di                                               ; $00bc: $f3
	res 0, [hl]                                      ; $00bd: $cb $86

.end:
	pop af                                                          ; $00bf
	pop bc                                                          ; $00c0
	pop de                                                          ; $00c1
	pop hl                                                          ; $00c2
	reti                                                            ; $00c3


SECTION "Boot", ROM0[$100]

Boot::
	nop                                                             ; $0100
	jp Begin                                                        ; $0101


	ds $150-@, 0

Begin:
; Store initial A reg for GBC/GBA check, then clear interrupt regs
	di                                                              ; $0150
	ld [wInitialA], a                                               ; $0151

	xor a                                                           ; $0154
	ldh [rIF], a                                                    ; $0155
	ldh [rIE], a                                                    ; $0157

; Set SP, then apply double speed for GBC
	ld sp, wStackTop                                                ; $0159
	call ApplyDoubleSpeedMode                                       ; $015c

;
	xor a                                            ; $015f: $af
	ld [wButtonsPressed], a                                    ; $0160: $ea $25 $c1
	call Call_000_291f                               ; $0163: $cd $1f $29
	ld a, $0c                                        ; $0166: $3e $0c
	ldh [hDisp0_BGP], a                                     ; $0168: $e0 $85
	ldh [rBGP], a                                    ; $016a: $e0 $47
	call EnableAndClearSramBank                               ; $016c: $cd $7a $08
	call ClearWramAndHram                               ; $016f: $cd $15 $02

Reset:
	di                                               ; $0172: $f3
	ld sp, wStackTop                                     ; $0173: $31 $c0 $c0
	xor a                                            ; $0176: $af
	ldh [rIF], a                                     ; $0177: $e0 $0f
	ldh [rIE], a                                     ; $0179: $e0 $ff
	ldh [$9f], a                                     ; $017b: $e0 $9f
	ld [$c106], a                                    ; $017d: $ea $06 $c1

;
	ld a, BANK(LoadSelfModifiableCode)                                        ; $0180: $3e $02
	call SetRomBankA                               ; $0182: $cd $97 $07
	call LoadSelfModifiableCode                                       ; $0185: $cd $00 $40

;
	ld a, $05                                        ; $0188: $3e $05
	call SetRomBankA                               ; $018a: $cd $97 $07
	call $697c                                       ; $018d: $cd $7c $69

; Jump if LCD off
	di                                               ; $0190: $f3
	ldh a, [rLCDC]                                   ; $0191: $f0 $40
	rlca                                             ; $0193: $07
	jr nc, .cont_01a0                               ; $0194: $30 $0a

; Wait until in vblank
:	ldh a, [rLY]                                     ; $0196: $f0 $44
	cp $91                                           ; $0198: $fe $91
	jr c, :-                                ; $019a: $38 $fa

	ld a, LCDCF_ON|LCDCF_BG8000|LCDCF_BGON                                       ; $019c: $3e $91
	ldh [hDisp0_LCDC], a                                     ; $019e: $e0 $82

.cont_01a0:
	ld a, $00                                        ; $01a0: $3e $00
	call SetRomBankA                               ; $01a2: $cd $97 $07
	call todo_Clears40hBytesAtWramBank0Pages2Plus                               ; $01a5: $cd $ef $2d

; Jump if not GBC/GBA
	ld a, [wInitialA]                                    ; $01a8: $fa $00 $c1
	cp $11                                           ; $01ab: $fe $11
	jr nz, .cont_01bb                               ; $01ad: $20 $0c

	call Call_000_1871                               ; $01af: $cd $71 $18
	call Call_000_1973                               ; $01b2: $cd $73 $19
	ld bc, $6682                                     ; $01b5: $01 $82 $66
	call Call_000_18c4                               ; $01b8: $cd $c4 $18

.cont_01bb:
	ld a, $07                                        ; $01bb: $3e $07
	call SetRomBankA                               ; $01bd: $cd $97 $07
	call $5f97                                       ; $01c0: $cd $97 $5f
	ld a, $07                                        ; $01c3: $3e $07
	call SetRomBankA                               ; $01c5: $cd $97 $07
	call $5ff0                                       ; $01c8: $cd $f0 $5f
	call Call_000_0963                               ; $01cb: $cd $63 $09
	ld a, $02                                        ; $01ce: $3e $02
	call SetRomBankA                               ; $01d0: $cd $97 $07
	ld hl, $4277                                     ; $01d3: $21 $77 $42
	call $425d                                       ; $01d6: $cd $5d $42
	call Call_000_069e                               ; $01d9: $cd $9e $06
	ld a, $02                                        ; $01dc: $3e $02
	call SetRomBankA                               ; $01de: $cd $97 $07
	call $42ce                                       ; $01e1: $cd $ce $42
	rst FarCall                                          ; $01e4: $f7
	ld b, $63                                        ; $01e5: $06 $63
	dec b                                            ; $01e7: $05
	xor a                                            ; $01e8: $af
	ldh [$80], a                                     ; $01e9: $e0 $80
	di                                               ; $01eb: $f3
	ldh a, [hDisp0_LCDC]                                     ; $01ec: $f0 $82
	ldh [rLCDC], a                                   ; $01ee: $e0 $40
	ld a, $01                                        ; $01f0: $3e $01
	ldh [rIE], a                                     ; $01f2: $e0 $ff

; Stay in an infinite loop, updating its counter
	ei                                                              ; $01f4
	ld hl, wMainLoopCounter                                         ; $01f5
:	inc [hl]                                                        ; $01f8
	jr :-                                                           ; $01f9


ApplyDoubleSpeedMode:
; Return if not GBC/GBA
	ld a, [wInitialA]                                               ; $01fb
	cp $11                                                          ; $01fe
	ret nz                                                          ; $0200

; Return if already double-speed mode
	ld hl, rKEY1                                                    ; $0201
	bit 7, [hl]                                                     ; $0204
	ret nz                                                          ; $0206

; Set double speed mode
	set 0, [hl]                                                     ; $0207
	xor a                                                           ; $0209
	ldh [rIF], a                                                    ; $020a
	ldh [rIE], a                                                    ; $020c
	ld a, $30                                                       ; $020e
	ldh [rP1], a                                                    ; $0210
	stop                                                            ; $0212
	ret                                                             ; $0214


ClearWramAndHram:
;
	ld hl, $c101                                     ; $0215: $21 $01 $c1
	ld bc, $1eff                                     ; $0218: $01 $ff $1e
	call MemClear                               ; $021b: $cd $47 $02

;
	ld hl, _HRAM                                     ; $021e: $21 $80 $ff
	ld bc, $007e                                     ; $0221: $01 $7e $00
	call MemClear                               ; $0224: $cd $47 $02

; Return if not GBC/GBA
	ld a, [wInitialA]                                               ; $0227
	cp $11                                                          ; $022a
	ret nz                                                          ; $022c

; Loop through wram banks from 2
	ld a, $02                                                       ; $022d

.nextWramBank:
; Clear all bytes in switchable ram bank
	push af                                                         ; $022f
	call SetWramBankA                                               ; $0230
	ld hl, $d000                                                    ; $0233
	ld bc, $1000                                                    ; $0236
	call MemClear                                                   ; $0239
	pop af                                                          ; $023c

; Go to next ram bank, stopping after 7
	inc a                                                           ; $023d
	cp $08                                                          ; $023e
	jr nz, .nextWramBank                                            ; $0240

; Set default of wram bank 1
	ld a, $01                                                       ; $0242
	jp SetWramBankA                                                 ; $0244


; BC - num bytes
; HL - dest addr
MemClear:
:	xor a                                                           ; $0247
	ld [hl+], a                                                     ; $0248

	dec bc                                                          ; $0249
	ld a, b                                                         ; $024a
	or c                                                            ; $024b
	jr nz, :-                                                       ; $024c

	ret                                                             ; $024e


LCDCIntHandlers:
	dw LCDCIntHandler00_Nop
	dw $029c
	dw $02d1
	dw $02e2
	dw $0313
	dw $0350
	dw $0382
	dw $037c
	dw $03ad
	dw $03c3
	dw $038e
	dw $039c
	dw $03d3
	dw $0406
	dw $042d
	dw $0444
	dw $0463
	dw $049a
	dw $04c5
	dw $04e7
	dw $04f9
	dw $0505
	dw $051c
	dw $0527
	dw $0536
	dw $0550
	dw $0566
	dw $05b3
	dw $05f2
	dw $0609
	dw $0626
	dw $0635
	dw $0642
	dw $064e
	dw $065b
	dw $0675
	dw $0686


LCDCIntHandler00_Nop:
	pop hl                                        ; $0299: $e1
	pop af                                           ; $029a: $f1
	reti                                             ; $029b: $d9


	ld a, $90                                        ; $029c: $3e $90
	ld hl, $4239                                     ; $029e: $21 $39 $42
	call Call_000_02ad                               ; $02a1: $cd $ad $02
	ld a, $38                                        ; $02a4: $3e $38
	ldh [rLYC], a                                    ; $02a6: $e0 $45
	ld a, $02                                        ; $02a8: $3e $02
	ldh [hLCDCIntHandlerIdx], a                                     ; $02aa: $e0 $81
	ret                                              ; $02ac: $c9


Call_000_02ad:
	push bc                                          ; $02ad: $c5
	push de                                          ; $02ae: $d5
	push hl                                          ; $02af: $e5
	ld hl, rSTAT                                     ; $02b0: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $02b3: $cb $4e
	jr nz, :-                               ; $02b5: $20 $fc

	ldh [rBCPS], a                                   ; $02b7: $e0 $68
	pop hl                                           ; $02b9: $e1
	ld a, [wWramBank]                                    ; $02ba: $fa $04 $c1
	ld d, a                                          ; $02bd: $57
	ld a, $02                                        ; $02be: $3e $02
	ld [wWramBank], a                                    ; $02c0: $ea $04 $c1
	ldh [rSVBK], a                                   ; $02c3: $e0 $70
	jp $dd4e                                         ; $02c5: $c3 $4e $dd


	ld a, d                                          ; $02c8: $7a
	ld [wWramBank], a                                    ; $02c9: $ea $04 $c1
	ldh [rSVBK], a                                   ; $02cc: $e0 $70
	pop de                                           ; $02ce: $d1
	pop bc                                           ; $02cf: $c1
	ret                                              ; $02d0: $c9


	ld a, $90                                        ; $02d1: $3e $90
	ld hl, $d510                                     ; $02d3: $21 $10 $d5
	call Call_000_02ad                               ; $02d6: $cd $ad $02
	ld a, $3f                                        ; $02d9: $3e $3f
	ldh [rLYC], a                                    ; $02db: $e0 $45
	ld a, $03                                        ; $02dd: $3e $03
	ldh [hLCDCIntHandlerIdx], a                                     ; $02df: $e0 $81
	ret                                              ; $02e1: $c9


	ld hl, rSTAT                                     ; $02e2: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $02e5: $cb $4e
	jr nz, :-                               ; $02e7: $20 $fc

	ldh a, [$9a]                                     ; $02e9: $f0 $9a
	ldh [rLCDC], a                                   ; $02eb: $e0 $40
	ld a, [wInitialA]                                    ; $02ed: $fa $00 $c1
	cp $11                                           ; $02f0: $fe $11
	jr nz, jr_000_0309                               ; $02f2: $20 $15

	ldh a, [$97]                                     ; $02f4: $f0 $97
	and a                                            ; $02f6: $a7
	jr z, jr_000_0309                                ; $02f7: $28 $10

	ld a, $80                                        ; $02f9: $3e $80
	ld hl, $4218                                     ; $02fb: $21 $18 $42
	call Call_000_02ad                               ; $02fe: $cd $ad $02
	ld a, [$c10e]                                    ; $0301: $fa $0e $c1
	or $03                                           ; $0304: $f6 $03
	ld [$c10e], a                                    ; $0306: $ea $0e $c1

jr_000_0309:
	ldh a, [$98]                                     ; $0309: $f0 $98
	dec a                                            ; $030b: $3d
	ldh [rLYC], a                                    ; $030c: $e0 $45
	ld a, $04                                        ; $030e: $3e $04
	ldh [hLCDCIntHandlerIdx], a                                     ; $0310: $e0 $81
	ret                                              ; $0312: $c9


	ld hl, rSTAT                                     ; $0313: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $0316: $cb $4e
	jr nz, :-                               ; $0318: $20 $fc

	ld hl, $ff98                                     ; $031a: $21 $98 $ff
	ld a, $b8                                        ; $031d: $3e $b8
	sub [hl]                                         ; $031f: $96
	ldh [rSCY], a                                    ; $0320: $e0 $42
	xor a                                            ; $0322: $af
	ldh [rSCX], a                                    ; $0323: $e0 $43
	ldh a, [$9c]                                     ; $0325: $f0 $9c
	ldh [rBGP], a                                    ; $0327: $e0 $47
	ld a, [$c186]                                    ; $0329: $fa $86 $c1
	cp $00                                           ; $032c: $fe $00
	ldh a, [hDisp1_LCDC]                                     ; $032e: $f0 $8f
	set 3, a                                         ; $0330: $cb $df
	res 4, a                                         ; $0332: $cb $a7
	jr z, jr_000_033a                                ; $0334: $28 $04

	res 1, a                                         ; $0336: $cb $8f
	set 4, a                                         ; $0338: $cb $e7

jr_000_033a:
	ldh [rLCDC], a                                   ; $033a: $e0 $40
	ldh a, [$98]                                     ; $033c: $f0 $98
	cp $7f                                           ; $033e: $fe $7f
	jr nc, jr_000_0378                               ; $0340: $30 $36

	cp $58                                           ; $0342: $fe $58
	jr nc, jr_000_035f                               ; $0344: $30 $19

	ld a, $27                                        ; $0346: $3e $27
	add [hl]                                         ; $0348: $86
	ldh [rLYC], a                                    ; $0349: $e0 $45
	ld a, $05                                        ; $034b: $3e $05
	ldh [hLCDCIntHandlerIdx], a                                     ; $034d: $e0 $81
	ret                                              ; $034f: $c9


	ld hl, rSTAT                                     ; $0350: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $0353: $cb $4e
	jr nz, :-                               ; $0355: $20 $fc

	ldh a, [hDisp1_LCDC]                                     ; $0357: $f0 $8f
	or $08                                           ; $0359: $f6 $08
	and $ed                                          ; $035b: $e6 $ed
	ldh [rLCDC], a                                   ; $035d: $e0 $40

jr_000_035f:
	ld a, [wInitialA]                                    ; $035f: $fa $00 $c1
	cp $11                                           ; $0362: $fe $11
	jr nz, jr_000_036f                               ; $0364: $20 $09

	ld a, $7f                                        ; $0366: $3e $7f

jr_000_0368:
	ldh [rLYC], a                                    ; $0368: $e0 $45
	ld a, $06                                        ; $036a: $3e $06
	ldh [hLCDCIntHandlerIdx], a                                     ; $036c: $e0 $81
	ret                                              ; $036e: $c9


jr_000_036f:
	ld a, $7e                                        ; $036f: $3e $7e
	ldh [rLYC], a                                    ; $0371: $e0 $45
	ld a, $07                                        ; $0373: $3e $07
	ldh [hLCDCIntHandlerIdx], a                                     ; $0375: $e0 $81
	ret                                              ; $0377: $c9


jr_000_0378:
	ld a, $87                                        ; $0378: $3e $87
	jr jr_000_0368                                   ; $037a: $18 $ec

jr_000_037c:
	ldh a, [rLY]                                     ; $037c: $f0 $44
	cp $7f                                           ; $037e: $fe $7f
	jr c, jr_000_037c                                ; $0380: $38 $fa

	ld hl, rSTAT                                     ; $0382: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $0385: $cb $4e
	jr nz, :-                               ; $0387: $20 $fc

	ld a, $70                                        ; $0389: $3e $70
	ldh [rSCY], a                                    ; $038b: $e0 $42
	ret                                              ; $038d: $c9


	ld a, $98                                        ; $038e: $3e $98
	call Call_000_039d                               ; $0390: $cd $9d $03
	ld a, $80                                        ; $0393: $3e $80
	ldh [rLYC], a                                    ; $0395: $e0 $45
	ld a, $0b                                        ; $0397: $3e $0b
	ldh [hLCDCIntHandlerIdx], a                                     ; $0399: $e0 $81
	ret                                              ; $039b: $c9


	xor a                                            ; $039c: $af

Call_000_039d:
	ld hl, rSTAT                                     ; $039d: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $03a0: $cb $4e
	jr nz, :-                               ; $03a2: $20 $fc

	ldh [rSCY], a                                    ; $03a4: $e0 $42
	ldh a, [rLCDC]                                   ; $03a6: $f0 $40
	xor $18                                          ; $03a8: $ee $18
	ldh [rLCDC], a                                   ; $03aa: $e0 $40
	ret                                              ; $03ac: $c9


	ld hl, rSTAT                                     ; $03ad: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $03b0: $cb $4e
	jr nz, :-                               ; $03b2: $20 $fc

	ldh a, [hDisp1_LCDC]                                     ; $03b4: $f0 $8f
	and $e1                                          ; $03b6: $e6 $e1
	ldh [rLCDC], a                                   ; $03b8: $e0 $40
	ld a, $5f                                        ; $03ba: $3e $5f
	ldh [rLYC], a                                    ; $03bc: $e0 $45
	ld a, $09                                        ; $03be: $3e $09
	ldh [hLCDCIntHandlerIdx], a                                     ; $03c0: $e0 $81
	ret                                              ; $03c2: $c9


	ld hl, rSTAT                                     ; $03c3: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $03c6: $cb $4e
	jr nz, :-                               ; $03c8: $20 $fc

	ldh a, [hDisp1_LCDC]                                     ; $03ca: $f0 $8f
	or $10                                           ; $03cc: $f6 $10
	and $b1                                          ; $03ce: $e6 $b1
	ldh [rLCDC], a                                   ; $03d0: $e0 $40
	ret                                              ; $03d2: $c9


	ld hl, $ff44                                     ; $03d3: $21 $44 $ff
	ldh a, [rLYC]                                    ; $03d6: $f0 $45

jr_000_03d8:
	cp [hl]                                          ; $03d8: $be
	jr nc, jr_000_03d8                               ; $03d9: $30 $fd

	ld hl, rSTAT                                     ; $03db: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $03de: $cb $4e
	jr nz, :-                               ; $03e0: $20 $fc

	ld hl, $ff40                                     ; $03e2: $21 $40 $ff
	ldh a, [rLYC]                                    ; $03e5: $f0 $45
	cp $16                                           ; $03e7: $fe $16
	jr z, jr_000_03f9                                ; $03e9: $28 $0e

	cp $56                                           ; $03eb: $fe $56
	jr z, jr_000_03f2                                ; $03ed: $28 $03

	res 3, [hl]                                      ; $03ef: $cb $9e
	ret                                              ; $03f1: $c9


jr_000_03f2:
	set 4, [hl]                                      ; $03f2: $cb $e6
	ld a, $76                                        ; $03f4: $3e $76
	ldh [rLYC], a                                    ; $03f6: $e0 $45
	ret                                              ; $03f8: $c9


jr_000_03f9:
	ld a, [$c15e]                                    ; $03f9: $fa $5e $c1
	or a                                             ; $03fc: $b7
	jr z, jr_000_0401                                ; $03fd: $28 $02

	set 3, [hl]                                      ; $03ff: $cb $de

jr_000_0401:
	ld a, $56                                        ; $0401: $3e $56
	ldh [rLYC], a                                    ; $0403: $e0 $45
	ret                                              ; $0405: $c9


	ld hl, $ff44                                     ; $0406: $21 $44 $ff
	ld a, [$c154]                                    ; $0409: $fa $54 $c1
	dec a                                            ; $040c: $3d
	dec a                                            ; $040d: $3d

jr_000_040e:
	cp [hl]                                          ; $040e: $be
	jr nc, jr_000_040e                               ; $040f: $30 $fd

	ld hl, rSTAT                                     ; $0411: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $0414: $cb $4e
	jr nz, :-                               ; $0416: $20 $fc

	ldh a, [hDisp1_LCDC]                                     ; $0418: $f0 $8f
	ldh [rLCDC], a                                   ; $041a: $e0 $40
	ldh a, [hDisp1_SCX]                                     ; $041c: $f0 $91
	ldh [rSCX], a                                    ; $041e: $e0 $43
	ldh a, [hDisp1_SCY]                                     ; $0420: $f0 $90
	ldh [rSCY], a                                    ; $0422: $e0 $42
	ld a, $5e                                        ; $0424: $3e $5e
	ldh [rLYC], a                                    ; $0426: $e0 $45
	ld a, $0e                                        ; $0428: $3e $0e
	ldh [hLCDCIntHandlerIdx], a                                     ; $042a: $e0 $81
	ret                                              ; $042c: $c9


jr_000_042d:
	ldh a, [rLY]                                     ; $042d: $f0 $44
	cp $5f                                           ; $042f: $fe $5f
	jr c, jr_000_042d                                ; $0431: $38 $fa

	ld hl, rSTAT                                     ; $0433: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $0436: $cb $4e
	jr nz, :-                               ; $0438: $20 $fc

	ld a, $e5                                        ; $043a: $3e $e5
	ldh [rLCDC], a                                   ; $043c: $e0 $40
	xor a                                            ; $043e: $af
	ldh [rSCX], a                                    ; $043f: $e0 $43
	ldh [rSCY], a                                    ; $0441: $e0 $42
	ret                                              ; $0443: $c9


jr_000_0444:
	ldh a, [rLY]                                     ; $0444: $f0 $44
	cp $2f                                           ; $0446: $fe $2f
	jr c, jr_000_0444                                ; $0448: $38 $fa

	ld hl, rSTAT                                     ; $044a: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $044d: $cb $4e
	jr nz, :-                               ; $044f: $20 $fc

	ld a, [$c153]                                    ; $0451: $fa $53 $c1
	ldh [rSCX], a                                    ; $0454: $e0 $43
	ld a, $98                                        ; $0456: $3e $98
	ldh [rSCY], a                                    ; $0458: $e0 $42
	ld a, $5e                                        ; $045a: $3e $5e
	ldh [rLYC], a                                    ; $045c: $e0 $45
	ld a, $0e                                        ; $045e: $3e $0e
	ldh [hLCDCIntHandlerIdx], a                                     ; $0460: $e0 $81
	ret                                              ; $0462: $c9


	ld hl, rSTAT                                     ; $0463: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $0466: $cb $4e
	jr nz, :-                               ; $0468: $20 $fc

	ld hl, $c15c                                     ; $046a: $21 $5c $c1
	inc [hl]                                         ; $046d: $34
	ld a, [hl+]                                      ; $046e: $2a
	push bc                                          ; $046f: $c5
	ld b, [hl]                                       ; $0470: $46
	srl b                                            ; $0471: $cb $38
	srl b                                            ; $0473: $cb $38
	add b                                            ; $0475: $80
	and $0f                                          ; $0476: $e6 $0f
	ld hl, $048a                                     ; $0478: $21 $8a $04
	rst AddAOntoHL                                          ; $047b: $ef
	ld a, [hl]                                       ; $047c: $7e
	ldh [rSCX], a                                    ; $047d: $e0 $43
	pop bc                                           ; $047f: $c1
	ldh a, [rLY]                                     ; $0480: $f0 $44
	add $08                                          ; $0482: $c6 $08
	ld l, a                                          ; $0484: $6f
	ld h, $10                                        ; $0485: $26 $10
	jp Jump_000_0543                                 ; $0487: $c3 $43 $05


	nop                                              ; $048a: $00
	nop                                              ; $048b: $00
	ld bc, $0201                                     ; $048c: $01 $01 $02
	ld bc, $0001                                     ; $048f: $01 $01 $00
	nop                                              ; $0492: $00
	nop                                              ; $0493: $00
	rst $38                                          ; $0494: $ff
	rst $38                                          ; $0495: $ff
	cp $ff                                           ; $0496: $fe $ff
	rst $38                                          ; $0498: $ff
	nop                                              ; $0499: $00
	push bc                                          ; $049a: $c5
	push de                                          ; $049b: $d5
	ld hl, rSTAT                                     ; $049c: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $049f: $cb $4e
	jr nz, :-                               ; $04a1: $20 $fc

	ld hl, $c331                                     ; $04a3: $21 $31 $c3
	ld a, [hl]                                       ; $04a6: $7e
	ldh [rSCX], a                                    ; $04a7: $e0 $43
	ld a, [hl+]                                      ; $04a9: $2a
	ld e, a                                          ; $04aa: $5f
	ld d, [hl]                                       ; $04ab: $56
	ld bc, $0040                                     ; $04ac: $01 $40 $00
	call wCpBCtoDE                                       ; $04af: $cd $8c $ce
	jr nc, jr_000_04be                               ; $04b2: $30 $0a

	ld bc, $0840                                     ; $04b4: $01 $40 $08
	call wCpBCtoDE                                       ; $04b7: $cd $8c $ce
	jr c, jr_000_04be                                ; $04ba: $38 $02

	jr jr_000_04c2                                   ; $04bc: $18 $04

jr_000_04be:
	ld a, $60                                        ; $04be: $3e $60
	ldh [rSCY], a                                    ; $04c0: $e0 $42

jr_000_04c2:
	pop de                                           ; $04c2: $d1
	pop bc                                           ; $04c3: $c1
	ret                                              ; $04c4: $c9


	ld hl, rSTAT                                     ; $04c5: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $04c8: $cb $4e
	jr nz, :-                               ; $04ca: $20 $fc

	ld a, [$c153]                                    ; $04cc: $fa $53 $c1
	bit 1, a                                         ; $04cf: $cb $4f
	jr z, jr_000_04d8                                ; $04d1: $28 $05

	ld hl, $ff40                                     ; $04d3: $21 $40 $ff
	set 3, [hl]                                      ; $04d6: $cb $de

jr_000_04d8:
	ld a, [$c155]                                    ; $04d8: $fa $55 $c1
	ldh [rSCX], a                                    ; $04db: $e0 $43
	ld a, [$c156]                                    ; $04dd: $fa $56 $c1
	ldh [rSCY], a                                    ; $04e0: $e0 $42
	ld hl, $136f                                     ; $04e2: $21 $6f $13
	jr jr_000_0543                                   ; $04e5: $18 $5c

	ld hl, rSTAT                                     ; $04e7: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $04ea: $cb $4e
	jr nz, :-                               ; $04ec: $20 $fc

	ld hl, $ff40                                     ; $04ee: $21 $40 $ff
	res 3, [hl]                                      ; $04f1: $cb $9e
	xor a                                            ; $04f3: $af
	ldh [rSCX], a                                    ; $04f4: $e0 $43
	ldh [rSCY], a                                    ; $04f6: $e0 $42
	ret                                              ; $04f8: $c9


	ld hl, rSTAT                                     ; $04f9: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $04fc: $cb $4e
	jr nz, :-                               ; $04fe: $20 $fc

	xor a                                            ; $0500: $af
	ldh [rSCX], a                                    ; $0501: $e0 $43
	jr jr_000_054a                                   ; $0503: $18 $45

	ld hl, rSTAT                                     ; $0505: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $0508: $cb $4e
	jr nz, :-                               ; $050a: $20 $fc

	ld a, [$c154]                                    ; $050c: $fa $54 $c1
	sla a                                            ; $050f: $cb $27
	sla a                                            ; $0511: $cb $27
	sla a                                            ; $0513: $cb $27
	ldh [rSCX], a                                    ; $0515: $e0 $43
	ld hl, $1677                                     ; $0517: $21 $77 $16
	jr jr_000_0543                                   ; $051a: $18 $27

	ld hl, rSTAT                                     ; $051c: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $051f: $cb $4e
	jr nz, :-                               ; $0521: $20 $fc

	xor a                                            ; $0523: $af
	ldh [rSCX], a                                    ; $0524: $e0 $43
	ret                                              ; $0526: $c9


	ld hl, rSTAT                                     ; $0527: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $052a: $cb $4e
	jr nz, :-                               ; $052c: $20 $fc

	call Call_000_054a                               ; $052e: $cd $4a $05
	ld hl, $1823                                     ; $0531: $21 $23 $18
	jr jr_000_0543                                   ; $0534: $18 $0d

	ld hl, rSTAT                                     ; $0536: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $0539: $cb $4e
	jr nz, :-                               ; $053b: $20 $fc

	ld hl, $ff40                                     ; $053d: $21 $40 $ff
	res 1, [hl]                                      ; $0540: $cb $8e
	ret                                              ; $0542: $c9


Jump_000_0543:
jr_000_0543:
	ld a, h                                          ; $0543: $7c
	ldh [hLCDCIntHandlerIdx], a                                     ; $0544: $e0 $81
	ld a, l                                          ; $0546: $7d
	ldh [rLYC], a                                    ; $0547: $e0 $45
	ret                                              ; $0549: $c9


Call_000_054a:
jr_000_054a:
	ld hl, $ff40                                     ; $054a: $21 $40 $ff
	set 1, [hl]                                      ; $054d: $cb $ce
	ret                                              ; $054f: $c9


	ld hl, rSTAT                                     ; $0550: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $0553: $cb $4e
	jr nz, :-                               ; $0555: $20 $fc

	ld hl, $ff40                                     ; $0557: $21 $40 $ff
	res 4, [hl]                                      ; $055a: $cb $a6
	ld a, [$c17b]                                    ; $055c: $fa $7b $c1
	ldh [rLYC], a                                    ; $055f: $e0 $45
	ld a, $20                                        ; $0561: $3e $20
	ldh [hLCDCIntHandlerIdx], a                                     ; $0563: $e0 $81
	ret                                              ; $0565: $c9


	ld hl, rSTAT                                     ; $0566: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $0569: $cb $4e
	jr nz, :-                               ; $056b: $20 $fc

	push bc                                          ; $056d: $c5
	ld hl, $ff40                                     ; $056e: $21 $40 $ff
	ld a, [$c17b]                                    ; $0571: $fa $7b $c1
	ld c, a                                          ; $0574: $4f
	ld a, [$c178]                                    ; $0575: $fa $78 $c1
	cp $40                                           ; $0578: $fe $40
	jr c, jr_000_0592                                ; $057a: $38 $16

	ld b, a                                          ; $057c: $47
	xor a                                            ; $057d: $af
	ld [$c178], a                                    ; $057e: $ea $78 $c1
	res 4, [hl]                                      ; $0581: $cb $a6
	ldh a, [rLYC]                                    ; $0583: $f0 $45
	cpl                                              ; $0585: $2f
	add b                                            ; $0586: $80
	ldh [rSCY], a                                    ; $0587: $e0 $42
	ld a, $98                                        ; $0589: $3e $98
	sub b                                            ; $058b: $90
	ld b, a                                          ; $058c: $47
	ldh a, [rLYC]                                    ; $058d: $f0 $45
	add b                                            ; $058f: $80
	jr jr_000_05a7                                   ; $0590: $18 $15

jr_000_0592:
	ld b, a                                          ; $0592: $47
	ld a, $40                                        ; $0593: $3e $40
	ld [$c178], a                                    ; $0595: $ea $78 $c1
	set 4, [hl]                                      ; $0598: $cb $e6
	ldh a, [rLYC]                                    ; $059a: $f0 $45
	cpl                                              ; $059c: $2f
	add b                                            ; $059d: $80
	ldh [rSCY], a                                    ; $059e: $e0 $42
	ld a, $40                                        ; $05a0: $3e $40
	sub b                                            ; $05a2: $90
	ld b, a                                          ; $05a3: $47
	ldh a, [rLYC]                                    ; $05a4: $f0 $45
	add b                                            ; $05a6: $80

jr_000_05a7:
	cp c                                             ; $05a7: $b9
	jr c, jr_000_05af                                ; $05a8: $38 $05

	ld a, $20                                        ; $05aa: $3e $20
	ldh [hLCDCIntHandlerIdx], a                                     ; $05ac: $e0 $81
	ld a, c                                          ; $05ae: $79

jr_000_05af:
	ldh [rLYC], a                                    ; $05af: $e0 $45
	pop bc                                           ; $05b1: $c1
	ret                                              ; $05b2: $c9


	ld hl, $df03                                     ; $05b3: $21 $03 $df

jr_000_05b6:
	ldh a, [rLY]                                     ; $05b6: $f0 $44
	cp [hl]                                          ; $05b8: $be
	jr c, jr_000_05b6                                ; $05b9: $38 $fb

	ld hl, rSTAT                                     ; $05bb: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $05be: $cb $4e
	jr nz, :-                               ; $05c0: $20 $fc

	ldh a, [rLCDC]                                   ; $05c2: $f0 $40
	xor $10                                          ; $05c4: $ee $10
	ldh [rLCDC], a                                   ; $05c6: $e0 $40
	ld a, [$df04]                                    ; $05c8: $fa $04 $df
	ld l, a                                          ; $05cb: $6f
	ld a, [$df05]                                    ; $05cc: $fa $05 $df
	ld h, a                                          ; $05cf: $67
	ld a, [hl+]                                      ; $05d0: $2a
	ldh [rSCY], a                                    ; $05d1: $e0 $42
	ld a, [hl+]                                      ; $05d3: $2a
	cp $90                                           ; $05d4: $fe $90
	ret nc                                           ; $05d6: $d0

	ld [$df03], a                                    ; $05d7: $ea $03 $df
	ld a, l                                          ; $05da: $7d
	ld [$df04], a                                    ; $05db: $ea $04 $df
	ld a, h                                          ; $05de: $7c
	ld [$df05], a                                    ; $05df: $ea $05 $df
	ld hl, $df03                                     ; $05e2: $21 $03 $df
	ldh a, [rLY]                                     ; $05e5: $f0 $44
	inc a                                            ; $05e7: $3c
	inc a                                            ; $05e8: $3c
	inc a                                            ; $05e9: $3c
	sub [hl]                                         ; $05ea: $96
	jr nc, jr_000_05b6                               ; $05eb: $30 $c9

	ld a, [hl]                                       ; $05ed: $7e
	dec a                                            ; $05ee: $3d
	ldh [rLYC], a                                    ; $05ef: $e0 $45
	ret                                              ; $05f1: $c9


	ld hl, rSTAT                                     ; $05f2: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $05f5: $cb $4e
	jr nz, :-                               ; $05f7: $20 $fc

	ld hl, $ff40                                     ; $05f9: $21 $40 $ff
	set 3, [hl]                                      ; $05fc: $cb $de
	res 1, [hl]                                      ; $05fe: $cb $8e
	ld a, $47                                        ; $0600: $3e $47
	ldh [rLYC], a                                    ; $0602: $e0 $45
	ld a, $1d                                        ; $0604: $3e $1d
	ldh [hLCDCIntHandlerIdx], a                                     ; $0606: $e0 $81
	ret                                              ; $0608: $c9


	ld hl, rSTAT                                     ; $0609: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $060c: $cb $4e
	jr nz, :-                               ; $060e: $20 $fc

	ld hl, $ff40                                     ; $0610: $21 $40 $ff
	res 4, [hl]                                      ; $0613: $cb $a6
	ld a, [$c17c]                                    ; $0615: $fa $7c $c1
	cp $48                                           ; $0618: $fe $48
	ret z                                            ; $061a: $c8

	cpl                                              ; $061b: $2f
	inc a                                            ; $061c: $3c
	add $8f                                          ; $061d: $c6 $8f
	ldh [rLYC], a                                    ; $061f: $e0 $45
	ld a, $1e                                        ; $0621: $3e $1e
	ldh [hLCDCIntHandlerIdx], a                                     ; $0623: $e0 $81
	ret                                              ; $0625: $c9


	ld hl, rSTAT                                     ; $0626: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $0629: $cb $4e
	jr nz, :-                               ; $062b: $20 $fc

	ld hl, $ff40                                     ; $062d: $21 $40 $ff
	set 1, [hl]                                      ; $0630: $cb $ce
	res 3, [hl]                                      ; $0632: $cb $9e
	ret                                              ; $0634: $c9


	ld hl, rSTAT                                     ; $0635: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $0638: $cb $4e
	jr nz, :-                               ; $063a: $20 $fc

	ld hl, $ff40                                     ; $063c: $21 $40 $ff
	res 1, [hl]                                      ; $063f: $cb $8e
	ret                                              ; $0641: $c9


	ld hl, rSTAT                                     ; $0642: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $0645: $cb $4e
	jr nz, :-                               ; $0647: $20 $fc

	ld a, $70                                        ; $0649: $3e $70
	ldh [rSCY], a                                    ; $064b: $e0 $42
	ret                                              ; $064d: $c9


Call_000_064e:
	ld hl, rSTAT                                     ; $064e: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $0651: $cb $4e
	jr nz, :-                               ; $0653: $20 $fc

	ld hl, $ff40                                     ; $0655: $21 $40 $ff
	set 4, [hl]                                      ; $0658: $cb $e6
	ret                                              ; $065a: $c9


jr_000_065b:
	ldh a, [rLY]                                     ; $065b: $f0 $44
	cp $17                                           ; $065d: $fe $17
	jr c, jr_000_065b                                ; $065f: $38 $fa

	ld hl, rSTAT                                     ; $0661: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $0664: $cb $4e
	jr nz, :-                               ; $0666: $20 $fc

	ld a, $40                                        ; $0668: $3e $40
	ldh [rSCY], a                                    ; $066a: $e0 $42
	ld a, $57                                        ; $066c: $3e $57
	ldh [rLYC], a                                    ; $066e: $e0 $45
	ld a, $23                                        ; $0670: $3e $23
	ldh [hLCDCIntHandlerIdx], a                                     ; $0672: $e0 $81
	ret                                              ; $0674: $c9


	ld hl, rSTAT                                     ; $0675: $21 $41 $ff

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $0678: $cb $4e
	jr nz, :-                               ; $067a: $20 $fc

	ld hl, $ff40                                     ; $067c: $21 $40 $ff
	set 4, [hl]                                      ; $067f: $cb $e6
	ld a, $a8                                        ; $0681: $3e $a8
	ldh [rSCY], a                                    ; $0683: $e0 $42
	ret                                              ; $0685: $c9


	call Call_000_064e                               ; $0686: $cd $4e $06
	ld a, $88                                        ; $0689: $3e $88
	ldh [rSCY], a                                    ; $068b: $e0 $42
	ret                                              ; $068d: $c9


Call_000_068e:
	rst FarCall                                          ; $068e: $f7
	AddrBank Func_01_4000
	ret                                              ; $0692: $c9


Func_0693:
	ld a, BANK(Func_01_4013)                                     ; $0693: $3e $01
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                                     ; $0695: $cd $83 $07
	call Func_01_4013                                       ; $0698: $cd $13 $40
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $069b: $c3 $7b $07


Call_000_069e:
	ld a, BANK(Call_001_4042)                                        ; $069e: $3e $01
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $06a0: $cd $83 $07
	call Call_001_4042                                       ; $06a3: $cd $42 $40
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $06a6: $c3 $7b $07


_VBlankInterruptHandler:
;
	ld hl, wFrameCounter                                     ; $06a9: $21 $1f $c1
	inc [hl]                                         ; $06ac: $34

;
	ld hl, $c106                                     ; $06ad: $21 $06 $c1
	bit 0, [hl]                                      ; $06b0: $cb $46
	jp nz, Func_0693                                     ; $06b2: $c2 $93 $06

; Clear pending timer interrupts, and re-enable it
	ld hl, rIF                                     ; $06b5: $21 $0f $ff
	res 2, [hl]                                      ; $06b8: $cb $96
	ld hl, rIE                                     ; $06ba: $21 $ff $ff
	set 2, [hl]                                      ; $06bd: $cb $d6

;
	ld hl, $c2cb                                     ; $06bf: $21 $cb $c2
	ld a, [hl+]                                      ; $06c2: $2a
	ldh [rTIMA], a                                   ; $06c3: $e0 $05
	ld a, [hl]                                       ; $06c5: $7e
	ldh [rTMA], a                                    ; $06c6: $e0 $06
	ld a, $04                                        ; $06c8: $3e $04
	ldh [rTAC], a                                    ; $06ca: $e0 $07

;
	ld hl, $ff80                                     ; $06cc: $21 $80 $ff
	bit 0, [hl]                                      ; $06cf: $cb $46
	jp nz, Func_0693                                     ; $06d1: $c2 $93 $06

	set 0, [hl]                                      ; $06d4: $cb $c6
	call Call_000_069e                               ; $06d6: $cd $9e $06

; Jump if not GBC/GBA
	ld a, [wInitialA]                                    ; $06d9: $fa $00 $c1
	cp $11                                           ; $06dc: $fe $11
	jr nz, .cont_06eb                               ; $06de: $20 $0b

	ld a, [$c10f]                                    ; $06e0: $fa $0f $c1
	ld b, a                                          ; $06e3: $47
	ld a, [$c10e]                                    ; $06e4: $fa $0e $c1
	or b                                             ; $06e7: $b0
	call nz, Call_000_1858                           ; $06e8: $c4 $58 $18

.cont_06eb:
; Oam DMA transfer from wram bank 0/1
	xor a                                                           ; $06eb
	call SetWramBankAStoringCurrInHighByteInStackAfterReturn        ; $06ec
	call hOamDmaFunc                                                ; $06ef
	call _SetWramBankToHighByteInStackAfterReturn                   ; $06f2

;
	call Func_137b                                       ; $06f5: $cd $7b $13
	ei                                               ; $06f8: $fb
	ld a, $01                                        ; $06f9: $3e $01
	ld [$c13a], a                                    ; $06fb: $ea $3a $c1
	call Call_000_2d40                               ; $06fe: $cd $40 $2d
	xor a                                            ; $0701: $af
	ld [$c13a], a                                    ; $0702: $ea $3a $c1
	call Call_000_28fa                               ; $0705: $cd $fa $28
	call Call_000_0711                               ; $0708: $cd $11 $07
	ld hl, $ff80                                     ; $070b: $21 $80 $ff
	res 0, [hl]                                      ; $070e: $cb $86
	ret                                              ; $0710: $c9


Call_000_0711:
	rst FarCall                                          ; $0711: $f7
	AddrBank Func_02_4187
	call Call_000_1952                               ; $0715: $cd $52 $19

; Poll input
	ld a, BANK(PollInput)                                        ; $0718: $3e $02
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $071a: $cd $83 $07
	call PollInput                                       ; $071d: $cd $8b $42
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $0720: $c3 $7b $07


;
	ld a, [$c13f]                                    ; $0723: $fa $3f $c1
	and $01                                          ; $0726: $e6 $01
	ret z                                            ; $0728: $c8

; Wait until in hblank/vblank
:	ldh a, [rSTAT]                                   ; $0729: $f0 $41
	bit 1, a                                         ; $072b: $cb $4f
	jr nz, :-                               ; $072d: $20 $fa

	ld hl, $ff40                                     ; $072f: $21 $40 $ff
	res 0, [hl]                                      ; $0732: $cb $86
	ld b, $40                                        ; $0734: $06 $40

jr_000_0736:
	dec b                                            ; $0736: $05
	jr nz, jr_000_0736                               ; $0737: $20 $fd

; Wait until in hblank/vblank
:	ldh a, [rSTAT]                                   ; $0739: $f0 $41
	bit 1, a                                         ; $073b: $cb $4f
	jr nz, :-                               ; $073d: $20 $fa

	ld hl, $ff40                                     ; $073f: $21 $40 $ff
	set 0, [hl]                                      ; $0742: $cb $c6
	ret                                              ; $0744: $c9


_FarCall:
	push af                                                         ; $0745
	push hl                                                         ; $0746
	push hl                                                         ; $0747
	push af                                                         ; $0748
	push bc                                                         ; $0749
	push de                                                         ; $074a
	push hl                                                         ; $074b

; HL points to L in 2nd push above, replace it with the func below
	ld hl, sp+$0a                                                   ; $074c
	ld [hl], LOW(SetRomBankToHighByteInStackAfterReturn)            ; $074e
	inc hl                                                          ; $0750
	ld [hl], HIGH(SetRomBankToHighByteInStackAfterReturn)           ; $0751

; HL points to A in 1st push above, store shadow ram bank
	inc hl                                                          ; $0753
	inc hl                                                          ; $0754
	ld a, [wRomBank]                                                ; $0755
	ld [hl+], a                                                     ; $0758

; DE = return address
	ld e, [hl]                                                      ; $0759
	inc hl                                                          ; $075a
	ld d, [hl]                                                      ; $075b

; Get word BC (far addr) from the return address, then A (far bank)
	ld a, [de]                                                      ; $075c
	ld c, a                                                         ; $075d
	inc de                                                          ; $075e
	ld a, [de]                                                      ; $075f
	ld b, a                                                         ; $0760
	inc de                                                          ; $0761
	ld a, [de]                                                      ; $0762
	inc de                                                          ; $0763

; Replace A (rom bank) with 1 if 0, then set rom bank
	and a                                                           ; $0764
	jr nz, :+                                                       ; $0765
	inc a                                                           ; $0767
:	ld [wRomBank], a                                                ; $0768
	ld [rROMB0], a                                                  ; $076b

; Replace return address, to jump over the BCA loaded above
	ld [hl], d                                                      ; $076e
	dec hl                                                          ; $076f
	ld [hl], e                                                      ; $0770

; HL points to the L in the 3rd push above, store BC there.
; Return order becomes <far func>, then <func below>
; 1st push, with A replaced by preserved rom bank, is used up by <func below> to restore to
	ld hl, sp+$08                                                   ; $0771
	ld [hl], c                                                      ; $0773
	inc hl                                                          ; $0774
	ld [hl], b                                                      ; $0775

	pop hl                                                          ; $0776
	pop de                                                          ; $0777
	pop bc                                                          ; $0778
	pop af                                                          ; $0779
	ret                                                             ; $077a


; Paired with SetRomBankAStoringCurrInHighByteInStackAfterReturn
SetRomBankToHighByteInStackAfterReturn:
	call _SetRomBankToHighByteInStackAfterReturn                    ; $077b
	ret                                                             ; $077e


; Paired with SetWramBankAStoringCurrInHighByteInStackAfterReturn
SetWramBankToHighByteInStackAfterReturn::
	call _SetWramBankToHighByteInStackAfterReturn                   ; $077f
	ret                                                             ; $0782


; Paired with SetRomBankToHighByteInStackAfterReturn
SetRomBankAStoringCurrInHighByteInStackAfterReturn:
	push af                                                         ; $0783
	push af                                                         ; $0784
	push hl                                                         ; $0785

; HL points to low byte of return address, store in low byte of 1st push above
	ld hl, sp+$06                                                   ; $0786
	ld a, [hl-]                                                     ; $0788
	dec hl                                                          ; $0789
	ld [hl+], a                                                     ; $078a

; HL points to high byte of return address, store in high byte of 1st push above
	inc hl                                                          ; $078b
	inc hl                                                          ; $078c
	ld a, [hl-]                                                     ; $078d
	dec hl                                                          ; $078e
	ld [hl+], a                                                     ; $078f

; Store rom bank in high byte of word where return address was
	inc hl                                                          ; $0790
	ld a, [wRomBank]                                                ; $0791
	ld [hl], a                                                      ; $0794
	pop hl                                                          ; $0795
	pop af                                                          ; $0796

SetRomBankA:
	push af                                                         ; $0797
	jr SetRomBankAThenPop                                           ; $0798

SetRomBank1:
	push af                                                         ; $079a
	ld a, $01                                                       ; $079b

SetRomBankAThenPop:
; Replace 0 with 1 when setting
	and a                                                           ; $079d
	jr nz, :+                                                       ; $079e
	inc a                                                           ; $07a0
:	ld [wRomBank], a                                                ; $07a1
	ld [rROMB0], a                                                  ; $07a4
	pop af                                                          ; $07a7
	ret                                                             ; $07a8


;
	push af                                          ; $07a9: $f5
	ld a, $02                                        ; $07aa: $3e $02
	jr SetRomBankAThenPop                                   ; $07ac: $18 $ef

	push af                                          ; $07ae: $f5
	ld a, $03                                        ; $07af: $3e $03
	jr SetRomBankAThenPop                                   ; $07b1: $18 $ea

	push af                                          ; $07b3: $f5
	ld a, $04                                        ; $07b4: $3e $04
	jr SetRomBankAThenPop                                   ; $07b6: $18 $e5

SetRomBank5:
	push af                                          ; $07b8: $f5
	ld a, $05                                        ; $07b9: $3e $05
	jr SetRomBankAThenPop                                   ; $07bb: $18 $e0

;
	push af                                          ; $07bd: $f5
	ld a, $06                                        ; $07be: $3e $06
	jr SetRomBankAThenPop                                   ; $07c0: $18 $db

	push af                                          ; $07c2: $f5
	ld a, $07                                        ; $07c3: $3e $07
	jr SetRomBankAThenPop                                   ; $07c5: $18 $d6

	push af                                          ; $07c7: $f5
	ld a, $08                                        ; $07c8: $3e $08
	jr SetRomBankAThenPop                                   ; $07ca: $18 $d1

	push af                                          ; $07cc: $f5
	ld a, $09                                        ; $07cd: $3e $09
	jr SetRomBankAThenPop                                   ; $07cf: $18 $cc

	push af                                          ; $07d1: $f5
	ld a, $0a                                        ; $07d2: $3e $0a
	jr SetRomBankAThenPop                                   ; $07d4: $18 $c7

	push af                                          ; $07d6: $f5
	ld a, $0b                                        ; $07d7: $3e $0b
	jr SetRomBankAThenPop                                   ; $07d9: $18 $c2

	push af                                          ; $07db: $f5
	ld a, $0c                                        ; $07dc: $3e $0c
	jr SetRomBankAThenPop                                   ; $07de: $18 $bd

	push af                                          ; $07e0: $f5
	ld a, $0d                                        ; $07e1: $3e $0d
	jr SetRomBankAThenPop                                   ; $07e3: $18 $b8

	push af                                          ; $07e5: $f5
	ld a, $0e                                        ; $07e6: $3e $0e
	jr SetRomBankAThenPop                                   ; $07e8: $18 $b3

	push af                                          ; $07ea: $f5
	ld a, $0f                                        ; $07eb: $3e $0f
	jr SetRomBankAThenPop                                   ; $07ed: $18 $ae


; Removes the rom bank, and low byte of its word, from stack
_SetRomBankToHighByteInStackAfterReturn:
; 12
; rt
; af
; hl
	push af                                          ; $07ef: $f5
	push hl                                          ; $07f0: $e5

; HL points to [1], set it as rom bank, then it points to [2]
	ld hl, sp+$07                                    ; $07f1: $f8 $07
	ld a, [hl-]                                      ; $07f3: $3a
	call SetRomBankA                               ; $07f4: $cd $97 $07

; Store high byte of return address [r] into where [1] was, then it points to [2]
	dec hl                                           ; $07f7: $2b
	ld a, [hl+]                                      ; $07f8: $2a
	inc hl                                           ; $07f9: $23
	ld [hl-], a                                      ; $07fa: $32

; Get low byte of return address [t] and store in [2]
	dec hl                                           ; $07fb: $2b
	dec hl                                           ; $07fc: $2b
	ld a, [hl+]                                      ; $07fd: $2a
	inc hl                                           ; $07fe: $23
	ld [hl], a                                       ; $07ff: $77

; Restore addresses, then point SP at [12] (originally [rt]) to return to it
	pop hl                                           ; $0800: $e1
	pop af                                           ; $0801: $f1
	inc sp                                           ; $0802: $33
	inc sp                                           ; $0803: $33
	ret                                              ; $0804: $c9


; Paired with _SetWramBankToHighByteInStackAfterReturn
SetWramBankAStoringCurrInHighByteInStackAfterReturn::
	push af                                                         ; $0805
	push af                                                         ; $0806
	push hl                                                         ; $0807

; HL points to low byte of return address, copy it into low byte of 1st push above
	ld hl, sp+$06                                                   ; $0808
	ld a, [hl-]                                                     ; $080a
	dec hl                                                          ; $080b
	ld [hl+], a                                                     ; $080c

; HL points to high byte of return address, copy it into high byte of 1st push above
	inc hl                                                          ; $080d
	inc hl                                                          ; $080e
	ld a, [hl-]                                                     ; $080f
	dec hl                                                          ; $0810
	ld [hl+], a                                                     ; $0811

; HL points to previous high byte of return address, store curr wram bank there
	inc hl                                                          ; $0812
	ld a, [wWramBank]                                               ; $0813
	ld [hl], a                                                      ; $0816

; Set wram bank A
	pop hl                                                          ; $0817
	pop af                                                          ; $0818

SetWramBankA:
	push af                                                         ; $0819
	jr SetWramBankAThenPop                                          ; $081a

SetWramBank1:
	push af                                                         ; $081c
	ld a, $01                                                       ; $081d

SetWramBankAThenPop:
; Set wram bank to 1 if 0
	and a                                                           ; $081f
	jr nz, :+                                                       ; $0820
	inc a                                                           ; $0822
:	ld [wWramBank], a                                               ; $0823
	ldh [rSVBK], a                                                  ; $0826
	pop af                                                          ; $0828
	ret                                                             ; $0829


SetWramBank2:
	push af                                                         ; $082a
	ld a, $02                                                       ; $082b
	jr SetWramBankAThenPop                                          ; $082d


;
	push af                                          ; $082f: $f5
	ld a, $03                                        ; $0830: $3e $03
	jr SetWramBankAThenPop                                   ; $0832: $18 $eb

	push af                                          ; $0834: $f5
	ld a, $04                                        ; $0835: $3e $04
	jr SetWramBankAThenPop                                   ; $0837: $18 $e6

	push af                                          ; $0839: $f5
	ld a, $05                                        ; $083a: $3e $05
	jr SetWramBankAThenPop                                   ; $083c: $18 $e1

	push af                                          ; $083e: $f5
	ld a, $06                                        ; $083f: $3e $06
	jr SetWramBankAThenPop                                   ; $0841: $18 $dc

	push af                                          ; $0843: $f5
	ld a, $07                                        ; $0844: $3e $07
	jr SetWramBankAThenPop                                   ; $0846: $18 $d7


; Removes the wram bank, and low byte of its word, from stack
_SetWramBankToHighByteInStackAfterReturn::
; 12
; rt
; af
; hl
	push af                                                         ; $0848
	push hl                                                         ; $0849

; HL points to [1], set it as wram bank, then it points to [2]
	ld hl, sp+$07                                                   ; $084a
	ld a, [hl-]                                                     ; $084c
	call SetWramBankA                                               ; $084d

; Store high byte of return address [r] into where [1] was, then it points to [2]
	dec hl                                                          ; $0850
	ld a, [hl+]                                                     ; $0851
	inc hl                                                          ; $0852
	ld [hl-], a                                                     ; $0853

; Get low byte of return address [t] and store in [2]
	dec hl                                                          ; $0854
	dec hl                                                          ; $0855
	ld a, [hl+]                                                     ; $0856
	inc hl                                                          ; $0857
	ld [hl], a                                                      ; $0858

; Restore addresses, then point SP at [12] (originally [rt]) to return to it
	pop hl                                                          ; $0859
	pop af                                                          ; $085a
	inc sp                                                          ; $085b
	inc sp                                                          ; $085c
	ret                                                             ; $085d


;
	push af                                          ; $085e: $f5
	push af                                          ; $085f: $f5
	push hl                                          ; $0860: $e5
	ld hl, sp+$06                                    ; $0861: $f8 $06
	ld a, [hl-]                                      ; $0863: $3a
	dec hl                                           ; $0864: $2b
	ld [hl+], a                                      ; $0865: $22
	inc hl                                           ; $0866: $23
	inc hl                                           ; $0867: $23
	ld a, [hl-]                                      ; $0868: $3a
	dec hl                                           ; $0869: $2b
	ld [hl+], a                                      ; $086a: $22
	inc hl                                           ; $086b: $23
	ld a, [wSramBank]                                    ; $086c: $fa $05 $c1
	ld [hl], a                                       ; $086f: $77
	pop hl                                           ; $0870: $e1
	pop af                                           ; $0871: $f1

SetSramBankA:
	push af                                                         ; $0872
	jr SetSramBankAThenPop                                          ; $0873


;
	xor a                                            ; $0875: $af
	ld [rRAMG], a                                    ; $0876: $ea $00 $00
	ret                                              ; $0879: $c9


EnableAndClearSramBank:
; Enable sram before clearing
	ld a, $0a                                                       ; $087a
	ld [rRAMG], a                                                   ; $087c
	push af                                                         ; $087f
	xor a                                                           ; $0880

SetSramBankAThenPop:
	ld [wSramBank], a                                               ; $0881
	ld [rRAMB], a                                                   ; $0884
	pop af                                                          ; $0887
	ret                                                             ; $0888


;
	push af                                          ; $0889: $f5
	ld a, $01                                        ; $088a: $3e $01
	jr SetSramBankAThenPop                                   ; $088c: $18 $f3

	push af                                          ; $088e: $f5
	ld a, $02                                        ; $088f: $3e $02
	jr SetSramBankAThenPop                                   ; $0891: $18 $ee

	push af                                          ; $0893: $f5
	ld a, $03                                        ; $0894: $3e $03
	jr SetSramBankAThenPop                                   ; $0896: $18 $e9

	push af                                          ; $0898: $f5
	ld a, $04                                        ; $0899: $3e $04
	jr SetSramBankAThenPop                                   ; $089b: $18 $e4

	push af                                          ; $089d: $f5
	ld a, $05                                        ; $089e: $3e $05
	jr SetSramBankAThenPop                                   ; $08a0: $18 $df

	push af                                          ; $08a2: $f5
	ld a, $06                                        ; $08a3: $3e $06
	jr SetSramBankAThenPop                                   ; $08a5: $18 $da

	push af                                          ; $08a7: $f5
	ld a, $07                                        ; $08a8: $3e $07
	jr SetSramBankAThenPop                                   ; $08aa: $18 $d5

	push af                                          ; $08ac: $f5
	push hl                                          ; $08ad: $e5
	ld hl, sp+$07                                    ; $08ae: $f8 $07
	ld a, [hl-]                                      ; $08b0: $3a
	call SetSramBankA                               ; $08b1: $cd $72 $08
	dec hl                                           ; $08b4: $2b
	ld a, [hl+]                                      ; $08b5: $2a
	inc hl                                           ; $08b6: $23
	ld [hl-], a                                      ; $08b7: $32
	dec hl                                           ; $08b8: $2b
	dec hl                                           ; $08b9: $2b
	ld a, [hl+]                                      ; $08ba: $2a
	inc hl                                           ; $08bb: $23
	ld [hl], a                                       ; $08bc: $77
	pop hl                                           ; $08bd: $e1
	pop af                                           ; $08be: $f1
	inc sp                                           ; $08bf: $33
	inc sp                                           ; $08c0: $33
	ret                                              ; $08c1: $c9


; A - table idx
; Return address - table
_JumpTable:
	push hl                                                         ; $08c2
	push de                                                         ; $08c3

; HL points to low byte of return address, DE = that return address
	ld hl, sp+$04                                                   ; $08c4
	ld e, [hl]                                                      ; $08c6
	inc hl                                                          ; $08c7
	ld d, [hl]                                                      ; $08c8

; A is double-idxed and added onto DE to get HL
	ld l, a                                                         ; $08c9
	ld h, $00                                                       ; $08ca
	add hl, hl                                                      ; $08cc
	add hl, de                                                      ; $08cd

; DE = table entry word
	ld e, [hl]                                                      ; $08ce
	inc hl                                                          ; $08cf
	ld d, [hl]                                                      ; $08d0

; Replace return address with that word
	ld hl, sp+$04                                                   ; $08d1
	ld [hl], e                                                      ; $08d3
	inc hl                                                          ; $08d4
	ld [hl], d                                                      ; $08d5

	pop de                                                          ; $08d6
	pop hl                                                          ; $08d7
	ret                                                             ; $08d8


;
	ld a, [wButtonsHeld]                                    ; $08d9: $fa $23 $c1
	and $f0                                          ; $08dc: $e6 $f0
	cp $f0                                           ; $08de: $fe $f0
	ret nz                                           ; $08e0: $c0

	ld a, $01                                        ; $08e1: $3e $01
	call Call_000_291f                               ; $08e3: $cd $1f $29
	ld a, $ff                                        ; $08e6: $3e $ff
	ldh [hDisp0_BGP], a                                     ; $08e8: $e0 $85
	ldh [rBGP], a                                    ; $08ea: $e0 $47
	ld a, $00                                        ; $08ec: $3e $00
	call Call_000_1e2e                               ; $08ee: $cd $2e $1e
	jp Reset                                 ; $08f1: $c3 $72 $01


	call Call_000_08f7                               ; $08f4: $cd $f7 $08

Call_000_08f7:
	call Call_000_08fa                               ; $08f7: $cd $fa $08

Call_000_08fa:
	call Call_000_08fd                               ; $08fa: $cd $fd $08

Call_000_08fd:
	call Call_000_0900                               ; $08fd: $cd $00 $09

Call_000_0900:
	ld [hl+], a                                      ; $0900: $22
	ld [hl+], a                                      ; $0901: $22
	ld [hl+], a                                      ; $0902: $22
	ld [hl+], a                                      ; $0903: $22
	ld [hl+], a                                      ; $0904: $22
	ld [hl+], a                                      ; $0905: $22
	ld [hl+], a                                      ; $0906: $22
	ld [hl+], a                                      ; $0907: $22
	ld [hl+], a                                      ; $0908: $22
	ld [hl+], a                                      ; $0909: $22
	ld [hl+], a                                      ; $090a: $22
	ld [hl+], a                                      ; $090b: $22
	ld [hl+], a                                      ; $090c: $22
	ld [hl+], a                                      ; $090d: $22
	ld [hl+], a                                      ; $090e: $22
	ld [hl+], a                                      ; $090f: $22
	ret                                              ; $0910: $c9


	call Call_000_0927                               ; $0911: $cd $27 $09
	call Call_000_092e                               ; $0914: $cd $2e $09
	call Call_000_091d                               ; $0917: $cd $1d $09
	jp Jump_000_094c                                 ; $091a: $c3 $4c $09


Call_000_091d:
	ld hl, $8000                                     ; $091d: $21 $00 $80
	ld bc, $1800                                     ; $0920: $01 $00 $18
	xor a                                            ; $0923: $af
	jp $cfeb                                         ; $0924: $c3 $eb $cf


Call_000_0927:
	ld hl, $ff82                                     ; $0927: $21 $82 $ff
	bit 3, [hl]                                      ; $092a: $cb $5e
	jr jr_000_0933                                   ; $092c: $18 $05

Call_000_092e:
	ld hl, $ff82                                     ; $092e: $21 $82 $ff
	bit 6, [hl]                                      ; $0931: $cb $76

jr_000_0933:
	ld hl, $9800                                     ; $0933: $21 $00 $98
	jr z, jr_000_093b                                ; $0936: $28 $03

	ld hl, $9c00                                     ; $0938: $21 $00 $9c

jr_000_093b:
	ld bc, $0400                                     ; $093b: $01 $00 $04
	xor a                                            ; $093e: $af
	jp $cfeb                                         ; $093f: $c3 $eb $cf


	ld hl, $9800                                     ; $0942: $21 $00 $98
	ld bc, $0020                                     ; $0945: $01 $20 $00
	xor a                                            ; $0948: $af
	jp $cfeb                                         ; $0949: $c3 $eb $cf


Jump_000_094c:
	ld hl, wOam                                     ; $094c: $21 $00 $d7
	xor a                                            ; $094f: $af
	ld c, $a0                                        ; $0950: $0e $a0
	jp $cfd5                                         ; $0952: $c3 $d5 $cf


Call_000_0955:
	ld a, l                                          ; $0955: $7d
	ldh [hDisp0_SCY], a                                     ; $0956: $e0 $83
	ld a, h                                          ; $0958: $7c
	ldh [hDisp0_SCX], a                                     ; $0959: $e0 $84
	ret                                              ; $095b: $c9


jr_000_095c:
	ld a, l                                          ; $095c: $7d
	ldh [hDisp0_WY], a                                     ; $095d: $e0 $88
	ld a, h                                          ; $095f: $7c
	ldh [hDisp0_WX], a                                     ; $0960: $e0 $89
	ret                                              ; $0962: $c9


Call_000_0963:
	ld hl, $0000                                     ; $0963: $21 $00 $00
	call Call_000_0955                               ; $0966: $cd $55 $09
	ld hl, $0790                                     ; $0969: $21 $90 $07
	jr jr_000_095c                                   ; $096c: $18 $ee

Call_000_096e:
	call Call_000_09ae                               ; $096e: $cd $ae $09
	ldh a, [hDisp0_LCDC]                                     ; $0971: $f0 $82
	or $80                                           ; $0973: $f6 $80
	ldh [hDisp0_LCDC], a                                     ; $0975: $e0 $82
	ldh [hDisp1_LCDC], a                                     ; $0977: $e0 $8f
	xor a                                            ; $0979: $af
	ldh [rTAC], a                                    ; $097a: $e0 $07

Call_000_097c:
jr_000_097c:
	ldh a, [hDisp0_LCDC]                                     ; $097c: $f0 $82
	ldh [rLCDC], a                                   ; $097e: $e0 $40
	ld a, $04                                        ; $0980: $3e $04
	ld [$c10b], a                                    ; $0982: $ea $0b $c1
	ret                                              ; $0985: $c9


Call_000_0986:
	call Call_000_09b4                               ; $0986: $cd $b4 $09
	ldh a, [hDisp0_LCDC]                                     ; $0989: $f0 $82
	and $7f                                          ; $098b: $e6 $7f
	ldh [hDisp0_LCDC], a                                     ; $098d: $e0 $82

jr_000_098f:
	ei                                               ; $098f: $fb
	ldh a, [rLCDC]                                   ; $0990: $f0 $40
	rlca                                             ; $0992: $07
	jr nc, jr_000_097c                               ; $0993: $30 $e7

	di                                               ; $0995: $f3
	ldh a, [rLY]                                     ; $0996: $f0 $44
	cp $91                                           ; $0998: $fe $91
	jr c, jr_000_098f                                ; $099a: $38 $f3

	call Call_000_097c                               ; $099c: $cd $7c $09
	ei                                               ; $099f: $fb
	ret                                              ; $09a0: $c9


	ldh a, [hDisp0_LCDC]                                     ; $09a1: $f0 $82
	or $20                                           ; $09a3: $f6 $20

jr_000_09a5:
	ldh [hDisp0_LCDC], a                                     ; $09a5: $e0 $82
	ret                                              ; $09a7: $c9


	ldh a, [hDisp0_LCDC]                                     ; $09a8: $f0 $82
	and $df                                          ; $09aa: $e6 $df
	jr jr_000_09a5                                   ; $09ac: $18 $f7

Call_000_09ae:
	ldh a, [hDisp0_LCDC]                                     ; $09ae: $f0 $82
	or $23                                           ; $09b0: $f6 $23
	jr jr_000_09a5                                   ; $09b2: $18 $f1

Call_000_09b4:
	ldh a, [hDisp0_LCDC]                                     ; $09b4: $f0 $82
	and $dc                                          ; $09b6: $e6 $dc
	ldh [hDisp0_LCDC], a                                     ; $09b8: $e0 $82
	ret                                              ; $09ba: $c9


	ld c, $1f                                        ; $09bb: $0e $1f
	ld d, $1f                                        ; $09bd: $16 $1f
	ld e, $1f                                        ; $09bf: $1e $1f
	jr jr_000_09d7                                   ; $09c1: $18 $14

	ld c, $e4                                        ; $09c3: $0e $e4
	ld d, $e4                                        ; $09c5: $16 $e4
	ld e, $d0                                        ; $09c7: $1e $d0
	jr jr_000_09d7                                   ; $09c9: $18 $0c

	ld a, $ff                                        ; $09cb: $3e $ff
	jr jr_000_09d4                                   ; $09cd: $18 $05

	ld a, $e4                                        ; $09cf: $3e $e4
	jr jr_000_09d4                                   ; $09d1: $18 $01

Call_000_09d3:
	xor a                                            ; $09d3: $af

jr_000_09d4:
	ld c, a                                          ; $09d4: $4f
	ld d, a                                          ; $09d5: $57
	ld e, a                                          ; $09d6: $5f

jr_000_09d7:
	ld a, c                                          ; $09d7: $79
	ldh [hDisp0_BGP], a                                     ; $09d8: $e0 $85
	ld a, d                                          ; $09da: $7a
	ldh [hDisp0_OBP0], a                                     ; $09db: $e0 $86
	ld a, e                                          ; $09dd: $7b
	ldh [hDisp0_OBP1], a                                     ; $09de: $e0 $87
	ret                                              ; $09e0: $c9


	ld a, $ff                                        ; $09e1: $3e $ff
	cp $af                                           ; $09e3: $fe $af
	ld [$c140], a                                    ; $09e5: $ea $40 $c1
	ld c, $ff                                        ; $09e8: $0e $ff

jr_000_09ea:
	ld e, [hl]                                       ; $09ea: $5e
	inc hl                                           ; $09eb: $23
	ld d, [hl]                                       ; $09ec: $56
	inc hl                                           ; $09ed: $23

jr_000_09ee:
	ld a, [hl+]                                      ; $09ee: $2a
	ld b, a                                          ; $09ef: $47
	inc b                                            ; $09f0: $04
	ret z                                            ; $09f1: $c8

	inc b                                            ; $09f2: $04
	jr z, jr_000_09ea                                ; $09f3: $28 $f5

	and c                                            ; $09f5: $a1
	push hl                                          ; $09f6: $e5
	ld hl, rSTAT                                     ; $09f7: $21 $41 $ff
	di                                               ; $09fa: $f3

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $09fb: $cb $4e
	jr nz, :-                               ; $09fd: $20 $fc

	ld hl, $c140                                     ; $09ff: $21 $40 $c1
	and [hl]                                         ; $0a02: $a6
	ld [de], a                                       ; $0a03: $12
	ei                                               ; $0a04: $fb
	pop hl                                           ; $0a05: $e1
	inc de                                           ; $0a06: $13
	jr jr_000_09ee                                   ; $0a07: $18 $e5

	ld c, $00                                        ; $0a09: $0e $00
	jr jr_000_09ea                                   ; $0a0b: $18 $dd

Jump_000_0a0d:
	ld a, $ff                                        ; $0a0d: $3e $ff
	cp $af                                           ; $0a0f: $fe $af
	ld [$c140], a                                    ; $0a11: $ea $40 $c1

jr_000_0a14:
	ld e, [hl]                                       ; $0a14: $5e
	inc hl                                           ; $0a15: $23
	ld d, [hl]                                       ; $0a16: $56
	inc hl                                           ; $0a17: $23

jr_000_0a18:
	ld a, [hl+]                                      ; $0a18: $2a
	ld b, a                                          ; $0a19: $47
	inc b                                            ; $0a1a: $04
	ret z                                            ; $0a1b: $c8

	inc b                                            ; $0a1c: $04
	jr z, jr_000_0a14                                ; $0a1d: $28 $f5

	push hl                                          ; $0a1f: $e5
	ld hl, rSTAT                                     ; $0a20: $21 $41 $ff
	di                                               ; $0a23: $f3

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $0a24: $cb $4e
	jr nz, :-                               ; $0a26: $20 $fc

	ld hl, $c140                                     ; $0a28: $21 $40 $c1
	and [hl]                                         ; $0a2b: $a6
	ld [de], a                                       ; $0a2c: $12
	ei                                               ; $0a2d: $fb
	pop hl                                           ; $0a2e: $e1
	inc de                                           ; $0a2f: $13
	jr jr_000_0a18                                   ; $0a30: $18 $e6

	ret                                              ; $0a32: $c9


	ld b, a                                          ; $0a33: $47
	ld a, l                                          ; $0a34: $7d
	ld [$c0d0], a                                    ; $0a35: $ea $d0 $c0
	ld a, h                                          ; $0a38: $7c
	ld [$c0d1], a                                    ; $0a39: $ea $d1 $c0
	ld a, $ff                                        ; $0a3c: $3e $ff
	ld [$c0d4], a                                    ; $0a3e: $ea $d4 $c0
	ld hl, $c0d3                                     ; $0a41: $21 $d3 $c0
	ld a, b                                          ; $0a44: $78
	call Call_000_0a53                               ; $0a45: $cd $53 $0a
	swap a                                           ; $0a48: $cb $37
	call Call_000_0a53                               ; $0a4a: $cd $53 $0a
	ld hl, $c0d0                                     ; $0a4d: $21 $d0 $c0
	jp Jump_000_0a0d                                 ; $0a50: $c3 $0d $0a


Call_000_0a53:
	push af                                          ; $0a53: $f5
	ld b, $30                                        ; $0a54: $06 $30
	and $0f                                          ; $0a56: $e6 $0f
	cp $0a                                           ; $0a58: $fe $0a
	jr c, jr_000_0a5e                                ; $0a5a: $38 $02

	ld b, $37                                        ; $0a5c: $06 $37

jr_000_0a5e:
	ld [hl], a                                       ; $0a5e: $77
	ld a, b                                          ; $0a5f: $78
	add [hl]                                         ; $0a60: $86
	ld [hl-], a                                      ; $0a61: $32
	pop af                                           ; $0a62: $f1
	ret                                              ; $0a63: $c9


	ld a, $02                                        ; $0a64: $3e $02
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $0a66: $cd $83 $07
	call $42fb                                       ; $0a69: $cd $fb $42
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $0a6c: $c3 $7b $07


	ld a, $02                                        ; $0a6f: $3e $02
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $0a71: $cd $83 $07
	call $4308                                       ; $0a74: $cd $08 $43
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $0a77: $c3 $7b $07


	ld a, $02                                        ; $0a7a: $3e $02
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $0a7c: $cd $83 $07
	call $430d                                       ; $0a7f: $cd $0d $43
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $0a82: $c3 $7b $07


	ld a, $02                                        ; $0a85: $3e $02
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $0a87: $cd $83 $07
	call $4312                                       ; $0a8a: $cd $12 $43
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $0a8d: $c3 $7b $07


	ld a, $02                                        ; $0a90: $3e $02
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $0a92: $cd $83 $07
	call $4317                                       ; $0a95: $cd $17 $43
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $0a98: $c3 $7b $07


	ld a, $02                                        ; $0a9b: $3e $02
	jp SetRomBankA                                 ; $0a9d: $c3 $97 $07


	ld a, $02                                        ; $0aa0: $3e $02
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $0aa2: $cd $83 $07
	call $4334                                       ; $0aa5: $cd $34 $43
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $0aa8: $c3 $7b $07


Call_000_0aab:
; Jump if LCD off
	ldh a, [rLCDC]                                   ; $0aab: $f0 $40
	and LCDCF_ON                                          ; $0aad: $e6 $80
	jr z, Call_000_0ab5                                ; $0aaf: $28 $04

	ld a, $01                                        ; $0ab1: $3e $01
	jr :+                                   ; $0ab3: $18 $01

Call_000_0ab5:
	xor a                                            ; $0ab5: $af

:	ld [$c12b], a                                    ; $0ab6: $ea $2b $c1

;
	ld a, [wRomBank]                                    ; $0ab9: $fa $03 $c1
	push af                                          ; $0abc: $f5
	ld de, $0000                                     ; $0abd: $11 $00 $00

:	pop af                                           ; $0ac0: $f1
	call SetRomBankA                               ; $0ac1: $cd $97 $07

;
	push af                                          ; $0ac4: $f5
	add hl, de                                       ; $0ac5: $19
	ld de, :-                                     ; $0ac6: $11 $c0 $0a
	push de                                          ; $0ac9: $d5
	xor a                                            ; $0aca: $af
	ld [$c12c], a                                    ; $0acb: $ea $2c $c1

;
	ld a, [hl]                                       ; $0ace: $7e
	inc hl                                           ; $0acf: $23
	sub $f9                                          ; $0ad0: $d6 $f9
	jr nc, :+                               ; $0ad2: $30 $04

	ld a, [$d81f]                                    ; $0ad4: $fa $1f $d8
	dec hl                                           ; $0ad7: $2b

:	ld [$d81f], a                                    ; $0ad8: $ea $1f $d8

;
	cp $05                                           ; $0adb: $fe $05
	call z, $6a65                                    ; $0add: $cc $65 $6a
	rst JumpTable                                          ; $0ae0: $c7
	dw Func_0b06
	dw Func_0af5
	dw Func_0b2a
	dw Func_0b3f
	dw Func_0b59
	dw Func_0b6c
	dw Func_0aef


Func_0aef:
	xor a                                            ; $0aef: $af
	ldh [rVBK], a                                    ; $0af0: $e0 $4f
	pop de                                           ; $0af2: $d1
	pop af                                           ; $0af3: $f1
	ret                                              ; $0af4: $c9


; HL -
Func_0af5:
	ld a, $00                                        ; $0af5: $3e $00
	ld [$d81f], a                                    ; $0af7: $ea $1f $d8

; Jump if not GBC/GBA
	ld a, [wInitialA]                                    ; $0afa: $fa $00 $c1
	cp $11                                           ; $0afd: $fe $11
	jr nz, Func_0b11                               ; $0aff: $20 $10

	ld a, $01                                        ; $0b01: $3e $01
	ld [$c12c], a                                    ; $0b03: $ea $2c $c1

; HL -
Func_0b06:
	push hl                                          ; $0b06: $e5
	call Call_000_0bff                               ; $0b07: $cd $ff $0b
	call Call_000_0e7a                               ; $0b0a: $cd $7a $0e
	call Call_000_0b15                               ; $0b0d: $cd $15 $0b
	pop hl                                           ; $0b10: $e1

Func_0b11:
	ld de, $0005                                     ; $0b11: $11 $05 $00
	ret                                              ; $0b14: $c9


Call_000_0b15:
	push de                                          ; $0b15: $d5
	rl d                                             ; $0b16: $cb $12
	ldh a, [rVBK]                                    ; $0b18: $f0 $4f
	xor $01                                          ; $0b1a: $ee $01
	rr a                                             ; $0b1c: $cb $1f
	rr d                                             ; $0b1e: $cb $1a
	ld a, e                                          ; $0b20: $7b
	ld [$c0d6], a                                    ; $0b21: $ea $d6 $c0
	ld a, d                                          ; $0b24: $7a
	ld [$c0d7], a                                    ; $0b25: $ea $d7 $c0
	pop de                                           ; $0b28: $d1
	ret                                              ; $0b29: $c9


Func_0b2a:
	push hl                                          ; $0b2a: $e5
	push hl                                          ; $0b2b: $e5
	ld bc, $0005                                     ; $0b2c: $01 $05 $00
	add hl, bc                                       ; $0b2f: $09
	ld a, [hl+]                                      ; $0b30: $2a
	ld b, [hl]                                       ; $0b31: $46
	ld c, a                                          ; $0b32: $4f
	pop hl                                           ; $0b33: $e1
	call Call_000_0bff                               ; $0b34: $cd $ff $0b
	call Call_000_0c81                               ; $0b37: $cd $81 $0c
	pop hl                                           ; $0b3a: $e1
	ld de, $0007                                     ; $0b3b: $11 $07 $00
	ret                                              ; $0b3e: $c9


Func_0b3f:
	push hl                                          ; $0b3f: $e5
	call Call_000_0c11                               ; $0b40: $cd $11 $0c
	push de                                          ; $0b43: $d5
	call Call_000_0e7a                               ; $0b44: $cd $7a $0e
	call Call_000_0b15                               ; $0b47: $cd $15 $0b
	pop hl                                           ; $0b4a: $e1
	ld a, e                                          ; $0b4b: $7b
	sub l                                            ; $0b4c: $95
	ld c, a                                          ; $0b4d: $4f
	ld a, d                                          ; $0b4e: $7a
	sbc h                                            ; $0b4f: $9c
	ld b, a                                          ; $0b50: $47
	call Call_000_1214                               ; $0b51: $cd $14 $12
	pop hl                                           ; $0b54: $e1
	ld de, $0005                                     ; $0b55: $11 $05 $00
	ret                                              ; $0b58: $c9


Func_0b59:
	push hl                                          ; $0b59: $e5
	call Call_000_0c2e                               ; $0b5a: $cd $2e $0c
	call Call_000_0d58                               ; $0b5d: $cd $58 $0d
	pop hl                                           ; $0b60: $e1
	ld a, [$d820]                                    ; $0b61: $fa $20 $d8
	bit 7, a                                         ; $0b64: $cb $7f
	ld de, $0006                                     ; $0b66: $11 $06 $00
	ret z                                            ; $0b69: $c8

	dec de                                           ; $0b6a: $1b
	ret                                              ; $0b6b: $c9


Func_0b6c:
	push hl                                          ; $0b6c: $e5
	di                                               ; $0b6d: $f3
	call Call_000_0dde                               ; $0b6e: $cd $de $0d
	ld a, $41                                        ; $0b71: $3e $41
	ldh [rLCDC], a                                   ; $0b73: $e0 $40
	ldh [hDisp0_LCDC], a                                     ; $0b75: $e0 $82
	ld a, $e4                                        ; $0b77: $3e $e4
	ldh [rBGP], a                                    ; $0b79: $e0 $47
	ldh [hDisp0_BGP], a                                     ; $0b7b: $e0 $85
	ld a, [hl]                                       ; $0b7d: $7e
	cp $03                                           ; $0b7e: $fe $03
	jr z, jr_000_0ba3                                ; $0b80: $28 $21

	call Call_000_0de5                               ; $0b82: $cd $e5 $0d
	ld de, $8800                                     ; $0b85: $11 $00 $88
	call Call_000_0e7a                               ; $0b88: $cd $7a $0e
	ld a, [$d82d]                                    ; $0b8b: $fa $2d $d8
	rst JumpTable                                          ; $0b8e: $c7
	dw Func_0b99
	dw Func_0b9e
	dw Func_0bb4
	dw Func_0bf9
	dw Func_0bb9


Func_0b99:
	ld hl, $6c5c                                     ; $0b99: $21 $5c $6c
	jr jr_000_0bd4                                   ; $0b9c: $18 $36


Func_0b9e:
	ld hl, $6c6c                                     ; $0b9e: $21 $6c $6c
	jr jr_000_0bd4                                   ; $0ba1: $18 $31

jr_000_0ba3:
	call Call_000_0de5                               ; $0ba3: $cd $e5 $0d
	ld de, $8800                                     ; $0ba6: $11 $00 $88
	ld bc, $1000                                     ; $0ba9: $01 $00 $10
	call Call_000_0c81                               ; $0bac: $cd $81 $0c
	ld hl, $6c3c                                     ; $0baf: $21 $3c $6c
	jr jr_000_0bd4                                   ; $0bb2: $18 $20


Func_0bb4:
	ld hl, $6c8c                                     ; $0bb4: $21 $8c $6c
	jr jr_000_0bd4                                   ; $0bb7: $18 $1b


Func_0bb9:
	pop hl                                           ; $0bb9: $e1
	pop de                                           ; $0bba: $d1
	pop af                                           ; $0bbb: $f1
	push af                                          ; $0bbc: $f5
	push de                                          ; $0bbd: $d5
	call SetRomBankA                               ; $0bbe: $cd $97 $07
	ld a, $03                                        ; $0bc1: $3e $03
	rst AddAOntoHL                                          ; $0bc3: $ef
	push hl                                          ; $0bc4: $e5
	call Call_000_0de5                               ; $0bc5: $cd $e5 $0d
	ld de, $9000                                     ; $0bc8: $11 $00 $90
	ld bc, $0060                                     ; $0bcb: $01 $60 $00
	call Call_000_0c81                               ; $0bce: $cd $81 $0c
	ld hl, $6c7c                                     ; $0bd1: $21 $7c $6c

jr_000_0bd4:
	ldh a, [rSCX]                                    ; $0bd4: $f0 $43
	push af                                          ; $0bd6: $f5
	ldh a, [rSCY]                                    ; $0bd7: $f0 $42
	push af                                          ; $0bd9: $f5
	xor a                                            ; $0bda: $af
	ldh [rSCX], a                                    ; $0bdb: $e0 $43
	ldh [rSCY], a                                    ; $0bdd: $e0 $42
	ld a, $c1                                        ; $0bdf: $3e $c1
	ldh [rLCDC], a                                   ; $0be1: $e0 $40
	ldh [hDisp0_LCDC], a                                     ; $0be3: $e0 $82
	ld a, $05                                        ; $0be5: $3e $05
	call SetRomBankA                               ; $0be7: $cd $97 $07
	call $69d5                                       ; $0bea: $cd $d5 $69
	ld bc, $0004                                     ; $0bed: $01 $04 $00
	call $6a54                                       ; $0bf0: $cd $54 $6a
	pop af                                           ; $0bf3: $f1
	ldh [rSCY], a                                    ; $0bf4: $e0 $42
	pop af                                           ; $0bf6: $f1
	ldh [rSCX], a                                    ; $0bf7: $e0 $43

Func_0bf9:
	ei                                               ; $0bf9: $fb
	pop hl                                           ; $0bfa: $e1
	ld de, $0004                                     ; $0bfb: $11 $04 $00
	ret                                              ; $0bfe: $c9


Call_000_0bff:
	call Call_000_0c11                               ; $0bff: $cd $11 $0c
	push af                                          ; $0c02: $f5

; Vram bank = 1 if bit 7 clear on DE (not in right range)
	rlc d                                            ; $0c03: $cb $02
	ld a, $01                                        ; $0c05: $3e $01
	xor d                                            ; $0c07: $aa
	and $01                                          ; $0c08: $e6 $01
	ldh [rVBK], a                                    ; $0c0a: $e0 $4f

; Set bit 7 regardless to keep dest in the right range
	scf                                              ; $0c0c: $37
	rr d                                             ; $0c0d: $cb $1a
	pop af                                           ; $0c0f: $f1
	ret                                              ; $0c10: $c9


; hl - eg c1df, containing 5e, 7cab, 8a40
Call_000_0c11:
; Get A, DE in HL, pushing DE (returned as HL)
	ld a, [hl+]                                      ; $0c11: $2a
	ld e, [hl]                                       ; $0c12: $5e
	inc hl                                           ; $0c13: $23
	ld d, [hl]                                       ; $0c14: $56
	push de                                          ; $0c15: $d5
	inc hl                                           ; $0c16: $23

; Get DE in HL, pushing A (returned as rom bank to set)
	ld e, [hl]                                       ; $0c17: $5e
	inc hl                                           ; $0c18: $23
	ld d, [hl]                                       ; $0c19: $56
	push af                                          ; $0c1a: $f5
	inc de                                           ; $0c1b: $13

; If DE != 0, return HL and set rom bank
	ld a, d                                          ; $0c1c: $7a
	or e                                             ; $0c1d: $b3
	dec de                                           ; $0c1e: $1b
	jr nz, .end                               ; $0c1f: $20 $08

; else get DE from...
	ld a, [$c0d6]                                    ; $0c21: $fa $d6 $c0
	ld e, a                                          ; $0c24: $5f
	ld a, [$c0d7]                                    ; $0c25: $fa $d7 $c0
	ld d, a                                          ; $0c28: $57

.end:
	pop af                                           ; $0c29: $f1
	pop hl                                           ; $0c2a: $e1
	jp SetRomBankA                                 ; $0c2b: $c3 $97 $07


Call_000_0c2e:
	ld a, [hl+]                                      ; $0c2e: $2a
	ld [$d821], a                                    ; $0c2f: $ea $21 $d8
	ld a, [hl+]                                      ; $0c32: $2a
	ld [$d822], a                                    ; $0c33: $ea $22 $d8
	ld a, [hl+]                                      ; $0c36: $2a
	ld [$d823], a                                    ; $0c37: $ea $23 $d8
	ld a, [hl+]                                      ; $0c3a: $2a
	ld [$d824], a                                    ; $0c3b: $ea $24 $d8
	ld a, [hl+]                                      ; $0c3e: $2a
	ld [$d825], a                                    ; $0c3f: $ea $25 $d8
	ld a, [hl+]                                      ; $0c42: $2a
	ld [$d820], a                                    ; $0c43: $ea $20 $d8
	ld a, [hl+]                                      ; $0c46: $2a
	ld [$d826], a                                    ; $0c47: $ea $26 $d8
	ld a, [$d820]                                    ; $0c4a: $fa $20 $d8
	and $03                                          ; $0c4d: $e6 $03
	rst JumpTable                                          ; $0c4f: $c7
	ld a, e                                          ; $0c50: $7b
	inc c                                            ; $0c51: $0c
	pop bc                                           ; $0c52: $c1
	inc c                                            ; $0c53: $0c
	ei                                               ; $0c54: $fb
	inc c                                            ; $0c55: $0c
	ccf                                              ; $0c56: $3f
	dec c                                            ; $0c57: $0d

Call_000_0c58:
	ld a, [$d821]                                    ; $0c58: $fa $21 $d8
	ld l, a                                          ; $0c5b: $6f
	ld a, [$d822]                                    ; $0c5c: $fa $22 $d8
	ld h, a                                          ; $0c5f: $67
	ld a, [$d823]                                    ; $0c60: $fa $23 $d8
	ld e, a                                          ; $0c63: $5f
	ld a, [$d824]                                    ; $0c64: $fa $24 $d8
	ld d, a                                          ; $0c67: $57
	ld a, [$d825]                                    ; $0c68: $fa $25 $d8
	ld c, a                                          ; $0c6b: $4f
	ld b, $00                                        ; $0c6c: $06 $00
	rlc d                                            ; $0c6e: $cb $02
	ld a, $01                                        ; $0c70: $3e $01
	xor d                                            ; $0c72: $aa
	and $01                                          ; $0c73: $e6 $01
	ldh [rVBK], a                                    ; $0c75: $e0 $4f
	scf                                              ; $0c77: $37
	rr d                                             ; $0c78: $cb $1a
	ret                                              ; $0c7a: $c9


	call Call_000_0c58                               ; $0c7b: $cd $58 $0c
	call $cee3                                       ; $0c7e: $cd $e3 $ce

Call_000_0c81:
	ld a, [$c12b]                                    ; $0c81: $fa $2b $c1
	or a                                             ; $0c84: $b7
	jp z, $cfbc                                      ; $0c85: $ca $bc $cf

	dec a                                            ; $0c88: $3d
	jp nz, $cfda                                     ; $0c89: $c2 $da $cf

	ld a, [wRomBank]                                    ; $0c8c: $fa $03 $c1
	ld [$c0d0], a                                    ; $0c8f: $ea $d0 $c0
	push hl                                          ; $0c92: $e5
	ld l, e                                          ; $0c93: $6b
	ld h, d                                          ; $0c94: $62
	pop de                                           ; $0c95: $d1

jr_000_0c96:
	ld a, b                                          ; $0c96: $78
	or b                                             ; $0c97: $b0
	jr nz, jr_000_0c9f                               ; $0c98: $20 $05

	ld a, c                                          ; $0c9a: $79
	cp $20                                           ; $0c9b: $fe $20
	jr c, jr_000_0ca1                                ; $0c9d: $38 $02

jr_000_0c9f:
	ld a, $20                                        ; $0c9f: $3e $20

jr_000_0ca1:
	push af                                          ; $0ca1: $f5
	cpl                                              ; $0ca2: $2f
	inc a                                            ; $0ca3: $3c
	add c                                            ; $0ca4: $81
	ld c, a                                          ; $0ca5: $4f
	jr c, jr_000_0ca9                                ; $0ca6: $38 $01

	dec b                                            ; $0ca8: $05

jr_000_0ca9:
	pop af                                           ; $0ca9: $f1
	push bc                                          ; $0caa: $c5
	push hl                                          ; $0cab: $e5
	push de                                          ; $0cac: $d5
	push af                                          ; $0cad: $f5
	call EnqueueDataCopyType4Header                               ; $0cae: $cd $75 $16
	pop af                                           ; $0cb1: $f1
	pop hl                                           ; $0cb2: $e1
	ld b, $00                                        ; $0cb3: $06 $00
	ld c, a                                          ; $0cb5: $4f
	add hl, bc                                       ; $0cb6: $09
	ld e, l                                          ; $0cb7: $5d
	ld d, h                                          ; $0cb8: $54
	pop hl                                           ; $0cb9: $e1
	add hl, bc                                       ; $0cba: $09
	pop bc                                           ; $0cbb: $c1
	ld a, b                                          ; $0cbc: $78
	or c                                             ; $0cbd: $b1
	jr nz, jr_000_0c96                               ; $0cbe: $20 $d6

	ret                                              ; $0cc0: $c9


	call Call_000_0c58                               ; $0cc1: $cd $58 $0c

jr_000_0cc4:
	call Call_000_0ccb                               ; $0cc4: $cd $cb $0c
	dec c                                            ; $0cc7: $0d
	jr nz, jr_000_0cc4                               ; $0cc8: $20 $fa

	ret                                              ; $0cca: $c9


Call_000_0ccb:
	push bc                                          ; $0ccb: $c5
	push de                                          ; $0ccc: $d5
	call Call_000_0cde                               ; $0ccd: $cd $de $0c
	pop de                                           ; $0cd0: $d1
	push hl                                          ; $0cd1: $e5
	ld hl, $d830                                     ; $0cd2: $21 $30 $d8
	ld bc, $0010                                     ; $0cd5: $01 $10 $00
	call $cfda                                       ; $0cd8: $cd $da $cf
	pop hl                                           ; $0cdb: $e1
	pop bc                                           ; $0cdc: $c1
	ret                                              ; $0cdd: $c9


Call_000_0cde:
	ld bc, $000e                                     ; $0cde: $01 $0e $00
	add hl, bc                                       ; $0ce1: $09
	ld de, $d830                                     ; $0ce2: $11 $30 $d8
	ld b, $08                                        ; $0ce5: $06 $08

jr_000_0ce7:
	push bc                                          ; $0ce7: $c5
	ld bc, $0002                                     ; $0ce8: $01 $02 $00
	call $cfda                                       ; $0ceb: $cd $da $cf
	ld bc, $fffc                                     ; $0cee: $01 $fc $ff
	add hl, bc                                       ; $0cf1: $09
	pop bc                                           ; $0cf2: $c1
	dec b                                            ; $0cf3: $05
	jr nz, jr_000_0ce7                               ; $0cf4: $20 $f1

	ld bc, $0012                                     ; $0cf6: $01 $12 $00
	add hl, bc                                       ; $0cf9: $09
	ret                                              ; $0cfa: $c9


	call Call_000_0c58                               ; $0cfb: $cd $58 $0c

jr_000_0cfe:
	call Call_000_0d05                               ; $0cfe: $cd $05 $0d
	dec c                                            ; $0d01: $0d
	jr nz, jr_000_0cfe                               ; $0d02: $20 $fa

	ret                                              ; $0d04: $c9


Call_000_0d05:
	ld b, $10                                        ; $0d05: $06 $10

jr_000_0d07:
	push bc                                          ; $0d07: $c5
	di                                               ; $0d08: $f3

; Wait until in hblank/vblank
:	ldh a, [rSTAT]                                   ; $0d09: $f0 $41
	bit 1, a                                         ; $0d0b: $cb $4f
	jr nz, :-                               ; $0d0d: $20 $fa

	ld a, [hl+]                                      ; $0d0f: $2a
	ei                                               ; $0d10: $fb
	call Call_000_0d25                               ; $0d11: $cd $25 $0d
	push af                                          ; $0d14: $f5
	di                                               ; $0d15: $f3

; Wait until in hblank/vblank
:	ldh a, [rSTAT]                                   ; $0d16: $f0 $41
	bit 1, a                                         ; $0d18: $cb $4f
	jr nz, :-                               ; $0d1a: $20 $fa

	pop af                                           ; $0d1c: $f1
	ld [de], a                                       ; $0d1d: $12
	ei                                               ; $0d1e: $fb
	inc de                                           ; $0d1f: $13
	pop bc                                           ; $0d20: $c1
	dec b                                            ; $0d21: $05
	jr nz, jr_000_0d07                               ; $0d22: $20 $e3

	ret                                              ; $0d24: $c9


Call_000_0d25:
	rla                                              ; $0d25: $17
	rr b                                             ; $0d26: $cb $18
	rla                                              ; $0d28: $17
	rr b                                             ; $0d29: $cb $18
	rla                                              ; $0d2b: $17
	rr b                                             ; $0d2c: $cb $18
	rla                                              ; $0d2e: $17
	rr b                                             ; $0d2f: $cb $18
	rla                                              ; $0d31: $17
	rr b                                             ; $0d32: $cb $18
	rla                                              ; $0d34: $17
	rr b                                             ; $0d35: $cb $18
	rla                                              ; $0d37: $17
	rr b                                             ; $0d38: $cb $18
	rla                                              ; $0d3a: $17
	rr b                                             ; $0d3b: $cb $18
	ld a, b                                          ; $0d3d: $78
	ret                                              ; $0d3e: $c9


	call Call_000_0c58                               ; $0d3f: $cd $58 $0c

jr_000_0d42:
	push bc                                          ; $0d42: $c5
	call Call_000_0ccb                               ; $0d43: $cd $cb $0c
	push hl                                          ; $0d46: $e5
	push de                                          ; $0d47: $d5
	ld bc, $fff0                                     ; $0d48: $01 $f0 $ff
	add hl, bc                                       ; $0d4b: $09
	ld e, l                                          ; $0d4c: $5d
	ld d, h                                          ; $0d4d: $54
	call Call_000_0d05                               ; $0d4e: $cd $05 $0d
	pop de                                           ; $0d51: $d1
	pop hl                                           ; $0d52: $e1
	pop bc                                           ; $0d53: $c1
	dec c                                            ; $0d54: $0d
	jr nz, jr_000_0d42                               ; $0d55: $20 $eb

	ret                                              ; $0d57: $c9


Call_000_0d58:
	ld a, [$d820]                                    ; $0d58: $fa $20 $d8
	bit 7, a                                         ; $0d5b: $cb $7f
	ret z                                            ; $0d5d: $c8

	call Call_000_0db6                               ; $0d5e: $cd $b6 $0d
	call Call_000_0c58                               ; $0d61: $cd $58 $0c
	ld l, e                                          ; $0d64: $6b
	ld h, d                                          ; $0d65: $62

jr_000_0d66:
	push bc                                          ; $0d66: $c5
	push de                                          ; $0d67: $d5
	ld de, $d830                                     ; $0d68: $11 $30 $d8
	ld bc, $0010                                     ; $0d6b: $01 $10 $00
	call $cfda                                       ; $0d6e: $cd $da $cf
	pop de                                           ; $0d71: $d1
	push hl                                          ; $0d72: $e5
	push de                                          ; $0d73: $d5
	call Call_000_0d87                               ; $0d74: $cd $87 $0d
	pop de                                           ; $0d77: $d1
	ld hl, $d830                                     ; $0d78: $21 $30 $d8
	ld bc, $0010                                     ; $0d7b: $01 $10 $00
	call $cfda                                       ; $0d7e: $cd $da $cf
	pop hl                                           ; $0d81: $e1
	pop bc                                           ; $0d82: $c1
	dec c                                            ; $0d83: $0d
	jr nz, jr_000_0d66                               ; $0d84: $20 $e0

	ret                                              ; $0d86: $c9


Call_000_0d87:
	ld hl, $d830                                     ; $0d87: $21 $30 $d8
	ld c, $08                                        ; $0d8a: $0e $08

jr_000_0d8c:
	ld e, [hl]                                       ; $0d8c: $5e
	inc hl                                           ; $0d8d: $23
	ld d, [hl]                                       ; $0d8e: $56
	dec hl                                           ; $0d8f: $2b
	ld b, $08                                        ; $0d90: $06 $08

jr_000_0d92:
	xor a                                            ; $0d92: $af
	rl d                                             ; $0d93: $cb $12
	rla                                              ; $0d95: $17
	rl e                                             ; $0d96: $cb $13
	rla                                              ; $0d98: $17
	push hl                                          ; $0d99: $e5
	push bc                                          ; $0d9a: $c5
	ld hl, $d827                                     ; $0d9b: $21 $27 $d8
	ld c, a                                          ; $0d9e: $4f
	ld b, $00                                        ; $0d9f: $06 $00
	add hl, bc                                       ; $0da1: $09
	ld a, [hl]                                       ; $0da2: $7e
	pop bc                                           ; $0da3: $c1
	pop hl                                           ; $0da4: $e1
	rra                                              ; $0da5: $1f
	rl [hl]                                          ; $0da6: $cb $16
	inc hl                                           ; $0da8: $23
	rra                                              ; $0da9: $1f
	rl [hl]                                          ; $0daa: $cb $16
	dec hl                                           ; $0dac: $2b
	dec b                                            ; $0dad: $05
	jr nz, jr_000_0d92                               ; $0dae: $20 $e2

	inc hl                                           ; $0db0: $23
	inc hl                                           ; $0db1: $23
	dec c                                            ; $0db2: $0d
	jr nz, jr_000_0d8c                               ; $0db3: $20 $d7

	ret                                              ; $0db5: $c9


Call_000_0db6:
	ld a, [$d826]                                    ; $0db6: $fa $26 $d8
	ld b, a                                          ; $0db9: $47
	and $03                                          ; $0dba: $e6 $03
	ld [$d82a], a                                    ; $0dbc: $ea $2a $d8
	rr b                                             ; $0dbf: $cb $18
	rr b                                             ; $0dc1: $cb $18
	ld a, b                                          ; $0dc3: $78
	and $03                                          ; $0dc4: $e6 $03
	ld [$d829], a                                    ; $0dc6: $ea $29 $d8
	rr b                                             ; $0dc9: $cb $18
	rr b                                             ; $0dcb: $cb $18
	ld a, b                                          ; $0dcd: $78
	and $03                                          ; $0dce: $e6 $03
	ld [$d828], a                                    ; $0dd0: $ea $28 $d8
	rr b                                             ; $0dd3: $cb $18
	rr b                                             ; $0dd5: $cb $18
	ld a, b                                          ; $0dd7: $78
	and $03                                          ; $0dd8: $e6 $03
	ld [$d827], a                                    ; $0dda: $ea $27 $d8
	ret                                              ; $0ddd: $c9


Call_000_0dde:
jr_000_0dde:
	ldh a, [rLY]                                     ; $0dde: $f0 $44
	cp $94                                           ; $0de0: $fe $94
	jr nz, jr_000_0dde                               ; $0de2: $20 $fa

	ret                                              ; $0de4: $c9


Call_000_0de5:
	ld a, [hl+]                                      ; $0de5: $2a
	ld [$d82d], a                                    ; $0de6: $ea $2d $d8
	ld a, [hl+]                                      ; $0de9: $2a
	ld b, a                                          ; $0dea: $47
	ld a, [hl+]                                      ; $0deb: $2a
	ld e, a                                          ; $0dec: $5f
	ld a, [hl]                                       ; $0ded: $7e
	ld h, a                                          ; $0dee: $67
	ld l, e                                          ; $0def: $6b
	ld a, b                                          ; $0df0: $78
	jp SetRomBankA                                 ; $0df1: $c3 $97 $07


Jump_000_0df4:
	push hl                                          ; $0df4: $e5
	push de                                          ; $0df5: $d5
	push af                                          ; $0df6: $f5
	add $80                                          ; $0df7: $c6 $80
	ld c, a                                          ; $0df9: $4f
	pop af                                           ; $0dfa: $f1
	ld a, c                                          ; $0dfb: $79
	call Call_000_0ece                               ; $0dfc: $cd $ce $0e
	pop hl                                           ; $0dff: $e1
	inc hl                                           ; $0e00: $23

jr_000_0e01:
	push hl                                          ; $0e01: $e5
	ld de, $0007                                     ; $0e02: $11 $07 $00
	add hl, de                                       ; $0e05: $19
	pop de                                           ; $0e06: $d1
	ld c, [hl]                                       ; $0e07: $4e
	ld a, [de]                                       ; $0e08: $1a
	ld b, a                                          ; $0e09: $47
	push bc                                          ; $0e0a: $c5
	inc hl                                           ; $0e0b: $23
	inc de                                           ; $0e0c: $13
	ld c, [hl]                                       ; $0e0d: $4e
	ld a, [de]                                       ; $0e0e: $1a
	ld b, a                                          ; $0e0f: $47
	push bc                                          ; $0e10: $c5
	inc hl                                           ; $0e11: $23
	inc de                                           ; $0e12: $13
	ld c, [hl]                                       ; $0e13: $4e
	ld a, [de]                                       ; $0e14: $1a
	ld b, a                                          ; $0e15: $47
	push bc                                          ; $0e16: $c5
	inc hl                                           ; $0e17: $23
	inc de                                           ; $0e18: $13
	ld c, [hl]                                       ; $0e19: $4e
	ld a, [de]                                       ; $0e1a: $1a
	ld b, a                                          ; $0e1b: $47
	push bc                                          ; $0e1c: $c5
	inc hl                                           ; $0e1d: $23
	inc de                                           ; $0e1e: $13
	ld c, [hl]                                       ; $0e1f: $4e
	ld a, [de]                                       ; $0e20: $1a
	ld b, a                                          ; $0e21: $47
	push bc                                          ; $0e22: $c5
	inc hl                                           ; $0e23: $23
	inc de                                           ; $0e24: $13
	ld c, [hl]                                       ; $0e25: $4e
	ld a, [de]                                       ; $0e26: $1a
	ld b, a                                          ; $0e27: $47
	push bc                                          ; $0e28: $c5
	inc hl                                           ; $0e29: $23
	inc de                                           ; $0e2a: $13
	ld c, [hl]                                       ; $0e2b: $4e
	ld a, [de]                                       ; $0e2c: $1a
	ld [hl-], a                                      ; $0e2d: $32
	ld a, c                                          ; $0e2e: $79
	ld [hl-], a                                      ; $0e2f: $32
	pop bc                                           ; $0e30: $c1
	ld [hl], b                                       ; $0e31: $70
	dec hl                                           ; $0e32: $2b
	ld [hl], c                                       ; $0e33: $71
	dec hl                                           ; $0e34: $2b
	pop bc                                           ; $0e35: $c1
	ld [hl], b                                       ; $0e36: $70
	dec hl                                           ; $0e37: $2b
	ld [hl], c                                       ; $0e38: $71
	dec hl                                           ; $0e39: $2b
	pop bc                                           ; $0e3a: $c1
	ld [hl], b                                       ; $0e3b: $70
	dec hl                                           ; $0e3c: $2b
	ld [hl], c                                       ; $0e3d: $71
	dec hl                                           ; $0e3e: $2b
	pop bc                                           ; $0e3f: $c1
	ld [hl], b                                       ; $0e40: $70
	dec hl                                           ; $0e41: $2b
	ld [hl], c                                       ; $0e42: $71
	dec hl                                           ; $0e43: $2b
	pop bc                                           ; $0e44: $c1
	ld [hl], b                                       ; $0e45: $70
	dec hl                                           ; $0e46: $2b
	ld [hl], c                                       ; $0e47: $71
	dec hl                                           ; $0e48: $2b
	pop bc                                           ; $0e49: $c1
	ld [hl], b                                       ; $0e4a: $70
	dec hl                                           ; $0e4b: $2b
	ld [hl], c                                       ; $0e4c: $71
	ld bc, $0010                                     ; $0e4d: $01 $10 $00
	add hl, bc                                       ; $0e50: $09
	ld a, [$c0d2]                                    ; $0e51: $fa $d2 $c0
	cp l                                             ; $0e54: $bd
	ld a, [$c0d3]                                    ; $0e55: $fa $d3 $c0
	sbc h                                            ; $0e58: $9c
	jr nc, jr_000_0e01                               ; $0e59: $30 $a6

	ld a, [$c0d2]                                    ; $0e5b: $fa $d2 $c0
	ld e, a                                          ; $0e5e: $5f
	ld a, [$c0d3]                                    ; $0e5f: $fa $d3 $c0
	ld d, a                                          ; $0e62: $57
	pop hl                                           ; $0e63: $e1
	ret                                              ; $0e64: $c9


Jump_000_0e65:
	pop bc                                           ; $0e65: $c1
	ld a, e                                          ; $0e66: $7b
	ld [$c0d2], a                                    ; $0e67: $ea $d2 $c0
	ld a, d                                          ; $0e6a: $7a
	ld [$c0d3], a                                    ; $0e6b: $ea $d3 $c0
	ret                                              ; $0e6e: $c9


	ld e, l                                          ; $0e6f: $5d
	ld d, h                                          ; $0e70: $54
	pop hl                                           ; $0e71: $e1
	ret                                              ; $0e72: $c9


	ld a, $01                                        ; $0e73: $3e $01
	cp $af                                           ; $0e75: $fe $af
	ld [$c12c], a                                    ; $0e77: $ea $2c $c1

; DE -
Call_000_0e7a:
	ld a, [$c12b]                                    ; $0e7a: $fa $2b $c1
	and a                                            ; $0e7d: $a7
	jr z, .br_0e8a                                ; $0e7e: $28 $0a

; If DE in vram region, display tile data
	ld a, d                                          ; $0e80: $7a
	cp $80                                           ; $0e81: $fe $80
	jr c, .br_0e8a                                ; $0e83: $38 $05

	cp $a0                                           ; $0e85: $fe $a0
	jp c, DisplayTileDataFromCtrlBytes                              ; $0e87: $da $71 $10

.br_0e8a:
	push de                                          ; $0e8a: $d5
	call Call_000_0ebd                               ; $0e8b: $cd $bd $0e
	pop bc                                           ; $0e8e: $c1
	ld a, [$c12c]                                    ; $0e8f: $fa $2c $c1
	and a                                            ; $0e92: $a7
	ret z                                            ; $0e93: $c8

	push hl                                          ; $0e94: $e5
	push de                                          ; $0e95: $d5
	call wSwapDEandHL                                       ; $0e96: $cd $d4 $ce
	call wHLminusEquBC                                       ; $0e99: $cd $aa $ce
	call wSwapBCandHL                                       ; $0e9c: $cd $d9 $ce
	pop hl                                           ; $0e9f: $e1
	push hl                                          ; $0ea0: $e5
	push bc                                          ; $0ea1: $c5
	ld e, l                                          ; $0ea2: $5d
	ld d, h                                          ; $0ea3: $54
	add hl, bc                                       ; $0ea4: $09
	dec hl                                           ; $0ea5: $2b

.loop_0ea6:
	dec de                                           ; $0ea6: $1b
	ld a, [de]                                       ; $0ea7: $1a
	and $0f                                          ; $0ea8: $e6 $0f
	ld [hl-], a                                      ; $0eaa: $32
	ld a, [de]                                       ; $0eab: $1a
	swap a                                           ; $0eac: $cb $37
	and $0f                                          ; $0eae: $e6 $0f
	ld [hl-], a                                      ; $0eb0: $32
	dec bc                                           ; $0eb1: $0b
	ld a, b                                          ; $0eb2: $78
	or c                                             ; $0eb3: $b1
	jr nz, .loop_0ea6                               ; $0eb4: $20 $f0

	pop bc                                           ; $0eb6: $c1
	pop hl                                           ; $0eb7: $e1
	add hl, bc                                       ; $0eb8: $09
	pop de                                           ; $0eb9: $d1
	jp wSwapDEandHL                                         ; $0eba: $c3 $d4 $ce


Call_000_0ebd:
	ld a, l                                          ; $0ebd: $7d
	add [hl]                                         ; $0ebe: $86
	ld [$c0d0], a                                    ; $0ebf: $ea $d0 $c0
	ld a, h                                          ; $0ec2: $7c

; Inc src address, looping around bank if needed
	inc hl                                           ; $0ec3: $23
	bit 7, h                                         ; $0ec4: $cb $7c
	call nz, IncRomBankLoopHLforBankedRom                           ; $0ec6: $c4 $06 $12

;
	bit 7, [hl]                                      ; $0ec9: $cb $7e
	jp nz, Jump_000_0df4                             ; $0ecb: $c2 $f4 $0d

Call_000_0ece:
	adc [hl]                                         ; $0ece: $8e
	ld [$c0d1], a                                    ; $0ecf: $ea $d1 $c0

; Inc src address, looping around bank if needed
	inc hl                                           ; $0ed2: $23
	bit 7, h                                         ; $0ed3: $cb $7c
	call nz, IncRomBankLoopHLforBankedRom                           ; $0ed5: $c4 $06 $12

;
	ld a, [$c0d1]                                    ; $0ed8: $fa $d1 $c0
	bit 7, a                                         ; $0edb: $cb $7f
	jr z, jr_000_0ee4                                ; $0edd: $28 $05

	sub $40                                          ; $0edf: $d6 $40
	ld [$c0d1], a                                    ; $0ee1: $ea $d1 $c0

jr_000_0ee4:
	ld bc, $0ee4                                     ; $0ee4: $01 $e4 $0e
	push bc                                          ; $0ee7: $c5
	ld a, [$c0d1]                                    ; $0ee8: $fa $d1 $c0
	cp h                                             ; $0eeb: $bc
	jr nz, jr_000_0ef5                               ; $0eec: $20 $07

	ld a, [$c0d0]                                    ; $0eee: $fa $d0 $c0
	cp l                                             ; $0ef1: $bd
	jp z, Jump_000_0e65                              ; $0ef2: $ca $65 $0e

jr_000_0ef5:
	ld a, [hl+]                                      ; $0ef5: $2a
	bit 7, h                                         ; $0ef6: $cb $7c
	call nz, IncRomBankLoopHLforBankedRom                           ; $0ef8: $c4 $06 $12
	cp $80                                           ; $0efb: $fe $80
	jr c, jr_000_0f35                                ; $0efd: $38 $36

	cp $a0                                           ; $0eff: $fe $a0
	jr c, jr_000_0f72                                ; $0f01: $38 $6f

	cp $c0                                           ; $0f03: $fe $c0
	jr c, jr_000_0f85                                ; $0f05: $38 $7e

	cp $e0                                           ; $0f07: $fe $e0
	jp c, Jump_000_0f99                              ; $0f09: $da $99 $0f

	cp $e1                                           ; $0f0c: $fe $e1
	jr nc, jr_000_0f23                               ; $0f0e: $30 $13

	ld a, [hl+]                                      ; $0f10: $2a
	bit 7, h                                         ; $0f11: $cb $7c
	call nz, IncRomBankLoopHLforBankedRom                           ; $0f13: $c4 $06 $12

jr_000_0f16:
	push af                                          ; $0f16: $f5
	ld a, $e3                                        ; $0f17: $3e $e3
	call Call_000_0f23                               ; $0f19: $cd $23 $0f
	pop af                                           ; $0f1c: $f1
	add $1e                                          ; $0f1d: $c6 $1e
	cp $e1                                           ; $0f1f: $fe $e1
	jr c, jr_000_0f16                                ; $0f21: $38 $f3

Call_000_0f23:
jr_000_0f23:
	push hl                                          ; $0f23: $e5
	ld hl, $0e6f                                     ; $0f24: $21 $6f $0e
	push hl                                          ; $0f27: $e5
	ld l, e                                          ; $0f28: $6b
	ld h, d                                          ; $0f29: $62
	add $f0                                          ; $0f2a: $c6 $f0
	ld c, a                                          ; $0f2c: $4f
	ld a, $ca                                        ; $0f2d: $3e $ca
	adc $00                                          ; $0f2f: $ce $00
	ld b, a                                          ; $0f31: $47
	push bc                                          ; $0f32: $c5
	xor a                                            ; $0f33: $af
	ret                                              ; $0f34: $c9


jr_000_0f35:
	srl a                                            ; $0f35: $cb $3f
	srl a                                            ; $0f37: $cb $3f
	ld c, a                                          ; $0f39: $4f
	sla a                                            ; $0f3a: $cb $27
	add c                                            ; $0f3c: $81
	add $80                                          ; $0f3d: $c6 $80
	ld c, a                                          ; $0f3f: $4f
	ld a, $cc                                        ; $0f40: $3e $cc
	adc $00                                          ; $0f42: $ce $00
	ld b, a                                          ; $0f44: $47
	push hl                                          ; $0f45: $e5
	call Call_000_0f51                               ; $0f46: $cd $51 $0f
	pop hl                                           ; $0f49: $e1

; Inc src address, looping around bank if needed
	inc hl                                           ; $0f4a: $23
	bit 7, h                                         ; $0f4b: $cb $7c
	call nz, IncRomBankLoopHLforBankedRom                           ; $0f4d: $c4 $06 $12
	ret                                              ; $0f50: $c9


Call_000_0f51:
	push bc                                          ; $0f51: $c5
	ld c, [hl]                                       ; $0f52: $4e
	dec hl                                           ; $0f53: $2b
	bit 6, h                                         ; $0f54: $cb $74
	jr nz, jr_000_0f67                               ; $0f56: $20 $0f

	set 6, h                                         ; $0f58: $cb $f4
	ld a, [wRomBank]                                    ; $0f5a: $fa $03 $c1
	dec a                                            ; $0f5d: $3d
	call SetRomBankA                               ; $0f5e: $cd $97 $07
	ld a, [hl+]                                      ; $0f61: $2a
	call IncRomBankLoopHLforBankedRom                               ; $0f62: $cd $06 $12
	jr jr_000_0f68                                   ; $0f65: $18 $01

jr_000_0f67:
	ld a, [hl+]                                      ; $0f67: $2a

jr_000_0f68:
	or $fc                                           ; $0f68: $f6 $fc
	ld b, a                                          ; $0f6a: $47
	ld h, a                                          ; $0f6b: $67
	ld l, c                                          ; $0f6c: $69
	add hl, de                                       ; $0f6d: $19
	ld a, [hl+]                                      ; $0f6e: $2a
	ld [de], a                                       ; $0f6f: $12
	inc de                                           ; $0f70: $13
	ret                                              ; $0f71: $c9


jr_000_0f72:
	and $7f                                          ; $0f72: $e6 $7f
	ld c, a                                          ; $0f74: $4f
	ld a, $1f                                        ; $0f75: $3e $1f
	sub c                                            ; $0f77: $91
	ld c, a                                          ; $0f78: $4f

jr_000_0f79:
	ld a, [hl+]                                      ; $0f79: $2a
	ld [de], a                                       ; $0f7a: $12
	inc de                                           ; $0f7b: $13
	bit 7, h                                         ; $0f7c: $cb $7c
	call nz, IncRomBankLoopHLforBankedRom                           ; $0f7e: $c4 $06 $12
	dec c                                            ; $0f81: $0d
	jr nz, jr_000_0f79                               ; $0f82: $20 $f5

	ret                                              ; $0f84: $c9


jr_000_0f85:
	sub $a0                                          ; $0f85: $d6 $a0
	add $df                                          ; $0f87: $c6 $df
	ld b, a                                          ; $0f89: $47

jr_000_0f8a:
	xor a                                            ; $0f8a: $af
	ld [de], a                                       ; $0f8b: $12
	inc de                                           ; $0f8c: $13
	ld a, [hl+]                                      ; $0f8d: $2a
	ld [de], a                                       ; $0f8e: $12
	inc de                                           ; $0f8f: $13
	bit 7, h                                         ; $0f90: $cb $7c
	call nz, IncRomBankLoopHLforBankedRom                           ; $0f92: $c4 $06 $12
	inc b                                            ; $0f95: $04
	jr nz, jr_000_0f8a                               ; $0f96: $20 $f2

	ret                                              ; $0f98: $c9


Jump_000_0f99:
	add $11                                          ; $0f99: $c6 $11
	ld c, a                                          ; $0f9b: $4f
	ld a, $cb                                        ; $0f9c: $3e $cb
	adc $00                                          ; $0f9e: $ce $00
	ld b, a                                          ; $0fa0: $47
	ld a, [hl+]                                      ; $0fa1: $2a
	bit 7, h                                         ; $0fa2: $cb $7c
	call nz, IncRomBankLoopHLforBankedRom                           ; $0fa4: $c4 $06 $12
	push hl                                          ; $0fa7: $e5
	ld hl, $0e6f                                     ; $0fa8: $21 $6f $0e
	push hl                                          ; $0fab: $e5
	ld l, e                                          ; $0fac: $6b
	ld h, d                                          ; $0fad: $62
	push bc                                          ; $0fae: $c5
	ld [hl+], a                                      ; $0faf: $22
	ret                                              ; $0fb0: $c9


; A - high byte of src address
; DE - tile data dest
; HL - tile data ctrl bytes src address
FillDisplayAndInterleaveGenericTileDataBuffer:
	push hl                                                         ; $0fb1
	push de                                                         ; $0fb2

; Add $80 to src high byte, to negate the bit 7 set on it
	add $80                                                         ; $0fb3
	call FillAndDisplayGenericTileDataBuffer                        ; $0fb5

; Final effect is 0123456789ABCDEF -> 08192a3b4c5d6e7f
; HL = tile data dest+1
	pop hl                                                          ; $0fb8
	inc hl                                                          ; $0fb9

.next10hBytes:
; DE = HL, HL = HL + 7
	push hl                                                         ; $0fba
	ld de, $0007                                                    ; $0fbb
	add hl, de                                                      ; $0fbe
	pop de                                                          ; $0fbf
	di                                                              ; $0fc0

rept 6

; Wait until in hblank/vblank
:	ldh a, [rSTAT]                                                  ; $0fc1
	bit 1, a                                                        ; $0fc3
	jr nz, :-                                                       ; $0fc5

; BC = [de][hl], push BC, and inc both sources
	ld c, [hl]                                                      ; $0fc7
	ld a, [de]                                                      ; $0fc8
	ei                                                              ; $0fc9
	ld b, a                                                         ; $0fca
	push bc                                                         ; $0fcb

	inc hl                                                          ; $0fcc
	inc de                                                          ; $0fcd
	di                                                              ; $0fce

endr

; Wait until in hblank/vblank
:	ldh a, [rSTAT]                                                  ; $1015
	bit 1, a                                                        ; $1017
	jr nz, :-                                                       ; $1019

; BC = 7th [de][hl]
	ld c, [hl]                                                      ; $101b
	ld a, [de]                                                      ; $101c
	ei                                                              ; $101d
	ld b, a                                                         ; $101e
	di                                                              ; $101f

; Wait until in hblank/vblank
:	ldh a, [rSTAT]                                                  ; $1020
	bit 1, a                                                        ; $1022
	jr nz, :-                                                       ; $1024

; Store highest DE (orig HL), and highest HL (orig HL+7) into highest HL, pop 1 BC above
	ld [hl], b                                                      ; $1026
	dec hl                                                          ; $1027
	ld [hl], c                                                      ; $1028
	ei                                                              ; $1029
	dec hl                                                          ; $102a

	pop bc                                                          ; $102b
	di                                                              ; $102c

; Wait until in hblank/vblank
:	ldh a, [rSTAT]                                                  ; $102d
	bit 1, a                                                        ; $102f
	jr nz, :-                                                       ; $1031

; Store 2nd highest [de][hl] into HL
	ld [hl], b                                                      ; $1033
	dec hl                                                          ; $1034
	ld [hl], c                                                      ; $1035
	ei                                                              ; $1036

; Repeat above process 5 more times, for the rest of the 7 bytes
	ld e, $05                                                       ; $1037

.nextBytePair:
	dec hl                                                          ; $1039
	pop bc                                                          ; $103a
	di                                                              ; $103b

; Wait until in hblank/vblank
:	ldh a, [rSTAT]                                                  ; $103c
	bit 1, a                                                        ; $103e
	jr nz, :-                                                       ; $1040

	ld [hl], b                                                      ; $1042
	dec hl                                                          ; $1043
	ld [hl], c                                                      ; $1044
	ei                                                              ; $1045

	dec e                                                           ; $1046
	jr nz, .nextBytePair                                            ; $1047

; HL back to orig HL, +$10 to next $10-block
	ld bc, $0010                                                    ; $1049
	add hl, bc                                                      ; $104c

; Loop if HL <= final dest
	ld a, [wGenericTileDataFinalDest]                               ; $104d
	cp l                                                            ; $1050
	ld a, [wGenericTileDataFinalDest+1]                             ; $1051
	sbc h                                                           ; $1054
	jp nc, .next10hBytes                                            ; $1055

; Return with DE = final dest addr
	ld a, [wGenericTileDataFinalDest]                               ; $1058
	ld e, a                                                         ; $105b
	ld a, [wGenericTileDataFinalDest+1]                             ; $105c
	ld d, a                                                         ; $105f

	pop hl                                                          ; $1060
	ret                                                             ; $1061


; DE - tile data dest
FinishedProcessingTileDataBuffer:
; Pop self-loop above at $10a4, and save tile data final dest
	pop bc                                                          ; $1062

	ld a, e                                                         ; $1063
	ld [wGenericTileDataFinalDest], a                               ; $1064
	ld a, d                                                         ; $1067
	ld [wGenericTileDataFinalDest+1], a                             ; $1068
	ret                                                             ; $106b


PopHL_SafeMemCopyNybblesOrBytesForGenericTileData:
	pop hl                                                          ; $106c

SafeMemCopyNybblesOrBytesForGenericTileData:
	call _SafeMemCopyNybblesOrBytesForGenericTileData               ; $106d
	ret                                                             ; $1070


; DE - tile data dest
; HL - tile data ctrl bytes src address
DisplayTileDataFromCtrlBytes:
; Set starting tile data dest
	ld a, e                                                         ; $1071
	ld [wGenericTileDataDest], a                                    ; $1072
	ld a, d                                                         ; $1075
	ld [wGenericTileDataDest+1], a                                  ; $1076

; Add 1st ctrl byte onto L, to get src end low byte
	ld a, l                                                         ; $1079
	add [hl]                                                        ; $107a
	ld [wGenericTileDataSrcEnd], a                                  ; $107b
	ld a, h                                                         ; $107e

; Inc src address, looping around bank if needed
	inc hl                                                          ; $107f
	bit 7, h                                                        ; $1080
	call nz, IncRomBankLoopHLforBankedRom                           ; $1082

; Save carry from `add [hl]` in B, then include interleaving if bit 7 set on end offset
	rl b                                                            ; $1085
	bit 7, [hl]                                                     ; $1087
	jp nz, FillDisplayAndInterleaveGenericTileDataBuffer            ; $1089

; A - high byte of src address
; HL - tile data ctrl bytes src address
FillAndDisplayGenericTileDataBuffer:
; Restore above carry, then add 2nd ctrl byte onto src high byte
	rr b                                                            ; $108c
	adc [hl]                                                        ; $108e
	ld [wGenericTileDataSrcEnd+1], a                                ; $108f

; Inc src address, looping around bank if needed
	inc hl                                                          ; $1092
	bit 7, h                                                        ; $1093
	call nz, IncRomBankLoopHLforBankedRom                           ; $1095

; Loop high byte of data src end within banked rom area
	ld a, [wGenericTileDataSrcEnd+1]                                ; $1098
	bit 7, a                                                        ; $109b
	jr z, :+                                                        ; $109d

	sub $40                                                         ; $109f
	ld [wGenericTileDataSrcEnd+1], a                                ; $10a1

; Loop back here to process more bytes
:	ld bc, :-                                                       ; $10a4
	push bc                                                         ; $10a7

; Jump if HL != final data src
	ld a, [wGenericTileDataSrcEnd+1]                                ; $10a8
	cp h                                                            ; $10ab
	jr nz, .processCtrlByte                                         ; $10ac

; Once it is the last src byte, finish processing so self-loop is exited
	ld a, [wGenericTileDataSrcEnd]                                  ; $10ae
	cp l                                                            ; $10b1
	jr z, FinishedProcessingTileDataBuffer                          ; $10b2

.processCtrlByte:
; DE = tile data buffer, get ctrl byte in HL, looping to next bank if needed
	ld de, wGenericTileDataBuffer                                   ; $10b4

	ld a, [hl+]                                                     ; $10b7
	bit 7, h                                                        ; $10b8
	call nz, IncRomBankLoopHLforBankedRom                           ; $10ba

; Branch based on ctrl byte
	cp $80                                                          ; $10bd
	jp c, TileDataCtrlByteLt80h_CopyFromPrevRam                     ; $10bf

	cp $a0                                                          ; $10c2
	jp c, TileDataCtrlByte80hTo9Fh_MemCopy                          ; $10c4

	cp $c0                                                          ; $10c7
	jp c, TileDataCtrlByteA0hToBFh_AlternateClearAndCopy            ; $10c9

	cp $e0                                                          ; $10cc
	jp c, TileDataCtrlByteC0hToDFh_MemSet                           ; $10ce

; Mem clear $02 to $20 bytes
	cp $e1                                                          ; $10d1
	jr nc, MemClearTileDataBuffer                                   ; $10d3

; If ctrl byte $e0, A = another byte from src, loop address for bank if needed
	ld a, [hl+]                                                     ; $10d5
	bit 7, h                                                        ; $10d6
	call nz, IncRomBankLoopHLforBankedRom                           ; $10d8

.next1EhMemClear:
; Memclear $1e bytes
	push af                                                         ; $10db
	ld a, $e3                                                       ; $10dc
	call MemClearTileDataBuffer                                     ; $10de
	pop af                                                          ; $10e1

; Add to note that $1e will be copied, exit loop once we're past the min for last loop
	add $1e                                                         ; $10e2
	cp $e1                                                          ; $10e4
	jr c, .next1EhMemClear                                          ; $10e6

; A - $101-A = num bytes to clear
; HL - tile data ctrl/data address
MemClearTileDataBuffer:
; Store $21-<num bytes to clear>
	sub $e0                                                         ; $10e8
	ld [wGenericTileDataBytesToCopyUntil21h], a                     ; $10ea
	push hl                                                         ; $10ed

; Push this func to return to to actually copy over cleared data
	ld hl, PopHL_SafeMemCopyNybblesOrBytesForGenericTileData        ; $10ee
	push hl                                                         ; $10f1

; HL = DE = generic tile data buffer
	ld l, e                                                         ; $10f2
	ld h, d                                                         ; $10f3

; A starts from 1, this will clear $20 bytes if it is
	add LOW(wMemSets-1)                                             ; $10f4
	ld c, a                                                         ; $10f6
	ld a, HIGH(wMemSets-1)                                          ; $10f7
	adc $00                                                         ; $10f9
	ld b, a                                                         ; $10fb

; Push to return to memset, clear A for memclear
	push bc                                                         ; $10fc
	xor a                                                           ; $10fd
	ret                                                             ; $10fe


; A - tile data ctrl byte
; HL - tile data ctrl bytes src address
; A's upper 6 bits, subtracted from $21 = num bytes to copy
; A's lower 2 bits, combined with 2nd ctrl byte in HL, make a negative offset to copy from
TileDataCtrlByteLt80h_CopyFromPrevRam:
; B = A/4, ie $00-$1f
	srl a                                                           ; $10ff
	srl a                                                           ; $1101
	ld b, a                                                         ; $1103

; B = $21-above (num bytes to copy)
	ld a, $21                                                       ; $1104
	sub b                                                           ; $1106
	ld b, a                                                         ; $1107

; C = 2nd ctrl byte, dec ctrl source, jumping if still in banked rom
	ld c, [hl]                                                      ; $1108
	dec hl                                                          ; $1109
	bit 6, h                                                        ; $110a
	jr nz, .bankUnchanged                                           ; $110c

; Else loop bank+addr around to the end of the previous rom
	set 6, h                                                        ; $110e
	ld a, [wRomBank]                                                ; $1110
	dec a                                                           ; $1113
	call SetRomBankA                                                ; $1114

; Read original tile data ctrl byte (orig A param), looping around end of bank
	ld a, [hl+]                                                     ; $1117
	call IncRomBankLoopHLforBankedRom                               ; $1118
	jr :+                                                           ; $111b

.bankUnchanged:
	ld a, [hl+]                                                     ; $111d

; Set upper 6 bits on 1st ctrl byte, then skip rom past the 2nd ctrl byte
:	or $fc                                                          ; $111e

	inc hl                                                          ; $1120
	bit 7, h                                                        ; $1121
	call nz, IncRomBankLoopHLforBankedRom                           ; $1123

; Push byte after 2nd ctrl byte, HL = <1st|$fc><2nd>, ie negative offset
	push hl                                                         ; $1126
	ld h, a                                                         ; $1127
	ld l, c                                                         ; $1128

; DE = generic tile data dest, HL += DE, ie memcopy from previous ram to curr dest
	ld a, [wGenericTileDataDest]                                    ; $1129
	ld e, a                                                         ; $112c
	ld a, [wGenericTileDataDest+1]                                  ; $112d
	ld d, a                                                         ; $1130
	add hl, de                                                      ; $1131

.nextByte:
	di                                                              ; $1132

; Wait until in hblank/vblank
:	ldh a, [rSTAT]                                                  ; $1133
	bit 1, a                                                        ; $1135
	jr nz, :-                                                       ; $1137

; Memcopy
	ld a, [hl+]                                                     ; $1139
	ld [de], a                                                      ; $113a
	ei                                                              ; $113b
	inc de                                                          ; $113c

	dec b                                                           ; $113d
	jr nz, .nextByte                                                ; $113e

; Save next tile data dest
	ld a, e                                                         ; $1140
	ld [wGenericTileDataDest], a                                    ; $1141
	ld a, d                                                         ; $1144
	ld [wGenericTileDataDest+1], a                                  ; $1145

	pop hl                                                          ; $1148
	ret                                                             ; $1149


; A - num bytes to copy is $21-(A-$80+2), or $9f-A
; DE - tile data buffer
; HL - tile data ctrl bytes src address
TileDataCtrlByte80hTo9Fh_MemCopy:
; Push to return here and copy to tile data
	ld bc, SafeMemCopyNybblesOrBytesForGenericTileData              ; $114a
	push bc                                                         ; $114d

; Set a byte that affects num bytes to copy
	and $7f                                                         ; $114e
	inc a                                                           ; $1150
	inc a                                                           ; $1151
	ld [wGenericTileDataBytesToCopyUntil21h], a                     ; $1152

; C = num bytes to copy to buffer, then from when calling above safe func
	ld c, a                                                         ; $1155
	ld a, $21                                                       ; $1156
	sub c                                                           ; $1158
	ld c, a                                                         ; $1159

.nextByte:
; Memcopy
	ld a, [hl+]                                                     ; $115a
	ld [de], a                                                      ; $115b
	inc de                                                          ; $115c

; If HL now past last rom addr of $7fff, adjust bank and src address
	bit 7, h                                                        ; $115d
	call nz, IncRomBankLoopHLforBankedRom                           ; $115f

	dec c                                                           ; $1162
	jr nz, .nextByte                                                ; $1163

	ret                                                             ; $1165


; A - -A = $100-<num words to copy>
; DE - tile data buffer
; HL - tile data ctrl bytes src address
TileDataCtrlByteA0hToBFh_AlternateClearAndCopy:
; B (negative num 2 bytes to copy to buffer) = A+$3f
	sub $a0                                                         ; $1166
	add $df                                                         ; $1168
	ld b, a                                                         ; $116a

; C = -2B, ie num bytes copied into buffer, (and num to be copied from it)
	cpl                                                             ; $116b
	inc a                                                           ; $116c
	sla a                                                           ; $116d
	ld c, a                                                         ; $116f

.next2bytes:
; Copy in a 0, then a byte from src
	xor a                                                           ; $1170
	ld [de], a                                                      ; $1171
	inc de                                                          ; $1172

	ld a, [hl+]                                                     ; $1173
	ld [de], a                                                      ; $1174
	inc de                                                          ; $1175

; Loop src address to next bank if needed, then inc counter, exiting loop when 0
	bit 7, h                                                        ; $1176
	call nz, IncRomBankLoopHLforBankedRom                           ; $1178

	inc b                                                           ; $117b
	jr nz, .next2bytes                                              ; $117c

; Preserve curr src address, then copy from data buffer to dest
	push hl                                                         ; $117e
	ld hl, wGenericTileDataBuffer                                   ; $117f

	ld a, [wGenericTileDataDest]                                    ; $1182
	ld e, a                                                         ; $1185
	ld a, [wGenericTileDataDest+1]                                  ; $1186
	ld d, a                                                         ; $1189
	jr _SafeMemCopyNybblesOrBytesForGenericTileData.nextByte        ; $118a


; A - $e1-A = num bytes set, then copied
; DE - tile data buffer
; HL - tile data ctrl bytes src address
TileDataCtrlByteC0hToDFh_MemSet:
; Num bytes to copy is $21-<A-$c0>, ie $e1-A or $02 to $21
	sub $c0                                                         ; $118c
	ld [wGenericTileDataBytesToCopyUntil21h], a                     ; $118e

; BC is set to memset -1 to $1e bytes
	add LOW(wMemSets)                                               ; $1191
	ld c, a                                                         ; $1193
	ld a, HIGH(wMemSets)                                            ; $1194
	adc $00                                                         ; $1196
	ld b, a                                                         ; $1198

; A = tile data ctrl byte (memset byte)
	ld a, [hl+]                                                     ; $1199
	bit 7, h                                                        ; $119a
	call nz, IncRomBankLoopHLforBankedRom                           ; $119c

; Push safe mem copy, to copy memset below
	push hl                                                         ; $119f
	ld hl, PopHL_SafeMemCopyNybblesOrBytesForGenericTileData        ; $11a0
	push hl                                                         ; $11a3

; HL (memset dest) = tile data buffer, push memset func,
; setting 1 byte so num copied == $00 to $1f
	ld l, e                                                         ; $11a4
	ld h, d                                                         ; $11a5

	push bc                                                         ; $11a6
	ld [hl+], a                                                     ; $11a7
	ret                                                             ; $11a8


_SafeMemCopyNybblesOrBytesForGenericTileData:
	push hl                                                         ; $11a9

; C = num bytes to copy
	ld a, [wGenericTileDataBytesToCopyUntil21h]                     ; $11aa
	ld c, a                                                         ; $11ad
	ld a, $21                                                       ; $11ae
	sub c                                                           ; $11b0
	ld c, a                                                         ; $11b1

; HL = src, DE = dest
	ld hl, wGenericTileDataBuffer                                   ; $11b2

	ld a, [wGenericTileDataDest]                                    ; $11b5
	ld e, a                                                         ; $11b8
	ld a, [wGenericTileDataDest+1]                                  ; $11b9
	ld d, a                                                         ; $11bc

; if this flag != 0, copy nybbles, else copy bytes
	ld a, [$c12c]                                    ; $11bd: $fa $2c $c1
	and a                                            ; $11c0: $a7
	jr nz, .memCopyNybbles                               ; $11c1: $20 $18

; C - num bytes
; DE - dest addr
; HL - src addr
.nextByte:
	di                                                              ; $11c3

; Wait until in hblank/vblank
:	ldh a, [rSTAT]                                                  ; $11c4
	bit 1, a                                                        ; $11c6
	jr nz, :-                                                       ; $11c8

; Memcopy
	ld a, [hl+]                                                     ; $11ca
	ld [de], a                                                      ; $11cb
	ei                                                              ; $11cc
	inc de                                                          ; $11cd

; To next byte
	dec c                                                           ; $11ce
	jr nz, .nextByte                                                ; $11cf

.saveNextDest:
; Save new dest addr
	ld a, e                                                         ; $11d1
	ld [wGenericTileDataDest], a                                    ; $11d2
	ld a, d                                                         ; $11d5
	ld [wGenericTileDataDest+1], a                                  ; $11d6

	pop hl                                                          ; $11d9
	ret                                                             ; $11da

.memCopyNybbles:
	call SafeMemCopyNybblesC                                        ; $11db
	jr .saveNextDest                                                ; $11de


; C - num bytes to copy
; DE - dest address
; HL - src of nybbles to copy
SafeMemCopyNybblesC:
.nextByte:
; Get byte in HL and swap
	ld b, [hl]                                                      ; $11e0
	swap b                                                          ; $11e1
	di                                                              ; $11e3

; Wait until in hblank/vblank
:	ldh a, [rSTAT]                                                  ; $11e4
	bit 1, a                                                        ; $11e6
	jr nz, :-                                                       ; $11e8

; Store the high nybble in DE
	ld a, b                                                         ; $11ea
	and $0f                                                         ; $11eb
	ld [de], a                                                      ; $11ed
	ei                                                              ; $11ee
	inc de                                                          ; $11ef

; Return if num bytes left == 0
	dec c                                                           ; $11f0
	ret z                                                           ; $11f1

	di                                                              ; $11f2

; Wait until in hblank/vblank
:	ldh a, [rSTAT]                                                  ; $11f3
	bit 1, a                                                        ; $11f5
	jr nz, :-                                                       ; $11f7

; Now store the low nybble in DE
	ld a, [hl+]                                                     ; $11f9
	and $0f                                                         ; $11fa
	ld [de], a                                                      ; $11fc
	ei                                                              ; $11fd
	inc de                                                          ; $11fe

; Return if num bytes left == 0, or try the next byte's nybbles
	dec c                                                           ; $11ff
	jr nz, .nextByte                                                ; $1200

	ret                                                             ; $1202


;
	bit 7, h                                         ; $1203: $cb $7c
	ret z                                            ; $1205: $c8

IncRomBankLoopHLforBankedRom:
	push af                                                         ; $1206

; Inc rom bank
	ld a, [wRomBank]                                                ; $1207
	inc a                                                           ; $120a
	call SetRomBankA                                                ; $120b

; eg loops $8000 to be $4000
	res 7, h                                                        ; $120e
	set 6, h                                                        ; $1210

	pop af                                                          ; $1212
	ret                                                             ; $1213


Call_000_1214:
	srl b                                            ; $1214: $cb $38
	rr c                                             ; $1216: $cb $19
	srl b                                            ; $1218: $cb $38
	rr c                                             ; $121a: $cb $19
	srl b                                            ; $121c: $cb $38
	rr c                                             ; $121e: $cb $19
	srl b                                            ; $1220: $cb $38
	rr c                                             ; $1222: $cb $19
	ld a, b                                          ; $1224: $78
	or c                                             ; $1225: $b1
	ret z                                            ; $1226: $c8

	push hl                                          ; $1227: $e5
	ld d, $00                                        ; $1228: $16 $00

jr_000_122a:
	inc hl                                           ; $122a: $23
	ld e, $03                                        ; $122b: $1e $03
	call Call_000_1257                               ; $122d: $cd $57 $12
	ld e, $06                                        ; $1230: $1e $06
	call Call_000_1257                               ; $1232: $cd $57 $12
	ld e, $09                                        ; $1235: $1e $09
	call Call_000_1257                               ; $1237: $cd $57 $12
	inc hl                                           ; $123a: $23
	inc hl                                           ; $123b: $23
	ld e, $03                                        ; $123c: $1e $03
	call Call_000_1257                               ; $123e: $cd $57 $12
	ld e, $06                                        ; $1241: $1e $06
	call Call_000_1257                               ; $1243: $cd $57 $12
	inc hl                                           ; $1246: $23
	inc hl                                           ; $1247: $23
	inc hl                                           ; $1248: $23
	ld e, $03                                        ; $1249: $1e $03
	call Call_000_1257                               ; $124b: $cd $57 $12
	inc hl                                           ; $124e: $23
	inc hl                                           ; $124f: $23
	inc hl                                           ; $1250: $23
	inc hl                                           ; $1251: $23
	dec c                                            ; $1252: $0d
	jr nz, jr_000_122a                               ; $1253: $20 $d5

	pop hl                                           ; $1255: $e1
	ret                                              ; $1256: $c9


Call_000_1257:
	ld b, [hl]                                       ; $1257: $46
	push hl                                          ; $1258: $e5
	add hl, de                                       ; $1259: $19
	ld a, [hl]                                       ; $125a: $7e
	ld [hl], b                                       ; $125b: $70
	pop hl                                           ; $125c: $e1
	ld [hl+], a                                      ; $125d: $22
	ret                                              ; $125e: $c9


BCequBtimesC::
	push de                                                         ; $125f
	push hl                                                         ; $1260

; HL to contain final result, A = multiplicand, BC = multiplier
	ld hl, $0000                                                    ; $1261
	ld a, b                                                         ; $1264
	ld b, $00                                                       ; $1265

; Loop through all bits of A
	ld e, $08                                                       ; $1267

.nextBit:
; Shift HL left once, adding BC for every high bit set on A
	add hl, hl                                                      ; $1269
	rla                                                             ; $126a
	jr nc, :+                                                       ; $126b
	add hl, bc                                                      ; $126d
:	dec e                                                           ; $126e
	jr nz, .nextBit                                                 ; $126f

; Swap to put result in BC
	call wSwapBCandHL                                               ; $1271
	pop hl                                                          ; $1274
	pop de                                                          ; $1275
	ret                                                             ; $1276


AHLequAtimesHL::
	push bc                                                         ; $1277
	push de                                                         ; $1278
	push af                                                         ; $1279
	push hl                                                         ; $127a

; DE = A * H
	ld b, a                                                         ; $127b
	ld c, h                                                         ; $127c
	call BCequBtimesC                                               ; $127d
	ld e, c                                                         ; $1280
	ld d, b                                                         ; $1281

; BC = orig HL
	pop bc                                                          ; $1282
	pop af                                                          ; $1283

; BC = orig A * orig L
	push de                                                         ; $1284
	ld b, a                                                         ; $1285
	call BCequBtimesC                                               ; $1286
	pop de                                                          ; $1289

; AL = A * L above. H = E result above + A
	ld l, c                                                         ; $128a
	ld a, b                                                         ; $128b
	add e                                                           ; $128c
	ld h, a                                                         ; $128d

; Add carry onto D (copied onto A), ie
; DE  (A*H)
; +HL (A*L)
; ---
; AHL (24-bit result)
	jr nc, :+                                                       ; $128e
	inc d                                                           ; $1290
:	ld a, d                                                         ; $1291

	pop de                                                          ; $1292
	pop bc                                                          ; $1293
	ret                                                             ; $1294


DEBCequBCtimesDE::
; Loop for 16 bits
	ld hl, $0000                                                    ; $1295
	ld a, $10                                                       ; $1298

.nextBit:
; HL *= 2, if carry...
	add hl, hl                                                      ; $129a
	call wSwapDEandHL                                               ; $129b
	jr nc, .noCarryOnDouble                                         ; $129e

; DE = DE*2+1
	add hl, hl                                                      ; $12a0
	inc hl                                                          ; $12a1
	jr :+                                                           ; $12a2

.noCarryOnDouble:
; Else DE = DE*2
	add hl, hl                                                      ; $12a4

; If carry on DE, add BC onto HL, adding any carry there onto DE
:	call wSwapDEandHL                                               ; $12a5
	jr nc, .toNextBit                                               ; $12a8

	add hl, bc                                                      ; $12aa
	jr nc, .toNextBit                                               ; $12ab

	inc de                                                          ; $12ad

.toNextBit:
	dec a                                                           ; $12ae
	jr nz, .nextBit                                                 ; $12af

	call wSwapBCandHL                                               ; $12b1
	ret                                                             ; $12b4


;
	ld c, $00                                        ; $12b5: $0e $00

jr_000_12b7:
	sub b                                            ; $12b7: $90
	jr c, jr_000_12bd                                ; $12b8: $38 $03

	inc c                                            ; $12ba: $0c
	jr jr_000_12b7                                   ; $12bb: $18 $fa

jr_000_12bd:
	add b                                            ; $12bd: $80
	ld b, a                                          ; $12be: $47
	ld a, c                                          ; $12bf: $79
	ret                                              ; $12c0: $c9


BCHLequHLdivModBC::
	push de                                                         ; $12c1

; DE to capture remainder, loop through 16 bits of HL
	ld de, $0000                                                    ; $12c2
	ld a, $10                                                       ; $12c5

.nextBit:
	push af                                                         ; $12c7

; DEHL << 1
	sla l                                                           ; $12c8
	rl h                                                            ; $12ca
	rl e                                                            ; $12cc
	rl d                                                            ; $12ce

; If DE < BC, loop
	ld a, d                                                         ; $12d0
	cp b                                                            ; $12d1
	jr nz, :+                                                       ; $12d2

	ld a, e                                                         ; $12d4
	cp c                                                            ; $12d5

:	jr c, .toNextBit                                                ; $12d6

; Else, DE -= BC, L += 1 (shift in a bit for quotient)
	ld a, e                                                         ; $12d8
	sbc c                                                           ; $12d9
	ld e, a                                                         ; $12da
	ld a, d                                                         ; $12db
	sbc b                                                           ; $12dc
	ld d, a                                                         ; $12dd

	inc l                                                           ; $12de

.toNextBit:
	pop af                                                          ; $12df
	dec a                                                           ; $12e0
	jr nz, .nextBit                                                 ; $12e1

; Return with BC = DE (remainder) and HL = quotient
	ld b, d                                                         ; $12e3
	ld c, e                                                         ; $12e4

	pop de                                                          ; $12e5
	ret                                                             ; $12e6


;
	ld bc, $0000                                     ; $12e7: $01 $00 $00
	scf                                              ; $12ea: $37

jr_000_12eb:
	call Call_000_12f6                               ; $12eb: $cd $f6 $12
	ret c                                            ; $12ee: $d8

	call wHLminusEquBC                                       ; $12ef: $cd $aa $ce
	ret c                                            ; $12f2: $d8

	inc bc                                           ; $12f3: $03
	jr jr_000_12eb                                   ; $12f4: $18 $f5

Call_000_12f6:
	jr nc, :+                               ; $12f6: $30 $01
	inc bc                                           ; $12f8: $03
:	jp wHLminusEquBC                                         ; $12f9: $c3 $aa $ce


Call_000_12fc::
	push bc                                          ; $12fc: $c5
	push af                                          ; $12fd: $f5
	call Call_000_1309                               ; $12fe: $cd $09 $13
	pop bc                                           ; $1301: $c1
	ld c, a                                          ; $1302: $4f
	call BCequBtimesC                               ; $1303: $cd $5f $12
	ld a, b                                          ; $1306: $78
	pop bc                                           ; $1307: $c1
	ret                                              ; $1308: $c9


Call_000_1309::
	push hl                                          ; $1309: $e5
	push de                                          ; $130a: $d5
	ld a, [wMainLoopCounter]                                    ; $130b: $fa $29 $c1
	ld h, a                                          ; $130e: $67
	ld a, [$c12a]                                    ; $130f: $fa $2a $c1
	ld l, a                                          ; $1312: $6f
	ld d, h                                          ; $1313: $54
	ld e, l                                          ; $1314: $5d
	add hl, hl                                       ; $1315: $29
	add hl, hl                                       ; $1316: $29
	add hl, de                                       ; $1317: $19
	ld de, $3711                                     ; $1318: $11 $11 $37
	add hl, de                                       ; $131b: $19
	ld a, l                                          ; $131c: $7d
	ld [$c12a], a                                    ; $131d: $ea $2a $c1
	ld a, h                                          ; $1320: $7c
	ld [wMainLoopCounter], a                                    ; $1321: $ea $29 $c1
	pop de                                           ; $1324: $d1
	pop hl                                           ; $1325: $e1
	ret                                              ; $1326: $c9


Call_000_1327:
	add e                                            ; $1327: $83
	ld e, a                                          ; $1328: $5f
	ret nc                                           ; $1329: $d0

	inc d                                            ; $132a: $14
	ret                                              ; $132b: $c9


Call_000_132c:
	add c                                            ; $132c: $81
	ld c, a                                          ; $132d: $4f
	ret nc                                           ; $132e: $d0

	inc b                                            ; $132f: $04
	ret                                              ; $1330: $c9


	add $08                                          ; $1331: $c6 $08
	and $1f                                          ; $1333: $e6 $1f
	bit 4, a                                         ; $1335: $cb $67
	ld hl, $135b                                     ; $1337: $21 $5b $13
	jr nz, jr_000_134f                               ; $133a: $20 $13

	jr jr_000_1345                                   ; $133c: $18 $07

	bit 4, a                                         ; $133e: $cb $67
	ld hl, $135b                                     ; $1340: $21 $5b $13
	jr z, jr_000_134f                                ; $1343: $28 $0a

jr_000_1345:
	res 4, a                                         ; $1345: $cb $a7
	add a                                            ; $1347: $87
	rst AddAOntoHL                                          ; $1348: $ef
	ld a, [hl+]                                      ; $1349: $2a
	ld c, a                                          ; $134a: $4f
	ld b, [hl]                                       ; $134b: $46
	scf                                              ; $134c: $37
	ccf                                              ; $134d: $3f
	ret                                              ; $134e: $c9


jr_000_134f:
	res 4, a                                         ; $134f: $cb $a7
	add a                                            ; $1351: $87
	rst AddAOntoHL                                          ; $1352: $ef
	ld a, [hl+]                                      ; $1353: $2a
	ld c, a                                          ; $1354: $4f
	ld b, [hl]                                       ; $1355: $46
	call $cec0                                       ; $1356: $cd $c0 $ce
	scf                                              ; $1359: $37
	ret                                              ; $135a: $c9


jr_000_135b:
	nop                                              ; $135b: $00
	nop                                              ; $135c: $00
	ld sp, hl                                        ; $135d: $f9
	jr jr_000_135b                                   ; $135e: $18 $fb

	db $30, $1c

	ld b, a                                          ; $1362: $47
	add d                                            ; $1363: $82
	ld e, d                                          ; $1364: $5a
	ld l, l                                          ; $1365: $6d
	ld l, d                                          ; $1366: $6a
	ld b, c                                          ; $1367: $41
	halt                                             ; $1368: $76
	adc c                                            ; $1369: $89
	ld a, l                                          ; $136a: $7d
	rst $38                                          ; $136b: $ff
	ld a, a                                          ; $136c: $7f
	adc c                                            ; $136d: $89
	ld a, l                                          ; $136e: $7d
	ld b, c                                          ; $136f: $41
	halt                                             ; $1370: $76
	ld l, l                                          ; $1371: $6d
	ld l, d                                          ; $1372: $6a

jr_000_1373:
	add d                                            ; $1373: $82
	ld e, d                                          ; $1374: $5a
	inc e                                            ; $1375: $1c
	ld b, a                                          ; $1376: $47
	ei                                               ; $1377: $fb
	jr nc, jr_000_1373                               ; $1378: $30 $f9

	db $18                                   ; $137a: $18


Func_137b:
	ld hl, wDataCopyStruct                                   ; $137b: $21 $d0 $d3
	call Call_000_1395                               ; $137e: $cd $95 $13
	ld [wDataCopyStruct], a                                    ; $1381: $ea $d0 $d3
	ld a, LOW(wDataCopyStruct)                                        ; $1384: $3e $d0
	ld [wPtrToDataCopyStruct], a                                    ; $1386: $ea $08 $c1
	ld a, HIGH(wDataCopyStruct)                                        ; $1389: $3e $d3
	ld [wPtrToDataCopyStruct+1], a                                    ; $138b: $ea $09 $c1
	xor a                                            ; $138e: $af
	ld [$c10a], a                                    ; $138f: $ea $0a $c1
	ldh [rVBK], a                                    ; $1392: $e0 $4f
	ret                                              ; $1394: $c9


Call_000_1395:
	ld a, [hl+]                                      ; $1395: $2a
	and a                                            ; $1396: $a7
	ret z                                            ; $1397: $c8

	ld bc, $1395                                     ; $1398: $01 $95 $13
	push bc                                          ; $139b: $c5
	ld b, a                                          ; $139c: $47

jr_000_139d:
	ld a, [hl+]                                      ; $139d: $2a
	ld c, a                                          ; $139e: $4f
	ld a, [hl+]                                      ; $139f: $2a
	ld e, a                                          ; $13a0: $5f
	ld a, [hl+]                                      ; $13a1: $2a
	ldh [rVBK], a                                    ; $13a2: $e0 $4f
	scf                                              ; $13a4: $37
	rra                                              ; $13a5: $1f
	ld d, a                                          ; $13a6: $57

ExecuteDataCopiesWithLCDOff:
	dec b                                            ; $13a7: $05
	jr z, jr_000_13be                                ; $13a8: $28 $14

	dec b                                            ; $13aa: $05
	jr z, jr_000_13cf                                ; $13ab: $28 $22

	dec b                                            ; $13ad: $05
	jr z, jr_000_13dc                                ; $13ae: $28 $2c

	dec b                                            ; $13b0: $05
	jr z, jr_000_1409                                ; $13b1: $28 $56

	dec b                                            ; $13b3: $05
	jp z, Jump_000_1448                              ; $13b4: $ca $48 $14

	dec b                                            ; $13b7: $05
	jp z, Jump_000_1450                              ; $13b8: $ca $50 $14

	ld l, c                                          ; $13bb: $69
	ld h, e                                          ; $13bc: $63
	ret                                              ; $13bd: $c9


jr_000_13be:
	ld a, [hl+]                                      ; $13be: $2a
	push hl                                          ; $13bf: $e5
	ld hl, $13cd                                     ; $13c0: $21 $cd $13
	push hl                                          ; $13c3: $e5
	ld hl, $cbf1                                     ; $13c4: $21 $f1 $cb
	dec b                                            ; $13c7: $05
	add hl, bc                                       ; $13c8: $09
	push hl                                          ; $13c9: $e5
	ld l, e                                          ; $13ca: $6b
	ld h, d                                          ; $13cb: $62
	ret                                              ; $13cc: $c9


	pop hl                                           ; $13cd: $e1
	ret                                              ; $13ce: $c9


jr_000_13cf:
	ld a, e                                          ; $13cf: $7b
	ld [$c0d1], a                                    ; $13d0: $ea $d1 $c0
	ld a, d                                          ; $13d3: $7a
	ld [$c0d2], a                                    ; $13d4: $ea $d2 $c0
	ld de, $0020                                     ; $13d7: $11 $20 $00
	jr jr_000_13ed                                   ; $13da: $18 $11

jr_000_13dc:
	ld a, e                                          ; $13dc: $7b
	ld [$c0d1], a                                    ; $13dd: $ea $d1 $c0
	ld a, d                                          ; $13e0: $7a
	ld [$c0d2], a                                    ; $13e1: $ea $d2 $c0
	ld a, [hl+]                                      ; $13e4: $2a
	ld e, a                                          ; $13e5: $5f
	sla a                                            ; $13e6: $cb $27
	ld d, $00                                        ; $13e8: $16 $00
	jr nc, jr_000_13ed                               ; $13ea: $30 $01

	dec d                                            ; $13ec: $15

jr_000_13ed:
	ld a, [hl+]                                      ; $13ed: $2a
	push hl                                          ; $13ee: $e5
	ld [$c0d0], a                                    ; $13ef: $ea $d0 $c0
	dec b                                            ; $13f2: $05
	ld hl, $13cd                                     ; $13f3: $21 $cd $13
	push hl                                          ; $13f6: $e5
	ld hl, wMemSets                                     ; $13f7: $21 $d1 $cb
	add hl, bc                                       ; $13fa: $09
	add hl, bc                                       ; $13fb: $09
	push hl                                          ; $13fc: $e5
	ld a, [$c0d1]                                    ; $13fd: $fa $d1 $c0
	ld l, a                                          ; $1400: $6f
	ld a, [$c0d2]                                    ; $1401: $fa $d2 $c0
	ld h, a                                          ; $1404: $67
	ld a, [$c0d0]                                    ; $1405: $fa $d0 $c0
	ret                                              ; $1408: $c9


jr_000_1409:
	ld a, [wRomBank]                                    ; $1409: $fa $03 $c1
	push af                                          ; $140c: $f5
	push de                                          ; $140d: $d5
	push hl                                          ; $140e: $e5
	dec b                                            ; $140f: $05
	ld hl, wMemCopies+3*(NUM_WRAM_MEM_COPIES)                                     ; $1410: $21 $e0 $cc
	add hl, bc                                       ; $1413: $09
	add hl, bc                                       ; $1414: $09
	add hl, bc                                       ; $1415: $09
	ld c, l                                          ; $1416: $4d
	ld b, h                                          ; $1417: $44
	pop hl                                           ; $1418: $e1
	ld a, l                                          ; $1419: $7d
	ld [$c0d0], a                                    ; $141a: $ea $d0 $c0
	ld a, h                                          ; $141d: $7c
	ld [$c0d1], a                                    ; $141e: $ea $d1 $c0
	ld a, [hl+]                                      ; $1421: $2a
	di                                               ; $1422: $f3
	ld [wRomBank], a                                    ; $1423: $ea $03 $c1
	ld [rROMB0], a                                    ; $1426: $ea $00 $20
	ei                                               ; $1429: $fb
	ld a, [hl+]                                      ; $142a: $2a
	ld h, [hl]                                       ; $142b: $66
	ld l, a                                          ; $142c: $6f
	pop de                                           ; $142d: $d1
	call Call_000_1446                               ; $142e: $cd $46 $14
	ld a, [$c0d0]                                    ; $1431: $fa $d0 $c0
	ld l, a                                          ; $1434: $6f
	ld a, [$c0d1]                                    ; $1435: $fa $d1 $c0
	ld h, a                                          ; $1438: $67
	pop af                                           ; $1439: $f1
	di                                               ; $143a: $f3
	ld [wRomBank], a                                    ; $143b: $ea $03 $c1
	ld [rROMB0], a                                    ; $143e: $ea $00 $20
	ei                                               ; $1441: $fb
	inc hl                                           ; $1442: $23
	inc hl                                           ; $1443: $23
	inc hl                                           ; $1444: $23
	ret                                              ; $1445: $c9


Call_000_1446:
	push bc                                          ; $1446: $c5
	ret                                              ; $1447: $c9


Jump_000_1448:
	ld a, [wRomBank]                                    ; $1448: $fa $03 $c1
	push af                                          ; $144b: $f5
	ld a, $20                                        ; $144c: $3e $20
	jr jr_000_1455                                   ; $144e: $18 $05

Jump_000_1450:
	ld a, [wRomBank]                                    ; $1450: $fa $03 $c1
	push af                                          ; $1453: $f5
	ld a, [hl+]                                      ; $1454: $2a

jr_000_1455:
	push de                                          ; $1455: $d5
	push de                                          ; $1456: $d5
	push af                                          ; $1457: $f5
	push hl                                          ; $1458: $e5
	ld hl, sp+$06                                    ; $1459: $f8 $06
	ld a, $31                                        ; $145b: $3e $31
	ld [hl+], a                                      ; $145d: $22
	ld [hl], $14                                     ; $145e: $36 $14
	dec b                                            ; $1460: $05
	ld hl, $ce00                                     ; $1461: $21 $00 $ce
	add hl, bc                                       ; $1464: $09
	add hl, bc                                       ; $1465: $09
	add hl, bc                                       ; $1466: $09
	add hl, bc                                       ; $1467: $09
	ld c, l                                          ; $1468: $4d
	ld b, h                                          ; $1469: $44
	pop hl                                           ; $146a: $e1
	ld a, l                                          ; $146b: $7d
	ld [$c0d0], a                                    ; $146c: $ea $d0 $c0
	ld a, h                                          ; $146f: $7c
	ld [$c0d1], a                                    ; $1470: $ea $d1 $c0
	ld a, [hl+]                                      ; $1473: $2a
	di                                               ; $1474: $f3
	ld [wRomBank], a                                    ; $1475: $ea $03 $c1
	ld [rROMB0], a                                    ; $1478: $ea $00 $20
	ei                                               ; $147b: $fb
	ld a, [hl+]                                      ; $147c: $2a
	ld d, [hl]                                       ; $147d: $56
	ld e, a                                          ; $147e: $5f
	pop af                                           ; $147f: $f1
	pop hl                                           ; $1480: $e1
	push bc                                          ; $1481: $c5
	ld c, a                                          ; $1482: $4f
	sla a                                            ; $1483: $cb $27
	ld b, $00                                        ; $1485: $06 $00
	jr nc, jr_000_148a                               ; $1487: $30 $01

	dec b                                            ; $1489: $05

jr_000_148a:
	ret                                              ; $148a: $c9


SafelyExecuteDataCopies::
	ld b, $00                                        ; $148b: $06 $00
	ld a, [$c186]                                    ; $148d: $fa $86 $c1
	cp $04                                           ; $1490: $fe $04
	jr z, .br_1498                                ; $1492: $28 $04

	cp $03                                           ; $1494: $fe $03
	jr nz, .cont_14a8                               ; $1496: $20 $10

.br_1498:
	ld hl, $ff98                                     ; $1498: $21 $98 $ff
	ld a, $58                                        ; $149b: $3e $58
	cp [hl]                                          ; $149d: $be
	jr c, :+                                ; $149e: $38 $01
	ld a, [hl]                                       ; $14a0: $7e
:	sub $18                                          ; $14a1: $d6 $18
	ld b, a                                          ; $14a3: $47
	jr nc, .cont_14a8                               ; $14a4: $30 $02

	ld b, $00                                        ; $14a6: $06 $00

.cont_14a8:
	ld a, b                                          ; $14a8: $78
	ld [$c0d3], a                                    ; $14a9: $ea $d3 $c0
	ld b, $00                                        ; $14ac: $06 $00
	ldh a, [$9b]                                     ; $14ae: $f0 $9b
	cp $12                                           ; $14b0: $fe $12
	ld a, $6e                                        ; $14b2: $3e $6e
	jr z, .cont_14cf                                ; $14b4: $28 $19

	ldh a, [$9b]                                     ; $14b6: $f0 $9b
	cp $01                                           ; $14b8: $fe $01
	jr z, .br_14c0                                ; $14ba: $28 $04

	cp $02                                           ; $14bc: $fe $02
	jr nz, .cont_14cf                               ; $14be: $20 $0f

.br_14c0:
	ld hl, $ff98                                     ; $14c0: $21 $98 $ff
	ld a, $58                                        ; $14c3: $3e $58
	cp [hl]                                          ; $14c5: $be
	jr nc, .cont_14cf                               ; $14c6: $30 $07

	ld a, [hl]                                       ; $14c8: $7e
	cp $86                                           ; $14c9: $fe $86
	jr c, .cont_14cf                                ; $14cb: $38 $02

	ld a, $58                                        ; $14cd: $3e $58

.cont_14cf:
	ld [$c0d4], a                                    ; $14cf: $ea $d4 $c0

; Executes pending data copies, then stores null terminator at the start
	ld hl, wDataCopyStruct                                          ; $14d2
	call _ExecuteDataCopies                                         ; $14d5
	ld [wDataCopyStruct], a                                         ; $14d8

; Have pointers point to the start, then reset from any vram changes
	ld a, LOW(wDataCopyStruct)                                      ; $14db
	ld [wPtrToDataCopyStruct], a                                    ; $14dd
	ld a, HIGH(wDataCopyStruct)                                     ; $14e0
	ld [wPtrToDataCopyStruct+1], a                                  ; $14e2

	xor a                                                           ; $14e5
	ldh [rVBK], a                                                   ; $14e6
	ret                                                             ; $14e8


; HL - pointer to data copy struct
; Returns A = 0
_ExecuteDataCopies:
; We're done once HL yields 0
:	ld a, [hl+]                                                     ; $14e9
	and a                                                           ; $14ea
	ret z                                                           ; $14eb

; Push this func's address for more data moves
	ld bc, :-                                                       ; $14ec
	push bc                                                         ; $14ef

; HL contains B (copy type), C ($100-<num bytes>), and E (dest low byte)
	ld b, a                                                         ; $14f0
	ld a, [hl+]                                                     ; $14f1
	ld c, a                                                         ; $14f2
	ld a, [hl+]                                                     ; $14f3
	ld e, a                                                         ; $14f4

; Next byte in HL has VBK in bit 0, and D (dest high byte) shifted left in bits 7-1
	ld a, [hl+]                                                     ; $14f5
	ldh [rVBK], a                                                   ; $14f6

	scf                                                             ; $14f8
	rra                                                             ; $14f9
	ld d, a                                                         ; $14fa
	push hl                                                         ; $14fb

; Jump if LCD already off
	ldh a, [rLCDC]                                                  ; $14fc
	and LCDCF_ON                                                    ; $14fe
	jp z, .lcdOff                                                   ; $1500

; Begin LY check, avoiding copies in a certain region
	ld hl, wExecDataCopy1stUnallowedLY                              ; $1503
	jr :+                                                           ; $1506

.repeatLYcheck:
	dec hl                                                          ; $1508

; Continue if LY < 1st val...
:	ldh a, [rLY]                                                    ; $1509
	cp [hl]                                                         ; $150b
	jr c, .inAllowedRegion                                          ; $150c

; Or if LY >= 2nd val (wExecDataCopyLastUnallowedLY)
	inc hl                                                          ; $150e
	cp [hl]                                                         ; $150f
	jr c, .repeatLYcheck                                            ; $1510

.inAllowedRegion:
; Pop HL for use
	pop hl                                           ; $1512: $e1
	dec b                                            ; $1513: $05
	jr z, Func_152e                                ; $1514: $28 $18

	dec b                                            ; $1516: $05
	jr z, Func_1540                                ; $1517: $28 $27

	dec b                                            ; $1519: $05
	jr z, Func_1546                                ; $151a: $28 $2a

	dec b                                            ; $151c: $05
	jr z, FarMemCopyNegC                                ; $151d: $28 $56

	dec b                                            ; $151f: $05
	jp z, Func_15b5                              ; $1520: $ca $b5 $15

	dec b                                            ; $1523: $05
	jp z, Func_15bd                              ; $1524: $ca $bd $15

	ld l, c                                          ; $1527: $69
	ld h, e                                          ; $1528: $63
	ret                                              ; $1529: $c9

.lcdOff:
	pop hl                                                          ; $152a
	jp ExecuteDataCopiesWithLCDOff                                  ; $152b


Func_152e:
	ld a, [hl+]                                      ; $152e: $2a
	push hl                                          ; $152f: $e5

.loop_1530:
	ld hl, rSTAT                                     ; $1530: $21 $41 $ff
	di                                               ; $1533: $f3

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $1534: $cb $4e
	jr nz, :-                               ; $1536: $20 $fc

	ld [de], a                                       ; $1538: $12
	ei                                               ; $1539: $fb
	inc de                                           ; $153a: $13
	inc c                                            ; $153b: $0c
	jr nz, .loop_1530                               ; $153c: $20 $f2

	pop hl                                           ; $153e: $e1
	ret                                              ; $153f: $c9


Func_1540:
	push de                                          ; $1540: $d5
	ld de, $0020                                     ; $1541: $11 $20 $00
	jr :+                                   ; $1544: $18 $0a

Func_1546:
	push de                                          ; $1546: $d5
	ld a, [hl+]                                      ; $1547: $2a
	ld e, a                                          ; $1548: $5f
	sla a                                            ; $1549: $cb $27
	ld d, $00                                        ; $154b: $16 $00
	jr nc, :+                               ; $154d: $30 $01
	dec d                                            ; $154f: $15
:	ld a, l                                          ; $1550: $7d
	ld [wPreservedHL], a                                    ; $1551: $ea $d0 $c0
	ld a, h                                          ; $1554: $7c
	ld [wPreservedHL+1], a                                    ; $1555: $ea $d1 $c0
	ld a, [hl+]                                      ; $1558: $2a
	jr :+                                   ; $1559: $18 $02

.loop_155b:
	add hl, de                                       ; $155b: $19
	push hl                                          ; $155c: $e5

:	ld hl, rSTAT                                     ; $155d: $21 $41 $ff
	di                                               ; $1560: $f3

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $1561: $cb $4e
	jr nz, :-                               ; $1563: $20 $fc

	pop hl                                           ; $1565: $e1
	ld [hl], a                                       ; $1566: $77
	ei                                               ; $1567: $fb
	inc c                                            ; $1568: $0c
	jr nz, .loop_155b                               ; $1569: $20 $f0

	ld a, [wPreservedHL]                                    ; $156b: $fa $d0 $c0
	ld l, a                                          ; $156e: $6f
	ld a, [wPreservedHL+1]                                    ; $156f: $fa $d1 $c0
	ld h, a                                          ; $1572: $67
	inc hl                                           ; $1573: $23
	ret                                              ; $1574: $c9


; C - $100-<num bytes>
; DE - dest addr
; HL - contains far src bank, then far src addr
FarMemCopyNegC:
; Preserve rom bank and HL
	ld a, [wRomBank]                                                ; $1575
	push af                                                         ; $1578
	push de                                                         ; $1579
	ld a, l                                                         ; $157a
	ld [wPreservedHL], a                                            ; $157b
	ld a, h                                                         ; $157e
	ld [wPreservedHL+1], a                                          ; $157f

; HL contains rom bank, then new HL
	ld a, [hl+]                                                     ; $1582
	ld [wRomBank], a                                                ; $1583
	ld [rROMB0], a                                                  ; $1586
	ld a, [hl+]                                                     ; $1589
	ld h, [hl]                                                      ; $158a
	ld l, a                                                         ; $158b

; Pop dest addr, then mem copy
	pop de                                                          ; $158c
	call MemCopyNegC                                                ; $158d

RestoreRomBankAndHLplus3:
	ld a, [wPreservedHL]                                            ; $1590
	ld l, a                                                         ; $1593
	ld a, [wPreservedHL+1]                                          ; $1594
	ld h, a                                                         ; $1597
	pop af                                                          ; $1598
	ld [wRomBank], a                                                ; $1599
	ld [rROMB0], a                                                  ; $159c
	inc hl                                                          ; $159f
	inc hl                                                          ; $15a0
	inc hl                                                          ; $15a1
	ret                                                             ; $15a2


; C - $100-<num bytes>
; DE - dest addr
; HL - src addr
MemCopyNegC:
.nextByte:
	push hl                                                         ; $15a3
	ld hl, rSTAT                                                    ; $15a4
	di                                                              ; $15a7

; Wait until in hblank/vblank
:	bit 1, [hl]                                                     ; $15a8
	jr nz, :-                                                       ; $15aa

; Mem copy
	pop hl                                                          ; $15ac
	ld a, [hl+]                                                     ; $15ad
	ld [de], a                                                      ; $15ae
	ei                                                              ; $15af
	inc de                                                          ; $15b0

; Inc c, looping while not 0
	inc c                                                           ; $15b1
	jr nz, .nextByte                                                ; $15b2

	ret                                                             ; $15b4


Func_15b5:
	ld a, [wRomBank]                                    ; $15b5: $fa $03 $c1
	push af                                          ; $15b8: $f5
	ld a, $20                                        ; $15b9: $3e $20
	jr :+                                   ; $15bb: $18 $05

Func_15bd:
	ld a, [wRomBank]                                    ; $15bd: $fa $03 $c1
	push af                                          ; $15c0: $f5
	ld a, [hl+]                                      ; $15c1: $2a

:	push de                                          ; $15c2: $d5
	push af                                          ; $15c3: $f5
	ld a, c                                          ; $15c4: $79
	ld [$c0d2], a                                    ; $15c5: $ea $d2 $c0
	ld a, l                                          ; $15c8: $7d
	ld [wPreservedHL], a                                    ; $15c9: $ea $d0 $c0
	ld a, h                                          ; $15cc: $7c
	ld [wPreservedHL+1], a                                    ; $15cd: $ea $d1 $c0
	ld a, [hl+]                                      ; $15d0: $2a
	ld [wRomBank], a                                    ; $15d1: $ea $03 $c1
	ld [rROMB0], a                                    ; $15d4: $ea $00 $20
	ld a, [hl+]                                      ; $15d7: $2a
	ld d, [hl]                                       ; $15d8: $56
	ld e, a                                          ; $15d9: $5f
	pop af                                           ; $15da: $f1
	ld c, a                                          ; $15db: $4f
	sla a                                            ; $15dc: $cb $27
	ld b, $00                                        ; $15de: $06 $00
	jr nc, .loop_15e3                               ; $15e0: $30 $01

	dec b                                            ; $15e2: $05

.loop_15e3:
	ld hl, rSTAT                                     ; $15e3: $21 $41 $ff
	di                                               ; $15e6: $f3

; Wait until in hblank/vblank
:	bit 1, [hl]                                      ; $15e7: $cb $4e
	jr nz, :-                               ; $15e9: $20 $fc

	pop hl                                           ; $15eb: $e1
	ld a, [de]                                       ; $15ec: $1a
	ld [hl], a                                       ; $15ed: $77
	ei                                               ; $15ee: $fb
	add hl, bc                                       ; $15ef: $09
	push hl                                          ; $15f0: $e5
	inc de                                           ; $15f1: $13
	ld hl, $c0d2                                     ; $15f2: $21 $d2 $c0
	inc [hl]                                         ; $15f5: $34
	jr nz, .loop_15e3                               ; $15f6: $20 $eb

	pop hl                                           ; $15f8: $e1
	jp RestoreRomBankAndHLplus3                                 ; $15f9: $c3 $90 $15


; A - num bytes
; B - data copy type
; H - dest high byte (without bit 7) << 1, vram bank in bit 0
; L - dest low byte
EnqueueDataCopyHeader:
	push de                                                         ; $15fc
	push hl                                                         ; $15fd
	push af                                                         ; $15fe

; HL = ptr to data copy struct
	ld a, [wPtrToDataCopyStruct]                                    ; $15ff
	ld l, a                                                         ; $1602
	ld a, [wPtrToDataCopyStruct+1]                                  ; $1603
	ld h, a                                                         ; $1606

; Store B (data copy type) in it
	ld a, b                                                         ; $1607
	ld [hl+], a                                                     ; $1608

; Store -A in it (num bytes, as _ExecuteDataCopies counts up from -num)
	pop af                                                          ; $1609
	cpl                                                             ; $160a
	inc a                                                           ; $160b
	ld [hl+], a                                                     ; $160c

; Store dest low byte
	pop de                                                          ; $160d
	ld a, e                                                         ; $160e
	ld [hl+], a                                                     ; $160f

; Store dest high byte << 1, old bit 7 is vram bank ^ 1
	ld a, d                                          ; $1610: $7a
	rlca                                             ; $1611: $07
	xor $01                                          ; $1612: $ee $01
	ld [hl], a                                       ; $1614: $77

;
	ld a, [$c10a]                                    ; $1615: $fa $0a $c1
	or [hl]                                          ; $1618: $b6
	ld [hl+], a                                      ; $1619: $22
	pop de                                           ; $161a: $d1
	ret                                              ; $161b: $c9


; Returns HL pointing to null terminator in data copy struct
SaveHLplus1asPtrToDataCopyStruct:
	inc hl                                                          ; $161c

; Returns HL pointing to null terminator in data copy struct
SaveHLasPtrToDataCopyStruct:
	ld a, l                                                         ; $161d
	ld [wPtrToDataCopyStruct], a                                    ; $161e
	ld a, h                                                         ; $1621
	ld [wPtrToDataCopyStruct+1], a                                  ; $1622

; Write null terminator
	ld [hl], $00                                                    ; $1625
	ret                                                             ; $1627


; A - num data bytes that will be copied
; DE - offset into data copy struct
SetUpDataCopyPointers:
	push af                                                         ; $1628
	push hl                                                         ; $1629
	push bc                                                         ; $162a

; Push A, HL = pointer to data copy struct
	push af                                                         ; $162b
	ld a, [wPtrToDataCopyStruct]                                    ; $162c
	ld l, a                                                         ; $162f
	ld a, [wPtrToDataCopyStruct+1]                                  ; $1630
	ld h, a                                                         ; $1633

; DE += pointer to point to where we write data, then pop A into C
	add hl, de                                                      ; $1634
	ld e, l                                                         ; $1635
	ld d, h                                                         ; $1636
	pop af                                                          ; $1637
	ld c, a                                                         ; $1638

; Set far bank to 0 as its copying from ram
	xor a                                                           ; $1639
	ld [wEnqueueDataCopyFarBank], a                                 ; $163a

; Preserved HL = DE (where we write data) + C (num bytes)
	ld b, a                                                         ; $163d
	add hl, bc                                                      ; $163e
	ld a, l                                                         ; $163f
	ld [wEnqueueDataCopyPreservedHL], a                             ; $1640
	ld a, h                                                         ; $1643
	ld [wEnqueueDataCopyPreservedHL+1], a                           ; $1644

	pop bc                                                          ; $1647
	pop hl                                                          ; $1648
	pop af                                                          ; $1649
	ret                                                             ; $164a


; Returns HL pointing to where data, for the curr data copy type, should sit
SetDataCopyJumpCmdAndPtrForCurrData:
; Store $ff (jump past data marker), then preserved HL, which points to after the data
	ld a, $ff                                                       ; $164b
	ld [hl+], a                                                     ; $164d

	ld a, [wEnqueueDataCopyPreservedHL]                             ; $164e
	ld [hl+], a                                                     ; $1651
	ld e, a                                                         ; $1652
	ld a, [wEnqueueDataCopyPreservedHL+1]                           ; $1653
	ld [hl+], a                                                     ; $1656

; Push HL pointing to data to copy. HL then equals pointer to the jump addr
	push hl                                                         ; $1657
	ld l, e                                                         ; $1658
	ld h, a                                                         ; $1659

; Save jump addr pointer, for next data copies, then pop HL pointing to data to copy
	call SaveHLasPtrToDataCopyStruct                                ; $165a
	pop hl                                                          ; $165d
	ret                                                             ; $165e


;
	ld b, $01                                        ; $165f: $06 $01

jr_000_1661:
	call EnqueueDataCopyHeader                               ; $1661: $cd $fc $15
	ld [hl], e                                       ; $1664: $73
	jr SaveHLplus1asPtrToDataCopyStruct                                   ; $1665: $18 $b5


;
	ld b, $02                                        ; $1667: $06 $02
	jr jr_000_1661                                   ; $1669: $18 $f6


;
	ld b, $03                                        ; $166b: $06 $03
	call EnqueueDataCopyHeader                               ; $166d: $cd $fc $15
	ld [hl], c                                       ; $1670: $71
	inc hl                                           ; $1671: $23
	ld [hl], e                                       ; $1672: $73
	jr SaveHLplus1asPtrToDataCopyStruct                                   ; $1673: $18 $a7


; A - num data bytes that will be copied
; H - dest high byte (without bit 7) << 1, vram bank in bit 0
; L - dest low byte
; Returns HL pointing to null terminator in data copy struct
EnqueueDataCopyType4Header:
	ld b, $04                                                       ; $1675

; A - num data bytes that will be copied
; B - data copy type
; H - dest high byte (without bit 7) << 1, vram bank in bit 0
; L - dest low byte
; Returns HL pointing to null terminator in data copy struct
EnqueueDataCopyType4or5Header:
; Add header, far bank, then far addr, then save data copy struct pointer
	call EnqueueDataCopyHeader                                      ; $1677
	ld a, [wEnqueueDataCopyFarBank]                                 ; $167a
	ld [hl+], a                                                     ; $167d
	ld a, e                                                         ; $167e
	ld [hl+], a                                                     ; $167f
	ld [hl], d                                                      ; $1680

; Returns HL pointing to null terminator in data copy struct
ToSaveHLplus1asPtrToDataCopyStruct:
	jr SaveHLplus1asPtrToDataCopyStruct                             ; $1681


; A - num data bytes that will be copied
; H - dest high byte (without bit 7) << 1, vram bank in bit 0
; L - dest low byte
; Returns HL pointing to where data, for the curr data copy type, should sit
EnqueueDataCopyType4FullHeader::
; 10 bytes is copy type (1), num bytes (1), dest addr (2), far bank addr (3), jump cmd (3)
	ld de, $000a                                                    ; $1683
	call SetUpDataCopyPointers                                      ; $1686
	call EnqueueDataCopyType4Header                                 ; $1689
	jp SetDataCopyJumpCmdAndPtrForCurrData                          ; $168c


; A - num data bytes that will be copied
; H - dest high byte (without bit 7) << 1, vram bank in bit 0
; L - dest low byte
; Returns HL pointing to null terminator in data copy struct
EnqueueDataCopyType5Header:
	ld b, $05                                                       ; $168f
	jr EnqueueDataCopyType4or5Header                                ; $1691


; A - num data bytes that will be copied
; H - dest high byte (without bit 7) << 1, vram bank in bit 0
; L - dest low byte
; Returns HL pointing to where data, for the curr data copy type, should sit
;
	ld de, $000a                                     ; $1693: $11 $0a $00
	call SetUpDataCopyPointers                               ; $1696: $cd $28 $16
	call EnqueueDataCopyType5Header                               ; $1699: $cd $8f $16
	jp SetDataCopyJumpCmdAndPtrForCurrData                                 ; $169c: $c3 $4b $16


; Returns HL pointing to null terminator in data copy struct
EnqueueDataCopyType6Header:
	ld b, $06                                        ; $169f: $06 $06
	call EnqueueDataCopyHeader                               ; $16a1: $cd $fc $15
	ld a, c                                          ; $16a4: $79
	ld [hl+], a                                      ; $16a5: $22
	ld a, [wEnqueueDataCopyFarBank]                                    ; $16a6: $fa $d0 $c0
	ld [hl+], a                                      ; $16a9: $22
	ld a, e                                          ; $16aa: $7b
	ld [hl+], a                                      ; $16ab: $22
	ld [hl], d                                       ; $16ac: $72
	jr ToSaveHLplus1asPtrToDataCopyStruct                                   ; $16ad: $18 $d2


; A - num data bytes that will be copied
; Returns HL pointing to where data, for the curr data copy type, should sit
;
	ld de, $000b                                     ; $16af: $11 $0b $00
	call SetUpDataCopyPointers                               ; $16b2: $cd $28 $16
	call EnqueueDataCopyType6Header                               ; $16b5: $cd $9f $16
	jp SetDataCopyJumpCmdAndPtrForCurrData                                 ; $16b8: $c3 $4b $16


;
	ld c, $10                                        ; $16bb: $0e $10
	ld l, l                                          ; $16bd: $6d
	ld c, $a2                                        ; $16be: $0e $a2
	ld a, d                                          ; $16c0: $7a
	rrca                                             ; $16c1: $0f
	ld d, h                                          ; $16c2: $54
	ld l, h                                          ; $16c3: $6c
	ld c, $10                                        ; $16c4: $0e $10
	ld l, l                                          ; $16c6: $6d
	db $20, $e6

	ld e, b                                          ; $16c9: $58
	ld c, $2f                                        ; $16ca: $0e $2f
	ld [hl], c                                       ; $16cc: $71
	rra                                              ; $16cd: $1f
	ld d, [hl]                                       ; $16ce: $56
	ld l, l                                          ; $16cf: $6d

Call_000_16d0:
	xor a                                            ; $16d0: $af

Call_000_16d1:
	ld [$c0d8], a                                    ; $16d1: $ea $d8 $c0
	ld l, $0c                                        ; $16d4: $2e $0c
	ld a, [hl]                                       ; $16d6: $7e
	and a                                            ; $16d7: $a7
	scf                                              ; $16d8: $37
	ret z                                            ; $16d9: $c8

	dec [hl]                                         ; $16da: $35
	ret nz                                           ; $16db: $c0

	inc l                                            ; $16dc: $2c
	ld a, [hl+]                                      ; $16dd: $2a
	ld e, a                                          ; $16de: $5f
	or [hl]                                          ; $16df: $b6
	ret z                                            ; $16e0: $c8

	ld a, [wRomBank]                                    ; $16e1: $fa $03 $c1
	push af                                          ; $16e4: $f5
	push hl                                          ; $16e5: $e5
	call Call_000_1749                               ; $16e6: $cd $49 $17
	call Call_000_1762                               ; $16e9: $cd $62 $17

jr_000_16ec:
	add [hl]                                         ; $16ec: $86
	ld e, a                                          ; $16ed: $5f
	inc hl                                           ; $16ee: $23
	ld a, [hl]                                       ; $16ef: $7e
	adc $00                                          ; $16f0: $ce $00
	ld d, a                                          ; $16f2: $57
	dec hl                                           ; $16f3: $2b
	ld a, [de]                                       ; $16f4: $1a
	inc de                                           ; $16f5: $13
	inc a                                            ; $16f6: $3c
	jr z, jr_000_16ec                                ; $16f7: $28 $f3

	pop hl                                           ; $16f9: $e1
	inc a                                            ; $16fa: $3c
	call z, Call_000_1777                            ; $16fb: $cc $77 $17
	dec a                                            ; $16fe: $3d
	dec a                                            ; $16ff: $3d
	ld l, $0c                                        ; $1700: $2e $0c
	ld [hl], a                                       ; $1702: $77
	ld a, [de]                                       ; $1703: $1a
	ld c, a                                          ; $1704: $4f
	inc de                                           ; $1705: $13
	ld a, [de]                                       ; $1706: $1a
	ld b, a                                          ; $1707: $47
	and c                                            ; $1708: $a1
	inc c                                            ; $1709: $0c
	inc a                                            ; $170a: $3c
	ld [$c0d1], a                                    ; $170b: $ea $d1 $c0
	jr z, jr_000_172b                                ; $170e: $28 $1b

	dec c                                            ; $1710: $0d
	ld a, b                                          ; $1711: $78
	inc de                                           ; $1712: $13
	rrca                                             ; $1713: $0f
	ld [$c0d1], a                                    ; $1714: $ea $d1 $c0
	ld a, c                                          ; $1717: $79
	and $03                                          ; $1718: $e6 $03
	cp $03                                           ; $171a: $fe $03
	ld a, $3f                                        ; $171c: $3e $3f
	jr nz, jr_000_1726                               ; $171e: $20 $06

	ld a, $d0                                        ; $1720: $3e $d0
	add c                                            ; $1722: $81
	ld c, a                                          ; $1723: $4f
	ld a, $d4                                        ; $1724: $3e $d4

jr_000_1726:
	res 7, b                                         ; $1726: $cb $b8
	res 6, b                                         ; $1728: $cb $b0
	adc b                                            ; $172a: $88

jr_000_172b:
	ld l, $09                                        ; $172b: $2e $09
	ld [hl-], a                                      ; $172d: $32
	ld [hl], c                                       ; $172e: $71
	ld l, $10                                        ; $172f: $2e $10
	ld a, [$c0d1]                                    ; $1731: $fa $d1 $c0
	and $60                                          ; $1734: $e6 $60
	xor [hl]                                         ; $1736: $ae
	ld l, $03                                        ; $1737: $2e $03
	ld [hl-], a                                      ; $1739: $32
	ld a, [$c0d2]                                    ; $173a: $fa $d2 $c0
	ld c, a                                          ; $173d: $4f
	ld a, e                                          ; $173e: $7b
	sub c                                            ; $173f: $91
	ld l, $0f                                        ; $1740: $2e $0f
	ld [hl], a                                       ; $1742: $77
	pop af                                           ; $1743: $f1
	call Call_000_1822                               ; $1744: $cd $22 $18
	and a                                            ; $1747: $a7
	ret                                              ; $1748: $c9


Call_000_1749:
	ld a, $0f                                        ; $1749: $3e $0f
	and [hl]                                         ; $174b: $a6
	ld d, a                                          ; $174c: $57
	ld a, [hl]                                       ; $174d: $7e
	swap a                                           ; $174e: $cb $37
	and $0f                                          ; $1750: $e6 $0f
	ld c, a                                          ; $1752: $4f
	add a                                            ; $1753: $87
	add c                                            ; $1754: $81
	ld c, a                                          ; $1755: $4f
	ld b, $00                                        ; $1756: $06 $00
	inc l                                            ; $1758: $2c
	ld a, [hl+]                                      ; $1759: $2a
	ld [$c0d0], a                                    ; $175a: $ea $d0 $c0
	ld a, [hl+]                                      ; $175d: $2a
	ld [$c0d1], a                                    ; $175e: $ea $d1 $c0
	ret                                              ; $1761: $c9


Call_000_1762:
	ld hl, $16bb                                     ; $1762: $21 $bb $16
	add hl, bc                                       ; $1765: $09
	ld a, [hl+]                                      ; $1766: $2a
	call Call_000_1822                               ; $1767: $cd $22 $18
	ld a, [hl+]                                      ; $176a: $2a
	ld h, [hl]                                       ; $176b: $66
	ld l, a                                          ; $176c: $6f
	add hl, de                                       ; $176d: $19
	add hl, de                                       ; $176e: $19
	ld a, [hl]                                       ; $176f: $7e
	ld [$c0d2], a                                    ; $1770: $ea $d2 $c0
	ld a, [$c0d0]                                    ; $1773: $fa $d0 $c0
	ret                                              ; $1776: $c9


Call_000_1777:
	ld a, [$c0d8]                                    ; $1777: $fa $d8 $c0
	and a                                            ; $177a: $a7
	jr nz, jr_000_17e0                               ; $177b: $20 $63

	push hl                                          ; $177d: $e5
	ld a, [de]                                       ; $177e: $1a
	ld [$c0d9], a                                    ; $177f: $ea $d9 $c0
	inc de                                           ; $1782: $13
	ld a, [de]                                       ; $1783: $1a
	ld c, a                                          ; $1784: $4f
	inc de                                           ; $1785: $13
	ld a, [de]                                       ; $1786: $1a
	ld b, a                                          ; $1787: $47
	inc de                                           ; $1788: $13
	push bc                                          ; $1789: $c5
	ld l, $02                                        ; $178a: $2e $02
	ld l, [hl]                                       ; $178c: $6e
	ld h, $00                                        ; $178d: $26 $00
	add hl, hl                                       ; $178f: $29
	add hl, hl                                       ; $1790: $29
	add hl, hl                                       ; $1791: $29
	add hl, hl                                       ; $1792: $29
	ld a, [de]                                       ; $1793: $1a
	inc de                                           ; $1794: $13
	srl a                                            ; $1795: $cb $3f
	ld [$c0d0], a                                    ; $1797: $ea $d0 $c0
	ld a, e                                          ; $179a: $7b
	ld [$c0da], a                                    ; $179b: $ea $da $c0
	ld a, d                                          ; $179e: $7a
	ld [$c0db], a                                    ; $179f: $ea $db $c0
	ld de, $8000                                     ; $17a2: $11 $00 $80
	jr nc, jr_000_17aa                               ; $17a5: $30 $03

	ld de, $8800                                     ; $17a7: $11 $00 $88

jr_000_17aa:
	add hl, de                                       ; $17aa: $19
	pop de                                           ; $17ab: $d1
	ld a, [$c0d9]                                    ; $17ac: $fa $d9 $c0

jr_000_17af:
	cp $02                                           ; $17af: $fe $02
	jr c, jr_000_17b5                                ; $17b1: $38 $02

	ld a, $02                                        ; $17b3: $3e $02

jr_000_17b5:
	push af                                          ; $17b5: $f5
	push hl                                          ; $17b6: $e5
	push de                                          ; $17b7: $d5
	add a                                            ; $17b8: $87
	add a                                            ; $17b9: $87
	add a                                            ; $17ba: $87
	add a                                            ; $17bb: $87
	push af                                          ; $17bc: $f5
	call EnqueueDataCopyType4Header                               ; $17bd: $cd $75 $16
	pop af                                           ; $17c0: $f1
	ld c, a                                          ; $17c1: $4f
	ld b, $00                                        ; $17c2: $06 $00
	pop hl                                           ; $17c4: $e1
	add hl, bc                                       ; $17c5: $09
	ld e, l                                          ; $17c6: $5d
	ld d, h                                          ; $17c7: $54
	pop hl                                           ; $17c8: $e1
	pop af                                           ; $17c9: $f1
	ld c, a                                          ; $17ca: $4f
	ld a, [$c0d9]                                    ; $17cb: $fa $d9 $c0
	sub c                                            ; $17ce: $91
	ld [$c0d9], a                                    ; $17cf: $ea $d9 $c0
	jr nz, jr_000_17af                               ; $17d2: $20 $db

	ld a, [$c0da]                                    ; $17d4: $fa $da $c0
	ld e, a                                          ; $17d7: $5f
	ld a, [$c0db]                                    ; $17d8: $fa $db $c0
	ld d, a                                          ; $17db: $57
	pop hl                                           ; $17dc: $e1
	ld a, [de]                                       ; $17dd: $1a
	inc de                                           ; $17de: $13
	ret                                              ; $17df: $c9


jr_000_17e0:
	inc de                                           ; $17e0: $13
	inc de                                           ; $17e1: $13
	inc de                                           ; $17e2: $13
	inc de                                           ; $17e3: $13
	ld a, [de]                                       ; $17e4: $1a
	inc de                                           ; $17e5: $13
	ret                                              ; $17e6: $c9


	call Call_000_16d0                               ; $17e7: $cd $d0 $16
	ret nc                                           ; $17ea: $d0

	ld l, $0c                                        ; $17eb: $2e $0c
	ld c, [hl]                                       ; $17ed: $4e
	ld l, $0f                                        ; $17ee: $2e $0f
	ld a, [hl-]                                      ; $17f0: $3a
	and a                                            ; $17f1: $a7
	ret z                                            ; $17f2: $c8

	ld b, a                                          ; $17f3: $47
	dec l                                            ; $17f4: $2d
	ld a, [hl+]                                      ; $17f5: $2a
	ld e, a                                          ; $17f6: $5f
	or [hl]                                          ; $17f7: $b6
	ret z                                            ; $17f8: $c8

	ld a, [wRomBank]                                    ; $17f9: $fa $03 $c1
	push af                                          ; $17fc: $f5
	push bc                                          ; $17fd: $c5
	push hl                                          ; $17fe: $e5
	push bc                                          ; $17ff: $c5
	call Call_000_1749                               ; $1800: $cd $49 $17
	call Call_000_1762                               ; $1803: $cd $62 $17
	ld e, [hl]                                       ; $1806: $5e
	inc hl                                           ; $1807: $23
	ld d, [hl]                                       ; $1808: $56
	pop bc                                           ; $1809: $c1
	call Call_000_1829                               ; $180a: $cd $29 $18
	pop hl                                           ; $180d: $e1
	ld l, $0f                                        ; $180e: $2e $0f
	ld [hl], a                                       ; $1810: $77
	ld l, $0c                                        ; $1811: $2e $0c
	ld [hl], $01                                     ; $1813: $36 $01
	ld a, $01                                        ; $1815: $3e $01
	call Call_000_16d1                               ; $1817: $cd $d1 $16
	pop bc                                           ; $181a: $c1
	ld l, $0c                                        ; $181b: $2e $0c
	ld [hl], c                                       ; $181d: $71
	ld l, $0f                                        ; $181e: $2e $0f
	ld [hl], b                                       ; $1820: $70
	pop af                                           ; $1821: $f1

Call_000_1822:
	ld [wRomBank], a                                    ; $1822: $ea $03 $c1
	ld [rROMB0], a                                    ; $1825: $ea $00 $20
	ret                                              ; $1828: $c9


Call_000_1829:
	ld hl, $c0d2                                     ; $1829: $21 $d2 $c0
	xor a                                            ; $182c: $af

jr_000_182d:
	ld c, a                                          ; $182d: $4f
	ld a, [de]                                       ; $182e: $1a
	inc de                                           ; $182f: $13
	inc a                                            ; $1830: $3c
	ret z                                            ; $1831: $c8

	inc a                                            ; $1832: $3c
	jr nz, jr_000_183a                               ; $1833: $20 $05

	inc de                                           ; $1835: $13
	inc de                                           ; $1836: $13
	inc de                                           ; $1837: $13
	inc de                                           ; $1838: $13
	inc de                                           ; $1839: $13

jr_000_183a:
	inc de                                           ; $183a: $13
	inc de                                           ; $183b: $13
	ld a, e                                          ; $183c: $7b
	sub [hl]                                         ; $183d: $96
	cp b                                             ; $183e: $b8
	jr c, jr_000_182d                                ; $183f: $38 $ec

	ld a, c                                          ; $1841: $79
	ret                                              ; $1842: $c9


	ld a, [$c0f8]                                    ; $1843: $fa $f8 $c0
	ld h, a                                          ; $1846: $67
	ld a, [$c0f9]                                    ; $1847: $fa $f9 $c0
	ld l, a                                          ; $184a: $6f
	ret                                              ; $184b: $c9


SetWramBank2IfGBCelseRet:
	ld a, [wInitialA]                                    ; $184c: $fa $00 $c1
	cp $11                                           ; $184f: $fe $11
	ld a, $02                                        ; $1851: $3e $02
	jp z, SetWramBankAStoringCurrInHighByteInStackAfterReturn                              ; $1853: $ca $05 $08

	pop hl                                           ; $1856: $e1
	ret                                              ; $1857: $c9


Call_000_1858::
	ld a, [$c133]                                    ; $1858: $fa $33 $c1
	and a                                            ; $185b: $a7
	ret nz                                           ; $185c: $c0

	call SetWramBank2IfGBCelseRet                               ; $185d: $cd $4c $18
	ld a, [$c10e]                                    ; $1860: $fa $0e $c1
	or a                                             ; $1863: $b7
	call nz, $d800                                   ; $1864: $c4 $00 $d8
	ld a, [$c10f]                                    ; $1867: $fa $0f $c1
	or a                                             ; $186a: $b7
	call nz, $d80e                                   ; $186b: $c4 $0e $d8
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $186e: $c3 $7f $07


Call_000_1871:
	call SetWramBank2IfGBCelseRet                               ; $1871: $cd $4c $18
	call $d866                                       ; $1874: $cd $66 $d8
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $1877: $c3 $7f $07


	call SetWramBank2IfGBCelseRet                               ; $187a: $cd $4c $18
	call $d882                                       ; $187d: $cd $82 $d8
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $1880: $c3 $7f $07


	call SetWramBank2IfGBCelseRet                               ; $1883: $cd $4c $18
	call $d884                                       ; $1886: $cd $84 $d8
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $1889: $c3 $7f $07


Call_000_188c:
	xor a                                            ; $188c: $af
	call Call_000_19be                               ; $188d: $cd $be $19
	call SetWramBank2IfGBCelseRet                               ; $1890: $cd $4c $18
	call $d88a                                       ; $1893: $cd $8a $d8
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $1896: $c3 $7f $07


Jump_000_1899:
	xor a                                            ; $1899: $af
	call Call_000_19be                               ; $189a: $cd $be $19
	call SetWramBank2IfGBCelseRet                               ; $189d: $cd $4c $18
	call $d88e                                       ; $18a0: $cd $8e $d8
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $18a3: $c3 $7f $07


	xor a                                            ; $18a6: $af
	call Call_000_19be                               ; $18a7: $cd $be $19
	call SetWramBank2IfGBCelseRet                               ; $18aa: $cd $4c $18
	call $d892                                       ; $18ad: $cd $92 $d8
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $18b0: $c3 $7f $07


	xor a                                            ; $18b3: $af
	call Call_000_19be                               ; $18b4: $cd $be $19
	call SetWramBank2IfGBCelseRet                               ; $18b7: $cd $4c $18
	call $d896                                       ; $18ba: $cd $96 $d8
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $18bd: $c3 $7f $07


	xor a                                            ; $18c0: $af
	call Call_000_19be                               ; $18c1: $cd $be $19

Call_000_18c4:
	call SetWramBank2IfGBCelseRet                               ; $18c4: $cd $4c $18
	call $d89a                                       ; $18c7: $cd $9a $d8
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $18ca: $c3 $7f $07


	xor a                                            ; $18cd: $af
	call Call_000_19be                               ; $18ce: $cd $be $19
	call SetWramBank2IfGBCelseRet                               ; $18d1: $cd $4c $18
	call $d89c                                       ; $18d4: $cd $9c $d8
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $18d7: $c3 $7f $07


	call SetWramBank2IfGBCelseRet                               ; $18da: $cd $4c $18
	call $d8e0                                       ; $18dd: $cd $e0 $d8
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $18e0: $c3 $7f $07


	call SetWramBank2IfGBCelseRet                               ; $18e3: $cd $4c $18
	call $d8e4                                       ; $18e6: $cd $e4 $d8
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $18e9: $c3 $7f $07


	call SetWramBank2IfGBCelseRet                               ; $18ec: $cd $4c $18
	call $d8e8                                       ; $18ef: $cd $e8 $d8
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $18f2: $c3 $7f $07


	call SetWramBank2IfGBCelseRet                               ; $18f5: $cd $4c $18
	call $d8ec                                       ; $18f8: $cd $ec $d8
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $18fb: $c3 $7f $07


	call SetWramBank2IfGBCelseRet                               ; $18fe: $cd $4c $18
	call $d8f0                                       ; $1901: $cd $f0 $d8
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $1904: $c3 $7f $07


	call SetWramBank2IfGBCelseRet                               ; $1907: $cd $4c $18
	call $d8f2                                       ; $190a: $cd $f2 $d8
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $190d: $c3 $7f $07


	ld d, a                                          ; $1910: $57
	call SetWramBank2IfGBCelseRet                               ; $1911: $cd $4c $18
	ld a, d                                          ; $1914: $7a
	call $d8ff                                       ; $1915: $cd $ff $d8
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $1918: $c3 $7f $07


	ld d, a                                          ; $191b: $57
	call SetWramBank2IfGBCelseRet                               ; $191c: $cd $4c $18
	ld a, d                                          ; $191f: $7a
	call $d903                                       ; $1920: $cd $03 $d9
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $1923: $c3 $7f $07


Call_000_1926:
	ld d, a                                          ; $1926: $57
	call SetWramBank2IfGBCelseRet                               ; $1927: $cd $4c $18
	ld a, d                                          ; $192a: $7a
	call $d907                                       ; $192b: $cd $07 $d9
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $192e: $c3 $7f $07


	ld d, a                                          ; $1931: $57
	call SetWramBank2IfGBCelseRet                               ; $1932: $cd $4c $18
	ld a, d                                          ; $1935: $7a
	call $d90b                                       ; $1936: $cd $0b $d9
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $1939: $c3 $7f $07


	ld d, a                                          ; $193c: $57
	call SetWramBank2IfGBCelseRet                               ; $193d: $cd $4c $18
	ld a, d                                          ; $1940: $7a
	call $d90f                                       ; $1941: $cd $0f $d9
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $1944: $c3 $7f $07


	ld d, a                                          ; $1947: $57
	call SetWramBank2IfGBCelseRet                               ; $1948: $cd $4c $18
	ld a, d                                          ; $194b: $7a
	call $d911                                       ; $194c: $cd $11 $d9
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $194f: $c3 $7f $07


Call_000_1952:
	call Call_000_19d8                               ; $1952: $cd $d8 $19
	call SetWramBank2IfGBCelseRet                               ; $1955: $cd $4c $18
	call $d9a0                                       ; $1958: $cd $a0 $d9
	xor a                                            ; $195b: $af
	ld [$c133], a                                    ; $195c: $ea $33 $c1
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $195f: $c3 $7f $07


	ld a, $ff                                        ; $1962: $3e $ff
	ldh [hDisp0_BGP], a                                     ; $1964: $e0 $85
	ldh [hDisp0_OBP0], a                                     ; $1966: $e0 $86
	ldh [hDisp0_OBP1], a                                     ; $1968: $e0 $87
	call SetWramBank2IfGBCelseRet                               ; $196a: $cd $4c $18
	call $dd21                                       ; $196d: $cd $21 $dd
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $1970: $c3 $7f $07


Call_000_1973:
	xor a                                            ; $1973: $af
	ldh [hDisp0_BGP], a                                     ; $1974: $e0 $85
	ldh [hDisp0_OBP0], a                                     ; $1976: $e0 $86
	ldh [hDisp0_OBP1], a                                     ; $1978: $e0 $87
	call SetWramBank2IfGBCelseRet                               ; $197a: $cd $4c $18
	call $dd2e                                       ; $197d: $cd $2e $dd
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $1980: $c3 $7f $07


Call_000_1983:
	call Call_000_19cc                               ; $1983: $cd $cc $19
	ld a, $d4                                        ; $1986: $3e $d4
	jr jr_000_19a4                                   ; $1988: $18 $1a

Call_000_198a:
	call Call_000_19cc                               ; $198a: $cd $cc $19
	ld a, $d3                                        ; $198d: $3e $d3
	jr jr_000_19a4                                   ; $198f: $18 $13

	call Call_000_19cc                               ; $1991: $cd $cc $19
	ld a, $d2                                        ; $1994: $3e $d2
	jr jr_000_19a4                                   ; $1996: $18 $0c

	call Call_000_19cc                               ; $1998: $cd $cc $19
	ld a, $d1                                        ; $199b: $3e $d1
	jr jr_000_19a4                                   ; $199d: $18 $05

	call Call_000_19cc                               ; $199f: $cd $cc $19
	ld a, $d0                                        ; $19a2: $3e $d0

jr_000_19a4:
	push hl                                          ; $19a4: $e5
	ld h, a                                          ; $19a5: $67
	ld l, $00                                        ; $19a6: $2e $00
	call Call_000_19ae                               ; $19a8: $cd $ae $19
	pop hl                                           ; $19ab: $e1
	and a                                            ; $19ac: $a7
	ret                                              ; $19ad: $c9


Call_000_19ae:
	push bc                                          ; $19ae: $c5
	call Call_000_19b5                               ; $19af: $cd $b5 $19
	ld a, c                                          ; $19b2: $79
	pop bc                                           ; $19b3: $c1
	ret                                              ; $19b4: $c9


Call_000_19b5:
	ld c, $00                                        ; $19b5: $0e $00
	call SetWramBank2IfGBCelseRet                               ; $19b7: $cd $4c $18
	ld c, [hl]                                       ; $19ba: $4e
	jp SetWramBankToHighByteInStackAfterReturn                                 ; $19bb: $c3 $7f $07


Call_000_19be:
	ld e, a                                          ; $19be: $5f
	ld a, [wInitialA]                                    ; $19bf: $fa $00 $c1
	cp $11                                           ; $19c2: $fe $11
	ret z                                            ; $19c4: $c8

	ld a, e                                          ; $19c5: $7b
	pop de                                           ; $19c6: $d1
	rst FarCall                                          ; $19c7: $f7
	ld h, d                                          ; $19c8: $62
	ld c, c                                          ; $19c9: $49
	ld [bc], a                                       ; $19ca: $02
	ret                                              ; $19cb: $c9


Call_000_19cc:
	ld a, [wInitialA]                                    ; $19cc: $fa $00 $c1
	cp $11                                           ; $19cf: $fe $11
	ret z                                            ; $19d1: $c8

	ld a, [$d7a0]                                    ; $19d2: $fa $a0 $d7
	and a                                            ; $19d5: $a7
	pop de                                           ; $19d6: $d1
	ret                                              ; $19d7: $c9


Call_000_19d8:
	xor a                                            ; $19d8: $af
	ld [$c133], a                                    ; $19d9: $ea $33 $c1
	ld a, [$d7a0]                                    ; $19dc: $fa $a0 $d7
	and a                                            ; $19df: $a7
	ret z                                            ; $19e0: $c8

	pop de                                           ; $19e1: $d1
	rst FarCall                                          ; $19e2: $f7
	jr c, @+$4c                                      ; $19e3: $38 $4a

	ld [bc], a                                       ; $19e5: $02
	ret                                              ; $19e6: $c9


	push bc                                          ; $19e7: $c5
	ld a, $10                                        ; $19e8: $3e $10
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $19ea: $cd $83 $07
	ld a, [de]                                       ; $19ed: $1a
	ld b, a                                          ; $19ee: $47
	call _SetRomBankToHighByteInStackAfterReturn                               ; $19ef: $cd $ef $07
	ld a, b                                          ; $19f2: $78
	pop bc                                           ; $19f3: $c1
	ret                                              ; $19f4: $c9


Call_000_19f5::
	push de                                          ; $19f5: $d5
	call Call_000_188c                               ; $19f6: $cd $8c $18
	pop de                                           ; $19f9: $d1
	ld a, d                                          ; $19fa: $7a
	or e                                             ; $19fb: $b3
	ret z                                            ; $19fc: $c8

	ld b, d                                          ; $19fd: $42
	ld c, e                                          ; $19fe: $4b
	jp Jump_000_1899                                 ; $19ff: $c3 $99 $18


Func_1a02::
	ld a, [wInitialA]                                    ; $1a02: $fa $00 $c1
	cp $11                                           ; $1a05: $fe $11
	jr z, jr_000_1a11                                ; $1a07: $28 $08

	ldh a, [rBGP]                                    ; $1a09: $f0 $47
	and a                                            ; $1a0b: $a7
	ld a, $01                                        ; $1a0c: $3e $01
	ret nz                                           ; $1a0e: $c0

	xor a                                            ; $1a0f: $af
	ret                                              ; $1a10: $c9


jr_000_1a11:
	ld a, $18                                        ; $1a11: $3e $18
	ldh [rBCPS], a                                   ; $1a13: $e0 $68
	ldh a, [rBCPD]                                   ; $1a15: $f0 $69
	and a                                            ; $1a17: $a7
	ld a, $01                                        ; $1a18: $3e $01
	ret z                                            ; $1a1a: $c8

	xor a                                            ; $1a1b: $af
	ret                                              ; $1a1c: $c9


	ld a, [wInitialA]                                    ; $1a1d: $fa $00 $c1
	cp $11                                           ; $1a20: $fe $11
	jr z, jr_000_1a2d                                ; $1a22: $28 $09

	ldh a, [rOBP0]                                   ; $1a24: $f0 $48
	and $fc                                          ; $1a26: $e6 $fc
	ld a, $01                                        ; $1a28: $3e $01
	ret nz                                           ; $1a2a: $c0

	xor a                                            ; $1a2b: $af
	ret                                              ; $1a2c: $c9


jr_000_1a2d:
	xor a                                            ; $1a2d: $af
	ldh [rOCPS], a                                   ; $1a2e: $e0 $6a
	ldh a, [rOCPD]                                   ; $1a30: $f0 $6b
	and a                                            ; $1a32: $a7
	ld a, $01                                        ; $1a33: $3e $01
	ret z                                            ; $1a35: $c8

	xor a                                            ; $1a36: $af
	ret                                              ; $1a37: $c9


	ld a, [wInitialA]                                    ; $1a38: $fa $00 $c1
	cp $11                                           ; $1a3b: $fe $11
	jr nz, jr_000_1a91                               ; $1a3d: $20 $52

	ld a, d                                          ; $1a3f: $7a
	cp $ff                                           ; $1a40: $fe $ff
	ld bc, $6248                                     ; $1a42: $01 $48 $62
	jr z, jr_000_1a4a                                ; $1a45: $28 $03

	ld bc, $6244                                     ; $1a47: $01 $44 $62

jr_000_1a4a:
	ld de, $0000                                     ; $1a4a: $11 $00 $00
	call Call_000_19f5                               ; $1a4d: $cd $f5 $19
	rst FarCall                                          ; $1a50: $f7
	ld h, c                                          ; $1a51: $61
	ld [hl], l                                       ; $1a52: $75
	inc b                                            ; $1a53: $04
	ret                                              ; $1a54: $c9


	ld a, [wInitialA]                                    ; $1a55: $fa $00 $c1
	cp $11                                           ; $1a58: $fe $11
	jr nz, jr_000_1a91                               ; $1a5a: $20 $35

	ld a, d                                          ; $1a5c: $7a
	cp $ff                                           ; $1a5d: $fe $ff
	ld bc, $6240                                     ; $1a5f: $01 $40 $62
	jr z, jr_000_1a67                                ; $1a62: $28 $03

	ld bc, $623c                                     ; $1a64: $01 $3c $62

jr_000_1a67:
	jr jr_000_1a4a                                   ; $1a67: $18 $e1

	ld a, [wInitialA]                                    ; $1a69: $fa $00 $c1
	cp $11                                           ; $1a6c: $fe $11
	jr nz, jr_000_1a97                               ; $1a6e: $20 $27

	ld a, d                                          ; $1a70: $7a
	cp $ff                                           ; $1a71: $fe $ff
	ld bc, $622c                                     ; $1a73: $01 $2c $62
	jr z, jr_000_1a7b                                ; $1a76: $28 $03

	ld bc, $6230                                     ; $1a78: $01 $30 $62

jr_000_1a7b:
	jr jr_000_1a4a                                   ; $1a7b: $18 $cd

Call_000_1a7d:
	ld a, [wInitialA]                                    ; $1a7d: $fa $00 $c1
	cp $11                                           ; $1a80: $fe $11
	jr nz, jr_000_1a97                               ; $1a82: $20 $13

	ld a, d                                          ; $1a84: $7a
	cp $ff                                           ; $1a85: $fe $ff
	ld bc, $6234                                     ; $1a87: $01 $34 $62
	jr z, jr_000_1a8f                                ; $1a8a: $28 $03

	ld bc, $6238                                     ; $1a8c: $01 $38 $62

jr_000_1a8f:
	jr jr_000_1a4a                                   ; $1a8f: $18 $b9

jr_000_1a91:
	ld a, d                                          ; $1a91: $7a
	cpl                                              ; $1a92: $2f
	ldh [hDisp0_BGP], a                                     ; $1a93: $e0 $85
	jr jr_000_1aa1                                   ; $1a95: $18 $0a

jr_000_1a97:
	ld a, d                                          ; $1a97: $7a
	cpl                                              ; $1a98: $2f
	ldh [hDisp0_BGP], a                                     ; $1a99: $e0 $85
	ldh [hDisp0_OBP0], a                                     ; $1a9b: $e0 $86
	ldh [hDisp0_OBP1], a                                     ; $1a9d: $e0 $87
	jr jr_000_1aa1                                   ; $1a9f: $18 $00

jr_000_1aa1:
	rst FarCall                                          ; $1aa1: $f7
	ld d, b                                          ; $1aa2: $50
	ld [hl], l                                       ; $1aa3: $75
	inc b                                            ; $1aa4: $04
	ret                                              ; $1aa5: $c9


Func_1aa6::
jr_000_1aa6:
	call Call_000_1c71                               ; $1aa6: $cd $71 $1c
	call Call_000_198a                               ; $1aa9: $cd $8a $19
	jr nz, jr_000_1aa6                               ; $1aac: $20 $f8

	call Call_000_1983                               ; $1aae: $cd $83 $19
	jr nz, jr_000_1aa6                               ; $1ab1: $20 $f3

	ret                                              ; $1ab3: $c9


;
	call Call_000_1ca1                               ; $1ab4: $cd $a1 $1c
	ld a, [wFrameCounter]                                    ; $1ab7: $fa $1f $c1

jr_000_1aba:
	ld hl, wFrameCounter                                     ; $1aba: $21 $1f $c1
	cp [hl]                                          ; $1abd: $be
	jr z, jr_000_1aba                                ; $1abe: $28 $fa

	ret                                              ; $1ac0: $c9


Func_1ac1::
	ld b, $40                                        ; $1ac1: $06 $40
	jp Jump_000_3706                                 ; $1ac3: $c3 $06 $37


Func_1ac6::
	ld b, $bf                                        ; $1ac6: $06 $bf
	jp Jump_000_370e                                 ; $1ac8: $c3 $0e $37


Func_1acb::
	ld b, $80                                        ; $1acb: $06 $80
	jp Jump_000_3706                                 ; $1acd: $c3 $06 $37


;
	ld b, $7f                                        ; $1ad0: $06 $7f
	jp Jump_000_370e                                 ; $1ad2: $c3 $0e $37


	ld b, $04                                        ; $1ad5: $06 $04
	jp Jump_000_3706                                 ; $1ad7: $c3 $06 $37


	ld b, $fb                                        ; $1ada: $06 $fb
	jp Jump_000_370e                                 ; $1adc: $c3 $0e $37


	push af                                          ; $1adf: $f5
	ld a, [$c132]                                    ; $1ae0: $fa $32 $c1
	or b                                             ; $1ae3: $b0
	ld [$c132], a                                    ; $1ae4: $ea $32 $c1
	pop af                                           ; $1ae7: $f1
	ret                                              ; $1ae8: $c9


	push af                                          ; $1ae9: $f5
	ld a, $ff                                        ; $1aea: $3e $ff
	xor b                                            ; $1aec: $a8
	ld b, a                                          ; $1aed: $47
	ld a, [$c132]                                    ; $1aee: $fa $32 $c1
	and b                                            ; $1af1: $a0
	ld [$c132], a                                    ; $1af2: $ea $32 $c1
	pop af                                           ; $1af5: $f1
	ret                                              ; $1af6: $c9


Jump_000_1af7::
	push bc                                          ; $1af7: $c5
	ld b, a                                          ; $1af8: $47
	ld a, [$c135]                                    ; $1af9: $fa $35 $c1
	cp b                                             ; $1afc: $b8
	ld a, b                                          ; $1afd: $78
	pop bc                                           ; $1afe: $c1
	ret z                                            ; $1aff: $c8

	ld [$c135], a                                    ; $1b00: $ea $35 $c1
	xor a                                            ; $1b03: $af
	call Call_000_1e27                               ; $1b04: $cd $27 $1e
	ld a, [$c135]                                    ; $1b07: $fa $35 $c1
	and a                                            ; $1b0a: $a7
	ret z                                            ; $1b0b: $c8

	jp Jump_000_1e27                                 ; $1b0c: $c3 $27 $1e


	ld a, $67                                        ; $1b0f: $3e $67
	jp Jump_000_1e2e                                 ; $1b11: $c3 $2e $1e


Func_1b14::
	ld a, $32                                        ; $1b14: $3e $32
	jp Jump_000_1e2e                                 ; $1b16: $c3 $2e $1e


;
	ld a, [$d7ef]                                    ; $1b19: $fa $ef $d7
	inc a                                            ; $1b1c: $3c
	ld [$d7ef], a                                    ; $1b1d: $ea $ef $d7
	ret                                              ; $1b20: $c9


Func_1b21:
	ld a, [$d7f1]                                    ; $1b21: $fa $f1 $d7
	call wJumpTable                                       ; $1b24: $cd $80 $cf
	dw Func_1b2b
	dw Func_1b31


Func_1b2b:
	ld a, $01                                     ; $1b2b: $3e $01
	ld [$d7f1], a                                    ; $1b2d: $ea $f1 $d7
	ret                                              ; $1b30: $c9


Func_1b31:
	call Call_000_1b37                               ; $1b31: $cd $37 $1b
	jp Call_000_1bce                                 ; $1b34: $c3 $ce $1b


Call_000_1b37:
	ld a, [$c184]                                    ; $1b37: $fa $84 $c1
	call wJumpTable                                       ; $1b3a: $cd $80 $cf
	dw $1b45
	dw $1b9f
	dw $1ba9
	dw Func_1bae


	ld a, $01                                        ; $1b45: $3e $01
	ld [$c186], a                                    ; $1b47: $ea $86 $c1
	rst FarCall                                          ; $1b4a: $f7
	add hl, de                                       ; $1b4b: $19
	ld c, a                                          ; $1b4c: $4f
	inc bc                                           ; $1b4d: $03
	call Call_000_0986                               ; $1b4e: $cd $86 $09
	ld hl, $9800                                     ; $1b51: $21 $00 $98
	ld a, $a4                                        ; $1b54: $3e $a4
	ld b, $0b                                        ; $1b56: $06 $0b

jr_000_1b58:
	ld c, $14                                        ; $1b58: $0e $14
	push hl                                          ; $1b5a: $e5

jr_000_1b5b:
	ld [hl+], a                                      ; $1b5b: $22
	inc a                                            ; $1b5c: $3c
	dec c                                            ; $1b5d: $0d
	jr nz, jr_000_1b5b                               ; $1b5e: $20 $fb

	pop hl                                           ; $1b60: $e1
	ld de, $0020                                     ; $1b61: $11 $20 $00
	add hl, de                                       ; $1b64: $19
	dec b                                            ; $1b65: $05
	jr nz, jr_000_1b58                               ; $1b66: $20 $f0

	call Call_000_096e                               ; $1b68: $cd $6e $09
	rst FarCall                                          ; $1b6b: $f7
	ld sp, $0353                                     ; $1b6c: $31 $53 $03
	ld a, $ff                                        ; $1b6f: $3e $ff
	ld [$d133], a                                    ; $1b71: $ea $33 $d1
	inc a                                            ; $1b74: $3c
	ld [$d132], a                                    ; $1b75: $ea $32 $d1
	ld a, $01                                        ; $1b78: $3e $01
	ld [$d811], a                                    ; $1b7a: $ea $11 $d8
	jr jr_000_1ba4                                   ; $1b7d: $18 $25

jr_000_1b7f:
	ld a, [de]                                       ; $1b7f: $1a
	ld [hl+], a                                      ; $1b80: $22
	inc de                                           ; $1b81: $13
	cp $09                                           ; $1b82: $fe $09
	jr nz, jr_000_1b7f                               ; $1b84: $20 $f9

	ret                                              ; $1b86: $c9


	ldh a, [rAUD1LEN]                                ; $1b87: $f0 $11
	ldh a, [$ba]                                     ; $1b89: $f0 $ba
	pop af                                           ; $1b8b: $f1
	ld d, h                                          ; $1b8c: $54
	add hl, bc                                       ; $1b8d: $09
	ldh a, [rDIV]                                    ; $1b8e: $f0 $04
	ldh a, [$1f]                                     ; $1b90: $f0 $1f
	ldh a, [hDisp0_WX]                                     ; $1b92: $f0 $89
	add hl, bc                                       ; $1b94: $09
	ldh a, [rAUD1LEN]                                ; $1b95: $f0 $11
	ldh a, [$ba]                                     ; $1b97: $f0 $ba
	pop af                                           ; $1b99: $f1
	ld d, h                                          ; $1b9a: $54
	ldh a, [rAUD3LOW]                                ; $1b9b: $f0 $1d
	ld h, l                                          ; $1b9d: $65
	add hl, bc                                       ; $1b9e: $09
	ld a, [$d811]                                    ; $1b9f: $fa $11 $d8
	and a                                            ; $1ba2: $a7
	ret nz                                           ; $1ba3: $c0

jr_000_1ba4:
	ld hl, $c184                                     ; $1ba4: $21 $84 $c1
	inc [hl]                                         ; $1ba7: $34
	ret                                              ; $1ba8: $c9


	call Call_000_1c85                               ; $1ba9: $cd $85 $1c
	jr jr_000_1ba4                                   ; $1bac: $18 $f6


Func_1bae:
	ld a, [$c10b]                                    ; $1bae: $fa $0b $c1
	and a                                            ; $1bb1: $a7
	ret nz                                           ; $1bb2: $c0

	rst FarCall                                          ; $1bb3: $f7
	AddrBank StartScriptEngine
	pop hl                                           ; $1bb7: $e1
	ld b, a                                          ; $1bb8: $47
	xor a                                            ; $1bb9: $af
	ld [$c184], a                                    ; $1bba: $ea $84 $c1
	ld a, b                                          ; $1bbd: $78
	or a                                             ; $1bbe: $b7
	jp z, Jump_000_2983                              ; $1bbf: $ca $83 $29

	call Call_000_09d3                               ; $1bc2: $cd $d3 $09
	xor a                                            ; $1bc5: $af
	call Call_000_068e                               ; $1bc6: $cd $8e $06
	ld a, $05                                        ; $1bc9: $3e $05
	jp Call_000_291f                                 ; $1bcb: $c3 $1f $29


Call_000_1bce::
	ld a, BANK(Call_003_4000)                                        ; $1bce: $3e $03
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $1bd0: $cd $83 $07
	call Call_003_4000                                       ; $1bd3: $cd $00 $40
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $1bd6: $c3 $7b $07


;
	ld a, $03                                        ; $1bd9: $3e $03
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $1bdb: $cd $83 $07
	call $4b08                                       ; $1bde: $cd $08 $4b
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $1be1: $c3 $7b $07


Func_1be4::
	ld a, BANK(Jump_003_4c1c)                                        ; $1be4: $3e $03
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $1be6: $cd $83 $07
	call Jump_003_4c1c                                      ; $1be9: $cd $1c $4c
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $1bec: $c3 $7b $07


;
	ld a, $03                                        ; $1bef: $3e $03
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $1bf1: $cd $83 $07
	call $506a                                       ; $1bf4: $cd $6a $50
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $1bf7: $c3 $7b $07


	ld [$c0f3], a                                    ; $1bfa: $ea $f3 $c0
	ld a, $03                                        ; $1bfd: $3e $03
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $1bff: $cd $83 $07
	ld a, [$c0f3]                                    ; $1c02: $fa $f3 $c0
	call $5176                                       ; $1c05: $cd $76 $51
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $1c08: $c3 $7b $07


	ld a, $03                                        ; $1c0b: $3e $03
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $1c0d: $cd $83 $07
	call $474b                                       ; $1c10: $cd $4b $47
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $1c13: $c3 $7b $07


	ld [$c0f3], a                                    ; $1c16: $ea $f3 $c0
	ld a, $03                                        ; $1c19: $3e $03
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $1c1b: $cd $83 $07
	ld a, [$c0f3]                                    ; $1c1e: $fa $f3 $c0
	call $517d                                       ; $1c21: $cd $7d $51
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $1c24: $c3 $7b $07


Func_1c27::
	ld a, BANK(Func_03_4bc3)                                        ; $1c27: $3e $03
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $1c29: $cd $83 $07
	call Func_03_4bc3                                       ; $1c2c: $cd $c3 $4b
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $1c2f: $c3 $7b $07


Func_1c32::
	ld a, BANK(Call_003_4cca)                                        ; $1c32: $3e $03
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $1c34: $cd $83 $07
	call Call_003_4cca                                       ; $1c37: $cd $ca $4c
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $1c3a: $c3 $7b $07


;
	ldh a, [rLCDC]                                   ; $1c3d: $f0 $40
	bit 7, a                                         ; $1c3f: $cb $7f
	ld hl, wFrameCounter                                     ; $1c41: $21 $1f $c1
	ld a, [$d3a8]                                    ; $1c44: $fa $a8 $d3
	ret z                                            ; $1c47: $c8

	cp [hl]                                          ; $1c48: $be
	push bc                                          ; $1c49: $c5
	push af                                          ; $1c4a: $f5
	call nz, Call_000_1c51                           ; $1c4b: $c4 $51 $1c
	pop af                                           ; $1c4e: $f1
	pop bc                                           ; $1c4f: $c1
	ret                                              ; $1c50: $c9


Call_000_1c51:
	xor a                                            ; $1c51: $af
	ld [$c110], a                                    ; $1c52: $ea $10 $c1
	rst FarCall                                          ; $1c55: $f7
	db $10                                           ; $1c56: $10
	ld d, b                                          ; $1c57: $50
	ld bc, $eaaf                                     ; $1c58: $01 $af $ea
	db $10                                           ; $1c5b: $10
	pop bc                                           ; $1c5c: $c1
	call Call_000_0711                               ; $1c5d: $cd $11 $07
	ld a, [wFrameCounter]                                    ; $1c60: $fa $1f $c1
	ld [$d3a8], a                                    ; $1c63: $ea $a8 $d3
	ldh a, [rLCDC]                                   ; $1c66: $f0 $40
	bit 7, a                                         ; $1c68: $cb $7f
	ret z                                            ; $1c6a: $c8

	ld a, $01                                        ; $1c6b: $3e $01
	ld [$c110], a                                    ; $1c6d: $ea $10 $c1
	ret                                              ; $1c70: $c9


Call_000_1c71::
	ldh a, [rLCDC]                                   ; $1c71: $f0 $40
	bit 7, a                                         ; $1c73: $cb $7f
	ld hl, wFrameCounter                                     ; $1c75: $21 $1f $c1
	ld a, [$d80a]                                    ; $1c78: $fa $0a $d8
	ret z                                            ; $1c7b: $c8

	cp [hl]                                          ; $1c7c: $be
	push bc                                          ; $1c7d: $c5
	push af                                          ; $1c7e: $f5
	call nz, Call_000_1c85                           ; $1c7f: $c4 $85 $1c
	pop af                                           ; $1c82: $f1
	pop bc                                           ; $1c83: $c1
	ret                                              ; $1c84: $c9


Call_000_1c85::
	xor a                                            ; $1c85: $af
	ld [$c110], a                                    ; $1c86: $ea $10 $c1
	ld a, [$c186]                                    ; $1c89: $fa $86 $c1
	cp $07                                           ; $1c8c: $fe $07
	call z, Call_000_2d29                            ; $1c8e: $cc $29 $2d
	ld a, [$c186]                                    ; $1c91: $fa $86 $c1
	cp $0c                                           ; $1c94: $fe $0c
	call z, Call_000_2b66                            ; $1c96: $cc $66 $2b
	ld a, [$c186]                                    ; $1c99: $fa $86 $c1
	cp $01                                           ; $1c9c: $fe $01
	call z, Call_000_2a0a                            ; $1c9e: $cc $0a $2a

Call_000_1ca1::
	xor a                                            ; $1ca1: $af
	ld [$c110], a                                    ; $1ca2: $ea $10 $c1
	call Call_000_0711                               ; $1ca5: $cd $11 $07
	ld a, [wFrameCounter]                                    ; $1ca8: $fa $1f $c1
	ld [$d80a], a                                    ; $1cab: $ea $0a $d8
	ldh a, [rLCDC]                                   ; $1cae: $f0 $40
	bit 7, a                                         ; $1cb0: $cb $7f
	ret z                                            ; $1cb2: $c8

	ld a, $01                                        ; $1cb3: $3e $01
	ld [$c110], a                                    ; $1cb5: $ea $10 $c1
	ret                                              ; $1cb8: $c9


Func_1cb9::
	ld a, [$c183]                                    ; $1cb9: $fa $83 $c1
	cp $08                                           ; $1cbc: $fe $08
	ret z                                            ; $1cbe: $c8

	pop hl                                           ; $1cbf: $e1
	ret                                              ; $1cc0: $c9


; If far bank == $ff, it reads from far addr not in rom
GetNextFarTextByte::
	push bc                                                         ; $1cc1
	push hl                                                         ; $1cc2

; Get text byte src, reading from HL if bank is $ff (invalid src)
	call GetFarTextByteSrc                                          ; $1cc3
	ld a, b                                                         ; $1cc6
	inc a                                                           ; $1cc7
	jr z, .readAfromHL                                              ; $1cc8

; DE = src addr placed in correct range, $4000 <= x < $8000
	ld e, l                                                         ; $1cca
	ld d, h                                                         ; $1ccb
	res 7, d                                                        ; $1ccc
	set 6, d                                                        ; $1cce

; BH << 2 gives src bank in H
	ld l, h                                                         ; $1cd0
	ld h, b                                                         ; $1cd1
	add hl, hl                                                      ; $1cd2
	add hl, hl                                                      ; $1cd3

; Set far bank, read from far addr
	ld a, h                                                         ; $1cd4
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn         ; $1cd5
	ld a, [de]                                                      ; $1cd8
	call _SetRomBankToHighByteInStackAfterReturn                    ; $1cd9

	pop hl                                                          ; $1cdc
	pop bc                                                          ; $1cdd
	ret                                                             ; $1cde

.readAfromHL:
	ld a, [hl]                                                      ; $1cdf
	pop hl                                                          ; $1ce0
	pop bc                                                          ; $1ce1
	ret                                                             ; $1ce2


Func_1ce3::
	ld a, [$d7ff]                                    ; $1ce3: $fa $ff $d7
	ld l, a                                          ; $1ce6: $6f
	ld a, [wCurrTextLinePixelIdx]                                    ; $1ce7: $fa $00 $d8
	ld h, a                                          ; $1cea: $67

Func_1ceb::
	ld a, BANK(Func_03_46c5)                                        ; $1ceb: $3e $03
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $1ced: $cd $83 $07
	call Func_03_46c5                                       ; $1cf0: $cd $c5 $46
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $1cf3: $c3 $7b $07


;
	push bc                                          ; $1cf6: $c5
	push de                                          ; $1cf7: $d5
	push hl                                          ; $1cf8: $e5
	push af                                          ; $1cf9: $f5
	call DEequAdjustedCharIdx                               ; $1cfa: $cd $0d $1d
	call RemapDEtoCharIdxInRomOrder                               ; $1cfd: $cd $24 $1d
	jp _EnqueueDisplayingChar                                 ; $1d00: $c3 $3e $1d


;
	push bc                                          ; $1d03: $c5
	push de                                          ; $1d04: $d5
	push hl                                          ; $1d05: $e5
	push af                                          ; $1d06: $f5
	call RemapDEtoCharIdxInRomOrder                               ; $1d07: $cd $24 $1d
	jp _EnqueueDisplayingChar                                 ; $1d0a: $c3 $3e $1d


DEequAdjustedCharIdx::
; If DE <= $efff, below does DE -= $30, yielding up to $efcf (used for $00-$6f)
; If DE > $efff, below does DE -= $ef90, yielding $70 to $106f
	ld hl, $efff                                                    ; $1d0d
	call wCpHLtoDE                                                  ; $1d10
	ld hl, $0030                                                    ; $1d13
	jr nc, :+                                                       ; $1d16
	ld hl, $ef90                                                    ; $1d18

; DE -= HL
:	call wSwapDEandHL                                               ; $1d1b
	call wHLminusEquDE                                              ; $1d1e
	jp wSwapDEandHL                                                 ; $1d21


RemapDEtoCharIdxInRomOrder::
; Current unordered char idx DE is double-idxed into the remap table
	ld hl, RemappedChars                                            ; $1d24
	add hl, de                                                      ; $1d27
	add hl, de                                                      ; $1d28

; Get table entry into DE
	ld a, BANK(RemappedChars)                                       ; $1d29
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn         ; $1d2b
	ld e, [hl]                                                      ; $1d2e
	inc hl                                                          ; $1d2f
	ld d, [hl]                                                      ; $1d30
	jp SetRomBankToHighByteInStackAfterReturn                       ; $1d31


;
	call DEequAdjustedCharIdx                               ; $1d34: $cd $0d $1d
	jp RemapDEtoCharIdxInRomOrder                                 ; $1d37: $c3 $24 $1d


; DE - 1-indexed char idx
; Returns carry if char was displayed
EnqueueDisplayingChar::
	push bc                                                         ; $1d3a
	push de                                                         ; $1d3b
	push hl                                                         ; $1d3c
	push af                                                         ; $1d3d

; DE - 1-indexed char idx
; Returns carry if char was displayed
_EnqueueDisplayingChar:
;
	ld a, BANK(GetCharTileDataOffsetAndGroup)                                        ; $1d3e: $3e $03
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $1d40: $cd $83 $07
	call GetCharTileDataOffsetAndGroup                                       ; $1d43: $cd $74 $47
	call Func_03_47c7                                       ; $1d46: $cd $c7 $47
	jr c, .retWithCarry                                ; $1d49: $38 $09

; Restore rom bank and regs, clearing carry
	call _SetRomBankToHighByteInStackAfterReturn                    ; $1d4b
	pop af                                                          ; $1d4e
	and a                                                           ; $1d4f

.done:
	pop hl                                                          ; $1d50
	pop de                                                          ; $1d51
	pop bc                                                          ; $1d52
	ret                                                             ; $1d53

.retWithCarry:
; Restore rom bank and regs, setting carry
	call _SetRomBankToHighByteInStackAfterReturn                    ; $1d54
	pop af                                                          ; $1d57
	scf                                                             ; $1d58
	jr .done                                                        ; $1d59


; A - rom bank
; DE - src addr % $4000
; Can wrap src across rom banks
FarCopyCharIntoTileDataBuffer::
; This is jumped to from CopyCharIntoTileDataBufferGivenRelativeSrcOffset.
;1st pop, pops the `push bc` there (char pixel width)
	call SetRomBankA                                                ; $1d5b
	pop af                                                          ; $1d5e

; Have rom addr offset from $4000
	res 7, d                                                        ; $1d5f
	set 6, d                                                        ; $1d61
	call CopyCharIntoTileDataBufferGivenAbsoluteSrcOffset           ; $1d63

; 2nd pop, pops the `push af` there (the rom bank to restore to)
	pop af                                                          ; $1d66
	jp SetRomBankA                                                  ; $1d67


; A - char pixel width
; DE - src addr
; Can wrap src across rom banks
CopyCharIntoTileDataBufferGivenAbsoluteSrcOffset:
; HL = src addr, jump if char pixel width is $0c or $0e
	ld l, e                                                         ; $1d6a
	ld h, d                                                         ; $1d6b
	cp $09                                                          ; $1d6c
	jr nc, Copy12pxCharIntoTileDataBuffer                           ; $1d6e

; If char pixel width == $08, simply copy $0d tiles of tile data, followed by a 0
	ld a, -$0d                                                      ; $1d70
	call MemCopyIntoTileDataBuffer                                  ; $1d72

MemClearDE1:
	xor a                                                           ; $1d75
	ld [de], a                                                      ; $1d76
	inc de                                                          ; $1d77
	ret                                                             ; $1d78


; A - char pixel width
; HL - src addr
; Can wrap src across rom banks
; Copies a total of $1c (2*$0e) bytes
Copy12pxCharIntoTileDataBuffer:
; Jump if char pixel width == $0e
	cp $0d                                                          ; $1d79
	jr nc, Copy14pxCharIntoTileDataBuffer                           ; $1d7b

; If char pixel width == $0c, copy $0e bytes, with 0s on the edges
	ld de, wCharTileDataBuffer                                      ; $1d7d
	ld a, -$0c                                                      ; $1d80
	call Wrap0sAroundMemCopyIntoTileDataBuffer                      ; $1d82

; Store 1st 0 edge for next set of bytes, copying the next 6 after above $0f bytes
	call MemClearDE1                                                ; $1d85
	ld a, -$06                                                      ; $1d88
	call MemCopyCateringToWrap                                      ; $1d8a

; Split the above 6 bytes' nybbles into the next $0c byte, adding the 2nd 0 edge after
	ld hl, wCharTileDataBuffer+$f                                   ; $1d8d
	ld b, $06                                                       ; $1d90
	call SplitTileDataNybblesIntoDests                              ; $1d92
	jp MemClearDE1                                                  ; $1d95


; DE - dest addr of bottom half of last 3rd of char
; HL - dest addr of top half of last 3rd of char
SplitTileDataNybblesIntoDests:
.nextByte:
; Retain high nybble of byte in HL, keeping original in C
	ld a, $f0                                                       ; $1d98
	and [hl]                                                        ; $1d9a
	ld c, [hl]                                                      ; $1d9b
	ld [hl+], a                                                     ; $1d9c

; Store orig HL's byte's low nybble as a high nybble in DE
	swap c                                                          ; $1d9d
	ld a, $f0                                                       ; $1d9f
	and c                                                           ; $1da1
	ld [de], a                                                      ; $1da2
	inc de                                                          ; $1da3

	dec b                                                           ; $1da4
	jr nz, .nextByte                                                ; $1da5

	ret                                                             ; $1da7


; A - negative num copies
; HL - src addr
; DE - dest addr
; Can wrap src across rom banks
Wrap0sAroundMemCopyIntoTileDataBuffer:
; Write 0, perform mem copy, write 0
	push af                                                         ; $1da8
	call MemClearDE1                                                ; $1da9
	pop af                                                          ; $1dac

	call MemCopyCateringToWrap                                      ; $1dad
	jp MemClearDE1                                                  ; $1db0


; HL - src addr
; Can wrap src across rom banks
; Copies a total of $1c (2*$0e) bytes
; Since 2nd tile row is 6px wide each, some calls below strip 2 bits of 9 of 16 bytes,
;   to form the last 3 bytes not copied from src
Copy14pxCharIntoTileDataBuffer:
; If char pixel width == $0e, copy $19 bytes into buffer
	ld a, -$19                                                      ; $1db3
	call MemCopyIntoTileDataBuffer                                  ; $1db5

; 9 bytes after 1st $0e tiles, has upper bits setting 3 bytes after the $19 bytes
	ld hl, wCharTileDataBuffer+$e                                   ; $1db8
	call Set1ofLast3LargeCharBytes                                  ; $1dbb
	call Set1ofLast3LargeCharBytes                                  ; $1dbe

; DE - dest addr
; HL - points to 3 bytes, their upper 2 bits are rotated left out, and right onto A
Set1ofLast3LargeCharBytes:
; Invert upper 2 bits of HL onto upper bits of A
	xor a                                                           ; $1dc1
	rl [hl]                                                         ; $1dc2
	rra                                                             ; $1dc4
	rl [hl]                                                         ; $1dc5
	rra                                                             ; $1dc7

; Invert upper 2 bits of HL+1 onto upper bits of A
	inc hl                                                          ; $1dc8
	rl [hl]                                                         ; $1dc9
	rra                                                             ; $1dcb
	rl [hl]                                                         ; $1dcc
	rra                                                             ; $1dce

; Invert upper 2 bits of HL+2 onto upper bits of A
	inc hl                                                          ; $1dcf
	rl [hl]                                                         ; $1dd0
	rra                                                             ; $1dd2
	rl [hl]                                                         ; $1dd3
	rra                                                             ; $1dd5

; Store A in DE
	inc hl                                                          ; $1dd6
	ld [de], a                                                      ; $1dd7
	inc de                                                          ; $1dd8
	ret                                                             ; $1dd9


; A - negative num copies
; HL - src addr
; Can wrap src across rom banks. Returns next buffer address in DE
MemCopyIntoTileDataBuffer:
	ld de, wCharTileDataBuffer                                      ; $1dda

; A - negative num copies
; HL - src addr
; DE - dest addr
MemCopyCateringToWrap:
	push hl                                                         ; $1ddd
	push de                                                         ; $1dde

; DE = -<num copies>
	ld d, $ff                                                       ; $1ddf
	ld e, a                                                         ; $1de1

; If H == $7f (last page of rom),...
	ld a, $7f                                                       ; $1de2
	cp h                                                            ; $1de4
	jr nz, .performCopies                                           ; $1de5

; Jump if E < L (num copies would roll off the end of the rom bank)
	ld a, e                                                         ; $1de7
	sub l                                                           ; $1de8
	jr c, WrappedMemCopy                                            ; $1de9

.performCopies:
; DE = addr that will allow <num copies> to occur
	ld hl, wMemCopies+3*(NUM_WRAM_MEM_COPIES)                       ; $1deb
	add hl, de                                                      ; $1dee
	add hl, de                                                      ; $1def
	add hl, de                                                      ; $1df0
	ld e, l                                                         ; $1df1
	ld d, h                                                         ; $1df2

; BC (orig DE) is restored into DE below, curr DE is the jump addr
	pop bc                                                          ; $1df3
	pop hl                                                          ; $1df4

JpCopyFuncDE_DEequBC:
; Copy from rom HL to orig DE in funcs above
	push de                                                         ; $1df5
	ld e, c                                                         ; $1df6
	ld d, b                                                         ; $1df7
	ret                                                             ; $1df8


; A - negative num copies in next bank
; DE - 16 bit negative num copies
; HL - src addr
WrappedMemCopy:
; DE = addr that will allow copies to the end of the bank
	ld e, l                                                         ; $1df9
	ld hl, wMemCopies+3*(NUM_WRAM_MEM_COPIES)                       ; $1dfa
	add hl, de                                                      ; $1dfd
	add hl, de                                                      ; $1dfe
	add hl, de                                                      ; $1dff
	ld e, l                                                         ; $1e00
	ld d, h                                                         ; $1e01

; BC (orig DE) is restored into DE in jp func, curr DE is the jump addr
	pop bc                                                          ; $1e02
	pop hl                                                          ; $1e03
	push af                                                         ; $1e04
	call JpCopyFuncDE_DEequBC                                       ; $1e05

; Src rom bank++, then pop negative num copies into BC
	ld a, [wRomBank]                                                ; $1e08
	inc a                                                           ; $1e0b
	call SetRomBankA                                                ; $1e0c
	pop af                                                          ; $1e0f
	ld c, a                                                         ; $1e10
	ld b, $ff                                                       ; $1e11

; Perform the required mem copies in the new bank, pushing jp func HL to ret to
	ld hl, wMemCopies+3*(NUM_WRAM_MEM_COPIES)                       ; $1e13
	add hl, bc                                                      ; $1e16
	add hl, bc                                                      ; $1e17
	add hl, bc                                                      ; $1e18
	push hl                                                         ; $1e19
	ld hl, $4000                                                    ; $1e1a
	ret                                                             ; $1e1d


;
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $1e1e: $cd $83 $07
	call $ccb0                                       ; $1e21: $cd $b0 $cc
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $1e24: $c3 $7b $07


Call_000_1e27:
Jump_000_1e27:
	push af                                          ; $1e27: $f5
	ld a, $01                                        ; $1e28: $3e $01
	ld [$c2ca], a                                    ; $1e2a: $ea $ca $c2
	pop af                                           ; $1e2d: $f1

Call_000_1e2e:
Jump_000_1e2e:
jr_000_1e2e:
	push hl                                          ; $1e2e: $e5
	ld hl, $c106                                     ; $1e2f: $21 $06 $c1
	set 1, [hl]                                      ; $1e32: $cb $ce
	push de                                          ; $1e34: $d5
	push bc                                          ; $1e35: $c5
	push af                                          ; $1e36: $f5
	ld [$c2c1], a                                    ; $1e37: $ea $c1 $c2
	ld a, [wRomBank]                                    ; $1e3a: $fa $03 $c1
	ld [$c107], a                                    ; $1e3d: $ea $07 $c1
	ld a, $07                                        ; $1e40: $3e $07
	ld [wRomBank], a                                    ; $1e42: $ea $03 $c1
	ld [rROMB0], a                                    ; $1e45: $ea $00 $20
	call $5eab                                       ; $1e48: $cd $ab $5e
	ld a, [$c107]                                    ; $1e4b: $fa $07 $c1
	ld [wRomBank], a                                    ; $1e4e: $ea $03 $c1
	ld [rROMB0], a                                    ; $1e51: $ea $00 $20
	xor a                                            ; $1e54: $af
	ld [$c2ca], a                                    ; $1e55: $ea $ca $c2
	pop af                                           ; $1e58: $f1
	pop bc                                           ; $1e59: $c1
	pop de                                           ; $1e5a: $d1
	ld hl, $c106                                     ; $1e5b: $21 $06 $c1
	res 1, [hl]                                      ; $1e5e: $cb $8e
	pop hl                                           ; $1e60: $e1
	ret                                              ; $1e61: $c9


_TimerInterruptHandler:
	ld a, [$c2c7]                                    ; $1e62: $fa $c7 $c2
	or a                                             ; $1e65: $b7
	jr z, jr_000_1ea1                                ; $1e66: $28 $39

	ld a, [$c2c4]                                    ; $1e68: $fa $c4 $c2
	or a                                             ; $1e6b: $b7
	ld hl, $c2c8                                     ; $1e6c: $21 $c8 $c2
	jr z, jr_000_1e74                                ; $1e6f: $28 $03

	ld a, [hl]                                       ; $1e71: $7e
	cpl                                              ; $1e72: $2f
	ld [hl], a                                       ; $1e73: $77

jr_000_1e74:
	ld a, [hl-]                                      ; $1e74: $3a
	or a                                             ; $1e75: $b7
	jr nz, jr_000_1ea1                               ; $1e76: $20 $29

	ld a, [hl]                                       ; $1e78: $7e
	res 7, a                                         ; $1e79: $cb $bf
	ld hl, $c2c5                                     ; $1e7b: $21 $c5 $c2
	add [hl]                                         ; $1e7e: $86
	ld [hl], a                                       ; $1e7f: $77
	jr nc, jr_000_1ea1                               ; $1e80: $30 $1f

	ld a, [$c2c7]                                    ; $1e82: $fa $c7 $c2
	bit 7, a                                         ; $1e85: $cb $7f
	jr nz, jr_000_1e96                               ; $1e87: $20 $0d

	ld c, $24                                        ; $1e89: $0e $24
	ldh a, [c]                                       ; $1e8b: $f2
	or a                                             ; $1e8c: $b7
	jr nz, jr_000_1e91                               ; $1e8d: $20 $02

	jr jr_000_1e2e                                   ; $1e8f: $18 $9d

jr_000_1e91:
	sub $11                                          ; $1e91: $d6 $11
	ldh [c], a                                       ; $1e93: $e2
	jr jr_000_1ea1                                   ; $1e94: $18 $0b

jr_000_1e96:
	ld hl, $c2c6                                     ; $1e96: $21 $c6 $c2
	ld a, $10                                        ; $1e99: $3e $10
	add [hl]                                         ; $1e9b: $86
	ld [hl], a                                       ; $1e9c: $77
	jr nc, jr_000_1ea1                               ; $1e9d: $30 $02

	ld [hl], $ff                                     ; $1e9f: $36 $ff

jr_000_1ea1:
	ld h, $c4                                        ; $1ea1: $26 $c4
	ld a, $63                                        ; $1ea3: $3e $63
	call Call_000_1ece                               ; $1ea5: $cd $ce $1e
	ld h, $c3                                        ; $1ea8: $26 $c3
	ld a, $52                                        ; $1eaa: $3e $52
	call Call_000_1ece                               ; $1eac: $cd $ce $1e
	ld h, $c2                                        ; $1eaf: $26 $c2
	ld a, $40                                        ; $1eb1: $3e $40
	call Call_000_1ece                               ; $1eb3: $cd $ce $1e
	ld h, $c5                                        ; $1eb6: $26 $c5
	xor a                                            ; $1eb8: $af
	call Call_000_1ece                               ; $1eb9: $cd $ce $1e
	ld h, $c6                                        ; $1ebc: $26 $c6
	ld a, $11                                        ; $1ebe: $3e $11
	call Call_000_1ece                               ; $1ec0: $cd $ce $1e
	ld h, $c7                                        ; $1ec3: $26 $c7
	ld a, $22                                        ; $1ec5: $3e $22
	call Call_000_1ece                               ; $1ec7: $cd $ce $1e
	ld h, $c8                                        ; $1eca: $26 $c8
	ld a, $34                                        ; $1ecc: $3e $34

Call_000_1ece:
	ld [$c2bf], a                                    ; $1ece: $ea $bf $c2
	push hl                                          ; $1ed1: $e5
	ld hl, $c2c4                                     ; $1ed2: $21 $c4 $c2
	srl [hl]                                         ; $1ed5: $cb $3e
	pop hl                                           ; $1ed7: $e1
	jr nc, jr_000_1eed                               ; $1ed8: $30 $13

	ld l, $89                                        ; $1eda: $2e $89
	bit 4, [hl]                                      ; $1edc: $cb $66
	jr nz, jr_000_1eeb                               ; $1ede: $20 $0b

	set 4, [hl]                                      ; $1ee0: $cb $e6
	xor a                                            ; $1ee2: $af
	ld l, $9c                                        ; $1ee3: $2e $9c
	ld [hl], a                                       ; $1ee5: $77
	ld l, $bc                                        ; $1ee6: $2e $bc
	ld c, [hl]                                       ; $1ee8: $4e
	ldh [c], a                                       ; $1ee9: $e2
	ret                                              ; $1eea: $c9


jr_000_1eeb:
	res 4, [hl]                                      ; $1eeb: $cb $a6

jr_000_1eed:
	ld l, $8a                                        ; $1eed: $2e $8a
	bit 0, [hl]                                      ; $1eef: $cb $46
	ret z                                            ; $1ef1: $c8

	dec l                                            ; $1ef2: $2d
	bit 4, [hl]                                      ; $1ef3: $cb $66
	ret nz                                           ; $1ef5: $c0

	bit 7, [hl]                                      ; $1ef6: $cb $7e
	jr z, jr_000_1f01                                ; $1ef8: $28 $07

	ld a, [$c2c6]                                    ; $1efa: $fa $c6 $c2
	inc a                                            ; $1efd: $3c
	jp z, Jump_000_2678                              ; $1efe: $ca $78 $26

jr_000_1f01:
	bit 2, [hl]                                      ; $1f01: $cb $56
	jr z, jr_000_1f10                                ; $1f03: $28 $0b

	xor a                                            ; $1f05: $af
	ld l, $9c                                        ; $1f06: $2e $9c
	ld [hl], a                                       ; $1f08: $77
	call Call_000_22d2                               ; $1f09: $cd $d2 $22
	ld l, $89                                        ; $1f0c: $2e $89
	res 2, [hl]                                      ; $1f0e: $cb $96

jr_000_1f10:
	bit 0, [hl]                                      ; $1f10: $cb $46
	jr z, jr_000_1f38                                ; $1f12: $28 $24

	ld a, [$c2bf]                                    ; $1f14: $fa $bf $c2
	cp $22                                           ; $1f17: $fe $22
	call z, Call_000_2461                            ; $1f19: $cc $61 $24
	call Call_000_2263                               ; $1f1c: $cd $63 $22
	ld l, $85                                        ; $1f1f: $2e $85
	ld a, [hl]                                       ; $1f21: $7e
	call Call_000_23fe                               ; $1f22: $cd $fe $23
	call Call_000_24e0                               ; $1f25: $cd $e0 $24
	ld a, [$c2bf]                                    ; $1f28: $fa $bf $c2
	or a                                             ; $1f2b: $b7
	jr nz, jr_000_1f34                               ; $1f2c: $20 $06

	call Call_000_24c7                               ; $1f2e: $cd $c7 $24
	call Call_000_24fc                               ; $1f31: $cd $fc $24

jr_000_1f34:
	ld l, $89                                        ; $1f34: $2e $89
	res 0, [hl]                                      ; $1f36: $cb $86

jr_000_1f38:
	ld a, [$c2bf]                                    ; $1f38: $fa $bf $c2
	and $0f                                          ; $1f3b: $e6 $0f
	cp $63                                           ; $1f3d: $fe $63
	jr nc, jr_000_1f4d                               ; $1f3f: $30 $0c

	call Call_000_2225                               ; $1f41: $cd $25 $22
	call Call_000_2204                               ; $1f44: $cd $04 $22
	call Call_000_22f5                               ; $1f47: $cd $f5 $22
	call Call_000_2263                               ; $1f4a: $cd $63 $22

jr_000_1f4d:
	ld l, $94                                        ; $1f4d: $2e $94
	ld a, [hl-]                                      ; $1f4f: $3a
	add [hl]                                         ; $1f50: $86
	ld [hl], a                                       ; $1f51: $77
	ret nc                                           ; $1f52: $d0

	ld a, [$c2bf]                                    ; $1f53: $fa $bf $c2
	cp $63                                           ; $1f56: $fe $63
	jr z, jr_000_1f60                                ; $1f58: $28 $06

	ld l, $88                                        ; $1f5a: $2e $88
	inc [hl]                                         ; $1f5c: $34
	ld a, [hl-]                                      ; $1f5d: $3a
	cp [hl]                                          ; $1f5e: $be
	ret nz                                           ; $1f5f: $c0

jr_000_1f60:
	ld l, $83                                        ; $1f60: $2e $83
	ld a, [hl+]                                      ; $1f62: $2a
	ld e, a                                          ; $1f63: $5f
	ld d, [hl]                                       ; $1f64: $56
	ld l, $81                                        ; $1f65: $2e $81
	ld a, [hl]                                       ; $1f67: $7e
	ld [wRomBank], a                                    ; $1f68: $ea $03 $c1
	ld [rROMB0], a                                    ; $1f6b: $ea $00 $20
	ld a, [$c2bf]                                    ; $1f6e: $fa $bf $c2
	cp $63                                           ; $1f71: $fe $63
	jp z, Jump_000_2164                              ; $1f73: $ca $64 $21

	ld l, $95                                        ; $1f76: $2e $95
	ld a, [hl+]                                      ; $1f78: $2a
	or a                                             ; $1f79: $b7
	jr z, jr_000_1f82                                ; $1f7a: $28 $06

	cp [hl]                                          ; $1f7c: $be
	jp nz, Jump_000_20d0                             ; $1f7d: $c2 $d0 $20

	dec l                                            ; $1f80: $2d
	dec [hl]                                         ; $1f81: $35

jr_000_1f82:
	ld l, $89                                        ; $1f82: $2e $89
	res 5, [hl]                                      ; $1f84: $cb $ae
	ld a, [$c2bf]                                    ; $1f86: $fa $bf $c2
	cp $34                                           ; $1f89: $fe $34
	jp z, Jump_000_20e5                              ; $1f8b: $ca $e5 $20

	ld a, [de]                                       ; $1f8e: $1a
	cp $61                                           ; $1f8f: $fe $61
	jp nc, Jump_000_214f                             ; $1f91: $d2 $4f $21

	or a                                             ; $1f94: $b7
	jp z, Jump_000_2092                              ; $1f95: $ca $92 $20

	jp Jump_000_1fac                                 ; $1f98: $c3 $ac $1f


Jump_000_1f9b:
	ld l, $83                                        ; $1f9b: $2e $83
	ld a, e                                          ; $1f9d: $7b
	ld [hl+], a                                      ; $1f9e: $22
	ld [hl], d                                       ; $1f9f: $72
	ret                                              ; $1fa0: $c9


Call_000_1fa1:
	add a                                            ; $1fa1: $87
	ld b, $00                                        ; $1fa2: $06 $00
	rl b                                             ; $1fa4: $cb $10
	ld c, a                                          ; $1fa6: $4f
	add hl, bc                                       ; $1fa7: $09
	ld a, [hl+]                                      ; $1fa8: $2a
	ld h, [hl]                                       ; $1fa9: $66
	ld l, a                                          ; $1faa: $6f
	ret                                              ; $1fab: $c9


Jump_000_1fac:
	call Call_000_203e                               ; $1fac: $cd $3e $20
	ld a, [de]                                       ; $1faf: $1a
	inc de                                           ; $1fb0: $13
	ld l, $85                                        ; $1fb1: $2e $85
	ld [hl], a                                       ; $1fb3: $77
	call Call_000_1fd8                               ; $1fb4: $cd $d8 $1f
	call Call_000_2000                               ; $1fb7: $cd $00 $20
	ld l, $8a                                        ; $1fba: $2e $8a
	bit 3, [hl]                                      ; $1fbc: $cb $5e
	jr z, jr_000_1fcc                                ; $1fbe: $28 $0c

	ld l, $bb                                        ; $1fc0: $2e $bb
	ld a, [hl]                                       ; $1fc2: $7e
	ld l, $87                                        ; $1fc3: $2e $87
	ld [hl], a                                       ; $1fc5: $77
	call Call_000_2078                               ; $1fc6: $cd $78 $20
	jp Jump_000_1f9b                                 ; $1fc9: $c3 $9b $1f


jr_000_1fcc:
	ld a, [de]                                       ; $1fcc: $1a
	inc de                                           ; $1fcd: $13
	ld l, $86                                        ; $1fce: $2e $86
	ld [hl+], a                                      ; $1fd0: $22
	ld [hl], a                                       ; $1fd1: $77
	call Call_000_2078                               ; $1fd2: $cd $78 $20
	jp Jump_000_1f9b                                 ; $1fd5: $c3 $9b $1f


Call_000_1fd8:
	ld a, $07                                        ; $1fd8: $3e $07
	ld [wRomBank], a                                    ; $1fda: $ea $03 $c1
	ld [rROMB0], a                                    ; $1fdd: $ea $00 $20
	ld l, $89                                        ; $1fe0: $2e $89
	set 6, [hl]                                      ; $1fe2: $cb $f6
	ld l, $a4                                        ; $1fe4: $2e $a4
	ld a, [hl]                                       ; $1fe6: $7e
	or a                                             ; $1fe7: $b7
	push de                                          ; $1fe8: $d5
	call nz, Call_000_2319                           ; $1fe9: $c4 $19 $23
	pop de                                           ; $1fec: $d1
	ld l, $81                                        ; $1fed: $2e $81
	ld a, [hl]                                       ; $1fef: $7e
	ld [wRomBank], a                                    ; $1ff0: $ea $03 $c1
	ld [rROMB0], a                                    ; $1ff3: $ea $00 $20
	ld l, $89                                        ; $1ff6: $2e $89
	res 6, [hl]                                      ; $1ff8: $cb $b6
	ld l, $85                                        ; $1ffa: $2e $85
	ld a, [hl]                                       ; $1ffc: $7e
	jp Jump_000_23fe                                 ; $1ffd: $c3 $fe $23


Call_000_2000:
	ld l, $89                                        ; $2000: $2e $89
	bit 1, [hl]                                      ; $2002: $cb $4e
	ret z                                            ; $2004: $c8

	ld a, [$c2c6]                                    ; $2005: $fa $c6 $c2
	or a                                             ; $2008: $b7
	jr z, jr_000_2013                                ; $2009: $28 $08

	ld a, $ff                                        ; $200b: $3e $ff
	ld l, $9c                                        ; $200d: $2e $9c
	ld [hl], a                                       ; $200f: $77
	jp Jump_000_2296                                 ; $2010: $c3 $96 $22


jr_000_2013:
	inc l                                            ; $2013: $2c
	bit 2, [hl]                                      ; $2014: $cb $56
	jr z, jr_000_2023                                ; $2016: $28 $0b

	set 1, [hl]                                      ; $2018: $cb $ce
	ld l, $bc                                        ; $201a: $2e $bc
	ld c, [hl]                                       ; $201c: $4e
	ld l, $8f                                        ; $201d: $2e $8f
	ld a, [hl]                                       ; $201f: $7e
	ldh [c], a                                       ; $2020: $e2
	jr jr_000_202b                                   ; $2021: $18 $08

jr_000_2023:
	ld l, $bc                                        ; $2023: $2e $bc
	ld c, [hl]                                       ; $2025: $4e
	ld l, $9b                                        ; $2026: $2e $9b
	ld a, [hl+]                                      ; $2028: $2a
	ld [hl], a                                       ; $2029: $77
	ldh [c], a                                       ; $202a: $e2

jr_000_202b:
	ld a, [$c2bf]                                    ; $202b: $fa $bf $c2
	bit 1, a                                         ; $202e: $cb $4f
	ret nz                                           ; $2030: $c0

	ld l, $bd                                        ; $2031: $2e $bd
	ld c, [hl]                                       ; $2033: $4e
	inc c                                            ; $2034: $0c
	ld l, $9a                                        ; $2035: $2e $9a
	ld a, [hl]                                       ; $2037: $7e
	set 7, a                                         ; $2038: $cb $ff
	ldh [c], a                                       ; $203a: $e2
	jp Jump_000_24c1                                 ; $203b: $c3 $c1 $24


Call_000_203e:
	xor a                                            ; $203e: $af
	ld l, $9c                                        ; $203f: $2e $9c
	ld [hl], a                                       ; $2041: $77
	ld l, $a1                                        ; $2042: $2e $a1
	ld [hl], a                                       ; $2044: $77
	ld l, $a8                                        ; $2045: $2e $a8
	ld [hl], a                                       ; $2047: $77
	ld l, $ab                                        ; $2048: $2e $ab
	ld [hl], a                                       ; $204a: $77
	ld l, $a3                                        ; $204b: $2e $a3
	ld a, [hl+]                                      ; $204d: $2a
	ld [hl+], a                                      ; $204e: $22
	ld l, $9f                                        ; $204f: $2e $9f
	ld a, [hl+]                                      ; $2051: $2a
	res 3, a                                         ; $2052: $cb $9f
	add a                                            ; $2054: $87
	ld [hl], a                                       ; $2055: $77
	ld l, $8f                                        ; $2056: $2e $8f
	ld a, [hl+]                                      ; $2058: $2a
	ld b, a                                          ; $2059: $47
	and $07                                          ; $205a: $e6 $07
	add a                                            ; $205c: $87
	ld [hl+], a                                      ; $205d: $22
	ld a, b                                          ; $205e: $78
	cpl                                              ; $205f: $2f
	and $f0                                          ; $2060: $e6 $f0
	ld [hl], a                                       ; $2062: $77
	ld l, $9b                                        ; $2063: $2e $9b
	ld a, [hl]                                       ; $2065: $7e
	ld l, $be                                        ; $2066: $2e $be
	ld [hl], a                                       ; $2068: $77

Call_000_2069:
	xor a                                            ; $2069: $af
	ld l, $88                                        ; $206a: $2e $88
	ld [hl], a                                       ; $206c: $77
	ld l, $8a                                        ; $206d: $2e $8a
	ld a, [hl]                                       ; $206f: $7e
	and $0d                                          ; $2070: $e6 $0d
	ld [hl+], a                                      ; $2072: $22
	ld a, [hl]                                       ; $2073: $7e
	and $f0                                          ; $2074: $e6 $f0
	ld [hl], a                                       ; $2076: $77
	ret                                              ; $2077: $c9


Call_000_2078:
	ld l, $95                                        ; $2078: $2e $95
	ld a, [hl]                                       ; $207a: $7e
	or a                                             ; $207b: $b7
	ld l, $89                                        ; $207c: $2e $89
	jr z, jr_000_2083                                ; $207e: $28 $03

	bit 5, [hl]                                      ; $2080: $cb $6e
	ret z                                            ; $2082: $c8

jr_000_2083:
	inc l                                            ; $2083: $2c
	set 5, [hl]                                      ; $2084: $cb $ee
	ld l, $87                                        ; $2086: $2e $87
	ld a, [hl]                                       ; $2088: $7e
	ld l, $9e                                        ; $2089: $2e $9e
	sub [hl]                                         ; $208b: $96
	jr nc, jr_000_208f                               ; $208c: $30 $01

	xor a                                            ; $208e: $af

jr_000_208f:
	dec l                                            ; $208f: $2d
	ld [hl], a                                       ; $2090: $77
	ret                                              ; $2091: $c9


Jump_000_2092:
	inc de                                           ; $2092: $13
	ld a, [de]                                       ; $2093: $1a
	inc de                                           ; $2094: $13
	ld l, $8a                                        ; $2095: $2e $8a
	bit 3, [hl]                                      ; $2097: $cb $5e
	jr z, jr_000_209e                                ; $2099: $28 $03

	ld l, $bb                                        ; $209b: $2e $bb
	ld a, [hl]                                       ; $209d: $7e

jr_000_209e:
	ld l, $87                                        ; $209e: $2e $87
	ld [hl+], a                                      ; $20a0: $22
	xor a                                            ; $20a1: $af
	ld [hl], a                                       ; $20a2: $77
	call Call_000_20b1                               ; $20a3: $cd $b1 $20
	ld l, $8a                                        ; $20a6: $2e $8a
	bit 3, [hl]                                      ; $20a8: $cb $5e
	jp z, Jump_000_1f9b                              ; $20aa: $ca $9b $1f

	dec de                                           ; $20ad: $1b
	jp Jump_000_1f9b                                 ; $20ae: $c3 $9b $1f


Call_000_20b1:
Jump_000_20b1:
	ld l, $8a                                        ; $20b1: $2e $8a
	ld a, [hl]                                       ; $20b3: $7e
	res 6, a                                         ; $20b4: $cb $b7
	set 7, a                                         ; $20b6: $cb $ff
	ld [hl-], a                                      ; $20b8: $32
	bit 1, [hl]                                      ; $20b9: $cb $4e
	ret z                                            ; $20bb: $c8

	xor a                                            ; $20bc: $af
	ld l, $a4                                        ; $20bd: $2e $a4
	ld [hl], a                                       ; $20bf: $77
	ld l, $bd                                        ; $20c0: $2e $bd
	ld c, [hl]                                       ; $20c2: $4e
	cpl                                              ; $20c3: $2f
	ldh [c], a                                       ; $20c4: $e2
	ld l, $99                                        ; $20c5: $2e $99
	ld [hl+], a                                      ; $20c7: $22
	inc c                                            ; $20c8: $0c
	ld a, $07                                        ; $20c9: $3e $07
	ldh [c], a                                       ; $20cb: $e2
	ld [hl], a                                       ; $20cc: $77
	jp Jump_000_24c1                                 ; $20cd: $c3 $c1 $24


Jump_000_20d0:
	ld l, $89                                        ; $20d0: $2e $89
	set 5, [hl]                                      ; $20d2: $cb $ee
	ld l, $95                                        ; $20d4: $2e $95
	dec [hl]                                         ; $20d6: $35
	ld a, [de]                                       ; $20d7: $1a
	inc de                                           ; $20d8: $13
	ld l, $86                                        ; $20d9: $2e $86
	ld [hl+], a                                      ; $20db: $22
	ld [hl+], a                                      ; $20dc: $22
	xor a                                            ; $20dd: $af
	ld [hl], a                                       ; $20de: $77
	call Call_000_2078                               ; $20df: $cd $78 $20
	jp Jump_000_1f9b                                 ; $20e2: $c3 $9b $1f


Jump_000_20e5:
	call Call_000_2069                               ; $20e5: $cd $69 $20
	ld a, [de]                                       ; $20e8: $1a
	cp $61                                           ; $20e9: $fe $61
	jp nc, Jump_000_214f                             ; $20eb: $d2 $4f $21

	inc de                                           ; $20ee: $13
	or a                                             ; $20ef: $b7
	jr z, jr_000_2135                                ; $20f0: $28 $43

	ld l, $85                                        ; $20f2: $2e $85
	ld [hl], a                                       ; $20f4: $77
	call Call_000_2110                               ; $20f5: $cd $10 $21
	ld l, $8a                                        ; $20f8: $2e $8a
	bit 3, [hl]                                      ; $20fa: $cb $5e
	jr z, jr_000_2107                                ; $20fc: $28 $09

	ld l, $bb                                        ; $20fe: $2e $bb
	ld a, [hl]                                       ; $2100: $7e
	ld l, $87                                        ; $2101: $2e $87
	ld [hl], a                                       ; $2103: $77
	jp Jump_000_1f9b                                 ; $2104: $c3 $9b $1f


jr_000_2107:
	ld a, [de]                                       ; $2107: $1a
	inc de                                           ; $2108: $13
	ld l, $86                                        ; $2109: $2e $86
	ld [hl+], a                                      ; $210b: $22
	ld [hl], a                                       ; $210c: $77
	jp Jump_000_1f9b                                 ; $210d: $c3 $9b $1f


Call_000_2110:
	push hl                                          ; $2110: $e5
	ld hl, $5c87                                     ; $2111: $21 $87 $5c
	rst AddAOntoHL                                          ; $2114: $ef
	ld a, $07                                        ; $2115: $3e $07
	ld [wRomBank], a                                    ; $2117: $ea $03 $c1
	ld [rROMB0], a                                    ; $211a: $ea $00 $20
	ld a, [hl]                                       ; $211d: $7e
	push de                                          ; $211e: $d5
	ld [$c2c1], a                                    ; $211f: $ea $c1 $c2
	xor a                                            ; $2122: $af
	ld [$c2ca], a                                    ; $2123: $ea $ca $c2
	call $5eab                                       ; $2126: $cd $ab $5e
	pop de                                           ; $2129: $d1
	pop hl                                           ; $212a: $e1
	ld l, $81                                        ; $212b: $2e $81
	ld a, [hl]                                       ; $212d: $7e
	ld [wRomBank], a                                    ; $212e: $ea $03 $c1
	ld [rROMB0], a                                    ; $2131: $ea $00 $20
	ret                                              ; $2134: $c9


jr_000_2135:
	ld a, [de]                                       ; $2135: $1a
	ld l, $8a                                        ; $2136: $2e $8a
	bit 3, [hl]                                      ; $2138: $cb $5e
	jr z, jr_000_213f                                ; $213a: $28 $03

	ld l, $bb                                        ; $213c: $2e $bb
	ld a, [hl]                                       ; $213e: $7e

jr_000_213f:
	ld l, $87                                        ; $213f: $2e $87
	ld [hl+], a                                      ; $2141: $22
	xor a                                            ; $2142: $af
	ld [hl], a                                       ; $2143: $77
	ld l, $8a                                        ; $2144: $2e $8a
	bit 3, [hl]                                      ; $2146: $cb $5e
	jp nz, Jump_000_1f9b                             ; $2148: $c2 $9b $1f

	inc de                                           ; $214b: $13
	jp Jump_000_1f9b                                 ; $214c: $c3 $9b $1f


Jump_000_214f:
jr_000_214f:
	ld bc, $1f6e                                     ; $214f: $01 $6e $1f
	push bc                                          ; $2152: $c5
	push hl                                          ; $2153: $e5
	ld bc, $25ef                                     ; $2154: $01 $ef $25
	ld h, $00                                        ; $2157: $26 $00
	ld l, a                                          ; $2159: $6f
	add hl, hl                                       ; $215a: $29
	add hl, bc                                       ; $215b: $09
	ld a, [hl+]                                      ; $215c: $2a
	ld b, [hl]                                       ; $215d: $46
	ld c, a                                          ; $215e: $4f
	pop hl                                           ; $215f: $e1
	push bc                                          ; $2160: $c5
	ld a, [de]                                       ; $2161: $1a
	inc de                                           ; $2162: $13
	ret                                              ; $2163: $c9


Jump_000_2164:
	ld a, [de]                                       ; $2164: $1a
	cp $c0                                           ; $2165: $fe $c0
	jr nc, jr_000_214f                               ; $2167: $30 $e6

	ld a, [$c2c6]                                    ; $2169: $fa $c6 $c2
	ld c, a                                          ; $216c: $4f
	ld l, $9b                                        ; $216d: $2e $9b
	ld a, [hl]                                       ; $216f: $7e
	ld l, $89                                        ; $2170: $2e $89
	bit 7, [hl]                                      ; $2172: $cb $7e
	jr z, jr_000_2183                                ; $2174: $28 $0d

	sub c                                            ; $2176: $91
	jr nc, jr_000_2183                               ; $2177: $30 $0a

	ld b, $08                                        ; $2179: $06 $08
	ld c, $21                                        ; $217b: $0e $21
	ldh a, [c]                                       ; $217d: $f2
	cp b                                             ; $217e: $b8
	ld a, b                                          ; $217f: $78
	jr nz, jr_000_2187                               ; $2180: $20 $05

	ret                                              ; $2182: $c9


jr_000_2183:
	ld l, $9f                                        ; $2183: $2e $9f
	ld b, [hl]                                       ; $2185: $46
	or b                                             ; $2186: $b0

jr_000_2187:
	ld c, $21                                        ; $2187: $0e $21
	ldh [c], a                                       ; $2189: $e2
	ld l, $97                                        ; $218a: $2e $97
	ld a, [de]                                       ; $218c: $1a
	ld [hl], a                                       ; $218d: $77
	inc c                                            ; $218e: $0c
	ldh [c], a                                       ; $218f: $e2
	ld l, $9a                                        ; $2190: $2e $9a
	xor a                                            ; $2192: $af
	ld [hl], a                                       ; $2193: $77
	inc c                                            ; $2194: $0c
	ld a, $80                                        ; $2195: $3e $80
	ldh [c], a                                       ; $2197: $e2
	inc de                                           ; $2198: $13
	jp Jump_000_1f9b                                 ; $2199: $c3 $9b $1f


Call_000_219c:
	ld a, [de]                                       ; $219c: $1a
	inc de                                           ; $219d: $13
	ld l, $94                                        ; $219e: $2e $94
	ld [hl-], a                                      ; $21a0: $32
	ld [hl], $00                                     ; $21a1: $36 $00
	ret                                              ; $21a3: $c9


Jump_000_21a4:
	ld a, [de]                                       ; $21a4: $1a
	inc de                                           ; $21a5: $13
	ld c, a                                          ; $21a6: $4f
	ld a, [de]                                       ; $21a7: $1a
	inc de                                           ; $21a8: $13
	ld b, a                                          ; $21a9: $47
	ld a, c                                          ; $21aa: $79
	ld l, $9e                                        ; $21ab: $2e $9e
	ld [hl+], a                                      ; $21ad: $22
	ld [hl], b                                       ; $21ae: $70
	ret                                              ; $21af: $c9


Jump_000_21b0:
	ld a, [de]                                       ; $21b0: $1a
	inc de                                           ; $21b1: $13
	ld l, $9f                                        ; $21b2: $2e $9f
	ld [hl], a                                       ; $21b4: $77
	ret                                              ; $21b5: $c9


Call_000_21b6:
Jump_000_21b6:
	ld a, [de]                                       ; $21b6: $1a
	inc de                                           ; $21b7: $13
	ld b, a                                          ; $21b8: $47
	ld a, [$c2bf]                                    ; $21b9: $fa $bf $c2
	and $0f                                          ; $21bc: $e6 $0f
	cp $02                                           ; $21be: $fe $02
	jr z, jr_000_21d2                                ; $21c0: $28 $10

	ld a, b                                          ; $21c2: $78
	and $0f                                          ; $21c3: $e6 $0f
	swap a                                           ; $21c5: $cb $37
	rlca                                             ; $21c7: $07
	rlca                                             ; $21c8: $07
	ld l, $8e                                        ; $21c9: $2e $8e
	ld [hl], a                                       ; $21cb: $77
	jp Jump_000_24ca                                 ; $21cc: $c3 $ca $24


	ld a, [de]                                       ; $21cf: $1a
	inc de                                           ; $21d0: $13
	ld b, a                                          ; $21d1: $47

jr_000_21d2:
	ld l, $8e                                        ; $21d2: $2e $8e
	ld [hl], b                                       ; $21d4: $70
	ld a, b                                          ; $21d5: $78
	jp Jump_000_2464                                 ; $21d6: $c3 $64 $24


	and $0f                                          ; $21d9: $e6 $0f
	ld l, $9b                                        ; $21db: $2e $9b
	swap a                                           ; $21dd: $cb $37
	ld [hl], a                                       ; $21df: $77
	ret                                              ; $21e0: $c9


Call_000_21e1:
	ld a, [de]                                       ; $21e1: $1a
	ld l, $9b                                        ; $21e2: $2e $9b
	and $f0                                          ; $21e4: $e6 $f0
	ld [hl], a                                       ; $21e6: $77
	ret                                              ; $21e7: $c9


Call_000_21e8:
Jump_000_21e8:
	ld a, [de]                                       ; $21e8: $1a
	inc de                                           ; $21e9: $13
	and $0f                                          ; $21ea: $e6 $0f
	cp $02                                           ; $21ec: $fe $02
	ld a, $11                                        ; $21ee: $3e $11
	jr c, jr_000_21f9                                ; $21f0: $38 $07

	jr nz, jr_000_21f6                               ; $21f2: $20 $02

	jr z, jr_000_21f8                                ; $21f4: $28 $02

jr_000_21f6:
	ld a, $02                                        ; $21f6: $3e $02

jr_000_21f8:
	dec a                                            ; $21f8: $3d

jr_000_21f9:
	ld l, $a2                                        ; $21f9: $2e $a2
	ld [hl], a                                       ; $21fb: $77
	ld l, $89                                        ; $21fc: $2e $89
	bit 1, [hl]                                      ; $21fe: $cb $4e
	jp nz, Jump_000_24e3                             ; $2200: $c2 $e3 $24

	ret                                              ; $2203: $c9


Call_000_2204:
	ld l, $8a                                        ; $2204: $2e $8a
	bit 1, [hl]                                      ; $2206: $cb $4e
	ret z                                            ; $2208: $c8

	bit 6, [hl]                                      ; $2209: $cb $76
	jr nz, jr_000_2222                               ; $220b: $20 $15

	ld l, $90                                        ; $220d: $2e $90
	dec [hl]                                         ; $220f: $35
	ld a, [hl-]                                      ; $2210: $3a
	or a                                             ; $2211: $b7
	ret nz                                           ; $2212: $c0

	ld a, [hl+]                                      ; $2213: $2a
	and $07                                          ; $2214: $e6 $07
	add a                                            ; $2216: $87
	ld [hl+], a                                      ; $2217: $22
	ld a, [hl]                                       ; $2218: $7e
	or a                                             ; $2219: $b7
	jr z, jr_000_2220                                ; $221a: $28 $04

	sub $10                                          ; $221c: $d6 $10
	ld [hl], a                                       ; $221e: $77
	ret                                              ; $221f: $c9


jr_000_2220:
	ld l, $8a                                        ; $2220: $2e $8a

jr_000_2222:
	res 1, [hl]                                      ; $2222: $cb $8e
	ret                                              ; $2224: $c9


Call_000_2225:
	ld l, $8a                                        ; $2225: $2e $8a
	bit 6, [hl]                                      ; $2227: $cb $76
	jr nz, jr_000_224b                               ; $2229: $20 $20

	bit 7, [hl]                                      ; $222b: $cb $7e
	ret nz                                           ; $222d: $c0

	bit 5, [hl]                                      ; $222e: $cb $6e
	ret z                                            ; $2230: $c8

	ld l, $9f                                        ; $2231: $2e $9f
	ld a, [hl-]                                      ; $2233: $3a
	or a                                             ; $2234: $b7
	ret z                                            ; $2235: $c8

	dec l                                            ; $2236: $2d
	ld b, [hl]                                       ; $2237: $46
	ld l, $88                                        ; $2238: $2e $88
	ld a, [hl]                                       ; $223a: $7e
	cp b                                             ; $223b: $b8
	ret c                                            ; $223c: $d8

	ld a, [$c2bf]                                    ; $223d: $fa $bf $c2
	and $03                                          ; $2240: $e6 $03
	cp $02                                           ; $2242: $fe $02
	jp z, Jump_000_20b1                              ; $2244: $ca $b1 $20

	ld l, $8a                                        ; $2247: $2e $8a
	set 6, [hl]                                      ; $2249: $cb $f6

jr_000_224b:
	ld l, $a0                                        ; $224b: $2e $a0
	dec [hl]                                         ; $224d: $35
	ld a, [hl-]                                      ; $224e: $3a
	or a                                             ; $224f: $b7
	ret nz                                           ; $2250: $c0

	ld a, [hl+]                                      ; $2251: $2a
	add a                                            ; $2252: $87
	ld [hl+], a                                      ; $2253: $22
	inc [hl]                                         ; $2254: $34
	ld a, [hl]                                       ; $2255: $7e
	swap a                                           ; $2256: $cb $37
	ld l, $9b                                        ; $2258: $2e $9b
	sub [hl]                                         ; $225a: $96
	ret c                                            ; $225b: $d8

	ld l, $8a                                        ; $225c: $2e $8a
	res 6, [hl]                                      ; $225e: $cb $b6
	set 7, [hl]                                      ; $2260: $cb $fe
	ret                                              ; $2262: $c9


Call_000_2263:
	ld l, $89                                        ; $2263: $2e $89
	ld b, [hl]                                       ; $2265: $46
	bit 1, b                                         ; $2266: $cb $48
	ret z                                            ; $2268: $c8

	ld l, $be                                        ; $2269: $2e $be
	ld a, [hl]                                       ; $226b: $7e
	bit 0, b                                         ; $226c: $cb $40
	jr nz, jr_000_229b                               ; $226e: $20 $2b

	bit 7, b                                         ; $2270: $cb $78
	jr z, jr_000_227c                                ; $2272: $28 $08

	ld b, a                                          ; $2274: $47
	ld a, [$c2c6]                                    ; $2275: $fa $c6 $c2
	or a                                             ; $2278: $b7
	jr nz, jr_000_2296                               ; $2279: $20 $1b

	ld a, b                                          ; $227b: $78

jr_000_227c:
	ld l, $8a                                        ; $227c: $2e $8a
	ld b, [hl]                                       ; $227e: $46
	bit 7, [hl]                                      ; $227f: $cb $7e
	jr nz, jr_000_22d1                               ; $2281: $20 $4e

	bit 5, b                                         ; $2283: $cb $68
	ret z                                            ; $2285: $c8

	bit 6, b                                         ; $2286: $cb $70
	ret z                                            ; $2288: $c8

	bit 2, b                                         ; $2289: $cb $50
	jr z, jr_000_2290                                ; $228b: $28 $03

	ld l, $91                                        ; $228d: $2e $91
	sub [hl]                                         ; $228f: $96

jr_000_2290:
	ld l, $9f                                        ; $2290: $2e $9f
	ld b, [hl]                                       ; $2292: $46
	or b                                             ; $2293: $b0
	jr jr_000_22d2                                   ; $2294: $18 $3c

Jump_000_2296:
jr_000_2296:
	ld l, $9b                                        ; $2296: $2e $9b
	ld a, [hl]                                       ; $2298: $7e
	and $f0                                          ; $2299: $e6 $f0

jr_000_229b:
	ld b, a                                          ; $229b: $47
	ld a, [$c2c6]                                    ; $229c: $fa $c6 $c2
	ld c, a                                          ; $229f: $4f
	ld l, $89                                        ; $22a0: $2e $89
	bit 7, [hl]                                      ; $22a2: $cb $7e
	jr nz, jr_000_22a8                               ; $22a4: $20 $02

	ld c, $00                                        ; $22a6: $0e $00

jr_000_22a8:
	ld a, [$c2bf]                                    ; $22a8: $fa $bf $c2
	and $0f                                          ; $22ab: $e6 $0f
	cp $02                                           ; $22ad: $fe $02
	ld a, b                                          ; $22af: $78
	jr nz, jr_000_22bb                               ; $22b0: $20 $09

	add c                                            ; $22b2: $81
	jr c, jr_000_22d1                                ; $22b3: $38 $1c

	cp $80                                           ; $22b5: $fe $80
	jr nc, jr_000_22d1                               ; $22b7: $30 $18

	jr jr_000_22d2                                   ; $22b9: $18 $17

jr_000_22bb:
	sub c                                            ; $22bb: $91
	jr c, jr_000_22d1                                ; $22bc: $38 $13

	ld l, $8a                                        ; $22be: $2e $8a
	bit 2, [hl]                                      ; $22c0: $cb $56
	jr z, jr_000_22c9                                ; $22c2: $28 $05

	ld l, $91                                        ; $22c4: $2e $91
	sub [hl]                                         ; $22c6: $96
	jr c, jr_000_22d1                                ; $22c7: $38 $08

jr_000_22c9:
	ld l, $a1                                        ; $22c9: $2e $a1
	ld b, [hl]                                       ; $22cb: $46
	swap b                                           ; $22cc: $cb $30
	sub b                                            ; $22ce: $90
	jr nc, jr_000_22d2                               ; $22cf: $30 $01

jr_000_22d1:
	xor a                                            ; $22d1: $af

Call_000_22d2:
jr_000_22d2:
	ld l, $9c                                        ; $22d2: $2e $9c
	cp [hl]                                          ; $22d4: $be
	ret z                                            ; $22d5: $c8

	ld [hl], a                                       ; $22d6: $77
	ld l, $bc                                        ; $22d7: $2e $bc
	ld c, [hl]                                       ; $22d9: $4e
	or a                                             ; $22da: $b7
	jr nz, jr_000_22df                               ; $22db: $20 $02

	ld a, $08                                        ; $22dd: $3e $08

jr_000_22df:
	ldh [c], a                                       ; $22df: $e2
	ld a, [$c2bf]                                    ; $22e0: $fa $bf $c2
	and $0f                                          ; $22e3: $e6 $0f
	cp $02                                           ; $22e5: $fe $02
	ret z                                            ; $22e7: $c8

	inc c                                            ; $22e8: $0c
	ld l, $99                                        ; $22e9: $2e $99
	ld a, [hl+]                                      ; $22eb: $2a
	ldh [c], a                                       ; $22ec: $e2
	inc c                                            ; $22ed: $0c
	ld a, [hl]                                       ; $22ee: $7e
	set 7, a                                         ; $22ef: $cb $ff
	ldh [c], a                                       ; $22f1: $e2
	jp Jump_000_24c1                                 ; $22f2: $c3 $c1 $24


Call_000_22f5:
	ld a, $07                                        ; $22f5: $3e $07
	ld [wRomBank], a                                    ; $22f7: $ea $03 $c1
	ld [rROMB0], a                                    ; $22fa: $ea $00 $20
	ld l, $a4                                        ; $22fd: $2e $a4
	ld a, [hl+]                                      ; $22ff: $2a
	ld c, a                                          ; $2300: $4f
	or a                                             ; $2301: $b7
	ret z                                            ; $2302: $c8

	ld l, $89                                        ; $2303: $2e $89
	bit 5, [hl]                                      ; $2305: $cb $6e
	jr nz, jr_000_2311                               ; $2307: $20 $08

	ld l, $a5                                        ; $2309: $2e $a5
	ld a, [hl]                                       ; $230b: $7e
	ld l, $88                                        ; $230c: $2e $88
	cp [hl]                                          ; $230e: $be
	ld a, c                                          ; $230f: $79
	ret nc                                           ; $2310: $d0

jr_000_2311:
	ld l, $8a                                        ; $2311: $2e $8a
	bit 4, [hl]                                      ; $2313: $cb $66
	jr nz, jr_000_232a                               ; $2315: $20 $13

	set 4, [hl]                                      ; $2317: $cb $e6

Call_000_2319:
	push hl                                          ; $2319: $e5
	ld hl, $524c                                     ; $231a: $21 $4c $52
	call Call_000_1fa1                               ; $231d: $cd $a1 $1f
	ld d, h                                          ; $2320: $54
	ld e, l                                          ; $2321: $5d
	pop hl                                           ; $2322: $e1
	ld l, $a6                                        ; $2323: $2e $a6
	ld [hl], e                                       ; $2325: $73
	inc l                                            ; $2326: $2c
	ld [hl], d                                       ; $2327: $72
	jr jr_000_2337                                   ; $2328: $18 $0d

jr_000_232a:
	ld l, $aa                                        ; $232a: $2e $aa
	ld a, [hl]                                       ; $232c: $7e
	or a                                             ; $232d: $b7
	jr z, jr_000_2332                                ; $232e: $28 $02

	dec [hl]                                         ; $2330: $35
	ret                                              ; $2331: $c9


jr_000_2332:
	ld l, $a6                                        ; $2332: $2e $a6
	ld e, [hl]                                       ; $2334: $5e
	inc l                                            ; $2335: $2c
	ld d, [hl]                                       ; $2336: $56

Jump_000_2337:
jr_000_2337:
	ld a, [de]                                       ; $2337: $1a
	ld l, $89                                        ; $2338: $2e $89
	bit 6, [hl]                                      ; $233a: $cb $76
	jr nz, jr_000_2346                               ; $233c: $20 $08

	and $f0                                          ; $233e: $e6 $f0
	cp $f0                                           ; $2340: $fe $f0
	jr z, jr_000_23b0                                ; $2342: $28 $6c

	jr jr_000_234f                                   ; $2344: $18 $09

jr_000_2346:
	and $f0                                          ; $2346: $e6 $f0
	cp $f0                                           ; $2348: $fe $f0
	jr nz, jr_000_234f                               ; $234a: $20 $03

	inc de                                           ; $234c: $13
	jr jr_000_2337                                   ; $234d: $18 $e8

jr_000_234f:
	swap a                                           ; $234f: $cb $37
	or a                                             ; $2351: $b7
	jr nz, jr_000_235f                               ; $2352: $20 $0b

	ld a, [de]                                       ; $2354: $1a
	dec a                                            ; $2355: $3d
	ld l, $aa                                        ; $2356: $2e $aa
	ld [hl], a                                       ; $2358: $77
	ld l, $a8                                        ; $2359: $2e $a8
	inc de                                           ; $235b: $13
	ld a, [de]                                       ; $235c: $1a
	jr jr_000_2370                                   ; $235d: $18 $11

jr_000_235f:
	dec a                                            ; $235f: $3d
	ld l, $aa                                        ; $2360: $2e $aa
	ld [hl], a                                       ; $2362: $77
	ld l, $a8                                        ; $2363: $2e $a8
	ld a, [de]                                       ; $2365: $1a
	and $0f                                          ; $2366: $e6 $0f
	bit 3, a                                         ; $2368: $cb $5f
	jr z, jr_000_2370                                ; $236a: $28 $04

	res 3, a                                         ; $236c: $cb $9f
	set 7, a                                         ; $236e: $cb $ff

jr_000_2370:
	ld [hl+], a                                      ; $2370: $22
	ld b, a                                          ; $2371: $47
	res 7, b                                         ; $2372: $cb $b8
	and $80                                          ; $2374: $e6 $80
	ld c, a                                          ; $2376: $4f
	ld a, [hl-]                                      ; $2377: $3a
	or a                                             ; $2378: $b7
	jr z, jr_000_239c                                ; $2379: $28 $21

	bit 3, a                                         ; $237b: $cb $5f
	res 3, a                                         ; $237d: $cb $9f
	jr nz, jr_000_2391                               ; $237f: $20 $10

	ld l, a                                          ; $2381: $6f
	ld a, b                                          ; $2382: $78

jr_000_2383:
	add b                                            ; $2383: $80
	bit 7, a                                         ; $2384: $cb $7f
	jr nz, jr_000_238d                               ; $2386: $20 $05

	dec l                                            ; $2388: $2d
	jr nz, jr_000_2383                               ; $2389: $20 $f8

	jr jr_000_2398                                   ; $238b: $18 $0b

jr_000_238d:
	ld a, $7f                                        ; $238d: $3e $7f
	jr jr_000_2398                                   ; $238f: $18 $07

jr_000_2391:
	dec a                                            ; $2391: $3d
	srl b                                            ; $2392: $cb $38
	or a                                             ; $2394: $b7
	jr nz, jr_000_2391                               ; $2395: $20 $fa

	ld a, b                                          ; $2397: $78

jr_000_2398:
	or c                                             ; $2398: $b1
	ld l, $a8                                        ; $2399: $2e $a8
	ld [hl], a                                       ; $239b: $77

jr_000_239c:
	ld l, $89                                        ; $239c: $2e $89
	bit 6, [hl]                                      ; $239e: $cb $76
	ret nz                                           ; $23a0: $c0

	ld l, $97                                        ; $23a1: $2e $97
	ld a, [hl+]                                      ; $23a3: $2a
	ld c, a                                          ; $23a4: $4f
	ld b, [hl]                                       ; $23a5: $46
	call Call_000_242c                               ; $23a6: $cd $2c $24
	inc de                                           ; $23a9: $13
	ld l, $a6                                        ; $23aa: $2e $a6
	ld [hl], e                                       ; $23ac: $73
	inc l                                            ; $23ad: $2c
	ld [hl], d                                       ; $23ae: $72
	ret                                              ; $23af: $c9


jr_000_23b0:
	ld a, [de]                                       ; $23b0: $1a
	ld l, $8b                                        ; $23b1: $2e $8b
	cp $fe                                           ; $23b3: $fe $fe
	jr z, jr_000_23e7                                ; $23b5: $28 $30

	cp $fb                                           ; $23b7: $fe $fb
	jr z, jr_000_23c0                                ; $23b9: $28 $05

	ld l, $a4                                        ; $23bb: $2e $a4
	xor a                                            ; $23bd: $af
	ld [hl], a                                       ; $23be: $77
	ret                                              ; $23bf: $c9


jr_000_23c0:
	inc de                                           ; $23c0: $13
	bit 0, [hl]                                      ; $23c1: $cb $46
	jr nz, jr_000_23cf                               ; $23c3: $20 $0a

	set 0, [hl]                                      ; $23c5: $cb $c6
	ld l, $ac                                        ; $23c7: $2e $ac
	ld [hl], e                                       ; $23c9: $73
	inc l                                            ; $23ca: $2c
	ld [hl], d                                       ; $23cb: $72
	jp Jump_000_2337                                 ; $23cc: $c3 $37 $23


jr_000_23cf:
	ld a, [de]                                       ; $23cf: $1a
	ld l, $ab                                        ; $23d0: $2e $ab
	inc [hl]                                         ; $23d2: $34
	cp [hl]                                          ; $23d3: $be
	jr nz, jr_000_23e0                               ; $23d4: $20 $0a

	ld [hl], $00                                     ; $23d6: $36 $00
	inc de                                           ; $23d8: $13
	ld l, $8b                                        ; $23d9: $2e $8b
	res 0, [hl]                                      ; $23db: $cb $86
	jp Jump_000_2337                                 ; $23dd: $c3 $37 $23


jr_000_23e0:
	inc l                                            ; $23e0: $2c
	ld e, [hl]                                       ; $23e1: $5e
	inc l                                            ; $23e2: $2c
	ld d, [hl]                                       ; $23e3: $56
	jp Jump_000_2337                                 ; $23e4: $c3 $37 $23


jr_000_23e7:
	bit 1, [hl]                                      ; $23e7: $cb $4e
	jr nz, jr_000_23f6                               ; $23e9: $20 $0b

	set 1, [hl]                                      ; $23eb: $cb $ce
	inc de                                           ; $23ed: $13
	ld l, $ae                                        ; $23ee: $2e $ae
	ld [hl], e                                       ; $23f0: $73
	inc l                                            ; $23f1: $2c
	ld [hl], d                                       ; $23f2: $72
	jp Jump_000_2337                                 ; $23f3: $c3 $37 $23


jr_000_23f6:
	ld l, $ae                                        ; $23f6: $2e $ae
	ld e, [hl]                                       ; $23f8: $5e
	inc l                                            ; $23f9: $2c
	ld d, [hl]                                       ; $23fa: $56
	jp Jump_000_2337                                 ; $23fb: $c3 $37 $23


Call_000_23fe:
Jump_000_23fe:
	ld l, $89                                        ; $23fe: $2e $89
	bit 1, [hl]                                      ; $2400: $cb $4e
	ret z                                            ; $2402: $c8

	ld l, $8d                                        ; $2403: $2e $8d
	add [hl]                                         ; $2405: $86
	push hl                                          ; $2406: $e5
	push af                                          ; $2407: $f5
	ld a, $07                                        ; $2408: $3e $07
	ld [wRomBank], a                                    ; $240a: $ea $03 $c1
	ld [rROMB0], a                                    ; $240d: $ea $00 $20
	pop af                                           ; $2410: $f1
	ld hl, $518c                                     ; $2411: $21 $8c $51
	call $cfa0                                       ; $2414: $cd $a0 $cf
	pop hl                                           ; $2417: $e1
	ld l, $81                                        ; $2418: $2e $81
	ld a, [hl]                                       ; $241a: $7e
	ld [wRomBank], a                                    ; $241b: $ea $03 $c1
	ld [rROMB0], a                                    ; $241e: $ea $00 $20
	ld l, $8c                                        ; $2421: $2e $8c
	ld a, [hl]                                       ; $2423: $7e
	call Call_000_132c                               ; $2424: $cd $2c $13
	ld l, $97                                        ; $2427: $2e $97
	ld a, c                                          ; $2429: $79
	ld [hl+], a                                      ; $242a: $22
	ld [hl], b                                       ; $242b: $70

Call_000_242c:
	ld l, $a8                                        ; $242c: $2e $a8
	ld a, [hl]                                       ; $242e: $7e
	bit 7, a                                         ; $242f: $cb $7f
	jr nz, jr_000_2438                               ; $2431: $20 $05

	call Call_000_132c                               ; $2433: $cd $2c $13
	jr jr_000_243b                                   ; $2436: $18 $03

jr_000_2438:
	res 7, a                                         ; $2438: $cb $bf
	rst SubAFromBC                                          ; $243a: $e7

jr_000_243b:
	ld l, $89                                        ; $243b: $2e $89
	bit 1, [hl]                                      ; $243d: $cb $4e
	ret z                                            ; $243f: $c8

	bit 3, b                                         ; $2440: $cb $58
	call nz, Call_000_2454                           ; $2442: $c4 $54 $24
	ld a, c                                          ; $2445: $79
	ld l, $bd                                        ; $2446: $2e $bd
	ld c, [hl]                                       ; $2448: $4e
	ld l, $99                                        ; $2449: $2e $99
	ldh [c], a                                       ; $244b: $e2
	ld [hl+], a                                      ; $244c: $22
	ld a, b                                          ; $244d: $78
	inc c                                            ; $244e: $0c
	ldh [c], a                                       ; $244f: $e2
	ld [hl], a                                       ; $2450: $77
	jp Jump_000_24c1                                 ; $2451: $c3 $c1 $24


Call_000_2454:
	ld a, b                                          ; $2454: $78
	cp $0b                                           ; $2455: $fe $0b
	jr nc, jr_000_245d                               ; $2457: $30 $04

	ld bc, $07f7                                     ; $2459: $01 $f7 $07
	ret                                              ; $245c: $c9


jr_000_245d:
	ld c, $00                                        ; $245d: $0e $00
	ld b, c                                          ; $245f: $41
	ret                                              ; $2460: $c9


Call_000_2461:
	ld l, $8e                                        ; $2461: $2e $8e
	ld a, [hl]                                       ; $2463: $7e

Jump_000_2464:
	ld l, $89                                        ; $2464: $2e $89
	bit 1, [hl]                                      ; $2466: $cb $4e
	ret z                                            ; $2468: $c8

	ld c, a                                          ; $2469: $4f
	xor a                                            ; $246a: $af
	ldh [rAUD3ENA], a                                ; $246b: $e0 $1a
	ld a, c                                          ; $246d: $79
	push af                                          ; $246e: $f5
	ld a, $07                                        ; $246f: $3e $07
	ld [wRomBank], a                                    ; $2471: $ea $03 $c1
	ld [rROMB0], a                                    ; $2474: $ea $00 $20
	pop af                                           ; $2477: $f1
	push hl                                          ; $2478: $e5
	ld hl, $4df8                                     ; $2479: $21 $f8 $4d
	call Call_000_1fa1                               ; $247c: $cd $a1 $1f
	ld c, $30                                        ; $247f: $0e $30
	ld a, [hl+]                                      ; $2481: $2a
	ldh [c], a                                       ; $2482: $e2
	inc c                                            ; $2483: $0c
	ld a, [hl+]                                      ; $2484: $2a
	ldh [c], a                                       ; $2485: $e2
	inc c                                            ; $2486: $0c
	ld a, [hl+]                                      ; $2487: $2a
	ldh [c], a                                       ; $2488: $e2
	inc c                                            ; $2489: $0c
	ld a, [hl+]                                      ; $248a: $2a
	ldh [c], a                                       ; $248b: $e2
	inc c                                            ; $248c: $0c
	ld a, [hl+]                                      ; $248d: $2a
	ldh [c], a                                       ; $248e: $e2
	inc c                                            ; $248f: $0c
	ld a, [hl+]                                      ; $2490: $2a
	ldh [c], a                                       ; $2491: $e2
	inc c                                            ; $2492: $0c
	ld a, [hl+]                                      ; $2493: $2a
	ldh [c], a                                       ; $2494: $e2
	inc c                                            ; $2495: $0c
	ld a, [hl+]                                      ; $2496: $2a
	ldh [c], a                                       ; $2497: $e2
	inc c                                            ; $2498: $0c
	ld a, [hl+]                                      ; $2499: $2a
	ldh [c], a                                       ; $249a: $e2
	inc c                                            ; $249b: $0c
	ld a, [hl+]                                      ; $249c: $2a
	ldh [c], a                                       ; $249d: $e2
	inc c                                            ; $249e: $0c
	ld a, [hl+]                                      ; $249f: $2a
	ldh [c], a                                       ; $24a0: $e2
	inc c                                            ; $24a1: $0c
	ld a, [hl+]                                      ; $24a2: $2a
	ldh [c], a                                       ; $24a3: $e2
	inc c                                            ; $24a4: $0c
	ld a, [hl+]                                      ; $24a5: $2a
	ldh [c], a                                       ; $24a6: $e2
	inc c                                            ; $24a7: $0c
	ld a, [hl+]                                      ; $24a8: $2a
	ldh [c], a                                       ; $24a9: $e2
	inc c                                            ; $24aa: $0c
	ld a, [hl+]                                      ; $24ab: $2a
	ldh [c], a                                       ; $24ac: $e2
	inc c                                            ; $24ad: $0c
	ld a, [hl]                                       ; $24ae: $7e
	ldh [c], a                                       ; $24af: $e2
	pop hl                                           ; $24b0: $e1
	ld l, $81                                        ; $24b1: $2e $81
	ld a, [hl]                                       ; $24b3: $7e
	ld [wRomBank], a                                    ; $24b4: $ea $03 $c1
	ld [rROMB0], a                                    ; $24b7: $ea $00 $20
	ld a, $80                                        ; $24ba: $3e $80
	ldh [rAUD3ENA], a                                ; $24bc: $e0 $1a
	ldh [rAUD3HIGH], a                               ; $24be: $e0 $1e
	ret                                              ; $24c0: $c9


Jump_000_24c1:
	ld a, [wInitialA]                                    ; $24c1: $fa $00 $c1
	cp $11                                           ; $24c4: $fe $11
	ret nz                                           ; $24c6: $c0

Call_000_24c7:
	ld l, $8e                                        ; $24c7: $2e $8e
	ld a, [hl]                                       ; $24c9: $7e

Jump_000_24ca:
	ld l, $89                                        ; $24ca: $2e $89
	bit 1, [hl]                                      ; $24cc: $cb $4e
	ret z                                            ; $24ce: $c8

	ld l, $bc                                        ; $24cf: $2e $bc
	ld c, [hl]                                       ; $24d1: $4e
	dec c                                            ; $24d2: $0d
	ld b, a                                          ; $24d3: $47
	ld a, [$c2bf]                                    ; $24d4: $fa $bf $c2
	bit 1, a                                         ; $24d7: $cb $4f
	jr z, jr_000_24dd                                ; $24d9: $28 $02

	ld b, $00                                        ; $24db: $06 $00

jr_000_24dd:
	ld a, b                                          ; $24dd: $78
	ldh [c], a                                       ; $24de: $e2
	ret                                              ; $24df: $c9


Call_000_24e0:
	ld l, $a2                                        ; $24e0: $2e $a2
	ld a, [hl]                                       ; $24e2: $7e

Jump_000_24e3:
	ld b, a                                          ; $24e3: $47
	ld a, [$c2bf]                                    ; $24e4: $fa $bf $c2
	and $0f                                          ; $24e7: $e6 $0f
	ld l, $ee                                        ; $24e9: $2e $ee

jr_000_24eb:
	or a                                             ; $24eb: $b7
	jr z, jr_000_24f5                                ; $24ec: $28 $07

	rlc b                                            ; $24ee: $cb $00
	rlc l                                            ; $24f0: $cb $05
	dec a                                            ; $24f2: $3d
	jr jr_000_24eb                                   ; $24f3: $18 $f6

jr_000_24f5:
	ld c, $25                                        ; $24f5: $0e $25
	ldh a, [c]                                       ; $24f7: $f2
	and l                                            ; $24f8: $a5
	or b                                             ; $24f9: $b0
	ldh [c], a                                       ; $24fa: $e2
	ret                                              ; $24fb: $c9


Call_000_24fc:
	ld l, $92                                        ; $24fc: $2e $92
	ld a, [hl]                                       ; $24fe: $7e

Jump_000_24ff:
	ld l, $89                                        ; $24ff: $2e $89
	bit 1, [hl]                                      ; $2501: $cb $4e
	ret z                                            ; $2503: $c8

	ld c, $10                                        ; $2504: $0e $10
	ldh [c], a                                       ; $2506: $e2
	ret                                              ; $2507: $c9


	and $0f                                          ; $2508: $e6 $0f
	ld l, $8d                                        ; $250a: $2e $8d
	ld [hl], a                                       ; $250c: $77
	ret                                              ; $250d: $c9


	and $0f                                          ; $250e: $e6 $0f
	ld l, $8d                                        ; $2510: $2e $8d
	cpl                                              ; $2512: $2f
	inc a                                            ; $2513: $3c
	ld [hl], a                                       ; $2514: $77
	ret                                              ; $2515: $c9


	ld a, [de]                                       ; $2516: $1a
	inc de                                           ; $2517: $13
	ld l, $8c                                        ; $2518: $2e $8c
	ld [hl], a                                       ; $251a: $77
	ret                                              ; $251b: $c9


	ld a, [de]                                       ; $251c: $1a
	inc de                                           ; $251d: $13
	ld l, $a3                                        ; $251e: $2e $a3
	ld [hl+], a                                      ; $2520: $22
	ld [hl+], a                                      ; $2521: $22
	or a                                             ; $2522: $b7
	ret z                                            ; $2523: $c8

	ld a, [de]                                       ; $2524: $1a
	inc de                                           ; $2525: $13
	ld [hl], a                                       ; $2526: $77
	ret                                              ; $2527: $c9


	and $0f                                          ; $2528: $e6 $0f
	ld l, $8e                                        ; $252a: $2e $8e
	ld [hl], a                                       ; $252c: $77
	jp Jump_000_2464                                 ; $252d: $c3 $64 $24


	ld a, [de]                                       ; $2530: $1a
	inc de                                           ; $2531: $13
	ld l, $92                                        ; $2532: $2e $92
	ld [hl], a                                       ; $2534: $77
	jp Jump_000_24ff                                 ; $2535: $c3 $ff $24


	ld a, [de]                                       ; $2538: $1a
	inc de                                           ; $2539: $13
	ld l, $8f                                        ; $253a: $2e $8f
	ld [hl], a                                       ; $253c: $77
	and $07                                          ; $253d: $e6 $07
	ld l, $8a                                        ; $253f: $2e $8a
	set 2, [hl]                                      ; $2541: $cb $d6
	ret nz                                           ; $2543: $c0

	res 2, [hl]                                      ; $2544: $cb $96
	ret                                              ; $2546: $c9


	and $0f                                          ; $2547: $e6 $0f
	ld l, $a9                                        ; $2549: $2e $a9
	ld [hl], a                                       ; $254b: $77
	ret                                              ; $254c: $c9


	call Call_000_219c                               ; $254d: $cd $9c $21
	jr jr_000_2563                                   ; $2550: $18 $11

	call Call_000_219c                               ; $2552: $cd $9c $21
	call Call_000_21e1                               ; $2555: $cd $e1 $21
	call Call_000_21e8                               ; $2558: $cd $e8 $21
	jr jr_000_2563                                   ; $255b: $18 $06

	call Call_000_219c                               ; $255d: $cd $9c $21

jr_000_2560:
	call Call_000_21b6                               ; $2560: $cd $b6 $21

jr_000_2563:
	jp Jump_000_21a4                                 ; $2563: $c3 $a4 $21


	call Call_000_219c                               ; $2566: $cd $9c $21
	call Call_000_21e1                               ; $2569: $cd $e1 $21
	call Call_000_21e8                               ; $256c: $cd $e8 $21
	jp Jump_000_21b6                                 ; $256f: $c3 $b6 $21


	call Call_000_219c                               ; $2572: $cd $9c $21
	call Call_000_21e1                               ; $2575: $cd $e1 $21
	call Call_000_21e8                               ; $2578: $cd $e8 $21
	jr jr_000_2560                                   ; $257b: $18 $e3

	ld a, [de]                                       ; $257d: $1a
	inc de                                           ; $257e: $13
	ld l, $95                                        ; $257f: $2e $95
	ld [hl+], a                                      ; $2581: $22
	ld [hl], a                                       ; $2582: $77
	ret                                              ; $2583: $c9


	ld l, $8a                                        ; $2584: $2e $8a
	bit 3, [hl]                                      ; $2586: $cb $5e
	res 3, [hl]                                      ; $2588: $cb $9e
	ret nz                                           ; $258a: $c0

	set 3, [hl]                                      ; $258b: $cb $de
	ld a, [de]                                       ; $258d: $1a
	inc de                                           ; $258e: $13
	ld l, $bb                                        ; $258f: $2e $bb
	ld [hl], a                                       ; $2591: $77
	ret                                              ; $2592: $c9


	pop bc                                           ; $2593: $c1
	ld a, [$c2bf]                                    ; $2594: $fa $bf $c2
	cp $34                                           ; $2597: $fe $34
	jr z, jr_000_25ae                                ; $2599: $28 $13

	call Call_000_203e                               ; $259b: $cd $3e $20
	call Call_000_1fd8                               ; $259e: $cd $d8 $1f
	call Call_000_2000                               ; $25a1: $cd $00 $20
	ld l, $86                                        ; $25a4: $2e $86
	ld a, [hl+]                                      ; $25a6: $2a
	ld [hl], a                                       ; $25a7: $77
	call Call_000_2078                               ; $25a8: $cd $78 $20
	jp Jump_000_1f9b                                 ; $25ab: $c3 $9b $1f


jr_000_25ae:
	call Call_000_2069                               ; $25ae: $cd $69 $20
	ld l, $85                                        ; $25b1: $2e $85
	ld a, [hl]                                       ; $25b3: $7e
	call Call_000_2110                               ; $25b4: $cd $10 $21
	ld l, $86                                        ; $25b7: $2e $86
	ld a, [hl+]                                      ; $25b9: $2a
	ld [hl], a                                       ; $25ba: $77
	jp Jump_000_1f9b                                 ; $25bb: $c3 $9b $1f


	ld a, [de]                                       ; $25be: $1a
	inc de                                           ; $25bf: $13
	ld [$c2c9], a                                    ; $25c0: $ea $c9 $c2
	ld c, $24                                        ; $25c3: $0e $24
	ldh [c], a                                       ; $25c5: $e2
	ret                                              ; $25c6: $c9


	pop bc                                           ; $25c7: $c1
	ld c, $21                                        ; $25c8: $0e $21
	ldh a, [c]                                       ; $25ca: $f2
	cp $08                                           ; $25cb: $fe $08
	jp z, Jump_000_1f9b                              ; $25cd: $ca $9b $1f

	ld a, $08                                        ; $25d0: $3e $08
	ldh [c], a                                       ; $25d2: $e2
	inc c                                            ; $25d3: $0c
	inc c                                            ; $25d4: $0c
	ld a, $80                                        ; $25d5: $3e $80
	ldh [c], a                                       ; $25d7: $e2
	jp Jump_000_1f9b                                 ; $25d8: $c3 $9b $1f


	call Call_000_219c                               ; $25db: $cd $9c $21

jr_000_25de:
	jp Jump_000_21b0                                 ; $25de: $c3 $b0 $21


	call Call_000_219c                               ; $25e1: $cd $9c $21
	call Call_000_21e1                               ; $25e4: $cd $e1 $21
	jp Jump_000_21e8                                 ; $25e7: $c3 $e8 $21


	call Call_000_21e1                               ; $25ea: $cd $e1 $21
	call Call_000_21e8                               ; $25ed: $cd $e8 $21
	jr jr_000_25de                                   ; $25f0: $18 $ec

	call Call_000_219c                               ; $25f2: $cd $9c $21
	call Call_000_21e1                               ; $25f5: $cd $e1 $21
	call Call_000_21e8                               ; $25f8: $cd $e8 $21
	jp Jump_000_21b0                                 ; $25fb: $c3 $b0 $21


	ld a, [de]                                       ; $25fe: $1a
	inc de                                           ; $25ff: $13
	ld l, $b0                                        ; $2600: $2e $b0
	inc [hl]                                         ; $2602: $34
	cp [hl]                                          ; $2603: $be
	ret nz                                           ; $2604: $c0

	ld [hl], $00                                     ; $2605: $36 $00

jr_000_2607:
	ld a, [de]                                       ; $2607: $1a
	inc de                                           ; $2608: $13
	ld c, a                                          ; $2609: $4f
	ld a, [de]                                       ; $260a: $1a
	inc de                                           ; $260b: $13
	ld d, a                                          ; $260c: $57
	ld e, c                                          ; $260d: $59
	ret                                              ; $260e: $c9


	ld l, $8b                                        ; $260f: $2e $8b
	bit 4, [hl]                                      ; $2611: $cb $66
	jr nz, jr_000_261d                               ; $2613: $20 $08

	set 4, [hl]                                      ; $2615: $cb $e6
	ld l, $b2                                        ; $2617: $2e $b2
	ld [hl], e                                       ; $2619: $73
	inc l                                            ; $261a: $2c
	ld [hl], d                                       ; $261b: $72
	ret                                              ; $261c: $c9


jr_000_261d:
	ld a, [de]                                       ; $261d: $1a
	inc de                                           ; $261e: $13
	ld l, $b1                                        ; $261f: $2e $b1
	inc [hl]                                         ; $2621: $34
	cp [hl]                                          ; $2622: $be
	jr nz, jr_000_262c                               ; $2623: $20 $07

	ld [hl], $00                                     ; $2625: $36 $00
	ld l, $8b                                        ; $2627: $2e $8b
	res 4, [hl]                                      ; $2629: $cb $a6
	ret                                              ; $262b: $c9


jr_000_262c:
	inc l                                            ; $262c: $2c

jr_000_262d:
	ld e, [hl]                                       ; $262d: $5e
	inc l                                            ; $262e: $2c
	ld d, [hl]                                       ; $262f: $56
	ret                                              ; $2630: $c9


	ld l, $8b                                        ; $2631: $2e $8b
	bit 5, [hl]                                      ; $2633: $cb $6e
	jr nz, jr_000_263f                               ; $2635: $20 $08

	set 5, [hl]                                      ; $2637: $cb $ee
	ld l, $b5                                        ; $2639: $2e $b5
	ld [hl], e                                       ; $263b: $73
	inc l                                            ; $263c: $2c
	ld [hl], d                                       ; $263d: $72
	ret                                              ; $263e: $c9


jr_000_263f:
	ld a, [de]                                       ; $263f: $1a
	inc de                                           ; $2640: $13
	ld l, $b4                                        ; $2641: $2e $b4
	inc [hl]                                         ; $2643: $34
	cp [hl]                                          ; $2644: $be
	jr nz, jr_000_262c                               ; $2645: $20 $e5

	ld [hl], $00                                     ; $2647: $36 $00
	ld l, $8b                                        ; $2649: $2e $8b
	res 5, [hl]                                      ; $264b: $cb $ae
	ret                                              ; $264d: $c9


	ld l, $8b                                        ; $264e: $2e $8b
	bit 6, [hl]                                      ; $2650: $cb $76
	jr nz, jr_000_265d                               ; $2652: $20 $09

	set 6, [hl]                                      ; $2654: $cb $f6
	ld l, $b7                                        ; $2656: $2e $b7
	ld [hl], e                                       ; $2658: $73
	inc l                                            ; $2659: $2c
	ld [hl], d                                       ; $265a: $72
	jr jr_000_2607                                   ; $265b: $18 $aa

jr_000_265d:
	res 6, [hl]                                      ; $265d: $cb $b6
	ld l, $b7                                        ; $265f: $2e $b7
	ld e, [hl]                                       ; $2661: $5e
	inc l                                            ; $2662: $2c
	ld d, [hl]                                       ; $2663: $56
	inc de                                           ; $2664: $13
	inc de                                           ; $2665: $13
	ret                                              ; $2666: $c9


	ld l, $8b                                        ; $2667: $2e $8b
	bit 7, [hl]                                      ; $2669: $cb $7e
	ld l, $b9                                        ; $266b: $2e $b9
	jr nz, jr_000_262d                               ; $266d: $20 $be

	ld [hl], e                                       ; $266f: $73
	inc l                                            ; $2670: $2c
	ld [hl], d                                       ; $2671: $72
	ld l, $8b                                        ; $2672: $2e $8b
	set 7, [hl]                                      ; $2674: $cb $fe
	ret                                              ; $2676: $c9


	pop bc                                           ; $2677: $c1

Jump_000_2678:
	ld a, [$c2bf]                                    ; $2678: $fa $bf $c2
	ld l, $8a                                        ; $267b: $2e $8a
	res 0, [hl]                                      ; $267d: $cb $86
	dec l                                            ; $267f: $2d
	cp $34                                           ; $2680: $fe $34
	jr z, jr_000_26ab                                ; $2682: $28 $27

	jr c, jr_000_26a2                                ; $2684: $38 $1c

	cp $63                                           ; $2686: $fe $63
	jr nz, jr_000_2694                               ; $2688: $20 $0a

	ld a, $08                                        ; $268a: $3e $08
	ldh [rAUD4ENV], a                                ; $268c: $e0 $21
	ld a, $80                                        ; $268e: $3e $80
	ldh [rAUD4GO], a                                 ; $2690: $e0 $23
	jr jr_000_26ab                                   ; $2692: $18 $17

jr_000_2694:
	ld b, h                                          ; $2694: $44
	ld h, $c5                                        ; $2695: $26 $c5
	cp $40                                           ; $2697: $fe $40
	jr z, jr_000_269d                                ; $2699: $28 $02

	ld h, $c7                                        ; $269b: $26 $c7

jr_000_269d:
	ld a, [hl]                                       ; $269d: $7e
	or $03                                           ; $269e: $f6 $03
	ld [hl], a                                       ; $26a0: $77
	ld h, b                                          ; $26a1: $60

jr_000_26a2:
	bit 1, [hl]                                      ; $26a2: $cb $4e
	jr z, jr_000_26ab                                ; $26a4: $28 $05

	ld l, $bc                                        ; $26a6: $2e $bc
	ld c, [hl]                                       ; $26a8: $4e
	xor a                                            ; $26a9: $af
	ldh [c], a                                       ; $26aa: $e2

jr_000_26ab:
	xor a                                            ; $26ab: $af
	ld l, $80                                        ; $26ac: $2e $80
	jp $cbee                                         ; $26ae: $c3 $ee $cb


	ld [$0825], sp                                   ; $26b1: $08 $25 $08
	dec h                                            ; $26b4: $25
	ld [$0825], sp                                   ; $26b5: $08 $25 $08
	dec h                                            ; $26b8: $25
	ld [$0825], sp                                   ; $26b9: $08 $25 $08
	dec h                                            ; $26bc: $25
	ld [$0825], sp                                   ; $26bd: $08 $25 $08
	dec h                                            ; $26c0: $25
	ld [$0825], sp                                   ; $26c1: $08 $25 $08
	dec h                                            ; $26c4: $25
	ld [$0825], sp                                   ; $26c5: $08 $25 $08
	dec h                                            ; $26c8: $25
	ld h, e                                          ; $26c9: $63
	ld hl, $2163                                     ; $26ca: $21 $63 $21
	ld h, e                                          ; $26cd: $63
	ld hl, $250e                                     ; $26ce: $21 $0e $25
	ld c, $25                                        ; $26d1: $0e $25
	ld c, $25                                        ; $26d3: $0e $25
	ld c, $25                                        ; $26d5: $0e $25
	ld c, $25                                        ; $26d7: $0e $25
	ld c, $25                                        ; $26d9: $0e $25
	ld c, $25                                        ; $26db: $0e $25
	ld c, $25                                        ; $26dd: $0e $25
	ld c, $25                                        ; $26df: $0e $25
	ld c, $25                                        ; $26e1: $0e $25
	ld c, $25                                        ; $26e3: $0e $25
	ld c, $25                                        ; $26e5: $0e $25
	ld c, $25                                        ; $26e7: $0e $25
	ld d, $25                                        ; $26e9: $16 $25
	inc e                                            ; $26eb: $1c
	dec h                                            ; $26ec: $25
	rst GetHLinHL                                          ; $26ed: $cf
	ld hl, $2528                                     ; $26ee: $21 $28 $25
	jr z, @+$27                                      ; $26f1: $28 $25

	jr z, jr_000_271a                                ; $26f3: $28 $25

	jr z, @+$27                                      ; $26f5: $28 $25

	jr z, @+$27                                      ; $26f7: $28 $25

	jr z, jr_000_2720                                ; $26f9: $28 $25

	jr z, @+$27                                      ; $26fb: $28 $25

	jr z, jr_000_2724                                ; $26fd: $28 $25

	jr z, @+$27                                      ; $26ff: $28 $25

	jr z, jr_000_2728                                ; $2701: $28 $25

	jr z, @+$27                                      ; $2703: $28 $25

	jr z, jr_000_272c                                ; $2705: $28 $25

	jr z, @+$27                                      ; $2707: $28 $25

	jr z, jr_000_2730                                ; $2709: $28 $25

	jr z, jr_000_2732                                ; $270b: $28 $25

	jr z, jr_000_2734                                ; $270d: $28 $25

	cp b                                             ; $270f: $b8
	ld hl, $21b8                                     ; $2710: $21 $b8 $21
	cp b                                             ; $2713: $b8
	ld hl, $21b8                                     ; $2714: $21 $b8 $21
	jr nc, jr_000_273e                               ; $2717: $30 $25

	ld h, e                                          ; $2719: $63

jr_000_271a:
	ld hl, $21a4                                     ; $271a: $21 $a4 $21
	jr c, jr_000_2744                                ; $271d: $38 $25

	ld h, e                                          ; $271f: $63

jr_000_2720:
	ld hl, $2163                                     ; $2720: $21 $63 $21
	ld h, e                                          ; $2723: $63

jr_000_2724:
	ld hl, $2163                                     ; $2724: $21 $63 $21
	ld h, e                                          ; $2727: $63

jr_000_2728:
	ld hl, $2163                                     ; $2728: $21 $63 $21
	ld h, e                                          ; $272b: $63

jr_000_272c:
	ld hl, $2163                                     ; $272c: $21 $63 $21
	ld b, a                                          ; $272f: $47

jr_000_2730:
	dec h                                            ; $2730: $25
	ld b, a                                          ; $2731: $47

jr_000_2732:
	dec h                                            ; $2732: $25
	ld b, a                                          ; $2733: $47

jr_000_2734:
	dec h                                            ; $2734: $25
	ld b, a                                          ; $2735: $47
	dec h                                            ; $2736: $25
	ld b, a                                          ; $2737: $47
	dec h                                            ; $2738: $25
	ld b, a                                          ; $2739: $47
	dec h                                            ; $273a: $25
	ld b, a                                          ; $273b: $47
	dec h                                            ; $273c: $25
	ld b, a                                          ; $273d: $47

jr_000_273e:
	dec h                                            ; $273e: $25
	ld h, e                                          ; $273f: $63
	ld hl, $2547                                     ; $2740: $21 $47 $25
	ld b, a                                          ; $2743: $47

jr_000_2744:
	dec h                                            ; $2744: $25
	ld b, a                                          ; $2745: $47
	dec h                                            ; $2746: $25
	ld h, e                                          ; $2747: $63
	ld hl, $2163                                     ; $2748: $21 $63 $21
	ld h, e                                          ; $274b: $63
	ld hl, $2163                                     ; $274c: $21 $63 $21
	ld c, l                                          ; $274f: $4d
	dec h                                            ; $2750: $25
	ld d, l                                          ; $2751: $55
	dec h                                            ; $2752: $25
	ld e, l                                          ; $2753: $5d
	dec h                                            ; $2754: $25
	ld d, d                                          ; $2755: $52
	dec h                                            ; $2756: $25
	ld h, [hl]                                       ; $2757: $66
	dec h                                            ; $2758: $25
	ld [hl], l                                       ; $2759: $75
	dec h                                            ; $275a: $25
	ld [hl], d                                       ; $275b: $72
	dec h                                            ; $275c: $25
	ld h, e                                          ; $275d: $63
	ld hl, $2163                                     ; $275e: $21 $63 $21
	ld h, e                                          ; $2761: $63
	ld hl, $2163                                     ; $2762: $21 $63 $21
	ld h, e                                          ; $2765: $63
	ld hl, $2163                                     ; $2766: $21 $63 $21
	ld a, l                                          ; $2769: $7d
	dec h                                            ; $276a: $25
	add h                                            ; $276b: $84
	dec h                                            ; $276c: $25
	sub e                                            ; $276d: $93
	dec h                                            ; $276e: $25
	reti                                             ; $276f: $d9


	ld hl, $21d9                                     ; $2770: $21 $d9 $21
	reti                                             ; $2773: $d9


	ld hl, $21d9                                     ; $2774: $21 $d9 $21
	reti                                             ; $2777: $d9


	ld hl, $21d9                                     ; $2778: $21 $d9 $21
	reti                                             ; $277b: $d9


	ld hl, $21d9                                     ; $277c: $21 $d9 $21
	reti                                             ; $277f: $d9


	ld hl, $21d9                                     ; $2780: $21 $d9 $21
	reti                                             ; $2783: $d9


	ld hl, $21d9                                     ; $2784: $21 $d9 $21
	reti                                             ; $2787: $d9


	ld hl, $21d9                                     ; $2788: $21 $d9 $21
	reti                                             ; $278b: $d9


	ld hl, $21d9                                     ; $278c: $21 $d9 $21
	sbc h                                            ; $278f: $9c
	ld hl, $21ea                                     ; $2790: $21 $ea $21
	ld [$ea21], a                                    ; $2793: $ea $21 $ea
	ld hl, $25be                                     ; $2796: $21 $be $25
	or b                                             ; $2799: $b0
	ld hl, $2163                                     ; $279a: $21 $63 $21
	ld h, e                                          ; $279d: $63
	ld hl, $2163                                     ; $279e: $21 $63 $21
	ld h, e                                          ; $27a1: $63
	ld hl, $2163                                     ; $27a2: $21 $63 $21
	ld h, e                                          ; $27a5: $63
	ld hl, $2163                                     ; $27a6: $21 $63 $21
	ld h, e                                          ; $27a9: $63
	ld hl, $2163                                     ; $27aa: $21 $63 $21
	rst JumpTable                                          ; $27ad: $c7
	dec h                                            ; $27ae: $25
	db $db                                           ; $27af: $db
	dec h                                            ; $27b0: $25
	pop hl                                           ; $27b1: $e1
	dec h                                            ; $27b2: $25
	ld [$f225], a                                    ; $27b3: $ea $25 $f2
	dec h                                            ; $27b6: $25
	ld h, e                                          ; $27b7: $63
	ld hl, $2163                                     ; $27b8: $21 $63 $21
	ld h, e                                          ; $27bb: $63
	ld hl, $2163                                     ; $27bc: $21 $63 $21
	ld h, e                                          ; $27bf: $63
	ld hl, $2163                                     ; $27c0: $21 $63 $21
	ld h, e                                          ; $27c3: $63
	ld hl, $2163                                     ; $27c4: $21 $63 $21
	ld h, e                                          ; $27c7: $63
	ld hl, $2163                                     ; $27c8: $21 $63 $21
	ld h, e                                          ; $27cb: $63
	ld hl, $2163                                     ; $27cc: $21 $63 $21
	ld h, e                                          ; $27cf: $63
	ld hl, $2163                                     ; $27d0: $21 $63 $21
	ld h, e                                          ; $27d3: $63
	ld hl, $2163                                     ; $27d4: $21 $63 $21
	ld h, e                                          ; $27d7: $63
	ld hl, $2163                                     ; $27d8: $21 $63 $21
	ld h, e                                          ; $27db: $63
	ld hl, $2163                                     ; $27dc: $21 $63 $21
	ld h, e                                          ; $27df: $63
	ld hl, $25fe                                     ; $27e0: $21 $fe $25
	rlca                                             ; $27e3: $07
	ld h, $0f                                        ; $27e4: $26 $0f
	ld h, $31                                        ; $27e6: $26 $31
	ld h, $4e                                        ; $27e8: $26 $4e
	ld h, $67                                        ; $27ea: $26 $67
	ld h, $77                                        ; $27ec: $26 $77
	db $26


; B -
; C - sample idx to play
PlaySampledSound::
; Disable interrupts for this process, and preserve curr audvol + sample idx
	di                                                              ; $27ef
	ldh a, [rAUDVOL]                                                ; $27f0
	push af                                                         ; $27f2
	push bc                                                         ; $27f3

;
	xor a                                            ; $27f4: $af
	ldh [rAUD3ENA], a                                ; $27f5: $e0 $1a

;
	ld a, b                                          ; $27f7: $78
	swap a                                           ; $27f8: $cb $37
	or b                                             ; $27fa: $b0
	ld hl, _AUD3WAVERAM                                     ; $27fb: $21 $30 $ff
	ld b, $10                                        ; $27fe: $06 $10
:	ld [hl+], a                                      ; $2800: $22
	dec b                                            ; $2801: $05
	jr nz, :-                               ; $2802: $20 $fc

	and $f0                                          ; $2804: $e6 $f0
	or $08                                           ; $2806: $f6 $08
	ldh [rAUD1ENV], a                                ; $2808: $e0 $12
	ldh [rAUD2ENV], a                                ; $280a: $e0 $17
	ld a, $80                                        ; $280c: $3e $80
	ldh [rAUD1HIGH], a                               ; $280e: $e0 $14
	ldh [rAUD2HIGH], a                               ; $2810: $e0 $19

; Clear aud vol, and rAUDTERM
	ld c, LOW(rAUDVOL)                                              ; $2812
	xor a                                                           ; $2814
	ldh [c], a                                                      ; $2815
	inc c                                                           ; $2816
	ldh [c], a                                                      ; $2817

; Pop sample idx in C, use as triple idx into table to get HL, setting its bank
	pop bc                                                          ; $2818
	ld hl, SampleSources                                            ; $2819
	ld b, $03                                                       ; $281c
	call BCequBtimesC                                               ; $281e
	add hl, bc                                                      ; $2821

	ld a, BANK(SampleSources)                                       ; $2822
	ld [rROMB0], a                                                  ; $2824

; Get A:HL from sample table entry
	ld a, [hl+]                                                     ; $2827
	ld b, [hl]                                                      ; $2828
	inc l                                                           ; $2829
	ld h, [hl]                                                      ; $282a
	ld l, b                                                         ; $282b

; Set rom bank to A and save in C
	ld [rROMB0], a                                                  ; $282c
	ld c, a                                                         ; $282f

; Set initial register settings for aud vol modulation to operate on
	ld a, $08                                                       ; $2830
	ldh [rAUD1SWEEP], a                                             ; $2832
	ld a, $20                                                       ; $2834
	ldh [rAUD3LEVEL], a                                             ; $2836
	xor a                                                           ; $2838
	ldh [rAUD1LEN], a                                               ; $2839
	ldh [rAUD2LEN], a                                               ; $283b
	ld a, $ff                                                       ; $283d
	ldh [rAUD1LOW], a                                               ; $283f
	ldh [rAUD2LOW], a                                               ; $2841
	ldh [rAUD3LOW], a                                               ; $2843
	ld a, $87                                                       ; $2845
	ldh [rAUD3HIGH], a                                              ; $2847
	ld a, $07                                                       ; $2849
	ldh [rAUD1HIGH], a                                              ; $284b
	ldh [rAUD2HIGH], a                                              ; $284d
	ld a, $80                                                       ; $284f
	ldh [rAUD3ENA], a                                               ; $2851
	ld a, $77                                                       ; $2853
	ldh [rAUDTERM], a                                               ; $2855

.nextSampleByte:
; Handle audvol modulation, using sample byte's high nybble as ctrl
	ld a, [hl]                                                      ; $2857
	and $f0                                                         ; $2858
	swap a                                                          ; $285a
	call HandleSampledSoundNybble                                   ; $285c
	call CheckIfNextBankForSampledSounds                            ; $285f

; Handle audvol modulation, using sample byte's low nybble as ctrl.
; Inc HL to next sample byte, next loop
	nop                                                             ; $2862
	nop                                                             ; $2863
	nop                                                             ; $2864
	ld a, [hl]                                                      ; $2865
	inc hl                                                          ; $2866
	and $0f                                                         ; $2867
	call HandleSampledSoundNybble                                   ; $2869
	call CheckIfNextBankForSampledSounds                            ; $286c
	jr .nextSampleByte                                              ; $286f


; A - ctrl nybble
HandleSampledSoundNybble:
; High bit set means repeat write to aud vol, else 1 write per nybble
	bit 3, a                                                        ; $2871
	jr nz, .highBitSet                                              ; $2873

; Copy nybble to both nybbles of A (and D for next repeated bytes), setting aud vol to it
	nop                                                             ; $2875
	nop                                                             ; $2876
	nop                                                             ; $2877
	ld d, a                                                         ; $2878
	swap d                                                          ; $2879
	or d                                                            ; $287b
	ld d, a                                                         ; $287c
	and $77                                                         ; $287d
	ldh [rAUDVOL], a                                                ; $287f

; Burn cycles differently based on if double speed mode applicable
	ld a, [wInitialA]                                               ; $2881
	cp $11                                                          ; $2884
	jr z, .gbcOrGba_0                                               ; $2886

	inc hl                                                          ; $2888
	dec hl                                                          ; $2889
	nop                                                             ; $288a
	ret                                                             ; $288b

.gbcOrGba_0:
	ld e, $12                                                       ; $288c
:	dec e                                                           ; $288e
	jr nz, :-                                                       ; $288f

	nop                                                             ; $2891
	nop                                                             ; $2892
	nop                                                             ; $2893
	ret                                                             ; $2894

.highBitSet:
; If nybble was $8, the sound is done
	and $07                                                         ; $2895
	jr z, SampleSoundFinished                                       ; $2897

; B = 2 to 8 (num repetitions), mask initial aud vol with $77
	ld b, a                                                         ; $2899
	inc b                                                           ; $289a

	ld a, d                                                         ; $289b

.repeatWriteAudVol:
; Mask and set aud vol, and preserve repeated aud vol in E
	and $77                                                         ; $289c
	ldh [rAUDVOL], a                                                ; $289e
	ld e, a                                                         ; $28a0

; Burn cycles differently based on if double speed mode applicable
	ld a, [wInitialA]                                               ; $28a1
	cp $11                                                          ; $28a4
	jr z, .gbcOrGba_1                                               ; $28a6

; If single-speed mode, preserve aud vol, returning if num repetitions is done
	ld a, e                                                         ; $28a8
	nop                                                             ; $28a9
	dec b                                                           ; $28aa
	ret z                                                           ; $28ab

	jr .toRepeatWriteAudVol                                         ; $28ac

.gbcOrGba_1:
	ld a, e                                                         ; $28ae
	ld e, $12                                                       ; $28af
:	dec e                                                           ; $28b1
	jr nz, :-                                                       ; $28b2

	nop                                                             ; $28b4
	nop                                                             ; $28b5
	dec b                                                           ; $28b6
	ret z                                                           ; $28b7

	nop                                                             ; $28b8
	nop                                                             ; $28b9
	nop                                                             ; $28ba

.toRepeatWriteAudVol:
; A should be aud vol to repeat in loop, burn cycles below
	call CheckIfNextBankForSampledSounds                            ; $28bb
	ld e, $05                                                       ; $28be
:	dec e                                                           ; $28c0
	jr nz, :-                                                       ; $28c1

	jr .repeatWriteAudVol                                           ; $28c3


; C - current rom bank
; HL - current address
; Returns current address in HL
; Burns a relevant amount of cycles regardless of new bank, or not
CheckIfNextBankForSampledSounds:
; If bit 7 clear (address in bank 1 map), burn relevant cycles
	bit 7, h                                                        ; $28c5
	jr nz, .newBank                                                 ; $28c7

	push af                                                         ; $28c9
	pop af                                                          ; $28ca
	nop                                                             ; $28cb
	nop                                                             ; $28cc
	nop                                                             ; $28cd
	ret                                                             ; $28ce

.newBank:
; Else, set a new hw rom bank, and reset address
	inc c                                                           ; $28cf
	ld a, c                                                         ; $28d0
	ld [rROMB0], a                                                  ; $28d1

	ld hl, $4000                                                    ; $28d4
	ret                                                             ; $28d7


SampleSoundFinished:
; pop to land in .nextSampleByte infinite loop, then call ???
	pop hl                                           ; $28d8: $e1

	ld a, BANK(Func_07_6048)                                        ; $28d9: $3e $07
	ld [rROMB0], a                                    ; $28db: $ea $00 $20
	call Func_07_6048                                       ; $28de: $cd $48 $60
	ld a, [wRomBank]                                    ; $28e1: $fa $03 $c1
	ld [rROMB0], a                                    ; $28e4: $ea $00 $20

; Pop and restore aud vol from PlaySampledSound, then ret to its caller
	pop af                                                          ; $28e7
	ldh [rAUDVOL], a                                                ; $28e8
	ei                                                              ; $28ea
	ret                                                             ; $28eb


;
	push hl                                          ; $28ec: $e5
	xor a                                            ; $28ed: $af
	ld hl, $c582                                     ; $28ee: $21 $82 $c5
	or [hl]                                          ; $28f1: $b6
	inc h                                            ; $28f2: $24
	or [hl]                                          ; $28f3: $b6
	inc h                                            ; $28f4: $24
	or [hl]                                          ; $28f5: $b6
	inc h                                            ; $28f6: $24
	or [hl]                                          ; $28f7: $b6
	pop hl                                           ; $28f8: $e1
	ret                                              ; $28f9: $c9


Call_000_28fa:
	ld hl, $c120                                     ; $28fa: $21 $20 $c1
	inc [hl]                                         ; $28fd: $34
	ld a, [$c101]                                    ; $28fe: $fa $01 $c1
	rst JumpTable                                          ; $2901: $c7
	dw $2951
	dw $296f
	dw $2974
	dw $2979
	dw $299f
	dw $297e
	dw $2996
	dw $2997
	dw Func_299c


	ld [$c121], a                                    ; $2914: $ea $21 $c1

Jump_000_2917:
	ld hl, $c101                                     ; $2917: $21 $01 $c1
	inc [hl]                                         ; $291a: $34
	inc hl                                           ; $291b: $23
	ld [hl], $00                                     ; $291c: $36 $00
	ret                                              ; $291e: $c9


Call_000_291f:
	ld hl, $c101                                     ; $291f: $21 $01 $c1
	ld [hl+], a                                      ; $2922: $22
	ld [hl], $00                                     ; $2923: $36 $00
	ret                                              ; $2925: $c9


	ld [$c121], a                                    ; $2926: $ea $21 $c1

Jump_000_2929:
	ld a, [$c102]                                    ; $2929: $fa $02 $c1
	inc a                                            ; $292c: $3c

jr_000_292d:
	ld [$c102], a                                    ; $292d: $ea $02 $c1
	ret                                              ; $2930: $c9


	ld a, [$c102]                                    ; $2931: $fa $02 $c1
	dec a                                            ; $2934: $3d
	jr jr_000_292d                                   ; $2935: $18 $f6

	ld hl, $c121                                     ; $2937: $21 $21 $c1
	ld [hl], c                                       ; $293a: $71
	inc hl                                           ; $293b: $23
	ld [hl], b                                       ; $293c: $70
	ret                                              ; $293d: $c9


	ld hl, $c121                                     ; $293e: $21 $21 $c1
	ld c, [hl]                                       ; $2941: $4e
	inc hl                                           ; $2942: $23
	ld b, [hl]                                       ; $2943: $46
	ld a, b                                          ; $2944: $78
	or c                                             ; $2945: $b1
	ret z                                            ; $2946: $c8

	dec bc                                           ; $2947: $0b
	ld [hl], b                                       ; $2948: $70
	dec hl                                           ; $2949: $2b
	ld [hl], c                                       ; $294a: $71
	ret                                              ; $294b: $c9


	ld hl, $c188                                     ; $294c: $21 $88 $c1
	inc [hl]                                         ; $294f: $34
	ret                                              ; $2950: $c9


	ld a, [$c102]                                    ; $2951: $fa $02 $c1
	call wJumpTable                                       ; $2954: $cd $80 $cf
	ld e, e                                          ; $2957: $5b
	add hl, hl                                       ; $2958: $29
	ld h, a                                          ; $2959: $67
	add hl, hl                                       ; $295a: $29
	ld a, $08                                        ; $295b: $3e $08
	ld [$c130], a                                    ; $295d: $ea $30 $c1
	ld a, $05                                        ; $2960: $3e $05
	ldh [rIE], a                                     ; $2962: $e0 $ff
	jp Jump_000_2929                                 ; $2964: $c3 $29 $29


	rst FarCall                                          ; $2967: $f7
	sub [hl]                                         ; $2968: $96
	ld b, e                                          ; $2969: $43
	ld [bc], a                                       ; $296a: $02
	ret nz                                           ; $296b: $c0

	jp Jump_000_2917                                 ; $296c: $c3 $17 $29


	rst FarCall                                          ; $296f: $f7
	db $d3                                           ; $2970: $d3
	ld c, d                                          ; $2971: $4a
	ld [bc], a                                       ; $2972: $02
	ret                                              ; $2973: $c9


	rst FarCall                                          ; $2974: $f7
	ld h, c                                          ; $2975: $61
	ld c, e                                          ; $2976: $4b
	ld [bc], a                                       ; $2977: $02
	ret                                              ; $2978: $c9


	rst FarCall                                          ; $2979: $f7
	adc d                                            ; $297a: $8a
	ld c, e                                          ; $297b: $4b
	ld [bc], a                                       ; $297c: $02
	ret                                              ; $297d: $c9


	rst FarCall                                          ; $297e: $f7
	ld a, [bc]                                       ; $297f: $0a
	ld c, h                                          ; $2980: $4c
	ld [bc], a                                       ; $2981: $02
	ret                                              ; $2982: $c9


Jump_000_2983:
	xor a                                            ; $2983: $af
	call Call_000_1e2e                               ; $2984: $cd $2e $1e
	xor a                                            ; $2987: $af
	ldh [$8e], a                                     ; $2988: $e0 $8e
	call todo_Clears40hBytesAtWramBank0Pages2Plus                               ; $298a: $cd $ef $2d
	xor a                                            ; $298d: $af
	ld [wButtonsPressed], a                                    ; $298e: $ea $25 $c1
	ld a, $01                                        ; $2991: $3e $01
	jp Call_000_291f                                 ; $2993: $c3 $1f $29


	ret                                              ; $2996: $c9


	rst FarCall                                          ; $2997: $f7
	AddrBank $446a, $01
	ret                                     ; $299b: $c9


Func_299c:
	jp Func_29eb                                    ; $299c: $c3 $eb $29


	ld a, [$c102]                                    ; $299f: $fa $02 $c1
	call wJumpTable                                       ; $29a2: $cd $80 $cf
	xor c                                            ; $29a5: $a9
	add hl, hl                                       ; $29a6: $29
	or h                                             ; $29a7: $b4
	add hl, hl                                       ; $29a8: $29
	ld a, $00                                        ; $29a9: $3e $00
	call Call_000_1e2e                               ; $29ab: $cd $2e $1e
	call Call_000_2b04                               ; $29ae: $cd $04 $2b
	jp Jump_000_2929                                 ; $29b1: $c3 $29 $29


	jp Jump_000_2b0c                                 ; $29b4: $c3 $0c $2b


	ld h, d                                          ; $29b7: $62
	sbc b                                            ; $29b8: $98
	ld a, [hl-]                                      ; $29b9: $3a
	ld a, [hl-]                                      ; $29ba: $3a
	ld a, [hl-]                                      ; $29bb: $3a
	ld a, [hl-]                                      ; $29bc: $3a
	jr nz, jr_000_29df                               ; $29bd: $20 $20

	ld d, h                                          ; $29bf: $54
	ld b, l                                          ; $29c0: $45
	ld d, e                                          ; $29c1: $53
	ld d, h                                          ; $29c2: $54
	jr nz, jr_000_29e5                               ; $29c3: $20 $20

	ld a, [hl-]                                      ; $29c5: $3a
	ld a, [hl-]                                      ; $29c6: $3a
	ld a, [hl-]                                      ; $29c7: $3a
	ld a, [hl-]                                      ; $29c8: $3a
	cp $87                                           ; $29c9: $fe $87
	sbc c                                            ; $29cb: $99

jr_000_29cc:
	jr nz, jr_000_29cc                               ; $29cc: $20 $fe

	ld b, a                                          ; $29ce: $47
	sbc c                                            ; $29cf: $99
	jr nc, @+$01                                     ; $29d0: $30 $ff

	ld b, a                                          ; $29d2: $47
	sbc c                                            ; $29d3: $99

jr_000_29d4:
	jr nz, jr_000_29d4                               ; $29d4: $20 $fe

	add a                                            ; $29d6: $87
	sbc c                                            ; $29d7: $99
	jr nc, @+$01                                     ; $29d8: $30 $ff

	ld sp, hl                                        ; $29da: $f9
	ld [bc], a                                       ; $29db: $02
	sub h                                            ; $29dc: $94
	ld d, c                                          ; $29dd: $51
	ret nc                                           ; $29de: $d0

jr_000_29df:
	add d                                            ; $29df: $82
	ld [bc], a                                       ; $29e0: $02
	sub h                                            ; $29e1: $94
	ld d, c                                          ; $29e2: $51
	ret nc                                           ; $29e3: $d0

	adc d                                            ; $29e4: $8a

jr_000_29e5:
	ld [bc], a                                       ; $29e5: $02
	sub h                                            ; $29e6: $94
	ld d, c                                          ; $29e7: $51
	ret nc                                           ; $29e8: $d0

	sub d                                            ; $29e9: $92
	rst $38                                          ; $29ea: $ff


Func_29eb:
	ld a, [$c183]                                    ; $29eb: $fa $83 $c1
	call wJumpTable                                       ; $29ee: $cd $80 $cf
	dw _EnterNamesAndDates
	dw $3a7d
	dw $2d1e
	dw $2a05
	dw $3c0d
	dw $4651
	dw $3dfb
	dw $3a78
	dw Func_1b21
	dw $2a6f


	rst FarCall                                          ; $2a05: $f7
	nop                                              ; $2a06: $00
	ld b, b                                          ; $2a07: $40
	dec b                                            ; $2a08: $05
	ret                                              ; $2a09: $c9


Call_000_2a0a:
	ld a, [$c143]                                    ; $2a0a: $fa $43 $c1
	call wJumpTable                                       ; $2a0d: $cd $80 $cf
	inc d                                            ; $2a10: $14
	ld a, [hl+]                                      ; $2a11: $2a
	inc h                                            ; $2a12: $24
	ld a, [hl+]                                      ; $2a13: $2a
	call Call_000_3716                               ; $2a14: $cd $16 $37
	xor a                                            ; $2a17: $af
	ld [$c169], a                                    ; $2a18: $ea $69 $c1
	ld [$c16a], a                                    ; $2a1b: $ea $6a $c1
	ld a, $01                                        ; $2a1e: $3e $01
	ld [$c143], a                                    ; $2a20: $ea $43 $c1
	ret                                              ; $2a23: $c9


	ld a, [$c186]                                    ; $2a24: $fa $86 $c1
	cp $01                                           ; $2a27: $fe $01
	call z, Call_000_37ac                            ; $2a29: $cc $ac $37
	call $3bd1                                       ; $2a2c: $cd $d1 $3b
	and a                                            ; $2a2f: $a7
	jr z, jr_000_2a4c                                ; $2a30: $28 $1a

	ld a, [$c165]                                    ; $2a32: $fa $65 $c1
	and a                                            ; $2a35: $a7
	jr nz, jr_000_2a43                               ; $2a36: $20 $0b

	ld a, [wFrameCounter]                                    ; $2a38: $fa $1f $c1
	and a                                            ; $2a3b: $a7
	jr nz, jr_000_2a43                               ; $2a3c: $20 $05

	ld a, $01                                        ; $2a3e: $3e $01
	ld [$c162], a                                    ; $2a40: $ea $62 $c1

jr_000_2a43:
	xor a                                            ; $2a43: $af
	ld [$c165], a                                    ; $2a44: $ea $65 $c1
	call Call_000_2f38                               ; $2a47: $cd $38 $2f
	jr jr_000_2a4f                                   ; $2a4a: $18 $03

jr_000_2a4c:
	call $3bcc                                       ; $2a4c: $cd $cc $3b

jr_000_2a4f:
	call Call_000_2a53                               ; $2a4f: $cd $53 $2a
	ret                                              ; $2a52: $c9


Call_000_2a53:
	ld a, [$d230]                                    ; $2a53: $fa $30 $d2
	and a                                            ; $2a56: $a7
	ret z                                            ; $2a57: $c8

	ld a, [wFrameCounter]                                    ; $2a58: $fa $1f $c1
	cp $02                                           ; $2a5b: $fe $02
	jr nc, jr_000_2a6a                               ; $2a5d: $30 $0b

	ld a, [$d231]                                    ; $2a5f: $fa $31 $d2
	inc a                                            ; $2a62: $3c
	cp $0b                                           ; $2a63: $fe $0b
	jr z, jr_000_2a6a                                ; $2a65: $28 $03

	ld [$d231], a                                    ; $2a67: $ea $31 $d2

jr_000_2a6a:
	ld b, $01                                        ; $2a6a: $06 $01
	jp Jump_000_3bc3                                 ; $2a6c: $c3 $c3 $3b


	call Call_000_2a79                               ; $2a6f: $cd $79 $2a
	rst FarCall                                          ; $2a72: $f7
	xor l                                            ; $2a73: $ad
	ld a, [hl+]                                      ; $2a74: $2a
	nop                                              ; $2a75: $00
	jp Jump_000_2983                                 ; $2a76: $c3 $83 $29


Call_000_2a79:
	ld a, [$c180]                                    ; $2a79: $fa $80 $c1
	cp $04                                           ; $2a7c: $fe $04
	jr c, jr_000_2a81                                ; $2a7e: $38 $01

	xor a                                            ; $2a80: $af

jr_000_2a81:
	ld d, a                                          ; $2a81: $57
	ld a, [$c189]                                    ; $2a82: $fa $89 $c1
	cp $0c                                           ; $2a85: $fe $0c
	jr c, jr_000_2a8a                                ; $2a87: $38 $01

	xor a                                            ; $2a89: $af

jr_000_2a8a:
	ld e, a                                          ; $2a8a: $5f
	ld a, d                                          ; $2a8b: $7a
	swap a                                           ; $2a8c: $cb $37
	or e                                             ; $2a8e: $b3
	cp $03                                           ; $2a8f: $fe $03
	jr c, jr_000_2a9c                                ; $2a91: $38 $09

	cp $31                                           ; $2a93: $fe $31
	jr c, jr_000_2a9f                                ; $2a95: $38 $08

	ld de, $0300                                     ; $2a97: $11 $00 $03
	jr jr_000_2a9f                                   ; $2a9a: $18 $03

jr_000_2a9c:
	ld de, $0003                                     ; $2a9c: $11 $03 $00

jr_000_2a9f:
	ld a, d                                          ; $2a9f: $7a
	ld [$a224], a                                    ; $2aa0: $ea $24 $a2
	ld a, e                                          ; $2aa3: $7b
	ld [$a226], a                                    ; $2aa4: $ea $26 $a2
	ld a, $09                                        ; $2aa7: $3e $09
	ld [$a228], a                                    ; $2aa9: $ea $28 $a2
	ret                                              ; $2aac: $c9


jr_000_2aad:
	ld hl, wFrameCounter                                     ; $2aad: $21 $1f $c1
	ld a, [$d80a]                                    ; $2ab0: $fa $0a $d8
	cp [hl]                                          ; $2ab3: $be
	jr z, jr_000_2aad                                ; $2ab4: $28 $f7

	xor a                                            ; $2ab6: $af
	ld [$c110], a                                    ; $2ab7: $ea $10 $c1
	ld a, [wRomBank]                                    ; $2aba: $fa $03 $c1
	push af                                          ; $2abd: $f5
	ld a, $08                                        ; $2abe: $3e $08
	call SetRomBankA                               ; $2ac0: $cd $97 $07
	call $42e3                                       ; $2ac3: $cd $e3 $42
	pop af                                           ; $2ac6: $f1
	call SetRomBankA                               ; $2ac7: $cd $97 $07
	call Call_000_1ca1                               ; $2aca: $cd $a1 $1c
	ld a, [$c157]                                    ; $2acd: $fa $57 $c1
	or a                                             ; $2ad0: $b7
	jr nz, jr_000_2aad                               ; $2ad1: $20 $da

	ret                                              ; $2ad3: $c9


_EnterNamesAndDates::
.loop_2ad4:
	ld hl, wFrameCounter                                     ; $2ad4: $21 $1f $c1
	ld a, [$d80a]                                    ; $2ad7: $fa $0a $d8
	cp [hl]                                          ; $2ada: $be
	jr z, .loop_2ad4                                ; $2adb: $28 $f7

	xor a                                            ; $2add: $af
	ld [$c110], a                                    ; $2ade: $ea $10 $c1
	ld a, [wRomBank]                                    ; $2ae1: $fa $03 $c1
	push af                                          ; $2ae4: $f5
	ld a, $08                                        ; $2ae5: $3e $08
	call SetRomBankA                               ; $2ae7: $cd $97 $07
	call $480c                                       ; $2aea: $cd $0c $48
	pop af                                           ; $2aed: $f1
	call SetRomBankA                               ; $2aee: $cd $97 $07
	call Call_000_1ca1                               ; $2af1: $cd $a1 $1c
	ld a, [$c150]                                    ; $2af4: $fa $50 $c1
	or a                                             ; $2af7: $b7
	jr nz, .loop_2ad4                               ; $2af8: $20 $da

	rst FarCall                                          ; $2afa: $f7
	AddrBank Func_04_42f0
	ld a, $07                                        ; $2afe: $3e $07
	ld [$a365], a                                    ; $2b00: $ea $65 $a3
	ret                                              ; $2b03: $c9


Call_000_2b04:
	xor a                                            ; $2b04: $af
	ld [$c150], a                                    ; $2b05: $ea $50 $c1
	ld [$c151], a                                    ; $2b08: $ea $51 $c1
	ret                                              ; $2b0b: $c9


Jump_000_2b0c:
	ld a, [wRomBank]                                    ; $2b0c: $fa $03 $c1
	push af                                          ; $2b0f: $f5
	ld a, $06                                        ; $2b10: $3e $06
	call SetRomBankA                               ; $2b12: $cd $97 $07
	call $424d                                       ; $2b15: $cd $4d $42
	pop af                                           ; $2b18: $f1
	call SetRomBankA                               ; $2b19: $cd $97 $07
	ld a, [$c150]                                    ; $2b1c: $fa $50 $c1
	or a                                             ; $2b1f: $b7
	ret nz                                           ; $2b20: $c0

	ld a, $05                                        ; $2b21: $3e $05
	jp Call_000_291f                                 ; $2b23: $c3 $1f $29


	ld a, [$d043]                                    ; $2b26: $fa $43 $d0
	call Call_000_2d0a                               ; $2b29: $cd $0a $2d
	call Call_000_2cd5                               ; $2b2c: $cd $d5 $2c
	ld a, [wRomBank]                                    ; $2b2f: $fa $03 $c1
	push af                                          ; $2b32: $f5
	ld a, $06                                        ; $2b33: $3e $06
	call SetRomBankA                               ; $2b35: $cd $97 $07
	call $607a                                       ; $2b38: $cd $7a $60
	pop af                                           ; $2b3b: $f1
	call SetRomBankA                               ; $2b3c: $cd $97 $07
	ld hl, $2b2c                                     ; $2b3f: $21 $2c $2b
	push hl                                          ; $2b42: $e5
	jp Jump_000_2ce6                                 ; $2b43: $c3 $e6 $2c


	ld a, [$d043]                                    ; $2b46: $fa $43 $d0
	call Call_000_2d0a                               ; $2b49: $cd $0a $2d
	call Call_000_2cd5                               ; $2b4c: $cd $d5 $2c
	ld a, [wRomBank]                                    ; $2b4f: $fa $03 $c1
	push af                                          ; $2b52: $f5
	ld a, $06                                        ; $2b53: $3e $06
	call SetRomBankA                               ; $2b55: $cd $97 $07
	call $62fa                                       ; $2b58: $cd $fa $62
	pop af                                           ; $2b5b: $f1
	call SetRomBankA                               ; $2b5c: $cd $97 $07
	ld hl, $2b4c                                     ; $2b5f: $21 $4c $2b
	push hl                                          ; $2b62: $e5
	jp Jump_000_2ce6                                 ; $2b63: $c3 $e6 $2c


Call_000_2b66:
	ld a, [wRomBank]                                    ; $2b66: $fa $03 $c1
	push af                                          ; $2b69: $f5
	ld a, $06                                        ; $2b6a: $3e $06
	call SetRomBankA                               ; $2b6c: $cd $97 $07
	call $658b                                       ; $2b6f: $cd $8b $65
	pop af                                           ; $2b72: $f1
	jp SetRomBankA                                 ; $2b73: $c3 $97 $07


	ld a, [wRomBank]                                    ; $2b76: $fa $03 $c1
	push af                                          ; $2b79: $f5
	ld a, $06                                        ; $2b7a: $3e $06
	call SetRomBankA                               ; $2b7c: $cd $97 $07
	call $65e6                                       ; $2b7f: $cd $e6 $65
	pop af                                           ; $2b82: $f1
	jp SetRomBankA                                 ; $2b83: $c3 $97 $07


	ld a, [wRomBank]                                    ; $2b86: $fa $03 $c1
	push af                                          ; $2b89: $f5
	ld a, $06                                        ; $2b8a: $3e $06
	call SetRomBankA                               ; $2b8c: $cd $97 $07
	call $65f2                                       ; $2b8f: $cd $f2 $65
	pop af                                           ; $2b92: $f1
	jp SetRomBankA                                 ; $2b93: $c3 $97 $07


Func_2b96::
	ld a, [wRomBank]                                    ; $2b96: $fa $03 $c1
	push af                                          ; $2b99: $f5
	ld a, BANK(Func_06_65ee)                                        ; $2b9a: $3e $06
	call SetRomBankA                               ; $2b9c: $cd $97 $07
	call Func_06_65ee                                       ; $2b9f: $cd $ee $65
	pop af                                           ; $2ba2: $f1
	jp SetRomBankA                                 ; $2ba3: $c3 $97 $07


Func_2ba6::
	ld a, [wRomBank]                                    ; $2ba6: $fa $03 $c1
	push af                                          ; $2ba9: $f5
	ld a, $06                                        ; $2baa: $3e $06
	call SetRomBankA                               ; $2bac: $cd $97 $07
	call $65f6                                       ; $2baf: $cd $f6 $65
	pop af                                           ; $2bb2: $f1
	jp SetRomBankA                                 ; $2bb3: $c3 $97 $07


;
	ld a, [wRomBank]                                    ; $2bb6: $fa $03 $c1
	push af                                          ; $2bb9: $f5
	ld a, $06                                        ; $2bba: $3e $06
	call SetRomBankA                               ; $2bbc: $cd $97 $07
	call $65fa                                       ; $2bbf: $cd $fa $65
	pop af                                           ; $2bc2: $f1
	jp SetRomBankA                                 ; $2bc3: $c3 $97 $07


	ld a, [wRomBank]                                    ; $2bc6: $fa $03 $c1
	push af                                          ; $2bc9: $f5
	ld a, $06                                        ; $2bca: $3e $06
	call SetRomBankA                               ; $2bcc: $cd $97 $07
	call $6613                                       ; $2bcf: $cd $13 $66
	pop af                                           ; $2bd2: $f1
	jp SetRomBankA                                 ; $2bd3: $c3 $97 $07


	ld a, [wRomBank]                                    ; $2bd6: $fa $03 $c1
	push af                                          ; $2bd9: $f5
	ld a, $06                                        ; $2bda: $3e $06
	call SetRomBankA                               ; $2bdc: $cd $97 $07
	call $6625                                       ; $2bdf: $cd $25 $66
	pop af                                           ; $2be2: $f1
	jp SetRomBankA                                 ; $2be3: $c3 $97 $07


	ld a, [wRomBank]                                    ; $2be6: $fa $03 $c1
	push af                                          ; $2be9: $f5
	ld a, $06                                        ; $2bea: $3e $06
	call SetRomBankA                               ; $2bec: $cd $97 $07
	call $6637                                       ; $2bef: $cd $37 $66
	pop af                                           ; $2bf2: $f1
	jp SetRomBankA                                 ; $2bf3: $c3 $97 $07


	ld a, [wRomBank]                                    ; $2bf6: $fa $03 $c1
	push af                                          ; $2bf9: $f5
	ld a, $06                                        ; $2bfa: $3e $06
	call SetRomBankA                               ; $2bfc: $cd $97 $07
	call $6649                                       ; $2bff: $cd $49 $66
	pop af                                           ; $2c02: $f1
	jp SetRomBankA                                 ; $2c03: $c3 $97 $07


	call Call_000_2cd5                               ; $2c06: $cd $d5 $2c
	ld a, [wRomBank]                                    ; $2c09: $fa $03 $c1
	push af                                          ; $2c0c: $f5
	ld a, $06                                        ; $2c0d: $3e $06
	call SetRomBankA                               ; $2c0f: $cd $97 $07
	call $6668                                       ; $2c12: $cd $68 $66
	pop af                                           ; $2c15: $f1
	call SetRomBankA                               ; $2c16: $cd $97 $07
	ld hl, $2c06                                     ; $2c19: $21 $06 $2c
	push hl                                          ; $2c1c: $e5
	jp Jump_000_2ce6                                 ; $2c1d: $c3 $e6 $2c


Call_000_2c20:
jr_000_2c20:
	ld hl, wFrameCounter                                     ; $2c20: $21 $1f $c1
	ld a, [$d80a]                                    ; $2c23: $fa $0a $d8
	cp [hl]                                          ; $2c26: $be
	jr z, jr_000_2c20                                ; $2c27: $28 $f7

	xor a                                            ; $2c29: $af
	ld [$c110], a                                    ; $2c2a: $ea $10 $c1
	ld a, [wRomBank]                                    ; $2c2d: $fa $03 $c1
	push af                                          ; $2c30: $f5
	ld a, $06                                        ; $2c31: $3e $06
	call SetRomBankA                               ; $2c33: $cd $97 $07
	call $6697                                       ; $2c36: $cd $97 $66
	pop af                                           ; $2c39: $f1
	call SetRomBankA                               ; $2c3a: $cd $97 $07
	call Call_000_1ca1                               ; $2c3d: $cd $a1 $1c
	ld a, [$d840]                                    ; $2c40: $fa $40 $d8
	or a                                             ; $2c43: $b7
	jr nz, jr_000_2c20                               ; $2c44: $20 $da

	ret                                              ; $2c46: $c9


	call Call_000_2cd5                               ; $2c47: $cd $d5 $2c
	ld a, [wRomBank]                                    ; $2c4a: $fa $03 $c1
	push af                                          ; $2c4d: $f5
	ld a, $06                                        ; $2c4e: $3e $06
	call SetRomBankA                               ; $2c50: $cd $97 $07
	call $693d                                       ; $2c53: $cd $3d $69
	pop af                                           ; $2c56: $f1
	call SetRomBankA                               ; $2c57: $cd $97 $07
	ld hl, $2c47                                     ; $2c5a: $21 $47 $2c
	push hl                                          ; $2c5d: $e5
	jp Jump_000_2ce6                                 ; $2c5e: $c3 $e6 $2c


	ld a, [$d043]                                    ; $2c61: $fa $43 $d0
	call Call_000_2d0a                               ; $2c64: $cd $0a $2d
	call Call_000_2cd5                               ; $2c67: $cd $d5 $2c
	ld a, [wRomBank]                                    ; $2c6a: $fa $03 $c1
	push af                                          ; $2c6d: $f5
	ld a, $06                                        ; $2c6e: $3e $06
	call SetRomBankA                               ; $2c70: $cd $97 $07
	call $6c30                                       ; $2c73: $cd $30 $6c
	pop af                                           ; $2c76: $f1
	call SetRomBankA                               ; $2c77: $cd $97 $07
	ld hl, $2c67                                     ; $2c7a: $21 $67 $2c
	push hl                                          ; $2c7d: $e5
	jp Jump_000_2ce6                                 ; $2c7e: $c3 $e6 $2c


	ld a, [$d043]                                    ; $2c81: $fa $43 $d0
	call Call_000_2d0a                               ; $2c84: $cd $0a $2d
	call Call_000_2cd5                               ; $2c87: $cd $d5 $2c
	ld a, [wRomBank]                                    ; $2c8a: $fa $03 $c1
	push af                                          ; $2c8d: $f5
	ld a, $06                                        ; $2c8e: $3e $06
	call SetRomBankA                               ; $2c90: $cd $97 $07
	call $6885                                       ; $2c93: $cd $85 $68
	pop af                                           ; $2c96: $f1
	call SetRomBankA                               ; $2c97: $cd $97 $07
	ld hl, $2c87                                     ; $2c9a: $21 $87 $2c
	push hl                                          ; $2c9d: $e5
	jp Jump_000_2ce6                                 ; $2c9e: $c3 $e6 $2c


	call Call_000_2cd5                               ; $2ca1: $cd $d5 $2c
	ld a, [wRomBank]                                    ; $2ca4: $fa $03 $c1
	push af                                          ; $2ca7: $f5
	ld a, $06                                        ; $2ca8: $3e $06
	call SetRomBankA                               ; $2caa: $cd $97 $07
	call $688f                                       ; $2cad: $cd $8f $68
	pop af                                           ; $2cb0: $f1
	call SetRomBankA                               ; $2cb1: $cd $97 $07
	ld hl, $2ca1                                     ; $2cb4: $21 $a1 $2c
	push hl                                          ; $2cb7: $e5
	jp Jump_000_2ce6                                 ; $2cb8: $c3 $e6 $2c


	call Call_000_2cd5                               ; $2cbb: $cd $d5 $2c
	ld a, [wRomBank]                                    ; $2cbe: $fa $03 $c1
	push af                                          ; $2cc1: $f5
	ld a, $06                                        ; $2cc2: $3e $06
	call SetRomBankA                               ; $2cc4: $cd $97 $07
	call $6a23                                       ; $2cc7: $cd $23 $6a
	pop af                                           ; $2cca: $f1
	call SetRomBankA                               ; $2ccb: $cd $97 $07
	ld hl, $2cbb                                     ; $2cce: $21 $bb $2c
	push hl                                          ; $2cd1: $e5
	jp Jump_000_2ce6                                 ; $2cd2: $c3 $e6 $2c


Call_000_2cd5:
:	call Call_000_2cf0                               ; $2cd5: $cd $f0 $2c
	ld hl, wFrameCounter                                     ; $2cd8: $21 $1f $c1
	ld a, [$d80a]                                    ; $2cdb: $fa $0a $d8
	cp [hl]                                          ; $2cde: $be
	jr z, :-                                ; $2cdf: $28 $f4

	xor a                                            ; $2ce1: $af
	ld [$c110], a                                    ; $2ce2: $ea $10 $c1
	ret                                              ; $2ce5: $c9


Jump_000_2ce6:
	call Call_000_1ca1                               ; $2ce6: $cd $a1 $1c
	ld a, [$d840]                                    ; $2ce9: $fa $40 $d8
	or a                                             ; $2cec: $b7
	ret nz                                           ; $2ced: $c0

	pop hl                                           ; $2cee: $e1
	ret                                              ; $2cef: $c9


Call_000_2cf0:
	ld a, [$d042]                                    ; $2cf0: $fa $42 $d0
	or a                                             ; $2cf3: $b7
	ret z                                            ; $2cf4: $c8

	ld a, [wButtonsPressed]                                    ; $2cf5: $fa $25 $c1
	and PADF_START                                          ; $2cf8: $e6 $80
	ret z                                            ; $2cfa: $c8

	xor a                                            ; $2cfb: $af
	ld [$d840], a                                    ; $2cfc: $ea $40 $d8
	ld [$c148], a                                    ; $2cff: $ea $48 $c1
	call Call_000_2c20                               ; $2d02: $cd $20 $2c
	rst FarCall                                          ; $2d05: $f7
	AddrBank EndScriptEngine
	ret                                              ; $2d09: $c9


Call_000_2d0a:
	cp $21                                           ; $2d0a: $fe $21
	jr z, jr_000_2d16                                ; $2d0c: $28 $08

	cp $26                                           ; $2d0e: $fe $26
	jr z, jr_000_2d1a                                ; $2d10: $28 $08

jr_000_2d12:
	ld [$d842], a                                    ; $2d12: $ea $42 $d8
	ret                                              ; $2d15: $c9


jr_000_2d16:
	ld a, $10                                        ; $2d16: $3e $10
	jr jr_000_2d12                                   ; $2d18: $18 $f8

jr_000_2d1a:
	ld a, $11                                        ; $2d1a: $3e $11
	jr jr_000_2d12                                   ; $2d1c: $18 $f4

	ld a, $01                                        ; $2d1e: $3e $01
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $2d20: $cd $83 $07
	call $7038                                       ; $2d23: $cd $38 $70
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $2d26: $c3 $7b $07


Call_000_2d29:
	ld a, $01                                        ; $2d29: $3e $01
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $2d2b: $cd $83 $07
	call Call_000_2e21                               ; $2d2e: $cd $21 $2e
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $2d31: $c3 $7b $07


	call SetRomBank5                               ; $2d34: $cd $b8 $07
	ld hl, $2f2c                                     ; $2d37: $21 $2c $2f
	call Call_000_0ab5                               ; $2d3a: $cd $b5 $0a
	jp SetRomBank1                                 ; $2d3d: $c3 $9a $07


Call_000_2d40::
	ldh a, [$9f]                                     ; $2d40: $f0 $9f
	or a                                             ; $2d42: $b7
	ret z                                            ; $2d43: $c8

	xor a                                            ; $2d44: $af
	ld [$c138], a                                    ; $2d45: $ea $38 $c1
	ldh a, [rSB]                                     ; $2d48: $f0 $01
	cp $fe                                           ; $2d4a: $fe $fe
	ret z                                            ; $2d4c: $c8

	ld hl, $ff02                                     ; $2d4d: $21 $02 $ff
	bit 7, [hl]                                      ; $2d50: $cb $7e
	ret nz                                           ; $2d52: $c0

	ldh [$9d], a                                     ; $2d53: $e0 $9d
	ld a, $01                                        ; $2d55: $3e $01
	ld [$c138], a                                    ; $2d57: $ea $38 $c1
	call Call_000_2d78                               ; $2d5a: $cd $78 $2d
	ld a, $02                                        ; $2d5d: $3e $02
	ldh [rSC], a                                     ; $2d5f: $e0 $02
	jp Jump_000_2d72                                 ; $2d61: $c3 $72 $2d


SerialInterruptHandler:
	push af                                          ; $2d64: $f5
	push hl                                          ; $2d65: $e5
	ldh a, [$9f]                                     ; $2d66: $f0 $9f
	or a                                             ; $2d68: $b7
	jr nz, :+                               ; $2d69: $20 $04

	ldh a, [rSB]                                     ; $2d6b: $f0 $01
	ldh [$9d], a                                     ; $2d6d: $e0 $9d

:	pop hl                                           ; $2d6f: $e1
	pop af                                           ; $2d70: $f1
	reti                                             ; $2d71: $d9


Jump_000_2d72:
	ld hl, $ff02                                     ; $2d72: $21 $02 $ff
	set 7, [hl]                                      ; $2d75: $cb $fe
	ret                                              ; $2d77: $c9


Call_000_2d78:
	ld a, $fe                                        ; $2d78: $3e $fe
	ld hl, $ff02                                     ; $2d7a: $21 $02 $ff

jr_000_2d7d:
	bit 7, [hl]                                      ; $2d7d: $cb $7e
	jr nz, jr_000_2d7d                               ; $2d7f: $20 $fc

	ldh [rSB], a                                     ; $2d81: $e0 $01
	ret                                              ; $2d83: $c9


	ld a, $02                                        ; $2d84: $3e $02
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $2d86: $cd $83 $07
	call $4deb                                       ; $2d89: $cd $eb $4d
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $2d8c: $c3 $7b $07


	push af                                          ; $2d8f: $f5
	push hl                                          ; $2d90: $e5
	ld a, $02                                        ; $2d91: $3e $02
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $2d93: $cd $83 $07
	call $4e67                                       ; $2d96: $cd $67 $4e
	call _SetRomBankToHighByteInStackAfterReturn                               ; $2d99: $cd $ef $07
	pop hl                                           ; $2d9c: $e1
	pop af                                           ; $2d9d: $f1
	ret                                              ; $2d9e: $c9


	push af                                          ; $2d9f: $f5
	push hl                                          ; $2da0: $e5
	ldh [$9e], a                                     ; $2da1: $e0 $9e
	ld a, $02                                        ; $2da3: $3e $02
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $2da5: $cd $83 $07
	call $4e85                                       ; $2da8: $cd $85 $4e
	call _SetRomBankToHighByteInStackAfterReturn                               ; $2dab: $cd $ef $07
	pop hl                                           ; $2dae: $e1
	pop af                                           ; $2daf: $f1
	ret                                              ; $2db0: $c9


	push af                                          ; $2db1: $f5
	push hl                                          ; $2db2: $e5
	ld [$c13b], a                                    ; $2db3: $ea $3b $c1
	ld a, $02                                        ; $2db6: $3e $02
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $2db8: $cd $83 $07
	call $4f29                                       ; $2dbb: $cd $29 $4f
	call _SetRomBankToHighByteInStackAfterReturn                               ; $2dbe: $cd $ef $07
	pop hl                                           ; $2dc1: $e1
	pop af                                           ; $2dc2: $f1
	ret                                              ; $2dc3: $c9


	push af                                          ; $2dc4: $f5
	push hl                                          ; $2dc5: $e5
	ld a, $02                                        ; $2dc6: $3e $02
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $2dc8: $cd $83 $07
	call $4ea4                                       ; $2dcb: $cd $a4 $4e
	call _SetRomBankToHighByteInStackAfterReturn                               ; $2dce: $cd $ef $07
	pop hl                                           ; $2dd1: $e1
	pop af                                           ; $2dd2: $f1
	ret                                              ; $2dd3: $c9


	push af                                          ; $2dd4: $f5
	push hl                                          ; $2dd5: $e5
	ld a, $02                                        ; $2dd6: $3e $02
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $2dd8: $cd $83 $07
	call $4ed9                                       ; $2ddb: $cd $d9 $4e
	call _SetRomBankToHighByteInStackAfterReturn                               ; $2dde: $cd $ef $07
	pop hl                                           ; $2de1: $e1
	pop af                                           ; $2de2: $f1
	ret                                              ; $2de3: $c9


	ld a, $02                                        ; $2de4: $3e $02
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $2de6: $cd $83 $07
	call $4f62                                       ; $2de9: $cd $62 $4f
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $2dec: $c3 $7b $07


todo_Clears40hBytesAtWramBank0Pages2Plus::
; Clear 1st $40 bytes on pages 2+ in 1st wram bank
	ldhl $c2, $0e                                     ; $2def: $21 $0e $c2

.nextPage:
	push hl                                          ; $2df2: $e5
	call Clear40hBytesAtPageH                               ; $2df3: $cd $fc $2d
	pop hl                                           ; $2df6: $e1

; To next page
	inc h                                            ; $2df7: $24
	dec l                                            ; $2df8: $2d
	jr nz, .nextPage                               ; $2df9: $20 $f7

	ret                                              ; $2dfb: $c9


Clear40hBytesAtPageH:
; Clear 2*$20 bytes at H<0>
	ld l, $00                                                       ; $2dfc
	xor a                                                           ; $2dfe

	ld b, $02                                                       ; $2dff
:	call wMemSets+1*($20-$20)                                       ; $2e01
	dec b                                                           ; $2e04
	jr nz, :-                                                       ; $2e05

	ret                                                             ; $2e07


;
	push bc                                          ; $2e08: $c5
	ld hl, $c200                                     ; $2e09: $21 $00 $c2
	ld b, $0e                                        ; $2e0c: $06 $0e
	ld c, a                                          ; $2e0e: $4f

jr_000_2e0f:
	ld a, [hl]                                       ; $2e0f: $7e
	or a                                             ; $2e10: $b7
	jr z, jr_000_2e18                                ; $2e11: $28 $05

	inc h                                            ; $2e13: $24
	dec b                                            ; $2e14: $05
	jr nz, jr_000_2e0f                               ; $2e15: $20 $f8

	dec b                                            ; $2e17: $05

jr_000_2e18:
	ld a, c                                          ; $2e18: $79
	pop bc                                           ; $2e19: $c1
	ret                                              ; $2e1a: $c9


	ld hl, $d902                                     ; $2e1b: $21 $02 $d9
	call Call_000_2e24                               ; $2e1e: $cd $24 $2e

Call_000_2e21:
	ld hl, $c20e                                     ; $2e21: $21 $0e $c2

Call_000_2e24:
jr_000_2e24:
	push hl                                          ; $2e24: $e5
	call Call_000_2e2e                               ; $2e25: $cd $2e $2e
	pop hl                                           ; $2e28: $e1
	inc h                                            ; $2e29: $24
	dec l                                            ; $2e2a: $2d
	jr nz, jr_000_2e24                               ; $2e2b: $20 $f7

	ret                                              ; $2e2d: $c9


Call_000_2e2e:
	ld l, $00                                        ; $2e2e: $2e $00
	ld a, [hl]                                       ; $2e30: $7e
	or a                                             ; $2e31: $b7
	ret z                                            ; $2e32: $c8

	ld b, h                                          ; $2e33: $44
	ld e, a                                          ; $2e34: $5f
	ld l, $0b                                        ; $2e35: $2e $0b
	ld a, [hl]                                       ; $2e37: $7e
	and a                                            ; $2e38: $a7
	jr z, jr_000_2e3c                                ; $2e39: $28 $01

	dec [hl]                                         ; $2e3b: $35

jr_000_2e3c:
	ld d, $00                                        ; $2e3c: $16 $00
	ld hl, $2e4a                                     ; $2e3e: $21 $4a $2e
	add hl, de                                       ; $2e41: $19
	add hl, de                                       ; $2e42: $19
	ld e, [hl]                                       ; $2e43: $5e
	inc hl                                           ; $2e44: $23
	ld d, [hl]                                       ; $2e45: $56
	ld l, $0a                                        ; $2e46: $2e $0a
	ld h, b                                          ; $2e48: $60
	ld a, [hl]                                       ; $2e49: $7e
	push de                                          ; $2e4a: $d5
	ret                                              ; $2e4b: $c9


	nop                                              ; $2e4c: $00
	nop                                              ; $2e4d: $00
	nop                                              ; $2e4e: $00
	nop                                              ; $2e4f: $00
	nop                                              ; $2e50: $00
	nop                                              ; $2e51: $00
	nop                                              ; $2e52: $00
	nop                                              ; $2e53: $00
	jr nz, jr_000_2ea7                               ; $2e54: $20 $51

	bit 2, a                                         ; $2e56: $cb $57
	rst $38                                          ; $2e58: $ff
	ld d, a                                          ; $2e59: $57
	dec [hl]                                         ; $2e5a: $35
	ld e, b                                          ; $2e5b: $58
	ld c, a                                          ; $2e5c: $4f
	ld e, b                                          ; $2e5d: $58
	ld l, c                                          ; $2e5e: $69
	ld e, b                                          ; $2e5f: $58
	add [hl]                                         ; $2e60: $86
	ld e, b                                          ; $2e61: $58
	and e                                            ; $2e62: $a3
	ld e, b                                          ; $2e63: $58
	ret nz                                           ; $2e64: $c0

	ld e, b                                          ; $2e65: $58
	rra                                              ; $2e66: $1f
	ld e, c                                          ; $2e67: $59
	or h                                             ; $2e68: $b4
	ld e, c                                          ; $2e69: $59
	ldh [c], a                                       ; $2e6a: $e2
	ld e, c                                          ; $2e6b: $59
	inc c                                            ; $2e6c: $0c
	ld e, d                                          ; $2e6d: $5a
	ld [hl], $5a                                     ; $2e6e: $36 $5a
	sbc c                                            ; $2e70: $99
	ld e, h                                          ; $2e71: $5c
	ld h, b                                          ; $2e72: $60
	ld e, d                                          ; $2e73: $5a
	ld a, d                                          ; $2e74: $7a
	ld e, d                                          ; $2e75: $5a
	or e                                             ; $2e76: $b3
	ld e, d                                          ; $2e77: $5a
	nop                                              ; $2e78: $00
	ld e, e                                          ; $2e79: $5b
	ld c, l                                          ; $2e7a: $4d
	ld e, e                                          ; $2e7b: $5b
	sub a                                            ; $2e7c: $97
	ld e, e                                          ; $2e7d: $5b
	pop hl                                           ; $2e7e: $e1
	ld e, e                                          ; $2e7f: $5b
	ld a, e                                          ; $2e80: $7b
	ld e, h                                          ; $2e81: $5c
	ld l, e                                          ; $2e82: $6b
	ld h, l                                          ; $2e83: $65
	and e                                            ; $2e84: $a3
	ld h, l                                          ; $2e85: $65
	db $db                                           ; $2e86: $db
	ld h, l                                          ; $2e87: $65
	db $fd                                           ; $2e88: $fd
	ld h, l                                          ; $2e89: $65
	ld [bc], a                                       ; $2e8a: $02
	ld h, [hl]                                       ; $2e8b: $66
	rlca                                             ; $2e8c: $07
	ld h, [hl]                                       ; $2e8d: $66
	inc c                                            ; $2e8e: $0c
	ld h, [hl]                                       ; $2e8f: $66
	ld de, $1666                                     ; $2e90: $11 $66 $16
	ld h, [hl]                                       ; $2e93: $66
	adc d                                            ; $2e94: $8a
	ld [hl], b                                       ; $2e95: $70
	ld a, [bc]                                       ; $2e96: $0a
	ld [hl], c                                       ; $2e97: $71
	or l                                             ; $2e98: $b5
	ld [hl], c                                       ; $2e99: $71
	rst AddAOntoHL                                          ; $2e9a: $ef
	ld [hl], c                                       ; $2e9b: $71
	ld l, $72                                        ; $2e9c: $2e $72
	inc sp                                           ; $2e9e: $33
	ld [hl], d                                       ; $2e9f: $72
	jr c, jr_000_2f14                                ; $2ea0: $38 $72

	dec a                                            ; $2ea2: $3d
	ld [hl], d                                       ; $2ea3: $72
	ld b, d                                          ; $2ea4: $42
	ld [hl], d                                       ; $2ea5: $72
	ld b, a                                          ; $2ea6: $47

jr_000_2ea7:
	ld [hl], d                                       ; $2ea7: $72
	ld c, h                                          ; $2ea8: $4c
	ld [hl], d                                       ; $2ea9: $72
	ld d, c                                          ; $2eaa: $51
	ld [hl], d                                       ; $2eab: $72
	ld d, [hl]                                       ; $2eac: $56
	ld [hl], d                                       ; $2ead: $72
	xor l                                            ; $2eae: $ad
	ld h, [hl]                                       ; $2eaf: $66
	ldh a, [$66]                                     ; $2eb0: $f0 $66
	ld sp, hl                                        ; $2eb2: $f9
	ld l, l                                          ; $2eb3: $6d
	or h                                             ; $2eb4: $b4
	ld l, e                                          ; $2eb5: $6b
	ld d, a                                          ; $2eb6: $57
	ld d, c                                          ; $2eb7: $51
	nop                                              ; $2eb8: $00
	ld d, d                                          ; $2eb9: $52
	ld a, $52                                        ; $2eba: $3e $52
	ld l, d                                          ; $2ebc: $6a
	ld d, d                                          ; $2ebd: $52
	ld [hl], e                                       ; $2ebe: $73
	ld d, d                                          ; $2ebf: $52
	ld a, [bc]                                       ; $2ec0: $0a
	ld d, e                                          ; $2ec1: $53
	ld sp, $1053                                     ; $2ec2: $31 $53 $10
	ld h, h                                          ; $2ec5: $64
	ld c, a                                          ; $2ec6: $4f
	ld h, l                                          ; $2ec7: $65
	ld [hl], c                                       ; $2ec8: $71
	ld h, l                                          ; $2ec9: $65
	or b                                             ; $2eca: $b0
	ld h, l                                          ; $2ecb: $65
	ld [$5566], sp                                   ; $2ecc: $08 $66 $55
	ld h, e                                          ; $2ecf: $63
	ld [$2c63], a                                    ; $2ed0: $ea $63 $2c
	ld h, [hl]                                       ; $2ed3: $66
	sbc a                                            ; $2ed4: $9f
	ld l, c                                          ; $2ed5: $69
	xor l                                            ; $2ed6: $ad
	ld l, e                                          ; $2ed7: $6b
	ldh a, [c]                                       ; $2ed8: $f2
	ld l, e                                          ; $2ed9: $6b
	ld a, [bc]                                       ; $2eda: $0a
	ld l, l                                          ; $2edb: $6d
	ld d, $6e                                        ; $2edc: $16 $6e
	rst $38                                          ; $2ede: $ff
	ld [hl], e                                       ; $2edf: $73
	inc de                                           ; $2ee0: $13
	ld [hl], l                                       ; $2ee1: $75
	sbc c                                            ; $2ee2: $99
	ld [hl], l                                       ; $2ee3: $75
	ld l, e                                          ; $2ee4: $6b
	ld [hl], e                                       ; $2ee5: $73
	or h                                             ; $2ee6: $b4
	halt                                             ; $2ee7: $76
	ld [$0f77], a                                    ; $2ee8: $ea $77 $0f
	ld a, b                                          ; $2eeb: $78
	ld b, [hl]                                       ; $2eec: $46
	ld a, b                                          ; $2eed: $78
	ld a, b                                          ; $2eee: $78
	ld [hl], e                                       ; $2eef: $73
	sbc b                                            ; $2ef0: $98
	ld a, c                                          ; $2ef1: $79
	add b                                            ; $2ef2: $80
	ld a, d                                          ; $2ef3: $7a
	xor c                                            ; $2ef4: $a9
	ld a, d                                          ; $2ef5: $7a
	add l                                            ; $2ef6: $85
	ld [hl], e                                       ; $2ef7: $73
	ld l, b                                          ; $2ef8: $68
	ld a, a                                          ; $2ef9: $7f
	and e                                            ; $2efa: $a3
	ld a, a                                          ; $2efb: $7f
	or c                                             ; $2efc: $b1
	ld a, a                                          ; $2efd: $7f
	sub d                                            ; $2efe: $92
	ld [hl], e                                       ; $2eff: $73
	ei                                               ; $2f00: $fb
	ld [hl], c                                       ; $2f01: $71
	inc h                                            ; $2f02: $24
	ld [hl], d                                       ; $2f03: $72
	ld a, [de]                                       ; $2f04: $1a
	ld [hl], h                                       ; $2f05: $74
	ld a, [de]                                       ; $2f06: $1a
	ld [hl], h                                       ; $2f07: $74
	ld a, [de]                                       ; $2f08: $1a
	ld [hl], h                                       ; $2f09: $74
	ld a, [de]                                       ; $2f0a: $1a
	ld [hl], h                                       ; $2f0b: $74
	ld a, [de]                                       ; $2f0c: $1a
	ld [hl], h                                       ; $2f0d: $74
	ld a, [de]                                       ; $2f0e: $1a
	ld [hl], h                                       ; $2f0f: $74
	ld a, [de]                                       ; $2f10: $1a
	ld [hl], h                                       ; $2f11: $74
	ld a, [de]                                       ; $2f12: $1a
	ld [hl], h                                       ; $2f13: $74

jr_000_2f14:
	ld a, [de]                                       ; $2f14: $1a
	ld [hl], h                                       ; $2f15: $74
	ld a, [de]                                       ; $2f16: $1a
	ld [hl], h                                       ; $2f17: $74
	ld a, [de]                                       ; $2f18: $1a
	ld [hl], h                                       ; $2f19: $74
	ld a, [de]                                       ; $2f1a: $1a
	ld [hl], h                                       ; $2f1b: $74
	ld a, [de]                                       ; $2f1c: $1a
	ld [hl], h                                       ; $2f1d: $74
	ld a, [de]                                       ; $2f1e: $1a
	ld [hl], h                                       ; $2f1f: $74
	ld a, [de]                                       ; $2f20: $1a
	ld [hl], h                                       ; $2f21: $74
	ld a, [de]                                       ; $2f22: $1a
	ld [hl], h                                       ; $2f23: $74
	ld a, [de]                                       ; $2f24: $1a
	ld [hl], h                                       ; $2f25: $74
	or e                                             ; $2f26: $b3
	ld [hl], h                                       ; $2f27: $74
	rst SubAFromHL                                          ; $2f28: $d7
	ld [hl], h                                       ; $2f29: $74
	inc [hl]                                         ; $2f2a: $34
	ld l, b                                          ; $2f2b: $68
	ld sp, hl                                        ; $2f2c: $f9
	ld [bc], a                                       ; $2f2d: $02
	sub h                                            ; $2f2e: $94
	ld d, c                                          ; $2f2f: $51
	ret nc                                           ; $2f30: $d0

	sub b                                            ; $2f31: $90
	ld [bc], a                                       ; $2f32: $02
	sub h                                            ; $2f33: $94
	ld d, c                                          ; $2f34: $51
	nop                                              ; $2f35: $00
	add b                                            ; $2f36: $80
	rst $38                                          ; $2f37: $ff

Call_000_2f38:
Jump_000_2f38:
	ld a, [$c149]                                    ; $2f38: $fa $49 $c1
	cp $ff                                           ; $2f3b: $fe $ff
	ret z                                            ; $2f3d: $c8

	and a                                            ; $2f3e: $a7
	jr z, jr_000_2f5c                                ; $2f3f: $28 $1b

	xor a                                            ; $2f41: $af
	ld [$c149], a                                    ; $2f42: $ea $49 $c1
	ld a, [$c186]                                    ; $2f45: $fa $86 $c1
	cp $0b                                           ; $2f48: $fe $0b
	jr z, jr_000_2f51                                ; $2f4a: $28 $05

	ld a, $01                                        ; $2f4c: $3e $01
	ld [$c186], a                                    ; $2f4e: $ea $86 $c1

jr_000_2f51:
	ld a, $08                                        ; $2f51: $3e $08
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $2f53: $cd $83 $07
	call Call_000_2f78                               ; $2f56: $cd $78 $2f
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $2f59: $c3 $7b $07


jr_000_2f5c:
	ld a, $08                                        ; $2f5c: $3e $08
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $2f5e: $cd $83 $07
	call Call_000_37a3                               ; $2f61: $cd $a3 $37
	and a                                            ; $2f64: $a7
	jr z, jr_000_2f75                                ; $2f65: $28 $0e

	ld a, [$c14d]                                    ; $2f67: $fa $4d $c1
	and a                                            ; $2f6a: $a7
	call z, Call_000_3432                            ; $2f6b: $cc $32 $34
	ld a, [$c14e]                                    ; $2f6e: $fa $4e $c1
	and a                                            ; $2f71: $a7
	call z, Call_000_346d                            ; $2f72: $cc $6d $34

jr_000_2f75:
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $2f75: $c3 $7b $07


Call_000_2f78:
	call Call_000_35f6                               ; $2f78: $cd $f6 $35
	ld b, $fe                                        ; $2f7b: $06 $fe
	call Call_000_370e                               ; $2f7d: $cd $0e $37
	call Call_000_3876                               ; $2f80: $cd $76 $38
	ld a, [$c186]                                    ; $2f83: $fa $86 $c1
	cp $0b                                           ; $2f86: $fe $0b
	jr z, jr_000_2f94                                ; $2f88: $28 $0a

	ld hl, $9c00                                     ; $2f8a: $21 $00 $9c
	ld b, $0b                                        ; $2f8d: $06 $0b
	ld c, $a4                                        ; $2f8f: $0e $a4
	call SetIncrementalTileMap                               ; $2f91: $cd $0d $39

jr_000_2f94:
	ld a, [$c114]                                    ; $2f94: $fa $14 $c1
	call Call_000_3673                               ; $2f97: $cd $73 $36
	ld a, [hl+]                                      ; $2f9a: $2a
	ld [$c151], a                                    ; $2f9b: $ea $51 $c1
	ld a, [hl+]                                      ; $2f9e: $2a
	ld [$c152], a                                    ; $2f9f: $ea $52 $c1
	inc hl                                           ; $2fa2: $23
	ld a, [hl-]                                      ; $2fa3: $3a
	ld [$c150], a                                    ; $2fa4: $ea $50 $c1
	call Call_000_0aab                               ; $2fa7: $cd $ab $0a
	ld b, $09                                        ; $2faa: $06 $09
	call Call_000_368b                               ; $2fac: $cd $8b $36
	call Call_000_0ab5                               ; $2faf: $cd $b5 $0a
	call Call_000_2fff                               ; $2fb2: $cd $ff $2f
	ld a, $2c                                        ; $2fb5: $3e $2c
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $2fb7: $cd $83 $07
	ld a, [hl+]                                      ; $2fba: $2a
	ld [$c161], a                                    ; $2fbb: $ea $61 $c1
	ld a, [hl+]                                      ; $2fbe: $2a
	cpl                                              ; $2fbf: $2f
	ldh [hDisp0_OBP0], a                                     ; $2fc0: $e0 $86
	ld a, [hl]                                       ; $2fc2: $7e
	cpl                                              ; $2fc3: $2f
	ldh [hDisp0_OBP1], a                                     ; $2fc4: $e0 $87
	call _SetRomBankToHighByteInStackAfterReturn                               ; $2fc6: $cd $ef $07
	ld a, [$c14a]                                    ; $2fc9: $fa $4a $c1
	and $80                                          ; $2fcc: $e6 $80
	jr nz, jr_000_2fd3                               ; $2fce: $20 $03

	call Call_000_2ff9                               ; $2fd0: $cd $f9 $2f

jr_000_2fd3:
	call Call_000_3701                               ; $2fd3: $cd $01 $37
	call $62ae                                       ; $2fd6: $cd $ae $62
	ld b, $10                                        ; $2fd9: $06 $10
	call Call_000_368b                               ; $2fdb: $cd $8b $36
	call Call_000_3088                               ; $2fde: $cd $88 $30
	call Call_000_3680                               ; $2fe1: $cd $80 $36
	call Call_000_33ac                               ; $2fe4: $cd $ac $33
	jr nz, jr_000_2ff2                               ; $2fe7: $20 $09

	ld a, [$c14a]                                    ; $2fe9: $fa $4a $c1
	and $02                                          ; $2fec: $e6 $02
	jr nz, jr_000_2ff2                               ; $2fee: $20 $02

	jr jr_000_2ff8                                   ; $2ff0: $18 $06

jr_000_2ff2:
	call Call_000_3734                               ; $2ff2: $cd $34 $37
	call Call_000_379e                               ; $2ff5: $cd $9e $37

jr_000_2ff8:
	ret                                              ; $2ff8: $c9


Call_000_2ff9:
	call Call_000_2fff                               ; $2ff9: $cd $ff $2f
	call Call_000_3534                               ; $2ffc: $cd $34 $35

Call_000_2fff:
	ld a, $02                                        ; $2fff: $3e $02
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3001: $cd $83 $07
	ld hl, $6eec                                     ; $3004: $21 $ec $6e
	ld a, [$c114]                                    ; $3007: $fa $14 $c1
	call Add2AOntoHL                               ; $300a: $cd $55 $36
	ld e, l                                          ; $300d: $5d
	ld d, h                                          ; $300e: $54
	ld a, [de]                                       ; $300f: $1a
	ld l, a                                          ; $3010: $6f
	inc de                                           ; $3011: $13
	ld a, [de]                                       ; $3012: $1a
	ld h, a                                          ; $3013: $67
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3014: $c3 $7b $07


	ld a, $2b                                        ; $3017: $3e $2b
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3019: $cd $83 $07
	ld a, $d8                                        ; $301c: $3e $d8
	ld [$c0d8], a                                    ; $301e: $ea $d8 $c0
	ld a, $d8                                        ; $3021: $3e $d8
	ld [$c0d9], a                                    ; $3023: $ea $d9 $c0
	ld c, $00                                        ; $3026: $0e $00
	ld hl, $c0db                                     ; $3028: $21 $db $c0
	ld [hl], $01                                     ; $302b: $36 $01

jr_000_302d:
	call Call_000_34b5                               ; $302d: $cd $b5 $34
	ld b, $08                                        ; $3030: $06 $08
	jr nc, jr_000_307e                               ; $3032: $30 $4a

	call Call_000_34b5                               ; $3034: $cd $b5 $34
	call Call_000_34d8                               ; $3037: $cd $d8 $34
	ld a, [$c0d2]                                    ; $303a: $fa $d2 $c0
	ld l, a                                          ; $303d: $6f
	ld a, [$c0d3]                                    ; $303e: $fa $d3 $c0
	ld h, a                                          ; $3041: $67
	ld b, [hl]                                       ; $3042: $46
	inc hl                                           ; $3043: $23
	ld a, l                                          ; $3044: $7d
	ld [$c0d2], a                                    ; $3045: $ea $d2 $c0
	ld a, h                                          ; $3048: $7c
	ld [$c0d3], a                                    ; $3049: $ea $d3 $c0
	ld a, b                                          ; $304c: $78
	push af                                          ; $304d: $f5
	swap a                                           ; $304e: $cb $37
	and $0f                                          ; $3050: $e6 $0f
	bit 3, a                                         ; $3052: $cb $5f
	call z, Call_000_351e                            ; $3054: $cc $1e $35
	and $07                                          ; $3057: $e6 $07
	call Call_000_3386                               ; $3059: $cd $86 $33
	sla a                                            ; $305c: $cb $27
	ld [de], a                                       ; $305e: $12
	inc de                                           ; $305f: $13
	ld b, a                                          ; $3060: $47
	pop af                                           ; $3061: $f1
	or $80                                           ; $3062: $f6 $80
	bit 3, a                                         ; $3064: $cb $5f
	call z, Call_000_351e                            ; $3066: $cc $1e $35
	and $07                                          ; $3069: $e6 $07
	call Call_000_3386                               ; $306b: $cd $86 $33
	sla a                                            ; $306e: $cb $27
	cp b                                             ; $3070: $b8
	ld b, $10                                        ; $3071: $06 $10
	jr z, jr_000_307e                                ; $3073: $28 $09

	ld b, a                                          ; $3075: $47
	call Call_000_34d8                               ; $3076: $cd $d8 $34
	ld a, b                                          ; $3079: $78
	ld [de], a                                       ; $307a: $12
	inc de                                           ; $307b: $13
	ld b, $10                                        ; $307c: $06 $10

jr_000_307e:
	call Call_000_34e8                               ; $307e: $cd $e8 $34
	cp $ff                                           ; $3081: $fe $ff
	jr nz, jr_000_302d                               ; $3083: $20 $a8

	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3085: $c3 $7b $07


Call_000_3088:
	ld a, [hl+]                                      ; $3088: $2a
	ld [$c15b], a                                    ; $3089: $ea $5b $c1
	ld c, a                                          ; $308c: $4f
	push bc                                          ; $308d: $c5
	ld a, [hl+]                                      ; $308e: $2a
	ld [$c15c], a                                    ; $308f: $ea $5c $c1
	push hl                                          ; $3092: $e5
	ld a, $08                                        ; $3093: $3e $08
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3095: $cd $83 $07
	call $62d9                                       ; $3098: $cd $d9 $62
	call _SetRomBankToHighByteInStackAfterReturn                               ; $309b: $cd $ef $07
	pop hl                                           ; $309e: $e1
	ld a, [hl+]                                      ; $309f: $2a
	ld b, a                                          ; $30a0: $47
	ld [$c153], a                                    ; $30a1: $ea $53 $c1
	ld a, [hl+]                                      ; $30a4: $2a
	ld c, a                                          ; $30a5: $4f
	ld [$c154], a                                    ; $30a6: $ea $54 $c1
	push bc                                          ; $30a9: $c5
	ld a, [hl+]                                      ; $30aa: $2a
	ld [$c15a], a                                    ; $30ab: $ea $5a $c1
	ld e, [hl]                                       ; $30ae: $5e
	inc hl                                           ; $30af: $23
	ld d, [hl]                                       ; $30b0: $56
	inc hl                                           ; $30b1: $23
	push hl                                          ; $30b2: $e5
	ld a, $2b                                        ; $30b3: $3e $2b
	call SetRomBankA                               ; $30b5: $cd $97 $07
	call Call_000_3287                               ; $30b8: $cd $87 $32
	pop hl                                           ; $30bb: $e1
	call Call_000_30c7                               ; $30bc: $cd $c7 $30
	call Call_000_36c0                               ; $30bf: $cd $c0 $36
	pop bc                                           ; $30c2: $c1
	pop de                                           ; $30c3: $d1
	jp Jump_000_323d                                 ; $30c4: $c3 $3d $32


Call_000_30c7:
	ld a, $08                                        ; $30c7: $3e $08
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $30c9: $cd $83 $07
	ld b, $17                                        ; $30cc: $06 $17
	call Call_000_368b                               ; $30ce: $cd $8b $36
	ld a, [$c15c]                                    ; $30d1: $fa $5c $c1
	ld c, a                                          ; $30d4: $4f
	ld a, [$c117]                                    ; $30d5: $fa $17 $c1
	cp c                                             ; $30d8: $b9
	jr c, jr_000_30e0                                ; $30d9: $38 $05

	ld a, c                                          ; $30db: $79
	dec a                                            ; $30dc: $3d
	ld [$c117], a                                    ; $30dd: $ea $17 $c1

jr_000_30e0:
	ld c, a                                          ; $30e0: $4f
	sla a                                            ; $30e1: $cb $27
	add c                                            ; $30e3: $81
	ld c, a                                          ; $30e4: $4f
	ld b, $00                                        ; $30e5: $06 $00
	add hl, bc                                       ; $30e7: $09
	ld d, h                                          ; $30e8: $54
	ld e, l                                          ; $30e9: $5d
	ld bc, $da80                                     ; $30ea: $01 $80 $da
	xor a                                            ; $30ed: $af
	call Call_000_35cd                               ; $30ee: $cd $cd $35
	ld b, $00                                        ; $30f1: $06 $00
	call Call_000_310e                               ; $30f3: $cd $0e $31
	ld c, $00                                        ; $30f6: $0e $00
	call Call_000_3128                               ; $30f8: $cd $28 $31
	call _SetRomBankToHighByteInStackAfterReturn                               ; $30fb: $cd $ef $07
	ld a, $01                                        ; $30fe: $3e $01
	ld [$c165], a                                    ; $3100: $ea $65 $c1
	xor a                                            ; $3103: $af
	ld [$c162], a                                    ; $3104: $ea $62 $c1
	ld [$c163], a                                    ; $3107: $ea $63 $c1
	ld [$c164], a                                    ; $310a: $ea $64 $c1
	ret                                              ; $310d: $c9


Call_000_310e:
	ld a, $2b                                        ; $310e: $3e $2b
	call SetRomBankA                               ; $3110: $cd $97 $07
	ld a, b                                          ; $3113: $78
	ld [$c0d4], a                                    ; $3114: $ea $d4 $c0
	call Call_000_3698                               ; $3117: $cd $98 $36
	call Call_000_36ac                               ; $311a: $cd $ac $36
	call Call_000_36ce                               ; $311d: $cd $ce $36
	call Call_000_36bb                               ; $3120: $cd $bb $36
	call Call_000_36d7                               ; $3123: $cd $d7 $36
	jr jr_000_314a                                   ; $3126: $18 $22

Call_000_3128:
	ld a, $2b                                        ; $3128: $3e $2b
	call SetRomBankA                               ; $312a: $cd $97 $07
	ld a, c                                          ; $312d: $79
	ld [$c0d4], a                                    ; $312e: $ea $d4 $c0
	call Call_000_3698                               ; $3131: $cd $98 $36
	call Call_000_36ac                               ; $3134: $cd $ac $36
	push hl                                          ; $3137: $e5
	inc hl                                           ; $3138: $23
	inc hl                                           ; $3139: $23
	call Call_000_36ce                               ; $313a: $cd $ce $36
	pop hl                                           ; $313d: $e1
	call Call_000_36bb                               ; $313e: $cd $bb $36
	inc hl                                           ; $3141: $23
	inc hl                                           ; $3142: $23
	inc hl                                           ; $3143: $23
	inc hl                                           ; $3144: $23
	call Call_000_36d7                               ; $3145: $cd $d7 $36
	jr jr_000_3186                                   ; $3148: $18 $3c

jr_000_314a:
	ld b, $00                                        ; $314a: $06 $00
	ld hl, $c0db                                     ; $314c: $21 $db $c0
	ld [hl], $01                                     ; $314f: $36 $01
	call Call_000_31d8                               ; $3151: $cd $d8 $31
	call Call_000_31ea                               ; $3154: $cd $ea $31
	ld c, $00                                        ; $3157: $0e $00

jr_000_3159:
	ld b, $00                                        ; $3159: $06 $00
	ld hl, $c155                                     ; $315b: $21 $55 $c1
	add hl, bc                                       ; $315e: $09
	ld a, [hl]                                       ; $315f: $7e
	call Call_000_3209                               ; $3160: $cd $09 $32
	ld b, $04                                        ; $3163: $06 $04

jr_000_3165:
	call Call_000_34b5                               ; $3165: $cd $b5 $34
	jr nc, jr_000_3173                               ; $3168: $30 $09

	call Call_000_321a                               ; $316a: $cd $1a $32
	ld hl, $c0de                                     ; $316d: $21 $de $c0
	call Call_000_365a                               ; $3170: $cd $5a $36

jr_000_3173:
	ld hl, $c0dc                                     ; $3173: $21 $dc $c0
	call Call_000_365a                               ; $3176: $cd $5a $36
	dec b                                            ; $3179: $05
	jr nz, jr_000_3165                               ; $317a: $20 $e9

	inc c                                            ; $317c: $0c
	ld a, [$c15b]                                    ; $317d: $fa $5b $c1
	srl a                                            ; $3180: $cb $3f
	cp c                                             ; $3182: $b9
	jr nz, jr_000_3159                               ; $3183: $20 $d4

	ret                                              ; $3185: $c9


jr_000_3186:
	ld a, $2b                                        ; $3186: $3e $2b
	call SetRomBankA                               ; $3188: $cd $97 $07
	ld b, $00                                        ; $318b: $06 $00
	ld a, $05                                        ; $318d: $3e $05
	ld [$c0db], a                                    ; $318f: $ea $db $c0
	call Call_000_31d8                               ; $3192: $cd $d8 $31
	ld a, [hl]                                       ; $3195: $7e
	swap a                                           ; $3196: $cb $37
	and $f0                                          ; $3198: $e6 $f0
	ld [$c0da], a                                    ; $319a: $ea $da $c0
	call Call_000_36e9                               ; $319d: $cd $e9 $36
	ld a, [$c15d]                                    ; $31a0: $fa $5d $c1
	jr z, jr_000_31a8                                ; $31a3: $28 $03

	ld a, [wMenuOptionSelected]                                    ; $31a5: $fa $5f $c1

jr_000_31a8:
	call Call_000_3209                               ; $31a8: $cd $09 $32
	call Call_000_31ea                               ; $31ab: $cd $ea $31
	ld c, $02                                        ; $31ae: $0e $02

jr_000_31b0:
	ld b, $02                                        ; $31b0: $06 $02

jr_000_31b2:
	call Call_000_34b5                               ; $31b2: $cd $b5 $34
	jr nc, jr_000_31c0                               ; $31b5: $30 $09

	call Call_000_321a                               ; $31b7: $cd $1a $32
	ld hl, $c0de                                     ; $31ba: $21 $de $c0
	call Call_000_365a                               ; $31bd: $cd $5a $36

jr_000_31c0:
	ld hl, $c0dc                                     ; $31c0: $21 $dc $c0
	call Call_000_365a                               ; $31c3: $cd $5a $36
	dec b                                            ; $31c6: $05
	jr nz, jr_000_31b2                               ; $31c7: $20 $e9

	call Call_000_36e9                               ; $31c9: $cd $e9 $36
	jr z, jr_000_31d4                                ; $31cc: $28 $06

	ld a, [$c160]                                    ; $31ce: $fa $60 $c1
	call Call_000_3209                               ; $31d1: $cd $09 $32

jr_000_31d4:
	dec c                                            ; $31d4: $0d
	jr nz, jr_000_31b0                               ; $31d5: $20 $d9

	ret                                              ; $31d7: $c9


Call_000_31d8:
	ld hl, $c0d0                                     ; $31d8: $21 $d0 $c0
	call SlowGetHLinHL                               ; $31db: $cd $6b $36
	ld a, [$c0d4]                                    ; $31de: $fa $d4 $c0
	ld c, a                                          ; $31e1: $4f
	sla a                                            ; $31e2: $cb $27
	add c                                            ; $31e4: $81
	ld c, a                                          ; $31e5: $4f
	add hl, bc                                       ; $31e6: $09
	jp Jump_000_36ce                                 ; $31e7: $c3 $ce $36


Call_000_31ea:
	ld hl, $c0d5                                     ; $31ea: $21 $d5 $c0
	call SlowGetHLinHL                               ; $31ed: $cd $6b $36
	ld a, [$c0d4]                                    ; $31f0: $fa $d4 $c0
	ld c, a                                          ; $31f3: $4f
	ld b, $00                                        ; $31f4: $06 $00
	add hl, bc                                       ; $31f6: $09
	ld a, [hl]                                       ; $31f7: $7e
	swap a                                           ; $31f8: $cb $37
	ld c, a                                          ; $31fa: $4f
	and $0f                                          ; $31fb: $e6 $0f
	ld b, a                                          ; $31fd: $47
	ld a, c                                          ; $31fe: $79
	and $f0                                          ; $31ff: $e6 $f0
	ld c, a                                          ; $3201: $4f
	ld hl, $da80                                     ; $3202: $21 $80 $da
	add hl, bc                                       ; $3205: $09
	jp Jump_000_36e0                                 ; $3206: $c3 $e0 $36


Call_000_3209:
	swap a                                           ; $3209: $cb $37
	ld h, a                                          ; $320b: $67
	and $f0                                          ; $320c: $e6 $f0
	ld [$c0dc], a                                    ; $320e: $ea $dc $c0
	ld a, h                                          ; $3211: $7c
	and $0f                                          ; $3212: $e6 $0f
	or $80                                           ; $3214: $f6 $80
	ld [$c0dd], a                                    ; $3216: $ea $dd $c0
	ret                                              ; $3219: $c9


Call_000_321a:
	push bc                                          ; $321a: $c5
	ld a, [$c0dc]                                    ; $321b: $fa $dc $c0
	ld e, a                                          ; $321e: $5f
	ld a, [$c0dd]                                    ; $321f: $fa $dd $c0
	ld d, a                                          ; $3222: $57
	ld a, [$c0de]                                    ; $3223: $fa $de $c0
	ld l, a                                          ; $3226: $6f
	ld a, [$c0df]                                    ; $3227: $fa $df $c0
	ld h, a                                          ; $322a: $67
	ld c, $10                                        ; $322b: $0e $10

jr_000_322d:
	di                                               ; $322d: $f3

; Wait until in hblank/vblank
:	ldh a, [rSTAT]                                   ; $322e: $f0 $41
	bit 1, a                                         ; $3230: $cb $4f
	jr nz, :-                               ; $3232: $20 $fa

	ld a, [hl+]                                      ; $3234: $2a
	ld [de], a                                       ; $3235: $12
	ei                                               ; $3236: $fb
	inc de                                           ; $3237: $13
	dec c                                            ; $3238: $0d
	jr nz, jr_000_322d                               ; $3239: $20 $f2

	pop bc                                           ; $323b: $c1
	ret                                              ; $323c: $c9


Jump_000_323d:
	ld a, $2b                                        ; $323d: $3e $2b
	call SetRomBankA                               ; $323f: $cd $97 $07
	ld a, $d8                                        ; $3242: $3e $d8
	add b                                            ; $3244: $80
	ld [$c0d8], a                                    ; $3245: $ea $d8 $c0
	add $28                                          ; $3248: $c6 $28
	ld b, a                                          ; $324a: $47
	ld a, $d8                                        ; $324b: $3e $d8
	add c                                            ; $324d: $81
	ld [$c0d9], a                                    ; $324e: $ea $d9 $c0
	ld d, a                                          ; $3251: $57
	add $20                                          ; $3252: $c6 $20
	ld c, a                                          ; $3254: $4f

jr_000_3255:
	ld a, [hl]                                       ; $3255: $7e
	swap a                                           ; $3256: $cb $37
	and $0f                                          ; $3258: $e6 $0f
	bit 3, a                                         ; $325a: $cb $5f
	call z, Call_000_351e                            ; $325c: $cc $1e $35
	ld a, [hl+]                                      ; $325f: $2a
	and $0f                                          ; $3260: $e6 $0f
	or $80                                           ; $3262: $f6 $80
	bit 3, a                                         ; $3264: $cb $5f
	call z, Call_000_351e                            ; $3266: $cc $1e $35
	dec e                                            ; $3269: $1d
	jr z, jr_000_3286                                ; $326a: $28 $1a

	ld a, [$c0d9]                                    ; $326c: $fa $d9 $c0
	add $10                                          ; $326f: $c6 $10
	ld [$c0d9], a                                    ; $3271: $ea $d9 $c0
	cp c                                             ; $3274: $b9
	jr nz, jr_000_3255                               ; $3275: $20 $de

	ld a, d                                          ; $3277: $7a
	ld [$c0d9], a                                    ; $3278: $ea $d9 $c0
	ld a, [$c0d8]                                    ; $327b: $fa $d8 $c0
	add $08                                          ; $327e: $c6 $08
	ld [$c0d8], a                                    ; $3280: $ea $d8 $c0
	cp b                                             ; $3283: $b8
	jr nz, jr_000_3255                               ; $3284: $20 $cf

jr_000_3286:
	ret                                              ; $3286: $c9


Call_000_3287:
	push bc                                          ; $3287: $c5
	ld c, $00                                        ; $3288: $0e $00

jr_000_328a:
	ld hl, $d546                                     ; $328a: $21 $46 $d5
	ld a, c                                          ; $328d: $79
	push bc                                          ; $328e: $c5
	ld bc, $c155                                     ; $328f: $01 $55 $c1
	add c                                            ; $3292: $81
	ld c, a                                          ; $3293: $4f
	ld a, [bc]                                       ; $3294: $0a
	pop bc                                           ; $3295: $c1
	srl a                                            ; $3296: $cb $3f
	jr c, jr_000_32bc                                ; $3298: $38 $22

	sla a                                            ; $329a: $cb $27
	sla a                                            ; $329c: $cb $27
	rst AddAOntoHL                                          ; $329e: $ef
	ld a, [de]                                       ; $329f: $1a
	inc de                                           ; $32a0: $13
	swap a                                           ; $32a1: $cb $37
	and $07                                          ; $32a3: $e6 $07
	call Call_000_3386                               ; $32a5: $cd $86 $33
	sla a                                            ; $32a8: $cb $27
	ld [hl+], a                                      ; $32aa: $22
	inc hl                                           ; $32ab: $23
	inc hl                                           ; $32ac: $23
	inc hl                                           ; $32ad: $23
	ld a, [de]                                       ; $32ae: $1a
	inc de                                           ; $32af: $13
	swap a                                           ; $32b0: $cb $37
	and $07                                          ; $32b2: $e6 $07
	call Call_000_3386                               ; $32b4: $cd $86 $33
	sla a                                            ; $32b7: $cb $27
	ld [hl], a                                       ; $32b9: $77
	jr jr_000_32d9                                   ; $32ba: $18 $1d

jr_000_32bc:
	inc a                                            ; $32bc: $3c
	sla a                                            ; $32bd: $cb $27
	sla a                                            ; $32bf: $cb $27
	rst AddAOntoHL                                          ; $32c1: $ef
	ld a, [de]                                       ; $32c2: $1a
	inc de                                           ; $32c3: $13
	and $07                                          ; $32c4: $e6 $07
	call Call_000_3386                               ; $32c6: $cd $86 $33
	sla a                                            ; $32c9: $cb $27
	ld [hl+], a                                      ; $32cb: $22
	inc hl                                           ; $32cc: $23
	inc hl                                           ; $32cd: $23
	inc hl                                           ; $32ce: $23
	ld a, [de]                                       ; $32cf: $1a
	inc de                                           ; $32d0: $13
	and $07                                          ; $32d1: $e6 $07
	call Call_000_3386                               ; $32d3: $cd $86 $33
	sla a                                            ; $32d6: $cb $27
	ld [hl], a                                       ; $32d8: $77

jr_000_32d9:
	inc c                                            ; $32d9: $0c
	ld a, [$c15b]                                    ; $32da: $fa $5b $c1
	srl a                                            ; $32dd: $cb $3f
	cp c                                             ; $32df: $b9
	jr nz, jr_000_328a                               ; $32e0: $20 $a8

	call Call_000_3698                               ; $32e2: $cd $98 $36
	xor a                                            ; $32e5: $af
	ld [wMenuOptionSelected], a                                    ; $32e6: $ea $5f $c1
	ld [$c160], a                                    ; $32e9: $ea $60 $c1
	ld c, a                                          ; $32ec: $4f
	ld a, $2b                                        ; $32ed: $3e $2b
	call SetRomBankA                               ; $32ef: $cd $97 $07
	call Call_000_36ce                               ; $32f2: $cd $ce $36
	ld a, $01                                        ; $32f5: $3e $01
	ld [$c0db], a                                    ; $32f7: $ea $db $c0
	ld hl, $c155                                     ; $32fa: $21 $55 $c1
	push de                                          ; $32fd: $d5
	ld de, wMenuOptionSelected                                     ; $32fe: $11 $5f $c1

jr_000_3301:
	call Call_000_36f2                               ; $3301: $cd $f2 $36
	jr c, jr_000_330b                                ; $3304: $38 $05

	ld a, [hl]                                       ; $3306: $7e
	inc a                                            ; $3307: $3c
	inc a                                            ; $3308: $3c
	ld [de], a                                       ; $3309: $12
	inc de                                           ; $330a: $13

jr_000_330b:
	inc hl                                           ; $330b: $23
	inc c                                            ; $330c: $0c
	ld a, [$c15b]                                    ; $330d: $fa $5b $c1
	srl a                                            ; $3310: $cb $3f
	cp c                                             ; $3312: $b9
	jr nz, jr_000_3301                               ; $3313: $20 $ec

	pop de                                           ; $3315: $d1

jr_000_3316:
	ld a, c                                          ; $3316: $79
	cp $05                                           ; $3317: $fe $05
	jr z, jr_000_3321                                ; $3319: $28 $06

	call Call_000_36f2                               ; $331b: $cd $f2 $36
	inc c                                            ; $331e: $0c
	jr jr_000_3316                                   ; $331f: $18 $f5

jr_000_3321:
	call Call_000_36e9                               ; $3321: $cd $e9 $36
	pop bc                                           ; $3324: $c1
	ret nz                                           ; $3325: $c0

	push bc                                          ; $3326: $c5
	ld a, [$c15d]                                    ; $3327: $fa $5d $c1
	ld c, a                                          ; $332a: $4f
	ld hl, $d5e3                                     ; $332b: $21 $e3 $d5
	ld a, [$c15a]                                    ; $332e: $fa $5a $c1
	sla a                                            ; $3331: $cb $27
	sla a                                            ; $3333: $cb $27
	sla a                                            ; $3335: $cb $27
	ld b, $e8                                        ; $3337: $06 $e8
	call Call_000_3377                               ; $3339: $cd $77 $33
	jr z, jr_000_3341                                ; $333c: $28 $03

	call Call_000_3361                               ; $333e: $cd $61 $33

jr_000_3341:
	inc de                                           ; $3341: $13
	ld a, $08                                        ; $3342: $3e $08
	call Call_000_3377                               ; $3344: $cd $77 $33
	jr z, jr_000_334c                                ; $3347: $28 $03

	call Call_000_3361                               ; $3349: $cd $61 $33

jr_000_334c:
	ld a, c                                          ; $334c: $79
	ld [$c15e], a                                    ; $334d: $ea $5e $c1
	dec hl                                           ; $3350: $2b
	ld a, [hl]                                       ; $3351: $7e
	or $01                                           ; $3352: $f6 $01
	ld [hl], a                                       ; $3354: $77
	pop bc                                           ; $3355: $c1
	ld a, $08                                        ; $3356: $3e $08
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3358: $cd $83 $07
	call $6412                                       ; $335b: $cd $12 $64
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $335e: $c3 $7b $07


Call_000_3361:
	ld a, b                                          ; $3361: $78
	ld [hl+], a                                      ; $3362: $22
	ld a, [$c154]                                    ; $3363: $fa $54 $c1
	add $e8                                          ; $3366: $c6 $e8
	ld [hl+], a                                      ; $3368: $22
	ld a, c                                          ; $3369: $79
	ld [hl+], a                                      ; $336a: $22
	inc c                                            ; $336b: $0c
	inc c                                            ; $336c: $0c
	ld a, [de]                                       ; $336d: $1a
	and $07                                          ; $336e: $e6 $07
	call Call_000_3386                               ; $3370: $cd $86 $33
	sla a                                            ; $3373: $cb $27
	ld [hl+], a                                      ; $3375: $22
	ret                                              ; $3376: $c9


Call_000_3377:
	add b                                            ; $3377: $80
	ld b, a                                          ; $3378: $47
	push bc                                          ; $3379: $c5
	call Call_000_34b5                               ; $337a: $cd $b5 $34
	rl b                                             ; $337d: $cb $10
	call Call_000_34b5                               ; $337f: $cd $b5 $34
	rla                                              ; $3382: $17
	or b                                             ; $3383: $b0
	pop bc                                           ; $3384: $c1
	ret                                              ; $3385: $c9


Call_000_3386:
	push bc                                          ; $3386: $c5
	push hl                                          ; $3387: $e5
	ld b, $00                                        ; $3388: $06 $00
	ld c, a                                          ; $338a: $4f
	ld hl, $3395                                     ; $338b: $21 $95 $33
	add hl, bc                                       ; $338e: $09
	add hl, bc                                       ; $338f: $09
	push hl                                          ; $3390: $e5
	ld a, [$c161]                                    ; $3391: $fa $61 $c1
	ret                                              ; $3394: $c9


	srl a                                            ; $3395: $cb $3f
	srl a                                            ; $3397: $cb $3f
	srl a                                            ; $3399: $cb $3f
	srl a                                            ; $339b: $cb $3f
	srl a                                            ; $339d: $cb $3f
	srl a                                            ; $339f: $cb $3f
	srl a                                            ; $33a1: $cb $3f
	srl a                                            ; $33a3: $cb $3f
	ld a, c                                          ; $33a5: $79
	pop hl                                           ; $33a6: $e1
	pop bc                                           ; $33a7: $c1
	ret nc                                           ; $33a8: $d0

	or $10                                           ; $33a9: $f6 $10
	ret                                              ; $33ab: $c9


Call_000_33ac:
	push hl                                          ; $33ac: $e5
	ld a, [hl+]                                      ; $33ad: $2a
	ld e, a                                          ; $33ae: $5f
	ld a, [hl+]                                      ; $33af: $2a
	ld d, a                                          ; $33b0: $57
	xor a                                            ; $33b1: $af
	cp e                                             ; $33b2: $bb
	jr nz, jr_000_33ba                               ; $33b3: $20 $05

	cp d                                             ; $33b5: $ba
	jr nz, jr_000_33ba                               ; $33b6: $20 $02

	pop hl                                           ; $33b8: $e1
	ret                                              ; $33b9: $c9


jr_000_33ba:
	ld de, $d5eb                                     ; $33ba: $11 $eb $d5
	call SlowGetHLinHL                               ; $33bd: $cd $6b $36
	ld a, $2b                                        ; $33c0: $3e $2b
	call SetRomBankA                               ; $33c2: $cd $97 $07
	ld a, [$c15e]                                    ; $33c5: $fa $5e $c1
	ld b, a                                          ; $33c8: $47
	ld c, $00                                        ; $33c9: $0e $00

jr_000_33cb:
	call Call_000_3694                               ; $33cb: $cd $94 $36
	call Call_000_3694                               ; $33ce: $cd $94 $36
	ld a, b                                          ; $33d1: $78
	ld [de], a                                       ; $33d2: $12
	inc de                                           ; $33d3: $13
	inc b                                            ; $33d4: $04
	inc b                                            ; $33d5: $04
	ld a, [hl+]                                      ; $33d6: $2a
	push bc                                          ; $33d7: $c5
	ld b, a                                          ; $33d8: $47
	srl a                                            ; $33d9: $cb $3f
	call Call_000_3386                               ; $33db: $cd $86 $33
	srl b                                            ; $33de: $cb $38
	rla                                              ; $33e0: $17
	pop bc                                           ; $33e1: $c1
	ld [de], a                                       ; $33e2: $12
	inc de                                           ; $33e3: $13
	inc c                                            ; $33e4: $0c
	and $01                                          ; $33e5: $e6 $01
	jr z, jr_000_33cb                                ; $33e7: $28 $e2

	push bc                                          ; $33e9: $c5
	call Call_000_3701                               ; $33ea: $cd $01 $37
	call $641e                                       ; $33ed: $cd $1e $64
	pop bc                                           ; $33f0: $c1
	pop hl                                           ; $33f1: $e1
	ld a, $02                                        ; $33f2: $3e $02
	call SetRomBankA                               ; $33f4: $cd $97 $07
	call SlowGetHLinHL                               ; $33f7: $cd $6b $36
	call Call_000_36e0                               ; $33fa: $cd $e0 $36
	ld a, [$c15e]                                    ; $33fd: $fa $5e $c1
	swap a                                           ; $3400: $cb $37
	ld l, a                                          ; $3402: $6f
	and $f0                                          ; $3403: $e6 $f0
	ld [$c0dc], a                                    ; $3405: $ea $dc $c0
	ld a, l                                          ; $3408: $7d
	and $0f                                          ; $3409: $e6 $0f
	or $80                                           ; $340b: $f6 $80
	ld [$c0dd], a                                    ; $340d: $ea $dd $c0
	sla c                                            ; $3410: $cb $21
	ld a, $2b                                        ; $3412: $3e $2b
	call SetRomBankA                               ; $3414: $cd $97 $07

jr_000_3417:
	call Call_000_321a                               ; $3417: $cd $1a $32
	ld hl, $c0dc                                     ; $341a: $21 $dc $c0
	call Call_000_365a                               ; $341d: $cd $5a $36
	ld hl, $c0de                                     ; $3420: $21 $de $c0
	call Call_000_365a                               ; $3423: $cd $5a $36
	dec c                                            ; $3426: $0d
	jr nz, jr_000_3417                               ; $3427: $20 $ee

	ret                                              ; $3429: $c9


	nop                                              ; $342a: $00
	ld bc, $0302                                     ; $342b: $01 $02 $03
	ld [bc], a                                       ; $342e: $02
	ld bc, $ff00                                     ; $342f: $01 $00 $ff

Call_000_3432:
	ld a, [wRomBank]                                    ; $3432: $fa $03 $c1
	push af                                          ; $3435: $f5
	ld a, [$c14d]                                    ; $3436: $fa $4d $c1
	and a                                            ; $3439: $a7
	jr nz, jr_000_3452                               ; $343a: $20 $16

	ld a, [$c162]                                    ; $343c: $fa $62 $c1
	and a                                            ; $343f: $a7
	jr z, jr_000_3463                                ; $3440: $28 $21

	ld hl, $342a                                     ; $3442: $21 $2a $34
	ld b, $00                                        ; $3445: $06 $00
	ld c, a                                          ; $3447: $4f
	inc a                                            ; $3448: $3c
	ld [$c162], a                                    ; $3449: $ea $62 $c1
	add hl, bc                                       ; $344c: $09
	ld a, [hl]                                       ; $344d: $7e
	cp $ff                                           ; $344e: $fe $ff
	jr z, jr_000_345f                                ; $3450: $28 $0d

jr_000_3452:
	ld b, a                                          ; $3452: $47
	push bc                                          ; $3453: $c5
	ld b, $17                                        ; $3454: $06 $17
	call Call_000_368b                               ; $3456: $cd $8b $36
	pop bc                                           ; $3459: $c1
	call Call_000_310e                               ; $345a: $cd $0e $31
	jr jr_000_3463                                   ; $345d: $18 $04

jr_000_345f:
	xor a                                            ; $345f: $af
	ld [$c162], a                                    ; $3460: $ea $62 $c1

jr_000_3463:
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3463: $c3 $7b $07


	ld bc, $0302                                     ; $3466: $01 $02 $03
	ld [bc], a                                       ; $3469: $02
	ld bc, $ff00                                     ; $346a: $01 $00 $ff

Call_000_346d:
	ld a, [wRomBank]                                    ; $346d: $fa $03 $c1
	push af                                          ; $3470: $f5
	ld a, [$c14e]                                    ; $3471: $fa $4e $c1
	and a                                            ; $3474: $a7
	jr nz, jr_000_34a1                               ; $3475: $20 $2a

	ld a, [$c164]                                    ; $3477: $fa $64 $c1
	and a                                            ; $347a: $a7
	jr nz, jr_000_3483                               ; $347b: $20 $06

	ld a, [$c163]                                    ; $347d: $fa $63 $c1
	and a                                            ; $3480: $a7
	jr z, jr_000_34b2                                ; $3481: $28 $2f

jr_000_3483:
	ld a, [$c173]                                    ; $3483: $fa $73 $c1
	inc a                                            ; $3486: $3c
	and $01                                          ; $3487: $e6 $01
	ld [$c173], a                                    ; $3489: $ea $73 $c1
	jr nz, jr_000_34b2                               ; $348c: $20 $24

	ld hl, $3466                                     ; $348e: $21 $66 $34
	ld a, [$c164]                                    ; $3491: $fa $64 $c1
	ld b, $00                                        ; $3494: $06 $00
	ld c, a                                          ; $3496: $4f
	add hl, bc                                       ; $3497: $09
	inc a                                            ; $3498: $3c
	ld [$c164], a                                    ; $3499: $ea $64 $c1
	ld a, [hl]                                       ; $349c: $7e
	cp $ff                                           ; $349d: $fe $ff
	jr z, jr_000_34ae                                ; $349f: $28 $0d

jr_000_34a1:
	ld c, a                                          ; $34a1: $4f
	push bc                                          ; $34a2: $c5
	ld b, $17                                        ; $34a3: $06 $17
	call Call_000_368b                               ; $34a5: $cd $8b $36
	pop bc                                           ; $34a8: $c1
	call Call_000_3128                               ; $34a9: $cd $28 $31
	jr jr_000_34b2                                   ; $34ac: $18 $04

jr_000_34ae:
	xor a                                            ; $34ae: $af
	ld [$c164], a                                    ; $34af: $ea $64 $c1

jr_000_34b2:
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $34b2: $c3 $7b $07


Call_000_34b5:
	push hl                                          ; $34b5: $e5
	ld hl, $c0db                                     ; $34b6: $21 $db $c0
	dec [hl]                                         ; $34b9: $35
	jr nz, jr_000_34ce                               ; $34ba: $20 $12

	ld [hl], $08                                     ; $34bc: $36 $08
	ld a, [$c0d0]                                    ; $34be: $fa $d0 $c0
	ld l, a                                          ; $34c1: $6f
	ld a, [$c0d1]                                    ; $34c2: $fa $d1 $c0
	ld h, a                                          ; $34c5: $67
	ld a, [hl]                                       ; $34c6: $7e
	ld [$c0da], a                                    ; $34c7: $ea $da $c0
	inc hl                                           ; $34ca: $23
	call Call_000_36ce                               ; $34cb: $cd $ce $36

jr_000_34ce:
	ld a, [$c0da]                                    ; $34ce: $fa $da $c0
	sla a                                            ; $34d1: $cb $27
	ld [$c0da], a                                    ; $34d3: $ea $da $c0
	pop hl                                           ; $34d6: $e1
	ret                                              ; $34d7: $c9


Call_000_34d8:
	ld a, [$c0d8]                                    ; $34d8: $fa $d8 $c0
	ld [de], a                                       ; $34db: $12
	inc de                                           ; $34dc: $13
	ld a, [$c0d9]                                    ; $34dd: $fa $d9 $c0
	ld [de], a                                       ; $34e0: $12
	inc de                                           ; $34e1: $13
	ld a, c                                          ; $34e2: $79
	ld [de], a                                       ; $34e3: $12
	inc de                                           ; $34e4: $13
	inc c                                            ; $34e5: $0c
	inc c                                            ; $34e6: $0c
	ret                                              ; $34e7: $c9


Call_000_34e8:
	ld a, b                                          ; $34e8: $78
	cp $08                                           ; $34e9: $fe $08
	ld a, [$c0d9]                                    ; $34eb: $fa $d9 $c0
	jr z, jr_000_34f4                                ; $34ee: $28 $04

	cp $18                                           ; $34f0: $fe $18
	jr z, jr_000_34fd                                ; $34f2: $28 $09

jr_000_34f4:
	cp $20                                           ; $34f4: $fe $20
	jr z, jr_000_34fd                                ; $34f6: $28 $05

	add b                                            ; $34f8: $80
	ld [$c0d9], a                                    ; $34f9: $ea $d9 $c0
	ret                                              ; $34fc: $c9


jr_000_34fd:
	ld a, $d8                                        ; $34fd: $3e $d8
	ld [$c0d9], a                                    ; $34ff: $ea $d9 $c0
	ld a, [$c0d8]                                    ; $3502: $fa $d8 $c0
	cp $20                                           ; $3505: $fe $20
	jr z, jr_000_350f                                ; $3507: $28 $06

	add $08                                          ; $3509: $c6 $08
	ld [$c0d8], a                                    ; $350b: $ea $d8 $c0
	ret                                              ; $350e: $c9


jr_000_350f:
	dec de                                           ; $350f: $1b
	ld a, [de]                                       ; $3510: $1a
	or $01                                           ; $3511: $f6 $01
	ld [de], a                                       ; $3513: $12
	ld a, c                                          ; $3514: $79
	ld [$c15d], a                                    ; $3515: $ea $5d $c1
	ld [$c15e], a                                    ; $3518: $ea $5e $c1
	ld a, $ff                                        ; $351b: $3e $ff
	ret                                              ; $351d: $c9


Call_000_351e:
	push af                                          ; $351e: $f5
	push bc                                          ; $351f: $c5
	push de                                          ; $3520: $d5
	push hl                                          ; $3521: $e5
	ld h, a                                          ; $3522: $67
	ld a, $08                                        ; $3523: $3e $08
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3525: $cd $83 $07
	ld a, h                                          ; $3528: $7c
	call $6375                                       ; $3529: $cd $75 $63
	call _SetRomBankToHighByteInStackAfterReturn                               ; $352c: $cd $ef $07
	pop hl                                           ; $352f: $e1
	pop de                                           ; $3530: $d1
	pop bc                                           ; $3531: $c1
	pop af                                           ; $3532: $f1
	ret                                              ; $3533: $c9


Call_000_3534:
	ld a, $2c                                        ; $3534: $3e $2c
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3536: $cd $83 $07
	ld a, [hl+]                                      ; $3539: $2a
	ld [$c161], a                                    ; $353a: $ea $61 $c1
	ld a, [wInitialA]                                    ; $353d: $fa $00 $c1
	cp $11                                           ; $3540: $fe $11
	jr z, jr_000_354e                                ; $3542: $28 $0a

	ld a, [hl+]                                      ; $3544: $2a
	cpl                                              ; $3545: $2f
	ldh [hDisp0_OBP0], a                                     ; $3546: $e0 $86
	ld a, [hl]                                       ; $3548: $7e
	cpl                                              ; $3549: $2f
	ldh [hDisp0_OBP1], a                                     ; $354a: $e0 $87
	jr jr_000_35c5                                   ; $354c: $18 $77

jr_000_354e:
	call SetWramBank2                               ; $354e: $cd $2a $08
	inc hl                                           ; $3551: $23
	inc hl                                           ; $3552: $23
	push hl                                          ; $3553: $e5
	ld a, [hl+]                                      ; $3554: $2a
	ld b, a                                          ; $3555: $47
	ld c, $04                                        ; $3556: $0e $04
	ld de, $d510                                     ; $3558: $11 $10 $d5

jr_000_355b:
	call Call_000_3694                               ; $355b: $cd $94 $36
	call Call_000_3694                               ; $355e: $cd $94 $36
	sla b                                            ; $3561: $cb $20
	ld a, $06                                        ; $3563: $3e $06
	rst AddAOntoHL                                          ; $3565: $ef
	sla b                                            ; $3566: $cb $20
	jr nc, jr_000_356d                               ; $3568: $30 $03

	ld a, $08                                        ; $356a: $3e $08
	rst AddAOntoHL                                          ; $356c: $ef

jr_000_356d:
	dec c                                            ; $356d: $0d
	jr nz, jr_000_355b                               ; $356e: $20 $eb

	ld a, [$c10e]                                    ; $3570: $fa $0e $c1
	or $04                                           ; $3573: $f6 $04
	ld [$c10e], a                                    ; $3575: $ea $0e $c1
	pop hl                                           ; $3578: $e1
	ld b, $08                                        ; $3579: $06 $08
	ld c, $06                                        ; $357b: $0e $06
	ld de, $d540                                     ; $357d: $11 $40 $d5
	ld a, [hl+]                                      ; $3580: $2a
	ld [$c0e0], a                                    ; $3581: $ea $e0 $c0
	inc hl                                           ; $3584: $23
	inc hl                                           ; $3585: $23
	xor a                                            ; $3586: $af
	ld [$c0e8], a                                    ; $3587: $ea $e8 $c0

jr_000_358a:
	ld a, [$c0e8]                                    ; $358a: $fa $e8 $c0
	srl a                                            ; $358d: $cb $3f
	or $80                                           ; $358f: $f6 $80
	ld [$c0e8], a                                    ; $3591: $ea $e8 $c0
	ld a, [$c0e0]                                    ; $3594: $fa $e0 $c0
	sla a                                            ; $3597: $cb $27
	ld [$c0e0], a                                    ; $3599: $ea $e0 $c0
	jr c, jr_000_35af                                ; $359c: $38 $11

	ld a, e                                          ; $359e: $7b
	add $06                                          ; $359f: $c6 $06
	ld e, a                                          ; $35a1: $5f
	ld a, [$c0e8]                                    ; $35a2: $fa $e8 $c0
	and $7f                                          ; $35a5: $e6 $7f
	ld [$c0e8], a                                    ; $35a7: $ea $e8 $c0
	dec b                                            ; $35aa: $05
	jr z, jr_000_35bc                                ; $35ab: $28 $0f

	jr jr_000_358a                                   ; $35ad: $18 $db

jr_000_35af:
	call Call_000_3694                               ; $35af: $cd $94 $36
	dec c                                            ; $35b2: $0d
	jr nz, jr_000_35af                               ; $35b3: $20 $fa

	ld c, $06                                        ; $35b5: $0e $06
	inc hl                                           ; $35b7: $23
	inc hl                                           ; $35b8: $23
	dec b                                            ; $35b9: $05
	jr nz, jr_000_358a                               ; $35ba: $20 $ce

jr_000_35bc:
	ld a, [$c0e8]                                    ; $35bc: $fa $e8 $c0
	ld [$c10f], a                                    ; $35bf: $ea $0f $c1
	call SetWramBank1                               ; $35c2: $cd $1c $08

jr_000_35c5:
	ld a, $01                                        ; $35c5: $3e $01
	ld [$c133], a                                    ; $35c7: $ea $33 $c1
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $35ca: $c3 $7b $07


; A -
; BC - tile data dest addr
; DE - src address containing tile data ctrl bytes src
Call_000_35cd:
	push hl                                          ; $35cd: $e5
	push af                                          ; $35ce: $f5

;
	ld hl, $c1de                                     ; $35cf: $21 $de $c1
	ld a, $f9                                        ; $35d2: $3e $f9
	ld [hl+], a                                      ; $35d4: $22

;
	ld a, [de]                                       ; $35d5: $1a
	inc de                                           ; $35d6: $13
	ld [hl+], a                                      ; $35d7: $22

	ld a, [de]                                       ; $35d8: $1a
	inc de                                           ; $35d9: $13
	ld [hl+], a                                      ; $35da: $22

	ld a, [de]                                       ; $35db: $1a
	inc de                                           ; $35dc: $13
	ld [hl+], a                                      ; $35dd: $22

;
	ld a, c                                          ; $35de: $79
	ld [hl+], a                                      ; $35df: $22
	ld a, b                                          ; $35e0: $78
	ld [hl+], a                                      ; $35e1: $22

;
	ld a, $ff                                        ; $35e2: $3e $ff
	ld [hl], a                                       ; $35e4: $77

;
	ld hl, $c1de                                     ; $35e5: $21 $de $c1
	pop af                                           ; $35e8: $f1
	and a                                            ; $35e9: $a7
	jr nz, .br_35f1                               ; $35ea: $20 $05

	call Call_000_0ab5                               ; $35ec: $cd $b5 $0a
	jr :+                                   ; $35ef: $18 $03

.br_35f1:
	call Call_000_0aab                               ; $35f1: $cd $ab $0a

:	pop hl                                           ; $35f4: $e1
	ret                                              ; $35f5: $c9


Call_000_35f6:
	xor a                                            ; $35f6: $af
	ld [$c134], a                                    ; $35f7: $ea $34 $c1
	call todo_Clears40hBytesAtWramBank0Pages2Plus                               ; $35fa: $cd $ef $2d
	call Call_000_3768                               ; $35fd: $cd $68 $37
	xor a                                            ; $3600: $af
	ld l, $00                                        ; $3601: $2e $00
	ld h, $c2                                        ; $3603: $26 $c2
	ld [hl], a                                       ; $3605: $77
	ld h, $c3                                        ; $3606: $26 $c3
	ld [hl], a                                       ; $3608: $77
	ld h, $c4                                        ; $3609: $26 $c4
	ld [hl], a                                       ; $360b: $77
	ld bc, $0500                                     ; $360c: $01 $00 $05
	ld hl, $8000                                     ; $360f: $21 $00 $80

jr_000_3612:
	di                                               ; $3612: $f3

; Wait until in hblank/vblank
:	ldh a, [rSTAT]                                   ; $3613: $f0 $41
	bit 1, a                                         ; $3615: $cb $4f
	jr nz, :-                               ; $3617: $20 $fa

	xor a                                            ; $3619: $af
	ld [hl+], a                                      ; $361a: $22
	ei                                               ; $361b: $fb
	dec bc                                           ; $361c: $0b
	ld a, b                                          ; $361d: $78
	or c                                             ; $361e: $b1
	jr nz, jr_000_3612                               ; $361f: $20 $f1

	ret                                              ; $3621: $c9


Jump_000_3622:
	ld l, $01                                        ; $3622: $2e $01
	ld h, $c2                                        ; $3624: $26 $c2
	ld [hl], a                                       ; $3626: $77
	ld h, $c3                                        ; $3627: $26 $c3
	ld [hl], a                                       ; $3629: $77
	ld h, $c4                                        ; $362a: $26 $c4
	ld [hl], a                                       ; $362c: $77
	xor a                                            ; $362d: $af
	ld [$c110], a                                    ; $362e: $ea $10 $c1
	rst FarCall                                          ; $3631: $f7
	add a                                            ; $3632: $87
	ld b, c                                          ; $3633: $41
	ld [bc], a                                       ; $3634: $02
	ld a, [wFrameCounter]                                    ; $3635: $fa $1f $c1
	ld [$d80a], a                                    ; $3638: $ea $0a $d8
	ld a, $01                                        ; $363b: $3e $01
	ld [$c110], a                                    ; $363d: $ea $10 $c1
	ld a, [wFrameCounter]                                    ; $3640: $fa $1f $c1

jr_000_3643:
	ld hl, wFrameCounter                                     ; $3643: $21 $1f $c1
	cp [hl]                                          ; $3646: $be
	jr z, jr_000_3643                                ; $3647: $28 $fa

	ret                                              ; $3649: $c9


	push de                                          ; $364a: $d5
	add hl, bc                                       ; $364b: $09
	ld e, l                                          ; $364c: $5d
	ld d, h                                          ; $364d: $54
	ld a, [de]                                       ; $364e: $1a
	ld l, a                                          ; $364f: $6f
	inc de                                           ; $3650: $13
	ld a, [de]                                       ; $3651: $1a
	ld h, a                                          ; $3652: $67
	pop de                                           ; $3653: $d1
	ret                                              ; $3654: $c9


Add2AOntoHL:
	push af                                                         ; $3655
	rst AddAOntoHL                                                  ; $3656
	pop af                                                          ; $3657
	rst AddAOntoHL                                                  ; $3658
	ret                                                             ; $3659


Call_000_365a:
	push de                                          ; $365a: $d5

; DE = HL, HL = [HL]+$10
	push hl                                          ; $365b: $e5
	ld e, [hl]                                       ; $365c: $5e
	inc hl                                           ; $365d: $23
	ld d, [hl]                                       ; $365e: $56
	ld hl, $0010                                     ; $365f: $21 $10 $00
	add hl, de                                       ; $3662: $19
	pop de                                           ; $3663: $d1

; Store HL in DE (orig HL)
	ld a, l                                          ; $3664: $7d
	ld [de], a                                       ; $3665: $12
	inc de                                           ; $3666: $13
	ld a, h                                          ; $3667: $7c
	ld [de], a                                       ; $3668: $12

	pop de                                           ; $3669: $d1
	ret                                              ; $366a: $c9


SlowGetHLinHL:
	push de                                                         ; $366b
	ld a, [hl+]                                                     ; $366c
	ld e, a                                                         ; $366d
	ld a, [hl]                                                      ; $366e
	ld h, a                                                         ; $366f
	ld l, e                                                         ; $3670
	pop de                                                          ; $3671
	ret                                                             ; $3672


Call_000_3673:
	ld hl, Data_02_5c89                                     ; $3673: $21 $89 $5c
	call Add2AOntoHL                               ; $3676: $cd $55 $36
	ld a, BANK(Data_02_5c89)                                        ; $3679: $3e $02
	call SetRomBankA                               ; $367b: $cd $97 $07
	jr SlowGetHLinHL                                   ; $367e: $18 $eb


Call_000_3680:
	ld a, [$c15c]                                    ; $3680: $fa $5c $c1
	ld b, a                                          ; $3683: $47
	sla a                                            ; $3684: $cb $27
	add b                                            ; $3686: $80
	ld b, $17                                        ; $3687: $06 $17
	add b                                            ; $3689: $80
	ld b, a                                          ; $368a: $47

Call_000_368b:
	ld a, [$c114]                                    ; $368b: $fa $14 $c1
	call Call_000_3673                               ; $368e: $cd $73 $36
	ld a, b                                          ; $3691: $78
	rst AddAOntoHL                                          ; $3692: $ef
	ret                                              ; $3693: $c9


Call_000_3694:
	ld a, [hl+]                                      ; $3694: $2a
	ld [de], a                                       ; $3695: $12
	inc de                                           ; $3696: $13
	ret                                              ; $3697: $c9


Call_000_3698:
	push bc                                          ; $3698: $c5
	ld hl, $45fe                                     ; $3699: $21 $fe $45
	ld a, [$c114]                                    ; $369c: $fa $14 $c1
	ld c, a                                          ; $369f: $4f
	ld b, $00                                        ; $36a0: $06 $00
	sla c                                            ; $36a2: $cb $21
	rl b                                             ; $36a4: $cb $10
	add hl, bc                                       ; $36a6: $09
	call SlowGetHLinHL                               ; $36a7: $cd $6b $36
	pop bc                                           ; $36aa: $c1
	ret                                              ; $36ab: $c9


Call_000_36ac:
	ld a, [$c117]                                    ; $36ac: $fa $17 $c1
	ld b, a                                          ; $36af: $47
	swap a                                           ; $36b0: $cb $37
	and $f0                                          ; $36b2: $e6 $f0
	sla b                                            ; $36b4: $cb $20
	sla b                                            ; $36b6: $cb $20
	add b                                            ; $36b8: $80
	rst AddAOntoHL                                          ; $36b9: $ef
	ret                                              ; $36ba: $c9


Call_000_36bb:
	ld bc, $000c                                     ; $36bb: $01 $0c $00
	add hl, bc                                       ; $36be: $09
	ret                                              ; $36bf: $c9


Call_000_36c0:
	call Call_000_3698                               ; $36c0: $cd $98 $36
	ld b, $14                                        ; $36c3: $06 $14
	ld a, [$c15c]                                    ; $36c5: $fa $5c $c1
	ld c, a                                          ; $36c8: $4f
	call BCequBtimesC                               ; $36c9: $cd $5f $12
	add hl, bc                                       ; $36cc: $09
	ret                                              ; $36cd: $c9


Call_000_36ce:
Jump_000_36ce:
	ld a, l                                          ; $36ce: $7d
	ld [$c0d0], a                                    ; $36cf: $ea $d0 $c0
	ld a, h                                          ; $36d2: $7c
	ld [$c0d1], a                                    ; $36d3: $ea $d1 $c0
	ret                                              ; $36d6: $c9


Call_000_36d7:
	ld a, l                                          ; $36d7: $7d
	ld [$c0d5], a                                    ; $36d8: $ea $d5 $c0
	ld a, h                                          ; $36db: $7c
	ld [$c0d6], a                                    ; $36dc: $ea $d6 $c0
	ret                                              ; $36df: $c9


Call_000_36e0:
Jump_000_36e0:
	ld a, l                                          ; $36e0: $7d
	ld [$c0de], a                                    ; $36e1: $ea $de $c0
	ld a, h                                          ; $36e4: $7c
	ld [$c0df], a                                    ; $36e5: $ea $df $c0
	ret                                              ; $36e8: $c9


Call_000_36e9:
	ld a, [wMenuOptionSelected]                                    ; $36e9: $fa $5f $c1
	ld b, a                                          ; $36ec: $47
	ld a, [$c160]                                    ; $36ed: $fa $60 $c1
	or b                                             ; $36f0: $b0
	ret                                              ; $36f1: $c9


Call_000_36f2:
	call Call_000_34b5                               ; $36f2: $cd $b5 $34
	call Call_000_34b5                               ; $36f5: $cd $b5 $34
	call Call_000_34b5                               ; $36f8: $cd $b5 $34
	push af                                          ; $36fb: $f5
	call Call_000_34b5                               ; $36fc: $cd $b5 $34
	pop af                                           ; $36ff: $f1
	ret                                              ; $3700: $c9


Call_000_3701:
	ld a, $08                                        ; $3701: $3e $08
	jp SetRomBankA                                 ; $3703: $c3 $97 $07


Call_000_3706:
Jump_000_3706:
	ld a, [$c14a]                                    ; $3706: $fa $4a $c1
	or b                                             ; $3709: $b0
	ld [$c14a], a                                    ; $370a: $ea $4a $c1
	ret                                              ; $370d: $c9


Call_000_370e:
Jump_000_370e:
	ld a, [$c14a]                                    ; $370e: $fa $4a $c1
	and b                                            ; $3711: $a0
	ld [$c14a], a                                    ; $3712: $ea $4a $c1
	ret                                              ; $3715: $c9


Call_000_3716:
	or $ff                                           ; $3716: $f6 $ff
	ld [$c149], a                                    ; $3718: $ea $49 $c1
	jp Jump_000_3881                                 ; $371b: $c3 $81 $38


Call_000_371e:
	ld a, $01                                        ; $371e: $3e $01
	ld [$c149], a                                    ; $3720: $ea $49 $c1
	ld a, [$c14a]                                    ; $3723: $fa $4a $c1
	and $08                                          ; $3726: $e6 $08
	call nz, Call_000_3799                           ; $3728: $c4 $99 $37
	call Call_000_3768                               ; $372b: $cd $68 $37
	call Call_000_1ca1                               ; $372e: $cd $a1 $1c
	jp Jump_000_2f38                                 ; $3731: $c3 $38 $2f


Call_000_3734:
	ld b, $08                                        ; $3734: $06 $08
	call Call_000_3706                               ; $3736: $cd $06 $37
	ld a, [$c134]                                    ; $3739: $fa $34 $c1
	and a                                            ; $373c: $a7
	jr z, jr_000_3744                                ; $373d: $28 $05

	call Call_000_371e                               ; $373f: $cd $1e $37
	jr jr_000_3751                                   ; $3742: $18 $0d

jr_000_3744:
	ld b, $01                                        ; $3744: $06 $01
	call Call_000_3706                               ; $3746: $cd $06 $37
	call Call_000_3876                               ; $3749: $cd $76 $38
	ld b, $fe                                        ; $374c: $06 $fe
	call Call_000_370e                               ; $374e: $cd $0e $37

jr_000_3751:
	ld a, [$c133]                                    ; $3751: $fa $33 $c1
	and a                                            ; $3754: $a7
	jr z, jr_000_375b                                ; $3755: $28 $04

	rst FarCall                                          ; $3757: $f7
	ld h, c                                          ; $3758: $61
	ld [hl], l                                       ; $3759: $75
	inc b                                            ; $375a: $04

jr_000_375b:
	ld a, [$c14a]                                    ; $375b: $fa $4a $c1
	and $80                                          ; $375e: $e6 $80
	ret nz                                           ; $3760: $c0

	call SetWindowedBGScrn1TallSprites0LCDC                               ; $3761: $cd $21 $39
	xor a                                            ; $3764: $af
	jp Jump_000_3622                                 ; $3765: $c3 $22 $36


Call_000_3768:
	call Call_000_377e                               ; $3768: $cd $7e $37
	call SetWindowlessBGScrn0LCDC                               ; $376b: $cd $18 $39
	ld a, $80                                        ; $376e: $3e $80
	jp Jump_000_3622                                 ; $3770: $c3 $22 $36


	call Call_000_377e                               ; $3773: $cd $7e $37
	call SetScrn0_8000hBGLCDC                               ; $3776: $cd $2a $39
	ld a, $80                                        ; $3779: $3e $80
	jp Jump_000_3622                                 ; $377b: $c3 $22 $36


Call_000_377e:
	ld b, $f7                                        ; $377e: $06 $f7
	call Call_000_370e                               ; $3780: $cd $0e $37
	xor a                                            ; $3783: $af
	ld [$c162], a                                    ; $3784: $ea $62 $c1
	ld [$c163], a                                    ; $3787: $ea $63 $c1
	ld [$c164], a                                    ; $378a: $ea $64 $c1
	ret                                              ; $378d: $c9


	or $ff                                           ; $378e: $f6 $ff
	ld [$c149], a                                    ; $3790: $ea $49 $c1
	ret                                              ; $3793: $c9


	xor a                                            ; $3794: $af
	ld [$c149], a                                    ; $3795: $ea $49 $c1
	ret                                              ; $3798: $c9


Call_000_3799:
	ld b, $02                                        ; $3799: $06 $02
	jp Jump_000_3706                                 ; $379b: $c3 $06 $37


Call_000_379e:
	ld b, $fd                                        ; $379e: $06 $fd
	jp Jump_000_370e                                 ; $37a0: $c3 $0e $37


Call_000_37a3:
	ld a, [$c14a]                                    ; $37a3: $fa $4a $c1
	and $08                                          ; $37a6: $e6 $08
	ret z                                            ; $37a8: $c8

	ld a, $01                                        ; $37a9: $3e $01
	ret                                              ; $37ab: $c9


Call_000_37ac:
	call Call_000_37a3                               ; $37ac: $cd $a3 $37
	and a                                            ; $37af: $a7
	jr z, jr_000_37bf                                ; $37b0: $28 $0d

	ld a, [$c14a]                                    ; $37b2: $fa $4a $c1
	and $80                                          ; $37b5: $e6 $80
	ret nz                                           ; $37b7: $c0

	call SetWindowedBGScrn1TallSprites0LCDC                               ; $37b8: $cd $21 $39
	xor a                                            ; $37bb: $af
	jp Jump_000_3622                                 ; $37bc: $c3 $22 $36


jr_000_37bf:
	call SetWindowlessBGScrn0LCDC                               ; $37bf: $cd $18 $39
	ld a, $80                                        ; $37c2: $3e $80
	jp Jump_000_3622                                 ; $37c4: $c3 $22 $36


Call_000_37c7:
	ld a, $08                                        ; $37c7: $3e $08
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $37c9: $cd $83 $07
	call Call_000_384c                               ; $37cc: $cd $4c $38
	ld a, [hl]                                       ; $37cf: $7e
	ld [$c150], a                                    ; $37d0: $ea $50 $c1
	call todo_GetTileDataCtrlBytesDestAddr                               ; $37d3: $cd $10 $38
	call DEequHL_HLplusEqu3                               ; $37d6: $cd $65 $38
	ld a, $01                                        ; $37d9: $3e $01
	call Call_000_35cd                               ; $37db: $cd $cd $35
	ld bc, $d4d3                                     ; $37de: $01 $d3 $d4
	call DEequHL_HLplusEqu3                               ; $37e1: $cd $65 $38
	ld a, $00                                        ; $37e4: $3e $00
	call Call_000_35cd                               ; $37e6: $cd $cd $35
	push hl                                          ; $37e9: $e5
	call Call_000_3828                               ; $37ea: $cd $28 $38
	call Call_000_386b                               ; $37ed: $cd $6b $38
	pop hl                                           ; $37f0: $e1
	call Call_000_3828                               ; $37f1: $cd $28 $38
	call SetIncrementalTileMap                               ; $37f4: $cd $0d $39
	call _SetRomBankToHighByteInStackAfterReturn                               ; $37f7: $cd $ef $07

	ld a, $02                                        ; $37fa: $3e $02
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $37fc: $cd $83 $07
	call todo_BCequ_c115w                               ; $37ff: $cd $1b $3a
	ld hl, $6fd8                                     ; $3802: $21 $d8 $6f
	add hl, bc                                       ; $3805: $09
	ld a, [hl]                                       ; $3806: $7e
	call _SetRomBankToHighByteInStackAfterReturn                               ; $3807: $cd $ef $07
	cp $ff                                           ; $380a: $fe $ff
	ret z                                            ; $380c: $c8

	jp Jump_000_1af7                                 ; $380d: $c3 $f7 $1a


todo_GetTileDataCtrlBytesDestAddr:
	ld bc, $8a40                                     ; $3810: $01 $40 $8a
	ld a, [$c14a]                                    ; $3813: $fa $4a $c1
	and $10                                          ; $3816: $e6 $10
	jr z, .br_381e                                ; $3818: $28 $04

	ld bc, $8cc0                                     ; $381a: $01 $c0 $8c
	ret                                              ; $381d: $c9

.br_381e:
	ld a, [$c14a]                                    ; $381e: $fa $4a $c1
	and $20                                          ; $3821: $e6 $20
	ret z                                            ; $3823: $c8

	ld bc, $9080                                     ; $3824: $01 $80 $90
	ret                                              ; $3827: $c9


Call_000_3828:
	ld hl, $9800                                     ; $3828: $21 $00 $98
	ld b, $0b                                        ; $382b: $06 $0b
	ld c, $a4                                        ; $382d: $0e $a4
	ld a, [$c14a]                                    ; $382f: $fa $4a $c1
	and $10                                          ; $3832: $e6 $10
	jr z, jr_000_383e                                ; $3834: $28 $08

	ld hl, $9900                                     ; $3836: $21 $00 $99
	ld b, $03                                        ; $3839: $06 $03
	ld c, $cc                                        ; $383b: $0e $cc
	ret                                              ; $383d: $c9

jr_000_383e:
	ld a, [$c14a]                                    ; $383e: $fa $4a $c1
	and $20                                          ; $3841: $e6 $20
	ret z                                            ; $3843: $c8

	ld hl, $9960                                     ; $3844: $21 $60 $99
	ld b, $06                                        ; $3847: $06 $06
	ld c, $08                                        ; $3849: $0e $08
	ret                                              ; $384b: $c9


Call_000_384c:
	ld a, BANK(Data_02_52e1)                                        ; $384c: $3e $02
	call SetRomBankA                               ; $384e: $cd $97 $07
	ld hl, Data_02_52e1                                     ; $3851: $21 $e1 $52
	call todo_BCequ_c115w                               ; $3854: $cd $1b $3a

; HL += 8BC
	sla c                                            ; $3857: $cb $21
	rl b                                             ; $3859: $cb $10
	sla c                                            ; $385b: $cb $21
	rl b                                             ; $385d: $cb $10
	sla c                                            ; $385f: $cb $21
	rl b                                             ; $3861: $cb $10
	add hl, bc                                       ; $3863: $09
	ret                                              ; $3864: $c9


DEequHL_HLplusEqu3:
	ld d, h                                                         ; $3865
	ld e, l                                                         ; $3866
	inc hl                                                          ; $3867
	inc hl                                                          ; $3868
	inc hl                                                          ; $3869
	ret                                                             ; $386a


Call_000_386b:
	ld a, $08                                        ; $386b: $3e $08
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $386d: $cd $83 $07
	call $645b                                       ; $3870: $cd $5b $64
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3873: $c3 $7b $07


Call_000_3876:
	ld a, $08                                        ; $3876: $3e $08
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3878: $cd $83 $07
	call $6491                                       ; $387b: $cd $91 $64
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $387e: $c3 $7b $07


Jump_000_3881:
	ld a, $08                                        ; $3881: $3e $08
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3883: $cd $83 $07
	call $64db                                       ; $3886: $cd $db $64
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3889: $c3 $7b $07


Func_388c::
	ld a, [wInitialA]                                    ; $388c: $fa $00 $c1
	cp $11                                           ; $388f: $fe $11
	jr z, jr_000_389d                                ; $3891: $28 $0a

	ld a, $e4                                        ; $3893: $3e $e4
	ldh [hDisp0_BGP], a                                     ; $3895: $e0 $85
	ld a, $01                                        ; $3897: $3e $01
	ld [$c133], a                                    ; $3899: $ea $33 $c1
	ret                                              ; $389c: $c9


jr_000_389d:
	ld a, [wRomBank]                                    ; $389d: $fa $03 $c1
	push af                                          ; $38a0: $f5
	call Call_000_384c                               ; $38a1: $cd $4c $38
	ld a, $06                                        ; $38a4: $3e $06
	rst AddAOntoHL                                          ; $38a6: $ef
	call SlowGetHLinHL                               ; $38a7: $cd $6b $36
	ld a, $2d                                        ; $38aa: $3e $2d
	call SetRomBankA                               ; $38ac: $cd $97 $07
	call SetWramBank2                               ; $38af: $cd $2a $08
	ld b, $08                                        ; $38b2: $06 $08
	ld c, $08                                        ; $38b4: $0e $08
	ld de, $d500                                     ; $38b6: $11 $00 $d5
	dec hl                                           ; $38b9: $2b
	ld a, [hl+]                                      ; $38ba: $2a
	ld [$c0e0], a                                    ; $38bb: $ea $e0 $c0
	xor a                                            ; $38be: $af
	ld [$c0e8], a                                    ; $38bf: $ea $e8 $c0

jr_000_38c2:
	ld a, [$c0e8]                                    ; $38c2: $fa $e8 $c0
	srl a                                            ; $38c5: $cb $3f
	or $80                                           ; $38c7: $f6 $80
	ld [$c0e8], a                                    ; $38c9: $ea $e8 $c0
	ld a, [$c0e0]                                    ; $38cc: $fa $e0 $c0
	sla a                                            ; $38cf: $cb $27
	ld [$c0e0], a                                    ; $38d1: $ea $e0 $c0
	jr c, jr_000_38e7                                ; $38d4: $38 $11

	ld a, e                                          ; $38d6: $7b
	add $08                                          ; $38d7: $c6 $08
	ld e, a                                          ; $38d9: $5f
	ld a, [$c0e8]                                    ; $38da: $fa $e8 $c0
	and $7f                                          ; $38dd: $e6 $7f
	ld [$c0e8], a                                    ; $38df: $ea $e8 $c0
	dec b                                            ; $38e2: $05
	jr z, jr_000_38f2                                ; $38e3: $28 $0d

	jr jr_000_38c2                                   ; $38e5: $18 $db

jr_000_38e7:
	ld a, [hl+]                                      ; $38e7: $2a
	ld [de], a                                       ; $38e8: $12
	inc de                                           ; $38e9: $13
	dec c                                            ; $38ea: $0d
	jr nz, jr_000_38e7                               ; $38eb: $20 $fa

	ld c, $08                                        ; $38ed: $0e $08
	dec b                                            ; $38ef: $05
	jr nz, jr_000_38c2                               ; $38f0: $20 $d0

jr_000_38f2:
	ld a, [$c0e8]                                    ; $38f2: $fa $e8 $c0
	ld [$c10e], a                                    ; $38f5: $ea $0e $c1
	ld [$a3ae], a                                    ; $38f8: $ea $ae $a3
	call SetWramBank1                               ; $38fb: $cd $1c $08
	ld a, $01                                        ; $38fe: $3e $01
	ld [$c133], a                                    ; $3900: $ea $33 $c1
	xor a                                            ; $3903: $af
	ld bc, $4217                                     ; $3904: $01 $17 $42
	call Call_000_1926                               ; $3907: $cd $26 $19
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $390a: $c3 $7b $07


; B - num rows
; C - starting tile
; HL - starting address
SetIncrementalTileMap:
	ld a, BANK(_SetIncrementalTileMap)                              ; $390d
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn         ; $390f
	call _SetIncrementalTileMap                                     ; $3912
	jp SetRomBankToHighByteInStackAfterReturn                       ; $3915


SetWindowlessBGScrn0LCDC:
	ldh a, [hDisp0_LCDC]                                            ; $3918
	and $ff-(LCDCF_WINON|LCDCF_BG8000|LCDCF_BG9C00)                 ; $391a
	or LCDCF_BGON                                                   ; $391c
	ldh [hDisp0_LCDC], a                                            ; $391e
	ret                                                             ; $3920


SetWindowedBGScrn1TallSprites0LCDC:
	ldh a, [hDisp0_LCDC]                                            ; $3921
	and $ff-(LCDCF_WINON|LCDCF_BG8000)                              ; $3923
	or LCDCF_BG9C00|LCDCF_OBJ16|LCDCF_OBJON|LCDCF_BGON              ; $3925
	ldh [hDisp0_LCDC], a                                            ; $3927
	ret                                                             ; $3929


SetScrn0_8000hBGLCDC:
	ldh a, [hDisp0_LCDC]                                            ; $392a
	and $ff-(LCDCF_BG8000|LCDCF_BG9C00)                             ; $392c
	or LCDCF_BG8000|LCDCF_BGON                                      ; $392e
	ldh [hDisp0_LCDC], a                                            ; $3930
	ret                                                             ; $3932


;
	ld a, $08                                        ; $3933: $3e $08
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3935: $cd $83 $07
	call $6532                                       ; $3938: $cd $32 $65
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $393b: $c3 $7b $07


	ld a, $01                                        ; $393e: $3e $01
	ldh [rVBK], a                                    ; $3940: $e0 $4f

jr_000_3942:
	push bc                                          ; $3942: $c5
	push de                                          ; $3943: $d5

jr_000_3944:
	di                                               ; $3944: $f3

; Wait until in hblank/vblank
:	ldh a, [rSTAT]                                   ; $3945: $f0 $41
	bit 1, a                                         ; $3947: $cb $4f
	jr nz, :-                               ; $3949: $20 $fa

	ld a, [hl]                                       ; $394b: $7e
	swap a                                           ; $394c: $cb $37
	and $0f                                          ; $394e: $e6 $0f
	ld [de], a                                       ; $3950: $12
	ei                                               ; $3951: $fb
	inc de                                           ; $3952: $13
	dec b                                            ; $3953: $05
	di                                               ; $3954: $f3

; Wait until in hblank/vblank
:	ldh a, [rSTAT]                                   ; $3955: $f0 $41
	bit 1, a                                         ; $3957: $cb $4f
	jr nz, :-                               ; $3959: $20 $fa

	ld a, [hl]                                       ; $395b: $7e
	and $0f                                          ; $395c: $e6 $0f
	ld [de], a                                       ; $395e: $12
	ei                                               ; $395f: $fb
	inc de                                           ; $3960: $13
	inc hl                                           ; $3961: $23
	dec b                                            ; $3962: $05
	jr nz, jr_000_3944                               ; $3963: $20 $df

	pop de                                           ; $3965: $d1
	pop bc                                           ; $3966: $c1
	ld a, $20                                        ; $3967: $3e $20
	call Call_000_1327                               ; $3969: $cd $27 $13
	dec c                                            ; $396c: $0d
	jr nz, jr_000_3942                               ; $396d: $20 $d3

	ld a, $00                                        ; $396f: $3e $00
	ldh [rVBK], a                                    ; $3971: $e0 $4f
	ret                                              ; $3973: $c9


Func_3974::
	ld a, [$c14a]                                    ; $3974: $fa $4a $c1
	and $08                                          ; $3977: $e6 $08
	jp z, Jump_000_397f                              ; $3979: $ca $7f $39

	jp Jump_000_39ca                                 ; $397c: $c3 $ca $39


Jump_000_397f:
	xor a                                            ; $397f: $af
	ld [$c110], a                                    ; $3980: $ea $10 $c1
	ldh [hDisp0_SCX], a                                     ; $3983: $e0 $84
	ldh [hDisp0_SCY], a                                     ; $3985: $e0 $83
	call Call_000_3a24                               ; $3987: $cd $24 $3a
	ld b, $cf                                        ; $398a: $06 $cf
	call Call_000_370e                               ; $398c: $cd $0e $37
	call Call_000_37c7                               ; $398f: $cd $c7 $37
	call SetWindowlessBGScrn0LCDC                               ; $3992: $cd $18 $39
	ld a, $01                                        ; $3995: $3e $01
	ld [$c110], a                                    ; $3997: $ea $10 $c1
	ret                                              ; $399a: $c9


	ld b, $10                                        ; $399b: $06 $10
	call Call_000_3706                               ; $399d: $cd $06 $37
	call Call_000_37c7                               ; $39a0: $cd $c7 $37
	call SetScrn0_8000hBGLCDC                               ; $39a3: $cd $2a $39
	ldh [hDisp0_LCDC], a                                     ; $39a6: $e0 $82
	ld b, $ef                                        ; $39a8: $06 $ef
	jp Jump_000_370e                                 ; $39aa: $c3 $0e $37


	ld b, $20                                        ; $39ad: $06 $20
	call Call_000_3706                               ; $39af: $cd $06 $37
	call Call_000_37c7                               ; $39b2: $cd $c7 $37
	call SetScrn0_8000hBGLCDC                               ; $39b5: $cd $2a $39
	ldh [hDisp0_LCDC], a                                     ; $39b8: $e0 $82
	ld b, $df                                        ; $39ba: $06 $df
	jp Jump_000_370e                                 ; $39bc: $c3 $0e $37


	call SetWramBank2                               ; $39bf: $cd $2a $08
	ld a, [$d000]                                    ; $39c2: $fa $00 $d0
	call SetWramBank1                               ; $39c5: $cd $1c $08
	and a                                            ; $39c8: $a7
	ret                                              ; $39c9: $c9


Jump_000_39ca:
	xor a                                            ; $39ca: $af
	ld [$c110], a                                    ; $39cb: $ea $10 $c1
	ldh [hDisp0_SCX], a                                     ; $39ce: $e0 $84
	ldh [hDisp0_SCY], a                                     ; $39d0: $e0 $83
	ld a, [$c115]                                    ; $39d2: $fa $15 $c1
	ld c, a                                          ; $39d5: $4f
	ld a, [$c116]                                    ; $39d6: $fa $16 $c1
	ld b, a                                          ; $39d9: $47
	ld de, $00d5                                     ; $39da: $11 $d5 $00
	call wCpBCtoDE                                       ; $39dd: $cd $8c $ce
	jr c, jr_000_39e7                                ; $39e0: $38 $05

	ld a, $01                                        ; $39e2: $3e $01
	ld [$c134], a                                    ; $39e4: $ea $34 $c1

jr_000_39e7:
	call Call_000_3a24                               ; $39e7: $cd $24 $3a
	ld b, $cf                                        ; $39ea: $06 $cf
	call Call_000_370e                               ; $39ec: $cd $0e $37
	ld b, $01                                        ; $39ef: $06 $01
	call Call_000_3706                               ; $39f1: $cd $06 $37
	call Call_000_37c7                               ; $39f4: $cd $c7 $37
	call Call_000_3876                               ; $39f7: $cd $76 $38
	ld b, $fe                                        ; $39fa: $06 $fe
	call Call_000_370e                               ; $39fc: $cd $0e $37
	ld h, $c4                                        ; $39ff: $26 $c4
	ld l, $00                                        ; $3a01: $2e $00
	ld a, [hl]                                       ; $3a03: $7e
	cp $57                                           ; $3a04: $fe $57
	jp nz, SetWindowlessBGScrn0LCDC                             ; $3a06: $c2 $18 $39

	call SetWindowedBGScrn1TallSprites0LCDC                               ; $3a09: $cd $21 $39
	ld a, $01                                        ; $3a0c: $3e $01
	ld [$c110], a                                    ; $3a0e: $ea $10 $c1
	ret                                              ; $3a11: $c9


Call_000_3a12:
	ld a, c                                          ; $3a12: $79
	ld [$c115], a                                    ; $3a13: $ea $15 $c1
	ld a, b                                          ; $3a16: $78
	ld [$c116], a                                    ; $3a17: $ea $16 $c1
	ret                                              ; $3a1a: $c9


todo_BCequ_c115w:
	ld a, [$c115]                                    ; $3a1b: $fa $15 $c1
	ld c, a                                          ; $3a1e: $4f
	ld a, [$c116]                                    ; $3a1f: $fa $16 $c1
	ld b, a                                          ; $3a22: $47
	ret                                              ; $3a23: $c9


Call_000_3a24:
	ld a, [$c186]                                    ; $3a24: $fa $86 $c1
	cp $01                                           ; $3a27: $fe $01
	ret z                                            ; $3a29: $c8

	cp $0b                                           ; $3a2a: $fe $0b
	call nz, Call_000_3716                           ; $3a2c: $c4 $16 $37
	ld a, [$c186]                                    ; $3a2f: $fa $86 $c1
	cp $00                                           ; $3a32: $fe $00
	jr z, jr_000_3a5a                                ; $3a34: $28 $24

	cp $05                                           ; $3a36: $fe $05
	jr z, jr_000_3a71                                ; $3a38: $28 $37

	cp $06                                           ; $3a3a: $fe $06
	jr z, jr_000_3a71                                ; $3a3c: $28 $33

	cp $07                                           ; $3a3e: $fe $07
	ret z                                            ; $3a40: $c8

	cp $09                                           ; $3a41: $fe $09
	jr z, jr_000_3a71                                ; $3a43: $28 $2c

	ld a, [$c115]                                    ; $3a45: $fa $15 $c1
	ld c, a                                          ; $3a48: $4f
	ld a, [$c116]                                    ; $3a49: $fa $16 $c1
	ld b, a                                          ; $3a4c: $47
	ld de, $00d5                                     ; $3a4d: $11 $d5 $00
	call wCpBCtoDE                                       ; $3a50: $cd $8c $ce
	ret c                                            ; $3a53: $d8

	ld a, $01                                        ; $3a54: $3e $01
	ld [$c186], a                                    ; $3a56: $ea $86 $c1
	ret                                              ; $3a59: $c9


jr_000_3a5a:
	call todo_Clears40hBytesAtWramBank0Pages2Plus                               ; $3a5a: $cd $ef $2d
	ld a, $01                                        ; $3a5d: $3e $01
	rst FarCall                                          ; $3a5f: $f7
	sbc b                                            ; $3a60: $98
	ld b, [hl]                                       ; $3a61: $46
	inc bc                                           ; $3a62: $03
	xor a                                            ; $3a63: $af
	ld [$c110], a                                    ; $3a64: $ea $10 $c1
	rst FarCall                                          ; $3a67: $f7
	add a                                            ; $3a68: $87
	ld b, c                                          ; $3a69: $41
	ld [bc], a                                       ; $3a6a: $02
	ld a, $01                                        ; $3a6b: $3e $01
	ld [$c110], a                                    ; $3a6d: $ea $10 $c1
	ret                                              ; $3a70: $c9


jr_000_3a71:
	ld a, $01                                        ; $3a71: $3e $01
	rst FarCall                                          ; $3a73: $f7
	xor d                                            ; $3a74: $aa
	ld b, [hl]                                       ; $3a75: $46
	inc bc                                           ; $3a76: $03
	ret                                              ; $3a77: $c9


	rst FarCall                                          ; $3a78: $f7
	ld d, b                                          ; $3a79: $50
	ld e, a                                          ; $3a7a: $5f
	db $01, $c9                                          ; $3a7b: $01 $c9


Func_3a7d::
	rst FarCall                                     ; $3a7d: $f7
	AddrBank Call_00c_4100
	ld a, [$d203]                                    ; $3a81: $fa $03 $d2
	cp $04                                           ; $3a84: $fe $04
	jr z, .brLoop_3a90                                ; $3a86: $28 $08

	ld d, $ff                                        ; $3a88: $16 $ff
	call Call_000_1a7d                               ; $3a8a: $cd $7d $1a
	call todo_Clears40hBytesAtWramBank0Pages2Plus                               ; $3a8d: $cd $ef $2d

.brLoop_3a90:
	xor a                                            ; $3a90: $af
	ld [$c110], a                                    ; $3a91: $ea $10 $c1
	call Call_000_3aba                               ; $3a94: $cd $ba $3a
	call Call_000_1ca1                               ; $3a97: $cd $a1 $1c

;
:	ld hl, wFrameCounter                                     ; $3a9a: $21 $1f $c1
	ld a, [$d80a]                                    ; $3a9d: $fa $0a $d8
	cp [hl]                                          ; $3aa0: $be
	jr z, :-                                ; $3aa1: $28 $f7

	ld a, [wPastTitleScreen]                                    ; $3aa3: $fa $41 $c1
	and a                                            ; $3aa6: $a7
	jr nz, .brLoop_3a90                               ; $3aa7: $20 $e7

; the call only does something for GBC/GBA
	xor a                                            ; $3aa9: $af
	ld bc, $4217                                     ; $3aaa: $01 $17 $42
	call Call_000_1926                               ; $3aad: $cd $26 $19
	ld a, [wMenuOptionSelected]                                    ; $3ab0: $fa $5f $c1
	ret                                              ; $3ab3: $c9


;
	ld a, [$c189]                                    ; $3ab4: $fa $89 $c1
	ld [wGameState], a                                    ; $3ab7: $ea $42 $c1

Call_000_3aba:
	ld a, [wPastTitleScreen]                                    ; $3aba: $fa $41 $c1
	call wJumpTable                                       ; $3abd: $cd $80 $cf
	dw Func_3ac4
	dw Func_3af8
	

Func_3ac4:
	ld a, [$c186]                                    ; $3ac4: $fa $86 $c1
	cp $00                                           ; $3ac7: $fe $00
	jr nz, .br_3ad3                               ; $3ac9: $20 $08

	ld a, $03                                        ; $3acb: $3e $03
	rst FarCall                                          ; $3acd: $f7
	AddrBank Func_03_4698
	jr :+                                   ; $3ad1: $18 $05

.br_3ad3:
	ld a, $03                                        ; $3ad3: $3e $03
	ld [$c186], a                                    ; $3ad5: $ea $86 $c1

:	ld a, [wPastTitleScreen]                                    ; $3ad8: $fa $41 $c1
	inc a                                            ; $3adb: $3c
	ld [wPastTitleScreen], a                                    ; $3adc: $ea $41 $c1
	ld a, $ff                                        ; $3adf: $3e $ff
	ld [$c149], a                                    ; $3ae1: $ea $49 $c1
	ld a, $03                                        ; $3ae4: $3e $03
	ld [$d7f9], a                                    ; $3ae6: $ea $f9 $d7
	ld a, $00                                        ; $3ae9: $3e $00
	ld [$d7fa], a                                    ; $3aeb: $ea $fa $d7
	ld a, $03                                        ; $3aee: $3e $03
	rst FarCall                                          ; $3af0: $f7
	AddrBank Jump_003_41b5
	call Call_000_1bce                               ; $3af4: $cd $ce $1b
	ret                                              ; $3af7: $c9


Func_3af8:
	ld a, $03                                        ; $3af8: $3e $03
	ld [$d7f9], a                                    ; $3afa: $ea $f9 $d7
	ld a, $00                                        ; $3afd: $3e $00
	ld [$d7fa], a                                    ; $3aff: $ea $fa $d7
	call Call_000_1bce                               ; $3b02: $cd $ce $1b
	ld a, [wGameState]                                    ; $3b05: $fa $42 $c1
	call wJumpTable                                       ; $3b08: $cd $80 $cf
	dw $3b43
	dw $3b48
	dw $3b4d
	dw $3b52
	dw $3b57
	dw $3b5c
	dw Func_3b61
	dw $3b66
	dw $3b6b
	dw $3b70
	dw $3b75
	dw $3b7f
	dw $3b84


;
	ld a, $03                                        ; $3b25: $3e $03
	ld [$d819], a                                    ; $3b27: $ea $19 $d8
	ld [$d81a], a                                    ; $3b2a: $ea $1a $d8
	ld [$d81b], a                                    ; $3b2d: $ea $1b $d8
	ld [$d7fb], a                                    ; $3b30: $ea $fb $d7
	ld a, $01                                        ; $3b33: $3e $01
	ld [$d811], a                                    ; $3b35: $ea $11 $d8
	ld a, $03                                        ; $3b38: $3e $03
	ld [$d7f9], a                                    ; $3b3a: $ea $f9 $d7
	ld a, $00                                        ; $3b3d: $3e $00
	ld [$d7fa], a                                    ; $3b3f: $ea $fa $d7
	ret                                              ; $3b42: $c9


	rst FarCall                                          ; $3b43: $f7
	rrca                                             ; $3b44: $0f
	ld d, b                                          ; $3b45: $50
	dec b                                            ; $3b46: $05
	ret                                              ; $3b47: $c9


	rst FarCall                                          ; $3b48: $f7
	ld c, [hl]                                       ; $3b49: $4e
	ld d, b                                          ; $3b4a: $50
	dec b                                            ; $3b4b: $05
	ret                                              ; $3b4c: $c9


	rst FarCall                                          ; $3b4d: $f7
	inc de                                           ; $3b4e: $13
	ld d, c                                          ; $3b4f: $51
	dec b                                            ; $3b50: $05
	ret                                              ; $3b51: $c9


	rst FarCall                                          ; $3b52: $f7
	cp b                                             ; $3b53: $b8
	ld d, c                                          ; $3b54: $51
	dec b                                            ; $3b55: $05
	ret                                              ; $3b56: $c9


	rst FarCall                                          ; $3b57: $f7
	ld [$0551], a                                    ; $3b58: $ea $51 $05
	ret                                              ; $3b5b: $c9


	rst FarCall                                          ; $3b5c: $f7
	jp nc, $055b                                     ; $3b5d: $d2 $5b $05

	ret                                              ; $3b60: $c9


Func_3b61:
	rst FarCall                                          ; $3b61: $f7
	AddrBank Func_05_5bde
	ret                                              ; $3b65: $c9


;
	rst FarCall                                          ; $3b66: $f7
	add sp, $5b                                      ; $3b67: $e8 $5b
	dec b                                            ; $3b69: $05
	ret                                              ; $3b6a: $c9


	rst FarCall                                          ; $3b6b: $f7
	add hl, hl                                       ; $3b6c: $29
	ld d, d                                          ; $3b6d: $52
	dec b                                            ; $3b6e: $05
	ret                                              ; $3b6f: $c9


	rst FarCall                                          ; $3b70: $f7
	ld d, d                                          ; $3b71: $52
	ld d, d                                          ; $3b72: $52
	dec b                                            ; $3b73: $05
	ret                                              ; $3b74: $c9


	rst FarCall                                          ; $3b75: $f7
	xor h                                            ; $3b76: $ac
	ld h, l                                          ; $3b77: $65
	dec b                                            ; $3b78: $05
	ret                                              ; $3b79: $c9


	rst FarCall                                          ; $3b7a: $f7
	ld a, d                                          ; $3b7b: $7a
	ld d, d                                          ; $3b7c: $52
	dec b                                            ; $3b7d: $05
	ret                                              ; $3b7e: $c9


	rst FarCall                                          ; $3b7f: $f7
	ret                                              ; $3b80: $c9


	ld h, [hl]                                       ; $3b81: $66
	dec b                                            ; $3b82: $05
	ret                                              ; $3b83: $c9


	rst FarCall                                          ; $3b84: $f7
	db $10                                           ; $3b85: $10
	ld h, l                                          ; $3b86: $65
	dec b                                            ; $3b87: $05
	ret                                              ; $3b88: $c9


	push af                                          ; $3b89: $f5
	push bc                                          ; $3b8a: $c5
	push de                                          ; $3b8b: $d5
	push hl                                          ; $3b8c: $e5
	ld a, [$a224]                                    ; $3b8d: $fa $24 $a2
	ld [$d081], a                                    ; $3b90: $ea $81 $d0
	ld a, [$a226]                                    ; $3b93: $fa $26 $a2
	ld [$d082], a                                    ; $3b96: $ea $82 $d0
	ld a, [$a228]                                    ; $3b99: $fa $28 $a2
	ld [$d083], a                                    ; $3b9c: $ea $83 $d0
	rst FarCall                                          ; $3b9f: $f7
	rst SubAFromHL                                          ; $3ba0: $d7
	ld b, a                                          ; $3ba1: $47
	dec b                                            ; $3ba2: $05
	pop hl                                           ; $3ba3: $e1
	pop de                                           ; $3ba4: $d1
	pop bc                                           ; $3ba5: $c1
	pop af                                           ; $3ba6: $f1
	ret                                              ; $3ba7: $c9


Func_3ba8::
	xor a                                            ; $3ba8: $af
	ld [$c110], a                                    ; $3ba9: $ea $10 $c1
	rst FarCall                                          ; $3bac: $f7
	AddrBank Func_08_5453
	call Call_000_1ca1                                   ; $3bb0: $cd $a1 $1c
	ret                                              ; $3bb3: $c9


;
	ld a, [$c169]                                    ; $3bb4: $fa $69 $c1
	ld bc, $00d5                                     ; $3bb7: $01 $d5 $00
	call Call_000_132c                               ; $3bba: $cd $2c $13
	call Call_000_3a12                               ; $3bbd: $cd $12 $3a
	jp Jump_000_397f                                 ; $3bc0: $c3 $7f $39


Jump_000_3bc3:
	rst FarCall                                          ; $3bc3: $f7
	add d                                            ; $3bc4: $82
	ld d, l                                          ; $3bc5: $55
	ld [$00c9], sp                                   ; $3bc6: $08 $c9 $00
	nop                                              ; $3bc9: $00
	nop                                              ; $3bca: $00
	ld bc, $d4f7                                     ; $3bcb: $01 $f7 $d4
	ld d, [hl]                                       ; $3bce: $56
	ld [$f7c9], sp                                   ; $3bcf: $08 $c9 $f7
	ld l, d                                          ; $3bd2: $6a
	ld d, a                                          ; $3bd3: $57
	ld [$cdc9], sp                                   ; $3bd4: $08 $c9 $cd
	db $e4                                           ; $3bd7: $e4
	dec sp                                           ; $3bd8: $3b

Call_000_3bd9:
	ld l, $06                                        ; $3bd9: $2e $06
	ld a, [hl]                                       ; $3bdb: $7e
	add e                                            ; $3bdc: $83
	ld [hl+], a                                      ; $3bdd: $22
	ld e, a                                          ; $3bde: $5f
	ld a, [hl]                                       ; $3bdf: $7e
	adc d                                            ; $3be0: $8a
	ld [hl+], a                                      ; $3be1: $22
	ld d, a                                          ; $3be2: $57
	ret                                              ; $3be3: $c9


Jump_000_3be4:
	ld l, $04                                        ; $3be4: $2e $04
	ld a, [hl]                                       ; $3be6: $7e
	add c                                            ; $3be7: $81
	ld [hl+], a                                      ; $3be8: $22
	ld c, a                                          ; $3be9: $4f
	ld a, [hl]                                       ; $3bea: $7e
	adc b                                            ; $3beb: $88
	ld [hl+], a                                      ; $3bec: $22
	ld b, a                                          ; $3bed: $47
	ret                                              ; $3bee: $c9


Jump_000_3bef:
	ld l, $08                                        ; $3bef: $2e $08
	ld [hl], c                                       ; $3bf1: $71
	inc hl                                           ; $3bf2: $23
	ld [hl], b                                       ; $3bf3: $70

Jump_000_3bf4:
	ld l, $05                                        ; $3bf4: $2e $05
	ld [hl], e                                       ; $3bf6: $73
	ld l, $07                                        ; $3bf7: $2e $07
	ld [hl], d                                       ; $3bf9: $72
	ret                                              ; $3bfa: $c9


	xor a                                            ; $3bfb: $af
	ld l, $02                                        ; $3bfc: $2e $02
	ld [hl], a                                       ; $3bfe: $77
	xor a                                            ; $3bff: $af
	ld l, $0f                                        ; $3c00: $2e $0f
	ld [hl], a                                       ; $3c02: $77
	ld l, $0d                                        ; $3c03: $2e $0d
	ld [hl], c                                       ; $3c05: $71
	inc l                                            ; $3c06: $2c
	ld [hl], b                                       ; $3c07: $70
	ld l, $0c                                        ; $3c08: $2e $0c
	ld [hl], $01                                     ; $3c0a: $36 $01
	ret                                              ; $3c0c: $c9


	ld a, $09                                        ; $3c0d: $3e $09
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3c0f: $cd $83 $07
	call $4000                                       ; $3c12: $cd $00 $40
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3c15: $c3 $7b $07


	ld de, $0000                                     ; $3c18: $11 $00 $00
	jr jr_000_3c20                                   ; $3c1b: $18 $03

	ld de, $0260                                     ; $3c1d: $11 $60 $02

jr_000_3c20:
	ld a, $0a                                        ; $3c20: $3e $0a
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3c22: $cd $83 $07
	call $444b                                       ; $3c25: $cd $4b $44
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3c28: $c3 $7b $07


	ld a, $0a                                        ; $3c2b: $3e $0a
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3c2d: $cd $83 $07
	call $4507                                       ; $3c30: $cd $07 $45
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3c33: $c3 $7b $07


	ld a, $0a                                        ; $3c36: $3e $0a
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3c38: $cd $83 $07
	call $450c                                       ; $3c3b: $cd $0c $45
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3c3e: $c3 $7b $07


	ld a, $0a                                        ; $3c41: $3e $0a
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3c43: $cd $83 $07
	call $4563                                       ; $3c46: $cd $63 $45
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3c49: $c3 $7b $07


	ld a, $0a                                        ; $3c4c: $3e $0a
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3c4e: $cd $83 $07
	call $456b                                       ; $3c51: $cd $6b $45
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3c54: $c3 $7b $07


	ld a, $0a                                        ; $3c57: $3e $0a
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3c59: $cd $83 $07
	call $45bb                                       ; $3c5c: $cd $bb $45
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3c5f: $c3 $7b $07


	ld a, $0a                                        ; $3c62: $3e $0a
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3c64: $cd $83 $07
	call $45c3                                       ; $3c67: $cd $c3 $45
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3c6a: $c3 $7b $07


	ld a, $0a                                        ; $3c6d: $3e $0a
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3c6f: $cd $83 $07
	call Call_000_0ab5                               ; $3c72: $cd $b5 $0a
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3c75: $c3 $7b $07


	ld a, $0a                                        ; $3c78: $3e $0a
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3c7a: $cd $83 $07
	call Call_000_0aab                               ; $3c7d: $cd $ab $0a
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3c80: $c3 $7b $07


	add a                                            ; $3c83: $87
	rst AddAOntoHL                                          ; $3c84: $ef
	ld a, [hl+]                                      ; $3c85: $2a
	ld h, [hl]                                       ; $3c86: $66
	ld l, a                                          ; $3c87: $6f
	ret                                              ; $3c88: $c9


	add a                                            ; $3c89: $87
	rst AddAOntoHL                                          ; $3c8a: $ef
	ld a, [hl+]                                      ; $3c8b: $2a
	ld d, [hl]                                       ; $3c8c: $56
	ld e, a                                          ; $3c8d: $5f
	ret                                              ; $3c8e: $c9


	add a                                            ; $3c8f: $87
	rst AddAOntoHL                                          ; $3c90: $ef
	ld a, [hl+]                                      ; $3c91: $2a
	ld b, [hl]                                       ; $3c92: $46
	ld c, a                                          ; $3c93: $4f
	ret                                              ; $3c94: $c9


	call Call_000_12fc                               ; $3c95: $cd $fc $12
	ld h, $00                                        ; $3c98: $26 $00
	ld l, a                                          ; $3c9a: $6f
	ld a, b                                          ; $3c9b: $78
	call Call_000_12fc                               ; $3c9c: $cd $fc $12
	rst AddAOntoHL                                          ; $3c9f: $ef
	ret                                              ; $3ca0: $c9


	push de                                          ; $3ca1: $d5
	call Call_000_3cad                               ; $3ca2: $cd $ad $3c
	pop hl                                           ; $3ca5: $e1
	push bc                                          ; $3ca6: $c5
	call Call_000_3cad                               ; $3ca7: $cd $ad $3c
	pop hl                                           ; $3caa: $e1
	add hl, bc                                       ; $3cab: $09
	ret                                              ; $3cac: $c9


Call_000_3cad:
	push hl                                          ; $3cad: $e5
	ld a, [wMainLoopCounter]                                    ; $3cae: $fa $29 $c1
	ld h, a                                          ; $3cb1: $67
	ld a, [$c12a]                                    ; $3cb2: $fa $2a $c1
	ld l, a                                          ; $3cb5: $6f
	ld d, h                                          ; $3cb6: $54
	ld e, l                                          ; $3cb7: $5d
	add hl, hl                                       ; $3cb8: $29
	add hl, hl                                       ; $3cb9: $29
	add hl, de                                       ; $3cba: $19
	ld de, $3711                                     ; $3cbb: $11 $11 $37
	add hl, de                                       ; $3cbe: $19
	ld a, l                                          ; $3cbf: $7d
	ld [$c12a], a                                    ; $3cc0: $ea $2a $c1
	ld a, h                                          ; $3cc3: $7c
	ld [wMainLoopCounter], a                                    ; $3cc4: $ea $29 $c1
	pop bc                                           ; $3cc7: $c1
	ld a, b                                          ; $3cc8: $78
	or c                                             ; $3cc9: $b1
	ret z                                            ; $3cca: $c8

	jp BCHLequHLdivModBC                                 ; $3ccb: $c3 $c1 $12


	ld a, l                                          ; $3cce: $7d
	ld [de], a                                       ; $3ccf: $12
	inc de                                           ; $3cd0: $13
	ld a, h                                          ; $3cd1: $7c
	ld [de], a                                       ; $3cd2: $12
	ret                                              ; $3cd3: $c9


	ld a, l                                          ; $3cd4: $7d
	sub e                                            ; $3cd5: $93
	ld a, h                                          ; $3cd6: $7c
	sbc d                                            ; $3cd7: $9a
	ret                                              ; $3cd8: $c9


	ld a, c                                          ; $3cd9: $79
	ld [$d88b], a                                    ; $3cda: $ea $8b $d8
	ld a, b                                          ; $3cdd: $78
	ld [$d88c], a                                    ; $3cde: $ea $8c $d8
	ret                                              ; $3ce1: $c9


	ld a, [$d8ba]                                    ; $3ce2: $fa $ba $d8
	or a                                             ; $3ce5: $b7
	ret                                              ; $3ce6: $c9


	ld a, [$c120]                                    ; $3ce7: $fa $20 $c1
	and $01                                          ; $3cea: $e6 $01
	jr nz, jr_000_3cf2                               ; $3cec: $20 $04

	ld a, $00                                        ; $3cee: $3e $00
	jr jr_000_3cf4                                   ; $3cf0: $18 $02

jr_000_3cf2:
	ld a, $98                                        ; $3cf2: $3e $98

jr_000_3cf4:
	ldh [hDisp0_SCY], a                                     ; $3cf4: $e0 $83
	ret                                              ; $3cf6: $c9


	push hl                                          ; $3cf7: $e5
	ld l, $07                                        ; $3cf8: $2e $07
	ld a, [hl]                                       ; $3cfa: $7e
	ld l, $05                                        ; $3cfb: $2e $05
	ld c, [hl]                                       ; $3cfd: $4e
	ld b, a                                          ; $3cfe: $47
	pop hl                                           ; $3cff: $e1
	ret                                              ; $3d00: $c9


	push hl                                          ; $3d01: $e5
	ld l, $07                                        ; $3d02: $2e $07
	ld a, [hl]                                       ; $3d04: $7e
	ld l, $05                                        ; $3d05: $2e $05
	ld e, [hl]                                       ; $3d07: $5e
	ld d, a                                          ; $3d08: $57
	pop hl                                           ; $3d09: $e1
	ret                                              ; $3d0a: $c9


Call_000_3d0b:
	push hl                                          ; $3d0b: $e5
	ld l, $13                                        ; $3d0c: $2e $13
	ld a, [hl+]                                      ; $3d0e: $2a
	ld e, a                                          ; $3d0f: $5f
	ld d, [hl]                                       ; $3d10: $56
	pop hl                                           ; $3d11: $e1
	ret                                              ; $3d12: $c9


Call_000_3d13:
	push hl                                          ; $3d13: $e5
	ld l, $11                                        ; $3d14: $2e $11
	ld a, [hl+]                                      ; $3d16: $2a
	ld c, a                                          ; $3d17: $4f
	ld b, [hl]                                       ; $3d18: $46
	pop hl                                           ; $3d19: $e1
	ret                                              ; $3d1a: $c9


	call Call_000_3d0b                               ; $3d1b: $cd $0b $3d
	call Call_000_3d13                               ; $3d1e: $cd $13 $3d
	call $3bd6                                       ; $3d21: $cd $d6 $3b
	ret                                              ; $3d24: $c9


	call Call_000_3d0b                               ; $3d25: $cd $0b $3d
	call Call_000_3bd9                               ; $3d28: $cd $d9 $3b
	ret                                              ; $3d2b: $c9


	call Call_000_3d13                               ; $3d2c: $cd $13 $3d
	jp Jump_000_3be4                                 ; $3d2f: $c3 $e4 $3b


	ld l, $11                                        ; $3d32: $2e $11
	ld a, c                                          ; $3d34: $79
	ld [hl+], a                                      ; $3d35: $22
	ld a, b                                          ; $3d36: $78
	ld [hl+], a                                      ; $3d37: $22
	ld a, e                                          ; $3d38: $7b
	ld [hl+], a                                      ; $3d39: $22
	ld a, d                                          ; $3d3a: $7a
	ld [hl], a                                       ; $3d3b: $77
	ret                                              ; $3d3c: $c9


Jump_000_3d3d:
	ld l, $08                                        ; $3d3d: $2e $08
	ld [hl], c                                       ; $3d3f: $71
	inc hl                                           ; $3d40: $23
	ld [hl], b                                       ; $3d41: $70
	ret                                              ; $3d42: $c9


	push bc                                          ; $3d43: $c5
	ld l, $0a                                        ; $3d44: $2e $0a
	ld b, [hl]                                       ; $3d46: $46
	add b                                            ; $3d47: $80
	ld [hl], a                                       ; $3d48: $77
	pop bc                                           ; $3d49: $c1
	ret                                              ; $3d4a: $c9


	ld l, $01                                        ; $3d4b: $2e $01
	ld a, [hl]                                       ; $3d4d: $7e
	cpl                                              ; $3d4e: $2f
	and $80                                          ; $3d4f: $e6 $80
	ld [hl], a                                       ; $3d51: $77
	ret                                              ; $3d52: $c9


	ld l, $01                                        ; $3d53: $2e $01
	res 7, [hl]                                      ; $3d55: $cb $be
	ret                                              ; $3d57: $c9


	ld l, $01                                        ; $3d58: $2e $01
	set 7, [hl]                                      ; $3d5a: $cb $fe
	ret                                              ; $3d5c: $c9


	push hl                                          ; $3d5d: $e5
	push de                                          ; $3d5e: $d5
	ld h, c                                          ; $3d5f: $61
	ld l, $00                                        ; $3d60: $2e $00
	ld e, $40                                        ; $3d62: $1e $40

jr_000_3d64:
	ld c, l                                          ; $3d64: $4d
	ld a, [bc]                                       ; $3d65: $0a
	ld d, a                                          ; $3d66: $57
	ld a, [hl]                                       ; $3d67: $7e
	ld [bc], a                                       ; $3d68: $02
	ld a, d                                          ; $3d69: $7a
	ld [hl+], a                                      ; $3d6a: $22
	dec e                                            ; $3d6b: $1d
	jr nz, jr_000_3d64                               ; $3d6c: $20 $f6

	pop de                                           ; $3d6e: $d1
	pop hl                                           ; $3d6f: $e1
	ret                                              ; $3d70: $c9


	ld l, $03                                        ; $3d71: $2e $03
	res 5, [hl]                                      ; $3d73: $cb $ae
	res 6, [hl]                                      ; $3d75: $cb $b6
	ret                                              ; $3d77: $c9


	ld l, $03                                        ; $3d78: $2e $03
	set 5, [hl]                                      ; $3d7a: $cb $ee
	ret                                              ; $3d7c: $c9


	push hl                                          ; $3d7d: $e5
	ld h, a                                          ; $3d7e: $67
	ld l, $05                                        ; $3d7f: $2e $05
	ld a, [hl]                                       ; $3d81: $7e
	add e                                            ; $3d82: $83
	ld e, a                                          ; $3d83: $5f
	ld l, $07                                        ; $3d84: $2e $07
	ld a, [hl]                                       ; $3d86: $7e
	add d                                            ; $3d87: $82
	ld d, a                                          ; $3d88: $57
	pop hl                                           ; $3d89: $e1
	jp Jump_000_3bf4                                 ; $3d8a: $c3 $f4 $3b


	ld l, $30                                        ; $3d8d: $2e $30
	ld [hl], a                                       ; $3d8f: $77
	ret                                              ; $3d90: $c9


	ld l, $30                                        ; $3d91: $2e $30
	dec [hl]                                         ; $3d93: $35
	ret nz                                           ; $3d94: $c0

	ld l, $0a                                        ; $3d95: $2e $0a
	inc [hl]                                         ; $3d97: $34
	ret                                              ; $3d98: $c9


	ld l, $02                                        ; $3d99: $2e $02
	ld [hl], a                                       ; $3d9b: $77
	jp Jump_000_3bef                                 ; $3d9c: $c3 $ef $3b


	ld l, $02                                        ; $3d9f: $2e $02
	ld [hl], a                                       ; $3da1: $77
	jp Jump_000_3d3d                                 ; $3da2: $c3 $3d $3d


	ld l, $0c                                        ; $3da5: $2e $0c
	xor a                                            ; $3da7: $af
	ld [hl+], a                                      ; $3da8: $22
	ld [hl+], a                                      ; $3da9: $22
	ld [hl+], a                                      ; $3daa: $22
	ld [hl+], a                                      ; $3dab: $22
	ld [hl+], a                                      ; $3dac: $22
	ret                                              ; $3dad: $c9


	ld a, $0b                                        ; $3dae: $3e $0b
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3db0: $cd $83 $07
	call $61ef                                       ; $3db3: $cd $ef $61
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3db6: $c3 $7b $07


	ld a, $0b                                        ; $3db9: $3e $0b
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3dbb: $cd $83 $07
	call $683e                                       ; $3dbe: $cd $3e $68
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3dc1: $c3 $7b $07


	ld a, $0b                                        ; $3dc4: $3e $0b
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3dc6: $cd $83 $07
	call $73a6                                       ; $3dc9: $cd $a6 $73
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3dcc: $c3 $7b $07


	ld a, $0b                                        ; $3dcf: $3e $0b
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3dd1: $cd $83 $07
	call $7674                                       ; $3dd4: $cd $74 $76
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3dd7: $c3 $7b $07


	ld a, $0b                                        ; $3dda: $3e $0b
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3ddc: $cd $83 $07
	call $796e                                       ; $3ddf: $cd $6e $79
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3de2: $c3 $7b $07


	ld a, $0b                                        ; $3de5: $3e $0b
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3de7: $cd $83 $07
	call $7c8d                                       ; $3dea: $cd $8d $7c
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3ded: $c3 $7b $07


	ld a, $0b                                        ; $3df0: $3e $0b
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3df2: $cd $83 $07
	call $47f0                                       ; $3df5: $cd $f0 $47
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3df8: $c3 $7b $07


	ld a, $0b                                        ; $3dfb: $3e $0b
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3dfd: $cd $83 $07
	call $50f5                                       ; $3e00: $cd $f5 $50
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3e03: $c3 $7b $07


	rst FarCall                                          ; $3e06: $f7
	ld c, a                                          ; $3e07: $4f
	ld e, h                                          ; $3e08: $5c
	inc c                                            ; $3e09: $0c
	ret                                              ; $3e0a: $c9


	rst FarCall                                          ; $3e0b: $f7
	ld e, c                                          ; $3e0c: $59
	ld e, h                                          ; $3e0d: $5c
	inc c                                            ; $3e0e: $0c
	ret                                              ; $3e0f: $c9


	rst FarCall                                          ; $3e10: $f7
	push bc                                          ; $3e11: $c5
	ld e, h                                          ; $3e12: $5c
	inc c                                            ; $3e13: $0c
	ret                                              ; $3e14: $c9


	rst FarCall                                          ; $3e15: $f7
	dec c                                            ; $3e16: $0d
	ld e, l                                          ; $3e17: $5d
	inc c                                            ; $3e18: $0c
	ret                                              ; $3e19: $c9


	rst FarCall                                          ; $3e1a: $f7
	sub b                                            ; $3e1b: $90
	ld e, l                                          ; $3e1c: $5d
	inc c                                            ; $3e1d: $0c
	ret                                              ; $3e1e: $c9


	rst FarCall                                          ; $3e1f: $f7
	sbc l                                            ; $3e20: $9d
	ld e, l                                          ; $3e21: $5d
	inc c                                            ; $3e22: $0c
	ret                                              ; $3e23: $c9


	rst FarCall                                          ; $3e24: $f7
	db $20, $5d

	inc c                                            ; $3e27: $0c
	ret                                              ; $3e28: $c9


	rst FarCall                                          ; $3e29: $f7
	ld h, a                                          ; $3e2a: $67
	ld e, l                                          ; $3e2b: $5d
	inc c                                            ; $3e2c: $0c
	ret                                              ; $3e2d: $c9


	rst FarCall                                          ; $3e2e: $f7
	ld [hl], e                                       ; $3e2f: $73
	ld e, l                                          ; $3e30: $5d
	inc c                                            ; $3e31: $0c
	ret                                              ; $3e32: $c9


	ld a, $08                                        ; $3e33: $3e $08
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3e35: $cd $83 $07
	call $6fe5                                       ; $3e38: $cd $e5 $6f
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3e3b: $c3 $7b $07


	ld a, $08                                        ; $3e3e: $3e $08
	call SetRomBankAStoringCurrInHighByteInStackAfterReturn                               ; $3e40: $cd $83 $07
	call $669e                                       ; $3e43: $cd $9e $66
	jp SetRomBankToHighByteInStackAfterReturn                                 ; $3e46: $c3 $7b $07
