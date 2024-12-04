--------------------------------------------------------------------------------
-- Copyright (c) 1995-2006 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 8.2i
--  \   \         Application : sch2vhdl
--  /   /         Filename : AddrMux16.vhf
-- /___/   /\     Timestamp : 09/16/2006 01:00:06
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\bin\nt\sch2vhdl.exe -intstyle ise -family xc9500 -flat -suppress -w "C:/Dokumente und Einstellungen/Besitzer/Desktop/Source_Xilinx_CPLD/addrmux16.sch" AddrMux16.vhf
--Design Name: addrmux16
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

entity addrmux16 is
   port ( Addr0 : in    std_logic_vector (15 downto 0); 
          Addr1 : in    std_logic_vector (15 downto 0); 
          S     : in    std_logic; 
          AddrO : out   std_logic_vector (15 downto 0));
end addrmux16;

architecture BEHAVIORAL of addrmux16 is
   component addrmux
      port ( Addr0  : in    std_logic_vector (7 downto 0); 
             Addr1  : in    std_logic_vector (7 downto 0); 
             S      : in    std_logic; 
             Addr_O : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_1 : addrmux
      port map (Addr0(7 downto 0)=>Addr0(7 downto 0),
                Addr1(7 downto 0)=>Addr1(7 downto 0),
                S=>S,
                Addr_O(7 downto 0)=>AddrO(7 downto 0));
   
   XLXI_2 : addrmux
      port map (Addr0(7 downto 0)=>Addr0(15 downto 8),
                Addr1(7 downto 0)=>Addr1(15 downto 8),
                S=>S,
                Addr_O(7 downto 0)=>AddrO(15 downto 8));
   
end BEHAVIORAL;


