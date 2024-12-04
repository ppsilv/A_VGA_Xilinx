VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "xc9500"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL RGB_O(5:0)
        SIGNAL RGB_O(0)
        SIGNAL RGB_O(1)
        SIGNAL RGB_O(3)
        SIGNAL RGB_O(4)
        SIGNAL RGB_O(5)
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL RGB_O(2)
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL E
        SIGNAL G
        SIGNAL RGB_I(0)
        SIGNAL RGB_I(1)
        SIGNAL RGB_I(2)
        SIGNAL RGB_I(3)
        SIGNAL RGB_I(7:0)
        SIGNAL RGB_I(4)
        SIGNAL RGB_I(5)
        SIGNAL RGB_I(6)
        SIGNAL RGB_I(7)
        PORT Output RGB_O(5:0)
        PORT Input E
        PORT Input G
        PORT Input RGB_I(7:0)
        BEGIN BLOCKDEF obufe
            TIMESTAMP 2001 3 9 11 23 23
            LINE N 0 -96 64 -96 
            LINE N 0 -32 64 -32 
            LINE N 224 -32 128 -32 
            LINE N 96 -96 64 -96 
            LINE N 96 -48 96 -96 
            LINE N 64 -64 64 0 
            LINE N 128 -32 64 -64 
            LINE N 64 0 128 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2001 3 9 11 23 0
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 384 -256 320 -256 
            LINE N 0 -256 64 -256 
            LINE N 0 -128 64 -128 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 obufe
            PIN E E
            PIN I XLXN_13
            PIN O RGB_O(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 obufe
            PIN E E
            PIN I XLXN_14
            PIN O RGB_O(1)
        END BLOCK
        BEGIN BLOCK XLXI_4 obufe
            PIN E E
            PIN I XLXN_10
            PIN O RGB_O(3)
        END BLOCK
        BEGIN BLOCK XLXI_5 obufe
            PIN E E
            PIN I XLXN_9
            PIN O RGB_O(4)
        END BLOCK
        BEGIN BLOCK XLXI_6 obufe
            PIN E E
            PIN I XLXN_8
            PIN O RGB_O(5)
        END BLOCK
        BEGIN BLOCK XLXI_3 obufe
            PIN E E
            PIN I XLXN_11
            PIN O RGB_O(2)
        END BLOCK
        BEGIN BLOCK XLXI_25 fd
            PIN C G
            PIN D RGB_I(0)
            PIN Q XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_26 fd
            PIN C G
            PIN D RGB_I(1)
            PIN Q XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_27 fd
            PIN C G
            PIN D RGB_I(2)
            PIN Q XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_28 fd
            PIN C G
            PIN D RGB_I(3)
            PIN Q XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_29 fd
            PIN C G
            PIN D RGB_I(4)
            PIN Q XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_30 fd
            PIN C G
            PIN D RGB_I(5)
            PIN Q XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_43 fd
            PIN C G
            PIN D RGB_I(6)
            PIN Q
        END BLOCK
        BEGIN BLOCK XLXI_57 fd
            PIN C G
            PIN D RGB_I(7)
            PIN Q
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1488 304 R0
        INSTANCE XLXI_2 1488 624 R0
        INSTANCE XLXI_4 1488 1264 R0
        INSTANCE XLXI_5 1488 1584 R0
        INSTANCE XLXI_6 1488 1904 R0
        BEGIN BRANCH RGB_O(5:0)
            WIRE 2000 272 2000 592
            WIRE 2000 592 2000 672
            WIRE 2000 672 2000 912
            WIRE 2000 912 2000 1232
            WIRE 2000 1232 2000 1552
            WIRE 2000 1552 2000 1872
            WIRE 2000 1872 2304 1872
            BEGIN DISPLAY 2000 672 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2000 272 1904 272
        BEGIN BRANCH RGB_O(0)
            WIRE 1712 272 1744 272
            WIRE 1744 272 1904 272
            BEGIN DISPLAY 1744 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2000 592 1904 592
        BEGIN BRANCH RGB_O(1)
            WIRE 1712 592 1744 592
            WIRE 1744 592 1904 592
            BEGIN DISPLAY 1744 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2000 1232 1904 1232
        BEGIN BRANCH RGB_O(3)
            WIRE 1712 1232 1744 1232
            WIRE 1744 1232 1904 1232
            BEGIN DISPLAY 1744 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2000 1552 1904 1552
        BEGIN BRANCH RGB_O(4)
            WIRE 1712 1552 1744 1552
            WIRE 1744 1552 1904 1552
            BEGIN DISPLAY 1744 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2000 1872 1904 1872
        BEGIN BRANCH RGB_O(5)
            WIRE 1712 1872 1760 1872
            WIRE 1760 1872 1904 1872
            BEGIN DISPLAY 1760 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 1248 1872 1488 1872
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 1248 1552 1488 1552
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1248 1232 1488 1232
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 1248 912 1488 912
        END BRANCH
        INSTANCE XLXI_3 1488 944 R0
        BUSTAP 2000 912 1904 912
        BEGIN BRANCH RGB_O(2)
            WIRE 1712 912 1744 912
            WIRE 1744 912 1904 912
            BEGIN DISPLAY 1744 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 1248 272 1488 272
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 1248 592 1488 592
        END BRANCH
        BEGIN BRANCH E
            WIRE 272 112 1424 112
            WIRE 1424 112 1424 208
            WIRE 1424 208 1488 208
            WIRE 1424 208 1424 528
            WIRE 1424 528 1488 528
            WIRE 1424 528 1424 848
            WIRE 1424 848 1488 848
            WIRE 1424 848 1424 1168
            WIRE 1424 1168 1488 1168
            WIRE 1424 1168 1424 1488
            WIRE 1424 1488 1488 1488
            WIRE 1424 1488 1424 1808
            WIRE 1424 1808 1488 1808
        END BRANCH
        BEGIN BRANCH G
            WIRE 272 160 784 160
            WIRE 784 160 784 400
            WIRE 784 400 864 400
            WIRE 784 400 784 720
            WIRE 784 720 864 720
            WIRE 784 720 784 1040
            WIRE 784 1040 864 1040
            WIRE 784 1040 784 1360
            WIRE 784 1360 864 1360
            WIRE 784 1360 784 1680
            WIRE 784 1680 864 1680
            WIRE 784 1680 784 2000
            WIRE 784 2000 864 2000
            WIRE 784 2000 784 2320
            WIRE 784 2320 864 2320
            WIRE 784 2320 784 2640
            WIRE 784 2640 864 2640
        END BRANCH
        BUSTAP 624 272 720 272
        BEGIN BRANCH RGB_I(0)
            WIRE 720 272 848 272
            WIRE 848 272 864 272
            BEGIN DISPLAY 848 272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 624 592 720 592
        BEGIN BRANCH RGB_I(1)
            WIRE 720 592 848 592
            WIRE 848 592 864 592
            BEGIN DISPLAY 848 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 624 912 720 912
        BEGIN BRANCH RGB_I(2)
            WIRE 720 912 848 912
            WIRE 848 912 864 912
            BEGIN DISPLAY 848 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 624 1232 720 1232
        BEGIN BRANCH RGB_I(3)
            WIRE 720 1232 848 1232
            WIRE 848 1232 864 1232
            BEGIN DISPLAY 848 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RGB_I(7:0)
            WIRE 288 208 480 208
            WIRE 480 208 624 208
            WIRE 624 208 624 272
            WIRE 624 272 624 592
            WIRE 624 592 624 912
            WIRE 624 912 624 1232
            WIRE 624 1232 624 1552
            WIRE 624 1552 624 1872
            WIRE 624 1872 624 2192
            WIRE 624 2192 624 2512
            BEGIN DISPLAY 480 208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 624 1552 720 1552
        BEGIN BRANCH RGB_I(4)
            WIRE 720 1552 848 1552
            WIRE 848 1552 864 1552
            BEGIN DISPLAY 848 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 624 1872 720 1872
        BEGIN BRANCH RGB_I(5)
            WIRE 720 1872 848 1872
            WIRE 848 1872 864 1872
            BEGIN DISPLAY 848 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_25 864 528 R0
        INSTANCE XLXI_26 864 848 R0
        INSTANCE XLXI_27 864 1168 R0
        INSTANCE XLXI_28 864 1488 R0
        INSTANCE XLXI_29 864 1808 R0
        INSTANCE XLXI_30 864 2128 R0
        INSTANCE XLXI_43 864 2448 R0
        IOMARKER 2304 1872 RGB_O(5:0) R0 28
        IOMARKER 288 208 RGB_I(7:0) R180 28
        IOMARKER 272 160 G R180 28
        IOMARKER 272 112 E R180 28
        INSTANCE XLXI_57 864 2768 R0
        BUSTAP 624 2192 720 2192
        BEGIN BRANCH RGB_I(6)
            WIRE 720 2192 848 2192
            WIRE 848 2192 864 2192
            BEGIN DISPLAY 848 2192 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 624 2512 720 2512
        BEGIN BRANCH RGB_I(7)
            WIRE 720 2512 848 2512
            WIRE 848 2512 864 2512
            BEGIN DISPLAY 848 2512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
