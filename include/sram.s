INCLUDE "includes.s"

SECTION "SRAM", SRAM[$a000], BANK[$0]

sa000:
    ds $200-0

sUnmappedPlayer1stName:: ; $a200
    ds 7 ; 3 words + ret ($09)

sUnmappedPlayer2ndName:: ; $a207
    ds 7 ; 3 words + ret ($09)

sa20e:
    ds $1a80-$20e

stodo_ScriptRelatedStruct:: ; $ba80
    ds $30*4

sList2ForCompactScriptLocs:: ; $bb40
    .db ; unknown size

sbb40:
    ds $9d-$40

sList1ForCompactScriptLocs:: ; $bb9d
    .db ; unknown size

sbb9d:
    ds $d92-$b9d

sCurrTaskIdx:: ; $bd92
    dw

stodo_PreservedHLrelatedToScriptStack:: ; $bd94
    dw

sExecScript1stByte:: ; $bd96
    db

sbd97:
    ds $f-7

; Idx in 3rd byte with 2nd byte bit 7 as low bit
; Offset in bits 0-14 of 1st word
sCompactScriptLoc:: ; $bd9f
    ds 3

sbda2:
    ds 3-2

sTempLHBFromScriptRelatedReturns:: ; $bda3
    ds 3

s1stScriptTable2Word:: ; $bda6
    dw

sTaskCtrlByteHighNybbleTimes2:: ; $bda8
    db

sbda9:
    ds $c-9

sTempTaskParams:: ; $bdac
    .db
sTempTaskParams_word0:: ; $bdac
    dw
sTempTaskParams_word1:: ; $bdae
    dw

sbdb0:
    ds $c-0

sCurrOffsetIntoScript:: ; $bdbc
    dw

sbdbe:
    ds $c9-$be

sIdxForCompactScriptLocList1:: ; $bdc9
    db

sbdca:
    ds $c-$a

sCurrScriptIdx:: ; $bdcc
    db

sbdcd:
    ds $e0-$cd

sPreScriptSP:: ; $bde0
    dw