// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec 19 20:09:57 2024
// Host        : LAPTOP-53JB5545 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/working_soft/Xlinx_Vivado/project/SUCCESS/project_1.gen/sources_1/bd/LED_flow/ip/LED_flow_pwm_generator_0_0/LED_flow_pwm_generator_0_0_stub.v
// Design      : LED_flow_pwm_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pwm_generator,Vivado 2022.2" *)
module LED_flow_pwm_generator_0_0(clk, rst_n, pwm_out_100, pwm_out_90, pwm_out_80, 
  pwm_out_70, pwm_out_60)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,pwm_out_100,pwm_out_90,pwm_out_80,pwm_out_70,pwm_out_60" */;
  input clk;
  input rst_n;
  output pwm_out_100;
  output pwm_out_90;
  output pwm_out_80;
  output pwm_out_70;
  output pwm_out_60;
endmodule
