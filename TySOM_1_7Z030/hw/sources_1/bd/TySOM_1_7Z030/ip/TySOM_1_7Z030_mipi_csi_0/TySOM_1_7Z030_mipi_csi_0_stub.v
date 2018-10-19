// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
// Date        : Tue Jul 11 15:02:42 2017
// Host        : enki running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -force -mode synth_stub
//               /home/barsko/Xilinx_2017.1/TySOM_1_7Z030/SDx_platform/vivado/TySOM_1_7Z030.srcs/sources_1/bd/TySOM_1_7Z030/ip/TySOM_1_7Z030_mipi_csi_0/TySOM_1_7Z030_mipi_csi_0_stub.v
// Design      : TySOM_1_7Z030_mipi_csi_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030fbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mipi_csi_top,Vivado 2017.1_AR69152" *)
module TySOM_1_7Z030_mipi_csi_0(pad_data_p, pad_data_n, pad_clk_p, pad_clk_n, 
  cam_dn0_se, cam_dp0_se, cam_dn1_se, cam_dp1_se, cam_cn_se, cam_cp_se, vaxi_data, vaxi_last, 
  vaxi_sof, vaxi_valid, vaxi_ready, saxi_awvalid, saxi_awready, saxi_awaddr, saxi_wvalid, 
  saxi_wready, saxi_wdata, saxi_wstrb, saxi_bvalid, saxi_bready, saxi_bresp, saxi_arvalid, 
  saxi_arready, saxi_araddr, saxi_rvalid, saxi_rready, saxi_rdata, saxi_rresp, intr, refclk, clk, 
  rst)
/* synthesis syn_black_box black_box_pad_pin="pad_data_p[1:0],pad_data_n[1:0],pad_clk_p,pad_clk_n,cam_dn0_se,cam_dp0_se,cam_dn1_se,cam_dp1_se,cam_cn_se,cam_cp_se,vaxi_data[31:0],vaxi_last,vaxi_sof,vaxi_valid,vaxi_ready,saxi_awvalid,saxi_awready,saxi_awaddr[31:0],saxi_wvalid,saxi_wready,saxi_wdata[31:0],saxi_wstrb[3:0],saxi_bvalid,saxi_bready,saxi_bresp[1:0],saxi_arvalid,saxi_arready,saxi_araddr[31:0],saxi_rvalid,saxi_rready,saxi_rdata[31:0],saxi_rresp[1:0],intr,refclk,clk,rst" */;
  input [1:0]pad_data_p;
  input [1:0]pad_data_n;
  input pad_clk_p;
  input pad_clk_n;
  input cam_dn0_se;
  input cam_dp0_se;
  input cam_dn1_se;
  input cam_dp1_se;
  input cam_cn_se;
  input cam_cp_se;
  output [31:0]vaxi_data;
  output vaxi_last;
  output vaxi_sof;
  output vaxi_valid;
  input vaxi_ready;
  input saxi_awvalid;
  output saxi_awready;
  input [31:0]saxi_awaddr;
  input saxi_wvalid;
  output saxi_wready;
  input [31:0]saxi_wdata;
  input [3:0]saxi_wstrb;
  output saxi_bvalid;
  input saxi_bready;
  output [1:0]saxi_bresp;
  input saxi_arvalid;
  output saxi_arready;
  input [31:0]saxi_araddr;
  output saxi_rvalid;
  input saxi_rready;
  output [31:0]saxi_rdata;
  output [1:0]saxi_rresp;
  output intr;
  input refclk;
  input clk;
  input rst;
endmodule
