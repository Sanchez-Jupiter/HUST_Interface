//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu Oct 10 08:43:26 2024
//Host        : LHYsPC running 64-bit major release  (build 9200)
//Command     : generate_target design_1swerv_soc_wrapper.bd
//Design      : design_1swerv_soc_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1swerv_soc_wrapper
   (AN_0,
    Digits_Bits_0,
    bidir,
    clk_0,
    dmi_hard_reset_0,
    dmi_reg_addr_0,
    dmi_reg_en_0,
    dmi_reg_rdata_0,
    dmi_reg_wdata_0,
    dmi_reg_wr_en_0,
    extintsrc_req_0,
    i_ram_init_done_0,
    i_ram_init_error_0,
    ram_araddr,
    ram_arburst,
    ram_arcache,
    ram_arid,
    ram_arlen,
    ram_arlock,
    ram_arprot,
    ram_arqos,
    ram_arready,
    ram_arregion,
    ram_arsize,
    ram_arvalid,
    ram_awaddr,
    ram_awburst,
    ram_awcache,
    ram_awid,
    ram_awlen,
    ram_awlock,
    ram_awprot,
    ram_awqos,
    ram_awready,
    ram_awregion,
    ram_awsize,
    ram_awvalid,
    ram_bid,
    ram_bready,
    ram_bresp,
    ram_bvalid,
    ram_rdata,
    ram_rid,
    ram_rlast,
    ram_rready,
    ram_rresp,
    ram_rvalid,
    ram_wdata,
    ram_wlast,
    ram_wready,
    ram_wstrb,
    ram_wvalid,
    rst_0);
  output [7:0]AN_0;
  output [6:0]Digits_Bits_0;
  output [31:0]bidir;
  input clk_0;
  input dmi_hard_reset_0;
  input [6:0]dmi_reg_addr_0;
  input dmi_reg_en_0;
  output [31:0]dmi_reg_rdata_0;
  input [31:0]dmi_reg_wdata_0;
  input dmi_reg_wr_en_0;
  input [8:1]extintsrc_req_0;
  input i_ram_init_done_0;
  input i_ram_init_error_0;
  output [31:0]ram_araddr;
  output [1:0]ram_arburst;
  output [3:0]ram_arcache;
  output [5:0]ram_arid;
  output [7:0]ram_arlen;
  output ram_arlock;
  output [2:0]ram_arprot;
  output [3:0]ram_arqos;
  input ram_arready;
  output [3:0]ram_arregion;
  output [2:0]ram_arsize;
  output ram_arvalid;
  output [31:0]ram_awaddr;
  output [1:0]ram_awburst;
  output [3:0]ram_awcache;
  output [5:0]ram_awid;
  output [7:0]ram_awlen;
  output ram_awlock;
  output [2:0]ram_awprot;
  output [3:0]ram_awqos;
  input ram_awready;
  output [3:0]ram_awregion;
  output [2:0]ram_awsize;
  output ram_awvalid;
  input [5:0]ram_bid;
  output ram_bready;
  input [1:0]ram_bresp;
  input ram_bvalid;
  input [63:0]ram_rdata;
  input [5:0]ram_rid;
  input ram_rlast;
  output ram_rready;
  input [1:0]ram_rresp;
  input ram_rvalid;
  output [63:0]ram_wdata;
  output ram_wlast;
  input ram_wready;
  output [7:0]ram_wstrb;
  output ram_wvalid;
  input rst_0;

  wire [7:0]AN_0;
  wire [6:0]Digits_Bits_0;
  wire [31:0]bidir;
  wire clk_0;
  wire dmi_hard_reset_0;
  wire [6:0]dmi_reg_addr_0;
  wire dmi_reg_en_0;
  wire [31:0]dmi_reg_rdata_0;
  wire [31:0]dmi_reg_wdata_0;
  wire dmi_reg_wr_en_0;
  wire [8:1]extintsrc_req_0;
  wire i_ram_init_done_0;
  wire i_ram_init_error_0;
  wire [31:0]ram_araddr;
  wire [1:0]ram_arburst;
  wire [3:0]ram_arcache;
  wire [5:0]ram_arid;
  wire [7:0]ram_arlen;
  wire ram_arlock;
  wire [2:0]ram_arprot;
  wire [3:0]ram_arqos;
  wire ram_arready;
  wire [3:0]ram_arregion;
  wire [2:0]ram_arsize;
  wire ram_arvalid;
  wire [31:0]ram_awaddr;
  wire [1:0]ram_awburst;
  wire [3:0]ram_awcache;
  wire [5:0]ram_awid;
  wire [7:0]ram_awlen;
  wire ram_awlock;
  wire [2:0]ram_awprot;
  wire [3:0]ram_awqos;
  wire ram_awready;
  wire [3:0]ram_awregion;
  wire [2:0]ram_awsize;
  wire ram_awvalid;
  wire [5:0]ram_bid;
  wire ram_bready;
  wire [1:0]ram_bresp;
  wire ram_bvalid;
  wire [63:0]ram_rdata;
  wire [5:0]ram_rid;
  wire ram_rlast;
  wire ram_rready;
  wire [1:0]ram_rresp;
  wire ram_rvalid;
  wire [63:0]ram_wdata;
  wire ram_wlast;
  wire ram_wready;
  wire [7:0]ram_wstrb;
  wire ram_wvalid;
  wire rst_0;

  design_1swerv_soc design_1swerv_soc_i
       (.AN_0(AN_0),
        .Digits_Bits_0(Digits_Bits_0),
        .bidir(bidir),
        .clk_0(clk_0),
        .dmi_hard_reset_0(dmi_hard_reset_0),
        .dmi_reg_addr_0(dmi_reg_addr_0),
        .dmi_reg_en_0(dmi_reg_en_0),
        .dmi_reg_rdata_0(dmi_reg_rdata_0),
        .dmi_reg_wdata_0(dmi_reg_wdata_0),
        .dmi_reg_wr_en_0(dmi_reg_wr_en_0),
        .extintsrc_req_0(extintsrc_req_0),
        .i_ram_init_done_0(i_ram_init_done_0),
        .i_ram_init_error_0(i_ram_init_error_0),
        .ram_araddr(ram_araddr),
        .ram_arburst(ram_arburst),
        .ram_arcache(ram_arcache),
        .ram_arid(ram_arid),
        .ram_arlen(ram_arlen),
        .ram_arlock(ram_arlock),
        .ram_arprot(ram_arprot),
        .ram_arqos(ram_arqos),
        .ram_arready(ram_arready),
        .ram_arregion(ram_arregion),
        .ram_arsize(ram_arsize),
        .ram_arvalid(ram_arvalid),
        .ram_awaddr(ram_awaddr),
        .ram_awburst(ram_awburst),
        .ram_awcache(ram_awcache),
        .ram_awid(ram_awid),
        .ram_awlen(ram_awlen),
        .ram_awlock(ram_awlock),
        .ram_awprot(ram_awprot),
        .ram_awqos(ram_awqos),
        .ram_awready(ram_awready),
        .ram_awregion(ram_awregion),
        .ram_awsize(ram_awsize),
        .ram_awvalid(ram_awvalid),
        .ram_bid(ram_bid),
        .ram_bready(ram_bready),
        .ram_bresp(ram_bresp),
        .ram_bvalid(ram_bvalid),
        .ram_rdata(ram_rdata),
        .ram_rid(ram_rid),
        .ram_rlast(ram_rlast),
        .ram_rready(ram_rready),
        .ram_rresp(ram_rresp),
        .ram_rvalid(ram_rvalid),
        .ram_wdata(ram_wdata),
        .ram_wlast(ram_wlast),
        .ram_wready(ram_wready),
        .ram_wstrb(ram_wstrb),
        .ram_wvalid(ram_wvalid),
        .rst_0(rst_0));
endmodule
