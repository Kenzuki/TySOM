-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: smunaut:user:mipi_csi:1.0
-- IP Revision: 15

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY TySOM_1_7Z030_mipi_csi_0 IS
  PORT (
    pad_data_p : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    pad_data_n : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    pad_clk_p : IN STD_LOGIC;
    pad_clk_n : IN STD_LOGIC;
    cam_dn0_se : IN STD_LOGIC;
    cam_dp0_se : IN STD_LOGIC;
    cam_dn1_se : IN STD_LOGIC;
    cam_dp1_se : IN STD_LOGIC;
    cam_cn_se : IN STD_LOGIC;
    cam_cp_se : IN STD_LOGIC;
    vaxi_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    vaxi_last : OUT STD_LOGIC;
    vaxi_sof : OUT STD_LOGIC;
    vaxi_valid : OUT STD_LOGIC;
    vaxi_ready : IN STD_LOGIC;
    saxi_awvalid : IN STD_LOGIC;
    saxi_awready : OUT STD_LOGIC;
    saxi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    saxi_wvalid : IN STD_LOGIC;
    saxi_wready : OUT STD_LOGIC;
    saxi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    saxi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    saxi_bvalid : OUT STD_LOGIC;
    saxi_bready : IN STD_LOGIC;
    saxi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    saxi_arvalid : IN STD_LOGIC;
    saxi_arready : OUT STD_LOGIC;
    saxi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    saxi_rvalid : OUT STD_LOGIC;
    saxi_rready : IN STD_LOGIC;
    saxi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    saxi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    intr : OUT STD_LOGIC;
    refclk : IN STD_LOGIC;
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC
  );
END TySOM_1_7Z030_mipi_csi_0;

ARCHITECTURE TySOM_1_7Z030_mipi_csi_0_arch OF TySOM_1_7Z030_mipi_csi_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF TySOM_1_7Z030_mipi_csi_0_arch: ARCHITECTURE IS "yes";
  COMPONENT mipi_csi_top IS
    GENERIC (
      N_LANES : INTEGER;
      PHY_INV_CLK : BOOLEAN;
      PHY_INV_DATA : BOOLEAN
    );
    PORT (
      pad_data_p : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pad_data_n : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      pad_clk_p : IN STD_LOGIC;
      pad_clk_n : IN STD_LOGIC;
      cam_dn0_se : IN STD_LOGIC;
      cam_dp0_se : IN STD_LOGIC;
      cam_dn1_se : IN STD_LOGIC;
      cam_dp1_se : IN STD_LOGIC;
      cam_cn_se : IN STD_LOGIC;
      cam_cp_se : IN STD_LOGIC;
      vaxi_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      vaxi_last : OUT STD_LOGIC;
      vaxi_sof : OUT STD_LOGIC;
      vaxi_valid : OUT STD_LOGIC;
      vaxi_ready : IN STD_LOGIC;
      saxi_awvalid : IN STD_LOGIC;
      saxi_awready : OUT STD_LOGIC;
      saxi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      saxi_wvalid : IN STD_LOGIC;
      saxi_wready : OUT STD_LOGIC;
      saxi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      saxi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      saxi_bvalid : OUT STD_LOGIC;
      saxi_bready : IN STD_LOGIC;
      saxi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      saxi_arvalid : IN STD_LOGIC;
      saxi_arready : OUT STD_LOGIC;
      saxi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      saxi_rvalid : OUT STD_LOGIC;
      saxi_rready : IN STD_LOGIC;
      saxi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      saxi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      intr : OUT STD_LOGIC;
      refclk : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC
    );
  END COMPONENT mipi_csi_top;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF vaxi_data: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF vaxi_last: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF vaxi_sof: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF vaxi_valid: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF vaxi_ready: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF saxi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF saxi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF saxi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF saxi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF saxi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF saxi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF saxi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF saxi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF saxi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF saxi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF saxi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF saxi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF saxi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF saxi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF saxi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF saxi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF saxi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF intr: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTR_OUT INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF refclk: SIGNAL IS "xilinx.com:signal:clock:1.0 REF_CLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 signal_clock CLK";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 RESET RST";
BEGIN
  U0 : mipi_csi_top
    GENERIC MAP (
      N_LANES => 2,
      PHY_INV_CLK => false,
      PHY_INV_DATA => false
    )
    PORT MAP (
      pad_data_p => pad_data_p,
      pad_data_n => pad_data_n,
      pad_clk_p => pad_clk_p,
      pad_clk_n => pad_clk_n,
      cam_dn0_se => cam_dn0_se,
      cam_dp0_se => cam_dp0_se,
      cam_dn1_se => cam_dn1_se,
      cam_dp1_se => cam_dp1_se,
      cam_cn_se => cam_cn_se,
      cam_cp_se => cam_cp_se,
      vaxi_data => vaxi_data,
      vaxi_last => vaxi_last,
      vaxi_sof => vaxi_sof,
      vaxi_valid => vaxi_valid,
      vaxi_ready => vaxi_ready,
      saxi_awvalid => saxi_awvalid,
      saxi_awready => saxi_awready,
      saxi_awaddr => saxi_awaddr,
      saxi_wvalid => saxi_wvalid,
      saxi_wready => saxi_wready,
      saxi_wdata => saxi_wdata,
      saxi_wstrb => saxi_wstrb,
      saxi_bvalid => saxi_bvalid,
      saxi_bready => saxi_bready,
      saxi_bresp => saxi_bresp,
      saxi_arvalid => saxi_arvalid,
      saxi_arready => saxi_arready,
      saxi_araddr => saxi_araddr,
      saxi_rvalid => saxi_rvalid,
      saxi_rready => saxi_rready,
      saxi_rdata => saxi_rdata,
      saxi_rresp => saxi_rresp,
      intr => intr,
      refclk => refclk,
      clk => clk,
      rst => rst
    );
END TySOM_1_7Z030_mipi_csi_0_arch;
