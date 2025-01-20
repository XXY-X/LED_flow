-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Dec 17 16:27:32 2024
-- Host        : LAPTOP-53JB5545 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LED_flow_pwm_generator_0_0_sim_netlist.vhdl
-- Design      : LED_flow_pwm_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_generator is
  port (
    pwm_out_100 : out STD_LOGIC;
    pwm_out_90 : out STD_LOGIC;
    pwm_out_80 : out STD_LOGIC;
    pwm_out_70 : out STD_LOGIC;
    pwm_out_60 : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_generator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_generator is
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal pwm_out_100_i_1_n_0 : STD_LOGIC;
  signal pwm_out_60_i_1_n_0 : STD_LOGIC;
  signal pwm_out_700_n_0 : STD_LOGIC;
  signal pwm_out_80_i_1_n_0 : STD_LOGIC;
  signal pwm_out_90_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of pwm_out_1000 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of pwm_out_60_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of pwm_out_700 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of pwm_out_90_i_1 : label is "soft_lutpair2";
begin
\counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0057"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(1),
      I2 => counter_reg(2),
      I3 => counter_reg(0),
      O => \counter[0]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(1),
      I2 => counter_reg(0),
      O => \p_0_in__0\(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1450"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(1),
      I2 => counter_reg(2),
      I3 => counter_reg(0),
      O => \p_0_in__0\(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4002"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(1),
      I2 => counter_reg(2),
      I3 => counter_reg(0),
      O => \p_0_in__0\(3)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_100_i_1_n_0,
      D => \counter[0]_i_1_n_0\,
      Q => counter_reg(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_100_i_1_n_0,
      D => \p_0_in__0\(1),
      Q => counter_reg(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_100_i_1_n_0,
      D => \p_0_in__0\(2),
      Q => counter_reg(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_100_i_1_n_0,
      D => \p_0_in__0\(3),
      Q => counter_reg(3)
    );
pwm_out_1000: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => counter_reg(1),
      I1 => counter_reg(2),
      I2 => counter_reg(3),
      O => p_0_in
    );
pwm_out_100_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => pwm_out_100_i_1_n_0
    );
pwm_out_100_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_100_i_1_n_0,
      D => p_0_in,
      Q => pwm_out_100
    );
pwm_out_60_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter_reg(2),
      I2 => counter_reg(1),
      O => pwm_out_60_i_1_n_0
    );
pwm_out_60_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_100_i_1_n_0,
      D => pwm_out_60_i_1_n_0,
      Q => pwm_out_60
    );
pwm_out_700: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007F"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(1),
      I2 => counter_reg(2),
      I3 => counter_reg(3),
      O => pwm_out_700_n_0
    );
pwm_out_70_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_100_i_1_n_0,
      D => pwm_out_700_n_0,
      Q => pwm_out_70
    );
pwm_out_80_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(3),
      O => pwm_out_80_i_1_n_0
    );
pwm_out_80_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_100_i_1_n_0,
      D => pwm_out_80_i_1_n_0,
      Q => pwm_out_80
    );
pwm_out_90_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(2),
      I2 => counter_reg(1),
      I3 => counter_reg(3),
      O => pwm_out_90_i_1_n_0
    );
pwm_out_90_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => pwm_out_100_i_1_n_0,
      D => pwm_out_90_i_1_n_0,
      Q => pwm_out_90
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    pwm_out_100 : out STD_LOGIC;
    pwm_out_90 : out STD_LOGIC;
    pwm_out_80 : out STD_LOGIC;
    pwm_out_70 : out STD_LOGIC;
    pwm_out_60 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "LED_flow_pwm_generator_0_0,pwm_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pwm_generator,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pwm_generator
     port map (
      clk => clk,
      pwm_out_100 => pwm_out_100,
      pwm_out_60 => pwm_out_60,
      pwm_out_70 => pwm_out_70,
      pwm_out_80 => pwm_out_80,
      pwm_out_90 => pwm_out_90,
      rst_n => rst_n
    );
end STRUCTURE;
