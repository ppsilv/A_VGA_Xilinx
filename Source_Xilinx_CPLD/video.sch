VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "xc9500"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_49
        SIGNAL XLXN_263
        SIGNAL VSync
        SIGNAL XLXN_318
        SIGNAL XLXN_319
        SIGNAL HSync
        SIGNAL XLXN_335(15:0)
        SIGNAL XLXN_335(1)
        SIGNAL XLXN_335(2)
        SIGNAL XLXN_335(3)
        SIGNAL XLXN_335(4)
        SIGNAL XLXN_335(5)
        SIGNAL XLXN_335(6)
        SIGNAL XLXN_335(7)
        SIGNAL XLXN_335(8)
        SIGNAL XLXN_346
        SIGNAL XLXN_286(8)
        SIGNAL XLXN_286(7)
        SIGNAL XLXN_286(6)
        SIGNAL XLXN_286(5)
        SIGNAL XLXN_286(4)
        SIGNAL XLXN_286(15:0)
        SIGNAL VBlank
        SIGNAL Clk_I
        SIGNAL LineCount(7:0)
        SIGNAL XLXN_335(8:1)
        SIGNAL XLXN_286(8:1)
        SIGNAL SpaltenCount(7:0)
        SIGNAL XLXN_399
        PORT Output VSync
        PORT Output HSync
        PORT Output VBlank
        PORT Input Clk_I
        PORT Output LineCount(7:0)
        PORT Output SpaltenCount(7:0)
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2001 3 9 11 23 11
            LINE N 96 -64 32 -64 
            LINE N 64 0 64 -32 
            LINE N 64 -32 64 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2001 3 9 11 23 11
            LINE N 64 -128 64 -96 
            LINE N 64 -64 64 -80 
            LINE N 88 -64 40 -64 
            LINE N 68 -32 60 -32 
            LINE N 76 -48 52 -48 
            LINE N 64 -64 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF cb16ce
            TIMESTAMP 2001 5 11 10 46 45
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -128 320 -128 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and8
            TIMESTAMP 2001 3 9 11 23 50
            LINE N 64 -64 64 -512 
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -256 64 -256 
            LINE N 0 -320 64 -320 
            LINE N 0 -384 64 -384 
            LINE N 0 -448 64 -448 
            LINE N 0 -512 64 -512 
            LINE N 64 -336 144 -336 
            LINE N 144 -240 64 -240 
            ARC N 96 -336 192 -240 144 -240 144 -336 
            LINE N 256 -288 192 -288 
        END BLOCKDEF
        BEGIN BLOCKDEF nor3
            TIMESTAMP 2001 3 9 11 23 50
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 216 -128 
            CIRCLE N 192 -140 216 -116 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            LINE N 112 -176 48 -176 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N 28 -176 204 0 192 -128 112 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF and5
            TIMESTAMP 2001 5 11 10 44 23
            ARC N 96 -240 192 -144 144 -144 144 -240 
            LINE N 144 -144 64 -144 
            LINE N 64 -240 144 -240 
            LINE N 64 -64 64 -320 
            LINE N 256 -192 192 -192 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF obuf8
            TIMESTAMP 2001 3 9 11 23 23
            LINE N 0 -32 64 -32 
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 224 -32 128 -32 
            RECTANGLE N 0 -44 64 -20 
            RECTANGLE N 128 -44 224 -20 
        END BLOCKDEF
        BEGIN BLOCK XLXI_23 vcc
            PIN P XLXN_49
        END BLOCK
        BEGIN BLOCK XLXI_27 gnd
            PIN G XLXN_318
        END BLOCK
        BEGIN BLOCK XLXI_79 cb16ce
            PIN C VSync
            PIN CE XLXN_263
            PIN CLR XLXN_319
            PIN CEO
            PIN Q(15:0) XLXN_335(15:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_80 vcc
            PIN P XLXN_263
        END BLOCK
        BEGIN BLOCK XLXI_90 gnd
            PIN G XLXN_319
        END BLOCK
        BEGIN BLOCK XLXI_100 and8
            PIN I0 XLXN_335(8)
            PIN I1 XLXN_335(7)
            PIN I2 XLXN_335(6)
            PIN I3 XLXN_335(5)
            PIN I4 XLXN_335(4)
            PIN I5 XLXN_335(3)
            PIN I6 XLXN_335(2)
            PIN I7 XLXN_335(1)
            PIN O HSync
        END BLOCK
        BEGIN BLOCK XLXI_101 cb16ce
            PIN C Clk_I
            PIN CE XLXN_49
            PIN CLR XLXN_318
            PIN CEO
            PIN Q(15:0) XLXN_286(15:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_103 nor3
            PIN I0 HSync
            PIN I1 VSync
            PIN I2 XLXN_346
            PIN O VBlank
        END BLOCK
        BEGIN BLOCK XLXI_104 and5
            PIN I0 XLXN_286(8)
            PIN I1 XLXN_286(7)
            PIN I2 XLXN_286(6)
            PIN I3 XLXN_286(5)
            PIN I4 XLXN_286(4)
            PIN O VSync
        END BLOCK
        BEGIN BLOCK XLXI_109 nor3
            PIN I0 XLXN_286(8)
            PIN I1 XLXN_286(7)
            PIN I2 XLXN_286(6)
            PIN O XLXN_346
        END BLOCK
        BEGIN BLOCK XLXI_125 obuf8
            PIN I(7:0) XLXN_335(8:1)
            PIN O(7:0) LineCount(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_126 obuf8
            PIN I(7:0) XLXN_286(8:1)
            PIN O(7:0) SpaltenCount(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH XLXN_263
            WIRE 1344 800 1344 992
            WIRE 1344 992 1392 992
        END BRANCH
        INSTANCE XLXI_80 1280 800 R0
        BEGIN BRANCH XLXN_318
            WIRE 560 1376 560 1456
            WIRE 560 1376 656 1376
        END BRANCH
        BEGIN BRANCH XLXN_319
            WIRE 1360 1152 1360 1168
            WIRE 1360 1152 1392 1152
        END BRANCH
        INSTANCE XLXI_27 496 1584 R0
        BEGIN BRANCH HSync
            WIRE 2320 688 2384 688
            WIRE 2384 688 2800 688
            WIRE 2384 688 2384 784
        END BRANCH
        BEGIN BRANCH VSync
            WIRE 1264 608 1680 608
            WIRE 1264 608 1264 1056
            WIRE 1264 1056 1392 1056
            WIRE 1616 384 1680 384
            WIRE 1680 384 2448 384
            WIRE 2448 384 2800 384
            WIRE 2448 384 2448 784
            WIRE 1680 384 1680 608
        END BRANCH
        IOMARKER 2800 688 HSync R0 28
        INSTANCE XLXI_100 2064 976 R0
        BUSTAP 1904 464 2000 464
        BEGIN BRANCH XLXN_335(1)
            WIRE 2000 464 2016 464
            WIRE 2016 464 2064 464
            BEGIN DISPLAY 2016 464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1904 528 2000 528
        BEGIN BRANCH XLXN_335(2)
            WIRE 2000 528 2016 528
            WIRE 2016 528 2064 528
            BEGIN DISPLAY 2016 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1904 592 2000 592
        BEGIN BRANCH XLXN_335(3)
            WIRE 2000 592 2016 592
            WIRE 2016 592 2064 592
            BEGIN DISPLAY 2016 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1904 656 2000 656
        BEGIN BRANCH XLXN_335(4)
            WIRE 2000 656 2016 656
            WIRE 2016 656 2064 656
            BEGIN DISPLAY 2016 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1904 720 2000 720
        BEGIN BRANCH XLXN_335(5)
            WIRE 2000 720 2016 720
            WIRE 2016 720 2064 720
            BEGIN DISPLAY 2016 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1904 784 2000 784
        BEGIN BRANCH XLXN_335(6)
            WIRE 2000 784 2016 784
            WIRE 2016 784 2064 784
            BEGIN DISPLAY 2016 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1904 848 2000 848
        BEGIN BRANCH XLXN_335(7)
            WIRE 2000 848 2016 848
            WIRE 2016 848 2064 848
            BEGIN DISPLAY 2016 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1904 912 2000 912
        BEGIN BRANCH XLXN_335(8)
            WIRE 2000 912 2016 912
            WIRE 2016 912 2064 912
            BEGIN DISPLAY 2016 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_79 1392 1184 R0
        INSTANCE XLXI_90 1296 1296 R0
        INSTANCE XLXI_101 656 1408 R0
        INSTANCE XLXI_103 2320 784 R90
        IOMARKER 2800 384 VSync R0 28
        BEGIN BRANCH XLXN_346
            WIRE 1616 144 2512 144
            WIRE 2512 144 2512 784
        END BRANCH
        BUSTAP 1200 320 1296 320
        BUSTAP 1200 384 1296 384
        BUSTAP 1200 448 1296 448
        BUSTAP 1200 512 1296 512
        BEGIN BRANCH XLXN_286(8)
            WIRE 1296 512 1328 512
            WIRE 1328 512 1360 512
            BEGIN DISPLAY 1328 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_286(7)
            WIRE 1296 448 1328 448
            WIRE 1328 448 1360 448
            BEGIN DISPLAY 1328 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_286(6)
            WIRE 1296 384 1328 384
            WIRE 1328 384 1360 384
            BEGIN DISPLAY 1328 384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_286(5)
            WIRE 1296 320 1328 320
            WIRE 1328 320 1360 320
            BEGIN DISPLAY 1328 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_104 1360 576 R0
        BUSTAP 1200 256 1296 256
        BEGIN BRANCH XLXN_286(4)
            WIRE 1296 256 1328 256
            WIRE 1328 256 1360 256
            BEGIN DISPLAY 1328 256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1200 208 1296 208
        BEGIN BRANCH XLXN_286(8)
            WIRE 1296 208 1328 208
            WIRE 1328 208 1360 208
            BEGIN DISPLAY 1328 208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1200 144 1296 144
        BEGIN BRANCH XLXN_286(7)
            WIRE 1296 144 1328 144
            WIRE 1328 144 1360 144
            BEGIN DISPLAY 1328 144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1200 80 1296 80
        BEGIN BRANCH XLXN_286(6)
            WIRE 1296 80 1328 80
            WIRE 1328 80 1360 80
            BEGIN DISPLAY 1328 80 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_109 1360 272 R0
        BEGIN BRANCH XLXN_286(15:0)
            WIRE 1040 1152 1200 1152
            WIRE 1200 1152 1200 1440
            WIRE 1200 80 1200 144
            WIRE 1200 144 1200 208
            WIRE 1200 208 1200 256
            WIRE 1200 256 1200 320
            WIRE 1200 320 1200 384
            WIRE 1200 384 1200 448
            WIRE 1200 448 1200 512
            WIRE 1200 512 1200 864
            WIRE 1200 864 1200 1152
            BEGIN DISPLAY 1200 864 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH VBlank
            WIRE 2448 1040 2448 1120
            WIRE 2448 1120 2800 1120
        END BRANCH
        IOMARKER 2800 1120 VBlank R0 28
        BEGIN BRANCH XLXN_49
            WIRE 560 1136 560 1216
            WIRE 560 1216 656 1216
        END BRANCH
        INSTANCE XLXI_23 496 1136 R0
        BEGIN BRANCH Clk_I
            WIRE 400 1280 656 1280
        END BRANCH
        IOMARKER 400 1280 Clk_I R180 28
        INSTANCE XLXI_125 2336 1312 R0
        BEGIN BRANCH LineCount(7:0)
            WIRE 2560 1280 2800 1280
        END BRANCH
        BEGIN BRANCH XLXN_335(15:0)
            WIRE 1776 928 1904 928
            WIRE 1904 928 1904 1280
            WIRE 1904 464 1904 528
            WIRE 1904 528 1904 592
            WIRE 1904 592 1904 656
            WIRE 1904 656 1904 720
            WIRE 1904 720 1904 784
            WIRE 1904 784 1904 848
            WIRE 1904 848 1904 912
            WIRE 1904 912 1904 928
        END BRANCH
        BUSTAP 1904 1280 2000 1280
        BEGIN BRANCH XLXN_335(8:1)
            WIRE 2000 1280 2080 1280
            WIRE 2080 1280 2336 1280
            BEGIN DISPLAY 2080 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2800 1280 LineCount(7:0) R0 28
        INSTANCE XLXI_126 2336 1472 R0
        BUSTAP 1200 1440 1296 1440
        BEGIN BRANCH XLXN_286(8:1)
            WIRE 1296 1440 1360 1440
            WIRE 1360 1440 2336 1440
            BEGIN DISPLAY 1360 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH SpaltenCount(7:0)
            WIRE 2560 1440 2576 1440
            WIRE 2576 1440 2800 1440
        END BRANCH
        IOMARKER 2800 1440 SpaltenCount(7:0) R0 28
    END SHEET
END SCHEMATIC
