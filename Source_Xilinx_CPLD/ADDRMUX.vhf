--------------------------------------------------------------------------------
-- Copyright (c) 1995-2006 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 8.2i
--  \   \         Application : sch2vhdl
--  /   /         Filename : ADDRMUX.vhf
-- /___/   /\     Timestamp : 09/16/2006 01:00:09
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\bin\nt\sch2vhdl.exe -intstyle ise -family xc9500 -flat -suppress -w "C:/Dokumente und Einstellungen/Besitzer/Desktop/Source_Xilinx_CPLD/addrmux.sch" ADDRMUX.vhf
--Design Name: addrmux
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

entity M2_1_MXILINX_addrmux is
   port ( D0 : in    std_logic; 
          D1 : in    std_logic; 
          S0 : in    std_logic; 
          O  : out   std_logic);
end M2_1_MXILINX_addrmux;

architecture BEHAVIORAL of M2_1_MXILINX_addrmux is
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

entity addrmux is
   port ( Addr0  : in    std_logic_vector (7 downto 0); 
          Addr1  : in    std_logic_vector (7 downto 0); 
          S      : in    std_logic; 
          Addr_O : out   std_logic_vector (7 downto 0));
end addrmux;

architecture BEHAVIORAL of addrmux is
   attribute HU_SET     : string ;
   component M2_1_MXILINX_addrmux
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_2 : label is "XLXI_2_0";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_1";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_2";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_3";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_4";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_5";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_6";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_7";
begin
   XLXI_2 : M2_1_MXILINX_addrmux
      port map (D0=>Addr0(0),
                D1=>Addr1(0),
                S0=>S,
                O=>Addr_O(0));
   
   XLXI_3 : M2_1_MXILINX_addrmux
      port map (D0=>Addr0(1),
                D1=>Addr1(1),
                S0=>S,
                O=>Addr_O(1));
   
   XLXI_4 : M2_1_MXILINX_addrmux
      port map (D0=>Addr0(2),
                D1=>Addr1(2),
                S0=>S,
                O=>Addr_O(2));
   
   XLXI_5 : M2_1_MXILINX_addrmux
      port map (D0=>Addr0(3),
                D1=>Addr1(3),
                S0=>S,
                O=>Addr_O(3));
   
   XLXI_6 : M2_1_MXILINX_addrmux
      port map (D0=>Addr0(4),
                D1=>Addr1(4),
                S0=>S,
                O=>Addr_O(4));
   
   XLXI_7 : M2_1_MXILINX_addrmux
      port map (D0=>Addr0(5),
                D1=>Addr1(5),
                S0=>S,
                O=>Addr_O(5));
   
   XLXI_8 : M2_1_MXILINX_addrmux
      port map (D0=>Addr0(6),
                D1=>Addr1(6),
                S0=>S,
                O=>Addr_O(6));
   
   XLXI_9 : M2_1_MXILINX_addrmux
      port map (D0=>Addr0(7),
                D1=>Addr1(7),
                S0=>S,
                O=>Addr_O(7));
   
end BEHAVIORAL;


