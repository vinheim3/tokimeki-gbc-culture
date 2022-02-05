#!/usr/bin/env python3

import os

from util import bankAddr, getRom, wordIn
from tokiUtil import Rom, extractLineOfText

start = bankAddr(0x79, 0x6b37)
data = getRom()

tiledata = []
for i in range(64):
    if i in [0x01]:
        continue
    nameAddr = wordIn(data, start+i*2)
    nameSrc = bankAddr(0x79, nameAddr)

    rom = Rom(data, nameSrc)
    td, numCharsInLine = extractLineOfText(rom, data)
    td.extend([0]*((10-numCharsInLine)*0x20))
    tiledata.extend(td)

with open('gfx_new.bin', 'wb') as f:
    f.write(bytearray(tiledata))

os.system('python3 tools/gfx.py png gfx_new.bin --from=1bpp --interleave --width=20')
