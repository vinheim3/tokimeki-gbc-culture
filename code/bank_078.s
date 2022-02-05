; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "B78 $6000", ROMX[$6000], BANK[$78]

MainScripts::
	ScriptSrc0Idx MainScript00
	ScriptSrc0Idx MainScript01
	ScriptSrc0Idx MainScript02
	db $a9, $f9, $1e
	ScriptSrc0Idx MainScript04
	ScriptSrc0Idx MainScript05
	db $fa, $10, $1f
	db $f3, $12, $1f
	db $ba, $16, $1f
	db $ab, $17, $1f
	db $a2, $18, $1f
	db $9c, $1a, $1f
	db $6d, $1c, $1f
	db $58, $1d, $1f
	db $e5, $26, $1f
	db $2f, $2a, $1f
	db $05, $3a, $1f
	db $94, $3d, $1f
	db $b5, $56, $1f
	db $69, $75, $1f
	db $cb, $77, $1f
	db $81, $7b, $1f
	db $3a, $94, $1f
	db $cc, $ae, $1f
	db $53, $b1, $1f
	db $6c, $b4, $1f
	db $c9, $c8, $1f
	db $ee, $dc, $1f
	db $4b, $df, $1f
	db $d4, $e2, $1f
	db $c2, $fb, $1f
	db $58, $0d, $20
	db $84, $0f, $20
	db $eb, $13, $20
	db $98, $23, $20
	db $75, $36, $20
	db $f8, $38, $20
	db $db, $3c, $20
	db $3a, $4b, $20
	db $ed, $5d, $20
	db $5c, $60, $20
	db $b3, $63, $20
	db $bd, $72, $20
	db $87, $85, $20
	db $f3, $87, $20
	db $79, $8d, $20
	db $56, $9c, $20
	db $ce, $ad, $20
	db $fe, $af, $20
	db $4c, $b1, $20
	db $8e, $bf, $20
	db $3c, $c1, $20
	db $a3, $c1, $20
	db $75, $c3, $20
	db $02, $d2, $20
	db $33, $de, $20
	db $d3, $f1, $20
	db $e3, $f4, $20
	db $fd, $ff, $20
	db $c6, $03, $21
	db $15, $1a, $21
	db $36, $1e, $21
	db $b3, $28, $21
	db $ae, $31, $21
	db $1a, $3d, $21
	db $17, $46, $21
	db $90, $50, $21
	db $7c, $56, $21
	db $ba, $5e, $21
	db $c3, $64, $21
	db $00, $6a, $21
	db $f3, $7c, $21
	db $b9, $8c, $21
	db $35, $ac, $21
	db $3f, $af, $21
	db $05, $bc, $21
	db $65, $c4, $21
	db $61, $cb, $21
	db $d1, $cf, $21
	db $98, $d2, $21
	db $e8, $d8, $21
	db $f2, $da, $21
	db $c9, $e0, $21
	db $69, $e5, $21
	db $29, $e6, $21
	db $64, $f5, $21
	db $85, $f6, $21
	db $a3, $fa, $21
	db $16, $ff, $21
	db $77, $02, $22
	db $fb, $06, $22
	db $5b, $0b, $22
	db $dd, $0f, $22
	db $0e, $16, $22
	db $ba, $18, $22
	db $7b, $1b, $22
	db $b1, $1f, $22
	db $52, $23, $22
	db $92, $26, $22
	db $7f, $29, $22
	db $e2, $2c, $22
	db $c1, $2f, $22
	db $6d, $32, $22
	db $f4, $33, $22
	db $d4, $34, $22
	db $42, $38, $22
	db $36, $3b, $22
	db $12, $3e, $22
	db $2c, $41, $22
	db $0c, $44, $22
	db $ca, $46, $22
	db $6f, $4a, $22
	db $61, $4e, $22
	db $01, $59, $22
	db $c1, $5a, $22
	db $cf, $5b, $22
	db $cf, $5e, $22
	db $e8, $60, $22
	db $c5, $62, $22
	db $b8, $64, $22
	db $d9, $66, $22
	db $5b, $68, $22
	db $2d, $6a, $22

ScriptsTexts::
	db $57, $6c, $22
	db $38, $93, $22
	db $ce, $9f, $22
	db $be, $a4, $22
	ScriptSrc1Idx Data_8a_7449
	ScriptSrc1Idx Data_8a_7ac6
	db $d9, $c2, $22
	db $11, $c6, $22
	db $33, $cb, $22
	db $d2, $cc, $22
	db $f3, $cd, $22
	db $30, $d2, $22
	db $36, $d6, $22
	db $f8, $d7, $22
	db $9c, $d9, $22
	db $9d, $d9, $22
	db $98, $e2, $22
	db $f7, $e4, $22
	db $54, $00, $23
	db $a2, $20, $23
	db $30, $22, $23
	db $cf, $24, $23
	db $54, $3f, $23
	db $10, $5b, $23
	db $df, $5c, $23
	db $61, $5f, $23
	db $cd, $75, $23
	db $5a, $88, $23
	db $28, $8a, $23
	db $b9, $8c, $23
	db $23, $a4, $23
	db $0e, $b4, $23
	db $9e, $b5, $23
	db $c4, $b8, $23
	db $2c, $c9, $23
	db $3c, $dc, $23
	db $6c, $de, $23
	db $f3, $e0, $23
	db $f6, $ed, $23
	db $0a, $fc, $23
	db $c7, $fd, $23
	db $f0, $ff, $23
	db $ee, $0f, $24
	db $ef, $23, $24
	db $77, $25, $24
	db $ce, $2a, $24
	db $ea, $39, $24
	db $c3, $48, $24
	db $1f, $4a, $24
	db $a1, $4a, $24
	db $e1, $57, $24
	db $32, $58, $24
	db $83, $58, $24
	db $3e, $5a, $24
	db $4f, $69, $24
	db $fd, $76, $24
	db $2a, $8a, $24
	db $3d, $8d, $24
	db $ed, $a2, $24
	db $60, $a8, $24
	db $2a, $c6, $24
	db $03, $cc, $24
	db $66, $d7, $24
	db $b8, $e8, $24
	db $8f, $f5, $24
	db $93, $02, $25
	db $6d, $11, $25
	db $f8, $1b, $25
	db $d8, $23, $25
	db $db, $2a, $25
	db $6b, $2f, $25
	db $6e, $42, $25
	db $9a, $4a, $25
	db $fa, $66, $25
	db $aa, $6d, $25
	db $56, $81, $25
	db $c8, $88, $25
	db $54, $8f, $25
	db $65, $92, $25
	db $82, $96, $25
	db $3d, $9d, $25
	db $b5, $a1, $25
	db $28, $ab, $25
	db $31, $af, $25
	db $bf, $b0, $25
	db $fe, $c2, $25
	db $2c, $c4, $25
	db $eb, $c9, $25
	db $aa, $cc, $25
	db $f3, $d3, $25
	db $7f, $dd, $25
	db $ec, $e6, $25
	db $ae, $ef, $25
	db $1d, $f4, $25
	db $71, $f6, $25
	db $19, $f9, $25
	db $20, $ff, $25
	db $42, $04, $26
	db $6e, $08, $26
	db $84, $0c, $26
	db $46, $10, $26
	db $27, $15, $26
	db $bd, $16, $26
	db $c0, $17, $26
	db $09, $18, $26
	db $73, $1c, $26
	db $45, $20, $26
	db $5a, $23, $26
	db $c3, $27, $26
	db $da, $2b, $26
	db $68, $2f, $26
	db $82, $34, $26
	db $b9, $39, $26
	db $b6, $44, $26
	db $0e, $47, $26
	db $7e, $48, $26
	db $95, $4c, $26
	db $98, $4f, $26
	db $7a, $52, $26
	db $16, $55, $26
	db $8d, $58, $26
	db $ba, $5a, $26
	db $3b, $5d, $26

ScriptTable2::
	db $22, $cf, $1e
	db $36, $eb, $1e
	db $a7, $f9, $1e
	db $de, $08, $1f
	ScriptSrc0Idx Data_7c_4c87
	db $f8, $10, $1f
	db $f1, $12, $1f
	db $b8, $16, $1f
	db $a9, $17, $1f
	db $a0, $18, $1f
	db $9a, $1a, $1f
	db $6b, $1c, $1f
	db $56, $1d, $1f
	db $e3, $26, $1f
	db $2d, $2a, $1f
	db $03, $3a, $1f
	db $92, $3d, $1f
	db $b3, $56, $1f
	db $67, $75, $1f
	db $c9, $77, $1f
	db $7f, $7b, $1f
	db $38, $94, $1f
	db $ca, $ae, $1f
	db $51, $b1, $1f
	db $6a, $b4, $1f
	db $c7, $c8, $1f
	db $ec, $dc, $1f
	db $49, $df, $1f
	db $d2, $e2, $1f
	db $c0, $fb, $1f
	db $56, $0d, $20
	db $82, $0f, $20
	db $e9, $13, $20
	db $96, $23, $20
	db $73, $36, $20
	db $f6, $38, $20
	db $d9, $3c, $20
	db $38, $4b, $20
	db $eb, $5d, $20
	db $5a, $60, $20
	db $b1, $63, $20
	db $bb, $72, $20
	db $85, $85, $20
	db $f1, $87, $20
	db $77, $8d, $20
	db $54, $9c, $20
	db $cc, $ad, $20
	db $fc, $af, $20
	db $4a, $b1, $20
	db $8c, $bf, $20
	db $3a, $c1, $20
	db $a1, $c1, $20
	db $73, $c3, $20
	db $00, $d2, $20
	db $31, $de, $20
	db $d1, $f1, $20
	db $e1, $f4, $20
	db $fb, $ff, $20
	db $c4, $03, $21
	db $13, $1a, $21
	db $34, $1e, $21
	db $b1, $28, $21
	db $ac, $31, $21
	db $18, $3d, $21
	db $15, $46, $21
	db $8e, $50, $21
	db $7a, $56, $21
	db $b8, $5e, $21
	db $c1, $64, $21
	db $fe, $69, $21
	db $f1, $7c, $21
	db $b7, $8c, $21
	db $33, $ac, $21
	db $3d, $af, $21
	db $03, $bc, $21
	db $63, $c4, $21
	db $5f, $cb, $21
	db $cf, $cf, $21
	db $96, $d2, $21
	db $e6, $d8, $21
	db $f0, $da, $21
	db $c7, $e0, $21
	db $67, $e5, $21
	db $27, $e6, $21
	db $62, $f5, $21
	db $83, $f6, $21
	db $a1, $fa, $21
	db $14, $ff, $21
	db $75, $02, $22
	db $f9, $06, $22
	db $59, $0b, $22
	db $db, $0f, $22
	db $0c, $16, $22
	db $b8, $18, $22
	db $79, $1b, $22
	db $af, $1f, $22
	db $50, $23, $22
	db $90, $26, $22
	db $7d, $29, $22
	db $e0, $2c, $22
	db $bf, $2f, $22
	db $6b, $32, $22
	db $f2, $33, $22
	db $d2, $34, $22
	db $40, $38, $22
	db $34, $3b, $22
	db $10, $3e, $22
	db $2a, $41, $22
	db $0a, $44, $22
	db $c8, $46, $22
	db $6d, $4a, $22
	db $5f, $4e, $22
	db $ff, $58, $22
	db $bf, $5a, $22
	db $cd, $5b, $22
	db $cd, $5e, $22
	db $e6, $60, $22
	db $c3, $62, $22
	db $b6, $64, $22
	db $d7, $66, $22
	db $59, $68, $22
	db $2b, $6a, $22
	db $55, $6c, $22


TextLargeDictTable::
	dw $68fd
	dw $690b
	dw $6919
	dw $692e
	dw TextLargeDict_004
	dw $6a10
	dw $69fb
	dw $6b0c
	dw TextLargeDict_008_BloodType
	dw Data_78_70b3-$4000
	dw $30c8
	dw $30df
	dw $30f0
	dw $3103
	dw $3119
	dw $312a
	dw $313b
	dw $314e
	dw $315f
	dw $3173
	dw $3183
	dw $3192
	dw $31a3
	dw $31b4
	dw $31c6
	dw $31db
	dw $31eb
	dw $31fa
	dw $3209
	dw $321c
	dw $322e
	dw $3240
	dw $3253
	dw $326a
	dw $327c
	dw $3291
	dw $32a2
	dw $32b3
	dw $32c3
	dw $32d4
	dw $32e5
	dw $32f6
	dw $330b
	dw $3320
	dw $3333
	dw $3343
	dw $3353
	dw $3368
	dw $337b
	dw $338c
	dw $339e
	dw $33b2
	dw $33c3
	dw $33d8
	dw $33e6
	dw $33f5
	dw $3406
	dw $3415
	dw $3425
	dw $3434
	dw $3444
	dw $3455
	dw $3464
	dw $3473
	dw $3483
	dw $3493
	dw $34a2
	dw $34b0
	dw $34bf
	dw $34d1
	dw TextLargeDict_046-$4000
	dw $34f4
	dw $3507
	dw $3517
	dw $3528
	dw $3539
	dw $354a
	dw $355d
	dw $356d
	dw $357d
	dw $358d
	dw $359a
	dw $35ac
	dw $35be
	dw $35cf
	dw $35de
	dw $35ed
	dw $35fd
	dw $360d
	dw $361c
	dw $362d
	dw $363a
	dw $3649
	dw $365a
	dw $366a
	dw $367b
	dw $3689
	dw $3698
	dw $36a9
	dw $36b8
	dw $36ca
	dw $36d9
	dw $36e8
	dw $36f5
	dw $3706
	dw $3717
	dw $3724
	dw $3732
	dw $3743
	dw $3751
	dw $3761
	dw $3774
	dw $3781
	dw $378f
	dw $379c
	dw $37a9
	dw $37bc
	dw $37cc
	dw $37db
	dw $37eb
	dw $37fc
	dw $3812
	dw $3822
	dw $3831
	dw $383f
	dw $384e
	dw $385f
	dw $386f
	dw $3882
	dw $388f
	dw $389d
	dw $38ab
	dw $38ba
	dw $38ca
	dw $38d7
	dw $38e5
	dw $38f1
	dw $38ff
	dw $390e
	dw $391d
	dw $392d
	dw $393b
	dw $3948
	dw $3955
	dw $3964
	dw $3973
	dw $3983
	dw $3990
	dw $399d
	dw $39aa
	dw $39ba
	dw $39c8
	dw $39d8
	dw $39e7
	dw $39f4
	dw $3a04
	dw $3a13
	dw $3a1f
	dw $3a2c
	dw $3a3a
	dw $3a47
	dw $3a56
	dw $3a63
	dw $3a72
	dw $3a7f
	dw $3a8b
	dw $3a97
	dw $3aa4
	dw $3ab2
	dw $3abf
	dw $3acf
	dw $3add
	dw $3ae9
	dw $3af7
	dw $3b05
	dw $3b16
	dw $3b25
	dw $3b34
	dw $3b41
	dw $3b50
	dw $3b5c
	dw $3b68
	dw $3b76
	dw $3b84
	dw $3b94
	dw $3ba1
	dw $3bad
	dw $3bbb
	dw $3bc8
	dw $3bd8
	dw $3be8
	dw $3bf4
	dw $3c04
	dw $3c12
	dw $3c20
	dw $3c2f
	dw $3c3f
	dw $3c4c
	dw $3c5c
	dw $3c69
	dw $3c7b
	dw TextLargeDict_0c9-$4000
	dw $3c99
	dw $3cab
	dw $3cba
	dw $3cca
	dw $3cdd
	dw $3ceb
	dw $3cfc
	dw $3d0a
	dw $3d18
	dw $3d24
	dw $3d30
	dw $3d3c
	dw $3d4a
	dw $3d57
	dw $3d64
	dw $3d71
	dw $3d7f
	dw $3d8c
	dw $3d9c
	dw $3dab
	dw $3db6
	dw $3dc1
	dw $3dce
	dw $3dda
	dw $3de6
	dw $3df4
	dw $3e00
	dw $3e0f
	dw $3e1b
	dw $3e29
	dw $3e34
	dw $3e40
	dw $3e4d
	dw $3e59
	dw $3e64
	dw $3e6f
	dw $3e7c
	dw $3e88
	dw $3e93
	dw $3ea1
	dw $3eae
	dw $3eb9
	dw $3ec7
	dw $3ed6
	dw $3ee2
	dw $3eef
	dw $3efb
	dw $3f08
	dw $3f14
	dw $3f20
	dw $3f2b
	dw $3f38
	dw $3f44
	dw $3f51
	dw $3f60
	dw $3f6c
	dw $3f7a
	dw $3f86
	dw $3f94
	dw $3f9f
	dw $3faa
	dw $3fb6
	dw $3fc3
	dw $3fce
	dw $3fdc
	dw $3fe7
	dw $3ff5
	dw $4001
	dw $400e
	dw $401a
	dw $402c
	dw $403c
	dw $4049
	dw $4054
	dw $4060
	dw $406c
	dw $407b
	dw $4088
	dw $4093
	dw $409e
	dw $40a9
	dw $40b5
	dw $40c1
	dw $40cd
	dw $40db
	dw $40e9
	dw $40f7
	dw $4103
	dw $410e
	dw $4118
	dw $4122
	dw $412d
	dw $4138
	dw $4145
	dw $414f
	dw $415d
	dw $4169
	dw $4173
	dw $417e
	dw $4188
	dw $4192
	dw $419d
	dw $41ab
	dw $41b5
	dw $41c2
	dw $41d2
	dw $41dd
	dw $41e8
	dw $41f5
	dw $4204
	dw $420e
	dw $4218
	dw $4225
	dw $422f
	dw $423b
	dw $4245
	dw $4251
	dw $425e
	dw $426b
	dw $4275
	dw $4283
	dw $428d
	dw $4298
	dw $42a3
	dw $42ad
	dw $42ba
	dw $42c5
	dw $42d0
	dw $42da
	dw $42e4
	dw $42ef
	dw $42f9
	dw $4304
	dw $430f
	dw $4319
	dw $4323
	dw $432f
	dw $4339
	dw $4344
	dw $434f
	dw $435b
	dw $4367
	dw $4375
	dw $4381
	dw $438e
	dw $439a
	dw $43a5
	dw $43af
	dw $43b9
	dw $43c3
	dw $43d0
	dw $43de
	dw $43e9
	dw $43f4
	dw $4400
	dw $440c
	dw $4417
	dw $4422
	dw $442d
	dw $443a
	dw $4447
	dw $4453
	dw $445f
	dw $446a
	dw $4477
	dw $4485
	dw $4491
	dw $449d
	dw $44aa
	dw $44b6
	dw $44c0
	dw $44cf
	dw $44dd
	dw $44ea
	dw $44f5
	dw $4501
	dw $450c
	dw $4516
	dw $4524
	dw $452f
	dw $4539
	dw $4547
	dw $4551
	dw $455b
	dw $456b
	dw $457c
	dw $4586
	dw $4592
	dw $459c
	dw $45a6
	dw $45b0
	dw $45bc
	dw $45c6
	dw $45d3
	dw $45e0
	dw $45ec
	dw $45f8
	dw $4604
	dw $4610
	dw $4621
	dw $462d
	dw $4638
	dw $4644
	dw $464f
	dw $465b
	dw $4666
	dw $4671
	dw $467c
	dw $4687
	dw $4692
	dw $469e
	dw $46ab
	dw $46b6
	dw $46c3
	dw $46cd
	dw $46d8
	dw $46e4
	dw $46ef
	dw $46f9
	dw $4702
	dw $470d
	dw $4718
	dw $4722
	dw $4730
	dw $473a
	dw $4743
	dw $474d
	dw $4756
	dw $4760
	dw $476a
	dw $4773
	dw $477d
	dw $4786
	dw $478f
	dw $4798
	dw $47a1
	dw $47aa
	dw $47b3
	dw $47bc
	dw $47c6
	dw $47d3
	dw $47e0
	dw $47ea
	dw $47f3
	dw $47fc
	dw $4806
	dw $480f
	dw $4819
	dw $4822
	dw $482b
	dw $4834
	dw $483f
	dw $484a
	dw $4853
	dw $485d
	dw $4866
	dw $4874
	dw $487d
	dw $4888
	dw $4893
	dw $489d
	dw $48a7
	dw $48b0
	dw $48ba
	dw $48c3
	dw $48cc
	dw $48d5
	dw $48de
	dw $48eb
	dw $48f7
	dw $4901
	dw $490d
	dw $4917
	dw $4924
	dw $4931
	dw $493b
	dw $4944
	dw $494f
	dw $4958
	dw $4962
	dw $496b
	dw $4975
	dw $4983
	dw $4992
	dw $499b
	dw $49a5
	dw $49b0
	dw $49bd
	dw $49c7
	dw $49d1
	dw $49de
	dw $49e8
	dw $49f3
	dw $49fd
	dw $4a08
	dw $4a12
	dw $4a1f
	dw $4a29
	dw $4a32
	dw $4a3c
	dw $4a46
	dw $4a4f
	dw $4a5a
	dw $4a64
	dw $4a6d
	dw $4a76
	dw $4a81
	dw $4a8f
	dw $4a9c
	dw $4aa9
	dw $4ab2
	dw $4abd
	dw $4ac7
	dw $4ad1
	dw $4adb
	dw $4ae9
	dw $4af2
	dw $4afb
	dw $4b06
	dw $4b10
	dw $4b1a
	dw $4b27
	dw $4b34
	dw $4b3d
	dw $4b49
	dw $4b54
	dw $4b5f
	dw $4b68
	dw $4b71
	dw $4b7a
	dw $4b85
	dw $4b91
	dw $4b9d
	dw $4ba7
	dw $4bb2
	dw $4bc0
	dw $4bcd
	dw $4bd7
	dw $4be1
	dw $4beb
	dw $4bf4
	dw $4bfc
	dw $4c04
	dw $4c0c
	dw $4c16
	dw $4c21
	dw $4c2a
	dw $4c34
	dw $4c3e
	dw $4c46
	dw $4c4e
	dw $4c58
	dw $4c64
	dw $4c6d
	dw $4c78
	dw $4c86
	dw $4c8e
	dw $4c99
	dw $4ca1
	dw $4ca9
	dw $4cb1
	dw $4cb9
	dw $4cc1
	dw $4cca
	dw $4cd2
	dw $4cda
	dw $4ce6
	dw $4cee
	dw $4cfd
	dw $4d07
	dw $4d11
	dw $4d1a
	dw $4d22
	dw $4d2b
	dw $4d33
	dw $4d41
	dw $4d4d
	dw $4d5b
	dw $4d66
	dw $4d6e
	dw $4d78
	dw $4d81
	dw $4d8b
	dw $4d95
	dw $4d9d
	dw $4da5
	dw $4dae
	dw $4db7
	dw $4dbf
	dw $4dc9
	dw $4dd3
	dw $4dde
	dw $4de6
	dw $4dee
	dw $4df8
	dw $4e04
	dw $4e11
	dw $4e1d
	dw $4e26
	dw $4e2f
	dw $4e3a
	dw $4e44
	dw $4e4c
	dw $4e54
	dw $4e5d
	dw $4e67
	dw $4e72
	dw $4e7b
	dw $4e85
	dw $4e8e
	dw $4e97
	dw $4ea3
	dw $4eaf
	dw $4eba
	dw $4ec3
	dw $4ecc
	dw $4ed4
	dw $4edf
	dw $4eeb
	dw $4ef4
	dw $4efd
	dw $4f06
	dw $4f10
	dw $4f1c
	dw $4f26
	dw $4f34
	dw $4f3e
	dw $4f47
	dw $4f51
	dw $4f59
	dw $4f63
	dw $4f6d
	dw $4f75
	dw $4f7d
	dw $4f86
	dw $4f90
	dw $4f99
	dw $4fa2
	dw $4fac
	dw $4fb6
	dw $4fc1
	dw $4fcd
	dw $4fd9
	dw $4fe6
	dw $4fef
	dw $4ff8
	dw $5000
	dw $5008
	dw $5012
	dw $501e
	dw $5027
	dw $502f
	dw $5038
	dw $5042
	dw $504d
	dw $5058
	dw $5060
	dw $506a
	dw $5077
	dw $5084
	dw $5090
	dw $509e
	dw $50a9
	dw $50b4
	dw $50bc
	dw $50c4
	dw $50cc
	dw $50d6
	dw $50df
	dw $50e9
	dw $50f4
	dw $50fc
	dw $5108
	dw $5110
	dw $5119
	dw $5123
	dw $512c
	dw $5139
	dw $5141
	dw $514b
	dw $5152
	dw $5159
	dw $5160
	dw $5167
	dw $5170
	dw $5177
	dw $517e
	dw $5185
	dw $518d
	dw $5197
	dw $519e
	dw $51a5
	dw $51af
	dw $51b7
	dw $51be
	dw $51c7
	dw $51cf
	dw $51d6
	dw $51de
	dw $51e5
	dw $51ed
	dw $51f4
	dw $51fb
	dw $5205
	dw $5210
	dw $5217
	dw $521e
	dw $5226
	dw $522e
	dw $5235
	dw $523e
	dw $5246
	dw $524d
	dw $5258
	dw $5260
	dw $5267
	dw $526f
	dw $5276
	dw $527f
	dw $5286
	dw $5290
	dw $5297
	dw $52a0
	dw $52a8
	dw $52b3
	dw $52bd
	dw $52c6
	dw $52ce
	dw $52d6
	dw $52e1
	dw $52e9
	dw $52f1
	dw $52fb
	dw $5304
	dw $530b
	dw $5316
	dw $5322
	dw $532d
	dw $5337
	dw $533f
	dw $5349
	dw $5350
	dw $5357
	dw $535f
	dw $5367
	dw $536f
	dw $5378
	dw $5383
	dw $538a
	dw $5394
	dw $539f
	dw $53aa
	dw $53b5
	dw $53c0
	dw $53cb
	dw $53d3
	dw $53dd
	dw $53e6
	dw $53f1
	dw $53f8
	dw $5400
	dw $5409
	dw $5412
	dw $541d
	dw $5428
	dw $5433
	dw $543c
	dw $5446
	dw $544d
	dw $5454
	dw $545d
	dw $5467
	dw $546f
	dw $5478
	dw $5481
	dw $5488
	dw $5490
	dw $5497
	dw $549f
	dw $54a6
	dw $54b3
	dw $54bb
	dw $54c5
	dw $54cf
	dw $54da
	dw $54e3
	dw $54ed
	dw $54f8
	dw $5503
	dw $550a
	dw $5511
	dw $5519
	dw $5523
	dw $552e
	dw $5535
	dw $553e
	dw $5548
	dw $5551
	dw $5559
	dw $5561
	dw $556c
	dw $5575
	dw $5580
	dw $558a
	dw $5596
	dw $55a1
	dw $55ac
	dw $55b8
	dw $55c4
	dw $55ce
	dw $55d8
	dw $55e2
	dw $55ef
	dw $55fa
	dw $5603
	dw $560d
	dw $5616
	dw $561e
	dw $5625
	dw $562c
	dw $5633
	dw $563c
	dw $5643
	dw $564b
	dw $5653
	dw $565b
	dw $5663
	dw $566a
	dw $5671
	dw $567b
	dw $5682
	dw $568a
	dw $5693
	dw $569a
	dw $56a1
	dw $56ad
	dw $56b5
	dw $56be
	dw $56c5
	dw $56cc
	dw $56d6
	dw $56e0
	dw $56e9
	dw $56f0
	dw $56f7
	dw $56fe
	dw $5705
	dw $570b
	dw $5711
	dw $5718
	dw $571e
	dw $5726
	dw $572c
	dw $5732
	dw $5738
	dw $573e
	dw $5744
	dw $574c
	dw $5754
	dw $575a
	dw $5763
	dw $5769
	dw $576f
	dw $5775
	dw $577c
	dw $5787
	dw $578d
	dw $5793
	dw $579a
	dw $57a1
	dw $57a7
	dw $57af
	dw $57b5
	dw $57bc
	dw $57c3
	dw $57cc
	dw $57d2
	dw $57da
	dw $57e3
	dw $57ea
	dw $57f0
	dw $57f7
	dw $57fd
	dw $5804
	dw $580d
	dw $5814
	dw $581a
	dw $5820
	dw $5828
	dw $582f
	dw $5836
	dw $583c
	dw $5843
	dw $584a
	dw $5850
	dw $5857
	dw $5860
	dw $586a
	dw $5872
	dw $5878
	dw $587f
	dw $5885
	dw $588b
	dw $5895
	dw $589b
	dw $58a4
	dw $58aa
	dw $58b0
	dw $58b8
	dw $58be
	dw $58c4
	dw $58ca
	dw $58d1
	dw $58d8
	dw $58de
	dw $58e5
	dw $58ed
	dw $58f3
	dw $58fa
	dw $5905
	dw $5910
	dw $591a
	dw $5923
	dw $592a
	dw $5930
	dw $5936
	dw $593e
	dw $5945
	dw $594b
	dw $5951
	dw $5958
	dw $5962
	dw $5969
	dw $5973
	dw $597c
	dw $5982
	dw $598a
	dw $5992
	dw $599b
	dw $59a2
	dw $59ac
	dw $59b3
	dw $59bb
	dw $59c3
	dw $59ca
	dw $59d1
	dw $59d7
	dw $59dd
	dw $59e6
	dw $59ef
	dw $59f5
	dw $59fd
	dw $5a04
	dw $5a0e
	dw $5a17
	dw $5a21
	dw $5a2a
	dw $5a32
	dw $5a3b
	dw $5a42
	dw $5a4c
	dw $5a54
	dw $5a5a
	dw $5a61
	dw $5a68
	dw $5a6e
	dw $5a74
	dw $5a7c
	dw $5a85
	dw $5a8f
	dw $5a9a
	dw $5aa2
	dw $5aab
	dw $5ab4
	dw $5abc
	dw $5ac2
	dw $5ac9
	dw $5ad4
	dw $5add
	dw $5ae5
	dw $5aee
	dw $5af7
	dw $5b01
	dw $5b09
	dw $5b11
	dw $5b1c
	dw $5b25
	dw $5b2f
	dw $5b38
	dw $5b42
	dw $5b4b
	dw $5b54
	dw $5b5e
	dw $5b64
	dw $5b6c
	dw $5b75
	dw $5b7e
	dw $5b85
	dw $5b90
	dw $5b9a
	dw $5ba0
	dw $5ba8
	dw $5bae
	dw $5bb7
	dw $5bc0
	dw $5bca
	dw $5bd3
	dw $5bdc
	dw $5be3
	dw $5bed
	dw $5bf4
	dw $5bfa
	dw $5c00
	dw $5c0a
	dw $5c10
	dw $5c18
	dw $5c21
	dw $5c29
	dw $5c31
	dw $5c38
	dw $5c40
	dw $5c49
	dw $5c4f
	dw $5c58
	dw $5c5e
	dw $5c67
	dw $5c6e
	dw $5c75
	dw $5c7b
	dw $5c81
	dw $5c86
	dw $5c8b
	dw $5c90
	dw $5c95
	dw $5c9a
	dw $5c9f
	dw $5ca6
	dw $5cac
	dw $5cb1
	dw $5cb6
	dw $5cbc
	dw $5cc1
	dw $5cc6
	dw $5ccc
	dw $5cd4
	dw $5cd9
	dw $5ce0
	dw $5ce5
	dw $5cea
	dw $5cef
	dw $5cf5
	dw $5cfa
	dw $5d01
	dw $5d06
	dw $5d0b
	dw $5d10
	dw $5d18
	dw $5d1d
	dw $5d22
	dw $5d29
	dw $5d2f
	dw $5d36
	dw $5d3b
	dw $5d41
	dw $5d46
	dw $5d4f
	dw $5d54
	dw $5d5b
	dw $5d60
	dw $5d65
	dw $5d6c
	dw $5d72
	dw $5d77
	dw $5d7c
	dw $5d85
	dw $5d8c
	dw $5d92
	dw $5d9b
	dw $5da3
	dw $5da9
	dw $5dae
	dw $5db7
	dw $5dbe
	dw $5dc6
	dw $5dcc
	dw $5dd5
	dw $5dde
	dw $5de4
	dw $5dec
	dw $5df2
	dw $5df7
	dw $5dfc
	dw $5e03
	dw $5e08
	dw $5e10
	dw $5e17
	dw $5e1d
	dw $5e24
	dw $5e2b
	dw $5e34
	dw $5e3c
	dw $5e43
	dw $5e4a
	dw $5e4f
	dw $5e56
	dw $5e5f
	dw $5e68
	dw $5e71
	dw $5e7a
	dw $5e83
	dw $5e8b
	dw $5e92
	dw $5e99
	dw $5ea2
	dw $5ea9
	dw $5eb0
	dw $5eb5
	dw $5ebe
	dw $5ec5
	dw $5ecb
	dw $5ed3
	dw $5ed9
	dw $5ee1
	dw $5eea
	dw $5ef3
	dw $5ef8
	dw $5eff
	dw $5f06
	dw $5f0d
	dw $5f15
	dw $5f1d
	dw $5f26
	dw $5f2e
	dw $5f35
	dw $5f3b
	dw $5f43
	dw $5f49
	dw $5f4e
	dw $5f56
	dw $5f5e
	dw $5f67
	dw $5f6f
	dw $5f75
	dw $5f7c
	dw $5f83
	dw $5f89
	dw $5f91
	dw $5f97
	dw $5f9f
	dw $5fa6
	dw $5fab
	dw $5fb2
	dw $5fbb
	dw $5fc3
	dw $5fca
	dw $5fd1
	dw $5fda
	dw $5fe2
	dw $5fe9
	dw $5ff1
	dw $5ffa
	dw $6001
	dw $6008
	dw $6010
	dw $6017
	dw $601e
	dw $6026
	dw $602e
	dw $6034
	dw $603b
	dw $6043
	dw $6049
	dw $604f
	dw $6056
	dw $605c
	dw $6063
	dw $606b
	dw $6072
	dw $607b
	dw $6082
	dw $608a
	dw $6090
	dw $6098
	dw $609e
	dw $60a6
	dw $60ad
	dw $60b6
	dw $60be
	dw $60c5
	dw $60ce
	dw $60d6
	dw $60de
	dw $60e5
	dw $60ed
	dw $60f5
	dw $60fb
	dw $6104
	dw $610d
	dw $6113
	dw $6119
	dw $6120
	dw $6128
	dw $6130
	dw $6139
	dw $6142
	dw $614a
	dw $6153
	dw $615b
	dw $6160
	dw $6166
	dw $616e
	dw $6176
	dw $617e
	dw $6186
	dw $618f
	dw $6198
	dw $61a1
	dw $61a6
	dw $61ae
	dw $61b5
	dw $61ba
	dw $61c1
	dw $61c9
	dw $61d1
	dw $61d9
	dw $61e1
	dw $61e9
	dw $61f1
	dw $61f9
	dw $6200
	dw $6206
	dw $620d
	dw $6212
	dw $621b
	dw $6220
	dw $6225
	dw $622a
	dw $622f
	dw $6234
	dw $6239
	dw $623f
	dw $6245
	dw $624b
	dw $6252
	dw $6257
	dw $625f
	dw $6266
	dw $626c
	dw $6273
	dw $627a
	dw $6281
	dw $6288
	dw $628f
	dw $6296
	dw $629f
	dw $62a8
	dw $62b0
	dw $62b5
	dw $62ba
	dw $62be
	dw $62c3
	dw $62c7
	dw $62cb
	dw $62d0
	dw $62d7
	dw $62dc
	dw $62e3
	dw $62e7
	dw $62ec
	dw $62f0
	dw $62f5
	dw $62f9
	dw $62fe
	dw $6305
	dw $630a
	dw $630f
	dw $6316
	dw $631c
	dw $6323
	dw $6327
	dw $632c
	dw $6332
	dw $6339
	dw $633f
	dw $6344
	dw $634b
	dw $6351
	dw $6357
	dw $635e
	dw $6364
	dw $636b
	dw $6371
	dw $6377
	dw $637d
	dw $6383
	dw $638a
	dw $6390
	dw $6396
	dw $639a
	dw $63a0
	dw $63a4
	dw $63a8
	dw $63af
	dw $63b4
	dw $63ba
	dw $63bf
	dw $63c4
	dw $63c9
	dw $63cf
	dw $63d5
	dw $63dc
	dw $63e1
	dw $63e8
	dw $63ef
	dw $63f5
	dw $63fa
	dw $6400
	dw $6406
	dw $640c
	dw $6411
	dw $6417
	dw $641d
	dw $6424
	dw $642a
	dw $6430
	dw $6437
	dw $643e
	dw $6443
	dw $6449
	dw $644e
	dw $6455
	dw $645c
	dw $6462
	dw $6469
	dw $646d
	dw $6473
	dw $6479
	dw $647f
	dw $6484
	dw $648b
	dw $6490
	dw $6494
	dw $649a
	dw $64a1
	dw $64a6
	dw $64ab
	dw $64af
	dw $64b5
	dw $64b9
	dw $64be
	dw $64c3
	dw $64ca
	dw $64ce
	dw $64d4
	dw $64da
	dw $64e0
	dw $64e6
	dw $64ea
	dw $64ef
	dw $64f4
	dw $64fa
	dw $6501
	dw $6506
	dw $650d
	dw $6511
	dw $6518
	dw $651c
	dw $6520
	dw $6524
	dw $6528
	dw $652d
	dw $6534
	dw $6539
	dw $653e
	dw TextLargeDict_560
	dw $6548
	dw $654c
	dw $6551
	dw $6556
	dw $655b
	dw $6560
	dw $6565
	dw $6569
	dw $656e
	dw $6571
	dw $6576
	dw $657a
	dw $657e
	dw $6583
	dw $6586
	dw $658a
	dw TextLargeDict_571_Name
	dw $6593
	dw $6597
	dw $659c
	dw $65a1
	dw $65a6
	dw $65ab
	dw $65b0
	dw $65b5
	dw $65ba
	dw $65bf
	dw $65c3
	dw $65c8
	dw $65cc
	dw $65d1
	dw $65d6
	dw $65db
	dw $65df
	dw $65e4
	dw $65e8
	dw $65ed
	dw $65f1
	dw $65f6
	dw $65fb
	dw $65ff
	dw $6604
	dw $6609
	dw $660e
	dw $6612
	dw $6617
	dw $661c
	dw $6621
	dw $6625
	dw $662a
	dw $662f
	dw $6634
	dw $6639
	dw $663e
	dw $6643
	dw $6646
	dw $664b
	dw $6650
	dw $6655
	dw $665a
	dw $665f
	dw $6664
	dw $6668
	dw $666c
	dw $6671
	dw $6675
	dw $667a
	dw $667f
	dw $6683
	dw $6688
	dw $668d
	dw $6692
	dw $6697
	dw $669b
	dw $66a0
	dw $66a5
	dw $66aa
	dw $66af
	dw $66b4
	dw $66b9
	dw $66be
	dw $66c3
	dw $66c7
	dw $66cc
	dw $66d1
	dw $66d6
	dw $66db
	dw $66e0
	dw $66e4
	dw $66e9
	dw $66ee
	dw $66f3
	dw $66f7
	dw $66fc
	dw $6700
	dw $6704
	dw $6709
	dw $670d
	dw $6711
	dw $6715
	dw $671a
	dw $671e
	dw $6723
	dw $6727
	dw $672b
	dw $6730
	dw $6735
	dw $673a
	dw $673f
	dw $6743
	dw $6748
	dw $674d
	dw $6751
	dw $6754
	dw $6759
	dw $675e
	dw $6762
	dw $6767
	dw $676c
	dw $6771
	dw $6776
	dw $677b
	dw $677f
	dw $6784
	dw $6789
	dw $678e
	dw $6793
	dw $6797
	dw $679c
	dw $67a1
	dw $67a6
	dw $67ab
	dw $67b0
	dw $67b3
	dw $67b8
	dw $67bd
	dw $67c1
	dw $67c6
	dw $67cb
	dw $67d0
	dw $67d5
	dw $67da
	dw $67df
	dw $67e4
	dw $67e9
	dw $67ee
	dw $67f2
	dw $67f6
	dw $67f9
	dw $67fd
	dw $6802
	dw $6806
	dw $680b
	dw $6810
	dw $6815
	dw $681a
	dw $681f
	dw $6824
	dw $6829
	dw $682e
	dw $6833
	dw $6838
	dw $683d
	dw $6842
	dw $6847
	dw $684c
	dw $684f
	dw $6853
	dw $6856
	dw $685b
	dw $685f
	dw $6864
	dw $6868
	dw $686d
	dw $6872
	dw $6877
	dw $687a
	dw $687d
	dw $6882
	dw $6886
	dw $6889
	dw $688e
	dw $6893
	dw $6898
	dw $689d
	dw $68a2
	dw $68a5
	dw $68aa
	dw $68af
	dw $68b4
	dw $68b7
	dw $68ba
	dw $68bd
	dw $68c2
	dw $68c7
	dw $68cc
	dw $68d1
	dw $68d6
	dw $68da
	dw $68de
	dw $68e3
	dw $68e7
	dw $68ec
	dw $68f1
	dw $68f6
	dw $68f9
	dw $68fd


Data_78_70b3:
	ld a, l                                          ; $70b3: $7d
	ld h, l                                          ; $70b4: $65
	ldh a, [c]                                       ; $70b5: $f2
	adc l                                            ; $70b6: $8d
	ld d, e                                          ; $70b7: $53
	ld a, b                                          ; $70b8: $78
	dec a                                            ; $70b9: $3d
	ldh a, [rBGP]                                    ; $70ba: $f0 $47
	inc [hl]                                         ; $70bc: $34
	ldh a, [rKEY1]                                   ; $70bd: $f0 $4d
	ldh a, [rKEY1]                                   ; $70bf: $f0 $4d

jr_078_70c1:
	dec sp                                           ; $70c1: $3b
	ld h, c                                          ; $70c2: $61
	ld d, [hl]                                       ; $70c3: $56
	dec sp                                           ; $70c4: $3b
	dec a                                            ; $70c5: $3d
	ld b, l                                          ; $70c6: $45
	add hl, bc                                       ; $70c7: $09
	ldh a, [rOBP1]                                   ; $70c8: $f0 $49
	ldh a, [$59]                                     ; $70ca: $f0 $59
	ldh a, [$af]                                     ; $70cc: $f0 $af
	ldh a, [rAUD3LEVEL]                              ; $70ce: $f0 $1c
	inc [hl]                                         ; $70d0: $34
	pop af                                           ; $70d1: $f1
	and $f3                                          ; $70d2: $e6 $f3
	pop de                                           ; $70d4: $d1
	inc a                                            ; $70d5: $3c
	ld d, b                                          ; $70d6: $50
	ld l, [hl]                                       ; $70d7: $6e
	ld d, a                                          ; $70d8: $57
	ldh a, [hDisp1_WX]                                     ; $70d9: $f0 $96
	ld a, $3d                                        ; $70db: $3e $3d
	ld d, b                                          ; $70dd: $50
	add hl, bc                                       ; $70de: $09
	db $38, $80

	ld d, d                                          ; $70e1: $52
	ld c, d                                          ; $70e2: $4a
	ld c, a                                          ; $70e3: $4f
	ldh a, [hDisp0_SCX]                                     ; $70e4: $f0 $84
	add h                                            ; $70e6: $84
	ld c, d                                          ; $70e7: $4a
	pop af                                           ; $70e8: $f1
	ld h, $41                                        ; $70e9: $26 $41
	ld c, d                                          ; $70eb: $4a
	jr c, jr_078_714b                                ; $70ec: $38 $5d

	ld c, [hl]                                       ; $70ee: $4e
	add hl, bc                                       ; $70ef: $09
	ld e, b                                          ; $70f0: $58
	ld d, a                                          ; $70f1: $57
	ldh a, [rSB]                                     ; $70f2: $f0 $01
	ld a, [hl-]                                      ; $70f4: $3a
	ld d, l                                          ; $70f5: $55
	pop af                                           ; $70f6: $f1
	ld a, e                                          ; $70f7: $7b
	ldh a, [hDisp1_WY]                                     ; $70f8: $f0 $95
	ld c, c                                          ; $70fa: $49
	inc a                                            ; $70fb: $3c
	ld h, d                                          ; $70fc: $62
	ldh a, [$0c]                                     ; $70fd: $f0 $0c
	ld e, h                                          ; $70ff: $5c
	ld b, h                                          ; $7100: $44
	ld d, c                                          ; $7101: $51
	add hl, bc                                       ; $7102: $09
	pop af                                           ; $7103: $f1
	ld a, [de]                                       ; $7104: $1a
	ldh a, [c]                                       ; $7105: $f2
	db $e4                                           ; $7106: $e4
	ldh a, [rAUD3LOW]                                ; $7107: $f0 $1d
	sbc b                                            ; $7109: $98
	ld h, l                                          ; $710a: $65
	inc [hl]                                         ; $710b: $34
	ldh a, [$de]                                     ; $710c: $f0 $de
	ldh a, [$de]                                     ; $710e: $f0 $de
	ld e, c                                          ; $7110: $59
	ldh a, [$03]                                     ; $7111: $f0 $03
	ld b, a                                          ; $7113: $47
	ldh a, [rLCDC]                                   ; $7114: $f0 $40
	ld e, a                                          ; $7116: $5f
	add hl, sp                                       ; $7117: $39
	add hl, bc                                       ; $7118: $09
	ldh a, [rAUD1LEN]                                ; $7119: $f0 $11
	ld h, l                                          ; $711b: $65
	ldh a, [rAUD4POLY]                               ; $711c: $f0 $22
	ld e, c                                          ; $711e: $59
	ld l, c                                          ; $711f: $69
	inc [hl]                                         ; $7120: $34
	add b                                            ; $7121: $80
	ld d, d                                          ; $7122: $52
	ld d, b                                          ; $7123: $50
	ld a, [hl-]                                      ; $7124: $3a
	inc a                                            ; $7125: $3c
	dec sp                                           ; $7126: $3b
	dec a                                            ; $7127: $3d
	ld c, h                                          ; $7128: $4c
	add hl, bc                                       ; $7129: $09
	ldh a, [rAUD1LEN]                                ; $712a: $f0 $11
	ld h, l                                          ; $712c: $65
	ldh a, [rAUD4POLY]                               ; $712d: $f0 $22
	ld e, c                                          ; $712f: $59
	ld l, c                                          ; $7130: $69
	inc [hl]                                         ; $7131: $34
	ld d, d                                          ; $7132: $52
	ld b, [hl]                                       ; $7133: $46
	ld d, d                                          ; $7134: $52
	ld b, [hl]                                       ; $7135: $46
	ld b, h                                          ; $7136: $44
	dec sp                                           ; $7137: $3b
	dec a                                            ; $7138: $3d
	ld c, h                                          ; $7139: $4c
	add hl, bc                                       ; $713a: $09
	ldh a, [c]                                       ; $713b: $f2
	ld l, d                                          ; $713c: $6a
	ld c, l                                          ; $713d: $4d
	ld c, [hl]                                       ; $713e: $4e
	ld [hl], $f0                                     ; $713f: $36 $f0
	ld c, c                                          ; $7141: $49
	ldh a, [$59]                                     ; $7142: $f0 $59
	ld a, a                                          ; $7144: $7f
	ldh a, [$9a]                                     ; $7145: $f0 $9a
	inc a                                            ; $7147: $3c
	ld a, [hl-]                                      ; $7148: $3a
	inc a                                            ; $7149: $3c
	dec sp                                           ; $714a: $3b

jr_078_714b:
	dec a                                            ; $714b: $3d
	ld b, l                                          ; $714c: $45
	add hl, bc                                       ; $714d: $09
	add a                                            ; $714e: $87
	ldh a, [$5d]                                     ; $714f: $f0 $5d
	ld b, h                                          ; $7151: $44
	dec sp                                           ; $7152: $3b
	ccf                                              ; $7153: $3f
	inc [hl]                                         ; $7154: $34
	ldh a, [$0c]                                     ; $7155: $f0 $0c
	jr c, jr_078_7196                                ; $7157: $38 $3d

	ld d, h                                          ; $7159: $54
	ld c, c                                          ; $715a: $49
	ld b, [hl]                                       ; $715b: $46
	ld c, [hl]                                       ; $715c: $4e
	ld b, l                                          ; $715d: $45
	add hl, bc                                       ; $715e: $09
	ldh a, [$5f]                                     ; $715f: $f0 $5f
	ldh a, [$9b]                                     ; $7161: $f0 $9b
	ld c, e                                          ; $7163: $4b
	inc [hl]                                         ; $7164: $34
	ldh a, [rAUD2ENV]                                ; $7165: $f0 $17
	ld b, d                                          ; $7167: $42
	adc h                                            ; $7168: $8c
	ld c, a                                          ; $7169: $4f
	ldh a, [$80]                                     ; $716a: $f0 $80
	ldh a, [$c5]                                     ; $716c: $f0 $c5
	ld a, b                                          ; $716e: $78
	ccf                                              ; $716f: $3f
	ld c, [hl]                                       ; $7170: $4e
	ld b, l                                          ; $7171: $45
	add hl, bc                                       ; $7172: $09
	ld d, h                                          ; $7173: $54
	ld b, d                                          ; $7174: $42
	ld d, d                                          ; $7175: $52
	ld d, d                                          ; $7176: $52
	ld b, b                                          ; $7177: $40
	dec sp                                           ; $7178: $3b
	ld c, c                                          ; $7179: $49
	inc [hl]                                         ; $717a: $34
	ldh a, [c]                                       ; $717b: $f2
	dec l                                            ; $717c: $2d
	dec sp                                           ; $717d: $3b
	ccf                                              ; $717e: $3f
	ld h, h                                          ; $717f: $64
	ld d, h                                          ; $7180: $54
	add hl, sp                                       ; $7181: $39
	add hl, bc                                       ; $7182: $09
	ld h, c                                          ; $7183: $61
	ld h, [hl]                                       ; $7184: $66
	dec sp                                           ; $7185: $3b
	ld c, c                                          ; $7186: $49
	inc [hl]                                         ; $7187: $34
	ld h, h                                          ; $7188: $64
	inc a                                            ; $7189: $3c
	ld a, $38                                        ; $718a: $3e $38
	ld b, c                                          ; $718c: $41
	ld e, e                                          ; $718d: $5b
	ld d, [hl]                                       ; $718e: $56
	ld a, [hl-]                                      ; $718f: $3a
	jr c, jr_078_719b                                ; $7190: $38 $09

	halt                                             ; $7192: $76
	ld d, e                                          ; $7193: $53
	jr c, @+$50                                      ; $7194: $38 $4e

jr_078_7196:
	inc a                                            ; $7196: $3c
	ld d, b                                          ; $7197: $50
	add a                                            ; $7198: $87
	ldh a, [$5b]                                     ; $7199: $f0 $5b

jr_078_719b:
	ldh a, [$5e]                                     ; $719b: $f0 $5e
	ld b, h                                          ; $719d: $44
	dec sp                                           ; $719e: $3b
	dec a                                            ; $719f: $3d
	ld b, h                                          ; $71a0: $44
	ld e, a                                          ; $71a1: $5f
	add hl, bc                                       ; $71a2: $09
	pop af                                           ; $71a3: $f1
	ld a, [hl-]                                      ; $71a4: $3a
	jr c, jr_078_71eb                                ; $71a5: $38 $44

	ld e, a                                          ; $71a7: $5f
	add hl, sp                                       ; $71a8: $39
	ld e, l                                          ; $71a9: $5d
	ld e, d                                          ; $71aa: $5a
	inc [hl]                                         ; $71ab: $34
	pop af                                           ; $71ac: $f1
	cp e                                             ; $71ad: $bb
	ld e, [hl]                                       ; $71ae: $5e
	ccf                                              ; $71af: $3f
	ld c, [hl]                                       ; $71b0: $4e
	ld a, $4c                                        ; $71b1: $3e $4c
	add hl, bc                                       ; $71b3: $09
	ldh a, [rAUD4POLY]                               ; $71b4: $f0 $22
	ld a, l                                          ; $71b6: $7d
	ldh a, [rAUD4LEN]                                ; $71b7: $f0 $20
	ld e, c                                          ; $71b9: $59
	ld a, [hl-]                                      ; $71ba: $3a
	ldh a, [$78]                                     ; $71bb: $f0 $78
	ld e, e                                          ; $71bd: $5b
	ld c, d                                          ; $71be: $4a
	inc a                                            ; $71bf: $3c
	dec sp                                           ; $71c0: $3b
	ld d, h                                          ; $71c1: $54
	jr c, jr_078_71fc                                ; $71c2: $38 $38

	ld b, l                                          ; $71c4: $45
	add hl, bc                                       ; $71c5: $09
	ldh a, [rLY]                                     ; $71c6: $f0 $44
	pop af                                           ; $71c8: $f1
	ld [hl], a                                       ; $71c9: $77
	ld c, d                                          ; $71ca: $4a
	inc [hl]                                         ; $71cb: $34
	ld l, l                                          ; $71cc: $6d
	ldh a, [rDMA]                                    ; $71cd: $f0 $46
	ldh a, [$71]                                     ; $71cf: $f0 $71
	jr c, @-$0e                                      ; $71d1: $38 $f0

	ld b, b                                          ; $71d3: $40
	ld d, a                                          ; $71d4: $57
	ldh a, [$2c]                                     ; $71d5: $f0 $2c
	inc a                                            ; $71d7: $3c
	ld c, a                                          ; $71d8: $4f
	ld c, h                                          ; $71d9: $4c
	add hl, bc                                       ; $71da: $09
	sbc c                                            ; $71db: $99
	dec sp                                           ; $71dc: $3b
	ccf                                              ; $71dd: $3f
	ld c, [hl]                                       ; $71de: $4e
	ld d, h                                          ; $71df: $54
	ld c, c                                          ; $71e0: $49
	ld c, a                                          ; $71e1: $4f
	inc [hl]                                         ; $71e2: $34
	ldh a, [$a4]                                     ; $71e3: $f0 $a4
	ld e, [hl]                                       ; $71e5: $5e
	ccf                                              ; $71e6: $3f
	ld d, l                                          ; $71e7: $55
	ld c, l                                          ; $71e8: $4d
	ld b, l                                          ; $71e9: $45
	add hl, bc                                       ; $71ea: $09

jr_078_71eb:
	ld c, e                                          ; $71eb: $4b
	dec sp                                           ; $71ec: $3b
	inc [hl]                                         ; $71ed: $34
	halt                                             ; $71ee: $76
	ld c, e                                          ; $71ef: $4b
	ld l, d                                          ; $71f0: $6a
	ld l, e                                          ; $71f1: $6b
	ld h, d                                          ; $71f2: $62
	ld a, $3f                                        ; $71f3: $3e $3f
	jr c, jr_078_7234                                ; $71f5: $38 $3d

	ld b, c                                          ; $71f7: $41
	ld b, h                                          ; $71f8: $44
	add hl, bc                                       ; $71f9: $09
	ld [hl], b                                       ; $71fa: $70
	ld [hl], c                                       ; $71fb: $71

jr_078_71fc:
	ld b, c                                          ; $71fc: $41
	ld b, l                                          ; $71fd: $45
	dec [hl]                                         ; $71fe: $35
	halt                                             ; $71ff: $76
	ld d, e                                          ; $7200: $53
	ld [hl], d                                       ; $7201: $72
	dec a                                            ; $7202: $3d
	inc a                                            ; $7203: $3c
	dec sp                                           ; $7204: $3b
	dec a                                            ; $7205: $3d
	ld b, c                                          ; $7206: $41
	ld b, h                                          ; $7207: $44
	add hl, bc                                       ; $7208: $09
	ld h, c                                          ; $7209: $61
	ld h, [hl]                                       ; $720a: $66
	dec sp                                           ; $720b: $3b
	ld c, c                                          ; $720c: $49
	ld a, $3d                                        ; $720d: $3e $3d
	inc [hl]                                         ; $720f: $34
	ldh a, [$35]                                     ; $7210: $f0 $35
	ldh a, [$7e]                                     ; $7212: $f0 $7e
	pop af                                           ; $7214: $f1
	inc hl                                           ; $7215: $23
	ld a, a                                          ; $7216: $7f
	ldh a, [rTAC]                                    ; $7217: $f0 $07
	ld b, h                                          ; $7219: $44
	ld c, h                                          ; $721a: $4c
	add hl, bc                                       ; $721b: $09
	adc l                                            ; $721c: $8d
	inc [hl]                                         ; $721d: $34
	ldh a, [rOBP1]                                   ; $721e: $f0 $49
	ldh a, [$59]                                     ; $7220: $f0 $59
	dec [hl]                                         ; $7222: $35
	ld d, h                                          ; $7223: $54
	inc [hl]                                         ; $7224: $34
	ldh a, [$71]                                     ; $7225: $f0 $71
	ld d, l                                          ; $7227: $55
	ld a, [hl-]                                      ; $7228: $3a
	inc a                                            ; $7229: $3c
	dec sp                                           ; $722a: $3b
	dec a                                            ; $722b: $3d
	ld b, l                                          ; $722c: $45
	add hl, bc                                       ; $722d: $09
	ldh a, [$31]                                     ; $722e: $f0 $31
	ldh a, [c]                                       ; $7230: $f2
	or [hl]                                          ; $7231: $b6
	ld b, a                                          ; $7232: $47
	add c                                            ; $7233: $81

jr_078_7234:
	ld [hl], l                                       ; $7234: $75
	ld a, l                                          ; $7235: $7d
	ld d, c                                          ; $7236: $51
	ld c, [hl]                                       ; $7237: $4e
	ldh a, [$08]                                     ; $7238: $f0 $08
	add hl, sp                                       ; $723a: $39
	ld d, e                                          ; $723b: $53
	jr c, jr_078_7276                                ; $723c: $38 $38

	ld a, [hl-]                                      ; $723e: $3a
	add hl, bc                                       ; $723f: $09
	ld b, b                                          ; $7240: $40
	ld d, h                                          ; $7241: $54
	ld c, d                                          ; $7242: $4a
	di                                               ; $7243: $f3
	dec hl                                           ; $7244: $2b
	dec sp                                           ; $7245: $3b
	dec a                                            ; $7246: $3d
	inc [hl]                                         ; $7247: $34
	di                                               ; $7248: $f3
	dec b                                            ; $7249: $05
	di                                               ; $724a: $f3
	adc a                                            ; $724b: $8f
	ld h, d                                          ; $724c: $62
	ld b, [hl]                                       ; $724d: $46
	ldh a, [rSB]                                     ; $724e: $f0 $01
	ld c, [hl]                                       ; $7250: $4e
	ld b, l                                          ; $7251: $45
	add hl, bc                                       ; $7252: $09
	ld b, a                                          ; $7253: $47
	ldh a, [$b2]                                     ; $7254: $f0 $b2
	ldh a, [rLY]                                     ; $7256: $f0 $44
	pop af                                           ; $7258: $f1
	sbc b                                            ; $7259: $98
	ld c, d                                          ; $725a: $4a
	ldh a, [$ba]                                     ; $725b: $f0 $ba
	ld a, l                                          ; $725d: $7d
	ld l, c                                          ; $725e: $69
	ldh a, [rIF]                                     ; $725f: $f0 $0f
	ld [hl], l                                       ; $7261: $75
	ld e, c                                          ; $7262: $59
	ldh a, [$32]                                     ; $7263: $f0 $32
	ldh a, [hLCDCIntHandlerIdx]                                     ; $7265: $f0 $81
	ldh a, [c]                                       ; $7267: $f2
	rst AddAOntoHL                                          ; $7268: $ef
	add hl, bc                                       ; $7269: $09
	pop af                                           ; $726a: $f1
	ld d, b                                          ; $726b: $50
	ld d, e                                          ; $726c: $53
	adc a                                            ; $726d: $8f
	ld b, a                                          ; $726e: $47
	ld c, e                                          ; $726f: $4b
	inc a                                            ; $7270: $3c
	ld h, e                                          ; $7271: $63
	jr c, jr_078_72ac                                ; $7272: $38 $38

	ldh a, [rAUD2ENV]                                ; $7274: $f0 $17

jr_078_7276:
	adc h                                            ; $7276: $8c
	adc a                                            ; $7277: $8f
	pop af                                           ; $7278: $f1
	ld c, [hl]                                       ; $7279: $4e
	ld c, a                                          ; $727a: $4f
	add hl, bc                                       ; $727b: $09
	pop af                                           ; $727c: $f1
	dec b                                            ; $727d: $05
	ldh a, [rWY]                                     ; $727e: $f0 $4a
	ldh a, [$03]                                     ; $7280: $f0 $03
	ld b, d                                          ; $7282: $42
	ldh a, [$ee]                                     ; $7283: $f0 $ee
	ld b, a                                          ; $7285: $47
	pop af                                           ; $7286: $f1
	dec hl                                           ; $7287: $2b
	ldh a, [$be]                                     ; $7288: $f0 $be
	ld d, h                                          ; $728a: $54
	ld c, c                                          ; $728b: $49
	ld b, a                                          ; $728c: $47
	ld a, [hl-]                                      ; $728d: $3a
	dec sp                                           ; $728e: $3b
	dec a                                            ; $728f: $3d
	add hl, bc                                       ; $7290: $09
	ld [hl-], a                                      ; $7291: $32
	sub d                                            ; $7292: $92
	adc [hl]                                         ; $7293: $8e
	dec sp                                           ; $7294: $3b
	ccf                                              ; $7295: $3f
	ld c, [hl]                                       ; $7296: $4e
	ldh a, [$b1]                                     ; $7297: $f0 $b1
	ldh a, [c]                                       ; $7299: $f2
	ld [hl+], a                                      ; $729a: $22
	ld d, e                                          ; $729b: $53
	ld b, [hl]                                       ; $729c: $46
	ld c, [hl]                                       ; $729d: $4e
	adc l                                            ; $729e: $8d
	dec [hl]                                         ; $729f: $35
	inc sp                                           ; $72a0: $33
	add hl, bc                                       ; $72a1: $09
	ldh a, [c]                                       ; $72a2: $f2
	jp nc, $adf2                                     ; $72a3: $d2 $f2 $ad

	adc c                                            ; $72a6: $89
	sbc a                                            ; $72a7: $9f
	ld b, a                                          ; $72a8: $47
	ldh a, [rOCPS]                                   ; $72a9: $f0 $6a
	add hl, sp                                       ; $72ab: $39

jr_078_72ac:
	ld d, h                                          ; $72ac: $54
	ld c, c                                          ; $72ad: $49
	ld b, a                                          ; $72ae: $47
	ld a, [hl-]                                      ; $72af: $3a
	dec sp                                           ; $72b0: $3b
	dec a                                            ; $72b1: $3d
	add hl, bc                                       ; $72b2: $09
	ld b, b                                          ; $72b3: $40
	ld b, d                                          ; $72b4: $42
	add hl, sp                                       ; $72b5: $39
	ld h, c                                          ; $72b6: $61
	db $f4                                           ; $72b7: $f4
	inc [hl]                                         ; $72b8: $34
	di                                               ; $72b9: $f3
	dec h                                            ; $72ba: $25
	ld e, b                                          ; $72bb: $58
	ld c, l                                          ; $72bc: $4d
	ld b, b                                          ; $72bd: $40
	add hl, sp                                       ; $72be: $39
	ld a, [hl-]                                      ; $72bf: $3a
	ld b, d                                          ; $72c0: $42
	ld c, d                                          ; $72c1: $4a
	add hl, bc                                       ; $72c2: $09
	ld [hl-], a                                      ; $72c3: $32
	pop af                                           ; $72c4: $f1
	cp e                                             ; $72c5: $bb
	ld e, [hl]                                       ; $72c6: $5e
	ccf                                              ; $72c7: $3f
	ld c, [hl]                                       ; $72c8: $4e
	ldh a, [$b1]                                     ; $72c9: $f0 $b1
	ldh a, [c]                                       ; $72cb: $f2
	ld [hl+], a                                      ; $72cc: $22
	ld d, e                                          ; $72cd: $53
	ld b, [hl]                                       ; $72ce: $46
	ld c, [hl]                                       ; $72cf: $4e
	adc l                                            ; $72d0: $8d
	dec [hl]                                         ; $72d1: $35
	inc sp                                           ; $72d2: $33
	add hl, bc                                       ; $72d3: $09
	ld b, b                                          ; $72d4: $40
	ld c, l                                          ; $72d5: $4d
	ld c, c                                          ; $72d6: $49
	ld a, [hl-]                                      ; $72d7: $3a
	ld d, l                                          ; $72d8: $55
	adc e                                            ; $72d9: $8b
	ld e, h                                          ; $72da: $5c
	ld a, [hl-]                                      ; $72db: $3a
	ldh a, [$30]                                     ; $72dc: $f0 $30
	ldh a, [$28]                                     ; $72de: $f0 $28
	ld h, d                                          ; $72e0: $62
	pop af                                           ; $72e1: $f1
	adc l                                            ; $72e2: $8d
	ld c, [hl]                                       ; $72e3: $4e
	add hl, bc                                       ; $72e4: $09
	ldh a, [$60]                                     ; $72e5: $f0 $60
	ld e, c                                          ; $72e7: $59
	add c                                            ; $72e8: $81
	ld c, d                                          ; $72e9: $4a
	pop af                                           ; $72ea: $f1
	dec c                                            ; $72eb: $0d
	ldh a, [$79]                                     ; $72ec: $f0 $79
	ld d, c                                          ; $72ee: $51
	ld c, [hl]                                       ; $72ef: $4e
	ld b, c                                          ; $72f0: $41
	ld e, e                                          ; $72f1: $5b
	ld d, [hl]                                       ; $72f2: $56
	ld a, [hl-]                                      ; $72f3: $3a
	jr c, jr_078_72ff                                ; $72f4: $38 $09

	ldh a, [$de]                                     ; $72f6: $f0 $de
	ldh a, [rWY]                                     ; $72f8: $f0 $4a
	ldh a, [$c3]                                     ; $72fa: $f0 $c3
	ldh a, [$6d]                                     ; $72fc: $f0 $6d
	ld e, c                                          ; $72fe: $59

jr_078_72ff:
	ldh a, [$27]                                     ; $72ff: $f0 $27
	ldh a, [rAUD1LEN]                                ; $7301: $f0 $11
	ld e, c                                          ; $7303: $59
	ldh a, [$ba]                                     ; $7304: $f0 $ba
	ld e, c                                          ; $7306: $59
	ld b, a                                          ; $7307: $47
	ld h, a                                          ; $7308: $67
	ld d, l                                          ; $7309: $55
	add hl, bc                                       ; $730a: $09
	ldh a, [$9d]                                     ; $730b: $f0 $9d
	ldh a, [$f1]                                     ; $730d: $f0 $f1
	ldh a, [$03]                                     ; $730f: $f0 $03
	ldh a, [$6d]                                     ; $7311: $f0 $6d
	ld e, c                                          ; $7313: $59
	ldh a, [$27]                                     ; $7314: $f0 $27
	ldh a, [rAUD1LEN]                                ; $7316: $f0 $11
	ld e, c                                          ; $7318: $59
	ldh a, [$ba]                                     ; $7319: $f0 $ba
	ld e, c                                          ; $731b: $59
	ld b, a                                          ; $731c: $47
	ld h, a                                          ; $731d: $67
	ld d, l                                          ; $731e: $55
	add hl, bc                                       ; $731f: $09
	ldh a, [$7e]                                     ; $7320: $f0 $7e
	pop af                                           ; $7322: $f1
	inc sp                                           ; $7323: $33
	ld [hl], e                                       ; $7324: $73
	ld l, c                                          ; $7325: $69
	ldh a, [rAUD1LEN]                                ; $7326: $f0 $11
	ld e, c                                          ; $7328: $59
	add e                                            ; $7329: $83
	ldh a, [rDIV]                                    ; $732a: $f0 $04
	ld e, c                                          ; $732c: $59
	ld b, a                                          ; $732d: $47
	ldh a, [rLCDC]                                   ; $732e: $f0 $40
	ld e, a                                          ; $7330: $5f
	add hl, sp                                       ; $7331: $39
	add hl, bc                                       ; $7332: $09
	ld l, d                                          ; $7333: $6a
	ld b, d                                          ; $7334: $42
	ldh a, [$74]                                     ; $7335: $f0 $74
	ldh a, [$7a]                                     ; $7337: $f0 $7a
	inc [hl]                                         ; $7339: $34
	add b                                            ; $733a: $80
	ld d, d                                          ; $733b: $52
	ld d, b                                          ; $733c: $50
	ld a, [hl-]                                      ; $733d: $3a
	inc a                                            ; $733e: $3c
	dec sp                                           ; $733f: $3b
	dec a                                            ; $7340: $3d
	ld c, h                                          ; $7341: $4c
	add hl, bc                                       ; $7342: $09
	ld l, d                                          ; $7343: $6a
	ld b, d                                          ; $7344: $42
	ldh a, [$74]                                     ; $7345: $f0 $74
	ldh a, [$7a]                                     ; $7347: $f0 $7a
	inc [hl]                                         ; $7349: $34
	ld d, d                                          ; $734a: $52
	ld b, [hl]                                       ; $734b: $46
	ld d, d                                          ; $734c: $52
	ld b, [hl]                                       ; $734d: $46
	ld b, h                                          ; $734e: $44
	dec sp                                           ; $734f: $3b
	dec a                                            ; $7350: $3d
	ld c, h                                          ; $7351: $4c
	add hl, bc                                       ; $7352: $09
	ldh a, [c]                                       ; $7353: $f2
	sbc d                                            ; $7354: $9a
	ld d, a                                          ; $7355: $57
	ldh a, [c]                                       ; $7356: $f2
	or d                                             ; $7357: $b2
	ldh a, [c]                                       ; $7358: $f2
	ld d, [hl]                                       ; $7359: $56
	ld c, l                                          ; $735a: $4d
	ldh a, [c]                                       ; $735b: $f2
	adc b                                            ; $735c: $88
	ldh a, [$5d]                                     ; $735d: $f0 $5d
	pop af                                           ; $735f: $f1
	jr nz, jr_078_739d                               ; $7360: $20 $3b

	ccf                                              ; $7362: $3f
	ldh a, [$f8]                                     ; $7363: $f0 $f8
	ld b, h                                          ; $7365: $44
	ld c, h                                          ; $7366: $4c
	add hl, bc                                       ; $7367: $09
	ld a, l                                          ; $7368: $7d
	ldh a, [$03]                                     ; $7369: $f0 $03
	ldh a, [$35]                                     ; $736b: $f0 $35
	dec sp                                           ; $736d: $3b
	ccf                                              ; $736e: $3f
	inc [hl]                                         ; $736f: $34
	ldh a, [$08]                                     ; $7370: $f0 $08
	di                                               ; $7372: $f3
	ld hl, $04f3                                     ; $7373: $21 $f3 $04
	ld a, [hl-]                                      ; $7376: $3a
	ld b, c                                          ; $7377: $41
	ld b, h                                          ; $7378: $44
	ld b, l                                          ; $7379: $45
	add hl, bc                                       ; $737a: $09
	ld l, e                                          ; $737b: $6b
	di                                               ; $737c: $f3
	ld e, b                                          ; $737d: $58
	ldh a, [rAUD1HIGH]                               ; $737e: $f0 $14
	ld c, a                                          ; $7380: $4f
	sbc [hl]                                         ; $7381: $9e
	ld b, d                                          ; $7382: $42
	ldh a, [c]                                       ; $7383: $f2
	jp c, $3a5c                                      ; $7384: $da $5c $3a

	ld b, c                                          ; $7387: $41
	ld b, h                                          ; $7388: $44
	ld b, l                                          ; $7389: $45
	ld c, h                                          ; $738a: $4c
	add hl, bc                                       ; $738b: $09
	adc b                                            ; $738c: $88
	ld l, b                                          ; $738d: $68
	ld b, d                                          ; $738e: $42
	ldh a, [$3e]                                     ; $738f: $f0 $3e
	ldh a, [$74]                                     ; $7391: $f0 $74
	ld h, d                                          ; $7393: $62
	ldh a, [$ce]                                     ; $7394: $f0 $ce
	ldh a, [c]                                       ; $7396: $f2
	ld e, b                                          ; $7397: $58
	jr c, jr_078_73d7                                ; $7398: $38 $3d

	ld a, $52                                        ; $739a: $3e $52
	ld d, c                                          ; $739c: $51

jr_078_739d:
	add hl, bc                                       ; $739d: $09
	pop af                                           ; $739e: $f1
	ld [hl], b                                       ; $739f: $70
	ldh a, [rHDMA2]                                  ; $73a0: $f0 $52
	pop af                                           ; $73a2: $f1
	add hl, de                                       ; $73a3: $19
	pop af                                           ; $73a4: $f1
	dec c                                            ; $73a5: $0d
	ld b, d                                          ; $73a6: $42
	ld l, l                                          ; $73a7: $6d
	ldh a, [$30]                                     ; $73a8: $f0 $30
	ldh a, [rAUD4ENV]                                ; $73aa: $f0 $21
	ld l, h                                          ; $73ac: $6c
	dec a                                            ; $73ad: $3d
	jr c, jr_078_73f4                                ; $73ae: $38 $44

	ld c, h                                          ; $73b0: $4c
	add hl, bc                                       ; $73b1: $09
	pop af                                           ; $73b2: $f1
	db $ed                                           ; $73b3: $ed
	pop af                                           ; $73b4: $f1
	ld h, $4b                                        ; $73b5: $26 $4b
	inc [hl]                                         ; $73b7: $34
	ld h, h                                          ; $73b8: $64
	ldh a, [c]                                       ; $73b9: $f2
	add h                                            ; $73ba: $84
	ld d, e                                          ; $73bb: $53
	ld d, c                                          ; $73bc: $51
	jr c, jr_078_73fe                                ; $73bd: $38 $3f

	ld d, l                                          ; $73bf: $55
	ld c, [hl]                                       ; $73c0: $4e
	ld c, h                                          ; $73c1: $4c
	add hl, bc                                       ; $73c2: $09
	ldh a, [rIF]                                     ; $73c3: $f0 $0f
	pop af                                           ; $73c5: $f1
	ld b, l                                          ; $73c6: $45
	ldh a, [$03]                                     ; $73c7: $f0 $03
	pop af                                           ; $73c9: $f1
	ret c                                            ; $73ca: $d8

	ldh a, [c]                                       ; $73cb: $f2
	ld de, $f053                                     ; $73cc: $11 $53 $f0
	ld hl, $23f0                                     ; $73cf: $21 $f0 $23
	jr c, jr_078_741d                                ; $73d2: $38 $49

	ld [hl], a                                       ; $73d4: $77
	add hl, sp                                       ; $73d5: $39
	ld b, l                                          ; $73d6: $45

jr_078_73d7:
	add hl, bc                                       ; $73d7: $09
	ld b, [hl]                                       ; $73d8: $46
	ld c, l                                          ; $73d9: $4d
	ld c, d                                          ; $73da: $4a
	ld [hl], $64                                     ; $73db: $36 $64
	inc a                                            ; $73dd: $3c
	ld a, $38                                        ; $73de: $3e $38
	ld b, c                                          ; $73e0: $41
	ld e, e                                          ; $73e1: $5b
	ld d, [hl]                                       ; $73e2: $56
	ld a, [hl-]                                      ; $73e3: $3a
	jr c, jr_078_73ef                                ; $73e4: $38 $09

	ld [hl], d                                       ; $73e6: $72
	ld c, [hl]                                       ; $73e7: $4e
	ld b, d                                          ; $73e8: $42
	pop af                                           ; $73e9: $f1
	jr nc, jr_078_745d                               ; $73ea: $30 $71

	ld c, l                                          ; $73ec: $4d
	ld a, e                                          ; $73ed: $7b
	ld b, l                                          ; $73ee: $45

jr_078_73ef:
	inc a                                            ; $73ef: $3c
	dec sp                                           ; $73f0: $3b
	dec a                                            ; $73f1: $3d
	inc a                                            ; $73f2: $3c
	ld a, [hl-]                                      ; $73f3: $3a

jr_078_73f4:
	add hl, bc                                       ; $73f4: $09
	add a                                            ; $73f5: $87
	ldh a, [$5b]                                     ; $73f6: $f0 $5b
	ldh a, [$5e]                                     ; $73f8: $f0 $5e
	ld b, h                                          ; $73fa: $44
	ld b, l                                          ; $73fb: $45
	dec [hl]                                         ; $73fc: $35
	pop af                                           ; $73fd: $f1

jr_078_73fe:
	adc $3a                                          ; $73fe: $ce $3a
	ld d, l                                          ; $7400: $55
	ld a, [hl-]                                      ; $7401: $3a
	jr c, jr_078_7440                                ; $7402: $38 $3c

	ld d, b                                          ; $7404: $50
	add hl, bc                                       ; $7405: $09
	ld d, h                                          ; $7406: $54
	ld b, d                                          ; $7407: $42
	ldh a, [$3f]                                     ; $7408: $f0 $3f
	inc [hl]                                         ; $740a: $34
	ld e, h                                          ; $740b: $5c
	ld c, l                                          ; $740c: $4d
	jr c, jr_078_7453                                ; $740d: $38 $44

	ld c, c                                          ; $740f: $49
	ld [hl], a                                       ; $7410: $77
	ld h, e                                          ; $7411: $63
	ld a, [hl-]                                      ; $7412: $3a
	jr c, jr_078_741e                                ; $7413: $38 $09

	add e                                            ; $7415: $83
	ldh a, [$c2]                                     ; $7416: $f0 $c2
	ld e, c                                          ; $7418: $59
	ld l, c                                          ; $7419: $69
	ld a, [hl-]                                      ; $741a: $3a
	ld d, b                                          ; $741b: $50
	halt                                             ; $741c: $76

jr_078_741d:
	ld b, a                                          ; $741d: $47

jr_078_741e:
	pop af                                           ; $741e: $f1
	dec h                                            ; $741f: $25
	ld a, c                                          ; $7420: $79
	ccf                                              ; $7421: $3f
	ld d, l                                          ; $7422: $55
	ld c, l                                          ; $7423: $4d
	add hl, bc                                       ; $7424: $09
	jr c, jr_078_7495                                ; $7425: $38 $6e

	inc [hl]                                         ; $7427: $34
	ld l, [hl]                                       ; $7428: $6e
	dec sp                                           ; $7429: $3b
	ldh a, [$36]                                     ; $742a: $f0 $36
	ld d, a                                          ; $742c: $57
	ld l, l                                          ; $742d: $6d
	add h                                            ; $742e: $84
	ld c, d                                          ; $742f: $4a
	ld h, a                                          ; $7430: $67
	ld d, l                                          ; $7431: $55
	ld b, l                                          ; $7432: $45
	add hl, bc                                       ; $7433: $09
	ld l, e                                          ; $7434: $6b
	inc [hl]                                         ; $7435: $34
	pop af                                           ; $7436: $f1
	or d                                             ; $7437: $b2
	pop af                                           ; $7438: $f1
	ld c, b                                          ; $7439: $48
	ld a, [hl-]                                      ; $743a: $3a
	ld d, h                                          ; $743b: $54
	ld c, c                                          ; $743c: $49
	add d                                            ; $743d: $82
	dec sp                                           ; $743e: $3b
	ccf                                              ; $743f: $3f

jr_078_7440:
	ld b, c                                          ; $7440: $41
	ld b, h                                          ; $7441: $44
	ld b, l                                          ; $7442: $45
	add hl, bc                                       ; $7443: $09
	ldh a, [rOBP1]                                   ; $7444: $f0 $49
	ldh a, [$59]                                     ; $7446: $f0 $59
	inc [hl]                                         ; $7448: $34
	ldh a, [$b5]                                     ; $7449: $f0 $b5
	dec sp                                           ; $744b: $3b
	ld d, l                                          ; $744c: $55
	ld d, a                                          ; $744d: $57
	ld [hl], d                                       ; $744e: $72
	ccf                                              ; $744f: $3f
	ccf                                              ; $7450: $3f
	jr c, jr_078_748b                                ; $7451: $38 $38

jr_078_7453:
	ld b, l                                          ; $7453: $45
	add hl, bc                                       ; $7454: $09
	ld d, d                                          ; $7455: $52
	dec sp                                           ; $7456: $3b
	dec a                                            ; $7457: $3d
	ld d, l                                          ; $7458: $55
	inc [hl]                                         ; $7459: $34
	ld d, h                                          ; $745a: $54
	ld b, c                                          ; $745b: $41
	ld a, [hl-]                                      ; $745c: $3a

jr_078_745d:
	ld b, a                                          ; $745d: $47
	pop af                                           ; $745e: $f1
	ld c, $39                                        ; $745f: $0e $39
	ld a, [hl-]                                      ; $7461: $3a
	ld b, l                                          ; $7462: $45
	add hl, bc                                       ; $7463: $09
	ld d, d                                          ; $7464: $52
	ld b, [hl]                                       ; $7465: $46
	ld d, d                                          ; $7466: $52
	ld b, [hl]                                       ; $7467: $46
	inc [hl]                                         ; $7468: $34
	ldh a, [$66]                                     ; $7469: $f0 $66
	ld b, c                                          ; $746b: $41
	ld c, d                                          ; $746c: $4a
	ld c, a                                          ; $746d: $4f
	ld d, b                                          ; $746e: $50
	ld e, [hl]                                       ; $746f: $5e
	dec a                                            ; $7470: $3d
	ld a, [hl-]                                      ; $7471: $3a
	add hl, bc                                       ; $7472: $09
	ld c, c                                          ; $7473: $49
	dec sp                                           ; $7474: $3b
	ccf                                              ; $7475: $3f
	ld c, a                                          ; $7476: $4f
	ldh a, [$97]                                     ; $7477: $f0 $97
	sbc h                                            ; $7479: $9c
	inc a                                            ; $747a: $3c
	ld a, $53                                        ; $747b: $3e $53
	ld d, a                                          ; $747d: $57
	pop af                                           ; $747e: $f1
	ld b, h                                          ; $747f: $44
	ld a, [hl-]                                      ; $7480: $3a
	ld b, d                                          ; $7481: $42
	add hl, bc                                       ; $7482: $09
	ld [hl-], a                                      ; $7483: $32
	ldh a, [c]                                       ; $7484: $f2
	add b                                            ; $7485: $80
	ldh a, [rAUD3LEVEL]                              ; $7486: $f0 $1c
	ld c, d                                          ; $7488: $4a
	inc [hl]                                         ; $7489: $34
	ld h, c                                          ; $748a: $61

jr_078_748b:
	ld h, [hl]                                       ; $748b: $66
	dec sp                                           ; $748c: $3b
	ld c, c                                          ; $748d: $49
	ld [hl], d                                       ; $748e: $72
	ld h, c                                          ; $748f: $61
	ld d, [hl]                                       ; $7490: $56
	ld e, [hl]                                       ; $7491: $5e
	add hl, bc                                       ; $7492: $09
	ldh a, [rAUD2ENV]                                ; $7493: $f0 $17

jr_078_7495:
	ld b, d                                          ; $7495: $42
	adc h                                            ; $7496: $8c
	ld b, a                                          ; $7497: $47
	ld h, e                                          ; $7498: $63
	ld d, a                                          ; $7499: $57
	ld c, c                                          ; $749a: $49
	add h                                            ; $749b: $84
	ld a, a                                          ; $749c: $7f
	ld b, [hl]                                       ; $749d: $46
	ld c, [hl]                                       ; $749e: $4e
	ld b, l                                          ; $749f: $45
	ld c, h                                          ; $74a0: $4c
	add hl, bc                                       ; $74a1: $09
	ld d, l                                          ; $74a2: $55
	ld b, b                                          ; $74a3: $40
	inc [hl]                                         ; $74a4: $34
	jr c, @+$3a                                      ; $74a5: $38 $38

	ld a, a                                          ; $74a7: $7f
	ld b, a                                          ; $74a8: $47
	ld a, [hl-]                                      ; $74a9: $3a
	ld d, a                                          ; $74aa: $57
	ld l, [hl]                                       ; $74ab: $6e
	ld d, e                                          ; $74ac: $53
	dec sp                                           ; $74ad: $3b
	ccf                                              ; $74ae: $3f
	add hl, bc                                       ; $74af: $09
	ld b, [hl]                                       ; $74b0: $46
	ld b, c                                          ; $74b1: $41
	ld a, [hl-]                                      ; $74b2: $3a
	ld b, d                                          ; $74b3: $42
	adc h                                            ; $74b4: $8c
	pop af                                           ; $74b5: $f1
	ld e, [hl]                                       ; $74b6: $5e
	ld b, h                                          ; $74b7: $44
	ld d, d                                          ; $74b8: $52
	ld a, $5b                                        ; $74b9: $3e $5b
	ld d, [hl]                                       ; $74bb: $56
	ld a, [hl-]                                      ; $74bc: $3a
	jr c, jr_078_74c8                                ; $74bd: $38 $09

	ldh a, [c]                                       ; $74bf: $f2
	ld d, e                                          ; $74c0: $53
	ld b, d                                          ; $74c1: $42
	ldh a, [$3e]                                     ; $74c2: $f0 $3e
	ld c, e                                          ; $74c4: $4b
	ld h, c                                          ; $74c5: $61
	ld h, [hl]                                       ; $74c6: $66
	dec sp                                           ; $74c7: $3b

jr_078_74c8:
	ld c, c                                          ; $74c8: $49
	di                                               ; $74c9: $f3
	rst GetHLinHL                                          ; $74ca: $cf
	di                                               ; $74cb: $f3
	ret nc                                           ; $74cc: $d0

	ld b, h                                          ; $74cd: $44
	ld b, l                                          ; $74ce: $45
	ld c, h                                          ; $74cf: $4c
	add hl, bc                                       ; $74d0: $09
	pop af                                           ; $74d1: $f1
	ld l, c                                          ; $74d2: $69
	db $f4                                           ; $74d3: $f4
	dec [hl]                                         ; $74d4: $35
	di                                               ; $74d5: $f3
	ld c, $62                                        ; $74d6: $0e $62
	ldh a, [$3e]                                     ; $74d8: $f0 $3e
	ldh a, [$d3]                                     ; $74da: $f0 $d3
	dec sp                                           ; $74dc: $3b
	ccf                                              ; $74dd: $3f
	jr c, jr_078_7532                                ; $74de: $38 $52

	ld d, c                                          ; $74e0: $51
	dec [hl]                                         ; $74e1: $35
	ldh a, [$eb]                                     ; $74e2: $f0 $eb
	add hl, bc                                       ; $74e4: $09


TextLargeDict_046:
	ld c, e                                          ; $74e5: $4b
	jr c, jr_078_751c                                ; $74e6: $38 $34

	ld b, l                                          ; $74e8: $45
	ld e, a                                          ; $74e9: $5f
	ld a, $55                                        ; $74ea: $3e $55
	ld h, h                                          ; $74ec: $64
	ldh a, [$c8]                                     ; $74ed: $f0 $c8
	jr c, jr_078_752f                                ; $74ef: $38 $3e

	ld d, d                                          ; $74f1: $52
	ld d, c                                          ; $74f2: $51
	add hl, bc                                       ; $74f3: $09


;
	ld d, h                                          ; $74f4: $54
	ld b, d                                          ; $74f5: $42
	ldh a, [$8e]                                     ; $74f6: $f0 $8e
	pop af                                           ; $74f8: $f1
	ld c, l                                          ; $74f9: $4d
	ld a, l                                          ; $74fa: $7d
	ldh a, [$03]                                     ; $74fb: $f0 $03
	ld h, d                                          ; $74fd: $62
	ldh a, [$1f]                                     ; $74fe: $f0 $1f
	ld e, c                                          ; $7500: $59
	ldh a, [$32]                                     ; $7501: $f0 $32
	ld a, $52                                        ; $7503: $3e $52
	ld d, c                                          ; $7505: $51
	add hl, bc                                       ; $7506: $09
	ld l, l                                          ; $7507: $6d
	ldh a, [hDisp0_BGP]                                     ; $7508: $f0 $85
	add a                                            ; $750a: $87
	adc c                                            ; $750b: $89
	ld b, a                                          ; $750c: $47
	ldh a, [rOCPS]                                   ; $750d: $f0 $6a
	add hl, sp                                       ; $750f: $39
	ld d, h                                          ; $7510: $54
	ld c, c                                          ; $7511: $49
	ld b, a                                          ; $7512: $47
	ld a, [hl-]                                      ; $7513: $3a
	dec sp                                           ; $7514: $3b
	dec a                                            ; $7515: $3d
	add hl, bc                                       ; $7516: $09
	ldh a, [hDisp0_SCX]                                     ; $7517: $f0 $84
	ldh a, [hDisp0_BGP]                                     ; $7519: $f0 $85
	add a                                            ; $751b: $87

jr_078_751c:
	adc c                                            ; $751c: $89
	ld b, a                                          ; $751d: $47
	ldh a, [rOCPS]                                   ; $751e: $f0 $6a
	add hl, sp                                       ; $7520: $39
	ld d, h                                          ; $7521: $54
	ld c, c                                          ; $7522: $49
	ld b, a                                          ; $7523: $47
	ld a, [hl-]                                      ; $7524: $3a
	dec sp                                           ; $7525: $3b
	dec a                                            ; $7526: $3d
	add hl, bc                                       ; $7527: $09
	pop af                                           ; $7528: $f1
	ld [hl], e                                       ; $7529: $73
	ldh a, [hDisp0_BGP]                                     ; $752a: $f0 $85
	add a                                            ; $752c: $87
	adc c                                            ; $752d: $89
	ld b, a                                          ; $752e: $47

jr_078_752f:
	ldh a, [rOCPS]                                   ; $752f: $f0 $6a
	add hl, sp                                       ; $7531: $39

jr_078_7532:
	ld d, h                                          ; $7532: $54
	ld c, c                                          ; $7533: $49
	ld b, a                                          ; $7534: $47
	ld a, [hl-]                                      ; $7535: $3a
	dec sp                                           ; $7536: $3b
	dec a                                            ; $7537: $3d
	add hl, bc                                       ; $7538: $09
	ldh a, [rIF]                                     ; $7539: $f0 $0f
	ldh a, [rP1]                                     ; $753b: $f0 $00
	ld b, a                                          ; $753d: $47
	pop af                                           ; $753e: $f1
	add h                                            ; $753f: $84
	adc c                                            ; $7540: $89
	ld d, c                                          ; $7541: $51
	ld c, [hl]                                       ; $7542: $4e
	ld d, h                                          ; $7543: $54
	ld c, c                                          ; $7544: $49
	ld b, a                                          ; $7545: $47
	ld a, [hl-]                                      ; $7546: $3a
	dec sp                                           ; $7547: $3b
	dec a                                            ; $7548: $3d
	add hl, bc                                       ; $7549: $09
	pop af                                           ; $754a: $f1
	xor [hl]                                         ; $754b: $ae
	adc h                                            ; $754c: $8c
	ldh a, [$5a]                                     ; $754d: $f0 $5a
	ld b, d                                          ; $754f: $42
	ldh a, [rHDMA2]                                  ; $7550: $f0 $52
	ld c, e                                          ; $7552: $4b
	ldh a, [$98]                                     ; $7553: $f0 $98
	ld b, a                                          ; $7555: $47
	ld c, a                                          ; $7556: $4f
	ldh a, [$e4]                                     ; $7557: $f0 $e4
	ld e, l                                          ; $7559: $5d
	ld a, [hl-]                                      ; $755a: $3a
	jr c, @+$0b                                      ; $755b: $38 $09

	ld l, d                                          ; $755d: $6a
	ldh a, [$7d]                                     ; $755e: $f0 $7d
	ld b, d                                          ; $7560: $42
	ldh a, [$b7]                                     ; $7561: $f0 $b7
	sbc d                                            ; $7563: $9a
	ld h, d                                          ; $7564: $62
	ldh a, [$a5]                                     ; $7565: $f0 $a5
	dec sp                                           ; $7567: $3b
	dec a                                            ; $7568: $3d
	ld b, d                                          ; $7569: $42
	inc a                                            ; $756a: $3c
	ld c, b                                          ; $756b: $48
	add hl, bc                                       ; $756c: $09
	ldh a, [rWY]                                     ; $756d: $f0 $4a
	ld e, c                                          ; $756f: $59
	ld l, c                                          ; $7570: $69
	ld b, d                                          ; $7571: $42
	ldh a, [$e2]                                     ; $7572: $f0 $e2
	ldh a, [$e3]                                     ; $7574: $f0 $e3
	ld d, e                                          ; $7576: $53
	ld b, [hl]                                       ; $7577: $46
	dec sp                                           ; $7578: $3b
	dec a                                            ; $7579: $3d
	ld b, c                                          ; $757a: $41
	ld b, h                                          ; $757b: $44
	add hl, bc                                       ; $757c: $09
	ld d, h                                          ; $757d: $54
	ld c, l                                          ; $757e: $4d
	inc a                                            ; $757f: $3c
	ld d, b                                          ; $7580: $50
	ldh a, [$31]                                     ; $7581: $f0 $31
	ldh a, [$ad]                                     ; $7583: $f0 $ad
	sbc b                                            ; $7585: $98
	ldh a, [rWX]                                     ; $7586: $f0 $4b
	ld e, c                                          ; $7588: $59
	ld a, [hl-]                                      ; $7589: $3a
	ld b, c                                          ; $758a: $41
	ld b, h                                          ; $758b: $44
	add hl, bc                                       ; $758c: $09
	ld [hl-], a                                      ; $758d: $32
	ld a, $52                                        ; $758e: $3e $52
	dec sp                                           ; $7590: $3b
	dec a                                            ; $7591: $3d
	inc [hl]                                         ; $7592: $34
	ld c, a                                          ; $7593: $4f
	add hl, sp                                       ; $7594: $39
	ld h, c                                          ; $7595: $61
	ld h, [hl]                                       ; $7596: $66
	dec sp                                           ; $7597: $3b
	ld c, c                                          ; $7598: $49
	add hl, bc                                       ; $7599: $09
	sbc b                                            ; $759a: $98
	ldh a, [rWX]                                     ; $759b: $f0 $4b
	ld e, c                                          ; $759d: $59
	ld b, d                                          ; $759e: $42
	sbc d                                            ; $759f: $9a
	ld c, e                                          ; $75a0: $4b
	ldh a, [rOBP1]                                   ; $75a1: $f0 $49
	ldh a, [$59]                                     ; $75a3: $f0 $59
	ldh a, [rAUD1LOW]                                ; $75a5: $f0 $13
	ldh a, [c]                                       ; $75a7: $f2
	rst GetHLinHL                                          ; $75a8: $cf
	ld d, c                                          ; $75a9: $51
	ld c, [hl]                                       ; $75aa: $4e
	add hl, bc                                       ; $75ab: $09
	ldh a, [rAUD4LEN]                                ; $75ac: $f0 $20
	ld e, c                                          ; $75ae: $59
	ldh a, [$2b]                                     ; $75af: $f0 $2b
	ldh a, [$7c]                                     ; $75b1: $f0 $7c
	ldh a, [$03]                                     ; $75b3: $f0 $03
	sbc b                                            ; $75b5: $98
	ld [hl], e                                       ; $75b6: $73
	add c                                            ; $75b7: $81
	ld b, a                                          ; $75b8: $47
	ldh a, [rLCDC]                                   ; $75b9: $f0 $40
	ld e, a                                          ; $75bb: $5f
	add hl, sp                                       ; $75bc: $39
	add hl, bc                                       ; $75bd: $09
	ld d, h                                          ; $75be: $54
	ld d, h                                          ; $75bf: $54
	ld c, e                                          ; $75c0: $4b
	pop af                                           ; $75c1: $f1
	dec h                                            ; $75c2: $25
	ld a, c                                          ; $75c3: $79
	ccf                                              ; $75c4: $3f
	inc [hl]                                         ; $75c5: $34
	ldh a, [$0a]                                     ; $75c6: $f0 $0a
	ld d, l                                          ; $75c8: $55
	ldh a, [$e1]                                     ; $75c9: $f0 $e1
	ldh a, [rSB]                                     ; $75cb: $f0 $01
	ccf                                              ; $75cd: $3f
	add hl, bc                                       ; $75ce: $09
	ldh a, [$98]                                     ; $75cf: $f0 $98
	ld b, a                                          ; $75d1: $47
	ld c, d                                          ; $75d2: $4a
	ld c, a                                          ; $75d3: $4f
	ldh a, [$bd]                                     ; $75d4: $f0 $bd
	ld e, l                                          ; $75d6: $5d
	ld c, [hl]                                       ; $75d7: $4e
	ld b, c                                          ; $75d8: $41
	ld e, e                                          ; $75d9: $5b
	ld d, [hl]                                       ; $75da: $56
	ld a, [hl-]                                      ; $75db: $3a
	jr c, jr_078_75e7                                ; $75dc: $38 $09

	sub e                                            ; $75de: $93
	ld [hl], l                                       ; $75df: $75
	ld e, c                                          ; $75e0: $59
	ld h, l                                          ; $75e1: $65
	ldh a, [$6d]                                     ; $75e2: $f0 $6d
	ld e, c                                          ; $75e4: $59
	ldh a, [$27]                                     ; $75e5: $f0 $27

jr_078_75e7:
	ld a, [hl-]                                      ; $75e7: $3a
	ld b, c                                          ; $75e8: $41
	ccf                                              ; $75e9: $3f
	ld e, d                                          ; $75ea: $5a
	add hl, sp                                       ; $75eb: $39
	add hl, bc                                       ; $75ec: $09
	ldh a, [$3e]                                     ; $75ed: $f0 $3e
	ldh a, [$0b]                                     ; $75ef: $f0 $0b
	ld b, h                                          ; $75f1: $44
	dec sp                                           ; $75f2: $3b
	dec a                                            ; $75f3: $3d
	ld b, l                                          ; $75f4: $45
	dec [hl]                                         ; $75f5: $35
	add c                                            ; $75f6: $81
	ldh a, [$1f]                                     ; $75f7: $f0 $1f
	ld l, h                                          ; $75f9: $6c
	dec a                                            ; $75fa: $3d
	jr c, @+$0b                                      ; $75fb: $38 $09

	ld b, [hl]                                       ; $75fd: $46
	ld c, l                                          ; $75fe: $4d
	ld c, e                                          ; $75ff: $4b
	inc [hl]                                         ; $7600: $34
	ldh a, [rAUD4GO]                                 ; $7601: $f0 $23
	ldh a, [c]                                       ; $7603: $f2
	rrca                                             ; $7604: $0f
	ldh a, [$e7]                                     ; $7605: $f0 $e7
	ld b, h                                          ; $7607: $44
	ld c, c                                          ; $7608: $49
	ld [hl], a                                       ; $7609: $77
	add hl, sp                                       ; $760a: $39
	ld b, l                                          ; $760b: $45
	add hl, bc                                       ; $760c: $09
	ld b, [hl]                                       ; $760d: $46
	ld e, c                                          ; $760e: $59
	dec sp                                           ; $760f: $3b
	scf                                              ; $7610: $37
	ld l, h                                          ; $7611: $6c
	ld b, c                                          ; $7612: $41
	ld a, [hl-]                                      ; $7613: $3a
	ldh a, [$dd]                                     ; $7614: $f0 $dd
	ldh a, [$9c]                                     ; $7616: $f0 $9c
	ld a, $3f                                        ; $7618: $3e $3f
	ld c, [hl]                                       ; $761a: $4e
	add hl, bc                                       ; $761b: $09
	ldh a, [hDisp0_OBP0]                                     ; $761c: $f0 $86
	ld h, d                                          ; $761e: $62
	ld [hl], d                                       ; $761f: $72
	ccf                                              ; $7620: $3f
	ld c, [hl]                                       ; $7621: $4e
	ld c, c                                          ; $7622: $49
	inc [hl]                                         ; $7623: $34
	ldh a, [rVBK]                                    ; $7624: $f0 $4f
	ld d, e                                          ; $7626: $53
	ldh a, [hDisp1_OBP0]                                     ; $7627: $f0 $93
	ldh a, [$be]                                     ; $7629: $f0 $be
	ld c, h                                          ; $762b: $4c
	add hl, bc                                       ; $762c: $09
	ld b, b                                          ; $762d: $40
	inc [hl]                                         ; $762e: $34
	ld b, b                                          ; $762f: $40
	add hl, sp                                       ; $7630: $39
	ld b, h                                          ; $7631: $44
	ld b, l                                          ; $7632: $45
	ld c, h                                          ; $7633: $4c
	dec [hl]                                         ; $7634: $35
	ld [hl], b                                       ; $7635: $70
	ld [hl], c                                       ; $7636: $71
	ld b, c                                          ; $7637: $41
	ld c, h                                          ; $7638: $4c
	add hl, bc                                       ; $7639: $09
	ld d, h                                          ; $763a: $54
	add hl, sp                                       ; $763b: $39
	jr c, jr_078_7677                                ; $763c: $38 $39

	ldh a, [$3f]                                     ; $763e: $f0 $3f
	inc [hl]                                         ; $7640: $34
	ldh a, [$64]                                     ; $7641: $f0 $64
	jr c, jr_078_767f                                ; $7643: $38 $3a

	ld b, c                                          ; $7645: $41
	ld b, h                                          ; $7646: $44
	ld c, h                                          ; $7647: $4c
	add hl, bc                                       ; $7648: $09
	add hl, sp                                       ; $7649: $39
	ld b, c                                          ; $764a: $41
	inc [hl]                                         ; $764b: $34
	ldh a, [$57]                                     ; $764c: $f0 $57
	pop af                                           ; $764e: $f1
	ld e, $50                                        ; $764f: $1e $50
	ld a, $38                                        ; $7651: $3e $38
	ldh a, [$a5]                                     ; $7653: $f0 $a5
	ldh a, [c]                                       ; $7655: $f2
	ld a, [bc]                                       ; $7656: $0a
	ld b, h                                          ; $7657: $44
	ld c, h                                          ; $7658: $4c
	add hl, bc                                       ; $7659: $09
	ldh a, [$7e]                                     ; $765a: $f0 $7e
	ldh a, [$a1]                                     ; $765c: $f0 $a1
	ld e, c                                          ; $765e: $59
	add e                                            ; $765f: $83
	ld h, d                                          ; $7660: $62
	di                                               ; $7661: $f3
	ld d, a                                          ; $7662: $57
	ld b, a                                          ; $7663: $47
	ld b, [hl]                                       ; $7664: $46
	ccf                                              ; $7665: $3f
	ld h, c                                          ; $7666: $61
	ld d, [hl]                                       ; $7667: $56
	ld e, [hl]                                       ; $7668: $5e
	add hl, bc                                       ; $7669: $09
	ldh a, [rAUD4POLY]                               ; $766a: $f0 $22
	ld h, l                                          ; $766c: $65
	add e                                            ; $766d: $83
	sub e                                            ; $766e: $93
	ldh a, [rP1]                                     ; $766f: $f0 $00
	ld e, c                                          ; $7671: $59
	ld h, l                                          ; $7672: $65
	ld c, d                                          ; $7673: $4a
	pop af                                           ; $7674: $f1
	add c                                            ; $7675: $81
	pop af                                           ; $7676: $f1

jr_078_7677:
	ld l, $5c                                        ; $7677: $2e $5c
	ld b, h                                          ; $7679: $44
	add hl, bc                                       ; $767a: $09
	ld b, [hl]                                       ; $767b: $46
	dec sp                                           ; $767c: $3b
	inc [hl]                                         ; $767d: $34
	ld b, [hl]                                       ; $767e: $46

jr_078_767f:
	ld b, b                                          ; $767f: $40
	ld d, h                                          ; $7680: $54
	ld b, a                                          ; $7681: $47
	di                                               ; $7682: $f3
	call nc, $3853                                   ; $7683: $d4 $53 $38
	ld c, [hl]                                       ; $7686: $4e
	sub a                                            ; $7687: $97
	add hl, bc                                       ; $7688: $09
	ldh a, [rOCPD]                                   ; $7689: $f0 $6b
	ld h, l                                          ; $768b: $65
	ld l, c                                          ; $768c: $69
	inc [hl]                                         ; $768d: $34
	dec a                                            ; $768e: $3d
	ld d, l                                          ; $768f: $55
	ld e, b                                          ; $7690: $58
	ld b, c                                          ; $7691: $41
	pop af                                           ; $7692: $f1
	ld c, $3b                                        ; $7693: $0e $3b
	dec a                                            ; $7695: $3d
	ld c, h                                          ; $7696: $4c
	add hl, bc                                       ; $7697: $09
	ld c, d                                          ; $7698: $4a
	ld c, a                                          ; $7699: $4f
	inc [hl]                                         ; $769a: $34
	ld b, [hl]                                       ; $769b: $46
	ld c, l                                          ; $769c: $4d
	ld c, a                                          ; $769d: $4f
	ldh a, [$80]                                     ; $769e: $f0 $80
	ldh a, [$c5]                                     ; $76a0: $f0 $c5
	ldh a, [$8a]                                     ; $76a2: $f0 $8a
	ldh a, [rHDMA2]                                  ; $76a4: $f0 $52
	jr c, jr_078_76ed                                ; $76a6: $38 $45

	add hl, bc                                       ; $76a8: $09
	ld d, h                                          ; $76a9: $54
	ld b, d                                          ; $76aa: $42
	pop af                                           ; $76ab: $f1
	cp a                                             ; $76ac: $bf
	ld b, d                                          ; $76ad: $42
	ldh a, [$09]                                     ; $76ae: $f0 $09
	ld [hl], e                                       ; $76b0: $73
	sub e                                            ; $76b1: $93
	ld [hl], l                                       ; $76b2: $75
	add e                                            ; $76b3: $83
	ld c, e                                          ; $76b4: $4b
	ld e, d                                          ; $76b5: $5a
	add hl, sp                                       ; $76b6: $39
	add hl, bc                                       ; $76b7: $09
	ld b, [hl]                                       ; $76b8: $46
	ld b, d                                          ; $76b9: $42
	add e                                            ; $76ba: $83
	ldh a, [$fd]                                     ; $76bb: $f0 $fd
	ld e, c                                          ; $76bd: $59
	ldh a, [$32]                                     ; $76be: $f0 $32
	ldh a, [$78]                                     ; $76c0: $f0 $78
	inc [hl]                                         ; $76c2: $34
	ldh a, [$5f]                                     ; $76c3: $f0 $5f
	ldh a, [rAUD1ENV]                                ; $76c5: $f0 $12
	ld b, h                                          ; $76c7: $44
	ld c, h                                          ; $76c8: $4c
	add hl, bc                                       ; $76c9: $09
	add e                                            ; $76ca: $83
	ldh a, [$2f]                                     ; $76cb: $f0 $2f
	ld e, c                                          ; $76cd: $59
	ld a, [hl-]                                      ; $76ce: $3a
	ld d, b                                          ; $76cf: $50
	halt                                             ; $76d0: $76
	ld b, a                                          ; $76d1: $47
	pop af                                           ; $76d2: $f1
	dec h                                            ; $76d3: $25
	ld a, c                                          ; $76d4: $79
	ccf                                              ; $76d5: $3f
	ld d, l                                          ; $76d6: $55
	ld c, l                                          ; $76d7: $4d
	add hl, bc                                       ; $76d8: $09
	add hl, sp                                       ; $76d9: $39
	ld d, d                                          ; $76da: $52
	ld d, l                                          ; $76db: $55
	ldh a, [$a8]                                     ; $76dc: $f0 $a8
	pop af                                           ; $76de: $f1
	ld [$9453], sp                                   ; $76df: $08 $53 $94
	ld a, b                                          ; $76e2: $78
	ld a, [hl-]                                      ; $76e3: $3a
	jr c, jr_078_7727                                ; $76e4: $38 $41

	ld b, h                                          ; $76e6: $44
	add hl, bc                                       ; $76e7: $09
	ld b, h                                          ; $76e8: $44
	inc a                                            ; $76e9: $3c
	ld d, b                                          ; $76ea: $50
	ld d, h                                          ; $76eb: $54
	ld b, b                                          ; $76ec: $40

jr_078_76ed:
	inc [hl]                                         ; $76ed: $34
	adc d                                            ; $76ee: $8a
	ld a, $38                                        ; $76ef: $3e $38
	ld b, c                                          ; $76f1: $41
	ld b, h                                          ; $76f2: $44
	ld b, l                                          ; $76f3: $45
	add hl, bc                                       ; $76f4: $09
	ld b, b                                          ; $76f5: $40
	ld c, l                                          ; $76f6: $4d
	ld d, e                                          ; $76f7: $53
	ldh a, [$67]                                     ; $76f8: $f0 $67
	ldh a, [$59]                                     ; $76fa: $f0 $59
	ld b, d                                          ; $76fc: $42
	di                                               ; $76fd: $f3
	jp nc, $31f4                                     ; $76fe: $d2 $f4 $31

jr_078_7701:
	ld b, h                                          ; $7701: $44
	inc a                                            ; $7702: $3c
	ld d, b                                          ; $7703: $50
	ld c, h                                          ; $7704: $4c
	add hl, bc                                       ; $7705: $09
	ld a, l                                          ; $7706: $7d
	ldh a, [rSC]                                     ; $7707: $f0 $02
	add e                                            ; $7709: $83
	ld l, c                                          ; $770a: $69
	ld c, c                                          ; $770b: $49
	inc a                                            ; $770c: $3c
	inc [hl]                                         ; $770d: $34
	di                                               ; $770e: $f3
	jr nz, jr_078_7701                               ; $770f: $20 $f0

	ld a, d                                          ; $7711: $7a
	ld b, d                                          ; $7712: $42
	ldh a, [$38]                                     ; $7713: $f0 $38
	ld d, e                                          ; $7715: $53
	add hl, bc                                       ; $7716: $09
	jr c, jr_078_7787                                ; $7717: $38 $6e

	inc [hl]                                         ; $7719: $34
	ld b, b                                          ; $771a: $40

jr_078_771b:
	ld b, c                                          ; $771b: $41
	ld a, [hl-]                                      ; $771c: $3a
	add a                                            ; $771d: $87
	ld a, $3d                                        ; $771e: $3e $3d
	sbc d                                            ; $7720: $9a
	ld e, e                                          ; $7721: $5b
	ld d, [hl]                                       ; $7722: $56
	add hl, bc                                       ; $7723: $09
	ld c, a                                          ; $7724: $4f
	dec sp                                           ; $7725: $3b
	ld c, c                                          ; $7726: $49

jr_078_7727:
	ld d, c                                          ; $7727: $51
	ld [hl], b                                       ; $7728: $70
	jr c, jr_078_771b                                ; $7729: $38 $f0

	jr z, jr_078_7774                                ; $772b: $28 $47

	ld h, a                                          ; $772d: $67
	ld d, h                                          ; $772e: $54
	add hl, sp                                       ; $772f: $39
	inc a                                            ; $7730: $3c
	add hl, bc                                       ; $7731: $09
	pop af                                           ; $7732: $f1
	ld [hl], h                                       ; $7733: $74
	ldh a, [$7c]                                     ; $7734: $f0 $7c
	ld h, l                                          ; $7736: $65
	ldh a, [rBCPD]                                   ; $7737: $f0 $69
	ldh a, [rSC]                                     ; $7739: $f0 $02
	ld e, c                                          ; $773b: $59
	ld a, [hl-]                                      ; $773c: $3a
	ld b, c                                          ; $773d: $41
	ld e, e                                          ; $773e: $5b
	ld d, [hl]                                       ; $773f: $56
	ld a, [hl-]                                      ; $7740: $3a
	jr c, jr_078_774c                                ; $7741: $38 $09

	ld c, c                                          ; $7743: $49
	ld l, l                                          ; $7744: $6d
	ld a, h                                          ; $7745: $7c
	ld b, h                                          ; $7746: $44
	inc a                                            ; $7747: $3c
	ld d, b                                          ; $7748: $50
	pop af                                           ; $7749: $f1
	ld l, c                                          ; $774a: $69
	ld a, a                                          ; $774b: $7f

jr_078_774c:
	ld b, h                                          ; $774c: $44
	dec sp                                           ; $774d: $3b
	dec a                                            ; $774e: $3d
	ld b, l                                          ; $774f: $45
	add hl, bc                                       ; $7750: $09
	ld d, h                                          ; $7751: $54
	ld b, d                                          ; $7752: $42
	ldh a, [rSCX]                                    ; $7753: $f0 $43
	adc c                                            ; $7755: $89
	pop af                                           ; $7756: $f1
	ld l, $62                                        ; $7757: $2e $62
	pop af                                           ; $7759: $f1
	adc l                                            ; $775a: $8d
	ld a, $3f                                        ; $775b: $3e $3f
	ld c, [hl]                                       ; $775d: $4e
	ld b, c                                          ; $775e: $41
	ld b, h                                          ; $775f: $44
	add hl, bc                                       ; $7760: $09
	pop af                                           ; $7761: $f1
	ld [hl], b                                       ; $7762: $70
	add h                                            ; $7763: $84
	ldh a, [rSTAT]                                   ; $7764: $f0 $41
	ld d, e                                          ; $7766: $53
	pop af                                           ; $7767: $f1
	db $ed                                           ; $7768: $ed
	pop af                                           ; $7769: $f1
	ld h, $51                                        ; $776a: $26 $51
	ld c, [hl]                                       ; $776c: $4e
	ldh a, [$30]                                     ; $776d: $f0 $30
	ldh a, [$28]                                     ; $776f: $f0 $28
	ld b, l                                          ; $7771: $45
	ld c, h                                          ; $7772: $4c
	add hl, bc                                       ; $7773: $09

jr_078_7774:
	add c                                            ; $7774: $81
	ld [hl], l                                       ; $7775: $75
	sub l                                            ; $7776: $95
	ld h, l                                          ; $7777: $65
	ld l, c                                          ; $7778: $69
	ld a, $3f                                        ; $7779: $3e $3f
	ld a, [hl]                                       ; $777b: $7e
	inc a                                            ; $777c: $3c
	dec sp                                           ; $777d: $3b
	dec a                                            ; $777e: $3d
	ld a, [hl-]                                      ; $777f: $3a
	add hl, bc                                       ; $7780: $09
	ld d, d                                          ; $7781: $52
	dec a                                            ; $7782: $3d
	ld a, b                                          ; $7783: $78
	ccf                                              ; $7784: $3f
	ldh a, [$a3]                                     ; $7785: $f0 $a3

jr_078_7787:
	ld e, b                                          ; $7787: $58
	dec sp                                           ; $7788: $3b
	dec a                                            ; $7789: $3d
	ld b, d                                          ; $778a: $42
	ld c, d                                          ; $778b: $4a
	ld d, c                                          ; $778c: $51
	ld c, h                                          ; $778d: $4c
	add hl, bc                                       ; $778e: $09
	ld d, h                                          ; $778f: $54
	ld b, c                                          ; $7790: $41
	ld a, [hl-]                                      ; $7791: $3a
	sbc d                                            ; $7792: $9a
	ld a, $3c                                        ; $7793: $3e $3c
	sub h                                            ; $7795: $94
	ld a, b                                          ; $7796: $78
	ld d, d                                          ; $7797: $52
	ld a, c                                          ; $7798: $79
	ld b, c                                          ; $7799: $41
	ld d, e                                          ; $779a: $53
	add hl, bc                                       ; $779b: $09
	ld e, [hl]                                       ; $779c: $5e
	dec sp                                           ; $779d: $3b
	inc [hl]                                         ; $779e: $34
	ld a, a                                          ; $779f: $7f
	ld b, a                                          ; $77a0: $47
	ld a, $3a                                        ; $77a1: $3e $3a
	ld d, l                                          ; $77a3: $55
	ccf                                              ; $77a4: $3f
	jr c, jr_078_77df                                ; $77a5: $38 $38

	ld b, l                                          ; $77a7: $45
	add hl, bc                                       ; $77a8: $09
	ldh a, [rAUD2ENV]                                ; $77a9: $f0 $17
	pop af                                           ; $77ab: $f1
	ld a, [bc]                                       ; $77ac: $0a
	ld b, d                                          ; $77ad: $42
	di                                               ; $77ae: $f3
	adc h                                            ; $77af: $8c
	ldh a, [$65]                                     ; $77b0: $f0 $65
	ldh a, [rWY]                                     ; $77b2: $f0 $4a
	ld [hl], e                                       ; $77b4: $73
	ldh a, [rAUD4POLY]                               ; $77b5: $f0 $22
	ld h, l                                          ; $77b7: $65
	ld b, h                                          ; $77b8: $44
	ld c, c                                          ; $77b9: $49
	ld c, e                                          ; $77ba: $4b
	add hl, bc                                       ; $77bb: $09
	ld d, h                                          ; $77bc: $54
	ld b, d                                          ; $77bd: $42
	di                                               ; $77be: $f3
	db $eb                                           ; $77bf: $eb
	di                                               ; $77c0: $f3
	db $ec                                           ; $77c1: $ec
	ld d, e                                          ; $77c2: $53
	ldh a, [$9a]                                     ; $77c3: $f0 $9a
	jr c, jr_078_7804                                ; $77c5: $38 $3d

	ld b, d                                          ; $77c7: $42
	ld c, e                                          ; $77c8: $4b
	ld e, d                                          ; $77c9: $5a
	add hl, sp                                       ; $77ca: $39
	add hl, bc                                       ; $77cb: $09
	ld b, [hl]                                       ; $77cc: $46
	ld b, c                                          ; $77cd: $41
	ld a, [hl-]                                      ; $77ce: $3a
	ld b, d                                          ; $77cf: $42
	ldh a, [rOBP1]                                   ; $77d0: $f0 $49
	ldh a, [$59]                                     ; $77d2: $f0 $59
	ld d, c                                          ; $77d4: $51
	ld [hl], b                                       ; $77d5: $70
	ld d, l                                          ; $77d6: $55
	ld a, [hl-]                                      ; $77d7: $3a
	jr c, @+$4e                                      ; $77d8: $38 $4c

	add hl, bc                                       ; $77da: $09
	ldh a, [hDisp1_SCY]                                     ; $77db: $f0 $90
	ldh a, [$cb]                                     ; $77dd: $f0 $cb

jr_078_77df:
	ld a, [hl-]                                      ; $77df: $3a
	ld d, b                                          ; $77e0: $50
	halt                                             ; $77e1: $76
	ld b, a                                          ; $77e2: $47
	pop af                                           ; $77e3: $f1
	dec h                                            ; $77e4: $25
	ld a, c                                          ; $77e5: $79
	ccf                                              ; $77e6: $3f
	ld d, l                                          ; $77e7: $55
	ld c, l                                          ; $77e8: $4d
	ld b, l                                          ; $77e9: $45
	add hl, bc                                       ; $77ea: $09
	di                                               ; $77eb: $f3
	rlca                                             ; $77ec: $07
	ldh a, [c]                                       ; $77ed: $f2
	db $e3                                           ; $77ee: $e3
	di                                               ; $77ef: $f3
	dec hl                                           ; $77f0: $2b
	dec sp                                           ; $77f1: $3b
	dec a                                            ; $77f2: $3d
	ld b, c                                          ; $77f3: $41
	ld b, h                                          ; $77f4: $44
	dec [hl]                                         ; $77f5: $35
	ld b, [hl]                                       ; $77f6: $46
	ldh a, [rSB]                                     ; $77f7: $f0 $01
	ld c, [hl]                                       ; $77f9: $4e
	ld b, l                                          ; $77fa: $45
	add hl, bc                                       ; $77fb: $09
	ldh a, [$c3]                                     ; $77fc: $f0 $c3
	ld e, c                                          ; $77fe: $59
	ldh a, [c]                                       ; $77ff: $f2
	jr jr_078_7875                                   ; $7800: $18 $73

	ldh a, [$f2]                                     ; $7802: $f0 $f2

jr_078_7804:
	ldh a, [$de]                                     ; $7804: $f0 $de
	ldh a, [$a1]                                     ; $7806: $f0 $a1
	ld e, c                                          ; $7808: $59
	ldh a, [$60]                                     ; $7809: $f0 $60
	ldh a, [$c4]                                     ; $780b: $f0 $c4
	ldh a, [$8e]                                     ; $780d: $f0 $8e
	ldh a, [$03]                                     ; $780f: $f0 $03
	add hl, bc                                       ; $7811: $09
	ld l, b                                          ; $7812: $68
	ld b, a                                          ; $7813: $47
	ldh a, [$d4]                                     ; $7814: $f0 $d4
	pop af                                           ; $7816: $f1
	ld a, [hl+]                                      ; $7817: $2a
	ld c, d                                          ; $7818: $4a
	di                                               ; $7819: $f3
	dec [hl]                                         ; $781a: $35
	ld l, b                                          ; $781b: $68
	ld d, e                                          ; $781c: $53
	ld b, [hl]                                       ; $781d: $46
	ld d, a                                          ; $781e: $57
	ld d, d                                          ; $781f: $52
	ld d, c                                          ; $7820: $51
	add hl, bc                                       ; $7821: $09
	ld e, b                                          ; $7822: $58
	ccf                                              ; $7823: $3f
	inc [hl]                                         ; $7824: $34
	ldh a, [$e2]                                     ; $7825: $f0 $e2
	ldh a, [$e3]                                     ; $7827: $f0 $e3
	ld c, a                                          ; $7829: $4f
	ld a, $3d                                        ; $782a: $3e $3d
	ld d, h                                          ; $782c: $54
	ld c, c                                          ; $782d: $49
	ld b, h                                          ; $782e: $44
	ld a, $09                                        ; $782f: $3e $09
	ld l, e                                          ; $7831: $6b
	ld b, h                                          ; $7832: $44
	inc a                                            ; $7833: $3c
	pop af                                           ; $7834: $f1
	ld [hl-], a                                      ; $7835: $32
	dec sp                                           ; $7836: $3b
	ccf                                              ; $7837: $3f
	ld c, [hl]                                       ; $7838: $4e
	ld l, h                                          ; $7839: $6c
	dec a                                            ; $783a: $3d
	jr c, jr_078_7881                                ; $783b: $38 $44

	sub a                                            ; $783d: $97
	add hl, bc                                       ; $783e: $09
	ld a, $3c                                        ; $783f: $3e $3c
	ld a, $34                                        ; $7841: $3e $34
	ldh a, [rVBK]                                    ; $7843: $f0 $4f
	ldh a, [$b0]                                     ; $7845: $f0 $b0
	ld c, e                                          ; $7847: $4b
	ld a, $3f                                        ; $7848: $3e $3f
	jr c, jr_078_7886                                ; $784a: $38 $3a

	jr c, jr_078_7857                                ; $784c: $38 $09

	ldh a, [c]                                       ; $784e: $f2
	pop de                                           ; $784f: $d1
	pop af                                           ; $7850: $f1
	ld b, $47                                        ; $7851: $06 $47
	pop af                                           ; $7853: $f1
	xor $57                                          ; $7854: $ee $57
	di                                               ; $7856: $f3

jr_078_7857:
	push de                                          ; $7857: $d5
	ld d, e                                          ; $7858: $53
	ld c, l                                          ; $7859: $4d
	ld c, [hl]                                       ; $785a: $4e
	ld b, l                                          ; $785b: $45
	add hl, sp                                       ; $785c: $39
	ld b, a                                          ; $785d: $47
	add hl, bc                                       ; $785e: $09
	ldh a, [$5a]                                     ; $785f: $f0 $5a
	ld b, d                                          ; $7861: $42

jr_078_7862:
	ldh a, [rHDMA2]                                  ; $7862: $f0 $52
	ld c, e                                          ; $7864: $4b
	ldh a, [$98]                                     ; $7865: $f0 $98
	ld b, a                                          ; $7867: $47
	ld c, a                                          ; $7868: $4f
	ldh a, [$e4]                                     ; $7869: $f0 $e4
	ld e, l                                          ; $786b: $5d
	ld a, [hl-]                                      ; $786c: $3a
	jr c, jr_078_7878                                ; $786d: $38 $09

	pop af                                           ; $786f: $f1
	jr c, jr_078_7862                                ; $7870: $38 $f0

	dec bc                                           ; $7872: $0b
	ldh a, [rOBP1]                                   ; $7873: $f0 $49

jr_078_7875:
	pop af                                           ; $7875: $f1
	ld c, [hl]                                       ; $7876: $4e
	ld d, e                                          ; $7877: $53

jr_078_7878:
	ldh a, [$b7]                                     ; $7878: $f0 $b7
	ldh a, [rAUD2HIGH]                               ; $787a: $f0 $19
	ldh a, [c]                                       ; $787c: $f2
	call c, $3d42                                    ; $787d: $dc $42 $3d
	ld [hl], c                                       ; $7880: $71

jr_078_7881:
	add hl, bc                                       ; $7881: $09
	ld b, [hl]                                       ; $7882: $46
	ld d, a                                          ; $7883: $57
	ld d, e                                          ; $7884: $53
	ld c, c                                          ; $7885: $49

jr_078_7886:
	add hl, sp                                       ; $7886: $39
	ld [hl], b                                       ; $7887: $70
	ldh a, [rAUD1SWEEP]                              ; $7888: $f0 $10
	jr c, @+$54                                      ; $788a: $38 $52

	ld a, $3d                                        ; $788c: $3e $3d
	add hl, bc                                       ; $788e: $09
	ld b, [hl]                                       ; $788f: $46
	dec sp                                           ; $7890: $3b
	inc [hl]                                         ; $7891: $34
	pop af                                           ; $7892: $f1
	call nc, $0df0                                   ; $7893: $d4 $f0 $0d
	jr c, @+$3a                                      ; $7896: $38 $38

	ld c, c                                          ; $7898: $49
	ld d, h                                          ; $7899: $54
	ld e, a                                          ; $789a: $5f
	ld b, a                                          ; $789b: $47
	add hl, bc                                       ; $789c: $09
	sub d                                            ; $789d: $92
	adc [hl]                                         ; $789e: $8e
	dec sp                                           ; $789f: $3b
	dec a                                            ; $78a0: $3d
	ldh a, [$b1]                                     ; $78a1: $f0 $b1
	ldh a, [c]                                       ; $78a3: $f2
	ld [hl+], a                                      ; $78a4: $22
	ld d, e                                          ; $78a5: $53
	ld b, [hl]                                       ; $78a6: $46
	dec sp                                           ; $78a7: $3b
	dec a                                            ; $78a8: $3d
	ld b, l                                          ; $78a9: $45
	add hl, bc                                       ; $78aa: $09
	ld l, d                                          ; $78ab: $6a
	ld l, b                                          ; $78ac: $68
	ld c, e                                          ; $78ad: $4b
	inc [hl]                                         ; $78ae: $34
	ldh a, [$67]                                     ; $78af: $f0 $67
	pop af                                           ; $78b1: $f1
	ld hl, $f067                                     ; $78b2: $21 $67 $f0
	ld c, b                                          ; $78b5: $48
	ld b, d                                          ; $78b6: $42
	ld l, b                                          ; $78b7: $68
	ld b, h                                          ; $78b8: $44
	add hl, bc                                       ; $78b9: $09
	ldh a, [rIE]                                     ; $78ba: $f0 $ff
	di                                               ; $78bc: $f3
	add sp, $3e                                      ; $78bd: $e8 $3e
	dec a                                            ; $78bf: $3d
	ldh a, [$b1]                                     ; $78c0: $f0 $b1
	ldh a, [c]                                       ; $78c2: $f2
	ld [hl+], a                                      ; $78c3: $22
	ld d, e                                          ; $78c4: $53
	ld b, [hl]                                       ; $78c5: $46
	dec sp                                           ; $78c6: $3b
	dec a                                            ; $78c7: $3d
	ld b, l                                          ; $78c8: $45
	add hl, bc                                       ; $78c9: $09
	ld a, [hl]                                       ; $78ca: $7e
	inc a                                            ; $78cb: $3c
	dec sp                                           ; $78cc: $3b
	dec a                                            ; $78cd: $3d
	ld d, b                                          ; $78ce: $50
	ldh a, [$fa]                                     ; $78cf: $f0 $fa
	ld b, c                                          ; $78d1: $41
	ld c, d                                          ; $78d2: $4a
	ld l, h                                          ; $78d3: $6c
	ld a, [hl-]                                      ; $78d4: $3a
	jr c, jr_078_78e0                                ; $78d5: $38 $09

	ldh a, [$2b]                                     ; $78d7: $f0 $2b
	pop af                                           ; $78d9: $f1
	inc sp                                           ; $78da: $33
	ld [hl], e                                       ; $78db: $73
	sub e                                            ; $78dc: $93
	ld a, $49                                        ; $78dd: $3e $49
	ld d, l                                          ; $78df: $55

jr_078_78e0:
	ld b, c                                          ; $78e0: $41
	ld b, h                                          ; $78e1: $44
	dec sp                                           ; $78e2: $3b
	dec a                                            ; $78e3: $3d
	add hl, bc                                       ; $78e4: $09
	ld [hl], d                                       ; $78e5: $72
	ld b, a                                          ; $78e6: $47
	ld a, b                                          ; $78e7: $78
	ccf                                              ; $78e8: $3f
	ld d, l                                          ; $78e9: $55
	ld c, l                                          ; $78ea: $4d
	ccf                                              ; $78eb: $3f
	dec a                                            ; $78ec: $3d
	ld l, h                                          ; $78ed: $6c
	dec a                                            ; $78ee: $3d
	jr c, jr_078_78fa                                ; $78ef: $38 $09

	pop af                                           ; $78f1: $f1
	call nz, $4768                                   ; $78f2: $c4 $68 $47
	ldh a, [$74]                                     ; $78f5: $f0 $74
	ld e, [hl]                                       ; $78f7: $5e
	ccf                                              ; $78f8: $3f
	ld e, h                                          ; $78f9: $5c

jr_078_78fa:
	ld c, l                                          ; $78fa: $4d
	jr c, jr_078_7941                                ; $78fb: $38 $44

	ld c, h                                          ; $78fd: $4c
	add hl, bc                                       ; $78fe: $09
	ld l, e                                          ; $78ff: $6b
	ld c, c                                          ; $7900: $49
	inc a                                            ; $7901: $3c
	ldh a, [$e1]                                     ; $7902: $f0 $e1
	ldh a, [rSB]                                     ; $7904: $f0 $01
	pop af                                           ; $7906: $f1
	inc d                                            ; $7907: $14
	dec sp                                           ; $7908: $3b
	dec a                                            ; $7909: $3d
	ld l, h                                          ; $790a: $6c
	dec a                                            ; $790b: $3d
	jr c, jr_078_7917                                ; $790c: $38 $09

	pop af                                           ; $790e: $f1
	ld c, c                                          ; $790f: $49
	ld e, c                                          ; $7910: $59
	add e                                            ; $7911: $83
	ld l, c                                          ; $7912: $69
	ldh a, [rAUD3ENA]                                ; $7913: $f0 $1a
	ldh a, [hDisp0_WX]                                     ; $7915: $f0 $89

jr_078_7917:
	add e                                            ; $7917: $83
	ld b, a                                          ; $7918: $47
	ld h, a                                          ; $7919: $67
	ld d, h                                          ; $791a: $54
	add hl, sp                                       ; $791b: $39
	add hl, bc                                       ; $791c: $09
	ld l, d                                          ; $791d: $6a
	ld b, d                                          ; $791e: $42
	ldh a, [$74]                                     ; $791f: $f0 $74
	ldh a, [$7a]                                     ; $7921: $f0 $7a
	inc [hl]                                         ; $7923: $34
	ldh a, [rAUD4ENV]                                ; $7924: $f0 $21
	ldh a, [rAUD4GO]                                 ; $7926: $f0 $23
	inc a                                            ; $7928: $3c
	dec sp                                           ; $7929: $3b
	dec a                                            ; $792a: $3d
	ld c, h                                          ; $792b: $4c
	add hl, bc                                       ; $792c: $09
	ldh a, [rAUD1LEN]                                ; $792d: $f0 $11
	ld h, l                                          ; $792f: $65
	ldh a, [rAUD4POLY]                               ; $7930: $f0 $22
	ld e, c                                          ; $7932: $59
	ld l, c                                          ; $7933: $69
	inc [hl]                                         ; $7934: $34
	ld a, [hl]                                       ; $7935: $7e
	inc a                                            ; $7936: $3c
	dec sp                                           ; $7937: $3b
	dec a                                            ; $7938: $3d
	ld c, h                                          ; $7939: $4c
	add hl, bc                                       ; $793a: $09
	ld [hl], d                                       ; $793b: $72
	ldh a, [c]                                       ; $793c: $f2
	ld a, [hl]                                       ; $793d: $7e
	ld e, h                                          ; $793e: $5c
	dec a                                            ; $793f: $3d
	add h                                            ; $7940: $84

Jump_078_7941:
jr_078_7941:
	ld c, a                                          ; $7941: $4f
	jr c, jr_078_7992                                ; $7942: $38 $4e

	inc a                                            ; $7944: $3c
	ld a, [hl-]                                      ; $7945: $3a
	ld [hl], h                                       ; $7946: $74
	add hl, bc                                       ; $7947: $09
	ld [hl-], a                                      ; $7948: $32
	pop af                                           ; $7949: $f1
	ld [hl-], a                                      ; $794a: $32
	ld d, b                                          ; $794b: $50
	ld a, c                                          ; $794c: $79
	ld h, c                                          ; $794d: $61
	ld d, [hl]                                       ; $794e: $56
	dec sp                                           ; $794f: $3b
	dec a                                            ; $7950: $3d
	inc a                                            ; $7951: $3c
	ld a, [hl-]                                      ; $7952: $3a
	ld c, b                                          ; $7953: $48
	add hl, bc                                       ; $7954: $09
	ld a, [hl]                                       ; $7955: $7e
	inc a                                            ; $7956: $3c
	dec sp                                           ; $7957: $3b
	dec a                                            ; $7958: $3d
	ld d, b                                          ; $7959: $50
	inc [hl]                                         ; $795a: $34
	ldh a, [rPCM12]                                  ; $795b: $f0 $76
	ldh a, [$d2]                                     ; $795d: $f0 $d2
	ldh a, [$3f]                                     ; $795f: $f0 $3f
	ld e, d                                          ; $7961: $5a
	add hl, sp                                       ; $7962: $39
	add hl, bc                                       ; $7963: $09
	ldh a, [$d4]                                     ; $7964: $f0 $d4
	pop af                                           ; $7966: $f1
	ld a, [hl+]                                      ; $7967: $2a
	ld b, d                                          ; $7968: $42
	sbc [hl]                                         ; $7969: $9e
	ld c, d                                          ; $796a: $4a
	sbc c                                            ; $796b: $99
	ld h, c                                          ; $796c: $61
	ldh a, [rTMA]                                    ; $796d: $f0 $06
	ld h, e                                          ; $796f: $63
	ld a, c                                          ; $7970: $79
	ld c, d                                          ; $7971: $4a
	add hl, bc                                       ; $7972: $09
	ld a, l                                          ; $7973: $7d
	ldh a, [$03]                                     ; $7974: $f0 $03
	ldh a, [$35]                                     ; $7976: $f0 $35
	ld b, d                                          ; $7978: $42
	ldh a, [c]                                       ; $7979: $f2
	add a                                            ; $797a: $87
	dec sp                                           ; $797b: $3b
	ccf                                              ; $797c: $3f
	ldh a, [$71]                                     ; $797d: $f0 $71
	ld d, l                                          ; $797f: $55
	ld a, [hl-]                                      ; $7980: $3a
	jr c, @+$0b                                      ; $7981: $38 $09

	halt                                             ; $7983: $76
	ld b, d                                          ; $7984: $42
	pop af                                           ; $7985: $f1
	ld a, [hl]                                       ; $7986: $7e
	ld d, e                                          ; $7987: $53
	ld a, e                                          ; $7988: $7b
	ld c, l                                          ; $7989: $4d
	ccf                                              ; $798a: $3f
	ld a, $52                                        ; $798b: $3e $52
	dec sp                                           ; $798d: $3b
	dec a                                            ; $798e: $3d
	add hl, bc                                       ; $798f: $09
	ld h, c                                          ; $7990: $61
	ld h, [hl]                                       ; $7991: $66

jr_078_7992:
	add hl, sp                                       ; $7992: $39
	ld e, d                                          ; $7993: $5a
	inc [hl]                                         ; $7994: $34
	ldh a, [$ea]                                     ; $7995: $f0 $ea
	ld b, h                                          ; $7997: $44
	dec sp                                           ; $7998: $3b
	dec a                                            ; $7999: $3d
	ld b, c                                          ; $799a: $41
	ld b, h                                          ; $799b: $44
	add hl, bc                                       ; $799c: $09
	add hl, sp                                       ; $799d: $39
	ld b, c                                          ; $799e: $41
	inc [hl]                                         ; $799f: $34
	jr c, jr_078_79da                                ; $79a0: $38 $38

	pop af                                           ; $79a2: $f1
	db $eb                                           ; $79a3: $eb
	ld [hl], c                                       ; $79a4: $71
	ld b, h                                          ; $79a5: $44
	dec sp                                           ; $79a6: $3b
	dec a                                            ; $79a7: $3d
	ld c, h                                          ; $79a8: $4c
	add hl, bc                                       ; $79a9: $09
	ld d, h                                          ; $79aa: $54
	ld b, d                                          ; $79ab: $42
	ldh a, [$35]                                     ; $79ac: $f0 $35
	ldh a, [rSC]                                     ; $79ae: $f0 $02
	ldh a, [$8e]                                     ; $79b0: $f0 $8e
	ldh a, [$03]                                     ; $79b2: $f0 $03
	ld a, [hl-]                                      ; $79b4: $3a
	ld b, d                                          ; $79b5: $42
	ld c, e                                          ; $79b6: $4b
	ld e, d                                          ; $79b7: $5a
	add hl, sp                                       ; $79b8: $39
	add hl, bc                                       ; $79b9: $09
	ld [hl], b                                       ; $79ba: $70
	ld [hl], c                                       ; $79bb: $71
	ld b, c                                          ; $79bc: $41
	ld c, h                                          ; $79bd: $4c
	dec [hl]                                         ; $79be: $35
	ld d, c                                          ; $79bf: $51
	sbc l                                            ; $79c0: $9d
	ldh a, [c]                                       ; $79c1: $f2
	db $db                                           ; $79c2: $db
	ldh a, [$be]                                     ; $79c3: $f0 $be
	inc a                                            ; $79c5: $3c
	ld d, b                                          ; $79c6: $50
	add hl, bc                                       ; $79c7: $09
	pop af                                           ; $79c8: $f1
	cp d                                             ; $79c9: $ba
	ld d, l                                          ; $79ca: $55
	ld a, [hl-]                                      ; $79cb: $3a
	ld c, [hl]                                       ; $79cc: $4e
	ldh a, [c]                                       ; $79cd: $f2
	ld a, e                                          ; $79ce: $7b
	ldh a, [c]                                       ; $79cf: $f2
	ld a, h                                          ; $79d0: $7c
	ld b, d                                          ; $79d1: $42
	di                                               ; $79d2: $f3
	ld e, c                                          ; $79d3: $59
	ld a, b                                          ; $79d4: $78
	ld b, h                                          ; $79d5: $44
	ld c, h                                          ; $79d6: $4c
	add hl, bc                                       ; $79d7: $09
	pop af                                           ; $79d8: $f1
	and e                                            ; $79d9: $a3

jr_078_79da:
	pop af                                           ; $79da: $f1
	ld [hl], d                                       ; $79db: $72
	ld d, e                                          ; $79dc: $53
	ldh a, [c]                                       ; $79dd: $f2
	or c                                             ; $79de: $b1
	inc a                                            ; $79df: $3c
	ld a, [hl-]                                      ; $79e0: $3a
	add h                                            ; $79e1: $84
	ld a, [hl-]                                      ; $79e2: $3a
	ld b, c                                          ; $79e3: $41
	ld b, h                                          ; $79e4: $44
	ld b, l                                          ; $79e5: $45
	add hl, bc                                       ; $79e6: $09
	halt                                             ; $79e7: $76
	ld c, e                                          ; $79e8: $4b
	inc [hl]                                         ; $79e9: $34
	ldh a, [c]                                       ; $79ea: $f2
	ld d, c                                          ; $79eb: $51
	ld b, d                                          ; $79ec: $42
	ld l, [hl]                                       ; $79ed: $6e
	add b                                            ; $79ee: $80
	ld d, e                                          ; $79ef: $53
	jr c, jr_078_7a2a                                ; $79f0: $38 $38

	ld a, [hl-]                                      ; $79f2: $3a
	add hl, bc                                       ; $79f3: $09
	halt                                             ; $79f4: $76
	ldh a, [rSTAT]                                   ; $79f5: $f0 $41
	ld c, a                                          ; $79f7: $4f
	pop af                                           ; $79f8: $f1
	ld e, b                                          ; $79f9: $58
	inc a                                            ; $79fa: $3c
	ld b, a                                          ; $79fb: $47
	ldh a, [$dd]                                     ; $79fc: $f0 $dd
	ldh a, [$9c]                                     ; $79fe: $f0 $9c
	ld a, $45                                        ; $7a00: $3e $45
	add hl, sp                                       ; $7a02: $39
	add hl, bc                                       ; $7a03: $09
	di                                               ; $7a04: $f3
	ld h, e                                          ; $7a05: $63
	di                                               ; $7a06: $f3
	dec bc                                           ; $7a07: $0b
	ldh a, [rAUD2LEN]                                ; $7a08: $f0 $16
	ld b, l                                          ; $7a0a: $45
	ld d, a                                          ; $7a0b: $57
	inc [hl]                                         ; $7a0c: $34
	sub b                                            ; $7a0d: $90
	ld a, [hl-]                                      ; $7a0e: $3a
	ld b, c                                          ; $7a0f: $41

jr_078_7a10:
	ld b, h                                          ; $7a10: $44
	ld b, l                                          ; $7a11: $45
	add hl, bc                                       ; $7a12: $09
	ld b, b                                          ; $7a13: $40
	ld e, a                                          ; $7a14: $5f
	ld b, b                                          ; $7a15: $40
	ld e, a                                          ; $7a16: $5f
	inc [hl]                                         ; $7a17: $34
	ld h, a                                          ; $7a18: $67
	inc a                                            ; $7a19: $3c
	ld a, [hl-]                                      ; $7a1a: $3a
	ld d, l                                          ; $7a1b: $55
	ld h, c                                          ; $7a1c: $61
	ld d, [hl]                                       ; $7a1d: $56
	add hl, bc                                       ; $7a1e: $09
	pop af                                           ; $7a1f: $f1
	ld h, [hl]                                       ; $7a20: $66
	ld e, h                                          ; $7a21: $5c
	ld b, a                                          ; $7a22: $47
	ld a, b                                          ; $7a23: $78
	ccf                                              ; $7a24: $3f
	ld d, l                                          ; $7a25: $55
	ld c, l                                          ; $7a26: $4d
	dec a                                            ; $7a27: $3d
	ld l, h                                          ; $7a28: $6c
	dec a                                            ; $7a29: $3d

jr_078_7a2a:
	jr c, jr_078_7a35                                ; $7a2a: $38 $09

	di                                               ; $7a2c: $f3
	inc l                                            ; $7a2d: $2c
	di                                               ; $7a2e: $f3
	dec l                                            ; $7a2f: $2d
	ld c, d                                          ; $7a30: $4a
	ld c, a                                          ; $7a31: $4f
	sub h                                            ; $7a32: $94
	ccf                                              ; $7a33: $3f
	ld e, h                                          ; $7a34: $5c

jr_078_7a35:
	ld b, b                                          ; $7a35: $40
	add hl, sp                                       ; $7a36: $39
	ld b, h                                          ; $7a37: $44
	ld b, l                                          ; $7a38: $45
	add hl, bc                                       ; $7a39: $09
	ld b, b                                          ; $7a3a: $40
	add hl, sp                                       ; $7a3b: $39
	ld b, h                                          ; $7a3c: $44
	ld c, h                                          ; $7a3d: $4c
	dec [hl]                                         ; $7a3e: $35
	ldh a, [hDisp1_LCDC]                                     ; $7a3f: $f0 $8f
	ld b, c                                          ; $7a41: $41
	ld c, d                                          ; $7a42: $4a
	jr c, jr_078_7a99                                ; $7a43: $38 $54

	add hl, sp                                       ; $7a45: $39
	add hl, bc                                       ; $7a46: $09
	ldh a, [$ee]                                     ; $7a47: $f0 $ee
	pop af                                           ; $7a49: $f1
	db $ec                                           ; $7a4a: $ec
	ld d, e                                          ; $7a4b: $53
	di                                               ; $7a4c: $f3
	db $d3                                           ; $7a4d: $d3
	ld d, l                                          ; $7a4e: $55
	ld a, [hl-]                                      ; $7a4f: $3a
	ld c, [hl]                                       ; $7a50: $4e
	ld b, c                                          ; $7a51: $41
	ld b, h                                          ; $7a52: $44
	ld b, l                                          ; $7a53: $45
	ld c, h                                          ; $7a54: $4c
	add hl, bc                                       ; $7a55: $09
	add h                                            ; $7a56: $84
	ld b, d                                          ; $7a57: $42
	ldh a, [rAUD3LEVEL]                              ; $7a58: $f0 $1c
	ld a, [hl-]                                      ; $7a5a: $3a
	ld b, c                                          ; $7a5b: $41
	ccf                                              ; $7a5c: $3f
	ld a, a                                          ; $7a5d: $7f
	ld b, a                                          ; $7a5e: $47
	ld a, $3a                                        ; $7a5f: $3e $3a
	jr c, jr_078_7a6c                                ; $7a61: $38 $09

	ld a, l                                          ; $7a63: $7d
	ld h, l                                          ; $7a64: $65
	ldh a, [$2b]                                     ; $7a65: $f0 $2b
	ldh a, [$2f]                                     ; $7a67: $f0 $2f
	ld b, a                                          ; $7a69: $47
	ldh a, [$ec]                                     ; $7a6a: $f0 $ec

jr_078_7a6c:
	ld d, d                                          ; $7a6c: $52
	dec sp                                           ; $7a6d: $3b
	ccf                                              ; $7a6e: $3f
	ld c, [hl]                                       ; $7a6f: $4e
	ld b, l                                          ; $7a70: $45
	add hl, bc                                       ; $7a71: $09
	ld h, h                                          ; $7a72: $64
	pop af                                           ; $7a73: $f1
	ld d, a                                          ; $7a74: $57
	jr c, jr_078_7abe                                ; $7a75: $38 $47

	sub d                                            ; $7a77: $92
	adc [hl]                                         ; $7a78: $8e
	ld d, a                                          ; $7a79: $57
	ld d, d                                          ; $7a7a: $52
	ld a, $66                                        ; $7a7b: $3e $66
	add hl, sp                                       ; $7a7d: $39
	add hl, bc                                       ; $7a7e: $09
	ld e, d                                          ; $7a7f: $5a
	add hl, sp                                       ; $7a80: $39
	ld a, $3f                                        ; $7a81: $3e $3f
	inc [hl]                                         ; $7a83: $34
	ld a, b                                          ; $7a84: $78
	ld a, [hl-]                                      ; $7a85: $3a
	inc a                                            ; $7a86: $3c
	dec sp                                           ; $7a87: $3b
	dec a                                            ; $7a88: $3d
	ld b, d                                          ; $7a89: $42
	add hl, bc                                       ; $7a8a: $09
	ld c, h                                          ; $7a8b: $4c
	add l                                            ; $7a8c: $85
	inc [hl]                                         ; $7a8d: $34
	jr c, jr_078_7a10                                ; $7a8e: $38 $80

	ld c, d                                          ; $7a90: $4a
	ld c, a                                          ; $7a91: $4f
	jr c, jr_078_7acc                                ; $7a92: $38 $38

	inc a                                            ; $7a94: $3c
	ld d, b                                          ; $7a95: $50
	add hl, bc                                       ; $7a96: $09
	ld a, [hl]                                       ; $7a97: $7e
	inc a                                            ; $7a98: $3c

jr_078_7a99:
	dec sp                                           ; $7a99: $3b
	dec a                                            ; $7a9a: $3d
	ld d, b                                          ; $7a9b: $50
	ldh a, [$fa]                                     ; $7a9c: $f0 $fa
	ld b, c                                          ; $7a9e: $41
	ld c, d                                          ; $7a9f: $4a
	ld d, l                                          ; $7aa0: $55
	ld c, l                                          ; $7aa1: $4d
	ld b, l                                          ; $7aa2: $45
	add hl, bc                                       ; $7aa3: $09
	ld b, b                                          ; $7aa4: $40
	ld c, l                                          ; $7aa5: $4d
	ld c, e                                          ; $7aa6: $4b
	ld c, h                                          ; $7aa7: $4c
	inc [hl]                                         ; $7aa8: $34
	ld [hl-], a                                      ; $7aa9: $32
	pop af                                           ; $7aaa: $f1
	dec c                                            ; $7aab: $0d
	ldh a, [$79]                                     ; $7aac: $f0 $79
	ld d, c                                          ; $7aae: $51
	ld c, [hl]                                       ; $7aaf: $4e
	inc sp                                           ; $7ab0: $33
	add hl, bc                                       ; $7ab1: $09
	ld a, [hl]                                       ; $7ab2: $7e
	inc a                                            ; $7ab3: $3c
	dec sp                                           ; $7ab4: $3b
	dec a                                            ; $7ab5: $3d
	inc [hl]                                         ; $7ab6: $34
	pop af                                           ; $7ab7: $f1
	pop bc                                           ; $7ab8: $c1
	ld d, b                                          ; $7ab9: $50
	ld c, l                                          ; $7aba: $4d
	ld a, [hl-]                                      ; $7abb: $3a
	ld d, l                                          ; $7abc: $55
	ccf                                              ; $7abd: $3f

jr_078_7abe:
	add hl, bc                                       ; $7abe: $09
	pop af                                           ; $7abf: $f1
	ld d, h                                          ; $7ac0: $54
	ld e, c                                          ; $7ac1: $59
	ldh a, [$60]                                     ; $7ac2: $f0 $60
	ldh a, [$c4]                                     ; $7ac4: $f0 $c4
	ld h, l                                          ; $7ac6: $65
	ldh a, [$50]                                     ; $7ac7: $f0 $50
	ld d, e                                          ; $7ac9: $53
	ld b, [hl]                                       ; $7aca: $46
	ld c, [hl]                                       ; $7acb: $4e

jr_078_7acc:
	ld b, c                                          ; $7acc: $41
	ld b, h                                          ; $7acd: $44
	add hl, bc                                       ; $7ace: $09
	ld d, h                                          ; $7acf: $54
	ld b, d                                          ; $7ad0: $42
	ld e, d                                          ; $7ad1: $5a
	ld d, l                                          ; $7ad2: $55
	ld e, a                                          ; $7ad3: $5f
	ld b, d                                          ; $7ad4: $42
	ldh a, [$db]                                     ; $7ad5: $f0 $db
	ldh a, [c]                                       ; $7ad7: $f2
	inc [hl]                                         ; $7ad8: $34
	ld c, e                                          ; $7ad9: $4b
	ld e, d                                          ; $7ada: $5a
	add hl, sp                                       ; $7adb: $39
	add hl, bc                                       ; $7adc: $09
	ld c, c                                          ; $7add: $49
	ld d, a                                          ; $7ade: $57
	ld b, [hl]                                       ; $7adf: $46
	ld e, [hl]                                       ; $7ae0: $5e
	sbc h                                            ; $7ae1: $9c

jr_078_7ae2:
	dec sp                                           ; $7ae2: $3b
	ccf                                              ; $7ae3: $3f
	ld c, c                                          ; $7ae4: $49
	ld d, h                                          ; $7ae5: $54
	inc a                                            ; $7ae6: $3c
	ld a, [hl-]                                      ; $7ae7: $3a
	add hl, bc                                       ; $7ae8: $09
	ld e, e                                          ; $7ae9: $5b
	ld d, [hl]                                       ; $7aea: $56
	ld b, [hl]                                       ; $7aeb: $46
	inc [hl]                                         ; $7aec: $34
	pop af                                           ; $7aed: $f1
	jr jr_078_7ae2                                   ; $7aee: $18 $f2

	sub c                                            ; $7af0: $91
	ld c, d                                          ; $7af1: $4a
	ld h, a                                          ; $7af2: $67
	ld d, h                                          ; $7af3: $54
	add hl, sp                                       ; $7af4: $39
	ld b, l                                          ; $7af5: $45
	add hl, bc                                       ; $7af6: $09
	ld b, b                                          ; $7af7: $40
	ld e, a                                          ; $7af8: $5f
	ld b, b                                          ; $7af9: $40
	ld e, a                                          ; $7afa: $5f
	ldh a, [rHDMA5]                                  ; $7afb: $f0 $55
	ldh a, [rBCPS]                                   ; $7afd: $f0 $68
	jr c, jr_078_7b3e                                ; $7aff: $38 $3d

	ld a, $52                                        ; $7b01: $3e $52
	ld d, c                                          ; $7b03: $51
	add hl, bc                                       ; $7b04: $09
	ldh a, [rAUD3ENA]                                ; $7b05: $f0 $1a
	ld a, l                                          ; $7b07: $7d
	ldh a, [$60]                                     ; $7b08: $f0 $60
	sub e                                            ; $7b0a: $93
	ldh a, [rAUD3LOW]                                ; $7b0b: $f0 $1d
	ld a, l                                          ; $7b0d: $7d
	sub e                                            ; $7b0e: $93
	ldh a, [$1f]                                     ; $7b0f: $f0 $1f
	ldh a, [$2b]                                     ; $7b11: $f0 $2b
	ld [hl], e                                       ; $7b13: $73
	add c                                            ; $7b14: $81
	add hl, bc                                       ; $7b15: $09
	add h                                            ; $7b16: $84
	sbc [hl]                                         ; $7b17: $9e
	ld c, d                                          ; $7b18: $4a
	inc [hl]                                         ; $7b19: $34
	ldh a, [hDisp1_OBP1]                                     ; $7b1a: $f0 $94
	ld [hl], c                                       ; $7b1c: $71
	ccf                                              ; $7b1d: $3f
	ld b, d                                          ; $7b1e: $42
	ldh a, [$a8]                                     ; $7b1f: $f0 $a8
	ldh a, [$8b]                                     ; $7b21: $f0 $8b
	ld b, h                                          ; $7b23: $44
	add hl, bc                                       ; $7b24: $09
	di                                               ; $7b25: $f3
	ld l, e                                          ; $7b26: $6b
	jr c, jr_078_7b63                                ; $7b27: $38 $3a

	ld b, c                                          ; $7b29: $41
	ccf                                              ; $7b2a: $3f
	inc [hl]                                         ; $7b2b: $34

jr_078_7b2c:
	ldh a, [$b2]                                     ; $7b2c: $f0 $b2
	ldh a, [rKEY1]                                   ; $7b2e: $f0 $4d
	ld b, h                                          ; $7b30: $44
	inc a                                            ; $7b31: $3c
	ld d, b                                          ; $7b32: $50
	add hl, bc                                       ; $7b33: $09
	adc b                                            ; $7b34: $88
	sub c                                            ; $7b35: $91
	inc [hl]                                         ; $7b36: $34
	ld d, c                                          ; $7b37: $51
	ld [hl], b                                       ; $7b38: $70
	jr c, jr_078_7b2c                                ; $7b39: $38 $f1

	call c, $3b44                                    ; $7b3b: $dc $44 $3b

jr_078_7b3e:
	dec a                                            ; $7b3e: $3d
	ld c, h                                          ; $7b3f: $4c
	add hl, bc                                       ; $7b40: $09
	ld l, a                                          ; $7b41: $6f
	ld b, d                                          ; $7b42: $42
	ldh a, [$3b]                                     ; $7b43: $f0 $3b
	jr c, jr_078_7ba9                                ; $7b45: $38 $62

	pop af                                           ; $7b47: $f1
	pop bc                                           ; $7b48: $c1
	ld c, [hl]                                       ; $7b49: $4e
	ldh a, [$ab]                                     ; $7b4a: $f0 $ab
	ld a, [hl-]                                      ; $7b4c: $3a
	ld b, c                                          ; $7b4d: $41
	ccf                                              ; $7b4e: $3f
	add hl, bc                                       ; $7b4f: $09
	ld h, h                                          ; $7b50: $64
	sbc [hl]                                         ; $7b51: $9e
	ld c, c                                          ; $7b52: $49
	ld l, l                                          ; $7b53: $6d
	ld a, h                                          ; $7b54: $7c
	ld b, a                                          ; $7b55: $47
	ld d, c                                          ; $7b56: $51
	ld c, [hl]                                       ; $7b57: $4e
	ld a, [hl-]                                      ; $7b58: $3a
	ld b, l                                          ; $7b59: $45
	ld a, [hl-]                                      ; $7b5a: $3a
	add hl, bc                                       ; $7b5b: $09
	ld b, b                                          ; $7b5c: $40
	ld c, l                                          ; $7b5d: $4d
	ld e, e                                          ; $7b5e: $5b
	ld d, [hl]                                       ; $7b5f: $56
	inc [hl]                                         ; $7b60: $34
	ld c, a                                          ; $7b61: $4f
	add hl, sp                                       ; $7b62: $39

jr_078_7b63:
	ld a, d                                          ; $7b63: $7a
	ld e, a                                          ; $7b64: $5f
	add hl, sp                                       ; $7b65: $39
	inc a                                            ; $7b66: $3c
	add hl, bc                                       ; $7b67: $09
	ld d, c                                          ; $7b68: $51
	ld [hl], b                                       ; $7b69: $70
	jr c, jr_078_7bb8                                ; $7b6a: $38 $4c

	dec [hl]                                         ; $7b6c: $35
	pop af                                           ; $7b6d: $f1
	xor d                                            ; $7b6e: $aa
	pop af                                           ; $7b6f: $f1
	and e                                            ; $7b70: $a3
	ld e, e                                          ; $7b71: $5b
	ld d, [hl]                                       ; $7b72: $56
	ld a, [hl-]                                      ; $7b73: $3a
	jr c, @+$0b                                      ; $7b74: $38 $09

	halt                                             ; $7b76: $76
	ld d, e                                          ; $7b77: $53
	di                                               ; $7b78: $f3
	ld d, [hl]                                       ; $7b79: $56
	ld e, [hl]                                       ; $7b7a: $5e
	ccf                                              ; $7b7b: $3f
	ccf                                              ; $7b7c: $3f
	ld b, [hl]                                       ; $7b7d: $46
	ldh a, [rSB]                                     ; $7b7e: $f0 $01
	ld c, [hl]                                       ; $7b80: $4e
	inc a                                            ; $7b81: $3c
	ld d, b                                          ; $7b82: $50
	add hl, bc                                       ; $7b83: $09
	ld a, [hl]                                       ; $7b84: $7e
	ld d, l                                          ; $7b85: $55
	ldh a, [rPCM12]                                  ; $7b86: $f0 $76
	ldh a, [rTMA]                                    ; $7b88: $f0 $06
	dec sp                                           ; $7b8a: $3b
	ccf                                              ; $7b8b: $3f
	inc [hl]                                         ; $7b8c: $34
	ldh a, [$8a]                                     ; $7b8d: $f0 $8a
	ldh a, [rHDMA2]                                  ; $7b8f: $f0 $52
	jr c, jr_078_7bd8                                ; $7b91: $38 $45

	add hl, bc                                       ; $7b93: $09
	ld b, h                                          ; $7b94: $44
	inc a                                            ; $7b95: $3c
	ld d, b                                          ; $7b96: $50
	inc [hl]                                         ; $7b97: $34
	ld c, a                                          ; $7b98: $4f
	add hl, sp                                       ; $7b99: $39
	ldh a, [$e8]                                     ; $7b9a: $f0 $e8
	ld d, b                                          ; $7b9c: $50
	ld a, [hl-]                                      ; $7b9d: $3a
	jr c, jr_078_7be9                                ; $7b9e: $38 $49

	add hl, bc                                       ; $7ba0: $09
	ld e, e                                          ; $7ba1: $5b
	ld d, [hl]                                       ; $7ba2: $56
	ld b, [hl]                                       ; $7ba3: $46
	inc [hl]                                         ; $7ba4: $34
	ld e, d                                          ; $7ba5: $5a
	ld d, h                                          ; $7ba6: $54
	ld b, a                                          ; $7ba7: $47
	ld h, a                                          ; $7ba8: $67

jr_078_7ba9:
	ld d, h                                          ; $7ba9: $54
	add hl, sp                                       ; $7baa: $39
	inc a                                            ; $7bab: $3c
	add hl, bc                                       ; $7bac: $09
	ldh a, [$cd]                                     ; $7bad: $f0 $cd
	ld e, e                                          ; $7baf: $5b
	adc a                                            ; $7bb0: $8f
	ld b, d                                          ; $7bb1: $42
	add h                                            ; $7bb2: $84
	ldh a, [rSTAT]                                   ; $7bb3: $f0 $41
	ld c, c                                          ; $7bb5: $49
	ld h, a                                          ; $7bb6: $67
	ld d, l                                          ; $7bb7: $55

jr_078_7bb8:
	inc a                                            ; $7bb8: $3c
	ld d, b                                          ; $7bb9: $50
	add hl, bc                                       ; $7bba: $09
	pop af                                           ; $7bbb: $f1
	ld l, a                                          ; $7bbc: $6f
	ld b, d                                          ; $7bbd: $42
	adc a                                            ; $7bbe: $8f
	ld b, d                                          ; $7bbf: $42
	ld [hl], d                                       ; $7bc0: $72
	adc c                                            ; $7bc1: $89
	ld b, a                                          ; $7bc2: $47
	ld h, a                                          ; $7bc3: $67
	ld d, h                                          ; $7bc4: $54
	add hl, sp                                       ; $7bc5: $39
	ld b, l                                          ; $7bc6: $45
	add hl, bc                                       ; $7bc7: $09
	ldh a, [rBGP]                                    ; $7bc8: $f0 $47
	ldh a, [$2a]                                     ; $7bca: $f0 $2a
	ld b, d                                          ; $7bcc: $42
	di                                               ; $7bcd: $f3
	ld e, $f0                                        ; $7bce: $1e $f0
	ld b, $80                                        ; $7bd0: $06 $80
	inc a                                            ; $7bd2: $3c
	ld a, [hl-]                                      ; $7bd3: $3a
	jr c, jr_078_7c1b                                ; $7bd4: $38 $45

	ld c, h                                          ; $7bd6: $4c
	add hl, bc                                       ; $7bd7: $09

jr_078_7bd8:
	ld d, h                                          ; $7bd8: $54
	ld c, l                                          ; $7bd9: $4d
	inc a                                            ; $7bda: $3c
	ld d, b                                          ; $7bdb: $50
	pop af                                           ; $7bdc: $f1
	ld d, h                                          ; $7bdd: $54
	ld e, c                                          ; $7bde: $59
	ldh a, [$60]                                     ; $7bdf: $f0 $60
	ldh a, [$c4]                                     ; $7be1: $f0 $c4
	ld h, l                                          ; $7be3: $65
	ldh a, [$50]                                     ; $7be4: $f0 $50
	ld c, a                                          ; $7be6: $4f
	add hl, bc                                       ; $7be7: $09
	ld e, d                                          ; $7be8: $5a

jr_078_7be9:
	add hl, sp                                       ; $7be9: $39
	sub a                                            ; $7bea: $97
	inc [hl]                                         ; $7beb: $34
	ld h, h                                          ; $7bec: $64
	sub [hl]                                         ; $7bed: $96
	ld d, a                                          ; $7bee: $57
	ld d, l                                          ; $7bef: $55
	ld b, h                                          ; $7bf0: $44
	ld e, b                                          ; $7bf1: $58
	jr c, @+$0b                                      ; $7bf2: $38 $09

	sub e                                            ; $7bf4: $93
	ldh a, [rSC]                                     ; $7bf5: $f0 $02
	ldh a, [rBCPD]                                   ; $7bf7: $f0 $69
	ld b, d                                          ; $7bf9: $42
	ldh a, [$f9]                                     ; $7bfa: $f0 $f9
	ldh a, [rSTAT]                                   ; $7bfc: $f0 $41
	ld d, e                                          ; $7bfe: $53
	jr c, jr_078_7c4f                                ; $7bff: $38 $4e

	inc a                                            ; $7c01: $3c
	ld d, b                                          ; $7c02: $50
	add hl, bc                                       ; $7c03: $09
	ldh a, [$de]                                     ; $7c04: $f0 $de
	sbc b                                            ; $7c06: $98
	ld [hl], e                                       ; $7c07: $73
	ld c, c                                          ; $7c08: $49
	inc [hl]                                         ; $7c09: $34
	ldh a, [$ec]                                     ; $7c0a: $f0 $ec
	ld [hl], c                                       ; $7c0c: $71
	ccf                                              ; $7c0d: $3f
	ld l, [hl]                                       ; $7c0e: $6e
	ld c, [hl]                                       ; $7c0f: $4e
	adc l                                            ; $7c10: $8d
	add hl, bc                                       ; $7c11: $09
	ld l, d                                          ; $7c12: $6a
	ld l, b                                          ; $7c13: $68
	ld c, e                                          ; $7c14: $4b
	ldh a, [rAUD4LEN]                                ; $7c15: $f0 $20
	ld [hl], l                                       ; $7c17: $75
	ld h, l                                          ; $7c18: $65
	ldh a, [rDIV]                                    ; $7c19: $f0 $04

jr_078_7c1b:
	ld a, l                                          ; $7c1b: $7d
	ld h, l                                          ; $7c1c: $65
	ld b, h                                          ; $7c1d: $44
	ld c, h                                          ; $7c1e: $4c
	add hl, bc                                       ; $7c1f: $09
	pop af                                           ; $7c20: $f1
	ld l, a                                          ; $7c21: $6f
	ld b, d                                          ; $7c22: $42
	add h                                            ; $7c23: $84
	ld b, d                                          ; $7c24: $42
	pop af                                           ; $7c25: $f1
	ld e, l                                          ; $7c26: $5d
	pop af                                           ; $7c27: $f1
	and a                                            ; $7c28: $a7
	ld b, a                                          ; $7c29: $47
	ld a, [hl-]                                      ; $7c2a: $3a
	ld c, [hl]                                       ; $7c2b: $4e
	inc a                                            ; $7c2c: $3c
	ld d, b                                          ; $7c2d: $50
	add hl, bc                                       ; $7c2e: $09
	ld a, [hl-]                                      ; $7c2f: $3a
	ld c, [hl]                                       ; $7c30: $4e
	ldh a, [$08]                                     ; $7c31: $f0 $08
	ld e, d                                          ; $7c33: $5a
	sbc e                                            ; $7c34: $9b
	ldh a, [$0e]                                     ; $7c35: $f0 $0e
	ld d, e                                          ; $7c37: $53
	di                                               ; $7c38: $f3
	jr nc, jr_078_7c8c                               ; $7c39: $30 $51

	pop af                                           ; $7c3b: $f1
	dec bc                                           ; $7c3c: $0b
	ld b, h                                          ; $7c3d: $44
	add hl, bc                                       ; $7c3e: $09
	ld c, c                                          ; $7c3f: $49
	ld d, a                                          ; $7c40: $57
	ld b, [hl]                                       ; $7c41: $46

jr_078_7c42:
	ld e, [hl]                                       ; $7c42: $5e
	sbc h                                            ; $7c43: $9c
	inc [hl]                                         ; $7c44: $34
	ldh a, [rBCPS]                                   ; $7c45: $f0 $68
	ld h, d                                          ; $7c47: $62
	add d                                            ; $7c48: $82
	add hl, sp                                       ; $7c49: $39
	ld h, e                                          ; $7c4a: $63
	add hl, bc                                       ; $7c4b: $09
	ldh a, [rSCX]                                    ; $7c4c: $f0 $43
	pop af                                           ; $7c4e: $f1

jr_078_7c4f:
	jr nz, jr_078_7c42                               ; $7c4f: $20 $f1

	inc e                                            ; $7c51: $1c
	ld c, d                                          ; $7c52: $4a
	jr c, @+$3f                                      ; $7c53: $38 $3d

	ld b, h                                          ; $7c55: $44
	jr c, jr_078_7c95                                ; $7c56: $38 $3d

	sbc e                                            ; $7c58: $9b
	ldh a, [rAUDTERM]                                ; $7c59: $f0 $25
	add hl, bc                                       ; $7c5b: $09
	ld [hl], a                                       ; $7c5c: $77
	ld h, e                                          ; $7c5d: $63
	sbc h                                            ; $7c5e: $9c
	pop af                                           ; $7c5f: $f1
	dec l                                            ; $7c60: $2d
	ld d, e                                          ; $7c61: $53
	sub h                                            ; $7c62: $94
	ld h, c                                          ; $7c63: $61
	ld d, [hl]                                       ; $7c64: $56
	dec sp                                           ; $7c65: $3b
	dec a                                            ; $7c66: $3d
	ld b, l                                          ; $7c67: $45
	add hl, bc                                       ; $7c68: $09
	ldh a, [$3d]                                     ; $7c69: $f0 $3d
	ldh a, [rAUD3ENA]                                ; $7c6b: $f0 $1a
	ld [hl], e                                       ; $7c6d: $73
	ldh a, [$fd]                                     ; $7c6e: $f0 $fd
	ld e, c                                          ; $7c70: $59
	pop af                                           ; $7c71: $f1
	ld [bc], a                                       ; $7c72: $02
	ldh a, [$a1]                                     ; $7c73: $f0 $a1
	ld e, c                                          ; $7c75: $59
	ld a, l                                          ; $7c76: $7d
	pop af                                           ; $7c77: $f1
	db $e3                                           ; $7c78: $e3
	ld e, c                                          ; $7c79: $59
	add hl, bc                                       ; $7c7a: $09
	sbc e                                            ; $7c7b: $9b
	ldh a, [$0e]                                     ; $7c7c: $f0 $0e
	ld b, d                                          ; $7c7e: $42
	ldh a, [hDisp0_SCY]                                     ; $7c7f: $f0 $83
	ldh a, [rTIMA]                                   ; $7c81: $f0 $05
	ld l, b                                          ; $7c83: $68
	ld e, e                                          ; $7c84: $5b
	ld d, [hl]                                       ; $7c85: $56
	ld a, [hl-]                                      ; $7c86: $3a
	jr c, jr_078_7cc5                                ; $7c87: $38 $3c

	add hl, bc                                       ; $7c89: $09


TextLargeDict_0c9:
	ld b, b                                          ; $7c8a: $40
	ld c, l                                          ; $7c8b: $4d

jr_078_7c8c:
	ld e, e                                          ; $7c8c: $5b
	ld d, [hl]                                       ; $7c8d: $56
	ldh a, [$0a]                                     ; $7c8e: $f0 $0a
	pop af                                           ; $7c90: $f1
	jr jr_078_7cc7                                   ; $7c91: $18 $34

	ldh a, [$79]                                     ; $7c93: $f0 $79

jr_078_7c95:
	ld l, b                                          ; $7c95: $68
	inc a                                            ; $7c96: $3c
	ld d, b                                          ; $7c97: $50
	add hl, bc                                       ; $7c98: $09


;
	ldh a, [hDisp1_LCDC]                                     ; $7c99: $f0 $8f
	ld l, b                                          ; $7c9b: $68
	ld b, a                                          ; $7c9c: $47
	sub e                                            ; $7c9d: $93
	ldh a, [rSC]                                     ; $7c9e: $f0 $02
	ldh a, [rBCPD]                                   ; $7ca0: $f0 $69
	ldh a, [rAUD1LEN]                                ; $7ca2: $f0 $11
	ldh a, [rAUD3LOW]                                ; $7ca4: $f0 $1d
	ld h, l                                          ; $7ca6: $65
	ldh a, [$32]                                     ; $7ca7: $f0 $32
	ld h, d                                          ; $7ca9: $62
	add hl, bc                                       ; $7caa: $09
	jr c, jr_078_7ce5                                ; $7cab: $38 $38

	ldh a, [$57]                                     ; $7cad: $f0 $57
	pop af                                           ; $7caf: $f1
	call z, $f062                                    ; $7cb0: $cc $62 $f0
	ld d, c                                          ; $7cb3: $51
	dec sp                                           ; $7cb4: $3b
	ccf                                              ; $7cb5: $3f
	ld c, [hl]                                       ; $7cb6: $4e
	ld b, d                                          ; $7cb7: $42
	ld b, a                                          ; $7cb8: $47
	add hl, bc                                       ; $7cb9: $09
	ld b, a                                          ; $7cba: $47
	pop af                                           ; $7cbb: $f1
	ld b, b                                          ; $7cbc: $40
	ldh a, [rSC]                                     ; $7cbd: $f0 $02
	ld e, c                                          ; $7cbf: $59
	ld d, e                                          ; $7cc0: $53
	pop af                                           ; $7cc1: $f1
	xor l                                            ; $7cc2: $ad
	ldh a, [rTIMA]                                   ; $7cc3: $f0 $05

jr_078_7cc5:
	ld a, $52                                        ; $7cc5: $3e $52

jr_078_7cc7:
	ld a, $3d                                        ; $7cc7: $3e $3d
	add hl, bc                                       ; $7cc9: $09
	di                                               ; $7cca: $f3
	adc b                                            ; $7ccb: $88
	ldh a, [c]                                       ; $7ccc: $f2
	ret c                                            ; $7ccd: $d8

	pop af                                           ; $7cce: $f1
	inc bc                                           ; $7ccf: $03
	ld a, [hl-]                                      ; $7cd0: $3a
	ldh a, [c]                                       ; $7cd1: $f2
	scf                                              ; $7cd2: $37
	ldh a, [rOBP1]                                   ; $7cd3: $f0 $49
	ldh a, [c]                                       ; $7cd5: $f2
	jp hl                                            ; $7cd6: $e9


	pop af                                           ; $7cd7: $f1
	rrca                                             ; $7cd8: $0f
	ld h, d                                          ; $7cd9: $62
	ld a, $3d                                        ; $7cda: $3e $3d
	add hl, bc                                       ; $7cdc: $09
	di                                               ; $7cdd: $f3
	ld d, b                                          ; $7cde: $50
	di                                               ; $7cdf: $f3
	ld d, c                                          ; $7ce0: $51
	inc [hl]                                         ; $7ce1: $34
	ld e, h                                          ; $7ce2: $5c
	ld d, b                                          ; $7ce3: $50
	ld [hl], c                                       ; $7ce4: $71

jr_078_7ce5:
	ld e, h                                          ; $7ce5: $5c
	ldh a, [rAUD1ENV]                                ; $7ce6: $f0 $12
	sbc a                                            ; $7ce8: $9f
	ld b, d                                          ; $7ce9: $42
	add hl, bc                                       ; $7cea: $09
	ldh a, [rAUD4LEN]                                ; $7ceb: $f0 $20
	ld [hl], e                                       ; $7ced: $73
	ldh a, [$2b]                                     ; $7cee: $f0 $2b
	ldh a, [rP1]                                     ; $7cf0: $f0 $00
	ldh a, [$cc]                                     ; $7cf2: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $7cf4: $f0 $88
	ldh a, [rOCPS]                                   ; $7cf6: $f0 $6a
	ld d, a                                          ; $7cf8: $57
	ld b, h                                          ; $7cf9: $44
	adc l                                            ; $7cfa: $8d
	add hl, bc                                       ; $7cfb: $09
	ld l, d                                          ; $7cfc: $6a
	ld l, b                                          ; $7cfd: $68
	ld b, d                                          ; $7cfe: $42
	ldh a, [rAUD3LEN]                                ; $7cff: $f0 $1b
	ldh a, [$15]                                     ; $7d01: $f0 $15
	ld c, e                                          ; $7d03: $4b
	ldh a, [rAUD1LOW]                                ; $7d04: $f0 $13
	ld a, $44                                        ; $7d06: $3e $44
	ld a, [hl-]                                      ; $7d08: $3a
	add hl, bc                                       ; $7d09: $09
	ldh a, [$d6]                                     ; $7d0a: $f0 $d6
	ld b, d                                          ; $7d0c: $42
	ld l, b                                          ; $7d0d: $68
	inc [hl]                                         ; $7d0e: $34
	ldh a, [rOBP1]                                   ; $7d0f: $f0 $49
	pop af                                           ; $7d11: $f1
	ld c, [hl]                                       ; $7d12: $4e
	ld d, e                                          ; $7d13: $53
	ld l, l                                          ; $7d14: $6d
	ld l, b                                          ; $7d15: $68
	ld c, d                                          ; $7d16: $4a
	add hl, bc                                       ; $7d17: $09
	ld h, h                                          ; $7d18: $64
	ld [hl], c                                       ; $7d19: $71
	ld c, d                                          ; $7d1a: $4a
	ld c, c                                          ; $7d1b: $49
	add hl, sp                                       ; $7d1c: $39
	ld [hl], b                                       ; $7d1d: $70
	ldh a, [rAUD1SWEEP]                              ; $7d1e: $f0 $10
	jr c, @+$54                                      ; $7d20: $38 $52

	ld d, c                                          ; $7d22: $51
	add hl, bc                                       ; $7d23: $09
	ld d, h                                          ; $7d24: $54
	ld c, l                                          ; $7d25: $4d
	inc [hl]                                         ; $7d26: $34
	ld l, d                                          ; $7d27: $6a
	ldh a, [$d3]                                     ; $7d28: $f0 $d3
	add hl, sp                                       ; $7d2a: $39
	ld h, c                                          ; $7d2b: $61
	ld b, d                                          ; $7d2c: $42
	adc a                                            ; $7d2d: $8f
	ld c, d                                          ; $7d2e: $4a
	add hl, bc                                       ; $7d2f: $09
	pop af                                           ; $7d30: $f1
	ld h, b                                          ; $7d31: $60
	ld a, [hl]                                       ; $7d32: $7e
	ld d, l                                          ; $7d33: $55
	ld a, [hl-]                                      ; $7d34: $3a
	ld c, l                                          ; $7d35: $4d
	ld d, d                                          ; $7d36: $52
	ld d, c                                          ; $7d37: $51
	ld b, l                                          ; $7d38: $45
	add hl, sp                                       ; $7d39: $39
	ld b, a                                          ; $7d3a: $47
	add hl, bc                                       ; $7d3b: $09
	ld l, d                                          ; $7d3c: $6a
	ld b, d                                          ; $7d3d: $42
	ldh a, [$3e]                                     ; $7d3e: $f0 $3e
	ldh a, [$74]                                     ; $7d40: $f0 $74
	ld h, d                                          ; $7d42: $62
	ldh a, [rHDMA1]                                  ; $7d43: $f0 $51
	ld h, c                                          ; $7d45: $61
	ld d, d                                          ; $7d46: $52
	ld a, $3f                                        ; $7d47: $3e $3f
	add hl, bc                                       ; $7d49: $09
	jr c, jr_078_7dba                                ; $7d4a: $38 $6e

	inc [hl]                                         ; $7d4c: $34
	pop af                                           ; $7d4d: $f1
	ld b, $f1                                        ; $7d4e: $06 $f1
	ld a, $3e                                        ; $7d50: $3e $3e
	ccf                                              ; $7d52: $3f
	ld h, h                                          ; $7d53: $64
	ld d, l                                          ; $7d54: $55
	ld b, l                                          ; $7d55: $45
	add hl, bc                                       ; $7d56: $09
	ldh a, [c]                                       ; $7d57: $f2
	sbc b                                            ; $7d58: $98
	pop af                                           ; $7d59: $f1
	ld a, d                                          ; $7d5a: $7a
	ld c, d                                          ; $7d5b: $4a
	ld c, a                                          ; $7d5c: $4f
	ld [hl], d                                       ; $7d5d: $72
	ld b, a                                          ; $7d5e: $47
	ld h, a                                          ; $7d5f: $67
	ld d, h                                          ; $7d60: $54
	add hl, sp                                       ; $7d61: $39
	ld b, l                                          ; $7d62: $45
	add hl, bc                                       ; $7d63: $09
	pop af                                           ; $7d64: $f1
	add hl, de                                       ; $7d65: $19
	ldh a, [$2c]                                     ; $7d66: $f0 $2c
	ld c, d                                          ; $7d68: $4a
	ld c, a                                          ; $7d69: $4f
	ld [hl], d                                       ; $7d6a: $72
	ld b, a                                          ; $7d6b: $47
	ld h, a                                          ; $7d6c: $67
	ld d, h                                          ; $7d6d: $54
	add hl, sp                                       ; $7d6e: $39
	ld b, l                                          ; $7d6f: $45
	add hl, bc                                       ; $7d70: $09
	ldh a, [$7e]                                     ; $7d71: $f0 $7e
	ldh a, [$7c]                                     ; $7d73: $f0 $7c
	ld h, l                                          ; $7d75: $65

jr_078_7d76:
	sub e                                            ; $7d76: $93
	pop af                                           ; $7d77: $f1
	ld b, h                                          ; $7d78: $44
	ld b, a                                          ; $7d79: $47
	ld h, a                                          ; $7d7a: $67
	ld d, h                                          ; $7d7b: $54
	add hl, sp                                       ; $7d7c: $39
	ld b, l                                          ; $7d7d: $45
	add hl, bc                                       ; $7d7e: $09
	ldh a, [$2d]                                     ; $7d7f: $f0 $2d
	ld d, b                                          ; $7d81: $50
	ld a, [hl-]                                      ; $7d82: $3a
	jr c, jr_078_7d76                                ; $7d83: $38 $f1

	pop hl                                           ; $7d85: $e1
	ld d, a                                          ; $7d86: $57
	ld a, $3f                                        ; $7d87: $3e $3f
	ld a, d                                          ; $7d89: $7a
	ld c, [hl]                                       ; $7d8a: $4e
	add hl, bc                                       ; $7d8b: $09
	ldh a, [c]                                       ; $7d8c: $f2
	ld c, $f2                                        ; $7d8d: $0e $f2
	dec bc                                           ; $7d8f: $0b
	ldh a, [hDisp0_OBP0]                                     ; $7d90: $f0 $86
	pop af                                           ; $7d92: $f1
	scf                                              ; $7d93: $37
	ld b, d                                          ; $7d94: $42
	ldh a, [$38]                                     ; $7d95: $f0 $38
	ld d, e                                          ; $7d97: $53
	jr c, jr_078_7dd2                                ; $7d98: $38 $38

	ld a, [hl-]                                      ; $7d9a: $3a
	add hl, bc                                       ; $7d9b: $09
	ld e, l                                          ; $7d9c: $5d
	dec sp                                           ; $7d9d: $3b
	ld d, h                                          ; $7d9e: $54
	add hl, sp                                       ; $7d9f: $39
	ldh a, [$32]                                     ; $7da0: $f0 $32
	ldh a, [$2f]                                     ; $7da2: $f0 $2f
	ldh a, [$32]                                     ; $7da4: $f0 $32
	ldh a, [$2f]                                     ; $7da6: $f0 $2f
	ld d, c                                          ; $7da8: $51
	ld c, [hl]                                       ; $7da9: $4e
	add hl, bc                                       ; $7daa: $09
	ld h, c                                          ; $7dab: $61
	ld h, [hl]                                       ; $7dac: $66
	dec sp                                           ; $7dad: $3b
	ld c, c                                          ; $7dae: $49
	inc [hl]                                         ; $7daf: $34
	halt                                             ; $7db0: $76
	ld b, a                                          ; $7db1: $47
	ld c, e                                          ; $7db2: $4b
	ld a, [hl-]                                      ; $7db3: $3a
	ld [hl], h                                       ; $7db4: $74
	add hl, bc                                       ; $7db5: $09
	ld l, c                                          ; $7db6: $69
	ld a, l                                          ; $7db7: $7d
	ld [hl], l                                       ; $7db8: $75
	ld h, a                                          ; $7db9: $67

jr_078_7dba:
	ld e, l                                          ; $7dba: $5d
	ld c, [hl]                                       ; $7dbb: $4e
	inc a                                            ; $7dbc: $3c
	ld a, [hl-]                                      ; $7dbd: $3a
	ld [hl], h                                       ; $7dbe: $74
	ld c, b                                          ; $7dbf: $48
	add hl, bc                                       ; $7dc0: $09
	ld h, c                                          ; $7dc1: $61
	ld h, [hl]                                       ; $7dc2: $66
	dec sp                                           ; $7dc3: $3b
	ld c, c                                          ; $7dc4: $49
	ld a, $3d                                        ; $7dc5: $3e $3d
	ldh a, [$0b]                                     ; $7dc7: $f0 $0b
	ldh a, [$f5]                                     ; $7dc9: $f0 $f5
	jr c, jr_078_7e17                                ; $7dcb: $38 $4a

	add hl, bc                                       ; $7dcd: $09
	ld d, c                                          ; $7dce: $51
	ld [hl], b                                       ; $7dcf: $70
	ld d, l                                          ; $7dd0: $55
	adc d                                            ; $7dd1: $8a

jr_078_7dd2:
	ldh a, [hDisp1_WY]                                     ; $7dd2: $f0 $95
	ld a, $40                                        ; $7dd4: $3e $40
	add hl, sp                                       ; $7dd6: $39
	ld b, h                                          ; $7dd7: $44
	ld c, h                                          ; $7dd8: $4c
	add hl, bc                                       ; $7dd9: $09
	ld b, [hl]                                       ; $7dda: $46
	ld b, c                                          ; $7ddb: $41
	ld a, [hl-]                                      ; $7ddc: $3a
	ld b, d                                          ; $7ddd: $42
	dec a                                            ; $7dde: $3d
	ld b, h                                          ; $7ddf: $44
	ld b, d                                          ; $7de0: $42
	ldh a, [c]                                       ; $7de1: $f2
	ld b, l                                          ; $7de2: $45
	ld b, h                                          ; $7de3: $44
	ld b, l                                          ; $7de4: $45
	add hl, bc                                       ; $7de5: $09
	ld b, b                                          ; $7de6: $40
	ld b, d                                          ; $7de7: $42
	ldh a, [rPCM34]                                  ; $7de8: $f0 $77
	ldh a, [$ac]                                     ; $7dea: $f0 $ac
	ldh a, [$7b]                                     ; $7dec: $f0 $7b
	sub e                                            ; $7dee: $93
	sbc b                                            ; $7def: $98
	ld e, c                                          ; $7df0: $59
	ld b, h                                          ; $7df1: $44
	ld c, h                                          ; $7df2: $4c
	add hl, bc                                       ; $7df3: $09
	ld b, b                                          ; $7df4: $40
	add hl, sp                                       ; $7df5: $39
	ld b, h                                          ; $7df6: $44
	inc [hl]                                         ; $7df7: $34
	di                                               ; $7df8: $f3
	ld l, e                                          ; $7df9: $6b
	dec sp                                           ; $7dfa: $3b
	ccf                                              ; $7dfb: $3f
	ld l, h                                          ; $7dfc: $6c
	ld b, l                                          ; $7dfd: $45
	add hl, sp                                       ; $7dfe: $39
	add hl, bc                                       ; $7dff: $09
	pop af                                           ; $7e00: $f1
	ld e, h                                          ; $7e01: $5c
	ldh a, [rAUD1HIGH]                               ; $7e02: $f0 $14
	ldh a, [$0a]                                     ; $7e04: $f0 $0a
	ldh a, [$cf]                                     ; $7e06: $f0 $cf
	inc [hl]                                         ; $7e08: $34
	ld e, d                                          ; $7e09: $5a
	add hl, sp                                       ; $7e0a: $39
	ld a, $3d                                        ; $7e0b: $3e $3d
	ld b, d                                          ; $7e0d: $42
	add hl, bc                                       ; $7e0e: $09
	ld b, [hl]                                       ; $7e0f: $46
	ld d, a                                          ; $7e10: $57
	ld d, e                                          ; $7e11: $53
	ld c, c                                          ; $7e12: $49
	add hl, sp                                       ; $7e13: $39
	inc [hl]                                         ; $7e14: $34
	ldh a, [$29]                                     ; $7e15: $f0 $29

jr_078_7e17:
	ld a, $38                                        ; $7e17: $3e $38
	ld b, l                                          ; $7e19: $45
	add hl, bc                                       ; $7e1a: $09
	ld a, l                                          ; $7e1b: $7d
	ldh a, [$03]                                     ; $7e1c: $f0 $03
	ldh a, [$35]                                     ; $7e1e: $f0 $35
	dec sp                                           ; $7e20: $3b
	ccf                                              ; $7e21: $3f
	pop af                                           ; $7e22: $f1
	sub $7e                                          ; $7e23: $d6 $7e
	jr c, jr_078_7e73                                ; $7e25: $38 $4c

	add l                                            ; $7e27: $85
	add hl, bc                                       ; $7e28: $09
	ld h, e                                          ; $7e29: $63
	ld d, a                                          ; $7e2a: $57
	ld c, c                                          ; $7e2b: $49
	jr c, jr_078_7e66                                ; $7e2c: $38 $38

	ld b, c                                          ; $7e2e: $41
	ld e, e                                          ; $7e2f: $5b
	ld d, [hl]                                       ; $7e30: $56
	ld a, [hl-]                                      ; $7e31: $3a
	jr c, jr_078_7e3d                                ; $7e32: $38 $09

	ld b, d                                          ; $7e34: $42
	ldh a, [$d2]                                     ; $7e35: $f0 $d2
	ld a, e                                          ; $7e37: $7b
	inc a                                            ; $7e38: $3c
	ld d, a                                          ; $7e39: $57
	ld [hl], d                                       ; $7e3a: $72
	ccf                                              ; $7e3b: $3f
	dec a                                            ; $7e3c: $3d

jr_078_7e3d:
	inc a                                            ; $7e3d: $3c
	ld d, b                                          ; $7e3e: $50
	add hl, bc                                       ; $7e3f: $09
	ldh a, [$ac]                                     ; $7e40: $f0 $ac
	dec a                                            ; $7e42: $3d
	ld d, h                                          ; $7e43: $54
	ld c, c                                          ; $7e44: $49
	ldh a, [rAUD1LOW]                                ; $7e45: $f0 $13
	jr c, jr_078_7e85                                ; $7e47: $38 $3c

	ld d, b                                          ; $7e49: $50
	ld a, [hl-]                                      ; $7e4a: $3a
	ld [hl], h                                       ; $7e4b: $74
	add hl, bc                                       ; $7e4c: $09
	ldh a, [$b5]                                     ; $7e4d: $f0 $b5
	dec sp                                           ; $7e4f: $3b
	ld d, l                                          ; $7e50: $55
	ld d, a                                          ; $7e51: $57
	ld [hl], d                                       ; $7e52: $72
	ccf                                              ; $7e53: $3f
	jr c, jr_078_7e91                                ; $7e54: $38 $3b

	ccf                                              ; $7e56: $3f
	ld c, h                                          ; $7e57: $4c
	add hl, bc                                       ; $7e58: $09
	ld [hl], d                                       ; $7e59: $72
	ccf                                              ; $7e5a: $3f
	ld h, a                                          ; $7e5b: $67
	dec sp                                           ; $7e5c: $3b
	ccf                                              ; $7e5d: $3f
	ld d, l                                          ; $7e5e: $55
	ld b, h                                          ; $7e5f: $44
	ld e, b                                          ; $7e60: $58
	jr c, jr_078_7eaf                                ; $7e61: $38 $4c

	add hl, bc                                       ; $7e63: $09
	ld l, d                                          ; $7e64: $6a
	ld l, b                                          ; $7e65: $68

jr_078_7e66:
	ld c, e                                          ; $7e66: $4b
	ld [hl], d                                       ; $7e67: $72
	adc c                                            ; $7e68: $89
	ld c, d                                          ; $7e69: $4a
	ld e, h                                          ; $7e6a: $5c
	ld a, [hl-]                                      ; $7e6b: $3a
	jr c, jr_078_7eb0                                ; $7e6c: $38 $42

	add hl, bc                                       ; $7e6e: $09
	inc a                                            ; $7e6f: $3c
	inc [hl]                                         ; $7e70: $34
	ldh a, [c]                                       ; $7e71: $f2
	or l                                             ; $7e72: $b5

jr_078_7e73:
	ldh a, [$f5]                                     ; $7e73: $f0 $f5
	jr c, jr_078_7eb5                                ; $7e75: $38 $3e

	ld a, [hl-]                                      ; $7e77: $3a
	jr c, jr_078_7ec4                                ; $7e78: $38 $4a

	ld b, l                                          ; $7e7a: $45
	add hl, bc                                       ; $7e7b: $09
	add a                                            ; $7e7c: $87
	pop af                                           ; $7e7d: $f1
	ld e, c                                          ; $7e7e: $59
	ld a, $3c                                        ; $7e7f: $3e $3c
	ld a, [hl-]                                      ; $7e81: $3a
	jr c, @+$44                                      ; $7e82: $38 $42

	inc a                                            ; $7e84: $3c

jr_078_7e85:
	ld c, a                                          ; $7e85: $4f
	ld c, h                                          ; $7e86: $4c
	add hl, bc                                       ; $7e87: $09
	ld l, e                                          ; $7e88: $6b
	ld c, c                                          ; $7e89: $49
	inc a                                            ; $7e8a: $3c
	ld a, [hl-]                                      ; $7e8b: $3a
	ld c, [hl]                                       ; $7e8c: $4e
	ld b, c                                          ; $7e8d: $41
	ld e, e                                          ; $7e8e: $5b
	ld d, [hl]                                       ; $7e8f: $56
	ld a, [hl-]                                      ; $7e90: $3a

jr_078_7e91:
	jr c, jr_078_7e9c                                ; $7e91: $38 $09

	ldh a, [$28]                                     ; $7e93: $f0 $28
	ldh a, [c]                                       ; $7e95: $f2
	cp b                                             ; $7e96: $b8
	ld c, e                                          ; $7e97: $4b
	adc h                                            ; $7e98: $8c
	pop af                                           ; $7e99: $f1
	ld e, [hl]                                       ; $7e9a: $5e
	ld b, h                                          ; $7e9b: $44

jr_078_7e9c:
	ld d, d                                          ; $7e9c: $52
	ld a, $44                                        ; $7e9d: $3e $44
	ld c, h                                          ; $7e9f: $4c
	add hl, bc                                       ; $7ea0: $09
	ldh a, [$60]                                     ; $7ea1: $f0 $60
	ld a, l                                          ; $7ea3: $7d
	sub e                                            ; $7ea4: $93
	ld a, l                                          ; $7ea5: $7d
	ld [hl], e                                       ; $7ea6: $73
	ld l, c                                          ; $7ea7: $69
	ld a, l                                          ; $7ea8: $7d
	ld e, c                                          ; $7ea9: $59
	ldh a, [$7e]                                     ; $7eaa: $f0 $7e
	ld e, c                                          ; $7eac: $59
	add hl, bc                                       ; $7ead: $09
	ld e, d                                          ; $7eae: $5a

jr_078_7eaf:
	ld d, h                                          ; $7eaf: $54

jr_078_7eb0:
	ld b, a                                          ; $7eb0: $47
	ld h, a                                          ; $7eb1: $67
	dec sp                                           ; $7eb2: $3b
	dec a                                            ; $7eb3: $3d
	ld b, c                                          ; $7eb4: $41

jr_078_7eb5:
	ld b, h                                          ; $7eb5: $44
	ld e, a                                          ; $7eb6: $5f
	add hl, sp                                       ; $7eb7: $39
	add hl, bc                                       ; $7eb8: $09
	ldh a, [rBGP]                                    ; $7eb9: $f0 $47
	pop af                                           ; $7ebb: $f1
	call $c7f0                                       ; $7ebc: $cd $f0 $c7
	ld c, l                                          ; $7ebf: $4d
	ld a, [hl-]                                      ; $7ec0: $3a
	ld b, c                                          ; $7ec1: $41
	ld e, e                                          ; $7ec2: $5b
	ld d, [hl]                                       ; $7ec3: $56

jr_078_7ec4:
	ld a, [hl-]                                      ; $7ec4: $3a
	jr c, jr_078_7ed0                                ; $7ec5: $38 $09

	ldh a, [$80]                                     ; $7ec7: $f0 $80
	ldh a, [$c5]                                     ; $7ec9: $f0 $c5
	ldh a, [$67]                                     ; $7ecb: $f0 $67
	ldh a, [$9f]                                     ; $7ecd: $f0 $9f
	ld b, [hl]                                       ; $7ecf: $46

jr_078_7ed0:
	ld c, [hl]                                       ; $7ed0: $4e
	ld b, c                                          ; $7ed1: $41
	ld b, h                                          ; $7ed2: $44
	ld e, l                                          ; $7ed3: $5d
	ld e, d                                          ; $7ed4: $5a
	add hl, bc                                       ; $7ed5: $09
	ld b, [hl]                                       ; $7ed6: $46
	ld [hl], h                                       ; $7ed7: $74
	inc [hl]                                         ; $7ed8: $34
	ld l, [hl]                                       ; $7ed9: $6e
	dec sp                                           ; $7eda: $3b
	ld c, c                                          ; $7edb: $49
	ldh a, [$ce]                                     ; $7edc: $f0 $ce
	ld h, e                                          ; $7ede: $63
	dec sp                                           ; $7edf: $3b
	dec a                                            ; $7ee0: $3d
	add hl, bc                                       ; $7ee1: $09
	add b                                            ; $7ee2: $80
	jr c, jr_078_7f2c                                ; $7ee3: $38 $47

	inc [hl]                                         ; $7ee5: $34
	halt                                             ; $7ee6: $76
	ldh a, [rSTAT]                                   ; $7ee7: $f0 $41
	ld b, d                                          ; $7ee9: $42
	sub h                                            ; $7eea: $94
	ldh a, [rDMA]                                    ; $7eeb: $f0 $46
	ld b, h                                          ; $7eed: $44
	add hl, bc                                       ; $7eee: $09
	ld d, h                                          ; $7eef: $54
	add hl, sp                                       ; $7ef0: $39
	jr c, jr_078_7f2c                                ; $7ef1: $38 $39

	ld c, c                                          ; $7ef3: $49
	ld e, h                                          ; $7ef4: $5c
	pop af                                           ; $7ef5: $f1
	ld l, e                                          ; $7ef6: $6b
	ld b, h                                          ; $7ef7: $44
	ld b, l                                          ; $7ef8: $45
	ld a, [hl-]                                      ; $7ef9: $3a
	add hl, bc                                       ; $7efa: $09
	add hl, sp                                       ; $7efb: $39
	ld d, d                                          ; $7efc: $52
	ld d, l                                          ; $7efd: $55
	pop af                                           ; $7efe: $f1
	xor l                                            ; $7eff: $ad
	pop af                                           ; $7f00: $f1
	and l                                            ; $7f01: $a5
	ld c, d                                          ; $7f02: $4a
	ld e, h                                          ; $7f03: $5c
	ld c, [hl]                                       ; $7f04: $4e
	inc a                                            ; $7f05: $3c
	ld a, [hl-]                                      ; $7f06: $3a
	add hl, bc                                       ; $7f07: $09
	pop af                                           ; $7f08: $f1
	ld d, h                                          ; $7f09: $54
	add e                                            ; $7f0a: $83
	ld h, d                                          ; $7f0b: $62
	ld a, $52                                        ; $7f0c: $3e $52

Jump_078_7f0e:
	ld a, c                                          ; $7f0e: $79
	ld b, c                                          ; $7f0f: $41
	ld b, l                                          ; $7f10: $45
	add hl, sp                                       ; $7f11: $39
	ld b, a                                          ; $7f12: $47
	add hl, bc                                       ; $7f13: $09
	ld b, [hl]                                       ; $7f14: $46
	ld [hl], h                                       ; $7f15: $74
	inc [hl]                                         ; $7f16: $34
	ld l, e                                          ; $7f17: $6b
	ld c, c                                          ; $7f18: $49
	inc a                                            ; $7f19: $3c
	ldh a, [$ce]                                     ; $7f1a: $f0 $ce
	ld h, e                                          ; $7f1c: $63
	dec sp                                           ; $7f1d: $3b
	dec a                                            ; $7f1e: $3d
	add hl, bc                                       ; $7f1f: $09
	ld [hl-], a                                      ; $7f20: $32
	ld h, h                                          ; $7f21: $64
	ld h, h                                          ; $7f22: $64
	ld h, h                                          ; $7f23: $64
	ld h, h                                          ; $7f24: $64
	ld h, h                                          ; $7f25: $64
	ld h, h                                          ; $7f26: $64
	ld h, h                                          ; $7f27: $64
	ld h, h                                          ; $7f28: $64
	ld h, h                                          ; $7f29: $64
	add hl, bc                                       ; $7f2a: $09
	ld e, e                                          ; $7f2b: $5b

jr_078_7f2c:
	ld d, [hl]                                       ; $7f2c: $56
	ld b, [hl]                                       ; $7f2d: $46
	inc [hl]                                         ; $7f2e: $34
	ldh a, [$0a]                                     ; $7f2f: $f0 $0a
	pop af                                           ; $7f31: $f1
	jr jr_078_7f9b                                   ; $7f32: $18 $67

	ld d, h                                          ; $7f34: $54
	add hl, sp                                       ; $7f35: $39
	ld b, l                                          ; $7f36: $45
	add hl, bc                                       ; $7f37: $09
	ld c, d                                          ; $7f38: $4a
	ld c, a                                          ; $7f39: $4f
	inc [hl]                                         ; $7f3a: $34
	ld b, [hl]                                       ; $7f3b: $46
	ldh a, [rSB]                                     ; $7f3c: $f0 $01
	ccf                                              ; $7f3e: $3f
	ld b, l                                          ; $7f3f: $45
	inc a                                            ; $7f40: $3c
	dec sp                                           ; $7f41: $3b
	dec a                                            ; $7f42: $3d
	add hl, bc                                       ; $7f43: $09
	jr c, @+$3a                                      ; $7f44: $38 $38

	inc a                                            ; $7f46: $3c
	ld d, b                                          ; $7f47: $50
	inc [hl]                                         ; $7f48: $34
	ldh a, [$0a]                                     ; $7f49: $f0 $0a
	ld d, l                                          ; $7f4b: $55
	ldh a, [c]                                       ; $7f4c: $f2
	cp h                                             ; $7f4d: $bc
	ld e, l                                          ; $7f4e: $5d
	ld b, l                                          ; $7f4f: $45
	add hl, bc                                       ; $7f50: $09
	ldh a, [$d7]                                     ; $7f51: $f0 $d7
	ld c, d                                          ; $7f53: $4a
	ldh a, [$d7]                                     ; $7f54: $f0 $d7
	pop af                                           ; $7f56: $f1
	sub c                                            ; $7f57: $91
	ld a, $3f                                        ; $7f58: $3e $3f
	ld c, a                                          ; $7f5a: $4f
	ldh a, [$c7]                                     ; $7f5b: $f0 $c7
	jr c, @-$71                                      ; $7f5d: $38 $8d

	add hl, bc                                       ; $7f5f: $09
	pop af                                           ; $7f60: $f1
	sbc e                                            ; $7f61: $9b
	ld c, l                                          ; $7f62: $4d
	ld b, h                                          ; $7f63: $44
	ld c, c                                          ; $7f64: $49
	ld [hl], a                                       ; $7f65: $77
	add hl, sp                                       ; $7f66: $39
	ld e, l                                          ; $7f67: $5d
	ld e, d                                          ; $7f68: $5a
	ld a, [hl-]                                      ; $7f69: $3a
	ld [hl], h                                       ; $7f6a: $74
	add hl, bc                                       ; $7f6b: $09
	ldh a, [$c6]                                     ; $7f6c: $f0 $c6
	ldh a, [c]                                       ; $7f6e: $f2
	xor d                                            ; $7f6f: $aa
	ldh a, [c]                                       ; $7f70: $f2
	inc sp                                           ; $7f71: $33
	ld c, l                                          ; $7f72: $4d
	ccf                                              ; $7f73: $3f
	ld b, c                                          ; $7f74: $41
	ld e, e                                          ; $7f75: $5b
	ld d, [hl]                                       ; $7f76: $56
	ld a, [hl-]                                      ; $7f77: $3a
	jr c, jr_078_7f83                                ; $7f78: $38 $09

	ld [hl], d                                       ; $7f7a: $72
	ccf                                              ; $7f7b: $3f
	ld c, [hl]                                       ; $7f7c: $4e
	ldh a, [$08]                                     ; $7f7d: $f0 $08
	add hl, sp                                       ; $7f7f: $39
	ld d, e                                          ; $7f80: $53
	jr c, jr_078_7fbb                                ; $7f81: $38 $38

jr_078_7f83:
	inc a                                            ; $7f83: $3c
	ld a, [hl-]                                      ; $7f84: $3a
	add hl, bc                                       ; $7f85: $09
	add c                                            ; $7f86: $81
	ldh a, [$1f]                                     ; $7f87: $f0 $1f
	add e                                            ; $7f89: $83
	ldh a, [$2f]                                     ; $7f8a: $f0 $2f
	ld e, c                                          ; $7f8c: $59
	pop af                                           ; $7f8d: $f1
	db $e3                                           ; $7f8e: $e3
	ld e, c                                          ; $7f8f: $59
	ld l, h                                          ; $7f90: $6c
	dec a                                            ; $7f91: $3d
	jr c, jr_078_7f9d                                ; $7f92: $38 $09

	ld a, b                                          ; $7f94: $78
	ccf                                              ; $7f95: $3f
	ld d, l                                          ; $7f96: $55
	ld c, l                                          ; $7f97: $4d
	ld c, [hl]                                       ; $7f98: $4e
	ld b, c                                          ; $7f99: $41
	ld c, d                                          ; $7f9a: $4a

jr_078_7f9b:
	ld a, $66                                        ; $7f9b: $3e $66

jr_078_7f9d:
	add hl, sp                                       ; $7f9d: $39
	add hl, bc                                       ; $7f9e: $09
	jr c, jr_078_7ff3                                ; $7f9f: $38 $52

	jr c, @+$63                                      ; $7fa1: $38 $61

	inc [hl]                                         ; $7fa3: $34
	ld b, h                                          ; $7fa4: $44
	dec sp                                           ; $7fa5: $3b
	dec a                                            ; $7fa6: $3d
	inc a                                            ; $7fa7: $3c
	ld a, [hl-]                                      ; $7fa8: $3a
	add hl, bc                                       ; $7fa9: $09
	ld [hl], b                                       ; $7faa: $70
	ld [hl], c                                       ; $7fab: $71

Call_078_7fac:
	ld b, c                                          ; $7fac: $41
	ld a, [hl-]                                      ; $7fad: $3a
	ld e, b                                          ; $7fae: $58
	jr c, jr_078_7fe5                                ; $7faf: $38 $34

	ld b, [hl]                                       ; $7fb1: $46
	ld b, d                                          ; $7fb2: $42
	pop af                                           ; $7fb3: $f1
	ld b, [hl]                                       ; $7fb4: $46
	add hl, bc                                       ; $7fb5: $09
	ldh a, [$9d]                                     ; $7fb6: $f0 $9d
	ldh a, [$50]                                     ; $7fb8: $f0 $50
	inc [hl]                                         ; $7fba: $34

jr_078_7fbb:
	ld h, c                                          ; $7fbb: $61
	ld h, [hl]                                       ; $7fbc: $66
	dec sp                                           ; $7fbd: $3b
	ld c, c                                          ; $7fbe: $49
	sbc c                                            ; $7fbf: $99
	dec sp                                           ; $7fc0: $3b
	ccf                                              ; $7fc1: $3f
	add hl, bc                                       ; $7fc2: $09
	ld b, b                                          ; $7fc3: $40
	add hl, sp                                       ; $7fc4: $39
	ld b, h                                          ; $7fc5: $44
	inc [hl]                                         ; $7fc6: $34
	ld [hl], a                                       ; $7fc7: $77
	jr c, @-$6a                                      ; $7fc8: $38 $94

	ld a, $3d                                        ; $7fca: $3e $3d
	sub a                                            ; $7fcc: $97
	add hl, bc                                       ; $7fcd: $09
	di                                               ; $7fce: $f3
	ldh a, [$f0]                                     ; $7fcf: $f0 $f0
	ld c, b                                          ; $7fd1: $48
	ld b, h                                          ; $7fd2: $44
	ld e, l                                          ; $7fd3: $5d
	ld c, d                                          ; $7fd4: $4a
	ld c, a                                          ; $7fd5: $4f
	add a                                            ; $7fd6: $87
	ldh a, [$5d]                                     ; $7fd7: $f0 $5d
	ld b, h                                          ; $7fd9: $44
	adc l                                            ; $7fda: $8d
	add hl, bc                                       ; $7fdb: $09
	ld a, [hl]                                       ; $7fdc: $7e
	ld d, l                                          ; $7fdd: $55
	ld a, [hl-]                                      ; $7fde: $3a
	dec sp                                           ; $7fdf: $3b
	dec a                                            ; $7fe0: $3d
	ld a, a                                          ; $7fe1: $7f
	ld d, e                                          ; $7fe2: $53
	ld d, c                                          ; $7fe3: $51
	ld c, [hl]                                       ; $7fe4: $4e

jr_078_7fe5:
	sub a                                            ; $7fe5: $97
	add hl, bc                                       ; $7fe6: $09
	ldh a, [rAUD4LEN]                                ; $7fe7: $f0 $20
	ld [hl], l                                       ; $7fe9: $75
	ld h, l                                          ; $7fea: $65
	ldh a, [rDIV]                                    ; $7feb: $f0 $04
	ld a, l                                          ; $7fed: $7d
	ld h, l                                          ; $7fee: $65
	ld b, d                                          ; $7fef: $42
	ld h, h                                          ; $7ff0: $64
	ldh a, [$e0]                                     ; $7ff1: $f0 $e0

jr_078_7ff3:
	ld a, $09                                        ; $7ff3: $3e $09
	ld b, [hl]                                       ; $7ff5: $46
	dec sp                                           ; $7ff6: $3b
	dec a                                            ; $7ff7: $3d
	pop af                                           ; $7ff8: $f1
	dec bc                                           ; $7ff9: $0b
	ld e, e                                          ; $7ffa: $5b
	ld d, [hl]                                       ; $7ffb: $56
	ld a, [hl-]                                      ; $7ffc: $3a
	jr c, @+$3e                                      ; $7ffd: $38 $3c

	ld d, b                                          ; $7fff: $50
