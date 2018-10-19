//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
//Date        : Tue Jul 11 14:47:40 2017
//Host        : enki running 64-bit CentOS release 6.8 (Final)
//Command     : generate_target TySOM_1_7Z030_wrapper.bd
//Design      : TySOM_1_7Z030_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TySOM_1_7Z030_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    cam_cn_se,
    cam_cp_se,
    cam_dn0_se,
    cam_dn1_se,
    cam_dp0_se,
    cam_dp1_se,
    gpio_tri_o,
    hdmi_clk,
    hdmi_data,
    hdmi_de,
    hdmi_hsync,
    hdmi_vsync,
    iic_main_scl_io,
    iic_main_sda_io,
    pad_clk_n,
    pad_clk_p,
    pad_data_n,
    pad_data_p);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input cam_cn_se;
  input cam_cp_se;
  input cam_dn0_se;
  input cam_dn1_se;
  input cam_dp0_se;
  input cam_dp1_se;
  output [1:0]gpio_tri_o;
  output hdmi_clk;
  output [15:0]hdmi_data;
  output hdmi_de;
  output hdmi_hsync;
  output hdmi_vsync;
  inout iic_main_scl_io;
  inout iic_main_sda_io;
  input pad_clk_n;
  input pad_clk_p;
  input [1:0]pad_data_n;
  input [1:0]pad_data_p;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire cam_cn_se;
  wire cam_cp_se;
  wire cam_dn0_se;
  wire cam_dn1_se;
  wire cam_dp0_se;
  wire cam_dp1_se;
  wire [1:0]gpio_tri_o;
  wire hdmi_clk;
  wire [15:0]hdmi_data;
  wire hdmi_de;
  wire hdmi_hsync;
  wire hdmi_vsync;
  wire iic_main_scl_i;
  wire iic_main_scl_io;
  wire iic_main_scl_o;
  wire iic_main_scl_t;
  wire iic_main_sda_i;
  wire iic_main_sda_io;
  wire iic_main_sda_o;
  wire iic_main_sda_t;
  wire pad_clk_n;
  wire pad_clk_p;
  wire [1:0]pad_data_n;
  wire [1:0]pad_data_p;

  TySOM_1_7Z030 TySOM_1_7Z030_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .GPIO_tri_o(gpio_tri_o),
        .IIC_MAIN_scl_i(iic_main_scl_i),
        .IIC_MAIN_scl_o(iic_main_scl_o),
        .IIC_MAIN_scl_t(iic_main_scl_t),
        .IIC_MAIN_sda_i(iic_main_sda_i),
        .IIC_MAIN_sda_o(iic_main_sda_o),
        .IIC_MAIN_sda_t(iic_main_sda_t),
        .cam_cn_se(cam_cn_se),
        .cam_cp_se(cam_cp_se),
        .cam_dn0_se(cam_dn0_se),
        .cam_dn1_se(cam_dn1_se),
        .cam_dp0_se(cam_dp0_se),
        .cam_dp1_se(cam_dp1_se),
        .hdmi_clk(hdmi_clk),
        .hdmi_data(hdmi_data),
        .hdmi_de(hdmi_de),
        .hdmi_hsync(hdmi_hsync),
        .hdmi_vsync(hdmi_vsync),
        .pad_clk_n(pad_clk_n),
        .pad_clk_p(pad_clk_p),
        .pad_data_n(pad_data_n),
        .pad_data_p(pad_data_p));
  IOBUF iic_main_scl_iobuf
       (.I(iic_main_scl_o),
        .IO(iic_main_scl_io),
        .O(iic_main_scl_i),
        .T(iic_main_scl_t));
  IOBUF iic_main_sda_iobuf
       (.I(iic_main_sda_o),
        .IO(iic_main_sda_io),
        .O(iic_main_sda_i),
        .T(iic_main_sda_t));
endmodule
