--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Fri Oct 18 17:41:53 2024
--Host        : MSI running 64-bit major release  (build 9200)
--Command     : generate_target axi_becvip2_wrapper.bd
--Design      : axi_becvip2_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_becvip2_wrapper is
  port (
    aclk0 : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
end axi_becvip2_wrapper;

architecture STRUCTURE of axi_becvip2_wrapper is
  component axi_becvip2 is
  port (
    aclk0 : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  end component axi_becvip2;
begin
axi_becvip2_i: component axi_becvip2
     port map (
      aclk0 => aclk0,
      aresetn => aresetn
    );
end STRUCTURE;
