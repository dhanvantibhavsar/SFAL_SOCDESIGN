read_db /home/dhanvanti/scl_pdk_v2/stdlib/fs120/liberty/lib_flow_ff/tsl18fs120_scl_ff.db
set target_library /home/dhanvanti/scl_pdk_v2/stdlib/fs120/liberty/lib_flow_ff/tsl18fs120_scl_ff.db
set link_library {* /home/dhanvanti/scl_pdk_v2/stdlib/fs120/liberty/lib_flow_ff/tsl18fs120_scl_ff.db}
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

# write_verilog ./output/synth.v
# write_ddc ./output/synth_ddc.v




 




