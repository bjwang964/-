# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a100tfgg484-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/q1109/OneDrive/RISC_V/RISC_V.cache/wt [current_project]
set_property parent.project_path C:/Users/q1109/OneDrive/RISC_V/RISC_V.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/q1109/OneDrive/RISC_V/RISC_V.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/ip/init_rom.coe
add_files C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/ip/ROM_8/init_rom.coe
add_files C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/ip/RAM_init.coe
read_verilog -library xil_defaultlib {
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/ADD1.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/ADD32.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/ADD8.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/Define.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/ALU.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/BTB.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/Decoder.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/EX.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/Instr_Decode.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/Instr_Fetch.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/MEM.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/PC.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/PHT.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/ROM.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/WB.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/adder4.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/ctrl.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/de_ex.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/dec.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/ex_mem.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/fet_dec.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/ins_val.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/mem_wb.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/operand_generator.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/pc_sel.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/register.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/shifter.v
  C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/new/Pipeline.v
}
read_ip -quiet C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/ip/RAM32/RAM32.xci
set_property used_in_implementation false [get_files -all c:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/ip/RAM32/RAM32_ooc.xdc]

read_ip -quiet C:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/ip/ROM_8/ROM_8.xci
set_property used_in_implementation false [get_files -all c:/Users/q1109/OneDrive/RISC_V/RISC_V.srcs/sources_1/ip/ROM_8/ROM_8_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top Pipeline -part xc7a100tfgg484-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Pipeline.dcp
create_report "synth_2_synth_report_utilization_0" "report_utilization -file Pipeline_utilization_synth.rpt -pb Pipeline_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]