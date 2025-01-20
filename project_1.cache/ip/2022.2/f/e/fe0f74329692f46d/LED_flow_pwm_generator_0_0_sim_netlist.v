// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Dec 17 16:27:32 2024
// Host        : LAPTOP-53JB5545 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LED_flow_pwm_generator_0_0_sim_netlist.v
// Design      : LED_flow_pwm_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "LED_flow_pwm_generator_0_0,pwm_generator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pwm_generator,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    pwm_out_100,
    pwm_out_90,
    pwm_out_80,
    pwm_out_70,
    pwm_out_60);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  output pwm_out_100;
  output pwm_out_90;
  output pwm_out_80;
  output pwm_out_70;
  output pwm_out_60;

  wire clk;
  wire pwm_out_100;
  wire pwm_out_60;
  wire pwm_out_70;
  wire pwm_out_80;
  wire pwm_out_90;
  wire rst_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_generator inst
       (.clk(clk),
        .pwm_out_100(pwm_out_100),
        .pwm_out_60(pwm_out_60),
        .pwm_out_70(pwm_out_70),
        .pwm_out_80(pwm_out_80),
        .pwm_out_90(pwm_out_90),
        .rst_n(rst_n));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_generator
   (pwm_out_100,
    pwm_out_90,
    pwm_out_80,
    pwm_out_70,
    pwm_out_60,
    clk,
    rst_n);
  output pwm_out_100;
  output pwm_out_90;
  output pwm_out_80;
  output pwm_out_70;
  output pwm_out_60;
  input clk;
  input rst_n;

  wire clk;
  wire \counter[0]_i_1_n_0 ;
  wire [3:0]counter_reg;
  wire p_0_in;
  wire [3:1]p_0_in__0;
  wire pwm_out_100;
  wire pwm_out_100_i_1_n_0;
  wire pwm_out_60;
  wire pwm_out_60_i_1_n_0;
  wire pwm_out_70;
  wire pwm_out_700_n_0;
  wire pwm_out_80;
  wire pwm_out_80_i_1_n_0;
  wire pwm_out_90;
  wire pwm_out_90_i_1_n_0;
  wire rst_n;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0057)) 
    \counter[0]_i_1 
       (.I0(counter_reg[3]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .I3(counter_reg[0]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \counter[1]_i_1 
       (.I0(counter_reg[3]),
        .I1(counter_reg[1]),
        .I2(counter_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1450)) 
    \counter[2]_i_1 
       (.I0(counter_reg[3]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .I3(counter_reg[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4002)) 
    \counter[3]_i_1 
       (.I0(counter_reg[3]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .I3(counter_reg[0]),
        .O(p_0_in__0[3]));
  FDCE \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_100_i_1_n_0),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter_reg[0]));
  FDCE \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_100_i_1_n_0),
        .D(p_0_in__0[1]),
        .Q(counter_reg[1]));
  FDCE \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_100_i_1_n_0),
        .D(p_0_in__0[2]),
        .Q(counter_reg[2]));
  FDCE \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_100_i_1_n_0),
        .D(p_0_in__0[3]),
        .Q(counter_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    pwm_out_1000
       (.I0(counter_reg[1]),
        .I1(counter_reg[2]),
        .I2(counter_reg[3]),
        .O(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_100_i_1
       (.I0(rst_n),
        .O(pwm_out_100_i_1_n_0));
  FDCE pwm_out_100_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_100_i_1_n_0),
        .D(p_0_in),
        .Q(pwm_out_100));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h15)) 
    pwm_out_60_i_1
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .I2(counter_reg[1]),
        .O(pwm_out_60_i_1_n_0));
  FDCE pwm_out_60_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_100_i_1_n_0),
        .D(pwm_out_60_i_1_n_0),
        .Q(pwm_out_60));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    pwm_out_700
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .I3(counter_reg[3]),
        .O(pwm_out_700_n_0));
  FDCE pwm_out_70_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_100_i_1_n_0),
        .D(pwm_out_700_n_0),
        .Q(pwm_out_70));
  LUT1 #(
    .INIT(2'h1)) 
    pwm_out_80_i_1
       (.I0(counter_reg[3]),
        .O(pwm_out_80_i_1_n_0));
  FDCE pwm_out_80_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_100_i_1_n_0),
        .D(pwm_out_80_i_1_n_0),
        .Q(pwm_out_80));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    pwm_out_90_i_1
       (.I0(counter_reg[0]),
        .I1(counter_reg[2]),
        .I2(counter_reg[1]),
        .I3(counter_reg[3]),
        .O(pwm_out_90_i_1_n_0));
  FDCE pwm_out_90_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(pwm_out_100_i_1_n_0),
        .D(pwm_out_90_i_1_n_0),
        .Q(pwm_out_90));
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
