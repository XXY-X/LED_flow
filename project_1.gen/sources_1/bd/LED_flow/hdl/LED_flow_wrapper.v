//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Fri Dec 20 16:31:36 2024
//Host        : LAPTOP-53JB5545 running 64-bit major release  (build 9200)
//Command     : generate_target LED_flow_wrapper.bd
//Design      : LED_flow_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LED_flow_wrapper
   (Freq_Change,
    KEY,
    LED,
    SW,
    clk,
    rst_n);
  input Freq_Change;
  input KEY;
  output [17:0]LED;
  input [17:0]SW;
  input clk;
  input rst_n;

  wire Freq_Change;
  wire KEY;
  wire [17:0]LED;
  wire [17:0]SW;
  wire clk;
  wire rst_n;

  LED_flow LED_flow_i
       (.Freq_Change(Freq_Change),
        .KEY(KEY),
        .LED(LED),
        .SW(SW),
        .clk(clk),
        .rst_n(rst_n));
endmodule
