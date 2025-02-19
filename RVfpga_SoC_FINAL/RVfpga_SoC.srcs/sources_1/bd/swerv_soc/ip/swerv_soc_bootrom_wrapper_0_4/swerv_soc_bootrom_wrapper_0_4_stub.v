// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Oct 10 09:51:54 2024
// Host        : LHYsPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/MIPSfpga_Fundamentals/Xilinx/VivadoProject/RVfpga_SoC/RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ip/swerv_soc_bootrom_wrapper_0_4/swerv_soc_bootrom_wrapper_0_4_stub.v
// Design      : swerv_soc_bootrom_wrapper_0_4
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bootrom_wrapper,Vivado 2019.2" *)
module swerv_soc_bootrom_wrapper_0_4(i_clk, i_rst, i_wb_adr, i_wb_dat, i_wb_sel, 
  i_wb_we, i_wb_cyc, i_wb_stb, o_wb_ack, o_wb_rdt)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_rst,i_wb_adr[31:0],i_wb_dat[31:0],i_wb_sel[3:0],i_wb_we,i_wb_cyc,i_wb_stb,o_wb_ack,o_wb_rdt[31:0]" */;
  input i_clk;
  input i_rst;
  input [31:0]i_wb_adr;
  input [31:0]i_wb_dat;
  input [3:0]i_wb_sel;
  input i_wb_we;
  input i_wb_cyc;
  input i_wb_stb;
  output o_wb_ack;
  output [31:0]o_wb_rdt;
endmodule
