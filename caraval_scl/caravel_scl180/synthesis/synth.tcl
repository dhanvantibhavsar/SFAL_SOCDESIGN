set target_library /home/dhanvanti/scl_pdk_v2/stdlib/fs120/liberty/lib_flow_ff/tsl18fs120_scl_ff.db
set link_library {* $target_library}

set verilog_files  "/home/dhanvanti/vsd_sfal/SFAL_SOCDESIGN/caraval_scl/caravel_scl180/synthesis/rtl"
set top_module "caravel" ;

read_file $verilog_files -autoread -format verilog -top $top_module

# eloborate $top_module
# link



 




