import clipboard
from util import getRom, bankAddr, wordIn

data = getRom()
start = bankAddr(7, 0x5ce3)
addrs = []
for i in range(0x98):
    bank = data[start+i*3]
    addr = wordIn(data, start+i*3+1)
    addrs.append(bankAddr(bank, addr))

for i, addr in enumerate(addrs[:-1]):
    nextAddr = addrs[i+1]
    assert addr < nextAddr
    bs = data[addr:nextAddr]
    assert (bs[-1]&0x0f) == 0x08
    bs = bs[:-1]
    assert not any(filter(lambda b: (b&0xf0)==0x80, bs))
    assert not any(filter(lambda b: (b&0x0f)==0x08, bs))

# extract
comps = []

addrs.append(bankAddr(0xfe, 0x5b70))
currBank = 0x9d
bsLeftInBank = 0x4000
for i, addr in enumerate(addrs[:-1]):
    nextAddr = addrs[i+1]
    bs = data[addr:nextAddr]
    lenBs = len(bs)
    bsOffs = 0
    path = f"data/samples/sample{i:02x}.bin"
    # with open(path, "wb") as f:
    #     f.write(bs)
    
    while 1:
        if lenBs-bsOffs <= bsLeftInBank:
            bsLeftInBank -= (lenBs-bsOffs)
            if bsOffs:
                comps.append(f'\tINCBIN "{path}", ${bsOffs:04x}')
            else:
                comps.append(f'\n\nSampleData{i:02x}::')
                comps.append(f'\tINCBIN "{path}"')
            break

        if bsOffs == 0:
            comps.append(f'\n\nSampleData{i:02x}::')
        comps.append(f'\tINCBIN "{path}", ${bsOffs:04x}, ${bsLeftInBank:04x}')
        comps.append(f'\n\nSECTION "ROM Bank ${currBank:03x}", ROMX[$4000], BANK[${currBank:02x}]\n')
        
        currBank += 1
        bsOffs += bsLeftInBank
        bsLeftInBank = 0x4000

clipboard.copy('\n'.join(comps))
