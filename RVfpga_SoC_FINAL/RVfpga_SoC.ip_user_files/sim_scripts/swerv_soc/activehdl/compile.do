vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_22
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_20
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/axi_data_fifo_v2_1_19
vlib activehdl/axi_crossbar_v2_1_21
vlib activehdl/xlconcat_v2_1_3
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/axi_iic_v2_0_23
vlib activehdl/axi_protocol_converter_v2_1_20
vlib activehdl/axi_clock_converter_v2_1_19
vlib activehdl/blk_mem_gen_v8_4_4
vlib activehdl/axi_dwidth_converter_v2_1_20

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_22 activehdl/axi_gpio_v2_0_22
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_20 activehdl/axi_register_slice_v2_1_20
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_19 activehdl/axi_data_fifo_v2_1_19
vmap axi_crossbar_v2_1_21 activehdl/axi_crossbar_v2_1_21
vmap xlconcat_v2_1_3 activehdl/xlconcat_v2_1_3
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap axi_iic_v2_0_23 activehdl/axi_iic_v2_0_23
vmap axi_protocol_converter_v2_1_20 activehdl/axi_protocol_converter_v2_1_20
vmap axi_clock_converter_v2_1_19 activehdl/axi_clock_converter_v2_1_19
vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4
vmap axi_dwidth_converter_v2_1_20 activehdl/axi_dwidth_converter_v2_1_20

vlog -work xpm  -sv2k12 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../bd/swerv_soc/ipshared/9426/axi2wb.v" \
"../../../bd/swerv_soc/ipshared/9426/axi_intercon_wr.v" \
"../../../bd/swerv_soc/ipshared/9426/wb_intercon.v" \
"../../../bd/swerv_soc/ipshared/9426/wb_mux.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../bd/swerv_soc/ipshared/9426/cf_math_pkg.sv" \
"../../../bd/swerv_soc/ipshared/9426/addr_decode.sv" \
"../../../bd/swerv_soc/ipshared/9426/axi_pkg.sv" \
"../../../bd/swerv_soc/ipshared/9426/axi_atop_filter.sv" \
"../../../bd/swerv_soc/ipshared/9426/axi_demux.sv" \
"../../../bd/swerv_soc/ipshared/9426/axi_err_slv.sv" \
"../../../bd/swerv_soc/ipshared/9426/axi_id_prepend.sv" \
"../../../bd/swerv_soc/ipshared/9426/axi_intercon.sv" \
"../../../bd/swerv_soc/ipshared/9426/axi_mux.sv" \
"../../../bd/swerv_soc/ipshared/9426/axi_xbar.sv" \
"../../../bd/swerv_soc/ipshared/9426/counter.sv" \
"../../../bd/swerv_soc/ipshared/9426/delta_counter.sv" \
"../../../bd/swerv_soc/ipshared/9426/fifo_v3.sv" \
"../../../bd/swerv_soc/ipshared/9426/lzc.sv" \
"../../../bd/swerv_soc/ipshared/9426/rr_arb_tree.sv" \
"../../../bd/swerv_soc/ipshared/9426/spill_register.sv" \
"../../../bd/swerv_soc/ipshared/9426/stream_register.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../bd/swerv_soc/ipshared/9426/axi2wb_intcon_wrapper.v" \
"../../../bd/swerv_soc/ip/swerv_soc_axi2wb_intcon_wrapper_0_4/sim/swerv_soc_axi2wb_intcon_wrapper_0_4.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../bd/swerv_soc/ipshared/64dd/src/lib/beh_lib.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/dbg/dbg.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/swerv_types.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/dec/dec.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/dec/dec_decode_ctl.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/dec/dec_gpr_ctl.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/dec/dec_ib_ctl.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/dec/dec_tlu_ctl.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/dec/dec_trigger.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/dma/dma_ctrl.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/exu/exu.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/exu/exu_alu_ctl.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/exu/exu_div_ctl.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/exu/exu_mul_ctl.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/ifu/ifu.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/ifu/ifu_aln_ctl.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/ifu/ifu_bp_ctl.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/ifu/ifu_compress_ctl.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/ifu/ifu_ic_mem.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/ifu/ifu_ifc_ctl.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/ifu/ifu_mem_ctl.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/lsu/lsu.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/lsu/lsu_addrcheck.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/lsu/lsu_bus_buffer.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/lsu/lsu_bus_intf.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/lsu/lsu_clkdomain.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/lsu/lsu_dccm_ctl.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/lsu/lsu_dccm_mem.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/lsu/lsu_ecc.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/lsu/lsu_lsc_ctl.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/lsu/lsu_stbuf.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/lsu/lsu_trigger.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/mem.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/lib/mem_lib.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/pic/pic_ctrl.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/swerv.sv" \
"../../../bd/swerv_soc/ipshared/64dd/src/swerv_wrapper_dmi.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../bd/swerv_soc/ipshared/64dd/src/swerv_wrapper_verilog.v" \
"../../../bd/swerv_soc/ip/swerv_soc_swerv_wrapper_verilog_0_4/sim/swerv_soc_swerv_wrapper_verilog_0_4.v" \
"../../../bd/swerv_soc/ipshared/736f/gpio_top.v" \
"../../../bd/swerv_soc/ipshared/736f/wb_gpio_wrapper.v" \
"../../../bd/swerv_soc/ip/swerv_soc_wb_gpio_wrapper_0_4/sim/swerv_soc_wb_gpio_wrapper_0_4.v" \
"../../../bd/swerv_soc/ip/swerv_soc_bootrom_wrapper_0_4/sim/swerv_soc_bootrom_wrapper_0_4.v" \
"../../../bd/swerv_soc/ip/swerv_soc_syscon_wrapper_0_4/sim/swerv_soc_syscon_wrapper_0_4.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_22 -93 \
"../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/f71e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/swerv_soc/ip/swerv_soc_axi_gpio_0_0/sim/swerv_soc_axi_gpio_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20  -v2k5 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_19  -v2k5 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_21  -v2k5 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../bd/swerv_soc/ip/swerv_soc_xbar_0/sim/swerv_soc_xbar_0.v" \
"../../../bd/swerv_soc/ipshared/fad8/hdl/PWM_Controller_Int.v" \
"../../../bd/swerv_soc/ipshared/fad8/hdl/PWM_w_Int_v1_0_S00_AXI.v" \
"../../../bd/swerv_soc/ipshared/fad8/hdl/PWM_w_Int_v1_0.v" \
"../../../bd/swerv_soc/ip/swerv_soc_PWM_w_Int_0_1/sim/swerv_soc_PWM_w_Int_0_1.v" \
"../../../bd/swerv_soc/ip/swerv_soc_wb_uart_wrapper_0_0/sim/swerv_soc_wb_uart_wrapper_0_0.v" \
"../../../bd/swerv_soc/ip/swerv_soc_ptc_wrapper_0_0/sim/swerv_soc_ptc_wrapper_0_0.v" \

vlog -work xlconcat_v2_1_3  -v2k5 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../bd/swerv_soc/ip/swerv_soc_xlconcat_0_0/sim/swerv_soc_xlconcat_0_0.v" \
"../../../bd/swerv_soc/sim/swerv_soc.v" \
"../../../bd/swerv_soc/ip/swerv_soc_wb_spi_wrapper_0_0/sim/swerv_soc_wb_spi_wrapper_0_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_iic_v2_0_23 -93 \
"../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/b41e/hdl/axi_iic_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/swerv_soc/ip/swerv_soc_axi_iic_0_0/sim/swerv_soc_axi_iic_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_20  -v2k5 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_19  -v2k5 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9e81/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_20  -v2k5 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/d394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../bd/swerv_soc/ipshared/9426" "+incdir+../../../bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../bd/swerv_soc/ipshared/736f" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/ec67/hdl" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/9426" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/64dd/src" "+incdir+../../../../RVfpga_SoC.srcs/sources_1/bd/swerv_soc/ipshared/736f" \
"../../../bd/swerv_soc/ip/swerv_soc_auto_ds_0/sim/swerv_soc_auto_ds_0.v" \
"../../../bd/swerv_soc/ip/swerv_soc_auto_pc_0/sim/swerv_soc_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

