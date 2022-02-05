import os
from util import getRom
from tokiUtil import remapChar, addNum, addChar


data = getRom()


def prefix(num, rom, td):
    hb = num // 16
    lb = num % 16
    addNum(hb, rom, td)
    addNum(lb, rom, td)
    td.extend([0]*16)


def addHeader(rom, td):
    td.extend([0]*(16*3))
    for i in range(16):
        addNum(i, rom, td)
        td.extend([0]*16)


tiledata1 = []
tiledata2 = []

addHeader(data, tiledata1)
prefix(0, data, tiledata1)
tiledata1.extend([0]*32)

addHeader(data, tiledata2)
prefix(0, data, tiledata2)

for i in range(1,0xf9+0xcfe+1):
    if i % 16 == 0:
        if i % 256 == 0:
            tiledata1.extend([0]*(16*35))
            addHeader(data, tiledata1)

        header = i//16
        prefix(header, data, tiledata1)

    if (i-1) % 16 == 0 and i != 1:
        if (i-1) % 256 == 0:
            tiledata2.extend([0]*(16*35))
            addHeader(data, tiledata2)

        header = i//16
        prefix(header, data, tiledata2)

    addChar(i, data, tiledata1)

    j = remapChar(i-1, data)
    addChar(j, data, tiledata2)

with open('chars1.bin', 'wb') as f:
    f.write(bytearray(tiledata1))

with open('chars2.bin', 'wb') as f:
    f.write(bytearray(tiledata2))

os.system('python3 tools/gfx.py png chars1.bin --from=1bpp --width=35 --interleave')
os.system('python3 tools/gfx.py png chars2.bin --from=1bpp --width=35 --interleave')
