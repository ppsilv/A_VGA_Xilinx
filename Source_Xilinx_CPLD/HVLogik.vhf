--------------------------------------------------------------------------------
-- Copyright (c) 1995-2006 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 8.2i
--  \   \         Application : sch2vhdl
--  /   /         Filename : HVLogik.vhf
-- /___/   /\     Timestamp : 09/16/2006 01:00:06
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\bin\nt\sch2vhdl.exe -intstyle ise -family xc9500 -flat -suppress -w "C:/Dokumente und Einstellungen/Besitzer/Desktop/Source_Xilinx_CPLD/HVLogik.sch" HVLogik.vhf
--Design Name: HVLogik
--Device: xc9500
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FTCE_MXILINX_HVLogik is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          T   : in    std_logic; 
          Q   : out   std_logic);
end FTCE_MXILINX_HVLogik;

architecture BEHAVIORAL of FTCE_MXILINX_HVLogik is
   attribute BOX_TYPE       : string ;
   signal TQ      : std_logic;
   signal Q_DUMMY : std_logic;
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component FDCE
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
begin
   Q <= Q_DUMMY;
   I_36_32 : XOR2
      port map (I0=>T,
                I1=>Q_DUMMY,
                O=>TQ);
   
   I_36_35 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>TQ,
                Q=>Q_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CB8CE_MXILINX_HVLogik is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          CEO : out   std_logic; 
          Q   : out   std_logic_vector (7 downto 0); 
          TC  : out   std_logic);
end CB8CE_MXILINX_HVLogik;

architecture BEHAVIORAL of CB8CE_MXILINX_HVLogik is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal T2       : std_logic;
   signal T3       : std_logic;
   signal T4       : std_logic;
   signal T5       : std_logic;
   signal T6       : std_logic;
   signal T7       : std_logic;
   signal XLXN_1   : std_logic;
   signal Q_DUMMY  : std_logic_vector (7 downto 0);
   signal TC_DUMMY : std_logic;
   component AND5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component FTCE_MXILINX_HVLogik
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   attribute HU_SET of Q0 : label is "Q0_6";
   attribute HU_SET of Q1 : label is "Q1_7";
   attribute HU_SET of Q2 : label is "Q2_3";
   attribute HU_SET of Q3 : label is "Q3_4";
   attribute HU_SET of Q4 : label is "Q4_5";
   attribute HU_SET of Q5 : label is "Q5_2";
   attribute HU_SET of Q6 : label is "Q6_1";
   attribute HU_SET of Q7 : label is "Q7_0";
begin
   Q(7 downto 0) <= Q_DUMMY(7 downto 0);
   TC <= TC_DUMMY;
   I_36_1 : AND5
      port map (I0=>Q_DUMMY(7),
                I1=>Q_DUMMY(6),
                I2=>Q_DUMMY(5),
                I3=>Q_DUMMY(4),
                I4=>T4,
                O=>TC_DUMMY);
   
   I_36_2 : AND2
      port map (I0=>Q_DUMMY(4),
                I1=>T4,
                O=>T5);
   
   I_36_11 : AND3
      port map (I0=>Q_DUMMY(5),
                I1=>Q_DUMMY(4),
                I2=>T4,
                O=>T6);
   
   I_36_15 : AND4
      port map (I0=>Q_DUMMY(3),
                I1=>Q_DUMMY(2),
                I2=>Q_DUMMY(1),
                I3=>Q_DUMMY(0),
                O=>T4);
   
   I_36_16 : VCC
      port map (P=>XLXN_1);
   
   I_36_24 : AND2
      port map (I0=>Q_DUMMY(1),
                I1=>Q_DUMMY(0),
                O=>T2);
   
   I_36_26 : AND3
      port map (I0=>Q_DUMMY(2),
                I1=>Q_DUMMY(1),
                I2=>Q_DUMMY(0),
                O=>T3);
   
   I_36_28 : AND4
      port map (I0=>Q_DUMMY(6),
                I1=>Q_DUMMY(5),
                I2=>Q_DUMMY(4),
                I3=>T4,
                O=>T7);
   
   I_36_31 : AND2
      port map (I0=>CE,
                I1=>TC_DUMMY,
                O=>CEO);
   
   Q0 : FTCE_MXILINX_HVLogik
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>XLXN_1,
                Q=>Q_DUMMY(0));
   
   Q1 : FTCE_MXILINX_HVLogik
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>Q_DUMMY(0),
                Q=>Q_DUMMY(1));
   
   Q2 : FTCE_MXILINX_HVLogik
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T2,
                Q=>Q_DUMMY(2));
   
   Q3 : FTCE_MXILINX_HVLogik
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T3,
                Q=>Q_DUMMY(3));
   
   Q4 : FTCE_MXILINX_HVLogik
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T4,
                Q=>Q_DUMMY(4));
   
   Q5 : FTCE_MXILINX_HVLogik
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T5,
                Q=>Q_DUMMY(5));
   
   Q6 : FTCE_MXILINX_HVLogik
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T6,
                Q=>Q_DUMMY(6));
   
   Q7 : FTCE_MXILINX_HVLogik
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T7,
                Q=>Q_DUMMY(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity HVLogik is
   port ( CLK_IN : in    std_logic; 
          Addr   : out   std_logic_vector (15 downto 0); 
          HSync  : out   std_logic; 
          VBlank : out   std_logic; 
          VSync  : out   std_logic);
end HVLogik;

architecture BEHAVIORAL of HVLogik is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_318    : std_logic;
   signal XLXN_413    : std_logic;
   signal XLXN_414    : std_logic;
   signal Addr_DUMMY  : std_logic_vector (15 downto 0);
   signal HSync_DUMMY : std_logic;
   signal VSync_DUMMY : std_logic;
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component AND5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
   component NOR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR3 : component is "BLACK_BOX";
   
   component hcounter
      port ( VSync_I   : in    std_logic; 
             LineCount : out   std_logic_vector (7 downto 0); 
             HSync     : out   std_logic);
   end component;
   
   component CB8CE_MXILINX_HVLogik
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (7 downto 0); 
             TC  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_131 : label is "XLXI_131_8";
begin
   Addr(15 downto 0) <= Addr_DUMMY(15 downto 0);
   HSync <= HSync_DUMMY;
   VSync <= VSync_DUMMY;
   XLXI_23 : VCC
      port map (P=>XLXN_413);
   
   XLXI_27 : GND
      port map (G=>XLXN_318);
   
   XLXI_104 : AND5
      port map (I0=>Addr_DUMMY(7),
                I1=>Addr_DUMMY(6),
                I2=>Addr_DUMMY(5),
                I3=>Addr_DUMMY(4),
                I4=>Addr_DUMMY(3),
                O=>VSync_DUMMY);
   
   XLXI_109 : NOR3
      port map (I0=>Addr_DUMMY(7),
                I1=>Addr_DUMMY(6),
                I2=>Addr_DUMMY(5),
                O=>XLXN_414);
   
   XLXI_127 : hcounter
      port map (VSync_I=>VSync_DUMMY,
                HSync=>HSync_DUMMY,
                LineCount(7 downto 0)=>Addr_Dummy(15 downto 8));
   
   XLXI_131 : CB8CE_MXILINX_HVLogik
      port map (C=>CLK_IN,
                CE=>XLXN_413,
                CLR=>XLXN_318,
                CEO=>open,
                Q(7 downto 0)=>Addr_Dummy(7 downto 0),
                TC=>open);
   
   XLXI_133 : NOR3
      port map (I0=>HSync_DUMMY,
                I1=>VSync_DUMMY,
                I2=>XLXN_414,
                O=>VBlank);
   
end BEHAVIORAL;


