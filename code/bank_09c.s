; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $09c", ROMX[$4000], BANK[$9c]

SampleData00::
	INCBIN "data/samples/sample00.bin"


SampleData01::
	INCBIN "data/samples/sample01.bin", $0000, $0313


SECTION "ROM Bank $09d", ROMX[$4000], BANK[$9d]

	INCBIN "data/samples/sample01.bin", $0313


SampleData02::
	INCBIN "data/samples/sample02.bin", $0000, $1888


SECTION "ROM Bank $09e", ROMX[$4000], BANK[$9e]

	INCBIN "data/samples/sample02.bin", $1888


SampleData03::
	INCBIN "data/samples/sample03.bin"


SampleData04::
	INCBIN "data/samples/sample04.bin", $0000, $06f4


SECTION "ROM Bank $09f", ROMX[$4000], BANK[$9f]

	INCBIN "data/samples/sample04.bin", $06f4


SampleData05::
	INCBIN "data/samples/sample05.bin", $0000, $2890


SECTION "ROM Bank $0a0", ROMX[$4000], BANK[$a0]

	INCBIN "data/samples/sample05.bin", $2890


SampleData06::
	INCBIN "data/samples/sample06.bin"


SampleData07::
	INCBIN "data/samples/sample07.bin"


SampleData08::
	INCBIN "data/samples/sample08.bin", $0000, $0ba5


SECTION "ROM Bank $0a1", ROMX[$4000], BANK[$a1]

	INCBIN "data/samples/sample08.bin", $0ba5


SampleData09::
	INCBIN "data/samples/sample09.bin", $0000, $1e9a


SECTION "ROM Bank $0a2", ROMX[$4000], BANK[$a2]

	INCBIN "data/samples/sample09.bin", $1e9a


SampleData0a::
	INCBIN "data/samples/sample0a.bin"


SampleData0b::
	INCBIN "data/samples/sample0b.bin", $0000, $1d17


SECTION "ROM Bank $0a3", ROMX[$4000], BANK[$a3]

	INCBIN "data/samples/sample0b.bin", $1d17


SampleData0c::
	INCBIN "data/samples/sample0c.bin"


SampleData0d::
	INCBIN "data/samples/sample0d.bin", $0000, $131b


SECTION "ROM Bank $0a4", ROMX[$4000], BANK[$a4]

	INCBIN "data/samples/sample0d.bin", $131b


SampleData0e::
	INCBIN "data/samples/sample0e.bin", $0000, $18be


SECTION "ROM Bank $0a5", ROMX[$4000], BANK[$a5]

	INCBIN "data/samples/sample0e.bin", $18be


SampleData0f::
	INCBIN "data/samples/sample0f.bin"


SampleData10::
	INCBIN "data/samples/sample10.bin", $0000, $087d


SECTION "ROM Bank $0a6", ROMX[$4000], BANK[$a6]

	INCBIN "data/samples/sample10.bin", $087d


SampleData11::
	INCBIN "data/samples/sample11.bin"


SampleData12::
	INCBIN "data/samples/sample12.bin", $0000, $14a3


SECTION "ROM Bank $0a7", ROMX[$4000], BANK[$a7]

	INCBIN "data/samples/sample12.bin", $14a3


SampleData13::
	INCBIN "data/samples/sample13.bin"


SampleData14::
	INCBIN "data/samples/sample14.bin", $0000, $15c6


SECTION "ROM Bank $0a8", ROMX[$4000], BANK[$a8]

	INCBIN "data/samples/sample14.bin", $15c6


SampleData15::
	INCBIN "data/samples/sample15.bin", $0000, $1668


SECTION "ROM Bank $0a9", ROMX[$4000], BANK[$a9]

	INCBIN "data/samples/sample15.bin", $1668


SampleData16::
	INCBIN "data/samples/sample16.bin", $0000, $24ad


SECTION "ROM Bank $0aa", ROMX[$4000], BANK[$aa]

	INCBIN "data/samples/sample16.bin", $24ad


SampleData17::
	INCBIN "data/samples/sample17.bin"


SampleData18::
	INCBIN "data/samples/sample18.bin", $0000, $0876


SECTION "ROM Bank $0ab", ROMX[$4000], BANK[$ab]

	INCBIN "data/samples/sample18.bin", $0876


SampleData19::
	INCBIN "data/samples/sample19.bin", $0000, $197f


SECTION "ROM Bank $0ac", ROMX[$4000], BANK[$ac]

	INCBIN "data/samples/sample19.bin", $197f


SampleData1a::
	INCBIN "data/samples/sample1a.bin", $0000, $1610


SECTION "ROM Bank $0ad", ROMX[$4000], BANK[$ad]

	INCBIN "data/samples/sample1a.bin", $1610


SampleData1b::
	INCBIN "data/samples/sample1b.bin", $0000, $2a71


SECTION "ROM Bank $0ae", ROMX[$4000], BANK[$ae]

	INCBIN "data/samples/sample1b.bin", $2a71


SampleData1c::
	INCBIN "data/samples/sample1c.bin"


SampleData1d::
	INCBIN "data/samples/sample1d.bin"


SampleData1e::
	INCBIN "data/samples/sample1e.bin", $0000, $088a


SECTION "ROM Bank $0af", ROMX[$4000], BANK[$af]

	INCBIN "data/samples/sample1e.bin", $088a


SampleData1f::
	INCBIN "data/samples/sample1f.bin", $0000, $0d12


SECTION "ROM Bank $0b0", ROMX[$4000], BANK[$b0]

	INCBIN "data/samples/sample1f.bin", $0d12


SampleData20::
	INCBIN "data/samples/sample20.bin", $0000, $0b03


SECTION "ROM Bank $0b1", ROMX[$4000], BANK[$b1]

	INCBIN "data/samples/sample20.bin", $0b03


SampleData21::
	INCBIN "data/samples/sample21.bin", $0000, $3d57


SECTION "ROM Bank $0b2", ROMX[$4000], BANK[$b2]

	INCBIN "data/samples/sample21.bin", $3d57


SampleData22::
	INCBIN "data/samples/sample22.bin"


SampleData23::
	INCBIN "data/samples/sample23.bin", $0000, $11ef


SECTION "ROM Bank $0b3", ROMX[$4000], BANK[$b3]

	INCBIN "data/samples/sample23.bin", $11ef


SampleData24::
	INCBIN "data/samples/sample24.bin", $0000, $0541


SECTION "ROM Bank $0b4", ROMX[$4000], BANK[$b4]

	INCBIN "data/samples/sample24.bin", $0541


SampleData25::
	INCBIN "data/samples/sample25.bin", $0000, $10bc


SECTION "ROM Bank $0b5", ROMX[$4000], BANK[$b5]

	INCBIN "data/samples/sample25.bin", $10bc, $4000


SECTION "ROM Bank $0b6", ROMX[$4000], BANK[$b6]

	INCBIN "data/samples/sample25.bin", $50bc


SampleData26::
	INCBIN "data/samples/sample26.bin"


SampleData27::
	INCBIN "data/samples/sample27.bin", $0000, $1f39


SECTION "ROM Bank $0b7", ROMX[$4000], BANK[$b7]

	INCBIN "data/samples/sample27.bin", $1f39


SampleData28::
	INCBIN "data/samples/sample28.bin", $0000, $390d


SECTION "ROM Bank $0b8", ROMX[$4000], BANK[$b8]

	INCBIN "data/samples/sample28.bin", $390d


SampleData29::
	INCBIN "data/samples/sample29.bin", $0000, $3a12


SECTION "ROM Bank $0b9", ROMX[$4000], BANK[$b9]

	INCBIN "data/samples/sample29.bin", $3a12


SampleData2a::
	INCBIN "data/samples/sample2a.bin"


SampleData2b::
	INCBIN "data/samples/sample2b.bin"


SampleData2c::
	INCBIN "data/samples/sample2c.bin", $0000, $0344


SECTION "ROM Bank $0ba", ROMX[$4000], BANK[$ba]

	INCBIN "data/samples/sample2c.bin", $0344


SampleData2d::
	INCBIN "data/samples/sample2d.bin", $0000, $2657


SECTION "ROM Bank $0bb", ROMX[$4000], BANK[$bb]

	INCBIN "data/samples/sample2d.bin", $2657


SampleData2e::
	INCBIN "data/samples/sample2e.bin"


SampleData2f::
	INCBIN "data/samples/sample2f.bin"


SampleData30::
	INCBIN "data/samples/sample30.bin", $0000, $02fc


SECTION "ROM Bank $0bc", ROMX[$4000], BANK[$bc]

	INCBIN "data/samples/sample30.bin", $02fc


SampleData31::
	INCBIN "data/samples/sample31.bin", $0000, $089c


SECTION "ROM Bank $0bd", ROMX[$4000], BANK[$bd]

	INCBIN "data/samples/sample31.bin", $089c


SampleData32::
	INCBIN "data/samples/sample32.bin"


SampleData33::
	INCBIN "data/samples/sample33.bin", $0000, $034a


SECTION "ROM Bank $0be", ROMX[$4000], BANK[$be]

	INCBIN "data/samples/sample33.bin", $034a


SampleData34::
	INCBIN "data/samples/sample34.bin"


SampleData35::
	INCBIN "data/samples/sample35.bin", $0000, $0ce9


SECTION "ROM Bank $0bf", ROMX[$4000], BANK[$bf]

	INCBIN "data/samples/sample35.bin", $0ce9


SampleData36::
	INCBIN "data/samples/sample36.bin", $0000, $258b


SECTION "ROM Bank $0c0", ROMX[$4000], BANK[$c0]

	INCBIN "data/samples/sample36.bin", $258b


SampleData37::
	INCBIN "data/samples/sample37.bin"


SampleData38::
	INCBIN "data/samples/sample38.bin"


SampleData39::
	INCBIN "data/samples/sample39.bin"


SampleData3a::
	INCBIN "data/samples/sample3a.bin", $0000, $1ae6


SECTION "ROM Bank $0c1", ROMX[$4000], BANK[$c1]

	INCBIN "data/samples/sample3a.bin", $1ae6


SampleData3b::
	INCBIN "data/samples/sample3b.bin"


SampleData3c::
	INCBIN "data/samples/sample3c.bin", $0000, $1133


SECTION "ROM Bank $0c2", ROMX[$4000], BANK[$c2]

	INCBIN "data/samples/sample3c.bin", $1133


SampleData3d::
	INCBIN "data/samples/sample3d.bin"


SampleData3e::
	INCBIN "data/samples/sample3e.bin", $0000, $12e2


SECTION "ROM Bank $0c3", ROMX[$4000], BANK[$c3]

	INCBIN "data/samples/sample3e.bin", $12e2


SampleData3f::
	INCBIN "data/samples/sample3f.bin"


SampleData40::
	INCBIN "data/samples/sample40.bin", $0000, $0f9a


SECTION "ROM Bank $0c4", ROMX[$4000], BANK[$c4]

	INCBIN "data/samples/sample40.bin", $0f9a


SampleData41::
	INCBIN "data/samples/sample41.bin", $0000, $1be7


SECTION "ROM Bank $0c5", ROMX[$4000], BANK[$c5]

	INCBIN "data/samples/sample41.bin", $1be7


SampleData42::
	INCBIN "data/samples/sample42.bin"


SampleData43::
	INCBIN "data/samples/sample43.bin", $0000, $1d07


SECTION "ROM Bank $0c6", ROMX[$4000], BANK[$c6]

	INCBIN "data/samples/sample43.bin", $1d07


SampleData44::
	INCBIN "data/samples/sample44.bin"


SampleData45::
	INCBIN "data/samples/sample45.bin", $0000, $21b2


SECTION "ROM Bank $0c7", ROMX[$4000], BANK[$c7]

	INCBIN "data/samples/sample45.bin", $21b2


SampleData46::
	INCBIN "data/samples/sample46.bin"


SampleData47::
	INCBIN "data/samples/sample47.bin", $0000, $09bd


SECTION "ROM Bank $0c8", ROMX[$4000], BANK[$c8]

	INCBIN "data/samples/sample47.bin", $09bd


SampleData48::
	INCBIN "data/samples/sample48.bin"


SampleData49::
	INCBIN "data/samples/sample49.bin", $0000, $23e9


SECTION "ROM Bank $0c9", ROMX[$4000], BANK[$c9]

	INCBIN "data/samples/sample49.bin", $23e9


SampleData4a::
	INCBIN "data/samples/sample4a.bin"


SampleData4b::
	INCBIN "data/samples/sample4b.bin", $0000, $057d


SECTION "ROM Bank $0ca", ROMX[$4000], BANK[$ca]

	INCBIN "data/samples/sample4b.bin", $057d


SampleData4c::
	INCBIN "data/samples/sample4c.bin", $0000, $0c6d


SECTION "ROM Bank $0cb", ROMX[$4000], BANK[$cb]

	INCBIN "data/samples/sample4c.bin", $0c6d


SampleData4d::
	INCBIN "data/samples/sample4d.bin"


SampleData4e::
	INCBIN "data/samples/sample4e.bin", $0000, $0711


SECTION "ROM Bank $0cc", ROMX[$4000], BANK[$cc]

	INCBIN "data/samples/sample4e.bin", $0711


SampleData4f::
	INCBIN "data/samples/sample4f.bin"


SampleData50::
	INCBIN "data/samples/sample50.bin", $0000, $1de0


SECTION "ROM Bank $0cd", ROMX[$4000], BANK[$cd]

	INCBIN "data/samples/sample50.bin", $1de0


SampleData51::
	INCBIN "data/samples/sample51.bin"


SampleData52::
	INCBIN "data/samples/sample52.bin", $0000, $101e


SECTION "ROM Bank $0ce", ROMX[$4000], BANK[$ce]

	INCBIN "data/samples/sample52.bin", $101e


SampleData53::
	INCBIN "data/samples/sample53.bin", $0000, $2c00


SECTION "ROM Bank $0cf", ROMX[$4000], BANK[$cf]

	INCBIN "data/samples/sample53.bin", $2c00


SampleData54::
	INCBIN "data/samples/sample54.bin"


SampleData55::
	INCBIN "data/samples/sample55.bin", $0000, $032c


SECTION "ROM Bank $0d0", ROMX[$4000], BANK[$d0]

	INCBIN "data/samples/sample55.bin", $032c


SampleData56::
	INCBIN "data/samples/sample56.bin", $0000, $084d


SECTION "ROM Bank $0d1", ROMX[$4000], BANK[$d1]

	INCBIN "data/samples/sample56.bin", $084d


SampleData57::
	INCBIN "data/samples/sample57.bin"


SampleData58::
	INCBIN "data/samples/sample58.bin", $0000, $20a2


SECTION "ROM Bank $0d2", ROMX[$4000], BANK[$d2]

	INCBIN "data/samples/sample58.bin", $20a2


SampleData59::
	INCBIN "data/samples/sample59.bin"


SampleData5a::
	INCBIN "data/samples/sample5a.bin", $0000, $0bdc


SECTION "ROM Bank $0d3", ROMX[$4000], BANK[$d3]

	INCBIN "data/samples/sample5a.bin", $0bdc


SampleData5b::
	INCBIN "data/samples/sample5b.bin", $0000, $23ee


SECTION "ROM Bank $0d4", ROMX[$4000], BANK[$d4]

	INCBIN "data/samples/sample5b.bin", $23ee


SampleData5c::
	INCBIN "data/samples/sample5c.bin"


SampleData5d::
	INCBIN "data/samples/sample5d.bin", $0000, $0cbf


SECTION "ROM Bank $0d5", ROMX[$4000], BANK[$d5]

	INCBIN "data/samples/sample5d.bin", $0cbf


SampleData5e::
	INCBIN "data/samples/sample5e.bin", $0000, $1088


SECTION "ROM Bank $0d6", ROMX[$4000], BANK[$d6]

	INCBIN "data/samples/sample5e.bin", $1088


SampleData5f::
	INCBIN "data/samples/sample5f.bin", $0000, $0345


SECTION "ROM Bank $0d7", ROMX[$4000], BANK[$d7]

	INCBIN "data/samples/sample5f.bin", $0345


SampleData60::
	INCBIN "data/samples/sample60.bin", $0000, $14a5


SECTION "ROM Bank $0d8", ROMX[$4000], BANK[$d8]

	INCBIN "data/samples/sample60.bin", $14a5


SampleData61::
	INCBIN "data/samples/sample61.bin", $0000, $1fc3


SECTION "ROM Bank $0d9", ROMX[$4000], BANK[$d9]

	INCBIN "data/samples/sample61.bin", $1fc3


SampleData62::
	INCBIN "data/samples/sample62.bin", $0000, $314f


SECTION "ROM Bank $0da", ROMX[$4000], BANK[$da]

	INCBIN "data/samples/sample62.bin", $314f


SampleData63::
	INCBIN "data/samples/sample63.bin"


SampleData64::
	INCBIN "data/samples/sample64.bin", $0000, $079c


SECTION "ROM Bank $0db", ROMX[$4000], BANK[$db]

	INCBIN "data/samples/sample64.bin", $079c


SampleData65::
	INCBIN "data/samples/sample65.bin", $0000, $2981


SECTION "ROM Bank $0dc", ROMX[$4000], BANK[$dc]

	INCBIN "data/samples/sample65.bin", $2981


SampleData66::
	INCBIN "data/samples/sample66.bin"


SampleData67::
	INCBIN "data/samples/sample67.bin", $0000, $0da2


SECTION "ROM Bank $0dd", ROMX[$4000], BANK[$dd]

	INCBIN "data/samples/sample67.bin", $0da2


SampleData68::
	INCBIN "data/samples/sample68.bin", $0000, $353d


SECTION "ROM Bank $0de", ROMX[$4000], BANK[$de]

	INCBIN "data/samples/sample68.bin", $353d


SampleData69::
	INCBIN "data/samples/sample69.bin"


SampleData6a::
	INCBIN "data/samples/sample6a.bin", $0000, $08b0


SECTION "ROM Bank $0df", ROMX[$4000], BANK[$df]

	INCBIN "data/samples/sample6a.bin", $08b0


SampleData6b::
	INCBIN "data/samples/sample6b.bin", $0000, $270f


SECTION "ROM Bank $0e0", ROMX[$4000], BANK[$e0]

	INCBIN "data/samples/sample6b.bin", $270f


SampleData6c::
	INCBIN "data/samples/sample6c.bin", $0000, $3100


SECTION "ROM Bank $0e1", ROMX[$4000], BANK[$e1]

	INCBIN "data/samples/sample6c.bin", $3100


SampleData6d::
	INCBIN "data/samples/sample6d.bin"


SampleData6e::
	INCBIN "data/samples/sample6e.bin", $0000, $16a8


SECTION "ROM Bank $0e2", ROMX[$4000], BANK[$e2]

	INCBIN "data/samples/sample6e.bin", $16a8


SampleData6f::
	INCBIN "data/samples/sample6f.bin", $0000, $220b


SECTION "ROM Bank $0e3", ROMX[$4000], BANK[$e3]

	INCBIN "data/samples/sample6f.bin", $220b


SampleData70::
	INCBIN "data/samples/sample70.bin", $0000, $2ed3


SECTION "ROM Bank $0e4", ROMX[$4000], BANK[$e4]

	INCBIN "data/samples/sample70.bin", $2ed3


SampleData71::
	INCBIN "data/samples/sample71.bin"


SampleData72::
	INCBIN "data/samples/sample72.bin", $0000, $083c


SECTION "ROM Bank $0e5", ROMX[$4000], BANK[$e5]

	INCBIN "data/samples/sample72.bin", $083c


SampleData73::
	INCBIN "data/samples/sample73.bin", $0000, $223a


SECTION "ROM Bank $0e6", ROMX[$4000], BANK[$e6]

	INCBIN "data/samples/sample73.bin", $223a


SampleData74::
	INCBIN "data/samples/sample74.bin", $0000, $1876


SECTION "ROM Bank $0e7", ROMX[$4000], BANK[$e7]

	INCBIN "data/samples/sample74.bin", $1876


SampleData75::
	INCBIN "data/samples/sample75.bin", $0000, $08ba


SECTION "ROM Bank $0e8", ROMX[$4000], BANK[$e8]

	INCBIN "data/samples/sample75.bin", $08ba


SampleData76::
	INCBIN "data/samples/sample76.bin", $0000, $277b


SECTION "ROM Bank $0e9", ROMX[$4000], BANK[$e9]

	INCBIN "data/samples/sample76.bin", $277b


SampleData77::
	INCBIN "data/samples/sample77.bin"


SampleData78::
	INCBIN "data/samples/sample78.bin", $0000, $110c


SECTION "ROM Bank $0ea", ROMX[$4000], BANK[$ea]

	INCBIN "data/samples/sample78.bin", $110c


SampleData79::
	INCBIN "data/samples/sample79.bin"


SampleData7a::
	INCBIN "data/samples/sample7a.bin", $0000, $0371


SECTION "ROM Bank $0eb", ROMX[$4000], BANK[$eb]

	INCBIN "data/samples/sample7a.bin", $0371


SampleData7b::
	INCBIN "data/samples/sample7b.bin", $0000, $2c8b


SECTION "ROM Bank $0ec", ROMX[$4000], BANK[$ec]

	INCBIN "data/samples/sample7b.bin", $2c8b


SampleData7c::
	INCBIN "data/samples/sample7c.bin", $0000, $33e2


SECTION "ROM Bank $0ed", ROMX[$4000], BANK[$ed]

	INCBIN "data/samples/sample7c.bin", $33e2


SampleData7d::
	INCBIN "data/samples/sample7d.bin"


SampleData7e::
	INCBIN "data/samples/sample7e.bin", $0000, $1218


SECTION "ROM Bank $0ee", ROMX[$4000], BANK[$ee]

	INCBIN "data/samples/sample7e.bin", $1218


SampleData7f::
	INCBIN "data/samples/sample7f.bin"


SampleData80::
	INCBIN "data/samples/sample80.bin"


SampleData81::
	INCBIN "data/samples/sample81.bin", $0000, $04d1


SECTION "ROM Bank $0ef", ROMX[$4000], BANK[$ef]

	INCBIN "data/samples/sample81.bin", $04d1


SampleData82::
	INCBIN "data/samples/sample82.bin", $0000, $25ef


SECTION "ROM Bank $0f0", ROMX[$4000], BANK[$f0]

	INCBIN "data/samples/sample82.bin", $25ef


SampleData83::
	INCBIN "data/samples/sample83.bin", $0000, $212e


SECTION "ROM Bank $0f1", ROMX[$4000], BANK[$f1]

	INCBIN "data/samples/sample83.bin", $212e


SampleData84::
	INCBIN "data/samples/sample84.bin", $0000, $2f82


SECTION "ROM Bank $0f2", ROMX[$4000], BANK[$f2]

	INCBIN "data/samples/sample84.bin", $2f82


SampleData85::
	INCBIN "data/samples/sample85.bin", $0000, $2f02


SECTION "ROM Bank $0f3", ROMX[$4000], BANK[$f3]

	INCBIN "data/samples/sample85.bin", $2f02


SampleData86::
	INCBIN "data/samples/sample86.bin"


SampleData87::
	INCBIN "data/samples/sample87.bin", $0000, $220e


SECTION "ROM Bank $0f4", ROMX[$4000], BANK[$f4]

	INCBIN "data/samples/sample87.bin", $220e


SampleData88::
	INCBIN "data/samples/sample88.bin"


SampleData89::
	INCBIN "data/samples/sample89.bin", $0000, $21c3


SECTION "ROM Bank $0f5", ROMX[$4000], BANK[$f5]

	INCBIN "data/samples/sample89.bin", $21c3


SampleData8a::
	INCBIN "data/samples/sample8a.bin", $0000, $0775


SECTION "ROM Bank $0f6", ROMX[$4000], BANK[$f6]

	INCBIN "data/samples/sample8a.bin", $0775


SampleData8b::
	INCBIN "data/samples/sample8b.bin", $0000, $3488


SECTION "ROM Bank $0f7", ROMX[$4000], BANK[$f7]

	INCBIN "data/samples/sample8b.bin", $3488


SampleData8c::
	INCBIN "data/samples/sample8c.bin"


SampleData8d::
	INCBIN "data/samples/sample8d.bin", $0000, $1118


SECTION "ROM Bank $0f8", ROMX[$4000], BANK[$f8]

	INCBIN "data/samples/sample8d.bin", $1118


SampleData8e::
	INCBIN "data/samples/sample8e.bin", $0000, $0e66


SECTION "ROM Bank $0f9", ROMX[$4000], BANK[$f9]

	INCBIN "data/samples/sample8e.bin", $0e66


SampleData8f::
	INCBIN "data/samples/sample8f.bin"


SampleData90::
	INCBIN "data/samples/sample90.bin"


SampleData91::
	INCBIN "data/samples/sample91.bin", $0000, $0509


SECTION "ROM Bank $0fa", ROMX[$4000], BANK[$fa]

	INCBIN "data/samples/sample91.bin", $0509


SampleData92::
	INCBIN "data/samples/sample92.bin", $0000, $216a


SECTION "ROM Bank $0fb", ROMX[$4000], BANK[$fb]

	INCBIN "data/samples/sample92.bin", $216a


SampleData93::
	INCBIN "data/samples/sample93.bin"


SampleData94::
	INCBIN "data/samples/sample94.bin", $0000, $15cb


SECTION "ROM Bank $0fc", ROMX[$4000], BANK[$fc]

	INCBIN "data/samples/sample94.bin", $15cb, $4000


SECTION "ROM Bank $0fd", ROMX[$4000], BANK[$fd]

	INCBIN "data/samples/sample94.bin", $55cb


SampleData95::
	INCBIN "data/samples/sample95.bin"


SampleData96::
	INCBIN "data/samples/sample96.bin", $0000, $1ae7


SECTION "ROM Bank $0fe", ROMX[$4000], BANK[$fe]

	INCBIN "data/samples/sample96.bin", $1ae7


SampleData97::
	INCBIN "data/samples/sample97.bin"
