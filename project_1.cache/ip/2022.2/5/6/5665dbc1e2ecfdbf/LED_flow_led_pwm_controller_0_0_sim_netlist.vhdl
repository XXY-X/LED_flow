-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Dec 17 16:27:28 2024
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
    led_out : out STD_LOGIC_VECTOR ( 9 downto 0 );
    clk_1hz : in STD_LOGIC;
    dir_change : in STD_LOGIC;
    clk : in STD_LOGIC;
    pwm_in_100 : in STD_LOGIC;
    pwm_in_90 : in STD_LOGIC;
    pwm_in_80 : in STD_LOGIC;
    pwm_in_60 : in STD_LOGIC;
    pwm_in_70 : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_pwm_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_pwm_controller is
  signal dir_change_debounced : STD_LOGIC;
  signal direction : STD_LOGIC;
  signal direction_i_1_n_0 : STD_LOGIC;
  signal \led_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \led_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \led_out[9]_i_2_n_0\ : STD_LOGIC;
  signal \led_pos[0]_i_1_n_0\ : STD_LOGIC;
  signal \led_pos[1]_i_1_n_0\ : STD_LOGIC;
  signal \led_pos[2]_i_1_n_0\ : STD_LOGIC;
  signal \led_pos_reg_n_0_[0]\ : STD_LOGIC;
  signal \led_pos_reg_n_0_[1]\ : STD_LOGIC;
  signal \led_pos_reg_n_0_[2]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \led_out[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led_out[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led_out[5]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \led_out[6]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \led_out[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_out[9]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \led_pos[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led_pos[1]_i_1\ : label is "soft_lutpair2";
begin
dir_change_debounced_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[9]_i_2_n_0\,
      D => dir_change,
      Q => dir_change_debounced
    );
direction_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => dir_change_debounced,
      I1 => dir_change,
      I2 => direction,
      O => direction_i_1_n_0
    );
direction_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[9]_i_2_n_0\,
      D => direction_i_1_n_0,
      Q => direction
    );
\led_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \led_pos_reg_n_0_[1]\,
      I1 => pwm_in_60,
      I2 => \led_pos_reg_n_0_[0]\,
      I3 => \led_pos_reg_n_0_[2]\,
      O => p_0_in(0)
    );
\led_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \led_pos_reg_n_0_[1]\,
      I1 => pwm_in_60,
      I2 => \led_pos_reg_n_0_[0]\,
      I3 => pwm_in_70,
      I4 => \led_pos_reg_n_0_[2]\,
      O => p_0_in(1)
    );
\led_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => pwm_in_80,
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => pwm_in_70,
      I3 => \led_pos_reg_n_0_[1]\,
      I4 => pwm_in_60,
      I5 => \led_pos_reg_n_0_[2]\,
      O => p_0_in(2)
    );
\led_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \led_out[5]_i_3_n_0\,
      I1 => \led_pos_reg_n_0_[1]\,
      I2 => pwm_in_70,
      I3 => \led_pos_reg_n_0_[0]\,
      I4 => pwm_in_60,
      I5 => \led_pos_reg_n_0_[2]\,
      O => p_0_in(3)
    );
\led_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => \led_pos_reg_n_0_[0]\,
      I1 => pwm_in_60,
      I2 => \led_pos_reg_n_0_[2]\,
      I3 => \led_out[4]_i_2_n_0\,
      I4 => \led_pos_reg_n_0_[1]\,
      I5 => \led_out[6]_i_2_n_0\,
      O => p_0_in(4)
    );
\led_out[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pwm_in_70,
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => pwm_in_80,
      O => \led_out[4]_i_2_n_0\
    );
\led_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => \led_out[5]_i_2_n_0\,
      I1 => \led_pos_reg_n_0_[2]\,
      I2 => \led_out[5]_i_3_n_0\,
      I3 => \led_pos_reg_n_0_[1]\,
      I4 => pwm_in_100,
      I5 => \led_pos_reg_n_0_[0]\,
      O => p_0_in(5)
    );
\led_out[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => pwm_in_70,
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => pwm_in_60,
      I3 => \led_pos_reg_n_0_[1]\,
      O => \led_out[5]_i_2_n_0\
    );
\led_out[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pwm_in_80,
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => pwm_in_90,
      O => \led_out[5]_i_3_n_0\
    );
\led_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF0000E200E200"
    )
        port map (
      I0 => pwm_in_80,
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => pwm_in_70,
      I3 => \led_pos_reg_n_0_[2]\,
      I4 => \led_out[6]_i_2_n_0\,
      I5 => \led_pos_reg_n_0_[1]\,
      O => p_0_in(6)
    );
\led_out[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pwm_in_90,
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => pwm_in_100,
      O => \led_out[6]_i_2_n_0\
    );
\led_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000000C0A0C0A0"
    )
        port map (
      I0 => pwm_in_90,
      I1 => pwm_in_80,
      I2 => \led_pos_reg_n_0_[2]\,
      I3 => \led_pos_reg_n_0_[0]\,
      I4 => pwm_in_100,
      I5 => \led_pos_reg_n_0_[1]\,
      O => p_0_in(7)
    );
\led_out[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45400000"
    )
        port map (
      I0 => \led_pos_reg_n_0_[1]\,
      I1 => pwm_in_90,
      I2 => \led_pos_reg_n_0_[0]\,
      I3 => pwm_in_100,
      I4 => \led_pos_reg_n_0_[2]\,
      O => p_0_in(8)
    );
\led_out[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \led_pos_reg_n_0_[1]\,
      I1 => pwm_in_100,
      I2 => \led_pos_reg_n_0_[0]\,
      I3 => \led_pos_reg_n_0_[2]\,
      O => p_0_in(9)
    );
\led_out[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \led_out[9]_i_2_n_0\
    );
\led_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[9]_i_2_n_0\,
      D => p_0_in(0),
      Q => led_out(0)
    );
\led_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[9]_i_2_n_0\,
      D => p_0_in(1),
      Q => led_out(1)
    );
\led_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[9]_i_2_n_0\,
      D => p_0_in(2),
      Q => led_out(2)
    );
\led_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[9]_i_2_n_0\,
      D => p_0_in(3),
      Q => led_out(3)
    );
\led_out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[9]_i_2_n_0\,
      D => p_0_in(4),
      Q => led_out(4)
    );
\led_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[9]_i_2_n_0\,
      D => p_0_in(5),
      Q => led_out(5)
    );
\led_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[9]_i_2_n_0\,
      D => p_0_in(6),
      Q => led_out(6)
    );
\led_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[9]_i_2_n_0\,
      D => p_0_in(7),
      Q => led_out(7)
    );
\led_out_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[9]_i_2_n_0\,
      D => p_0_in(8),
      Q => led_out(8)
    );
\led_out_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \led_out[9]_i_2_n_0\,
      D => p_0_in(9),
      Q => led_out(9)
    );
\led_pos[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00BF"
    )
        port map (
      I0 => direction,
      I1 => \led_pos_reg_n_0_[1]\,
      I2 => \led_pos_reg_n_0_[2]\,
      I3 => \led_pos_reg_n_0_[0]\,
      O => \led_pos[0]_i_1_n_0\
    );
\led_pos[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8294"
    )
        port map (
      I0 => direction,
      I1 => \led_pos_reg_n_0_[0]\,
      I2 => \led_pos_reg_n_0_[1]\,
      I3 => \led_pos_reg_n_0_[2]\,
      O => \led_pos[1]_i_1_n_0\
    );
\led_pos[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9886"
    )
        port map (
      I0 => direction,
      I1 => \led_pos_reg_n_0_[2]\,
      I2 => \led_pos_reg_n_0_[0]\,
      I3 => \led_pos_reg_n_0_[1]\,
      O => \led_pos[2]_i_1_n_0\
    );
\led_pos_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_1hz,
      CE => '1',
      CLR => \led_out[9]_i_2_n_0\,
      D => \led_pos[0]_i_1_n_0\,
      Q => \led_pos_reg_n_0_[0]\
    );
\led_pos_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_1hz,
      CE => '1',
      CLR => \led_out[9]_i_2_n_0\,
      D => \led_pos[1]_i_1_n_0\,
      Q => \led_pos_reg_n_0_[1]\
    );
\led_pos_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_1hz,
      CE => '1',
      CLR => \led_out[9]_i_2_n_0\,
      D => \led_pos[2]_i_1_n_0\,
      Q => \led_pos_reg_n_0_[2]\
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
    led_out : out STD_LOGIC_VECTOR ( 9 downto 0 )
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
      led_out(9 downto 0) => led_out(9 downto 0),
      pwm_in_100 => pwm_in_100,
      pwm_in_60 => pwm_in_60,
      pwm_in_70 => pwm_in_70,
      pwm_in_80 => pwm_in_80,
      pwm_in_90 => pwm_in_90,
      rst_n => rst_n
    );
end STRUCTURE;
