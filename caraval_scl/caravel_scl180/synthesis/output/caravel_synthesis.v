/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5-6
// Date      : Sat Dec  7 04:01:56 2024
/////////////////////////////////////////////////////////////


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
  tri   clock;
  tri   resetb;
  tri   flash_csb;
  tri   flash_clk;
  tri   flash_io0;
  tri   flash_io1;
  tri   vddio_core;
  tri   vssio_core;
  tri   vdda_core;
  tri   vssa_core;
  tri   vccd_core;
  tri   vssd_core;
  tri   vdda1_core;
  tri   vdda2_core;
  tri   vssa1_core;
  tri   vssa2_core;
  tri   vccd1_core;
  tri   vccd2_core;
  tri   vssd1_core;
  tri   vssd2_core;
  tri   porb_h;
  tri   por_l;
  tri   rstb_h;
  tri   clock_core;
  tri   gpio_out_core;
  tri   gpio_in_core;
  tri   gpio_mode0_core;
  tri   gpio_mode1_core;
  tri   gpio_outenb_core;
  tri   gpio_inenb_core;
  tri   flash_csb_frame;
  tri   flash_clk_frame;
  tri   flash_csb_oeb;
  tri   flash_clk_oeb;
  tri   flash_io0_oeb;
  tri   flash_io1_oeb;
  tri   flash_io0_ieb;
  tri   flash_io1_ieb;
  tri   flash_io0_do;
  tri   flash_io1_do;
  tri   flash_io0_di;
  tri   flash_io1_di;
  tri   [37:0] mprj_io_one;
  tri   [37:0] mprj_io_in;
  tri   [37:0] mprj_io_out;
  tri   [37:0] mprj_io_oeb;
  tri   [37:0] mprj_io_inp_dis;
  tri   [37:0] mprj_io_ib_mode_sel;
  tri   [37:0] mprj_io_vtrip_sel;
  tri   [37:0] mprj_io_slow_sel;
  tri   [37:0] mprj_io_holdover;
  tri   [37:0] mprj_io_analog_en;
  tri   [37:0] mprj_io_analog_sel;
  tri   [37:0] mprj_io_analog_pol;
  tri   [113:0] mprj_io_dm;
  tri   [28:0] user_analog_io;

  chip_io padframe ( .vddio_pad(vddio), .vddio_pad2(vddio_2), .vssio_pad(vssio), .vssio_pad2(vssio_2), .vccd_pad(vccd), .vssd_pad(vssd), .vdda_pad(vdda), 
        .vssa_pad(vssa), .vdda1_pad(vdda1), .vdda1_pad2(vdda1_2), .vdda2_pad(
        vdda2), .vssa1_pad(vssa1), .vssa1_pad2(vssa1_2), .vssa2_pad(vssa2), 
        .vccd1_pad(vccd1), .vccd2_pad(vccd2), .vssd1_pad(vssd1), .vssd2_pad(
        vssd2), .vddio(vddio_core), .vssio(vssio_core), .vdda(vdda_core), 
        .vssa(vssa_core), .vccd(vccd_core), .vssd(vssd_core), .vdda1(
        vdda1_core), .vdda2(vdda2_core), .vssa1(vssa1_core), .vssa2(vssa2_core), .vccd1(vccd1_core), .vccd2(vccd2_core), .vssd1(vssd1_core), .vssd2(
        vssd2_core), .gpio(gpio), .mprj_io(mprj_io), .clock(clock), .resetb(
        resetb), .flash_csb(flash_csb), .flash_clk(flash_clk), .flash_io0(
        flash_io0), .flash_io1(flash_io1), .porb_h(porb_h), .por(por_l), 
        .resetb_core_h(rstb_h), .clock_core(clock_core), .gpio_out_core(
        gpio_out_core), .gpio_in_core(gpio_in_core), .gpio_mode0_core(
        gpio_mode0_core), .gpio_mode1_core(gpio_mode1_core), 
        .gpio_outenb_core(gpio_outenb_core), .gpio_inenb_core(gpio_inenb_core), 
        .flash_csb_core(flash_csb_frame), .flash_clk_core(flash_clk_frame), 
        .flash_csb_oeb_core(flash_csb_oeb), .flash_clk_oeb_core(flash_clk_oeb), 
        .flash_io0_oeb_core(flash_io0_oeb), .flash_io1_oeb_core(flash_io1_oeb), 
        .flash_io0_ieb_core(flash_io0_ieb), .flash_io1_ieb_core(flash_io1_ieb), 
        .flash_io0_do_core(flash_io0_do), .flash_io1_do_core(flash_io1_do), 
        .flash_io0_di_core(flash_io0_di), .flash_io1_di_core(flash_io1_di), 
        .mprj_io_one(mprj_io_one), .mprj_io_in(mprj_io_in), .mprj_io_out(
        mprj_io_out), .mprj_io_oeb(mprj_io_oeb), .mprj_io_inp_dis(
        mprj_io_inp_dis), .mprj_io_ib_mode_sel(mprj_io_ib_mode_sel), 
        .mprj_io_vtrip_sel(mprj_io_vtrip_sel), .mprj_io_slow_sel(
        mprj_io_slow_sel), .mprj_io_holdover(mprj_io_holdover), 
        .mprj_io_analog_en(mprj_io_analog_en), .mprj_io_analog_sel(
        mprj_io_analog_sel), .mprj_io_analog_pol(mprj_io_analog_pol), 
        .mprj_io_dm(mprj_io_dm), .mprj_analog_io(user_analog_io) );
  caravel_core chip_core ( .vddio(vddio_core), .vssio(vssio_core), .vdda(
        vdda_core), .vssa(vssa_core), .vccd(vccd_core), .vssd(vssd_core), 
        .vdda1(vdda1_core), .vdda2(vdda2_core), .vssa1(vssa1_core), .vssa2(
        vssa2_core), .vccd1(vccd1_core), .vccd2(vccd2_core), .vssd1(vssd1_core), .vssd2(vssd2_core), .porb_h(porb_h), .por_l(por_l), .rstb_h(rstb_h), 
        .clock_core(clock_core), .gpio_out_core(gpio_out_core), .gpio_in_core(
        gpio_in_core), .gpio_mode0_core(gpio_mode0_core), .gpio_mode1_core(
        gpio_mode1_core), .gpio_outenb_core(gpio_outenb_core), 
        .gpio_inenb_core(gpio_inenb_core), .flash_csb_frame(flash_csb_frame), 
        .flash_clk_frame(flash_clk_frame), .flash_csb_oeb(flash_csb_oeb), 
        .flash_clk_oeb(flash_clk_oeb), .flash_io0_oeb(flash_io0_oeb), 
        .flash_io1_oeb(flash_io1_oeb), .flash_io0_ieb(flash_io0_ieb), 
        .flash_io1_ieb(flash_io1_ieb), .flash_io0_do(flash_io0_do), 
        .flash_io1_do(flash_io1_do), .flash_io0_di(flash_io0_di), 
        .flash_io1_di(flash_io1_di), .mprj_io_in(mprj_io_in), .mprj_io_out(
        mprj_io_out), .mprj_io_oeb(mprj_io_oeb), .mprj_io_inp_dis(
        mprj_io_inp_dis), .mprj_io_ib_mode_sel(mprj_io_ib_mode_sel), 
        .mprj_io_vtrip_sel(mprj_io_vtrip_sel), .mprj_io_slow_sel(
        mprj_io_slow_sel), .mprj_io_holdover(mprj_io_holdover), 
        .mprj_io_analog_en(mprj_io_analog_en), .mprj_io_analog_sel(
        mprj_io_analog_sel), .mprj_io_analog_pol(mprj_io_analog_pol), 
        .mprj_io_dm(mprj_io_dm), .mprj_io_one(mprj_io_one), .mprj_analog_io(
        user_analog_io) );
endmodule

