read_db /home/dhanvanti/scl_pdk_v2/stdlib/fs120/liberty/lib_flow_ff/tsl18fs120_scl_ff.db

read_db "/home/dhanvanti/vsd_sfal/SFAL_SOCDESIGN/caraval_scl/caravel_scl180/lib/sky130_fd_sc_hvl__ff_n40C_4v40.db"


set target_library "/home/dhanvanti/scl_pdk_v2/stdlib/fs120/liberty/lib_flow_ff/tsl18fs120_scl_ff.db /home/dhanvanti/vsd_sfal/SFAL_SOCDESIGN/caraval_scl/caravel_scl180/lib/sky130_fd_sc_hvl__ff_n40C_4v40.db"

set link_library {"* /home/dhanvanti/scl_pdk_v2/stdlib/fs120/liberty/lib_flow_ff/tsl18fs120_scl_ff.db /home/dhanvanti/vsd_sfal/SFAL_SOCDESIGN/caraval_scl/caravel_scl180/lib/sky130_fd_sc_hvl__ff_n40C_4v40.db"}

foreach_in_collection cell [get_lib_cells sky130_fd_sc_hvl__ff_n40C_4v40/*] {
	if { $cell != "sky130_fd_sc_hvl__schmittbuf_1" } {
		set_dont_use $cell
	}
}

set root_dir "/home/dhanvanti/vsd_sfal/SFAL_SOCDESIGN/caraval_scl/caravel_scl180"
set verilog_files  "$root_dir/synthesis/rtl"
set top_module "caravel" ;
set output_file "$root_dir/synthesis/output/caravel_synthesis.v"
set report_dir "$root_dir/synthesis/report"
read_file $verilog_files -autoread -format verilog -top $top_module


elaborate $top_module
link
read_sdc "$root_dir/synthesis/caravel.sdc"
compile_ultra

report_qor > "$report_dir/qor_post_synth.rpt"
report_area > "$report_dir/area_post_synth.rpt"
report_power > "$report_dir/power_post_synth.rpt"

write -format verilog -hierarchy -output $output_file



 




