VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "xc9500"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL CLK_IN
        SIGNAL XLXN_318
        SIGNAL HSync
        BEGIN SIGNAL Addr(7:0)
        END SIGNAL
        SIGNAL Addr(4)
        SIGNAL Addr(3)
        BEGIN SIGNAL Addr(15:8)
        END SIGNAL
        SIGNAL XLXN_413
        SIGNAL VSync
        SIGNAL VBlank
        SIGNAL XLXN_414
        SIGNAL Addr(15:0)
        SIGNAL Addr(7)
        SIGNAL Addr(6)
        SIGNAL Addr(5)
        PORT Input CLK_IN
        PORT Output HSync
        PORT Output VSync
        PORT Output VBlank
        PORT Output Addr(15:0)
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
        BEGIN BLOCKDEF hcounter
            TIMESTAMP 2005 3 3 5 31 36
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2001 5 11 10 52 8
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_23 vcc
            PIN P XLXN_413
        END BLOCK
        BEGIN BLOCK XLXI_27 gnd
            PIN G XLXN_318
        END BLOCK
        BEGIN BLOCK XLXI_104 and5
            PIN I0 Addr(7)
            PIN I1 Addr(6)
            PIN I2 Addr(5)
            PIN I3 Addr(4)
            PIN I4 Addr(3)
            PIN O VSync
        END BLOCK
        BEGIN BLOCK XLXI_109 nor3
            PIN I0 Addr(7)
            PIN I1 Addr(6)
            PIN I2 Addr(5)
            PIN O XLXN_414
        END BLOCK
        BEGIN BLOCK XLXI_127 hcounter
            PIN VSync_I VSync
            PIN LineCount(7:0) Addr(15:8)
            PIN HSync HSync
        END BLOCK
        BEGIN BLOCK XLXI_131 cb8ce
            PIN C CLK_IN
            PIN CE XLXN_413
            PIN CLR XLXN_318
            PIN CEO
            PIN Q(7:0) Addr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_133 nor3
            PIN I0 HSync
            PIN I1 VSync
            PIN I2 XLXN_414
            PIN O VBlank
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH XLXN_318
            WIRE 736 2016 736 2096
            WIRE 736 2016 832 2016
        END BRANCH
        INSTANCE XLXI_27 672 2224 R0
        BEGIN BRANCH HSync
            WIRE 2384 1200 2560 1200
            WIRE 2560 1200 2976 1200
            WIRE 2560 1200 2560 1328
        END BRANCH
        BUSTAP 1376 960 1472 960
        BUSTAP 1376 1024 1472 1024
        BUSTAP 1376 1088 1472 1088
        BUSTAP 1376 1152 1472 1152
        BEGIN BRANCH Addr(7)
            WIRE 1472 1152 1504 1152
            WIRE 1504 1152 1536 1152
            BEGIN DISPLAY 1504 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_104 1536 1216 R0
        BUSTAP 1376 896 1472 896
        BUSTAP 1376 848 1472 848
        BEGIN BRANCH Addr(7)
            WIRE 1472 848 1504 848
            WIRE 1504 848 1536 848
            BEGIN DISPLAY 1504 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1376 784 1472 784
        BEGIN BRANCH Addr(6)
            WIRE 1472 784 1504 784
            WIRE 1504 784 1536 784
            BEGIN DISPLAY 1504 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1376 720 1472 720
        BEGIN BRANCH Addr(5)
            WIRE 1472 720 1504 720
            WIRE 1504 720 1536 720
            BEGIN DISPLAY 1504 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_109 1536 912 R0
        BEGIN INSTANCE XLXI_127 2000 1232 R0
        END INSTANCE
        BEGIN BRANCH Addr(6)
            WIRE 1472 1088 1504 1088
            WIRE 1504 1088 1536 1088
            BEGIN DISPLAY 1504 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Addr(5)
            WIRE 1472 1024 1504 1024
            WIRE 1504 1024 1536 1024
            BEGIN DISPLAY 1504 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Addr(4)
            WIRE 1472 960 1504 960
            WIRE 1504 960 1536 960
            BEGIN DISPLAY 1504 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Addr(3)
            WIRE 1472 896 1504 896
            WIRE 1504 896 1536 896
            BEGIN DISPLAY 1504 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2976 1024 VSync R0 28
        IOMARKER 2976 1200 HSync R0 28
        BEGIN BRANCH XLXN_413
            WIRE 704 1776 704 1856
            WIRE 704 1856 832 1856
        END BRANCH
        INSTANCE XLXI_131 832 2048 R0
        INSTANCE XLXI_23 640 1776 R0
        BEGIN BRANCH CLK_IN
            WIRE 560 1920 832 1920
        END BRANCH
        IOMARKER 560 1920 CLK_IN R180 28
        BEGIN BRANCH VSync
            WIRE 1792 1024 1856 1024
            WIRE 1856 1024 2624 1024
            WIRE 2624 1024 2976 1024
            WIRE 2624 1024 2624 1328
            WIRE 1856 1024 1856 1136
            WIRE 1856 1136 2000 1136
        END BRANCH
        BEGIN BRANCH VBlank
            WIRE 2624 1584 2624 1600
            WIRE 2624 1600 2976 1600
        END BRANCH
        IOMARKER 2976 1600 VBlank R0 28
        INSTANCE XLXI_133 2496 1328 R90
        BEGIN BRANCH XLXN_414
            WIRE 1792 784 2688 784
            WIRE 2688 784 2688 1328
        END BRANCH
        BEGIN BRANCH Addr(15:8)
            WIRE 2384 1136 2400 1136
            WIRE 2400 1136 2400 1920
            WIRE 2400 1920 2576 1920
            WIRE 2576 1920 2624 1920
            BEGIN DISPLAY 2576 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Addr(7:0)
            WIRE 1216 1792 1376 1792
            WIRE 1376 1792 1376 1856
            WIRE 1376 1856 1376 2016
            WIRE 1376 2016 2576 2016
            WIRE 2576 2016 2624 2016
            WIRE 1376 720 1376 784
            WIRE 1376 784 1376 848
            WIRE 1376 848 1376 896
            WIRE 1376 896 1376 960
            WIRE 1376 960 1376 1024
            WIRE 1376 1024 1376 1088
            WIRE 1376 1088 1376 1152
            WIRE 1376 1152 1376 1792
            BEGIN DISPLAY 1376 1856 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
            BEGIN DISPLAY 2576 2016 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Addr(15:0)
            WIRE 2720 1920 2720 2016
            WIRE 2720 2016 2720 2240
            WIRE 2720 2240 2960 2240
        END BRANCH
        IOMARKER 2960 2240 Addr(15:0) R0 28
        BUSTAP 2720 1920 2624 1920
        BUSTAP 2720 2016 2624 2016
    END SHEET
END SCHEMATIC
