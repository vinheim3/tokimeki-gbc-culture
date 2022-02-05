; --
; -- Text-related
; --

d3d0 - data copy struct
mentions copying $df in d3dc to $8502
$8500 chosen in Func_03_409f called by 3:4704, with d81c == 28, $8000+$28*20 = $8500
d81c==$28 at 3:43a4

d3dc is loaded with $df from d432 (EnqueueCharDataCopy) <- Call_003_4826

d432 is loaded with $df from d4b1 (SetOrCopyCharTileData/SetOrCopyCharBitplane) <- Call_003_48f0

8500/d3da/d430
$FF $FF $DF $DF $D0 $D0 $DE $DE $DE $DE $A0 $A0 $9E $9E $5E $5E
$D0 $D0 $DE $DE $DE $DE $DD $DD $D3 $D3 $FF $FF $FF $FF $FF $FF

d4b0
$00     $20     $2F     $21     $21     $5F     $61     $A1
$2F     $21     $21     $22     $2C     $00

75:4447
        $20     $2F     $21     $21     $5F     $61     $A1
$2F     $21     $21     $22     $2C


; ----
1f:0967 ->
1e:2171 -> 1e:217d (ScriptsTexts:idx 5=22:b448) -> 22:b448 -> 22:b593

22:b593 (8a:7593) -> 1e:6b37 ???
1e:6b37 (table address) -> 1e:6c1e (table entry with 6c1e)

setting script addr/bank (d806/7 d808) to 1e:6c1e, from 1e:6b5b


; ----
; ---- from 22:b594 to 1e:6c1e, its unrelated
???
c:4019 calls DEHLequTaskParams
DEHLequTaskParams calls Call_003_55ab under jr_003_58e2
Call_003_55ab reads $6e from 22:b593 (8a:7593)

7c:4961 has c001, task 1's params pull $a00b (param $0b),
and $00a6 (get val from script table 1) DEHLequTaskParams calls Call_003_55ab,
which gets offset 14b from a6*2-1
ScriptsTexts idx 4 = 22:b448, + offset 14b = 22:b593

c:4019 refers to TasksTable
TasksTable table idx1 = TaskHandler_001
TaskHandler_001 calls Call_00c_409f
c:409f refers to CharacterNames where it sets addr to 1e:6b37
CharacterNames table idx $12 = 79:6c1e
$12 = Data_0c_5af8 table 1-idx $0b (from wTaskParam0_word0)


; -- enqueue char calls
1st text - 79:6c1e
top-left right angle ($63) - 8a:7594 - 3:4bd4(from c:417e) (when text byte != $2f)
next text - 8a:7593 


; --
; -- Graphics
; --

Call_000_0c11 gets DisplayTileDataFromCtrlBytes (5e:7cab to 8a40) from c1df+
this feeds into Call_000_0e7a, which displays tile data because dest is in vram region

0:37db->Call_000_35cd stores 5e:7cab from 2:5c39, param BC=8a40,A=1
todo_GetTileDataCtrlBytesDestAddr sets BC to 8a40

2:5c39 is derived from Call_000_384c, 2:52e1+12b*8, 12b from c116/5

12b is copied to c116/5 from d0b1/0 at Call_00c_5503 (de)
DEHLequTaskParams using e3 at 7c:495e pulls in param $012b big-endian


; --
; -- Tasks
; --

starts at script 4, offset 75, ie 7c:4955
Call_003_5d60 reads $c13b from 7c:4953 (script task 13b)


; ---

ExecuteScript actually executes script bytes from table 0
table 1 contains conversational text
table 2 contains a single word

Call_003_4cca processes text


Scripts can return FFFFFF or bit 7 set on 3rd (keep executing)
or LHB (B:HL being subscript to execute)