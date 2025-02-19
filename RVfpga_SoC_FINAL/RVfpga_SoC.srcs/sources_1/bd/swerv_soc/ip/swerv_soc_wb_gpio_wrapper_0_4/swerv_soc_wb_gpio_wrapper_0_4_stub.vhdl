-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Oct 10 09:51:56 2024
-- Host        : LHYsPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/MIPSfpga_Fundamentals/Xilinx/VivadoProject/RVfpga_SoC/RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ip/swerv_soc_wb_gpio_wrapper_0_4/swerv_soc_wb_gpio_wrapper_0_4_stub.vhdl
-- Design      : swerv_soc_wb_gpio_wrapper_0_4
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity swerv_soc_wb_gpio_wrapper_0_4 is
  Port ( 
    wb_clk_i : in STD_LOGIC;
    wb_rst_i : in STD_LOGIC;
    wb_cyc_i : in STD_LOGIC;
    wb_adr_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wb_dat_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_sel_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wb_we_i : in STD_LOGIC;
    wb_stb_i : in STD_LOGIC;
    wb_dat_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_ack_o : out STD_LOGIC;
    wb_err_o : out STD_LOGIC;
    wb_inta_o : out STD_LOGIC;
    bidir : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end swerv_soc_wb_gpio_wrapper_0_4;

architecture stub of swerv_soc_wb_gpio_wrapper_0_4 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "wb_clk_i,wb_rst_i,wb_cyc_i,wb_adr_i[7:0],wb_dat_i[31:0],wb_sel_i[3:0],wb_we_i,wb_stb_i,wb_dat_o[31:0],wb_ack_o,wb_err_o,wb_inta_o,bidir[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "wb_gpio_wrapper,Vivado 2019.2";
begin
end;
