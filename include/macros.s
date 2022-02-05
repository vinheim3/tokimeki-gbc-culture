; --
; -- Misc
; --

macro dwbe
    dw (\1>>8)+((\1&$ff)<<8)
endm

; macro ldbc
;     ld bc, (\1<<8)|\2
; endm

; macro ldde
;     ld de, (\1<<8)|\2
; endm

macro ldhl
    ld hl, (\1<<8)|\2
endm

; macro lda
; ASSERT \1 == 0
; 	xor a
; endm

macro dwb
    dw \1
    db \2
endm

macro dbw
    db \1
    dw \2
endm

macro AddrBank
if _NARG == 1
    dw \1
    db BANK(\1)
else
    dwb \1, \2
endc
endm

macro BankAddr
if _NARG == 1
    db BANK(\1)
    dw \1
else
    dbw \1, \2
endc
endm

macro ScriptSrc0Idx
    dw (\1 % $4000)+(BANK(\1) % 4)*$4000
    db BANK(\1)/4
endm

macro ScriptSrc1Idx
    dw (\1 % $4000)+(BANK(\1) % 4)*$4000-1
    db BANK(\1)/4
endm