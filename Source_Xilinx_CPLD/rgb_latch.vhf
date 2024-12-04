--------------------------------------------------------------------------------
-- Copyright (c) 1995-2006 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 8.2i
--  \   \         Application : sch2vhdl
--  /   /         Filename : rgb_latch.vhf
-- /___/   /\     Timestamp : 09/16/2006 01:00:09
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\bin\nt\sch2vhdl.exe -intstyle ise -family xc9500 -flat -suppress -w "C:/Dokumente und Einstellungen/Besitzer/Desktop/Source_Xilinx_CPLD/rgb_latch.sch" rgb_latch.vhf
--Design Name: rgb_latch
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

entity FD_MXILINX_rgb_latch is
   port ( C : in    std_logic; 
          D : in    std_logic; 
          Q : out   std_logic);
end FD_MXILINX_rgb_latch;

architecture BEHAVIORAL of FD_MXILINX_rgb_latch is
   attribute BOX_TYPE   : string ;
   signal XLXN_4 : std_logic;
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component FDCP
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

entity OBUFE_MXILINX_rgb_latch is
   port ( E : in    std_logic; 
          I : in    std_logic; 
          O : out   std_logic);
end OBUFE_MXILINX_rgb_latch;

architecture BEHAVIORAL of OBUFE_MXILINX_rgb_latch is
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

entity rgb_latch is
   port ( E     : in    std_logic; 
          G     : in    std_logic; 
          RGB_I : in    std_logic_vector (7 downto 0); 
          RGB_O : out   std_logic_vector (5 downto 0));
end rgb_latch;

architecture BEHAVIORAL of rgb_latch is
   attribute HU_SET     : string ;
   signal XLXN_8  : std_logic;
   signal XLXN_9  : std_logic;
   signal XLXN_10 : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_14 : std_logic;
   component OBUFE_MXILINX_rgb_latch
      port ( E : in    std_logic; 
             I : in    std_logic; 
             O : out   std_logic);
   end component;
   
   component FD_MXILINX_rgb_latch
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_1";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_5";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_2";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_3";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_4";
   attribute HU_SET of XLXI_25 : label is "XLXI_25_6";
   attribute HU_SET of XLXI_26 : label is "XLXI_26_7";
   attribute HU_SET of XLXI_27 : label is "XLXI_27_8";
   attribute HU_SET of XLXI_28 : label is "XLXI_28_9";
   attribute HU_SET of XLXI_29 : label is "XLXI_29_10";
   attribute HU_SET of XLXI_30 : label is "XLXI_30_11";
   attribute HU_SET of XLXI_43 : label is "XLXI_43_12";
   attribute HU_SET of XLXI_57 : label is "XLXI_57_13";
begin
   XLXI_1 : OBUFE_MXILINX_rgb_latch
      port map (E=>E,
                I=>XLXN_13,
                O=>RGB_O(0));
   
   XLXI_2 : OBUFE_MXILINX_rgb_latch
      port map (E=>E,
                I=>XLXN_14,
                O=>RGB_O(1));
   
   XLXI_3 : OBUFE_MXILINX_rgb_latch
      port map (E=>E,
                I=>XLXN_11,
                O=>RGB_O(2));
   
   XLXI_4 : OBUFE_MXILINX_rgb_latch
      port map (E=>E,
                I=>XLXN_10,
                O=>RGB_O(3));
   
   XLXI_5 : OBUFE_MXILINX_rgb_latch
      port map (E=>E,
                I=>XLXN_9,
                O=>RGB_O(4));
   
   XLXI_6 : OBUFE_MXILINX_rgb_latch
      port map (E=>E,
                I=>XLXN_8,
                O=>RGB_O(5));
   
   XLXI_25 : FD_MXILINX_rgb_latch
      port map (C=>G,
                D=>RGB_I(0),
                Q=>XLXN_13);
   
   XLXI_26 : FD_MXILINX_rgb_latch
      port map (C=>G,
                D=>RGB_I(1),
                Q=>XLXN_14);
   
   XLXI_27 : FD_MXILINX_rgb_latch
      port map (C=>G,
                D=>RGB_I(2),
                Q=>XLXN_11);
   
   XLXI_28 : FD_MXILINX_rgb_latch
      port map (C=>G,
                D=>RGB_I(3),
                Q=>XLXN_10);
   
   XLXI_29 : FD_MXILINX_rgb_latch
      port map (C=>G,
                D=>RGB_I(4),
                Q=>XLXN_9);
   
   XLXI_30 : FD_MXILINX_rgb_latch
      port map (C=>G,
                D=>RGB_I(5),
                Q=>XLXN_8);
   
   XLXI_43 : FD_MXILINX_rgb_latch
      port map (C=>G,
                D=>RGB_I(6),
                Q=>open);
   
   XLXI_57 : FD_MXILINX_rgb_latch
      port map (C=>G,
                D=>RGB_I(7),
                Q=>open);
   
end BEHAVIORAL;


