#!/usr/bin/env python3

import os

from util import getRom, bankAddr
from tokiUtil import Rom, extractLineOfText

fullTd = []
data = getRom()
for i in range(0x24):
    offs = data[bankAddr(0x79, 0x6a28+i)]
    start = bankAddr(0x79, 0x6a25+offs)

    rom = Rom(data, start)

    tiledata, numCharsInLine, _ = extractLineOfText(rom, data)

    fullTd.extend(tiledata)
    fullTd.extend([0]*((10-numCharsInLine)*0x20))

with open('gfx_new.bin', 'wb') as f:
    f.write(bytearray(fullTd))

os.system('python3 tools/gfx.py png gfx_new.bin --from=1bpp --interleave --width=20')
