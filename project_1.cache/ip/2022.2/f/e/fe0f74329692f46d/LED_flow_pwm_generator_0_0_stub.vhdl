-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Dec 17 16:27:32 2024
-- Host        : LAPTOP-53JB5545 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LED_flow_pwm_generator_0_0_stub.vhdl
-- Design      : LED_flow_pwm_generator_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    pwm_out_100 : out STD_LOGIC;
    pwm_out_90 : out STD_LOGIC;
    pwm_out_80 : out STD_LOGIC;
    pwm_out_70 : out STD_LOGIC;
    pwm_out_60 : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,pwm_out_100,pwm_out_90,pwm_out_80,pwm_out_70,pwm_out_60";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "pwm_generator,Vivado 2022.2";
begin
end;
