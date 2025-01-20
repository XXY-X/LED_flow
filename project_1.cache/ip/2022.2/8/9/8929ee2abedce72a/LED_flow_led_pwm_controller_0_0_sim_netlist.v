// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec 19 20:26:30 2024
// Host        : LAPTOP-53JB5545 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LED_flow_led_pwm_controller_0_0_sim_netlist.v
// Design      : LED_flow_led_pwm_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LED_flow_led_pwm_controller_0_0,led_pwm_controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "led_pwm_controller,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    clk_1hz,
    rst_n,
    dir_change,
    pwm_in_100,
    pwm_in_90,
    pwm_in_80,
    pwm_in_70,
    pwm_in_60,
    range_ctrl,
    led_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input clk_1hz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input dir_change;
  input pwm_in_100;
  input pwm_in_90;
  input pwm_in_80;
  input pwm_in_70;
  input pwm_in_60;
  input [17:0]range_ctrl;
  output [17:0]led_out;

  wire clk;
  wire clk_1hz;
  wire dir_change;
  wire [17:0]led_out;
  wire pwm_in_100;
  wire pwm_in_60;
  wire pwm_in_70;
  wire pwm_in_80;
  wire pwm_in_90;
  wire [17:0]range_ctrl;
  wire rst_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_pwm_controller inst
       (.clk(clk),
        .clk_1hz(clk_1hz),
        .dir_change(dir_change),
        .led_out(led_out),
        .pwm_in_100(pwm_in_100),
        .pwm_in_60(pwm_in_60),
        .pwm_in_70(pwm_in_70),
        .pwm_in_80(pwm_in_80),
        .pwm_in_90(pwm_in_90),
        .range_ctrl(range_ctrl),
        .rst_n(rst_n));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_pwm_controller
   (led_out,
    range_ctrl,
    dir_change,
    clk,
    clk_1hz,
    pwm_in_100,
    pwm_in_60,
    pwm_in_80,
    pwm_in_90,
    pwm_in_70,
    rst_n);
  output [17:0]led_out;
  input [17:0]range_ctrl;
  input dir_change;
  input clk;
  input clk_1hz;
  input pwm_in_100;
  input pwm_in_60;
  input pwm_in_80;
  input pwm_in_90;
  input pwm_in_70;
  input rst_n;

  wire [3:0]COUNT_MAX;
  wire \COUNT_MAX[0]_i_1_n_0 ;
  wire \COUNT_MAX[1]_i_1_n_0 ;
  wire \COUNT_MAX[2]_i_1_n_0 ;
  wire \COUNT_MAX[3]_i_1_n_0 ;
  wire \COUNT_MAX[3]_i_2_n_0 ;
  wire [3:0]COUNT_MAX_TEMP;
  wire \COUNT_MAX_TEMP[0]_i_1_n_0 ;
  wire \COUNT_MAX_TEMP[0]_i_2_n_0 ;
  wire \COUNT_MAX_TEMP[1]_i_1_n_0 ;
  wire \COUNT_MAX_TEMP[1]_i_2_n_0 ;
  wire \COUNT_MAX_TEMP[1]_i_3_n_0 ;
  wire \COUNT_MAX_TEMP[2]_i_1_n_0 ;
  wire \COUNT_MAX_TEMP[3]_i_1_n_0 ;
  wire \COUNT_MAX_TEMP[3]_i_2_n_0 ;
  wire [3:0]COUNT_MIN;
  wire \COUNT_MIN[0]_i_1_n_0 ;
  wire \COUNT_MIN[1]_i_1_n_0 ;
  wire \COUNT_MIN[2]_i_1_n_0 ;
  wire \COUNT_MIN[3]_i_1_n_0 ;
  wire [3:0]COUNT_MIN_TEMP;
  wire \COUNT_MIN_TEMP[0]_i_1_n_0 ;
  wire \COUNT_MIN_TEMP[0]_i_2_n_0 ;
  wire \COUNT_MIN_TEMP[0]_i_3_n_0 ;
  wire \COUNT_MIN_TEMP[0]_i_4_n_0 ;
  wire \COUNT_MIN_TEMP[0]_i_5_n_0 ;
  wire \COUNT_MIN_TEMP[1]_i_1_n_0 ;
  wire \COUNT_MIN_TEMP[1]_i_2_n_0 ;
  wire \COUNT_MIN_TEMP[1]_i_3_n_0 ;
  wire \COUNT_MIN_TEMP[2]_i_1_n_0 ;
  wire \COUNT_MIN_TEMP[3]_i_1_n_0 ;
  wire \COUNT_MIN_TEMP[3]_i_2_n_0 ;
  wire \COUNT_MIN_TEMP[3]_i_3_n_0 ;
  wire \COUNT_MIN_TEMP[3]_i_4_n_0 ;
  wire clk;
  wire clk_1hz;
  wire dir_change;
  wire dir_change_debounced;
  wire direction05_out;
  wire direction1__0;
  wire direction2;
  wire direction_i_1_n_0;
  wire direction_i_4_n_0;
  wire direction_i_5_n_0;
  wire direction_i_6_n_0;
  wire direction_i_7_n_0;
  wire direction_reg_n_0;
  wire [4:0]last_led_pos;
  wire [17:0]led_out;
  wire \led_out[0]_i_1_n_0 ;
  wire \led_out[0]_i_2_n_0 ;
  wire \led_out[10]_i_1_n_0 ;
  wire \led_out[10]_i_3_n_0 ;
  wire \led_out[10]_i_4_n_0 ;
  wire \led_out[11]_i_1_n_0 ;
  wire \led_out[11]_i_3_n_0 ;
  wire \led_out[11]_i_4_n_0 ;
  wire \led_out[12]_i_1_n_0 ;
  wire \led_out[12]_i_3_n_0 ;
  wire \led_out[12]_i_4_n_0 ;
  wire \led_out[13]_i_1_n_0 ;
  wire \led_out[13]_i_2_n_0 ;
  wire \led_out[13]_i_4_n_0 ;
  wire \led_out[13]_i_5_n_0 ;
  wire \led_out[14]_i_1_n_0 ;
  wire \led_out[14]_i_2_n_0 ;
  wire \led_out[14]_i_3_n_0 ;
  wire \led_out[14]_i_4_n_0 ;
  wire \led_out[15]_i_1_n_0 ;
  wire \led_out[15]_i_2_n_0 ;
  wire \led_out[15]_i_3_n_0 ;
  wire \led_out[15]_i_4_n_0 ;
  wire \led_out[16]_i_1_n_0 ;
  wire \led_out[16]_i_2_n_0 ;
  wire \led_out[16]_i_3_n_0 ;
  wire \led_out[17]_i_1_n_0 ;
  wire \led_out[17]_i_2_n_0 ;
  wire \led_out[17]_i_3_n_0 ;
  wire \led_out[1]_i_1_n_0 ;
  wire \led_out[2]_i_1_n_0 ;
  wire \led_out[3]_i_1_n_0 ;
  wire \led_out[4]_i_1_n_0 ;
  wire \led_out[5]_i_1_n_0 ;
  wire \led_out[6]_i_1_n_0 ;
  wire \led_out[7]_i_1_n_0 ;
  wire \led_out[8]_i_1_n_0 ;
  wire \led_out[8]_i_2_n_0 ;
  wire \led_out[9]_i_1_n_0 ;
  wire \led_out[9]_i_2_n_0 ;
  wire \led_out[9]_i_3_n_0 ;
  wire \led_out_reg[10]_i_2_n_0 ;
  wire \led_out_reg[11]_i_2_n_0 ;
  wire \led_out_reg[12]_i_2_n_0 ;
  wire \led_out_reg[13]_i_3_n_0 ;
  wire led_pos1;
  wire led_pos10_in;
  wire \led_pos[0]_i_1_n_0 ;
  wire \led_pos[1]_i_1_n_0 ;
  wire \led_pos[1]_i_2_n_0 ;
  wire \led_pos[1]_i_3_n_0 ;
  wire \led_pos[2]_i_1_n_0 ;
  wire \led_pos[2]_i_2_n_0 ;
  wire \led_pos[2]_i_3_n_0 ;
  wire \led_pos[2]_i_4_n_0 ;
  wire \led_pos[2]_i_5_n_0 ;
  wire \led_pos[2]_i_6_n_0 ;
  wire \led_pos[2]_i_7_n_0 ;
  wire \led_pos[3]_i_1_n_0 ;
  wire \led_pos[3]_i_2_n_0 ;
  wire \led_pos[3]_i_3_n_0 ;
  wire \led_pos[3]_i_4_n_0 ;
  wire \led_pos[3]_i_5_n_0 ;
  wire \led_pos[4]_i_1_n_0 ;
  wire \led_pos[4]_i_2_n_0 ;
  wire \led_pos[4]_i_3_n_0 ;
  wire \led_pos[4]_i_4_n_0 ;
  wire \led_pos[4]_i_5_n_0 ;
  wire \led_pos[4]_i_6_n_0 ;
  wire \led_pos[4]_i_7_n_0 ;
  wire \led_pos[4]_i_8_n_0 ;
  wire \led_pos[4]_i_9_n_0 ;
  wire \led_pos_reg_n_0_[0] ;
  wire \led_pos_reg_n_0_[1] ;
  wire \led_pos_reg_n_0_[2] ;
  wire \led_pos_reg_n_0_[3] ;
  wire p_1_in;
  wire pwm_in_100;
  wire pwm_in_60;
  wire pwm_in_70;
  wire pwm_in_80;
  wire pwm_in_90;
  wire [17:0]range_ctrl;
  wire rst_n;

  LUT4 #(
    .INIT(16'hFF4D)) 
    \COUNT_MAX[0]_i_1 
       (.I0(\COUNT_MAX[3]_i_2_n_0 ),
        .I1(COUNT_MIN_TEMP[3]),
        .I2(COUNT_MAX_TEMP[3]),
        .I3(COUNT_MAX_TEMP[0]),
        .O(\COUNT_MAX[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB200)) 
    \COUNT_MAX[1]_i_1 
       (.I0(\COUNT_MAX[3]_i_2_n_0 ),
        .I1(COUNT_MIN_TEMP[3]),
        .I2(COUNT_MAX_TEMP[3]),
        .I3(COUNT_MAX_TEMP[1]),
        .O(\COUNT_MAX[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFF4D)) 
    \COUNT_MAX[2]_i_1 
       (.I0(\COUNT_MAX[3]_i_2_n_0 ),
        .I1(COUNT_MIN_TEMP[3]),
        .I2(COUNT_MAX_TEMP[3]),
        .I3(COUNT_MAX_TEMP[2]),
        .O(\COUNT_MAX[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \COUNT_MAX[3]_i_1 
       (.I0(\COUNT_MAX[3]_i_2_n_0 ),
        .I1(COUNT_MIN_TEMP[3]),
        .I2(COUNT_MAX_TEMP[3]),
        .O(\COUNT_MAX[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F02FFFF00002F02)) 
    \COUNT_MAX[3]_i_2 
       (.I0(COUNT_MAX_TEMP[0]),
        .I1(COUNT_MIN_TEMP[0]),
        .I2(COUNT_MIN_TEMP[1]),
        .I3(COUNT_MAX_TEMP[1]),
        .I4(COUNT_MIN_TEMP[2]),
        .I5(COUNT_MAX_TEMP[2]),
        .O(\COUNT_MAX[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \COUNT_MAX_TEMP[0]_i_1 
       (.I0(range_ctrl[17]),
        .I1(range_ctrl[16]),
        .I2(\COUNT_MAX_TEMP[0]_i_2_n_0 ),
        .O(\COUNT_MAX_TEMP[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBABABABBBABB)) 
    \COUNT_MAX_TEMP[0]_i_2 
       (.I0(range_ctrl[15]),
        .I1(range_ctrl[14]),
        .I2(range_ctrl[13]),
        .I3(range_ctrl[12]),
        .I4(range_ctrl[11]),
        .I5(range_ctrl[10]),
        .O(\COUNT_MAX_TEMP[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1111111011101110)) 
    \COUNT_MAX_TEMP[1]_i_1 
       (.I0(range_ctrl[16]),
        .I1(range_ctrl[17]),
        .I2(range_ctrl[15]),
        .I3(range_ctrl[14]),
        .I4(\COUNT_MAX_TEMP[1]_i_2_n_0 ),
        .I5(\COUNT_MAX_TEMP[1]_i_3_n_0 ),
        .O(\COUNT_MAX_TEMP[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \COUNT_MAX_TEMP[1]_i_2 
       (.I0(range_ctrl[13]),
        .I1(range_ctrl[12]),
        .O(\COUNT_MAX_TEMP[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \COUNT_MAX_TEMP[1]_i_3 
       (.I0(range_ctrl[10]),
        .I1(range_ctrl[11]),
        .O(\COUNT_MAX_TEMP[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0001)) 
    \COUNT_MAX_TEMP[2]_i_1 
       (.I0(range_ctrl[15]),
        .I1(range_ctrl[14]),
        .I2(range_ctrl[13]),
        .I3(range_ctrl[12]),
        .I4(range_ctrl[16]),
        .I5(range_ctrl[17]),
        .O(\COUNT_MAX_TEMP[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF5557)) 
    \COUNT_MAX_TEMP[3]_i_1 
       (.I0(\COUNT_MAX_TEMP[3]_i_2_n_0 ),
        .I1(range_ctrl[9]),
        .I2(range_ctrl[11]),
        .I3(range_ctrl[10]),
        .I4(range_ctrl[17]),
        .I5(range_ctrl[16]),
        .O(\COUNT_MAX_TEMP[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \COUNT_MAX_TEMP[3]_i_2 
       (.I0(range_ctrl[12]),
        .I1(range_ctrl[13]),
        .I2(range_ctrl[14]),
        .I3(range_ctrl[15]),
        .O(\COUNT_MAX_TEMP[3]_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_MAX_TEMP_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\COUNT_MAX_TEMP[0]_i_1_n_0 ),
        .PRE(\led_out[17]_i_2_n_0 ),
        .Q(COUNT_MAX_TEMP[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_MAX_TEMP_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\COUNT_MAX_TEMP[1]_i_1_n_0 ),
        .Q(COUNT_MAX_TEMP[1]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_MAX_TEMP_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\COUNT_MAX_TEMP[2]_i_1_n_0 ),
        .PRE(\led_out[17]_i_2_n_0 ),
        .Q(COUNT_MAX_TEMP[2]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_MAX_TEMP_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\COUNT_MAX_TEMP[3]_i_1_n_0 ),
        .PRE(\led_out[17]_i_2_n_0 ),
        .Q(COUNT_MAX_TEMP[3]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_MAX_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\COUNT_MAX[0]_i_1_n_0 ),
        .PRE(\led_out[17]_i_2_n_0 ),
        .Q(COUNT_MAX[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_MAX_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\COUNT_MAX[1]_i_1_n_0 ),
        .Q(COUNT_MAX[1]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_MAX_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\COUNT_MAX[2]_i_1_n_0 ),
        .PRE(\led_out[17]_i_2_n_0 ),
        .Q(COUNT_MAX[2]));
  FDPE #(
    .INIT(1'b1)) 
    \COUNT_MAX_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\COUNT_MAX[3]_i_1_n_0 ),
        .PRE(\led_out[17]_i_2_n_0 ),
        .Q(COUNT_MAX[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hB200)) 
    \COUNT_MIN[0]_i_1 
       (.I0(\COUNT_MAX[3]_i_2_n_0 ),
        .I1(COUNT_MIN_TEMP[3]),
        .I2(COUNT_MAX_TEMP[3]),
        .I3(COUNT_MIN_TEMP[0]),
        .O(\COUNT_MIN[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hB200)) 
    \COUNT_MIN[1]_i_1 
       (.I0(\COUNT_MAX[3]_i_2_n_0 ),
        .I1(COUNT_MIN_TEMP[3]),
        .I2(COUNT_MAX_TEMP[3]),
        .I3(COUNT_MIN_TEMP[1]),
        .O(\COUNT_MIN[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hB200)) 
    \COUNT_MIN[2]_i_1 
       (.I0(\COUNT_MAX[3]_i_2_n_0 ),
        .I1(COUNT_MIN_TEMP[3]),
        .I2(COUNT_MAX_TEMP[3]),
        .I3(COUNT_MIN_TEMP[2]),
        .O(\COUNT_MIN[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \COUNT_MIN[3]_i_1 
       (.I0(\COUNT_MAX[3]_i_2_n_0 ),
        .I1(COUNT_MIN_TEMP[3]),
        .I2(COUNT_MAX_TEMP[3]),
        .O(\COUNT_MIN[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF0B)) 
    \COUNT_MIN_TEMP[0]_i_1 
       (.I0(\COUNT_MIN_TEMP[0]_i_2_n_0 ),
        .I1(\COUNT_MIN_TEMP[0]_i_3_n_0 ),
        .I2(\COUNT_MIN_TEMP[0]_i_4_n_0 ),
        .I3(\COUNT_MIN_TEMP[0]_i_5_n_0 ),
        .I4(range_ctrl[0]),
        .O(\COUNT_MIN_TEMP[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00F2)) 
    \COUNT_MIN_TEMP[0]_i_2 
       (.I0(range_ctrl[13]),
        .I1(range_ctrl[12]),
        .I2(range_ctrl[11]),
        .I3(range_ctrl[10]),
        .O(\COUNT_MIN_TEMP[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \COUNT_MIN_TEMP[0]_i_3 
       (.I0(range_ctrl[9]),
        .I1(range_ctrl[8]),
        .I2(range_ctrl[7]),
        .O(\COUNT_MIN_TEMP[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF4)) 
    \COUNT_MIN_TEMP[0]_i_4 
       (.I0(range_ctrl[7]),
        .I1(range_ctrl[8]),
        .I2(range_ctrl[2]),
        .I3(range_ctrl[4]),
        .I4(range_ctrl[6]),
        .O(\COUNT_MIN_TEMP[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \COUNT_MIN_TEMP[0]_i_5 
       (.I0(range_ctrl[1]),
        .I1(range_ctrl[2]),
        .I2(range_ctrl[3]),
        .I3(range_ctrl[4]),
        .I4(range_ctrl[5]),
        .O(\COUNT_MIN_TEMP[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEEEEF)) 
    \COUNT_MIN_TEMP[1]_i_1 
       (.I0(range_ctrl[3]),
        .I1(range_ctrl[2]),
        .I2(range_ctrl[4]),
        .I3(range_ctrl[5]),
        .I4(\COUNT_MIN_TEMP[1]_i_2_n_0 ),
        .I5(\COUNT_MIN_TEMP[1]_i_3_n_0 ),
        .O(\COUNT_MIN_TEMP[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1110111011101111)) 
    \COUNT_MIN_TEMP[1]_i_2 
       (.I0(range_ctrl[7]),
        .I1(range_ctrl[6]),
        .I2(range_ctrl[9]),
        .I3(range_ctrl[8]),
        .I4(range_ctrl[10]),
        .I5(range_ctrl[11]),
        .O(\COUNT_MIN_TEMP[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \COUNT_MIN_TEMP[1]_i_3 
       (.I0(range_ctrl[1]),
        .I1(range_ctrl[0]),
        .O(\COUNT_MIN_TEMP[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \COUNT_MIN_TEMP[2]_i_1 
       (.I0(\COUNT_MIN_TEMP[3]_i_4_n_0 ),
        .I1(range_ctrl[12]),
        .I2(range_ctrl[13]),
        .I3(\COUNT_MIN_TEMP[3]_i_2_n_0 ),
        .I4(\COUNT_MIN_TEMP[3]_i_3_n_0 ),
        .O(\COUNT_MIN_TEMP[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFE000000)) 
    \COUNT_MIN_TEMP[3]_i_1 
       (.I0(range_ctrl[13]),
        .I1(range_ctrl[12]),
        .I2(\COUNT_MIN_TEMP[3]_i_2_n_0 ),
        .I3(\COUNT_MIN_TEMP[3]_i_3_n_0 ),
        .I4(\COUNT_MIN_TEMP[3]_i_4_n_0 ),
        .O(\COUNT_MIN_TEMP[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \COUNT_MIN_TEMP[3]_i_2 
       (.I0(range_ctrl[11]),
        .I1(range_ctrl[10]),
        .I2(range_ctrl[8]),
        .I3(range_ctrl[9]),
        .O(\COUNT_MIN_TEMP[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \COUNT_MIN_TEMP[3]_i_3 
       (.I0(range_ctrl[7]),
        .I1(range_ctrl[6]),
        .I2(range_ctrl[4]),
        .I3(range_ctrl[5]),
        .O(\COUNT_MIN_TEMP[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \COUNT_MIN_TEMP[3]_i_4 
       (.I0(range_ctrl[2]),
        .I1(range_ctrl[3]),
        .I2(range_ctrl[0]),
        .I3(range_ctrl[1]),
        .O(\COUNT_MIN_TEMP[3]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_MIN_TEMP_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\COUNT_MIN_TEMP[0]_i_1_n_0 ),
        .Q(COUNT_MIN_TEMP[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_MIN_TEMP_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\COUNT_MIN_TEMP[1]_i_1_n_0 ),
        .Q(COUNT_MIN_TEMP[1]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_MIN_TEMP_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\COUNT_MIN_TEMP[2]_i_1_n_0 ),
        .Q(COUNT_MIN_TEMP[2]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_MIN_TEMP_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\COUNT_MIN_TEMP[3]_i_1_n_0 ),
        .Q(COUNT_MIN_TEMP[3]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_MIN_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\COUNT_MIN[0]_i_1_n_0 ),
        .Q(COUNT_MIN[0]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_MIN_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\COUNT_MIN[1]_i_1_n_0 ),
        .Q(COUNT_MIN[1]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_MIN_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\COUNT_MIN[2]_i_1_n_0 ),
        .Q(COUNT_MIN[2]));
  FDCE #(
    .INIT(1'b0)) 
    \COUNT_MIN_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\COUNT_MIN[3]_i_1_n_0 ),
        .Q(COUNT_MIN[3]));
  FDCE dir_change_debounced_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(dir_change),
        .Q(dir_change_debounced));
  FDCE direction2_reg
       (.C(clk_1hz),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(direction_reg_n_0),
        .Q(direction2));
  LUT6 #(
    .INIT(64'hB0BBBBBBF444F444)) 
    direction_i_1
       (.I0(dir_change_debounced),
        .I1(dir_change),
        .I2(direction05_out),
        .I3(direction1__0),
        .I4(direction_i_4_n_0),
        .I5(direction_reg_n_0),
        .O(direction_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000082)) 
    direction_i_2
       (.I0(direction_i_5_n_0),
        .I1(COUNT_MAX[1]),
        .I2(\led_pos_reg_n_0_[1] ),
        .I3(p_1_in),
        .I4(direction_reg_n_0),
        .O(direction05_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    direction_i_3
       (.I0(direction_i_6_n_0),
        .I1(\led_pos_reg_n_0_[0] ),
        .I2(last_led_pos[0]),
        .I3(\led_pos_reg_n_0_[1] ),
        .I4(last_led_pos[1]),
        .O(direction1__0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00008200)) 
    direction_i_4
       (.I0(direction_i_7_n_0),
        .I1(COUNT_MIN[2]),
        .I2(\led_pos_reg_n_0_[2] ),
        .I3(direction_reg_n_0),
        .I4(p_1_in),
        .O(direction_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    direction_i_5
       (.I0(COUNT_MAX[0]),
        .I1(\led_pos_reg_n_0_[0] ),
        .I2(COUNT_MAX[3]),
        .I3(\led_pos_reg_n_0_[3] ),
        .I4(\led_pos_reg_n_0_[2] ),
        .I5(COUNT_MAX[2]),
        .O(direction_i_5_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    direction_i_6
       (.I0(\led_pos_reg_n_0_[3] ),
        .I1(last_led_pos[3]),
        .I2(p_1_in),
        .I3(last_led_pos[4]),
        .I4(last_led_pos[2]),
        .I5(\led_pos_reg_n_0_[2] ),
        .O(direction_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    direction_i_7
       (.I0(COUNT_MIN[1]),
        .I1(\led_pos_reg_n_0_[1] ),
        .I2(COUNT_MIN[3]),
        .I3(\led_pos_reg_n_0_[3] ),
        .I4(\led_pos_reg_n_0_[0] ),
        .I5(COUNT_MIN[0]),
        .O(direction_i_7_n_0));
  FDCE direction_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(direction_i_1_n_0),
        .Q(direction_reg_n_0));
  FDRE \last_led_pos_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_pos_reg_n_0_[0] ),
        .Q(last_led_pos[0]),
        .R(1'b0));
  FDRE \last_led_pos_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_pos_reg_n_0_[1] ),
        .Q(last_led_pos[1]),
        .R(1'b0));
  FDRE \last_led_pos_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_pos_reg_n_0_[2] ),
        .Q(last_led_pos[2]),
        .R(1'b0));
  FDRE \last_led_pos_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\led_pos_reg_n_0_[3] ),
        .Q(last_led_pos[3]),
        .R(1'b0));
  FDRE \last_led_pos_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(last_led_pos[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1011100000000000)) 
    \led_out[0]_i_1 
       (.I0(\led_pos_reg_n_0_[0] ),
        .I1(\led_pos_reg_n_0_[1] ),
        .I2(pwm_in_100),
        .I3(direction2),
        .I4(pwm_in_60),
        .I5(\led_out[0]_i_2_n_0 ),
        .O(\led_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \led_out[0]_i_2 
       (.I0(\led_pos_reg_n_0_[3] ),
        .I1(p_1_in),
        .I2(\led_pos_reg_n_0_[2] ),
        .O(\led_out[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888F888888888888)) 
    \led_out[10]_i_1 
       (.I0(\led_out_reg[10]_i_2_n_0 ),
        .I1(\led_out[15]_i_3_n_0 ),
        .I2(\led_pos_reg_n_0_[3] ),
        .I3(p_1_in),
        .I4(\led_pos_reg_n_0_[2] ),
        .I5(\led_out[14]_i_3_n_0 ),
        .O(\led_out[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \led_out[10]_i_3 
       (.I0(pwm_in_80),
        .I1(pwm_in_60),
        .I2(pwm_in_70),
        .I3(\led_pos_reg_n_0_[0] ),
        .I4(\led_pos_reg_n_0_[1] ),
        .O(\led_out[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \led_out[10]_i_4 
       (.I0(pwm_in_80),
        .I1(pwm_in_100),
        .I2(pwm_in_90),
        .I3(\led_pos_reg_n_0_[0] ),
        .I4(\led_pos_reg_n_0_[1] ),
        .O(\led_out[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h888F888888888888)) 
    \led_out[11]_i_1 
       (.I0(\led_out_reg[11]_i_2_n_0 ),
        .I1(\led_out[15]_i_3_n_0 ),
        .I2(\led_pos_reg_n_0_[3] ),
        .I3(p_1_in),
        .I4(\led_pos_reg_n_0_[2] ),
        .I5(\led_out[15]_i_2_n_0 ),
        .O(\led_out[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \led_out[11]_i_3 
       (.I0(pwm_in_90),
        .I1(pwm_in_80),
        .I2(\led_pos_reg_n_0_[1] ),
        .I3(pwm_in_60),
        .I4(\led_pos_reg_n_0_[0] ),
        .I5(pwm_in_70),
        .O(\led_out[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFC0CFAFAFC0C0A0A)) 
    \led_out[11]_i_4 
       (.I0(pwm_in_70),
        .I1(pwm_in_80),
        .I2(\led_pos_reg_n_0_[1] ),
        .I3(pwm_in_100),
        .I4(\led_pos_reg_n_0_[0] ),
        .I5(pwm_in_90),
        .O(\led_out[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \led_out[12]_i_1 
       (.I0(\led_out_reg[12]_i_2_n_0 ),
        .I1(\led_out[15]_i_3_n_0 ),
        .I2(pwm_in_100),
        .I3(direction2),
        .I4(pwm_in_60),
        .I5(\led_out[16]_i_3_n_0 ),
        .O(\led_out[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCAA00F0CCAA)) 
    \led_out[12]_i_3 
       (.I0(pwm_in_100),
        .I1(pwm_in_90),
        .I2(pwm_in_80),
        .I3(\led_pos_reg_n_0_[0] ),
        .I4(\led_pos_reg_n_0_[1] ),
        .I5(pwm_in_70),
        .O(\led_out[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CCAA00F0CCAA)) 
    \led_out[12]_i_4 
       (.I0(pwm_in_60),
        .I1(pwm_in_70),
        .I2(pwm_in_80),
        .I3(\led_pos_reg_n_0_[0] ),
        .I4(\led_pos_reg_n_0_[1] ),
        .I5(pwm_in_90),
        .O(\led_out[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \led_out[13]_i_1 
       (.I0(\led_out[17]_i_3_n_0 ),
        .I1(\led_out[13]_i_2_n_0 ),
        .I2(\led_out[16]_i_3_n_0 ),
        .I3(\led_out[14]_i_2_n_0 ),
        .I4(\led_out_reg[13]_i_3_n_0 ),
        .I5(\led_out[15]_i_3_n_0 ),
        .O(\led_out[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_out[13]_i_2 
       (.I0(pwm_in_100),
        .I1(direction2),
        .I2(pwm_in_60),
        .O(\led_out[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFAC00AC0)) 
    \led_out[13]_i_4 
       (.I0(pwm_in_90),
        .I1(pwm_in_100),
        .I2(\led_pos_reg_n_0_[0] ),
        .I3(\led_pos_reg_n_0_[1] ),
        .I4(pwm_in_80),
        .O(\led_out[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFAC00AC0)) 
    \led_out[13]_i_5 
       (.I0(pwm_in_70),
        .I1(pwm_in_60),
        .I2(\led_pos_reg_n_0_[0] ),
        .I3(\led_pos_reg_n_0_[1] ),
        .I4(pwm_in_80),
        .O(\led_out[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \led_out[14]_i_1 
       (.I0(\led_out[16]_i_3_n_0 ),
        .I1(pwm_in_80),
        .I2(\led_out[17]_i_3_n_0 ),
        .I3(\led_out[14]_i_2_n_0 ),
        .I4(\led_out[15]_i_3_n_0 ),
        .I5(\led_out[14]_i_3_n_0 ),
        .O(\led_out[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_out[14]_i_2 
       (.I0(pwm_in_90),
        .I1(direction2),
        .I2(pwm_in_70),
        .O(\led_out[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \led_out[14]_i_3 
       (.I0(\led_out[14]_i_4_n_0 ),
        .I1(direction2),
        .I2(pwm_in_60),
        .I3(\led_pos_reg_n_0_[0] ),
        .I4(pwm_in_70),
        .I5(\led_pos_reg_n_0_[1] ),
        .O(\led_out[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_out[14]_i_4 
       (.I0(pwm_in_90),
        .I1(\led_pos_reg_n_0_[0] ),
        .I2(pwm_in_100),
        .O(\led_out[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \led_out[15]_i_1 
       (.I0(\led_out[17]_i_3_n_0 ),
        .I1(pwm_in_80),
        .I2(\led_out[15]_i_2_n_0 ),
        .I3(\led_out[15]_i_3_n_0 ),
        .I4(\led_out[15]_i_4_n_0 ),
        .I5(\led_out[16]_i_3_n_0 ),
        .O(\led_out[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hE2000000)) 
    \led_out[15]_i_2 
       (.I0(pwm_in_100),
        .I1(direction2),
        .I2(pwm_in_60),
        .I3(\led_pos_reg_n_0_[1] ),
        .I4(\led_pos_reg_n_0_[0] ),
        .O(\led_out[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \led_out[15]_i_3 
       (.I0(\led_pos_reg_n_0_[3] ),
        .I1(p_1_in),
        .I2(\led_pos_reg_n_0_[2] ),
        .O(\led_out[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_out[15]_i_4 
       (.I0(pwm_in_70),
        .I1(direction2),
        .I2(pwm_in_90),
        .O(\led_out[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \led_out[16]_i_1 
       (.I0(pwm_in_70),
        .I1(direction2),
        .I2(pwm_in_90),
        .I3(\led_out[17]_i_3_n_0 ),
        .I4(\led_out[16]_i_2_n_0 ),
        .I5(\led_out[16]_i_3_n_0 ),
        .O(\led_out[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_out[16]_i_2 
       (.I0(pwm_in_60),
        .I1(direction2),
        .I2(pwm_in_100),
        .O(\led_out[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \led_out[16]_i_3 
       (.I0(\led_pos_reg_n_0_[1] ),
        .I1(\led_pos_reg_n_0_[0] ),
        .I2(\led_pos_reg_n_0_[2] ),
        .I3(p_1_in),
        .I4(\led_pos_reg_n_0_[3] ),
        .O(\led_out[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \led_out[17]_i_1 
       (.I0(\led_out[17]_i_3_n_0 ),
        .I1(pwm_in_100),
        .I2(direction2),
        .I3(pwm_in_60),
        .O(\led_out[17]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_out[17]_i_2 
       (.I0(rst_n),
        .O(\led_out[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \led_out[17]_i_3 
       (.I0(\led_pos_reg_n_0_[0] ),
        .I1(\led_pos_reg_n_0_[3] ),
        .I2(p_1_in),
        .I3(\led_pos_reg_n_0_[2] ),
        .I4(\led_pos_reg_n_0_[1] ),
        .O(\led_out[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \led_out[1]_i_1 
       (.I0(\led_pos_reg_n_0_[1] ),
        .I1(\led_out[9]_i_2_n_0 ),
        .I2(\led_pos_reg_n_0_[2] ),
        .I3(p_1_in),
        .I4(\led_pos_reg_n_0_[3] ),
        .O(\led_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \led_out[2]_i_1 
       (.I0(\led_pos_reg_n_0_[2] ),
        .I1(p_1_in),
        .I2(\led_pos_reg_n_0_[3] ),
        .I3(\led_out_reg[10]_i_2_n_0 ),
        .O(\led_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \led_out[3]_i_1 
       (.I0(\led_pos_reg_n_0_[2] ),
        .I1(p_1_in),
        .I2(\led_pos_reg_n_0_[3] ),
        .I3(\led_out_reg[11]_i_2_n_0 ),
        .O(\led_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h000A000C)) 
    \led_out[4]_i_1 
       (.I0(\led_out[8]_i_2_n_0 ),
        .I1(\led_out_reg[12]_i_2_n_0 ),
        .I2(\led_pos_reg_n_0_[3] ),
        .I3(p_1_in),
        .I4(\led_pos_reg_n_0_[2] ),
        .O(\led_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000022000000F0)) 
    \led_out[5]_i_1 
       (.I0(\led_out[9]_i_2_n_0 ),
        .I1(\led_pos_reg_n_0_[1] ),
        .I2(\led_out_reg[13]_i_3_n_0 ),
        .I3(\led_pos_reg_n_0_[3] ),
        .I4(p_1_in),
        .I5(\led_pos_reg_n_0_[2] ),
        .O(\led_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h02030200)) 
    \led_out[6]_i_1 
       (.I0(\led_out_reg[10]_i_2_n_0 ),
        .I1(\led_pos_reg_n_0_[3] ),
        .I2(p_1_in),
        .I3(\led_pos_reg_n_0_[2] ),
        .I4(\led_out[14]_i_3_n_0 ),
        .O(\led_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h02030200)) 
    \led_out[7]_i_1 
       (.I0(\led_out_reg[11]_i_2_n_0 ),
        .I1(\led_pos_reg_n_0_[3] ),
        .I2(p_1_in),
        .I3(\led_pos_reg_n_0_[2] ),
        .I4(\led_out[15]_i_2_n_0 ),
        .O(\led_out[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888F888888888)) 
    \led_out[8]_i_1 
       (.I0(\led_out[15]_i_3_n_0 ),
        .I1(\led_out[8]_i_2_n_0 ),
        .I2(\led_out_reg[12]_i_2_n_0 ),
        .I3(\led_pos_reg_n_0_[3] ),
        .I4(p_1_in),
        .I5(\led_pos_reg_n_0_[2] ),
        .O(\led_out[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h000000E2)) 
    \led_out[8]_i_2 
       (.I0(pwm_in_60),
        .I1(direction2),
        .I2(pwm_in_100),
        .I3(\led_pos_reg_n_0_[1] ),
        .I4(\led_pos_reg_n_0_[0] ),
        .O(\led_out[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF080808)) 
    \led_out[9]_i_1 
       (.I0(\led_out[15]_i_3_n_0 ),
        .I1(\led_out[9]_i_2_n_0 ),
        .I2(\led_pos_reg_n_0_[1] ),
        .I3(\led_out_reg[13]_i_3_n_0 ),
        .I4(\led_out[9]_i_3_n_0 ),
        .O(\led_out[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \led_out[9]_i_2 
       (.I0(pwm_in_100),
        .I1(pwm_in_90),
        .I2(direction2),
        .I3(pwm_in_60),
        .I4(\led_pos_reg_n_0_[0] ),
        .I5(pwm_in_70),
        .O(\led_out[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \led_out[9]_i_3 
       (.I0(\led_pos_reg_n_0_[3] ),
        .I1(p_1_in),
        .I2(\led_pos_reg_n_0_[2] ),
        .O(\led_out[9]_i_3_n_0 ));
  FDCE \led_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_out[0]_i_1_n_0 ),
        .Q(led_out[0]));
  FDCE \led_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_out[10]_i_1_n_0 ),
        .Q(led_out[10]));
  MUXF7 \led_out_reg[10]_i_2 
       (.I0(\led_out[10]_i_3_n_0 ),
        .I1(\led_out[10]_i_4_n_0 ),
        .O(\led_out_reg[10]_i_2_n_0 ),
        .S(direction2));
  FDCE \led_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_out[11]_i_1_n_0 ),
        .Q(led_out[11]));
  MUXF7 \led_out_reg[11]_i_2 
       (.I0(\led_out[11]_i_3_n_0 ),
        .I1(\led_out[11]_i_4_n_0 ),
        .O(\led_out_reg[11]_i_2_n_0 ),
        .S(direction2));
  FDCE \led_out_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_out[12]_i_1_n_0 ),
        .Q(led_out[12]));
  MUXF7 \led_out_reg[12]_i_2 
       (.I0(\led_out[12]_i_3_n_0 ),
        .I1(\led_out[12]_i_4_n_0 ),
        .O(\led_out_reg[12]_i_2_n_0 ),
        .S(direction2));
  FDCE \led_out_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_out[13]_i_1_n_0 ),
        .Q(led_out[13]));
  MUXF7 \led_out_reg[13]_i_3 
       (.I0(\led_out[13]_i_4_n_0 ),
        .I1(\led_out[13]_i_5_n_0 ),
        .O(\led_out_reg[13]_i_3_n_0 ),
        .S(direction2));
  FDCE \led_out_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_out[14]_i_1_n_0 ),
        .Q(led_out[14]));
  FDCE \led_out_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_out[15]_i_1_n_0 ),
        .Q(led_out[15]));
  FDCE \led_out_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_out[16]_i_1_n_0 ),
        .Q(led_out[16]));
  FDCE \led_out_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_out[17]_i_1_n_0 ),
        .Q(led_out[17]));
  FDCE \led_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_out[1]_i_1_n_0 ),
        .Q(led_out[1]));
  FDCE \led_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_out[2]_i_1_n_0 ),
        .Q(led_out[2]));
  FDCE \led_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_out[3]_i_1_n_0 ),
        .Q(led_out[3]));
  FDCE \led_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_out[4]_i_1_n_0 ),
        .Q(led_out[4]));
  FDCE \led_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_out[5]_i_1_n_0 ),
        .Q(led_out[5]));
  FDCE \led_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_out[6]_i_1_n_0 ),
        .Q(led_out[6]));
  FDCE \led_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_out[7]_i_1_n_0 ),
        .Q(led_out[7]));
  FDCE \led_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_out[8]_i_1_n_0 ),
        .Q(led_out[8]));
  FDCE \led_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_out[9]_i_1_n_0 ),
        .Q(led_out[9]));
  LUT6 #(
    .INIT(64'h404F4040EFEFEFE0)) 
    \led_pos[0]_i_1 
       (.I0(led_pos1),
        .I1(COUNT_MIN[0]),
        .I2(direction_reg_n_0),
        .I3(led_pos10_in),
        .I4(COUNT_MAX[0]),
        .I5(\led_pos_reg_n_0_[0] ),
        .O(\led_pos[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAFEAAFAFAFFEAFE)) 
    \led_pos[0]_i_2 
       (.I0(p_1_in),
        .I1(\led_pos[4]_i_8_n_0 ),
        .I2(\led_pos_reg_n_0_[3] ),
        .I3(COUNT_MIN[3]),
        .I4(\led_pos_reg_n_0_[2] ),
        .I5(COUNT_MIN[2]),
        .O(led_pos1));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h080E)) 
    \led_pos[0]_i_3 
       (.I0(COUNT_MAX[3]),
        .I1(\led_pos[4]_i_6_n_0 ),
        .I2(p_1_in),
        .I3(\led_pos_reg_n_0_[3] ),
        .O(led_pos10_in));
  LUT6 #(
    .INIT(64'hFFFCFEFEFEFEFFFC)) 
    \led_pos[1]_i_1 
       (.I0(\led_pos[4]_i_2_n_0 ),
        .I1(\led_pos[1]_i_2_n_0 ),
        .I2(\led_pos[1]_i_3_n_0 ),
        .I3(\led_pos[4]_i_5_n_0 ),
        .I4(\led_pos_reg_n_0_[1] ),
        .I5(\led_pos_reg_n_0_[0] ),
        .O(\led_pos[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5515550100000000)) 
    \led_pos[1]_i_2 
       (.I0(direction_reg_n_0),
        .I1(COUNT_MAX[3]),
        .I2(\led_pos[4]_i_6_n_0 ),
        .I3(p_1_in),
        .I4(\led_pos_reg_n_0_[3] ),
        .I5(COUNT_MAX[1]),
        .O(\led_pos[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1555000000000000)) 
    \led_pos[1]_i_3 
       (.I0(\led_pos[4]_i_9_n_0 ),
        .I1(\led_pos[4]_i_8_n_0 ),
        .I2(\led_pos[4]_i_7_n_0 ),
        .I3(\led_pos[3]_i_5_n_0 ),
        .I4(direction_reg_n_0),
        .I5(COUNT_MIN[1]),
        .O(\led_pos[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF82)) 
    \led_pos[2]_i_1 
       (.I0(\led_pos[4]_i_2_n_0 ),
        .I1(\led_pos[2]_i_2_n_0 ),
        .I2(\led_pos_reg_n_0_[2] ),
        .I3(\led_pos[2]_i_3_n_0 ),
        .I4(\led_pos[2]_i_4_n_0 ),
        .I5(\led_pos[2]_i_5_n_0 ),
        .O(\led_pos[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led_pos[2]_i_2 
       (.I0(\led_pos_reg_n_0_[0] ),
        .I1(\led_pos_reg_n_0_[1] ),
        .O(\led_pos[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5515550100000000)) 
    \led_pos[2]_i_3 
       (.I0(direction_reg_n_0),
        .I1(COUNT_MAX[3]),
        .I2(\led_pos[4]_i_6_n_0 ),
        .I3(p_1_in),
        .I4(\led_pos_reg_n_0_[3] ),
        .I5(COUNT_MAX[2]),
        .O(\led_pos[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1555000000000000)) 
    \led_pos[2]_i_4 
       (.I0(\led_pos[4]_i_9_n_0 ),
        .I1(\led_pos[4]_i_8_n_0 ),
        .I2(\led_pos[4]_i_7_n_0 ),
        .I3(\led_pos_reg_n_0_[2] ),
        .I4(direction_reg_n_0),
        .I5(COUNT_MIN[2]),
        .O(\led_pos[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF80000000000F800)) 
    \led_pos[2]_i_5 
       (.I0(\led_pos[2]_i_6_n_0 ),
        .I1(\led_pos[4]_i_8_n_0 ),
        .I2(\led_pos[4]_i_9_n_0 ),
        .I3(direction_reg_n_0),
        .I4(\led_pos[2]_i_7_n_0 ),
        .I5(\led_pos_reg_n_0_[2] ),
        .O(\led_pos[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \led_pos[2]_i_6 
       (.I0(\led_pos_reg_n_0_[3] ),
        .I1(COUNT_MIN[3]),
        .I2(\led_pos_reg_n_0_[2] ),
        .I3(COUNT_MIN[2]),
        .O(\led_pos[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \led_pos[2]_i_7 
       (.I0(\led_pos_reg_n_0_[0] ),
        .I1(\led_pos_reg_n_0_[1] ),
        .O(\led_pos[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFCFEFCFEFC)) 
    \led_pos[3]_i_1 
       (.I0(\led_pos[3]_i_2_n_0 ),
        .I1(\led_pos[3]_i_3_n_0 ),
        .I2(\led_pos[3]_i_4_n_0 ),
        .I3(\led_pos_reg_n_0_[3] ),
        .I4(\led_pos[4]_i_4_n_0 ),
        .I5(\led_pos[4]_i_5_n_0 ),
        .O(\led_pos[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400054)) 
    \led_pos[3]_i_2 
       (.I0(direction_reg_n_0),
        .I1(COUNT_MAX[3]),
        .I2(\led_pos[4]_i_6_n_0 ),
        .I3(p_1_in),
        .I4(\led_pos_reg_n_0_[3] ),
        .I5(\led_pos[4]_i_3_n_0 ),
        .O(\led_pos[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CC0ACCC8)) 
    \led_pos[3]_i_3 
       (.I0(\led_pos[4]_i_3_n_0 ),
        .I1(COUNT_MAX[3]),
        .I2(\led_pos_reg_n_0_[3] ),
        .I3(p_1_in),
        .I4(\led_pos[4]_i_6_n_0 ),
        .I5(direction_reg_n_0),
        .O(\led_pos[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1555000000000000)) 
    \led_pos[3]_i_4 
       (.I0(\led_pos[4]_i_9_n_0 ),
        .I1(\led_pos[4]_i_8_n_0 ),
        .I2(\led_pos_reg_n_0_[3] ),
        .I3(\led_pos[3]_i_5_n_0 ),
        .I4(direction_reg_n_0),
        .I5(COUNT_MIN[3]),
        .O(\led_pos[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \led_pos[3]_i_5 
       (.I0(COUNT_MIN[2]),
        .I1(\led_pos_reg_n_0_[2] ),
        .O(\led_pos[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF8AFF8F028A028A0)) 
    \led_pos[4]_i_1 
       (.I0(\led_pos[4]_i_2_n_0 ),
        .I1(\led_pos[4]_i_3_n_0 ),
        .I2(p_1_in),
        .I3(\led_pos_reg_n_0_[3] ),
        .I4(\led_pos[4]_i_4_n_0 ),
        .I5(\led_pos[4]_i_5_n_0 ),
        .O(\led_pos[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00003110)) 
    \led_pos[4]_i_2 
       (.I0(\led_pos_reg_n_0_[3] ),
        .I1(p_1_in),
        .I2(\led_pos[4]_i_6_n_0 ),
        .I3(COUNT_MAX[3]),
        .I4(direction_reg_n_0),
        .O(\led_pos[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \led_pos[4]_i_3 
       (.I0(\led_pos_reg_n_0_[2] ),
        .I1(\led_pos_reg_n_0_[1] ),
        .I2(\led_pos_reg_n_0_[0] ),
        .O(\led_pos[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \led_pos[4]_i_4 
       (.I0(\led_pos_reg_n_0_[1] ),
        .I1(\led_pos_reg_n_0_[0] ),
        .I2(\led_pos_reg_n_0_[2] ),
        .O(\led_pos[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF900000000000)) 
    \led_pos[4]_i_5 
       (.I0(COUNT_MIN[2]),
        .I1(\led_pos_reg_n_0_[2] ),
        .I2(\led_pos[4]_i_7_n_0 ),
        .I3(\led_pos[4]_i_8_n_0 ),
        .I4(\led_pos[4]_i_9_n_0 ),
        .I5(direction_reg_n_0),
        .O(\led_pos[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4D4D4444DD4D4D44)) 
    \led_pos[4]_i_6 
       (.I0(\led_pos_reg_n_0_[2] ),
        .I1(COUNT_MAX[2]),
        .I2(\led_pos_reg_n_0_[1] ),
        .I3(COUNT_MAX[0]),
        .I4(COUNT_MAX[1]),
        .I5(\led_pos_reg_n_0_[0] ),
        .O(\led_pos[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \led_pos[4]_i_7 
       (.I0(COUNT_MIN[3]),
        .I1(\led_pos_reg_n_0_[3] ),
        .O(\led_pos[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2F02)) 
    \led_pos[4]_i_8 
       (.I0(\led_pos_reg_n_0_[0] ),
        .I1(COUNT_MIN[0]),
        .I2(COUNT_MIN[1]),
        .I3(\led_pos_reg_n_0_[1] ),
        .O(\led_pos[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBABAFBBA)) 
    \led_pos[4]_i_9 
       (.I0(p_1_in),
        .I1(COUNT_MIN[3]),
        .I2(\led_pos_reg_n_0_[3] ),
        .I3(\led_pos_reg_n_0_[2] ),
        .I4(COUNT_MIN[2]),
        .O(\led_pos[4]_i_9_n_0 ));
  FDCE \led_pos_reg[0] 
       (.C(clk_1hz),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_pos[0]_i_1_n_0 ),
        .Q(\led_pos_reg_n_0_[0] ));
  FDCE \led_pos_reg[1] 
       (.C(clk_1hz),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_pos[1]_i_1_n_0 ),
        .Q(\led_pos_reg_n_0_[1] ));
  FDCE \led_pos_reg[2] 
       (.C(clk_1hz),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_pos[2]_i_1_n_0 ),
        .Q(\led_pos_reg_n_0_[2] ));
  FDCE \led_pos_reg[3] 
       (.C(clk_1hz),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_pos[3]_i_1_n_0 ),
        .Q(\led_pos_reg_n_0_[3] ));
  FDCE \led_pos_reg[4] 
       (.C(clk_1hz),
        .CE(1'b1),
        .CLR(\led_out[17]_i_2_n_0 ),
        .D(\led_pos[4]_i_1_n_0 ),
        .Q(p_1_in));
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
