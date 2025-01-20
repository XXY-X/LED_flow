// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Dec 17 16:27:28 2024
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
  output [9:0]led_out;

  wire clk;
  wire clk_1hz;
  wire dir_change;
  wire [9:0]led_out;
  wire pwm_in_100;
  wire pwm_in_60;
  wire pwm_in_70;
  wire pwm_in_80;
  wire pwm_in_90;
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
        .rst_n(rst_n));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_pwm_controller
   (led_out,
    clk_1hz,
    dir_change,
    clk,
    pwm_in_100,
    pwm_in_90,
    pwm_in_80,
    pwm_in_60,
    pwm_in_70,
    rst_n);
  output [9:0]led_out;
  input clk_1hz;
  input dir_change;
  input clk;
  input pwm_in_100;
  input pwm_in_90;
  input pwm_in_80;
  input pwm_in_60;
  input pwm_in_70;
  input rst_n;

  wire clk;
  wire clk_1hz;
  wire dir_change;
  wire dir_change_debounced;
  wire direction;
  wire direction_i_1_n_0;
  wire [9:0]led_out;
  wire \led_out[4]_i_2_n_0 ;
  wire \led_out[5]_i_2_n_0 ;
  wire \led_out[5]_i_3_n_0 ;
  wire \led_out[6]_i_2_n_0 ;
  wire \led_out[9]_i_2_n_0 ;
  wire \led_pos[0]_i_1_n_0 ;
  wire \led_pos[1]_i_1_n_0 ;
  wire \led_pos[2]_i_1_n_0 ;
  wire \led_pos_reg_n_0_[0] ;
  wire \led_pos_reg_n_0_[1] ;
  wire \led_pos_reg_n_0_[2] ;
  wire [9:0]p_0_in;
  wire pwm_in_100;
  wire pwm_in_60;
  wire pwm_in_70;
  wire pwm_in_80;
  wire pwm_in_90;
  wire rst_n;

  FDCE dir_change_debounced_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[9]_i_2_n_0 ),
        .D(dir_change),
        .Q(dir_change_debounced));
  LUT3 #(
    .INIT(8'hB4)) 
    direction_i_1
       (.I0(dir_change_debounced),
        .I1(dir_change),
        .I2(direction),
        .O(direction_i_1_n_0));
  FDCE direction_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[9]_i_2_n_0 ),
        .D(direction_i_1_n_0),
        .Q(direction));
  LUT4 #(
    .INIT(16'h0004)) 
    \led_out[0]_i_1 
       (.I0(\led_pos_reg_n_0_[1] ),
        .I1(pwm_in_60),
        .I2(\led_pos_reg_n_0_[0] ),
        .I3(\led_pos_reg_n_0_[2] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00004540)) 
    \led_out[1]_i_1 
       (.I0(\led_pos_reg_n_0_[1] ),
        .I1(pwm_in_60),
        .I2(\led_pos_reg_n_0_[0] ),
        .I3(pwm_in_70),
        .I4(\led_pos_reg_n_0_[2] ),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \led_out[2]_i_1 
       (.I0(pwm_in_80),
        .I1(\led_pos_reg_n_0_[0] ),
        .I2(pwm_in_70),
        .I3(\led_pos_reg_n_0_[1] ),
        .I4(pwm_in_60),
        .I5(\led_pos_reg_n_0_[2] ),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \led_out[3]_i_1 
       (.I0(\led_out[5]_i_3_n_0 ),
        .I1(\led_pos_reg_n_0_[1] ),
        .I2(pwm_in_70),
        .I3(\led_pos_reg_n_0_[0] ),
        .I4(pwm_in_60),
        .I5(\led_pos_reg_n_0_[2] ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \led_out[4]_i_1 
       (.I0(\led_pos_reg_n_0_[0] ),
        .I1(pwm_in_60),
        .I2(\led_pos_reg_n_0_[2] ),
        .I3(\led_out[4]_i_2_n_0 ),
        .I4(\led_pos_reg_n_0_[1] ),
        .I5(\led_out[6]_i_2_n_0 ),
        .O(p_0_in[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \led_out[4]_i_2 
       (.I0(pwm_in_70),
        .I1(\led_pos_reg_n_0_[0] ),
        .I2(pwm_in_80),
        .O(\led_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \led_out[5]_i_1 
       (.I0(\led_out[5]_i_2_n_0 ),
        .I1(\led_pos_reg_n_0_[2] ),
        .I2(\led_out[5]_i_3_n_0 ),
        .I3(\led_pos_reg_n_0_[1] ),
        .I4(pwm_in_100),
        .I5(\led_pos_reg_n_0_[0] ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \led_out[5]_i_2 
       (.I0(pwm_in_70),
        .I1(\led_pos_reg_n_0_[0] ),
        .I2(pwm_in_60),
        .I3(\led_pos_reg_n_0_[1] ),
        .O(\led_out[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_out[5]_i_3 
       (.I0(pwm_in_80),
        .I1(\led_pos_reg_n_0_[0] ),
        .I2(pwm_in_90),
        .O(\led_out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FF0000E200E200)) 
    \led_out[6]_i_1 
       (.I0(pwm_in_80),
        .I1(\led_pos_reg_n_0_[0] ),
        .I2(pwm_in_70),
        .I3(\led_pos_reg_n_0_[2] ),
        .I4(\led_out[6]_i_2_n_0 ),
        .I5(\led_pos_reg_n_0_[1] ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \led_out[6]_i_2 
       (.I0(pwm_in_90),
        .I1(\led_pos_reg_n_0_[0] ),
        .I2(pwm_in_100),
        .O(\led_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F000000C0A0C0A0)) 
    \led_out[7]_i_1 
       (.I0(pwm_in_90),
        .I1(pwm_in_80),
        .I2(\led_pos_reg_n_0_[2] ),
        .I3(\led_pos_reg_n_0_[0] ),
        .I4(pwm_in_100),
        .I5(\led_pos_reg_n_0_[1] ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h45400000)) 
    \led_out[8]_i_1 
       (.I0(\led_pos_reg_n_0_[1] ),
        .I1(pwm_in_90),
        .I2(\led_pos_reg_n_0_[0] ),
        .I3(pwm_in_100),
        .I4(\led_pos_reg_n_0_[2] ),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \led_out[9]_i_1 
       (.I0(\led_pos_reg_n_0_[1] ),
        .I1(pwm_in_100),
        .I2(\led_pos_reg_n_0_[0] ),
        .I3(\led_pos_reg_n_0_[2] ),
        .O(p_0_in[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \led_out[9]_i_2 
       (.I0(rst_n),
        .O(\led_out[9]_i_2_n_0 ));
  FDCE \led_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[9]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(led_out[0]));
  FDCE \led_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[9]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(led_out[1]));
  FDCE \led_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[9]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(led_out[2]));
  FDCE \led_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[9]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(led_out[3]));
  FDCE \led_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[9]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(led_out[4]));
  FDCE \led_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[9]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(led_out[5]));
  FDCE \led_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[9]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(led_out[6]));
  FDCE \led_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[9]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(led_out[7]));
  FDCE \led_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[9]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(led_out[8]));
  FDCE \led_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\led_out[9]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(led_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00BF)) 
    \led_pos[0]_i_1 
       (.I0(direction),
        .I1(\led_pos_reg_n_0_[1] ),
        .I2(\led_pos_reg_n_0_[2] ),
        .I3(\led_pos_reg_n_0_[0] ),
        .O(\led_pos[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8294)) 
    \led_pos[1]_i_1 
       (.I0(direction),
        .I1(\led_pos_reg_n_0_[0] ),
        .I2(\led_pos_reg_n_0_[1] ),
        .I3(\led_pos_reg_n_0_[2] ),
        .O(\led_pos[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9886)) 
    \led_pos[2]_i_1 
       (.I0(direction),
        .I1(\led_pos_reg_n_0_[2] ),
        .I2(\led_pos_reg_n_0_[0] ),
        .I3(\led_pos_reg_n_0_[1] ),
        .O(\led_pos[2]_i_1_n_0 ));
  FDCE \led_pos_reg[0] 
       (.C(clk_1hz),
        .CE(1'b1),
        .CLR(\led_out[9]_i_2_n_0 ),
        .D(\led_pos[0]_i_1_n_0 ),
        .Q(\led_pos_reg_n_0_[0] ));
  FDCE \led_pos_reg[1] 
       (.C(clk_1hz),
        .CE(1'b1),
        .CLR(\led_out[9]_i_2_n_0 ),
        .D(\led_pos[1]_i_1_n_0 ),
        .Q(\led_pos_reg_n_0_[1] ));
  FDCE \led_pos_reg[2] 
       (.C(clk_1hz),
        .CE(1'b1),
        .CLR(\led_out[9]_i_2_n_0 ),
        .D(\led_pos[2]_i_1_n_0 ),
        .Q(\led_pos_reg_n_0_[2] ));
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
