//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Tue Dec 17 21:01:43 2024
//Host        : LAPTOP-53JB5545 running 64-bit major release  (build 9200)
//Command     : generate_target LED_flow.bd
//Design      : LED_flow
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "LED_flow,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=LED_flow,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "LED_flow.hwdef" *) 
module LED_flow
   (KEY,
    LED,
    SW,
    clk,
    rst_n);
  input KEY;
  output [17:0]LED;
  input [17:0]SW;
  input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_n;

  wire KEY_1;
  wire [17:0]SW_1;
  wire clk_1;
  wire clk_divider_0_clk_out;
  wire [17:0]led_pwm_controller_0_led_out;
  wire pwm_generator_0_pwm_out_100;
  wire pwm_generator_0_pwm_out_60;
  wire pwm_generator_0_pwm_out_70;
  wire pwm_generator_0_pwm_out_80;
  wire pwm_generator_0_pwm_out_90;
  wire rst_n_1;

  assign KEY_1 = KEY;
  assign LED[17:0] = led_pwm_controller_0_led_out;
  assign SW_1 = SW[17:0];
  assign clk_1 = clk;
  assign rst_n_1 = rst_n;
  LED_flow_clk_divider_0_0 clk_divider_0
       (.clk_in(clk_1),
        .clk_out(clk_divider_0_clk_out),
        .rst_n(rst_n_1));
  LED_flow_led_pwm_controller_0_0 led_pwm_controller_0
       (.clk(clk_1),
        .clk_1hz(clk_divider_0_clk_out),
        .dir_change(KEY_1),
        .led_out(led_pwm_controller_0_led_out),
        .pwm_in_100(pwm_generator_0_pwm_out_100),
        .pwm_in_60(pwm_generator_0_pwm_out_60),
        .pwm_in_70(pwm_generator_0_pwm_out_70),
        .pwm_in_80(pwm_generator_0_pwm_out_80),
        .pwm_in_90(pwm_generator_0_pwm_out_90),
        .range_ctrl(SW_1),
        .rst_n(rst_n_1));
  LED_flow_pwm_generator_0_0 pwm_generator_0
       (.clk(clk_1),
        .pwm_out_100(pwm_generator_0_pwm_out_100),
        .pwm_out_60(pwm_generator_0_pwm_out_60),
        .pwm_out_70(pwm_generator_0_pwm_out_70),
        .pwm_out_80(pwm_generator_0_pwm_out_80),
        .pwm_out_90(pwm_generator_0_pwm_out_90),
        .rst_n(rst_n_1));
endmodule
