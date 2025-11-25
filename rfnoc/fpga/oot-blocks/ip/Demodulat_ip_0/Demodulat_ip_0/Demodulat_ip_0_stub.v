// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1_AR76780 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Nov 25 15:06:14 2025
// Host        : newcom-upsilon running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/peter/git/jcns-26/vivado/test_xci/project_1.gen/sources_1/ip/Demodulat_ip_0/Demodulat_ip_0_stub.v
// Design      : Demodulat_ip_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Demodulat_ip,Vivado 2021.1_AR76780" *)
module Demodulat_ip_0(IPCORE_CLK, IPCORE_RESETN, 
  AXIS_A_Master_TREADY, AXIS_A_Slave_TDATA, AXIS_A_Slave_TVALID, AXIS_A_Master_TDATA, 
  AXIS_A_Master_TVALID, AXIS_A_Master_TLAST, AXIS_A_Slave_TREADY)
/* synthesis syn_black_box black_box_pad_pin="IPCORE_CLK,IPCORE_RESETN,AXIS_A_Master_TREADY,AXIS_A_Slave_TDATA[63:0],AXIS_A_Slave_TVALID,AXIS_A_Master_TDATA[31:0],AXIS_A_Master_TVALID,AXIS_A_Master_TLAST,AXIS_A_Slave_TREADY" */;
  input IPCORE_CLK;
  input IPCORE_RESETN;
  input AXIS_A_Master_TREADY;
  input [63:0]AXIS_A_Slave_TDATA;
  input AXIS_A_Slave_TVALID;
  output [31:0]AXIS_A_Master_TDATA;
  output AXIS_A_Master_TVALID;
  output AXIS_A_Master_TLAST;
  output AXIS_A_Slave_TREADY;
endmodule
