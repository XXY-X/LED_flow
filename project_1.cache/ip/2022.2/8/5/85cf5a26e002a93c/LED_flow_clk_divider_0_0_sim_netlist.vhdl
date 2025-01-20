-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Dec 19 21:30:58 2024
-- Host        : LAPTOP-53JB5545 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ LED_flow_clk_divider_0_0_sim_netlist.vhdl
-- Design      : LED_flow_clk_divider_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_divider is
  port (
    clk_out : out STD_LOGIC;
    key_in : in STD_LOGIC;
    clk_in : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_divider;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_divider is
  signal \^clk_out\ : STD_LOGIC;
  signal clk_out_i_1_n_0 : STD_LOGIC;
  signal clk_out_i_2_n_0 : STD_LOGIC;
  signal \counter1_carry__0_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_n_1\ : STD_LOGIC;
  signal \counter1_carry__0_n_2\ : STD_LOGIC;
  signal \counter1_carry__0_n_3\ : STD_LOGIC;
  signal \counter1_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \counter1_carry_i_1__1_n_0\ : STD_LOGIC;
  signal counter1_carry_i_1_n_0 : STD_LOGIC;
  signal \counter1_carry_i_2__0_n_0\ : STD_LOGIC;
  signal counter1_carry_i_2_n_0 : STD_LOGIC;
  signal \counter1_carry_i_3__0_n_0\ : STD_LOGIC;
  signal counter1_carry_i_3_n_0 : STD_LOGIC;
  signal \counter1_carry_i_4__0_n_0\ : STD_LOGIC;
  signal counter1_carry_i_4_n_0 : STD_LOGIC;
  signal counter1_carry_n_0 : STD_LOGIC;
  signal counter1_carry_n_1 : STD_LOGIC;
  signal counter1_carry_n_2 : STD_LOGIC;
  signal counter1_carry_n_3 : STD_LOGIC;
  signal counter2 : STD_LOGIC_VECTOR ( 19 downto 3 );
  signal \counter2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter2_carry__0_n_0\ : STD_LOGIC;
  signal \counter2_carry__0_n_1\ : STD_LOGIC;
  signal \counter2_carry__0_n_2\ : STD_LOGIC;
  signal \counter2_carry__0_n_3\ : STD_LOGIC;
  signal \counter2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \counter2_carry__1_n_0\ : STD_LOGIC;
  signal \counter2_carry__1_n_1\ : STD_LOGIC;
  signal \counter2_carry__1_n_2\ : STD_LOGIC;
  signal \counter2_carry__1_n_3\ : STD_LOGIC;
  signal \counter2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \counter2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \counter2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \counter2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \counter2_carry__2_n_0\ : STD_LOGIC;
  signal \counter2_carry__2_n_1\ : STD_LOGIC;
  signal \counter2_carry__2_n_2\ : STD_LOGIC;
  signal \counter2_carry__2_n_3\ : STD_LOGIC;
  signal counter2_carry_i_1_n_0 : STD_LOGIC;
  signal counter2_carry_i_2_n_0 : STD_LOGIC;
  signal counter2_carry_i_3_n_0 : STD_LOGIC;
  signal counter2_carry_i_4_n_0 : STD_LOGIC;
  signal counter2_carry_n_0 : STD_LOGIC;
  signal counter2_carry_n_1 : STD_LOGIC;
  signal counter2_carry_n_2 : STD_LOGIC;
  signal counter2_carry_n_3 : STD_LOGIC;
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter[20]_i_3_n_0\ : STD_LOGIC;
  signal \counter[20]_i_4_n_0\ : STD_LOGIC;
  signal \counter[20]_i_5_n_0\ : STD_LOGIC;
  signal \counter[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter[24]_i_3_n_0\ : STD_LOGIC;
  signal \counter[24]_i_4_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter[8]_i_5_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal divisor : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \divisor[0]_i_1_n_0\ : STD_LOGIC;
  signal \divisor[10]_i_1_n_0\ : STD_LOGIC;
  signal \divisor[11]_i_1_n_0\ : STD_LOGIC;
  signal \divisor[14]_i_1_n_0\ : STD_LOGIC;
  signal \divisor[16]_i_1_n_0\ : STD_LOGIC;
  signal \divisor[23]_i_1_n_0\ : STD_LOGIC;
  signal \divisor[3]_i_1_n_0\ : STD_LOGIC;
  signal \divisor[4]_i_1_n_0\ : STD_LOGIC;
  signal \divisor[5]_i_1_n_0\ : STD_LOGIC;
  signal \divisor[6]_i_1_n_0\ : STD_LOGIC;
  signal \divisor[7]_i_1_n_0\ : STD_LOGIC;
  signal divisor_select : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \divisor_select[0]_i_1_n_0\ : STD_LOGIC;
  signal \divisor_select[1]_i_1_n_0\ : STD_LOGIC;
  signal key_debounced : STD_LOGIC;
  signal load : STD_LOGIC;
  signal NLW_counter1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_counter1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_counter1_carry_i_5_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_counter1_carry_i_5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \divisor[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \divisor[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \divisor[11]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \divisor[14]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \divisor[16]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \divisor[23]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \divisor[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \divisor[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \divisor[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \divisor[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \divisor_select[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \divisor_select[1]_i_1\ : label is "soft_lutpair0";
begin
  clk_out <= \^clk_out\;
clk_out_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => load,
      I1 => \^clk_out\,
      O => clk_out_i_1_n_0
    );
clk_out_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => clk_out_i_2_n_0
    );
clk_out_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => clk_out_i_1_n_0,
      Q => \^clk_out\
    );
counter1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter1_carry_n_0,
      CO(2) => counter1_carry_n_1,
      CO(1) => counter1_carry_n_2,
      CO(0) => counter1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_counter1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => counter1_carry_i_1_n_0,
      S(2) => counter1_carry_i_2_n_0,
      S(1) => counter1_carry_i_3_n_0,
      S(0) => counter1_carry_i_4_n_0
    );
\counter1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter1_carry_n_0,
      CO(3) => \counter1_carry__0_n_0\,
      CO(2) => \counter1_carry__0_n_1\,
      CO(1) => \counter1_carry__0_n_2\,
      CO(0) => \counter1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter1_carry_i_1__0_n_0\,
      S(2) => \counter1_carry_i_2__0_n_0\,
      S(1) => \counter1_carry_i_3__0_n_0\,
      S(0) => \counter1_carry_i_4__0_n_0\
    );
\counter1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_carry__0_n_0\,
      CO(3 downto 1) => \NLW_counter1_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => load,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \counter1_carry_i_1__1_n_0\
    );
counter1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(9),
      I1 => counter2(9),
      I2 => counter2(11),
      I3 => counter_reg(11),
      I4 => counter2(10),
      I5 => counter_reg(10),
      O => counter1_carry_i_1_n_0
    );
\counter1_carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(21),
      I1 => divisor(5),
      I2 => divisor(23),
      I3 => counter_reg(23),
      I4 => divisor(9),
      I5 => counter_reg(22),
      O => \counter1_carry_i_1__0_n_0\
    );
\counter1_carry_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09000009"
    )
        port map (
      I0 => counter_reg(24),
      I1 => divisor(10),
      I2 => counter_reg(26),
      I3 => divisor(7),
      I4 => counter_reg(25),
      O => \counter1_carry_i_1__1_n_0\
    );
counter1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(6),
      I1 => counter2(6),
      I2 => counter2(8),
      I3 => counter_reg(8),
      I4 => counter2(7),
      I5 => counter_reg(7),
      O => counter1_carry_i_2_n_0
    );
\counter1_carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(18),
      I1 => counter2(18),
      I2 => divisor(10),
      I3 => counter_reg(20),
      I4 => counter2(19),
      I5 => counter_reg(19),
      O => \counter1_carry_i_2__0_n_0\
    );
counter1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(3),
      I1 => counter2(3),
      I2 => counter2(5),
      I3 => counter_reg(5),
      I4 => counter2(4),
      I5 => counter_reg(4),
      O => counter1_carry_i_3_n_0
    );
\counter1_carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(15),
      I1 => counter2(15),
      I2 => counter2(17),
      I3 => counter_reg(17),
      I4 => counter2(16),
      I5 => counter_reg(16),
      O => \counter1_carry_i_3__0_n_0\
    );
counter1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0840"
    )
        port map (
      I0 => counter_reg(0),
      I1 => counter_reg(2),
      I2 => divisor(0),
      I3 => counter_reg(1),
      O => counter1_carry_i_4_n_0
    );
\counter1_carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(12),
      I1 => counter2(12),
      I2 => counter2(14),
      I3 => counter_reg(14),
      I4 => counter2(13),
      I5 => counter_reg(13),
      O => \counter1_carry_i_4__0_n_0\
    );
counter1_carry_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_carry__2_n_0\,
      CO(3 downto 1) => NLW_counter1_carry_i_5_CO_UNCONNECTED(3 downto 1),
      CO(0) => counter2(19),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_counter1_carry_i_5_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
counter2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter2_carry_n_0,
      CO(2) => counter2_carry_n_1,
      CO(1) => counter2_carry_n_2,
      CO(0) => counter2_carry_n_3,
      CYINIT => divisor(0),
      DI(3 downto 0) => divisor(6 downto 3),
      O(3 downto 0) => counter2(6 downto 3),
      S(3) => counter2_carry_i_1_n_0,
      S(2) => counter2_carry_i_2_n_0,
      S(1) => counter2_carry_i_3_n_0,
      S(0) => counter2_carry_i_4_n_0
    );
\counter2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter2_carry_n_0,
      CO(3) => \counter2_carry__0_n_0\,
      CO(2) => \counter2_carry__0_n_1\,
      CO(1) => \counter2_carry__0_n_2\,
      CO(0) => \counter2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => divisor(10 downto 9),
      DI(1) => divisor(3),
      DI(0) => divisor(7),
      O(3 downto 0) => counter2(10 downto 7),
      S(3) => \counter2_carry__0_i_1_n_0\,
      S(2) => \counter2_carry__0_i_2_n_0\,
      S(1) => \counter2_carry__0_i_3_n_0\,
      S(0) => \counter2_carry__0_i_4_n_0\
    );
\counter2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(10),
      O => \counter2_carry__0_i_1_n_0\
    );
\counter2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(9),
      O => \counter2_carry__0_i_2_n_0\
    );
\counter2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(3),
      O => \counter2_carry__0_i_3_n_0\
    );
\counter2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(7),
      O => \counter2_carry__0_i_4_n_0\
    );
\counter2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_carry__0_n_0\,
      CO(3) => \counter2_carry__1_n_0\,
      CO(2) => \counter2_carry__1_n_1\,
      CO(1) => \counter2_carry__1_n_2\,
      CO(0) => \counter2_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => divisor(14),
      DI(2) => divisor(5),
      DI(1) => divisor(6),
      DI(0) => divisor(11),
      O(3 downto 0) => counter2(14 downto 11),
      S(3) => \counter2_carry__1_i_1_n_0\,
      S(2) => \counter2_carry__1_i_2_n_0\,
      S(1) => \counter2_carry__1_i_3_n_0\,
      S(0) => \counter2_carry__1_i_4_n_0\
    );
\counter2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(14),
      O => \counter2_carry__1_i_1_n_0\
    );
\counter2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(5),
      O => \counter2_carry__1_i_2_n_0\
    );
\counter2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(6),
      O => \counter2_carry__1_i_3_n_0\
    );
\counter2_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(11),
      O => \counter2_carry__1_i_4_n_0\
    );
\counter2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_carry__1_n_0\,
      CO(3) => \counter2_carry__2_n_0\,
      CO(2) => \counter2_carry__2_n_1\,
      CO(1) => \counter2_carry__2_n_2\,
      CO(0) => \counter2_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => divisor(14),
      DI(2) => divisor(3),
      DI(1) => divisor(16),
      DI(0) => divisor(10),
      O(3 downto 0) => counter2(18 downto 15),
      S(3) => \counter2_carry__2_i_1_n_0\,
      S(2) => \counter2_carry__2_i_2_n_0\,
      S(1) => \counter2_carry__2_i_3_n_0\,
      S(0) => \counter2_carry__2_i_4_n_0\
    );
\counter2_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(14),
      O => \counter2_carry__2_i_1_n_0\
    );
\counter2_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(3),
      O => \counter2_carry__2_i_2_n_0\
    );
\counter2_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(16),
      O => \counter2_carry__2_i_3_n_0\
    );
\counter2_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(10),
      O => \counter2_carry__2_i_4_n_0\
    );
counter2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(6),
      O => counter2_carry_i_1_n_0
    );
counter2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(5),
      O => counter2_carry_i_2_n_0
    );
counter2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(4),
      O => counter2_carry_i_3_n_0
    );
counter2_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(3),
      O => counter2_carry_i_4_n_0
    );
\counter[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(0),
      I1 => load,
      O => \counter[0]_i_2_n_0\
    );
\counter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(3),
      I1 => load,
      O => \counter[0]_i_3_n_0\
    );
\counter[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(2),
      I1 => load,
      O => \counter[0]_i_4_n_0\
    );
\counter[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(1),
      I1 => load,
      O => \counter[0]_i_5_n_0\
    );
\counter[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_reg(0),
      I1 => load,
      O => \counter[0]_i_6_n_0\
    );
\counter[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(15),
      I1 => load,
      O => \counter[12]_i_2_n_0\
    );
\counter[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(14),
      I1 => load,
      O => \counter[12]_i_3_n_0\
    );
\counter[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(13),
      I1 => load,
      O => \counter[12]_i_4_n_0\
    );
\counter[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(12),
      I1 => load,
      O => \counter[12]_i_5_n_0\
    );
\counter[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(19),
      I1 => load,
      O => \counter[16]_i_2_n_0\
    );
\counter[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(18),
      I1 => load,
      O => \counter[16]_i_3_n_0\
    );
\counter[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(17),
      I1 => load,
      O => \counter[16]_i_4_n_0\
    );
\counter[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(16),
      I1 => load,
      O => \counter[16]_i_5_n_0\
    );
\counter[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(23),
      I1 => load,
      O => \counter[20]_i_2_n_0\
    );
\counter[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(22),
      I1 => load,
      O => \counter[20]_i_3_n_0\
    );
\counter[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(21),
      I1 => load,
      O => \counter[20]_i_4_n_0\
    );
\counter[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(20),
      I1 => load,
      O => \counter[20]_i_5_n_0\
    );
\counter[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(26),
      I1 => load,
      O => \counter[24]_i_2_n_0\
    );
\counter[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(25),
      I1 => load,
      O => \counter[24]_i_3_n_0\
    );
\counter[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(24),
      I1 => load,
      O => \counter[24]_i_4_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(7),
      I1 => load,
      O => \counter[4]_i_2_n_0\
    );
\counter[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(6),
      I1 => load,
      O => \counter[4]_i_3_n_0\
    );
\counter[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(5),
      I1 => load,
      O => \counter[4]_i_4_n_0\
    );
\counter[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(4),
      I1 => load,
      O => \counter[4]_i_5_n_0\
    );
\counter[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(11),
      I1 => load,
      O => \counter[8]_i_2_n_0\
    );
\counter[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(10),
      I1 => load,
      O => \counter[8]_i_3_n_0\
    );
\counter[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(9),
      I1 => load,
      O => \counter[8]_i_4_n_0\
    );
\counter[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter_reg(8),
      I1 => load,
      O => \counter[8]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[0]_i_1_n_7\,
      Q => counter_reg(0)
    );
\counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_1_n_0\,
      CO(2) => \counter_reg[0]_i_1_n_1\,
      CO(1) => \counter_reg[0]_i_1_n_2\,
      CO(0) => \counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter[0]_i_2_n_0\,
      O(3) => \counter_reg[0]_i_1_n_4\,
      O(2) => \counter_reg[0]_i_1_n_5\,
      O(1) => \counter_reg[0]_i_1_n_6\,
      O(0) => \counter_reg[0]_i_1_n_7\,
      S(3) => \counter[0]_i_3_n_0\,
      S(2) => \counter[0]_i_4_n_0\,
      S(1) => \counter[0]_i_5_n_0\,
      S(0) => \counter[0]_i_6_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12)
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3) => \counter[12]_i_2_n_0\,
      S(2) => \counter[12]_i_3_n_0\,
      S(1) => \counter[12]_i_4_n_0\,
      S(0) => \counter[12]_i_5_n_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16)
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3) => \counter[16]_i_2_n_0\,
      S(2) => \counter[16]_i_3_n_0\,
      S(1) => \counter[16]_i_4_n_0\,
      S(0) => \counter[16]_i_5_n_0\
    );
\counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18)
    );
\counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[0]_i_1_n_6\,
      Q => counter_reg(1)
    );
\counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[20]_i_1_n_7\,
      Q => counter_reg(20)
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2) => \counter_reg[20]_i_1_n_1\,
      CO(1) => \counter_reg[20]_i_1_n_2\,
      CO(0) => \counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[20]_i_1_n_4\,
      O(2) => \counter_reg[20]_i_1_n_5\,
      O(1) => \counter_reg[20]_i_1_n_6\,
      O(0) => \counter_reg[20]_i_1_n_7\,
      S(3) => \counter[20]_i_2_n_0\,
      S(2) => \counter[20]_i_3_n_0\,
      S(1) => \counter[20]_i_4_n_0\,
      S(0) => \counter[20]_i_5_n_0\
    );
\counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[20]_i_1_n_6\,
      Q => counter_reg(21)
    );
\counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[20]_i_1_n_5\,
      Q => counter_reg(22)
    );
\counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[20]_i_1_n_4\,
      Q => counter_reg(23)
    );
\counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[24]_i_1_n_7\,
      Q => counter_reg(24)
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3 downto 2) => \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_reg[24]_i_1_n_2\,
      CO(0) => \counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_reg[24]_i_1_O_UNCONNECTED\(3),
      O(2) => \counter_reg[24]_i_1_n_5\,
      O(1) => \counter_reg[24]_i_1_n_6\,
      O(0) => \counter_reg[24]_i_1_n_7\,
      S(3) => '0',
      S(2) => \counter[24]_i_2_n_0\,
      S(1) => \counter[24]_i_3_n_0\,
      S(0) => \counter[24]_i_4_n_0\
    );
\counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[24]_i_1_n_6\,
      Q => counter_reg(25)
    );
\counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[24]_i_1_n_5\,
      Q => counter_reg(26)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[0]_i_1_n_5\,
      Q => counter_reg(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[0]_i_1_n_4\,
      Q => counter_reg(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4)
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_1_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3) => \counter[4]_i_2_n_0\,
      S(2) => \counter[4]_i_3_n_0\,
      S(1) => \counter[4]_i_4_n_0\,
      S(0) => \counter[4]_i_5_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8)
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3) => \counter[8]_i_2_n_0\,
      S(2) => \counter[8]_i_3_n_0\,
      S(1) => \counter[8]_i_4_n_0\,
      S(0) => \counter[8]_i_5_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9)
    );
\divisor[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => divisor_select(1),
      I1 => divisor_select(0),
      O => \divisor[0]_i_1_n_0\
    );
\divisor[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => divisor_select(1),
      I1 => divisor_select(0),
      O => \divisor[10]_i_1_n_0\
    );
\divisor[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => divisor_select(1),
      I1 => divisor_select(0),
      O => \divisor[11]_i_1_n_0\
    );
\divisor[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => divisor_select(0),
      I1 => divisor_select(1),
      O => \divisor[14]_i_1_n_0\
    );
\divisor[16]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor_select(0),
      O => \divisor[16]_i_1_n_0\
    );
\divisor[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => divisor_select(0),
      I1 => divisor_select(1),
      O => \divisor[23]_i_1_n_0\
    );
\divisor[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => divisor_select(0),
      I1 => divisor_select(1),
      O => \divisor[3]_i_1_n_0\
    );
\divisor[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => divisor_select(0),
      I1 => divisor_select(1),
      O => \divisor[4]_i_1_n_0\
    );
\divisor[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => divisor_select(1),
      I1 => divisor_select(0),
      O => \divisor[5]_i_1_n_0\
    );
\divisor[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => divisor_select(0),
      I1 => divisor_select(1),
      O => \divisor[6]_i_1_n_0\
    );
\divisor[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor_select(1),
      I1 => divisor_select(0),
      O => \divisor[7]_i_1_n_0\
    );
\divisor_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \divisor[0]_i_1_n_0\,
      Q => divisor(0)
    );
\divisor_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => clk_in,
      CE => '1',
      D => \divisor[10]_i_1_n_0\,
      PRE => clk_out_i_2_n_0,
      Q => divisor(10)
    );
\divisor_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => clk_in,
      CE => '1',
      D => \divisor[11]_i_1_n_0\,
      PRE => clk_out_i_2_n_0,
      Q => divisor(11)
    );
\divisor_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \divisor[14]_i_1_n_0\,
      Q => divisor(14)
    );
\divisor_reg[16]\: unisim.vcomponents.FDPE
     port map (
      C => clk_in,
      CE => '1',
      D => \divisor[16]_i_1_n_0\,
      PRE => clk_out_i_2_n_0,
      Q => divisor(16)
    );
\divisor_reg[23]\: unisim.vcomponents.FDPE
     port map (
      C => clk_in,
      CE => '1',
      D => \divisor[23]_i_1_n_0\,
      PRE => clk_out_i_2_n_0,
      Q => divisor(23)
    );
\divisor_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \divisor[3]_i_1_n_0\,
      Q => divisor(3)
    );
\divisor_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \divisor[4]_i_1_n_0\,
      Q => divisor(4)
    );
\divisor_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => clk_in,
      CE => '1',
      D => \divisor[5]_i_1_n_0\,
      PRE => clk_out_i_2_n_0,
      Q => divisor(5)
    );
\divisor_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \divisor[6]_i_1_n_0\,
      Q => divisor(6)
    );
\divisor_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => clk_in,
      CE => '1',
      D => \divisor[7]_i_1_n_0\,
      PRE => clk_out_i_2_n_0,
      Q => divisor(7)
    );
\divisor_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => divisor_select(0),
      Q => divisor(9)
    );
\divisor_select[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => key_debounced,
      I1 => key_in,
      I2 => divisor_select(0),
      O => \divisor_select[0]_i_1_n_0\
    );
\divisor_select[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => divisor_select(0),
      I1 => key_in,
      I2 => key_debounced,
      I3 => divisor_select(1),
      O => \divisor_select[1]_i_1_n_0\
    );
\divisor_select_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \divisor_select[0]_i_1_n_0\,
      Q => divisor_select(0)
    );
\divisor_select_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => \divisor_select[1]_i_1_n_0\,
      Q => divisor_select(1)
    );
key_debounced_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => clk_out_i_2_n_0,
      D => key_in,
      Q => key_debounced
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk_in : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    key_in : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "LED_flow_clk_divider_0_0,clk_divider,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "clk_divider,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_divider
     port map (
      clk_in => clk_in,
      clk_out => clk_out,
      key_in => key_in,
      rst_n => rst_n
    );
end STRUCTURE;
