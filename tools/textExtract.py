#!/usr/bin/env python3

import sys
import os

from util import getRom, bankConv
from tokiUtil import Rom, extractLineOfText

start = bankConv(sys.argv[1])
data = getRom()
rom = Rom(data, start)

tiledata, _, _ = extractLineOfText(rom, data)

with open('gfx_new.bin', 'wb') as f:
    f.write(bytearray(tiledata))

os.system('python3 tools/gfx.py png gfx_new.bin --from=1bpp --interleave --width=20')
