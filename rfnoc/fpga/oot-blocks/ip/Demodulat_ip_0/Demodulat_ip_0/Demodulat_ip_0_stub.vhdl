-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1_AR76780 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Tue Nov 25 15:06:14 2025
-- Host        : newcom-upsilon running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/peter/git/jcns-26/vivado/test_xci/project_1.gen/sources_1/ip/Demodulat_ip_0/Demodulat_ip_0_stub.vhdl
-- Design      : Demodulat_ip_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Demodulat_ip_0 is
  Port ( 
    IPCORE_CLK : in STD_LOGIC;
    IPCORE_RESETN : in STD_LOGIC;
    AXIS_A_Master_TREADY : in STD_LOGIC;
    AXIS_A_Slave_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    AXIS_A_Slave_TVALID : in STD_LOGIC;
    AXIS_A_Master_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXIS_A_Master_TVALID : out STD_LOGIC;
    AXIS_A_Master_TLAST : out STD_LOGIC;
    AXIS_A_Slave_TREADY : out STD_LOGIC
  );

end Demodulat_ip_0;

architecture stub of Demodulat_ip_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "IPCORE_CLK,IPCORE_RESETN,AXIS_A_Master_TREADY,AXIS_A_Slave_TDATA[63:0],AXIS_A_Slave_TVALID,AXIS_A_Master_TDATA[31:0],AXIS_A_Master_TVALID,AXIS_A_Master_TLAST,AXIS_A_Slave_TREADY";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Demodulat_ip,Vivado 2021.1_AR76780";
begin
end;
