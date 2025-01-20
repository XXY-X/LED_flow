// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Dec 17 16:27:32 2024
// Host        : LAPTOP-53JB5545 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/working_soft/Xlinx_Vivado/project/project_1/project_1.gen/sources_1/bd/LED_flow/ip/LED_flow_clk_divider_0_0/LED_flow_clk_divider_0_0_sim_netlist.v
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
    clk_out);
  input clk_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  output clk_out;

  wire clk_in;
  wire clk_out;
  wire rst_n;

  LED_flow_clk_divider_0_0_clk_divider inst
       (.clk_in(clk_in),
        .clk_out(clk_out),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "clk_divider" *) 
module LED_flow_clk_divider_0_0_clk_divider
   (clk_out,
    clk_in,
    rst_n);
  output clk_out;
  input clk_in;
  input rst_n;

  wire clk_in;
  wire clk_out;
  wire clk_out_i_1_n_0;
  wire clk_out_i_2_n_0;
  wire clk_out_i_3_n_0;
  wire clk_out_i_4_n_0;
  wire clk_out_i_5_n_0;
  wire clk_out_i_6_n_0;
  wire clk_out_i_7_n_0;
  wire clk_out_i_8_n_0;
  wire clk_out_i_9_n_0;
  wire [26:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__4_n_0;
  wire counter0_carry__4_n_1;
  wire counter0_carry__4_n_2;
  wire counter0_carry__4_n_3;
  wire counter0_carry__5_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire [26:0]counter_0;
  wire [26:1]data0;
  wire rst_n;
  wire [3:1]NLW_counter0_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_counter0_carry__5_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    clk_out_i_1
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(clk_out),
        .O(clk_out_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clk_out_i_2
       (.I0(rst_n),
        .O(clk_out_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    clk_out_i_3
       (.I0(counter[26]),
        .I1(counter[25]),
        .I2(counter[0]),
        .I3(clk_out_i_6_n_0),
        .I4(clk_out_i_7_n_0),
        .O(clk_out_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    clk_out_i_4
       (.I0(counter[7]),
        .I1(counter[8]),
        .I2(counter[6]),
        .I3(counter[5]),
        .I4(clk_out_i_8_n_0),
        .O(clk_out_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    clk_out_i_5
       (.I0(counter[15]),
        .I1(counter[16]),
        .I2(counter[13]),
        .I3(counter[14]),
        .I4(clk_out_i_9_n_0),
        .O(clk_out_i_5_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    clk_out_i_6
       (.I0(counter[22]),
        .I1(counter[21]),
        .I2(counter[24]),
        .I3(counter[23]),
        .O(clk_out_i_6_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    clk_out_i_7
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[4]),
        .I3(counter[3]),
        .O(clk_out_i_7_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    clk_out_i_8
       (.I0(counter[10]),
        .I1(counter[9]),
        .I2(counter[12]),
        .I3(counter[11]),
        .O(clk_out_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    clk_out_i_9
       (.I0(counter[17]),
        .I1(counter[18]),
        .I2(counter[20]),
        .I3(counter[19]),
        .O(clk_out_i_9_n_0));
  FDCE clk_out_reg
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(clk_out_i_1_n_0),
        .Q(clk_out));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(counter[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,counter0_carry__4_n_1,counter0_carry__4_n_2,counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(counter[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO({NLW_counter0_carry__5_CO_UNCONNECTED[3:1],counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__5_O_UNCONNECTED[3:2],data0[26:25]}),
        .S({1'b0,1'b0,counter[26:25]}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(counter_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[10]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[10]),
        .O(counter_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[11]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[11]),
        .O(counter_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[12]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[12]),
        .O(counter_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[13]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[13]),
        .O(counter_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[14]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[14]),
        .O(counter_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[15]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[15]),
        .O(counter_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[16]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[16]),
        .O(counter_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[17]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[17]),
        .O(counter_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[18]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[18]),
        .O(counter_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[19]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[19]),
        .O(counter_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[1]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[1]),
        .O(counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[20]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[20]),
        .O(counter_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[21]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[21]),
        .O(counter_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[22]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[22]),
        .O(counter_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[23]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[23]),
        .O(counter_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[24]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[24]),
        .O(counter_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[25]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[25]),
        .O(counter_0[25]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[26]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[26]),
        .O(counter_0[26]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[2]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[2]),
        .O(counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[3]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[3]),
        .O(counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[4]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[4]),
        .O(counter_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[5]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[5]),
        .O(counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[6]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[6]),
        .O(counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[7]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[7]),
        .O(counter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[8]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[8]),
        .O(counter_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \counter[9]_i_1 
       (.I0(clk_out_i_3_n_0),
        .I1(clk_out_i_4_n_0),
        .I2(clk_out_i_5_n_0),
        .I3(data0[9]),
        .O(counter_0[9]));
  FDCE \counter_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[0]),
        .Q(counter[0]));
  FDCE \counter_reg[10] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[10]),
        .Q(counter[10]));
  FDCE \counter_reg[11] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[11]),
        .Q(counter[11]));
  FDCE \counter_reg[12] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[12]),
        .Q(counter[12]));
  FDCE \counter_reg[13] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[13]),
        .Q(counter[13]));
  FDCE \counter_reg[14] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[14]),
        .Q(counter[14]));
  FDCE \counter_reg[15] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[15]),
        .Q(counter[15]));
  FDCE \counter_reg[16] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[16]),
        .Q(counter[16]));
  FDCE \counter_reg[17] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[17]),
        .Q(counter[17]));
  FDCE \counter_reg[18] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[18]),
        .Q(counter[18]));
  FDCE \counter_reg[19] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[19]),
        .Q(counter[19]));
  FDCE \counter_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[1]),
        .Q(counter[1]));
  FDCE \counter_reg[20] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[20]),
        .Q(counter[20]));
  FDCE \counter_reg[21] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[21]),
        .Q(counter[21]));
  FDCE \counter_reg[22] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[22]),
        .Q(counter[22]));
  FDCE \counter_reg[23] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[23]),
        .Q(counter[23]));
  FDCE \counter_reg[24] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[24]),
        .Q(counter[24]));
  FDCE \counter_reg[25] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[25]),
        .Q(counter[25]));
  FDCE \counter_reg[26] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[26]),
        .Q(counter[26]));
  FDCE \counter_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[2]),
        .Q(counter[2]));
  FDCE \counter_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[3]),
        .Q(counter[3]));
  FDCE \counter_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[4]),
        .Q(counter[4]));
  FDCE \counter_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[5]),
        .Q(counter[5]));
  FDCE \counter_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[6]),
        .Q(counter[6]));
  FDCE \counter_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[7]),
        .Q(counter[7]));
  FDCE \counter_reg[8] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[8]),
        .Q(counter[8]));
  FDCE \counter_reg[9] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(clk_out_i_2_n_0),
        .D(counter_0[9]),
        .Q(counter[9]));
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
