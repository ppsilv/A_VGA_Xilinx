VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "xc9500"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL HSync
        SIGNAL VSync
        SIGNAL ExMemData(7:0)
        SIGNAL AddrBus(15:0)
        SIGNAL WR_INV
        SIGNAL RD_INV
        SIGNAL A(15:0)
        SIGNAL XLXN_104
        SIGNAL XLXN_105
        SIGNAL Addr15_INV
        SIGNAL AddrBus(15)
        SIGNAL XLXN_165
        SIGNAL RGB_O(5:0)
        SIGNAL XLXN_214
        SIGNAL A0
        SIGNAL A1
        SIGNAL WR
        SIGNAL XLXN_155
        SIGNAL CLK_I
        SIGNAL XLXN_277
        SIGNAL XLXN_290
        SIGNAL XLXN_299
        SIGNAL XLXN_311
        SIGNAL XLXN_312
        SIGNAL XLXN_322
        SIGNAL XLXN_325
        SIGNAL XLXN_326
        SIGNAL XLXN_329
        SIGNAL XLXN_330
        SIGNAL DATA(7:0)
        SIGNAL XLXN_361(7:0)
        SIGNAL XLXN_363(15:0)
        SIGNAL XLXN_365(7:0)
        SIGNAL XLXN_363(7:0)
        SIGNAL XLXN_363(15:8)
        PORT Output HSync
        PORT Output VSync
        PORT BiDirectional ExMemData(7:0)
        PORT Output AddrBus(15:0)
        PORT Output WR_INV
        PORT Output RD_INV
        PORT Output Addr15_INV
        PORT Output RGB_O(5:0)
        PORT Input A0
        PORT Input A1
        PORT Input WR
        PORT Input CLK_I
        PORT BiDirectional DATA(7:0)
        BEGIN BLOCKDEF rgb_latch
            TIMESTAMP 2005 3 6 19 27 22
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -172 384 -148 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2001 3 9 11 23 11
            LINE N 96 -64 32 -64 
            LINE N 64 0 64 -32 
            LINE N 64 -32 64 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF inv
            TIMESTAMP 2001 3 9 11 23 50
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF hvlogik
            TIMESTAMP 2005 3 6 19 48 39
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
            RECTANGLE N 320 -44 384 -20 
        END BLOCKDEF
        BEGIN BLOCKDEF d2_4e
            TIMESTAMP 2001 3 9 11 22 33
            RECTANGLE N 64 -384 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 0 -320 64 -320 
            LINE N 384 -128 320 -128 
            LINE N 384 -192 320 -192 
            LINE N 384 -256 320 -256 
            LINE N 384 -320 320 -320 
        END BLOCKDEF
        BEGIN BLOCKDEF addrmux16
            TIMESTAMP 2005 3 3 1 34 18
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -172 384 -148 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2001 3 9 11 23 50
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF cb4ce
            TIMESTAMP 2001 5 11 10 50 34
            RECTANGLE N 64 -512 320 -64 
            LINE N 0 -32 64 -32 
            LINE N 0 -128 64 -128 
            LINE N 384 -256 320 -256 
            LINE N 384 -320 320 -320 
            LINE N 384 -384 320 -384 
            LINE N 384 -448 320 -448 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 384 -128 320 -128 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 0 -192 64 -192 
            LINE N 384 -192 320 -192 
        END BLOCKDEF
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2001 3 9 11 23 0
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF bufe8
            TIMESTAMP 2001 3 9 11 21 49
            RECTANGLE N 128 -44 224 -20 
            LINE N 0 -32 64 -32 
            LINE N 0 -96 64 -96 
            LINE N 64 -64 64 0 
            LINE N 128 -32 64 -64 
            LINE N 64 0 128 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 224 -32 128 -32 
            LINE N 96 -96 64 -96 
            LINE N 96 -48 96 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF fd8
            TIMESTAMP 2001 3 9 11 23 0
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_18 inv
            PIN I XLXN_290
            PIN O RD_INV
        END BLOCK
        BEGIN BLOCK XLXI_16 inv
            PIN I AddrBus(15)
            PIN O Addr15_INV
        END BLOCK
        BEGIN BLOCK XLXI_55 addrmux16
            PIN Addr0(15:0) A(15:0)
            PIN Addr1(15:0) XLXN_363(15:0)
            PIN S XLXN_325
            PIN AddrO(15:0) AddrBus(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_67 d2_4e
            PIN A0 XLXN_311
            PIN A1 XLXN_312
            PIN E XLXN_155
            PIN D0 XLXN_165
            PIN D1 XLXN_277
            PIN D2 XLXN_329
            PIN D3 XLXN_322
        END BLOCK
        BEGIN BLOCK XLXI_2 rgb_latch
            PIN E XLXN_214
            PIN G XLXN_277
            PIN RGB_I(7:0) ExMemData(7:0)
            PIN RGB_O(5:0) RGB_O(5:0)
        END BLOCK
        BEGIN BLOCK XLXI_73 inv
            PIN I XLXN_326
            PIN O WR_INV
        END BLOCK
        BEGIN BLOCK XLXI_44 d2_4e
            PIN A0 A0
            PIN A1 A1
            PIN E WR
            PIN D0 XLXN_104
            PIN D1 XLXN_105
            PIN D2 XLXN_299
            PIN D3
        END BLOCK
        BEGIN BLOCK XLXI_26 vcc
            PIN P XLXN_155
        END BLOCK
        BEGIN BLOCK XLXI_92 or2
            PIN I0 XLXN_277
            PIN I1 XLXN_165
            PIN O XLXN_290
        END BLOCK
        BEGIN BLOCK XLXI_99 cb4ce
            PIN C CLK_I
            PIN CE XLXN_155
            PIN CLR XLXN_330
            PIN CEO
            PIN Q0 XLXN_311
            PIN Q1 XLXN_312
            PIN Q2 XLXN_330
            PIN Q3
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_106 fdc
            PIN C XLXN_329
            PIN CLR XLXN_322
            PIN D XLXN_299
            PIN Q XLXN_326
        END BLOCK
        BEGIN BLOCK XLXI_108 or2
            PIN I0 XLXN_322
            PIN I1 XLXN_329
            PIN O XLXN_325
        END BLOCK
        BEGIN BLOCK XLXI_109 bufe8
            PIN E XLXN_326
            PIN I(7:0) DATA(7:0)
            PIN O(7:0) ExMemData(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_112 hvlogik
            PIN CLK_IN XLXN_329
            PIN VSync VSync
            PIN HSync HSync
            PIN VBlank XLXN_214
            PIN Addr(15:0) A(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_110 fd8
            PIN C XLXN_104
            PIN D(7:0) DATA(7:0)
            PIN Q(7:0) XLXN_363(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_111 fd8
            PIN C XLXN_105
            PIN D(7:0) DATA(7:0)
            PIN Q(7:0) XLXN_363(15:8)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH VSync
            WIRE 2048 480 3120 480
        END BRANCH
        BEGIN BRANCH ExMemData(7:0)
            WIRE 1872 1712 2368 1712
            WIRE 2368 1712 3120 1712
            WIRE 2368 1104 2368 1712
            WIRE 2368 1104 2656 1104
        END BRANCH
        IOMARKER 3120 1712 ExMemData(7:0) R0 28
        IOMARKER 3120 1984 AddrBus(15:0) R0 28
        BEGIN BRANCH Addr15_INV
            WIRE 3104 1872 3120 1872
        END BRANCH
        IOMARKER 3120 1872 Addr15_INV R0 28
        BEGIN BRANCH AddrBus(15)
            WIRE 2752 1872 2816 1872
            WIRE 2816 1872 2880 1872
            BEGIN DISPLAY 2816 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_18 2512 1328 R0
        IOMARKER 3152 1296 RD_INV R0 28
        BEGIN INSTANCE XLXI_2 2656 1136 R0
        END INSTANCE
        BEGIN BRANCH RGB_O(5:0)
            WIRE 3040 976 3120 976
        END BRANCH
        IOMARKER 3120 976 RGB_O(5:0) R0 28
        BEGIN BRANCH HSync
            WIRE 2048 544 3120 544
        END BRANCH
        BEGIN BRANCH AddrBus(15:0)
            WIRE 2624 1984 2656 1984
            WIRE 2656 1984 3120 1984
            WIRE 2656 1872 2656 1984
        END BRANCH
        INSTANCE XLXI_73 2512 1472 R0
        BEGIN BRANCH A0
            WIRE 192 1312 208 1312
        END BRANCH
        BEGIN BRANCH A1
            WIRE 192 1376 208 1376
        END BRANCH
        BEGIN BRANCH WR
            WIRE 192 1504 208 1504
        END BRANCH
        INSTANCE XLXI_44 208 1632 R0
        IOMARKER 192 1312 A0 R180 28
        IOMARKER 192 1376 A1 R180 28
        IOMARKER 192 1504 WR R180 28
        BEGIN BRANCH CLK_I
            WIRE 160 672 272 672
        END BRANCH
        INSTANCE XLXI_26 176 560 R0
        IOMARKER 160 672 CLK_I R180 28
        BEGIN BRANCH XLXN_290
            WIRE 2160 1296 2512 1296
        END BRANCH
        INSTANCE XLXI_92 1904 1392 R0
        IOMARKER 3152 1440 WR_INV R0 28
        BEGIN BRANCH XLXN_299
            WIRE 592 1440 976 1440
        END BRANCH
        INSTANCE XLXI_99 272 800 R0
        INSTANCE XLXI_67 1040 672 R0
        BEGIN BRANCH XLXN_311
            WIRE 656 352 1040 352
        END BRANCH
        BEGIN BRANCH XLXN_312
            WIRE 656 416 1040 416
        END BRANCH
        INSTANCE XLXI_106 976 1696 R0
        BEGIN BRANCH XLXN_322
            WIRE 848 672 848 1664
            WIRE 848 1664 976 1664
            WIRE 848 672 1456 672
            WIRE 1456 672 1456 848
            WIRE 1424 544 1456 544
            WIRE 1456 544 1456 672
        END BRANCH
        BEGIN BRANCH XLXN_325
            WIRE 1488 1104 1488 2112
            WIRE 1488 2112 2240 2112
        END BRANCH
        BEGIN BRANCH WR_INV
            WIRE 2736 1440 3152 1440
        END BRANCH
        INSTANCE XLXI_109 1648 1744 R0
        BEGIN BRANCH XLXN_326
            WIRE 1360 1440 1600 1440
            WIRE 1600 1440 2512 1440
            WIRE 1600 1440 1600 1648
            WIRE 1600 1648 1648 1648
        END BRANCH
        BEGIN BRANCH XLXN_155
            WIRE 240 560 240 608
            WIRE 240 608 272 608
            WIRE 240 608 240 896
            WIRE 240 896 784 896
            WIRE 784 544 1040 544
            WIRE 784 544 784 896
        END BRANCH
        BEGIN BRANCH RD_INV
            WIRE 2736 1296 3152 1296
        END BRANCH
        BEGIN BRANCH XLXN_330
            WIRE 272 768 272 848
            WIRE 272 848 720 848
            WIRE 656 480 720 480
            WIRE 720 480 720 848
        END BRANCH
        BEGIN BRANCH XLXN_277
            WIRE 1424 416 1568 416
            WIRE 1568 416 1568 1040
            WIRE 1568 1040 2656 1040
            WIRE 1568 1040 1568 1328
            WIRE 1568 1328 1904 1328
        END BRANCH
        IOMARKER 240 1712 DATA(7:0) R180 28
        INSTANCE XLXI_108 1392 848 R90
        BEGIN BRANCH XLXN_214
            WIRE 2048 608 2576 608
            WIRE 2576 608 2576 976
            WIRE 2576 976 2656 976
        END BRANCH
        IOMARKER 3120 544 HSync R0 28
        IOMARKER 3120 480 VSync R0 28
        BEGIN BRANCH XLXN_329
            WIRE 912 784 912 1568
            WIRE 912 1568 976 1568
            WIRE 912 784 1520 784
            WIRE 1520 784 1520 848
            WIRE 1424 480 1520 480
            WIRE 1520 480 1520 784
            WIRE 1520 480 1664 480
        END BRANCH
        BEGIN BRANCH XLXN_165
            WIRE 1424 352 1616 352
            WIRE 1616 352 1616 1264
            WIRE 1616 1264 1904 1264
        END BRANCH
        INSTANCE XLXI_16 2880 1904 R0
        BUSTAP 2656 1872 2752 1872
        BEGIN BRANCH A(15:0)
            WIRE 2048 672 2208 672
            WIRE 2208 672 2208 1984
            WIRE 2208 1984 2240 1984
        END BRANCH
        BEGIN INSTANCE XLXI_55 2240 2144 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_112 1664 704 R0
        END INSTANCE
        BEGIN BRANCH XLXN_104
            WIRE 592 1312 688 1312
            WIRE 688 1312 688 2208
            WIRE 688 2208 784 2208
        END BRANCH
        BEGIN BRANCH DATA(7:0)
            WIRE 240 1712 512 1712
            WIRE 512 1712 1648 1712
            WIRE 512 1712 512 2080
            WIRE 512 2080 512 2400
            WIRE 512 2400 784 2400
            WIRE 512 2080 784 2080
        END BRANCH
        BEGIN BRANCH XLXN_363(15:0)
            WIRE 1360 2048 2240 2048
            WIRE 1360 2048 1360 2080
            WIRE 1360 2080 1360 2368
            WIRE 1360 2368 1360 2400
        END BRANCH
        INSTANCE XLXI_111 784 2656 R0
        BEGIN BRANCH XLXN_105
            WIRE 592 1376 608 1376
            WIRE 608 1376 608 2528
            WIRE 608 2528 784 2528
        END BRANCH
        INSTANCE XLXI_110 784 2336 R0
        BUSTAP 1360 2080 1264 2080
        BEGIN BRANCH XLXN_363(7:0)
            WIRE 1168 2080 1248 2080
            WIRE 1248 2080 1264 2080
            BEGIN DISPLAY 1248 2080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1360 2400 1264 2400
        BEGIN BRANCH XLXN_363(15:8)
            WIRE 1168 2400 1248 2400
            WIRE 1248 2400 1264 2400
            BEGIN DISPLAY 1248 2400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
