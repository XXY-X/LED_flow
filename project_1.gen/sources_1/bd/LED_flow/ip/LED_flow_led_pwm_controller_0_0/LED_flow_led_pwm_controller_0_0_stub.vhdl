-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Dec 20 16:32:33 2024
-- Host        : LAPTOP-53JB5545 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {d:/working_soft/Xlinx_Vivado/project/SUCCESS1 -
--               try/project_1.gen/sources_1/bd/LED_flow/ip/LED_flow_led_pwm_controller_0_0/LED_flow_led_pwm_controller_0_0_stub.vhdl}
-- Design      : LED_flow_led_pwm_controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LED_flow_led_pwm_controller_0_0 is
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

end LED_flow_led_pwm_controller_0_0;

architecture stub of LED_flow_led_pwm_controller_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,clk_1hz,rst_n,dir_change,pwm_in_100,pwm_in_90,pwm_in_80,pwm_in_70,pwm_in_60,range_ctrl[17:0],led_out[17:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "led_pwm_controller,Vivado 2022.2";
begin
end;
