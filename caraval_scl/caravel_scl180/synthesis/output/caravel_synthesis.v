/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5-6
// Date      : Tue Dec 17 19:28:47 2024
/////////////////////////////////////////////////////////////


module chip_io ( vddio_pad, vddio_pad2, vssio_pad, vssio_pad2, vccd_pad, 
        vssd_pad, vdda_pad, vssa_pad, vdda1_pad, vdda1_pad2, vdda2_pad, 
        vssa1_pad, vssa1_pad2, vssa2_pad, vccd1_pad, vccd2_pad, vssd1_pad, 
        vssd2_pad, vddio, vssio, vccd, vssd, vdda, vssa, vdda1, vdda2, vssa1, 
        vssa2, vccd1, vccd2, vssd1, vssd2, gpio, clock, resetb, flash_csb, 
        flash_clk, flash_io0, flash_io1, porb_h, por, resetb_core_h, 
        clock_core, gpio_out_core, gpio_in_core, gpio_mode0_core, 
        gpio_mode1_core, gpio_inenb_core, flash_csb_core, flash_clk_core, 
        flash_csb_oeb_core, flash_clk_oeb_core, flash_io0_oeb_core, 
        flash_io1_oeb_core, flash_io0_ieb_core, flash_io1_ieb_core, 
        flash_io0_do_core, flash_io1_do_core, flash_io0_di_core, 
        flash_io1_di_core, mprj_io, mprj_io_out, mprj_io_oeb, mprj_io_inp_dis, 
        mprj_io_ib_mode_sel, mprj_io_vtrip_sel, mprj_io_slow_sel, 
        mprj_io_holdover, mprj_io_analog_en, mprj_io_analog_sel, 
        mprj_io_analog_pol, mprj_io_dm, mprj_io_in, mprj_io_one, 
        mprj_analog_io, gpio_outenb_core_BAR );
  inout [37:0] mprj_io;
  input [37:0] mprj_io_out;
  input [37:0] mprj_io_oeb;
  input [37:0] mprj_io_inp_dis;
  input [37:0] mprj_io_ib_mode_sel;
  input [37:0] mprj_io_vtrip_sel;
  input [37:0] mprj_io_slow_sel;
  input [37:0] mprj_io_holdover;
  input [37:0] mprj_io_analog_en;
  input [37:0] mprj_io_analog_sel;
  input [37:0] mprj_io_analog_pol;
  input [113:0] mprj_io_dm;
  output [37:0] mprj_io_in;
  input [37:0] mprj_io_one;
  inout [28:0] mprj_analog_io;
  input clock, resetb, porb_h, por, gpio_out_core, gpio_mode0_core,
         gpio_mode1_core, gpio_inenb_core, flash_csb_core, flash_clk_core,
         flash_csb_oeb_core, flash_clk_oeb_core, flash_io0_oeb_core,
         flash_io1_oeb_core, flash_io0_ieb_core, flash_io1_ieb_core,
         flash_io0_do_core, flash_io1_do_core, gpio_outenb_core_BAR;
  output vdda1_pad, flash_csb, flash_clk, resetb_core_h, clock_core,
         gpio_in_core, flash_io0_di_core, flash_io1_di_core;
  inout vddio_pad,  vddio_pad2,  vssio_pad,  vssio_pad2,  vccd_pad,  vssd_pad, 
     vdda_pad,  vssa_pad,  vdda1_pad2,  vdda2_pad,  vssa1_pad,  vssa1_pad2, 
     vssa2_pad,  vccd1_pad,  vccd2_pad,  vssd1_pad,  vssd2_pad,  vddio,  vssio, 
     vccd,  vssd,  vdda,  vssa,  vdda1,  vdda2,  vssa1,  vssa2,  vccd1,  vccd2, 
     vssd1,  vssd2,  gpio,  flash_io0,  flash_io1;

  tri   vddio;
  tri   vssio;
  tri   vccd;
  tri   vssd;
  tri   vdda;
  tri   vssa;
  tri   vdda1;
  tri   vdda2;
  tri   vssa2;
  tri   vccd1;
  tri   vccd2;
  tri   vssd2;
  tri   gpio;
  tri   flash_csb;
  tri   flash_clk;
  tri   flash_io0;
  tri   flash_io1;
  tri   [37:0] mprj_io;
  tran( vddio, vddio_pad2);
  tran( vddio, vddio_pad);
  tran( vssio, vssio_pad);
  tran( vccd, vccd_pad);
  tran( vssd, vssd_pad);
  tran( vdda, vdda_pad);
  tran( vssa, vssa_pad);
  assign vdda1_pad = vdda1;
  tran( vdda2, vdda2_pad);
  tran( vssa2, vssa2_pad);
  tran( vccd1, vccd1_pad);
  tran( vccd2, vccd2_pad);
  tran( vssd2, vssd2_pad);
  assign gpio_in_core = gpio;
  assign flash_io1_di_core = flash_io1;
  assign mprj_io_in[37] = mprj_io[37];
  assign mprj_io_in[36] = mprj_io[36];
  assign mprj_io_in[35] = mprj_io[35];
  assign mprj_io_in[34] = mprj_io[34];
  assign mprj_io_in[33] = mprj_io[33];
  assign mprj_io_in[32] = mprj_io[32];
  assign mprj_io_in[31] = mprj_io[31];
  assign mprj_io_in[30] = mprj_io[30];
  assign mprj_io_in[29] = mprj_io[29];
  assign mprj_io_in[28] = mprj_io[28];
  assign mprj_io_in[27] = mprj_io[27];
  assign mprj_io_in[26] = mprj_io[26];
  assign mprj_io_in[25] = mprj_io[25];
  assign mprj_io_in[24] = mprj_io[24];
  assign mprj_io_in[23] = mprj_io[23];
  assign mprj_io_in[22] = mprj_io[22];
  assign mprj_io_in[21] = mprj_io[21];
  assign mprj_io_in[20] = mprj_io[20];
  assign mprj_io_in[19] = mprj_io[19];
  assign mprj_io_in[18] = mprj_io[18];
  assign mprj_io_in[17] = mprj_io[17];
  assign mprj_io_in[16] = mprj_io[16];
  assign mprj_io_in[15] = mprj_io[15];
  assign mprj_io_in[14] = mprj_io[14];
  assign mprj_io_in[13] = mprj_io[13];
  assign mprj_io_in[12] = mprj_io[12];
  assign mprj_io_in[11] = mprj_io[11];
  assign mprj_io_in[10] = mprj_io[10];
  assign mprj_io_in[9] = mprj_io[9];
  assign mprj_io_in[8] = mprj_io[8];
  assign mprj_io_in[7] = mprj_io[7];
  assign mprj_io_in[6] = mprj_io[6];
  assign mprj_io_in[5] = mprj_io[5];
  assign mprj_io_in[4] = mprj_io[4];
  assign mprj_io_in[3] = mprj_io[3];
  assign mprj_io_in[2] = mprj_io[2];
  assign mprj_io_in[1] = mprj_io[1];
  assign mprj_io_in[0] = mprj_io[0];

  invtd1 \gpio_pad/pad/__tmp151  ( .I(1'b1), .EN(1'b1), .ZN(gpio) );
  invtd1 \gpio_pad/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(gpio) );
  invtd1 \flash_io1_pad/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(flash_io1) );
  invtd1 \flash_io1_pad/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(flash_io1) );
  invtd7 \mprj_pads/area1_io_pad[3]/pad/__tmp152  ( .I(1'b0), .EN(1'b1), .ZN(
        mprj_io[3]) );
  invtd7 \mprj_pads/area1_io_pad[3]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[3]) );
  invtd7 \flash_io0_pad/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(flash_io0) );
  invtd7 \flash_io0_pad/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(flash_io0) );
  invtd7 \mprj_pads/area2_io_pad[37]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[37]) );
  invtd7 \mprj_pads/area2_io_pad[37]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[37]) );
  invtd7 \mprj_pads/area2_io_pad[36]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[36]) );
  invtd7 \mprj_pads/area2_io_pad[36]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[36]) );
  invtd7 \mprj_pads/area2_io_pad[35]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[35]) );
  invtd7 \mprj_pads/area2_io_pad[35]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[35]) );
  invtd7 \mprj_pads/area2_io_pad[34]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[34]) );
  invtd7 \mprj_pads/area2_io_pad[34]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[34]) );
  invtd7 \mprj_pads/area2_io_pad[33]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[33]) );
  invtd7 \mprj_pads/area2_io_pad[33]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[33]) );
  invtd7 \mprj_pads/area2_io_pad[32]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[32]) );
  invtd7 \mprj_pads/area2_io_pad[32]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[32]) );
  invtd7 \mprj_pads/area2_io_pad[31]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[31]) );
  invtd7 \mprj_pads/area2_io_pad[31]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[31]) );
  invtd7 \mprj_pads/area2_io_pad[30]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[30]) );
  invtd7 \mprj_pads/area2_io_pad[30]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[30]) );
  invtd7 \mprj_pads/area2_io_pad[29]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[29]) );
  invtd7 \mprj_pads/area2_io_pad[29]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[29]) );
  invtd7 \mprj_pads/area2_io_pad[28]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[28]) );
  invtd7 \mprj_pads/area2_io_pad[28]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[28]) );
  invtd7 \mprj_pads/area2_io_pad[27]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[27]) );
  invtd7 \mprj_pads/area2_io_pad[27]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[27]) );
  invtd7 \mprj_pads/area2_io_pad[26]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[26]) );
  invtd7 \mprj_pads/area2_io_pad[26]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[26]) );
  invtd7 \mprj_pads/area2_io_pad[25]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[25]) );
  invtd7 \mprj_pads/area2_io_pad[25]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[25]) );
  invtd7 \mprj_pads/area2_io_pad[24]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[24]) );
  invtd7 \mprj_pads/area2_io_pad[24]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[24]) );
  invtd7 \mprj_pads/area2_io_pad[23]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[23]) );
  invtd7 \mprj_pads/area2_io_pad[23]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[23]) );
  invtd7 \mprj_pads/area2_io_pad[22]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[22]) );
  invtd7 \mprj_pads/area2_io_pad[22]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[22]) );
  invtd7 \mprj_pads/area2_io_pad[21]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[21]) );
  invtd7 \mprj_pads/area2_io_pad[21]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[21]) );
  invtd7 \mprj_pads/area2_io_pad[20]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[20]) );
  invtd7 \mprj_pads/area2_io_pad[20]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[20]) );
  invtd7 \mprj_pads/area2_io_pad[19]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[19]) );
  invtd7 \mprj_pads/area2_io_pad[19]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[19]) );
  invtd7 \mprj_pads/area1_io_pad[18]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[18]) );
  invtd7 \mprj_pads/area1_io_pad[18]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[18]) );
  invtd7 \mprj_pads/area1_io_pad[17]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[17]) );
  invtd7 \mprj_pads/area1_io_pad[17]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[17]) );
  invtd7 \mprj_pads/area1_io_pad[16]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[16]) );
  invtd7 \mprj_pads/area1_io_pad[16]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[16]) );
  invtd7 \mprj_pads/area1_io_pad[15]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[15]) );
  invtd7 \mprj_pads/area1_io_pad[15]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[15]) );
  invtd7 \mprj_pads/area1_io_pad[14]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[14]) );
  invtd7 \mprj_pads/area1_io_pad[14]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[14]) );
  invtd7 \mprj_pads/area1_io_pad[13]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[13]) );
  invtd7 \mprj_pads/area1_io_pad[13]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[13]) );
  invtd7 \mprj_pads/area1_io_pad[12]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[12]) );
  invtd7 \mprj_pads/area1_io_pad[12]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[12]) );
  invtd7 \mprj_pads/area1_io_pad[11]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[11]) );
  invtd7 \mprj_pads/area1_io_pad[11]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[11]) );
  invtd7 \mprj_pads/area1_io_pad[10]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[10]) );
  invtd7 \mprj_pads/area1_io_pad[10]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[10]) );
  invtd7 \mprj_pads/area1_io_pad[9]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[9]) );
  invtd7 \mprj_pads/area1_io_pad[9]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[9]) );
  invtd7 \mprj_pads/area1_io_pad[8]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[8]) );
  invtd7 \mprj_pads/area1_io_pad[8]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[8]) );
  invtd7 \mprj_pads/area1_io_pad[7]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[7]) );
  invtd7 \mprj_pads/area1_io_pad[7]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[7]) );
  invtd7 \mprj_pads/area1_io_pad[6]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[6]) );
  invtd7 \mprj_pads/area1_io_pad[6]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[6]) );
  invtd7 \mprj_pads/area1_io_pad[5]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[5]) );
  invtd7 \mprj_pads/area1_io_pad[5]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[5]) );
  invtd7 \mprj_pads/area1_io_pad[4]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[4]) );
  invtd7 \mprj_pads/area1_io_pad[4]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[4]) );
  invtd7 \mprj_pads/area1_io_pad[2]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[2]) );
  invtd7 \mprj_pads/area1_io_pad[2]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[2]) );
  invtd7 \mprj_pads/area1_io_pad[1]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[1]) );
  invtd7 \mprj_pads/area1_io_pad[1]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[1]) );
  invtd7 \mprj_pads/area1_io_pad[0]/pad/__tmp152  ( .I(1'b1), .EN(1'b1), .ZN(
        mprj_io[0]) );
  invtd7 \mprj_pads/area1_io_pad[0]/pad/__tmp151  ( .I(1'b1), .EN(1'b0), .ZN(
        mprj_io[0]) );
  invtd7 U1 ( .I(1'b1), .EN(1'b1), .ZN(flash_clk) );
  invtd7 U3 ( .I(1'b1), .EN(1'b1), .ZN(flash_csb) );
endmodule


module housekeeping ( wb_clk_i, wb_rstn_i, wb_adr_i, wb_dat_i, wb_sel_i, 
        wb_we_i, wb_cyc_i, wb_stb_i, wb_ack_o, wb_dat_o, porb, pll_ena, 
        pll_dco_ena, pll_div, pll_sel, pll90_sel, pll_trim, pll_bypass, 
        qspi_enabled, uart_enabled, spi_enabled, debug_mode, ser_tx, ser_rx, 
        spi_sdi, spi_csb, spi_sck, spi_sdo, spi_sdoenb, irq, reset, 
        serial_clock, serial_load, serial_resetn, serial_data_1, serial_data_2, 
        mgmt_gpio_in, mgmt_gpio_out, mgmt_gpio_oeb, pwr_ctrl_out, trap, 
        user_clock, mask_rev_in, spimemio_flash_csb, spimemio_flash_clk, 
        spimemio_flash_io0_oeb, spimemio_flash_io1_oeb, spimemio_flash_io2_oeb, 
        spimemio_flash_io3_oeb, spimemio_flash_io0_do, spimemio_flash_io1_do, 
        spimemio_flash_io2_do, spimemio_flash_io3_do, spimemio_flash_io0_di, 
        spimemio_flash_io1_di, spimemio_flash_io2_di, spimemio_flash_io3_di, 
        debug_in, debug_out, debug_oeb, pad_flash_csb, pad_flash_csb_oeb, 
        pad_flash_clk, pad_flash_clk_oeb, pad_flash_io0_oeb, pad_flash_io1_oeb, 
        pad_flash_io0_ieb, pad_flash_io1_ieb, pad_flash_io0_do, 
        pad_flash_io1_do, pad_flash_io0_di, pad_flash_io1_di, usr1_vcc_pwrgood, 
        usr2_vcc_pwrgood, usr1_vdd_pwrgood, usr2_vdd_pwrgood );
  input [31:0] wb_adr_i;
  input [31:0] wb_dat_i;
  input [3:0] wb_sel_i;
  output [31:0] wb_dat_o;
  output [4:0] pll_div;
  output [2:0] pll_sel;
  output [2:0] pll90_sel;
  output [25:0] pll_trim;
  output [2:0] irq;
  input [37:0] mgmt_gpio_in;
  output [37:0] mgmt_gpio_out;
  output [37:0] mgmt_gpio_oeb;
  output [3:0] pwr_ctrl_out;
  input [31:0] mask_rev_in;
  input wb_clk_i, wb_rstn_i, wb_we_i, wb_cyc_i, wb_stb_i, porb, qspi_enabled,
         uart_enabled, spi_enabled, debug_mode, ser_tx, spi_csb, spi_sck,
         spi_sdo, spi_sdoenb, trap, user_clock, spimemio_flash_csb,
         spimemio_flash_clk, spimemio_flash_io0_oeb, spimemio_flash_io1_oeb,
         spimemio_flash_io2_oeb, spimemio_flash_io3_oeb, spimemio_flash_io0_do,
         spimemio_flash_io1_do, spimemio_flash_io2_do, spimemio_flash_io3_do,
         debug_out, debug_oeb, pad_flash_io0_di, pad_flash_io1_di,
         usr1_vcc_pwrgood, usr2_vcc_pwrgood, usr1_vdd_pwrgood,
         usr2_vdd_pwrgood;
  output wb_ack_o, pll_ena, pll_dco_ena, pll_bypass, ser_rx, spi_sdi, reset,
         serial_clock, serial_load, serial_resetn, serial_data_1,
         serial_data_2, spimemio_flash_io0_di, spimemio_flash_io1_di,
         spimemio_flash_io2_di, spimemio_flash_io3_di, debug_in, pad_flash_csb,
         pad_flash_csb_oeb, pad_flash_clk, pad_flash_clk_oeb,
         pad_flash_io0_oeb, pad_flash_io1_oeb, pad_flash_io0_ieb,
         pad_flash_io1_ieb, pad_flash_io0_do, pad_flash_io1_do;

  assign serial_clock = 1'b0;
  assign pad_flash_io0_ieb = 1'b0;

  mx02d1 U513 ( .I0(1'b0), .I1(1'b0), .S(1'b0) );
endmodule


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
  wire   net81075, net81076, net81077, net81078, net81079, net81080, net81081,
         net81082, net81083, net81084, net81085, net81086, net81087, net81088,
         net81089, net81090, net81091, net81092, net81093, net81094, net81095,
         net81096, net81097, net81098, net81099, net81100, net81101, net81102,
         net81103, net81104, net81105, net81106, net81107, net81108, net81109,
         net81110, net81111, net81112, net81113, net81114, net81115, net81116,
         net81117, net81118, net81119, net81120, net81121, net81122, net81123,
         net81124, net81125, net81126, net81127, net81128, net81129, net81130,
         net81131, net81132, net81133, net81134, net81135, net81136, net81137,
         net81138, net81139;
  wire   [37:0] mprj_io_out;
  wire   [37:0] mprj_io_oeb;
  wire   [37:0] mprj_io_inp_dis;
  wire   [113:0] mprj_io_dm;
  wire   [28:0] user_analog_io;
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

  chip_io padframe ( .vddio_pad(vddio), .vddio_pad2(vddio_2), .vssio_pad(vssio), .vssio_pad2(vssio_2), .vccd_pad(vccd), .vssd_pad(vssd), .vdda_pad(vdda), 
        .vssa_pad(vssa), .vdda1_pad(vdda1), .vdda1_pad2(vdda1_2), .vdda2_pad(
        vdda2), .vssa1_pad(vssa1), .vssa1_pad2(vssa1_2), .vssa2_pad(vssa2), 
        .vccd1_pad(vccd1), .vccd2_pad(vccd2), .vssd1_pad(vssd1), .vssd2_pad(
        vssd2), .vssa1(1'b0), .gpio(gpio), .clock(net81127), .resetb(net81128), 
        .flash_csb(flash_csb), .flash_clk(flash_clk), .flash_io0(flash_io0), 
        .flash_io1(flash_io1), .porb_h(1'b0), .por(1'b0), .gpio_out_core(
        net81129), .gpio_mode0_core(net81130), .gpio_mode1_core(net81131), 
        .gpio_inenb_core(net81133), .flash_csb_core(1'b0), .flash_clk_core(
        1'b0), .flash_csb_oeb_core(net81134), .flash_clk_oeb_core(net81135), 
        .flash_io0_oeb_core(net81136), .flash_io1_oeb_core(net81137), 
        .flash_io0_ieb_core(net81138), .flash_io1_ieb_core(1'b0), 
        .flash_io0_do_core(net81139), .flash_io1_do_core(1'b0), .mprj_io(
        mprj_io), .mprj_io_out({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0}), .mprj_io_oeb({1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1}), 
        .mprj_io_inp_dis({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .mprj_io_ib_mode_sel({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .mprj_io_vtrip_sel({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .mprj_io_slow_sel({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .mprj_io_holdover({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .mprj_io_analog_en({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .mprj_io_analog_sel({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .mprj_io_analog_pol({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .mprj_io_dm({1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 
        1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 
        1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0}), .mprj_io_one({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .mprj_analog_io({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .gpio_outenb_core_BAR(net81132) );
  housekeeping \chip_core/housekeeping  ( .wb_clk_i(net81075), .wb_rstn_i(1'b0), .wb_adr_i({net81076, net81077, net81078, net81079, net81080, net81081, 
        net81082, net81083, net81084, net81085, net81086, net81087, net81088, 
        net81089, net81090, net81091, net81092, net81093, net81094, net81095, 
        net81096, net81097, net81098, net81099, net81100, net81101, net81102, 
        net81103, net81104, net81105, 1'b0, 1'b0}), .wb_dat_i({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .wb_sel_i({1'b0, 1'b0, 1'b0, 
        1'b0}), .wb_we_i(1'b0), .wb_cyc_i(net81106), .wb_stb_i(net81107), 
        .porb(1'b0), .qspi_enabled(1'b0), .uart_enabled(net81108), 
        .spi_enabled(net81109), .debug_mode(net81110), .ser_tx(net81111), 
        .spi_csb(net81112), .spi_sck(net81113), .spi_sdo(net81114), 
        .spi_sdoenb(net81115), .mgmt_gpio_in({1'b0, net81116, 1'b0, net81117, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, net81118, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, net81119, net81120, 1'b0, 1'b0, 1'b0, 
        net81121}), .trap(1'b0), .user_clock(net81122), .mask_rev_in({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .spimemio_flash_csb(1'b0), 
        .spimemio_flash_clk(1'b0), .spimemio_flash_io0_oeb(net81123), 
        .spimemio_flash_io1_oeb(1'b1), .spimemio_flash_io2_oeb(1'b1), 
        .spimemio_flash_io3_oeb(1'b1), .spimemio_flash_io0_do(net81124), 
        .spimemio_flash_io1_do(1'b0), .spimemio_flash_io2_do(1'b0), 
        .spimemio_flash_io3_do(1'b0), .debug_out(1'b0), .debug_oeb(net81125), 
        .pad_flash_io0_di(1'b0), .pad_flash_io1_di(net81126), 
        .usr1_vcc_pwrgood(1'b1), .usr2_vcc_pwrgood(1'b1), .usr1_vdd_pwrgood(
        1'b1), .usr2_vdd_pwrgood(1'b1) );
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
  mx02d1 U381 ( .I0(1'b1), .I1(1'b1), .S(1'b0) );
endmodule

