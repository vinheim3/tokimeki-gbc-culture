#!/usr/bin/env python3

import os

from util import bankAddr, getRom, wordIn
from tokiUtil import Rom, extractLineOfText

start = bankAddr(0x78, 0x6453)
data = getRom()

tiledata = []
for i in range(0x630):
    if i in [0, 1, 2]: continue
    print(hex(i))
    nameAddr = wordIn(data, start+i*2)
    if nameAddr < 0x4000:
        nameSrc = bankAddr(0x78, nameAddr+0x4000)
    else:
        nameSrc = bankAddr(0x79, nameAddr)

    rom = Rom(data, nameSrc)
    td, numCharsInLine = extractLineOfText(rom, data)
    td.extend([0]*((10-numCharsInLine)*0x20))
    tiledata.extend(td)

with open('gfx_new.bin', 'wb') as f:
    f.write(bytearray(tiledata))

os.system('python3 tools/gfx.py png gfx_new.bin --from=1bpp --interleave --width=20')
