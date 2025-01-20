-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Dec 20 16:32:32 2024
-- Host        : LAPTOP-53JB5545 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LED_flow_led_pwm_controller_0_0_sim_netlist.vhdl
-- Design      : LED_flow_led_pwm_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_pwm_controller is
  port (
    led_out : out STD_LOGIC_VECTOR ( 17 downto 0 );
    pwm_in_60 : in STD_LOGIC;
    pwm_in_100 : in STD_LOGIC;
    pwm_in_90 : in STD_LOGIC;
    pwm_in_70 : in STD_LOGIC;
    dir_change : in STD_LOGIC;
    clk : in STD_LOGIC;
    clk_1hz : in STD_LOGIC;
    pwm_in_80 : in STD_LOGIC;
    range_ctrl : in STD_LOGIC_VECTOR ( 17 downto 0 );
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_pwm_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_pwm_controller is
  signal COUNT_MAX : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \COUNT_MAX[0]_i_1_n_0\ : STD_LOGIC;
  signal \COUNT_MAX[3]_i_2_n_0\ : STD_LOGIC;
  signal COUNT_MAX_TEMP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \COUNT_MAX_TEMP[0]_i_1_n_0\ : STD_LOGIC;
  signal \COUNT_MAX_TEMP[0]_i_2_n_0\ : STD_LOGIC;
  signal \COUNT_MAX_TEMP[0]_i_3_n_0\ : STD_LOGIC;
  signal \COUNT_MAX_TEMP[1]_i_1_n_0\ : STD_LOGIC;
  signal \COUNT_MAX_TEMP[1]_i_2_n_0\ : STD_LOGIC;
  signal \COUNT_MAX_TEMP[2]_i_1_n_0\ : STD_LOGIC;
  signal \COUNT_MAX_TEMP[3]_i_1_n_0\ : STD_LOGIC;
  signal \COUNT_MAX_TEMP[3]_i_2_n_0\ : STD_LOGIC;
  signal COUNT_MIN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \COUNT_MIN[0]_i_1_n_0\ : STD_LOGIC;
  signal \COUNT_MIN[1]_i_1_n_0\ : STD_LOGIC;
  signal \COUNT_MIN[2]_i_1_n_0\ : STD_LOGIC;
  signal \COUNT_MIN[3]_i_1_n_0\ : STD_LOGIC;
  signal COUNT_MIN_TEMP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \COUNT_MIN_TEMP[0]_i_1_n_0\ : STD_LOGIC;
  signal \COUNT_MIN_TEMP[0]_i_2_n_0\ : STD_LOGIC;
  signal \COUNT_MIN_TEMP[0]_i_3_n_0\ : STD_LOGIC;
  signal \COUNT_MIN_TEMP[1]_i_1_n_0\ : STD_LOGIC;
  signal \COUNT_MIN_TEMP[1]_i_2_n_0\ : STD_LOGIC;
  signal \COUNT_MIN_TEMP[1]_i_3_n_0\ : STD_LOGIC;
  signal \COUNT_MIN_TEMP[2]_i_1_n_0\ : STD_LOGIC;
  signal \COUNT_MIN_TEMP[3]_i_1_n_0\ : STD_LOGIC;
  signal \COUNT_MIN_TEMP[3]_i_2_n_0\ : STD_LOGIC;
  signal \COUNT_MIN_TEMP[3]_i_3_n_0\ : STD_LOGIC;
  signal \COUNT_MIN_TEMP[3]_i_4_n_0\ : STD_LOGIC;
  signal dir_change_debounced : STD_LOGIC;
  signal direction2 : STD_LOGIC;
  signal direction_i_1_n_0 : STD_LOGIC;
  signal direction_i_2_n_0 : STD_LOGIC;
  signal direction_i_3_n_0 : STD_LOGIC;
  signal direction_reg_n_0 : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal last_led_pos : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \led_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[10]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[10]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[10]_i_3_n_0\ : STD_LOGIC;
  signal \led_out[10]_i_4_n_0\ : STD_LOGIC;
  signal \led_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[11]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[11]_i_3_n_0\ : STD_LOGIC;
  signal \led_out[11]_i_4_n_0\ : STD_LOGIC;
  signal \led_out[11]_i_5_n_0\ : STD_LOGIC;
  signal \led_out[12]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[12]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[12]_i_3_n_0\ : STD_LOGIC;
  signal \led_out[12]_i_4_n_0\ : STD_LOGIC;
  signal \led_out[13]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[13]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[13]_i_3_n_0\ : STD_LOGIC;
  signal \led_out[13]_i_4_n_0\ : STD_LOGIC;
  signal \led_out[14]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[14]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[14]_i_3_n_0\ : STD_LOGIC;
  signal \led_out[14]_i_4_n_0\ : STD_LOGIC;
  signal \led_out[14]_i_5_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[15]_i_3_n_0\ : STD_LOGIC;
  signal \led_out[16]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[16]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[17]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[17]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[17]_i_3_n_0\ : STD_LOGIC;
  signal \led_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \led_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \led_out[2]_i_4_n_0\ : STD_LOGIC;
  signal \led_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \led_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \led_out[8]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[8]_i_3_n_0\ : STD_LOGIC;
  signal \led_out[8]_i_4_n_0\ : STD_LOGIC;
  signal \led_out[8]_i_5_n_0\ : STD_LOGIC;
  signal \led_out[9]_i_1_n_0\ : STD_LOGIC;
  signal \led_out[9]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[9]_i_3_n_0\ : STD_LOGIC;
  signal \led_out[9]_i_4_n_0\ : STD_LOGIC;
  signal \led_out[9]_i_5_n_0\ : STD_LOGIC;
  signal \led_pos[0]_i_1_n_0\ : STD_LOGIC;
  signal \led_pos[1]_i_1_n_0\ : STD_LOGIC;
  signal \led_pos[1]_i_2_n_0\ : STD_LOGIC;
  signal \led_pos[1]_i_3_n_0\ : STD_LOGIC;
  signal \led_pos[2]_i_1_n_0\ : STD_LOGIC;
  signal \led_pos[2]_i_2_n_0\ : STD_LOGIC;
  signal \led_pos[2]_i_3_n_0\ : STD_LOGIC;
  signal \led_pos[2]_i_4_n_0\ : STD_LOGIC;
  signal \led_pos[3]_i_10_n_0\ : STD_LOGIC;
  signal \led_pos[3]_i_11_n_0\ : STD_LOGIC;
  signal \led_pos[3]_i_12_n_0\ : STD_LOGIC;
  signal \led_pos[3]_i_13_n_0\ : STD_LOGIC;
  signal \led_pos[3]_i_1_n_0\ : STD_LOGIC;
  signal \led_pos[3]_i_3_n_0\ : STD_LOGIC;
  signal \led_pos[3]_i_4_n_0\ : STD_LOGIC;
  signal \led_pos[3]_i_5_n_0\ : STD_LOGIC;
  signal \led_pos[3]_i_6_n_0\ : STD_LOGIC;
  signal \led_pos[3]_i_7_n_0\ : STD_LOGIC;
  signal \led_pos[3]_i_8_n_0\ : STD_LOGIC;
  signal \led_pos[3]_i_9_n_0\ : STD_LOGIC;
  signal \led_pos_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \led_pos_reg_n_0_[0]\ : STD_LOGIC;
  signal \led_pos_reg_n_0_[1]\ : STD_LOGIC;
  signal \led_pos_reg_n_0_[2]\ : STD_LOGIC;
  signal \led_pos_reg_n_0_[3]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal update_flag : STD_LOGIC;
  signal update_flag0 : STD_LOGIC;
  signal \update_flag0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \update_flag0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \update_flag0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \update_flag0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \update_flag0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \update_flag0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \update_flag0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \update_flag0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \update_flag0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \update_flag0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal update_flag_i_1_n_0 : STD_LOGIC;
  signal update_flag_i_2_n_0 : STD_LOGIC;
  signal update_flag_i_3_n_0 : STD_LOGIC;
  signal update_flag_i_4_n_0 : STD_LOGIC;
  signal update_flag_i_5_n_0 : STD_LOGIC;
  signal update_flag_i_6_n_0 : STD_LOGIC;
  signal update_flag_i_7_n_0 : STD_LOGIC;
  signal \NLW_update_flag0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_update_flag0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_update_flag0_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_update_flag0_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \COUNT_MAX[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \COUNT_MAX[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \COUNT_MAX[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \COUNT_MAX[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \COUNT_MAX_TEMP[3]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \COUNT_MIN[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \COUNT_MIN[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \COUNT_MIN[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \COUNT_MIN[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \COUNT_MIN_TEMP[1]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \COUNT_MIN_TEMP[3]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \COUNT_MIN_TEMP[3]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of direction_i_2 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \led_out[0]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \led_out[10]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \led_out[11]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led_out[11]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led_out[12]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \led_out[12]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \led_out[12]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \led_out[13]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \led_out[13]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \led_out[13]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \led_out[14]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \led_out[14]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led_out[14]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led_out[14]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \led_out[15]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \led_out[17]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \led_out[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \led_out[1]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \led_out[1]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \led_out[2]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \led_out[2]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \led_out[3]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \led_out[3]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \led_out[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \led_out[7]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \led_out[8]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \led_out[8]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \led_out[9]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \led_out[9]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \led_pos[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \led_pos[1]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \led_pos[2]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \led_pos[2]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_pos[3]_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_pos[3]_i_12\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \led_pos[3]_i_7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \led_pos[3]_i_8\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \led_pos[3]_i_9\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of update_flag_i_2 : label is "soft_lutpair4";
begin
\COUNT_MAX[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B200"
    )
        port map (
      I0 => \COUNT_MAX[3]_i_2_n_0\,
      I1 => COUNT_MIN_TEMP(3),
      I2 => COUNT_MAX_TEMP(3),
      I3 => COUNT_MAX_TEMP(0),
      O => \COUNT_MAX[0]_i_1_n_0\
    );
\COUNT_MAX[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4D"
    )
        port map (
      I0 => \COUNT_MAX[3]_i_2_n_0\,
      I1 => COUNT_MIN_TEMP(3),
      I2 => COUNT_MAX_TEMP(3),
      I3 => COUNT_MAX_TEMP(1),
      O => p_0_in(1)
    );
\COUNT_MAX[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4D"
    )
        port map (
      I0 => \COUNT_MAX[3]_i_2_n_0\,
      I1 => COUNT_MIN_TEMP(3),
      I2 => COUNT_MAX_TEMP(3),
      I3 => COUNT_MAX_TEMP(2),
      O => p_0_in(2)
    );
\COUNT_MAX[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \COUNT_MAX[3]_i_2_n_0\,
      I1 => COUNT_MIN_TEMP(3),
      I2 => COUNT_MAX_TEMP(3),
      O => p_0_in(3)
    );
\COUNT_MAX[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F02FFFF00002F02"
    )
        port map (
      I0 => COUNT_MAX_TEMP(0),
      I1 => COUNT_MIN_TEMP(0),
      I2 => COUNT_MIN_TEMP(1),
      I3 => COUNT_MAX_TEMP(1),
      I4 => COUNT_MIN_TEMP(2),
      I5 => COUNT_MAX_TEMP(2),
      O => \COUNT_MAX[3]_i_2_n_0\
    );
\COUNT_MAX_TEMP[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => range_ctrl(17),
      I1 => range_ctrl(16),
      I2 => \COUNT_MAX_TEMP[0]_i_2_n_0\,
      I3 => \COUNT_MAX_TEMP[0]_i_3_n_0\,
      O => \COUNT_MAX_TEMP[0]_i_1_n_0\
    );
\COUNT_MAX_TEMP[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001011"
    )
        port map (
      I0 => range_ctrl(11),
      I1 => range_ctrl(13),
      I2 => range_ctrl(10),
      I3 => range_ctrl(9),
      I4 => range_ctrl(17),
      I5 => range_ctrl(15),
      O => \COUNT_MAX_TEMP[0]_i_2_n_0\
    );
\COUNT_MAX_TEMP[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020302"
    )
        port map (
      I0 => range_ctrl(14),
      I1 => range_ctrl(15),
      I2 => range_ctrl(17),
      I3 => range_ctrl(12),
      I4 => range_ctrl(13),
      O => \COUNT_MAX_TEMP[0]_i_3_n_0\
    );
\COUNT_MAX_TEMP[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF02"
    )
        port map (
      I0 => \COUNT_MAX_TEMP[1]_i_2_n_0\,
      I1 => range_ctrl(15),
      I2 => range_ctrl(16),
      I3 => range_ctrl(17),
      O => \COUNT_MAX_TEMP[1]_i_1_n_0\
    );
\COUNT_MAX_TEMP[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF000E"
    )
        port map (
      I0 => range_ctrl(9),
      I1 => range_ctrl(10),
      I2 => range_ctrl(11),
      I3 => range_ctrl(12),
      I4 => range_ctrl(14),
      I5 => range_ctrl(13),
      O => \COUNT_MAX_TEMP[1]_i_2_n_0\
    );
\COUNT_MAX_TEMP[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEFF"
    )
        port map (
      I0 => range_ctrl(15),
      I1 => range_ctrl(17),
      I2 => range_ctrl(16),
      I3 => range_ctrl(14),
      I4 => \COUNT_MIN_TEMP[3]_i_3_n_0\,
      O => \COUNT_MAX_TEMP[2]_i_1_n_0\
    );
\COUNT_MAX_TEMP[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \COUNT_MIN_TEMP[3]_i_3_n_0\,
      I1 => range_ctrl(16),
      I2 => range_ctrl(17),
      I3 => range_ctrl(15),
      I4 => \COUNT_MAX_TEMP[3]_i_2_n_0\,
      I5 => range_ctrl(14),
      O => \COUNT_MAX_TEMP[3]_i_1_n_0\
    );
\COUNT_MAX_TEMP[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => range_ctrl(9),
      I1 => range_ctrl(10),
      O => \COUNT_MAX_TEMP[3]_i_2_n_0\
    );
\COUNT_MAX_TEMP_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \COUNT_MAX_TEMP[0]_i_1_n_0\,
      Q => COUNT_MAX_TEMP(0)
    );
\COUNT_MAX_TEMP_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \COUNT_MAX_TEMP[1]_i_1_n_0\,
      PRE => \led_out[17]_i_2_n_0\,
      Q => COUNT_MAX_TEMP(1)
    );
\COUNT_MAX_TEMP_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \COUNT_MAX_TEMP[2]_i_1_n_0\,
      PRE => \led_out[17]_i_2_n_0\,
      Q => COUNT_MAX_TEMP(2)
    );
\COUNT_MAX_TEMP_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \COUNT_MAX_TEMP[3]_i_1_n_0\,
      PRE => \led_out[17]_i_2_n_0\,
      Q => COUNT_MAX_TEMP(3)
    );
\COUNT_MAX_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \COUNT_MAX[0]_i_1_n_0\,
      Q => COUNT_MAX(0)
    );
\COUNT_MAX_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      PRE => \led_out[17]_i_2_n_0\,
      Q => COUNT_MAX(1)
    );
\COUNT_MAX_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      PRE => \led_out[17]_i_2_n_0\,
      Q => COUNT_MAX(2)
    );
\COUNT_MAX_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      PRE => \led_out[17]_i_2_n_0\,
      Q => COUNT_MAX(3)
    );
\COUNT_MIN[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4D"
    )
        port map (
      I0 => \COUNT_MAX[3]_i_2_n_0\,
      I1 => COUNT_MIN_TEMP(3),
      I2 => COUNT_MAX_TEMP(3),
      I3 => COUNT_MIN_TEMP(0),
      O => \COUNT_MIN[0]_i_1_n_0\
    );
\COUNT_MIN[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B200"
    )
        port map (
      I0 => \COUNT_MAX[3]_i_2_n_0\,
      I1 => COUNT_MIN_TEMP(3),
      I2 => COUNT_MAX_TEMP(3),
      I3 => COUNT_MIN_TEMP(1),
      O => \COUNT_MIN[1]_i_1_n_0\
    );
\COUNT_MIN[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B200"
    )
        port map (
      I0 => \COUNT_MAX[3]_i_2_n_0\,
      I1 => COUNT_MIN_TEMP(3),
      I2 => COUNT_MAX_TEMP(3),
      I3 => COUNT_MIN_TEMP(2),
      O => \COUNT_MIN[2]_i_1_n_0\
    );
\COUNT_MIN[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \COUNT_MAX[3]_i_2_n_0\,
      I1 => COUNT_MIN_TEMP(3),
      I2 => COUNT_MAX_TEMP(3),
      O => \COUNT_MIN[3]_i_1_n_0\
    );
\COUNT_MIN_TEMP[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => range_ctrl(0),
      I1 => range_ctrl(2),
      I2 => range_ctrl(1),
      I3 => \COUNT_MIN_TEMP[0]_i_2_n_0\,
      O => \COUNT_MIN_TEMP[0]_i_1_n_0\
    );
\COUNT_MIN_TEMP[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101011111110"
    )
        port map (
      I0 => range_ctrl(3),
      I1 => range_ctrl(1),
      I2 => range_ctrl(4),
      I3 => range_ctrl(6),
      I4 => \COUNT_MIN_TEMP[0]_i_3_n_0\,
      I5 => range_ctrl(5),
      O => \COUNT_MIN_TEMP[0]_i_2_n_0\
    );
\COUNT_MIN_TEMP[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEEFE"
    )
        port map (
      I0 => range_ctrl(8),
      I1 => range_ctrl(10),
      I2 => range_ctrl(12),
      I3 => range_ctrl(11),
      I4 => range_ctrl(9),
      I5 => range_ctrl(7),
      O => \COUNT_MIN_TEMP[0]_i_3_n_0\
    );
\COUNT_MIN_TEMP[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEEEEFE"
    )
        port map (
      I0 => range_ctrl(1),
      I1 => range_ctrl(2),
      I2 => \COUNT_MIN_TEMP[1]_i_2_n_0\,
      I3 => range_ctrl(4),
      I4 => range_ctrl(3),
      I5 => range_ctrl(0),
      O => \COUNT_MIN_TEMP[1]_i_1_n_0\
    );
\COUNT_MIN_TEMP[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF11110001"
    )
        port map (
      I0 => range_ctrl(7),
      I1 => range_ctrl(8),
      I2 => range_ctrl(12),
      I3 => range_ctrl(11),
      I4 => \COUNT_MAX_TEMP[3]_i_2_n_0\,
      I5 => \COUNT_MIN_TEMP[1]_i_3_n_0\,
      O => \COUNT_MIN_TEMP[1]_i_2_n_0\
    );
\COUNT_MIN_TEMP[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => range_ctrl(5),
      I1 => range_ctrl(6),
      O => \COUNT_MIN_TEMP[1]_i_3_n_0\
    );
\COUNT_MIN_TEMP[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010001010100"
    )
        port map (
      I0 => range_ctrl(0),
      I1 => range_ctrl(1),
      I2 => range_ctrl(2),
      I3 => \COUNT_MIN_TEMP[3]_i_2_n_0\,
      I4 => \COUNT_MIN_TEMP[3]_i_3_n_0\,
      I5 => \COUNT_MIN_TEMP[3]_i_4_n_0\,
      O => \COUNT_MIN_TEMP[2]_i_1_n_0\
    );
\COUNT_MIN_TEMP[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000100010000"
    )
        port map (
      I0 => \COUNT_MIN_TEMP[3]_i_2_n_0\,
      I1 => range_ctrl(2),
      I2 => range_ctrl(1),
      I3 => range_ctrl(0),
      I4 => \COUNT_MIN_TEMP[3]_i_3_n_0\,
      I5 => \COUNT_MIN_TEMP[3]_i_4_n_0\,
      O => \COUNT_MIN_TEMP[3]_i_1_n_0\
    );
\COUNT_MIN_TEMP[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => range_ctrl(4),
      I1 => range_ctrl(3),
      I2 => range_ctrl(6),
      I3 => range_ctrl(5),
      O => \COUNT_MIN_TEMP[3]_i_2_n_0\
    );
\COUNT_MIN_TEMP[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => range_ctrl(13),
      I1 => range_ctrl(11),
      I2 => range_ctrl(12),
      O => \COUNT_MIN_TEMP[3]_i_3_n_0\
    );
\COUNT_MIN_TEMP[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => range_ctrl(8),
      I1 => range_ctrl(7),
      I2 => range_ctrl(10),
      I3 => range_ctrl(9),
      O => \COUNT_MIN_TEMP[3]_i_4_n_0\
    );
\COUNT_MIN_TEMP_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \COUNT_MIN_TEMP[0]_i_1_n_0\,
      PRE => \led_out[17]_i_2_n_0\,
      Q => COUNT_MIN_TEMP(0)
    );
\COUNT_MIN_TEMP_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \COUNT_MIN_TEMP[1]_i_1_n_0\,
      Q => COUNT_MIN_TEMP(1)
    );
\COUNT_MIN_TEMP_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \COUNT_MIN_TEMP[2]_i_1_n_0\,
      Q => COUNT_MIN_TEMP(2)
    );
\COUNT_MIN_TEMP_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \COUNT_MIN_TEMP[3]_i_1_n_0\,
      Q => COUNT_MIN_TEMP(3)
    );
\COUNT_MIN_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \COUNT_MIN[0]_i_1_n_0\,
      PRE => \led_out[17]_i_2_n_0\,
      Q => COUNT_MIN(0)
    );
\COUNT_MIN_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \COUNT_MIN[1]_i_1_n_0\,
      Q => COUNT_MIN(1)
    );
\COUNT_MIN_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \COUNT_MIN[2]_i_1_n_0\,
      Q => COUNT_MIN(2)
    );
\COUNT_MIN_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \COUNT_MIN[3]_i_1_n_0\,
      Q => COUNT_MIN(3)
    );
dir_change_debounced_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => dir_change,
      Q => dir_change_debounced
    );
direction2_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_1hz,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => direction_reg_n_0,
      Q => direction2
    );
direction_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B044B0FFBB44BB44"
    )
        port map (
      I0 => dir_change_debounced,
      I1 => dir_change,
      I2 => \led_pos[3]_i_4_n_0\,
      I3 => direction_reg_n_0,
      I4 => \led_pos[3]_i_3_n_0\,
      I5 => direction_i_2_n_0,
      O => direction_i_1_n_0
    );
direction_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => direction_i_3_n_0,
      I1 => last_led_pos(3),
      I2 => \led_pos_reg_n_0_[3]\,
      O => direction_i_2_n_0
    );
direction_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => last_led_pos(0),
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => \led_pos_reg_n_0_[2]\,
      I3 => last_led_pos(2),
      I4 => \led_pos_reg_n_0_[1]\,
      I5 => last_led_pos(1),
      O => direction_i_3_n_0
    );
direction_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => direction_i_1_n_0,
      Q => direction_reg_n_0
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => COUNT_MAX(3),
      I1 => COUNT_MAX(2),
      I2 => COUNT_MAX(1),
      I3 => COUNT_MAX(0),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => COUNT_MAX(3),
      I1 => COUNT_MAX(2),
      I2 => COUNT_MAX(1),
      I3 => COUNT_MAX(0),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => COUNT_MAX(3),
      I1 => COUNT_MAX(2),
      I2 => COUNT_MAX(1),
      I3 => COUNT_MAX(0),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => COUNT_MAX(3),
      I1 => COUNT_MAX(2),
      I2 => COUNT_MAX(1),
      I3 => COUNT_MAX(0),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => COUNT_MAX(3),
      I1 => COUNT_MAX(2),
      I2 => COUNT_MAX(1),
      I3 => COUNT_MAX(0),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => COUNT_MAX(3),
      I1 => COUNT_MAX(2),
      I2 => COUNT_MAX(1),
      I3 => COUNT_MAX(0),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => COUNT_MAX(3),
      I1 => COUNT_MAX(2),
      I2 => COUNT_MAX(1),
      I3 => COUNT_MAX(0),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => COUNT_MAX(3),
      I1 => COUNT_MAX(2),
      I2 => COUNT_MAX(1),
      I3 => COUNT_MAX(0),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA85556"
    )
        port map (
      I0 => COUNT_MAX(3),
      I1 => COUNT_MAX(0),
      I2 => COUNT_MAX(1),
      I3 => COUNT_MAX(2),
      I4 => \led_pos_reg_n_0_[3]\,
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000412882410000"
    )
        port map (
      I0 => \led_pos_reg_n_0_[1]\,
      I1 => COUNT_MAX(2),
      I2 => \led_pos_reg_n_0_[2]\,
      I3 => COUNT_MAX(1),
      I4 => COUNT_MAX(0),
      I5 => \led_pos_reg_n_0_[0]\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => COUNT_MAX(3),
      I1 => COUNT_MAX(2),
      I2 => COUNT_MAX(1),
      I3 => COUNT_MAX(0),
      O => \i__carry_i_4__0_n_0\
    );
\last_led_pos_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led_pos_reg_n_0_[0]\,
      Q => last_led_pos(0),
      R => '0'
    );
\last_led_pos_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led_pos_reg_n_0_[1]\,
      Q => last_led_pos(1),
      R => '0'
    );
\last_led_pos_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led_pos_reg_n_0_[2]\,
      Q => last_led_pos(2),
      R => '0'
    );
\last_led_pos_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \led_pos_reg_n_0_[3]\,
      Q => last_led_pos(3),
      R => '0'
    );
\led_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020300000200"
    )
        port map (
      I0 => pwm_in_100,
      I1 => \led_pos_reg_n_0_[2]\,
      I2 => \led_pos_reg_n_0_[3]\,
      I3 => direction2,
      I4 => \led_out[0]_i_2_n_0\,
      I5 => pwm_in_60,
      O => \led_out[0]_i_1_n_0\
    );
\led_out[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \led_pos_reg_n_0_[1]\,
      I1 => \led_pos_reg_n_0_[0]\,
      O => \led_out[0]_i_2_n_0\
    );
\led_out[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5444AA8854448888"
    )
        port map (
      I0 => \led_pos_reg_n_0_[2]\,
      I1 => \led_out[10]_i_2_n_0\,
      I2 => \led_out[10]_i_3_n_0\,
      I3 => direction2,
      I4 => \led_pos_reg_n_0_[3]\,
      I5 => \led_out[10]_i_4_n_0\,
      O => \led_out[10]_i_1_n_0\
    );
\led_out[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8888888"
    )
        port map (
      I0 => \led_out[6]_i_2_n_0\,
      I1 => \led_pos_reg_n_0_[3]\,
      I2 => \led_pos_reg_n_0_[1]\,
      I3 => \led_pos_reg_n_0_[0]\,
      I4 => pwm_in_100,
      I5 => direction2,
      O => \led_out[10]_i_2_n_0\
    );
\led_out[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBF3C08888F3C0"
    )
        port map (
      I0 => pwm_in_100,
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => pwm_in_80,
      I3 => pwm_in_70,
      I4 => \led_pos_reg_n_0_[1]\,
      I5 => pwm_in_90,
      O => \led_out[10]_i_3_n_0\
    );
\led_out[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pwm_in_60,
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => \led_pos_reg_n_0_[1]\,
      O => \led_out[10]_i_4_n_0\
    );
\led_out[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050D0D00000D000"
    )
        port map (
      I0 => \led_out[11]_i_2_n_0\,
      I1 => \led_out[11]_i_3_n_0\,
      I2 => \led_pos_reg_n_0_[3]\,
      I3 => \led_out[11]_i_4_n_0\,
      I4 => \led_pos_reg_n_0_[2]\,
      I5 => \led_out[11]_i_5_n_0\,
      O => \led_out[11]_i_1_n_0\
    );
\led_out[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555515"
    )
        port map (
      I0 => direction2,
      I1 => \led_pos_reg_n_0_[2]\,
      I2 => pwm_in_60,
      I3 => \led_pos_reg_n_0_[0]\,
      I4 => \led_pos_reg_n_0_[1]\,
      O => \led_out[11]_i_2_n_0\
    );
\led_out[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFFAC0FACF0AC00A"
    )
        port map (
      I0 => pwm_in_100,
      I1 => pwm_in_70,
      I2 => \led_pos_reg_n_0_[0]\,
      I3 => \led_pos_reg_n_0_[1]\,
      I4 => pwm_in_80,
      I5 => pwm_in_90,
      O => \led_out[11]_i_3_n_0\
    );
\led_out[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFA0CFAFC0A0C0A"
    )
        port map (
      I0 => pwm_in_60,
      I1 => pwm_in_70,
      I2 => \led_pos_reg_n_0_[1]\,
      I3 => \led_pos_reg_n_0_[0]\,
      I4 => pwm_in_90,
      I5 => pwm_in_80,
      O => \led_out[11]_i_4_n_0\
    );
\led_out[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008FFFF"
    )
        port map (
      I0 => \led_pos_reg_n_0_[2]\,
      I1 => pwm_in_100,
      I2 => \led_pos_reg_n_0_[0]\,
      I3 => \led_pos_reg_n_0_[1]\,
      I4 => direction2,
      O => \led_out[11]_i_5_n_0\
    );
\led_out[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \led_out[12]_i_2_n_0\,
      I1 => \led_pos_reg_n_0_[3]\,
      O => \led_out[12]_i_1_n_0\
    );
\led_out[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \led_out[12]_i_3_n_0\,
      I1 => \led_out[8]_i_4_n_0\,
      I2 => direction2,
      I3 => \led_out[12]_i_4_n_0\,
      I4 => \led_pos_reg_n_0_[2]\,
      I5 => \led_out[8]_i_2_n_0\,
      O => \led_out[12]_i_2_n_0\
    );
\led_out[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D8"
    )
        port map (
      I0 => \led_pos_reg_n_0_[0]\,
      I1 => pwm_in_100,
      I2 => pwm_in_90,
      I3 => \led_pos_reg_n_0_[1]\,
      O => \led_out[12]_i_3_n_0\
    );
\led_out[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D8"
    )
        port map (
      I0 => \led_pos_reg_n_0_[0]\,
      I1 => pwm_in_60,
      I2 => pwm_in_70,
      I3 => \led_pos_reg_n_0_[1]\,
      O => \led_out[12]_i_4_n_0\
    );
\led_out[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \led_out[13]_i_2_n_0\,
      I1 => \led_pos_reg_n_0_[3]\,
      O => \led_out[13]_i_1_n_0\
    );
\led_out[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0ACAC0F00ACAC"
    )
        port map (
      I0 => \led_out[9]_i_2_n_0\,
      I1 => \led_out[13]_i_3_n_0\,
      I2 => \led_pos_reg_n_0_[2]\,
      I3 => \led_out[13]_i_4_n_0\,
      I4 => direction2,
      I5 => \led_out[9]_i_4_n_0\,
      O => \led_out[13]_i_2_n_0\
    );
\led_out[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => pwm_in_100,
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => pwm_in_90,
      I3 => \led_pos_reg_n_0_[1]\,
      O => \led_out[13]_i_3_n_0\
    );
\led_out[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => pwm_in_60,
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => pwm_in_70,
      I3 => \led_pos_reg_n_0_[1]\,
      O => \led_out[13]_i_4_n_0\
    );
\led_out[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E000C000E000C0"
    )
        port map (
      I0 => \led_out[14]_i_2_n_0\,
      I1 => \led_out[14]_i_3_n_0\,
      I2 => \led_pos_reg_n_0_[3]\,
      I3 => \led_out[14]_i_4_n_0\,
      I4 => \led_pos_reg_n_0_[2]\,
      I5 => \led_out[14]_i_5_n_0\,
      O => \led_out[14]_i_1_n_0\
    );
\led_out[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3300B8B8"
    )
        port map (
      I0 => pwm_in_70,
      I1 => \led_pos_reg_n_0_[1]\,
      I2 => pwm_in_90,
      I3 => pwm_in_80,
      I4 => \led_pos_reg_n_0_[0]\,
      O => \led_out[14]_i_2_n_0\
    );
\led_out[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAAAAAA"
    )
        port map (
      I0 => direction2,
      I1 => \led_pos_reg_n_0_[2]\,
      I2 => pwm_in_100,
      I3 => \led_pos_reg_n_0_[0]\,
      I4 => \led_pos_reg_n_0_[1]\,
      O => \led_out[14]_i_3_n_0\
    );
\led_out[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAAAAAA"
    )
        port map (
      I0 => direction2,
      I1 => \led_pos_reg_n_0_[2]\,
      I2 => pwm_in_60,
      I3 => \led_pos_reg_n_0_[0]\,
      I4 => \led_pos_reg_n_0_[1]\,
      O => \led_out[14]_i_4_n_0\
    );
\led_out[14]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3300B8B8"
    )
        port map (
      I0 => pwm_in_90,
      I1 => \led_pos_reg_n_0_[1]\,
      I2 => pwm_in_70,
      I3 => pwm_in_80,
      I4 => \led_pos_reg_n_0_[0]\,
      O => \led_out[14]_i_5_n_0\
    );
\led_out[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080888080808080"
    )
        port map (
      I0 => \led_pos_reg_n_0_[3]\,
      I1 => \led_pos_reg_n_0_[2]\,
      I2 => \led_out[15]_i_2_n_0\,
      I3 => \led_out[15]_i_3_n_0\,
      I4 => \led_pos_reg_n_0_[1]\,
      I5 => direction2,
      O => \led_out[15]_i_1_n_0\
    );
\led_out[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088008833B800B8"
    )
        port map (
      I0 => pwm_in_80,
      I1 => \led_pos_reg_n_0_[1]\,
      I2 => pwm_in_100,
      I3 => \led_pos_reg_n_0_[0]\,
      I4 => pwm_in_90,
      I5 => direction2,
      O => \led_out[15]_i_2_n_0\
    );
\led_out[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pwm_in_70,
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => pwm_in_60,
      O => \led_out[15]_i_3_n_0\
    );
\led_out[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000062FF40FF"
    )
        port map (
      I0 => \led_pos_reg_n_0_[1]\,
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => pwm_in_60,
      I3 => direction2,
      I4 => pwm_in_70,
      I5 => \led_out[16]_i_2_n_0\,
      O => \led_out[16]_i_1_n_0\
    );
\led_out[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAABBBABBABBBBBB"
    )
        port map (
      I0 => \led_out[17]_i_3_n_0\,
      I1 => direction2,
      I2 => \led_pos_reg_n_0_[1]\,
      I3 => \led_pos_reg_n_0_[0]\,
      I4 => pwm_in_100,
      I5 => pwm_in_90,
      O => \led_out[16]_i_2_n_0\
    );
\led_out[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000800"
    )
        port map (
      I0 => pwm_in_60,
      I1 => direction2,
      I2 => \led_pos_reg_n_0_[0]\,
      I3 => \led_pos_reg_n_0_[1]\,
      I4 => pwm_in_100,
      I5 => \led_out[17]_i_3_n_0\,
      O => \led_out[17]_i_1_n_0\
    );
\led_out[17]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \led_out[17]_i_2_n_0\
    );
\led_out[17]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \led_pos_reg_n_0_[2]\,
      I1 => \led_pos_reg_n_0_[3]\,
      O => \led_out[17]_i_3_n_0\
    );
\led_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02030200"
    )
        port map (
      I0 => \led_out[1]_i_2_n_0\,
      I1 => \led_pos_reg_n_0_[2]\,
      I2 => \led_pos_reg_n_0_[3]\,
      I3 => direction2,
      I4 => \led_out[1]_i_3_n_0\,
      O => \led_out[1]_i_1_n_0\
    );
\led_out[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => pwm_in_100,
      I1 => \led_pos_reg_n_0_[1]\,
      I2 => \led_pos_reg_n_0_[0]\,
      I3 => pwm_in_90,
      O => \led_out[1]_i_2_n_0\
    );
\led_out[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => pwm_in_60,
      I1 => \led_pos_reg_n_0_[1]\,
      I2 => \led_pos_reg_n_0_[0]\,
      I3 => pwm_in_70,
      O => \led_out[1]_i_3_n_0\
    );
\led_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110111110101010"
    )
        port map (
      I0 => \led_pos_reg_n_0_[3]\,
      I1 => \led_pos_reg_n_0_[2]\,
      I2 => \led_out[2]_i_2_n_0\,
      I3 => \led_out[2]_i_3_n_0\,
      I4 => \led_out[2]_i_4_n_0\,
      I5 => direction2,
      O => \led_out[2]_i_1_n_0\
    );
\led_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00FAC00AC0"
    )
        port map (
      I0 => pwm_in_80,
      I1 => pwm_in_70,
      I2 => \led_pos_reg_n_0_[1]\,
      I3 => \led_pos_reg_n_0_[0]\,
      I4 => pwm_in_60,
      I5 => direction2,
      O => \led_out[2]_i_2_n_0\
    );
\led_out[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pwm_in_100,
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => \led_pos_reg_n_0_[1]\,
      O => \led_out[2]_i_3_n_0\
    );
\led_out[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \led_pos_reg_n_0_[1]\,
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => pwm_in_90,
      O => \led_out[2]_i_4_n_0\
    );
\led_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000CEE0C0E"
    )
        port map (
      I0 => \led_out[3]_i_2_n_0\,
      I1 => \led_out[11]_i_5_n_0\,
      I2 => \led_out[11]_i_2_n_0\,
      I3 => \led_pos_reg_n_0_[2]\,
      I4 => \led_out[3]_i_3_n_0\,
      I5 => \led_pos_reg_n_0_[3]\,
      O => \led_out[3]_i_1_n_0\
    );
\led_out[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAF0CA00"
    )
        port map (
      I0 => pwm_in_80,
      I1 => pwm_in_90,
      I2 => \led_pos_reg_n_0_[0]\,
      I3 => \led_pos_reg_n_0_[1]\,
      I4 => pwm_in_70,
      O => \led_out[3]_i_2_n_0\
    );
\led_out[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAC00AC0"
    )
        port map (
      I0 => pwm_in_90,
      I1 => pwm_in_80,
      I2 => \led_pos_reg_n_0_[1]\,
      I3 => \led_pos_reg_n_0_[0]\,
      I4 => pwm_in_70,
      O => \led_out[3]_i_3_n_0\
    );
\led_out[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \led_out[12]_i_2_n_0\,
      I1 => \led_pos_reg_n_0_[3]\,
      O => \led_out[4]_i_1_n_0\
    );
\led_out[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \led_out[13]_i_2_n_0\,
      I1 => \led_pos_reg_n_0_[3]\,
      O => \led_out[5]_i_1_n_0\
    );
\led_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E000C000E000C"
    )
        port map (
      I0 => \led_out[6]_i_2_n_0\,
      I1 => \led_out[14]_i_3_n_0\,
      I2 => \led_pos_reg_n_0_[3]\,
      I3 => \led_out[14]_i_4_n_0\,
      I4 => \led_pos_reg_n_0_[2]\,
      I5 => \led_out[10]_i_3_n_0\,
      O => \led_out[6]_i_1_n_0\
    );
\led_out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAF0CC00AAF0CC"
    )
        port map (
      I0 => pwm_in_80,
      I1 => pwm_in_90,
      I2 => pwm_in_70,
      I3 => \led_pos_reg_n_0_[1]\,
      I4 => \led_pos_reg_n_0_[0]\,
      I5 => pwm_in_60,
      O => \led_out[6]_i_2_n_0\
    );
\led_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5544A8884444A888"
    )
        port map (
      I0 => \led_pos_reg_n_0_[2]\,
      I1 => \led_out[7]_i_2_n_0\,
      I2 => \led_out[11]_i_4_n_0\,
      I3 => direction2,
      I4 => \led_pos_reg_n_0_[3]\,
      I5 => \led_out[7]_i_3_n_0\,
      O => \led_out[7]_i_1_n_0\
    );
\led_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000222E2222"
    )
        port map (
      I0 => \led_out[11]_i_3_n_0\,
      I1 => \led_pos_reg_n_0_[3]\,
      I2 => \led_pos_reg_n_0_[1]\,
      I3 => \led_pos_reg_n_0_[0]\,
      I4 => pwm_in_60,
      I5 => direction2,
      O => \led_out[7]_i_2_n_0\
    );
\led_out[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => pwm_in_100,
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => \led_pos_reg_n_0_[1]\,
      O => \led_out[7]_i_3_n_0\
    );
\led_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"005800585A5A5058"
    )
        port map (
      I0 => \led_pos_reg_n_0_[2]\,
      I1 => \led_out[8]_i_2_n_0\,
      I2 => \led_pos_reg_n_0_[3]\,
      I3 => \led_out[8]_i_3_n_0\,
      I4 => \led_out[8]_i_4_n_0\,
      I5 => \led_out[8]_i_5_n_0\,
      O => \led_out[8]_i_1_n_0\
    );
\led_out[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => pwm_in_90,
      I1 => pwm_in_80,
      I2 => \led_pos_reg_n_0_[1]\,
      I3 => \led_pos_reg_n_0_[0]\,
      I4 => pwm_in_100,
      O => \led_out[8]_i_2_n_0\
    );
\led_out[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEBFAAAAAAAA"
    )
        port map (
      I0 => direction2,
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => pwm_in_60,
      I3 => pwm_in_70,
      I4 => \led_pos_reg_n_0_[1]\,
      I5 => \led_pos_reg_n_0_[3]\,
      O => \led_out[8]_i_3_n_0\
    );
\led_out[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFA0C0A0"
    )
        port map (
      I0 => pwm_in_70,
      I1 => pwm_in_80,
      I2 => \led_pos_reg_n_0_[1]\,
      I3 => \led_pos_reg_n_0_[0]\,
      I4 => pwm_in_60,
      O => \led_out[8]_i_4_n_0\
    );
\led_out[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF270000FFFFFFFF"
    )
        port map (
      I0 => \led_pos_reg_n_0_[0]\,
      I1 => pwm_in_100,
      I2 => pwm_in_90,
      I3 => \led_pos_reg_n_0_[1]\,
      I4 => \led_pos_reg_n_0_[3]\,
      I5 => direction2,
      O => \led_out[8]_i_5_n_0\
    );
\led_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0062006266662262"
    )
        port map (
      I0 => \led_pos_reg_n_0_[2]\,
      I1 => \led_pos_reg_n_0_[3]\,
      I2 => \led_out[9]_i_2_n_0\,
      I3 => \led_out[9]_i_3_n_0\,
      I4 => \led_out[9]_i_4_n_0\,
      I5 => \led_out[9]_i_5_n_0\,
      O => \led_out[9]_i_1_n_0\
    );
\led_out[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCA00CA"
    )
        port map (
      I0 => pwm_in_80,
      I1 => pwm_in_70,
      I2 => \led_pos_reg_n_0_[0]\,
      I3 => \led_pos_reg_n_0_[1]\,
      I4 => pwm_in_60,
      O => \led_out[9]_i_2_n_0\
    );
\led_out[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAABFBFFFF"
    )
        port map (
      I0 => direction2,
      I1 => pwm_in_100,
      I2 => \led_pos_reg_n_0_[0]\,
      I3 => pwm_in_90,
      I4 => \led_pos_reg_n_0_[1]\,
      I5 => \led_pos_reg_n_0_[3]\,
      O => \led_out[9]_i_3_n_0\
    );
\led_out[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCA00CA"
    )
        port map (
      I0 => pwm_in_80,
      I1 => pwm_in_90,
      I2 => \led_pos_reg_n_0_[0]\,
      I3 => \led_pos_reg_n_0_[1]\,
      I4 => pwm_in_100,
      O => \led_out[9]_i_4_n_0\
    );
\led_out[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001DFFFFFFFFFF"
    )
        port map (
      I0 => pwm_in_60,
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => pwm_in_70,
      I3 => \led_pos_reg_n_0_[1]\,
      I4 => \led_pos_reg_n_0_[3]\,
      I5 => direction2,
      O => \led_out[9]_i_5_n_0\
    );
\led_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_out[0]_i_1_n_0\,
      Q => led_out(0)
    );
\led_out_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_out[10]_i_1_n_0\,
      Q => led_out(10)
    );
\led_out_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_out[11]_i_1_n_0\,
      Q => led_out(11)
    );
\led_out_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_out[12]_i_1_n_0\,
      Q => led_out(12)
    );
\led_out_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_out[13]_i_1_n_0\,
      Q => led_out(13)
    );
\led_out_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_out[14]_i_1_n_0\,
      Q => led_out(14)
    );
\led_out_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_out[15]_i_1_n_0\,
      Q => led_out(15)
    );
\led_out_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_out[16]_i_1_n_0\,
      Q => led_out(16)
    );
\led_out_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_out[17]_i_1_n_0\,
      Q => led_out(17)
    );
\led_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_out[1]_i_1_n_0\,
      Q => led_out(1)
    );
\led_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_out[2]_i_1_n_0\,
      Q => led_out(2)
    );
\led_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_out[3]_i_1_n_0\,
      Q => led_out(3)
    );
\led_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_out[4]_i_1_n_0\,
      Q => led_out(4)
    );
\led_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_out[5]_i_1_n_0\,
      Q => led_out(5)
    );
\led_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_out[6]_i_1_n_0\,
      Q => led_out(6)
    );
\led_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_out[7]_i_1_n_0\,
      Q => led_out(7)
    );
\led_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_out[8]_i_1_n_0\,
      Q => led_out(8)
    );
\led_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_out[9]_i_1_n_0\,
      Q => led_out(9)
    );
\led_pos[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F404040EFE0EFEF"
    )
        port map (
      I0 => \led_pos[2]_i_3_n_0\,
      I1 => COUNT_MIN(0),
      I2 => direction_reg_n_0,
      I3 => COUNT_MAX(0),
      I4 => \led_pos[1]_i_2_n_0\,
      I5 => \led_pos_reg_n_0_[0]\,
      O => \led_pos[0]_i_1_n_0\
    );
\led_pos[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F404F4FEFE0E0E0"
    )
        port map (
      I0 => \led_pos[2]_i_3_n_0\,
      I1 => COUNT_MIN(1),
      I2 => direction_reg_n_0,
      I3 => COUNT_MAX(1),
      I4 => \led_pos[1]_i_2_n_0\,
      I5 => \led_pos[1]_i_3_n_0\,
      O => \led_pos[1]_i_1_n_0\
    );
\led_pos[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4D44DDDD"
    )
        port map (
      I0 => COUNT_MAX(3),
      I1 => \led_pos_reg_n_0_[3]\,
      I2 => COUNT_MAX(2),
      I3 => \led_pos_reg_n_0_[2]\,
      I4 => \led_pos[3]_i_11_n_0\,
      O => \led_pos[1]_i_2_n_0\
    );
\led_pos[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \led_pos_reg_n_0_[1]\,
      I1 => \led_pos_reg_n_0_[0]\,
      O => \led_pos[1]_i_3_n_0\
    );
\led_pos[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F90FFFF9F900000"
    )
        port map (
      I0 => \led_pos_reg_n_0_[2]\,
      I1 => \led_pos[2]_i_2_n_0\,
      I2 => \led_pos[2]_i_3_n_0\,
      I3 => COUNT_MIN(2),
      I4 => direction_reg_n_0,
      I5 => \led_pos[2]_i_4_n_0\,
      O => \led_pos[2]_i_1_n_0\
    );
\led_pos[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \led_pos_reg_n_0_[1]\,
      I1 => \led_pos_reg_n_0_[0]\,
      O => \led_pos[2]_i_2_n_0\
    );
\led_pos[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0FF00B0"
    )
        port map (
      I0 => \led_pos_reg_n_0_[2]\,
      I1 => COUNT_MIN(2),
      I2 => \led_pos[3]_i_13_n_0\,
      I3 => COUNT_MIN(3),
      I4 => \led_pos_reg_n_0_[3]\,
      O => \led_pos[2]_i_3_n_0\
    );
\led_pos[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F240F2D040FBD0F2"
    )
        port map (
      I0 => COUNT_MAX(3),
      I1 => \led_pos_reg_n_0_[3]\,
      I2 => COUNT_MAX(2),
      I3 => \led_pos_reg_n_0_[2]\,
      I4 => \led_pos[3]_i_11_n_0\,
      I5 => \led_pos[3]_i_12_n_0\,
      O => \led_pos[2]_i_4_n_0\
    );
\led_pos[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEFC"
    )
        port map (
      I0 => \led_pos[3]_i_3_n_0\,
      I1 => update_flag,
      I2 => \led_pos[3]_i_4_n_0\,
      I3 => direction_reg_n_0,
      O => \led_pos[3]_i_1_n_0\
    );
\led_pos[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \led_pos_reg_n_0_[2]\,
      I1 => COUNT_MIN(2),
      O => \led_pos[3]_i_10_n_0\
    );
\led_pos[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20F220F2FFFF20F2"
    )
        port map (
      I0 => COUNT_MAX(0),
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => COUNT_MAX(1),
      I3 => \led_pos_reg_n_0_[1]\,
      I4 => COUNT_MAX(2),
      I5 => \led_pos_reg_n_0_[2]\,
      O => \led_pos[3]_i_11_n_0\
    );
\led_pos[3]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \led_pos_reg_n_0_[1]\,
      I1 => \led_pos_reg_n_0_[0]\,
      O => \led_pos[3]_i_12_n_0\
    );
\led_pos[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F400F0FFFF44F4"
    )
        port map (
      I0 => COUNT_MIN(0),
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => \led_pos_reg_n_0_[2]\,
      I3 => COUNT_MIN(2),
      I4 => \led_pos_reg_n_0_[1]\,
      I5 => COUNT_MIN(1),
      O => \led_pos[3]_i_13_n_0\
    );
\led_pos[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFFFFFFFFEFFE"
    )
        port map (
      I0 => \led_pos[3]_i_7_n_0\,
      I1 => \led_pos[3]_i_8_n_0\,
      I2 => \led_pos_reg_n_0_[0]\,
      I3 => COUNT_MAX(0),
      I4 => COUNT_MAX(3),
      I5 => \led_pos_reg_n_0_[3]\,
      O => \led_pos[3]_i_3_n_0\
    );
\led_pos[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBEFFFFFFFFFFBE"
    )
        port map (
      I0 => \led_pos[3]_i_9_n_0\,
      I1 => COUNT_MIN(1),
      I2 => \led_pos_reg_n_0_[1]\,
      I3 => \led_pos[3]_i_10_n_0\,
      I4 => \led_pos_reg_n_0_[0]\,
      I5 => COUNT_MIN(0),
      O => \led_pos[3]_i_4_n_0\
    );
\led_pos[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888BA88AA88"
    )
        port map (
      I0 => COUNT_MAX(3),
      I1 => \led_pos_reg_n_0_[3]\,
      I2 => COUNT_MAX(2),
      I3 => \led_pos_reg_n_0_[2]\,
      I4 => \led_pos[3]_i_11_n_0\,
      I5 => \led_pos[3]_i_12_n_0\,
      O => \led_pos[3]_i_5_n_0\
    );
\led_pos[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFEEEEFFFF0100"
    )
        port map (
      I0 => \led_pos[2]_i_2_n_0\,
      I1 => \led_pos_reg_n_0_[2]\,
      I2 => COUNT_MIN(2),
      I3 => \led_pos[3]_i_13_n_0\,
      I4 => COUNT_MIN(3),
      I5 => \led_pos_reg_n_0_[3]\,
      O => \led_pos[3]_i_6_n_0\
    );
\led_pos[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \led_pos_reg_n_0_[2]\,
      I1 => COUNT_MAX(2),
      O => \led_pos[3]_i_7_n_0\
    );
\led_pos[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \led_pos_reg_n_0_[1]\,
      I1 => COUNT_MAX(1),
      O => \led_pos[3]_i_8_n_0\
    );
\led_pos[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \led_pos_reg_n_0_[3]\,
      I1 => COUNT_MIN(3),
      O => \led_pos[3]_i_9_n_0\
    );
\led_pos_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_1hz,
      CE => \led_pos[3]_i_1_n_0\,
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_pos[0]_i_1_n_0\,
      Q => \led_pos_reg_n_0_[0]\
    );
\led_pos_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_1hz,
      CE => \led_pos[3]_i_1_n_0\,
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_pos[1]_i_1_n_0\,
      Q => \led_pos_reg_n_0_[1]\
    );
\led_pos_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_1hz,
      CE => \led_pos[3]_i_1_n_0\,
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_pos[2]_i_1_n_0\,
      Q => \led_pos_reg_n_0_[2]\
    );
\led_pos_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_1hz,
      CE => \led_pos[3]_i_1_n_0\,
      CLR => \led_out[17]_i_2_n_0\,
      D => \led_pos_reg[3]_i_2_n_0\,
      Q => \led_pos_reg_n_0_[3]\
    );
\led_pos_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \led_pos[3]_i_5_n_0\,
      I1 => \led_pos[3]_i_6_n_0\,
      O => \led_pos_reg[3]_i_2_n_0\,
      S => direction_reg_n_0
    );
\update_flag0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \update_flag0_inferred__0/i__carry_n_0\,
      CO(2) => \update_flag0_inferred__0/i__carry_n_1\,
      CO(1) => \update_flag0_inferred__0/i__carry_n_2\,
      CO(0) => \update_flag0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_update_flag0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3__1_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\update_flag0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \update_flag0_inferred__0/i__carry_n_0\,
      CO(3) => \update_flag0_inferred__0/i__carry__0_n_0\,
      CO(2) => \update_flag0_inferred__0/i__carry__0_n_1\,
      CO(1) => \update_flag0_inferred__0/i__carry__0_n_2\,
      CO(0) => \update_flag0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_update_flag0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__1_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
\update_flag0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \update_flag0_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_update_flag0_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => update_flag0,
      CO(1) => \update_flag0_inferred__0/i__carry__1_n_2\,
      CO(0) => \update_flag0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_update_flag0_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry_i_1_n_0\,
      S(1) => \i__carry_i_2__1_n_0\,
      S(0) => \i__carry_i_3__0_n_0\
    );
update_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0DFFFDFD0000F0F0"
    )
        port map (
      I0 => update_flag0,
      I1 => \led_pos[1]_i_2_n_0\,
      I2 => update_flag_i_2_n_0,
      I3 => update_flag_i_3_n_0,
      I4 => update_flag_i_4_n_0,
      I5 => update_flag,
      O => update_flag_i_1_n_0
    );
update_flag_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAEB"
    )
        port map (
      I0 => direction_reg_n_0,
      I1 => COUNT_MIN(3),
      I2 => \led_pos_reg_n_0_[3]\,
      I3 => update_flag_i_5_n_0,
      I4 => update_flag,
      O => update_flag_i_2_n_0
    );
update_flag_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000049999999"
    )
        port map (
      I0 => COUNT_MIN(3),
      I1 => \led_pos_reg_n_0_[3]\,
      I2 => COUNT_MIN(1),
      I3 => COUNT_MIN(0),
      I4 => COUNT_MIN(2),
      I5 => update_flag_i_6_n_0,
      O => update_flag_i_3_n_0
    );
update_flag_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AA8"
    )
        port map (
      I0 => direction_reg_n_0,
      I1 => update_flag_i_7_n_0,
      I2 => COUNT_MAX(3),
      I3 => \led_pos_reg_n_0_[3]\,
      I4 => update_flag,
      O => update_flag_i_4_n_0
    );
update_flag_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => COUNT_MIN(0),
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => \led_pos_reg_n_0_[2]\,
      I3 => COUNT_MIN(2),
      I4 => \led_pos_reg_n_0_[1]\,
      I5 => COUNT_MIN(1),
      O => update_flag_i_5_n_0
    );
update_flag_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7BDEFFFEFFFF7BD"
    )
        port map (
      I0 => \led_pos_reg_n_0_[0]\,
      I1 => \led_pos_reg_n_0_[1]\,
      I2 => COUNT_MIN(0),
      I3 => COUNT_MIN(1),
      I4 => COUNT_MIN(2),
      I5 => \led_pos_reg_n_0_[2]\,
      O => update_flag_i_6_n_0
    );
update_flag_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => COUNT_MAX(0),
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => \led_pos_reg_n_0_[1]\,
      I3 => COUNT_MAX(1),
      I4 => \led_pos_reg_n_0_[2]\,
      I5 => COUNT_MAX(2),
      O => update_flag_i_7_n_0
    );
update_flag_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_1hz,
      CE => '1',
      D => update_flag_i_1_n_0,
      PRE => \led_out[17]_i_2_n_0\,
      Q => update_flag
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "LED_flow_led_pwm_controller_0_0,led_pwm_controller,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "led_pwm_controller,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_pwm_controller
     port map (
      clk => clk,
      clk_1hz => clk_1hz,
      dir_change => dir_change,
      led_out(17 downto 0) => led_out(17 downto 0),
      pwm_in_100 => pwm_in_100,
      pwm_in_60 => pwm_in_60,
      pwm_in_70 => pwm_in_70,
      pwm_in_80 => pwm_in_80,
      pwm_in_90 => pwm_in_90,
      range_ctrl(17 downto 0) => range_ctrl(17 downto 0),
      rst_n => rst_n
    );
end STRUCTURE;
