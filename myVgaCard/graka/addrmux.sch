VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "xc9500"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Addr_O(7:0)
        SIGNAL Addr_O(0)
        SIGNAL Addr_O(1)
        SIGNAL Addr_O(2)
        SIGNAL Addr_O(3)
        SIGNAL Addr_O(4)
        SIGNAL Addr_O(5)
        SIGNAL Addr_O(6)
        SIGNAL Addr_O(7)
        SIGNAL Addr1(7:0)
        SIGNAL Addr1(7)
        SIGNAL Addr1(6)
        SIGNAL Addr1(5)
        SIGNAL Addr1(4)
        SIGNAL Addr1(3)
        SIGNAL Addr1(2)
        SIGNAL Addr1(1)
        SIGNAL Addr1(0)
        SIGNAL Addr0(7:0)
        SIGNAL Addr0(7)
        SIGNAL Addr0(6)
        SIGNAL Addr0(5)
        SIGNAL Addr0(4)
        SIGNAL Addr0(3)
        SIGNAL Addr0(2)
        SIGNAL Addr0(1)
        SIGNAL Addr0(0)
        SIGNAL S
        PORT Output Addr_O(7:0)
        PORT Input Addr1(7:0)
        PORT Input Addr0(7:0)
        PORT Input S
        BEGIN BLOCKDEF m2_1
            TIMESTAMP 2001 3 9 11 24 0
            LINE N 96 -64 96 -192 
            LINE N 256 -96 96 -64 
            LINE N 256 -160 256 -96 
            LINE N 96 -192 256 -160 
            LINE N 176 -32 96 -32 
            LINE N 176 -80 176 -32 
            LINE N 0 -32 96 -32 
            LINE N 320 -128 256 -128 
            LINE N 0 -96 96 -96 
            LINE N 0 -160 96 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 m2_1
            PIN D0 Addr0(0)
            PIN D1 Addr1(0)
            PIN S0 S
            PIN O Addr_O(0)
        END BLOCK
        BEGIN BLOCK XLXI_3 m2_1
            PIN D0 Addr0(1)
            PIN D1 Addr1(1)
            PIN S0 S
            PIN O Addr_O(1)
        END BLOCK
        BEGIN BLOCK XLXI_4 m2_1
            PIN D0 Addr0(2)
            PIN D1 Addr1(2)
            PIN S0 S
            PIN O Addr_O(2)
        END BLOCK
        BEGIN BLOCK XLXI_5 m2_1
            PIN D0 Addr0(3)
            PIN D1 Addr1(3)
            PIN S0 S
            PIN O Addr_O(3)
        END BLOCK
        BEGIN BLOCK XLXI_6 m2_1
            PIN D0 Addr0(4)
            PIN D1 Addr1(4)
            PIN S0 S
            PIN O Addr_O(4)
        END BLOCK
        BEGIN BLOCK XLXI_7 m2_1
            PIN D0 Addr0(5)
            PIN D1 Addr1(5)
            PIN S0 S
            PIN O Addr_O(5)
        END BLOCK
        BEGIN BLOCK XLXI_8 m2_1
            PIN D0 Addr0(6)
            PIN D1 Addr1(6)
            PIN S0 S
            PIN O Addr_O(6)
        END BLOCK
        BEGIN BLOCK XLXI_9 m2_1
            PIN D0 Addr0(7)
            PIN D1 Addr1(7)
            PIN S0 S
            PIN O Addr_O(7)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_2 1360 720 R0
        INSTANCE XLXI_3 1360 960 R0
        INSTANCE XLXI_4 1360 1200 R0
        INSTANCE XLXI_5 1360 1440 R0
        INSTANCE XLXI_6 1360 1680 R0
        INSTANCE XLXI_7 1360 1920 R0
        INSTANCE XLXI_8 1360 2160 R0
        INSTANCE XLXI_9 1360 2400 R0
        BEGIN BRANCH Addr_O(7:0)
            WIRE 1920 320 2240 320
            WIRE 1920 320 1920 592
            WIRE 1920 592 1920 832
            WIRE 1920 832 1920 1072
            WIRE 1920 1072 1920 1312
            WIRE 1920 1312 1920 1552
            WIRE 1920 1552 1920 1792
            WIRE 1920 1792 1920 2032
            WIRE 1920 2032 1920 2272
        END BRANCH
        IOMARKER 2240 320 Addr_O(7:0) R0 28
        BUSTAP 1920 592 1824 592
        BEGIN BRANCH Addr_O(0)
            WIRE 1680 592 1760 592
            WIRE 1760 592 1824 592
            BEGIN DISPLAY 1760 592 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1920 832 1824 832
        BEGIN BRANCH Addr_O(1)
            WIRE 1680 832 1760 832
            WIRE 1760 832 1824 832
            BEGIN DISPLAY 1760 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1920 1072 1824 1072
        BEGIN BRANCH Addr_O(2)
            WIRE 1680 1072 1760 1072
            WIRE 1760 1072 1824 1072
            BEGIN DISPLAY 1760 1072 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1920 1312 1824 1312
        BEGIN BRANCH Addr_O(3)
            WIRE 1680 1312 1760 1312
            WIRE 1760 1312 1824 1312
            BEGIN DISPLAY 1760 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1920 1552 1824 1552
        BEGIN BRANCH Addr_O(4)
            WIRE 1680 1552 1760 1552
            WIRE 1760 1552 1824 1552
            BEGIN DISPLAY 1760 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1920 1792 1824 1792
        BEGIN BRANCH Addr_O(5)
            WIRE 1680 1792 1760 1792
            WIRE 1760 1792 1824 1792
            BEGIN DISPLAY 1760 1792 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1920 2032 1824 2032
        BEGIN BRANCH Addr_O(6)
            WIRE 1680 2032 1760 2032
            WIRE 1760 2032 1824 2032
            BEGIN DISPLAY 1760 2032 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1920 2272 1824 2272
        BEGIN BRANCH Addr_O(7)
            WIRE 1680 2272 1760 2272
            WIRE 1760 2272 1824 2272
            BEGIN DISPLAY 1760 2272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Addr1(7:0)
            WIRE 640 320 800 320
            WIRE 800 320 800 624
            WIRE 800 624 800 864
            WIRE 800 864 800 1104
            WIRE 800 1104 800 1344
            WIRE 800 1344 800 1584
            WIRE 800 1584 800 1824
            WIRE 800 1824 800 2064
            WIRE 800 2064 800 2304
        END BRANCH
        BUSTAP 800 2304 896 2304
        BEGIN BRANCH Addr1(7)
            WIRE 896 2304 912 2304
            WIRE 912 2304 1360 2304
            BEGIN DISPLAY 912 2304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 2064 896 2064
        BEGIN BRANCH Addr1(6)
            WIRE 896 2064 912 2064
            WIRE 912 2064 1360 2064
            BEGIN DISPLAY 912 2064 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 1824 896 1824
        BEGIN BRANCH Addr1(5)
            WIRE 896 1824 912 1824
            WIRE 912 1824 1360 1824
            BEGIN DISPLAY 912 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 1584 896 1584
        BEGIN BRANCH Addr1(4)
            WIRE 896 1584 912 1584
            WIRE 912 1584 1360 1584
            BEGIN DISPLAY 912 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 1344 896 1344
        BEGIN BRANCH Addr1(3)
            WIRE 896 1344 912 1344
            WIRE 912 1344 1360 1344
            BEGIN DISPLAY 912 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 1104 896 1104
        BEGIN BRANCH Addr1(2)
            WIRE 896 1104 912 1104
            WIRE 912 1104 1360 1104
            BEGIN DISPLAY 912 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 864 896 864
        BEGIN BRANCH Addr1(1)
            WIRE 896 864 912 864
            WIRE 912 864 1360 864
            BEGIN DISPLAY 912 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 800 624 896 624
        BEGIN BRANCH Addr1(0)
            WIRE 896 624 912 624
            WIRE 912 624 1360 624
            BEGIN DISPLAY 912 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Addr0(7:0)
            WIRE 640 240 1088 240
            WIRE 1088 240 1088 560
            WIRE 1088 560 1088 800
            WIRE 1088 800 1088 1040
            WIRE 1088 1040 1088 1280
            WIRE 1088 1280 1088 1520
            WIRE 1088 1520 1088 1760
            WIRE 1088 1760 1088 2000
            WIRE 1088 2000 1088 2240
        END BRANCH
        BUSTAP 1088 2240 1184 2240
        BEGIN BRANCH Addr0(7)
            WIRE 1184 2240 1232 2240
            WIRE 1232 2240 1360 2240
            BEGIN DISPLAY 1232 2240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1088 2000 1184 2000
        BEGIN BRANCH Addr0(6)
            WIRE 1184 2000 1232 2000
            WIRE 1232 2000 1360 2000
            BEGIN DISPLAY 1232 2000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1088 1760 1184 1760
        BEGIN BRANCH Addr0(5)
            WIRE 1184 1760 1232 1760
            WIRE 1232 1760 1360 1760
            BEGIN DISPLAY 1232 1760 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1088 1520 1184 1520
        BEGIN BRANCH Addr0(4)
            WIRE 1184 1520 1232 1520
            WIRE 1232 1520 1360 1520
            BEGIN DISPLAY 1232 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1088 1280 1184 1280
        BEGIN BRANCH Addr0(3)
            WIRE 1184 1280 1232 1280
            WIRE 1232 1280 1360 1280
            BEGIN DISPLAY 1232 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1088 1040 1184 1040
        BEGIN BRANCH Addr0(2)
            WIRE 1184 1040 1232 1040
            WIRE 1232 1040 1360 1040
            BEGIN DISPLAY 1232 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1088 800 1184 800
        BEGIN BRANCH Addr0(1)
            WIRE 1184 800 1232 800
            WIRE 1232 800 1360 800
            BEGIN DISPLAY 1232 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1088 560 1184 560
        BEGIN BRANCH Addr0(0)
            WIRE 1184 560 1232 560
            WIRE 1232 560 1360 560
            BEGIN DISPLAY 1232 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S
            WIRE 640 400 1328 400
            WIRE 1328 400 1328 688
            WIRE 1328 688 1360 688
            WIRE 1328 688 1328 928
            WIRE 1328 928 1360 928
            WIRE 1328 928 1328 1168
            WIRE 1328 1168 1360 1168
            WIRE 1328 1168 1328 1408
            WIRE 1328 1408 1360 1408
            WIRE 1328 1408 1328 1648
            WIRE 1328 1648 1360 1648
            WIRE 1328 1648 1328 1888
            WIRE 1328 1888 1360 1888
            WIRE 1328 1888 1328 2128
            WIRE 1328 2128 1360 2128
            WIRE 1328 2128 1328 2368
            WIRE 1328 2368 1360 2368
        END BRANCH
        IOMARKER 640 240 Addr0(7:0) R180 28
        IOMARKER 640 320 Addr1(7:0) R180 28
        IOMARKER 640 400 S R180 28
    END SHEET
END SCHEMATIC
