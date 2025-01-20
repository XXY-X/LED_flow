-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Dec 19 20:26:30 2024
-- Host        : LAPTOP-53JB5545 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LED_flow_led_pwm_controller_0_0_stub.vhdl
-- Design      : LED_flow_led_pwm_controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    clk_1hz : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    dir_change : in STD_LOGIC;
    pwm_in_100 : in STD_LOGIC;
    pwm_in_90 : in STD_LOGIC;
    pwm_in_80 : in STD_LOGIC;
    pwm_in_70 : in STD_LOGIC;
    pwm_in_60 : in STD_LOGIC;
    range_ctrl : in STD_LOGIC_VECTOR ( 17 downto 0 );
    led_out : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,clk_1hz,rst_n,dir_change,pwm_in_100,pwm_in_90,pwm_in_80,pwm_in_70,pwm_in_60,range_ctrl[17:0],led_out[17:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "led_pwm_controller,Vivado 2022.2";
begin
end;
