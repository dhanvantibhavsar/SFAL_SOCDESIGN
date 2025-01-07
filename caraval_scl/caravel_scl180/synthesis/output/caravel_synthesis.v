/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5-6
// Date      : Tue Jan  7 08:12:48 2025
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
        flash_io1_oeb_core, flash_io1_ieb_core, flash_io0_do_core, 
        flash_io1_do_core, flash_io0_di_core, flash_io1_di_core, mprj_io, 
        mprj_io_out, mprj_io_oeb, mprj_io_inp_dis, mprj_io_ib_mode_sel, 
        mprj_io_vtrip_sel, mprj_io_slow_sel, mprj_io_holdover, 
        mprj_io_analog_en, mprj_io_analog_sel, mprj_io_analog_pol, mprj_io_dm, 
        mprj_io_in, mprj_io_one, mprj_analog_io, gpio_outenb_core_BAR, 
        flash_io0_ieb_core_BAR );
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
         flash_io1_oeb_core, flash_io1_ieb_core, flash_io0_do_core,
         flash_io1_do_core, gpio_outenb_core_BAR, flash_io0_ieb_core_BAR;
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
  tri   vssa1;
  tri   vssa2;
  tri   vccd1;
  tri   vccd2;
  tri   vssd2;
  tri   gpio;
  tri   flash_csb;
  tri   flash_clk;
  tri   flash_io0;
  tri   flash_io1;
  tri   n1;
  tri   [37:0] mprj_io;
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
  tri   [37:0] mprj_io_in;
  tri   n4;
  tri   n5;
  tri   n6;
  tri   n7;
  tri   n8;
  tri   n9;
  tri   n10;
  tri   n11;
  tri   n12;
  tri   n13;
  tri   n14;
  tri   n15;
  tri   n16;
  tri   n17;
  tri   n18;
  tri   n19;
  tri   n20;
  tri   n21;
  tri   n22;
  tri   n23;
  tri   n24;
  tri   n25;
  tri   n26;
  tri   n27;
  tri   n28;
  tri   n29;
  tri   n30;
  tri   n31;
  tri   n32;
  tri   n33;
  tri   n34;
  tri   n35;
  tri   n36;
  tri   n37;
  tri   n38;
  tri   n39;
  tri   n40;
  tri   n41;
  tri   [28:0] mprj_analog_io;
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

  mprj_io mprj_pads ( .vddio(vddio), .vssio(vssio), .vccd(vccd), .vssd(vssd), 
        .vdda1(vdda1), .vdda2(vdda2), .vssa1(vssa1), .vssa2(vssa2), .porb_h(
        1'b0), .vccd_conb({1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), .io(mprj_io), .io_out(
        mprj_io_out), .oeb(mprj_io_oeb), .enh({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .inp_dis(
        mprj_io_inp_dis), .ib_mode_sel(mprj_io_ib_mode_sel), .vtrip_sel(
        mprj_io_vtrip_sel), .holdover(mprj_io_holdover), .slow_sel(
        mprj_io_slow_sel), .analog_en(mprj_io_analog_en), .analog_sel(
        mprj_io_analog_sel), .analog_pol(mprj_io_analog_pol), .dm(mprj_io_dm), 
        .io_in(mprj_io_in), .analog_io(mprj_analog_io) );
  pc3d01 \clock_pad/pad  ( .PAD(clock), .CIN(clock_core) );
  pc3b03ed \gpio_pad/pad  ( .I(1'b0), .OEN(1'b1), .PAD(gpio), .RENB(1'b1) );
  pt3b02 \flash_csb_pad/pad  ( .I(1'b0), .OEN(1'b1), .PAD(flash_csb) );
  pc3b03ed \flash_io1_pad/pad  ( .I(1'b0), .OEN(1'b1), .PAD(flash_io1), .RENB(
        1'b0) );
  pc3b03ed \flash_io0_pad/pad  ( .I(1'b0), .OEN(1'b1), .PAD(flash_io0), .RENB(
        1'b0) );
  pt3b02 \flash_clk_pad/pad  ( .I(1'b0), .OEN(1'b1), .PAD(flash_clk) );
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
        pad_flash_io1_ieb, pad_flash_io0_do, pad_flash_io1_do, 
        pad_flash_io0_di, pad_flash_io1_di, usr1_vcc_pwrgood, usr2_vcc_pwrgood, 
        usr1_vdd_pwrgood, usr2_vdd_pwrgood, pad_flash_io0_ieb_BAR );
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
         pad_flash_io0_oeb, pad_flash_io1_oeb, pad_flash_io1_ieb,
         pad_flash_io0_do, pad_flash_io1_do, pad_flash_io0_ieb_BAR;

  assign serial_clock = 1'b0;
  assign pll_div[4] = 1'b0;
  assign pll_div[3] = 1'b0;
  assign pll_div[1] = 1'b0;
  assign pll_div[0] = 1'b0;

  mx02d1 U513 ( .I0(1'b0), .I1(1'b0), .S(1'b0), .Z(serial_load) );
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
  wire   clock_core, \chip_core/gpio_load_1_shifted[0] ,
         \chip_core/clock_ctrl/core_ext_clk , \chip_core/pll/creset ,
         \chip_core/pll/pll_control/N68 , \chip_core/pll/pll_control/N67 ,
         \chip_core/pll/pll_control/N66 , \chip_core/pll/pll_control/N65 ,
         \chip_core/pll/pll_control/N64 ,
         \chip_core/pll/ringosc/dstage[0].id/d2 ,
         \chip_core/pll/ringosc/iss/d2 ,
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
         \chip_core/pll/ringosc/dstage[1].id/d2 , n37, n38, n42, n43, n47, n48,
         n52, n53, n57, n58, n62, n63, n67, n68, n72, n73, n77, n78, n82, n83,
         n87, n88, n92, n93, n97, n98, n102, n103, n107, n108, n112, n113,
         n117, n118, n122, n123, n126, n127, n130, n131, n134, n135, n139,
         n140, n144, n145, n149, n150, n154, n155, n159, n160, n164, n165,
         n169, n170, n174, n175, n179, n180, n184, n185, n189, n190, n194,
         n195, n199, n200, n204, n205, n209, n210, n214, n215, n218, n219,
         n335, n336, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, \DP_OP_226J5_123_679/n19 ,
         \DP_OP_226J5_123_679/n6 , \DP_OP_226J5_123_679/n5 ,
         \DP_OP_226J5_123_679/n4 , \DP_OP_226J5_123_679/n3 ,
         \DP_OP_226J5_123_679/n2 , n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, net76460, net76461, net76462, net76463, net76464,
         net76465, net76466, net76467, net76468, net76469, net76470, net76471,
         net76472, net76473, net76474, net76475, net76476, net76477, net76478,
         net76479, net76480, net76481, net76482, net76483, net76484, net76485,
         net76486, net76487, net76488, net76489, net76490, net76491, net76492,
         net76493, net76494, net76495, net76496, net76497, net76498, net76499,
         net76500, net76501, net76502, net76503, net76504, net76505, net76506,
         net76507, net76508, net76509, net76510;
  wire   [25:0] \chip_core/pll/otrim ;
  wire   [25:0] \chip_core/pll/itrim ;
  wire   [2:0] \chip_core/pll/pll_control/prep ;
  wire   [2:0] \chip_core/pll/pll_control/oscbuf ;
  wire   [1:0] \chip_core/pll/pll_control/tval ;
  wire   [4:0] \chip_core/pll/pll_control/tint ;
  wire   [4:0] \chip_core/pll/pll_control/count1 ;
  wire   [4:0] \chip_core/pll/pll_control/count0 ;
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
  tri   [18:0] \chip_core/mgmt_gpio_in ;
  tri   [18:0] \chip_core/mgmt_io_in_hk ;
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

  chip_io padframe ( .vddio_pad(vddio), .vddio_pad2(vddio_2), .vssio_pad(vssio), .vssio_pad2(vssio_2), .vccd_pad(vccd), .vssd_pad(vssd), .vdda_pad(vdda), 
        .vssa_pad(vssa), .vdda1_pad(vdda1), .vdda1_pad2(vdda1_2), .vdda2_pad(
        vdda2), .vssa1_pad(vssa1), .vssa1_pad2(vssa1_2), .vssa2_pad(vssa2), 
        .vccd1_pad(vccd1), .vccd2_pad(vccd2), .vssd1_pad(vssd1), .vssd2_pad(
        vssd2), .gpio(gpio), .clock(clock), .resetb(net76499), .flash_csb(
        flash_csb), .flash_clk(flash_clk), .flash_io0(flash_io0), .flash_io1(
        flash_io1), .porb_h(1'b0), .por(1'b0), .clock_core(clock_core), 
        .gpio_out_core(net76500), .gpio_mode0_core(net76501), 
        .gpio_mode1_core(net76502), .gpio_inenb_core(net76504), 
        .flash_csb_core(1'b0), .flash_clk_core(1'b0), .flash_csb_oeb_core(
        net76505), .flash_clk_oeb_core(net76506), .flash_io0_oeb_core(net76507), .flash_io1_oeb_core(net76508), .flash_io1_ieb_core(1'b0), 
        .flash_io0_do_core(net76510), .flash_io1_do_core(1'b0), .mprj_io(
        mprj_io), .mprj_io_out(mprj_io_out), .mprj_io_oeb(mprj_io_oeb), 
        .mprj_io_inp_dis(mprj_io_inp_dis), .mprj_io_ib_mode_sel(
        mprj_io_ib_mode_sel), .mprj_io_vtrip_sel(mprj_io_vtrip_sel), 
        .mprj_io_slow_sel(mprj_io_slow_sel), .mprj_io_holdover(
        mprj_io_holdover), .mprj_io_analog_en(mprj_io_analog_en), 
        .mprj_io_analog_sel(mprj_io_analog_sel), .mprj_io_analog_pol(
        mprj_io_analog_pol), .mprj_io_dm(mprj_io_dm), .mprj_io_in({
        \chip_core/mgmt_gpio_in , \chip_core/mgmt_io_in_hk }), .mprj_io_one({
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 
        1'b1, 1'b1}), .gpio_outenb_core_BAR(net76503), 
        .flash_io0_ieb_core_BAR(net76509) );
  housekeeping \chip_core/housekeeping  ( .wb_clk_i(net76460), .wb_rstn_i(1'b0), .wb_adr_i({net76461, net76462, net76463, net76464, net76465, net76466, 
        net76467, net76468, net76469, net76470, net76471, net76472, net76473, 
        net76474, net76475, net76476, net76477, net76478, net76479, net76480, 
        net76481, net76482, net76483, net76484, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .wb_dat_i({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .wb_sel_i({1'b0, 1'b0, 1'b0, 1'b0}), .wb_we_i(1'b0), 
        .wb_cyc_i(net76485), .wb_stb_i(net76486), .porb(1'b0), .qspi_enabled(
        1'b0), .uart_enabled(net76487), .spi_enabled(net76488), .debug_mode(
        net76489), .ser_tx(net76490), .spi_csb(net76491), .spi_sck(net76492), 
        .spi_sdo(net76493), .spi_sdoenb(net76494), .serial_load(
        \chip_core/gpio_load_1_shifted[0] ), .mgmt_gpio_in({1'b0, 1'b0, 1'b0, 
        \chip_core/mgmt_gpio_in [15], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        \chip_core/mgmt_io_in_hk [5], 1'b0, 1'b0, 1'b0, 1'b0, 
        \chip_core/mgmt_io_in_hk [0]}), .trap(1'b0), .user_clock(1'b0), 
        .mask_rev_in({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .spimemio_flash_csb(1'b0), .spimemio_flash_clk(1'b0), 
        .spimemio_flash_io0_oeb(net76495), .spimemio_flash_io1_oeb(1'b1), 
        .spimemio_flash_io2_oeb(1'b1), .spimemio_flash_io3_oeb(1'b1), 
        .spimemio_flash_io0_do(net76496), .spimemio_flash_io1_do(1'b0), 
        .spimemio_flash_io2_do(1'b0), .spimemio_flash_io3_do(1'b0), 
        .debug_out(1'b0), .debug_oeb(net76497), .pad_flash_io0_di(1'b0), 
        .pad_flash_io1_di(net76498), .usr1_vcc_pwrgood(1'b1), 
        .usr2_vcc_pwrgood(1'b1), .usr1_vdd_pwrgood(1'b1), .usr2_vdd_pwrgood(
        1'b1) );
  adiode \chip_core/spare_logic[3]/spare_logic_diode[3]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[3]/spare_logic_diode[2]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[3]/spare_logic_diode[1]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[3]/spare_logic_diode[0]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[0]/spare_logic_diode[3]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[0]/spare_logic_diode[2]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[0]/spare_logic_diode[1]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[0]/spare_logic_diode[0]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[1]/spare_logic_diode[3]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[1]/spare_logic_diode[2]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[1]/spare_logic_diode[1]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[1]/spare_logic_diode[0]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[2]/spare_logic_diode[3]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[2]/spare_logic_diode[2]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[2]/spare_logic_diode[1]  ( .I(1'b0) );
  adiode \chip_core/spare_logic[2]/spare_logic_diode[0]  ( .I(1'b0) );
  invtd7 \chip_core/pll/ringosc/dstage[0].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [0]), .EN(\chip_core/pll/itrim [0]), .ZN(
        \chip_core/pll/ringosc/d [1]) );
  invtd4 \chip_core/pll/ringosc/dstage[0].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [0]), .EN(\chip_core/pll/itrim [13]), .ZN(
        \chip_core/pll/ringosc/dstage[0].id/d1 ) );
  invtd7 \chip_core/pll/ringosc/iss/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [12]), .EN(1'b1), .ZN(
        \chip_core/pll/ringosc/d [0]) );
  invtd2 \chip_core/pll/ringosc/iss/delayen0  ( .I(
        \chip_core/pll/ringosc/iss/d2 ), .EN(n370), .ZN(
        \chip_core/pll/ringosc/d [0]) );
  invtd4 \chip_core/pll/ringosc/iss/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [12]), .EN(\chip_core/pll/itrim [25]), .ZN(
        \chip_core/pll/ringosc/iss/d1 ) );
  invtd4 \chip_core/pll/ringosc/dstage[11].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [11]), .EN(\chip_core/pll/itrim [24]), .ZN(
        \chip_core/pll/ringosc/dstage[11].id/d1 ) );
  invtd4 \chip_core/pll/ringosc/dstage[10].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [10]), .EN(\chip_core/pll/itrim [23]), .ZN(
        \chip_core/pll/ringosc/dstage[10].id/d1 ) );
  invtd4 \chip_core/pll/ringosc/dstage[9].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [9]), .EN(\chip_core/pll/itrim [22]), .ZN(
        \chip_core/pll/ringosc/dstage[9].id/d1 ) );
  invtd4 \chip_core/pll/ringosc/dstage[8].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [8]), .EN(\chip_core/pll/itrim [21]), .ZN(
        \chip_core/pll/ringosc/dstage[8].id/d1 ) );
  invtd4 \chip_core/pll/ringosc/dstage[7].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [7]), .EN(\chip_core/pll/itrim [20]), .ZN(
        \chip_core/pll/ringosc/dstage[7].id/d1 ) );
  invtd4 \chip_core/pll/ringosc/dstage[6].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [6]), .EN(\chip_core/pll/itrim [19]), .ZN(
        \chip_core/pll/ringosc/dstage[6].id/d1 ) );
  invtd4 \chip_core/pll/ringosc/dstage[5].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [5]), .EN(\chip_core/pll/itrim [18]), .ZN(
        \chip_core/pll/ringosc/dstage[5].id/d1 ) );
  invtd4 \chip_core/pll/ringosc/dstage[4].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [4]), .EN(\chip_core/pll/itrim [17]), .ZN(
        \chip_core/pll/ringosc/dstage[4].id/d1 ) );
  invtd4 \chip_core/pll/ringosc/dstage[3].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [3]), .EN(\chip_core/pll/itrim [16]), .ZN(
        \chip_core/pll/ringosc/dstage[3].id/d1 ) );
  invtd4 \chip_core/pll/ringosc/dstage[2].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [2]), .EN(\chip_core/pll/itrim [15]), .ZN(
        \chip_core/pll/ringosc/dstage[2].id/d1 ) );
  invtd4 \chip_core/pll/ringosc/dstage[1].id/delayenb1  ( .I(
        \chip_core/pll/ringosc/d [1]), .EN(\chip_core/pll/itrim [14]), .ZN(
        \chip_core/pll/ringosc/dstage[1].id/d1 ) );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/gpio_holdover_reg  ( .D(1'b0), 
        .CP(n480), .CDN(1'b0), .Q(mprj_io_holdover[37]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/gpio_inenb_reg  ( .D(1'b0), .CP(
        n480), .CDN(1'b0), .Q(mprj_io_inp_dis[37]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n480), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[37]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/gpio_ana_en_reg  ( .D(1'b0), .CP(
        n480), .CDN(1'b0), .Q(mprj_io_analog_en[37]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n479), .CDN(1'b0), .Q(mprj_io_analog_sel[37]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n479), .CDN(1'b0), .Q(mprj_io_analog_pol[37]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/gpio_slow_sel_reg  ( .D(1'b0), 
        .CP(n479), .CDN(1'b0), .Q(mprj_io_slow_sel[37]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/gpio_vtrip_sel_reg  ( .D(1'b0), 
        .CP(n479), .CDN(1'b0), .Q(mprj_io_vtrip_sel[37]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/gpio_dm_reg[1]  ( .D(1'b0), .CP(
        n479), .CDN(1'b0), .Q(mprj_io_dm[112]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[2]/gpio_dm_reg[2]  ( .D(1'b0), .CP(
        n479), .CDN(1'b0), .Q(mprj_io_dm[113]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/gpio_holdover_reg  ( .D(1'b0), 
        .CP(n479), .CDN(1'b0), .Q(mprj_io_holdover[0]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/gpio_inenb_reg  ( .D(1'b0), .CP(
        n479), .CDN(1'b0), .Q(mprj_io_inp_dis[0]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n479), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[0]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/gpio_ana_en_reg  ( .D(1'b0), .CP(
        n484), .CDN(1'b0), .Q(mprj_io_analog_en[0]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n480), .CDN(1'b0), .Q(mprj_io_analog_sel[0]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n479), .CDN(1'b0), .Q(mprj_io_analog_pol[0]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/gpio_slow_sel_reg  ( .D(1'b0), 
        .CP(\chip_core/gpio_load_1_shifted[0] ), .CDN(1'b0), .Q(
        mprj_io_slow_sel[0]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/gpio_vtrip_sel_reg  ( .D(1'b0), 
        .CP(\chip_core/gpio_load_1_shifted[0] ), .CDN(1'b0), .Q(
        mprj_io_vtrip_sel[0]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[0]/gpio_dm_reg[0]  ( .D(1'b0), .CP(
        n484), .CDN(1'b0), .Q(mprj_io_dm[0]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/gpio_dm_reg[0]  ( .D(1'b0), .CP(
        n480), .CDN(1'b0), .Q(mprj_io_dm[3]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/gpio_vtrip_sel_reg  ( .D(1'b0), 
        .CP(n479), .CDN(1'b0), .Q(mprj_io_vtrip_sel[1]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/gpio_slow_sel_reg  ( .D(1'b0), 
        .CP(n484), .CDN(1'b0), .Q(mprj_io_slow_sel[1]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n480), .CDN(1'b0), .Q(mprj_io_analog_pol[1]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n479), .CDN(1'b0), .Q(mprj_io_analog_sel[1]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/gpio_ana_en_reg  ( .D(1'b0), .CP(
        n484), .CDN(1'b0), .Q(mprj_io_analog_en[1]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n480), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[1]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/gpio_inenb_reg  ( .D(1'b0), .CP(
        n479), .CDN(1'b0), .Q(mprj_io_inp_dis[1]) );
  dfcrq1 \chip_core/gpio_control_bidir_1[1]/gpio_holdover_reg  ( .D(1'b0), 
        .CP(n484), .CDN(1'b0), .Q(mprj_io_holdover[1]) );
  dfcrq1 \chip_core/gpio_control_in_1[10]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n480), .CDN(1'b0), .Q(mprj_io_dm[56]) );
  dfcrq1 \chip_core/gpio_control_in_1[10]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n479), .CDN(1'b0), .Q(mprj_io_dm[55]) );
  dfcrq1 \chip_core/gpio_control_in_1[10]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n484), .CDN(1'b0), .Q(mprj_io_vtrip_sel[18]) );
  dfcrq1 \chip_core/gpio_control_in_1[10]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n480), .CDN(1'b0), .Q(mprj_io_slow_sel[18]) );
  dfcrq1 \chip_core/gpio_control_in_1[10]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n484), .CDN(1'b0), .Q(mprj_io_analog_pol[18]) );
  dfcrq1 \chip_core/gpio_control_in_1[10]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n480), .CDN(1'b0), .Q(mprj_io_analog_sel[18]) );
  dfcrq1 \chip_core/gpio_control_in_1[10]/gpio_ana_en_reg  ( .D(1'b0), .CP(
        n484), .CDN(1'b0), .Q(mprj_io_analog_en[18]) );
  dfcrq1 \chip_core/gpio_control_in_1[10]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n480), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[18]) );
  dfcrq1 \chip_core/gpio_control_in_1[10]/gpio_inenb_reg  ( .D(1'b0), .CP(n484), .CDN(1'b0), .Q(mprj_io_inp_dis[18]) );
  dfcrq1 \chip_core/gpio_control_in_1[10]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n480), .CDN(1'b0), .Q(mprj_io_holdover[18]) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/gpio_dm_reg[2]  ( .D(1'b0), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(1'b0), .Q(mprj_io_dm[53]) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n484), 
        .CDN(1'b0), .Q(mprj_io_dm[52]) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n484), .CDN(1'b0), .Q(mprj_io_vtrip_sel[17]) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n480), .CDN(1'b0), .Q(mprj_io_slow_sel[17]) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(1'b0), .Q(
        mprj_io_analog_pol[17]) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n484), .CDN(1'b0), .Q(mprj_io_analog_sel[17]) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/gpio_ana_en_reg  ( .D(1'b0), .CP(n480), .CDN(1'b0), .Q(mprj_io_analog_en[17]) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n479), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[17]) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/gpio_inenb_reg  ( .D(1'b0), .CP(n484), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[17]) );
  dfcrq1 \chip_core/gpio_control_in_1[9]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n484), .CDN(1'b0), .Q(mprj_io_holdover[17]) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/gpio_dm_reg[2]  ( .D(1'b0), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(1'b0), .Q(mprj_io_dm[50]) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n478), 
        .CDN(1'b0), .Q(mprj_io_dm[49]) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n478), .CDN(1'b0), .Q(mprj_io_vtrip_sel[16]) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n478), .CDN(1'b0), .Q(mprj_io_slow_sel[16]) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n478), .CDN(1'b0), .Q(mprj_io_analog_pol[16]) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n478), .CDN(1'b0), .Q(mprj_io_analog_sel[16]) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/gpio_ana_en_reg  ( .D(1'b0), .CP(n478), .CDN(1'b0), .Q(mprj_io_analog_en[16]) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n478), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[16]) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/gpio_inenb_reg  ( .D(1'b0), .CP(n478), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[16]) );
  dfcrq1 \chip_core/gpio_control_in_1[8]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n478), .CDN(1'b0), .Q(mprj_io_holdover[16]) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n477), 
        .CDN(1'b0), .Q(mprj_io_dm[47]) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n477), 
        .CDN(1'b0), .Q(mprj_io_dm[46]) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n477), .CDN(1'b0), .Q(mprj_io_vtrip_sel[15]) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n477), .CDN(1'b0), .Q(mprj_io_slow_sel[15]) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n477), .CDN(1'b0), .Q(mprj_io_analog_pol[15]) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n477), .CDN(1'b0), .Q(mprj_io_analog_sel[15]) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/gpio_ana_en_reg  ( .D(1'b0), .CP(n477), .CDN(1'b0), .Q(mprj_io_analog_en[15]) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n477), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[15]) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/gpio_inenb_reg  ( .D(1'b0), .CP(n477), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[15]) );
  dfcrq1 \chip_core/gpio_control_in_1[7]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n483), .CDN(1'b0), .Q(mprj_io_holdover[15]) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n478), 
        .CDN(1'b0), .Q(mprj_io_dm[44]) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n477), 
        .CDN(1'b0), .Q(mprj_io_dm[43]) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n483), .CDN(1'b0), .Q(mprj_io_vtrip_sel[14]) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n483), .CDN(1'b0), .Q(mprj_io_slow_sel[14]) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n478), .CDN(1'b0), .Q(mprj_io_analog_pol[14]) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n477), .CDN(1'b0), .Q(mprj_io_analog_sel[14]) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/gpio_ana_en_reg  ( .D(1'b0), .CP(n478), .CDN(1'b0), .Q(mprj_io_analog_en[14]) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n483), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[14]) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/gpio_inenb_reg  ( .D(1'b0), .CP(n477), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[14]) );
  dfcrq1 \chip_core/gpio_control_in_1[6]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n483), .CDN(1'b0), .Q(mprj_io_holdover[14]) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n478), 
        .CDN(1'b0), .Q(mprj_io_dm[41]) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n477), 
        .CDN(1'b0), .Q(mprj_io_dm[40]) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n483), .CDN(1'b0), .Q(mprj_io_vtrip_sel[13]) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n478), .CDN(1'b0), .Q(mprj_io_slow_sel[13]) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n477), .CDN(1'b0), .Q(mprj_io_analog_pol[13]) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n483), .CDN(1'b0), .Q(mprj_io_analog_sel[13]) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/gpio_ana_en_reg  ( .D(1'b0), .CP(n478), .CDN(1'b0), .Q(mprj_io_analog_en[13]) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n483), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[13]) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/gpio_inenb_reg  ( .D(1'b0), .CP(n483), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[13]) );
  dfcrq1 \chip_core/gpio_control_in_1[5]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n483), .CDN(1'b0), .Q(mprj_io_holdover[13]) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n483), 
        .CDN(1'b0), .Q(mprj_io_dm[38]) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n483), 
        .CDN(1'b0), .Q(mprj_io_dm[37]) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n478), .CDN(1'b0), .Q(mprj_io_vtrip_sel[12]) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n477), .CDN(1'b0), .Q(mprj_io_slow_sel[12]) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n483), .CDN(1'b0), .Q(mprj_io_analog_pol[12]) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n483), .CDN(1'b0), .Q(mprj_io_analog_sel[12]) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/gpio_ana_en_reg  ( .D(1'b0), .CP(n483), .CDN(1'b0), .Q(mprj_io_analog_en[12]) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n483), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[12]) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/gpio_inenb_reg  ( .D(1'b0), .CP(n478), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[12]) );
  dfcrq1 \chip_core/gpio_control_in_1[4]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n477), .CDN(1'b0), .Q(mprj_io_holdover[12]) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n478), 
        .CDN(1'b0), .Q(mprj_io_dm[35]) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n477), 
        .CDN(1'b0), .Q(mprj_io_dm[34]) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n483), .CDN(1'b0), .Q(mprj_io_vtrip_sel[11]) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n478), .CDN(1'b0), .Q(mprj_io_slow_sel[11]) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n477), .CDN(1'b0), .Q(mprj_io_analog_pol[11]) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n476), .CDN(1'b0), .Q(mprj_io_analog_sel[11]) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/gpio_ana_en_reg  ( .D(1'b0), .CP(n476), .CDN(1'b0), .Q(mprj_io_analog_en[11]) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n476), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[11]) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/gpio_inenb_reg  ( .D(1'b0), .CP(n476), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[11]) );
  dfcrq1 \chip_core/gpio_control_in_1[3]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n476), .CDN(1'b0), .Q(mprj_io_holdover[11]) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n476), 
        .CDN(1'b0), .Q(mprj_io_dm[32]) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n476), 
        .CDN(1'b0), .Q(mprj_io_dm[31]) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n476), .CDN(1'b0), .Q(mprj_io_vtrip_sel[10]) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n476), .CDN(1'b0), .Q(mprj_io_slow_sel[10]) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n475), .CDN(1'b0), .Q(mprj_io_analog_pol[10]) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n475), .CDN(1'b0), .Q(mprj_io_analog_sel[10]) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/gpio_ana_en_reg  ( .D(1'b0), .CP(n475), .CDN(1'b0), .Q(mprj_io_analog_en[10]) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n475), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[10]) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/gpio_inenb_reg  ( .D(1'b0), .CP(n475), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[10]) );
  dfcrq1 \chip_core/gpio_control_in_1[2]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n475), .CDN(1'b0), .Q(mprj_io_holdover[10]) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n475), 
        .CDN(1'b0), .Q(mprj_io_dm[29]) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n475), 
        .CDN(1'b0), .Q(mprj_io_dm[28]) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n475), .CDN(1'b0), .Q(mprj_io_vtrip_sel[9]) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n482), .CDN(1'b0), .Q(mprj_io_slow_sel[9]) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n476), .CDN(1'b0), .Q(mprj_io_analog_pol[9]) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n475), .CDN(1'b0), .Q(mprj_io_analog_sel[9]) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/gpio_ana_en_reg  ( .D(1'b0), .CP(n482), .CDN(1'b0), .Q(mprj_io_analog_en[9]) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n482), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[9]) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/gpio_inenb_reg  ( .D(1'b0), .CP(n476), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[9]) );
  dfcrq1 \chip_core/gpio_control_in_1[1]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n475), .CDN(1'b0), .Q(mprj_io_holdover[9]) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n476), 
        .CDN(1'b0), .Q(mprj_io_dm[26]) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n482), 
        .CDN(1'b0), .Q(mprj_io_dm[25]) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n475), .CDN(1'b0), .Q(mprj_io_vtrip_sel[8]) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n482), .CDN(1'b0), .Q(mprj_io_slow_sel[8]) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n476), .CDN(1'b0), .Q(mprj_io_analog_pol[8]) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n475), .CDN(1'b0), .Q(mprj_io_analog_sel[8]) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/gpio_ana_en_reg  ( .D(1'b0), .CP(n482), .CDN(1'b0), .Q(mprj_io_analog_en[8]) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n476), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[8]) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/gpio_inenb_reg  ( .D(1'b0), .CP(n475), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[8]) );
  dfcrq1 \chip_core/gpio_control_in_1[0]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n482), .CDN(1'b0), .Q(mprj_io_holdover[8]) );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n476), .CDN(1'b0), .Q(mprj_io_dm[23]) );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n482), .CDN(1'b0), .Q(mprj_io_dm[22]) );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n482), .CDN(1'b0), .Q(mprj_io_vtrip_sel[7]) );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n482), .CDN(1'b0), .Q(mprj_io_slow_sel[7]) );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n482), .CDN(1'b0), .Q(mprj_io_analog_pol[7]) );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n482), .CDN(1'b0), .Q(mprj_io_analog_sel[7]) );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/gpio_ana_en_reg  ( .D(1'b0), .CP(
        n476), .CDN(1'b0), .Q(mprj_io_analog_en[7]) );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n475), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[7]) );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/gpio_inenb_reg  ( .D(1'b0), .CP(n482), .CDN(1'b0), .Q(mprj_io_inp_dis[7]) );
  dfcrq1 \chip_core/gpio_control_in_1a[5]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n482), .CDN(1'b0), .Q(mprj_io_holdover[7]) );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n482), .CDN(1'b0), .Q(mprj_io_dm[20]) );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n482), .CDN(1'b0), .Q(mprj_io_dm[19]) );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n476), .CDN(1'b0), .Q(mprj_io_vtrip_sel[6]) );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n475), .CDN(1'b0), .Q(mprj_io_slow_sel[6]) );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n476), .CDN(1'b0), .Q(mprj_io_analog_pol[6]) );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n475), .CDN(1'b0), .Q(mprj_io_analog_sel[6]) );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/gpio_ana_en_reg  ( .D(1'b0), .CP(
        n482), .CDN(1'b0), .Q(mprj_io_analog_en[6]) );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n476), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[6]) );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/gpio_inenb_reg  ( .D(1'b0), .CP(n475), .CDN(1'b0), .Q(mprj_io_inp_dis[6]) );
  dfcrq1 \chip_core/gpio_control_in_1a[4]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n474), .CDN(1'b0), .Q(mprj_io_holdover[6]) );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n474), .CDN(1'b0), .Q(mprj_io_dm[17]) );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n474), .CDN(1'b0), .Q(mprj_io_dm[16]) );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n474), .CDN(1'b0), .Q(mprj_io_vtrip_sel[5]) );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n474), .CDN(1'b0), .Q(mprj_io_slow_sel[5]) );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n474), .CDN(1'b0), .Q(mprj_io_analog_pol[5]) );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n474), .CDN(1'b0), .Q(mprj_io_analog_sel[5]) );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/gpio_ana_en_reg  ( .D(1'b0), .CP(
        n474), .CDN(1'b0), .Q(mprj_io_analog_en[5]) );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n474), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[5]) );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/gpio_inenb_reg  ( .D(1'b0), .CP(n473), .CDN(1'b0), .Q(mprj_io_inp_dis[5]) );
  dfcrq1 \chip_core/gpio_control_in_1a[3]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n473), .CDN(1'b0), .Q(mprj_io_holdover[5]) );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n473), .CDN(1'b0), .Q(mprj_io_dm[14]) );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n473), .CDN(1'b0), .Q(mprj_io_dm[13]) );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n473), .CDN(1'b0), .Q(mprj_io_vtrip_sel[4]) );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n473), .CDN(1'b0), .Q(mprj_io_slow_sel[4]) );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n473), .CDN(1'b0), .Q(mprj_io_analog_pol[4]) );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n473), .CDN(1'b0), .Q(mprj_io_analog_sel[4]) );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/gpio_ana_en_reg  ( .D(1'b0), .CP(
        n473), .CDN(1'b0), .Q(mprj_io_analog_en[4]) );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n467), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[4]) );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/gpio_inenb_reg  ( .D(1'b0), .CP(n474), .CDN(1'b0), .Q(mprj_io_inp_dis[4]) );
  dfcrq1 \chip_core/gpio_control_in_1a[2]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n473), .CDN(1'b0), .Q(mprj_io_holdover[4]) );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n470), .CDN(1'b0), .Q(mprj_io_dm[11]) );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/gpio_dm_reg[0]  ( .D(1'b0), .CP(n466), .CDN(1'b0), .Q(mprj_io_dm[9]) );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n474), .CDN(1'b0), .Q(mprj_io_vtrip_sel[3]) );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n473), .CDN(1'b0), .Q(mprj_io_slow_sel[3]) );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n474), .CDN(1'b0), .Q(mprj_io_analog_pol[3]) );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n465), .CDN(1'b0), .Q(mprj_io_analog_sel[3]) );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/gpio_ana_en_reg  ( .D(1'b0), .CP(
        n473), .CDN(1'b0), .Q(mprj_io_analog_en[3]) );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n469), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[3]) );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/gpio_inenb_reg  ( .D(1'b0), .CP(n474), .CDN(1'b0), .Q(mprj_io_inp_dis[3]) );
  dfcrq1 \chip_core/gpio_control_in_1a[1]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n473), .CDN(1'b0), .Q(mprj_io_holdover[3]) );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n465), .CDN(1'b0), .Q(mprj_io_dm[8]) );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n474), .CDN(1'b0), .Q(mprj_io_dm[7]) );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n473), .CDN(1'b0), .Q(mprj_io_vtrip_sel[2]) );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n465), .CDN(1'b0), .Q(mprj_io_slow_sel[2]) );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n474), .CDN(1'b0), .Q(mprj_io_analog_pol[2]) );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n472), .CDN(1'b0), .Q(mprj_io_analog_sel[2]) );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/gpio_ana_en_reg  ( .D(1'b0), .CP(
        n470), .CDN(1'b0), .Q(mprj_io_analog_en[2]) );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n468), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[2]) );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/gpio_inenb_reg  ( .D(1'b0), .CP(n477), .CDN(1'b0), .Q(mprj_io_inp_dis[2]) );
  dfcrq1 \chip_core/gpio_control_in_1a[0]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n475), .CDN(1'b0), .Q(mprj_io_holdover[2]) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n474), 
        .CDN(1'b0), .Q(mprj_io_dm[59]) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n473), 
        .CDN(1'b0), .Q(mprj_io_dm[58]) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n471), .CDN(1'b0), .Q(mprj_io_vtrip_sel[19]) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n479), .CDN(1'b0), .Q(mprj_io_slow_sel[19]) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(1'b0), .Q(
        mprj_io_analog_pol[19]) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n469), .CDN(1'b0), .Q(mprj_io_analog_sel[19]) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/gpio_ana_en_reg  ( .D(1'b0), .CP(n474), .CDN(1'b0), .Q(mprj_io_analog_en[19]) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n473), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[19]) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/gpio_inenb_reg  ( .D(1'b0), .CP(n474), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[19]) );
  dfcrq1 \chip_core/gpio_control_in_2[0]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n473), .CDN(1'b0), .Q(mprj_io_holdover[19]) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n467), 
        .CDN(1'b0), .Q(mprj_io_dm[62]) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n474), 
        .CDN(1'b0), .Q(mprj_io_dm[61]) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n473), .CDN(1'b0), .Q(mprj_io_vtrip_sel[20]) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n472), .CDN(1'b0), .Q(mprj_io_slow_sel[20]) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n472), .CDN(1'b0), .Q(mprj_io_analog_pol[20]) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n472), .CDN(1'b0), .Q(mprj_io_analog_sel[20]) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/gpio_ana_en_reg  ( .D(1'b0), .CP(n472), .CDN(1'b0), .Q(mprj_io_analog_en[20]) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n472), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[20]) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/gpio_inenb_reg  ( .D(1'b0), .CP(n472), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[20]) );
  dfcrq1 \chip_core/gpio_control_in_2[1]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n472), .CDN(1'b0), .Q(mprj_io_holdover[20]) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n472), 
        .CDN(1'b0), .Q(mprj_io_dm[65]) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n472), 
        .CDN(1'b0), .Q(mprj_io_dm[64]) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n471), .CDN(1'b0), .Q(mprj_io_vtrip_sel[21]) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n471), .CDN(1'b0), .Q(mprj_io_slow_sel[21]) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n471), .CDN(1'b0), .Q(mprj_io_analog_pol[21]) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n471), .CDN(1'b0), .Q(mprj_io_analog_sel[21]) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/gpio_ana_en_reg  ( .D(1'b0), .CP(n471), .CDN(1'b0), .Q(mprj_io_analog_en[21]) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n471), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[21]) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/gpio_inenb_reg  ( .D(1'b0), .CP(n471), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[21]) );
  dfcrq1 \chip_core/gpio_control_in_2[2]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n471), .CDN(1'b0), .Q(mprj_io_holdover[21]) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n471), 
        .CDN(1'b0), .Q(mprj_io_dm[68]) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n481), 
        .CDN(1'b0), .Q(mprj_io_dm[67]) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n472), .CDN(1'b0), .Q(mprj_io_vtrip_sel[22]) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n471), .CDN(1'b0), .Q(mprj_io_slow_sel[22]) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n481), .CDN(1'b0), .Q(mprj_io_analog_pol[22]) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n481), .CDN(1'b0), .Q(mprj_io_analog_sel[22]) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/gpio_ana_en_reg  ( .D(1'b0), .CP(n472), .CDN(1'b0), .Q(mprj_io_analog_en[22]) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n471), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[22]) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/gpio_inenb_reg  ( .D(1'b0), .CP(n472), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[22]) );
  dfcrq1 \chip_core/gpio_control_in_2[3]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n481), .CDN(1'b0), .Q(mprj_io_holdover[22]) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n471), 
        .CDN(1'b0), .Q(mprj_io_dm[71]) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n481), 
        .CDN(1'b0), .Q(mprj_io_dm[70]) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n472), .CDN(1'b0), .Q(mprj_io_vtrip_sel[23]) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n471), .CDN(1'b0), .Q(mprj_io_slow_sel[23]) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n481), .CDN(1'b0), .Q(mprj_io_analog_pol[23]) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n472), .CDN(1'b0), .Q(mprj_io_analog_sel[23]) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/gpio_ana_en_reg  ( .D(1'b0), .CP(n471), .CDN(1'b0), .Q(mprj_io_analog_en[23]) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n481), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[23]) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/gpio_inenb_reg  ( .D(1'b0), .CP(n472), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[23]) );
  dfcrq1 \chip_core/gpio_control_in_2[4]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n481), .CDN(1'b0), .Q(mprj_io_holdover[23]) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n481), 
        .CDN(1'b0), .Q(mprj_io_dm[74]) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n481), 
        .CDN(1'b0), .Q(mprj_io_dm[73]) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n481), .CDN(1'b0), .Q(mprj_io_vtrip_sel[24]) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n481), .CDN(1'b0), .Q(mprj_io_slow_sel[24]) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n472), .CDN(1'b0), .Q(mprj_io_analog_pol[24]) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n471), .CDN(1'b0), .Q(mprj_io_analog_sel[24]) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/gpio_ana_en_reg  ( .D(1'b0), .CP(n481), .CDN(1'b0), .Q(mprj_io_analog_en[24]) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n481), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[24]) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/gpio_inenb_reg  ( .D(1'b0), .CP(n481), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[24]) );
  dfcrq1 \chip_core/gpio_control_in_2[5]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n481), .CDN(1'b0), .Q(mprj_io_holdover[24]) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n472), 
        .CDN(1'b0), .Q(mprj_io_dm[77]) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n471), 
        .CDN(1'b0), .Q(mprj_io_dm[76]) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n472), .CDN(1'b0), .Q(mprj_io_vtrip_sel[25]) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n471), .CDN(1'b0), .Q(mprj_io_slow_sel[25]) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n481), .CDN(1'b0), .Q(mprj_io_analog_pol[25]) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n472), .CDN(1'b0), .Q(mprj_io_analog_sel[25]) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/gpio_ana_en_reg  ( .D(1'b0), .CP(n471), .CDN(1'b0), .Q(mprj_io_analog_en[25]) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n470), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[25]) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/gpio_inenb_reg  ( .D(1'b0), .CP(n470), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[25]) );
  dfcrq1 \chip_core/gpio_control_in_2[6]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n470), .CDN(1'b0), .Q(mprj_io_holdover[25]) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n470), 
        .CDN(1'b0), .Q(mprj_io_dm[80]) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n470), 
        .CDN(1'b0), .Q(mprj_io_dm[79]) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n470), .CDN(1'b0), .Q(mprj_io_vtrip_sel[26]) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n470), .CDN(1'b0), .Q(mprj_io_slow_sel[26]) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n470), .CDN(1'b0), .Q(mprj_io_analog_pol[26]) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n470), .CDN(1'b0), .Q(mprj_io_analog_sel[26]) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/gpio_ana_en_reg  ( .D(1'b0), .CP(n469), .CDN(1'b0), .Q(mprj_io_analog_en[26]) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n469), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[26]) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/gpio_inenb_reg  ( .D(1'b0), .CP(n469), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[26]) );
  dfcrq1 \chip_core/gpio_control_in_2[7]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n469), .CDN(1'b0), .Q(mprj_io_holdover[26]) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n469), 
        .CDN(1'b0), .Q(mprj_io_dm[83]) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n469), 
        .CDN(1'b0), .Q(mprj_io_dm[82]) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n469), .CDN(1'b0), .Q(mprj_io_vtrip_sel[27]) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n469), .CDN(1'b0), .Q(mprj_io_slow_sel[27]) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n469), .CDN(1'b0), .Q(mprj_io_analog_pol[27]) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n474), .CDN(1'b0), .Q(mprj_io_analog_sel[27]) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/gpio_ana_en_reg  ( .D(1'b0), .CP(n470), .CDN(1'b0), .Q(mprj_io_analog_en[27]) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n469), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[27]) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/gpio_inenb_reg  ( .D(1'b0), .CP(n472), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[27]) );
  dfcrq1 \chip_core/gpio_control_in_2[8]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n468), .CDN(1'b0), .Q(mprj_io_holdover[27]) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n470), 
        .CDN(1'b0), .Q(mprj_io_dm[86]) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n469), 
        .CDN(1'b0), .Q(mprj_io_dm[85]) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n470), .CDN(1'b0), .Q(mprj_io_vtrip_sel[28]) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n477), .CDN(1'b0), .Q(mprj_io_slow_sel[28]) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n469), .CDN(1'b0), .Q(mprj_io_analog_pol[28]) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n476), .CDN(1'b0), .Q(mprj_io_analog_sel[28]) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/gpio_ana_en_reg  ( .D(1'b0), .CP(n470), .CDN(1'b0), .Q(mprj_io_analog_en[28]) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n469), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[28]) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/gpio_inenb_reg  ( .D(1'b0), .CP(n478), 
        .CDN(1'b0), .Q(mprj_io_inp_dis[28]) );
  dfcrq1 \chip_core/gpio_control_in_2[9]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n470), .CDN(1'b0), .Q(mprj_io_holdover[28]) );
  dfcrq1 \chip_core/gpio_control_in_2[10]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n469), .CDN(1'b0), .Q(mprj_io_dm[89]) );
  dfcrq1 \chip_core/gpio_control_in_2[10]/gpio_dm_reg[1]  ( .D(1'b0), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(1'b0), .Q(mprj_io_dm[88]) );
  dfcrq1 \chip_core/gpio_control_in_2[10]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n470), .CDN(1'b0), .Q(mprj_io_vtrip_sel[29]) );
  dfcrq1 \chip_core/gpio_control_in_2[10]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n479), .CDN(1'b0), .Q(mprj_io_slow_sel[29]) );
  dfcrq1 \chip_core/gpio_control_in_2[10]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n480), .CDN(1'b0), .Q(mprj_io_analog_pol[29]) );
  dfcrq1 \chip_core/gpio_control_in_2[10]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(1'b0), .Q(
        mprj_io_analog_sel[29]) );
  dfcrq1 \chip_core/gpio_control_in_2[10]/gpio_ana_en_reg  ( .D(1'b0), .CP(
        n484), .CDN(1'b0), .Q(mprj_io_analog_en[29]) );
  dfcrq1 \chip_core/gpio_control_in_2[10]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n483), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[29]) );
  dfcrq1 \chip_core/gpio_control_in_2[10]/gpio_inenb_reg  ( .D(1'b0), .CP(n470), .CDN(1'b0), .Q(mprj_io_inp_dis[29]) );
  dfcrq1 \chip_core/gpio_control_in_2[10]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n469), .CDN(1'b0), .Q(mprj_io_holdover[29]) );
  dfcrq1 \chip_core/gpio_control_in_2[11]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n482), .CDN(1'b0), .Q(mprj_io_dm[92]) );
  dfcrq1 \chip_core/gpio_control_in_2[11]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n465), .CDN(1'b0), .Q(mprj_io_dm[91]) );
  dfcrq1 \chip_core/gpio_control_in_2[11]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n475), .CDN(1'b0), .Q(mprj_io_vtrip_sel[30]) );
  dfcrq1 \chip_core/gpio_control_in_2[11]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n473), .CDN(1'b0), .Q(mprj_io_slow_sel[30]) );
  dfcrq1 \chip_core/gpio_control_in_2[11]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n470), .CDN(1'b0), .Q(mprj_io_analog_pol[30]) );
  dfcrq1 \chip_core/gpio_control_in_2[11]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n469), .CDN(1'b0), .Q(mprj_io_analog_sel[30]) );
  dfcrq1 \chip_core/gpio_control_in_2[11]/gpio_ana_en_reg  ( .D(1'b0), .CP(
        n470), .CDN(1'b0), .Q(mprj_io_analog_en[30]) );
  dfcrq1 \chip_core/gpio_control_in_2[11]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n469), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[30]) );
  dfcrq1 \chip_core/gpio_control_in_2[11]/gpio_inenb_reg  ( .D(1'b0), .CP(n471), .CDN(1'b0), .Q(mprj_io_inp_dis[30]) );
  dfcrq1 \chip_core/gpio_control_in_2[11]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n470), .CDN(1'b0), .Q(mprj_io_holdover[30]) );
  dfcrq1 \chip_core/gpio_control_in_2[12]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n469), .CDN(1'b0), .Q(mprj_io_dm[95]) );
  dfcrq1 \chip_core/gpio_control_in_2[12]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n468), .CDN(1'b0), .Q(mprj_io_dm[94]) );
  dfcrq1 \chip_core/gpio_control_in_2[12]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n468), .CDN(1'b0), .Q(mprj_io_vtrip_sel[31]) );
  dfcrq1 \chip_core/gpio_control_in_2[12]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n468), .CDN(1'b0), .Q(mprj_io_slow_sel[31]) );
  dfcrq1 \chip_core/gpio_control_in_2[12]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n468), .CDN(1'b0), .Q(mprj_io_analog_pol[31]) );
  dfcrq1 \chip_core/gpio_control_in_2[12]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n468), .CDN(1'b0), .Q(mprj_io_analog_sel[31]) );
  dfcrq1 \chip_core/gpio_control_in_2[12]/gpio_ana_en_reg  ( .D(1'b0), .CP(
        n468), .CDN(1'b0), .Q(mprj_io_analog_en[31]) );
  dfcrq1 \chip_core/gpio_control_in_2[12]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n468), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[31]) );
  dfcrq1 \chip_core/gpio_control_in_2[12]/gpio_inenb_reg  ( .D(1'b0), .CP(n468), .CDN(1'b0), .Q(mprj_io_inp_dis[31]) );
  dfcrq1 \chip_core/gpio_control_in_2[12]/gpio_holdover_reg  ( .D(1'b0), .CP(
        n468), .CDN(1'b0), .Q(mprj_io_holdover[31]) );
  dfcrq1 \chip_core/gpio_control_in_2[13]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n467), .CDN(1'b0), .Q(mprj_io_dm[98]) );
  dfcrq1 \chip_core/gpio_control_in_2[13]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n467), .CDN(1'b0), .Q(mprj_io_dm[97]) );
  dfcrq1 \chip_core/gpio_control_in_2[13]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        n467), .CDN(1'b0), .Q(mprj_io_vtrip_sel[32]) );
  dfcrq1 \chip_core/gpio_control_in_2[13]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n467), .CDN(1'b0), .Q(mprj_io_slow_sel[32]) );
  dfcrq1 \chip_core/gpio_control_in_2[13]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n467), .CDN(1'b0), .Q(mprj_io_analog_pol[32]) );
  dfcrq1 \chip_core/gpio_control_in_2[13]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n467), .CDN(1'b0), .Q(mprj_io_analog_sel[32]) );
  dfcrq1 \chip_core/gpio_control_in_2[13]/gpio_ana_en_reg  ( .D(1'b0), .CP(
        n467), .CDN(1'b0), .Q(mprj_io_analog_en[32]) );
  dfcrq1 \chip_core/gpio_control_in_2[13]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n467), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[32]) );
  dfcrq1 \chip_core/gpio_control_in_2[13]/gpio_inenb_reg  ( .D(1'b0), .CP(n467), .CDN(1'b0), .Q(mprj_io_inp_dis[32]) );
  dfcrq1 \chip_core/gpio_control_in_2[13]/gpio_holdover_reg  ( .D(1'b0), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(1'b0), .Q(
        mprj_io_holdover[32]) );
  dfcrq1 \chip_core/gpio_control_in_2[14]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n468), .CDN(1'b0), .Q(mprj_io_dm[101]) );
  dfcrq1 \chip_core/gpio_control_in_2[14]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n467), .CDN(1'b0), .Q(mprj_io_dm[100]) );
  dfcrq1 \chip_core/gpio_control_in_2[14]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(1'b0), .Q(
        mprj_io_vtrip_sel[33]) );
  dfcrq1 \chip_core/gpio_control_in_2[14]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n466), .CDN(1'b0), .Q(mprj_io_slow_sel[33]) );
  dfcrq1 \chip_core/gpio_control_in_2[14]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n468), .CDN(1'b0), .Q(mprj_io_analog_pol[33]) );
  dfcrq1 \chip_core/gpio_control_in_2[14]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n467), .CDN(1'b0), .Q(mprj_io_analog_sel[33]) );
  dfcrq1 \chip_core/gpio_control_in_2[14]/gpio_ana_en_reg  ( .D(1'b0), .CP(
        n468), .CDN(1'b0), .Q(mprj_io_analog_en[33]) );
  dfcrq1 \chip_core/gpio_control_in_2[14]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(\chip_core/gpio_load_1_shifted[0] ), .CDN(1'b0), .Q(
        mprj_io_ib_mode_sel[33]) );
  dfcrq1 \chip_core/gpio_control_in_2[14]/gpio_inenb_reg  ( .D(1'b0), .CP(n467), .CDN(1'b0), .Q(mprj_io_inp_dis[33]) );
  dfcrq1 \chip_core/gpio_control_in_2[14]/gpio_holdover_reg  ( .D(1'b0), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(1'b0), .Q(
        mprj_io_holdover[33]) );
  dfcrq1 \chip_core/gpio_control_in_2[15]/gpio_dm_reg[2]  ( .D(1'b0), .CP(n468), .CDN(1'b0), .Q(mprj_io_dm[104]) );
  dfcrq1 \chip_core/gpio_control_in_2[15]/gpio_dm_reg[1]  ( .D(1'b0), .CP(n467), .CDN(1'b0), .Q(mprj_io_dm[103]) );
  dfcrq1 \chip_core/gpio_control_in_2[15]/gpio_vtrip_sel_reg  ( .D(1'b0), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(1'b0), .Q(
        mprj_io_vtrip_sel[34]) );
  dfcrq1 \chip_core/gpio_control_in_2[15]/gpio_slow_sel_reg  ( .D(1'b0), .CP(
        n468), .CDN(1'b0), .Q(mprj_io_slow_sel[34]) );
  dfcrq1 \chip_core/gpio_control_in_2[15]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n467), .CDN(1'b0), .Q(mprj_io_analog_pol[34]) );
  dfcrq1 \chip_core/gpio_control_in_2[15]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(1'b0), .Q(
        mprj_io_analog_sel[34]) );
  dfcrq1 \chip_core/gpio_control_in_2[15]/gpio_ana_en_reg  ( .D(1'b0), .CP(
        n468), .CDN(1'b0), .Q(mprj_io_analog_en[34]) );
  dfcrq1 \chip_core/gpio_control_in_2[15]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n480), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[34]) );
  dfcrq1 \chip_core/gpio_control_in_2[15]/gpio_inenb_reg  ( .D(1'b0), .CP(n466), .CDN(1'b0), .Q(mprj_io_inp_dis[34]) );
  dfcrq1 \chip_core/gpio_control_in_2[15]/gpio_holdover_reg  ( .D(1'b0), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(1'b0), .Q(
        mprj_io_holdover[34]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/gpio_dm_reg[2]  ( .D(1'b0), .CP(
        n483), .CDN(1'b0), .Q(mprj_io_dm[107]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/gpio_dm_reg[1]  ( .D(1'b0), .CP(
        n482), .CDN(1'b0), .Q(mprj_io_dm[106]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/gpio_vtrip_sel_reg  ( .D(1'b0), 
        .CP(n468), .CDN(1'b0), .Q(mprj_io_vtrip_sel[35]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/gpio_slow_sel_reg  ( .D(1'b0), 
        .CP(n467), .CDN(1'b0), .Q(mprj_io_slow_sel[35]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n465), .CDN(1'b0), .Q(mprj_io_analog_pol[35]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n481), .CDN(1'b0), .Q(mprj_io_analog_sel[35]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/gpio_ana_en_reg  ( .D(1'b0), .CP(
        n466), .CDN(1'b0), .Q(mprj_io_analog_en[35]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(\chip_core/gpio_load_1_shifted[0] ), .CDN(1'b0), .Q(
        mprj_io_ib_mode_sel[35]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/gpio_inenb_reg  ( .D(1'b0), .CP(
        n468), .CDN(1'b0), .Q(mprj_io_inp_dis[35]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[0]/gpio_holdover_reg  ( .D(1'b0), 
        .CP(n467), .CDN(1'b0), .Q(mprj_io_holdover[35]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/gpio_dm_reg[2]  ( .D(1'b0), .CP(
        n468), .CDN(1'b0), .Q(mprj_io_dm[110]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/gpio_dm_reg[1]  ( .D(1'b0), .CP(
        n467), .CDN(1'b0), .Q(mprj_io_dm[109]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/gpio_vtrip_sel_reg  ( .D(1'b0), 
        .CP(n479), .CDN(1'b0), .Q(mprj_io_vtrip_sel[36]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/gpio_slow_sel_reg  ( .D(1'b0), 
        .CP(n468), .CDN(1'b0), .Q(mprj_io_slow_sel[36]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/gpio_ana_pol_reg  ( .D(1'b0), .CP(
        n467), .CDN(1'b0), .Q(mprj_io_analog_pol[36]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/gpio_ana_sel_reg  ( .D(1'b0), .CP(
        n466), .CDN(1'b0), .Q(mprj_io_analog_sel[36]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/gpio_ana_en_reg  ( .D(1'b0), .CP(
        n466), .CDN(1'b0), .Q(mprj_io_analog_en[36]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/gpio_ib_mode_sel_reg  ( .D(1'b0), 
        .CP(n466), .CDN(1'b0), .Q(mprj_io_ib_mode_sel[36]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/gpio_inenb_reg  ( .D(1'b0), .CP(
        n466), .CDN(1'b0), .Q(mprj_io_inp_dis[36]) );
  dfcrq1 \chip_core/gpio_control_bidir_2[1]/gpio_holdover_reg  ( .D(1'b0), 
        .CP(n466), .CDN(1'b0), .Q(mprj_io_holdover[36]) );
  dfcrq1 \chip_core/pll/pll_control/oscbuf_reg[0]  ( .D(clock_core), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n335), .Q(
        \chip_core/pll/pll_control/oscbuf [0]) );
  dfcrq1 \chip_core/pll/pll_control/oscbuf_reg[1]  ( .D(
        \chip_core/pll/pll_control/oscbuf [0]), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n335), .Q(
        \chip_core/pll/pll_control/oscbuf [1]) );
  dfcrq1 \chip_core/pll/pll_control/oscbuf_reg[2]  ( .D(
        \chip_core/pll/pll_control/oscbuf [1]), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n335), .Q(
        \chip_core/pll/pll_control/oscbuf [2]) );
  dfcrq1 \chip_core/pll/pll_control/count0_reg[4]  ( .D(n349), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n335), .Q(
        \chip_core/pll/pll_control/count0 [4]) );
  dfcrq1 \chip_core/pll/pll_control/count0_reg[1]  ( .D(n353), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n335), .Q(
        \chip_core/pll/pll_control/count0 [1]) );
  dfcrq1 \chip_core/pll/pll_control/count0_reg[0]  ( .D(n352), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n335), .Q(
        \chip_core/pll/pll_control/count0 [0]) );
  dfcrq1 \chip_core/pll/pll_control/count0_reg[2]  ( .D(n351), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n335), .Q(
        \chip_core/pll/pll_control/count0 [2]) );
  dfcrq1 \chip_core/pll/pll_control/count0_reg[3]  ( .D(n350), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n335), .Q(
        \chip_core/pll/pll_control/count0 [3]) );
  dfcrq1 \chip_core/pll/pll_control/count1_reg[0]  ( .D(n348), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n335), .Q(
        \chip_core/pll/pll_control/count1 [0]) );
  dfcrq1 \chip_core/pll/pll_control/count1_reg[1]  ( .D(n344), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n335), .Q(
        \chip_core/pll/pll_control/count1 [1]) );
  dfcrq1 \chip_core/pll/pll_control/count1_reg[2]  ( .D(n345), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n335), .Q(
        \chip_core/pll/pll_control/count1 [2]) );
  dfcrq1 \chip_core/pll/pll_control/count1_reg[3]  ( .D(n346), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n335), .Q(
        \chip_core/pll/pll_control/count1 [3]) );
  dfcrq1 \chip_core/pll/pll_control/count1_reg[4]  ( .D(n347), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n335), .Q(
        \chip_core/pll/pll_control/count1 [4]) );
  dfcrq1 \chip_core/pll/pll_control/prep_reg[0]  ( .D(n356), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n335), .Q(
        \chip_core/pll/pll_control/prep [0]) );
  dfcrq1 \chip_core/pll/pll_control/prep_reg[1]  ( .D(n355), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n335), .Q(
        \chip_core/pll/pll_control/prep [1]) );
  dfcrq1 \chip_core/pll/pll_control/prep_reg[2]  ( .D(n354), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n335), .Q(
        \chip_core/pll/pll_control/prep [2]) );
  dfcrq1 \chip_core/pll/pll_control/tval_reg[0]  ( .D(n343), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n409), .Q(
        \chip_core/pll/pll_control/tval [0]) );
  dfcrq1 \chip_core/pll/pll_control/tval_reg[1]  ( .D(n342), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n409), .Q(
        \chip_core/pll/pll_control/tval [1]) );
  dfcrq1 \chip_core/pll/pll_control/tval_reg[2]  ( .D(n341), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n409), .Q(
        \chip_core/pll/pll_control/tint [0]) );
  dfcrq1 \chip_core/pll/pll_control/tval_reg[3]  ( .D(n340), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n409), .Q(
        \chip_core/pll/pll_control/tint [1]) );
  dfcrq1 \chip_core/pll/pll_control/tval_reg[4]  ( .D(n339), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n409), .Q(
        \chip_core/pll/pll_control/tint [2]) );
  dfcrq1 \chip_core/pll/pll_control/tval_reg[5]  ( .D(n338), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n409), .Q(
        \chip_core/pll/pll_control/tint [3]) );
  dfcrq1 \chip_core/pll/pll_control/tval_reg[6]  ( .D(n336), .CP(
        \chip_core/pll/ringosc/d [0]), .CDN(n409), .Q(
        \chip_core/pll/pll_control/tint [4]) );
  dfcrn1 \chip_core/gpio_control_bidir_2[2]/gpio_dm_reg[0]  ( .D(1'b1), .CP(
        n466), .CDN(1'b0), .QN(mprj_io_dm[111]) );
  dfcrn1 \chip_core/gpio_control_bidir_1[0]/gpio_dm_reg[1]  ( .D(1'b1), .CP(
        n466), .CDN(1'b0), .QN(mprj_io_dm[1]) );
  dfcrn1 \chip_core/gpio_control_bidir_1[0]/gpio_dm_reg[2]  ( .D(1'b1), .CP(
        n466), .CDN(1'b0), .QN(mprj_io_dm[2]) );
  dfcrn1 \chip_core/gpio_control_bidir_1[1]/gpio_dm_reg[2]  ( .D(1'b1), .CP(
        n466), .CDN(1'b0), .QN(mprj_io_dm[5]) );
  dfcrn1 \chip_core/gpio_control_bidir_1[1]/gpio_dm_reg[1]  ( .D(1'b1), .CP(
        n465), .CDN(1'b0), .QN(mprj_io_dm[4]) );
  dfcrn1 \chip_core/gpio_control_in_1[10]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n465), .CDN(1'b0), .QN(mprj_io_dm[54]) );
  dfcrn1 \chip_core/gpio_control_in_1[9]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n465), 
        .CDN(1'b0), .QN(mprj_io_dm[51]) );
  dfcrn1 \chip_core/gpio_control_in_1[8]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n465), 
        .CDN(1'b0), .QN(mprj_io_dm[48]) );
  dfcrn1 \chip_core/gpio_control_in_1[7]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n465), 
        .CDN(1'b0), .QN(mprj_io_dm[45]) );
  dfcrn1 \chip_core/gpio_control_in_1[6]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n465), 
        .CDN(1'b0), .QN(mprj_io_dm[42]) );
  dfcrn1 \chip_core/gpio_control_in_1[5]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n465), 
        .CDN(1'b0), .QN(mprj_io_dm[39]) );
  dfcrn1 \chip_core/gpio_control_in_1[4]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n465), 
        .CDN(1'b0), .QN(mprj_io_dm[36]) );
  dfcrn1 \chip_core/gpio_control_in_1[3]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n465), 
        .CDN(1'b0), .QN(mprj_io_dm[33]) );
  dfcrn1 \chip_core/gpio_control_in_1[2]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n484), 
        .CDN(1'b0), .QN(mprj_io_dm[30]) );
  dfcrn1 \chip_core/gpio_control_in_1[1]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n479), 
        .CDN(1'b0), .QN(mprj_io_dm[27]) );
  dfcrn1 \chip_core/gpio_control_in_1[0]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n466), 
        .CDN(1'b0), .QN(mprj_io_dm[24]) );
  dfcrn1 \chip_core/gpio_control_in_1a[5]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n465), .CDN(1'b0), .QN(mprj_io_dm[21]) );
  dfcrn1 \chip_core/gpio_control_in_1a[4]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n480), .CDN(1'b0), .QN(mprj_io_dm[18]) );
  dfcrn1 \chip_core/gpio_control_in_1a[3]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n484), .CDN(1'b0), .QN(mprj_io_dm[15]) );
  dfcrn1 \chip_core/gpio_control_in_1a[2]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n466), .CDN(1'b0), .QN(mprj_io_dm[12]) );
  dfcrn1 \chip_core/gpio_control_in_1a[1]/gpio_dm_reg[1]  ( .D(1'b1), .CP(n465), .CDN(1'b0), .QN(mprj_io_dm[10]) );
  dfcrn1 \chip_core/gpio_control_in_1a[0]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n466), .CDN(1'b0), .QN(mprj_io_dm[6]) );
  dfcrn1 \chip_core/gpio_control_in_2[0]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n465), 
        .CDN(1'b0), .QN(mprj_io_dm[57]) );
  dfcrn1 \chip_core/gpio_control_in_2[1]/gpio_dm_reg[0]  ( .D(1'b1), .CP(
        \chip_core/gpio_load_1_shifted[0] ), .CDN(1'b0), .QN(mprj_io_dm[60])
         );
  dfcrn1 \chip_core/gpio_control_in_2[2]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n466), 
        .CDN(1'b0), .QN(mprj_io_dm[63]) );
  dfcrn1 \chip_core/gpio_control_in_2[3]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n465), 
        .CDN(1'b0), .QN(mprj_io_dm[66]) );
  dfcrn1 \chip_core/gpio_control_in_2[4]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n479), 
        .CDN(1'b0), .QN(mprj_io_dm[69]) );
  dfcrn1 \chip_core/gpio_control_in_2[5]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n466), 
        .CDN(1'b0), .QN(mprj_io_dm[72]) );
  dfcrn1 \chip_core/gpio_control_in_2[6]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n465), 
        .CDN(1'b0), .QN(mprj_io_dm[75]) );
  dfcrn1 \chip_core/gpio_control_in_2[7]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n480), 
        .CDN(1'b0), .QN(mprj_io_dm[78]) );
  dfcrn1 \chip_core/gpio_control_in_2[8]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n466), 
        .CDN(1'b0), .QN(mprj_io_dm[81]) );
  dfcrn1 \chip_core/gpio_control_in_2[9]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n479), 
        .CDN(1'b0), .QN(mprj_io_dm[84]) );
  dfcrn1 \chip_core/gpio_control_in_2[10]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n480), .CDN(1'b0), .QN(mprj_io_dm[87]) );
  dfcrn1 \chip_core/gpio_control_in_2[11]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n484), .CDN(1'b0), .QN(mprj_io_dm[90]) );
  dfcrn1 \chip_core/gpio_control_in_2[12]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n477), .CDN(1'b0), .QN(mprj_io_dm[93]) );
  dfcrn1 \chip_core/gpio_control_in_2[13]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n475), .CDN(1'b0), .QN(mprj_io_dm[96]) );
  dfcrn1 \chip_core/gpio_control_in_2[14]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n473), .CDN(1'b0), .QN(mprj_io_dm[99]) );
  dfcrn1 \chip_core/gpio_control_in_2[15]/gpio_dm_reg[0]  ( .D(1'b1), .CP(n466), .CDN(1'b0), .QN(mprj_io_dm[102]) );
  dfcrn1 \chip_core/gpio_control_bidir_2[0]/gpio_dm_reg[0]  ( .D(1'b1), .CP(
        n465), .CDN(1'b0), .QN(mprj_io_dm[105]) );
  dfcrn1 \chip_core/gpio_control_bidir_2[1]/gpio_dm_reg[0]  ( .D(1'b1), .CP(
        n471), .CDN(1'b0), .QN(mprj_io_dm[108]) );
  an03d0 U224 ( .A1(1'b1), .A2(1'b1), .A3(1'b1), .Z(mprj_io_oeb[0]) );
  oai21d1 U229 ( .B1(1'b1), .B2(n38), .A(n37), .ZN(mprj_io_out[0]) );
  an02d0 U230 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[7]) );
  oai21d1 U236 ( .B1(1'b1), .B2(n43), .A(n42), .ZN(mprj_io_out[7]) );
  an02d0 U237 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[6]) );
  oai21d1 U243 ( .B1(1'b1), .B2(n48), .A(n47), .ZN(mprj_io_out[6]) );
  an02d0 U244 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[5]) );
  oai21d1 U250 ( .B1(1'b1), .B2(n53), .A(n52), .ZN(mprj_io_out[5]) );
  an02d0 U251 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[4]) );
  oai21d1 U257 ( .B1(1'b1), .B2(n58), .A(n57), .ZN(mprj_io_out[4]) );
  an02d0 U258 ( .A1(1'b1), .A2(1'b0), .Z(mprj_io_oeb[3]) );
  oai21d1 U264 ( .B1(1'b1), .B2(n63), .A(n62), .ZN(mprj_io_out[3]) );
  an02d0 U265 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[2]) );
  oai21d1 U271 ( .B1(1'b1), .B2(n68), .A(n67), .ZN(mprj_io_out[2]) );
  an02d0 U272 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[18]) );
  oai21d1 U278 ( .B1(1'b1), .B2(n73), .A(n72), .ZN(mprj_io_out[18]) );
  an02d0 U279 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[17]) );
  oai21d1 U285 ( .B1(1'b1), .B2(n78), .A(n77), .ZN(mprj_io_out[17]) );
  an02d0 U286 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[16]) );
  oai21d1 U292 ( .B1(1'b1), .B2(n83), .A(n82), .ZN(mprj_io_out[16]) );
  an02d0 U293 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[15]) );
  oai21d1 U299 ( .B1(1'b1), .B2(n88), .A(n87), .ZN(mprj_io_out[15]) );
  an02d0 U300 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[14]) );
  oai21d1 U306 ( .B1(1'b1), .B2(n93), .A(n92), .ZN(mprj_io_out[14]) );
  an02d0 U307 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[13]) );
  oai21d1 U313 ( .B1(1'b1), .B2(n98), .A(n97), .ZN(mprj_io_out[13]) );
  an02d0 U314 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[12]) );
  oai21d1 U320 ( .B1(1'b1), .B2(n103), .A(n102), .ZN(mprj_io_out[12]) );
  an02d0 U321 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[11]) );
  oai21d1 U327 ( .B1(1'b1), .B2(n108), .A(n107), .ZN(mprj_io_out[11]) );
  an02d0 U328 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[10]) );
  oai21d1 U334 ( .B1(1'b1), .B2(n113), .A(n112), .ZN(mprj_io_out[10]) );
  an02d0 U335 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[9]) );
  oai21d1 U341 ( .B1(1'b1), .B2(n118), .A(n117), .ZN(mprj_io_out[9]) );
  an02d0 U342 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[8]) );
  oai21d1 U348 ( .B1(1'b1), .B2(n123), .A(n122), .ZN(mprj_io_out[8]) );
  an03d0 U349 ( .A1(1'b1), .A2(1'b1), .A3(1'b1), .Z(mprj_io_oeb[37]) );
  oai21d1 U354 ( .B1(1'b1), .B2(n127), .A(n126), .ZN(mprj_io_out[37]) );
  an03d0 U355 ( .A1(1'b1), .A2(1'b1), .A3(1'b1), .Z(mprj_io_oeb[36]) );
  oai21d1 U360 ( .B1(1'b1), .B2(n131), .A(n130), .ZN(mprj_io_out[36]) );
  an03d0 U361 ( .A1(1'b1), .A2(1'b1), .A3(1'b1), .Z(mprj_io_oeb[35]) );
  oai21d1 U366 ( .B1(1'b1), .B2(n135), .A(n134), .ZN(mprj_io_out[35]) );
  an02d0 U367 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[34]) );
  oai21d1 U373 ( .B1(1'b1), .B2(n140), .A(n139), .ZN(mprj_io_out[34]) );
  an02d0 U374 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[33]) );
  oai21d1 U380 ( .B1(1'b1), .B2(n145), .A(n144), .ZN(mprj_io_out[33]) );
  an02d0 U381 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[32]) );
  oai21d1 U387 ( .B1(1'b1), .B2(n150), .A(n149), .ZN(mprj_io_out[32]) );
  an02d0 U388 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[31]) );
  oai21d1 U394 ( .B1(1'b1), .B2(n155), .A(n154), .ZN(mprj_io_out[31]) );
  an02d0 U395 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[30]) );
  oai21d1 U401 ( .B1(1'b1), .B2(n160), .A(n159), .ZN(mprj_io_out[30]) );
  an02d0 U402 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[29]) );
  oai21d1 U408 ( .B1(1'b1), .B2(n165), .A(n164), .ZN(mprj_io_out[29]) );
  an02d0 U409 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[28]) );
  oai21d1 U415 ( .B1(1'b1), .B2(n170), .A(n169), .ZN(mprj_io_out[28]) );
  an02d0 U416 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[27]) );
  oai21d1 U422 ( .B1(1'b1), .B2(n175), .A(n174), .ZN(mprj_io_out[27]) );
  an02d0 U423 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[26]) );
  oai21d1 U429 ( .B1(1'b1), .B2(n180), .A(n179), .ZN(mprj_io_out[26]) );
  an02d0 U430 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[25]) );
  oai21d1 U436 ( .B1(1'b1), .B2(n185), .A(n184), .ZN(mprj_io_out[25]) );
  an02d0 U437 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[24]) );
  oai21d1 U443 ( .B1(1'b1), .B2(n190), .A(n189), .ZN(mprj_io_out[24]) );
  an02d0 U444 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[23]) );
  oai21d1 U450 ( .B1(1'b1), .B2(n195), .A(n194), .ZN(mprj_io_out[23]) );
  an02d0 U451 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[22]) );
  oai21d1 U457 ( .B1(1'b1), .B2(n200), .A(n199), .ZN(mprj_io_out[22]) );
  an02d0 U458 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[21]) );
  oai21d1 U464 ( .B1(1'b1), .B2(n205), .A(n204), .ZN(mprj_io_out[21]) );
  an02d0 U465 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[20]) );
  oai21d1 U471 ( .B1(1'b1), .B2(n210), .A(n209), .ZN(mprj_io_out[20]) );
  an02d0 U472 ( .A1(1'b1), .A2(1'b1), .Z(mprj_io_oeb[19]) );
  oai21d1 U478 ( .B1(1'b1), .B2(n215), .A(n214), .ZN(mprj_io_out[19]) );
  an03d0 U479 ( .A1(1'b1), .A2(1'b1), .A3(1'b1), .Z(mprj_io_oeb[1]) );
  oai21d1 U484 ( .B1(1'b1), .B2(n219), .A(n218), .ZN(mprj_io_out[1]) );
  invtd1 \chip_core/pll/ringosc/dstage[1].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [1]), .EN(n372), .ZN(
        \chip_core/pll/ringosc/dstage[1].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[1].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[1].id/d2 ), .EN(n359), .ZN(
        \chip_core/pll/ringosc/d [2]) );
  invtd1 \chip_core/pll/ringosc/dstage[1].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [1]), .EN(\chip_core/pll/itrim [1]), .ZN(
        \chip_core/pll/ringosc/d [2]) );
  invtd1 \chip_core/pll/ringosc/dstage[0].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[0].id/d2 ), .EN(n358), .ZN(
        \chip_core/pll/ringosc/d [1]) );
  invtd1 \chip_core/pll/ringosc/dstage[11].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [11]), .EN(\chip_core/pll/itrim [11]), .ZN(
        \chip_core/pll/ringosc/d [12]) );
  invtd1 \chip_core/pll/ringosc/dstage[11].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[11].id/d2 ), .EN(n369), .ZN(
        \chip_core/pll/ringosc/d [12]) );
  invtd1 \chip_core/pll/ringosc/dstage[10].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [10]), .EN(\chip_core/pll/itrim [10]), .ZN(
        \chip_core/pll/ringosc/d [11]) );
  invtd1 \chip_core/pll/ringosc/dstage[10].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[10].id/d2 ), .EN(n368), .ZN(
        \chip_core/pll/ringosc/d [11]) );
  invtd1 \chip_core/pll/ringosc/dstage[9].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [9]), .EN(\chip_core/pll/itrim [9]), .ZN(
        \chip_core/pll/ringosc/d [10]) );
  invtd1 \chip_core/pll/ringosc/dstage[9].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[9].id/d2 ), .EN(n367), .ZN(
        \chip_core/pll/ringosc/d [10]) );
  invtd1 \chip_core/pll/ringosc/dstage[8].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [8]), .EN(\chip_core/pll/itrim [8]), .ZN(
        \chip_core/pll/ringosc/d [9]) );
  invtd1 \chip_core/pll/ringosc/dstage[8].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[8].id/d2 ), .EN(n366), .ZN(
        \chip_core/pll/ringosc/d [9]) );
  invtd1 \chip_core/pll/ringosc/dstage[7].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [7]), .EN(\chip_core/pll/itrim [7]), .ZN(
        \chip_core/pll/ringosc/d [8]) );
  invtd1 \chip_core/pll/ringosc/dstage[7].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[7].id/d2 ), .EN(n365), .ZN(
        \chip_core/pll/ringosc/d [8]) );
  invtd1 \chip_core/pll/ringosc/dstage[6].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [6]), .EN(\chip_core/pll/itrim [6]), .ZN(
        \chip_core/pll/ringosc/d [7]) );
  invtd1 \chip_core/pll/ringosc/dstage[6].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[6].id/d2 ), .EN(n364), .ZN(
        \chip_core/pll/ringosc/d [7]) );
  invtd1 \chip_core/pll/ringosc/dstage[5].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [5]), .EN(\chip_core/pll/itrim [5]), .ZN(
        \chip_core/pll/ringosc/d [6]) );
  invtd1 \chip_core/pll/ringosc/dstage[5].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[5].id/d2 ), .EN(n363), .ZN(
        \chip_core/pll/ringosc/d [6]) );
  invtd1 \chip_core/pll/ringosc/dstage[4].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [4]), .EN(\chip_core/pll/itrim [4]), .ZN(
        \chip_core/pll/ringosc/d [5]) );
  invtd1 \chip_core/pll/ringosc/dstage[4].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[4].id/d2 ), .EN(n362), .ZN(
        \chip_core/pll/ringosc/d [5]) );
  invtd1 \chip_core/pll/ringosc/dstage[3].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [3]), .EN(\chip_core/pll/itrim [3]), .ZN(
        \chip_core/pll/ringosc/d [4]) );
  invtd1 \chip_core/pll/ringosc/dstage[3].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[3].id/d2 ), .EN(n361), .ZN(
        \chip_core/pll/ringosc/d [4]) );
  invtd1 \chip_core/pll/ringosc/dstage[2].id/delayenb0  ( .I(
        \chip_core/pll/ringosc/d [2]), .EN(\chip_core/pll/itrim [2]), .ZN(
        \chip_core/pll/ringosc/d [3]) );
  invtd1 \chip_core/pll/ringosc/dstage[2].id/delayen0  ( .I(
        \chip_core/pll/ringosc/dstage[2].id/d2 ), .EN(n360), .ZN(
        \chip_core/pll/ringosc/d [3]) );
  invtd1 \chip_core/pll/ringosc/dstage[10].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [10]), .EN(n381), .ZN(
        \chip_core/pll/ringosc/dstage[10].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[0].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [0]), .EN(n371), .ZN(
        \chip_core/pll/ringosc/dstage[0].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[9].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [9]), .EN(n380), .ZN(
        \chip_core/pll/ringosc/dstage[9].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[8].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [8]), .EN(n379), .ZN(
        \chip_core/pll/ringosc/dstage[8].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[7].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [7]), .EN(n378), .ZN(
        \chip_core/pll/ringosc/dstage[7].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/iss/delayen1  ( .I(
        \chip_core/pll/ringosc/d [12]), .EN(n383), .ZN(
        \chip_core/pll/ringosc/iss/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[6].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [6]), .EN(n377), .ZN(
        \chip_core/pll/ringosc/dstage[6].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[4].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [4]), .EN(n375), .ZN(
        \chip_core/pll/ringosc/dstage[4].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[3].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [3]), .EN(n374), .ZN(
        \chip_core/pll/ringosc/dstage[3].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[2].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [2]), .EN(n373), .ZN(
        \chip_core/pll/ringosc/dstage[2].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[5].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [5]), .EN(n376), .ZN(
        \chip_core/pll/ringosc/dstage[5].id/d1 ) );
  invtd1 \chip_core/pll/ringosc/dstage[11].id/delayen1  ( .I(
        \chip_core/pll/ringosc/d [11]), .EN(n382), .ZN(
        \chip_core/pll/ringosc/dstage[11].id/d1 ) );
  mx02d1 U527 ( .I0(1'b1), .I1(1'b1), .S(1'b0), .Z(\chip_core/pll/creset ) );
  mx02d1 U514 ( .I0(1'b1), .I1(n393), .S(1'b0), .Z(\chip_core/pll/itrim [15])
         );
  mx02d1 U499 ( .I0(1'b1), .I1(n398), .S(1'b0), .Z(\chip_core/pll/itrim [0])
         );
  mx02d1 U517 ( .I0(1'b1), .I1(n406), .S(1'b0), .Z(\chip_core/pll/itrim [18])
         );
  mx02d1 U516 ( .I0(1'b1), .I1(n395), .S(1'b0), .Z(\chip_core/pll/itrim [17])
         );
  mx02d1 U515 ( .I0(1'b1), .I1(n394), .S(1'b0), .Z(\chip_core/pll/itrim [16])
         );
  mx02d1 U511 ( .I0(1'b0), .I1(n400), .S(1'b0), .Z(\chip_core/pll/itrim [12])
         );
  mx02d1 U518 ( .I0(1'b1), .I1(n396), .S(1'b0), .Z(\chip_core/pll/itrim [19])
         );
  mx02d1 U524 ( .I0(1'b1), .I1(n397), .S(1'b0), .Z(\chip_core/pll/itrim [25])
         );
  mx02d1 U523 ( .I0(1'b1), .I1(\chip_core/pll/otrim [24]), .S(1'b0), .Z(
        \chip_core/pll/itrim [24]) );
  mx02d1 U522 ( .I0(1'b1), .I1(\chip_core/pll/pll_control/tint [4]), .S(1'b0), 
        .Z(\chip_core/pll/itrim [23]) );
  mx02d1 U521 ( .I0(1'b1), .I1(n402), .S(1'b0), .Z(\chip_core/pll/itrim [22])
         );
  mx02d1 U520 ( .I0(1'b1), .I1(n403), .S(1'b0), .Z(\chip_core/pll/itrim [21])
         );
  mx02d1 U519 ( .I0(1'b1), .I1(\chip_core/pll/otrim [20]), .S(1'b0), .Z(
        \chip_core/pll/itrim [20]) );
  mx02d1 U513 ( .I0(1'b1), .I1(n392), .S(1'b0), .Z(\chip_core/pll/itrim [14])
         );
  mx02d1 U512 ( .I0(1'b1), .I1(n401), .S(1'b0), .Z(\chip_core/pll/itrim [13])
         );
  mx02d1 U501 ( .I0(1'b1), .I1(n408), .S(1'b0), .Z(\chip_core/pll/itrim [2])
         );
  mx02d1 U502 ( .I0(1'b1), .I1(n407), .S(1'b0), .Z(\chip_core/pll/itrim [3])
         );
  mx02d1 U503 ( .I0(1'b1), .I1(n399), .S(1'b0), .Z(\chip_core/pll/itrim [4])
         );
  mx02d1 U504 ( .I0(1'b1), .I1(n386), .S(1'b0), .Z(\chip_core/pll/itrim [5])
         );
  mx02d1 U505 ( .I0(1'b1), .I1(n404), .S(1'b0), .Z(\chip_core/pll/itrim [6])
         );
  mx02d1 U506 ( .I0(1'b1), .I1(n387), .S(1'b0), .Z(\chip_core/pll/itrim [7])
         );
  mx02d1 U507 ( .I0(1'b1), .I1(n388), .S(1'b0), .Z(\chip_core/pll/itrim [8])
         );
  mx02d1 U508 ( .I0(1'b1), .I1(n389), .S(1'b0), .Z(\chip_core/pll/itrim [9])
         );
  mx02d1 U509 ( .I0(1'b1), .I1(n390), .S(1'b0), .Z(\chip_core/pll/itrim [10])
         );
  mx02d1 U510 ( .I0(1'b1), .I1(n391), .S(1'b0), .Z(\chip_core/pll/itrim [11])
         );
  mx02d1 U500 ( .I0(1'b1), .I1(n405), .S(1'b0), .Z(\chip_core/pll/itrim [1])
         );
  mx02d1 U526 ( .I0(clock_core), .I1(1'b0), .S(1'b0), .Z(
        \chip_core/clock_ctrl/core_ext_clk ) );
  ad01d0 \DP_OP_226J5_123_679/U6  ( .A(\chip_core/pll/pll_control/tint [0]), 
        .B(\DP_OP_226J5_123_679/n19 ), .CI(\DP_OP_226J5_123_679/n6 ), .CO(
        \DP_OP_226J5_123_679/n5 ), .S(\chip_core/pll/pll_control/N65 ) );
  ad01d0 \DP_OP_226J5_123_679/U7  ( .A(\chip_core/pll/pll_control/tval [1]), 
        .B(\DP_OP_226J5_123_679/n19 ), .CI(\chip_core/pll/pll_control/tval [0]), .CO(\DP_OP_226J5_123_679/n6 ), .S(\chip_core/pll/pll_control/N64 ) );
  invtd4 \chip_core/pll/ringosc/iss/reseten0  ( .I(1'b1), .EN(1'b0), .ZN(
        \chip_core/pll/ringosc/d [0]) );
  ad01d0 \DP_OP_226J5_123_679/U5  ( .A(\chip_core/pll/pll_control/tint [1]), 
        .B(\DP_OP_226J5_123_679/n19 ), .CI(\DP_OP_226J5_123_679/n5 ), .CO(
        \DP_OP_226J5_123_679/n4 ), .S(\chip_core/pll/pll_control/N66 ) );
  ad01d0 \DP_OP_226J5_123_679/U4  ( .A(\chip_core/pll/pll_control/tint [2]), 
        .B(\DP_OP_226J5_123_679/n19 ), .CI(\DP_OP_226J5_123_679/n4 ), .CO(
        \DP_OP_226J5_123_679/n3 ), .S(\chip_core/pll/pll_control/N67 ) );
  ad01d0 \DP_OP_226J5_123_679/U3  ( .A(\chip_core/pll/pll_control/tint [3]), 
        .B(\DP_OP_226J5_123_679/n19 ), .CI(\DP_OP_226J5_123_679/n3 ), .CO(
        \DP_OP_226J5_123_679/n2 ), .S(\chip_core/pll/pll_control/N68 ) );
  mx02d1 U525 ( .I0(\chip_core/clock_ctrl/core_ext_clk ), .I1(1'b1), .S(1'b0)
         );
  nd04d0 U528 ( .A1(\chip_core/pll/pll_control/tval [0]), .A2(
        \chip_core/pll/pll_control/tval [1]), .A3(n424), .A4(
        \chip_core/pll/otrim [24]), .ZN(n426) );
  nd04d0 U529 ( .A1(n457), .A2(n458), .A3(n459), .A4(n460), .ZN(n415) );
  inv0d1 U530 ( .I(n463), .ZN(n462) );
  inv0d0 U531 ( .I(\chip_core/pll/creset ), .ZN(n409) );
  inv0d1 U532 ( .I(\chip_core/pll/creset ), .ZN(n335) );
  nd12d0 U533 ( .A1(n424), .A2(n440), .ZN(n386) );
  nr02d0 U534 ( .A1(n408), .A2(\chip_core/pll/pll_control/tint [2]), .ZN(n411)
         );
  nd12d0 U535 ( .A1(n404), .A2(n445), .ZN(n398) );
  nd12d0 U536 ( .A1(\chip_core/pll/pll_control/prep [0]), .A2(n463), .ZN(n356)
         );
  inv0d0 U537 ( .I(\chip_core/pll/pll_control/tint [2]), .ZN(n442) );
  nd02d0 U538 ( .A1(\chip_core/pll/pll_control/tint [0]), .A2(
        \chip_core/pll/pll_control/tint [1]), .ZN(n438) );
  nr02d0 U539 ( .A1(n442), .A2(n438), .ZN(n424) );
  nr02d0 U540 ( .A1(\chip_core/pll/pll_control/tint [4]), .A2(
        \chip_core/pll/pll_control/tint [3]), .ZN(n440) );
  aoi21d1 U541 ( .B1(\chip_core/pll/pll_control/tint [2]), .B2(
        \chip_core/pll/pll_control/tint [3]), .A(
        \chip_core/pll/pll_control/tint [4]), .ZN(n444) );
  inv0d0 U542 ( .I(n444), .ZN(n405) );
  inv0d0 U543 ( .I(\chip_core/pll/itrim [12]), .ZN(n370) );
  oai21d1 U544 ( .B1(\chip_core/pll/pll_control/tint [2]), .B2(
        \chip_core/pll/pll_control/tint [3]), .A(
        \chip_core/pll/pll_control/tint [4]), .ZN(n435) );
  inv0d0 U545 ( .I(n435), .ZN(n406) );
  inv0d0 U546 ( .I(\chip_core/pll/pll_control/oscbuf [1]), .ZN(n410) );
  mx02d1 U547 ( .I0(n410), .I1(\chip_core/pll/pll_control/oscbuf [1]), .S(
        \chip_core/pll/pll_control/oscbuf [2]), .Z(n463) );
  inv0d0 U548 ( .I(n440), .ZN(n408) );
  inv0d0 U549 ( .I(n411), .ZN(n407) );
  nd02d0 U550 ( .A1(\chip_core/pll/pll_control/tint [4]), .A2(
        \chip_core/pll/pll_control/tint [3]), .ZN(n437) );
  inv0d0 U551 ( .I(n437), .ZN(\chip_core/pll/otrim [24]) );
  inv0d0 U552 ( .I(\chip_core/pll/pll_control/count0 [0]), .ZN(n456) );
  inv0d0 U553 ( .I(\chip_core/pll/pll_control/count1 [0]), .ZN(n455) );
  nr02d0 U554 ( .A1(n456), .A2(n455), .ZN(n423) );
  cg01d0 U555 ( .A(\chip_core/pll/pll_control/count1 [1]), .B(
        \chip_core/pll/pll_control/count0 [1]), .CI(n423), .CO(n418) );
  inv0d0 U556 ( .I(\chip_core/pll/pll_control/count1 [4]), .ZN(n457) );
  inv0d0 U557 ( .I(\chip_core/pll/pll_control/count0 [4]), .ZN(n458) );
  inv0d0 U558 ( .I(\chip_core/pll/pll_control/count1 [3]), .ZN(n459) );
  inv0d0 U559 ( .I(\chip_core/pll/pll_control/count0 [3]), .ZN(n460) );
  or02d0 U560 ( .A1(\chip_core/pll/pll_control/count0 [2]), .A2(
        \chip_core/pll/pll_control/count1 [2]), .Z(n417) );
  nr03d1 U561 ( .A1(n418), .A2(n415), .A3(n417), .ZN(\DP_OP_226J5_123_679/n19 ) );
  buffd1 U562 ( .I(\chip_core/gpio_load_1_shifted[0] ), .Z(n481) );
  buffd1 U563 ( .I(n481), .Z(n469) );
  buffd1 U564 ( .I(n469), .Z(n466) );
  buffd1 U565 ( .I(n466), .Z(n474) );
  buffd1 U566 ( .I(n481), .Z(n472) );
  buffd1 U567 ( .I(\chip_core/gpio_load_1_shifted[0] ), .Z(n483) );
  buffd1 U568 ( .I(n483), .Z(n477) );
  buffd1 U569 ( .I(\chip_core/gpio_load_1_shifted[0] ), .Z(n484) );
  buffd1 U570 ( .I(n484), .Z(n468) );
  buffd1 U571 ( .I(\chip_core/gpio_load_1_shifted[0] ), .Z(n482) );
  buffd1 U572 ( .I(n482), .Z(n476) );
  buffd1 U573 ( .I(n476), .Z(n467) );
  buffd1 U574 ( .I(n467), .Z(n465) );
  buffd1 U575 ( .I(n482), .Z(n475) );
  buffd1 U576 ( .I(n484), .Z(n480) );
  buffd1 U577 ( .I(n480), .Z(n473) );
  buffd1 U578 ( .I(n481), .Z(n471) );
  buffd1 U579 ( .I(n484), .Z(n479) );
  buffd1 U580 ( .I(n483), .Z(n478) );
  buffd1 U581 ( .I(n478), .Z(n470) );
  or02d0 U582 ( .A1(\chip_core/pll/pll_control/tint [1]), .A2(n407), .Z(n404)
         );
  inv0d0 U583 ( .I(\chip_core/pll/pll_control/tint [0]), .ZN(n445) );
  nd02d0 U584 ( .A1(n411), .A2(n438), .ZN(n390) );
  nd02d0 U585 ( .A1(\chip_core/pll/pll_control/count0 [0]), .A2(
        \chip_core/pll/pll_control/count0 [1]), .ZN(n448) );
  inv0d0 U586 ( .I(n448), .ZN(n450) );
  nd02d0 U587 ( .A1(\chip_core/pll/pll_control/count0 [2]), .A2(n450), .ZN(
        n453) );
  inv0d0 U588 ( .I(n453), .ZN(n454) );
  nd02d0 U589 ( .A1(\chip_core/pll/pll_control/count0 [3]), .A2(n454), .ZN(
        n452) );
  aoim21d1 U590 ( .B1(n458), .B2(n452), .A(n462), .ZN(n412) );
  nd02d0 U591 ( .A1(\chip_core/pll/pll_control/count0 [0]), .A2(n412), .ZN(
        n352) );
  aoi21d1 U592 ( .B1(n458), .B2(n452), .A(n462), .ZN(n349) );
  inv0d0 U593 ( .I(\chip_core/pll/pll_control/prep [1]), .ZN(n447) );
  aoim22d1 U594 ( .A1(n462), .A2(n447), .B1(
        \chip_core/pll/pll_control/prep [2]), .B2(n462), .Z(n354) );
  xr02d1 U595 ( .A1(\chip_core/pll/pll_control/tint [4]), .A2(
        \DP_OP_226J5_123_679/n19 ), .Z(n413) );
  xr02d1 U596 ( .A1(n413), .A2(\DP_OP_226J5_123_679/n2 ), .Z(n429) );
  nd02d0 U597 ( .A1(n462), .A2(\chip_core/pll/pll_control/prep [0]), .ZN(n446)
         );
  xr02d1 U598 ( .A1(\chip_core/pll/pll_control/count1 [1]), .A2(
        \chip_core/pll/pll_control/count0 [1]), .Z(n414) );
  nr03d0 U599 ( .A1(n414), .A2(\chip_core/pll/pll_control/count1 [0]), .A3(
        \chip_core/pll/pll_control/count0 [0]), .ZN(n422) );
  inv0d0 U600 ( .I(n414), .ZN(n420) );
  aoi21d1 U601 ( .B1(\chip_core/pll/pll_control/count0 [2]), .B2(
        \chip_core/pll/pll_control/count1 [2]), .A(n415), .ZN(n416) );
  oaim21d1 U602 ( .B1(n418), .B2(n417), .A(n416), .ZN(n419) );
  aoi21d1 U603 ( .B1(n423), .B2(n420), .A(n419), .ZN(n421) );
  oan211d1 U604 ( .C1(n423), .C2(n422), .B(n421), .A(\DP_OP_226J5_123_679/n19 ), .ZN(n427) );
  ora31d1 U605 ( .B1(\chip_core/pll/pll_control/tval [0]), .B2(
        \chip_core/pll/pll_control/tval [1]), .B3(n398), .A(
        \DP_OP_226J5_123_679/n19 ), .Z(n425) );
  aon211d1 U606 ( .C1(n427), .C2(n426), .B(n425), .A(
        \chip_core/pll/pll_control/prep [2]), .ZN(n428) );
  nr03d0 U607 ( .A1(n447), .A2(n446), .A3(n428), .ZN(n431) );
  mx02d1 U608 ( .I0(\chip_core/pll/pll_control/tint [4]), .I1(n429), .S(n431), 
        .Z(n336) );
  inv0d0 U609 ( .I(\chip_core/pll/pll_control/tval [0]), .ZN(n430) );
  mx02d1 U610 ( .I0(\chip_core/pll/pll_control/tval [0]), .I1(n430), .S(n431), 
        .Z(n343) );
  mx02d1 U611 ( .I0(\chip_core/pll/pll_control/tval [1]), .I1(
        \chip_core/pll/pll_control/N64 ), .S(n431), .Z(n342) );
  mx02d1 U612 ( .I0(\chip_core/pll/pll_control/tint [0]), .I1(
        \chip_core/pll/pll_control/N65 ), .S(n431), .Z(n341) );
  mx02d1 U613 ( .I0(\chip_core/pll/pll_control/tint [3]), .I1(
        \chip_core/pll/pll_control/N68 ), .S(n431), .Z(n338) );
  mx02d1 U614 ( .I0(\chip_core/pll/pll_control/tint [2]), .I1(
        \chip_core/pll/pll_control/N67 ), .S(n431), .Z(n339) );
  mx02d1 U615 ( .I0(\chip_core/pll/pll_control/tint [1]), .I1(
        \chip_core/pll/pll_control/N66 ), .S(n431), .Z(n340) );
  nd23d1 U616 ( .A1(mprj_io_dm[2]), .A2(mprj_io_dm[0]), .A3(mprj_io_dm[1]), 
        .ZN(n37) );
  nd23d1 U617 ( .A1(mprj_io_dm[5]), .A2(mprj_io_dm[3]), .A3(mprj_io_dm[4]), 
        .ZN(n218) );
  nd23d1 U618 ( .A1(mprj_io_dm[6]), .A2(mprj_io_dm[8]), .A3(mprj_io_dm[7]), 
        .ZN(n67) );
  nd23d1 U619 ( .A1(mprj_io_dm[9]), .A2(mprj_io_dm[11]), .A3(mprj_io_dm[10]), 
        .ZN(n62) );
  nd23d1 U620 ( .A1(mprj_io_dm[12]), .A2(mprj_io_dm[14]), .A3(mprj_io_dm[13]), 
        .ZN(n57) );
  nd23d1 U621 ( .A1(mprj_io_dm[15]), .A2(mprj_io_dm[17]), .A3(mprj_io_dm[16]), 
        .ZN(n52) );
  nd23d1 U622 ( .A1(mprj_io_dm[18]), .A2(mprj_io_dm[20]), .A3(mprj_io_dm[19]), 
        .ZN(n47) );
  nd23d1 U623 ( .A1(mprj_io_dm[21]), .A2(mprj_io_dm[23]), .A3(mprj_io_dm[22]), 
        .ZN(n42) );
  nd23d1 U624 ( .A1(mprj_io_dm[24]), .A2(mprj_io_dm[26]), .A3(mprj_io_dm[25]), 
        .ZN(n122) );
  nd23d1 U625 ( .A1(mprj_io_dm[27]), .A2(mprj_io_dm[29]), .A3(mprj_io_dm[28]), 
        .ZN(n117) );
  nd23d1 U626 ( .A1(mprj_io_dm[30]), .A2(mprj_io_dm[32]), .A3(mprj_io_dm[31]), 
        .ZN(n112) );
  nd23d1 U627 ( .A1(mprj_io_dm[33]), .A2(mprj_io_dm[35]), .A3(mprj_io_dm[34]), 
        .ZN(n107) );
  nd23d1 U628 ( .A1(mprj_io_dm[36]), .A2(mprj_io_dm[38]), .A3(mprj_io_dm[37]), 
        .ZN(n102) );
  nd23d1 U629 ( .A1(mprj_io_dm[39]), .A2(mprj_io_dm[41]), .A3(mprj_io_dm[40]), 
        .ZN(n97) );
  nd23d1 U630 ( .A1(mprj_io_dm[42]), .A2(mprj_io_dm[44]), .A3(mprj_io_dm[43]), 
        .ZN(n92) );
  nd23d1 U631 ( .A1(mprj_io_dm[45]), .A2(mprj_io_dm[47]), .A3(mprj_io_dm[46]), 
        .ZN(n87) );
  nd23d1 U632 ( .A1(mprj_io_dm[48]), .A2(mprj_io_dm[50]), .A3(mprj_io_dm[49]), 
        .ZN(n82) );
  nd23d1 U633 ( .A1(mprj_io_dm[51]), .A2(mprj_io_dm[53]), .A3(mprj_io_dm[52]), 
        .ZN(n77) );
  nd23d1 U634 ( .A1(mprj_io_dm[54]), .A2(mprj_io_dm[56]), .A3(mprj_io_dm[55]), 
        .ZN(n72) );
  nd23d1 U635 ( .A1(mprj_io_dm[57]), .A2(mprj_io_dm[59]), .A3(mprj_io_dm[58]), 
        .ZN(n214) );
  nd23d1 U636 ( .A1(mprj_io_dm[60]), .A2(mprj_io_dm[62]), .A3(mprj_io_dm[61]), 
        .ZN(n209) );
  nd23d1 U637 ( .A1(mprj_io_dm[63]), .A2(mprj_io_dm[65]), .A3(mprj_io_dm[64]), 
        .ZN(n204) );
  nd23d1 U638 ( .A1(mprj_io_dm[66]), .A2(mprj_io_dm[68]), .A3(mprj_io_dm[67]), 
        .ZN(n199) );
  nd23d1 U639 ( .A1(mprj_io_dm[69]), .A2(mprj_io_dm[71]), .A3(mprj_io_dm[70]), 
        .ZN(n194) );
  nd23d1 U640 ( .A1(mprj_io_dm[72]), .A2(mprj_io_dm[74]), .A3(mprj_io_dm[73]), 
        .ZN(n189) );
  nd23d1 U641 ( .A1(mprj_io_dm[75]), .A2(mprj_io_dm[77]), .A3(mprj_io_dm[76]), 
        .ZN(n184) );
  nd23d1 U642 ( .A1(mprj_io_dm[78]), .A2(mprj_io_dm[80]), .A3(mprj_io_dm[79]), 
        .ZN(n179) );
  nd23d1 U643 ( .A1(mprj_io_dm[81]), .A2(mprj_io_dm[83]), .A3(mprj_io_dm[82]), 
        .ZN(n174) );
  nd23d1 U644 ( .A1(mprj_io_dm[84]), .A2(mprj_io_dm[86]), .A3(mprj_io_dm[85]), 
        .ZN(n169) );
  nd23d1 U645 ( .A1(mprj_io_dm[87]), .A2(mprj_io_dm[89]), .A3(mprj_io_dm[88]), 
        .ZN(n164) );
  nd23d1 U646 ( .A1(mprj_io_dm[90]), .A2(mprj_io_dm[92]), .A3(mprj_io_dm[91]), 
        .ZN(n159) );
  nd23d1 U647 ( .A1(mprj_io_dm[93]), .A2(mprj_io_dm[95]), .A3(mprj_io_dm[94]), 
        .ZN(n154) );
  nd23d1 U648 ( .A1(mprj_io_dm[96]), .A2(mprj_io_dm[98]), .A3(mprj_io_dm[97]), 
        .ZN(n149) );
  nd23d1 U649 ( .A1(mprj_io_dm[99]), .A2(mprj_io_dm[101]), .A3(mprj_io_dm[100]), .ZN(n144) );
  nd23d1 U650 ( .A1(mprj_io_dm[102]), .A2(mprj_io_dm[104]), .A3(
        mprj_io_dm[103]), .ZN(n139) );
  nd23d1 U651 ( .A1(mprj_io_dm[107]), .A2(mprj_io_dm[105]), .A3(
        mprj_io_dm[106]), .ZN(n134) );
  nd23d1 U652 ( .A1(mprj_io_dm[110]), .A2(mprj_io_dm[108]), .A3(
        mprj_io_dm[109]), .ZN(n130) );
  nd23d1 U653 ( .A1(mprj_io_dm[113]), .A2(mprj_io_dm[111]), .A3(
        mprj_io_dm[112]), .ZN(n126) );
  inv0d0 U656 ( .I(\chip_core/pll/ringosc/dstage[0].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[0].id/d2 ) );
  inv0d0 U657 ( .I(\chip_core/pll/ringosc/iss/d1 ), .ZN(
        \chip_core/pll/ringosc/iss/d2 ) );
  inv0d0 U658 ( .I(\chip_core/pll/ringosc/dstage[11].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[11].id/d2 ) );
  inv0d0 U659 ( .I(\chip_core/pll/ringosc/dstage[10].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[10].id/d2 ) );
  inv0d0 U660 ( .I(\chip_core/pll/ringosc/dstage[9].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[9].id/d2 ) );
  inv0d0 U661 ( .I(\chip_core/pll/ringosc/dstage[8].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[8].id/d2 ) );
  inv0d0 U662 ( .I(\chip_core/pll/ringosc/dstage[7].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[7].id/d2 ) );
  inv0d0 U663 ( .I(\chip_core/pll/ringosc/dstage[6].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[6].id/d2 ) );
  inv0d0 U664 ( .I(\chip_core/pll/ringosc/dstage[5].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[5].id/d2 ) );
  inv0d0 U665 ( .I(\chip_core/pll/ringosc/dstage[4].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[4].id/d2 ) );
  inv0d0 U666 ( .I(\chip_core/pll/ringosc/dstage[3].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[3].id/d2 ) );
  inv0d0 U667 ( .I(\chip_core/pll/ringosc/dstage[2].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[2].id/d2 ) );
  inv0d0 U668 ( .I(\chip_core/pll/ringosc/dstage[1].id/d1 ), .ZN(
        \chip_core/pll/ringosc/dstage[1].id/d2 ) );
  inv0d0 U669 ( .I(\chip_core/mgmt_io_in_hk [1]), .ZN(n219) );
  inv0d0 U670 ( .I(\chip_core/mgmt_gpio_in [0]), .ZN(n215) );
  inv0d0 U671 ( .I(\chip_core/mgmt_gpio_in [1]), .ZN(n210) );
  inv0d0 U672 ( .I(\chip_core/mgmt_gpio_in [2]), .ZN(n205) );
  inv0d0 U673 ( .I(\chip_core/mgmt_gpio_in [3]), .ZN(n200) );
  inv0d0 U674 ( .I(\chip_core/mgmt_gpio_in [4]), .ZN(n195) );
  inv0d0 U675 ( .I(\chip_core/mgmt_gpio_in [5]), .ZN(n190) );
  inv0d0 U676 ( .I(\chip_core/mgmt_gpio_in [6]), .ZN(n185) );
  inv0d0 U677 ( .I(\chip_core/mgmt_gpio_in [7]), .ZN(n180) );
  inv0d0 U678 ( .I(\chip_core/mgmt_gpio_in [8]), .ZN(n175) );
  inv0d0 U679 ( .I(\chip_core/mgmt_gpio_in [9]), .ZN(n170) );
  inv0d0 U680 ( .I(\chip_core/mgmt_gpio_in [10]), .ZN(n165) );
  inv0d0 U681 ( .I(\chip_core/mgmt_gpio_in [11]), .ZN(n160) );
  inv0d0 U682 ( .I(\chip_core/mgmt_gpio_in [12]), .ZN(n155) );
  inv0d0 U683 ( .I(\chip_core/mgmt_gpio_in [13]), .ZN(n150) );
  inv0d0 U684 ( .I(\chip_core/mgmt_gpio_in [14]), .ZN(n145) );
  inv0d0 U685 ( .I(\chip_core/mgmt_gpio_in [15]), .ZN(n140) );
  inv0d0 U686 ( .I(\chip_core/mgmt_gpio_in [16]), .ZN(n135) );
  inv0d0 U687 ( .I(\chip_core/mgmt_gpio_in [17]), .ZN(n131) );
  inv0d0 U688 ( .I(\chip_core/mgmt_gpio_in [18]), .ZN(n127) );
  inv0d0 U689 ( .I(\chip_core/mgmt_io_in_hk [8]), .ZN(n123) );
  inv0d0 U690 ( .I(\chip_core/mgmt_io_in_hk [9]), .ZN(n118) );
  inv0d0 U691 ( .I(\chip_core/mgmt_io_in_hk [10]), .ZN(n113) );
  inv0d0 U692 ( .I(\chip_core/mgmt_io_in_hk [11]), .ZN(n108) );
  inv0d0 U693 ( .I(\chip_core/mgmt_io_in_hk [12]), .ZN(n103) );
  inv0d0 U694 ( .I(\chip_core/mgmt_io_in_hk [13]), .ZN(n98) );
  inv0d0 U695 ( .I(\chip_core/mgmt_io_in_hk [14]), .ZN(n93) );
  inv0d0 U696 ( .I(\chip_core/mgmt_io_in_hk [15]), .ZN(n88) );
  inv0d0 U697 ( .I(\chip_core/mgmt_io_in_hk [16]), .ZN(n83) );
  inv0d0 U698 ( .I(\chip_core/mgmt_io_in_hk [17]), .ZN(n78) );
  inv0d0 U699 ( .I(\chip_core/mgmt_io_in_hk [18]), .ZN(n73) );
  inv0d0 U700 ( .I(\chip_core/mgmt_io_in_hk [2]), .ZN(n68) );
  inv0d0 U701 ( .I(\chip_core/mgmt_io_in_hk [3]), .ZN(n63) );
  inv0d0 U702 ( .I(\chip_core/mgmt_io_in_hk [4]), .ZN(n58) );
  inv0d0 U703 ( .I(\chip_core/mgmt_io_in_hk [5]), .ZN(n53) );
  inv0d0 U704 ( .I(\chip_core/mgmt_io_in_hk [6]), .ZN(n48) );
  inv0d0 U705 ( .I(\chip_core/mgmt_io_in_hk [7]), .ZN(n43) );
  inv0d0 U706 ( .I(\chip_core/mgmt_io_in_hk [0]), .ZN(n38) );
  aoi21d1 U707 ( .B1(\chip_core/pll/pll_control/tint [1]), .B2(
        \chip_core/pll/pll_control/tint [2]), .A(n408), .ZN(n441) );
  inv0d0 U708 ( .I(n441), .ZN(n400) );
  inv0d0 U709 ( .I(\chip_core/pll/pll_control/tint [4]), .ZN(n433) );
  oai21d1 U710 ( .B1(n438), .B2(n433), .A(n435), .ZN(n397) );
  oai21d1 U711 ( .B1(n438), .B2(n444), .A(n433), .ZN(n396) );
  oai21d1 U712 ( .B1(n438), .B2(n435), .A(n437), .ZN(n395) );
  aoi21d1 U713 ( .B1(\chip_core/pll/pll_control/tint [4]), .B2(
        \chip_core/pll/pll_control/tint [1]), .A(n406), .ZN(n432) );
  inv0d0 U714 ( .I(n432), .ZN(n403) );
  oai21d1 U715 ( .B1(n445), .B2(n433), .A(n432), .ZN(n394) );
  aoi21d1 U716 ( .B1(\chip_core/pll/pll_control/tint [1]), .B2(n406), .A(
        \chip_core/pll/otrim [24]), .ZN(n434) );
  inv0d0 U717 ( .I(n434), .ZN(n402) );
  oai21d1 U718 ( .B1(n445), .B2(n435), .A(n434), .ZN(n393) );
  oai21d1 U719 ( .B1(\chip_core/pll/pll_control/tint [1]), .B2(
        \chip_core/pll/pll_control/tint [2]), .A(\chip_core/pll/otrim [24]), 
        .ZN(n436) );
  inv0d0 U720 ( .I(n436), .ZN(\chip_core/pll/otrim [20]) );
  oai21d1 U721 ( .B1(n437), .B2(n445), .A(n436), .ZN(n392) );
  oai21d1 U722 ( .B1(n440), .B2(n438), .A(n444), .ZN(n391) );
  aoi21d1 U723 ( .B1(n408), .B2(\chip_core/pll/pll_control/tint [1]), .A(n405), 
        .ZN(n439) );
  inv0d0 U724 ( .I(n439), .ZN(n399) );
  oai21d1 U725 ( .B1(n440), .B2(n445), .A(n439), .ZN(n389) );
  oai21d1 U726 ( .B1(n445), .B2(n442), .A(n441), .ZN(n388) );
  aoi21d1 U727 ( .B1(\chip_core/pll/pll_control/tint [1]), .B2(n405), .A(
        \chip_core/pll/pll_control/tint [4]), .ZN(n443) );
  inv0d0 U728 ( .I(n443), .ZN(n401) );
  oai21d1 U729 ( .B1(n445), .B2(n444), .A(n443), .ZN(n387) );
  inv0d0 U730 ( .I(\chip_core/pll/itrim [25]), .ZN(n383) );
  inv0d0 U731 ( .I(\chip_core/pll/itrim [24]), .ZN(n382) );
  inv0d0 U732 ( .I(\chip_core/pll/itrim [23]), .ZN(n381) );
  inv0d0 U733 ( .I(\chip_core/pll/itrim [22]), .ZN(n380) );
  inv0d0 U734 ( .I(\chip_core/pll/itrim [21]), .ZN(n379) );
  inv0d0 U735 ( .I(\chip_core/pll/itrim [20]), .ZN(n378) );
  inv0d0 U736 ( .I(\chip_core/pll/itrim [19]), .ZN(n377) );
  inv0d0 U737 ( .I(\chip_core/pll/itrim [18]), .ZN(n376) );
  inv0d0 U738 ( .I(\chip_core/pll/itrim [17]), .ZN(n375) );
  inv0d0 U739 ( .I(\chip_core/pll/itrim [16]), .ZN(n374) );
  inv0d0 U740 ( .I(\chip_core/pll/itrim [15]), .ZN(n373) );
  inv0d0 U741 ( .I(\chip_core/pll/itrim [14]), .ZN(n372) );
  inv0d0 U742 ( .I(\chip_core/pll/itrim [13]), .ZN(n371) );
  inv0d0 U743 ( .I(\chip_core/pll/itrim [11]), .ZN(n369) );
  inv0d0 U744 ( .I(\chip_core/pll/itrim [10]), .ZN(n368) );
  inv0d0 U745 ( .I(\chip_core/pll/itrim [9]), .ZN(n367) );
  inv0d0 U746 ( .I(\chip_core/pll/itrim [8]), .ZN(n366) );
  inv0d0 U747 ( .I(\chip_core/pll/itrim [7]), .ZN(n365) );
  inv0d0 U748 ( .I(\chip_core/pll/itrim [6]), .ZN(n364) );
  inv0d0 U749 ( .I(\chip_core/pll/itrim [5]), .ZN(n363) );
  inv0d0 U750 ( .I(\chip_core/pll/itrim [4]), .ZN(n362) );
  inv0d0 U751 ( .I(\chip_core/pll/itrim [3]), .ZN(n361) );
  inv0d0 U752 ( .I(\chip_core/pll/itrim [2]), .ZN(n360) );
  inv0d0 U753 ( .I(\chip_core/pll/itrim [1]), .ZN(n359) );
  inv0d0 U754 ( .I(\chip_core/pll/itrim [0]), .ZN(n358) );
  oai21d1 U755 ( .B1(n462), .B2(n447), .A(n446), .ZN(n355) );
  oai21d1 U756 ( .B1(\chip_core/pll/pll_control/count0 [0]), .B2(
        \chip_core/pll/pll_control/count0 [1]), .A(n448), .ZN(n449) );
  oan211d1 U757 ( .C1(n458), .C2(n452), .B(n449), .A(n462), .ZN(n353) );
  oai21d1 U758 ( .B1(\chip_core/pll/pll_control/count0 [2]), .B2(n450), .A(
        n453), .ZN(n451) );
  oan211d1 U759 ( .C1(n458), .C2(n452), .B(n451), .A(n462), .ZN(n351) );
  aoi321d1 U760 ( .C1(\chip_core/pll/pll_control/count0 [3]), .C2(n454), .C3(
        n458), .B1(n460), .B2(n453), .A(n462), .ZN(n350) );
  aoi22d1 U761 ( .A1(n462), .A2(n456), .B1(n455), .B2(n463), .ZN(n348) );
  aoi22d1 U762 ( .A1(n462), .A2(n458), .B1(n457), .B2(n463), .ZN(n347) );
  aoi22d1 U763 ( .A1(n462), .A2(n460), .B1(n459), .B2(n463), .ZN(n346) );
  oai22d1 U764 ( .A1(n463), .A2(\chip_core/pll/pll_control/count0 [2]), .B1(
        \chip_core/pll/pll_control/count1 [2]), .B2(n462), .ZN(n461) );
  inv0d0 U765 ( .I(n461), .ZN(n345) );
  oai22d1 U766 ( .A1(n463), .A2(\chip_core/pll/pll_control/count0 [1]), .B1(
        \chip_core/pll/pll_control/count1 [1]), .B2(n462), .ZN(n464) );
  inv0d0 U767 ( .I(n464), .ZN(n344) );
endmodule

