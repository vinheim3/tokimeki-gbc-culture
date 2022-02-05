#!/usr/bin/env python3

import sys
import clipboard
from util import getRom, bankConv

data = getRom()
start = bankConv(sys.argv[1])
end = None
if len(sys.argv) > 2:
    end = bankConv(sys.argv[2])+1

offset = 0

ops = {
    0x00: ('CP_EnqueueGenericTransfer', "wbbwbb"),
    0x01: ('CP_Loop', "bbw"),
    0x02: ('CP_Halt', None),
    0x03: ('CP_SetTargetBGPalettes', "wb"),
    0x04: ('CP_SetFadeInValue', "b"),
    0x05: ('CP_LoadTileMapAttr', "wbbwb"),
    0x06: ('CP_PlayMusic', "b"),
    0x07: ('CP_Delay', "b"),
    0x08: ('CP_FadeAllBGandOBJPalettes', None),
    0x09: ('CP_WaitUntilPalettesFaded', None),
    0x0a: ('CP_FarCopyObjPalettes', "wb"),
    0x0b: ('CP_AddToScrolls', "ww"),
    0x0c: ('CP_SetScroll', "ww"),
    0x0d: ('CP_CreateSprite', "bbwb"),
    0x0e: ('CP_PlaySoundEffect', "bb"),
    0x0f: ('CP_SetSupressedInput', "b"),
    0x10: ('CP_SetSpriteCoords', "bww"),
    0x11: ('CP_AddToSpriteCoords', "bww"),
    0x12: ('CP_HideSprite', "b"),
    0x13: ('CP_SetGameState', "b"),
    0x14: ('CP_FadeVolumeDown', "b"),
    0x15: ('CP_MemSetTileMapAndAttr', "bb"),
    0x16: ('CP_DecompressCopy', "wb"),
    0x17: ('CP_SetTargetBGandOBJPalettes', "wbwb"),
    0x18: ('CP_SetSkipAddr', "w"),
    0x19: ('CP_EnqueueTileMapAndAttrTransfer', "w"),
    0x1a: ('CP_SetWindowXY', "bb"),
    0x1b: ('CP_AddToWindowCoords', "bb"),

}

comps = []
addrComps = []
op = None
while op not in (0x02,) and (end is None or start+offset < end):
    op = data[start+offset]
    addr = ((start+offset) % 0x4000) + 0x4000
    offset += 1
    if op not in ops:
        raise Exception(f"Implement ${op:02x}")
    name, params = ops[op]
    if not params:
        comps.append(f"\t{name}")
        addrComps.append(f"\t{name} ; ${addr:04x}")
        continue
    param_comps = []
    for param in params:
        if param == 'b':
            byte = data[start+offset]
            offset += 1
            param_comps.append(f"${byte:02x}")
        elif param == 'w':
            word = data[start+offset]|(data[start+offset+1]<<8)
            offset += 2
            param_comps.append(f"${word:04x}")
    comps.append(f"\t{name} {', '.join(param_comps)}")
    addrComps.append(f"\t{name} {', '.join(param_comps)} ; ${addr:04x}")

final_str = "\n".join(comps)
clipboard.copy(final_str)
print(final_str)
print(hex(start+offset))
with open('test.txt', 'w') as f:
    f.write('\n'.join(addrComps))
