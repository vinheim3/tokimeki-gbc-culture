from util import bankAddr, getRom, wordIn
import re
import clipboard

data = getRom()
with open('code/bank_00c.s') as f:
    code = f.read().split('\n')
taskStart = bankAddr(0xc, 0x554d)
addrRE = re.compile(r'.+; \$([a-z0-9]{4}).*')

taskMap = {}
taskSpecComps = []
for i in range(0x1d4):
    addr = wordIn(data, taskStart+i*3)
    taskMap.setdefault(addr, []).append(i)

    ctrlByte = data[taskStart+i*3+2]
    taskSpecComps.append(f"\tdwb TaskHandler_{i:03x}, ${ctrlByte:02x}")

newlines = []
for line in code:
    gs = addrRE.match(line)
    if gs is not None:
        addr = int(gs.group(1), 16)
        for taskNum in taskMap.get(addr, []):
            newlines.append(f"TaskHandler_{taskNum:03x}:")
    newlines.append(line)

clipboard.copy(f"\n".join(taskSpecComps))
# with open('test.s', 'w') as f:
#     f.write('\n'.join(newlines))