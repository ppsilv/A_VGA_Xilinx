<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <attr value="Never" name="RenameBusIO" />
    <netlist>
        <signal name="HSync" />
        <signal name="VSync" />
        <signal name="ExMemData(7:0)" />
        <signal name="AddrBus(15:0)" />
        <signal name="WR_INV" />
        <signal name="RD_INV" />
        <signal name="A(15:0)" />
        <signal name="Addr15_INV" />
        <signal name="AddrBus(15)" />
        <signal name="XLXN_165" />
        <signal name="RGB_O(5:0)" />
        <signal name="XLXN_214" />
        <signal name="A0" />
        <signal name="A1" />
        <signal name="WR" />
        <signal name="XLXN_155" />
        <signal name="CLK_I" />
        <signal name="XLXN_277" />
        <signal name="XLXN_290" />
        <signal name="XLXN_311" />
        <signal name="XLXN_312" />
        <signal name="XLXN_322" />
        <signal name="XLXN_325" />
        <signal name="XLXN_326" />
        <signal name="XLXN_329" />
        <signal name="XLXN_330" />
        <signal name="XLXN_363(15:0)" />
        <signal name="XLXN_363(7:0)" />
        <signal name="XLXN_363(15:8)" />
        <signal name="ADDRL(7:0)" />
        <signal name="ADDRH(15:8)" />
        <signal name="XLXN_371" />
        <signal name="DATA(7:0)" />
        <signal name="XLXN_375" />
        <signal name="XLXN_376" />
        <signal name="XLXN_378" />
        <signal name="XLXN_379" />
        <signal name="XLXN_380" />
        <signal name="MEM_B800" />
        <port polarity="Output" name="HSync" />
        <port polarity="Output" name="VSync" />
        <port polarity="BiDirectional" name="ExMemData(7:0)" />
        <port polarity="Output" name="AddrBus(15:0)" />
        <port polarity="Output" name="WR_INV" />
        <port polarity="Output" name="RD_INV" />
        <port polarity="Output" name="Addr15_INV" />
        <port polarity="Output" name="RGB_O(5:0)" />
        <port polarity="Input" name="A0" />
        <port polarity="Input" name="A1" />
        <port polarity="Input" name="WR" />
        <port polarity="Input" name="CLK_I" />
        <port polarity="Input" name="ADDRL(7:0)" />
        <port polarity="Input" name="ADDRH(15:8)" />
        <port polarity="Input" name="DATA(7:0)" />
        <port polarity="Input" name="MEM_B800" />
        <blockdef name="rgb_latch">
            <timestamp>2005-3-6T19:27:22</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2001-3-9T11:23:11</timestamp>
            <line x2="32" y1="-64" y2="-64" x1="96" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2001-3-9T11:23:50</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="hvlogik">
            <timestamp>2005-3-6T19:48:39</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
        </blockdef>
        <blockdef name="d2_4e">
            <timestamp>2001-3-9T11:22:33</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <blockdef name="addrmux16">
            <timestamp>2005-3-3T1:34:18</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2001-3-9T11:23:50</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="cb4ce">
            <timestamp>2001-5-11T10:50:34</timestamp>
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
        </blockdef>
        <blockdef name="fdc">
            <timestamp>2001-3-9T11:23:0</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
        </blockdef>
        <blockdef name="bufe8">
            <timestamp>2001-3-9T11:21:49</timestamp>
            <rect width="96" x="128" y="-44" height="24" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-96" y2="-96" x1="96" />
            <line x2="96" y1="-48" y2="-96" x1="96" />
        </blockdef>
        <blockdef name="fd8">
            <timestamp>2001-3-9T11:23:0</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <block symbolname="inv" name="XLXI_18">
            <blockpin signalname="XLXN_290" name="I" />
            <blockpin signalname="RD_INV" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="AddrBus(15)" name="I" />
            <blockpin signalname="Addr15_INV" name="O" />
        </block>
        <block symbolname="addrmux16" name="XLXI_55">
            <blockpin signalname="A(15:0)" name="Addr0(15:0)" />
            <blockpin signalname="XLXN_363(15:0)" name="Addr1(15:0)" />
            <blockpin signalname="XLXN_325" name="S" />
            <blockpin signalname="AddrBus(15:0)" name="AddrO(15:0)" />
        </block>
        <block symbolname="d2_4e" name="XLXI_67">
            <blockpin signalname="XLXN_311" name="A0" />
            <blockpin signalname="XLXN_312" name="A1" />
            <blockpin signalname="XLXN_155" name="E" />
            <blockpin signalname="XLXN_165" name="D0" />
            <blockpin signalname="XLXN_277" name="D1" />
            <blockpin signalname="XLXN_329" name="D2" />
            <blockpin signalname="XLXN_322" name="D3" />
        </block>
        <block symbolname="rgb_latch" name="XLXI_2">
            <blockpin signalname="XLXN_214" name="E" />
            <blockpin signalname="XLXN_277" name="G" />
            <blockpin signalname="ExMemData(7:0)" name="RGB_I(7:0)" />
            <blockpin signalname="RGB_O(5:0)" name="RGB_O(5:0)" />
        </block>
        <block symbolname="inv" name="XLXI_73">
            <blockpin signalname="XLXN_326" name="I" />
            <blockpin signalname="WR_INV" name="O" />
        </block>
        <block symbolname="d2_4e" name="XLXI_44">
            <blockpin signalname="A0" name="A0" />
            <blockpin signalname="A1" name="A1" />
            <blockpin signalname="WR" name="E" />
            <blockpin name="D0" />
            <blockpin name="D1" />
            <blockpin name="D2" />
            <blockpin name="D3" />
        </block>
        <block symbolname="vcc" name="XLXI_26">
            <blockpin signalname="XLXN_155" name="P" />
        </block>
        <block symbolname="or2" name="XLXI_92">
            <blockpin signalname="XLXN_277" name="I0" />
            <blockpin signalname="XLXN_165" name="I1" />
            <blockpin signalname="XLXN_290" name="O" />
        </block>
        <block symbolname="cb4ce" name="XLXI_99">
            <blockpin signalname="CLK_I" name="C" />
            <blockpin signalname="XLXN_155" name="CE" />
            <blockpin signalname="XLXN_330" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_311" name="Q0" />
            <blockpin signalname="XLXN_312" name="Q1" />
            <blockpin signalname="XLXN_330" name="Q2" />
            <blockpin name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="fdc" name="XLXI_106">
            <blockpin signalname="XLXN_329" name="C" />
            <blockpin signalname="XLXN_322" name="CLR" />
            <blockpin signalname="XLXN_379" name="D" />
            <blockpin signalname="XLXN_326" name="Q" />
        </block>
        <block symbolname="or2" name="XLXI_108">
            <blockpin signalname="XLXN_322" name="I0" />
            <blockpin signalname="XLXN_329" name="I1" />
            <blockpin signalname="XLXN_325" name="O" />
        </block>
        <block symbolname="bufe8" name="XLXI_109">
            <blockpin signalname="XLXN_326" name="E" />
            <blockpin signalname="DATA(7:0)" name="I(7:0)" />
            <blockpin signalname="ExMemData(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="hvlogik" name="XLXI_112">
            <blockpin signalname="XLXN_329" name="CLK_IN" />
            <blockpin signalname="VSync" name="VSync" />
            <blockpin signalname="HSync" name="HSync" />
            <blockpin signalname="XLXN_214" name="VBlank" />
            <blockpin signalname="A(15:0)" name="Addr(15:0)" />
        </block>
        <block symbolname="fd8" name="XLXI_110">
            <blockpin signalname="XLXN_378" name="C" />
            <blockpin signalname="ADDRL(7:0)" name="D(7:0)" />
            <blockpin signalname="XLXN_363(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="fd8" name="XLXI_111">
            <blockpin signalname="XLXN_378" name="C" />
            <blockpin signalname="ADDRH(15:8)" name="D(7:0)" />
            <blockpin signalname="XLXN_363(15:8)" name="Q(7:0)" />
        </block>
        <block symbolname="inv" name="XLXI_113">
            <blockpin signalname="XLXN_380" name="I" />
            <blockpin signalname="XLXN_378" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_116">
            <blockpin signalname="XLXN_378" name="I" />
            <blockpin signalname="XLXN_379" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_117">
            <blockpin signalname="WR" name="I0" />
            <blockpin signalname="MEM_B800" name="I1" />
            <blockpin signalname="XLXN_380" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="VSync">
            <wire x2="3120" y1="480" y2="480" x1="2048" />
        </branch>
        <branch name="ExMemData(7:0)">
            <wire x2="2368" y1="1712" y2="1712" x1="1872" />
            <wire x2="3120" y1="1712" y2="1712" x1="2368" />
            <wire x2="2368" y1="1104" y2="1712" x1="2368" />
            <wire x2="2656" y1="1104" y2="1104" x1="2368" />
        </branch>
        <iomarker fontsize="28" x="3120" y="1712" name="ExMemData(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3120" y="1984" name="AddrBus(15:0)" orien="R0" />
        <branch name="Addr15_INV">
            <wire x2="3120" y1="1872" y2="1872" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3120" y="1872" name="Addr15_INV" orien="R0" />
        <branch name="AddrBus(15)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="2816" y="1872" type="branch" />
            <wire x2="2816" y1="1872" y2="1872" x1="2752" />
            <wire x2="2880" y1="1872" y2="1872" x1="2816" />
        </branch>
        <instance x="2512" y="1328" name="XLXI_18" orien="R0" />
        <iomarker fontsize="28" x="3152" y="1296" name="RD_INV" orien="R0" />
        <instance x="2656" y="1136" name="XLXI_2" orien="R0">
        </instance>
        <branch name="RGB_O(5:0)">
            <wire x2="3120" y1="976" y2="976" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3120" y="976" name="RGB_O(5:0)" orien="R0" />
        <branch name="HSync">
            <wire x2="3120" y1="544" y2="544" x1="2048" />
        </branch>
        <branch name="AddrBus(15:0)">
            <wire x2="2656" y1="1984" y2="1984" x1="2624" />
            <wire x2="3120" y1="1984" y2="1984" x1="2656" />
            <wire x2="2656" y1="1872" y2="1984" x1="2656" />
        </branch>
        <instance x="2512" y="1472" name="XLXI_73" orien="R0" />
        <branch name="A0">
            <wire x2="208" y1="1312" y2="1312" x1="192" />
        </branch>
        <branch name="A1">
            <wire x2="208" y1="1376" y2="1376" x1="192" />
        </branch>
        <branch name="WR">
            <wire x2="208" y1="1504" y2="1504" x1="192" />
        </branch>
        <instance x="208" y="1632" name="XLXI_44" orien="R0" />
        <iomarker fontsize="28" x="192" y="1312" name="A0" orien="R180" />
        <iomarker fontsize="28" x="192" y="1376" name="A1" orien="R180" />
        <iomarker fontsize="28" x="192" y="1504" name="WR" orien="R180" />
        <branch name="CLK_I">
            <wire x2="272" y1="672" y2="672" x1="160" />
        </branch>
        <instance x="176" y="560" name="XLXI_26" orien="R0" />
        <iomarker fontsize="28" x="160" y="672" name="CLK_I" orien="R180" />
        <branch name="XLXN_290">
            <wire x2="2512" y1="1296" y2="1296" x1="2160" />
        </branch>
        <instance x="1904" y="1392" name="XLXI_92" orien="R0" />
        <iomarker fontsize="28" x="3152" y="1440" name="WR_INV" orien="R0" />
        <instance x="272" y="800" name="XLXI_99" orien="R0" />
        <instance x="1040" y="672" name="XLXI_67" orien="R0" />
        <branch name="XLXN_311">
            <wire x2="1040" y1="352" y2="352" x1="656" />
        </branch>
        <branch name="XLXN_312">
            <wire x2="1040" y1="416" y2="416" x1="656" />
        </branch>
        <instance x="976" y="1696" name="XLXI_106" orien="R0" />
        <branch name="XLXN_322">
            <wire x2="848" y1="672" y2="1664" x1="848" />
            <wire x2="976" y1="1664" y2="1664" x1="848" />
            <wire x2="1456" y1="672" y2="672" x1="848" />
            <wire x2="1456" y1="672" y2="848" x1="1456" />
            <wire x2="1456" y1="544" y2="544" x1="1424" />
            <wire x2="1456" y1="544" y2="672" x1="1456" />
        </branch>
        <branch name="XLXN_325">
            <wire x2="1488" y1="1104" y2="2112" x1="1488" />
            <wire x2="2240" y1="2112" y2="2112" x1="1488" />
        </branch>
        <branch name="WR_INV">
            <wire x2="3152" y1="1440" y2="1440" x1="2736" />
        </branch>
        <instance x="1648" y="1744" name="XLXI_109" orien="R0" />
        <branch name="XLXN_326">
            <wire x2="1600" y1="1440" y2="1440" x1="1360" />
            <wire x2="2512" y1="1440" y2="1440" x1="1600" />
            <wire x2="1600" y1="1440" y2="1648" x1="1600" />
            <wire x2="1648" y1="1648" y2="1648" x1="1600" />
        </branch>
        <branch name="XLXN_155">
            <wire x2="240" y1="560" y2="608" x1="240" />
            <wire x2="272" y1="608" y2="608" x1="240" />
            <wire x2="240" y1="608" y2="896" x1="240" />
            <wire x2="784" y1="896" y2="896" x1="240" />
            <wire x2="1040" y1="544" y2="544" x1="784" />
            <wire x2="784" y1="544" y2="896" x1="784" />
        </branch>
        <branch name="RD_INV">
            <wire x2="3152" y1="1296" y2="1296" x1="2736" />
        </branch>
        <branch name="XLXN_330">
            <wire x2="272" y1="768" y2="848" x1="272" />
            <wire x2="720" y1="848" y2="848" x1="272" />
            <wire x2="720" y1="480" y2="480" x1="656" />
            <wire x2="720" y1="480" y2="848" x1="720" />
        </branch>
        <branch name="XLXN_277">
            <wire x2="1568" y1="416" y2="416" x1="1424" />
            <wire x2="1568" y1="416" y2="1040" x1="1568" />
            <wire x2="2656" y1="1040" y2="1040" x1="1568" />
            <wire x2="1568" y1="1040" y2="1328" x1="1568" />
            <wire x2="1904" y1="1328" y2="1328" x1="1568" />
        </branch>
        <instance x="1392" y="848" name="XLXI_108" orien="R90" />
        <branch name="XLXN_214">
            <wire x2="2576" y1="608" y2="608" x1="2048" />
            <wire x2="2576" y1="608" y2="976" x1="2576" />
            <wire x2="2656" y1="976" y2="976" x1="2576" />
        </branch>
        <iomarker fontsize="28" x="3120" y="544" name="HSync" orien="R0" />
        <iomarker fontsize="28" x="3120" y="480" name="VSync" orien="R0" />
        <branch name="XLXN_329">
            <wire x2="912" y1="784" y2="1568" x1="912" />
            <wire x2="976" y1="1568" y2="1568" x1="912" />
            <wire x2="1520" y1="784" y2="784" x1="912" />
            <wire x2="1520" y1="784" y2="848" x1="1520" />
            <wire x2="1520" y1="480" y2="480" x1="1424" />
            <wire x2="1520" y1="480" y2="784" x1="1520" />
            <wire x2="1664" y1="480" y2="480" x1="1520" />
        </branch>
        <branch name="XLXN_165">
            <wire x2="1616" y1="352" y2="352" x1="1424" />
            <wire x2="1616" y1="352" y2="1264" x1="1616" />
            <wire x2="1904" y1="1264" y2="1264" x1="1616" />
        </branch>
        <instance x="2880" y="1904" name="XLXI_16" orien="R0" />
        <bustap x2="2752" y1="1872" y2="1872" x1="2656" />
        <branch name="A(15:0)">
            <wire x2="2208" y1="672" y2="672" x1="2048" />
            <wire x2="2208" y1="672" y2="1984" x1="2208" />
            <wire x2="2240" y1="1984" y2="1984" x1="2208" />
        </branch>
        <instance x="2240" y="2144" name="XLXI_55" orien="R0">
        </instance>
        <instance x="1664" y="704" name="XLXI_112" orien="R0">
        </instance>
        <branch name="XLXN_363(15:0)">
            <wire x2="2240" y1="2048" y2="2048" x1="1360" />
            <wire x2="1360" y1="2048" y2="2080" x1="1360" />
            <wire x2="1360" y1="2080" y2="2400" x1="1360" />
        </branch>
        <instance x="784" y="2656" name="XLXI_111" orien="R0" />
        <instance x="784" y="2336" name="XLXI_110" orien="R0" />
        <bustap x2="1264" y1="2080" y2="2080" x1="1360" />
        <branch name="XLXN_363(7:0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1248" y="2080" type="branch" />
            <wire x2="1248" y1="2080" y2="2080" x1="1168" />
            <wire x2="1264" y1="2080" y2="2080" x1="1248" />
        </branch>
        <bustap x2="1264" y1="2400" y2="2400" x1="1360" />
        <branch name="XLXN_363(15:8)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="1248" y="2400" type="branch" />
            <wire x2="1248" y1="2400" y2="2400" x1="1168" />
            <wire x2="1264" y1="2400" y2="2400" x1="1248" />
        </branch>
        <branch name="ADDRL(7:0)">
            <wire x2="768" y1="2080" y2="2080" x1="512" />
            <wire x2="784" y1="2080" y2="2080" x1="768" />
        </branch>
        <branch name="ADDRH(15:8)">
            <wire x2="542" y1="2400" y2="2400" x1="528" />
            <wire x2="559" y1="2400" y2="2400" x1="542" />
            <wire x2="583" y1="2400" y2="2400" x1="559" />
            <wire x2="784" y1="2400" y2="2400" x1="583" />
        </branch>
        <iomarker fontsize="28" x="528" y="2400" name="ADDRH(15:8)" orien="R180" />
        <iomarker fontsize="28" x="512" y="2080" name="ADDRL(7:0)" orien="R180" />
        <branch name="DATA(7:0)">
            <wire x2="1648" y1="1712" y2="1712" x1="512" />
        </branch>
        <iomarker fontsize="28" x="512" y="1712" name="DATA(7:0)" orien="R180" />
        <instance x="704" y="1904" name="XLXI_116" orien="R0" />
        <branch name="XLXN_378">
            <wire x2="704" y1="1872" y2="1872" x1="672" />
            <wire x2="672" y1="1872" y2="2208" x1="672" />
            <wire x2="672" y1="2208" y2="2528" x1="672" />
            <wire x2="784" y1="2528" y2="2528" x1="672" />
            <wire x2="784" y1="2208" y2="2208" x1="672" />
        </branch>
        <branch name="XLXN_379">
            <wire x2="960" y1="1872" y2="1872" x1="928" />
            <wire x2="960" y1="1440" y2="1872" x1="960" />
            <wire x2="976" y1="1440" y2="1440" x1="960" />
        </branch>
        <instance x="448" y="2240" name="XLXI_113" orien="R0" />
        <branch name="XLXN_380">
            <wire x2="448" y1="2208" y2="2208" x1="416" />
        </branch>
        <instance x="160" y="2304" name="XLXI_117" orien="R0" />
        <branch name="WR">
            <wire x2="160" y1="2240" y2="2240" x1="128" />
        </branch>
        <iomarker fontsize="28" x="128" y="2240" name="WR" orien="R180" />
        <branch name="MEM_B800">
            <wire x2="144" y1="2080" y2="2176" x1="144" />
            <wire x2="160" y1="2176" y2="2176" x1="144" />
            <wire x2="272" y1="2080" y2="2080" x1="144" />
            <wire x2="272" y1="1984" y2="1984" x1="192" />
            <wire x2="272" y1="1984" y2="2080" x1="272" />
        </branch>
        <iomarker fontsize="28" x="192" y="1984" name="MEM_B800" orien="R180" />
    </sheet>
</drawing>