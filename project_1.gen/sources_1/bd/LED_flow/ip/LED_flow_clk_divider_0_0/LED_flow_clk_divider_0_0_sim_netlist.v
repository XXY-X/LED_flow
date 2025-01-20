// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec 19 21:30:59 2024
// Host        : LAPTOP-53JB5545 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/working_soft/Xlinx_Vivado/project/SUCCESS/project_1.gen/sources_1/bd/LED_flow/ip/LED_flow_clk_divider_0_0/LED_flow_clk_divider_0_0_sim_netlist.v
// Design      : LED_flow_clk_divider_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LED_flow_clk_divider_0_0,clk_divider,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "clk_divider,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module LED_flow_clk_divider_0_0
   (clk_in,
    rst_n,
    key_in,
    clk_out);
  input clk_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input key_in;
  output clk_out;

  wire clk_in;
  wire clk_out;
  wire key_in;
  wire rst_n;

  LED_flow_clk_divider_0_0_clk_divider inst
       (.clk_in(clk_in),
        .clk_out(clk_out),
        .key_in(key_in),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "clk_divider" *) 
module LED_flow_clk_divider_0_0_clk_divider
   (clk_out,
    key_in,
    clk_in,
    rst_n);
  output clk_out;
  input key_in;
  input clk_in;
  input rst_n;

  wire clk_in;
  wire clk_out;
  wire clk_out_i_1_n_0;
  wire clk_out_i_2_n_0;
  wire counter1_carry__0_n_0;
  wire counter1_carry__0_n_1;
  wire counter1_carry__0_n_2;
  wire counter1_carry__0_n_3;
  wire counter1_carry_i_1__0_n_0;
  wire counter1_carry_i_1__1_n_0;
  wire counter1_carry_i_1_n_0;
  wire counter1_carry_i_2__0_n_0;
  wire counter1_carry_i_2_n_0;
  wire counter1_carry_i_3__0_n_0;
  wire counter1_carry_i_3_n_0;
  wire counter1_carry_i_4__0_n_0;
  wire counter1_carry_i_4_n_0;
  wire counter1_carry_n_0;
  wire counter1_carry_n_1;
  wire counter1_carry_n_2;
  wire counter1_carry_n_3;
  wire [19:3]counter2;
  wire counter2_carry__0_i_1_n_0;
  wire counter2_carry__0_i_2_n_0;
  wire counter2_carry__0_i_3_n_0;
  wire counter2_carry__0_i_4_n_0;
  wire counter2_carry__0_n_0;
  wire counter2_carry__0_n_1;
  wire counter2_carry__0_n_2;
  wire counter2_carry__0_n_3;
  wire counter2_carry__1_i_1_n_0;
  wire counter2_carry__1_i_2_n_0;
  wire counter2_carry__1_i_3_n_0;
  wire counter2_carry__1_i_4_n_0;
  wire counter2_carry__1_n_0;
  wire counter2_carry__1_n_1;
  wire counter2_carry__1_n_2;
  wire counter2_carry__1_n_3;
  wire counter2_carry__2_i_1_n_0;
  wire counter2_carry__2_i_2_n_0;
  wire counter2_carry__2_i_3_n_0;
  wire counter2_carry__2_i_4_n_0;
  wire counter2_carry__2_n_0;
  wire counter2_carry__2_n_1;
  wire counter2_carry__2_n_2;
  wire counter2_carry__2_n_3;
  wire counter2_carry_i_1_n_0;
  wire counter2_carry_i_2_n_0;
  wire counter2_carry_i_3_n_0;
  wire counter2_carry_i_4_n_0;
  wire counter2_carry_n_0;
  wire counter2_carry_n_1;
  wire counter2_carry_n_2;
  wire counter2_carry_n_3;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[12]_i_4_n_0 ;
  wire \counter[12]_i_5_n_0 ;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[16]_i_5_n_0 ;
  wire \counter[20]_i_2_n_0 ;
  wire \counter[20]_i_3_n_0 ;
  wire \counter[20]_i_4_n_0 ;
  wire \counter[20]_i_5_n_0 ;
  wire \counter[24]_i_2_n_0 ;
  wire \counter[24]_i_3_n_0 ;
  wire \counter[24]_i_4_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [26:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [23:0]divisor;
  wire \divisor[0]_i_1_n_0 ;
  wire \divisor[10]_i_1_n_0 ;
  wire \divisor[11]_i_1_n_0 ;
  wire \divisor[14]_i_1_n_0 ;
  wire \divisor[16]_i_1_n_0 ;
  wire \divisor[23]_i_1_n_0 ;
  wire \divisor[3]_i_1_n_0 ;
  wire \divisor[4]_i_1_n_0 ;
  wire \divisor[5]_i_1_n_0 ;
  wire \divisor[6]_i_1_n_0 ;
  wire \divisor[7]_i_1_n_0 ;
  wire [1:0]divisor_select;
  wire \divisor_select[0]_i_1_n_0 ;
  wire \divisor_select[1]_i_1_n_0 ;
  wire key_debounced;
  wire key_in;
  wire load;
  wire rst_n;
  wire [3:0]NLW_counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_counter1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_counter1_carry_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_counter1_carry_i_5_O_UNCONNECTED;
  wire [3:2]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[24]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    clk_out_i_1
       (.I0(load),
        .I1(clk_out),
        .O(clk_out_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clk_out_i_2
       (.I0(rst_n),
        .O(clk_out_i_2_n_0));
  FDCE clk_out_reg
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(clk_out_i_1_n_0),
        .Q(clk_out));
  CARRY4 counter1_carry
       (.CI(1'b0),
        .CO({counter1_carry_n_0,counter1_carry_n_1,counter1_carry_n_2,counter1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry_O_UNCONNECTED[3:0]),
        .S({counter1_carry_i_1_n_0,counter1_carry_i_2_n_0,counter1_carry_i_3_n_0,counter1_carry_i_4_n_0}));
  CARRY4 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CO({counter1_carry__0_n_0,counter1_carry__0_n_1,counter1_carry__0_n_2,counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({counter1_carry_i_1__0_n_0,counter1_carry_i_2__0_n_0,counter1_carry_i_3__0_n_0,counter1_carry_i_4__0_n_0}));
  CARRY4 counter1_carry__1
       (.CI(counter1_carry__0_n_0),
        .CO({NLW_counter1_carry__1_CO_UNCONNECTED[3:1],load}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,counter1_carry_i_1__1_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter1_carry_i_1
       (.I0(counter_reg[9]),
        .I1(counter2[9]),
        .I2(counter2[11]),
        .I3(counter_reg[11]),
        .I4(counter2[10]),
        .I5(counter_reg[10]),
        .O(counter1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter1_carry_i_1__0
       (.I0(counter_reg[21]),
        .I1(divisor[5]),
        .I2(divisor[23]),
        .I3(counter_reg[23]),
        .I4(divisor[9]),
        .I5(counter_reg[22]),
        .O(counter1_carry_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h09000009)) 
    counter1_carry_i_1__1
       (.I0(counter_reg[24]),
        .I1(divisor[10]),
        .I2(counter_reg[26]),
        .I3(divisor[7]),
        .I4(counter_reg[25]),
        .O(counter1_carry_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter1_carry_i_2
       (.I0(counter_reg[6]),
        .I1(counter2[6]),
        .I2(counter2[8]),
        .I3(counter_reg[8]),
        .I4(counter2[7]),
        .I5(counter_reg[7]),
        .O(counter1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter1_carry_i_2__0
       (.I0(counter_reg[18]),
        .I1(counter2[18]),
        .I2(divisor[10]),
        .I3(counter_reg[20]),
        .I4(counter2[19]),
        .I5(counter_reg[19]),
        .O(counter1_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter1_carry_i_3
       (.I0(counter_reg[3]),
        .I1(counter2[3]),
        .I2(counter2[5]),
        .I3(counter_reg[5]),
        .I4(counter2[4]),
        .I5(counter_reg[4]),
        .O(counter1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter1_carry_i_3__0
       (.I0(counter_reg[15]),
        .I1(counter2[15]),
        .I2(counter2[17]),
        .I3(counter_reg[17]),
        .I4(counter2[16]),
        .I5(counter_reg[16]),
        .O(counter1_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h0840)) 
    counter1_carry_i_4
       (.I0(counter_reg[0]),
        .I1(counter_reg[2]),
        .I2(divisor[0]),
        .I3(counter_reg[1]),
        .O(counter1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter1_carry_i_4__0
       (.I0(counter_reg[12]),
        .I1(counter2[12]),
        .I2(counter2[14]),
        .I3(counter_reg[14]),
        .I4(counter2[13]),
        .I5(counter_reg[13]),
        .O(counter1_carry_i_4__0_n_0));
  CARRY4 counter1_carry_i_5
       (.CI(counter2_carry__2_n_0),
        .CO({NLW_counter1_carry_i_5_CO_UNCONNECTED[3:1],counter2[19]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry_i_5_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 counter2_carry
       (.CI(1'b0),
        .CO({counter2_carry_n_0,counter2_carry_n_1,counter2_carry_n_2,counter2_carry_n_3}),
        .CYINIT(divisor[0]),
        .DI(divisor[6:3]),
        .O(counter2[6:3]),
        .S({counter2_carry_i_1_n_0,counter2_carry_i_2_n_0,counter2_carry_i_3_n_0,counter2_carry_i_4_n_0}));
  CARRY4 counter2_carry__0
       (.CI(counter2_carry_n_0),
        .CO({counter2_carry__0_n_0,counter2_carry__0_n_1,counter2_carry__0_n_2,counter2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({divisor[10:9],divisor[3],divisor[7]}),
        .O(counter2[10:7]),
        .S({counter2_carry__0_i_1_n_0,counter2_carry__0_i_2_n_0,counter2_carry__0_i_3_n_0,counter2_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__0_i_1
       (.I0(divisor[10]),
        .O(counter2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__0_i_2
       (.I0(divisor[9]),
        .O(counter2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__0_i_3
       (.I0(divisor[3]),
        .O(counter2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__0_i_4
       (.I0(divisor[7]),
        .O(counter2_carry__0_i_4_n_0));
  CARRY4 counter2_carry__1
       (.CI(counter2_carry__0_n_0),
        .CO({counter2_carry__1_n_0,counter2_carry__1_n_1,counter2_carry__1_n_2,counter2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({divisor[14],divisor[5],divisor[6],divisor[11]}),
        .O(counter2[14:11]),
        .S({counter2_carry__1_i_1_n_0,counter2_carry__1_i_2_n_0,counter2_carry__1_i_3_n_0,counter2_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__1_i_1
       (.I0(divisor[14]),
        .O(counter2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__1_i_2
       (.I0(divisor[5]),
        .O(counter2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__1_i_3
       (.I0(divisor[6]),
        .O(counter2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__1_i_4
       (.I0(divisor[11]),
        .O(counter2_carry__1_i_4_n_0));
  CARRY4 counter2_carry__2
       (.CI(counter2_carry__1_n_0),
        .CO({counter2_carry__2_n_0,counter2_carry__2_n_1,counter2_carry__2_n_2,counter2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({divisor[14],divisor[3],divisor[16],divisor[10]}),
        .O(counter2[18:15]),
        .S({counter2_carry__2_i_1_n_0,counter2_carry__2_i_2_n_0,counter2_carry__2_i_3_n_0,counter2_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__2_i_1
       (.I0(divisor[14]),
        .O(counter2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__2_i_2
       (.I0(divisor[3]),
        .O(counter2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__2_i_3
       (.I0(divisor[16]),
        .O(counter2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry__2_i_4
       (.I0(divisor[10]),
        .O(counter2_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry_i_1
       (.I0(divisor[6]),
        .O(counter2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry_i_2
       (.I0(divisor[5]),
        .O(counter2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry_i_3
       (.I0(divisor[4]),
        .O(counter2_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter2_carry_i_4
       (.I0(divisor[3]),
        .O(counter2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_2 
       (.I0(counter_reg[0]),
        .I1(load),
        .O(\counter[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_3 
       (.I0(counter_reg[3]),
        .I1(load),
        .O(\counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_4 
       (.I0(counter_reg[2]),
        .I1(load),
        .O(\counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_5 
       (.I0(counter_reg[1]),
        .I1(load),
        .O(\counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_6 
       (.I0(counter_reg[0]),
        .I1(load),
        .O(\counter[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_2 
       (.I0(counter_reg[15]),
        .I1(load),
        .O(\counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_3 
       (.I0(counter_reg[14]),
        .I1(load),
        .O(\counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_4 
       (.I0(counter_reg[13]),
        .I1(load),
        .O(\counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_5 
       (.I0(counter_reg[12]),
        .I1(load),
        .O(\counter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_2 
       (.I0(counter_reg[19]),
        .I1(load),
        .O(\counter[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_3 
       (.I0(counter_reg[18]),
        .I1(load),
        .O(\counter[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_4 
       (.I0(counter_reg[17]),
        .I1(load),
        .O(\counter[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_5 
       (.I0(counter_reg[16]),
        .I1(load),
        .O(\counter[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_2 
       (.I0(counter_reg[23]),
        .I1(load),
        .O(\counter[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_3 
       (.I0(counter_reg[22]),
        .I1(load),
        .O(\counter[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_4 
       (.I0(counter_reg[21]),
        .I1(load),
        .O(\counter[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_5 
       (.I0(counter_reg[20]),
        .I1(load),
        .O(\counter[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_2 
       (.I0(counter_reg[26]),
        .I1(load),
        .O(\counter[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_3 
       (.I0(counter_reg[25]),
        .I1(load),
        .O(\counter[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_4 
       (.I0(counter_reg[24]),
        .I1(load),
        .O(\counter[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_2 
       (.I0(counter_reg[7]),
        .I1(load),
        .O(\counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_3 
       (.I0(counter_reg[6]),
        .I1(load),
        .O(\counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_4 
       (.I0(counter_reg[5]),
        .I1(load),
        .O(\counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_5 
       (.I0(counter_reg[4]),
        .I1(load),
        .O(\counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_2 
       (.I0(counter_reg[11]),
        .I1(load),
        .O(\counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_3 
       (.I0(counter_reg[10]),
        .I1(load),
        .O(\counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_4 
       (.I0(counter_reg[9]),
        .I1(load),
        .O(\counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_5 
       (.I0(counter_reg[8]),
        .I1(load),
        .O(\counter[8]_i_5_n_0 ));
  FDCE \counter_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter[0]_i_2_n_0 }),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({\counter[0]_i_3_n_0 ,\counter[0]_i_4_n_0 ,\counter[0]_i_5_n_0 ,\counter[0]_i_6_n_0 }));
  FDCE \counter_reg[10] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]));
  FDCE \counter_reg[11] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]));
  FDCE \counter_reg[12] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 ,\counter[12]_i_4_n_0 ,\counter[12]_i_5_n_0 }));
  FDCE \counter_reg[13] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]));
  FDCE \counter_reg[14] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]));
  FDCE \counter_reg[15] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]));
  FDCE \counter_reg[16] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S({\counter[16]_i_2_n_0 ,\counter[16]_i_3_n_0 ,\counter[16]_i_4_n_0 ,\counter[16]_i_5_n_0 }));
  FDCE \counter_reg[17] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]));
  FDCE \counter_reg[18] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]));
  FDCE \counter_reg[19] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]));
  FDCE \counter_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]));
  FDCE \counter_reg[20] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S({\counter[20]_i_2_n_0 ,\counter[20]_i_3_n_0 ,\counter[20]_i_4_n_0 ,\counter[20]_i_5_n_0 }));
  FDCE \counter_reg[21] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]));
  FDCE \counter_reg[22] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]));
  FDCE \counter_reg[23] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]));
  FDCE \counter_reg[24] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [3:2],\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[24]_i_1_O_UNCONNECTED [3],\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S({1'b0,\counter[24]_i_2_n_0 ,\counter[24]_i_3_n_0 ,\counter[24]_i_4_n_0 }));
  FDCE \counter_reg[25] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]));
  FDCE \counter_reg[26] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[26]));
  FDCE \counter_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]));
  FDCE \counter_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]));
  FDCE \counter_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4_n_0 ,\counter[4]_i_5_n_0 }));
  FDCE \counter_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]));
  FDCE \counter_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]));
  FDCE \counter_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]));
  FDCE \counter_reg[8] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  FDCE \counter_reg[9] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \divisor[0]_i_1 
       (.I0(divisor_select[1]),
        .I1(divisor_select[0]),
        .O(\divisor[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \divisor[10]_i_1 
       (.I0(divisor_select[1]),
        .I1(divisor_select[0]),
        .O(\divisor[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \divisor[11]_i_1 
       (.I0(divisor_select[1]),
        .I1(divisor_select[0]),
        .O(\divisor[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \divisor[14]_i_1 
       (.I0(divisor_select[0]),
        .I1(divisor_select[1]),
        .O(\divisor[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \divisor[16]_i_1 
       (.I0(divisor_select[0]),
        .O(\divisor[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \divisor[23]_i_1 
       (.I0(divisor_select[0]),
        .I1(divisor_select[1]),
        .O(\divisor[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \divisor[3]_i_1 
       (.I0(divisor_select[0]),
        .I1(divisor_select[1]),
        .O(\divisor[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \divisor[4]_i_1 
       (.I0(divisor_select[0]),
        .I1(divisor_select[1]),
        .O(\divisor[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \divisor[5]_i_1 
       (.I0(divisor_select[1]),
        .I1(divisor_select[0]),
        .O(\divisor[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \divisor[6]_i_1 
       (.I0(divisor_select[0]),
        .I1(divisor_select[1]),
        .O(\divisor[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \divisor[7]_i_1 
       (.I0(divisor_select[1]),
        .I1(divisor_select[0]),
        .O(\divisor[7]_i_1_n_0 ));
  FDCE \divisor_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\divisor[0]_i_1_n_0 ),
        .Q(divisor[0]));
  FDPE \divisor_reg[10] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\divisor[10]_i_1_n_0 ),
        .PRE(clk_out_i_2_n_0),
        .Q(divisor[10]));
  FDPE \divisor_reg[11] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\divisor[11]_i_1_n_0 ),
        .PRE(clk_out_i_2_n_0),
        .Q(divisor[11]));
  FDCE \divisor_reg[14] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\divisor[14]_i_1_n_0 ),
        .Q(divisor[14]));
  FDPE \divisor_reg[16] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\divisor[16]_i_1_n_0 ),
        .PRE(clk_out_i_2_n_0),
        .Q(divisor[16]));
  FDPE \divisor_reg[23] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\divisor[23]_i_1_n_0 ),
        .PRE(clk_out_i_2_n_0),
        .Q(divisor[23]));
  FDCE \divisor_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\divisor[3]_i_1_n_0 ),
        .Q(divisor[3]));
  FDCE \divisor_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\divisor[4]_i_1_n_0 ),
        .Q(divisor[4]));
  FDPE \divisor_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\divisor[5]_i_1_n_0 ),
        .PRE(clk_out_i_2_n_0),
        .Q(divisor[5]));
  FDCE \divisor_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\divisor[6]_i_1_n_0 ),
        .Q(divisor[6]));
  FDPE \divisor_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\divisor[7]_i_1_n_0 ),
        .PRE(clk_out_i_2_n_0),
        .Q(divisor[7]));
  FDCE \divisor_reg[9] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(divisor_select[0]),
        .Q(divisor[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \divisor_select[0]_i_1 
       (.I0(key_debounced),
        .I1(key_in),
        .I2(divisor_select[0]),
        .O(\divisor_select[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \divisor_select[1]_i_1 
       (.I0(divisor_select[0]),
        .I1(key_in),
        .I2(key_debounced),
        .I3(divisor_select[1]),
        .O(\divisor_select[1]_i_1_n_0 ));
  FDCE \divisor_select_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\divisor_select[0]_i_1_n_0 ),
        .Q(divisor_select[0]));
  FDCE \divisor_select_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(\divisor_select[1]_i_1_n_0 ),
        .Q(divisor_select[1]));
  FDCE key_debounced_reg
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(key_in),
        .Q(key_debounced));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
