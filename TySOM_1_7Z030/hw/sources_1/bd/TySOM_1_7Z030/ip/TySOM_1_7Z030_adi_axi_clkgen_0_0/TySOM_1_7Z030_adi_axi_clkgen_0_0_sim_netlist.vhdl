-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
-- Date        : Tue Jul 11 15:07:15 2017
-- Host        : enki running 64-bit CentOS release 6.8 (Final)
-- Command     : write_vhdl -force -mode funcsim
--               /home/barsko/Xilinx_2017.1/TySOM_1_7Z030/SDx_platform/vivado/TySOM_1_7Z030.srcs/sources_1/bd/TySOM_1_7Z030/ip/TySOM_1_7Z030_adi_axi_clkgen_0_0/TySOM_1_7Z030_adi_axi_clkgen_0_0_sim_netlist.vhdl
-- Design      : TySOM_1_7Z030_adi_axi_clkgen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z030fbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_adi_axi_clkgen_0_0_ad_mmcm_drp is
  port (
    clk_0 : out STD_LOGIC;
    clk_1 : out STD_LOGIC;
    drp_ready_s : out STD_LOGIC;
    drp_locked : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    drp_clk : in STD_LOGIC;
    drp_sel_s : in STD_LOGIC;
    drp_wr_s : in STD_LOGIC;
    mmcm_rst : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    drp_rst : in STD_LOGIC;
    drp_ready_int : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_adi_axi_clkgen_0_0_ad_mmcm_drp : entity is "ad_mmcm_drp";
end TySOM_1_7Z030_adi_axi_clkgen_0_0_ad_mmcm_drp;

architecture STRUCTURE of TySOM_1_7Z030_adi_axi_clkgen_0_0_ad_mmcm_drp is
  signal bufg_fb_clk_s : STD_LOGIC;
  signal drp_locked_m1 : STD_LOGIC;
  signal drp_rdata_s : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^drp_ready_s\ : STD_LOGIC;
  signal drp_ready_s_0 : STD_LOGIC;
  signal mmcm_clk_0_s : STD_LOGIC;
  signal mmcm_clk_1_s : STD_LOGIC;
  signal mmcm_fb_clk_s : STD_LOGIC;
  signal mmcm_locked_s : STD_LOGIC;
  signal NLW_i_mmcm_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mmcm_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mmcm_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mmcm_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mmcm_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mmcm_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mmcm_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mmcm_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mmcm_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mmcm_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mmcm_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mmcm_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_i_mmcm_PSDONE_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of i_clk_0_bufg : label is "PRIMITIVE";
  attribute BOX_TYPE of i_clk_1_bufg : label is "PRIMITIVE";
  attribute BOX_TYPE of i_fb_clk_bufg : label is "PRIMITIVE";
  attribute BOX_TYPE of i_mmcm : label is "PRIMITIVE";
begin
  drp_ready_s <= \^drp_ready_s\;
drp_ack_t_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^drp_ready_s\,
      I1 => drp_ready_int,
      O => E(0)
    );
drp_locked_m1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => mmcm_locked_s,
      Q => drp_locked_m1,
      R => drp_rst
    );
drp_locked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_locked_m1,
      Q => drp_locked,
      R => drp_rst
    );
\drp_rdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_rdata_s(0),
      Q => Q(0),
      R => '0'
    );
\drp_rdata_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_rdata_s(10),
      Q => Q(10),
      R => '0'
    );
\drp_rdata_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_rdata_s(11),
      Q => Q(11),
      R => '0'
    );
\drp_rdata_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_rdata_s(12),
      Q => Q(12),
      R => '0'
    );
\drp_rdata_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_rdata_s(13),
      Q => Q(13),
      R => '0'
    );
\drp_rdata_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_rdata_s(14),
      Q => Q(14),
      R => '0'
    );
\drp_rdata_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_rdata_s(15),
      Q => Q(15),
      R => '0'
    );
\drp_rdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_rdata_s(1),
      Q => Q(1),
      R => '0'
    );
\drp_rdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_rdata_s(2),
      Q => Q(2),
      R => '0'
    );
\drp_rdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_rdata_s(3),
      Q => Q(3),
      R => '0'
    );
\drp_rdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_rdata_s(4),
      Q => Q(4),
      R => '0'
    );
\drp_rdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_rdata_s(5),
      Q => Q(5),
      R => '0'
    );
\drp_rdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_rdata_s(6),
      Q => Q(6),
      R => '0'
    );
\drp_rdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_rdata_s(7),
      Q => Q(7),
      R => '0'
    );
\drp_rdata_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_rdata_s(8),
      Q => Q(8),
      R => '0'
    );
\drp_rdata_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_rdata_s(9),
      Q => Q(9),
      R => '0'
    );
drp_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_ready_s_0,
      Q => \^drp_ready_s\,
      R => '0'
    );
i_clk_0_bufg: unisim.vcomponents.BUFG
     port map (
      I => mmcm_clk_0_s,
      O => clk_0
    );
i_clk_1_bufg: unisim.vcomponents.BUFG
     port map (
      I => mmcm_clk_1_s,
      O => clk_1
    );
i_fb_clk_bufg: unisim.vcomponents.BUFG
     port map (
      I => mmcm_fb_clk_s,
      O => bufg_fb_clk_s
    );
i_mmcm: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 49.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 5.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 6.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 6,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 11,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => bufg_fb_clk_s,
      CLKFBOUT => mmcm_fb_clk_s,
      CLKFBOUTB => NLW_i_mmcm_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_i_mmcm_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_i_mmcm_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => mmcm_clk_0_s,
      CLKOUT0B => NLW_i_mmcm_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => mmcm_clk_1_s,
      CLKOUT1B => NLW_i_mmcm_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_i_mmcm_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_i_mmcm_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_i_mmcm_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_i_mmcm_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_i_mmcm_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_i_mmcm_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_i_mmcm_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => DADDR(6 downto 0),
      DCLK => drp_clk,
      DEN => drp_sel_s,
      DI(15 downto 0) => DI(15 downto 0),
      DO(15 downto 0) => drp_rdata_s(15 downto 0),
      DRDY => drp_ready_s_0,
      DWE => drp_wr_s,
      LOCKED => mmcm_locked_s,
      PSCLK => '0',
      PSDONE => NLW_i_mmcm_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => mmcm_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_adi_axi_clkgen_0_0_ad_rst is
  port (
    drp_rst : out STD_LOGIC;
    drp_clk : in STD_LOGIC;
    up_resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_adi_axi_clkgen_0_0_ad_rst : entity is "ad_rst";
end TySOM_1_7Z030_adi_axi_clkgen_0_0_ad_rst;

architecture STRUCTURE of TySOM_1_7Z030_adi_axi_clkgen_0_0_ad_rst is
  signal up_preset_s : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of i_rst_reg : label is "PRIMITIVE";
begin
\i_rst_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => up_resetn,
      O => up_preset_s
    );
i_rst_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => '0',
      PRE => up_preset_s,
      Q => drp_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_adi_axi_clkgen_0_0_ad_rst_0 is
  port (
    mmcm_rst : out STD_LOGIC;
    drp_clk : in STD_LOGIC;
    up_mmcm_resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_adi_axi_clkgen_0_0_ad_rst_0 : entity is "ad_rst";
end TySOM_1_7Z030_adi_axi_clkgen_0_0_ad_rst_0;

architecture STRUCTURE of TySOM_1_7Z030_adi_axi_clkgen_0_0_ad_rst_0 is
  signal up_mmcm_preset_s : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of i_rst_reg : label is "PRIMITIVE";
begin
i_rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => up_mmcm_resetn,
      O => up_mmcm_preset_s
    );
i_rst_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => '0',
      PRE => up_mmcm_preset_s,
      Q => mmcm_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_adi_axi_clkgen_0_0_up_axi is
  port (
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    up_sel_s : out STD_LOGIC;
    \up_scratch_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \up_rdata_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \up_rdata_reg[0]\ : out STD_LOGIC;
    \up_rdata_reg[5]\ : out STD_LOGIC;
    \up_rdata_reg[5]_0\ : out STD_LOGIC;
    up_mmcm_resetn_reg : out STD_LOGIC;
    \up_scratch_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    up_resetn_reg : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn_0 : in STD_LOGIC;
    up_ack_s : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 21 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    up_drp_locked_reg : in STD_LOGIC;
    \up_scratch_reg[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    p_1_in : in STD_LOGIC_VECTOR ( 25 downto 0 );
    \up_drp_wdata_reg[1]\ : in STD_LOGIC;
    up_drp_rwn : in STD_LOGIC;
    \up_drp_rdata_reg[15]\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    up_drp_status : in STD_LOGIC;
    up_drp_locked : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    up_mmcm_resetn : in STD_LOGIC;
    up_resetn : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_adi_axi_clkgen_0_0_up_axi : entity is "up_axi";
end TySOM_1_7Z030_adi_axi_clkgen_0_0_up_axi;

architecture STRUCTURE of TySOM_1_7Z030_adi_axi_clkgen_0_0_up_axi is
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal up_access : STD_LOGIC;
  signal up_access_ack : STD_LOGIC;
  signal up_access_ack0 : STD_LOGIC;
  signal up_access_count : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \up_access_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_access_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_access_count[2]_i_1_n_0\ : STD_LOGIC;
  signal up_access_i_1_n_0 : STD_LOGIC;
  signal up_ack_i_2_n_0 : STD_LOGIC;
  signal \up_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_addr[10]_i_1_n_0\ : STD_LOGIC;
  signal \up_addr[11]_i_1_n_0\ : STD_LOGIC;
  signal \up_addr[12]_i_1_n_0\ : STD_LOGIC;
  signal \up_addr[13]_i_1_n_0\ : STD_LOGIC;
  signal \up_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \up_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \up_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \up_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \up_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \up_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \up_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \up_addr[9]_i_1_n_0\ : STD_LOGIC;
  signal up_addr_s : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal up_axi_access : STD_LOGIC;
  signal up_axi_access_i_1_n_0 : STD_LOGIC;
  signal up_axi_access_reg_n_0 : STD_LOGIC;
  signal up_axi_arready_i_1_n_0 : STD_LOGIC;
  signal up_axi_awready_i_1_n_0 : STD_LOGIC;
  signal up_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \up_axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal up_axi_rvalid113_out : STD_LOGIC;
  signal up_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal up_axi_rvalid_i_2_n_0 : STD_LOGIC;
  signal up_axi_wr_s : STD_LOGIC;
  signal up_axi_wr_s0 : STD_LOGIC;
  signal up_axi_wready_i_1_n_0 : STD_LOGIC;
  signal up_drp_sel_t_i_3_n_0 : STD_LOGIC;
  signal up_drp_sel_t_i_4_n_0 : STD_LOGIC;
  signal \up_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \up_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \up_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \^up_rdata_reg[0]\ : STD_LOGIC;
  signal \^up_rdata_reg[5]\ : STD_LOGIC;
  signal \^up_rdata_reg[5]_0\ : STD_LOGIC;
  signal up_resetn_i_2_n_0 : STD_LOGIC;
  signal up_resetn_i_3_n_0 : STD_LOGIC;
  signal \up_scratch[31]_i_2_n_0\ : STD_LOGIC;
  signal \^up_scratch_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^up_sel_s\ : STD_LOGIC;
  signal \up_sel_s__0\ : STD_LOGIC;
  signal \up_wdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \up_wdata[9]_i_1_n_0\ : STD_LOGIC;
  signal up_wr_s : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \up_access_count[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \up_access_count[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \up_access_count[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of up_access_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \up_addr[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of up_axi_arready_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of up_axi_awready_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \up_axi_rdata[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \up_axi_rdata[10]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \up_axi_rdata[11]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \up_axi_rdata[12]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \up_axi_rdata[14]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \up_axi_rdata[15]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \up_axi_rdata[16]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \up_axi_rdata[18]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \up_axi_rdata[19]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \up_axi_rdata[21]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \up_axi_rdata[23]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \up_axi_rdata[25]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \up_axi_rdata[26]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \up_axi_rdata[27]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \up_axi_rdata[28]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \up_axi_rdata[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \up_axi_rdata[30]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \up_axi_rdata[31]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \up_axi_rdata[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \up_axi_rdata[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \up_axi_rdata[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \up_axi_rdata[9]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of up_axi_wready_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of up_drp_sel_t_i_3 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \up_rdata[18]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \up_rdata[18]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \up_rdata[18]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \up_rdata[28]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \up_rdata[29]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \up_rdata[31]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \up_rdata[6]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \up_rdata[6]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of up_resetn_i_2 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of up_resetn_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \up_scratch[31]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of up_sel_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \up_wdata[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \up_wdata[10]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \up_wdata[11]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \up_wdata[12]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \up_wdata[13]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \up_wdata[14]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \up_wdata[15]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \up_wdata[16]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \up_wdata[17]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \up_wdata[18]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \up_wdata[19]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \up_wdata[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \up_wdata[20]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \up_wdata[21]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \up_wdata[22]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \up_wdata[23]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \up_wdata[24]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \up_wdata[25]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \up_wdata[26]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \up_wdata[27]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \up_wdata[28]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \up_wdata[29]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \up_wdata[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \up_wdata[30]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \up_wdata[31]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \up_wdata[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \up_wdata[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \up_wdata[5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \up_wdata[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \up_wdata[7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \up_wdata[8]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \up_wdata[9]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of up_wr_i_2 : label is "soft_lutpair0";
begin
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
  \up_rdata_reg[0]\ <= \^up_rdata_reg[0]\;
  \up_rdata_reg[5]\ <= \^up_rdata_reg[5]\;
  \up_rdata_reg[5]_0\ <= \^up_rdata_reg[5]_0\;
  \up_scratch_reg[31]_0\(31 downto 0) <= \^up_scratch_reg[31]_0\(31 downto 0);
  up_sel_s <= \^up_sel_s\;
up_access_ack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => up_access_count(0),
      I1 => up_access_count(1),
      I2 => up_access_count(2),
      I3 => up_access_ack,
      I4 => up_ack_s,
      O => up_access_ack0
    );
up_access_ack_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => s_axi_aresetn_0,
      D => up_access_ack0,
      Q => up_access_ack
    );
\up_access_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => up_access,
      I1 => up_access_count(0),
      O => \up_access_count[0]_i_1_n_0\
    );
\up_access_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => up_access_count(0),
      I1 => up_access,
      I2 => up_access_count(1),
      O => \up_access_count[1]_i_1_n_0\
    );
\up_access_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => up_access_count(1),
      I1 => up_access_count(0),
      I2 => up_access,
      I3 => up_access_count(2),
      O => \up_access_count[2]_i_1_n_0\
    );
\up_access_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => s_axi_aresetn_0,
      D => \up_access_count[0]_i_1_n_0\,
      Q => up_access_count(0)
    );
\up_access_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => s_axi_aresetn_0,
      D => \up_access_count[1]_i_1_n_0\,
      Q => up_access_count(1)
    );
\up_access_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => s_axi_aresetn_0,
      D => \up_access_count[2]_i_1_n_0\,
      Q => up_access_count(2)
    );
up_access_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => \up_sel_s__0\,
      I1 => up_access_ack,
      I2 => up_ack_s,
      I3 => up_access,
      O => up_access_i_1_n_0
    );
up_access_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => s_axi_aresetn_0,
      D => up_access_i_1_n_0,
      Q => up_access
    );
up_ack_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => up_ack_i_2_n_0,
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \^up_sel_s\
    );
up_ack_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sel0(5),
      I1 => \up_sel_s__0\,
      I2 => sel0(4),
      I3 => sel0(3),
      O => up_ack_i_2_n_0
    );
\up_addr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => up_axi_access_reg_n_0,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_araddr(0),
      O => \up_addr[0]_i_1_n_0\
    );
\up_addr[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_awaddr(10),
      I1 => up_axi_access_reg_n_0,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_araddr(10),
      O => \up_addr[10]_i_1_n_0\
    );
\up_addr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_awaddr(11),
      I1 => up_axi_access_reg_n_0,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_araddr(11),
      O => \up_addr[11]_i_1_n_0\
    );
\up_addr[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_awaddr(12),
      I1 => up_axi_access_reg_n_0,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_araddr(12),
      O => \up_addr[12]_i_1_n_0\
    );
\up_addr[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_awaddr(13),
      I1 => up_axi_access_reg_n_0,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_araddr(13),
      O => \up_addr[13]_i_1_n_0\
    );
\up_addr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => up_axi_access_reg_n_0,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_araddr(1),
      O => \up_addr[1]_i_1_n_0\
    );
\up_addr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => up_axi_access_reg_n_0,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_araddr(2),
      O => \up_addr[2]_i_1_n_0\
    );
\up_addr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => up_axi_access_reg_n_0,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_araddr(3),
      O => \up_addr[3]_i_1_n_0\
    );
\up_addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => up_axi_access_reg_n_0,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_araddr(4),
      O => \up_addr[4]_i_1_n_0\
    );
\up_addr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => up_axi_access_reg_n_0,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_araddr(5),
      O => \up_addr[5]_i_1_n_0\
    );
\up_addr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => up_axi_access_reg_n_0,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_araddr(6),
      O => \up_addr[6]_i_1_n_0\
    );
\up_addr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_awaddr(7),
      I1 => up_axi_access_reg_n_0,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_araddr(7),
      O => \up_addr[7]_i_1_n_0\
    );
\up_addr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_awaddr(8),
      I1 => up_axi_access_reg_n_0,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_araddr(8),
      O => \up_addr[8]_i_1_n_0\
    );
\up_addr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_awaddr(9),
      I1 => up_axi_access_reg_n_0,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => s_axi_araddr(9),
      O => \up_addr[9]_i_1_n_0\
    );
\up_addr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_addr[0]_i_1_n_0\,
      Q => up_addr_s(0)
    );
\up_addr_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_addr[10]_i_1_n_0\,
      Q => sel0(2)
    );
\up_addr_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_addr[11]_i_1_n_0\,
      Q => sel0(3)
    );
\up_addr_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_addr[12]_i_1_n_0\,
      Q => sel0(4)
    );
\up_addr_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_addr[13]_i_1_n_0\,
      Q => sel0(5)
    );
\up_addr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_addr[1]_i_1_n_0\,
      Q => up_addr_s(1)
    );
\up_addr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_addr[2]_i_1_n_0\,
      Q => up_addr_s(2)
    );
\up_addr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_addr[3]_i_1_n_0\,
      Q => up_addr_s(3)
    );
\up_addr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_addr[4]_i_1_n_0\,
      Q => up_addr_s(4)
    );
\up_addr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_addr[5]_i_1_n_0\,
      Q => up_addr_s(5)
    );
\up_addr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_addr[6]_i_1_n_0\,
      Q => up_addr_s(6)
    );
\up_addr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_addr[7]_i_1_n_0\,
      Q => up_addr_s(7)
    );
\up_addr_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_addr[8]_i_1_n_0\,
      Q => sel0(0)
    );
\up_addr_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_addr[9]_i_1_n_0\,
      Q => sel0(1)
    );
up_axi_access_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F0F0FEEEEEEEE"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => up_axi_wr_s,
      I2 => up_axi_rvalid113_out,
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid\,
      I5 => up_axi_access_reg_n_0,
      O => up_axi_access_i_1_n_0
    );
up_axi_access_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_rvalid\,
      O => up_axi_rvalid113_out
    );
up_axi_access_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => s_axi_aresetn_0,
      D => up_axi_access_i_1_n_0,
      Q => up_axi_access_reg_n_0
    );
up_axi_arready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF1500"
    )
        port map (
      I0 => up_axi_access_reg_n_0,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_arvalid,
      I4 => \^s_axi_arready\,
      O => up_axi_arready_i_1_n_0
    );
up_axi_arready_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => s_axi_aresetn_0,
      D => up_axi_arready_i_1_n_0,
      Q => \^s_axi_arready\
    );
up_axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F20"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => up_axi_access_reg_n_0,
      I2 => s_axi_awvalid,
      I3 => \^s_axi_awready\,
      O => up_axi_awready_i_1_n_0
    );
up_axi_awready_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => s_axi_aresetn_0,
      D => up_axi_awready_i_1_n_0,
      Q => \^s_axi_awready\
    );
up_axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7772222222222222"
    )
        port map (
      I0 => \^s_axi_bvalid\,
      I1 => s_axi_bready,
      I2 => up_ack_s,
      I3 => up_access_ack,
      I4 => up_wr_s,
      I5 => up_axi_access_reg_n_0,
      O => up_axi_bvalid_i_1_n_0
    );
up_axi_bvalid_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => s_axi_aresetn_0,
      D => up_axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\
    );
\up_axi_rdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(0),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(0)
    );
\up_axi_rdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(6),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(10)
    );
\up_axi_rdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(7),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(11)
    );
\up_axi_rdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(8),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(12)
    );
\up_axi_rdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(9),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(14)
    );
\up_axi_rdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(10),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(15)
    );
\up_axi_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(11),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(16)
    );
\up_axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(12),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(18)
    );
\up_axi_rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(13),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(19)
    );
\up_axi_rdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(14),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(21)
    );
\up_axi_rdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(15),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(23)
    );
\up_axi_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(16),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(25)
    );
\up_axi_rdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(17),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(26)
    );
\up_axi_rdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(18),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(27)
    );
\up_axi_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(19),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(28)
    );
\up_axi_rdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(1),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(2)
    );
\up_axi_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(20),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(30)
    );
\up_axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(21),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(31)
    );
\up_axi_rdata[31]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \up_axi_rdata[31]_i_2_n_0\
    );
\up_axi_rdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(2),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(3)
    );
\up_axi_rdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(3),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(5)
    );
\up_axi_rdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(4),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(7)
    );
\up_axi_rdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2A"
    )
        port map (
      I0 => Q(5),
      I1 => s_axi_rready,
      I2 => \^s_axi_rvalid\,
      I3 => up_access_ack,
      O => \p_1_in__0\(9)
    );
\up_axi_rdata_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(0),
      Q => s_axi_rdata(0)
    );
\up_axi_rdata_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(10),
      Q => s_axi_rdata(10)
    );
\up_axi_rdata_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(11),
      Q => s_axi_rdata(11)
    );
\up_axi_rdata_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(12),
      Q => s_axi_rdata(12)
    );
\up_axi_rdata_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => D(4),
      Q => s_axi_rdata(13)
    );
\up_axi_rdata_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(14),
      Q => s_axi_rdata(14)
    );
\up_axi_rdata_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(15),
      Q => s_axi_rdata(15)
    );
\up_axi_rdata_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(16),
      Q => s_axi_rdata(16)
    );
\up_axi_rdata_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => D(5),
      Q => s_axi_rdata(17)
    );
\up_axi_rdata_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(18),
      Q => s_axi_rdata(18)
    );
\up_axi_rdata_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(19),
      Q => s_axi_rdata(19)
    );
\up_axi_rdata_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => D(0),
      Q => s_axi_rdata(1)
    );
\up_axi_rdata_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => D(6),
      Q => s_axi_rdata(20)
    );
\up_axi_rdata_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(21),
      Q => s_axi_rdata(21)
    );
\up_axi_rdata_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => D(7),
      Q => s_axi_rdata(22)
    );
\up_axi_rdata_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(23),
      Q => s_axi_rdata(23)
    );
\up_axi_rdata_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => D(8),
      Q => s_axi_rdata(24)
    );
\up_axi_rdata_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(25),
      Q => s_axi_rdata(25)
    );
\up_axi_rdata_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(26),
      Q => s_axi_rdata(26)
    );
\up_axi_rdata_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(27),
      Q => s_axi_rdata(27)
    );
\up_axi_rdata_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(28),
      Q => s_axi_rdata(28)
    );
\up_axi_rdata_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => D(9),
      Q => s_axi_rdata(29)
    );
\up_axi_rdata_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(2),
      Q => s_axi_rdata(2)
    );
\up_axi_rdata_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(30),
      Q => s_axi_rdata(30)
    );
\up_axi_rdata_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(31),
      Q => s_axi_rdata(31)
    );
\up_axi_rdata_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(3),
      Q => s_axi_rdata(3)
    );
\up_axi_rdata_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => D(1),
      Q => s_axi_rdata(4)
    );
\up_axi_rdata_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(5),
      Q => s_axi_rdata(5)
    );
\up_axi_rdata_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => D(2),
      Q => s_axi_rdata(6)
    );
\up_axi_rdata_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(7),
      Q => s_axi_rdata(7)
    );
\up_axi_rdata_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => D(3),
      Q => s_axi_rdata(8)
    );
\up_axi_rdata_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => \up_axi_rdata[31]_i_2_n_0\,
      D => \p_1_in__0\(9),
      Q => s_axi_rdata(9)
    );
up_axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888FFF88888"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => s_axi_rready,
      I2 => up_ack_s,
      I3 => up_access_ack,
      I4 => up_axi_access_reg_n_0,
      I5 => up_wr_s,
      O => up_axi_rvalid_i_1_n_0
    );
up_axi_rvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E000E000E0"
    )
        port map (
      I0 => up_ack_s,
      I1 => up_access_ack,
      I2 => up_axi_access_reg_n_0,
      I3 => up_wr_s,
      I4 => \^s_axi_rvalid\,
      I5 => s_axi_rready,
      O => up_axi_rvalid_i_2_n_0
    );
up_axi_rvalid_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_rvalid_i_1_n_0,
      CLR => s_axi_aresetn_0,
      D => up_axi_rvalid_i_2_n_0,
      Q => \^s_axi_rvalid\
    );
up_axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F20"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => up_axi_access_reg_n_0,
      I2 => s_axi_wvalid,
      I3 => \^s_axi_wready\,
      O => up_axi_wready_i_1_n_0
    );
up_axi_wready_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => s_axi_aresetn_0,
      D => up_axi_wready_i_1_n_0,
      Q => \^s_axi_wready\
    );
up_drp_sel_t_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => up_drp_sel_t_i_3_n_0,
      I1 => up_drp_sel_t_i_4_n_0,
      I2 => up_addr_s(4),
      I3 => up_addr_s(2),
      I4 => up_wr_s,
      I5 => \^up_sel_s\,
      O => E(0)
    );
up_drp_sel_t_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => up_addr_s(1),
      I1 => up_addr_s(0),
      I2 => up_addr_s(5),
      I3 => up_addr_s(3),
      O => up_drp_sel_t_i_3_n_0
    );
up_drp_sel_t_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => up_addr_s(6),
      I1 => up_addr_s(7),
      O => up_drp_sel_t_i_4_n_0
    );
up_mmcm_resetn_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \^up_scratch_reg[31]_0\(1),
      I1 => \^up_sel_s\,
      I2 => up_wr_s,
      I3 => up_resetn_i_2_n_0,
      I4 => up_resetn_i_3_n_0,
      I5 => up_mmcm_resetn,
      O => up_mmcm_resetn_reg
    );
\up_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AC000000"
    )
        port map (
      I0 => up_drp_locked_reg,
      I1 => \up_scratch_reg[31]_1\(0),
      I2 => \up_rdata[18]_i_3_n_0\,
      I3 => \^up_rdata_reg[0]\,
      I4 => \up_rdata[31]_i_2_n_0\,
      O => \up_rdata_reg[31]\(0)
    );
\up_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[10]_i_2_n_0\,
      I2 => p_1_in(8),
      I3 => \up_rdata[28]_i_2_n_0\,
      I4 => \up_scratch_reg[31]_1\(10),
      I5 => \up_rdata[31]_i_3_n_0\,
      O => \up_rdata_reg[31]\(10)
    );
\up_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => up_addr_s(4),
      I1 => up_addr_s(2),
      I2 => up_addr_s(0),
      I3 => up_addr_s(3),
      I4 => up_addr_s(1),
      I5 => \up_drp_rdata_reg[15]\(8),
      O => \up_rdata[10]_i_2_n_0\
    );
\up_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[11]_i_2_n_0\,
      I2 => p_1_in(9),
      I3 => \up_rdata[28]_i_2_n_0\,
      I4 => \up_scratch_reg[31]_1\(11),
      I5 => \up_rdata[31]_i_3_n_0\,
      O => \up_rdata_reg[31]\(11)
    );
\up_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => up_addr_s(4),
      I1 => up_addr_s(2),
      I2 => up_addr_s(0),
      I3 => up_addr_s(3),
      I4 => up_addr_s(1),
      I5 => \up_drp_rdata_reg[15]\(9),
      O => \up_rdata[11]_i_2_n_0\
    );
\up_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[12]_i_2_n_0\,
      I2 => p_1_in(10),
      I3 => \up_rdata[28]_i_2_n_0\,
      I4 => \up_scratch_reg[31]_1\(12),
      I5 => \up_rdata[31]_i_3_n_0\,
      O => \up_rdata_reg[31]\(12)
    );
\up_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => up_addr_s(4),
      I1 => up_addr_s(2),
      I2 => up_addr_s(0),
      I3 => up_addr_s(3),
      I4 => up_addr_s(1),
      I5 => \up_drp_rdata_reg[15]\(10),
      O => \up_rdata[12]_i_2_n_0\
    );
\up_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[13]_i_2_n_0\,
      I2 => p_1_in(11),
      I3 => \up_rdata[28]_i_2_n_0\,
      I4 => \up_scratch_reg[31]_1\(13),
      I5 => \up_rdata[31]_i_3_n_0\,
      O => \up_rdata_reg[31]\(13)
    );
\up_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => up_addr_s(4),
      I1 => up_addr_s(2),
      I2 => up_addr_s(0),
      I3 => up_addr_s(3),
      I4 => up_addr_s(1),
      I5 => \up_drp_rdata_reg[15]\(11),
      O => \up_rdata[13]_i_2_n_0\
    );
\up_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[14]_i_2_n_0\,
      I2 => p_1_in(12),
      I3 => \up_rdata[28]_i_2_n_0\,
      I4 => \up_scratch_reg[31]_1\(14),
      I5 => \up_rdata[31]_i_3_n_0\,
      O => \up_rdata_reg[31]\(14)
    );
\up_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => up_addr_s(4),
      I1 => up_addr_s(2),
      I2 => up_addr_s(0),
      I3 => up_addr_s(3),
      I4 => up_addr_s(1),
      I5 => \up_drp_rdata_reg[15]\(12),
      O => \up_rdata[14]_i_2_n_0\
    );
\up_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[15]_i_2_n_0\,
      I2 => p_1_in(13),
      I3 => \up_rdata[28]_i_2_n_0\,
      I4 => \up_scratch_reg[31]_1\(15),
      I5 => \up_rdata[31]_i_3_n_0\,
      O => \up_rdata_reg[31]\(15)
    );
\up_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => up_addr_s(4),
      I1 => up_addr_s(2),
      I2 => up_addr_s(0),
      I3 => up_addr_s(3),
      I4 => up_addr_s(1),
      I5 => \up_drp_rdata_reg[15]\(13),
      O => \up_rdata[15]_i_2_n_0\
    );
\up_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[16]_i_2_n_0\,
      I2 => p_1_in(14),
      I3 => \up_rdata[28]_i_2_n_0\,
      I4 => \up_scratch_reg[31]_1\(16),
      I5 => \up_rdata[31]_i_3_n_0\,
      O => \up_rdata_reg[31]\(16)
    );
\up_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => up_addr_s(4),
      I1 => up_addr_s(2),
      I2 => up_addr_s(0),
      I3 => up_addr_s(3),
      I4 => up_addr_s(1),
      I5 => up_drp_status,
      O => \up_rdata[16]_i_2_n_0\
    );
\up_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[17]_i_2_n_0\,
      I2 => p_1_in(15),
      I3 => \up_rdata[28]_i_2_n_0\,
      I4 => \up_scratch_reg[31]_1\(17),
      I5 => \up_rdata[31]_i_3_n_0\,
      O => \up_rdata_reg[31]\(17)
    );
\up_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => up_addr_s(4),
      I1 => up_addr_s(2),
      I2 => up_addr_s(0),
      I3 => up_addr_s(3),
      I4 => up_addr_s(1),
      I5 => up_drp_locked,
      O => \up_rdata[17]_i_2_n_0\
    );
\up_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80AA8000AA00AA00"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => p_1_in(16),
      I2 => \up_rdata[18]_i_2_n_0\,
      I3 => \up_rdata[18]_i_3_n_0\,
      I4 => \up_scratch_reg[31]_1\(18),
      I5 => \^up_rdata_reg[0]\,
      O => \up_rdata_reg[31]\(18)
    );
\up_rdata[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9FFEFFFC"
    )
        port map (
      I0 => up_addr_s(1),
      I1 => up_addr_s(3),
      I2 => up_addr_s(0),
      I3 => up_addr_s(2),
      I4 => up_addr_s(4),
      O => \up_rdata[18]_i_2_n_0\
    );
\up_rdata[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C08011"
    )
        port map (
      I0 => up_addr_s(0),
      I1 => up_addr_s(2),
      I2 => up_addr_s(4),
      I3 => up_addr_s(1),
      I4 => up_addr_s(3),
      O => \up_rdata[18]_i_3_n_0\
    );
\up_rdata[18]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60002014"
    )
        port map (
      I0 => up_addr_s(3),
      I1 => up_addr_s(1),
      I2 => up_addr_s(4),
      I3 => up_addr_s(2),
      I4 => up_addr_s(0),
      O => \^up_rdata_reg[0]\
    );
\up_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_1_in(17),
      I1 => \up_rdata[28]_i_2_n_0\,
      I2 => \up_scratch_reg[31]_1\(19),
      I3 => \up_rdata[31]_i_3_n_0\,
      I4 => \up_rdata[31]_i_2_n_0\,
      O => \up_rdata_reg[31]\(19)
    );
\up_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => \up_drp_wdata_reg[1]\,
      I1 => \up_rdata[18]_i_3_n_0\,
      I2 => \up_scratch_reg[31]_1\(1),
      I3 => \up_rdata[31]_i_3_n_0\,
      I4 => \up_rdata[31]_i_2_n_0\,
      O => \up_rdata_reg[31]\(1)
    );
\up_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_1_in(18),
      I1 => \up_rdata[28]_i_2_n_0\,
      I2 => \up_scratch_reg[31]_1\(20),
      I3 => \up_rdata[31]_i_3_n_0\,
      I4 => \up_rdata[31]_i_2_n_0\,
      O => \up_rdata_reg[31]\(20)
    );
\up_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_1_in(19),
      I1 => \up_rdata[28]_i_2_n_0\,
      I2 => \up_scratch_reg[31]_1\(21),
      I3 => \up_rdata[31]_i_3_n_0\,
      I4 => \up_rdata[31]_i_2_n_0\,
      O => \up_rdata_reg[31]\(21)
    );
\up_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_1_in(20),
      I1 => \up_rdata[28]_i_2_n_0\,
      I2 => \up_scratch_reg[31]_1\(22),
      I3 => \up_rdata[31]_i_3_n_0\,
      I4 => \up_rdata[31]_i_2_n_0\,
      O => \up_rdata_reg[31]\(22)
    );
\up_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_1_in(21),
      I1 => \up_rdata[28]_i_2_n_0\,
      I2 => \up_scratch_reg[31]_1\(23),
      I3 => \up_rdata[31]_i_3_n_0\,
      I4 => \up_rdata[31]_i_2_n_0\,
      O => \up_rdata_reg[31]\(23)
    );
\up_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_1_in(22),
      I1 => \up_rdata[28]_i_2_n_0\,
      I2 => \up_scratch_reg[31]_1\(24),
      I3 => \up_rdata[31]_i_3_n_0\,
      I4 => \up_rdata[31]_i_2_n_0\,
      O => \up_rdata_reg[31]\(24)
    );
\up_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_1_in(23),
      I1 => \up_rdata[28]_i_2_n_0\,
      I2 => \up_scratch_reg[31]_1\(25),
      I3 => \up_rdata[31]_i_3_n_0\,
      I4 => \up_rdata[31]_i_2_n_0\,
      O => \up_rdata_reg[31]\(25)
    );
\up_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_1_in(24),
      I1 => \up_rdata[28]_i_2_n_0\,
      I2 => \up_scratch_reg[31]_1\(26),
      I3 => \up_rdata[31]_i_3_n_0\,
      I4 => \up_rdata[31]_i_2_n_0\,
      O => \up_rdata_reg[31]\(26)
    );
\up_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => p_1_in(25),
      I1 => \up_rdata[28]_i_2_n_0\,
      I2 => \up_scratch_reg[31]_1\(27),
      I3 => \up_rdata[31]_i_3_n_0\,
      I4 => \up_rdata[31]_i_2_n_0\,
      O => \up_rdata_reg[31]\(27)
    );
\up_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => up_drp_rwn,
      I1 => \up_rdata[28]_i_2_n_0\,
      I2 => \up_scratch_reg[31]_1\(28),
      I3 => \up_rdata[31]_i_3_n_0\,
      I4 => \up_rdata[31]_i_2_n_0\,
      O => \up_rdata_reg[31]\(28)
    );
\up_rdata[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => up_addr_s(1),
      I1 => up_addr_s(3),
      I2 => up_addr_s(0),
      I3 => up_addr_s(2),
      I4 => up_addr_s(4),
      O => \up_rdata[28]_i_2_n_0\
    );
\up_rdata[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[31]_i_3_n_0\,
      I2 => \up_scratch_reg[31]_1\(29),
      O => \up_rdata_reg[31]\(29)
    );
\up_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[2]_i_2_n_0\,
      I2 => p_1_in(0),
      I3 => \up_rdata[28]_i_2_n_0\,
      I4 => \up_scratch_reg[31]_1\(2),
      I5 => \up_rdata[31]_i_3_n_0\,
      O => \up_rdata_reg[31]\(2)
    );
\up_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => up_addr_s(4),
      I1 => up_addr_s(2),
      I2 => up_addr_s(0),
      I3 => up_addr_s(3),
      I4 => up_addr_s(1),
      I5 => \up_drp_rdata_reg[15]\(0),
      O => \up_rdata[2]_i_2_n_0\
    );
\up_rdata[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[31]_i_3_n_0\,
      I2 => \up_scratch_reg[31]_1\(30),
      O => \up_rdata_reg[31]\(30)
    );
\up_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[31]_i_3_n_0\,
      I2 => \up_scratch_reg[31]_1\(31),
      O => \up_rdata_reg[31]\(31)
    );
\up_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => up_addr_s(5),
      I1 => up_drp_sel_t_i_4_n_0,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => sel0(0),
      I5 => up_ack_i_2_n_0,
      O => \up_rdata[31]_i_2_n_0\
    );
\up_rdata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => up_addr_s(3),
      I1 => up_addr_s(1),
      I2 => up_addr_s(4),
      I3 => up_addr_s(2),
      I4 => up_addr_s(0),
      O => \up_rdata[31]_i_3_n_0\
    );
\up_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[3]_i_2_n_0\,
      I2 => p_1_in(1),
      I3 => \up_rdata[28]_i_2_n_0\,
      I4 => \up_scratch_reg[31]_1\(3),
      I5 => \up_rdata[31]_i_3_n_0\,
      O => \up_rdata_reg[31]\(3)
    );
\up_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => up_addr_s(4),
      I1 => up_addr_s(2),
      I2 => up_addr_s(0),
      I3 => up_addr_s(3),
      I4 => up_addr_s(1),
      I5 => \up_drp_rdata_reg[15]\(1),
      O => \up_rdata[3]_i_2_n_0\
    );
\up_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[4]_i_2_n_0\,
      I2 => p_1_in(2),
      I3 => \up_rdata[28]_i_2_n_0\,
      I4 => \up_scratch_reg[31]_1\(4),
      I5 => \up_rdata[31]_i_3_n_0\,
      O => \up_rdata_reg[31]\(4)
    );
\up_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => up_addr_s(4),
      I1 => up_addr_s(2),
      I2 => up_addr_s(0),
      I3 => up_addr_s(3),
      I4 => up_addr_s(1),
      I5 => \up_drp_rdata_reg[15]\(2),
      O => \up_rdata[4]_i_2_n_0\
    );
\up_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => \up_rdata[5]_i_2_n_0\,
      I1 => \up_rdata[18]_i_3_n_0\,
      I2 => \up_scratch_reg[31]_1\(5),
      I3 => \up_rdata[31]_i_3_n_0\,
      I4 => \up_rdata[31]_i_2_n_0\,
      O => \up_rdata_reg[31]\(5)
    );
\up_rdata[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5DD5555"
    )
        port map (
      I0 => \^up_rdata_reg[0]\,
      I1 => p_1_in(3),
      I2 => \up_drp_rdata_reg[15]\(3),
      I3 => \^up_rdata_reg[5]\,
      I4 => \^up_rdata_reg[5]_0\,
      O => \up_rdata[5]_i_2_n_0\
    );
\up_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8880000"
    )
        port map (
      I0 => \up_rdata[6]_i_2_n_0\,
      I1 => \up_rdata[18]_i_3_n_0\,
      I2 => \up_scratch_reg[31]_1\(6),
      I3 => \up_rdata[31]_i_3_n_0\,
      I4 => \up_rdata[31]_i_2_n_0\,
      O => \up_rdata_reg[31]\(6)
    );
\up_rdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5DD5555"
    )
        port map (
      I0 => \^up_rdata_reg[0]\,
      I1 => p_1_in(4),
      I2 => \up_drp_rdata_reg[15]\(4),
      I3 => \^up_rdata_reg[5]\,
      I4 => \^up_rdata_reg[5]_0\,
      O => \up_rdata[6]_i_2_n_0\
    );
\up_rdata[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00818001"
    )
        port map (
      I0 => up_addr_s(4),
      I1 => up_addr_s(2),
      I2 => up_addr_s(0),
      I3 => up_addr_s(3),
      I4 => up_addr_s(1),
      O => \^up_rdata_reg[5]\
    );
\up_rdata[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFEE"
    )
        port map (
      I0 => up_addr_s(3),
      I1 => up_addr_s(1),
      I2 => up_addr_s(4),
      I3 => up_addr_s(2),
      I4 => up_addr_s(0),
      O => \^up_rdata_reg[5]_0\
    );
\up_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[7]_i_2_n_0\,
      I2 => p_1_in(5),
      I3 => \up_rdata[28]_i_2_n_0\,
      I4 => \up_scratch_reg[31]_1\(7),
      I5 => \up_rdata[31]_i_3_n_0\,
      O => \up_rdata_reg[31]\(7)
    );
\up_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => up_addr_s(4),
      I1 => up_addr_s(2),
      I2 => up_addr_s(0),
      I3 => up_addr_s(3),
      I4 => up_addr_s(1),
      I5 => \up_drp_rdata_reg[15]\(5),
      O => \up_rdata[7]_i_2_n_0\
    );
\up_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[8]_i_2_n_0\,
      I2 => p_1_in(6),
      I3 => \up_rdata[28]_i_2_n_0\,
      I4 => \up_scratch_reg[31]_1\(8),
      I5 => \up_rdata[31]_i_3_n_0\,
      O => \up_rdata_reg[31]\(8)
    );
\up_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => up_addr_s(4),
      I1 => up_addr_s(2),
      I2 => up_addr_s(0),
      I3 => up_addr_s(3),
      I4 => up_addr_s(1),
      I5 => \up_drp_rdata_reg[15]\(6),
      O => \up_rdata[8]_i_2_n_0\
    );
\up_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \up_rdata[31]_i_2_n_0\,
      I1 => \up_rdata[9]_i_2_n_0\,
      I2 => p_1_in(7),
      I3 => \up_rdata[28]_i_2_n_0\,
      I4 => \up_scratch_reg[31]_1\(9),
      I5 => \up_rdata[31]_i_3_n_0\,
      O => \up_rdata_reg[31]\(9)
    );
\up_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => up_addr_s(4),
      I1 => up_addr_s(2),
      I2 => up_addr_s(0),
      I3 => up_addr_s(3),
      I4 => up_addr_s(1),
      I5 => \up_drp_rdata_reg[15]\(7),
      O => \up_rdata[9]_i_2_n_0\
    );
up_resetn_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \^up_scratch_reg[31]_0\(0),
      I1 => \^up_sel_s\,
      I2 => up_wr_s,
      I3 => up_resetn_i_2_n_0,
      I4 => up_resetn_i_3_n_0,
      I5 => up_resetn,
      O => up_resetn_reg
    );
up_resetn_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => up_addr_s(2),
      I1 => up_addr_s(0),
      I2 => up_addr_s(3),
      O => up_resetn_i_2_n_0
    );
up_resetn_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => up_addr_s(1),
      I1 => up_addr_s(4),
      I2 => up_addr_s(5),
      I3 => up_addr_s(7),
      I4 => up_addr_s(6),
      O => up_resetn_i_3_n_0
    );
\up_scratch[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^up_sel_s\,
      I1 => up_wr_s,
      I2 => up_addr_s(2),
      I3 => up_addr_s(0),
      I4 => up_addr_s(3),
      I5 => \up_scratch[31]_i_2_n_0\,
      O => \up_scratch_reg[31]\(0)
    );
\up_scratch[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => up_addr_s(1),
      I1 => up_addr_s(4),
      I2 => up_addr_s(5),
      I3 => up_addr_s(7),
      I4 => up_addr_s(6),
      O => \up_scratch[31]_i_2_n_0\
    );
up_sel_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5444"
    )
        port map (
      I0 => up_axi_access_reg_n_0,
      I1 => s_axi_arvalid,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      O => up_axi_access
    );
up_sel_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => s_axi_aresetn_0,
      D => up_axi_access,
      Q => \up_sel_s__0\
    );
\up_wdata[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(0),
      O => \up_wdata[0]_i_1_n_0\
    );
\up_wdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(10),
      O => \up_wdata[10]_i_1_n_0\
    );
\up_wdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(11),
      O => \up_wdata[11]_i_1_n_0\
    );
\up_wdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(12),
      O => \up_wdata[12]_i_1_n_0\
    );
\up_wdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(13),
      O => \up_wdata[13]_i_1_n_0\
    );
\up_wdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(14),
      O => \up_wdata[14]_i_1_n_0\
    );
\up_wdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(15),
      O => \up_wdata[15]_i_1_n_0\
    );
\up_wdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(16),
      O => \up_wdata[16]_i_1_n_0\
    );
\up_wdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(17),
      O => \up_wdata[17]_i_1_n_0\
    );
\up_wdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(18),
      O => \up_wdata[18]_i_1_n_0\
    );
\up_wdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(19),
      O => \up_wdata[19]_i_1_n_0\
    );
\up_wdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(1),
      O => \up_wdata[1]_i_1_n_0\
    );
\up_wdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(20),
      O => \up_wdata[20]_i_1_n_0\
    );
\up_wdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(21),
      O => \up_wdata[21]_i_1_n_0\
    );
\up_wdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(22),
      O => \up_wdata[22]_i_1_n_0\
    );
\up_wdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(23),
      O => \up_wdata[23]_i_1_n_0\
    );
\up_wdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(24),
      O => \up_wdata[24]_i_1_n_0\
    );
\up_wdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(25),
      O => \up_wdata[25]_i_1_n_0\
    );
\up_wdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(26),
      O => \up_wdata[26]_i_1_n_0\
    );
\up_wdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(27),
      O => \up_wdata[27]_i_1_n_0\
    );
\up_wdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(28),
      O => \up_wdata[28]_i_1_n_0\
    );
\up_wdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(29),
      O => \up_wdata[29]_i_1_n_0\
    );
\up_wdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(2),
      O => \up_wdata[2]_i_1_n_0\
    );
\up_wdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(30),
      O => \up_wdata[30]_i_1_n_0\
    );
\up_wdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(31),
      O => \up_wdata[31]_i_1_n_0\
    );
\up_wdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(3),
      O => \up_wdata[3]_i_1_n_0\
    );
\up_wdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(4),
      O => \up_wdata[4]_i_1_n_0\
    );
\up_wdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(5),
      O => \up_wdata[5]_i_1_n_0\
    );
\up_wdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(6),
      O => \up_wdata[6]_i_1_n_0\
    );
\up_wdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(7),
      O => \up_wdata[7]_i_1_n_0\
    );
\up_wdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(8),
      O => \up_wdata[8]_i_1_n_0\
    );
\up_wdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => up_axi_access_reg_n_0,
      I3 => s_axi_wdata(9),
      O => \up_wdata[9]_i_1_n_0\
    );
\up_wdata_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[0]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(0)
    );
\up_wdata_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[10]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(10)
    );
\up_wdata_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[11]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(11)
    );
\up_wdata_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[12]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(12)
    );
\up_wdata_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[13]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(13)
    );
\up_wdata_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[14]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(14)
    );
\up_wdata_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[15]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(15)
    );
\up_wdata_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[16]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(16)
    );
\up_wdata_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[17]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(17)
    );
\up_wdata_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[18]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(18)
    );
\up_wdata_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[19]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(19)
    );
\up_wdata_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[1]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(1)
    );
\up_wdata_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[20]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(20)
    );
\up_wdata_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[21]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(21)
    );
\up_wdata_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[22]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(22)
    );
\up_wdata_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[23]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(23)
    );
\up_wdata_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[24]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(24)
    );
\up_wdata_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[25]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(25)
    );
\up_wdata_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[26]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(26)
    );
\up_wdata_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[27]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(27)
    );
\up_wdata_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[28]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(28)
    );
\up_wdata_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[29]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(29)
    );
\up_wdata_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[2]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(2)
    );
\up_wdata_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[30]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(30)
    );
\up_wdata_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[31]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(31)
    );
\up_wdata_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[3]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(3)
    );
\up_wdata_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[4]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(4)
    );
\up_wdata_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[5]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(5)
    );
\up_wdata_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[6]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(6)
    );
\up_wdata_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[7]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(7)
    );
\up_wdata_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[8]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(8)
    );
\up_wdata_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => \up_wdata[9]_i_1_n_0\,
      Q => \^up_scratch_reg[31]_0\(9)
    );
up_wr_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => up_axi_access_reg_n_0,
      O => up_axi_wr_s0
    );
up_wr_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => up_axi_access_reg_n_0,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      O => up_axi_wr_s
    );
up_wr_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_axi_wr_s0,
      CLR => s_axi_aresetn_0,
      D => up_axi_wr_s,
      Q => up_wr_s
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_adi_axi_clkgen_0_0_up_drp_cntrl is
  port (
    drp_sel_s : out STD_LOGIC;
    drp_ready_int : out STD_LOGIC;
    up_drp_status_reg_0 : out STD_LOGIC;
    up_drp_locked : out STD_LOGIC;
    drp_wr_s : out STD_LOGIC;
    up_drp_status : out STD_LOGIC;
    \up_rdata_reg[0]\ : out STD_LOGIC;
    \up_rdata_reg[1]\ : out STD_LOGIC;
    DADDR : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \up_rdata_reg[15]\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    i_rst_reg : in STD_LOGIC;
    up_drp_sel_t : in STD_LOGIC;
    drp_clk : in STD_LOGIC;
    drp_ready_s : in STD_LOGIC;
    drp_ready_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    drp_locked : in STD_LOGIC;
    up_drp_rwn : in STD_LOGIC;
    \up_addr_reg[3]\ : in STD_LOGIC;
    up_resetn : in STD_LOGIC;
    \up_addr_reg[4]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \up_addr_reg[3]_0\ : in STD_LOGIC;
    up_mmcm_resetn : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \up_drp_addr_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \drp_rdata_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_adi_axi_clkgen_0_0_up_drp_cntrl : entity is "up_drp_cntrl";
end TySOM_1_7Z030_adi_axi_clkgen_0_0_up_drp_cntrl;

architecture STRUCTURE of TySOM_1_7Z030_adi_axi_clkgen_0_0_up_drp_cntrl is
  signal drp_ack_t : STD_LOGIC;
  signal drp_ack_t_i_2_n_0 : STD_LOGIC;
  signal \drp_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal drp_rdata_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal drp_sel_t_m1 : STD_LOGIC;
  signal drp_sel_t_m2 : STD_LOGIC;
  signal drp_sel_t_m3 : STD_LOGIC;
  signal drp_sel_t_s : STD_LOGIC;
  signal drp_wr_i_1_n_0 : STD_LOGIC;
  signal up_drp_ack_t_m1 : STD_LOGIC;
  signal up_drp_ack_t_m2 : STD_LOGIC;
  signal up_drp_ack_t_m3 : STD_LOGIC;
  signal up_drp_ack_t_s : STD_LOGIC;
  signal \^up_drp_locked\ : STD_LOGIC;
  signal up_drp_locked_m1 : STD_LOGIC;
  signal up_drp_rdata : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal up_drp_sel_t_d : STD_LOGIC;
  signal \^up_drp_status\ : STD_LOGIC;
  signal up_drp_status_i_1_n_0 : STD_LOGIC;
  signal \^up_drp_status_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of drp_sel_i_1 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of drp_wr_i_1 : label is "soft_lutpair38";
begin
  up_drp_locked <= \^up_drp_locked\;
  up_drp_status <= \^up_drp_status\;
  up_drp_status_reg_0 <= \^up_drp_status_reg_0\;
drp_ack_t_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => drp_ack_t,
      O => drp_ack_t_i_2_n_0
    );
drp_ack_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => drp_ready_reg(0),
      D => drp_ack_t_i_2_n_0,
      Q => drp_ack_t,
      R => '0'
    );
\drp_addr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => drp_sel_t_m3,
      I1 => drp_sel_t_m2,
      O => \drp_addr[6]_i_1_n_0\
    );
\drp_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => \up_drp_addr_reg[6]\(0),
      Q => DADDR(0),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => \up_drp_addr_reg[6]\(1),
      Q => DADDR(1),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => \up_drp_addr_reg[6]\(2),
      Q => DADDR(2),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => \up_drp_addr_reg[6]\(3),
      Q => DADDR(3),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => \up_drp_addr_reg[6]\(4),
      Q => DADDR(4),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => \up_drp_addr_reg[6]\(5),
      Q => DADDR(5),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => \up_drp_addr_reg[6]\(6),
      Q => DADDR(6),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_rdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => drp_ready_reg(0),
      D => \drp_rdata_reg[15]\(0),
      Q => drp_rdata_int(0),
      R => '0'
    );
\drp_rdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => drp_ready_reg(0),
      D => \drp_rdata_reg[15]\(10),
      Q => drp_rdata_int(10),
      R => '0'
    );
\drp_rdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => drp_ready_reg(0),
      D => \drp_rdata_reg[15]\(11),
      Q => drp_rdata_int(11),
      R => '0'
    );
\drp_rdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => drp_ready_reg(0),
      D => \drp_rdata_reg[15]\(12),
      Q => drp_rdata_int(12),
      R => '0'
    );
\drp_rdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => drp_ready_reg(0),
      D => \drp_rdata_reg[15]\(13),
      Q => drp_rdata_int(13),
      R => '0'
    );
\drp_rdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => drp_ready_reg(0),
      D => \drp_rdata_reg[15]\(14),
      Q => drp_rdata_int(14),
      R => '0'
    );
\drp_rdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => drp_ready_reg(0),
      D => \drp_rdata_reg[15]\(15),
      Q => drp_rdata_int(15),
      R => '0'
    );
\drp_rdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => drp_ready_reg(0),
      D => \drp_rdata_reg[15]\(1),
      Q => drp_rdata_int(1),
      R => '0'
    );
\drp_rdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => drp_ready_reg(0),
      D => \drp_rdata_reg[15]\(2),
      Q => drp_rdata_int(2),
      R => '0'
    );
\drp_rdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => drp_ready_reg(0),
      D => \drp_rdata_reg[15]\(3),
      Q => drp_rdata_int(3),
      R => '0'
    );
\drp_rdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => drp_ready_reg(0),
      D => \drp_rdata_reg[15]\(4),
      Q => drp_rdata_int(4),
      R => '0'
    );
\drp_rdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => drp_ready_reg(0),
      D => \drp_rdata_reg[15]\(5),
      Q => drp_rdata_int(5),
      R => '0'
    );
\drp_rdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => drp_ready_reg(0),
      D => \drp_rdata_reg[15]\(6),
      Q => drp_rdata_int(6),
      R => '0'
    );
\drp_rdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => drp_ready_reg(0),
      D => \drp_rdata_reg[15]\(7),
      Q => drp_rdata_int(7),
      R => '0'
    );
\drp_rdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => drp_ready_reg(0),
      D => \drp_rdata_reg[15]\(8),
      Q => drp_rdata_int(8),
      R => '0'
    );
\drp_rdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => drp_ready_reg(0),
      D => \drp_rdata_reg[15]\(9),
      Q => drp_rdata_int(9),
      R => '0'
    );
drp_ready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_ready_s,
      Q => drp_ready_int,
      R => '0'
    );
drp_sel_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => drp_sel_t_m2,
      I1 => drp_sel_t_m3,
      O => drp_sel_t_s
    );
drp_sel_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_sel_t_s,
      Q => drp_sel_s,
      R => '0'
    );
drp_sel_t_m1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => up_drp_sel_t,
      Q => drp_sel_t_m1,
      R => i_rst_reg
    );
drp_sel_t_m2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_sel_t_m1,
      Q => drp_sel_t_m2,
      R => i_rst_reg
    );
drp_sel_t_m3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_sel_t_m2,
      Q => drp_sel_t_m3,
      R => i_rst_reg
    );
\drp_wdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => Q(0),
      Q => DI(0),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_wdata_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => Q(10),
      Q => DI(10),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_wdata_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => Q(11),
      Q => DI(11),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_wdata_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => Q(12),
      Q => DI(12),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_wdata_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => Q(13),
      Q => DI(13),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_wdata_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => Q(14),
      Q => DI(14),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_wdata_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => Q(15),
      Q => DI(15),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_wdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => Q(1),
      Q => DI(1),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_wdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => Q(2),
      Q => DI(2),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_wdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => Q(3),
      Q => DI(3),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_wdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => Q(4),
      Q => DI(4),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_wdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => Q(5),
      Q => DI(5),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_wdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => Q(6),
      Q => DI(6),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_wdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => Q(7),
      Q => DI(7),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_wdata_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => Q(8),
      Q => DI(8),
      R => \drp_addr[6]_i_1_n_0\
    );
\drp_wdata_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => Q(9),
      Q => DI(9),
      R => \drp_addr[6]_i_1_n_0\
    );
drp_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => drp_sel_t_m3,
      I1 => drp_sel_t_m2,
      I2 => up_drp_rwn,
      O => drp_wr_i_1_n_0
    );
drp_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => drp_clk,
      CE => '1',
      D => drp_wr_i_1_n_0,
      Q => drp_wr_s,
      R => '0'
    );
up_axi_awready_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^up_drp_status_reg_0\
    );
up_drp_ack_t_m1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg_0\,
      D => drp_ack_t,
      Q => up_drp_ack_t_m1
    );
up_drp_ack_t_m2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg_0\,
      D => up_drp_ack_t_m1,
      Q => up_drp_ack_t_m2
    );
up_drp_ack_t_m3_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg_0\,
      D => up_drp_ack_t_m2,
      Q => up_drp_ack_t_m3
    );
up_drp_locked_m1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg_0\,
      D => drp_locked,
      Q => up_drp_locked_m1
    );
up_drp_locked_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg_0\,
      D => up_drp_locked_m1,
      Q => \^up_drp_locked\
    );
\up_drp_rdata[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => up_drp_ack_t_m3,
      I1 => up_drp_ack_t_m2,
      O => up_drp_ack_t_s
    );
\up_drp_rdata_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_drp_ack_t_s,
      CLR => \^up_drp_status_reg_0\,
      D => drp_rdata_int(0),
      Q => up_drp_rdata(0)
    );
\up_drp_rdata_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_drp_ack_t_s,
      CLR => \^up_drp_status_reg_0\,
      D => drp_rdata_int(10),
      Q => \up_rdata_reg[15]\(8)
    );
\up_drp_rdata_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_drp_ack_t_s,
      CLR => \^up_drp_status_reg_0\,
      D => drp_rdata_int(11),
      Q => \up_rdata_reg[15]\(9)
    );
\up_drp_rdata_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_drp_ack_t_s,
      CLR => \^up_drp_status_reg_0\,
      D => drp_rdata_int(12),
      Q => \up_rdata_reg[15]\(10)
    );
\up_drp_rdata_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_drp_ack_t_s,
      CLR => \^up_drp_status_reg_0\,
      D => drp_rdata_int(13),
      Q => \up_rdata_reg[15]\(11)
    );
\up_drp_rdata_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_drp_ack_t_s,
      CLR => \^up_drp_status_reg_0\,
      D => drp_rdata_int(14),
      Q => \up_rdata_reg[15]\(12)
    );
\up_drp_rdata_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_drp_ack_t_s,
      CLR => \^up_drp_status_reg_0\,
      D => drp_rdata_int(15),
      Q => \up_rdata_reg[15]\(13)
    );
\up_drp_rdata_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_drp_ack_t_s,
      CLR => \^up_drp_status_reg_0\,
      D => drp_rdata_int(1),
      Q => up_drp_rdata(1)
    );
\up_drp_rdata_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_drp_ack_t_s,
      CLR => \^up_drp_status_reg_0\,
      D => drp_rdata_int(2),
      Q => \up_rdata_reg[15]\(0)
    );
\up_drp_rdata_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_drp_ack_t_s,
      CLR => \^up_drp_status_reg_0\,
      D => drp_rdata_int(3),
      Q => \up_rdata_reg[15]\(1)
    );
\up_drp_rdata_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_drp_ack_t_s,
      CLR => \^up_drp_status_reg_0\,
      D => drp_rdata_int(4),
      Q => \up_rdata_reg[15]\(2)
    );
\up_drp_rdata_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_drp_ack_t_s,
      CLR => \^up_drp_status_reg_0\,
      D => drp_rdata_int(5),
      Q => \up_rdata_reg[15]\(3)
    );
\up_drp_rdata_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_drp_ack_t_s,
      CLR => \^up_drp_status_reg_0\,
      D => drp_rdata_int(6),
      Q => \up_rdata_reg[15]\(4)
    );
\up_drp_rdata_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_drp_ack_t_s,
      CLR => \^up_drp_status_reg_0\,
      D => drp_rdata_int(7),
      Q => \up_rdata_reg[15]\(5)
    );
\up_drp_rdata_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_drp_ack_t_s,
      CLR => \^up_drp_status_reg_0\,
      D => drp_rdata_int(8),
      Q => \up_rdata_reg[15]\(6)
    );
\up_drp_rdata_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_drp_ack_t_s,
      CLR => \^up_drp_status_reg_0\,
      D => drp_rdata_int(9),
      Q => \up_rdata_reg[15]\(7)
    );
up_drp_sel_t_d_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg_0\,
      D => up_drp_sel_t,
      Q => up_drp_sel_t_d
    );
up_drp_status_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99990990"
    )
        port map (
      I0 => up_drp_ack_t_m2,
      I1 => up_drp_ack_t_m3,
      I2 => up_drp_sel_t_d,
      I3 => up_drp_sel_t,
      I4 => \^up_drp_status\,
      O => up_drp_status_i_1_n_0
    );
up_drp_status_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg_0\,
      D => up_drp_status_i_1_n_0,
      Q => \^up_drp_status\
    );
\up_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAFFF0CACA0F00"
    )
        port map (
      I0 => \^up_drp_locked\,
      I1 => up_drp_rdata(0),
      I2 => \up_addr_reg[3]\,
      I3 => up_resetn,
      I4 => \up_addr_reg[4]\,
      I5 => Q(0),
      O => \up_rdata_reg[0]\
    );
\up_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CF0FCF0FAFFFAF0F"
    )
        port map (
      I0 => Q(1),
      I1 => up_drp_rdata(1),
      I2 => \up_addr_reg[3]_0\,
      I3 => \up_addr_reg[3]\,
      I4 => up_mmcm_resetn,
      I5 => \up_addr_reg[4]\,
      O => \up_rdata_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_adi_axi_clkgen_0_0_up_clkgen is
  port (
    mmcm_rst : out STD_LOGIC;
    drp_rst : out STD_LOGIC;
    up_drp_status_reg : out STD_LOGIC;
    drp_sel_s : out STD_LOGIC;
    up_drp_rwn : out STD_LOGIC;
    drp_ready_int : out STD_LOGIC;
    up_drp_locked : out STD_LOGIC;
    up_ack_s : out STD_LOGIC;
    drp_wr_s : out STD_LOGIC;
    up_resetn : out STD_LOGIC;
    up_mmcm_resetn : out STD_LOGIC;
    up_drp_status : out STD_LOGIC;
    \up_axi_rdata_reg[29]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 21 downto 0 );
    \up_rdata_reg[0]_0\ : out STD_LOGIC;
    \up_rdata_reg[15]_0\ : out STD_LOGIC_VECTOR ( 13 downto 0 );
    \up_rdata_reg[27]_0\ : out STD_LOGIC_VECTOR ( 25 downto 0 );
    \up_rdata_reg[1]_0\ : out STD_LOGIC;
    DADDR : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \up_rdata_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    drp_clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    drp_ready_s : in STD_LOGIC;
    drp_ready_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    drp_locked : in STD_LOGIC;
    up_sel_s : in STD_LOGIC;
    \up_wdata_reg[0]\ : in STD_LOGIC;
    \up_wdata_reg[1]\ : in STD_LOGIC;
    up_axi_rvalid_reg : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \up_addr_reg[3]\ : in STD_LOGIC;
    \up_addr_reg[4]\ : in STD_LOGIC;
    \up_addr_reg[3]_0\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    up_wr_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \drp_rdata_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \up_scratch_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_adi_axi_clkgen_0_0_up_clkgen : entity is "up_clkgen";
end TySOM_1_7Z030_adi_axi_clkgen_0_0_up_clkgen;

architecture STRUCTURE of TySOM_1_7Z030_adi_axi_clkgen_0_0_up_clkgen is
  signal \^drp_rst\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^up_drp_rwn\ : STD_LOGIC;
  signal up_drp_sel_t : STD_LOGIC;
  signal up_drp_sel_t_i_2_n_0 : STD_LOGIC;
  signal \^up_drp_status_reg\ : STD_LOGIC;
  signal \^up_mmcm_resetn\ : STD_LOGIC;
  signal \^up_rdata_reg[27]_0\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal up_rdata_s : STD_LOGIC_VECTOR ( 29 downto 1 );
  signal \^up_resetn\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \up_axi_rdata[13]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \up_axi_rdata[17]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \up_axi_rdata[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \up_axi_rdata[20]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \up_axi_rdata[22]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \up_axi_rdata[24]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \up_axi_rdata[29]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \up_axi_rdata[4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \up_axi_rdata[6]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \up_axi_rdata[8]_i_1\ : label is "soft_lutpair40";
begin
  drp_rst <= \^drp_rst\;
  up_drp_rwn <= \^up_drp_rwn\;
  up_drp_status_reg <= \^up_drp_status_reg\;
  up_mmcm_resetn <= \^up_mmcm_resetn\;
  \up_rdata_reg[27]_0\(25 downto 0) <= \^up_rdata_reg[27]_0\(25 downto 0);
  up_resetn <= \^up_resetn\;
i_drp_cntrl: entity work.TySOM_1_7Z030_adi_axi_clkgen_0_0_up_drp_cntrl
     port map (
      DADDR(6 downto 0) => DADDR(6 downto 0),
      DI(15 downto 0) => DI(15 downto 0),
      Q(15 downto 2) => \^up_rdata_reg[27]_0\(13 downto 0),
      Q(1 downto 0) => p_1_in(1 downto 0),
      drp_clk => drp_clk,
      drp_locked => drp_locked,
      \drp_rdata_reg[15]\(15 downto 0) => \drp_rdata_reg[15]\(15 downto 0),
      drp_ready_int => drp_ready_int,
      drp_ready_reg(0) => drp_ready_reg(0),
      drp_ready_s => drp_ready_s,
      drp_sel_s => drp_sel_s,
      drp_wr_s => drp_wr_s,
      i_rst_reg => \^drp_rst\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \up_addr_reg[3]\ => \up_addr_reg[3]\,
      \up_addr_reg[3]_0\ => \up_addr_reg[3]_0\,
      \up_addr_reg[4]\ => \up_addr_reg[4]\,
      \up_drp_addr_reg[6]\(6 downto 0) => \^up_rdata_reg[27]_0\(20 downto 14),
      up_drp_locked => up_drp_locked,
      up_drp_rwn => \^up_drp_rwn\,
      up_drp_sel_t => up_drp_sel_t,
      up_drp_status => up_drp_status,
      up_drp_status_reg_0 => \^up_drp_status_reg\,
      up_mmcm_resetn => \^up_mmcm_resetn\,
      \up_rdata_reg[0]\ => \up_rdata_reg[0]_0\,
      \up_rdata_reg[15]\(13 downto 0) => \up_rdata_reg[15]_0\(13 downto 0),
      \up_rdata_reg[1]\ => \up_rdata_reg[1]_0\,
      up_resetn => \^up_resetn\
    );
i_drp_rst_reg: entity work.TySOM_1_7Z030_adi_axi_clkgen_0_0_ad_rst
     port map (
      drp_clk => drp_clk,
      drp_rst => \^drp_rst\,
      up_resetn => \^up_resetn\
    );
i_mmcm_rst_reg: entity work.TySOM_1_7Z030_adi_axi_clkgen_0_0_ad_rst_0
     port map (
      drp_clk => drp_clk,
      mmcm_rst => mmcm_rst,
      up_mmcm_resetn => \^up_mmcm_resetn\
    );
up_ack_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => up_sel_s,
      Q => up_ack_s
    );
\up_axi_rdata[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => up_rdata_s(13),
      I1 => up_axi_rvalid_reg,
      I2 => s_axi_rready,
      O => \up_axi_rdata_reg[29]\(4)
    );
\up_axi_rdata[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => up_rdata_s(17),
      I1 => up_axi_rvalid_reg,
      I2 => s_axi_rready,
      O => \up_axi_rdata_reg[29]\(5)
    );
\up_axi_rdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => up_rdata_s(1),
      I1 => up_axi_rvalid_reg,
      I2 => s_axi_rready,
      O => \up_axi_rdata_reg[29]\(0)
    );
\up_axi_rdata[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => up_rdata_s(20),
      I1 => up_axi_rvalid_reg,
      I2 => s_axi_rready,
      O => \up_axi_rdata_reg[29]\(6)
    );
\up_axi_rdata[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => up_rdata_s(22),
      I1 => up_axi_rvalid_reg,
      I2 => s_axi_rready,
      O => \up_axi_rdata_reg[29]\(7)
    );
\up_axi_rdata[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => up_rdata_s(24),
      I1 => up_axi_rvalid_reg,
      I2 => s_axi_rready,
      O => \up_axi_rdata_reg[29]\(8)
    );
\up_axi_rdata[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => up_rdata_s(29),
      I1 => up_axi_rvalid_reg,
      I2 => s_axi_rready,
      O => \up_axi_rdata_reg[29]\(9)
    );
\up_axi_rdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => up_rdata_s(4),
      I1 => up_axi_rvalid_reg,
      I2 => s_axi_rready,
      O => \up_axi_rdata_reg[29]\(1)
    );
\up_axi_rdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => up_rdata_s(6),
      I1 => up_axi_rvalid_reg,
      I2 => s_axi_rready,
      O => \up_axi_rdata_reg[29]\(2)
    );
\up_axi_rdata[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => up_rdata_s(8),
      I1 => up_axi_rvalid_reg,
      I2 => s_axi_rready,
      O => \up_axi_rdata_reg[29]\(3)
    );
\up_drp_addr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(16),
      Q => \^up_rdata_reg[27]_0\(14)
    );
\up_drp_addr_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(26),
      Q => \^up_rdata_reg[27]_0\(24)
    );
\up_drp_addr_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(27),
      Q => \^up_rdata_reg[27]_0\(25)
    );
\up_drp_addr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(17),
      Q => \^up_rdata_reg[27]_0\(15)
    );
\up_drp_addr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(18),
      Q => \^up_rdata_reg[27]_0\(16)
    );
\up_drp_addr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(19),
      Q => \^up_rdata_reg[27]_0\(17)
    );
\up_drp_addr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(20),
      Q => \^up_rdata_reg[27]_0\(18)
    );
\up_drp_addr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(21),
      Q => \^up_rdata_reg[27]_0\(19)
    );
\up_drp_addr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(22),
      Q => \^up_rdata_reg[27]_0\(20)
    );
\up_drp_addr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(23),
      Q => \^up_rdata_reg[27]_0\(21)
    );
\up_drp_addr_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(24),
      Q => \^up_rdata_reg[27]_0\(22)
    );
\up_drp_addr_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(25),
      Q => \^up_rdata_reg[27]_0\(23)
    );
up_drp_rwn_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(28),
      Q => \^up_drp_rwn\
    );
up_drp_sel_t_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => up_drp_sel_t,
      O => up_drp_sel_t_i_2_n_0
    );
up_drp_sel_t_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => up_drp_sel_t_i_2_n_0,
      Q => up_drp_sel_t
    );
\up_drp_wdata_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(0),
      Q => p_1_in(0)
    );
\up_drp_wdata_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(10),
      Q => \^up_rdata_reg[27]_0\(8)
    );
\up_drp_wdata_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(11),
      Q => \^up_rdata_reg[27]_0\(9)
    );
\up_drp_wdata_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(12),
      Q => \^up_rdata_reg[27]_0\(10)
    );
\up_drp_wdata_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(13),
      Q => \^up_rdata_reg[27]_0\(11)
    );
\up_drp_wdata_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(14),
      Q => \^up_rdata_reg[27]_0\(12)
    );
\up_drp_wdata_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(15),
      Q => \^up_rdata_reg[27]_0\(13)
    );
\up_drp_wdata_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(1),
      Q => p_1_in(1)
    );
\up_drp_wdata_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(2),
      Q => \^up_rdata_reg[27]_0\(0)
    );
\up_drp_wdata_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(3),
      Q => \^up_rdata_reg[27]_0\(1)
    );
\up_drp_wdata_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(4),
      Q => \^up_rdata_reg[27]_0\(2)
    );
\up_drp_wdata_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(5),
      Q => \^up_rdata_reg[27]_0\(3)
    );
\up_drp_wdata_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(6),
      Q => \^up_rdata_reg[27]_0\(4)
    );
\up_drp_wdata_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(7),
      Q => \^up_rdata_reg[27]_0\(5)
    );
\up_drp_wdata_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(8),
      Q => \^up_rdata_reg[27]_0\(6)
    );
\up_drp_wdata_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      CLR => \^up_drp_status_reg\,
      D => D(9),
      Q => \^up_rdata_reg[27]_0\(7)
    );
up_mmcm_resetn_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_wdata_reg[1]\,
      Q => \^up_mmcm_resetn\
    );
\up_rdata_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(0),
      Q => Q(0)
    );
\up_rdata_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(10),
      Q => Q(6)
    );
\up_rdata_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(11),
      Q => Q(7)
    );
\up_rdata_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(12),
      Q => Q(8)
    );
\up_rdata_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(13),
      Q => up_rdata_s(13)
    );
\up_rdata_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(14),
      Q => Q(9)
    );
\up_rdata_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(15),
      Q => Q(10)
    );
\up_rdata_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(16),
      Q => Q(11)
    );
\up_rdata_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(17),
      Q => up_rdata_s(17)
    );
\up_rdata_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(18),
      Q => Q(12)
    );
\up_rdata_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(19),
      Q => Q(13)
    );
\up_rdata_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(1),
      Q => up_rdata_s(1)
    );
\up_rdata_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(20),
      Q => up_rdata_s(20)
    );
\up_rdata_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(21),
      Q => Q(14)
    );
\up_rdata_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(22),
      Q => up_rdata_s(22)
    );
\up_rdata_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(23),
      Q => Q(15)
    );
\up_rdata_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(24),
      Q => up_rdata_s(24)
    );
\up_rdata_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(25),
      Q => Q(16)
    );
\up_rdata_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(26),
      Q => Q(17)
    );
\up_rdata_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(27),
      Q => Q(18)
    );
\up_rdata_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(28),
      Q => Q(19)
    );
\up_rdata_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(29),
      Q => up_rdata_s(29)
    );
\up_rdata_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(2),
      Q => Q(1)
    );
\up_rdata_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(30),
      Q => Q(20)
    );
\up_rdata_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(31),
      Q => Q(21)
    );
\up_rdata_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(3),
      Q => Q(2)
    );
\up_rdata_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(4),
      Q => up_rdata_s(4)
    );
\up_rdata_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(5),
      Q => Q(3)
    );
\up_rdata_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(6),
      Q => up_rdata_s(6)
    );
\up_rdata_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(7),
      Q => Q(4)
    );
\up_rdata_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(8),
      Q => up_rdata_s(8)
    );
\up_rdata_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_scratch_reg[31]_0\(9),
      Q => Q(5)
    );
up_resetn_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => \^up_drp_status_reg\,
      D => \up_wdata_reg[0]\,
      Q => \^up_resetn\
    );
\up_scratch_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(0),
      Q => \up_rdata_reg[31]_0\(0)
    );
\up_scratch_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(10),
      Q => \up_rdata_reg[31]_0\(10)
    );
\up_scratch_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(11),
      Q => \up_rdata_reg[31]_0\(11)
    );
\up_scratch_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(12),
      Q => \up_rdata_reg[31]_0\(12)
    );
\up_scratch_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(13),
      Q => \up_rdata_reg[31]_0\(13)
    );
\up_scratch_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(14),
      Q => \up_rdata_reg[31]_0\(14)
    );
\up_scratch_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(15),
      Q => \up_rdata_reg[31]_0\(15)
    );
\up_scratch_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(16),
      Q => \up_rdata_reg[31]_0\(16)
    );
\up_scratch_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(17),
      Q => \up_rdata_reg[31]_0\(17)
    );
\up_scratch_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(18),
      Q => \up_rdata_reg[31]_0\(18)
    );
\up_scratch_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(19),
      Q => \up_rdata_reg[31]_0\(19)
    );
\up_scratch_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(1),
      Q => \up_rdata_reg[31]_0\(1)
    );
\up_scratch_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(20),
      Q => \up_rdata_reg[31]_0\(20)
    );
\up_scratch_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(21),
      Q => \up_rdata_reg[31]_0\(21)
    );
\up_scratch_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(22),
      Q => \up_rdata_reg[31]_0\(22)
    );
\up_scratch_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(23),
      Q => \up_rdata_reg[31]_0\(23)
    );
\up_scratch_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(24),
      Q => \up_rdata_reg[31]_0\(24)
    );
\up_scratch_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(25),
      Q => \up_rdata_reg[31]_0\(25)
    );
\up_scratch_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(26),
      Q => \up_rdata_reg[31]_0\(26)
    );
\up_scratch_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(27),
      Q => \up_rdata_reg[31]_0\(27)
    );
\up_scratch_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(28),
      Q => \up_rdata_reg[31]_0\(28)
    );
\up_scratch_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(29),
      Q => \up_rdata_reg[31]_0\(29)
    );
\up_scratch_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(2),
      Q => \up_rdata_reg[31]_0\(2)
    );
\up_scratch_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(30),
      Q => \up_rdata_reg[31]_0\(30)
    );
\up_scratch_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(31),
      Q => \up_rdata_reg[31]_0\(31)
    );
\up_scratch_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(3),
      Q => \up_rdata_reg[31]_0\(3)
    );
\up_scratch_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(4),
      Q => \up_rdata_reg[31]_0\(4)
    );
\up_scratch_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(5),
      Q => \up_rdata_reg[31]_0\(5)
    );
\up_scratch_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(6),
      Q => \up_rdata_reg[31]_0\(6)
    );
\up_scratch_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(7),
      Q => \up_rdata_reg[31]_0\(7)
    );
\up_scratch_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(8),
      Q => \up_rdata_reg[31]_0\(8)
    );
\up_scratch_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => up_wr_reg(0),
      CLR => \^up_drp_status_reg\,
      D => D(9),
      Q => \up_rdata_reg[31]_0\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_adi_axi_clkgen_0_0_axi_clkgen is
  port (
    clk_0 : out STD_LOGIC;
    clk_1 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    drp_clk : in STD_LOGIC;
    clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TySOM_1_7Z030_adi_axi_clkgen_0_0_axi_clkgen : entity is "axi_clkgen";
end TySOM_1_7Z030_adi_axi_clkgen_0_0_axi_clkgen;

architecture STRUCTURE of TySOM_1_7Z030_adi_axi_clkgen_0_0_axi_clkgen is
  signal drp_addr_s : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal drp_locked : STD_LOGIC;
  signal drp_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal drp_ready_s : STD_LOGIC;
  signal drp_rst : STD_LOGIC;
  signal drp_sel_s : STD_LOGIC;
  signal drp_wdata_s : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal drp_wr_s : STD_LOGIC;
  signal \i_drp_cntrl/drp_ready_int\ : STD_LOGIC;
  signal i_mmcm_drp_n_4 : STD_LOGIC;
  signal i_up_axi_n_10 : STD_LOGIC;
  signal i_up_axi_n_11 : STD_LOGIC;
  signal i_up_axi_n_12 : STD_LOGIC;
  signal i_up_axi_n_13 : STD_LOGIC;
  signal i_up_axi_n_14 : STD_LOGIC;
  signal i_up_axi_n_15 : STD_LOGIC;
  signal i_up_axi_n_16 : STD_LOGIC;
  signal i_up_axi_n_17 : STD_LOGIC;
  signal i_up_axi_n_18 : STD_LOGIC;
  signal i_up_axi_n_19 : STD_LOGIC;
  signal i_up_axi_n_20 : STD_LOGIC;
  signal i_up_axi_n_21 : STD_LOGIC;
  signal i_up_axi_n_22 : STD_LOGIC;
  signal i_up_axi_n_23 : STD_LOGIC;
  signal i_up_axi_n_24 : STD_LOGIC;
  signal i_up_axi_n_25 : STD_LOGIC;
  signal i_up_axi_n_26 : STD_LOGIC;
  signal i_up_axi_n_27 : STD_LOGIC;
  signal i_up_axi_n_28 : STD_LOGIC;
  signal i_up_axi_n_29 : STD_LOGIC;
  signal i_up_axi_n_30 : STD_LOGIC;
  signal i_up_axi_n_31 : STD_LOGIC;
  signal i_up_axi_n_32 : STD_LOGIC;
  signal i_up_axi_n_33 : STD_LOGIC;
  signal i_up_axi_n_34 : STD_LOGIC;
  signal i_up_axi_n_35 : STD_LOGIC;
  signal i_up_axi_n_36 : STD_LOGIC;
  signal i_up_axi_n_37 : STD_LOGIC;
  signal i_up_axi_n_38 : STD_LOGIC;
  signal i_up_axi_n_39 : STD_LOGIC;
  signal i_up_axi_n_40 : STD_LOGIC;
  signal i_up_axi_n_41 : STD_LOGIC;
  signal i_up_axi_n_42 : STD_LOGIC;
  signal i_up_axi_n_43 : STD_LOGIC;
  signal i_up_axi_n_44 : STD_LOGIC;
  signal i_up_axi_n_45 : STD_LOGIC;
  signal i_up_axi_n_46 : STD_LOGIC;
  signal i_up_axi_n_47 : STD_LOGIC;
  signal i_up_axi_n_48 : STD_LOGIC;
  signal i_up_axi_n_49 : STD_LOGIC;
  signal i_up_axi_n_50 : STD_LOGIC;
  signal i_up_axi_n_51 : STD_LOGIC;
  signal i_up_axi_n_52 : STD_LOGIC;
  signal i_up_axi_n_53 : STD_LOGIC;
  signal i_up_axi_n_54 : STD_LOGIC;
  signal i_up_axi_n_55 : STD_LOGIC;
  signal i_up_axi_n_56 : STD_LOGIC;
  signal i_up_axi_n_57 : STD_LOGIC;
  signal i_up_axi_n_58 : STD_LOGIC;
  signal i_up_axi_n_59 : STD_LOGIC;
  signal i_up_axi_n_60 : STD_LOGIC;
  signal i_up_axi_n_61 : STD_LOGIC;
  signal i_up_axi_n_62 : STD_LOGIC;
  signal i_up_axi_n_63 : STD_LOGIC;
  signal i_up_axi_n_64 : STD_LOGIC;
  signal i_up_axi_n_65 : STD_LOGIC;
  signal i_up_axi_n_66 : STD_LOGIC;
  signal i_up_axi_n_67 : STD_LOGIC;
  signal i_up_axi_n_68 : STD_LOGIC;
  signal i_up_axi_n_69 : STD_LOGIC;
  signal i_up_axi_n_70 : STD_LOGIC;
  signal i_up_axi_n_71 : STD_LOGIC;
  signal i_up_axi_n_72 : STD_LOGIC;
  signal i_up_axi_n_73 : STD_LOGIC;
  signal i_up_axi_n_74 : STD_LOGIC;
  signal i_up_axi_n_75 : STD_LOGIC;
  signal i_up_axi_n_76 : STD_LOGIC;
  signal i_up_axi_n_8 : STD_LOGIC;
  signal i_up_axi_n_9 : STD_LOGIC;
  signal i_up_clkgen_n_2 : STD_LOGIC;
  signal i_up_clkgen_n_44 : STD_LOGIC;
  signal i_up_clkgen_n_85 : STD_LOGIC;
  signal mmcm_rst : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 29 downto 1 );
  signal p_1_in_0 : STD_LOGIC_VECTOR ( 27 downto 2 );
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal up_ack_s : STD_LOGIC;
  signal up_drp_locked : STD_LOGIC;
  signal up_drp_rdata : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal up_drp_rwn : STD_LOGIC;
  signal up_drp_sel_t0 : STD_LOGIC;
  signal up_drp_status : STD_LOGIC;
  signal up_mmcm_resetn : STD_LOGIC;
  signal up_rdata_s : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal up_resetn : STD_LOGIC;
  signal up_scratch : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal up_scratch0 : STD_LOGIC;
  signal up_sel_s : STD_LOGIC;
begin
  s_axi_rvalid <= \^s_axi_rvalid\;
i_mmcm_drp: entity work.TySOM_1_7Z030_adi_axi_clkgen_0_0_ad_mmcm_drp
     port map (
      DADDR(6 downto 0) => drp_addr_s(6 downto 0),
      DI(15 downto 0) => drp_wdata_s(15 downto 0),
      E(0) => i_mmcm_drp_n_4,
      Q(15 downto 0) => drp_rdata(15 downto 0),
      clk => clk,
      clk_0 => clk_0,
      clk_1 => clk_1,
      drp_clk => drp_clk,
      drp_locked => drp_locked,
      drp_ready_int => \i_drp_cntrl/drp_ready_int\,
      drp_ready_s => drp_ready_s,
      drp_rst => drp_rst,
      drp_sel_s => drp_sel_s,
      drp_wr_s => drp_wr_s,
      mmcm_rst => mmcm_rst
    );
i_up_axi: entity work.TySOM_1_7Z030_adi_axi_clkgen_0_0_up_axi
     port map (
      D(9) => p_1_in(29),
      D(8) => p_1_in(24),
      D(7) => p_1_in(22),
      D(6) => p_1_in(20),
      D(5) => p_1_in(17),
      D(4) => p_1_in(13),
      D(3) => p_1_in(8),
      D(2) => p_1_in(6),
      D(1) => p_1_in(4),
      D(0) => p_1_in(1),
      E(0) => up_drp_sel_t0,
      Q(21 downto 20) => up_rdata_s(31 downto 30),
      Q(19 downto 16) => up_rdata_s(28 downto 25),
      Q(15) => up_rdata_s(23),
      Q(14) => up_rdata_s(21),
      Q(13 downto 12) => up_rdata_s(19 downto 18),
      Q(11 downto 9) => up_rdata_s(16 downto 14),
      Q(8 downto 5) => up_rdata_s(12 downto 9),
      Q(4) => up_rdata_s(7),
      Q(3) => up_rdata_s(5),
      Q(2 downto 1) => up_rdata_s(3 downto 2),
      Q(0) => up_rdata_s(0),
      p_1_in(25 downto 0) => p_1_in_0(27 downto 2),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(13 downto 0) => s_axi_araddr(13 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => i_up_clkgen_n_2,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(13 downto 0) => s_axi_awaddr(13 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => \^s_axi_rvalid\,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      up_ack_s => up_ack_s,
      up_drp_locked => up_drp_locked,
      up_drp_locked_reg => i_up_clkgen_n_44,
      \up_drp_rdata_reg[15]\(13 downto 0) => up_drp_rdata(15 downto 2),
      up_drp_rwn => up_drp_rwn,
      up_drp_status => up_drp_status,
      \up_drp_wdata_reg[1]\ => i_up_clkgen_n_85,
      up_mmcm_resetn => up_mmcm_resetn,
      up_mmcm_resetn_reg => i_up_axi_n_43,
      \up_rdata_reg[0]\ => i_up_axi_n_40,
      \up_rdata_reg[31]\(31) => i_up_axi_n_8,
      \up_rdata_reg[31]\(30) => i_up_axi_n_9,
      \up_rdata_reg[31]\(29) => i_up_axi_n_10,
      \up_rdata_reg[31]\(28) => i_up_axi_n_11,
      \up_rdata_reg[31]\(27) => i_up_axi_n_12,
      \up_rdata_reg[31]\(26) => i_up_axi_n_13,
      \up_rdata_reg[31]\(25) => i_up_axi_n_14,
      \up_rdata_reg[31]\(24) => i_up_axi_n_15,
      \up_rdata_reg[31]\(23) => i_up_axi_n_16,
      \up_rdata_reg[31]\(22) => i_up_axi_n_17,
      \up_rdata_reg[31]\(21) => i_up_axi_n_18,
      \up_rdata_reg[31]\(20) => i_up_axi_n_19,
      \up_rdata_reg[31]\(19) => i_up_axi_n_20,
      \up_rdata_reg[31]\(18) => i_up_axi_n_21,
      \up_rdata_reg[31]\(17) => i_up_axi_n_22,
      \up_rdata_reg[31]\(16) => i_up_axi_n_23,
      \up_rdata_reg[31]\(15) => i_up_axi_n_24,
      \up_rdata_reg[31]\(14) => i_up_axi_n_25,
      \up_rdata_reg[31]\(13) => i_up_axi_n_26,
      \up_rdata_reg[31]\(12) => i_up_axi_n_27,
      \up_rdata_reg[31]\(11) => i_up_axi_n_28,
      \up_rdata_reg[31]\(10) => i_up_axi_n_29,
      \up_rdata_reg[31]\(9) => i_up_axi_n_30,
      \up_rdata_reg[31]\(8) => i_up_axi_n_31,
      \up_rdata_reg[31]\(7) => i_up_axi_n_32,
      \up_rdata_reg[31]\(6) => i_up_axi_n_33,
      \up_rdata_reg[31]\(5) => i_up_axi_n_34,
      \up_rdata_reg[31]\(4) => i_up_axi_n_35,
      \up_rdata_reg[31]\(3) => i_up_axi_n_36,
      \up_rdata_reg[31]\(2) => i_up_axi_n_37,
      \up_rdata_reg[31]\(1) => i_up_axi_n_38,
      \up_rdata_reg[31]\(0) => i_up_axi_n_39,
      \up_rdata_reg[5]\ => i_up_axi_n_41,
      \up_rdata_reg[5]_0\ => i_up_axi_n_42,
      up_resetn => up_resetn,
      up_resetn_reg => i_up_axi_n_76,
      \up_scratch_reg[31]\(0) => up_scratch0,
      \up_scratch_reg[31]_0\(31) => i_up_axi_n_44,
      \up_scratch_reg[31]_0\(30) => i_up_axi_n_45,
      \up_scratch_reg[31]_0\(29) => i_up_axi_n_46,
      \up_scratch_reg[31]_0\(28) => i_up_axi_n_47,
      \up_scratch_reg[31]_0\(27) => i_up_axi_n_48,
      \up_scratch_reg[31]_0\(26) => i_up_axi_n_49,
      \up_scratch_reg[31]_0\(25) => i_up_axi_n_50,
      \up_scratch_reg[31]_0\(24) => i_up_axi_n_51,
      \up_scratch_reg[31]_0\(23) => i_up_axi_n_52,
      \up_scratch_reg[31]_0\(22) => i_up_axi_n_53,
      \up_scratch_reg[31]_0\(21) => i_up_axi_n_54,
      \up_scratch_reg[31]_0\(20) => i_up_axi_n_55,
      \up_scratch_reg[31]_0\(19) => i_up_axi_n_56,
      \up_scratch_reg[31]_0\(18) => i_up_axi_n_57,
      \up_scratch_reg[31]_0\(17) => i_up_axi_n_58,
      \up_scratch_reg[31]_0\(16) => i_up_axi_n_59,
      \up_scratch_reg[31]_0\(15) => i_up_axi_n_60,
      \up_scratch_reg[31]_0\(14) => i_up_axi_n_61,
      \up_scratch_reg[31]_0\(13) => i_up_axi_n_62,
      \up_scratch_reg[31]_0\(12) => i_up_axi_n_63,
      \up_scratch_reg[31]_0\(11) => i_up_axi_n_64,
      \up_scratch_reg[31]_0\(10) => i_up_axi_n_65,
      \up_scratch_reg[31]_0\(9) => i_up_axi_n_66,
      \up_scratch_reg[31]_0\(8) => i_up_axi_n_67,
      \up_scratch_reg[31]_0\(7) => i_up_axi_n_68,
      \up_scratch_reg[31]_0\(6) => i_up_axi_n_69,
      \up_scratch_reg[31]_0\(5) => i_up_axi_n_70,
      \up_scratch_reg[31]_0\(4) => i_up_axi_n_71,
      \up_scratch_reg[31]_0\(3) => i_up_axi_n_72,
      \up_scratch_reg[31]_0\(2) => i_up_axi_n_73,
      \up_scratch_reg[31]_0\(1) => i_up_axi_n_74,
      \up_scratch_reg[31]_0\(0) => i_up_axi_n_75,
      \up_scratch_reg[31]_1\(31 downto 0) => up_scratch(31 downto 0),
      up_sel_s => up_sel_s
    );
i_up_clkgen: entity work.TySOM_1_7Z030_adi_axi_clkgen_0_0_up_clkgen
     port map (
      D(31) => i_up_axi_n_44,
      D(30) => i_up_axi_n_45,
      D(29) => i_up_axi_n_46,
      D(28) => i_up_axi_n_47,
      D(27) => i_up_axi_n_48,
      D(26) => i_up_axi_n_49,
      D(25) => i_up_axi_n_50,
      D(24) => i_up_axi_n_51,
      D(23) => i_up_axi_n_52,
      D(22) => i_up_axi_n_53,
      D(21) => i_up_axi_n_54,
      D(20) => i_up_axi_n_55,
      D(19) => i_up_axi_n_56,
      D(18) => i_up_axi_n_57,
      D(17) => i_up_axi_n_58,
      D(16) => i_up_axi_n_59,
      D(15) => i_up_axi_n_60,
      D(14) => i_up_axi_n_61,
      D(13) => i_up_axi_n_62,
      D(12) => i_up_axi_n_63,
      D(11) => i_up_axi_n_64,
      D(10) => i_up_axi_n_65,
      D(9) => i_up_axi_n_66,
      D(8) => i_up_axi_n_67,
      D(7) => i_up_axi_n_68,
      D(6) => i_up_axi_n_69,
      D(5) => i_up_axi_n_70,
      D(4) => i_up_axi_n_71,
      D(3) => i_up_axi_n_72,
      D(2) => i_up_axi_n_73,
      D(1) => i_up_axi_n_74,
      D(0) => i_up_axi_n_75,
      DADDR(6 downto 0) => drp_addr_s(6 downto 0),
      DI(15 downto 0) => drp_wdata_s(15 downto 0),
      E(0) => up_drp_sel_t0,
      Q(21 downto 20) => up_rdata_s(31 downto 30),
      Q(19 downto 16) => up_rdata_s(28 downto 25),
      Q(15) => up_rdata_s(23),
      Q(14) => up_rdata_s(21),
      Q(13 downto 12) => up_rdata_s(19 downto 18),
      Q(11 downto 9) => up_rdata_s(16 downto 14),
      Q(8 downto 5) => up_rdata_s(12 downto 9),
      Q(4) => up_rdata_s(7),
      Q(3) => up_rdata_s(5),
      Q(2 downto 1) => up_rdata_s(3 downto 2),
      Q(0) => up_rdata_s(0),
      drp_clk => drp_clk,
      drp_locked => drp_locked,
      \drp_rdata_reg[15]\(15 downto 0) => drp_rdata(15 downto 0),
      drp_ready_int => \i_drp_cntrl/drp_ready_int\,
      drp_ready_reg(0) => i_mmcm_drp_n_4,
      drp_ready_s => drp_ready_s,
      drp_rst => drp_rst,
      drp_sel_s => drp_sel_s,
      drp_wr_s => drp_wr_s,
      mmcm_rst => mmcm_rst,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_rready => s_axi_rready,
      up_ack_s => up_ack_s,
      \up_addr_reg[3]\ => i_up_axi_n_42,
      \up_addr_reg[3]_0\ => i_up_axi_n_40,
      \up_addr_reg[4]\ => i_up_axi_n_41,
      \up_axi_rdata_reg[29]\(9) => p_1_in(29),
      \up_axi_rdata_reg[29]\(8) => p_1_in(24),
      \up_axi_rdata_reg[29]\(7) => p_1_in(22),
      \up_axi_rdata_reg[29]\(6) => p_1_in(20),
      \up_axi_rdata_reg[29]\(5) => p_1_in(17),
      \up_axi_rdata_reg[29]\(4) => p_1_in(13),
      \up_axi_rdata_reg[29]\(3) => p_1_in(8),
      \up_axi_rdata_reg[29]\(2) => p_1_in(6),
      \up_axi_rdata_reg[29]\(1) => p_1_in(4),
      \up_axi_rdata_reg[29]\(0) => p_1_in(1),
      up_axi_rvalid_reg => \^s_axi_rvalid\,
      up_drp_locked => up_drp_locked,
      up_drp_rwn => up_drp_rwn,
      up_drp_status => up_drp_status,
      up_drp_status_reg => i_up_clkgen_n_2,
      up_mmcm_resetn => up_mmcm_resetn,
      \up_rdata_reg[0]_0\ => i_up_clkgen_n_44,
      \up_rdata_reg[15]_0\(13 downto 0) => up_drp_rdata(15 downto 2),
      \up_rdata_reg[1]_0\ => i_up_clkgen_n_85,
      \up_rdata_reg[27]_0\(25 downto 0) => p_1_in_0(27 downto 2),
      \up_rdata_reg[31]_0\(31 downto 0) => up_scratch(31 downto 0),
      up_resetn => up_resetn,
      \up_scratch_reg[31]_0\(31) => i_up_axi_n_8,
      \up_scratch_reg[31]_0\(30) => i_up_axi_n_9,
      \up_scratch_reg[31]_0\(29) => i_up_axi_n_10,
      \up_scratch_reg[31]_0\(28) => i_up_axi_n_11,
      \up_scratch_reg[31]_0\(27) => i_up_axi_n_12,
      \up_scratch_reg[31]_0\(26) => i_up_axi_n_13,
      \up_scratch_reg[31]_0\(25) => i_up_axi_n_14,
      \up_scratch_reg[31]_0\(24) => i_up_axi_n_15,
      \up_scratch_reg[31]_0\(23) => i_up_axi_n_16,
      \up_scratch_reg[31]_0\(22) => i_up_axi_n_17,
      \up_scratch_reg[31]_0\(21) => i_up_axi_n_18,
      \up_scratch_reg[31]_0\(20) => i_up_axi_n_19,
      \up_scratch_reg[31]_0\(19) => i_up_axi_n_20,
      \up_scratch_reg[31]_0\(18) => i_up_axi_n_21,
      \up_scratch_reg[31]_0\(17) => i_up_axi_n_22,
      \up_scratch_reg[31]_0\(16) => i_up_axi_n_23,
      \up_scratch_reg[31]_0\(15) => i_up_axi_n_24,
      \up_scratch_reg[31]_0\(14) => i_up_axi_n_25,
      \up_scratch_reg[31]_0\(13) => i_up_axi_n_26,
      \up_scratch_reg[31]_0\(12) => i_up_axi_n_27,
      \up_scratch_reg[31]_0\(11) => i_up_axi_n_28,
      \up_scratch_reg[31]_0\(10) => i_up_axi_n_29,
      \up_scratch_reg[31]_0\(9) => i_up_axi_n_30,
      \up_scratch_reg[31]_0\(8) => i_up_axi_n_31,
      \up_scratch_reg[31]_0\(7) => i_up_axi_n_32,
      \up_scratch_reg[31]_0\(6) => i_up_axi_n_33,
      \up_scratch_reg[31]_0\(5) => i_up_axi_n_34,
      \up_scratch_reg[31]_0\(4) => i_up_axi_n_35,
      \up_scratch_reg[31]_0\(3) => i_up_axi_n_36,
      \up_scratch_reg[31]_0\(2) => i_up_axi_n_37,
      \up_scratch_reg[31]_0\(1) => i_up_axi_n_38,
      \up_scratch_reg[31]_0\(0) => i_up_axi_n_39,
      up_sel_s => up_sel_s,
      \up_wdata_reg[0]\ => i_up_axi_n_76,
      \up_wdata_reg[1]\ => i_up_axi_n_43,
      up_wr_reg(0) => up_scratch0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TySOM_1_7Z030_adi_axi_clkgen_0_0 is
  port (
    clk : in STD_LOGIC;
    clk_0 : out STD_LOGIC;
    clk_1 : out STD_LOGIC;
    drp_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TySOM_1_7Z030_adi_axi_clkgen_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TySOM_1_7Z030_adi_axi_clkgen_0_0 : entity is "TySOM_1_7Z030_adi_axi_clkgen_0_0,axi_clkgen,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of TySOM_1_7Z030_adi_axi_clkgen_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of TySOM_1_7Z030_adi_axi_clkgen_0_0 : entity is "axi_clkgen,Vivado 2017.1_AR69152";
end TySOM_1_7Z030_adi_axi_clkgen_0_0;

architecture STRUCTURE of TySOM_1_7Z030_adi_axi_clkgen_0_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.TySOM_1_7Z030_adi_axi_clkgen_0_0_axi_clkgen
     port map (
      clk => clk,
      clk_0 => clk_0,
      clk_1 => clk_1,
      drp_clk => drp_clk,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(13 downto 0) => s_axi_araddr(15 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(13 downto 0) => s_axi_awaddr(15 downto 2),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
