// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
// Date        : Tue Jul 11 15:02:42 2017
// Host        : enki running 64-bit CentOS release 6.8 (Final)
// Command     : write_verilog -force -mode funcsim
//               /home/barsko/Xilinx_2017.1/TySOM_1_7Z030/SDx_platform/vivado/TySOM_1_7Z030.srcs/sources_1/bd/TySOM_1_7Z030/ip/TySOM_1_7Z030_mipi_csi_0/TySOM_1_7Z030_mipi_csi_0_sim_netlist.v
// Design      : TySOM_1_7Z030_mipi_csi_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z030fbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "TySOM_1_7Z030_mipi_csi_0,mipi_csi_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mipi_csi_top,Vivado 2017.1_AR69152" *) 
(* NotValidForBitStream *)
module TySOM_1_7Z030_mipi_csi_0
   (pad_data_p,
    pad_data_n,
    pad_clk_p,
    pad_clk_n,
    cam_dn0_se,
    cam_dp0_se,
    cam_dn1_se,
    cam_dp1_se,
    cam_cn_se,
    cam_cp_se,
    vaxi_data,
    vaxi_last,
    vaxi_sof,
    vaxi_valid,
    vaxi_ready,
    saxi_awvalid,
    saxi_awready,
    saxi_awaddr,
    saxi_wvalid,
    saxi_wready,
    saxi_wdata,
    saxi_wstrb,
    saxi_bvalid,
    saxi_bready,
    saxi_bresp,
    saxi_arvalid,
    saxi_arready,
    saxi_araddr,
    saxi_rvalid,
    saxi_rready,
    saxi_rdata,
    saxi_rresp,
    intr,
    refclk,
    clk,
    rst);
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
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]vaxi_data;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output vaxi_last;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) output vaxi_sof;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output vaxi_valid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input vaxi_ready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID" *) input saxi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY" *) output saxi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR" *) input [31:0]saxi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID" *) input saxi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY" *) output saxi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA" *) input [31:0]saxi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB" *) input [3:0]saxi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID" *) output saxi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY" *) input saxi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP" *) output [1:0]saxi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID" *) input saxi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY" *) output saxi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR" *) input [31:0]saxi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID" *) output saxi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY" *) input saxi_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA" *) output [31:0]saxi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP" *) output [1:0]saxi_rresp;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 INTR_OUT INTERRUPT" *) output intr;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 REF_CLK CLK" *) input refclk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 signal_clock CLK" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RESET RST" *) input rst;

  wire \<const0> ;
  wire clk;
  wire intr;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS" *) wire pad_clk_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS" *) wire pad_clk_p;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS" *) wire [1:0]pad_data_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS" *) wire [1:0]pad_data_p;
  wire refclk;
  wire rst;
  wire [31:0]saxi_araddr;
  wire saxi_arready;
  wire saxi_arvalid;
  wire [31:0]saxi_awaddr;
  wire saxi_awready;
  wire saxi_awvalid;
  wire saxi_bready;
  wire saxi_bvalid;
  wire [31:0]\^saxi_rdata ;
  wire saxi_rready;
  wire saxi_rvalid;
  wire [31:0]saxi_wdata;
  wire saxi_wvalid;
  wire [31:0]vaxi_data;
  wire vaxi_last;
  wire vaxi_ready;
  wire vaxi_sof;
  wire vaxi_valid;

  assign saxi_bresp[1] = \<const0> ;
  assign saxi_bresp[0] = \<const0> ;
  assign saxi_rdata[31:30] = \^saxi_rdata [31:30];
  assign saxi_rdata[29] = \<const0> ;
  assign saxi_rdata[28] = \<const0> ;
  assign saxi_rdata[27] = \<const0> ;
  assign saxi_rdata[26] = \<const0> ;
  assign saxi_rdata[25] = \<const0> ;
  assign saxi_rdata[24] = \<const0> ;
  assign saxi_rdata[23] = \<const0> ;
  assign saxi_rdata[22] = \<const0> ;
  assign saxi_rdata[21] = \<const0> ;
  assign saxi_rdata[20] = \<const0> ;
  assign saxi_rdata[19:16] = \^saxi_rdata [19:16];
  assign saxi_rdata[15] = \<const0> ;
  assign saxi_rdata[14] = \<const0> ;
  assign saxi_rdata[13] = \<const0> ;
  assign saxi_rdata[12] = \<const0> ;
  assign saxi_rdata[11] = \<const0> ;
  assign saxi_rdata[10] = \<const0> ;
  assign saxi_rdata[9] = \<const0> ;
  assign saxi_rdata[8] = \<const0> ;
  assign saxi_rdata[7] = \<const0> ;
  assign saxi_rdata[6] = \<const0> ;
  assign saxi_rdata[5] = \<const0> ;
  assign saxi_rdata[4:0] = \^saxi_rdata [4:0];
  assign saxi_rresp[1] = \<const0> ;
  assign saxi_rresp[0] = \<const0> ;
  assign saxi_wready = saxi_awready;
  GND GND
       (.G(\<const0> ));
  TySOM_1_7Z030_mipi_csi_0_mipi_csi_top U0
       (.DOP({vaxi_sof,vaxi_last}),
        .clk(clk),
        .intr(intr),
        .pad_clk_n(pad_clk_n),
        .pad_clk_p(pad_clk_p),
        .pad_data_n(pad_data_n),
        .pad_data_p(pad_data_p),
        .refclk(refclk),
        .rst(rst),
        .saxi_araddr(saxi_araddr[5:2]),
        .saxi_arready(saxi_arready),
        .saxi_arvalid(saxi_arvalid),
        .saxi_awaddr(saxi_awaddr[5:2]),
        .saxi_awready(saxi_awready),
        .saxi_awvalid(saxi_awvalid),
        .saxi_bready(saxi_bready),
        .saxi_bvalid(saxi_bvalid),
        .saxi_rdata({\^saxi_rdata [31:30],\^saxi_rdata [19:16],\^saxi_rdata [4:0]}),
        .saxi_rready(saxi_rready),
        .saxi_rvalid(saxi_rvalid),
        .saxi_wdata({saxi_wdata[31:30],saxi_wdata[28],saxi_wdata[25:23],saxi_wdata[21:0]}),
        .saxi_wvalid(saxi_wvalid),
        .vaxi_data(vaxi_data),
        .vaxi_ready(vaxi_ready),
        .vaxi_valid(vaxi_valid));
endmodule

(* ORIG_REF_NAME = "axilite2slb" *) 
module TySOM_1_7Z030_mipi_csi_0_axilite2slb
   (ctrl_dly_ld_clk_reg,
    Q,
    D,
    wen_reg,
    wen_reg_0,
    p_0_in,
    wen_reg_1,
    wen_reg_2,
    \ctrl_dly_ld_data_reg[1] ,
    wen_reg_3,
    wen_reg_4,
    \slb_rdata_reg[31] ,
    \slb_rdata_reg[1] ,
    \slb_rdata_reg[2] ,
    \slb_rdata_reg[3] ,
    \slb_rdata_reg[4] ,
    \slb_rdata_reg[18] ,
    \slb_rdata_reg[19] ,
    \slb_rdata_reg[1]_0 ,
    saxi_rdata,
    saxi_bvalid,
    saxi_rvalid,
    saxi_arready,
    saxi_awready,
    saxi_arvalid,
    saxi_wvalid,
    saxi_awvalid,
    saxi_awaddr,
    saxi_araddr,
    err_phy_overflow,
    \reg_er_reg[19] ,
    err_phy_early_lp,
    err_phy_bad_ecc,
    pulse_out,
    err_late_last,
    err_early_last,
    err_unk_pkt,
    err_early_sof,
    err_no_hdr,
    out,
    stat_running_reg,
    stat_err_pending,
    pktr_empty,
    pix_fifo_empty,
    saxi_wdata,
    clk,
    \slb_rdata_reg[31]_0 ,
    rst,
    saxi_rready,
    saxi_bready);
  output ctrl_dly_ld_clk_reg;
  output [24:0]Q;
  output [8:0]D;
  output wen_reg;
  output wen_reg_0;
  output p_0_in;
  output wen_reg_1;
  output wen_reg_2;
  output [1:0]\ctrl_dly_ld_data_reg[1] ;
  output wen_reg_3;
  output wen_reg_4;
  output [4:0]\slb_rdata_reg[31] ;
  output \slb_rdata_reg[1] ;
  output \slb_rdata_reg[2] ;
  output \slb_rdata_reg[3] ;
  output \slb_rdata_reg[4] ;
  output \slb_rdata_reg[18] ;
  output \slb_rdata_reg[19] ;
  output \slb_rdata_reg[1]_0 ;
  output [10:0]saxi_rdata;
  output saxi_bvalid;
  output saxi_rvalid;
  output saxi_arready;
  output saxi_awready;
  input saxi_arvalid;
  input saxi_wvalid;
  input saxi_awvalid;
  input [3:0]saxi_awaddr;
  input [3:0]saxi_araddr;
  input err_phy_overflow;
  input [8:0]\reg_er_reg[19] ;
  input err_phy_early_lp;
  input err_phy_bad_ecc;
  input pulse_out;
  input err_late_last;
  input err_early_last;
  input err_unk_pkt;
  input err_early_sof;
  input err_no_hdr;
  input out;
  input stat_running_reg;
  input stat_err_pending;
  input pktr_empty;
  input pix_fifo_empty;
  input [27:0]saxi_wdata;
  input clk;
  input [10:0]\slb_rdata_reg[31]_0 ;
  input rst;
  input saxi_rready;
  input saxi_bready;

  wire [8:0]D;
  wire \FSM_sequential_state_cur[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state_cur[1]_i_1__1_n_0 ;
  wire \FSM_sequential_state_cur[1]_i_2__1_n_0 ;
  wire \FSM_sequential_state_cur[2]_i_1__1_n_0 ;
  wire [24:0]Q;
  wire clk;
  wire ctrl_dly_ld_clk_reg;
  wire [1:0]\ctrl_dly_ld_data_reg[1] ;
  wire eqOp2_in;
  wire err_early_last;
  wire err_early_sof;
  wire err_late_last;
  wire err_no_hdr;
  wire err_phy_bad_ecc;
  wire err_phy_early_lp;
  wire err_phy_overflow;
  wire err_unk_pkt;
  wire out;
  wire p_0_in;
  wire pix_fifo_empty;
  wire pktr_empty;
  wire pulse_out;
  wire \reg_er[19]_i_2_n_0 ;
  wire [8:0]\reg_er_reg[19] ;
  wire rst;
  wire [3:0]saxi_araddr;
  wire saxi_arready;
  wire saxi_arvalid;
  wire [3:0]saxi_awaddr;
  wire saxi_awready;
  wire saxi_awvalid;
  wire saxi_bready;
  wire saxi_bvalid;
  wire [10:0]saxi_rdata;
  wire \saxi_rdata[31]_i_1_n_0 ;
  wire saxi_rready;
  wire saxi_rvalid;
  wire [27:0]saxi_wdata;
  wire saxi_wvalid;
  wire [3:0]slb_addr;
  wire \slb_addr[0]_i_1_n_0 ;
  wire \slb_addr[1]_i_1_n_0 ;
  wire \slb_addr[2]_i_1_n_0 ;
  wire \slb_addr[3]_i_1_n_0 ;
  wire \slb_addr[3]_i_2_n_0 ;
  wire \slb_rdata_reg[18] ;
  wire \slb_rdata_reg[19] ;
  wire \slb_rdata_reg[1] ;
  wire \slb_rdata_reg[1]_0 ;
  wire \slb_rdata_reg[2] ;
  wire [4:0]\slb_rdata_reg[31] ;
  wire [10:0]\slb_rdata_reg[31]_0 ;
  wire \slb_rdata_reg[3] ;
  wire \slb_rdata_reg[4] ;
  wire [28:24]slb_wdata;
  wire \slb_wdata[31]_i_1_n_0 ;
  wire \slb_wdata[31]_i_5_n_0 ;
  wire \slb_wdata[31]_i_6_n_0 ;
  wire \slb_wdata[31]_i_7_n_0 ;
  wire slb_wstb;
  wire stat_err_pending;
  wire stat_running_reg;
  (* RTL_KEEP = "yes" *) wire [2:0]state_cur;
  wire [2:0]state_nxt;
  wire wen_reg;
  wire wen_reg_0;
  wire wen_reg_1;
  wire wen_reg_2;
  wire wen_reg_3;
  wire wen_reg_4;

  LUT6 #(
    .INIT(64'h737373730F0C0C0C)) 
    \FSM_sequential_state_cur[0]_i_1__0 
       (.I0(saxi_rready),
        .I1(state_cur[0]),
        .I2(state_cur[2]),
        .I3(saxi_awvalid),
        .I4(saxi_wvalid),
        .I5(state_cur[1]),
        .O(\FSM_sequential_state_cur[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7C0C7C0F7C0C7C0C)) 
    \FSM_sequential_state_cur[1]_i_1__1 
       (.I0(saxi_rready),
        .I1(state_cur[0]),
        .I2(state_cur[1]),
        .I3(state_cur[2]),
        .I4(\FSM_sequential_state_cur[1]_i_2__1_n_0 ),
        .I5(saxi_arvalid),
        .O(\FSM_sequential_state_cur[1]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state_cur[1]_i_2__1 
       (.I0(saxi_awvalid),
        .I1(saxi_wvalid),
        .O(\FSM_sequential_state_cur[1]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h77FFCF00)) 
    \FSM_sequential_state_cur[2]_i_1__1 
       (.I0(saxi_rready),
        .I1(state_cur[0]),
        .I2(saxi_bready),
        .I3(state_cur[2]),
        .I4(state_cur[1]),
        .O(\FSM_sequential_state_cur[2]_i_1__1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_cur_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_cur[0]_i_1__0_n_0 ),
        .Q(state_cur[0]),
        .R(rst));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_cur_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_cur[1]_i_1__1_n_0 ),
        .Q(state_cur[1]),
        .R(rst));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_cur_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_cur[2]_i_1__1_n_0 ),
        .Q(state_cur[2]),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    ctrl_dly_ld_clk_i_1
       (.I0(slb_addr[2]),
        .I1(slb_wstb),
        .I2(slb_addr[0]),
        .I3(slb_addr[1]),
        .I4(slb_addr[3]),
        .I5(slb_wdata[28]),
        .O(ctrl_dly_ld_clk_reg));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \ctrl_dly_ld_data[0]_i_1 
       (.I0(slb_addr[2]),
        .I1(slb_wstb),
        .I2(slb_addr[0]),
        .I3(slb_addr[1]),
        .I4(slb_addr[3]),
        .I5(slb_wdata[24]),
        .O(\ctrl_dly_ld_data_reg[1] [0]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \ctrl_dly_ld_data[1]_i_1 
       (.I0(slb_addr[2]),
        .I1(slb_wstb),
        .I2(slb_addr[0]),
        .I3(slb_addr[1]),
        .I4(slb_addr[3]),
        .I5(slb_wdata[25]),
        .O(\ctrl_dly_ld_data_reg[1] [1]));
  LUT4 #(
    .INIT(16'h7770)) 
    \reg_er[0]_i_1 
       (.I0(Q[0]),
        .I1(\reg_er[19]_i_2_n_0 ),
        .I2(err_no_hdr),
        .I3(\reg_er_reg[19] [0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h7770)) 
    \reg_er[16]_i_1 
       (.I0(Q[16]),
        .I1(\reg_er[19]_i_2_n_0 ),
        .I2(pulse_out),
        .I3(\reg_er_reg[19] [5]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h7770)) 
    \reg_er[17]_i_1 
       (.I0(Q[17]),
        .I1(\reg_er[19]_i_2_n_0 ),
        .I2(err_phy_bad_ecc),
        .I3(\reg_er_reg[19] [6]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h7770)) 
    \reg_er[18]_i_1 
       (.I0(Q[18]),
        .I1(\reg_er[19]_i_2_n_0 ),
        .I2(err_phy_early_lp),
        .I3(\reg_er_reg[19] [7]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h7770)) 
    \reg_er[19]_i_1 
       (.I0(Q[19]),
        .I1(\reg_er[19]_i_2_n_0 ),
        .I2(err_phy_overflow),
        .I3(\reg_er_reg[19] [8]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'h0800)) 
    \reg_er[19]_i_2 
       (.I0(state_cur[0]),
        .I1(state_cur[1]),
        .I2(state_cur[2]),
        .I3(eqOp2_in),
        .O(\reg_er[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \reg_er[19]_i_3 
       (.I0(slb_addr[2]),
        .I1(slb_addr[3]),
        .I2(slb_addr[1]),
        .I3(slb_addr[0]),
        .O(eqOp2_in));
  LUT4 #(
    .INIT(16'h7770)) 
    \reg_er[1]_i_1 
       (.I0(Q[1]),
        .I1(\reg_er[19]_i_2_n_0 ),
        .I2(err_early_sof),
        .I3(\reg_er_reg[19] [1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h7770)) 
    \reg_er[2]_i_1 
       (.I0(Q[2]),
        .I1(\reg_er[19]_i_2_n_0 ),
        .I2(err_unk_pkt),
        .I3(\reg_er_reg[19] [2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h7770)) 
    \reg_er[3]_i_1 
       (.I0(Q[3]),
        .I1(\reg_er[19]_i_2_n_0 ),
        .I2(err_early_last),
        .I3(\reg_er_reg[19] [3]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h7770)) 
    \reg_er[4]_i_1 
       (.I0(Q[4]),
        .I1(\reg_er[19]_i_2_n_0 ),
        .I2(err_late_last),
        .I3(\reg_er_reg[19] [4]),
        .O(D[4]));
  LUT3 #(
    .INIT(8'h04)) 
    saxi_arready_INST_0
       (.I0(state_cur[2]),
        .I1(state_cur[1]),
        .I2(state_cur[0]),
        .O(saxi_arready));
  LUT3 #(
    .INIT(8'h04)) 
    saxi_bvalid_INST_0
       (.I0(state_cur[1]),
        .I1(state_cur[2]),
        .I2(state_cur[0]),
        .O(saxi_bvalid));
  LUT3 #(
    .INIT(8'h08)) 
    \saxi_rdata[31]_i_1 
       (.I0(state_cur[1]),
        .I1(state_cur[2]),
        .I2(state_cur[0]),
        .O(\saxi_rdata[31]_i_1_n_0 ));
  FDRE \saxi_rdata_reg[0] 
       (.C(clk),
        .CE(\saxi_rdata[31]_i_1_n_0 ),
        .D(\slb_rdata_reg[31]_0 [0]),
        .Q(saxi_rdata[0]),
        .R(1'b0));
  FDRE \saxi_rdata_reg[16] 
       (.C(clk),
        .CE(\saxi_rdata[31]_i_1_n_0 ),
        .D(\slb_rdata_reg[31]_0 [5]),
        .Q(saxi_rdata[5]),
        .R(1'b0));
  FDRE \saxi_rdata_reg[17] 
       (.C(clk),
        .CE(\saxi_rdata[31]_i_1_n_0 ),
        .D(\slb_rdata_reg[31]_0 [6]),
        .Q(saxi_rdata[6]),
        .R(1'b0));
  FDRE \saxi_rdata_reg[18] 
       (.C(clk),
        .CE(\saxi_rdata[31]_i_1_n_0 ),
        .D(\slb_rdata_reg[31]_0 [7]),
        .Q(saxi_rdata[7]),
        .R(1'b0));
  FDRE \saxi_rdata_reg[19] 
       (.C(clk),
        .CE(\saxi_rdata[31]_i_1_n_0 ),
        .D(\slb_rdata_reg[31]_0 [8]),
        .Q(saxi_rdata[8]),
        .R(1'b0));
  FDRE \saxi_rdata_reg[1] 
       (.C(clk),
        .CE(\saxi_rdata[31]_i_1_n_0 ),
        .D(\slb_rdata_reg[31]_0 [1]),
        .Q(saxi_rdata[1]),
        .R(1'b0));
  FDRE \saxi_rdata_reg[2] 
       (.C(clk),
        .CE(\saxi_rdata[31]_i_1_n_0 ),
        .D(\slb_rdata_reg[31]_0 [2]),
        .Q(saxi_rdata[2]),
        .R(1'b0));
  FDRE \saxi_rdata_reg[30] 
       (.C(clk),
        .CE(\saxi_rdata[31]_i_1_n_0 ),
        .D(\slb_rdata_reg[31]_0 [9]),
        .Q(saxi_rdata[9]),
        .R(1'b0));
  FDRE \saxi_rdata_reg[31] 
       (.C(clk),
        .CE(\saxi_rdata[31]_i_1_n_0 ),
        .D(\slb_rdata_reg[31]_0 [10]),
        .Q(saxi_rdata[10]),
        .R(1'b0));
  FDRE \saxi_rdata_reg[3] 
       (.C(clk),
        .CE(\saxi_rdata[31]_i_1_n_0 ),
        .D(\slb_rdata_reg[31]_0 [3]),
        .Q(saxi_rdata[3]),
        .R(1'b0));
  FDRE \saxi_rdata_reg[4] 
       (.C(clk),
        .CE(\saxi_rdata[31]_i_1_n_0 ),
        .D(\slb_rdata_reg[31]_0 [4]),
        .Q(saxi_rdata[4]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    saxi_rvalid_INST_0
       (.I0(state_cur[1]),
        .I1(state_cur[2]),
        .I2(state_cur[0]),
        .O(saxi_rvalid));
  LUT3 #(
    .INIT(8'h10)) 
    saxi_wready_INST_0
       (.I0(state_cur[1]),
        .I1(state_cur[2]),
        .I2(state_cur[0]),
        .O(saxi_awready));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \slb_addr[0]_i_1 
       (.I0(state_nxt[0]),
        .I1(state_nxt[2]),
        .I2(state_nxt[1]),
        .I3(saxi_awaddr[0]),
        .I4(saxi_araddr[0]),
        .O(\slb_addr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \slb_addr[1]_i_1 
       (.I0(state_nxt[0]),
        .I1(state_nxt[2]),
        .I2(state_nxt[1]),
        .I3(saxi_awaddr[1]),
        .I4(saxi_araddr[1]),
        .O(\slb_addr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \slb_addr[2]_i_1 
       (.I0(state_nxt[0]),
        .I1(state_nxt[2]),
        .I2(state_nxt[1]),
        .I3(saxi_awaddr[2]),
        .I4(saxi_araddr[2]),
        .O(\slb_addr[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \slb_addr[3]_i_1 
       (.I0(state_nxt[2]),
        .I1(state_nxt[0]),
        .I2(state_nxt[1]),
        .O(\slb_addr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0200)) 
    \slb_addr[3]_i_2 
       (.I0(state_nxt[0]),
        .I1(state_nxt[2]),
        .I2(state_nxt[1]),
        .I3(saxi_awaddr[3]),
        .I4(saxi_araddr[3]),
        .O(\slb_addr[3]_i_2_n_0 ));
  FDRE \slb_addr_reg[0] 
       (.C(clk),
        .CE(\slb_addr[3]_i_1_n_0 ),
        .D(\slb_addr[0]_i_1_n_0 ),
        .Q(slb_addr[0]),
        .R(1'b0));
  FDRE \slb_addr_reg[1] 
       (.C(clk),
        .CE(\slb_addr[3]_i_1_n_0 ),
        .D(\slb_addr[1]_i_1_n_0 ),
        .Q(slb_addr[1]),
        .R(1'b0));
  FDRE \slb_addr_reg[2] 
       (.C(clk),
        .CE(\slb_addr[3]_i_1_n_0 ),
        .D(\slb_addr[2]_i_1_n_0 ),
        .Q(slb_addr[2]),
        .R(1'b0));
  FDRE \slb_addr_reg[3] 
       (.C(clk),
        .CE(\slb_addr[3]_i_1_n_0 ),
        .D(\slb_addr[3]_i_2_n_0 ),
        .Q(slb_addr[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0003020000000200)) 
    \slb_rdata[0]_i_1 
       (.I0(out),
        .I1(slb_addr[2]),
        .I2(slb_addr[3]),
        .I3(slb_addr[0]),
        .I4(slb_addr[1]),
        .I5(\reg_er_reg[19] [0]),
        .O(\slb_rdata_reg[31] [0]));
  LUT6 #(
    .INIT(64'h0003020000000200)) 
    \slb_rdata[16]_i_1 
       (.I0(stat_running_reg),
        .I1(slb_addr[2]),
        .I2(slb_addr[3]),
        .I3(slb_addr[0]),
        .I4(slb_addr[1]),
        .I5(\reg_er_reg[19] [5]),
        .O(\slb_rdata_reg[31] [1]));
  LUT6 #(
    .INIT(64'h0003020000000200)) 
    \slb_rdata[17]_i_1 
       (.I0(stat_err_pending),
        .I1(slb_addr[2]),
        .I2(slb_addr[3]),
        .I3(slb_addr[0]),
        .I4(slb_addr[1]),
        .I5(\reg_er_reg[19] [6]),
        .O(\slb_rdata_reg[31] [2]));
  LUT5 #(
    .INIT(32'h00040000)) 
    \slb_rdata[18]_i_1 
       (.I0(slb_addr[0]),
        .I1(slb_addr[1]),
        .I2(slb_addr[3]),
        .I3(slb_addr[2]),
        .I4(\reg_er_reg[19] [7]),
        .O(\slb_rdata_reg[18] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \slb_rdata[19]_i_1 
       (.I0(slb_addr[2]),
        .I1(slb_addr[3]),
        .I2(slb_addr[0]),
        .I3(slb_addr[1]),
        .O(\slb_rdata_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \slb_rdata[19]_i_2 
       (.I0(slb_addr[0]),
        .I1(slb_addr[1]),
        .I2(slb_addr[3]),
        .I3(slb_addr[2]),
        .I4(\reg_er_reg[19] [8]),
        .O(\slb_rdata_reg[19] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \slb_rdata[1]_i_1 
       (.I0(slb_addr[0]),
        .I1(slb_addr[1]),
        .I2(slb_addr[3]),
        .I3(slb_addr[2]),
        .I4(\reg_er_reg[19] [1]),
        .O(\slb_rdata_reg[1] ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \slb_rdata[2]_i_1 
       (.I0(slb_addr[0]),
        .I1(slb_addr[1]),
        .I2(slb_addr[3]),
        .I3(slb_addr[2]),
        .I4(\reg_er_reg[19] [2]),
        .O(\slb_rdata_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \slb_rdata[30]_i_1 
       (.I0(slb_addr[1]),
        .I1(slb_addr[0]),
        .I2(slb_addr[3]),
        .I3(slb_addr[2]),
        .I4(pktr_empty),
        .O(\slb_rdata_reg[31] [3]));
  LUT5 #(
    .INIT(32'h00040000)) 
    \slb_rdata[31]_i_1 
       (.I0(slb_addr[1]),
        .I1(slb_addr[0]),
        .I2(slb_addr[3]),
        .I3(slb_addr[2]),
        .I4(pix_fifo_empty),
        .O(\slb_rdata_reg[31] [4]));
  LUT5 #(
    .INIT(32'h00040000)) 
    \slb_rdata[3]_i_1 
       (.I0(slb_addr[0]),
        .I1(slb_addr[1]),
        .I2(slb_addr[3]),
        .I3(slb_addr[2]),
        .I4(\reg_er_reg[19] [3]),
        .O(\slb_rdata_reg[3] ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \slb_rdata[4]_i_1 
       (.I0(slb_addr[0]),
        .I1(slb_addr[1]),
        .I2(slb_addr[3]),
        .I3(slb_addr[2]),
        .I4(\reg_er_reg[19] [4]),
        .O(\slb_rdata_reg[4] ));
  LUT3 #(
    .INIT(8'h02)) 
    \slb_wdata[31]_i_1 
       (.I0(state_nxt[0]),
        .I1(state_nxt[2]),
        .I2(state_nxt[1]),
        .O(\slb_wdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h77FF77FF00303330)) 
    \slb_wdata[31]_i_2 
       (.I0(saxi_rready),
        .I1(state_cur[0]),
        .I2(\slb_wdata[31]_i_5_n_0 ),
        .I3(state_cur[2]),
        .I4(saxi_bready),
        .I5(state_cur[1]),
        .O(state_nxt[0]));
  LUT5 #(
    .INIT(32'h7733CC30)) 
    \slb_wdata[31]_i_3 
       (.I0(saxi_rready),
        .I1(state_cur[0]),
        .I2(\slb_wdata[31]_i_6_n_0 ),
        .I3(state_cur[2]),
        .I4(state_cur[1]),
        .O(state_nxt[2]));
  LUT6 #(
    .INIT(64'h7C7FCFCF7C7FCCCC)) 
    \slb_wdata[31]_i_4 
       (.I0(saxi_rready),
        .I1(state_cur[0]),
        .I2(state_cur[1]),
        .I3(saxi_bready),
        .I4(state_cur[2]),
        .I5(\slb_wdata[31]_i_7_n_0 ),
        .O(state_nxt[1]));
  LUT6 #(
    .INIT(64'h8F8888888F8F8F88)) 
    \slb_wdata[31]_i_5 
       (.I0(saxi_wvalid),
        .I1(saxi_awvalid),
        .I2(saxi_arvalid),
        .I3(state_cur[0]),
        .I4(state_cur[2]),
        .I5(state_cur[1]),
        .O(\slb_wdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFB8FFB8FFB8)) 
    \slb_wdata[31]_i_6 
       (.I0(state_cur[2]),
        .I1(state_cur[0]),
        .I2(state_cur[1]),
        .I3(saxi_arvalid),
        .I4(saxi_wvalid),
        .I5(saxi_awvalid),
        .O(\slb_wdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000454045404540)) 
    \slb_wdata[31]_i_7 
       (.I0(saxi_arvalid),
        .I1(state_cur[1]),
        .I2(state_cur[0]),
        .I3(state_cur[2]),
        .I4(saxi_wvalid),
        .I5(saxi_awvalid),
        .O(\slb_wdata[31]_i_7_n_0 ));
  FDRE \slb_wdata_reg[0] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \slb_wdata_reg[10] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \slb_wdata_reg[11] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \slb_wdata_reg[12] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \slb_wdata_reg[13] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \slb_wdata_reg[14] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \slb_wdata_reg[15] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \slb_wdata_reg[16] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \slb_wdata_reg[17] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \slb_wdata_reg[18] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \slb_wdata_reg[19] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \slb_wdata_reg[1] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \slb_wdata_reg[20] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \slb_wdata_reg[21] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \slb_wdata_reg[23] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \slb_wdata_reg[24] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[23]),
        .Q(slb_wdata[24]),
        .R(1'b0));
  FDRE \slb_wdata_reg[25] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[24]),
        .Q(slb_wdata[25]),
        .R(1'b0));
  FDRE \slb_wdata_reg[28] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[25]),
        .Q(slb_wdata[28]),
        .R(1'b0));
  FDRE \slb_wdata_reg[2] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \slb_wdata_reg[30] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[26]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \slb_wdata_reg[31] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[27]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \slb_wdata_reg[3] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \slb_wdata_reg[4] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \slb_wdata_reg[5] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \slb_wdata_reg[6] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \slb_wdata_reg[7] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \slb_wdata_reg[8] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \slb_wdata_reg[9] 
       (.C(clk),
        .CE(\slb_wdata[31]_i_1_n_0 ),
        .D(saxi_wdata[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    wen_i_1
       (.I0(slb_addr[2]),
        .I1(slb_addr[1]),
        .I2(slb_addr[3]),
        .I3(slb_addr[0]),
        .I4(slb_wstb),
        .O(wen_reg));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    wen_i_1__0
       (.I0(slb_addr[3]),
        .I1(slb_addr[1]),
        .I2(slb_wstb),
        .I3(slb_addr[0]),
        .I4(slb_addr[2]),
        .O(wen_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    wen_i_1__1
       (.I0(slb_addr[2]),
        .I1(slb_addr[3]),
        .I2(slb_wstb),
        .I3(slb_addr[0]),
        .I4(slb_addr[1]),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    wen_i_1__2
       (.I0(slb_addr[2]),
        .I1(slb_addr[3]),
        .I2(slb_wstb),
        .I3(slb_addr[0]),
        .I4(slb_addr[1]),
        .O(wen_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    wen_i_1__3
       (.I0(slb_addr[3]),
        .I1(slb_addr[2]),
        .I2(slb_wstb),
        .I3(slb_addr[0]),
        .I4(slb_addr[1]),
        .O(wen_reg_2));
  LUT5 #(
    .INIT(32'h01000000)) 
    wen_i_1__4
       (.I0(slb_addr[2]),
        .I1(slb_addr[1]),
        .I2(slb_addr[0]),
        .I3(slb_wstb),
        .I4(slb_addr[3]),
        .O(wen_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    wen_i_1__5
       (.I0(slb_addr[2]),
        .I1(slb_addr[0]),
        .I2(slb_addr[3]),
        .I3(slb_addr[1]),
        .I4(slb_wstb),
        .O(wen_reg_4));
  LUT3 #(
    .INIT(8'h40)) 
    wen_i_2
       (.I0(state_cur[2]),
        .I1(state_cur[1]),
        .I2(state_cur[0]),
        .O(slb_wstb));
endmodule

(* ORIG_REF_NAME = "delay_bus" *) 
module TySOM_1_7Z030_mipi_csi_0_delay_bus
   (q,
    Q,
    clk);
  output [10:0]q;
  input [10:0]Q;
  input clk;

  wire [10:0]Q;
  wire clk;
  wire [10:0]q;
  wire \srl_gen[0].part_stage_gen.b_gen[0].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[10].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[1].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[2].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[3].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[4].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[5].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[6].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[7].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[8].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[9].srl_I_n_0 ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[0].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[10].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[1].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[2].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[3].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[4].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[5].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[6].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[7].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[8].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[9].srl_I_Q31_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[0].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[0].srl_I_n_0 ),
        .Q(q[0]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[0].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[0].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[0]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[0].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[0].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[10].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[10].srl_I_n_0 ),
        .Q(q[10]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[10].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[10].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[10]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[10].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[10].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[1].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[1].srl_I_n_0 ),
        .Q(q[1]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[1].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[1].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[1]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[1].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[1].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[2].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[2].srl_I_n_0 ),
        .Q(q[2]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[2].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[2].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[2]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[2].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[2].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[3].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[3].srl_I_n_0 ),
        .Q(q[3]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[3].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[3].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[3]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[3].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[3].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[4].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[4].srl_I_n_0 ),
        .Q(q[4]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[4].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[4].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[4]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[4].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[4].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[5].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[5].srl_I_n_0 ),
        .Q(q[5]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[5].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[5].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[5]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[5].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[5].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[6].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[6].srl_I_n_0 ),
        .Q(q[6]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[6].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[6].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[6]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[6].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[6].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[7].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[7].srl_I_n_0 ),
        .Q(q[7]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[7].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[7].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[7]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[7].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[7].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[8].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[8].srl_I_n_0 ),
        .Q(q[8]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[8].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[8].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[8]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[8].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[8].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[9].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[9].srl_I_n_0 ),
        .Q(q[9]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[9].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[9].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .D(Q[9]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[9].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[9].srl_I_Q31_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "delay_bus" *) 
module TySOM_1_7Z030_mipi_csi_0_delay_bus__parameterized1
   (D,
    R,
    q,
    DI,
    sel_line_3_reg,
    sel_line_3_reg_0,
    S,
    Q,
    sel_col_3_reg,
    sel_line_3_reg_1,
    O,
    \pix_l02c1_3_reg[0] ,
    \pix_l02c0_3_reg[2] ,
    \pix_l02c0_3_reg[3] ,
    \pix_l02c0_3_reg[4] ,
    \pix_l02c0_3_reg[5] ,
    \pix_l02c0_3_reg[6] ,
    \pix_l02c0_3_reg[7] ,
    \pix_l02c0_3_reg[8] ,
    \pix_l02c0_3_reg[9] ,
    DOADO,
    line_buf_I,
    DOPADOP,
    line_buf_I_0,
    line_buf_I_1,
    \vum_data_reg[9] ,
    clk);
  output [7:0]D;
  output [9:0]R;
  output [8:0]q;
  input [3:0]DI;
  input [3:0]sel_line_3_reg;
  input [1:0]sel_line_3_reg_0;
  input [0:0]S;
  input [1:0]Q;
  input sel_col_3_reg;
  input sel_line_3_reg_1;
  input [0:0]O;
  input [0:0]\pix_l02c1_3_reg[0] ;
  input \pix_l02c0_3_reg[2] ;
  input \pix_l02c0_3_reg[3] ;
  input \pix_l02c0_3_reg[4] ;
  input \pix_l02c0_3_reg[5] ;
  input \pix_l02c0_3_reg[6] ;
  input \pix_l02c0_3_reg[7] ;
  input \pix_l02c0_3_reg[8] ;
  input \pix_l02c0_3_reg[9] ;
  input [6:0]DOADO;
  input [3:0]line_buf_I;
  input [1:0]DOPADOP;
  input [3:0]line_buf_I_0;
  input [0:0]line_buf_I_1;
  input [8:0]\vum_data_reg[9] ;
  input clk;

  wire [7:0]D;
  wire [3:0]DI;
  wire [6:0]DOADO;
  wire [1:0]DOPADOP;
  wire [0:0]O;
  wire [1:0]Q;
  wire [9:0]R;
  wire [0:0]S;
  wire clk;
  wire [3:0]line_buf_I;
  wire [3:0]line_buf_I_0;
  wire [0:0]line_buf_I_1;
  wire \pix_blue_4[10]_i_5_n_0 ;
  wire \pix_blue_4[10]_i_6_n_0 ;
  wire \pix_blue_4[3]_i_6_n_0 ;
  wire \pix_blue_4[3]_i_7_n_0 ;
  wire \pix_blue_4[3]_i_8_n_0 ;
  wire \pix_blue_4[3]_i_9_n_0 ;
  wire \pix_blue_4[7]_i_6_n_0 ;
  wire \pix_blue_4[7]_i_7_n_0 ;
  wire \pix_blue_4[7]_i_8_n_0 ;
  wire \pix_blue_4[7]_i_9_n_0 ;
  wire \pix_blue_4_reg[10]_i_1_n_2 ;
  wire \pix_blue_4_reg[10]_i_1_n_3 ;
  wire \pix_blue_4_reg[3]_i_1_n_0 ;
  wire \pix_blue_4_reg[3]_i_1_n_1 ;
  wire \pix_blue_4_reg[3]_i_1_n_2 ;
  wire \pix_blue_4_reg[3]_i_1_n_3 ;
  wire \pix_blue_4_reg[7]_i_1_n_0 ;
  wire \pix_blue_4_reg[7]_i_1_n_1 ;
  wire \pix_blue_4_reg[7]_i_1_n_2 ;
  wire \pix_blue_4_reg[7]_i_1_n_3 ;
  wire \pix_l02c0_3_reg[2] ;
  wire \pix_l02c0_3_reg[3] ;
  wire \pix_l02c0_3_reg[4] ;
  wire \pix_l02c0_3_reg[5] ;
  wire \pix_l02c0_3_reg[6] ;
  wire \pix_l02c0_3_reg[7] ;
  wire \pix_l02c0_3_reg[8] ;
  wire \pix_l02c0_3_reg[9] ;
  wire [0:0]\pix_l02c1_3_reg[0] ;
  wire \pix_l02c1_3_reg[3]_i_1_n_0 ;
  wire \pix_l02c1_3_reg[3]_i_1_n_1 ;
  wire \pix_l02c1_3_reg[3]_i_1_n_2 ;
  wire \pix_l02c1_3_reg[3]_i_1_n_3 ;
  wire \pix_l02c1_3_reg[7]_i_1_n_0 ;
  wire \pix_l02c1_3_reg[7]_i_1_n_1 ;
  wire \pix_l02c1_3_reg[7]_i_1_n_2 ;
  wire \pix_l02c1_3_reg[7]_i_1_n_3 ;
  wire [8:0]q;
  wire sel_col_3_reg;
  wire [3:0]sel_line_3_reg;
  wire [1:0]sel_line_3_reg_0;
  wire sel_line_3_reg_1;
  wire \srl_gen[0].part_stage_gen.b_gen[0].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[1].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[2].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[3].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[4].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[5].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[6].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[7].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[8].srl_I_n_0 ;
  wire [8:0]\vum_data_reg[9] ;
  wire [3:2]\NLW_pix_blue_4_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_pix_blue_4_reg[10]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_pix_blue_4_reg[3]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_pix_l02c1_3_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_pix_l02c1_3_reg[9]_i_1_O_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[0].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[1].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[2].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[3].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[4].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[5].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[6].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[7].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[8].srl_I_Q31_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hEF10)) 
    \pix_blue_4[10]_i_5 
       (.I0(sel_col_3_reg),
        .I1(sel_line_3_reg_1),
        .I2(R[9]),
        .I3(\pix_l02c0_3_reg[9] ),
        .O(\pix_blue_4[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEF10)) 
    \pix_blue_4[10]_i_6 
       (.I0(sel_col_3_reg),
        .I1(sel_line_3_reg_1),
        .I2(R[8]),
        .I3(\pix_l02c0_3_reg[8] ),
        .O(\pix_blue_4[10]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hEF10)) 
    \pix_blue_4[3]_i_6 
       (.I0(sel_col_3_reg),
        .I1(sel_line_3_reg_1),
        .I2(R[3]),
        .I3(\pix_l02c0_3_reg[3] ),
        .O(\pix_blue_4[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hEF10)) 
    \pix_blue_4[3]_i_7 
       (.I0(sel_col_3_reg),
        .I1(sel_line_3_reg_1),
        .I2(R[2]),
        .I3(\pix_l02c0_3_reg[2] ),
        .O(\pix_blue_4[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CC5500F0CCAA)) 
    \pix_blue_4[3]_i_8 
       (.I0(R[1]),
        .I1(O),
        .I2(\pix_l02c1_3_reg[0] ),
        .I3(sel_line_3_reg_1),
        .I4(sel_col_3_reg),
        .I5(Q[1]),
        .O(\pix_blue_4[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0006)) 
    \pix_blue_4[3]_i_9 
       (.I0(R[0]),
        .I1(Q[0]),
        .I2(sel_col_3_reg),
        .I3(sel_line_3_reg_1),
        .O(\pix_blue_4[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hEF10)) 
    \pix_blue_4[7]_i_6 
       (.I0(sel_col_3_reg),
        .I1(sel_line_3_reg_1),
        .I2(R[7]),
        .I3(\pix_l02c0_3_reg[7] ),
        .O(\pix_blue_4[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hEF10)) 
    \pix_blue_4[7]_i_7 
       (.I0(sel_col_3_reg),
        .I1(sel_line_3_reg_1),
        .I2(R[6]),
        .I3(\pix_l02c0_3_reg[6] ),
        .O(\pix_blue_4[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hEF10)) 
    \pix_blue_4[7]_i_8 
       (.I0(sel_col_3_reg),
        .I1(sel_line_3_reg_1),
        .I2(R[5]),
        .I3(\pix_l02c0_3_reg[5] ),
        .O(\pix_blue_4[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hEF10)) 
    \pix_blue_4[7]_i_9 
       (.I0(sel_col_3_reg),
        .I1(sel_line_3_reg_1),
        .I2(R[4]),
        .I3(\pix_l02c0_3_reg[4] ),
        .O(\pix_blue_4[7]_i_9_n_0 ));
  CARRY4 \pix_blue_4_reg[10]_i_1 
       (.CI(\pix_blue_4_reg[7]_i_1_n_0 ),
        .CO({\NLW_pix_blue_4_reg[10]_i_1_CO_UNCONNECTED [3:2],\pix_blue_4_reg[10]_i_1_n_2 ,\pix_blue_4_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sel_line_3_reg_0}),
        .O({\NLW_pix_blue_4_reg[10]_i_1_O_UNCONNECTED [3],D[7:5]}),
        .S({1'b0,S,\pix_blue_4[10]_i_5_n_0 ,\pix_blue_4[10]_i_6_n_0 }));
  CARRY4 \pix_blue_4_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\pix_blue_4_reg[3]_i_1_n_0 ,\pix_blue_4_reg[3]_i_1_n_1 ,\pix_blue_4_reg[3]_i_1_n_2 ,\pix_blue_4_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(DI),
        .O({D[0],\NLW_pix_blue_4_reg[3]_i_1_O_UNCONNECTED [2:0]}),
        .S({\pix_blue_4[3]_i_6_n_0 ,\pix_blue_4[3]_i_7_n_0 ,\pix_blue_4[3]_i_8_n_0 ,\pix_blue_4[3]_i_9_n_0 }));
  CARRY4 \pix_blue_4_reg[7]_i_1 
       (.CI(\pix_blue_4_reg[3]_i_1_n_0 ),
        .CO({\pix_blue_4_reg[7]_i_1_n_0 ,\pix_blue_4_reg[7]_i_1_n_1 ,\pix_blue_4_reg[7]_i_1_n_2 ,\pix_blue_4_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(sel_line_3_reg),
        .O(D[4:1]),
        .S({\pix_blue_4[7]_i_6_n_0 ,\pix_blue_4[7]_i_7_n_0 ,\pix_blue_4[7]_i_8_n_0 ,\pix_blue_4[7]_i_9_n_0 }));
  CARRY4 \pix_l02c1_3_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\pix_l02c1_3_reg[3]_i_1_n_0 ,\pix_l02c1_3_reg[3]_i_1_n_1 ,\pix_l02c1_3_reg[3]_i_1_n_2 ,\pix_l02c1_3_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(DOADO[3:0]),
        .O(R[3:0]),
        .S(line_buf_I));
  CARRY4 \pix_l02c1_3_reg[7]_i_1 
       (.CI(\pix_l02c1_3_reg[3]_i_1_n_0 ),
        .CO({\pix_l02c1_3_reg[7]_i_1_n_0 ,\pix_l02c1_3_reg[7]_i_1_n_1 ,\pix_l02c1_3_reg[7]_i_1_n_2 ,\pix_l02c1_3_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({DOPADOP[0],DOADO[6:4]}),
        .O(R[7:4]),
        .S(line_buf_I_0));
  CARRY4 \pix_l02c1_3_reg[9]_i_1 
       (.CI(\pix_l02c1_3_reg[7]_i_1_n_0 ),
        .CO({\NLW_pix_l02c1_3_reg[9]_i_1_CO_UNCONNECTED [3:2],R[9],\NLW_pix_l02c1_3_reg[9]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,DOPADOP[1]}),
        .O({\NLW_pix_l02c1_3_reg[9]_i_1_O_UNCONNECTED [3:1],R[8]}),
        .S({1'b0,1'b0,1'b1,line_buf_I_1}));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[0].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[0].srl_I_n_0 ),
        .Q(q[0]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[0].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[0].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vum_data_reg[9] [0]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[0].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[0].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[1].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[1].srl_I_n_0 ),
        .Q(q[1]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[1].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[1].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vum_data_reg[9] [1]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[1].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[1].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[2].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[2].srl_I_n_0 ),
        .Q(q[2]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[2].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[2].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vum_data_reg[9] [2]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[2].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[2].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[3].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[3].srl_I_n_0 ),
        .Q(q[3]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[3].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[3].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vum_data_reg[9] [3]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[3].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[3].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[4].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[4].srl_I_n_0 ),
        .Q(q[4]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[4].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[4].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vum_data_reg[9] [4]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[4].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[4].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[5].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[5].srl_I_n_0 ),
        .Q(q[5]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[5].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[5].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vum_data_reg[9] [5]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[5].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[5].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[6].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[6].srl_I_n_0 ),
        .Q(q[6]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[6].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[6].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vum_data_reg[9] [6]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[6].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[6].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[7].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[7].srl_I_n_0 ),
        .Q(q[7]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[7].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[7].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vum_data_reg[9] [7]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[7].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[7].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[8].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[8].srl_I_n_0 ),
        .Q(q[8]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[8].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[8].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vum_data_reg[9] [8]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[8].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[8].srl_I_Q31_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "delay_bus" *) 
module TySOM_1_7Z030_mipi_csi_0_delay_bus__parameterized3
   (D,
    q,
    \reg_reg[1] ,
    \cnt_reg[0] ,
    p_3_in,
    \vfm_data_reg[31] ,
    clk);
  output [23:0]D;
  output [7:0]q;
  input [1:0]\reg_reg[1] ;
  input \cnt_reg[0] ;
  input p_3_in;
  input [31:0]\vfm_data_reg[31] ;
  input clk;

  wire [23:0]D;
  wire clk;
  wire \cnt_reg[0] ;
  wire \data[24]_i_2_n_0 ;
  wire \data[25]_i_2_n_0 ;
  wire \data[26]_i_2_n_0 ;
  wire \data[27]_i_2_n_0 ;
  wire \data[28]_i_2_n_0 ;
  wire \data[29]_i_2_n_0 ;
  wire \data[30]_i_2_n_0 ;
  wire \data[31]_i_2_n_0 ;
  wire p_3_in;
  wire [7:0]q;
  wire [1:0]\reg_reg[1] ;
  wire \srl_gen[0].part_stage_gen.b_gen[0].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[10].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[11].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[12].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[13].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[14].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[15].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[16].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[17].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[18].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[19].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[1].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[20].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[21].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[22].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[23].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[24].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[25].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[26].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[27].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[28].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[29].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[2].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[30].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[31].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[3].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[4].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[5].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[6].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[7].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[8].srl_I_n_0 ;
  wire \srl_gen[0].part_stage_gen.b_gen[9].srl_I_n_0 ;
  wire [31:8]vcrop_data;
  wire [31:0]\vfm_data_reg[31] ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[0].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[10].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[11].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[12].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[13].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[14].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[15].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[16].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[17].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[18].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[19].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[1].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[20].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[21].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[22].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[23].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[24].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[25].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[26].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[27].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[28].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[29].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[2].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[30].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[31].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[3].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[4].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[5].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[6].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[7].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[8].srl_I_Q31_UNCONNECTED ;
  wire \NLW_srl_gen[0].part_stage_gen.b_gen[9].srl_I_Q31_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h30303030B8303030)) 
    \data[10]_i_1 
       (.I0(\reg_reg[1] [1]),
        .I1(\reg_reg[1] [0]),
        .I2(vcrop_data[10]),
        .I3(q[2]),
        .I4(\cnt_reg[0] ),
        .I5(p_3_in),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h30303030B8303030)) 
    \data[11]_i_1 
       (.I0(\reg_reg[1] [1]),
        .I1(\reg_reg[1] [0]),
        .I2(vcrop_data[11]),
        .I3(q[3]),
        .I4(\cnt_reg[0] ),
        .I5(p_3_in),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h30303030B8303030)) 
    \data[12]_i_1 
       (.I0(\reg_reg[1] [1]),
        .I1(\reg_reg[1] [0]),
        .I2(vcrop_data[12]),
        .I3(q[4]),
        .I4(\cnt_reg[0] ),
        .I5(p_3_in),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h30303030B8303030)) 
    \data[13]_i_1 
       (.I0(\reg_reg[1] [1]),
        .I1(\reg_reg[1] [0]),
        .I2(vcrop_data[13]),
        .I3(q[5]),
        .I4(\cnt_reg[0] ),
        .I5(p_3_in),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h30303030B8303030)) 
    \data[14]_i_1 
       (.I0(\reg_reg[1] [1]),
        .I1(\reg_reg[1] [0]),
        .I2(vcrop_data[14]),
        .I3(q[6]),
        .I4(\cnt_reg[0] ),
        .I5(p_3_in),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h30303030B8303030)) 
    \data[15]_i_2 
       (.I0(\reg_reg[1] [1]),
        .I1(\reg_reg[1] [0]),
        .I2(vcrop_data[15]),
        .I3(q[7]),
        .I4(\cnt_reg[0] ),
        .I5(p_3_in),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0E020202CE020202)) 
    \data[16]_i_1 
       (.I0(vcrop_data[16]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(q[0]),
        .I4(p_3_in),
        .I5(\cnt_reg[0] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0E020202CE020202)) 
    \data[17]_i_1 
       (.I0(vcrop_data[17]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(q[1]),
        .I4(p_3_in),
        .I5(\cnt_reg[0] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0E020202CE020202)) 
    \data[18]_i_1 
       (.I0(vcrop_data[18]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(q[2]),
        .I4(p_3_in),
        .I5(\cnt_reg[0] ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h0E020202CE020202)) 
    \data[19]_i_1 
       (.I0(vcrop_data[19]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(q[3]),
        .I4(p_3_in),
        .I5(\cnt_reg[0] ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h0E020202CE020202)) 
    \data[20]_i_1 
       (.I0(vcrop_data[20]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(q[4]),
        .I4(p_3_in),
        .I5(\cnt_reg[0] ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h0E020202CE020202)) 
    \data[21]_i_1 
       (.I0(vcrop_data[21]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(q[5]),
        .I4(p_3_in),
        .I5(\cnt_reg[0] ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h0E020202CE020202)) 
    \data[22]_i_1 
       (.I0(vcrop_data[22]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(q[6]),
        .I4(p_3_in),
        .I5(\cnt_reg[0] ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h0E020202CE020202)) 
    \data[23]_i_2 
       (.I0(vcrop_data[23]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(q[7]),
        .I4(p_3_in),
        .I5(\cnt_reg[0] ),
        .O(D[15]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \data[24]_i_1 
       (.I0(vcrop_data[24]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(\data[24]_i_2_n_0 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hC808080800000000)) 
    \data[24]_i_2 
       (.I0(vcrop_data[8]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(q[0]),
        .I4(\cnt_reg[0] ),
        .I5(p_3_in),
        .O(\data[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \data[25]_i_1 
       (.I0(vcrop_data[25]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(\data[25]_i_2_n_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hC808080800000000)) 
    \data[25]_i_2 
       (.I0(vcrop_data[9]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(q[1]),
        .I4(\cnt_reg[0] ),
        .I5(p_3_in),
        .O(\data[25]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \data[26]_i_1 
       (.I0(vcrop_data[26]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(\data[26]_i_2_n_0 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hC808080800000000)) 
    \data[26]_i_2 
       (.I0(vcrop_data[10]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(q[2]),
        .I4(\cnt_reg[0] ),
        .I5(p_3_in),
        .O(\data[26]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \data[27]_i_1 
       (.I0(vcrop_data[27]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(\data[27]_i_2_n_0 ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hC808080800000000)) 
    \data[27]_i_2 
       (.I0(vcrop_data[11]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(q[3]),
        .I4(\cnt_reg[0] ),
        .I5(p_3_in),
        .O(\data[27]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \data[28]_i_1 
       (.I0(vcrop_data[28]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(\data[28]_i_2_n_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hC808080800000000)) 
    \data[28]_i_2 
       (.I0(vcrop_data[12]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(q[4]),
        .I4(\cnt_reg[0] ),
        .I5(p_3_in),
        .O(\data[28]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \data[29]_i_1 
       (.I0(vcrop_data[29]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(\data[29]_i_2_n_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hC808080800000000)) 
    \data[29]_i_2 
       (.I0(vcrop_data[13]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(q[5]),
        .I4(\cnt_reg[0] ),
        .I5(p_3_in),
        .O(\data[29]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \data[30]_i_1 
       (.I0(vcrop_data[30]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(\data[30]_i_2_n_0 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hC808080800000000)) 
    \data[30]_i_2 
       (.I0(vcrop_data[14]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(q[6]),
        .I4(\cnt_reg[0] ),
        .I5(p_3_in),
        .O(\data[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFE02)) 
    \data[31]_i_1 
       (.I0(vcrop_data[31]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(\data[31]_i_2_n_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hC808080800000000)) 
    \data[31]_i_2 
       (.I0(vcrop_data[15]),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(q[7]),
        .I4(\cnt_reg[0] ),
        .I5(p_3_in),
        .O(\data[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h30303030B8303030)) 
    \data[8]_i_1 
       (.I0(\reg_reg[1] [1]),
        .I1(\reg_reg[1] [0]),
        .I2(vcrop_data[8]),
        .I3(q[0]),
        .I4(\cnt_reg[0] ),
        .I5(p_3_in),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h30303030B8303030)) 
    \data[9]_i_1 
       (.I0(\reg_reg[1] [1]),
        .I1(\reg_reg[1] [0]),
        .I2(vcrop_data[9]),
        .I3(q[1]),
        .I4(\cnt_reg[0] ),
        .I5(p_3_in),
        .O(D[1]));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[0].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[0].srl_I_n_0 ),
        .Q(q[0]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[0].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[0].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [0]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[0].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[0].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[10].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[10].srl_I_n_0 ),
        .Q(vcrop_data[10]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[10].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[10].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [10]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[10].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[10].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[11].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[11].srl_I_n_0 ),
        .Q(vcrop_data[11]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[11].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[11].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [11]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[11].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[11].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[12].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[12].srl_I_n_0 ),
        .Q(vcrop_data[12]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[12].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[12].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [12]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[12].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[12].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[13].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[13].srl_I_n_0 ),
        .Q(vcrop_data[13]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[13].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[13].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [13]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[13].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[13].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[14].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[14].srl_I_n_0 ),
        .Q(vcrop_data[14]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[14].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[14].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [14]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[14].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[14].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[15].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[15].srl_I_n_0 ),
        .Q(vcrop_data[15]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[15].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[15].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [15]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[15].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[15].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[16].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[16].srl_I_n_0 ),
        .Q(vcrop_data[16]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[16].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[16].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [16]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[16].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[16].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[17].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[17].srl_I_n_0 ),
        .Q(vcrop_data[17]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[17].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[17].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [17]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[17].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[17].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[18].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[18].srl_I_n_0 ),
        .Q(vcrop_data[18]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[18].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[18].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [18]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[18].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[18].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[19].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[19].srl_I_n_0 ),
        .Q(vcrop_data[19]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[19].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[19].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [19]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[19].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[19].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[1].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[1].srl_I_n_0 ),
        .Q(q[1]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[1].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[1].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [1]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[1].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[1].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[20].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[20].srl_I_n_0 ),
        .Q(vcrop_data[20]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[20].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[20].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [20]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[20].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[20].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[21].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[21].srl_I_n_0 ),
        .Q(vcrop_data[21]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[21].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[21].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [21]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[21].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[21].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[22].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[22].srl_I_n_0 ),
        .Q(vcrop_data[22]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[22].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[22].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [22]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[22].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[22].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[23].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[23].srl_I_n_0 ),
        .Q(vcrop_data[23]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[23].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[23].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [23]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[23].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[23].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[24].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[24].srl_I_n_0 ),
        .Q(vcrop_data[24]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[24].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[24].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [24]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[24].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[24].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[25].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[25].srl_I_n_0 ),
        .Q(vcrop_data[25]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[25].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[25].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [25]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[25].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[25].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[26].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[26].srl_I_n_0 ),
        .Q(vcrop_data[26]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[26].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[26].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [26]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[26].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[26].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[27].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[27].srl_I_n_0 ),
        .Q(vcrop_data[27]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[27].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[27].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [27]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[27].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[27].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[28].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[28].srl_I_n_0 ),
        .Q(vcrop_data[28]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[28].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[28].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [28]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[28].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[28].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[29].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[29].srl_I_n_0 ),
        .Q(vcrop_data[29]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[29].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[29].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [29]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[29].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[29].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[2].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[2].srl_I_n_0 ),
        .Q(q[2]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[2].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[2].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [2]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[2].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[2].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[30].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[30].srl_I_n_0 ),
        .Q(vcrop_data[30]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[30].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[30].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [30]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[30].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[30].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[31].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[31].srl_I_n_0 ),
        .Q(vcrop_data[31]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[31].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[31].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [31]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[31].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[31].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[3].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[3].srl_I_n_0 ),
        .Q(q[3]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[3].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[3].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [3]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[3].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[3].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[4].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[4].srl_I_n_0 ),
        .Q(q[4]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[4].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[4].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [4]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[4].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[4].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[5].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[5].srl_I_n_0 ),
        .Q(q[5]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[5].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[5].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [5]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[5].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[5].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[6].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[6].srl_I_n_0 ),
        .Q(q[6]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[6].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[6].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [6]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[6].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[6].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[7].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[7].srl_I_n_0 ),
        .Q(q[7]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[7].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[7].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [7]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[7].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[7].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[8].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[8].srl_I_n_0 ),
        .Q(vcrop_data[8]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[8].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[8].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [8]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[8].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[8].srl_I_Q31_UNCONNECTED ));
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[9].ff_I 
       (.C(clk),
        .CE(1'b1),
        .D(\srl_gen[0].part_stage_gen.b_gen[9].srl_I_n_0 ),
        .Q(vcrop_data[9]),
        .R(1'b0));
  (* box_type = "PRIMITIVE" *) 
  (* srl_bus_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen " *) 
  (* srl_name = "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[9].srl_I " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl_gen[0].part_stage_gen.b_gen[9].srl_I 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b1}),
        .CE(1'b1),
        .CLK(clk),
        .D(\vfm_data_reg[31] [9]),
        .Q(\srl_gen[0].part_stage_gen.b_gen[9].srl_I_n_0 ),
        .Q31(\NLW_srl_gen[0].part_stage_gen.b_gen[9].srl_I_Q31_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "mipi_csi_phy" *) 
module TySOM_1_7Z030_mipi_csi_0_mipi_csi_phy
   (out_clk,
    out_data,
    pad_clk_p,
    pad_clk_n,
    clk,
    dly_ld_clk,
    Q,
    \ctrl_dly_cnt_reg[4] ,
    refclk,
    pad_data_p,
    pad_data_n,
    \ctrl_dly_ld_data_reg[1] );
  output out_clk;
  output [3:0]out_data;
  input pad_clk_p;
  input pad_clk_n;
  input clk;
  input dly_ld_clk;
  input [0:0]Q;
  input [4:0]\ctrl_dly_cnt_reg[4] ;
  input refclk;
  input [1:0]pad_data_p;
  input [1:0]pad_data_n;
  input [1:0]\ctrl_dly_ld_data_reg[1] ;

  wire [0:0]Q;
  wire clk;
  wire clk_dly;
  wire clk_ibufg;
  wire [4:0]\ctrl_dly_cnt_reg[4] ;
  wire [1:0]\ctrl_dly_ld_data_reg[1] ;
  wire data_dly_0;
  wire data_dly_1;
  wire data_ibuf_0;
  wire data_ibuf_1;
  wire dly_ld_clk;
  wire out_clk;
  wire [3:0]out_data;
  wire pad_clk_n;
  wire pad_clk_p;
  wire [1:0]pad_data_n;
  wire [1:0]pad_data_p;
  wire refclk;
  wire [4:0]NLW_clk_idelay_I_CNTVALUEOUT_UNCONNECTED;
  wire NLW_idelayctrl_I_RDY_UNCONNECTED;
  wire [4:0]\NLW_lane_gen[0].data_idelay_I_CNTVALUEOUT_UNCONNECTED ;
  wire [4:0]\NLW_lane_gen[1].data_idelay_I_CNTVALUEOUT_UNCONNECTED ;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* XILINX_LEGACY_PRIM = "IBUFGDS" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS clk_ibufg_I
       (.I(pad_clk_p),
        .IB(pad_clk_n),
        .O(clk_ibufg));
  (* box_type = "PRIMITIVE" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("CLOCK")) 
    clk_idelay_I
       (.C(clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(\ctrl_dly_cnt_reg[4] ),
        .CNTVALUEOUT(NLW_clk_idelay_I_CNTVALUEOUT_UNCONNECTED[4:0]),
        .DATAIN(1'b0),
        .DATAOUT(clk_dly),
        .IDATAIN(clk_ibufg),
        .INC(1'b0),
        .LD(dly_ld_clk),
        .LDPIPEEN(1'b0),
        .REGRST(Q));
  (* box_type = "PRIMITIVE" *) 
  BUFR #(
    .BUFR_DIVIDE("BYPASS"),
    .SIM_DEVICE("7SERIES")) 
    csi_clk_bufr
       (.CE(1'b1),
        .CLR(1'b0),
        .I(clk_dly),
        .O(out_clk));
  (* box_type = "PRIMITIVE" *) 
  IDELAYCTRL #(
    .SIM_DEVICE("7SERIES")) 
    idelayctrl_I
       (.RDY(NLW_idelayctrl_I_RDY_UNCONNECTED),
        .REFCLK(refclk),
        .RST(Q));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS \lane_gen[0].data_ibuf_I 
       (.I(pad_data_p[0]),
        .IB(pad_data_n[0]),
        .O(data_ibuf_0));
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \lane_gen[0].data_iddr_I 
       (.C(out_clk),
        .CE(1'b1),
        .D(data_dly_0),
        .Q1(out_data[0]),
        .Q2(out_data[1]),
        .R(1'b0),
        .S(1'b0));
  (* box_type = "PRIMITIVE" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \lane_gen[0].data_idelay_I 
       (.C(clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(\ctrl_dly_cnt_reg[4] ),
        .CNTVALUEOUT(\NLW_lane_gen[0].data_idelay_I_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(data_dly_0),
        .IDATAIN(data_ibuf_0),
        .INC(1'b0),
        .LD(\ctrl_dly_ld_data_reg[1] [0]),
        .LDPIPEEN(1'b0),
        .REGRST(Q));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS \lane_gen[1].data_ibuf_I 
       (.I(pad_data_p[1]),
        .IB(pad_data_n[1]),
        .O(data_ibuf_1));
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    \lane_gen[1].data_iddr_I 
       (.C(out_clk),
        .CE(1'b1),
        .D(data_dly_1),
        .Q1(out_data[2]),
        .Q2(out_data[3]),
        .R(1'b0),
        .S(1'b0));
  (* box_type = "PRIMITIVE" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \lane_gen[1].data_idelay_I 
       (.C(clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(\ctrl_dly_cnt_reg[4] ),
        .CNTVALUEOUT(\NLW_lane_gen[1].data_idelay_I_CNTVALUEOUT_UNCONNECTED [4:0]),
        .DATAIN(1'b0),
        .DATAOUT(data_dly_1),
        .IDATAIN(data_ibuf_1),
        .INC(1'b0),
        .LD(\ctrl_dly_ld_data_reg[1] [1]),
        .LDPIPEEN(1'b0),
        .REGRST(Q));
endmodule

(* ORIG_REF_NAME = "mipi_csi_pkt_parse" *) 
module TySOM_1_7Z030_mipi_csi_0_mipi_csi_pkt_parse
   (out,
    err_no_hdr,
    err_early_sof,
    err_unk_pkt,
    err_early_last,
    err_late_last,
    stat_err_pending,
    pause,
    \slb_rdata_reg[16] ,
    vin_sof,
    \cnt_reg[16]_0 ,
    out_valid_i_reg,
    err_late_last_reg_0,
    err_late_last_reg_1,
    \FSM_sequential_state_cur_reg[2]_0 ,
    has_footer_reg_0,
    \data_reg_reg[15] ,
    err_any_c__3,
    clk,
    err_early_sof_c,
    err_unk_pkt_c,
    Q,
    err_pending0,
    DO,
    S,
    \rst_cnt_reg[3] ,
    \rst_cnt_reg[3]_0 ,
    \rst_cnt_reg[3]_1 ,
    vid_ready,
    pktr_empty,
    pause0,
    pix_fifo_afull,
    state_nxt113_out,
    \reg_reg[18] ,
    DOP,
    \FSM_sequential_state_cur_reg[0]_0 ,
    \FSM_sequential_state_cur_reg[0]_1 ,
    \reg_reg[16] ,
    \rst_cnt_reg[3]_2 ,
    \rst_cnt_reg[3]_3 ,
    has_last);
  output [1:0]out;
  output err_no_hdr;
  output err_early_sof;
  output err_unk_pkt;
  output err_early_last;
  output err_late_last;
  output stat_err_pending;
  output pause;
  output \slb_rdata_reg[16] ;
  output vin_sof;
  output \cnt_reg[16]_0 ;
  output out_valid_i_reg;
  output [0:0]err_late_last_reg_0;
  output err_late_last_reg_1;
  output \FSM_sequential_state_cur_reg[2]_0 ;
  output has_footer_reg_0;
  output \data_reg_reg[15] ;
  output err_any_c__3;
  input clk;
  input err_early_sof_c;
  input err_unk_pkt_c;
  input [0:0]Q;
  input err_pending0;
  input [14:0]DO;
  input [3:0]S;
  input [3:0]\rst_cnt_reg[3] ;
  input [3:0]\rst_cnt_reg[3]_0 ;
  input [2:0]\rst_cnt_reg[3]_1 ;
  input vid_ready;
  input pktr_empty;
  input pause0;
  input pix_fifo_afull;
  input state_nxt113_out;
  input [2:0]\reg_reg[18] ;
  input [1:0]DOP;
  input \FSM_sequential_state_cur_reg[0]_0 ;
  input \FSM_sequential_state_cur_reg[0]_1 ;
  input \reg_reg[16] ;
  input \rst_cnt_reg[3]_2 ;
  input \rst_cnt_reg[3]_3 ;
  input has_last;

  wire [14:0]DO;
  wire [1:0]DOP;
  wire \FSM_sequential_state_cur[0]_i_1_n_0 ;
  wire \FSM_sequential_state_cur[0]_i_2__0_n_0 ;
  wire \FSM_sequential_state_cur[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state_cur[1]_i_3_n_0 ;
  wire \FSM_sequential_state_cur[1]_i_6_n_0 ;
  wire \FSM_sequential_state_cur[2]_i_1__0_n_0 ;
  wire \FSM_sequential_state_cur[2]_i_2__0_n_0 ;
  wire \FSM_sequential_state_cur[2]_i_3_n_0 ;
  wire \FSM_sequential_state_cur[2]_i_4_n_0 ;
  wire \FSM_sequential_state_cur_reg[0]_0 ;
  wire \FSM_sequential_state_cur_reg[0]_1 ;
  wire \FSM_sequential_state_cur_reg[2]_0 ;
  wire [0:0]Q;
  wire [3:0]S;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_i_3_n_0 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_i_4_n_0 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_i_5_n_0 ;
  wire clk;
  wire [16:1]cnt;
  wire \cnt_reg[16]_0 ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[14] ;
  wire \cnt_reg_n_0_[15] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire \data_reg_reg[15] ;
  wire err_any_c__3;
  wire err_early_last;
  wire err_early_last_c;
  wire err_early_sof;
  wire err_early_sof_c;
  wire err_late_last;
  wire err_late_last_c;
  wire err_late_last_i_2_n_0;
  wire [0:0]err_late_last_reg_0;
  wire err_late_last_reg_1;
  wire err_no_hdr;
  wire err_no_hdr_c;
  wire err_pending0;
  wire err_unk_pkt;
  wire err_unk_pkt_c;
  wire has_footer;
  wire has_footer_i_1_n_0;
  wire has_footer_reg_0;
  wire has_last;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_4__2_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__0_n_4;
  wire minusOp_carry__0_n_5;
  wire minusOp_carry__0_n_6;
  wire minusOp_carry__0_n_7;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__1_n_4;
  wire minusOp_carry__1_n_5;
  wire minusOp_carry__1_n_6;
  wire minusOp_carry__1_n_7;
  wire minusOp_carry__2_n_0;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry__2_n_5;
  wire minusOp_carry__2_n_6;
  wire minusOp_carry__2_n_7;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire minusOp_carry_n_4;
  wire minusOp_carry_n_5;
  wire minusOp_carry_n_6;
  wire minusOp_carry_n_7;
  wire \minusOp_inferred__0/i__carry__0_n_0 ;
  wire \minusOp_inferred__0/i__carry__0_n_1 ;
  wire \minusOp_inferred__0/i__carry__0_n_2 ;
  wire \minusOp_inferred__0/i__carry__0_n_3 ;
  wire \minusOp_inferred__0/i__carry__0_n_4 ;
  wire \minusOp_inferred__0/i__carry__0_n_5 ;
  wire \minusOp_inferred__0/i__carry__0_n_6 ;
  wire \minusOp_inferred__0/i__carry__0_n_7 ;
  wire \minusOp_inferred__0/i__carry__1_n_0 ;
  wire \minusOp_inferred__0/i__carry__1_n_1 ;
  wire \minusOp_inferred__0/i__carry__1_n_2 ;
  wire \minusOp_inferred__0/i__carry__1_n_3 ;
  wire \minusOp_inferred__0/i__carry__1_n_4 ;
  wire \minusOp_inferred__0/i__carry__1_n_5 ;
  wire \minusOp_inferred__0/i__carry__1_n_6 ;
  wire \minusOp_inferred__0/i__carry__1_n_7 ;
  wire \minusOp_inferred__0/i__carry__2_n_1 ;
  wire \minusOp_inferred__0/i__carry__2_n_2 ;
  wire \minusOp_inferred__0/i__carry__2_n_3 ;
  wire \minusOp_inferred__0/i__carry__2_n_4 ;
  wire \minusOp_inferred__0/i__carry__2_n_5 ;
  wire \minusOp_inferred__0/i__carry__2_n_6 ;
  wire \minusOp_inferred__0/i__carry__2_n_7 ;
  wire \minusOp_inferred__0/i__carry_n_0 ;
  wire \minusOp_inferred__0/i__carry_n_1 ;
  wire \minusOp_inferred__0/i__carry_n_2 ;
  wire \minusOp_inferred__0/i__carry_n_3 ;
  wire \minusOp_inferred__0/i__carry_n_4 ;
  wire \minusOp_inferred__0/i__carry_n_5 ;
  wire \minusOp_inferred__0/i__carry_n_6 ;
  wire \minusOp_inferred__0/i__carry_n_7 ;
  (* RTL_KEEP = "yes" *) wire [1:0]out;
  wire out_valid_i_reg;
  wire pause;
  wire pause0;
  wire pause_i_1_n_0;
  wire pix_fifo_afull;
  wire pktr_empty;
  wire \reg_reg[16] ;
  wire [2:0]\reg_reg[18] ;
  wire [3:0]\rst_cnt_reg[3] ;
  wire [3:0]\rst_cnt_reg[3]_0 ;
  wire [2:0]\rst_cnt_reg[3]_1 ;
  wire \rst_cnt_reg[3]_2 ;
  wire \rst_cnt_reg[3]_3 ;
  wire \slb_rdata_reg[16] ;
  wire stat_err_pending;
  wire stat_running_i_1__0_n_0;
  (* RTL_KEEP = "yes" *) wire [2:2]state_cur;
  wire [2:0]state_cur_reg;
  wire [2:0]state_nxt;
  wire state_nxt113_out;
  wire vid_last0;
  wire vid_ready;
  wire vid_sof_i_11_n_0;
  wire vid_sof_i_12_n_0;
  wire vid_sof_i_14_n_0;
  wire vid_sof_i_16_n_0;
  wire vid_sof_i_1_n_0;
  wire vid_sof_i_2_n_0;
  wire vid_sof_i_3_n_0;
  wire vid_sof_i_7_n_0;
  wire vid_sof_i_8_n_0;
  wire vid_sof_i_9_n_0;
  wire vin_sof;
  wire [2:2]NLW_minusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_minusOp_inferred__0/i__carry__2_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h8880)) 
    \FSM_sequential_state_cur[0]_i_1 
       (.I0(\FSM_sequential_state_cur[2]_i_2__0_n_0 ),
        .I1(\FSM_sequential_state_cur[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state_cur[0]_i_2__0_n_0 ),
        .I3(\FSM_sequential_state_cur_reg[0]_1 ),
        .O(\FSM_sequential_state_cur[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4400440044034400)) 
    \FSM_sequential_state_cur[0]_i_2__0 
       (.I0(DOP[0]),
        .I1(out[1]),
        .I2(state_cur),
        .I3(out[0]),
        .I4(\reg_reg[18] [0]),
        .I5(stat_err_pending),
        .O(\FSM_sequential_state_cur[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hA8000000)) 
    \FSM_sequential_state_cur[1]_i_1__0 
       (.I0(\FSM_sequential_state_cur_reg[0]_0 ),
        .I1(DOP[0]),
        .I2(\FSM_sequential_state_cur[2]_i_3_n_0 ),
        .I3(\FSM_sequential_state_cur[2]_i_2__0_n_0 ),
        .I4(\FSM_sequential_state_cur[1]_i_3_n_0 ),
        .O(\FSM_sequential_state_cur[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \FSM_sequential_state_cur[1]_i_3 
       (.I0(\FSM_sequential_state_cur[1]_i_6_n_0 ),
        .I1(out[1]),
        .I2(out[0]),
        .I3(\reg_reg[18] [0]),
        .I4(state_nxt113_out),
        .O(\FSM_sequential_state_cur[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h808A808A808A0000)) 
    \FSM_sequential_state_cur[1]_i_6 
       (.I0(DOP[0]),
        .I1(\cnt_reg[16]_0 ),
        .I2(out[0]),
        .I3(pktr_empty),
        .I4(out[1]),
        .I5(state_cur),
        .O(\FSM_sequential_state_cur[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCC440404)) 
    \FSM_sequential_state_cur[2]_i_1__0 
       (.I0(DOP[0]),
        .I1(\FSM_sequential_state_cur[2]_i_2__0_n_0 ),
        .I2(\FSM_sequential_state_cur[2]_i_3_n_0 ),
        .I3(pktr_empty),
        .I4(state_cur),
        .I5(\FSM_sequential_state_cur[2]_i_4_n_0 ),
        .O(\FSM_sequential_state_cur[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \FSM_sequential_state_cur[2]_i_2__0 
       (.I0(err_early_last_c),
        .I1(err_early_sof_c),
        .I2(err_no_hdr_c),
        .I3(err_late_last_c),
        .I4(err_unk_pkt_c),
        .I5(\reg_reg[18] [1]),
        .O(\FSM_sequential_state_cur[2]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FSM_sequential_state_cur[2]_i_3 
       (.I0(\cnt_reg[16]_0 ),
        .I1(err_late_last_reg_0),
        .I2(out[0]),
        .I3(out[1]),
        .O(\FSM_sequential_state_cur[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_state_cur[2]_i_4 
       (.I0(\FSM_sequential_state_cur_reg[2]_0 ),
        .I1(state_cur),
        .I2(out[0]),
        .I3(\FSM_sequential_state_cur[2]_i_2__0_n_0 ),
        .O(\FSM_sequential_state_cur[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0F22)) 
    \FSM_sequential_state_cur[2]_i_5 
       (.I0(\reg_reg[18] [0]),
        .I1(state_nxt113_out),
        .I2(\cnt_reg[16]_0 ),
        .I3(out[1]),
        .O(\FSM_sequential_state_cur_reg[2]_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_cur_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_cur[0]_i_1_n_0 ),
        .Q(out[0]),
        .R(Q));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_cur_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_cur[1]_i_1__0_n_0 ),
        .Q(out[1]),
        .R(Q));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_cur_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_cur[2]_i_1__0_n_0 ),
        .Q(state_cur),
        .R(Q));
  LUT6 #(
    .INIT(64'h00000000EEEEEFEE)) 
    \bl.fifo_36_inst_bl.fifo_36_bl_i_1__0 
       (.I0(\bl.fifo_36_inst_bl.fifo_36_bl_i_3_n_0 ),
        .I1(\bl.fifo_36_inst_bl.fifo_36_bl_i_4_n_0 ),
        .I2(\bl.fifo_36_inst_bl.fifo_36_bl_i_5_n_0 ),
        .I3(vid_ready),
        .I4(pause),
        .I5(pktr_empty),
        .O(\cnt_reg[16]_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \bl.fifo_36_inst_bl.fifo_36_bl_i_3 
       (.I0(state_cur),
        .I1(\reg_reg[18] [2]),
        .I2(out[1]),
        .I3(out[0]),
        .O(\bl.fifo_36_inst_bl.fifo_36_bl_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h14)) 
    \bl.fifo_36_inst_bl.fifo_36_bl_i_4 
       (.I0(state_cur),
        .I1(out[1]),
        .I2(out[0]),
        .O(\bl.fifo_36_inst_bl.fifo_36_bl_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \bl.fifo_36_inst_bl.fifo_36_bl_i_5 
       (.I0(state_cur),
        .I1(out[1]),
        .O(\bl.fifo_36_inst_bl.fifo_36_bl_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \cnt[10]_i_1 
       (.I0(minusOp_carry__1_n_6),
        .I1(out[1]),
        .I2(state_cur),
        .I3(out[0]),
        .I4(\minusOp_inferred__0/i__carry__1_n_6 ),
        .O(cnt[10]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \cnt[11]_i_1 
       (.I0(minusOp_carry__1_n_5),
        .I1(out[1]),
        .I2(state_cur),
        .I3(out[0]),
        .I4(\minusOp_inferred__0/i__carry__1_n_5 ),
        .O(cnt[11]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \cnt[12]_i_1 
       (.I0(minusOp_carry__1_n_4),
        .I1(out[1]),
        .I2(state_cur),
        .I3(out[0]),
        .I4(\minusOp_inferred__0/i__carry__1_n_4 ),
        .O(cnt[12]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \cnt[13]_i_1 
       (.I0(minusOp_carry__2_n_7),
        .I1(out[1]),
        .I2(state_cur),
        .I3(out[0]),
        .I4(\minusOp_inferred__0/i__carry__2_n_7 ),
        .O(cnt[13]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \cnt[14]_i_1 
       (.I0(minusOp_carry__2_n_6),
        .I1(out[1]),
        .I2(state_cur),
        .I3(out[0]),
        .I4(\minusOp_inferred__0/i__carry__2_n_6 ),
        .O(cnt[14]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \cnt[15]_i_1 
       (.I0(minusOp_carry__2_n_5),
        .I1(out[1]),
        .I2(state_cur),
        .I3(out[0]),
        .I4(\minusOp_inferred__0/i__carry__2_n_5 ),
        .O(cnt[15]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \cnt[16]_i_1 
       (.I0(minusOp_carry__2_n_0),
        .I1(out[1]),
        .I2(state_cur),
        .I3(out[0]),
        .I4(\minusOp_inferred__0/i__carry__2_n_4 ),
        .O(cnt[16]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \cnt[1]_i_1 
       (.I0(minusOp_carry_n_7),
        .I1(out[1]),
        .I2(state_cur),
        .I3(out[0]),
        .I4(\minusOp_inferred__0/i__carry_n_7 ),
        .O(cnt[1]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \cnt[2]_i_1 
       (.I0(minusOp_carry_n_6),
        .I1(out[1]),
        .I2(state_cur),
        .I3(out[0]),
        .I4(\minusOp_inferred__0/i__carry_n_6 ),
        .O(cnt[2]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \cnt[3]_i_1 
       (.I0(minusOp_carry_n_5),
        .I1(out[1]),
        .I2(state_cur),
        .I3(out[0]),
        .I4(\minusOp_inferred__0/i__carry_n_5 ),
        .O(cnt[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
    \cnt[3]_i_6 
       (.I0(has_last),
        .I1(pktr_empty),
        .I2(out[0]),
        .I3(state_cur),
        .I4(out[1]),
        .I5(pause),
        .O(\data_reg_reg[15] ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \cnt[4]_i_1 
       (.I0(minusOp_carry_n_4),
        .I1(out[1]),
        .I2(state_cur),
        .I3(out[0]),
        .I4(\minusOp_inferred__0/i__carry_n_4 ),
        .O(cnt[4]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \cnt[5]_i_1 
       (.I0(minusOp_carry__0_n_7),
        .I1(out[1]),
        .I2(state_cur),
        .I3(out[0]),
        .I4(\minusOp_inferred__0/i__carry__0_n_7 ),
        .O(cnt[5]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \cnt[6]_i_1 
       (.I0(minusOp_carry__0_n_6),
        .I1(out[1]),
        .I2(state_cur),
        .I3(out[0]),
        .I4(\minusOp_inferred__0/i__carry__0_n_6 ),
        .O(cnt[6]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \cnt[7]_i_1 
       (.I0(minusOp_carry__0_n_5),
        .I1(out[1]),
        .I2(state_cur),
        .I3(out[0]),
        .I4(\minusOp_inferred__0/i__carry__0_n_5 ),
        .O(cnt[7]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \cnt[8]_i_1 
       (.I0(minusOp_carry__0_n_4),
        .I1(out[1]),
        .I2(state_cur),
        .I3(out[0]),
        .I4(\minusOp_inferred__0/i__carry__0_n_4 ),
        .O(cnt[8]));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \cnt[9]_i_1 
       (.I0(minusOp_carry__1_n_7),
        .I1(out[1]),
        .I2(state_cur),
        .I3(out[0]),
        .I4(\minusOp_inferred__0/i__carry__1_n_7 ),
        .O(cnt[9]));
  FDRE \cnt_reg[10] 
       (.C(clk),
        .CE(\cnt_reg[16]_0 ),
        .D(cnt[10]),
        .Q(\cnt_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \cnt_reg[11] 
       (.C(clk),
        .CE(\cnt_reg[16]_0 ),
        .D(cnt[11]),
        .Q(\cnt_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \cnt_reg[12] 
       (.C(clk),
        .CE(\cnt_reg[16]_0 ),
        .D(cnt[12]),
        .Q(\cnt_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \cnt_reg[13] 
       (.C(clk),
        .CE(\cnt_reg[16]_0 ),
        .D(cnt[13]),
        .Q(\cnt_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \cnt_reg[14] 
       (.C(clk),
        .CE(\cnt_reg[16]_0 ),
        .D(cnt[14]),
        .Q(\cnt_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \cnt_reg[15] 
       (.C(clk),
        .CE(\cnt_reg[16]_0 ),
        .D(cnt[15]),
        .Q(\cnt_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \cnt_reg[16] 
       (.C(clk),
        .CE(\cnt_reg[16]_0 ),
        .D(cnt[16]),
        .Q(err_late_last_reg_0),
        .R(1'b0));
  FDRE \cnt_reg[1] 
       (.C(clk),
        .CE(\cnt_reg[16]_0 ),
        .D(cnt[1]),
        .Q(\cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \cnt_reg[2] 
       (.C(clk),
        .CE(\cnt_reg[16]_0 ),
        .D(cnt[2]),
        .Q(\cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \cnt_reg[3] 
       (.C(clk),
        .CE(\cnt_reg[16]_0 ),
        .D(cnt[3]),
        .Q(\cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \cnt_reg[4] 
       (.C(clk),
        .CE(\cnt_reg[16]_0 ),
        .D(cnt[4]),
        .Q(\cnt_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \cnt_reg[5] 
       (.C(clk),
        .CE(\cnt_reg[16]_0 ),
        .D(cnt[5]),
        .Q(\cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \cnt_reg[6] 
       (.C(clk),
        .CE(\cnt_reg[16]_0 ),
        .D(cnt[6]),
        .Q(\cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \cnt_reg[7] 
       (.C(clk),
        .CE(\cnt_reg[16]_0 ),
        .D(cnt[7]),
        .Q(\cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \cnt_reg[8] 
       (.C(clk),
        .CE(\cnt_reg[16]_0 ),
        .D(cnt[8]),
        .Q(\cnt_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \cnt_reg[9] 
       (.C(clk),
        .CE(\cnt_reg[16]_0 ),
        .D(cnt[9]),
        .Q(\cnt_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000A800)) 
    err_early_last_i_1
       (.I0(\cnt_reg[16]_0 ),
        .I1(err_late_last_reg_0),
        .I2(has_footer),
        .I3(DOP[0]),
        .I4(err_late_last_reg_1),
        .O(err_early_last_c));
  LUT3 #(
    .INIT(8'hDF)) 
    err_early_last_i_2
       (.I0(out[1]),
        .I1(state_cur),
        .I2(out[0]),
        .O(err_late_last_reg_1));
  FDRE err_early_last_reg
       (.C(clk),
        .CE(1'b1),
        .D(err_early_last_c),
        .Q(err_early_last),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    err_early_sof_i_2
       (.I0(out[1]),
        .I1(state_cur),
        .I2(out[0]),
        .O(has_footer_reg_0));
  FDRE err_early_sof_reg
       (.C(clk),
        .CE(1'b1),
        .D(err_early_sof_c),
        .Q(err_early_sof),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    err_late_last_i_1
       (.I0(err_late_last_reg_1),
        .I1(err_late_last_reg_0),
        .I2(has_footer),
        .I3(\cnt_reg[16]_0 ),
        .I4(DOP[0]),
        .I5(err_late_last_i_2_n_0),
        .O(err_late_last_c));
  LUT5 #(
    .INIT(32'h00000002)) 
    err_late_last_i_2
       (.I0(state_cur),
        .I1(pktr_empty),
        .I2(DOP[0]),
        .I3(out[0]),
        .I4(out[1]),
        .O(err_late_last_i_2_n_0));
  FDRE err_late_last_reg
       (.C(clk),
        .CE(1'b1),
        .D(err_late_last_c),
        .Q(err_late_last),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000010)) 
    err_no_hdr_i_1
       (.I0(out[0]),
        .I1(state_cur),
        .I2(out[1]),
        .I3(pktr_empty),
        .I4(DOP[1]),
        .O(err_no_hdr_c));
  FDRE err_no_hdr_reg
       (.C(clk),
        .CE(1'b1),
        .D(err_no_hdr_c),
        .Q(err_no_hdr),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    err_pending_i_2
       (.I0(err_unk_pkt_c),
        .I1(err_late_last_c),
        .I2(err_no_hdr_c),
        .I3(err_early_sof_c),
        .I4(err_early_last_c),
        .O(err_any_c__3));
  FDRE err_pending_reg
       (.C(clk),
        .CE(1'b1),
        .D(err_pending0),
        .Q(stat_err_pending),
        .R(Q));
  FDRE err_unk_pkt_reg
       (.C(clk),
        .CE(1'b1),
        .D(err_unk_pkt_c),
        .Q(err_unk_pkt),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h9FFF9000)) 
    has_footer_i_1
       (.I0(DO[1]),
        .I1(DO[0]),
        .I2(has_footer_reg_0),
        .I3(\cnt_reg[16]_0 ),
        .I4(has_footer),
        .O(has_footer_i_1_n_0));
  FDRE has_footer_reg
       (.C(clk),
        .CE(1'b1),
        .D(has_footer_i_1_n_0),
        .Q(has_footer),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__0
       (.I0(\cnt_reg_n_0_[8] ),
        .O(i__carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__0
       (.I0(\cnt_reg_n_0_[7] ),
        .O(i__carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3__0
       (.I0(\cnt_reg_n_0_[6] ),
        .O(i__carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4__0
       (.I0(\cnt_reg_n_0_[5] ),
        .O(i__carry__0_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1__0
       (.I0(\cnt_reg_n_0_[12] ),
        .O(i__carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2__0
       (.I0(\cnt_reg_n_0_[11] ),
        .O(i__carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3__0
       (.I0(\cnt_reg_n_0_[10] ),
        .O(i__carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4__0
       (.I0(\cnt_reg_n_0_[9] ),
        .O(i__carry__1_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1__0
       (.I0(err_late_last_reg_0),
        .O(vid_last0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2__0
       (.I0(\cnt_reg_n_0_[15] ),
        .O(i__carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3__0
       (.I0(\cnt_reg_n_0_[14] ),
        .O(i__carry__2_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4__0
       (.I0(\cnt_reg_n_0_[13] ),
        .O(i__carry__2_i_4__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__0
       (.I0(\cnt_reg_n_0_[4] ),
        .O(i__carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__0
       (.I0(\cnt_reg_n_0_[3] ),
        .O(i__carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__0
       (.I0(\cnt_reg_n_0_[2] ),
        .O(i__carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_4__2
       (.I0(\cnt_reg_n_0_[1] ),
        .O(i__carry_i_4__2_n_0));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(DO[0]),
        .DI({DO[3:2],1'b0,DO[1]}),
        .O({minusOp_carry_n_4,minusOp_carry_n_5,minusOp_carry_n_6,minusOp_carry_n_7}),
        .S(S));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(DO[7:4]),
        .O({minusOp_carry__0_n_4,minusOp_carry__0_n_5,minusOp_carry__0_n_6,minusOp_carry__0_n_7}),
        .S(\rst_cnt_reg[3] ));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(DO[11:8]),
        .O({minusOp_carry__1_n_4,minusOp_carry__1_n_5,minusOp_carry__1_n_6,minusOp_carry__1_n_7}),
        .S(\rst_cnt_reg[3]_0 ));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({minusOp_carry__2_n_0,NLW_minusOp_carry__2_CO_UNCONNECTED[2],minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,DO[14:12]}),
        .O({NLW_minusOp_carry__2_O_UNCONNECTED[3],minusOp_carry__2_n_5,minusOp_carry__2_n_6,minusOp_carry__2_n_7}),
        .S({1'b1,\rst_cnt_reg[3]_1 }));
  CARRY4 \minusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\minusOp_inferred__0/i__carry_n_0 ,\minusOp_inferred__0/i__carry_n_1 ,\minusOp_inferred__0/i__carry_n_2 ,\minusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\cnt_reg_n_0_[4] ,\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,1'b0}),
        .O({\minusOp_inferred__0/i__carry_n_4 ,\minusOp_inferred__0/i__carry_n_5 ,\minusOp_inferred__0/i__carry_n_6 ,\minusOp_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__2_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__0 
       (.CI(\minusOp_inferred__0/i__carry_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__0_n_0 ,\minusOp_inferred__0/i__carry__0_n_1 ,\minusOp_inferred__0/i__carry__0_n_2 ,\minusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\cnt_reg_n_0_[8] ,\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] }),
        .O({\minusOp_inferred__0/i__carry__0_n_4 ,\minusOp_inferred__0/i__carry__0_n_5 ,\minusOp_inferred__0/i__carry__0_n_6 ,\minusOp_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__1 
       (.CI(\minusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__1_n_0 ,\minusOp_inferred__0/i__carry__1_n_1 ,\minusOp_inferred__0/i__carry__1_n_2 ,\minusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\cnt_reg_n_0_[12] ,\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] }),
        .O({\minusOp_inferred__0/i__carry__1_n_4 ,\minusOp_inferred__0/i__carry__1_n_5 ,\minusOp_inferred__0/i__carry__1_n_6 ,\minusOp_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__2 
       (.CI(\minusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_minusOp_inferred__0/i__carry__2_CO_UNCONNECTED [3],\minusOp_inferred__0/i__carry__2_n_1 ,\minusOp_inferred__0/i__carry__2_n_2 ,\minusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\cnt_reg_n_0_[15] ,\cnt_reg_n_0_[14] ,\cnt_reg_n_0_[13] }),
        .O({\minusOp_inferred__0/i__carry__2_n_4 ,\minusOp_inferred__0/i__carry__2_n_5 ,\minusOp_inferred__0/i__carry__2_n_6 ,\minusOp_inferred__0/i__carry__2_n_7 }),
        .S({vid_last0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}));
  LUT5 #(
    .INIT(32'h00000400)) 
    out_valid_i_i_1__1
       (.I0(pause),
        .I1(out[1]),
        .I2(state_cur),
        .I3(out[0]),
        .I4(pktr_empty),
        .O(out_valid_i_reg));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000000)) 
    pause_i_1
       (.I0(pause0),
        .I1(out[0]),
        .I2(state_cur),
        .I3(out[1]),
        .I4(pause),
        .I5(pix_fifo_afull),
        .O(pause_i_1_n_0));
  FDRE pause_reg
       (.C(clk),
        .CE(1'b1),
        .D(pause_i_1_n_0),
        .Q(pause),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    stat_running_i_1__0
       (.I0(out[1]),
        .I1(state_cur),
        .I2(out[0]),
        .O(stat_running_i_1__0_n_0));
  FDRE stat_running_reg
       (.C(clk),
        .CE(1'b1),
        .D(stat_running_i_1__0_n_0),
        .Q(\slb_rdata_reg[16] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEAAA)) 
    vid_sof_i_1
       (.I0(vid_sof_i_2_n_0),
        .I1(vid_sof_i_3_n_0),
        .I2(state_nxt[1]),
        .I3(\FSM_sequential_state_cur[2]_i_2__0_n_0 ),
        .I4(state_nxt[2]),
        .I5(state_nxt[0]),
        .O(vid_sof_i_1_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    vid_sof_i_10
       (.I0(out[0]),
        .I1(out[1]),
        .I2(state_cur),
        .O(state_cur_reg[2]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    vid_sof_i_11
       (.I0(\cnt_reg[16]_0 ),
        .I1(DOP[0]),
        .I2(err_late_last_reg_0),
        .I3(out[0]),
        .I4(state_cur),
        .I5(out[1]),
        .O(vid_sof_i_11_n_0));
  LUT6 #(
    .INIT(64'h00000000002200E2)) 
    vid_sof_i_12
       (.I0(\reg_reg[16] ),
        .I1(out[1]),
        .I2(\rst_cnt_reg[3]_2 ),
        .I3(state_cur),
        .I4(pktr_empty),
        .I5(out[0]),
        .O(vid_sof_i_12_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    vid_sof_i_13
       (.I0(out[0]),
        .I1(state_cur),
        .O(state_cur_reg[0]));
  LUT6 #(
    .INIT(64'h0000750000000000)) 
    vid_sof_i_14
       (.I0(\cnt_reg[16]_0 ),
        .I1(DOP[0]),
        .I2(err_late_last_reg_0),
        .I3(out[0]),
        .I4(state_cur),
        .I5(out[1]),
        .O(vid_sof_i_14_n_0));
  LUT6 #(
    .INIT(64'h0000FD0000000000)) 
    vid_sof_i_16
       (.I0(\cnt_reg[16]_0 ),
        .I1(err_late_last_reg_0),
        .I2(DOP[0]),
        .I3(out[0]),
        .I4(state_cur),
        .I5(out[1]),
        .O(vid_sof_i_16_n_0));
  LUT5 #(
    .INIT(32'hA2AAAAAA)) 
    vid_sof_i_2
       (.I0(vin_sof),
        .I1(out[1]),
        .I2(state_cur),
        .I3(out[0]),
        .I4(\cnt_reg[16]_0 ),
        .O(vid_sof_i_2_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    vid_sof_i_3
       (.I0(out[0]),
        .I1(out[1]),
        .I2(state_cur),
        .O(vid_sof_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFF20)) 
    vid_sof_i_4
       (.I0(DOP[0]),
        .I1(pktr_empty),
        .I2(state_cur),
        .I3(vid_sof_i_7_n_0),
        .I4(vid_sof_i_8_n_0),
        .O(state_nxt[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAEAAAAA)) 
    vid_sof_i_5
       (.I0(vid_sof_i_9_n_0),
        .I1(vid_sof_i_3_n_0),
        .I2(state_cur_reg[2]),
        .I3(state_nxt113_out),
        .I4(\reg_reg[18] [0]),
        .I5(vid_sof_i_11_n_0),
        .O(state_nxt[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAEAAAAA)) 
    vid_sof_i_6
       (.I0(vid_sof_i_12_n_0),
        .I1(vid_sof_i_3_n_0),
        .I2(state_cur_reg[0]),
        .I3(state_nxt113_out),
        .I4(\reg_reg[18] [0]),
        .I5(vid_sof_i_14_n_0),
        .O(state_nxt[0]));
  LUT5 #(
    .INIT(32'h000000E0)) 
    vid_sof_i_7
       (.I0(pktr_empty),
        .I1(\rst_cnt_reg[3]_3 ),
        .I2(out[1]),
        .I3(state_cur),
        .I4(out[0]),
        .O(vid_sof_i_7_n_0));
  LUT6 #(
    .INIT(64'hAAAEAAAAAAAAAAAA)) 
    vid_sof_i_8
       (.I0(vid_sof_i_16_n_0),
        .I1(\reg_reg[18] [0]),
        .I2(state_cur),
        .I3(out[1]),
        .I4(state_nxt113_out),
        .I5(out[0]),
        .O(vid_sof_i_8_n_0));
  LUT5 #(
    .INIT(32'h020002AA)) 
    vid_sof_i_9
       (.I0(state_cur),
        .I1(out[0]),
        .I2(out[1]),
        .I3(pktr_empty),
        .I4(DOP[0]),
        .O(vid_sof_i_9_n_0));
  FDRE vid_sof_reg
       (.C(clk),
        .CE(1'b1),
        .D(vid_sof_i_1_n_0),
        .Q(vin_sof),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_csi_pkt_recv" *) 
module TySOM_1_7Z030_mipi_csi_0_mipi_csi_pkt_recv
   (DIP,
    phy_err_bad_ecc,
    pkt_data,
    stat_running,
    \cnt_reg[0] ,
    phy_err_overflow_reg,
    err_unk_pkt_reg,
    out_clk,
    out,
    Q,
    p_0_in,
    pktw_full,
    out_data,
    reg_out2_reg);
  output [1:0]DIP;
  output phy_err_bad_ecc;
  output [31:0]pkt_data;
  output stat_running;
  output \cnt_reg[0] ;
  output phy_err_overflow_reg;
  output err_unk_pkt_reg;
  input out_clk;
  input out;
  input [0:0]Q;
  input p_0_in;
  input pktw_full;
  input [3:0]out_data;
  input reg_out2_reg;

  wire [1:0]DIP;
  wire \FSM_sequential_state_cur[0]_i_2_n_0 ;
  wire \FSM_sequential_state_cur[0]_i_3_n_0 ;
  wire \FSM_sequential_state_cur[1]_i_1_n_0 ;
  wire \FSM_sequential_state_cur[1]_i_2_n_0 ;
  wire \FSM_sequential_state_cur[2]_i_1_n_0 ;
  wire \FSM_sequential_state_cur[2]_i_2_n_0 ;
  wire \FSM_sequential_state_cur[2]_i_3__0_n_0 ;
  wire \FSM_sequential_state_cur_reg[0]_i_1_n_0 ;
  wire [0:0]Q;
  wire btsl;
  wire btsl0_in;
  wire capture_1;
  wire \cnt_reg[0] ;
  wire [31:22]data_word_1;
  wire [5:0]ecc_exp_0;
  wire [7:6]ecc_rx_0;
  wire ecc_valid_1;
  wire ecc_valid_1_i_1_n_0;
  wire ecc_valid_1_i_4_n_0;
  wire ecc_valid_1_i_5_n_0;
  wire err_bad_ecc_c;
  wire err_unk_pkt_reg;
  wire [7:6]hdr_b2;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__1_n_0;
  wire \lane_gen[0].sync_lane[0]_i_2_n_0 ;
  wire \lane_gen[0].sync_lane[0]_i_3_n_0 ;
  wire \lane_gen[0].sync_lane_reg ;
  wire \lane_gen[1].sync_lane[1]_i_1_n_0 ;
  wire \lane_gen[1].sync_lane[1]_i_2_n_0 ;
  wire \lane_gen[1].sync_lane[1]_i_3_n_0 ;
  wire \lane_gen[1].sync_lane_reg ;
  wire lp_fall;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__0_n_4;
  wire minusOp_carry__0_n_5;
  wire minusOp_carry__0_n_6;
  wire minusOp_carry__0_n_7;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__1_n_4;
  wire minusOp_carry__1_n_5;
  wire minusOp_carry__1_n_6;
  wire minusOp_carry__1_n_7;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry__2_i_2_n_0;
  wire minusOp_carry__2_i_3_n_0;
  wire minusOp_carry__2_n_0;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry__2_n_5;
  wire minusOp_carry__2_n_6;
  wire minusOp_carry__2_n_7;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4__0_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire minusOp_carry_n_4;
  wire minusOp_carry_n_5;
  wire minusOp_carry_n_6;
  wire minusOp_carry_n_7;
  wire \minusOp_inferred__0/i__carry__0_n_0 ;
  wire \minusOp_inferred__0/i__carry__0_n_1 ;
  wire \minusOp_inferred__0/i__carry__0_n_2 ;
  wire \minusOp_inferred__0/i__carry__0_n_3 ;
  wire \minusOp_inferred__0/i__carry__0_n_4 ;
  wire \minusOp_inferred__0/i__carry__0_n_5 ;
  wire \minusOp_inferred__0/i__carry__0_n_6 ;
  wire \minusOp_inferred__0/i__carry__0_n_7 ;
  wire \minusOp_inferred__0/i__carry__1_n_0 ;
  wire \minusOp_inferred__0/i__carry__1_n_1 ;
  wire \minusOp_inferred__0/i__carry__1_n_2 ;
  wire \minusOp_inferred__0/i__carry__1_n_3 ;
  wire \minusOp_inferred__0/i__carry__1_n_4 ;
  wire \minusOp_inferred__0/i__carry__1_n_5 ;
  wire \minusOp_inferred__0/i__carry__1_n_6 ;
  wire \minusOp_inferred__0/i__carry__1_n_7 ;
  wire \minusOp_inferred__0/i__carry__2_n_1 ;
  wire \minusOp_inferred__0/i__carry__2_n_2 ;
  wire \minusOp_inferred__0/i__carry__2_n_3 ;
  wire \minusOp_inferred__0/i__carry__2_n_4 ;
  wire \minusOp_inferred__0/i__carry__2_n_5 ;
  wire \minusOp_inferred__0/i__carry__2_n_6 ;
  wire \minusOp_inferred__0/i__carry__2_n_7 ;
  wire \minusOp_inferred__0/i__carry_n_0 ;
  wire \minusOp_inferred__0/i__carry_n_1 ;
  wire \minusOp_inferred__0/i__carry_n_2 ;
  wire \minusOp_inferred__0/i__carry_n_3 ;
  wire \minusOp_inferred__0/i__carry_n_4 ;
  wire \minusOp_inferred__0/i__carry_n_5 ;
  wire \minusOp_inferred__0/i__carry_n_6 ;
  wire \minusOp_inferred__0/i__carry_n_7 ;
  wire out;
  wire out_clk;
  wire [3:0]out_data;
  wire p_0_in;
  wire p_0_in_0;
  wire phy_err_bad_ecc;
  wire phy_err_overflow_reg;
  wire [31:0]pkt_data;
  wire pkt_hdr_i_1_n_0;
  wire pkt_valid0;
  wire pktw_full;
  wire pktw_valid;
  wire [15:1]pl_len_1;
  wire \pl_len_1[10]_i_1_n_0 ;
  wire \pl_len_1[11]_i_1_n_0 ;
  wire \pl_len_1[12]_i_1_n_0 ;
  wire \pl_len_1[13]_i_1_n_0 ;
  wire \pl_len_1[14]_i_1_n_0 ;
  wire \pl_len_1[15]_i_1_n_0 ;
  wire \pl_len_1[16]_i_1_n_0 ;
  wire \pl_len_1[16]_i_2_n_0 ;
  wire \pl_len_1[1]_i_1_n_0 ;
  wire \pl_len_1[2]_i_1_n_0 ;
  wire \pl_len_1[3]_i_1_n_0 ;
  wire \pl_len_1[4]_i_1_n_0 ;
  wire \pl_len_1[5]_i_1_n_0 ;
  wire \pl_len_1[6]_i_1_n_0 ;
  wire \pl_len_1[7]_i_1_n_0 ;
  wire \pl_len_1[8]_i_1_n_0 ;
  wire \pl_len_1[9]_i_1_n_0 ;
  wire [2:0]plusOp;
  wire reg_out2_reg;
  wire stat_running;
  wire stat_running_i_1_n_0;
  (* RTL_KEEP = "yes" *) wire [2:0]state_cur;
  wire [1:1]state_nxt;
  wire [2:0]sync_cnt;
  wire \sync_cnt[2]_i_1_n_0 ;
  wire x_i_10_n_0;
  wire x_i_11_n_0;
  wire x_i_12_n_0;
  wire x_i_13_n_0;
  wire x_i_1_n_0;
  wire x_i_2_n_0;
  wire x_i_3_n_0;
  wire x_i_4_n_0;
  wire x_i_6_n_0;
  wire x_i_7_n_0;
  wire x_i_8_n_0;
  wire x_i_9_n_0;
  wire x_n_0;
  wire [2:2]NLW_minusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_minusOp_inferred__0/i__carry__2_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hCC407070FF407070)) 
    \FSM_sequential_state_cur[0]_i_2 
       (.I0(lp_fall),
        .I1(state_cur[0]),
        .I2(reg_out2_reg),
        .I3(capture_1),
        .I4(state_cur[2]),
        .I5(p_0_in_0),
        .O(\FSM_sequential_state_cur[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F7FF0F0707FF0FF)) 
    \FSM_sequential_state_cur[0]_i_3 
       (.I0(ecc_valid_1),
        .I1(\FSM_sequential_state_cur[2]_i_3__0_n_0 ),
        .I2(state_cur[0]),
        .I3(x_i_9_n_0),
        .I4(capture_1),
        .I5(state_cur[2]),
        .O(\FSM_sequential_state_cur[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \FSM_sequential_state_cur[1]_i_1 
       (.I0(\FSM_sequential_state_cur[1]_i_2_n_0 ),
        .I1(state_cur[1]),
        .I2(lp_fall),
        .I3(reg_out2_reg),
        .I4(state_cur[0]),
        .O(\FSM_sequential_state_cur[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5F5F4F5F4F5F4F5F)) 
    \FSM_sequential_state_cur[1]_i_2 
       (.I0(state_cur[0]),
        .I1(p_0_in_0),
        .I2(capture_1),
        .I3(state_cur[2]),
        .I4(\lane_gen[1].sync_lane_reg ),
        .I5(\lane_gen[0].sync_lane_reg ),
        .O(\FSM_sequential_state_cur[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB888BB88)) 
    \FSM_sequential_state_cur[2]_i_1 
       (.I0(\FSM_sequential_state_cur[2]_i_2_n_0 ),
        .I1(state_cur[1]),
        .I2(p_0_in_0),
        .I3(state_cur[2]),
        .I4(capture_1),
        .O(\FSM_sequential_state_cur[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF808080FFFF0000)) 
    \FSM_sequential_state_cur[2]_i_2 
       (.I0(ecc_valid_1),
        .I1(\FSM_sequential_state_cur[2]_i_3__0_n_0 ),
        .I2(state_cur[0]),
        .I3(p_0_in_0),
        .I4(state_cur[2]),
        .I5(capture_1),
        .O(\FSM_sequential_state_cur[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state_cur[2]_i_3__0 
       (.I0(pkt_data[7]),
        .I1(pkt_data[6]),
        .I2(pkt_data[17]),
        .I3(pkt_data[16]),
        .O(\FSM_sequential_state_cur[2]_i_3__0_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_cur_reg[0] 
       (.C(out_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_cur_reg[0]_i_1_n_0 ),
        .Q(state_cur[0]),
        .R(Q));
  MUXF7 \FSM_sequential_state_cur_reg[0]_i_1 
       (.I0(\FSM_sequential_state_cur[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state_cur[0]_i_3_n_0 ),
        .O(\FSM_sequential_state_cur_reg[0]_i_1_n_0 ),
        .S(state_cur[1]));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_cur_reg[1] 
       (.C(out_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_cur[1]_i_1_n_0 ),
        .Q(state_cur[1]),
        .R(Q));
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_cur_reg[2] 
       (.C(out_clk),
        .CE(1'b1),
        .D(\FSM_sequential_state_cur[2]_i_1_n_0 ),
        .Q(state_cur[2]),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bl.fifo_36_inst_bl.fifo_36_bl_i_2 
       (.I0(pktw_valid),
        .I1(pktw_full),
        .O(err_unk_pkt_reg));
  FDRE capture_1_reg
       (.C(out_clk),
        .CE(1'b1),
        .D(btsl0_in),
        .Q(capture_1),
        .R(\sync_cnt[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \cnt[3]_i_2__1 
       (.I0(phy_err_bad_ecc),
        .I1(p_0_in),
        .O(\cnt_reg[0] ));
  FDRE \data_word_1_reg[22] 
       (.C(out_clk),
        .CE(1'b1),
        .D(hdr_b2[6]),
        .Q(data_word_1[22]),
        .R(1'b0));
  FDRE \data_word_1_reg[23] 
       (.C(out_clk),
        .CE(1'b1),
        .D(hdr_b2[7]),
        .Q(data_word_1[23]),
        .R(1'b0));
  FDRE \data_word_1_reg[30] 
       (.C(out_clk),
        .CE(1'b1),
        .D(ecc_rx_0[6]),
        .Q(data_word_1[30]),
        .R(1'b0));
  FDRE \data_word_1_reg[31] 
       (.C(out_clk),
        .CE(1'b1),
        .D(ecc_rx_0[7]),
        .Q(data_word_1[31]),
        .R(1'b0));
  TySOM_1_7Z030_mipi_csi_0_mipi_ecc ecc_I
       (.Q(hdr_b2),
        .ecc_exp_0(ecc_exp_0),
        .\lane_gen[0].data_shift_reg ({data_word_1[23:22],pkt_data[23:18]}),
        .\lane_gen[1].data_shift_reg ({pkt_data[25:24],pkt_data[15:12]}),
        .\pkt_data_reg[16] (pkt_data[16]),
        .\pkt_data_reg[17] (pkt_data[17]),
        .\pkt_data_reg[26] (pkt_data[26]),
        .\pkt_data_reg[27] (pkt_data[27]),
        .\pkt_data_reg[4] (pkt_data[4]),
        .\pkt_data_reg[5] (pkt_data[5]),
        .\pkt_data_reg[6] (pkt_data[6]),
        .\pkt_data_reg[7] (pkt_data[7]));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    ecc_valid_1_i_1
       (.I0(ecc_exp_0[1]),
        .I1(pkt_data[29]),
        .I2(ecc_exp_0[0]),
        .I3(pkt_data[28]),
        .I4(ecc_valid_1_i_4_n_0),
        .I5(ecc_valid_1_i_5_n_0),
        .O(ecc_valid_1_i_1_n_0));
  LUT4 #(
    .INIT(16'h1001)) 
    ecc_valid_1_i_4
       (.I0(ecc_rx_0[7]),
        .I1(ecc_rx_0[6]),
        .I2(data_word_1[31]),
        .I3(ecc_exp_0[5]),
        .O(ecc_valid_1_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ecc_valid_1_i_5
       (.I0(ecc_exp_0[4]),
        .I1(data_word_1[30]),
        .I2(ecc_exp_0[3]),
        .I3(pkt_data[31]),
        .I4(pkt_data[30]),
        .I5(ecc_exp_0[2]),
        .O(ecc_valid_1_i_5_n_0));
  FDRE ecc_valid_1_reg
       (.C(out_clk),
        .CE(1'b1),
        .D(ecc_valid_1_i_1_n_0),
        .Q(ecc_valid_1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \eqOp_inferred__2/i_ 
       (.I0(sync_cnt[1]),
        .I1(sync_cnt[2]),
        .I2(sync_cnt[0]),
        .O(btsl0_in));
  LUT5 #(
    .INIT(32'h00200000)) 
    err_bad_ecc_i_1
       (.I0(state_cur[0]),
        .I1(ecc_valid_1),
        .I2(capture_1),
        .I3(state_cur[2]),
        .I4(state_cur[1]),
        .O(err_bad_ecc_c));
  FDRE err_bad_ecc_reg
       (.C(out_clk),
        .CE(1'b1),
        .D(err_bad_ecc_c),
        .Q(phy_err_bad_ecc),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(pl_len_1[8]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(pl_len_1[7]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_3
       (.I0(pl_len_1[6]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_4
       (.I0(pl_len_1[5]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(pl_len_1[12]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(pl_len_1[11]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_3
       (.I0(pl_len_1[10]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_4
       (.I0(pl_len_1[9]),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(p_0_in_0),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_2
       (.I0(pl_len_1[15]),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_3
       (.I0(pl_len_1[14]),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_4
       (.I0(pl_len_1[13]),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(pl_len_1[4]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(pl_len_1[3]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(pl_len_1[2]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_4__1
       (.I0(pl_len_1[1]),
        .O(i__carry_i_4__1_n_0));
  FDRE \lane_gen[0].data_shift_reg[14] 
       (.C(out_clk),
        .CE(1'b1),
        .D(out_data[0]),
        .Q(hdr_b2[6]),
        .R(1'b0));
  FDRE \lane_gen[0].data_shift_reg[15] 
       (.C(out_clk),
        .CE(1'b1),
        .D(out_data[1]),
        .Q(hdr_b2[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \lane_gen[0].sync_lane[0]_i_1 
       (.I0(pkt_data[7]),
        .I1(pkt_data[6]),
        .I2(pkt_data[17]),
        .I3(pkt_data[16]),
        .I4(\lane_gen[0].sync_lane[0]_i_2_n_0 ),
        .I5(\lane_gen[0].sync_lane[0]_i_3_n_0 ),
        .O(btsl));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \lane_gen[0].sync_lane[0]_i_2 
       (.I0(data_word_1[22]),
        .I1(data_word_1[23]),
        .I2(pkt_data[23]),
        .I3(pkt_data[22]),
        .I4(hdr_b2[6]),
        .I5(hdr_b2[7]),
        .O(\lane_gen[0].sync_lane[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \lane_gen[0].sync_lane[0]_i_3 
       (.I0(pkt_data[18]),
        .I1(pkt_data[19]),
        .I2(pkt_data[4]),
        .I3(pkt_data[5]),
        .I4(pkt_data[21]),
        .I5(pkt_data[20]),
        .O(\lane_gen[0].sync_lane[0]_i_3_n_0 ));
  FDRE \lane_gen[0].sync_lane_reg[0] 
       (.C(out_clk),
        .CE(1'b1),
        .D(btsl),
        .Q(\lane_gen[0].sync_lane_reg ),
        .R(1'b0));
  FDRE \lane_gen[1].data_shift_reg[30] 
       (.C(out_clk),
        .CE(1'b1),
        .D(out_data[2]),
        .Q(ecc_rx_0[6]),
        .R(1'b0));
  FDRE \lane_gen[1].data_shift_reg[31] 
       (.C(out_clk),
        .CE(1'b1),
        .D(out_data[3]),
        .Q(ecc_rx_0[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \lane_gen[1].sync_lane[1]_i_1 
       (.I0(\lane_gen[1].sync_lane[1]_i_2_n_0 ),
        .I1(pkt_data[13]),
        .I2(pkt_data[12]),
        .I3(pkt_data[15]),
        .I4(pkt_data[14]),
        .I5(\lane_gen[1].sync_lane[1]_i_3_n_0 ),
        .O(\lane_gen[1].sync_lane[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \lane_gen[1].sync_lane[1]_i_2 
       (.I0(data_word_1[30]),
        .I1(data_word_1[31]),
        .I2(pkt_data[31]),
        .I3(pkt_data[30]),
        .I4(ecc_rx_0[6]),
        .I5(ecc_rx_0[7]),
        .O(\lane_gen[1].sync_lane[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \lane_gen[1].sync_lane[1]_i_3 
       (.I0(pkt_data[26]),
        .I1(pkt_data[27]),
        .I2(pkt_data[24]),
        .I3(pkt_data[25]),
        .I4(pkt_data[29]),
        .I5(pkt_data[28]),
        .O(\lane_gen[1].sync_lane[1]_i_3_n_0 ));
  FDRE \lane_gen[1].sync_lane_reg[1] 
       (.C(out_clk),
        .CE(1'b1),
        .D(\lane_gen[1].sync_lane[1]_i_1_n_0 ),
        .Q(\lane_gen[1].sync_lane_reg ),
        .R(1'b0));
  FDSE lp_fall_reg
       (.C(out_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(lp_fall),
        .S(out));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(pkt_data[10]),
        .DI({pkt_data[14:12],1'b0}),
        .O({minusOp_carry_n_4,minusOp_carry_n_5,minusOp_carry_n_6,minusOp_carry_n_7}),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4__0_n_0}));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({pkt_data[18],pkt_data[25:24],pkt_data[15]}),
        .O({minusOp_carry__0_n_4,minusOp_carry__0_n_5,minusOp_carry__0_n_6,minusOp_carry__0_n_7}),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1
       (.I0(pkt_data[18]),
        .O(minusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2
       (.I0(pkt_data[25]),
        .O(minusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3
       (.I0(pkt_data[24]),
        .O(minusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4
       (.I0(pkt_data[15]),
        .O(minusOp_carry__0_i_4_n_0));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(pkt_data[22:19]),
        .O({minusOp_carry__1_n_4,minusOp_carry__1_n_5,minusOp_carry__1_n_6,minusOp_carry__1_n_7}),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1
       (.I0(pkt_data[22]),
        .O(minusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2
       (.I0(pkt_data[21]),
        .O(minusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3
       (.I0(pkt_data[20]),
        .O(minusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4
       (.I0(pkt_data[19]),
        .O(minusOp_carry__1_i_4_n_0));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({minusOp_carry__2_n_0,NLW_minusOp_carry__2_CO_UNCONNECTED[2],minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,data_word_1[23:22],pkt_data[23]}),
        .O({NLW_minusOp_carry__2_O_UNCONNECTED[3],minusOp_carry__2_n_5,minusOp_carry__2_n_6,minusOp_carry__2_n_7}),
        .S({1'b1,minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(data_word_1[23]),
        .O(minusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2
       (.I0(data_word_1[22]),
        .O(minusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3
       (.I0(pkt_data[23]),
        .O(minusOp_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(pkt_data[14]),
        .O(minusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2
       (.I0(pkt_data[13]),
        .O(minusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3
       (.I0(pkt_data[12]),
        .O(minusOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    minusOp_carry_i_4__0
       (.I0(pkt_data[11]),
        .O(minusOp_carry_i_4__0_n_0));
  CARRY4 \minusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\minusOp_inferred__0/i__carry_n_0 ,\minusOp_inferred__0/i__carry_n_1 ,\minusOp_inferred__0/i__carry_n_2 ,\minusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({pl_len_1[4:2],1'b0}),
        .O({\minusOp_inferred__0/i__carry_n_4 ,\minusOp_inferred__0/i__carry_n_5 ,\minusOp_inferred__0/i__carry_n_6 ,\minusOp_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4__1_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__0 
       (.CI(\minusOp_inferred__0/i__carry_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__0_n_0 ,\minusOp_inferred__0/i__carry__0_n_1 ,\minusOp_inferred__0/i__carry__0_n_2 ,\minusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(pl_len_1[8:5]),
        .O({\minusOp_inferred__0/i__carry__0_n_4 ,\minusOp_inferred__0/i__carry__0_n_5 ,\minusOp_inferred__0/i__carry__0_n_6 ,\minusOp_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__1 
       (.CI(\minusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\minusOp_inferred__0/i__carry__1_n_0 ,\minusOp_inferred__0/i__carry__1_n_1 ,\minusOp_inferred__0/i__carry__1_n_2 ,\minusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(pl_len_1[12:9]),
        .O({\minusOp_inferred__0/i__carry__1_n_4 ,\minusOp_inferred__0/i__carry__1_n_5 ,\minusOp_inferred__0/i__carry__1_n_6 ,\minusOp_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \minusOp_inferred__0/i__carry__2 
       (.CI(\minusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_minusOp_inferred__0/i__carry__2_CO_UNCONNECTED [3],\minusOp_inferred__0/i__carry__2_n_1 ,\minusOp_inferred__0/i__carry__2_n_2 ,\minusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,pl_len_1[15:13]}),
        .O({\minusOp_inferred__0/i__carry__2_n_4 ,\minusOp_inferred__0/i__carry__2_n_5 ,\minusOp_inferred__0/i__carry__2_n_6 ,\minusOp_inferred__0/i__carry__2_n_7 }),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    phy_err_overflow_i_1
       (.I0(pktw_valid),
        .I1(pktw_full),
        .O(phy_err_overflow_reg));
  FDRE \pkt_data_reg[0] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[2]),
        .Q(pkt_data[0]),
        .R(1'b0));
  FDRE \pkt_data_reg[10] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[12]),
        .Q(pkt_data[10]),
        .R(1'b0));
  FDRE \pkt_data_reg[11] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[13]),
        .Q(pkt_data[11]),
        .R(1'b0));
  FDRE \pkt_data_reg[12] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[14]),
        .Q(pkt_data[12]),
        .R(1'b0));
  FDRE \pkt_data_reg[13] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[15]),
        .Q(pkt_data[13]),
        .R(1'b0));
  FDRE \pkt_data_reg[14] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[24]),
        .Q(pkt_data[14]),
        .R(1'b0));
  FDRE \pkt_data_reg[15] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[25]),
        .Q(pkt_data[15]),
        .R(1'b0));
  FDRE \pkt_data_reg[16] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[18]),
        .Q(pkt_data[16]),
        .R(1'b0));
  FDRE \pkt_data_reg[17] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[19]),
        .Q(pkt_data[17]),
        .R(1'b0));
  FDRE \pkt_data_reg[18] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[20]),
        .Q(pkt_data[18]),
        .R(1'b0));
  FDRE \pkt_data_reg[19] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[21]),
        .Q(pkt_data[19]),
        .R(1'b0));
  FDRE \pkt_data_reg[1] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[3]),
        .Q(pkt_data[1]),
        .R(1'b0));
  FDRE \pkt_data_reg[20] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[22]),
        .Q(pkt_data[20]),
        .R(1'b0));
  FDRE \pkt_data_reg[21] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[23]),
        .Q(pkt_data[21]),
        .R(1'b0));
  FDRE \pkt_data_reg[22] 
       (.C(out_clk),
        .CE(1'b1),
        .D(data_word_1[22]),
        .Q(pkt_data[22]),
        .R(1'b0));
  FDRE \pkt_data_reg[23] 
       (.C(out_clk),
        .CE(1'b1),
        .D(data_word_1[23]),
        .Q(pkt_data[23]),
        .R(1'b0));
  FDRE \pkt_data_reg[24] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[26]),
        .Q(pkt_data[24]),
        .R(1'b0));
  FDRE \pkt_data_reg[25] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[27]),
        .Q(pkt_data[25]),
        .R(1'b0));
  FDRE \pkt_data_reg[26] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[28]),
        .Q(pkt_data[26]),
        .R(1'b0));
  FDRE \pkt_data_reg[27] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[29]),
        .Q(pkt_data[27]),
        .R(1'b0));
  FDRE \pkt_data_reg[28] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[30]),
        .Q(pkt_data[28]),
        .R(1'b0));
  FDRE \pkt_data_reg[29] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[31]),
        .Q(pkt_data[29]),
        .R(1'b0));
  FDRE \pkt_data_reg[2] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[4]),
        .Q(pkt_data[2]),
        .R(1'b0));
  FDRE \pkt_data_reg[30] 
       (.C(out_clk),
        .CE(1'b1),
        .D(data_word_1[30]),
        .Q(pkt_data[30]),
        .R(1'b0));
  FDRE \pkt_data_reg[31] 
       (.C(out_clk),
        .CE(1'b1),
        .D(data_word_1[31]),
        .Q(pkt_data[31]),
        .R(1'b0));
  FDRE \pkt_data_reg[3] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[5]),
        .Q(pkt_data[3]),
        .R(1'b0));
  FDRE \pkt_data_reg[4] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[6]),
        .Q(pkt_data[4]),
        .R(1'b0));
  FDRE \pkt_data_reg[5] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[7]),
        .Q(pkt_data[5]),
        .R(1'b0));
  FDRE \pkt_data_reg[6] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[16]),
        .Q(pkt_data[6]),
        .R(1'b0));
  FDRE \pkt_data_reg[7] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[17]),
        .Q(pkt_data[7]),
        .R(1'b0));
  FDRE \pkt_data_reg[8] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[10]),
        .Q(pkt_data[8]),
        .R(1'b0));
  FDRE \pkt_data_reg[9] 
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_data[11]),
        .Q(pkt_data[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    pkt_hdr_i_1
       (.I0(state_cur[2]),
        .I1(state_cur[0]),
        .I2(state_cur[1]),
        .O(pkt_hdr_i_1_n_0));
  FDRE pkt_hdr_reg
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_hdr_i_1_n_0),
        .Q(DIP[1]),
        .R(1'b0));
  FDRE pkt_last_reg
       (.C(out_clk),
        .CE(1'b1),
        .D(x_n_0),
        .Q(DIP[0]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00800C00)) 
    pkt_valid_i_1
       (.I0(ecc_valid_1),
        .I1(capture_1),
        .I2(state_cur[0]),
        .I3(state_cur[2]),
        .I4(state_cur[1]),
        .O(pkt_valid0));
  FDRE pkt_valid_reg
       (.C(out_clk),
        .CE(1'b1),
        .D(pkt_valid0),
        .Q(pktw_valid),
        .R(Q));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \pl_len_1[10]_i_1 
       (.I0(\minusOp_inferred__0/i__carry__1_n_6 ),
        .I1(state_cur[1]),
        .I2(state_cur[0]),
        .I3(state_cur[2]),
        .I4(minusOp_carry__1_n_6),
        .O(\pl_len_1[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \pl_len_1[11]_i_1 
       (.I0(\minusOp_inferred__0/i__carry__1_n_5 ),
        .I1(state_cur[1]),
        .I2(state_cur[0]),
        .I3(state_cur[2]),
        .I4(minusOp_carry__1_n_5),
        .O(\pl_len_1[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \pl_len_1[12]_i_1 
       (.I0(\minusOp_inferred__0/i__carry__1_n_4 ),
        .I1(state_cur[1]),
        .I2(state_cur[0]),
        .I3(state_cur[2]),
        .I4(minusOp_carry__1_n_4),
        .O(\pl_len_1[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \pl_len_1[13]_i_1 
       (.I0(\minusOp_inferred__0/i__carry__2_n_7 ),
        .I1(state_cur[1]),
        .I2(state_cur[0]),
        .I3(state_cur[2]),
        .I4(minusOp_carry__2_n_7),
        .O(\pl_len_1[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAE2AAAA)) 
    \pl_len_1[14]_i_1 
       (.I0(\minusOp_inferred__0/i__carry__2_n_6 ),
        .I1(state_cur[0]),
        .I2(minusOp_carry__2_n_6),
        .I3(state_cur[2]),
        .I4(state_cur[1]),
        .O(\pl_len_1[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAE2AAAA)) 
    \pl_len_1[15]_i_1 
       (.I0(\minusOp_inferred__0/i__carry__2_n_5 ),
        .I1(state_cur[0]),
        .I2(minusOp_carry__2_n_5),
        .I3(state_cur[2]),
        .I4(state_cur[1]),
        .O(\pl_len_1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8888A888)) 
    \pl_len_1[16]_i_1 
       (.I0(capture_1),
        .I1(p_0_in_0),
        .I2(state_cur[1]),
        .I3(state_cur[0]),
        .I4(state_cur[2]),
        .O(\pl_len_1[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAE2AAAA)) 
    \pl_len_1[16]_i_2 
       (.I0(\minusOp_inferred__0/i__carry__2_n_4 ),
        .I1(state_cur[0]),
        .I2(minusOp_carry__2_n_0),
        .I3(state_cur[2]),
        .I4(state_cur[1]),
        .O(\pl_len_1[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \pl_len_1[1]_i_1 
       (.I0(\minusOp_inferred__0/i__carry_n_7 ),
        .I1(state_cur[1]),
        .I2(state_cur[0]),
        .I3(state_cur[2]),
        .I4(minusOp_carry_n_7),
        .O(\pl_len_1[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \pl_len_1[2]_i_1 
       (.I0(\minusOp_inferred__0/i__carry_n_6 ),
        .I1(state_cur[1]),
        .I2(state_cur[0]),
        .I3(state_cur[2]),
        .I4(minusOp_carry_n_6),
        .O(\pl_len_1[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \pl_len_1[3]_i_1 
       (.I0(\minusOp_inferred__0/i__carry_n_5 ),
        .I1(state_cur[1]),
        .I2(state_cur[0]),
        .I3(state_cur[2]),
        .I4(minusOp_carry_n_5),
        .O(\pl_len_1[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \pl_len_1[4]_i_1 
       (.I0(\minusOp_inferred__0/i__carry_n_4 ),
        .I1(state_cur[1]),
        .I2(state_cur[0]),
        .I3(state_cur[2]),
        .I4(minusOp_carry_n_4),
        .O(\pl_len_1[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \pl_len_1[5]_i_1 
       (.I0(\minusOp_inferred__0/i__carry__0_n_7 ),
        .I1(state_cur[1]),
        .I2(state_cur[0]),
        .I3(state_cur[2]),
        .I4(minusOp_carry__0_n_7),
        .O(\pl_len_1[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \pl_len_1[6]_i_1 
       (.I0(\minusOp_inferred__0/i__carry__0_n_6 ),
        .I1(state_cur[1]),
        .I2(state_cur[0]),
        .I3(state_cur[2]),
        .I4(minusOp_carry__0_n_6),
        .O(\pl_len_1[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \pl_len_1[7]_i_1 
       (.I0(\minusOp_inferred__0/i__carry__0_n_5 ),
        .I1(state_cur[1]),
        .I2(state_cur[0]),
        .I3(state_cur[2]),
        .I4(minusOp_carry__0_n_5),
        .O(\pl_len_1[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \pl_len_1[8]_i_1 
       (.I0(\minusOp_inferred__0/i__carry__0_n_4 ),
        .I1(state_cur[1]),
        .I2(state_cur[0]),
        .I3(state_cur[2]),
        .I4(minusOp_carry__0_n_4),
        .O(\pl_len_1[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \pl_len_1[9]_i_1 
       (.I0(\minusOp_inferred__0/i__carry__1_n_7 ),
        .I1(state_cur[1]),
        .I2(state_cur[0]),
        .I3(state_cur[2]),
        .I4(minusOp_carry__1_n_7),
        .O(\pl_len_1[9]_i_1_n_0 ));
  FDRE \pl_len_1_reg[10] 
       (.C(out_clk),
        .CE(\pl_len_1[16]_i_1_n_0 ),
        .D(\pl_len_1[10]_i_1_n_0 ),
        .Q(pl_len_1[10]),
        .R(1'b0));
  FDRE \pl_len_1_reg[11] 
       (.C(out_clk),
        .CE(\pl_len_1[16]_i_1_n_0 ),
        .D(\pl_len_1[11]_i_1_n_0 ),
        .Q(pl_len_1[11]),
        .R(1'b0));
  FDRE \pl_len_1_reg[12] 
       (.C(out_clk),
        .CE(\pl_len_1[16]_i_1_n_0 ),
        .D(\pl_len_1[12]_i_1_n_0 ),
        .Q(pl_len_1[12]),
        .R(1'b0));
  FDRE \pl_len_1_reg[13] 
       (.C(out_clk),
        .CE(\pl_len_1[16]_i_1_n_0 ),
        .D(\pl_len_1[13]_i_1_n_0 ),
        .Q(pl_len_1[13]),
        .R(1'b0));
  FDRE \pl_len_1_reg[14] 
       (.C(out_clk),
        .CE(\pl_len_1[16]_i_1_n_0 ),
        .D(\pl_len_1[14]_i_1_n_0 ),
        .Q(pl_len_1[14]),
        .R(1'b0));
  FDRE \pl_len_1_reg[15] 
       (.C(out_clk),
        .CE(\pl_len_1[16]_i_1_n_0 ),
        .D(\pl_len_1[15]_i_1_n_0 ),
        .Q(pl_len_1[15]),
        .R(1'b0));
  FDRE \pl_len_1_reg[16] 
       (.C(out_clk),
        .CE(\pl_len_1[16]_i_1_n_0 ),
        .D(\pl_len_1[16]_i_2_n_0 ),
        .Q(p_0_in_0),
        .R(1'b0));
  FDRE \pl_len_1_reg[1] 
       (.C(out_clk),
        .CE(\pl_len_1[16]_i_1_n_0 ),
        .D(\pl_len_1[1]_i_1_n_0 ),
        .Q(pl_len_1[1]),
        .R(1'b0));
  FDRE \pl_len_1_reg[2] 
       (.C(out_clk),
        .CE(\pl_len_1[16]_i_1_n_0 ),
        .D(\pl_len_1[2]_i_1_n_0 ),
        .Q(pl_len_1[2]),
        .R(1'b0));
  FDRE \pl_len_1_reg[3] 
       (.C(out_clk),
        .CE(\pl_len_1[16]_i_1_n_0 ),
        .D(\pl_len_1[3]_i_1_n_0 ),
        .Q(pl_len_1[3]),
        .R(1'b0));
  FDRE \pl_len_1_reg[4] 
       (.C(out_clk),
        .CE(\pl_len_1[16]_i_1_n_0 ),
        .D(\pl_len_1[4]_i_1_n_0 ),
        .Q(pl_len_1[4]),
        .R(1'b0));
  FDRE \pl_len_1_reg[5] 
       (.C(out_clk),
        .CE(\pl_len_1[16]_i_1_n_0 ),
        .D(\pl_len_1[5]_i_1_n_0 ),
        .Q(pl_len_1[5]),
        .R(1'b0));
  FDRE \pl_len_1_reg[6] 
       (.C(out_clk),
        .CE(\pl_len_1[16]_i_1_n_0 ),
        .D(\pl_len_1[6]_i_1_n_0 ),
        .Q(pl_len_1[6]),
        .R(1'b0));
  FDRE \pl_len_1_reg[7] 
       (.C(out_clk),
        .CE(\pl_len_1[16]_i_1_n_0 ),
        .D(\pl_len_1[7]_i_1_n_0 ),
        .Q(pl_len_1[7]),
        .R(1'b0));
  FDRE \pl_len_1_reg[8] 
       (.C(out_clk),
        .CE(\pl_len_1[16]_i_1_n_0 ),
        .D(\pl_len_1[8]_i_1_n_0 ),
        .Q(pl_len_1[8]),
        .R(1'b0));
  FDRE \pl_len_1_reg[9] 
       (.C(out_clk),
        .CE(\pl_len_1[16]_i_1_n_0 ),
        .D(\pl_len_1[9]_i_1_n_0 ),
        .Q(pl_len_1[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    stat_running_i_1
       (.I0(state_cur[2]),
        .I1(state_cur[0]),
        .O(stat_running_i_1_n_0));
  FDSE stat_running_reg
       (.C(out_clk),
        .CE(1'b1),
        .D(stat_running_i_1_n_0),
        .Q(stat_running),
        .S(state_cur[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \sync_cnt[0]_i_1 
       (.I0(sync_cnt[0]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \sync_cnt[1]_i_1 
       (.I0(sync_cnt[0]),
        .I1(sync_cnt[1]),
        .O(plusOp[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \sync_cnt[2]_i_1 
       (.I0(\lane_gen[1].sync_lane_reg ),
        .I1(\lane_gen[0].sync_lane_reg ),
        .O(\sync_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sync_cnt[2]_i_2 
       (.I0(sync_cnt[0]),
        .I1(sync_cnt[1]),
        .I2(sync_cnt[2]),
        .O(plusOp[2]));
  FDSE \sync_cnt_reg[0] 
       (.C(out_clk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(sync_cnt[0]),
        .S(\sync_cnt[2]_i_1_n_0 ));
  FDRE \sync_cnt_reg[1] 
       (.C(out_clk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(sync_cnt[1]),
        .R(\sync_cnt[2]_i_1_n_0 ));
  FDRE \sync_cnt_reg[2] 
       (.C(out_clk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(sync_cnt[2]),
        .R(\sync_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000047034400)) 
    x
       (.I0(x_i_1_n_0),
        .I1(state_cur[1]),
        .I2(x_i_2_n_0),
        .I3(x_i_3_n_0),
        .I4(x_i_4_n_0),
        .I5(state_nxt),
        .O(x_n_0));
  MUXF7 x_i_1
       (.I0(x_i_6_n_0),
        .I1(x_i_7_n_0),
        .O(x_i_1_n_0),
        .S(state_cur[0]));
  LUT6 #(
    .INIT(64'hF0CCF088F033F000)) 
    x_i_10
       (.I0(lp_fall),
        .I1(state_cur[0]),
        .I2(x_i_13_n_0),
        .I3(state_cur[2]),
        .I4(state_cur[1]),
        .I5(reg_out2_reg),
        .O(x_i_10_n_0));
  LUT5 #(
    .INIT(32'h07000705)) 
    x_i_11
       (.I0(state_cur[0]),
        .I1(capture_1),
        .I2(state_cur[2]),
        .I3(state_cur[1]),
        .I4(x_i_9_n_0),
        .O(x_i_11_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    x_i_12
       (.I0(state_cur[0]),
        .I1(state_cur[2]),
        .I2(state_cur[1]),
        .O(x_i_12_n_0));
  LUT4 #(
    .INIT(16'h0D00)) 
    x_i_13
       (.I0(capture_1),
        .I1(p_0_in_0),
        .I2(state_cur[2]),
        .I3(state_cur[1]),
        .O(x_i_13_n_0));
  LUT5 #(
    .INIT(32'h00000D00)) 
    x_i_2
       (.I0(capture_1),
        .I1(p_0_in_0),
        .I2(state_cur[1]),
        .I3(state_cur[2]),
        .I4(state_cur[0]),
        .O(x_i_2_n_0));
  LUT6 #(
    .INIT(64'h00F08C8C00F0BFBF)) 
    x_i_3
       (.I0(x_i_8_n_0),
        .I1(state_cur[0]),
        .I2(capture_1),
        .I3(p_0_in_0),
        .I4(state_cur[2]),
        .I5(x_i_9_n_0),
        .O(x_i_3_n_0));
  LUT6 #(
    .INIT(64'h00F0777700F00000)) 
    x_i_4
       (.I0(lp_fall),
        .I1(state_cur[0]),
        .I2(capture_1),
        .I3(p_0_in_0),
        .I4(state_cur[2]),
        .I5(reg_out2_reg),
        .O(x_i_4_n_0));
  MUXF7 x_i_5
       (.I0(x_i_10_n_0),
        .I1(x_i_11_n_0),
        .O(state_nxt),
        .S(state_cur[1]));
  LUT6 #(
    .INIT(64'hD0DFDFDF00000000)) 
    x_i_6
       (.I0(capture_1),
        .I1(p_0_in_0),
        .I2(state_cur[2]),
        .I3(\lane_gen[1].sync_lane_reg ),
        .I4(\lane_gen[0].sync_lane_reg ),
        .I5(x_i_12_n_0),
        .O(x_i_6_n_0));
  LUT6 #(
    .INIT(64'hB888FFFF30000000)) 
    x_i_7
       (.I0(p_0_in_0),
        .I1(state_cur[2]),
        .I2(ecc_valid_1),
        .I3(\FSM_sequential_state_cur[2]_i_3__0_n_0 ),
        .I4(capture_1),
        .I5(x_i_12_n_0),
        .O(x_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    x_i_8
       (.I0(pkt_data[16]),
        .I1(pkt_data[17]),
        .I2(pkt_data[6]),
        .I3(pkt_data[7]),
        .I4(ecc_valid_1),
        .O(x_i_8_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    x_i_9
       (.I0(\lane_gen[0].sync_lane_reg ),
        .I1(\lane_gen[1].sync_lane_reg ),
        .O(x_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "mipi_csi_top" *) 
module TySOM_1_7Z030_mipi_csi_0_mipi_csi_top
   (vaxi_data,
    DOP,
    saxi_bvalid,
    saxi_rvalid,
    saxi_arready,
    saxi_awready,
    saxi_rdata,
    intr,
    vaxi_valid,
    saxi_arvalid,
    saxi_wvalid,
    saxi_awvalid,
    saxi_awaddr,
    saxi_araddr,
    pad_clk_p,
    pad_clk_n,
    clk,
    refclk,
    pad_data_p,
    pad_data_n,
    rst,
    saxi_rready,
    saxi_bready,
    saxi_wdata,
    vaxi_ready);
  output [31:0]vaxi_data;
  output [1:0]DOP;
  output saxi_bvalid;
  output saxi_rvalid;
  output saxi_arready;
  output saxi_awready;
  output [10:0]saxi_rdata;
  output intr;
  output vaxi_valid;
  input saxi_arvalid;
  input saxi_wvalid;
  input saxi_awvalid;
  input [3:0]saxi_awaddr;
  input [3:0]saxi_araddr;
  input pad_clk_p;
  input pad_clk_n;
  input clk;
  input refclk;
  input [1:0]pad_data_p;
  input [1:0]pad_data_n;
  input rst;
  input saxi_rready;
  input saxi_bready;
  input [27:0]saxi_wdata;
  input vaxi_ready;

  wire [1:0]DOP;
  wire axi_ctrl_I_n_0;
  wire axi_ctrl_I_n_26;
  wire axi_ctrl_I_n_27;
  wire axi_ctrl_I_n_28;
  wire axi_ctrl_I_n_29;
  wire axi_ctrl_I_n_30;
  wire axi_ctrl_I_n_31;
  wire axi_ctrl_I_n_32;
  wire axi_ctrl_I_n_33;
  wire axi_ctrl_I_n_34;
  wire axi_ctrl_I_n_35;
  wire axi_ctrl_I_n_36;
  wire axi_ctrl_I_n_38;
  wire axi_ctrl_I_n_39;
  wire axi_ctrl_I_n_40;
  wire axi_ctrl_I_n_41;
  wire axi_ctrl_I_n_42;
  wire axi_ctrl_I_n_43;
  wire axi_ctrl_I_n_44;
  wire axi_ctrl_I_n_45;
  wire axi_ctrl_I_n_46;
  wire axi_ctrl_I_n_47;
  wire axi_ctrl_I_n_48;
  wire axi_ctrl_I_n_49;
  wire axi_ctrl_I_n_50;
  wire axi_ctrl_I_n_51;
  wire axi_ctrl_I_n_52;
  wire axi_ctrl_I_n_53;
  wire axi_ctrl_I_n_54;
  wire axi_ctrl_I_n_55;
  wire clear;
  wire clk;
  wire [11:0]\crop_I/cnt_col_1_reg ;
  wire [11:0]\crop_I/cnt_line_1_reg ;
  wire [7:0]ctrl_cfm;
  wire [1:0]ctrl_pol;
  wire [1:0]ctrl_vfm;
  wire ctrl_vum;
  wire [4:0]dly_cnt;
  wire dly_ld_clk;
  wire [1:0]dly_ld_data;
  wire dly_reset;
  wire eqOp__0;
  wire err_any_c__3;
  wire err_early_last;
  wire err_early_sof;
  wire err_early_sof_c;
  wire err_late_last;
  wire err_no_hdr;
  wire err_pending0;
  wire err_phy_bad_ecc;
  wire err_phy_early_lp;
  wire err_phy_overflow;
  wire err_unk_pkt;
  wire err_unk_pkt_c;
  wire intr;
  wire [0:0]minusOp;
  wire [0:0]minusOp__0;
  wire [7:0]mux;
  wire p_0_in;
  wire p_0_in1_in;
  wire p_0_in4_in;
  wire p_0_in_0;
  wire [1:0]p_2_in;
  wire pad_clk_n;
  wire pad_clk_p;
  wire [1:0]pad_data_n;
  wire [1:0]pad_data_p;
  wire pause;
  wire pause0;
  wire phy_clk;
  wire phy_ctrl_active;
  wire phy_ctrl_lpdet_byp;
  wire [3:0]phy_data;
  wire phy_err_bad_ecc;
  wire phy_err_overflow;
  wire \phy_rst_cnt[1]_i_1_n_0 ;
  wire \phy_rst_cnt[2]_i_1_n_0 ;
  wire \phy_rst_cnt[3]_i_1_n_0 ;
  wire [3:3]phy_rst_cnt_reg__0;
  wire \phy_rst_cnt_reg_n_0_[0] ;
  wire \phy_rst_cnt_reg_n_0_[1] ;
  wire \phy_rst_cnt_reg_n_0_[2] ;
  wire phy_rst_req;
  wire pix_fifo_I_n_37;
  wire pix_fifo_I_n_38;
  wire pix_fifo_aempty;
  wire pix_fifo_afull;
  wire \pix_fifo_cnt[0]_i_1_n_0 ;
  wire \pix_fifo_cnt[1]_i_1_n_0 ;
  wire \pix_fifo_cnt[2]_i_1_n_0 ;
  wire \pix_fifo_cnt[3]_i_1_n_0 ;
  wire \pix_fifo_cnt[4]_i_2_n_0 ;
  wire \pix_fifo_cnt[4]_i_3_n_0 ;
  wire \pix_fifo_cnt[5]_i_1_n_0 ;
  wire \pix_fifo_cnt[5]_i_2_n_0 ;
  wire \pix_fifo_cnt_reg_n_0_[0] ;
  wire \pix_fifo_cnt_reg_n_0_[1] ;
  wire \pix_fifo_cnt_reg_n_0_[2] ;
  wire \pix_fifo_cnt_reg_n_0_[3] ;
  wire \pix_fifo_cnt_reg_n_0_[4] ;
  wire pix_fifo_empty;
  wire pix_fifo_empty_fwft;
  wire [31:0]pkt_data;
  wire pkt_fifo_I_n_34;
  wire pkt_fifo_I_n_35;
  wire pkt_fifo_I_n_36;
  wire pkt_fifo_I_n_37;
  wire pkt_fifo_I_n_38;
  wire pkt_fifo_I_n_39;
  wire pkt_fifo_I_n_40;
  wire pkt_fifo_I_n_43;
  wire pkt_fifo_I_n_45;
  wire pkt_fifo_I_n_46;
  wire pkt_fifo_I_n_47;
  wire pkt_fifo_I_n_48;
  wire pkt_fifo_I_n_49;
  wire pkt_fifo_I_n_50;
  wire pkt_fifo_I_n_51;
  wire pkt_fifo_I_n_52;
  wire pkt_fifo_I_n_53;
  wire pkt_fifo_I_n_54;
  wire pkt_fifo_I_n_55;
  wire pkt_fifo_I_n_56;
  wire pkt_fifo_I_n_57;
  wire pkt_hdr;
  wire pkt_last;
  wire pkt_parser_I_n_0;
  wire pkt_parser_I_n_1;
  wire pkt_parser_I_n_11;
  wire pkt_parser_I_n_12;
  wire pkt_parser_I_n_14;
  wire pkt_parser_I_n_15;
  wire pkt_parser_I_n_16;
  wire pkt_parser_I_n_17;
  wire pkt_parser_I_n_9;
  wire pkt_recv_I_n_36;
  wire pkt_recv_I_n_37;
  wire pkt_recv_I_n_38;
  wire pktr_empty;
  wire pktw_full;
  wire pulse_out;
  wire refclk;
  wire [18:16]reg_cr;
  wire reg_cr_I_n_0;
  wire reg_cr_I_n_5;
  wire reg_crop_colend_I_n_0;
  wire reg_crop_colend_I_n_1;
  wire reg_crop_colend_I_n_10;
  wire reg_crop_colend_I_n_11;
  wire reg_crop_colend_I_n_12;
  wire reg_crop_colend_I_n_13;
  wire reg_crop_colend_I_n_14;
  wire reg_crop_colend_I_n_15;
  wire reg_crop_colend_I_n_16;
  wire reg_crop_colend_I_n_17;
  wire reg_crop_colend_I_n_18;
  wire reg_crop_colend_I_n_19;
  wire reg_crop_colend_I_n_2;
  wire reg_crop_colend_I_n_20;
  wire reg_crop_colend_I_n_21;
  wire reg_crop_colend_I_n_22;
  wire reg_crop_colend_I_n_23;
  wire reg_crop_colend_I_n_3;
  wire reg_crop_colend_I_n_4;
  wire reg_crop_colend_I_n_5;
  wire reg_crop_colend_I_n_6;
  wire reg_crop_colend_I_n_7;
  wire reg_crop_colend_I_n_8;
  wire reg_crop_colend_I_n_9;
  wire reg_crop_colstart_I_n_0;
  wire reg_crop_colstart_I_n_1;
  wire reg_crop_colstart_I_n_10;
  wire reg_crop_colstart_I_n_11;
  wire reg_crop_colstart_I_n_2;
  wire reg_crop_colstart_I_n_3;
  wire reg_crop_colstart_I_n_4;
  wire reg_crop_colstart_I_n_5;
  wire reg_crop_colstart_I_n_6;
  wire reg_crop_colstart_I_n_7;
  wire reg_crop_colstart_I_n_8;
  wire reg_crop_colstart_I_n_9;
  wire reg_crop_lineend_I_n_0;
  wire reg_crop_lineend_I_n_1;
  wire reg_crop_lineend_I_n_10;
  wire reg_crop_lineend_I_n_11;
  wire reg_crop_lineend_I_n_2;
  wire reg_crop_lineend_I_n_3;
  wire reg_crop_lineend_I_n_4;
  wire reg_crop_lineend_I_n_5;
  wire reg_crop_lineend_I_n_6;
  wire reg_crop_lineend_I_n_7;
  wire reg_crop_lineend_I_n_8;
  wire reg_crop_lineend_I_n_9;
  wire reg_crop_linestart_I_n_0;
  wire reg_crop_linestart_I_n_1;
  wire reg_crop_linestart_I_n_10;
  wire reg_crop_linestart_I_n_11;
  wire reg_crop_linestart_I_n_2;
  wire reg_crop_linestart_I_n_3;
  wire reg_crop_linestart_I_n_4;
  wire reg_crop_linestart_I_n_5;
  wire reg_crop_linestart_I_n_6;
  wire reg_crop_linestart_I_n_7;
  wire reg_crop_linestart_I_n_8;
  wire reg_crop_linestart_I_n_9;
  wire [19:0]reg_er;
  wire reg_imr_I_n_0;
  wire reg_vpcr_I_n_16;
  wire reg_vpcr_I_n_17;
  wire reg_vpcr_I_n_18;
  wire reg_vpcr_I_n_19;
  wire reg_vpcr_I_n_2;
  wire reg_vpcr_I_n_20;
  wire reg_vpcr_I_n_21;
  wire reg_vpcr_I_n_22;
  wire reg_vpcr_I_n_23;
  wire reg_vpcr_I_n_24;
  wire reg_vpcr_I_n_25;
  wire reg_vpcr_I_n_27;
  wire reg_vpcr_I_n_28;
  wire reg_vpcr_I_n_29;
  wire reg_vpcr_I_n_3;
  wire reg_vpcr_I_n_30;
  wire reg_vpcr_I_n_31;
  wire reg_vpcr_I_n_32;
  wire reg_vpcr_I_n_33;
  wire reg_vpcr_I_n_34;
  wire reg_vpcr_I_n_35;
  wire reg_vpcr_I_n_36;
  wire reg_vpcr_I_n_37;
  wire reg_vpcr_I_n_38;
  wire reg_vpcr_I_n_39;
  wire \repack_32b_to_40b_I/has_last ;
  wire [1:0]\repack_32b_to_8b_I/cnt ;
  wire rst;
  wire \rst_cnt[1]_i_1_n_0 ;
  wire \rst_cnt[2]_i_1_n_0 ;
  wire \rst_cnt[3]_i_2_n_0 ;
  wire \rst_cnt_reg_n_0_[0] ;
  wire \rst_cnt_reg_n_0_[1] ;
  wire \rst_cnt_reg_n_0_[2] ;
  wire [1:0]rst_req_axi;
  wire \rst_req_axi[0]_i_1_n_0 ;
  wire \rst_req_axi[1]_i_1_n_0 ;
  wire [3:0]saxi_araddr;
  wire saxi_arready;
  wire saxi_arvalid;
  wire [3:0]saxi_awaddr;
  wire saxi_awready;
  wire saxi_awvalid;
  wire saxi_bready;
  wire saxi_bvalid;
  wire [10:0]saxi_rdata;
  wire saxi_rready;
  wire saxi_rvalid;
  wire [27:0]saxi_wdata;
  wire saxi_wvalid;
  wire sig_in;
  wire [31:0]slb_rdata;
  wire [23:0]slb_wdata;
  wire stat_err_pending;
  wire stat_phy_running;
  wire stat_running;
  wire state_nxt113_out;
  wire [31:0]vaxi_data;
  wire vaxi_ready;
  wire vaxi_valid;
  wire [10:8]vcfm_data;
  wire [7:5]vcol_green;
  wire [7:0]vcrop_data;
  wire vid_pipeline_I_n_4;
  wire vid_pipeline_I_n_47;
  wire vid_pipeline_I_n_48;
  wire vid_pipeline_I_n_49;
  wire vid_pipeline_I_n_50;
  wire vid_pipeline_I_n_51;
  wire vid_pipeline_I_n_52;
  wire vid_pipeline_I_n_53;
  wire vid_pipeline_I_n_54;
  wire vid_pipeline_I_n_55;
  wire vid_pipeline_I_n_56;
  wire vid_ready;
  wire [31:0]vin_data;
  wire vin_ready_10b;
  wire vin_sof;
  wire [31:0]vout_data;
  wire vout_last;
  wire vout_sof;
  wire vout_valid;
  wire [9:2]vum_data;

  TySOM_1_7Z030_mipi_csi_0_axilite2slb axi_ctrl_I
       (.D({axi_ctrl_I_n_26,axi_ctrl_I_n_27,axi_ctrl_I_n_28,axi_ctrl_I_n_29,axi_ctrl_I_n_30,axi_ctrl_I_n_31,axi_ctrl_I_n_32,axi_ctrl_I_n_33,axi_ctrl_I_n_34}),
        .Q({p_2_in[0],p_2_in[1],slb_wdata[23],slb_wdata[21:0]}),
        .clk(clk),
        .ctrl_dly_ld_clk_reg(axi_ctrl_I_n_0),
        .\ctrl_dly_ld_data_reg[1] ({axi_ctrl_I_n_40,axi_ctrl_I_n_41}),
        .err_early_last(err_early_last),
        .err_early_sof(err_early_sof),
        .err_late_last(err_late_last),
        .err_no_hdr(err_no_hdr),
        .err_phy_bad_ecc(err_phy_bad_ecc),
        .err_phy_early_lp(err_phy_early_lp),
        .err_phy_overflow(err_phy_overflow),
        .err_unk_pkt(err_unk_pkt),
        .out(stat_phy_running),
        .p_0_in(p_0_in),
        .pix_fifo_empty(pix_fifo_empty),
        .pktr_empty(pktr_empty),
        .pulse_out(pulse_out),
        .\reg_er_reg[19] ({reg_er[19:16],reg_er[4:0]}),
        .rst(rst),
        .saxi_araddr(saxi_araddr),
        .saxi_arready(saxi_arready),
        .saxi_arvalid(saxi_arvalid),
        .saxi_awaddr(saxi_awaddr),
        .saxi_awready(saxi_awready),
        .saxi_awvalid(saxi_awvalid),
        .saxi_bready(saxi_bready),
        .saxi_bvalid(saxi_bvalid),
        .saxi_rdata(saxi_rdata),
        .saxi_rready(saxi_rready),
        .saxi_rvalid(saxi_rvalid),
        .saxi_wdata(saxi_wdata),
        .saxi_wvalid(saxi_wvalid),
        .\slb_rdata_reg[18] (axi_ctrl_I_n_53),
        .\slb_rdata_reg[19] (axi_ctrl_I_n_54),
        .\slb_rdata_reg[1] (axi_ctrl_I_n_49),
        .\slb_rdata_reg[1]_0 (axi_ctrl_I_n_55),
        .\slb_rdata_reg[2] (axi_ctrl_I_n_50),
        .\slb_rdata_reg[31] ({axi_ctrl_I_n_44,axi_ctrl_I_n_45,axi_ctrl_I_n_46,axi_ctrl_I_n_47,axi_ctrl_I_n_48}),
        .\slb_rdata_reg[31]_0 ({slb_rdata[31:30],slb_rdata[19:16],slb_rdata[4:0]}),
        .\slb_rdata_reg[3] (axi_ctrl_I_n_51),
        .\slb_rdata_reg[4] (axi_ctrl_I_n_52),
        .stat_err_pending(stat_err_pending),
        .stat_running_reg(pkt_parser_I_n_9),
        .wen_reg(axi_ctrl_I_n_35),
        .wen_reg_0(axi_ctrl_I_n_36),
        .wen_reg_1(axi_ctrl_I_n_38),
        .wen_reg_2(axi_ctrl_I_n_39),
        .wen_reg_3(axi_ctrl_I_n_42),
        .wen_reg_4(axi_ctrl_I_n_43));
  FDRE \ctrl_dly_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(slb_wdata[0]),
        .Q(dly_cnt[0]),
        .R(dly_reset));
  FDRE \ctrl_dly_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(slb_wdata[1]),
        .Q(dly_cnt[1]),
        .R(dly_reset));
  FDRE \ctrl_dly_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(slb_wdata[2]),
        .Q(dly_cnt[2]),
        .R(dly_reset));
  FDRE \ctrl_dly_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(slb_wdata[3]),
        .Q(dly_cnt[3]),
        .R(dly_reset));
  FDRE \ctrl_dly_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(slb_wdata[4]),
        .Q(dly_cnt[4]),
        .R(dly_reset));
  FDRE ctrl_dly_ld_clk_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_0),
        .Q(dly_ld_clk),
        .R(dly_reset));
  FDRE \ctrl_dly_ld_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_41),
        .Q(dly_ld_data[0]),
        .R(dly_reset));
  FDRE \ctrl_dly_ld_data_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_40),
        .Q(dly_ld_data[1]),
        .R(dly_reset));
  FDRE intr_reg
       (.C(clk),
        .CE(1'b1),
        .D(reg_imr_I_n_0),
        .Q(intr),
        .R(dly_reset));
  TySOM_1_7Z030_mipi_csi_0_mipi_csi_phy phy_I
       (.Q(dly_reset),
        .clk(clk),
        .\ctrl_dly_cnt_reg[4] (dly_cnt),
        .\ctrl_dly_ld_data_reg[1] (dly_ld_data),
        .dly_ld_clk(dly_ld_clk),
        .out_clk(phy_clk),
        .out_data(phy_data),
        .pad_clk_n(pad_clk_n),
        .pad_clk_p(pad_clk_p),
        .pad_data_n(pad_data_n),
        .pad_data_p(pad_data_p),
        .refclk(refclk));
  TySOM_1_7Z030_mipi_csi_0_xclk_sync phy_ctrl_active_I
       (.Q(reg_cr_I_n_5),
        .clk(clk),
        .out(phy_ctrl_active),
        .out_clk(phy_clk));
  TySOM_1_7Z030_mipi_csi_0_xclk_sync_0 phy_ctrl_lpdet_byp_I
       (.Q(sig_in),
        .clk(clk),
        .out(phy_ctrl_lpdet_byp),
        .out_clk(phy_clk));
  TySOM_1_7Z030_mipi_csi_0_xclk_pulse phy_err_bad_ecc_I
       (.clk(clk),
        .err_bad_ecc_reg(pkt_recv_I_n_36),
        .err_phy_bad_ecc(err_phy_bad_ecc),
        .out_clk(phy_clk),
        .p_0_in(p_0_in_0),
        .phy_err_bad_ecc(phy_err_bad_ecc));
  TySOM_1_7Z030_mipi_csi_0_xclk_pulse_1 phy_err_early_lp_I
       (.clk(clk),
        .err_phy_early_lp(err_phy_early_lp),
        .out_clk(phy_clk));
  TySOM_1_7Z030_mipi_csi_0_xclk_pulse_2 phy_err_late_sync_I
       (.clk(clk),
        .out_clk(phy_clk),
        .pulse_out(pulse_out));
  TySOM_1_7Z030_mipi_csi_0_xclk_pulse_3 phy_err_overflow_I
       (.clk(clk),
        .err_phy_overflow(err_phy_overflow),
        .out_clk(phy_clk),
        .phy_err_overflow(phy_err_overflow));
  FDRE phy_err_overflow_reg
       (.C(phy_clk),
        .CE(1'b1),
        .D(pkt_recv_I_n_37),
        .Q(phy_err_overflow),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \phy_rst_cnt[0]_i_1 
       (.I0(\phy_rst_cnt_reg_n_0_[0] ),
        .O(minusOp));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \phy_rst_cnt[1]_i_1 
       (.I0(\phy_rst_cnt_reg_n_0_[0] ),
        .I1(\phy_rst_cnt_reg_n_0_[1] ),
        .O(\phy_rst_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \phy_rst_cnt[2]_i_1 
       (.I0(\phy_rst_cnt_reg_n_0_[1] ),
        .I1(\phy_rst_cnt_reg_n_0_[0] ),
        .I2(\phy_rst_cnt_reg_n_0_[2] ),
        .O(\phy_rst_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \phy_rst_cnt[3]_i_1 
       (.I0(\phy_rst_cnt_reg_n_0_[2] ),
        .I1(\phy_rst_cnt_reg_n_0_[0] ),
        .I2(\phy_rst_cnt_reg_n_0_[1] ),
        .I3(phy_rst_cnt_reg__0),
        .O(\phy_rst_cnt[3]_i_1_n_0 ));
  FDPE \phy_rst_cnt_reg[0] 
       (.C(phy_clk),
        .CE(phy_rst_cnt_reg__0),
        .D(minusOp),
        .PRE(phy_rst_req),
        .Q(\phy_rst_cnt_reg_n_0_[0] ));
  FDPE \phy_rst_cnt_reg[1] 
       (.C(phy_clk),
        .CE(phy_rst_cnt_reg__0),
        .D(\phy_rst_cnt[1]_i_1_n_0 ),
        .PRE(phy_rst_req),
        .Q(\phy_rst_cnt_reg_n_0_[1] ));
  FDPE \phy_rst_cnt_reg[2] 
       (.C(phy_clk),
        .CE(phy_rst_cnt_reg__0),
        .D(\phy_rst_cnt[2]_i_1_n_0 ),
        .PRE(phy_rst_req),
        .Q(\phy_rst_cnt_reg_n_0_[2] ));
  FDPE \phy_rst_cnt_reg[3] 
       (.C(phy_clk),
        .CE(phy_rst_cnt_reg__0),
        .D(\phy_rst_cnt[3]_i_1_n_0 ),
        .PRE(phy_rst_req),
        .Q(phy_rst_cnt_reg__0));
  FDPE phy_rst_req_reg
       (.C(phy_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(dly_reset),
        .Q(phy_rst_req));
  TySOM_1_7Z030_mipi_csi_0_xclk_sync_4 phy_stat_running_I
       (.clk(clk),
        .out(stat_phy_running),
        .out_clk(phy_clk),
        .stat_running(stat_running));
  TySOM_1_7Z030_mipi_csi_0_unimacro_FIFO_SYNC_MACRO pix_fifo_I
       (.DIP({vout_sof,vout_last}),
        .DOP(DOP),
        .Q(dly_reset),
        .SR(pix_fifo_I_n_37),
        .clk(clk),
        .\data_reg[31] (vout_data),
        .p_0_in4_in(p_0_in4_in),
        .pix_fifo_aempty(pix_fifo_aempty),
        .pix_fifo_afull(pix_fifo_afull),
        .pix_fifo_empty(pix_fifo_empty),
        .pix_fifo_empty_fwft(pix_fifo_empty_fwft),
        .pix_fifo_empty_fwft_reg(pix_fifo_I_n_38),
        .vaxi_data(vaxi_data),
        .vaxi_ready(vaxi_ready),
        .vout_valid(vout_valid));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pix_fifo_cnt[0]_i_1 
       (.I0(\pix_fifo_cnt_reg_n_0_[0] ),
        .O(\pix_fifo_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pix_fifo_cnt[1]_i_1 
       (.I0(\pix_fifo_cnt_reg_n_0_[0] ),
        .I1(\pix_fifo_cnt_reg_n_0_[1] ),
        .O(\pix_fifo_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pix_fifo_cnt[2]_i_1 
       (.I0(\pix_fifo_cnt_reg_n_0_[0] ),
        .I1(\pix_fifo_cnt_reg_n_0_[1] ),
        .I2(\pix_fifo_cnt_reg_n_0_[2] ),
        .O(\pix_fifo_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pix_fifo_cnt[3]_i_1 
       (.I0(\pix_fifo_cnt_reg_n_0_[1] ),
        .I1(\pix_fifo_cnt_reg_n_0_[0] ),
        .I2(\pix_fifo_cnt_reg_n_0_[2] ),
        .I3(\pix_fifo_cnt_reg_n_0_[3] ),
        .O(\pix_fifo_cnt[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pix_fifo_cnt[4]_i_2 
       (.I0(p_0_in4_in),
        .O(\pix_fifo_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pix_fifo_cnt[4]_i_3 
       (.I0(\pix_fifo_cnt_reg_n_0_[2] ),
        .I1(\pix_fifo_cnt_reg_n_0_[0] ),
        .I2(\pix_fifo_cnt_reg_n_0_[1] ),
        .I3(\pix_fifo_cnt_reg_n_0_[3] ),
        .I4(\pix_fifo_cnt_reg_n_0_[4] ),
        .O(\pix_fifo_cnt[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FDDD)) 
    \pix_fifo_cnt[5]_i_1 
       (.I0(pix_fifo_aempty),
        .I1(p_0_in4_in),
        .I2(\pix_fifo_cnt[5]_i_2_n_0 ),
        .I3(\pix_fifo_cnt_reg_n_0_[4] ),
        .I4(pix_fifo_empty_fwft),
        .I5(dly_reset),
        .O(\pix_fifo_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pix_fifo_cnt[5]_i_2 
       (.I0(\pix_fifo_cnt_reg_n_0_[3] ),
        .I1(\pix_fifo_cnt_reg_n_0_[1] ),
        .I2(\pix_fifo_cnt_reg_n_0_[0] ),
        .I3(\pix_fifo_cnt_reg_n_0_[2] ),
        .O(\pix_fifo_cnt[5]_i_2_n_0 ));
  FDRE \pix_fifo_cnt_reg[0] 
       (.C(clk),
        .CE(\pix_fifo_cnt[4]_i_2_n_0 ),
        .D(\pix_fifo_cnt[0]_i_1_n_0 ),
        .Q(\pix_fifo_cnt_reg_n_0_[0] ),
        .R(pix_fifo_I_n_37));
  FDRE \pix_fifo_cnt_reg[1] 
       (.C(clk),
        .CE(\pix_fifo_cnt[4]_i_2_n_0 ),
        .D(\pix_fifo_cnt[1]_i_1_n_0 ),
        .Q(\pix_fifo_cnt_reg_n_0_[1] ),
        .R(pix_fifo_I_n_37));
  FDRE \pix_fifo_cnt_reg[2] 
       (.C(clk),
        .CE(\pix_fifo_cnt[4]_i_2_n_0 ),
        .D(\pix_fifo_cnt[2]_i_1_n_0 ),
        .Q(\pix_fifo_cnt_reg_n_0_[2] ),
        .R(pix_fifo_I_n_37));
  FDRE \pix_fifo_cnt_reg[3] 
       (.C(clk),
        .CE(\pix_fifo_cnt[4]_i_2_n_0 ),
        .D(\pix_fifo_cnt[3]_i_1_n_0 ),
        .Q(\pix_fifo_cnt_reg_n_0_[3] ),
        .R(pix_fifo_I_n_37));
  FDRE \pix_fifo_cnt_reg[4] 
       (.C(clk),
        .CE(\pix_fifo_cnt[4]_i_2_n_0 ),
        .D(\pix_fifo_cnt[4]_i_3_n_0 ),
        .Q(\pix_fifo_cnt_reg_n_0_[4] ),
        .R(pix_fifo_I_n_37));
  FDRE \pix_fifo_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\pix_fifo_cnt[5]_i_1_n_0 ),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDSE pix_fifo_empty_fwft_reg
       (.C(clk),
        .CE(1'b1),
        .D(pix_fifo_I_n_38),
        .Q(pix_fifo_empty_fwft),
        .S(dly_reset));
  TySOM_1_7Z030_mipi_csi_0_unimacro_FIFO_DUALCLOCK_MACRO pkt_fifo_I
       (.DIP({pkt_hdr,pkt_last}),
        .DO(vin_data),
        .DOP({pkt_fifo_I_n_34,pkt_fifo_I_n_35}),
        .\FSM_sequential_state_cur_reg[0] (pkt_fifo_I_n_40),
        .\FSM_sequential_state_cur_reg[1] (pkt_fifo_I_n_43),
        .\FSM_sequential_state_cur_reg[1]_0 (pkt_parser_I_n_16),
        .Q(dly_reset),
        .S({pkt_fifo_I_n_36,pkt_fifo_I_n_37,pkt_fifo_I_n_38,pkt_fifo_I_n_39}),
        .clk(clk),
        .cnt(\repack_32b_to_8b_I/cnt ),
        .\cnt_reg[12] ({pkt_fifo_I_n_48,pkt_fifo_I_n_49,pkt_fifo_I_n_50,pkt_fifo_I_n_51}),
        .\cnt_reg[16] ({pkt_fifo_I_n_45,pkt_fifo_I_n_46,pkt_fifo_I_n_47}),
        .\cnt_reg[8] ({pkt_fifo_I_n_52,pkt_fifo_I_n_53,pkt_fifo_I_n_54,pkt_fifo_I_n_55}),
        .err_early_sof_c(err_early_sof_c),
        .err_unk_pkt_c(err_unk_pkt_c),
        .mux(mux),
        .out({pkt_parser_I_n_0,pkt_parser_I_n_1}),
        .out_clk(phy_clk),
        .pause_reg(pkt_parser_I_n_11),
        .pkt_data(pkt_data),
        .pkt_valid_reg(pkt_recv_I_n_38),
        .pktr_empty(pktr_empty),
        .pktw_full(pktw_full),
        .\reg_reg[16] (pkt_parser_I_n_15),
        .state_nxt113_out(state_nxt113_out),
        .vid_sof_reg(pkt_fifo_I_n_56),
        .vid_sof_reg_0(pkt_fifo_I_n_57));
  TySOM_1_7Z030_mipi_csi_0_mipi_csi_pkt_parse pkt_parser_I
       (.DO({vin_data[23:11],vin_data[9:8]}),
        .DOP({pkt_fifo_I_n_34,pkt_fifo_I_n_35}),
        .\FSM_sequential_state_cur_reg[0]_0 (pkt_fifo_I_n_43),
        .\FSM_sequential_state_cur_reg[0]_1 (pkt_fifo_I_n_40),
        .\FSM_sequential_state_cur_reg[2]_0 (pkt_parser_I_n_15),
        .Q(dly_reset),
        .S({pkt_fifo_I_n_36,pkt_fifo_I_n_37,pkt_fifo_I_n_38,pkt_fifo_I_n_39}),
        .clk(clk),
        .\cnt_reg[16]_0 (pkt_parser_I_n_11),
        .\data_reg_reg[15] (pkt_parser_I_n_17),
        .err_any_c__3(err_any_c__3),
        .err_early_last(err_early_last),
        .err_early_sof(err_early_sof),
        .err_early_sof_c(err_early_sof_c),
        .err_late_last(err_late_last),
        .err_late_last_reg_0(p_0_in1_in),
        .err_late_last_reg_1(pkt_parser_I_n_14),
        .err_no_hdr(err_no_hdr),
        .err_pending0(err_pending0),
        .err_unk_pkt(err_unk_pkt),
        .err_unk_pkt_c(err_unk_pkt_c),
        .has_footer_reg_0(pkt_parser_I_n_16),
        .has_last(\repack_32b_to_40b_I/has_last ),
        .out({pkt_parser_I_n_0,pkt_parser_I_n_1}),
        .out_valid_i_reg(pkt_parser_I_n_12),
        .pause(pause),
        .pause0(pause0),
        .pix_fifo_afull(pix_fifo_afull),
        .pktr_empty(pktr_empty),
        .\reg_reg[16] (reg_cr_I_n_0),
        .\reg_reg[18] (reg_cr),
        .\rst_cnt_reg[3] ({pkt_fifo_I_n_52,pkt_fifo_I_n_53,pkt_fifo_I_n_54,pkt_fifo_I_n_55}),
        .\rst_cnt_reg[3]_0 ({pkt_fifo_I_n_48,pkt_fifo_I_n_49,pkt_fifo_I_n_50,pkt_fifo_I_n_51}),
        .\rst_cnt_reg[3]_1 ({pkt_fifo_I_n_45,pkt_fifo_I_n_46,pkt_fifo_I_n_47}),
        .\rst_cnt_reg[3]_2 (pkt_fifo_I_n_57),
        .\rst_cnt_reg[3]_3 (pkt_fifo_I_n_56),
        .\slb_rdata_reg[16] (pkt_parser_I_n_9),
        .stat_err_pending(stat_err_pending),
        .state_nxt113_out(state_nxt113_out),
        .vid_ready(vid_ready),
        .vin_sof(vin_sof));
  TySOM_1_7Z030_mipi_csi_0_mipi_csi_pkt_recv pkt_recv_I
       (.DIP({pkt_hdr,pkt_last}),
        .Q(phy_rst_cnt_reg__0),
        .\cnt_reg[0] (pkt_recv_I_n_36),
        .err_unk_pkt_reg(pkt_recv_I_n_38),
        .out(phy_ctrl_lpdet_byp),
        .out_clk(phy_clk),
        .out_data(phy_data),
        .p_0_in(p_0_in_0),
        .phy_err_bad_ecc(phy_err_bad_ecc),
        .phy_err_overflow_reg(pkt_recv_I_n_37),
        .pkt_data(pkt_data),
        .pktw_full(pktw_full),
        .reg_out2_reg(phy_ctrl_active),
        .stat_running(stat_running));
  TySOM_1_7Z030_mipi_csi_0_slb_reg reg_cr_I
       (.D({slb_wdata[18:16],slb_wdata[1:0]}),
        .Q(dly_reset),
        .clk(clk),
        .\cnt_reg[16] ({reg_cr,sig_in,reg_cr_I_n_5}),
        .err_any_c__3(err_any_c__3),
        .err_pending0(err_pending0),
        .p_0_in(p_0_in),
        .stat_err_pending(stat_err_pending),
        .vid_sof_reg(reg_cr_I_n_0));
  TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized7 reg_crop_colend_I
       (.D(slb_wdata[11:0]),
        .DI({reg_crop_colend_I_n_16,reg_crop_colend_I_n_17,reg_crop_colend_I_n_18,reg_crop_colend_I_n_19}),
        .Q(dly_reset),
        .S({reg_crop_colend_I_n_0,reg_crop_colend_I_n_1,reg_crop_colend_I_n_2,reg_crop_colend_I_n_3}),
        .clk(clk),
        .out(\crop_I/cnt_col_1_reg ),
        .\slb_addr_reg[2] (axi_ctrl_I_n_35),
        .win_ce_ok_2_reg({reg_crop_colend_I_n_4,reg_crop_colend_I_n_5,reg_crop_colend_I_n_6,reg_crop_colend_I_n_7,reg_crop_colend_I_n_8,reg_crop_colend_I_n_9,reg_crop_colend_I_n_10,reg_crop_colend_I_n_11,reg_crop_colend_I_n_12,reg_crop_colend_I_n_13,reg_crop_colend_I_n_14,reg_crop_colend_I_n_15}),
        .win_ce_ok_2_reg_0({reg_crop_colend_I_n_20,reg_crop_colend_I_n_21}),
        .win_ce_ok_2_reg_1({reg_crop_colend_I_n_22,reg_crop_colend_I_n_23}));
  TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized5 reg_crop_colstart_I
       (.D(slb_wdata[11:0]),
        .Q(dly_reset),
        .clk(clk),
        .\slb_addr_reg[2] (axi_ctrl_I_n_42),
        .win_cs_ok_2_reg({reg_crop_colstart_I_n_0,reg_crop_colstart_I_n_1,reg_crop_colstart_I_n_2,reg_crop_colstart_I_n_3,reg_crop_colstart_I_n_4,reg_crop_colstart_I_n_5,reg_crop_colstart_I_n_6,reg_crop_colstart_I_n_7,reg_crop_colstart_I_n_8,reg_crop_colstart_I_n_9,reg_crop_colstart_I_n_10,reg_crop_colstart_I_n_11}));
  TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized11 reg_crop_lineend_I
       (.DI({reg_crop_lineend_I_n_4,reg_crop_lineend_I_n_5,reg_crop_lineend_I_n_6,reg_crop_lineend_I_n_7}),
        .Q(dly_reset),
        .S({reg_crop_lineend_I_n_0,reg_crop_lineend_I_n_1,reg_crop_lineend_I_n_2,reg_crop_lineend_I_n_3}),
        .clk(clk),
        .out(\crop_I/cnt_line_1_reg ),
        .\slb_addr_reg[2] (axi_ctrl_I_n_38),
        .\slb_wdata_reg[11] (slb_wdata[11:0]),
        .win_le_ok_2_reg({reg_crop_lineend_I_n_8,reg_crop_lineend_I_n_9}),
        .win_le_ok_2_reg_0({reg_crop_lineend_I_n_10,reg_crop_lineend_I_n_11}));
  TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized9 reg_crop_linestart_I
       (.Q(dly_reset),
        .clk(clk),
        .\slb_addr_reg[2] (axi_ctrl_I_n_43),
        .\slb_wdata_reg[11] (slb_wdata[11:0]),
        .win_ls_ok_2_reg({reg_crop_linestart_I_n_0,reg_crop_linestart_I_n_1,reg_crop_linestart_I_n_2,reg_crop_linestart_I_n_3,reg_crop_linestart_I_n_4,reg_crop_linestart_I_n_5,reg_crop_linestart_I_n_6,reg_crop_linestart_I_n_7,reg_crop_linestart_I_n_8,reg_crop_linestart_I_n_9,reg_crop_linestart_I_n_10,reg_crop_linestart_I_n_11}));
  FDRE \reg_er_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_34),
        .Q(reg_er[0]),
        .R(dly_reset));
  FDRE \reg_er_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_29),
        .Q(reg_er[16]),
        .R(dly_reset));
  FDRE \reg_er_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_28),
        .Q(reg_er[17]),
        .R(dly_reset));
  FDRE \reg_er_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_27),
        .Q(reg_er[18]),
        .R(dly_reset));
  FDRE \reg_er_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_26),
        .Q(reg_er[19]),
        .R(dly_reset));
  FDRE \reg_er_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_33),
        .Q(reg_er[1]),
        .R(dly_reset));
  FDRE \reg_er_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_32),
        .Q(reg_er[2]),
        .R(dly_reset));
  FDRE \reg_er_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_31),
        .Q(reg_er[3]),
        .R(dly_reset));
  FDRE \reg_er_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_30),
        .Q(reg_er[4]),
        .R(dly_reset));
  TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized1 reg_imr_I
       (.D({slb_wdata[19:16],slb_wdata[4:0]}),
        .Q(dly_reset),
        .clk(clk),
        .intr_reg(reg_imr_I_n_0),
        .\reg_er_reg[19] ({reg_er[19:16],reg_er[4:0]}),
        .\slb_addr_reg[3] (axi_ctrl_I_n_39));
  TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized3 reg_vpcr_I
       (.D({reg_vpcr_I_n_18,reg_vpcr_I_n_19,reg_vpcr_I_n_20,reg_vpcr_I_n_21,reg_vpcr_I_n_22,reg_vpcr_I_n_23,reg_vpcr_I_n_24,reg_vpcr_I_n_25}),
        .DO({vin_data[31:27],vin_data[15:8]}),
        .Q(dly_reset),
        .clk(clk),
        .\cnt_reg[0] (vid_pipeline_I_n_4),
        .eqOp__0(eqOp__0),
        .pause0(pause0),
        .\pix_blue_4_reg[10] (vid_pipeline_I_n_51),
        .\pix_blue_4_reg[10]_0 (vid_pipeline_I_n_56),
        .\pix_blue_4_reg[6] (vid_pipeline_I_n_47),
        .\pix_blue_4_reg[6]_0 (vid_pipeline_I_n_52),
        .\pix_blue_4_reg[7] (vid_pipeline_I_n_48),
        .\pix_blue_4_reg[7]_0 (vid_pipeline_I_n_53),
        .\pix_blue_4_reg[8] (vid_pipeline_I_n_49),
        .\pix_blue_4_reg[8]_0 (vid_pipeline_I_n_54),
        .\pix_blue_4_reg[9] (vid_pipeline_I_n_50),
        .\pix_blue_4_reg[9]_0 (vid_pipeline_I_n_55),
        .\pix_green_4_reg[10] (vcol_green),
        .pktr_empty(pktr_empty),
        .q(vcrop_data),
        .\slb_addr_reg[3] (axi_ctrl_I_n_36),
        .\slb_wdata_reg[23] ({slb_wdata[23],slb_wdata[21:20],slb_wdata[17:8],slb_wdata[5:4],slb_wdata[1:0]}),
        .vcfm_data(vcfm_data),
        .\vfm_data_reg[31] ({reg_vpcr_I_n_27,reg_vpcr_I_n_28,reg_vpcr_I_n_29,reg_vpcr_I_n_30,reg_vpcr_I_n_31,reg_vpcr_I_n_32,reg_vpcr_I_n_33,reg_vpcr_I_n_34,reg_vpcr_I_n_35,reg_vpcr_I_n_36,reg_vpcr_I_n_37,reg_vpcr_I_n_38,reg_vpcr_I_n_39}),
        .vin_ready_10b(vin_ready_10b),
        .\vum_data_reg[9] ({ctrl_vum,reg_vpcr_I_n_2,reg_vpcr_I_n_3,ctrl_pol,ctrl_cfm,ctrl_vfm,reg_vpcr_I_n_16,reg_vpcr_I_n_17}),
        .\vum_data_reg[9]_0 (vum_data));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rst_cnt[0]_i_1 
       (.I0(\rst_cnt_reg_n_0_[0] ),
        .O(minusOp__0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \rst_cnt[1]_i_1 
       (.I0(\rst_cnt_reg_n_0_[0] ),
        .I1(\rst_cnt_reg_n_0_[1] ),
        .O(\rst_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \rst_cnt[2]_i_1 
       (.I0(\rst_cnt_reg_n_0_[1] ),
        .I1(\rst_cnt_reg_n_0_[0] ),
        .I2(\rst_cnt_reg_n_0_[2] ),
        .O(\rst_cnt[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \rst_cnt[3]_i_1 
       (.I0(rst_req_axi[1]),
        .I1(rst_req_axi[0]),
        .I2(rst),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \rst_cnt[3]_i_2 
       (.I0(\rst_cnt_reg_n_0_[2] ),
        .I1(\rst_cnt_reg_n_0_[0] ),
        .I2(\rst_cnt_reg_n_0_[1] ),
        .I3(dly_reset),
        .O(\rst_cnt[3]_i_2_n_0 ));
  FDSE \rst_cnt_reg[0] 
       (.C(clk),
        .CE(dly_reset),
        .D(minusOp__0),
        .Q(\rst_cnt_reg_n_0_[0] ),
        .S(clear));
  FDSE \rst_cnt_reg[1] 
       (.C(clk),
        .CE(dly_reset),
        .D(\rst_cnt[1]_i_1_n_0 ),
        .Q(\rst_cnt_reg_n_0_[1] ),
        .S(clear));
  FDSE \rst_cnt_reg[2] 
       (.C(clk),
        .CE(dly_reset),
        .D(\rst_cnt[2]_i_1_n_0 ),
        .Q(\rst_cnt_reg_n_0_[2] ),
        .S(clear));
  FDSE \rst_cnt_reg[3] 
       (.C(clk),
        .CE(dly_reset),
        .D(\rst_cnt[3]_i_2_n_0 ),
        .Q(dly_reset),
        .S(clear));
  LUT3 #(
    .INIT(8'h08)) 
    \rst_req_axi[0]_i_1 
       (.I0(p_2_in[0]),
        .I1(p_0_in),
        .I2(rst),
        .O(\rst_req_axi[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rst_req_axi[1]_i_1 
       (.I0(p_2_in[1]),
        .I1(p_0_in),
        .I2(rst_req_axi[1]),
        .O(\rst_req_axi[1]_i_1_n_0 ));
  FDRE \rst_req_axi_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\rst_req_axi[0]_i_1_n_0 ),
        .Q(rst_req_axi[0]),
        .R(1'b0));
  FDRE \rst_req_axi_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\rst_req_axi[1]_i_1_n_0 ),
        .Q(rst_req_axi[1]),
        .R(rst));
  FDRE \slb_rdata_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_48),
        .Q(slb_rdata[0]),
        .R(1'b0));
  FDRE \slb_rdata_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_47),
        .Q(slb_rdata[16]),
        .R(1'b0));
  FDRE \slb_rdata_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_46),
        .Q(slb_rdata[17]),
        .R(1'b0));
  FDRE \slb_rdata_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_53),
        .Q(slb_rdata[18]),
        .R(axi_ctrl_I_n_55));
  FDRE \slb_rdata_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_54),
        .Q(slb_rdata[19]),
        .R(axi_ctrl_I_n_55));
  FDRE \slb_rdata_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_49),
        .Q(slb_rdata[1]),
        .R(axi_ctrl_I_n_55));
  FDRE \slb_rdata_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_50),
        .Q(slb_rdata[2]),
        .R(axi_ctrl_I_n_55));
  FDRE \slb_rdata_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_45),
        .Q(slb_rdata[30]),
        .R(1'b0));
  FDRE \slb_rdata_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_44),
        .Q(slb_rdata[31]),
        .R(1'b0));
  FDRE \slb_rdata_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_51),
        .Q(slb_rdata[3]),
        .R(axi_ctrl_I_n_55));
  FDRE \slb_rdata_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(axi_ctrl_I_n_52),
        .Q(slb_rdata[4]),
        .R(axi_ctrl_I_n_55));
  LUT2 #(
    .INIT(4'h2)) 
    vaxi_valid_INST_0
       (.I0(p_0_in4_in),
        .I1(pix_fifo_empty_fwft),
        .O(vaxi_valid));
  TySOM_1_7Z030_mipi_csi_0_vid_pipeline vid_pipeline_I
       (.D({reg_vpcr_I_n_18,reg_vpcr_I_n_19,reg_vpcr_I_n_20,reg_vpcr_I_n_21,reg_vpcr_I_n_22,reg_vpcr_I_n_23,reg_vpcr_I_n_24,reg_vpcr_I_n_25}),
        .DI({reg_crop_colend_I_n_16,reg_crop_colend_I_n_17,reg_crop_colend_I_n_18,reg_crop_colend_I_n_19}),
        .DIP({vout_sof,vout_last}),
        .DO(vin_data),
        .DOP(pkt_fifo_I_n_35),
        .\FSM_sequential_state_cur_reg[1] (pkt_parser_I_n_14),
        .Q(dly_reset),
        .S({reg_crop_colend_I_n_0,reg_crop_colend_I_n_1,reg_crop_colend_I_n_2,reg_crop_colend_I_n_3}),
        .clk(clk),
        .cnt(\repack_32b_to_8b_I/cnt ),
        .\cnt_line_1_reg[11] (\crop_I/cnt_line_1_reg ),
        .\cnt_reg[16] (vid_pipeline_I_n_4),
        .\cnt_reg[16]_0 (p_0_in1_in),
        .eqOp__0(eqOp__0),
        .has_last(\repack_32b_to_40b_I/has_last ),
        .has_last_reg(pkt_parser_I_n_17),
        .mux(mux),
        .out(\crop_I/cnt_col_1_reg ),
        .pause(pause),
        .pause_reg(pkt_parser_I_n_12),
        .\pix_fifo_cnt_reg[0] (vout_data),
        .pktr_empty(pktr_empty),
        .q(vcrop_data),
        .\reg_reg[10] ({reg_crop_colend_I_n_22,reg_crop_colend_I_n_23}),
        .\reg_reg[10]_0 ({reg_crop_colend_I_n_20,reg_crop_colend_I_n_21}),
        .\reg_reg[10]_1 ({reg_crop_lineend_I_n_10,reg_crop_lineend_I_n_11}),
        .\reg_reg[10]_2 ({reg_crop_lineend_I_n_8,reg_crop_lineend_I_n_9}),
        .\reg_reg[11] ({reg_crop_colend_I_n_4,reg_crop_colend_I_n_5,reg_crop_colend_I_n_6,reg_crop_colend_I_n_7,reg_crop_colend_I_n_8,reg_crop_colend_I_n_9,reg_crop_colend_I_n_10,reg_crop_colend_I_n_11,reg_crop_colend_I_n_12,reg_crop_colend_I_n_13,reg_crop_colend_I_n_14,reg_crop_colend_I_n_15}),
        .\reg_reg[11]_0 ({reg_crop_linestart_I_n_0,reg_crop_linestart_I_n_1,reg_crop_linestart_I_n_2,reg_crop_linestart_I_n_3,reg_crop_linestart_I_n_4,reg_crop_linestart_I_n_5,reg_crop_linestart_I_n_6,reg_crop_linestart_I_n_7,reg_crop_linestart_I_n_8,reg_crop_linestart_I_n_9,reg_crop_linestart_I_n_10,reg_crop_linestart_I_n_11}),
        .\reg_reg[11]_1 ({reg_crop_colstart_I_n_0,reg_crop_colstart_I_n_1,reg_crop_colstart_I_n_2,reg_crop_colstart_I_n_3,reg_crop_colstart_I_n_4,reg_crop_colstart_I_n_5,reg_crop_colstart_I_n_6,reg_crop_colstart_I_n_7,reg_crop_colstart_I_n_8,reg_crop_colstart_I_n_9,reg_crop_colstart_I_n_10,reg_crop_colstart_I_n_11}),
        .\reg_reg[23] ({ctrl_vum,reg_vpcr_I_n_2,reg_vpcr_I_n_3,ctrl_pol,ctrl_cfm,ctrl_vfm,reg_vpcr_I_n_16,reg_vpcr_I_n_17}),
        .\reg_reg[4] ({reg_vpcr_I_n_27,reg_vpcr_I_n_28,reg_vpcr_I_n_29,reg_vpcr_I_n_30,reg_vpcr_I_n_31,reg_vpcr_I_n_32,reg_vpcr_I_n_33,reg_vpcr_I_n_34,reg_vpcr_I_n_35,reg_vpcr_I_n_36,reg_vpcr_I_n_37,reg_vpcr_I_n_38,reg_vpcr_I_n_39}),
        .\reg_reg[6] ({reg_crop_lineend_I_n_4,reg_crop_lineend_I_n_5,reg_crop_lineend_I_n_6,reg_crop_lineend_I_n_7}),
        .\reg_reg[6]_0 ({reg_crop_lineend_I_n_0,reg_crop_lineend_I_n_1,reg_crop_lineend_I_n_2,reg_crop_lineend_I_n_3}),
        .\srl_gen[0].part_stage_gen.b_gen[8].ff_I (vum_data),
        .\vfm_data_reg[10]_0 (vcfm_data),
        .\vfm_data_reg[11]_0 (vid_pipeline_I_n_47),
        .\vfm_data_reg[12]_0 (vid_pipeline_I_n_48),
        .\vfm_data_reg[13]_0 (vid_pipeline_I_n_49),
        .\vfm_data_reg[14]_0 (vid_pipeline_I_n_50),
        .\vfm_data_reg[15]_0 (vid_pipeline_I_n_51),
        .\vfm_data_reg[26]_0 (vcol_green),
        .\vfm_data_reg[27]_0 (vid_pipeline_I_n_52),
        .\vfm_data_reg[28]_0 (vid_pipeline_I_n_53),
        .\vfm_data_reg[29]_0 (vid_pipeline_I_n_54),
        .\vfm_data_reg[30]_0 (vid_pipeline_I_n_55),
        .\vfm_data_reg[31]_0 (vid_pipeline_I_n_56),
        .vid_ready(vid_ready),
        .vin_ready_10b(vin_ready_10b),
        .vin_sof(vin_sof),
        .vout_valid(vout_valid));
endmodule

(* ORIG_REF_NAME = "mipi_ecc" *) 
module TySOM_1_7Z030_mipi_csi_0_mipi_ecc
   (ecc_exp_0,
    \pkt_data_reg[27] ,
    \lane_gen[1].data_shift_reg ,
    \lane_gen[0].data_shift_reg ,
    Q,
    \pkt_data_reg[7] ,
    \pkt_data_reg[26] ,
    \pkt_data_reg[16] ,
    \pkt_data_reg[17] ,
    \pkt_data_reg[6] ,
    \pkt_data_reg[5] ,
    \pkt_data_reg[4] );
  output [5:0]ecc_exp_0;
  input \pkt_data_reg[27] ;
  input [5:0]\lane_gen[1].data_shift_reg ;
  input [7:0]\lane_gen[0].data_shift_reg ;
  input [1:0]Q;
  input \pkt_data_reg[7] ;
  input \pkt_data_reg[26] ;
  input \pkt_data_reg[16] ;
  input \pkt_data_reg[17] ;
  input \pkt_data_reg[6] ;
  input \pkt_data_reg[5] ;
  input \pkt_data_reg[4] ;

  wire [1:0]Q;
  wire [5:0]ecc_exp_0;
  wire ecc_valid_1_i_10_n_0;
  wire ecc_valid_1_i_15_n_0;
  wire ecc_valid_1_i_16_n_0;
  wire ecc_valid_1_i_17_n_0;
  wire ecc_valid_1_i_18_n_0;
  wire ecc_valid_1_i_6_n_0;
  wire ecc_valid_1_i_7_n_0;
  wire ecc_valid_1_i_8_n_0;
  wire ecc_valid_1_i_9_n_0;
  wire [7:0]\lane_gen[0].data_shift_reg ;
  wire [5:0]\lane_gen[1].data_shift_reg ;
  wire \pkt_data_reg[16] ;
  wire \pkt_data_reg[17] ;
  wire \pkt_data_reg[26] ;
  wire \pkt_data_reg[27] ;
  wire \pkt_data_reg[4] ;
  wire \pkt_data_reg[5] ;
  wire \pkt_data_reg[6] ;
  wire \pkt_data_reg[7] ;

  LUT4 #(
    .INIT(16'h6996)) 
    ecc_valid_1_i_10
       (.I0(\lane_gen[1].data_shift_reg [2]),
        .I1(\pkt_data_reg[16] ),
        .I2(\pkt_data_reg[17] ),
        .I3(\lane_gen[1].data_shift_reg [3]),
        .O(ecc_valid_1_i_10_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    ecc_valid_1_i_11
       (.I0(\pkt_data_reg[27] ),
        .I1(\lane_gen[1].data_shift_reg [4]),
        .I2(ecc_valid_1_i_6_n_0),
        .I3(ecc_valid_1_i_15_n_0),
        .I4(\lane_gen[0].data_shift_reg [4]),
        .I5(\lane_gen[0].data_shift_reg [5]),
        .O(ecc_exp_0[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    ecc_valid_1_i_12
       (.I0(\lane_gen[1].data_shift_reg [1]),
        .I1(\lane_gen[1].data_shift_reg [0]),
        .I2(ecc_valid_1_i_8_n_0),
        .I3(ecc_valid_1_i_16_n_0),
        .I4(\lane_gen[0].data_shift_reg [4]),
        .I5(\lane_gen[0].data_shift_reg [5]),
        .O(ecc_exp_0[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    ecc_valid_1_i_13
       (.I0(\pkt_data_reg[27] ),
        .I1(\pkt_data_reg[7] ),
        .I2(ecc_valid_1_i_6_n_0),
        .I3(ecc_valid_1_i_17_n_0),
        .I4(\lane_gen[1].data_shift_reg [1]),
        .I5(\lane_gen[0].data_shift_reg [5]),
        .O(ecc_exp_0[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    ecc_valid_1_i_14
       (.I0(\pkt_data_reg[27] ),
        .I1(\lane_gen[1].data_shift_reg [4]),
        .I2(ecc_valid_1_i_8_n_0),
        .I3(ecc_valid_1_i_18_n_0),
        .I4(\lane_gen[1].data_shift_reg [1]),
        .I5(\lane_gen[0].data_shift_reg [4]),
        .O(ecc_exp_0[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    ecc_valid_1_i_15
       (.I0(Q[0]),
        .I1(\lane_gen[0].data_shift_reg [3]),
        .I2(\lane_gen[0].data_shift_reg [2]),
        .I3(\lane_gen[1].data_shift_reg [5]),
        .I4(\lane_gen[1].data_shift_reg [2]),
        .I5(\lane_gen[1].data_shift_reg [3]),
        .O(ecc_valid_1_i_15_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    ecc_valid_1_i_16
       (.I0(\pkt_data_reg[16] ),
        .I1(\lane_gen[0].data_shift_reg [3]),
        .I2(\lane_gen[0].data_shift_reg [2]),
        .I3(\lane_gen[0].data_shift_reg [1]),
        .I4(Q[1]),
        .I5(\pkt_data_reg[17] ),
        .O(ecc_valid_1_i_16_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    ecc_valid_1_i_17
       (.I0(\lane_gen[0].data_shift_reg [6]),
        .I1(\lane_gen[1].data_shift_reg [0]),
        .I2(\lane_gen[0].data_shift_reg [1]),
        .I3(\pkt_data_reg[6] ),
        .I4(\pkt_data_reg[5] ),
        .I5(\lane_gen[1].data_shift_reg [5]),
        .O(ecc_valid_1_i_17_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    ecc_valid_1_i_18
       (.I0(\lane_gen[0].data_shift_reg [7]),
        .I1(\pkt_data_reg[7] ),
        .I2(\pkt_data_reg[4] ),
        .I3(\pkt_data_reg[6] ),
        .I4(\lane_gen[1].data_shift_reg [3]),
        .I5(\pkt_data_reg[17] ),
        .O(ecc_valid_1_i_18_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    ecc_valid_1_i_2
       (.I0(ecc_valid_1_i_6_n_0),
        .I1(ecc_valid_1_i_7_n_0),
        .I2(\pkt_data_reg[7] ),
        .I3(ecc_valid_1_i_8_n_0),
        .I4(\lane_gen[1].data_shift_reg [4]),
        .O(ecc_exp_0[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    ecc_valid_1_i_3
       (.I0(ecc_valid_1_i_9_n_0),
        .I1(ecc_valid_1_i_10_n_0),
        .I2(Q[1]),
        .I3(\lane_gen[0].data_shift_reg [7]),
        .I4(Q[0]),
        .I5(\lane_gen[0].data_shift_reg [6]),
        .O(ecc_exp_0[0]));
  LUT3 #(
    .INIT(8'h96)) 
    ecc_valid_1_i_6
       (.I0(Q[1]),
        .I1(\lane_gen[0].data_shift_reg [7]),
        .I2(\pkt_data_reg[26] ),
        .O(ecc_valid_1_i_6_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    ecc_valid_1_i_7
       (.I0(\lane_gen[0].data_shift_reg [3]),
        .I1(\lane_gen[1].data_shift_reg [0]),
        .I2(\pkt_data_reg[5] ),
        .I3(\pkt_data_reg[4] ),
        .I4(\pkt_data_reg[16] ),
        .I5(\lane_gen[1].data_shift_reg [2]),
        .O(ecc_valid_1_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    ecc_valid_1_i_8
       (.I0(Q[0]),
        .I1(\lane_gen[0].data_shift_reg [6]),
        .I2(\lane_gen[0].data_shift_reg [0]),
        .O(ecc_valid_1_i_8_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    ecc_valid_1_i_9
       (.I0(\pkt_data_reg[5] ),
        .I1(\lane_gen[0].data_shift_reg [2]),
        .I2(\pkt_data_reg[4] ),
        .I3(\pkt_data_reg[6] ),
        .I4(\lane_gen[1].data_shift_reg [5]),
        .I5(\lane_gen[0].data_shift_reg [1]),
        .O(ecc_valid_1_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "slb_reg" *) 
module TySOM_1_7Z030_mipi_csi_0_slb_reg
   (vid_sof_reg,
    \cnt_reg[16] ,
    err_pending0,
    Q,
    p_0_in,
    clk,
    stat_err_pending,
    err_any_c__3,
    D);
  output vid_sof_reg;
  output [4:0]\cnt_reg[16] ;
  output err_pending0;
  input [0:0]Q;
  input p_0_in;
  input clk;
  input stat_err_pending;
  input err_any_c__3;
  input [4:0]D;

  wire [4:0]D;
  wire [0:0]Q;
  wire clk;
  wire [4:0]\cnt_reg[16] ;
  wire err_any_c__3;
  wire err_pending0;
  wire p_0_in;
  wire stat_err_pending;
  wire vid_sof_reg;
  wire wen_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    err_pending_i_1
       (.I0(\cnt_reg[16] [3]),
        .I1(stat_err_pending),
        .I2(err_any_c__3),
        .I3(\cnt_reg[16] [2]),
        .O(err_pending0));
  FDRE \reg_reg[0] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[0]),
        .Q(\cnt_reg[16] [0]),
        .R(Q));
  FDRE \reg_reg[16] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[2]),
        .Q(\cnt_reg[16] [2]),
        .R(Q));
  FDRE \reg_reg[17] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[3]),
        .Q(\cnt_reg[16] [3]),
        .R(Q));
  FDRE \reg_reg[18] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[4]),
        .Q(\cnt_reg[16] [4]),
        .R(Q));
  FDRE \reg_reg[1] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[1]),
        .Q(\cnt_reg[16] [1]),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    vid_sof_i_17
       (.I0(\cnt_reg[16] [2]),
        .I1(stat_err_pending),
        .O(vid_sof_reg));
  FDRE wen_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(wen_reg_n_0),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "slb_reg" *) 
module TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized1
   (intr_reg,
    Q,
    \slb_addr_reg[3] ,
    clk,
    \reg_er_reg[19] ,
    D);
  output intr_reg;
  input [0:0]Q;
  input \slb_addr_reg[3] ;
  input clk;
  input [8:0]\reg_er_reg[19] ;
  input [8:0]D;

  wire [8:0]D;
  wire [0:0]Q;
  wire clk;
  wire intr_i_2_n_0;
  wire intr_i_3_n_0;
  wire intr_i_4_n_0;
  wire intr_reg;
  wire [8:0]\reg_er_reg[19] ;
  wire [19:0]reg_imr;
  wire \slb_addr_reg[3] ;
  wire wen;

  LUT5 #(
    .INIT(32'hFFDFDFDF)) 
    intr_i_1
       (.I0(intr_i_2_n_0),
        .I1(intr_i_3_n_0),
        .I2(intr_i_4_n_0),
        .I3(\reg_er_reg[19] [8]),
        .I4(reg_imr[19]),
        .O(intr_reg));
  LUT6 #(
    .INIT(64'h0000077707770777)) 
    intr_i_2
       (.I0(\reg_er_reg[19] [2]),
        .I1(reg_imr[2]),
        .I2(\reg_er_reg[19] [1]),
        .I3(reg_imr[1]),
        .I4(reg_imr[0]),
        .I5(\reg_er_reg[19] [0]),
        .O(intr_i_2_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    intr_i_3
       (.I0(reg_imr[3]),
        .I1(\reg_er_reg[19] [3]),
        .I2(reg_imr[4]),
        .I3(\reg_er_reg[19] [4]),
        .O(intr_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000077707770777)) 
    intr_i_4
       (.I0(\reg_er_reg[19] [7]),
        .I1(reg_imr[18]),
        .I2(\reg_er_reg[19] [6]),
        .I3(reg_imr[17]),
        .I4(reg_imr[16]),
        .I5(\reg_er_reg[19] [5]),
        .O(intr_i_4_n_0));
  FDRE \reg_reg[0] 
       (.C(clk),
        .CE(wen),
        .D(D[0]),
        .Q(reg_imr[0]),
        .R(Q));
  FDRE \reg_reg[16] 
       (.C(clk),
        .CE(wen),
        .D(D[5]),
        .Q(reg_imr[16]),
        .R(Q));
  FDRE \reg_reg[17] 
       (.C(clk),
        .CE(wen),
        .D(D[6]),
        .Q(reg_imr[17]),
        .R(Q));
  FDRE \reg_reg[18] 
       (.C(clk),
        .CE(wen),
        .D(D[7]),
        .Q(reg_imr[18]),
        .R(Q));
  FDRE \reg_reg[19] 
       (.C(clk),
        .CE(wen),
        .D(D[8]),
        .Q(reg_imr[19]),
        .R(Q));
  FDRE \reg_reg[1] 
       (.C(clk),
        .CE(wen),
        .D(D[1]),
        .Q(reg_imr[1]),
        .R(Q));
  FDRE \reg_reg[2] 
       (.C(clk),
        .CE(wen),
        .D(D[2]),
        .Q(reg_imr[2]),
        .R(Q));
  FDRE \reg_reg[3] 
       (.C(clk),
        .CE(wen),
        .D(D[3]),
        .Q(reg_imr[3]),
        .R(Q));
  FDRE \reg_reg[4] 
       (.C(clk),
        .CE(wen),
        .D(D[4]),
        .Q(reg_imr[4]),
        .R(Q));
  FDRE wen_reg
       (.C(clk),
        .CE(1'b1),
        .D(\slb_addr_reg[3] ),
        .Q(wen),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "slb_reg" *) 
module TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized11
   (S,
    DI,
    win_le_ok_2_reg,
    win_le_ok_2_reg_0,
    Q,
    \slb_addr_reg[2] ,
    clk,
    out,
    \slb_wdata_reg[11] );
  output [3:0]S;
  output [3:0]DI;
  output [1:0]win_le_ok_2_reg;
  output [1:0]win_le_ok_2_reg_0;
  input [0:0]Q;
  input \slb_addr_reg[2] ;
  input clk;
  input [11:0]out;
  input [11:0]\slb_wdata_reg[11] ;

  wire [3:0]DI;
  wire [0:0]Q;
  wire [3:0]S;
  wire clk;
  wire [11:0]out;
  wire \reg_reg_n_0_[0] ;
  wire \reg_reg_n_0_[10] ;
  wire \reg_reg_n_0_[11] ;
  wire \reg_reg_n_0_[1] ;
  wire \reg_reg_n_0_[2] ;
  wire \reg_reg_n_0_[3] ;
  wire \reg_reg_n_0_[4] ;
  wire \reg_reg_n_0_[5] ;
  wire \reg_reg_n_0_[6] ;
  wire \reg_reg_n_0_[7] ;
  wire \reg_reg_n_0_[8] ;
  wire \reg_reg_n_0_[9] ;
  wire \slb_addr_reg[2] ;
  wire [11:0]\slb_wdata_reg[11] ;
  wire wen_reg_n_0;
  wire [1:0]win_le_ok_2_reg;
  wire [1:0]win_le_ok_2_reg_0;

  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1__1
       (.I0(\reg_reg_n_0_[10] ),
        .I1(out[10]),
        .I2(out[11]),
        .I3(\reg_reg_n_0_[11] ),
        .O(win_le_ok_2_reg_0[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2__1
       (.I0(\reg_reg_n_0_[8] ),
        .I1(out[8]),
        .I2(out[9]),
        .I3(\reg_reg_n_0_[9] ),
        .O(win_le_ok_2_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_3__1
       (.I0(\reg_reg_n_0_[10] ),
        .I1(out[10]),
        .I2(\reg_reg_n_0_[11] ),
        .I3(out[11]),
        .O(win_le_ok_2_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_4__1
       (.I0(\reg_reg_n_0_[8] ),
        .I1(out[8]),
        .I2(\reg_reg_n_0_[9] ),
        .I3(out[9]),
        .O(win_le_ok_2_reg[0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__1
       (.I0(\reg_reg_n_0_[6] ),
        .I1(out[6]),
        .I2(out[7]),
        .I3(\reg_reg_n_0_[7] ),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__1
       (.I0(\reg_reg_n_0_[4] ),
        .I1(out[4]),
        .I2(out[5]),
        .I3(\reg_reg_n_0_[5] ),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__1
       (.I0(\reg_reg_n_0_[2] ),
        .I1(out[2]),
        .I2(out[3]),
        .I3(\reg_reg_n_0_[3] ),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4
       (.I0(\reg_reg_n_0_[0] ),
        .I1(out[0]),
        .I2(out[1]),
        .I3(\reg_reg_n_0_[1] ),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(\reg_reg_n_0_[6] ),
        .I1(out[6]),
        .I2(\reg_reg_n_0_[7] ),
        .I3(out[7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(\reg_reg_n_0_[4] ),
        .I1(out[4]),
        .I2(\reg_reg_n_0_[5] ),
        .I3(out[5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(\reg_reg_n_0_[2] ),
        .I1(out[2]),
        .I2(\reg_reg_n_0_[3] ),
        .I3(out[3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(\reg_reg_n_0_[0] ),
        .I1(out[0]),
        .I2(\reg_reg_n_0_[1] ),
        .I3(out[1]),
        .O(S[0]));
  FDSE \reg_reg[0] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [0]),
        .Q(\reg_reg_n_0_[0] ),
        .S(Q));
  FDSE \reg_reg[10] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [10]),
        .Q(\reg_reg_n_0_[10] ),
        .S(Q));
  FDSE \reg_reg[11] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [11]),
        .Q(\reg_reg_n_0_[11] ),
        .S(Q));
  FDSE \reg_reg[1] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [1]),
        .Q(\reg_reg_n_0_[1] ),
        .S(Q));
  FDSE \reg_reg[2] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [2]),
        .Q(\reg_reg_n_0_[2] ),
        .S(Q));
  FDSE \reg_reg[3] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [3]),
        .Q(\reg_reg_n_0_[3] ),
        .S(Q));
  FDSE \reg_reg[4] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [4]),
        .Q(\reg_reg_n_0_[4] ),
        .S(Q));
  FDSE \reg_reg[5] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [5]),
        .Q(\reg_reg_n_0_[5] ),
        .S(Q));
  FDSE \reg_reg[6] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [6]),
        .Q(\reg_reg_n_0_[6] ),
        .S(Q));
  FDSE \reg_reg[7] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [7]),
        .Q(\reg_reg_n_0_[7] ),
        .S(Q));
  FDSE \reg_reg[8] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [8]),
        .Q(\reg_reg_n_0_[8] ),
        .S(Q));
  FDSE \reg_reg[9] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [9]),
        .Q(\reg_reg_n_0_[9] ),
        .S(Q));
  FDRE wen_reg
       (.C(clk),
        .CE(1'b1),
        .D(\slb_addr_reg[2] ),
        .Q(wen_reg_n_0),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "slb_reg" *) 
module TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized3
   (pause0,
    \vum_data_reg[9] ,
    D,
    eqOp__0,
    \vfm_data_reg[31] ,
    Q,
    \slb_addr_reg[3] ,
    clk,
    pktr_empty,
    vin_ready_10b,
    \cnt_reg[0] ,
    q,
    vcfm_data,
    \pix_green_4_reg[10] ,
    \pix_blue_4_reg[6] ,
    \pix_blue_4_reg[7] ,
    \pix_blue_4_reg[8] ,
    \pix_blue_4_reg[9] ,
    \pix_blue_4_reg[10] ,
    \pix_blue_4_reg[6]_0 ,
    DO,
    \pix_blue_4_reg[7]_0 ,
    \pix_blue_4_reg[8]_0 ,
    \pix_blue_4_reg[9]_0 ,
    \pix_blue_4_reg[10]_0 ,
    \vum_data_reg[9]_0 ,
    \slb_wdata_reg[23] );
  output pause0;
  output [16:0]\vum_data_reg[9] ;
  output [7:0]D;
  output eqOp__0;
  output [12:0]\vfm_data_reg[31] ;
  input [0:0]Q;
  input \slb_addr_reg[3] ;
  input clk;
  input pktr_empty;
  input vin_ready_10b;
  input \cnt_reg[0] ;
  input [7:0]q;
  input [2:0]vcfm_data;
  input [2:0]\pix_green_4_reg[10] ;
  input \pix_blue_4_reg[6] ;
  input \pix_blue_4_reg[7] ;
  input \pix_blue_4_reg[8] ;
  input \pix_blue_4_reg[9] ;
  input \pix_blue_4_reg[10] ;
  input \pix_blue_4_reg[6]_0 ;
  input [12:0]DO;
  input \pix_blue_4_reg[7]_0 ;
  input \pix_blue_4_reg[8]_0 ;
  input \pix_blue_4_reg[9]_0 ;
  input \pix_blue_4_reg[10]_0 ;
  input [7:0]\vum_data_reg[9]_0 ;
  input [16:0]\slb_wdata_reg[23] ;

  wire [7:0]D;
  wire [12:0]DO;
  wire [0:0]Q;
  wire clk;
  wire \cnt_reg[0] ;
  wire eqOp__0;
  wire pause0;
  wire \pix_blue_4_reg[10] ;
  wire \pix_blue_4_reg[10]_0 ;
  wire \pix_blue_4_reg[6] ;
  wire \pix_blue_4_reg[6]_0 ;
  wire \pix_blue_4_reg[7] ;
  wire \pix_blue_4_reg[7]_0 ;
  wire \pix_blue_4_reg[8] ;
  wire \pix_blue_4_reg[8]_0 ;
  wire \pix_blue_4_reg[9] ;
  wire \pix_blue_4_reg[9]_0 ;
  wire [2:0]\pix_green_4_reg[10] ;
  wire pktr_empty;
  wire [7:0]q;
  wire \slb_addr_reg[3] ;
  wire [16:0]\slb_wdata_reg[23] ;
  wire [2:0]vcfm_data;
  wire \vfm_data[10]_i_3_n_0 ;
  wire \vfm_data[11]_i_2_n_0 ;
  wire \vfm_data[12]_i_2_n_0 ;
  wire \vfm_data[13]_i_2_n_0 ;
  wire \vfm_data[14]_i_2_n_0 ;
  wire \vfm_data[15]_i_2_n_0 ;
  wire \vfm_data[8]_i_3_n_0 ;
  wire \vfm_data[9]_i_3_n_0 ;
  wire [12:0]\vfm_data_reg[31] ;
  wire vin_ready_10b;
  wire [16:0]\vum_data_reg[9] ;
  wire [7:0]\vum_data_reg[9]_0 ;
  wire wen_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \bl.fifo_36_inst_bl.fifo_36_bl_i_7 
       (.I0(\vum_data_reg[9] [3]),
        .I1(\vum_data_reg[9] [2]),
        .O(eqOp__0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \data[0]_i_1 
       (.I0(\vum_data_reg[9] [1]),
        .I1(\vum_data_reg[9] [0]),
        .I2(q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \data[1]_i_1 
       (.I0(\vum_data_reg[9] [1]),
        .I1(\vum_data_reg[9] [0]),
        .I2(q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \data[2]_i_1 
       (.I0(\vum_data_reg[9] [1]),
        .I1(\vum_data_reg[9] [0]),
        .I2(q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \data[3]_i_1 
       (.I0(\vum_data_reg[9] [1]),
        .I1(\vum_data_reg[9] [0]),
        .I2(q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \data[4]_i_1 
       (.I0(\vum_data_reg[9] [1]),
        .I1(\vum_data_reg[9] [0]),
        .I2(q[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \data[5]_i_1 
       (.I0(\vum_data_reg[9] [1]),
        .I1(\vum_data_reg[9] [0]),
        .I2(q[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \data[6]_i_1 
       (.I0(\vum_data_reg[9] [1]),
        .I1(\vum_data_reg[9] [0]),
        .I2(q[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \data[7]_i_2 
       (.I0(\vum_data_reg[9] [1]),
        .I1(\vum_data_reg[9] [0]),
        .I2(q[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hEFEAEFEAEFEAFFFF)) 
    pause_i_2
       (.I0(pktr_empty),
        .I1(vin_ready_10b),
        .I2(\vum_data_reg[9] [16]),
        .I3(\cnt_reg[0] ),
        .I4(\vum_data_reg[9] [3]),
        .I5(\vum_data_reg[9] [2]),
        .O(pause0));
  FDRE \reg_reg[0] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[23] [0]),
        .Q(\vum_data_reg[9] [0]),
        .R(Q));
  FDRE \reg_reg[10] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[23] [6]),
        .Q(\vum_data_reg[9] [6]),
        .R(Q));
  FDSE \reg_reg[11] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[23] [7]),
        .Q(\vum_data_reg[9] [7]),
        .S(Q));
  FDSE \reg_reg[12] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[23] [8]),
        .Q(\vum_data_reg[9] [8]),
        .S(Q));
  FDSE \reg_reg[13] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[23] [9]),
        .Q(\vum_data_reg[9] [9]),
        .S(Q));
  FDRE \reg_reg[14] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[23] [10]),
        .Q(\vum_data_reg[9] [10]),
        .R(Q));
  FDRE \reg_reg[15] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[23] [11]),
        .Q(\vum_data_reg[9] [11]),
        .R(Q));
  FDSE \reg_reg[16] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[23] [12]),
        .Q(\vum_data_reg[9] [12]),
        .S(Q));
  FDSE \reg_reg[17] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[23] [13]),
        .Q(\vum_data_reg[9] [13]),
        .S(Q));
  FDRE \reg_reg[1] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[23] [1]),
        .Q(\vum_data_reg[9] [1]),
        .R(Q));
  FDSE \reg_reg[20] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[23] [14]),
        .Q(\vum_data_reg[9] [14]),
        .S(Q));
  FDRE \reg_reg[21] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[23] [15]),
        .Q(\vum_data_reg[9] [15]),
        .R(Q));
  FDRE \reg_reg[23] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[23] [16]),
        .Q(\vum_data_reg[9] [16]),
        .R(Q));
  FDSE \reg_reg[4] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[23] [2]),
        .Q(\vum_data_reg[9] [2]),
        .S(Q));
  FDSE \reg_reg[5] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[23] [3]),
        .Q(\vum_data_reg[9] [3]),
        .S(Q));
  FDSE \reg_reg[8] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[23] [4]),
        .Q(\vum_data_reg[9] [4]),
        .S(Q));
  FDRE \reg_reg[9] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[23] [5]),
        .Q(\vum_data_reg[9] [5]),
        .R(Q));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \vfm_data[10]_i_1 
       (.I0(vcfm_data[2]),
        .I1(\vum_data_reg[9] [3]),
        .I2(\pix_green_4_reg[10] [2]),
        .I3(\vum_data_reg[9] [2]),
        .I4(\vfm_data[10]_i_3_n_0 ),
        .O(\vfm_data_reg[31] [2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \vfm_data[10]_i_3 
       (.I0(\vum_data_reg[9] [15]),
        .I1(\vum_data_reg[9] [14]),
        .I2(\vum_data_reg[9]_0 [2]),
        .I3(\vum_data_reg[9] [3]),
        .I4(DO[2]),
        .O(\vfm_data[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \vfm_data[11]_i_2 
       (.I0(\vum_data_reg[9] [15]),
        .I1(\vum_data_reg[9] [14]),
        .I2(\vum_data_reg[9]_0 [3]),
        .I3(\vum_data_reg[9] [3]),
        .I4(DO[3]),
        .O(\vfm_data[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \vfm_data[12]_i_2 
       (.I0(\vum_data_reg[9] [15]),
        .I1(\vum_data_reg[9] [14]),
        .I2(\vum_data_reg[9]_0 [4]),
        .I3(\vum_data_reg[9] [3]),
        .I4(DO[4]),
        .O(\vfm_data[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \vfm_data[13]_i_2 
       (.I0(\vum_data_reg[9] [15]),
        .I1(\vum_data_reg[9] [14]),
        .I2(\vum_data_reg[9]_0 [5]),
        .I3(\vum_data_reg[9] [3]),
        .I4(DO[5]),
        .O(\vfm_data[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \vfm_data[14]_i_2 
       (.I0(\vum_data_reg[9] [15]),
        .I1(\vum_data_reg[9] [14]),
        .I2(\vum_data_reg[9]_0 [6]),
        .I3(\vum_data_reg[9] [3]),
        .I4(DO[6]),
        .O(\vfm_data[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \vfm_data[15]_i_2 
       (.I0(\vum_data_reg[9] [15]),
        .I1(\vum_data_reg[9] [14]),
        .I2(\vum_data_reg[9]_0 [7]),
        .I3(\vum_data_reg[9] [3]),
        .I4(DO[7]),
        .O(\vfm_data[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \vfm_data[27]_i_1 
       (.I0(\pix_blue_4_reg[6]_0 ),
        .I1(\vum_data_reg[9] [2]),
        .I2(DO[8]),
        .I3(\vum_data_reg[9] [3]),
        .O(\vfm_data_reg[31] [8]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \vfm_data[28]_i_1 
       (.I0(\pix_blue_4_reg[7]_0 ),
        .I1(\vum_data_reg[9] [2]),
        .I2(DO[9]),
        .I3(\vum_data_reg[9] [3]),
        .O(\vfm_data_reg[31] [9]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \vfm_data[29]_i_1 
       (.I0(\pix_blue_4_reg[8]_0 ),
        .I1(\vum_data_reg[9] [2]),
        .I2(DO[10]),
        .I3(\vum_data_reg[9] [3]),
        .O(\vfm_data_reg[31] [10]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \vfm_data[30]_i_1 
       (.I0(\pix_blue_4_reg[9]_0 ),
        .I1(\vum_data_reg[9] [2]),
        .I2(DO[11]),
        .I3(\vum_data_reg[9] [3]),
        .O(\vfm_data_reg[31] [11]));
  LUT4 #(
    .INIT(16'h88B8)) 
    \vfm_data[31]_i_1 
       (.I0(\pix_blue_4_reg[10]_0 ),
        .I1(\vum_data_reg[9] [2]),
        .I2(DO[12]),
        .I3(\vum_data_reg[9] [3]),
        .O(\vfm_data_reg[31] [12]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \vfm_data[8]_i_1 
       (.I0(vcfm_data[0]),
        .I1(\vum_data_reg[9] [3]),
        .I2(\pix_green_4_reg[10] [0]),
        .I3(\vum_data_reg[9] [2]),
        .I4(\vfm_data[8]_i_3_n_0 ),
        .O(\vfm_data_reg[31] [0]));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \vfm_data[8]_i_3 
       (.I0(\vum_data_reg[9] [15]),
        .I1(\vum_data_reg[9]_0 [6]),
        .I2(\vum_data_reg[9] [14]),
        .I3(\vum_data_reg[9]_0 [0]),
        .I4(\vum_data_reg[9] [3]),
        .I5(DO[0]),
        .O(\vfm_data[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \vfm_data[9]_i_1 
       (.I0(vcfm_data[1]),
        .I1(\vum_data_reg[9] [3]),
        .I2(\pix_green_4_reg[10] [1]),
        .I3(\vum_data_reg[9] [2]),
        .I4(\vfm_data[9]_i_3_n_0 ),
        .O(\vfm_data_reg[31] [1]));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \vfm_data[9]_i_3 
       (.I0(\vum_data_reg[9] [15]),
        .I1(\vum_data_reg[9]_0 [7]),
        .I2(\vum_data_reg[9] [14]),
        .I3(\vum_data_reg[9]_0 [1]),
        .I4(\vum_data_reg[9] [3]),
        .I5(DO[1]),
        .O(\vfm_data[9]_i_3_n_0 ));
  MUXF7 \vfm_data_reg[11]_i_1 
       (.I0(\vfm_data[11]_i_2_n_0 ),
        .I1(\pix_blue_4_reg[6] ),
        .O(\vfm_data_reg[31] [3]),
        .S(\vum_data_reg[9] [2]));
  MUXF7 \vfm_data_reg[12]_i_1 
       (.I0(\vfm_data[12]_i_2_n_0 ),
        .I1(\pix_blue_4_reg[7] ),
        .O(\vfm_data_reg[31] [4]),
        .S(\vum_data_reg[9] [2]));
  MUXF7 \vfm_data_reg[13]_i_1 
       (.I0(\vfm_data[13]_i_2_n_0 ),
        .I1(\pix_blue_4_reg[8] ),
        .O(\vfm_data_reg[31] [5]),
        .S(\vum_data_reg[9] [2]));
  MUXF7 \vfm_data_reg[14]_i_1 
       (.I0(\vfm_data[14]_i_2_n_0 ),
        .I1(\pix_blue_4_reg[9] ),
        .O(\vfm_data_reg[31] [6]),
        .S(\vum_data_reg[9] [2]));
  MUXF7 \vfm_data_reg[15]_i_1 
       (.I0(\vfm_data[15]_i_2_n_0 ),
        .I1(\pix_blue_4_reg[10] ),
        .O(\vfm_data_reg[31] [7]),
        .S(\vum_data_reg[9] [2]));
  FDRE wen_reg
       (.C(clk),
        .CE(1'b1),
        .D(\slb_addr_reg[3] ),
        .Q(wen_reg_n_0),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "slb_reg" *) 
module TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized5
   (win_cs_ok_2_reg,
    Q,
    \slb_addr_reg[2] ,
    clk,
    D);
  output [11:0]win_cs_ok_2_reg;
  input [0:0]Q;
  input \slb_addr_reg[2] ;
  input clk;
  input [11:0]D;

  wire [11:0]D;
  wire [0:0]Q;
  wire clk;
  wire \slb_addr_reg[2] ;
  wire wen_reg_n_0;
  wire [11:0]win_cs_ok_2_reg;

  FDRE \reg_reg[0] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[0]),
        .Q(win_cs_ok_2_reg[0]),
        .R(Q));
  FDRE \reg_reg[10] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[10]),
        .Q(win_cs_ok_2_reg[10]),
        .R(Q));
  FDRE \reg_reg[11] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[11]),
        .Q(win_cs_ok_2_reg[11]),
        .R(Q));
  FDRE \reg_reg[1] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[1]),
        .Q(win_cs_ok_2_reg[1]),
        .R(Q));
  FDRE \reg_reg[2] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[2]),
        .Q(win_cs_ok_2_reg[2]),
        .R(Q));
  FDRE \reg_reg[3] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[3]),
        .Q(win_cs_ok_2_reg[3]),
        .R(Q));
  FDRE \reg_reg[4] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[4]),
        .Q(win_cs_ok_2_reg[4]),
        .R(Q));
  FDRE \reg_reg[5] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[5]),
        .Q(win_cs_ok_2_reg[5]),
        .R(Q));
  FDRE \reg_reg[6] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[6]),
        .Q(win_cs_ok_2_reg[6]),
        .R(Q));
  FDRE \reg_reg[7] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[7]),
        .Q(win_cs_ok_2_reg[7]),
        .R(Q));
  FDRE \reg_reg[8] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[8]),
        .Q(win_cs_ok_2_reg[8]),
        .R(Q));
  FDRE \reg_reg[9] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[9]),
        .Q(win_cs_ok_2_reg[9]),
        .R(Q));
  FDRE wen_reg
       (.C(clk),
        .CE(1'b1),
        .D(\slb_addr_reg[2] ),
        .Q(wen_reg_n_0),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "slb_reg" *) 
module TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized7
   (S,
    win_ce_ok_2_reg,
    DI,
    win_ce_ok_2_reg_0,
    win_ce_ok_2_reg_1,
    Q,
    \slb_addr_reg[2] ,
    clk,
    out,
    D);
  output [3:0]S;
  output [11:0]win_ce_ok_2_reg;
  output [3:0]DI;
  output [1:0]win_ce_ok_2_reg_0;
  output [1:0]win_ce_ok_2_reg_1;
  input [0:0]Q;
  input \slb_addr_reg[2] ;
  input clk;
  input [11:0]out;
  input [11:0]D;

  wire [11:0]D;
  wire [3:0]DI;
  wire [0:0]Q;
  wire [3:0]S;
  wire clk;
  wire [11:0]out;
  wire \slb_addr_reg[2] ;
  wire wen_reg_n_0;
  wire [11:0]win_ce_ok_2_reg;
  wire [1:0]win_ce_ok_2_reg_0;
  wire [1:0]win_ce_ok_2_reg_1;

  LUT4 #(
    .INIT(16'h2F02)) 
    leqOp_carry__0_i_1
       (.I0(win_ce_ok_2_reg[10]),
        .I1(out[10]),
        .I2(out[11]),
        .I3(win_ce_ok_2_reg[11]),
        .O(win_ce_ok_2_reg_1[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    leqOp_carry__0_i_2
       (.I0(win_ce_ok_2_reg[8]),
        .I1(out[8]),
        .I2(out[9]),
        .I3(win_ce_ok_2_reg[9]),
        .O(win_ce_ok_2_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    leqOp_carry__0_i_3
       (.I0(win_ce_ok_2_reg[10]),
        .I1(out[10]),
        .I2(win_ce_ok_2_reg[11]),
        .I3(out[11]),
        .O(win_ce_ok_2_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    leqOp_carry__0_i_4
       (.I0(win_ce_ok_2_reg[8]),
        .I1(out[8]),
        .I2(win_ce_ok_2_reg[9]),
        .I3(out[9]),
        .O(win_ce_ok_2_reg_0[0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    leqOp_carry_i_1
       (.I0(win_ce_ok_2_reg[6]),
        .I1(out[6]),
        .I2(out[7]),
        .I3(win_ce_ok_2_reg[7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    leqOp_carry_i_2
       (.I0(win_ce_ok_2_reg[4]),
        .I1(out[4]),
        .I2(out[5]),
        .I3(win_ce_ok_2_reg[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    leqOp_carry_i_3
       (.I0(win_ce_ok_2_reg[2]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(win_ce_ok_2_reg[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    leqOp_carry_i_4
       (.I0(win_ce_ok_2_reg[0]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(win_ce_ok_2_reg[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    leqOp_carry_i_5
       (.I0(win_ce_ok_2_reg[6]),
        .I1(out[6]),
        .I2(win_ce_ok_2_reg[7]),
        .I3(out[7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    leqOp_carry_i_6
       (.I0(win_ce_ok_2_reg[4]),
        .I1(out[4]),
        .I2(win_ce_ok_2_reg[5]),
        .I3(out[5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    leqOp_carry_i_7
       (.I0(win_ce_ok_2_reg[2]),
        .I1(out[2]),
        .I2(win_ce_ok_2_reg[3]),
        .I3(out[3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    leqOp_carry_i_8
       (.I0(win_ce_ok_2_reg[0]),
        .I1(out[0]),
        .I2(win_ce_ok_2_reg[1]),
        .I3(out[1]),
        .O(S[0]));
  FDSE \reg_reg[0] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[0]),
        .Q(win_ce_ok_2_reg[0]),
        .S(Q));
  FDSE \reg_reg[10] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[10]),
        .Q(win_ce_ok_2_reg[10]),
        .S(Q));
  FDSE \reg_reg[11] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[11]),
        .Q(win_ce_ok_2_reg[11]),
        .S(Q));
  FDSE \reg_reg[1] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[1]),
        .Q(win_ce_ok_2_reg[1]),
        .S(Q));
  FDSE \reg_reg[2] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[2]),
        .Q(win_ce_ok_2_reg[2]),
        .S(Q));
  FDSE \reg_reg[3] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[3]),
        .Q(win_ce_ok_2_reg[3]),
        .S(Q));
  FDSE \reg_reg[4] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[4]),
        .Q(win_ce_ok_2_reg[4]),
        .S(Q));
  FDSE \reg_reg[5] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[5]),
        .Q(win_ce_ok_2_reg[5]),
        .S(Q));
  FDSE \reg_reg[6] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[6]),
        .Q(win_ce_ok_2_reg[6]),
        .S(Q));
  FDSE \reg_reg[7] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[7]),
        .Q(win_ce_ok_2_reg[7]),
        .S(Q));
  FDSE \reg_reg[8] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[8]),
        .Q(win_ce_ok_2_reg[8]),
        .S(Q));
  FDSE \reg_reg[9] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(D[9]),
        .Q(win_ce_ok_2_reg[9]),
        .S(Q));
  FDRE wen_reg
       (.C(clk),
        .CE(1'b1),
        .D(\slb_addr_reg[2] ),
        .Q(wen_reg_n_0),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "slb_reg" *) 
module TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized9
   (win_ls_ok_2_reg,
    Q,
    \slb_addr_reg[2] ,
    clk,
    \slb_wdata_reg[11] );
  output [11:0]win_ls_ok_2_reg;
  input [0:0]Q;
  input \slb_addr_reg[2] ;
  input clk;
  input [11:0]\slb_wdata_reg[11] ;

  wire [0:0]Q;
  wire clk;
  wire \slb_addr_reg[2] ;
  wire [11:0]\slb_wdata_reg[11] ;
  wire wen_reg_n_0;
  wire [11:0]win_ls_ok_2_reg;

  FDRE \reg_reg[0] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [0]),
        .Q(win_ls_ok_2_reg[0]),
        .R(Q));
  FDRE \reg_reg[10] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [10]),
        .Q(win_ls_ok_2_reg[10]),
        .R(Q));
  FDRE \reg_reg[11] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [11]),
        .Q(win_ls_ok_2_reg[11]),
        .R(Q));
  FDRE \reg_reg[1] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [1]),
        .Q(win_ls_ok_2_reg[1]),
        .R(Q));
  FDRE \reg_reg[2] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [2]),
        .Q(win_ls_ok_2_reg[2]),
        .R(Q));
  FDRE \reg_reg[3] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [3]),
        .Q(win_ls_ok_2_reg[3]),
        .R(Q));
  FDRE \reg_reg[4] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [4]),
        .Q(win_ls_ok_2_reg[4]),
        .R(Q));
  FDRE \reg_reg[5] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [5]),
        .Q(win_ls_ok_2_reg[5]),
        .R(Q));
  FDRE \reg_reg[6] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [6]),
        .Q(win_ls_ok_2_reg[6]),
        .R(Q));
  FDRE \reg_reg[7] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [7]),
        .Q(win_ls_ok_2_reg[7]),
        .R(Q));
  FDRE \reg_reg[8] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [8]),
        .Q(win_ls_ok_2_reg[8]),
        .R(Q));
  FDRE \reg_reg[9] 
       (.C(clk),
        .CE(wen_reg_n_0),
        .D(\slb_wdata_reg[11] [9]),
        .Q(win_ls_ok_2_reg[9]),
        .R(Q));
  FDRE wen_reg
       (.C(clk),
        .CE(1'b1),
        .D(\slb_addr_reg[2] ),
        .Q(wen_reg_n_0),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "unimacro_FIFO_DUALCLOCK_MACRO" *) 
module TySOM_1_7Z030_mipi_csi_0_unimacro_FIFO_DUALCLOCK_MACRO
   (pktr_empty,
    pktw_full,
    DO,
    DOP,
    S,
    \FSM_sequential_state_cur_reg[0] ,
    err_unk_pkt_c,
    err_early_sof_c,
    \FSM_sequential_state_cur_reg[1] ,
    state_nxt113_out,
    \cnt_reg[16] ,
    \cnt_reg[12] ,
    \cnt_reg[8] ,
    vid_sof_reg,
    vid_sof_reg_0,
    mux,
    clk,
    pause_reg,
    Q,
    out_clk,
    pkt_valid_reg,
    pkt_data,
    DIP,
    out,
    \reg_reg[16] ,
    \FSM_sequential_state_cur_reg[1]_0 ,
    cnt);
  output pktr_empty;
  output pktw_full;
  output [31:0]DO;
  output [1:0]DOP;
  output [3:0]S;
  output \FSM_sequential_state_cur_reg[0] ;
  output err_unk_pkt_c;
  output err_early_sof_c;
  output \FSM_sequential_state_cur_reg[1] ;
  output state_nxt113_out;
  output [2:0]\cnt_reg[16] ;
  output [3:0]\cnt_reg[12] ;
  output [3:0]\cnt_reg[8] ;
  output vid_sof_reg;
  output vid_sof_reg_0;
  output [7:0]mux;
  input clk;
  input pause_reg;
  input [0:0]Q;
  input out_clk;
  input pkt_valid_reg;
  input [31:0]pkt_data;
  input [1:0]DIP;
  input [1:0]out;
  input \reg_reg[16] ;
  input \FSM_sequential_state_cur_reg[1]_0 ;
  input [1:0]cnt;

  wire [1:0]DIP;
  wire [31:0]DO;
  wire [1:0]DOP;
  wire \FSM_sequential_state_cur[0]_i_4_n_0 ;
  wire \FSM_sequential_state_cur[0]_i_5_n_0 ;
  wire \FSM_sequential_state_cur[1]_i_4_n_0 ;
  wire \FSM_sequential_state_cur[1]_i_5_n_0 ;
  wire \FSM_sequential_state_cur[1]_i_8_n_0 ;
  wire \FSM_sequential_state_cur[1]_i_9_n_0 ;
  wire \FSM_sequential_state_cur_reg[0] ;
  wire \FSM_sequential_state_cur_reg[1] ;
  wire \FSM_sequential_state_cur_reg[1]_0 ;
  wire [0:0]Q;
  wire [3:0]S;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_10 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_11 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_14 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_15 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_19 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_20 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_21 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_22 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_23 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_24 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_25 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_26 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_27 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_28 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_32 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_33 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_34 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_35 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_36 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_37 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_38 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_39 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_40 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_41 ;
  wire clk;
  wire [1:0]cnt;
  wire [3:0]\cnt_reg[12] ;
  wire [2:0]\cnt_reg[16] ;
  wire [3:0]\cnt_reg[8] ;
  wire err_early_sof_c;
  wire err_early_sof_i_3_n_0;
  wire err_unk_pkt_c;
  wire err_unk_pkt_i_2_n_0;
  wire [7:0]mux;
  wire [1:0]out;
  wire out_clk;
  wire pause_reg;
  wire [31:0]pkt_data;
  wire pkt_valid_reg;
  wire pktr_empty;
  wire pktw_full;
  wire \reg_reg[16] ;
  wire state_nxt113_out;
  wire vid_sof_i_19_n_0;
  wire vid_sof_i_20_n_0;
  wire vid_sof_reg;
  wire vid_sof_reg_0;
  wire \NLW_bl.fifo_36_inst_bl.fifo_36_bl_DBITERR_UNCONNECTED ;
  wire \NLW_bl.fifo_36_inst_bl.fifo_36_bl_SBITERR_UNCONNECTED ;
  wire [63:32]\NLW_bl.fifo_36_inst_bl.fifo_36_bl_DO_UNCONNECTED ;
  wire [7:2]\NLW_bl.fifo_36_inst_bl.fifo_36_bl_DOP_UNCONNECTED ;
  wire [7:0]\NLW_bl.fifo_36_inst_bl.fifo_36_bl_ECCPARITY_UNCONNECTED ;
  wire [12:10]\NLW_bl.fifo_36_inst_bl.fifo_36_bl_RDCOUNT_UNCONNECTED ;
  wire [12:10]\NLW_bl.fifo_36_inst_bl.fifo_36_bl_WRCOUNT_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFF8888F888888888)) 
    \FSM_sequential_state_cur[0]_i_3__0 
       (.I0(out[0]),
        .I1(\reg_reg[16] ),
        .I2(DO[0]),
        .I3(DO[3]),
        .I4(DO[1]),
        .I5(\FSM_sequential_state_cur[0]_i_4_n_0 ),
        .O(\FSM_sequential_state_cur_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_sequential_state_cur[0]_i_4 
       (.I0(out[1]),
        .I1(DO[7]),
        .I2(DO[4]),
        .I3(DO[2]),
        .I4(out[0]),
        .I5(\FSM_sequential_state_cur[0]_i_5_n_0 ),
        .O(\FSM_sequential_state_cur[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBEFF)) 
    \FSM_sequential_state_cur[0]_i_5 
       (.I0(pktr_empty),
        .I1(DO[3]),
        .I2(DO[5]),
        .I3(DOP[1]),
        .I4(DO[6]),
        .O(\FSM_sequential_state_cur[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \FSM_sequential_state_cur[1]_i_2__0 
       (.I0(\FSM_sequential_state_cur[1]_i_4_n_0 ),
        .I1(DO[7]),
        .I2(DO[4]),
        .I3(DO[0]),
        .I4(DO[6]),
        .I5(\FSM_sequential_state_cur[1]_i_5_n_0 ),
        .O(\FSM_sequential_state_cur_reg[1] ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_sequential_state_cur[1]_i_4 
       (.I0(DOP[1]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(pktr_empty),
        .O(\FSM_sequential_state_cur[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state_cur[1]_i_5 
       (.I0(DO[3]),
        .I1(DO[1]),
        .I2(DO[5]),
        .I3(DO[2]),
        .O(\FSM_sequential_state_cur[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \FSM_sequential_state_cur[1]_i_7 
       (.I0(pktr_empty),
        .I1(DOP[1]),
        .I2(\FSM_sequential_state_cur[1]_i_8_n_0 ),
        .I3(\FSM_sequential_state_cur[1]_i_9_n_0 ),
        .I4(DO[4]),
        .I5(DO[5]),
        .O(state_nxt113_out));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state_cur[1]_i_8 
       (.I0(DO[2]),
        .I1(DO[3]),
        .I2(DO[0]),
        .I3(DO[1]),
        .O(\FSM_sequential_state_cur[1]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state_cur[1]_i_9 
       (.I0(DO[6]),
        .I1(DO[7]),
        .O(\FSM_sequential_state_cur[1]_i_9_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  FIFO36E1 #(
    .ALMOST_EMPTY_OFFSET(13'h0080),
    .ALMOST_FULL_OFFSET(13'h0080),
    .DATA_WIDTH(36),
    .DO_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .EN_SYN("FALSE"),
    .FIFO_MODE("FIFO36"),
    .FIRST_WORD_FALL_THROUGH("TRUE"),
    .INIT(72'h000000000000000000),
    .IS_RDCLK_INVERTED(1'b0),
    .IS_RDEN_INVERTED(1'b0),
    .IS_RSTREG_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .IS_WRCLK_INVERTED(1'b0),
    .IS_WREN_INVERTED(1'b0),
    .SIM_DEVICE("7SERIES"),
    .SRVAL(72'h000000000000000000)) 
    \bl.fifo_36_inst_bl.fifo_36_bl 
       (.ALMOSTEMPTY(\bl.fifo_36_inst_bl.fifo_36_bl_n_10 ),
        .ALMOSTFULL(\bl.fifo_36_inst_bl.fifo_36_bl_n_11 ),
        .DBITERR(\NLW_bl.fifo_36_inst_bl.fifo_36_bl_DBITERR_UNCONNECTED ),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,pkt_data}),
        .DIP({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIP}),
        .DO({\NLW_bl.fifo_36_inst_bl.fifo_36_bl_DO_UNCONNECTED [63:32],DO}),
        .DOP({\NLW_bl.fifo_36_inst_bl.fifo_36_bl_DOP_UNCONNECTED [7:2],DOP}),
        .ECCPARITY(\NLW_bl.fifo_36_inst_bl.fifo_36_bl_ECCPARITY_UNCONNECTED [7:0]),
        .EMPTY(pktr_empty),
        .FULL(pktw_full),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDCLK(clk),
        .RDCOUNT({\NLW_bl.fifo_36_inst_bl.fifo_36_bl_RDCOUNT_UNCONNECTED [12:10],\bl.fifo_36_inst_bl.fifo_36_bl_n_19 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_20 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_21 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_22 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_23 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_24 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_25 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_26 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_27 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_28 }),
        .RDEN(pause_reg),
        .RDERR(\bl.fifo_36_inst_bl.fifo_36_bl_n_14 ),
        .REGCE(1'b1),
        .RST(Q),
        .RSTREG(1'b1),
        .SBITERR(\NLW_bl.fifo_36_inst_bl.fifo_36_bl_SBITERR_UNCONNECTED ),
        .WRCLK(out_clk),
        .WRCOUNT({\NLW_bl.fifo_36_inst_bl.fifo_36_bl_WRCOUNT_UNCONNECTED [12:10],\bl.fifo_36_inst_bl.fifo_36_bl_n_32 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_33 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_34 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_35 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_36 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_37 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_38 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_39 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_40 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_41 }),
        .WREN(pkt_valid_reg),
        .WRERR(\bl.fifo_36_inst_bl.fifo_36_bl_n_15 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    err_early_sof_i_1
       (.I0(\FSM_sequential_state_cur_reg[1]_0 ),
        .I1(err_early_sof_i_3_n_0),
        .I2(DO[7]),
        .I3(DO[6]),
        .I4(DOP[1]),
        .I5(pktr_empty),
        .O(err_early_sof_c));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    err_early_sof_i_3
       (.I0(DO[5]),
        .I1(DO[4]),
        .I2(DO[1]),
        .I3(DO[0]),
        .I4(DO[3]),
        .I5(DO[2]),
        .O(err_early_sof_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000AAA80000)) 
    err_unk_pkt_i_1
       (.I0(\FSM_sequential_state_cur_reg[1]_0 ),
        .I1(DO[7]),
        .I2(DO[6]),
        .I3(err_unk_pkt_i_2_n_0),
        .I4(DOP[1]),
        .I5(pktr_empty),
        .O(err_unk_pkt_c));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFFF7A)) 
    err_unk_pkt_i_2
       (.I0(DO[5]),
        .I1(DO[1]),
        .I2(DO[3]),
        .I3(DO[4]),
        .I4(DO[2]),
        .O(err_unk_pkt_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1__0
       (.I0(DO[16]),
        .O(\cnt_reg[8] [3]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2__0
       (.I0(DO[15]),
        .O(\cnt_reg[8] [2]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3__0
       (.I0(DO[14]),
        .O(\cnt_reg[8] [1]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4__0
       (.I0(DO[13]),
        .O(\cnt_reg[8] [0]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1__0
       (.I0(DO[20]),
        .O(\cnt_reg[12] [3]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2__0
       (.I0(DO[19]),
        .O(\cnt_reg[12] [2]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3__0
       (.I0(DO[18]),
        .O(\cnt_reg[12] [1]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4__0
       (.I0(DO[17]),
        .O(\cnt_reg[12] [0]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1__0
       (.I0(DO[23]),
        .O(\cnt_reg[16] [2]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2__0
       (.I0(DO[22]),
        .O(\cnt_reg[16] [1]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3__0
       (.I0(DO[21]),
        .O(\cnt_reg[16] [0]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1__0
       (.I0(DO[12]),
        .O(S[3]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2__0
       (.I0(DO[11]),
        .O(S[2]));
  LUT1 #(
    .INIT(2'h2)) 
    minusOp_carry_i_3__0
       (.I0(DO[10]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_4
       (.I0(DO[9]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \out_data[0]_i_1 
       (.I0(DO[8]),
        .I1(DO[0]),
        .I2(DO[24]),
        .I3(cnt[1]),
        .I4(cnt[0]),
        .I5(DO[16]),
        .O(mux[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \out_data[1]_i_1 
       (.I0(DO[9]),
        .I1(DO[1]),
        .I2(DO[25]),
        .I3(cnt[1]),
        .I4(cnt[0]),
        .I5(DO[17]),
        .O(mux[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \out_data[2]_i_1 
       (.I0(DO[10]),
        .I1(DO[2]),
        .I2(DO[26]),
        .I3(cnt[1]),
        .I4(cnt[0]),
        .I5(DO[18]),
        .O(mux[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \out_data[3]_i_1 
       (.I0(DO[11]),
        .I1(DO[3]),
        .I2(DO[27]),
        .I3(cnt[1]),
        .I4(cnt[0]),
        .I5(DO[19]),
        .O(mux[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \out_data[4]_i_1 
       (.I0(DO[12]),
        .I1(DO[4]),
        .I2(DO[28]),
        .I3(cnt[1]),
        .I4(cnt[0]),
        .I5(DO[20]),
        .O(mux[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \out_data[5]_i_1 
       (.I0(DO[13]),
        .I1(DO[5]),
        .I2(DO[29]),
        .I3(cnt[1]),
        .I4(cnt[0]),
        .I5(DO[21]),
        .O(mux[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \out_data[6]_i_1 
       (.I0(DO[14]),
        .I1(DO[6]),
        .I2(DO[30]),
        .I3(cnt[1]),
        .I4(cnt[0]),
        .I5(DO[22]),
        .O(mux[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \out_data[7]_i_1 
       (.I0(DO[15]),
        .I1(DO[7]),
        .I2(DO[31]),
        .I3(cnt[1]),
        .I4(cnt[0]),
        .I5(DO[23]),
        .O(mux[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    vid_sof_i_15
       (.I0(DO[0]),
        .I1(vid_sof_i_19_n_0),
        .I2(DOP[1]),
        .I3(DO[7]),
        .I4(DO[4]),
        .I5(DO[5]),
        .O(vid_sof_reg));
  LUT6 #(
    .INIT(64'h00000000000000A4)) 
    vid_sof_i_18
       (.I0(DO[3]),
        .I1(DO[0]),
        .I2(DO[1]),
        .I3(vid_sof_i_20_n_0),
        .I4(DO[7]),
        .I5(DO[2]),
        .O(vid_sof_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    vid_sof_i_19
       (.I0(DO[2]),
        .I1(DO[3]),
        .I2(DO[6]),
        .I3(DO[1]),
        .O(vid_sof_i_19_n_0));
  LUT5 #(
    .INIT(32'hEFFFFFEF)) 
    vid_sof_i_20
       (.I0(DO[4]),
        .I1(DO[6]),
        .I2(DOP[1]),
        .I3(DO[3]),
        .I4(DO[5]),
        .O(vid_sof_i_20_n_0));
endmodule

(* ORIG_REF_NAME = "unimacro_FIFO_SYNC_MACRO" *) 
module TySOM_1_7Z030_mipi_csi_0_unimacro_FIFO_SYNC_MACRO
   (pix_fifo_aempty,
    pix_fifo_afull,
    pix_fifo_empty,
    vaxi_data,
    DOP,
    SR,
    pix_fifo_empty_fwft_reg,
    clk,
    Q,
    vout_valid,
    \data_reg[31] ,
    DIP,
    vaxi_ready,
    pix_fifo_empty_fwft,
    p_0_in4_in);
  output pix_fifo_aempty;
  output pix_fifo_afull;
  output pix_fifo_empty;
  output [31:0]vaxi_data;
  output [1:0]DOP;
  output [0:0]SR;
  output pix_fifo_empty_fwft_reg;
  input clk;
  input [0:0]Q;
  input vout_valid;
  input [31:0]\data_reg[31] ;
  input [1:0]DIP;
  input vaxi_ready;
  input pix_fifo_empty_fwft;
  input p_0_in4_in;

  wire [1:0]DIP;
  wire [1:0]DOP;
  wire [0:0]Q;
  wire RDEN;
  wire [0:0]SR;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_13 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_14 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_15 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_19 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_20 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_21 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_22 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_23 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_24 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_25 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_26 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_27 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_28 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_32 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_33 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_34 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_35 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_36 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_37 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_38 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_39 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_40 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_n_41 ;
  wire clk;
  wire [31:0]\data_reg[31] ;
  wire p_0_in4_in;
  wire pix_fifo_aempty;
  wire pix_fifo_afull;
  wire pix_fifo_empty;
  wire pix_fifo_empty_fwft;
  wire pix_fifo_empty_fwft_reg;
  wire [31:0]vaxi_data;
  wire vaxi_ready;
  wire vout_valid;
  wire \NLW_bl.fifo_36_inst_bl.fifo_36_bl_DBITERR_UNCONNECTED ;
  wire \NLW_bl.fifo_36_inst_bl.fifo_36_bl_SBITERR_UNCONNECTED ;
  wire [63:32]\NLW_bl.fifo_36_inst_bl.fifo_36_bl_DO_UNCONNECTED ;
  wire [7:2]\NLW_bl.fifo_36_inst_bl.fifo_36_bl_DOP_UNCONNECTED ;
  wire [7:0]\NLW_bl.fifo_36_inst_bl.fifo_36_bl_ECCPARITY_UNCONNECTED ;
  wire [12:10]\NLW_bl.fifo_36_inst_bl.fifo_36_bl_RDCOUNT_UNCONNECTED ;
  wire [12:10]\NLW_bl.fifo_36_inst_bl.fifo_36_bl_WRCOUNT_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FIFO36E1 #(
    .ALMOST_EMPTY_OFFSET(13'h0080),
    .ALMOST_FULL_OFFSET(13'h0080),
    .DATA_WIDTH(36),
    .DO_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .EN_SYN("TRUE"),
    .FIFO_MODE("FIFO36"),
    .FIRST_WORD_FALL_THROUGH("FALSE"),
    .INIT(72'h000000000000000000),
    .IS_RDCLK_INVERTED(1'b0),
    .IS_RDEN_INVERTED(1'b0),
    .IS_RSTREG_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .IS_WRCLK_INVERTED(1'b0),
    .IS_WREN_INVERTED(1'b0),
    .SIM_DEVICE("7SERIES"),
    .SRVAL(72'h000000000000000000)) 
    \bl.fifo_36_inst_bl.fifo_36_bl 
       (.ALMOSTEMPTY(pix_fifo_aempty),
        .ALMOSTFULL(pix_fifo_afull),
        .DBITERR(\NLW_bl.fifo_36_inst_bl.fifo_36_bl_DBITERR_UNCONNECTED ),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\data_reg[31] }),
        .DIP({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIP}),
        .DO({\NLW_bl.fifo_36_inst_bl.fifo_36_bl_DO_UNCONNECTED [63:32],vaxi_data}),
        .DOP({\NLW_bl.fifo_36_inst_bl.fifo_36_bl_DOP_UNCONNECTED [7:2],DOP}),
        .ECCPARITY(\NLW_bl.fifo_36_inst_bl.fifo_36_bl_ECCPARITY_UNCONNECTED [7:0]),
        .EMPTY(pix_fifo_empty),
        .FULL(\bl.fifo_36_inst_bl.fifo_36_bl_n_13 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDCLK(clk),
        .RDCOUNT({\NLW_bl.fifo_36_inst_bl.fifo_36_bl_RDCOUNT_UNCONNECTED [12:10],\bl.fifo_36_inst_bl.fifo_36_bl_n_19 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_20 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_21 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_22 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_23 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_24 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_25 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_26 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_27 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_28 }),
        .RDEN(RDEN),
        .RDERR(\bl.fifo_36_inst_bl.fifo_36_bl_n_14 ),
        .REGCE(1'b0),
        .RST(Q),
        .RSTREG(1'b0),
        .SBITERR(\NLW_bl.fifo_36_inst_bl.fifo_36_bl_SBITERR_UNCONNECTED ),
        .WRCLK(clk),
        .WRCOUNT({\NLW_bl.fifo_36_inst_bl.fifo_36_bl_WRCOUNT_UNCONNECTED [12:10],\bl.fifo_36_inst_bl.fifo_36_bl_n_32 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_33 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_34 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_35 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_36 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_37 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_38 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_39 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_40 ,\bl.fifo_36_inst_bl.fifo_36_bl_n_41 }),
        .WREN(vout_valid),
        .WRERR(\bl.fifo_36_inst_bl.fifo_36_bl_n_15 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00EC)) 
    \bl.fifo_36_inst_bl.fifo_36_bl_i_1 
       (.I0(vaxi_ready),
        .I1(pix_fifo_empty_fwft),
        .I2(p_0_in4_in),
        .I3(pix_fifo_empty),
        .O(RDEN));
  LUT3 #(
    .INIT(8'hFB)) 
    \pix_fifo_cnt[4]_i_1 
       (.I0(Q),
        .I1(pix_fifo_aempty),
        .I2(pix_fifo_empty_fwft),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hA8A0)) 
    pix_fifo_empty_fwft_i_1
       (.I0(pix_fifo_empty),
        .I1(p_0_in4_in),
        .I2(pix_fifo_empty_fwft),
        .I3(vaxi_ready),
        .O(pix_fifo_empty_fwft_reg));
endmodule

(* ORIG_REF_NAME = "vid_32b_to_40b" *) 
module TySOM_1_7Z030_mipi_csi_0_vid_32b_to_40b
   (out_valid_i_reg,
    vu40_sof,
    has_last_reg_0,
    out_sof_reg_0,
    has_last_reg_1,
    vin_ready_10b,
    out_sof_reg_1,
    vu40_valid,
    out_sof_reg_2,
    \cnt_reg[0]_0 ,
    out_last0,
    vid_ready,
    \out_data_reg[0] ,
    \out_data_reg[1] ,
    \out_data_reg[2] ,
    \out_data_reg[3] ,
    \out_data_reg[4] ,
    \out_data_reg[5] ,
    \out_data_reg[6] ,
    \out_data_reg[7] ,
    \out_data_reg[8] ,
    \out_data_reg[9] ,
    Q,
    \cnt_reg[16] ,
    clk,
    vid_sof_reg,
    \cnt_reg[1]_0 ,
    \cnt_reg[0]_1 ,
    \cnt_reg[0]_2 ,
    pause_reg,
    has_last_reg_2,
    \cnt_reg[1]_1 ,
    pause,
    \FSM_sequential_state_cur_reg[1] ,
    pktr_empty,
    DO,
    eqOp__0,
    \cnt_reg[0]_3 ,
    \reg_reg[23] );
  output out_valid_i_reg;
  output vu40_sof;
  output has_last_reg_0;
  output out_sof_reg_0;
  output has_last_reg_1;
  output vin_ready_10b;
  output out_sof_reg_1;
  output vu40_valid;
  output out_sof_reg_2;
  output \cnt_reg[0]_0 ;
  output out_last0;
  output vid_ready;
  output \out_data_reg[0] ;
  output \out_data_reg[1] ;
  output \out_data_reg[2] ;
  output \out_data_reg[3] ;
  output \out_data_reg[4] ;
  output \out_data_reg[5] ;
  output \out_data_reg[6] ;
  output \out_data_reg[7] ;
  output \out_data_reg[8] ;
  output \out_data_reg[9] ;
  input [0:0]Q;
  input \cnt_reg[16] ;
  input clk;
  input vid_sof_reg;
  input \cnt_reg[1]_0 ;
  input \cnt_reg[0]_1 ;
  input \cnt_reg[0]_2 ;
  input pause_reg;
  input has_last_reg_2;
  input \cnt_reg[1]_1 ;
  input pause;
  input \FSM_sequential_state_cur_reg[1] ;
  input pktr_empty;
  input [31:0]DO;
  input eqOp__0;
  input \cnt_reg[0]_3 ;
  input [0:0]\reg_reg[23] ;

  wire [31:0]DO;
  wire \FSM_sequential_state_cur_reg[1] ;
  wire [0:0]Q;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_i_10_n_0 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_i_11_n_0 ;
  wire \bl.fifo_36_inst_bl.fifo_36_bl_i_9_n_0 ;
  wire clk;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1__0_n_0 ;
  wire \cnt[2]_i_1__0_n_0 ;
  wire \cnt[2]_i_2_n_0 ;
  wire \cnt[2]_i_3_n_0 ;
  wire \cnt[3]_i_1__0_n_0 ;
  wire \cnt[3]_i_2_n_0 ;
  wire \cnt[3]_i_3_n_0 ;
  wire \cnt[3]_i_5_n_0 ;
  wire \cnt[3]_i_7_n_0 ;
  wire \cnt_reg[0]_0 ;
  wire \cnt_reg[0]_1 ;
  wire \cnt_reg[0]_2 ;
  wire \cnt_reg[0]_3 ;
  wire \cnt_reg[16] ;
  wire \cnt_reg[1]_0 ;
  wire \cnt_reg[1]_1 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire [79:40]data_reg;
  wire \data_reg[0]_i_1_n_0 ;
  wire \data_reg[0]_i_2_n_0 ;
  wire \data_reg[0]_i_3_n_0 ;
  wire \data_reg[10]_i_1_n_0 ;
  wire \data_reg[10]_i_2_n_0 ;
  wire \data_reg[10]_i_3_n_0 ;
  wire \data_reg[11]_i_1_n_0 ;
  wire \data_reg[11]_i_2_n_0 ;
  wire \data_reg[11]_i_3_n_0 ;
  wire \data_reg[12]_i_1_n_0 ;
  wire \data_reg[12]_i_2_n_0 ;
  wire \data_reg[12]_i_3_n_0 ;
  wire \data_reg[13]_i_1_n_0 ;
  wire \data_reg[13]_i_2_n_0 ;
  wire \data_reg[13]_i_3_n_0 ;
  wire \data_reg[14]_i_1_n_0 ;
  wire \data_reg[14]_i_2_n_0 ;
  wire \data_reg[14]_i_3_n_0 ;
  wire \data_reg[15]_i_1_n_0 ;
  wire \data_reg[15]_i_2_n_0 ;
  wire \data_reg[15]_i_3_n_0 ;
  wire \data_reg[15]_i_4_n_0 ;
  wire \data_reg[15]_i_5_n_0 ;
  wire \data_reg[15]_i_6_n_0 ;
  wire \data_reg[15]_i_7_n_0 ;
  wire \data_reg[16]_i_1_n_0 ;
  wire \data_reg[16]_i_2_n_0 ;
  wire \data_reg[16]_i_3_n_0 ;
  wire \data_reg[17]_i_1_n_0 ;
  wire \data_reg[17]_i_2_n_0 ;
  wire \data_reg[17]_i_3_n_0 ;
  wire \data_reg[18]_i_1_n_0 ;
  wire \data_reg[18]_i_2_n_0 ;
  wire \data_reg[18]_i_3_n_0 ;
  wire \data_reg[19]_i_1_n_0 ;
  wire \data_reg[19]_i_2_n_0 ;
  wire \data_reg[19]_i_3_n_0 ;
  wire \data_reg[1]_i_1_n_0 ;
  wire \data_reg[1]_i_2_n_0 ;
  wire \data_reg[1]_i_3_n_0 ;
  wire \data_reg[20]_i_1_n_0 ;
  wire \data_reg[20]_i_2_n_0 ;
  wire \data_reg[20]_i_3_n_0 ;
  wire \data_reg[21]_i_1_n_0 ;
  wire \data_reg[21]_i_2_n_0 ;
  wire \data_reg[21]_i_3_n_0 ;
  wire \data_reg[22]_i_1_n_0 ;
  wire \data_reg[22]_i_2_n_0 ;
  wire \data_reg[22]_i_3_n_0 ;
  wire \data_reg[23]_i_1_n_0 ;
  wire \data_reg[23]_i_2_n_0 ;
  wire \data_reg[23]_i_3_n_0 ;
  wire \data_reg[23]_i_4_n_0 ;
  wire \data_reg[23]_i_5_n_0 ;
  wire \data_reg[23]_i_6_n_0 ;
  wire \data_reg[23]_i_7_n_0 ;
  wire \data_reg[24]_i_1_n_0 ;
  wire \data_reg[24]_i_2_n_0 ;
  wire \data_reg[24]_i_3_n_0 ;
  wire \data_reg[25]_i_1_n_0 ;
  wire \data_reg[25]_i_2_n_0 ;
  wire \data_reg[25]_i_3_n_0 ;
  wire \data_reg[26]_i_1_n_0 ;
  wire \data_reg[26]_i_2_n_0 ;
  wire \data_reg[26]_i_3_n_0 ;
  wire \data_reg[27]_i_1_n_0 ;
  wire \data_reg[27]_i_2_n_0 ;
  wire \data_reg[27]_i_3_n_0 ;
  wire \data_reg[28]_i_1_n_0 ;
  wire \data_reg[28]_i_2_n_0 ;
  wire \data_reg[28]_i_3_n_0 ;
  wire \data_reg[29]_i_1_n_0 ;
  wire \data_reg[29]_i_2_n_0 ;
  wire \data_reg[29]_i_3_n_0 ;
  wire \data_reg[2]_i_1_n_0 ;
  wire \data_reg[2]_i_2_n_0 ;
  wire \data_reg[2]_i_3_n_0 ;
  wire \data_reg[30]_i_1_n_0 ;
  wire \data_reg[30]_i_2_n_0 ;
  wire \data_reg[30]_i_3_n_0 ;
  wire \data_reg[31]_i_1_n_0 ;
  wire \data_reg[31]_i_2_n_0 ;
  wire \data_reg[31]_i_3_n_0 ;
  wire \data_reg[31]_i_4_n_0 ;
  wire \data_reg[31]_i_5_n_0 ;
  wire \data_reg[31]_i_6_n_0 ;
  wire \data_reg[32]_i_1_n_0 ;
  wire \data_reg[32]_i_2_n_0 ;
  wire \data_reg[32]_i_3_n_0 ;
  wire \data_reg[33]_i_1_n_0 ;
  wire \data_reg[33]_i_2_n_0 ;
  wire \data_reg[33]_i_3_n_0 ;
  wire \data_reg[34]_i_1_n_0 ;
  wire \data_reg[34]_i_2_n_0 ;
  wire \data_reg[34]_i_3_n_0 ;
  wire \data_reg[35]_i_1_n_0 ;
  wire \data_reg[35]_i_2_n_0 ;
  wire \data_reg[35]_i_3_n_0 ;
  wire \data_reg[36]_i_1_n_0 ;
  wire \data_reg[36]_i_2_n_0 ;
  wire \data_reg[36]_i_3_n_0 ;
  wire \data_reg[37]_i_1_n_0 ;
  wire \data_reg[37]_i_2_n_0 ;
  wire \data_reg[37]_i_3_n_0 ;
  wire \data_reg[38]_i_1_n_0 ;
  wire \data_reg[38]_i_2_n_0 ;
  wire \data_reg[38]_i_3_n_0 ;
  wire \data_reg[39]_i_1_n_0 ;
  wire \data_reg[39]_i_2_n_0 ;
  wire \data_reg[39]_i_3_n_0 ;
  wire \data_reg[39]_i_4_n_0 ;
  wire \data_reg[39]_i_5_n_0 ;
  wire \data_reg[3]_i_1_n_0 ;
  wire \data_reg[3]_i_2_n_0 ;
  wire \data_reg[3]_i_3_n_0 ;
  wire \data_reg[40]_i_1_n_0 ;
  wire \data_reg[40]_i_2_n_0 ;
  wire \data_reg[41]_i_1_n_0 ;
  wire \data_reg[41]_i_2_n_0 ;
  wire \data_reg[42]_i_1_n_0 ;
  wire \data_reg[42]_i_2_n_0 ;
  wire \data_reg[43]_i_1_n_0 ;
  wire \data_reg[43]_i_2_n_0 ;
  wire \data_reg[44]_i_1_n_0 ;
  wire \data_reg[44]_i_2_n_0 ;
  wire \data_reg[45]_i_1_n_0 ;
  wire \data_reg[45]_i_2_n_0 ;
  wire \data_reg[46]_i_1_n_0 ;
  wire \data_reg[46]_i_2_n_0 ;
  wire \data_reg[47]_i_1_n_0 ;
  wire \data_reg[47]_i_2_n_0 ;
  wire \data_reg[47]_i_3_n_0 ;
  wire \data_reg[47]_i_4_n_0 ;
  wire \data_reg[48]_i_1_n_0 ;
  wire \data_reg[48]_i_2_n_0 ;
  wire \data_reg[49]_i_1_n_0 ;
  wire \data_reg[49]_i_2_n_0 ;
  wire \data_reg[4]_i_1_n_0 ;
  wire \data_reg[4]_i_2_n_0 ;
  wire \data_reg[4]_i_3_n_0 ;
  wire \data_reg[50]_i_1_n_0 ;
  wire \data_reg[50]_i_2_n_0 ;
  wire \data_reg[51]_i_1_n_0 ;
  wire \data_reg[51]_i_2_n_0 ;
  wire \data_reg[52]_i_1_n_0 ;
  wire \data_reg[52]_i_2_n_0 ;
  wire \data_reg[53]_i_1_n_0 ;
  wire \data_reg[53]_i_2_n_0 ;
  wire \data_reg[54]_i_1_n_0 ;
  wire \data_reg[54]_i_2_n_0 ;
  wire \data_reg[55]_i_1_n_0 ;
  wire \data_reg[55]_i_2_n_0 ;
  wire \data_reg[55]_i_3_n_0 ;
  wire \data_reg[55]_i_4_n_0 ;
  wire \data_reg[56]_i_1_n_0 ;
  wire \data_reg[56]_i_2_n_0 ;
  wire \data_reg[57]_i_1_n_0 ;
  wire \data_reg[57]_i_2_n_0 ;
  wire \data_reg[58]_i_1_n_0 ;
  wire \data_reg[58]_i_2_n_0 ;
  wire \data_reg[59]_i_1_n_0 ;
  wire \data_reg[59]_i_2_n_0 ;
  wire \data_reg[5]_i_1_n_0 ;
  wire \data_reg[5]_i_2_n_0 ;
  wire \data_reg[5]_i_3_n_0 ;
  wire \data_reg[60]_i_1_n_0 ;
  wire \data_reg[60]_i_2_n_0 ;
  wire \data_reg[61]_i_1_n_0 ;
  wire \data_reg[61]_i_2_n_0 ;
  wire \data_reg[62]_i_1_n_0 ;
  wire \data_reg[62]_i_2_n_0 ;
  wire \data_reg[63]_i_1_n_0 ;
  wire \data_reg[63]_i_2_n_0 ;
  wire \data_reg[63]_i_3_n_0 ;
  wire \data_reg[63]_i_4_n_0 ;
  wire \data_reg[64]_i_1_n_0 ;
  wire \data_reg[64]_i_2_n_0 ;
  wire \data_reg[65]_i_1_n_0 ;
  wire \data_reg[65]_i_2_n_0 ;
  wire \data_reg[66]_i_1_n_0 ;
  wire \data_reg[66]_i_2_n_0 ;
  wire \data_reg[67]_i_1_n_0 ;
  wire \data_reg[67]_i_2_n_0 ;
  wire \data_reg[68]_i_1_n_0 ;
  wire \data_reg[68]_i_2_n_0 ;
  wire \data_reg[69]_i_1_n_0 ;
  wire \data_reg[69]_i_2_n_0 ;
  wire \data_reg[6]_i_1_n_0 ;
  wire \data_reg[6]_i_2_n_0 ;
  wire \data_reg[6]_i_3_n_0 ;
  wire \data_reg[70]_i_1_n_0 ;
  wire \data_reg[70]_i_2_n_0 ;
  wire \data_reg[71]_i_1_n_0 ;
  wire \data_reg[71]_i_2_n_0 ;
  wire \data_reg[71]_i_3_n_0 ;
  wire \data_reg[71]_i_4_n_0 ;
  wire \data_reg[72]_i_1_n_0 ;
  wire \data_reg[72]_i_2_n_0 ;
  wire \data_reg[73]_i_1_n_0 ;
  wire \data_reg[73]_i_2_n_0 ;
  wire \data_reg[74]_i_1_n_0 ;
  wire \data_reg[74]_i_2_n_0 ;
  wire \data_reg[75]_i_1_n_0 ;
  wire \data_reg[75]_i_2_n_0 ;
  wire \data_reg[76]_i_1_n_0 ;
  wire \data_reg[76]_i_2_n_0 ;
  wire \data_reg[77]_i_1_n_0 ;
  wire \data_reg[77]_i_2_n_0 ;
  wire \data_reg[78]_i_1_n_0 ;
  wire \data_reg[78]_i_2_n_0 ;
  wire \data_reg[79]_i_1_n_0 ;
  wire \data_reg[79]_i_2_n_0 ;
  wire \data_reg[79]_i_3_n_0 ;
  wire \data_reg[79]_i_4_n_0 ;
  wire \data_reg[79]_i_5_n_0 ;
  wire \data_reg[7]_i_1_n_0 ;
  wire \data_reg[7]_i_2_n_0 ;
  wire \data_reg[7]_i_3_n_0 ;
  wire \data_reg[7]_i_4_n_0 ;
  wire \data_reg[7]_i_5_n_0 ;
  wire \data_reg[7]_i_6_n_0 ;
  wire \data_reg[8]_i_1_n_0 ;
  wire \data_reg[8]_i_2_n_0 ;
  wire \data_reg[8]_i_3_n_0 ;
  wire \data_reg[9]_i_1_n_0 ;
  wire \data_reg[9]_i_2_n_0 ;
  wire \data_reg[9]_i_3_n_0 ;
  wire eqOp__0;
  wire has_last_reg_0;
  wire has_last_reg_1;
  wire has_last_reg_2;
  wire \out_data_reg[0] ;
  wire \out_data_reg[1] ;
  wire \out_data_reg[2] ;
  wire \out_data_reg[3] ;
  wire \out_data_reg[4] ;
  wire \out_data_reg[5] ;
  wire \out_data_reg[6] ;
  wire \out_data_reg[7] ;
  wire \out_data_reg[8] ;
  wire \out_data_reg[9] ;
  wire out_last0;
  wire out_sof_reg_0;
  wire out_sof_reg_1;
  wire out_sof_reg_2;
  wire out_valid_i_reg;
  wire pause;
  wire pause_reg;
  wire pktr_empty;
  wire [0:0]\reg_reg[23] ;
  wire vid_ready;
  wire vid_sof_reg;
  wire vin_ready_10b;
  wire [39:0]vu40_data;
  wire vu40_sof;
  wire vu40_valid;

  LUT4 #(
    .INIT(16'h0001)) 
    \bl.fifo_36_inst_bl.fifo_36_bl_i_10 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .O(\bl.fifo_36_inst_bl.fifo_36_bl_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0040004000404040)) 
    \bl.fifo_36_inst_bl.fifo_36_bl_i_11 
       (.I0(out_valid_i_reg),
        .I1(\cnt_reg[0]_1 ),
        .I2(\cnt_reg[1]_0 ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[2] ),
        .O(\bl.fifo_36_inst_bl.fifo_36_bl_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFEAE)) 
    \bl.fifo_36_inst_bl.fifo_36_bl_i_6 
       (.I0(eqOp__0),
        .I1(\cnt_reg[0]_3 ),
        .I2(\reg_reg[23] ),
        .I3(\bl.fifo_36_inst_bl.fifo_36_bl_i_9_n_0 ),
        .I4(\bl.fifo_36_inst_bl.fifo_36_bl_i_10_n_0 ),
        .I5(\bl.fifo_36_inst_bl.fifo_36_bl_i_11_n_0 ),
        .O(vid_ready));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00001333)) 
    \bl.fifo_36_inst_bl.fifo_36_bl_i_9 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(out_valid_i_reg),
        .O(\bl.fifo_36_inst_bl.fifo_36_bl_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00FE11EEFF00FF00)) 
    \cnt[0]_i_1 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(out_valid_i_reg),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\cnt_reg[0]_2 ),
        .O(\cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9999989CCCCCCCCC)) 
    \cnt[1]_i_1__0 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(out_valid_i_reg),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(\cnt_reg[0]_2 ),
        .O(\cnt[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAABABAB)) 
    \cnt[1]_i_2 
       (.I0(Q),
        .I1(out_valid_i_reg),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt[3]_i_5_n_0 ),
        .I5(out_last0),
        .O(\cnt_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hEFEEEFEFEFEFEFEF)) 
    \cnt[2]_i_1__0 
       (.I0(\cnt[2]_i_2_n_0 ),
        .I1(\cnt[2]_i_3_n_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg[1]_0 ),
        .I5(\cnt_reg[0]_1 ),
        .O(\cnt[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h000C0008FF0C00FF)) 
    \cnt[2]_i_2 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg[0]_2 ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(has_last_reg_2),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(\cnt_reg_n_0_[2] ),
        .O(\cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444400004400F0FF)) 
    \cnt[2]_i_3 
       (.I0(\cnt[3]_i_5_n_0 ),
        .I1(\cnt_reg[0]_2 ),
        .I2(pause_reg),
        .I3(out_valid_i_reg),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\cnt_reg_n_0_[3] ),
        .O(\cnt[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01040105)) 
    \cnt[3]_i_1__0 
       (.I0(\cnt_reg[1]_1 ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt[3]_i_5_n_0 ),
        .I4(pause_reg),
        .I5(Q),
        .O(\cnt[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00150055)) 
    \cnt[3]_i_2 
       (.I0(has_last_reg_2),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\data_reg[7]_i_1_n_0 ),
        .O(\cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAC5F0FF0AC500FF0)) 
    \cnt[3]_i_3 
       (.I0(\cnt[3]_i_5_n_0 ),
        .I1(\cnt[3]_i_7_n_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg[0]_2 ),
        .I5(out_valid_i_reg),
        .O(\cnt[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cnt[3]_i_5 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .O(\cnt[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \cnt[3]_i_7 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(pause),
        .I3(\FSM_sequential_state_cur_reg[1] ),
        .I4(pktr_empty),
        .I5(out_valid_i_reg),
        .O(\cnt[3]_i_7_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(\cnt[3]_i_1__0_n_0 ));
  FDRE \cnt_reg[1] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\cnt[1]_i_1__0_n_0 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(\cnt[3]_i_1__0_n_0 ));
  FDRE \cnt_reg[2] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\cnt[2]_i_1__0_n_0 ),
        .Q(\cnt_reg_n_0_[2] ),
        .R(\cnt[3]_i_1__0_n_0 ));
  FDRE \cnt_reg[3] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\cnt[3]_i_3_n_0 ),
        .Q(\cnt_reg_n_0_[3] ),
        .R(\cnt[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[0]_i_1 
       (.I0(\data_reg[0]_i_2_n_0 ),
        .I1(DO[0]),
        .I2(\data_reg[15]_i_4_n_0 ),
        .I3(vu40_data[0]),
        .I4(\data_reg[7]_i_4_n_0 ),
        .I5(\data_reg[0]_i_3_n_0 ),
        .O(\data_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2008280800000000)) 
    \data_reg[0]_i_2 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(data_reg[40]),
        .O(\data_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[0]_i_3 
       (.I0(\data_reg[7]_i_6_n_0 ),
        .I1(DO[24]),
        .I2(\data_reg[15]_i_7_n_0 ),
        .I3(DO[16]),
        .I4(DO[8]),
        .I5(\data_reg[23]_i_6_n_0 ),
        .O(\data_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[10]_i_1 
       (.I0(\data_reg[10]_i_2_n_0 ),
        .I1(DO[2]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[10]),
        .I4(\data_reg[15]_i_4_n_0 ),
        .I5(\data_reg[10]_i_3_n_0 ),
        .O(\data_reg[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2008080800000000)) 
    \data_reg[10]_i_2 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(data_reg[50]),
        .O(\data_reg[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[10]_i_3 
       (.I0(\data_reg[15]_i_6_n_0 ),
        .I1(vu40_data[10]),
        .I2(\data_reg[15]_i_7_n_0 ),
        .I3(DO[26]),
        .I4(DO[18]),
        .I5(\data_reg[23]_i_6_n_0 ),
        .O(\data_reg[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[11]_i_1 
       (.I0(\data_reg[11]_i_2_n_0 ),
        .I1(DO[3]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[11]),
        .I4(\data_reg[15]_i_4_n_0 ),
        .I5(\data_reg[11]_i_3_n_0 ),
        .O(\data_reg[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2008080800000000)) 
    \data_reg[11]_i_2 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(data_reg[51]),
        .O(\data_reg[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[11]_i_3 
       (.I0(\data_reg[15]_i_6_n_0 ),
        .I1(vu40_data[11]),
        .I2(\data_reg[15]_i_7_n_0 ),
        .I3(DO[27]),
        .I4(DO[19]),
        .I5(\data_reg[23]_i_6_n_0 ),
        .O(\data_reg[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[12]_i_1 
       (.I0(\data_reg[12]_i_2_n_0 ),
        .I1(DO[4]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[12]),
        .I4(\data_reg[15]_i_4_n_0 ),
        .I5(\data_reg[12]_i_3_n_0 ),
        .O(\data_reg[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2008080800000000)) 
    \data_reg[12]_i_2 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(data_reg[52]),
        .O(\data_reg[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[12]_i_3 
       (.I0(\data_reg[15]_i_6_n_0 ),
        .I1(vu40_data[12]),
        .I2(\data_reg[15]_i_7_n_0 ),
        .I3(DO[28]),
        .I4(DO[20]),
        .I5(\data_reg[23]_i_6_n_0 ),
        .O(\data_reg[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[13]_i_1 
       (.I0(\data_reg[13]_i_2_n_0 ),
        .I1(DO[5]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[13]),
        .I4(\data_reg[15]_i_4_n_0 ),
        .I5(\data_reg[13]_i_3_n_0 ),
        .O(\data_reg[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2008080800000000)) 
    \data_reg[13]_i_2 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(data_reg[53]),
        .O(\data_reg[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[13]_i_3 
       (.I0(\data_reg[15]_i_6_n_0 ),
        .I1(vu40_data[13]),
        .I2(\data_reg[15]_i_7_n_0 ),
        .I3(DO[29]),
        .I4(DO[21]),
        .I5(\data_reg[23]_i_6_n_0 ),
        .O(\data_reg[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[14]_i_1 
       (.I0(\data_reg[14]_i_2_n_0 ),
        .I1(DO[6]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[14]),
        .I4(\data_reg[15]_i_4_n_0 ),
        .I5(\data_reg[14]_i_3_n_0 ),
        .O(\data_reg[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2008080800000000)) 
    \data_reg[14]_i_2 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(data_reg[54]),
        .O(\data_reg[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[14]_i_3 
       (.I0(\data_reg[15]_i_6_n_0 ),
        .I1(vu40_data[14]),
        .I2(\data_reg[15]_i_7_n_0 ),
        .I3(DO[30]),
        .I4(DO[22]),
        .I5(\data_reg[23]_i_6_n_0 ),
        .O(\data_reg[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \data_reg[15]_i_1 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(has_last_reg_2),
        .I4(\data_reg[7]_i_1_n_0 ),
        .O(\data_reg[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[15]_i_2 
       (.I0(\data_reg[15]_i_3_n_0 ),
        .I1(DO[7]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[15]),
        .I4(\data_reg[15]_i_4_n_0 ),
        .I5(\data_reg[15]_i_5_n_0 ),
        .O(\data_reg[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2008080800000000)) 
    \data_reg[15]_i_3 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(data_reg[55]),
        .O(\data_reg[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000050010005)) 
    \data_reg[15]_i_4 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(out_valid_i_reg),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg[0]_2 ),
        .I5(\cnt_reg_n_0_[1] ),
        .O(\data_reg[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[15]_i_5 
       (.I0(\data_reg[15]_i_6_n_0 ),
        .I1(vu40_data[15]),
        .I2(\data_reg[15]_i_7_n_0 ),
        .I3(DO[31]),
        .I4(DO[23]),
        .I5(\data_reg[23]_i_6_n_0 ),
        .O(\data_reg[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00050005555057F0)) 
    \data_reg[15]_i_6 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(out_valid_i_reg),
        .I5(\cnt_reg_n_0_[3] ),
        .O(\data_reg[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \data_reg[15]_i_7 
       (.I0(\cnt_reg[0]_2 ),
        .I1(out_valid_i_reg),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(\data_reg[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \data_reg[16]_i_1 
       (.I0(\data_reg[31]_i_4_n_0 ),
        .I1(DO[0]),
        .I2(\data_reg[16]_i_2_n_0 ),
        .I3(DO[8]),
        .I4(\data_reg[23]_i_4_n_0 ),
        .I5(\data_reg[16]_i_3_n_0 ),
        .O(\data_reg[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \data_reg[16]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg[0]_2 ),
        .I5(data_reg[56]),
        .O(\data_reg[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[16]_i_3 
       (.I0(\data_reg[23]_i_6_n_0 ),
        .I1(DO[24]),
        .I2(\data_reg[23]_i_7_n_0 ),
        .I3(vu40_data[16]),
        .I4(DO[16]),
        .I5(\data_reg[15]_i_4_n_0 ),
        .O(\data_reg[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \data_reg[17]_i_1 
       (.I0(\data_reg[31]_i_4_n_0 ),
        .I1(DO[1]),
        .I2(\data_reg[17]_i_2_n_0 ),
        .I3(DO[9]),
        .I4(\data_reg[23]_i_4_n_0 ),
        .I5(\data_reg[17]_i_3_n_0 ),
        .O(\data_reg[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \data_reg[17]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg[0]_2 ),
        .I5(data_reg[57]),
        .O(\data_reg[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[17]_i_3 
       (.I0(\data_reg[23]_i_6_n_0 ),
        .I1(DO[25]),
        .I2(\data_reg[23]_i_7_n_0 ),
        .I3(vu40_data[17]),
        .I4(DO[17]),
        .I5(\data_reg[15]_i_4_n_0 ),
        .O(\data_reg[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \data_reg[18]_i_1 
       (.I0(\data_reg[31]_i_4_n_0 ),
        .I1(DO[2]),
        .I2(\data_reg[18]_i_2_n_0 ),
        .I3(DO[10]),
        .I4(\data_reg[23]_i_4_n_0 ),
        .I5(\data_reg[18]_i_3_n_0 ),
        .O(\data_reg[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \data_reg[18]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg[0]_2 ),
        .I5(data_reg[58]),
        .O(\data_reg[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[18]_i_3 
       (.I0(\data_reg[23]_i_6_n_0 ),
        .I1(DO[26]),
        .I2(\data_reg[23]_i_7_n_0 ),
        .I3(vu40_data[18]),
        .I4(DO[18]),
        .I5(\data_reg[15]_i_4_n_0 ),
        .O(\data_reg[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \data_reg[19]_i_1 
       (.I0(\data_reg[31]_i_4_n_0 ),
        .I1(DO[3]),
        .I2(\data_reg[19]_i_2_n_0 ),
        .I3(DO[11]),
        .I4(\data_reg[23]_i_4_n_0 ),
        .I5(\data_reg[19]_i_3_n_0 ),
        .O(\data_reg[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \data_reg[19]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg[0]_2 ),
        .I5(data_reg[59]),
        .O(\data_reg[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[19]_i_3 
       (.I0(\data_reg[23]_i_6_n_0 ),
        .I1(DO[27]),
        .I2(\data_reg[23]_i_7_n_0 ),
        .I3(vu40_data[19]),
        .I4(DO[19]),
        .I5(\data_reg[15]_i_4_n_0 ),
        .O(\data_reg[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[1]_i_1 
       (.I0(\data_reg[1]_i_2_n_0 ),
        .I1(DO[1]),
        .I2(\data_reg[15]_i_4_n_0 ),
        .I3(vu40_data[1]),
        .I4(\data_reg[7]_i_4_n_0 ),
        .I5(\data_reg[1]_i_3_n_0 ),
        .O(\data_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2008280800000000)) 
    \data_reg[1]_i_2 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(data_reg[41]),
        .O(\data_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[1]_i_3 
       (.I0(\data_reg[7]_i_6_n_0 ),
        .I1(DO[25]),
        .I2(\data_reg[15]_i_7_n_0 ),
        .I3(DO[17]),
        .I4(DO[9]),
        .I5(\data_reg[23]_i_6_n_0 ),
        .O(\data_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \data_reg[20]_i_1 
       (.I0(\data_reg[31]_i_4_n_0 ),
        .I1(DO[4]),
        .I2(\data_reg[20]_i_2_n_0 ),
        .I3(DO[12]),
        .I4(\data_reg[23]_i_4_n_0 ),
        .I5(\data_reg[20]_i_3_n_0 ),
        .O(\data_reg[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \data_reg[20]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg[0]_2 ),
        .I5(data_reg[60]),
        .O(\data_reg[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[20]_i_3 
       (.I0(\data_reg[23]_i_6_n_0 ),
        .I1(DO[28]),
        .I2(\data_reg[23]_i_7_n_0 ),
        .I3(vu40_data[20]),
        .I4(DO[20]),
        .I5(\data_reg[15]_i_4_n_0 ),
        .O(\data_reg[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \data_reg[21]_i_1 
       (.I0(\data_reg[31]_i_4_n_0 ),
        .I1(DO[5]),
        .I2(\data_reg[21]_i_2_n_0 ),
        .I3(DO[13]),
        .I4(\data_reg[23]_i_4_n_0 ),
        .I5(\data_reg[21]_i_3_n_0 ),
        .O(\data_reg[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \data_reg[21]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg[0]_2 ),
        .I5(data_reg[61]),
        .O(\data_reg[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[21]_i_3 
       (.I0(\data_reg[23]_i_6_n_0 ),
        .I1(DO[29]),
        .I2(\data_reg[23]_i_7_n_0 ),
        .I3(vu40_data[21]),
        .I4(DO[21]),
        .I5(\data_reg[15]_i_4_n_0 ),
        .O(\data_reg[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \data_reg[22]_i_1 
       (.I0(\data_reg[31]_i_4_n_0 ),
        .I1(DO[6]),
        .I2(\data_reg[22]_i_2_n_0 ),
        .I3(DO[14]),
        .I4(\data_reg[23]_i_4_n_0 ),
        .I5(\data_reg[22]_i_3_n_0 ),
        .O(\data_reg[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \data_reg[22]_i_2 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg[0]_2 ),
        .I5(data_reg[62]),
        .O(\data_reg[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[22]_i_3 
       (.I0(\data_reg[23]_i_6_n_0 ),
        .I1(DO[30]),
        .I2(\data_reg[23]_i_7_n_0 ),
        .I3(vu40_data[22]),
        .I4(DO[22]),
        .I5(\data_reg[15]_i_4_n_0 ),
        .O(\data_reg[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000007)) 
    \data_reg[23]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(has_last_reg_2),
        .I5(\data_reg[7]_i_1_n_0 ),
        .O(\data_reg[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \data_reg[23]_i_2 
       (.I0(\data_reg[31]_i_4_n_0 ),
        .I1(DO[7]),
        .I2(\data_reg[23]_i_3_n_0 ),
        .I3(DO[15]),
        .I4(\data_reg[23]_i_4_n_0 ),
        .I5(\data_reg[23]_i_5_n_0 ),
        .O(\data_reg[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0700000000000000)) 
    \data_reg[23]_i_3 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg[0]_2 ),
        .I5(data_reg[63]),
        .O(\data_reg[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040024022)) 
    \data_reg[23]_i_4 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg[0]_2 ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(out_valid_i_reg),
        .I5(\cnt_reg_n_0_[3] ),
        .O(\data_reg[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[23]_i_5 
       (.I0(\data_reg[23]_i_6_n_0 ),
        .I1(DO[31]),
        .I2(\data_reg[23]_i_7_n_0 ),
        .I3(vu40_data[23]),
        .I4(DO[23]),
        .I5(\data_reg[15]_i_4_n_0 ),
        .O(\data_reg[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \data_reg[23]_i_6 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(out_valid_i_reg),
        .I5(\cnt_reg[0]_2 ),
        .O(\data_reg[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00050005554057C0)) 
    \data_reg[23]_i_7 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(out_valid_i_reg),
        .I5(\cnt_reg_n_0_[3] ),
        .O(\data_reg[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[24]_i_1 
       (.I0(\data_reg[24]_i_2_n_0 ),
        .I1(DO[0]),
        .I2(\data_reg[55]_i_3_n_0 ),
        .I3(DO[8]),
        .I4(\data_reg[31]_i_4_n_0 ),
        .I5(\data_reg[24]_i_3_n_0 ),
        .O(\data_reg[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040400000000000)) 
    \data_reg[24]_i_2 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg[0]_2 ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(data_reg[64]),
        .O(\data_reg[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[24]_i_3 
       (.I0(\data_reg[31]_i_6_n_0 ),
        .I1(vu40_data[24]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[16]),
        .I4(DO[24]),
        .I5(\data_reg[15]_i_4_n_0 ),
        .O(\data_reg[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[25]_i_1 
       (.I0(\data_reg[25]_i_2_n_0 ),
        .I1(DO[1]),
        .I2(\data_reg[55]_i_3_n_0 ),
        .I3(DO[9]),
        .I4(\data_reg[31]_i_4_n_0 ),
        .I5(\data_reg[25]_i_3_n_0 ),
        .O(\data_reg[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040400000000000)) 
    \data_reg[25]_i_2 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg[0]_2 ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(data_reg[65]),
        .O(\data_reg[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[25]_i_3 
       (.I0(\data_reg[31]_i_6_n_0 ),
        .I1(vu40_data[25]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[17]),
        .I4(DO[25]),
        .I5(\data_reg[15]_i_4_n_0 ),
        .O(\data_reg[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[26]_i_1 
       (.I0(\data_reg[26]_i_2_n_0 ),
        .I1(DO[2]),
        .I2(\data_reg[55]_i_3_n_0 ),
        .I3(DO[10]),
        .I4(\data_reg[31]_i_4_n_0 ),
        .I5(\data_reg[26]_i_3_n_0 ),
        .O(\data_reg[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040400000000000)) 
    \data_reg[26]_i_2 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg[0]_2 ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(data_reg[66]),
        .O(\data_reg[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[26]_i_3 
       (.I0(\data_reg[31]_i_6_n_0 ),
        .I1(vu40_data[26]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[18]),
        .I4(DO[26]),
        .I5(\data_reg[15]_i_4_n_0 ),
        .O(\data_reg[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[27]_i_1 
       (.I0(\data_reg[27]_i_2_n_0 ),
        .I1(DO[3]),
        .I2(\data_reg[55]_i_3_n_0 ),
        .I3(DO[11]),
        .I4(\data_reg[31]_i_4_n_0 ),
        .I5(\data_reg[27]_i_3_n_0 ),
        .O(\data_reg[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040400000000000)) 
    \data_reg[27]_i_2 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg[0]_2 ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(data_reg[67]),
        .O(\data_reg[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[27]_i_3 
       (.I0(\data_reg[31]_i_6_n_0 ),
        .I1(vu40_data[27]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[19]),
        .I4(DO[27]),
        .I5(\data_reg[15]_i_4_n_0 ),
        .O(\data_reg[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[28]_i_1 
       (.I0(\data_reg[28]_i_2_n_0 ),
        .I1(DO[4]),
        .I2(\data_reg[55]_i_3_n_0 ),
        .I3(DO[12]),
        .I4(\data_reg[31]_i_4_n_0 ),
        .I5(\data_reg[28]_i_3_n_0 ),
        .O(\data_reg[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040400000000000)) 
    \data_reg[28]_i_2 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg[0]_2 ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(data_reg[68]),
        .O(\data_reg[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[28]_i_3 
       (.I0(\data_reg[31]_i_6_n_0 ),
        .I1(vu40_data[28]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[20]),
        .I4(DO[28]),
        .I5(\data_reg[15]_i_4_n_0 ),
        .O(\data_reg[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[29]_i_1 
       (.I0(\data_reg[29]_i_2_n_0 ),
        .I1(DO[5]),
        .I2(\data_reg[55]_i_3_n_0 ),
        .I3(DO[13]),
        .I4(\data_reg[31]_i_4_n_0 ),
        .I5(\data_reg[29]_i_3_n_0 ),
        .O(\data_reg[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040400000000000)) 
    \data_reg[29]_i_2 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg[0]_2 ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(data_reg[69]),
        .O(\data_reg[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[29]_i_3 
       (.I0(\data_reg[31]_i_6_n_0 ),
        .I1(vu40_data[29]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[21]),
        .I4(DO[29]),
        .I5(\data_reg[15]_i_4_n_0 ),
        .O(\data_reg[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[2]_i_1 
       (.I0(\data_reg[2]_i_2_n_0 ),
        .I1(DO[2]),
        .I2(\data_reg[15]_i_4_n_0 ),
        .I3(vu40_data[2]),
        .I4(\data_reg[7]_i_4_n_0 ),
        .I5(\data_reg[2]_i_3_n_0 ),
        .O(\data_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2008280800000000)) 
    \data_reg[2]_i_2 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(data_reg[42]),
        .O(\data_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[2]_i_3 
       (.I0(\data_reg[7]_i_6_n_0 ),
        .I1(DO[26]),
        .I2(\data_reg[15]_i_7_n_0 ),
        .I3(DO[18]),
        .I4(DO[10]),
        .I5(\data_reg[23]_i_6_n_0 ),
        .O(\data_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[30]_i_1 
       (.I0(\data_reg[30]_i_2_n_0 ),
        .I1(DO[6]),
        .I2(\data_reg[55]_i_3_n_0 ),
        .I3(DO[14]),
        .I4(\data_reg[31]_i_4_n_0 ),
        .I5(\data_reg[30]_i_3_n_0 ),
        .O(\data_reg[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040400000000000)) 
    \data_reg[30]_i_2 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg[0]_2 ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(data_reg[70]),
        .O(\data_reg[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[30]_i_3 
       (.I0(\data_reg[31]_i_6_n_0 ),
        .I1(vu40_data[30]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[22]),
        .I4(DO[30]),
        .I5(\data_reg[15]_i_4_n_0 ),
        .O(\data_reg[30]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF01)) 
    \data_reg[31]_i_1 
       (.I0(has_last_reg_2),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\data_reg[7]_i_1_n_0 ),
        .O(\data_reg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[31]_i_2 
       (.I0(\data_reg[31]_i_3_n_0 ),
        .I1(DO[7]),
        .I2(\data_reg[55]_i_3_n_0 ),
        .I3(DO[15]),
        .I4(\data_reg[31]_i_4_n_0 ),
        .I5(\data_reg[31]_i_5_n_0 ),
        .O(\data_reg[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0040400000000000)) 
    \data_reg[31]_i_3 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg[0]_2 ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(data_reg[71]),
        .O(\data_reg[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5001000500000000)) 
    \data_reg[31]_i_4 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(out_valid_i_reg),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg[0]_2 ),
        .I5(\cnt_reg_n_0_[1] ),
        .O(\data_reg[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[31]_i_5 
       (.I0(\data_reg[31]_i_6_n_0 ),
        .I1(vu40_data[31]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[23]),
        .I4(DO[31]),
        .I5(\data_reg[15]_i_4_n_0 ),
        .O(\data_reg[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000010505A505A)) 
    \data_reg[31]_i_6 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(out_valid_i_reg),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(\cnt_reg[0]_2 ),
        .O(\data_reg[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \data_reg[32]_i_1 
       (.I0(\data_reg[63]_i_4_n_0 ),
        .I1(DO[0]),
        .I2(\data_reg[32]_i_2_n_0 ),
        .I3(DO[8]),
        .I4(\data_reg[55]_i_3_n_0 ),
        .I5(\data_reg[32]_i_3_n_0 ),
        .O(\data_reg[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \data_reg[32]_i_2 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg[0]_2 ),
        .I5(data_reg[72]),
        .O(\data_reg[32]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[32]_i_3 
       (.I0(\data_reg[39]_i_5_n_0 ),
        .I1(vu40_data[32]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[24]),
        .I4(DO[16]),
        .I5(\data_reg[31]_i_4_n_0 ),
        .O(\data_reg[32]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \data_reg[33]_i_1 
       (.I0(\data_reg[63]_i_4_n_0 ),
        .I1(DO[1]),
        .I2(\data_reg[33]_i_2_n_0 ),
        .I3(DO[9]),
        .I4(\data_reg[55]_i_3_n_0 ),
        .I5(\data_reg[33]_i_3_n_0 ),
        .O(\data_reg[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \data_reg[33]_i_2 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg[0]_2 ),
        .I5(data_reg[73]),
        .O(\data_reg[33]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[33]_i_3 
       (.I0(\data_reg[39]_i_5_n_0 ),
        .I1(vu40_data[33]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[25]),
        .I4(DO[17]),
        .I5(\data_reg[31]_i_4_n_0 ),
        .O(\data_reg[33]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \data_reg[34]_i_1 
       (.I0(\data_reg[63]_i_4_n_0 ),
        .I1(DO[2]),
        .I2(\data_reg[34]_i_2_n_0 ),
        .I3(DO[10]),
        .I4(\data_reg[55]_i_3_n_0 ),
        .I5(\data_reg[34]_i_3_n_0 ),
        .O(\data_reg[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \data_reg[34]_i_2 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg[0]_2 ),
        .I5(data_reg[74]),
        .O(\data_reg[34]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[34]_i_3 
       (.I0(\data_reg[39]_i_5_n_0 ),
        .I1(vu40_data[34]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[26]),
        .I4(DO[18]),
        .I5(\data_reg[31]_i_4_n_0 ),
        .O(\data_reg[34]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \data_reg[35]_i_1 
       (.I0(\data_reg[63]_i_4_n_0 ),
        .I1(DO[3]),
        .I2(\data_reg[35]_i_2_n_0 ),
        .I3(DO[11]),
        .I4(\data_reg[55]_i_3_n_0 ),
        .I5(\data_reg[35]_i_3_n_0 ),
        .O(\data_reg[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \data_reg[35]_i_2 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg[0]_2 ),
        .I5(data_reg[75]),
        .O(\data_reg[35]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[35]_i_3 
       (.I0(\data_reg[39]_i_5_n_0 ),
        .I1(vu40_data[35]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[27]),
        .I4(DO[19]),
        .I5(\data_reg[31]_i_4_n_0 ),
        .O(\data_reg[35]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \data_reg[36]_i_1 
       (.I0(\data_reg[63]_i_4_n_0 ),
        .I1(DO[4]),
        .I2(\data_reg[36]_i_2_n_0 ),
        .I3(DO[12]),
        .I4(\data_reg[55]_i_3_n_0 ),
        .I5(\data_reg[36]_i_3_n_0 ),
        .O(\data_reg[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \data_reg[36]_i_2 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg[0]_2 ),
        .I5(data_reg[76]),
        .O(\data_reg[36]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[36]_i_3 
       (.I0(\data_reg[39]_i_5_n_0 ),
        .I1(vu40_data[36]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[28]),
        .I4(DO[20]),
        .I5(\data_reg[31]_i_4_n_0 ),
        .O(\data_reg[36]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \data_reg[37]_i_1 
       (.I0(\data_reg[63]_i_4_n_0 ),
        .I1(DO[5]),
        .I2(\data_reg[37]_i_2_n_0 ),
        .I3(DO[13]),
        .I4(\data_reg[55]_i_3_n_0 ),
        .I5(\data_reg[37]_i_3_n_0 ),
        .O(\data_reg[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \data_reg[37]_i_2 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg[0]_2 ),
        .I5(data_reg[77]),
        .O(\data_reg[37]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[37]_i_3 
       (.I0(\data_reg[39]_i_5_n_0 ),
        .I1(vu40_data[37]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[29]),
        .I4(DO[21]),
        .I5(\data_reg[31]_i_4_n_0 ),
        .O(\data_reg[37]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \data_reg[38]_i_1 
       (.I0(\data_reg[63]_i_4_n_0 ),
        .I1(DO[6]),
        .I2(\data_reg[38]_i_2_n_0 ),
        .I3(DO[14]),
        .I4(\data_reg[55]_i_3_n_0 ),
        .I5(\data_reg[38]_i_3_n_0 ),
        .O(\data_reg[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \data_reg[38]_i_2 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg[0]_2 ),
        .I5(data_reg[78]),
        .O(\data_reg[38]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[38]_i_3 
       (.I0(\data_reg[39]_i_5_n_0 ),
        .I1(vu40_data[38]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[30]),
        .I4(DO[22]),
        .I5(\data_reg[31]_i_4_n_0 ),
        .O(\data_reg[38]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCCDCDCDCF)) 
    \data_reg[39]_i_1 
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\data_reg[7]_i_1_n_0 ),
        .I2(has_last_reg_2),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(\cnt_reg_n_0_[3] ),
        .O(\data_reg[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \data_reg[39]_i_2 
       (.I0(\data_reg[63]_i_4_n_0 ),
        .I1(DO[7]),
        .I2(\data_reg[39]_i_3_n_0 ),
        .I3(DO[15]),
        .I4(\data_reg[55]_i_3_n_0 ),
        .I5(\data_reg[39]_i_4_n_0 ),
        .O(\data_reg[39]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \data_reg[39]_i_3 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg[0]_2 ),
        .I5(data_reg[79]),
        .O(\data_reg[39]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[39]_i_4 
       (.I0(\data_reg[39]_i_5_n_0 ),
        .I1(vu40_data[39]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[31]),
        .I4(DO[23]),
        .I5(\data_reg[31]_i_4_n_0 ),
        .O(\data_reg[39]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000003E003E003E0)) 
    \data_reg[39]_i_5 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg[1]_0 ),
        .I5(\cnt_reg[0]_1 ),
        .O(\data_reg[39]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[3]_i_1 
       (.I0(\data_reg[3]_i_2_n_0 ),
        .I1(DO[3]),
        .I2(\data_reg[15]_i_4_n_0 ),
        .I3(vu40_data[3]),
        .I4(\data_reg[7]_i_4_n_0 ),
        .I5(\data_reg[3]_i_3_n_0 ),
        .O(\data_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2008280800000000)) 
    \data_reg[3]_i_2 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(data_reg[43]),
        .O(\data_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[3]_i_3 
       (.I0(\data_reg[7]_i_6_n_0 ),
        .I1(DO[27]),
        .I2(\data_reg[15]_i_7_n_0 ),
        .I3(DO[19]),
        .I4(DO[11]),
        .I5(\data_reg[23]_i_6_n_0 ),
        .O(\data_reg[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[40]_i_1 
       (.I0(\data_reg[40]_i_2_n_0 ),
        .I1(\data_reg[55]_i_3_n_0 ),
        .I2(DO[16]),
        .I3(DO[8]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[40]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[40]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[0]),
        .I2(\data_reg[47]_i_4_n_0 ),
        .I3(data_reg[40]),
        .I4(DO[24]),
        .I5(\data_reg[31]_i_4_n_0 ),
        .O(\data_reg[40]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[41]_i_1 
       (.I0(\data_reg[41]_i_2_n_0 ),
        .I1(\data_reg[55]_i_3_n_0 ),
        .I2(DO[17]),
        .I3(DO[9]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[41]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[41]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[1]),
        .I2(\data_reg[47]_i_4_n_0 ),
        .I3(data_reg[41]),
        .I4(DO[25]),
        .I5(\data_reg[31]_i_4_n_0 ),
        .O(\data_reg[41]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[42]_i_1 
       (.I0(\data_reg[42]_i_2_n_0 ),
        .I1(\data_reg[55]_i_3_n_0 ),
        .I2(DO[18]),
        .I3(DO[10]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[42]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[2]),
        .I2(\data_reg[47]_i_4_n_0 ),
        .I3(data_reg[42]),
        .I4(DO[26]),
        .I5(\data_reg[31]_i_4_n_0 ),
        .O(\data_reg[42]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[43]_i_1 
       (.I0(\data_reg[43]_i_2_n_0 ),
        .I1(\data_reg[55]_i_3_n_0 ),
        .I2(DO[19]),
        .I3(DO[11]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[43]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[43]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[3]),
        .I2(\data_reg[47]_i_4_n_0 ),
        .I3(data_reg[43]),
        .I4(DO[27]),
        .I5(\data_reg[31]_i_4_n_0 ),
        .O(\data_reg[43]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[44]_i_1 
       (.I0(\data_reg[44]_i_2_n_0 ),
        .I1(\data_reg[55]_i_3_n_0 ),
        .I2(DO[20]),
        .I3(DO[12]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[44]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[44]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[4]),
        .I2(\data_reg[47]_i_4_n_0 ),
        .I3(data_reg[44]),
        .I4(DO[28]),
        .I5(\data_reg[31]_i_4_n_0 ),
        .O(\data_reg[44]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[45]_i_1 
       (.I0(\data_reg[45]_i_2_n_0 ),
        .I1(\data_reg[55]_i_3_n_0 ),
        .I2(DO[21]),
        .I3(DO[13]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[45]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[45]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[5]),
        .I2(\data_reg[47]_i_4_n_0 ),
        .I3(data_reg[45]),
        .I4(DO[29]),
        .I5(\data_reg[31]_i_4_n_0 ),
        .O(\data_reg[45]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[46]_i_1 
       (.I0(\data_reg[46]_i_2_n_0 ),
        .I1(\data_reg[55]_i_3_n_0 ),
        .I2(DO[22]),
        .I3(DO[14]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[46]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[6]),
        .I2(\data_reg[47]_i_4_n_0 ),
        .I3(data_reg[46]),
        .I4(DO[30]),
        .I5(\data_reg[31]_i_4_n_0 ),
        .O(\data_reg[46]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0105)) 
    \data_reg[47]_i_1 
       (.I0(has_last_reg_2),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\data_reg[7]_i_1_n_0 ),
        .O(\data_reg[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[47]_i_2 
       (.I0(\data_reg[47]_i_3_n_0 ),
        .I1(\data_reg[55]_i_3_n_0 ),
        .I2(DO[23]),
        .I3(DO[15]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[47]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[47]_i_3 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[7]),
        .I2(\data_reg[47]_i_4_n_0 ),
        .I3(data_reg[47]),
        .I4(DO[31]),
        .I5(\data_reg[31]_i_4_n_0 ),
        .O(\data_reg[47]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00181818)) 
    \data_reg[47]_i_4 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg[1]_0 ),
        .I4(\cnt_reg[0]_1 ),
        .O(\data_reg[47]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[48]_i_1 
       (.I0(\data_reg[48]_i_2_n_0 ),
        .I1(\data_reg[55]_i_3_n_0 ),
        .I2(DO[24]),
        .I3(DO[16]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[48]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[48]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[8]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[0]),
        .I4(data_reg[48]),
        .I5(\data_reg[55]_i_4_n_0 ),
        .O(\data_reg[48]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[49]_i_1 
       (.I0(\data_reg[49]_i_2_n_0 ),
        .I1(\data_reg[55]_i_3_n_0 ),
        .I2(DO[25]),
        .I3(DO[17]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[49]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[49]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[9]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[1]),
        .I4(data_reg[49]),
        .I5(\data_reg[55]_i_4_n_0 ),
        .O(\data_reg[49]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[4]_i_1 
       (.I0(\data_reg[4]_i_2_n_0 ),
        .I1(DO[4]),
        .I2(\data_reg[15]_i_4_n_0 ),
        .I3(vu40_data[4]),
        .I4(\data_reg[7]_i_4_n_0 ),
        .I5(\data_reg[4]_i_3_n_0 ),
        .O(\data_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2008280800000000)) 
    \data_reg[4]_i_2 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(data_reg[44]),
        .O(\data_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[4]_i_3 
       (.I0(\data_reg[7]_i_6_n_0 ),
        .I1(DO[28]),
        .I2(\data_reg[15]_i_7_n_0 ),
        .I3(DO[20]),
        .I4(DO[12]),
        .I5(\data_reg[23]_i_6_n_0 ),
        .O(\data_reg[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[50]_i_1 
       (.I0(\data_reg[50]_i_2_n_0 ),
        .I1(\data_reg[55]_i_3_n_0 ),
        .I2(DO[26]),
        .I3(DO[18]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[50]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[50]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[10]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[2]),
        .I4(data_reg[50]),
        .I5(\data_reg[55]_i_4_n_0 ),
        .O(\data_reg[50]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[51]_i_1 
       (.I0(\data_reg[51]_i_2_n_0 ),
        .I1(\data_reg[55]_i_3_n_0 ),
        .I2(DO[27]),
        .I3(DO[19]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[51]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[51]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[11]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[3]),
        .I4(data_reg[51]),
        .I5(\data_reg[55]_i_4_n_0 ),
        .O(\data_reg[51]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[52]_i_1 
       (.I0(\data_reg[52]_i_2_n_0 ),
        .I1(\data_reg[55]_i_3_n_0 ),
        .I2(DO[28]),
        .I3(DO[20]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[52]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[52]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[12]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[4]),
        .I4(data_reg[52]),
        .I5(\data_reg[55]_i_4_n_0 ),
        .O(\data_reg[52]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[53]_i_1 
       (.I0(\data_reg[53]_i_2_n_0 ),
        .I1(\data_reg[55]_i_3_n_0 ),
        .I2(DO[29]),
        .I3(DO[21]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[53]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[53]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[13]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[5]),
        .I4(data_reg[53]),
        .I5(\data_reg[55]_i_4_n_0 ),
        .O(\data_reg[53]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[54]_i_1 
       (.I0(\data_reg[54]_i_2_n_0 ),
        .I1(\data_reg[55]_i_3_n_0 ),
        .I2(DO[30]),
        .I3(DO[22]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[54]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[54]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[14]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[6]),
        .I4(data_reg[54]),
        .I5(\data_reg[55]_i_4_n_0 ),
        .O(\data_reg[54]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[55]_i_1 
       (.I0(\data_reg[55]_i_2_n_0 ),
        .I1(\data_reg[55]_i_3_n_0 ),
        .I2(DO[31]),
        .I3(DO[23]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[55]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[55]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[15]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[7]),
        .I4(data_reg[55]),
        .I5(\data_reg[55]_i_4_n_0 ),
        .O(\data_reg[55]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010083008)) 
    \data_reg[55]_i_3 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(out_valid_i_reg),
        .I5(\cnt_reg_n_0_[2] ),
        .O(\data_reg[55]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000038003800380)) 
    \data_reg[55]_i_4 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg[1]_0 ),
        .I5(\cnt_reg[0]_1 ),
        .O(\data_reg[55]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[56]_i_1 
       (.I0(\data_reg[56]_i_2_n_0 ),
        .I1(\data_reg[63]_i_3_n_0 ),
        .I2(data_reg[56]),
        .I3(DO[24]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[56]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[56]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[16]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[8]),
        .I4(DO[0]),
        .I5(\data_reg[79]_i_5_n_0 ),
        .O(\data_reg[56]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[57]_i_1 
       (.I0(\data_reg[57]_i_2_n_0 ),
        .I1(\data_reg[63]_i_3_n_0 ),
        .I2(data_reg[57]),
        .I3(DO[25]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[57]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[57]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[17]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[9]),
        .I4(DO[1]),
        .I5(\data_reg[79]_i_5_n_0 ),
        .O(\data_reg[57]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[58]_i_1 
       (.I0(\data_reg[58]_i_2_n_0 ),
        .I1(\data_reg[63]_i_3_n_0 ),
        .I2(data_reg[58]),
        .I3(DO[26]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[58]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[58]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[18]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[10]),
        .I4(DO[2]),
        .I5(\data_reg[79]_i_5_n_0 ),
        .O(\data_reg[58]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[59]_i_1 
       (.I0(\data_reg[59]_i_2_n_0 ),
        .I1(\data_reg[63]_i_3_n_0 ),
        .I2(data_reg[59]),
        .I3(DO[27]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[59]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[59]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[19]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[11]),
        .I4(DO[3]),
        .I5(\data_reg[79]_i_5_n_0 ),
        .O(\data_reg[59]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[5]_i_1 
       (.I0(\data_reg[5]_i_2_n_0 ),
        .I1(DO[5]),
        .I2(\data_reg[15]_i_4_n_0 ),
        .I3(vu40_data[5]),
        .I4(\data_reg[7]_i_4_n_0 ),
        .I5(\data_reg[5]_i_3_n_0 ),
        .O(\data_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2008280800000000)) 
    \data_reg[5]_i_2 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(data_reg[45]),
        .O(\data_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[5]_i_3 
       (.I0(\data_reg[7]_i_6_n_0 ),
        .I1(DO[29]),
        .I2(\data_reg[15]_i_7_n_0 ),
        .I3(DO[21]),
        .I4(DO[13]),
        .I5(\data_reg[23]_i_6_n_0 ),
        .O(\data_reg[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[60]_i_1 
       (.I0(\data_reg[60]_i_2_n_0 ),
        .I1(\data_reg[63]_i_3_n_0 ),
        .I2(data_reg[60]),
        .I3(DO[28]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[60]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[60]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[20]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[12]),
        .I4(DO[4]),
        .I5(\data_reg[79]_i_5_n_0 ),
        .O(\data_reg[60]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[61]_i_1 
       (.I0(\data_reg[61]_i_2_n_0 ),
        .I1(\data_reg[63]_i_3_n_0 ),
        .I2(data_reg[61]),
        .I3(DO[29]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[61]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[61]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[21]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[13]),
        .I4(DO[5]),
        .I5(\data_reg[79]_i_5_n_0 ),
        .O(\data_reg[61]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[62]_i_1 
       (.I0(\data_reg[62]_i_2_n_0 ),
        .I1(\data_reg[63]_i_3_n_0 ),
        .I2(data_reg[62]),
        .I3(DO[30]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[62]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[62]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[22]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[14]),
        .I4(DO[6]),
        .I5(\data_reg[79]_i_5_n_0 ),
        .O(\data_reg[62]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[63]_i_1 
       (.I0(\data_reg[63]_i_2_n_0 ),
        .I1(\data_reg[63]_i_3_n_0 ),
        .I2(data_reg[63]),
        .I3(DO[31]),
        .I4(\data_reg[63]_i_4_n_0 ),
        .O(\data_reg[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[63]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[23]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[15]),
        .I4(DO[7]),
        .I5(\data_reg[79]_i_5_n_0 ),
        .O(\data_reg[63]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00000070)) 
    \data_reg[63]_i_3 
       (.I0(\cnt_reg[0]_1 ),
        .I1(\cnt_reg[1]_0 ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[1] ),
        .O(\data_reg[63]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000A000000700)) 
    \data_reg[63]_i_4 
       (.I0(\cnt_reg[0]_2 ),
        .I1(out_valid_i_reg),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(\data_reg[63]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[64]_i_1 
       (.I0(\data_reg[64]_i_2_n_0 ),
        .I1(\data_reg[71]_i_3_n_0 ),
        .I2(DO[0]),
        .I3(data_reg[64]),
        .I4(\data_reg[79]_i_2_n_0 ),
        .O(\data_reg[64]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[64]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[24]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[16]),
        .I4(DO[8]),
        .I5(\data_reg[79]_i_5_n_0 ),
        .O(\data_reg[64]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[65]_i_1 
       (.I0(\data_reg[65]_i_2_n_0 ),
        .I1(\data_reg[71]_i_3_n_0 ),
        .I2(DO[1]),
        .I3(data_reg[65]),
        .I4(\data_reg[79]_i_2_n_0 ),
        .O(\data_reg[65]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[65]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[25]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[17]),
        .I4(DO[9]),
        .I5(\data_reg[79]_i_5_n_0 ),
        .O(\data_reg[65]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[66]_i_1 
       (.I0(\data_reg[66]_i_2_n_0 ),
        .I1(\data_reg[71]_i_3_n_0 ),
        .I2(DO[2]),
        .I3(data_reg[66]),
        .I4(\data_reg[79]_i_2_n_0 ),
        .O(\data_reg[66]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[66]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[26]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[18]),
        .I4(DO[10]),
        .I5(\data_reg[79]_i_5_n_0 ),
        .O(\data_reg[66]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[67]_i_1 
       (.I0(\data_reg[67]_i_2_n_0 ),
        .I1(\data_reg[71]_i_3_n_0 ),
        .I2(DO[3]),
        .I3(data_reg[67]),
        .I4(\data_reg[79]_i_2_n_0 ),
        .O(\data_reg[67]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[67]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[27]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[19]),
        .I4(DO[11]),
        .I5(\data_reg[79]_i_5_n_0 ),
        .O(\data_reg[67]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[68]_i_1 
       (.I0(\data_reg[68]_i_2_n_0 ),
        .I1(\data_reg[71]_i_3_n_0 ),
        .I2(DO[4]),
        .I3(data_reg[68]),
        .I4(\data_reg[79]_i_2_n_0 ),
        .O(\data_reg[68]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[68]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[28]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[20]),
        .I4(DO[12]),
        .I5(\data_reg[79]_i_5_n_0 ),
        .O(\data_reg[68]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[69]_i_1 
       (.I0(\data_reg[69]_i_2_n_0 ),
        .I1(\data_reg[71]_i_3_n_0 ),
        .I2(DO[5]),
        .I3(data_reg[69]),
        .I4(\data_reg[79]_i_2_n_0 ),
        .O(\data_reg[69]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[69]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[29]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[21]),
        .I4(DO[13]),
        .I5(\data_reg[79]_i_5_n_0 ),
        .O(\data_reg[69]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[6]_i_1 
       (.I0(\data_reg[6]_i_2_n_0 ),
        .I1(DO[6]),
        .I2(\data_reg[15]_i_4_n_0 ),
        .I3(vu40_data[6]),
        .I4(\data_reg[7]_i_4_n_0 ),
        .I5(\data_reg[6]_i_3_n_0 ),
        .O(\data_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2008280800000000)) 
    \data_reg[6]_i_2 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(data_reg[46]),
        .O(\data_reg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[6]_i_3 
       (.I0(\data_reg[7]_i_6_n_0 ),
        .I1(DO[30]),
        .I2(\data_reg[15]_i_7_n_0 ),
        .I3(DO[22]),
        .I4(DO[14]),
        .I5(\data_reg[23]_i_6_n_0 ),
        .O(\data_reg[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[70]_i_1 
       (.I0(\data_reg[70]_i_2_n_0 ),
        .I1(\data_reg[71]_i_3_n_0 ),
        .I2(DO[6]),
        .I3(data_reg[70]),
        .I4(\data_reg[79]_i_2_n_0 ),
        .O(\data_reg[70]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[70]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[30]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[22]),
        .I4(DO[14]),
        .I5(\data_reg[79]_i_5_n_0 ),
        .O(\data_reg[70]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_reg[71]_i_1 
       (.I0(\data_reg[71]_i_2_n_0 ),
        .I1(\data_reg[71]_i_3_n_0 ),
        .I2(DO[7]),
        .I3(data_reg[71]),
        .I4(\data_reg[79]_i_2_n_0 ),
        .O(\data_reg[71]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[71]_i_2 
       (.I0(\data_reg[71]_i_4_n_0 ),
        .I1(DO[31]),
        .I2(\data_reg[79]_i_4_n_0 ),
        .I3(DO[23]),
        .I4(DO[15]),
        .I5(\data_reg[79]_i_5_n_0 ),
        .O(\data_reg[71]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000070)) 
    \data_reg[71]_i_3 
       (.I0(\cnt_reg[0]_1 ),
        .I1(\cnt_reg[1]_0 ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(\data_reg[71]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0015000000008000)) 
    \data_reg[71]_i_4 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg[1]_0 ),
        .I2(\cnt_reg[0]_1 ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(\data_reg[71]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \data_reg[72]_i_1 
       (.I0(DO[0]),
        .I1(\data_reg[79]_i_2_n_0 ),
        .I2(\data_reg[72]_i_2_n_0 ),
        .O(\data_reg[72]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[72]_i_2 
       (.I0(\data_reg[79]_i_4_n_0 ),
        .I1(DO[24]),
        .I2(\data_reg[79]_i_5_n_0 ),
        .I3(DO[16]),
        .I4(DO[8]),
        .I5(\data_reg[71]_i_3_n_0 ),
        .O(\data_reg[72]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \data_reg[73]_i_1 
       (.I0(DO[1]),
        .I1(\data_reg[79]_i_2_n_0 ),
        .I2(\data_reg[73]_i_2_n_0 ),
        .O(\data_reg[73]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[73]_i_2 
       (.I0(\data_reg[79]_i_4_n_0 ),
        .I1(DO[25]),
        .I2(\data_reg[79]_i_5_n_0 ),
        .I3(DO[17]),
        .I4(DO[9]),
        .I5(\data_reg[71]_i_3_n_0 ),
        .O(\data_reg[73]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \data_reg[74]_i_1 
       (.I0(DO[2]),
        .I1(\data_reg[79]_i_2_n_0 ),
        .I2(\data_reg[74]_i_2_n_0 ),
        .O(\data_reg[74]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[74]_i_2 
       (.I0(\data_reg[79]_i_4_n_0 ),
        .I1(DO[26]),
        .I2(\data_reg[79]_i_5_n_0 ),
        .I3(DO[18]),
        .I4(DO[10]),
        .I5(\data_reg[71]_i_3_n_0 ),
        .O(\data_reg[74]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \data_reg[75]_i_1 
       (.I0(DO[3]),
        .I1(\data_reg[79]_i_2_n_0 ),
        .I2(\data_reg[75]_i_2_n_0 ),
        .O(\data_reg[75]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[75]_i_2 
       (.I0(\data_reg[79]_i_4_n_0 ),
        .I1(DO[27]),
        .I2(\data_reg[79]_i_5_n_0 ),
        .I3(DO[19]),
        .I4(DO[11]),
        .I5(\data_reg[71]_i_3_n_0 ),
        .O(\data_reg[75]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \data_reg[76]_i_1 
       (.I0(DO[4]),
        .I1(\data_reg[79]_i_2_n_0 ),
        .I2(\data_reg[76]_i_2_n_0 ),
        .O(\data_reg[76]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[76]_i_2 
       (.I0(\data_reg[79]_i_4_n_0 ),
        .I1(DO[28]),
        .I2(\data_reg[79]_i_5_n_0 ),
        .I3(DO[20]),
        .I4(DO[12]),
        .I5(\data_reg[71]_i_3_n_0 ),
        .O(\data_reg[76]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \data_reg[77]_i_1 
       (.I0(DO[5]),
        .I1(\data_reg[79]_i_2_n_0 ),
        .I2(\data_reg[77]_i_2_n_0 ),
        .O(\data_reg[77]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[77]_i_2 
       (.I0(\data_reg[79]_i_4_n_0 ),
        .I1(DO[29]),
        .I2(\data_reg[79]_i_5_n_0 ),
        .I3(DO[21]),
        .I4(DO[13]),
        .I5(\data_reg[71]_i_3_n_0 ),
        .O(\data_reg[77]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \data_reg[78]_i_1 
       (.I0(DO[6]),
        .I1(\data_reg[79]_i_2_n_0 ),
        .I2(\data_reg[78]_i_2_n_0 ),
        .O(\data_reg[78]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[78]_i_2 
       (.I0(\data_reg[79]_i_4_n_0 ),
        .I1(DO[30]),
        .I2(\data_reg[79]_i_5_n_0 ),
        .I3(DO[22]),
        .I4(DO[14]),
        .I5(\data_reg[71]_i_3_n_0 ),
        .O(\data_reg[78]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \data_reg[79]_i_1 
       (.I0(DO[7]),
        .I1(\data_reg[79]_i_2_n_0 ),
        .I2(\data_reg[79]_i_3_n_0 ),
        .O(\data_reg[79]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010101000000000)) 
    \data_reg[79]_i_2 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg[1]_0 ),
        .I4(\cnt_reg[0]_1 ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(\data_reg[79]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[79]_i_3 
       (.I0(\data_reg[79]_i_4_n_0 ),
        .I1(DO[31]),
        .I2(\data_reg[79]_i_5_n_0 ),
        .I3(DO[23]),
        .I4(DO[15]),
        .I5(\data_reg[71]_i_3_n_0 ),
        .O(\data_reg[79]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004440000)) 
    \data_reg[79]_i_4 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg[0]_1 ),
        .I3(\cnt_reg[1]_0 ),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\cnt_reg_n_0_[3] ),
        .O(\data_reg[79]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0070000000000000)) 
    \data_reg[79]_i_5 
       (.I0(\cnt_reg[0]_1 ),
        .I1(\cnt_reg[1]_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[1] ),
        .I5(\cnt_reg_n_0_[0] ),
        .O(\data_reg[79]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFAFFAE0000000C)) 
    \data_reg[7]_i_1 
       (.I0(out_valid_i_reg),
        .I1(pause_reg),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt[3]_i_5_n_0 ),
        .I5(\cnt_reg[0]_2 ),
        .O(\data_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[7]_i_2 
       (.I0(\data_reg[7]_i_3_n_0 ),
        .I1(DO[7]),
        .I2(\data_reg[15]_i_4_n_0 ),
        .I3(vu40_data[7]),
        .I4(\data_reg[7]_i_4_n_0 ),
        .I5(\data_reg[7]_i_5_n_0 ),
        .O(\data_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2008280800000000)) 
    \data_reg[7]_i_3 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(data_reg[47]),
        .O(\data_reg[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00050005555457FC)) 
    \data_reg[7]_i_4 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(out_valid_i_reg),
        .I5(\cnt_reg_n_0_[3] ),
        .O(\data_reg[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[7]_i_5 
       (.I0(\data_reg[7]_i_6_n_0 ),
        .I1(DO[31]),
        .I2(\data_reg[15]_i_7_n_0 ),
        .I3(DO[23]),
        .I4(DO[15]),
        .I5(\data_reg[23]_i_6_n_0 ),
        .O(\data_reg[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \data_reg[7]_i_6 
       (.I0(\cnt_reg[0]_2 ),
        .I1(out_valid_i_reg),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[3] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(\cnt_reg_n_0_[1] ),
        .O(\data_reg[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[8]_i_1 
       (.I0(\data_reg[8]_i_2_n_0 ),
        .I1(DO[0]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[8]),
        .I4(\data_reg[15]_i_4_n_0 ),
        .I5(\data_reg[8]_i_3_n_0 ),
        .O(\data_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2008080800000000)) 
    \data_reg[8]_i_2 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(data_reg[48]),
        .O(\data_reg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[8]_i_3 
       (.I0(\data_reg[15]_i_6_n_0 ),
        .I1(vu40_data[8]),
        .I2(\data_reg[15]_i_7_n_0 ),
        .I3(DO[24]),
        .I4(DO[16]),
        .I5(\data_reg[23]_i_6_n_0 ),
        .O(\data_reg[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \data_reg[9]_i_1 
       (.I0(\data_reg[9]_i_2_n_0 ),
        .I1(DO[1]),
        .I2(\data_reg[23]_i_4_n_0 ),
        .I3(DO[9]),
        .I4(\data_reg[15]_i_4_n_0 ),
        .I5(\data_reg[9]_i_3_n_0 ),
        .O(\data_reg[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2008080800000000)) 
    \data_reg[9]_i_2 
       (.I0(\cnt_reg[0]_2 ),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .I5(data_reg[49]),
        .O(\data_reg[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data_reg[9]_i_3 
       (.I0(\data_reg[15]_i_6_n_0 ),
        .I1(vu40_data[9]),
        .I2(\data_reg[15]_i_7_n_0 ),
        .I3(DO[25]),
        .I4(DO[17]),
        .I5(\data_reg[23]_i_6_n_0 ),
        .O(\data_reg[9]_i_3_n_0 ));
  FDRE \data_reg_reg[0] 
       (.C(clk),
        .CE(\data_reg[7]_i_1_n_0 ),
        .D(\data_reg[0]_i_1_n_0 ),
        .Q(vu40_data[0]),
        .R(1'b0));
  FDRE \data_reg_reg[10] 
       (.C(clk),
        .CE(\data_reg[15]_i_1_n_0 ),
        .D(\data_reg[10]_i_1_n_0 ),
        .Q(vu40_data[10]),
        .R(1'b0));
  FDRE \data_reg_reg[11] 
       (.C(clk),
        .CE(\data_reg[15]_i_1_n_0 ),
        .D(\data_reg[11]_i_1_n_0 ),
        .Q(vu40_data[11]),
        .R(1'b0));
  FDRE \data_reg_reg[12] 
       (.C(clk),
        .CE(\data_reg[15]_i_1_n_0 ),
        .D(\data_reg[12]_i_1_n_0 ),
        .Q(vu40_data[12]),
        .R(1'b0));
  FDRE \data_reg_reg[13] 
       (.C(clk),
        .CE(\data_reg[15]_i_1_n_0 ),
        .D(\data_reg[13]_i_1_n_0 ),
        .Q(vu40_data[13]),
        .R(1'b0));
  FDRE \data_reg_reg[14] 
       (.C(clk),
        .CE(\data_reg[15]_i_1_n_0 ),
        .D(\data_reg[14]_i_1_n_0 ),
        .Q(vu40_data[14]),
        .R(1'b0));
  FDRE \data_reg_reg[15] 
       (.C(clk),
        .CE(\data_reg[15]_i_1_n_0 ),
        .D(\data_reg[15]_i_2_n_0 ),
        .Q(vu40_data[15]),
        .R(1'b0));
  FDRE \data_reg_reg[16] 
       (.C(clk),
        .CE(\data_reg[23]_i_1_n_0 ),
        .D(\data_reg[16]_i_1_n_0 ),
        .Q(vu40_data[16]),
        .R(1'b0));
  FDRE \data_reg_reg[17] 
       (.C(clk),
        .CE(\data_reg[23]_i_1_n_0 ),
        .D(\data_reg[17]_i_1_n_0 ),
        .Q(vu40_data[17]),
        .R(1'b0));
  FDRE \data_reg_reg[18] 
       (.C(clk),
        .CE(\data_reg[23]_i_1_n_0 ),
        .D(\data_reg[18]_i_1_n_0 ),
        .Q(vu40_data[18]),
        .R(1'b0));
  FDRE \data_reg_reg[19] 
       (.C(clk),
        .CE(\data_reg[23]_i_1_n_0 ),
        .D(\data_reg[19]_i_1_n_0 ),
        .Q(vu40_data[19]),
        .R(1'b0));
  FDRE \data_reg_reg[1] 
       (.C(clk),
        .CE(\data_reg[7]_i_1_n_0 ),
        .D(\data_reg[1]_i_1_n_0 ),
        .Q(vu40_data[1]),
        .R(1'b0));
  FDRE \data_reg_reg[20] 
       (.C(clk),
        .CE(\data_reg[23]_i_1_n_0 ),
        .D(\data_reg[20]_i_1_n_0 ),
        .Q(vu40_data[20]),
        .R(1'b0));
  FDRE \data_reg_reg[21] 
       (.C(clk),
        .CE(\data_reg[23]_i_1_n_0 ),
        .D(\data_reg[21]_i_1_n_0 ),
        .Q(vu40_data[21]),
        .R(1'b0));
  FDRE \data_reg_reg[22] 
       (.C(clk),
        .CE(\data_reg[23]_i_1_n_0 ),
        .D(\data_reg[22]_i_1_n_0 ),
        .Q(vu40_data[22]),
        .R(1'b0));
  FDRE \data_reg_reg[23] 
       (.C(clk),
        .CE(\data_reg[23]_i_1_n_0 ),
        .D(\data_reg[23]_i_2_n_0 ),
        .Q(vu40_data[23]),
        .R(1'b0));
  FDRE \data_reg_reg[24] 
       (.C(clk),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(\data_reg[24]_i_1_n_0 ),
        .Q(vu40_data[24]),
        .R(1'b0));
  FDRE \data_reg_reg[25] 
       (.C(clk),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(\data_reg[25]_i_1_n_0 ),
        .Q(vu40_data[25]),
        .R(1'b0));
  FDRE \data_reg_reg[26] 
       (.C(clk),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(\data_reg[26]_i_1_n_0 ),
        .Q(vu40_data[26]),
        .R(1'b0));
  FDRE \data_reg_reg[27] 
       (.C(clk),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(\data_reg[27]_i_1_n_0 ),
        .Q(vu40_data[27]),
        .R(1'b0));
  FDRE \data_reg_reg[28] 
       (.C(clk),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(\data_reg[28]_i_1_n_0 ),
        .Q(vu40_data[28]),
        .R(1'b0));
  FDRE \data_reg_reg[29] 
       (.C(clk),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(\data_reg[29]_i_1_n_0 ),
        .Q(vu40_data[29]),
        .R(1'b0));
  FDRE \data_reg_reg[2] 
       (.C(clk),
        .CE(\data_reg[7]_i_1_n_0 ),
        .D(\data_reg[2]_i_1_n_0 ),
        .Q(vu40_data[2]),
        .R(1'b0));
  FDRE \data_reg_reg[30] 
       (.C(clk),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(\data_reg[30]_i_1_n_0 ),
        .Q(vu40_data[30]),
        .R(1'b0));
  FDRE \data_reg_reg[31] 
       (.C(clk),
        .CE(\data_reg[31]_i_1_n_0 ),
        .D(\data_reg[31]_i_2_n_0 ),
        .Q(vu40_data[31]),
        .R(1'b0));
  FDRE \data_reg_reg[32] 
       (.C(clk),
        .CE(\data_reg[39]_i_1_n_0 ),
        .D(\data_reg[32]_i_1_n_0 ),
        .Q(vu40_data[32]),
        .R(1'b0));
  FDRE \data_reg_reg[33] 
       (.C(clk),
        .CE(\data_reg[39]_i_1_n_0 ),
        .D(\data_reg[33]_i_1_n_0 ),
        .Q(vu40_data[33]),
        .R(1'b0));
  FDRE \data_reg_reg[34] 
       (.C(clk),
        .CE(\data_reg[39]_i_1_n_0 ),
        .D(\data_reg[34]_i_1_n_0 ),
        .Q(vu40_data[34]),
        .R(1'b0));
  FDRE \data_reg_reg[35] 
       (.C(clk),
        .CE(\data_reg[39]_i_1_n_0 ),
        .D(\data_reg[35]_i_1_n_0 ),
        .Q(vu40_data[35]),
        .R(1'b0));
  FDRE \data_reg_reg[36] 
       (.C(clk),
        .CE(\data_reg[39]_i_1_n_0 ),
        .D(\data_reg[36]_i_1_n_0 ),
        .Q(vu40_data[36]),
        .R(1'b0));
  FDRE \data_reg_reg[37] 
       (.C(clk),
        .CE(\data_reg[39]_i_1_n_0 ),
        .D(\data_reg[37]_i_1_n_0 ),
        .Q(vu40_data[37]),
        .R(1'b0));
  FDRE \data_reg_reg[38] 
       (.C(clk),
        .CE(\data_reg[39]_i_1_n_0 ),
        .D(\data_reg[38]_i_1_n_0 ),
        .Q(vu40_data[38]),
        .R(1'b0));
  FDRE \data_reg_reg[39] 
       (.C(clk),
        .CE(\data_reg[39]_i_1_n_0 ),
        .D(\data_reg[39]_i_2_n_0 ),
        .Q(vu40_data[39]),
        .R(1'b0));
  FDRE \data_reg_reg[3] 
       (.C(clk),
        .CE(\data_reg[7]_i_1_n_0 ),
        .D(\data_reg[3]_i_1_n_0 ),
        .Q(vu40_data[3]),
        .R(1'b0));
  FDRE \data_reg_reg[40] 
       (.C(clk),
        .CE(\data_reg[47]_i_1_n_0 ),
        .D(\data_reg[40]_i_1_n_0 ),
        .Q(data_reg[40]),
        .R(1'b0));
  FDRE \data_reg_reg[41] 
       (.C(clk),
        .CE(\data_reg[47]_i_1_n_0 ),
        .D(\data_reg[41]_i_1_n_0 ),
        .Q(data_reg[41]),
        .R(1'b0));
  FDRE \data_reg_reg[42] 
       (.C(clk),
        .CE(\data_reg[47]_i_1_n_0 ),
        .D(\data_reg[42]_i_1_n_0 ),
        .Q(data_reg[42]),
        .R(1'b0));
  FDRE \data_reg_reg[43] 
       (.C(clk),
        .CE(\data_reg[47]_i_1_n_0 ),
        .D(\data_reg[43]_i_1_n_0 ),
        .Q(data_reg[43]),
        .R(1'b0));
  FDRE \data_reg_reg[44] 
       (.C(clk),
        .CE(\data_reg[47]_i_1_n_0 ),
        .D(\data_reg[44]_i_1_n_0 ),
        .Q(data_reg[44]),
        .R(1'b0));
  FDRE \data_reg_reg[45] 
       (.C(clk),
        .CE(\data_reg[47]_i_1_n_0 ),
        .D(\data_reg[45]_i_1_n_0 ),
        .Q(data_reg[45]),
        .R(1'b0));
  FDRE \data_reg_reg[46] 
       (.C(clk),
        .CE(\data_reg[47]_i_1_n_0 ),
        .D(\data_reg[46]_i_1_n_0 ),
        .Q(data_reg[46]),
        .R(1'b0));
  FDRE \data_reg_reg[47] 
       (.C(clk),
        .CE(\data_reg[47]_i_1_n_0 ),
        .D(\data_reg[47]_i_2_n_0 ),
        .Q(data_reg[47]),
        .R(1'b0));
  FDRE \data_reg_reg[48] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[48]_i_1_n_0 ),
        .Q(data_reg[48]),
        .R(1'b0));
  FDRE \data_reg_reg[49] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[49]_i_1_n_0 ),
        .Q(data_reg[49]),
        .R(1'b0));
  FDRE \data_reg_reg[4] 
       (.C(clk),
        .CE(\data_reg[7]_i_1_n_0 ),
        .D(\data_reg[4]_i_1_n_0 ),
        .Q(vu40_data[4]),
        .R(1'b0));
  FDRE \data_reg_reg[50] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[50]_i_1_n_0 ),
        .Q(data_reg[50]),
        .R(1'b0));
  FDRE \data_reg_reg[51] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[51]_i_1_n_0 ),
        .Q(data_reg[51]),
        .R(1'b0));
  FDRE \data_reg_reg[52] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[52]_i_1_n_0 ),
        .Q(data_reg[52]),
        .R(1'b0));
  FDRE \data_reg_reg[53] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[53]_i_1_n_0 ),
        .Q(data_reg[53]),
        .R(1'b0));
  FDRE \data_reg_reg[54] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[54]_i_1_n_0 ),
        .Q(data_reg[54]),
        .R(1'b0));
  FDRE \data_reg_reg[55] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[55]_i_1_n_0 ),
        .Q(data_reg[55]),
        .R(1'b0));
  FDRE \data_reg_reg[56] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[56]_i_1_n_0 ),
        .Q(data_reg[56]),
        .R(1'b0));
  FDRE \data_reg_reg[57] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[57]_i_1_n_0 ),
        .Q(data_reg[57]),
        .R(1'b0));
  FDRE \data_reg_reg[58] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[58]_i_1_n_0 ),
        .Q(data_reg[58]),
        .R(1'b0));
  FDRE \data_reg_reg[59] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[59]_i_1_n_0 ),
        .Q(data_reg[59]),
        .R(1'b0));
  FDRE \data_reg_reg[5] 
       (.C(clk),
        .CE(\data_reg[7]_i_1_n_0 ),
        .D(\data_reg[5]_i_1_n_0 ),
        .Q(vu40_data[5]),
        .R(1'b0));
  FDRE \data_reg_reg[60] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[60]_i_1_n_0 ),
        .Q(data_reg[60]),
        .R(1'b0));
  FDRE \data_reg_reg[61] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[61]_i_1_n_0 ),
        .Q(data_reg[61]),
        .R(1'b0));
  FDRE \data_reg_reg[62] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[62]_i_1_n_0 ),
        .Q(data_reg[62]),
        .R(1'b0));
  FDRE \data_reg_reg[63] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[63]_i_1_n_0 ),
        .Q(data_reg[63]),
        .R(1'b0));
  FDRE \data_reg_reg[64] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[64]_i_1_n_0 ),
        .Q(data_reg[64]),
        .R(1'b0));
  FDRE \data_reg_reg[65] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[65]_i_1_n_0 ),
        .Q(data_reg[65]),
        .R(1'b0));
  FDRE \data_reg_reg[66] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[66]_i_1_n_0 ),
        .Q(data_reg[66]),
        .R(1'b0));
  FDRE \data_reg_reg[67] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[67]_i_1_n_0 ),
        .Q(data_reg[67]),
        .R(1'b0));
  FDRE \data_reg_reg[68] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[68]_i_1_n_0 ),
        .Q(data_reg[68]),
        .R(1'b0));
  FDRE \data_reg_reg[69] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[69]_i_1_n_0 ),
        .Q(data_reg[69]),
        .R(1'b0));
  FDRE \data_reg_reg[6] 
       (.C(clk),
        .CE(\data_reg[7]_i_1_n_0 ),
        .D(\data_reg[6]_i_1_n_0 ),
        .Q(vu40_data[6]),
        .R(1'b0));
  FDRE \data_reg_reg[70] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[70]_i_1_n_0 ),
        .Q(data_reg[70]),
        .R(1'b0));
  FDRE \data_reg_reg[71] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[71]_i_1_n_0 ),
        .Q(data_reg[71]),
        .R(1'b0));
  FDRE \data_reg_reg[72] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[72]_i_1_n_0 ),
        .Q(data_reg[72]),
        .R(1'b0));
  FDRE \data_reg_reg[73] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[73]_i_1_n_0 ),
        .Q(data_reg[73]),
        .R(1'b0));
  FDRE \data_reg_reg[74] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[74]_i_1_n_0 ),
        .Q(data_reg[74]),
        .R(1'b0));
  FDRE \data_reg_reg[75] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[75]_i_1_n_0 ),
        .Q(data_reg[75]),
        .R(1'b0));
  FDRE \data_reg_reg[76] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[76]_i_1_n_0 ),
        .Q(data_reg[76]),
        .R(1'b0));
  FDRE \data_reg_reg[77] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[77]_i_1_n_0 ),
        .Q(data_reg[77]),
        .R(1'b0));
  FDRE \data_reg_reg[78] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[78]_i_1_n_0 ),
        .Q(data_reg[78]),
        .R(1'b0));
  FDRE \data_reg_reg[79] 
       (.C(clk),
        .CE(\cnt[3]_i_2_n_0 ),
        .D(\data_reg[79]_i_1_n_0 ),
        .Q(data_reg[79]),
        .R(1'b0));
  FDRE \data_reg_reg[7] 
       (.C(clk),
        .CE(\data_reg[7]_i_1_n_0 ),
        .D(\data_reg[7]_i_2_n_0 ),
        .Q(vu40_data[7]),
        .R(1'b0));
  FDRE \data_reg_reg[8] 
       (.C(clk),
        .CE(\data_reg[15]_i_1_n_0 ),
        .D(\data_reg[8]_i_1_n_0 ),
        .Q(vu40_data[8]),
        .R(1'b0));
  FDRE \data_reg_reg[9] 
       (.C(clk),
        .CE(\data_reg[15]_i_1_n_0 ),
        .D(\data_reg[9]_i_1_n_0 ),
        .Q(vu40_data[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000005040F000)) 
    has_last_i_2
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg[0]_2 ),
        .I3(out_valid_i_reg),
        .I4(\cnt_reg_n_0_[2] ),
        .I5(\cnt_reg_n_0_[3] ),
        .O(has_last_reg_1));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001F00)) 
    has_last_i_3
       (.I0(\cnt_reg_n_0_[2] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg[0]_2 ),
        .I4(has_last_reg_2),
        .I5(out_sof_reg_0),
        .O(has_last_reg_0));
  FDRE has_last_reg
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[16] ),
        .Q(out_valid_i_reg),
        .R(Q));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \out_data[0]_i_1__0 
       (.I0(vu40_data[34]),
        .I1(vu40_data[32]),
        .I2(vu40_data[38]),
        .I3(\cnt_reg[1]_0 ),
        .I4(\cnt_reg[0]_1 ),
        .I5(vu40_data[36]),
        .O(\out_data_reg[0] ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \out_data[1]_i_1__0 
       (.I0(vu40_data[35]),
        .I1(vu40_data[33]),
        .I2(vu40_data[39]),
        .I3(\cnt_reg[1]_0 ),
        .I4(\cnt_reg[0]_1 ),
        .I5(vu40_data[37]),
        .O(\out_data_reg[1] ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \out_data[2]_i_1__0 
       (.I0(vu40_data[8]),
        .I1(vu40_data[0]),
        .I2(vu40_data[24]),
        .I3(\cnt_reg[1]_0 ),
        .I4(\cnt_reg[0]_1 ),
        .I5(vu40_data[16]),
        .O(\out_data_reg[2] ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \out_data[3]_i_1__0 
       (.I0(vu40_data[9]),
        .I1(vu40_data[1]),
        .I2(vu40_data[25]),
        .I3(\cnt_reg[1]_0 ),
        .I4(\cnt_reg[0]_1 ),
        .I5(vu40_data[17]),
        .O(\out_data_reg[3] ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \out_data[4]_i_1__0 
       (.I0(vu40_data[10]),
        .I1(vu40_data[2]),
        .I2(vu40_data[26]),
        .I3(\cnt_reg[1]_0 ),
        .I4(\cnt_reg[0]_1 ),
        .I5(vu40_data[18]),
        .O(\out_data_reg[4] ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \out_data[5]_i_1__0 
       (.I0(vu40_data[11]),
        .I1(vu40_data[3]),
        .I2(vu40_data[27]),
        .I3(\cnt_reg[1]_0 ),
        .I4(\cnt_reg[0]_1 ),
        .I5(vu40_data[19]),
        .O(\out_data_reg[5] ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \out_data[6]_i_1__0 
       (.I0(vu40_data[12]),
        .I1(vu40_data[4]),
        .I2(vu40_data[28]),
        .I3(\cnt_reg[1]_0 ),
        .I4(\cnt_reg[0]_1 ),
        .I5(vu40_data[20]),
        .O(\out_data_reg[6] ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \out_data[7]_i_1__0 
       (.I0(vu40_data[13]),
        .I1(vu40_data[5]),
        .I2(vu40_data[29]),
        .I3(\cnt_reg[1]_0 ),
        .I4(\cnt_reg[0]_1 ),
        .I5(vu40_data[21]),
        .O(\out_data_reg[7] ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \out_data[8]_i_1 
       (.I0(vu40_data[14]),
        .I1(vu40_data[6]),
        .I2(vu40_data[30]),
        .I3(\cnt_reg[1]_0 ),
        .I4(\cnt_reg[0]_1 ),
        .I5(vu40_data[22]),
        .O(\out_data_reg[8] ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \out_data[9]_i_1 
       (.I0(vu40_data[15]),
        .I1(vu40_data[7]),
        .I2(vu40_data[31]),
        .I3(\cnt_reg[1]_0 ),
        .I4(\cnt_reg[0]_1 ),
        .I5(vu40_data[23]),
        .O(\out_data_reg[9] ));
  LUT6 #(
    .INIT(64'h020A000000000000)) 
    out_last_i_1
       (.I0(out_valid_i_reg),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[3] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt_reg[1]_0 ),
        .I5(\cnt_reg[0]_1 ),
        .O(out_last0));
  LUT4 #(
    .INIT(16'hE000)) 
    out_sof_i_2
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(out_valid_i_reg),
        .I2(\cnt_reg[0]_1 ),
        .I3(\cnt_reg[1]_0 ),
        .O(out_sof_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h80808000)) 
    out_sof_i_3
       (.I0(\cnt_reg[0]_1 ),
        .I1(\cnt_reg[1]_0 ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[0] ),
        .O(out_sof_reg_1));
  LUT6 #(
    .INIT(64'h000004440000444C)) 
    out_sof_i_4
       (.I0(out_valid_i_reg),
        .I1(pause_reg),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(\cnt_reg_n_0_[2] ),
        .O(out_sof_reg_0));
  FDRE out_sof_reg
       (.C(clk),
        .CE(1'b1),
        .D(vid_sof_reg),
        .Q(vu40_sof),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    out_valid_i_i_1
       (.I0(out_valid_i_reg),
        .I1(\cnt_reg_n_0_[3] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(\cnt_reg_n_0_[0] ),
        .I4(\cnt_reg_n_0_[1] ),
        .O(vu40_valid));
  LUT6 #(
    .INIT(64'h000023330022333F)) 
    pause_i_3
       (.I0(\cnt_reg[0]_2 ),
        .I1(out_valid_i_reg),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .I4(\cnt_reg_n_0_[3] ),
        .I5(\cnt_reg_n_0_[2] ),
        .O(vin_ready_10b));
endmodule

(* ORIG_REF_NAME = "vid_32b_to_8b" *) 
module TySOM_1_7Z030_mipi_csi_0_vid_32b_to_8b
   (out_valid,
    out_last,
    out_sof,
    \cnt_reg[16] ,
    \cnt_reg[1]_0 ,
    \cnt_reg[1]_1 ,
    \vum_data_reg[1] ,
    \vum_data_reg[0] ,
    \vum_data_reg[7] ,
    \vum_data_reg[6] ,
    \vum_data_reg[5] ,
    \vum_data_reg[4] ,
    \vum_data_reg[3] ,
    \vum_data_reg[2] ,
    pause_reg,
    clk,
    \cnt_reg[16]_0 ,
    DOP,
    vin_sof,
    Q,
    mux);
  output out_valid;
  output out_last;
  output out_sof;
  output \cnt_reg[16] ;
  output \cnt_reg[1]_0 ;
  output \cnt_reg[1]_1 ;
  output \vum_data_reg[1] ;
  output \vum_data_reg[0] ;
  output \vum_data_reg[7] ;
  output \vum_data_reg[6] ;
  output \vum_data_reg[5] ;
  output \vum_data_reg[4] ;
  output \vum_data_reg[3] ;
  output \vum_data_reg[2] ;
  input pause_reg;
  input clk;
  input [0:0]\cnt_reg[16]_0 ;
  input [0:0]DOP;
  input vin_sof;
  input [0:0]Q;
  input [7:0]mux;

  wire [0:0]DOP;
  wire [0:0]Q;
  wire clk;
  wire \cnt[0]_i_1__2_n_0 ;
  wire \cnt[1]_i_1__3_n_0 ;
  wire \cnt_reg[16] ;
  wire [0:0]\cnt_reg[16]_0 ;
  wire \cnt_reg[1]_0 ;
  wire \cnt_reg[1]_1 ;
  wire [7:0]mux;
  wire out_last;
  wire out_last0;
  wire out_sof;
  wire out_sof0;
  wire out_valid;
  wire pause_reg;
  wire vin_sof;
  wire \vum_data_reg[0] ;
  wire \vum_data_reg[1] ;
  wire \vum_data_reg[2] ;
  wire \vum_data_reg[3] ;
  wire \vum_data_reg[4] ;
  wire \vum_data_reg[5] ;
  wire \vum_data_reg[6] ;
  wire \vum_data_reg[7] ;

  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bl.fifo_36_inst_bl.fifo_36_bl_i_8 
       (.I0(\cnt_reg[1]_0 ),
        .I1(\cnt_reg[1]_1 ),
        .O(\cnt_reg[16] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__2 
       (.I0(\cnt_reg[1]_0 ),
        .O(\cnt[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1__3 
       (.I0(\cnt_reg[1]_0 ),
        .I1(\cnt_reg[1]_1 ),
        .O(\cnt[1]_i_1__3_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt[0]_i_1__2_n_0 ),
        .Q(\cnt_reg[1]_0 ),
        .R(Q));
  FDRE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt[1]_i_1__3_n_0 ),
        .Q(\cnt_reg[1]_1 ),
        .R(Q));
  FDRE \out_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(mux[0]),
        .Q(\vum_data_reg[2] ),
        .R(1'b0));
  FDRE \out_data_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(mux[1]),
        .Q(\vum_data_reg[3] ),
        .R(1'b0));
  FDRE \out_data_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(mux[2]),
        .Q(\vum_data_reg[4] ),
        .R(1'b0));
  FDRE \out_data_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(mux[3]),
        .Q(\vum_data_reg[5] ),
        .R(1'b0));
  FDRE \out_data_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(mux[4]),
        .Q(\vum_data_reg[6] ),
        .R(1'b0));
  FDRE \out_data_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(mux[5]),
        .Q(\vum_data_reg[7] ),
        .R(1'b0));
  FDRE \out_data_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(mux[6]),
        .Q(\vum_data_reg[0] ),
        .R(1'b0));
  FDRE \out_data_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(mux[7]),
        .Q(\vum_data_reg[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    out_last_i_1__0
       (.I0(\cnt_reg[1]_1 ),
        .I1(\cnt_reg[1]_0 ),
        .I2(\cnt_reg[16]_0 ),
        .I3(DOP),
        .O(out_last0));
  FDRE out_last_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_last0),
        .Q(out_last),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    out_sof_i_1__0
       (.I0(vin_sof),
        .I1(\cnt_reg[1]_0 ),
        .I2(\cnt_reg[1]_1 ),
        .O(out_sof0));
  FDRE out_sof_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_sof0),
        .Q(out_sof),
        .R(1'b0));
  FDRE out_valid_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(pause_reg),
        .Q(out_valid),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "vid_40b_to_10b" *) 
module TySOM_1_7Z030_mipi_csi_0_vid_40b_to_10b
   (\data_reg_reg[7] ,
    \cnt_reg[0]_0 ,
    \cnt_reg[1]_0 ,
    \cnt_reg[0]_1 ,
    vum_last_reg,
    vum_sof_reg,
    vum_valid_reg,
    D,
    Q,
    vu40_valid,
    clk,
    out_last0,
    has_last,
    \reg_reg[23] ,
    out_last,
    out_sof,
    out_valid,
    vu40_sof,
    \out_data_reg[6]_0 ,
    \out_data_reg[7]_0 ,
    \out_data_reg[0]_0 ,
    \out_data_reg[1]_0 ,
    \out_data_reg[2]_0 ,
    \out_data_reg[3]_0 ,
    \out_data_reg[4]_0 ,
    \out_data_reg[5]_0 ,
    \rst_cnt_reg[3] ,
    \data_reg_reg[15] ,
    \data_reg_reg[14] ,
    \data_reg_reg[13] ,
    \data_reg_reg[12] ,
    \data_reg_reg[11] ,
    \data_reg_reg[10] ,
    \data_reg_reg[9] ,
    \data_reg_reg[8] ,
    \data_reg_reg[35] ,
    \data_reg_reg[34] );
  output \data_reg_reg[7] ;
  output \cnt_reg[0]_0 ;
  output \cnt_reg[1]_0 ;
  output \cnt_reg[0]_1 ;
  output vum_last_reg;
  output vum_sof_reg;
  output vum_valid_reg;
  output [9:0]D;
  input [0:0]Q;
  input vu40_valid;
  input clk;
  input out_last0;
  input has_last;
  input [0:0]\reg_reg[23] ;
  input out_last;
  input out_sof;
  input out_valid;
  input vu40_sof;
  input \out_data_reg[6]_0 ;
  input \out_data_reg[7]_0 ;
  input \out_data_reg[0]_0 ;
  input \out_data_reg[1]_0 ;
  input \out_data_reg[2]_0 ;
  input \out_data_reg[3]_0 ;
  input \out_data_reg[4]_0 ;
  input \out_data_reg[5]_0 ;
  input \rst_cnt_reg[3] ;
  input \data_reg_reg[15] ;
  input \data_reg_reg[14] ;
  input \data_reg_reg[13] ;
  input \data_reg_reg[12] ;
  input \data_reg_reg[11] ;
  input \data_reg_reg[10] ;
  input \data_reg_reg[9] ;
  input \data_reg_reg[8] ;
  input \data_reg_reg[35] ;
  input \data_reg_reg[34] ;

  wire [9:0]D;
  wire [0:0]Q;
  wire clk;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt_reg[0]_0 ;
  wire \cnt_reg[0]_1 ;
  wire \cnt_reg[1]_0 ;
  wire \data_reg_reg[10] ;
  wire \data_reg_reg[11] ;
  wire \data_reg_reg[12] ;
  wire \data_reg_reg[13] ;
  wire \data_reg_reg[14] ;
  wire \data_reg_reg[15] ;
  wire \data_reg_reg[34] ;
  wire \data_reg_reg[35] ;
  wire \data_reg_reg[7] ;
  wire \data_reg_reg[8] ;
  wire \data_reg_reg[9] ;
  wire has_last;
  wire \out_data_reg[0]_0 ;
  wire \out_data_reg[1]_0 ;
  wire \out_data_reg[2]_0 ;
  wire \out_data_reg[3]_0 ;
  wire \out_data_reg[4]_0 ;
  wire \out_data_reg[5]_0 ;
  wire \out_data_reg[6]_0 ;
  wire \out_data_reg[7]_0 ;
  wire \out_data_reg_n_0_[0] ;
  wire \out_data_reg_n_0_[1] ;
  wire \out_data_reg_n_0_[2] ;
  wire \out_data_reg_n_0_[3] ;
  wire \out_data_reg_n_0_[4] ;
  wire \out_data_reg_n_0_[5] ;
  wire \out_data_reg_n_0_[6] ;
  wire \out_data_reg_n_0_[7] ;
  wire \out_data_reg_n_0_[8] ;
  wire \out_data_reg_n_0_[9] ;
  wire out_last;
  wire out_last0;
  wire out_sof;
  wire out_sof0;
  wire out_valid;
  wire [0:0]\reg_reg[23] ;
  wire \rst_cnt_reg[3] ;
  wire vu10_last;
  wire vu10_sof;
  wire vu10_valid;
  wire vu40_sof;
  wire vu40_valid;
  wire vum_last_reg;
  wire vum_sof_reg;
  wire vum_valid_reg;

  LUT2 #(
    .INIT(4'h1)) 
    \cnt[0]_i_1 
       (.I0(\cnt_reg[0]_0 ),
        .I1(\rst_cnt_reg[3] ),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \cnt[1]_i_1 
       (.I0(\cnt_reg[1]_0 ),
        .I1(\cnt_reg[0]_0 ),
        .I2(\rst_cnt_reg[3] ),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt[3]_i_4 
       (.I0(\cnt_reg[1]_0 ),
        .I1(\cnt_reg[0]_0 ),
        .I2(has_last),
        .O(\cnt_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[3]_i_8 
       (.I0(\cnt_reg[0]_0 ),
        .I1(\cnt_reg[1]_0 ),
        .O(\data_reg_reg[7] ));
  FDRE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(\cnt_reg[0]_0 ),
        .R(1'b0));
  FDRE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(\cnt_reg[1]_0 ),
        .R(1'b0));
  FDRE \out_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg_reg[34] ),
        .Q(\out_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \out_data_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg_reg[35] ),
        .Q(\out_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \out_data_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg_reg[8] ),
        .Q(\out_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \out_data_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg_reg[9] ),
        .Q(\out_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \out_data_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg_reg[10] ),
        .Q(\out_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \out_data_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg_reg[11] ),
        .Q(\out_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \out_data_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg_reg[12] ),
        .Q(\out_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \out_data_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg_reg[13] ),
        .Q(\out_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \out_data_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg_reg[14] ),
        .Q(\out_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \out_data_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_reg_reg[15] ),
        .Q(\out_data_reg_n_0_[9] ),
        .R(1'b0));
  FDRE out_last_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_last0),
        .Q(vu10_last),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h02)) 
    out_sof_i_1__0__0
       (.I0(vu40_sof),
        .I1(\cnt_reg[0]_0 ),
        .I2(\cnt_reg[1]_0 ),
        .O(out_sof0));
  FDRE out_sof_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_sof0),
        .Q(vu10_sof),
        .R(1'b0));
  FDRE out_valid_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(vu40_valid),
        .Q(vu10_valid),
        .R(Q));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \vum_data[0]_i_1 
       (.I0(\out_data_reg_n_0_[0] ),
        .I1(\reg_reg[23] ),
        .I2(\out_data_reg[6]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \vum_data[1]_i_1 
       (.I0(\out_data_reg_n_0_[1] ),
        .I1(\reg_reg[23] ),
        .I2(\out_data_reg[7]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \vum_data[2]_i_1 
       (.I0(\out_data_reg_n_0_[2] ),
        .I1(\reg_reg[23] ),
        .I2(\out_data_reg[0]_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \vum_data[3]_i_1 
       (.I0(\out_data_reg_n_0_[3] ),
        .I1(\reg_reg[23] ),
        .I2(\out_data_reg[1]_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \vum_data[4]_i_1 
       (.I0(\out_data_reg_n_0_[4] ),
        .I1(\reg_reg[23] ),
        .I2(\out_data_reg[2]_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \vum_data[5]_i_1 
       (.I0(\out_data_reg_n_0_[5] ),
        .I1(\reg_reg[23] ),
        .I2(\out_data_reg[3]_0 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \vum_data[6]_i_1 
       (.I0(\out_data_reg_n_0_[6] ),
        .I1(\reg_reg[23] ),
        .I2(\out_data_reg[4]_0 ),
        .O(D[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \vum_data[7]_i_1 
       (.I0(\out_data_reg_n_0_[7] ),
        .I1(\reg_reg[23] ),
        .I2(\out_data_reg[5]_0 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \vum_data[8]_i_1 
       (.I0(\out_data_reg_n_0_[8] ),
        .I1(\reg_reg[23] ),
        .I2(\out_data_reg[6]_0 ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \vum_data[9]_i_1 
       (.I0(\out_data_reg_n_0_[9] ),
        .I1(\reg_reg[23] ),
        .I2(\out_data_reg[7]_0 ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    vum_last_i_1
       (.I0(vu10_last),
        .I1(\reg_reg[23] ),
        .I2(out_last),
        .O(vum_last_reg));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    vum_sof_i_1
       (.I0(vu10_sof),
        .I1(\reg_reg[23] ),
        .I2(out_sof),
        .O(vum_sof_reg));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    vum_valid_i_1
       (.I0(vu10_valid),
        .I1(\reg_reg[23] ),
        .I2(out_valid),
        .O(vum_valid_reg));
endmodule

(* ORIG_REF_NAME = "vid_crop" *) 
module TySOM_1_7Z030_mipi_csi_0_vid_crop
   (vcrop_last,
    vcrop_valid,
    vcrop_sof,
    out,
    \cnt_line_1_reg[11]_0 ,
    D,
    q,
    out_valid_i0,
    \cnt_reg[1] ,
    E,
    vfm_valid,
    clk,
    vfm_last,
    vfm_sof,
    DI,
    S,
    \reg_reg[10] ,
    \reg_reg[10]_0 ,
    \reg_reg[6] ,
    \reg_reg[6]_0 ,
    \reg_reg[10]_1 ,
    \reg_reg[10]_2 ,
    Q,
    \reg_reg[11] ,
    \reg_reg[11]_0 ,
    \reg_reg[11]_1 ,
    \reg_reg[1] ,
    \cnt_reg[0] ,
    p_3_in,
    \vfm_data_reg[31] );
  output vcrop_last;
  output vcrop_valid;
  output vcrop_sof;
  output [11:0]out;
  output [11:0]\cnt_line_1_reg[11]_0 ;
  output [23:0]D;
  output [7:0]q;
  output out_valid_i0;
  output \cnt_reg[1] ;
  output [0:0]E;
  input vfm_valid;
  input clk;
  input vfm_last;
  input vfm_sof;
  input [3:0]DI;
  input [3:0]S;
  input [1:0]\reg_reg[10] ;
  input [1:0]\reg_reg[10]_0 ;
  input [3:0]\reg_reg[6] ;
  input [3:0]\reg_reg[6]_0 ;
  input [1:0]\reg_reg[10]_1 ;
  input [1:0]\reg_reg[10]_2 ;
  input [0:0]Q;
  input [11:0]\reg_reg[11] ;
  input [11:0]\reg_reg[11]_0 ;
  input [11:0]\reg_reg[11]_1 ;
  input [1:0]\reg_reg[1] ;
  input \cnt_reg[0] ;
  input p_3_in;
  input [31:0]\vfm_data_reg[31] ;

  wire [23:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [0:0]Q;
  wire [3:0]S;
  wire clk;
  wire cnt_col_1;
  wire \cnt_col_1[0]_i_1_n_0 ;
  wire \cnt_col_1[0]_i_3_n_0 ;
  wire \cnt_col_1[0]_i_4_n_0 ;
  wire \cnt_col_1[0]_i_5_n_0 ;
  wire \cnt_col_1[0]_i_6_n_0 ;
  wire \cnt_col_1[4]_i_2_n_0 ;
  wire \cnt_col_1[4]_i_3_n_0 ;
  wire \cnt_col_1[4]_i_4_n_0 ;
  wire \cnt_col_1[4]_i_5_n_0 ;
  wire \cnt_col_1[8]_i_2_n_0 ;
  wire \cnt_col_1[8]_i_3_n_0 ;
  wire \cnt_col_1[8]_i_4_n_0 ;
  wire \cnt_col_1[8]_i_5_n_0 ;
  wire \cnt_col_1_reg[0]_i_2_n_0 ;
  wire \cnt_col_1_reg[0]_i_2_n_1 ;
  wire \cnt_col_1_reg[0]_i_2_n_2 ;
  wire \cnt_col_1_reg[0]_i_2_n_3 ;
  wire \cnt_col_1_reg[0]_i_2_n_4 ;
  wire \cnt_col_1_reg[0]_i_2_n_5 ;
  wire \cnt_col_1_reg[0]_i_2_n_6 ;
  wire \cnt_col_1_reg[0]_i_2_n_7 ;
  wire \cnt_col_1_reg[4]_i_1_n_0 ;
  wire \cnt_col_1_reg[4]_i_1_n_1 ;
  wire \cnt_col_1_reg[4]_i_1_n_2 ;
  wire \cnt_col_1_reg[4]_i_1_n_3 ;
  wire \cnt_col_1_reg[4]_i_1_n_4 ;
  wire \cnt_col_1_reg[4]_i_1_n_5 ;
  wire \cnt_col_1_reg[4]_i_1_n_6 ;
  wire \cnt_col_1_reg[4]_i_1_n_7 ;
  wire \cnt_col_1_reg[8]_i_1_n_1 ;
  wire \cnt_col_1_reg[8]_i_1_n_2 ;
  wire \cnt_col_1_reg[8]_i_1_n_3 ;
  wire \cnt_col_1_reg[8]_i_1_n_4 ;
  wire \cnt_col_1_reg[8]_i_1_n_5 ;
  wire \cnt_col_1_reg[8]_i_1_n_6 ;
  wire \cnt_col_1_reg[8]_i_1_n_7 ;
  wire \cnt_line_1[0]_i_1_n_0 ;
  wire \cnt_line_1[0]_i_4_n_0 ;
  wire \cnt_line_1[0]_i_5_n_0 ;
  wire \cnt_line_1[0]_i_6_n_0 ;
  wire \cnt_line_1[0]_i_7_n_0 ;
  wire \cnt_line_1[4]_i_2_n_0 ;
  wire \cnt_line_1[4]_i_3_n_0 ;
  wire \cnt_line_1[4]_i_4_n_0 ;
  wire \cnt_line_1[4]_i_5_n_0 ;
  wire \cnt_line_1[8]_i_2_n_0 ;
  wire \cnt_line_1[8]_i_3_n_0 ;
  wire \cnt_line_1[8]_i_4_n_0 ;
  wire \cnt_line_1[8]_i_5_n_0 ;
  wire \cnt_line_1_reg[0]_i_3_n_0 ;
  wire \cnt_line_1_reg[0]_i_3_n_1 ;
  wire \cnt_line_1_reg[0]_i_3_n_2 ;
  wire \cnt_line_1_reg[0]_i_3_n_3 ;
  wire \cnt_line_1_reg[0]_i_3_n_4 ;
  wire \cnt_line_1_reg[0]_i_3_n_5 ;
  wire \cnt_line_1_reg[0]_i_3_n_6 ;
  wire \cnt_line_1_reg[0]_i_3_n_7 ;
  wire [11:0]\cnt_line_1_reg[11]_0 ;
  wire \cnt_line_1_reg[4]_i_1_n_0 ;
  wire \cnt_line_1_reg[4]_i_1_n_1 ;
  wire \cnt_line_1_reg[4]_i_1_n_2 ;
  wire \cnt_line_1_reg[4]_i_1_n_3 ;
  wire \cnt_line_1_reg[4]_i_1_n_4 ;
  wire \cnt_line_1_reg[4]_i_1_n_5 ;
  wire \cnt_line_1_reg[4]_i_1_n_6 ;
  wire \cnt_line_1_reg[4]_i_1_n_7 ;
  wire \cnt_line_1_reg[8]_i_1_n_1 ;
  wire \cnt_line_1_reg[8]_i_1_n_2 ;
  wire \cnt_line_1_reg[8]_i_1_n_3 ;
  wire \cnt_line_1_reg[8]_i_1_n_4 ;
  wire \cnt_line_1_reg[8]_i_1_n_5 ;
  wire \cnt_line_1_reg[8]_i_1_n_6 ;
  wire \cnt_line_1_reg[8]_i_1_n_7 ;
  wire \cnt_reg[0] ;
  wire \cnt_reg[1] ;
  wire eqOp_carry_i_1_n_0;
  wire eqOp_carry_i_2_n_0;
  wire eqOp_carry_i_3_n_0;
  wire eqOp_carry_i_4_n_0;
  wire eqOp_carry_n_0;
  wire eqOp_carry_n_1;
  wire eqOp_carry_n_2;
  wire eqOp_carry_n_3;
  wire geqOp_carry__0_i_1_n_0;
  wire geqOp_carry__0_i_2_n_0;
  wire geqOp_carry__0_i_3_n_0;
  wire geqOp_carry__0_i_4_n_0;
  wire geqOp_carry__0_n_2;
  wire geqOp_carry__0_n_3;
  wire geqOp_carry_i_1_n_0;
  wire geqOp_carry_i_2_n_0;
  wire geqOp_carry_i_3_n_0;
  wire geqOp_carry_i_4_n_0;
  wire geqOp_carry_i_5_n_0;
  wire geqOp_carry_i_6_n_0;
  wire geqOp_carry_i_7_n_0;
  wire geqOp_carry_i_8_n_0;
  wire geqOp_carry_n_0;
  wire geqOp_carry_n_1;
  wire geqOp_carry_n_2;
  wire geqOp_carry_n_3;
  wire \geqOp_inferred__0/i__carry__0_n_2 ;
  wire \geqOp_inferred__0/i__carry__0_n_3 ;
  wire \geqOp_inferred__0/i__carry_n_0 ;
  wire \geqOp_inferred__0/i__carry_n_1 ;
  wire \geqOp_inferred__0/i__carry_n_2 ;
  wire \geqOp_inferred__0/i__carry_n_3 ;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_3__2_n_0;
  wire i__carry__0_i_4__2_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_8__0_n_0;
  wire last_1;
  wire last_2;
  wire last_30;
  wire leqOp_carry__0_n_2;
  wire leqOp_carry__0_n_3;
  wire leqOp_carry_n_0;
  wire leqOp_carry_n_1;
  wire leqOp_carry_n_2;
  wire leqOp_carry_n_3;
  wire \leqOp_inferred__0/i__carry__0_n_2 ;
  wire \leqOp_inferred__0/i__carry__0_n_3 ;
  wire \leqOp_inferred__0/i__carry_n_0 ;
  wire \leqOp_inferred__0/i__carry_n_1 ;
  wire \leqOp_inferred__0/i__carry_n_2 ;
  wire \leqOp_inferred__0/i__carry_n_3 ;
  wire [11:0]out;
  wire out_valid_i0;
  wire p_1_in;
  wire p_3_in;
  wire [7:0]q;
  wire [1:0]\reg_reg[10] ;
  wire [1:0]\reg_reg[10]_0 ;
  wire [1:0]\reg_reg[10]_1 ;
  wire [1:0]\reg_reg[10]_2 ;
  wire [11:0]\reg_reg[11] ;
  wire [11:0]\reg_reg[11]_0 ;
  wire [11:0]\reg_reg[11]_1 ;
  wire [1:0]\reg_reg[1] ;
  wire [3:0]\reg_reg[6] ;
  wire [3:0]\reg_reg[6]_0 ;
  wire sof_1;
  wire sof_2;
  wire sof_3_i_1_n_0;
  wire valid_1;
  wire valid_2;
  wire vcrop_last;
  wire vcrop_sof;
  wire vcrop_valid;
  wire [31:0]\vfm_data_reg[31] ;
  wire vfm_last;
  wire vfm_sof;
  wire vfm_valid;
  wire win_ce_last_2;
  wire win_ce_ok_2;
  wire win_cs_ok_2;
  wire win_le_ok_2;
  wire win_ls_ok_2;
  wire [3:3]\NLW_cnt_col_1_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_line_1_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_eqOp_carry_O_UNCONNECTED;
  wire [3:0]NLW_geqOp_carry_O_UNCONNECTED;
  wire [3:2]NLW_geqOp_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_geqOp_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_geqOp_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]NLW_leqOp_carry_O_UNCONNECTED;
  wire [3:2]NLW_leqOp_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_leqOp_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_leqOp_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_leqOp_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_leqOp_inferred__0/i__carry__0_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    \cnt[1]_i_2__0 
       (.I0(Q),
        .I1(vcrop_last),
        .I2(\reg_reg[1] [1]),
        .I3(vcrop_valid),
        .O(\cnt_reg[1] ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \cnt_col_1[0]_i_1 
       (.I0(Q),
        .I1(valid_1),
        .I2(last_1),
        .I3(vfm_sof),
        .I4(vfm_valid),
        .O(\cnt_col_1[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_col_1[0]_i_3 
       (.I0(out[3]),
        .O(\cnt_col_1[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_col_1[0]_i_4 
       (.I0(out[2]),
        .O(\cnt_col_1[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_col_1[0]_i_5 
       (.I0(out[1]),
        .O(\cnt_col_1[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_col_1[0]_i_6 
       (.I0(out[0]),
        .O(\cnt_col_1[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_col_1[4]_i_2 
       (.I0(out[7]),
        .O(\cnt_col_1[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_col_1[4]_i_3 
       (.I0(out[6]),
        .O(\cnt_col_1[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_col_1[4]_i_4 
       (.I0(out[5]),
        .O(\cnt_col_1[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_col_1[4]_i_5 
       (.I0(out[4]),
        .O(\cnt_col_1[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_col_1[8]_i_2 
       (.I0(out[11]),
        .O(\cnt_col_1[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_col_1[8]_i_3 
       (.I0(out[10]),
        .O(\cnt_col_1[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_col_1[8]_i_4 
       (.I0(out[9]),
        .O(\cnt_col_1[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_col_1[8]_i_5 
       (.I0(out[8]),
        .O(\cnt_col_1[8]_i_5_n_0 ));
  FDRE \cnt_col_1_reg[0] 
       (.C(clk),
        .CE(valid_1),
        .D(\cnt_col_1_reg[0]_i_2_n_7 ),
        .Q(out[0]),
        .R(\cnt_col_1[0]_i_1_n_0 ));
  CARRY4 \cnt_col_1_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cnt_col_1_reg[0]_i_2_n_0 ,\cnt_col_1_reg[0]_i_2_n_1 ,\cnt_col_1_reg[0]_i_2_n_2 ,\cnt_col_1_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_col_1_reg[0]_i_2_n_4 ,\cnt_col_1_reg[0]_i_2_n_5 ,\cnt_col_1_reg[0]_i_2_n_6 ,\cnt_col_1_reg[0]_i_2_n_7 }),
        .S({\cnt_col_1[0]_i_3_n_0 ,\cnt_col_1[0]_i_4_n_0 ,\cnt_col_1[0]_i_5_n_0 ,\cnt_col_1[0]_i_6_n_0 }));
  FDRE \cnt_col_1_reg[10] 
       (.C(clk),
        .CE(valid_1),
        .D(\cnt_col_1_reg[8]_i_1_n_5 ),
        .Q(out[10]),
        .R(\cnt_col_1[0]_i_1_n_0 ));
  FDRE \cnt_col_1_reg[11] 
       (.C(clk),
        .CE(valid_1),
        .D(\cnt_col_1_reg[8]_i_1_n_4 ),
        .Q(out[11]),
        .R(\cnt_col_1[0]_i_1_n_0 ));
  FDRE \cnt_col_1_reg[1] 
       (.C(clk),
        .CE(valid_1),
        .D(\cnt_col_1_reg[0]_i_2_n_6 ),
        .Q(out[1]),
        .R(\cnt_col_1[0]_i_1_n_0 ));
  FDRE \cnt_col_1_reg[2] 
       (.C(clk),
        .CE(valid_1),
        .D(\cnt_col_1_reg[0]_i_2_n_5 ),
        .Q(out[2]),
        .R(\cnt_col_1[0]_i_1_n_0 ));
  FDRE \cnt_col_1_reg[3] 
       (.C(clk),
        .CE(valid_1),
        .D(\cnt_col_1_reg[0]_i_2_n_4 ),
        .Q(out[3]),
        .R(\cnt_col_1[0]_i_1_n_0 ));
  FDRE \cnt_col_1_reg[4] 
       (.C(clk),
        .CE(valid_1),
        .D(\cnt_col_1_reg[4]_i_1_n_7 ),
        .Q(out[4]),
        .R(\cnt_col_1[0]_i_1_n_0 ));
  CARRY4 \cnt_col_1_reg[4]_i_1 
       (.CI(\cnt_col_1_reg[0]_i_2_n_0 ),
        .CO({\cnt_col_1_reg[4]_i_1_n_0 ,\cnt_col_1_reg[4]_i_1_n_1 ,\cnt_col_1_reg[4]_i_1_n_2 ,\cnt_col_1_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_col_1_reg[4]_i_1_n_4 ,\cnt_col_1_reg[4]_i_1_n_5 ,\cnt_col_1_reg[4]_i_1_n_6 ,\cnt_col_1_reg[4]_i_1_n_7 }),
        .S({\cnt_col_1[4]_i_2_n_0 ,\cnt_col_1[4]_i_3_n_0 ,\cnt_col_1[4]_i_4_n_0 ,\cnt_col_1[4]_i_5_n_0 }));
  FDRE \cnt_col_1_reg[5] 
       (.C(clk),
        .CE(valid_1),
        .D(\cnt_col_1_reg[4]_i_1_n_6 ),
        .Q(out[5]),
        .R(\cnt_col_1[0]_i_1_n_0 ));
  FDRE \cnt_col_1_reg[6] 
       (.C(clk),
        .CE(valid_1),
        .D(\cnt_col_1_reg[4]_i_1_n_5 ),
        .Q(out[6]),
        .R(\cnt_col_1[0]_i_1_n_0 ));
  FDRE \cnt_col_1_reg[7] 
       (.C(clk),
        .CE(valid_1),
        .D(\cnt_col_1_reg[4]_i_1_n_4 ),
        .Q(out[7]),
        .R(\cnt_col_1[0]_i_1_n_0 ));
  FDRE \cnt_col_1_reg[8] 
       (.C(clk),
        .CE(valid_1),
        .D(\cnt_col_1_reg[8]_i_1_n_7 ),
        .Q(out[8]),
        .R(\cnt_col_1[0]_i_1_n_0 ));
  CARRY4 \cnt_col_1_reg[8]_i_1 
       (.CI(\cnt_col_1_reg[4]_i_1_n_0 ),
        .CO({\NLW_cnt_col_1_reg[8]_i_1_CO_UNCONNECTED [3],\cnt_col_1_reg[8]_i_1_n_1 ,\cnt_col_1_reg[8]_i_1_n_2 ,\cnt_col_1_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_col_1_reg[8]_i_1_n_4 ,\cnt_col_1_reg[8]_i_1_n_5 ,\cnt_col_1_reg[8]_i_1_n_6 ,\cnt_col_1_reg[8]_i_1_n_7 }),
        .S({\cnt_col_1[8]_i_2_n_0 ,\cnt_col_1[8]_i_3_n_0 ,\cnt_col_1[8]_i_4_n_0 ,\cnt_col_1[8]_i_5_n_0 }));
  FDRE \cnt_col_1_reg[9] 
       (.C(clk),
        .CE(valid_1),
        .D(\cnt_col_1_reg[8]_i_1_n_6 ),
        .Q(out[9]),
        .R(\cnt_col_1[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \cnt_line_1[0]_i_1 
       (.I0(Q),
        .I1(vfm_valid),
        .I2(vfm_sof),
        .O(\cnt_line_1[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_line_1[0]_i_2 
       (.I0(valid_1),
        .I1(last_1),
        .O(cnt_col_1));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_line_1[0]_i_4 
       (.I0(\cnt_line_1_reg[11]_0 [3]),
        .O(\cnt_line_1[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_line_1[0]_i_5 
       (.I0(\cnt_line_1_reg[11]_0 [2]),
        .O(\cnt_line_1[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_line_1[0]_i_6 
       (.I0(\cnt_line_1_reg[11]_0 [1]),
        .O(\cnt_line_1[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_line_1[0]_i_7 
       (.I0(\cnt_line_1_reg[11]_0 [0]),
        .O(\cnt_line_1[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_line_1[4]_i_2 
       (.I0(\cnt_line_1_reg[11]_0 [7]),
        .O(\cnt_line_1[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_line_1[4]_i_3 
       (.I0(\cnt_line_1_reg[11]_0 [6]),
        .O(\cnt_line_1[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_line_1[4]_i_4 
       (.I0(\cnt_line_1_reg[11]_0 [5]),
        .O(\cnt_line_1[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_line_1[4]_i_5 
       (.I0(\cnt_line_1_reg[11]_0 [4]),
        .O(\cnt_line_1[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_line_1[8]_i_2 
       (.I0(\cnt_line_1_reg[11]_0 [11]),
        .O(\cnt_line_1[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_line_1[8]_i_3 
       (.I0(\cnt_line_1_reg[11]_0 [10]),
        .O(\cnt_line_1[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_line_1[8]_i_4 
       (.I0(\cnt_line_1_reg[11]_0 [9]),
        .O(\cnt_line_1[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_line_1[8]_i_5 
       (.I0(\cnt_line_1_reg[11]_0 [8]),
        .O(\cnt_line_1[8]_i_5_n_0 ));
  FDRE \cnt_line_1_reg[0] 
       (.C(clk),
        .CE(cnt_col_1),
        .D(\cnt_line_1_reg[0]_i_3_n_7 ),
        .Q(\cnt_line_1_reg[11]_0 [0]),
        .R(\cnt_line_1[0]_i_1_n_0 ));
  CARRY4 \cnt_line_1_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\cnt_line_1_reg[0]_i_3_n_0 ,\cnt_line_1_reg[0]_i_3_n_1 ,\cnt_line_1_reg[0]_i_3_n_2 ,\cnt_line_1_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_line_1_reg[0]_i_3_n_4 ,\cnt_line_1_reg[0]_i_3_n_5 ,\cnt_line_1_reg[0]_i_3_n_6 ,\cnt_line_1_reg[0]_i_3_n_7 }),
        .S({\cnt_line_1[0]_i_4_n_0 ,\cnt_line_1[0]_i_5_n_0 ,\cnt_line_1[0]_i_6_n_0 ,\cnt_line_1[0]_i_7_n_0 }));
  FDRE \cnt_line_1_reg[10] 
       (.C(clk),
        .CE(cnt_col_1),
        .D(\cnt_line_1_reg[8]_i_1_n_5 ),
        .Q(\cnt_line_1_reg[11]_0 [10]),
        .R(\cnt_line_1[0]_i_1_n_0 ));
  FDRE \cnt_line_1_reg[11] 
       (.C(clk),
        .CE(cnt_col_1),
        .D(\cnt_line_1_reg[8]_i_1_n_4 ),
        .Q(\cnt_line_1_reg[11]_0 [11]),
        .R(\cnt_line_1[0]_i_1_n_0 ));
  FDRE \cnt_line_1_reg[1] 
       (.C(clk),
        .CE(cnt_col_1),
        .D(\cnt_line_1_reg[0]_i_3_n_6 ),
        .Q(\cnt_line_1_reg[11]_0 [1]),
        .R(\cnt_line_1[0]_i_1_n_0 ));
  FDRE \cnt_line_1_reg[2] 
       (.C(clk),
        .CE(cnt_col_1),
        .D(\cnt_line_1_reg[0]_i_3_n_5 ),
        .Q(\cnt_line_1_reg[11]_0 [2]),
        .R(\cnt_line_1[0]_i_1_n_0 ));
  FDRE \cnt_line_1_reg[3] 
       (.C(clk),
        .CE(cnt_col_1),
        .D(\cnt_line_1_reg[0]_i_3_n_4 ),
        .Q(\cnt_line_1_reg[11]_0 [3]),
        .R(\cnt_line_1[0]_i_1_n_0 ));
  FDRE \cnt_line_1_reg[4] 
       (.C(clk),
        .CE(cnt_col_1),
        .D(\cnt_line_1_reg[4]_i_1_n_7 ),
        .Q(\cnt_line_1_reg[11]_0 [4]),
        .R(\cnt_line_1[0]_i_1_n_0 ));
  CARRY4 \cnt_line_1_reg[4]_i_1 
       (.CI(\cnt_line_1_reg[0]_i_3_n_0 ),
        .CO({\cnt_line_1_reg[4]_i_1_n_0 ,\cnt_line_1_reg[4]_i_1_n_1 ,\cnt_line_1_reg[4]_i_1_n_2 ,\cnt_line_1_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_line_1_reg[4]_i_1_n_4 ,\cnt_line_1_reg[4]_i_1_n_5 ,\cnt_line_1_reg[4]_i_1_n_6 ,\cnt_line_1_reg[4]_i_1_n_7 }),
        .S({\cnt_line_1[4]_i_2_n_0 ,\cnt_line_1[4]_i_3_n_0 ,\cnt_line_1[4]_i_4_n_0 ,\cnt_line_1[4]_i_5_n_0 }));
  FDRE \cnt_line_1_reg[5] 
       (.C(clk),
        .CE(cnt_col_1),
        .D(\cnt_line_1_reg[4]_i_1_n_6 ),
        .Q(\cnt_line_1_reg[11]_0 [5]),
        .R(\cnt_line_1[0]_i_1_n_0 ));
  FDRE \cnt_line_1_reg[6] 
       (.C(clk),
        .CE(cnt_col_1),
        .D(\cnt_line_1_reg[4]_i_1_n_5 ),
        .Q(\cnt_line_1_reg[11]_0 [6]),
        .R(\cnt_line_1[0]_i_1_n_0 ));
  FDRE \cnt_line_1_reg[7] 
       (.C(clk),
        .CE(cnt_col_1),
        .D(\cnt_line_1_reg[4]_i_1_n_4 ),
        .Q(\cnt_line_1_reg[11]_0 [7]),
        .R(\cnt_line_1[0]_i_1_n_0 ));
  FDRE \cnt_line_1_reg[8] 
       (.C(clk),
        .CE(cnt_col_1),
        .D(\cnt_line_1_reg[8]_i_1_n_7 ),
        .Q(\cnt_line_1_reg[11]_0 [8]),
        .R(\cnt_line_1[0]_i_1_n_0 ));
  CARRY4 \cnt_line_1_reg[8]_i_1 
       (.CI(\cnt_line_1_reg[4]_i_1_n_0 ),
        .CO({\NLW_cnt_line_1_reg[8]_i_1_CO_UNCONNECTED [3],\cnt_line_1_reg[8]_i_1_n_1 ,\cnt_line_1_reg[8]_i_1_n_2 ,\cnt_line_1_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_line_1_reg[8]_i_1_n_4 ,\cnt_line_1_reg[8]_i_1_n_5 ,\cnt_line_1_reg[8]_i_1_n_6 ,\cnt_line_1_reg[8]_i_1_n_7 }),
        .S({\cnt_line_1[8]_i_2_n_0 ,\cnt_line_1[8]_i_3_n_0 ,\cnt_line_1[8]_i_4_n_0 ,\cnt_line_1[8]_i_5_n_0 }));
  FDRE \cnt_line_1_reg[9] 
       (.C(clk),
        .CE(cnt_col_1),
        .D(\cnt_line_1_reg[8]_i_1_n_6 ),
        .Q(\cnt_line_1_reg[11]_0 [9]),
        .R(\cnt_line_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \data[15]_i_1 
       (.I0(vcrop_valid),
        .I1(\reg_reg[1] [1]),
        .I2(p_3_in),
        .O(E));
  TySOM_1_7Z030_mipi_csi_0_delay_bus__parameterized3 data_dly_I
       (.D(D),
        .clk(clk),
        .\cnt_reg[0] (\cnt_reg[0] ),
        .p_3_in(p_3_in),
        .q(q),
        .\reg_reg[1] (\reg_reg[1] ),
        .\vfm_data_reg[31] (\vfm_data_reg[31] ));
  CARRY4 eqOp_carry
       (.CI(1'b0),
        .CO({eqOp_carry_n_0,eqOp_carry_n_1,eqOp_carry_n_2,eqOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eqOp_carry_O_UNCONNECTED[3:0]),
        .S({eqOp_carry_i_1_n_0,eqOp_carry_i_2_n_0,eqOp_carry_i_3_n_0,eqOp_carry_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_1
       (.I0(out[9]),
        .I1(\reg_reg[11] [9]),
        .I2(\reg_reg[11] [11]),
        .I3(out[11]),
        .I4(\reg_reg[11] [10]),
        .I5(out[10]),
        .O(eqOp_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_2
       (.I0(out[6]),
        .I1(\reg_reg[11] [6]),
        .I2(\reg_reg[11] [8]),
        .I3(out[8]),
        .I4(\reg_reg[11] [7]),
        .I5(out[7]),
        .O(eqOp_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_3
       (.I0(out[3]),
        .I1(\reg_reg[11] [3]),
        .I2(\reg_reg[11] [5]),
        .I3(out[5]),
        .I4(\reg_reg[11] [4]),
        .I5(out[4]),
        .O(eqOp_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_4
       (.I0(out[0]),
        .I1(\reg_reg[11] [0]),
        .I2(\reg_reg[11] [2]),
        .I3(out[2]),
        .I4(\reg_reg[11] [1]),
        .I5(out[1]),
        .O(eqOp_carry_i_4_n_0));
  CARRY4 geqOp_carry
       (.CI(1'b0),
        .CO({geqOp_carry_n_0,geqOp_carry_n_1,geqOp_carry_n_2,geqOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI({geqOp_carry_i_1_n_0,geqOp_carry_i_2_n_0,geqOp_carry_i_3_n_0,geqOp_carry_i_4_n_0}),
        .O(NLW_geqOp_carry_O_UNCONNECTED[3:0]),
        .S({geqOp_carry_i_5_n_0,geqOp_carry_i_6_n_0,geqOp_carry_i_7_n_0,geqOp_carry_i_8_n_0}));
  CARRY4 geqOp_carry__0
       (.CI(geqOp_carry_n_0),
        .CO({NLW_geqOp_carry__0_CO_UNCONNECTED[3:2],geqOp_carry__0_n_2,geqOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,geqOp_carry__0_i_1_n_0,geqOp_carry__0_i_2_n_0}),
        .O(NLW_geqOp_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,geqOp_carry__0_i_3_n_0,geqOp_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    geqOp_carry__0_i_1
       (.I0(\cnt_line_1_reg[11]_0 [10]),
        .I1(\reg_reg[11]_0 [10]),
        .I2(\reg_reg[11]_0 [11]),
        .I3(\cnt_line_1_reg[11]_0 [11]),
        .O(geqOp_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    geqOp_carry__0_i_2
       (.I0(\cnt_line_1_reg[11]_0 [8]),
        .I1(\reg_reg[11]_0 [8]),
        .I2(\reg_reg[11]_0 [9]),
        .I3(\cnt_line_1_reg[11]_0 [9]),
        .O(geqOp_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry__0_i_3
       (.I0(\cnt_line_1_reg[11]_0 [10]),
        .I1(\reg_reg[11]_0 [10]),
        .I2(\cnt_line_1_reg[11]_0 [11]),
        .I3(\reg_reg[11]_0 [11]),
        .O(geqOp_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry__0_i_4
       (.I0(\cnt_line_1_reg[11]_0 [8]),
        .I1(\reg_reg[11]_0 [8]),
        .I2(\cnt_line_1_reg[11]_0 [9]),
        .I3(\reg_reg[11]_0 [9]),
        .O(geqOp_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    geqOp_carry_i_1
       (.I0(\cnt_line_1_reg[11]_0 [6]),
        .I1(\reg_reg[11]_0 [6]),
        .I2(\reg_reg[11]_0 [7]),
        .I3(\cnt_line_1_reg[11]_0 [7]),
        .O(geqOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    geqOp_carry_i_2
       (.I0(\cnt_line_1_reg[11]_0 [4]),
        .I1(\reg_reg[11]_0 [4]),
        .I2(\reg_reg[11]_0 [5]),
        .I3(\cnt_line_1_reg[11]_0 [5]),
        .O(geqOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    geqOp_carry_i_3
       (.I0(\cnt_line_1_reg[11]_0 [2]),
        .I1(\reg_reg[11]_0 [2]),
        .I2(\reg_reg[11]_0 [3]),
        .I3(\cnt_line_1_reg[11]_0 [3]),
        .O(geqOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    geqOp_carry_i_4
       (.I0(\cnt_line_1_reg[11]_0 [0]),
        .I1(\reg_reg[11]_0 [0]),
        .I2(\reg_reg[11]_0 [1]),
        .I3(\cnt_line_1_reg[11]_0 [1]),
        .O(geqOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry_i_5
       (.I0(\cnt_line_1_reg[11]_0 [6]),
        .I1(\reg_reg[11]_0 [6]),
        .I2(\cnt_line_1_reg[11]_0 [7]),
        .I3(\reg_reg[11]_0 [7]),
        .O(geqOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry_i_6
       (.I0(\cnt_line_1_reg[11]_0 [4]),
        .I1(\reg_reg[11]_0 [4]),
        .I2(\cnt_line_1_reg[11]_0 [5]),
        .I3(\reg_reg[11]_0 [5]),
        .O(geqOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry_i_7
       (.I0(\cnt_line_1_reg[11]_0 [2]),
        .I1(\reg_reg[11]_0 [2]),
        .I2(\cnt_line_1_reg[11]_0 [3]),
        .I3(\reg_reg[11]_0 [3]),
        .O(geqOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry_i_8
       (.I0(\cnt_line_1_reg[11]_0 [0]),
        .I1(\reg_reg[11]_0 [0]),
        .I2(\cnt_line_1_reg[11]_0 [1]),
        .I3(\reg_reg[11]_0 [1]),
        .O(geqOp_carry_i_8_n_0));
  CARRY4 \geqOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\geqOp_inferred__0/i__carry_n_0 ,\geqOp_inferred__0/i__carry_n_1 ,\geqOp_inferred__0/i__carry_n_2 ,\geqOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  CARRY4 \geqOp_inferred__0/i__carry__0 
       (.CI(\geqOp_inferred__0/i__carry_n_0 ),
        .CO({\NLW_geqOp_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],\geqOp_inferred__0/i__carry__0_n_2 ,\geqOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__0_i_1__2_n_0,i__carry__0_i_2__2_n_0}),
        .O(\NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_3__2_n_0,i__carry__0_i_4__2_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_1__2
       (.I0(out[10]),
        .I1(\reg_reg[11]_1 [10]),
        .I2(\reg_reg[11]_1 [11]),
        .I3(out[11]),
        .O(i__carry__0_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry__0_i_2__2
       (.I0(out[8]),
        .I1(\reg_reg[11]_1 [8]),
        .I2(\reg_reg[11]_1 [9]),
        .I3(out[9]),
        .O(i__carry__0_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_3__2
       (.I0(out[10]),
        .I1(\reg_reg[11]_1 [10]),
        .I2(out[11]),
        .I3(\reg_reg[11]_1 [11]),
        .O(i__carry__0_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_4__2
       (.I0(out[8]),
        .I1(\reg_reg[11]_1 [8]),
        .I2(out[9]),
        .I3(\reg_reg[11]_1 [9]),
        .O(i__carry__0_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__2
       (.I0(out[6]),
        .I1(\reg_reg[11]_1 [6]),
        .I2(\reg_reg[11]_1 [7]),
        .I3(out[7]),
        .O(i__carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__2
       (.I0(out[4]),
        .I1(\reg_reg[11]_1 [4]),
        .I2(\reg_reg[11]_1 [5]),
        .I3(out[5]),
        .O(i__carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__2
       (.I0(out[2]),
        .I1(\reg_reg[11]_1 [2]),
        .I2(\reg_reg[11]_1 [3]),
        .I3(out[3]),
        .O(i__carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__0
       (.I0(out[0]),
        .I1(\reg_reg[11]_1 [0]),
        .I2(\reg_reg[11]_1 [1]),
        .I3(out[1]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(out[6]),
        .I1(\reg_reg[11]_1 [6]),
        .I2(out[7]),
        .I3(\reg_reg[11]_1 [7]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(out[4]),
        .I1(\reg_reg[11]_1 [4]),
        .I2(out[5]),
        .I3(\reg_reg[11]_1 [5]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(out[2]),
        .I1(\reg_reg[11]_1 [2]),
        .I2(out[3]),
        .I3(\reg_reg[11]_1 [3]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(out[0]),
        .I1(\reg_reg[11]_1 [0]),
        .I2(out[1]),
        .I3(\reg_reg[11]_1 [1]),
        .O(i__carry_i_8__0_n_0));
  FDRE last_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(vfm_last),
        .Q(last_1),
        .R(1'b0));
  FDRE last_2_reg
       (.C(clk),
        .CE(1'b1),
        .D(last_1),
        .Q(last_2),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA8)) 
    last_3_i_1
       (.I0(p_1_in),
        .I1(win_ce_last_2),
        .I2(last_2),
        .O(last_30));
  FDRE last_3_reg
       (.C(clk),
        .CE(1'b1),
        .D(last_30),
        .Q(vcrop_last),
        .R(1'b0));
  CARRY4 leqOp_carry
       (.CI(1'b0),
        .CO({leqOp_carry_n_0,leqOp_carry_n_1,leqOp_carry_n_2,leqOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI(DI),
        .O(NLW_leqOp_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 leqOp_carry__0
       (.CI(leqOp_carry_n_0),
        .CO({NLW_leqOp_carry__0_CO_UNCONNECTED[3:2],leqOp_carry__0_n_2,leqOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\reg_reg[10] }),
        .O(NLW_leqOp_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,\reg_reg[10]_0 }));
  CARRY4 \leqOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\leqOp_inferred__0/i__carry_n_0 ,\leqOp_inferred__0/i__carry_n_1 ,\leqOp_inferred__0/i__carry_n_2 ,\leqOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\reg_reg[6] ),
        .O(\NLW_leqOp_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S(\reg_reg[6]_0 ));
  CARRY4 \leqOp_inferred__0/i__carry__0 
       (.CI(\leqOp_inferred__0/i__carry_n_0 ),
        .CO({\NLW_leqOp_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],\leqOp_inferred__0/i__carry__0_n_2 ,\leqOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\reg_reg[10]_1 }),
        .O(\NLW_leqOp_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\reg_reg[10]_2 }));
  LUT6 #(
    .INIT(64'hAAAAAAAA82000082)) 
    out_valid_i_i_1__0
       (.I0(vcrop_valid),
        .I1(\cnt_reg[0] ),
        .I2(\reg_reg[1] [0]),
        .I3(p_3_in),
        .I4(\reg_reg[1] [1]),
        .I5(vcrop_last),
        .O(out_valid_i0));
  FDRE sof_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(vfm_sof),
        .Q(sof_1),
        .R(1'b0));
  FDRE sof_2_reg
       (.C(clk),
        .CE(1'b1),
        .D(sof_1),
        .Q(sof_2),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF444)) 
    sof_3_i_1
       (.I0(vcrop_valid),
        .I1(vcrop_sof),
        .I2(valid_2),
        .I3(sof_2),
        .O(sof_3_i_1_n_0));
  FDRE sof_3_reg
       (.C(clk),
        .CE(1'b1),
        .D(sof_3_i_1_n_0),
        .Q(vcrop_sof),
        .R(1'b0));
  FDRE valid_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(vfm_valid),
        .Q(valid_1),
        .R(1'b0));
  FDRE valid_2_reg
       (.C(clk),
        .CE(1'b1),
        .D(valid_1),
        .Q(valid_2),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80000000)) 
    valid_3_i_1
       (.I0(win_ls_ok_2),
        .I1(win_cs_ok_2),
        .I2(valid_2),
        .I3(win_ce_ok_2),
        .I4(win_le_ok_2),
        .O(p_1_in));
  FDRE valid_3_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(vcrop_valid),
        .R(1'b0));
  FDRE win_ce_last_2_reg
       (.C(clk),
        .CE(1'b1),
        .D(eqOp_carry_n_0),
        .Q(win_ce_last_2),
        .R(1'b0));
  FDRE win_ce_ok_2_reg
       (.C(clk),
        .CE(1'b1),
        .D(leqOp_carry__0_n_2),
        .Q(win_ce_ok_2),
        .R(1'b0));
  FDRE win_cs_ok_2_reg
       (.C(clk),
        .CE(1'b1),
        .D(\geqOp_inferred__0/i__carry__0_n_2 ),
        .Q(win_cs_ok_2),
        .R(1'b0));
  FDRE win_le_ok_2_reg
       (.C(clk),
        .CE(1'b1),
        .D(\leqOp_inferred__0/i__carry__0_n_2 ),
        .Q(win_le_ok_2),
        .R(1'b0));
  FDRE win_ls_ok_2_reg
       (.C(clk),
        .CE(1'b1),
        .D(geqOp_carry__0_n_2),
        .Q(win_ls_ok_2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "vid_debayer" *) 
module TySOM_1_7Z030_mipi_csi_0_vid_debayer
   (vfm_valid_reg,
    vfm_last_reg,
    vfm_sof_reg,
    \vfm_data_reg[26] ,
    Q,
    \vfm_data_reg[10] ,
    \vfm_data_reg[11] ,
    \vfm_data_reg[12] ,
    \vfm_data_reg[13] ,
    \vfm_data_reg[14] ,
    \vfm_data_reg[15] ,
    \vfm_data_reg[27] ,
    \vfm_data_reg[28] ,
    \vfm_data_reg[29] ,
    \vfm_data_reg[30] ,
    \vfm_data_reg[31] ,
    clk,
    D,
    pause_reg,
    \reg_reg[17] ,
    vum_last_reg,
    \cnt_reg[16] ,
    DOP,
    vum_sof_reg,
    vin_sof,
    p_1_in,
    DO,
    \vum_data_reg[9] );
  output vfm_valid_reg;
  output vfm_last_reg;
  output vfm_sof_reg;
  output [18:0]\vfm_data_reg[26] ;
  output [2:0]Q;
  output [2:0]\vfm_data_reg[10] ;
  output \vfm_data_reg[11] ;
  output \vfm_data_reg[12] ;
  output \vfm_data_reg[13] ;
  output \vfm_data_reg[14] ;
  output \vfm_data_reg[15] ;
  output \vfm_data_reg[27] ;
  output \vfm_data_reg[28] ;
  output \vfm_data_reg[29] ;
  output \vfm_data_reg[30] ;
  output \vfm_data_reg[31] ;
  input clk;
  input [0:0]D;
  input pause_reg;
  input [11:0]\reg_reg[17] ;
  input [0:0]vum_last_reg;
  input [0:0]\cnt_reg[16] ;
  input [0:0]DOP;
  input [0:0]vum_sof_reg;
  input vin_sof;
  input [7:0]p_1_in;
  input [18:0]DO;
  input [8:0]\vum_data_reg[9] ;

  wire [14:4]ADDRARDADDR;
  wire [14:4]ADDRBWRADDR;
  wire [0:0]D;
  wire [18:0]DO;
  wire [0:0]DOP;
  wire [2:0]Q;
  wire [9:0]R;
  wire clk;
  wire [0:0]\cnt_reg[16] ;
  wire d0;
  wire data_dly_I_n_0;
  wire data_dly_I_n_1;
  wire data_dly_I_n_2;
  wire data_dly_I_n_3;
  wire data_dly_I_n_4;
  wire data_dly_I_n_5;
  wire data_dly_I_n_6;
  wire data_dly_I_n_7;
  wire [1:3]last_x;
  wire \lbuf_raddr_1[10]_i_3_n_0 ;
  wire [15:0]lbuf_raw_do;
  wire [1:0]lbuf_raw_dop;
  wire [8:0]lbuf_wdata_3_0;
  wire [7:0]p_1_in;
  wire [10:2]p_1_in_0;
  wire [10:1]p_2_in;
  wire [10:1]p_4_in;
  wire pause_reg;
  wire \pix_blue_4[10]_i_2_n_0 ;
  wire \pix_blue_4[10]_i_3_n_0 ;
  wire \pix_blue_4[10]_i_4_n_0 ;
  wire \pix_blue_4[10]_i_7_n_0 ;
  wire \pix_blue_4[10]_i_8_n_0 ;
  wire \pix_blue_4[3]_i_10_n_0 ;
  wire \pix_blue_4[3]_i_11_n_0 ;
  wire \pix_blue_4[3]_i_2_n_0 ;
  wire \pix_blue_4[3]_i_3_n_0 ;
  wire \pix_blue_4[3]_i_4_n_0 ;
  wire \pix_blue_4[3]_i_5_n_0 ;
  wire \pix_blue_4[7]_i_10_n_0 ;
  wire \pix_blue_4[7]_i_11_n_0 ;
  wire \pix_blue_4[7]_i_12_n_0 ;
  wire \pix_blue_4[7]_i_13_n_0 ;
  wire \pix_blue_4[7]_i_2_n_0 ;
  wire \pix_blue_4[7]_i_3_n_0 ;
  wire \pix_blue_4[7]_i_4_n_0 ;
  wire \pix_blue_4[7]_i_5_n_0 ;
  wire \pix_green_4[10]_i_2_n_0 ;
  wire \pix_green_4[10]_i_3_n_0 ;
  wire \pix_green_4[10]_i_4_n_0 ;
  wire \pix_green_4[10]_i_5_n_0 ;
  wire \pix_green_4[10]_i_6_n_0 ;
  wire \pix_green_4[3]_i_2_n_0 ;
  wire \pix_green_4[3]_i_3_n_0 ;
  wire \pix_green_4[3]_i_4_n_0 ;
  wire \pix_green_4[3]_i_5_n_0 ;
  wire \pix_green_4[3]_i_6_n_0 ;
  wire \pix_green_4[3]_i_7_n_0 ;
  wire \pix_green_4[3]_i_8_n_0 ;
  wire \pix_green_4[3]_i_9_n_0 ;
  wire \pix_green_4[7]_i_2_n_0 ;
  wire \pix_green_4[7]_i_3_n_0 ;
  wire \pix_green_4[7]_i_4_n_0 ;
  wire \pix_green_4[7]_i_5_n_0 ;
  wire \pix_green_4[7]_i_6_n_0 ;
  wire \pix_green_4[7]_i_7_n_0 ;
  wire \pix_green_4[7]_i_8_n_0 ;
  wire \pix_green_4[7]_i_9_n_0 ;
  wire \pix_green_4_reg[10]_i_1_n_2 ;
  wire \pix_green_4_reg[10]_i_1_n_3 ;
  wire \pix_green_4_reg[10]_i_1_n_5 ;
  wire \pix_green_4_reg[10]_i_1_n_6 ;
  wire \pix_green_4_reg[10]_i_1_n_7 ;
  wire \pix_green_4_reg[3]_i_1_n_0 ;
  wire \pix_green_4_reg[3]_i_1_n_1 ;
  wire \pix_green_4_reg[3]_i_1_n_2 ;
  wire \pix_green_4_reg[3]_i_1_n_3 ;
  wire \pix_green_4_reg[3]_i_1_n_4 ;
  wire \pix_green_4_reg[7]_i_1_n_0 ;
  wire \pix_green_4_reg[7]_i_1_n_1 ;
  wire \pix_green_4_reg[7]_i_1_n_2 ;
  wire \pix_green_4_reg[7]_i_1_n_3 ;
  wire \pix_green_4_reg[7]_i_1_n_4 ;
  wire \pix_green_4_reg[7]_i_1_n_5 ;
  wire \pix_green_4_reg[7]_i_1_n_6 ;
  wire \pix_green_4_reg[7]_i_1_n_7 ;
  wire [9:0]pix_l02c0_3;
  wire \pix_l02c1_3[3]_i_2_n_0 ;
  wire \pix_l02c1_3[3]_i_3_n_0 ;
  wire \pix_l02c1_3[3]_i_4_n_0 ;
  wire \pix_l02c1_3[3]_i_5_n_0 ;
  wire \pix_l02c1_3[7]_i_2_n_0 ;
  wire \pix_l02c1_3[7]_i_3_n_0 ;
  wire \pix_l02c1_3[7]_i_4_n_0 ;
  wire \pix_l02c1_3[7]_i_5_n_0 ;
  wire \pix_l02c1_3[9]_i_2_n_0 ;
  wire [8:0]pix_l1c0_3;
  wire \pix_red_4[10]_i_1_n_0 ;
  wire \pix_red_4[10]_i_4_n_0 ;
  wire \pix_red_4[10]_i_5_n_0 ;
  wire \pix_red_4[10]_i_6_n_0 ;
  wire \pix_red_4[3]_i_1_n_0 ;
  wire \pix_red_4[3]_i_3_n_0 ;
  wire \pix_red_4[3]_i_4_n_0 ;
  wire \pix_red_4[3]_i_5_n_0 ;
  wire \pix_red_4[3]_i_6_n_0 ;
  wire \pix_red_4[4]_i_1_n_0 ;
  wire \pix_red_4[4]_i_3_n_0 ;
  wire \pix_red_4[4]_i_4_n_0 ;
  wire \pix_red_4[4]_i_5_n_0 ;
  wire \pix_red_4[4]_i_6_n_0 ;
  wire \pix_red_4[5]_i_1_n_0 ;
  wire \pix_red_4[6]_i_1_n_0 ;
  wire \pix_red_4[7]_i_1_n_0 ;
  wire \pix_red_4[7]_i_3_n_0 ;
  wire \pix_red_4[7]_i_4_n_0 ;
  wire \pix_red_4[7]_i_5_n_0 ;
  wire \pix_red_4[7]_i_6_n_0 ;
  wire \pix_red_4[8]_i_1_n_0 ;
  wire \pix_red_4[8]_i_3_n_0 ;
  wire \pix_red_4[8]_i_4_n_0 ;
  wire \pix_red_4[8]_i_5_n_0 ;
  wire \pix_red_4[8]_i_6_n_0 ;
  wire \pix_red_4[9]_i_1_n_0 ;
  wire \pix_red_4_reg[10]_i_3_n_1 ;
  wire \pix_red_4_reg[10]_i_3_n_3 ;
  wire \pix_red_4_reg[10]_i_3_n_6 ;
  wire \pix_red_4_reg[10]_i_3_n_7 ;
  wire \pix_red_4_reg[3]_i_2_n_0 ;
  wire \pix_red_4_reg[3]_i_2_n_1 ;
  wire \pix_red_4_reg[3]_i_2_n_2 ;
  wire \pix_red_4_reg[3]_i_2_n_3 ;
  wire \pix_red_4_reg[3]_i_2_n_4 ;
  wire \pix_red_4_reg[4]_i_2_n_0 ;
  wire \pix_red_4_reg[4]_i_2_n_1 ;
  wire \pix_red_4_reg[4]_i_2_n_2 ;
  wire \pix_red_4_reg[4]_i_2_n_3 ;
  wire \pix_red_4_reg[7]_i_2_n_0 ;
  wire \pix_red_4_reg[7]_i_2_n_1 ;
  wire \pix_red_4_reg[7]_i_2_n_2 ;
  wire \pix_red_4_reg[7]_i_2_n_3 ;
  wire \pix_red_4_reg[7]_i_2_n_4 ;
  wire \pix_red_4_reg[7]_i_2_n_5 ;
  wire \pix_red_4_reg[7]_i_2_n_6 ;
  wire \pix_red_4_reg[7]_i_2_n_7 ;
  wire \pix_red_4_reg[8]_i_2_n_0 ;
  wire \pix_red_4_reg[8]_i_2_n_1 ;
  wire \pix_red_4_reg[8]_i_2_n_2 ;
  wire \pix_red_4_reg[8]_i_2_n_3 ;
  wire [10:0]plusOp__2;
  wire [11:0]\reg_reg[17] ;
  wire sel_col_3_i_1_n_0;
  wire sel_col_3_reg_n_0;
  wire sel_line_3_i_1_n_0;
  wire sel_line_3_reg_n_0;
  wire [1:3]sof_x;
  wire [1:3]valid_x;
  wire [23:0]vcfm_data;
  wire [26:24]vcfm_data_reg;
  wire [7:0]vcol_blue;
  wire [4:0]vcol_green;
  wire vcol_last;
  wire [7:0]vcol_red;
  wire vcol_sof;
  wire vcol_valid;
  wire [2:0]\vfm_data_reg[10] ;
  wire \vfm_data_reg[11] ;
  wire \vfm_data_reg[12] ;
  wire \vfm_data_reg[13] ;
  wire \vfm_data_reg[14] ;
  wire \vfm_data_reg[15] ;
  wire [18:0]\vfm_data_reg[26] ;
  wire \vfm_data_reg[27] ;
  wire \vfm_data_reg[28] ;
  wire \vfm_data_reg[29] ;
  wire \vfm_data_reg[30] ;
  wire \vfm_data_reg[31] ;
  wire vfm_last_reg;
  wire vfm_sof_reg;
  wire vfm_valid_reg;
  wire vin_sof;
  wire [8:0]\vum_data_reg[9] ;
  wire [0:0]vum_last_reg;
  wire [0:0]vum_sof_reg;
  wire NLW_line_buf_I_CASCADEOUTA_UNCONNECTED;
  wire NLW_line_buf_I_CASCADEOUTB_UNCONNECTED;
  wire NLW_line_buf_I_DBITERR_UNCONNECTED;
  wire NLW_line_buf_I_SBITERR_UNCONNECTED;
  wire [31:16]NLW_line_buf_I_DOADO_UNCONNECTED;
  wire [31:0]NLW_line_buf_I_DOBDO_UNCONNECTED;
  wire [3:2]NLW_line_buf_I_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_line_buf_I_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_line_buf_I_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_line_buf_I_RDADDRECC_UNCONNECTED;
  wire [3:2]\NLW_pix_green_4_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_pix_green_4_reg[10]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_pix_green_4_reg[3]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_pix_red_4_reg[10]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_pix_red_4_reg[10]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_pix_red_4_reg[10]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_pix_red_4_reg[10]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_pix_red_4_reg[3]_i_2_O_UNCONNECTED ;

  TySOM_1_7Z030_mipi_csi_0_delay_bus addr_dly_I
       (.Q(ADDRARDADDR),
        .clk(clk),
        .q(ADDRBWRADDR));
  TySOM_1_7Z030_mipi_csi_0_delay_bus__parameterized1 data_dly_I
       (.D({data_dly_I_n_0,data_dly_I_n_1,data_dly_I_n_2,data_dly_I_n_3,data_dly_I_n_4,data_dly_I_n_5,data_dly_I_n_6,data_dly_I_n_7}),
        .DI({\pix_blue_4[3]_i_2_n_0 ,\pix_blue_4[3]_i_3_n_0 ,\pix_blue_4[3]_i_4_n_0 ,\pix_blue_4[3]_i_5_n_0 }),
        .DOADO(lbuf_raw_do[15:9]),
        .DOPADOP(lbuf_raw_dop),
        .O(p_2_in[1]),
        .Q(pix_l02c0_3[1:0]),
        .R(R),
        .S(\pix_blue_4[10]_i_4_n_0 ),
        .clk(clk),
        .line_buf_I({\pix_l02c1_3[3]_i_2_n_0 ,\pix_l02c1_3[3]_i_3_n_0 ,\pix_l02c1_3[3]_i_4_n_0 ,\pix_l02c1_3[3]_i_5_n_0 }),
        .line_buf_I_0({\pix_l02c1_3[7]_i_2_n_0 ,\pix_l02c1_3[7]_i_3_n_0 ,\pix_l02c1_3[7]_i_4_n_0 ,\pix_l02c1_3[7]_i_5_n_0 }),
        .line_buf_I_1(\pix_l02c1_3[9]_i_2_n_0 ),
        .\pix_l02c0_3_reg[2] (\pix_blue_4[3]_i_11_n_0 ),
        .\pix_l02c0_3_reg[3] (\pix_blue_4[3]_i_10_n_0 ),
        .\pix_l02c0_3_reg[4] (\pix_blue_4[7]_i_13_n_0 ),
        .\pix_l02c0_3_reg[5] (\pix_blue_4[7]_i_12_n_0 ),
        .\pix_l02c0_3_reg[6] (\pix_blue_4[7]_i_11_n_0 ),
        .\pix_l02c0_3_reg[7] (\pix_blue_4[7]_i_10_n_0 ),
        .\pix_l02c0_3_reg[8] (\pix_blue_4[10]_i_8_n_0 ),
        .\pix_l02c0_3_reg[9] (\pix_blue_4[10]_i_7_n_0 ),
        .\pix_l02c1_3_reg[0] (p_4_in[1]),
        .q(lbuf_wdata_3_0),
        .sel_col_3_reg(sel_col_3_reg_n_0),
        .sel_line_3_reg({\pix_blue_4[7]_i_2_n_0 ,\pix_blue_4[7]_i_3_n_0 ,\pix_blue_4[7]_i_4_n_0 ,\pix_blue_4[7]_i_5_n_0 }),
        .sel_line_3_reg_0({\pix_blue_4[10]_i_2_n_0 ,\pix_blue_4[10]_i_3_n_0 }),
        .sel_line_3_reg_1(sel_line_3_reg_n_0),
        .\vum_data_reg[9] (\vum_data_reg[9] ));
  FDRE \last_x_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(vum_last_reg),
        .Q(last_x[1]),
        .R(1'b0));
  FDRE \last_x_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(last_x[1]),
        .Q(last_x[2]),
        .R(1'b0));
  FDRE \last_x_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(last_x[2]),
        .Q(last_x[3]),
        .R(1'b0));
  FDRE \last_x_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(last_x[3]),
        .Q(vcol_last),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \lbuf_raddr_1[0]_i_1 
       (.I0(ADDRARDADDR[4]),
        .O(plusOp__2[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \lbuf_raddr_1[10]_i_1 
       (.I0(D),
        .I1(vum_sof_reg),
        .I2(valid_x[1]),
        .I3(last_x[1]),
        .O(d0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \lbuf_raddr_1[10]_i_2 
       (.I0(ADDRARDADDR[12]),
        .I1(ADDRARDADDR[10]),
        .I2(\lbuf_raddr_1[10]_i_3_n_0 ),
        .I3(ADDRARDADDR[11]),
        .I4(ADDRARDADDR[13]),
        .I5(ADDRARDADDR[14]),
        .O(plusOp__2[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \lbuf_raddr_1[10]_i_3 
       (.I0(ADDRARDADDR[9]),
        .I1(ADDRARDADDR[7]),
        .I2(ADDRARDADDR[5]),
        .I3(ADDRARDADDR[4]),
        .I4(ADDRARDADDR[6]),
        .I5(ADDRARDADDR[8]),
        .O(\lbuf_raddr_1[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lbuf_raddr_1[1]_i_1 
       (.I0(ADDRARDADDR[4]),
        .I1(ADDRARDADDR[5]),
        .O(plusOp__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \lbuf_raddr_1[2]_i_1 
       (.I0(ADDRARDADDR[4]),
        .I1(ADDRARDADDR[5]),
        .I2(ADDRARDADDR[6]),
        .O(plusOp__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \lbuf_raddr_1[3]_i_1 
       (.I0(ADDRARDADDR[5]),
        .I1(ADDRARDADDR[4]),
        .I2(ADDRARDADDR[6]),
        .I3(ADDRARDADDR[7]),
        .O(plusOp__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \lbuf_raddr_1[4]_i_1 
       (.I0(ADDRARDADDR[6]),
        .I1(ADDRARDADDR[4]),
        .I2(ADDRARDADDR[5]),
        .I3(ADDRARDADDR[7]),
        .I4(ADDRARDADDR[8]),
        .O(plusOp__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \lbuf_raddr_1[5]_i_1 
       (.I0(ADDRARDADDR[7]),
        .I1(ADDRARDADDR[5]),
        .I2(ADDRARDADDR[4]),
        .I3(ADDRARDADDR[6]),
        .I4(ADDRARDADDR[8]),
        .I5(ADDRARDADDR[9]),
        .O(plusOp__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \lbuf_raddr_1[6]_i_1 
       (.I0(\lbuf_raddr_1[10]_i_3_n_0 ),
        .I1(ADDRARDADDR[10]),
        .O(plusOp__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \lbuf_raddr_1[7]_i_1 
       (.I0(\lbuf_raddr_1[10]_i_3_n_0 ),
        .I1(ADDRARDADDR[10]),
        .I2(ADDRARDADDR[11]),
        .O(plusOp__2[7]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \lbuf_raddr_1[8]_i_1 
       (.I0(ADDRARDADDR[10]),
        .I1(\lbuf_raddr_1[10]_i_3_n_0 ),
        .I2(ADDRARDADDR[11]),
        .I3(ADDRARDADDR[12]),
        .O(plusOp__2[8]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \lbuf_raddr_1[9]_i_1 
       (.I0(ADDRARDADDR[11]),
        .I1(\lbuf_raddr_1[10]_i_3_n_0 ),
        .I2(ADDRARDADDR[10]),
        .I3(ADDRARDADDR[12]),
        .I4(ADDRARDADDR[13]),
        .O(plusOp__2[9]));
  FDRE \lbuf_raddr_1_reg[0] 
       (.C(clk),
        .CE(valid_x[1]),
        .D(plusOp__2[0]),
        .Q(ADDRARDADDR[4]),
        .R(d0));
  FDRE \lbuf_raddr_1_reg[10] 
       (.C(clk),
        .CE(valid_x[1]),
        .D(plusOp__2[10]),
        .Q(ADDRARDADDR[14]),
        .R(d0));
  FDRE \lbuf_raddr_1_reg[1] 
       (.C(clk),
        .CE(valid_x[1]),
        .D(plusOp__2[1]),
        .Q(ADDRARDADDR[5]),
        .R(d0));
  FDRE \lbuf_raddr_1_reg[2] 
       (.C(clk),
        .CE(valid_x[1]),
        .D(plusOp__2[2]),
        .Q(ADDRARDADDR[6]),
        .R(d0));
  FDRE \lbuf_raddr_1_reg[3] 
       (.C(clk),
        .CE(valid_x[1]),
        .D(plusOp__2[3]),
        .Q(ADDRARDADDR[7]),
        .R(d0));
  FDRE \lbuf_raddr_1_reg[4] 
       (.C(clk),
        .CE(valid_x[1]),
        .D(plusOp__2[4]),
        .Q(ADDRARDADDR[8]),
        .R(d0));
  FDRE \lbuf_raddr_1_reg[5] 
       (.C(clk),
        .CE(valid_x[1]),
        .D(plusOp__2[5]),
        .Q(ADDRARDADDR[9]),
        .R(d0));
  FDRE \lbuf_raddr_1_reg[6] 
       (.C(clk),
        .CE(valid_x[1]),
        .D(plusOp__2[6]),
        .Q(ADDRARDADDR[10]),
        .R(d0));
  FDRE \lbuf_raddr_1_reg[7] 
       (.C(clk),
        .CE(valid_x[1]),
        .D(plusOp__2[7]),
        .Q(ADDRARDADDR[11]),
        .R(d0));
  FDRE \lbuf_raddr_1_reg[8] 
       (.C(clk),
        .CE(valid_x[1]),
        .D(plusOp__2[8]),
        .Q(ADDRARDADDR[12]),
        .R(d0));
  FDRE \lbuf_raddr_1_reg[9] 
       (.C(clk),
        .CE(valid_x[1]),
        .D(plusOp__2[9]),
        .Q(ADDRARDADDR[13]),
        .R(d0));
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(18)) 
    line_buf_I
       (.ADDRARDADDR({1'b0,ADDRARDADDR,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,ADDRBWRADDR,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_line_buf_I_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_line_buf_I_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk),
        .CLKBWRCLK(clk),
        .DBITERR(NLW_line_buf_I_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,lbuf_raw_do[6:0],lbuf_wdata_3_0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,lbuf_raw_do[8:7]}),
        .DOADO({NLW_line_buf_I_DOADO_UNCONNECTED[31:16],lbuf_raw_do}),
        .DOBDO(NLW_line_buf_I_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP({NLW_line_buf_I_DOPADOP_UNCONNECTED[3:2],lbuf_raw_dop}),
        .DOPBDOP(NLW_line_buf_I_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_line_buf_I_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_line_buf_I_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_line_buf_I_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,valid_x[3],valid_x[3]}));
  LUT3 #(
    .INIT(8'h02)) 
    \pix_blue_4[10]_i_2 
       (.I0(R[9]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_blue_4[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \pix_blue_4[10]_i_3 
       (.I0(R[8]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_blue_4[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAF0CC00)) 
    \pix_blue_4[10]_i_4 
       (.I0(p_1_in_0[10]),
        .I1(p_2_in[10]),
        .I2(p_4_in[10]),
        .I3(sel_line_3_reg_n_0),
        .I4(sel_col_3_reg_n_0),
        .O(\pix_blue_4[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \pix_blue_4[10]_i_7 
       (.I0(pix_l02c0_3[9]),
        .I1(sel_col_3_reg_n_0),
        .I2(sel_line_3_reg_n_0),
        .I3(p_4_in[9]),
        .I4(p_2_in[9]),
        .I5(p_1_in_0[9]),
        .O(\pix_blue_4[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \pix_blue_4[10]_i_8 
       (.I0(pix_l02c0_3[8]),
        .I1(sel_col_3_reg_n_0),
        .I2(sel_line_3_reg_n_0),
        .I3(p_4_in[8]),
        .I4(p_2_in[8]),
        .I5(p_1_in_0[8]),
        .O(\pix_blue_4[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \pix_blue_4[3]_i_10 
       (.I0(pix_l02c0_3[3]),
        .I1(sel_col_3_reg_n_0),
        .I2(sel_line_3_reg_n_0),
        .I3(p_4_in[3]),
        .I4(p_2_in[3]),
        .I5(p_1_in_0[3]),
        .O(\pix_blue_4[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \pix_blue_4[3]_i_11 
       (.I0(pix_l02c0_3[2]),
        .I1(sel_col_3_reg_n_0),
        .I2(sel_line_3_reg_n_0),
        .I3(p_4_in[2]),
        .I4(p_2_in[2]),
        .I5(p_1_in_0[2]),
        .O(\pix_blue_4[3]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \pix_blue_4[3]_i_2 
       (.I0(R[3]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_blue_4[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \pix_blue_4[3]_i_3 
       (.I0(R[2]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_blue_4[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \pix_blue_4[3]_i_4 
       (.I0(R[1]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_blue_4[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \pix_blue_4[3]_i_5 
       (.I0(R[0]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_blue_4[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \pix_blue_4[7]_i_10 
       (.I0(pix_l02c0_3[7]),
        .I1(sel_col_3_reg_n_0),
        .I2(sel_line_3_reg_n_0),
        .I3(p_4_in[7]),
        .I4(p_2_in[7]),
        .I5(p_1_in_0[7]),
        .O(\pix_blue_4[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \pix_blue_4[7]_i_11 
       (.I0(pix_l02c0_3[6]),
        .I1(sel_col_3_reg_n_0),
        .I2(sel_line_3_reg_n_0),
        .I3(p_4_in[6]),
        .I4(p_2_in[6]),
        .I5(p_1_in_0[6]),
        .O(\pix_blue_4[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \pix_blue_4[7]_i_12 
       (.I0(pix_l02c0_3[5]),
        .I1(sel_col_3_reg_n_0),
        .I2(sel_line_3_reg_n_0),
        .I3(p_4_in[5]),
        .I4(p_2_in[5]),
        .I5(p_1_in_0[5]),
        .O(\pix_blue_4[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \pix_blue_4[7]_i_13 
       (.I0(pix_l02c0_3[4]),
        .I1(sel_col_3_reg_n_0),
        .I2(sel_line_3_reg_n_0),
        .I3(p_4_in[4]),
        .I4(p_2_in[4]),
        .I5(p_1_in_0[4]),
        .O(\pix_blue_4[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \pix_blue_4[7]_i_2 
       (.I0(R[7]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_blue_4[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \pix_blue_4[7]_i_3 
       (.I0(R[6]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_blue_4[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \pix_blue_4[7]_i_4 
       (.I0(R[5]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_blue_4[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \pix_blue_4[7]_i_5 
       (.I0(R[4]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_blue_4[7]_i_5_n_0 ));
  FDRE \pix_blue_4_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(data_dly_I_n_0),
        .Q(vcol_blue[7]),
        .R(1'b0));
  FDRE \pix_blue_4_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(data_dly_I_n_7),
        .Q(vcol_blue[0]),
        .R(1'b0));
  FDRE \pix_blue_4_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(data_dly_I_n_6),
        .Q(vcol_blue[1]),
        .R(1'b0));
  FDRE \pix_blue_4_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data_dly_I_n_5),
        .Q(vcol_blue[2]),
        .R(1'b0));
  FDRE \pix_blue_4_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(data_dly_I_n_4),
        .Q(vcol_blue[3]),
        .R(1'b0));
  FDRE \pix_blue_4_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(data_dly_I_n_3),
        .Q(vcol_blue[4]),
        .R(1'b0));
  FDRE \pix_blue_4_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(data_dly_I_n_2),
        .Q(vcol_blue[5]),
        .R(1'b0));
  FDRE \pix_blue_4_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(data_dly_I_n_1),
        .Q(vcol_blue[6]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h82)) 
    \pix_green_4[10]_i_2 
       (.I0(p_4_in[10]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_green_4[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \pix_green_4[10]_i_3 
       (.I0(p_4_in[9]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_green_4[10]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \pix_green_4[10]_i_4 
       (.I0(sel_line_3_reg_n_0),
        .I1(sel_col_3_reg_n_0),
        .I2(p_1_in_0[10]),
        .O(\pix_green_4[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h6FF66006)) 
    \pix_green_4[10]_i_5 
       (.I0(p_4_in[10]),
        .I1(p_2_in[10]),
        .I2(sel_line_3_reg_n_0),
        .I3(sel_col_3_reg_n_0),
        .I4(p_1_in_0[9]),
        .O(\pix_green_4[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h6FF66006)) 
    \pix_green_4[10]_i_6 
       (.I0(p_4_in[9]),
        .I1(p_2_in[9]),
        .I2(sel_line_3_reg_n_0),
        .I3(sel_col_3_reg_n_0),
        .I4(p_1_in_0[8]),
        .O(\pix_green_4[10]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \pix_green_4[3]_i_2 
       (.I0(p_4_in[4]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_green_4[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \pix_green_4[3]_i_3 
       (.I0(p_4_in[3]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_green_4[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \pix_green_4[3]_i_4 
       (.I0(p_4_in[2]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_green_4[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \pix_green_4[3]_i_5 
       (.I0(p_4_in[1]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_green_4[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h6FF66006)) 
    \pix_green_4[3]_i_6 
       (.I0(p_4_in[4]),
        .I1(p_2_in[4]),
        .I2(sel_line_3_reg_n_0),
        .I3(sel_col_3_reg_n_0),
        .I4(p_1_in_0[3]),
        .O(\pix_green_4[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h6FF66006)) 
    \pix_green_4[3]_i_7 
       (.I0(p_4_in[3]),
        .I1(p_2_in[3]),
        .I2(sel_line_3_reg_n_0),
        .I3(sel_col_3_reg_n_0),
        .I4(p_1_in_0[2]),
        .O(\pix_green_4[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4182)) 
    \pix_green_4[3]_i_8 
       (.I0(p_4_in[2]),
        .I1(sel_col_3_reg_n_0),
        .I2(sel_line_3_reg_n_0),
        .I3(p_2_in[2]),
        .O(\pix_green_4[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4182)) 
    \pix_green_4[3]_i_9 
       (.I0(p_4_in[1]),
        .I1(sel_col_3_reg_n_0),
        .I2(sel_line_3_reg_n_0),
        .I3(p_2_in[1]),
        .O(\pix_green_4[3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \pix_green_4[7]_i_2 
       (.I0(p_4_in[8]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_green_4[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \pix_green_4[7]_i_3 
       (.I0(p_4_in[7]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_green_4[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \pix_green_4[7]_i_4 
       (.I0(p_4_in[6]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_green_4[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h82)) 
    \pix_green_4[7]_i_5 
       (.I0(p_4_in[5]),
        .I1(sel_line_3_reg_n_0),
        .I2(sel_col_3_reg_n_0),
        .O(\pix_green_4[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h6FF66006)) 
    \pix_green_4[7]_i_6 
       (.I0(p_4_in[8]),
        .I1(p_2_in[8]),
        .I2(sel_line_3_reg_n_0),
        .I3(sel_col_3_reg_n_0),
        .I4(p_1_in_0[7]),
        .O(\pix_green_4[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h6FF66006)) 
    \pix_green_4[7]_i_7 
       (.I0(p_4_in[7]),
        .I1(p_2_in[7]),
        .I2(sel_line_3_reg_n_0),
        .I3(sel_col_3_reg_n_0),
        .I4(p_1_in_0[6]),
        .O(\pix_green_4[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h6FF66006)) 
    \pix_green_4[7]_i_8 
       (.I0(p_4_in[6]),
        .I1(p_2_in[6]),
        .I2(sel_line_3_reg_n_0),
        .I3(sel_col_3_reg_n_0),
        .I4(p_1_in_0[5]),
        .O(\pix_green_4[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h6FF66006)) 
    \pix_green_4[7]_i_9 
       (.I0(p_4_in[5]),
        .I1(p_2_in[5]),
        .I2(sel_line_3_reg_n_0),
        .I3(sel_col_3_reg_n_0),
        .I4(p_1_in_0[4]),
        .O(\pix_green_4[7]_i_9_n_0 ));
  FDRE \pix_green_4_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\pix_green_4_reg[10]_i_1_n_5 ),
        .Q(Q[2]),
        .R(1'b0));
  CARRY4 \pix_green_4_reg[10]_i_1 
       (.CI(\pix_green_4_reg[7]_i_1_n_0 ),
        .CO({\NLW_pix_green_4_reg[10]_i_1_CO_UNCONNECTED [3:2],\pix_green_4_reg[10]_i_1_n_2 ,\pix_green_4_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\pix_green_4[10]_i_2_n_0 ,\pix_green_4[10]_i_3_n_0 }),
        .O({\NLW_pix_green_4_reg[10]_i_1_O_UNCONNECTED [3],\pix_green_4_reg[10]_i_1_n_5 ,\pix_green_4_reg[10]_i_1_n_6 ,\pix_green_4_reg[10]_i_1_n_7 }),
        .S({1'b0,\pix_green_4[10]_i_4_n_0 ,\pix_green_4[10]_i_5_n_0 ,\pix_green_4[10]_i_6_n_0 }));
  FDRE \pix_green_4_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\pix_green_4_reg[3]_i_1_n_4 ),
        .Q(vcol_green[0]),
        .R(1'b0));
  CARRY4 \pix_green_4_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\pix_green_4_reg[3]_i_1_n_0 ,\pix_green_4_reg[3]_i_1_n_1 ,\pix_green_4_reg[3]_i_1_n_2 ,\pix_green_4_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pix_green_4[3]_i_2_n_0 ,\pix_green_4[3]_i_3_n_0 ,\pix_green_4[3]_i_4_n_0 ,\pix_green_4[3]_i_5_n_0 }),
        .O({\pix_green_4_reg[3]_i_1_n_4 ,\NLW_pix_green_4_reg[3]_i_1_O_UNCONNECTED [2:0]}),
        .S({\pix_green_4[3]_i_6_n_0 ,\pix_green_4[3]_i_7_n_0 ,\pix_green_4[3]_i_8_n_0 ,\pix_green_4[3]_i_9_n_0 }));
  FDRE \pix_green_4_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\pix_green_4_reg[7]_i_1_n_7 ),
        .Q(vcol_green[1]),
        .R(1'b0));
  FDRE \pix_green_4_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\pix_green_4_reg[7]_i_1_n_6 ),
        .Q(vcol_green[2]),
        .R(1'b0));
  FDRE \pix_green_4_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\pix_green_4_reg[7]_i_1_n_5 ),
        .Q(vcol_green[3]),
        .R(1'b0));
  FDRE \pix_green_4_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\pix_green_4_reg[7]_i_1_n_4 ),
        .Q(vcol_green[4]),
        .R(1'b0));
  CARRY4 \pix_green_4_reg[7]_i_1 
       (.CI(\pix_green_4_reg[3]_i_1_n_0 ),
        .CO({\pix_green_4_reg[7]_i_1_n_0 ,\pix_green_4_reg[7]_i_1_n_1 ,\pix_green_4_reg[7]_i_1_n_2 ,\pix_green_4_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pix_green_4[7]_i_2_n_0 ,\pix_green_4[7]_i_3_n_0 ,\pix_green_4[7]_i_4_n_0 ,\pix_green_4[7]_i_5_n_0 }),
        .O({\pix_green_4_reg[7]_i_1_n_4 ,\pix_green_4_reg[7]_i_1_n_5 ,\pix_green_4_reg[7]_i_1_n_6 ,\pix_green_4_reg[7]_i_1_n_7 }),
        .S({\pix_green_4[7]_i_6_n_0 ,\pix_green_4[7]_i_7_n_0 ,\pix_green_4[7]_i_8_n_0 ,\pix_green_4[7]_i_9_n_0 }));
  FDRE \pix_green_4_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\pix_green_4_reg[10]_i_1_n_7 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \pix_green_4_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\pix_green_4_reg[10]_i_1_n_6 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \pix_l02c0_3_reg[0] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(p_4_in[1]),
        .Q(pix_l02c0_3[0]),
        .R(1'b0));
  FDRE \pix_l02c0_3_reg[1] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(p_4_in[2]),
        .Q(pix_l02c0_3[1]),
        .R(1'b0));
  FDRE \pix_l02c0_3_reg[2] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(p_4_in[3]),
        .Q(pix_l02c0_3[2]),
        .R(1'b0));
  FDRE \pix_l02c0_3_reg[3] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(p_4_in[4]),
        .Q(pix_l02c0_3[3]),
        .R(1'b0));
  FDRE \pix_l02c0_3_reg[4] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(p_4_in[5]),
        .Q(pix_l02c0_3[4]),
        .R(1'b0));
  FDRE \pix_l02c0_3_reg[5] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(p_4_in[6]),
        .Q(pix_l02c0_3[5]),
        .R(1'b0));
  FDRE \pix_l02c0_3_reg[6] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(p_4_in[7]),
        .Q(pix_l02c0_3[6]),
        .R(1'b0));
  FDRE \pix_l02c0_3_reg[7] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(p_4_in[8]),
        .Q(pix_l02c0_3[7]),
        .R(1'b0));
  FDRE \pix_l02c0_3_reg[8] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(p_4_in[9]),
        .Q(pix_l02c0_3[8]),
        .R(1'b0));
  FDRE \pix_l02c0_3_reg[9] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(p_4_in[10]),
        .Q(pix_l02c0_3[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_l02c1_3[3]_i_2 
       (.I0(lbuf_raw_do[12]),
        .I1(lbuf_wdata_3_0[3]),
        .O(\pix_l02c1_3[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_l02c1_3[3]_i_3 
       (.I0(lbuf_raw_do[11]),
        .I1(lbuf_wdata_3_0[2]),
        .O(\pix_l02c1_3[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_l02c1_3[3]_i_4 
       (.I0(lbuf_raw_do[10]),
        .I1(lbuf_wdata_3_0[1]),
        .O(\pix_l02c1_3[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_l02c1_3[3]_i_5 
       (.I0(lbuf_raw_do[9]),
        .I1(lbuf_wdata_3_0[0]),
        .O(\pix_l02c1_3[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_l02c1_3[7]_i_2 
       (.I0(lbuf_raw_dop[0]),
        .I1(lbuf_wdata_3_0[7]),
        .O(\pix_l02c1_3[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_l02c1_3[7]_i_3 
       (.I0(lbuf_raw_do[15]),
        .I1(lbuf_wdata_3_0[6]),
        .O(\pix_l02c1_3[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_l02c1_3[7]_i_4 
       (.I0(lbuf_raw_do[14]),
        .I1(lbuf_wdata_3_0[5]),
        .O(\pix_l02c1_3[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_l02c1_3[7]_i_5 
       (.I0(lbuf_raw_do[13]),
        .I1(lbuf_wdata_3_0[4]),
        .O(\pix_l02c1_3[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_l02c1_3[9]_i_2 
       (.I0(lbuf_raw_dop[1]),
        .I1(lbuf_wdata_3_0[8]),
        .O(\pix_l02c1_3[9]_i_2_n_0 ));
  FDRE \pix_l02c1_3_reg[0] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(R[0]),
        .Q(p_4_in[1]),
        .R(1'b0));
  FDRE \pix_l02c1_3_reg[1] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(R[1]),
        .Q(p_4_in[2]),
        .R(1'b0));
  FDRE \pix_l02c1_3_reg[2] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(R[2]),
        .Q(p_4_in[3]),
        .R(1'b0));
  FDRE \pix_l02c1_3_reg[3] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(R[3]),
        .Q(p_4_in[4]),
        .R(1'b0));
  FDRE \pix_l02c1_3_reg[4] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(R[4]),
        .Q(p_4_in[5]),
        .R(1'b0));
  FDRE \pix_l02c1_3_reg[5] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(R[5]),
        .Q(p_4_in[6]),
        .R(1'b0));
  FDRE \pix_l02c1_3_reg[6] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(R[6]),
        .Q(p_4_in[7]),
        .R(1'b0));
  FDRE \pix_l02c1_3_reg[7] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(R[7]),
        .Q(p_4_in[8]),
        .R(1'b0));
  FDRE \pix_l02c1_3_reg[8] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(R[8]),
        .Q(p_4_in[9]),
        .R(1'b0));
  FDRE \pix_l02c1_3_reg[9] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(R[9]),
        .Q(p_4_in[10]),
        .R(1'b0));
  FDRE \pix_l1c0_3_reg[0] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(p_1_in_0[2]),
        .Q(pix_l1c0_3[0]),
        .R(1'b0));
  FDRE \pix_l1c0_3_reg[1] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(p_1_in_0[3]),
        .Q(pix_l1c0_3[1]),
        .R(1'b0));
  FDRE \pix_l1c0_3_reg[2] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(p_1_in_0[4]),
        .Q(pix_l1c0_3[2]),
        .R(1'b0));
  FDRE \pix_l1c0_3_reg[3] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(p_1_in_0[5]),
        .Q(pix_l1c0_3[3]),
        .R(1'b0));
  FDRE \pix_l1c0_3_reg[4] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(p_1_in_0[6]),
        .Q(pix_l1c0_3[4]),
        .R(1'b0));
  FDRE \pix_l1c0_3_reg[5] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(p_1_in_0[7]),
        .Q(pix_l1c0_3[5]),
        .R(1'b0));
  FDRE \pix_l1c0_3_reg[6] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(p_1_in_0[8]),
        .Q(pix_l1c0_3[6]),
        .R(1'b0));
  FDRE \pix_l1c0_3_reg[7] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(p_1_in_0[9]),
        .Q(pix_l1c0_3[7]),
        .R(1'b0));
  FDRE \pix_l1c0_3_reg[8] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(p_1_in_0[10]),
        .Q(pix_l1c0_3[8]),
        .R(1'b0));
  FDRE \pix_l1c1_3_reg[0] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(lbuf_raw_do[0]),
        .Q(p_1_in_0[2]),
        .R(1'b0));
  FDRE \pix_l1c1_3_reg[1] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(lbuf_raw_do[1]),
        .Q(p_1_in_0[3]),
        .R(1'b0));
  FDRE \pix_l1c1_3_reg[2] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(lbuf_raw_do[2]),
        .Q(p_1_in_0[4]),
        .R(1'b0));
  FDRE \pix_l1c1_3_reg[3] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(lbuf_raw_do[3]),
        .Q(p_1_in_0[5]),
        .R(1'b0));
  FDRE \pix_l1c1_3_reg[4] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(lbuf_raw_do[4]),
        .Q(p_1_in_0[6]),
        .R(1'b0));
  FDRE \pix_l1c1_3_reg[5] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(lbuf_raw_do[5]),
        .Q(p_1_in_0[7]),
        .R(1'b0));
  FDRE \pix_l1c1_3_reg[6] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(lbuf_raw_do[6]),
        .Q(p_1_in_0[8]),
        .R(1'b0));
  FDRE \pix_l1c1_3_reg[7] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(lbuf_raw_do[7]),
        .Q(p_1_in_0[9]),
        .R(1'b0));
  FDRE \pix_l1c1_3_reg[8] 
       (.C(clk),
        .CE(valid_x[3]),
        .D(lbuf_raw_do[8]),
        .Q(p_1_in_0[10]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \pix_red_4[10]_i_1 
       (.I0(p_1_in_0[10]),
        .I1(sel_col_3_reg_n_0),
        .I2(sel_line_3_reg_n_0),
        .I3(p_2_in[10]),
        .I4(p_4_in[10]),
        .I5(\pix_red_4_reg[10]_i_3_n_1 ),
        .O(\pix_red_4[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_red_4[10]_i_4 
       (.I0(pix_l1c0_3[8]),
        .I1(lbuf_raw_do[8]),
        .O(\pix_red_4[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_red_4[10]_i_5 
       (.I0(pix_l02c0_3[9]),
        .I1(R[9]),
        .O(\pix_red_4[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_red_4[10]_i_6 
       (.I0(pix_l02c0_3[8]),
        .I1(R[8]),
        .O(\pix_red_4[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \pix_red_4[3]_i_1 
       (.I0(p_1_in_0[3]),
        .I1(sel_col_3_reg_n_0),
        .I2(sel_line_3_reg_n_0),
        .I3(p_2_in[3]),
        .I4(p_4_in[3]),
        .I5(\pix_red_4_reg[3]_i_2_n_4 ),
        .O(\pix_red_4[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_red_4[3]_i_3 
       (.I0(pix_l02c0_3[3]),
        .I1(R[3]),
        .O(\pix_red_4[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_red_4[3]_i_4 
       (.I0(pix_l02c0_3[2]),
        .I1(R[2]),
        .O(\pix_red_4[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_red_4[3]_i_5 
       (.I0(pix_l02c0_3[1]),
        .I1(R[1]),
        .O(\pix_red_4[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_red_4[3]_i_6 
       (.I0(pix_l02c0_3[0]),
        .I1(R[0]),
        .O(\pix_red_4[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \pix_red_4[4]_i_1 
       (.I0(p_1_in_0[4]),
        .I1(sel_col_3_reg_n_0),
        .I2(sel_line_3_reg_n_0),
        .I3(p_2_in[4]),
        .I4(p_4_in[4]),
        .I5(\pix_red_4_reg[7]_i_2_n_7 ),
        .O(\pix_red_4[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_red_4[4]_i_3 
       (.I0(pix_l1c0_3[3]),
        .I1(lbuf_raw_do[3]),
        .O(\pix_red_4[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_red_4[4]_i_4 
       (.I0(pix_l1c0_3[2]),
        .I1(lbuf_raw_do[2]),
        .O(\pix_red_4[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_red_4[4]_i_5 
       (.I0(pix_l1c0_3[1]),
        .I1(lbuf_raw_do[1]),
        .O(\pix_red_4[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_red_4[4]_i_6 
       (.I0(pix_l1c0_3[0]),
        .I1(lbuf_raw_do[0]),
        .O(\pix_red_4[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \pix_red_4[5]_i_1 
       (.I0(p_1_in_0[5]),
        .I1(sel_col_3_reg_n_0),
        .I2(sel_line_3_reg_n_0),
        .I3(p_2_in[5]),
        .I4(p_4_in[5]),
        .I5(\pix_red_4_reg[7]_i_2_n_6 ),
        .O(\pix_red_4[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \pix_red_4[6]_i_1 
       (.I0(p_1_in_0[6]),
        .I1(sel_col_3_reg_n_0),
        .I2(sel_line_3_reg_n_0),
        .I3(p_2_in[6]),
        .I4(p_4_in[6]),
        .I5(\pix_red_4_reg[7]_i_2_n_5 ),
        .O(\pix_red_4[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \pix_red_4[7]_i_1 
       (.I0(p_1_in_0[7]),
        .I1(sel_col_3_reg_n_0),
        .I2(sel_line_3_reg_n_0),
        .I3(p_2_in[7]),
        .I4(p_4_in[7]),
        .I5(\pix_red_4_reg[7]_i_2_n_4 ),
        .O(\pix_red_4[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_red_4[7]_i_3 
       (.I0(pix_l02c0_3[7]),
        .I1(R[7]),
        .O(\pix_red_4[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_red_4[7]_i_4 
       (.I0(pix_l02c0_3[6]),
        .I1(R[6]),
        .O(\pix_red_4[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_red_4[7]_i_5 
       (.I0(pix_l02c0_3[5]),
        .I1(R[5]),
        .O(\pix_red_4[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_red_4[7]_i_6 
       (.I0(pix_l02c0_3[4]),
        .I1(R[4]),
        .O(\pix_red_4[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \pix_red_4[8]_i_1 
       (.I0(p_1_in_0[8]),
        .I1(sel_col_3_reg_n_0),
        .I2(sel_line_3_reg_n_0),
        .I3(p_2_in[8]),
        .I4(p_4_in[8]),
        .I5(\pix_red_4_reg[10]_i_3_n_7 ),
        .O(\pix_red_4[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_red_4[8]_i_3 
       (.I0(pix_l1c0_3[7]),
        .I1(lbuf_raw_do[7]),
        .O(\pix_red_4[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_red_4[8]_i_4 
       (.I0(pix_l1c0_3[6]),
        .I1(lbuf_raw_do[6]),
        .O(\pix_red_4[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_red_4[8]_i_5 
       (.I0(pix_l1c0_3[5]),
        .I1(lbuf_raw_do[5]),
        .O(\pix_red_4[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \pix_red_4[8]_i_6 
       (.I0(pix_l1c0_3[4]),
        .I1(lbuf_raw_do[4]),
        .O(\pix_red_4[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEF2CEC23E320E02)) 
    \pix_red_4[9]_i_1 
       (.I0(p_1_in_0[9]),
        .I1(sel_col_3_reg_n_0),
        .I2(sel_line_3_reg_n_0),
        .I3(p_2_in[9]),
        .I4(p_4_in[9]),
        .I5(\pix_red_4_reg[10]_i_3_n_6 ),
        .O(\pix_red_4[9]_i_1_n_0 ));
  FDRE \pix_red_4_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\pix_red_4[10]_i_1_n_0 ),
        .Q(vcol_red[7]),
        .R(1'b0));
  CARRY4 \pix_red_4_reg[10]_i_2 
       (.CI(\pix_red_4_reg[8]_i_2_n_0 ),
        .CO({\NLW_pix_red_4_reg[10]_i_2_CO_UNCONNECTED [3:2],p_2_in[10],\NLW_pix_red_4_reg[10]_i_2_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pix_l1c0_3[8]}),
        .O({\NLW_pix_red_4_reg[10]_i_2_O_UNCONNECTED [3:1],p_2_in[9]}),
        .S({1'b0,1'b0,1'b1,\pix_red_4[10]_i_4_n_0 }));
  CARRY4 \pix_red_4_reg[10]_i_3 
       (.CI(\pix_red_4_reg[7]_i_2_n_0 ),
        .CO({\NLW_pix_red_4_reg[10]_i_3_CO_UNCONNECTED [3],\pix_red_4_reg[10]_i_3_n_1 ,\NLW_pix_red_4_reg[10]_i_3_CO_UNCONNECTED [1],\pix_red_4_reg[10]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pix_l02c0_3[9:8]}),
        .O({\NLW_pix_red_4_reg[10]_i_3_O_UNCONNECTED [3:2],\pix_red_4_reg[10]_i_3_n_6 ,\pix_red_4_reg[10]_i_3_n_7 }),
        .S({1'b0,1'b1,\pix_red_4[10]_i_5_n_0 ,\pix_red_4[10]_i_6_n_0 }));
  FDRE \pix_red_4_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\pix_red_4[3]_i_1_n_0 ),
        .Q(vcol_red[0]),
        .R(1'b0));
  CARRY4 \pix_red_4_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\pix_red_4_reg[3]_i_2_n_0 ,\pix_red_4_reg[3]_i_2_n_1 ,\pix_red_4_reg[3]_i_2_n_2 ,\pix_red_4_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(pix_l02c0_3[3:0]),
        .O({\pix_red_4_reg[3]_i_2_n_4 ,\NLW_pix_red_4_reg[3]_i_2_O_UNCONNECTED [2:0]}),
        .S({\pix_red_4[3]_i_3_n_0 ,\pix_red_4[3]_i_4_n_0 ,\pix_red_4[3]_i_5_n_0 ,\pix_red_4[3]_i_6_n_0 }));
  FDRE \pix_red_4_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\pix_red_4[4]_i_1_n_0 ),
        .Q(vcol_red[1]),
        .R(1'b0));
  CARRY4 \pix_red_4_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\pix_red_4_reg[4]_i_2_n_0 ,\pix_red_4_reg[4]_i_2_n_1 ,\pix_red_4_reg[4]_i_2_n_2 ,\pix_red_4_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(pix_l1c0_3[3:0]),
        .O(p_2_in[4:1]),
        .S({\pix_red_4[4]_i_3_n_0 ,\pix_red_4[4]_i_4_n_0 ,\pix_red_4[4]_i_5_n_0 ,\pix_red_4[4]_i_6_n_0 }));
  FDRE \pix_red_4_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\pix_red_4[5]_i_1_n_0 ),
        .Q(vcol_red[2]),
        .R(1'b0));
  FDRE \pix_red_4_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\pix_red_4[6]_i_1_n_0 ),
        .Q(vcol_red[3]),
        .R(1'b0));
  FDRE \pix_red_4_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\pix_red_4[7]_i_1_n_0 ),
        .Q(vcol_red[4]),
        .R(1'b0));
  CARRY4 \pix_red_4_reg[7]_i_2 
       (.CI(\pix_red_4_reg[3]_i_2_n_0 ),
        .CO({\pix_red_4_reg[7]_i_2_n_0 ,\pix_red_4_reg[7]_i_2_n_1 ,\pix_red_4_reg[7]_i_2_n_2 ,\pix_red_4_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(pix_l02c0_3[7:4]),
        .O({\pix_red_4_reg[7]_i_2_n_4 ,\pix_red_4_reg[7]_i_2_n_5 ,\pix_red_4_reg[7]_i_2_n_6 ,\pix_red_4_reg[7]_i_2_n_7 }),
        .S({\pix_red_4[7]_i_3_n_0 ,\pix_red_4[7]_i_4_n_0 ,\pix_red_4[7]_i_5_n_0 ,\pix_red_4[7]_i_6_n_0 }));
  FDRE \pix_red_4_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\pix_red_4[8]_i_1_n_0 ),
        .Q(vcol_red[5]),
        .R(1'b0));
  CARRY4 \pix_red_4_reg[8]_i_2 
       (.CI(\pix_red_4_reg[4]_i_2_n_0 ),
        .CO({\pix_red_4_reg[8]_i_2_n_0 ,\pix_red_4_reg[8]_i_2_n_1 ,\pix_red_4_reg[8]_i_2_n_2 ,\pix_red_4_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(pix_l1c0_3[7:4]),
        .O(p_2_in[8:5]),
        .S({\pix_red_4[8]_i_3_n_0 ,\pix_red_4[8]_i_4_n_0 ,\pix_red_4[8]_i_5_n_0 ,\pix_red_4[8]_i_6_n_0 }));
  FDRE \pix_red_4_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\pix_red_4[9]_i_1_n_0 ),
        .Q(vcol_red[6]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA888AFFFABBBA000)) 
    sel_col_3_i_1
       (.I0(\reg_reg[17] [10]),
        .I1(last_x[3]),
        .I2(sof_x[2]),
        .I3(valid_x[2]),
        .I4(valid_x[3]),
        .I5(sel_col_3_reg_n_0),
        .O(sel_col_3_i_1_n_0));
  FDRE sel_col_3_reg
       (.C(clk),
        .CE(1'b1),
        .D(sel_col_3_i_1_n_0),
        .Q(sel_col_3_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA333AFFFACCCA000)) 
    sel_line_3_i_1
       (.I0(\reg_reg[17] [11]),
        .I1(last_x[3]),
        .I2(sof_x[2]),
        .I3(valid_x[2]),
        .I4(valid_x[3]),
        .I5(sel_line_3_reg_n_0),
        .O(sel_line_3_i_1_n_0));
  FDRE sel_line_3_reg
       (.C(clk),
        .CE(1'b1),
        .D(sel_line_3_i_1_n_0),
        .Q(sel_line_3_reg_n_0),
        .R(1'b0));
  FDRE \sof_x_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(vum_sof_reg),
        .Q(sof_x[1]),
        .R(1'b0));
  FDRE \sof_x_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(sof_x[1]),
        .Q(sof_x[2]),
        .R(1'b0));
  FDRE \sof_x_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(sof_x[2]),
        .Q(sof_x[3]),
        .R(1'b0));
  FDRE \sof_x_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(sof_x[3]),
        .Q(vcol_sof),
        .R(1'b0));
  FDRE \valid_x_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(D),
        .Q(valid_x[1]),
        .R(1'b0));
  FDRE \valid_x_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(valid_x[1]),
        .Q(valid_x[2]),
        .R(1'b0));
  FDRE \valid_x_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(valid_x[2]),
        .Q(valid_x[3]),
        .R(1'b0));
  FDRE \valid_x_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(valid_x[3]),
        .Q(vcol_valid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vfm_data[0]_i_1 
       (.I0(vcfm_data[0]),
        .I1(vcol_blue[3]),
        .I2(\reg_reg[17] [0]),
        .I3(p_1_in[0]),
        .I4(\reg_reg[17] [1]),
        .I5(DO[0]),
        .O(\vfm_data_reg[26] [0]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[0]_i_2 
       (.I0(vcol_blue[0]),
        .I1(vcol_red[0]),
        .I2(\reg_reg[17] [2]),
        .I3(\reg_reg[17] [3]),
        .I4(vcol_green[0]),
        .O(vcfm_data[0]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[10]_i_2 
       (.I0(vcol_blue[2]),
        .I1(vcol_red[2]),
        .I2(\reg_reg[17] [4]),
        .I3(\reg_reg[17] [5]),
        .I4(vcol_green[2]),
        .O(\vfm_data_reg[10] [2]));
  LUT6 #(
    .INIT(64'hBC8CFFFFB0800000)) 
    \vfm_data[11]_i_3 
       (.I0(vcol_blue[3]),
        .I1(\reg_reg[17] [4]),
        .I2(\reg_reg[17] [5]),
        .I3(vcol_green[3]),
        .I4(\reg_reg[17] [1]),
        .I5(vcol_red[3]),
        .O(\vfm_data_reg[11] ));
  LUT6 #(
    .INIT(64'hBC8CFFFFB0800000)) 
    \vfm_data[12]_i_3 
       (.I0(vcol_blue[4]),
        .I1(\reg_reg[17] [4]),
        .I2(\reg_reg[17] [5]),
        .I3(vcol_green[4]),
        .I4(\reg_reg[17] [1]),
        .I5(vcol_red[4]),
        .O(\vfm_data_reg[12] ));
  LUT6 #(
    .INIT(64'hBC8CFFFFB0800000)) 
    \vfm_data[13]_i_3 
       (.I0(vcol_blue[5]),
        .I1(\reg_reg[17] [4]),
        .I2(\reg_reg[17] [5]),
        .I3(Q[0]),
        .I4(\reg_reg[17] [1]),
        .I5(vcol_red[5]),
        .O(\vfm_data_reg[13] ));
  LUT6 #(
    .INIT(64'hBC8CFFFFB0800000)) 
    \vfm_data[14]_i_3 
       (.I0(vcol_blue[6]),
        .I1(\reg_reg[17] [4]),
        .I2(\reg_reg[17] [5]),
        .I3(Q[1]),
        .I4(\reg_reg[17] [1]),
        .I5(vcol_red[6]),
        .O(\vfm_data_reg[14] ));
  LUT6 #(
    .INIT(64'hBC8CFFFFB0800000)) 
    \vfm_data[15]_i_3 
       (.I0(vcol_blue[7]),
        .I1(\reg_reg[17] [4]),
        .I2(\reg_reg[17] [5]),
        .I3(Q[2]),
        .I4(\reg_reg[17] [1]),
        .I5(vcol_red[7]),
        .O(\vfm_data_reg[15] ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \vfm_data[16]_i_1 
       (.I0(vcfm_data[16]),
        .I1(vcol_blue[3]),
        .I2(\reg_reg[17] [0]),
        .I3(DO[8]),
        .I4(\reg_reg[17] [1]),
        .O(\vfm_data_reg[26] [8]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[16]_i_2 
       (.I0(vcol_blue[0]),
        .I1(vcol_red[0]),
        .I2(\reg_reg[17] [6]),
        .I3(\reg_reg[17] [7]),
        .I4(vcol_green[0]),
        .O(vcfm_data[16]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \vfm_data[17]_i_1 
       (.I0(vcfm_data[17]),
        .I1(vcol_blue[4]),
        .I2(\reg_reg[17] [0]),
        .I3(DO[9]),
        .I4(\reg_reg[17] [1]),
        .O(\vfm_data_reg[26] [9]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[17]_i_2 
       (.I0(vcol_blue[1]),
        .I1(vcol_red[1]),
        .I2(\reg_reg[17] [6]),
        .I3(\reg_reg[17] [7]),
        .I4(vcol_green[1]),
        .O(vcfm_data[17]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \vfm_data[18]_i_1 
       (.I0(vcfm_data[18]),
        .I1(vcol_blue[5]),
        .I2(\reg_reg[17] [0]),
        .I3(DO[10]),
        .I4(\reg_reg[17] [1]),
        .O(\vfm_data_reg[26] [10]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[18]_i_2 
       (.I0(vcol_blue[2]),
        .I1(vcol_red[2]),
        .I2(\reg_reg[17] [6]),
        .I3(\reg_reg[17] [7]),
        .I4(vcol_green[2]),
        .O(vcfm_data[18]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \vfm_data[19]_i_1 
       (.I0(vcfm_data[19]),
        .I1(vcol_blue[6]),
        .I2(\reg_reg[17] [0]),
        .I3(DO[11]),
        .I4(\reg_reg[17] [1]),
        .O(\vfm_data_reg[26] [11]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[19]_i_2 
       (.I0(vcol_blue[3]),
        .I1(vcol_red[3]),
        .I2(\reg_reg[17] [6]),
        .I3(\reg_reg[17] [7]),
        .I4(vcol_green[3]),
        .O(vcfm_data[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vfm_data[1]_i_1 
       (.I0(vcfm_data[1]),
        .I1(vcol_blue[4]),
        .I2(\reg_reg[17] [0]),
        .I3(p_1_in[1]),
        .I4(\reg_reg[17] [1]),
        .I5(DO[1]),
        .O(\vfm_data_reg[26] [1]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[1]_i_2 
       (.I0(vcol_blue[1]),
        .I1(vcol_red[1]),
        .I2(\reg_reg[17] [2]),
        .I3(\reg_reg[17] [3]),
        .I4(vcol_green[1]),
        .O(vcfm_data[1]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \vfm_data[20]_i_1 
       (.I0(vcfm_data[20]),
        .I1(vcol_blue[7]),
        .I2(\reg_reg[17] [0]),
        .I3(DO[12]),
        .I4(\reg_reg[17] [1]),
        .O(\vfm_data_reg[26] [12]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[20]_i_2 
       (.I0(vcol_blue[4]),
        .I1(vcol_red[4]),
        .I2(\reg_reg[17] [6]),
        .I3(\reg_reg[17] [7]),
        .I4(vcol_green[4]),
        .O(vcfm_data[20]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \vfm_data[21]_i_1 
       (.I0(vcfm_data[21]),
        .I1(vcol_green[2]),
        .I2(\reg_reg[17] [0]),
        .I3(DO[13]),
        .I4(\reg_reg[17] [1]),
        .O(\vfm_data_reg[26] [13]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[21]_i_2 
       (.I0(vcol_blue[5]),
        .I1(vcol_red[5]),
        .I2(\reg_reg[17] [6]),
        .I3(\reg_reg[17] [7]),
        .I4(Q[0]),
        .O(vcfm_data[21]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \vfm_data[22]_i_1 
       (.I0(vcfm_data[22]),
        .I1(vcol_green[3]),
        .I2(\reg_reg[17] [0]),
        .I3(DO[14]),
        .I4(\reg_reg[17] [1]),
        .O(\vfm_data_reg[26] [14]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[22]_i_2 
       (.I0(vcol_blue[6]),
        .I1(vcol_red[6]),
        .I2(\reg_reg[17] [6]),
        .I3(\reg_reg[17] [7]),
        .I4(Q[1]),
        .O(vcfm_data[22]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \vfm_data[23]_i_1 
       (.I0(vcfm_data[23]),
        .I1(vcol_green[4]),
        .I2(\reg_reg[17] [0]),
        .I3(DO[15]),
        .I4(\reg_reg[17] [1]),
        .O(\vfm_data_reg[26] [15]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[23]_i_2 
       (.I0(vcol_blue[7]),
        .I1(vcol_red[7]),
        .I2(\reg_reg[17] [6]),
        .I3(\reg_reg[17] [7]),
        .I4(Q[2]),
        .O(vcfm_data[23]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \vfm_data[24]_i_1 
       (.I0(vcfm_data_reg[24]),
        .I1(Q[0]),
        .I2(\reg_reg[17] [0]),
        .I3(DO[16]),
        .I4(\reg_reg[17] [1]),
        .O(\vfm_data_reg[26] [16]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[24]_i_2 
       (.I0(vcol_blue[0]),
        .I1(vcol_red[0]),
        .I2(\reg_reg[17] [8]),
        .I3(\reg_reg[17] [9]),
        .I4(vcol_green[0]),
        .O(vcfm_data_reg[24]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \vfm_data[25]_i_1 
       (.I0(vcfm_data_reg[25]),
        .I1(Q[1]),
        .I2(\reg_reg[17] [0]),
        .I3(DO[17]),
        .I4(\reg_reg[17] [1]),
        .O(\vfm_data_reg[26] [17]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[25]_i_2 
       (.I0(vcol_blue[1]),
        .I1(vcol_red[1]),
        .I2(\reg_reg[17] [8]),
        .I3(\reg_reg[17] [9]),
        .I4(vcol_green[1]),
        .O(vcfm_data_reg[25]));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \vfm_data[26]_i_1 
       (.I0(vcfm_data_reg[26]),
        .I1(Q[2]),
        .I2(\reg_reg[17] [0]),
        .I3(DO[18]),
        .I4(\reg_reg[17] [1]),
        .O(\vfm_data_reg[26] [18]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[26]_i_2 
       (.I0(vcol_blue[2]),
        .I1(vcol_red[2]),
        .I2(\reg_reg[17] [8]),
        .I3(\reg_reg[17] [9]),
        .I4(vcol_green[2]),
        .O(vcfm_data_reg[26]));
  LUT6 #(
    .INIT(64'hBC8CFFFFB0800000)) 
    \vfm_data[27]_i_2 
       (.I0(vcol_blue[3]),
        .I1(\reg_reg[17] [8]),
        .I2(\reg_reg[17] [9]),
        .I3(vcol_green[3]),
        .I4(\reg_reg[17] [1]),
        .I5(vcol_red[3]),
        .O(\vfm_data_reg[27] ));
  LUT6 #(
    .INIT(64'hBC8CFFFFB0800000)) 
    \vfm_data[28]_i_2 
       (.I0(vcol_blue[4]),
        .I1(\reg_reg[17] [8]),
        .I2(\reg_reg[17] [9]),
        .I3(vcol_green[4]),
        .I4(\reg_reg[17] [1]),
        .I5(vcol_red[4]),
        .O(\vfm_data_reg[28] ));
  LUT6 #(
    .INIT(64'hBC8CFFFFB0800000)) 
    \vfm_data[29]_i_2 
       (.I0(vcol_blue[5]),
        .I1(\reg_reg[17] [8]),
        .I2(\reg_reg[17] [9]),
        .I3(Q[0]),
        .I4(\reg_reg[17] [1]),
        .I5(vcol_red[5]),
        .O(\vfm_data_reg[29] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vfm_data[2]_i_1 
       (.I0(vcfm_data[2]),
        .I1(vcol_blue[5]),
        .I2(\reg_reg[17] [0]),
        .I3(p_1_in[2]),
        .I4(\reg_reg[17] [1]),
        .I5(DO[2]),
        .O(\vfm_data_reg[26] [2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[2]_i_2 
       (.I0(vcol_blue[2]),
        .I1(vcol_red[2]),
        .I2(\reg_reg[17] [2]),
        .I3(\reg_reg[17] [3]),
        .I4(vcol_green[2]),
        .O(vcfm_data[2]));
  LUT6 #(
    .INIT(64'hBC8CFFFFB0800000)) 
    \vfm_data[30]_i_2 
       (.I0(vcol_blue[6]),
        .I1(\reg_reg[17] [8]),
        .I2(\reg_reg[17] [9]),
        .I3(Q[1]),
        .I4(\reg_reg[17] [1]),
        .I5(vcol_red[6]),
        .O(\vfm_data_reg[30] ));
  LUT6 #(
    .INIT(64'hBC8CFFFFB0800000)) 
    \vfm_data[31]_i_2 
       (.I0(vcol_blue[7]),
        .I1(\reg_reg[17] [8]),
        .I2(\reg_reg[17] [9]),
        .I3(Q[2]),
        .I4(\reg_reg[17] [1]),
        .I5(vcol_red[7]),
        .O(\vfm_data_reg[31] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vfm_data[3]_i_1 
       (.I0(vcfm_data[3]),
        .I1(vcol_blue[6]),
        .I2(\reg_reg[17] [0]),
        .I3(p_1_in[3]),
        .I4(\reg_reg[17] [1]),
        .I5(DO[3]),
        .O(\vfm_data_reg[26] [3]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[3]_i_2 
       (.I0(vcol_blue[3]),
        .I1(vcol_red[3]),
        .I2(\reg_reg[17] [2]),
        .I3(\reg_reg[17] [3]),
        .I4(vcol_green[3]),
        .O(vcfm_data[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vfm_data[4]_i_1 
       (.I0(vcfm_data[4]),
        .I1(vcol_blue[7]),
        .I2(\reg_reg[17] [0]),
        .I3(p_1_in[4]),
        .I4(\reg_reg[17] [1]),
        .I5(DO[4]),
        .O(\vfm_data_reg[26] [4]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[4]_i_2 
       (.I0(vcol_blue[4]),
        .I1(vcol_red[4]),
        .I2(\reg_reg[17] [2]),
        .I3(\reg_reg[17] [3]),
        .I4(vcol_green[4]),
        .O(vcfm_data[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vfm_data[5]_i_1 
       (.I0(vcfm_data[5]),
        .I1(vcol_green[2]),
        .I2(\reg_reg[17] [0]),
        .I3(p_1_in[5]),
        .I4(\reg_reg[17] [1]),
        .I5(DO[5]),
        .O(\vfm_data_reg[26] [5]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[5]_i_2 
       (.I0(vcol_blue[5]),
        .I1(vcol_red[5]),
        .I2(\reg_reg[17] [2]),
        .I3(\reg_reg[17] [3]),
        .I4(Q[0]),
        .O(vcfm_data[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vfm_data[6]_i_1 
       (.I0(vcfm_data[6]),
        .I1(vcol_green[3]),
        .I2(\reg_reg[17] [0]),
        .I3(p_1_in[6]),
        .I4(\reg_reg[17] [1]),
        .I5(DO[6]),
        .O(\vfm_data_reg[26] [6]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[6]_i_2 
       (.I0(vcol_blue[6]),
        .I1(vcol_red[6]),
        .I2(\reg_reg[17] [2]),
        .I3(\reg_reg[17] [3]),
        .I4(Q[1]),
        .O(vcfm_data[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \vfm_data[7]_i_1 
       (.I0(vcfm_data[7]),
        .I1(vcol_green[4]),
        .I2(\reg_reg[17] [0]),
        .I3(p_1_in[7]),
        .I4(\reg_reg[17] [1]),
        .I5(DO[7]),
        .O(\vfm_data_reg[26] [7]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[7]_i_2 
       (.I0(vcol_blue[7]),
        .I1(vcol_red[7]),
        .I2(\reg_reg[17] [2]),
        .I3(\reg_reg[17] [3]),
        .I4(Q[2]),
        .O(vcfm_data[7]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[8]_i_2 
       (.I0(vcol_blue[0]),
        .I1(vcol_red[0]),
        .I2(\reg_reg[17] [4]),
        .I3(\reg_reg[17] [5]),
        .I4(vcol_green[0]),
        .O(\vfm_data_reg[10] [0]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \vfm_data[9]_i_2 
       (.I0(vcol_blue[1]),
        .I1(vcol_red[1]),
        .I2(\reg_reg[17] [4]),
        .I3(\reg_reg[17] [5]),
        .I4(vcol_green[1]),
        .O(\vfm_data_reg[10] [1]));
  LUT6 #(
    .INIT(64'hFF00FF00AAAAF3F3)) 
    vfm_last_i_1
       (.I0(vum_last_reg),
        .I1(\cnt_reg[16] ),
        .I2(DOP),
        .I3(vcol_last),
        .I4(\reg_reg[17] [1]),
        .I5(\reg_reg[17] [0]),
        .O(vfm_last_reg));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    vfm_sof_i_1
       (.I0(vum_sof_reg),
        .I1(vin_sof),
        .I2(vcol_sof),
        .I3(\reg_reg[17] [1]),
        .I4(\reg_reg[17] [0]),
        .O(vfm_sof_reg));
  LUT5 #(
    .INIT(32'hF0F0AACC)) 
    vfm_valid_i_1
       (.I0(D),
        .I1(pause_reg),
        .I2(vcol_valid),
        .I3(\reg_reg[17] [1]),
        .I4(\reg_reg[17] [0]),
        .O(vfm_valid_reg));
endmodule

(* ORIG_REF_NAME = "vid_packer" *) 
module TySOM_1_7Z030_mipi_csi_0_vid_packer
   (vout_valid,
    DIP,
    p_3_in,
    \cnt_reg[1]_0 ,
    \pix_fifo_cnt_reg[0] ,
    Q,
    out_valid_i0,
    clk,
    vcrop_valid,
    \reg_reg[1] ,
    vcrop_last,
    vcrop_sof,
    D,
    E,
    \rst_cnt_reg[3] );
  output vout_valid;
  output [1:0]DIP;
  output p_3_in;
  output \cnt_reg[1]_0 ;
  output [31:0]\pix_fifo_cnt_reg[0] ;
  input [0:0]Q;
  input out_valid_i0;
  input clk;
  input vcrop_valid;
  input [1:0]\reg_reg[1] ;
  input vcrop_last;
  input vcrop_sof;
  input [31:0]D;
  input [0:0]E;
  input \rst_cnt_reg[3] ;

  wire [31:0]D;
  wire [1:0]DIP;
  wire [0:0]E;
  wire [0:0]Q;
  wire clk;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt_reg[1]_0 ;
  wire \data[23]_i_1_n_0 ;
  wire \data[7]_i_1_n_0 ;
  wire out_last_i_1__1_n_0;
  wire out_sof_i_1__1_n_0;
  wire out_valid_i0;
  wire p_3_in;
  wire [31:0]\pix_fifo_cnt_reg[0] ;
  wire [1:0]\reg_reg[1] ;
  wire \rst_cnt_reg[3] ;
  wire vcrop_last;
  wire vcrop_sof;
  wire vcrop_valid;
  wire vout_valid;

  LUT6 #(
    .INIT(64'h0000000022226A22)) 
    \cnt[0]_i_1 
       (.I0(\cnt_reg[1]_0 ),
        .I1(vcrop_valid),
        .I2(\reg_reg[1] [0]),
        .I3(\reg_reg[1] [1]),
        .I4(vcrop_last),
        .I5(Q),
        .O(\cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006666A666)) 
    \cnt[1]_i_1 
       (.I0(p_3_in),
        .I1(vcrop_valid),
        .I2(\reg_reg[1] [1]),
        .I3(\reg_reg[1] [0]),
        .I4(\cnt_reg[1]_0 ),
        .I5(\rst_cnt_reg[3] ),
        .O(\cnt[1]_i_1_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(\cnt_reg[1]_0 ),
        .R(1'b0));
  FDRE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(p_3_in),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \data[23]_i_1 
       (.I0(vcrop_valid),
        .I1(\reg_reg[1] [0]),
        .I2(\reg_reg[1] [1]),
        .I3(p_3_in),
        .I4(\cnt_reg[1]_0 ),
        .O(\data[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h222A22AA)) 
    \data[7]_i_1 
       (.I0(vcrop_valid),
        .I1(\reg_reg[1] [1]),
        .I2(\reg_reg[1] [0]),
        .I3(p_3_in),
        .I4(\cnt_reg[1]_0 ),
        .O(\data[7]_i_1_n_0 ));
  FDRE \data_reg[0] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(D[0]),
        .Q(\pix_fifo_cnt_reg[0] [0]),
        .R(1'b0));
  FDRE \data_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(\pix_fifo_cnt_reg[0] [10]),
        .R(1'b0));
  FDRE \data_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(\pix_fifo_cnt_reg[0] [11]),
        .R(1'b0));
  FDRE \data_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(\pix_fifo_cnt_reg[0] [12]),
        .R(1'b0));
  FDRE \data_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(\pix_fifo_cnt_reg[0] [13]),
        .R(1'b0));
  FDRE \data_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(\pix_fifo_cnt_reg[0] [14]),
        .R(1'b0));
  FDRE \data_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(\pix_fifo_cnt_reg[0] [15]),
        .R(1'b0));
  FDRE \data_reg[16] 
       (.C(clk),
        .CE(\data[23]_i_1_n_0 ),
        .D(D[16]),
        .Q(\pix_fifo_cnt_reg[0] [16]),
        .R(1'b0));
  FDRE \data_reg[17] 
       (.C(clk),
        .CE(\data[23]_i_1_n_0 ),
        .D(D[17]),
        .Q(\pix_fifo_cnt_reg[0] [17]),
        .R(1'b0));
  FDRE \data_reg[18] 
       (.C(clk),
        .CE(\data[23]_i_1_n_0 ),
        .D(D[18]),
        .Q(\pix_fifo_cnt_reg[0] [18]),
        .R(1'b0));
  FDRE \data_reg[19] 
       (.C(clk),
        .CE(\data[23]_i_1_n_0 ),
        .D(D[19]),
        .Q(\pix_fifo_cnt_reg[0] [19]),
        .R(1'b0));
  FDRE \data_reg[1] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(D[1]),
        .Q(\pix_fifo_cnt_reg[0] [1]),
        .R(1'b0));
  FDRE \data_reg[20] 
       (.C(clk),
        .CE(\data[23]_i_1_n_0 ),
        .D(D[20]),
        .Q(\pix_fifo_cnt_reg[0] [20]),
        .R(1'b0));
  FDRE \data_reg[21] 
       (.C(clk),
        .CE(\data[23]_i_1_n_0 ),
        .D(D[21]),
        .Q(\pix_fifo_cnt_reg[0] [21]),
        .R(1'b0));
  FDRE \data_reg[22] 
       (.C(clk),
        .CE(\data[23]_i_1_n_0 ),
        .D(D[22]),
        .Q(\pix_fifo_cnt_reg[0] [22]),
        .R(1'b0));
  FDRE \data_reg[23] 
       (.C(clk),
        .CE(\data[23]_i_1_n_0 ),
        .D(D[23]),
        .Q(\pix_fifo_cnt_reg[0] [23]),
        .R(1'b0));
  FDRE \data_reg[24] 
       (.C(clk),
        .CE(vcrop_valid),
        .D(D[24]),
        .Q(\pix_fifo_cnt_reg[0] [24]),
        .R(1'b0));
  FDRE \data_reg[25] 
       (.C(clk),
        .CE(vcrop_valid),
        .D(D[25]),
        .Q(\pix_fifo_cnt_reg[0] [25]),
        .R(1'b0));
  FDRE \data_reg[26] 
       (.C(clk),
        .CE(vcrop_valid),
        .D(D[26]),
        .Q(\pix_fifo_cnt_reg[0] [26]),
        .R(1'b0));
  FDRE \data_reg[27] 
       (.C(clk),
        .CE(vcrop_valid),
        .D(D[27]),
        .Q(\pix_fifo_cnt_reg[0] [27]),
        .R(1'b0));
  FDRE \data_reg[28] 
       (.C(clk),
        .CE(vcrop_valid),
        .D(D[28]),
        .Q(\pix_fifo_cnt_reg[0] [28]),
        .R(1'b0));
  FDRE \data_reg[29] 
       (.C(clk),
        .CE(vcrop_valid),
        .D(D[29]),
        .Q(\pix_fifo_cnt_reg[0] [29]),
        .R(1'b0));
  FDRE \data_reg[2] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(D[2]),
        .Q(\pix_fifo_cnt_reg[0] [2]),
        .R(1'b0));
  FDRE \data_reg[30] 
       (.C(clk),
        .CE(vcrop_valid),
        .D(D[30]),
        .Q(\pix_fifo_cnt_reg[0] [30]),
        .R(1'b0));
  FDRE \data_reg[31] 
       (.C(clk),
        .CE(vcrop_valid),
        .D(D[31]),
        .Q(\pix_fifo_cnt_reg[0] [31]),
        .R(1'b0));
  FDRE \data_reg[3] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(D[3]),
        .Q(\pix_fifo_cnt_reg[0] [3]),
        .R(1'b0));
  FDRE \data_reg[4] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(D[4]),
        .Q(\pix_fifo_cnt_reg[0] [4]),
        .R(1'b0));
  FDRE \data_reg[5] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(D[5]),
        .Q(\pix_fifo_cnt_reg[0] [5]),
        .R(1'b0));
  FDRE \data_reg[6] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(D[6]),
        .Q(\pix_fifo_cnt_reg[0] [6]),
        .R(1'b0));
  FDRE \data_reg[7] 
       (.C(clk),
        .CE(\data[7]_i_1_n_0 ),
        .D(D[7]),
        .Q(\pix_fifo_cnt_reg[0] [7]),
        .R(1'b0));
  FDRE \data_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(\pix_fifo_cnt_reg[0] [8]),
        .R(1'b0));
  FDRE \data_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(\pix_fifo_cnt_reg[0] [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF444)) 
    out_last_i_1__1
       (.I0(vout_valid),
        .I1(DIP[0]),
        .I2(vcrop_last),
        .I3(vcrop_valid),
        .O(out_last_i_1__1_n_0));
  FDRE out_last_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_last_i_1__1_n_0),
        .Q(DIP[0]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF444)) 
    out_sof_i_1__1
       (.I0(vout_valid),
        .I1(DIP[1]),
        .I2(vcrop_sof),
        .I3(vcrop_valid),
        .O(out_sof_i_1__1_n_0));
  FDRE out_sof_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_sof_i_1__1_n_0),
        .Q(DIP[1]),
        .R(1'b0));
  FDRE out_valid_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_valid_i0),
        .Q(vout_valid),
        .R(Q));
endmodule

(* ORIG_REF_NAME = "vid_pipeline" *) 
module TySOM_1_7Z030_mipi_csi_0_vid_pipeline
   (has_last,
    vout_valid,
    DIP,
    \cnt_reg[16] ,
    cnt,
    out,
    \cnt_line_1_reg[11] ,
    vin_ready_10b,
    vid_ready,
    q,
    \vfm_data_reg[10]_0 ,
    \vfm_data_reg[26]_0 ,
    \vfm_data_reg[11]_0 ,
    \vfm_data_reg[12]_0 ,
    \vfm_data_reg[13]_0 ,
    \vfm_data_reg[14]_0 ,
    \vfm_data_reg[15]_0 ,
    \vfm_data_reg[27]_0 ,
    \vfm_data_reg[28]_0 ,
    \vfm_data_reg[29]_0 ,
    \vfm_data_reg[30]_0 ,
    \vfm_data_reg[31]_0 ,
    \srl_gen[0].part_stage_gen.b_gen[8].ff_I ,
    \pix_fifo_cnt_reg[0] ,
    vin_sof,
    DOP,
    \cnt_reg[16]_0 ,
    Q,
    clk,
    DI,
    S,
    \reg_reg[10] ,
    \reg_reg[10]_0 ,
    \reg_reg[6] ,
    \reg_reg[6]_0 ,
    \reg_reg[10]_1 ,
    \reg_reg[10]_2 ,
    pause_reg,
    has_last_reg,
    pause,
    \FSM_sequential_state_cur_reg[1] ,
    pktr_empty,
    DO,
    \reg_reg[23] ,
    eqOp__0,
    \reg_reg[11] ,
    \reg_reg[11]_0 ,
    \reg_reg[11]_1 ,
    D,
    mux,
    \reg_reg[4] );
  output has_last;
  output vout_valid;
  output [1:0]DIP;
  output \cnt_reg[16] ;
  output [1:0]cnt;
  output [11:0]out;
  output [11:0]\cnt_line_1_reg[11] ;
  output vin_ready_10b;
  output vid_ready;
  output [7:0]q;
  output [2:0]\vfm_data_reg[10]_0 ;
  output [2:0]\vfm_data_reg[26]_0 ;
  output \vfm_data_reg[11]_0 ;
  output \vfm_data_reg[12]_0 ;
  output \vfm_data_reg[13]_0 ;
  output \vfm_data_reg[14]_0 ;
  output \vfm_data_reg[15]_0 ;
  output \vfm_data_reg[27]_0 ;
  output \vfm_data_reg[28]_0 ;
  output \vfm_data_reg[29]_0 ;
  output \vfm_data_reg[30]_0 ;
  output \vfm_data_reg[31]_0 ;
  output [7:0]\srl_gen[0].part_stage_gen.b_gen[8].ff_I ;
  output [31:0]\pix_fifo_cnt_reg[0] ;
  input vin_sof;
  input [0:0]DOP;
  input [0:0]\cnt_reg[16]_0 ;
  input [0:0]Q;
  input clk;
  input [3:0]DI;
  input [3:0]S;
  input [1:0]\reg_reg[10] ;
  input [1:0]\reg_reg[10]_0 ;
  input [3:0]\reg_reg[6] ;
  input [3:0]\reg_reg[6]_0 ;
  input [1:0]\reg_reg[10]_1 ;
  input [1:0]\reg_reg[10]_2 ;
  input pause_reg;
  input has_last_reg;
  input pause;
  input \FSM_sequential_state_cur_reg[1] ;
  input pktr_empty;
  input [31:0]DO;
  input [16:0]\reg_reg[23] ;
  input eqOp__0;
  input [11:0]\reg_reg[11] ;
  input [11:0]\reg_reg[11]_0 ;
  input [11:0]\reg_reg[11]_1 ;
  input [7:0]D;
  input [7:0]mux;
  input [12:0]\reg_reg[4] ;

  wire [7:0]D;
  wire [3:0]DI;
  wire [1:0]DIP;
  wire [31:0]DO;
  wire [0:0]DOP;
  wire \FSM_sequential_state_cur_reg[1] ;
  wire [0:0]Q;
  wire [3:0]S;
  wire clk;
  wire [1:0]cnt;
  wire [11:0]\cnt_line_1_reg[11] ;
  wire \cnt_reg[16] ;
  wire [0:0]\cnt_reg[16]_0 ;
  wire crop_I_n_27;
  wire crop_I_n_28;
  wire crop_I_n_29;
  wire crop_I_n_30;
  wire crop_I_n_31;
  wire crop_I_n_32;
  wire crop_I_n_33;
  wire crop_I_n_34;
  wire crop_I_n_35;
  wire crop_I_n_36;
  wire crop_I_n_37;
  wire crop_I_n_38;
  wire crop_I_n_39;
  wire crop_I_n_40;
  wire crop_I_n_41;
  wire crop_I_n_42;
  wire crop_I_n_43;
  wire crop_I_n_44;
  wire crop_I_n_45;
  wire crop_I_n_46;
  wire crop_I_n_47;
  wire crop_I_n_48;
  wire crop_I_n_49;
  wire crop_I_n_50;
  wire crop_I_n_60;
  wire crop_I_n_61;
  wire debayer_I_n_0;
  wire debayer_I_n_1;
  wire debayer_I_n_10;
  wire debayer_I_n_11;
  wire debayer_I_n_12;
  wire debayer_I_n_13;
  wire debayer_I_n_14;
  wire debayer_I_n_15;
  wire debayer_I_n_16;
  wire debayer_I_n_17;
  wire debayer_I_n_18;
  wire debayer_I_n_19;
  wire debayer_I_n_2;
  wire debayer_I_n_20;
  wire debayer_I_n_21;
  wire debayer_I_n_3;
  wire debayer_I_n_4;
  wire debayer_I_n_5;
  wire debayer_I_n_6;
  wire debayer_I_n_7;
  wire debayer_I_n_8;
  wire debayer_I_n_9;
  wire eqOp__0;
  wire has_last;
  wire has_last_i_1_n_0;
  wire has_last_reg;
  wire [7:0]mux;
  wire [11:0]out;
  wire out_last;
  wire out_last0;
  wire out_sof;
  wire out_sof_i_1_n_0;
  wire out_valid;
  wire out_valid_i0;
  wire [7:0]p_1_in;
  wire p_3_in;
  wire packer_I_n_4;
  wire pause;
  wire pause_reg;
  wire [31:0]\pix_fifo_cnt_reg[0] ;
  wire pktr_empty;
  wire [7:0]q;
  wire [1:0]\reg_reg[10] ;
  wire [1:0]\reg_reg[10]_0 ;
  wire [1:0]\reg_reg[10]_1 ;
  wire [1:0]\reg_reg[10]_2 ;
  wire [11:0]\reg_reg[11] ;
  wire [11:0]\reg_reg[11]_0 ;
  wire [11:0]\reg_reg[11]_1 ;
  wire [16:0]\reg_reg[23] ;
  wire [12:0]\reg_reg[4] ;
  wire [3:0]\reg_reg[6] ;
  wire [3:0]\reg_reg[6]_0 ;
  wire repack_32b_to_40b_I_n_12;
  wire repack_32b_to_40b_I_n_13;
  wire repack_32b_to_40b_I_n_14;
  wire repack_32b_to_40b_I_n_15;
  wire repack_32b_to_40b_I_n_16;
  wire repack_32b_to_40b_I_n_17;
  wire repack_32b_to_40b_I_n_18;
  wire repack_32b_to_40b_I_n_19;
  wire repack_32b_to_40b_I_n_2;
  wire repack_32b_to_40b_I_n_20;
  wire repack_32b_to_40b_I_n_21;
  wire repack_32b_to_40b_I_n_3;
  wire repack_32b_to_40b_I_n_4;
  wire repack_32b_to_40b_I_n_6;
  wire repack_32b_to_40b_I_n_8;
  wire repack_32b_to_40b_I_n_9;
  wire repack_32b_to_8b_I_n_10;
  wire repack_32b_to_8b_I_n_11;
  wire repack_32b_to_8b_I_n_12;
  wire repack_32b_to_8b_I_n_13;
  wire repack_32b_to_8b_I_n_6;
  wire repack_32b_to_8b_I_n_7;
  wire repack_32b_to_8b_I_n_8;
  wire repack_32b_to_8b_I_n_9;
  wire repack_40b_to_10b_I_n_0;
  wire repack_40b_to_10b_I_n_1;
  wire repack_40b_to_10b_I_n_10;
  wire repack_40b_to_10b_I_n_11;
  wire repack_40b_to_10b_I_n_12;
  wire repack_40b_to_10b_I_n_13;
  wire repack_40b_to_10b_I_n_14;
  wire repack_40b_to_10b_I_n_15;
  wire repack_40b_to_10b_I_n_16;
  wire repack_40b_to_10b_I_n_2;
  wire repack_40b_to_10b_I_n_3;
  wire repack_40b_to_10b_I_n_4;
  wire repack_40b_to_10b_I_n_5;
  wire repack_40b_to_10b_I_n_6;
  wire repack_40b_to_10b_I_n_7;
  wire repack_40b_to_10b_I_n_8;
  wire repack_40b_to_10b_I_n_9;
  wire [7:0]\srl_gen[0].part_stage_gen.b_gen[8].ff_I ;
  wire vcrop_last;
  wire vcrop_sof;
  wire vcrop_valid;
  wire [31:0]vfm_data;
  wire [2:0]\vfm_data_reg[10]_0 ;
  wire \vfm_data_reg[11]_0 ;
  wire \vfm_data_reg[12]_0 ;
  wire \vfm_data_reg[13]_0 ;
  wire \vfm_data_reg[14]_0 ;
  wire \vfm_data_reg[15]_0 ;
  wire [2:0]\vfm_data_reg[26]_0 ;
  wire \vfm_data_reg[27]_0 ;
  wire \vfm_data_reg[28]_0 ;
  wire \vfm_data_reg[29]_0 ;
  wire \vfm_data_reg[30]_0 ;
  wire \vfm_data_reg[31]_0 ;
  wire vfm_last;
  wire vfm_sof;
  wire vfm_valid;
  wire vid_ready;
  wire vin_ready_10b;
  wire vin_sof;
  wire vout_valid;
  wire vu40_sof;
  wire vu40_valid;
  wire [0:0]vum_data;
  wire [1:1]vum_data_0;
  wire vum_last;
  wire vum_sof;
  wire vum_valid;

  TySOM_1_7Z030_mipi_csi_0_vid_crop crop_I
       (.D({crop_I_n_27,crop_I_n_28,crop_I_n_29,crop_I_n_30,crop_I_n_31,crop_I_n_32,crop_I_n_33,crop_I_n_34,crop_I_n_35,crop_I_n_36,crop_I_n_37,crop_I_n_38,crop_I_n_39,crop_I_n_40,crop_I_n_41,crop_I_n_42,crop_I_n_43,crop_I_n_44,crop_I_n_45,crop_I_n_46,crop_I_n_47,crop_I_n_48,crop_I_n_49,crop_I_n_50}),
        .DI(DI),
        .E(crop_I_n_61),
        .Q(Q),
        .S(S),
        .clk(clk),
        .\cnt_line_1_reg[11]_0 (\cnt_line_1_reg[11] ),
        .\cnt_reg[0] (packer_I_n_4),
        .\cnt_reg[1] (crop_I_n_60),
        .out(out),
        .out_valid_i0(out_valid_i0),
        .p_3_in(p_3_in),
        .q(q),
        .\reg_reg[10] (\reg_reg[10] ),
        .\reg_reg[10]_0 (\reg_reg[10]_0 ),
        .\reg_reg[10]_1 (\reg_reg[10]_1 ),
        .\reg_reg[10]_2 (\reg_reg[10]_2 ),
        .\reg_reg[11] (\reg_reg[11] ),
        .\reg_reg[11]_0 (\reg_reg[11]_0 ),
        .\reg_reg[11]_1 (\reg_reg[11]_1 ),
        .\reg_reg[1] (\reg_reg[23] [1:0]),
        .\reg_reg[6] (\reg_reg[6] ),
        .\reg_reg[6]_0 (\reg_reg[6]_0 ),
        .vcrop_last(vcrop_last),
        .vcrop_sof(vcrop_sof),
        .vcrop_valid(vcrop_valid),
        .\vfm_data_reg[31] (vfm_data),
        .vfm_last(vfm_last),
        .vfm_sof(vfm_sof),
        .vfm_valid(vfm_valid));
  TySOM_1_7Z030_mipi_csi_0_vid_debayer debayer_I
       (.D(vum_valid),
        .DO({DO[26:16],DO[7:0]}),
        .DOP(DOP),
        .Q(\vfm_data_reg[26]_0 ),
        .clk(clk),
        .\cnt_reg[16] (\cnt_reg[16]_0 ),
        .p_1_in(p_1_in),
        .pause_reg(pause_reg),
        .\reg_reg[17] (\reg_reg[23] [13:2]),
        .\vfm_data_reg[10] (\vfm_data_reg[10]_0 ),
        .\vfm_data_reg[11] (\vfm_data_reg[11]_0 ),
        .\vfm_data_reg[12] (\vfm_data_reg[12]_0 ),
        .\vfm_data_reg[13] (\vfm_data_reg[13]_0 ),
        .\vfm_data_reg[14] (\vfm_data_reg[14]_0 ),
        .\vfm_data_reg[15] (\vfm_data_reg[15]_0 ),
        .\vfm_data_reg[26] ({debayer_I_n_3,debayer_I_n_4,debayer_I_n_5,debayer_I_n_6,debayer_I_n_7,debayer_I_n_8,debayer_I_n_9,debayer_I_n_10,debayer_I_n_11,debayer_I_n_12,debayer_I_n_13,debayer_I_n_14,debayer_I_n_15,debayer_I_n_16,debayer_I_n_17,debayer_I_n_18,debayer_I_n_19,debayer_I_n_20,debayer_I_n_21}),
        .\vfm_data_reg[27] (\vfm_data_reg[27]_0 ),
        .\vfm_data_reg[28] (\vfm_data_reg[28]_0 ),
        .\vfm_data_reg[29] (\vfm_data_reg[29]_0 ),
        .\vfm_data_reg[30] (\vfm_data_reg[30]_0 ),
        .\vfm_data_reg[31] (\vfm_data_reg[31]_0 ),
        .vfm_last_reg(debayer_I_n_1),
        .vfm_sof_reg(debayer_I_n_2),
        .vfm_valid_reg(debayer_I_n_0),
        .vin_sof(vin_sof),
        .\vum_data_reg[9] ({\srl_gen[0].part_stage_gen.b_gen[8].ff_I ,vum_data_0}),
        .vum_last_reg(vum_last),
        .vum_sof_reg(vum_sof));
  LUT5 #(
    .INIT(32'hDF55CF00)) 
    has_last_i_1
       (.I0(repack_32b_to_40b_I_n_4),
        .I1(DOP),
        .I2(\cnt_reg[16]_0 ),
        .I3(repack_32b_to_40b_I_n_2),
        .I4(has_last),
        .O(has_last_i_1_n_0));
  LUT6 #(
    .INIT(64'hAA03AB03AA00A800)) 
    out_sof_i_1
       (.I0(repack_32b_to_40b_I_n_2),
        .I1(repack_32b_to_40b_I_n_8),
        .I2(repack_32b_to_40b_I_n_6),
        .I3(vin_sof),
        .I4(repack_32b_to_40b_I_n_3),
        .I5(vu40_sof),
        .O(out_sof_i_1_n_0));
  TySOM_1_7Z030_mipi_csi_0_vid_packer packer_I
       (.D({crop_I_n_27,crop_I_n_28,crop_I_n_29,crop_I_n_30,crop_I_n_31,crop_I_n_32,crop_I_n_33,crop_I_n_34,crop_I_n_35,crop_I_n_36,crop_I_n_37,crop_I_n_38,crop_I_n_39,crop_I_n_40,crop_I_n_41,crop_I_n_42,crop_I_n_43,crop_I_n_44,crop_I_n_45,crop_I_n_46,crop_I_n_47,crop_I_n_48,crop_I_n_49,crop_I_n_50,D}),
        .DIP(DIP),
        .E(crop_I_n_61),
        .Q(Q),
        .clk(clk),
        .\cnt_reg[1]_0 (packer_I_n_4),
        .out_valid_i0(out_valid_i0),
        .p_3_in(p_3_in),
        .\pix_fifo_cnt_reg[0] (\pix_fifo_cnt_reg[0] ),
        .\reg_reg[1] (\reg_reg[23] [1:0]),
        .\rst_cnt_reg[3] (crop_I_n_60),
        .vcrop_last(vcrop_last),
        .vcrop_sof(vcrop_sof),
        .vcrop_valid(vcrop_valid),
        .vout_valid(vout_valid));
  TySOM_1_7Z030_mipi_csi_0_vid_32b_to_40b repack_32b_to_40b_I
       (.DO(DO),
        .\FSM_sequential_state_cur_reg[1] (\FSM_sequential_state_cur_reg[1] ),
        .Q(Q),
        .clk(clk),
        .\cnt_reg[0]_0 (repack_32b_to_40b_I_n_9),
        .\cnt_reg[0]_1 (repack_40b_to_10b_I_n_1),
        .\cnt_reg[0]_2 (repack_40b_to_10b_I_n_0),
        .\cnt_reg[0]_3 (\cnt_reg[16] ),
        .\cnt_reg[16] (has_last_i_1_n_0),
        .\cnt_reg[1]_0 (repack_40b_to_10b_I_n_2),
        .\cnt_reg[1]_1 (repack_40b_to_10b_I_n_3),
        .eqOp__0(eqOp__0),
        .has_last_reg_0(repack_32b_to_40b_I_n_2),
        .has_last_reg_1(repack_32b_to_40b_I_n_4),
        .has_last_reg_2(has_last_reg),
        .\out_data_reg[0] (repack_32b_to_40b_I_n_12),
        .\out_data_reg[1] (repack_32b_to_40b_I_n_13),
        .\out_data_reg[2] (repack_32b_to_40b_I_n_14),
        .\out_data_reg[3] (repack_32b_to_40b_I_n_15),
        .\out_data_reg[4] (repack_32b_to_40b_I_n_16),
        .\out_data_reg[5] (repack_32b_to_40b_I_n_17),
        .\out_data_reg[6] (repack_32b_to_40b_I_n_18),
        .\out_data_reg[7] (repack_32b_to_40b_I_n_19),
        .\out_data_reg[8] (repack_32b_to_40b_I_n_20),
        .\out_data_reg[9] (repack_32b_to_40b_I_n_21),
        .out_last0(out_last0),
        .out_sof_reg_0(repack_32b_to_40b_I_n_3),
        .out_sof_reg_1(repack_32b_to_40b_I_n_6),
        .out_sof_reg_2(repack_32b_to_40b_I_n_8),
        .out_valid_i_reg(has_last),
        .pause(pause),
        .pause_reg(pause_reg),
        .pktr_empty(pktr_empty),
        .\reg_reg[23] (\reg_reg[23] [16]),
        .vid_ready(vid_ready),
        .vid_sof_reg(out_sof_i_1_n_0),
        .vin_ready_10b(vin_ready_10b),
        .vu40_sof(vu40_sof),
        .vu40_valid(vu40_valid));
  TySOM_1_7Z030_mipi_csi_0_vid_32b_to_8b repack_32b_to_8b_I
       (.DOP(DOP),
        .Q(Q),
        .clk(clk),
        .\cnt_reg[16] (\cnt_reg[16] ),
        .\cnt_reg[16]_0 (\cnt_reg[16]_0 ),
        .\cnt_reg[1]_0 (cnt[0]),
        .\cnt_reg[1]_1 (cnt[1]),
        .mux(mux),
        .out_last(out_last),
        .out_sof(out_sof),
        .out_valid(out_valid),
        .pause_reg(pause_reg),
        .vin_sof(vin_sof),
        .\vum_data_reg[0] (repack_32b_to_8b_I_n_7),
        .\vum_data_reg[1] (repack_32b_to_8b_I_n_6),
        .\vum_data_reg[2] (repack_32b_to_8b_I_n_13),
        .\vum_data_reg[3] (repack_32b_to_8b_I_n_12),
        .\vum_data_reg[4] (repack_32b_to_8b_I_n_11),
        .\vum_data_reg[5] (repack_32b_to_8b_I_n_10),
        .\vum_data_reg[6] (repack_32b_to_8b_I_n_9),
        .\vum_data_reg[7] (repack_32b_to_8b_I_n_8));
  TySOM_1_7Z030_mipi_csi_0_vid_40b_to_10b repack_40b_to_10b_I
       (.D({repack_40b_to_10b_I_n_7,repack_40b_to_10b_I_n_8,repack_40b_to_10b_I_n_9,repack_40b_to_10b_I_n_10,repack_40b_to_10b_I_n_11,repack_40b_to_10b_I_n_12,repack_40b_to_10b_I_n_13,repack_40b_to_10b_I_n_14,repack_40b_to_10b_I_n_15,repack_40b_to_10b_I_n_16}),
        .Q(Q),
        .clk(clk),
        .\cnt_reg[0]_0 (repack_40b_to_10b_I_n_1),
        .\cnt_reg[0]_1 (repack_40b_to_10b_I_n_3),
        .\cnt_reg[1]_0 (repack_40b_to_10b_I_n_2),
        .\data_reg_reg[10] (repack_32b_to_40b_I_n_16),
        .\data_reg_reg[11] (repack_32b_to_40b_I_n_17),
        .\data_reg_reg[12] (repack_32b_to_40b_I_n_18),
        .\data_reg_reg[13] (repack_32b_to_40b_I_n_19),
        .\data_reg_reg[14] (repack_32b_to_40b_I_n_20),
        .\data_reg_reg[15] (repack_32b_to_40b_I_n_21),
        .\data_reg_reg[34] (repack_32b_to_40b_I_n_12),
        .\data_reg_reg[35] (repack_32b_to_40b_I_n_13),
        .\data_reg_reg[7] (repack_40b_to_10b_I_n_0),
        .\data_reg_reg[8] (repack_32b_to_40b_I_n_14),
        .\data_reg_reg[9] (repack_32b_to_40b_I_n_15),
        .has_last(has_last),
        .\out_data_reg[0]_0 (repack_32b_to_8b_I_n_13),
        .\out_data_reg[1]_0 (repack_32b_to_8b_I_n_12),
        .\out_data_reg[2]_0 (repack_32b_to_8b_I_n_11),
        .\out_data_reg[3]_0 (repack_32b_to_8b_I_n_10),
        .\out_data_reg[4]_0 (repack_32b_to_8b_I_n_9),
        .\out_data_reg[5]_0 (repack_32b_to_8b_I_n_8),
        .\out_data_reg[6]_0 (repack_32b_to_8b_I_n_7),
        .\out_data_reg[7]_0 (repack_32b_to_8b_I_n_6),
        .out_last(out_last),
        .out_last0(out_last0),
        .out_sof(out_sof),
        .out_valid(out_valid),
        .\reg_reg[23] (\reg_reg[23] [16]),
        .\rst_cnt_reg[3] (repack_32b_to_40b_I_n_9),
        .vu40_sof(vu40_sof),
        .vu40_valid(vu40_valid),
        .vum_last_reg(repack_40b_to_10b_I_n_4),
        .vum_sof_reg(repack_40b_to_10b_I_n_5),
        .vum_valid_reg(repack_40b_to_10b_I_n_6));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \vfm_data[0]_i_3 
       (.I0(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [2]),
        .I1(\reg_reg[23] [14]),
        .I2(vum_data),
        .I3(\reg_reg[23] [15]),
        .I4(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \vfm_data[1]_i_3 
       (.I0(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [3]),
        .I1(\reg_reg[23] [14]),
        .I2(vum_data_0),
        .I3(\reg_reg[23] [15]),
        .I4(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [1]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \vfm_data[2]_i_3 
       (.I0(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [4]),
        .I1(\reg_reg[23] [14]),
        .I2(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [0]),
        .I3(\reg_reg[23] [15]),
        .I4(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [2]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \vfm_data[3]_i_3 
       (.I0(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [5]),
        .I1(\reg_reg[23] [14]),
        .I2(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [1]),
        .I3(\reg_reg[23] [15]),
        .I4(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [3]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \vfm_data[4]_i_3 
       (.I0(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [6]),
        .I1(\reg_reg[23] [14]),
        .I2(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [2]),
        .I3(\reg_reg[23] [15]),
        .I4(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [4]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \vfm_data[5]_i_3 
       (.I0(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [7]),
        .I1(\reg_reg[23] [14]),
        .I2(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [3]),
        .I3(\reg_reg[23] [15]),
        .I4(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [5]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \vfm_data[6]_i_3 
       (.I0(vum_data),
        .I1(\reg_reg[23] [14]),
        .I2(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [4]),
        .I3(\reg_reg[23] [15]),
        .I4(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [6]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \vfm_data[7]_i_3 
       (.I0(vum_data_0),
        .I1(\reg_reg[23] [14]),
        .I2(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [5]),
        .I3(\reg_reg[23] [15]),
        .I4(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [7]),
        .O(p_1_in[7]));
  FDRE \vfm_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_21),
        .Q(vfm_data[0]),
        .R(1'b0));
  FDRE \vfm_data_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[4] [2]),
        .Q(vfm_data[10]),
        .R(1'b0));
  FDRE \vfm_data_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[4] [3]),
        .Q(vfm_data[11]),
        .R(1'b0));
  FDRE \vfm_data_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[4] [4]),
        .Q(vfm_data[12]),
        .R(1'b0));
  FDRE \vfm_data_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[4] [5]),
        .Q(vfm_data[13]),
        .R(1'b0));
  FDRE \vfm_data_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[4] [6]),
        .Q(vfm_data[14]),
        .R(1'b0));
  FDRE \vfm_data_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[4] [7]),
        .Q(vfm_data[15]),
        .R(1'b0));
  FDRE \vfm_data_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_13),
        .Q(vfm_data[16]),
        .R(1'b0));
  FDRE \vfm_data_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_12),
        .Q(vfm_data[17]),
        .R(1'b0));
  FDRE \vfm_data_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_11),
        .Q(vfm_data[18]),
        .R(1'b0));
  FDRE \vfm_data_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_10),
        .Q(vfm_data[19]),
        .R(1'b0));
  FDRE \vfm_data_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_20),
        .Q(vfm_data[1]),
        .R(1'b0));
  FDRE \vfm_data_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_9),
        .Q(vfm_data[20]),
        .R(1'b0));
  FDRE \vfm_data_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_8),
        .Q(vfm_data[21]),
        .R(1'b0));
  FDRE \vfm_data_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_7),
        .Q(vfm_data[22]),
        .R(1'b0));
  FDRE \vfm_data_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_6),
        .Q(vfm_data[23]),
        .R(1'b0));
  FDRE \vfm_data_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_5),
        .Q(vfm_data[24]),
        .R(1'b0));
  FDRE \vfm_data_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_4),
        .Q(vfm_data[25]),
        .R(1'b0));
  FDRE \vfm_data_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_3),
        .Q(vfm_data[26]),
        .R(1'b0));
  FDRE \vfm_data_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[4] [8]),
        .Q(vfm_data[27]),
        .R(1'b0));
  FDRE \vfm_data_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[4] [9]),
        .Q(vfm_data[28]),
        .R(1'b0));
  FDRE \vfm_data_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[4] [10]),
        .Q(vfm_data[29]),
        .R(1'b0));
  FDRE \vfm_data_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_19),
        .Q(vfm_data[2]),
        .R(1'b0));
  FDRE \vfm_data_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[4] [11]),
        .Q(vfm_data[30]),
        .R(1'b0));
  FDRE \vfm_data_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[4] [12]),
        .Q(vfm_data[31]),
        .R(1'b0));
  FDRE \vfm_data_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_18),
        .Q(vfm_data[3]),
        .R(1'b0));
  FDRE \vfm_data_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_17),
        .Q(vfm_data[4]),
        .R(1'b0));
  FDRE \vfm_data_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_16),
        .Q(vfm_data[5]),
        .R(1'b0));
  FDRE \vfm_data_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_15),
        .Q(vfm_data[6]),
        .R(1'b0));
  FDRE \vfm_data_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_14),
        .Q(vfm_data[7]),
        .R(1'b0));
  FDRE \vfm_data_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[4] [0]),
        .Q(vfm_data[8]),
        .R(1'b0));
  FDRE \vfm_data_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[4] [1]),
        .Q(vfm_data[9]),
        .R(1'b0));
  FDRE vfm_last_reg
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_1),
        .Q(vfm_last),
        .R(1'b0));
  FDRE vfm_sof_reg
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_2),
        .Q(vfm_sof),
        .R(1'b0));
  FDRE vfm_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(debayer_I_n_0),
        .Q(vfm_valid),
        .R(1'b0));
  FDRE \vum_data_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(repack_40b_to_10b_I_n_16),
        .Q(vum_data),
        .R(1'b0));
  FDRE \vum_data_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(repack_40b_to_10b_I_n_15),
        .Q(vum_data_0),
        .R(1'b0));
  FDRE \vum_data_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(repack_40b_to_10b_I_n_14),
        .Q(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [0]),
        .R(1'b0));
  FDRE \vum_data_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(repack_40b_to_10b_I_n_13),
        .Q(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [1]),
        .R(1'b0));
  FDRE \vum_data_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(repack_40b_to_10b_I_n_12),
        .Q(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [2]),
        .R(1'b0));
  FDRE \vum_data_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(repack_40b_to_10b_I_n_11),
        .Q(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [3]),
        .R(1'b0));
  FDRE \vum_data_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(repack_40b_to_10b_I_n_10),
        .Q(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [4]),
        .R(1'b0));
  FDRE \vum_data_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(repack_40b_to_10b_I_n_9),
        .Q(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [5]),
        .R(1'b0));
  FDRE \vum_data_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(repack_40b_to_10b_I_n_8),
        .Q(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [6]),
        .R(1'b0));
  FDRE \vum_data_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(repack_40b_to_10b_I_n_7),
        .Q(\srl_gen[0].part_stage_gen.b_gen[8].ff_I [7]),
        .R(1'b0));
  FDRE vum_last_reg
       (.C(clk),
        .CE(1'b1),
        .D(repack_40b_to_10b_I_n_4),
        .Q(vum_last),
        .R(1'b0));
  FDRE vum_sof_reg
       (.C(clk),
        .CE(1'b1),
        .D(repack_40b_to_10b_I_n_5),
        .Q(vum_sof),
        .R(1'b0));
  FDRE vum_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(repack_40b_to_10b_I_n_6),
        .Q(vum_valid),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xclk_pulse" *) 
module TySOM_1_7Z030_mipi_csi_0_xclk_pulse
   (err_phy_bad_ecc,
    p_0_in,
    clk,
    out_clk,
    phy_err_bad_ecc,
    err_bad_ecc_reg);
  output err_phy_bad_ecc;
  output p_0_in;
  input clk;
  input out_clk;
  input phy_err_bad_ecc;
  input err_bad_ecc_reg;

  wire clk;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire err_bad_ecc_reg;
  wire err_phy_bad_ecc;
  wire line_in;
  wire line_in_i_1_n_0;
  wire line_out;
  wire line_out_r;
  wire out_clk;
  wire p_0_in;
  wire phy_err_bad_ecc;
  wire [3:0]plusOp__0;
  wire sync_I_n_1;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__0 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1__1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1__1 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .O(plusOp__0[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[3]_i_1 
       (.I0(p_0_in),
        .I1(phy_err_bad_ecc),
        .O(\cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_3__0 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(p_0_in),
        .O(plusOp__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(out_clk),
        .CE(err_bad_ecc_reg),
        .D(plusOp__0[0]),
        .Q(\cnt_reg_n_0_[0] ),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(out_clk),
        .CE(err_bad_ecc_reg),
        .D(plusOp__0[1]),
        .Q(\cnt_reg_n_0_[1] ),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(out_clk),
        .CE(err_bad_ecc_reg),
        .D(plusOp__0[2]),
        .Q(\cnt_reg_n_0_[2] ),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(out_clk),
        .CE(err_bad_ecc_reg),
        .D(plusOp__0[3]),
        .Q(p_0_in),
        .R(\cnt[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    line_in_i_1
       (.I0(phy_err_bad_ecc),
        .I1(p_0_in),
        .I2(line_in),
        .O(line_in_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    line_in_reg
       (.C(out_clk),
        .CE(1'b1),
        .D(line_in_i_1_n_0),
        .Q(line_in),
        .R(1'b0));
  FDRE line_out_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(line_out),
        .Q(line_out_r),
        .R(1'b0));
  FDRE pulse_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(sync_I_n_1),
        .Q(err_phy_bad_ecc),
        .R(1'b0));
  TySOM_1_7Z030_mipi_csi_0_xclk_sync_8 sync_I
       (.clk(clk),
        .line_in(line_in),
        .line_out_r(line_out_r),
        .out(line_out),
        .out_clk(out_clk),
        .pulse_out_reg(sync_I_n_1));
endmodule

(* ORIG_REF_NAME = "xclk_pulse" *) 
module TySOM_1_7Z030_mipi_csi_0_xclk_pulse_1
   (err_phy_early_lp,
    clk,
    out_clk);
  output err_phy_early_lp;
  input clk;
  input out_clk;

  wire clk;
  wire err_phy_early_lp;
  wire line_out;
  wire line_out_r;
  wire out_clk;
  wire sync_I_n_1;

  FDRE line_out_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(line_out),
        .Q(line_out_r),
        .R(1'b0));
  FDRE pulse_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(sync_I_n_1),
        .Q(err_phy_early_lp),
        .R(1'b0));
  TySOM_1_7Z030_mipi_csi_0_xclk_sync_7 sync_I
       (.clk(clk),
        .line_out_r(line_out_r),
        .out(line_out),
        .out_clk(out_clk),
        .pulse_out_reg(sync_I_n_1));
endmodule

(* ORIG_REF_NAME = "xclk_pulse" *) 
module TySOM_1_7Z030_mipi_csi_0_xclk_pulse_2
   (pulse_out,
    out_clk,
    clk);
  output pulse_out;
  input out_clk;
  input clk;

  wire clk;
  wire line_out;
  wire line_out_r;
  wire out_clk;
  wire pulse_out;
  wire sync_I_n_1;

  FDRE line_out_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(line_out),
        .Q(line_out_r),
        .R(1'b0));
  FDRE pulse_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(sync_I_n_1),
        .Q(pulse_out),
        .R(1'b0));
  TySOM_1_7Z030_mipi_csi_0_xclk_sync_6 sync_I
       (.clk(clk),
        .line_out_r(line_out_r),
        .out(line_out),
        .out_clk(out_clk),
        .pulse_out_reg(sync_I_n_1));
endmodule

(* ORIG_REF_NAME = "xclk_pulse" *) 
module TySOM_1_7Z030_mipi_csi_0_xclk_pulse_3
   (err_phy_overflow,
    clk,
    out_clk,
    phy_err_overflow);
  output err_phy_overflow;
  input clk;
  input out_clk;
  input phy_err_overflow;

  wire clk;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[3]_i_2__0_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire err_phy_overflow;
  wire line_in;
  wire line_in_i_1__0_n_0;
  wire line_out;
  wire line_out_r;
  wire out_clk;
  wire p_0_in;
  wire phy_err_overflow;
  wire [3:0]plusOp__1;
  wire sync_I_n_1;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__1 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(plusOp__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1__2 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1__2 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .I2(\cnt_reg_n_0_[2] ),
        .O(plusOp__1[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[3]_i_1 
       (.I0(p_0_in),
        .I1(phy_err_overflow),
        .O(\cnt[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \cnt[3]_i_2__0 
       (.I0(phy_err_overflow),
        .I1(p_0_in),
        .O(\cnt[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_3__1 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[2] ),
        .I3(p_0_in),
        .O(plusOp__1[3]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(out_clk),
        .CE(\cnt[3]_i_2__0_n_0 ),
        .D(plusOp__1[0]),
        .Q(\cnt_reg_n_0_[0] ),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(out_clk),
        .CE(\cnt[3]_i_2__0_n_0 ),
        .D(plusOp__1[1]),
        .Q(\cnt_reg_n_0_[1] ),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(out_clk),
        .CE(\cnt[3]_i_2__0_n_0 ),
        .D(plusOp__1[2]),
        .Q(\cnt_reg_n_0_[2] ),
        .R(\cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(out_clk),
        .CE(\cnt[3]_i_2__0_n_0 ),
        .D(plusOp__1[3]),
        .Q(p_0_in),
        .R(\cnt[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    line_in_i_1__0
       (.I0(phy_err_overflow),
        .I1(p_0_in),
        .I2(line_in),
        .O(line_in_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    line_in_reg
       (.C(out_clk),
        .CE(1'b1),
        .D(line_in_i_1__0_n_0),
        .Q(line_in),
        .R(1'b0));
  FDRE line_out_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(line_out),
        .Q(line_out_r),
        .R(1'b0));
  FDRE pulse_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(sync_I_n_1),
        .Q(err_phy_overflow),
        .R(1'b0));
  TySOM_1_7Z030_mipi_csi_0_xclk_sync_5 sync_I
       (.clk(clk),
        .line_in(line_in),
        .line_out_r(line_out_r),
        .out(line_out),
        .out_clk(out_clk),
        .pulse_out_reg(sync_I_n_1));
endmodule

(* ORIG_REF_NAME = "xclk_sync" *) 
module TySOM_1_7Z030_mipi_csi_0_xclk_sync
   (out,
    Q,
    clk,
    out_clk);
  output out;
  input [0:0]Q;
  input clk;
  input out_clk;

  wire [0:0]Q;
  wire clk;
  wire out_clk;
  (* DONT_TOUCH *) wire reg_in;
  (* DONT_TOUCH *) wire reg_out1;
  (* DONT_TOUCH *) wire reg_out2;

  assign out = reg_out2;
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_in_reg
       (.C(clk),
        .CE(1'b1),
        .D(Q),
        .Q(reg_in),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_out1_reg
       (.C(out_clk),
        .CE(1'b1),
        .D(reg_in),
        .Q(reg_out1),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_out2_reg
       (.C(out_clk),
        .CE(1'b1),
        .D(reg_out1),
        .Q(reg_out2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xclk_sync" *) 
module TySOM_1_7Z030_mipi_csi_0_xclk_sync_0
   (out,
    Q,
    clk,
    out_clk);
  output out;
  input [0:0]Q;
  input clk;
  input out_clk;

  wire [0:0]Q;
  wire clk;
  wire out_clk;
  (* DONT_TOUCH *) wire reg_in;
  (* DONT_TOUCH *) wire reg_out1;
  (* DONT_TOUCH *) wire reg_out2;

  assign out = reg_out2;
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_in_reg
       (.C(clk),
        .CE(1'b1),
        .D(Q),
        .Q(reg_in),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_out1_reg
       (.C(out_clk),
        .CE(1'b1),
        .D(reg_in),
        .Q(reg_out1),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_out2_reg
       (.C(out_clk),
        .CE(1'b1),
        .D(reg_out1),
        .Q(reg_out2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xclk_sync" *) 
module TySOM_1_7Z030_mipi_csi_0_xclk_sync_4
   (out,
    stat_running,
    out_clk,
    clk);
  output out;
  input stat_running;
  input out_clk;
  input clk;

  wire clk;
  wire out_clk;
  (* DONT_TOUCH *) wire reg_in;
  (* DONT_TOUCH *) wire reg_out1;
  (* DONT_TOUCH *) wire reg_out2;
  wire stat_running;

  assign out = reg_out2;
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_in_reg
       (.C(out_clk),
        .CE(1'b1),
        .D(stat_running),
        .Q(reg_in),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_out1_reg
       (.C(clk),
        .CE(1'b1),
        .D(reg_in),
        .Q(reg_out1),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_out2_reg
       (.C(clk),
        .CE(1'b1),
        .D(reg_out1),
        .Q(reg_out2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xclk_sync" *) 
module TySOM_1_7Z030_mipi_csi_0_xclk_sync_5
   (out,
    pulse_out_reg,
    line_in,
    out_clk,
    clk,
    line_out_r);
  output out;
  output pulse_out_reg;
  input line_in;
  input out_clk;
  input clk;
  input line_out_r;

  wire clk;
  wire line_in;
  wire line_out_r;
  wire out_clk;
  wire pulse_out_reg;
  (* DONT_TOUCH *) wire reg_in;
  (* DONT_TOUCH *) wire reg_out1;
  (* DONT_TOUCH *) wire reg_out2;

  assign out = reg_out2;
  LUT2 #(
    .INIT(4'h2)) 
    pulse_out_i_1__2
       (.I0(reg_out2),
        .I1(line_out_r),
        .O(pulse_out_reg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_in_reg
       (.C(out_clk),
        .CE(1'b1),
        .D(line_in),
        .Q(reg_in),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_out1_reg
       (.C(clk),
        .CE(1'b1),
        .D(reg_in),
        .Q(reg_out1),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_out2_reg
       (.C(clk),
        .CE(1'b1),
        .D(reg_out1),
        .Q(reg_out2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xclk_sync" *) 
module TySOM_1_7Z030_mipi_csi_0_xclk_sync_6
   (out,
    pulse_out_reg,
    out_clk,
    clk,
    line_out_r);
  output out;
  output pulse_out_reg;
  input out_clk;
  input clk;
  input line_out_r;

  wire clk;
  wire line_out_r;
  wire out_clk;
  wire pulse_out_reg;
  (* DONT_TOUCH *) wire reg_in;
  (* DONT_TOUCH *) wire reg_out1;
  (* DONT_TOUCH *) wire reg_out2;

  assign out = reg_out2;
  LUT2 #(
    .INIT(4'h2)) 
    pulse_out_i_1
       (.I0(reg_out2),
        .I1(line_out_r),
        .O(pulse_out_reg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_in_reg
       (.C(out_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_in),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_out1_reg
       (.C(clk),
        .CE(1'b1),
        .D(reg_in),
        .Q(reg_out1),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_out2_reg
       (.C(clk),
        .CE(1'b1),
        .D(reg_out1),
        .Q(reg_out2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xclk_sync" *) 
module TySOM_1_7Z030_mipi_csi_0_xclk_sync_7
   (out,
    pulse_out_reg,
    out_clk,
    clk,
    line_out_r);
  output out;
  output pulse_out_reg;
  input out_clk;
  input clk;
  input line_out_r;

  wire clk;
  wire line_out_r;
  wire out_clk;
  wire pulse_out_reg;
  (* DONT_TOUCH *) wire reg_in;
  (* DONT_TOUCH *) wire reg_out1;
  (* DONT_TOUCH *) wire reg_out2;

  assign out = reg_out2;
  LUT2 #(
    .INIT(4'h2)) 
    pulse_out_i_1__1
       (.I0(reg_out2),
        .I1(line_out_r),
        .O(pulse_out_reg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_in_reg
       (.C(out_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(reg_in),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_out1_reg
       (.C(clk),
        .CE(1'b1),
        .D(reg_in),
        .Q(reg_out1),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_out2_reg
       (.C(clk),
        .CE(1'b1),
        .D(reg_out1),
        .Q(reg_out2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xclk_sync" *) 
module TySOM_1_7Z030_mipi_csi_0_xclk_sync_8
   (out,
    pulse_out_reg,
    line_in,
    out_clk,
    clk,
    line_out_r);
  output out;
  output pulse_out_reg;
  input line_in;
  input out_clk;
  input clk;
  input line_out_r;

  wire clk;
  wire line_in;
  wire line_out_r;
  wire out_clk;
  wire pulse_out_reg;
  (* DONT_TOUCH *) wire reg_in;
  (* DONT_TOUCH *) wire reg_out1;
  (* DONT_TOUCH *) wire reg_out2;

  assign out = reg_out2;
  LUT2 #(
    .INIT(4'h2)) 
    pulse_out_i_1__0
       (.I0(reg_out2),
        .I1(line_out_r),
        .O(pulse_out_reg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_in_reg
       (.C(out_clk),
        .CE(1'b1),
        .D(line_in),
        .Q(reg_in),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_out1_reg
       (.C(clk),
        .CE(1'b1),
        .D(reg_in),
        .Q(reg_out1),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE reg_out2_reg
       (.C(clk),
        .CE(1'b1),
        .D(reg_out1),
        .Q(reg_out2),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
