vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_vip_v1_1_13

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_vip_v1_1_13 modelsim_lib/msim/axi_vip_v1_1_13

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L xilinx_vip "+incdir+D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/include" \
"D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/ec67/hdl" "+incdir+D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L xilinx_vip "+incdir+../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/ec67/hdl" "+incdir+D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ip/axi_becvip2_axi_vip_0_0/sim/axi_becvip2_axi_vip_0_0_pkg.sv" \

vlog -work axi_vip_v1_1_13  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L xilinx_vip "+incdir+../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/ec67/hdl" "+incdir+D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_13 -L xilinx_vip "+incdir+../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/ec67/hdl" "+incdir+D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ip/axi_becvip2_axi_vip_0_0/sim/axi_becvip2_axi_vip_0_0.sv" \

vcom -work xil_defaultlib  -93  \
"../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/src/acb_package.vhd" \
"../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/src/acb.vhd" \
"../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/hdl/bec_ip_2_v1_0_S_AXI.vhd" \
"../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/src/classic_squarer.vhd" \
"../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/src/interleaved_mult.vhd" \
"../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/src/sm_bec.vhd" \
"../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/hdl/bec_ip_2_v1_0.vhd" \
"../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ip/axi_becvip2_bec_ip_2_0_0/sim/axi_becvip2_bec_ip_2_0_0.vhd" \
"../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/sim/axi_becvip2.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

