// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Dec 20 15:51:32 2024
// Host        : LAPTOP-53JB5545 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LED_flow_led_pwm_controller_0_0_stub.v
// Design      : LED_flow_led_pwm_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "led_pwm_controller,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, clk_1hz, rst_n, dir_change, pwm_in_100, 
  pwm_in_90, pwm_in_80, pwm_in_70, pwm_in_60, range_ctrl, led_out)
/* synthesis syn_black_box black_box_pad_pin="clk,clk_1hz,rst_n,dir_change,pwm_in_100,pwm_in_90,pwm_in_80,pwm_in_70,pwm_in_60,range_ctrl[17:0],led_out[17:0]" */;
  input clk;
  input clk_1hz;
  input rst_n;
  input dir_change;
  input pwm_in_100;
  input pwm_in_90;
  input pwm_in_80;
  input pwm_in_70;
  input pwm_in_60;
  input [17:0]range_ctrl;
  output [17:0]led_out;
endmodule
