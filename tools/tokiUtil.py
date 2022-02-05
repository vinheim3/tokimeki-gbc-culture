from util import getRom, bankAddr, wordIn

tdStart = bankAddr(0x74, 0x5bee)
tdRemap = bankAddr(0x74, 0x4000)
zero = 0x4c
capA = 0xbc


def remapChar(charIdx, rom):
    return wordIn(rom, tdRemap+2*charIdx)


def addNum(num, rom, td):
    if num < 10:
        baseI = num+zero
    else:
        baseI = num-10+capA
    baseSrc = tdStart
    bs = rom[baseSrc+baseI*0x0d:baseSrc+(baseI+1)*0x0d]
    td.extend(bs)
    td.extend([0, 0, 0])


def add8px(oneIdx, rom, td):
    baseI = oneIdx - 1
    baseSrc = tdStart
    bs = rom[baseSrc+baseI*0x0d:baseSrc+(baseI+1)*0x0d]
    td.extend(bs)
    td.extend([0, 0, 0])
    td.extend([0]*16)


def add12px(oneIdx, rom, td):
    baseI = oneIdx - 0xfa
    baseSrc = tdStart + 0xca5
    bs = rom[baseSrc+baseI*0x12:baseSrc+(baseI+1)*0x12]
    td.append(0)
    td.extend(bs[:0xc])
    td.extend([0, 0, 0])

    td.append(0)
    td.extend([
        bs[0xc]&0xf0,
        bs[0xd]&0xf0,
        bs[0xe]&0xf0,
        bs[0xf]&0xf0,
        bs[0x10]&0xf0,
        bs[0x11]&0xf0,
        (bs[0xc]&0xf)<<4,
        (bs[0xd]&0xf)<<4,
        (bs[0xe]&0xf)<<4,
        (bs[0xf]&0xf)<<4,
        (bs[0x10]&0xf)<<4,
        (bs[0x11]&0xf)<<4,
    ])
    td.extend([0, 0, 0])


def addChar(oneIdx, rom, td):
    if oneIdx < 0xfa:
        add8px(oneIdx, rom, td)

    elif oneIdx < 0xfa+0xcfe:            
        add12px(oneIdx, rom, td)


def extractLineOfText(rom, data, numCharsInLine=0):
    tiledata = []
    limit = 10000
    sawByte0 = False
    while limit != 0:
        limit -= 1

        ctrl = rom.getByte()
        if not sawByte0:
            if ctrl == 0x09 or (0xa0 <= ctrl < 0xa8):
                ctrl = rom.getByte()
            sawByte0 = True
        if ctrl >= 0xf0: # add mapped char
            word = ctrl*256+rom.getByte()-0xef90
            mapped = remapChar(word, data)
            addChar(mapped, data, tiledata)
            numCharsInLine += 1
        elif ctrl >= 0xe8: # lookup table
            highNyb = ctrl - 0xe8
            lowWord = rom.getByte()
            w = highNyb*0x100+lowWord
            subAddr = wordIn(data, bankAddr(0x78, 0x6453+w*2))
            if subAddr < 0x4000:
                subBank = 0x78
                subAddr += 0x4000
            else:
                subBank = 0x79
            subRom = Rom(data, bankAddr(subBank, subAddr))
            subTd, subChars, retcode = extractLineOfText(subRom, data, numCharsInLine)
            tiledata.extend(subTd)
            numCharsInLine = subChars
            if retcode == -1:
                return tiledata, numCharsInLine, -1
        elif ctrl >= 0xa0:
            idx = ctrl-0xa0
            subAddr = wordIn(data, bankAddr(0x79, 0x6d4a+idx*2))
            subRom = Rom(data, bankAddr(0x79, subAddr))
            subTd, subChars, retcode = extractLineOfText(subRom, data, numCharsInLine)
            tiledata.extend(subTd)
            numCharsInLine = subChars
            if retcode == -1:
                return tiledata, numCharsInLine, -1
        elif ctrl < 0x30:
            if ctrl == 0x01: # ram jumptable
                raise Exception(f"ctrl {ctrl:02x}, {rom.fmtSrc()}")
            elif ctrl == 0x09:
                break
            elif ctrl == 0x0b: # stop completely
                return tiledata, numCharsInLine, -1
            elif ctrl in [0x11, 0x12]: # todo: reads from sram
                continue
            elif ctrl in [0x17, 0x21, 0x23]: # todo:
                continue
            elif ctrl in [0x0a, 0x13]: # newline
                tiledata.extend([0]*((10-numCharsInLine)*0x20))
                numCharsInLine = 0
            elif ctrl == 0x2f: # a marker to say don't draw top-left right angle
                continue
            else:
                raise Exception(f"ctrl {ctrl:02x}, {rom.fmtSrc()}")
        else:
            mapped = remapChar(ctrl-0x30, data)
            addChar(mapped, data, tiledata)
            numCharsInLine += 1

    return tiledata, numCharsInLine, 0


class Rom:
    def __init__(self, rom, pc=None):
        self.rom = rom
        self.pc = pc

    def getByte(self):
        b = self.rom[self.pc]
        self.pc += 1
        return b

    def fmtSrc(self):
        bank = self.pc//0x4000
        addr = (self.pc%0x4000)+0x4000
        return f"{bank:02x}:{addr:04x}"
