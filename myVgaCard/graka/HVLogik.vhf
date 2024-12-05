--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : HVLogik.vhf
-- /___/   /\     Timestamp : 12/04/2024 17:58:07
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500 -flat -suppress -vhdl /home/pdsilva/Projects/A_VGA_Xilinx1/graka/HVLogik.vhf -w /home/pdsilva/Projects/A_VGA_Xilinx1/graka/HVLogik.sch
--Design Name: HVLogik
--Device: xc9500
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FTCE_MXILINX_HVLogik is
   generic( INIT : bit :=  '0');
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
      generic( INIT : bit :=  '0');
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
   generic map( INIT => INIT)
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
      generic( INIT : bit :=  '0');
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

entity AND8_MXILINX_HVLogik is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          I6 : in    std_logic; 
          I7 : in    std_logic; 
          O  : out   std_logic);
end AND8_MXILINX_HVLogik;

architecture BEHAVIORAL of AND8_MXILINX_HVLogik is
   attribute BOX_TYPE   : string ;
   signal S0 : std_logic;
   signal S1 : std_logic;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   I_36_110 : AND4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I3,
                O=>S0);
   
   I_36_127 : AND4
      port map (I0=>I4,
                I1=>I5,
                I2=>I6,
                I3=>I7,
                O=>S1);
   
   I_36_142 : AND2
      port map (I0=>S0,
                I1=>S1,
                O=>O);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity BUF8_MXILINX_HVLogik is
   port ( I : in    std_logic_vector (7 downto 0); 
          O : out   std_logic_vector (7 downto 0));
end BUF8_MXILINX_HVLogik;

architecture BEHAVIORAL of BUF8_MXILINX_HVLogik is
   attribute BOX_TYPE   : string ;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_1 : BUF
      port map (I=>I(0),
                O=>O(0));
   
   XLXI_2 : BUF
      port map (I=>I(1),
                O=>O(1));
   
   XLXI_3 : BUF
      port map (I=>I(2),
                O=>O(2));
   
   XLXI_4 : BUF
      port map (I=>I(3),
                O=>O(3));
   
   XLXI_5 : BUF
      port map (I=>I(4),
                O=>O(4));
   
   XLXI_6 : BUF
      port map (I=>I(5),
                O=>O(5));
   
   XLXI_7 : BUF
      port map (I=>I(6),
                O=>O(6));
   
   XLXI_8 : BUF
      port map (I=>I(7),
                O=>O(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CB16CE_MXILINX_HVLogik is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          CEO : out   std_logic; 
          Q   : out   std_logic_vector (15 downto 0); 
          TC  : out   std_logic);
end CB16CE_MXILINX_HVLogik;

architecture BEHAVIORAL of CB16CE_MXILINX_HVLogik is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal T2       : std_logic;
   signal T3       : std_logic;
   signal T4       : std_logic;
   signal T5       : std_logic;
   signal T6       : std_logic;
   signal T7       : std_logic;
   signal T8       : std_logic;
   signal T9       : std_logic;
   signal T10      : std_logic;
   signal T11      : std_logic;
   signal T12      : std_logic;
   signal T13      : std_logic;
   signal T14      : std_logic;
   signal T15      : std_logic;
   signal XLXN_1   : std_logic;
   signal Q_DUMMY  : std_logic_vector (15 downto 0);
   signal TC_DUMMY : std_logic;
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5 : component is "BLACK_BOX";
   
   component FTCE_MXILINX_HVLogik
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   attribute HU_SET of Q0 : label is "Q0_9";
   attribute HU_SET of Q1 : label is "Q1_8";
   attribute HU_SET of Q2 : label is "Q2_11";
   attribute HU_SET of Q3 : label is "Q3_10";
   attribute HU_SET of Q4 : label is "Q4_15";
   attribute HU_SET of Q5 : label is "Q5_14";
   attribute HU_SET of Q6 : label is "Q6_13";
   attribute HU_SET of Q7 : label is "Q7_12";
   attribute HU_SET of Q8 : label is "Q8_16";
   attribute HU_SET of Q9 : label is "Q9_17";
   attribute HU_SET of Q10 : label is "Q10_18";
   attribute HU_SET of Q11 : label is "Q11_19";
   attribute HU_SET of Q12 : label is "Q12_20";
   attribute HU_SET of Q13 : label is "Q13_21";
   attribute HU_SET of Q14 : label is "Q14_22";
   attribute HU_SET of Q15 : label is "Q15_23";
begin
   Q(15 downto 0) <= Q_DUMMY(15 downto 0);
   TC <= TC_DUMMY;
   I_36_3 : AND3
      port map (I0=>Q_DUMMY(2),
                I1=>Q_DUMMY(1),
                I2=>Q_DUMMY(0),
                O=>T3);
   
   I_36_4 : AND2
      port map (I0=>Q_DUMMY(1),
                I1=>Q_DUMMY(0),
                O=>T2);
   
   I_36_9 : VCC
      port map (P=>XLXN_1);
   
   I_36_10 : AND4
      port map (I0=>Q_DUMMY(3),
                I1=>Q_DUMMY(2),
                I2=>Q_DUMMY(1),
                I3=>Q_DUMMY(0),
                O=>T4);
   
   I_36_14 : AND5
      port map (I0=>Q_DUMMY(7),
                I1=>Q_DUMMY(6),
                I2=>Q_DUMMY(5),
                I3=>Q_DUMMY(4),
                I4=>T4,
                O=>T8);
   
   I_36_15 : AND2
      port map (I0=>Q_DUMMY(4),
                I1=>T4,
                O=>T5);
   
   I_36_19 : AND3
      port map (I0=>Q_DUMMY(5),
                I1=>Q_DUMMY(4),
                I2=>T4,
                O=>T6);
   
   I_36_21 : AND4
      port map (I0=>Q_DUMMY(6),
                I1=>Q_DUMMY(5),
                I2=>Q_DUMMY(4),
                I3=>T4,
                O=>T7);
   
   I_36_22 : AND5
      port map (I0=>Q_DUMMY(15),
                I1=>Q_DUMMY(14),
                I2=>Q_DUMMY(13),
                I3=>Q_DUMMY(12),
                I4=>T12,
                O=>TC_DUMMY);
   
   I_36_23 : AND2
      port map (I0=>Q_DUMMY(12),
                I1=>T12,
                O=>T13);
   
   I_36_24 : AND3
      port map (I0=>Q_DUMMY(13),
                I1=>Q_DUMMY(12),
                I2=>T12,
                O=>T14);
   
   I_36_25 : AND4
      port map (I0=>Q_DUMMY(14),
                I1=>Q_DUMMY(13),
                I2=>Q_DUMMY(12),
                I3=>T12,
                O=>T15);
   
   I_36_26 : AND4
      port map (I0=>Q_DUMMY(10),
                I1=>Q_DUMMY(9),
                I2=>Q_DUMMY(8),
                I3=>T8,
                O=>T11);
   
   I_36_27 : AND3
      port map (I0=>Q_DUMMY(9),
                I1=>Q_DUMMY(8),
                I2=>T8,
                O=>T10);
   
   I_36_28 : AND2
      port map (I0=>Q_DUMMY(8),
                I1=>T8,
                O=>T9);
   
   I_36_29 : AND5
      port map (I0=>Q_DUMMY(11),
                I1=>Q_DUMMY(10),
                I2=>Q_DUMMY(9),
                I3=>Q_DUMMY(8),
                I4=>T8,
                O=>T12);
   
   I_36_54 : AND2
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
   
   Q8 : FTCE_MXILINX_HVLogik
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T8,
                Q=>Q_DUMMY(8));
   
   Q9 : FTCE_MXILINX_HVLogik
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T9,
                Q=>Q_DUMMY(9));
   
   Q10 : FTCE_MXILINX_HVLogik
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T10,
                Q=>Q_DUMMY(10));
   
   Q11 : FTCE_MXILINX_HVLogik
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T11,
                Q=>Q_DUMMY(11));
   
   Q12 : FTCE_MXILINX_HVLogik
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T12,
                Q=>Q_DUMMY(12));
   
   Q13 : FTCE_MXILINX_HVLogik
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T13,
                Q=>Q_DUMMY(13));
   
   Q14 : FTCE_MXILINX_HVLogik
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T14,
                Q=>Q_DUMMY(14));
   
   Q15 : FTCE_MXILINX_HVLogik
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T15,
                Q=>Q_DUMMY(15));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity hcounter_MUSER_HVLogik is
   port ( VSync_I   : in    std_logic; 
          HSync     : out   std_logic; 
          LineCount : out   std_logic_vector (7 downto 0));
end hcounter_MUSER_HVLogik;

architecture BEHAVIORAL of hcounter_MUSER_HVLogik is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_2    : std_logic;
   signal XLXN_19   : std_logic_vector (15 downto 0);
   signal XLXN_32   : std_logic;
   component CB16CE_MXILINX_HVLogik
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q   : out   std_logic_vector (15 downto 0); 
             TC  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component BUF8_MXILINX_HVLogik
      port ( I : in    std_logic_vector (7 downto 0); 
             O : out   std_logic_vector (7 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component AND8_MXILINX_HVLogik
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             I7 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_24";
   attribute HU_SET of XLXI_10 : label is "XLXI_10_25";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_26";
begin
   XLXI_1 : CB16CE_MXILINX_HVLogik
      port map (C=>VSync_I,
                CE=>XLXN_2,
                CLR=>XLXN_32,
                CEO=>open,
                Q(15 downto 0)=>XLXN_19(15 downto 0),
                TC=>open);
   
   XLXI_2 : VCC
      port map (P=>XLXN_2);
   
   XLXI_10 : BUF8_MXILINX_HVLogik
      port map (I(7 downto 0)=>XLXN_19(8 downto 1),
                O(7 downto 0)=>LineCount(7 downto 0));
   
   XLXI_12 : GND
      port map (G=>XLXN_32);
   
   XLXI_13 : AND8_MXILINX_HVLogik
      port map (I0=>XLXN_19(8),
                I1=>XLXN_19(7),
                I2=>XLXN_19(6),
                I3=>XLXN_19(5),
                I4=>XLXN_19(4),
                I5=>XLXN_19(3),
                I6=>XLXN_19(2),
                I7=>XLXN_19(1),
                O=>HSync);
   
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
   
   component hcounter_MUSER_HVLogik
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
   
   attribute HU_SET of XLXI_131 : label is "XLXI_131_27";
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
   
   XLXI_127 : hcounter_MUSER_HVLogik
      port map (VSync_I=>VSync_DUMMY,
                HSync=>HSync_DUMMY,
                LineCount(7 downto 0)=>Addr_DUMMY(15 downto 8));
   
   XLXI_131 : CB8CE_MXILINX_HVLogik
      port map (C=>CLK_IN,
                CE=>XLXN_413,
                CLR=>XLXN_318,
                CEO=>open,
                Q(7 downto 0)=>Addr_DUMMY(7 downto 0),
                TC=>open);
   
   XLXI_133 : NOR3
      port map (I0=>HSync_DUMMY,
                I1=>VSync_DUMMY,
                I2=>XLXN_414,
                O=>VBlank);
   
end BEHAVIORAL;


