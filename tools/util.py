def conv(hexstr):
    return int(f"0x{hexstr}", 16)


def bankAddr(bank, addr):
    if bank == 0:
        return addr
    
    return (bank-1)*0x4000+addr


def bankConv(hexstr):
    if ':' not in hexstr:
        return conv(hexstr)

    bank, addr = hexstr.split(':')
    return bankAddr(conv(bank), conv(addr))


def groupBytes(bs, groups):
    n = len(bs[::groups])
    return [
        bs[i*groups:(i+1)*groups] for i in range(n)
    ]


def stringB(bs):
    return f"\tdb " + ", ".join(f"${byte:02x}" for byte in bs)


def stringW(ws):
    return f"\tdw " + ", ".join(f"${word:04x}" for word in ws)


def wordIn(data, offset):
    return (data[offset+1]<<8)|data[offset]


def toWords(bs):
    ws = []
    for i in range(len(bs)//2):
        word = bs[i*2]+(bs[i*2+1]<<8)
        ws.append(word)
    return ws


def getRom():
    with open('original/tokimekiC.gbc', 'rb') as f:
        data = f.read()
    return data


if __name__ == "__main__":
    import sys
    data = list(getRom())

    # remap = bankAddr(0x74, 0x4000)
    # revMap = {} # 1 to 2
    # regMap = {} # 2 to 1
    # for i in range(0xdf7):
    #     mapped = wordIn(data, remap+i*2)
    #     regMap[i] = mapped
    #     revMap[mapped] = i
    # toConv = int(sys.argv[2], 16)
    # convType = sys.argv[1]
    # if convType == '1':
    #     print(hex(revMap[toConv]))
    # elif convType == '2':
    #     print(hex(regMap[toConv]))

    b, a = map(lambda x: int(x, 16), sys.argv[1].split(':'))
    l, h = (a&0xff), (a>>8)
    for i in range(len(data)-3):
        if data[i:i+3] == [l, h, b]:
            pb = i // 0x4000
            pa = i % 0x4000
            if pb != 0:
                pa += 0x4000
            print(f"{pb:02x}:{pa:04x}")
