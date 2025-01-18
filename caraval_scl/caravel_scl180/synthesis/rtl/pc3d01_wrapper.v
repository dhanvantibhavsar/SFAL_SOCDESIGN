`include "/home/dhanvanti/vsd_sfal/SFAL_SOCDESIGN/caraval_scl/caravel_scl180/synthesis/rtl/pc3d01.v"
module pc3d01_wrapper(output IN, input PAD);

         pc3d01 pad ( 
	 .CIN(IN), 
	 .PAD(PAD)
          );
endmodule
