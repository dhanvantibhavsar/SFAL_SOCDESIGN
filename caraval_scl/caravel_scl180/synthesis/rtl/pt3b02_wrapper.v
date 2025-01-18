`include "/home/dhanvanti/vsd_sfal/SFAL_SOCDESIGN/caraval_scl/caravel_scl180/synthesis/rtl/pt3b02.v"
module pt3b02_wrapper(output IN, inout PAD, input OE_N);
pt3b02 pad(.CIN(IN), .OEN(OE_N), .I(), .PAD(PAD));

endmodule
