# HDMI SYNCS
set_property  -dict {PACKAGE_PIN  H1   IOSTANDARD LVCMOS18} [get_ports hdmi_clk]
set_property  -dict {PACKAGE_PIN  N7   IOSTANDARD LVCMOS18} [get_ports hdmi_vsync]
set_property  -dict {PACKAGE_PIN  F5   IOSTANDARD LVCMOS18} [get_ports hdmi_hsync]
set_property  -dict {PACKAGE_PIN  F4   IOSTANDARD LVCMOS18} [get_ports hdmi_de]

# HDMI PIXEL DATA
set_property PACKAGE_PIN K3 [get_ports {hdmi_data[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {hdmi_data[0]}]
set_property PACKAGE_PIN L4 [get_ports {hdmi_data[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {hdmi_data[1]}]
set_property PACKAGE_PIN M3 [get_ports {hdmi_data[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {hdmi_data[2]}]
set_property PACKAGE_PIN E1 [get_ports {hdmi_data[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {hdmi_data[3]}]
set_property PACKAGE_PIN F2 [get_ports {hdmi_data[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {hdmi_data[4]}]
set_property PACKAGE_PIN F7 [get_ports {hdmi_data[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {hdmi_data[5]}]
set_property PACKAGE_PIN F1 [get_ports {hdmi_data[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {hdmi_data[6]}]
set_property PACKAGE_PIN G7 [get_ports {hdmi_data[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {hdmi_data[7]}]
set_property PACKAGE_PIN H2 [get_ports {hdmi_data[8]}]
set_property IOSTANDARD LVCMOS18 [get_ports {hdmi_data[8]}]
set_property PACKAGE_PIN J1 [get_ports {hdmi_data[9]}]
set_property IOSTANDARD LVCMOS18 [get_ports {hdmi_data[9]}]
set_property PACKAGE_PIN K2 [get_ports {hdmi_data[10]}]
set_property IOSTANDARD LVCMOS18 [get_ports {hdmi_data[10]}]
set_property PACKAGE_PIN K1 [get_ports {hdmi_data[11]}]
set_property IOSTANDARD LVCMOS18 [get_ports {hdmi_data[11]}]
set_property PACKAGE_PIN L2 [get_ports {hdmi_data[12]}]
set_property IOSTANDARD LVCMOS18 [get_ports {hdmi_data[12]}]
set_property PACKAGE_PIN L1 [get_ports {hdmi_data[13]}]
set_property IOSTANDARD LVCMOS18 [get_ports {hdmi_data[13]}]
set_property PACKAGE_PIN G5 [get_ports {hdmi_data[14]}]
set_property IOSTANDARD LVCMOS18 [get_ports {hdmi_data[14]}]
set_property PACKAGE_PIN M2 [get_ports {hdmi_data[15]}]
set_property IOSTANDARD LVCMOS18 [get_ports {hdmi_data[15]}]

# HDMI I2C BUS
set_property  -dict {PACKAGE_PIN  P5   IOSTANDARD LVCMOS18 PULLTYPE PULLUP} [get_ports iic_main_scl_io]
set_property  -dict {PACKAGE_PIN  P1   IOSTANDARD LVCMOS18 PULLTYPE PULLUP} [get_ports iic_main_sda_io]

# CAMERA LED AND ENABLE
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports {gpio_tri_o[0]}]
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33}  [get_ports {gpio_tri_o[1]}]

# CAMERA MIPI CSI-2
set_property PACKAGE_PIN B2 [get_ports pad_data_n[0]]
set_property PACKAGE_PIN A4 [get_ports pad_data_n[1]]
set_property PACKAGE_PIN A1 [get_ports pad_clk_n]
# SE lines
set_property PACKAGE_PIN C3 [get_ports cam_dn0_se]
set_property IOSTANDARD LVCMOS18 [get_ports cam_dn0_se]
set_property PACKAGE_PIN C1 [get_ports cam_dp0_se]
set_property IOSTANDARD LVCMOS18 [get_ports cam_dp0_se]
set_property PACKAGE_PIN D3 [get_ports cam_dn1_se]
set_property IOSTANDARD LVCMOS18 [get_ports cam_dn1_se]
set_property PACKAGE_PIN E3 [get_ports cam_dp1_se]
set_property IOSTANDARD LVCMOS18 [get_ports cam_dp1_se]
set_property PACKAGE_PIN B3 [get_ports cam_cn_se]
set_property IOSTANDARD LVCMOS18 [get_ports cam_cn_se]
set_property PACKAGE_PIN E2 [get_ports cam_cp_se]
set_property IOSTANDARD LVCMOS18 [get_ports cam_cp_se]

# MIPI Clock
create_clock -period 4.000 -name csi_clk [get_ports pad_clk_p]
set_input_jitter csi_clk 0.150
set_clock_groups -asynchronous -group csi_clk