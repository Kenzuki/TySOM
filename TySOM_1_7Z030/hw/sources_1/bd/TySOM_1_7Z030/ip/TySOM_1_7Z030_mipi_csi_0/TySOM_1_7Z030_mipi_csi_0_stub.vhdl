-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
-- Date        : Tue Jul 11 15:02:42 2017
-- Host        : enki running 64-bit CentOS release 6.8 (Final)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/barsko/Xilinx_2017.1/TySOM_1_7Z030/SDx_platform/vivado/TySOM_1_7Z030.srcs/sources_1/bd/TySOM_1_7Z030/ip/TySOM_1_7Z030_mipi_csi_0/TySOM_1_7Z030_mipi_csi_0_stub.vhdl
-- Design      : TySOM_1_7Z030_mipi_csi_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z030fbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TySOM_1_7Z030_mipi_csi_0 is
  Port ( 
    pad_data_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pad_data_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pad_clk_p : in STD_LOGIC;
    pad_clk_n : in STD_LOGIC;
    cam_dn0_se : in STD_LOGIC;
    cam_dp0_se : in STD_LOGIC;
    cam_dn1_se : in STD_LOGIC;
    cam_dp1_se : in STD_LOGIC;
    cam_cn_se : in STD_LOGIC;
    cam_cp_se : in STD_LOGIC;
    vaxi_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    vaxi_last : out STD_LOGIC;
    vaxi_sof : out STD_LOGIC;
    vaxi_valid : out STD_LOGIC;
    vaxi_ready : in STD_LOGIC;
    saxi_awvalid : in STD_LOGIC;
    saxi_awready : out STD_LOGIC;
    saxi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    saxi_wvalid : in STD_LOGIC;
    saxi_wready : out STD_LOGIC;
    saxi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    saxi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxi_bvalid : out STD_LOGIC;
    saxi_bready : in STD_LOGIC;
    saxi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxi_arvalid : in STD_LOGIC;
    saxi_arready : out STD_LOGIC;
    saxi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    saxi_rvalid : out STD_LOGIC;
    saxi_rready : in STD_LOGIC;
    saxi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    saxi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    intr : out STD_LOGIC;
    refclk : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );

end TySOM_1_7Z030_mipi_csi_0;

architecture stub of TySOM_1_7Z030_mipi_csi_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pad_data_p[1:0],pad_data_n[1:0],pad_clk_p,pad_clk_n,cam_dn0_se,cam_dp0_se,cam_dn1_se,cam_dp1_se,cam_cn_se,cam_cp_se,vaxi_data[31:0],vaxi_last,vaxi_sof,vaxi_valid,vaxi_ready,saxi_awvalid,saxi_awready,saxi_awaddr[31:0],saxi_wvalid,saxi_wready,saxi_wdata[31:0],saxi_wstrb[3:0],saxi_bvalid,saxi_bready,saxi_bresp[1:0],saxi_arvalid,saxi_arready,saxi_araddr[31:0],saxi_rvalid,saxi_rready,saxi_rdata[31:0],saxi_rresp[1:0],intr,refclk,clk,rst";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mipi_csi_top,Vivado 2017.1_AR69152";
begin
end;
