-- (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:ip:Demodulat_ip:1.0
-- IP Revision: 1000000

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Demodulat_ip_0 IS
  PORT (
    IPCORE_CLK : IN STD_LOGIC;
    IPCORE_RESETN : IN STD_LOGIC;
    AXIS_A_Master_TREADY : IN STD_LOGIC;
    AXIS_A_Slave_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    AXIS_A_Slave_TVALID : IN STD_LOGIC;
    AXIS_A_Master_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    AXIS_A_Master_TVALID : OUT STD_LOGIC;
    AXIS_A_Master_TLAST : OUT STD_LOGIC;
    AXIS_A_Slave_TREADY : OUT STD_LOGIC
  );
END Demodulat_ip_0;

ARCHITECTURE Demodulat_ip_0_arch OF Demodulat_ip_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Demodulat_ip_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Demodulat_ip IS
    PORT (
      IPCORE_CLK : IN STD_LOGIC;
      IPCORE_RESETN : IN STD_LOGIC;
      AXIS_A_Master_TREADY : IN STD_LOGIC;
      AXIS_A_Slave_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      AXIS_A_Slave_TVALID : IN STD_LOGIC;
      AXIS_A_Master_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      AXIS_A_Master_TVALID : OUT STD_LOGIC;
      AXIS_A_Master_TLAST : OUT STD_LOGIC;
      AXIS_A_Slave_TREADY : OUT STD_LOGIC
    );
  END COMPONENT Demodulat_ip;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Demodulat_ip_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF AXIS_A_Slave_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 AXIS_A_Slave TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF AXIS_A_Master_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 AXIS_A_Master TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF AXIS_A_Master_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 AXIS_A_Master TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF AXIS_A_Master_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 AXIS_A_Master TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF AXIS_A_Slave_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 AXIS_A_Slave TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF AXIS_A_Slave_TDATA: SIGNAL IS "XIL_INTERFACENAME AXIS_A_Slave, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF AXIS_A_Slave_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 AXIS_A_Slave TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF AXIS_A_Master_TREADY: SIGNAL IS "XIL_INTERFACENAME AXIS_A_Master, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF AXIS_A_Master_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 AXIS_A_Master TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF IPCORE_RESETN: SIGNAL IS "XIL_INTERFACENAME IPCORE_RESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF IPCORE_RESETN: SIGNAL IS "xilinx.com:signal:reset:1.0 IPCORE_RESETN RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF IPCORE_CLK: SIGNAL IS "XIL_INTERFACENAME IPCORE_CLK, ASSOCIATED_RESET IPCORE_RESETN, ASSOCIATED_BUSIF AXIS_A_Master:AXIS_A_Slave, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF IPCORE_CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 IPCORE_CLK CLK";
BEGIN
  U0 : Demodulat_ip
    PORT MAP (
      IPCORE_CLK => IPCORE_CLK,
      IPCORE_RESETN => IPCORE_RESETN,
      AXIS_A_Master_TREADY => AXIS_A_Master_TREADY,
      AXIS_A_Slave_TDATA => AXIS_A_Slave_TDATA,
      AXIS_A_Slave_TVALID => AXIS_A_Slave_TVALID,
      AXIS_A_Master_TDATA => AXIS_A_Master_TDATA,
      AXIS_A_Master_TVALID => AXIS_A_Master_TVALID,
      AXIS_A_Master_TLAST => AXIS_A_Master_TLAST,
      AXIS_A_Slave_TREADY => AXIS_A_Slave_TREADY
    );
END Demodulat_ip_0_arch;
