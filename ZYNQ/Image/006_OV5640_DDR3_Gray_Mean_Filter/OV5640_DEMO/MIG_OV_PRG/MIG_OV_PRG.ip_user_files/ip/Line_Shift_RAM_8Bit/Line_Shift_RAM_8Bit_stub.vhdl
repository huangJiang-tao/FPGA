-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sun Nov  3 21:49:08 2019
-- Host        : LAPTOP-8E6RLG3I running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/FILE/Xilinx/Miz7035/My_ip_lib/Line_Shift_RAM_8Bit/Line_Shift_RAM_8Bit_stub.vhdl
-- Design      : Line_Shift_RAM_8Bit
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z035ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Line_Shift_RAM_8Bit is
  Port ( 
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end Line_Shift_RAM_8Bit;

architecture stub of Line_Shift_RAM_8Bit is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "D[7:0],CLK,CE,Q[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_shift_ram_v12_0_11,Vivado 2017.4";
begin
end;
