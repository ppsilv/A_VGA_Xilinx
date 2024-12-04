VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "xc9500"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_2
        SIGNAL XLXN_19(15:0)
        SIGNAL XLXN_19(5)
        SIGNAL XLXN_19(6)
        SIGNAL XLXN_19(7)
        SIGNAL XLXN_19(8)
        SIGNAL VSync_I
        SIGNAL LineCount(7:0)
        SIGNAL XLXN_19(8:1)
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL HSync
        SIGNAL XLXN_19(4)
        SIGNAL XLXN_19(3)
        SIGNAL XLXN_19(2)
        SIGNAL XLXN_19(1)
        PORT Input VSync_I
        PORT Output LineCount(7:0)
        PORT Output HSync
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
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2001 3 9 11 23 11
            LINE N 96 -64 32 -64 
            LINE N 64 0 64 -32 
            LINE N 64 -32 64 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF buf8
            TIMESTAMP 2001 5 18 10 42 2
            LINE N 0 -32 64 -32 
            LINE N 64 0 64 -64 
            LINE N 128 -32 64 0 
            LINE N 64 -64 128 -32 
            LINE N 224 -32 128 -32 
            RECTANGLE N 0 -44 64 -20 
            RECTANGLE N 128 -44 224 -20 
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
        BEGIN BLOCK XLXI_1 cb16ce
            PIN C VSync_I
            PIN CE XLXN_2
            PIN CLR XLXN_32
            PIN CEO
            PIN Q(15:0) XLXN_19(15:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_2 vcc
            PIN P XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_10 buf8
            PIN I(7:0) XLXN_19(8:1)
            PIN O(7:0) LineCount(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_12 gnd
            PIN G XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_13 and8
            PIN I0 XLXN_19(8)
            PIN I1 XLXN_19(7)
            PIN I2 XLXN_19(6)
            PIN I3 XLXN_19(5)
            PIN I4 XLXN_19(4)
            PIN I5 XLXN_19(3)
            PIN I6 XLXN_19(2)
            PIN I7 XLXN_19(1)
            PIN O HSync
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 960 1600 R0
        INSTANCE XLXI_2 832 1376 R0
        BEGIN BRANCH XLXN_2
            WIRE 896 1376 896 1408
            WIRE 896 1408 960 1408
        END BRANCH
        BEGIN BRANCH XLXN_19(15:0)
            WIRE 1344 1344 1440 1344
            WIRE 1440 1344 1440 1376
            WIRE 1440 1376 1440 1440
            WIRE 1440 1440 1440 1504
            WIRE 1440 1504 1440 1568
            WIRE 1440 1008 1440 1120
            WIRE 1440 1120 1440 1184
            WIRE 1440 1184 1440 1248
            WIRE 1440 1248 1440 1312
            WIRE 1440 1312 1440 1344
        END BRANCH
        BUSTAP 1440 1376 1536 1376
        BEGIN BRANCH XLXN_19(5)
            WIRE 1536 1376 1568 1376
            WIRE 1568 1376 1616 1376
            BEGIN DISPLAY 1568 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1440 1440 1536 1440
        BEGIN BRANCH XLXN_19(6)
            WIRE 1536 1440 1568 1440
            WIRE 1568 1440 1616 1440
            BEGIN DISPLAY 1568 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1440 1504 1536 1504
        BEGIN BRANCH XLXN_19(7)
            WIRE 1536 1504 1568 1504
            WIRE 1568 1504 1616 1504
            BEGIN DISPLAY 1568 1504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1440 1568 1536 1568
        BEGIN BRANCH XLXN_19(8)
            WIRE 1536 1568 1568 1568
            WIRE 1568 1568 1616 1568
            BEGIN DISPLAY 1568 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 736 1472 VSync_I R180 28
        BEGIN BRANCH VSync_I
            WIRE 736 1472 960 1472
        END BRANCH
        BEGIN BRANCH LineCount(7:0)
            WIRE 1888 1008 2000 1008
        END BRANCH
        BUSTAP 1440 1008 1536 1008
        BEGIN BRANCH XLXN_19(8:1)
            WIRE 1536 1008 1552 1008
            WIRE 1552 1008 1664 1008
            BEGIN DISPLAY 1552 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_10 1664 1040 R0
        IOMARKER 2000 1008 LineCount(7:0) R0 28
        INSTANCE XLXI_12 816 1760 R0
        BEGIN BRANCH XLXN_32
            WIRE 880 1568 960 1568
            WIRE 880 1568 880 1632
        END BRANCH
        INSTANCE XLXI_13 1616 1632 R0
        BEGIN BRANCH HSync
            WIRE 1872 1344 1952 1344
        END BRANCH
        IOMARKER 1952 1344 HSync R0 28
        BUSTAP 1440 1312 1536 1312
        BEGIN BRANCH XLXN_19(4)
            WIRE 1536 1312 1568 1312
            WIRE 1568 1312 1616 1312
            BEGIN DISPLAY 1568 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1440 1248 1536 1248
        BEGIN BRANCH XLXN_19(3)
            WIRE 1536 1248 1568 1248
            WIRE 1568 1248 1616 1248
            BEGIN DISPLAY 1568 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1440 1184 1536 1184
        BEGIN BRANCH XLXN_19(2)
            WIRE 1536 1184 1568 1184
            WIRE 1568 1184 1616 1184
            BEGIN DISPLAY 1568 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1440 1120 1536 1120
        BEGIN BRANCH XLXN_19(1)
            WIRE 1536 1120 1568 1120
            WIRE 1568 1120 1616 1120
            BEGIN DISPLAY 1568 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
