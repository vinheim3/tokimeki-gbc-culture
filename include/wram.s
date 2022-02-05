INCLUDE "includes.s"

SECTION "WRAM", WRAM0[$c000]

wc000:
    ds $c0-0

wStackTop:: ; $c0c0
    .db

wc0c0:
    ds $d0-$c0

union

    wPreservedHL:: ; $c0d0
        dw

nextu

    wEnqueueDataCopyFarBank:: ; $c0d0
        db

    wEnqueueDataCopyPreservedHL:: ; $c0d1
        dw

nextu

    wBaseCharSrcOffset:: ; $c0d0
        dw

nextu

    wPoppedScriptStackWord:: ; $c0d0
        dw

endu

wExecDataCopy1stUnallowedLY:: ; $c0d3
    db
wExecDataCopyLastUnallowedLY:: ; $c0d4
    db

wc0d5:
    ds $e0-$d5

wGenericTileDataSrcEnd:: ; $c0e0
    dw

wGenericTileDataDest:: ; $c0e2
    dw

; ie if num bytes to copy is $1e, this is $03
wGenericTileDataBytesToCopyUntil21h:: ; $c0e4
    db

wc0e5:
    ds 6-5

wGenericTileDataFinalDest:: ; $c0e6
    dw

wc0e8:
    ds $100-$e8

wInitialA:: ; $c100
    db

wc101:
    ds 3-1

wRomBank:: ; $c103
    db

wWramBank:: ; $c104
    db

wSramBank:: ; $c105
    db

wc106:
    ds 8-6

wPtrToDataCopyStruct:: ; $c108
    dw

wc10a:
    ds $1f-$a

wFrameCounter:: ; $c11f
    db

wc120:
    ds 3-0

wButtonsHeld:: ; $c123
    db

wc124:
    ds 5-4

wButtonsPressed:: ; $c125
    db

wc126:
    ds 9-6

wMainLoopCounter:: ; $c129
    db

wc12a:
    ds $41-$2a

wPastTitleScreen:: ; $c141
    db

wGameState:: ; $c142
    db

wc143:
    ds $5f-$43

wMenuOptionSelected:: ; $c15f
    db

wc160:
    ds $8f-$60

; todo: unknown size
wGenericTileDataBuffer:: ; $c18f
    .db

wc18f:
    ds $b80-$18f

; A - byte to set
; DE - distance between bytes
; HL - dest addr
wVertSets:: ; $cb80
    ds NUM_WRAM_VERT_SETS*2+1

; A - byte to set
; HL - dest addr
wMemSets:: ; $cbd1
    ds NUM_WRAM_MEM_SETS*1+1

wcbf2:
    ds $c80-$bf2

; DE - dest addr
; HL - src addr
wMemCopies:: ; $cc80
    ds NUM_WRAM_MEM_COPIES*3+1

wcce1:
    ds $d80-$ce1

; BC - distance between dest bytes
; DE - src addr
; HL - dest addr
wVertCopies:: ; $cd80
    ds NUM_WRAM_VERT_COPIES*4+1

wce01:
    ds $80-1

wWramFuncs0Start:: ; $ce80
    .db
wCpHLtoDE:: ; $ce80
    ds $06
wCpHLtoBC:: ; $ce86
    ds $06
wCpBCtoDE:: ; $ce8c
    ds $06
wAddBContoDE:: ; $ce92
    ds $07
wce99:
    ds $e-9
wHLminusEquDE:: ; $ce9e
    ds $0c
wHLminusEquBC:: ; $ceaa
    ds $0c
wceb6:
    ds $d4-$b6
wSwapDEandHL:: ; $ced4
    ds $05
wSwapBCandHL:: ; $ced9
    ds $05

wcede:
    ds $f80-$ede

wWramFuncs1Start:: ; $cf80
    .db
; A - table idx
; Table at return address
wJumpTable:: ; $cf80
    ds $0a
wcf8a:
    ds $cc-$8a
wMemSetBC:: ; $cfcc
    ds $09

SECTION "WRAM 1", WRAMX[$d000], BANK[$1]

w1_d000:
    ds $b0-0

wTaskParams:: ; $d0b0
    .db
wTaskParam0_word0:: ; $d0b0
    dw
wTaskParam0_word1:: ; $d0b2
    dw
wTaskParam1_word0:: ; $d0b4
    dw
wTaskParam1_word1:: ; $d0b6
    dw
wTaskParam2_word0:: ; $d0b8
    dw
wTaskParam2_word1:: ; $d0ba
    dw
wTaskParam3_word0:: ; $d0bc
    dw
wTaskParam3_word1:: ; $d0be
    dw
wTaskParam4_word0:: ; $d0c0
    dw
wTaskParam4_word1:: ; $d0c2
    dw
wTaskParam5_word0:: ; $d0c4
    dw
wTaskParam5_word1:: ; $d0c6
    dw

w1_d0c8:
    ds $12f-$c8

wTextByteStackTopLowByte:: ; $d12f
    db

w1_d130:
    ds $fe-$30

wPtrToScriptStack:: ; $d1fe
    dw

w1_d200:
    ds 1-0

wCurrMenuOption:: ; $d201
    db

w1_d202:
    ds $3d0-$202

; todo: unknown size
wDataCopyStruct:: ; $d3d0
    .db

w1_d3d0:
    ds $4b0-$3d0

; todo: unknown size
wCharTileDataBuffer:: ; $d4b0
    .db

w1_d4b0:
    ds $700-$4b0

wOam:: ; $d700
    ds OAM_SIZEOF*NUM_SPRITES

w1_d7a0:
    ds $fc-$a0

wCharTilesDataDest:: ; $d7fc
    dw

wCurrTilePixelIdx:: ; $d7fe
    db

w1_d7ff:
    ds $800-$7ff

wCurrTextLinePixelIdx:: ; $d800
    db

w1_d801:
    ds 3-1

wCurrChar1Idxed:: ; $d803
    dw

w1_d805:
    ds 6-5

; Adjusted to be $4000 <= x < $8000
wShiftedFarTextByteAddr:: ; $d806
    dw

; Bank is this << 2 + high 2 bits of wShiftedFarTextByteAddr in low 2 bits here
wShiftedFarTextByteBank:: ; $d808
    db

w1_d809:
    ds $f-9

wUseRulesForTextLine1stOrLastChar:: ; $d80f
    db

SECTION "WRAM 2", WRAMX[$d000], BANK[$2]


SECTION "WRAM 3", WRAMX[$d000], BANK[$3]


SECTION "WRAM 7", WRAMX[$d000], BANK[$7]
