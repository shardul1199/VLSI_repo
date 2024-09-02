-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity k2c_dot_2_dense_1bdk_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 64
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of k2c_dot_2_dense_1bdk_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100100000000100000011110101", 
    1 => "00111110001101001101011010001111", 
    2 => "10111110101110110011101011000111", 
    3 => "10111110100111011100010111101111", 
    4 => "00111110101010101010000100010101", 
    5 => "10111110001110100101011110101011", 
    6 => "10111110010110000001100011010001", 
    7 => "10111110100100010010100010011011", 
    8 => "00111110100111011100100100001011", 
    9 => "00111101001100010001010110000101", 
    10 => "10111100101011010101010001100010", 
    11 => "10111110100111111010100101111100", 
    12 => "00111110001101010001011100111001", 
    13 => "10111110100110000101100001111010", 
    14 => "00111110010101010011101010011010", 
    15 => "00111110100010001111000010100110", 
    16 => "00111110110001011010001000110101", 
    17 => "10111110100001001010111111100101", 
    18 => "00111110001000000100001001010110", 
    19 => "00111110001101011000010000010010", 
    20 => "10111110000100111011011001101010", 
    21 => "10111110101001111011101010010010", 
    22 => "00111110011010100111111001011000", 
    23 => "10111110010111110110100001010111", 
    24 => "10111110100001100000010101110011", 
    25 => "10111110001100010111000100111011", 
    26 => "00111110000000001001011100101000", 
    27 => "00111110011100101110111110100101", 
    28 => "00111101000111010100101010011101", 
    29 => "10111100101010101100110110001010", 
    30 => "00111011100010001100100100110011", 
    31 => "00111110010111111101101000001011", 
    32 => "10111110000011110001111111010011", 
    33 => "10111101110111011001001010111111", 
    34 => "00111101011101111111111111001001", 
    35 => "00111101101010101011000000111011", 
    36 => "00111101110111111101111000110000", 
    37 => "10111101001111000001011001111110", 
    38 => "00111101001100010001111001101000", 
    39 => "00111110011000110111110101101110", 
    40 => "00111110100010100111001011100100", 
    41 => "00111110010010100111101010111110", 
    42 => "00111110101001010110111110001101", 
    43 => "10111110100011101111111000010001", 
    44 => "10111110101100011110110011100100", 
    45 => "10111110100110110110100010101101", 
    46 => "00111110100000011110100010101010", 
    47 => "10111101111010111101011011010011", 
    48 => "10111100101101001001011100001000", 
    49 => "10111110010010111110111101100101", 
    50 => "10111110000000001000100010011000", 
    51 => "10111110001011000100011110010000", 
    52 => "10111110011000001100000111100001", 
    53 => "10111100100000010001111111100111", 
    54 => "10111110011110111010001001110111", 
    55 => "10111110000101011111110100001101", 
    56 => "00111110101010010011100101000010", 
    57 => "10111101101001111001110000111011", 
    58 => "10111101000100100000100111000111", 
    59 => "00111101111100111110001011100111", 
    60 => "10111110100101011101011011011101", 
    61 => "10111110101000110001011011100101", 
    62 => "10111110000010110000110111111000", 
    63 => "00111110101011110010001110010001" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity k2c_dot_2_dense_1bdk is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of k2c_dot_2_dense_1bdk is
    component k2c_dot_2_dense_1bdk_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    k2c_dot_2_dense_1bdk_rom_U :  component k2c_dot_2_dense_1bdk_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


