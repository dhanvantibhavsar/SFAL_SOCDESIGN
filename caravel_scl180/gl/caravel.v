module caravel ( vddio, vddio_2, vssio, vssio_2, vdda, vssa, vccd, vssd, vdda1, 
        vdda1_2, vdda2, vssa1, vssa1_2, vssa2, vccd1, vccd2, vssd1, vssd2, 
        gpio, mprj_io, clock, resetb, flash_csb, flash_clk, flash_io0, 
        flash_io1 );
  inout [37:0] mprj_io;
  input clock, resetb;
  output flash_csb, flash_clk;
  inout vddio,  vddio_2,  vssio,  vssio_2,  vdda,  vssa,  vccd,  vssd,  vdda1, 
     vdda1_2,  vdda2,  vssa1,  vssa1_2,  vssa2,  vccd1,  vccd2,  vssd1,  vssd2, 
     gpio,  flash_io0,  flash_io1;
  wire   clock_core, gpio_out_core, gpio_in_core, gpio_mode0_core,
         gpio_mode1_core, gpio_outenb_core, gpio_inenb_core, flash_csb_oeb,
         flash_clk_oeb, flash_io0_oeb, flash_io0_do, flash_io1_di,
         \chip_core/spi_pll_dco_ena , \chip_core/spi_pll_ena ,
         \chip_core/ext_reset , \chip_core/rstb_l , \chip_core/ext_clk_sel ,
         \chip_core/porb_l , \chip_core/gpio_load_1_shifted[0] ,
         \chip_core/gpio_resetn_1_shifted[0] ,
         \chip_core/gpio_clock_1_shifted[0] , \chip_core/caravel_clk2 ,
         \chip_core/debug_oeb , \chip_core/debug_in , \chip_core/spi_sdo ,
         \chip_core/spi_sck , \chip_core/spi_csb , \chip_core/spi_sdi ,
         \chip_core/ser_rx , \chip_core/ser_tx , \chip_core/debug_mode ,
         \chip_core/spi_enabled , \chip_core/uart_enabled ,
         \chip_core/hk_ack_i , \chip_core/hk_cyc_o , \chip_core/hk_stb_o ,
         \chip_core/mprj_we_o_core , \chip_core/mprj_stb_o_core ,
         \chip_core/mprj_cyc_o_core , \chip_core/mprj_iena_wb ,
         \chip_core/flash_io1_di_core , \chip_core/flash_io0_do_core ,
         \chip_core/flash_io0_oeb_core , \chip_core/caravel_clk ,
         \chip_core/mprj/wbs_ack_o_debug ,
         \chip_core/clock_ctrl/pll_clk90_divided ,
         \chip_core/clock_ctrl/pll_clk_divided ,
         \chip_core/clock_ctrl/ext_clk_syncd_pre ,
         \chip_core/clock_ctrl/use_pll_first ,
         \chip_core/clock_ctrl/ext_clk_syncd ,
         \chip_core/clock_ctrl/use_pll_second , \chip_core/pll/creset ,
         \chip_core/pll/ireset ,
         \chip_core/gpio_control_bidir_1[0]/gpio_outenb ,
         \chip_core/gpio_control_bidir_1[0]/mgmt_ena ,
         \chip_core/gpio_control_bidir_1[0]/shift_register[12] ,
         \chip_core/gpio_control_bidir_1[0]/shift_register[11] ,
         \chip_core/gpio_control_bidir_1[0]/shift_register[10] ,
         \chip_core/gpio_control_bidir_1[0]/shift_register[9] ,
         \chip_core/gpio_control_bidir_1[0]/shift_register[8] ,
         \chip_core/gpio_control_bidir_1[0]/shift_register[7] ,
         \chip_core/gpio_control_bidir_1[0]/shift_register[6] ,
         \chip_core/gpio_control_bidir_1[0]/shift_register[5] ,
         \chip_core/gpio_control_bidir_1[0]/shift_register[4] ,
         \chip_core/gpio_control_bidir_1[0]/shift_register[3] ,
         \chip_core/gpio_control_bidir_1[0]/shift_register[2] ,
         \chip_core/gpio_control_bidir_1[0]/shift_register[1] ,
         \chip_core/gpio_control_bidir_1[0]/shift_register[0] ,
         \chip_core/gpio_control_in_2[15]/gpio_outenb ,
         \chip_core/gpio_control_in_2[15]/mgmt_ena ,
         \chip_core/gpio_control_in_2[15]/shift_register[12] ,
         \chip_core/gpio_control_in_2[15]/shift_register[11] ,
         \chip_core/gpio_control_in_2[15]/shift_register[10] ,
         \chip_core/gpio_control_in_2[15]/shift_register[9] ,
         \chip_core/gpio_control_in_2[15]/shift_register[8] ,
         \chip_core/gpio_control_in_2[15]/shift_register[7] ,
         \chip_core/gpio_control_in_2[15]/shift_register[6] ,
         \chip_core/gpio_control_in_2[15]/shift_register[5] ,
         \chip_core/gpio_control_in_2[15]/shift_register[4] ,
         \chip_core/gpio_control_in_2[15]/shift_register[3] ,
         \chip_core/gpio_control_in_2[15]/shift_register[2] ,
         \chip_core/gpio_control_in_2[15]/shift_register[1] ,
         \chip_core/gpio_control_in_2[15]/shift_register[0] ,
         \chip_core/gpio_control_in_2[14]/gpio_outenb ,
         \chip_core/gpio_control_in_2[14]/mgmt_ena ,
         \chip_core/gpio_control_in_2[14]/shift_register[12] ,
         \chip_core/gpio_control_in_2[14]/shift_register[11] ,
         \chip_core/gpio_control_in_2[14]/shift_register[10] ,
         \chip_core/gpio_control_in_2[14]/shift_register[9] ,
         \chip_core/gpio_control_in_2[14]/shift_register[8] ,
         \chip_core/gpio_control_in_2[14]/shift_register[7] ,
         \chip_core/gpio_control_in_2[14]/shift_register[6] ,
         \chip_core/gpio_control_in_2[14]/shift_register[5] ,
         \chip_core/gpio_control_in_2[14]/shift_register[4] ,
         \chip_core/gpio_control_in_2[14]/shift_register[3] ,
         \chip_core/gpio_control_in_2[14]/shift_register[2] ,
         \chip_core/gpio_control_in_2[14]/shift_register[1] ,
         \chip_core/gpio_control_in_2[14]/shift_register[0] ,
         \chip_core/gpio_control_in_2[13]/gpio_outenb ,
         \chip_core/gpio_control_in_2[13]/mgmt_ena ,
         \chip_core/gpio_control_in_2[13]/shift_register[12] ,
         \chip_core/gpio_control_in_2[13]/shift_register[11] ,
         \chip_core/gpio_control_in_2[13]/shift_register[10] ,
         \chip_core/gpio_control_in_2[13]/shift_register[9] ,
         \chip_core/gpio_control_in_2[13]/shift_register[8] ,
         \chip_core/gpio_control_in_2[13]/shift_register[7] ,
         \chip_core/gpio_control_in_2[13]/shift_register[6] ,
         \chip_core/gpio_control_in_2[13]/shift_register[5] ,
         \chip_core/gpio_control_in_2[13]/shift_register[4] ,
         \chip_core/gpio_control_in_2[13]/shift_register[3] ,
         \chip_core/gpio_control_in_2[13]/shift_register[2] ,
         \chip_core/gpio_control_in_2[13]/shift_register[1] ,
         \chip_core/gpio_control_in_2[13]/shift_register[0] ,
         \chip_core/gpio_control_in_2[12]/gpio_outenb ,
         \chip_core/gpio_control_in_2[12]/mgmt_ena ,
         \chip_core/gpio_control_in_2[12]/shift_register[12] ,
         \chip_core/gpio_control_in_2[12]/shift_register[11] ,
         \chip_core/gpio_control_in_2[12]/shift_register[10] ,
         \chip_core/gpio_control_in_2[12]/shift_register[9] ,
         \chip_core/gpio_control_in_2[12]/shift_register[8] ,
         \chip_core/gpio_control_in_2[12]/shift_register[7] ,
         \chip_core/gpio_control_in_2[12]/shift_register[6] ,
         \chip_core/gpio_control_in_2[12]/shift_register[5] ,
         \chip_core/gpio_control_in_2[12]/shift_register[4] ,
         \chip_core/gpio_control_in_2[12]/shift_register[3] ,
         \chip_core/gpio_control_in_2[12]/shift_register[2] ,
         \chip_core/gpio_control_in_2[12]/shift_register[1] ,
         \chip_core/gpio_control_in_2[12]/shift_register[0] ,
         \chip_core/gpio_control_in_2[11]/gpio_outenb ,
         \chip_core/gpio_control_in_2[11]/mgmt_ena ,
         \chip_core/gpio_control_in_2[11]/shift_register[12] ,
         \chip_core/gpio_control_in_2[11]/shift_register[11] ,
         \chip_core/gpio_control_in_2[11]/shift_register[10] ,
         \chip_core/gpio_control_in_2[11]/shift_register[9] ,
         \chip_core/gpio_control_in_2[11]/shift_register[8] ,
         \chip_core/gpio_control_in_2[11]/shift_register[7] ,
         \chip_core/gpio_control_in_2[11]/shift_register[6] ,
         \chip_core/gpio_control_in_2[11]/shift_register[5] ,
         \chip_core/gpio_control_in_2[11]/shift_register[4] ,
         \chip_core/gpio_control_in_2[11]/shift_register[3] ,
         \chip_core/gpio_control_in_2[11]/shift_register[2] ,
         \chip_core/gpio_control_in_2[11]/shift_register[1] ,
         \chip_core/gpio_control_in_2[11]/shift_register[0] ,
         \chip_core/gpio_control_in_2[10]/gpio_outenb ,
         \chip_core/gpio_control_in_2[10]/mgmt_ena ,
         \chip_core/gpio_control_in_2[10]/shift_register[12] ,
         \chip_core/gpio_control_in_2[10]/shift_register[11] ,
         \chip_core/gpio_control_in_2[10]/shift_register[10] ,
         \chip_core/gpio_control_in_2[10]/shift_register[9] ,
         \chip_core/gpio_control_in_2[10]/shift_register[8] ,
         \chip_core/gpio_control_in_2[10]/shift_register[7] ,
         \chip_core/gpio_control_in_2[10]/shift_register[6] ,
         \chip_core/gpio_control_in_2[10]/shift_register[5] ,
         \chip_core/gpio_control_in_2[10]/shift_register[4] ,
         \chip_core/gpio_control_in_2[10]/shift_register[3] ,
         \chip_core/gpio_control_in_2[10]/shift_register[2] ,
         \chip_core/gpio_control_in_2[10]/shift_register[1] ,
         \chip_core/gpio_control_in_2[10]/shift_register[0] ,
         \chip_core/gpio_control_in_2[9]/gpio_outenb ,
         \chip_core/gpio_control_in_2[9]/mgmt_ena ,
         \chip_core/gpio_control_in_2[9]/shift_register[12] ,
         \chip_core/gpio_control_in_2[9]/shift_register[11] ,
         \chip_core/gpio_control_in_2[9]/shift_register[10] ,
         \chip_core/gpio_control_in_2[9]/shift_register[9] ,
         \chip_core/gpio_control_in_2[9]/shift_register[8] ,
         \chip_core/gpio_control_in_2[9]/shift_register[7] ,
         \chip_core/gpio_control_in_2[9]/shift_register[6] ,
         \chip_core/gpio_control_in_2[9]/shift_register[5] ,
         \chip_core/gpio_control_in_2[9]/shift_register[4] ,
         \chip_core/gpio_control_in_2[9]/shift_register[3] ,
         \chip_core/gpio_control_in_2[9]/shift_register[2] ,
         \chip_core/gpio_control_in_2[9]/shift_register[1] ,
         \chip_core/gpio_control_in_2[9]/shift_register[0] ,
         \chip_core/gpio_control_in_2[8]/gpio_outenb ,
         \chip_core/gpio_control_in_2[8]/mgmt_ena ,
         \chip_core/gpio_control_in_2[8]/shift_register[12] ,
         \chip_core/gpio_control_in_2[8]/shift_register[11] ,
         \chip_core/gpio_control_in_2[8]/shift_register[10] ,
         \chip_core/gpio_control_in_2[8]/shift_register[9] ,
         \chip_core/gpio_control_in_2[8]/shift_register[8] ,
         \chip_core/gpio_control_in_2[8]/shift_register[7] ,
         \chip_core/gpio_control_in_2[8]/shift_register[6] ,
         \chip_core/gpio_control_in_2[8]/shift_register[5] ,
         \chip_core/gpio_control_in_2[8]/shift_register[4] ,
         \chip_core/gpio_control_in_2[8]/shift_register[3] ,
         \chip_core/gpio_control_in_2[8]/shift_register[2] ,
         \chip_core/gpio_control_in_2[8]/shift_register[1] ,
         \chip_core/gpio_control_in_2[8]/shift_register[0] ,
         \chip_core/gpio_control_in_2[7]/gpio_outenb ,
         \chip_core/gpio_control_in_2[7]/mgmt_ena ,
         \chip_core/gpio_control_in_2[7]/shift_register[12] ,
         \chip_core/gpio_control_in_2[7]/shift_register[11] ,
         \chip_core/gpio_control_in_2[7]/shift_register[10] ,
         \chip_core/gpio_control_in_2[7]/shift_register[9] ,
         \chip_core/gpio_control_in_2[7]/shift_register[8] ,
         \chip_core/gpio_control_in_2[7]/shift_register[7] ,
         \chip_core/gpio_control_in_2[7]/shift_register[6] ,
         \chip_core/gpio_control_in_2[7]/shift_register[5] ,
         \chip_core/gpio_control_in_2[7]/shift_register[4] ,
         \chip_core/gpio_control_in_2[7]/shift_register[3] ,
         \chip_core/gpio_control_in_2[7]/shift_register[2] ,
         \chip_core/gpio_control_in_2[7]/shift_register[1] ,
         \chip_core/gpio_control_in_2[7]/shift_register[0] ,
         \chip_core/gpio_control_in_2[6]/gpio_outenb ,
         \chip_core/gpio_control_in_2[6]/mgmt_ena ,
         \chip_core/gpio_control_in_2[6]/shift_register[12] ,
         \chip_core/gpio_control_in_2[6]/shift_register[11] ,
         \chip_core/gpio_control_in_2[6]/shift_register[10] ,
         \chip_core/gpio_control_in_2[6]/shift_register[9] ,
         \chip_core/gpio_control_in_2[6]/shift_register[8] ,
         \chip_core/gpio_control_in_2[6]/shift_register[7] ,
         \chip_core/gpio_control_in_2[6]/shift_register[6] ,
         \chip_core/gpio_control_in_2[6]/shift_register[5] ,
         \chip_core/gpio_control_in_2[6]/shift_register[4] ,
         \chip_core/gpio_control_in_2[6]/shift_register[3] ,
         \chip_core/gpio_control_in_2[6]/shift_register[2] ,
         \chip_core/gpio_control_in_2[6]/shift_register[1] ,
         \chip_core/gpio_control_in_2[6]/shift_register[0] ,
         \chip_core/gpio_control_in_2[5]/gpio_outenb ,
         \chip_core/gpio_control_in_2[5]/mgmt_ena ,
         \chip_core/gpio_control_in_2[5]/shift_register[12] ,
         \chip_core/gpio_control_in_2[5]/shift_register[11] ,
         \chip_core/gpio_control_in_2[5]/shift_register[10] ,
         \chip_core/gpio_control_in_2[5]/shift_register[9] ,
         \chip_core/gpio_control_in_2[5]/shift_register[8] ,
         \chip_core/gpio_control_in_2[5]/shift_register[7] ,
         \chip_core/gpio_control_in_2[5]/shift_register[6] ,
         \chip_core/gpio_control_in_2[5]/shift_register[5] ,
         \chip_core/gpio_control_in_2[5]/shift_register[4] ,
         \chip_core/gpio_control_in_2[5]/shift_register[3] ,
         \chip_core/gpio_control_in_2[5]/shift_register[2] ,
         \chip_core/gpio_control_in_2[5]/shift_register[1] ,
         \chip_core/gpio_control_in_2[5]/shift_register[0] ,
         \chip_core/gpio_control_in_2[4]/gpio_outenb ,
         \chip_core/gpio_control_in_2[4]/mgmt_ena ,
         \chip_core/gpio_control_in_2[4]/shift_register[12] ,
         \chip_core/gpio_control_in_2[4]/shift_register[11] ,
         \chip_core/gpio_control_in_2[4]/shift_register[10] ,
         \chip_core/gpio_control_in_2[4]/shift_register[9] ,
         \chip_core/gpio_control_in_2[4]/shift_register[8] ,
         \chip_core/gpio_control_in_2[4]/shift_register[7] ,
         \chip_core/gpio_control_in_2[4]/shift_register[6] ,
         \chip_core/gpio_control_in_2[4]/shift_register[5] ,
         \chip_core/gpio_control_in_2[4]/shift_register[4] ,
         \chip_core/gpio_control_in_2[4]/shift_register[3] ,
         \chip_core/gpio_control_in_2[4]/shift_register[2] ,
         \chip_core/gpio_control_in_2[4]/shift_register[1] ,
         \chip_core/gpio_control_in_2[4]/shift_register[0] ,
         \chip_core/gpio_control_in_2[3]/gpio_outenb ,
         \chip_core/gpio_control_in_2[3]/mgmt_ena ,
         \chip_core/gpio_control_in_2[3]/shift_register[12] ,
         \chip_core/gpio_control_in_2[3]/shift_register[11] ,
         \chip_core/gpio_control_in_2[3]/shift_register[10] ,
         \chip_core/gpio_control_in_2[3]/shift_register[9] ,
         \chip_core/gpio_control_in_2[3]/shift_register[8] ,
         \chip_core/gpio_control_in_2[3]/shift_register[7] ,
         \chip_core/gpio_control_in_2[3]/shift_register[6] ,
         \chip_core/gpio_control_in_2[3]/shift_register[5] ,
         \chip_core/gpio_control_in_2[3]/shift_register[4] ,
         \chip_core/gpio_control_in_2[3]/shift_register[3] ,
         \chip_core/gpio_control_in_2[3]/shift_register[2] ,
         \chip_core/gpio_control_in_2[3]/shift_register[1] ,
         \chip_core/gpio_control_in_2[3]/shift_register[0] ,
         \chip_core/gpio_control_in_2[2]/gpio_outenb ,
         \chip_core/gpio_control_in_2[2]/mgmt_ena ,
         \chip_core/gpio_control_in_2[2]/shift_register[12] ,
         \chip_core/gpio_control_in_2[2]/shift_register[11] ,
         \chip_core/gpio_control_in_2[2]/shift_register[10] ,
         \chip_core/gpio_control_in_2[2]/shift_register[9] ,
         \chip_core/gpio_control_in_2[2]/shift_register[8] ,
         \chip_core/gpio_control_in_2[2]/shift_register[7] ,
         \chip_core/gpio_control_in_2[2]/shift_register[6] ,
         \chip_core/gpio_control_in_2[2]/shift_register[5] ,
         \chip_core/gpio_control_in_2[2]/shift_register[4] ,
         \chip_core/gpio_control_in_2[2]/shift_register[3] ,
         \chip_core/gpio_control_in_2[2]/shift_register[2] ,
         \chip_core/gpio_control_in_2[2]/shift_register[1] ,
         \chip_core/gpio_control_in_2[2]/shift_register[0] ,
         \chip_core/gpio_control_in_2[1]/gpio_outenb ,
         \chip_core/gpio_control_in_2[1]/mgmt_ena ,
         \chip_core/gpio_control_in_2[1]/shift_register[12] ,
         \chip_core/gpio_control_in_2[1]/shift_register[11] ,
         \chip_core/gpio_control_in_2[1]/shift_register[10] ,
         \chip_core/gpio_control_in_2[1]/shift_register[9] ,
         \chip_core/gpio_control_in_2[1]/shift_register[8] ,
         \chip_core/gpio_control_in_2[1]/shift_register[7] ,
         \chip_core/gpio_control_in_2[1]/shift_register[6] ,
         \chip_core/gpio_control_in_2[1]/shift_register[5] ,
         \chip_core/gpio_control_in_2[1]/shift_register[4] ,
         \chip_core/gpio_control_in_2[1]/shift_register[3] ,
         \chip_core/gpio_control_in_2[1]/shift_register[2] ,
         \chip_core/gpio_control_in_2[1]/shift_register[1] ,
         \chip_core/gpio_control_in_2[1]/shift_register[0] ,
         \chip_core/gpio_control_in_2[0]/gpio_outenb ,
         \chip_core/gpio_control_in_2[0]/mgmt_ena ,
         \chip_core/gpio_control_in_2[0]/shift_register[12] ,
         \chip_core/gpio_control_in_2[0]/shift_register[11] ,
         \chip_core/gpio_control_in_2[0]/shift_register[10] ,
         \chip_core/gpio_control_in_2[0]/shift_register[9] ,
         \chip_core/gpio_control_in_2[0]/shift_register[8] ,
         \chip_core/gpio_control_in_2[0]/shift_register[7] ,
         \chip_core/gpio_control_in_2[0]/shift_register[6] ,
         \chip_core/gpio_control_in_2[0]/shift_register[5] ,
         \chip_core/gpio_control_in_2[0]/shift_register[4] ,
         \chip_core/gpio_control_in_2[0]/shift_register[3] ,
         \chip_core/gpio_control_in_2[0]/shift_register[2] ,
         \chip_core/gpio_control_in_2[0]/shift_register[1] ,
         \chip_core/gpio_control_in_2[0]/shift_register[0] ,
         \chip_core/gpio_control_bidir_2[2]/gpio_outenb ,
         \chip_core/gpio_control_bidir_2[2]/mgmt_ena ,
         \chip_core/gpio_control_bidir_2[2]/shift_register[12] ,
         \chip_core/gpio_control_bidir_2[2]/shift_register[11] ,
         \chip_core/gpio_control_bidir_2[2]/shift_register[10] ,
         \chip_core/gpio_control_bidir_2[2]/shift_register[9] ,
         \chip_core/gpio_control_bidir_2[2]/shift_register[8] ,
         \chip_core/gpio_control_bidir_2[2]/shift_register[7] ,
         \chip_core/gpio_control_bidir_2[2]/shift_register[6] ,
         \chip_core/gpio_control_bidir_2[2]/shift_register[5] ,
         \chip_core/gpio_control_bidir_2[2]/shift_register[4] ,
         \chip_core/gpio_control_bidir_2[2]/shift_register[3] ,
         \chip_core/gpio_control_bidir_2[2]/shift_register[2] ,
         \chip_core/gpio_control_bidir_2[2]/shift_register[1] ,
         \chip_core/gpio_control_bidir_2[2]/shift_register[0] ,
         \chip_core/gpio_control_bidir_2[1]/gpio_outenb ,
         \chip_core/gpio_control_bidir_2[1]/mgmt_ena ,
         \chip_core/gpio_control_bidir_2[1]/shift_register[12] ,
         \chip_core/gpio_control_bidir_2[1]/shift_register[11] ,
         \chip_core/gpio_control_bidir_2[1]/shift_register[10] ,
         \chip_core/gpio_control_bidir_2[1]/shift_register[9] ,
         \chip_core/gpio_control_bidir_2[1]/shift_register[8] ,
         \chip_core/gpio_control_bidir_2[1]/shift_register[7] ,
         \chip_core/gpio_control_bidir_2[1]/shift_register[6] ,
         \chip_core/gpio_control_bidir_2[1]/shift_register[5] ,
         \chip_core/gpio_control_bidir_2[1]/shift_register[4] ,
         \chip_core/gpio_control_bidir_2[1]/shift_register[3] ,
         \chip_core/gpio_control_bidir_2[1]/shift_register[2] ,
         \chip_core/gpio_control_bidir_2[1]/shift_register[1] ,
         \chip_core/gpio_control_bidir_2[1]/shift_register[0] ,
         \chip_core/gpio_control_bidir_2[0]/gpio_outenb ,
         \chip_core/gpio_control_bidir_2[0]/mgmt_ena ,
         \chip_core/gpio_control_bidir_2[0]/shift_register[12] ,
         \chip_core/gpio_control_bidir_2[0]/shift_register[11] ,
         \chip_core/gpio_control_bidir_2[0]/shift_register[10] ,
         \chip_core/gpio_control_bidir_2[0]/shift_register[9] ,
         \chip_core/gpio_control_bidir_2[0]/shift_register[8] ,
         \chip_core/gpio_control_bidir_2[0]/shift_register[7] ,
         \chip_core/gpio_control_bidir_2[0]/shift_register[6] ,
         \chip_core/gpio_control_bidir_2[0]/shift_register[5] ,
         \chip_core/gpio_control_bidir_2[0]/shift_register[4] ,
         \chip_core/gpio_control_bidir_2[0]/shift_register[3] ,
         \chip_core/gpio_control_bidir_2[0]/shift_register[2] ,
         \chip_core/gpio_control_bidir_2[0]/shift_register[1] ,
         \chip_core/gpio_control_bidir_2[0]/shift_register[0] ,
         \chip_core/gpio_control_in_1[10]/gpio_outenb ,
         \chip_core/gpio_control_in_1[10]/mgmt_ena ,
         \chip_core/gpio_control_in_1[10]/shift_register[12] ,
         \chip_core/gpio_control_in_1[10]/shift_register[11] ,
         \chip_core/gpio_control_in_1[10]/shift_register[10] ,
         \chip_core/gpio_control_in_1[10]/shift_register[9] ,
         \chip_core/gpio_control_in_1[10]/shift_register[8] ,
         \chip_core/gpio_control_in_1[10]/shift_register[7] ,
         \chip_core/gpio_control_in_1[10]/shift_register[6] ,
         \chip_core/gpio_control_in_1[10]/shift_register[5] ,
         \chip_core/gpio_control_in_1[10]/shift_register[4] ,
         \chip_core/gpio_control_in_1[10]/shift_register[3] ,
         \chip_core/gpio_control_in_1[10]/shift_register[2] ,
         \chip_core/gpio_control_in_1[10]/shift_register[1] ,
         \chip_core/gpio_control_in_1[10]/shift_register[0] ,
         \chip_core/gpio_control_in_1[9]/gpio_outenb ,
         \chip_core/gpio_control_in_1[9]/mgmt_ena ,
         \chip_core/gpio_control_in_1[9]/shift_register[12] ,
         \chip_core/gpio_control_in_1[9]/shift_register[11] ,
         \chip_core/gpio_control_in_1[9]/shift_register[10] ,
         \chip_core/gpio_control_in_1[9]/shift_register[9] ,
         \chip_core/gpio_control_in_1[9]/shift_register[8] ,
         \chip_core/gpio_control_in_1[9]/shift_register[7] ,
         \chip_core/gpio_control_in_1[9]/shift_register[6] ,
         \chip_core/gpio_control_in_1[9]/shift_register[5] ,
         \chip_core/gpio_control_in_1[9]/shift_register[4] ,
         \chip_core/gpio_control_in_1[9]/shift_register[3] ,
         \chip_core/gpio_control_in_1[9]/shift_register[2] ,
         \chip_core/gpio_control_in_1[9]/shift_register[1] ,
         \chip_core/gpio_control_in_1[9]/shift_register[0] ,
         \chip_core/gpio_control_in_1[8]/gpio_outenb ,
         \chip_core/gpio_control_in_1[8]/mgmt_ena ,
         \chip_core/gpio_control_in_1[8]/shift_register[12] ,
         \chip_core/gpio_control_in_1[8]/shift_register[11] ,
         \chip_core/gpio_control_in_1[8]/shift_register[10] ,
         \chip_core/gpio_control_in_1[8]/shift_register[9] ,
         \chip_core/gpio_control_in_1[8]/shift_register[8] ,
         \chip_core/gpio_control_in_1[8]/shift_register[7] ,
         \chip_core/gpio_control_in_1[8]/shift_register[6] ,
         \chip_core/gpio_control_in_1[8]/shift_register[5] ,
         \chip_core/gpio_control_in_1[8]/shift_register[4] ,
         \chip_core/gpio_control_in_1[8]/shift_register[3] ,
         \chip_core/gpio_control_in_1[8]/shift_register[2] ,
         \chip_core/gpio_control_in_1[8]/shift_register[1] ,
         \chip_core/gpio_control_in_1[8]/shift_register[0] ,
         \chip_core/gpio_control_in_1[7]/gpio_outenb ,
         \chip_core/gpio_control_in_1[7]/mgmt_ena ,
         \chip_core/gpio_control_in_1[7]/shift_register[12] ,
         \chip_core/gpio_control_in_1[7]/shift_register[11] ,
         \chip_core/gpio_control_in_1[7]/shift_register[10] ,
         \chip_core/gpio_control_in_1[7]/shift_register[9] ,
         \chip_core/gpio_control_in_1[7]/shift_register[8] ,
         \chip_core/gpio_control_in_1[7]/shift_register[7] ,
         \chip_core/gpio_control_in_1[7]/shift_register[6] ,
         \chip_core/gpio_control_in_1[7]/shift_register[5] ,
         \chip_core/gpio_control_in_1[7]/shift_register[4] ,
         \chip_core/gpio_control_in_1[7]/shift_register[3] ,
         \chip_core/gpio_control_in_1[7]/shift_register[2] ,
         \chip_core/gpio_control_in_1[7]/shift_register[1] ,
         \chip_core/gpio_control_in_1[7]/shift_register[0] ,
         \chip_core/gpio_control_in_1[6]/gpio_outenb ,
         \chip_core/gpio_control_in_1[6]/mgmt_ena ,
         \chip_core/gpio_control_in_1[6]/shift_register[12] ,
         \chip_core/gpio_control_in_1[6]/shift_register[11] ,
         \chip_core/gpio_control_in_1[6]/shift_register[10] ,
         \chip_core/gpio_control_in_1[6]/shift_register[9] ,
         \chip_core/gpio_control_in_1[6]/shift_register[8] ,
         \chip_core/gpio_control_in_1[6]/shift_register[7] ,
         \chip_core/gpio_control_in_1[6]/shift_register[6] ,
         \chip_core/gpio_control_in_1[6]/shift_register[5] ,
         \chip_core/gpio_control_in_1[6]/shift_register[4] ,
         \chip_core/gpio_control_in_1[6]/shift_register[3] ,
         \chip_core/gpio_control_in_1[6]/shift_register[2] ,
         \chip_core/gpio_control_in_1[6]/shift_register[1] ,
         \chip_core/gpio_control_in_1[6]/shift_register[0] ,
         \chip_core/gpio_control_in_1[5]/gpio_outenb ,
         \chip_core/gpio_control_in_1[5]/mgmt_ena ,
         \chip_core/gpio_control_in_1[5]/shift_register[12] ,
         \chip_core/gpio_control_in_1[5]/shift_register[11] ,
         \chip_core/gpio_control_in_1[5]/shift_register[10] ,
         \chip_core/gpio_control_in_1[5]/shift_register[9] ,
         \chip_core/gpio_control_in_1[5]/shift_register[8] ,
         \chip_core/gpio_control_in_1[5]/shift_register[7] ,
         \chip_core/gpio_control_in_1[5]/shift_register[6] ,
         \chip_core/gpio_control_in_1[5]/shift_register[5] ,
         \chip_core/gpio_control_in_1[5]/shift_register[4] ,
         \chip_core/gpio_control_in_1[5]/shift_register[3] ,
         \chip_core/gpio_control_in_1[5]/shift_register[2] ,
         \chip_core/gpio_control_in_1[5]/shift_register[1] ,
         \chip_core/gpio_control_in_1[5]/shift_register[0] ,
         \chip_core/gpio_control_in_1[4]/gpio_outenb ,
         \chip_core/gpio_control_in_1[4]/mgmt_ena ,
         \chip_core/gpio_control_in_1[4]/shift_register[12] ,
         \chip_core/gpio_control_in_1[4]/shift_register[11] ,
         \chip_core/gpio_control_in_1[4]/shift_register[10] ,
         \chip_core/gpio_control_in_1[4]/shift_register[9] ,
         \chip_core/gpio_control_in_1[4]/shift_register[8] ,
         \chip_core/gpio_control_in_1[4]/shift_register[7] ,
         \chip_core/gpio_control_in_1[4]/shift_register[6] ,
         \chip_core/gpio_control_in_1[4]/shift_register[5] ,
         \chip_core/gpio_control_in_1[4]/shift_register[4] ,
         \chip_core/gpio_control_in_1[4]/shift_register[3] ,
         \chip_core/gpio_control_in_1[4]/shift_register[2] ,
         \chip_core/gpio_control_in_1[4]/shift_register[1] ,
         \chip_core/gpio_control_in_1[4]/shift_register[0] ,
         \chip_core/gpio_control_in_1[3]/gpio_outenb ,
         \chip_core/gpio_control_in_1[3]/mgmt_ena ,
         \chip_core/gpio_control_in_1[3]/shift_register[12] ,
         \chip_core/gpio_control_in_1[3]/shift_register[11] ,
         \chip_core/gpio_control_in_1[3]/shift_register[10] ,
         \chip_core/gpio_control_in_1[3]/shift_register[9] ,
         \chip_core/gpio_control_in_1[3]/shift_register[8] ,
         \chip_core/gpio_control_in_1[3]/shift_register[7] ,
         \chip_core/gpio_control_in_1[3]/shift_register[6] ,
         \chip_core/gpio_control_in_1[3]/shift_register[5] ,
         \chip_core/gpio_control_in_1[3]/shift_register[4] ,
         \chip_core/gpio_control_in_1[3]/shift_register[3] ,
         \chip_core/gpio_control_in_1[3]/shift_register[2] ,
         \chip_core/gpio_control_in_1[3]/shift_register[1] ,
         \chip_core/gpio_control_in_1[3]/shift_register[0] ,
         \chip_core/gpio_control_in_1[2]/gpio_outenb ,
         \chip_core/gpio_control_in_1[2]/mgmt_ena ,
         \chip_core/gpio_control_in_1[2]/shift_register[12] ,
         \chip_core/gpio_control_in_1[2]/shift_register[11] ,
         \chip_core/gpio_control_in_1[2]/shift_register[10] ,
         \chip_core/gpio_control_in_1[2]/shift_register[9] ,
         \chip_core/gpio_control_in_1[2]/shift_register[8] ,
         \chip_core/gpio_control_in_1[2]/shift_register[7] ,
         \chip_core/gpio_control_in_1[2]/shift_register[6] ,
         \chip_core/gpio_control_in_1[2]/shift_register[5] ,
         \chip_core/gpio_control_in_1[2]/shift_register[4] ,
         \chip_core/gpio_control_in_1[2]/shift_register[3] ,
         \chip_core/gpio_control_in_1[2]/shift_register[2] ,
         \chip_core/gpio_control_in_1[2]/shift_register[1] ,
         \chip_core/gpio_control_in_1[2]/shift_register[0] ,
         \chip_core/gpio_control_in_1[1]/gpio_outenb ,
         \chip_core/gpio_control_in_1[1]/mgmt_ena ,
         \chip_core/gpio_control_in_1[1]/shift_register[12] ,
         \chip_core/gpio_control_in_1[1]/shift_register[11] ,
         \chip_core/gpio_control_in_1[1]/shift_register[10] ,
         \chip_core/gpio_control_in_1[1]/shift_register[9] ,
         \chip_core/gpio_control_in_1[1]/shift_register[8] ,
         \chip_core/gpio_control_in_1[1]/shift_register[7] ,
         \chip_core/gpio_control_in_1[1]/shift_register[6] ,
         \chip_core/gpio_control_in_1[1]/shift_register[5] ,
         \chip_core/gpio_control_in_1[1]/shift_register[4] ,
         \chip_core/gpio_control_in_1[1]/shift_register[3] ,
         \chip_core/gpio_control_in_1[1]/shift_register[2] ,
         \chip_core/gpio_control_in_1[1]/shift_register[1] ,
         \chip_core/gpio_control_in_1[1]/shift_register[0] ,
         \chip_core/gpio_control_in_1[0]/gpio_outenb ,
         \chip_core/gpio_control_in_1[0]/mgmt_ena ,
         \chip_core/gpio_control_in_1[0]/shift_register[12] ,
         \chip_core/gpio_control_in_1[0]/shift_register[11] ,
         \chip_core/gpio_control_in_1[0]/shift_register[10] ,
         \chip_core/gpio_control_in_1[0]/shift_register[9] ,
         \chip_core/gpio_control_in_1[0]/shift_register[8] ,
         \chip_core/gpio_control_in_1[0]/shift_register[7] ,
         \chip_core/gpio_control_in_1[0]/shift_register[6] ,
         \chip_core/gpio_control_in_1[0]/shift_register[5] ,
         \chip_core/gpio_control_in_1[0]/shift_register[4] ,
         \chip_core/gpio_control_in_1[0]/shift_register[3] ,
         \chip_core/gpio_control_in_1[0]/shift_register[2] ,
         \chip_core/gpio_control_in_1[0]/shift_register[1] ,
         \chip_core/gpio_control_in_1[0]/shift_register[0] ,
         \chip_core/gpio_control_in_1a[5]/gpio_outenb ,
         \chip_core/gpio_control_in_1a[5]/mgmt_ena ,
         \chip_core/gpio_control_in_1a[5]/shift_register[12] ,
         \chip_core/gpio_control_in_1a[5]/shift_register[11] ,
         \chip_core/gpio_control_in_1a[5]/shift_register[10] ,
         \chip_core/gpio_control_in_1a[5]/shift_register[9] ,
         \chip_core/gpio_control_in_1a[5]/shift_register[8] ,
         \chip_core/gpio_control_in_1a[5]/shift_register[7] ,
         \chip_core/gpio_control_in_1a[5]/shift_register[6] ,
         \chip_core/gpio_control_in_1a[5]/shift_register[5] ,
         \chip_core/gpio_control_in_1a[5]/shift_register[4] ,
         \chip_core/gpio_control_in_1a[5]/shift_register[3] ,
         \chip_core/gpio_control_in_1a[5]/shift_register[2] ,
         \chip_core/gpio_control_in_1a[5]/shift_register[1] ,
         \chip_core/gpio_control_in_1a[5]/shift_register[0] ,
         \chip_core/gpio_control_in_1a[4]/gpio_outenb ,
         \chip_core/gpio_control_in_1a[4]/mgmt_ena ,
         \chip_core/gpio_control_in_1a[4]/shift_register[12] ,
         \chip_core/gpio_control_in_1a[4]/shift_register[11] ,
         \chip_core/gpio_control_in_1a[4]/shift_register[10] ,
         \chip_core/gpio_control_in_1a[4]/shift_register[9] ,
         \chip_core/gpio_control_in_1a[4]/shift_register[8] ,
         \chip_core/gpio_control_in_1a[4]/shift_register[7] ,
         \chip_core/gpio_control_in_1a[4]/shift_register[6] ,
         \chip_core/gpio_control_in_1a[4]/shift_register[5] ,
         \chip_core/gpio_control_in_1a[4]/shift_register[4] ,
         \chip_core/gpio_control_in_1a[4]/shift_register[3] ,
         \chip_core/gpio_control_in_1a[4]/shift_register[2] ,
         \chip_core/gpio_control_in_1a[4]/shift_register[1] ,
         \chip_core/gpio_control_in_1a[4]/shift_register[0] ,
         \chip_core/gpio_control_in_1a[3]/gpio_outenb ,
         \chip_core/gpio_control_in_1a[3]/mgmt_ena ,
         \chip_core/gpio_control_in_1a[3]/shift_register[12] ,
         \chip_core/gpio_control_in_1a[3]/shift_register[11] ,
         \chip_core/gpio_control_in_1a[3]/shift_register[10] ,
         \chip_core/gpio_control_in_1a[3]/shift_register[9] ,
         \chip_core/gpio_control_in_1a[3]/shift_register[8] ,
         \chip_core/gpio_control_in_1a[3]/shift_register[7] ,
         \chip_core/gpio_control_in_1a[3]/shift_register[6] ,
         \chip_core/gpio_control_in_1a[3]/shift_register[5] ,
         \chip_core/gpio_control_in_1a[3]/shift_register[4] ,
         \chip_core/gpio_control_in_1a[3]/shift_register[3] ,
         \chip_core/gpio_control_in_1a[3]/shift_register[2] ,
         \chip_core/gpio_control_in_1a[3]/shift_register[1] ,
         \chip_core/gpio_control_in_1a[3]/shift_register[0] ,
         \chip_core/gpio_control_in_1a[2]/gpio_outenb ,
         \chip_core/gpio_control_in_1a[2]/mgmt_ena ,
         \chip_core/gpio_control_in_1a[2]/shift_register[12] ,
         \chip_core/gpio_control_in_1a[2]/shift_register[11] ,
         \chip_core/gpio_control_in_1a[2]/shift_register[10] ,
         \chip_core/gpio_control_in_1a[2]/shift_register[9] ,
         \chip_core/gpio_control_in_1a[2]/shift_register[8] ,
         \chip_core/gpio_control_in_1a[2]/shift_register[7] ,
         \chip_core/gpio_control_in_1a[2]/shift_register[6] ,
         \chip_core/gpio_control_in_1a[2]/shift_register[5] ,
         \chip_core/gpio_control_in_1a[2]/shift_register[4] ,
         \chip_core/gpio_control_in_1a[2]/shift_register[3] ,
         \chip_core/gpio_control_in_1a[2]/shift_register[2] ,
         \chip_core/gpio_control_in_1a[2]/shift_register[1] ,
         \chip_core/gpio_control_in_1a[2]/shift_register[0] ,
         \chip_core/gpio_control_in_1a[1]/gpio_outenb ,
         \chip_core/gpio_control_in_1a[1]/mgmt_ena ,
         \chip_core/gpio_control_in_1a[1]/shift_register[12] ,
         \chip_core/gpio_control_in_1a[1]/shift_register[11] ,
         \chip_core/gpio_control_in_1a[1]/shift_register[10] ,
         \chip_core/gpio_control_in_1a[1]/shift_register[9] ,
         \chip_core/gpio_control_in_1a[1]/shift_register[8] ,
         \chip_core/gpio_control_in_1a[1]/shift_register[7] ,
         \chip_core/gpio_control_in_1a[1]/shift_register[6] ,
         \chip_core/gpio_control_in_1a[1]/shift_register[5] ,
         \chip_core/gpio_control_in_1a[1]/shift_register[4] ,
         \chip_core/gpio_control_in_1a[1]/shift_register[3] ,
         \chip_core/gpio_control_in_1a[1]/shift_register[2] ,
         \chip_core/gpio_control_in_1a[1]/shift_register[1] ,
         \chip_core/gpio_control_in_1a[1]/shift_register[0] ,
         \chip_core/gpio_control_in_1a[0]/gpio_outenb ,
         \chip_core/gpio_control_in_1a[0]/mgmt_ena ,
         \chip_core/gpio_control_in_1a[0]/shift_register[12] ,
         \chip_core/gpio_control_in_1a[0]/shift_register[11] ,
         \chip_core/gpio_control_in_1a[0]/shift_register[10] ,
         \chip_core/gpio_control_in_1a[0]/shift_register[9] ,
         \chip_core/gpio_control_in_1a[0]/shift_register[8] ,
         \chip_core/gpio_control_in_1a[0]/shift_register[7] ,
         \chip_core/gpio_control_in_1a[0]/shift_register[6] ,
         \chip_core/gpio_control_in_1a[0]/shift_register[5] ,
         \chip_core/gpio_control_in_1a[0]/shift_register[4] ,
         \chip_core/gpio_control_in_1a[0]/shift_register[3] ,
         \chip_core/gpio_control_in_1a[0]/shift_register[2] ,
         \chip_core/gpio_control_in_1a[0]/shift_register[1] ,
         \chip_core/gpio_control_in_1a[0]/shift_register[0] ,
         \chip_core/gpio_control_bidir_1[1]/gpio_outenb ,
         \chip_core/gpio_control_bidir_1[1]/mgmt_ena ,
         \chip_core/gpio_control_bidir_1[1]/shift_register[12] ,
         \chip_core/gpio_control_bidir_1[1]/shift_register[11] ,
         \chip_core/gpio_control_bidir_1[1]/shift_register[10] ,
         \chip_core/gpio_control_bidir_1[1]/shift_register[9] ,
         \chip_core/gpio_control_bidir_1[1]/shift_register[8] ,
         \chip_core/gpio_control_bidir_1[1]/shift_register[7] ,
         \chip_core/gpio_control_bidir_1[1]/shift_register[6] ,
         \chip_core/gpio_control_bidir_1[1]/shift_register[5] ,
         \chip_core/gpio_control_bidir_1[1]/shift_register[4] ,
         \chip_core/gpio_control_bidir_1[1]/shift_register[3] ,
         \chip_core/gpio_control_bidir_1[1]/shift_register[2] ,
         \chip_core/gpio_control_bidir_1[1]/shift_register[1] ,
         \chip_core/gpio_control_bidir_1[1]/shift_register[0] ,
         \chip_core/mprj/debug/N133 , \chip_core/pll/pll_control/N89 ,
         \chip_core/pll/pll_control/N68 , \chip_core/pll/pll_control/N67 ,
         \chip_core/pll/pll_control/N66 , \chip_core/pll/pll_control/N65 ,
         \chip_core/pll/pll_control/N64 ,
         \chip_core/clock_ctrl/divider/even_0/out_counter ,
         \chip_core/clock_ctrl/divider/odd_0/rst_pulse ,
         \chip_core/clock_ctrl/divider/odd_0/out_counter ,
         \chip_core/clock_ctrl/divider/odd_0/out_counter2 ,
         \chip_core/pll/ringosc/dstage[0].id/d2 ,
         \chip_core/pll/ringosc/iss/ctrl0 , \chip_core/pll/ringosc/iss/d2 ,
         \chip_core/clock_ctrl/divider2/even_0/out_counter ,
         \chip_core/clock_ctrl/divider2/odd_0/rst_pulse ,
         \chip_core/clock_ctrl/divider2/odd_0/out_counter ,
         \chip_core/clock_ctrl/divider2/odd_0/out_counter2 ,
         \chip_core/pll/ringosc/dstage[11].id/d2 ,
         \chip_core/pll/ringosc/dstage[10].id/d2 ,
         \chip_core/pll/ringosc/dstage[9].id/d2 ,
         \chip_core/pll/ringosc/dstage[8].id/d2 ,
         \chip_core/pll/ringosc/dstage[7].id/d2 ,
         \chip_core/pll/ringosc/dstage[6].id/d2 ,
         \chip_core/pll/ringosc/dstage[5].id/d2 ,
         \chip_core/pll/ringosc/dstage[4].id/d2 ,
         \chip_core/pll/ringosc/dstage[3].id/d2 ,
         \chip_core/pll/ringosc/dstage[2].id/d2 ,
         \chip_core/pll/ringosc/dstage[1].id/d2 , n533, n534, n535, n798, n799,
         n801, n802, n803, n804, n805, n806, n809, n810, n811, n812, n813,
         n814, n815, n816, n817, n818, n819, n820, n821, n822, n823, n824,
         n825, n826, n827, n828, n829, n830, n831, n832, n833, n834, n835,
         n836, n837, n838, n839, n840, n841, n842, n843, n844, n845, n846,
         n847, n848, n849, n850, n851, n852, n853, n854, n855, n856, n857,
         n858, n859, n860, n861, n862, n863, n864, n865, n866, n867, n868,
         n869, n870, n871, n872, n873, n874, n875, n876, n877, n878, n879,
         n880, n881, n882, n883, n884, n885, n886, n887, n888, n889, n890,
         n891, n892, n893, n894, n895, n896, n897, n898, n899, n900, n901,
         n902, n903, n904, n905, n906, n907, n908, n909, n910, n911, n912,
         n913, n914, n915, n916, n917, n918, n919, n920, n921, n922, n923,
         n924, n925, n926, n927, n928, n929, n930, n931, n932, n933, n934,
         n936, n937, n938, n939, n940, n941, n942, n943, n944, n945, n946,
         n947, n948, n949, n950, n951, n952, n953, n954, n955, n956, n957,
         n958, n959, n960, n961, n962, n963, n964, n965, n966, n967, n968,
         n969, n970, n971, n972, n973, n974, n975, n976, n977, n978, n979,
         n980, n981, n982, n983, n984, n985, n986, n987, n988, n989, n990,
         n991, n992, n993, n994, n995, n996, n997, n998, n999, n1000, n1001,
         n1002, n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011,
         n1012, n1013, n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021,
         n1022, n1023, n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031,
         n1032, n1033, n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041,
         n1042, n1043, n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051,
         n1052, n1053, n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061,
         n1062, n1063, n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071,
         n1072, n1073, n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081,
         n1082, n1083, n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091,
         n1092, n1093, n1094, n1095, n1096, n1097, n1098, n1099, n1101, n1102,
         n1103, n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112,
         n1113, n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122,
         n1123, n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132,
         n1133, \DP_OP_229J4_123_275/n6 , \DP_OP_229J4_123_275/n5 ,
         \DP_OP_229J4_123_275/n4 , \DP_OP_229J4_123_275/n3 ,
         \DP_OP_229J4_123_275/n2 , \intadd_0/CI , \intadd_0/SUM[2] ,
         \intadd_0/SUM[1] , \intadd_0/SUM[0] , \intadd_0/n3 , \intadd_0/n2 ,
         \intadd_0/n1 , n1134, n1135, n1136, n1137, n1138, n1140, n1141, n1142,
         n1143, n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152,
         n1153, n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162,
         n1163, n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172,
         n1173, n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182,
         n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192,
         n1193, n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202,
         n1203, n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212,
         n1213, n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222,
         n1223, n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232,
         n1233, n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242,
         n1243, n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252,
         n1253, n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262,
         n1263, n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272,
         n1273, n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282,
         n1283, n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292,
         n1293, n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302,
         n1303, n1304, n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312,
         n1313, n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322,
         n1323, n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332,
         n1333, n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342,
         n1343, n1344, n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352,
         n1353, n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362,
         n1363, n1364, n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372,
         n1373, n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382,
         n1383, n1384, n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392,
         n1393, n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402,
         n1403, n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412,
         n1413, n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422,
         n1423, n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432,
         n1433, n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442,
         n1443, n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452,
         n1453, n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462,
         n1463, n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472,
         n1473, n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482,
         n1483, n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492,
         n1493, n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502,
         n1503, n1504, n1505, n1506, n1507, n1508, n1509, n1510, n1511, n1512,
         n1513, n1514, n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522,
         n1523, n1524, n1525, n1526, n1527, n1528, n1529, n1530, n1531, n1532,
         n1533, n1534, n1535, n1536, n1537, n1538, n1539, n1540, n1541, n1542,
         n1543, n1544, n1545, n1546, n1547, n1548, n1549, n1550, n1551, n1552,
         n1553, n1554, n1555, n1556, n1557, n1558, n1559, n1560, n1561, n1562,
         n1563, n1564, n1565, n1566, n1567, n1568, n1569, n1570, n1571, n1572,
         n1573, n1574, n1575, n1576, n1577, n1578, n1579, n1580, n1581, n1582,
         n1583, n1584, n1585, n1586, n1587, n1588, n1589, n1590, n1591, n1592,
         n1593, n1594, n1595, n1596, n1597, n1598, n1599, n1600, n1601, n1602,
         n1603, n1604, n1605, n1606, n1607, n1608, n1609, n1610, n1611, n1612,
         n1613, n1614, n1615, n1616, n1617, n1618, n1619, n1620, n1621, n1622,
         n1623, n1624, n1625, n1626, n1627, n1628, n1629, n1630, n1631, n1632,
         n1633, n1634, n1635, n1636, n1637, n1638, n1639, n1640, n1641, n1642,
         n1643, n1644, n1645, n1646, n1647, n1648, n1649, n1650, n1651, n1652,
         n1653, n1654, n1655, n1656, n1657, n1658, n1659, n1660, n1661, n1662,
         n1663, n1664, n1665, n1666, n1667, n1668, n1669, n1670, n1671, n1672,
         n1673, n1674, n1675, n1676, n1677, n1678, n1679, n1680, n1681, n1682,
         n1683, n1684, n1685, n1686, n1687, n1688, n1689, n1690, n1691, n1692,
         n1693, n1694, n1695, n1696, n1697, n1698, n1699, n1700, n1701, n1702,
         n1703, n1704, n1705, n1706, n1707, n1708, n1709, n1710, n1711, n1712,
         n1713, n1714, n1715, n1716, n1717, n1718, n1719, n1720, n1721, n1722,
         n1723, n1724, n1725, n1726, n1727, n1728, n1759, n1760, n1761, n1762,
         n1763, n1764, n1765, n1766, n1767, n1768, n1769, n1770, n1771, n1772,
         n1773, n1774, n1775, n1776, n1777, n1778, n1779, n1780, n1781, n1782,
         n1783, n1784, n1785, n1786, n1787, n1788, n1789, n1790, n1791, n1792,
         n1793, n1794, n1795, n1796, n1797, n1798, n1799, n1800, n1801, n1802,
         n1803, n1804, n1805, n1806, n1807, n1808, n1809, n1810, n1811, n1812,
         n1813, n1814, n1815, n1816, n1817, n1818, n1819, n1820, n1821, n1822,
         n1823, n1824, n1825, n1826, n1827, n1828, n1829, n1830, n1831, n1832,
         n1833, n1834, n1835, n1836, n1837, n1838, n1839, n1840, n1841, n1842,
         n1843, n1844, n1845, n1846, n1847, n1848, n1849, n1850, n1851, n1852,
         n1853, n1854, net70417, net70418;
  wire   [37:0] mprj_io_out;
  wire   [37:0] mprj_io_oeb;
  wire   [37:0] mprj_io_inp_dis;
  wire   [113:0] mprj_io_dm;
  wire   [18:0] \chip_core/mgmt_gpio_in ;
  wire   [37:0] \chip_core/mgmt_io_oeb_hk ;
  wire   [37:0] \chip_core/mgmt_io_out_hk ;
  wire   [18:0] \chip_core/mgmt_io_in_hk ;
  wire   [25:0] \chip_core/spi_pll_trim ;
  wire   [4:0] \chip_core/spi_pll_div ;
  wire   [2:0] \chip_core/spi_pll90_sel ;
  wire   [2:0] \chip_core/spi_pll_sel ;
  wire   [18:0] \chip_core/gpio_serial_link_2_shifted ;
  wire   [18:0] \chip_core/gpio_serial_link_1_shifted ;
  wire   [2:0] \chip_core/irq_spi ;
  wire   [31:0] \chip_core/hk_dat_i ;
  wire   [31:0] \chip_core/mprj_dat_o_core ;
  wire   [31:0] \chip_core/mprj_adr_o_core ;
  wire   [3:0] \chip_core/mprj_sel_o_core ;
  wire   [31:0] \chip_core/mprj/wbs_dat_o_debug ;
  wire   [2:0] \chip_core/clock_ctrl/reset_delay ;
  wire   [25:0] \chip_core/pll/itrim ;
  wire   [31:0] \chip_core/mprj/debug/debug_reg_2 ;
  wire   [31:0] \chip_core/mprj/debug/debug_reg_1 ;
  wire   [2:0] \chip_core/clock_ctrl/divider/syncNp ;
  wire   [2:0] \chip_core/clock_ctrl/divider/syncN ;
  wire   [2:0] \chip_core/pll/pll_control/prep ;
  wire   [2:0] \chip_core/pll/pll_control/oscbuf ;
  wire   [1:0] \chip_core/pll/pll_control/tval ;
  wire   [4:0] \chip_core/pll/pll_control/tint ;
  wire   [4:0] \chip_core/pll/pll_control/count1 ;
  wire   [4:0] \chip_core/pll/pll_control/count0 ;
  wire   [2:0] \chip_core/clock_ctrl/divider2/syncNp ;
  wire   [2:0] \chip_core/clock_ctrl/divider2/syncN ;
  wire   [2:0] \chip_core/clock_ctrl/divider/even_0/counter ;
  wire   [2:0] \chip_core/clock_ctrl/divider/odd_0/old_N ;
  wire   [2:0] \chip_core/clock_ctrl/divider/odd_0/initial_begin ;
  wire   [2:0] \chip_core/clock_ctrl/divider/odd_0/counter2 ;
  wire   [2:0] \chip_core/clock_ctrl/divider/odd_0/counter ;
  wire   [2:0] \chip_core/clock_ctrl/divider2/even_0/counter ;
  wire   [2:0] \chip_core/clock_ctrl/divider2/odd_0/old_N ;
  wire   [2:0] \chip_core/clock_ctrl/divider2/odd_0/initial_begin ;
  wire   [2:0] \chip_core/clock_ctrl/divider2/odd_0/counter2 ;
  wire   [2:0] \chip_core/clock_ctrl/divider2/odd_0/counter ;
  tri   vddio;
  tri   vddio_2;
  tri   vssio;
  tri   vssio_2;
  tri   vdda;
  tri   vssa;
  tri   vccd;
  tri   vssd;
  tri   vdda1;
  tri   vdda1_2;
  tri   vdda2;
  tri   vssa1;
  tri   vssa1_2;
  tri   vssa2;
  tri   vccd1;
  tri   vccd2;
  tri   vssd1;
  tri   vssd2;
  tri   gpio;
  tri   [37:0] mprj_io;
  tri   flash_csb;
  tri   flash_clk;
  tri   flash_io0;
  tri   flash_io1;
  tri   vddio_core;
  tri   vssio_core;
  tri   vccd_core;
  tri   vssd_core;
  tri   [12:0] \chip_core/pll/ringosc/d ;
  tri   \chip_core/pll/ringosc/dstage[0].id/d1 ;
  tri   \chip_core/pll/ringosc/iss/d1 ;
  tri   \chip_core/pll/ringosc/dstage[11].id/d1 ;
  tri   \chip_core/pll/ringosc/dstage[10].id/d1 ;
  tri   \chip_core/pll/ringosc/dstage[9].id/d1 ;
  tri   \chip_core/pll/ringosc/dstage[8].id/d1 ;
  tri   \chip_core/pll/ringosc/dstage[7].id/d1 ;
  tri   \chip_core/pll/ringosc/dstage[6].id/d1 ;
  tri   \chip_core/pll/ringosc/dstage[5].id/d1 ;
  tri   \chip_core/pll/ringosc/dstage[4].id/d1 ;
  tri   \chip_core/pll/ringosc/dstage[3].id/d1 ;
  tri   \chip_core/pll/ringosc/dstage[2].id/d1 ;
  tri   \chip_core/pll/ringosc/dstage[1].id/d1 ;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34;

  chip_io padframe ( .vddio_pad(vddio), .vddio_pad2(vddio_2), .vssio_pad(vssio), .vssio_pad2(vssio_2), .vccd_pad(vccd), .vssd_pad(vssd), .vdda_pad(vdda), 
        .vssa_pad(vssa), .vdda1_pad(vdda1), .vdda1_pad2(vdda1_2), .vdda2_pad(
        vdda2), .vssa1_pad(vssa1), .vssa1_pad2(vssa1_2), .vssa2_pad(vssa2), 
        .vccd1_pad(vccd1), .vccd2_pad(vccd2), .vssd1_pad(vssd1), .vssd2_pad(
        vssd2), .vddio(vddio_core), .vssio(vssio_core), .vccd(vccd_core), 
        .vssd(vssd_core), .vssa1(1'b0), .gpio(gpio), .clock(clock), .resetb(
        resetb), .flash_csb(flash_csb), .flash_clk(flash_clk), .flash_io0(
        flash_io0), .flash_io1(flash_io1), .porb_h(1'b0), .por(1'b0), 
        .resetb_core_h(\chip_core/rstb_l ), .clock_core(clock_core), 
        .gpio_out_core(gpio_out_core), .gpio_in_core(gpio_in_core), 
        .gpio_mode0_core(gpio_mode0_core), .gpio_mode1_core(gpio_mode1_core), 
        .gpio_inenb_core(gpio_inenb_core), .flash_csb_core(1'b0), 
        .flash_clk_core(1'b0), .flash_csb_oeb_core(flash_csb_oeb), 
        .flash_clk_oeb_core(flash_clk_oeb), .flash_io0_oeb_core(flash_io0_oeb), 
        .flash_io1_oeb_core(net70417), .flash_io0_ieb_core(net70418), 
        .flash_io1_ieb_core(1'b0), .flash_io0_do_core(flash_io0_do), 
        .flash_io1_do_core(1'b0), .flash_io1_di_core(flash_io1_di), .mprj_io(
        mprj_io), .mprj_io_out(mprj_io_out), .mprj_io_oeb(mprj_io_oeb), 
        .mprj_io_inp_dis(mprj_io_inp_dis), .mprj_io_ib_mode_sel({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .mprj_io_vtrip_sel({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .mprj_io_slow_sel({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .mprj_io_holdover({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .mprj_io_analog_en({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .mprj_io_analog_sel({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .mprj_io_analog_pol({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .mprj_io_dm(mprj_io_dm), .mprj_io_in({\chip_core/mgmt_gpio_in , 
        \chip_core/mgmt_io_in_hk }), .mprj_io_one({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .mprj_analog_io({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .gpio_outenb_core_BAR(gpio_outenb_core) );
  simple_por \chip_core/por  ( .vdd3v3(vddio_core), .vdd1v8(vccd_core), 
        .vss3v3(vssio_core), .vss1v8(vssd_core), .porb_l(\chip_core/porb_l )
         );
  housekeeping \chip_core/housekeeping  ( .wb_clk_i(n1718), .wb_adr_i({
        \chip_core/mprj_adr_o_core [31:2], 1'b0, 1'b0}), .wb_dat_i(
        \chip_core/mprj_dat_o_core ), .wb_sel_i(\chip_core/mprj_sel_o_core ), 
        .wb_we_i(\chip_core/mprj_we_o_core ), .wb_cyc_i(\chip_core/hk_cyc_o ), 
        .wb_stb_i(\chip_core/hk_stb_o ), .wb_ack_o(\chip_core/hk_ack_i ), 
        .wb_dat_o(\chip_core/hk_dat_i ), .porb(\chip_core/porb_l ), .pll_ena(
        \chip_core/spi_pll_ena ), .pll_dco_ena(\chip_core/spi_pll_dco_ena ), 
        .pll_div(\chip_core/spi_pll_div ), .pll_sel(\chip_core/spi_pll_sel ), 
        .pll90_sel(\chip_core/spi_pll90_sel ), .pll_trim(
        \chip_core/spi_pll_trim ), .pll_bypass(\chip_core/ext_clk_sel ), 
        .qspi_enabled(1'b0), .uart_enabled(\chip_core/uart_enabled ), 
        .spi_enabled(\chip_core/spi_enabled ), .debug_mode(
        \chip_core/debug_mode ), .ser_tx(\chip_core/ser_tx ), .ser_rx(
        \chip_core/ser_rx ), .spi_sdi(\chip_core/spi_sdi ), .spi_csb(
        \chip_core/spi_csb ), .spi_sck(\chip_core/spi_sck ), .spi_sdo(
        \chip_core/spi_sdo ), .spi_sdoenb(1'b0), .irq(\chip_core/irq_spi ), 
        .reset(\chip_core/ext_reset ), .serial_clock(
        \chip_core/gpio_clock_1_shifted[0] ), .serial_load(
        \chip_core/gpio_load_1_shifted[0] ), .serial_resetn(
        \chip_core/gpio_resetn_1_shifted[0] ), .serial_data_1(
        \chip_core/gpio_serial_link_1_shifted [0]), .serial_data_2(
        \chip_core/gpio_serial_link_2_shifted [18]), .mgmt_gpio_in({
        \chip_core/mgmt_gpio_in , \chip_core/mgmt_io_in_hk }), .mgmt_gpio_out(
        \chip_core/mgmt_io_out_hk ), .mgmt_gpio_oeb({
        \chip_core/mgmt_io_oeb_hk [37:35], SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, 
        SYNOPSYS_UNCONNECTED__3, SYNOPSYS_UNCONNECTED__4, 
        SYNOPSYS_UNCONNECTED__5, SYNOPSYS_UNCONNECTED__6, 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        \chip_core/mgmt_io_oeb_hk [1:0]}), .trap(1'b0), .user_clock(
        \chip_core/caravel_clk2 ), .mask_rev_in({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .spimemio_flash_csb(1'b0), .spimemio_flash_clk(
        1'b0), .spimemio_flash_io0_oeb(\chip_core/flash_io0_oeb_core ), 
        .spimemio_flash_io1_oeb(1'b1), .spimemio_flash_io2_oeb(1'b1), 
        .spimemio_flash_io3_oeb(1'b1), .spimemio_flash_io0_do(
        \chip_core/flash_io0_do_core ), .spimemio_flash_io1_do(1'b0), 
        .spimemio_flash_io2_do(1'b0), .spimemio_flash_io3_do(1'b0), 
        .spimemio_flash_io1_di(\chip_core/flash_io1_di_core ), .debug_in(
        \chip_core/debug_in ), .debug_out(1'b0), .debug_oeb(
        \chip_core/debug_oeb ), .pad_flash_csb_oeb(flash_csb_oeb), 
        .pad_flash_clk_oeb(flash_clk_oeb), .pad_flash_io0_oeb(flash_io0_oeb), 
        .pad_flash_io0_do(flash_io0_do), .pad_flash_io0_di(1'b0), 
        .pad_flash_io1_di(flash_io1_di), .usr1_vcc_pwrgood(1'b1), 
        .usr2_vcc_pwrgood(1'b1), .usr1_vdd_pwrgood(1'b1), .usr2_vdd_pwrgood(
        1'b1), .wb_rstn_i_BAR(\chip_core/clock_ctrl/reset_delay [0]) );
  mgmt_core \chip_core/soc/core  ( .core_clk(n1718), .flash_io0_oeb(
        \chip_core/flash_io0_oeb_core ), .flash_io0_do(
        \chip_core/flash_io0_do_core ), .flash_io0_di(1'b0), .flash_io1_di(
        \chip_core/flash_io1_di_core ), .flash_io2_di(1'b0), .flash_io3_di(
        1'b0), .spi_clk(\chip_core/spi_sck ), .spi_cs_n(\chip_core/spi_csb ), 
        .spi_mosi(\chip_core/spi_sdo ), .spi_miso(\chip_core/spi_sdi ), 
        .mprj_wb_iena(\chip_core/mprj_iena_wb ), .mprj_cyc_o(
        \chip_core/mprj_cyc_o_core ), .mprj_stb_o(\chip_core/mprj_stb_o_core ), 
        .mprj_we_o(\chip_core/mprj_we_o_core ), .mprj_sel_o(
        \chip_core/mprj_sel_o_core ), .mprj_adr_o({
        \chip_core/mprj_adr_o_core [31:2], SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34}), .mprj_dat_o(\chip_core/mprj_dat_o_core ), 
        .mprj_dat_i({n1102, n1103, n1104, n1105, n1106, n1107, n1108, n1109, 
        n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117, n1118, n1119, 
        n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127, n1128, n1129, 
        n1130, n1131, n1132, n1133}), .mprj_ack_i(n1101), .hk_dat_i(
        \chip_core/hk_dat_i ), .hk_stb_o(\chip_core/hk_stb_o ), .hk_cyc_o(
        \chip_core/hk_cyc_o ), .hk_ack_i(\chip_core/hk_ack_i ), .serial_tx(
        \chip_core/ser_tx ), .serial_rx(\chip_core/ser_rx ), .debug_in(
        \chip_core/debug_in ), .debug_oeb(\chip_core/debug_oeb ), .debug_mode(
        \chip_core/debug_mode ), .uart_enabled(\chip_core/uart_enabled ), 
        .gpio_out_pad(gpio_out_core), .gpio_in_pad(gpio_in_core), 
        .gpio_inenb_pad(gpio_inenb_core), .gpio_mode0_pad(gpio_mode0_core), 
        .gpio_mode1_pad(gpio_mode1_core), .la_input({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .spi_enabled(\chip_core/spi_enabled ), 
        .user_irq({\chip_core/irq_spi , 1'b0, 1'b0, 1'b0}), .clk_in(1'b0), 
        .resetn_in(1'b0), .serial_load_in(1'b0), .serial_data_2_in(1'b0), 
        .serial_resetn_in(1'b0), .serial_clock_in(1'b0), .rstb_l_in(1'b0), 
        .por_l_in(1'b0), .porb_h_in(1'b0), .gpio_outenb_pad_BAR(
        gpio_outenb_core), .core_rstn_BAR(
        \chip_core/clock_ctrl/reset_delay [0]) );
  adiode \chip_core/spare_logic[0]/spare_logic_diode[3]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[0]/spare_logic_diode[2]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[0]/spare_logic_diode[1]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[0]/spare_logic_diode[0]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[3]/spare_logic_diode[3]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[3]/spare_logic_diode[2]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[3]/spare_logic_diode[1]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[3]/spare_logic_diode[0]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[2]/spare_logic_diode[3]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[2]/spare_logic_diode[2]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[2]/spare_logic_diode[1]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[2]/spare_logic_diode[0]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[1]/spare_logic_diode[3]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[1]/spare_logic_diode[2]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[1]/spare_logic_diode[1]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[1]/spare_logic_diode[0]  ( .I(1'b0) );
  invtd7 \chip_core/pll/ringosc/dstage[0].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [0]), .EN(\chip_core/pll/itrim [0]), .ZN(
        \chip_core/pll/ringosc/d [1]) );
  invtd4 \chip_core/pll/ringosc/dstage[0].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [0]), .EN(\chip_core/pll/itrim [13]), .ZN(
        \chip_core/pll/ringosc/dstage[0].id/d1 ) );
  invtd2 \chip_core/pll/ringosc/dstage[0].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [0]), .EN(n1086), .ZN(
        \chip_core/pll/ringosc/dstage[0].id/d1 ) );
  dfcrn1 \chip_core/clock_ctrl/divider2/odd_0/out_counter_reg  ( .D(n933), 
        .CP(\chip_core/pll/ringosc/d [0]), .CDN(n799), .QN(
        \chip_core/clock_ctrl/divider2/odd_0/out_counter ) );
  dfcrn1 \chip_core/gpio_control_bidir_1[0]/mgmt_ena_reg  ( .D(n932), .CP(
        n1843), .CDN(n1796), .QN(\chip_core/gpio_control_bidir_1[0]/mgmt_ena )
         );
  dfcrn1 \chip_core/gpio_control_bidir_1[0]/gpio_outenb_reg  ( .D(n931), .CP(
        n1843), .CDN(n1792), .QN(
        \chip_core/gpio_control_bidir_1[0]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_bidir_1[0]/gpio_dm_reg[1]  ( .D(n930), .CP(
        n1843), .CDN(n1792), .QN(mprj_io_dm[1]) );
  dfcrn1 \chip_core/gpio_control_bidir_1[0]/gpio_dm_reg[2]  ( .D(n929), .CP(
        n1843), .CDN(n1792), .QN(mprj_io_dm[2]) );
  dfcrn1 \chip_core/gpio_control_bidir_2[2]/mgmt_ena_reg  ( .D(n928), .CP(
        n1843), .CDN(n1792), .QN(\chip_core/gpio_control_bidir_2[2]/mgmt_ena )
         );
  dfcrn1 \chip_core/gpio_control_bidir_2[2]/gpio_outenb_reg  ( .D(n927), .CP(
        n1843), .CDN(n1792), .QN(
        \chip_core/gpio_control_bidir_2[2]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_bidir_2[2]/gpio_dm_reg[0]  ( .D(n926), .CP(
        n1843), .CDN(n1793), .QN(mprj_io_dm[111]) );
  dfcrn1 \chip_core/gpio_control_in_2[0]/gpio_dm_reg[0]  ( .D(n925), .CP(n1843), .CDN(n1793), .QN(mprj_io_dm[57]) );
  dfcrn1 \chip_core/gpio_control_in_2[0]/gpio_outenb_reg  ( .D(n924), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(n1793), .QN(
        \chip_core/gpio_control_in_2[0]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_in_2[0]/mgmt_ena_reg  ( .D(n923), .CP(n1852), 
        .CDN(n1793), .QN(\chip_core/gpio_control_in_2[0]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_2[1]/gpio_dm_reg[0]  ( .D(n922), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(n1793), .QN(mprj_io_dm[60])
         );
  dfcrn1 \chip_core/gpio_control_in_2[1]/gpio_outenb_reg  ( .D(n921), .CP(
        n1853), .CDN(n1793), .QN(\chip_core/gpio_control_in_2[1]/gpio_outenb )
         );
  dfcrn1 \chip_core/gpio_control_in_2[1]/mgmt_ena_reg  ( .D(n920), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(n1793), .QN(
        \chip_core/gpio_control_in_2[1]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_2[2]/gpio_dm_reg[0]  ( .D(n919), .CP(n1848), .CDN(n1793), .QN(mprj_io_dm[63]) );
  dfcrn1 \chip_core/gpio_control_in_2[2]/gpio_outenb_reg  ( .D(n918), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(n1793), .QN(
        \chip_core/gpio_control_in_2[2]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_in_2[2]/mgmt_ena_reg  ( .D(n917), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(n1793), .QN(
        \chip_core/gpio_control_in_2[2]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_2[3]/gpio_dm_reg[0]  ( .D(n916), .CP(n1854), .CDN(n1794), .QN(mprj_io_dm[66]) );
  dfcrn1 \chip_core/gpio_control_in_2[3]/gpio_outenb_reg  ( .D(n915), .CP(
        n1852), .CDN(n1794), .QN(\chip_core/gpio_control_in_2[3]/gpio_outenb )
         );
  dfcrn1 \chip_core/gpio_control_in_2[3]/mgmt_ena_reg  ( .D(n914), .CP(n1853), 
        .CDN(n1794), .QN(\chip_core/gpio_control_in_2[3]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_2[4]/gpio_dm_reg[0]  ( .D(n913), .CP(n1848), .CDN(n1794), .QN(mprj_io_dm[69]) );
  dfcrn1 \chip_core/gpio_control_in_2[4]/gpio_outenb_reg  ( .D(n912), .CP(
        n1854), .CDN(n1794), .QN(\chip_core/gpio_control_in_2[4]/gpio_outenb )
         );
  dfcrn1 \chip_core/gpio_control_in_2[4]/mgmt_ena_reg  ( .D(n911), .CP(n1854), 
        .CDN(n1794), .QN(\chip_core/gpio_control_in_2[4]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_2[5]/gpio_dm_reg[0]  ( .D(n910), .CP(n1854), .CDN(n1794), .QN(mprj_io_dm[72]) );
  dfcrn1 \chip_core/gpio_control_in_2[5]/gpio_outenb_reg  ( .D(n909), .CP(
        n1854), .CDN(n1794), .QN(\chip_core/gpio_control_in_2[5]/gpio_outenb )
         );
  dfcrn1 \chip_core/gpio_control_in_2[5]/mgmt_ena_reg  ( .D(n908), .CP(n1847), 
        .CDN(n1794), .QN(\chip_core/gpio_control_in_2[5]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_2[6]/gpio_dm_reg[0]  ( .D(n907), .CP(n1844), .CDN(n1794), .QN(mprj_io_dm[75]) );
  dfcrn1 \chip_core/gpio_control_in_2[6]/gpio_outenb_reg  ( .D(n906), .CP(
        n1847), .CDN(n1795), .QN(\chip_core/gpio_control_in_2[6]/gpio_outenb )
         );
  dfcrn1 \chip_core/gpio_control_in_2[6]/mgmt_ena_reg  ( .D(n905), .CP(n1844), 
        .CDN(n1795), .QN(\chip_core/gpio_control_in_2[6]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_2[7]/gpio_dm_reg[0]  ( .D(n904), .CP(n1847), .CDN(n1795), .QN(mprj_io_dm[78]) );
  dfcrn1 \chip_core/gpio_control_in_2[7]/gpio_outenb_reg  ( .D(n903), .CP(
        n1844), .CDN(n1795), .QN(\chip_core/gpio_control_in_2[7]/gpio_outenb )
         );
  dfcrn1 \chip_core/gpio_control_in_2[7]/mgmt_ena_reg  ( .D(n902), .CP(n1847), 
        .CDN(n1795), .QN(\chip_core/gpio_control_in_2[7]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_2[8]/gpio_dm_reg[0]  ( .D(n901), .CP(n1844), .CDN(n1795), .QN(mprj_io_dm[81]) );
  dfcrn1 \chip_core/gpio_control_in_2[8]/gpio_outenb_reg  ( .D(n900), .CP(
        n1846), .CDN(n1795), .QN(\chip_core/gpio_control_in_2[8]/gpio_outenb )
         );
  dfcrn1 \chip_core/gpio_control_in_2[8]/mgmt_ena_reg  ( .D(n899), .CP(n1851), 
        .CDN(n1795), .QN(\chip_core/gpio_control_in_2[8]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_2[9]/gpio_dm_reg[0]  ( .D(n898), .CP(n1849), .CDN(n1795), .QN(mprj_io_dm[84]) );
  dfcrn1 \chip_core/gpio_control_in_2[9]/gpio_outenb_reg  ( .D(n897), .CP(
        n1849), .CDN(n1795), .QN(\chip_core/gpio_control_in_2[9]/gpio_outenb )
         );
  dfcrn1 \chip_core/gpio_control_in_2[9]/mgmt_ena_reg  ( .D(n896), .CP(n1851), 
        .CDN(n1796), .QN(\chip_core/gpio_control_in_2[9]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_2[10]/gpio_dm_reg[0]  ( .D(n895), .CP(
        n1846), .CDN(n1796), .QN(mprj_io_dm[87]) );
  dfcrn1 \chip_core/gpio_control_in_2[10]/gpio_outenb_reg  ( .D(n894), .CP(
        n1851), .CDN(n1796), .QN(\chip_core/gpio_control_in_2[10]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_in_2[10]/mgmt_ena_reg  ( .D(n893), .CP(n1849), 
        .CDN(n1796), .QN(\chip_core/gpio_control_in_2[10]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_2[11]/gpio_dm_reg[0]  ( .D(n892), .CP(
        n1852), .CDN(n1796), .QN(mprj_io_dm[90]) );
  dfcrn1 \chip_core/gpio_control_in_2[11]/gpio_outenb_reg  ( .D(n891), .CP(
        n1852), .CDN(n1796), .QN(\chip_core/gpio_control_in_2[11]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_in_2[11]/mgmt_ena_reg  ( .D(n890), .CP(n1845), 
        .CDN(n1796), .QN(\chip_core/gpio_control_in_2[11]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_2[12]/gpio_dm_reg[0]  ( .D(n889), .CP(
        n1844), .CDN(n1796), .QN(mprj_io_dm[93]) );
  dfcrn1 \chip_core/gpio_control_in_2[12]/gpio_outenb_reg  ( .D(n888), .CP(
        n1844), .CDN(n1797), .QN(\chip_core/gpio_control_in_2[12]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_in_2[12]/mgmt_ena_reg  ( .D(n887), .CP(n1843), 
        .CDN(n1797), .QN(\chip_core/gpio_control_in_2[12]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_2[13]/gpio_dm_reg[0]  ( .D(n886), .CP(
        n1845), .CDN(n1797), .QN(mprj_io_dm[96]) );
  dfcrn1 \chip_core/gpio_control_in_2[13]/gpio_outenb_reg  ( .D(n885), .CP(
        n1844), .CDN(n1797), .QN(\chip_core/gpio_control_in_2[13]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_in_2[13]/mgmt_ena_reg  ( .D(n884), .CP(n1843), 
        .CDN(n1797), .QN(\chip_core/gpio_control_in_2[13]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_2[14]/gpio_dm_reg[0]  ( .D(n883), .CP(
        n1847), .CDN(n1797), .QN(mprj_io_dm[99]) );
  dfcrn1 \chip_core/gpio_control_in_2[14]/gpio_outenb_reg  ( .D(n882), .CP(
        n1846), .CDN(n1797), .QN(\chip_core/gpio_control_in_2[14]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_in_2[14]/mgmt_ena_reg  ( .D(n881), .CP(n1851), 
        .CDN(n1797), .QN(\chip_core/gpio_control_in_2[14]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_2[15]/gpio_dm_reg[0]  ( .D(n880), .CP(
        n1854), .CDN(n1797), .QN(mprj_io_dm[102]) );
  dfcrn1 \chip_core/gpio_control_in_2[15]/gpio_outenb_reg  ( .D(n879), .CP(
        n1854), .CDN(n1796), .QN(\chip_core/gpio_control_in_2[15]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_in_2[15]/mgmt_ena_reg  ( .D(n878), .CP(n1854), 
        .CDN(n1798), .QN(\chip_core/gpio_control_in_2[15]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_bidir_2[0]/gpio_dm_reg[0]  ( .D(n877), .CP(
        n1854), .CDN(n1798), .QN(mprj_io_dm[105]) );
  dfcrn1 \chip_core/gpio_control_bidir_2[0]/gpio_outenb_reg  ( .D(n876), .CP(
        n1853), .CDN(n1798), .QN(
        \chip_core/gpio_control_bidir_2[0]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_bidir_2[0]/mgmt_ena_reg  ( .D(n875), .CP(
        n1850), .CDN(n1798), .QN(\chip_core/gpio_control_bidir_2[0]/mgmt_ena )
         );
  dfcrn1 \chip_core/gpio_control_bidir_2[1]/gpio_dm_reg[0]  ( .D(n874), .CP(
        n1848), .CDN(n1798), .QN(mprj_io_dm[108]) );
  dfcrn1 \chip_core/gpio_control_bidir_2[1]/gpio_outenb_reg  ( .D(n873), .CP(
        n1847), .CDN(n1798), .QN(
        \chip_core/gpio_control_bidir_2[1]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_bidir_2[1]/mgmt_ena_reg  ( .D(n872), .CP(
        n1843), .CDN(n1798), .QN(\chip_core/gpio_control_bidir_2[1]/mgmt_ena )
         );
  dfcrn1 \chip_core/gpio_control_in_1[10]/gpio_dm_reg[0]  ( .D(n871), .CP(
        n1853), .CDN(n1798), .QN(mprj_io_dm[54]) );
  dfcrn1 \chip_core/gpio_control_in_1[10]/gpio_outenb_reg  ( .D(n870), .CP(
        n1848), .CDN(n1798), .QN(\chip_core/gpio_control_in_1[10]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_in_1[10]/mgmt_ena_reg  ( .D(n869), .CP(n1850), 
        .CDN(n1798), .QN(\chip_core/gpio_control_in_1[10]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_1[9]/gpio_dm_reg[0]  ( .D(n868), .CP(n1853), .CDN(n1799), .QN(mprj_io_dm[51]) );
  dfcrn1 \chip_core/gpio_control_in_1[9]/gpio_outenb_reg  ( .D(n867), .CP(
        n1852), .CDN(n1799), .QN(\chip_core/gpio_control_in_1[9]/gpio_outenb )
         );
  dfcrn1 \chip_core/gpio_control_in_1[9]/mgmt_ena_reg  ( .D(n866), .CP(n1852), 
        .CDN(n1799), .QN(\chip_core/gpio_control_in_1[9]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_1[8]/gpio_dm_reg[0]  ( .D(n865), .CP(n1852), .CDN(n1797), .QN(mprj_io_dm[48]) );
  dfcrn1 \chip_core/gpio_control_in_1[8]/gpio_outenb_reg  ( .D(n864), .CP(
        n1853), .CDN(n1799), .QN(\chip_core/gpio_control_in_1[8]/gpio_outenb )
         );
  dfcrn1 \chip_core/gpio_control_in_1[8]/mgmt_ena_reg  ( .D(n863), .CP(n1853), 
        .CDN(n1799), .QN(\chip_core/gpio_control_in_1[8]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_1[7]/gpio_dm_reg[0]  ( .D(n862), .CP(n1853), .CDN(n1799), .QN(mprj_io_dm[45]) );
  dfcrn1 \chip_core/gpio_control_in_1[7]/gpio_outenb_reg  ( .D(n861), .CP(
        n1853), .CDN(n1799), .QN(\chip_core/gpio_control_in_1[7]/gpio_outenb )
         );
  dfcrn1 \chip_core/gpio_control_in_1[7]/mgmt_ena_reg  ( .D(n860), .CP(n1852), 
        .CDN(n1799), .QN(\chip_core/gpio_control_in_1[7]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_1[6]/gpio_dm_reg[0]  ( .D(n859), .CP(n1854), .CDN(n1799), .QN(mprj_io_dm[42]) );
  dfcrn1 \chip_core/gpio_control_in_1[6]/gpio_outenb_reg  ( .D(n858), .CP(
        n1854), .CDN(n1799), .QN(\chip_core/gpio_control_in_1[6]/gpio_outenb )
         );
  dfcrn1 \chip_core/gpio_control_in_1[6]/mgmt_ena_reg  ( .D(n857), .CP(n1845), 
        .CDN(n1800), .QN(\chip_core/gpio_control_in_1[6]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_1[5]/gpio_dm_reg[0]  ( .D(n856), .CP(n1852), .CDN(n1792), .QN(mprj_io_dm[39]) );
  dfcrn1 \chip_core/gpio_control_in_1[5]/gpio_outenb_reg  ( .D(n855), .CP(
        n1849), .CDN(n1792), .QN(\chip_core/gpio_control_in_1[5]/gpio_outenb )
         );
  dfcrn1 \chip_core/gpio_control_in_1[5]/mgmt_ena_reg  ( .D(n854), .CP(n1845), 
        .CDN(n1792), .QN(\chip_core/gpio_control_in_1[5]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_1[4]/gpio_dm_reg[0]  ( .D(n853), .CP(n1845), .CDN(n1792), .QN(mprj_io_dm[36]) );
  dfcrn1 \chip_core/gpio_control_in_1[4]/gpio_outenb_reg  ( .D(n852), .CP(
        n1851), .CDN(n1792), .QN(\chip_core/gpio_control_in_1[4]/gpio_outenb )
         );
  dfcrn1 \chip_core/gpio_control_in_1[4]/mgmt_ena_reg  ( .D(n851), .CP(n1845), 
        .CDN(n1791), .QN(\chip_core/gpio_control_in_1[4]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_1[3]/gpio_dm_reg[0]  ( .D(n850), .CP(n1854), .CDN(n1791), .QN(mprj_io_dm[33]) );
  dfcrn1 \chip_core/gpio_control_in_1[3]/gpio_outenb_reg  ( .D(n849), .CP(
        n1851), .CDN(n1791), .QN(\chip_core/gpio_control_in_1[3]/gpio_outenb )
         );
  dfcrn1 \chip_core/gpio_control_in_1[3]/mgmt_ena_reg  ( .D(n848), .CP(n1852), 
        .CDN(n1791), .QN(\chip_core/gpio_control_in_1[3]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_1[2]/gpio_dm_reg[0]  ( .D(n847), .CP(n1845), .CDN(n1791), .QN(mprj_io_dm[30]) );
  dfcrn1 \chip_core/gpio_control_in_1[2]/gpio_outenb_reg  ( .D(n846), .CP(
        n1852), .CDN(n1791), .QN(\chip_core/gpio_control_in_1[2]/gpio_outenb )
         );
  dfcrn1 \chip_core/gpio_control_in_1[2]/mgmt_ena_reg  ( .D(n845), .CP(n1845), 
        .CDN(n1791), .QN(\chip_core/gpio_control_in_1[2]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_1[1]/gpio_dm_reg[0]  ( .D(n844), .CP(n1844), .CDN(n1791), .QN(mprj_io_dm[27]) );
  dfcrn1 \chip_core/gpio_control_in_1[1]/gpio_outenb_reg  ( .D(n843), .CP(
        n1844), .CDN(n1791), .QN(\chip_core/gpio_control_in_1[1]/gpio_outenb )
         );
  dfcrn1 \chip_core/gpio_control_in_1[1]/mgmt_ena_reg  ( .D(n842), .CP(n1844), 
        .CDN(n1791), .QN(\chip_core/gpio_control_in_1[1]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_1[0]/gpio_dm_reg[0]  ( .D(n841), .CP(n1844), .CDN(n1841), .QN(mprj_io_dm[24]) );
  dfcrn1 \chip_core/gpio_control_in_1[0]/gpio_outenb_reg  ( .D(n840), .CP(
        n1844), .CDN(\chip_core/gpio_resetn_1_shifted[0] ), .QN(
        \chip_core/gpio_control_in_1[0]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_in_1[0]/mgmt_ena_reg  ( .D(n839), .CP(n1844), 
        .CDN(n1841), .QN(\chip_core/gpio_control_in_1[0]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_1a[5]/gpio_dm_reg[0]  ( .D(n838), .CP(
        n1844), .CDN(n1791), .QN(mprj_io_dm[21]) );
  dfcrn1 \chip_core/gpio_control_in_1a[5]/gpio_outenb_reg  ( .D(n837), .CP(
        n1844), .CDN(n1790), .QN(\chip_core/gpio_control_in_1a[5]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_in_1a[5]/mgmt_ena_reg  ( .D(n836), .CP(n1845), 
        .CDN(n1826), .QN(\chip_core/gpio_control_in_1a[5]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_1a[4]/gpio_dm_reg[0]  ( .D(n835), .CP(
        n1845), .CDN(n1791), .QN(mprj_io_dm[18]) );
  dfcrn1 \chip_core/gpio_control_in_1a[4]/gpio_outenb_reg  ( .D(n834), .CP(
        n1845), .CDN(n1790), .QN(\chip_core/gpio_control_in_1a[4]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_in_1a[4]/mgmt_ena_reg  ( .D(n833), .CP(n1845), 
        .CDN(n1841), .QN(\chip_core/gpio_control_in_1a[4]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_1a[3]/gpio_dm_reg[0]  ( .D(n832), .CP(
        n1845), .CDN(n1826), .QN(mprj_io_dm[15]) );
  dfcrn1 \chip_core/gpio_control_in_1a[3]/gpio_outenb_reg  ( .D(n831), .CP(
        n1845), .CDN(n1790), .QN(\chip_core/gpio_control_in_1a[3]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_in_1a[3]/mgmt_ena_reg  ( .D(n830), .CP(n1845), 
        .CDN(n1790), .QN(\chip_core/gpio_control_in_1a[3]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_1a[2]/gpio_dm_reg[0]  ( .D(n829), .CP(
        n1845), .CDN(n1790), .QN(mprj_io_dm[12]) );
  dfcrn1 \chip_core/gpio_control_in_1a[2]/gpio_outenb_reg  ( .D(n828), .CP(
        n1848), .CDN(n1790), .QN(\chip_core/gpio_control_in_1a[2]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_in_1a[2]/mgmt_ena_reg  ( .D(n827), .CP(n1847), 
        .CDN(n1790), .QN(\chip_core/gpio_control_in_1a[2]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_1a[1]/gpio_dm_reg[1]  ( .D(n826), .CP(
        n1843), .CDN(n1790), .QN(mprj_io_dm[10]) );
  dfcrn1 \chip_core/gpio_control_in_1a[1]/mgmt_ena_reg  ( .D(n825), .CP(n1843), 
        .CDN(n1790), .QN(\chip_core/gpio_control_in_1a[1]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_in_1a[0]/gpio_dm_reg[0]  ( .D(n824), .CP(
        n1850), .CDN(n1790), .QN(mprj_io_dm[6]) );
  dfcrn1 \chip_core/gpio_control_in_1a[0]/gpio_outenb_reg  ( .D(n823), .CP(
        n1847), .CDN(n1790), .QN(\chip_core/gpio_control_in_1a[0]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_in_1a[0]/mgmt_ena_reg  ( .D(n822), .CP(n1850), 
        .CDN(n1790), .QN(\chip_core/gpio_control_in_1a[0]/mgmt_ena ) );
  dfcrn1 \chip_core/gpio_control_bidir_1[1]/gpio_dm_reg[2]  ( .D(n821), .CP(
        n1843), .CDN(n1789), .QN(mprj_io_dm[5]) );
  dfcrn1 \chip_core/gpio_control_bidir_1[1]/gpio_dm_reg[1]  ( .D(n820), .CP(
        n1850), .CDN(n1789), .QN(mprj_io_dm[4]) );
  dfcrn1 \chip_core/gpio_control_bidir_1[1]/gpio_outenb_reg  ( .D(n819), .CP(
        n1843), .CDN(n1789), .QN(
        \chip_core/gpio_control_bidir_1[1]/gpio_outenb ) );
  dfcrn1 \chip_core/gpio_control_bidir_1[1]/mgmt_ena_reg  ( .D(n818), .CP(
        n1850), .CDN(n1789), .QN(\chip_core/gpio_control_bidir_1[1]/mgmt_ena )
         );
  dfcrn1 \chip_core/clock_ctrl/divider2/syncNp_reg[1]  ( .D(n817), .CP(
        \chip_core/clock_ctrl/pll_clk90_divided ), .CDN(n799), .QN(
        \chip_core/clock_ctrl/divider2/syncNp [1]) );
  dfcrn1 \chip_core/clock_ctrl/divider2/syncN_reg[1]  ( .D(n816), .CP(
        \chip_core/clock_ctrl/pll_clk90_divided ), .CDN(n1726), .QN(
        \chip_core/clock_ctrl/divider2/syncN [1]) );
  dfcrn1 \chip_core/clock_ctrl/divider2/even_0/out_counter_reg  ( .D(n815), 
        .CP(\chip_core/pll/ringosc/d [0]), .CDN(n799), .QN(
        \chip_core/clock_ctrl/divider2/even_0/out_counter ) );
  dfcrn1 \chip_core/clock_ctrl/divider2/odd_0/counter_reg[1]  ( .D(n814), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n799), .QN(
        \chip_core/clock_ctrl/divider2/odd_0/counter [1]) );
  dfcrn1 \chip_core/clock_ctrl/divider/syncNp_reg[1]  ( .D(n813), .CP(
        \chip_core/clock_ctrl/pll_clk_divided ), .CDN(n1724), .QN(
        \chip_core/clock_ctrl/divider/syncNp [1]) );
  dfcrn1 \chip_core/clock_ctrl/divider/syncN_reg[1]  ( .D(n812), .CP(
        \chip_core/clock_ctrl/pll_clk_divided ), .CDN(n799), .QN(
        \chip_core/clock_ctrl/divider/syncN [1]) );
  dfcrn1 \chip_core/clock_ctrl/divider/even_0/out_counter_reg  ( .D(n811), 
        .CP(\chip_core/pll/ringosc/d [6]), .CDN(n1726), .QN(
        \chip_core/clock_ctrl/divider/even_0/out_counter ) );
  dfcrn1 \chip_core/clock_ctrl/divider/odd_0/counter_reg[1]  ( .D(n810), .CP(
        \chip_core/pll/ringosc/d [6]), .CDN(n1726), .QN(
        \chip_core/clock_ctrl/divider/odd_0/counter [1]) );
  dfcrn1 \chip_core/clock_ctrl/divider/odd_0/out_counter_reg  ( .D(n809), .CP(
        \chip_core/pll/ringosc/d [6]), .CDN(n1725), .QN(
        \chip_core/clock_ctrl/divider/odd_0/out_counter ) );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_1_shifted [0]), .CP(n1787), .CDN(n1800), 
        .Q(\chip_core/gpio_control_bidir_1[0]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_bidir_1[0]/shift_register[0] ), .CP(n1787), 
        .CDN(n1815), .Q(\chip_core/gpio_control_bidir_1[0]/shift_register[1] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_bidir_1[0]/shift_register[1] ), .CP(n1787), 
        .CDN(n1815), .Q(\chip_core/gpio_control_bidir_1[0]/shift_register[2] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_bidir_1[0]/shift_register[2] ), .CP(n1787), 
        .CDN(n1815), .Q(\chip_core/gpio_control_bidir_1[0]/shift_register[3] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_bidir_1[0]/shift_register[3] ), .CP(n1852), 
        .CDN(n1815), .Q(mprj_io_inp_dis[0]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_bidir_1[0]/shift_register[3] ), .CP(n1787), 
        .CDN(n1815), .Q(\chip_core/gpio_control_bidir_1[0]/shift_register[4] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_bidir_1[0]/shift_register[4] ), .CP(n1787), 
        .CDN(n1815), .Q(\chip_core/gpio_control_bidir_1[0]/shift_register[5] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_bidir_1[0]/shift_register[5] ), .CP(n1787), 
        .CDN(n1815), .Q(\chip_core/gpio_control_bidir_1[0]/shift_register[6] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_bidir_1[0]/shift_register[6] ), .CP(n1787), 
        .CDN(n1815), .Q(\chip_core/gpio_control_bidir_1[0]/shift_register[7] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_bidir_1[0]/shift_register[7] ), .CP(n1787), 
        .CDN(n1814), .Q(\chip_core/gpio_control_bidir_1[0]/shift_register[8] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_bidir_1[0]/shift_register[8] ), .CP(n1787), 
        .CDN(n1814), .Q(\chip_core/gpio_control_bidir_1[0]/shift_register[9] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_bidir_1[0]/shift_register[9] ), .CP(n1787), 
        .CDN(n1814), .Q(\chip_core/gpio_control_bidir_1[0]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/gpio_dm_reg[0]  ( .D(
        \chip_core/gpio_control_bidir_1[0]/shift_register[10] ), .CP(n1847), 
        .CDN(n1814), .Q(mprj_io_dm[0]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_bidir_1[0]/shift_register[10] ), .CP(n1787), 
        .CDN(n1814), .Q(\chip_core/gpio_control_bidir_1[0]/shift_register[11] ) );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_bidir_1[0]/shift_register[11] ), .CP(n1787), 
        .CDN(n1814), .Q(\chip_core/gpio_control_bidir_1[0]/shift_register[12] ) );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_2_shifted [18]), .CP(n1787), .CDN(n1814), 
        .Q(\chip_core/gpio_control_bidir_2[2]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_bidir_2[2]/shift_register[0] ), .CP(n1787), 
        .CDN(n1814), .Q(\chip_core/gpio_control_bidir_2[2]/shift_register[1] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_bidir_2[2]/shift_register[1] ), .CP(n1787), 
        .CDN(n1814), .Q(\chip_core/gpio_control_bidir_2[2]/shift_register[2] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_bidir_2[2]/shift_register[2] ), .CP(n1787), 
        .CDN(n1814), .Q(\chip_core/gpio_control_bidir_2[2]/shift_register[3] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_bidir_2[2]/shift_register[3] ), .CP(n1853), 
        .CDN(n1823), .Q(mprj_io_inp_dis[37]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_bidir_2[2]/shift_register[3] ), .CP(n1787), 
        .CDN(n1824), .Q(\chip_core/gpio_control_bidir_2[2]/shift_register[4] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_bidir_2[2]/shift_register[4] ), .CP(n1775), 
        .CDN(n1825), .Q(\chip_core/gpio_control_bidir_2[2]/shift_register[5] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_bidir_2[2]/shift_register[5] ), .CP(n1775), 
        .CDN(n1830), .Q(\chip_core/gpio_control_bidir_2[2]/shift_register[6] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_bidir_2[2]/shift_register[6] ), .CP(n1775), 
        .CDN(n1830), .Q(\chip_core/gpio_control_bidir_2[2]/shift_register[7] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_bidir_2[2]/shift_register[7] ), .CP(n1775), 
        .CDN(n1800), .Q(\chip_core/gpio_control_bidir_2[2]/shift_register[8] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_bidir_2[2]/shift_register[8] ), .CP(n1775), 
        .CDN(n1817), .Q(\chip_core/gpio_control_bidir_2[2]/shift_register[9] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_bidir_2[2]/shift_register[9] ), .CP(n1775), 
        .CDN(n1798), .Q(\chip_core/gpio_control_bidir_2[2]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_bidir_2[2]/shift_register[10] ), .CP(n1775), 
        .CDN(n1799), .Q(\chip_core/gpio_control_bidir_2[2]/shift_register[11] ) );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_bidir_2[2]/shift_register[11] ), .CP(n1853), 
        .CDN(n1834), .Q(mprj_io_dm[112]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_bidir_2[2]/shift_register[11] ), .CP(n1775), 
        .CDN(n1839), .Q(\chip_core/gpio_control_bidir_2[2]/shift_register[12] ) );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_bidir_2[2]/shift_register[12] ), .CP(n1851), 
        .CDN(n1789), .Q(mprj_io_dm[113]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_2_shifted [17]), .CP(n1774), .CDN(n1823), 
        .Q(\chip_core/gpio_control_bidir_2[1]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_bidir_2[1]/shift_register[0] ), .CP(n1774), 
        .CDN(n1824), .Q(\chip_core/gpio_control_bidir_2[1]/shift_register[1] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_bidir_2[1]/shift_register[1] ), .CP(n1774), 
        .CDN(n1825), .Q(\chip_core/gpio_control_bidir_2[1]/shift_register[2] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_bidir_2[1]/shift_register[2] ), .CP(n1774), 
        .CDN(n1820), .Q(\chip_core/gpio_control_bidir_2[1]/shift_register[3] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_bidir_2[1]/shift_register[3] ), .CP(n1774), 
        .CDN(n1800), .Q(\chip_core/gpio_control_bidir_2[1]/shift_register[4] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_bidir_2[1]/shift_register[4] ), .CP(n1774), 
        .CDN(n1788), .Q(\chip_core/gpio_control_bidir_2[1]/shift_register[5] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_bidir_2[1]/shift_register[5] ), .CP(n1774), 
        .CDN(n1798), .Q(\chip_core/gpio_control_bidir_2[1]/shift_register[6] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_bidir_2[1]/shift_register[6] ), .CP(n1774), 
        .CDN(n1799), .Q(\chip_core/gpio_control_bidir_2[1]/shift_register[7] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_bidir_2[1]/shift_register[7] ), .CP(n1786), 
        .CDN(n1834), .Q(\chip_core/gpio_control_bidir_2[1]/shift_register[8] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_bidir_2[1]/shift_register[8] ), .CP(n1775), 
        .CDN(n1832), .Q(\chip_core/gpio_control_bidir_2[1]/shift_register[9] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_bidir_2[1]/shift_register[9] ), .CP(n1774), 
        .CDN(n1788), .Q(\chip_core/gpio_control_bidir_2[1]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_bidir_2[1]/shift_register[10] ), .CP(n1786), 
        .CDN(n1839), .Q(\chip_core/gpio_control_bidir_2[1]/shift_register[11] ) );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_bidir_2[1]/shift_register[11] ), .CP(n1775), 
        .CDN(n1830), .Q(\chip_core/gpio_control_bidir_2[1]/shift_register[12] ) );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_2_shifted [16]), .CP(n1774), .CDN(n1823), 
        .Q(\chip_core/gpio_control_bidir_2[0]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_bidir_2[0]/shift_register[0] ), .CP(n1786), 
        .CDN(n1824), .Q(\chip_core/gpio_control_bidir_2[0]/shift_register[1] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_bidir_2[0]/shift_register[1] ), .CP(n1775), 
        .CDN(n1825), .Q(\chip_core/gpio_control_bidir_2[0]/shift_register[2] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_bidir_2[0]/shift_register[2] ), .CP(n1786), 
        .CDN(n1800), .Q(\chip_core/gpio_control_bidir_2[0]/shift_register[3] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_bidir_2[0]/shift_register[3] ), .CP(n1786), 
        .CDN(n1798), .Q(\chip_core/gpio_control_bidir_2[0]/shift_register[4] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_bidir_2[0]/shift_register[4] ), .CP(n1775), 
        .CDN(n1826), .Q(\chip_core/gpio_control_bidir_2[0]/shift_register[5] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_bidir_2[0]/shift_register[5] ), .CP(n1774), 
        .CDN(n1813), .Q(\chip_core/gpio_control_bidir_2[0]/shift_register[6] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_bidir_2[0]/shift_register[6] ), .CP(n1786), 
        .CDN(n1838), .Q(\chip_core/gpio_control_bidir_2[0]/shift_register[7] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_bidir_2[0]/shift_register[7] ), .CP(n1786), 
        .CDN(n1818), .Q(\chip_core/gpio_control_bidir_2[0]/shift_register[8] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_bidir_2[0]/shift_register[8] ), .CP(n1786), 
        .CDN(n1819), .Q(\chip_core/gpio_control_bidir_2[0]/shift_register[9] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_bidir_2[0]/shift_register[9] ), .CP(n1775), 
        .CDN(n1801), .Q(\chip_core/gpio_control_bidir_2[0]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_bidir_2[0]/shift_register[10] ), .CP(n1786), 
        .CDN(n1802), .Q(\chip_core/gpio_control_bidir_2[0]/shift_register[11] ) );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_bidir_2[0]/shift_register[11] ), .CP(n1786), 
        .CDN(n1803), .Q(\chip_core/gpio_control_bidir_2[0]/shift_register[12] ) );
  dfcrq1 \chip_core/gpio_control_in_2[15]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_2_shifted [15]), .CP(n1774), .CDN(n1821), 
        .Q(\chip_core/gpio_control_in_2[15]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_2[15]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[15]/shift_register[0] ), .CP(n1786), 
        .CDN(n1814), .Q(\chip_core/gpio_control_in_2[15]/shift_register[1] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[15]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[15]/shift_register[1] ), .CP(n1786), 
        .CDN(n1813), .Q(\chip_core/gpio_control_in_2[15]/shift_register[2] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[15]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_2[15]/shift_register[2] ), .CP(n1786), 
        .CDN(n1813), .Q(\chip_core/gpio_control_in_2[15]/shift_register[3] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[15]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_2[15]/shift_register[3] ), .CP(n1775), 
        .CDN(n1813), .Q(\chip_core/gpio_control_in_2[15]/shift_register[4] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[15]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_2[15]/shift_register[4] ), .CP(n1774), 
        .CDN(n1813), .Q(\chip_core/gpio_control_in_2[15]/shift_register[5] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[15]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_2[15]/shift_register[5] ), .CP(n1775), 
        .CDN(n1813), .Q(\chip_core/gpio_control_in_2[15]/shift_register[6] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[15]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_2[15]/shift_register[6] ), .CP(n1786), 
        .CDN(n1813), .Q(\chip_core/gpio_control_in_2[15]/shift_register[7] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[15]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_2[15]/shift_register[7] ), .CP(n1775), 
        .CDN(n1813), .Q(\chip_core/gpio_control_in_2[15]/shift_register[8] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[15]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_2[15]/shift_register[8] ), .CP(n1774), 
        .CDN(n1813), .Q(\chip_core/gpio_control_in_2[15]/shift_register[9] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[15]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_2[15]/shift_register[9] ), .CP(n1774), 
        .CDN(n1813), .Q(\chip_core/gpio_control_in_2[15]/shift_register[10] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[15]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_2[15]/shift_register[10] ), .CP(n1786), 
        .CDN(n1813), .Q(\chip_core/gpio_control_in_2[15]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[15]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_2[15]/shift_register[11] ), .CP(n1775), 
        .CDN(n1820), .Q(\chip_core/gpio_control_in_2[15]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[14]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_2_shifted [14]), .CP(n1774), .CDN(n1810), 
        .Q(\chip_core/gpio_control_in_2[14]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_2[14]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[14]/shift_register[0] ), .CP(n1782), 
        .CDN(n1809), .Q(\chip_core/gpio_control_in_2[14]/shift_register[1] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[14]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[14]/shift_register[1] ), .CP(n1780), 
        .CDN(n1811), .Q(\chip_core/gpio_control_in_2[14]/shift_register[2] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[14]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_2[14]/shift_register[2] ), .CP(n1783), 
        .CDN(n1790), .Q(\chip_core/gpio_control_in_2[14]/shift_register[3] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[14]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_2[14]/shift_register[3] ), .CP(n1784), 
        .CDN(n1792), .Q(\chip_core/gpio_control_in_2[14]/shift_register[4] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[14]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_2[14]/shift_register[4] ), .CP(n1781), 
        .CDN(n1827), .Q(\chip_core/gpio_control_in_2[14]/shift_register[5] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[14]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_2[14]/shift_register[5] ), .CP(n1776), 
        .CDN(n1842), .Q(\chip_core/gpio_control_in_2[14]/shift_register[6] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[14]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_2[14]/shift_register[6] ), .CP(n1785), 
        .CDN(n1833), .Q(\chip_core/gpio_control_in_2[14]/shift_register[7] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[14]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_2[14]/shift_register[7] ), .CP(n1779), 
        .CDN(n1807), .Q(\chip_core/gpio_control_in_2[14]/shift_register[8] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[14]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_2[14]/shift_register[8] ), .CP(n1773), 
        .CDN(n1796), .Q(\chip_core/gpio_control_in_2[14]/shift_register[9] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[14]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_2[14]/shift_register[9] ), .CP(n1773), 
        .CDN(n1797), .Q(\chip_core/gpio_control_in_2[14]/shift_register[10] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[14]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_2[14]/shift_register[10] ), .CP(n1773), 
        .CDN(n1831), .Q(\chip_core/gpio_control_in_2[14]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[14]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_2[14]/shift_register[11] ), .CP(n1773), 
        .CDN(n1840), .Q(\chip_core/gpio_control_in_2[14]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[13]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_2_shifted [13]), .CP(n1773), .CDN(n1814), 
        .Q(\chip_core/gpio_control_in_2[13]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_2[13]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[13]/shift_register[0] ), .CP(n1773), 
        .CDN(n1815), .Q(\chip_core/gpio_control_in_2[13]/shift_register[1] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[13]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[13]/shift_register[1] ), .CP(n1773), 
        .CDN(n1816), .Q(\chip_core/gpio_control_in_2[13]/shift_register[2] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[13]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_2[13]/shift_register[2] ), .CP(n1773), 
        .CDN(n1795), .Q(\chip_core/gpio_control_in_2[13]/shift_register[3] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[13]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_2[13]/shift_register[3] ), .CP(n1785), 
        .CDN(n1796), .Q(\chip_core/gpio_control_in_2[13]/shift_register[4] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[13]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_2[13]/shift_register[4] ), .CP(n1770), 
        .CDN(n1831), .Q(\chip_core/gpio_control_in_2[13]/shift_register[5] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[13]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_2[13]/shift_register[5] ), .CP(n1773), 
        .CDN(n1831), .Q(\chip_core/gpio_control_in_2[13]/shift_register[6] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[13]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_2[13]/shift_register[6] ), .CP(n1785), 
        .CDN(n1831), .Q(\chip_core/gpio_control_in_2[13]/shift_register[7] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[13]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_2[13]/shift_register[7] ), .CP(n1769), 
        .CDN(n1831), .Q(\chip_core/gpio_control_in_2[13]/shift_register[8] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[13]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_2[13]/shift_register[8] ), .CP(n1773), 
        .CDN(n1831), .Q(\chip_core/gpio_control_in_2[13]/shift_register[9] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[13]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_2[13]/shift_register[9] ), .CP(n1785), 
        .CDN(n1831), .Q(\chip_core/gpio_control_in_2[13]/shift_register[10] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[13]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_2[13]/shift_register[10] ), .CP(n1785), 
        .CDN(n1829), .Q(\chip_core/gpio_control_in_2[13]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[13]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_2[13]/shift_register[11] ), .CP(n1785), 
        .CDN(n1814), .Q(\chip_core/gpio_control_in_2[13]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[12]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_2_shifted [12]), .CP(n1785), .CDN(n1815), 
        .Q(\chip_core/gpio_control_in_2[12]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_2[12]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[12]/shift_register[0] ), .CP(n1778), 
        .CDN(n1816), .Q(\chip_core/gpio_control_in_2[12]/shift_register[1] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[12]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[12]/shift_register[1] ), .CP(n1773), 
        .CDN(n1831), .Q(\chip_core/gpio_control_in_2[12]/shift_register[2] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[12]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_2[12]/shift_register[2] ), .CP(n1785), 
        .CDN(n1829), .Q(\chip_core/gpio_control_in_2[12]/shift_register[3] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[12]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_2[12]/shift_register[3] ), .CP(n1785), 
        .CDN(n1831), .Q(\chip_core/gpio_control_in_2[12]/shift_register[4] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[12]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_2[12]/shift_register[4] ), .CP(n1785), 
        .CDN(n1840), .Q(\chip_core/gpio_control_in_2[12]/shift_register[5] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[12]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_2[12]/shift_register[5] ), .CP(n1786), 
        .CDN(n1835), .Q(\chip_core/gpio_control_in_2[12]/shift_register[6] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[12]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_2[12]/shift_register[6] ), .CP(n1785), 
        .CDN(n1831), .Q(\chip_core/gpio_control_in_2[12]/shift_register[7] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[12]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_2[12]/shift_register[7] ), .CP(n1785), 
        .CDN(n1795), .Q(\chip_core/gpio_control_in_2[12]/shift_register[8] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[12]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_2[12]/shift_register[8] ), .CP(n1773), 
        .CDN(n1814), .Q(\chip_core/gpio_control_in_2[12]/shift_register[9] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[12]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_2[12]/shift_register[9] ), .CP(n1785), 
        .CDN(n1815), .Q(\chip_core/gpio_control_in_2[12]/shift_register[10] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[12]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_2[12]/shift_register[10] ), .CP(n1785), 
        .CDN(n1816), .Q(\chip_core/gpio_control_in_2[12]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[12]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_2[12]/shift_register[11] ), .CP(n1785), 
        .CDN(n1832), .Q(\chip_core/gpio_control_in_2[12]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[11]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_2_shifted [11]), .CP(n1766), .CDN(n1836), 
        .Q(\chip_core/gpio_control_in_2[11]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_2[11]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[11]/shift_register[0] ), .CP(n1773), 
        .CDN(n1832), .Q(\chip_core/gpio_control_in_2[11]/shift_register[1] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[11]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[11]/shift_register[1] ), .CP(n1771), 
        .CDN(n1830), .Q(\chip_core/gpio_control_in_2[11]/shift_register[2] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[11]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_2[11]/shift_register[2] ), .CP(n1785), 
        .CDN(n1830), .Q(\chip_core/gpio_control_in_2[11]/shift_register[3] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[11]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_2[11]/shift_register[3] ), .CP(n1772), 
        .CDN(n1826), .Q(\chip_core/gpio_control_in_2[11]/shift_register[4] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[11]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_2[11]/shift_register[4] ), .CP(n1773), 
        .CDN(n1832), .Q(\chip_core/gpio_control_in_2[11]/shift_register[5] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[11]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_2[11]/shift_register[5] ), .CP(n1773), 
        .CDN(n1808), .Q(\chip_core/gpio_control_in_2[11]/shift_register[6] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[11]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_2[11]/shift_register[6] ), .CP(n1785), 
        .CDN(n1832), .Q(\chip_core/gpio_control_in_2[11]/shift_register[7] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[11]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_2[11]/shift_register[7] ), .CP(n1765), 
        .CDN(n1830), .Q(\chip_core/gpio_control_in_2[11]/shift_register[8] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[11]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_2[11]/shift_register[8] ), .CP(n1773), 
        .CDN(n1832), .Q(\chip_core/gpio_control_in_2[11]/shift_register[9] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[11]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_2[11]/shift_register[9] ), .CP(n1772), 
        .CDN(n1842), .Q(\chip_core/gpio_control_in_2[11]/shift_register[10] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[11]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_2[11]/shift_register[10] ), .CP(n1772), 
        .CDN(n1832), .Q(\chip_core/gpio_control_in_2[11]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[11]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_2[11]/shift_register[11] ), .CP(n1772), 
        .CDN(n1830), .Q(\chip_core/gpio_control_in_2[11]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[10]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_2_shifted [10]), .CP(n1772), .CDN(n1827), 
        .Q(\chip_core/gpio_control_in_2[10]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_2[10]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[10]/shift_register[0] ), .CP(n1772), 
        .CDN(n1830), .Q(\chip_core/gpio_control_in_2[10]/shift_register[1] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[10]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[10]/shift_register[1] ), .CP(n1772), 
        .CDN(n1832), .Q(\chip_core/gpio_control_in_2[10]/shift_register[2] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[10]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_2[10]/shift_register[2] ), .CP(n1772), 
        .CDN(n1830), .Q(\chip_core/gpio_control_in_2[10]/shift_register[3] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[10]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_2[10]/shift_register[3] ), .CP(n1772), 
        .CDN(\chip_core/gpio_resetn_1_shifted[0] ), .Q(
        \chip_core/gpio_control_in_2[10]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_2[10]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_2[10]/shift_register[4] ), .CP(n1771), 
        .CDN(n1789), .Q(\chip_core/gpio_control_in_2[10]/shift_register[5] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[10]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_2[10]/shift_register[5] ), .CP(n1771), 
        .CDN(n1832), .Q(\chip_core/gpio_control_in_2[10]/shift_register[6] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[10]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_2[10]/shift_register[6] ), .CP(n1771), 
        .CDN(n1832), .Q(\chip_core/gpio_control_in_2[10]/shift_register[7] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[10]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_2[10]/shift_register[7] ), .CP(n1771), 
        .CDN(n1830), .Q(\chip_core/gpio_control_in_2[10]/shift_register[8] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[10]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_2[10]/shift_register[8] ), .CP(n1771), 
        .CDN(n1823), .Q(\chip_core/gpio_control_in_2[10]/shift_register[9] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[10]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_2[10]/shift_register[9] ), .CP(n1771), 
        .CDN(n1824), .Q(\chip_core/gpio_control_in_2[10]/shift_register[10] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[10]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_2[10]/shift_register[10] ), .CP(n1771), 
        .CDN(n1825), .Q(\chip_core/gpio_control_in_2[10]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[10]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_2[10]/shift_register[11] ), .CP(n1771), 
        .CDN(n1789), .Q(\chip_core/gpio_control_in_2[10]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[9]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_2_shifted [9]), .CP(n1784), .CDN(
        \chip_core/gpio_resetn_1_shifted[0] ), .Q(
        \chip_core/gpio_control_in_2[9]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[9]/shift_register[0] ), .CP(n1772), .CDN(
        n1830), .Q(\chip_core/gpio_control_in_2[9]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[9]/shift_register[1] ), .CP(n1771), .CDN(
        n1830), .Q(\chip_core/gpio_control_in_2[9]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_2[9]/shift_register[2] ), .CP(n1784), .CDN(
        n1838), .Q(\chip_core/gpio_control_in_2[9]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_2[9]/shift_register[3] ), .CP(n1772), .CDN(
        n1833), .Q(\chip_core/gpio_control_in_2[9]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_2[9]/shift_register[4] ), .CP(n1771), .CDN(
        n1830), .Q(\chip_core/gpio_control_in_2[9]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_2[9]/shift_register[5] ), .CP(n1784), .CDN(
        n1838), .Q(\chip_core/gpio_control_in_2[9]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_2[9]/shift_register[6] ), .CP(n1772), .CDN(
        n1833), .Q(\chip_core/gpio_control_in_2[9]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_2[9]/shift_register[7] ), .CP(n1784), .CDN(
        n1828), .Q(\chip_core/gpio_control_in_2[9]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_2[9]/shift_register[8] ), .CP(n1784), .CDN(
        n1838), .Q(\chip_core/gpio_control_in_2[9]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_2[9]/shift_register[9] ), .CP(n1772), .CDN(
        n1833), .Q(\chip_core/gpio_control_in_2[9]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_2[9]/shift_register[10] ), .CP(n1771), 
        .CDN(n1828), .Q(\chip_core/gpio_control_in_2[9]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[9]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_2[9]/shift_register[11] ), .CP(n1784), 
        .CDN(n1838), .Q(\chip_core/gpio_control_in_2[9]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[8]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_2_shifted [8]), .CP(n1784), .CDN(n1833), 
        .Q(\chip_core/gpio_control_in_2[8]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[8]/shift_register[0] ), .CP(n1784), .CDN(
        n1833), .Q(\chip_core/gpio_control_in_2[8]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[8]/shift_register[1] ), .CP(n1772), .CDN(
        n1831), .Q(\chip_core/gpio_control_in_2[8]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_2[8]/shift_register[2] ), .CP(n1784), .CDN(
        n1838), .Q(\chip_core/gpio_control_in_2[8]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_2[8]/shift_register[3] ), .CP(n1784), .CDN(
        n1793), .Q(\chip_core/gpio_control_in_2[8]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_2[8]/shift_register[4] ), .CP(n1771), .CDN(
        n1833), .Q(\chip_core/gpio_control_in_2[8]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_2[8]/shift_register[5] ), .CP(n1784), .CDN(
        n1838), .Q(\chip_core/gpio_control_in_2[8]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_2[8]/shift_register[6] ), .CP(n1784), .CDN(
        n1833), .Q(\chip_core/gpio_control_in_2[8]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_2[8]/shift_register[7] ), .CP(n1784), .CDN(
        n1832), .Q(\chip_core/gpio_control_in_2[8]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_2[8]/shift_register[8] ), .CP(n1772), .CDN(
        n1838), .Q(\chip_core/gpio_control_in_2[8]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_2[8]/shift_register[9] ), .CP(n1771), .CDN(
        n1833), .Q(\chip_core/gpio_control_in_2[8]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_2[8]/shift_register[10] ), .CP(n1772), 
        .CDN(n1833), .Q(\chip_core/gpio_control_in_2[8]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[8]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_2[8]/shift_register[11] ), .CP(n1784), 
        .CDN(n1826), .Q(\chip_core/gpio_control_in_2[8]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[7]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_2_shifted [7]), .CP(n1772), .CDN(n1835), 
        .Q(\chip_core/gpio_control_in_2[7]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[7]/shift_register[0] ), .CP(n1771), .CDN(
        n1822), .Q(\chip_core/gpio_control_in_2[7]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[7]/shift_register[1] ), .CP(n1771), .CDN(
        n1804), .Q(\chip_core/gpio_control_in_2[7]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_2[7]/shift_register[2] ), .CP(n1784), .CDN(
        n1805), .Q(\chip_core/gpio_control_in_2[7]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_2[7]/shift_register[3] ), .CP(n1772), .CDN(
        n1836), .Q(\chip_core/gpio_control_in_2[7]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_2[7]/shift_register[4] ), .CP(n1771), .CDN(
        n1810), .Q(\chip_core/gpio_control_in_2[7]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_2[7]/shift_register[5] ), .CP(n1770), .CDN(
        n1809), .Q(\chip_core/gpio_control_in_2[7]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_2[7]/shift_register[6] ), .CP(n1770), .CDN(
        n1811), .Q(\chip_core/gpio_control_in_2[7]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_2[7]/shift_register[7] ), .CP(n1770), .CDN(
        n1841), .Q(\chip_core/gpio_control_in_2[7]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_2[7]/shift_register[8] ), .CP(n1770), .CDN(
        n1795), .Q(\chip_core/gpio_control_in_2[7]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_2[7]/shift_register[9] ), .CP(n1770), .CDN(
        n1817), .Q(\chip_core/gpio_control_in_2[7]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_2[7]/shift_register[10] ), .CP(n1770), 
        .CDN(n1818), .Q(\chip_core/gpio_control_in_2[7]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[7]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_2[7]/shift_register[11] ), .CP(n1770), 
        .CDN(n1819), .Q(\chip_core/gpio_control_in_2[7]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[6]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_2_shifted [6]), .CP(n1770), .CDN(n1806), 
        .Q(\chip_core/gpio_control_in_2[6]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[6]/shift_register[0] ), .CP(n1769), .CDN(
        n1817), .Q(\chip_core/gpio_control_in_2[6]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[6]/shift_register[1] ), .CP(n1769), .CDN(
        n1838), .Q(\chip_core/gpio_control_in_2[6]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_2[6]/shift_register[2] ), .CP(n1769), .CDN(
        n1812), .Q(\chip_core/gpio_control_in_2[6]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_2[6]/shift_register[3] ), .CP(n1769), .CDN(
        n1812), .Q(\chip_core/gpio_control_in_2[6]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_2[6]/shift_register[4] ), .CP(n1769), .CDN(
        n1792), .Q(\chip_core/gpio_control_in_2[6]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_2[6]/shift_register[5] ), .CP(n1769), .CDN(
        n1794), .Q(\chip_core/gpio_control_in_2[6]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_2[6]/shift_register[6] ), .CP(n1769), .CDN(
        n1826), .Q(\chip_core/gpio_control_in_2[6]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_2[6]/shift_register[7] ), .CP(n1769), .CDN(
        n1827), .Q(\chip_core/gpio_control_in_2[6]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_2[6]/shift_register[8] ), .CP(n1783), .CDN(
        n1837), .Q(\chip_core/gpio_control_in_2[6]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_2[6]/shift_register[9] ), .CP(n1770), .CDN(
        n1836), .Q(\chip_core/gpio_control_in_2[6]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_2[6]/shift_register[10] ), .CP(n1769), 
        .CDN(n1842), .Q(\chip_core/gpio_control_in_2[6]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[6]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_2[6]/shift_register[11] ), .CP(n1783), 
        .CDN(n1818), .Q(\chip_core/gpio_control_in_2[6]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[5]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_2_shifted [5]), .CP(n1770), .CDN(n1788), 
        .Q(\chip_core/gpio_control_in_2[5]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[5]/shift_register[0] ), .CP(n1769), .CDN(
        n1838), .Q(\chip_core/gpio_control_in_2[5]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[5]/shift_register[1] ), .CP(n1783), .CDN(
        n1839), .Q(\chip_core/gpio_control_in_2[5]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_2[5]/shift_register[2] ), .CP(n1770), .CDN(
        n1825), .Q(\chip_core/gpio_control_in_2[5]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_2[5]/shift_register[3] ), .CP(n1783), .CDN(
        n1825), .Q(\chip_core/gpio_control_in_2[5]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_2[5]/shift_register[4] ), .CP(n1783), .CDN(
        n1825), .Q(\chip_core/gpio_control_in_2[5]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_2[5]/shift_register[5] ), .CP(n1770), .CDN(
        n1825), .Q(\chip_core/gpio_control_in_2[5]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_2[5]/shift_register[6] ), .CP(n1769), .CDN(
        n1825), .Q(\chip_core/gpio_control_in_2[5]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_2[5]/shift_register[7] ), .CP(n1783), .CDN(
        n1825), .Q(\chip_core/gpio_control_in_2[5]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_2[5]/shift_register[8] ), .CP(n1783), .CDN(
        n1825), .Q(\chip_core/gpio_control_in_2[5]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_2[5]/shift_register[9] ), .CP(n1783), .CDN(
        n1825), .Q(\chip_core/gpio_control_in_2[5]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_2[5]/shift_register[10] ), .CP(n1770), 
        .CDN(n1825), .Q(\chip_core/gpio_control_in_2[5]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[5]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_2[5]/shift_register[11] ), .CP(n1783), 
        .CDN(n1825), .Q(\chip_core/gpio_control_in_2[5]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[4]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_2_shifted [4]), .CP(n1783), .CDN(n1824), 
        .Q(\chip_core/gpio_control_in_2[4]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[4]/shift_register[0] ), .CP(n1769), .CDN(
        n1824), .Q(\chip_core/gpio_control_in_2[4]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[4]/shift_register[1] ), .CP(n1783), .CDN(
        n1824), .Q(\chip_core/gpio_control_in_2[4]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_2[4]/shift_register[2] ), .CP(n1783), .CDN(
        n1824), .Q(\chip_core/gpio_control_in_2[4]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_2[4]/shift_register[3] ), .CP(n1783), .CDN(
        n1824), .Q(\chip_core/gpio_control_in_2[4]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_2[4]/shift_register[4] ), .CP(n1770), .CDN(
        n1824), .Q(\chip_core/gpio_control_in_2[4]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_2[4]/shift_register[5] ), .CP(n1769), .CDN(
        n1824), .Q(\chip_core/gpio_control_in_2[4]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_2[4]/shift_register[6] ), .CP(n1770), .CDN(
        n1824), .Q(\chip_core/gpio_control_in_2[4]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_2[4]/shift_register[7] ), .CP(n1783), .CDN(
        n1824), .Q(\chip_core/gpio_control_in_2[4]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_2[4]/shift_register[8] ), .CP(n1770), .CDN(
        n1824), .Q(\chip_core/gpio_control_in_2[4]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_2[4]/shift_register[9] ), .CP(n1769), .CDN(
        n1823), .Q(\chip_core/gpio_control_in_2[4]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_2[4]/shift_register[10] ), .CP(n1769), 
        .CDN(n1823), .Q(\chip_core/gpio_control_in_2[4]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[4]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_2[4]/shift_register[11] ), .CP(n1783), 
        .CDN(n1823), .Q(\chip_core/gpio_control_in_2[4]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[3]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_2_shifted [3]), .CP(n1770), .CDN(n1823), 
        .Q(\chip_core/gpio_control_in_2[3]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[3]/shift_register[0] ), .CP(n1769), .CDN(
        n1823), .Q(\chip_core/gpio_control_in_2[3]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[3]/shift_register[1] ), .CP(n1768), .CDN(
        n1823), .Q(\chip_core/gpio_control_in_2[3]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_2[3]/shift_register[2] ), .CP(n1768), .CDN(
        n1823), .Q(\chip_core/gpio_control_in_2[3]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_2[3]/shift_register[3] ), .CP(n1768), .CDN(
        n1823), .Q(\chip_core/gpio_control_in_2[3]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_2[3]/shift_register[4] ), .CP(n1768), .CDN(
        n1823), .Q(\chip_core/gpio_control_in_2[3]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_2[3]/shift_register[5] ), .CP(n1768), .CDN(
        n1823), .Q(\chip_core/gpio_control_in_2[3]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_2[3]/shift_register[6] ), .CP(n1768), .CDN(
        n1822), .Q(\chip_core/gpio_control_in_2[3]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_2[3]/shift_register[7] ), .CP(n1768), .CDN(
        n1822), .Q(\chip_core/gpio_control_in_2[3]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_2[3]/shift_register[8] ), .CP(n1768), .CDN(
        n1822), .Q(\chip_core/gpio_control_in_2[3]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_2[3]/shift_register[9] ), .CP(n1767), .CDN(
        n1822), .Q(\chip_core/gpio_control_in_2[3]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_2[3]/shift_register[10] ), .CP(n1767), 
        .CDN(n1822), .Q(\chip_core/gpio_control_in_2[3]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[3]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_2[3]/shift_register[11] ), .CP(n1767), 
        .CDN(n1822), .Q(\chip_core/gpio_control_in_2[3]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[2]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_2_shifted [2]), .CP(n1767), .CDN(n1822), 
        .Q(\chip_core/gpio_control_in_2[2]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[2]/shift_register[0] ), .CP(n1767), .CDN(
        n1822), .Q(\chip_core/gpio_control_in_2[2]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[2]/shift_register[1] ), .CP(n1767), .CDN(
        n1822), .Q(\chip_core/gpio_control_in_2[2]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_2[2]/shift_register[2] ), .CP(n1767), .CDN(
        n1822), .Q(\chip_core/gpio_control_in_2[2]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_2[2]/shift_register[3] ), .CP(n1767), .CDN(
        n1821), .Q(\chip_core/gpio_control_in_2[2]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_2[2]/shift_register[4] ), .CP(n1782), .CDN(
        n1821), .Q(\chip_core/gpio_control_in_2[2]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_2[2]/shift_register[5] ), .CP(n1768), .CDN(
        n1821), .Q(\chip_core/gpio_control_in_2[2]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_2[2]/shift_register[6] ), .CP(n1767), .CDN(
        n1821), .Q(\chip_core/gpio_control_in_2[2]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_2[2]/shift_register[7] ), .CP(n1782), .CDN(
        n1821), .Q(\chip_core/gpio_control_in_2[2]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_2[2]/shift_register[8] ), .CP(n1768), .CDN(
        n1821), .Q(\chip_core/gpio_control_in_2[2]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_2[2]/shift_register[9] ), .CP(n1767), .CDN(
        n1821), .Q(\chip_core/gpio_control_in_2[2]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_2[2]/shift_register[10] ), .CP(n1782), 
        .CDN(n1821), .Q(\chip_core/gpio_control_in_2[2]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[2]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_2[2]/shift_register[11] ), .CP(n1768), 
        .CDN(n1821), .Q(\chip_core/gpio_control_in_2[2]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[1]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_2_shifted [1]), .CP(n1782), .CDN(n1821), 
        .Q(\chip_core/gpio_control_in_2[1]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[1]/shift_register[0] ), .CP(n1782), .CDN(
        n1820), .Q(\chip_core/gpio_control_in_2[1]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[1]/shift_register[1] ), .CP(n1768), .CDN(
        n1820), .Q(\chip_core/gpio_control_in_2[1]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_2[1]/shift_register[2] ), .CP(n1767), .CDN(
        n1820), .Q(\chip_core/gpio_control_in_2[1]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_2[1]/shift_register[3] ), .CP(n1782), .CDN(
        n1820), .Q(\chip_core/gpio_control_in_2[1]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_2[1]/shift_register[4] ), .CP(n1782), .CDN(
        n1820), .Q(\chip_core/gpio_control_in_2[1]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_2[1]/shift_register[5] ), .CP(n1782), .CDN(
        n1820), .Q(\chip_core/gpio_control_in_2[1]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_2[1]/shift_register[6] ), .CP(n1768), .CDN(
        n1820), .Q(\chip_core/gpio_control_in_2[1]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_2[1]/shift_register[7] ), .CP(n1782), .CDN(
        n1820), .Q(\chip_core/gpio_control_in_2[1]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_2[1]/shift_register[8] ), .CP(n1782), .CDN(
        n1820), .Q(\chip_core/gpio_control_in_2[1]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_2[1]/shift_register[9] ), .CP(n1767), .CDN(
        n1819), .Q(\chip_core/gpio_control_in_2[1]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_2[1]/shift_register[10] ), .CP(n1782), 
        .CDN(n1819), .Q(\chip_core/gpio_control_in_2[1]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[1]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_2[1]/shift_register[11] ), .CP(n1782), 
        .CDN(n1819), .Q(\chip_core/gpio_control_in_2[1]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[0]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_2_shifted [0]), .CP(n1782), .CDN(n1819), 
        .Q(\chip_core/gpio_control_in_2[0]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[0]/shift_register[0] ), .CP(n1768), .CDN(
        n1819), .Q(\chip_core/gpio_control_in_2[0]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[0]/shift_register[1] ), .CP(n1767), .CDN(
        n1819), .Q(\chip_core/gpio_control_in_2[0]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_2[0]/shift_register[2] ), .CP(n1768), .CDN(
        n1819), .Q(\chip_core/gpio_control_in_2[0]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_2[0]/shift_register[3] ), .CP(n1782), .CDN(
        n1819), .Q(\chip_core/gpio_control_in_2[0]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_2[0]/shift_register[4] ), .CP(n1768), .CDN(
        n1819), .Q(\chip_core/gpio_control_in_2[0]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_2[0]/shift_register[5] ), .CP(n1767), .CDN(
        n1819), .Q(\chip_core/gpio_control_in_2[0]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_2[0]/shift_register[6] ), .CP(n1767), .CDN(
        n1818), .Q(\chip_core/gpio_control_in_2[0]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_2[0]/shift_register[7] ), .CP(n1782), .CDN(
        n1818), .Q(\chip_core/gpio_control_in_2[0]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_2[0]/shift_register[8] ), .CP(n1768), .CDN(
        n1818), .Q(\chip_core/gpio_control_in_2[0]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_2[0]/shift_register[9] ), .CP(n1767), .CDN(
        n1818), .Q(\chip_core/gpio_control_in_2[0]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_2[0]/shift_register[10] ), .CP(n1766), 
        .CDN(n1818), .Q(\chip_core/gpio_control_in_2[0]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[0]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_2[0]/shift_register[11] ), .CP(n1766), 
        .CDN(n1818), .Q(\chip_core/gpio_control_in_2[0]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_2[0]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[0]/shift_register[12] ), .CP(n1849), 
        .CDN(n1818), .Q(mprj_io_dm[59]) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[0]/shift_register[11] ), .CP(n1846), 
        .CDN(n1818), .Q(mprj_io_dm[58]) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_2[0]/shift_register[3] ), .CP(n1851), .CDN(
        n1818), .Q(mprj_io_inp_dis[19]) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[1]/shift_register[12] ), .CP(n1849), 
        .CDN(n1818), .Q(mprj_io_dm[62]) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[1]/shift_register[11] ), .CP(n1846), 
        .CDN(n1817), .Q(mprj_io_dm[61]) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_2[1]/shift_register[3] ), .CP(n1851), .CDN(
        n1817), .Q(mprj_io_inp_dis[20]) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[2]/shift_register[12] ), .CP(n1849), 
        .CDN(n1817), .Q(mprj_io_dm[65]) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[2]/shift_register[11] ), .CP(n1846), 
        .CDN(n1817), .Q(mprj_io_dm[64]) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_2[2]/shift_register[3] ), .CP(n1846), .CDN(
        n1817), .Q(mprj_io_inp_dis[21]) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[3]/shift_register[12] ), .CP(n1846), 
        .CDN(n1817), .Q(mprj_io_dm[68]) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[3]/shift_register[11] ), .CP(n1846), 
        .CDN(n1817), .Q(mprj_io_dm[67]) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_2[3]/shift_register[3] ), .CP(n1846), .CDN(
        n1817), .Q(mprj_io_inp_dis[22]) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[4]/shift_register[12] ), .CP(n1846), 
        .CDN(n1817), .Q(mprj_io_dm[71]) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[4]/shift_register[11] ), .CP(n1846), 
        .CDN(n1817), .Q(mprj_io_dm[70]) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_2[4]/shift_register[3] ), .CP(n1846), .CDN(
        n1828), .Q(mprj_io_inp_dis[23]) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[5]/shift_register[12] ), .CP(n1846), 
        .CDN(n1826), .Q(mprj_io_dm[74]) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[5]/shift_register[11] ), .CP(n1851), 
        .CDN(n1828), .Q(mprj_io_dm[73]) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_2[5]/shift_register[3] ), .CP(n1846), .CDN(
        n1837), .Q(mprj_io_inp_dis[24]) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[6]/shift_register[12] ), .CP(n1851), 
        .CDN(n1828), .Q(mprj_io_dm[77]) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[6]/shift_register[11] ), .CP(n1851), 
        .CDN(n1828), .Q(mprj_io_dm[76]) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_2[6]/shift_register[3] ), .CP(n1851), .CDN(
        n1837), .Q(mprj_io_inp_dis[25]) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[7]/shift_register[12] ), .CP(n1849), 
        .CDN(n1827), .Q(mprj_io_dm[80]) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[7]/shift_register[11] ), .CP(n1846), 
        .CDN(n1827), .Q(mprj_io_dm[79]) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_2[7]/shift_register[3] ), .CP(n1851), .CDN(
        \chip_core/gpio_resetn_1_shifted[0] ), .Q(mprj_io_inp_dis[26]) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[8]/shift_register[12] ), .CP(n1851), 
        .CDN(n1828), .Q(mprj_io_dm[83]) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[8]/shift_register[11] ), .CP(n1851), 
        .CDN(n1833), .Q(mprj_io_dm[82]) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_2[8]/shift_register[3] ), .CP(n1851), .CDN(
        \chip_core/gpio_resetn_1_shifted[0] ), .Q(mprj_io_inp_dis[27]) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[9]/shift_register[12] ), .CP(n1849), 
        .CDN(n1837), .Q(mprj_io_dm[86]) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[9]/shift_register[11] ), .CP(n1851), 
        .CDN(n1807), .Q(mprj_io_dm[85]) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_2[9]/shift_register[3] ), .CP(n1846), .CDN(
        n1828), .Q(mprj_io_inp_dis[28]) );
  dfcrq1 \chip_core/gpio_control_in_2[10]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[10]/shift_register[12] ), .CP(n1849), 
        .CDN(n1827), .Q(mprj_io_dm[89]) );
  dfcrq1 \chip_core/gpio_control_in_2[10]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[10]/shift_register[11] ), .CP(n1846), 
        .CDN(n1837), .Q(mprj_io_dm[88]) );
  dfcrq1 \chip_core/gpio_control_in_2[10]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_2[10]/shift_register[3] ), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(n1828), .Q(
        mprj_io_inp_dis[29]) );
  dfcrq1 \chip_core/gpio_control_in_2[11]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[11]/shift_register[12] ), .CP(n1847), 
        .CDN(n1819), .Q(mprj_io_dm[92]) );
  dfcrq1 \chip_core/gpio_control_in_2[11]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[11]/shift_register[11] ), .CP(n1845), 
        .CDN(n1828), .Q(mprj_io_dm[91]) );
  dfcrq1 \chip_core/gpio_control_in_2[11]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_2[11]/shift_register[3] ), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(n1828), .Q(
        mprj_io_inp_dis[30]) );
  dfcrq1 \chip_core/gpio_control_in_2[12]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[12]/shift_register[12] ), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(n1837), .Q(mprj_io_dm[95])
         );
  dfcrq1 \chip_core/gpio_control_in_2[12]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[12]/shift_register[11] ), .CP(n1854), 
        .CDN(n1836), .Q(mprj_io_dm[94]) );
  dfcrq1 \chip_core/gpio_control_in_2[12]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_2[12]/shift_register[3] ), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(n1842), .Q(
        mprj_io_inp_dis[31]) );
  dfcrq1 \chip_core/gpio_control_in_2[13]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[13]/shift_register[12] ), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(n1827), .Q(mprj_io_dm[98])
         );
  dfcrq1 \chip_core/gpio_control_in_2[13]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[13]/shift_register[11] ), .CP(n1850), 
        .CDN(n1828), .Q(mprj_io_dm[97]) );
  dfcrq1 \chip_core/gpio_control_in_2[13]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_2[13]/shift_register[3] ), .CP(n1844), 
        .CDN(\chip_core/gpio_resetn_1_shifted[0] ), .Q(mprj_io_inp_dis[32]) );
  dfcrq1 \chip_core/gpio_control_in_2[14]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[14]/shift_register[12] ), .CP(n1850), 
        .CDN(n1826), .Q(mprj_io_dm[101]) );
  dfcrq1 \chip_core/gpio_control_in_2[14]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[14]/shift_register[11] ), .CP(n1850), 
        .CDN(n1836), .Q(mprj_io_dm[100]) );
  dfcrq1 \chip_core/gpio_control_in_2[14]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_2[14]/shift_register[3] ), .CP(n1850), 
        .CDN(n1816), .Q(mprj_io_inp_dis[33]) );
  dfcrq1 \chip_core/gpio_control_in_2[15]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_2[15]/shift_register[12] ), .CP(n1850), 
        .CDN(n1816), .Q(mprj_io_dm[104]) );
  dfcrq1 \chip_core/gpio_control_in_2[15]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_2[15]/shift_register[11] ), .CP(n1850), 
        .CDN(n1816), .Q(mprj_io_dm[103]) );
  dfcrq1 \chip_core/gpio_control_in_2[15]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_2[15]/shift_register[3] ), .CP(n1850), 
        .CDN(n1816), .Q(mprj_io_inp_dis[34]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_bidir_2[0]/shift_register[12] ), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(n1816), .Q(mprj_io_dm[107])
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_bidir_2[0]/shift_register[11] ), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(n1816), .Q(mprj_io_dm[106])
         );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_bidir_2[0]/shift_register[3] ), .CP(n1843), 
        .CDN(n1816), .Q(mprj_io_inp_dis[35]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_bidir_2[1]/shift_register[12] ), .CP(n1848), 
        .CDN(n1816), .Q(mprj_io_dm[110]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_bidir_2[1]/shift_register[11] ), .CP(n1850), 
        .CDN(n1816), .Q(mprj_io_dm[109]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_bidir_2[1]/shift_register[3] ), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(n1816), .Q(
        mprj_io_inp_dis[36]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_1_shifted [1]), .CP(n1766), .CDN(n1815), 
        .Q(\chip_core/gpio_control_bidir_1[1]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_bidir_1[1]/shift_register[0] ), .CP(n1766), 
        .CDN(n1815), .Q(\chip_core/gpio_control_bidir_1[1]/shift_register[1] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_bidir_1[1]/shift_register[1] ), .CP(n1766), 
        .CDN(n1820), .Q(\chip_core/gpio_control_bidir_1[1]/shift_register[2] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_bidir_1[1]/shift_register[2] ), .CP(n1766), 
        .CDN(n1841), .Q(\chip_core/gpio_control_bidir_1[1]/shift_register[3] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_bidir_1[1]/shift_register[3] ), .CP(n1766), 
        .CDN(n1821), .Q(\chip_core/gpio_control_bidir_1[1]/shift_register[4] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_bidir_1[1]/shift_register[4] ), .CP(n1766), 
        .CDN(\chip_core/gpio_resetn_1_shifted[0] ), .Q(
        \chip_core/gpio_control_bidir_1[1]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_bidir_1[1]/shift_register[5] ), .CP(n1765), 
        .CDN(n1841), .Q(\chip_core/gpio_control_bidir_1[1]/shift_register[6] )
         );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_bidir_1[1]/shift_register[6] ), .CP(n1765), 
        .CDN(\chip_core/gpio_resetn_1_shifted[0] ), .Q(
        \chip_core/gpio_control_bidir_1[1]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_bidir_1[1]/shift_register[7] ), .CP(n1765), 
        .CDN(\chip_core/gpio_resetn_1_shifted[0] ), .Q(
        \chip_core/gpio_control_bidir_1[1]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_bidir_1[1]/shift_register[8] ), .CP(n1765), 
        .CDN(\chip_core/gpio_resetn_1_shifted[0] ), .Q(
        \chip_core/gpio_control_bidir_1[1]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_bidir_1[1]/shift_register[9] ), .CP(n1765), 
        .CDN(n1841), .Q(\chip_core/gpio_control_bidir_1[1]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_bidir_1[1]/shift_register[10] ), .CP(n1765), 
        .CDN(n1826), .Q(\chip_core/gpio_control_bidir_1[1]/shift_register[11] ) );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_bidir_1[1]/shift_register[11] ), .CP(n1765), 
        .CDN(n1826), .Q(\chip_core/gpio_control_bidir_1[1]/shift_register[12] ) );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_1_shifted [2]), .CP(n1765), .CDN(n1790), 
        .Q(\chip_core/gpio_control_in_1a[0]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_1a[0]/shift_register[0] ), .CP(n1781), 
        .CDN(n1791), .Q(\chip_core/gpio_control_in_1a[0]/shift_register[1] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_1a[0]/shift_register[1] ), .CP(n1766), 
        .CDN(n1791), .Q(\chip_core/gpio_control_in_1a[0]/shift_register[2] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_1a[0]/shift_register[2] ), .CP(n1765), 
        .CDN(n1841), .Q(\chip_core/gpio_control_in_1a[0]/shift_register[3] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_1a[0]/shift_register[3] ), .CP(n1781), 
        .CDN(n1840), .Q(\chip_core/gpio_control_in_1a[0]/shift_register[4] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_1a[0]/shift_register[4] ), .CP(n1766), 
        .CDN(n1835), .Q(\chip_core/gpio_control_in_1a[0]/shift_register[5] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_1a[0]/shift_register[5] ), .CP(n1765), 
        .CDN(n1829), .Q(\chip_core/gpio_control_in_1a[0]/shift_register[6] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_1a[0]/shift_register[6] ), .CP(n1781), 
        .CDN(n1840), .Q(\chip_core/gpio_control_in_1a[0]/shift_register[7] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_1a[0]/shift_register[7] ), .CP(n1766), 
        .CDN(n1835), .Q(\chip_core/gpio_control_in_1a[0]/shift_register[8] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_1a[0]/shift_register[8] ), .CP(n1781), 
        .CDN(n1829), .Q(\chip_core/gpio_control_in_1a[0]/shift_register[9] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_1a[0]/shift_register[9] ), .CP(n1781), 
        .CDN(n1840), .Q(\chip_core/gpio_control_in_1a[0]/shift_register[10] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_1a[0]/shift_register[10] ), .CP(n1766), 
        .CDN(n1835), .Q(\chip_core/gpio_control_in_1a[0]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_1a[0]/shift_register[11] ), .CP(n1765), 
        .CDN(n1829), .Q(\chip_core/gpio_control_in_1a[0]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_1_shifted [3]), .CP(n1781), .CDN(n1840), 
        .Q(\chip_core/gpio_control_in_1a[1]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_1a[1]/shift_register[0] ), .CP(n1781), 
        .CDN(n1835), .Q(\chip_core/gpio_control_in_1a[1]/shift_register[1] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_1a[1]/shift_register[1] ), .CP(n1781), 
        .CDN(n1835), .Q(\chip_core/gpio_control_in_1a[1]/shift_register[2] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_1a[1]/shift_register[2] ), .CP(n1766), 
        .CDN(n1829), .Q(\chip_core/gpio_control_in_1a[1]/shift_register[3] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_1a[1]/shift_register[3] ), .CP(n1781), 
        .CDN(n1840), .Q(\chip_core/gpio_control_in_1a[1]/shift_register[4] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_1a[1]/shift_register[4] ), .CP(n1781), 
        .CDN(n1829), .Q(\chip_core/gpio_control_in_1a[1]/shift_register[5] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_1a[1]/shift_register[5] ), .CP(n1765), 
        .CDN(n1835), .Q(\chip_core/gpio_control_in_1a[1]/shift_register[6] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_1a[1]/shift_register[6] ), .CP(n1781), 
        .CDN(n1840), .Q(\chip_core/gpio_control_in_1a[1]/shift_register[7] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_1a[1]/shift_register[7] ), .CP(n1781), 
        .CDN(n1835), .Q(\chip_core/gpio_control_in_1a[1]/shift_register[8] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_1a[1]/shift_register[8] ), .CP(n1781), 
        .CDN(n1829), .Q(\chip_core/gpio_control_in_1a[1]/shift_register[9] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_1a[1]/shift_register[9] ), .CP(n1766), 
        .CDN(n1840), .Q(\chip_core/gpio_control_in_1a[1]/shift_register[10] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_1a[1]/shift_register[10] ), .CP(n1765), 
        .CDN(n1835), .Q(\chip_core/gpio_control_in_1a[1]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_1a[1]/shift_register[11] ), .CP(n1766), 
        .CDN(n1835), .Q(\chip_core/gpio_control_in_1a[1]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_1_shifted [4]), .CP(n1781), .CDN(n1829), 
        .Q(\chip_core/gpio_control_in_1a[2]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_1a[2]/shift_register[0] ), .CP(n1766), 
        .CDN(n1840), .Q(\chip_core/gpio_control_in_1a[2]/shift_register[1] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_1a[2]/shift_register[1] ), .CP(n1765), 
        .CDN(n1835), .Q(\chip_core/gpio_control_in_1a[2]/shift_register[2] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_1a[2]/shift_register[2] ), .CP(n1765), 
        .CDN(n1829), .Q(\chip_core/gpio_control_in_1a[2]/shift_register[3] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_1a[2]/shift_register[3] ), .CP(n1781), 
        .CDN(n1795), .Q(\chip_core/gpio_control_in_1a[2]/shift_register[4] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_1a[2]/shift_register[4] ), .CP(n1766), 
        .CDN(n1796), .Q(\chip_core/gpio_control_in_1a[2]/shift_register[5] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_1a[2]/shift_register[5] ), .CP(n1765), 
        .CDN(n1797), .Q(\chip_core/gpio_control_in_1a[2]/shift_register[6] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_1a[2]/shift_register[6] ), .CP(n1764), 
        .CDN(n1840), .Q(\chip_core/gpio_control_in_1a[2]/shift_register[7] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_1a[2]/shift_register[7] ), .CP(n1764), 
        .CDN(n1796), .Q(\chip_core/gpio_control_in_1a[2]/shift_register[8] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_1a[2]/shift_register[8] ), .CP(n1764), 
        .CDN(n1797), .Q(\chip_core/gpio_control_in_1a[2]/shift_register[9] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_1a[2]/shift_register[9] ), .CP(n1764), 
        .CDN(n1793), .Q(\chip_core/gpio_control_in_1a[2]/shift_register[10] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_1a[2]/shift_register[10] ), .CP(n1764), 
        .CDN(n1816), .Q(\chip_core/gpio_control_in_1a[2]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_1a[2]/shift_register[11] ), .CP(n1764), 
        .CDN(n1794), .Q(\chip_core/gpio_control_in_1a[2]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_1_shifted [5]), .CP(n1764), .CDN(n1799), 
        .Q(\chip_core/gpio_control_in_1a[3]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_1a[3]/shift_register[0] ), .CP(n1764), 
        .CDN(n1805), .Q(\chip_core/gpio_control_in_1a[3]/shift_register[1] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_1a[3]/shift_register[1] ), .CP(n1763), 
        .CDN(n1810), .Q(\chip_core/gpio_control_in_1a[3]/shift_register[2] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_1a[3]/shift_register[2] ), .CP(n1763), 
        .CDN(n1809), .Q(\chip_core/gpio_control_in_1a[3]/shift_register[3] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_1a[3]/shift_register[3] ), .CP(n1763), 
        .CDN(n1811), .Q(\chip_core/gpio_control_in_1a[3]/shift_register[4] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_1a[3]/shift_register[4] ), .CP(n1763), 
        .CDN(n1806), .Q(\chip_core/gpio_control_in_1a[3]/shift_register[5] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_1a[3]/shift_register[5] ), .CP(n1763), 
        .CDN(n1806), .Q(\chip_core/gpio_control_in_1a[3]/shift_register[6] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_1a[3]/shift_register[6] ), .CP(n1763), 
        .CDN(n1806), .Q(\chip_core/gpio_control_in_1a[3]/shift_register[7] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_1a[3]/shift_register[7] ), .CP(n1763), 
        .CDN(n1806), .Q(\chip_core/gpio_control_in_1a[3]/shift_register[8] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_1a[3]/shift_register[8] ), .CP(n1763), 
        .CDN(n1806), .Q(\chip_core/gpio_control_in_1a[3]/shift_register[9] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_1a[3]/shift_register[9] ), .CP(n1780), 
        .CDN(n1806), .Q(\chip_core/gpio_control_in_1a[3]/shift_register[10] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_1a[3]/shift_register[10] ), .CP(n1764), 
        .CDN(n1806), .Q(\chip_core/gpio_control_in_1a[3]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_1a[3]/shift_register[11] ), .CP(n1763), 
        .CDN(n1806), .Q(\chip_core/gpio_control_in_1a[3]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_1_shifted [6]), .CP(n1780), .CDN(n1806), 
        .Q(\chip_core/gpio_control_in_1a[4]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_1a[4]/shift_register[0] ), .CP(n1764), 
        .CDN(n1806), .Q(\chip_core/gpio_control_in_1a[4]/shift_register[1] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_1a[4]/shift_register[1] ), .CP(n1763), 
        .CDN(n1842), .Q(\chip_core/gpio_control_in_1a[4]/shift_register[2] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_1a[4]/shift_register[2] ), .CP(n1780), 
        .CDN(n1829), .Q(\chip_core/gpio_control_in_1a[4]/shift_register[3] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_1a[4]/shift_register[3] ), .CP(n1764), 
        .CDN(n1812), .Q(\chip_core/gpio_control_in_1a[4]/shift_register[4] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_1a[4]/shift_register[4] ), .CP(n1780), 
        .CDN(n1789), .Q(\chip_core/gpio_control_in_1a[4]/shift_register[5] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_1a[4]/shift_register[5] ), .CP(n1780), 
        .CDN(n1837), .Q(\chip_core/gpio_control_in_1a[4]/shift_register[6] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_1a[4]/shift_register[6] ), .CP(n1764), 
        .CDN(n1827), .Q(\chip_core/gpio_control_in_1a[4]/shift_register[7] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_1a[4]/shift_register[7] ), .CP(n1763), 
        .CDN(n1804), .Q(\chip_core/gpio_control_in_1a[4]/shift_register[8] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_1a[4]/shift_register[8] ), .CP(n1780), 
        .CDN(n1831), .Q(\chip_core/gpio_control_in_1a[4]/shift_register[9] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_1a[4]/shift_register[9] ), .CP(n1780), 
        .CDN(n1803), .Q(\chip_core/gpio_control_in_1a[4]/shift_register[10] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_1a[4]/shift_register[10] ), .CP(n1780), 
        .CDN(n1800), .Q(\chip_core/gpio_control_in_1a[4]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_1a[4]/shift_register[11] ), .CP(n1764), 
        .CDN(n1800), .Q(\chip_core/gpio_control_in_1a[4]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_1_shifted [7]), .CP(n1780), .CDN(n1800), 
        .Q(\chip_core/gpio_control_in_1a[5]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_1a[5]/shift_register[0] ), .CP(n1780), 
        .CDN(n1800), .Q(\chip_core/gpio_control_in_1a[5]/shift_register[1] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_1a[5]/shift_register[1] ), .CP(n1763), 
        .CDN(n1800), .Q(\chip_core/gpio_control_in_1a[5]/shift_register[2] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_1a[5]/shift_register[2] ), .CP(n1780), 
        .CDN(n1800), .Q(\chip_core/gpio_control_in_1a[5]/shift_register[3] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_1a[5]/shift_register[3] ), .CP(n1780), 
        .CDN(n1800), .Q(\chip_core/gpio_control_in_1a[5]/shift_register[4] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_1a[5]/shift_register[4] ), .CP(n1780), 
        .CDN(n1800), .Q(\chip_core/gpio_control_in_1a[5]/shift_register[5] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_1a[5]/shift_register[5] ), .CP(n1764), 
        .CDN(n1801), .Q(\chip_core/gpio_control_in_1a[5]/shift_register[6] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_1a[5]/shift_register[6] ), .CP(n1763), 
        .CDN(n1801), .Q(\chip_core/gpio_control_in_1a[5]/shift_register[7] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_1a[5]/shift_register[7] ), .CP(n1764), 
        .CDN(n1801), .Q(\chip_core/gpio_control_in_1a[5]/shift_register[8] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_1a[5]/shift_register[8] ), .CP(n1780), 
        .CDN(n1801), .Q(\chip_core/gpio_control_in_1a[5]/shift_register[9] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_1a[5]/shift_register[9] ), .CP(n1764), 
        .CDN(n1801), .Q(\chip_core/gpio_control_in_1a[5]/shift_register[10] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_1a[5]/shift_register[10] ), .CP(n1763), 
        .CDN(n1801), .Q(\chip_core/gpio_control_in_1a[5]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_1a[5]/shift_register[11] ), .CP(n1763), 
        .CDN(n1801), .Q(\chip_core/gpio_control_in_1a[5]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[0]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_1_shifted [8]), .CP(n1780), .CDN(n1801), 
        .Q(\chip_core/gpio_control_in_1[0]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[0]/shift_register[0] ), .CP(n1764), .CDN(
        n1801), .Q(\chip_core/gpio_control_in_1[0]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[0]/shift_register[1] ), .CP(n1763), .CDN(
        n1801), .Q(\chip_core/gpio_control_in_1[0]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_1[0]/shift_register[2] ), .CP(n1769), .CDN(
        n1802), .Q(\chip_core/gpio_control_in_1[0]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_1[0]/shift_register[3] ), .CP(n1771), .CDN(
        n1802), .Q(\chip_core/gpio_control_in_1[0]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_1[0]/shift_register[4] ), .CP(n1765), .CDN(
        n1802), .Q(\chip_core/gpio_control_in_1[0]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_1[0]/shift_register[5] ), .CP(n1785), .CDN(
        n1802), .Q(\chip_core/gpio_control_in_1[0]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_1[0]/shift_register[6] ), .CP(n1778), .CDN(
        n1802), .Q(\chip_core/gpio_control_in_1[0]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_1[0]/shift_register[7] ), .CP(n1786), .CDN(
        n1802), .Q(\chip_core/gpio_control_in_1[0]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_1[0]/shift_register[8] ), .CP(n1782), .CDN(
        n1802), .Q(\chip_core/gpio_control_in_1[0]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_1[0]/shift_register[9] ), .CP(n1780), .CDN(
        n1802), .Q(\chip_core/gpio_control_in_1[0]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_1[0]/shift_register[10] ), .CP(n1787), 
        .CDN(n1802), .Q(\chip_core/gpio_control_in_1[0]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[0]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_1[0]/shift_register[11] ), .CP(n1762), 
        .CDN(n1802), .Q(\chip_core/gpio_control_in_1[0]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[1]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_1_shifted [9]), .CP(n1761), .CDN(n1803), 
        .Q(\chip_core/gpio_control_in_1[1]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[1]/shift_register[0] ), .CP(n1775), .CDN(
        n1803), .Q(\chip_core/gpio_control_in_1[1]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[1]/shift_register[1] ), .CP(n1774), .CDN(
        n1803), .Q(\chip_core/gpio_control_in_1[1]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_1[1]/shift_register[2] ), .CP(n1768), .CDN(
        n1803), .Q(\chip_core/gpio_control_in_1[1]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_1[1]/shift_register[3] ), .CP(n1767), .CDN(
        n1803), .Q(\chip_core/gpio_control_in_1[1]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_1[1]/shift_register[4] ), .CP(n1764), .CDN(
        n1803), .Q(\chip_core/gpio_control_in_1[1]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_1[1]/shift_register[5] ), .CP(n1779), .CDN(
        n1803), .Q(\chip_core/gpio_control_in_1[1]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_1[1]/shift_register[6] ), .CP(n1759), .CDN(
        n1803), .Q(\chip_core/gpio_control_in_1[1]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_1[1]/shift_register[7] ), .CP(n1783), .CDN(
        n1803), .Q(\chip_core/gpio_control_in_1[1]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_1[1]/shift_register[8] ), .CP(n1779), .CDN(
        n1804), .Q(\chip_core/gpio_control_in_1[1]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_1[1]/shift_register[9] ), .CP(n1779), .CDN(
        n1804), .Q(\chip_core/gpio_control_in_1[1]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_1[1]/shift_register[10] ), .CP(n1779), 
        .CDN(n1804), .Q(\chip_core/gpio_control_in_1[1]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[1]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_1[1]/shift_register[11] ), .CP(n1779), 
        .CDN(n1804), .Q(\chip_core/gpio_control_in_1[1]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[2]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_1_shifted [10]), .CP(n1776), .CDN(n1804), 
        .Q(\chip_core/gpio_control_in_1[2]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[2]/shift_register[0] ), .CP(n1779), .CDN(
        n1804), .Q(\chip_core/gpio_control_in_1[2]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[2]/shift_register[1] ), .CP(n1779), .CDN(
        n1804), .Q(\chip_core/gpio_control_in_1[2]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_1[2]/shift_register[2] ), .CP(n1767), .CDN(
        n1804), .Q(\chip_core/gpio_control_in_1[2]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_1[2]/shift_register[3] ), .CP(n1773), .CDN(
        n1804), .Q(\chip_core/gpio_control_in_1[2]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_1[2]/shift_register[4] ), .CP(n1779), .CDN(
        n1804), .Q(\chip_core/gpio_control_in_1[2]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_1[2]/shift_register[5] ), .CP(n1779), .CDN(
        n1805), .Q(\chip_core/gpio_control_in_1[2]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_1[2]/shift_register[6] ), .CP(n1779), .CDN(
        n1805), .Q(\chip_core/gpio_control_in_1[2]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_1[2]/shift_register[7] ), .CP(n1763), .CDN(
        n1805), .Q(\chip_core/gpio_control_in_1[2]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_1[2]/shift_register[8] ), .CP(n1779), .CDN(
        n1805), .Q(\chip_core/gpio_control_in_1[2]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_1[2]/shift_register[9] ), .CP(n1779), .CDN(
        n1805), .Q(\chip_core/gpio_control_in_1[2]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_1[2]/shift_register[10] ), .CP(n1779), 
        .CDN(n1805), .Q(\chip_core/gpio_control_in_1[2]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[2]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_1[2]/shift_register[11] ), .CP(n1779), 
        .CDN(n1805), .Q(\chip_core/gpio_control_in_1[2]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[3]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_1_shifted [11]), .CP(n1779), .CDN(n1805), 
        .Q(\chip_core/gpio_control_in_1[3]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[3]/shift_register[0] ), .CP(n1779), .CDN(
        n1805), .Q(\chip_core/gpio_control_in_1[3]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[3]/shift_register[1] ), .CP(n1774), .CDN(
        n1805), .Q(\chip_core/gpio_control_in_1[3]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_1[3]/shift_register[2] ), .CP(n1759), .CDN(
        n1836), .Q(\chip_core/gpio_control_in_1[3]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_1[3]/shift_register[3] ), .CP(n1773), .CDN(
        n1840), .Q(\chip_core/gpio_control_in_1[3]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_1[3]/shift_register[4] ), .CP(n1779), .CDN(
        n1838), .Q(\chip_core/gpio_control_in_1[3]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_1[3]/shift_register[5] ), .CP(n1763), .CDN(
        n1835), .Q(\chip_core/gpio_control_in_1[3]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_1[3]/shift_register[6] ), .CP(n1784), .CDN(
        n1831), .Q(\chip_core/gpio_control_in_1[3]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_1[3]/shift_register[7] ), .CP(n1781), .CDN(
        n1804), .Q(\chip_core/gpio_control_in_1[3]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_1[3]/shift_register[8] ), .CP(n1779), .CDN(
        n1829), .Q(\chip_core/gpio_control_in_1[3]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_1[3]/shift_register[9] ), .CP(n1761), .CDN(
        n1837), .Q(\chip_core/gpio_control_in_1[3]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_1[3]/shift_register[10] ), .CP(n1776), 
        .CDN(n1805), .Q(\chip_core/gpio_control_in_1[3]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[3]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_1[3]/shift_register[11] ), .CP(n1762), 
        .CDN(n1797), .Q(\chip_core/gpio_control_in_1[3]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[4]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_1_shifted [12]), .CP(n1762), .CDN(n1804), 
        .Q(\chip_core/gpio_control_in_1[4]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[4]/shift_register[0] ), .CP(n1762), .CDN(
        n1806), .Q(\chip_core/gpio_control_in_1[4]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[4]/shift_register[1] ), .CP(n1762), .CDN(
        n1835), .Q(\chip_core/gpio_control_in_1[4]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_1[4]/shift_register[2] ), .CP(n1762), .CDN(
        n1833), .Q(\chip_core/gpio_control_in_1[4]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_1[4]/shift_register[3] ), .CP(n1762), .CDN(
        n1822), .Q(\chip_core/gpio_control_in_1[4]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_1[4]/shift_register[4] ), .CP(n1762), .CDN(
        n1801), .Q(\chip_core/gpio_control_in_1[4]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_1[4]/shift_register[5] ), .CP(n1762), .CDN(
        n1802), .Q(\chip_core/gpio_control_in_1[4]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_1[4]/shift_register[6] ), .CP(n1761), .CDN(
        n1803), .Q(\chip_core/gpio_control_in_1[4]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_1[4]/shift_register[7] ), .CP(n1761), .CDN(
        n1838), .Q(\chip_core/gpio_control_in_1[4]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_1[4]/shift_register[8] ), .CP(n1761), .CDN(
        n1792), .Q(\chip_core/gpio_control_in_1[4]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_1[4]/shift_register[9] ), .CP(n1761), .CDN(
        n1793), .Q(\chip_core/gpio_control_in_1[4]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_1[4]/shift_register[10] ), .CP(n1761), 
        .CDN(n1794), .Q(\chip_core/gpio_control_in_1[4]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[4]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_1[4]/shift_register[11] ), .CP(n1761), 
        .CDN(n1794), .Q(\chip_core/gpio_control_in_1[4]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[5]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_1_shifted [13]), .CP(n1761), .CDN(n1833), 
        .Q(\chip_core/gpio_control_in_1[5]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[5]/shift_register[0] ), .CP(n1761), .CDN(
        n1807), .Q(\chip_core/gpio_control_in_1[5]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[5]/shift_register[1] ), .CP(n1778), .CDN(
        n1808), .Q(\chip_core/gpio_control_in_1[5]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_1[5]/shift_register[2] ), .CP(n1762), .CDN(
        n1822), .Q(\chip_core/gpio_control_in_1[5]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_1[5]/shift_register[3] ), .CP(n1761), .CDN(
        n1806), .Q(\chip_core/gpio_control_in_1[5]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_1[5]/shift_register[4] ), .CP(n1778), .CDN(
        n1813), .Q(\chip_core/gpio_control_in_1[5]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_1[5]/shift_register[5] ), .CP(n1762), .CDN(
        n1812), .Q(\chip_core/gpio_control_in_1[5]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_1[5]/shift_register[6] ), .CP(n1761), .CDN(
        n1812), .Q(\chip_core/gpio_control_in_1[5]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_1[5]/shift_register[7] ), .CP(n1778), .CDN(
        n1812), .Q(\chip_core/gpio_control_in_1[5]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_1[5]/shift_register[8] ), .CP(n1762), .CDN(
        n1812), .Q(\chip_core/gpio_control_in_1[5]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_1[5]/shift_register[9] ), .CP(n1778), .CDN(
        n1812), .Q(\chip_core/gpio_control_in_1[5]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_1[5]/shift_register[10] ), .CP(n1778), 
        .CDN(n1812), .Q(\chip_core/gpio_control_in_1[5]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[5]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_1[5]/shift_register[11] ), .CP(n1762), 
        .CDN(n1812), .Q(\chip_core/gpio_control_in_1[5]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[6]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_1_shifted [14]), .CP(n1761), .CDN(n1812), 
        .Q(\chip_core/gpio_control_in_1[6]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[6]/shift_register[0] ), .CP(n1778), .CDN(
        n1812), .Q(\chip_core/gpio_control_in_1[6]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[6]/shift_register[1] ), .CP(n1778), .CDN(
        n1812), .Q(\chip_core/gpio_control_in_1[6]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_1[6]/shift_register[2] ), .CP(n1778), .CDN(
        n1801), .Q(\chip_core/gpio_control_in_1[6]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_1[6]/shift_register[3] ), .CP(n1762), .CDN(
        n1802), .Q(\chip_core/gpio_control_in_1[6]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_1[6]/shift_register[4] ), .CP(n1778), .CDN(
        n1803), .Q(\chip_core/gpio_control_in_1[6]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_1[6]/shift_register[5] ), .CP(n1778), .CDN(
        n1821), .Q(\chip_core/gpio_control_in_1[6]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_1[6]/shift_register[6] ), .CP(n1761), .CDN(
        n1818), .Q(\chip_core/gpio_control_in_1[6]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_1[6]/shift_register[7] ), .CP(n1778), .CDN(
        n1819), .Q(\chip_core/gpio_control_in_1[6]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_1[6]/shift_register[8] ), .CP(n1778), .CDN(
        n1828), .Q(\chip_core/gpio_control_in_1[6]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_1[6]/shift_register[9] ), .CP(n1778), .CDN(
        n1812), .Q(\chip_core/gpio_control_in_1[6]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_1[6]/shift_register[10] ), .CP(n1762), 
        .CDN(n1792), .Q(\chip_core/gpio_control_in_1[6]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[6]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_1[6]/shift_register[11] ), .CP(n1761), 
        .CDN(n1793), .Q(\chip_core/gpio_control_in_1[6]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[7]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_1_shifted [15]), .CP(n1762), .CDN(n1811), 
        .Q(\chip_core/gpio_control_in_1[7]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[7]/shift_register[0] ), .CP(n1778), .CDN(
        n1811), .Q(\chip_core/gpio_control_in_1[7]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[7]/shift_register[1] ), .CP(n1762), .CDN(
        n1811), .Q(\chip_core/gpio_control_in_1[7]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_1[7]/shift_register[2] ), .CP(n1761), .CDN(
        n1811), .Q(\chip_core/gpio_control_in_1[7]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_1[7]/shift_register[3] ), .CP(n1761), .CDN(
        n1811), .Q(\chip_core/gpio_control_in_1[7]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_1[7]/shift_register[4] ), .CP(n1778), .CDN(
        n1811), .Q(\chip_core/gpio_control_in_1[7]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_1[7]/shift_register[5] ), .CP(n1762), .CDN(
        n1811), .Q(\chip_core/gpio_control_in_1[7]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_1[7]/shift_register[6] ), .CP(n1761), .CDN(
        n1811), .Q(\chip_core/gpio_control_in_1[7]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_1[7]/shift_register[7] ), .CP(n1777), .CDN(
        n1811), .Q(\chip_core/gpio_control_in_1[7]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_1[7]/shift_register[8] ), .CP(n1760), .CDN(
        n1811), .Q(\chip_core/gpio_control_in_1[7]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_1[7]/shift_register[9] ), .CP(
        \chip_core/gpio_clock_1_shifted[0] ), .CDN(n1810), .Q(
        \chip_core/gpio_control_in_1[7]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_1[7]/shift_register[10] ), .CP(n1777), 
        .CDN(n1810), .Q(\chip_core/gpio_control_in_1[7]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[7]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_1[7]/shift_register[11] ), .CP(n1760), 
        .CDN(n1810), .Q(\chip_core/gpio_control_in_1[7]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[8]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_1_shifted [16]), .CP(
        \chip_core/gpio_clock_1_shifted[0] ), .CDN(n1810), .Q(
        \chip_core/gpio_control_in_1[8]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[8]/shift_register[0] ), .CP(n1777), .CDN(
        n1810), .Q(\chip_core/gpio_control_in_1[8]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[8]/shift_register[1] ), .CP(n1760), .CDN(
        n1810), .Q(\chip_core/gpio_control_in_1[8]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_1[8]/shift_register[2] ), .CP(n1777), .CDN(
        n1810), .Q(\chip_core/gpio_control_in_1[8]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_1[8]/shift_register[3] ), .CP(n1760), .CDN(
        n1810), .Q(\chip_core/gpio_control_in_1[8]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_1[8]/shift_register[4] ), .CP(
        \chip_core/gpio_clock_1_shifted[0] ), .CDN(n1810), .Q(
        \chip_core/gpio_control_in_1[8]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_1[8]/shift_register[5] ), .CP(n1777), .CDN(
        n1810), .Q(\chip_core/gpio_control_in_1[8]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_1[8]/shift_register[6] ), .CP(n1760), .CDN(
        n1809), .Q(\chip_core/gpio_control_in_1[8]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_1[8]/shift_register[7] ), .CP(
        \chip_core/gpio_clock_1_shifted[0] ), .CDN(n1809), .Q(
        \chip_core/gpio_control_in_1[8]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_1[8]/shift_register[8] ), .CP(
        \chip_core/gpio_clock_1_shifted[0] ), .CDN(n1809), .Q(
        \chip_core/gpio_control_in_1[8]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_1[8]/shift_register[9] ), .CP(n1777), .CDN(
        n1809), .Q(\chip_core/gpio_control_in_1[8]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_1[8]/shift_register[10] ), .CP(n1760), 
        .CDN(n1809), .Q(\chip_core/gpio_control_in_1[8]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[8]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_1[8]/shift_register[11] ), .CP(n1777), 
        .CDN(n1809), .Q(\chip_core/gpio_control_in_1[8]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[9]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_1_shifted [17]), .CP(n1760), .CDN(n1809), 
        .Q(\chip_core/gpio_control_in_1[9]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[9]/shift_register[0] ), .CP(
        \chip_core/gpio_clock_1_shifted[0] ), .CDN(n1809), .Q(
        \chip_core/gpio_control_in_1[9]/shift_register[1] ) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[9]/shift_register[1] ), .CP(
        \chip_core/gpio_clock_1_shifted[0] ), .CDN(n1809), .Q(
        \chip_core/gpio_control_in_1[9]/shift_register[2] ) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_1[9]/shift_register[2] ), .CP(n1777), .CDN(
        n1809), .Q(\chip_core/gpio_control_in_1[9]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_1[9]/shift_register[3] ), .CP(n1760), .CDN(
        n1806), .Q(\chip_core/gpio_control_in_1[9]/shift_register[4] ) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_1[9]/shift_register[4] ), .CP(
        \chip_core/gpio_clock_1_shifted[0] ), .CDN(n1832), .Q(
        \chip_core/gpio_control_in_1[9]/shift_register[5] ) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_1[9]/shift_register[5] ), .CP(n1777), .CDN(
        n1834), .Q(\chip_core/gpio_control_in_1[9]/shift_register[6] ) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_1[9]/shift_register[6] ), .CP(n1777), .CDN(
        n1837), .Q(\chip_core/gpio_control_in_1[9]/shift_register[7] ) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_1[9]/shift_register[7] ), .CP(n1760), .CDN(
        n1827), .Q(\chip_core/gpio_control_in_1[9]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_1[9]/shift_register[8] ), .CP(
        \chip_core/gpio_clock_1_shifted[0] ), .CDN(n1801), .Q(
        \chip_core/gpio_control_in_1[9]/shift_register[9] ) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_1[9]/shift_register[9] ), .CP(n1777), .CDN(
        n1802), .Q(\chip_core/gpio_control_in_1[9]/shift_register[10] ) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_1[9]/shift_register[10] ), .CP(n1777), 
        .CDN(n1803), .Q(\chip_core/gpio_control_in_1[9]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[9]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_1[9]/shift_register[11] ), .CP(n1777), 
        .CDN(n1821), .Q(\chip_core/gpio_control_in_1[9]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[10]/shift_register_reg[0]  ( .D(
        \chip_core/gpio_serial_link_1_shifted [18]), .CP(n1760), .CDN(n1808), 
        .Q(\chip_core/gpio_control_in_1[10]/shift_register[0] ) );
  dfcrq1 \chip_core/gpio_control_in_1[10]/shift_register_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[10]/shift_register[0] ), .CP(n1777), 
        .CDN(n1808), .Q(\chip_core/gpio_control_in_1[10]/shift_register[1] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[10]/shift_register_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[10]/shift_register[1] ), .CP(n1777), 
        .CDN(n1808), .Q(\chip_core/gpio_control_in_1[10]/shift_register[2] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[10]/shift_register_reg[3]  ( .D(
        \chip_core/gpio_control_in_1[10]/shift_register[2] ), .CP(
        \chip_core/gpio_clock_1_shifted[0] ), .CDN(n1808), .Q(
        \chip_core/gpio_control_in_1[10]/shift_register[3] ) );
  dfcrq1 \chip_core/gpio_control_in_1[10]/shift_register_reg[4]  ( .D(
        \chip_core/gpio_control_in_1[10]/shift_register[3] ), .CP(n1777), 
        .CDN(n1808), .Q(\chip_core/gpio_control_in_1[10]/shift_register[4] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[10]/shift_register_reg[5]  ( .D(
        \chip_core/gpio_control_in_1[10]/shift_register[4] ), .CP(n1777), 
        .CDN(n1808), .Q(\chip_core/gpio_control_in_1[10]/shift_register[5] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[10]/shift_register_reg[6]  ( .D(
        \chip_core/gpio_control_in_1[10]/shift_register[5] ), .CP(n1777), 
        .CDN(n1808), .Q(\chip_core/gpio_control_in_1[10]/shift_register[6] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[10]/shift_register_reg[7]  ( .D(
        \chip_core/gpio_control_in_1[10]/shift_register[6] ), .CP(n1760), 
        .CDN(n1808), .Q(\chip_core/gpio_control_in_1[10]/shift_register[7] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[10]/shift_register_reg[8]  ( .D(
        \chip_core/gpio_control_in_1[10]/shift_register[7] ), .CP(
        \chip_core/gpio_clock_1_shifted[0] ), .CDN(n1808), .Q(
        \chip_core/gpio_control_in_1[10]/shift_register[8] ) );
  dfcrq1 \chip_core/gpio_control_in_1[10]/shift_register_reg[9]  ( .D(
        \chip_core/gpio_control_in_1[10]/shift_register[8] ), .CP(n1760), 
        .CDN(n1808), .Q(\chip_core/gpio_control_in_1[10]/shift_register[9] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[10]/shift_register_reg[10]  ( .D(
        \chip_core/gpio_control_in_1[10]/shift_register[9] ), .CP(n1760), 
        .CDN(n1807), .Q(\chip_core/gpio_control_in_1[10]/shift_register[10] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[10]/shift_register_reg[11]  ( .D(
        \chip_core/gpio_control_in_1[10]/shift_register[10] ), .CP(n1760), 
        .CDN(n1807), .Q(\chip_core/gpio_control_in_1[10]/shift_register[11] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[10]/shift_register_reg[12]  ( .D(
        \chip_core/gpio_control_in_1[10]/shift_register[11] ), .CP(n1760), 
        .CDN(n1807), .Q(\chip_core/gpio_control_in_1[10]/shift_register[12] )
         );
  dfcrq1 \chip_core/gpio_control_in_1[10]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[10]/shift_register[12] ), .CP(n1843), 
        .CDN(n1807), .Q(mprj_io_dm[56]) );
  dfcrq1 \chip_core/gpio_control_in_1[10]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[10]/shift_register[11] ), .CP(n1844), 
        .CDN(n1807), .Q(mprj_io_dm[55]) );
  dfcrq1 \chip_core/gpio_control_in_1[10]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_1[10]/shift_register[3] ), .CP(n1847), 
        .CDN(n1807), .Q(mprj_io_inp_dis[18]) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[9]/shift_register[12] ), .CP(n1847), 
        .CDN(n1807), .Q(mprj_io_dm[53]) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[9]/shift_register[11] ), .CP(n1847), 
        .CDN(n1807), .Q(mprj_io_dm[52]) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_1[9]/shift_register[3] ), .CP(n1847), .CDN(
        n1807), .Q(mprj_io_inp_dis[17]) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[8]/shift_register[12] ), .CP(n1847), 
        .CDN(n1807), .Q(mprj_io_dm[50]) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[8]/shift_register[11] ), .CP(n1847), 
        .CDN(n1839), .Q(mprj_io_dm[49]) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_1[8]/shift_register[3] ), .CP(n1847), .CDN(
        n1834), .Q(mprj_io_inp_dis[16]) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[7]/shift_register[12] ), .CP(n1847), 
        .CDN(n1833), .Q(mprj_io_dm[47]) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[7]/shift_register[11] ), .CP(n1853), 
        .CDN(n1839), .Q(mprj_io_dm[46]) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_1[7]/shift_register[3] ), .CP(n1848), .CDN(
        n1834), .Q(mprj_io_inp_dis[15]) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[6]/shift_register[12] ), .CP(n1853), 
        .CDN(\chip_core/gpio_resetn_1_shifted[0] ), .Q(mprj_io_dm[44]) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[6]/shift_register[11] ), .CP(n1848), 
        .CDN(n1839), .Q(mprj_io_dm[43]) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_1[6]/shift_register[3] ), .CP(n1853), .CDN(
        n1834), .Q(mprj_io_inp_dis[14]) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[5]/shift_register[12] ), .CP(n1848), 
        .CDN(n1826), .Q(mprj_io_dm[41]) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[5]/shift_register[11] ), .CP(n1853), 
        .CDN(n1839), .Q(mprj_io_dm[40]) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_1[5]/shift_register[3] ), .CP(n1848), .CDN(
        n1834), .Q(mprj_io_inp_dis[13]) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[4]/shift_register[12] ), .CP(n1848), 
        .CDN(n1834), .Q(mprj_io_dm[38]) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[4]/shift_register[11] ), .CP(n1848), 
        .CDN(n1832), .Q(mprj_io_dm[37]) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_1[4]/shift_register[3] ), .CP(n1848), .CDN(
        n1839), .Q(mprj_io_inp_dis[12]) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[3]/shift_register[12] ), .CP(n1848), 
        .CDN(n1822), .Q(mprj_io_dm[35]) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[3]/shift_register[11] ), .CP(n1848), 
        .CDN(n1834), .Q(mprj_io_dm[34]) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_1[3]/shift_register[3] ), .CP(n1848), .CDN(
        n1839), .Q(mprj_io_inp_dis[11]) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[2]/shift_register[12] ), .CP(n1848), 
        .CDN(n1834), .Q(mprj_io_dm[32]) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[2]/shift_register[11] ), .CP(n1848), 
        .CDN(n1807), .Q(mprj_io_dm[31]) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_1[2]/shift_register[3] ), .CP(n1852), .CDN(
        n1839), .Q(mprj_io_inp_dis[10]) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[1]/shift_register[12] ), .CP(n1854), 
        .CDN(n1834), .Q(mprj_io_dm[29]) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[1]/shift_register[11] ), .CP(n1852), 
        .CDN(n1834), .Q(mprj_io_dm[28]) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_1[1]/shift_register[3] ), .CP(n1843), .CDN(
        n1808), .Q(mprj_io_inp_dis[9]) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_1[0]/shift_register[12] ), .CP(n1854), 
        .CDN(n1839), .Q(mprj_io_dm[26]) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_1[0]/shift_register[11] ), .CP(n1845), 
        .CDN(n1834), .Q(mprj_io_dm[25]) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_1[0]/shift_register[3] ), .CP(n1852), .CDN(
        n1828), .Q(mprj_io_inp_dis[8]) );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_1a[5]/shift_register[12] ), .CP(n1852), 
        .CDN(n1800), .Q(mprj_io_dm[23]) );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_1a[5]/shift_register[11] ), .CP(n1849), 
        .CDN(n1798), .Q(mprj_io_dm[22]) );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_1a[5]/shift_register[3] ), .CP(n1849), 
        .CDN(n1799), .Q(mprj_io_inp_dis[7]) );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_1a[4]/shift_register[12] ), .CP(n1849), 
        .CDN(n1839), .Q(mprj_io_dm[20]) );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_1a[4]/shift_register[11] ), .CP(n1849), 
        .CDN(n1841), .Q(mprj_io_dm[19]) );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_1a[4]/shift_register[3] ), .CP(n1849), 
        .CDN(n1827), .Q(mprj_io_inp_dis[6]) );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_1a[3]/shift_register[12] ), .CP(n1849), 
        .CDN(n1826), .Q(mprj_io_dm[17]) );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_1a[3]/shift_register[11] ), .CP(n1849), 
        .CDN(n1841), .Q(mprj_io_dm[16]) );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_1a[3]/shift_register[3] ), .CP(n1849), 
        .CDN(n1837), .Q(mprj_io_inp_dis[5]) );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_1a[2]/shift_register[12] ), .CP(n1852), 
        .CDN(\chip_core/gpio_resetn_1_shifted[0] ), .Q(mprj_io_dm[14]) );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_1a[2]/shift_register[11] ), .CP(n1853), 
        .CDN(n1841), .Q(mprj_io_dm[13]) );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_1a[2]/shift_register[3] ), .CP(n1854), 
        .CDN(n1826), .Q(mprj_io_inp_dis[4]) );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_1a[1]/shift_register[12] ), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(n1832), .Q(mprj_io_dm[11])
         );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/gpio_dm_reg[0]  ( .D(
        \chip_core/gpio_control_in_1a[1]/shift_register[10] ), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(n1841), .Q(mprj_io_dm[9]) );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_1a[1]/shift_register[3] ), .CP(n1854), 
        .CDN(n1820), .Q(mprj_io_inp_dis[3]) );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/gpio_outenb_reg  ( .D(
        \chip_core/gpio_control_in_1a[1]/shift_register[1] ), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(
        \chip_core/gpio_resetn_1_shifted[0] ), .Q(
        \chip_core/gpio_control_in_1a[1]/gpio_outenb ) );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/gpio_dm_reg[2]  ( .D(
        \chip_core/gpio_control_in_1a[0]/shift_register[12] ), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(
        \chip_core/gpio_resetn_1_shifted[0] ), .Q(mprj_io_dm[8]) );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/gpio_dm_reg[1]  ( .D(
        \chip_core/gpio_control_in_1a[0]/shift_register[11] ), .CP(n1850), 
        .CDN(n1841), .Q(mprj_io_dm[7]) );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_in_1a[0]/shift_register[3] ), .CP(n1850), 
        .CDN(n1831), .Q(mprj_io_inp_dis[2]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/gpio_dm_reg[0]  ( .D(
        \chip_core/gpio_control_bidir_1[1]/shift_register[10] ), .CP(n1850), 
        .CDN(n1826), .Q(mprj_io_dm[3]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/gpio_inenb_reg  ( .D(
        \chip_core/gpio_control_bidir_1[1]/shift_register[3] ), .CP(n1850), 
        .CDN(n1842), .Q(mprj_io_inp_dis[1]) );
  dfcrq1 \chip_core/pll/pll_control/tval_reg[2]  ( .D(n1056), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1728), .Q(
        \chip_core/pll/pll_control/tint [0]) );
  dfcrq1 \chip_core/pll/pll_control/oscbuf_reg[0]  ( .D(clock_core), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1728), .Q(
        \chip_core/pll/pll_control/oscbuf [0]) );
  dfcrq1 \chip_core/pll/pll_control/oscbuf_reg[1]  ( .D(
        \chip_core/pll/pll_control/oscbuf [0]), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1728), .Q(
        \chip_core/pll/pll_control/oscbuf [1]) );
  dfcrq1 \chip_core/pll/pll_control/oscbuf_reg[2]  ( .D(
        \chip_core/pll/pll_control/oscbuf [1]), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1728), .Q(
        \chip_core/pll/pll_control/oscbuf [2]) );
  dfcrq1 \chip_core/pll/pll_control/prep_reg[0]  ( .D(n1071), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1728), .Q(
        \chip_core/pll/pll_control/prep [0]) );
  dfcrq1 \chip_core/pll/pll_control/count0_reg[1]  ( .D(n1068), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1728), .Q(
        \chip_core/pll/pll_control/count0 [1]) );
  dfcrq1 \chip_core/pll/pll_control/count0_reg[0]  ( .D(n1067), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1728), .Q(
        \chip_core/pll/pll_control/count0 [0]) );
  dfcrq1 \chip_core/pll/pll_control/count0_reg[2]  ( .D(n1066), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1728), .Q(
        \chip_core/pll/pll_control/count0 [2]) );
  dfcrq1 \chip_core/pll/pll_control/count0_reg[3]  ( .D(n1065), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1728), .Q(
        \chip_core/pll/pll_control/count0 [3]) );
  dfcrq1 \chip_core/pll/pll_control/count0_reg[4]  ( .D(n1064), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1728), .Q(
        \chip_core/pll/pll_control/count0 [4]) );
  dfcrq1 \chip_core/pll/pll_control/count1_reg[0]  ( .D(n1063), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1728), .Q(
        \chip_core/pll/pll_control/count1 [0]) );
  dfcrq1 \chip_core/pll/pll_control/count1_reg[4]  ( .D(n1062), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1728), .Q(
        \chip_core/pll/pll_control/count1 [4]) );
  dfcrq1 \chip_core/pll/pll_control/count1_reg[3]  ( .D(n1061), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1728), .Q(
        \chip_core/pll/pll_control/count1 [3]) );
  dfcrq1 \chip_core/pll/pll_control/count1_reg[2]  ( .D(n1060), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1728), .Q(
        \chip_core/pll/pll_control/count1 [2]) );
  dfcrq1 \chip_core/pll/pll_control/count1_reg[1]  ( .D(n1059), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1728), .Q(
        \chip_core/pll/pll_control/count1 [1]) );
  dfcrq1 \chip_core/pll/pll_control/prep_reg[1]  ( .D(n1070), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1728), .Q(
        \chip_core/pll/pll_control/prep [1]) );
  dfcrq1 \chip_core/pll/pll_control/prep_reg[2]  ( .D(n1069), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1136), .Q(
        \chip_core/pll/pll_control/prep [2]) );
  dfcrq1 \chip_core/pll/pll_control/tval_reg[6]  ( .D(n1052), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1136), .Q(
        \chip_core/pll/pll_control/tint [4]) );
  dfcrq1 \chip_core/pll/pll_control/tval_reg[5]  ( .D(n1053), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1136), .Q(
        \chip_core/pll/pll_control/tint [3]) );
  dfcrq1 \chip_core/pll/pll_control/tval_reg[4]  ( .D(n1054), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1136), .Q(
        \chip_core/pll/pll_control/tint [2]) );
  dfcrq1 \chip_core/pll/pll_control/tval_reg[3]  ( .D(n1055), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1136), .Q(
        \chip_core/pll/pll_control/tint [1]) );
  dfcrq1 \chip_core/pll/pll_control/tval_reg[1]  ( .D(n1057), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1136), .Q(
        \chip_core/pll/pll_control/tval [1]) );
  dfcrq1 \chip_core/pll/pll_control/tval_reg[0]  ( .D(n1058), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1136), .Q(
        \chip_core/pll/pll_control/tval [0]) );
  dfcrq1 \chip_core/clock_ctrl/divider2/syncNp_reg[2]  ( .D(
        \chip_core/spi_pll90_sel [2]), .CP(
        \chip_core/clock_ctrl/pll_clk90_divided ), .CDN(n1725), .Q(
        \chip_core/clock_ctrl/divider2/syncNp [2]) );
  dfcrq1 \chip_core/clock_ctrl/divider2/syncN_reg[2]  ( .D(
        \chip_core/clock_ctrl/divider2/syncNp [2]), .CP(
        \chip_core/clock_ctrl/pll_clk90_divided ), .CDN(n1724), .Q(
        \chip_core/clock_ctrl/divider2/syncN [2]) );
  dfcrq1 \chip_core/clock_ctrl/divider2/syncNp_reg[0]  ( .D(
        \chip_core/spi_pll90_sel [0]), .CP(
        \chip_core/clock_ctrl/pll_clk90_divided ), .CDN(n1724), .Q(
        \chip_core/clock_ctrl/divider2/syncNp [0]) );
  dfcrq1 \chip_core/clock_ctrl/divider2/syncN_reg[0]  ( .D(
        \chip_core/clock_ctrl/divider2/syncNp [0]), .CP(
        \chip_core/clock_ctrl/pll_clk90_divided ), .CDN(n1724), .Q(
        \chip_core/clock_ctrl/divider2/syncN [0]) );
  dfcrq1 \chip_core/clock_ctrl/divider2/odd_0/counter_reg[0]  ( .D(n936), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1724), .Q(
        \chip_core/clock_ctrl/divider2/odd_0/counter [0]) );
  dfcrq1 \chip_core/clock_ctrl/divider2/odd_0/counter_reg[2]  ( .D(n934), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1724), .Q(
        \chip_core/clock_ctrl/divider2/odd_0/counter [2]) );
  dfcrq1 \chip_core/clock_ctrl/divider/syncNp_reg[0]  ( .D(
        \chip_core/spi_pll_sel [0]), .CP(
        \chip_core/clock_ctrl/pll_clk_divided ), .CDN(n1724), .Q(
        \chip_core/clock_ctrl/divider/syncNp [0]) );
  dfcrq1 \chip_core/clock_ctrl/divider/syncN_reg[0]  ( .D(
        \chip_core/clock_ctrl/divider/syncNp [0]), .CP(
        \chip_core/clock_ctrl/pll_clk_divided ), .CDN(n1724), .Q(
        \chip_core/clock_ctrl/divider/syncN [0]) );
  dfcrq1 \chip_core/clock_ctrl/divider/syncNp_reg[2]  ( .D(
        \chip_core/spi_pll_sel [2]), .CP(
        \chip_core/clock_ctrl/pll_clk_divided ), .CDN(n1724), .Q(
        \chip_core/clock_ctrl/divider/syncNp [2]) );
  dfcrq1 \chip_core/clock_ctrl/divider/syncN_reg[2]  ( .D(
        \chip_core/clock_ctrl/divider/syncNp [2]), .CP(
        \chip_core/clock_ctrl/pll_clk_divided ), .CDN(n1724), .Q(
        \chip_core/clock_ctrl/divider/syncN [2]) );
  dfcrq1 \chip_core/clock_ctrl/divider/odd_0/counter_reg[0]  ( .D(n1036), .CP(
        \chip_core/pll/ringosc/d [6]), .CDN(n799), .Q(
        \chip_core/clock_ctrl/divider/odd_0/counter [0]) );
  dfcrq1 \chip_core/clock_ctrl/divider/odd_0/counter_reg[2]  ( .D(n1035), .CP(
        \chip_core/pll/ringosc/d [6]), .CDN(n1725), .Q(
        \chip_core/clock_ctrl/divider/odd_0/counter [2]) );
  dfcrq1 \chip_core/clock_ctrl/use_pll_first_reg  ( .D(n1073), .CP(
        \chip_core/pll/ringosc/d [6]), .CDN(n1726), .Q(
        \chip_core/clock_ctrl/use_pll_first ) );
  dfcrq1 \chip_core/clock_ctrl/use_pll_second_reg  ( .D(
        \chip_core/clock_ctrl/use_pll_first ), .CP(
        \chip_core/pll/ringosc/d [6]), .CDN(n1724), .Q(
        \chip_core/clock_ctrl/use_pll_second ) );
  dfcrq1 \chip_core/clock_ctrl/ext_clk_syncd_reg  ( .D(
        \chip_core/clock_ctrl/ext_clk_syncd_pre ), .CP(
        \chip_core/pll/ringosc/d [6]), .CDN(n1725), .Q(
        \chip_core/clock_ctrl/ext_clk_syncd ) );
  dfcrq1 \chip_core/mprj/debug/wbs_ack_o_reg  ( .D(\chip_core/mprj/debug/N133 ), .CP(n1716), .CDN(n1722), .Q(\chip_core/mprj/wbs_ack_o_debug ) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[31]  ( .D(n1032), .CP(n1714), 
        .CDN(n1134), .Q(\chip_core/mprj/debug/debug_reg_2 [31]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[24]  ( .D(n1031), .CP(n1717), 
        .CDN(n1134), .Q(\chip_core/mprj/debug/debug_reg_2 [24]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[25]  ( .D(n1030), .CP(
        \chip_core/caravel_clk ), .CDN(n1134), .Q(
        \chip_core/mprj/debug/debug_reg_2 [25]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[26]  ( .D(n1029), .CP(
        \chip_core/caravel_clk ), .CDN(n1134), .Q(
        \chip_core/mprj/debug/debug_reg_2 [26]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[27]  ( .D(n1028), .CP(n1713), 
        .CDN(n1134), .Q(\chip_core/mprj/debug/debug_reg_2 [27]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[28]  ( .D(n1027), .CP(n1714), 
        .CDN(n1135), .Q(\chip_core/mprj/debug/debug_reg_2 [28]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[29]  ( .D(n1026), .CP(n1715), 
        .CDN(n1135), .Q(\chip_core/mprj/debug/debug_reg_2 [29]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[30]  ( .D(n1025), .CP(n1716), 
        .CDN(n1135), .Q(\chip_core/mprj/debug/debug_reg_2 [30]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[7]  ( .D(n1024), .CP(n1717), 
        .CDN(n1719), .Q(\chip_core/mprj/debug/debug_reg_1 [7]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[0]  ( .D(n1023), .CP(n1717), 
        .CDN(n1719), .Q(\chip_core/mprj/debug/debug_reg_1 [0]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[1]  ( .D(n1022), .CP(
        \chip_core/caravel_clk ), .CDN(n1719), .Q(
        \chip_core/mprj/debug/debug_reg_1 [1]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[2]  ( .D(n1021), .CP(n1713), 
        .CDN(n1719), .Q(\chip_core/mprj/debug/debug_reg_1 [2]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[3]  ( .D(n1020), .CP(n1714), 
        .CDN(n1719), .Q(\chip_core/mprj/debug/debug_reg_1 [3]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[4]  ( .D(n1019), .CP(n1715), 
        .CDN(n1719), .Q(\chip_core/mprj/debug/debug_reg_1 [4]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[5]  ( .D(n1018), .CP(n1716), 
        .CDN(n1719), .Q(\chip_core/mprj/debug/debug_reg_1 [5]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[6]  ( .D(n1017), .CP(n1717), 
        .CDN(n1719), .Q(\chip_core/mprj/debug/debug_reg_1 [6]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[15]  ( .D(n1016), .CP(
        \chip_core/caravel_clk ), .CDN(n1719), .Q(
        \chip_core/mprj/debug/debug_reg_1 [15]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[8]  ( .D(n1015), .CP(
        \chip_core/caravel_clk ), .CDN(n1720), .Q(
        \chip_core/mprj/debug/debug_reg_1 [8]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[9]  ( .D(n1014), .CP(n1713), 
        .CDN(n1720), .Q(\chip_core/mprj/debug/debug_reg_1 [9]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[10]  ( .D(n1013), .CP(n1714), 
        .CDN(n1720), .Q(\chip_core/mprj/debug/debug_reg_1 [10]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[11]  ( .D(n1012), .CP(n1715), 
        .CDN(n1720), .Q(\chip_core/mprj/debug/debug_reg_1 [11]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[12]  ( .D(n1011), .CP(n1716), 
        .CDN(n1720), .Q(\chip_core/mprj/debug/debug_reg_1 [12]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[13]  ( .D(n1010), .CP(n1718), 
        .CDN(n1720), .Q(\chip_core/mprj/debug/debug_reg_1 [13]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[14]  ( .D(n1009), .CP(n1713), 
        .CDN(n1720), .Q(\chip_core/mprj/debug/debug_reg_1 [14]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[23]  ( .D(n1008), .CP(
        \chip_core/caravel_clk ), .CDN(n1720), .Q(
        \chip_core/mprj/debug/debug_reg_1 [23]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[16]  ( .D(n1007), .CP(n1713), 
        .CDN(n1720), .Q(\chip_core/mprj/debug/debug_reg_1 [16]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[17]  ( .D(n1006), .CP(n1717), 
        .CDN(n1721), .Q(\chip_core/mprj/debug/debug_reg_1 [17]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[18]  ( .D(n1005), .CP(n1716), 
        .CDN(n1721), .Q(\chip_core/mprj/debug/debug_reg_1 [18]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[19]  ( .D(n1004), .CP(n1715), 
        .CDN(n1721), .Q(\chip_core/mprj/debug/debug_reg_1 [19]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[20]  ( .D(n1003), .CP(n1714), 
        .CDN(n1721), .Q(\chip_core/mprj/debug/debug_reg_1 [20]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[21]  ( .D(n1002), .CP(n1713), 
        .CDN(n1721), .Q(\chip_core/mprj/debug/debug_reg_1 [21]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[22]  ( .D(n1001), .CP(n1715), 
        .CDN(n1721), .Q(\chip_core/mprj/debug/debug_reg_1 [22]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[31]  ( .D(n1000), .CP(
        \chip_core/caravel_clk ), .CDN(n1721), .Q(
        \chip_core/mprj/debug/debug_reg_1 [31]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[24]  ( .D(n999), .CP(n1714), 
        .CDN(n1721), .Q(\chip_core/mprj/debug/debug_reg_1 [24]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[25]  ( .D(n998), .CP(n1717), 
        .CDN(n1721), .Q(\chip_core/mprj/debug/debug_reg_1 [25]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[26]  ( .D(n997), .CP(n1716), 
        .CDN(n1723), .Q(\chip_core/mprj/debug/debug_reg_1 [26]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[27]  ( .D(n996), .CP(n1715), 
        .CDN(n1134), .Q(\chip_core/mprj/debug/debug_reg_1 [27]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[28]  ( .D(n995), .CP(n1714), 
        .CDN(n1135), .Q(\chip_core/mprj/debug/debug_reg_1 [28]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[29]  ( .D(n994), .CP(n1713), 
        .CDN(n1723), .Q(\chip_core/mprj/debug/debug_reg_1 [29]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_1_reg[30]  ( .D(n993), .CP(n1713), 
        .CDN(n1134), .Q(\chip_core/mprj/debug/debug_reg_1 [30]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[7]  ( .D(n992), .CP(n1713), 
        .CDN(n1135), .Q(\chip_core/mprj/debug/debug_reg_2 [7]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[0]  ( .D(n991), .CP(n1713), 
        .CDN(n1723), .Q(\chip_core/mprj/debug/debug_reg_2 [0]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[1]  ( .D(n990), .CP(n1713), 
        .CDN(n1134), .Q(\chip_core/mprj/debug/debug_reg_2 [1]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[2]  ( .D(n989), .CP(n1713), 
        .CDN(n1135), .Q(\chip_core/mprj/debug/debug_reg_2 [2]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[3]  ( .D(n988), .CP(n1713), 
        .CDN(n1134), .Q(\chip_core/mprj/debug/debug_reg_2 [3]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[4]  ( .D(n987), .CP(n1713), 
        .CDN(n1134), .Q(\chip_core/mprj/debug/debug_reg_2 [4]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[5]  ( .D(n986), .CP(n1713), 
        .CDN(n1723), .Q(\chip_core/mprj/debug/debug_reg_2 [5]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[6]  ( .D(n985), .CP(n1714), 
        .CDN(n1135), .Q(\chip_core/mprj/debug/debug_reg_2 [6]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[15]  ( .D(n984), .CP(n1714), 
        .CDN(n1723), .Q(\chip_core/mprj/debug/debug_reg_2 [15]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[8]  ( .D(n983), .CP(n1714), 
        .CDN(n1134), .Q(\chip_core/mprj/debug/debug_reg_2 [8]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[9]  ( .D(n982), .CP(n1714), 
        .CDN(n1723), .Q(\chip_core/mprj/debug/debug_reg_2 [9]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[10]  ( .D(n981), .CP(n1714), 
        .CDN(n1134), .Q(\chip_core/mprj/debug/debug_reg_2 [10]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[11]  ( .D(n980), .CP(n1714), 
        .CDN(n1135), .Q(\chip_core/mprj/debug/debug_reg_2 [11]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[12]  ( .D(n979), .CP(n1714), 
        .CDN(n1723), .Q(\chip_core/mprj/debug/debug_reg_2 [12]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[13]  ( .D(n978), .CP(n1715), 
        .CDN(n1135), .Q(\chip_core/mprj/debug/debug_reg_2 [13]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[14]  ( .D(n977), .CP(n1715), 
        .CDN(n1135), .Q(\chip_core/mprj/debug/debug_reg_2 [14]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[17]  ( .D(n976), .CP(n1715), 
        .CDN(n1721), .Q(\chip_core/mprj/debug/debug_reg_2 [17]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[16]  ( .D(n975), .CP(n1715), 
        .CDN(n1720), .Q(\chip_core/mprj/debug/debug_reg_2 [16]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[18]  ( .D(n974), .CP(n1715), 
        .CDN(n1135), .Q(\chip_core/mprj/debug/debug_reg_2 [18]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[19]  ( .D(n973), .CP(n1715), 
        .CDN(n1135), .Q(\chip_core/mprj/debug/debug_reg_2 [19]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[20]  ( .D(n972), .CP(n1715), 
        .CDN(n1134), .Q(\chip_core/mprj/debug/debug_reg_2 [20]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[21]  ( .D(n971), .CP(n1715), 
        .CDN(n1135), .Q(\chip_core/mprj/debug/debug_reg_2 [21]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[22]  ( .D(n970), .CP(n1716), 
        .CDN(n1722), .Q(\chip_core/mprj/debug/debug_reg_2 [22]) );
  dfcrq1 \chip_core/mprj/debug/debug_reg_2_reg[23]  ( .D(n969), .CP(n1716), 
        .CDN(n1722), .Q(\chip_core/mprj/debug/debug_reg_2 [23]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[0]  ( .D(n968), .CP(n1716), .CDN(
        n1722), .Q(\chip_core/mprj/wbs_dat_o_debug [0]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[1]  ( .D(n967), .CP(n1716), .CDN(
        n1722), .Q(\chip_core/mprj/wbs_dat_o_debug [1]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[2]  ( .D(n966), .CP(n1716), .CDN(
        n1722), .Q(\chip_core/mprj/wbs_dat_o_debug [2]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[3]  ( .D(n965), .CP(n1716), .CDN(
        n1722), .Q(\chip_core/mprj/wbs_dat_o_debug [3]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[4]  ( .D(n964), .CP(n1716), .CDN(
        n1722), .Q(\chip_core/mprj/wbs_dat_o_debug [4]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[5]  ( .D(n963), .CP(n1716), .CDN(
        n1722), .Q(\chip_core/mprj/wbs_dat_o_debug [5]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[6]  ( .D(n962), .CP(n1717), .CDN(
        n1722), .Q(\chip_core/mprj/wbs_dat_o_debug [6]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[7]  ( .D(n961), .CP(n1717), .CDN(
        n1719), .Q(\chip_core/mprj/wbs_dat_o_debug [7]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[8]  ( .D(n960), .CP(n1717), .CDN(
        n1134), .Q(\chip_core/mprj/wbs_dat_o_debug [8]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[9]  ( .D(n959), .CP(n1717), .CDN(
        n1722), .Q(\chip_core/mprj/wbs_dat_o_debug [9]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[10]  ( .D(n958), .CP(n1717), 
        .CDN(n1721), .Q(\chip_core/mprj/wbs_dat_o_debug [10]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[11]  ( .D(n957), .CP(n1717), 
        .CDN(n1720), .Q(\chip_core/mprj/wbs_dat_o_debug [11]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[12]  ( .D(n956), .CP(n1717), 
        .CDN(n1719), .Q(\chip_core/mprj/wbs_dat_o_debug [12]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[13]  ( .D(n955), .CP(n1717), 
        .CDN(n1722), .Q(\chip_core/mprj/wbs_dat_o_debug [13]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[14]  ( .D(n954), .CP(n1717), 
        .CDN(n1721), .Q(\chip_core/mprj/wbs_dat_o_debug [14]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[15]  ( .D(n953), .CP(n1716), 
        .CDN(n1720), .Q(\chip_core/mprj/wbs_dat_o_debug [15]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[16]  ( .D(n952), .CP(n1715), 
        .CDN(n1722), .Q(\chip_core/mprj/wbs_dat_o_debug [16]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[17]  ( .D(n951), .CP(n1714), 
        .CDN(n1721), .Q(\chip_core/mprj/wbs_dat_o_debug [17]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[18]  ( .D(n950), .CP(n1713), 
        .CDN(n1720), .Q(\chip_core/mprj/wbs_dat_o_debug [18]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[19]  ( .D(n949), .CP(
        \chip_core/caravel_clk ), .CDN(n1719), .Q(
        \chip_core/mprj/wbs_dat_o_debug [19]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[20]  ( .D(n948), .CP(
        \chip_core/caravel_clk ), .CDN(n1719), .Q(
        \chip_core/mprj/wbs_dat_o_debug [20]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[21]  ( .D(n947), .CP(n1714), 
        .CDN(n1722), .Q(\chip_core/mprj/wbs_dat_o_debug [21]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[22]  ( .D(n946), .CP(n1713), 
        .CDN(n1721), .Q(\chip_core/mprj/wbs_dat_o_debug [22]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[23]  ( .D(n945), .CP(n1714), 
        .CDN(n1720), .Q(\chip_core/mprj/wbs_dat_o_debug [23]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[24]  ( .D(n944), .CP(n1715), 
        .CDN(n1719), .Q(\chip_core/mprj/wbs_dat_o_debug [24]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[25]  ( .D(n943), .CP(n1716), 
        .CDN(n1723), .Q(\chip_core/mprj/wbs_dat_o_debug [25]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[26]  ( .D(n942), .CP(n1715), 
        .CDN(n1723), .Q(\chip_core/mprj/wbs_dat_o_debug [26]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[27]  ( .D(n941), .CP(n1717), 
        .CDN(n1723), .Q(\chip_core/mprj/wbs_dat_o_debug [27]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[28]  ( .D(n940), .CP(
        \chip_core/caravel_clk ), .CDN(n1723), .Q(
        \chip_core/mprj/wbs_dat_o_debug [28]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[29]  ( .D(n939), .CP(
        \chip_core/caravel_clk ), .CDN(n1723), .Q(
        \chip_core/mprj/wbs_dat_o_debug [29]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[30]  ( .D(n938), .CP(n1717), 
        .CDN(n1723), .Q(\chip_core/mprj/wbs_dat_o_debug [30]) );
  dfcrq1 \chip_core/mprj/debug/wbs_dat_o_reg[31]  ( .D(n937), .CP(n1716), 
        .CDN(n1723), .Q(\chip_core/mprj/wbs_dat_o_debug [31]) );
  dfcfq1 \chip_core/gpio_control_bidir_2[2]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_bidir_2[2]/shift_register[12] ), .CPN(n1759), 
        .CDN(n1842), .Q(\chip_core/gpio_serial_link_2_shifted [17]) );
  dfcfq1 \chip_core/gpio_control_bidir_2[1]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_bidir_2[1]/shift_register[12] ), .CPN(n1759), 
        .CDN(n1842), .Q(\chip_core/gpio_serial_link_2_shifted [16]) );
  dfcfq1 \chip_core/gpio_control_bidir_2[0]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_bidir_2[0]/shift_register[12] ), .CPN(n1759), 
        .CDN(n1837), .Q(\chip_core/gpio_serial_link_2_shifted [15]) );
  dfcfq1 \chip_core/gpio_control_in_2[15]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_2[15]/shift_register[12] ), .CPN(n1759), 
        .CDN(n1842), .Q(\chip_core/gpio_serial_link_2_shifted [14]) );
  dfcfq1 \chip_core/gpio_control_in_2[14]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_2[14]/shift_register[12] ), .CPN(n1759), 
        .CDN(n1836), .Q(\chip_core/gpio_serial_link_2_shifted [13]) );
  dfcfq1 \chip_core/gpio_control_in_2[13]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_2[13]/shift_register[12] ), .CPN(n1759), 
        .CDN(n1836), .Q(\chip_core/gpio_serial_link_2_shifted [12]) );
  dfcfq1 \chip_core/gpio_control_in_2[12]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_2[12]/shift_register[12] ), .CPN(n1759), 
        .CDN(n1842), .Q(\chip_core/gpio_serial_link_2_shifted [11]) );
  dfcfq1 \chip_core/gpio_control_in_2[11]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_2[11]/shift_register[12] ), .CPN(n1759), 
        .CDN(n1837), .Q(\chip_core/gpio_serial_link_2_shifted [10]) );
  dfcfq1 \chip_core/gpio_control_in_2[10]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_2[10]/shift_register[12] ), .CPN(n1759), 
        .CDN(n1842), .Q(\chip_core/gpio_serial_link_2_shifted [9]) );
  dfcfq1 \chip_core/gpio_control_in_2[9]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_2[9]/shift_register[12] ), .CPN(n1776), 
        .CDN(n1788), .Q(\chip_core/gpio_serial_link_2_shifted [8]) );
  dfcfq1 \chip_core/gpio_control_in_2[8]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_2[8]/shift_register[12] ), .CPN(n1759), 
        .CDN(n1788), .Q(\chip_core/gpio_serial_link_2_shifted [7]) );
  dfcfq1 \chip_core/gpio_control_in_2[7]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_2[7]/shift_register[12] ), .CPN(n1776), 
        .CDN(n1788), .Q(\chip_core/gpio_serial_link_2_shifted [6]) );
  dfcfq1 \chip_core/gpio_control_in_2[6]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_2[6]/shift_register[12] ), .CPN(n1759), 
        .CDN(n1788), .Q(\chip_core/gpio_serial_link_2_shifted [5]) );
  dfcfq1 \chip_core/gpio_control_in_2[5]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_2[5]/shift_register[12] ), .CPN(n1776), 
        .CDN(n1788), .Q(\chip_core/gpio_serial_link_2_shifted [4]) );
  dfcfq1 \chip_core/gpio_control_in_2[4]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_2[4]/shift_register[12] ), .CPN(n1759), 
        .CDN(n1788), .Q(\chip_core/gpio_serial_link_2_shifted [3]) );
  dfcfq1 \chip_core/gpio_control_in_2[3]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_2[3]/shift_register[12] ), .CPN(n1776), 
        .CDN(n1788), .Q(\chip_core/gpio_serial_link_2_shifted [2]) );
  dfcfq1 \chip_core/gpio_control_in_2[2]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_2[2]/shift_register[12] ), .CPN(n1776), 
        .CDN(n1788), .Q(\chip_core/gpio_serial_link_2_shifted [1]) );
  dfcfq1 \chip_core/gpio_control_in_2[1]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_2[1]/shift_register[12] ), .CPN(n1759), 
        .CDN(n1788), .Q(\chip_core/gpio_serial_link_2_shifted [0]) );
  dfcfq1 \chip_core/gpio_control_bidir_1[0]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_bidir_1[0]/shift_register[12] ), .CPN(n1759), 
        .CDN(n1788), .Q(\chip_core/gpio_serial_link_1_shifted [1]) );
  dfcfq1 \chip_core/gpio_control_bidir_1[1]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_bidir_1[1]/shift_register[12] ), .CPN(n1776), 
        .CDN(n1817), .Q(\chip_core/gpio_serial_link_1_shifted [2]) );
  dfcfq1 \chip_core/gpio_control_in_1a[0]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_1a[0]/shift_register[12] ), .CPN(n1776), 
        .CDN(n1815), .Q(\chip_core/gpio_serial_link_1_shifted [3]) );
  dfcfq1 \chip_core/gpio_control_in_1a[1]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_1a[1]/shift_register[12] ), .CPN(n1759), 
        .CDN(n1836), .Q(\chip_core/gpio_serial_link_1_shifted [4]) );
  dfcfq1 \chip_core/gpio_control_in_1a[2]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_1a[2]/shift_register[12] ), .CPN(n1776), 
        .CDN(n1811), .Q(\chip_core/gpio_serial_link_1_shifted [5]) );
  dfcfq1 \chip_core/gpio_control_in_1a[3]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_1a[3]/shift_register[12] ), .CPN(n1776), 
        .CDN(n1809), .Q(\chip_core/gpio_serial_link_1_shifted [6]) );
  dfcfq1 \chip_core/gpio_control_in_1a[4]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_1a[4]/shift_register[12] ), .CPN(n1776), 
        .CDN(n1810), .Q(\chip_core/gpio_serial_link_1_shifted [7]) );
  dfcfq1 \chip_core/gpio_control_in_1a[5]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_1a[5]/shift_register[12] ), .CPN(n1776), 
        .CDN(n1837), .Q(\chip_core/gpio_serial_link_1_shifted [8]) );
  dfcfq1 \chip_core/gpio_control_in_1[0]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_1[0]/shift_register[12] ), .CPN(
        \chip_core/gpio_clock_1_shifted[0] ), .CDN(n1805), .Q(
        \chip_core/gpio_serial_link_1_shifted [9]) );
  dfcfq1 \chip_core/gpio_control_in_1[1]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_1[1]/shift_register[12] ), .CPN(n1759), 
        .CDN(n1820), .Q(\chip_core/gpio_serial_link_1_shifted [10]) );
  dfcfq1 \chip_core/gpio_control_in_1[2]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_1[2]/shift_register[12] ), .CPN(n1776), 
        .CDN(n1813), .Q(\chip_core/gpio_serial_link_1_shifted [11]) );
  dfcfq1 \chip_core/gpio_control_in_1[3]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_1[3]/shift_register[12] ), .CPN(n1776), 
        .CDN(n1789), .Q(\chip_core/gpio_serial_link_1_shifted [12]) );
  dfcfq1 \chip_core/gpio_control_in_1[4]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_1[4]/shift_register[12] ), .CPN(n1776), 
        .CDN(n1789), .Q(\chip_core/gpio_serial_link_1_shifted [13]) );
  dfcfq1 \chip_core/gpio_control_in_1[5]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_1[5]/shift_register[12] ), .CPN(n1776), 
        .CDN(n1789), .Q(\chip_core/gpio_serial_link_1_shifted [14]) );
  dfcfq1 \chip_core/gpio_control_in_1[6]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_1[6]/shift_register[12] ), .CPN(n1760), 
        .CDN(n1789), .Q(\chip_core/gpio_serial_link_1_shifted [15]) );
  dfcfq1 \chip_core/gpio_control_in_1[7]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_1[7]/shift_register[12] ), .CPN(n1760), 
        .CDN(n1789), .Q(\chip_core/gpio_serial_link_1_shifted [16]) );
  dfcfq1 \chip_core/gpio_control_in_1[8]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_1[8]/shift_register[12] ), .CPN(n1760), 
        .CDN(n1789), .Q(\chip_core/gpio_serial_link_1_shifted [17]) );
  dfcfq1 \chip_core/gpio_control_in_1[9]/serial_data_out_reg  ( .D(
        \chip_core/gpio_control_in_1[9]/shift_register[12] ), .CPN(n1760), 
        .CDN(n1842), .Q(\chip_core/gpio_serial_link_1_shifted [18]) );
  dfnrq1 \chip_core/clock_ctrl/divider2/odd_0/old_N_reg[2]  ( .D(
        \chip_core/clock_ctrl/divider2/syncN [2]), .CP(
        \chip_core/pll/ringosc/d [0]), .Q(
        \chip_core/clock_ctrl/divider2/odd_0/old_N [2]) );
  dfnrq1 \chip_core/clock_ctrl/divider2/odd_0/old_N_reg[0]  ( .D(
        \chip_core/clock_ctrl/divider2/syncN [0]), .CP(
        \chip_core/pll/ringosc/d [0]), .Q(
        \chip_core/clock_ctrl/divider2/odd_0/old_N [0]) );
  dfnrq1 \chip_core/clock_ctrl/divider2/odd_0/old_N_reg[1]  ( .D(
        \chip_core/clock_ctrl/divider2/syncN [1]), .CP(
        \chip_core/pll/ringosc/d [0]), .Q(
        \chip_core/clock_ctrl/divider2/odd_0/old_N [1]) );
  dfnrq1 \chip_core/clock_ctrl/divider/odd_0/old_N_reg[1]  ( .D(
        \chip_core/clock_ctrl/divider/syncN [1]), .CP(
        \chip_core/pll/ringosc/d [6]), .Q(
        \chip_core/clock_ctrl/divider/odd_0/old_N [1]) );
  dfnrq1 \chip_core/clock_ctrl/divider/odd_0/old_N_reg[0]  ( .D(
        \chip_core/clock_ctrl/divider/syncN [0]), .CP(
        \chip_core/pll/ringosc/d [6]), .Q(
        \chip_core/clock_ctrl/divider/odd_0/old_N [0]) );
  dfnrq1 \chip_core/clock_ctrl/divider/odd_0/old_N_reg[2]  ( .D(
        \chip_core/clock_ctrl/divider/syncN [2]), .CP(
        \chip_core/pll/ringosc/d [6]), .Q(
        \chip_core/clock_ctrl/divider/odd_0/old_N [2]) );
  dfnrq1 \chip_core/clock_ctrl/ext_clk_syncd_pre_reg  ( .D(n1051), .CP(
        \chip_core/pll/ringosc/d [6]), .Q(
        \chip_core/clock_ctrl/ext_clk_syncd_pre ) );
  dfcrn1 \chip_core/clock_ctrl/divider2/even_0/counter_reg[0]  ( .D(n806), 
        .CP(\chip_core/pll/ringosc/d [0]), .CDN(n799), .QN(
        \chip_core/clock_ctrl/divider2/even_0/counter [0]) );
  dfcrn1 \chip_core/clock_ctrl/divider/even_0/counter_reg[0]  ( .D(n805), .CP(
        \chip_core/pll/ringosc/d [6]), .CDN(n1726), .QN(
        \chip_core/clock_ctrl/divider/even_0/counter [0]) );
  dfcrq1 \chip_core/clock_ctrl/divider2/even_0/counter_reg[1]  ( .D(n804), 
        .CP(\chip_core/pll/ringosc/d [0]), .CDN(n1724), .Q(
        \chip_core/clock_ctrl/divider2/even_0/counter [1]) );
  dfcrq1 \chip_core/clock_ctrl/divider2/even_0/counter_reg[2]  ( .D(n803), 
        .CP(\chip_core/pll/ringosc/d [0]), .CDN(n1725), .Q(
        \chip_core/clock_ctrl/divider2/even_0/counter [2]) );
  dfcrq1 \chip_core/clock_ctrl/divider/even_0/counter_reg[1]  ( .D(n802), .CP(
        \chip_core/pll/ringosc/d [6]), .CDN(n1726), .Q(
        \chip_core/clock_ctrl/divider/even_0/counter [1]) );
  dfcrq1 \chip_core/clock_ctrl/divider/even_0/counter_reg[2]  ( .D(n801), .CP(
        \chip_core/pll/ringosc/d [6]), .CDN(n799), .Q(
        \chip_core/clock_ctrl/divider/even_0/counter [2]) );
  dfpfb1 \chip_core/clock_ctrl/divider2/odd_0/initial_begin_reg[1]  ( .D(n1047), .CPN(\chip_core/pll/ringosc/d [0]), .SDN(n1725), .Q(
        \chip_core/clock_ctrl/divider2/odd_0/initial_begin [1]) );
  dfpfb1 \chip_core/clock_ctrl/divider2/odd_0/out_counter2_reg  ( .D(n1045), 
        .CPN(\chip_core/pll/ringosc/d [0]), .SDN(n1725), .Q(
        \chip_core/clock_ctrl/divider2/odd_0/out_counter2 ), .QN(n1711) );
  dfpfb1 \chip_core/clock_ctrl/divider2/odd_0/counter2_reg[1]  ( .D(n1046), 
        .CPN(\chip_core/pll/ringosc/d [0]), .SDN(n1725), .Q(
        \chip_core/clock_ctrl/divider2/odd_0/counter2 [1]) );
  dfpfb1 \chip_core/clock_ctrl/divider/odd_0/out_counter2_reg  ( .D(n1038), 
        .CPN(\chip_core/pll/ringosc/d [6]), .SDN(n1725), .Q(
        \chip_core/clock_ctrl/divider/odd_0/out_counter2 ), .QN(n1712) );
  dfpfb1 \chip_core/clock_ctrl/divider/odd_0/initial_begin_reg[1]  ( .D(n1040), 
        .CPN(\chip_core/pll/ringosc/d [6]), .SDN(n1725), .Q(
        \chip_core/clock_ctrl/divider/odd_0/initial_begin [1]) );
  dfpfb1 \chip_core/clock_ctrl/divider/odd_0/counter2_reg[1]  ( .D(n1039), 
        .CPN(\chip_core/pll/ringosc/d [6]), .SDN(n1725), .Q(
        \chip_core/clock_ctrl/divider/odd_0/counter2 [1]) );
  dfpfb1 \chip_core/clock_ctrl/reset_delay_reg[1]  ( .D(
        \chip_core/clock_ctrl/reset_delay [2]), .CPN(n1718), .SDN(n1725), .Q(
        \chip_core/clock_ctrl/reset_delay [1]) );
  dfpfb1 \chip_core/clock_ctrl/reset_delay_reg[2]  ( .D(1'b0), .CPN(n1718), 
        .SDN(n1725), .Q(\chip_core/clock_ctrl/reset_delay [2]) );
  aoi21d1 U545 ( .B1(n533), .B2(n535), .A(
        \chip_core/clock_ctrl/use_pll_second ), .ZN(n534) );
  oai21d1 U546 ( .B1(\chip_core/clock_ctrl/ext_clk_syncd ), .B2(n535), .A(n534), .ZN(n798) );
  oaim21d1 U547 ( .B1(\chip_core/clock_ctrl/pll_clk_divided ), .B2(
        \chip_core/clock_ctrl/use_pll_second ), .A(n798), .ZN(
        \chip_core/caravel_clk ) );
  oaim21d1 U932 ( .B1(\chip_core/clock_ctrl/pll_clk90_divided ), .B2(
        \chip_core/clock_ctrl/use_pll_second ), .A(n798), .ZN(
        \chip_core/caravel_clk2 ) );
  dfcrq1 \chip_core/clock_ctrl/divider/odd_0/rst_pulse_reg  ( .D(n1037), .CP(
        \chip_core/pll/ringosc/d [6]), .CDN(n1726), .Q(
        \chip_core/clock_ctrl/divider/odd_0/rst_pulse ) );
  dfcfq1 \chip_core/clock_ctrl/divider2/odd_0/initial_begin_reg[0]  ( .D(n1048), .CPN(\chip_core/pll/ringosc/d [0]), .CDN(n1726), .Q(
        \chip_core/clock_ctrl/divider2/odd_0/initial_begin [0]) );
  dfcfq1 \chip_core/clock_ctrl/divider/odd_0/initial_begin_reg[0]  ( .D(n1041), 
        .CPN(\chip_core/pll/ringosc/d [6]), .CDN(n1726), .Q(
        \chip_core/clock_ctrl/divider/odd_0/initial_begin [0]) );
  dfcfq1 \chip_core/clock_ctrl/divider2/odd_0/counter2_reg[2]  ( .D(n1043), 
        .CPN(\chip_core/pll/ringosc/d [0]), .CDN(n799), .Q(
        \chip_core/clock_ctrl/divider2/odd_0/counter2 [2]) );
  dfcfq1 \chip_core/clock_ctrl/divider/odd_0/counter2_reg[2]  ( .D(n1033), 
        .CPN(\chip_core/pll/ringosc/d [6]), .CDN(n1726), .Q(
        \chip_core/clock_ctrl/divider/odd_0/counter2 [2]) );
  dfcfq1 \chip_core/clock_ctrl/divider/odd_0/counter2_reg[0]  ( .D(n1034), 
        .CPN(\chip_core/pll/ringosc/d [6]), .CDN(n799), .Q(
        \chip_core/clock_ctrl/divider/odd_0/counter2 [0]) );
  invtd1 \chip_core/pll/ringosc/dstage[1].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [1]), .EN(\chip_core/pll/itrim [14]), .ZN(
        \chip_core/pll/ringosc/dstage[1].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[1].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [1]), .EN(n1085), .ZN(
        \chip_core/pll/ringosc/dstage[1].id/d1 ) );
  dfcfq1 \chip_core/clock_ctrl/divider2/odd_0/initial_begin_reg[2]  ( .D(n1049), .CPN(\chip_core/pll/ringosc/d [0]), .CDN(n1726), .Q(
        \chip_core/clock_ctrl/divider2/odd_0/initial_begin [2]) );
  dfcfq1 \chip_core/clock_ctrl/divider2/odd_0/counter2_reg[0]  ( .D(n1044), 
        .CPN(\chip_core/pll/ringosc/d [0]), .CDN(n799), .Q(
        \chip_core/clock_ctrl/divider2/odd_0/counter2 [0]) );
  dfcfq1 \chip_core/clock_ctrl/divider/odd_0/initial_begin_reg[2]  ( .D(n1042), 
        .CPN(\chip_core/pll/ringosc/d [6]), .CDN(n1726), .Q(
        \chip_core/clock_ctrl/divider/odd_0/initial_begin [2]) );
  invtd1 \chip_core/pll/ringosc/dstage[1].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [1]), .EN(\chip_core/pll/itrim [1]), .ZN(
        \chip_core/pll/ringosc/d [2]) );
  invtd1 \chip_core/pll/ringosc/dstage[1].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[1].id/d2 ), .EN(n1098), .ZN(
        \chip_core/pll/ringosc/d [2]) );
  invtd1 \chip_core/pll/ringosc/dstage[0].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[0].id/d2 ), .EN(n1099), .ZN(
        \chip_core/pll/ringosc/d [1]) );
  invtd1 \chip_core/pll/ringosc/dstage[9].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [9]), .EN(\chip_core/pll/itrim [9]), .ZN(
        \chip_core/pll/ringosc/d [10]) );
  invtd1 \chip_core/pll/ringosc/dstage[9].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[9].id/d2 ), .EN(n1090), .ZN(
        \chip_core/pll/ringosc/d [10]) );
  invtd1 \chip_core/pll/ringosc/dstage[3].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [3]), .EN(\chip_core/pll/itrim [3]), .ZN(
        \chip_core/pll/ringosc/d [4]) );
  invtd1 \chip_core/pll/ringosc/dstage[3].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[3].id/d2 ), .EN(n1096), .ZN(
        \chip_core/pll/ringosc/d [4]) );
  invtd1 \chip_core/pll/ringosc/dstage[4].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [4]), .EN(\chip_core/pll/itrim [4]), .ZN(
        \chip_core/pll/ringosc/d [5]) );
  invtd1 \chip_core/pll/ringosc/dstage[4].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[4].id/d2 ), .EN(n1095), .ZN(
        \chip_core/pll/ringosc/d [5]) );
  invtd1 \chip_core/pll/ringosc/dstage[11].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [11]), .EN(\chip_core/pll/itrim [11]), .ZN(
        \chip_core/pll/ringosc/d [12]) );
  invtd1 \chip_core/pll/ringosc/dstage[11].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[11].id/d2 ), .EN(n1088), .ZN(
        \chip_core/pll/ringosc/d [12]) );
  invtd1 \chip_core/pll/ringosc/dstage[8].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [8]), .EN(\chip_core/pll/itrim [8]), .ZN(
        \chip_core/pll/ringosc/d [9]) );
  invtd1 \chip_core/pll/ringosc/dstage[8].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[8].id/d2 ), .EN(n1091), .ZN(
        \chip_core/pll/ringosc/d [9]) );
  invtd1 \chip_core/pll/ringosc/dstage[10].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [10]), .EN(\chip_core/pll/itrim [10]), .ZN(
        \chip_core/pll/ringosc/d [11]) );
  invtd1 \chip_core/pll/ringosc/dstage[10].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[10].id/d2 ), .EN(n1089), .ZN(
        \chip_core/pll/ringosc/d [11]) );
  invtd1 \chip_core/pll/ringosc/dstage[7].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [7]), .EN(\chip_core/pll/itrim [7]), .ZN(
        \chip_core/pll/ringosc/d [8]) );
  invtd1 \chip_core/pll/ringosc/dstage[7].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[7].id/d2 ), .EN(n1092), .ZN(
        \chip_core/pll/ringosc/d [8]) );
  invtd1 \chip_core/pll/ringosc/dstage[6].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [6]), .EN(\chip_core/pll/itrim [6]), .ZN(
        \chip_core/pll/ringosc/d [7]) );
  invtd1 \chip_core/pll/ringosc/dstage[6].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[6].id/d2 ), .EN(n1093), .ZN(
        \chip_core/pll/ringosc/d [7]) );
  invtd1 \chip_core/pll/ringosc/dstage[2].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [2]), .EN(\chip_core/pll/itrim [2]), .ZN(
        \chip_core/pll/ringosc/d [3]) );
  invtd1 \chip_core/pll/ringosc/dstage[2].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[2].id/d2 ), .EN(n1097), .ZN(
        \chip_core/pll/ringosc/d [3]) );
  invtd1 \chip_core/pll/ringosc/dstage[11].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [11]), .EN(\chip_core/pll/itrim [24]), .ZN(
        \chip_core/pll/ringosc/dstage[11].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[11].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [11]), .EN(n1075), .ZN(
        \chip_core/pll/ringosc/dstage[11].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[10].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [10]), .EN(\chip_core/pll/itrim [23]), .ZN(
        \chip_core/pll/ringosc/dstage[10].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[10].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [10]), .EN(n1076), .ZN(
        \chip_core/pll/ringosc/dstage[10].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[4].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [4]), .EN(\chip_core/pll/itrim [17]), .ZN(
        \chip_core/pll/ringosc/dstage[4].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[4].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [4]), .EN(n1082), .ZN(
        \chip_core/pll/ringosc/dstage[4].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/iss/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [12]), .EN(\chip_core/pll/itrim [25]), .ZN(
        \chip_core/pll/ringosc/iss/d1 ) );
  invtd1 \chip_core/pll/ringosc/iss/delayen1  ( .I(
        \chip_core/pll/ringosc/d [12]), .EN(n1074), .ZN(
        \chip_core/pll/ringosc/iss/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[2].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [2]), .EN(\chip_core/pll/itrim [15]), .ZN(
        \chip_core/pll/ringosc/dstage[2].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[2].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [2]), .EN(n1084), .ZN(
        \chip_core/pll/ringosc/dstage[2].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[9].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [9]), .EN(\chip_core/pll/itrim [22]), .ZN(
        \chip_core/pll/ringosc/dstage[9].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[9].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [9]), .EN(n1077), .ZN(
        \chip_core/pll/ringosc/dstage[9].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[3].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [3]), .EN(\chip_core/pll/itrim [16]), .ZN(
        \chip_core/pll/ringosc/dstage[3].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[3].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [3]), .EN(n1083), .ZN(
        \chip_core/pll/ringosc/dstage[3].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[8].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [8]), .EN(\chip_core/pll/itrim [21]), .ZN(
        \chip_core/pll/ringosc/dstage[8].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[8].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [8]), .EN(n1078), .ZN(
        \chip_core/pll/ringosc/dstage[8].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[5].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [5]), .EN(\chip_core/pll/itrim [18]), .ZN(
        \chip_core/pll/ringosc/dstage[5].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[5].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [5]), .EN(n1081), .ZN(
        \chip_core/pll/ringosc/dstage[5].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[7].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [7]), .EN(\chip_core/pll/itrim [20]), .ZN(
        \chip_core/pll/ringosc/dstage[7].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[7].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [7]), .EN(n1079), .ZN(
        \chip_core/pll/ringosc/dstage[7].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[6].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [6]), .EN(\chip_core/pll/itrim [19]), .ZN(
        \chip_core/pll/ringosc/dstage[6].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[6].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [6]), .EN(n1080), .ZN(
        \chip_core/pll/ringosc/dstage[6].id/d1 ) );
  dfcrq1 \chip_core/clock_ctrl/divider2/odd_0/rst_pulse_reg  ( .D(n1050), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n1724), .Q(
        \chip_core/clock_ctrl/divider2/odd_0/rst_pulse ) );
  mx02d1 U947 ( .I0(1'b1), .I1(\chip_core/pll/ireset ), .S(n1727), .Z(
        \chip_core/pll/creset ) );
  aoim22d1 U490 ( .A1(n1726), .A2(n533), .B1(
        \chip_core/clock_ctrl/ext_clk_syncd_pre ), .B2(n1726), .Z(n1051) );
  invtd7 \chip_core/pll/ringosc/iss/reseten0  ( .I(1'b1), .EN(n1072), .ZN(
        \chip_core/pll/ringosc/d [0]) );
  invtd7 \chip_core/pll/ringosc/iss/delayen0  ( .I(
        \chip_core/pll/ringosc/iss/d2 ), .EN(n1087), .ZN(
        \chip_core/pll/ringosc/d [0]) );
  invtd7 \chip_core/pll/ringosc/iss/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [12]), .EN(\chip_core/pll/ringosc/iss/ctrl0 ), 
        .ZN(\chip_core/pll/ringosc/d [0]) );
  invtd4 \chip_core/pll/ringosc/dstage[5].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[5].id/d2 ), .EN(n1094), .ZN(
        \chip_core/pll/ringosc/d [6]) );
  invtd4 \chip_core/pll/ringosc/dstage[5].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [5]), .EN(\chip_core/pll/itrim [5]), .ZN(
        \chip_core/pll/ringosc/d [6]) );
  dfpfb1 \chip_core/clock_ctrl/reset_delay_reg[0]  ( .D(
        \chip_core/clock_ctrl/reset_delay [1]), .CPN(n1718), .SDN(n1725), .Q(
        \chip_core/clock_ctrl/reset_delay [0]), .QN(n1134) );
  ad01d0 \DP_OP_229J4_123_275/U6  ( .A(\chip_core/pll/pll_control/tint [0]), 
        .B(\chip_core/pll/pll_control/N89 ), .CI(\DP_OP_229J4_123_275/n6 ), 
        .CO(\DP_OP_229J4_123_275/n5 ), .S(\chip_core/pll/pll_control/N65 ) );
  ad01d0 \DP_OP_229J4_123_275/U3  ( .A(\chip_core/pll/pll_control/tint [3]), 
        .B(\chip_core/pll/pll_control/N89 ), .CI(\DP_OP_229J4_123_275/n3 ), 
        .CO(\DP_OP_229J4_123_275/n2 ), .S(\chip_core/pll/pll_control/N68 ) );
  ad01d0 \DP_OP_229J4_123_275/U4  ( .A(\chip_core/pll/pll_control/tint [2]), 
        .B(\chip_core/pll/pll_control/N89 ), .CI(\DP_OP_229J4_123_275/n4 ), 
        .CO(\DP_OP_229J4_123_275/n3 ), .S(\chip_core/pll/pll_control/N67 ) );
  ad01d0 \DP_OP_229J4_123_275/U5  ( .A(\chip_core/pll/pll_control/tint [1]), 
        .B(\chip_core/pll/pll_control/N89 ), .CI(\DP_OP_229J4_123_275/n5 ), 
        .CO(\DP_OP_229J4_123_275/n4 ), .S(\chip_core/pll/pll_control/N66 ) );
  ad01d0 \DP_OP_229J4_123_275/U7  ( .A(\chip_core/pll/pll_control/tval [1]), 
        .B(\chip_core/pll/pll_control/N89 ), .CI(
        \chip_core/pll/pll_control/tval [0]), .CO(\DP_OP_229J4_123_275/n6 ), 
        .S(\chip_core/pll/pll_control/N64 ) );
  ad01d0 \intadd_0/U4  ( .A(\chip_core/pll/pll_control/count1 [1]), .B(
        \chip_core/pll/pll_control/count0 [1]), .CI(\intadd_0/CI ), .CO(
        \intadd_0/n3 ), .S(\intadd_0/SUM[0] ) );
  ad01d0 \intadd_0/U3  ( .A(\chip_core/pll/pll_control/count1 [2]), .B(
        \chip_core/pll/pll_control/count0 [2]), .CI(\intadd_0/n3 ), .CO(
        \intadd_0/n2 ), .S(\intadd_0/SUM[1] ) );
  nd04d0 U948 ( .A1(\chip_core/mprj_adr_o_core [18]), .A2(
        \chip_core/mprj_adr_o_core [16]), .A3(\chip_core/mprj_adr_o_core [19]), 
        .A4(\chip_core/mprj_adr_o_core [29]), .ZN(n1145) );
  nd04d0 U949 ( .A1(\chip_core/mprj_adr_o_core [8]), .A2(
        \chip_core/mprj_adr_o_core [13]), .A3(\chip_core/mprj_adr_o_core [11]), 
        .A4(\chip_core/mprj_adr_o_core [10]), .ZN(n1143) );
  nd04d0 U950 ( .A1(\chip_core/mprj_adr_o_core [15]), .A2(
        \chip_core/mprj_adr_o_core [14]), .A3(\chip_core/mprj_adr_o_core [17]), 
        .A4(n1141), .ZN(n1144) );
  nd04d0 U951 ( .A1(\chip_core/mprj_adr_o_core [28]), .A2(
        \chip_core/mprj_adr_o_core [5]), .A3(\chip_core/mprj_adr_o_core [7]), 
        .A4(\chip_core/mprj_adr_o_core [9]), .ZN(n1142) );
  ad01d0 U952 ( .A(\chip_core/pll/pll_control/count1 [3]), .B(
        \chip_core/pll/pll_control/count0 [3]), .CI(\intadd_0/n2 ), .CO(
        \intadd_0/n1 ), .S(\intadd_0/SUM[2] ) );
  nr02d0 U953 ( .A1(n1353), .A2(n1352), .ZN(n1101) );
  nr04d0 U954 ( .A1(\chip_core/mprj_adr_o_core [26]), .A2(
        \chip_core/mprj_adr_o_core [25]), .A3(\chip_core/mprj_adr_o_core [24]), 
        .A4(\chip_core/mprj_adr_o_core [23]), .ZN(n1148) );
  nd03d0 U955 ( .A1(n1495), .A2(n1360), .A3(n1374), .ZN(n1373) );
  nd02d0 U956 ( .A1(\chip_core/mprj/debug/N133 ), .A2(
        \chip_core/mprj_we_o_core ), .ZN(n1630) );
  nd02d0 U957 ( .A1(n1561), .A2(\chip_core/mprj_sel_o_core [2]), .ZN(n1569) );
  nd02d0 U958 ( .A1(n1561), .A2(\chip_core/mprj_sel_o_core [1]), .ZN(n1558) );
  nd02d0 U959 ( .A1(n1532), .A2(\chip_core/mprj_sel_o_core [2]), .ZN(n1530) );
  nd02d0 U960 ( .A1(n1532), .A2(\chip_core/mprj_sel_o_core [1]), .ZN(n1528) );
  nd02d0 U961 ( .A1(\chip_core/mprj_sel_o_core [0]), .A2(n1532), .ZN(n1526) );
  nd02d0 U962 ( .A1(n1561), .A2(\chip_core/mprj_sel_o_core [3]), .ZN(n1524) );
  nr04d0 U963 ( .A1(\chip_core/mprj_adr_o_core [21]), .A2(
        \chip_core/mprj_adr_o_core [20]), .A3(n1150), .A4(n1149), .ZN(n1151)
         );
  nd03d0 U964 ( .A1(\chip_core/mprj_adr_o_core [12]), .A2(
        \chip_core/mprj_adr_o_core [6]), .A3(\chip_core/mprj_adr_o_core [4]), 
        .ZN(n1150) );
  nd03d0 U965 ( .A1(n1148), .A2(n1147), .A3(n1146), .ZN(n1149) );
  nr04d0 U966 ( .A1(\chip_core/mprj_adr_o_core [31]), .A2(
        \chip_core/mprj_adr_o_core [30]), .A3(\chip_core/mprj_adr_o_core [27]), 
        .A4(n1140), .ZN(n1147) );
  nd03d0 U967 ( .A1(n1708), .A2(n1710), .A3(n1709), .ZN(n1707) );
  nd03d0 U968 ( .A1(n1701), .A2(n1703), .A3(n1702), .ZN(n1700) );
  nd03d0 U969 ( .A1(\chip_core/mprj_stb_o_core ), .A2(
        \chip_core/mprj_cyc_o_core ), .A3(n1151), .ZN(n1152) );
  nd03d0 U970 ( .A1(n1689), .A2(n1697), .A3(
        \chip_core/clock_ctrl/divider2/even_0/out_counter ), .ZN(n1688) );
  inv0d2 U971 ( .I(\chip_core/clock_ctrl/reset_delay [0]), .ZN(n1135) );
  inv0d0 U972 ( .I(\chip_core/pll/creset ), .ZN(n1136) );
  nr03d0 U973 ( .A1(n1420), .A2(n1442), .A3(n1440), .ZN(n1436) );
  nr02d0 U974 ( .A1(n1575), .A2(n1351), .ZN(n1133) );
  nr02d0 U975 ( .A1(n1442), .A2(n1443), .ZN(n1428) );
  nr02d0 U976 ( .A1(n1584), .A2(n1352), .ZN(n1130) );
  nr02d0 U977 ( .A1(n1620), .A2(n1351), .ZN(n1118) );
  nr02d0 U978 ( .A1(n1662), .A2(n1352), .ZN(n1105) );
  nr04d0 U979 ( .A1(n1145), .A2(n1144), .A3(n1143), .A4(n1142), .ZN(n1146) );
  nr03d0 U980 ( .A1(\chip_core/pll/pll_control/tint [2]), .A2(n1442), .A3(
        n1406), .ZN(n1415) );
  nr02d0 U981 ( .A1(mprj_io_dm[35]), .A2(n1300), .ZN(n1302) );
  nr02d0 U982 ( .A1(mprj_io_dm[53]), .A2(n1153), .ZN(n1155) );
  nr02d0 U983 ( .A1(mprj_io_dm[98]), .A2(n1242), .ZN(n1244) );
  nr02d0 U984 ( .A1(\chip_core/mprj_adr_o_core [2]), .A2(n1623), .ZN(n1532) );
  nr02d0 U985 ( .A1(n1623), .A2(n1572), .ZN(n1561) );
  nd03d0 U986 ( .A1(n1481), .A2(n1471), .A3(n1473), .ZN(n1476) );
  nd03d0 U987 ( .A1(\chip_core/mprj/debug/N133 ), .A2(n1573), .A3(n1572), .ZN(
        n1676) );
  nr02d0 U988 ( .A1(n1467), .A2(n1450), .ZN(n1452) );
  nd03d0 U989 ( .A1(n1691), .A2(n1704), .A3(
        \chip_core/clock_ctrl/divider/even_0/out_counter ), .ZN(n1690) );
  nd12d0 U990 ( .A1(\chip_core/clock_ctrl/divider/odd_0/rst_pulse ), .A2(n1137), .ZN(n1038) );
  nd12d0 U991 ( .A1(\chip_core/clock_ctrl/divider2/odd_0/rst_pulse ), .A2(
        n1138), .ZN(n1045) );
  xr02d1 U992 ( .A1(n1520), .A2(
        \chip_core/clock_ctrl/divider/odd_0/out_counter2 ), .Z(n1137) );
  xr02d1 U993 ( .A1(n1491), .A2(
        \chip_core/clock_ctrl/divider2/odd_0/out_counter2 ), .Z(n1138) );
  inv0d0 U995 ( .I(\chip_core/mprj/wbs_dat_o_debug [14]), .ZN(n1617) );
  inv0d0 U996 ( .I(\chip_core/mprj_adr_o_core [3]), .ZN(n1140) );
  inv0d0 U997 ( .I(\chip_core/mprj_adr_o_core [22]), .ZN(n1141) );
  nd02d1 U998 ( .A1(n1151), .A2(\chip_core/mprj_iena_wb ), .ZN(n1351) );
  nr02d0 U999 ( .A1(n1617), .A2(n1351), .ZN(n1119) );
  inv0d0 U1000 ( .I(\chip_core/mprj/wbs_dat_o_debug [8]), .ZN(n1599) );
  nr02d0 U1001 ( .A1(n1599), .A2(n1351), .ZN(n1125) );
  inv0d0 U1002 ( .I(\chip_core/mprj/wbs_dat_o_debug [10]), .ZN(n1605) );
  nr02d0 U1003 ( .A1(n1605), .A2(n1351), .ZN(n1123) );
  inv0d0 U1004 ( .I(\chip_core/mprj/wbs_dat_o_debug [18]), .ZN(n1631) );
  nr02d0 U1005 ( .A1(n1631), .A2(n1351), .ZN(n1115) );
  inv0d0 U1006 ( .I(\chip_core/mprj/wbs_dat_o_debug [15]), .ZN(n1620) );
  inv0d0 U1007 ( .I(\chip_core/mprj/wbs_dat_o_debug [21]), .ZN(n1640) );
  nr02d0 U1008 ( .A1(n1640), .A2(n1351), .ZN(n1112) );
  inv0d0 U1009 ( .I(\chip_core/mprj/wbs_dat_o_debug [11]), .ZN(n1608) );
  nr02d0 U1010 ( .A1(n1608), .A2(n1351), .ZN(n1122) );
  inv0d0 U1011 ( .I(\chip_core/mprj/wbs_dat_o_debug [13]), .ZN(n1614) );
  nr02d0 U1012 ( .A1(n1614), .A2(n1351), .ZN(n1120) );
  inv0d0 U1013 ( .I(\chip_core/mprj/wbs_dat_o_debug [0]), .ZN(n1575) );
  inv0d0 U1014 ( .I(\chip_core/mprj/wbs_dat_o_debug [1]), .ZN(n1578) );
  nr02d0 U1015 ( .A1(n1578), .A2(n1351), .ZN(n1132) );
  inv0d0 U1016 ( .I(\chip_core/mprj/wbs_dat_o_debug [16]), .ZN(n1624) );
  nr02d0 U1017 ( .A1(n1624), .A2(n1351), .ZN(n1117) );
  inv0d0 U1018 ( .I(\chip_core/mprj/wbs_dat_o_debug [20]), .ZN(n1637) );
  nr02d0 U1019 ( .A1(n1637), .A2(n1351), .ZN(n1113) );
  inv0d0 U1020 ( .I(\chip_core/mprj/wbs_dat_o_debug [23]), .ZN(n1646) );
  nr02d0 U1021 ( .A1(n1646), .A2(n1351), .ZN(n1110) );
  inv0d0 U1022 ( .I(\chip_core/mprj/wbs_dat_o_debug [9]), .ZN(n1602) );
  nr02d0 U1023 ( .A1(n1602), .A2(n1351), .ZN(n1124) );
  inv0d0 U1024 ( .I(\chip_core/mprj/wbs_dat_o_debug [12]), .ZN(n1611) );
  nr02d0 U1025 ( .A1(n1611), .A2(n1351), .ZN(n1121) );
  nr02d0 U1026 ( .A1(n1152), .A2(\chip_core/mprj/wbs_ack_o_debug ), .ZN(
        \chip_core/mprj/debug/N133 ) );
  inv0d0 U1027 ( .I(\chip_core/mgmt_io_in_hk [17]), .ZN(n1157) );
  inv0d0 U1028 ( .I(mprj_io_dm[52]), .ZN(n1153) );
  nd02d0 U1029 ( .A1(n1155), .A2(mprj_io_dm[51]), .ZN(n1154) );
  oai211d1 U1030 ( .C1(n1155), .C2(\chip_core/mgmt_io_out_hk [17]), .A(n1154), 
        .B(\chip_core/gpio_control_in_1[9]/mgmt_ena ), .ZN(n1156) );
  oai21d1 U1031 ( .B1(\chip_core/gpio_control_in_1[9]/mgmt_ena ), .B2(n1157), 
        .A(n1156), .ZN(mprj_io_out[17]) );
  inv0d0 U1032 ( .I(\chip_core/mgmt_gpio_in [5]), .ZN(n1162) );
  inv0d0 U1033 ( .I(mprj_io_dm[73]), .ZN(n1158) );
  nr02d0 U1034 ( .A1(mprj_io_dm[74]), .A2(n1158), .ZN(n1160) );
  nd02d0 U1035 ( .A1(n1160), .A2(mprj_io_dm[72]), .ZN(n1159) );
  oai211d1 U1036 ( .C1(n1160), .C2(\chip_core/mgmt_io_out_hk [24]), .A(n1159), 
        .B(\chip_core/gpio_control_in_2[5]/mgmt_ena ), .ZN(n1161) );
  oai21d1 U1037 ( .B1(\chip_core/gpio_control_in_2[5]/mgmt_ena ), .B2(n1162), 
        .A(n1161), .ZN(mprj_io_out[24]) );
  inv0d0 U1038 ( .I(\chip_core/mgmt_gpio_in [1]), .ZN(n1167) );
  inv0d0 U1039 ( .I(mprj_io_dm[61]), .ZN(n1163) );
  nr02d0 U1040 ( .A1(mprj_io_dm[62]), .A2(n1163), .ZN(n1165) );
  nd02d0 U1041 ( .A1(n1165), .A2(mprj_io_dm[60]), .ZN(n1164) );
  oai211d1 U1042 ( .C1(n1165), .C2(\chip_core/mgmt_io_out_hk [20]), .A(n1164), 
        .B(\chip_core/gpio_control_in_2[1]/mgmt_ena ), .ZN(n1166) );
  oai21d1 U1043 ( .B1(\chip_core/gpio_control_in_2[1]/mgmt_ena ), .B2(n1167), 
        .A(n1166), .ZN(mprj_io_out[20]) );
  inv0d0 U1044 ( .I(\chip_core/mgmt_io_in_hk [16]), .ZN(n1172) );
  inv0d0 U1045 ( .I(mprj_io_dm[49]), .ZN(n1168) );
  nr02d0 U1046 ( .A1(mprj_io_dm[50]), .A2(n1168), .ZN(n1170) );
  nd02d0 U1047 ( .A1(n1170), .A2(mprj_io_dm[48]), .ZN(n1169) );
  oai211d1 U1048 ( .C1(n1170), .C2(\chip_core/mgmt_io_out_hk [16]), .A(n1169), 
        .B(\chip_core/gpio_control_in_1[8]/mgmt_ena ), .ZN(n1171) );
  oai21d1 U1049 ( .B1(\chip_core/gpio_control_in_1[8]/mgmt_ena ), .B2(n1172), 
        .A(n1171), .ZN(mprj_io_out[16]) );
  inv0d0 U1050 ( .I(\chip_core/mgmt_gpio_in [10]), .ZN(n1177) );
  inv0d0 U1051 ( .I(mprj_io_dm[88]), .ZN(n1173) );
  nr02d0 U1052 ( .A1(mprj_io_dm[89]), .A2(n1173), .ZN(n1175) );
  nd02d0 U1053 ( .A1(n1175), .A2(mprj_io_dm[87]), .ZN(n1174) );
  oai211d1 U1054 ( .C1(n1175), .C2(\chip_core/mgmt_io_out_hk [29]), .A(n1174), 
        .B(\chip_core/gpio_control_in_2[10]/mgmt_ena ), .ZN(n1176) );
  oai21d1 U1055 ( .B1(\chip_core/gpio_control_in_2[10]/mgmt_ena ), .B2(n1177), 
        .A(n1176), .ZN(mprj_io_out[29]) );
  inv0d0 U1056 ( .I(\chip_core/mgmt_gpio_in [2]), .ZN(n1182) );
  inv0d0 U1057 ( .I(mprj_io_dm[64]), .ZN(n1178) );
  nr02d0 U1058 ( .A1(mprj_io_dm[65]), .A2(n1178), .ZN(n1180) );
  nd02d0 U1059 ( .A1(n1180), .A2(mprj_io_dm[63]), .ZN(n1179) );
  oai211d1 U1060 ( .C1(n1180), .C2(\chip_core/mgmt_io_out_hk [21]), .A(n1179), 
        .B(\chip_core/gpio_control_in_2[2]/mgmt_ena ), .ZN(n1181) );
  oai21d1 U1061 ( .B1(\chip_core/gpio_control_in_2[2]/mgmt_ena ), .B2(n1182), 
        .A(n1181), .ZN(mprj_io_out[21]) );
  inv0d0 U1062 ( .I(\chip_core/mgmt_gpio_in [0]), .ZN(n1187) );
  inv0d0 U1063 ( .I(mprj_io_dm[58]), .ZN(n1183) );
  nr02d0 U1064 ( .A1(mprj_io_dm[59]), .A2(n1183), .ZN(n1185) );
  nd02d0 U1065 ( .A1(n1185), .A2(mprj_io_dm[57]), .ZN(n1184) );
  oai211d1 U1066 ( .C1(n1185), .C2(\chip_core/mgmt_io_out_hk [19]), .A(n1184), 
        .B(\chip_core/gpio_control_in_2[0]/mgmt_ena ), .ZN(n1186) );
  oai21d1 U1067 ( .B1(\chip_core/gpio_control_in_2[0]/mgmt_ena ), .B2(n1187), 
        .A(n1186), .ZN(mprj_io_out[19]) );
  inv0d0 U1068 ( .I(\chip_core/mgmt_gpio_in [8]), .ZN(n1192) );
  inv0d0 U1069 ( .I(mprj_io_dm[82]), .ZN(n1188) );
  nr02d0 U1070 ( .A1(mprj_io_dm[83]), .A2(n1188), .ZN(n1190) );
  nd02d0 U1071 ( .A1(n1190), .A2(mprj_io_dm[81]), .ZN(n1189) );
  oai211d1 U1072 ( .C1(n1190), .C2(\chip_core/mgmt_io_out_hk [27]), .A(n1189), 
        .B(\chip_core/gpio_control_in_2[8]/mgmt_ena ), .ZN(n1191) );
  oai21d1 U1073 ( .B1(\chip_core/gpio_control_in_2[8]/mgmt_ena ), .B2(n1192), 
        .A(n1191), .ZN(mprj_io_out[27]) );
  inv0d0 U1074 ( .I(\chip_core/mgmt_gpio_in [12]), .ZN(n1197) );
  inv0d0 U1075 ( .I(mprj_io_dm[94]), .ZN(n1193) );
  nr02d0 U1076 ( .A1(mprj_io_dm[95]), .A2(n1193), .ZN(n1195) );
  nd02d0 U1077 ( .A1(n1195), .A2(mprj_io_dm[93]), .ZN(n1194) );
  oai211d1 U1078 ( .C1(n1195), .C2(\chip_core/mgmt_io_out_hk [31]), .A(n1194), 
        .B(\chip_core/gpio_control_in_2[12]/mgmt_ena ), .ZN(n1196) );
  oai21d1 U1079 ( .B1(\chip_core/gpio_control_in_2[12]/mgmt_ena ), .B2(n1197), 
        .A(n1196), .ZN(mprj_io_out[31]) );
  inv0d0 U1080 ( .I(\chip_core/mgmt_io_in_hk [15]), .ZN(n1202) );
  inv0d0 U1081 ( .I(mprj_io_dm[46]), .ZN(n1198) );
  nr02d0 U1082 ( .A1(mprj_io_dm[47]), .A2(n1198), .ZN(n1200) );
  nd02d0 U1083 ( .A1(n1200), .A2(mprj_io_dm[45]), .ZN(n1199) );
  oai211d1 U1084 ( .C1(n1200), .C2(\chip_core/mgmt_io_out_hk [15]), .A(n1199), 
        .B(\chip_core/gpio_control_in_1[7]/mgmt_ena ), .ZN(n1201) );
  oai21d1 U1085 ( .B1(\chip_core/gpio_control_in_1[7]/mgmt_ena ), .B2(n1202), 
        .A(n1201), .ZN(mprj_io_out[15]) );
  inv0d0 U1086 ( .I(\chip_core/mgmt_io_in_hk [0]), .ZN(n1206) );
  nr23d1 U1087 ( .A1(mprj_io_dm[1]), .A2(\chip_core/mgmt_io_oeb_hk [0]), .A3(
        mprj_io_dm[2]), .ZN(n1204) );
  nd02d0 U1088 ( .A1(n1204), .A2(mprj_io_dm[0]), .ZN(n1203) );
  oai211d1 U1089 ( .C1(n1204), .C2(\chip_core/mgmt_io_out_hk [0]), .A(n1203), 
        .B(\chip_core/gpio_control_bidir_1[0]/mgmt_ena ), .ZN(n1205) );
  oai21d1 U1090 ( .B1(\chip_core/gpio_control_bidir_1[0]/mgmt_ena ), .B2(n1206), .A(n1205), .ZN(mprj_io_out[0]) );
  inv0d0 U1091 ( .I(\chip_core/mgmt_gpio_in [3]), .ZN(n1211) );
  inv0d0 U1092 ( .I(mprj_io_dm[67]), .ZN(n1207) );
  nr02d0 U1093 ( .A1(mprj_io_dm[68]), .A2(n1207), .ZN(n1209) );
  nd02d0 U1094 ( .A1(n1209), .A2(mprj_io_dm[66]), .ZN(n1208) );
  oai211d1 U1095 ( .C1(n1209), .C2(\chip_core/mgmt_io_out_hk [22]), .A(n1208), 
        .B(\chip_core/gpio_control_in_2[3]/mgmt_ena ), .ZN(n1210) );
  oai21d1 U1096 ( .B1(\chip_core/gpio_control_in_2[3]/mgmt_ena ), .B2(n1211), 
        .A(n1210), .ZN(mprj_io_out[22]) );
  inv0d0 U1097 ( .I(\chip_core/mgmt_gpio_in [11]), .ZN(n1216) );
  inv0d0 U1098 ( .I(mprj_io_dm[91]), .ZN(n1212) );
  nr02d0 U1099 ( .A1(mprj_io_dm[92]), .A2(n1212), .ZN(n1214) );
  nd02d0 U1100 ( .A1(n1214), .A2(mprj_io_dm[90]), .ZN(n1213) );
  oai211d1 U1101 ( .C1(n1214), .C2(\chip_core/mgmt_io_out_hk [30]), .A(n1213), 
        .B(\chip_core/gpio_control_in_2[11]/mgmt_ena ), .ZN(n1215) );
  oai21d1 U1102 ( .B1(\chip_core/gpio_control_in_2[11]/mgmt_ena ), .B2(n1216), 
        .A(n1215), .ZN(mprj_io_out[30]) );
  inv0d0 U1103 ( .I(\chip_core/mgmt_gpio_in [9]), .ZN(n1221) );
  inv0d0 U1104 ( .I(mprj_io_dm[85]), .ZN(n1217) );
  nr02d0 U1105 ( .A1(mprj_io_dm[86]), .A2(n1217), .ZN(n1219) );
  nd02d0 U1106 ( .A1(n1219), .A2(mprj_io_dm[84]), .ZN(n1218) );
  oai211d1 U1107 ( .C1(n1219), .C2(\chip_core/mgmt_io_out_hk [28]), .A(n1218), 
        .B(\chip_core/gpio_control_in_2[9]/mgmt_ena ), .ZN(n1220) );
  oai21d1 U1108 ( .B1(\chip_core/gpio_control_in_2[9]/mgmt_ena ), .B2(n1221), 
        .A(n1220), .ZN(mprj_io_out[28]) );
  inv0d0 U1109 ( .I(\chip_core/mgmt_io_in_hk [18]), .ZN(n1226) );
  inv0d0 U1110 ( .I(mprj_io_dm[55]), .ZN(n1222) );
  nr02d0 U1111 ( .A1(mprj_io_dm[56]), .A2(n1222), .ZN(n1224) );
  nd02d0 U1112 ( .A1(n1224), .A2(mprj_io_dm[54]), .ZN(n1223) );
  oai211d1 U1113 ( .C1(n1224), .C2(\chip_core/mgmt_io_out_hk [18]), .A(n1223), 
        .B(\chip_core/gpio_control_in_1[10]/mgmt_ena ), .ZN(n1225) );
  oai21d1 U1114 ( .B1(\chip_core/gpio_control_in_1[10]/mgmt_ena ), .B2(n1226), 
        .A(n1225), .ZN(mprj_io_out[18]) );
  inv0d0 U1115 ( .I(\chip_core/mgmt_io_in_hk [14]), .ZN(n1231) );
  inv0d0 U1116 ( .I(mprj_io_dm[43]), .ZN(n1227) );
  nr02d0 U1117 ( .A1(mprj_io_dm[44]), .A2(n1227), .ZN(n1229) );
  nd02d0 U1118 ( .A1(n1229), .A2(mprj_io_dm[42]), .ZN(n1228) );
  oai211d1 U1119 ( .C1(n1229), .C2(\chip_core/mgmt_io_out_hk [14]), .A(n1228), 
        .B(\chip_core/gpio_control_in_1[6]/mgmt_ena ), .ZN(n1230) );
  oai21d1 U1120 ( .B1(\chip_core/gpio_control_in_1[6]/mgmt_ena ), .B2(n1231), 
        .A(n1230), .ZN(mprj_io_out[14]) );
  inv0d0 U1121 ( .I(\chip_core/mgmt_gpio_in [7]), .ZN(n1236) );
  inv0d0 U1122 ( .I(mprj_io_dm[79]), .ZN(n1232) );
  nr02d0 U1123 ( .A1(mprj_io_dm[80]), .A2(n1232), .ZN(n1234) );
  nd02d0 U1124 ( .A1(n1234), .A2(mprj_io_dm[78]), .ZN(n1233) );
  oai211d1 U1125 ( .C1(n1234), .C2(\chip_core/mgmt_io_out_hk [26]), .A(n1233), 
        .B(\chip_core/gpio_control_in_2[7]/mgmt_ena ), .ZN(n1235) );
  oai21d1 U1126 ( .B1(\chip_core/gpio_control_in_2[7]/mgmt_ena ), .B2(n1236), 
        .A(n1235), .ZN(mprj_io_out[26]) );
  inv0d0 U1127 ( .I(\chip_core/mgmt_gpio_in [4]), .ZN(n1241) );
  inv0d0 U1128 ( .I(mprj_io_dm[70]), .ZN(n1237) );
  nr02d0 U1129 ( .A1(mprj_io_dm[71]), .A2(n1237), .ZN(n1239) );
  nd02d0 U1130 ( .A1(n1239), .A2(mprj_io_dm[69]), .ZN(n1238) );
  oai211d1 U1131 ( .C1(n1239), .C2(\chip_core/mgmt_io_out_hk [23]), .A(n1238), 
        .B(\chip_core/gpio_control_in_2[4]/mgmt_ena ), .ZN(n1240) );
  oai21d1 U1132 ( .B1(\chip_core/gpio_control_in_2[4]/mgmt_ena ), .B2(n1241), 
        .A(n1240), .ZN(mprj_io_out[23]) );
  inv0d0 U1133 ( .I(\chip_core/mgmt_gpio_in [13]), .ZN(n1246) );
  inv0d0 U1134 ( .I(mprj_io_dm[97]), .ZN(n1242) );
  nd02d0 U1135 ( .A1(n1244), .A2(mprj_io_dm[96]), .ZN(n1243) );
  oai211d1 U1136 ( .C1(n1244), .C2(\chip_core/mgmt_io_out_hk [32]), .A(n1243), 
        .B(\chip_core/gpio_control_in_2[13]/mgmt_ena ), .ZN(n1245) );
  oai21d1 U1137 ( .B1(\chip_core/gpio_control_in_2[13]/mgmt_ena ), .B2(n1246), 
        .A(n1245), .ZN(mprj_io_out[32]) );
  inv0d0 U1138 ( .I(\chip_core/mgmt_gpio_in [6]), .ZN(n1251) );
  inv0d0 U1139 ( .I(mprj_io_dm[76]), .ZN(n1247) );
  nr02d0 U1140 ( .A1(mprj_io_dm[77]), .A2(n1247), .ZN(n1249) );
  nd02d0 U1141 ( .A1(n1249), .A2(mprj_io_dm[75]), .ZN(n1248) );
  oai211d1 U1142 ( .C1(n1249), .C2(\chip_core/mgmt_io_out_hk [25]), .A(n1248), 
        .B(\chip_core/gpio_control_in_2[6]/mgmt_ena ), .ZN(n1250) );
  oai21d1 U1143 ( .B1(\chip_core/gpio_control_in_2[6]/mgmt_ena ), .B2(n1251), 
        .A(n1250), .ZN(mprj_io_out[25]) );
  inv0d0 U1144 ( .I(\chip_core/mgmt_io_in_hk [13]), .ZN(n1256) );
  inv0d0 U1145 ( .I(mprj_io_dm[40]), .ZN(n1252) );
  nr02d0 U1146 ( .A1(mprj_io_dm[41]), .A2(n1252), .ZN(n1254) );
  nd02d0 U1147 ( .A1(n1254), .A2(mprj_io_dm[39]), .ZN(n1253) );
  oai211d1 U1148 ( .C1(n1254), .C2(\chip_core/mgmt_io_out_hk [13]), .A(n1253), 
        .B(\chip_core/gpio_control_in_1[5]/mgmt_ena ), .ZN(n1255) );
  oai21d1 U1149 ( .B1(\chip_core/gpio_control_in_1[5]/mgmt_ena ), .B2(n1256), 
        .A(n1255), .ZN(mprj_io_out[13]) );
  inv0d0 U1150 ( .I(\chip_core/mgmt_io_in_hk [6]), .ZN(n1261) );
  inv0d0 U1151 ( .I(mprj_io_dm[19]), .ZN(n1257) );
  nr02d0 U1152 ( .A1(mprj_io_dm[20]), .A2(n1257), .ZN(n1259) );
  nd02d0 U1153 ( .A1(n1259), .A2(mprj_io_dm[18]), .ZN(n1258) );
  oai211d1 U1154 ( .C1(n1259), .C2(\chip_core/mgmt_io_out_hk [6]), .A(n1258), 
        .B(\chip_core/gpio_control_in_1a[4]/mgmt_ena ), .ZN(n1260) );
  oai21d1 U1155 ( .B1(\chip_core/gpio_control_in_1a[4]/mgmt_ena ), .B2(n1261), 
        .A(n1260), .ZN(mprj_io_out[6]) );
  inv0d0 U1156 ( .I(\chip_core/mgmt_gpio_in [14]), .ZN(n1266) );
  inv0d0 U1157 ( .I(mprj_io_dm[100]), .ZN(n1262) );
  nr02d0 U1158 ( .A1(mprj_io_dm[101]), .A2(n1262), .ZN(n1264) );
  nd02d0 U1159 ( .A1(n1264), .A2(mprj_io_dm[99]), .ZN(n1263) );
  oai211d1 U1160 ( .C1(n1264), .C2(\chip_core/mgmt_io_out_hk [33]), .A(n1263), 
        .B(\chip_core/gpio_control_in_2[14]/mgmt_ena ), .ZN(n1265) );
  oai21d1 U1161 ( .B1(\chip_core/gpio_control_in_2[14]/mgmt_ena ), .B2(n1266), 
        .A(n1265), .ZN(mprj_io_out[33]) );
  inv0d0 U1162 ( .I(\chip_core/mgmt_gpio_in [16]), .ZN(n1270) );
  nr23d1 U1163 ( .A1(mprj_io_dm[106]), .A2(\chip_core/mgmt_io_oeb_hk [35]), 
        .A3(mprj_io_dm[107]), .ZN(n1268) );
  nd02d0 U1164 ( .A1(n1268), .A2(mprj_io_dm[105]), .ZN(n1267) );
  oai211d1 U1165 ( .C1(n1268), .C2(\chip_core/mgmt_io_out_hk [35]), .A(n1267), 
        .B(\chip_core/gpio_control_bidir_2[0]/mgmt_ena ), .ZN(n1269) );
  oai21d1 U1166 ( .B1(\chip_core/gpio_control_bidir_2[0]/mgmt_ena ), .B2(n1270), .A(n1269), .ZN(mprj_io_out[35]) );
  inv0d0 U1167 ( .I(\chip_core/mgmt_io_in_hk [5]), .ZN(n1275) );
  inv0d0 U1168 ( .I(mprj_io_dm[16]), .ZN(n1271) );
  nr02d0 U1169 ( .A1(mprj_io_dm[17]), .A2(n1271), .ZN(n1273) );
  nd02d0 U1170 ( .A1(n1273), .A2(mprj_io_dm[15]), .ZN(n1272) );
  oai211d1 U1171 ( .C1(n1273), .C2(\chip_core/mgmt_io_out_hk [5]), .A(n1272), 
        .B(\chip_core/gpio_control_in_1a[3]/mgmt_ena ), .ZN(n1274) );
  oai21d1 U1172 ( .B1(\chip_core/gpio_control_in_1a[3]/mgmt_ena ), .B2(n1275), 
        .A(n1274), .ZN(mprj_io_out[5]) );
  inv0d0 U1173 ( .I(\chip_core/mgmt_io_in_hk [9]), .ZN(n1280) );
  inv0d0 U1174 ( .I(mprj_io_dm[28]), .ZN(n1276) );
  nr02d0 U1175 ( .A1(mprj_io_dm[29]), .A2(n1276), .ZN(n1278) );
  nd02d0 U1176 ( .A1(n1278), .A2(mprj_io_dm[27]), .ZN(n1277) );
  oai211d1 U1177 ( .C1(n1278), .C2(\chip_core/mgmt_io_out_hk [9]), .A(n1277), 
        .B(\chip_core/gpio_control_in_1[1]/mgmt_ena ), .ZN(n1279) );
  oai21d1 U1178 ( .B1(\chip_core/gpio_control_in_1[1]/mgmt_ena ), .B2(n1280), 
        .A(n1279), .ZN(mprj_io_out[9]) );
  inv0d0 U1179 ( .I(\chip_core/mgmt_io_in_hk [2]), .ZN(n1285) );
  inv0d0 U1180 ( .I(mprj_io_dm[7]), .ZN(n1281) );
  nr02d0 U1181 ( .A1(mprj_io_dm[8]), .A2(n1281), .ZN(n1283) );
  nd02d0 U1182 ( .A1(n1283), .A2(mprj_io_dm[6]), .ZN(n1282) );
  oai211d1 U1183 ( .C1(n1283), .C2(\chip_core/mgmt_io_out_hk [2]), .A(n1282), 
        .B(\chip_core/gpio_control_in_1a[0]/mgmt_ena ), .ZN(n1284) );
  oai21d1 U1184 ( .B1(\chip_core/gpio_control_in_1a[0]/mgmt_ena ), .B2(n1285), 
        .A(n1284), .ZN(mprj_io_out[2]) );
  inv0d0 U1185 ( .I(\chip_core/mgmt_gpio_in [17]), .ZN(n1289) );
  nr23d1 U1186 ( .A1(mprj_io_dm[109]), .A2(\chip_core/mgmt_io_oeb_hk [36]), 
        .A3(mprj_io_dm[110]), .ZN(n1287) );
  nd02d0 U1187 ( .A1(n1287), .A2(mprj_io_dm[108]), .ZN(n1286) );
  oai211d1 U1188 ( .C1(n1287), .C2(\chip_core/mgmt_io_out_hk [36]), .A(n1286), 
        .B(\chip_core/gpio_control_bidir_2[1]/mgmt_ena ), .ZN(n1288) );
  oai21d1 U1189 ( .B1(\chip_core/gpio_control_bidir_2[1]/mgmt_ena ), .B2(n1289), .A(n1288), .ZN(mprj_io_out[36]) );
  inv0d0 U1190 ( .I(\chip_core/mgmt_gpio_in [15]), .ZN(n1294) );
  inv0d0 U1191 ( .I(mprj_io_dm[103]), .ZN(n1290) );
  nr02d0 U1192 ( .A1(mprj_io_dm[104]), .A2(n1290), .ZN(n1292) );
  nd02d0 U1193 ( .A1(n1292), .A2(mprj_io_dm[102]), .ZN(n1291) );
  oai211d1 U1194 ( .C1(n1292), .C2(\chip_core/mgmt_io_out_hk [34]), .A(n1291), 
        .B(\chip_core/gpio_control_in_2[15]/mgmt_ena ), .ZN(n1293) );
  oai21d1 U1195 ( .B1(\chip_core/gpio_control_in_2[15]/mgmt_ena ), .B2(n1294), 
        .A(n1293), .ZN(mprj_io_out[34]) );
  inv0d0 U1196 ( .I(\chip_core/mgmt_io_in_hk [4]), .ZN(n1299) );
  inv0d0 U1197 ( .I(mprj_io_dm[13]), .ZN(n1295) );
  nr02d0 U1198 ( .A1(mprj_io_dm[14]), .A2(n1295), .ZN(n1297) );
  nd02d0 U1199 ( .A1(n1297), .A2(mprj_io_dm[12]), .ZN(n1296) );
  oai211d1 U1200 ( .C1(n1297), .C2(\chip_core/mgmt_io_out_hk [4]), .A(n1296), 
        .B(\chip_core/gpio_control_in_1a[2]/mgmt_ena ), .ZN(n1298) );
  oai21d1 U1201 ( .B1(\chip_core/gpio_control_in_1a[2]/mgmt_ena ), .B2(n1299), 
        .A(n1298), .ZN(mprj_io_out[4]) );
  inv0d0 U1202 ( .I(\chip_core/mgmt_io_in_hk [11]), .ZN(n1304) );
  inv0d0 U1203 ( .I(mprj_io_dm[34]), .ZN(n1300) );
  nd02d0 U1204 ( .A1(n1302), .A2(mprj_io_dm[33]), .ZN(n1301) );
  oai211d1 U1205 ( .C1(n1302), .C2(\chip_core/mgmt_io_out_hk [11]), .A(n1301), 
        .B(\chip_core/gpio_control_in_1[3]/mgmt_ena ), .ZN(n1303) );
  oai21d1 U1206 ( .B1(\chip_core/gpio_control_in_1[3]/mgmt_ena ), .B2(n1304), 
        .A(n1303), .ZN(mprj_io_out[11]) );
  inv0d0 U1207 ( .I(\chip_core/mgmt_io_in_hk [7]), .ZN(n1309) );
  inv0d0 U1208 ( .I(mprj_io_dm[22]), .ZN(n1305) );
  nr02d0 U1209 ( .A1(mprj_io_dm[23]), .A2(n1305), .ZN(n1307) );
  nd02d0 U1210 ( .A1(n1307), .A2(mprj_io_dm[21]), .ZN(n1306) );
  oai211d1 U1211 ( .C1(n1307), .C2(\chip_core/mgmt_io_out_hk [7]), .A(n1306), 
        .B(\chip_core/gpio_control_in_1a[5]/mgmt_ena ), .ZN(n1308) );
  oai21d1 U1212 ( .B1(\chip_core/gpio_control_in_1a[5]/mgmt_ena ), .B2(n1309), 
        .A(n1308), .ZN(mprj_io_out[7]) );
  inv0d0 U1213 ( .I(\chip_core/mgmt_gpio_in [18]), .ZN(n1313) );
  nr23d1 U1214 ( .A1(mprj_io_dm[112]), .A2(\chip_core/mgmt_io_oeb_hk [37]), 
        .A3(mprj_io_dm[113]), .ZN(n1311) );
  nd02d0 U1215 ( .A1(n1311), .A2(mprj_io_dm[111]), .ZN(n1310) );
  oai211d1 U1216 ( .C1(n1311), .C2(\chip_core/mgmt_io_out_hk [37]), .A(n1310), 
        .B(\chip_core/gpio_control_bidir_2[2]/mgmt_ena ), .ZN(n1312) );
  oai21d1 U1217 ( .B1(\chip_core/gpio_control_bidir_2[2]/mgmt_ena ), .B2(n1313), .A(n1312), .ZN(mprj_io_out[37]) );
  inv0d0 U1218 ( .I(\chip_core/mgmt_io_in_hk [12]), .ZN(n1318) );
  inv0d0 U1219 ( .I(mprj_io_dm[37]), .ZN(n1314) );
  nr02d0 U1220 ( .A1(mprj_io_dm[38]), .A2(n1314), .ZN(n1316) );
  nd02d0 U1221 ( .A1(n1316), .A2(mprj_io_dm[36]), .ZN(n1315) );
  oai211d1 U1222 ( .C1(n1316), .C2(\chip_core/mgmt_io_out_hk [12]), .A(n1315), 
        .B(\chip_core/gpio_control_in_1[4]/mgmt_ena ), .ZN(n1317) );
  oai21d1 U1223 ( .B1(\chip_core/gpio_control_in_1[4]/mgmt_ena ), .B2(n1318), 
        .A(n1317), .ZN(mprj_io_out[12]) );
  inv0d0 U1224 ( .I(\chip_core/mgmt_io_in_hk [8]), .ZN(n1323) );
  inv0d0 U1225 ( .I(mprj_io_dm[25]), .ZN(n1319) );
  nr02d0 U1226 ( .A1(mprj_io_dm[26]), .A2(n1319), .ZN(n1321) );
  nd02d0 U1227 ( .A1(n1321), .A2(mprj_io_dm[24]), .ZN(n1320) );
  oai211d1 U1228 ( .C1(n1321), .C2(\chip_core/mgmt_io_out_hk [8]), .A(n1320), 
        .B(\chip_core/gpio_control_in_1[0]/mgmt_ena ), .ZN(n1322) );
  oai21d1 U1229 ( .B1(\chip_core/gpio_control_in_1[0]/mgmt_ena ), .B2(n1323), 
        .A(n1322), .ZN(mprj_io_out[8]) );
  inv0d0 U1230 ( .I(\chip_core/mgmt_io_in_hk [10]), .ZN(n1328) );
  inv0d0 U1231 ( .I(mprj_io_dm[31]), .ZN(n1324) );
  nr02d0 U1232 ( .A1(mprj_io_dm[32]), .A2(n1324), .ZN(n1326) );
  nd02d0 U1233 ( .A1(n1326), .A2(mprj_io_dm[30]), .ZN(n1325) );
  oai211d1 U1234 ( .C1(n1326), .C2(\chip_core/mgmt_io_out_hk [10]), .A(n1325), 
        .B(\chip_core/gpio_control_in_1[2]/mgmt_ena ), .ZN(n1327) );
  oai21d1 U1235 ( .B1(\chip_core/gpio_control_in_1[2]/mgmt_ena ), .B2(n1328), 
        .A(n1327), .ZN(mprj_io_out[10]) );
  inv0d0 U1236 ( .I(\chip_core/mgmt_io_in_hk [3]), .ZN(n1333) );
  inv0d0 U1237 ( .I(mprj_io_dm[10]), .ZN(n1329) );
  nr02d0 U1238 ( .A1(mprj_io_dm[11]), .A2(n1329), .ZN(n1331) );
  nd02d0 U1239 ( .A1(n1331), .A2(mprj_io_dm[9]), .ZN(n1330) );
  oai211d1 U1240 ( .C1(n1331), .C2(\chip_core/mgmt_io_out_hk [3]), .A(n1330), 
        .B(\chip_core/gpio_control_in_1a[1]/mgmt_ena ), .ZN(n1332) );
  oai21d1 U1241 ( .B1(\chip_core/gpio_control_in_1a[1]/mgmt_ena ), .B2(n1333), 
        .A(n1332), .ZN(mprj_io_out[3]) );
  inv0d0 U1242 ( .I(\chip_core/spi_pll_dco_ena ), .ZN(n1727) );
  nd02d0 U1243 ( .A1(\chip_core/rstb_l ), .A2(\chip_core/spi_pll_ena ), .ZN(
        \chip_core/pll/ireset ) );
  inv0d0 U1244 ( .I(\chip_core/pll/ireset ), .ZN(n1072) );
  inv0d0 U1245 ( .I(\chip_core/pll/pll_control/count0 [0]), .ZN(n1462) );
  inv0d0 U1246 ( .I(\chip_core/pll/pll_control/count1 [0]), .ZN(n1461) );
  nr02d0 U1247 ( .A1(n1462), .A2(n1461), .ZN(\intadd_0/CI ) );
  inv0d0 U1248 ( .I(\intadd_0/SUM[1] ), .ZN(n1338) );
  aoi21d1 U1249 ( .B1(n1462), .B2(n1461), .A(\intadd_0/CI ), .ZN(n1380) );
  inv0d0 U1250 ( .I(\intadd_0/SUM[0] ), .ZN(n1334) );
  oai21d1 U1251 ( .B1(\chip_core/spi_pll_div [1]), .B2(n1334), .A(
        \chip_core/spi_pll_div [0]), .ZN(n1335) );
  oaim22d1 U1252 ( .A1(n1380), .A2(n1335), .B1(n1334), .B2(
        \chip_core/spi_pll_div [1]), .ZN(n1337) );
  inv0d0 U1253 ( .I(\chip_core/spi_pll_div [2]), .ZN(n1336) );
  nd02d0 U1254 ( .A1(\intadd_0/SUM[1] ), .A2(n1336), .ZN(n1381) );
  aoi22d1 U1255 ( .A1(\chip_core/spi_pll_div [2]), .A2(n1338), .B1(n1337), 
        .B2(n1381), .ZN(n1345) );
  inv0d0 U1256 ( .I(\intadd_0/SUM[2] ), .ZN(n1340) );
  nr02d0 U1257 ( .A1(\chip_core/spi_pll_div [3]), .A2(n1340), .ZN(n1384) );
  nr02d0 U1258 ( .A1(\intadd_0/n1 ), .A2(\chip_core/pll/pll_control/count1 [4]), .ZN(n1342) );
  inv0d0 U1259 ( .I(\chip_core/spi_pll_div [4]), .ZN(n1339) );
  nr02d0 U1260 ( .A1(\chip_core/pll/pll_control/count0 [4]), .A2(n1339), .ZN(
        n1343) );
  aoi22d1 U1261 ( .A1(n1342), .A2(n1343), .B1(\chip_core/spi_pll_div [3]), 
        .B2(n1340), .ZN(n1344) );
  inv0d0 U1262 ( .I(\chip_core/pll/pll_control/count0 [4]), .ZN(n1464) );
  aoim22d1 U1263 ( .A1(\chip_core/pll/pll_control/count1 [4]), .A2(
        \intadd_0/n1 ), .B1(\chip_core/spi_pll_div [4]), .B2(n1464), .Z(n1341)
         );
  oai21d1 U1264 ( .B1(n1343), .B2(n1342), .A(n1341), .ZN(n1379) );
  oan211d1 U1265 ( .C1(n1345), .C2(n1384), .B(n1344), .A(n1379), .ZN(
        \chip_core/pll/pll_control/N89 ) );
  buffd1 U1266 ( .I(\chip_core/gpio_clock_1_shifted[0] ), .Z(n1776) );
  buffd1 U1267 ( .I(n1776), .Z(n1759) );
  buffd1 U1268 ( .I(\chip_core/gpio_clock_1_shifted[0] ), .Z(n1785) );
  buffd1 U1269 ( .I(n1785), .Z(n1773) );
  buffd1 U1270 ( .I(\chip_core/gpio_clock_1_shifted[0] ), .Z(n1779) );
  buffd1 U1271 ( .I(\chip_core/gpio_clock_1_shifted[0] ), .Z(n1778) );
  buffd1 U1272 ( .I(n1778), .Z(n1762) );
  buffd1 U1273 ( .I(n1778), .Z(n1761) );
  buffd1 U1274 ( .I(\chip_core/gpio_clock_1_shifted[0] ), .Z(n1786) );
  buffd1 U1275 ( .I(n1786), .Z(n1775) );
  buffd1 U1276 ( .I(\chip_core/gpio_clock_1_shifted[0] ), .Z(n1777) );
  buffd1 U1277 ( .I(n1777), .Z(n1760) );
  buffd1 U1278 ( .I(n1786), .Z(n1774) );
  buffd1 U1279 ( .I(\chip_core/gpio_clock_1_shifted[0] ), .Z(n1782) );
  buffd1 U1280 ( .I(n1782), .Z(n1768) );
  buffd1 U1281 ( .I(n1782), .Z(n1767) );
  buffd1 U1282 ( .I(\chip_core/gpio_clock_1_shifted[0] ), .Z(n1780) );
  buffd1 U1283 ( .I(n1780), .Z(n1764) );
  buffd1 U1284 ( .I(n1780), .Z(n1763) );
  buffd1 U1285 ( .I(\chip_core/gpio_clock_1_shifted[0] ), .Z(n1783) );
  buffd1 U1286 ( .I(n1783), .Z(n1769) );
  buffd1 U1287 ( .I(n1783), .Z(n1770) );
  buffd1 U1288 ( .I(\chip_core/gpio_clock_1_shifted[0] ), .Z(n1784) );
  buffd1 U1289 ( .I(n1784), .Z(n1771) );
  buffd1 U1290 ( .I(n1784), .Z(n1772) );
  buffd1 U1291 ( .I(\chip_core/gpio_clock_1_shifted[0] ), .Z(n1781) );
  buffd1 U1292 ( .I(n1781), .Z(n1765) );
  buffd1 U1293 ( .I(n1781), .Z(n1766) );
  buffd1 U1294 ( .I(\chip_core/gpio_load_1_shifted[0] ), .Z(n1854) );
  buffd1 U1295 ( .I(n1854), .Z(n1853) );
  buffd1 U1296 ( .I(n1853), .Z(n1847) );
  buffd1 U1297 ( .I(n1847), .Z(n1852) );
  buffd1 U1298 ( .I(n1852), .Z(n1844) );
  buffd1 U1299 ( .I(n1844), .Z(n1849) );
  buffd1 U1300 ( .I(n1849), .Z(n1851) );
  buffd1 U1301 ( .I(n1851), .Z(n1846) );
  buffd1 U1302 ( .I(n1853), .Z(n1848) );
  buffd1 U1303 ( .I(n1853), .Z(n1843) );
  buffd1 U1304 ( .I(n1852), .Z(n1845) );
  inv0d0 U1305 ( .I(\chip_core/caravel_clk ), .ZN(n1346) );
  inv0d1 U1306 ( .I(n1346), .ZN(n1718) );
  buffd1 U1307 ( .I(\chip_core/gpio_resetn_1_shifted[0] ), .Z(n1826) );
  buffd1 U1308 ( .I(n1826), .Z(n1828) );
  buffd1 U1309 ( .I(n1828), .Z(n1827) );
  buffd1 U1310 ( .I(n1827), .Z(n1836) );
  buffd1 U1311 ( .I(n1836), .Z(n1806) );
  buffd1 U1312 ( .I(n1806), .Z(n1832) );
  buffd1 U1313 ( .I(n1832), .Z(n1830) );
  buffd1 U1314 ( .I(n1788), .Z(n1823) );
  buffd1 U1315 ( .I(n1813), .Z(n1824) );
  buffd1 U1316 ( .I(n1836), .Z(n1825) );
  buffd1 U1317 ( .I(n1836), .Z(n1837) );
  buffd1 U1318 ( .I(n1837), .Z(n1804) );
  buffd1 U1319 ( .I(n1804), .Z(n1831) );
  buffd1 U1320 ( .I(n1831), .Z(n1829) );
  buffd1 U1321 ( .I(n1829), .Z(n1814) );
  buffd1 U1322 ( .I(n1840), .Z(n1834) );
  buffd1 U1323 ( .I(n1834), .Z(n1839) );
  buffd1 U1324 ( .I(n1839), .Z(n1798) );
  inv0d2 U1325 ( .I(\chip_core/pll/creset ), .ZN(n1728) );
  buffd1 U1326 ( .I(n1830), .Z(n1788) );
  nr23d1 U1327 ( .A1(\chip_core/rstb_l ), .A2(\chip_core/porb_l ), .A3(
        \chip_core/ext_reset ), .ZN(n799) );
  buffd1 U1328 ( .I(n799), .Z(n1725) );
  buffd1 U1329 ( .I(n799), .Z(n1726) );
  buffd1 U1330 ( .I(n799), .Z(n1724) );
  buffd1 U1331 ( .I(n1135), .Z(n1722) );
  buffd1 U1332 ( .I(n1135), .Z(n1721) );
  buffd1 U1333 ( .I(n1135), .Z(n1720) );
  buffd1 U1334 ( .I(n1135), .Z(n1719) );
  buffd1 U1335 ( .I(n1135), .Z(n1723) );
  buffd1 U1336 ( .I(n1829), .Z(n1815) );
  buffd1 U1337 ( .I(n1836), .Z(n1841) );
  buffd1 U1338 ( .I(n1841), .Z(n1790) );
  buffd1 U1339 ( .I(n1841), .Z(n1791) );
  buffd1 U1340 ( .I(n1829), .Z(n1835) );
  buffd1 U1341 ( .I(n1835), .Z(n1840) );
  buffd1 U1342 ( .I(n1840), .Z(n1795) );
  buffd1 U1343 ( .I(n1840), .Z(n1796) );
  buffd1 U1344 ( .I(n1829), .Z(n1816) );
  buffd1 U1345 ( .I(n1839), .Z(n1799) );
  buffd1 U1346 ( .I(n1836), .Z(n1810) );
  buffd1 U1347 ( .I(n1836), .Z(n1809) );
  buffd1 U1348 ( .I(n1827), .Z(n1808) );
  buffd1 U1349 ( .I(n1808), .Z(n1822) );
  buffd1 U1350 ( .I(n1822), .Z(n1813) );
  buffd1 U1351 ( .I(n1813), .Z(n1820) );
  buffd1 U1352 ( .I(n1827), .Z(n1817) );
  buffd1 U1353 ( .I(n1837), .Z(n1805) );
  buffd1 U1354 ( .I(n1840), .Z(n1797) );
  buffd1 U1355 ( .I(n1836), .Z(n1842) );
  buffd1 U1356 ( .I(n1842), .Z(n1794) );
  buffd1 U1357 ( .I(n1827), .Z(n1807) );
  buffd1 U1358 ( .I(n1807), .Z(n1821) );
  buffd1 U1359 ( .I(n1827), .Z(n1818) );
  buffd1 U1360 ( .I(n1827), .Z(n1819) );
  buffd1 U1361 ( .I(n1808), .Z(n1812) );
  buffd1 U1362 ( .I(n1836), .Z(n1792) );
  buffd1 U1363 ( .I(n1842), .Z(n1793) );
  buffd1 U1364 ( .I(n1827), .Z(n1833) );
  buffd1 U1365 ( .I(n1833), .Z(n1838) );
  buffd1 U1366 ( .I(n1838), .Z(n1803) );
  buffd1 U1367 ( .I(n1839), .Z(n1800) );
  buffd1 U1368 ( .I(n1830), .Z(n1789) );
  buffd1 U1369 ( .I(n1842), .Z(n1811) );
  buffd1 U1370 ( .I(n1838), .Z(n1801) );
  buffd1 U1371 ( .I(n1838), .Z(n1802) );
  inv0d0 U1372 ( .I(clock_core), .ZN(n533) );
  inv0d0 U1373 ( .I(\chip_core/mgmt_io_in_hk [1]), .ZN(n1350) );
  nr23d1 U1374 ( .A1(mprj_io_dm[4]), .A2(\chip_core/mgmt_io_oeb_hk [1]), .A3(
        mprj_io_dm[5]), .ZN(n1348) );
  nd02d0 U1375 ( .A1(n1348), .A2(mprj_io_dm[3]), .ZN(n1347) );
  oai211d1 U1376 ( .C1(n1348), .C2(\chip_core/mgmt_io_out_hk [1]), .A(n1347), 
        .B(\chip_core/gpio_control_bidir_1[1]/mgmt_ena ), .ZN(n1349) );
  oai21d1 U1377 ( .B1(\chip_core/gpio_control_bidir_1[1]/mgmt_ena ), .B2(n1350), .A(n1349), .ZN(mprj_io_out[1]) );
  inv0d0 U1378 ( .I(\chip_core/mprj/wbs_dat_o_debug [26]), .ZN(n1656) );
  buffd1 U1379 ( .I(n1351), .Z(n1352) );
  nr02d0 U1380 ( .A1(n1656), .A2(n1352), .ZN(n1107) );
  inv0d0 U1381 ( .I(\chip_core/mprj/wbs_dat_o_debug [17]), .ZN(n1627) );
  nr02d0 U1382 ( .A1(n1627), .A2(n1352), .ZN(n1116) );
  inv0d0 U1383 ( .I(\chip_core/mprj/wbs_dat_o_debug [28]), .ZN(n1662) );
  inv0d0 U1384 ( .I(\chip_core/mprj/wbs_dat_o_debug [31]), .ZN(n1671) );
  nr02d0 U1385 ( .A1(n1671), .A2(n1352), .ZN(n1102) );
  inv0d0 U1386 ( .I(\chip_core/mprj/wbs_dat_o_debug [29]), .ZN(n1665) );
  nr02d0 U1387 ( .A1(n1665), .A2(n1352), .ZN(n1104) );
  inv0d0 U1388 ( .I(\chip_core/mprj/wbs_dat_o_debug [7]), .ZN(n1596) );
  nr02d0 U1389 ( .A1(n1596), .A2(n1352), .ZN(n1126) );
  inv0d0 U1390 ( .I(\chip_core/mprj/wbs_dat_o_debug [5]), .ZN(n1590) );
  nr02d0 U1391 ( .A1(n1590), .A2(n1352), .ZN(n1128) );
  inv0d0 U1392 ( .I(\chip_core/mprj/wbs_dat_o_debug [6]), .ZN(n1593) );
  nr02d0 U1393 ( .A1(n1593), .A2(n1352), .ZN(n1127) );
  inv0d0 U1394 ( .I(\chip_core/mprj/wbs_dat_o_debug [3]), .ZN(n1584) );
  inv0d0 U1395 ( .I(\chip_core/mprj/wbs_dat_o_debug [22]), .ZN(n1643) );
  nr02d0 U1396 ( .A1(n1643), .A2(n1352), .ZN(n1111) );
  inv0d0 U1397 ( .I(\chip_core/mprj/wbs_dat_o_debug [2]), .ZN(n1581) );
  nr02d0 U1398 ( .A1(n1581), .A2(n1352), .ZN(n1131) );
  inv0d0 U1399 ( .I(\chip_core/mprj/wbs_dat_o_debug [27]), .ZN(n1659) );
  nr02d0 U1400 ( .A1(n1659), .A2(n1352), .ZN(n1106) );
  inv0d0 U1401 ( .I(\chip_core/mprj/wbs_dat_o_debug [30]), .ZN(n1669) );
  nr02d0 U1402 ( .A1(n1669), .A2(n1352), .ZN(n1103) );
  inv0d0 U1403 ( .I(\chip_core/mprj/wbs_dat_o_debug [25]), .ZN(n1653) );
  nr02d0 U1404 ( .A1(n1653), .A2(n1352), .ZN(n1108) );
  inv0d0 U1405 ( .I(\chip_core/mprj/wbs_dat_o_debug [24]), .ZN(n1649) );
  nr02d0 U1406 ( .A1(n1649), .A2(n1352), .ZN(n1109) );
  inv0d0 U1407 ( .I(\chip_core/mprj/wbs_dat_o_debug [19]), .ZN(n1634) );
  nr02d0 U1408 ( .A1(n1634), .A2(n1352), .ZN(n1114) );
  inv0d0 U1409 ( .I(\chip_core/mprj/wbs_dat_o_debug [4]), .ZN(n1587) );
  nr02d0 U1410 ( .A1(n1587), .A2(n1352), .ZN(n1129) );
  inv0d0 U1411 ( .I(\chip_core/mprj/wbs_ack_o_debug ), .ZN(n1353) );
  an02d0 U1412 ( .A1(\chip_core/gpio_control_in_2[3]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_2[3]/gpio_outenb ), .Z(mprj_io_oeb[22]) );
  an02d0 U1413 ( .A1(\chip_core/gpio_control_in_1a[3]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_1a[3]/gpio_outenb ), .Z(mprj_io_oeb[5]) );
  an02d0 U1414 ( .A1(\chip_core/gpio_control_in_1[10]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_1[10]/gpio_outenb ), .Z(mprj_io_oeb[18]) );
  an02d0 U1415 ( .A1(\chip_core/gpio_control_in_2[10]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_2[10]/gpio_outenb ), .Z(mprj_io_oeb[29]) );
  an02d0 U1416 ( .A1(\chip_core/gpio_control_in_2[2]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_2[2]/gpio_outenb ), .Z(mprj_io_oeb[21]) );
  an02d0 U1417 ( .A1(\chip_core/gpio_control_in_2[6]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_2[6]/gpio_outenb ), .Z(mprj_io_oeb[25]) );
  an02d0 U1418 ( .A1(\chip_core/gpio_control_in_1[9]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_1[9]/gpio_outenb ), .Z(mprj_io_oeb[17]) );
  an02d0 U1419 ( .A1(\chip_core/gpio_control_in_2[4]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_2[4]/gpio_outenb ), .Z(mprj_io_oeb[23]) );
  an02d0 U1420 ( .A1(\chip_core/gpio_control_in_2[7]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_2[7]/gpio_outenb ), .Z(mprj_io_oeb[26]) );
  an02d0 U1421 ( .A1(\chip_core/gpio_control_in_1[0]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_1[0]/gpio_outenb ), .Z(mprj_io_oeb[8]) );
  an03d0 U1422 ( .A1(\chip_core/gpio_control_bidir_2[2]/mgmt_ena ), .A2(
        \chip_core/mgmt_io_oeb_hk [37]), .A3(
        \chip_core/gpio_control_bidir_2[2]/gpio_outenb ), .Z(mprj_io_oeb[37])
         );
  an02d0 U1423 ( .A1(\chip_core/gpio_control_in_2[15]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_2[15]/gpio_outenb ), .Z(mprj_io_oeb[34]) );
  an02d0 U1424 ( .A1(\chip_core/gpio_control_in_2[1]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_2[1]/gpio_outenb ), .Z(mprj_io_oeb[20]) );
  an02d0 U1425 ( .A1(\chip_core/gpio_control_in_2[8]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_2[8]/gpio_outenb ), .Z(mprj_io_oeb[27]) );
  an02d0 U1426 ( .A1(\chip_core/gpio_control_in_1a[5]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_1a[5]/gpio_outenb ), .Z(mprj_io_oeb[7]) );
  an02d0 U1427 ( .A1(\chip_core/gpio_control_in_2[11]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_2[11]/gpio_outenb ), .Z(mprj_io_oeb[30]) );
  an02d0 U1428 ( .A1(\chip_core/gpio_control_in_1a[2]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_1a[2]/gpio_outenb ), .Z(mprj_io_oeb[4]) );
  an02d0 U1429 ( .A1(\chip_core/gpio_control_in_1[1]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_1[1]/gpio_outenb ), .Z(mprj_io_oeb[9]) );
  an02d0 U1430 ( .A1(\chip_core/gpio_control_in_2[0]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_2[0]/gpio_outenb ), .Z(mprj_io_oeb[19]) );
  an02d0 U1431 ( .A1(\chip_core/gpio_control_in_2[9]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_2[9]/gpio_outenb ), .Z(mprj_io_oeb[28]) );
  an03d0 U1432 ( .A1(\chip_core/gpio_control_bidir_2[1]/mgmt_ena ), .A2(
        \chip_core/mgmt_io_oeb_hk [36]), .A3(
        \chip_core/gpio_control_bidir_2[1]/gpio_outenb ), .Z(mprj_io_oeb[36])
         );
  an02d0 U1433 ( .A1(\chip_core/gpio_control_in_2[14]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_2[14]/gpio_outenb ), .Z(mprj_io_oeb[33]) );
  an02d0 U1434 ( .A1(\chip_core/gpio_control_in_2[13]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_2[13]/gpio_outenb ), .Z(mprj_io_oeb[32]) );
  an02d0 U1435 ( .A1(\chip_core/gpio_control_in_1a[4]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_1a[4]/gpio_outenb ), .Z(mprj_io_oeb[6]) );
  an02d0 U1436 ( .A1(\chip_core/gpio_control_in_1[2]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_1[2]/gpio_outenb ), .Z(mprj_io_oeb[10]) );
  an02d0 U1437 ( .A1(\chip_core/gpio_control_in_1[6]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_1[6]/gpio_outenb ), .Z(mprj_io_oeb[14]) );
  an02d0 U1438 ( .A1(\chip_core/gpio_control_in_2[5]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_2[5]/gpio_outenb ), .Z(mprj_io_oeb[24]) );
  an02d0 U1439 ( .A1(\chip_core/gpio_control_in_1a[0]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_1a[0]/gpio_outenb ), .Z(mprj_io_oeb[2]) );
  an02d0 U1440 ( .A1(\chip_core/gpio_control_in_1[8]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_1[8]/gpio_outenb ), .Z(mprj_io_oeb[16]) );
  an03d0 U1441 ( .A1(\chip_core/gpio_control_bidir_1[0]/mgmt_ena ), .A2(
        \chip_core/mgmt_io_oeb_hk [0]), .A3(
        \chip_core/gpio_control_bidir_1[0]/gpio_outenb ), .Z(mprj_io_oeb[0])
         );
  an03d0 U1442 ( .A1(\chip_core/gpio_control_bidir_2[0]/mgmt_ena ), .A2(
        \chip_core/mgmt_io_oeb_hk [35]), .A3(
        \chip_core/gpio_control_bidir_2[0]/gpio_outenb ), .Z(mprj_io_oeb[35])
         );
  an02d0 U1443 ( .A1(\chip_core/gpio_control_in_1[7]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_1[7]/gpio_outenb ), .Z(mprj_io_oeb[15]) );
  an02d0 U1444 ( .A1(\chip_core/gpio_control_in_1[3]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_1[3]/gpio_outenb ), .Z(mprj_io_oeb[11]) );
  an02d0 U1445 ( .A1(\chip_core/gpio_control_in_2[12]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_2[12]/gpio_outenb ), .Z(mprj_io_oeb[31]) );
  an02d0 U1446 ( .A1(\chip_core/gpio_control_in_1a[1]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_1a[1]/gpio_outenb ), .Z(mprj_io_oeb[3]) );
  an02d0 U1447 ( .A1(\chip_core/gpio_control_in_1[4]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_1[4]/gpio_outenb ), .Z(mprj_io_oeb[12]) );
  an02d0 U1448 ( .A1(\chip_core/gpio_control_in_1[5]/mgmt_ena ), .A2(
        \chip_core/gpio_control_in_1[5]/gpio_outenb ), .Z(mprj_io_oeb[13]) );
  inv0d0 U1449 ( .I(\chip_core/pll/pll_control/tint [4]), .ZN(n1429) );
  inv0d0 U1450 ( .I(\chip_core/pll/pll_control/tint [3]), .ZN(n1426) );
  nd02d0 U1451 ( .A1(n1429), .A2(n1426), .ZN(n1406) );
  inv0d0 U1452 ( .I(n1406), .ZN(n1355) );
  inv0d1 U1453 ( .I(\chip_core/spi_pll_dco_ena ), .ZN(n1439) );
  nd02d1 U1454 ( .A1(\chip_core/pll/pll_control/tint [0]), .A2(n1439), .ZN(
        n1447) );
  inv0d0 U1455 ( .I(n1727), .ZN(n1442) );
  nd02d0 U1456 ( .A1(n1442), .A2(\chip_core/spi_pll_trim [9]), .ZN(n1354) );
  nr02d0 U1457 ( .A1(\chip_core/pll/pll_control/tint [1]), .A2(
        \chip_core/pll/pll_control/tint [2]), .ZN(n1420) );
  oai21d1 U1458 ( .B1(n1420), .B2(n1426), .A(n1429), .ZN(n1416) );
  nd02d0 U1459 ( .A1(n1416), .A2(n1439), .ZN(n1405) );
  oai211d1 U1460 ( .C1(n1355), .C2(n1447), .A(n1354), .B(n1405), .ZN(
        \chip_core/pll/itrim [9]) );
  aoim21d1 U1461 ( .B1(\chip_core/spi_pll_trim [3]), .B2(n1439), .A(n1415), 
        .ZN(\chip_core/pll/itrim [3]) );
  inv0d0 U1462 ( .I(\chip_core/pll/pll_control/tint [1]), .ZN(n1425) );
  inv0d0 U1463 ( .I(\chip_core/pll/pll_control/tint [2]), .ZN(n1424) );
  nr02d0 U1464 ( .A1(n1425), .A2(n1424), .ZN(n1433) );
  inv0d0 U1465 ( .I(n1433), .ZN(n1422) );
  aoi21d1 U1466 ( .B1(n1355), .B2(n1422), .A(n1442), .ZN(n1412) );
  aoi21d1 U1467 ( .B1(\chip_core/spi_pll_dco_ena ), .B2(
        \chip_core/spi_pll_trim [12]), .A(n1412), .ZN(n1087) );
  nd02d0 U1468 ( .A1(n1072), .A2(n1087), .ZN(\chip_core/pll/ringosc/iss/ctrl0 ) );
  inv0d0 U1469 ( .I(n1439), .ZN(n1445) );
  aoi211d1 U1470 ( .C1(\chip_core/pll/pll_control/tint [3]), .C2(n1433), .A(
        \chip_core/pll/pll_control/tint [4]), .B(n1445), .ZN(n1411) );
  aoim21d1 U1471 ( .B1(\chip_core/spi_pll_trim [13]), .B2(n1439), .A(n1411), 
        .ZN(\chip_core/pll/itrim [13]) );
  inv0d0 U1472 ( .I(\chip_core/clock_ctrl/divider/syncN [0]), .ZN(n1704) );
  inv0d0 U1473 ( .I(\chip_core/clock_ctrl/divider/even_0/counter [0]), .ZN(
        n1705) );
  oan211d1 U1474 ( .C1(\chip_core/clock_ctrl/divider/even_0/counter [2]), .C2(
        \chip_core/clock_ctrl/divider/even_0/counter [1]), .B(n1704), .A(n1705), .ZN(n1356) );
  inv0d0 U1475 ( .I(\chip_core/clock_ctrl/divider/syncN [1]), .ZN(n1503) );
  nd02d0 U1476 ( .A1(n1704), .A2(n1503), .ZN(n1371) );
  nr02d0 U1477 ( .A1(\chip_core/clock_ctrl/divider/syncN [0]), .A2(
        \chip_core/clock_ctrl/divider/even_0/counter [0]), .ZN(n1710) );
  aoi21d1 U1478 ( .B1(n1356), .B2(n1371), .A(n1710), .ZN(n805) );
  inv0d0 U1479 ( .I(\chip_core/clock_ctrl/divider2/odd_0/counter [2]), .ZN(
        n1682) );
  nr02d0 U1480 ( .A1(\chip_core/clock_ctrl/divider2/syncN [2]), .A2(
        \chip_core/clock_ctrl/divider2/syncN [1]), .ZN(n1480) );
  inv0d0 U1481 ( .I(\chip_core/clock_ctrl/divider2/syncN [0]), .ZN(n1697) );
  nr02d0 U1482 ( .A1(n1480), .A2(n1697), .ZN(n1472) );
  inv0d0 U1483 ( .I(n1472), .ZN(n1681) );
  inv0d0 U1484 ( .I(\chip_core/clock_ctrl/divider2/odd_0/rst_pulse ), .ZN(
        n1485) );
  oai21d1 U1485 ( .B1(\chip_core/clock_ctrl/divider2/odd_0/counter [1]), .B2(
        n1681), .A(n1485), .ZN(n1357) );
  aon211d1 U1486 ( .C1(\chip_core/clock_ctrl/divider2/odd_0/counter [0]), .C2(
        n1682), .B(\chip_core/clock_ctrl/divider2/odd_0/rst_pulse ), .A(n1357), 
        .ZN(n1686) );
  inv0d0 U1487 ( .I(n1686), .ZN(n1678) );
  nd02d0 U1488 ( .A1(n1472), .A2(n1485), .ZN(n1680) );
  nr03d0 U1489 ( .A1(\chip_core/clock_ctrl/divider2/odd_0/counter [1]), .A2(
        \chip_core/clock_ctrl/divider2/odd_0/counter [0]), .A3(n1680), .ZN(
        n1683) );
  nd02d0 U1490 ( .A1(\chip_core/clock_ctrl/divider2/odd_0/counter [1]), .A2(
        n1485), .ZN(n1358) );
  aoim21d1 U1491 ( .B1(n1681), .B2(
        \chip_core/clock_ctrl/divider2/odd_0/counter [0]), .A(n1358), .ZN(
        n1359) );
  aoi211d1 U1492 ( .C1(\chip_core/clock_ctrl/divider2/syncN [1]), .C2(n1678), 
        .A(n1683), .B(n1359), .ZN(n814) );
  inv0d0 U1493 ( .I(\chip_core/clock_ctrl/divider/syncN [2]), .ZN(n1521) );
  aoi21d1 U1494 ( .B1(n1521), .B2(n1503), .A(n1704), .ZN(n1505) );
  inv0d0 U1495 ( .I(n1505), .ZN(n1509) );
  nr02d0 U1496 ( .A1(n1509), .A2(
        \chip_core/clock_ctrl/divider/odd_0/rst_pulse ), .ZN(n1495) );
  nr02d0 U1497 ( .A1(\chip_core/clock_ctrl/divider/odd_0/initial_begin [2]), 
        .A2(\chip_core/clock_ctrl/divider/odd_0/initial_begin [1]), .ZN(n1499)
         );
  inv0d0 U1498 ( .I(n1499), .ZN(n1360) );
  inv0d0 U1499 ( .I(\chip_core/clock_ctrl/divider/odd_0/initial_begin [0]), 
        .ZN(n1374) );
  aoi21d1 U1500 ( .B1(n1374), .B2(n1505), .A(
        \chip_core/clock_ctrl/divider/odd_0/rst_pulse ), .ZN(n1494) );
  nd02d0 U1501 ( .A1(n1494), .A2(
        \chip_core/clock_ctrl/divider/odd_0/initial_begin [1]), .ZN(n1362) );
  nd02d0 U1502 ( .A1(\chip_core/clock_ctrl/divider/syncN [2]), .A2(n1371), 
        .ZN(n1497) );
  oai211d1 U1503 ( .C1(\chip_core/clock_ctrl/divider/syncN [2]), .C2(n1371), 
        .A(\chip_core/clock_ctrl/divider/odd_0/rst_pulse ), .B(n1497), .ZN(
        n1361) );
  oai211d1 U1504 ( .C1(n1373), .C2(
        \chip_core/clock_ctrl/divider/odd_0/initial_begin [1]), .A(n1362), .B(
        n1361), .ZN(n1040) );
  inv0d0 U1505 ( .I(\chip_core/clock_ctrl/divider/odd_0/counter [0]), .ZN(
        n1363) );
  aoi21d1 U1506 ( .B1(n1505), .B2(n1363), .A(
        \chip_core/clock_ctrl/divider/odd_0/rst_pulse ), .ZN(n1365) );
  nd02d0 U1507 ( .A1(n1495), .A2(n1363), .ZN(n1514) );
  nr04d0 U1508 ( .A1(\chip_core/clock_ctrl/divider/odd_0/counter [2]), .A2(
        \chip_core/clock_ctrl/divider/odd_0/counter [1]), .A3(n1509), .A4(
        n1363), .ZN(n1694) );
  nr02d0 U1509 ( .A1(\chip_core/clock_ctrl/divider/odd_0/rst_pulse ), .A2(
        n1694), .ZN(n1512) );
  oai22d1 U1510 ( .A1(\chip_core/clock_ctrl/divider/odd_0/counter [1]), .A2(
        n1514), .B1(n1512), .B2(n1503), .ZN(n1364) );
  aoi21d1 U1511 ( .B1(\chip_core/clock_ctrl/divider/odd_0/counter [1]), .B2(
        n1365), .A(n1364), .ZN(n810) );
  nr03d0 U1512 ( .A1(\chip_core/clock_ctrl/divider2/odd_0/initial_begin [2]), 
        .A2(\chip_core/clock_ctrl/divider2/odd_0/initial_begin [1]), .A3(n1680), .ZN(n1488) );
  inv0d0 U1513 ( .I(\chip_core/clock_ctrl/divider2/odd_0/counter2 [0]), .ZN(
        n1366) );
  nr02d0 U1514 ( .A1(\chip_core/clock_ctrl/divider2/odd_0/counter2 [2]), .A2(
        \chip_core/clock_ctrl/divider2/odd_0/counter2 [1]), .ZN(n1486) );
  aoi31d1 U1515 ( .B1(n1488), .B2(
        \chip_core/clock_ctrl/divider2/odd_0/counter2 [0]), .B3(n1486), .A(
        \chip_core/clock_ctrl/divider2/odd_0/rst_pulse ), .ZN(n1491) );
  nd02d0 U1516 ( .A1(n1488), .A2(n1366), .ZN(n1493) );
  oai321d1 U1517 ( .C1(n1488), .C2(
        \chip_core/clock_ctrl/divider2/odd_0/rst_pulse ), .C3(n1366), .B1(
        n1491), .B2(n1697), .A(n1493), .ZN(n1044) );
  nr13d1 U1518 ( .A1(n1495), .A2(
        \chip_core/clock_ctrl/divider/odd_0/initial_begin [2]), .A3(
        \chip_core/clock_ctrl/divider/odd_0/initial_begin [1]), .ZN(n1517) );
  inv0d0 U1519 ( .I(\chip_core/clock_ctrl/divider/odd_0/counter2 [0]), .ZN(
        n1498) );
  nr02d0 U1520 ( .A1(\chip_core/clock_ctrl/divider/odd_0/counter2 [2]), .A2(
        \chip_core/clock_ctrl/divider/odd_0/counter2 [1]), .ZN(n1515) );
  aoi31d1 U1521 ( .B1(n1517), .B2(
        \chip_core/clock_ctrl/divider/odd_0/counter2 [0]), .B3(n1515), .A(
        \chip_core/clock_ctrl/divider/odd_0/rst_pulse ), .ZN(n1520) );
  nd02d0 U1522 ( .A1(n1517), .A2(n1498), .ZN(n1523) );
  oai321d1 U1523 ( .C1(n1517), .C2(
        \chip_core/clock_ctrl/divider/odd_0/rst_pulse ), .C3(n1498), .B1(n1520), .B2(n1704), .A(n1523), .ZN(n1034) );
  nr02d0 U1524 ( .A1(\chip_core/clock_ctrl/divider2/odd_0/initial_begin [2]), 
        .A2(\chip_core/clock_ctrl/divider2/odd_0/initial_begin [1]), .ZN(n1367) );
  oai21d1 U1525 ( .B1(n1367), .B2(n1681), .A(n1485), .ZN(n1370) );
  inv0d0 U1526 ( .I(\chip_core/clock_ctrl/divider2/odd_0/initial_begin [0]), 
        .ZN(n1471) );
  inv0d0 U1527 ( .I(n1367), .ZN(n1481) );
  inv0d0 U1528 ( .I(n1680), .ZN(n1473) );
  nr02d0 U1529 ( .A1(\chip_core/clock_ctrl/divider2/syncN [0]), .A2(
        \chip_core/clock_ctrl/divider2/syncN [1]), .ZN(n1368) );
  aon211d1 U1530 ( .C1(\chip_core/clock_ctrl/divider2/syncN [1]), .C2(
        \chip_core/clock_ctrl/divider2/syncN [0]), .B(n1368), .A(
        \chip_core/clock_ctrl/divider2/odd_0/rst_pulse ), .ZN(n1369) );
  oai211d1 U1531 ( .C1(n1370), .C2(n1471), .A(n1476), .B(n1369), .ZN(n1048) );
  inv0d0 U1532 ( .I(\chip_core/clock_ctrl/divider/odd_0/rst_pulse ), .ZN(n1508) );
  oai21d1 U1533 ( .B1(n1499), .B2(n1509), .A(n1508), .ZN(n1375) );
  inv0d0 U1534 ( .I(n1371), .ZN(n1398) );
  aon211d1 U1535 ( .C1(\chip_core/clock_ctrl/divider/syncN [1]), .C2(
        \chip_core/clock_ctrl/divider/syncN [0]), .B(n1398), .A(
        \chip_core/clock_ctrl/divider/odd_0/rst_pulse ), .ZN(n1372) );
  oai211d1 U1536 ( .C1(n1375), .C2(n1374), .A(n1373), .B(n1372), .ZN(n1041) );
  inv0d0 U1537 ( .I(\chip_core/pll/pll_control/oscbuf [1]), .ZN(n1376) );
  mx02d1 U1538 ( .I0(n1376), .I1(\chip_core/pll/pll_control/oscbuf [1]), .S(
        \chip_core/pll/pll_control/oscbuf [2]), .Z(n1467) );
  inv0d1 U1539 ( .I(n1467), .ZN(n1466) );
  inv0d0 U1540 ( .I(\chip_core/pll/pll_control/count0 [3]), .ZN(n1459) );
  aoim22d1 U1541 ( .A1(n1466), .A2(n1459), .B1(
        \chip_core/pll/pll_control/count1 [3]), .B2(n1466), .Z(n1061) );
  nd02d0 U1542 ( .A1(\chip_core/pll/pll_control/count0 [0]), .A2(
        \chip_core/pll/pll_control/count0 [1]), .ZN(n1453) );
  inv0d0 U1543 ( .I(n1453), .ZN(n1455) );
  nd02d0 U1544 ( .A1(\chip_core/pll/pll_control/count0 [2]), .A2(n1455), .ZN(
        n1458) );
  inv0d0 U1545 ( .I(n1458), .ZN(n1460) );
  nd02d0 U1546 ( .A1(\chip_core/pll/pll_control/count0 [3]), .A2(n1460), .ZN(
        n1457) );
  aoi21d1 U1547 ( .B1(n1464), .B2(n1457), .A(n1466), .ZN(n1064) );
  nd03d0 U1548 ( .A1(\chip_core/clock_ctrl/divider/odd_0/counter [0]), .A2(
        n1508), .A3(n1509), .ZN(n1377) );
  oai211d1 U1549 ( .C1(n1512), .C2(n1704), .A(n1514), .B(n1377), .ZN(n1036) );
  aoim21d1 U1550 ( .B1(n1464), .B2(n1457), .A(n1466), .ZN(n1378) );
  nd02d0 U1551 ( .A1(\chip_core/pll/pll_control/count0 [0]), .A2(n1378), .ZN(
        n1067) );
  inv0d0 U1552 ( .I(\chip_core/pll/pll_control/prep [0]), .ZN(n1451) );
  nd02d0 U1553 ( .A1(n1467), .A2(n1451), .ZN(n1071) );
  inv0d0 U1554 ( .I(\chip_core/pll/pll_control/prep [1]), .ZN(n1450) );
  nr04d0 U1555 ( .A1(\chip_core/pll/pll_control/tval [0]), .A2(
        \chip_core/pll/pll_control/tval [1]), .A3(
        \chip_core/pll/pll_control/tint [0]), .A4(n1406), .ZN(n1392) );
  inv0d0 U1556 ( .I(\chip_core/pll/pll_control/N89 ), .ZN(n1391) );
  nd02d0 U1557 ( .A1(\chip_core/pll/pll_control/tint [4]), .A2(
        \chip_core/pll/pll_control/tint [3]), .ZN(n1440) );
  nd04d0 U1558 ( .A1(\chip_core/pll/pll_control/tval [0]), .A2(n1433), .A3(
        \chip_core/pll/pll_control/tval [1]), .A4(
        \chip_core/pll/pll_control/tint [0]), .ZN(n1389) );
  inv0d0 U1559 ( .I(n1379), .ZN(n1387) );
  inv0d0 U1560 ( .I(\chip_core/spi_pll_div [1]), .ZN(n1385) );
  inv0d0 U1561 ( .I(n1380), .ZN(n1382) );
  oai21d1 U1562 ( .B1(\chip_core/spi_pll_div [0]), .B2(n1382), .A(n1381), .ZN(
        n1383) );
  aoi211d1 U1563 ( .C1(\intadd_0/SUM[0] ), .C2(n1385), .A(n1384), .B(n1383), 
        .ZN(n1386) );
  aoi21d1 U1564 ( .B1(n1387), .B2(n1386), .A(\chip_core/pll/pll_control/N89 ), 
        .ZN(n1388) );
  oai21d1 U1565 ( .B1(n1440), .B2(n1389), .A(n1388), .ZN(n1390) );
  aon211d1 U1566 ( .C1(n1420), .C2(n1392), .B(n1391), .A(n1390), .ZN(n1393) );
  nd04d0 U1567 ( .A1(\chip_core/pll/pll_control/prep [0]), .A2(
        \chip_core/pll/pll_control/prep [2]), .A3(n1452), .A4(n1393), .ZN(
        n1397) );
  mx02d1 U1568 ( .I0(\chip_core/pll/pll_control/N65 ), .I1(
        \chip_core/pll/pll_control/tint [0]), .S(n1397), .Z(n1056) );
  xr02d1 U1569 ( .A1(\chip_core/pll/pll_control/tint [4]), .A2(
        \chip_core/pll/pll_control/N89 ), .Z(n1394) );
  xr02d1 U1570 ( .A1(n1394), .A2(\DP_OP_229J4_123_275/n2 ), .Z(n1395) );
  mx02d1 U1571 ( .I0(n1395), .I1(\chip_core/pll/pll_control/tint [4]), .S(
        n1397), .Z(n1052) );
  mx02d1 U1572 ( .I0(\chip_core/pll/pll_control/N68 ), .I1(
        \chip_core/pll/pll_control/tint [3]), .S(n1397), .Z(n1053) );
  mx02d1 U1573 ( .I0(\chip_core/pll/pll_control/N64 ), .I1(
        \chip_core/pll/pll_control/tval [1]), .S(n1397), .Z(n1057) );
  mx02d1 U1574 ( .I0(\chip_core/pll/pll_control/N67 ), .I1(
        \chip_core/pll/pll_control/tint [2]), .S(n1397), .Z(n1054) );
  inv0d0 U1575 ( .I(\chip_core/pll/pll_control/tval [0]), .ZN(n1396) );
  mx02d1 U1576 ( .I0(n1396), .I1(\chip_core/pll/pll_control/tval [0]), .S(
        n1397), .Z(n1058) );
  mx02d1 U1577 ( .I0(\chip_core/pll/pll_control/N66 ), .I1(
        \chip_core/pll/pll_control/tint [1]), .S(n1397), .Z(n1055) );
  inv0d0 U1578 ( .I(\chip_core/clock_ctrl/divider/odd_0/out_counter ), .ZN(
        n1693) );
  aoi22d1 U1579 ( .A1(\chip_core/clock_ctrl/divider/odd_0/out_counter2 ), .A2(
        n1693), .B1(\chip_core/clock_ctrl/divider/odd_0/out_counter ), .B2(
        n1712), .ZN(n1401) );
  oai211d1 U1580 ( .C1(\chip_core/clock_ctrl/divider/syncN [2]), .C2(
        \chip_core/clock_ctrl/divider/syncN [1]), .A(
        \chip_core/clock_ctrl/divider/even_0/out_counter ), .B(n1704), .ZN(
        n1400) );
  nd03d0 U1581 ( .A1(n1398), .A2(\chip_core/pll/ringosc/d [6]), .A3(n1521), 
        .ZN(n1399) );
  oai211d1 U1582 ( .C1(n1401), .C2(n1509), .A(n1400), .B(n1399), .ZN(
        \chip_core/clock_ctrl/pll_clk_divided ) );
  an03d0 U1583 ( .A1(\chip_core/gpio_control_bidir_1[1]/mgmt_ena ), .A2(
        \chip_core/mgmt_io_oeb_hk [1]), .A3(
        \chip_core/gpio_control_bidir_1[1]/gpio_outenb ), .Z(mprj_io_oeb[1])
         );
  buffd1 U1584 ( .I(\chip_core/gpio_clock_1_shifted[0] ), .Z(n1787) );
  buffd1 U1585 ( .I(\chip_core/gpio_load_1_shifted[0] ), .Z(n1850) );
  buffd1 U1586 ( .I(\chip_core/caravel_clk ), .Z(n1713) );
  buffd1 U1587 ( .I(\chip_core/caravel_clk ), .Z(n1714) );
  buffd1 U1588 ( .I(\chip_core/caravel_clk ), .Z(n1715) );
  buffd1 U1589 ( .I(\chip_core/caravel_clk ), .Z(n1716) );
  buffd1 U1590 ( .I(\chip_core/caravel_clk ), .Z(n1717) );
  inv0d0 U1591 ( .I(\chip_core/pll/ringosc/dstage[0].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[0].id/d2 ) );
  inv0d0 U1592 ( .I(\chip_core/pll/ringosc/iss/d1 ), .ZN(
        \chip_core/pll/ringosc/iss/d2 ) );
  inv0d0 U1593 ( .I(\chip_core/pll/ringosc/dstage[11].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[11].id/d2 ) );
  inv0d0 U1594 ( .I(\chip_core/pll/ringosc/dstage[10].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[10].id/d2 ) );
  inv0d0 U1595 ( .I(\chip_core/pll/ringosc/dstage[9].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[9].id/d2 ) );
  inv0d0 U1596 ( .I(\chip_core/pll/ringosc/dstage[8].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[8].id/d2 ) );
  inv0d0 U1597 ( .I(\chip_core/pll/ringosc/dstage[7].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[7].id/d2 ) );
  inv0d0 U1598 ( .I(\chip_core/pll/ringosc/dstage[6].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[6].id/d2 ) );
  inv0d0 U1599 ( .I(\chip_core/pll/ringosc/dstage[5].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[5].id/d2 ) );
  inv0d0 U1600 ( .I(\chip_core/pll/ringosc/dstage[4].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[4].id/d2 ) );
  inv0d0 U1601 ( .I(\chip_core/pll/ringosc/dstage[3].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[3].id/d2 ) );
  inv0d0 U1602 ( .I(\chip_core/pll/ringosc/dstage[2].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[2].id/d2 ) );
  inv0d0 U1603 ( .I(\chip_core/pll/ringosc/dstage[1].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[1].id/d2 ) );
  inv0d0 U1604 ( .I(n1480), .ZN(n1402) );
  aoi22d1 U1605 ( .A1(n1480), .A2(\chip_core/pll/ringosc/d [0]), .B1(
        \chip_core/clock_ctrl/divider2/even_0/out_counter ), .B2(n1402), .ZN(
        n1404) );
  aoim22d1 U1606 ( .A1(\chip_core/clock_ctrl/divider2/odd_0/out_counter ), 
        .A2(n1711), .B1(n1711), .B2(
        \chip_core/clock_ctrl/divider2/odd_0/out_counter ), .Z(n1403) );
  oai22d1 U1607 ( .A1(\chip_core/clock_ctrl/divider2/syncN [0]), .A2(n1404), 
        .B1(n1403), .B2(n1681), .ZN(\chip_core/clock_ctrl/pll_clk90_divided )
         );
  nd02d0 U1608 ( .A1(n1415), .A2(n1425), .ZN(n1408) );
  oai22d1 U1609 ( .A1(\chip_core/pll/pll_control/tint [0]), .A2(n1408), .B1(
        \chip_core/spi_pll_trim [0]), .B2(n1439), .ZN(n1099) );
  inv0d0 U1610 ( .I(n1099), .ZN(\chip_core/pll/itrim [0]) );
  aoi21d1 U1611 ( .B1(\chip_core/pll/pll_control/tint [3]), .B2(
        \chip_core/pll/pll_control/tint [2]), .A(
        \chip_core/pll/pll_control/tint [4]), .ZN(n1409) );
  nd02d0 U1612 ( .A1(n1409), .A2(n1439), .ZN(n1417) );
  oai21d1 U1613 ( .B1(\chip_core/spi_pll_trim [1]), .B2(n1439), .A(n1417), 
        .ZN(n1098) );
  inv0d0 U1614 ( .I(n1098), .ZN(\chip_core/pll/itrim [1]) );
  aoi22d1 U1615 ( .A1(n1445), .A2(\chip_core/spi_pll_trim [2]), .B1(n1406), 
        .B2(n1439), .ZN(n1097) );
  inv0d0 U1616 ( .I(n1097), .ZN(\chip_core/pll/itrim [2]) );
  inv0d0 U1617 ( .I(\chip_core/pll/itrim [3]), .ZN(n1096) );
  oaim21d1 U1618 ( .B1(\chip_core/spi_pll_dco_ena ), .B2(
        \chip_core/spi_pll_trim [4]), .A(n1405), .ZN(\chip_core/pll/itrim [4])
         );
  inv0d0 U1619 ( .I(\chip_core/pll/itrim [4]), .ZN(n1095) );
  aoi22d1 U1620 ( .A1(n1445), .A2(\chip_core/spi_pll_trim [5]), .B1(n1406), 
        .B2(n1439), .ZN(n1407) );
  oai21d1 U1621 ( .B1(n1422), .B2(n1447), .A(n1407), .ZN(
        \chip_core/pll/itrim [5]) );
  inv0d0 U1622 ( .I(\chip_core/pll/itrim [5]), .ZN(n1094) );
  oai21d1 U1623 ( .B1(\chip_core/spi_pll_trim [6]), .B2(n1439), .A(n1408), 
        .ZN(n1093) );
  inv0d0 U1624 ( .I(n1093), .ZN(\chip_core/pll/itrim [6]) );
  nr02d0 U1625 ( .A1(\chip_core/spi_pll_trim [7]), .A2(n1439), .ZN(n1410) );
  oai22d1 U1626 ( .A1(n1411), .A2(n1410), .B1(n1409), .B2(n1447), .ZN(
        \chip_core/pll/itrim [7]) );
  inv0d0 U1627 ( .I(\chip_core/pll/itrim [7]), .ZN(n1092) );
  aoi21d1 U1628 ( .B1(n1442), .B2(\chip_core/spi_pll_trim [8]), .A(n1412), 
        .ZN(n1413) );
  oai21d1 U1629 ( .B1(n1424), .B2(n1447), .A(n1413), .ZN(
        \chip_core/pll/itrim [8]) );
  inv0d0 U1630 ( .I(\chip_core/pll/itrim [8]), .ZN(n1091) );
  inv0d0 U1631 ( .I(\chip_core/pll/itrim [9]), .ZN(n1090) );
  nr02d0 U1632 ( .A1(\chip_core/spi_pll_trim [10]), .A2(n1439), .ZN(n1414) );
  oai22d1 U1633 ( .A1(n1415), .A2(n1414), .B1(n1425), .B2(n1447), .ZN(
        \chip_core/pll/itrim [10]) );
  inv0d0 U1634 ( .I(\chip_core/pll/itrim [10]), .ZN(n1089) );
  inv0d0 U1635 ( .I(n1416), .ZN(n1419) );
  oai21d1 U1636 ( .B1(\chip_core/spi_pll_trim [11]), .B2(n1439), .A(n1417), 
        .ZN(n1418) );
  oai21d1 U1637 ( .B1(n1419), .B2(n1447), .A(n1418), .ZN(
        \chip_core/pll/itrim [11]) );
  inv0d0 U1638 ( .I(\chip_core/pll/itrim [11]), .ZN(n1088) );
  inv0d0 U1639 ( .I(\chip_core/pll/itrim [13]), .ZN(n1086) );
  aoi21d1 U1640 ( .B1(\chip_core/spi_pll_dco_ena ), .B2(
        \chip_core/spi_pll_trim [14]), .A(n1436), .ZN(n1421) );
  oai21d1 U1641 ( .B1(n1440), .B2(n1447), .A(n1421), .ZN(
        \chip_core/pll/itrim [14]) );
  inv0d0 U1642 ( .I(\chip_core/pll/itrim [14]), .ZN(n1085) );
  oai21d1 U1643 ( .B1(\chip_core/pll/pll_control/tint [3]), .B2(
        \chip_core/pll/pll_control/tint [2]), .A(
        \chip_core/pll/pll_control/tint [4]), .ZN(n1432) );
  aoi211d1 U1644 ( .C1(n1426), .C2(n1422), .A(n1445), .B(n1429), .ZN(n1437) );
  aoi21d1 U1645 ( .B1(n1442), .B2(\chip_core/spi_pll_trim [15]), .A(n1437), 
        .ZN(n1423) );
  oai21d1 U1646 ( .B1(n1432), .B2(n1447), .A(n1423), .ZN(
        \chip_core/pll/itrim [15]) );
  inv0d0 U1647 ( .I(\chip_core/pll/itrim [15]), .ZN(n1084) );
  aoi31d1 U1648 ( .B1(n1426), .B2(n1425), .B3(n1424), .A(n1429), .ZN(n1443) );
  nr02d0 U1649 ( .A1(\chip_core/spi_pll_trim [16]), .A2(n1439), .ZN(n1427) );
  oai22d1 U1650 ( .A1(n1428), .A2(n1427), .B1(n1429), .B2(n1447), .ZN(
        \chip_core/pll/itrim [16]) );
  inv0d0 U1651 ( .I(\chip_core/pll/itrim [16]), .ZN(n1083) );
  nr02d0 U1652 ( .A1(n1429), .A2(n1447), .ZN(n1430) );
  aoi22d1 U1653 ( .A1(n1433), .A2(n1430), .B1(n1445), .B2(
        \chip_core/spi_pll_trim [17]), .ZN(n1431) );
  oai21d1 U1654 ( .B1(\chip_core/spi_pll_dco_ena ), .B2(n1440), .A(n1431), 
        .ZN(\chip_core/pll/itrim [17]) );
  inv0d0 U1655 ( .I(\chip_core/pll/itrim [17]), .ZN(n1082) );
  inv0d0 U1656 ( .I(n1432), .ZN(n1444) );
  aoi22d1 U1657 ( .A1(n1445), .A2(\chip_core/spi_pll_trim [18]), .B1(n1444), 
        .B2(n1439), .ZN(n1081) );
  inv0d0 U1658 ( .I(n1081), .ZN(\chip_core/pll/itrim [18]) );
  nd02d0 U1659 ( .A1(n1433), .A2(\chip_core/pll/pll_control/tint [3]), .ZN(
        n1435) );
  aoi22d1 U1660 ( .A1(n1445), .A2(\chip_core/spi_pll_trim [19]), .B1(
        \chip_core/pll/pll_control/tint [4]), .B2(n1727), .ZN(n1434) );
  oai21d1 U1661 ( .B1(n1435), .B2(n1447), .A(n1434), .ZN(
        \chip_core/pll/itrim [19]) );
  inv0d0 U1662 ( .I(\chip_core/pll/itrim [19]), .ZN(n1080) );
  aoi21d1 U1663 ( .B1(n1442), .B2(\chip_core/spi_pll_trim [20]), .A(n1436), 
        .ZN(n1079) );
  inv0d0 U1664 ( .I(n1079), .ZN(\chip_core/pll/itrim [20]) );
  aoi22d1 U1665 ( .A1(n1445), .A2(\chip_core/spi_pll_trim [21]), .B1(n1443), 
        .B2(n1727), .ZN(n1078) );
  inv0d0 U1666 ( .I(n1078), .ZN(\chip_core/pll/itrim [21]) );
  aoi21d1 U1667 ( .B1(\chip_core/spi_pll_dco_ena ), .B2(
        \chip_core/spi_pll_trim [22]), .A(n1437), .ZN(n1077) );
  inv0d0 U1668 ( .I(n1077), .ZN(\chip_core/pll/itrim [22]) );
  nd02d0 U1669 ( .A1(\chip_core/pll/pll_control/tint [4]), .A2(n1439), .ZN(
        n1438) );
  oaim21d1 U1670 ( .B1(n1442), .B2(\chip_core/spi_pll_trim [23]), .A(n1438), 
        .ZN(\chip_core/pll/itrim [23]) );
  inv0d0 U1671 ( .I(\chip_core/pll/itrim [23]), .ZN(n1076) );
  nd12d0 U1672 ( .A1(n1440), .A2(n1439), .ZN(n1441) );
  oaim21d1 U1673 ( .B1(n1442), .B2(\chip_core/spi_pll_trim [24]), .A(n1441), 
        .ZN(\chip_core/pll/itrim [24]) );
  inv0d0 U1674 ( .I(\chip_core/pll/itrim [24]), .ZN(n1075) );
  inv0d0 U1675 ( .I(n1443), .ZN(n1448) );
  aoi22d1 U1676 ( .A1(n1445), .A2(\chip_core/spi_pll_trim [25]), .B1(n1444), 
        .B2(n1727), .ZN(n1446) );
  oai21d1 U1677 ( .B1(n1448), .B2(n1447), .A(n1446), .ZN(
        \chip_core/pll/itrim [25]) );
  inv0d0 U1678 ( .I(\chip_core/pll/itrim [25]), .ZN(n1074) );
  inv0d0 U1679 ( .I(\chip_core/ext_clk_sel ), .ZN(n1073) );
  inv0d0 U1680 ( .I(\chip_core/clock_ctrl/use_pll_first ), .ZN(n535) );
  nd03d0 U1681 ( .A1(\chip_core/clock_ctrl/divider2/odd_0/out_counter ), .A2(
        n1678), .A3(n1485), .ZN(n1449) );
  oai21d1 U1682 ( .B1(\chip_core/clock_ctrl/divider2/odd_0/out_counter ), .B2(
        n1678), .A(n1449), .ZN(n933) );
  aoi22d1 U1683 ( .A1(n1466), .A2(n1451), .B1(n1450), .B2(n1467), .ZN(n1070)
         );
  aor21d1 U1684 ( .B1(\chip_core/pll/pll_control/prep [2]), .B2(n1467), .A(
        n1452), .Z(n1069) );
  oai21d1 U1685 ( .B1(\chip_core/pll/pll_control/count0 [0]), .B2(
        \chip_core/pll/pll_control/count0 [1]), .A(n1453), .ZN(n1454) );
  oan211d1 U1686 ( .C1(n1464), .C2(n1457), .B(n1454), .A(n1466), .ZN(n1068) );
  oai21d1 U1687 ( .B1(\chip_core/pll/pll_control/count0 [2]), .B2(n1455), .A(
        n1458), .ZN(n1456) );
  oan211d1 U1688 ( .C1(n1464), .C2(n1457), .B(n1456), .A(n1466), .ZN(n1066) );
  aoi321d1 U1689 ( .C1(\chip_core/pll/pll_control/count0 [3]), .C2(n1460), 
        .C3(n1464), .B1(n1459), .B2(n1458), .A(n1466), .ZN(n1065) );
  aoi22d1 U1690 ( .A1(n1466), .A2(n1462), .B1(n1461), .B2(n1467), .ZN(n1063)
         );
  inv0d0 U1691 ( .I(\chip_core/pll/pll_control/count1 [4]), .ZN(n1463) );
  aoi22d1 U1692 ( .A1(n1466), .A2(n1464), .B1(n1463), .B2(n1467), .ZN(n1062)
         );
  oai22d1 U1693 ( .A1(n1467), .A2(\chip_core/pll/pll_control/count0 [2]), .B1(
        \chip_core/pll/pll_control/count1 [2]), .B2(n1466), .ZN(n1465) );
  inv0d0 U1694 ( .I(n1465), .ZN(n1060) );
  oai22d1 U1695 ( .A1(n1467), .A2(\chip_core/pll/pll_control/count0 [1]), .B1(
        \chip_core/pll/pll_control/count1 [1]), .B2(n1466), .ZN(n1468) );
  inv0d0 U1696 ( .I(n1468), .ZN(n1059) );
  inv0d0 U1697 ( .I(\chip_core/clock_ctrl/divider2/syncN [2]), .ZN(n1687) );
  inv0d0 U1698 ( .I(\chip_core/clock_ctrl/divider2/syncN [1]), .ZN(n1695) );
  oai22d1 U1699 ( .A1(n1687), .A2(
        \chip_core/clock_ctrl/divider2/odd_0/old_N [2]), .B1(n1695), .B2(
        \chip_core/clock_ctrl/divider2/odd_0/old_N [1]), .ZN(n1469) );
  aoi221d1 U1700 ( .B1(n1687), .B2(
        \chip_core/clock_ctrl/divider2/odd_0/old_N [2]), .C1(
        \chip_core/clock_ctrl/divider2/odd_0/old_N [1]), .C2(n1695), .A(n1469), 
        .ZN(n1470) );
  nr02d0 U1701 ( .A1(\chip_core/clock_ctrl/divider2/odd_0/rst_pulse ), .A2(
        n1472), .ZN(n1677) );
  aoi31d1 U1702 ( .B1(n1472), .B2(
        \chip_core/clock_ctrl/divider2/odd_0/old_N [0]), .B3(n1470), .A(n1677), 
        .ZN(n1050) );
  oai21d1 U1703 ( .B1(\chip_core/clock_ctrl/divider2/syncN [0]), .B2(
        \chip_core/clock_ctrl/divider2/syncN [1]), .A(
        \chip_core/clock_ctrl/divider2/syncN [2]), .ZN(n1475) );
  aoi21d1 U1704 ( .B1(n1472), .B2(n1471), .A(
        \chip_core/clock_ctrl/divider2/odd_0/rst_pulse ), .ZN(n1477) );
  aon211d1 U1705 ( .C1(n1473), .C2(
        \chip_core/clock_ctrl/divider2/odd_0/initial_begin [1]), .B(n1477), 
        .A(\chip_core/clock_ctrl/divider2/odd_0/initial_begin [2]), .ZN(n1474)
         );
  oai21d1 U1706 ( .B1(n1475), .B2(n1485), .A(n1474), .ZN(n1049) );
  nd02d0 U1707 ( .A1(\chip_core/clock_ctrl/divider2/odd_0/rst_pulse ), .A2(
        n1475), .ZN(n1479) );
  aoim22d1 U1708 ( .A1(\chip_core/clock_ctrl/divider2/odd_0/initial_begin [1]), 
        .A2(n1477), .B1(n1476), .B2(
        \chip_core/clock_ctrl/divider2/odd_0/initial_begin [1]), .Z(n1478) );
  aon211d1 U1709 ( .C1(n1480), .C2(n1697), .B(n1479), .A(n1478), .ZN(n1047) );
  inv0d0 U1710 ( .I(n1491), .ZN(n1484) );
  oan211d1 U1711 ( .C1(n1481), .C2(
        \chip_core/clock_ctrl/divider2/odd_0/counter2 [0]), .B(n1485), .A(
        n1677), .ZN(n1482) );
  inv0d0 U1712 ( .I(n1482), .ZN(n1487) );
  aoi22d1 U1713 ( .A1(\chip_core/clock_ctrl/divider2/syncN [1]), .A2(n1484), 
        .B1(\chip_core/clock_ctrl/divider2/odd_0/counter2 [1]), .B2(n1487), 
        .ZN(n1483) );
  oai21d1 U1714 ( .B1(\chip_core/clock_ctrl/divider2/odd_0/counter2 [1]), .B2(
        n1493), .A(n1483), .ZN(n1046) );
  inv0d0 U1715 ( .I(n1486), .ZN(n1492) );
  inv0d0 U1716 ( .I(\chip_core/clock_ctrl/divider2/odd_0/counter2 [2]), .ZN(
        n1490) );
  aoi21d1 U1717 ( .B1(n1488), .B2(
        \chip_core/clock_ctrl/divider2/odd_0/counter2 [1]), .A(n1487), .ZN(
        n1489) );
  oai222d1 U1718 ( .A1(n1493), .A2(n1492), .B1(n1687), .B2(n1491), .C1(n1490), 
        .C2(n1489), .ZN(n1043) );
  aon211d1 U1719 ( .C1(n1495), .C2(
        \chip_core/clock_ctrl/divider/odd_0/initial_begin [1]), .B(n1494), .A(
        \chip_core/clock_ctrl/divider/odd_0/initial_begin [2]), .ZN(n1496) );
  oai21d1 U1720 ( .B1(n1497), .B2(n1508), .A(n1496), .ZN(n1042) );
  inv0d0 U1721 ( .I(n1520), .ZN(n1501) );
  aoi31d1 U1722 ( .B1(n1505), .B2(n1499), .B3(n1498), .A(
        \chip_core/clock_ctrl/divider/odd_0/rst_pulse ), .ZN(n1516) );
  aoi22d1 U1723 ( .A1(\chip_core/clock_ctrl/divider/syncN [1]), .A2(n1501), 
        .B1(\chip_core/clock_ctrl/divider/odd_0/counter2 [1]), .B2(n1516), 
        .ZN(n1500) );
  oai21d1 U1724 ( .B1(\chip_core/clock_ctrl/divider/odd_0/counter2 [1]), .B2(
        n1523), .A(n1500), .ZN(n1039) );
  aoi21d1 U1725 ( .B1(n1503), .B2(
        \chip_core/clock_ctrl/divider/odd_0/old_N [1]), .A(n1509), .ZN(n1502)
         );
  oai211d1 U1726 ( .C1(n1503), .C2(
        \chip_core/clock_ctrl/divider/odd_0/old_N [1]), .A(
        \chip_core/clock_ctrl/divider/odd_0/old_N [0]), .B(n1502), .ZN(n1504)
         );
  aoi21d1 U1727 ( .B1(\chip_core/clock_ctrl/divider/odd_0/old_N [2]), .B2(
        n1521), .A(n1504), .ZN(n1507) );
  nr02d0 U1728 ( .A1(\chip_core/clock_ctrl/divider/odd_0/rst_pulse ), .A2(
        n1505), .ZN(n1506) );
  oan211d1 U1729 ( .C1(\chip_core/clock_ctrl/divider/odd_0/old_N [2]), .C2(
        n1521), .B(n1507), .A(n1506), .ZN(n1037) );
  or02d0 U1730 ( .A1(\chip_core/clock_ctrl/divider/odd_0/counter [1]), .A2(
        \chip_core/clock_ctrl/divider/odd_0/counter [2]), .Z(n1513) );
  inv0d0 U1731 ( .I(\chip_core/clock_ctrl/divider/odd_0/counter [2]), .ZN(
        n1511) );
  oai31d1 U1732 ( .B1(\chip_core/clock_ctrl/divider/odd_0/counter [1]), .B2(
        \chip_core/clock_ctrl/divider/odd_0/counter [0]), .B3(n1509), .A(n1508), .ZN(n1510) );
  oai222d1 U1733 ( .A1(n1514), .A2(n1513), .B1(n1521), .B2(n1512), .C1(n1511), 
        .C2(n1510), .ZN(n1035) );
  inv0d0 U1734 ( .I(n1515), .ZN(n1522) );
  inv0d0 U1735 ( .I(\chip_core/clock_ctrl/divider/odd_0/counter2 [2]), .ZN(
        n1519) );
  aoi21d1 U1736 ( .B1(n1517), .B2(
        \chip_core/clock_ctrl/divider/odd_0/counter2 [1]), .A(n1516), .ZN(
        n1518) );
  oai222d1 U1737 ( .A1(n1523), .A2(n1522), .B1(n1521), .B2(n1520), .C1(n1519), 
        .C2(n1518), .ZN(n1033) );
  buffd1 U1738 ( .I(n1630), .Z(n1623) );
  inv0d0 U1739 ( .I(\chip_core/mprj_adr_o_core [2]), .ZN(n1572) );
  mx02d1 U1740 ( .I0(\chip_core/mprj_dat_o_core [31]), .I1(
        \chip_core/mprj/debug/debug_reg_2 [31]), .S(n1524), .Z(n1032) );
  inv0d0 U1741 ( .I(n1524), .ZN(n1525) );
  inv0d0 U1742 ( .I(\chip_core/mprj_dat_o_core [24]), .ZN(n1533) );
  inv0d0 U1743 ( .I(\chip_core/mprj/debug/debug_reg_2 [24]), .ZN(n1648) );
  aoi22d1 U1744 ( .A1(n1525), .A2(n1533), .B1(n1648), .B2(n1524), .ZN(n1031)
         );
  inv0d0 U1745 ( .I(\chip_core/mprj_dat_o_core [25]), .ZN(n1534) );
  inv0d0 U1746 ( .I(\chip_core/mprj/debug/debug_reg_2 [25]), .ZN(n1651) );
  aoi22d1 U1747 ( .A1(n1525), .A2(n1534), .B1(n1651), .B2(n1524), .ZN(n1030)
         );
  inv0d0 U1748 ( .I(\chip_core/mprj_dat_o_core [26]), .ZN(n1535) );
  inv0d0 U1749 ( .I(\chip_core/mprj/debug/debug_reg_2 [26]), .ZN(n1655) );
  aoi22d1 U1750 ( .A1(n1525), .A2(n1535), .B1(n1655), .B2(n1524), .ZN(n1029)
         );
  inv0d0 U1751 ( .I(\chip_core/mprj_dat_o_core [27]), .ZN(n1536) );
  inv0d0 U1752 ( .I(\chip_core/mprj/debug/debug_reg_2 [27]), .ZN(n1658) );
  aoi22d1 U1753 ( .A1(n1525), .A2(n1536), .B1(n1658), .B2(n1524), .ZN(n1028)
         );
  inv0d0 U1754 ( .I(\chip_core/mprj_dat_o_core [28]), .ZN(n1537) );
  inv0d0 U1755 ( .I(\chip_core/mprj/debug/debug_reg_2 [28]), .ZN(n1661) );
  aoi22d1 U1756 ( .A1(n1525), .A2(n1537), .B1(n1661), .B2(n1524), .ZN(n1027)
         );
  inv0d0 U1757 ( .I(\chip_core/mprj_dat_o_core [29]), .ZN(n1538) );
  inv0d0 U1758 ( .I(\chip_core/mprj/debug/debug_reg_2 [29]), .ZN(n1664) );
  aoi22d1 U1759 ( .A1(n1525), .A2(n1538), .B1(n1664), .B2(n1524), .ZN(n1026)
         );
  inv0d0 U1760 ( .I(\chip_core/mprj_dat_o_core [30]), .ZN(n1540) );
  inv0d0 U1761 ( .I(\chip_core/mprj/debug/debug_reg_2 [30]), .ZN(n1668) );
  aoi22d1 U1762 ( .A1(n1525), .A2(n1540), .B1(n1668), .B2(n1524), .ZN(n1025)
         );
  mx02d1 U1763 ( .I0(\chip_core/mprj_dat_o_core [7]), .I1(
        \chip_core/mprj/debug/debug_reg_1 [7]), .S(n1526), .Z(n1024) );
  inv0d0 U1764 ( .I(n1526), .ZN(n1527) );
  inv0d0 U1765 ( .I(\chip_core/mprj_dat_o_core [0]), .ZN(n1542) );
  inv0d0 U1766 ( .I(\chip_core/mprj/debug/debug_reg_1 [0]), .ZN(n1574) );
  aoi22d1 U1767 ( .A1(n1527), .A2(n1542), .B1(n1574), .B2(n1526), .ZN(n1023)
         );
  inv0d0 U1768 ( .I(\chip_core/mprj_dat_o_core [1]), .ZN(n1543) );
  inv0d0 U1769 ( .I(\chip_core/mprj/debug/debug_reg_1 [1]), .ZN(n1577) );
  aoi22d1 U1770 ( .A1(n1527), .A2(n1543), .B1(n1577), .B2(n1526), .ZN(n1022)
         );
  inv0d0 U1771 ( .I(\chip_core/mprj_dat_o_core [2]), .ZN(n1544) );
  inv0d0 U1772 ( .I(\chip_core/mprj/debug/debug_reg_1 [2]), .ZN(n1580) );
  aoi22d1 U1773 ( .A1(n1527), .A2(n1544), .B1(n1580), .B2(n1526), .ZN(n1021)
         );
  inv0d0 U1774 ( .I(\chip_core/mprj_dat_o_core [3]), .ZN(n1545) );
  inv0d0 U1775 ( .I(\chip_core/mprj/debug/debug_reg_1 [3]), .ZN(n1583) );
  aoi22d1 U1776 ( .A1(n1527), .A2(n1545), .B1(n1583), .B2(n1526), .ZN(n1020)
         );
  inv0d0 U1777 ( .I(\chip_core/mprj_dat_o_core [4]), .ZN(n1546) );
  inv0d0 U1778 ( .I(\chip_core/mprj/debug/debug_reg_1 [4]), .ZN(n1586) );
  aoi22d1 U1779 ( .A1(n1527), .A2(n1546), .B1(n1586), .B2(n1526), .ZN(n1019)
         );
  inv0d0 U1780 ( .I(\chip_core/mprj_dat_o_core [5]), .ZN(n1547) );
  inv0d0 U1781 ( .I(\chip_core/mprj/debug/debug_reg_1 [5]), .ZN(n1589) );
  aoi22d1 U1782 ( .A1(n1527), .A2(n1547), .B1(n1589), .B2(n1526), .ZN(n1018)
         );
  inv0d0 U1783 ( .I(\chip_core/mprj_dat_o_core [6]), .ZN(n1549) );
  inv0d0 U1784 ( .I(\chip_core/mprj/debug/debug_reg_1 [6]), .ZN(n1592) );
  aoi22d1 U1785 ( .A1(n1527), .A2(n1549), .B1(n1592), .B2(n1526), .ZN(n1017)
         );
  inv0d0 U1786 ( .I(n1528), .ZN(n1529) );
  inv0d0 U1787 ( .I(\chip_core/mprj_dat_o_core [15]), .ZN(n1551) );
  inv0d0 U1788 ( .I(\chip_core/mprj/debug/debug_reg_1 [15]), .ZN(n1619) );
  aoi22d1 U1789 ( .A1(n1529), .A2(n1551), .B1(n1619), .B2(n1528), .ZN(n1016)
         );
  inv0d0 U1790 ( .I(\chip_core/mprj_dat_o_core [8]), .ZN(n1552) );
  inv0d0 U1791 ( .I(\chip_core/mprj/debug/debug_reg_1 [8]), .ZN(n1598) );
  aoi22d1 U1792 ( .A1(n1529), .A2(n1552), .B1(n1598), .B2(n1528), .ZN(n1015)
         );
  inv0d0 U1793 ( .I(\chip_core/mprj_dat_o_core [9]), .ZN(n1553) );
  inv0d0 U1794 ( .I(\chip_core/mprj/debug/debug_reg_1 [9]), .ZN(n1601) );
  aoi22d1 U1795 ( .A1(n1529), .A2(n1553), .B1(n1601), .B2(n1528), .ZN(n1014)
         );
  inv0d0 U1796 ( .I(\chip_core/mprj_dat_o_core [10]), .ZN(n1554) );
  inv0d0 U1797 ( .I(\chip_core/mprj/debug/debug_reg_1 [10]), .ZN(n1604) );
  aoi22d1 U1798 ( .A1(n1529), .A2(n1554), .B1(n1604), .B2(n1528), .ZN(n1013)
         );
  inv0d0 U1799 ( .I(\chip_core/mprj_dat_o_core [11]), .ZN(n1555) );
  inv0d0 U1800 ( .I(\chip_core/mprj/debug/debug_reg_1 [11]), .ZN(n1607) );
  aoi22d1 U1801 ( .A1(n1529), .A2(n1555), .B1(n1607), .B2(n1528), .ZN(n1012)
         );
  inv0d0 U1802 ( .I(\chip_core/mprj_dat_o_core [12]), .ZN(n1556) );
  inv0d0 U1803 ( .I(\chip_core/mprj/debug/debug_reg_1 [12]), .ZN(n1610) );
  aoi22d1 U1804 ( .A1(n1529), .A2(n1556), .B1(n1610), .B2(n1528), .ZN(n1011)
         );
  inv0d0 U1805 ( .I(\chip_core/mprj_dat_o_core [13]), .ZN(n1557) );
  inv0d0 U1806 ( .I(\chip_core/mprj/debug/debug_reg_1 [13]), .ZN(n1613) );
  aoi22d1 U1807 ( .A1(n1529), .A2(n1557), .B1(n1613), .B2(n1528), .ZN(n1010)
         );
  inv0d0 U1808 ( .I(\chip_core/mprj_dat_o_core [14]), .ZN(n1559) );
  inv0d0 U1809 ( .I(\chip_core/mprj/debug/debug_reg_1 [14]), .ZN(n1616) );
  aoi22d1 U1810 ( .A1(n1529), .A2(n1559), .B1(n1616), .B2(n1528), .ZN(n1009)
         );
  inv0d0 U1811 ( .I(n1530), .ZN(n1531) );
  inv0d0 U1812 ( .I(\chip_core/mprj_dat_o_core [23]), .ZN(n1570) );
  inv0d0 U1813 ( .I(\chip_core/mprj/debug/debug_reg_1 [23]), .ZN(n1645) );
  aoi22d1 U1814 ( .A1(n1531), .A2(n1570), .B1(n1645), .B2(n1530), .ZN(n1008)
         );
  inv0d0 U1815 ( .I(\chip_core/mprj_dat_o_core [16]), .ZN(n1563) );
  inv0d0 U1816 ( .I(\chip_core/mprj/debug/debug_reg_1 [16]), .ZN(n1622) );
  aoi22d1 U1817 ( .A1(n1531), .A2(n1563), .B1(n1622), .B2(n1530), .ZN(n1007)
         );
  inv0d0 U1818 ( .I(\chip_core/mprj_dat_o_core [17]), .ZN(n1562) );
  inv0d0 U1819 ( .I(\chip_core/mprj/debug/debug_reg_1 [17]), .ZN(n1626) );
  aoi22d1 U1820 ( .A1(n1531), .A2(n1562), .B1(n1626), .B2(n1530), .ZN(n1006)
         );
  inv0d0 U1821 ( .I(\chip_core/mprj_dat_o_core [18]), .ZN(n1564) );
  inv0d0 U1822 ( .I(\chip_core/mprj/debug/debug_reg_1 [18]), .ZN(n1629) );
  aoi22d1 U1823 ( .A1(n1531), .A2(n1564), .B1(n1629), .B2(n1530), .ZN(n1005)
         );
  inv0d0 U1824 ( .I(\chip_core/mprj_dat_o_core [19]), .ZN(n1565) );
  inv0d0 U1825 ( .I(\chip_core/mprj/debug/debug_reg_1 [19]), .ZN(n1633) );
  aoi22d1 U1826 ( .A1(n1531), .A2(n1565), .B1(n1633), .B2(n1530), .ZN(n1004)
         );
  inv0d0 U1827 ( .I(\chip_core/mprj_dat_o_core [20]), .ZN(n1566) );
  inv0d0 U1828 ( .I(\chip_core/mprj/debug/debug_reg_1 [20]), .ZN(n1636) );
  aoi22d1 U1829 ( .A1(n1531), .A2(n1566), .B1(n1636), .B2(n1530), .ZN(n1003)
         );
  inv0d0 U1830 ( .I(\chip_core/mprj_dat_o_core [21]), .ZN(n1567) );
  inv0d0 U1831 ( .I(\chip_core/mprj/debug/debug_reg_1 [21]), .ZN(n1639) );
  aoi22d1 U1832 ( .A1(n1531), .A2(n1567), .B1(n1639), .B2(n1530), .ZN(n1002)
         );
  inv0d0 U1833 ( .I(\chip_core/mprj_dat_o_core [22]), .ZN(n1568) );
  inv0d0 U1834 ( .I(\chip_core/mprj/debug/debug_reg_1 [22]), .ZN(n1642) );
  aoi22d1 U1835 ( .A1(n1531), .A2(n1568), .B1(n1642), .B2(n1530), .ZN(n1001)
         );
  inv0d0 U1836 ( .I(\chip_core/mprj/debug/debug_reg_1 [31]), .ZN(n1675) );
  nd02d1 U1837 ( .A1(\chip_core/mprj_sel_o_core [3]), .A2(n1532), .ZN(n1539)
         );
  aoim22d1 U1838 ( .A1(n1675), .A2(n1539), .B1(n1539), .B2(
        \chip_core/mprj_dat_o_core [31]), .Z(n1000) );
  inv0d0 U1839 ( .I(n1539), .ZN(n1541) );
  inv0d0 U1840 ( .I(\chip_core/mprj/debug/debug_reg_1 [24]), .ZN(n1650) );
  aoi22d1 U1841 ( .A1(n1541), .A2(n1533), .B1(n1650), .B2(n1539), .ZN(n999) );
  inv0d0 U1842 ( .I(\chip_core/mprj/debug/debug_reg_1 [25]), .ZN(n1654) );
  aoi22d1 U1843 ( .A1(n1541), .A2(n1534), .B1(n1654), .B2(n1539), .ZN(n998) );
  inv0d0 U1844 ( .I(\chip_core/mprj/debug/debug_reg_1 [26]), .ZN(n1657) );
  aoi22d1 U1845 ( .A1(n1541), .A2(n1535), .B1(n1657), .B2(n1539), .ZN(n997) );
  inv0d0 U1846 ( .I(\chip_core/mprj/debug/debug_reg_1 [27]), .ZN(n1660) );
  aoi22d1 U1847 ( .A1(n1541), .A2(n1536), .B1(n1660), .B2(n1539), .ZN(n996) );
  inv0d0 U1848 ( .I(\chip_core/mprj/debug/debug_reg_1 [28]), .ZN(n1663) );
  aoi22d1 U1849 ( .A1(n1541), .A2(n1537), .B1(n1663), .B2(n1539), .ZN(n995) );
  inv0d0 U1850 ( .I(\chip_core/mprj/debug/debug_reg_1 [29]), .ZN(n1666) );
  aoi22d1 U1851 ( .A1(n1541), .A2(n1538), .B1(n1666), .B2(n1539), .ZN(n994) );
  inv0d0 U1852 ( .I(\chip_core/mprj/debug/debug_reg_1 [30]), .ZN(n1670) );
  aoi22d1 U1853 ( .A1(n1541), .A2(n1540), .B1(n1670), .B2(n1539), .ZN(n993) );
  inv0d0 U1854 ( .I(\chip_core/mprj/debug/debug_reg_2 [7]), .ZN(n1597) );
  nd02d1 U1855 ( .A1(n1561), .A2(\chip_core/mprj_sel_o_core [0]), .ZN(n1548)
         );
  aoim22d1 U1856 ( .A1(n1597), .A2(n1548), .B1(n1548), .B2(
        \chip_core/mprj_dat_o_core [7]), .Z(n992) );
  inv0d0 U1857 ( .I(n1548), .ZN(n1550) );
  inv0d0 U1858 ( .I(\chip_core/mprj/debug/debug_reg_2 [0]), .ZN(n1576) );
  aoi22d1 U1859 ( .A1(n1550), .A2(n1542), .B1(n1576), .B2(n1548), .ZN(n991) );
  inv0d0 U1860 ( .I(\chip_core/mprj/debug/debug_reg_2 [1]), .ZN(n1579) );
  aoi22d1 U1861 ( .A1(n1550), .A2(n1543), .B1(n1579), .B2(n1548), .ZN(n990) );
  inv0d0 U1862 ( .I(\chip_core/mprj/debug/debug_reg_2 [2]), .ZN(n1582) );
  aoi22d1 U1863 ( .A1(n1550), .A2(n1544), .B1(n1582), .B2(n1548), .ZN(n989) );
  inv0d0 U1864 ( .I(\chip_core/mprj/debug/debug_reg_2 [3]), .ZN(n1585) );
  aoi22d1 U1865 ( .A1(n1550), .A2(n1545), .B1(n1585), .B2(n1548), .ZN(n988) );
  inv0d0 U1866 ( .I(\chip_core/mprj/debug/debug_reg_2 [4]), .ZN(n1588) );
  aoi22d1 U1867 ( .A1(n1550), .A2(n1546), .B1(n1588), .B2(n1548), .ZN(n987) );
  inv0d0 U1868 ( .I(\chip_core/mprj/debug/debug_reg_2 [5]), .ZN(n1591) );
  aoi22d1 U1869 ( .A1(n1550), .A2(n1547), .B1(n1591), .B2(n1548), .ZN(n986) );
  inv0d0 U1870 ( .I(\chip_core/mprj/debug/debug_reg_2 [6]), .ZN(n1594) );
  aoi22d1 U1871 ( .A1(n1550), .A2(n1549), .B1(n1594), .B2(n1548), .ZN(n985) );
  inv0d0 U1872 ( .I(n1558), .ZN(n1560) );
  inv0d0 U1873 ( .I(\chip_core/mprj/debug/debug_reg_2 [15]), .ZN(n1621) );
  aoi22d1 U1874 ( .A1(n1560), .A2(n1551), .B1(n1621), .B2(n1558), .ZN(n984) );
  inv0d0 U1875 ( .I(\chip_core/mprj/debug/debug_reg_2 [8]), .ZN(n1600) );
  aoi22d1 U1876 ( .A1(n1560), .A2(n1552), .B1(n1600), .B2(n1558), .ZN(n983) );
  inv0d0 U1877 ( .I(\chip_core/mprj/debug/debug_reg_2 [9]), .ZN(n1603) );
  aoi22d1 U1878 ( .A1(n1560), .A2(n1553), .B1(n1603), .B2(n1558), .ZN(n982) );
  inv0d0 U1879 ( .I(\chip_core/mprj/debug/debug_reg_2 [10]), .ZN(n1606) );
  aoi22d1 U1880 ( .A1(n1560), .A2(n1554), .B1(n1606), .B2(n1558), .ZN(n981) );
  inv0d0 U1881 ( .I(\chip_core/mprj/debug/debug_reg_2 [11]), .ZN(n1609) );
  aoi22d1 U1882 ( .A1(n1560), .A2(n1555), .B1(n1609), .B2(n1558), .ZN(n980) );
  inv0d0 U1883 ( .I(\chip_core/mprj/debug/debug_reg_2 [12]), .ZN(n1612) );
  aoi22d1 U1884 ( .A1(n1560), .A2(n1556), .B1(n1612), .B2(n1558), .ZN(n979) );
  inv0d0 U1885 ( .I(\chip_core/mprj/debug/debug_reg_2 [13]), .ZN(n1615) );
  aoi22d1 U1886 ( .A1(n1560), .A2(n1557), .B1(n1615), .B2(n1558), .ZN(n978) );
  inv0d0 U1887 ( .I(\chip_core/mprj/debug/debug_reg_2 [14]), .ZN(n1618) );
  aoi22d1 U1888 ( .A1(n1560), .A2(n1559), .B1(n1618), .B2(n1558), .ZN(n977) );
  inv0d0 U1889 ( .I(n1569), .ZN(n1571) );
  inv0d0 U1890 ( .I(\chip_core/mprj/debug/debug_reg_2 [17]), .ZN(n1628) );
  aoi22d1 U1891 ( .A1(n1571), .A2(n1562), .B1(n1628), .B2(n1569), .ZN(n976) );
  inv0d0 U1892 ( .I(\chip_core/mprj/debug/debug_reg_2 [16]), .ZN(n1625) );
  aoi22d1 U1893 ( .A1(n1571), .A2(n1563), .B1(n1625), .B2(n1569), .ZN(n975) );
  inv0d0 U1894 ( .I(\chip_core/mprj/debug/debug_reg_2 [18]), .ZN(n1632) );
  aoi22d1 U1895 ( .A1(n1571), .A2(n1564), .B1(n1632), .B2(n1569), .ZN(n974) );
  inv0d0 U1896 ( .I(\chip_core/mprj/debug/debug_reg_2 [19]), .ZN(n1635) );
  aoi22d1 U1897 ( .A1(n1571), .A2(n1565), .B1(n1635), .B2(n1569), .ZN(n973) );
  inv0d0 U1898 ( .I(\chip_core/mprj/debug/debug_reg_2 [20]), .ZN(n1638) );
  aoi22d1 U1899 ( .A1(n1571), .A2(n1566), .B1(n1638), .B2(n1569), .ZN(n972) );
  inv0d0 U1900 ( .I(\chip_core/mprj/debug/debug_reg_2 [21]), .ZN(n1641) );
  aoi22d1 U1901 ( .A1(n1571), .A2(n1567), .B1(n1641), .B2(n1569), .ZN(n971) );
  inv0d0 U1902 ( .I(\chip_core/mprj/debug/debug_reg_2 [22]), .ZN(n1644) );
  aoi22d1 U1903 ( .A1(n1571), .A2(n1568), .B1(n1644), .B2(n1569), .ZN(n970) );
  inv0d0 U1904 ( .I(\chip_core/mprj/debug/debug_reg_2 [23]), .ZN(n1647) );
  aoi22d1 U1905 ( .A1(n1571), .A2(n1570), .B1(n1647), .B2(n1569), .ZN(n969) );
  inv0d0 U1906 ( .I(\chip_core/mprj_we_o_core ), .ZN(n1573) );
  nd03d1 U1907 ( .A1(\chip_core/mprj/debug/N133 ), .A2(
        \chip_core/mprj_adr_o_core [2]), .A3(n1573), .ZN(n1652) );
  buffd3 U1908 ( .I(n1676), .Z(n1667) );
  oai222d1 U1909 ( .A1(n1652), .A2(n1576), .B1(n1575), .B2(n1623), .C1(n1667), 
        .C2(n1574), .ZN(n968) );
  oai222d1 U1910 ( .A1(n1652), .A2(n1579), .B1(n1578), .B2(n1623), .C1(n1667), 
        .C2(n1577), .ZN(n967) );
  oai222d1 U1911 ( .A1(n1652), .A2(n1582), .B1(n1581), .B2(n1623), .C1(n1667), 
        .C2(n1580), .ZN(n966) );
  buffd1 U1912 ( .I(n1652), .Z(n1674) );
  oai222d1 U1913 ( .A1(n1674), .A2(n1585), .B1(n1584), .B2(n1623), .C1(n1667), 
        .C2(n1583), .ZN(n965) );
  oai222d1 U1914 ( .A1(n1652), .A2(n1588), .B1(n1587), .B2(n1623), .C1(n1667), 
        .C2(n1586), .ZN(n964) );
  oai222d1 U1915 ( .A1(n1674), .A2(n1591), .B1(n1590), .B2(n1630), .C1(n1676), 
        .C2(n1589), .ZN(n963) );
  oai222d1 U1916 ( .A1(n1652), .A2(n1594), .B1(n1593), .B2(n1630), .C1(n1667), 
        .C2(n1592), .ZN(n962) );
  buffd1 U1917 ( .I(n1630), .Z(n1672) );
  inv0d0 U1918 ( .I(\chip_core/mprj/debug/debug_reg_1 [7]), .ZN(n1595) );
  oai222d1 U1919 ( .A1(n1652), .A2(n1597), .B1(n1596), .B2(n1672), .C1(n1667), 
        .C2(n1595), .ZN(n961) );
  oai222d1 U1920 ( .A1(n1652), .A2(n1600), .B1(n1599), .B2(n1672), .C1(n1667), 
        .C2(n1598), .ZN(n960) );
  oai222d1 U1921 ( .A1(n1652), .A2(n1603), .B1(n1602), .B2(n1630), .C1(n1667), 
        .C2(n1601), .ZN(n959) );
  oai222d1 U1922 ( .A1(n1652), .A2(n1606), .B1(n1605), .B2(n1630), .C1(n1667), 
        .C2(n1604), .ZN(n958) );
  oai222d1 U1923 ( .A1(n1652), .A2(n1609), .B1(n1608), .B2(n1672), .C1(n1667), 
        .C2(n1607), .ZN(n957) );
  oai222d1 U1924 ( .A1(n1652), .A2(n1612), .B1(n1611), .B2(n1630), .C1(n1676), 
        .C2(n1610), .ZN(n956) );
  oai222d1 U1925 ( .A1(n1652), .A2(n1615), .B1(n1614), .B2(n1623), .C1(n1667), 
        .C2(n1613), .ZN(n955) );
  oai222d1 U1926 ( .A1(n1674), .A2(n1618), .B1(n1617), .B2(n1672), .C1(n1667), 
        .C2(n1616), .ZN(n954) );
  oai222d1 U1927 ( .A1(n1674), .A2(n1621), .B1(n1620), .B2(n1623), .C1(n1667), 
        .C2(n1619), .ZN(n953) );
  oai222d1 U1928 ( .A1(n1674), .A2(n1625), .B1(n1624), .B2(n1623), .C1(n1667), 
        .C2(n1622), .ZN(n952) );
  oai222d1 U1929 ( .A1(n1652), .A2(n1628), .B1(n1627), .B2(n1630), .C1(n1667), 
        .C2(n1626), .ZN(n951) );
  oai222d1 U1930 ( .A1(n1652), .A2(n1632), .B1(n1631), .B2(n1630), .C1(n1667), 
        .C2(n1629), .ZN(n950) );
  oai222d1 U1931 ( .A1(n1674), .A2(n1635), .B1(n1634), .B2(n1672), .C1(n1667), 
        .C2(n1633), .ZN(n949) );
  oai222d1 U1932 ( .A1(n1674), .A2(n1638), .B1(n1637), .B2(n1672), .C1(n1667), 
        .C2(n1636), .ZN(n948) );
  oai222d1 U1933 ( .A1(n1674), .A2(n1641), .B1(n1640), .B2(n1672), .C1(n1667), 
        .C2(n1639), .ZN(n947) );
  oai222d1 U1934 ( .A1(n1674), .A2(n1644), .B1(n1643), .B2(n1672), .C1(n1667), 
        .C2(n1642), .ZN(n946) );
  oai222d1 U1935 ( .A1(n1674), .A2(n1647), .B1(n1646), .B2(n1672), .C1(n1667), 
        .C2(n1645), .ZN(n945) );
  oai222d1 U1936 ( .A1(n1676), .A2(n1650), .B1(n1649), .B2(n1672), .C1(n1674), 
        .C2(n1648), .ZN(n944) );
  oai222d1 U1937 ( .A1(n1667), .A2(n1654), .B1(n1653), .B2(n1672), .C1(n1652), 
        .C2(n1651), .ZN(n943) );
  oai222d1 U1938 ( .A1(n1676), .A2(n1657), .B1(n1656), .B2(n1672), .C1(n1674), 
        .C2(n1655), .ZN(n942) );
  oai222d1 U1939 ( .A1(n1676), .A2(n1660), .B1(n1659), .B2(n1672), .C1(n1674), 
        .C2(n1658), .ZN(n941) );
  oai222d1 U1940 ( .A1(n1676), .A2(n1663), .B1(n1662), .B2(n1672), .C1(n1674), 
        .C2(n1661), .ZN(n940) );
  oai222d1 U1941 ( .A1(n1667), .A2(n1666), .B1(n1665), .B2(n1672), .C1(n1674), 
        .C2(n1664), .ZN(n939) );
  oai222d1 U1942 ( .A1(n1676), .A2(n1670), .B1(n1669), .B2(n1672), .C1(n1674), 
        .C2(n1668), .ZN(n938) );
  inv0d0 U1943 ( .I(\chip_core/mprj/debug/debug_reg_2 [31]), .ZN(n1673) );
  oai222d1 U1944 ( .A1(n1676), .A2(n1675), .B1(n1674), .B2(n1673), .C1(n1672), 
        .C2(n1671), .ZN(n937) );
  aoi22d1 U1945 ( .A1(\chip_core/clock_ctrl/divider2/syncN [0]), .A2(n1678), 
        .B1(n1677), .B2(\chip_core/clock_ctrl/divider2/odd_0/counter [0]), 
        .ZN(n1679) );
  oai21d1 U1946 ( .B1(\chip_core/clock_ctrl/divider2/odd_0/counter [0]), .B2(
        n1680), .A(n1679), .ZN(n936) );
  aoim31d1 U1948 ( .B1(\chip_core/clock_ctrl/divider2/odd_0/counter [1]), .B2(
        \chip_core/clock_ctrl/divider2/odd_0/counter [0]), .B3(n1681), .A(
        \chip_core/clock_ctrl/divider2/odd_0/rst_pulse ), .ZN(n1684) );
  aoi22d1 U1949 ( .A1(\chip_core/clock_ctrl/divider2/odd_0/counter [2]), .A2(
        n1684), .B1(n1683), .B2(n1682), .ZN(n1685) );
  oai21d1 U1950 ( .B1(n1687), .B2(n1686), .A(n1685), .ZN(n934) );
  inv0d0 U1951 ( .I(\chip_core/gpio_control_bidir_1[0]/shift_register[0] ), 
        .ZN(n932) );
  inv0d0 U1952 ( .I(\chip_core/gpio_control_bidir_1[0]/shift_register[1] ), 
        .ZN(n931) );
  inv0d0 U1953 ( .I(\chip_core/gpio_control_bidir_1[0]/shift_register[11] ), 
        .ZN(n930) );
  inv0d0 U1954 ( .I(\chip_core/gpio_control_bidir_1[0]/shift_register[12] ), 
        .ZN(n929) );
  inv0d0 U1955 ( .I(\chip_core/gpio_control_bidir_2[2]/shift_register[0] ), 
        .ZN(n928) );
  inv0d0 U1956 ( .I(\chip_core/gpio_control_bidir_2[2]/shift_register[1] ), 
        .ZN(n927) );
  inv0d0 U1957 ( .I(\chip_core/gpio_control_bidir_2[2]/shift_register[10] ), 
        .ZN(n926) );
  inv0d0 U1958 ( .I(\chip_core/gpio_control_in_2[0]/shift_register[10] ), .ZN(
        n925) );
  inv0d0 U1959 ( .I(\chip_core/gpio_control_in_2[0]/shift_register[1] ), .ZN(
        n924) );
  inv0d0 U1960 ( .I(\chip_core/gpio_control_in_2[0]/shift_register[0] ), .ZN(
        n923) );
  inv0d0 U1961 ( .I(\chip_core/gpio_control_in_2[1]/shift_register[10] ), .ZN(
        n922) );
  inv0d0 U1962 ( .I(\chip_core/gpio_control_in_2[1]/shift_register[1] ), .ZN(
        n921) );
  inv0d0 U1963 ( .I(\chip_core/gpio_control_in_2[1]/shift_register[0] ), .ZN(
        n920) );
  inv0d0 U1964 ( .I(\chip_core/gpio_control_in_2[2]/shift_register[10] ), .ZN(
        n919) );
  inv0d0 U1965 ( .I(\chip_core/gpio_control_in_2[2]/shift_register[1] ), .ZN(
        n918) );
  inv0d0 U1966 ( .I(\chip_core/gpio_control_in_2[2]/shift_register[0] ), .ZN(
        n917) );
  inv0d0 U1967 ( .I(\chip_core/gpio_control_in_2[3]/shift_register[10] ), .ZN(
        n916) );
  inv0d0 U1968 ( .I(\chip_core/gpio_control_in_2[3]/shift_register[1] ), .ZN(
        n915) );
  inv0d0 U1969 ( .I(\chip_core/gpio_control_in_2[3]/shift_register[0] ), .ZN(
        n914) );
  inv0d0 U1970 ( .I(\chip_core/gpio_control_in_2[4]/shift_register[10] ), .ZN(
        n913) );
  inv0d0 U1971 ( .I(\chip_core/gpio_control_in_2[4]/shift_register[1] ), .ZN(
        n912) );
  inv0d0 U1972 ( .I(\chip_core/gpio_control_in_2[4]/shift_register[0] ), .ZN(
        n911) );
  inv0d0 U1973 ( .I(\chip_core/gpio_control_in_2[5]/shift_register[10] ), .ZN(
        n910) );
  inv0d0 U1974 ( .I(\chip_core/gpio_control_in_2[5]/shift_register[1] ), .ZN(
        n909) );
  inv0d0 U1975 ( .I(\chip_core/gpio_control_in_2[5]/shift_register[0] ), .ZN(
        n908) );
  inv0d0 U1976 ( .I(\chip_core/gpio_control_in_2[6]/shift_register[10] ), .ZN(
        n907) );
  inv0d0 U1977 ( .I(\chip_core/gpio_control_in_2[6]/shift_register[1] ), .ZN(
        n906) );
  inv0d0 U1978 ( .I(\chip_core/gpio_control_in_2[6]/shift_register[0] ), .ZN(
        n905) );
  inv0d0 U1979 ( .I(\chip_core/gpio_control_in_2[7]/shift_register[10] ), .ZN(
        n904) );
  inv0d0 U1980 ( .I(\chip_core/gpio_control_in_2[7]/shift_register[1] ), .ZN(
        n903) );
  inv0d0 U1981 ( .I(\chip_core/gpio_control_in_2[7]/shift_register[0] ), .ZN(
        n902) );
  inv0d0 U1982 ( .I(\chip_core/gpio_control_in_2[8]/shift_register[10] ), .ZN(
        n901) );
  inv0d0 U1983 ( .I(\chip_core/gpio_control_in_2[8]/shift_register[1] ), .ZN(
        n900) );
  inv0d0 U1984 ( .I(\chip_core/gpio_control_in_2[8]/shift_register[0] ), .ZN(
        n899) );
  inv0d0 U1985 ( .I(\chip_core/gpio_control_in_2[9]/shift_register[10] ), .ZN(
        n898) );
  inv0d0 U1986 ( .I(\chip_core/gpio_control_in_2[9]/shift_register[1] ), .ZN(
        n897) );
  inv0d0 U1987 ( .I(\chip_core/gpio_control_in_2[9]/shift_register[0] ), .ZN(
        n896) );
  inv0d0 U1988 ( .I(\chip_core/gpio_control_in_2[10]/shift_register[10] ), 
        .ZN(n895) );
  inv0d0 U1989 ( .I(\chip_core/gpio_control_in_2[10]/shift_register[1] ), .ZN(
        n894) );
  inv0d0 U1990 ( .I(\chip_core/gpio_control_in_2[10]/shift_register[0] ), .ZN(
        n893) );
  inv0d0 U1991 ( .I(\chip_core/gpio_control_in_2[11]/shift_register[10] ), 
        .ZN(n892) );
  inv0d0 U1992 ( .I(\chip_core/gpio_control_in_2[11]/shift_register[1] ), .ZN(
        n891) );
  inv0d0 U1993 ( .I(\chip_core/gpio_control_in_2[11]/shift_register[0] ), .ZN(
        n890) );
  inv0d0 U1994 ( .I(\chip_core/gpio_control_in_2[12]/shift_register[10] ), 
        .ZN(n889) );
  inv0d0 U1995 ( .I(\chip_core/gpio_control_in_2[12]/shift_register[1] ), .ZN(
        n888) );
  inv0d0 U1996 ( .I(\chip_core/gpio_control_in_2[12]/shift_register[0] ), .ZN(
        n887) );
  inv0d0 U1997 ( .I(\chip_core/gpio_control_in_2[13]/shift_register[10] ), 
        .ZN(n886) );
  inv0d0 U1998 ( .I(\chip_core/gpio_control_in_2[13]/shift_register[1] ), .ZN(
        n885) );
  inv0d0 U1999 ( .I(\chip_core/gpio_control_in_2[13]/shift_register[0] ), .ZN(
        n884) );
  inv0d0 U2000 ( .I(\chip_core/gpio_control_in_2[14]/shift_register[10] ), 
        .ZN(n883) );
  inv0d0 U2001 ( .I(\chip_core/gpio_control_in_2[14]/shift_register[1] ), .ZN(
        n882) );
  inv0d0 U2002 ( .I(\chip_core/gpio_control_in_2[14]/shift_register[0] ), .ZN(
        n881) );
  inv0d0 U2003 ( .I(\chip_core/gpio_control_in_2[15]/shift_register[10] ), 
        .ZN(n880) );
  inv0d0 U2004 ( .I(\chip_core/gpio_control_in_2[15]/shift_register[1] ), .ZN(
        n879) );
  inv0d0 U2005 ( .I(\chip_core/gpio_control_in_2[15]/shift_register[0] ), .ZN(
        n878) );
  inv0d0 U2006 ( .I(\chip_core/gpio_control_bidir_2[0]/shift_register[10] ), 
        .ZN(n877) );
  inv0d0 U2007 ( .I(\chip_core/gpio_control_bidir_2[0]/shift_register[1] ), 
        .ZN(n876) );
  inv0d0 U2008 ( .I(\chip_core/gpio_control_bidir_2[0]/shift_register[0] ), 
        .ZN(n875) );
  inv0d0 U2009 ( .I(\chip_core/gpio_control_bidir_2[1]/shift_register[10] ), 
        .ZN(n874) );
  inv0d0 U2010 ( .I(\chip_core/gpio_control_bidir_2[1]/shift_register[1] ), 
        .ZN(n873) );
  inv0d0 U2011 ( .I(\chip_core/gpio_control_bidir_2[1]/shift_register[0] ), 
        .ZN(n872) );
  inv0d0 U2012 ( .I(\chip_core/gpio_control_in_1[10]/shift_register[10] ), 
        .ZN(n871) );
  inv0d0 U2013 ( .I(\chip_core/gpio_control_in_1[10]/shift_register[1] ), .ZN(
        n870) );
  inv0d0 U2014 ( .I(\chip_core/gpio_control_in_1[10]/shift_register[0] ), .ZN(
        n869) );
  inv0d0 U2015 ( .I(\chip_core/gpio_control_in_1[9]/shift_register[10] ), .ZN(
        n868) );
  inv0d0 U2016 ( .I(\chip_core/gpio_control_in_1[9]/shift_register[1] ), .ZN(
        n867) );
  inv0d0 U2017 ( .I(\chip_core/gpio_control_in_1[9]/shift_register[0] ), .ZN(
        n866) );
  inv0d0 U2018 ( .I(\chip_core/gpio_control_in_1[8]/shift_register[10] ), .ZN(
        n865) );
  inv0d0 U2019 ( .I(\chip_core/gpio_control_in_1[8]/shift_register[1] ), .ZN(
        n864) );
  inv0d0 U2020 ( .I(\chip_core/gpio_control_in_1[8]/shift_register[0] ), .ZN(
        n863) );
  inv0d0 U2021 ( .I(\chip_core/gpio_control_in_1[7]/shift_register[10] ), .ZN(
        n862) );
  inv0d0 U2022 ( .I(\chip_core/gpio_control_in_1[7]/shift_register[1] ), .ZN(
        n861) );
  inv0d0 U2023 ( .I(\chip_core/gpio_control_in_1[7]/shift_register[0] ), .ZN(
        n860) );
  inv0d0 U2024 ( .I(\chip_core/gpio_control_in_1[6]/shift_register[10] ), .ZN(
        n859) );
  inv0d0 U2025 ( .I(\chip_core/gpio_control_in_1[6]/shift_register[1] ), .ZN(
        n858) );
  inv0d0 U2026 ( .I(\chip_core/gpio_control_in_1[6]/shift_register[0] ), .ZN(
        n857) );
  inv0d0 U2027 ( .I(\chip_core/gpio_control_in_1[5]/shift_register[10] ), .ZN(
        n856) );
  inv0d0 U2028 ( .I(\chip_core/gpio_control_in_1[5]/shift_register[1] ), .ZN(
        n855) );
  inv0d0 U2029 ( .I(\chip_core/gpio_control_in_1[5]/shift_register[0] ), .ZN(
        n854) );
  inv0d0 U2030 ( .I(\chip_core/gpio_control_in_1[4]/shift_register[10] ), .ZN(
        n853) );
  inv0d0 U2031 ( .I(\chip_core/gpio_control_in_1[4]/shift_register[1] ), .ZN(
        n852) );
  inv0d0 U2032 ( .I(\chip_core/gpio_control_in_1[4]/shift_register[0] ), .ZN(
        n851) );
  inv0d0 U2033 ( .I(\chip_core/gpio_control_in_1[3]/shift_register[10] ), .ZN(
        n850) );
  inv0d0 U2034 ( .I(\chip_core/gpio_control_in_1[3]/shift_register[1] ), .ZN(
        n849) );
  inv0d0 U2035 ( .I(\chip_core/gpio_control_in_1[3]/shift_register[0] ), .ZN(
        n848) );
  inv0d0 U2036 ( .I(\chip_core/gpio_control_in_1[2]/shift_register[10] ), .ZN(
        n847) );
  inv0d0 U2037 ( .I(\chip_core/gpio_control_in_1[2]/shift_register[1] ), .ZN(
        n846) );
  inv0d0 U2038 ( .I(\chip_core/gpio_control_in_1[2]/shift_register[0] ), .ZN(
        n845) );
  inv0d0 U2039 ( .I(\chip_core/gpio_control_in_1[1]/shift_register[10] ), .ZN(
        n844) );
  inv0d0 U2040 ( .I(\chip_core/gpio_control_in_1[1]/shift_register[1] ), .ZN(
        n843) );
  inv0d0 U2041 ( .I(\chip_core/gpio_control_in_1[1]/shift_register[0] ), .ZN(
        n842) );
  inv0d0 U2042 ( .I(\chip_core/gpio_control_in_1[0]/shift_register[10] ), .ZN(
        n841) );
  inv0d0 U2043 ( .I(\chip_core/gpio_control_in_1[0]/shift_register[1] ), .ZN(
        n840) );
  inv0d0 U2044 ( .I(\chip_core/gpio_control_in_1[0]/shift_register[0] ), .ZN(
        n839) );
  inv0d0 U2045 ( .I(\chip_core/gpio_control_in_1a[5]/shift_register[10] ), 
        .ZN(n838) );
  inv0d0 U2046 ( .I(\chip_core/gpio_control_in_1a[5]/shift_register[1] ), .ZN(
        n837) );
  inv0d0 U2047 ( .I(\chip_core/gpio_control_in_1a[5]/shift_register[0] ), .ZN(
        n836) );
  inv0d0 U2048 ( .I(\chip_core/gpio_control_in_1a[4]/shift_register[10] ), 
        .ZN(n835) );
  inv0d0 U2049 ( .I(\chip_core/gpio_control_in_1a[4]/shift_register[1] ), .ZN(
        n834) );
  inv0d0 U2050 ( .I(\chip_core/gpio_control_in_1a[4]/shift_register[0] ), .ZN(
        n833) );
  inv0d0 U2051 ( .I(\chip_core/gpio_control_in_1a[3]/shift_register[10] ), 
        .ZN(n832) );
  inv0d0 U2052 ( .I(\chip_core/gpio_control_in_1a[3]/shift_register[1] ), .ZN(
        n831) );
  inv0d0 U2053 ( .I(\chip_core/gpio_control_in_1a[3]/shift_register[0] ), .ZN(
        n830) );
  inv0d0 U2054 ( .I(\chip_core/gpio_control_in_1a[2]/shift_register[10] ), 
        .ZN(n829) );
  inv0d0 U2055 ( .I(\chip_core/gpio_control_in_1a[2]/shift_register[1] ), .ZN(
        n828) );
  inv0d0 U2056 ( .I(\chip_core/gpio_control_in_1a[2]/shift_register[0] ), .ZN(
        n827) );
  inv0d0 U2057 ( .I(\chip_core/gpio_control_in_1a[1]/shift_register[11] ), 
        .ZN(n826) );
  inv0d0 U2058 ( .I(\chip_core/gpio_control_in_1a[1]/shift_register[0] ), .ZN(
        n825) );
  inv0d0 U2059 ( .I(\chip_core/gpio_control_in_1a[0]/shift_register[10] ), 
        .ZN(n824) );
  inv0d0 U2060 ( .I(\chip_core/gpio_control_in_1a[0]/shift_register[1] ), .ZN(
        n823) );
  inv0d0 U2061 ( .I(\chip_core/gpio_control_in_1a[0]/shift_register[0] ), .ZN(
        n822) );
  inv0d0 U2062 ( .I(\chip_core/gpio_control_bidir_1[1]/shift_register[12] ), 
        .ZN(n821) );
  inv0d0 U2063 ( .I(\chip_core/gpio_control_bidir_1[1]/shift_register[11] ), 
        .ZN(n820) );
  inv0d0 U2064 ( .I(\chip_core/gpio_control_bidir_1[1]/shift_register[1] ), 
        .ZN(n819) );
  inv0d0 U2065 ( .I(\chip_core/gpio_control_bidir_1[1]/shift_register[0] ), 
        .ZN(n818) );
  inv0d0 U2066 ( .I(\chip_core/spi_pll90_sel [1]), .ZN(n817) );
  inv0d0 U2067 ( .I(\chip_core/clock_ctrl/divider2/syncNp [1]), .ZN(n816) );
  inv0d0 U2068 ( .I(\chip_core/clock_ctrl/divider2/even_0/counter [0]), .ZN(
        n1698) );
  nr03d0 U2069 ( .A1(\chip_core/clock_ctrl/divider2/even_0/counter [2]), .A2(
        \chip_core/clock_ctrl/divider2/even_0/counter [1]), .A3(n1698), .ZN(
        n1689) );
  aon211d1 U2070 ( .C1(n1697), .C2(n1689), .B(
        \chip_core/clock_ctrl/divider2/even_0/out_counter ), .A(n1688), .ZN(
        n815) );
  inv0d0 U2071 ( .I(\chip_core/spi_pll_sel [1]), .ZN(n813) );
  inv0d0 U2072 ( .I(\chip_core/clock_ctrl/divider/syncNp [1]), .ZN(n812) );
  nr03d0 U2073 ( .A1(\chip_core/clock_ctrl/divider/even_0/counter [2]), .A2(
        \chip_core/clock_ctrl/divider/even_0/counter [1]), .A3(n1705), .ZN(
        n1691) );
  aon211d1 U2074 ( .C1(n1704), .C2(n1691), .B(
        \chip_core/clock_ctrl/divider/even_0/out_counter ), .A(n1690), .ZN(
        n811) );
  inv0d0 U2075 ( .I(n1694), .ZN(n1692) );
  aoi221d1 U2076 ( .B1(n1694), .B2(n1693), .C1(n1692), .C2(
        \chip_core/clock_ctrl/divider/odd_0/out_counter ), .A(
        \chip_core/clock_ctrl/divider/odd_0/rst_pulse ), .ZN(n809) );
  oai31d1 U2077 ( .B1(\chip_core/clock_ctrl/divider2/even_0/counter [2]), .B2(
        \chip_core/clock_ctrl/divider2/even_0/counter [1]), .B3(n1695), .A(
        \chip_core/clock_ctrl/divider2/even_0/counter [0]), .ZN(n1696) );
  aoi22d1 U2078 ( .A1(\chip_core/clock_ctrl/divider2/syncN [0]), .A2(
        \chip_core/clock_ctrl/divider2/even_0/counter [0]), .B1(n1696), .B2(
        n1697), .ZN(n806) );
  nr02d0 U2079 ( .A1(\chip_core/clock_ctrl/divider2/syncN [0]), .A2(
        \chip_core/clock_ctrl/divider2/even_0/counter [0]), .ZN(n1703) );
  inv0d0 U2080 ( .I(\chip_core/clock_ctrl/divider2/even_0/counter [2]), .ZN(
        n1701) );
  aon211d1 U2081 ( .C1(\chip_core/clock_ctrl/divider2/syncN [2]), .C2(n1701), 
        .B(n1698), .A(n1697), .ZN(n1699) );
  inv0d0 U2082 ( .I(\chip_core/clock_ctrl/divider2/even_0/counter [1]), .ZN(
        n1702) );
  aoi22d1 U2083 ( .A1(\chip_core/clock_ctrl/divider2/even_0/counter [1]), .A2(
        n1703), .B1(n1699), .B2(n1702), .ZN(n804) );
  aon211d1 U2084 ( .C1(n1703), .C2(n1702), .B(n1701), .A(n1700), .ZN(n803) );
  inv0d0 U2085 ( .I(\chip_core/clock_ctrl/divider/even_0/counter [2]), .ZN(
        n1708) );
  aon211d1 U2086 ( .C1(\chip_core/clock_ctrl/divider/syncN [2]), .C2(n1708), 
        .B(n1705), .A(n1704), .ZN(n1706) );
  inv0d0 U2087 ( .I(\chip_core/clock_ctrl/divider/even_0/counter [1]), .ZN(
        n1709) );
  aoi22d1 U2088 ( .A1(\chip_core/clock_ctrl/divider/even_0/counter [1]), .A2(
        n1710), .B1(n1706), .B2(n1709), .ZN(n802) );
  aon211d1 U2089 ( .C1(n1710), .C2(n1709), .B(n1708), .A(n1707), .ZN(n801) );
endmodule


