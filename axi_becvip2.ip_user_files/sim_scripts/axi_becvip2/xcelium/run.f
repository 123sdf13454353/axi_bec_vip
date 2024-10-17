-makelib xcelium_lib/xilinx_vip -sv \
  "D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ip/axi_becvip2_axi_vip_0_0/sim/axi_becvip2_axi_vip_0_0_pkg.sv" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_13 -sv \
  "../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ip/axi_becvip2_axi_vip_0_0/sim/axi_becvip2_axi_vip_0_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/src/acb_package.vhd" \
  "../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/src/acb.vhd" \
  "../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/hdl/bec_ip_2_v1_0_S_AXI.vhd" \
  "../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/src/classic_squarer.vhd" \
  "../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/src/interleaved_mult.vhd" \
  "../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/src/sm_bec.vhd" \
  "../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/hdl/bec_ip_2_v1_0.vhd" \
  "../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ip/axi_becvip2_bec_ip_2_0_0/sim/axi_becvip2_bec_ip_2_0_0.vhd" \
  "../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/sim/axi_becvip2.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

