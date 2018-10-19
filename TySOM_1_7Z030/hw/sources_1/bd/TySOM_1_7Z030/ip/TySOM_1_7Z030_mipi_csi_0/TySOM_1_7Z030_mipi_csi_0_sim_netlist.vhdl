-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
-- Date        : Tue Jul 11 15:02:43 2017
-- Host        : enki running 64-bit CentOS release 6.8 (Final)
-- Command     : write_vhdl -force -mode funcsim
--               /home/barsko/Xilinx_2017.1/TySOM_1_7Z030/SDx_platform/vivado/TySOM_1_7Z030.srcs/sources_1/bd/TySOM_1_7Z030/ip/TySOM_1_7Z030_mipi_csi_0/TySOM_1_7Z030_mipi_csi_0_sim_netlist.vhdl
-- Design      : TySOM_1_7Z030_mipi_csi_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z030fbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_axilite2slb is
  port (
    ctrl_dly_ld_clk_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 24 downto 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    wen_reg : out STD_LOGIC;
    wen_reg_0 : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    wen_reg_1 : out STD_LOGIC;
    wen_reg_2 : out STD_LOGIC;
    \ctrl_dly_ld_data_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    wen_reg_3 : out STD_LOGIC;
    wen_reg_4 : out STD_LOGIC;
    \slb_rdata_reg[31]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \slb_rdata_reg[1]\ : out STD_LOGIC;
    \slb_rdata_reg[2]\ : out STD_LOGIC;
    \slb_rdata_reg[3]\ : out STD_LOGIC;
    \slb_rdata_reg[4]\ : out STD_LOGIC;
    \slb_rdata_reg[18]\ : out STD_LOGIC;
    \slb_rdata_reg[19]\ : out STD_LOGIC;
    \slb_rdata_reg[1]_0\ : out STD_LOGIC;
    saxi_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    saxi_bvalid : out STD_LOGIC;
    saxi_rvalid : out STD_LOGIC;
    saxi_arready : out STD_LOGIC;
    saxi_awready : out STD_LOGIC;
    saxi_arvalid : in STD_LOGIC;
    saxi_wvalid : in STD_LOGIC;
    saxi_awvalid : in STD_LOGIC;
    saxi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    err_phy_overflow : in STD_LOGIC;
    \reg_er_reg[19]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    err_phy_early_lp : in STD_LOGIC;
    err_phy_bad_ecc : in STD_LOGIC;
    pulse_out : in STD_LOGIC;
    err_late_last : in STD_LOGIC;
    err_early_last : in STD_LOGIC;
    err_unk_pkt : in STD_LOGIC;
    err_early_sof : in STD_LOGIC;
    err_no_hdr : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    stat_running_reg : in STD_LOGIC;
    stat_err_pending : in STD_LOGIC;
    pktr_empty : in STD_LOGIC;
    pix_fifo_empty : in STD_LOGIC;
    saxi_wdata : in STD_LOGIC_VECTOR ( 27 downto 0 );
    clk : in STD_LOGIC;
    \slb_rdata_reg[31]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    rst : in STD_LOGIC;
    saxi_rready : in STD_LOGIC;
    saxi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_axilite2slb : entity is "axilite2slb";
end TySOM_1_7Z030_mipi_csi_0_axilite2slb;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_axilite2slb is
  signal \FSM_sequential_state_cur[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal eqOp2_in : STD_LOGIC;
  signal \reg_er[19]_i_2_n_0\ : STD_LOGIC;
  signal \saxi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal slb_addr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \slb_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \slb_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \slb_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \slb_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \slb_addr[3]_i_2_n_0\ : STD_LOGIC;
  signal slb_wdata : STD_LOGIC_VECTOR ( 28 downto 24 );
  signal \slb_wdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \slb_wdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \slb_wdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \slb_wdata[31]_i_7_n_0\ : STD_LOGIC;
  signal slb_wstb : STD_LOGIC;
  signal state_cur : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state_cur : signal is "yes";
  signal state_nxt : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_cur_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_cur_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_cur_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \reg_er[19]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slb_rdata[19]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slb_rdata[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slb_rdata[30]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of wen_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wen_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wen_i_1__1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wen_i_1__2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wen_i_1__3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wen_i_1__5\ : label is "soft_lutpair2";
begin
  Q(24 downto 0) <= \^q\(24 downto 0);
\FSM_sequential_state_cur[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"737373730F0C0C0C"
    )
        port map (
      I0 => saxi_rready,
      I1 => state_cur(0),
      I2 => state_cur(2),
      I3 => saxi_awvalid,
      I4 => saxi_wvalid,
      I5 => state_cur(1),
      O => \FSM_sequential_state_cur[0]_i_1__0_n_0\
    );
\FSM_sequential_state_cur[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7C0C7C0F7C0C7C0C"
    )
        port map (
      I0 => saxi_rready,
      I1 => state_cur(0),
      I2 => state_cur(1),
      I3 => state_cur(2),
      I4 => \FSM_sequential_state_cur[1]_i_2__1_n_0\,
      I5 => saxi_arvalid,
      O => \FSM_sequential_state_cur[1]_i_1__1_n_0\
    );
\FSM_sequential_state_cur[1]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => saxi_awvalid,
      I1 => saxi_wvalid,
      O => \FSM_sequential_state_cur[1]_i_2__1_n_0\
    );
\FSM_sequential_state_cur[2]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77FFCF00"
    )
        port map (
      I0 => saxi_rready,
      I1 => state_cur(0),
      I2 => saxi_bready,
      I3 => state_cur(2),
      I4 => state_cur(1),
      O => \FSM_sequential_state_cur[2]_i_1__1_n_0\
    );
\FSM_sequential_state_cur_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state_cur[0]_i_1__0_n_0\,
      Q => state_cur(0),
      R => rst
    );
\FSM_sequential_state_cur_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state_cur[1]_i_1__1_n_0\,
      Q => state_cur(1),
      R => rst
    );
\FSM_sequential_state_cur_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state_cur[2]_i_1__1_n_0\,
      Q => state_cur(2),
      R => rst
    );
ctrl_dly_ld_clk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => slb_addr(2),
      I1 => slb_wstb,
      I2 => slb_addr(0),
      I3 => slb_addr(1),
      I4 => slb_addr(3),
      I5 => slb_wdata(28),
      O => ctrl_dly_ld_clk_reg
    );
\ctrl_dly_ld_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => slb_addr(2),
      I1 => slb_wstb,
      I2 => slb_addr(0),
      I3 => slb_addr(1),
      I4 => slb_addr(3),
      I5 => slb_wdata(24),
      O => \ctrl_dly_ld_data_reg[1]\(0)
    );
\ctrl_dly_ld_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => slb_addr(2),
      I1 => slb_wstb,
      I2 => slb_addr(0),
      I3 => slb_addr(1),
      I4 => slb_addr(3),
      I5 => slb_wdata(25),
      O => \ctrl_dly_ld_data_reg[1]\(1)
    );
\reg_er[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7770"
    )
        port map (
      I0 => \^q\(0),
      I1 => \reg_er[19]_i_2_n_0\,
      I2 => err_no_hdr,
      I3 => \reg_er_reg[19]\(0),
      O => D(0)
    );
\reg_er[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7770"
    )
        port map (
      I0 => \^q\(16),
      I1 => \reg_er[19]_i_2_n_0\,
      I2 => pulse_out,
      I3 => \reg_er_reg[19]\(5),
      O => D(5)
    );
\reg_er[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7770"
    )
        port map (
      I0 => \^q\(17),
      I1 => \reg_er[19]_i_2_n_0\,
      I2 => err_phy_bad_ecc,
      I3 => \reg_er_reg[19]\(6),
      O => D(6)
    );
\reg_er[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7770"
    )
        port map (
      I0 => \^q\(18),
      I1 => \reg_er[19]_i_2_n_0\,
      I2 => err_phy_early_lp,
      I3 => \reg_er_reg[19]\(7),
      O => D(7)
    );
\reg_er[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7770"
    )
        port map (
      I0 => \^q\(19),
      I1 => \reg_er[19]_i_2_n_0\,
      I2 => err_phy_overflow,
      I3 => \reg_er_reg[19]\(8),
      O => D(8)
    );
\reg_er[19]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => state_cur(0),
      I1 => state_cur(1),
      I2 => state_cur(2),
      I3 => eqOp2_in,
      O => \reg_er[19]_i_2_n_0\
    );
\reg_er[19]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => slb_addr(2),
      I1 => slb_addr(3),
      I2 => slb_addr(1),
      I3 => slb_addr(0),
      O => eqOp2_in
    );
\reg_er[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7770"
    )
        port map (
      I0 => \^q\(1),
      I1 => \reg_er[19]_i_2_n_0\,
      I2 => err_early_sof,
      I3 => \reg_er_reg[19]\(1),
      O => D(1)
    );
\reg_er[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7770"
    )
        port map (
      I0 => \^q\(2),
      I1 => \reg_er[19]_i_2_n_0\,
      I2 => err_unk_pkt,
      I3 => \reg_er_reg[19]\(2),
      O => D(2)
    );
\reg_er[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7770"
    )
        port map (
      I0 => \^q\(3),
      I1 => \reg_er[19]_i_2_n_0\,
      I2 => err_early_last,
      I3 => \reg_er_reg[19]\(3),
      O => D(3)
    );
\reg_er[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7770"
    )
        port map (
      I0 => \^q\(4),
      I1 => \reg_er[19]_i_2_n_0\,
      I2 => err_late_last,
      I3 => \reg_er_reg[19]\(4),
      O => D(4)
    );
saxi_arready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state_cur(2),
      I1 => state_cur(1),
      I2 => state_cur(0),
      O => saxi_arready
    );
saxi_bvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state_cur(1),
      I1 => state_cur(2),
      I2 => state_cur(0),
      O => saxi_bvalid
    );
\saxi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => state_cur(1),
      I1 => state_cur(2),
      I2 => state_cur(0),
      O => \saxi_rdata[31]_i_1_n_0\
    );
\saxi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \saxi_rdata[31]_i_1_n_0\,
      D => \slb_rdata_reg[31]_0\(0),
      Q => saxi_rdata(0),
      R => '0'
    );
\saxi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \saxi_rdata[31]_i_1_n_0\,
      D => \slb_rdata_reg[31]_0\(5),
      Q => saxi_rdata(5),
      R => '0'
    );
\saxi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \saxi_rdata[31]_i_1_n_0\,
      D => \slb_rdata_reg[31]_0\(6),
      Q => saxi_rdata(6),
      R => '0'
    );
\saxi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \saxi_rdata[31]_i_1_n_0\,
      D => \slb_rdata_reg[31]_0\(7),
      Q => saxi_rdata(7),
      R => '0'
    );
\saxi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \saxi_rdata[31]_i_1_n_0\,
      D => \slb_rdata_reg[31]_0\(8),
      Q => saxi_rdata(8),
      R => '0'
    );
\saxi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \saxi_rdata[31]_i_1_n_0\,
      D => \slb_rdata_reg[31]_0\(1),
      Q => saxi_rdata(1),
      R => '0'
    );
\saxi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \saxi_rdata[31]_i_1_n_0\,
      D => \slb_rdata_reg[31]_0\(2),
      Q => saxi_rdata(2),
      R => '0'
    );
\saxi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \saxi_rdata[31]_i_1_n_0\,
      D => \slb_rdata_reg[31]_0\(9),
      Q => saxi_rdata(9),
      R => '0'
    );
\saxi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \saxi_rdata[31]_i_1_n_0\,
      D => \slb_rdata_reg[31]_0\(10),
      Q => saxi_rdata(10),
      R => '0'
    );
\saxi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \saxi_rdata[31]_i_1_n_0\,
      D => \slb_rdata_reg[31]_0\(3),
      Q => saxi_rdata(3),
      R => '0'
    );
\saxi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \saxi_rdata[31]_i_1_n_0\,
      D => \slb_rdata_reg[31]_0\(4),
      Q => saxi_rdata(4),
      R => '0'
    );
saxi_rvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state_cur(1),
      I1 => state_cur(2),
      I2 => state_cur(0),
      O => saxi_rvalid
    );
saxi_wready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state_cur(1),
      I1 => state_cur(2),
      I2 => state_cur(0),
      O => saxi_awready
    );
\slb_addr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0200"
    )
        port map (
      I0 => state_nxt(0),
      I1 => state_nxt(2),
      I2 => state_nxt(1),
      I3 => saxi_awaddr(0),
      I4 => saxi_araddr(0),
      O => \slb_addr[0]_i_1_n_0\
    );
\slb_addr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0200"
    )
        port map (
      I0 => state_nxt(0),
      I1 => state_nxt(2),
      I2 => state_nxt(1),
      I3 => saxi_awaddr(1),
      I4 => saxi_araddr(1),
      O => \slb_addr[1]_i_1_n_0\
    );
\slb_addr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0200"
    )
        port map (
      I0 => state_nxt(0),
      I1 => state_nxt(2),
      I2 => state_nxt(1),
      I3 => saxi_awaddr(2),
      I4 => saxi_araddr(2),
      O => \slb_addr[2]_i_1_n_0\
    );
\slb_addr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => state_nxt(2),
      I1 => state_nxt(0),
      I2 => state_nxt(1),
      O => \slb_addr[3]_i_1_n_0\
    );
\slb_addr[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0200"
    )
        port map (
      I0 => state_nxt(0),
      I1 => state_nxt(2),
      I2 => state_nxt(1),
      I3 => saxi_awaddr(3),
      I4 => saxi_araddr(3),
      O => \slb_addr[3]_i_2_n_0\
    );
\slb_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_addr[3]_i_1_n_0\,
      D => \slb_addr[0]_i_1_n_0\,
      Q => slb_addr(0),
      R => '0'
    );
\slb_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_addr[3]_i_1_n_0\,
      D => \slb_addr[1]_i_1_n_0\,
      Q => slb_addr(1),
      R => '0'
    );
\slb_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_addr[3]_i_1_n_0\,
      D => \slb_addr[2]_i_1_n_0\,
      Q => slb_addr(2),
      R => '0'
    );
\slb_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_addr[3]_i_1_n_0\,
      D => \slb_addr[3]_i_2_n_0\,
      Q => slb_addr(3),
      R => '0'
    );
\slb_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003020000000200"
    )
        port map (
      I0 => \out\,
      I1 => slb_addr(2),
      I2 => slb_addr(3),
      I3 => slb_addr(0),
      I4 => slb_addr(1),
      I5 => \reg_er_reg[19]\(0),
      O => \slb_rdata_reg[31]\(0)
    );
\slb_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003020000000200"
    )
        port map (
      I0 => stat_running_reg,
      I1 => slb_addr(2),
      I2 => slb_addr(3),
      I3 => slb_addr(0),
      I4 => slb_addr(1),
      I5 => \reg_er_reg[19]\(5),
      O => \slb_rdata_reg[31]\(1)
    );
\slb_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003020000000200"
    )
        port map (
      I0 => stat_err_pending,
      I1 => slb_addr(2),
      I2 => slb_addr(3),
      I3 => slb_addr(0),
      I4 => slb_addr(1),
      I5 => \reg_er_reg[19]\(6),
      O => \slb_rdata_reg[31]\(2)
    );
\slb_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => slb_addr(0),
      I1 => slb_addr(1),
      I2 => slb_addr(3),
      I3 => slb_addr(2),
      I4 => \reg_er_reg[19]\(7),
      O => \slb_rdata_reg[18]\
    );
\slb_rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => slb_addr(2),
      I1 => slb_addr(3),
      I2 => slb_addr(0),
      I3 => slb_addr(1),
      O => \slb_rdata_reg[1]_0\
    );
\slb_rdata[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => slb_addr(0),
      I1 => slb_addr(1),
      I2 => slb_addr(3),
      I3 => slb_addr(2),
      I4 => \reg_er_reg[19]\(8),
      O => \slb_rdata_reg[19]\
    );
\slb_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => slb_addr(0),
      I1 => slb_addr(1),
      I2 => slb_addr(3),
      I3 => slb_addr(2),
      I4 => \reg_er_reg[19]\(1),
      O => \slb_rdata_reg[1]\
    );
\slb_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => slb_addr(0),
      I1 => slb_addr(1),
      I2 => slb_addr(3),
      I3 => slb_addr(2),
      I4 => \reg_er_reg[19]\(2),
      O => \slb_rdata_reg[2]\
    );
\slb_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => slb_addr(1),
      I1 => slb_addr(0),
      I2 => slb_addr(3),
      I3 => slb_addr(2),
      I4 => pktr_empty,
      O => \slb_rdata_reg[31]\(3)
    );
\slb_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => slb_addr(1),
      I1 => slb_addr(0),
      I2 => slb_addr(3),
      I3 => slb_addr(2),
      I4 => pix_fifo_empty,
      O => \slb_rdata_reg[31]\(4)
    );
\slb_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => slb_addr(0),
      I1 => slb_addr(1),
      I2 => slb_addr(3),
      I3 => slb_addr(2),
      I4 => \reg_er_reg[19]\(3),
      O => \slb_rdata_reg[3]\
    );
\slb_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => slb_addr(0),
      I1 => slb_addr(1),
      I2 => slb_addr(3),
      I3 => slb_addr(2),
      I4 => \reg_er_reg[19]\(4),
      O => \slb_rdata_reg[4]\
    );
\slb_wdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => state_nxt(0),
      I1 => state_nxt(2),
      I2 => state_nxt(1),
      O => \slb_wdata[31]_i_1_n_0\
    );
\slb_wdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FF77FF00303330"
    )
        port map (
      I0 => saxi_rready,
      I1 => state_cur(0),
      I2 => \slb_wdata[31]_i_5_n_0\,
      I3 => state_cur(2),
      I4 => saxi_bready,
      I5 => state_cur(1),
      O => state_nxt(0)
    );
\slb_wdata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7733CC30"
    )
        port map (
      I0 => saxi_rready,
      I1 => state_cur(0),
      I2 => \slb_wdata[31]_i_6_n_0\,
      I3 => state_cur(2),
      I4 => state_cur(1),
      O => state_nxt(2)
    );
\slb_wdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7C7FCFCF7C7FCCCC"
    )
        port map (
      I0 => saxi_rready,
      I1 => state_cur(0),
      I2 => state_cur(1),
      I3 => saxi_bready,
      I4 => state_cur(2),
      I5 => \slb_wdata[31]_i_7_n_0\,
      O => state_nxt(1)
    );
\slb_wdata[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8888888F8F8F88"
    )
        port map (
      I0 => saxi_wvalid,
      I1 => saxi_awvalid,
      I2 => saxi_arvalid,
      I3 => state_cur(0),
      I4 => state_cur(2),
      I5 => state_cur(1),
      O => \slb_wdata[31]_i_5_n_0\
    );
\slb_wdata[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFB8FFB8FFB8"
    )
        port map (
      I0 => state_cur(2),
      I1 => state_cur(0),
      I2 => state_cur(1),
      I3 => saxi_arvalid,
      I4 => saxi_wvalid,
      I5 => saxi_awvalid,
      O => \slb_wdata[31]_i_6_n_0\
    );
\slb_wdata[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000454045404540"
    )
        port map (
      I0 => saxi_arvalid,
      I1 => state_cur(1),
      I2 => state_cur(0),
      I3 => state_cur(2),
      I4 => saxi_wvalid,
      I5 => saxi_awvalid,
      O => \slb_wdata[31]_i_7_n_0\
    );
\slb_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(0),
      Q => \^q\(0),
      R => '0'
    );
\slb_wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(10),
      Q => \^q\(10),
      R => '0'
    );
\slb_wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(11),
      Q => \^q\(11),
      R => '0'
    );
\slb_wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(12),
      Q => \^q\(12),
      R => '0'
    );
\slb_wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(13),
      Q => \^q\(13),
      R => '0'
    );
\slb_wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(14),
      Q => \^q\(14),
      R => '0'
    );
\slb_wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(15),
      Q => \^q\(15),
      R => '0'
    );
\slb_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(16),
      Q => \^q\(16),
      R => '0'
    );
\slb_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(17),
      Q => \^q\(17),
      R => '0'
    );
\slb_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(18),
      Q => \^q\(18),
      R => '0'
    );
\slb_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(19),
      Q => \^q\(19),
      R => '0'
    );
\slb_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(1),
      Q => \^q\(1),
      R => '0'
    );
\slb_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(20),
      Q => \^q\(20),
      R => '0'
    );
\slb_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(21),
      Q => \^q\(21),
      R => '0'
    );
\slb_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(22),
      Q => \^q\(22),
      R => '0'
    );
\slb_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(23),
      Q => slb_wdata(24),
      R => '0'
    );
\slb_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(24),
      Q => slb_wdata(25),
      R => '0'
    );
\slb_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(25),
      Q => slb_wdata(28),
      R => '0'
    );
\slb_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(2),
      Q => \^q\(2),
      R => '0'
    );
\slb_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(26),
      Q => \^q\(23),
      R => '0'
    );
\slb_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(27),
      Q => \^q\(24),
      R => '0'
    );
\slb_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(3),
      Q => \^q\(3),
      R => '0'
    );
\slb_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(4),
      Q => \^q\(4),
      R => '0'
    );
\slb_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(5),
      Q => \^q\(5),
      R => '0'
    );
\slb_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(6),
      Q => \^q\(6),
      R => '0'
    );
\slb_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(7),
      Q => \^q\(7),
      R => '0'
    );
\slb_wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(8),
      Q => \^q\(8),
      R => '0'
    );
\slb_wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \slb_wdata[31]_i_1_n_0\,
      D => saxi_wdata(9),
      Q => \^q\(9),
      R => '0'
    );
wen_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => slb_addr(2),
      I1 => slb_addr(1),
      I2 => slb_addr(3),
      I3 => slb_addr(0),
      I4 => slb_wstb,
      O => wen_reg
    );
\wen_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => slb_addr(3),
      I1 => slb_addr(1),
      I2 => slb_wstb,
      I3 => slb_addr(0),
      I4 => slb_addr(2),
      O => wen_reg_0
    );
\wen_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => slb_addr(2),
      I1 => slb_addr(3),
      I2 => slb_wstb,
      I3 => slb_addr(0),
      I4 => slb_addr(1),
      O => p_0_in
    );
\wen_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => slb_addr(2),
      I1 => slb_addr(3),
      I2 => slb_wstb,
      I3 => slb_addr(0),
      I4 => slb_addr(1),
      O => wen_reg_1
    );
\wen_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => slb_addr(3),
      I1 => slb_addr(2),
      I2 => slb_wstb,
      I3 => slb_addr(0),
      I4 => slb_addr(1),
      O => wen_reg_2
    );
\wen_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => slb_addr(2),
      I1 => slb_addr(1),
      I2 => slb_addr(0),
      I3 => slb_wstb,
      I4 => slb_addr(3),
      O => wen_reg_3
    );
\wen_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => slb_addr(2),
      I1 => slb_addr(0),
      I2 => slb_addr(3),
      I3 => slb_addr(1),
      I4 => slb_wstb,
      O => wen_reg_4
    );
wen_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_cur(2),
      I1 => state_cur(1),
      I2 => state_cur(0),
      O => slb_wstb
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_delay_bus is
  port (
    \^q\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_delay_bus : entity is "delay_bus";
end TySOM_1_7Z030_mipi_csi_0_delay_bus;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_delay_bus is
  signal \srl_gen[0].part_stage_gen.b_gen[0].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[10].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[1].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[2].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[3].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[4].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[5].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[6].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[7].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[8].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[9].srl_I_n_0\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[0].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[10].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[1].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[2].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[3].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[4].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[5].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[6].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[7].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[8].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[9].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[0].ff_I\ : label is "FD";
  attribute box_type : string;
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[0].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[0].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[0].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name : string;
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[0].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[0].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[10].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[10].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[10].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[10].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[10].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[10].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[1].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[1].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[1].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[1].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[1].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[1].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[2].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[2].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[2].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[2].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[2].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[2].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[3].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[3].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[3].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[3].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[3].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[3].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[4].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[4].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[4].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[4].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[4].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[4].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[5].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[5].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[5].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[5].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[5].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[5].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[6].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[6].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[6].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[6].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[6].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[6].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[7].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[7].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[7].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[7].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[7].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[7].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[8].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[8].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[8].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[8].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[8].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[8].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[9].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[9].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[9].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[9].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[9].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/addr_dly_I/srl_gen[0].part_stage_gen.b_gen[9].srl_I ";
begin
\srl_gen[0].part_stage_gen.b_gen[0].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[0].srl_I_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[0].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00000",
      CE => '1',
      CLK => clk,
      D => Q(0),
      Q => \srl_gen[0].part_stage_gen.b_gen[0].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[0].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[10].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[10].srl_I_n_0\,
      Q => \^q\(10),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[10].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00000",
      CE => '1',
      CLK => clk,
      D => Q(10),
      Q => \srl_gen[0].part_stage_gen.b_gen[10].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[10].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[1].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[1].srl_I_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[1].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00000",
      CE => '1',
      CLK => clk,
      D => Q(1),
      Q => \srl_gen[0].part_stage_gen.b_gen[1].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[1].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[2].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[2].srl_I_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[2].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00000",
      CE => '1',
      CLK => clk,
      D => Q(2),
      Q => \srl_gen[0].part_stage_gen.b_gen[2].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[2].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[3].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[3].srl_I_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[3].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00000",
      CE => '1',
      CLK => clk,
      D => Q(3),
      Q => \srl_gen[0].part_stage_gen.b_gen[3].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[3].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[4].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[4].srl_I_n_0\,
      Q => \^q\(4),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[4].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00000",
      CE => '1',
      CLK => clk,
      D => Q(4),
      Q => \srl_gen[0].part_stage_gen.b_gen[4].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[4].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[5].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[5].srl_I_n_0\,
      Q => \^q\(5),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[5].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00000",
      CE => '1',
      CLK => clk,
      D => Q(5),
      Q => \srl_gen[0].part_stage_gen.b_gen[5].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[5].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[6].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[6].srl_I_n_0\,
      Q => \^q\(6),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[6].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00000",
      CE => '1',
      CLK => clk,
      D => Q(6),
      Q => \srl_gen[0].part_stage_gen.b_gen[6].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[6].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[7].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[7].srl_I_n_0\,
      Q => \^q\(7),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[7].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00000",
      CE => '1',
      CLK => clk,
      D => Q(7),
      Q => \srl_gen[0].part_stage_gen.b_gen[7].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[7].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[8].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[8].srl_I_n_0\,
      Q => \^q\(8),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[8].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00000",
      CE => '1',
      CLK => clk,
      D => Q(8),
      Q => \srl_gen[0].part_stage_gen.b_gen[8].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[8].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[9].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[9].srl_I_n_0\,
      Q => \^q\(9),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[9].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00000",
      CE => '1',
      CLK => clk,
      D => Q(9),
      Q => \srl_gen[0].part_stage_gen.b_gen[9].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[9].srl_I_Q31_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TySOM_1_7Z030_mipi_csi_0_delay_bus__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    R : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \^q\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sel_line_3_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sel_line_3_reg_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sel_col_3_reg : in STD_LOGIC;
    sel_line_3_reg_1 : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    \pix_l02c1_3_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \pix_l02c0_3_reg[2]\ : in STD_LOGIC;
    \pix_l02c0_3_reg[3]\ : in STD_LOGIC;
    \pix_l02c0_3_reg[4]\ : in STD_LOGIC;
    \pix_l02c0_3_reg[5]\ : in STD_LOGIC;
    \pix_l02c0_3_reg[6]\ : in STD_LOGIC;
    \pix_l02c0_3_reg[7]\ : in STD_LOGIC;
    \pix_l02c0_3_reg[8]\ : in STD_LOGIC;
    \pix_l02c0_3_reg[9]\ : in STD_LOGIC;
    DOADO : in STD_LOGIC_VECTOR ( 6 downto 0 );
    line_buf_I : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DOPADOP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    line_buf_I_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    line_buf_I_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \vum_data_reg[9]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TySOM_1_7Z030_mipi_csi_0_delay_bus__parameterized1\ : entity is "delay_bus";
end \TySOM_1_7Z030_mipi_csi_0_delay_bus__parameterized1\;

architecture STRUCTURE of \TySOM_1_7Z030_mipi_csi_0_delay_bus__parameterized1\ is
  signal \^r\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \pix_blue_4[10]_i_5_n_0\ : STD_LOGIC;
  signal \pix_blue_4[10]_i_6_n_0\ : STD_LOGIC;
  signal \pix_blue_4[3]_i_6_n_0\ : STD_LOGIC;
  signal \pix_blue_4[3]_i_7_n_0\ : STD_LOGIC;
  signal \pix_blue_4[3]_i_8_n_0\ : STD_LOGIC;
  signal \pix_blue_4[3]_i_9_n_0\ : STD_LOGIC;
  signal \pix_blue_4[7]_i_6_n_0\ : STD_LOGIC;
  signal \pix_blue_4[7]_i_7_n_0\ : STD_LOGIC;
  signal \pix_blue_4[7]_i_8_n_0\ : STD_LOGIC;
  signal \pix_blue_4[7]_i_9_n_0\ : STD_LOGIC;
  signal \pix_blue_4_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \pix_blue_4_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \pix_blue_4_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \pix_blue_4_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \pix_blue_4_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \pix_blue_4_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \pix_blue_4_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \pix_blue_4_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \pix_blue_4_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \pix_blue_4_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \pix_l02c1_3_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \pix_l02c1_3_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \pix_l02c1_3_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \pix_l02c1_3_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \pix_l02c1_3_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \pix_l02c1_3_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \pix_l02c1_3_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \pix_l02c1_3_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[0].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[1].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[2].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[3].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[4].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[5].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[6].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[7].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[8].srl_I_n_0\ : STD_LOGIC;
  signal \NLW_pix_blue_4_reg[10]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pix_blue_4_reg[10]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pix_blue_4_reg[3]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_pix_l02c1_3_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pix_l02c1_3_reg[9]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[0].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[1].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[2].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[3].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[4].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[5].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[6].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[7].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[8].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[0].ff_I\ : label is "FD";
  attribute box_type : string;
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[0].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[0].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[0].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name : string;
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[0].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[0].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[1].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[1].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[1].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[1].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[1].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[1].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[2].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[2].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[2].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[2].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[2].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[2].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[3].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[3].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[3].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[3].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[3].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[3].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[4].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[4].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[4].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[4].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[4].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[4].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[5].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[5].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[5].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[5].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[5].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[5].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[6].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[6].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[6].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[6].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[6].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[6].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[7].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[7].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[7].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[7].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[7].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[7].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[8].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[8].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[8].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[8].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[8].srl_I\ : label is "\U0/vid_pipeline_I/debayer_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[8].srl_I ";
begin
  R(9 downto 0) <= \^r\(9 downto 0);
\pix_blue_4[10]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF10"
    )
        port map (
      I0 => sel_col_3_reg,
      I1 => sel_line_3_reg_1,
      I2 => \^r\(9),
      I3 => \pix_l02c0_3_reg[9]\,
      O => \pix_blue_4[10]_i_5_n_0\
    );
\pix_blue_4[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF10"
    )
        port map (
      I0 => sel_col_3_reg,
      I1 => sel_line_3_reg_1,
      I2 => \^r\(8),
      I3 => \pix_l02c0_3_reg[8]\,
      O => \pix_blue_4[10]_i_6_n_0\
    );
\pix_blue_4[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF10"
    )
        port map (
      I0 => sel_col_3_reg,
      I1 => sel_line_3_reg_1,
      I2 => \^r\(3),
      I3 => \pix_l02c0_3_reg[3]\,
      O => \pix_blue_4[3]_i_6_n_0\
    );
\pix_blue_4[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF10"
    )
        port map (
      I0 => sel_col_3_reg,
      I1 => sel_line_3_reg_1,
      I2 => \^r\(2),
      I3 => \pix_l02c0_3_reg[2]\,
      O => \pix_blue_4[3]_i_7_n_0\
    );
\pix_blue_4[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0CC5500F0CCAA"
    )
        port map (
      I0 => \^r\(1),
      I1 => O(0),
      I2 => \pix_l02c1_3_reg[0]\(0),
      I3 => sel_line_3_reg_1,
      I4 => sel_col_3_reg,
      I5 => Q(1),
      O => \pix_blue_4[3]_i_8_n_0\
    );
\pix_blue_4[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0006"
    )
        port map (
      I0 => \^r\(0),
      I1 => Q(0),
      I2 => sel_col_3_reg,
      I3 => sel_line_3_reg_1,
      O => \pix_blue_4[3]_i_9_n_0\
    );
\pix_blue_4[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF10"
    )
        port map (
      I0 => sel_col_3_reg,
      I1 => sel_line_3_reg_1,
      I2 => \^r\(7),
      I3 => \pix_l02c0_3_reg[7]\,
      O => \pix_blue_4[7]_i_6_n_0\
    );
\pix_blue_4[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF10"
    )
        port map (
      I0 => sel_col_3_reg,
      I1 => sel_line_3_reg_1,
      I2 => \^r\(6),
      I3 => \pix_l02c0_3_reg[6]\,
      O => \pix_blue_4[7]_i_7_n_0\
    );
\pix_blue_4[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF10"
    )
        port map (
      I0 => sel_col_3_reg,
      I1 => sel_line_3_reg_1,
      I2 => \^r\(5),
      I3 => \pix_l02c0_3_reg[5]\,
      O => \pix_blue_4[7]_i_8_n_0\
    );
\pix_blue_4[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF10"
    )
        port map (
      I0 => sel_col_3_reg,
      I1 => sel_line_3_reg_1,
      I2 => \^r\(4),
      I3 => \pix_l02c0_3_reg[4]\,
      O => \pix_blue_4[7]_i_9_n_0\
    );
\pix_blue_4_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_blue_4_reg[7]_i_1_n_0\,
      CO(3 downto 2) => \NLW_pix_blue_4_reg[10]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \pix_blue_4_reg[10]_i_1_n_2\,
      CO(0) => \pix_blue_4_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => sel_line_3_reg_0(1 downto 0),
      O(3) => \NLW_pix_blue_4_reg[10]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => D(7 downto 5),
      S(3) => '0',
      S(2) => S(0),
      S(1) => \pix_blue_4[10]_i_5_n_0\,
      S(0) => \pix_blue_4[10]_i_6_n_0\
    );
\pix_blue_4_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pix_blue_4_reg[3]_i_1_n_0\,
      CO(2) => \pix_blue_4_reg[3]_i_1_n_1\,
      CO(1) => \pix_blue_4_reg[3]_i_1_n_2\,
      CO(0) => \pix_blue_4_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3) => D(0),
      O(2 downto 0) => \NLW_pix_blue_4_reg[3]_i_1_O_UNCONNECTED\(2 downto 0),
      S(3) => \pix_blue_4[3]_i_6_n_0\,
      S(2) => \pix_blue_4[3]_i_7_n_0\,
      S(1) => \pix_blue_4[3]_i_8_n_0\,
      S(0) => \pix_blue_4[3]_i_9_n_0\
    );
\pix_blue_4_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_blue_4_reg[3]_i_1_n_0\,
      CO(3) => \pix_blue_4_reg[7]_i_1_n_0\,
      CO(2) => \pix_blue_4_reg[7]_i_1_n_1\,
      CO(1) => \pix_blue_4_reg[7]_i_1_n_2\,
      CO(0) => \pix_blue_4_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sel_line_3_reg(3 downto 0),
      O(3 downto 0) => D(4 downto 1),
      S(3) => \pix_blue_4[7]_i_6_n_0\,
      S(2) => \pix_blue_4[7]_i_7_n_0\,
      S(1) => \pix_blue_4[7]_i_8_n_0\,
      S(0) => \pix_blue_4[7]_i_9_n_0\
    );
\pix_l02c1_3_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pix_l02c1_3_reg[3]_i_1_n_0\,
      CO(2) => \pix_l02c1_3_reg[3]_i_1_n_1\,
      CO(1) => \pix_l02c1_3_reg[3]_i_1_n_2\,
      CO(0) => \pix_l02c1_3_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DOADO(3 downto 0),
      O(3 downto 0) => \^r\(3 downto 0),
      S(3 downto 0) => line_buf_I(3 downto 0)
    );
\pix_l02c1_3_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_l02c1_3_reg[3]_i_1_n_0\,
      CO(3) => \pix_l02c1_3_reg[7]_i_1_n_0\,
      CO(2) => \pix_l02c1_3_reg[7]_i_1_n_1\,
      CO(1) => \pix_l02c1_3_reg[7]_i_1_n_2\,
      CO(0) => \pix_l02c1_3_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => DOPADOP(0),
      DI(2 downto 0) => DOADO(6 downto 4),
      O(3 downto 0) => \^r\(7 downto 4),
      S(3 downto 0) => line_buf_I_0(3 downto 0)
    );
\pix_l02c1_3_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_l02c1_3_reg[7]_i_1_n_0\,
      CO(3 downto 2) => \NLW_pix_l02c1_3_reg[9]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^r\(9),
      CO(0) => \NLW_pix_l02c1_3_reg[9]_i_1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => DOPADOP(1),
      O(3 downto 1) => \NLW_pix_l02c1_3_reg[9]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \^r\(8),
      S(3 downto 1) => B"001",
      S(0) => line_buf_I_1(0)
    );
\srl_gen[0].part_stage_gen.b_gen[0].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[0].srl_I_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[0].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vum_data_reg[9]\(0),
      Q => \srl_gen[0].part_stage_gen.b_gen[0].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[0].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[1].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[1].srl_I_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[1].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vum_data_reg[9]\(1),
      Q => \srl_gen[0].part_stage_gen.b_gen[1].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[1].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[2].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[2].srl_I_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[2].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vum_data_reg[9]\(2),
      Q => \srl_gen[0].part_stage_gen.b_gen[2].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[2].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[3].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[3].srl_I_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[3].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vum_data_reg[9]\(3),
      Q => \srl_gen[0].part_stage_gen.b_gen[3].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[3].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[4].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[4].srl_I_n_0\,
      Q => \^q\(4),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[4].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vum_data_reg[9]\(4),
      Q => \srl_gen[0].part_stage_gen.b_gen[4].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[4].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[5].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[5].srl_I_n_0\,
      Q => \^q\(5),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[5].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vum_data_reg[9]\(5),
      Q => \srl_gen[0].part_stage_gen.b_gen[5].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[5].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[6].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[6].srl_I_n_0\,
      Q => \^q\(6),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[6].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vum_data_reg[9]\(6),
      Q => \srl_gen[0].part_stage_gen.b_gen[6].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[6].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[7].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[7].srl_I_n_0\,
      Q => \^q\(7),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[7].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vum_data_reg[9]\(7),
      Q => \srl_gen[0].part_stage_gen.b_gen[7].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[7].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[8].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[8].srl_I_n_0\,
      Q => \^q\(8),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[8].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vum_data_reg[9]\(8),
      Q => \srl_gen[0].part_stage_gen.b_gen[8].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[8].srl_I_Q31_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TySOM_1_7Z030_mipi_csi_0_delay_bus__parameterized3\ is
  port (
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \reg_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \cnt_reg[0]\ : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    \vfm_data_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TySOM_1_7Z030_mipi_csi_0_delay_bus__parameterized3\ : entity is "delay_bus";
end \TySOM_1_7Z030_mipi_csi_0_delay_bus__parameterized3\;

architecture STRUCTURE of \TySOM_1_7Z030_mipi_csi_0_delay_bus__parameterized3\ is
  signal \data[24]_i_2_n_0\ : STD_LOGIC;
  signal \data[25]_i_2_n_0\ : STD_LOGIC;
  signal \data[26]_i_2_n_0\ : STD_LOGIC;
  signal \data[27]_i_2_n_0\ : STD_LOGIC;
  signal \data[28]_i_2_n_0\ : STD_LOGIC;
  signal \data[29]_i_2_n_0\ : STD_LOGIC;
  signal \data[30]_i_2_n_0\ : STD_LOGIC;
  signal \data[31]_i_2_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \srl_gen[0].part_stage_gen.b_gen[0].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[10].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[11].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[12].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[13].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[14].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[15].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[16].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[17].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[18].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[19].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[1].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[20].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[21].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[22].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[23].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[24].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[25].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[26].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[27].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[28].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[29].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[2].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[30].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[31].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[3].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[4].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[5].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[6].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[7].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[8].srl_I_n_0\ : STD_LOGIC;
  signal \srl_gen[0].part_stage_gen.b_gen[9].srl_I_n_0\ : STD_LOGIC;
  signal vcrop_data : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[0].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[10].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[11].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[12].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[13].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[14].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[15].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[16].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[17].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[18].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[19].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[1].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[20].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[21].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[22].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[23].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[24].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[25].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[26].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[27].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[28].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[29].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[2].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[30].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[31].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[3].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[4].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[5].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[6].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[7].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[8].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_srl_gen[0].part_stage_gen.b_gen[9].srl_I_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[0].ff_I\ : label is "FD";
  attribute box_type : string;
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[0].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[0].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[0].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name : string;
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[0].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[0].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[10].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[10].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[10].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[10].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[10].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[10].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[11].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[11].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[11].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[11].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[11].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[11].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[12].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[12].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[12].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[12].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[12].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[12].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[13].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[13].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[13].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[13].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[13].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[13].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[14].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[14].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[14].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[14].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[14].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[14].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[15].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[15].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[15].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[15].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[15].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[15].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[16].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[16].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[16].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[16].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[16].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[16].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[17].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[17].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[17].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[17].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[17].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[17].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[18].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[18].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[18].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[18].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[18].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[18].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[19].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[19].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[19].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[19].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[19].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[19].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[1].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[1].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[1].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[1].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[1].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[1].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[20].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[20].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[20].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[20].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[20].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[20].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[21].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[21].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[21].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[21].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[21].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[21].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[22].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[22].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[22].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[22].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[22].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[22].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[23].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[23].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[23].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[23].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[23].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[23].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[24].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[24].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[24].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[24].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[24].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[24].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[25].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[25].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[25].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[25].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[25].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[25].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[26].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[26].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[26].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[26].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[26].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[26].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[27].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[27].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[27].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[27].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[27].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[27].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[28].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[28].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[28].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[28].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[28].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[28].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[29].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[29].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[29].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[29].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[29].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[29].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[2].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[2].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[2].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[2].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[2].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[2].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[30].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[30].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[30].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[30].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[30].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[30].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[31].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[31].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[31].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[31].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[31].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[31].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[3].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[3].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[3].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[3].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[3].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[3].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[4].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[4].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[4].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[4].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[4].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[4].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[5].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[5].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[5].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[5].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[5].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[5].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[6].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[6].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[6].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[6].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[6].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[6].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[7].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[7].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[7].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[7].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[7].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[7].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[8].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[8].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[8].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[8].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[8].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[8].srl_I ";
  attribute XILINX_LEGACY_PRIM of \srl_gen[0].part_stage_gen.b_gen[9].ff_I\ : label is "FD";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[9].ff_I\ : label is "PRIMITIVE";
  attribute box_type of \srl_gen[0].part_stage_gen.b_gen[9].srl_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl_gen[0].part_stage_gen.b_gen[9].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen ";
  attribute srl_name of \srl_gen[0].part_stage_gen.b_gen[9].srl_I\ : label is "\U0/vid_pipeline_I/crop_I/data_dly_I/srl_gen[0].part_stage_gen.b_gen[9].srl_I ";
begin
  q(7 downto 0) <= \^q\(7 downto 0);
\data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30303030B8303030"
    )
        port map (
      I0 => \reg_reg[1]\(1),
      I1 => \reg_reg[1]\(0),
      I2 => vcrop_data(10),
      I3 => \^q\(2),
      I4 => \cnt_reg[0]\,
      I5 => p_3_in,
      O => D(2)
    );
\data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30303030B8303030"
    )
        port map (
      I0 => \reg_reg[1]\(1),
      I1 => \reg_reg[1]\(0),
      I2 => vcrop_data(11),
      I3 => \^q\(3),
      I4 => \cnt_reg[0]\,
      I5 => p_3_in,
      O => D(3)
    );
\data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30303030B8303030"
    )
        port map (
      I0 => \reg_reg[1]\(1),
      I1 => \reg_reg[1]\(0),
      I2 => vcrop_data(12),
      I3 => \^q\(4),
      I4 => \cnt_reg[0]\,
      I5 => p_3_in,
      O => D(4)
    );
\data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30303030B8303030"
    )
        port map (
      I0 => \reg_reg[1]\(1),
      I1 => \reg_reg[1]\(0),
      I2 => vcrop_data(13),
      I3 => \^q\(5),
      I4 => \cnt_reg[0]\,
      I5 => p_3_in,
      O => D(5)
    );
\data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30303030B8303030"
    )
        port map (
      I0 => \reg_reg[1]\(1),
      I1 => \reg_reg[1]\(0),
      I2 => vcrop_data(14),
      I3 => \^q\(6),
      I4 => \cnt_reg[0]\,
      I5 => p_3_in,
      O => D(6)
    );
\data[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30303030B8303030"
    )
        port map (
      I0 => \reg_reg[1]\(1),
      I1 => \reg_reg[1]\(0),
      I2 => vcrop_data(15),
      I3 => \^q\(7),
      I4 => \cnt_reg[0]\,
      I5 => p_3_in,
      O => D(7)
    );
\data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E020202CE020202"
    )
        port map (
      I0 => vcrop_data(16),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \^q\(0),
      I4 => p_3_in,
      I5 => \cnt_reg[0]\,
      O => D(8)
    );
\data[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E020202CE020202"
    )
        port map (
      I0 => vcrop_data(17),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \^q\(1),
      I4 => p_3_in,
      I5 => \cnt_reg[0]\,
      O => D(9)
    );
\data[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E020202CE020202"
    )
        port map (
      I0 => vcrop_data(18),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \^q\(2),
      I4 => p_3_in,
      I5 => \cnt_reg[0]\,
      O => D(10)
    );
\data[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E020202CE020202"
    )
        port map (
      I0 => vcrop_data(19),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \^q\(3),
      I4 => p_3_in,
      I5 => \cnt_reg[0]\,
      O => D(11)
    );
\data[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E020202CE020202"
    )
        port map (
      I0 => vcrop_data(20),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \^q\(4),
      I4 => p_3_in,
      I5 => \cnt_reg[0]\,
      O => D(12)
    );
\data[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E020202CE020202"
    )
        port map (
      I0 => vcrop_data(21),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \^q\(5),
      I4 => p_3_in,
      I5 => \cnt_reg[0]\,
      O => D(13)
    );
\data[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E020202CE020202"
    )
        port map (
      I0 => vcrop_data(22),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \^q\(6),
      I4 => p_3_in,
      I5 => \cnt_reg[0]\,
      O => D(14)
    );
\data[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E020202CE020202"
    )
        port map (
      I0 => vcrop_data(23),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \^q\(7),
      I4 => p_3_in,
      I5 => \cnt_reg[0]\,
      O => D(15)
    );
\data[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => vcrop_data(24),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \data[24]_i_2_n_0\,
      O => D(16)
    );
\data[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C808080800000000"
    )
        port map (
      I0 => vcrop_data(8),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \^q\(0),
      I4 => \cnt_reg[0]\,
      I5 => p_3_in,
      O => \data[24]_i_2_n_0\
    );
\data[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => vcrop_data(25),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \data[25]_i_2_n_0\,
      O => D(17)
    );
\data[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C808080800000000"
    )
        port map (
      I0 => vcrop_data(9),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \^q\(1),
      I4 => \cnt_reg[0]\,
      I5 => p_3_in,
      O => \data[25]_i_2_n_0\
    );
\data[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => vcrop_data(26),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \data[26]_i_2_n_0\,
      O => D(18)
    );
\data[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C808080800000000"
    )
        port map (
      I0 => vcrop_data(10),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \^q\(2),
      I4 => \cnt_reg[0]\,
      I5 => p_3_in,
      O => \data[26]_i_2_n_0\
    );
\data[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => vcrop_data(27),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \data[27]_i_2_n_0\,
      O => D(19)
    );
\data[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C808080800000000"
    )
        port map (
      I0 => vcrop_data(11),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \^q\(3),
      I4 => \cnt_reg[0]\,
      I5 => p_3_in,
      O => \data[27]_i_2_n_0\
    );
\data[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => vcrop_data(28),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \data[28]_i_2_n_0\,
      O => D(20)
    );
\data[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C808080800000000"
    )
        port map (
      I0 => vcrop_data(12),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \^q\(4),
      I4 => \cnt_reg[0]\,
      I5 => p_3_in,
      O => \data[28]_i_2_n_0\
    );
\data[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => vcrop_data(29),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \data[29]_i_2_n_0\,
      O => D(21)
    );
\data[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C808080800000000"
    )
        port map (
      I0 => vcrop_data(13),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \^q\(5),
      I4 => \cnt_reg[0]\,
      I5 => p_3_in,
      O => \data[29]_i_2_n_0\
    );
\data[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => vcrop_data(30),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \data[30]_i_2_n_0\,
      O => D(22)
    );
\data[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C808080800000000"
    )
        port map (
      I0 => vcrop_data(14),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \^q\(6),
      I4 => \cnt_reg[0]\,
      I5 => p_3_in,
      O => \data[30]_i_2_n_0\
    );
\data[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => vcrop_data(31),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \data[31]_i_2_n_0\,
      O => D(23)
    );
\data[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C808080800000000"
    )
        port map (
      I0 => vcrop_data(15),
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \^q\(7),
      I4 => \cnt_reg[0]\,
      I5 => p_3_in,
      O => \data[31]_i_2_n_0\
    );
\data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30303030B8303030"
    )
        port map (
      I0 => \reg_reg[1]\(1),
      I1 => \reg_reg[1]\(0),
      I2 => vcrop_data(8),
      I3 => \^q\(0),
      I4 => \cnt_reg[0]\,
      I5 => p_3_in,
      O => D(0)
    );
\data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30303030B8303030"
    )
        port map (
      I0 => \reg_reg[1]\(1),
      I1 => \reg_reg[1]\(0),
      I2 => vcrop_data(9),
      I3 => \^q\(1),
      I4 => \cnt_reg[0]\,
      I5 => p_3_in,
      O => D(1)
    );
\srl_gen[0].part_stage_gen.b_gen[0].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[0].srl_I_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[0].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(0),
      Q => \srl_gen[0].part_stage_gen.b_gen[0].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[0].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[10].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[10].srl_I_n_0\,
      Q => vcrop_data(10),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[10].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(10),
      Q => \srl_gen[0].part_stage_gen.b_gen[10].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[10].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[11].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[11].srl_I_n_0\,
      Q => vcrop_data(11),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[11].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(11),
      Q => \srl_gen[0].part_stage_gen.b_gen[11].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[11].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[12].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[12].srl_I_n_0\,
      Q => vcrop_data(12),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[12].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(12),
      Q => \srl_gen[0].part_stage_gen.b_gen[12].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[12].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[13].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[13].srl_I_n_0\,
      Q => vcrop_data(13),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[13].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(13),
      Q => \srl_gen[0].part_stage_gen.b_gen[13].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[13].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[14].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[14].srl_I_n_0\,
      Q => vcrop_data(14),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[14].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(14),
      Q => \srl_gen[0].part_stage_gen.b_gen[14].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[14].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[15].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[15].srl_I_n_0\,
      Q => vcrop_data(15),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[15].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(15),
      Q => \srl_gen[0].part_stage_gen.b_gen[15].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[15].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[16].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[16].srl_I_n_0\,
      Q => vcrop_data(16),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[16].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(16),
      Q => \srl_gen[0].part_stage_gen.b_gen[16].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[16].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[17].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[17].srl_I_n_0\,
      Q => vcrop_data(17),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[17].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(17),
      Q => \srl_gen[0].part_stage_gen.b_gen[17].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[17].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[18].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[18].srl_I_n_0\,
      Q => vcrop_data(18),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[18].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(18),
      Q => \srl_gen[0].part_stage_gen.b_gen[18].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[18].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[19].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[19].srl_I_n_0\,
      Q => vcrop_data(19),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[19].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(19),
      Q => \srl_gen[0].part_stage_gen.b_gen[19].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[19].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[1].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[1].srl_I_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[1].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(1),
      Q => \srl_gen[0].part_stage_gen.b_gen[1].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[1].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[20].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[20].srl_I_n_0\,
      Q => vcrop_data(20),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[20].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(20),
      Q => \srl_gen[0].part_stage_gen.b_gen[20].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[20].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[21].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[21].srl_I_n_0\,
      Q => vcrop_data(21),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[21].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(21),
      Q => \srl_gen[0].part_stage_gen.b_gen[21].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[21].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[22].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[22].srl_I_n_0\,
      Q => vcrop_data(22),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[22].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(22),
      Q => \srl_gen[0].part_stage_gen.b_gen[22].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[22].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[23].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[23].srl_I_n_0\,
      Q => vcrop_data(23),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[23].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(23),
      Q => \srl_gen[0].part_stage_gen.b_gen[23].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[23].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[24].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[24].srl_I_n_0\,
      Q => vcrop_data(24),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[24].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(24),
      Q => \srl_gen[0].part_stage_gen.b_gen[24].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[24].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[25].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[25].srl_I_n_0\,
      Q => vcrop_data(25),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[25].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(25),
      Q => \srl_gen[0].part_stage_gen.b_gen[25].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[25].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[26].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[26].srl_I_n_0\,
      Q => vcrop_data(26),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[26].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(26),
      Q => \srl_gen[0].part_stage_gen.b_gen[26].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[26].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[27].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[27].srl_I_n_0\,
      Q => vcrop_data(27),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[27].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(27),
      Q => \srl_gen[0].part_stage_gen.b_gen[27].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[27].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[28].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[28].srl_I_n_0\,
      Q => vcrop_data(28),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[28].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(28),
      Q => \srl_gen[0].part_stage_gen.b_gen[28].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[28].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[29].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[29].srl_I_n_0\,
      Q => vcrop_data(29),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[29].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(29),
      Q => \srl_gen[0].part_stage_gen.b_gen[29].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[29].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[2].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[2].srl_I_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[2].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(2),
      Q => \srl_gen[0].part_stage_gen.b_gen[2].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[2].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[30].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[30].srl_I_n_0\,
      Q => vcrop_data(30),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[30].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(30),
      Q => \srl_gen[0].part_stage_gen.b_gen[30].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[30].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[31].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[31].srl_I_n_0\,
      Q => vcrop_data(31),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[31].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(31),
      Q => \srl_gen[0].part_stage_gen.b_gen[31].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[31].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[3].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[3].srl_I_n_0\,
      Q => \^q\(3),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[3].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(3),
      Q => \srl_gen[0].part_stage_gen.b_gen[3].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[3].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[4].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[4].srl_I_n_0\,
      Q => \^q\(4),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[4].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(4),
      Q => \srl_gen[0].part_stage_gen.b_gen[4].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[4].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[5].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[5].srl_I_n_0\,
      Q => \^q\(5),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[5].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(5),
      Q => \srl_gen[0].part_stage_gen.b_gen[5].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[5].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[6].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[6].srl_I_n_0\,
      Q => \^q\(6),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[6].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(6),
      Q => \srl_gen[0].part_stage_gen.b_gen[6].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[6].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[7].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[7].srl_I_n_0\,
      Q => \^q\(7),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[7].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(7),
      Q => \srl_gen[0].part_stage_gen.b_gen[7].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[7].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[8].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[8].srl_I_n_0\,
      Q => vcrop_data(8),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[8].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(8),
      Q => \srl_gen[0].part_stage_gen.b_gen[8].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[8].srl_I_Q31_UNCONNECTED\
    );
\srl_gen[0].part_stage_gen.b_gen[9].ff_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \srl_gen[0].part_stage_gen.b_gen[9].srl_I_n_0\,
      Q => vcrop_data(9),
      R => '0'
    );
\srl_gen[0].part_stage_gen.b_gen[9].srl_I\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 0) => B"00001",
      CE => '1',
      CLK => clk,
      D => \vfm_data_reg[31]\(9),
      Q => \srl_gen[0].part_stage_gen.b_gen[9].srl_I_n_0\,
      Q31 => \NLW_srl_gen[0].part_stage_gen.b_gen[9].srl_I_Q31_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_mipi_csi_phy is
  port (
    out_clk : out STD_LOGIC;
    out_data : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pad_clk_p : in STD_LOGIC;
    pad_clk_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    dly_ld_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_dly_cnt_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    refclk : in STD_LOGIC;
    pad_data_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pad_data_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ctrl_dly_ld_data_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_mipi_csi_phy : entity is "mipi_csi_phy";
end TySOM_1_7Z030_mipi_csi_0_mipi_csi_phy;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_mipi_csi_phy is
  signal clk_dly : STD_LOGIC;
  signal clk_ibufg : STD_LOGIC;
  signal data_dly_0 : STD_LOGIC;
  signal data_dly_1 : STD_LOGIC;
  signal data_ibuf_0 : STD_LOGIC;
  signal data_ibuf_1 : STD_LOGIC;
  signal \^out_clk\ : STD_LOGIC;
  signal NLW_clk_idelay_I_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_idelayctrl_I_RDY_UNCONNECTED : STD_LOGIC;
  signal \NLW_lane_gen[0].data_idelay_I_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_lane_gen[1].data_idelay_I_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clk_ibufg_I : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clk_ibufg_I : label is "0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of clk_ibufg_I : label is "IBUFGDS";
  attribute box_type : string;
  attribute box_type of clk_ibufg_I : label is "PRIMITIVE";
  attribute box_type of clk_idelay_I : label is "PRIMITIVE";
  attribute box_type of csi_clk_bufr : label is "PRIMITIVE";
  attribute box_type of idelayctrl_I : label is "PRIMITIVE";
  attribute CAPACITANCE of \lane_gen[0].data_ibuf_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \lane_gen[0].data_ibuf_I\ : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of \lane_gen[0].data_ibuf_I\ : label is "AUTO";
  attribute box_type of \lane_gen[0].data_ibuf_I\ : label is "PRIMITIVE";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of \lane_gen[0].data_iddr_I\ : label is "TRUE";
  attribute box_type of \lane_gen[0].data_iddr_I\ : label is "PRIMITIVE";
  attribute box_type of \lane_gen[0].data_idelay_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \lane_gen[1].data_ibuf_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \lane_gen[1].data_ibuf_I\ : label is "0";
  attribute IFD_DELAY_VALUE of \lane_gen[1].data_ibuf_I\ : label is "AUTO";
  attribute box_type of \lane_gen[1].data_ibuf_I\ : label is "PRIMITIVE";
  attribute \__SRVAL\ of \lane_gen[1].data_iddr_I\ : label is "TRUE";
  attribute box_type of \lane_gen[1].data_iddr_I\ : label is "PRIMITIVE";
  attribute box_type of \lane_gen[1].data_idelay_I\ : label is "PRIMITIVE";
begin
  out_clk <= \^out_clk\;
clk_ibufg_I: unisim.vcomponents.IBUFDS
     port map (
      I => pad_clk_p,
      IB => pad_clk_n,
      O => clk_ibufg
    );
clk_idelay_I: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "CLOCK"
    )
        port map (
      C => clk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => \ctrl_dly_cnt_reg[4]\(4 downto 0),
      CNTVALUEOUT(4 downto 0) => NLW_clk_idelay_I_CNTVALUEOUT_UNCONNECTED(4 downto 0),
      DATAIN => '0',
      DATAOUT => clk_dly,
      IDATAIN => clk_ibufg,
      INC => '0',
      LD => dly_ld_clk,
      LDPIPEEN => '0',
      REGRST => Q(0)
    );
csi_clk_bufr: unisim.vcomponents.BUFR
    generic map(
      BUFR_DIVIDE => "BYPASS",
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE => '1',
      CLR => '0',
      I => clk_dly,
      O => \^out_clk\
    );
idelayctrl_I: unisim.vcomponents.IDELAYCTRL
    generic map(
      SIM_DEVICE => "7SERIES"
    )
        port map (
      RDY => NLW_idelayctrl_I_RDY_UNCONNECTED,
      REFCLK => refclk,
      RST => Q(0)
    );
\lane_gen[0].data_ibuf_I\: unisim.vcomponents.IBUFDS
     port map (
      I => pad_data_p(0),
      IB => pad_data_n(0),
      O => data_ibuf_0
    );
\lane_gen[0].data_iddr_I\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^out_clk\,
      CE => '1',
      D => data_dly_0,
      Q1 => out_data(0),
      Q2 => out_data(1),
      R => '0',
      S => '0'
    );
\lane_gen[0].data_idelay_I\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => clk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => \ctrl_dly_cnt_reg[4]\(4 downto 0),
      CNTVALUEOUT(4 downto 0) => \NLW_lane_gen[0].data_idelay_I_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => data_dly_0,
      IDATAIN => data_ibuf_0,
      INC => '0',
      LD => \ctrl_dly_ld_data_reg[1]\(0),
      LDPIPEEN => '0',
      REGRST => Q(0)
    );
\lane_gen[1].data_ibuf_I\: unisim.vcomponents.IBUFDS
     port map (
      I => pad_data_p(1),
      IB => pad_data_n(1),
      O => data_ibuf_1
    );
\lane_gen[1].data_iddr_I\: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE_PIPELINED",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => \^out_clk\,
      CE => '1',
      D => data_dly_1,
      Q1 => out_data(2),
      Q2 => out_data(3),
      R => '0',
      S => '0'
    );
\lane_gen[1].data_idelay_I\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => clk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => \ctrl_dly_cnt_reg[4]\(4 downto 0),
      CNTVALUEOUT(4 downto 0) => \NLW_lane_gen[1].data_idelay_I_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => data_dly_1,
      IDATAIN => data_ibuf_1,
      INC => '0',
      LD => \ctrl_dly_ld_data_reg[1]\(1),
      LDPIPEEN => '0',
      REGRST => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_mipi_csi_pkt_parse is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    err_no_hdr : out STD_LOGIC;
    err_early_sof : out STD_LOGIC;
    err_unk_pkt : out STD_LOGIC;
    err_early_last : out STD_LOGIC;
    err_late_last : out STD_LOGIC;
    stat_err_pending : out STD_LOGIC;
    pause : out STD_LOGIC;
    \slb_rdata_reg[16]\ : out STD_LOGIC;
    vin_sof : out STD_LOGIC;
    \cnt_reg[16]_0\ : out STD_LOGIC;
    out_valid_i_reg : out STD_LOGIC;
    err_late_last_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    err_late_last_reg_1 : out STD_LOGIC;
    \FSM_sequential_state_cur_reg[2]_0\ : out STD_LOGIC;
    has_footer_reg_0 : out STD_LOGIC;
    \data_reg_reg[15]\ : out STD_LOGIC;
    \err_any_c__3\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    err_early_sof_c : in STD_LOGIC;
    err_unk_pkt_c : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    err_pending0 : in STD_LOGIC;
    DO : in STD_LOGIC_VECTOR ( 14 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rst_cnt_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rst_cnt_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rst_cnt_reg[3]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    vid_ready : in STD_LOGIC;
    pktr_empty : in STD_LOGIC;
    pause0 : in STD_LOGIC;
    pix_fifo_afull : in STD_LOGIC;
    state_nxt113_out : in STD_LOGIC;
    \reg_reg[18]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DOP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_state_cur_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_state_cur_reg[0]_1\ : in STD_LOGIC;
    \reg_reg[16]\ : in STD_LOGIC;
    \rst_cnt_reg[3]_2\ : in STD_LOGIC;
    \rst_cnt_reg[3]_3\ : in STD_LOGIC;
    has_last : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_mipi_csi_pkt_parse : entity is "mipi_csi_pkt_parse";
end TySOM_1_7Z030_mipi_csi_0_mipi_csi_pkt_parse;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_mipi_csi_pkt_parse is
  signal \FSM_sequential_state_cur[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[2]_i_4_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_cur_reg[2]_0\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_i_3_n_0\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_i_4_n_0\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_i_5_n_0\ : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \^cnt_reg[16]_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal err_early_last_c : STD_LOGIC;
  signal err_late_last_c : STD_LOGIC;
  signal err_late_last_i_2_n_0 : STD_LOGIC;
  signal \^err_late_last_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^err_late_last_reg_1\ : STD_LOGIC;
  signal err_no_hdr_c : STD_LOGIC;
  signal has_footer : STD_LOGIC;
  signal has_footer_i_1_n_0 : STD_LOGIC;
  signal \^has_footer_reg_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__0_n_4\ : STD_LOGIC;
  signal \minusOp_carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_n_4\ : STD_LOGIC;
  signal \minusOp_carry__1_n_5\ : STD_LOGIC;
  signal \minusOp_carry__1_n_6\ : STD_LOGIC;
  signal \minusOp_carry__1_n_7\ : STD_LOGIC;
  signal \minusOp_carry__2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_carry__2_n_5\ : STD_LOGIC;
  signal \minusOp_carry__2_n_6\ : STD_LOGIC;
  signal \minusOp_carry__2_n_7\ : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal minusOp_carry_n_4 : STD_LOGIC;
  signal minusOp_carry_n_5 : STD_LOGIC;
  signal minusOp_carry_n_6 : STD_LOGIC;
  signal minusOp_carry_n_7 : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \out\ : signal is "yes";
  signal \^pause\ : STD_LOGIC;
  signal pause_i_1_n_0 : STD_LOGIC;
  signal \^stat_err_pending\ : STD_LOGIC;
  signal \stat_running_i_1__0_n_0\ : STD_LOGIC;
  signal state_cur : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute RTL_KEEP of state_cur : signal is "yes";
  signal state_cur_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal state_nxt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal vid_last0 : STD_LOGIC;
  signal vid_sof_i_11_n_0 : STD_LOGIC;
  signal vid_sof_i_12_n_0 : STD_LOGIC;
  signal vid_sof_i_14_n_0 : STD_LOGIC;
  signal vid_sof_i_16_n_0 : STD_LOGIC;
  signal vid_sof_i_1_n_0 : STD_LOGIC;
  signal vid_sof_i_2_n_0 : STD_LOGIC;
  signal vid_sof_i_3_n_0 : STD_LOGIC;
  signal vid_sof_i_7_n_0 : STD_LOGIC;
  signal vid_sof_i_8_n_0 : STD_LOGIC;
  signal vid_sof_i_9_n_0 : STD_LOGIC;
  signal \^vin_sof\ : STD_LOGIC;
  signal \NLW_minusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_minusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_minusOp_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_cur_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_cur_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_cur_reg[2]\ : label is "yes";
begin
  \FSM_sequential_state_cur_reg[2]_0\ <= \^fsm_sequential_state_cur_reg[2]_0\;
  \cnt_reg[16]_0\ <= \^cnt_reg[16]_0\;
  err_late_last_reg_0(0) <= \^err_late_last_reg_0\(0);
  err_late_last_reg_1 <= \^err_late_last_reg_1\;
  has_footer_reg_0 <= \^has_footer_reg_0\;
  \out\(1 downto 0) <= \^out\(1 downto 0);
  pause <= \^pause\;
  stat_err_pending <= \^stat_err_pending\;
  vin_sof <= \^vin_sof\;
\FSM_sequential_state_cur[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \FSM_sequential_state_cur[2]_i_2__0_n_0\,
      I1 => \FSM_sequential_state_cur[2]_i_3_n_0\,
      I2 => \FSM_sequential_state_cur[0]_i_2__0_n_0\,
      I3 => \FSM_sequential_state_cur_reg[0]_1\,
      O => \FSM_sequential_state_cur[0]_i_1_n_0\
    );
\FSM_sequential_state_cur[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4400440044034400"
    )
        port map (
      I0 => DOP(0),
      I1 => \^out\(1),
      I2 => state_cur(2),
      I3 => \^out\(0),
      I4 => \reg_reg[18]\(0),
      I5 => \^stat_err_pending\,
      O => \FSM_sequential_state_cur[0]_i_2__0_n_0\
    );
\FSM_sequential_state_cur[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8000000"
    )
        port map (
      I0 => \FSM_sequential_state_cur_reg[0]_0\,
      I1 => DOP(0),
      I2 => \FSM_sequential_state_cur[2]_i_3_n_0\,
      I3 => \FSM_sequential_state_cur[2]_i_2__0_n_0\,
      I4 => \FSM_sequential_state_cur[1]_i_3_n_0\,
      O => \FSM_sequential_state_cur[1]_i_1__0_n_0\
    );
\FSM_sequential_state_cur[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEEEEE"
    )
        port map (
      I0 => \FSM_sequential_state_cur[1]_i_6_n_0\,
      I1 => \^out\(1),
      I2 => \^out\(0),
      I3 => \reg_reg[18]\(0),
      I4 => state_nxt113_out,
      O => \FSM_sequential_state_cur[1]_i_3_n_0\
    );
\FSM_sequential_state_cur[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808A808A808A0000"
    )
        port map (
      I0 => DOP(0),
      I1 => \^cnt_reg[16]_0\,
      I2 => \^out\(0),
      I3 => pktr_empty,
      I4 => \^out\(1),
      I5 => state_cur(2),
      O => \FSM_sequential_state_cur[1]_i_6_n_0\
    );
\FSM_sequential_state_cur[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCC440404"
    )
        port map (
      I0 => DOP(0),
      I1 => \FSM_sequential_state_cur[2]_i_2__0_n_0\,
      I2 => \FSM_sequential_state_cur[2]_i_3_n_0\,
      I3 => pktr_empty,
      I4 => state_cur(2),
      I5 => \FSM_sequential_state_cur[2]_i_4_n_0\,
      O => \FSM_sequential_state_cur[2]_i_1__0_n_0\
    );
\FSM_sequential_state_cur[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => err_early_last_c,
      I1 => err_early_sof_c,
      I2 => err_no_hdr_c,
      I3 => err_late_last_c,
      I4 => err_unk_pkt_c,
      I5 => \reg_reg[18]\(1),
      O => \FSM_sequential_state_cur[2]_i_2__0_n_0\
    );
\FSM_sequential_state_cur[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^cnt_reg[16]_0\,
      I1 => \^err_late_last_reg_0\(0),
      I2 => \^out\(0),
      I3 => \^out\(1),
      O => \FSM_sequential_state_cur[2]_i_3_n_0\
    );
\FSM_sequential_state_cur[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^fsm_sequential_state_cur_reg[2]_0\,
      I1 => state_cur(2),
      I2 => \^out\(0),
      I3 => \FSM_sequential_state_cur[2]_i_2__0_n_0\,
      O => \FSM_sequential_state_cur[2]_i_4_n_0\
    );
\FSM_sequential_state_cur[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F22"
    )
        port map (
      I0 => \reg_reg[18]\(0),
      I1 => state_nxt113_out,
      I2 => \^cnt_reg[16]_0\,
      I3 => \^out\(1),
      O => \^fsm_sequential_state_cur_reg[2]_0\
    );
\FSM_sequential_state_cur_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state_cur[0]_i_1_n_0\,
      Q => \^out\(0),
      R => Q(0)
    );
\FSM_sequential_state_cur_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state_cur[1]_i_1__0_n_0\,
      Q => \^out\(1),
      R => Q(0)
    );
\FSM_sequential_state_cur_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state_cur[2]_i_1__0_n_0\,
      Q => state_cur(2),
      R => Q(0)
    );
\bl.fifo_36_inst_bl.fifo_36_bl_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEEEFEE"
    )
        port map (
      I0 => \bl.fifo_36_inst_bl.fifo_36_bl_i_3_n_0\,
      I1 => \bl.fifo_36_inst_bl.fifo_36_bl_i_4_n_0\,
      I2 => \bl.fifo_36_inst_bl.fifo_36_bl_i_5_n_0\,
      I3 => vid_ready,
      I4 => \^pause\,
      I5 => pktr_empty,
      O => \^cnt_reg[16]_0\
    );
\bl.fifo_36_inst_bl.fifo_36_bl_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => state_cur(2),
      I1 => \reg_reg[18]\(2),
      I2 => \^out\(1),
      I3 => \^out\(0),
      O => \bl.fifo_36_inst_bl.fifo_36_bl_i_3_n_0\
    );
\bl.fifo_36_inst_bl.fifo_36_bl_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => state_cur(2),
      I1 => \^out\(1),
      I2 => \^out\(0),
      O => \bl.fifo_36_inst_bl.fifo_36_bl_i_4_n_0\
    );
\bl.fifo_36_inst_bl.fifo_36_bl_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_cur(2),
      I1 => \^out\(1),
      O => \bl.fifo_36_inst_bl.fifo_36_bl_i_5_n_0\
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \minusOp_carry__1_n_6\,
      I1 => \^out\(1),
      I2 => state_cur(2),
      I3 => \^out\(0),
      I4 => \minusOp_inferred__0/i__carry__1_n_6\,
      O => cnt(10)
    );
\cnt[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \minusOp_carry__1_n_5\,
      I1 => \^out\(1),
      I2 => state_cur(2),
      I3 => \^out\(0),
      I4 => \minusOp_inferred__0/i__carry__1_n_5\,
      O => cnt(11)
    );
\cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \minusOp_carry__1_n_4\,
      I1 => \^out\(1),
      I2 => state_cur(2),
      I3 => \^out\(0),
      I4 => \minusOp_inferred__0/i__carry__1_n_4\,
      O => cnt(12)
    );
\cnt[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \minusOp_carry__2_n_7\,
      I1 => \^out\(1),
      I2 => state_cur(2),
      I3 => \^out\(0),
      I4 => \minusOp_inferred__0/i__carry__2_n_7\,
      O => cnt(13)
    );
\cnt[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \minusOp_carry__2_n_6\,
      I1 => \^out\(1),
      I2 => state_cur(2),
      I3 => \^out\(0),
      I4 => \minusOp_inferred__0/i__carry__2_n_6\,
      O => cnt(14)
    );
\cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \minusOp_carry__2_n_5\,
      I1 => \^out\(1),
      I2 => state_cur(2),
      I3 => \^out\(0),
      I4 => \minusOp_inferred__0/i__carry__2_n_5\,
      O => cnt(15)
    );
\cnt[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \minusOp_carry__2_n_0\,
      I1 => \^out\(1),
      I2 => state_cur(2),
      I3 => \^out\(0),
      I4 => \minusOp_inferred__0/i__carry__2_n_4\,
      O => cnt(16)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => minusOp_carry_n_7,
      I1 => \^out\(1),
      I2 => state_cur(2),
      I3 => \^out\(0),
      I4 => \minusOp_inferred__0/i__carry_n_7\,
      O => cnt(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => minusOp_carry_n_6,
      I1 => \^out\(1),
      I2 => state_cur(2),
      I3 => \^out\(0),
      I4 => \minusOp_inferred__0/i__carry_n_6\,
      O => cnt(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => minusOp_carry_n_5,
      I1 => \^out\(1),
      I2 => state_cur(2),
      I3 => \^out\(0),
      I4 => \minusOp_inferred__0/i__carry_n_5\,
      O => cnt(3)
    );
\cnt[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEFFFFF"
    )
        port map (
      I0 => has_last,
      I1 => pktr_empty,
      I2 => \^out\(0),
      I3 => state_cur(2),
      I4 => \^out\(1),
      I5 => \^pause\,
      O => \data_reg_reg[15]\
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => minusOp_carry_n_4,
      I1 => \^out\(1),
      I2 => state_cur(2),
      I3 => \^out\(0),
      I4 => \minusOp_inferred__0/i__carry_n_4\,
      O => cnt(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \minusOp_carry__0_n_7\,
      I1 => \^out\(1),
      I2 => state_cur(2),
      I3 => \^out\(0),
      I4 => \minusOp_inferred__0/i__carry__0_n_7\,
      O => cnt(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \minusOp_carry__0_n_6\,
      I1 => \^out\(1),
      I2 => state_cur(2),
      I3 => \^out\(0),
      I4 => \minusOp_inferred__0/i__carry__0_n_6\,
      O => cnt(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \minusOp_carry__0_n_5\,
      I1 => \^out\(1),
      I2 => state_cur(2),
      I3 => \^out\(0),
      I4 => \minusOp_inferred__0/i__carry__0_n_5\,
      O => cnt(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \minusOp_carry__0_n_4\,
      I1 => \^out\(1),
      I2 => state_cur(2),
      I3 => \^out\(0),
      I4 => \minusOp_inferred__0/i__carry__0_n_4\,
      O => cnt(8)
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => \minusOp_carry__1_n_7\,
      I1 => \^out\(1),
      I2 => state_cur(2),
      I3 => \^out\(0),
      I4 => \minusOp_inferred__0/i__carry__1_n_7\,
      O => cnt(9)
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^cnt_reg[16]_0\,
      D => cnt(10),
      Q => \cnt_reg_n_0_[10]\,
      R => '0'
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^cnt_reg[16]_0\,
      D => cnt(11),
      Q => \cnt_reg_n_0_[11]\,
      R => '0'
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^cnt_reg[16]_0\,
      D => cnt(12),
      Q => \cnt_reg_n_0_[12]\,
      R => '0'
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^cnt_reg[16]_0\,
      D => cnt(13),
      Q => \cnt_reg_n_0_[13]\,
      R => '0'
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^cnt_reg[16]_0\,
      D => cnt(14),
      Q => \cnt_reg_n_0_[14]\,
      R => '0'
    );
\cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^cnt_reg[16]_0\,
      D => cnt(15),
      Q => \cnt_reg_n_0_[15]\,
      R => '0'
    );
\cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^cnt_reg[16]_0\,
      D => cnt(16),
      Q => \^err_late_last_reg_0\(0),
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^cnt_reg[16]_0\,
      D => cnt(1),
      Q => \cnt_reg_n_0_[1]\,
      R => '0'
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^cnt_reg[16]_0\,
      D => cnt(2),
      Q => \cnt_reg_n_0_[2]\,
      R => '0'
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^cnt_reg[16]_0\,
      D => cnt(3),
      Q => \cnt_reg_n_0_[3]\,
      R => '0'
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^cnt_reg[16]_0\,
      D => cnt(4),
      Q => \cnt_reg_n_0_[4]\,
      R => '0'
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^cnt_reg[16]_0\,
      D => cnt(5),
      Q => \cnt_reg_n_0_[5]\,
      R => '0'
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^cnt_reg[16]_0\,
      D => cnt(6),
      Q => \cnt_reg_n_0_[6]\,
      R => '0'
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^cnt_reg[16]_0\,
      D => cnt(7),
      Q => \cnt_reg_n_0_[7]\,
      R => '0'
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^cnt_reg[16]_0\,
      D => cnt(8),
      Q => \cnt_reg_n_0_[8]\,
      R => '0'
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^cnt_reg[16]_0\,
      D => cnt(9),
      Q => \cnt_reg_n_0_[9]\,
      R => '0'
    );
err_early_last_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A800"
    )
        port map (
      I0 => \^cnt_reg[16]_0\,
      I1 => \^err_late_last_reg_0\(0),
      I2 => has_footer,
      I3 => DOP(0),
      I4 => \^err_late_last_reg_1\,
      O => err_early_last_c
    );
err_early_last_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^out\(1),
      I1 => state_cur(2),
      I2 => \^out\(0),
      O => \^err_late_last_reg_1\
    );
err_early_last_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => err_early_last_c,
      Q => err_early_last,
      R => '0'
    );
err_early_sof_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^out\(1),
      I1 => state_cur(2),
      I2 => \^out\(0),
      O => \^has_footer_reg_0\
    );
err_early_sof_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => err_early_sof_c,
      Q => err_early_sof,
      R => '0'
    );
err_late_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000100"
    )
        port map (
      I0 => \^err_late_last_reg_1\,
      I1 => \^err_late_last_reg_0\(0),
      I2 => has_footer,
      I3 => \^cnt_reg[16]_0\,
      I4 => DOP(0),
      I5 => err_late_last_i_2_n_0,
      O => err_late_last_c
    );
err_late_last_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => state_cur(2),
      I1 => pktr_empty,
      I2 => DOP(0),
      I3 => \^out\(0),
      I4 => \^out\(1),
      O => err_late_last_i_2_n_0
    );
err_late_last_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => err_late_last_c,
      Q => err_late_last,
      R => '0'
    );
err_no_hdr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \^out\(0),
      I1 => state_cur(2),
      I2 => \^out\(1),
      I3 => pktr_empty,
      I4 => DOP(1),
      O => err_no_hdr_c
    );
err_no_hdr_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => err_no_hdr_c,
      Q => err_no_hdr,
      R => '0'
    );
err_pending_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => err_unk_pkt_c,
      I1 => err_late_last_c,
      I2 => err_no_hdr_c,
      I3 => err_early_sof_c,
      I4 => err_early_last_c,
      O => \err_any_c__3\
    );
err_pending_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => err_pending0,
      Q => \^stat_err_pending\,
      R => Q(0)
    );
err_unk_pkt_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => err_unk_pkt_c,
      Q => err_unk_pkt,
      R => '0'
    );
has_footer_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9FFF9000"
    )
        port map (
      I0 => DO(1),
      I1 => DO(0),
      I2 => \^has_footer_reg_0\,
      I3 => \^cnt_reg[16]_0\,
      I4 => has_footer,
      O => has_footer_i_1_n_0
    );
has_footer_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => has_footer_i_1_n_0,
      Q => has_footer,
      R => '0'
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[8]\,
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[7]\,
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[6]\,
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[5]\,
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[12]\,
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[11]\,
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[10]\,
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[9]\,
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^err_late_last_reg_0\(0),
      O => vid_last0
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[15]\,
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[14]\,
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[13]\,
      O => \i__carry__2_i_4__0_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      O => \i__carry_i_4__2_n_0\
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => DO(0),
      DI(3 downto 2) => DO(3 downto 2),
      DI(1) => '0',
      DI(0) => DO(1),
      O(3) => minusOp_carry_n_4,
      O(2) => minusOp_carry_n_5,
      O(1) => minusOp_carry_n_6,
      O(0) => minusOp_carry_n_7,
      S(3 downto 0) => S(3 downto 0)
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DO(7 downto 4),
      O(3) => \minusOp_carry__0_n_4\,
      O(2) => \minusOp_carry__0_n_5\,
      O(1) => \minusOp_carry__0_n_6\,
      O(0) => \minusOp_carry__0_n_7\,
      S(3 downto 0) => \rst_cnt_reg[3]\(3 downto 0)
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DO(11 downto 8),
      O(3) => \minusOp_carry__1_n_4\,
      O(2) => \minusOp_carry__1_n_5\,
      O(1) => \minusOp_carry__1_n_6\,
      O(0) => \minusOp_carry__1_n_7\,
      S(3 downto 0) => \rst_cnt_reg[3]_0\(3 downto 0)
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3) => \minusOp_carry__2_n_0\,
      CO(2) => \NLW_minusOp_carry__2_CO_UNCONNECTED\(2),
      CO(1) => \minusOp_carry__2_n_2\,
      CO(0) => \minusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => DO(14 downto 12),
      O(3) => \NLW_minusOp_carry__2_O_UNCONNECTED\(3),
      O(2) => \minusOp_carry__2_n_5\,
      O(1) => \minusOp_carry__2_n_6\,
      O(0) => \minusOp_carry__2_n_7\,
      S(3) => '1',
      S(2 downto 0) => \rst_cnt_reg[3]_1\(2 downto 0)
    );
\minusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp_inferred__0/i__carry_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_reg_n_0_[4]\,
      DI(2) => \cnt_reg_n_0_[3]\,
      DI(1) => \cnt_reg_n_0_[2]\,
      DI(0) => '0',
      O(3) => \minusOp_inferred__0/i__carry_n_4\,
      O(2) => \minusOp_inferred__0/i__carry_n_5\,
      O(1) => \minusOp_inferred__0/i__carry_n_6\,
      O(0) => \minusOp_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__2_n_0\
    );
\minusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_reg_n_0_[8]\,
      DI(2) => \cnt_reg_n_0_[7]\,
      DI(1) => \cnt_reg_n_0_[6]\,
      DI(0) => \cnt_reg_n_0_[5]\,
      O(3) => \minusOp_inferred__0/i__carry__0_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__0_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__0_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2__0_n_0\,
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\minusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_reg_n_0_[12]\,
      DI(2) => \cnt_reg_n_0_[11]\,
      DI(1) => \cnt_reg_n_0_[10]\,
      DI(0) => \cnt_reg_n_0_[9]\,
      O(3) => \minusOp_inferred__0/i__carry__1_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__1_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__1_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1__0_n_0\,
      S(2) => \i__carry__1_i_2__0_n_0\,
      S(1) => \i__carry__1_i_3__0_n_0\,
      S(0) => \i__carry__1_i_4__0_n_0\
    );
\minusOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__1_n_0\,
      CO(3) => \NLW_minusOp_inferred__0/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \minusOp_inferred__0/i__carry__2_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__2_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \cnt_reg_n_0_[15]\,
      DI(1) => \cnt_reg_n_0_[14]\,
      DI(0) => \cnt_reg_n_0_[13]\,
      O(3) => \minusOp_inferred__0/i__carry__2_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__2_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__2_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__2_n_7\,
      S(3) => vid_last0,
      S(2) => \i__carry__2_i_2__0_n_0\,
      S(1) => \i__carry__2_i_3__0_n_0\,
      S(0) => \i__carry__2_i_4__0_n_0\
    );
\out_valid_i_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \^pause\,
      I1 => \^out\(1),
      I2 => state_cur(2),
      I3 => \^out\(0),
      I4 => pktr_empty,
      O => out_valid_i_reg
    );
pause_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000000"
    )
        port map (
      I0 => pause0,
      I1 => \^out\(0),
      I2 => state_cur(2),
      I3 => \^out\(1),
      I4 => \^pause\,
      I5 => pix_fifo_afull,
      O => pause_i_1_n_0
    );
pause_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pause_i_1_n_0,
      Q => \^pause\,
      R => '0'
    );
\stat_running_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^out\(1),
      I1 => state_cur(2),
      I2 => \^out\(0),
      O => \stat_running_i_1__0_n_0\
    );
stat_running_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \stat_running_i_1__0_n_0\,
      Q => \slb_rdata_reg[16]\,
      R => '0'
    );
vid_sof_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAEAAA"
    )
        port map (
      I0 => vid_sof_i_2_n_0,
      I1 => vid_sof_i_3_n_0,
      I2 => state_nxt(1),
      I3 => \FSM_sequential_state_cur[2]_i_2__0_n_0\,
      I4 => state_nxt(2),
      I5 => state_nxt(0),
      O => vid_sof_i_1_n_0
    );
vid_sof_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      I2 => state_cur(2),
      O => state_cur_reg(2)
    );
vid_sof_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \^cnt_reg[16]_0\,
      I1 => DOP(0),
      I2 => \^err_late_last_reg_0\(0),
      I3 => \^out\(0),
      I4 => state_cur(2),
      I5 => \^out\(1),
      O => vid_sof_i_11_n_0
    );
vid_sof_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000002200E2"
    )
        port map (
      I0 => \reg_reg[16]\,
      I1 => \^out\(1),
      I2 => \rst_cnt_reg[3]_2\,
      I3 => state_cur(2),
      I4 => pktr_empty,
      I5 => \^out\(0),
      O => vid_sof_i_12_n_0
    );
vid_sof_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(0),
      I1 => state_cur(2),
      O => state_cur_reg(0)
    );
vid_sof_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000750000000000"
    )
        port map (
      I0 => \^cnt_reg[16]_0\,
      I1 => DOP(0),
      I2 => \^err_late_last_reg_0\(0),
      I3 => \^out\(0),
      I4 => state_cur(2),
      I5 => \^out\(1),
      O => vid_sof_i_14_n_0
    );
vid_sof_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FD0000000000"
    )
        port map (
      I0 => \^cnt_reg[16]_0\,
      I1 => \^err_late_last_reg_0\(0),
      I2 => DOP(0),
      I3 => \^out\(0),
      I4 => state_cur(2),
      I5 => \^out\(1),
      O => vid_sof_i_16_n_0
    );
vid_sof_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AAAAAA"
    )
        port map (
      I0 => \^vin_sof\,
      I1 => \^out\(1),
      I2 => state_cur(2),
      I3 => \^out\(0),
      I4 => \^cnt_reg[16]_0\,
      O => vid_sof_i_2_n_0
    );
vid_sof_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      I2 => state_cur(2),
      O => vid_sof_i_3_n_0
    );
vid_sof_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF20"
    )
        port map (
      I0 => DOP(0),
      I1 => pktr_empty,
      I2 => state_cur(2),
      I3 => vid_sof_i_7_n_0,
      I4 => vid_sof_i_8_n_0,
      O => state_nxt(1)
    );
vid_sof_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAAAA"
    )
        port map (
      I0 => vid_sof_i_9_n_0,
      I1 => vid_sof_i_3_n_0,
      I2 => state_cur_reg(2),
      I3 => state_nxt113_out,
      I4 => \reg_reg[18]\(0),
      I5 => vid_sof_i_11_n_0,
      O => state_nxt(2)
    );
vid_sof_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAAAA"
    )
        port map (
      I0 => vid_sof_i_12_n_0,
      I1 => vid_sof_i_3_n_0,
      I2 => state_cur_reg(0),
      I3 => state_nxt113_out,
      I4 => \reg_reg[18]\(0),
      I5 => vid_sof_i_14_n_0,
      O => state_nxt(0)
    );
vid_sof_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E0"
    )
        port map (
      I0 => pktr_empty,
      I1 => \rst_cnt_reg[3]_3\,
      I2 => \^out\(1),
      I3 => state_cur(2),
      I4 => \^out\(0),
      O => vid_sof_i_7_n_0
    );
vid_sof_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAAAAAAAAAA"
    )
        port map (
      I0 => vid_sof_i_16_n_0,
      I1 => \reg_reg[18]\(0),
      I2 => state_cur(2),
      I3 => \^out\(1),
      I4 => state_nxt113_out,
      I5 => \^out\(0),
      O => vid_sof_i_8_n_0
    );
vid_sof_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"020002AA"
    )
        port map (
      I0 => state_cur(2),
      I1 => \^out\(0),
      I2 => \^out\(1),
      I3 => pktr_empty,
      I4 => DOP(0),
      O => vid_sof_i_9_n_0
    );
vid_sof_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vid_sof_i_1_n_0,
      Q => \^vin_sof\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_mipi_ecc is
  port (
    ecc_exp_0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \pkt_data_reg[27]\ : in STD_LOGIC;
    \lane_gen[1].data_shift_reg\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \lane_gen[0].data_shift_reg\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \pkt_data_reg[7]\ : in STD_LOGIC;
    \pkt_data_reg[26]\ : in STD_LOGIC;
    \pkt_data_reg[16]\ : in STD_LOGIC;
    \pkt_data_reg[17]\ : in STD_LOGIC;
    \pkt_data_reg[6]\ : in STD_LOGIC;
    \pkt_data_reg[5]\ : in STD_LOGIC;
    \pkt_data_reg[4]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_mipi_ecc : entity is "mipi_ecc";
end TySOM_1_7Z030_mipi_csi_0_mipi_ecc;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_mipi_ecc is
  signal ecc_valid_1_i_10_n_0 : STD_LOGIC;
  signal ecc_valid_1_i_15_n_0 : STD_LOGIC;
  signal ecc_valid_1_i_16_n_0 : STD_LOGIC;
  signal ecc_valid_1_i_17_n_0 : STD_LOGIC;
  signal ecc_valid_1_i_18_n_0 : STD_LOGIC;
  signal ecc_valid_1_i_6_n_0 : STD_LOGIC;
  signal ecc_valid_1_i_7_n_0 : STD_LOGIC;
  signal ecc_valid_1_i_8_n_0 : STD_LOGIC;
  signal ecc_valid_1_i_9_n_0 : STD_LOGIC;
begin
ecc_valid_1_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \lane_gen[1].data_shift_reg\(2),
      I1 => \pkt_data_reg[16]\,
      I2 => \pkt_data_reg[17]\,
      I3 => \lane_gen[1].data_shift_reg\(3),
      O => ecc_valid_1_i_10_n_0
    );
ecc_valid_1_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \pkt_data_reg[27]\,
      I1 => \lane_gen[1].data_shift_reg\(4),
      I2 => ecc_valid_1_i_6_n_0,
      I3 => ecc_valid_1_i_15_n_0,
      I4 => \lane_gen[0].data_shift_reg\(4),
      I5 => \lane_gen[0].data_shift_reg\(5),
      O => ecc_exp_0(5)
    );
ecc_valid_1_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lane_gen[1].data_shift_reg\(1),
      I1 => \lane_gen[1].data_shift_reg\(0),
      I2 => ecc_valid_1_i_8_n_0,
      I3 => ecc_valid_1_i_16_n_0,
      I4 => \lane_gen[0].data_shift_reg\(4),
      I5 => \lane_gen[0].data_shift_reg\(5),
      O => ecc_exp_0(4)
    );
ecc_valid_1_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \pkt_data_reg[27]\,
      I1 => \pkt_data_reg[7]\,
      I2 => ecc_valid_1_i_6_n_0,
      I3 => ecc_valid_1_i_17_n_0,
      I4 => \lane_gen[1].data_shift_reg\(1),
      I5 => \lane_gen[0].data_shift_reg\(5),
      O => ecc_exp_0(3)
    );
ecc_valid_1_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \pkt_data_reg[27]\,
      I1 => \lane_gen[1].data_shift_reg\(4),
      I2 => ecc_valid_1_i_8_n_0,
      I3 => ecc_valid_1_i_18_n_0,
      I4 => \lane_gen[1].data_shift_reg\(1),
      I5 => \lane_gen[0].data_shift_reg\(4),
      O => ecc_exp_0(2)
    );
ecc_valid_1_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(0),
      I1 => \lane_gen[0].data_shift_reg\(3),
      I2 => \lane_gen[0].data_shift_reg\(2),
      I3 => \lane_gen[1].data_shift_reg\(5),
      I4 => \lane_gen[1].data_shift_reg\(2),
      I5 => \lane_gen[1].data_shift_reg\(3),
      O => ecc_valid_1_i_15_n_0
    );
ecc_valid_1_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \pkt_data_reg[16]\,
      I1 => \lane_gen[0].data_shift_reg\(3),
      I2 => \lane_gen[0].data_shift_reg\(2),
      I3 => \lane_gen[0].data_shift_reg\(1),
      I4 => Q(1),
      I5 => \pkt_data_reg[17]\,
      O => ecc_valid_1_i_16_n_0
    );
ecc_valid_1_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lane_gen[0].data_shift_reg\(6),
      I1 => \lane_gen[1].data_shift_reg\(0),
      I2 => \lane_gen[0].data_shift_reg\(1),
      I3 => \pkt_data_reg[6]\,
      I4 => \pkt_data_reg[5]\,
      I5 => \lane_gen[1].data_shift_reg\(5),
      O => ecc_valid_1_i_17_n_0
    );
ecc_valid_1_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lane_gen[0].data_shift_reg\(7),
      I1 => \pkt_data_reg[7]\,
      I2 => \pkt_data_reg[4]\,
      I3 => \pkt_data_reg[6]\,
      I4 => \lane_gen[1].data_shift_reg\(3),
      I5 => \pkt_data_reg[17]\,
      O => ecc_valid_1_i_18_n_0
    );
ecc_valid_1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => ecc_valid_1_i_6_n_0,
      I1 => ecc_valid_1_i_7_n_0,
      I2 => \pkt_data_reg[7]\,
      I3 => ecc_valid_1_i_8_n_0,
      I4 => \lane_gen[1].data_shift_reg\(4),
      O => ecc_exp_0(1)
    );
ecc_valid_1_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => ecc_valid_1_i_9_n_0,
      I1 => ecc_valid_1_i_10_n_0,
      I2 => Q(1),
      I3 => \lane_gen[0].data_shift_reg\(7),
      I4 => Q(0),
      I5 => \lane_gen[0].data_shift_reg\(6),
      O => ecc_exp_0(0)
    );
ecc_valid_1_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q(1),
      I1 => \lane_gen[0].data_shift_reg\(7),
      I2 => \pkt_data_reg[26]\,
      O => ecc_valid_1_i_6_n_0
    );
ecc_valid_1_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \lane_gen[0].data_shift_reg\(3),
      I1 => \lane_gen[1].data_shift_reg\(0),
      I2 => \pkt_data_reg[5]\,
      I3 => \pkt_data_reg[4]\,
      I4 => \pkt_data_reg[16]\,
      I5 => \lane_gen[1].data_shift_reg\(2),
      O => ecc_valid_1_i_7_n_0
    );
ecc_valid_1_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q(0),
      I1 => \lane_gen[0].data_shift_reg\(6),
      I2 => \lane_gen[0].data_shift_reg\(0),
      O => ecc_valid_1_i_8_n_0
    );
ecc_valid_1_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \pkt_data_reg[5]\,
      I1 => \lane_gen[0].data_shift_reg\(2),
      I2 => \pkt_data_reg[4]\,
      I3 => \pkt_data_reg[6]\,
      I4 => \lane_gen[1].data_shift_reg\(5),
      I5 => \lane_gen[0].data_shift_reg\(1),
      O => ecc_valid_1_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_slb_reg is
  port (
    vid_sof_reg : out STD_LOGIC;
    \cnt_reg[16]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    err_pending0 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    stat_err_pending : in STD_LOGIC;
    \err_any_c__3\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_slb_reg : entity is "slb_reg";
end TySOM_1_7Z030_mipi_csi_0_slb_reg;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_slb_reg is
  signal \^cnt_reg[16]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wen_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of err_pending_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of vid_sof_i_17 : label is "soft_lutpair15";
begin
  \cnt_reg[16]\(4 downto 0) <= \^cnt_reg[16]\(4 downto 0);
err_pending_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => \^cnt_reg[16]\(3),
      I1 => stat_err_pending,
      I2 => \err_any_c__3\,
      I3 => \^cnt_reg[16]\(2),
      O => err_pending0
    );
\reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(0),
      Q => \^cnt_reg[16]\(0),
      R => Q(0)
    );
\reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(2),
      Q => \^cnt_reg[16]\(2),
      R => Q(0)
    );
\reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(3),
      Q => \^cnt_reg[16]\(3),
      R => Q(0)
    );
\reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(4),
      Q => \^cnt_reg[16]\(4),
      R => Q(0)
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(1),
      Q => \^cnt_reg[16]\(1),
      R => Q(0)
    );
vid_sof_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cnt_reg[16]\(2),
      I1 => stat_err_pending,
      O => vid_sof_reg
    );
wen_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => wen_reg_n_0,
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized1\ is
  port (
    intr_reg : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slb_addr_reg[3]\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \reg_er_reg[19]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    D : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized1\ : entity is "slb_reg";
end \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized1\;

architecture STRUCTURE of \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized1\ is
  signal intr_i_2_n_0 : STD_LOGIC;
  signal intr_i_3_n_0 : STD_LOGIC;
  signal intr_i_4_n_0 : STD_LOGIC;
  signal reg_imr : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal wen : STD_LOGIC;
begin
intr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFDFDF"
    )
        port map (
      I0 => intr_i_2_n_0,
      I1 => intr_i_3_n_0,
      I2 => intr_i_4_n_0,
      I3 => \reg_er_reg[19]\(8),
      I4 => reg_imr(19),
      O => intr_reg
    );
intr_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000077707770777"
    )
        port map (
      I0 => \reg_er_reg[19]\(2),
      I1 => reg_imr(2),
      I2 => \reg_er_reg[19]\(1),
      I3 => reg_imr(1),
      I4 => reg_imr(0),
      I5 => \reg_er_reg[19]\(0),
      O => intr_i_2_n_0
    );
intr_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => reg_imr(3),
      I1 => \reg_er_reg[19]\(3),
      I2 => reg_imr(4),
      I3 => \reg_er_reg[19]\(4),
      O => intr_i_3_n_0
    );
intr_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000077707770777"
    )
        port map (
      I0 => \reg_er_reg[19]\(7),
      I1 => reg_imr(18),
      I2 => \reg_er_reg[19]\(6),
      I3 => reg_imr(17),
      I4 => reg_imr(16),
      I5 => \reg_er_reg[19]\(5),
      O => intr_i_4_n_0
    );
\reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen,
      D => D(0),
      Q => reg_imr(0),
      R => Q(0)
    );
\reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen,
      D => D(5),
      Q => reg_imr(16),
      R => Q(0)
    );
\reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen,
      D => D(6),
      Q => reg_imr(17),
      R => Q(0)
    );
\reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen,
      D => D(7),
      Q => reg_imr(18),
      R => Q(0)
    );
\reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen,
      D => D(8),
      Q => reg_imr(19),
      R => Q(0)
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen,
      D => D(1),
      Q => reg_imr(1),
      R => Q(0)
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen,
      D => D(2),
      Q => reg_imr(2),
      R => Q(0)
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen,
      D => D(3),
      Q => reg_imr(3),
      R => Q(0)
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen,
      D => D(4),
      Q => reg_imr(4),
      R => Q(0)
    );
wen_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \slb_addr_reg[3]\,
      Q => wen,
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized11\ is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    win_le_ok_2_reg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    win_le_ok_2_reg_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slb_addr_reg[2]\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \slb_wdata_reg[11]\ : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized11\ : entity is "slb_reg";
end \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized11\;

architecture STRUCTURE of \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized11\ is
  signal \reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg_reg_n_0_[9]\ : STD_LOGIC;
  signal wen_reg_n_0 : STD_LOGIC;
begin
\i__carry__0_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \reg_reg_n_0_[10]\,
      I1 => \out\(10),
      I2 => \out\(11),
      I3 => \reg_reg_n_0_[11]\,
      O => win_le_ok_2_reg_0(1)
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \reg_reg_n_0_[8]\,
      I1 => \out\(8),
      I2 => \out\(9),
      I3 => \reg_reg_n_0_[9]\,
      O => win_le_ok_2_reg_0(0)
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \reg_reg_n_0_[10]\,
      I1 => \out\(10),
      I2 => \reg_reg_n_0_[11]\,
      I3 => \out\(11),
      O => win_le_ok_2_reg(1)
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \reg_reg_n_0_[8]\,
      I1 => \out\(8),
      I2 => \reg_reg_n_0_[9]\,
      I3 => \out\(9),
      O => win_le_ok_2_reg(0)
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \reg_reg_n_0_[6]\,
      I1 => \out\(6),
      I2 => \out\(7),
      I3 => \reg_reg_n_0_[7]\,
      O => DI(3)
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \reg_reg_n_0_[4]\,
      I1 => \out\(4),
      I2 => \out\(5),
      I3 => \reg_reg_n_0_[5]\,
      O => DI(2)
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \reg_reg_n_0_[2]\,
      I1 => \out\(2),
      I2 => \out\(3),
      I3 => \reg_reg_n_0_[3]\,
      O => DI(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \reg_reg_n_0_[0]\,
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => \reg_reg_n_0_[1]\,
      O => DI(0)
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \reg_reg_n_0_[6]\,
      I1 => \out\(6),
      I2 => \reg_reg_n_0_[7]\,
      I3 => \out\(7),
      O => S(3)
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \reg_reg_n_0_[4]\,
      I1 => \out\(4),
      I2 => \reg_reg_n_0_[5]\,
      I3 => \out\(5),
      O => S(2)
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \reg_reg_n_0_[2]\,
      I1 => \out\(2),
      I2 => \reg_reg_n_0_[3]\,
      I3 => \out\(3),
      O => S(1)
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \reg_reg_n_0_[0]\,
      I1 => \out\(0),
      I2 => \reg_reg_n_0_[1]\,
      I3 => \out\(1),
      O => S(0)
    );
\reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(0),
      Q => \reg_reg_n_0_[0]\,
      S => Q(0)
    );
\reg_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(10),
      Q => \reg_reg_n_0_[10]\,
      S => Q(0)
    );
\reg_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(11),
      Q => \reg_reg_n_0_[11]\,
      S => Q(0)
    );
\reg_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(1),
      Q => \reg_reg_n_0_[1]\,
      S => Q(0)
    );
\reg_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(2),
      Q => \reg_reg_n_0_[2]\,
      S => Q(0)
    );
\reg_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(3),
      Q => \reg_reg_n_0_[3]\,
      S => Q(0)
    );
\reg_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(4),
      Q => \reg_reg_n_0_[4]\,
      S => Q(0)
    );
\reg_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(5),
      Q => \reg_reg_n_0_[5]\,
      S => Q(0)
    );
\reg_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(6),
      Q => \reg_reg_n_0_[6]\,
      S => Q(0)
    );
\reg_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(7),
      Q => \reg_reg_n_0_[7]\,
      S => Q(0)
    );
\reg_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(8),
      Q => \reg_reg_n_0_[8]\,
      S => Q(0)
    );
\reg_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(9),
      Q => \reg_reg_n_0_[9]\,
      S => Q(0)
    );
wen_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \slb_addr_reg[2]\,
      Q => wen_reg_n_0,
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized3\ is
  port (
    pause0 : out STD_LOGIC;
    \vum_data_reg[9]\ : out STD_LOGIC_VECTOR ( 16 downto 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \eqOp__0\ : out STD_LOGIC;
    \vfm_data_reg[31]\ : out STD_LOGIC_VECTOR ( 12 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slb_addr_reg[3]\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    pktr_empty : in STD_LOGIC;
    vin_ready_10b : in STD_LOGIC;
    \cnt_reg[0]\ : in STD_LOGIC;
    \^q\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vcfm_data : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \pix_green_4_reg[10]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \pix_blue_4_reg[6]\ : in STD_LOGIC;
    \pix_blue_4_reg[7]\ : in STD_LOGIC;
    \pix_blue_4_reg[8]\ : in STD_LOGIC;
    \pix_blue_4_reg[9]\ : in STD_LOGIC;
    \pix_blue_4_reg[10]\ : in STD_LOGIC;
    \pix_blue_4_reg[6]_0\ : in STD_LOGIC;
    DO : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \pix_blue_4_reg[7]_0\ : in STD_LOGIC;
    \pix_blue_4_reg[8]_0\ : in STD_LOGIC;
    \pix_blue_4_reg[9]_0\ : in STD_LOGIC;
    \pix_blue_4_reg[10]_0\ : in STD_LOGIC;
    \vum_data_reg[9]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \slb_wdata_reg[23]\ : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized3\ : entity is "slb_reg";
end \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized3\;

architecture STRUCTURE of \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized3\ is
  signal \vfm_data[10]_i_3_n_0\ : STD_LOGIC;
  signal \vfm_data[11]_i_2_n_0\ : STD_LOGIC;
  signal \vfm_data[12]_i_2_n_0\ : STD_LOGIC;
  signal \vfm_data[13]_i_2_n_0\ : STD_LOGIC;
  signal \vfm_data[14]_i_2_n_0\ : STD_LOGIC;
  signal \vfm_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \vfm_data[8]_i_3_n_0\ : STD_LOGIC;
  signal \vfm_data[9]_i_3_n_0\ : STD_LOGIC;
  signal \^vum_data_reg[9]\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal wen_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bl.fifo_36_inst_bl.fifo_36_bl_i_7\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \data[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data[7]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \vfm_data[8]_i_1\ : label is "soft_lutpair16";
begin
  \vum_data_reg[9]\(16 downto 0) <= \^vum_data_reg[9]\(16 downto 0);
\bl.fifo_36_inst_bl.fifo_36_bl_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^vum_data_reg[9]\(3),
      I1 => \^vum_data_reg[9]\(2),
      O => \eqOp__0\
    );
\data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \^vum_data_reg[9]\(1),
      I1 => \^vum_data_reg[9]\(0),
      I2 => \^q\(0),
      O => D(0)
    );
\data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \^vum_data_reg[9]\(1),
      I1 => \^vum_data_reg[9]\(0),
      I2 => \^q\(1),
      O => D(1)
    );
\data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \^vum_data_reg[9]\(1),
      I1 => \^vum_data_reg[9]\(0),
      I2 => \^q\(2),
      O => D(2)
    );
\data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \^vum_data_reg[9]\(1),
      I1 => \^vum_data_reg[9]\(0),
      I2 => \^q\(3),
      O => D(3)
    );
\data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \^vum_data_reg[9]\(1),
      I1 => \^vum_data_reg[9]\(0),
      I2 => \^q\(4),
      O => D(4)
    );
\data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \^vum_data_reg[9]\(1),
      I1 => \^vum_data_reg[9]\(0),
      I2 => \^q\(5),
      O => D(5)
    );
\data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \^vum_data_reg[9]\(1),
      I1 => \^vum_data_reg[9]\(0),
      I2 => \^q\(6),
      O => D(6)
    );
\data[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \^vum_data_reg[9]\(1),
      I1 => \^vum_data_reg[9]\(0),
      I2 => \^q\(7),
      O => D(7)
    );
pause_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEAEFEAFFFF"
    )
        port map (
      I0 => pktr_empty,
      I1 => vin_ready_10b,
      I2 => \^vum_data_reg[9]\(16),
      I3 => \cnt_reg[0]\,
      I4 => \^vum_data_reg[9]\(3),
      I5 => \^vum_data_reg[9]\(2),
      O => pause0
    );
\reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[23]\(0),
      Q => \^vum_data_reg[9]\(0),
      R => Q(0)
    );
\reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[23]\(6),
      Q => \^vum_data_reg[9]\(6),
      R => Q(0)
    );
\reg_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[23]\(7),
      Q => \^vum_data_reg[9]\(7),
      S => Q(0)
    );
\reg_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[23]\(8),
      Q => \^vum_data_reg[9]\(8),
      S => Q(0)
    );
\reg_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[23]\(9),
      Q => \^vum_data_reg[9]\(9),
      S => Q(0)
    );
\reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[23]\(10),
      Q => \^vum_data_reg[9]\(10),
      R => Q(0)
    );
\reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[23]\(11),
      Q => \^vum_data_reg[9]\(11),
      R => Q(0)
    );
\reg_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[23]\(12),
      Q => \^vum_data_reg[9]\(12),
      S => Q(0)
    );
\reg_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[23]\(13),
      Q => \^vum_data_reg[9]\(13),
      S => Q(0)
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[23]\(1),
      Q => \^vum_data_reg[9]\(1),
      R => Q(0)
    );
\reg_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[23]\(14),
      Q => \^vum_data_reg[9]\(14),
      S => Q(0)
    );
\reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[23]\(15),
      Q => \^vum_data_reg[9]\(15),
      R => Q(0)
    );
\reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[23]\(16),
      Q => \^vum_data_reg[9]\(16),
      R => Q(0)
    );
\reg_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[23]\(2),
      Q => \^vum_data_reg[9]\(2),
      S => Q(0)
    );
\reg_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[23]\(3),
      Q => \^vum_data_reg[9]\(3),
      S => Q(0)
    );
\reg_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[23]\(4),
      Q => \^vum_data_reg[9]\(4),
      S => Q(0)
    );
\reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[23]\(5),
      Q => \^vum_data_reg[9]\(5),
      R => Q(0)
    );
\vfm_data[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => vcfm_data(2),
      I1 => \^vum_data_reg[9]\(3),
      I2 => \pix_green_4_reg[10]\(2),
      I3 => \^vum_data_reg[9]\(2),
      I4 => \vfm_data[10]_i_3_n_0\,
      O => \vfm_data_reg[31]\(2)
    );
\vfm_data[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \^vum_data_reg[9]\(15),
      I1 => \^vum_data_reg[9]\(14),
      I2 => \vum_data_reg[9]_0\(2),
      I3 => \^vum_data_reg[9]\(3),
      I4 => DO(2),
      O => \vfm_data[10]_i_3_n_0\
    );
\vfm_data[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \^vum_data_reg[9]\(15),
      I1 => \^vum_data_reg[9]\(14),
      I2 => \vum_data_reg[9]_0\(3),
      I3 => \^vum_data_reg[9]\(3),
      I4 => DO(3),
      O => \vfm_data[11]_i_2_n_0\
    );
\vfm_data[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \^vum_data_reg[9]\(15),
      I1 => \^vum_data_reg[9]\(14),
      I2 => \vum_data_reg[9]_0\(4),
      I3 => \^vum_data_reg[9]\(3),
      I4 => DO(4),
      O => \vfm_data[12]_i_2_n_0\
    );
\vfm_data[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \^vum_data_reg[9]\(15),
      I1 => \^vum_data_reg[9]\(14),
      I2 => \vum_data_reg[9]_0\(5),
      I3 => \^vum_data_reg[9]\(3),
      I4 => DO(5),
      O => \vfm_data[13]_i_2_n_0\
    );
\vfm_data[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \^vum_data_reg[9]\(15),
      I1 => \^vum_data_reg[9]\(14),
      I2 => \vum_data_reg[9]_0\(6),
      I3 => \^vum_data_reg[9]\(3),
      I4 => DO(6),
      O => \vfm_data[14]_i_2_n_0\
    );
\vfm_data[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \^vum_data_reg[9]\(15),
      I1 => \^vum_data_reg[9]\(14),
      I2 => \vum_data_reg[9]_0\(7),
      I3 => \^vum_data_reg[9]\(3),
      I4 => DO(7),
      O => \vfm_data[15]_i_2_n_0\
    );
\vfm_data[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \pix_blue_4_reg[6]_0\,
      I1 => \^vum_data_reg[9]\(2),
      I2 => DO(8),
      I3 => \^vum_data_reg[9]\(3),
      O => \vfm_data_reg[31]\(8)
    );
\vfm_data[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \pix_blue_4_reg[7]_0\,
      I1 => \^vum_data_reg[9]\(2),
      I2 => DO(9),
      I3 => \^vum_data_reg[9]\(3),
      O => \vfm_data_reg[31]\(9)
    );
\vfm_data[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \pix_blue_4_reg[8]_0\,
      I1 => \^vum_data_reg[9]\(2),
      I2 => DO(10),
      I3 => \^vum_data_reg[9]\(3),
      O => \vfm_data_reg[31]\(10)
    );
\vfm_data[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \pix_blue_4_reg[9]_0\,
      I1 => \^vum_data_reg[9]\(2),
      I2 => DO(11),
      I3 => \^vum_data_reg[9]\(3),
      O => \vfm_data_reg[31]\(11)
    );
\vfm_data[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \pix_blue_4_reg[10]_0\,
      I1 => \^vum_data_reg[9]\(2),
      I2 => DO(12),
      I3 => \^vum_data_reg[9]\(3),
      O => \vfm_data_reg[31]\(12)
    );
\vfm_data[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => vcfm_data(0),
      I1 => \^vum_data_reg[9]\(3),
      I2 => \pix_green_4_reg[10]\(0),
      I3 => \^vum_data_reg[9]\(2),
      I4 => \vfm_data[8]_i_3_n_0\,
      O => \vfm_data_reg[31]\(0)
    );
\vfm_data[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \^vum_data_reg[9]\(15),
      I1 => \vum_data_reg[9]_0\(6),
      I2 => \^vum_data_reg[9]\(14),
      I3 => \vum_data_reg[9]_0\(0),
      I4 => \^vum_data_reg[9]\(3),
      I5 => DO(0),
      O => \vfm_data[8]_i_3_n_0\
    );
\vfm_data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => vcfm_data(1),
      I1 => \^vum_data_reg[9]\(3),
      I2 => \pix_green_4_reg[10]\(1),
      I3 => \^vum_data_reg[9]\(2),
      I4 => \vfm_data[9]_i_3_n_0\,
      O => \vfm_data_reg[31]\(1)
    );
\vfm_data[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \^vum_data_reg[9]\(15),
      I1 => \vum_data_reg[9]_0\(7),
      I2 => \^vum_data_reg[9]\(14),
      I3 => \vum_data_reg[9]_0\(1),
      I4 => \^vum_data_reg[9]\(3),
      I5 => DO(1),
      O => \vfm_data[9]_i_3_n_0\
    );
\vfm_data_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vfm_data[11]_i_2_n_0\,
      I1 => \pix_blue_4_reg[6]\,
      O => \vfm_data_reg[31]\(3),
      S => \^vum_data_reg[9]\(2)
    );
\vfm_data_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vfm_data[12]_i_2_n_0\,
      I1 => \pix_blue_4_reg[7]\,
      O => \vfm_data_reg[31]\(4),
      S => \^vum_data_reg[9]\(2)
    );
\vfm_data_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vfm_data[13]_i_2_n_0\,
      I1 => \pix_blue_4_reg[8]\,
      O => \vfm_data_reg[31]\(5),
      S => \^vum_data_reg[9]\(2)
    );
\vfm_data_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vfm_data[14]_i_2_n_0\,
      I1 => \pix_blue_4_reg[9]\,
      O => \vfm_data_reg[31]\(6),
      S => \^vum_data_reg[9]\(2)
    );
\vfm_data_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \vfm_data[15]_i_2_n_0\,
      I1 => \pix_blue_4_reg[10]\,
      O => \vfm_data_reg[31]\(7),
      S => \^vum_data_reg[9]\(2)
    );
wen_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \slb_addr_reg[3]\,
      Q => wen_reg_n_0,
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized5\ is
  port (
    win_cs_ok_2_reg : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slb_addr_reg[2]\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized5\ : entity is "slb_reg";
end \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized5\;

architecture STRUCTURE of \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized5\ is
  signal wen_reg_n_0 : STD_LOGIC;
begin
\reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(0),
      Q => win_cs_ok_2_reg(0),
      R => Q(0)
    );
\reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(10),
      Q => win_cs_ok_2_reg(10),
      R => Q(0)
    );
\reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(11),
      Q => win_cs_ok_2_reg(11),
      R => Q(0)
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(1),
      Q => win_cs_ok_2_reg(1),
      R => Q(0)
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(2),
      Q => win_cs_ok_2_reg(2),
      R => Q(0)
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(3),
      Q => win_cs_ok_2_reg(3),
      R => Q(0)
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(4),
      Q => win_cs_ok_2_reg(4),
      R => Q(0)
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(5),
      Q => win_cs_ok_2_reg(5),
      R => Q(0)
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(6),
      Q => win_cs_ok_2_reg(6),
      R => Q(0)
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(7),
      Q => win_cs_ok_2_reg(7),
      R => Q(0)
    );
\reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(8),
      Q => win_cs_ok_2_reg(8),
      R => Q(0)
    );
\reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(9),
      Q => win_cs_ok_2_reg(9),
      R => Q(0)
    );
wen_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \slb_addr_reg[2]\,
      Q => wen_reg_n_0,
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized7\ is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    win_ce_ok_2_reg : out STD_LOGIC_VECTOR ( 11 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    win_ce_ok_2_reg_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    win_ce_ok_2_reg_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slb_addr_reg[2]\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    D : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized7\ : entity is "slb_reg";
end \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized7\;

architecture STRUCTURE of \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized7\ is
  signal wen_reg_n_0 : STD_LOGIC;
  signal \^win_ce_ok_2_reg\ : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
  win_ce_ok_2_reg(11 downto 0) <= \^win_ce_ok_2_reg\(11 downto 0);
\leqOp_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^win_ce_ok_2_reg\(10),
      I1 => \out\(10),
      I2 => \out\(11),
      I3 => \^win_ce_ok_2_reg\(11),
      O => win_ce_ok_2_reg_1(1)
    );
\leqOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^win_ce_ok_2_reg\(8),
      I1 => \out\(8),
      I2 => \out\(9),
      I3 => \^win_ce_ok_2_reg\(9),
      O => win_ce_ok_2_reg_1(0)
    );
\leqOp_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^win_ce_ok_2_reg\(10),
      I1 => \out\(10),
      I2 => \^win_ce_ok_2_reg\(11),
      I3 => \out\(11),
      O => win_ce_ok_2_reg_0(1)
    );
\leqOp_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^win_ce_ok_2_reg\(8),
      I1 => \out\(8),
      I2 => \^win_ce_ok_2_reg\(9),
      I3 => \out\(9),
      O => win_ce_ok_2_reg_0(0)
    );
leqOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^win_ce_ok_2_reg\(6),
      I1 => \out\(6),
      I2 => \out\(7),
      I3 => \^win_ce_ok_2_reg\(7),
      O => DI(3)
    );
leqOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^win_ce_ok_2_reg\(4),
      I1 => \out\(4),
      I2 => \out\(5),
      I3 => \^win_ce_ok_2_reg\(5),
      O => DI(2)
    );
leqOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^win_ce_ok_2_reg\(2),
      I1 => \out\(2),
      I2 => \out\(3),
      I3 => \^win_ce_ok_2_reg\(3),
      O => DI(1)
    );
leqOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^win_ce_ok_2_reg\(0),
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => \^win_ce_ok_2_reg\(1),
      O => DI(0)
    );
leqOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^win_ce_ok_2_reg\(6),
      I1 => \out\(6),
      I2 => \^win_ce_ok_2_reg\(7),
      I3 => \out\(7),
      O => S(3)
    );
leqOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^win_ce_ok_2_reg\(4),
      I1 => \out\(4),
      I2 => \^win_ce_ok_2_reg\(5),
      I3 => \out\(5),
      O => S(2)
    );
leqOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^win_ce_ok_2_reg\(2),
      I1 => \out\(2),
      I2 => \^win_ce_ok_2_reg\(3),
      I3 => \out\(3),
      O => S(1)
    );
leqOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^win_ce_ok_2_reg\(0),
      I1 => \out\(0),
      I2 => \^win_ce_ok_2_reg\(1),
      I3 => \out\(1),
      O => S(0)
    );
\reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(0),
      Q => \^win_ce_ok_2_reg\(0),
      S => Q(0)
    );
\reg_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(10),
      Q => \^win_ce_ok_2_reg\(10),
      S => Q(0)
    );
\reg_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(11),
      Q => \^win_ce_ok_2_reg\(11),
      S => Q(0)
    );
\reg_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(1),
      Q => \^win_ce_ok_2_reg\(1),
      S => Q(0)
    );
\reg_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(2),
      Q => \^win_ce_ok_2_reg\(2),
      S => Q(0)
    );
\reg_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(3),
      Q => \^win_ce_ok_2_reg\(3),
      S => Q(0)
    );
\reg_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(4),
      Q => \^win_ce_ok_2_reg\(4),
      S => Q(0)
    );
\reg_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(5),
      Q => \^win_ce_ok_2_reg\(5),
      S => Q(0)
    );
\reg_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(6),
      Q => \^win_ce_ok_2_reg\(6),
      S => Q(0)
    );
\reg_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(7),
      Q => \^win_ce_ok_2_reg\(7),
      S => Q(0)
    );
\reg_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(8),
      Q => \^win_ce_ok_2_reg\(8),
      S => Q(0)
    );
\reg_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => D(9),
      Q => \^win_ce_ok_2_reg\(9),
      S => Q(0)
    );
wen_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \slb_addr_reg[2]\,
      Q => wen_reg_n_0,
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized9\ is
  port (
    win_ls_ok_2_reg : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \slb_addr_reg[2]\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \slb_wdata_reg[11]\ : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized9\ : entity is "slb_reg";
end \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized9\;

architecture STRUCTURE of \TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized9\ is
  signal wen_reg_n_0 : STD_LOGIC;
begin
\reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(0),
      Q => win_ls_ok_2_reg(0),
      R => Q(0)
    );
\reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(10),
      Q => win_ls_ok_2_reg(10),
      R => Q(0)
    );
\reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(11),
      Q => win_ls_ok_2_reg(11),
      R => Q(0)
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(1),
      Q => win_ls_ok_2_reg(1),
      R => Q(0)
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(2),
      Q => win_ls_ok_2_reg(2),
      R => Q(0)
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(3),
      Q => win_ls_ok_2_reg(3),
      R => Q(0)
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(4),
      Q => win_ls_ok_2_reg(4),
      R => Q(0)
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(5),
      Q => win_ls_ok_2_reg(5),
      R => Q(0)
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(6),
      Q => win_ls_ok_2_reg(6),
      R => Q(0)
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(7),
      Q => win_ls_ok_2_reg(7),
      R => Q(0)
    );
\reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(8),
      Q => win_ls_ok_2_reg(8),
      R => Q(0)
    );
\reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => wen_reg_n_0,
      D => \slb_wdata_reg[11]\(9),
      Q => win_ls_ok_2_reg(9),
      R => Q(0)
    );
wen_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \slb_addr_reg[2]\,
      Q => wen_reg_n_0,
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_unimacro_FIFO_DUALCLOCK_MACRO is
  port (
    pktr_empty : out STD_LOGIC;
    pktw_full : out STD_LOGIC;
    DO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DOP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_state_cur_reg[0]\ : out STD_LOGIC;
    err_unk_pkt_c : out STD_LOGIC;
    err_early_sof_c : out STD_LOGIC;
    \FSM_sequential_state_cur_reg[1]\ : out STD_LOGIC;
    state_nxt113_out : out STD_LOGIC;
    \cnt_reg[16]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \cnt_reg[12]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \cnt_reg[8]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vid_sof_reg : out STD_LOGIC;
    vid_sof_reg_0 : out STD_LOGIC;
    mux : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    pause_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_clk : in STD_LOGIC;
    pkt_valid_reg : in STD_LOGIC;
    pkt_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DIP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \reg_reg[16]\ : in STD_LOGIC;
    \FSM_sequential_state_cur_reg[1]_0\ : in STD_LOGIC;
    cnt : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_unimacro_FIFO_DUALCLOCK_MACRO : entity is "unimacro_FIFO_DUALCLOCK_MACRO";
end TySOM_1_7Z030_mipi_csi_0_unimacro_FIFO_DUALCLOCK_MACRO;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_unimacro_FIFO_DUALCLOCK_MACRO is
  signal \^do\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^dop\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \FSM_sequential_state_cur[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[1]_i_9_n_0\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_10\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_11\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_14\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_15\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_19\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_20\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_21\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_22\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_23\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_24\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_25\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_26\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_27\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_28\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_32\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_33\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_34\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_35\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_36\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_37\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_38\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_39\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_40\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_41\ : STD_LOGIC;
  signal err_early_sof_i_3_n_0 : STD_LOGIC;
  signal err_unk_pkt_i_2_n_0 : STD_LOGIC;
  signal \^pktr_empty\ : STD_LOGIC;
  signal vid_sof_i_19_n_0 : STD_LOGIC;
  signal vid_sof_i_20_n_0 : STD_LOGIC;
  signal \NLW_bl.fifo_36_inst_bl.fifo_36_bl_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_bl.fifo_36_inst_bl.fifo_36_bl_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_bl.fifo_36_inst_bl.fifo_36_bl_DO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal \NLW_bl.fifo_36_inst_bl.fifo_36_bl_DOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_bl.fifo_36_inst_bl.fifo_36_bl_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_bl.fifo_36_inst_bl.fifo_36_bl_RDCOUNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 downto 10 );
  signal \NLW_bl.fifo_36_inst_bl.fifo_36_bl_WRCOUNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 downto 10 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_cur[1]_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_sequential_state_cur[1]_i_8\ : label is "soft_lutpair11";
  attribute box_type : string;
  attribute box_type of \bl.fifo_36_inst_bl.fifo_36_bl\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of err_unk_pkt_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of vid_sof_i_19 : label is "soft_lutpair11";
begin
  DO(31 downto 0) <= \^do\(31 downto 0);
  DOP(1 downto 0) <= \^dop\(1 downto 0);
  pktr_empty <= \^pktr_empty\;
\FSM_sequential_state_cur[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8888F888888888"
    )
        port map (
      I0 => \out\(0),
      I1 => \reg_reg[16]\,
      I2 => \^do\(0),
      I3 => \^do\(3),
      I4 => \^do\(1),
      I5 => \FSM_sequential_state_cur[0]_i_4_n_0\,
      O => \FSM_sequential_state_cur_reg[0]\
    );
\FSM_sequential_state_cur[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \out\(1),
      I1 => \^do\(7),
      I2 => \^do\(4),
      I3 => \^do\(2),
      I4 => \out\(0),
      I5 => \FSM_sequential_state_cur[0]_i_5_n_0\,
      O => \FSM_sequential_state_cur[0]_i_4_n_0\
    );
\FSM_sequential_state_cur[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBEFF"
    )
        port map (
      I0 => \^pktr_empty\,
      I1 => \^do\(3),
      I2 => \^do\(5),
      I3 => \^dop\(1),
      I4 => \^do\(6),
      O => \FSM_sequential_state_cur[0]_i_5_n_0\
    );
\FSM_sequential_state_cur[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \FSM_sequential_state_cur[1]_i_4_n_0\,
      I1 => \^do\(7),
      I2 => \^do\(4),
      I3 => \^do\(0),
      I4 => \^do\(6),
      I5 => \FSM_sequential_state_cur[1]_i_5_n_0\,
      O => \FSM_sequential_state_cur_reg[1]\
    );
\FSM_sequential_state_cur[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^dop\(1),
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => \^pktr_empty\,
      O => \FSM_sequential_state_cur[1]_i_4_n_0\
    );
\FSM_sequential_state_cur[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^do\(3),
      I1 => \^do\(1),
      I2 => \^do\(5),
      I3 => \^do\(2),
      O => \FSM_sequential_state_cur[1]_i_5_n_0\
    );
\FSM_sequential_state_cur[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \^pktr_empty\,
      I1 => \^dop\(1),
      I2 => \FSM_sequential_state_cur[1]_i_8_n_0\,
      I3 => \FSM_sequential_state_cur[1]_i_9_n_0\,
      I4 => \^do\(4),
      I5 => \^do\(5),
      O => state_nxt113_out
    );
\FSM_sequential_state_cur[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^do\(2),
      I1 => \^do\(3),
      I2 => \^do\(0),
      I3 => \^do\(1),
      O => \FSM_sequential_state_cur[1]_i_8_n_0\
    );
\FSM_sequential_state_cur[1]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^do\(6),
      I1 => \^do\(7),
      O => \FSM_sequential_state_cur[1]_i_9_n_0\
    );
\bl.fifo_36_inst_bl.fifo_36_bl\: unisim.vcomponents.FIFO36E1
    generic map(
      ALMOST_EMPTY_OFFSET => X"0080",
      ALMOST_FULL_OFFSET => X"0080",
      DATA_WIDTH => 36,
      DO_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      EN_SYN => false,
      FIFO_MODE => "FIFO36",
      FIRST_WORD_FALL_THROUGH => true,
      INIT => X"000000000000000000",
      IS_RDCLK_INVERTED => '0',
      IS_RDEN_INVERTED => '0',
      IS_RSTREG_INVERTED => '0',
      IS_RST_INVERTED => '0',
      IS_WRCLK_INVERTED => '0',
      IS_WREN_INVERTED => '0',
      SIM_DEVICE => "7SERIES",
      SRVAL => X"000000000000000000"
    )
        port map (
      ALMOSTEMPTY => \bl.fifo_36_inst_bl.fifo_36_bl_n_10\,
      ALMOSTFULL => \bl.fifo_36_inst_bl.fifo_36_bl_n_11\,
      DBITERR => \NLW_bl.fifo_36_inst_bl.fifo_36_bl_DBITERR_UNCONNECTED\,
      DI(63 downto 32) => B"00000000000000000000000000000000",
      DI(31 downto 0) => pkt_data(31 downto 0),
      DIP(7 downto 2) => B"000000",
      DIP(1 downto 0) => DIP(1 downto 0),
      DO(63 downto 32) => \NLW_bl.fifo_36_inst_bl.fifo_36_bl_DO_UNCONNECTED\(63 downto 32),
      DO(31 downto 0) => \^do\(31 downto 0),
      DOP(7 downto 2) => \NLW_bl.fifo_36_inst_bl.fifo_36_bl_DOP_UNCONNECTED\(7 downto 2),
      DOP(1 downto 0) => \^dop\(1 downto 0),
      ECCPARITY(7 downto 0) => \NLW_bl.fifo_36_inst_bl.fifo_36_bl_ECCPARITY_UNCONNECTED\(7 downto 0),
      EMPTY => \^pktr_empty\,
      FULL => pktw_full,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDCLK => clk,
      RDCOUNT(12 downto 10) => \NLW_bl.fifo_36_inst_bl.fifo_36_bl_RDCOUNT_UNCONNECTED\(12 downto 10),
      RDCOUNT(9) => \bl.fifo_36_inst_bl.fifo_36_bl_n_19\,
      RDCOUNT(8) => \bl.fifo_36_inst_bl.fifo_36_bl_n_20\,
      RDCOUNT(7) => \bl.fifo_36_inst_bl.fifo_36_bl_n_21\,
      RDCOUNT(6) => \bl.fifo_36_inst_bl.fifo_36_bl_n_22\,
      RDCOUNT(5) => \bl.fifo_36_inst_bl.fifo_36_bl_n_23\,
      RDCOUNT(4) => \bl.fifo_36_inst_bl.fifo_36_bl_n_24\,
      RDCOUNT(3) => \bl.fifo_36_inst_bl.fifo_36_bl_n_25\,
      RDCOUNT(2) => \bl.fifo_36_inst_bl.fifo_36_bl_n_26\,
      RDCOUNT(1) => \bl.fifo_36_inst_bl.fifo_36_bl_n_27\,
      RDCOUNT(0) => \bl.fifo_36_inst_bl.fifo_36_bl_n_28\,
      RDEN => pause_reg,
      RDERR => \bl.fifo_36_inst_bl.fifo_36_bl_n_14\,
      REGCE => '1',
      RST => Q(0),
      RSTREG => '1',
      SBITERR => \NLW_bl.fifo_36_inst_bl.fifo_36_bl_SBITERR_UNCONNECTED\,
      WRCLK => out_clk,
      WRCOUNT(12 downto 10) => \NLW_bl.fifo_36_inst_bl.fifo_36_bl_WRCOUNT_UNCONNECTED\(12 downto 10),
      WRCOUNT(9) => \bl.fifo_36_inst_bl.fifo_36_bl_n_32\,
      WRCOUNT(8) => \bl.fifo_36_inst_bl.fifo_36_bl_n_33\,
      WRCOUNT(7) => \bl.fifo_36_inst_bl.fifo_36_bl_n_34\,
      WRCOUNT(6) => \bl.fifo_36_inst_bl.fifo_36_bl_n_35\,
      WRCOUNT(5) => \bl.fifo_36_inst_bl.fifo_36_bl_n_36\,
      WRCOUNT(4) => \bl.fifo_36_inst_bl.fifo_36_bl_n_37\,
      WRCOUNT(3) => \bl.fifo_36_inst_bl.fifo_36_bl_n_38\,
      WRCOUNT(2) => \bl.fifo_36_inst_bl.fifo_36_bl_n_39\,
      WRCOUNT(1) => \bl.fifo_36_inst_bl.fifo_36_bl_n_40\,
      WRCOUNT(0) => \bl.fifo_36_inst_bl.fifo_36_bl_n_41\,
      WREN => pkt_valid_reg,
      WRERR => \bl.fifo_36_inst_bl.fifo_36_bl_n_15\
    );
err_early_sof_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => \FSM_sequential_state_cur_reg[1]_0\,
      I1 => err_early_sof_i_3_n_0,
      I2 => \^do\(7),
      I3 => \^do\(6),
      I4 => \^dop\(1),
      I5 => \^pktr_empty\,
      O => err_early_sof_c
    );
err_early_sof_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^do\(5),
      I1 => \^do\(4),
      I2 => \^do\(1),
      I3 => \^do\(0),
      I4 => \^do\(3),
      I5 => \^do\(2),
      O => err_early_sof_i_3_n_0
    );
err_unk_pkt_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAA80000"
    )
        port map (
      I0 => \FSM_sequential_state_cur_reg[1]_0\,
      I1 => \^do\(7),
      I2 => \^do\(6),
      I3 => err_unk_pkt_i_2_n_0,
      I4 => \^dop\(1),
      I5 => \^pktr_empty\,
      O => err_unk_pkt_c
    );
err_unk_pkt_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF7A"
    )
        port map (
      I0 => \^do\(5),
      I1 => \^do\(1),
      I2 => \^do\(3),
      I3 => \^do\(4),
      I4 => \^do\(2),
      O => err_unk_pkt_i_2_n_0
    );
\minusOp_carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^do\(16),
      O => \cnt_reg[8]\(3)
    );
\minusOp_carry__0_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^do\(15),
      O => \cnt_reg[8]\(2)
    );
\minusOp_carry__0_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^do\(14),
      O => \cnt_reg[8]\(1)
    );
\minusOp_carry__0_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^do\(13),
      O => \cnt_reg[8]\(0)
    );
\minusOp_carry__1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^do\(20),
      O => \cnt_reg[12]\(3)
    );
\minusOp_carry__1_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^do\(19),
      O => \cnt_reg[12]\(2)
    );
\minusOp_carry__1_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^do\(18),
      O => \cnt_reg[12]\(1)
    );
\minusOp_carry__1_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^do\(17),
      O => \cnt_reg[12]\(0)
    );
\minusOp_carry__2_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^do\(23),
      O => \cnt_reg[16]\(2)
    );
\minusOp_carry__2_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^do\(22),
      O => \cnt_reg[16]\(1)
    );
\minusOp_carry__2_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^do\(21),
      O => \cnt_reg[16]\(0)
    );
\minusOp_carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^do\(12),
      O => S(3)
    );
\minusOp_carry_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^do\(11),
      O => S(2)
    );
\minusOp_carry_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^do\(10),
      O => S(1)
    );
minusOp_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^do\(9),
      O => S(0)
    );
\out_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^do\(8),
      I1 => \^do\(0),
      I2 => \^do\(24),
      I3 => cnt(1),
      I4 => cnt(0),
      I5 => \^do\(16),
      O => mux(0)
    );
\out_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^do\(9),
      I1 => \^do\(1),
      I2 => \^do\(25),
      I3 => cnt(1),
      I4 => cnt(0),
      I5 => \^do\(17),
      O => mux(1)
    );
\out_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^do\(10),
      I1 => \^do\(2),
      I2 => \^do\(26),
      I3 => cnt(1),
      I4 => cnt(0),
      I5 => \^do\(18),
      O => mux(2)
    );
\out_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^do\(11),
      I1 => \^do\(3),
      I2 => \^do\(27),
      I3 => cnt(1),
      I4 => cnt(0),
      I5 => \^do\(19),
      O => mux(3)
    );
\out_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^do\(12),
      I1 => \^do\(4),
      I2 => \^do\(28),
      I3 => cnt(1),
      I4 => cnt(0),
      I5 => \^do\(20),
      O => mux(4)
    );
\out_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^do\(13),
      I1 => \^do\(5),
      I2 => \^do\(29),
      I3 => cnt(1),
      I4 => cnt(0),
      I5 => \^do\(21),
      O => mux(5)
    );
\out_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^do\(14),
      I1 => \^do\(6),
      I2 => \^do\(30),
      I3 => cnt(1),
      I4 => cnt(0),
      I5 => \^do\(22),
      O => mux(6)
    );
\out_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \^do\(15),
      I1 => \^do\(7),
      I2 => \^do\(31),
      I3 => cnt(1),
      I4 => cnt(0),
      I5 => \^do\(23),
      O => mux(7)
    );
vid_sof_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFDF"
    )
        port map (
      I0 => \^do\(0),
      I1 => vid_sof_i_19_n_0,
      I2 => \^dop\(1),
      I3 => \^do\(7),
      I4 => \^do\(4),
      I5 => \^do\(5),
      O => vid_sof_reg
    );
vid_sof_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000A4"
    )
        port map (
      I0 => \^do\(3),
      I1 => \^do\(0),
      I2 => \^do\(1),
      I3 => vid_sof_i_20_n_0,
      I4 => \^do\(7),
      I5 => \^do\(2),
      O => vid_sof_reg_0
    );
vid_sof_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^do\(2),
      I1 => \^do\(3),
      I2 => \^do\(6),
      I3 => \^do\(1),
      O => vid_sof_i_19_n_0
    );
vid_sof_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFEF"
    )
        port map (
      I0 => \^do\(4),
      I1 => \^do\(6),
      I2 => \^dop\(1),
      I3 => \^do\(3),
      I4 => \^do\(5),
      O => vid_sof_i_20_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_unimacro_FIFO_SYNC_MACRO is
  port (
    pix_fifo_aempty : out STD_LOGIC;
    pix_fifo_afull : out STD_LOGIC;
    pix_fifo_empty : out STD_LOGIC;
    vaxi_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DOP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    pix_fifo_empty_fwft_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    vout_valid : in STD_LOGIC;
    \data_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DIP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    vaxi_ready : in STD_LOGIC;
    pix_fifo_empty_fwft : in STD_LOGIC;
    p_0_in4_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_unimacro_FIFO_SYNC_MACRO : entity is "unimacro_FIFO_SYNC_MACRO";
end TySOM_1_7Z030_mipi_csi_0_unimacro_FIFO_SYNC_MACRO;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_unimacro_FIFO_SYNC_MACRO is
  signal RDEN : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_13\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_14\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_15\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_19\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_20\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_21\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_22\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_23\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_24\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_25\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_26\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_27\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_28\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_32\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_33\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_34\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_35\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_36\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_37\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_38\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_39\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_40\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_n_41\ : STD_LOGIC;
  signal \^pix_fifo_aempty\ : STD_LOGIC;
  signal \^pix_fifo_empty\ : STD_LOGIC;
  signal \NLW_bl.fifo_36_inst_bl.fifo_36_bl_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_bl.fifo_36_inst_bl.fifo_36_bl_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_bl.fifo_36_inst_bl.fifo_36_bl_DO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal \NLW_bl.fifo_36_inst_bl.fifo_36_bl_DOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_bl.fifo_36_inst_bl.fifo_36_bl_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_bl.fifo_36_inst_bl.fifo_36_bl_RDCOUNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 downto 10 );
  signal \NLW_bl.fifo_36_inst_bl.fifo_36_bl_WRCOUNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 downto 10 );
  attribute box_type : string;
  attribute box_type of \bl.fifo_36_inst_bl.fifo_36_bl\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bl.fifo_36_inst_bl.fifo_36_bl_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of pix_fifo_empty_fwft_i_1 : label is "soft_lutpair9";
begin
  pix_fifo_aempty <= \^pix_fifo_aempty\;
  pix_fifo_empty <= \^pix_fifo_empty\;
\bl.fifo_36_inst_bl.fifo_36_bl\: unisim.vcomponents.FIFO36E1
    generic map(
      ALMOST_EMPTY_OFFSET => X"0080",
      ALMOST_FULL_OFFSET => X"0080",
      DATA_WIDTH => 36,
      DO_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      EN_SYN => true,
      FIFO_MODE => "FIFO36",
      FIRST_WORD_FALL_THROUGH => false,
      INIT => X"000000000000000000",
      IS_RDCLK_INVERTED => '0',
      IS_RDEN_INVERTED => '0',
      IS_RSTREG_INVERTED => '0',
      IS_RST_INVERTED => '0',
      IS_WRCLK_INVERTED => '0',
      IS_WREN_INVERTED => '0',
      SIM_DEVICE => "7SERIES",
      SRVAL => X"000000000000000000"
    )
        port map (
      ALMOSTEMPTY => \^pix_fifo_aempty\,
      ALMOSTFULL => pix_fifo_afull,
      DBITERR => \NLW_bl.fifo_36_inst_bl.fifo_36_bl_DBITERR_UNCONNECTED\,
      DI(63 downto 32) => B"00000000000000000000000000000000",
      DI(31 downto 0) => \data_reg[31]\(31 downto 0),
      DIP(7 downto 2) => B"000000",
      DIP(1 downto 0) => DIP(1 downto 0),
      DO(63 downto 32) => \NLW_bl.fifo_36_inst_bl.fifo_36_bl_DO_UNCONNECTED\(63 downto 32),
      DO(31 downto 0) => vaxi_data(31 downto 0),
      DOP(7 downto 2) => \NLW_bl.fifo_36_inst_bl.fifo_36_bl_DOP_UNCONNECTED\(7 downto 2),
      DOP(1 downto 0) => DOP(1 downto 0),
      ECCPARITY(7 downto 0) => \NLW_bl.fifo_36_inst_bl.fifo_36_bl_ECCPARITY_UNCONNECTED\(7 downto 0),
      EMPTY => \^pix_fifo_empty\,
      FULL => \bl.fifo_36_inst_bl.fifo_36_bl_n_13\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDCLK => clk,
      RDCOUNT(12 downto 10) => \NLW_bl.fifo_36_inst_bl.fifo_36_bl_RDCOUNT_UNCONNECTED\(12 downto 10),
      RDCOUNT(9) => \bl.fifo_36_inst_bl.fifo_36_bl_n_19\,
      RDCOUNT(8) => \bl.fifo_36_inst_bl.fifo_36_bl_n_20\,
      RDCOUNT(7) => \bl.fifo_36_inst_bl.fifo_36_bl_n_21\,
      RDCOUNT(6) => \bl.fifo_36_inst_bl.fifo_36_bl_n_22\,
      RDCOUNT(5) => \bl.fifo_36_inst_bl.fifo_36_bl_n_23\,
      RDCOUNT(4) => \bl.fifo_36_inst_bl.fifo_36_bl_n_24\,
      RDCOUNT(3) => \bl.fifo_36_inst_bl.fifo_36_bl_n_25\,
      RDCOUNT(2) => \bl.fifo_36_inst_bl.fifo_36_bl_n_26\,
      RDCOUNT(1) => \bl.fifo_36_inst_bl.fifo_36_bl_n_27\,
      RDCOUNT(0) => \bl.fifo_36_inst_bl.fifo_36_bl_n_28\,
      RDEN => RDEN,
      RDERR => \bl.fifo_36_inst_bl.fifo_36_bl_n_14\,
      REGCE => '0',
      RST => Q(0),
      RSTREG => '0',
      SBITERR => \NLW_bl.fifo_36_inst_bl.fifo_36_bl_SBITERR_UNCONNECTED\,
      WRCLK => clk,
      WRCOUNT(12 downto 10) => \NLW_bl.fifo_36_inst_bl.fifo_36_bl_WRCOUNT_UNCONNECTED\(12 downto 10),
      WRCOUNT(9) => \bl.fifo_36_inst_bl.fifo_36_bl_n_32\,
      WRCOUNT(8) => \bl.fifo_36_inst_bl.fifo_36_bl_n_33\,
      WRCOUNT(7) => \bl.fifo_36_inst_bl.fifo_36_bl_n_34\,
      WRCOUNT(6) => \bl.fifo_36_inst_bl.fifo_36_bl_n_35\,
      WRCOUNT(5) => \bl.fifo_36_inst_bl.fifo_36_bl_n_36\,
      WRCOUNT(4) => \bl.fifo_36_inst_bl.fifo_36_bl_n_37\,
      WRCOUNT(3) => \bl.fifo_36_inst_bl.fifo_36_bl_n_38\,
      WRCOUNT(2) => \bl.fifo_36_inst_bl.fifo_36_bl_n_39\,
      WRCOUNT(1) => \bl.fifo_36_inst_bl.fifo_36_bl_n_40\,
      WRCOUNT(0) => \bl.fifo_36_inst_bl.fifo_36_bl_n_41\,
      WREN => vout_valid,
      WRERR => \bl.fifo_36_inst_bl.fifo_36_bl_n_15\
    );
\bl.fifo_36_inst_bl.fifo_36_bl_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EC"
    )
        port map (
      I0 => vaxi_ready,
      I1 => pix_fifo_empty_fwft,
      I2 => p_0_in4_in,
      I3 => \^pix_fifo_empty\,
      O => RDEN
    );
\pix_fifo_cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => Q(0),
      I1 => \^pix_fifo_aempty\,
      I2 => pix_fifo_empty_fwft,
      O => SR(0)
    );
pix_fifo_empty_fwft_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8A0"
    )
        port map (
      I0 => \^pix_fifo_empty\,
      I1 => p_0_in4_in,
      I2 => pix_fifo_empty_fwft,
      I3 => vaxi_ready,
      O => pix_fifo_empty_fwft_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_vid_32b_to_40b is
  port (
    out_valid_i_reg : out STD_LOGIC;
    vu40_sof : out STD_LOGIC;
    has_last_reg_0 : out STD_LOGIC;
    out_sof_reg_0 : out STD_LOGIC;
    has_last_reg_1 : out STD_LOGIC;
    vin_ready_10b : out STD_LOGIC;
    out_sof_reg_1 : out STD_LOGIC;
    vu40_valid : out STD_LOGIC;
    out_sof_reg_2 : out STD_LOGIC;
    \cnt_reg[0]_0\ : out STD_LOGIC;
    out_last0 : out STD_LOGIC;
    vid_ready : out STD_LOGIC;
    \out_data_reg[0]\ : out STD_LOGIC;
    \out_data_reg[1]\ : out STD_LOGIC;
    \out_data_reg[2]\ : out STD_LOGIC;
    \out_data_reg[3]\ : out STD_LOGIC;
    \out_data_reg[4]\ : out STD_LOGIC;
    \out_data_reg[5]\ : out STD_LOGIC;
    \out_data_reg[6]\ : out STD_LOGIC;
    \out_data_reg[7]\ : out STD_LOGIC;
    \out_data_reg[8]\ : out STD_LOGIC;
    \out_data_reg[9]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_reg[16]\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    vid_sof_reg : in STD_LOGIC;
    \cnt_reg[1]_0\ : in STD_LOGIC;
    \cnt_reg[0]_1\ : in STD_LOGIC;
    \cnt_reg[0]_2\ : in STD_LOGIC;
    pause_reg : in STD_LOGIC;
    has_last_reg_2 : in STD_LOGIC;
    \cnt_reg[1]_1\ : in STD_LOGIC;
    pause : in STD_LOGIC;
    \FSM_sequential_state_cur_reg[1]\ : in STD_LOGIC;
    pktr_empty : in STD_LOGIC;
    DO : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \eqOp__0\ : in STD_LOGIC;
    \cnt_reg[0]_3\ : in STD_LOGIC;
    \reg_reg[23]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_vid_32b_to_40b : entity is "vid_32b_to_40b";
end TySOM_1_7Z030_mipi_csi_0_vid_32b_to_40b;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_vid_32b_to_40b is
  signal \bl.fifo_36_inst_bl.fifo_36_bl_i_10_n_0\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_i_11_n_0\ : STD_LOGIC;
  signal \bl.fifo_36_inst_bl.fifo_36_bl_i_9_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal data_reg : STD_LOGIC_VECTOR ( 79 downto 40 );
  signal \data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \data_reg[15]_i_6_n_0\ : STD_LOGIC;
  signal \data_reg[15]_i_7_n_0\ : STD_LOGIC;
  signal \data_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[17]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[18]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[20]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[21]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[22]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[23]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[23]_i_5_n_0\ : STD_LOGIC;
  signal \data_reg[23]_i_6_n_0\ : STD_LOGIC;
  signal \data_reg[23]_i_7_n_0\ : STD_LOGIC;
  signal \data_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[24]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[25]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[26]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[28]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[29]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[30]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \data_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \data_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[32]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[32]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[33]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[33]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[33]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[34]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[34]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[34]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[35]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[35]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[35]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[36]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[36]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[37]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[37]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[37]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[38]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[38]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[38]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[39]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[39]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[39]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[39]_i_5_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[40]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[41]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[41]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[42]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[42]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[43]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[43]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[44]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[44]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[45]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[45]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[46]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[46]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[47]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[47]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[47]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[47]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[48]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[48]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[49]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[49]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[50]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[50]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[51]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[51]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[52]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[52]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[53]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[53]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[54]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[54]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[55]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[55]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[55]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[55]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[56]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[56]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[57]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[57]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[58]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[58]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[59]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[59]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[60]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[60]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[61]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[61]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[62]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[62]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[63]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[63]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[63]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[63]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[64]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[64]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[65]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[65]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[66]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[66]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[67]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[67]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[68]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[68]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[69]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[69]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[70]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[70]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[71]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[71]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[71]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[71]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[72]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[72]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[73]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[73]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[74]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[74]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[75]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[75]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[76]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[76]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[77]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[77]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[78]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[78]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[79]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[79]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[79]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[79]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[79]_i_5_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \^out_last0\ : STD_LOGIC;
  signal \^out_sof_reg_0\ : STD_LOGIC;
  signal \^out_valid_i_reg\ : STD_LOGIC;
  signal vu40_data : STD_LOGIC_VECTOR ( 39 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bl.fifo_36_inst_bl.fifo_36_bl_i_9\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \cnt[3]_i_5\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \data_reg[47]_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data_reg[63]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data_reg[72]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data_reg[73]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data_reg[74]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data_reg[75]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_reg[76]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_reg[77]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data_reg[78]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data_reg[79]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of out_sof_i_3 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of out_valid_i_i_1 : label is "soft_lutpair27";
begin
  out_last0 <= \^out_last0\;
  out_sof_reg_0 <= \^out_sof_reg_0\;
  out_valid_i_reg <= \^out_valid_i_reg\;
\bl.fifo_36_inst_bl.fifo_36_bl_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      O => \bl.fifo_36_inst_bl.fifo_36_bl_i_10_n_0\
    );
\bl.fifo_36_inst_bl.fifo_36_bl_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004000404040"
    )
        port map (
      I0 => \^out_valid_i_reg\,
      I1 => \cnt_reg[0]_1\,
      I2 => \cnt_reg[1]_0\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => \cnt_reg_n_0_[2]\,
      O => \bl.fifo_36_inst_bl.fifo_36_bl_i_11_n_0\
    );
\bl.fifo_36_inst_bl.fifo_36_bl_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEFEAE"
    )
        port map (
      I0 => \eqOp__0\,
      I1 => \cnt_reg[0]_3\,
      I2 => \reg_reg[23]\(0),
      I3 => \bl.fifo_36_inst_bl.fifo_36_bl_i_9_n_0\,
      I4 => \bl.fifo_36_inst_bl.fifo_36_bl_i_10_n_0\,
      I5 => \bl.fifo_36_inst_bl.fifo_36_bl_i_11_n_0\,
      O => vid_ready
    );
\bl.fifo_36_inst_bl.fifo_36_bl_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001333"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \^out_valid_i_reg\,
      O => \bl.fifo_36_inst_bl.fifo_36_bl_i_9_n_0\
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FE11EEFF00FF00"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \^out_valid_i_reg\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \cnt_reg[0]_2\,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999989CCCCCCCCC"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \^out_valid_i_reg\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \cnt_reg_n_0_[3]\,
      I5 => \cnt_reg[0]_2\,
      O => \cnt[1]_i_1__0_n_0\
    );
\cnt[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAABABAB"
    )
        port map (
      I0 => Q(0),
      I1 => \^out_valid_i_reg\,
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \cnt[3]_i_5_n_0\,
      I5 => \^out_last0\,
      O => \cnt_reg[0]_0\
    );
\cnt[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEEFEFEFEFEFEF"
    )
        port map (
      I0 => \cnt[2]_i_2_n_0\,
      I1 => \cnt[2]_i_3_n_0\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg[1]_0\,
      I5 => \cnt_reg[0]_1\,
      O => \cnt[2]_i_1__0_n_0\
    );
\cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C0008FF0C00FF"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg[0]_2\,
      I2 => \cnt_reg_n_0_[3]\,
      I3 => has_last_reg_2,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => \cnt_reg_n_0_[2]\,
      O => \cnt[2]_i_2_n_0\
    );
\cnt[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444400004400F0FF"
    )
        port map (
      I0 => \cnt[3]_i_5_n_0\,
      I1 => \cnt_reg[0]_2\,
      I2 => pause_reg,
      I3 => \^out_valid_i_reg\,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \cnt_reg_n_0_[3]\,
      O => \cnt[2]_i_3_n_0\
    );
\cnt[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01040105"
    )
        port map (
      I0 => \cnt_reg[1]_1\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt[3]_i_5_n_0\,
      I4 => pause_reg,
      I5 => Q(0),
      O => \cnt[3]_i_1__0_n_0\
    );
\cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00150055"
    )
        port map (
      I0 => has_last_reg_2,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \data_reg[7]_i_1_n_0\,
      O => \cnt[3]_i_2_n_0\
    );
\cnt[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5F0FF0AC500FF0"
    )
        port map (
      I0 => \cnt[3]_i_5_n_0\,
      I1 => \cnt[3]_i_7_n_0\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg[0]_2\,
      I5 => \^out_valid_i_reg\,
      O => \cnt[3]_i_3_n_0\
    );
\cnt[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      O => \cnt[3]_i_5_n_0\
    );
\cnt[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => pause,
      I3 => \FSM_sequential_state_cur_reg[1]\,
      I4 => pktr_empty,
      I5 => \^out_valid_i_reg\,
      O => \cnt[3]_i_7_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \cnt[0]_i_1_n_0\,
      Q => \cnt_reg_n_0_[0]\,
      R => \cnt[3]_i_1__0_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \cnt[1]_i_1__0_n_0\,
      Q => \cnt_reg_n_0_[1]\,
      R => \cnt[3]_i_1__0_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \cnt[2]_i_1__0_n_0\,
      Q => \cnt_reg_n_0_[2]\,
      R => \cnt[3]_i_1__0_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \cnt[3]_i_3_n_0\,
      Q => \cnt_reg_n_0_[3]\,
      R => \cnt[3]_i_1__0_n_0\
    );
\data_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[0]_i_2_n_0\,
      I1 => DO(0),
      I2 => \data_reg[15]_i_4_n_0\,
      I3 => vu40_data(0),
      I4 => \data_reg[7]_i_4_n_0\,
      I5 => \data_reg[0]_i_3_n_0\,
      O => \data_reg[0]_i_1_n_0\
    );
\data_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2008280800000000"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => data_reg(40),
      O => \data_reg[0]_i_2_n_0\
    );
\data_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[7]_i_6_n_0\,
      I1 => DO(24),
      I2 => \data_reg[15]_i_7_n_0\,
      I3 => DO(16),
      I4 => DO(8),
      I5 => \data_reg[23]_i_6_n_0\,
      O => \data_reg[0]_i_3_n_0\
    );
\data_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[10]_i_2_n_0\,
      I1 => DO(2),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(10),
      I4 => \data_reg[15]_i_4_n_0\,
      I5 => \data_reg[10]_i_3_n_0\,
      O => \data_reg[10]_i_1_n_0\
    );
\data_reg[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2008080800000000"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => data_reg(50),
      O => \data_reg[10]_i_2_n_0\
    );
\data_reg[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[15]_i_6_n_0\,
      I1 => vu40_data(10),
      I2 => \data_reg[15]_i_7_n_0\,
      I3 => DO(26),
      I4 => DO(18),
      I5 => \data_reg[23]_i_6_n_0\,
      O => \data_reg[10]_i_3_n_0\
    );
\data_reg[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[11]_i_2_n_0\,
      I1 => DO(3),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(11),
      I4 => \data_reg[15]_i_4_n_0\,
      I5 => \data_reg[11]_i_3_n_0\,
      O => \data_reg[11]_i_1_n_0\
    );
\data_reg[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2008080800000000"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => data_reg(51),
      O => \data_reg[11]_i_2_n_0\
    );
\data_reg[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[15]_i_6_n_0\,
      I1 => vu40_data(11),
      I2 => \data_reg[15]_i_7_n_0\,
      I3 => DO(27),
      I4 => DO(19),
      I5 => \data_reg[23]_i_6_n_0\,
      O => \data_reg[11]_i_3_n_0\
    );
\data_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[12]_i_2_n_0\,
      I1 => DO(4),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(12),
      I4 => \data_reg[15]_i_4_n_0\,
      I5 => \data_reg[12]_i_3_n_0\,
      O => \data_reg[12]_i_1_n_0\
    );
\data_reg[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2008080800000000"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => data_reg(52),
      O => \data_reg[12]_i_2_n_0\
    );
\data_reg[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[15]_i_6_n_0\,
      I1 => vu40_data(12),
      I2 => \data_reg[15]_i_7_n_0\,
      I3 => DO(28),
      I4 => DO(20),
      I5 => \data_reg[23]_i_6_n_0\,
      O => \data_reg[12]_i_3_n_0\
    );
\data_reg[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[13]_i_2_n_0\,
      I1 => DO(5),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(13),
      I4 => \data_reg[15]_i_4_n_0\,
      I5 => \data_reg[13]_i_3_n_0\,
      O => \data_reg[13]_i_1_n_0\
    );
\data_reg[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2008080800000000"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => data_reg(53),
      O => \data_reg[13]_i_2_n_0\
    );
\data_reg[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[15]_i_6_n_0\,
      I1 => vu40_data(13),
      I2 => \data_reg[15]_i_7_n_0\,
      I3 => DO(29),
      I4 => DO(21),
      I5 => \data_reg[23]_i_6_n_0\,
      O => \data_reg[13]_i_3_n_0\
    );
\data_reg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[14]_i_2_n_0\,
      I1 => DO(6),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(14),
      I4 => \data_reg[15]_i_4_n_0\,
      I5 => \data_reg[14]_i_3_n_0\,
      O => \data_reg[14]_i_1_n_0\
    );
\data_reg[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2008080800000000"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => data_reg(54),
      O => \data_reg[14]_i_2_n_0\
    );
\data_reg[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[15]_i_6_n_0\,
      I1 => vu40_data(14),
      I2 => \data_reg[15]_i_7_n_0\,
      I3 => DO(30),
      I4 => DO(22),
      I5 => \data_reg[23]_i_6_n_0\,
      O => \data_reg[14]_i_3_n_0\
    );
\data_reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => has_last_reg_2,
      I4 => \data_reg[7]_i_1_n_0\,
      O => \data_reg[15]_i_1_n_0\
    );
\data_reg[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[15]_i_3_n_0\,
      I1 => DO(7),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(15),
      I4 => \data_reg[15]_i_4_n_0\,
      I5 => \data_reg[15]_i_5_n_0\,
      O => \data_reg[15]_i_2_n_0\
    );
\data_reg[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2008080800000000"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => data_reg(55),
      O => \data_reg[15]_i_3_n_0\
    );
\data_reg[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000050010005"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \^out_valid_i_reg\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \cnt_reg[0]_2\,
      I5 => \cnt_reg_n_0_[1]\,
      O => \data_reg[15]_i_4_n_0\
    );
\data_reg[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[15]_i_6_n_0\,
      I1 => vu40_data(15),
      I2 => \data_reg[15]_i_7_n_0\,
      I3 => DO(31),
      I4 => DO(23),
      I5 => \data_reg[23]_i_6_n_0\,
      O => \data_reg[15]_i_5_n_0\
    );
\data_reg[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00050005555057F0"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \^out_valid_i_reg\,
      I5 => \cnt_reg_n_0_[3]\,
      O => \data_reg[15]_i_6_n_0\
    );
\data_reg[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \^out_valid_i_reg\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => \cnt_reg_n_0_[0]\,
      O => \data_reg[15]_i_7_n_0\
    );
\data_reg[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \data_reg[31]_i_4_n_0\,
      I1 => DO(0),
      I2 => \data_reg[16]_i_2_n_0\,
      I3 => DO(8),
      I4 => \data_reg[23]_i_4_n_0\,
      I5 => \data_reg[16]_i_3_n_0\,
      O => \data_reg[16]_i_1_n_0\
    );
\data_reg[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg[0]_2\,
      I5 => data_reg(56),
      O => \data_reg[16]_i_2_n_0\
    );
\data_reg[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[23]_i_6_n_0\,
      I1 => DO(24),
      I2 => \data_reg[23]_i_7_n_0\,
      I3 => vu40_data(16),
      I4 => DO(16),
      I5 => \data_reg[15]_i_4_n_0\,
      O => \data_reg[16]_i_3_n_0\
    );
\data_reg[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \data_reg[31]_i_4_n_0\,
      I1 => DO(1),
      I2 => \data_reg[17]_i_2_n_0\,
      I3 => DO(9),
      I4 => \data_reg[23]_i_4_n_0\,
      I5 => \data_reg[17]_i_3_n_0\,
      O => \data_reg[17]_i_1_n_0\
    );
\data_reg[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg[0]_2\,
      I5 => data_reg(57),
      O => \data_reg[17]_i_2_n_0\
    );
\data_reg[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[23]_i_6_n_0\,
      I1 => DO(25),
      I2 => \data_reg[23]_i_7_n_0\,
      I3 => vu40_data(17),
      I4 => DO(17),
      I5 => \data_reg[15]_i_4_n_0\,
      O => \data_reg[17]_i_3_n_0\
    );
\data_reg[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \data_reg[31]_i_4_n_0\,
      I1 => DO(2),
      I2 => \data_reg[18]_i_2_n_0\,
      I3 => DO(10),
      I4 => \data_reg[23]_i_4_n_0\,
      I5 => \data_reg[18]_i_3_n_0\,
      O => \data_reg[18]_i_1_n_0\
    );
\data_reg[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg[0]_2\,
      I5 => data_reg(58),
      O => \data_reg[18]_i_2_n_0\
    );
\data_reg[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[23]_i_6_n_0\,
      I1 => DO(26),
      I2 => \data_reg[23]_i_7_n_0\,
      I3 => vu40_data(18),
      I4 => DO(18),
      I5 => \data_reg[15]_i_4_n_0\,
      O => \data_reg[18]_i_3_n_0\
    );
\data_reg[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \data_reg[31]_i_4_n_0\,
      I1 => DO(3),
      I2 => \data_reg[19]_i_2_n_0\,
      I3 => DO(11),
      I4 => \data_reg[23]_i_4_n_0\,
      I5 => \data_reg[19]_i_3_n_0\,
      O => \data_reg[19]_i_1_n_0\
    );
\data_reg[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg[0]_2\,
      I5 => data_reg(59),
      O => \data_reg[19]_i_2_n_0\
    );
\data_reg[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[23]_i_6_n_0\,
      I1 => DO(27),
      I2 => \data_reg[23]_i_7_n_0\,
      I3 => vu40_data(19),
      I4 => DO(19),
      I5 => \data_reg[15]_i_4_n_0\,
      O => \data_reg[19]_i_3_n_0\
    );
\data_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[1]_i_2_n_0\,
      I1 => DO(1),
      I2 => \data_reg[15]_i_4_n_0\,
      I3 => vu40_data(1),
      I4 => \data_reg[7]_i_4_n_0\,
      I5 => \data_reg[1]_i_3_n_0\,
      O => \data_reg[1]_i_1_n_0\
    );
\data_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2008280800000000"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => data_reg(41),
      O => \data_reg[1]_i_2_n_0\
    );
\data_reg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[7]_i_6_n_0\,
      I1 => DO(25),
      I2 => \data_reg[15]_i_7_n_0\,
      I3 => DO(17),
      I4 => DO(9),
      I5 => \data_reg[23]_i_6_n_0\,
      O => \data_reg[1]_i_3_n_0\
    );
\data_reg[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \data_reg[31]_i_4_n_0\,
      I1 => DO(4),
      I2 => \data_reg[20]_i_2_n_0\,
      I3 => DO(12),
      I4 => \data_reg[23]_i_4_n_0\,
      I5 => \data_reg[20]_i_3_n_0\,
      O => \data_reg[20]_i_1_n_0\
    );
\data_reg[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg[0]_2\,
      I5 => data_reg(60),
      O => \data_reg[20]_i_2_n_0\
    );
\data_reg[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[23]_i_6_n_0\,
      I1 => DO(28),
      I2 => \data_reg[23]_i_7_n_0\,
      I3 => vu40_data(20),
      I4 => DO(20),
      I5 => \data_reg[15]_i_4_n_0\,
      O => \data_reg[20]_i_3_n_0\
    );
\data_reg[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \data_reg[31]_i_4_n_0\,
      I1 => DO(5),
      I2 => \data_reg[21]_i_2_n_0\,
      I3 => DO(13),
      I4 => \data_reg[23]_i_4_n_0\,
      I5 => \data_reg[21]_i_3_n_0\,
      O => \data_reg[21]_i_1_n_0\
    );
\data_reg[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg[0]_2\,
      I5 => data_reg(61),
      O => \data_reg[21]_i_2_n_0\
    );
\data_reg[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[23]_i_6_n_0\,
      I1 => DO(29),
      I2 => \data_reg[23]_i_7_n_0\,
      I3 => vu40_data(21),
      I4 => DO(21),
      I5 => \data_reg[15]_i_4_n_0\,
      O => \data_reg[21]_i_3_n_0\
    );
\data_reg[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \data_reg[31]_i_4_n_0\,
      I1 => DO(6),
      I2 => \data_reg[22]_i_2_n_0\,
      I3 => DO(14),
      I4 => \data_reg[23]_i_4_n_0\,
      I5 => \data_reg[22]_i_3_n_0\,
      O => \data_reg[22]_i_1_n_0\
    );
\data_reg[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg[0]_2\,
      I5 => data_reg(62),
      O => \data_reg[22]_i_2_n_0\
    );
\data_reg[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[23]_i_6_n_0\,
      I1 => DO(30),
      I2 => \data_reg[23]_i_7_n_0\,
      I3 => vu40_data(22),
      I4 => DO(22),
      I5 => \data_reg[15]_i_4_n_0\,
      O => \data_reg[22]_i_3_n_0\
    );
\data_reg[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000007"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => has_last_reg_2,
      I5 => \data_reg[7]_i_1_n_0\,
      O => \data_reg[23]_i_1_n_0\
    );
\data_reg[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \data_reg[31]_i_4_n_0\,
      I1 => DO(7),
      I2 => \data_reg[23]_i_3_n_0\,
      I3 => DO(15),
      I4 => \data_reg[23]_i_4_n_0\,
      I5 => \data_reg[23]_i_5_n_0\,
      O => \data_reg[23]_i_2_n_0\
    );
\data_reg[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg[0]_2\,
      I5 => data_reg(63),
      O => \data_reg[23]_i_3_n_0\
    );
\data_reg[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040024022"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg[0]_2\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \^out_valid_i_reg\,
      I5 => \cnt_reg_n_0_[3]\,
      O => \data_reg[23]_i_4_n_0\
    );
\data_reg[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[23]_i_6_n_0\,
      I1 => DO(31),
      I2 => \data_reg[23]_i_7_n_0\,
      I3 => vu40_data(23),
      I4 => DO(23),
      I5 => \data_reg[15]_i_4_n_0\,
      O => \data_reg[23]_i_5_n_0\
    );
\data_reg[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \^out_valid_i_reg\,
      I5 => \cnt_reg[0]_2\,
      O => \data_reg[23]_i_6_n_0\
    );
\data_reg[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00050005554057C0"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \^out_valid_i_reg\,
      I5 => \cnt_reg_n_0_[3]\,
      O => \data_reg[23]_i_7_n_0\
    );
\data_reg[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[24]_i_2_n_0\,
      I1 => DO(0),
      I2 => \data_reg[55]_i_3_n_0\,
      I3 => DO(8),
      I4 => \data_reg[31]_i_4_n_0\,
      I5 => \data_reg[24]_i_3_n_0\,
      O => \data_reg[24]_i_1_n_0\
    );
\data_reg[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040400000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg[0]_2\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => data_reg(64),
      O => \data_reg[24]_i_2_n_0\
    );
\data_reg[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[31]_i_6_n_0\,
      I1 => vu40_data(24),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(16),
      I4 => DO(24),
      I5 => \data_reg[15]_i_4_n_0\,
      O => \data_reg[24]_i_3_n_0\
    );
\data_reg[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[25]_i_2_n_0\,
      I1 => DO(1),
      I2 => \data_reg[55]_i_3_n_0\,
      I3 => DO(9),
      I4 => \data_reg[31]_i_4_n_0\,
      I5 => \data_reg[25]_i_3_n_0\,
      O => \data_reg[25]_i_1_n_0\
    );
\data_reg[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040400000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg[0]_2\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => data_reg(65),
      O => \data_reg[25]_i_2_n_0\
    );
\data_reg[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[31]_i_6_n_0\,
      I1 => vu40_data(25),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(17),
      I4 => DO(25),
      I5 => \data_reg[15]_i_4_n_0\,
      O => \data_reg[25]_i_3_n_0\
    );
\data_reg[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[26]_i_2_n_0\,
      I1 => DO(2),
      I2 => \data_reg[55]_i_3_n_0\,
      I3 => DO(10),
      I4 => \data_reg[31]_i_4_n_0\,
      I5 => \data_reg[26]_i_3_n_0\,
      O => \data_reg[26]_i_1_n_0\
    );
\data_reg[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040400000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg[0]_2\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => data_reg(66),
      O => \data_reg[26]_i_2_n_0\
    );
\data_reg[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[31]_i_6_n_0\,
      I1 => vu40_data(26),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(18),
      I4 => DO(26),
      I5 => \data_reg[15]_i_4_n_0\,
      O => \data_reg[26]_i_3_n_0\
    );
\data_reg[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[27]_i_2_n_0\,
      I1 => DO(3),
      I2 => \data_reg[55]_i_3_n_0\,
      I3 => DO(11),
      I4 => \data_reg[31]_i_4_n_0\,
      I5 => \data_reg[27]_i_3_n_0\,
      O => \data_reg[27]_i_1_n_0\
    );
\data_reg[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040400000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg[0]_2\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => data_reg(67),
      O => \data_reg[27]_i_2_n_0\
    );
\data_reg[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[31]_i_6_n_0\,
      I1 => vu40_data(27),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(19),
      I4 => DO(27),
      I5 => \data_reg[15]_i_4_n_0\,
      O => \data_reg[27]_i_3_n_0\
    );
\data_reg[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[28]_i_2_n_0\,
      I1 => DO(4),
      I2 => \data_reg[55]_i_3_n_0\,
      I3 => DO(12),
      I4 => \data_reg[31]_i_4_n_0\,
      I5 => \data_reg[28]_i_3_n_0\,
      O => \data_reg[28]_i_1_n_0\
    );
\data_reg[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040400000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg[0]_2\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => data_reg(68),
      O => \data_reg[28]_i_2_n_0\
    );
\data_reg[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[31]_i_6_n_0\,
      I1 => vu40_data(28),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(20),
      I4 => DO(28),
      I5 => \data_reg[15]_i_4_n_0\,
      O => \data_reg[28]_i_3_n_0\
    );
\data_reg[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[29]_i_2_n_0\,
      I1 => DO(5),
      I2 => \data_reg[55]_i_3_n_0\,
      I3 => DO(13),
      I4 => \data_reg[31]_i_4_n_0\,
      I5 => \data_reg[29]_i_3_n_0\,
      O => \data_reg[29]_i_1_n_0\
    );
\data_reg[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040400000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg[0]_2\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => data_reg(69),
      O => \data_reg[29]_i_2_n_0\
    );
\data_reg[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[31]_i_6_n_0\,
      I1 => vu40_data(29),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(21),
      I4 => DO(29),
      I5 => \data_reg[15]_i_4_n_0\,
      O => \data_reg[29]_i_3_n_0\
    );
\data_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[2]_i_2_n_0\,
      I1 => DO(2),
      I2 => \data_reg[15]_i_4_n_0\,
      I3 => vu40_data(2),
      I4 => \data_reg[7]_i_4_n_0\,
      I5 => \data_reg[2]_i_3_n_0\,
      O => \data_reg[2]_i_1_n_0\
    );
\data_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2008280800000000"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => data_reg(42),
      O => \data_reg[2]_i_2_n_0\
    );
\data_reg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[7]_i_6_n_0\,
      I1 => DO(26),
      I2 => \data_reg[15]_i_7_n_0\,
      I3 => DO(18),
      I4 => DO(10),
      I5 => \data_reg[23]_i_6_n_0\,
      O => \data_reg[2]_i_3_n_0\
    );
\data_reg[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[30]_i_2_n_0\,
      I1 => DO(6),
      I2 => \data_reg[55]_i_3_n_0\,
      I3 => DO(14),
      I4 => \data_reg[31]_i_4_n_0\,
      I5 => \data_reg[30]_i_3_n_0\,
      O => \data_reg[30]_i_1_n_0\
    );
\data_reg[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040400000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg[0]_2\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => data_reg(70),
      O => \data_reg[30]_i_2_n_0\
    );
\data_reg[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[31]_i_6_n_0\,
      I1 => vu40_data(30),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(22),
      I4 => DO(30),
      I5 => \data_reg[15]_i_4_n_0\,
      O => \data_reg[30]_i_3_n_0\
    );
\data_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => has_last_reg_2,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \data_reg[7]_i_1_n_0\,
      O => \data_reg[31]_i_1_n_0\
    );
\data_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[31]_i_3_n_0\,
      I1 => DO(7),
      I2 => \data_reg[55]_i_3_n_0\,
      I3 => DO(15),
      I4 => \data_reg[31]_i_4_n_0\,
      I5 => \data_reg[31]_i_5_n_0\,
      O => \data_reg[31]_i_2_n_0\
    );
\data_reg[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040400000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg[0]_2\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => data_reg(71),
      O => \data_reg[31]_i_3_n_0\
    );
\data_reg[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5001000500000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \^out_valid_i_reg\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \cnt_reg[0]_2\,
      I5 => \cnt_reg_n_0_[1]\,
      O => \data_reg[31]_i_4_n_0\
    );
\data_reg[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[31]_i_6_n_0\,
      I1 => vu40_data(31),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(23),
      I4 => DO(31),
      I5 => \data_reg[15]_i_4_n_0\,
      O => \data_reg[31]_i_5_n_0\
    );
\data_reg[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000010505A505A"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \^out_valid_i_reg\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => \cnt_reg[0]_2\,
      O => \data_reg[31]_i_6_n_0\
    );
\data_reg[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \data_reg[63]_i_4_n_0\,
      I1 => DO(0),
      I2 => \data_reg[32]_i_2_n_0\,
      I3 => DO(8),
      I4 => \data_reg[55]_i_3_n_0\,
      I5 => \data_reg[32]_i_3_n_0\,
      O => \data_reg[32]_i_1_n_0\
    );
\data_reg[32]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg[0]_2\,
      I5 => data_reg(72),
      O => \data_reg[32]_i_2_n_0\
    );
\data_reg[32]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[39]_i_5_n_0\,
      I1 => vu40_data(32),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(24),
      I4 => DO(16),
      I5 => \data_reg[31]_i_4_n_0\,
      O => \data_reg[32]_i_3_n_0\
    );
\data_reg[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \data_reg[63]_i_4_n_0\,
      I1 => DO(1),
      I2 => \data_reg[33]_i_2_n_0\,
      I3 => DO(9),
      I4 => \data_reg[55]_i_3_n_0\,
      I5 => \data_reg[33]_i_3_n_0\,
      O => \data_reg[33]_i_1_n_0\
    );
\data_reg[33]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg[0]_2\,
      I5 => data_reg(73),
      O => \data_reg[33]_i_2_n_0\
    );
\data_reg[33]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[39]_i_5_n_0\,
      I1 => vu40_data(33),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(25),
      I4 => DO(17),
      I5 => \data_reg[31]_i_4_n_0\,
      O => \data_reg[33]_i_3_n_0\
    );
\data_reg[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \data_reg[63]_i_4_n_0\,
      I1 => DO(2),
      I2 => \data_reg[34]_i_2_n_0\,
      I3 => DO(10),
      I4 => \data_reg[55]_i_3_n_0\,
      I5 => \data_reg[34]_i_3_n_0\,
      O => \data_reg[34]_i_1_n_0\
    );
\data_reg[34]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg[0]_2\,
      I5 => data_reg(74),
      O => \data_reg[34]_i_2_n_0\
    );
\data_reg[34]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[39]_i_5_n_0\,
      I1 => vu40_data(34),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(26),
      I4 => DO(18),
      I5 => \data_reg[31]_i_4_n_0\,
      O => \data_reg[34]_i_3_n_0\
    );
\data_reg[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \data_reg[63]_i_4_n_0\,
      I1 => DO(3),
      I2 => \data_reg[35]_i_2_n_0\,
      I3 => DO(11),
      I4 => \data_reg[55]_i_3_n_0\,
      I5 => \data_reg[35]_i_3_n_0\,
      O => \data_reg[35]_i_1_n_0\
    );
\data_reg[35]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg[0]_2\,
      I5 => data_reg(75),
      O => \data_reg[35]_i_2_n_0\
    );
\data_reg[35]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[39]_i_5_n_0\,
      I1 => vu40_data(35),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(27),
      I4 => DO(19),
      I5 => \data_reg[31]_i_4_n_0\,
      O => \data_reg[35]_i_3_n_0\
    );
\data_reg[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \data_reg[63]_i_4_n_0\,
      I1 => DO(4),
      I2 => \data_reg[36]_i_2_n_0\,
      I3 => DO(12),
      I4 => \data_reg[55]_i_3_n_0\,
      I5 => \data_reg[36]_i_3_n_0\,
      O => \data_reg[36]_i_1_n_0\
    );
\data_reg[36]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg[0]_2\,
      I5 => data_reg(76),
      O => \data_reg[36]_i_2_n_0\
    );
\data_reg[36]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[39]_i_5_n_0\,
      I1 => vu40_data(36),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(28),
      I4 => DO(20),
      I5 => \data_reg[31]_i_4_n_0\,
      O => \data_reg[36]_i_3_n_0\
    );
\data_reg[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \data_reg[63]_i_4_n_0\,
      I1 => DO(5),
      I2 => \data_reg[37]_i_2_n_0\,
      I3 => DO(13),
      I4 => \data_reg[55]_i_3_n_0\,
      I5 => \data_reg[37]_i_3_n_0\,
      O => \data_reg[37]_i_1_n_0\
    );
\data_reg[37]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg[0]_2\,
      I5 => data_reg(77),
      O => \data_reg[37]_i_2_n_0\
    );
\data_reg[37]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[39]_i_5_n_0\,
      I1 => vu40_data(37),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(29),
      I4 => DO(21),
      I5 => \data_reg[31]_i_4_n_0\,
      O => \data_reg[37]_i_3_n_0\
    );
\data_reg[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \data_reg[63]_i_4_n_0\,
      I1 => DO(6),
      I2 => \data_reg[38]_i_2_n_0\,
      I3 => DO(14),
      I4 => \data_reg[55]_i_3_n_0\,
      I5 => \data_reg[38]_i_3_n_0\,
      O => \data_reg[38]_i_1_n_0\
    );
\data_reg[38]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg[0]_2\,
      I5 => data_reg(78),
      O => \data_reg[38]_i_2_n_0\
    );
\data_reg[38]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[39]_i_5_n_0\,
      I1 => vu40_data(38),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(30),
      I4 => DO(22),
      I5 => \data_reg[31]_i_4_n_0\,
      O => \data_reg[38]_i_3_n_0\
    );
\data_reg[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCDCDCDCF"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \data_reg[7]_i_1_n_0\,
      I2 => has_last_reg_2,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => \cnt_reg_n_0_[3]\,
      O => \data_reg[39]_i_1_n_0\
    );
\data_reg[39]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \data_reg[63]_i_4_n_0\,
      I1 => DO(7),
      I2 => \data_reg[39]_i_3_n_0\,
      I3 => DO(15),
      I4 => \data_reg[55]_i_3_n_0\,
      I5 => \data_reg[39]_i_4_n_0\,
      O => \data_reg[39]_i_2_n_0\
    );
\data_reg[39]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg[0]_2\,
      I5 => data_reg(79),
      O => \data_reg[39]_i_3_n_0\
    );
\data_reg[39]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[39]_i_5_n_0\,
      I1 => vu40_data(39),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(31),
      I4 => DO(23),
      I5 => \data_reg[31]_i_4_n_0\,
      O => \data_reg[39]_i_4_n_0\
    );
\data_reg[39]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000003E003E003E0"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg[1]_0\,
      I5 => \cnt_reg[0]_1\,
      O => \data_reg[39]_i_5_n_0\
    );
\data_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[3]_i_2_n_0\,
      I1 => DO(3),
      I2 => \data_reg[15]_i_4_n_0\,
      I3 => vu40_data(3),
      I4 => \data_reg[7]_i_4_n_0\,
      I5 => \data_reg[3]_i_3_n_0\,
      O => \data_reg[3]_i_1_n_0\
    );
\data_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2008280800000000"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => data_reg(43),
      O => \data_reg[3]_i_2_n_0\
    );
\data_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[7]_i_6_n_0\,
      I1 => DO(27),
      I2 => \data_reg[15]_i_7_n_0\,
      I3 => DO(19),
      I4 => DO(11),
      I5 => \data_reg[23]_i_6_n_0\,
      O => \data_reg[3]_i_3_n_0\
    );
\data_reg[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[40]_i_2_n_0\,
      I1 => \data_reg[55]_i_3_n_0\,
      I2 => DO(16),
      I3 => DO(8),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[40]_i_1_n_0\
    );
\data_reg[40]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(0),
      I2 => \data_reg[47]_i_4_n_0\,
      I3 => data_reg(40),
      I4 => DO(24),
      I5 => \data_reg[31]_i_4_n_0\,
      O => \data_reg[40]_i_2_n_0\
    );
\data_reg[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[41]_i_2_n_0\,
      I1 => \data_reg[55]_i_3_n_0\,
      I2 => DO(17),
      I3 => DO(9),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[41]_i_1_n_0\
    );
\data_reg[41]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(1),
      I2 => \data_reg[47]_i_4_n_0\,
      I3 => data_reg(41),
      I4 => DO(25),
      I5 => \data_reg[31]_i_4_n_0\,
      O => \data_reg[41]_i_2_n_0\
    );
\data_reg[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[42]_i_2_n_0\,
      I1 => \data_reg[55]_i_3_n_0\,
      I2 => DO(18),
      I3 => DO(10),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[42]_i_1_n_0\
    );
\data_reg[42]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(2),
      I2 => \data_reg[47]_i_4_n_0\,
      I3 => data_reg(42),
      I4 => DO(26),
      I5 => \data_reg[31]_i_4_n_0\,
      O => \data_reg[42]_i_2_n_0\
    );
\data_reg[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[43]_i_2_n_0\,
      I1 => \data_reg[55]_i_3_n_0\,
      I2 => DO(19),
      I3 => DO(11),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[43]_i_1_n_0\
    );
\data_reg[43]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(3),
      I2 => \data_reg[47]_i_4_n_0\,
      I3 => data_reg(43),
      I4 => DO(27),
      I5 => \data_reg[31]_i_4_n_0\,
      O => \data_reg[43]_i_2_n_0\
    );
\data_reg[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[44]_i_2_n_0\,
      I1 => \data_reg[55]_i_3_n_0\,
      I2 => DO(20),
      I3 => DO(12),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[44]_i_1_n_0\
    );
\data_reg[44]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(4),
      I2 => \data_reg[47]_i_4_n_0\,
      I3 => data_reg(44),
      I4 => DO(28),
      I5 => \data_reg[31]_i_4_n_0\,
      O => \data_reg[44]_i_2_n_0\
    );
\data_reg[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[45]_i_2_n_0\,
      I1 => \data_reg[55]_i_3_n_0\,
      I2 => DO(21),
      I3 => DO(13),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[45]_i_1_n_0\
    );
\data_reg[45]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(5),
      I2 => \data_reg[47]_i_4_n_0\,
      I3 => data_reg(45),
      I4 => DO(29),
      I5 => \data_reg[31]_i_4_n_0\,
      O => \data_reg[45]_i_2_n_0\
    );
\data_reg[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[46]_i_2_n_0\,
      I1 => \data_reg[55]_i_3_n_0\,
      I2 => DO(22),
      I3 => DO(14),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[46]_i_1_n_0\
    );
\data_reg[46]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(6),
      I2 => \data_reg[47]_i_4_n_0\,
      I3 => data_reg(46),
      I4 => DO(30),
      I5 => \data_reg[31]_i_4_n_0\,
      O => \data_reg[46]_i_2_n_0\
    );
\data_reg[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0105"
    )
        port map (
      I0 => has_last_reg_2,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \data_reg[7]_i_1_n_0\,
      O => \data_reg[47]_i_1_n_0\
    );
\data_reg[47]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[47]_i_3_n_0\,
      I1 => \data_reg[55]_i_3_n_0\,
      I2 => DO(23),
      I3 => DO(15),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[47]_i_2_n_0\
    );
\data_reg[47]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(7),
      I2 => \data_reg[47]_i_4_n_0\,
      I3 => data_reg(47),
      I4 => DO(31),
      I5 => \data_reg[31]_i_4_n_0\,
      O => \data_reg[47]_i_3_n_0\
    );
\data_reg[47]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00181818"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt_reg[1]_0\,
      I4 => \cnt_reg[0]_1\,
      O => \data_reg[47]_i_4_n_0\
    );
\data_reg[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[48]_i_2_n_0\,
      I1 => \data_reg[55]_i_3_n_0\,
      I2 => DO(24),
      I3 => DO(16),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[48]_i_1_n_0\
    );
\data_reg[48]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(8),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(0),
      I4 => data_reg(48),
      I5 => \data_reg[55]_i_4_n_0\,
      O => \data_reg[48]_i_2_n_0\
    );
\data_reg[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[49]_i_2_n_0\,
      I1 => \data_reg[55]_i_3_n_0\,
      I2 => DO(25),
      I3 => DO(17),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[49]_i_1_n_0\
    );
\data_reg[49]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(9),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(1),
      I4 => data_reg(49),
      I5 => \data_reg[55]_i_4_n_0\,
      O => \data_reg[49]_i_2_n_0\
    );
\data_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[4]_i_2_n_0\,
      I1 => DO(4),
      I2 => \data_reg[15]_i_4_n_0\,
      I3 => vu40_data(4),
      I4 => \data_reg[7]_i_4_n_0\,
      I5 => \data_reg[4]_i_3_n_0\,
      O => \data_reg[4]_i_1_n_0\
    );
\data_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2008280800000000"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => data_reg(44),
      O => \data_reg[4]_i_2_n_0\
    );
\data_reg[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[7]_i_6_n_0\,
      I1 => DO(28),
      I2 => \data_reg[15]_i_7_n_0\,
      I3 => DO(20),
      I4 => DO(12),
      I5 => \data_reg[23]_i_6_n_0\,
      O => \data_reg[4]_i_3_n_0\
    );
\data_reg[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[50]_i_2_n_0\,
      I1 => \data_reg[55]_i_3_n_0\,
      I2 => DO(26),
      I3 => DO(18),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[50]_i_1_n_0\
    );
\data_reg[50]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(10),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(2),
      I4 => data_reg(50),
      I5 => \data_reg[55]_i_4_n_0\,
      O => \data_reg[50]_i_2_n_0\
    );
\data_reg[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[51]_i_2_n_0\,
      I1 => \data_reg[55]_i_3_n_0\,
      I2 => DO(27),
      I3 => DO(19),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[51]_i_1_n_0\
    );
\data_reg[51]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(11),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(3),
      I4 => data_reg(51),
      I5 => \data_reg[55]_i_4_n_0\,
      O => \data_reg[51]_i_2_n_0\
    );
\data_reg[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[52]_i_2_n_0\,
      I1 => \data_reg[55]_i_3_n_0\,
      I2 => DO(28),
      I3 => DO(20),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[52]_i_1_n_0\
    );
\data_reg[52]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(12),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(4),
      I4 => data_reg(52),
      I5 => \data_reg[55]_i_4_n_0\,
      O => \data_reg[52]_i_2_n_0\
    );
\data_reg[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[53]_i_2_n_0\,
      I1 => \data_reg[55]_i_3_n_0\,
      I2 => DO(29),
      I3 => DO(21),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[53]_i_1_n_0\
    );
\data_reg[53]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(13),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(5),
      I4 => data_reg(53),
      I5 => \data_reg[55]_i_4_n_0\,
      O => \data_reg[53]_i_2_n_0\
    );
\data_reg[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[54]_i_2_n_0\,
      I1 => \data_reg[55]_i_3_n_0\,
      I2 => DO(30),
      I3 => DO(22),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[54]_i_1_n_0\
    );
\data_reg[54]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(14),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(6),
      I4 => data_reg(54),
      I5 => \data_reg[55]_i_4_n_0\,
      O => \data_reg[54]_i_2_n_0\
    );
\data_reg[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[55]_i_2_n_0\,
      I1 => \data_reg[55]_i_3_n_0\,
      I2 => DO(31),
      I3 => DO(23),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[55]_i_1_n_0\
    );
\data_reg[55]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(15),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(7),
      I4 => data_reg(55),
      I5 => \data_reg[55]_i_4_n_0\,
      O => \data_reg[55]_i_2_n_0\
    );
\data_reg[55]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010083008"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \^out_valid_i_reg\,
      I5 => \cnt_reg_n_0_[2]\,
      O => \data_reg[55]_i_3_n_0\
    );
\data_reg[55]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000038003800380"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg[1]_0\,
      I5 => \cnt_reg[0]_1\,
      O => \data_reg[55]_i_4_n_0\
    );
\data_reg[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[56]_i_2_n_0\,
      I1 => \data_reg[63]_i_3_n_0\,
      I2 => data_reg(56),
      I3 => DO(24),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[56]_i_1_n_0\
    );
\data_reg[56]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(16),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(8),
      I4 => DO(0),
      I5 => \data_reg[79]_i_5_n_0\,
      O => \data_reg[56]_i_2_n_0\
    );
\data_reg[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[57]_i_2_n_0\,
      I1 => \data_reg[63]_i_3_n_0\,
      I2 => data_reg(57),
      I3 => DO(25),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[57]_i_1_n_0\
    );
\data_reg[57]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(17),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(9),
      I4 => DO(1),
      I5 => \data_reg[79]_i_5_n_0\,
      O => \data_reg[57]_i_2_n_0\
    );
\data_reg[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[58]_i_2_n_0\,
      I1 => \data_reg[63]_i_3_n_0\,
      I2 => data_reg(58),
      I3 => DO(26),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[58]_i_1_n_0\
    );
\data_reg[58]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(18),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(10),
      I4 => DO(2),
      I5 => \data_reg[79]_i_5_n_0\,
      O => \data_reg[58]_i_2_n_0\
    );
\data_reg[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[59]_i_2_n_0\,
      I1 => \data_reg[63]_i_3_n_0\,
      I2 => data_reg(59),
      I3 => DO(27),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[59]_i_1_n_0\
    );
\data_reg[59]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(19),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(11),
      I4 => DO(3),
      I5 => \data_reg[79]_i_5_n_0\,
      O => \data_reg[59]_i_2_n_0\
    );
\data_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[5]_i_2_n_0\,
      I1 => DO(5),
      I2 => \data_reg[15]_i_4_n_0\,
      I3 => vu40_data(5),
      I4 => \data_reg[7]_i_4_n_0\,
      I5 => \data_reg[5]_i_3_n_0\,
      O => \data_reg[5]_i_1_n_0\
    );
\data_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2008280800000000"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => data_reg(45),
      O => \data_reg[5]_i_2_n_0\
    );
\data_reg[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[7]_i_6_n_0\,
      I1 => DO(29),
      I2 => \data_reg[15]_i_7_n_0\,
      I3 => DO(21),
      I4 => DO(13),
      I5 => \data_reg[23]_i_6_n_0\,
      O => \data_reg[5]_i_3_n_0\
    );
\data_reg[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[60]_i_2_n_0\,
      I1 => \data_reg[63]_i_3_n_0\,
      I2 => data_reg(60),
      I3 => DO(28),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[60]_i_1_n_0\
    );
\data_reg[60]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(20),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(12),
      I4 => DO(4),
      I5 => \data_reg[79]_i_5_n_0\,
      O => \data_reg[60]_i_2_n_0\
    );
\data_reg[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[61]_i_2_n_0\,
      I1 => \data_reg[63]_i_3_n_0\,
      I2 => data_reg(61),
      I3 => DO(29),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[61]_i_1_n_0\
    );
\data_reg[61]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(21),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(13),
      I4 => DO(5),
      I5 => \data_reg[79]_i_5_n_0\,
      O => \data_reg[61]_i_2_n_0\
    );
\data_reg[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[62]_i_2_n_0\,
      I1 => \data_reg[63]_i_3_n_0\,
      I2 => data_reg(62),
      I3 => DO(30),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[62]_i_1_n_0\
    );
\data_reg[62]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(22),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(14),
      I4 => DO(6),
      I5 => \data_reg[79]_i_5_n_0\,
      O => \data_reg[62]_i_2_n_0\
    );
\data_reg[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[63]_i_2_n_0\,
      I1 => \data_reg[63]_i_3_n_0\,
      I2 => data_reg(63),
      I3 => DO(31),
      I4 => \data_reg[63]_i_4_n_0\,
      O => \data_reg[63]_i_1_n_0\
    );
\data_reg[63]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(23),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(15),
      I4 => DO(7),
      I5 => \data_reg[79]_i_5_n_0\,
      O => \data_reg[63]_i_2_n_0\
    );
\data_reg[63]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000070"
    )
        port map (
      I0 => \cnt_reg[0]_1\,
      I1 => \cnt_reg[1]_0\,
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \cnt_reg_n_0_[1]\,
      O => \data_reg[63]_i_3_n_0\
    );
\data_reg[63]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A000000700"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \^out_valid_i_reg\,
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => \cnt_reg_n_0_[0]\,
      O => \data_reg[63]_i_4_n_0\
    );
\data_reg[64]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[64]_i_2_n_0\,
      I1 => \data_reg[71]_i_3_n_0\,
      I2 => DO(0),
      I3 => data_reg(64),
      I4 => \data_reg[79]_i_2_n_0\,
      O => \data_reg[64]_i_1_n_0\
    );
\data_reg[64]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(24),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(16),
      I4 => DO(8),
      I5 => \data_reg[79]_i_5_n_0\,
      O => \data_reg[64]_i_2_n_0\
    );
\data_reg[65]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[65]_i_2_n_0\,
      I1 => \data_reg[71]_i_3_n_0\,
      I2 => DO(1),
      I3 => data_reg(65),
      I4 => \data_reg[79]_i_2_n_0\,
      O => \data_reg[65]_i_1_n_0\
    );
\data_reg[65]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(25),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(17),
      I4 => DO(9),
      I5 => \data_reg[79]_i_5_n_0\,
      O => \data_reg[65]_i_2_n_0\
    );
\data_reg[66]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[66]_i_2_n_0\,
      I1 => \data_reg[71]_i_3_n_0\,
      I2 => DO(2),
      I3 => data_reg(66),
      I4 => \data_reg[79]_i_2_n_0\,
      O => \data_reg[66]_i_1_n_0\
    );
\data_reg[66]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(26),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(18),
      I4 => DO(10),
      I5 => \data_reg[79]_i_5_n_0\,
      O => \data_reg[66]_i_2_n_0\
    );
\data_reg[67]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[67]_i_2_n_0\,
      I1 => \data_reg[71]_i_3_n_0\,
      I2 => DO(3),
      I3 => data_reg(67),
      I4 => \data_reg[79]_i_2_n_0\,
      O => \data_reg[67]_i_1_n_0\
    );
\data_reg[67]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(27),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(19),
      I4 => DO(11),
      I5 => \data_reg[79]_i_5_n_0\,
      O => \data_reg[67]_i_2_n_0\
    );
\data_reg[68]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[68]_i_2_n_0\,
      I1 => \data_reg[71]_i_3_n_0\,
      I2 => DO(4),
      I3 => data_reg(68),
      I4 => \data_reg[79]_i_2_n_0\,
      O => \data_reg[68]_i_1_n_0\
    );
\data_reg[68]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(28),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(20),
      I4 => DO(12),
      I5 => \data_reg[79]_i_5_n_0\,
      O => \data_reg[68]_i_2_n_0\
    );
\data_reg[69]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[69]_i_2_n_0\,
      I1 => \data_reg[71]_i_3_n_0\,
      I2 => DO(5),
      I3 => data_reg(69),
      I4 => \data_reg[79]_i_2_n_0\,
      O => \data_reg[69]_i_1_n_0\
    );
\data_reg[69]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(29),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(21),
      I4 => DO(13),
      I5 => \data_reg[79]_i_5_n_0\,
      O => \data_reg[69]_i_2_n_0\
    );
\data_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[6]_i_2_n_0\,
      I1 => DO(6),
      I2 => \data_reg[15]_i_4_n_0\,
      I3 => vu40_data(6),
      I4 => \data_reg[7]_i_4_n_0\,
      I5 => \data_reg[6]_i_3_n_0\,
      O => \data_reg[6]_i_1_n_0\
    );
\data_reg[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2008280800000000"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => data_reg(46),
      O => \data_reg[6]_i_2_n_0\
    );
\data_reg[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[7]_i_6_n_0\,
      I1 => DO(30),
      I2 => \data_reg[15]_i_7_n_0\,
      I3 => DO(22),
      I4 => DO(14),
      I5 => \data_reg[23]_i_6_n_0\,
      O => \data_reg[6]_i_3_n_0\
    );
\data_reg[70]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[70]_i_2_n_0\,
      I1 => \data_reg[71]_i_3_n_0\,
      I2 => DO(6),
      I3 => data_reg(70),
      I4 => \data_reg[79]_i_2_n_0\,
      O => \data_reg[70]_i_1_n_0\
    );
\data_reg[70]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(30),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(22),
      I4 => DO(14),
      I5 => \data_reg[79]_i_5_n_0\,
      O => \data_reg[70]_i_2_n_0\
    );
\data_reg[71]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \data_reg[71]_i_2_n_0\,
      I1 => \data_reg[71]_i_3_n_0\,
      I2 => DO(7),
      I3 => data_reg(71),
      I4 => \data_reg[79]_i_2_n_0\,
      O => \data_reg[71]_i_1_n_0\
    );
\data_reg[71]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[71]_i_4_n_0\,
      I1 => DO(31),
      I2 => \data_reg[79]_i_4_n_0\,
      I3 => DO(23),
      I4 => DO(15),
      I5 => \data_reg[79]_i_5_n_0\,
      O => \data_reg[71]_i_2_n_0\
    );
\data_reg[71]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000070"
    )
        port map (
      I0 => \cnt_reg[0]_1\,
      I1 => \cnt_reg[1]_0\,
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => \cnt_reg_n_0_[0]\,
      O => \data_reg[71]_i_3_n_0\
    );
\data_reg[71]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0015000000008000"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \cnt_reg[1]_0\,
      I2 => \cnt_reg[0]_1\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \cnt_reg_n_0_[0]\,
      O => \data_reg[71]_i_4_n_0\
    );
\data_reg[72]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => DO(0),
      I1 => \data_reg[79]_i_2_n_0\,
      I2 => \data_reg[72]_i_2_n_0\,
      O => \data_reg[72]_i_1_n_0\
    );
\data_reg[72]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[79]_i_4_n_0\,
      I1 => DO(24),
      I2 => \data_reg[79]_i_5_n_0\,
      I3 => DO(16),
      I4 => DO(8),
      I5 => \data_reg[71]_i_3_n_0\,
      O => \data_reg[72]_i_2_n_0\
    );
\data_reg[73]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => DO(1),
      I1 => \data_reg[79]_i_2_n_0\,
      I2 => \data_reg[73]_i_2_n_0\,
      O => \data_reg[73]_i_1_n_0\
    );
\data_reg[73]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[79]_i_4_n_0\,
      I1 => DO(25),
      I2 => \data_reg[79]_i_5_n_0\,
      I3 => DO(17),
      I4 => DO(9),
      I5 => \data_reg[71]_i_3_n_0\,
      O => \data_reg[73]_i_2_n_0\
    );
\data_reg[74]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => DO(2),
      I1 => \data_reg[79]_i_2_n_0\,
      I2 => \data_reg[74]_i_2_n_0\,
      O => \data_reg[74]_i_1_n_0\
    );
\data_reg[74]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[79]_i_4_n_0\,
      I1 => DO(26),
      I2 => \data_reg[79]_i_5_n_0\,
      I3 => DO(18),
      I4 => DO(10),
      I5 => \data_reg[71]_i_3_n_0\,
      O => \data_reg[74]_i_2_n_0\
    );
\data_reg[75]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => DO(3),
      I1 => \data_reg[79]_i_2_n_0\,
      I2 => \data_reg[75]_i_2_n_0\,
      O => \data_reg[75]_i_1_n_0\
    );
\data_reg[75]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[79]_i_4_n_0\,
      I1 => DO(27),
      I2 => \data_reg[79]_i_5_n_0\,
      I3 => DO(19),
      I4 => DO(11),
      I5 => \data_reg[71]_i_3_n_0\,
      O => \data_reg[75]_i_2_n_0\
    );
\data_reg[76]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => DO(4),
      I1 => \data_reg[79]_i_2_n_0\,
      I2 => \data_reg[76]_i_2_n_0\,
      O => \data_reg[76]_i_1_n_0\
    );
\data_reg[76]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[79]_i_4_n_0\,
      I1 => DO(28),
      I2 => \data_reg[79]_i_5_n_0\,
      I3 => DO(20),
      I4 => DO(12),
      I5 => \data_reg[71]_i_3_n_0\,
      O => \data_reg[76]_i_2_n_0\
    );
\data_reg[77]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => DO(5),
      I1 => \data_reg[79]_i_2_n_0\,
      I2 => \data_reg[77]_i_2_n_0\,
      O => \data_reg[77]_i_1_n_0\
    );
\data_reg[77]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[79]_i_4_n_0\,
      I1 => DO(29),
      I2 => \data_reg[79]_i_5_n_0\,
      I3 => DO(21),
      I4 => DO(13),
      I5 => \data_reg[71]_i_3_n_0\,
      O => \data_reg[77]_i_2_n_0\
    );
\data_reg[78]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => DO(6),
      I1 => \data_reg[79]_i_2_n_0\,
      I2 => \data_reg[78]_i_2_n_0\,
      O => \data_reg[78]_i_1_n_0\
    );
\data_reg[78]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[79]_i_4_n_0\,
      I1 => DO(30),
      I2 => \data_reg[79]_i_5_n_0\,
      I3 => DO(22),
      I4 => DO(14),
      I5 => \data_reg[71]_i_3_n_0\,
      O => \data_reg[78]_i_2_n_0\
    );
\data_reg[79]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => DO(7),
      I1 => \data_reg[79]_i_2_n_0\,
      I2 => \data_reg[79]_i_3_n_0\,
      O => \data_reg[79]_i_1_n_0\
    );
\data_reg[79]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010101000000000"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[2]\,
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt_reg[1]_0\,
      I4 => \cnt_reg[0]_1\,
      I5 => \cnt_reg_n_0_[0]\,
      O => \data_reg[79]_i_2_n_0\
    );
\data_reg[79]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[79]_i_4_n_0\,
      I1 => DO(31),
      I2 => \data_reg[79]_i_5_n_0\,
      I3 => DO(23),
      I4 => DO(15),
      I5 => \data_reg[71]_i_3_n_0\,
      O => \data_reg[79]_i_3_n_0\
    );
\data_reg[79]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004440000"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg[0]_1\,
      I3 => \cnt_reg[1]_0\,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \cnt_reg_n_0_[3]\,
      O => \data_reg[79]_i_4_n_0\
    );
\data_reg[79]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0070000000000000"
    )
        port map (
      I0 => \cnt_reg[0]_1\,
      I1 => \cnt_reg[1]_0\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg_n_0_[1]\,
      I5 => \cnt_reg_n_0_[0]\,
      O => \data_reg[79]_i_5_n_0\
    );
\data_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAFFAE0000000C"
    )
        port map (
      I0 => \^out_valid_i_reg\,
      I1 => pause_reg,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt[3]_i_5_n_0\,
      I5 => \cnt_reg[0]_2\,
      O => \data_reg[7]_i_1_n_0\
    );
\data_reg[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[7]_i_3_n_0\,
      I1 => DO(7),
      I2 => \data_reg[15]_i_4_n_0\,
      I3 => vu40_data(7),
      I4 => \data_reg[7]_i_4_n_0\,
      I5 => \data_reg[7]_i_5_n_0\,
      O => \data_reg[7]_i_2_n_0\
    );
\data_reg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2008280800000000"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => data_reg(47),
      O => \data_reg[7]_i_3_n_0\
    );
\data_reg[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00050005555457FC"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \^out_valid_i_reg\,
      I5 => \cnt_reg_n_0_[3]\,
      O => \data_reg[7]_i_4_n_0\
    );
\data_reg[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[7]_i_6_n_0\,
      I1 => DO(31),
      I2 => \data_reg[15]_i_7_n_0\,
      I3 => DO(23),
      I4 => DO(15),
      I5 => \data_reg[23]_i_6_n_0\,
      O => \data_reg[7]_i_5_n_0\
    );
\data_reg[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \^out_valid_i_reg\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => \cnt_reg_n_0_[1]\,
      O => \data_reg[7]_i_6_n_0\
    );
\data_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[8]_i_2_n_0\,
      I1 => DO(0),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(8),
      I4 => \data_reg[15]_i_4_n_0\,
      I5 => \data_reg[8]_i_3_n_0\,
      O => \data_reg[8]_i_1_n_0\
    );
\data_reg[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2008080800000000"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => data_reg(48),
      O => \data_reg[8]_i_2_n_0\
    );
\data_reg[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[15]_i_6_n_0\,
      I1 => vu40_data(8),
      I2 => \data_reg[15]_i_7_n_0\,
      I3 => DO(24),
      I4 => DO(16),
      I5 => \data_reg[23]_i_6_n_0\,
      O => \data_reg[8]_i_3_n_0\
    );
\data_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => \data_reg[9]_i_2_n_0\,
      I1 => DO(1),
      I2 => \data_reg[23]_i_4_n_0\,
      I3 => DO(9),
      I4 => \data_reg[15]_i_4_n_0\,
      I5 => \data_reg[9]_i_3_n_0\,
      O => \data_reg[9]_i_1_n_0\
    );
\data_reg[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2008080800000000"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      I5 => data_reg(49),
      O => \data_reg[9]_i_2_n_0\
    );
\data_reg[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \data_reg[15]_i_6_n_0\,
      I1 => vu40_data(9),
      I2 => \data_reg[15]_i_7_n_0\,
      I3 => DO(25),
      I4 => DO(17),
      I5 => \data_reg[23]_i_6_n_0\,
      O => \data_reg[9]_i_3_n_0\
    );
\data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[7]_i_1_n_0\,
      D => \data_reg[0]_i_1_n_0\,
      Q => vu40_data(0),
      R => '0'
    );
\data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[15]_i_1_n_0\,
      D => \data_reg[10]_i_1_n_0\,
      Q => vu40_data(10),
      R => '0'
    );
\data_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[15]_i_1_n_0\,
      D => \data_reg[11]_i_1_n_0\,
      Q => vu40_data(11),
      R => '0'
    );
\data_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[15]_i_1_n_0\,
      D => \data_reg[12]_i_1_n_0\,
      Q => vu40_data(12),
      R => '0'
    );
\data_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[15]_i_1_n_0\,
      D => \data_reg[13]_i_1_n_0\,
      Q => vu40_data(13),
      R => '0'
    );
\data_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[15]_i_1_n_0\,
      D => \data_reg[14]_i_1_n_0\,
      Q => vu40_data(14),
      R => '0'
    );
\data_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[15]_i_1_n_0\,
      D => \data_reg[15]_i_2_n_0\,
      Q => vu40_data(15),
      R => '0'
    );
\data_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[23]_i_1_n_0\,
      D => \data_reg[16]_i_1_n_0\,
      Q => vu40_data(16),
      R => '0'
    );
\data_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[23]_i_1_n_0\,
      D => \data_reg[17]_i_1_n_0\,
      Q => vu40_data(17),
      R => '0'
    );
\data_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[23]_i_1_n_0\,
      D => \data_reg[18]_i_1_n_0\,
      Q => vu40_data(18),
      R => '0'
    );
\data_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[23]_i_1_n_0\,
      D => \data_reg[19]_i_1_n_0\,
      Q => vu40_data(19),
      R => '0'
    );
\data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[7]_i_1_n_0\,
      D => \data_reg[1]_i_1_n_0\,
      Q => vu40_data(1),
      R => '0'
    );
\data_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[23]_i_1_n_0\,
      D => \data_reg[20]_i_1_n_0\,
      Q => vu40_data(20),
      R => '0'
    );
\data_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[23]_i_1_n_0\,
      D => \data_reg[21]_i_1_n_0\,
      Q => vu40_data(21),
      R => '0'
    );
\data_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[23]_i_1_n_0\,
      D => \data_reg[22]_i_1_n_0\,
      Q => vu40_data(22),
      R => '0'
    );
\data_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[23]_i_1_n_0\,
      D => \data_reg[23]_i_2_n_0\,
      Q => vu40_data(23),
      R => '0'
    );
\data_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[31]_i_1_n_0\,
      D => \data_reg[24]_i_1_n_0\,
      Q => vu40_data(24),
      R => '0'
    );
\data_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[31]_i_1_n_0\,
      D => \data_reg[25]_i_1_n_0\,
      Q => vu40_data(25),
      R => '0'
    );
\data_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[31]_i_1_n_0\,
      D => \data_reg[26]_i_1_n_0\,
      Q => vu40_data(26),
      R => '0'
    );
\data_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[31]_i_1_n_0\,
      D => \data_reg[27]_i_1_n_0\,
      Q => vu40_data(27),
      R => '0'
    );
\data_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[31]_i_1_n_0\,
      D => \data_reg[28]_i_1_n_0\,
      Q => vu40_data(28),
      R => '0'
    );
\data_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[31]_i_1_n_0\,
      D => \data_reg[29]_i_1_n_0\,
      Q => vu40_data(29),
      R => '0'
    );
\data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[7]_i_1_n_0\,
      D => \data_reg[2]_i_1_n_0\,
      Q => vu40_data(2),
      R => '0'
    );
\data_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[31]_i_1_n_0\,
      D => \data_reg[30]_i_1_n_0\,
      Q => vu40_data(30),
      R => '0'
    );
\data_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[31]_i_1_n_0\,
      D => \data_reg[31]_i_2_n_0\,
      Q => vu40_data(31),
      R => '0'
    );
\data_reg_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[39]_i_1_n_0\,
      D => \data_reg[32]_i_1_n_0\,
      Q => vu40_data(32),
      R => '0'
    );
\data_reg_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[39]_i_1_n_0\,
      D => \data_reg[33]_i_1_n_0\,
      Q => vu40_data(33),
      R => '0'
    );
\data_reg_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[39]_i_1_n_0\,
      D => \data_reg[34]_i_1_n_0\,
      Q => vu40_data(34),
      R => '0'
    );
\data_reg_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[39]_i_1_n_0\,
      D => \data_reg[35]_i_1_n_0\,
      Q => vu40_data(35),
      R => '0'
    );
\data_reg_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[39]_i_1_n_0\,
      D => \data_reg[36]_i_1_n_0\,
      Q => vu40_data(36),
      R => '0'
    );
\data_reg_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[39]_i_1_n_0\,
      D => \data_reg[37]_i_1_n_0\,
      Q => vu40_data(37),
      R => '0'
    );
\data_reg_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[39]_i_1_n_0\,
      D => \data_reg[38]_i_1_n_0\,
      Q => vu40_data(38),
      R => '0'
    );
\data_reg_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[39]_i_1_n_0\,
      D => \data_reg[39]_i_2_n_0\,
      Q => vu40_data(39),
      R => '0'
    );
\data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[7]_i_1_n_0\,
      D => \data_reg[3]_i_1_n_0\,
      Q => vu40_data(3),
      R => '0'
    );
\data_reg_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[47]_i_1_n_0\,
      D => \data_reg[40]_i_1_n_0\,
      Q => data_reg(40),
      R => '0'
    );
\data_reg_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[47]_i_1_n_0\,
      D => \data_reg[41]_i_1_n_0\,
      Q => data_reg(41),
      R => '0'
    );
\data_reg_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[47]_i_1_n_0\,
      D => \data_reg[42]_i_1_n_0\,
      Q => data_reg(42),
      R => '0'
    );
\data_reg_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[47]_i_1_n_0\,
      D => \data_reg[43]_i_1_n_0\,
      Q => data_reg(43),
      R => '0'
    );
\data_reg_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[47]_i_1_n_0\,
      D => \data_reg[44]_i_1_n_0\,
      Q => data_reg(44),
      R => '0'
    );
\data_reg_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[47]_i_1_n_0\,
      D => \data_reg[45]_i_1_n_0\,
      Q => data_reg(45),
      R => '0'
    );
\data_reg_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[47]_i_1_n_0\,
      D => \data_reg[46]_i_1_n_0\,
      Q => data_reg(46),
      R => '0'
    );
\data_reg_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[47]_i_1_n_0\,
      D => \data_reg[47]_i_2_n_0\,
      Q => data_reg(47),
      R => '0'
    );
\data_reg_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[48]_i_1_n_0\,
      Q => data_reg(48),
      R => '0'
    );
\data_reg_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[49]_i_1_n_0\,
      Q => data_reg(49),
      R => '0'
    );
\data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[7]_i_1_n_0\,
      D => \data_reg[4]_i_1_n_0\,
      Q => vu40_data(4),
      R => '0'
    );
\data_reg_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[50]_i_1_n_0\,
      Q => data_reg(50),
      R => '0'
    );
\data_reg_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[51]_i_1_n_0\,
      Q => data_reg(51),
      R => '0'
    );
\data_reg_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[52]_i_1_n_0\,
      Q => data_reg(52),
      R => '0'
    );
\data_reg_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[53]_i_1_n_0\,
      Q => data_reg(53),
      R => '0'
    );
\data_reg_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[54]_i_1_n_0\,
      Q => data_reg(54),
      R => '0'
    );
\data_reg_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[55]_i_1_n_0\,
      Q => data_reg(55),
      R => '0'
    );
\data_reg_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[56]_i_1_n_0\,
      Q => data_reg(56),
      R => '0'
    );
\data_reg_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[57]_i_1_n_0\,
      Q => data_reg(57),
      R => '0'
    );
\data_reg_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[58]_i_1_n_0\,
      Q => data_reg(58),
      R => '0'
    );
\data_reg_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[59]_i_1_n_0\,
      Q => data_reg(59),
      R => '0'
    );
\data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[7]_i_1_n_0\,
      D => \data_reg[5]_i_1_n_0\,
      Q => vu40_data(5),
      R => '0'
    );
\data_reg_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[60]_i_1_n_0\,
      Q => data_reg(60),
      R => '0'
    );
\data_reg_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[61]_i_1_n_0\,
      Q => data_reg(61),
      R => '0'
    );
\data_reg_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[62]_i_1_n_0\,
      Q => data_reg(62),
      R => '0'
    );
\data_reg_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[63]_i_1_n_0\,
      Q => data_reg(63),
      R => '0'
    );
\data_reg_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[64]_i_1_n_0\,
      Q => data_reg(64),
      R => '0'
    );
\data_reg_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[65]_i_1_n_0\,
      Q => data_reg(65),
      R => '0'
    );
\data_reg_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[66]_i_1_n_0\,
      Q => data_reg(66),
      R => '0'
    );
\data_reg_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[67]_i_1_n_0\,
      Q => data_reg(67),
      R => '0'
    );
\data_reg_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[68]_i_1_n_0\,
      Q => data_reg(68),
      R => '0'
    );
\data_reg_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[69]_i_1_n_0\,
      Q => data_reg(69),
      R => '0'
    );
\data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[7]_i_1_n_0\,
      D => \data_reg[6]_i_1_n_0\,
      Q => vu40_data(6),
      R => '0'
    );
\data_reg_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[70]_i_1_n_0\,
      Q => data_reg(70),
      R => '0'
    );
\data_reg_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[71]_i_1_n_0\,
      Q => data_reg(71),
      R => '0'
    );
\data_reg_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[72]_i_1_n_0\,
      Q => data_reg(72),
      R => '0'
    );
\data_reg_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[73]_i_1_n_0\,
      Q => data_reg(73),
      R => '0'
    );
\data_reg_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[74]_i_1_n_0\,
      Q => data_reg(74),
      R => '0'
    );
\data_reg_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[75]_i_1_n_0\,
      Q => data_reg(75),
      R => '0'
    );
\data_reg_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[76]_i_1_n_0\,
      Q => data_reg(76),
      R => '0'
    );
\data_reg_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[77]_i_1_n_0\,
      Q => data_reg(77),
      R => '0'
    );
\data_reg_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[78]_i_1_n_0\,
      Q => data_reg(78),
      R => '0'
    );
\data_reg_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \cnt[3]_i_2_n_0\,
      D => \data_reg[79]_i_1_n_0\,
      Q => data_reg(79),
      R => '0'
    );
\data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[7]_i_1_n_0\,
      D => \data_reg[7]_i_2_n_0\,
      Q => vu40_data(7),
      R => '0'
    );
\data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[15]_i_1_n_0\,
      D => \data_reg[8]_i_1_n_0\,
      Q => vu40_data(8),
      R => '0'
    );
\data_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data_reg[15]_i_1_n_0\,
      D => \data_reg[9]_i_1_n_0\,
      Q => vu40_data(9),
      R => '0'
    );
has_last_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005040F000"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg[0]_2\,
      I3 => \^out_valid_i_reg\,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \cnt_reg_n_0_[3]\,
      O => has_last_reg_1
    );
has_last_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001F00"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt_reg[0]_2\,
      I4 => has_last_reg_2,
      I5 => \^out_sof_reg_0\,
      O => has_last_reg_0
    );
has_last_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[16]\,
      Q => \^out_valid_i_reg\,
      R => Q(0)
    );
\out_data[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => vu40_data(34),
      I1 => vu40_data(32),
      I2 => vu40_data(38),
      I3 => \cnt_reg[1]_0\,
      I4 => \cnt_reg[0]_1\,
      I5 => vu40_data(36),
      O => \out_data_reg[0]\
    );
\out_data[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => vu40_data(35),
      I1 => vu40_data(33),
      I2 => vu40_data(39),
      I3 => \cnt_reg[1]_0\,
      I4 => \cnt_reg[0]_1\,
      I5 => vu40_data(37),
      O => \out_data_reg[1]\
    );
\out_data[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => vu40_data(8),
      I1 => vu40_data(0),
      I2 => vu40_data(24),
      I3 => \cnt_reg[1]_0\,
      I4 => \cnt_reg[0]_1\,
      I5 => vu40_data(16),
      O => \out_data_reg[2]\
    );
\out_data[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => vu40_data(9),
      I1 => vu40_data(1),
      I2 => vu40_data(25),
      I3 => \cnt_reg[1]_0\,
      I4 => \cnt_reg[0]_1\,
      I5 => vu40_data(17),
      O => \out_data_reg[3]\
    );
\out_data[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => vu40_data(10),
      I1 => vu40_data(2),
      I2 => vu40_data(26),
      I3 => \cnt_reg[1]_0\,
      I4 => \cnt_reg[0]_1\,
      I5 => vu40_data(18),
      O => \out_data_reg[4]\
    );
\out_data[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => vu40_data(11),
      I1 => vu40_data(3),
      I2 => vu40_data(27),
      I3 => \cnt_reg[1]_0\,
      I4 => \cnt_reg[0]_1\,
      I5 => vu40_data(19),
      O => \out_data_reg[5]\
    );
\out_data[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => vu40_data(12),
      I1 => vu40_data(4),
      I2 => vu40_data(28),
      I3 => \cnt_reg[1]_0\,
      I4 => \cnt_reg[0]_1\,
      I5 => vu40_data(20),
      O => \out_data_reg[6]\
    );
\out_data[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => vu40_data(13),
      I1 => vu40_data(5),
      I2 => vu40_data(29),
      I3 => \cnt_reg[1]_0\,
      I4 => \cnt_reg[0]_1\,
      I5 => vu40_data(21),
      O => \out_data_reg[7]\
    );
\out_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => vu40_data(14),
      I1 => vu40_data(6),
      I2 => vu40_data(30),
      I3 => \cnt_reg[1]_0\,
      I4 => \cnt_reg[0]_1\,
      I5 => vu40_data(22),
      O => \out_data_reg[8]\
    );
\out_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => vu40_data(15),
      I1 => vu40_data(7),
      I2 => vu40_data(31),
      I3 => \cnt_reg[1]_0\,
      I4 => \cnt_reg[0]_1\,
      I5 => vu40_data(23),
      O => \out_data_reg[9]\
    );
out_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020A000000000000"
    )
        port map (
      I0 => \^out_valid_i_reg\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[3]\,
      I3 => \cnt_reg_n_0_[2]\,
      I4 => \cnt_reg[1]_0\,
      I5 => \cnt_reg[0]_1\,
      O => \^out_last0\
    );
out_sof_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      I1 => \^out_valid_i_reg\,
      I2 => \cnt_reg[0]_1\,
      I3 => \cnt_reg[1]_0\,
      O => out_sof_reg_2
    );
out_sof_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808000"
    )
        port map (
      I0 => \cnt_reg[0]_1\,
      I1 => \cnt_reg[1]_0\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[0]\,
      O => out_sof_reg_1
    );
out_sof_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004440000444C"
    )
        port map (
      I0 => \^out_valid_i_reg\,
      I1 => pause_reg,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[3]\,
      I5 => \cnt_reg_n_0_[2]\,
      O => \^out_sof_reg_0\
    );
out_sof_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vid_sof_reg,
      Q => vu40_sof,
      R => Q(0)
    );
out_valid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEEE"
    )
        port map (
      I0 => \^out_valid_i_reg\,
      I1 => \cnt_reg_n_0_[3]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \cnt_reg_n_0_[0]\,
      I4 => \cnt_reg_n_0_[1]\,
      O => vu40_valid
    );
pause_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000023330022333F"
    )
        port map (
      I0 => \cnt_reg[0]_2\,
      I1 => \^out_valid_i_reg\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      I4 => \cnt_reg_n_0_[3]\,
      I5 => \cnt_reg_n_0_[2]\,
      O => vin_ready_10b
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_vid_32b_to_8b is
  port (
    out_valid : out STD_LOGIC;
    out_last : out STD_LOGIC;
    out_sof : out STD_LOGIC;
    \cnt_reg[16]\ : out STD_LOGIC;
    \cnt_reg[1]_0\ : out STD_LOGIC;
    \cnt_reg[1]_1\ : out STD_LOGIC;
    \vum_data_reg[1]\ : out STD_LOGIC;
    \vum_data_reg[0]\ : out STD_LOGIC;
    \vum_data_reg[7]\ : out STD_LOGIC;
    \vum_data_reg[6]\ : out STD_LOGIC;
    \vum_data_reg[5]\ : out STD_LOGIC;
    \vum_data_reg[4]\ : out STD_LOGIC;
    \vum_data_reg[3]\ : out STD_LOGIC;
    \vum_data_reg[2]\ : out STD_LOGIC;
    pause_reg : in STD_LOGIC;
    clk : in STD_LOGIC;
    \cnt_reg[16]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    DOP : in STD_LOGIC_VECTOR ( 0 to 0 );
    vin_sof : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    mux : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_vid_32b_to_8b : entity is "vid_32b_to_8b";
end TySOM_1_7Z030_mipi_csi_0_vid_32b_to_8b;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_vid_32b_to_8b is
  signal \cnt[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \^cnt_reg[1]_0\ : STD_LOGIC;
  signal \^cnt_reg[1]_1\ : STD_LOGIC;
  signal out_last0 : STD_LOGIC;
  signal out_sof0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bl.fifo_36_inst_bl.fifo_36_bl_i_8\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \cnt[0]_i_1__2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \cnt[1]_i_1__3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \out_last_i_1__0\ : label is "soft_lutpair33";
begin
  \cnt_reg[1]_0\ <= \^cnt_reg[1]_0\;
  \cnt_reg[1]_1\ <= \^cnt_reg[1]_1\;
\bl.fifo_36_inst_bl.fifo_36_bl_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^cnt_reg[1]_0\,
      I1 => \^cnt_reg[1]_1\,
      O => \cnt_reg[16]\
    );
\cnt[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cnt_reg[1]_0\,
      O => \cnt[0]_i_1__2_n_0\
    );
\cnt[1]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^cnt_reg[1]_0\,
      I1 => \^cnt_reg[1]_1\,
      O => \cnt[1]_i_1__3_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt[0]_i_1__2_n_0\,
      Q => \^cnt_reg[1]_0\,
      R => Q(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt[1]_i_1__3_n_0\,
      Q => \^cnt_reg[1]_1\,
      R => Q(0)
    );
\out_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mux(0),
      Q => \vum_data_reg[2]\,
      R => '0'
    );
\out_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mux(1),
      Q => \vum_data_reg[3]\,
      R => '0'
    );
\out_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mux(2),
      Q => \vum_data_reg[4]\,
      R => '0'
    );
\out_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mux(3),
      Q => \vum_data_reg[5]\,
      R => '0'
    );
\out_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mux(4),
      Q => \vum_data_reg[6]\,
      R => '0'
    );
\out_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mux(5),
      Q => \vum_data_reg[7]\,
      R => '0'
    );
\out_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mux(6),
      Q => \vum_data_reg[0]\,
      R => '0'
    );
\out_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => mux(7),
      Q => \vum_data_reg[1]\,
      R => '0'
    );
\out_last_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => \^cnt_reg[1]_1\,
      I1 => \^cnt_reg[1]_0\,
      I2 => \cnt_reg[16]_0\(0),
      I3 => DOP(0),
      O => out_last0
    );
out_last_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_last0,
      Q => out_last,
      R => '0'
    );
\out_sof_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => vin_sof,
      I1 => \^cnt_reg[1]_0\,
      I2 => \^cnt_reg[1]_1\,
      O => out_sof0
    );
out_sof_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_sof0,
      Q => out_sof,
      R => '0'
    );
out_valid_i_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pause_reg,
      Q => out_valid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_vid_40b_to_10b is
  port (
    \data_reg_reg[7]\ : out STD_LOGIC;
    \cnt_reg[0]_0\ : out STD_LOGIC;
    \cnt_reg[1]_0\ : out STD_LOGIC;
    \cnt_reg[0]_1\ : out STD_LOGIC;
    vum_last_reg : out STD_LOGIC;
    vum_sof_reg : out STD_LOGIC;
    vum_valid_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    vu40_valid : in STD_LOGIC;
    clk : in STD_LOGIC;
    out_last0 : in STD_LOGIC;
    has_last : in STD_LOGIC;
    \reg_reg[23]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_last : in STD_LOGIC;
    out_sof : in STD_LOGIC;
    out_valid : in STD_LOGIC;
    vu40_sof : in STD_LOGIC;
    \out_data_reg[6]_0\ : in STD_LOGIC;
    \out_data_reg[7]_0\ : in STD_LOGIC;
    \out_data_reg[0]_0\ : in STD_LOGIC;
    \out_data_reg[1]_0\ : in STD_LOGIC;
    \out_data_reg[2]_0\ : in STD_LOGIC;
    \out_data_reg[3]_0\ : in STD_LOGIC;
    \out_data_reg[4]_0\ : in STD_LOGIC;
    \out_data_reg[5]_0\ : in STD_LOGIC;
    \rst_cnt_reg[3]\ : in STD_LOGIC;
    \data_reg_reg[15]\ : in STD_LOGIC;
    \data_reg_reg[14]\ : in STD_LOGIC;
    \data_reg_reg[13]\ : in STD_LOGIC;
    \data_reg_reg[12]\ : in STD_LOGIC;
    \data_reg_reg[11]\ : in STD_LOGIC;
    \data_reg_reg[10]\ : in STD_LOGIC;
    \data_reg_reg[9]\ : in STD_LOGIC;
    \data_reg_reg[8]\ : in STD_LOGIC;
    \data_reg_reg[35]\ : in STD_LOGIC;
    \data_reg_reg[34]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_vid_40b_to_10b : entity is "vid_40b_to_10b";
end TySOM_1_7Z030_mipi_csi_0_vid_40b_to_10b;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_vid_40b_to_10b is
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \^cnt_reg[0]_0\ : STD_LOGIC;
  signal \^cnt_reg[1]_0\ : STD_LOGIC;
  signal \out_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \out_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \out_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \out_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \out_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \out_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \out_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \out_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \out_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \out_data_reg_n_0_[9]\ : STD_LOGIC;
  signal out_sof0 : STD_LOGIC;
  signal vu10_last : STD_LOGIC;
  signal vu10_sof : STD_LOGIC;
  signal vu10_valid : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \cnt[3]_i_4\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \cnt[3]_i_8\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \out_sof_i_1__0__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \vum_data[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \vum_data[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \vum_data[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \vum_data[3]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \vum_data[4]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \vum_data[5]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \vum_data[6]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \vum_data[8]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \vum_data[9]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of vum_last_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of vum_sof_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of vum_valid_i_1 : label is "soft_lutpair37";
begin
  \cnt_reg[0]_0\ <= \^cnt_reg[0]_0\;
  \cnt_reg[1]_0\ <= \^cnt_reg[1]_0\;
\cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cnt_reg[0]_0\,
      I1 => \rst_cnt_reg[3]\,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^cnt_reg[1]_0\,
      I1 => \^cnt_reg[0]_0\,
      I2 => \rst_cnt_reg[3]\,
      O => \cnt[1]_i_1_n_0\
    );
\cnt[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^cnt_reg[1]_0\,
      I1 => \^cnt_reg[0]_0\,
      I2 => has_last,
      O => \cnt_reg[0]_1\
    );
\cnt[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^cnt_reg[0]_0\,
      I1 => \^cnt_reg[1]_0\,
      O => \data_reg_reg[7]\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => \^cnt_reg[0]_0\,
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt[1]_i_1_n_0\,
      Q => \^cnt_reg[1]_0\,
      R => '0'
    );
\out_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_reg_reg[34]\,
      Q => \out_data_reg_n_0_[0]\,
      R => '0'
    );
\out_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_reg_reg[35]\,
      Q => \out_data_reg_n_0_[1]\,
      R => '0'
    );
\out_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_reg_reg[8]\,
      Q => \out_data_reg_n_0_[2]\,
      R => '0'
    );
\out_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_reg_reg[9]\,
      Q => \out_data_reg_n_0_[3]\,
      R => '0'
    );
\out_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_reg_reg[10]\,
      Q => \out_data_reg_n_0_[4]\,
      R => '0'
    );
\out_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_reg_reg[11]\,
      Q => \out_data_reg_n_0_[5]\,
      R => '0'
    );
\out_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_reg_reg[12]\,
      Q => \out_data_reg_n_0_[6]\,
      R => '0'
    );
\out_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_reg_reg[13]\,
      Q => \out_data_reg_n_0_[7]\,
      R => '0'
    );
\out_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_reg_reg[14]\,
      Q => \out_data_reg_n_0_[8]\,
      R => '0'
    );
\out_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_reg_reg[15]\,
      Q => \out_data_reg_n_0_[9]\,
      R => '0'
    );
out_last_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_last0,
      Q => vu10_last,
      R => '0'
    );
\out_sof_i_1__0__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => vu40_sof,
      I1 => \^cnt_reg[0]_0\,
      I2 => \^cnt_reg[1]_0\,
      O => out_sof0
    );
out_sof_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_sof0,
      Q => vu10_sof,
      R => '0'
    );
out_valid_i_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vu40_valid,
      Q => vu10_valid,
      R => Q(0)
    );
\vum_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out_data_reg_n_0_[0]\,
      I1 => \reg_reg[23]\(0),
      I2 => \out_data_reg[6]_0\,
      O => D(0)
    );
\vum_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out_data_reg_n_0_[1]\,
      I1 => \reg_reg[23]\(0),
      I2 => \out_data_reg[7]_0\,
      O => D(1)
    );
\vum_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out_data_reg_n_0_[2]\,
      I1 => \reg_reg[23]\(0),
      I2 => \out_data_reg[0]_0\,
      O => D(2)
    );
\vum_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out_data_reg_n_0_[3]\,
      I1 => \reg_reg[23]\(0),
      I2 => \out_data_reg[1]_0\,
      O => D(3)
    );
\vum_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out_data_reg_n_0_[4]\,
      I1 => \reg_reg[23]\(0),
      I2 => \out_data_reg[2]_0\,
      O => D(4)
    );
\vum_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out_data_reg_n_0_[5]\,
      I1 => \reg_reg[23]\(0),
      I2 => \out_data_reg[3]_0\,
      O => D(5)
    );
\vum_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out_data_reg_n_0_[6]\,
      I1 => \reg_reg[23]\(0),
      I2 => \out_data_reg[4]_0\,
      O => D(6)
    );
\vum_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out_data_reg_n_0_[7]\,
      I1 => \reg_reg[23]\(0),
      I2 => \out_data_reg[5]_0\,
      O => D(7)
    );
\vum_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out_data_reg_n_0_[8]\,
      I1 => \reg_reg[23]\(0),
      I2 => \out_data_reg[6]_0\,
      O => D(8)
    );
\vum_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \out_data_reg_n_0_[9]\,
      I1 => \reg_reg[23]\(0),
      I2 => \out_data_reg[7]_0\,
      O => D(9)
    );
vum_last_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vu10_last,
      I1 => \reg_reg[23]\(0),
      I2 => out_last,
      O => vum_last_reg
    );
vum_sof_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vu10_sof,
      I1 => \reg_reg[23]\(0),
      I2 => out_sof,
      O => vum_sof_reg
    );
vum_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => vu10_valid,
      I1 => \reg_reg[23]\(0),
      I2 => out_valid,
      O => vum_valid_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_vid_packer is
  port (
    vout_valid : out STD_LOGIC;
    DIP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_3_in : out STD_LOGIC;
    \cnt_reg[1]_0\ : out STD_LOGIC;
    \pix_fifo_cnt_reg[0]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_valid_i0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    vcrop_valid : in STD_LOGIC;
    \reg_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    vcrop_last : in STD_LOGIC;
    vcrop_sof : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rst_cnt_reg[3]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_vid_packer : entity is "vid_packer";
end TySOM_1_7Z030_mipi_csi_0_vid_packer;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_vid_packer is
  signal \^dip\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \^cnt_reg[1]_0\ : STD_LOGIC;
  signal \data[23]_i_1_n_0\ : STD_LOGIC;
  signal \data[7]_i_1_n_0\ : STD_LOGIC;
  signal \out_last_i_1__1_n_0\ : STD_LOGIC;
  signal \out_sof_i_1__1_n_0\ : STD_LOGIC;
  signal \^p_3_in\ : STD_LOGIC;
  signal \^vout_valid\ : STD_LOGIC;
begin
  DIP(1 downto 0) <= \^dip\(1 downto 0);
  \cnt_reg[1]_0\ <= \^cnt_reg[1]_0\;
  p_3_in <= \^p_3_in\;
  vout_valid <= \^vout_valid\;
\cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022226A22"
    )
        port map (
      I0 => \^cnt_reg[1]_0\,
      I1 => vcrop_valid,
      I2 => \reg_reg[1]\(0),
      I3 => \reg_reg[1]\(1),
      I4 => vcrop_last,
      I5 => Q(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006666A666"
    )
        port map (
      I0 => \^p_3_in\,
      I1 => vcrop_valid,
      I2 => \reg_reg[1]\(1),
      I3 => \reg_reg[1]\(0),
      I4 => \^cnt_reg[1]_0\,
      I5 => \rst_cnt_reg[3]\,
      O => \cnt[1]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => \^cnt_reg[1]_0\,
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt[1]_i_1_n_0\,
      Q => \^p_3_in\,
      R => '0'
    );
\data[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
        port map (
      I0 => vcrop_valid,
      I1 => \reg_reg[1]\(0),
      I2 => \reg_reg[1]\(1),
      I3 => \^p_3_in\,
      I4 => \^cnt_reg[1]_0\,
      O => \data[23]_i_1_n_0\
    );
\data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222A22AA"
    )
        port map (
      I0 => vcrop_valid,
      I1 => \reg_reg[1]\(1),
      I2 => \reg_reg[1]\(0),
      I3 => \^p_3_in\,
      I4 => \^cnt_reg[1]_0\,
      O => \data[7]_i_1_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      D => D(0),
      Q => \pix_fifo_cnt_reg[0]\(0),
      R => '0'
    );
\data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(10),
      Q => \pix_fifo_cnt_reg[0]\(10),
      R => '0'
    );
\data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(11),
      Q => \pix_fifo_cnt_reg[0]\(11),
      R => '0'
    );
\data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(12),
      Q => \pix_fifo_cnt_reg[0]\(12),
      R => '0'
    );
\data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(13),
      Q => \pix_fifo_cnt_reg[0]\(13),
      R => '0'
    );
\data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(14),
      Q => \pix_fifo_cnt_reg[0]\(14),
      R => '0'
    );
\data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(15),
      Q => \pix_fifo_cnt_reg[0]\(15),
      R => '0'
    );
\data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[23]_i_1_n_0\,
      D => D(16),
      Q => \pix_fifo_cnt_reg[0]\(16),
      R => '0'
    );
\data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[23]_i_1_n_0\,
      D => D(17),
      Q => \pix_fifo_cnt_reg[0]\(17),
      R => '0'
    );
\data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[23]_i_1_n_0\,
      D => D(18),
      Q => \pix_fifo_cnt_reg[0]\(18),
      R => '0'
    );
\data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[23]_i_1_n_0\,
      D => D(19),
      Q => \pix_fifo_cnt_reg[0]\(19),
      R => '0'
    );
\data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      D => D(1),
      Q => \pix_fifo_cnt_reg[0]\(1),
      R => '0'
    );
\data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[23]_i_1_n_0\,
      D => D(20),
      Q => \pix_fifo_cnt_reg[0]\(20),
      R => '0'
    );
\data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[23]_i_1_n_0\,
      D => D(21),
      Q => \pix_fifo_cnt_reg[0]\(21),
      R => '0'
    );
\data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[23]_i_1_n_0\,
      D => D(22),
      Q => \pix_fifo_cnt_reg[0]\(22),
      R => '0'
    );
\data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[23]_i_1_n_0\,
      D => D(23),
      Q => \pix_fifo_cnt_reg[0]\(23),
      R => '0'
    );
\data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => vcrop_valid,
      D => D(24),
      Q => \pix_fifo_cnt_reg[0]\(24),
      R => '0'
    );
\data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => vcrop_valid,
      D => D(25),
      Q => \pix_fifo_cnt_reg[0]\(25),
      R => '0'
    );
\data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => vcrop_valid,
      D => D(26),
      Q => \pix_fifo_cnt_reg[0]\(26),
      R => '0'
    );
\data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => vcrop_valid,
      D => D(27),
      Q => \pix_fifo_cnt_reg[0]\(27),
      R => '0'
    );
\data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => vcrop_valid,
      D => D(28),
      Q => \pix_fifo_cnt_reg[0]\(28),
      R => '0'
    );
\data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => vcrop_valid,
      D => D(29),
      Q => \pix_fifo_cnt_reg[0]\(29),
      R => '0'
    );
\data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      D => D(2),
      Q => \pix_fifo_cnt_reg[0]\(2),
      R => '0'
    );
\data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => vcrop_valid,
      D => D(30),
      Q => \pix_fifo_cnt_reg[0]\(30),
      R => '0'
    );
\data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => vcrop_valid,
      D => D(31),
      Q => \pix_fifo_cnt_reg[0]\(31),
      R => '0'
    );
\data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      D => D(3),
      Q => \pix_fifo_cnt_reg[0]\(3),
      R => '0'
    );
\data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      D => D(4),
      Q => \pix_fifo_cnt_reg[0]\(4),
      R => '0'
    );
\data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      D => D(5),
      Q => \pix_fifo_cnt_reg[0]\(5),
      R => '0'
    );
\data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      D => D(6),
      Q => \pix_fifo_cnt_reg[0]\(6),
      R => '0'
    );
\data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \data[7]_i_1_n_0\,
      D => D(7),
      Q => \pix_fifo_cnt_reg[0]\(7),
      R => '0'
    );
\data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(8),
      Q => \pix_fifo_cnt_reg[0]\(8),
      R => '0'
    );
\data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(9),
      Q => \pix_fifo_cnt_reg[0]\(9),
      R => '0'
    );
\out_last_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^vout_valid\,
      I1 => \^dip\(0),
      I2 => vcrop_last,
      I3 => vcrop_valid,
      O => \out_last_i_1__1_n_0\
    );
out_last_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \out_last_i_1__1_n_0\,
      Q => \^dip\(0),
      R => '0'
    );
\out_sof_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^vout_valid\,
      I1 => \^dip\(1),
      I2 => vcrop_sof,
      I3 => vcrop_valid,
      O => \out_sof_i_1__1_n_0\
    );
out_sof_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \out_sof_i_1__1_n_0\,
      Q => \^dip\(1),
      R => '0'
    );
out_valid_i_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => out_valid_i0,
      Q => \^vout_valid\,
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_xclk_sync is
  port (
    \out\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    out_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_xclk_sync : entity is "xclk_sync";
end TySOM_1_7Z030_mipi_csi_0_xclk_sync;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_xclk_sync is
  signal reg_in : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of reg_in : signal is std.standard.true;
  signal reg_out1 : STD_LOGIC;
  attribute DONT_TOUCH of reg_out1 : signal is std.standard.true;
  signal reg_out2 : STD_LOGIC;
  attribute DONT_TOUCH of reg_out2 : signal is std.standard.true;
  attribute DONT_TOUCH of reg_in_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of reg_in_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of reg_in_reg : label is "no";
  attribute DONT_TOUCH of reg_out1_reg : label is std.standard.true;
  attribute KEEP of reg_out1_reg : label is "yes";
  attribute equivalent_register_removal of reg_out1_reg : label is "no";
  attribute DONT_TOUCH of reg_out2_reg : label is std.standard.true;
  attribute KEEP of reg_out2_reg : label is "yes";
  attribute equivalent_register_removal of reg_out2_reg : label is "no";
begin
  \out\ <= reg_out2;
reg_in_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(0),
      Q => reg_in,
      R => '0'
    );
reg_out1_reg: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => reg_in,
      Q => reg_out1,
      R => '0'
    );
reg_out2_reg: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => reg_out1,
      Q => reg_out2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_xclk_sync_0 is
  port (
    \out\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    out_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_xclk_sync_0 : entity is "xclk_sync";
end TySOM_1_7Z030_mipi_csi_0_xclk_sync_0;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_xclk_sync_0 is
  signal reg_in : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of reg_in : signal is std.standard.true;
  signal reg_out1 : STD_LOGIC;
  attribute DONT_TOUCH of reg_out1 : signal is std.standard.true;
  signal reg_out2 : STD_LOGIC;
  attribute DONT_TOUCH of reg_out2 : signal is std.standard.true;
  attribute DONT_TOUCH of reg_in_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of reg_in_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of reg_in_reg : label is "no";
  attribute DONT_TOUCH of reg_out1_reg : label is std.standard.true;
  attribute KEEP of reg_out1_reg : label is "yes";
  attribute equivalent_register_removal of reg_out1_reg : label is "no";
  attribute DONT_TOUCH of reg_out2_reg : label is std.standard.true;
  attribute KEEP of reg_out2_reg : label is "yes";
  attribute equivalent_register_removal of reg_out2_reg : label is "no";
begin
  \out\ <= reg_out2;
reg_in_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(0),
      Q => reg_in,
      R => '0'
    );
reg_out1_reg: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => reg_in,
      Q => reg_out1,
      R => '0'
    );
reg_out2_reg: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => reg_out1,
      Q => reg_out2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_xclk_sync_4 is
  port (
    \out\ : out STD_LOGIC;
    stat_running : in STD_LOGIC;
    out_clk : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_xclk_sync_4 : entity is "xclk_sync";
end TySOM_1_7Z030_mipi_csi_0_xclk_sync_4;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_xclk_sync_4 is
  signal reg_in : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of reg_in : signal is std.standard.true;
  signal reg_out1 : STD_LOGIC;
  attribute DONT_TOUCH of reg_out1 : signal is std.standard.true;
  signal reg_out2 : STD_LOGIC;
  attribute DONT_TOUCH of reg_out2 : signal is std.standard.true;
  attribute DONT_TOUCH of reg_in_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of reg_in_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of reg_in_reg : label is "no";
  attribute DONT_TOUCH of reg_out1_reg : label is std.standard.true;
  attribute KEEP of reg_out1_reg : label is "yes";
  attribute equivalent_register_removal of reg_out1_reg : label is "no";
  attribute DONT_TOUCH of reg_out2_reg : label is std.standard.true;
  attribute KEEP of reg_out2_reg : label is "yes";
  attribute equivalent_register_removal of reg_out2_reg : label is "no";
begin
  \out\ <= reg_out2;
reg_in_reg: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => stat_running,
      Q => reg_in,
      R => '0'
    );
reg_out1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_in,
      Q => reg_out1,
      R => '0'
    );
reg_out2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_out1,
      Q => reg_out2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_xclk_sync_5 is
  port (
    \out\ : out STD_LOGIC;
    pulse_out_reg : out STD_LOGIC;
    line_in : in STD_LOGIC;
    out_clk : in STD_LOGIC;
    clk : in STD_LOGIC;
    line_out_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_xclk_sync_5 : entity is "xclk_sync";
end TySOM_1_7Z030_mipi_csi_0_xclk_sync_5;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_xclk_sync_5 is
  signal reg_in : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of reg_in : signal is std.standard.true;
  signal reg_out1 : STD_LOGIC;
  attribute DONT_TOUCH of reg_out1 : signal is std.standard.true;
  signal reg_out2 : STD_LOGIC;
  attribute DONT_TOUCH of reg_out2 : signal is std.standard.true;
  attribute DONT_TOUCH of reg_in_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of reg_in_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of reg_in_reg : label is "no";
  attribute DONT_TOUCH of reg_out1_reg : label is std.standard.true;
  attribute KEEP of reg_out1_reg : label is "yes";
  attribute equivalent_register_removal of reg_out1_reg : label is "no";
  attribute DONT_TOUCH of reg_out2_reg : label is std.standard.true;
  attribute KEEP of reg_out2_reg : label is "yes";
  attribute equivalent_register_removal of reg_out2_reg : label is "no";
begin
  \out\ <= reg_out2;
\pulse_out_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_out2,
      I1 => line_out_r,
      O => pulse_out_reg
    );
reg_in_reg: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => line_in,
      Q => reg_in,
      R => '0'
    );
reg_out1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_in,
      Q => reg_out1,
      R => '0'
    );
reg_out2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_out1,
      Q => reg_out2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_xclk_sync_6 is
  port (
    \out\ : out STD_LOGIC;
    pulse_out_reg : out STD_LOGIC;
    out_clk : in STD_LOGIC;
    clk : in STD_LOGIC;
    line_out_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_xclk_sync_6 : entity is "xclk_sync";
end TySOM_1_7Z030_mipi_csi_0_xclk_sync_6;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_xclk_sync_6 is
  signal reg_in : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of reg_in : signal is std.standard.true;
  signal reg_out1 : STD_LOGIC;
  attribute DONT_TOUCH of reg_out1 : signal is std.standard.true;
  signal reg_out2 : STD_LOGIC;
  attribute DONT_TOUCH of reg_out2 : signal is std.standard.true;
  attribute DONT_TOUCH of reg_in_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of reg_in_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of reg_in_reg : label is "no";
  attribute DONT_TOUCH of reg_out1_reg : label is std.standard.true;
  attribute KEEP of reg_out1_reg : label is "yes";
  attribute equivalent_register_removal of reg_out1_reg : label is "no";
  attribute DONT_TOUCH of reg_out2_reg : label is std.standard.true;
  attribute KEEP of reg_out2_reg : label is "yes";
  attribute equivalent_register_removal of reg_out2_reg : label is "no";
begin
  \out\ <= reg_out2;
pulse_out_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_out2,
      I1 => line_out_r,
      O => pulse_out_reg
    );
reg_in_reg: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => '0',
      Q => reg_in,
      R => '0'
    );
reg_out1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_in,
      Q => reg_out1,
      R => '0'
    );
reg_out2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_out1,
      Q => reg_out2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_xclk_sync_7 is
  port (
    \out\ : out STD_LOGIC;
    pulse_out_reg : out STD_LOGIC;
    out_clk : in STD_LOGIC;
    clk : in STD_LOGIC;
    line_out_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_xclk_sync_7 : entity is "xclk_sync";
end TySOM_1_7Z030_mipi_csi_0_xclk_sync_7;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_xclk_sync_7 is
  signal reg_in : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of reg_in : signal is std.standard.true;
  signal reg_out1 : STD_LOGIC;
  attribute DONT_TOUCH of reg_out1 : signal is std.standard.true;
  signal reg_out2 : STD_LOGIC;
  attribute DONT_TOUCH of reg_out2 : signal is std.standard.true;
  attribute DONT_TOUCH of reg_in_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of reg_in_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of reg_in_reg : label is "no";
  attribute DONT_TOUCH of reg_out1_reg : label is std.standard.true;
  attribute KEEP of reg_out1_reg : label is "yes";
  attribute equivalent_register_removal of reg_out1_reg : label is "no";
  attribute DONT_TOUCH of reg_out2_reg : label is std.standard.true;
  attribute KEEP of reg_out2_reg : label is "yes";
  attribute equivalent_register_removal of reg_out2_reg : label is "no";
begin
  \out\ <= reg_out2;
\pulse_out_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_out2,
      I1 => line_out_r,
      O => pulse_out_reg
    );
reg_in_reg: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => '0',
      Q => reg_in,
      R => '0'
    );
reg_out1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_in,
      Q => reg_out1,
      R => '0'
    );
reg_out2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_out1,
      Q => reg_out2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_xclk_sync_8 is
  port (
    \out\ : out STD_LOGIC;
    pulse_out_reg : out STD_LOGIC;
    line_in : in STD_LOGIC;
    out_clk : in STD_LOGIC;
    clk : in STD_LOGIC;
    line_out_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_xclk_sync_8 : entity is "xclk_sync";
end TySOM_1_7Z030_mipi_csi_0_xclk_sync_8;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_xclk_sync_8 is
  signal reg_in : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of reg_in : signal is std.standard.true;
  signal reg_out1 : STD_LOGIC;
  attribute DONT_TOUCH of reg_out1 : signal is std.standard.true;
  signal reg_out2 : STD_LOGIC;
  attribute DONT_TOUCH of reg_out2 : signal is std.standard.true;
  attribute DONT_TOUCH of reg_in_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of reg_in_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of reg_in_reg : label is "no";
  attribute DONT_TOUCH of reg_out1_reg : label is std.standard.true;
  attribute KEEP of reg_out1_reg : label is "yes";
  attribute equivalent_register_removal of reg_out1_reg : label is "no";
  attribute DONT_TOUCH of reg_out2_reg : label is std.standard.true;
  attribute KEEP of reg_out2_reg : label is "yes";
  attribute equivalent_register_removal of reg_out2_reg : label is "no";
begin
  \out\ <= reg_out2;
\pulse_out_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => reg_out2,
      I1 => line_out_r,
      O => pulse_out_reg
    );
reg_in_reg: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => line_in,
      Q => reg_in,
      R => '0'
    );
reg_out1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_in,
      Q => reg_out1,
      R => '0'
    );
reg_out2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_out1,
      Q => reg_out2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_mipi_csi_pkt_recv is
  port (
    DIP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    phy_err_bad_ecc : out STD_LOGIC;
    pkt_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    stat_running : out STD_LOGIC;
    \cnt_reg[0]\ : out STD_LOGIC;
    phy_err_overflow_reg : out STD_LOGIC;
    err_unk_pkt_reg : out STD_LOGIC;
    out_clk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : in STD_LOGIC;
    pktw_full : in STD_LOGIC;
    out_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reg_out2_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_mipi_csi_pkt_recv : entity is "mipi_csi_pkt_recv";
end TySOM_1_7Z030_mipi_csi_0_mipi_csi_pkt_recv;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_mipi_csi_pkt_recv is
  signal \FSM_sequential_state_cur[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_cur_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal btsl : STD_LOGIC;
  signal btsl0_in : STD_LOGIC;
  signal capture_1 : STD_LOGIC;
  signal data_word_1 : STD_LOGIC_VECTOR ( 31 downto 22 );
  signal ecc_exp_0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal ecc_rx_0 : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal ecc_valid_1 : STD_LOGIC;
  signal ecc_valid_1_i_1_n_0 : STD_LOGIC;
  signal ecc_valid_1_i_4_n_0 : STD_LOGIC;
  signal ecc_valid_1_i_5_n_0 : STD_LOGIC;
  signal err_bad_ecc_c : STD_LOGIC;
  signal hdr_b2 : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \lane_gen[0].sync_lane[0]_i_2_n_0\ : STD_LOGIC;
  signal \lane_gen[0].sync_lane[0]_i_3_n_0\ : STD_LOGIC;
  signal \lane_gen[0].sync_lane_reg\ : STD_LOGIC;
  signal \lane_gen[1].sync_lane[1]_i_1_n_0\ : STD_LOGIC;
  signal \lane_gen[1].sync_lane[1]_i_2_n_0\ : STD_LOGIC;
  signal \lane_gen[1].sync_lane[1]_i_3_n_0\ : STD_LOGIC;
  signal \lane_gen[1].sync_lane_reg\ : STD_LOGIC;
  signal lp_fall : STD_LOGIC;
  signal \minusOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__0_n_4\ : STD_LOGIC;
  signal \minusOp_carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_n_4\ : STD_LOGIC;
  signal \minusOp_carry__1_n_5\ : STD_LOGIC;
  signal \minusOp_carry__1_n_6\ : STD_LOGIC;
  signal \minusOp_carry__1_n_7\ : STD_LOGIC;
  signal \minusOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_carry__2_n_5\ : STD_LOGIC;
  signal \minusOp_carry__2_n_6\ : STD_LOGIC;
  signal \minusOp_carry__2_n_7\ : STD_LOGIC;
  signal minusOp_carry_i_1_n_0 : STD_LOGIC;
  signal minusOp_carry_i_2_n_0 : STD_LOGIC;
  signal minusOp_carry_i_3_n_0 : STD_LOGIC;
  signal \minusOp_carry_i_4__0_n_0\ : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal minusOp_carry_n_4 : STD_LOGIC;
  signal minusOp_carry_n_5 : STD_LOGIC;
  signal minusOp_carry_n_6 : STD_LOGIC;
  signal minusOp_carry_n_7 : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal \^phy_err_bad_ecc\ : STD_LOGIC;
  signal \^pkt_data\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pkt_hdr_i_1_n_0 : STD_LOGIC;
  signal pkt_valid0 : STD_LOGIC;
  signal pktw_valid : STD_LOGIC;
  signal pl_len_1 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \pl_len_1[10]_i_1_n_0\ : STD_LOGIC;
  signal \pl_len_1[11]_i_1_n_0\ : STD_LOGIC;
  signal \pl_len_1[12]_i_1_n_0\ : STD_LOGIC;
  signal \pl_len_1[13]_i_1_n_0\ : STD_LOGIC;
  signal \pl_len_1[14]_i_1_n_0\ : STD_LOGIC;
  signal \pl_len_1[15]_i_1_n_0\ : STD_LOGIC;
  signal \pl_len_1[16]_i_1_n_0\ : STD_LOGIC;
  signal \pl_len_1[16]_i_2_n_0\ : STD_LOGIC;
  signal \pl_len_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \pl_len_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \pl_len_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \pl_len_1[4]_i_1_n_0\ : STD_LOGIC;
  signal \pl_len_1[5]_i_1_n_0\ : STD_LOGIC;
  signal \pl_len_1[6]_i_1_n_0\ : STD_LOGIC;
  signal \pl_len_1[7]_i_1_n_0\ : STD_LOGIC;
  signal \pl_len_1[8]_i_1_n_0\ : STD_LOGIC;
  signal \pl_len_1[9]_i_1_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal stat_running_i_1_n_0 : STD_LOGIC;
  signal state_cur : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state_cur : signal is "yes";
  signal state_nxt : STD_LOGIC_VECTOR ( 1 to 1 );
  signal sync_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sync_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal x_i_10_n_0 : STD_LOGIC;
  signal x_i_11_n_0 : STD_LOGIC;
  signal x_i_12_n_0 : STD_LOGIC;
  signal x_i_13_n_0 : STD_LOGIC;
  signal x_i_1_n_0 : STD_LOGIC;
  signal x_i_2_n_0 : STD_LOGIC;
  signal x_i_3_n_0 : STD_LOGIC;
  signal x_i_4_n_0 : STD_LOGIC;
  signal x_i_6_n_0 : STD_LOGIC;
  signal x_i_7_n_0 : STD_LOGIC;
  signal x_i_8_n_0 : STD_LOGIC;
  signal x_i_9_n_0 : STD_LOGIC;
  signal x_n_0 : STD_LOGIC;
  signal \NLW_minusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_minusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_minusOp_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_cur[2]_i_3__0\ : label is "soft_lutpair12";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_cur_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_cur_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_cur_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \bl.fifo_36_inst_bl.fifo_36_bl_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \eqOp_inferred__2/i_\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of phy_err_overflow_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sync_cnt[2]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of x_i_8 : label is "soft_lutpair12";
begin
  phy_err_bad_ecc <= \^phy_err_bad_ecc\;
  pkt_data(31 downto 0) <= \^pkt_data\(31 downto 0);
\FSM_sequential_state_cur[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC407070FF407070"
    )
        port map (
      I0 => lp_fall,
      I1 => state_cur(0),
      I2 => reg_out2_reg,
      I3 => capture_1,
      I4 => state_cur(2),
      I5 => p_0_in_0,
      O => \FSM_sequential_state_cur[0]_i_2_n_0\
    );
\FSM_sequential_state_cur[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7FF0F0707FF0FF"
    )
        port map (
      I0 => ecc_valid_1,
      I1 => \FSM_sequential_state_cur[2]_i_3__0_n_0\,
      I2 => state_cur(0),
      I3 => x_i_9_n_0,
      I4 => capture_1,
      I5 => state_cur(2),
      O => \FSM_sequential_state_cur[0]_i_3_n_0\
    );
\FSM_sequential_state_cur[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \FSM_sequential_state_cur[1]_i_2_n_0\,
      I1 => state_cur(1),
      I2 => lp_fall,
      I3 => reg_out2_reg,
      I4 => state_cur(0),
      O => \FSM_sequential_state_cur[1]_i_1_n_0\
    );
\FSM_sequential_state_cur[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F4F5F4F5F4F5F"
    )
        port map (
      I0 => state_cur(0),
      I1 => p_0_in_0,
      I2 => capture_1,
      I3 => state_cur(2),
      I4 => \lane_gen[1].sync_lane_reg\,
      I5 => \lane_gen[0].sync_lane_reg\,
      O => \FSM_sequential_state_cur[1]_i_2_n_0\
    );
\FSM_sequential_state_cur[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B888BB88"
    )
        port map (
      I0 => \FSM_sequential_state_cur[2]_i_2_n_0\,
      I1 => state_cur(1),
      I2 => p_0_in_0,
      I3 => state_cur(2),
      I4 => capture_1,
      O => \FSM_sequential_state_cur[2]_i_1_n_0\
    );
\FSM_sequential_state_cur[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF808080FFFF0000"
    )
        port map (
      I0 => ecc_valid_1,
      I1 => \FSM_sequential_state_cur[2]_i_3__0_n_0\,
      I2 => state_cur(0),
      I3 => p_0_in_0,
      I4 => state_cur(2),
      I5 => capture_1,
      O => \FSM_sequential_state_cur[2]_i_2_n_0\
    );
\FSM_sequential_state_cur[2]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^pkt_data\(7),
      I1 => \^pkt_data\(6),
      I2 => \^pkt_data\(17),
      I3 => \^pkt_data\(16),
      O => \FSM_sequential_state_cur[2]_i_3__0_n_0\
    );
\FSM_sequential_state_cur_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \FSM_sequential_state_cur_reg[0]_i_1_n_0\,
      Q => state_cur(0),
      R => Q(0)
    );
\FSM_sequential_state_cur_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state_cur[0]_i_2_n_0\,
      I1 => \FSM_sequential_state_cur[0]_i_3_n_0\,
      O => \FSM_sequential_state_cur_reg[0]_i_1_n_0\,
      S => state_cur(1)
    );
\FSM_sequential_state_cur_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \FSM_sequential_state_cur[1]_i_1_n_0\,
      Q => state_cur(1),
      R => Q(0)
    );
\FSM_sequential_state_cur_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \FSM_sequential_state_cur[2]_i_1_n_0\,
      Q => state_cur(2),
      R => Q(0)
    );
\bl.fifo_36_inst_bl.fifo_36_bl_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pktw_valid,
      I1 => pktw_full,
      O => err_unk_pkt_reg
    );
capture_1_reg: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => btsl0_in,
      Q => capture_1,
      R => \sync_cnt[2]_i_1_n_0\
    );
\cnt[3]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^phy_err_bad_ecc\,
      I1 => p_0_in,
      O => \cnt_reg[0]\
    );
\data_word_1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => hdr_b2(6),
      Q => data_word_1(22),
      R => '0'
    );
\data_word_1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => hdr_b2(7),
      Q => data_word_1(23),
      R => '0'
    );
\data_word_1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => ecc_rx_0(6),
      Q => data_word_1(30),
      R => '0'
    );
\data_word_1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => ecc_rx_0(7),
      Q => data_word_1(31),
      R => '0'
    );
ecc_I: entity work.TySOM_1_7Z030_mipi_csi_0_mipi_ecc
     port map (
      Q(1 downto 0) => hdr_b2(7 downto 6),
      ecc_exp_0(5 downto 0) => ecc_exp_0(5 downto 0),
      \lane_gen[0].data_shift_reg\(7 downto 6) => data_word_1(23 downto 22),
      \lane_gen[0].data_shift_reg\(5 downto 0) => \^pkt_data\(23 downto 18),
      \lane_gen[1].data_shift_reg\(5 downto 4) => \^pkt_data\(25 downto 24),
      \lane_gen[1].data_shift_reg\(3 downto 0) => \^pkt_data\(15 downto 12),
      \pkt_data_reg[16]\ => \^pkt_data\(16),
      \pkt_data_reg[17]\ => \^pkt_data\(17),
      \pkt_data_reg[26]\ => \^pkt_data\(26),
      \pkt_data_reg[27]\ => \^pkt_data\(27),
      \pkt_data_reg[4]\ => \^pkt_data\(4),
      \pkt_data_reg[5]\ => \^pkt_data\(5),
      \pkt_data_reg[6]\ => \^pkt_data\(6),
      \pkt_data_reg[7]\ => \^pkt_data\(7)
    );
ecc_valid_1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => ecc_exp_0(1),
      I1 => \^pkt_data\(29),
      I2 => ecc_exp_0(0),
      I3 => \^pkt_data\(28),
      I4 => ecc_valid_1_i_4_n_0,
      I5 => ecc_valid_1_i_5_n_0,
      O => ecc_valid_1_i_1_n_0
    );
ecc_valid_1_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => ecc_rx_0(7),
      I1 => ecc_rx_0(6),
      I2 => data_word_1(31),
      I3 => ecc_exp_0(5),
      O => ecc_valid_1_i_4_n_0
    );
ecc_valid_1_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ecc_exp_0(4),
      I1 => data_word_1(30),
      I2 => ecc_exp_0(3),
      I3 => \^pkt_data\(31),
      I4 => \^pkt_data\(30),
      I5 => ecc_exp_0(2),
      O => ecc_valid_1_i_5_n_0
    );
ecc_valid_1_reg: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => ecc_valid_1_i_1_n_0,
      Q => ecc_valid_1,
      R => '0'
    );
\eqOp_inferred__2/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sync_cnt(1),
      I1 => sync_cnt(2),
      I2 => sync_cnt(0),
      O => btsl0_in
    );
err_bad_ecc_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => state_cur(0),
      I1 => ecc_valid_1,
      I2 => capture_1,
      I3 => state_cur(2),
      I4 => state_cur(1),
      O => err_bad_ecc_c
    );
err_bad_ecc_reg: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => err_bad_ecc_c,
      Q => \^phy_err_bad_ecc\,
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pl_len_1(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pl_len_1(7),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pl_len_1(6),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pl_len_1(5),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pl_len_1(12),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pl_len_1(11),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pl_len_1(10),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pl_len_1(9),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in_0,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pl_len_1(15),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pl_len_1(14),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pl_len_1(13),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pl_len_1(4),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pl_len_1(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pl_len_1(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pl_len_1(1),
      O => \i__carry_i_4__1_n_0\
    );
\lane_gen[0].data_shift_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => out_data(0),
      Q => hdr_b2(6),
      R => '0'
    );
\lane_gen[0].data_shift_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => out_data(1),
      Q => hdr_b2(7),
      R => '0'
    );
\lane_gen[0].sync_lane[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \^pkt_data\(7),
      I1 => \^pkt_data\(6),
      I2 => \^pkt_data\(17),
      I3 => \^pkt_data\(16),
      I4 => \lane_gen[0].sync_lane[0]_i_2_n_0\,
      I5 => \lane_gen[0].sync_lane[0]_i_3_n_0\,
      O => btsl
    );
\lane_gen[0].sync_lane[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => data_word_1(22),
      I1 => data_word_1(23),
      I2 => \^pkt_data\(23),
      I3 => \^pkt_data\(22),
      I4 => hdr_b2(6),
      I5 => hdr_b2(7),
      O => \lane_gen[0].sync_lane[0]_i_2_n_0\
    );
\lane_gen[0].sync_lane[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^pkt_data\(18),
      I1 => \^pkt_data\(19),
      I2 => \^pkt_data\(4),
      I3 => \^pkt_data\(5),
      I4 => \^pkt_data\(21),
      I5 => \^pkt_data\(20),
      O => \lane_gen[0].sync_lane[0]_i_3_n_0\
    );
\lane_gen[0].sync_lane_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => btsl,
      Q => \lane_gen[0].sync_lane_reg\,
      R => '0'
    );
\lane_gen[1].data_shift_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => out_data(2),
      Q => ecc_rx_0(6),
      R => '0'
    );
\lane_gen[1].data_shift_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => out_data(3),
      Q => ecc_rx_0(7),
      R => '0'
    );
\lane_gen[1].sync_lane[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \lane_gen[1].sync_lane[1]_i_2_n_0\,
      I1 => \^pkt_data\(13),
      I2 => \^pkt_data\(12),
      I3 => \^pkt_data\(15),
      I4 => \^pkt_data\(14),
      I5 => \lane_gen[1].sync_lane[1]_i_3_n_0\,
      O => \lane_gen[1].sync_lane[1]_i_1_n_0\
    );
\lane_gen[1].sync_lane[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => data_word_1(30),
      I1 => data_word_1(31),
      I2 => \^pkt_data\(31),
      I3 => \^pkt_data\(30),
      I4 => ecc_rx_0(6),
      I5 => ecc_rx_0(7),
      O => \lane_gen[1].sync_lane[1]_i_2_n_0\
    );
\lane_gen[1].sync_lane[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^pkt_data\(26),
      I1 => \^pkt_data\(27),
      I2 => \^pkt_data\(24),
      I3 => \^pkt_data\(25),
      I4 => \^pkt_data\(29),
      I5 => \^pkt_data\(28),
      O => \lane_gen[1].sync_lane[1]_i_3_n_0\
    );
\lane_gen[1].sync_lane_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \lane_gen[1].sync_lane[1]_i_1_n_0\,
      Q => \lane_gen[1].sync_lane_reg\,
      R => '0'
    );
lp_fall_reg: unisim.vcomponents.FDSE
     port map (
      C => out_clk,
      CE => '1',
      D => '0',
      Q => lp_fall,
      S => \out\
    );
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => \^pkt_data\(10),
      DI(3 downto 1) => \^pkt_data\(14 downto 12),
      DI(0) => '0',
      O(3) => minusOp_carry_n_4,
      O(2) => minusOp_carry_n_5,
      O(1) => minusOp_carry_n_6,
      O(0) => minusOp_carry_n_7,
      S(3) => minusOp_carry_i_1_n_0,
      S(2) => minusOp_carry_i_2_n_0,
      S(1) => minusOp_carry_i_3_n_0,
      S(0) => \minusOp_carry_i_4__0_n_0\
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \^pkt_data\(18),
      DI(2 downto 1) => \^pkt_data\(25 downto 24),
      DI(0) => \^pkt_data\(15),
      O(3) => \minusOp_carry__0_n_4\,
      O(2) => \minusOp_carry__0_n_5\,
      O(1) => \minusOp_carry__0_n_6\,
      O(0) => \minusOp_carry__0_n_7\,
      S(3) => \minusOp_carry__0_i_1_n_0\,
      S(2) => \minusOp_carry__0_i_2_n_0\,
      S(1) => \minusOp_carry__0_i_3_n_0\,
      S(0) => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pkt_data\(18),
      O => \minusOp_carry__0_i_1_n_0\
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pkt_data\(25),
      O => \minusOp_carry__0_i_2_n_0\
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pkt_data\(24),
      O => \minusOp_carry__0_i_3_n_0\
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pkt_data\(15),
      O => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^pkt_data\(22 downto 19),
      O(3) => \minusOp_carry__1_n_4\,
      O(2) => \minusOp_carry__1_n_5\,
      O(1) => \minusOp_carry__1_n_6\,
      O(0) => \minusOp_carry__1_n_7\,
      S(3) => \minusOp_carry__1_i_1_n_0\,
      S(2) => \minusOp_carry__1_i_2_n_0\,
      S(1) => \minusOp_carry__1_i_3_n_0\,
      S(0) => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pkt_data\(22),
      O => \minusOp_carry__1_i_1_n_0\
    );
\minusOp_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pkt_data\(21),
      O => \minusOp_carry__1_i_2_n_0\
    );
\minusOp_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pkt_data\(20),
      O => \minusOp_carry__1_i_3_n_0\
    );
\minusOp_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pkt_data\(19),
      O => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3) => \minusOp_carry__2_n_0\,
      CO(2) => \NLW_minusOp_carry__2_CO_UNCONNECTED\(2),
      CO(1) => \minusOp_carry__2_n_2\,
      CO(0) => \minusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 1) => data_word_1(23 downto 22),
      DI(0) => \^pkt_data\(23),
      O(3) => \NLW_minusOp_carry__2_O_UNCONNECTED\(3),
      O(2) => \minusOp_carry__2_n_5\,
      O(1) => \minusOp_carry__2_n_6\,
      O(0) => \minusOp_carry__2_n_7\,
      S(3) => '1',
      S(2) => \minusOp_carry__2_i_1_n_0\,
      S(1) => \minusOp_carry__2_i_2_n_0\,
      S(0) => \minusOp_carry__2_i_3_n_0\
    );
\minusOp_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_word_1(23),
      O => \minusOp_carry__2_i_1_n_0\
    );
\minusOp_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_word_1(22),
      O => \minusOp_carry__2_i_2_n_0\
    );
\minusOp_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pkt_data\(23),
      O => \minusOp_carry__2_i_3_n_0\
    );
minusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pkt_data\(14),
      O => minusOp_carry_i_1_n_0
    );
minusOp_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pkt_data\(13),
      O => minusOp_carry_i_2_n_0
    );
minusOp_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pkt_data\(12),
      O => minusOp_carry_i_3_n_0
    );
\minusOp_carry_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pkt_data\(11),
      O => \minusOp_carry_i_4__0_n_0\
    );
\minusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp_inferred__0/i__carry_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => pl_len_1(4 downto 2),
      DI(0) => '0',
      O(3) => \minusOp_inferred__0/i__carry_n_4\,
      O(2) => \minusOp_inferred__0/i__carry_n_5\,
      O(1) => \minusOp_inferred__0/i__carry_n_6\,
      O(0) => \minusOp_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4__1_n_0\
    );
\minusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pl_len_1(8 downto 5),
      O(3) => \minusOp_inferred__0/i__carry__0_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__0_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__0_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \minusOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pl_len_1(12 downto 9),
      O(3) => \minusOp_inferred__0/i__carry__1_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__1_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__1_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\minusOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry__1_n_0\,
      CO(3) => \NLW_minusOp_inferred__0/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \minusOp_inferred__0/i__carry__2_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__2_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => pl_len_1(15 downto 13),
      O(3) => \minusOp_inferred__0/i__carry__2_n_4\,
      O(2) => \minusOp_inferred__0/i__carry__2_n_5\,
      O(1) => \minusOp_inferred__0/i__carry__2_n_6\,
      O(0) => \minusOp_inferred__0/i__carry__2_n_7\,
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
phy_err_overflow_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pktw_valid,
      I1 => pktw_full,
      O => phy_err_overflow_reg
    );
\pkt_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(2),
      Q => \^pkt_data\(0),
      R => '0'
    );
\pkt_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(12),
      Q => \^pkt_data\(10),
      R => '0'
    );
\pkt_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(13),
      Q => \^pkt_data\(11),
      R => '0'
    );
\pkt_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(14),
      Q => \^pkt_data\(12),
      R => '0'
    );
\pkt_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(15),
      Q => \^pkt_data\(13),
      R => '0'
    );
\pkt_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(24),
      Q => \^pkt_data\(14),
      R => '0'
    );
\pkt_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(25),
      Q => \^pkt_data\(15),
      R => '0'
    );
\pkt_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(18),
      Q => \^pkt_data\(16),
      R => '0'
    );
\pkt_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(19),
      Q => \^pkt_data\(17),
      R => '0'
    );
\pkt_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(20),
      Q => \^pkt_data\(18),
      R => '0'
    );
\pkt_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(21),
      Q => \^pkt_data\(19),
      R => '0'
    );
\pkt_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(3),
      Q => \^pkt_data\(1),
      R => '0'
    );
\pkt_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(22),
      Q => \^pkt_data\(20),
      R => '0'
    );
\pkt_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(23),
      Q => \^pkt_data\(21),
      R => '0'
    );
\pkt_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => data_word_1(22),
      Q => \^pkt_data\(22),
      R => '0'
    );
\pkt_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => data_word_1(23),
      Q => \^pkt_data\(23),
      R => '0'
    );
\pkt_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(26),
      Q => \^pkt_data\(24),
      R => '0'
    );
\pkt_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(27),
      Q => \^pkt_data\(25),
      R => '0'
    );
\pkt_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(28),
      Q => \^pkt_data\(26),
      R => '0'
    );
\pkt_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(29),
      Q => \^pkt_data\(27),
      R => '0'
    );
\pkt_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(30),
      Q => \^pkt_data\(28),
      R => '0'
    );
\pkt_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(31),
      Q => \^pkt_data\(29),
      R => '0'
    );
\pkt_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(4),
      Q => \^pkt_data\(2),
      R => '0'
    );
\pkt_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => data_word_1(30),
      Q => \^pkt_data\(30),
      R => '0'
    );
\pkt_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => data_word_1(31),
      Q => \^pkt_data\(31),
      R => '0'
    );
\pkt_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(5),
      Q => \^pkt_data\(3),
      R => '0'
    );
\pkt_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(6),
      Q => \^pkt_data\(4),
      R => '0'
    );
\pkt_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(7),
      Q => \^pkt_data\(5),
      R => '0'
    );
\pkt_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(16),
      Q => \^pkt_data\(6),
      R => '0'
    );
\pkt_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(17),
      Q => \^pkt_data\(7),
      R => '0'
    );
\pkt_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(10),
      Q => \^pkt_data\(8),
      R => '0'
    );
\pkt_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => \^pkt_data\(11),
      Q => \^pkt_data\(9),
      R => '0'
    );
pkt_hdr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_cur(2),
      I1 => state_cur(0),
      I2 => state_cur(1),
      O => pkt_hdr_i_1_n_0
    );
pkt_hdr_reg: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => pkt_hdr_i_1_n_0,
      Q => DIP(1),
      R => '0'
    );
pkt_last_reg: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => x_n_0,
      Q => DIP(0),
      R => '0'
    );
pkt_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800C00"
    )
        port map (
      I0 => ecc_valid_1,
      I1 => capture_1,
      I2 => state_cur(0),
      I3 => state_cur(2),
      I4 => state_cur(1),
      O => pkt_valid0
    );
pkt_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => pkt_valid0,
      Q => pktw_valid,
      R => Q(0)
    );
\pl_len_1[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAAA2A"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__1_n_6\,
      I1 => state_cur(1),
      I2 => state_cur(0),
      I3 => state_cur(2),
      I4 => \minusOp_carry__1_n_6\,
      O => \pl_len_1[10]_i_1_n_0\
    );
\pl_len_1[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAAA2A"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__1_n_5\,
      I1 => state_cur(1),
      I2 => state_cur(0),
      I3 => state_cur(2),
      I4 => \minusOp_carry__1_n_5\,
      O => \pl_len_1[11]_i_1_n_0\
    );
\pl_len_1[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAAA2A"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__1_n_4\,
      I1 => state_cur(1),
      I2 => state_cur(0),
      I3 => state_cur(2),
      I4 => \minusOp_carry__1_n_4\,
      O => \pl_len_1[12]_i_1_n_0\
    );
\pl_len_1[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAAA2A"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__2_n_7\,
      I1 => state_cur(1),
      I2 => state_cur(0),
      I3 => state_cur(2),
      I4 => \minusOp_carry__2_n_7\,
      O => \pl_len_1[13]_i_1_n_0\
    );
\pl_len_1[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAE2AAAA"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__2_n_6\,
      I1 => state_cur(0),
      I2 => \minusOp_carry__2_n_6\,
      I3 => state_cur(2),
      I4 => state_cur(1),
      O => \pl_len_1[14]_i_1_n_0\
    );
\pl_len_1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAE2AAAA"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__2_n_5\,
      I1 => state_cur(0),
      I2 => \minusOp_carry__2_n_5\,
      I3 => state_cur(2),
      I4 => state_cur(1),
      O => \pl_len_1[15]_i_1_n_0\
    );
\pl_len_1[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888A888"
    )
        port map (
      I0 => capture_1,
      I1 => p_0_in_0,
      I2 => state_cur(1),
      I3 => state_cur(0),
      I4 => state_cur(2),
      O => \pl_len_1[16]_i_1_n_0\
    );
\pl_len_1[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAE2AAAA"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__2_n_4\,
      I1 => state_cur(0),
      I2 => \minusOp_carry__2_n_0\,
      I3 => state_cur(2),
      I4 => state_cur(1),
      O => \pl_len_1[16]_i_2_n_0\
    );
\pl_len_1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAAA2A"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry_n_7\,
      I1 => state_cur(1),
      I2 => state_cur(0),
      I3 => state_cur(2),
      I4 => minusOp_carry_n_7,
      O => \pl_len_1[1]_i_1_n_0\
    );
\pl_len_1[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAAA2A"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry_n_6\,
      I1 => state_cur(1),
      I2 => state_cur(0),
      I3 => state_cur(2),
      I4 => minusOp_carry_n_6,
      O => \pl_len_1[2]_i_1_n_0\
    );
\pl_len_1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAAA2A"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry_n_5\,
      I1 => state_cur(1),
      I2 => state_cur(0),
      I3 => state_cur(2),
      I4 => minusOp_carry_n_5,
      O => \pl_len_1[3]_i_1_n_0\
    );
\pl_len_1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAAA2A"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry_n_4\,
      I1 => state_cur(1),
      I2 => state_cur(0),
      I3 => state_cur(2),
      I4 => minusOp_carry_n_4,
      O => \pl_len_1[4]_i_1_n_0\
    );
\pl_len_1[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAAA2A"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__0_n_7\,
      I1 => state_cur(1),
      I2 => state_cur(0),
      I3 => state_cur(2),
      I4 => \minusOp_carry__0_n_7\,
      O => \pl_len_1[5]_i_1_n_0\
    );
\pl_len_1[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAAA2A"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__0_n_6\,
      I1 => state_cur(1),
      I2 => state_cur(0),
      I3 => state_cur(2),
      I4 => \minusOp_carry__0_n_6\,
      O => \pl_len_1[6]_i_1_n_0\
    );
\pl_len_1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAAA2A"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__0_n_5\,
      I1 => state_cur(1),
      I2 => state_cur(0),
      I3 => state_cur(2),
      I4 => \minusOp_carry__0_n_5\,
      O => \pl_len_1[7]_i_1_n_0\
    );
\pl_len_1[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAAA2A"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__0_n_4\,
      I1 => state_cur(1),
      I2 => state_cur(0),
      I3 => state_cur(2),
      I4 => \minusOp_carry__0_n_4\,
      O => \pl_len_1[8]_i_1_n_0\
    );
\pl_len_1[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEAAA2A"
    )
        port map (
      I0 => \minusOp_inferred__0/i__carry__1_n_7\,
      I1 => state_cur(1),
      I2 => state_cur(0),
      I3 => state_cur(2),
      I4 => \minusOp_carry__1_n_7\,
      O => \pl_len_1[9]_i_1_n_0\
    );
\pl_len_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => \pl_len_1[16]_i_1_n_0\,
      D => \pl_len_1[10]_i_1_n_0\,
      Q => pl_len_1(10),
      R => '0'
    );
\pl_len_1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => \pl_len_1[16]_i_1_n_0\,
      D => \pl_len_1[11]_i_1_n_0\,
      Q => pl_len_1(11),
      R => '0'
    );
\pl_len_1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => \pl_len_1[16]_i_1_n_0\,
      D => \pl_len_1[12]_i_1_n_0\,
      Q => pl_len_1(12),
      R => '0'
    );
\pl_len_1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => \pl_len_1[16]_i_1_n_0\,
      D => \pl_len_1[13]_i_1_n_0\,
      Q => pl_len_1(13),
      R => '0'
    );
\pl_len_1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => \pl_len_1[16]_i_1_n_0\,
      D => \pl_len_1[14]_i_1_n_0\,
      Q => pl_len_1(14),
      R => '0'
    );
\pl_len_1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => \pl_len_1[16]_i_1_n_0\,
      D => \pl_len_1[15]_i_1_n_0\,
      Q => pl_len_1(15),
      R => '0'
    );
\pl_len_1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => \pl_len_1[16]_i_1_n_0\,
      D => \pl_len_1[16]_i_2_n_0\,
      Q => p_0_in_0,
      R => '0'
    );
\pl_len_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => \pl_len_1[16]_i_1_n_0\,
      D => \pl_len_1[1]_i_1_n_0\,
      Q => pl_len_1(1),
      R => '0'
    );
\pl_len_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => \pl_len_1[16]_i_1_n_0\,
      D => \pl_len_1[2]_i_1_n_0\,
      Q => pl_len_1(2),
      R => '0'
    );
\pl_len_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => \pl_len_1[16]_i_1_n_0\,
      D => \pl_len_1[3]_i_1_n_0\,
      Q => pl_len_1(3),
      R => '0'
    );
\pl_len_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => \pl_len_1[16]_i_1_n_0\,
      D => \pl_len_1[4]_i_1_n_0\,
      Q => pl_len_1(4),
      R => '0'
    );
\pl_len_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => \pl_len_1[16]_i_1_n_0\,
      D => \pl_len_1[5]_i_1_n_0\,
      Q => pl_len_1(5),
      R => '0'
    );
\pl_len_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => \pl_len_1[16]_i_1_n_0\,
      D => \pl_len_1[6]_i_1_n_0\,
      Q => pl_len_1(6),
      R => '0'
    );
\pl_len_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => \pl_len_1[16]_i_1_n_0\,
      D => \pl_len_1[7]_i_1_n_0\,
      Q => pl_len_1(7),
      R => '0'
    );
\pl_len_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => \pl_len_1[16]_i_1_n_0\,
      D => \pl_len_1[8]_i_1_n_0\,
      Q => pl_len_1(8),
      R => '0'
    );
\pl_len_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => \pl_len_1[16]_i_1_n_0\,
      D => \pl_len_1[9]_i_1_n_0\,
      Q => pl_len_1(9),
      R => '0'
    );
stat_running_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state_cur(2),
      I1 => state_cur(0),
      O => stat_running_i_1_n_0
    );
stat_running_reg: unisim.vcomponents.FDSE
     port map (
      C => out_clk,
      CE => '1',
      D => stat_running_i_1_n_0,
      Q => stat_running,
      S => state_cur(1)
    );
\sync_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sync_cnt(0),
      O => plusOp(0)
    );
\sync_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sync_cnt(0),
      I1 => sync_cnt(1),
      O => plusOp(1)
    );
\sync_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \lane_gen[1].sync_lane_reg\,
      I1 => \lane_gen[0].sync_lane_reg\,
      O => \sync_cnt[2]_i_1_n_0\
    );
\sync_cnt[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sync_cnt(0),
      I1 => sync_cnt(1),
      I2 => sync_cnt(2),
      O => plusOp(2)
    );
\sync_cnt_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => out_clk,
      CE => '1',
      D => plusOp(0),
      Q => sync_cnt(0),
      S => \sync_cnt[2]_i_1_n_0\
    );
\sync_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => plusOp(1),
      Q => sync_cnt(1),
      R => \sync_cnt[2]_i_1_n_0\
    );
\sync_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => out_clk,
      CE => '1',
      D => plusOp(2),
      Q => sync_cnt(2),
      R => \sync_cnt[2]_i_1_n_0\
    );
x: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047034400"
    )
        port map (
      I0 => x_i_1_n_0,
      I1 => state_cur(1),
      I2 => x_i_2_n_0,
      I3 => x_i_3_n_0,
      I4 => x_i_4_n_0,
      I5 => state_nxt(1),
      O => x_n_0
    );
x_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => x_i_6_n_0,
      I1 => x_i_7_n_0,
      O => x_i_1_n_0,
      S => state_cur(0)
    );
x_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CCF088F033F000"
    )
        port map (
      I0 => lp_fall,
      I1 => state_cur(0),
      I2 => x_i_13_n_0,
      I3 => state_cur(2),
      I4 => state_cur(1),
      I5 => reg_out2_reg,
      O => x_i_10_n_0
    );
x_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07000705"
    )
        port map (
      I0 => state_cur(0),
      I1 => capture_1,
      I2 => state_cur(2),
      I3 => state_cur(1),
      I4 => x_i_9_n_0,
      O => x_i_11_n_0
    );
x_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state_cur(0),
      I1 => state_cur(2),
      I2 => state_cur(1),
      O => x_i_12_n_0
    );
x_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D00"
    )
        port map (
      I0 => capture_1,
      I1 => p_0_in_0,
      I2 => state_cur(2),
      I3 => state_cur(1),
      O => x_i_13_n_0
    );
x_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000D00"
    )
        port map (
      I0 => capture_1,
      I1 => p_0_in_0,
      I2 => state_cur(1),
      I3 => state_cur(2),
      I4 => state_cur(0),
      O => x_i_2_n_0
    );
x_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F08C8C00F0BFBF"
    )
        port map (
      I0 => x_i_8_n_0,
      I1 => state_cur(0),
      I2 => capture_1,
      I3 => p_0_in_0,
      I4 => state_cur(2),
      I5 => x_i_9_n_0,
      O => x_i_3_n_0
    );
x_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0777700F00000"
    )
        port map (
      I0 => lp_fall,
      I1 => state_cur(0),
      I2 => capture_1,
      I3 => p_0_in_0,
      I4 => state_cur(2),
      I5 => reg_out2_reg,
      O => x_i_4_n_0
    );
x_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => x_i_10_n_0,
      I1 => x_i_11_n_0,
      O => state_nxt(1),
      S => state_cur(1)
    );
x_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DFDFDF00000000"
    )
        port map (
      I0 => capture_1,
      I1 => p_0_in_0,
      I2 => state_cur(2),
      I3 => \lane_gen[1].sync_lane_reg\,
      I4 => \lane_gen[0].sync_lane_reg\,
      I5 => x_i_12_n_0,
      O => x_i_6_n_0
    );
x_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFF30000000"
    )
        port map (
      I0 => p_0_in_0,
      I1 => state_cur(2),
      I2 => ecc_valid_1,
      I3 => \FSM_sequential_state_cur[2]_i_3__0_n_0\,
      I4 => capture_1,
      I5 => x_i_12_n_0,
      O => x_i_7_n_0
    );
x_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => \^pkt_data\(16),
      I1 => \^pkt_data\(17),
      I2 => \^pkt_data\(6),
      I3 => \^pkt_data\(7),
      I4 => ecc_valid_1,
      O => x_i_8_n_0
    );
x_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \lane_gen[0].sync_lane_reg\,
      I1 => \lane_gen[1].sync_lane_reg\,
      O => x_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_vid_crop is
  port (
    vcrop_last : out STD_LOGIC;
    vcrop_valid : out STD_LOGIC;
    vcrop_sof : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \cnt_line_1_reg[11]_0\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \^q\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_valid_i0 : out STD_LOGIC;
    \cnt_reg[1]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    vfm_valid : in STD_LOGIC;
    clk : in STD_LOGIC;
    vfm_last : in STD_LOGIC;
    vfm_sof : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_reg[10]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \reg_reg[10]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \reg_reg[6]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_reg[6]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_reg[10]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \reg_reg[10]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_reg[11]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \reg_reg[11]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \reg_reg[11]_1\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \reg_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \cnt_reg[0]\ : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    \vfm_data_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_vid_crop : entity is "vid_crop";
end TySOM_1_7Z030_mipi_csi_0_vid_crop;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_vid_crop is
  signal cnt_col_1 : STD_LOGIC;
  signal \cnt_col_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_col_1[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_col_1[0]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_col_1[0]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_col_1[0]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_col_1[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_col_1[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_col_1[4]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_col_1[4]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_col_1[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_col_1[8]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_col_1[8]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_col_1[8]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_col_1_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_col_1_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_col_1_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_col_1_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_col_1_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_col_1_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_col_1_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_col_1_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_col_1_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_col_1_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_col_1_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_col_1_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_col_1_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_col_1_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_col_1_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_col_1_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_col_1_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_col_1_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_col_1_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_col_1_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_col_1_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_col_1_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_col_1_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_line_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_line_1[0]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_line_1[0]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_line_1[0]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_line_1[0]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_line_1[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_line_1[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_line_1[4]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_line_1[4]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_line_1[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_line_1[8]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_line_1[8]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_line_1[8]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_line_1_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_line_1_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \cnt_line_1_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \cnt_line_1_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \cnt_line_1_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \cnt_line_1_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \cnt_line_1_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \cnt_line_1_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \^cnt_line_1_reg[11]_0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \cnt_line_1_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_line_1_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_line_1_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_line_1_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_line_1_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_line_1_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_line_1_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_line_1_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_line_1_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_line_1_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_line_1_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_line_1_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_line_1_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_line_1_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_line_1_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal eqOp_carry_i_1_n_0 : STD_LOGIC;
  signal eqOp_carry_i_2_n_0 : STD_LOGIC;
  signal eqOp_carry_i_3_n_0 : STD_LOGIC;
  signal eqOp_carry_i_4_n_0 : STD_LOGIC;
  signal eqOp_carry_n_0 : STD_LOGIC;
  signal eqOp_carry_n_1 : STD_LOGIC;
  signal eqOp_carry_n_2 : STD_LOGIC;
  signal eqOp_carry_n_3 : STD_LOGIC;
  signal \geqOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_n_2\ : STD_LOGIC;
  signal \geqOp_carry__0_n_3\ : STD_LOGIC;
  signal geqOp_carry_i_1_n_0 : STD_LOGIC;
  signal geqOp_carry_i_2_n_0 : STD_LOGIC;
  signal geqOp_carry_i_3_n_0 : STD_LOGIC;
  signal geqOp_carry_i_4_n_0 : STD_LOGIC;
  signal geqOp_carry_i_5_n_0 : STD_LOGIC;
  signal geqOp_carry_i_6_n_0 : STD_LOGIC;
  signal geqOp_carry_i_7_n_0 : STD_LOGIC;
  signal geqOp_carry_i_8_n_0 : STD_LOGIC;
  signal geqOp_carry_n_0 : STD_LOGIC;
  signal geqOp_carry_n_1 : STD_LOGIC;
  signal geqOp_carry_n_2 : STD_LOGIC;
  signal geqOp_carry_n_3 : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal last_1 : STD_LOGIC;
  signal last_2 : STD_LOGIC;
  signal last_30 : STD_LOGIC;
  signal \leqOp_carry__0_n_2\ : STD_LOGIC;
  signal \leqOp_carry__0_n_3\ : STD_LOGIC;
  signal leqOp_carry_n_0 : STD_LOGIC;
  signal leqOp_carry_n_1 : STD_LOGIC;
  signal leqOp_carry_n_2 : STD_LOGIC;
  signal leqOp_carry_n_3 : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \leqOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal sof_1 : STD_LOGIC;
  signal sof_2 : STD_LOGIC;
  signal sof_3_i_1_n_0 : STD_LOGIC;
  signal valid_1 : STD_LOGIC;
  signal valid_2 : STD_LOGIC;
  signal \^vcrop_last\ : STD_LOGIC;
  signal \^vcrop_sof\ : STD_LOGIC;
  signal \^vcrop_valid\ : STD_LOGIC;
  signal win_ce_last_2 : STD_LOGIC;
  signal win_ce_ok_2 : STD_LOGIC;
  signal win_cs_ok_2 : STD_LOGIC;
  signal win_le_ok_2 : STD_LOGIC;
  signal win_ls_ok_2 : STD_LOGIC;
  signal \NLW_cnt_col_1_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cnt_line_1_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_eqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_geqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_geqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_leqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leqOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_leqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leqOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leqOp_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_leqOp_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_2__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data[15]_i_1\ : label is "soft_lutpair21";
begin
  \cnt_line_1_reg[11]_0\(11 downto 0) <= \^cnt_line_1_reg[11]_0\(11 downto 0);
  \out\(11 downto 0) <= \^out\(11 downto 0);
  vcrop_last <= \^vcrop_last\;
  vcrop_sof <= \^vcrop_sof\;
  vcrop_valid <= \^vcrop_valid\;
\cnt[1]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFAA"
    )
        port map (
      I0 => Q(0),
      I1 => \^vcrop_last\,
      I2 => \reg_reg[1]\(1),
      I3 => \^vcrop_valid\,
      O => \cnt_reg[1]\
    );
\cnt_col_1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => Q(0),
      I1 => valid_1,
      I2 => last_1,
      I3 => vfm_sof,
      I4 => vfm_valid,
      O => \cnt_col_1[0]_i_1_n_0\
    );
\cnt_col_1[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(3),
      O => \cnt_col_1[0]_i_3_n_0\
    );
\cnt_col_1[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(2),
      O => \cnt_col_1[0]_i_4_n_0\
    );
\cnt_col_1[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(1),
      O => \cnt_col_1[0]_i_5_n_0\
    );
\cnt_col_1[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(0),
      O => \cnt_col_1[0]_i_6_n_0\
    );
\cnt_col_1[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(7),
      O => \cnt_col_1[4]_i_2_n_0\
    );
\cnt_col_1[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(6),
      O => \cnt_col_1[4]_i_3_n_0\
    );
\cnt_col_1[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(5),
      O => \cnt_col_1[4]_i_4_n_0\
    );
\cnt_col_1[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(4),
      O => \cnt_col_1[4]_i_5_n_0\
    );
\cnt_col_1[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(11),
      O => \cnt_col_1[8]_i_2_n_0\
    );
\cnt_col_1[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(10),
      O => \cnt_col_1[8]_i_3_n_0\
    );
\cnt_col_1[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(9),
      O => \cnt_col_1[8]_i_4_n_0\
    );
\cnt_col_1[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(8),
      O => \cnt_col_1[8]_i_5_n_0\
    );
\cnt_col_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_1,
      D => \cnt_col_1_reg[0]_i_2_n_7\,
      Q => \^out\(0),
      R => \cnt_col_1[0]_i_1_n_0\
    );
\cnt_col_1_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_col_1_reg[0]_i_2_n_0\,
      CO(2) => \cnt_col_1_reg[0]_i_2_n_1\,
      CO(1) => \cnt_col_1_reg[0]_i_2_n_2\,
      CO(0) => \cnt_col_1_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_col_1_reg[0]_i_2_n_4\,
      O(2) => \cnt_col_1_reg[0]_i_2_n_5\,
      O(1) => \cnt_col_1_reg[0]_i_2_n_6\,
      O(0) => \cnt_col_1_reg[0]_i_2_n_7\,
      S(3) => \cnt_col_1[0]_i_3_n_0\,
      S(2) => \cnt_col_1[0]_i_4_n_0\,
      S(1) => \cnt_col_1[0]_i_5_n_0\,
      S(0) => \cnt_col_1[0]_i_6_n_0\
    );
\cnt_col_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_1,
      D => \cnt_col_1_reg[8]_i_1_n_5\,
      Q => \^out\(10),
      R => \cnt_col_1[0]_i_1_n_0\
    );
\cnt_col_1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_1,
      D => \cnt_col_1_reg[8]_i_1_n_4\,
      Q => \^out\(11),
      R => \cnt_col_1[0]_i_1_n_0\
    );
\cnt_col_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_1,
      D => \cnt_col_1_reg[0]_i_2_n_6\,
      Q => \^out\(1),
      R => \cnt_col_1[0]_i_1_n_0\
    );
\cnt_col_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_1,
      D => \cnt_col_1_reg[0]_i_2_n_5\,
      Q => \^out\(2),
      R => \cnt_col_1[0]_i_1_n_0\
    );
\cnt_col_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_1,
      D => \cnt_col_1_reg[0]_i_2_n_4\,
      Q => \^out\(3),
      R => \cnt_col_1[0]_i_1_n_0\
    );
\cnt_col_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_1,
      D => \cnt_col_1_reg[4]_i_1_n_7\,
      Q => \^out\(4),
      R => \cnt_col_1[0]_i_1_n_0\
    );
\cnt_col_1_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_col_1_reg[0]_i_2_n_0\,
      CO(3) => \cnt_col_1_reg[4]_i_1_n_0\,
      CO(2) => \cnt_col_1_reg[4]_i_1_n_1\,
      CO(1) => \cnt_col_1_reg[4]_i_1_n_2\,
      CO(0) => \cnt_col_1_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_col_1_reg[4]_i_1_n_4\,
      O(2) => \cnt_col_1_reg[4]_i_1_n_5\,
      O(1) => \cnt_col_1_reg[4]_i_1_n_6\,
      O(0) => \cnt_col_1_reg[4]_i_1_n_7\,
      S(3) => \cnt_col_1[4]_i_2_n_0\,
      S(2) => \cnt_col_1[4]_i_3_n_0\,
      S(1) => \cnt_col_1[4]_i_4_n_0\,
      S(0) => \cnt_col_1[4]_i_5_n_0\
    );
\cnt_col_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_1,
      D => \cnt_col_1_reg[4]_i_1_n_6\,
      Q => \^out\(5),
      R => \cnt_col_1[0]_i_1_n_0\
    );
\cnt_col_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_1,
      D => \cnt_col_1_reg[4]_i_1_n_5\,
      Q => \^out\(6),
      R => \cnt_col_1[0]_i_1_n_0\
    );
\cnt_col_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_1,
      D => \cnt_col_1_reg[4]_i_1_n_4\,
      Q => \^out\(7),
      R => \cnt_col_1[0]_i_1_n_0\
    );
\cnt_col_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_1,
      D => \cnt_col_1_reg[8]_i_1_n_7\,
      Q => \^out\(8),
      R => \cnt_col_1[0]_i_1_n_0\
    );
\cnt_col_1_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_col_1_reg[4]_i_1_n_0\,
      CO(3) => \NLW_cnt_col_1_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_col_1_reg[8]_i_1_n_1\,
      CO(1) => \cnt_col_1_reg[8]_i_1_n_2\,
      CO(0) => \cnt_col_1_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_col_1_reg[8]_i_1_n_4\,
      O(2) => \cnt_col_1_reg[8]_i_1_n_5\,
      O(1) => \cnt_col_1_reg[8]_i_1_n_6\,
      O(0) => \cnt_col_1_reg[8]_i_1_n_7\,
      S(3) => \cnt_col_1[8]_i_2_n_0\,
      S(2) => \cnt_col_1[8]_i_3_n_0\,
      S(1) => \cnt_col_1[8]_i_4_n_0\,
      S(0) => \cnt_col_1[8]_i_5_n_0\
    );
\cnt_col_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_1,
      D => \cnt_col_1_reg[8]_i_1_n_6\,
      Q => \^out\(9),
      R => \cnt_col_1[0]_i_1_n_0\
    );
\cnt_line_1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => Q(0),
      I1 => vfm_valid,
      I2 => vfm_sof,
      O => \cnt_line_1[0]_i_1_n_0\
    );
\cnt_line_1[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => valid_1,
      I1 => last_1,
      O => cnt_col_1
    );
\cnt_line_1[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(3),
      O => \cnt_line_1[0]_i_4_n_0\
    );
\cnt_line_1[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(2),
      O => \cnt_line_1[0]_i_5_n_0\
    );
\cnt_line_1[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(1),
      O => \cnt_line_1[0]_i_6_n_0\
    );
\cnt_line_1[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(0),
      O => \cnt_line_1[0]_i_7_n_0\
    );
\cnt_line_1[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(7),
      O => \cnt_line_1[4]_i_2_n_0\
    );
\cnt_line_1[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(6),
      O => \cnt_line_1[4]_i_3_n_0\
    );
\cnt_line_1[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(5),
      O => \cnt_line_1[4]_i_4_n_0\
    );
\cnt_line_1[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(4),
      O => \cnt_line_1[4]_i_5_n_0\
    );
\cnt_line_1[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(11),
      O => \cnt_line_1[8]_i_2_n_0\
    );
\cnt_line_1[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(10),
      O => \cnt_line_1[8]_i_3_n_0\
    );
\cnt_line_1[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(9),
      O => \cnt_line_1[8]_i_4_n_0\
    );
\cnt_line_1[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(8),
      O => \cnt_line_1[8]_i_5_n_0\
    );
\cnt_line_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cnt_col_1,
      D => \cnt_line_1_reg[0]_i_3_n_7\,
      Q => \^cnt_line_1_reg[11]_0\(0),
      R => \cnt_line_1[0]_i_1_n_0\
    );
\cnt_line_1_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_line_1_reg[0]_i_3_n_0\,
      CO(2) => \cnt_line_1_reg[0]_i_3_n_1\,
      CO(1) => \cnt_line_1_reg[0]_i_3_n_2\,
      CO(0) => \cnt_line_1_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_line_1_reg[0]_i_3_n_4\,
      O(2) => \cnt_line_1_reg[0]_i_3_n_5\,
      O(1) => \cnt_line_1_reg[0]_i_3_n_6\,
      O(0) => \cnt_line_1_reg[0]_i_3_n_7\,
      S(3) => \cnt_line_1[0]_i_4_n_0\,
      S(2) => \cnt_line_1[0]_i_5_n_0\,
      S(1) => \cnt_line_1[0]_i_6_n_0\,
      S(0) => \cnt_line_1[0]_i_7_n_0\
    );
\cnt_line_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cnt_col_1,
      D => \cnt_line_1_reg[8]_i_1_n_5\,
      Q => \^cnt_line_1_reg[11]_0\(10),
      R => \cnt_line_1[0]_i_1_n_0\
    );
\cnt_line_1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cnt_col_1,
      D => \cnt_line_1_reg[8]_i_1_n_4\,
      Q => \^cnt_line_1_reg[11]_0\(11),
      R => \cnt_line_1[0]_i_1_n_0\
    );
\cnt_line_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cnt_col_1,
      D => \cnt_line_1_reg[0]_i_3_n_6\,
      Q => \^cnt_line_1_reg[11]_0\(1),
      R => \cnt_line_1[0]_i_1_n_0\
    );
\cnt_line_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cnt_col_1,
      D => \cnt_line_1_reg[0]_i_3_n_5\,
      Q => \^cnt_line_1_reg[11]_0\(2),
      R => \cnt_line_1[0]_i_1_n_0\
    );
\cnt_line_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cnt_col_1,
      D => \cnt_line_1_reg[0]_i_3_n_4\,
      Q => \^cnt_line_1_reg[11]_0\(3),
      R => \cnt_line_1[0]_i_1_n_0\
    );
\cnt_line_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cnt_col_1,
      D => \cnt_line_1_reg[4]_i_1_n_7\,
      Q => \^cnt_line_1_reg[11]_0\(4),
      R => \cnt_line_1[0]_i_1_n_0\
    );
\cnt_line_1_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_line_1_reg[0]_i_3_n_0\,
      CO(3) => \cnt_line_1_reg[4]_i_1_n_0\,
      CO(2) => \cnt_line_1_reg[4]_i_1_n_1\,
      CO(1) => \cnt_line_1_reg[4]_i_1_n_2\,
      CO(0) => \cnt_line_1_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_line_1_reg[4]_i_1_n_4\,
      O(2) => \cnt_line_1_reg[4]_i_1_n_5\,
      O(1) => \cnt_line_1_reg[4]_i_1_n_6\,
      O(0) => \cnt_line_1_reg[4]_i_1_n_7\,
      S(3) => \cnt_line_1[4]_i_2_n_0\,
      S(2) => \cnt_line_1[4]_i_3_n_0\,
      S(1) => \cnt_line_1[4]_i_4_n_0\,
      S(0) => \cnt_line_1[4]_i_5_n_0\
    );
\cnt_line_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cnt_col_1,
      D => \cnt_line_1_reg[4]_i_1_n_6\,
      Q => \^cnt_line_1_reg[11]_0\(5),
      R => \cnt_line_1[0]_i_1_n_0\
    );
\cnt_line_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cnt_col_1,
      D => \cnt_line_1_reg[4]_i_1_n_5\,
      Q => \^cnt_line_1_reg[11]_0\(6),
      R => \cnt_line_1[0]_i_1_n_0\
    );
\cnt_line_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cnt_col_1,
      D => \cnt_line_1_reg[4]_i_1_n_4\,
      Q => \^cnt_line_1_reg[11]_0\(7),
      R => \cnt_line_1[0]_i_1_n_0\
    );
\cnt_line_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cnt_col_1,
      D => \cnt_line_1_reg[8]_i_1_n_7\,
      Q => \^cnt_line_1_reg[11]_0\(8),
      R => \cnt_line_1[0]_i_1_n_0\
    );
\cnt_line_1_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_line_1_reg[4]_i_1_n_0\,
      CO(3) => \NLW_cnt_line_1_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_line_1_reg[8]_i_1_n_1\,
      CO(1) => \cnt_line_1_reg[8]_i_1_n_2\,
      CO(0) => \cnt_line_1_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_line_1_reg[8]_i_1_n_4\,
      O(2) => \cnt_line_1_reg[8]_i_1_n_5\,
      O(1) => \cnt_line_1_reg[8]_i_1_n_6\,
      O(0) => \cnt_line_1_reg[8]_i_1_n_7\,
      S(3) => \cnt_line_1[8]_i_2_n_0\,
      S(2) => \cnt_line_1[8]_i_3_n_0\,
      S(1) => \cnt_line_1[8]_i_4_n_0\,
      S(0) => \cnt_line_1[8]_i_5_n_0\
    );
\cnt_line_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => cnt_col_1,
      D => \cnt_line_1_reg[8]_i_1_n_6\,
      Q => \^cnt_line_1_reg[11]_0\(9),
      R => \cnt_line_1[0]_i_1_n_0\
    );
\data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \^vcrop_valid\,
      I1 => \reg_reg[1]\(1),
      I2 => p_3_in,
      O => E(0)
    );
data_dly_I: entity work.\TySOM_1_7Z030_mipi_csi_0_delay_bus__parameterized3\
     port map (
      D(23 downto 0) => D(23 downto 0),
      clk => clk,
      \cnt_reg[0]\ => \cnt_reg[0]\,
      p_3_in => p_3_in,
      q(7 downto 0) => \^q\(7 downto 0),
      \reg_reg[1]\(1 downto 0) => \reg_reg[1]\(1 downto 0),
      \vfm_data_reg[31]\(31 downto 0) => \vfm_data_reg[31]\(31 downto 0)
    );
eqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp_carry_n_0,
      CO(2) => eqOp_carry_n_1,
      CO(1) => eqOp_carry_n_2,
      CO(0) => eqOp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_eqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => eqOp_carry_i_1_n_0,
      S(2) => eqOp_carry_i_2_n_0,
      S(1) => eqOp_carry_i_3_n_0,
      S(0) => eqOp_carry_i_4_n_0
    );
eqOp_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^out\(9),
      I1 => \reg_reg[11]\(9),
      I2 => \reg_reg[11]\(11),
      I3 => \^out\(11),
      I4 => \reg_reg[11]\(10),
      I5 => \^out\(10),
      O => eqOp_carry_i_1_n_0
    );
eqOp_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^out\(6),
      I1 => \reg_reg[11]\(6),
      I2 => \reg_reg[11]\(8),
      I3 => \^out\(8),
      I4 => \reg_reg[11]\(7),
      I5 => \^out\(7),
      O => eqOp_carry_i_2_n_0
    );
eqOp_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^out\(3),
      I1 => \reg_reg[11]\(3),
      I2 => \reg_reg[11]\(5),
      I3 => \^out\(5),
      I4 => \reg_reg[11]\(4),
      I5 => \^out\(4),
      O => eqOp_carry_i_3_n_0
    );
eqOp_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^out\(0),
      I1 => \reg_reg[11]\(0),
      I2 => \reg_reg[11]\(2),
      I3 => \^out\(2),
      I4 => \reg_reg[11]\(1),
      I5 => \^out\(1),
      O => eqOp_carry_i_4_n_0
    );
geqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => geqOp_carry_n_0,
      CO(2) => geqOp_carry_n_1,
      CO(1) => geqOp_carry_n_2,
      CO(0) => geqOp_carry_n_3,
      CYINIT => '1',
      DI(3) => geqOp_carry_i_1_n_0,
      DI(2) => geqOp_carry_i_2_n_0,
      DI(1) => geqOp_carry_i_3_n_0,
      DI(0) => geqOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_geqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => geqOp_carry_i_5_n_0,
      S(2) => geqOp_carry_i_6_n_0,
      S(1) => geqOp_carry_i_7_n_0,
      S(0) => geqOp_carry_i_8_n_0
    );
\geqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => geqOp_carry_n_0,
      CO(3 downto 2) => \NLW_geqOp_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \geqOp_carry__0_n_2\,
      CO(0) => \geqOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \geqOp_carry__0_i_1_n_0\,
      DI(0) => \geqOp_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_geqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \geqOp_carry__0_i_3_n_0\,
      S(0) => \geqOp_carry__0_i_4_n_0\
    );
\geqOp_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(10),
      I1 => \reg_reg[11]_0\(10),
      I2 => \reg_reg[11]_0\(11),
      I3 => \^cnt_line_1_reg[11]_0\(11),
      O => \geqOp_carry__0_i_1_n_0\
    );
\geqOp_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(8),
      I1 => \reg_reg[11]_0\(8),
      I2 => \reg_reg[11]_0\(9),
      I3 => \^cnt_line_1_reg[11]_0\(9),
      O => \geqOp_carry__0_i_2_n_0\
    );
\geqOp_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(10),
      I1 => \reg_reg[11]_0\(10),
      I2 => \^cnt_line_1_reg[11]_0\(11),
      I3 => \reg_reg[11]_0\(11),
      O => \geqOp_carry__0_i_3_n_0\
    );
\geqOp_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(8),
      I1 => \reg_reg[11]_0\(8),
      I2 => \^cnt_line_1_reg[11]_0\(9),
      I3 => \reg_reg[11]_0\(9),
      O => \geqOp_carry__0_i_4_n_0\
    );
geqOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(6),
      I1 => \reg_reg[11]_0\(6),
      I2 => \reg_reg[11]_0\(7),
      I3 => \^cnt_line_1_reg[11]_0\(7),
      O => geqOp_carry_i_1_n_0
    );
geqOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(4),
      I1 => \reg_reg[11]_0\(4),
      I2 => \reg_reg[11]_0\(5),
      I3 => \^cnt_line_1_reg[11]_0\(5),
      O => geqOp_carry_i_2_n_0
    );
geqOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(2),
      I1 => \reg_reg[11]_0\(2),
      I2 => \reg_reg[11]_0\(3),
      I3 => \^cnt_line_1_reg[11]_0\(3),
      O => geqOp_carry_i_3_n_0
    );
geqOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(0),
      I1 => \reg_reg[11]_0\(0),
      I2 => \reg_reg[11]_0\(1),
      I3 => \^cnt_line_1_reg[11]_0\(1),
      O => geqOp_carry_i_4_n_0
    );
geqOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(6),
      I1 => \reg_reg[11]_0\(6),
      I2 => \^cnt_line_1_reg[11]_0\(7),
      I3 => \reg_reg[11]_0\(7),
      O => geqOp_carry_i_5_n_0
    );
geqOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(4),
      I1 => \reg_reg[11]_0\(4),
      I2 => \^cnt_line_1_reg[11]_0\(5),
      I3 => \reg_reg[11]_0\(5),
      O => geqOp_carry_i_6_n_0
    );
geqOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(2),
      I1 => \reg_reg[11]_0\(2),
      I2 => \^cnt_line_1_reg[11]_0\(3),
      I3 => \reg_reg[11]_0\(3),
      O => geqOp_carry_i_7_n_0
    );
geqOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^cnt_line_1_reg[11]_0\(0),
      I1 => \reg_reg[11]_0\(0),
      I2 => \^cnt_line_1_reg[11]_0\(1),
      I3 => \reg_reg[11]_0\(1),
      O => geqOp_carry_i_8_n_0
    );
\geqOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \geqOp_inferred__0/i__carry_n_0\,
      CO(2) => \geqOp_inferred__0/i__carry_n_1\,
      CO(1) => \geqOp_inferred__0/i__carry_n_2\,
      CO(0) => \geqOp_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__2_n_0\,
      DI(2) => \i__carry_i_2__2_n_0\,
      DI(1) => \i__carry_i_3__2_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\geqOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_geqOp_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \geqOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \geqOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry__0_i_1__2_n_0\,
      DI(0) => \i__carry__0_i_2__2_n_0\,
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_3__2_n_0\,
      S(0) => \i__carry__0_i_4__2_n_0\
    );
\i__carry__0_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^out\(10),
      I1 => \reg_reg[11]_1\(10),
      I2 => \reg_reg[11]_1\(11),
      I3 => \^out\(11),
      O => \i__carry__0_i_1__2_n_0\
    );
\i__carry__0_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^out\(8),
      I1 => \reg_reg[11]_1\(8),
      I2 => \reg_reg[11]_1\(9),
      I3 => \^out\(9),
      O => \i__carry__0_i_2__2_n_0\
    );
\i__carry__0_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^out\(10),
      I1 => \reg_reg[11]_1\(10),
      I2 => \^out\(11),
      I3 => \reg_reg[11]_1\(11),
      O => \i__carry__0_i_3__2_n_0\
    );
\i__carry__0_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^out\(8),
      I1 => \reg_reg[11]_1\(8),
      I2 => \^out\(9),
      I3 => \reg_reg[11]_1\(9),
      O => \i__carry__0_i_4__2_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^out\(6),
      I1 => \reg_reg[11]_1\(6),
      I2 => \reg_reg[11]_1\(7),
      I3 => \^out\(7),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^out\(4),
      I1 => \reg_reg[11]_1\(4),
      I2 => \reg_reg[11]_1\(5),
      I3 => \^out\(5),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^out\(2),
      I1 => \reg_reg[11]_1\(2),
      I2 => \reg_reg[11]_1\(3),
      I3 => \^out\(3),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^out\(0),
      I1 => \reg_reg[11]_1\(0),
      I2 => \reg_reg[11]_1\(1),
      I3 => \^out\(1),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^out\(6),
      I1 => \reg_reg[11]_1\(6),
      I2 => \^out\(7),
      I3 => \reg_reg[11]_1\(7),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^out\(4),
      I1 => \reg_reg[11]_1\(4),
      I2 => \^out\(5),
      I3 => \reg_reg[11]_1\(5),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^out\(2),
      I1 => \reg_reg[11]_1\(2),
      I2 => \^out\(3),
      I3 => \reg_reg[11]_1\(3),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^out\(0),
      I1 => \reg_reg[11]_1\(0),
      I2 => \^out\(1),
      I3 => \reg_reg[11]_1\(1),
      O => \i__carry_i_8__0_n_0\
    );
last_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vfm_last,
      Q => last_1,
      R => '0'
    );
last_2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => last_1,
      Q => last_2,
      R => '0'
    );
last_3_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => p_1_in,
      I1 => win_ce_last_2,
      I2 => last_2,
      O => last_30
    );
last_3_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => last_30,
      Q => \^vcrop_last\,
      R => '0'
    );
leqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => leqOp_carry_n_0,
      CO(2) => leqOp_carry_n_1,
      CO(1) => leqOp_carry_n_2,
      CO(0) => leqOp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_leqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\leqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => leqOp_carry_n_0,
      CO(3 downto 2) => \NLW_leqOp_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \leqOp_carry__0_n_2\,
      CO(0) => \leqOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \reg_reg[10]\(1 downto 0),
      O(3 downto 0) => \NLW_leqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1 downto 0) => \reg_reg[10]_0\(1 downto 0)
    );
\leqOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \leqOp_inferred__0/i__carry_n_0\,
      CO(2) => \leqOp_inferred__0/i__carry_n_1\,
      CO(1) => \leqOp_inferred__0/i__carry_n_2\,
      CO(0) => \leqOp_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \reg_reg[6]\(3 downto 0),
      O(3 downto 0) => \NLW_leqOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \reg_reg[6]_0\(3 downto 0)
    );
\leqOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \leqOp_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_leqOp_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \leqOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \leqOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \reg_reg[10]_1\(1 downto 0),
      O(3 downto 0) => \NLW_leqOp_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1 downto 0) => \reg_reg[10]_2\(1 downto 0)
    );
\out_valid_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA82000082"
    )
        port map (
      I0 => \^vcrop_valid\,
      I1 => \cnt_reg[0]\,
      I2 => \reg_reg[1]\(0),
      I3 => p_3_in,
      I4 => \reg_reg[1]\(1),
      I5 => \^vcrop_last\,
      O => out_valid_i0
    );
sof_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vfm_sof,
      Q => sof_1,
      R => '0'
    );
sof_2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sof_1,
      Q => sof_2,
      R => '0'
    );
sof_3_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^vcrop_valid\,
      I1 => \^vcrop_sof\,
      I2 => valid_2,
      I3 => sof_2,
      O => sof_3_i_1_n_0
    );
sof_3_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sof_3_i_1_n_0,
      Q => \^vcrop_sof\,
      R => '0'
    );
valid_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vfm_valid,
      Q => valid_1,
      R => '0'
    );
valid_2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => valid_1,
      Q => valid_2,
      R => '0'
    );
valid_3_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => win_ls_ok_2,
      I1 => win_cs_ok_2,
      I2 => valid_2,
      I3 => win_ce_ok_2,
      I4 => win_le_ok_2,
      O => p_1_in
    );
valid_3_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in,
      Q => \^vcrop_valid\,
      R => '0'
    );
win_ce_last_2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => eqOp_carry_n_0,
      Q => win_ce_last_2,
      R => '0'
    );
win_ce_ok_2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \leqOp_carry__0_n_2\,
      Q => win_ce_ok_2,
      R => '0'
    );
win_cs_ok_2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \geqOp_inferred__0/i__carry__0_n_2\,
      Q => win_cs_ok_2,
      R => '0'
    );
win_le_ok_2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \leqOp_inferred__0/i__carry__0_n_2\,
      Q => win_le_ok_2,
      R => '0'
    );
win_ls_ok_2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \geqOp_carry__0_n_2\,
      Q => win_ls_ok_2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_vid_debayer is
  port (
    vfm_valid_reg : out STD_LOGIC;
    vfm_last_reg : out STD_LOGIC;
    vfm_sof_reg : out STD_LOGIC;
    \vfm_data_reg[26]\ : out STD_LOGIC_VECTOR ( 18 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \vfm_data_reg[10]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \vfm_data_reg[11]\ : out STD_LOGIC;
    \vfm_data_reg[12]\ : out STD_LOGIC;
    \vfm_data_reg[13]\ : out STD_LOGIC;
    \vfm_data_reg[14]\ : out STD_LOGIC;
    \vfm_data_reg[15]\ : out STD_LOGIC;
    \vfm_data_reg[27]\ : out STD_LOGIC;
    \vfm_data_reg[28]\ : out STD_LOGIC;
    \vfm_data_reg[29]\ : out STD_LOGIC;
    \vfm_data_reg[30]\ : out STD_LOGIC;
    \vfm_data_reg[31]\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    pause_reg : in STD_LOGIC;
    \reg_reg[17]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    vum_last_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_reg[16]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    DOP : in STD_LOGIC_VECTOR ( 0 to 0 );
    vum_sof_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    vin_sof : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DO : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \vum_data_reg[9]\ : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_vid_debayer : entity is "vid_debayer";
end TySOM_1_7Z030_mipi_csi_0_vid_debayer;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_vid_debayer is
  signal ADDRARDADDR : STD_LOGIC_VECTOR ( 14 downto 4 );
  signal ADDRBWRADDR : STD_LOGIC_VECTOR ( 14 downto 4 );
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal R : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal d0 : STD_LOGIC;
  signal data_dly_I_n_0 : STD_LOGIC;
  signal data_dly_I_n_1 : STD_LOGIC;
  signal data_dly_I_n_2 : STD_LOGIC;
  signal data_dly_I_n_3 : STD_LOGIC;
  signal data_dly_I_n_4 : STD_LOGIC;
  signal data_dly_I_n_5 : STD_LOGIC;
  signal data_dly_I_n_6 : STD_LOGIC;
  signal data_dly_I_n_7 : STD_LOGIC;
  signal last_x : STD_LOGIC_VECTOR ( 1 to 3 );
  signal \lbuf_raddr_1[10]_i_3_n_0\ : STD_LOGIC;
  signal lbuf_raw_do : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal lbuf_raw_dop : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal lbuf_wdata_3_0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_1_in_0 : STD_LOGIC_VECTOR ( 10 downto 2 );
  signal p_2_in : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal p_4_in : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \pix_blue_4[10]_i_2_n_0\ : STD_LOGIC;
  signal \pix_blue_4[10]_i_3_n_0\ : STD_LOGIC;
  signal \pix_blue_4[10]_i_4_n_0\ : STD_LOGIC;
  signal \pix_blue_4[10]_i_7_n_0\ : STD_LOGIC;
  signal \pix_blue_4[10]_i_8_n_0\ : STD_LOGIC;
  signal \pix_blue_4[3]_i_10_n_0\ : STD_LOGIC;
  signal \pix_blue_4[3]_i_11_n_0\ : STD_LOGIC;
  signal \pix_blue_4[3]_i_2_n_0\ : STD_LOGIC;
  signal \pix_blue_4[3]_i_3_n_0\ : STD_LOGIC;
  signal \pix_blue_4[3]_i_4_n_0\ : STD_LOGIC;
  signal \pix_blue_4[3]_i_5_n_0\ : STD_LOGIC;
  signal \pix_blue_4[7]_i_10_n_0\ : STD_LOGIC;
  signal \pix_blue_4[7]_i_11_n_0\ : STD_LOGIC;
  signal \pix_blue_4[7]_i_12_n_0\ : STD_LOGIC;
  signal \pix_blue_4[7]_i_13_n_0\ : STD_LOGIC;
  signal \pix_blue_4[7]_i_2_n_0\ : STD_LOGIC;
  signal \pix_blue_4[7]_i_3_n_0\ : STD_LOGIC;
  signal \pix_blue_4[7]_i_4_n_0\ : STD_LOGIC;
  signal \pix_blue_4[7]_i_5_n_0\ : STD_LOGIC;
  signal \pix_green_4[10]_i_2_n_0\ : STD_LOGIC;
  signal \pix_green_4[10]_i_3_n_0\ : STD_LOGIC;
  signal \pix_green_4[10]_i_4_n_0\ : STD_LOGIC;
  signal \pix_green_4[10]_i_5_n_0\ : STD_LOGIC;
  signal \pix_green_4[10]_i_6_n_0\ : STD_LOGIC;
  signal \pix_green_4[3]_i_2_n_0\ : STD_LOGIC;
  signal \pix_green_4[3]_i_3_n_0\ : STD_LOGIC;
  signal \pix_green_4[3]_i_4_n_0\ : STD_LOGIC;
  signal \pix_green_4[3]_i_5_n_0\ : STD_LOGIC;
  signal \pix_green_4[3]_i_6_n_0\ : STD_LOGIC;
  signal \pix_green_4[3]_i_7_n_0\ : STD_LOGIC;
  signal \pix_green_4[3]_i_8_n_0\ : STD_LOGIC;
  signal \pix_green_4[3]_i_9_n_0\ : STD_LOGIC;
  signal \pix_green_4[7]_i_2_n_0\ : STD_LOGIC;
  signal \pix_green_4[7]_i_3_n_0\ : STD_LOGIC;
  signal \pix_green_4[7]_i_4_n_0\ : STD_LOGIC;
  signal \pix_green_4[7]_i_5_n_0\ : STD_LOGIC;
  signal \pix_green_4[7]_i_6_n_0\ : STD_LOGIC;
  signal \pix_green_4[7]_i_7_n_0\ : STD_LOGIC;
  signal \pix_green_4[7]_i_8_n_0\ : STD_LOGIC;
  signal \pix_green_4[7]_i_9_n_0\ : STD_LOGIC;
  signal \pix_green_4_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \pix_green_4_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \pix_green_4_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \pix_green_4_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \pix_green_4_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \pix_green_4_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \pix_green_4_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \pix_green_4_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \pix_green_4_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \pix_green_4_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \pix_green_4_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \pix_green_4_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \pix_green_4_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \pix_green_4_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \pix_green_4_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \pix_green_4_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \pix_green_4_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \pix_green_4_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal pix_l02c0_3 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \pix_l02c1_3[3]_i_2_n_0\ : STD_LOGIC;
  signal \pix_l02c1_3[3]_i_3_n_0\ : STD_LOGIC;
  signal \pix_l02c1_3[3]_i_4_n_0\ : STD_LOGIC;
  signal \pix_l02c1_3[3]_i_5_n_0\ : STD_LOGIC;
  signal \pix_l02c1_3[7]_i_2_n_0\ : STD_LOGIC;
  signal \pix_l02c1_3[7]_i_3_n_0\ : STD_LOGIC;
  signal \pix_l02c1_3[7]_i_4_n_0\ : STD_LOGIC;
  signal \pix_l02c1_3[7]_i_5_n_0\ : STD_LOGIC;
  signal \pix_l02c1_3[9]_i_2_n_0\ : STD_LOGIC;
  signal pix_l1c0_3 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \pix_red_4[10]_i_1_n_0\ : STD_LOGIC;
  signal \pix_red_4[10]_i_4_n_0\ : STD_LOGIC;
  signal \pix_red_4[10]_i_5_n_0\ : STD_LOGIC;
  signal \pix_red_4[10]_i_6_n_0\ : STD_LOGIC;
  signal \pix_red_4[3]_i_1_n_0\ : STD_LOGIC;
  signal \pix_red_4[3]_i_3_n_0\ : STD_LOGIC;
  signal \pix_red_4[3]_i_4_n_0\ : STD_LOGIC;
  signal \pix_red_4[3]_i_5_n_0\ : STD_LOGIC;
  signal \pix_red_4[3]_i_6_n_0\ : STD_LOGIC;
  signal \pix_red_4[4]_i_1_n_0\ : STD_LOGIC;
  signal \pix_red_4[4]_i_3_n_0\ : STD_LOGIC;
  signal \pix_red_4[4]_i_4_n_0\ : STD_LOGIC;
  signal \pix_red_4[4]_i_5_n_0\ : STD_LOGIC;
  signal \pix_red_4[4]_i_6_n_0\ : STD_LOGIC;
  signal \pix_red_4[5]_i_1_n_0\ : STD_LOGIC;
  signal \pix_red_4[6]_i_1_n_0\ : STD_LOGIC;
  signal \pix_red_4[7]_i_1_n_0\ : STD_LOGIC;
  signal \pix_red_4[7]_i_3_n_0\ : STD_LOGIC;
  signal \pix_red_4[7]_i_4_n_0\ : STD_LOGIC;
  signal \pix_red_4[7]_i_5_n_0\ : STD_LOGIC;
  signal \pix_red_4[7]_i_6_n_0\ : STD_LOGIC;
  signal \pix_red_4[8]_i_1_n_0\ : STD_LOGIC;
  signal \pix_red_4[8]_i_3_n_0\ : STD_LOGIC;
  signal \pix_red_4[8]_i_4_n_0\ : STD_LOGIC;
  signal \pix_red_4[8]_i_5_n_0\ : STD_LOGIC;
  signal \pix_red_4[8]_i_6_n_0\ : STD_LOGIC;
  signal \pix_red_4[9]_i_1_n_0\ : STD_LOGIC;
  signal \pix_red_4_reg[10]_i_3_n_1\ : STD_LOGIC;
  signal \pix_red_4_reg[10]_i_3_n_3\ : STD_LOGIC;
  signal \pix_red_4_reg[10]_i_3_n_6\ : STD_LOGIC;
  signal \pix_red_4_reg[10]_i_3_n_7\ : STD_LOGIC;
  signal \pix_red_4_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \pix_red_4_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \pix_red_4_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \pix_red_4_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \pix_red_4_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \pix_red_4_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \pix_red_4_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \pix_red_4_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \pix_red_4_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \pix_red_4_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \pix_red_4_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \pix_red_4_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \pix_red_4_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \pix_red_4_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \pix_red_4_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \pix_red_4_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \pix_red_4_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \pix_red_4_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \pix_red_4_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \pix_red_4_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \pix_red_4_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal sel_col_3_i_1_n_0 : STD_LOGIC;
  signal sel_col_3_reg_n_0 : STD_LOGIC;
  signal sel_line_3_i_1_n_0 : STD_LOGIC;
  signal sel_line_3_reg_n_0 : STD_LOGIC;
  signal sof_x : STD_LOGIC_VECTOR ( 1 to 3 );
  signal valid_x : STD_LOGIC_VECTOR ( 1 to 3 );
  signal vcfm_data : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal vcfm_data_reg : STD_LOGIC_VECTOR ( 26 downto 24 );
  signal vcol_blue : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vcol_green : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal vcol_last : STD_LOGIC;
  signal vcol_red : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vcol_sof : STD_LOGIC;
  signal vcol_valid : STD_LOGIC;
  signal NLW_line_buf_I_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_line_buf_I_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_line_buf_I_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_line_buf_I_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_line_buf_I_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_line_buf_I_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_line_buf_I_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_line_buf_I_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_line_buf_I_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_line_buf_I_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_pix_green_4_reg[10]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pix_green_4_reg[10]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pix_green_4_reg[3]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_pix_red_4_reg[10]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pix_red_4_reg[10]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pix_red_4_reg[10]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pix_red_4_reg[10]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pix_red_4_reg[3]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \lbuf_raddr_1[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \lbuf_raddr_1[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \lbuf_raddr_1[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \lbuf_raddr_1[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \lbuf_raddr_1[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \lbuf_raddr_1[7]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \lbuf_raddr_1[8]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \lbuf_raddr_1[9]_i_1\ : label is "soft_lutpair23";
  attribute box_type : string;
  attribute box_type of line_buf_I : label is "PRIMITIVE";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
addr_dly_I: entity work.TySOM_1_7Z030_mipi_csi_0_delay_bus
     port map (
      Q(10 downto 0) => ADDRARDADDR(14 downto 4),
      clk => clk,
      \^q\(10 downto 0) => ADDRBWRADDR(14 downto 4)
    );
data_dly_I: entity work.\TySOM_1_7Z030_mipi_csi_0_delay_bus__parameterized1\
     port map (
      D(7) => data_dly_I_n_0,
      D(6) => data_dly_I_n_1,
      D(5) => data_dly_I_n_2,
      D(4) => data_dly_I_n_3,
      D(3) => data_dly_I_n_4,
      D(2) => data_dly_I_n_5,
      D(1) => data_dly_I_n_6,
      D(0) => data_dly_I_n_7,
      DI(3) => \pix_blue_4[3]_i_2_n_0\,
      DI(2) => \pix_blue_4[3]_i_3_n_0\,
      DI(1) => \pix_blue_4[3]_i_4_n_0\,
      DI(0) => \pix_blue_4[3]_i_5_n_0\,
      DOADO(6 downto 0) => lbuf_raw_do(15 downto 9),
      DOPADOP(1 downto 0) => lbuf_raw_dop(1 downto 0),
      O(0) => p_2_in(1),
      Q(1 downto 0) => pix_l02c0_3(1 downto 0),
      R(9 downto 0) => R(9 downto 0),
      S(0) => \pix_blue_4[10]_i_4_n_0\,
      clk => clk,
      line_buf_I(3) => \pix_l02c1_3[3]_i_2_n_0\,
      line_buf_I(2) => \pix_l02c1_3[3]_i_3_n_0\,
      line_buf_I(1) => \pix_l02c1_3[3]_i_4_n_0\,
      line_buf_I(0) => \pix_l02c1_3[3]_i_5_n_0\,
      line_buf_I_0(3) => \pix_l02c1_3[7]_i_2_n_0\,
      line_buf_I_0(2) => \pix_l02c1_3[7]_i_3_n_0\,
      line_buf_I_0(1) => \pix_l02c1_3[7]_i_4_n_0\,
      line_buf_I_0(0) => \pix_l02c1_3[7]_i_5_n_0\,
      line_buf_I_1(0) => \pix_l02c1_3[9]_i_2_n_0\,
      \pix_l02c0_3_reg[2]\ => \pix_blue_4[3]_i_11_n_0\,
      \pix_l02c0_3_reg[3]\ => \pix_blue_4[3]_i_10_n_0\,
      \pix_l02c0_3_reg[4]\ => \pix_blue_4[7]_i_13_n_0\,
      \pix_l02c0_3_reg[5]\ => \pix_blue_4[7]_i_12_n_0\,
      \pix_l02c0_3_reg[6]\ => \pix_blue_4[7]_i_11_n_0\,
      \pix_l02c0_3_reg[7]\ => \pix_blue_4[7]_i_10_n_0\,
      \pix_l02c0_3_reg[8]\ => \pix_blue_4[10]_i_8_n_0\,
      \pix_l02c0_3_reg[9]\ => \pix_blue_4[10]_i_7_n_0\,
      \pix_l02c1_3_reg[0]\(0) => p_4_in(1),
      \^q\(8 downto 0) => lbuf_wdata_3_0(8 downto 0),
      sel_col_3_reg => sel_col_3_reg_n_0,
      sel_line_3_reg(3) => \pix_blue_4[7]_i_2_n_0\,
      sel_line_3_reg(2) => \pix_blue_4[7]_i_3_n_0\,
      sel_line_3_reg(1) => \pix_blue_4[7]_i_4_n_0\,
      sel_line_3_reg(0) => \pix_blue_4[7]_i_5_n_0\,
      sel_line_3_reg_0(1) => \pix_blue_4[10]_i_2_n_0\,
      sel_line_3_reg_0(0) => \pix_blue_4[10]_i_3_n_0\,
      sel_line_3_reg_1 => sel_line_3_reg_n_0,
      \vum_data_reg[9]\(8 downto 0) => \vum_data_reg[9]\(8 downto 0)
    );
\last_x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vum_last_reg(0),
      Q => last_x(1),
      R => '0'
    );
\last_x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => last_x(1),
      Q => last_x(2),
      R => '0'
    );
\last_x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => last_x(2),
      Q => last_x(3),
      R => '0'
    );
\last_x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => last_x(3),
      Q => vcol_last,
      R => '0'
    );
\lbuf_raddr_1[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ADDRARDADDR(4),
      O => \plusOp__2\(0)
    );
\lbuf_raddr_1[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => D(0),
      I1 => vum_sof_reg(0),
      I2 => valid_x(1),
      I3 => last_x(1),
      O => d0
    );
\lbuf_raddr_1[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => ADDRARDADDR(12),
      I1 => ADDRARDADDR(10),
      I2 => \lbuf_raddr_1[10]_i_3_n_0\,
      I3 => ADDRARDADDR(11),
      I4 => ADDRARDADDR(13),
      I5 => ADDRARDADDR(14),
      O => \plusOp__2\(10)
    );
\lbuf_raddr_1[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ADDRARDADDR(9),
      I1 => ADDRARDADDR(7),
      I2 => ADDRARDADDR(5),
      I3 => ADDRARDADDR(4),
      I4 => ADDRARDADDR(6),
      I5 => ADDRARDADDR(8),
      O => \lbuf_raddr_1[10]_i_3_n_0\
    );
\lbuf_raddr_1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADDRARDADDR(4),
      I1 => ADDRARDADDR(5),
      O => \plusOp__2\(1)
    );
\lbuf_raddr_1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => ADDRARDADDR(4),
      I1 => ADDRARDADDR(5),
      I2 => ADDRARDADDR(6),
      O => \plusOp__2\(2)
    );
\lbuf_raddr_1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => ADDRARDADDR(5),
      I1 => ADDRARDADDR(4),
      I2 => ADDRARDADDR(6),
      I3 => ADDRARDADDR(7),
      O => \plusOp__2\(3)
    );
\lbuf_raddr_1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ADDRARDADDR(6),
      I1 => ADDRARDADDR(4),
      I2 => ADDRARDADDR(5),
      I3 => ADDRARDADDR(7),
      I4 => ADDRARDADDR(8),
      O => \plusOp__2\(4)
    );
\lbuf_raddr_1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => ADDRARDADDR(7),
      I1 => ADDRARDADDR(5),
      I2 => ADDRARDADDR(4),
      I3 => ADDRARDADDR(6),
      I4 => ADDRARDADDR(8),
      I5 => ADDRARDADDR(9),
      O => \plusOp__2\(5)
    );
\lbuf_raddr_1[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lbuf_raddr_1[10]_i_3_n_0\,
      I1 => ADDRARDADDR(10),
      O => \plusOp__2\(6)
    );
\lbuf_raddr_1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \lbuf_raddr_1[10]_i_3_n_0\,
      I1 => ADDRARDADDR(10),
      I2 => ADDRARDADDR(11),
      O => \plusOp__2\(7)
    );
\lbuf_raddr_1[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => ADDRARDADDR(10),
      I1 => \lbuf_raddr_1[10]_i_3_n_0\,
      I2 => ADDRARDADDR(11),
      I3 => ADDRARDADDR(12),
      O => \plusOp__2\(8)
    );
\lbuf_raddr_1[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ADDRARDADDR(11),
      I1 => \lbuf_raddr_1[10]_i_3_n_0\,
      I2 => ADDRARDADDR(10),
      I3 => ADDRARDADDR(12),
      I4 => ADDRARDADDR(13),
      O => \plusOp__2\(9)
    );
\lbuf_raddr_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(1),
      D => \plusOp__2\(0),
      Q => ADDRARDADDR(4),
      R => d0
    );
\lbuf_raddr_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(1),
      D => \plusOp__2\(10),
      Q => ADDRARDADDR(14),
      R => d0
    );
\lbuf_raddr_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(1),
      D => \plusOp__2\(1),
      Q => ADDRARDADDR(5),
      R => d0
    );
\lbuf_raddr_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(1),
      D => \plusOp__2\(2),
      Q => ADDRARDADDR(6),
      R => d0
    );
\lbuf_raddr_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(1),
      D => \plusOp__2\(3),
      Q => ADDRARDADDR(7),
      R => d0
    );
\lbuf_raddr_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(1),
      D => \plusOp__2\(4),
      Q => ADDRARDADDR(8),
      R => d0
    );
\lbuf_raddr_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(1),
      D => \plusOp__2\(5),
      Q => ADDRARDADDR(9),
      R => d0
    );
\lbuf_raddr_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(1),
      D => \plusOp__2\(6),
      Q => ADDRARDADDR(10),
      R => d0
    );
\lbuf_raddr_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(1),
      D => \plusOp__2\(7),
      Q => ADDRARDADDR(11),
      R => d0
    );
\lbuf_raddr_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(1),
      D => \plusOp__2\(8),
      Q => ADDRARDADDR(12),
      R => d0
    );
\lbuf_raddr_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(1),
      D => \plusOp__2\(9),
      Q => ADDRARDADDR(13),
      R => d0
    );
line_buf_I: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '0',
      ADDRARDADDR(14 downto 4) => ADDRARDADDR(14 downto 4),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(15) => '0',
      ADDRBWRADDR(14 downto 4) => ADDRBWRADDR(14 downto 4),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_line_buf_I_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_line_buf_I_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => clk,
      DBITERR => NLW_line_buf_I_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 16) => B"0000000000000000",
      DIBDI(15 downto 9) => lbuf_raw_do(6 downto 0),
      DIBDI(8 downto 0) => lbuf_wdata_3_0(8 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 2) => B"00",
      DIPBDIP(1 downto 0) => lbuf_raw_do(8 downto 7),
      DOADO(31 downto 16) => NLW_line_buf_I_DOADO_UNCONNECTED(31 downto 16),
      DOADO(15 downto 0) => lbuf_raw_do(15 downto 0),
      DOBDO(31 downto 0) => NLW_line_buf_I_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 2) => NLW_line_buf_I_DOPADOP_UNCONNECTED(3 downto 2),
      DOPADOP(1 downto 0) => lbuf_raw_dop(1 downto 0),
      DOPBDOP(3 downto 0) => NLW_line_buf_I_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_line_buf_I_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => NLW_line_buf_I_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_line_buf_I_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 2) => B"000000",
      WEBWE(1) => valid_x(3),
      WEBWE(0) => valid_x(3)
    );
\pix_blue_4[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => R(9),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_blue_4[10]_i_2_n_0\
    );
\pix_blue_4[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => R(8),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_blue_4[10]_i_3_n_0\
    );
\pix_blue_4[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAF0CC00"
    )
        port map (
      I0 => p_1_in_0(10),
      I1 => p_2_in(10),
      I2 => p_4_in(10),
      I3 => sel_line_3_reg_n_0,
      I4 => sel_col_3_reg_n_0,
      O => \pix_blue_4[10]_i_4_n_0\
    );
\pix_blue_4[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF2CEC23E320E02"
    )
        port map (
      I0 => pix_l02c0_3(9),
      I1 => sel_col_3_reg_n_0,
      I2 => sel_line_3_reg_n_0,
      I3 => p_4_in(9),
      I4 => p_2_in(9),
      I5 => p_1_in_0(9),
      O => \pix_blue_4[10]_i_7_n_0\
    );
\pix_blue_4[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF2CEC23E320E02"
    )
        port map (
      I0 => pix_l02c0_3(8),
      I1 => sel_col_3_reg_n_0,
      I2 => sel_line_3_reg_n_0,
      I3 => p_4_in(8),
      I4 => p_2_in(8),
      I5 => p_1_in_0(8),
      O => \pix_blue_4[10]_i_8_n_0\
    );
\pix_blue_4[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF2CEC23E320E02"
    )
        port map (
      I0 => pix_l02c0_3(3),
      I1 => sel_col_3_reg_n_0,
      I2 => sel_line_3_reg_n_0,
      I3 => p_4_in(3),
      I4 => p_2_in(3),
      I5 => p_1_in_0(3),
      O => \pix_blue_4[3]_i_10_n_0\
    );
\pix_blue_4[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF2CEC23E320E02"
    )
        port map (
      I0 => pix_l02c0_3(2),
      I1 => sel_col_3_reg_n_0,
      I2 => sel_line_3_reg_n_0,
      I3 => p_4_in(2),
      I4 => p_2_in(2),
      I5 => p_1_in_0(2),
      O => \pix_blue_4[3]_i_11_n_0\
    );
\pix_blue_4[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => R(3),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_blue_4[3]_i_2_n_0\
    );
\pix_blue_4[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => R(2),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_blue_4[3]_i_3_n_0\
    );
\pix_blue_4[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => R(1),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_blue_4[3]_i_4_n_0\
    );
\pix_blue_4[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => R(0),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_blue_4[3]_i_5_n_0\
    );
\pix_blue_4[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF2CEC23E320E02"
    )
        port map (
      I0 => pix_l02c0_3(7),
      I1 => sel_col_3_reg_n_0,
      I2 => sel_line_3_reg_n_0,
      I3 => p_4_in(7),
      I4 => p_2_in(7),
      I5 => p_1_in_0(7),
      O => \pix_blue_4[7]_i_10_n_0\
    );
\pix_blue_4[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF2CEC23E320E02"
    )
        port map (
      I0 => pix_l02c0_3(6),
      I1 => sel_col_3_reg_n_0,
      I2 => sel_line_3_reg_n_0,
      I3 => p_4_in(6),
      I4 => p_2_in(6),
      I5 => p_1_in_0(6),
      O => \pix_blue_4[7]_i_11_n_0\
    );
\pix_blue_4[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF2CEC23E320E02"
    )
        port map (
      I0 => pix_l02c0_3(5),
      I1 => sel_col_3_reg_n_0,
      I2 => sel_line_3_reg_n_0,
      I3 => p_4_in(5),
      I4 => p_2_in(5),
      I5 => p_1_in_0(5),
      O => \pix_blue_4[7]_i_12_n_0\
    );
\pix_blue_4[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF2CEC23E320E02"
    )
        port map (
      I0 => pix_l02c0_3(4),
      I1 => sel_col_3_reg_n_0,
      I2 => sel_line_3_reg_n_0,
      I3 => p_4_in(4),
      I4 => p_2_in(4),
      I5 => p_1_in_0(4),
      O => \pix_blue_4[7]_i_13_n_0\
    );
\pix_blue_4[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => R(7),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_blue_4[7]_i_2_n_0\
    );
\pix_blue_4[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => R(6),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_blue_4[7]_i_3_n_0\
    );
\pix_blue_4[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => R(5),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_blue_4[7]_i_4_n_0\
    );
\pix_blue_4[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => R(4),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_blue_4[7]_i_5_n_0\
    );
\pix_blue_4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data_dly_I_n_0,
      Q => vcol_blue(7),
      R => '0'
    );
\pix_blue_4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data_dly_I_n_7,
      Q => vcol_blue(0),
      R => '0'
    );
\pix_blue_4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data_dly_I_n_6,
      Q => vcol_blue(1),
      R => '0'
    );
\pix_blue_4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data_dly_I_n_5,
      Q => vcol_blue(2),
      R => '0'
    );
\pix_blue_4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data_dly_I_n_4,
      Q => vcol_blue(3),
      R => '0'
    );
\pix_blue_4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data_dly_I_n_3,
      Q => vcol_blue(4),
      R => '0'
    );
\pix_blue_4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data_dly_I_n_2,
      Q => vcol_blue(5),
      R => '0'
    );
\pix_blue_4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data_dly_I_n_1,
      Q => vcol_blue(6),
      R => '0'
    );
\pix_green_4[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_4_in(10),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_green_4[10]_i_2_n_0\
    );
\pix_green_4[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_4_in(9),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_green_4[10]_i_3_n_0\
    );
\pix_green_4[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => sel_line_3_reg_n_0,
      I1 => sel_col_3_reg_n_0,
      I2 => p_1_in_0(10),
      O => \pix_green_4[10]_i_4_n_0\
    );
\pix_green_4[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6FF66006"
    )
        port map (
      I0 => p_4_in(10),
      I1 => p_2_in(10),
      I2 => sel_line_3_reg_n_0,
      I3 => sel_col_3_reg_n_0,
      I4 => p_1_in_0(9),
      O => \pix_green_4[10]_i_5_n_0\
    );
\pix_green_4[10]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6FF66006"
    )
        port map (
      I0 => p_4_in(9),
      I1 => p_2_in(9),
      I2 => sel_line_3_reg_n_0,
      I3 => sel_col_3_reg_n_0,
      I4 => p_1_in_0(8),
      O => \pix_green_4[10]_i_6_n_0\
    );
\pix_green_4[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_4_in(4),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_green_4[3]_i_2_n_0\
    );
\pix_green_4[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_4_in(3),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_green_4[3]_i_3_n_0\
    );
\pix_green_4[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_4_in(2),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_green_4[3]_i_4_n_0\
    );
\pix_green_4[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_4_in(1),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_green_4[3]_i_5_n_0\
    );
\pix_green_4[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6FF66006"
    )
        port map (
      I0 => p_4_in(4),
      I1 => p_2_in(4),
      I2 => sel_line_3_reg_n_0,
      I3 => sel_col_3_reg_n_0,
      I4 => p_1_in_0(3),
      O => \pix_green_4[3]_i_6_n_0\
    );
\pix_green_4[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6FF66006"
    )
        port map (
      I0 => p_4_in(3),
      I1 => p_2_in(3),
      I2 => sel_line_3_reg_n_0,
      I3 => sel_col_3_reg_n_0,
      I4 => p_1_in_0(2),
      O => \pix_green_4[3]_i_7_n_0\
    );
\pix_green_4[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4182"
    )
        port map (
      I0 => p_4_in(2),
      I1 => sel_col_3_reg_n_0,
      I2 => sel_line_3_reg_n_0,
      I3 => p_2_in(2),
      O => \pix_green_4[3]_i_8_n_0\
    );
\pix_green_4[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4182"
    )
        port map (
      I0 => p_4_in(1),
      I1 => sel_col_3_reg_n_0,
      I2 => sel_line_3_reg_n_0,
      I3 => p_2_in(1),
      O => \pix_green_4[3]_i_9_n_0\
    );
\pix_green_4[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_4_in(8),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_green_4[7]_i_2_n_0\
    );
\pix_green_4[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_4_in(7),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_green_4[7]_i_3_n_0\
    );
\pix_green_4[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_4_in(6),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_green_4[7]_i_4_n_0\
    );
\pix_green_4[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => p_4_in(5),
      I1 => sel_line_3_reg_n_0,
      I2 => sel_col_3_reg_n_0,
      O => \pix_green_4[7]_i_5_n_0\
    );
\pix_green_4[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6FF66006"
    )
        port map (
      I0 => p_4_in(8),
      I1 => p_2_in(8),
      I2 => sel_line_3_reg_n_0,
      I3 => sel_col_3_reg_n_0,
      I4 => p_1_in_0(7),
      O => \pix_green_4[7]_i_6_n_0\
    );
\pix_green_4[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6FF66006"
    )
        port map (
      I0 => p_4_in(7),
      I1 => p_2_in(7),
      I2 => sel_line_3_reg_n_0,
      I3 => sel_col_3_reg_n_0,
      I4 => p_1_in_0(6),
      O => \pix_green_4[7]_i_7_n_0\
    );
\pix_green_4[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6FF66006"
    )
        port map (
      I0 => p_4_in(6),
      I1 => p_2_in(6),
      I2 => sel_line_3_reg_n_0,
      I3 => sel_col_3_reg_n_0,
      I4 => p_1_in_0(5),
      O => \pix_green_4[7]_i_8_n_0\
    );
\pix_green_4[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6FF66006"
    )
        port map (
      I0 => p_4_in(5),
      I1 => p_2_in(5),
      I2 => sel_line_3_reg_n_0,
      I3 => sel_col_3_reg_n_0,
      I4 => p_1_in_0(4),
      O => \pix_green_4[7]_i_9_n_0\
    );
\pix_green_4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pix_green_4_reg[10]_i_1_n_5\,
      Q => \^q\(2),
      R => '0'
    );
\pix_green_4_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_green_4_reg[7]_i_1_n_0\,
      CO(3 downto 2) => \NLW_pix_green_4_reg[10]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \pix_green_4_reg[10]_i_1_n_2\,
      CO(0) => \pix_green_4_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \pix_green_4[10]_i_2_n_0\,
      DI(0) => \pix_green_4[10]_i_3_n_0\,
      O(3) => \NLW_pix_green_4_reg[10]_i_1_O_UNCONNECTED\(3),
      O(2) => \pix_green_4_reg[10]_i_1_n_5\,
      O(1) => \pix_green_4_reg[10]_i_1_n_6\,
      O(0) => \pix_green_4_reg[10]_i_1_n_7\,
      S(3) => '0',
      S(2) => \pix_green_4[10]_i_4_n_0\,
      S(1) => \pix_green_4[10]_i_5_n_0\,
      S(0) => \pix_green_4[10]_i_6_n_0\
    );
\pix_green_4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pix_green_4_reg[3]_i_1_n_4\,
      Q => vcol_green(0),
      R => '0'
    );
\pix_green_4_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pix_green_4_reg[3]_i_1_n_0\,
      CO(2) => \pix_green_4_reg[3]_i_1_n_1\,
      CO(1) => \pix_green_4_reg[3]_i_1_n_2\,
      CO(0) => \pix_green_4_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \pix_green_4[3]_i_2_n_0\,
      DI(2) => \pix_green_4[3]_i_3_n_0\,
      DI(1) => \pix_green_4[3]_i_4_n_0\,
      DI(0) => \pix_green_4[3]_i_5_n_0\,
      O(3) => \pix_green_4_reg[3]_i_1_n_4\,
      O(2 downto 0) => \NLW_pix_green_4_reg[3]_i_1_O_UNCONNECTED\(2 downto 0),
      S(3) => \pix_green_4[3]_i_6_n_0\,
      S(2) => \pix_green_4[3]_i_7_n_0\,
      S(1) => \pix_green_4[3]_i_8_n_0\,
      S(0) => \pix_green_4[3]_i_9_n_0\
    );
\pix_green_4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pix_green_4_reg[7]_i_1_n_7\,
      Q => vcol_green(1),
      R => '0'
    );
\pix_green_4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pix_green_4_reg[7]_i_1_n_6\,
      Q => vcol_green(2),
      R => '0'
    );
\pix_green_4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pix_green_4_reg[7]_i_1_n_5\,
      Q => vcol_green(3),
      R => '0'
    );
\pix_green_4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pix_green_4_reg[7]_i_1_n_4\,
      Q => vcol_green(4),
      R => '0'
    );
\pix_green_4_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_green_4_reg[3]_i_1_n_0\,
      CO(3) => \pix_green_4_reg[7]_i_1_n_0\,
      CO(2) => \pix_green_4_reg[7]_i_1_n_1\,
      CO(1) => \pix_green_4_reg[7]_i_1_n_2\,
      CO(0) => \pix_green_4_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \pix_green_4[7]_i_2_n_0\,
      DI(2) => \pix_green_4[7]_i_3_n_0\,
      DI(1) => \pix_green_4[7]_i_4_n_0\,
      DI(0) => \pix_green_4[7]_i_5_n_0\,
      O(3) => \pix_green_4_reg[7]_i_1_n_4\,
      O(2) => \pix_green_4_reg[7]_i_1_n_5\,
      O(1) => \pix_green_4_reg[7]_i_1_n_6\,
      O(0) => \pix_green_4_reg[7]_i_1_n_7\,
      S(3) => \pix_green_4[7]_i_6_n_0\,
      S(2) => \pix_green_4[7]_i_7_n_0\,
      S(1) => \pix_green_4[7]_i_8_n_0\,
      S(0) => \pix_green_4[7]_i_9_n_0\
    );
\pix_green_4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pix_green_4_reg[10]_i_1_n_7\,
      Q => \^q\(0),
      R => '0'
    );
\pix_green_4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pix_green_4_reg[10]_i_1_n_6\,
      Q => \^q\(1),
      R => '0'
    );
\pix_l02c0_3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => p_4_in(1),
      Q => pix_l02c0_3(0),
      R => '0'
    );
\pix_l02c0_3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => p_4_in(2),
      Q => pix_l02c0_3(1),
      R => '0'
    );
\pix_l02c0_3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => p_4_in(3),
      Q => pix_l02c0_3(2),
      R => '0'
    );
\pix_l02c0_3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => p_4_in(4),
      Q => pix_l02c0_3(3),
      R => '0'
    );
\pix_l02c0_3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => p_4_in(5),
      Q => pix_l02c0_3(4),
      R => '0'
    );
\pix_l02c0_3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => p_4_in(6),
      Q => pix_l02c0_3(5),
      R => '0'
    );
\pix_l02c0_3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => p_4_in(7),
      Q => pix_l02c0_3(6),
      R => '0'
    );
\pix_l02c0_3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => p_4_in(8),
      Q => pix_l02c0_3(7),
      R => '0'
    );
\pix_l02c0_3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => p_4_in(9),
      Q => pix_l02c0_3(8),
      R => '0'
    );
\pix_l02c0_3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => p_4_in(10),
      Q => pix_l02c0_3(9),
      R => '0'
    );
\pix_l02c1_3[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lbuf_raw_do(12),
      I1 => lbuf_wdata_3_0(3),
      O => \pix_l02c1_3[3]_i_2_n_0\
    );
\pix_l02c1_3[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lbuf_raw_do(11),
      I1 => lbuf_wdata_3_0(2),
      O => \pix_l02c1_3[3]_i_3_n_0\
    );
\pix_l02c1_3[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lbuf_raw_do(10),
      I1 => lbuf_wdata_3_0(1),
      O => \pix_l02c1_3[3]_i_4_n_0\
    );
\pix_l02c1_3[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lbuf_raw_do(9),
      I1 => lbuf_wdata_3_0(0),
      O => \pix_l02c1_3[3]_i_5_n_0\
    );
\pix_l02c1_3[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lbuf_raw_dop(0),
      I1 => lbuf_wdata_3_0(7),
      O => \pix_l02c1_3[7]_i_2_n_0\
    );
\pix_l02c1_3[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lbuf_raw_do(15),
      I1 => lbuf_wdata_3_0(6),
      O => \pix_l02c1_3[7]_i_3_n_0\
    );
\pix_l02c1_3[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lbuf_raw_do(14),
      I1 => lbuf_wdata_3_0(5),
      O => \pix_l02c1_3[7]_i_4_n_0\
    );
\pix_l02c1_3[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lbuf_raw_do(13),
      I1 => lbuf_wdata_3_0(4),
      O => \pix_l02c1_3[7]_i_5_n_0\
    );
\pix_l02c1_3[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lbuf_raw_dop(1),
      I1 => lbuf_wdata_3_0(8),
      O => \pix_l02c1_3[9]_i_2_n_0\
    );
\pix_l02c1_3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => R(0),
      Q => p_4_in(1),
      R => '0'
    );
\pix_l02c1_3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => R(1),
      Q => p_4_in(2),
      R => '0'
    );
\pix_l02c1_3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => R(2),
      Q => p_4_in(3),
      R => '0'
    );
\pix_l02c1_3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => R(3),
      Q => p_4_in(4),
      R => '0'
    );
\pix_l02c1_3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => R(4),
      Q => p_4_in(5),
      R => '0'
    );
\pix_l02c1_3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => R(5),
      Q => p_4_in(6),
      R => '0'
    );
\pix_l02c1_3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => R(6),
      Q => p_4_in(7),
      R => '0'
    );
\pix_l02c1_3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => R(7),
      Q => p_4_in(8),
      R => '0'
    );
\pix_l02c1_3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => R(8),
      Q => p_4_in(9),
      R => '0'
    );
\pix_l02c1_3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => R(9),
      Q => p_4_in(10),
      R => '0'
    );
\pix_l1c0_3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => p_1_in_0(2),
      Q => pix_l1c0_3(0),
      R => '0'
    );
\pix_l1c0_3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => p_1_in_0(3),
      Q => pix_l1c0_3(1),
      R => '0'
    );
\pix_l1c0_3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => p_1_in_0(4),
      Q => pix_l1c0_3(2),
      R => '0'
    );
\pix_l1c0_3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => p_1_in_0(5),
      Q => pix_l1c0_3(3),
      R => '0'
    );
\pix_l1c0_3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => p_1_in_0(6),
      Q => pix_l1c0_3(4),
      R => '0'
    );
\pix_l1c0_3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => p_1_in_0(7),
      Q => pix_l1c0_3(5),
      R => '0'
    );
\pix_l1c0_3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => p_1_in_0(8),
      Q => pix_l1c0_3(6),
      R => '0'
    );
\pix_l1c0_3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => p_1_in_0(9),
      Q => pix_l1c0_3(7),
      R => '0'
    );
\pix_l1c0_3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => p_1_in_0(10),
      Q => pix_l1c0_3(8),
      R => '0'
    );
\pix_l1c1_3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => lbuf_raw_do(0),
      Q => p_1_in_0(2),
      R => '0'
    );
\pix_l1c1_3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => lbuf_raw_do(1),
      Q => p_1_in_0(3),
      R => '0'
    );
\pix_l1c1_3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => lbuf_raw_do(2),
      Q => p_1_in_0(4),
      R => '0'
    );
\pix_l1c1_3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => lbuf_raw_do(3),
      Q => p_1_in_0(5),
      R => '0'
    );
\pix_l1c1_3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => lbuf_raw_do(4),
      Q => p_1_in_0(6),
      R => '0'
    );
\pix_l1c1_3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => lbuf_raw_do(5),
      Q => p_1_in_0(7),
      R => '0'
    );
\pix_l1c1_3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => lbuf_raw_do(6),
      Q => p_1_in_0(8),
      R => '0'
    );
\pix_l1c1_3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => lbuf_raw_do(7),
      Q => p_1_in_0(9),
      R => '0'
    );
\pix_l1c1_3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_x(3),
      D => lbuf_raw_do(8),
      Q => p_1_in_0(10),
      R => '0'
    );
\pix_red_4[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF2CEC23E320E02"
    )
        port map (
      I0 => p_1_in_0(10),
      I1 => sel_col_3_reg_n_0,
      I2 => sel_line_3_reg_n_0,
      I3 => p_2_in(10),
      I4 => p_4_in(10),
      I5 => \pix_red_4_reg[10]_i_3_n_1\,
      O => \pix_red_4[10]_i_1_n_0\
    );
\pix_red_4[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pix_l1c0_3(8),
      I1 => lbuf_raw_do(8),
      O => \pix_red_4[10]_i_4_n_0\
    );
\pix_red_4[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pix_l02c0_3(9),
      I1 => R(9),
      O => \pix_red_4[10]_i_5_n_0\
    );
\pix_red_4[10]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pix_l02c0_3(8),
      I1 => R(8),
      O => \pix_red_4[10]_i_6_n_0\
    );
\pix_red_4[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF2CEC23E320E02"
    )
        port map (
      I0 => p_1_in_0(3),
      I1 => sel_col_3_reg_n_0,
      I2 => sel_line_3_reg_n_0,
      I3 => p_2_in(3),
      I4 => p_4_in(3),
      I5 => \pix_red_4_reg[3]_i_2_n_4\,
      O => \pix_red_4[3]_i_1_n_0\
    );
\pix_red_4[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pix_l02c0_3(3),
      I1 => R(3),
      O => \pix_red_4[3]_i_3_n_0\
    );
\pix_red_4[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pix_l02c0_3(2),
      I1 => R(2),
      O => \pix_red_4[3]_i_4_n_0\
    );
\pix_red_4[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pix_l02c0_3(1),
      I1 => R(1),
      O => \pix_red_4[3]_i_5_n_0\
    );
\pix_red_4[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pix_l02c0_3(0),
      I1 => R(0),
      O => \pix_red_4[3]_i_6_n_0\
    );
\pix_red_4[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF2CEC23E320E02"
    )
        port map (
      I0 => p_1_in_0(4),
      I1 => sel_col_3_reg_n_0,
      I2 => sel_line_3_reg_n_0,
      I3 => p_2_in(4),
      I4 => p_4_in(4),
      I5 => \pix_red_4_reg[7]_i_2_n_7\,
      O => \pix_red_4[4]_i_1_n_0\
    );
\pix_red_4[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pix_l1c0_3(3),
      I1 => lbuf_raw_do(3),
      O => \pix_red_4[4]_i_3_n_0\
    );
\pix_red_4[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pix_l1c0_3(2),
      I1 => lbuf_raw_do(2),
      O => \pix_red_4[4]_i_4_n_0\
    );
\pix_red_4[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pix_l1c0_3(1),
      I1 => lbuf_raw_do(1),
      O => \pix_red_4[4]_i_5_n_0\
    );
\pix_red_4[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pix_l1c0_3(0),
      I1 => lbuf_raw_do(0),
      O => \pix_red_4[4]_i_6_n_0\
    );
\pix_red_4[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF2CEC23E320E02"
    )
        port map (
      I0 => p_1_in_0(5),
      I1 => sel_col_3_reg_n_0,
      I2 => sel_line_3_reg_n_0,
      I3 => p_2_in(5),
      I4 => p_4_in(5),
      I5 => \pix_red_4_reg[7]_i_2_n_6\,
      O => \pix_red_4[5]_i_1_n_0\
    );
\pix_red_4[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF2CEC23E320E02"
    )
        port map (
      I0 => p_1_in_0(6),
      I1 => sel_col_3_reg_n_0,
      I2 => sel_line_3_reg_n_0,
      I3 => p_2_in(6),
      I4 => p_4_in(6),
      I5 => \pix_red_4_reg[7]_i_2_n_5\,
      O => \pix_red_4[6]_i_1_n_0\
    );
\pix_red_4[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF2CEC23E320E02"
    )
        port map (
      I0 => p_1_in_0(7),
      I1 => sel_col_3_reg_n_0,
      I2 => sel_line_3_reg_n_0,
      I3 => p_2_in(7),
      I4 => p_4_in(7),
      I5 => \pix_red_4_reg[7]_i_2_n_4\,
      O => \pix_red_4[7]_i_1_n_0\
    );
\pix_red_4[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pix_l02c0_3(7),
      I1 => R(7),
      O => \pix_red_4[7]_i_3_n_0\
    );
\pix_red_4[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pix_l02c0_3(6),
      I1 => R(6),
      O => \pix_red_4[7]_i_4_n_0\
    );
\pix_red_4[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pix_l02c0_3(5),
      I1 => R(5),
      O => \pix_red_4[7]_i_5_n_0\
    );
\pix_red_4[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pix_l02c0_3(4),
      I1 => R(4),
      O => \pix_red_4[7]_i_6_n_0\
    );
\pix_red_4[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF2CEC23E320E02"
    )
        port map (
      I0 => p_1_in_0(8),
      I1 => sel_col_3_reg_n_0,
      I2 => sel_line_3_reg_n_0,
      I3 => p_2_in(8),
      I4 => p_4_in(8),
      I5 => \pix_red_4_reg[10]_i_3_n_7\,
      O => \pix_red_4[8]_i_1_n_0\
    );
\pix_red_4[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pix_l1c0_3(7),
      I1 => lbuf_raw_do(7),
      O => \pix_red_4[8]_i_3_n_0\
    );
\pix_red_4[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pix_l1c0_3(6),
      I1 => lbuf_raw_do(6),
      O => \pix_red_4[8]_i_4_n_0\
    );
\pix_red_4[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pix_l1c0_3(5),
      I1 => lbuf_raw_do(5),
      O => \pix_red_4[8]_i_5_n_0\
    );
\pix_red_4[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pix_l1c0_3(4),
      I1 => lbuf_raw_do(4),
      O => \pix_red_4[8]_i_6_n_0\
    );
\pix_red_4[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEF2CEC23E320E02"
    )
        port map (
      I0 => p_1_in_0(9),
      I1 => sel_col_3_reg_n_0,
      I2 => sel_line_3_reg_n_0,
      I3 => p_2_in(9),
      I4 => p_4_in(9),
      I5 => \pix_red_4_reg[10]_i_3_n_6\,
      O => \pix_red_4[9]_i_1_n_0\
    );
\pix_red_4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pix_red_4[10]_i_1_n_0\,
      Q => vcol_red(7),
      R => '0'
    );
\pix_red_4_reg[10]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_red_4_reg[8]_i_2_n_0\,
      CO(3 downto 2) => \NLW_pix_red_4_reg[10]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => p_2_in(10),
      CO(0) => \NLW_pix_red_4_reg[10]_i_2_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => pix_l1c0_3(8),
      O(3 downto 1) => \NLW_pix_red_4_reg[10]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => p_2_in(9),
      S(3 downto 1) => B"001",
      S(0) => \pix_red_4[10]_i_4_n_0\
    );
\pix_red_4_reg[10]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_red_4_reg[7]_i_2_n_0\,
      CO(3) => \NLW_pix_red_4_reg[10]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \pix_red_4_reg[10]_i_3_n_1\,
      CO(1) => \NLW_pix_red_4_reg[10]_i_3_CO_UNCONNECTED\(1),
      CO(0) => \pix_red_4_reg[10]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => pix_l02c0_3(9 downto 8),
      O(3 downto 2) => \NLW_pix_red_4_reg[10]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1) => \pix_red_4_reg[10]_i_3_n_6\,
      O(0) => \pix_red_4_reg[10]_i_3_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \pix_red_4[10]_i_5_n_0\,
      S(0) => \pix_red_4[10]_i_6_n_0\
    );
\pix_red_4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pix_red_4[3]_i_1_n_0\,
      Q => vcol_red(0),
      R => '0'
    );
\pix_red_4_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pix_red_4_reg[3]_i_2_n_0\,
      CO(2) => \pix_red_4_reg[3]_i_2_n_1\,
      CO(1) => \pix_red_4_reg[3]_i_2_n_2\,
      CO(0) => \pix_red_4_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pix_l02c0_3(3 downto 0),
      O(3) => \pix_red_4_reg[3]_i_2_n_4\,
      O(2 downto 0) => \NLW_pix_red_4_reg[3]_i_2_O_UNCONNECTED\(2 downto 0),
      S(3) => \pix_red_4[3]_i_3_n_0\,
      S(2) => \pix_red_4[3]_i_4_n_0\,
      S(1) => \pix_red_4[3]_i_5_n_0\,
      S(0) => \pix_red_4[3]_i_6_n_0\
    );
\pix_red_4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pix_red_4[4]_i_1_n_0\,
      Q => vcol_red(1),
      R => '0'
    );
\pix_red_4_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pix_red_4_reg[4]_i_2_n_0\,
      CO(2) => \pix_red_4_reg[4]_i_2_n_1\,
      CO(1) => \pix_red_4_reg[4]_i_2_n_2\,
      CO(0) => \pix_red_4_reg[4]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pix_l1c0_3(3 downto 0),
      O(3 downto 0) => p_2_in(4 downto 1),
      S(3) => \pix_red_4[4]_i_3_n_0\,
      S(2) => \pix_red_4[4]_i_4_n_0\,
      S(1) => \pix_red_4[4]_i_5_n_0\,
      S(0) => \pix_red_4[4]_i_6_n_0\
    );
\pix_red_4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pix_red_4[5]_i_1_n_0\,
      Q => vcol_red(2),
      R => '0'
    );
\pix_red_4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pix_red_4[6]_i_1_n_0\,
      Q => vcol_red(3),
      R => '0'
    );
\pix_red_4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pix_red_4[7]_i_1_n_0\,
      Q => vcol_red(4),
      R => '0'
    );
\pix_red_4_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_red_4_reg[3]_i_2_n_0\,
      CO(3) => \pix_red_4_reg[7]_i_2_n_0\,
      CO(2) => \pix_red_4_reg[7]_i_2_n_1\,
      CO(1) => \pix_red_4_reg[7]_i_2_n_2\,
      CO(0) => \pix_red_4_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pix_l02c0_3(7 downto 4),
      O(3) => \pix_red_4_reg[7]_i_2_n_4\,
      O(2) => \pix_red_4_reg[7]_i_2_n_5\,
      O(1) => \pix_red_4_reg[7]_i_2_n_6\,
      O(0) => \pix_red_4_reg[7]_i_2_n_7\,
      S(3) => \pix_red_4[7]_i_3_n_0\,
      S(2) => \pix_red_4[7]_i_4_n_0\,
      S(1) => \pix_red_4[7]_i_5_n_0\,
      S(0) => \pix_red_4[7]_i_6_n_0\
    );
\pix_red_4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pix_red_4[8]_i_1_n_0\,
      Q => vcol_red(5),
      R => '0'
    );
\pix_red_4_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pix_red_4_reg[4]_i_2_n_0\,
      CO(3) => \pix_red_4_reg[8]_i_2_n_0\,
      CO(2) => \pix_red_4_reg[8]_i_2_n_1\,
      CO(1) => \pix_red_4_reg[8]_i_2_n_2\,
      CO(0) => \pix_red_4_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pix_l1c0_3(7 downto 4),
      O(3 downto 0) => p_2_in(8 downto 5),
      S(3) => \pix_red_4[8]_i_3_n_0\,
      S(2) => \pix_red_4[8]_i_4_n_0\,
      S(1) => \pix_red_4[8]_i_5_n_0\,
      S(0) => \pix_red_4[8]_i_6_n_0\
    );
\pix_red_4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pix_red_4[9]_i_1_n_0\,
      Q => vcol_red(6),
      R => '0'
    );
sel_col_3_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888AFFFABBBA000"
    )
        port map (
      I0 => \reg_reg[17]\(10),
      I1 => last_x(3),
      I2 => sof_x(2),
      I3 => valid_x(2),
      I4 => valid_x(3),
      I5 => sel_col_3_reg_n_0,
      O => sel_col_3_i_1_n_0
    );
sel_col_3_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sel_col_3_i_1_n_0,
      Q => sel_col_3_reg_n_0,
      R => '0'
    );
sel_line_3_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A333AFFFACCCA000"
    )
        port map (
      I0 => \reg_reg[17]\(11),
      I1 => last_x(3),
      I2 => sof_x(2),
      I3 => valid_x(2),
      I4 => valid_x(3),
      I5 => sel_line_3_reg_n_0,
      O => sel_line_3_i_1_n_0
    );
sel_line_3_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sel_line_3_i_1_n_0,
      Q => sel_line_3_reg_n_0,
      R => '0'
    );
\sof_x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vum_sof_reg(0),
      Q => sof_x(1),
      R => '0'
    );
\sof_x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sof_x(1),
      Q => sof_x(2),
      R => '0'
    );
\sof_x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sof_x(2),
      Q => sof_x(3),
      R => '0'
    );
\sof_x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sof_x(3),
      Q => vcol_sof,
      R => '0'
    );
\valid_x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(0),
      Q => valid_x(1),
      R => '0'
    );
\valid_x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => valid_x(1),
      Q => valid_x(2),
      R => '0'
    );
\valid_x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => valid_x(2),
      Q => valid_x(3),
      R => '0'
    );
\valid_x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => valid_x(3),
      Q => vcol_valid,
      R => '0'
    );
\vfm_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => vcfm_data(0),
      I1 => vcol_blue(3),
      I2 => \reg_reg[17]\(0),
      I3 => p_1_in(0),
      I4 => \reg_reg[17]\(1),
      I5 => DO(0),
      O => \vfm_data_reg[26]\(0)
    );
\vfm_data[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(0),
      I1 => vcol_red(0),
      I2 => \reg_reg[17]\(2),
      I3 => \reg_reg[17]\(3),
      I4 => vcol_green(0),
      O => vcfm_data(0)
    );
\vfm_data[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(2),
      I1 => vcol_red(2),
      I2 => \reg_reg[17]\(4),
      I3 => \reg_reg[17]\(5),
      I4 => vcol_green(2),
      O => \vfm_data_reg[10]\(2)
    );
\vfm_data[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC8CFFFFB0800000"
    )
        port map (
      I0 => vcol_blue(3),
      I1 => \reg_reg[17]\(4),
      I2 => \reg_reg[17]\(5),
      I3 => vcol_green(3),
      I4 => \reg_reg[17]\(1),
      I5 => vcol_red(3),
      O => \vfm_data_reg[11]\
    );
\vfm_data[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC8CFFFFB0800000"
    )
        port map (
      I0 => vcol_blue(4),
      I1 => \reg_reg[17]\(4),
      I2 => \reg_reg[17]\(5),
      I3 => vcol_green(4),
      I4 => \reg_reg[17]\(1),
      I5 => vcol_red(4),
      O => \vfm_data_reg[12]\
    );
\vfm_data[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC8CFFFFB0800000"
    )
        port map (
      I0 => vcol_blue(5),
      I1 => \reg_reg[17]\(4),
      I2 => \reg_reg[17]\(5),
      I3 => \^q\(0),
      I4 => \reg_reg[17]\(1),
      I5 => vcol_red(5),
      O => \vfm_data_reg[13]\
    );
\vfm_data[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC8CFFFFB0800000"
    )
        port map (
      I0 => vcol_blue(6),
      I1 => \reg_reg[17]\(4),
      I2 => \reg_reg[17]\(5),
      I3 => \^q\(1),
      I4 => \reg_reg[17]\(1),
      I5 => vcol_red(6),
      O => \vfm_data_reg[14]\
    );
\vfm_data[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC8CFFFFB0800000"
    )
        port map (
      I0 => vcol_blue(7),
      I1 => \reg_reg[17]\(4),
      I2 => \reg_reg[17]\(5),
      I3 => \^q\(2),
      I4 => \reg_reg[17]\(1),
      I5 => vcol_red(7),
      O => \vfm_data_reg[15]\
    );
\vfm_data[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => vcfm_data(16),
      I1 => vcol_blue(3),
      I2 => \reg_reg[17]\(0),
      I3 => DO(8),
      I4 => \reg_reg[17]\(1),
      O => \vfm_data_reg[26]\(8)
    );
\vfm_data[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(0),
      I1 => vcol_red(0),
      I2 => \reg_reg[17]\(6),
      I3 => \reg_reg[17]\(7),
      I4 => vcol_green(0),
      O => vcfm_data(16)
    );
\vfm_data[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => vcfm_data(17),
      I1 => vcol_blue(4),
      I2 => \reg_reg[17]\(0),
      I3 => DO(9),
      I4 => \reg_reg[17]\(1),
      O => \vfm_data_reg[26]\(9)
    );
\vfm_data[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(1),
      I1 => vcol_red(1),
      I2 => \reg_reg[17]\(6),
      I3 => \reg_reg[17]\(7),
      I4 => vcol_green(1),
      O => vcfm_data(17)
    );
\vfm_data[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => vcfm_data(18),
      I1 => vcol_blue(5),
      I2 => \reg_reg[17]\(0),
      I3 => DO(10),
      I4 => \reg_reg[17]\(1),
      O => \vfm_data_reg[26]\(10)
    );
\vfm_data[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(2),
      I1 => vcol_red(2),
      I2 => \reg_reg[17]\(6),
      I3 => \reg_reg[17]\(7),
      I4 => vcol_green(2),
      O => vcfm_data(18)
    );
\vfm_data[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => vcfm_data(19),
      I1 => vcol_blue(6),
      I2 => \reg_reg[17]\(0),
      I3 => DO(11),
      I4 => \reg_reg[17]\(1),
      O => \vfm_data_reg[26]\(11)
    );
\vfm_data[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(3),
      I1 => vcol_red(3),
      I2 => \reg_reg[17]\(6),
      I3 => \reg_reg[17]\(7),
      I4 => vcol_green(3),
      O => vcfm_data(19)
    );
\vfm_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => vcfm_data(1),
      I1 => vcol_blue(4),
      I2 => \reg_reg[17]\(0),
      I3 => p_1_in(1),
      I4 => \reg_reg[17]\(1),
      I5 => DO(1),
      O => \vfm_data_reg[26]\(1)
    );
\vfm_data[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(1),
      I1 => vcol_red(1),
      I2 => \reg_reg[17]\(2),
      I3 => \reg_reg[17]\(3),
      I4 => vcol_green(1),
      O => vcfm_data(1)
    );
\vfm_data[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => vcfm_data(20),
      I1 => vcol_blue(7),
      I2 => \reg_reg[17]\(0),
      I3 => DO(12),
      I4 => \reg_reg[17]\(1),
      O => \vfm_data_reg[26]\(12)
    );
\vfm_data[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(4),
      I1 => vcol_red(4),
      I2 => \reg_reg[17]\(6),
      I3 => \reg_reg[17]\(7),
      I4 => vcol_green(4),
      O => vcfm_data(20)
    );
\vfm_data[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => vcfm_data(21),
      I1 => vcol_green(2),
      I2 => \reg_reg[17]\(0),
      I3 => DO(13),
      I4 => \reg_reg[17]\(1),
      O => \vfm_data_reg[26]\(13)
    );
\vfm_data[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(5),
      I1 => vcol_red(5),
      I2 => \reg_reg[17]\(6),
      I3 => \reg_reg[17]\(7),
      I4 => \^q\(0),
      O => vcfm_data(21)
    );
\vfm_data[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => vcfm_data(22),
      I1 => vcol_green(3),
      I2 => \reg_reg[17]\(0),
      I3 => DO(14),
      I4 => \reg_reg[17]\(1),
      O => \vfm_data_reg[26]\(14)
    );
\vfm_data[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(6),
      I1 => vcol_red(6),
      I2 => \reg_reg[17]\(6),
      I3 => \reg_reg[17]\(7),
      I4 => \^q\(1),
      O => vcfm_data(22)
    );
\vfm_data[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => vcfm_data(23),
      I1 => vcol_green(4),
      I2 => \reg_reg[17]\(0),
      I3 => DO(15),
      I4 => \reg_reg[17]\(1),
      O => \vfm_data_reg[26]\(15)
    );
\vfm_data[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(7),
      I1 => vcol_red(7),
      I2 => \reg_reg[17]\(6),
      I3 => \reg_reg[17]\(7),
      I4 => \^q\(2),
      O => vcfm_data(23)
    );
\vfm_data[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => vcfm_data_reg(24),
      I1 => \^q\(0),
      I2 => \reg_reg[17]\(0),
      I3 => DO(16),
      I4 => \reg_reg[17]\(1),
      O => \vfm_data_reg[26]\(16)
    );
\vfm_data[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(0),
      I1 => vcol_red(0),
      I2 => \reg_reg[17]\(8),
      I3 => \reg_reg[17]\(9),
      I4 => vcol_green(0),
      O => vcfm_data_reg(24)
    );
\vfm_data[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => vcfm_data_reg(25),
      I1 => \^q\(1),
      I2 => \reg_reg[17]\(0),
      I3 => DO(17),
      I4 => \reg_reg[17]\(1),
      O => \vfm_data_reg[26]\(17)
    );
\vfm_data[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(1),
      I1 => vcol_red(1),
      I2 => \reg_reg[17]\(8),
      I3 => \reg_reg[17]\(9),
      I4 => vcol_green(1),
      O => vcfm_data_reg(25)
    );
\vfm_data[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => vcfm_data_reg(26),
      I1 => \^q\(2),
      I2 => \reg_reg[17]\(0),
      I3 => DO(18),
      I4 => \reg_reg[17]\(1),
      O => \vfm_data_reg[26]\(18)
    );
\vfm_data[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(2),
      I1 => vcol_red(2),
      I2 => \reg_reg[17]\(8),
      I3 => \reg_reg[17]\(9),
      I4 => vcol_green(2),
      O => vcfm_data_reg(26)
    );
\vfm_data[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC8CFFFFB0800000"
    )
        port map (
      I0 => vcol_blue(3),
      I1 => \reg_reg[17]\(8),
      I2 => \reg_reg[17]\(9),
      I3 => vcol_green(3),
      I4 => \reg_reg[17]\(1),
      I5 => vcol_red(3),
      O => \vfm_data_reg[27]\
    );
\vfm_data[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC8CFFFFB0800000"
    )
        port map (
      I0 => vcol_blue(4),
      I1 => \reg_reg[17]\(8),
      I2 => \reg_reg[17]\(9),
      I3 => vcol_green(4),
      I4 => \reg_reg[17]\(1),
      I5 => vcol_red(4),
      O => \vfm_data_reg[28]\
    );
\vfm_data[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC8CFFFFB0800000"
    )
        port map (
      I0 => vcol_blue(5),
      I1 => \reg_reg[17]\(8),
      I2 => \reg_reg[17]\(9),
      I3 => \^q\(0),
      I4 => \reg_reg[17]\(1),
      I5 => vcol_red(5),
      O => \vfm_data_reg[29]\
    );
\vfm_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => vcfm_data(2),
      I1 => vcol_blue(5),
      I2 => \reg_reg[17]\(0),
      I3 => p_1_in(2),
      I4 => \reg_reg[17]\(1),
      I5 => DO(2),
      O => \vfm_data_reg[26]\(2)
    );
\vfm_data[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(2),
      I1 => vcol_red(2),
      I2 => \reg_reg[17]\(2),
      I3 => \reg_reg[17]\(3),
      I4 => vcol_green(2),
      O => vcfm_data(2)
    );
\vfm_data[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC8CFFFFB0800000"
    )
        port map (
      I0 => vcol_blue(6),
      I1 => \reg_reg[17]\(8),
      I2 => \reg_reg[17]\(9),
      I3 => \^q\(1),
      I4 => \reg_reg[17]\(1),
      I5 => vcol_red(6),
      O => \vfm_data_reg[30]\
    );
\vfm_data[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC8CFFFFB0800000"
    )
        port map (
      I0 => vcol_blue(7),
      I1 => \reg_reg[17]\(8),
      I2 => \reg_reg[17]\(9),
      I3 => \^q\(2),
      I4 => \reg_reg[17]\(1),
      I5 => vcol_red(7),
      O => \vfm_data_reg[31]\
    );
\vfm_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => vcfm_data(3),
      I1 => vcol_blue(6),
      I2 => \reg_reg[17]\(0),
      I3 => p_1_in(3),
      I4 => \reg_reg[17]\(1),
      I5 => DO(3),
      O => \vfm_data_reg[26]\(3)
    );
\vfm_data[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(3),
      I1 => vcol_red(3),
      I2 => \reg_reg[17]\(2),
      I3 => \reg_reg[17]\(3),
      I4 => vcol_green(3),
      O => vcfm_data(3)
    );
\vfm_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => vcfm_data(4),
      I1 => vcol_blue(7),
      I2 => \reg_reg[17]\(0),
      I3 => p_1_in(4),
      I4 => \reg_reg[17]\(1),
      I5 => DO(4),
      O => \vfm_data_reg[26]\(4)
    );
\vfm_data[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(4),
      I1 => vcol_red(4),
      I2 => \reg_reg[17]\(2),
      I3 => \reg_reg[17]\(3),
      I4 => vcol_green(4),
      O => vcfm_data(4)
    );
\vfm_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => vcfm_data(5),
      I1 => vcol_green(2),
      I2 => \reg_reg[17]\(0),
      I3 => p_1_in(5),
      I4 => \reg_reg[17]\(1),
      I5 => DO(5),
      O => \vfm_data_reg[26]\(5)
    );
\vfm_data[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(5),
      I1 => vcol_red(5),
      I2 => \reg_reg[17]\(2),
      I3 => \reg_reg[17]\(3),
      I4 => \^q\(0),
      O => vcfm_data(5)
    );
\vfm_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => vcfm_data(6),
      I1 => vcol_green(3),
      I2 => \reg_reg[17]\(0),
      I3 => p_1_in(6),
      I4 => \reg_reg[17]\(1),
      I5 => DO(6),
      O => \vfm_data_reg[26]\(6)
    );
\vfm_data[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(6),
      I1 => vcol_red(6),
      I2 => \reg_reg[17]\(2),
      I3 => \reg_reg[17]\(3),
      I4 => \^q\(1),
      O => vcfm_data(6)
    );
\vfm_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => vcfm_data(7),
      I1 => vcol_green(4),
      I2 => \reg_reg[17]\(0),
      I3 => p_1_in(7),
      I4 => \reg_reg[17]\(1),
      I5 => DO(7),
      O => \vfm_data_reg[26]\(7)
    );
\vfm_data[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(7),
      I1 => vcol_red(7),
      I2 => \reg_reg[17]\(2),
      I3 => \reg_reg[17]\(3),
      I4 => \^q\(2),
      O => vcfm_data(7)
    );
\vfm_data[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(0),
      I1 => vcol_red(0),
      I2 => \reg_reg[17]\(4),
      I3 => \reg_reg[17]\(5),
      I4 => vcol_green(0),
      O => \vfm_data_reg[10]\(0)
    );
\vfm_data[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => vcol_blue(1),
      I1 => vcol_red(1),
      I2 => \reg_reg[17]\(4),
      I3 => \reg_reg[17]\(5),
      I4 => vcol_green(1),
      O => \vfm_data_reg[10]\(1)
    );
vfm_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00AAAAF3F3"
    )
        port map (
      I0 => vum_last_reg(0),
      I1 => \cnt_reg[16]\(0),
      I2 => DOP(0),
      I3 => vcol_last,
      I4 => \reg_reg[17]\(1),
      I5 => \reg_reg[17]\(0),
      O => vfm_last_reg
    );
vfm_sof_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => vum_sof_reg(0),
      I1 => vin_sof,
      I2 => vcol_sof,
      I3 => \reg_reg[17]\(1),
      I4 => \reg_reg[17]\(0),
      O => vfm_sof_reg
    );
vfm_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0AACC"
    )
        port map (
      I0 => D(0),
      I1 => pause_reg,
      I2 => vcol_valid,
      I3 => \reg_reg[17]\(1),
      I4 => \reg_reg[17]\(0),
      O => vfm_valid_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_xclk_pulse is
  port (
    err_phy_bad_ecc : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    clk : in STD_LOGIC;
    out_clk : in STD_LOGIC;
    phy_err_bad_ecc : in STD_LOGIC;
    err_bad_ecc_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_xclk_pulse : entity is "xclk_pulse";
end TySOM_1_7Z030_mipi_csi_0_xclk_pulse;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_xclk_pulse is
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal line_in : STD_LOGIC;
  signal line_in_i_1_n_0 : STD_LOGIC;
  signal line_out : STD_LOGIC;
  signal line_out_r : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sync_I_n_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[1]_i_1__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[3]_i_3__0\ : label is "soft_lutpair5";
begin
  p_0_in <= \^p_0_in\;
\cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      O => \plusOp__0\(0)
    );
\cnt[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      O => \plusOp__0\(1)
    );
\cnt[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[2]\,
      O => \plusOp__0\(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in\,
      I1 => phy_err_bad_ecc,
      O => \cnt[3]_i_1_n_0\
    );
\cnt[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => \^p_0_in\,
      O => \plusOp__0\(3)
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => out_clk,
      CE => err_bad_ecc_reg,
      D => \plusOp__0\(0),
      Q => \cnt_reg_n_0_[0]\,
      R => \cnt[3]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => out_clk,
      CE => err_bad_ecc_reg,
      D => \plusOp__0\(1),
      Q => \cnt_reg_n_0_[1]\,
      R => \cnt[3]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => out_clk,
      CE => err_bad_ecc_reg,
      D => \plusOp__0\(2),
      Q => \cnt_reg_n_0_[2]\,
      R => \cnt[3]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => out_clk,
      CE => err_bad_ecc_reg,
      D => \plusOp__0\(3),
      Q => \^p_0_in\,
      R => \cnt[3]_i_1_n_0\
    );
line_in_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => phy_err_bad_ecc,
      I1 => \^p_0_in\,
      I2 => line_in,
      O => line_in_i_1_n_0
    );
line_in_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => out_clk,
      CE => '1',
      D => line_in_i_1_n_0,
      Q => line_in,
      R => '0'
    );
line_out_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => line_out,
      Q => line_out_r,
      R => '0'
    );
pulse_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sync_I_n_1,
      Q => err_phy_bad_ecc,
      R => '0'
    );
sync_I: entity work.TySOM_1_7Z030_mipi_csi_0_xclk_sync_8
     port map (
      clk => clk,
      line_in => line_in,
      line_out_r => line_out_r,
      \out\ => line_out,
      out_clk => out_clk,
      pulse_out_reg => sync_I_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_xclk_pulse_1 is
  port (
    err_phy_early_lp : out STD_LOGIC;
    clk : in STD_LOGIC;
    out_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_xclk_pulse_1 : entity is "xclk_pulse";
end TySOM_1_7Z030_mipi_csi_0_xclk_pulse_1;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_xclk_pulse_1 is
  signal line_out : STD_LOGIC;
  signal line_out_r : STD_LOGIC;
  signal sync_I_n_1 : STD_LOGIC;
begin
line_out_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => line_out,
      Q => line_out_r,
      R => '0'
    );
pulse_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sync_I_n_1,
      Q => err_phy_early_lp,
      R => '0'
    );
sync_I: entity work.TySOM_1_7Z030_mipi_csi_0_xclk_sync_7
     port map (
      clk => clk,
      line_out_r => line_out_r,
      \out\ => line_out,
      out_clk => out_clk,
      pulse_out_reg => sync_I_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_xclk_pulse_2 is
  port (
    pulse_out : out STD_LOGIC;
    out_clk : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_xclk_pulse_2 : entity is "xclk_pulse";
end TySOM_1_7Z030_mipi_csi_0_xclk_pulse_2;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_xclk_pulse_2 is
  signal line_out : STD_LOGIC;
  signal line_out_r : STD_LOGIC;
  signal sync_I_n_1 : STD_LOGIC;
begin
line_out_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => line_out,
      Q => line_out_r,
      R => '0'
    );
pulse_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sync_I_n_1,
      Q => pulse_out,
      R => '0'
    );
sync_I: entity work.TySOM_1_7Z030_mipi_csi_0_xclk_sync_6
     port map (
      clk => clk,
      line_out_r => line_out_r,
      \out\ => line_out,
      out_clk => out_clk,
      pulse_out_reg => sync_I_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_xclk_pulse_3 is
  port (
    err_phy_overflow : out STD_LOGIC;
    clk : in STD_LOGIC;
    out_clk : in STD_LOGIC;
    phy_err_overflow : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_xclk_pulse_3 : entity is "xclk_pulse";
end TySOM_1_7Z030_mipi_csi_0_xclk_pulse_3;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_xclk_pulse_3 is
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal line_in : STD_LOGIC;
  signal \line_in_i_1__0_n_0\ : STD_LOGIC;
  signal line_out : STD_LOGIC;
  signal line_out_r : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sync_I_n_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1__1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[1]_i_1__2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[3]_i_3__1\ : label is "soft_lutpair7";
begin
\cnt[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      O => \plusOp__1\(0)
    );
\cnt[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      O => \plusOp__1\(1)
    );
\cnt[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[2]\,
      O => \plusOp__1\(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in,
      I1 => phy_err_overflow,
      O => \cnt[3]_i_1_n_0\
    );
\cnt[3]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => phy_err_overflow,
      I1 => p_0_in,
      O => \cnt[3]_i_2__0_n_0\
    );
\cnt[3]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[2]\,
      I3 => p_0_in,
      O => \plusOp__1\(3)
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => out_clk,
      CE => \cnt[3]_i_2__0_n_0\,
      D => \plusOp__1\(0),
      Q => \cnt_reg_n_0_[0]\,
      R => \cnt[3]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => out_clk,
      CE => \cnt[3]_i_2__0_n_0\,
      D => \plusOp__1\(1),
      Q => \cnt_reg_n_0_[1]\,
      R => \cnt[3]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => out_clk,
      CE => \cnt[3]_i_2__0_n_0\,
      D => \plusOp__1\(2),
      Q => \cnt_reg_n_0_[2]\,
      R => \cnt[3]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => out_clk,
      CE => \cnt[3]_i_2__0_n_0\,
      D => \plusOp__1\(3),
      Q => p_0_in,
      R => \cnt[3]_i_1_n_0\
    );
\line_in_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => phy_err_overflow,
      I1 => p_0_in,
      I2 => line_in,
      O => \line_in_i_1__0_n_0\
    );
line_in_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => out_clk,
      CE => '1',
      D => \line_in_i_1__0_n_0\,
      Q => line_in,
      R => '0'
    );
line_out_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => line_out,
      Q => line_out_r,
      R => '0'
    );
pulse_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sync_I_n_1,
      Q => err_phy_overflow,
      R => '0'
    );
sync_I: entity work.TySOM_1_7Z030_mipi_csi_0_xclk_sync_5
     port map (
      clk => clk,
      line_in => line_in,
      line_out_r => line_out_r,
      \out\ => line_out,
      out_clk => out_clk,
      pulse_out_reg => sync_I_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_vid_pipeline is
  port (
    has_last : out STD_LOGIC;
    vout_valid : out STD_LOGIC;
    DIP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \cnt_reg[16]\ : out STD_LOGIC;
    cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \out\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \cnt_line_1_reg[11]\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vin_ready_10b : out STD_LOGIC;
    vid_ready : out STD_LOGIC;
    \^q\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \vfm_data_reg[10]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \vfm_data_reg[26]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \vfm_data_reg[11]_0\ : out STD_LOGIC;
    \vfm_data_reg[12]_0\ : out STD_LOGIC;
    \vfm_data_reg[13]_0\ : out STD_LOGIC;
    \vfm_data_reg[14]_0\ : out STD_LOGIC;
    \vfm_data_reg[15]_0\ : out STD_LOGIC;
    \vfm_data_reg[27]_0\ : out STD_LOGIC;
    \vfm_data_reg[28]_0\ : out STD_LOGIC;
    \vfm_data_reg[29]_0\ : out STD_LOGIC;
    \vfm_data_reg[30]_0\ : out STD_LOGIC;
    \vfm_data_reg[31]_0\ : out STD_LOGIC;
    \srl_gen[0].part_stage_gen.b_gen[8].ff_I\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \pix_fifo_cnt_reg[0]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    vin_sof : in STD_LOGIC;
    DOP : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_reg[16]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_reg[10]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \reg_reg[10]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \reg_reg[6]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_reg[6]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_reg[10]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \reg_reg[10]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pause_reg : in STD_LOGIC;
    has_last_reg : in STD_LOGIC;
    pause : in STD_LOGIC;
    \FSM_sequential_state_cur_reg[1]\ : in STD_LOGIC;
    pktr_empty : in STD_LOGIC;
    DO : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \reg_reg[23]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \eqOp__0\ : in STD_LOGIC;
    \reg_reg[11]\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \reg_reg[11]_0\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \reg_reg[11]_1\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mux : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \reg_reg[4]\ : in STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_vid_pipeline : entity is "vid_pipeline";
end TySOM_1_7Z030_mipi_csi_0_vid_pipeline;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_vid_pipeline is
  signal \^cnt_reg[16]\ : STD_LOGIC;
  signal crop_I_n_27 : STD_LOGIC;
  signal crop_I_n_28 : STD_LOGIC;
  signal crop_I_n_29 : STD_LOGIC;
  signal crop_I_n_30 : STD_LOGIC;
  signal crop_I_n_31 : STD_LOGIC;
  signal crop_I_n_32 : STD_LOGIC;
  signal crop_I_n_33 : STD_LOGIC;
  signal crop_I_n_34 : STD_LOGIC;
  signal crop_I_n_35 : STD_LOGIC;
  signal crop_I_n_36 : STD_LOGIC;
  signal crop_I_n_37 : STD_LOGIC;
  signal crop_I_n_38 : STD_LOGIC;
  signal crop_I_n_39 : STD_LOGIC;
  signal crop_I_n_40 : STD_LOGIC;
  signal crop_I_n_41 : STD_LOGIC;
  signal crop_I_n_42 : STD_LOGIC;
  signal crop_I_n_43 : STD_LOGIC;
  signal crop_I_n_44 : STD_LOGIC;
  signal crop_I_n_45 : STD_LOGIC;
  signal crop_I_n_46 : STD_LOGIC;
  signal crop_I_n_47 : STD_LOGIC;
  signal crop_I_n_48 : STD_LOGIC;
  signal crop_I_n_49 : STD_LOGIC;
  signal crop_I_n_50 : STD_LOGIC;
  signal crop_I_n_60 : STD_LOGIC;
  signal crop_I_n_61 : STD_LOGIC;
  signal debayer_I_n_0 : STD_LOGIC;
  signal debayer_I_n_1 : STD_LOGIC;
  signal debayer_I_n_10 : STD_LOGIC;
  signal debayer_I_n_11 : STD_LOGIC;
  signal debayer_I_n_12 : STD_LOGIC;
  signal debayer_I_n_13 : STD_LOGIC;
  signal debayer_I_n_14 : STD_LOGIC;
  signal debayer_I_n_15 : STD_LOGIC;
  signal debayer_I_n_16 : STD_LOGIC;
  signal debayer_I_n_17 : STD_LOGIC;
  signal debayer_I_n_18 : STD_LOGIC;
  signal debayer_I_n_19 : STD_LOGIC;
  signal debayer_I_n_2 : STD_LOGIC;
  signal debayer_I_n_20 : STD_LOGIC;
  signal debayer_I_n_21 : STD_LOGIC;
  signal debayer_I_n_3 : STD_LOGIC;
  signal debayer_I_n_4 : STD_LOGIC;
  signal debayer_I_n_5 : STD_LOGIC;
  signal debayer_I_n_6 : STD_LOGIC;
  signal debayer_I_n_7 : STD_LOGIC;
  signal debayer_I_n_8 : STD_LOGIC;
  signal debayer_I_n_9 : STD_LOGIC;
  signal \^has_last\ : STD_LOGIC;
  signal has_last_i_1_n_0 : STD_LOGIC;
  signal out_last : STD_LOGIC;
  signal out_last0 : STD_LOGIC;
  signal out_sof : STD_LOGIC;
  signal out_sof_i_1_n_0 : STD_LOGIC;
  signal out_valid : STD_LOGIC;
  signal out_valid_i0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_3_in : STD_LOGIC;
  signal packer_I_n_4 : STD_LOGIC;
  signal repack_32b_to_40b_I_n_12 : STD_LOGIC;
  signal repack_32b_to_40b_I_n_13 : STD_LOGIC;
  signal repack_32b_to_40b_I_n_14 : STD_LOGIC;
  signal repack_32b_to_40b_I_n_15 : STD_LOGIC;
  signal repack_32b_to_40b_I_n_16 : STD_LOGIC;
  signal repack_32b_to_40b_I_n_17 : STD_LOGIC;
  signal repack_32b_to_40b_I_n_18 : STD_LOGIC;
  signal repack_32b_to_40b_I_n_19 : STD_LOGIC;
  signal repack_32b_to_40b_I_n_2 : STD_LOGIC;
  signal repack_32b_to_40b_I_n_20 : STD_LOGIC;
  signal repack_32b_to_40b_I_n_21 : STD_LOGIC;
  signal repack_32b_to_40b_I_n_3 : STD_LOGIC;
  signal repack_32b_to_40b_I_n_4 : STD_LOGIC;
  signal repack_32b_to_40b_I_n_6 : STD_LOGIC;
  signal repack_32b_to_40b_I_n_8 : STD_LOGIC;
  signal repack_32b_to_40b_I_n_9 : STD_LOGIC;
  signal repack_32b_to_8b_I_n_10 : STD_LOGIC;
  signal repack_32b_to_8b_I_n_11 : STD_LOGIC;
  signal repack_32b_to_8b_I_n_12 : STD_LOGIC;
  signal repack_32b_to_8b_I_n_13 : STD_LOGIC;
  signal repack_32b_to_8b_I_n_6 : STD_LOGIC;
  signal repack_32b_to_8b_I_n_7 : STD_LOGIC;
  signal repack_32b_to_8b_I_n_8 : STD_LOGIC;
  signal repack_32b_to_8b_I_n_9 : STD_LOGIC;
  signal repack_40b_to_10b_I_n_0 : STD_LOGIC;
  signal repack_40b_to_10b_I_n_1 : STD_LOGIC;
  signal repack_40b_to_10b_I_n_10 : STD_LOGIC;
  signal repack_40b_to_10b_I_n_11 : STD_LOGIC;
  signal repack_40b_to_10b_I_n_12 : STD_LOGIC;
  signal repack_40b_to_10b_I_n_13 : STD_LOGIC;
  signal repack_40b_to_10b_I_n_14 : STD_LOGIC;
  signal repack_40b_to_10b_I_n_15 : STD_LOGIC;
  signal repack_40b_to_10b_I_n_16 : STD_LOGIC;
  signal repack_40b_to_10b_I_n_2 : STD_LOGIC;
  signal repack_40b_to_10b_I_n_3 : STD_LOGIC;
  signal repack_40b_to_10b_I_n_4 : STD_LOGIC;
  signal repack_40b_to_10b_I_n_5 : STD_LOGIC;
  signal repack_40b_to_10b_I_n_6 : STD_LOGIC;
  signal repack_40b_to_10b_I_n_7 : STD_LOGIC;
  signal repack_40b_to_10b_I_n_8 : STD_LOGIC;
  signal repack_40b_to_10b_I_n_9 : STD_LOGIC;
  signal \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vcrop_last : STD_LOGIC;
  signal vcrop_sof : STD_LOGIC;
  signal vcrop_valid : STD_LOGIC;
  signal vfm_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vfm_last : STD_LOGIC;
  signal vfm_sof : STD_LOGIC;
  signal vfm_valid : STD_LOGIC;
  signal vu40_sof : STD_LOGIC;
  signal vu40_valid : STD_LOGIC;
  signal vum_data : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vum_data_0 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal vum_last : STD_LOGIC;
  signal vum_sof : STD_LOGIC;
  signal vum_valid : STD_LOGIC;
begin
  \cnt_reg[16]\ <= \^cnt_reg[16]\;
  has_last <= \^has_last\;
  \srl_gen[0].part_stage_gen.b_gen[8].ff_I\(7 downto 0) <= \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(7 downto 0);
crop_I: entity work.TySOM_1_7Z030_mipi_csi_0_vid_crop
     port map (
      D(23) => crop_I_n_27,
      D(22) => crop_I_n_28,
      D(21) => crop_I_n_29,
      D(20) => crop_I_n_30,
      D(19) => crop_I_n_31,
      D(18) => crop_I_n_32,
      D(17) => crop_I_n_33,
      D(16) => crop_I_n_34,
      D(15) => crop_I_n_35,
      D(14) => crop_I_n_36,
      D(13) => crop_I_n_37,
      D(12) => crop_I_n_38,
      D(11) => crop_I_n_39,
      D(10) => crop_I_n_40,
      D(9) => crop_I_n_41,
      D(8) => crop_I_n_42,
      D(7) => crop_I_n_43,
      D(6) => crop_I_n_44,
      D(5) => crop_I_n_45,
      D(4) => crop_I_n_46,
      D(3) => crop_I_n_47,
      D(2) => crop_I_n_48,
      D(1) => crop_I_n_49,
      D(0) => crop_I_n_50,
      DI(3 downto 0) => DI(3 downto 0),
      E(0) => crop_I_n_61,
      Q(0) => Q(0),
      S(3 downto 0) => S(3 downto 0),
      clk => clk,
      \cnt_line_1_reg[11]_0\(11 downto 0) => \cnt_line_1_reg[11]\(11 downto 0),
      \cnt_reg[0]\ => packer_I_n_4,
      \cnt_reg[1]\ => crop_I_n_60,
      \out\(11 downto 0) => \out\(11 downto 0),
      out_valid_i0 => out_valid_i0,
      p_3_in => p_3_in,
      \^q\(7 downto 0) => \^q\(7 downto 0),
      \reg_reg[10]\(1 downto 0) => \reg_reg[10]\(1 downto 0),
      \reg_reg[10]_0\(1 downto 0) => \reg_reg[10]_0\(1 downto 0),
      \reg_reg[10]_1\(1 downto 0) => \reg_reg[10]_1\(1 downto 0),
      \reg_reg[10]_2\(1 downto 0) => \reg_reg[10]_2\(1 downto 0),
      \reg_reg[11]\(11 downto 0) => \reg_reg[11]\(11 downto 0),
      \reg_reg[11]_0\(11 downto 0) => \reg_reg[11]_0\(11 downto 0),
      \reg_reg[11]_1\(11 downto 0) => \reg_reg[11]_1\(11 downto 0),
      \reg_reg[1]\(1 downto 0) => \reg_reg[23]\(1 downto 0),
      \reg_reg[6]\(3 downto 0) => \reg_reg[6]\(3 downto 0),
      \reg_reg[6]_0\(3 downto 0) => \reg_reg[6]_0\(3 downto 0),
      vcrop_last => vcrop_last,
      vcrop_sof => vcrop_sof,
      vcrop_valid => vcrop_valid,
      \vfm_data_reg[31]\(31 downto 0) => vfm_data(31 downto 0),
      vfm_last => vfm_last,
      vfm_sof => vfm_sof,
      vfm_valid => vfm_valid
    );
debayer_I: entity work.TySOM_1_7Z030_mipi_csi_0_vid_debayer
     port map (
      D(0) => vum_valid,
      DO(18 downto 8) => DO(26 downto 16),
      DO(7 downto 0) => DO(7 downto 0),
      DOP(0) => DOP(0),
      Q(2 downto 0) => \vfm_data_reg[26]_0\(2 downto 0),
      clk => clk,
      \cnt_reg[16]\(0) => \cnt_reg[16]_0\(0),
      p_1_in(7 downto 0) => p_1_in(7 downto 0),
      pause_reg => pause_reg,
      \reg_reg[17]\(11 downto 0) => \reg_reg[23]\(13 downto 2),
      \vfm_data_reg[10]\(2 downto 0) => \vfm_data_reg[10]_0\(2 downto 0),
      \vfm_data_reg[11]\ => \vfm_data_reg[11]_0\,
      \vfm_data_reg[12]\ => \vfm_data_reg[12]_0\,
      \vfm_data_reg[13]\ => \vfm_data_reg[13]_0\,
      \vfm_data_reg[14]\ => \vfm_data_reg[14]_0\,
      \vfm_data_reg[15]\ => \vfm_data_reg[15]_0\,
      \vfm_data_reg[26]\(18) => debayer_I_n_3,
      \vfm_data_reg[26]\(17) => debayer_I_n_4,
      \vfm_data_reg[26]\(16) => debayer_I_n_5,
      \vfm_data_reg[26]\(15) => debayer_I_n_6,
      \vfm_data_reg[26]\(14) => debayer_I_n_7,
      \vfm_data_reg[26]\(13) => debayer_I_n_8,
      \vfm_data_reg[26]\(12) => debayer_I_n_9,
      \vfm_data_reg[26]\(11) => debayer_I_n_10,
      \vfm_data_reg[26]\(10) => debayer_I_n_11,
      \vfm_data_reg[26]\(9) => debayer_I_n_12,
      \vfm_data_reg[26]\(8) => debayer_I_n_13,
      \vfm_data_reg[26]\(7) => debayer_I_n_14,
      \vfm_data_reg[26]\(6) => debayer_I_n_15,
      \vfm_data_reg[26]\(5) => debayer_I_n_16,
      \vfm_data_reg[26]\(4) => debayer_I_n_17,
      \vfm_data_reg[26]\(3) => debayer_I_n_18,
      \vfm_data_reg[26]\(2) => debayer_I_n_19,
      \vfm_data_reg[26]\(1) => debayer_I_n_20,
      \vfm_data_reg[26]\(0) => debayer_I_n_21,
      \vfm_data_reg[27]\ => \vfm_data_reg[27]_0\,
      \vfm_data_reg[28]\ => \vfm_data_reg[28]_0\,
      \vfm_data_reg[29]\ => \vfm_data_reg[29]_0\,
      \vfm_data_reg[30]\ => \vfm_data_reg[30]_0\,
      \vfm_data_reg[31]\ => \vfm_data_reg[31]_0\,
      vfm_last_reg => debayer_I_n_1,
      vfm_sof_reg => debayer_I_n_2,
      vfm_valid_reg => debayer_I_n_0,
      vin_sof => vin_sof,
      \vum_data_reg[9]\(8 downto 1) => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(7 downto 0),
      \vum_data_reg[9]\(0) => vum_data_0(1),
      vum_last_reg(0) => vum_last,
      vum_sof_reg(0) => vum_sof
    );
has_last_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF55CF00"
    )
        port map (
      I0 => repack_32b_to_40b_I_n_4,
      I1 => DOP(0),
      I2 => \cnt_reg[16]_0\(0),
      I3 => repack_32b_to_40b_I_n_2,
      I4 => \^has_last\,
      O => has_last_i_1_n_0
    );
out_sof_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA03AB03AA00A800"
    )
        port map (
      I0 => repack_32b_to_40b_I_n_2,
      I1 => repack_32b_to_40b_I_n_8,
      I2 => repack_32b_to_40b_I_n_6,
      I3 => vin_sof,
      I4 => repack_32b_to_40b_I_n_3,
      I5 => vu40_sof,
      O => out_sof_i_1_n_0
    );
packer_I: entity work.TySOM_1_7Z030_mipi_csi_0_vid_packer
     port map (
      D(31) => crop_I_n_27,
      D(30) => crop_I_n_28,
      D(29) => crop_I_n_29,
      D(28) => crop_I_n_30,
      D(27) => crop_I_n_31,
      D(26) => crop_I_n_32,
      D(25) => crop_I_n_33,
      D(24) => crop_I_n_34,
      D(23) => crop_I_n_35,
      D(22) => crop_I_n_36,
      D(21) => crop_I_n_37,
      D(20) => crop_I_n_38,
      D(19) => crop_I_n_39,
      D(18) => crop_I_n_40,
      D(17) => crop_I_n_41,
      D(16) => crop_I_n_42,
      D(15) => crop_I_n_43,
      D(14) => crop_I_n_44,
      D(13) => crop_I_n_45,
      D(12) => crop_I_n_46,
      D(11) => crop_I_n_47,
      D(10) => crop_I_n_48,
      D(9) => crop_I_n_49,
      D(8) => crop_I_n_50,
      D(7 downto 0) => D(7 downto 0),
      DIP(1 downto 0) => DIP(1 downto 0),
      E(0) => crop_I_n_61,
      Q(0) => Q(0),
      clk => clk,
      \cnt_reg[1]_0\ => packer_I_n_4,
      out_valid_i0 => out_valid_i0,
      p_3_in => p_3_in,
      \pix_fifo_cnt_reg[0]\(31 downto 0) => \pix_fifo_cnt_reg[0]\(31 downto 0),
      \reg_reg[1]\(1 downto 0) => \reg_reg[23]\(1 downto 0),
      \rst_cnt_reg[3]\ => crop_I_n_60,
      vcrop_last => vcrop_last,
      vcrop_sof => vcrop_sof,
      vcrop_valid => vcrop_valid,
      vout_valid => vout_valid
    );
repack_32b_to_40b_I: entity work.TySOM_1_7Z030_mipi_csi_0_vid_32b_to_40b
     port map (
      DO(31 downto 0) => DO(31 downto 0),
      \FSM_sequential_state_cur_reg[1]\ => \FSM_sequential_state_cur_reg[1]\,
      Q(0) => Q(0),
      clk => clk,
      \cnt_reg[0]_0\ => repack_32b_to_40b_I_n_9,
      \cnt_reg[0]_1\ => repack_40b_to_10b_I_n_1,
      \cnt_reg[0]_2\ => repack_40b_to_10b_I_n_0,
      \cnt_reg[0]_3\ => \^cnt_reg[16]\,
      \cnt_reg[16]\ => has_last_i_1_n_0,
      \cnt_reg[1]_0\ => repack_40b_to_10b_I_n_2,
      \cnt_reg[1]_1\ => repack_40b_to_10b_I_n_3,
      \eqOp__0\ => \eqOp__0\,
      has_last_reg_0 => repack_32b_to_40b_I_n_2,
      has_last_reg_1 => repack_32b_to_40b_I_n_4,
      has_last_reg_2 => has_last_reg,
      \out_data_reg[0]\ => repack_32b_to_40b_I_n_12,
      \out_data_reg[1]\ => repack_32b_to_40b_I_n_13,
      \out_data_reg[2]\ => repack_32b_to_40b_I_n_14,
      \out_data_reg[3]\ => repack_32b_to_40b_I_n_15,
      \out_data_reg[4]\ => repack_32b_to_40b_I_n_16,
      \out_data_reg[5]\ => repack_32b_to_40b_I_n_17,
      \out_data_reg[6]\ => repack_32b_to_40b_I_n_18,
      \out_data_reg[7]\ => repack_32b_to_40b_I_n_19,
      \out_data_reg[8]\ => repack_32b_to_40b_I_n_20,
      \out_data_reg[9]\ => repack_32b_to_40b_I_n_21,
      out_last0 => out_last0,
      out_sof_reg_0 => repack_32b_to_40b_I_n_3,
      out_sof_reg_1 => repack_32b_to_40b_I_n_6,
      out_sof_reg_2 => repack_32b_to_40b_I_n_8,
      out_valid_i_reg => \^has_last\,
      pause => pause,
      pause_reg => pause_reg,
      pktr_empty => pktr_empty,
      \reg_reg[23]\(0) => \reg_reg[23]\(16),
      vid_ready => vid_ready,
      vid_sof_reg => out_sof_i_1_n_0,
      vin_ready_10b => vin_ready_10b,
      vu40_sof => vu40_sof,
      vu40_valid => vu40_valid
    );
repack_32b_to_8b_I: entity work.TySOM_1_7Z030_mipi_csi_0_vid_32b_to_8b
     port map (
      DOP(0) => DOP(0),
      Q(0) => Q(0),
      clk => clk,
      \cnt_reg[16]\ => \^cnt_reg[16]\,
      \cnt_reg[16]_0\(0) => \cnt_reg[16]_0\(0),
      \cnt_reg[1]_0\ => cnt(0),
      \cnt_reg[1]_1\ => cnt(1),
      mux(7 downto 0) => mux(7 downto 0),
      out_last => out_last,
      out_sof => out_sof,
      out_valid => out_valid,
      pause_reg => pause_reg,
      vin_sof => vin_sof,
      \vum_data_reg[0]\ => repack_32b_to_8b_I_n_7,
      \vum_data_reg[1]\ => repack_32b_to_8b_I_n_6,
      \vum_data_reg[2]\ => repack_32b_to_8b_I_n_13,
      \vum_data_reg[3]\ => repack_32b_to_8b_I_n_12,
      \vum_data_reg[4]\ => repack_32b_to_8b_I_n_11,
      \vum_data_reg[5]\ => repack_32b_to_8b_I_n_10,
      \vum_data_reg[6]\ => repack_32b_to_8b_I_n_9,
      \vum_data_reg[7]\ => repack_32b_to_8b_I_n_8
    );
repack_40b_to_10b_I: entity work.TySOM_1_7Z030_mipi_csi_0_vid_40b_to_10b
     port map (
      D(9) => repack_40b_to_10b_I_n_7,
      D(8) => repack_40b_to_10b_I_n_8,
      D(7) => repack_40b_to_10b_I_n_9,
      D(6) => repack_40b_to_10b_I_n_10,
      D(5) => repack_40b_to_10b_I_n_11,
      D(4) => repack_40b_to_10b_I_n_12,
      D(3) => repack_40b_to_10b_I_n_13,
      D(2) => repack_40b_to_10b_I_n_14,
      D(1) => repack_40b_to_10b_I_n_15,
      D(0) => repack_40b_to_10b_I_n_16,
      Q(0) => Q(0),
      clk => clk,
      \cnt_reg[0]_0\ => repack_40b_to_10b_I_n_1,
      \cnt_reg[0]_1\ => repack_40b_to_10b_I_n_3,
      \cnt_reg[1]_0\ => repack_40b_to_10b_I_n_2,
      \data_reg_reg[10]\ => repack_32b_to_40b_I_n_16,
      \data_reg_reg[11]\ => repack_32b_to_40b_I_n_17,
      \data_reg_reg[12]\ => repack_32b_to_40b_I_n_18,
      \data_reg_reg[13]\ => repack_32b_to_40b_I_n_19,
      \data_reg_reg[14]\ => repack_32b_to_40b_I_n_20,
      \data_reg_reg[15]\ => repack_32b_to_40b_I_n_21,
      \data_reg_reg[34]\ => repack_32b_to_40b_I_n_12,
      \data_reg_reg[35]\ => repack_32b_to_40b_I_n_13,
      \data_reg_reg[7]\ => repack_40b_to_10b_I_n_0,
      \data_reg_reg[8]\ => repack_32b_to_40b_I_n_14,
      \data_reg_reg[9]\ => repack_32b_to_40b_I_n_15,
      has_last => \^has_last\,
      \out_data_reg[0]_0\ => repack_32b_to_8b_I_n_13,
      \out_data_reg[1]_0\ => repack_32b_to_8b_I_n_12,
      \out_data_reg[2]_0\ => repack_32b_to_8b_I_n_11,
      \out_data_reg[3]_0\ => repack_32b_to_8b_I_n_10,
      \out_data_reg[4]_0\ => repack_32b_to_8b_I_n_9,
      \out_data_reg[5]_0\ => repack_32b_to_8b_I_n_8,
      \out_data_reg[6]_0\ => repack_32b_to_8b_I_n_7,
      \out_data_reg[7]_0\ => repack_32b_to_8b_I_n_6,
      out_last => out_last,
      out_last0 => out_last0,
      out_sof => out_sof,
      out_valid => out_valid,
      \reg_reg[23]\(0) => \reg_reg[23]\(16),
      \rst_cnt_reg[3]\ => repack_32b_to_40b_I_n_9,
      vu40_sof => vu40_sof,
      vu40_valid => vu40_valid,
      vum_last_reg => repack_40b_to_10b_I_n_4,
      vum_sof_reg => repack_40b_to_10b_I_n_5,
      vum_valid_reg => repack_40b_to_10b_I_n_6
    );
\vfm_data[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(2),
      I1 => \reg_reg[23]\(14),
      I2 => vum_data(0),
      I3 => \reg_reg[23]\(15),
      I4 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(0),
      O => p_1_in(0)
    );
\vfm_data[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(3),
      I1 => \reg_reg[23]\(14),
      I2 => vum_data_0(1),
      I3 => \reg_reg[23]\(15),
      I4 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(1),
      O => p_1_in(1)
    );
\vfm_data[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(4),
      I1 => \reg_reg[23]\(14),
      I2 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(0),
      I3 => \reg_reg[23]\(15),
      I4 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(2),
      O => p_1_in(2)
    );
\vfm_data[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(5),
      I1 => \reg_reg[23]\(14),
      I2 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(1),
      I3 => \reg_reg[23]\(15),
      I4 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(3),
      O => p_1_in(3)
    );
\vfm_data[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(6),
      I1 => \reg_reg[23]\(14),
      I2 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(2),
      I3 => \reg_reg[23]\(15),
      I4 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(4),
      O => p_1_in(4)
    );
\vfm_data[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(7),
      I1 => \reg_reg[23]\(14),
      I2 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(3),
      I3 => \reg_reg[23]\(15),
      I4 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(5),
      O => p_1_in(5)
    );
\vfm_data[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => vum_data(0),
      I1 => \reg_reg[23]\(14),
      I2 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(4),
      I3 => \reg_reg[23]\(15),
      I4 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(6),
      O => p_1_in(6)
    );
\vfm_data[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => vum_data_0(1),
      I1 => \reg_reg[23]\(14),
      I2 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(5),
      I3 => \reg_reg[23]\(15),
      I4 => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(7),
      O => p_1_in(7)
    );
\vfm_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_21,
      Q => vfm_data(0),
      R => '0'
    );
\vfm_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_reg[4]\(2),
      Q => vfm_data(10),
      R => '0'
    );
\vfm_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_reg[4]\(3),
      Q => vfm_data(11),
      R => '0'
    );
\vfm_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_reg[4]\(4),
      Q => vfm_data(12),
      R => '0'
    );
\vfm_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_reg[4]\(5),
      Q => vfm_data(13),
      R => '0'
    );
\vfm_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_reg[4]\(6),
      Q => vfm_data(14),
      R => '0'
    );
\vfm_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_reg[4]\(7),
      Q => vfm_data(15),
      R => '0'
    );
\vfm_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_13,
      Q => vfm_data(16),
      R => '0'
    );
\vfm_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_12,
      Q => vfm_data(17),
      R => '0'
    );
\vfm_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_11,
      Q => vfm_data(18),
      R => '0'
    );
\vfm_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_10,
      Q => vfm_data(19),
      R => '0'
    );
\vfm_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_20,
      Q => vfm_data(1),
      R => '0'
    );
\vfm_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_9,
      Q => vfm_data(20),
      R => '0'
    );
\vfm_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_8,
      Q => vfm_data(21),
      R => '0'
    );
\vfm_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_7,
      Q => vfm_data(22),
      R => '0'
    );
\vfm_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_6,
      Q => vfm_data(23),
      R => '0'
    );
\vfm_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_5,
      Q => vfm_data(24),
      R => '0'
    );
\vfm_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_4,
      Q => vfm_data(25),
      R => '0'
    );
\vfm_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_3,
      Q => vfm_data(26),
      R => '0'
    );
\vfm_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_reg[4]\(8),
      Q => vfm_data(27),
      R => '0'
    );
\vfm_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_reg[4]\(9),
      Q => vfm_data(28),
      R => '0'
    );
\vfm_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_reg[4]\(10),
      Q => vfm_data(29),
      R => '0'
    );
\vfm_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_19,
      Q => vfm_data(2),
      R => '0'
    );
\vfm_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_reg[4]\(11),
      Q => vfm_data(30),
      R => '0'
    );
\vfm_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_reg[4]\(12),
      Q => vfm_data(31),
      R => '0'
    );
\vfm_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_18,
      Q => vfm_data(3),
      R => '0'
    );
\vfm_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_17,
      Q => vfm_data(4),
      R => '0'
    );
\vfm_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_16,
      Q => vfm_data(5),
      R => '0'
    );
\vfm_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_15,
      Q => vfm_data(6),
      R => '0'
    );
\vfm_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_14,
      Q => vfm_data(7),
      R => '0'
    );
\vfm_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_reg[4]\(0),
      Q => vfm_data(8),
      R => '0'
    );
\vfm_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_reg[4]\(1),
      Q => vfm_data(9),
      R => '0'
    );
vfm_last_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_1,
      Q => vfm_last,
      R => '0'
    );
vfm_sof_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_2,
      Q => vfm_sof,
      R => '0'
    );
vfm_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => debayer_I_n_0,
      Q => vfm_valid,
      R => '0'
    );
\vum_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => repack_40b_to_10b_I_n_16,
      Q => vum_data(0),
      R => '0'
    );
\vum_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => repack_40b_to_10b_I_n_15,
      Q => vum_data_0(1),
      R => '0'
    );
\vum_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => repack_40b_to_10b_I_n_14,
      Q => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(0),
      R => '0'
    );
\vum_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => repack_40b_to_10b_I_n_13,
      Q => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(1),
      R => '0'
    );
\vum_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => repack_40b_to_10b_I_n_12,
      Q => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(2),
      R => '0'
    );
\vum_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => repack_40b_to_10b_I_n_11,
      Q => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(3),
      R => '0'
    );
\vum_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => repack_40b_to_10b_I_n_10,
      Q => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(4),
      R => '0'
    );
\vum_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => repack_40b_to_10b_I_n_9,
      Q => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(5),
      R => '0'
    );
\vum_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => repack_40b_to_10b_I_n_8,
      Q => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(6),
      R => '0'
    );
\vum_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => repack_40b_to_10b_I_n_7,
      Q => \^srl_gen[0].part_stage_gen.b_gen[8].ff_i\(7),
      R => '0'
    );
vum_last_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => repack_40b_to_10b_I_n_4,
      Q => vum_last,
      R => '0'
    );
vum_sof_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => repack_40b_to_10b_I_n_5,
      Q => vum_sof,
      R => '0'
    );
vum_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => repack_40b_to_10b_I_n_6,
      Q => vum_valid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0_mipi_csi_top is
  port (
    vaxi_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DOP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxi_bvalid : out STD_LOGIC;
    saxi_rvalid : out STD_LOGIC;
    saxi_arready : out STD_LOGIC;
    saxi_awready : out STD_LOGIC;
    saxi_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    intr : out STD_LOGIC;
    vaxi_valid : out STD_LOGIC;
    saxi_arvalid : in STD_LOGIC;
    saxi_wvalid : in STD_LOGIC;
    saxi_awvalid : in STD_LOGIC;
    saxi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pad_clk_p : in STD_LOGIC;
    pad_clk_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    refclk : in STD_LOGIC;
    pad_data_p : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pad_data_n : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rst : in STD_LOGIC;
    saxi_rready : in STD_LOGIC;
    saxi_bready : in STD_LOGIC;
    saxi_wdata : in STD_LOGIC_VECTOR ( 27 downto 0 );
    vaxi_ready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_mipi_csi_0_mipi_csi_top : entity is "mipi_csi_top";
end TySOM_1_7Z030_mipi_csi_0_mipi_csi_top;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0_mipi_csi_top is
  signal axi_ctrl_I_n_0 : STD_LOGIC;
  signal axi_ctrl_I_n_26 : STD_LOGIC;
  signal axi_ctrl_I_n_27 : STD_LOGIC;
  signal axi_ctrl_I_n_28 : STD_LOGIC;
  signal axi_ctrl_I_n_29 : STD_LOGIC;
  signal axi_ctrl_I_n_30 : STD_LOGIC;
  signal axi_ctrl_I_n_31 : STD_LOGIC;
  signal axi_ctrl_I_n_32 : STD_LOGIC;
  signal axi_ctrl_I_n_33 : STD_LOGIC;
  signal axi_ctrl_I_n_34 : STD_LOGIC;
  signal axi_ctrl_I_n_35 : STD_LOGIC;
  signal axi_ctrl_I_n_36 : STD_LOGIC;
  signal axi_ctrl_I_n_38 : STD_LOGIC;
  signal axi_ctrl_I_n_39 : STD_LOGIC;
  signal axi_ctrl_I_n_40 : STD_LOGIC;
  signal axi_ctrl_I_n_41 : STD_LOGIC;
  signal axi_ctrl_I_n_42 : STD_LOGIC;
  signal axi_ctrl_I_n_43 : STD_LOGIC;
  signal axi_ctrl_I_n_44 : STD_LOGIC;
  signal axi_ctrl_I_n_45 : STD_LOGIC;
  signal axi_ctrl_I_n_46 : STD_LOGIC;
  signal axi_ctrl_I_n_47 : STD_LOGIC;
  signal axi_ctrl_I_n_48 : STD_LOGIC;
  signal axi_ctrl_I_n_49 : STD_LOGIC;
  signal axi_ctrl_I_n_50 : STD_LOGIC;
  signal axi_ctrl_I_n_51 : STD_LOGIC;
  signal axi_ctrl_I_n_52 : STD_LOGIC;
  signal axi_ctrl_I_n_53 : STD_LOGIC;
  signal axi_ctrl_I_n_54 : STD_LOGIC;
  signal axi_ctrl_I_n_55 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \crop_I/cnt_col_1_reg\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \crop_I/cnt_line_1_reg\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ctrl_cfm : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ctrl_pol : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ctrl_vfm : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ctrl_vum : STD_LOGIC;
  signal dly_cnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal dly_ld_clk : STD_LOGIC;
  signal dly_ld_data : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dly_reset : STD_LOGIC;
  signal \eqOp__0\ : STD_LOGIC;
  signal \err_any_c__3\ : STD_LOGIC;
  signal err_early_last : STD_LOGIC;
  signal err_early_sof : STD_LOGIC;
  signal err_early_sof_c : STD_LOGIC;
  signal err_late_last : STD_LOGIC;
  signal err_no_hdr : STD_LOGIC;
  signal err_pending0 : STD_LOGIC;
  signal err_phy_bad_ecc : STD_LOGIC;
  signal err_phy_early_lp : STD_LOGIC;
  signal err_phy_overflow : STD_LOGIC;
  signal err_unk_pkt : STD_LOGIC;
  signal err_unk_pkt_c : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \minusOp__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mux : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal pause : STD_LOGIC;
  signal pause0 : STD_LOGIC;
  signal phy_clk : STD_LOGIC;
  signal phy_ctrl_active : STD_LOGIC;
  signal phy_ctrl_lpdet_byp : STD_LOGIC;
  signal phy_data : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal phy_err_bad_ecc : STD_LOGIC;
  signal phy_err_overflow : STD_LOGIC;
  signal \phy_rst_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \phy_rst_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \phy_rst_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \phy_rst_cnt_reg__0\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \phy_rst_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \phy_rst_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \phy_rst_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal phy_rst_req : STD_LOGIC;
  signal pix_fifo_I_n_37 : STD_LOGIC;
  signal pix_fifo_I_n_38 : STD_LOGIC;
  signal pix_fifo_aempty : STD_LOGIC;
  signal pix_fifo_afull : STD_LOGIC;
  signal \pix_fifo_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \pix_fifo_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \pix_fifo_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \pix_fifo_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \pix_fifo_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \pix_fifo_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \pix_fifo_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \pix_fifo_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \pix_fifo_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \pix_fifo_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \pix_fifo_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \pix_fifo_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \pix_fifo_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal pix_fifo_empty : STD_LOGIC;
  signal pix_fifo_empty_fwft : STD_LOGIC;
  signal pkt_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pkt_fifo_I_n_34 : STD_LOGIC;
  signal pkt_fifo_I_n_35 : STD_LOGIC;
  signal pkt_fifo_I_n_36 : STD_LOGIC;
  signal pkt_fifo_I_n_37 : STD_LOGIC;
  signal pkt_fifo_I_n_38 : STD_LOGIC;
  signal pkt_fifo_I_n_39 : STD_LOGIC;
  signal pkt_fifo_I_n_40 : STD_LOGIC;
  signal pkt_fifo_I_n_43 : STD_LOGIC;
  signal pkt_fifo_I_n_45 : STD_LOGIC;
  signal pkt_fifo_I_n_46 : STD_LOGIC;
  signal pkt_fifo_I_n_47 : STD_LOGIC;
  signal pkt_fifo_I_n_48 : STD_LOGIC;
  signal pkt_fifo_I_n_49 : STD_LOGIC;
  signal pkt_fifo_I_n_50 : STD_LOGIC;
  signal pkt_fifo_I_n_51 : STD_LOGIC;
  signal pkt_fifo_I_n_52 : STD_LOGIC;
  signal pkt_fifo_I_n_53 : STD_LOGIC;
  signal pkt_fifo_I_n_54 : STD_LOGIC;
  signal pkt_fifo_I_n_55 : STD_LOGIC;
  signal pkt_fifo_I_n_56 : STD_LOGIC;
  signal pkt_fifo_I_n_57 : STD_LOGIC;
  signal pkt_hdr : STD_LOGIC;
  signal pkt_last : STD_LOGIC;
  signal pkt_parser_I_n_0 : STD_LOGIC;
  signal pkt_parser_I_n_1 : STD_LOGIC;
  signal pkt_parser_I_n_11 : STD_LOGIC;
  signal pkt_parser_I_n_12 : STD_LOGIC;
  signal pkt_parser_I_n_14 : STD_LOGIC;
  signal pkt_parser_I_n_15 : STD_LOGIC;
  signal pkt_parser_I_n_16 : STD_LOGIC;
  signal pkt_parser_I_n_17 : STD_LOGIC;
  signal pkt_parser_I_n_9 : STD_LOGIC;
  signal pkt_recv_I_n_36 : STD_LOGIC;
  signal pkt_recv_I_n_37 : STD_LOGIC;
  signal pkt_recv_I_n_38 : STD_LOGIC;
  signal pktr_empty : STD_LOGIC;
  signal pktw_full : STD_LOGIC;
  signal pulse_out : STD_LOGIC;
  signal reg_cr : STD_LOGIC_VECTOR ( 18 downto 16 );
  signal reg_cr_I_n_0 : STD_LOGIC;
  signal reg_cr_I_n_5 : STD_LOGIC;
  signal reg_crop_colend_I_n_0 : STD_LOGIC;
  signal reg_crop_colend_I_n_1 : STD_LOGIC;
  signal reg_crop_colend_I_n_10 : STD_LOGIC;
  signal reg_crop_colend_I_n_11 : STD_LOGIC;
  signal reg_crop_colend_I_n_12 : STD_LOGIC;
  signal reg_crop_colend_I_n_13 : STD_LOGIC;
  signal reg_crop_colend_I_n_14 : STD_LOGIC;
  signal reg_crop_colend_I_n_15 : STD_LOGIC;
  signal reg_crop_colend_I_n_16 : STD_LOGIC;
  signal reg_crop_colend_I_n_17 : STD_LOGIC;
  signal reg_crop_colend_I_n_18 : STD_LOGIC;
  signal reg_crop_colend_I_n_19 : STD_LOGIC;
  signal reg_crop_colend_I_n_2 : STD_LOGIC;
  signal reg_crop_colend_I_n_20 : STD_LOGIC;
  signal reg_crop_colend_I_n_21 : STD_LOGIC;
  signal reg_crop_colend_I_n_22 : STD_LOGIC;
  signal reg_crop_colend_I_n_23 : STD_LOGIC;
  signal reg_crop_colend_I_n_3 : STD_LOGIC;
  signal reg_crop_colend_I_n_4 : STD_LOGIC;
  signal reg_crop_colend_I_n_5 : STD_LOGIC;
  signal reg_crop_colend_I_n_6 : STD_LOGIC;
  signal reg_crop_colend_I_n_7 : STD_LOGIC;
  signal reg_crop_colend_I_n_8 : STD_LOGIC;
  signal reg_crop_colend_I_n_9 : STD_LOGIC;
  signal reg_crop_colstart_I_n_0 : STD_LOGIC;
  signal reg_crop_colstart_I_n_1 : STD_LOGIC;
  signal reg_crop_colstart_I_n_10 : STD_LOGIC;
  signal reg_crop_colstart_I_n_11 : STD_LOGIC;
  signal reg_crop_colstart_I_n_2 : STD_LOGIC;
  signal reg_crop_colstart_I_n_3 : STD_LOGIC;
  signal reg_crop_colstart_I_n_4 : STD_LOGIC;
  signal reg_crop_colstart_I_n_5 : STD_LOGIC;
  signal reg_crop_colstart_I_n_6 : STD_LOGIC;
  signal reg_crop_colstart_I_n_7 : STD_LOGIC;
  signal reg_crop_colstart_I_n_8 : STD_LOGIC;
  signal reg_crop_colstart_I_n_9 : STD_LOGIC;
  signal reg_crop_lineend_I_n_0 : STD_LOGIC;
  signal reg_crop_lineend_I_n_1 : STD_LOGIC;
  signal reg_crop_lineend_I_n_10 : STD_LOGIC;
  signal reg_crop_lineend_I_n_11 : STD_LOGIC;
  signal reg_crop_lineend_I_n_2 : STD_LOGIC;
  signal reg_crop_lineend_I_n_3 : STD_LOGIC;
  signal reg_crop_lineend_I_n_4 : STD_LOGIC;
  signal reg_crop_lineend_I_n_5 : STD_LOGIC;
  signal reg_crop_lineend_I_n_6 : STD_LOGIC;
  signal reg_crop_lineend_I_n_7 : STD_LOGIC;
  signal reg_crop_lineend_I_n_8 : STD_LOGIC;
  signal reg_crop_lineend_I_n_9 : STD_LOGIC;
  signal reg_crop_linestart_I_n_0 : STD_LOGIC;
  signal reg_crop_linestart_I_n_1 : STD_LOGIC;
  signal reg_crop_linestart_I_n_10 : STD_LOGIC;
  signal reg_crop_linestart_I_n_11 : STD_LOGIC;
  signal reg_crop_linestart_I_n_2 : STD_LOGIC;
  signal reg_crop_linestart_I_n_3 : STD_LOGIC;
  signal reg_crop_linestart_I_n_4 : STD_LOGIC;
  signal reg_crop_linestart_I_n_5 : STD_LOGIC;
  signal reg_crop_linestart_I_n_6 : STD_LOGIC;
  signal reg_crop_linestart_I_n_7 : STD_LOGIC;
  signal reg_crop_linestart_I_n_8 : STD_LOGIC;
  signal reg_crop_linestart_I_n_9 : STD_LOGIC;
  signal reg_er : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal reg_imr_I_n_0 : STD_LOGIC;
  signal reg_vpcr_I_n_16 : STD_LOGIC;
  signal reg_vpcr_I_n_17 : STD_LOGIC;
  signal reg_vpcr_I_n_18 : STD_LOGIC;
  signal reg_vpcr_I_n_19 : STD_LOGIC;
  signal reg_vpcr_I_n_2 : STD_LOGIC;
  signal reg_vpcr_I_n_20 : STD_LOGIC;
  signal reg_vpcr_I_n_21 : STD_LOGIC;
  signal reg_vpcr_I_n_22 : STD_LOGIC;
  signal reg_vpcr_I_n_23 : STD_LOGIC;
  signal reg_vpcr_I_n_24 : STD_LOGIC;
  signal reg_vpcr_I_n_25 : STD_LOGIC;
  signal reg_vpcr_I_n_27 : STD_LOGIC;
  signal reg_vpcr_I_n_28 : STD_LOGIC;
  signal reg_vpcr_I_n_29 : STD_LOGIC;
  signal reg_vpcr_I_n_3 : STD_LOGIC;
  signal reg_vpcr_I_n_30 : STD_LOGIC;
  signal reg_vpcr_I_n_31 : STD_LOGIC;
  signal reg_vpcr_I_n_32 : STD_LOGIC;
  signal reg_vpcr_I_n_33 : STD_LOGIC;
  signal reg_vpcr_I_n_34 : STD_LOGIC;
  signal reg_vpcr_I_n_35 : STD_LOGIC;
  signal reg_vpcr_I_n_36 : STD_LOGIC;
  signal reg_vpcr_I_n_37 : STD_LOGIC;
  signal reg_vpcr_I_n_38 : STD_LOGIC;
  signal reg_vpcr_I_n_39 : STD_LOGIC;
  signal \repack_32b_to_40b_I/has_last\ : STD_LOGIC;
  signal \repack_32b_to_8b_I/cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rst_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \rst_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \rst_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \rst_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal rst_req_axi : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rst_req_axi[0]_i_1_n_0\ : STD_LOGIC;
  signal \rst_req_axi[1]_i_1_n_0\ : STD_LOGIC;
  signal sig_in : STD_LOGIC;
  signal slb_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slb_wdata : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal stat_err_pending : STD_LOGIC;
  signal stat_phy_running : STD_LOGIC;
  signal stat_running : STD_LOGIC;
  signal state_nxt113_out : STD_LOGIC;
  signal vcfm_data : STD_LOGIC_VECTOR ( 10 downto 8 );
  signal vcol_green : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal vcrop_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal vid_pipeline_I_n_4 : STD_LOGIC;
  signal vid_pipeline_I_n_47 : STD_LOGIC;
  signal vid_pipeline_I_n_48 : STD_LOGIC;
  signal vid_pipeline_I_n_49 : STD_LOGIC;
  signal vid_pipeline_I_n_50 : STD_LOGIC;
  signal vid_pipeline_I_n_51 : STD_LOGIC;
  signal vid_pipeline_I_n_52 : STD_LOGIC;
  signal vid_pipeline_I_n_53 : STD_LOGIC;
  signal vid_pipeline_I_n_54 : STD_LOGIC;
  signal vid_pipeline_I_n_55 : STD_LOGIC;
  signal vid_pipeline_I_n_56 : STD_LOGIC;
  signal vid_ready : STD_LOGIC;
  signal vin_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vin_ready_10b : STD_LOGIC;
  signal vin_sof : STD_LOGIC;
  signal vout_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vout_last : STD_LOGIC;
  signal vout_sof : STD_LOGIC;
  signal vout_valid : STD_LOGIC;
  signal vum_data : STD_LOGIC_VECTOR ( 9 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \phy_rst_cnt[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \phy_rst_cnt[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \phy_rst_cnt[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \phy_rst_cnt[3]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \pix_fifo_cnt[0]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \pix_fifo_cnt[1]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \pix_fifo_cnt[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \pix_fifo_cnt[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \pix_fifo_cnt[4]_i_3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \pix_fifo_cnt[5]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rst_cnt[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rst_cnt[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rst_cnt[2]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rst_cnt[3]_i_2\ : label is "soft_lutpair45";
begin
axi_ctrl_I: entity work.TySOM_1_7Z030_mipi_csi_0_axilite2slb
     port map (
      D(8) => axi_ctrl_I_n_26,
      D(7) => axi_ctrl_I_n_27,
      D(6) => axi_ctrl_I_n_28,
      D(5) => axi_ctrl_I_n_29,
      D(4) => axi_ctrl_I_n_30,
      D(3) => axi_ctrl_I_n_31,
      D(2) => axi_ctrl_I_n_32,
      D(1) => axi_ctrl_I_n_33,
      D(0) => axi_ctrl_I_n_34,
      Q(24) => p_2_in(0),
      Q(23) => p_2_in(1),
      Q(22) => slb_wdata(23),
      Q(21 downto 0) => slb_wdata(21 downto 0),
      clk => clk,
      ctrl_dly_ld_clk_reg => axi_ctrl_I_n_0,
      \ctrl_dly_ld_data_reg[1]\(1) => axi_ctrl_I_n_40,
      \ctrl_dly_ld_data_reg[1]\(0) => axi_ctrl_I_n_41,
      err_early_last => err_early_last,
      err_early_sof => err_early_sof,
      err_late_last => err_late_last,
      err_no_hdr => err_no_hdr,
      err_phy_bad_ecc => err_phy_bad_ecc,
      err_phy_early_lp => err_phy_early_lp,
      err_phy_overflow => err_phy_overflow,
      err_unk_pkt => err_unk_pkt,
      \out\ => stat_phy_running,
      p_0_in => p_0_in,
      pix_fifo_empty => pix_fifo_empty,
      pktr_empty => pktr_empty,
      pulse_out => pulse_out,
      \reg_er_reg[19]\(8 downto 5) => reg_er(19 downto 16),
      \reg_er_reg[19]\(4 downto 0) => reg_er(4 downto 0),
      rst => rst,
      saxi_araddr(3 downto 0) => saxi_araddr(3 downto 0),
      saxi_arready => saxi_arready,
      saxi_arvalid => saxi_arvalid,
      saxi_awaddr(3 downto 0) => saxi_awaddr(3 downto 0),
      saxi_awready => saxi_awready,
      saxi_awvalid => saxi_awvalid,
      saxi_bready => saxi_bready,
      saxi_bvalid => saxi_bvalid,
      saxi_rdata(10 downto 0) => saxi_rdata(10 downto 0),
      saxi_rready => saxi_rready,
      saxi_rvalid => saxi_rvalid,
      saxi_wdata(27 downto 0) => saxi_wdata(27 downto 0),
      saxi_wvalid => saxi_wvalid,
      \slb_rdata_reg[18]\ => axi_ctrl_I_n_53,
      \slb_rdata_reg[19]\ => axi_ctrl_I_n_54,
      \slb_rdata_reg[1]\ => axi_ctrl_I_n_49,
      \slb_rdata_reg[1]_0\ => axi_ctrl_I_n_55,
      \slb_rdata_reg[2]\ => axi_ctrl_I_n_50,
      \slb_rdata_reg[31]\(4) => axi_ctrl_I_n_44,
      \slb_rdata_reg[31]\(3) => axi_ctrl_I_n_45,
      \slb_rdata_reg[31]\(2) => axi_ctrl_I_n_46,
      \slb_rdata_reg[31]\(1) => axi_ctrl_I_n_47,
      \slb_rdata_reg[31]\(0) => axi_ctrl_I_n_48,
      \slb_rdata_reg[31]_0\(10 downto 9) => slb_rdata(31 downto 30),
      \slb_rdata_reg[31]_0\(8 downto 5) => slb_rdata(19 downto 16),
      \slb_rdata_reg[31]_0\(4 downto 0) => slb_rdata(4 downto 0),
      \slb_rdata_reg[3]\ => axi_ctrl_I_n_51,
      \slb_rdata_reg[4]\ => axi_ctrl_I_n_52,
      stat_err_pending => stat_err_pending,
      stat_running_reg => pkt_parser_I_n_9,
      wen_reg => axi_ctrl_I_n_35,
      wen_reg_0 => axi_ctrl_I_n_36,
      wen_reg_1 => axi_ctrl_I_n_38,
      wen_reg_2 => axi_ctrl_I_n_39,
      wen_reg_3 => axi_ctrl_I_n_42,
      wen_reg_4 => axi_ctrl_I_n_43
    );
\ctrl_dly_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => slb_wdata(0),
      Q => dly_cnt(0),
      R => dly_reset
    );
\ctrl_dly_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => slb_wdata(1),
      Q => dly_cnt(1),
      R => dly_reset
    );
\ctrl_dly_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => slb_wdata(2),
      Q => dly_cnt(2),
      R => dly_reset
    );
\ctrl_dly_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => slb_wdata(3),
      Q => dly_cnt(3),
      R => dly_reset
    );
\ctrl_dly_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => slb_wdata(4),
      Q => dly_cnt(4),
      R => dly_reset
    );
ctrl_dly_ld_clk_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_0,
      Q => dly_ld_clk,
      R => dly_reset
    );
\ctrl_dly_ld_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_41,
      Q => dly_ld_data(0),
      R => dly_reset
    );
\ctrl_dly_ld_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_40,
      Q => dly_ld_data(1),
      R => dly_reset
    );
intr_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg_imr_I_n_0,
      Q => intr,
      R => dly_reset
    );
phy_I: entity work.TySOM_1_7Z030_mipi_csi_0_mipi_csi_phy
     port map (
      Q(0) => dly_reset,
      clk => clk,
      \ctrl_dly_cnt_reg[4]\(4 downto 0) => dly_cnt(4 downto 0),
      \ctrl_dly_ld_data_reg[1]\(1 downto 0) => dly_ld_data(1 downto 0),
      dly_ld_clk => dly_ld_clk,
      out_clk => phy_clk,
      out_data(3 downto 0) => phy_data(3 downto 0),
      pad_clk_n => pad_clk_n,
      pad_clk_p => pad_clk_p,
      pad_data_n(1 downto 0) => pad_data_n(1 downto 0),
      pad_data_p(1 downto 0) => pad_data_p(1 downto 0),
      refclk => refclk
    );
phy_ctrl_active_I: entity work.TySOM_1_7Z030_mipi_csi_0_xclk_sync
     port map (
      Q(0) => reg_cr_I_n_5,
      clk => clk,
      \out\ => phy_ctrl_active,
      out_clk => phy_clk
    );
phy_ctrl_lpdet_byp_I: entity work.TySOM_1_7Z030_mipi_csi_0_xclk_sync_0
     port map (
      Q(0) => sig_in,
      clk => clk,
      \out\ => phy_ctrl_lpdet_byp,
      out_clk => phy_clk
    );
phy_err_bad_ecc_I: entity work.TySOM_1_7Z030_mipi_csi_0_xclk_pulse
     port map (
      clk => clk,
      err_bad_ecc_reg => pkt_recv_I_n_36,
      err_phy_bad_ecc => err_phy_bad_ecc,
      out_clk => phy_clk,
      p_0_in => p_0_in_0,
      phy_err_bad_ecc => phy_err_bad_ecc
    );
phy_err_early_lp_I: entity work.TySOM_1_7Z030_mipi_csi_0_xclk_pulse_1
     port map (
      clk => clk,
      err_phy_early_lp => err_phy_early_lp,
      out_clk => phy_clk
    );
phy_err_late_sync_I: entity work.TySOM_1_7Z030_mipi_csi_0_xclk_pulse_2
     port map (
      clk => clk,
      out_clk => phy_clk,
      pulse_out => pulse_out
    );
phy_err_overflow_I: entity work.TySOM_1_7Z030_mipi_csi_0_xclk_pulse_3
     port map (
      clk => clk,
      err_phy_overflow => err_phy_overflow,
      out_clk => phy_clk,
      phy_err_overflow => phy_err_overflow
    );
phy_err_overflow_reg: unisim.vcomponents.FDRE
     port map (
      C => phy_clk,
      CE => '1',
      D => pkt_recv_I_n_37,
      Q => phy_err_overflow,
      R => '0'
    );
\phy_rst_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phy_rst_cnt_reg_n_0_[0]\,
      O => minusOp(0)
    );
\phy_rst_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \phy_rst_cnt_reg_n_0_[0]\,
      I1 => \phy_rst_cnt_reg_n_0_[1]\,
      O => \phy_rst_cnt[1]_i_1_n_0\
    );
\phy_rst_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \phy_rst_cnt_reg_n_0_[1]\,
      I1 => \phy_rst_cnt_reg_n_0_[0]\,
      I2 => \phy_rst_cnt_reg_n_0_[2]\,
      O => \phy_rst_cnt[2]_i_1_n_0\
    );
\phy_rst_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \phy_rst_cnt_reg_n_0_[2]\,
      I1 => \phy_rst_cnt_reg_n_0_[0]\,
      I2 => \phy_rst_cnt_reg_n_0_[1]\,
      I3 => \phy_rst_cnt_reg__0\(3),
      O => \phy_rst_cnt[3]_i_1_n_0\
    );
\phy_rst_cnt_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => phy_clk,
      CE => \phy_rst_cnt_reg__0\(3),
      D => minusOp(0),
      PRE => phy_rst_req,
      Q => \phy_rst_cnt_reg_n_0_[0]\
    );
\phy_rst_cnt_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => phy_clk,
      CE => \phy_rst_cnt_reg__0\(3),
      D => \phy_rst_cnt[1]_i_1_n_0\,
      PRE => phy_rst_req,
      Q => \phy_rst_cnt_reg_n_0_[1]\
    );
\phy_rst_cnt_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => phy_clk,
      CE => \phy_rst_cnt_reg__0\(3),
      D => \phy_rst_cnt[2]_i_1_n_0\,
      PRE => phy_rst_req,
      Q => \phy_rst_cnt_reg_n_0_[2]\
    );
\phy_rst_cnt_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => phy_clk,
      CE => \phy_rst_cnt_reg__0\(3),
      D => \phy_rst_cnt[3]_i_1_n_0\,
      PRE => phy_rst_req,
      Q => \phy_rst_cnt_reg__0\(3)
    );
phy_rst_req_reg: unisim.vcomponents.FDPE
     port map (
      C => phy_clk,
      CE => '1',
      D => '0',
      PRE => dly_reset,
      Q => phy_rst_req
    );
phy_stat_running_I: entity work.TySOM_1_7Z030_mipi_csi_0_xclk_sync_4
     port map (
      clk => clk,
      \out\ => stat_phy_running,
      out_clk => phy_clk,
      stat_running => stat_running
    );
pix_fifo_I: entity work.TySOM_1_7Z030_mipi_csi_0_unimacro_FIFO_SYNC_MACRO
     port map (
      DIP(1) => vout_sof,
      DIP(0) => vout_last,
      DOP(1 downto 0) => DOP(1 downto 0),
      Q(0) => dly_reset,
      SR(0) => pix_fifo_I_n_37,
      clk => clk,
      \data_reg[31]\(31 downto 0) => vout_data(31 downto 0),
      p_0_in4_in => p_0_in4_in,
      pix_fifo_aempty => pix_fifo_aempty,
      pix_fifo_afull => pix_fifo_afull,
      pix_fifo_empty => pix_fifo_empty,
      pix_fifo_empty_fwft => pix_fifo_empty_fwft,
      pix_fifo_empty_fwft_reg => pix_fifo_I_n_38,
      vaxi_data(31 downto 0) => vaxi_data(31 downto 0),
      vaxi_ready => vaxi_ready,
      vout_valid => vout_valid
    );
\pix_fifo_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pix_fifo_cnt_reg_n_0_[0]\,
      O => \pix_fifo_cnt[0]_i_1_n_0\
    );
\pix_fifo_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pix_fifo_cnt_reg_n_0_[0]\,
      I1 => \pix_fifo_cnt_reg_n_0_[1]\,
      O => \pix_fifo_cnt[1]_i_1_n_0\
    );
\pix_fifo_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \pix_fifo_cnt_reg_n_0_[0]\,
      I1 => \pix_fifo_cnt_reg_n_0_[1]\,
      I2 => \pix_fifo_cnt_reg_n_0_[2]\,
      O => \pix_fifo_cnt[2]_i_1_n_0\
    );
\pix_fifo_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \pix_fifo_cnt_reg_n_0_[1]\,
      I1 => \pix_fifo_cnt_reg_n_0_[0]\,
      I2 => \pix_fifo_cnt_reg_n_0_[2]\,
      I3 => \pix_fifo_cnt_reg_n_0_[3]\,
      O => \pix_fifo_cnt[3]_i_1_n_0\
    );
\pix_fifo_cnt[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in4_in,
      O => \pix_fifo_cnt[4]_i_2_n_0\
    );
\pix_fifo_cnt[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \pix_fifo_cnt_reg_n_0_[2]\,
      I1 => \pix_fifo_cnt_reg_n_0_[0]\,
      I2 => \pix_fifo_cnt_reg_n_0_[1]\,
      I3 => \pix_fifo_cnt_reg_n_0_[3]\,
      I4 => \pix_fifo_cnt_reg_n_0_[4]\,
      O => \pix_fifo_cnt[4]_i_3_n_0\
    );
\pix_fifo_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FDDD"
    )
        port map (
      I0 => pix_fifo_aempty,
      I1 => p_0_in4_in,
      I2 => \pix_fifo_cnt[5]_i_2_n_0\,
      I3 => \pix_fifo_cnt_reg_n_0_[4]\,
      I4 => pix_fifo_empty_fwft,
      I5 => dly_reset,
      O => \pix_fifo_cnt[5]_i_1_n_0\
    );
\pix_fifo_cnt[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \pix_fifo_cnt_reg_n_0_[3]\,
      I1 => \pix_fifo_cnt_reg_n_0_[1]\,
      I2 => \pix_fifo_cnt_reg_n_0_[0]\,
      I3 => \pix_fifo_cnt_reg_n_0_[2]\,
      O => \pix_fifo_cnt[5]_i_2_n_0\
    );
\pix_fifo_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pix_fifo_cnt[4]_i_2_n_0\,
      D => \pix_fifo_cnt[0]_i_1_n_0\,
      Q => \pix_fifo_cnt_reg_n_0_[0]\,
      R => pix_fifo_I_n_37
    );
\pix_fifo_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pix_fifo_cnt[4]_i_2_n_0\,
      D => \pix_fifo_cnt[1]_i_1_n_0\,
      Q => \pix_fifo_cnt_reg_n_0_[1]\,
      R => pix_fifo_I_n_37
    );
\pix_fifo_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pix_fifo_cnt[4]_i_2_n_0\,
      D => \pix_fifo_cnt[2]_i_1_n_0\,
      Q => \pix_fifo_cnt_reg_n_0_[2]\,
      R => pix_fifo_I_n_37
    );
\pix_fifo_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pix_fifo_cnt[4]_i_2_n_0\,
      D => \pix_fifo_cnt[3]_i_1_n_0\,
      Q => \pix_fifo_cnt_reg_n_0_[3]\,
      R => pix_fifo_I_n_37
    );
\pix_fifo_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pix_fifo_cnt[4]_i_2_n_0\,
      D => \pix_fifo_cnt[4]_i_3_n_0\,
      Q => \pix_fifo_cnt_reg_n_0_[4]\,
      R => pix_fifo_I_n_37
    );
\pix_fifo_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \pix_fifo_cnt[5]_i_1_n_0\,
      Q => p_0_in4_in,
      R => '0'
    );
pix_fifo_empty_fwft_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => pix_fifo_I_n_38,
      Q => pix_fifo_empty_fwft,
      S => dly_reset
    );
pkt_fifo_I: entity work.TySOM_1_7Z030_mipi_csi_0_unimacro_FIFO_DUALCLOCK_MACRO
     port map (
      DIP(1) => pkt_hdr,
      DIP(0) => pkt_last,
      DO(31 downto 0) => vin_data(31 downto 0),
      DOP(1) => pkt_fifo_I_n_34,
      DOP(0) => pkt_fifo_I_n_35,
      \FSM_sequential_state_cur_reg[0]\ => pkt_fifo_I_n_40,
      \FSM_sequential_state_cur_reg[1]\ => pkt_fifo_I_n_43,
      \FSM_sequential_state_cur_reg[1]_0\ => pkt_parser_I_n_16,
      Q(0) => dly_reset,
      S(3) => pkt_fifo_I_n_36,
      S(2) => pkt_fifo_I_n_37,
      S(1) => pkt_fifo_I_n_38,
      S(0) => pkt_fifo_I_n_39,
      clk => clk,
      cnt(1 downto 0) => \repack_32b_to_8b_I/cnt\(1 downto 0),
      \cnt_reg[12]\(3) => pkt_fifo_I_n_48,
      \cnt_reg[12]\(2) => pkt_fifo_I_n_49,
      \cnt_reg[12]\(1) => pkt_fifo_I_n_50,
      \cnt_reg[12]\(0) => pkt_fifo_I_n_51,
      \cnt_reg[16]\(2) => pkt_fifo_I_n_45,
      \cnt_reg[16]\(1) => pkt_fifo_I_n_46,
      \cnt_reg[16]\(0) => pkt_fifo_I_n_47,
      \cnt_reg[8]\(3) => pkt_fifo_I_n_52,
      \cnt_reg[8]\(2) => pkt_fifo_I_n_53,
      \cnt_reg[8]\(1) => pkt_fifo_I_n_54,
      \cnt_reg[8]\(0) => pkt_fifo_I_n_55,
      err_early_sof_c => err_early_sof_c,
      err_unk_pkt_c => err_unk_pkt_c,
      mux(7 downto 0) => mux(7 downto 0),
      \out\(1) => pkt_parser_I_n_0,
      \out\(0) => pkt_parser_I_n_1,
      out_clk => phy_clk,
      pause_reg => pkt_parser_I_n_11,
      pkt_data(31 downto 0) => pkt_data(31 downto 0),
      pkt_valid_reg => pkt_recv_I_n_38,
      pktr_empty => pktr_empty,
      pktw_full => pktw_full,
      \reg_reg[16]\ => pkt_parser_I_n_15,
      state_nxt113_out => state_nxt113_out,
      vid_sof_reg => pkt_fifo_I_n_56,
      vid_sof_reg_0 => pkt_fifo_I_n_57
    );
pkt_parser_I: entity work.TySOM_1_7Z030_mipi_csi_0_mipi_csi_pkt_parse
     port map (
      DO(14 downto 2) => vin_data(23 downto 11),
      DO(1 downto 0) => vin_data(9 downto 8),
      DOP(1) => pkt_fifo_I_n_34,
      DOP(0) => pkt_fifo_I_n_35,
      \FSM_sequential_state_cur_reg[0]_0\ => pkt_fifo_I_n_43,
      \FSM_sequential_state_cur_reg[0]_1\ => pkt_fifo_I_n_40,
      \FSM_sequential_state_cur_reg[2]_0\ => pkt_parser_I_n_15,
      Q(0) => dly_reset,
      S(3) => pkt_fifo_I_n_36,
      S(2) => pkt_fifo_I_n_37,
      S(1) => pkt_fifo_I_n_38,
      S(0) => pkt_fifo_I_n_39,
      clk => clk,
      \cnt_reg[16]_0\ => pkt_parser_I_n_11,
      \data_reg_reg[15]\ => pkt_parser_I_n_17,
      \err_any_c__3\ => \err_any_c__3\,
      err_early_last => err_early_last,
      err_early_sof => err_early_sof,
      err_early_sof_c => err_early_sof_c,
      err_late_last => err_late_last,
      err_late_last_reg_0(0) => p_0_in1_in,
      err_late_last_reg_1 => pkt_parser_I_n_14,
      err_no_hdr => err_no_hdr,
      err_pending0 => err_pending0,
      err_unk_pkt => err_unk_pkt,
      err_unk_pkt_c => err_unk_pkt_c,
      has_footer_reg_0 => pkt_parser_I_n_16,
      has_last => \repack_32b_to_40b_I/has_last\,
      \out\(1) => pkt_parser_I_n_0,
      \out\(0) => pkt_parser_I_n_1,
      out_valid_i_reg => pkt_parser_I_n_12,
      pause => pause,
      pause0 => pause0,
      pix_fifo_afull => pix_fifo_afull,
      pktr_empty => pktr_empty,
      \reg_reg[16]\ => reg_cr_I_n_0,
      \reg_reg[18]\(2 downto 0) => reg_cr(18 downto 16),
      \rst_cnt_reg[3]\(3) => pkt_fifo_I_n_52,
      \rst_cnt_reg[3]\(2) => pkt_fifo_I_n_53,
      \rst_cnt_reg[3]\(1) => pkt_fifo_I_n_54,
      \rst_cnt_reg[3]\(0) => pkt_fifo_I_n_55,
      \rst_cnt_reg[3]_0\(3) => pkt_fifo_I_n_48,
      \rst_cnt_reg[3]_0\(2) => pkt_fifo_I_n_49,
      \rst_cnt_reg[3]_0\(1) => pkt_fifo_I_n_50,
      \rst_cnt_reg[3]_0\(0) => pkt_fifo_I_n_51,
      \rst_cnt_reg[3]_1\(2) => pkt_fifo_I_n_45,
      \rst_cnt_reg[3]_1\(1) => pkt_fifo_I_n_46,
      \rst_cnt_reg[3]_1\(0) => pkt_fifo_I_n_47,
      \rst_cnt_reg[3]_2\ => pkt_fifo_I_n_57,
      \rst_cnt_reg[3]_3\ => pkt_fifo_I_n_56,
      \slb_rdata_reg[16]\ => pkt_parser_I_n_9,
      stat_err_pending => stat_err_pending,
      state_nxt113_out => state_nxt113_out,
      vid_ready => vid_ready,
      vin_sof => vin_sof
    );
pkt_recv_I: entity work.TySOM_1_7Z030_mipi_csi_0_mipi_csi_pkt_recv
     port map (
      DIP(1) => pkt_hdr,
      DIP(0) => pkt_last,
      Q(0) => \phy_rst_cnt_reg__0\(3),
      \cnt_reg[0]\ => pkt_recv_I_n_36,
      err_unk_pkt_reg => pkt_recv_I_n_38,
      \out\ => phy_ctrl_lpdet_byp,
      out_clk => phy_clk,
      out_data(3 downto 0) => phy_data(3 downto 0),
      p_0_in => p_0_in_0,
      phy_err_bad_ecc => phy_err_bad_ecc,
      phy_err_overflow_reg => pkt_recv_I_n_37,
      pkt_data(31 downto 0) => pkt_data(31 downto 0),
      pktw_full => pktw_full,
      reg_out2_reg => phy_ctrl_active,
      stat_running => stat_running
    );
reg_cr_I: entity work.TySOM_1_7Z030_mipi_csi_0_slb_reg
     port map (
      D(4 downto 2) => slb_wdata(18 downto 16),
      D(1 downto 0) => slb_wdata(1 downto 0),
      Q(0) => dly_reset,
      clk => clk,
      \cnt_reg[16]\(4 downto 2) => reg_cr(18 downto 16),
      \cnt_reg[16]\(1) => sig_in,
      \cnt_reg[16]\(0) => reg_cr_I_n_5,
      \err_any_c__3\ => \err_any_c__3\,
      err_pending0 => err_pending0,
      p_0_in => p_0_in,
      stat_err_pending => stat_err_pending,
      vid_sof_reg => reg_cr_I_n_0
    );
reg_crop_colend_I: entity work.\TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized7\
     port map (
      D(11 downto 0) => slb_wdata(11 downto 0),
      DI(3) => reg_crop_colend_I_n_16,
      DI(2) => reg_crop_colend_I_n_17,
      DI(1) => reg_crop_colend_I_n_18,
      DI(0) => reg_crop_colend_I_n_19,
      Q(0) => dly_reset,
      S(3) => reg_crop_colend_I_n_0,
      S(2) => reg_crop_colend_I_n_1,
      S(1) => reg_crop_colend_I_n_2,
      S(0) => reg_crop_colend_I_n_3,
      clk => clk,
      \out\(11 downto 0) => \crop_I/cnt_col_1_reg\(11 downto 0),
      \slb_addr_reg[2]\ => axi_ctrl_I_n_35,
      win_ce_ok_2_reg(11) => reg_crop_colend_I_n_4,
      win_ce_ok_2_reg(10) => reg_crop_colend_I_n_5,
      win_ce_ok_2_reg(9) => reg_crop_colend_I_n_6,
      win_ce_ok_2_reg(8) => reg_crop_colend_I_n_7,
      win_ce_ok_2_reg(7) => reg_crop_colend_I_n_8,
      win_ce_ok_2_reg(6) => reg_crop_colend_I_n_9,
      win_ce_ok_2_reg(5) => reg_crop_colend_I_n_10,
      win_ce_ok_2_reg(4) => reg_crop_colend_I_n_11,
      win_ce_ok_2_reg(3) => reg_crop_colend_I_n_12,
      win_ce_ok_2_reg(2) => reg_crop_colend_I_n_13,
      win_ce_ok_2_reg(1) => reg_crop_colend_I_n_14,
      win_ce_ok_2_reg(0) => reg_crop_colend_I_n_15,
      win_ce_ok_2_reg_0(1) => reg_crop_colend_I_n_20,
      win_ce_ok_2_reg_0(0) => reg_crop_colend_I_n_21,
      win_ce_ok_2_reg_1(1) => reg_crop_colend_I_n_22,
      win_ce_ok_2_reg_1(0) => reg_crop_colend_I_n_23
    );
reg_crop_colstart_I: entity work.\TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized5\
     port map (
      D(11 downto 0) => slb_wdata(11 downto 0),
      Q(0) => dly_reset,
      clk => clk,
      \slb_addr_reg[2]\ => axi_ctrl_I_n_42,
      win_cs_ok_2_reg(11) => reg_crop_colstart_I_n_0,
      win_cs_ok_2_reg(10) => reg_crop_colstart_I_n_1,
      win_cs_ok_2_reg(9) => reg_crop_colstart_I_n_2,
      win_cs_ok_2_reg(8) => reg_crop_colstart_I_n_3,
      win_cs_ok_2_reg(7) => reg_crop_colstart_I_n_4,
      win_cs_ok_2_reg(6) => reg_crop_colstart_I_n_5,
      win_cs_ok_2_reg(5) => reg_crop_colstart_I_n_6,
      win_cs_ok_2_reg(4) => reg_crop_colstart_I_n_7,
      win_cs_ok_2_reg(3) => reg_crop_colstart_I_n_8,
      win_cs_ok_2_reg(2) => reg_crop_colstart_I_n_9,
      win_cs_ok_2_reg(1) => reg_crop_colstart_I_n_10,
      win_cs_ok_2_reg(0) => reg_crop_colstart_I_n_11
    );
reg_crop_lineend_I: entity work.\TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized11\
     port map (
      DI(3) => reg_crop_lineend_I_n_4,
      DI(2) => reg_crop_lineend_I_n_5,
      DI(1) => reg_crop_lineend_I_n_6,
      DI(0) => reg_crop_lineend_I_n_7,
      Q(0) => dly_reset,
      S(3) => reg_crop_lineend_I_n_0,
      S(2) => reg_crop_lineend_I_n_1,
      S(1) => reg_crop_lineend_I_n_2,
      S(0) => reg_crop_lineend_I_n_3,
      clk => clk,
      \out\(11 downto 0) => \crop_I/cnt_line_1_reg\(11 downto 0),
      \slb_addr_reg[2]\ => axi_ctrl_I_n_38,
      \slb_wdata_reg[11]\(11 downto 0) => slb_wdata(11 downto 0),
      win_le_ok_2_reg(1) => reg_crop_lineend_I_n_8,
      win_le_ok_2_reg(0) => reg_crop_lineend_I_n_9,
      win_le_ok_2_reg_0(1) => reg_crop_lineend_I_n_10,
      win_le_ok_2_reg_0(0) => reg_crop_lineend_I_n_11
    );
reg_crop_linestart_I: entity work.\TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized9\
     port map (
      Q(0) => dly_reset,
      clk => clk,
      \slb_addr_reg[2]\ => axi_ctrl_I_n_43,
      \slb_wdata_reg[11]\(11 downto 0) => slb_wdata(11 downto 0),
      win_ls_ok_2_reg(11) => reg_crop_linestart_I_n_0,
      win_ls_ok_2_reg(10) => reg_crop_linestart_I_n_1,
      win_ls_ok_2_reg(9) => reg_crop_linestart_I_n_2,
      win_ls_ok_2_reg(8) => reg_crop_linestart_I_n_3,
      win_ls_ok_2_reg(7) => reg_crop_linestart_I_n_4,
      win_ls_ok_2_reg(6) => reg_crop_linestart_I_n_5,
      win_ls_ok_2_reg(5) => reg_crop_linestart_I_n_6,
      win_ls_ok_2_reg(4) => reg_crop_linestart_I_n_7,
      win_ls_ok_2_reg(3) => reg_crop_linestart_I_n_8,
      win_ls_ok_2_reg(2) => reg_crop_linestart_I_n_9,
      win_ls_ok_2_reg(1) => reg_crop_linestart_I_n_10,
      win_ls_ok_2_reg(0) => reg_crop_linestart_I_n_11
    );
\reg_er_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_34,
      Q => reg_er(0),
      R => dly_reset
    );
\reg_er_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_29,
      Q => reg_er(16),
      R => dly_reset
    );
\reg_er_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_28,
      Q => reg_er(17),
      R => dly_reset
    );
\reg_er_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_27,
      Q => reg_er(18),
      R => dly_reset
    );
\reg_er_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_26,
      Q => reg_er(19),
      R => dly_reset
    );
\reg_er_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_33,
      Q => reg_er(1),
      R => dly_reset
    );
\reg_er_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_32,
      Q => reg_er(2),
      R => dly_reset
    );
\reg_er_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_31,
      Q => reg_er(3),
      R => dly_reset
    );
\reg_er_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_30,
      Q => reg_er(4),
      R => dly_reset
    );
reg_imr_I: entity work.\TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized1\
     port map (
      D(8 downto 5) => slb_wdata(19 downto 16),
      D(4 downto 0) => slb_wdata(4 downto 0),
      Q(0) => dly_reset,
      clk => clk,
      intr_reg => reg_imr_I_n_0,
      \reg_er_reg[19]\(8 downto 5) => reg_er(19 downto 16),
      \reg_er_reg[19]\(4 downto 0) => reg_er(4 downto 0),
      \slb_addr_reg[3]\ => axi_ctrl_I_n_39
    );
reg_vpcr_I: entity work.\TySOM_1_7Z030_mipi_csi_0_slb_reg__parameterized3\
     port map (
      D(7) => reg_vpcr_I_n_18,
      D(6) => reg_vpcr_I_n_19,
      D(5) => reg_vpcr_I_n_20,
      D(4) => reg_vpcr_I_n_21,
      D(3) => reg_vpcr_I_n_22,
      D(2) => reg_vpcr_I_n_23,
      D(1) => reg_vpcr_I_n_24,
      D(0) => reg_vpcr_I_n_25,
      DO(12 downto 8) => vin_data(31 downto 27),
      DO(7 downto 0) => vin_data(15 downto 8),
      Q(0) => dly_reset,
      clk => clk,
      \cnt_reg[0]\ => vid_pipeline_I_n_4,
      \eqOp__0\ => \eqOp__0\,
      pause0 => pause0,
      \pix_blue_4_reg[10]\ => vid_pipeline_I_n_51,
      \pix_blue_4_reg[10]_0\ => vid_pipeline_I_n_56,
      \pix_blue_4_reg[6]\ => vid_pipeline_I_n_47,
      \pix_blue_4_reg[6]_0\ => vid_pipeline_I_n_52,
      \pix_blue_4_reg[7]\ => vid_pipeline_I_n_48,
      \pix_blue_4_reg[7]_0\ => vid_pipeline_I_n_53,
      \pix_blue_4_reg[8]\ => vid_pipeline_I_n_49,
      \pix_blue_4_reg[8]_0\ => vid_pipeline_I_n_54,
      \pix_blue_4_reg[9]\ => vid_pipeline_I_n_50,
      \pix_blue_4_reg[9]_0\ => vid_pipeline_I_n_55,
      \pix_green_4_reg[10]\(2 downto 0) => vcol_green(7 downto 5),
      pktr_empty => pktr_empty,
      \^q\(7 downto 0) => vcrop_data(7 downto 0),
      \slb_addr_reg[3]\ => axi_ctrl_I_n_36,
      \slb_wdata_reg[23]\(16) => slb_wdata(23),
      \slb_wdata_reg[23]\(15 downto 14) => slb_wdata(21 downto 20),
      \slb_wdata_reg[23]\(13 downto 4) => slb_wdata(17 downto 8),
      \slb_wdata_reg[23]\(3 downto 2) => slb_wdata(5 downto 4),
      \slb_wdata_reg[23]\(1 downto 0) => slb_wdata(1 downto 0),
      vcfm_data(2 downto 0) => vcfm_data(10 downto 8),
      \vfm_data_reg[31]\(12) => reg_vpcr_I_n_27,
      \vfm_data_reg[31]\(11) => reg_vpcr_I_n_28,
      \vfm_data_reg[31]\(10) => reg_vpcr_I_n_29,
      \vfm_data_reg[31]\(9) => reg_vpcr_I_n_30,
      \vfm_data_reg[31]\(8) => reg_vpcr_I_n_31,
      \vfm_data_reg[31]\(7) => reg_vpcr_I_n_32,
      \vfm_data_reg[31]\(6) => reg_vpcr_I_n_33,
      \vfm_data_reg[31]\(5) => reg_vpcr_I_n_34,
      \vfm_data_reg[31]\(4) => reg_vpcr_I_n_35,
      \vfm_data_reg[31]\(3) => reg_vpcr_I_n_36,
      \vfm_data_reg[31]\(2) => reg_vpcr_I_n_37,
      \vfm_data_reg[31]\(1) => reg_vpcr_I_n_38,
      \vfm_data_reg[31]\(0) => reg_vpcr_I_n_39,
      vin_ready_10b => vin_ready_10b,
      \vum_data_reg[9]\(16) => ctrl_vum,
      \vum_data_reg[9]\(15) => reg_vpcr_I_n_2,
      \vum_data_reg[9]\(14) => reg_vpcr_I_n_3,
      \vum_data_reg[9]\(13 downto 12) => ctrl_pol(1 downto 0),
      \vum_data_reg[9]\(11 downto 4) => ctrl_cfm(7 downto 0),
      \vum_data_reg[9]\(3 downto 2) => ctrl_vfm(1 downto 0),
      \vum_data_reg[9]\(1) => reg_vpcr_I_n_16,
      \vum_data_reg[9]\(0) => reg_vpcr_I_n_17,
      \vum_data_reg[9]_0\(7 downto 0) => vum_data(9 downto 2)
    );
\rst_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[0]\,
      O => \minusOp__0\(0)
    );
\rst_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[0]\,
      I1 => \rst_cnt_reg_n_0_[1]\,
      O => \rst_cnt[1]_i_1_n_0\
    );
\rst_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[1]\,
      I1 => \rst_cnt_reg_n_0_[0]\,
      I2 => \rst_cnt_reg_n_0_[2]\,
      O => \rst_cnt[2]_i_1_n_0\
    );
\rst_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rst_req_axi(1),
      I1 => rst_req_axi(0),
      I2 => rst,
      O => clear
    );
\rst_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \rst_cnt_reg_n_0_[2]\,
      I1 => \rst_cnt_reg_n_0_[0]\,
      I2 => \rst_cnt_reg_n_0_[1]\,
      I3 => dly_reset,
      O => \rst_cnt[3]_i_2_n_0\
    );
\rst_cnt_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => dly_reset,
      D => \minusOp__0\(0),
      Q => \rst_cnt_reg_n_0_[0]\,
      S => clear
    );
\rst_cnt_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => dly_reset,
      D => \rst_cnt[1]_i_1_n_0\,
      Q => \rst_cnt_reg_n_0_[1]\,
      S => clear
    );
\rst_cnt_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => dly_reset,
      D => \rst_cnt[2]_i_1_n_0\,
      Q => \rst_cnt_reg_n_0_[2]\,
      S => clear
    );
\rst_cnt_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => dly_reset,
      D => \rst_cnt[3]_i_2_n_0\,
      Q => dly_reset,
      S => clear
    );
\rst_req_axi[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_2_in(0),
      I1 => p_0_in,
      I2 => rst,
      O => \rst_req_axi[0]_i_1_n_0\
    );
\rst_req_axi[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_2_in(1),
      I1 => p_0_in,
      I2 => rst_req_axi(1),
      O => \rst_req_axi[1]_i_1_n_0\
    );
\rst_req_axi_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rst_req_axi[0]_i_1_n_0\,
      Q => rst_req_axi(0),
      R => '0'
    );
\rst_req_axi_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rst_req_axi[1]_i_1_n_0\,
      Q => rst_req_axi(1),
      R => rst
    );
\slb_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_48,
      Q => slb_rdata(0),
      R => '0'
    );
\slb_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_47,
      Q => slb_rdata(16),
      R => '0'
    );
\slb_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_46,
      Q => slb_rdata(17),
      R => '0'
    );
\slb_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_53,
      Q => slb_rdata(18),
      R => axi_ctrl_I_n_55
    );
\slb_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_54,
      Q => slb_rdata(19),
      R => axi_ctrl_I_n_55
    );
\slb_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_49,
      Q => slb_rdata(1),
      R => axi_ctrl_I_n_55
    );
\slb_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_50,
      Q => slb_rdata(2),
      R => axi_ctrl_I_n_55
    );
\slb_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_45,
      Q => slb_rdata(30),
      R => '0'
    );
\slb_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_44,
      Q => slb_rdata(31),
      R => '0'
    );
\slb_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_51,
      Q => slb_rdata(3),
      R => axi_ctrl_I_n_55
    );
\slb_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axi_ctrl_I_n_52,
      Q => slb_rdata(4),
      R => axi_ctrl_I_n_55
    );
vaxi_valid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => pix_fifo_empty_fwft,
      O => vaxi_valid
    );
vid_pipeline_I: entity work.TySOM_1_7Z030_mipi_csi_0_vid_pipeline
     port map (
      D(7) => reg_vpcr_I_n_18,
      D(6) => reg_vpcr_I_n_19,
      D(5) => reg_vpcr_I_n_20,
      D(4) => reg_vpcr_I_n_21,
      D(3) => reg_vpcr_I_n_22,
      D(2) => reg_vpcr_I_n_23,
      D(1) => reg_vpcr_I_n_24,
      D(0) => reg_vpcr_I_n_25,
      DI(3) => reg_crop_colend_I_n_16,
      DI(2) => reg_crop_colend_I_n_17,
      DI(1) => reg_crop_colend_I_n_18,
      DI(0) => reg_crop_colend_I_n_19,
      DIP(1) => vout_sof,
      DIP(0) => vout_last,
      DO(31 downto 0) => vin_data(31 downto 0),
      DOP(0) => pkt_fifo_I_n_35,
      \FSM_sequential_state_cur_reg[1]\ => pkt_parser_I_n_14,
      Q(0) => dly_reset,
      S(3) => reg_crop_colend_I_n_0,
      S(2) => reg_crop_colend_I_n_1,
      S(1) => reg_crop_colend_I_n_2,
      S(0) => reg_crop_colend_I_n_3,
      clk => clk,
      cnt(1 downto 0) => \repack_32b_to_8b_I/cnt\(1 downto 0),
      \cnt_line_1_reg[11]\(11 downto 0) => \crop_I/cnt_line_1_reg\(11 downto 0),
      \cnt_reg[16]\ => vid_pipeline_I_n_4,
      \cnt_reg[16]_0\(0) => p_0_in1_in,
      \eqOp__0\ => \eqOp__0\,
      has_last => \repack_32b_to_40b_I/has_last\,
      has_last_reg => pkt_parser_I_n_17,
      mux(7 downto 0) => mux(7 downto 0),
      \out\(11 downto 0) => \crop_I/cnt_col_1_reg\(11 downto 0),
      pause => pause,
      pause_reg => pkt_parser_I_n_12,
      \pix_fifo_cnt_reg[0]\(31 downto 0) => vout_data(31 downto 0),
      pktr_empty => pktr_empty,
      \^q\(7 downto 0) => vcrop_data(7 downto 0),
      \reg_reg[10]\(1) => reg_crop_colend_I_n_22,
      \reg_reg[10]\(0) => reg_crop_colend_I_n_23,
      \reg_reg[10]_0\(1) => reg_crop_colend_I_n_20,
      \reg_reg[10]_0\(0) => reg_crop_colend_I_n_21,
      \reg_reg[10]_1\(1) => reg_crop_lineend_I_n_10,
      \reg_reg[10]_1\(0) => reg_crop_lineend_I_n_11,
      \reg_reg[10]_2\(1) => reg_crop_lineend_I_n_8,
      \reg_reg[10]_2\(0) => reg_crop_lineend_I_n_9,
      \reg_reg[11]\(11) => reg_crop_colend_I_n_4,
      \reg_reg[11]\(10) => reg_crop_colend_I_n_5,
      \reg_reg[11]\(9) => reg_crop_colend_I_n_6,
      \reg_reg[11]\(8) => reg_crop_colend_I_n_7,
      \reg_reg[11]\(7) => reg_crop_colend_I_n_8,
      \reg_reg[11]\(6) => reg_crop_colend_I_n_9,
      \reg_reg[11]\(5) => reg_crop_colend_I_n_10,
      \reg_reg[11]\(4) => reg_crop_colend_I_n_11,
      \reg_reg[11]\(3) => reg_crop_colend_I_n_12,
      \reg_reg[11]\(2) => reg_crop_colend_I_n_13,
      \reg_reg[11]\(1) => reg_crop_colend_I_n_14,
      \reg_reg[11]\(0) => reg_crop_colend_I_n_15,
      \reg_reg[11]_0\(11) => reg_crop_linestart_I_n_0,
      \reg_reg[11]_0\(10) => reg_crop_linestart_I_n_1,
      \reg_reg[11]_0\(9) => reg_crop_linestart_I_n_2,
      \reg_reg[11]_0\(8) => reg_crop_linestart_I_n_3,
      \reg_reg[11]_0\(7) => reg_crop_linestart_I_n_4,
      \reg_reg[11]_0\(6) => reg_crop_linestart_I_n_5,
      \reg_reg[11]_0\(5) => reg_crop_linestart_I_n_6,
      \reg_reg[11]_0\(4) => reg_crop_linestart_I_n_7,
      \reg_reg[11]_0\(3) => reg_crop_linestart_I_n_8,
      \reg_reg[11]_0\(2) => reg_crop_linestart_I_n_9,
      \reg_reg[11]_0\(1) => reg_crop_linestart_I_n_10,
      \reg_reg[11]_0\(0) => reg_crop_linestart_I_n_11,
      \reg_reg[11]_1\(11) => reg_crop_colstart_I_n_0,
      \reg_reg[11]_1\(10) => reg_crop_colstart_I_n_1,
      \reg_reg[11]_1\(9) => reg_crop_colstart_I_n_2,
      \reg_reg[11]_1\(8) => reg_crop_colstart_I_n_3,
      \reg_reg[11]_1\(7) => reg_crop_colstart_I_n_4,
      \reg_reg[11]_1\(6) => reg_crop_colstart_I_n_5,
      \reg_reg[11]_1\(5) => reg_crop_colstart_I_n_6,
      \reg_reg[11]_1\(4) => reg_crop_colstart_I_n_7,
      \reg_reg[11]_1\(3) => reg_crop_colstart_I_n_8,
      \reg_reg[11]_1\(2) => reg_crop_colstart_I_n_9,
      \reg_reg[11]_1\(1) => reg_crop_colstart_I_n_10,
      \reg_reg[11]_1\(0) => reg_crop_colstart_I_n_11,
      \reg_reg[23]\(16) => ctrl_vum,
      \reg_reg[23]\(15) => reg_vpcr_I_n_2,
      \reg_reg[23]\(14) => reg_vpcr_I_n_3,
      \reg_reg[23]\(13 downto 12) => ctrl_pol(1 downto 0),
      \reg_reg[23]\(11 downto 4) => ctrl_cfm(7 downto 0),
      \reg_reg[23]\(3 downto 2) => ctrl_vfm(1 downto 0),
      \reg_reg[23]\(1) => reg_vpcr_I_n_16,
      \reg_reg[23]\(0) => reg_vpcr_I_n_17,
      \reg_reg[4]\(12) => reg_vpcr_I_n_27,
      \reg_reg[4]\(11) => reg_vpcr_I_n_28,
      \reg_reg[4]\(10) => reg_vpcr_I_n_29,
      \reg_reg[4]\(9) => reg_vpcr_I_n_30,
      \reg_reg[4]\(8) => reg_vpcr_I_n_31,
      \reg_reg[4]\(7) => reg_vpcr_I_n_32,
      \reg_reg[4]\(6) => reg_vpcr_I_n_33,
      \reg_reg[4]\(5) => reg_vpcr_I_n_34,
      \reg_reg[4]\(4) => reg_vpcr_I_n_35,
      \reg_reg[4]\(3) => reg_vpcr_I_n_36,
      \reg_reg[4]\(2) => reg_vpcr_I_n_37,
      \reg_reg[4]\(1) => reg_vpcr_I_n_38,
      \reg_reg[4]\(0) => reg_vpcr_I_n_39,
      \reg_reg[6]\(3) => reg_crop_lineend_I_n_4,
      \reg_reg[6]\(2) => reg_crop_lineend_I_n_5,
      \reg_reg[6]\(1) => reg_crop_lineend_I_n_6,
      \reg_reg[6]\(0) => reg_crop_lineend_I_n_7,
      \reg_reg[6]_0\(3) => reg_crop_lineend_I_n_0,
      \reg_reg[6]_0\(2) => reg_crop_lineend_I_n_1,
      \reg_reg[6]_0\(1) => reg_crop_lineend_I_n_2,
      \reg_reg[6]_0\(0) => reg_crop_lineend_I_n_3,
      \srl_gen[0].part_stage_gen.b_gen[8].ff_I\(7 downto 0) => vum_data(9 downto 2),
      \vfm_data_reg[10]_0\(2 downto 0) => vcfm_data(10 downto 8),
      \vfm_data_reg[11]_0\ => vid_pipeline_I_n_47,
      \vfm_data_reg[12]_0\ => vid_pipeline_I_n_48,
      \vfm_data_reg[13]_0\ => vid_pipeline_I_n_49,
      \vfm_data_reg[14]_0\ => vid_pipeline_I_n_50,
      \vfm_data_reg[15]_0\ => vid_pipeline_I_n_51,
      \vfm_data_reg[26]_0\(2 downto 0) => vcol_green(7 downto 5),
      \vfm_data_reg[27]_0\ => vid_pipeline_I_n_52,
      \vfm_data_reg[28]_0\ => vid_pipeline_I_n_53,
      \vfm_data_reg[29]_0\ => vid_pipeline_I_n_54,
      \vfm_data_reg[30]_0\ => vid_pipeline_I_n_55,
      \vfm_data_reg[31]_0\ => vid_pipeline_I_n_56,
      vid_ready => vid_ready,
      vin_ready_10b => vin_ready_10b,
      vin_sof => vin_sof,
      vout_valid => vout_valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_mipi_csi_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TySOM_1_7Z030_mipi_csi_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TySOM_1_7Z030_mipi_csi_0 : entity is "TySOM_1_7Z030_mipi_csi_0,mipi_csi_top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of TySOM_1_7Z030_mipi_csi_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of TySOM_1_7Z030_mipi_csi_0 : entity is "mipi_csi_top,Vivado 2017.1_AR69152";
end TySOM_1_7Z030_mipi_csi_0;

architecture STRUCTURE of TySOM_1_7Z030_mipi_csi_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^saxi_awready\ : STD_LOGIC;
  signal \^saxi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  saxi_awready <= \^saxi_awready\;
  saxi_bresp(1) <= \<const0>\;
  saxi_bresp(0) <= \<const0>\;
  saxi_rdata(31 downto 30) <= \^saxi_rdata\(31 downto 30);
  saxi_rdata(29) <= \<const0>\;
  saxi_rdata(28) <= \<const0>\;
  saxi_rdata(27) <= \<const0>\;
  saxi_rdata(26) <= \<const0>\;
  saxi_rdata(25) <= \<const0>\;
  saxi_rdata(24) <= \<const0>\;
  saxi_rdata(23) <= \<const0>\;
  saxi_rdata(22) <= \<const0>\;
  saxi_rdata(21) <= \<const0>\;
  saxi_rdata(20) <= \<const0>\;
  saxi_rdata(19 downto 16) <= \^saxi_rdata\(19 downto 16);
  saxi_rdata(15) <= \<const0>\;
  saxi_rdata(14) <= \<const0>\;
  saxi_rdata(13) <= \<const0>\;
  saxi_rdata(12) <= \<const0>\;
  saxi_rdata(11) <= \<const0>\;
  saxi_rdata(10) <= \<const0>\;
  saxi_rdata(9) <= \<const0>\;
  saxi_rdata(8) <= \<const0>\;
  saxi_rdata(7) <= \<const0>\;
  saxi_rdata(6) <= \<const0>\;
  saxi_rdata(5) <= \<const0>\;
  saxi_rdata(4 downto 0) <= \^saxi_rdata\(4 downto 0);
  saxi_rresp(1) <= \<const0>\;
  saxi_rresp(0) <= \<const0>\;
  saxi_wready <= \^saxi_awready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.TySOM_1_7Z030_mipi_csi_0_mipi_csi_top
     port map (
      DOP(1) => vaxi_sof,
      DOP(0) => vaxi_last,
      clk => clk,
      intr => intr,
      pad_clk_n => pad_clk_n,
      pad_clk_p => pad_clk_p,
      pad_data_n(1 downto 0) => pad_data_n(1 downto 0),
      pad_data_p(1 downto 0) => pad_data_p(1 downto 0),
      refclk => refclk,
      rst => rst,
      saxi_araddr(3 downto 0) => saxi_araddr(5 downto 2),
      saxi_arready => saxi_arready,
      saxi_arvalid => saxi_arvalid,
      saxi_awaddr(3 downto 0) => saxi_awaddr(5 downto 2),
      saxi_awready => \^saxi_awready\,
      saxi_awvalid => saxi_awvalid,
      saxi_bready => saxi_bready,
      saxi_bvalid => saxi_bvalid,
      saxi_rdata(10 downto 9) => \^saxi_rdata\(31 downto 30),
      saxi_rdata(8 downto 5) => \^saxi_rdata\(19 downto 16),
      saxi_rdata(4 downto 0) => \^saxi_rdata\(4 downto 0),
      saxi_rready => saxi_rready,
      saxi_rvalid => saxi_rvalid,
      saxi_wdata(27 downto 26) => saxi_wdata(31 downto 30),
      saxi_wdata(25) => saxi_wdata(28),
      saxi_wdata(24 downto 22) => saxi_wdata(25 downto 23),
      saxi_wdata(21 downto 0) => saxi_wdata(21 downto 0),
      saxi_wvalid => saxi_wvalid,
      vaxi_data(31 downto 0) => vaxi_data(31 downto 0),
      vaxi_ready => vaxi_ready,
      vaxi_valid => vaxi_valid
    );
end STRUCTURE;
