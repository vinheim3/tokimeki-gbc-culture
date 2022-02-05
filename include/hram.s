SECTION "HRAM", HRAM[$ff80]

hff80:
    ds 1-0

hLCDCIntHandlerIdx:: ; $ff81
    db

hDisp0:: ; $ff82
    .db
hDisp0_LCDC:: ; $ff82
    db
hDisp0_SCY:: ; $ff83
    db
hDisp0_SCX:: ; $ff84
    db
hDisp0_BGP:: ; $ff85
    db
hDisp0_OBP0:: ; $ff86
    db
hDisp0_OBP1:: ; $ff87
    db
hDisp0_WY:: ; $ff88
    db
hDisp0_WX:: ; $ff89
    db
hff8a:
    ds 5

hDisp1:: ; $ff8f
    .db
hDisp1_LCDC:: ; $ff8f
    db
hDisp1_SCY:: ; $ff90
    db
hDisp1_SCX:: ; $ff91
    db
hDisp1_BGP:: ; $ff92
    db
hDisp1_OBP0:: ; $ff93
    db
hDisp1_OBP1:: ; $ff94
    db
hDisp1_WY:: ; $ff95
    db
hDisp1_WX:: ; $ff96
    db
hff97:
    ds 5

hff9c:
    ds $e0-$9c

hOamDmaFunc:: ; $ffe0
    ds $0a