proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param xicom.use_bs_reader 1
  set_param simulator.modelsimInstallPath D:/win32pe
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir D:/win32pe/6.1-3/6.1-3.cache/wt [current_project]
  set_property parent.project_path D:/win32pe/6.1-3/6.1-3.xpr [current_project]
  set_property ip_repo_paths d:/win32pe/6.1-3/6.1-3.cache/ip [current_project]
  set_property ip_output_repo d:/win32pe/6.1-3/6.1-3.cache/ip [current_project]
  add_files -quiet D:/win32pe/6.1-3/6.1-3.runs/synth_1/logic_gates_3.dcp
  read_xdc D:/win32pe/6.1-3/6.1-3.srcs/constrs_1/new/oo.xdc
  link_design -top logic_gates_3 -part xc7a100tcsg324-1
  write_hwdef -file logic_gates_3.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force logic_gates_3_opt.dcp
  report_drc -file logic_gates_3_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force logic_gates_3_placed.dcp
  report_io -file logic_gates_3_io_placed.rpt
  report_utilization -file logic_gates_3_utilization_placed.rpt -pb logic_gates_3_utilization_placed.pb
  report_control_sets -verbose -file logic_gates_3_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force logic_gates_3_routed.dcp
  report_drc -file logic_gates_3_drc_routed.rpt -pb logic_gates_3_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file logic_gates_3_timing_summary_routed.rpt -rpx logic_gates_3_timing_summary_routed.rpx
  report_power -file logic_gates_3_power_routed.rpt -pb logic_gates_3_power_summary_routed.pb -rpx logic_gates_3_power_routed.rpx
  report_route_status -file logic_gates_3_route_status.rpt -pb logic_gates_3_route_status.pb
  report_clock_utilization -file logic_gates_3_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force logic_gates_3.mmi }
  write_bitstream -force logic_gates_3.bit 
  catch { write_sysdef -hwdef logic_gates_3.hwdef -bitfile logic_gates_3.bit -meminfo logic_gates_3.mmi -file logic_gates_3.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

