VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "xc9500"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL S
        SIGNAL AddrO(15:0)
        SIGNAL AddrO(7:0)
        SIGNAL AddrO(15:8)
        SIGNAL Addr1(15:0)
        SIGNAL Addr0(15:0)
        SIGNAL Addr1(15:8)
        SIGNAL Addr0(15:8)
        SIGNAL Addr1(7:0)
        SIGNAL Addr0(7:0)
        PORT Input S
        PORT Output AddrO(15:0)
        PORT Input Addr1(15:0)
        PORT Input Addr0(15:0)
        BEGIN BLOCKDEF addrmux
            TIMESTAMP 2005 3 3 1 31 14
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -172 384 -148 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 addrmux
            PIN Addr0(7:0) Addr0(15:8)
            PIN Addr1(7:0) Addr1(15:8)
            PIN S S
            PIN Addr_O(7:0) AddrO(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_1 addrmux
            PIN Addr0(7:0) Addr0(7:0)
            PIN Addr1(7:0) Addr1(7:0)
            PIN S S
            PIN Addr_O(7:0) AddrO(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH S
            WIRE 800 800 1360 800
            WIRE 1360 800 1360 1120
            WIRE 1360 1120 1440 1120
            WIRE 1360 1120 1360 1424
            WIRE 1360 1424 1440 1424
        END BRANCH
        BEGIN BRANCH AddrO(15:0)
            WIRE 2080 800 2240 800
            WIRE 2080 800 2080 992
            WIRE 2080 992 2080 1296
        END BRANCH
        IOMARKER 2240 800 AddrO(15:0) R0 28
        BUSTAP 2080 992 1984 992
        BEGIN BRANCH AddrO(7:0)
            WIRE 1824 992 1936 992
            WIRE 1936 992 1984 992
            BEGIN DISPLAY 1936 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2080 1296 1984 1296
        BEGIN BRANCH AddrO(15:8)
            WIRE 1824 1296 1936 1296
            WIRE 1936 1296 1984 1296
            BEGIN DISPLAY 1936 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 800 800 S R180 28
        BEGIN BRANCH Addr1(15:0)
            WIRE 800 720 960 720
            WIRE 960 720 960 928
            WIRE 960 928 960 1056
            WIRE 960 1056 960 1360
        END BRANCH
        BEGIN BRANCH Addr0(15:0)
            WIRE 800 640 1168 640
            WIRE 1168 640 1168 992
            WIRE 1168 992 1168 1296
        END BRANCH
        IOMARKER 800 720 Addr1(15:0) R180 28
        IOMARKER 800 640 Addr0(15:0) R180 28
        BEGIN INSTANCE XLXI_2 1440 1456 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_1 1440 1152 R0
        END INSTANCE
        BUSTAP 960 1360 1056 1360
        BEGIN BRANCH Addr1(15:8)
            WIRE 1056 1360 1088 1360
            WIRE 1088 1360 1440 1360
            BEGIN DISPLAY 1088 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1168 1296 1264 1296
        BEGIN BRANCH Addr0(15:8)
            WIRE 1264 1296 1280 1296
            WIRE 1280 1296 1440 1296
            BEGIN DISPLAY 1280 1296 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 960 1056 1056 1056
        BEGIN BRANCH Addr1(7:0)
            WIRE 1056 1056 1088 1056
            WIRE 1088 1056 1440 1056
            BEGIN DISPLAY 1088 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1168 992 1264 992
        BEGIN BRANCH Addr0(7:0)
            WIRE 1264 992 1280 992
            WIRE 1280 992 1440 992
            BEGIN DISPLAY 1280 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
