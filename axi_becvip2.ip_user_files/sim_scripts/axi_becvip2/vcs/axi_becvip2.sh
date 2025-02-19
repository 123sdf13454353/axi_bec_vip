#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2022.2 (64-bit)
#
# Filename    : axi_becvip2.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Fri Oct 18 17:41:54 +0700 2024
# SW Build 3671981 on Fri Oct 14 05:00:03 MDT 2022
#
# Tool Version Limit: 2022.10 
#
# usage: axi_becvip2.sh [-help]
# usage: axi_becvip2.sh [-lib_map_path]
# usage: axi_becvip2.sh [-noclean_files]
# usage: axi_becvip2.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'axi_becvip2.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Set vlogan compile options
vlogan_opts="-full64 "

# Set vhdlan compile options
vhdlan_opts="-full64 "

# Set vcs elaboration options
vcs_elab_opts="-full64 -debug_acc+pp+dmptf -t ps -licqueue -l elaborate.log "

# Set vcs simulation options
vcs_sim_opts="-ucli -licqueue -l simulate.log "

# Design libraries
design_libs=(xilinx_vip axi_infrastructure_v1_1_0 xil_defaultlib axi_vip_v1_1_13)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "axi_becvip2.sh - Script generated by export_simulation (Vivado v2022.2 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  vlogan -work xilinx_vip $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/ec67/hdl" +incdir+"D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/include" \
    "D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
    "D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
    "D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
    "D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
    "D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
    "D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
    "D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
    "D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
    "D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/ec67/hdl" +incdir+"D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/include" \
    "$ref_dir/../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/ec67/hdl" +incdir+"D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/include" \
    "$ref_dir/../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ip/axi_becvip2_axi_vip_0_0/sim/axi_becvip2_axi_vip_0_0_pkg.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_vip_v1_1_13 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/ec67/hdl" +incdir+"D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/include" \
    "$ref_dir/../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/ec67/hdl" +incdir+"D:/vivado_setting/Vivado/2022.2/data/xilinx_vip/include" \
    "$ref_dir/../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ip/axi_becvip2_axi_vip_0_0/sim/axi_becvip2_axi_vip_0_0.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/src/acb_package.vhd" \
    "$ref_dir/../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/src/acb.vhd" \
    "$ref_dir/../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/hdl/bec_ip_2_v1_0_S_AXI.vhd" \
    "$ref_dir/../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/src/classic_squarer.vhd" \
    "$ref_dir/../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/src/interleaved_mult.vhd" \
    "$ref_dir/../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/src/sm_bec.vhd" \
    "$ref_dir/../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ipshared/c7d5/hdl/bec_ip_2_v1_0.vhd" \
    "$ref_dir/../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/ip/axi_becvip2_bec_ip_2_0_0/sim/axi_becvip2_bec_ip_2_0_0.vhd" \
    "$ref_dir/../../../../axi_becvip2.gen/sources_1/bd/axi_becvip2/sim/axi_becvip2.vhd" \
  2>&1 | tee -a vhdlan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log
}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.axi_becvip2 xil_defaultlib.glbl -o axi_becvip2_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./axi_becvip2_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./axi_becvip2.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key axi_becvip2_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc axi_becvip2_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./axi_becvip2.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: axi_becvip2.sh [-help]\n\
Usage: axi_becvip2.sh [-lib_map_path]\n\
Usage: axi_becvip2.sh [-reset_run]\n\
Usage: axi_becvip2.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
