--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : graka.vhf
-- /___/   /\     Timestamp : 12/04/2024 17:59:53
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500 -flat -suppress -vhdl /home/pdsilva/Projects/A_VGA_Xilinx1/graka/graka.vhf -w /home/pdsilva/Projects/A_VGA_Xilinx1/graka/graka.sch
--Design Name: graka
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

entity FD_MXILINX_graka is
   generic( INIT : bit :=  '0');
   port ( C : in    std_logic; 
          D : in    std_logic; 
          Q : out   std_logic);
end FD_MXILINX_graka;

architecture BEHAVIORAL of FD_MXILINX_graka is
   attribute BOX_TYPE   : string ;
   signal XLXN_4 : std_logic;
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FDCP
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             PRE : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCP : component is "BLACK_BOX";
   
begin
   I_36_43 : GND
      port map (G=>XLXN_4);
   
   U0 : FDCP
   generic map( INIT => INIT)
      port map (C=>C,
                CLR=>XLXN_4,
                D=>D,
                PRE=>XLXN_4,
                Q=>Q);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FD8_MXILINX_graka is
   port ( C : in    std_logic; 
          D : in    std_logic_vector (7 downto 0); 
          Q : out   std_logic_vector (7 downto 0));
end FD8_MXILINX_graka;

architecture BEHAVIORAL of FD8_MXILINX_graka is
   attribute HU_SET     : string ;
   component FD_MXILINX_graka
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   
   attribute HU_SET of Q0 : label is "Q0_4";
   attribute HU_SET of Q1 : label is "Q1_5";
   attribute HU_SET of Q2 : label is "Q2_6";
   attribute HU_SET of Q3 : label is "Q3_7";
   attribute HU_SET of Q4 : label is "Q4_2";
   attribute HU_SET of Q5 : label is "Q5_3";
   attribute HU_SET of Q6 : label is "Q6_1";
   attribute HU_SET of Q7 : label is "Q7_0";
begin
   Q0 : FD_MXILINX_graka
      port map (C=>C,
                D=>D(0),
                Q=>Q(0));
   
   Q1 : FD_MXILINX_graka
      port map (C=>C,
                D=>D(1),
                Q=>Q(1));
   
   Q2 : FD_MXILINX_graka
      port map (C=>C,
                D=>D(2),
                Q=>Q(2));
   
   Q3 : FD_MXILINX_graka
      port map (C=>C,
                D=>D(3),
                Q=>Q(3));
   
   Q4 : FD_MXILINX_graka
      port map (C=>C,
                D=>D(4),
                Q=>Q(4));
   
   Q5 : FD_MXILINX_graka
      port map (C=>C,
                D=>D(5),
                Q=>Q(5));
   
   Q6 : FD_MXILINX_graka
      port map (C=>C,
                D=>D(6),
                Q=>Q(6));
   
   Q7 : FD_MXILINX_graka
      port map (C=>C,
                D=>D(7),
                Q=>Q(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity BUFE8_MXILINX_graka is
   port ( E : in    std_logic; 
          I : in    std_logic_vector (7 downto 0); 
          O : out   std_logic_vector (7 downto 0));
end BUFE8_MXILINX_graka;

architecture BEHAVIORAL of BUFE8_MXILINX_graka is
   attribute BOX_TYPE   : string ;
   component BUFE
      port ( E : in    std_logic; 
             I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUFE : component is "BLACK_BOX";
   
begin
   I_36_30 : BUFE
      port map (E=>E,
                I=>I(0),
                O=>O(0));
   
   I_36_31 : BUFE
      port map (E=>E,
                I=>I(1),
                O=>O(1));
   
   I_36_32 : BUFE
      port map (E=>E,
                I=>I(2),
                O=>O(2));
   
   I_36_33 : BUFE
      port map (E=>E,
                I=>I(3),
                O=>O(3));
   
   I_36_34 : BUFE
      port map (E=>E,
                I=>I(7),
                O=>O(7));
   
   I_36_35 : BUFE
      port map (E=>E,
                I=>I(6),
                O=>O(6));
   
   I_36_36 : BUFE
      port map (E=>E,
                I=>I(5),
                O=>O(5));
   
   I_36_37 : BUFE
      port map (E=>E,
                I=>I(4),
                O=>O(4));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FDC_MXILINX_graka is
   generic( INIT : bit :=  '0');
   port ( C   : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic; 
          Q   : out   std_logic);
end FDC_MXILINX_graka;

architecture BEHAVIORAL of FDC_MXILINX_graka is
   attribute BOX_TYPE   : string ;
   signal XLXN_5 : std_logic;
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FDCP
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             PRE : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCP : component is "BLACK_BOX";
   
begin
   I_36_55 : GND
      port map (G=>XLXN_5);
   
   U0 : FDCP
   generic map( INIT => INIT)
      port map (C=>C,
                CLR=>CLR,
                D=>D,
                PRE=>XLXN_5,
                Q=>Q);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FTCE_MXILINX_graka is
   generic( INIT : bit :=  '0');
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          T   : in    std_logic; 
          Q   : out   std_logic);
end FTCE_MXILINX_graka;

architecture BEHAVIORAL of FTCE_MXILINX_graka is
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

entity CB4CE_MXILINX_graka is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          CEO : out   std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic; 
          TC  : out   std_logic);
end CB4CE_MXILINX_graka;

architecture BEHAVIORAL of CB4CE_MXILINX_graka is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal T2       : std_logic;
   signal T3       : std_logic;
   signal XLXN_1   : std_logic;
   signal Q0_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal Q2_DUMMY : std_logic;
   signal Q3_DUMMY : std_logic;
   signal TC_DUMMY : std_logic;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
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
   
   component FTCE_MXILINX_graka
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   attribute HU_SET of U0 : label is "U0_8";
   attribute HU_SET of U1 : label is "U1_9";
   attribute HU_SET of U2 : label is "U2_10";
   attribute HU_SET of U3 : label is "U3_11";
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   Q2 <= Q2_DUMMY;
   Q3 <= Q3_DUMMY;
   TC <= TC_DUMMY;
   I_36_31 : AND4
      port map (I0=>Q3_DUMMY,
                I1=>Q2_DUMMY,
                I2=>Q1_DUMMY,
                I3=>Q0_DUMMY,
                O=>TC_DUMMY);
   
   I_36_32 : AND3
      port map (I0=>Q2_DUMMY,
                I1=>Q1_DUMMY,
                I2=>Q0_DUMMY,
                O=>T3);
   
   I_36_33 : AND2
      port map (I0=>Q1_DUMMY,
                I1=>Q0_DUMMY,
                O=>T2);
   
   I_36_58 : VCC
      port map (P=>XLXN_1);
   
   I_36_67 : AND2
      port map (I0=>CE,
                I1=>TC_DUMMY,
                O=>CEO);
   
   U0 : FTCE_MXILINX_graka
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>XLXN_1,
                Q=>Q0_DUMMY);
   
   U1 : FTCE_MXILINX_graka
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>Q0_DUMMY,
                Q=>Q1_DUMMY);
   
   U2 : FTCE_MXILINX_graka
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T2,
                Q=>Q2_DUMMY);
   
   U3 : FTCE_MXILINX_graka
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                T=>T3,
                Q=>Q3_DUMMY);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity D2_4E_MXILINX_graka is
   port ( A0 : in    std_logic; 
          A1 : in    std_logic; 
          E  : in    std_logic; 
          D0 : out   std_logic; 
          D1 : out   std_logic; 
          D2 : out   std_logic; 
          D3 : out   std_logic);
end D2_4E_MXILINX_graka;

architecture BEHAVIORAL of D2_4E_MXILINX_graka is
   attribute BOX_TYPE   : string ;
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
begin
   I_36_30 : AND3
      port map (I0=>A1,
                I1=>A0,
                I2=>E,
                O=>D3);
   
   I_36_31 : AND3B1
      port map (I0=>A0,
                I1=>A1,
                I2=>E,
                O=>D2);
   
   I_36_32 : AND3B1
      port map (I0=>A1,
                I1=>A0,
                I2=>E,
                O=>D1);
   
   I_36_33 : AND3B2
      port map (I0=>A0,
                I1=>A1,
                I2=>E,
                O=>D0);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity OBUFE_MXILINX_graka is
   port ( E : in    std_logic; 
          I : in    std_logic; 
          O : out   std_logic);
end OBUFE_MXILINX_graka;

architecture BEHAVIORAL of OBUFE_MXILINX_graka is
   attribute BOX_TYPE   : string ;
   signal T : std_logic;
   component OBUFT
      port ( I : in    std_logic; 
             T : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of OBUFT : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   I_36_10 : OBUFT
      port map (I=>I,
                T=>T,
                O=>O);
   
   I_36_12 : INV
      port map (I=>E,
                O=>T);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity rgb_latch_MUSER_graka is
   port ( E     : in    std_logic; 
          G     : in    std_logic; 
          RGB_I : in    std_logic_vector (7 downto 0); 
          RGB_O : out   std_logic_vector (5 downto 0));
end rgb_latch_MUSER_graka;

architecture BEHAVIORAL of rgb_latch_MUSER_graka is
   attribute HU_SET     : string ;
   signal XLXN_8  : std_logic;
   signal XLXN_9  : std_logic;
   signal XLXN_10 : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_14 : std_logic;
   component OBUFE_MXILINX_graka
      port ( E : in    std_logic; 
             I : in    std_logic; 
             O : out   std_logic);
   end component;
   
   component FD_MXILINX_graka
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_12";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_13";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_17";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_14";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_15";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_16";
   attribute HU_SET of XLXI_25 : label is "XLXI_25_18";
   attribute HU_SET of XLXI_26 : label is "XLXI_26_19";
   attribute HU_SET of XLXI_27 : label is "XLXI_27_20";
   attribute HU_SET of XLXI_28 : label is "XLXI_28_21";
   attribute HU_SET of XLXI_29 : label is "XLXI_29_22";
   attribute HU_SET of XLXI_30 : label is "XLXI_30_23";
   attribute HU_SET of XLXI_43 : label is "XLXI_43_24";
   attribute HU_SET of XLXI_57 : label is "XLXI_57_25";
begin
   XLXI_1 : OBUFE_MXILINX_graka
      port map (E=>E,
                I=>XLXN_13,
                O=>RGB_O(0));
   
   XLXI_2 : OBUFE_MXILINX_graka
      port map (E=>E,
                I=>XLXN_14,
                O=>RGB_O(1));
   
   XLXI_3 : OBUFE_MXILINX_graka
      port map (E=>E,
                I=>XLXN_11,
                O=>RGB_O(2));
   
   XLXI_4 : OBUFE_MXILINX_graka
      port map (E=>E,
                I=>XLXN_10,
                O=>RGB_O(3));
   
   XLXI_5 : OBUFE_MXILINX_graka
      port map (E=>E,
                I=>XLXN_9,
                O=>RGB_O(4));
   
   XLXI_6 : OBUFE_MXILINX_graka
      port map (E=>E,
                I=>XLXN_8,
                O=>RGB_O(5));
   
   XLXI_25 : FD_MXILINX_graka
      port map (C=>G,
                D=>RGB_I(0),
                Q=>XLXN_13);
   
   XLXI_26 : FD_MXILINX_graka
      port map (C=>G,
                D=>RGB_I(1),
                Q=>XLXN_14);
   
   XLXI_27 : FD_MXILINX_graka
      port map (C=>G,
                D=>RGB_I(2),
                Q=>XLXN_11);
   
   XLXI_28 : FD_MXILINX_graka
      port map (C=>G,
                D=>RGB_I(3),
                Q=>XLXN_10);
   
   XLXI_29 : FD_MXILINX_graka
      port map (C=>G,
                D=>RGB_I(4),
                Q=>XLXN_9);
   
   XLXI_30 : FD_MXILINX_graka
      port map (C=>G,
                D=>RGB_I(5),
                Q=>XLXN_8);
   
   XLXI_43 : FD_MXILINX_graka
      port map (C=>G,
                D=>RGB_I(6),
                Q=>open);
   
   XLXI_57 : FD_MXILINX_graka
      port map (C=>G,
                D=>RGB_I(7),
                Q=>open);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity M2_1_MXILINX_graka is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_graka;

architecture BEHAVIORAL of M2_1_MXILINX_graka is
   attribute BOX_TYPE   : string ;
   signal M0 : std_logic;
   signal M1 : std_logic;
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   I_36_7 : AND2B1
      port map (I0=>S0,
                I1=>D0,
                O=>M0);
   
   I_36_8 : OR2
      port map (I0=>M1,
                I1=>M0,
                O=>O);
   
   I_36_9 : AND2
      port map (I0=>D1,
                I1=>S0,
                O=>M1);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity addrmux_MUSER_graka is
   port ( Addr0  : in    std_logic_vector (7 downto 0); 
          Addr1  : in    std_logic_vector (7 downto 0); 
          S      : in    std_logic; 
          Addr_O : out   std_logic_vector (7 downto 0));
end addrmux_MUSER_graka;

architecture BEHAVIORAL of addrmux_MUSER_graka is
   attribute HU_SET     : string ;
   component M2_1_MXILINX_graka
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_2 : label is "XLXI_2_26";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_27";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_28";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_29";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_30";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_31";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_32";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_33";
begin
   XLXI_2 : M2_1_MXILINX_graka
      port map (D0=>Addr0(0),
                D1=>Addr1(0),
                S0=>S,
                O=>Addr_O(0));
   
   XLXI_3 : M2_1_MXILINX_graka
      port map (D0=>Addr0(1),
                D1=>Addr1(1),
                S0=>S,
                O=>Addr_O(1));
   
   XLXI_4 : M2_1_MXILINX_graka
      port map (D0=>Addr0(2),
                D1=>Addr1(2),
                S0=>S,
                O=>Addr_O(2));
   
   XLXI_5 : M2_1_MXILINX_graka
      port map (D0=>Addr0(3),
                D1=>Addr1(3),
                S0=>S,
                O=>Addr_O(3));
   
   XLXI_6 : M2_1_MXILINX_graka
      port map (D0=>Addr0(4),
                D1=>Addr1(4),
                S0=>S,
                O=>Addr_O(4));
   
   XLXI_7 : M2_1_MXILINX_graka
      port map (D0=>Addr0(5),
                D1=>Addr1(5),
                S0=>S,
                O=>Addr_O(5));
   
   XLXI_8 : M2_1_MXILINX_graka
      port map (D0=>Addr0(6),
                D1=>Addr1(6),
                S0=>S,
                O=>Addr_O(6));
   
   XLXI_9 : M2_1_MXILINX_graka
      port map (D0=>Addr0(7),
                D1=>Addr1(7),
                S0=>S,
                O=>Addr_O(7));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity addrmux16_MUSER_graka is
   port ( Addr0 : in    std_logic_vector (15 downto 0); 
          Addr1 : in    std_logic_vector (15 downto 0); 
          S     : in    std_logic; 
          AddrO : out   std_logic_vector (15 downto 0));
end addrmux16_MUSER_graka;

architecture BEHAVIORAL of addrmux16_MUSER_graka is
   component addrmux_MUSER_graka
      port ( Addr0  : in    std_logic_vector (7 downto 0); 
             Addr1  : in    std_logic_vector (7 downto 0); 
             S      : in    std_logic; 
             Addr_O : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_1 : addrmux_MUSER_graka
      port map (Addr0(7 downto 0)=>Addr0(7 downto 0),
                Addr1(7 downto 0)=>Addr1(7 downto 0),
                S=>S,
                Addr_O(7 downto 0)=>AddrO(7 downto 0));
   
   XLXI_2 : addrmux_MUSER_graka
      port map (Addr0(7 downto 0)=>Addr0(15 downto 8),
                Addr1(7 downto 0)=>Addr1(15 downto 8),
                S=>S,
                Addr_O(7 downto 0)=>AddrO(15 downto 8));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity graka is
   port ( ADDRH      : in    std_logic_vector (15 downto 8); 
          ADDRL      : in    std_logic_vector (7 downto 0); 
          A0         : in    std_logic; 
          A1         : in    std_logic; 
          CLK_I      : in    std_logic; 
          DATA       : in    std_logic_vector (7 downto 0); 
          WR         : in    std_logic; 
          AddrBus    : out   std_logic_vector (15 downto 0); 
          Addr15_INV : out   std_logic; 
          HSync      : out   std_logic; 
          RD_INV     : out   std_logic; 
          RGB_O      : out   std_logic_vector (5 downto 0); 
          VSync      : out   std_logic; 
          WR_INV     : out   std_logic; 
          ExMemData  : inout std_logic_vector (7 downto 0));
end graka;

architecture BEHAVIORAL of graka is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal A             : std_logic_vector (15 downto 0);
   signal XLXN_155      : std_logic;
   signal XLXN_165      : std_logic;
   signal XLXN_214      : std_logic;
   signal XLXN_277      : std_logic;
   signal XLXN_290      : std_logic;
   signal XLXN_311      : std_logic;
   signal XLXN_312      : std_logic;
   signal XLXN_322      : std_logic;
   signal XLXN_325      : std_logic;
   signal XLXN_326      : std_logic;
   signal XLXN_329      : std_logic;
   signal XLXN_330      : std_logic;
   signal XLXN_363      : std_logic_vector (15 downto 0);
   signal XLXN_378      : std_logic;
   signal XLXN_379      : std_logic;
   signal AddrBus_DUMMY : std_logic_vector (15 downto 0);
   component rgb_latch_MUSER_graka
      port ( E     : in    std_logic; 
             G     : in    std_logic; 
             RGB_I : in    std_logic_vector (7 downto 0); 
             RGB_O : out   std_logic_vector (5 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component D2_4E_MXILINX_graka
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic);
   end component;
   
   component addrmux16_MUSER_graka
      port ( Addr0 : in    std_logic_vector (15 downto 0); 
             Addr1 : in    std_logic_vector (15 downto 0); 
             S     : in    std_logic; 
             AddrO : out   std_logic_vector (15 downto 0));
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component CB4CE_MXILINX_graka
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component FDC_MXILINX_graka
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component BUFE8_MXILINX_graka
      port ( E : in    std_logic; 
             I : in    std_logic_vector (7 downto 0); 
             O : out   std_logic_vector (7 downto 0));
   end component;
   
   component FD8_MXILINX_graka
      port ( C : in    std_logic; 
             D : in    std_logic_vector (7 downto 0); 
             Q : out   std_logic_vector (7 downto 0));
   end component;
   
   component hvlogik
      port ( CLK_IN : in    std_logic; 
             VSync  : out   std_logic; 
             HSync  : out   std_logic; 
             VBlank : out   std_logic; 
             Addr   : out   std_logic_vector (15 downto 0));
   end component;
   
   attribute HU_SET of XLXI_44 : label is "XLXI_44_35";
   attribute HU_SET of XLXI_67 : label is "XLXI_67_34";
   attribute HU_SET of XLXI_99 : label is "XLXI_99_36";
   attribute HU_SET of XLXI_106 : label is "XLXI_106_37";
   attribute HU_SET of XLXI_109 : label is "XLXI_109_38";
   attribute HU_SET of XLXI_110 : label is "XLXI_110_39";
   attribute HU_SET of XLXI_111 : label is "XLXI_111_40";
begin
   AddrBus(15 downto 0) <= AddrBus_DUMMY(15 downto 0);
   XLXI_2 : rgb_latch_MUSER_graka
      port map (E=>XLXN_214,
                G=>XLXN_277,
                RGB_I(7 downto 0)=>ExMemData(7 downto 0),
                RGB_O(5 downto 0)=>RGB_O(5 downto 0));
   
   XLXI_16 : INV
      port map (I=>AddrBus_DUMMY(15),
                O=>Addr15_INV);
   
   XLXI_18 : INV
      port map (I=>XLXN_290,
                O=>RD_INV);
   
   XLXI_26 : VCC
      port map (P=>XLXN_155);
   
   XLXI_44 : D2_4E_MXILINX_graka
      port map (A0=>A0,
                A1=>A1,
                E=>WR,
                D0=>open,
                D1=>open,
                D2=>open,
                D3=>open);
   
   XLXI_55 : addrmux16_MUSER_graka
      port map (Addr0(15 downto 0)=>A(15 downto 0),
                Addr1(15 downto 0)=>XLXN_363(15 downto 0),
                S=>XLXN_325,
                AddrO(15 downto 0)=>AddrBus_DUMMY(15 downto 0));
   
   XLXI_67 : D2_4E_MXILINX_graka
      port map (A0=>XLXN_311,
                A1=>XLXN_312,
                E=>XLXN_155,
                D0=>XLXN_165,
                D1=>XLXN_277,
                D2=>XLXN_329,
                D3=>XLXN_322);
   
   XLXI_73 : INV
      port map (I=>XLXN_326,
                O=>WR_INV);
   
   XLXI_92 : OR2
      port map (I0=>XLXN_277,
                I1=>XLXN_165,
                O=>XLXN_290);
   
   XLXI_99 : CB4CE_MXILINX_graka
      port map (C=>CLK_I,
                CE=>XLXN_155,
                CLR=>XLXN_330,
                CEO=>open,
                Q0=>XLXN_311,
                Q1=>XLXN_312,
                Q2=>XLXN_330,
                Q3=>open,
                TC=>open);
   
   XLXI_106 : FDC_MXILINX_graka
      port map (C=>XLXN_329,
                CLR=>XLXN_322,
                D=>XLXN_379,
                Q=>XLXN_326);
   
   XLXI_108 : OR2
      port map (I0=>XLXN_322,
                I1=>XLXN_329,
                O=>XLXN_325);
   
   XLXI_109 : BUFE8_MXILINX_graka
      port map (E=>XLXN_326,
                I(7 downto 0)=>DATA(7 downto 0),
                O(7 downto 0)=>ExMemData(7 downto 0));
   
   XLXI_110 : FD8_MXILINX_graka
      port map (C=>XLXN_378,
                D(7 downto 0)=>ADDRL(7 downto 0),
                Q(7 downto 0)=>XLXN_363(7 downto 0));
   
   XLXI_111 : FD8_MXILINX_graka
      port map (C=>XLXN_378,
                D(7 downto 0)=>ADDRH(15 downto 8),
                Q(7 downto 0)=>XLXN_363(15 downto 8));
   
   XLXI_112 : hvlogik
      port map (CLK_IN=>XLXN_329,
                Addr(15 downto 0)=>A(15 downto 0),
                HSync=>HSync,
                VBlank=>XLXN_214,
                VSync=>VSync);
   
   XLXI_113 : INV
      port map (I=>WR,
                O=>XLXN_378);
   
   XLXI_116 : INV
      port map (I=>XLXN_378,
                O=>XLXN_379);
   
end BEHAVIORAL;


