// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Thu Dec 31 17:41:12 2020
//
// Verilog Description of module top
//

module top (reset, tx, rx) /* synthesis syn_module_defined=1 */ ;   // ../lattice_top.v(4[8:11])
    input reset;   // ../lattice_top.v(5[8:13])
    output tx;   // ../lattice_top.v(6[11:13])
    input rx;   // ../lattice_top.v(7[11:13])
    
    wire clk /* synthesis is_clock=1 */ ;   // ../lattice_top.v(10[6:9])
    
    wire reset_c, tx_c, rx_c, GND_net;
    wire [7:0]uart_rx_data;   // ../tok.v(24[14:26])
    wire [7:0]A_low;   // ../tok.v(30[14:19])
    wire [15:0]S;   // ../tok.v(34[15:16])
    wire [1:0]A_stk_delta;   // ../tok.v(35[13:24])
    wire [1:0]C_stk_delta;   // ../tok.v(53[13:24])
    wire [7:0]c_stk_r;   // ../tok.v(56[14:21])
    
    wire stall_;
    wire [15:0]table_wr_data;   // ../tok.v(82[15:28])
    wire [7:0]tc;   // ../tok.v(97[13:15])
    wire [7:0]tc_plus_1;   // ../tok.v(98[14:23])
    
    wire n92, n4928, n974, n92_adj_897, n92_adj_898;
    wire [127:0]tail;   // ../stack.v(16[16:20])
    
    wire n1082, n1081, n1080, n1079, n1078, n1077, n1076, n1075, 
        n1074, n1073, n1072, n1071;
    wire [127:0]tailN;   // ../stack.v(18[17:22])
    
    wire rd_15__N_300, n5346;
    wire [63:0]tail_adj_913;   // ../stack.v(16[16:20])
    
    wire n1064;
    wire [63:0]tailN_adj_915;   // ../stack.v(18[17:22])
    
    wire rd_7__N_373;
    wire [9:0]capture;   // ../uart.v(45[11:18])
    
    wire txtick;
    wire [9:0]sender;   // ../uart.v(64[11:17])
    
    wire bytephase_5__N_509, rx_data_7__N_510, n1057, n746, n10, n5172, 
        n10_adj_905, n5278, n15, n1050, n1158, n1155, n1154, n1152, 
        n1149, n1145, n1142, n1139, n10_adj_906, n1136, n1133, 
        VCC_net, n1130, n1127, n1126, n1123, n1047, n1120, n1117, 
        n1116, n1113, n23, n1110, n1106, n1046, n10_adj_907, n1088, 
        n1087, n1086, n1085, n5200, n1084, n1083, n10_adj_908;
    
    GND i1 (.Y(GND_net));
    SB_HFOSC OSCInst0 (.CLKHFPU(VCC_net), .CLKHFEN(VCC_net), .CLKHF(clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCInst0.CLKHF_DIV = "0b01";
    SB_IO reset_pad (.PACKAGE_PIN(reset), .OUTPUT_ENABLE(VCC_net), .D_IN_0(reset_c));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam reset_pad.PIN_TYPE = 6'b000001;
    defparam reset_pad.PULLUP = 1'b0;
    defparam reset_pad.NEG_TRIGGER = 1'b0;
    defparam reset_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO tx_pad (.PACKAGE_PIN(tx), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(tx_c));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam tx_pad.PIN_TYPE = 6'b011001;
    defparam tx_pad.PULLUP = 1'b0;
    defparam tx_pad.NEG_TRIGGER = 1'b0;
    defparam tx_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO rx_pad (.PACKAGE_PIN(rx), .OUTPUT_ENABLE(VCC_net), .D_IN_0(rx_c));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam rx_pad.PIN_TYPE = 6'b000001;
    defparam rx_pad.PULLUP = 1'b0;
    defparam rx_pad.NEG_TRIGGER = 1'b0;
    defparam rx_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i1040_3_lut (.I0(capture[8]), .I1(capture[9]), .I2(n4928), 
            .I3(GND_net), .O(n1081));   // ../uart.v(45[27:91])
    defparam i1040_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1041_3_lut (.I0(capture[7]), .I1(capture[8]), .I2(n4928), 
            .I3(GND_net), .O(n1082));   // ../uart.v(45[27:91])
    defparam i1041_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1042_3_lut (.I0(capture[6]), .I1(capture[7]), .I2(n4928), 
            .I3(GND_net), .O(n1083));   // ../uart.v(45[27:91])
    defparam i1042_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1043_3_lut (.I0(capture[5]), .I1(capture[6]), .I2(n4928), 
            .I3(GND_net), .O(n1084));   // ../uart.v(45[27:91])
    defparam i1043_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1044_3_lut (.I0(capture[4]), .I1(capture[5]), .I2(n4928), 
            .I3(GND_net), .O(n1085));   // ../uart.v(45[27:91])
    defparam i1044_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1045_3_lut (.I0(capture[3]), .I1(capture[4]), .I2(n4928), 
            .I3(GND_net), .O(n1086));   // ../uart.v(45[27:91])
    defparam i1045_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1046_3_lut (.I0(capture[2]), .I1(capture[3]), .I2(n4928), 
            .I3(GND_net), .O(n1087));   // ../uart.v(45[27:91])
    defparam i1046_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1047_3_lut (.I0(capture[1]), .I1(capture[2]), .I2(n4928), 
            .I3(GND_net), .O(n1088));   // ../uart.v(45[27:91])
    defparam i1047_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1425_3_lut (.I0(tail[48]), .I1(tail[80]), .I2(A_stk_delta[1]), 
            .I3(GND_net), .O(tailN[64]));   // ../tok.v(35[13:24])
    defparam i1425_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1373_3_lut (.I0(tail[49]), .I1(tail[81]), .I2(A_stk_delta[1]), 
            .I3(GND_net), .O(tailN[65]));   // ../tok.v(35[13:24])
    defparam i1373_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1016_4_lut (.I0(C_stk_delta[1]), .I1(tail_adj_913[57]), .I2(tail_adj_913[49]), 
            .I3(rd_7__N_373), .O(n1057));   // ../stack.v(24[10] 29[6])
    defparam i1016_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1009_4_lut (.I0(C_stk_delta[1]), .I1(tail_adj_913[56]), .I2(tail_adj_913[48]), 
            .I3(rd_7__N_373), .O(n1050));   // ../stack.v(24[10] 29[6])
    defparam i1009_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1065_4_lut (.I0(A_stk_delta[1]), .I1(tail[114]), .I2(tail[98]), 
            .I3(rd_15__N_300), .O(n1106));   // ../stack.v(24[10] 29[6])
    defparam i1065_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1069_4_lut (.I0(A_stk_delta[1]), .I1(tail[115]), .I2(tail[99]), 
            .I3(rd_15__N_300), .O(n1110));   // ../stack.v(24[10] 29[6])
    defparam i1069_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1005_3_lut (.I0(capture[0]), .I1(capture[1]), .I2(n4928), 
            .I3(GND_net), .O(n1046));   // ../uart.v(45[27:91])
    defparam i1005_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1006_3_lut (.I0(uart_rx_data[0]), .I1(capture[1]), .I2(rx_data_7__N_510), 
            .I3(GND_net), .O(n1047));   // ../uart.v(50[8] 55[4])
    defparam i1006_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1072_4_lut (.I0(A_stk_delta[1]), .I1(tail[116]), .I2(tail[100]), 
            .I3(rd_15__N_300), .O(n1113));   // ../stack.v(24[10] 29[6])
    defparam i1072_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1075_4_lut (.I0(A_stk_delta[1]), .I1(tail[117]), .I2(tail[101]), 
            .I3(rd_15__N_300), .O(n1116));   // ../stack.v(24[10] 29[6])
    defparam i1075_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1_4_lut (.I0(A_stk_delta[1]), .I1(tail[113]), .I2(tail[97]), 
            .I3(rd_15__N_300), .O(n1117));   // ../tok.v(35[13:24])
    defparam i1_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i25_3_lut (.I0(tc[7]), .I1(n10), .I2(stall_), .I3(GND_net), 
            .O(n5172));   // ../tok.v(162[10] 169[10])
    defparam i25_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i25_3_lut_adj_337 (.I0(tc[6]), .I1(n10_adj_907), .I2(stall_), 
            .I3(GND_net), .O(n5200));   // ../tok.v(162[10] 169[10])
    defparam i25_3_lut_adj_337.LUT_INIT = 16'hacac;
    SB_LUT4 i25_3_lut_adj_338 (.I0(tc[5]), .I1(n10_adj_905), .I2(stall_), 
            .I3(GND_net), .O(n5278));   // ../tok.v(162[10] 169[10])
    defparam i25_3_lut_adj_338.LUT_INIT = 16'hacac;
    SB_LUT4 i25_3_lut_adj_339 (.I0(tc[4]), .I1(n10_adj_906), .I2(stall_), 
            .I3(GND_net), .O(n5346));   // ../tok.v(162[10] 169[10])
    defparam i25_3_lut_adj_339.LUT_INIT = 16'hacac;
    SB_LUT4 i1415_3_lut (.I0(tail[80]), .I1(tail[112]), .I2(A_stk_delta[1]), 
            .I3(GND_net), .O(tailN[96]));   // ../tok.v(35[13:24])
    defparam i1415_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1377_3_lut (.I0(tail[81]), .I1(tail[113]), .I2(A_stk_delta[1]), 
            .I3(GND_net), .O(tailN[97]));   // ../tok.v(35[13:24])
    defparam i1377_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1034_3_lut (.I0(uart_rx_data[5]), .I1(capture[6]), .I2(rx_data_7__N_510), 
            .I3(GND_net), .O(n1075));   // ../uart.v(50[8] 55[4])
    defparam i1034_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1035_3_lut (.I0(uart_rx_data[4]), .I1(capture[5]), .I2(rx_data_7__N_510), 
            .I3(GND_net), .O(n1076));   // ../uart.v(50[8] 55[4])
    defparam i1035_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1036_3_lut (.I0(uart_rx_data[3]), .I1(capture[4]), .I2(rx_data_7__N_510), 
            .I3(GND_net), .O(n1077));   // ../uart.v(50[8] 55[4])
    defparam i1036_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1037_3_lut (.I0(uart_rx_data[2]), .I1(capture[3]), .I2(rx_data_7__N_510), 
            .I3(GND_net), .O(n1078));   // ../uart.v(50[8] 55[4])
    defparam i1037_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1038_3_lut (.I0(uart_rx_data[1]), .I1(capture[2]), .I2(rx_data_7__N_510), 
            .I3(GND_net), .O(n1079));   // ../uart.v(50[8] 55[4])
    defparam i1038_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1039_3_lut (.I0(capture[9]), .I1(rx_c), .I2(n4928), .I3(GND_net), 
            .O(n1080));   // ../uart.v(45[27:91])
    defparam i1039_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1113_4_lut_4_lut (.I0(txtick), .I1(n23), .I2(sender[9]), 
            .I3(A_low[7]), .O(n1154));   // ../uart.v(66[8:100])
    defparam i1113_4_lut_4_lut.LUT_INIT = 16'hfe32;
    SB_LUT4 i1111_4_lut_4_lut (.I0(n23), .I1(sender[1]), .I2(sender[2]), 
            .I3(txtick), .O(n1152));   // ../uart.v(66[8:100])
    defparam i1111_4_lut_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1023_3_lut (.I0(tc[3]), .I1(n92_adj_898), .I2(stall_), .I3(GND_net), 
            .O(n1064));   // ../tok.v(162[10] 169[10])
    defparam i1023_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1379_3_lut (.I0(tc_plus_1[1]), .I1(S[1]), .I2(n15), .I3(GND_net), 
            .O(table_wr_data[1]));
    defparam i1379_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1412_3_lut (.I0(tc_plus_1[0]), .I1(S[0]), .I2(n15), .I3(GND_net), 
            .O(table_wr_data[0]));
    defparam i1412_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1423_3_lut (.I0(S[0]), .I1(tail[16]), .I2(A_stk_delta[1]), 
            .I3(GND_net), .O(tailN[0]));   // ../tok.v(35[13:24])
    defparam i1423_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1418_3_lut (.I0(c_stk_r[0]), .I1(tail_adj_913[8]), .I2(C_stk_delta[1]), 
            .I3(GND_net), .O(tailN_adj_915[0]));   // ../tok.v(53[13:24])
    defparam i1418_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1372_3_lut (.I0(c_stk_r[1]), .I1(tail_adj_913[9]), .I2(C_stk_delta[1]), 
            .I3(GND_net), .O(tailN_adj_915[1]));   // ../tok.v(53[13:24])
    defparam i1372_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1422_3_lut (.I0(tail_adj_913[8]), .I1(tail_adj_913[24]), .I2(C_stk_delta[1]), 
            .I3(GND_net), .O(tailN_adj_915[16]));   // ../tok.v(53[13:24])
    defparam i1422_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1374_3_lut (.I0(tail_adj_913[9]), .I1(tail_adj_913[25]), .I2(C_stk_delta[1]), 
            .I3(GND_net), .O(tailN_adj_915[17]));   // ../tok.v(53[13:24])
    defparam i1374_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1424_3_lut (.I0(tail_adj_913[24]), .I1(tail_adj_913[40]), .I2(C_stk_delta[1]), 
            .I3(GND_net), .O(tailN_adj_915[32]));   // ../tok.v(53[13:24])
    defparam i1424_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1376_3_lut (.I0(tail_adj_913[25]), .I1(tail_adj_913[41]), .I2(C_stk_delta[1]), 
            .I3(GND_net), .O(tailN_adj_915[33]));   // ../tok.v(53[13:24])
    defparam i1376_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1426_3_lut (.I0(tail_adj_913[40]), .I1(tail_adj_913[56]), .I2(C_stk_delta[1]), 
            .I3(GND_net), .O(tailN_adj_915[48]));   // ../tok.v(53[13:24])
    defparam i1426_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1378_3_lut (.I0(tail_adj_913[41]), .I1(tail_adj_913[57]), .I2(C_stk_delta[1]), 
            .I3(GND_net), .O(tailN_adj_915[49]));   // ../tok.v(53[13:24])
    defparam i1378_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut (.I0(n746), .I1(bytephase_5__N_509), .I2(GND_net), 
            .I3(GND_net), .O(n974));
    defparam i1_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i1030_3_lut (.I0(tc[2]), .I1(n10_adj_908), .I2(stall_), .I3(GND_net), 
            .O(n1071));   // ../tok.v(162[10] 169[10])
    defparam i1030_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1031_3_lut (.I0(tc[1]), .I1(n92), .I2(stall_), .I3(GND_net), 
            .O(n1072));   // ../tok.v(162[10] 169[10])
    defparam i1031_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1032_3_lut (.I0(uart_rx_data[7]), .I1(capture[8]), .I2(rx_data_7__N_510), 
            .I3(GND_net), .O(n1073));   // ../uart.v(50[8] 55[4])
    defparam i1032_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1033_3_lut (.I0(uart_rx_data[6]), .I1(capture[7]), .I2(rx_data_7__N_510), 
            .I3(GND_net), .O(n1074));   // ../uart.v(50[8] 55[4])
    defparam i1033_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1079_4_lut (.I0(A_stk_delta[1]), .I1(tail[118]), .I2(tail[102]), 
            .I3(rd_15__N_300), .O(n1120));   // ../stack.v(24[10] 29[6])
    defparam i1079_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1082_4_lut (.I0(A_stk_delta[1]), .I1(tail[119]), .I2(tail[103]), 
            .I3(rd_15__N_300), .O(n1123));   // ../stack.v(24[10] 29[6])
    defparam i1082_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1085_4_lut (.I0(A_stk_delta[1]), .I1(tail[120]), .I2(tail[104]), 
            .I3(rd_15__N_300), .O(n1126));   // ../stack.v(24[10] 29[6])
    defparam i1085_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1_4_lut_adj_340 (.I0(A_stk_delta[1]), .I1(tail[112]), .I2(tail[96]), 
            .I3(rd_15__N_300), .O(n1127));   // ../tok.v(35[13:24])
    defparam i1_4_lut_adj_340.LUT_INIT = 16'h5044;
    SB_LUT4 i1089_4_lut (.I0(A_stk_delta[1]), .I1(tail[121]), .I2(tail[105]), 
            .I3(rd_15__N_300), .O(n1130));   // ../stack.v(24[10] 29[6])
    defparam i1089_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1092_4_lut (.I0(A_stk_delta[1]), .I1(tail[122]), .I2(tail[106]), 
            .I3(rd_15__N_300), .O(n1133));   // ../stack.v(24[10] 29[6])
    defparam i1092_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1095_4_lut (.I0(A_stk_delta[1]), .I1(tail[123]), .I2(tail[107]), 
            .I3(rd_15__N_300), .O(n1136));   // ../stack.v(24[10] 29[6])
    defparam i1095_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1098_4_lut (.I0(A_stk_delta[1]), .I1(tail[124]), .I2(tail[108]), 
            .I3(rd_15__N_300), .O(n1139));   // ../stack.v(24[10] 29[6])
    defparam i1098_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1101_4_lut (.I0(A_stk_delta[1]), .I1(tail[125]), .I2(tail[109]), 
            .I3(rd_15__N_300), .O(n1142));   // ../stack.v(24[10] 29[6])
    defparam i1101_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1104_4_lut (.I0(A_stk_delta[1]), .I1(tail[126]), .I2(tail[110]), 
            .I3(rd_15__N_300), .O(n1145));   // ../stack.v(24[10] 29[6])
    defparam i1104_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1108_4_lut (.I0(A_stk_delta[1]), .I1(tail[127]), .I2(tail[111]), 
            .I3(rd_15__N_300), .O(n1149));   // ../stack.v(24[10] 29[6])
    defparam i1108_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1114_3_lut (.I0(tc[0]), .I1(n92_adj_897), .I2(stall_), .I3(GND_net), 
            .O(n1155));   // ../tok.v(162[10] 169[10])
    defparam i1114_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1117_4_lut (.I0(C_stk_delta[1]), .I1(tail_adj_913[59]), .I2(tail_adj_913[51]), 
            .I3(rd_7__N_373), .O(n1158));   // ../stack.v(24[10] 29[6])
    defparam i1117_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1375_3_lut (.I0(S[1]), .I1(tail[17]), .I2(A_stk_delta[1]), 
            .I3(GND_net), .O(tailN[1]));   // ../tok.v(35[13:24])
    defparam i1375_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1417_3_lut (.I0(tail[16]), .I1(tail[48]), .I2(A_stk_delta[1]), 
            .I3(GND_net), .O(tailN[32]));   // ../tok.v(35[13:24])
    defparam i1417_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1380_3_lut (.I0(tail[17]), .I1(tail[49]), .I2(A_stk_delta[1]), 
            .I3(GND_net), .O(tailN[33]));   // ../tok.v(35[13:24])
    defparam i1380_3_lut.LUT_INIT = 16'hcaca;
    TOK tok (.GND_net(GND_net), .S({Open_0, Open_1, Open_2, Open_3, 
        Open_4, Open_5, Open_6, Open_7, Open_8, Open_9, Open_10, 
        Open_11, Open_12, Open_13, S[1:0]}), .tc({tc}), .\A_low[7] (A_low[7]), 
        .clk(clk), .stall_(stall_), .\tc_plus_1[1] (tc_plus_1[1]), .\tc_plus_1[0] (tc_plus_1[0]), 
        .n1155(n1155), .reset_c(reset_c), .n1072(n1072), .n1071(n1071), 
        .n1064(n1064), .n5346(n5346), .n5278(n5278), .n5200(n5200), 
        .n5172(n5172), .\A_stk_delta[1] (A_stk_delta[1]), .rd_15__N_300(rd_15__N_300), 
        .n15(n15), .uart_rx_data({uart_rx_data}), .c_stk_r({Open_14, Open_15, 
        Open_16, Open_17, Open_18, Open_19, c_stk_r[1:0]}), .n92(n92_adj_897), 
        .n92_adj_1(n92), .n10(n10_adj_908), .n92_adj_2(n92_adj_898), .n10_adj_3(n10_adj_906), 
        .n10_adj_4(n10_adj_905), .n10_adj_5(n10_adj_907), .n10_adj_6(n10), 
        .rd_7__N_373(rd_7__N_373), .\C_stk_delta[1] (C_stk_delta[1]), .\table_wr_data[0] (table_wr_data[0]), 
        .\table_wr_data[1] (table_wr_data[1]), .txtick(txtick), .n1080(n1080), 
        .capture({capture}), .n1079(n1079), .n1078(n1078), .n1077(n1077), 
        .n1076(n1076), .n1075(n1075), .\sender[2] (sender[2]), .n1154(n1154), 
        .\sender[9] (sender[9]), .n1152(n1152), .\sender[1] (sender[1]), 
        .n1074(n1074), .n1073(n1073), .n974(n974), .bytephase_5__N_509(bytephase_5__N_509), 
        .n1047(n1047), .n1046(n1046), .n1088(n1088), .n1087(n1087), 
        .n1086(n1086), .n1085(n1085), .tx_c(tx_c), .n23(n23), .n1084(n1084), 
        .n1083(n1083), .n1082(n1082), .n1081(n1081), .rx_c(rx_c), .n746(n746), 
        .n4928(n4928), .rx_data_7__N_510(rx_data_7__N_510), .\tailN[0] (tailN_adj_915[0]), 
        .n1158(n1158), .\tail[59] (tail_adj_913[59]), .\tail[51] (tail_adj_913[51]), 
        .\tailN[49] (tailN_adj_915[49]), .\tail[49] (tail_adj_913[49]), 
        .\tailN[48] (tailN_adj_915[48]), .\tail[48] (tail_adj_913[48]), 
        .\tail[41] (tail_adj_913[41]), .\tail[40] (tail_adj_913[40]), .\tailN[33] (tailN_adj_915[33]), 
        .\tailN[32] (tailN_adj_915[32]), .\tail[25] (tail_adj_913[25]), 
        .\tail[24] (tail_adj_913[24]), .\tailN[17] (tailN_adj_915[17]), 
        .\tailN[16] (tailN_adj_915[16]), .\tail[9] (tail_adj_913[9]), .\tail[8] (tail_adj_913[8]), 
        .\tailN[1] (tailN_adj_915[1]), .n1050(n1050), .\tail[56] (tail_adj_913[56]), 
        .n1057(n1057), .\tail[57] (tail_adj_913[57]), .\tailN[0]_adj_7 (tailN[0]), 
        .\tail[111] (tail[111]), .\tail[110] (tail[110]), .\tail[109] (tail[109]), 
        .\tail[108] (tail[108]), .\tail[107] (tail[107]), .\tail[106] (tail[106]), 
        .\tail[105] (tail[105]), .\tail[104] (tail[104]), .\tail[103] (tail[103]), 
        .\tail[102] (tail[102]), .\tail[101] (tail[101]), .\tail[100] (tail[100]), 
        .\tail[99] (tail[99]), .\tail[98] (tail[98]), .\tailN[97] (tailN[97]), 
        .\tail[97] (tail[97]), .\tailN[96] (tailN[96]), .\tail[96] (tail[96]), 
        .\tail[81] (tail[81]), .\tail[80] (tail[80]), .\tailN[65] (tailN[65]), 
        .\tailN[64] (tailN[64]), .\tail[49]_adj_8 (tail[49]), .\tail[48]_adj_9 (tail[48]), 
        .\tailN[33]_adj_10 (tailN[33]), .\tailN[32]_adj_11 (tailN[32]), 
        .\tail[17] (tail[17]), .\tail[16] (tail[16]), .\tailN[1]_adj_12 (tailN[1]), 
        .n1149(n1149), .\tail[127] (tail[127]), .n1145(n1145), .\tail[126] (tail[126]), 
        .n1142(n1142), .\tail[125] (tail[125]), .n1139(n1139), .\tail[124] (tail[124]), 
        .n1136(n1136), .\tail[123] (tail[123]), .n1133(n1133), .\tail[122] (tail[122]), 
        .n1130(n1130), .\tail[121] (tail[121]), .n1127(n1127), .\tail[112] (tail[112]), 
        .n1126(n1126), .\tail[120] (tail[120]), .n1123(n1123), .\tail[119] (tail[119]), 
        .n1120(n1120), .\tail[118] (tail[118]), .n1117(n1117), .\tail[113] (tail[113]), 
        .n1116(n1116), .\tail[117] (tail[117]), .n1113(n1113), .\tail[116] (tail[116]), 
        .n1110(n1110), .\tail[115] (tail[115]), .n1106(n1106), .\tail[114] (tail[114])) /* synthesis syn_module_defined=1 */ ;   // ../lattice_top.v(12[5] 17[2])
    VCC i7043 (.Y(VCC_net));
    
endmodule
//
// Verilog Description of module TOK
//

module TOK (GND_net, S, tc, \A_low[7] , clk, stall_, \tc_plus_1[1] , 
            \tc_plus_1[0] , n1155, reset_c, n1072, n1071, n1064, 
            n5346, n5278, n5200, n5172, \A_stk_delta[1] , rd_15__N_300, 
            n15, uart_rx_data, c_stk_r, n92, n92_adj_1, n10, n92_adj_2, 
            n10_adj_3, n10_adj_4, n10_adj_5, n10_adj_6, rd_7__N_373, 
            \C_stk_delta[1] , \table_wr_data[0] , \table_wr_data[1] , 
            txtick, n1080, capture, n1079, n1078, n1077, n1076, 
            n1075, \sender[2] , n1154, \sender[9] , n1152, \sender[1] , 
            n1074, n1073, n974, bytephase_5__N_509, n1047, n1046, 
            n1088, n1087, n1086, n1085, tx_c, n23, n1084, n1083, 
            n1082, n1081, rx_c, n746, n4928, rx_data_7__N_510, \tailN[0] , 
            n1158, \tail[59] , \tail[51] , \tailN[49] , \tail[49] , 
            \tailN[48] , \tail[48] , \tail[41] , \tail[40] , \tailN[33] , 
            \tailN[32] , \tail[25] , \tail[24] , \tailN[17] , \tailN[16] , 
            \tail[9] , \tail[8] , \tailN[1] , n1050, \tail[56] , n1057, 
            \tail[57] , \tailN[0]_adj_7 , \tail[111] , \tail[110] , 
            \tail[109] , \tail[108] , \tail[107] , \tail[106] , \tail[105] , 
            \tail[104] , \tail[103] , \tail[102] , \tail[101] , \tail[100] , 
            \tail[99] , \tail[98] , \tailN[97] , \tail[97] , \tailN[96] , 
            \tail[96] , \tail[81] , \tail[80] , \tailN[65] , \tailN[64] , 
            \tail[49]_adj_8 , \tail[48]_adj_9 , \tailN[33]_adj_10 , \tailN[32]_adj_11 , 
            \tail[17] , \tail[16] , \tailN[1]_adj_12 , n1149, \tail[127] , 
            n1145, \tail[126] , n1142, \tail[125] , n1139, \tail[124] , 
            n1136, \tail[123] , n1133, \tail[122] , n1130, \tail[121] , 
            n1127, \tail[112] , n1126, \tail[120] , n1123, \tail[119] , 
            n1120, \tail[118] , n1117, \tail[113] , n1116, \tail[117] , 
            n1113, \tail[116] , n1110, \tail[115] , n1106, \tail[114] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output [15:0]S;
    output [7:0]tc;
    output \A_low[7] ;
    input clk;
    output stall_;
    output \tc_plus_1[1] ;
    output \tc_plus_1[0] ;
    input n1155;
    input reset_c;
    input n1072;
    input n1071;
    input n1064;
    input n5346;
    input n5278;
    input n5200;
    input n5172;
    output \A_stk_delta[1] ;
    output rd_15__N_300;
    output n15;
    output [7:0]uart_rx_data;
    output [7:0]c_stk_r;
    output n92;
    output n92_adj_1;
    output n10;
    output n92_adj_2;
    output n10_adj_3;
    output n10_adj_4;
    output n10_adj_5;
    output n10_adj_6;
    output rd_7__N_373;
    output \C_stk_delta[1] ;
    input \table_wr_data[0] ;
    input \table_wr_data[1] ;
    output txtick;
    input n1080;
    output [9:0]capture;
    input n1079;
    input n1078;
    input n1077;
    input n1076;
    input n1075;
    output \sender[2] ;
    input n1154;
    output \sender[9] ;
    input n1152;
    output \sender[1] ;
    input n1074;
    input n1073;
    input n974;
    output bytephase_5__N_509;
    input n1047;
    input n1046;
    input n1088;
    input n1087;
    input n1086;
    input n1085;
    output tx_c;
    output n23;
    input n1084;
    input n1083;
    input n1082;
    input n1081;
    input rx_c;
    output n746;
    output n4928;
    output rx_data_7__N_510;
    input \tailN[0] ;
    input n1158;
    output \tail[59] ;
    output \tail[51] ;
    input \tailN[49] ;
    output \tail[49] ;
    input \tailN[48] ;
    output \tail[48] ;
    output \tail[41] ;
    output \tail[40] ;
    input \tailN[33] ;
    input \tailN[32] ;
    output \tail[25] ;
    output \tail[24] ;
    input \tailN[17] ;
    input \tailN[16] ;
    output \tail[9] ;
    output \tail[8] ;
    input \tailN[1] ;
    input n1050;
    output \tail[56] ;
    input n1057;
    output \tail[57] ;
    input \tailN[0]_adj_7 ;
    output \tail[111] ;
    output \tail[110] ;
    output \tail[109] ;
    output \tail[108] ;
    output \tail[107] ;
    output \tail[106] ;
    output \tail[105] ;
    output \tail[104] ;
    output \tail[103] ;
    output \tail[102] ;
    output \tail[101] ;
    output \tail[100] ;
    output \tail[99] ;
    output \tail[98] ;
    input \tailN[97] ;
    output \tail[97] ;
    input \tailN[96] ;
    output \tail[96] ;
    output \tail[81] ;
    output \tail[80] ;
    input \tailN[65] ;
    input \tailN[64] ;
    output \tail[49]_adj_8 ;
    output \tail[48]_adj_9 ;
    input \tailN[33]_adj_10 ;
    input \tailN[32]_adj_11 ;
    output \tail[17] ;
    output \tail[16] ;
    input \tailN[1]_adj_12 ;
    input n1149;
    output \tail[127] ;
    input n1145;
    output \tail[126] ;
    input n1142;
    output \tail[125] ;
    input n1139;
    output \tail[124] ;
    input n1136;
    output \tail[123] ;
    input n1133;
    output \tail[122] ;
    input n1130;
    output \tail[121] ;
    input n1127;
    output \tail[112] ;
    input n1126;
    output \tail[120] ;
    input n1123;
    output \tail[119] ;
    input n1120;
    output \tail[118] ;
    input n1117;
    output \tail[113] ;
    input n1116;
    output \tail[117] ;
    input n1113;
    output \tail[116] ;
    input n1110;
    output \tail[115] ;
    input n1106;
    output \tail[114] ;
    
    wire clk /* synthesis is_clock=1 */ ;   // ../lattice_top.v(10[6:9])
    wire [7:0]T;   // ../tok.v(31[14:15])
    
    wire n9, n4797;
    wire [7:0]A_low;   // ../tok.v(30[14:19])
    
    wire n4798;
    wire [15:0]n11;
    
    wire VCC_net, n4780;
    wire [7:0]n290;
    wire [7:0]idx;   // ../tok.v(70[26:29])
    
    wire found_slot, n4771, n4772, n4781, n2579;
    wire [7:0]tc_plus_1;   // ../tok.v(98[14:23])
    
    wire n4818, n4779;
    wire [15:0]n292;
    wire [15:0]S_c;   // ../tok.v(34[15:16])
    wire [15:0]n309;
    
    wire n4796, n4817;
    wire [15:0]A;   // ../tok.v(99[14:15])
    wire [8:0]n16;
    
    wire n4816, n4815, n4814, n2598, n4795, n4813, search_clk_N_137, 
        search_clk, reset_N_2;
    wire [7:0]idx_;   // ../tok.v(70[31:35])
    
    wire stall;
    wire [15:0]A_;   // ../tok.v(99[17:19])
    
    wire n992, n27, n5, n6252, n6253, n6203, n2548, n4;
    wire [15:0]table_rd;   // ../tok.v(76[15:23])
    
    wire n203, n7269, n212, n6402, n786, n206;
    wire [15:0]key_rd;   // ../tok.v(77[15:21])
    
    wire n24;
    wire [3:0]depth_;   // ../tok.v(130[20:26])
    wire [3:0]depth;   // ../tok.v(130[13:18])
    
    wire n289, n6397, n6392, n161, n4767, n4768, n4770, n4794, 
        n4812, n4_adj_635, n31, n6400, n197, n4778, n4793, n170, 
        n4_adj_636, n248, n245, n242, n200, n215, n847, n6396, 
        n179, n6390, n821, n6547, n8, n6450, n194, n6, n6546, 
        n23_c, n4792, n12, n796, uart_stall, n31_adj_637, n6170, 
        n30, n22, n23_adj_638, n21, n28, n26, n27_adj_639, n25, 
        n6339, n4811, n83, n18, n4_adj_640, n2702, n6380, n14, 
        n4_adj_641, n4_adj_642, n2532, n20, n6362, n4810, n203_adj_643, 
        n14_adj_644, n26_adj_645, n219, n212_adj_646, n30_adj_647, 
        n4_adj_648, n6670, found_slot_N_144, n6388, n206_adj_649, 
        n6383, n6377, n161_adj_650, n9_adj_651, n6667, n6386, n197_adj_652, 
        n317, n248_adj_653, n242_adj_654, n200_adj_655, n215_adj_656, 
        n6382, n179_adj_657, n6375, n6544, n6_adj_658, n6543, n4809, 
        n4791, n4790, n4808, n4777, n6406, n4807, n4789, n6421, 
        n4806, n6467, n4788, n21_adj_660, n4776, n6437, n4805, 
        n6491, n4787, n13, n6452, n4804, n6515, n4786, n4775, 
        n6466, n4803, n6557, n4785, n6490, n4802, n2613, n127, 
        n4784, n4774, n6514, n4801, n6616, n4783, n4769, n6365, 
        n6556, n4800, n4773, n145, n4782;
    wire [15:0]n275;
    
    wire n4799, n203_adj_664, n212_adj_665, n6373, n206_adj_666, n6368, 
        n161_adj_667, n6371, n197_adj_668, n248_adj_669, n242_adj_670, 
        n200_adj_671, n215_adj_672, n6367, n179_adj_673, n6360, n6541, 
        n6_adj_674, uart_tx_busy, n10_c, uart_stall_N_46, n6540, n222, 
        n865, n866, n5_adj_675, n326, n6_adj_676, n6140, n900, 
        n34, n9_adj_677, n6189, n903, n225_adj_678, n324, n6351, 
        n239_adj_679, n4_adj_680, n238_adj_681, n5_adj_682, n6615, 
        n14_adj_683, n4_adj_684, n15_c, n185, n163, n2635, n8_adj_686, 
        n6_adj_687, n6442, n6341, n274, A_stk_delta_1__N_4, n168, 
        n6344, n6417, n203_adj_688, n212_adj_689, n168_adj_690, n206_adj_691, 
        n6347, n161_adj_692, n6356, n197_adj_693, n248_adj_694, n242_adj_695, 
        n200_adj_696, n215_adj_697, n6346, n179_adj_698, n6337, n6538, 
        n6_adj_699, n6537, n6589, n168_adj_700, n6_adj_701, n4_adj_702;
    wire [3:0]n3;
    
    wire n1, n27_adj_703, n27_adj_704, n27_adj_705, n27_adj_706, n27_adj_707, 
        n27_adj_708, n27_adj_709, n168_adj_710, n208, n6653, n7475, 
        n4_adj_711, n2663, n247, n6508, n838, n6646, n280, n6167, 
        n6639, n6645, n6638, n6644, n260, n4_adj_712, n6650, n5_adj_713, 
        n211, n2637, n6641, n266, n2544, n251, n4_adj_714, n2557, 
        n180, n369, n5_adj_715, n233_adj_716, n269, n260_adj_717, 
        n229, n278, n6637, n6636, n218, n284, n244, n6156, n4_adj_718, 
        n2665, n4_adj_719, n256, n4_adj_720, n221, n311_adj_721, 
        n6425, n164, n741, n6_adj_722, n7451, n209, n6625, n6624, 
        n158, n6628, n6411, n162, n83_adj_723, n6664, n6622, n6621, 
        n237_adj_724, n83_adj_725, n6287, n6620, n6431, n167, n4842, 
        n4_adj_726, n239_adj_727, n6_adj_728, n6627, n197_adj_729, 
        n7458, n179_adj_730, n203_adj_731, n6205, n6183, n270, n200_adj_732, 
        n6632, n7456, n286, n4893, n176, n6_adj_733, n6634, n6532, 
        n83_adj_734, tc__7__N_133, n6283, n2573, n80, n6279, n89, 
        n748, n86, n6291, n80_adj_735, n156, n2700, n89_adj_736, 
        n4925, n236_adj_737, n239_adj_738, n6583, n6593, n6578, 
        n4_adj_739, n6581;
    wire [7:0]c_stk_r_c;   // ../tok.v(56[14:21])
    
    wire n6597, n199, n262, n211_adj_741, n265, n241, n2611, n283, 
        n6580, n6582, n254, n1600, n13_adj_742, n6586, n4926, 
        n226_adj_744, n5_adj_745, n223, n83_adj_746, n241_adj_747, 
        n6301, n367, n277, n6_adj_748, n256_adj_749, n215_adj_750, 
        n80_adj_751, n4_adj_752, n877, n221_adj_753, n6297, n89_adj_754, 
        n83_adj_756, n1565, n6295, n13_adj_757;
    wire [15:0]n196;
    
    wire n83_adj_759, n190, n867, n255, n1530, n6660, n13_adj_760, 
        n4_adj_762, n464, n26_adj_763, n207, n7410, n6572, n6324, 
        n83_adj_764, n6662, n864, n6569, n815, n83_adj_765, n6562, 
        n6567, n186, n177, n833, n6575, n258, n1495, n6435, 
        n13_adj_766, n252, n210, n872, n174_adj_768, n4_adj_769, 
        n338, n205_adj_770, n6612, n6213, n806, n127_adj_772, n10_adj_773, 
        n6146, n190_adj_774, n255_adj_775, n7, n6448, n213, n207_adj_776, 
        write_flag, n6462, n6526, n2679, n6520, n6525, n186_adj_777, 
        n28_adj_778, n177_adj_779, n6534, n258_adj_780, n26_adj_781, 
        n27_adj_782, n252_adj_783, n210_adj_784, n6529, n174_adj_785, 
        n4_adj_786, n338_adj_787, n25_adj_788, n205_adj_789, n6610, 
        n1635, n13_adj_790, n6269;
    wire [7:0]tc_;   // ../tok.v(97[17:20])
    
    wire n39, n190_adj_792, n255_adj_793, n213_adj_795, n207_adj_796, 
        n190_adj_797, n6501, n6502, n6496, n186_adj_798, n177_adj_799;
    wire [15:0]table_wr_data;   // ../tok.v(82[15:28])
    
    wire n6510, n258_adj_800, n252_adj_801, n210_adj_802, n6505, n174_adj_803, 
        n4_adj_804, n338_adj_805, n205_adj_806, n6608, n6273, n6274, 
        n15_adj_807, n17, n255_adj_808, n10_adj_809, n6484, n273, 
        n213_adj_810, n207_adj_811, n6477, n6478, n863, n6472, n186_adj_812, 
        n177_adj_813, n6486, n258_adj_814, n252_adj_815, n210_adj_816, 
        n6481, n174_adj_817, n4_adj_818, n338_adj_819, n205_adj_820, 
        n6606, n37, n2602, n5_adj_821, n2559, n203_adj_822, n206_adj_823, 
        n212_adj_824, n6457, n161_adj_825, n6460, n197_adj_826, n248_adj_827, 
        n242_adj_828, n200_adj_829, n215_adj_830, n6456, n179_adj_831, 
        n6605, n6_adj_832, n6604, n891, uart_rx_valid, n6358, n6440, 
        uart_rd, n203_adj_833, n2, n6162, n206_adj_834, n212_adj_835, 
        n6443, n161_adj_836, n6446, n197_adj_837, n248_adj_838, n242_adj_839, 
        n200_adj_840, n215_adj_841, n179_adj_842, n6433, n6602, n6_adj_843, 
        n6601, n14_adj_844, n20_adj_845, n24_adj_846, n22_adj_847, 
        n23_adj_848, n21_adj_849, n18_adj_850, n26_adj_851, n30_adj_852, 
        n17_adj_853, n8_adj_854, n6331, n238_adj_855, n298_adj_856, 
        n208_adj_857, n6328, n6322, n250, n6326, n2692, write_slot, 
        n7154, n217, n387, n2696, n268, n262_adj_858, n6316, n6315, 
        n281, n6320, n4_adj_859, n394, n254_adj_860, n229_adj_861, 
        n256_adj_862, n6143, n2648, n6334, n236_adj_864, n2600, 
        n226_adj_865, n203_adj_866, n212_adj_867, n6_adj_868, n206_adj_869, 
        n6426, n161_adj_870, n6429, n5_adj_871, n197_adj_872, n248_adj_873, 
        n6404, n242_adj_874, n200_adj_875, n215_adj_876, n179_adj_877, 
        n6419, n6553, n6_adj_878, n6552, n6409, n203_adj_879, n212_adj_880, 
        n206_adj_881, n6412, n161_adj_882, n6415, n197_adj_883, n248_adj_884, 
        n242_adj_885, n200_adj_886, n215_adj_887, n179_adj_888, n6550, 
        n6_adj_889, n6549;
    wire [63:0]tail;   // ../stack.v(16[16:20])
    
    wire n1089, n1090, n1094, n1095;
    wire [63:0]tailN;   // ../stack.v(18[17:22])
    
    wire n1146;
    
    SB_LUT4 T_7__I_0_373_i9_2_lut (.I0(T[0]), .I1(T[1]), .I2(GND_net), 
            .I3(GND_net), .O(n9));   // ../tok.v(74[42:48])
    defparam T_7__I_0_373_i9_2_lut.LUT_INIT = 16'hbbbb;
    SB_CARRY add_103_3 (.CI(n4797), .I0(A_low[1]), .I1(S[1]), .CO(n4798));
    SB_LUT4 sub_99_add_2_9_lut (.I0(A_low[3]), .I1(T[7]), .I2(VCC_net), 
            .I3(n4780), .O(n11[7])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_99_add_2_9_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 idx_7__I_0_7_lut (.I0(idx[5]), .I1(idx[5]), .I2(found_slot), 
            .I3(n4771), .O(n290[5])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_7_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY idx_7__I_0_7 (.CI(n4771), .I0(idx[5]), .I1(found_slot), .CO(n4772));
    SB_CARRY sub_99_add_2_9 (.CI(n4780), .I0(T[7]), .I1(VCC_net), .CO(n4781));
    SB_LUT4 add_103_2_lut (.I0(T[2]), .I1(A_low[0]), .I2(S[0]), .I3(GND_net), 
            .O(n2579)) /* synthesis syn_instantiated=1 */ ;
    defparam add_103_2_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 add_404_9_lut (.I0(GND_net), .I1(tc[7]), .I2(GND_net), .I3(n4818), 
            .O(tc_plus_1[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_404_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_103_2 (.CI(GND_net), .I0(A_low[0]), .I1(S[0]), .CO(n4797));
    SB_LUT4 sub_99_add_2_8_lut (.I0(A_low[2]), .I1(T[6]), .I2(VCC_net), 
            .I3(n4779), .O(n11[6])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_99_add_2_8_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 sub_104_add_2_17_lut (.I0(GND_net), .I1(S_c[15]), .I2(n309[15]), 
            .I3(n4796), .O(n292[15])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_104_add_2_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_404_8_lut (.I0(GND_net), .I1(tc[6]), .I2(GND_net), .I3(n4817), 
            .O(tc_plus_1[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_404_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 or_100_i13_2_lut (.I0(A[8]), .I1(n16[8]), .I2(GND_net), .I3(GND_net), 
            .O(n11[12]));   // ../tok.v(108[40:60])
    defparam or_100_i13_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY add_404_8 (.CI(n4817), .I0(tc[6]), .I1(GND_net), .CO(n4818));
    SB_LUT4 add_404_7_lut (.I0(GND_net), .I1(tc[5]), .I2(GND_net), .I3(n4816), 
            .O(tc_plus_1[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_404_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_404_7 (.CI(n4816), .I0(tc[5]), .I1(GND_net), .CO(n4817));
    SB_LUT4 add_404_6_lut (.I0(GND_net), .I1(tc[4]), .I2(GND_net), .I3(n4815), 
            .O(tc_plus_1[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_404_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_404_6 (.CI(n4815), .I0(tc[4]), .I1(GND_net), .CO(n4816));
    SB_LUT4 add_404_5_lut (.I0(GND_net), .I1(tc[3]), .I2(GND_net), .I3(n4814), 
            .O(tc_plus_1[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_404_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2575_2_lut (.I0(T[7]), .I1(\A_low[7] ), .I2(GND_net), .I3(GND_net), 
            .O(n2598));
    defparam i2575_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY add_404_5 (.CI(n4814), .I0(tc[3]), .I1(GND_net), .CO(n4815));
    SB_LUT4 sub_104_add_2_16_lut (.I0(GND_net), .I1(S_c[14]), .I2(n309[14]), 
            .I3(n4795), .O(n292[14])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_104_add_2_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_404_4_lut (.I0(GND_net), .I1(tc[2]), .I2(GND_net), .I3(n4813), 
            .O(tc_plus_1[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_404_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_104_add_2_16 (.CI(n4795), .I0(S_c[14]), .I1(n309[14]), 
            .CO(n4796));
    SB_DFFR search_clk_359 (.Q(search_clk), .C(clk), .D(search_clk_N_137), 
            .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFR idx_i0 (.Q(idx[0]), .C(clk), .D(idx_[0]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFR stall_361 (.Q(stall), .C(clk), .D(stall_), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFER A_i1 (.Q(A_low[0]), .C(clk), .E(n992), .D(A_[0]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_LUT4 i50_4_lut (.I0(A_low[0]), .I1(n290[0]), .I2(stall), .I3(search_clk), 
            .O(n27));   // ../tok.v(85[5] 92[14])
    defparam i50_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i6119_4_lut (.I0(n5), .I1(n6252), .I2(n6253), .I3(T[6]), 
            .O(n6203));
    defparam i6119_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i6993_4_lut (.I0(n2548), .I1(T[0]), .I2(n4), .I3(T[5]), 
            .O(n6253));   // ../tok.v(85[5] 92[14])
    defparam i6993_4_lut.LUT_INIT = 16'h3011;
    SB_LUT4 i312_4_lut (.I0(table_rd[12]), .I1(n11[12]), .I2(T[0]), .I3(T[1]), 
            .O(n203));   // ../tok.v(106[7] 125[14])
    defparam i312_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_4_lut (.I0(T[2]), .I1(n11[12]), .I2(n203), .I3(n7269), 
            .O(n212));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut.LUT_INIT = 16'hdc50;
    SB_LUT4 i300_4_lut (.I0(n6402), .I1(n309[12]), .I2(T[4]), .I3(n786), 
            .O(n206));   // ../tok.v(106[7] 125[14])
    defparam i300_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i8_4_lut (.I0(key_rd[9]), .I1(key_rd[15]), .I2(A[9]), .I3(A[15]), 
            .O(n24));   // ../tok.v(79[46:59])
    defparam i8_4_lut.LUT_INIT = 16'h7bde;
    SB_DFFR depth_i0 (.Q(depth[0]), .C(clk), .D(depth_[0]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_LUT4 i6903_4_lut (.I0(n206), .I1(n212), .I2(T[2]), .I3(n289), 
            .O(n6397));   // ../tok.v(106[7] 125[14])
    defparam i6903_4_lut.LUT_INIT = 16'ha0ec;
    SB_LUT4 i314_4_lut (.I0(A_low[4]), .I1(n6392), .I2(T[3]), .I3(T[2]), 
            .O(n161));   // ../tok.v(106[7] 125[14])
    defparam i314_4_lut.LUT_INIT = 16'hcac0;
    SB_CARRY idx_7__I_0_2 (.CI(VCC_net), .I0(idx[0]), .I1(found_slot), 
            .CO(n4767));
    SB_LUT4 idx_7__I_0_3_lut (.I0(idx[1]), .I1(idx[1]), .I2(found_slot), 
            .I3(n4767), .O(n290[1])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 idx_7__I_0_4_lut (.I0(idx[2]), .I1(idx[2]), .I2(found_slot), 
            .I3(n4768), .O(n290[2])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 idx_7__I_0_6_lut (.I0(idx[4]), .I1(idx[4]), .I2(found_slot), 
            .I3(n4770), .O(n290[4])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_6_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_404_4 (.CI(n4813), .I0(tc[2]), .I1(GND_net), .CO(n4814));
    SB_LUT4 sub_104_add_2_15_lut (.I0(GND_net), .I1(S_c[13]), .I2(n309[13]), 
            .I3(n4794), .O(n292[13])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_104_add_2_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_104_add_2_15 (.CI(n4794), .I0(S_c[13]), .I1(n309[13]), 
            .CO(n4795));
    SB_LUT4 add_404_3_lut (.I0(GND_net), .I1(tc[1]), .I2(GND_net), .I3(n4812), 
            .O(\tc_plus_1[1] )) /* synthesis syn_instantiated=1 */ ;
    defparam add_404_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i6708_4_lut (.I0(n292[12]), .I1(n4_adj_635), .I2(n31), .I3(T[4]), 
            .O(n6400));   // ../tok.v(106[7] 125[14])
    defparam i6708_4_lut.LUT_INIT = 16'h0c88;
    SB_LUT4 i299_4_lut (.I0(n6400), .I1(n161), .I2(T[1]), .I3(T[4]), 
            .O(n197));   // ../tok.v(106[7] 125[14])
    defparam i299_4_lut.LUT_INIT = 16'h0aca;
    SB_CARRY sub_99_add_2_8 (.CI(n4779), .I0(T[6]), .I1(VCC_net), .CO(n4780));
    SB_CARRY idx_7__I_0_6 (.CI(n4770), .I0(idx[4]), .I1(found_slot), .CO(n4771));
    SB_LUT4 sub_99_add_2_7_lut (.I0(A_low[1]), .I1(T[5]), .I2(GND_net), 
            .I3(n4778), .O(n11[5])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_99_add_2_7_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 sub_104_add_2_14_lut (.I0(GND_net), .I1(S_c[12]), .I2(n309[12]), 
            .I3(n4793), .O(n292[12])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_104_add_2_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_104_add_2_14 (.CI(n4793), .I0(S_c[12]), .I1(n309[12]), 
            .CO(n4794));
    SB_LUT4 i1_4_lut_adj_26 (.I0(S_c[12]), .I1(n197), .I2(n170), .I3(n4_adj_636), 
            .O(n248));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_26.LUT_INIT = 16'heca0;
    SB_LUT4 i308_4_lut (.I0(n6397), .I1(\A_low[7] ), .I2(T[5]), .I3(n245), 
            .O(n242));   // ../tok.v(106[7] 125[14])
    defparam i308_4_lut.LUT_INIT = 16'h3a0a;
    SB_CARRY add_404_3 (.CI(n4812), .I0(tc[1]), .I1(GND_net), .CO(n4813));
    SB_LUT4 i1_4_lut_adj_27 (.I0(T[6]), .I1(T[5]), .I2(n242), .I3(n248), 
            .O(n200));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_27.LUT_INIT = 16'heca0;
    SB_LUT4 i310_4_lut (.I0(A[12]), .I1(n2598), .I2(T[0]), .I3(n289), 
            .O(n215));   // ../tok.v(106[7] 125[14])
    defparam i310_4_lut.LUT_INIT = 16'h303a;
    SB_LUT4 i309_4_lut (.I0(n847), .I1(n6396), .I2(T[4]), .I3(A[12]), 
            .O(n179));   // ../tok.v(106[7] 125[14])
    defparam i309_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i6831_4_lut (.I0(n6390), .I1(n821), .I2(n215), .I3(T[6]), 
            .O(n6547));   // ../tok.v(104[10] 126[8])
    defparam i6831_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i6935_3_lut_4_lut (.I0(A_low[4]), .I1(n8), .I2(T[7]), .I3(T[4]), 
            .O(n6450));   // ../tok.v(107[56:76])
    defparam i6935_3_lut_4_lut.LUT_INIT = 16'h0b00;
    SB_LUT4 i2_4_lut (.I0(A[12]), .I1(T[7]), .I2(n194), .I3(n200), .O(n6));   // ../tok.v(106[7] 125[14])
    defparam i2_4_lut.LUT_INIT = 16'hb3a0;
    SB_LUT4 i6997_4_lut (.I0(n6547), .I1(n179), .I2(T[6]), .I3(T[3]), 
            .O(n6546));   // ../tok.v(104[10] 126[8])
    defparam i6997_4_lut.LUT_INIT = 16'haaae;
    SB_LUT4 A__15__I_0_i13_4_lut (.I0(S_c[12]), .I1(n6546), .I2(n23_c), 
            .I3(n6), .O(A_[12]));   // ../tok.v(104[10] 126[8])
    defparam A__15__I_0_i13_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 sub_104_add_2_13_lut (.I0(GND_net), .I1(S_c[11]), .I2(n309[11]), 
            .I3(n4792), .O(n292[11])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_104_add_2_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_404_2_lut (.I0(GND_net), .I1(tc[0]), .I2(GND_net), .I3(VCC_net), 
            .O(\tc_plus_1[0] )) /* synthesis syn_instantiated=1 */ ;
    defparam add_404_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut (.I0(found_slot), .I1(search_clk), .I2(GND_net), 
            .I3(GND_net), .O(n12));   // ../tok.v(85[5] 92[14])
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i2_4_lut_adj_28 (.I0(n796), .I1(uart_stall), .I2(stall), .I3(n12), 
            .O(stall_));   // ../tok.v(85[5] 92[14])
    defparam i2_4_lut_adj_28.LUT_INIT = 16'heece;
    SB_CARRY add_404_2 (.CI(VCC_net), .I0(tc[0]), .I1(GND_net), .CO(n4812));
    SB_LUT4 i1_4_lut_adj_29 (.I0(stall), .I1(n31_adj_637), .I2(search_clk_N_137), 
            .I3(n6170), .O(n30));   // ../tok.v(85[5] 92[14])
    defparam i1_4_lut_adj_29.LUT_INIT = 16'heeec;
    SB_LUT4 i6_4_lut (.I0(key_rd[2]), .I1(key_rd[7]), .I2(A_low[2]), .I3(\A_low[7] ), 
            .O(n22));   // ../tok.v(79[46:59])
    defparam i6_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut (.I0(key_rd[11]), .I1(key_rd[14]), .I2(A[11]), .I3(A[14]), 
            .O(n23_adj_638));   // ../tok.v(79[46:59])
    defparam i7_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i5_4_lut (.I0(key_rd[10]), .I1(key_rd[12]), .I2(A[10]), .I3(A[12]), 
            .O(n21));   // ../tok.v(79[46:59])
    defparam i5_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut (.I0(key_rd[11]), .I1(key_rd[9]), .I2(key_rd[14]), 
            .I3(key_rd[15]), .O(n28));   // ../tok.v(78[61:74])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut (.I0(key_rd[8]), .I1(key_rd[3]), .I2(key_rd[13]), 
            .I3(key_rd[5]), .O(n26));   // ../tok.v(78[61:74])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut (.I0(key_rd[10]), .I1(key_rd[2]), .I2(key_rd[12]), 
            .I3(key_rd[7]), .O(n27_adj_639));   // ../tok.v(78[61:74])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(key_rd[0]), .I1(key_rd[1]), .I2(key_rd[6]), 
            .I3(key_rd[4]), .O(n25));   // ../tok.v(78[61:74])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFER A_i16 (.Q(A[15]), .C(clk), .E(n992), .D(A_[15]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFER A_i15 (.Q(A[14]), .C(clk), .E(n992), .D(A_[14]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFER A_i14 (.Q(A[13]), .C(clk), .E(n992), .D(A_[13]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFER A_i13 (.Q(A[12]), .C(clk), .E(n992), .D(A_[12]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFER A_i12 (.Q(A[11]), .C(clk), .E(n992), .D(A_[11]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFER A_i11 (.Q(A[10]), .C(clk), .E(n992), .D(A_[10]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_LUT4 i1_4_lut_adj_30 (.I0(n27), .I1(idx[0]), .I2(n796), .I3(n30), 
            .O(idx_[0]));   // ../tok.v(85[5] 92[14])
    defparam i1_4_lut_adj_30.LUT_INIT = 16'heca0;
    SB_LUT4 add_103_17_lut (.I0(n83), .I1(A[15]), .I2(S_c[15]), .I3(n4811), 
            .O(n6339)) /* synthesis syn_instantiated=1 */ ;
    defparam add_103_17_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i2_4_lut_adj_31 (.I0(key_rd[1]), .I1(key_rd[4]), .I2(A_low[1]), 
            .I3(A_low[4]), .O(n18));   // ../tok.v(79[46:59])
    defparam i2_4_lut_adj_31.LUT_INIT = 16'h7bde;
    SB_DFFS tc_i0 (.Q(tc[0]), .C(clk), .D(n1155), .S(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_LUT4 reset_I_0_1_lut (.I0(reset_c), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(reset_N_2));   // ../tok.v(154[9:15])
    defparam reset_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_DFFS tc_i1 (.Q(tc[1]), .C(clk), .D(n1072), .S(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFS tc_i2 (.Q(tc[2]), .C(clk), .D(n1071), .S(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_LUT4 or_100_i14_2_lut (.I0(A[9]), .I1(n16[8]), .I2(GND_net), .I3(GND_net), 
            .O(n11[13]));   // ../tok.v(108[40:60])
    defparam or_100_i14_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 inv_105_i15_1_lut (.I0(A[14]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n309[14]));   // ../tok.v(114[20:22])
    defparam inv_105_i15_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_adj_32 (.I0(T[6]), .I1(T[4]), .I2(GND_net), .I3(GND_net), 
            .O(n4_adj_640));   // ../tok.v(74[24:30])
    defparam i1_2_lut_adj_32.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_33 (.I0(n2702), .I1(uart_stall), .I2(GND_net), 
            .I3(GND_net), .O(n6170));   // ../tok.v(85[5] 92[14])
    defparam i1_2_lut_adj_33.LUT_INIT = 16'heeee;
    SB_LUT4 i6895_2_lut (.I0(A[8]), .I1(T[7]), .I2(GND_net), .I3(GND_net), 
            .O(n6380));   // ../tok.v(106[7] 125[14])
    defparam i6895_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i6118_3_lut (.I0(n14), .I1(n4_adj_641), .I2(n4_adj_642), .I3(GND_net), 
            .O(n2532));
    defparam i6118_3_lut.LUT_INIT = 16'heaea;
    SB_DFFER A_i10 (.Q(A[9]), .C(clk), .E(n992), .D(A_[9]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_LUT4 i4_4_lut (.I0(key_rd[3]), .I1(key_rd[5]), .I2(A_low[3]), .I3(A_low[5]), 
            .O(n20));   // ../tok.v(79[46:59])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 search_clk_I_0_1_lut (.I0(search_clk), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(search_clk_N_137));   // ../tok.v(166[21:32])
    defparam search_clk_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_DFFER A_i9 (.Q(A[8]), .C(clk), .E(n992), .D(A_[8]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFER A_i8 (.Q(\A_low[7] ), .C(clk), .E(n992), .D(A_[7]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFER A_i7 (.Q(A_low[6]), .C(clk), .E(n992), .D(A_[6]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFER A_i6 (.Q(A_low[5]), .C(clk), .E(n992), .D(A_[5]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFS tc_i3 (.Q(tc[3]), .C(clk), .D(n1064), .S(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_LUT4 i335_rep_143_2_lut (.I0(T[0]), .I1(T[1]), .I2(GND_net), .I3(GND_net), 
            .O(n7269));   // ../tok.v(106[7] 125[14])
    defparam i335_rep_143_2_lut.LUT_INIT = 16'h6666;
    SB_DFFER A_i5 (.Q(A_low[4]), .C(clk), .E(n992), .D(A_[4]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFER A_i4 (.Q(A_low[3]), .C(clk), .E(n992), .D(A_[3]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFER A_i3 (.Q(A_low[2]), .C(clk), .E(n992), .D(A_[2]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_LUT4 add_103_16_lut (.I0(n83), .I1(A[14]), .I2(S_c[14]), .I3(n4810), 
            .O(n6362)) /* synthesis syn_instantiated=1 */ ;
    defparam add_103_16_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i312_4_lut_adj_34 (.I0(table_rd[13]), .I1(n11[13]), .I2(T[0]), 
            .I3(T[1]), .O(n203_adj_643));   // ../tok.v(106[7] 125[14])
    defparam i312_4_lut_adj_34.LUT_INIT = 16'hc0ca;
    SB_DFFER A_i2 (.Q(A_low[1]), .C(clk), .E(n992), .D(A_[1]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFR idx_i7 (.Q(idx[7]), .C(clk), .D(idx_[7]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFR idx_i6 (.Q(idx[6]), .C(clk), .D(idx_[6]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_LUT4 i10_4_lut_adj_35 (.I0(key_rd[8]), .I1(n20), .I2(n14_adj_644), 
            .I3(A[8]), .O(n26_adj_645));   // ../tok.v(79[46:59])
    defparam i10_4_lut_adj_35.LUT_INIT = 16'hfdfe;
    SB_LUT4 inv_105_i16_1_lut (.I0(A[15]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n309[15]));   // ../tok.v(114[20:22])
    defparam inv_105_i16_1_lut.LUT_INIT = 16'h5555;
    SB_DFFS tc_i4 (.Q(tc[4]), .C(clk), .D(n5346), .S(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFS tc_i5 (.Q(tc[5]), .C(clk), .D(n5278), .S(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFS tc_i6 (.Q(tc[6]), .C(clk), .D(n5200), .S(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFS tc_i7 (.Q(tc[7]), .C(clk), .D(n5172), .S(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_LUT4 i1_2_lut_adj_36 (.I0(T[2]), .I1(T[1]), .I2(GND_net), .I3(GND_net), 
            .O(n219));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_adj_36.LUT_INIT = 16'heeee;
    SB_DFFR idx_i5 (.Q(idx[5]), .C(clk), .D(idx_[5]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFR idx_i4 (.Q(idx[4]), .C(clk), .D(idx_[4]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_LUT4 i1_4_lut_adj_37 (.I0(T[2]), .I1(n11[13]), .I2(n203_adj_643), 
            .I3(n7269), .O(n212_adj_646));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_37.LUT_INIT = 16'hdc50;
    SB_DFFR idx_i3 (.Q(idx[3]), .C(clk), .D(idx_[3]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_LUT4 i14_4_lut (.I0(n21), .I1(n23_adj_638), .I2(n22), .I3(n24), 
            .O(n30_adj_647));   // ../tok.v(79[46:59])
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 key_rd_15__I_0_401_i14_2_lut (.I0(key_rd[13]), .I1(A[13]), .I2(GND_net), 
            .I3(GND_net), .O(n14_adj_644));   // ../tok.v(79[46:59])
    defparam key_rd_15__I_0_401_i14_2_lut.LUT_INIT = 16'h6666;
    SB_DFFR idx_i2 (.Q(idx[2]), .C(clk), .D(idx_[2]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFR idx_i1 (.Q(idx[1]), .C(clk), .D(idx_[1]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFR depth_i3 (.Q(depth[3]), .C(clk), .D(depth_[3]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFR depth_i2 (.Q(depth[2]), .C(clk), .D(depth_[2]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_DFFR depth_i1 (.Q(depth[1]), .C(clk), .D(depth_[1]), .R(reset_N_2));   // ../tok.v(162[10] 169[10])
    SB_LUT4 i1_2_lut_adj_38 (.I0(T[0]), .I1(T[1]), .I2(GND_net), .I3(GND_net), 
            .O(n4_adj_648));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_adj_38.LUT_INIT = 16'h8888;
    SB_LUT4 i7002_4_lut (.I0(key_rd[0]), .I1(key_rd[6]), .I2(A_low[0]), 
            .I3(A_low[6]), .O(n6670));   // ../tok.v(78[22] 79[76])
    defparam i7002_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i15_4_lut (.I0(n25), .I1(n27_adj_639), .I2(n26), .I3(n28), 
            .O(found_slot_N_144));   // ../tok.v(78[61:74])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i300_4_lut_adj_39 (.I0(n6388), .I1(n309[13]), .I2(T[4]), .I3(n786), 
            .O(n206_adj_649));   // ../tok.v(106[7] 125[14])
    defparam i300_4_lut_adj_39.LUT_INIT = 16'hca0a;
    SB_LUT4 i6897_4_lut (.I0(n206_adj_649), .I1(n212_adj_646), .I2(T[2]), 
            .I3(n289), .O(n6383));   // ../tok.v(106[7] 125[14])
    defparam i6897_4_lut.LUT_INIT = 16'ha0ec;
    SB_LUT4 i314_4_lut_adj_40 (.I0(A_low[5]), .I1(n6377), .I2(T[3]), .I3(T[2]), 
            .O(n161_adj_650));   // ../tok.v(106[7] 125[14])
    defparam i314_4_lut_adj_40.LUT_INIT = 16'hcac0;
    SB_LUT4 stall_I_0_369_i11_2_lut (.I0(T[0]), .I1(T[1]), .I2(GND_net), 
            .I3(GND_net), .O(n9_adj_651));   // ../tok.v(46[7:20])
    defparam stall_I_0_369_i11_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i6974_4_lut (.I0(n6670), .I1(n30_adj_647), .I2(n26_adj_645), 
            .I3(n18), .O(n6667));   // ../tok.v(78[22] 79[76])
    defparam i6974_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_41 (.I0(stall), .I1(n2532), .I2(n6667), .I3(found_slot_N_144), 
            .O(found_slot));   // ../tok.v(78[22] 79[76])
    defparam i1_4_lut_adj_41.LUT_INIT = 16'h0a22;
    SB_CARRY sub_104_add_2_13 (.CI(n4792), .I0(S_c[11]), .I1(n309[11]), 
            .CO(n4793));
    SB_LUT4 i6699_4_lut (.I0(n292[13]), .I1(n4_adj_635), .I2(n31), .I3(T[4]), 
            .O(n6386));   // ../tok.v(106[7] 125[14])
    defparam i6699_4_lut.LUT_INIT = 16'h0c88;
    SB_LUT4 i299_4_lut_adj_42 (.I0(n6386), .I1(n161_adj_650), .I2(T[1]), 
            .I3(T[4]), .O(n197_adj_652));   // ../tok.v(106[7] 125[14])
    defparam i299_4_lut_adj_42.LUT_INIT = 16'h0aca;
    SB_LUT4 i271_2_lut (.I0(T[5]), .I1(T[4]), .I2(GND_net), .I3(GND_net), 
            .O(n317));
    defparam i271_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_43 (.I0(S_c[13]), .I1(n197_adj_652), .I2(n170), 
            .I3(n4_adj_636), .O(n248_adj_653));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_43.LUT_INIT = 16'heca0;
    SB_LUT4 i308_4_lut_adj_44 (.I0(n6383), .I1(n245), .I2(T[5]), .I3(A[8]), 
            .O(n242_adj_654));   // ../tok.v(106[7] 125[14])
    defparam i308_4_lut_adj_44.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_45 (.I0(T[6]), .I1(T[5]), .I2(n242_adj_654), 
            .I3(n248_adj_653), .O(n200_adj_655));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_45.LUT_INIT = 16'heca0;
    SB_LUT4 i310_4_lut_adj_46 (.I0(A[13]), .I1(n6380), .I2(T[0]), .I3(n289), 
            .O(n215_adj_656));   // ../tok.v(106[7] 125[14])
    defparam i310_4_lut_adj_46.LUT_INIT = 16'hc0ca;
    SB_LUT4 i309_4_lut_adj_47 (.I0(n847), .I1(n6382), .I2(T[4]), .I3(A[13]), 
            .O(n179_adj_657));   // ../tok.v(106[7] 125[14])
    defparam i309_4_lut_adj_47.LUT_INIT = 16'hcac0;
    SB_LUT4 i6745_4_lut (.I0(n6375), .I1(n821), .I2(n215_adj_656), .I3(T[6]), 
            .O(n6544));   // ../tok.v(104[10] 126[8])
    defparam i6745_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i2_4_lut_adj_48 (.I0(A[13]), .I1(T[7]), .I2(n194), .I3(n200_adj_655), 
            .O(n6_adj_658));   // ../tok.v(106[7] 125[14])
    defparam i2_4_lut_adj_48.LUT_INIT = 16'hb3a0;
    SB_CARRY add_103_16 (.CI(n4810), .I0(A[14]), .I1(S_c[14]), .CO(n4811));
    SB_LUT4 i6980_4_lut (.I0(n6544), .I1(n179_adj_657), .I2(T[6]), .I3(T[3]), 
            .O(n6543));   // ../tok.v(104[10] 126[8])
    defparam i6980_4_lut.LUT_INIT = 16'haaae;
    SB_LUT4 A__15__I_0_i14_4_lut (.I0(S_c[13]), .I1(n6543), .I2(n23_c), 
            .I3(n6_adj_658), .O(A_[13]));   // ../tok.v(104[10] 126[8])
    defparam A__15__I_0_i14_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i1_2_lut_adj_49 (.I0(T[4]), .I1(T[3]), .I2(GND_net), .I3(GND_net), 
            .O(n289));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_adj_49.LUT_INIT = 16'heeee;
    SB_LUT4 add_103_15_lut (.I0(n83), .I1(A[13]), .I2(S_c[13]), .I3(n4809), 
            .O(n6377)) /* synthesis syn_instantiated=1 */ ;
    defparam add_103_15_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_104_add_2_12_lut (.I0(GND_net), .I1(S_c[10]), .I2(n309[10]), 
            .I3(n4791), .O(n292[10])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_104_add_2_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_99_add_2_7 (.CI(n4778), .I0(T[5]), .I1(GND_net), .CO(n4779));
    SB_CARRY add_103_15 (.CI(n4809), .I0(A[13]), .I1(S_c[13]), .CO(n4810));
    SB_CARRY sub_104_add_2_12 (.CI(n4791), .I0(S_c[10]), .I1(n309[10]), 
            .CO(n4792));
    SB_LUT4 sub_104_add_2_11_lut (.I0(GND_net), .I1(S_c[9]), .I2(n309[9]), 
            .I3(n4790), .O(n292[9])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_104_add_2_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_103_14_lut (.I0(n83), .I1(A[12]), .I2(S_c[12]), .I3(n4808), 
            .O(n6392)) /* synthesis syn_instantiated=1 */ ;
    defparam add_103_14_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_99_add_2_6_lut (.I0(A_low[0]), .I1(T[4]), .I2(GND_net), 
            .I3(n4777), .O(n11[4])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_99_add_2_6_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_104_add_2_11 (.CI(n4790), .I0(S_c[9]), .I1(n309[9]), 
            .CO(n4791));
    SB_CARRY add_103_14 (.CI(n4808), .I0(A[12]), .I1(S_c[12]), .CO(n4809));
    SB_LUT4 add_103_13_lut (.I0(n83), .I1(A[11]), .I2(S_c[11]), .I3(n4807), 
            .O(n6406)) /* synthesis syn_instantiated=1 */ ;
    defparam add_103_13_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_104_add_2_10_lut (.I0(GND_net), .I1(S_c[8]), .I2(n309[8]), 
            .I3(n4789), .O(n292[8])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_104_add_2_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_99_add_2_6 (.CI(n4777), .I0(T[4]), .I1(GND_net), .CO(n4778));
    SB_CARRY sub_104_add_2_10 (.CI(n4789), .I0(S_c[8]), .I1(n309[8]), 
            .CO(n4790));
    SB_CARRY add_103_13 (.CI(n4807), .I0(A[11]), .I1(S_c[11]), .CO(n4808));
    SB_LUT4 add_103_12_lut (.I0(n83), .I1(A[10]), .I2(S_c[10]), .I3(n4806), 
            .O(n6421)) /* synthesis syn_instantiated=1 */ ;
    defparam add_103_12_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_104_add_2_9_lut (.I0(n21_adj_660), .I1(S_c[7]), .I2(n309[7]), 
            .I3(n4788), .O(n6467)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_104_add_2_9_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_99_add_2_5_lut (.I0(GND_net), .I1(T[3]), .I2(VCC_net), 
            .I3(n4776), .O(n11[3])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_99_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_104_add_2_9 (.CI(n4788), .I0(S_c[7]), .I1(n309[7]), .CO(n4789));
    SB_CARRY add_103_12 (.CI(n4806), .I0(A[10]), .I1(S_c[10]), .CO(n4807));
    SB_LUT4 add_103_11_lut (.I0(n83), .I1(A[9]), .I2(S_c[9]), .I3(n4805), 
            .O(n6437)) /* synthesis syn_instantiated=1 */ ;
    defparam add_103_11_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_104_add_2_8_lut (.I0(n21_adj_660), .I1(S_c[6]), .I2(n309[6]), 
            .I3(n4787), .O(n6491)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_104_add_2_8_lut.LUT_INIT = 16'h8228;
    SB_CARRY sub_99_add_2_5 (.CI(n4776), .I0(T[3]), .I1(VCC_net), .CO(n4777));
    SB_CARRY sub_104_add_2_8 (.CI(n4787), .I0(S_c[6]), .I1(n309[6]), .CO(n4788));
    SB_CARRY add_103_11 (.CI(n4805), .I0(A[9]), .I1(S_c[9]), .CO(n4806));
    SB_LUT4 idx_7__I_0_2_lut (.I0(idx[0]), .I1(idx[0]), .I2(found_slot), 
            .I3(VCC_net), .O(n290[0])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_2_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 or_100_i15_2_lut (.I0(A[10]), .I1(n16[8]), .I2(GND_net), .I3(GND_net), 
            .O(n11[14]));   // ../tok.v(108[40:60])
    defparam or_100_i15_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 T_7__I_0_375_i13_2_lut (.I0(T[6]), .I1(T[7]), .I2(GND_net), 
            .I3(GND_net), .O(n13));   // ../tok.v(74[33:39])
    defparam T_7__I_0_375_i13_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 add_103_10_lut (.I0(n83), .I1(A[8]), .I2(S_c[8]), .I3(n4804), 
            .O(n6452)) /* synthesis syn_instantiated=1 */ ;
    defparam add_103_10_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_104_add_2_7_lut (.I0(n21_adj_660), .I1(S_c[5]), .I2(n309[5]), 
            .I3(n4786), .O(n6515)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_104_add_2_7_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_99_add_2_4_lut (.I0(GND_net), .I1(T[2]), .I2(GND_net), 
            .I3(n4775), .O(n11[2])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_99_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_104_add_2_7 (.CI(n4786), .I0(S_c[5]), .I1(n309[5]), .CO(n4787));
    SB_CARRY add_103_10 (.CI(n4804), .I0(A[8]), .I1(S_c[8]), .CO(n4805));
    SB_LUT4 add_103_9_lut (.I0(T[1]), .I1(\A_low[7] ), .I2(S_c[7]), .I3(n4803), 
            .O(n6466)) /* synthesis syn_instantiated=1 */ ;
    defparam add_103_9_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_104_add_2_6_lut (.I0(n21_adj_660), .I1(S_c[4]), .I2(n309[4]), 
            .I3(n4785), .O(n6557)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_104_add_2_6_lut.LUT_INIT = 16'h8228;
    SB_CARRY sub_99_add_2_4 (.CI(n4775), .I0(T[2]), .I1(GND_net), .CO(n4776));
    SB_CARRY sub_104_add_2_6 (.CI(n4785), .I0(S_c[4]), .I1(n309[4]), .CO(n4786));
    SB_CARRY add_103_9 (.CI(n4803), .I0(\A_low[7] ), .I1(S_c[7]), .CO(n4804));
    SB_LUT4 add_103_8_lut (.I0(T[1]), .I1(A_low[6]), .I2(S_c[6]), .I3(n4802), 
            .O(n6490)) /* synthesis syn_instantiated=1 */ ;
    defparam add_103_8_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_104_add_2_5_lut (.I0(T[1]), .I1(S_c[3]), .I2(n127), .I3(n4784), 
            .O(n2613)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_104_add_2_5_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 sub_99_add_2_3_lut (.I0(GND_net), .I1(T[1]), .I2(GND_net), 
            .I3(n4774), .O(n11[1])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_99_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_99_add_2_3 (.CI(n4774), .I0(T[1]), .I1(GND_net), .CO(n4775));
    SB_CARRY sub_104_add_2_5 (.CI(n4784), .I0(S_c[3]), .I1(n127), .CO(n4785));
    SB_CARRY add_103_8 (.CI(n4802), .I0(A_low[6]), .I1(S_c[6]), .CO(n4803));
    SB_LUT4 add_103_7_lut (.I0(T[1]), .I1(A_low[5]), .I2(S_c[5]), .I3(n4801), 
            .O(n6514)) /* synthesis syn_instantiated=1 */ ;
    defparam add_103_7_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_104_add_2_4_lut (.I0(T[2]), .I1(S_c[2]), .I2(n309[2]), 
            .I3(n4783), .O(n6616)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_104_add_2_4_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_99_add_2_2_lut (.I0(GND_net), .I1(T[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n11[0])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_99_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 idx_7__I_0_5_lut (.I0(idx[3]), .I1(idx[3]), .I2(found_slot), 
            .I3(n4769), .O(n290[3])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_5_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i6888_2_lut (.I0(A[9]), .I1(T[7]), .I2(GND_net), .I3(GND_net), 
            .O(n6365));   // ../tok.v(106[7] 125[14])
    defparam i6888_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY idx_7__I_0_5 (.CI(n4769), .I0(idx[3]), .I1(found_slot), .CO(n4770));
    SB_CARRY sub_99_add_2_2 (.CI(VCC_net), .I0(T[0]), .I1(GND_net), .CO(n4774));
    SB_CARRY sub_104_add_2_4 (.CI(n4783), .I0(S_c[2]), .I1(n309[2]), .CO(n4784));
    SB_CARRY add_103_7 (.CI(n4801), .I0(A_low[5]), .I1(S_c[5]), .CO(n4802));
    SB_LUT4 add_103_6_lut (.I0(T[1]), .I1(A_low[4]), .I2(S_c[4]), .I3(n4800), 
            .O(n6556)) /* synthesis syn_instantiated=1 */ ;
    defparam add_103_6_lut.LUT_INIT = 16'h8228;
    SB_LUT4 idx_7__I_0_9_lut (.I0(idx[7]), .I1(idx[7]), .I2(found_slot), 
            .I3(n4773), .O(n290[7])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_9_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY idx_7__I_0_3 (.CI(n4767), .I0(idx[1]), .I1(found_slot), .CO(n4768));
    SB_LUT4 sub_104_add_2_3_lut (.I0(GND_net), .I1(S[1]), .I2(n145), .I3(n4782), 
            .O(n292[1])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_104_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_103_6 (.CI(n4800), .I0(A_low[4]), .I1(S_c[4]), .CO(n4801));
    SB_LUT4 add_103_5_lut (.I0(GND_net), .I1(A_low[3]), .I2(S_c[3]), .I3(n4799), 
            .O(n275[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_103_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 idx_7__I_0_8_lut (.I0(idx[6]), .I1(idx[6]), .I2(found_slot), 
            .I3(n4772), .O(n290[6])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_8_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i312_4_lut_adj_50 (.I0(table_rd[14]), .I1(n11[14]), .I2(T[0]), 
            .I3(T[1]), .O(n203_adj_664));   // ../tok.v(106[7] 125[14])
    defparam i312_4_lut_adj_50.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_4_lut_adj_51 (.I0(T[2]), .I1(n11[14]), .I2(n203_adj_664), 
            .I3(n7269), .O(n212_adj_665));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_51.LUT_INIT = 16'hdc50;
    SB_LUT4 i300_4_lut_adj_52 (.I0(n6373), .I1(n309[14]), .I2(T[4]), .I3(n786), 
            .O(n206_adj_666));   // ../tok.v(106[7] 125[14])
    defparam i300_4_lut_adj_52.LUT_INIT = 16'hca0a;
    SB_LUT4 i6890_4_lut (.I0(n206_adj_666), .I1(n212_adj_665), .I2(T[2]), 
            .I3(n289), .O(n6368));   // ../tok.v(106[7] 125[14])
    defparam i6890_4_lut.LUT_INIT = 16'ha0ec;
    SB_LUT4 i314_4_lut_adj_53 (.I0(A_low[6]), .I1(n6362), .I2(T[3]), .I3(T[2]), 
            .O(n161_adj_667));   // ../tok.v(106[7] 125[14])
    defparam i314_4_lut_adj_53.LUT_INIT = 16'hcac0;
    SB_LUT4 i6688_4_lut (.I0(n292[14]), .I1(n4_adj_635), .I2(n31), .I3(T[4]), 
            .O(n6371));   // ../tok.v(106[7] 125[14])
    defparam i6688_4_lut.LUT_INIT = 16'h0c88;
    SB_LUT4 i299_4_lut_adj_54 (.I0(n6371), .I1(n161_adj_667), .I2(T[1]), 
            .I3(T[4]), .O(n197_adj_668));   // ../tok.v(106[7] 125[14])
    defparam i299_4_lut_adj_54.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_55 (.I0(S_c[14]), .I1(n197_adj_668), .I2(n170), 
            .I3(n4_adj_636), .O(n248_adj_669));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_55.LUT_INIT = 16'heca0;
    SB_LUT4 i308_4_lut_adj_56 (.I0(n6368), .I1(n245), .I2(T[5]), .I3(A[9]), 
            .O(n242_adj_670));   // ../tok.v(106[7] 125[14])
    defparam i308_4_lut_adj_56.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_57 (.I0(T[6]), .I1(T[5]), .I2(n242_adj_670), 
            .I3(n248_adj_669), .O(n200_adj_671));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_57.LUT_INIT = 16'heca0;
    SB_CARRY sub_104_add_2_3 (.CI(n4782), .I0(S[1]), .I1(n145), .CO(n4783));
    SB_CARRY add_103_5 (.CI(n4799), .I0(A_low[3]), .I1(S_c[3]), .CO(n4800));
    SB_LUT4 i310_4_lut_adj_58 (.I0(A[14]), .I1(n6365), .I2(T[0]), .I3(n289), 
            .O(n215_adj_672));   // ../tok.v(106[7] 125[14])
    defparam i310_4_lut_adj_58.LUT_INIT = 16'hc0ca;
    SB_LUT4 i309_4_lut_adj_59 (.I0(n847), .I1(n6367), .I2(T[4]), .I3(A[14]), 
            .O(n179_adj_673));   // ../tok.v(106[7] 125[14])
    defparam i309_4_lut_adj_59.LUT_INIT = 16'hcac0;
    SB_LUT4 i6772_4_lut (.I0(n6360), .I1(n821), .I2(n215_adj_672), .I3(T[6]), 
            .O(n6541));   // ../tok.v(104[10] 126[8])
    defparam i6772_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i2_4_lut_adj_60 (.I0(A[14]), .I1(T[7]), .I2(n194), .I3(n200_adj_671), 
            .O(n6_adj_674));   // ../tok.v(106[7] 125[14])
    defparam i2_4_lut_adj_60.LUT_INIT = 16'hb3a0;
    SB_LUT4 i3_4_lut (.I0(uart_tx_busy), .I1(n9), .I2(n10_c), .I3(n14), 
            .O(uart_stall_N_46));
    defparam i3_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 i6847_4_lut (.I0(n6541), .I1(n179_adj_673), .I2(T[6]), .I3(T[3]), 
            .O(n6540));   // ../tok.v(104[10] 126[8])
    defparam i6847_4_lut.LUT_INIT = 16'haaae;
    SB_LUT4 A__15__I_0_i15_4_lut (.I0(S_c[14]), .I1(n6540), .I2(n23_c), 
            .I3(n6_adj_674), .O(A_[14]));   // ../tok.v(104[10] 126[8])
    defparam A__15__I_0_i15_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(T[7]), .I1(n222), .I2(T[6]), .I3(A_low[1]), 
            .O(n865));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'h0440;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_61 (.I0(T[7]), .I1(n222), .I2(T[5]), 
            .I3(A_low[0]), .O(n866));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_3_lut_4_lut_adj_61.LUT_INIT = 16'h0440;
    SB_LUT4 i6631_4_lut (.I0(T[3]), .I1(n5_adj_675), .I2(T[0]), .I3(n219), 
            .O(n6252));   // ../tok.v(85[5] 92[14])
    defparam i6631_4_lut.LUT_INIT = 16'h0048;
    SB_LUT4 i2_2_lut (.I0(T[3]), .I1(T[2]), .I2(GND_net), .I3(GND_net), 
            .O(n4_adj_635));   // ../tok.v(106[7] 125[14])
    defparam i2_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_3_lut (.I0(n326), .I1(T[4]), .I2(n6_adj_676), .I3(GND_net), 
            .O(n6140));   // ../tok.v(106[7] 125[14])
    defparam i1_3_lut.LUT_INIT = 16'haeae;
    SB_LUT4 i1_4_lut_adj_62 (.I0(T[7]), .I1(T[5]), .I2(T[6]), .I3(n6140), 
            .O(n900));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_62.LUT_INIT = 16'hbbab;
    SB_LUT4 i2541_2_lut_4_lut (.I0(n34), .I1(n9_adj_677), .I2(n6189), 
            .I3(n903), .O(\A_stk_delta[1] ));   // ../tok.v(39[5] 49[14])
    defparam i2541_2_lut_4_lut.LUT_INIT = 16'h0800;
    SB_LUT4 i1_3_lut_adj_63 (.I0(T[6]), .I1(T[2]), .I2(T[0]), .I3(GND_net), 
            .O(n225_adj_678));   // ../tok.v(106[7] 125[14])
    defparam i1_3_lut_adj_63.LUT_INIT = 16'h4545;
    SB_LUT4 i303_4_lut (.I0(T[6]), .I1(T[0]), .I2(T[4]), .I3(T[2]), 
            .O(n324));   // ../tok.v(106[7] 125[14])
    defparam i303_4_lut.LUT_INIT = 16'hb005;
    SB_LUT4 i307_4_lut (.I0(n324), .I1(n6351), .I2(T[1]), .I3(T[5]), 
            .O(n239_adj_679));   // ../tok.v(106[7] 125[14])
    defparam i307_4_lut.LUT_INIT = 16'hcacf;
    SB_LUT4 i1_4_lut_adj_64 (.I0(T[0]), .I1(T[2]), .I2(n4_adj_680), .I3(n4_adj_640), 
            .O(n238_adj_681));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_64.LUT_INIT = 16'h5054;
    SB_LUT4 i1_4_lut_adj_65 (.I0(n900), .I1(n238_adj_681), .I2(T[3]), 
            .I3(n239_adj_679), .O(n194));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_65.LUT_INIT = 16'hfeee;
    SB_LUT4 i426_2_lut_4_lut (.I0(n34), .I1(n9_adj_677), .I2(n6189), .I3(n903), 
            .O(rd_15__N_300));   // ../tok.v(39[5] 49[14])
    defparam i426_2_lut_4_lut.LUT_INIT = 16'h08ff;
    SB_LUT4 i1_2_lut_adj_66 (.I0(T[0]), .I1(T[2]), .I2(GND_net), .I3(GND_net), 
            .O(n5_adj_682));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_adj_66.LUT_INIT = 16'h2222;
    SB_LUT4 add_103_4_lut (.I0(T[3]), .I1(A_low[2]), .I2(S_c[2]), .I3(n4798), 
            .O(n6615)) /* synthesis syn_instantiated=1 */ ;
    defparam add_103_4_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i2_2_lut_adj_67 (.I0(n14_adj_683), .I1(n4_adj_684), .I2(GND_net), 
            .I3(GND_net), .O(n15_c));   // ../tok.v(74[42:48])
    defparam i2_2_lut_adj_67.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_68 (.I0(T[2]), .I1(T[0]), .I2(GND_net), .I3(GND_net), 
            .O(n185));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_adj_68.LUT_INIT = 16'heeee;
    SB_LUT4 sub_104_add_2_2_lut (.I0(GND_net), .I1(S[0]), .I2(n163), .I3(VCC_net), 
            .O(n292[0])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_104_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_104_add_2_2 (.CI(VCC_net), .I0(S[0]), .I1(n163), .CO(n4782));
    SB_CARRY add_103_4 (.CI(n4798), .I0(A_low[2]), .I1(S_c[2]), .CO(n4799));
    SB_LUT4 add_103_3_lut (.I0(T[2]), .I1(A_low[1]), .I2(S[1]), .I3(n4797), 
            .O(n2635)) /* synthesis syn_instantiated=1 */ ;
    defparam add_103_3_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 sub_99_add_2_10_lut (.I0(GND_net), .I1(GND_net), .I2(VCC_net), 
            .I3(n4781), .O(n16[8])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_99_add_2_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY idx_7__I_0_4 (.CI(n4768), .I0(idx[2]), .I1(found_slot), .CO(n4769));
    SB_CARRY idx_7__I_0_8 (.CI(n4772), .I0(idx[6]), .I1(found_slot), .CO(n4773));
    SB_LUT4 i2_4_lut_adj_69 (.I0(n15), .I1(n13), .I2(n8_adj_686), .I3(n9_adj_651), 
            .O(n6_adj_687));
    defparam i2_4_lut_adj_69.LUT_INIT = 16'haaa8;
    SB_LUT4 i1_2_lut_adj_70 (.I0(T[6]), .I1(T[0]), .I2(GND_net), .I3(GND_net), 
            .O(n4_adj_636));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_adj_70.LUT_INIT = 16'h4444;
    SB_LUT4 i3_4_lut_adj_71 (.I0(n14), .I1(n6_adj_687), .I2(n15_c), .I3(n4_adj_641), 
            .O(n2702));
    defparam i3_4_lut_adj_71.LUT_INIT = 16'hc080;
    SB_LUT4 i6863_2_lut_3_lut_4_lut (.I0(A_low[5]), .I1(n8), .I2(T[7]), 
            .I3(T[5]), .O(n6442));   // ../tok.v(107[56:76])
    defparam i6863_2_lut_3_lut_4_lut.LUT_INIT = 16'h0b00;
    SB_LUT4 i311_4_lut (.I0(n6341), .I1(n4_adj_640), .I2(T[0]), .I3(n274), 
            .O(n170));   // ../tok.v(106[7] 125[14])
    defparam i311_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 or_100_i16_2_lut (.I0(A[11]), .I1(n16[8]), .I2(GND_net), .I3(GND_net), 
            .O(n11[15]));   // ../tok.v(108[40:60])
    defparam or_100_i16_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_72 (.I0(depth[1]), .I1(depth[0]), .I2(depth[2]), 
            .I3(depth[3]), .O(A_stk_delta_1__N_4));   // ../tok.v(132[18:24])
    defparam i1_2_lut_3_lut_4_lut_adj_72.LUT_INIT = 16'hfffe;
    SB_LUT4 i320_4_lut_4_lut_4_lut (.I0(T[2]), .I1(T[0]), .I2(uart_rx_data[7]), 
            .I3(A[15]), .O(n168));   // ../tok.v(110[69:88])
    defparam i320_4_lut_4_lut_4_lut.LUT_INIT = 16'h9180;
    SB_LUT4 i6870_2_lut_3_lut_4_lut (.I0(A[8]), .I1(n8), .I2(T[7]), .I3(T[5]), 
            .O(n6396));   // ../tok.v(107[56:76])
    defparam i6870_2_lut_3_lut_4_lut.LUT_INIT = 16'h0b00;
    SB_LUT4 i6591_2_lut (.I0(A[10]), .I1(T[7]), .I2(GND_net), .I3(GND_net), 
            .O(n6344));   // ../tok.v(106[7] 125[14])
    defparam i6591_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i6719_3_lut_4_lut (.I0(\A_low[7] ), .I1(n16[8]), .I2(T[3]), 
            .I3(T[0]), .O(n6417));   // ../tok.v(106[7] 125[14])
    defparam i6719_3_lut_4_lut.LUT_INIT = 16'h000e;
    SB_LUT4 i312_4_lut_adj_73 (.I0(table_rd[15]), .I1(n11[15]), .I2(T[0]), 
            .I3(T[1]), .O(n203_adj_688));   // ../tok.v(106[7] 125[14])
    defparam i312_4_lut_adj_73.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_4_lut_adj_74 (.I0(T[2]), .I1(n11[15]), .I2(n203_adj_688), 
            .I3(n7269), .O(n212_adj_689));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_74.LUT_INIT = 16'hdc50;
    SB_LUT4 i320_4_lut_4_lut_4_lut_adj_75 (.I0(T[2]), .I1(T[0]), .I2(uart_rx_data[5]), 
            .I3(A[13]), .O(n168_adj_690));   // ../tok.v(110[69:88])
    defparam i320_4_lut_4_lut_4_lut_adj_75.LUT_INIT = 16'h9180;
    SB_LUT4 i6880_4_lut (.I0(n206_adj_691), .I1(n212_adj_689), .I2(T[2]), 
            .I3(n289), .O(n6347));   // ../tok.v(106[7] 125[14])
    defparam i6880_4_lut.LUT_INIT = 16'ha0ec;
    SB_LUT4 i314_4_lut_adj_76 (.I0(\A_low[7] ), .I1(n6339), .I2(T[3]), 
            .I3(T[2]), .O(n161_adj_692));   // ../tok.v(106[7] 125[14])
    defparam i314_4_lut_adj_76.LUT_INIT = 16'hcac0;
    SB_LUT4 i6706_4_lut (.I0(n292[15]), .I1(n4_adj_635), .I2(n31), .I3(T[4]), 
            .O(n6356));   // ../tok.v(106[7] 125[14])
    defparam i6706_4_lut.LUT_INIT = 16'h0c88;
    SB_LUT4 i299_4_lut_adj_77 (.I0(n6356), .I1(n161_adj_692), .I2(T[1]), 
            .I3(T[4]), .O(n197_adj_693));   // ../tok.v(106[7] 125[14])
    defparam i299_4_lut_adj_77.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_adj_78 (.I0(T[5]), .I1(T[4]), .I2(GND_net), .I3(GND_net), 
            .O(n5_adj_675));   // ../tok.v(87[7:19])
    defparam i1_2_lut_adj_78.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_79 (.I0(S_c[15]), .I1(n197_adj_693), .I2(n170), 
            .I3(n4_adj_636), .O(n248_adj_694));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_79.LUT_INIT = 16'heca0;
    SB_LUT4 i308_4_lut_adj_80 (.I0(n6347), .I1(n245), .I2(T[5]), .I3(A[10]), 
            .O(n242_adj_695));   // ../tok.v(106[7] 125[14])
    defparam i308_4_lut_adj_80.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_81 (.I0(T[6]), .I1(T[5]), .I2(n242_adj_695), 
            .I3(n248_adj_694), .O(n200_adj_696));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_81.LUT_INIT = 16'heca0;
    SB_LUT4 i310_4_lut_adj_82 (.I0(A[15]), .I1(n6344), .I2(T[0]), .I3(n289), 
            .O(n215_adj_697));   // ../tok.v(106[7] 125[14])
    defparam i310_4_lut_adj_82.LUT_INIT = 16'hc0ca;
    SB_LUT4 i6874_2_lut_3_lut_4_lut (.I0(A[9]), .I1(n8), .I2(T[7]), .I3(T[5]), 
            .O(n6382));   // ../tok.v(107[56:76])
    defparam i6874_2_lut_3_lut_4_lut.LUT_INIT = 16'h0b00;
    SB_LUT4 i309_4_lut_adj_83 (.I0(n847), .I1(n6346), .I2(T[4]), .I3(A[15]), 
            .O(n179_adj_698));   // ../tok.v(106[7] 125[14])
    defparam i309_4_lut_adj_83.LUT_INIT = 16'hcac0;
    SB_LUT4 T_7__I_0_i10_2_lut (.I0(T[2]), .I1(T[3]), .I2(GND_net), .I3(GND_net), 
            .O(n10_c));   // ../tok.v(29[21:29])
    defparam T_7__I_0_i10_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i6771_4_lut (.I0(n6337), .I1(n821), .I2(n215_adj_697), .I3(T[6]), 
            .O(n6538));   // ../tok.v(104[10] 126[8])
    defparam i6771_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i2_4_lut_adj_84 (.I0(A[15]), .I1(T[7]), .I2(n194), .I3(n200_adj_696), 
            .O(n6_adj_699));   // ../tok.v(106[7] 125[14])
    defparam i2_4_lut_adj_84.LUT_INIT = 16'hb3a0;
    SB_LUT4 i6948_4_lut (.I0(n6538), .I1(n179_adj_698), .I2(T[6]), .I3(T[3]), 
            .O(n6537));   // ../tok.v(104[10] 126[8])
    defparam i6948_4_lut.LUT_INIT = 16'haaae;
    SB_LUT4 A__15__I_0_i16_4_lut (.I0(S_c[15]), .I1(n6537), .I2(n23_c), 
            .I3(n6_adj_699), .O(A_[15]));   // ../tok.v(104[10] 126[8])
    defparam A__15__I_0_i16_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i6824_4_lut_4_lut_4_lut (.I0(T[2]), .I1(T[0]), .I2(T[1]), 
            .I3(T[3]), .O(n6589));   // ../tok.v(110[69:88])
    defparam i6824_4_lut_4_lut_4_lut.LUT_INIT = 16'h0014;
    SB_LUT4 i178_1_lut (.I0(A_low[0]), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n163));   // ../tok.v(106[7] 125[14])
    defparam i178_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_105_i2_1_lut (.I0(A_low[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n145));   // ../tok.v(114[20:22])
    defparam inv_105_i2_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_105_i3_1_lut (.I0(A_low[2]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n309[2]));   // ../tok.v(114[20:22])
    defparam inv_105_i3_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i189_1_lut (.I0(A_low[3]), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n127));   // ../tok.v(106[7] 125[14])
    defparam i189_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_105_i5_1_lut (.I0(A_low[4]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n309[4]));   // ../tok.v(114[20:22])
    defparam inv_105_i5_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_105_i6_1_lut (.I0(A_low[5]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n309[5]));   // ../tok.v(114[20:22])
    defparam inv_105_i6_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_105_i7_1_lut (.I0(A_low[6]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n309[6]));   // ../tok.v(114[20:22])
    defparam inv_105_i7_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i7_1_lut (.I0(T[1]), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n21_adj_660));
    defparam i7_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_105_i8_1_lut (.I0(\A_low[7] ), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n309[7]));   // ../tok.v(114[20:22])
    defparam inv_105_i8_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_105_i9_1_lut (.I0(A[8]), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n309[8]));   // ../tok.v(114[20:22])
    defparam inv_105_i9_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_105_i10_1_lut (.I0(A[9]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n309[9]));   // ../tok.v(114[20:22])
    defparam inv_105_i10_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_105_i11_1_lut (.I0(A[10]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n309[10]));   // ../tok.v(114[20:22])
    defparam inv_105_i11_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i320_4_lut_4_lut_4_lut_adj_85 (.I0(T[2]), .I1(T[0]), .I2(uart_rx_data[4]), 
            .I3(A[12]), .O(n168_adj_700));   // ../tok.v(110[69:88])
    defparam i320_4_lut_4_lut_4_lut_adj_85.LUT_INIT = 16'h9180;
    SB_LUT4 i2_2_lut_3_lut_4_lut (.I0(T[2]), .I1(T[3]), .I2(T[0]), .I3(T[1]), 
            .O(n6_adj_701));   // ../tok.v(74[51:57])
    defparam i2_2_lut_3_lut_4_lut.LUT_INIT = 16'hbfff;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_86 (.I0(T[2]), .I1(T[3]), .I2(T[0]), 
            .I3(T[1]), .O(n4_adj_642));   // ../tok.v(74[51:57])
    defparam i1_2_lut_3_lut_4_lut_adj_86.LUT_INIT = 16'hfffb;
    SB_LUT4 i2_3_lut (.I0(n4_adj_702), .I1(n3[1]), .I2(depth[2]), .I3(GND_net), 
            .O(depth_[2]));   // ../tok.v(132[5] 136[14])
    defparam i2_3_lut.LUT_INIT = 16'h9696;
    SB_LUT4 i2566_2_lut (.I0(A_stk_delta_1__N_4), .I1(n1), .I2(GND_net), 
            .I3(GND_net), .O(n3[1]));   // ../tok.v(132[5] 136[14])
    defparam i2566_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2_4_lut_adj_87 (.I0(depth[2]), .I1(n3[1]), .I2(depth[3]), 
            .I3(n4_adj_702), .O(depth_[3]));   // ../tok.v(132[5] 136[14])
    defparam i2_4_lut_adj_87.LUT_INIT = 16'hd2b4;
    SB_LUT4 i50_4_lut_adj_88 (.I0(A_low[1]), .I1(n290[1]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_703));   // ../tok.v(85[5] 92[14])
    defparam i50_4_lut_adj_88.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_89 (.I0(n27_adj_703), .I1(idx[1]), .I2(n796), 
            .I3(n30), .O(idx_[1]));   // ../tok.v(85[5] 92[14])
    defparam i1_4_lut_adj_89.LUT_INIT = 16'heca0;
    SB_LUT4 i50_4_lut_adj_90 (.I0(A_low[2]), .I1(n290[2]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_704));   // ../tok.v(85[5] 92[14])
    defparam i50_4_lut_adj_90.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_91 (.I0(n27_adj_704), .I1(idx[2]), .I2(n796), 
            .I3(n30), .O(idx_[2]));   // ../tok.v(85[5] 92[14])
    defparam i1_4_lut_adj_91.LUT_INIT = 16'heca0;
    SB_LUT4 i50_4_lut_adj_92 (.I0(A_low[3]), .I1(n290[3]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_705));   // ../tok.v(85[5] 92[14])
    defparam i50_4_lut_adj_92.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_93 (.I0(n27_adj_705), .I1(idx[3]), .I2(n796), 
            .I3(n30), .O(idx_[3]));   // ../tok.v(85[5] 92[14])
    defparam i1_4_lut_adj_93.LUT_INIT = 16'heca0;
    SB_LUT4 i50_4_lut_adj_94 (.I0(A_low[4]), .I1(n290[4]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_706));   // ../tok.v(85[5] 92[14])
    defparam i50_4_lut_adj_94.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_95 (.I0(n27_adj_706), .I1(idx[4]), .I2(n796), 
            .I3(n30), .O(idx_[4]));   // ../tok.v(85[5] 92[14])
    defparam i1_4_lut_adj_95.LUT_INIT = 16'heca0;
    SB_LUT4 i50_4_lut_adj_96 (.I0(A_low[5]), .I1(n290[5]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_707));   // ../tok.v(85[5] 92[14])
    defparam i50_4_lut_adj_96.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_97 (.I0(n27_adj_707), .I1(idx[5]), .I2(n796), 
            .I3(n30), .O(idx_[5]));   // ../tok.v(85[5] 92[14])
    defparam i1_4_lut_adj_97.LUT_INIT = 16'heca0;
    SB_LUT4 i50_4_lut_adj_98 (.I0(A_low[6]), .I1(n290[6]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_708));   // ../tok.v(85[5] 92[14])
    defparam i50_4_lut_adj_98.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_99 (.I0(n27_adj_708), .I1(idx[6]), .I2(n796), 
            .I3(n30), .O(idx_[6]));   // ../tok.v(85[5] 92[14])
    defparam i1_4_lut_adj_99.LUT_INIT = 16'heca0;
    SB_LUT4 i50_4_lut_adj_100 (.I0(\A_low[7] ), .I1(n290[7]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_709));   // ../tok.v(85[5] 92[14])
    defparam i50_4_lut_adj_100.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_101 (.I0(n27_adj_709), .I1(idx[7]), .I2(n796), 
            .I3(n30), .O(idx_[7]));   // ../tok.v(85[5] 92[14])
    defparam i1_4_lut_adj_101.LUT_INIT = 16'heca0;
    SB_LUT4 i320_4_lut_4_lut_4_lut_adj_102 (.I0(T[2]), .I1(T[0]), .I2(uart_rx_data[6]), 
            .I3(A[14]), .O(n168_adj_710));   // ../tok.v(110[69:88])
    defparam i320_4_lut_4_lut_4_lut_adj_102.LUT_INIT = 16'h9180;
    SB_LUT4 i336_4_lut (.I0(A_low[1]), .I1(S[1]), .I2(T[5]), .I3(T[0]), 
            .O(n208));   // ../tok.v(106[7] 125[14])
    defparam i336_4_lut.LUT_INIT = 16'h0a30;
    SB_LUT4 i6753_2_lut (.I0(uart_rx_data[1]), .I1(T[2]), .I2(GND_net), 
            .I3(GND_net), .O(n6653));   // ../tok.v(106[7] 125[14])
    defparam i6753_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i2598_rep_349_2_lut (.I0(T[5]), .I1(T[3]), .I2(GND_net), .I3(GND_net), 
            .O(n7475));
    defparam i2598_rep_349_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_3_lut_adj_103 (.I0(T[2]), .I1(T[3]), .I2(T[5]), .I3(GND_net), 
            .O(n4_adj_711));   // ../tok.v(106[7] 125[14])
    defparam i1_3_lut_adj_103.LUT_INIT = 16'h8080;
    SB_LUT4 i2639_3_lut (.I0(n11[1]), .I1(T[5]), .I2(T[3]), .I3(GND_net), 
            .O(n2663));
    defparam i2639_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i335_4_lut (.I0(n292[1]), .I1(n2663), .I2(T[6]), .I3(n4_adj_711), 
            .O(n247));   // ../tok.v(106[7] 125[14])
    defparam i335_4_lut.LUT_INIT = 16'h3530;
    SB_LUT4 i6787_2_lut_3_lut (.I0(A_low[1]), .I1(T[6]), .I2(T[0]), .I3(GND_net), 
            .O(n6508));   // ../tok.v(110[69:88])
    defparam i6787_2_lut_3_lut.LUT_INIT = 16'h6060;
    SB_LUT4 i1_2_lut_2_lut_3_lut (.I0(T[2]), .I1(T[5]), .I2(T[0]), .I3(GND_net), 
            .O(n838));   // ../tok.v(110[69:88])
    defparam i1_2_lut_2_lut_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 i1_2_lut_adj_104 (.I0(T[2]), .I1(T[1]), .I2(GND_net), .I3(GND_net), 
            .O(n6_adj_676));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_adj_104.LUT_INIT = 16'h8888;
    SB_LUT4 i6982_4_lut (.I0(n6653), .I1(n4_adj_648), .I2(n2635), .I3(T[3]), 
            .O(n6646));   // ../tok.v(106[7] 125[14])
    defparam i6982_4_lut.LUT_INIT = 16'h0c88;
    SB_LUT4 i341_4_lut (.I0(n6646), .I1(n185), .I2(T[6]), .I3(T[1]), 
            .O(n280));   // ../tok.v(106[7] 125[14])
    defparam i341_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i6858_4_lut (.I0(n11[1]), .I1(n219), .I2(T[0]), .I3(n6167), 
            .O(n6639));   // ../tok.v(106[7] 125[14])
    defparam i6858_4_lut.LUT_INIT = 16'h0400;
    SB_LUT4 i6989_4_lut (.I0(n6645), .I1(T[1]), .I2(n247), .I3(T[0]), 
            .O(n6638));   // ../tok.v(106[7] 125[14])
    defparam i6989_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 i1_4_lut_adj_105 (.I0(T[6]), .I1(n6644), .I2(T[1]), .I3(T[3]), 
            .O(n260));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_105.LUT_INIT = 16'h0544;
    SB_LUT4 i6966_2_lut (.I0(n11[1]), .I1(n4_adj_712), .I2(GND_net), .I3(GND_net), 
            .O(n6650));   // ../tok.v(106[7] 125[14])
    defparam i6966_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i337_4_lut (.I0(n5_adj_713), .I1(n6650), .I2(T[6]), .I3(A[9]), 
            .O(n211));   // ../tok.v(106[7] 125[14])
    defparam i337_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i344_4_lut (.I0(A_low[1]), .I1(T[7]), .I2(T[5]), .I3(T[1]), 
            .O(n2637));   // ../tok.v(106[7] 125[14])
    defparam i344_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i6969_3_lut (.I0(n211), .I1(T[3]), .I2(T[7]), .I3(GND_net), 
            .O(n6641));   // ../tok.v(106[7] 125[14])
    defparam i6969_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_4_lut_adj_106 (.I0(A_low[1]), .I1(T[5]), .I2(n260), .I3(T[3]), 
            .O(n266));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_106.LUT_INIT = 16'h5150;
    SB_LUT4 i2521_2_lut (.I0(T[3]), .I1(S[1]), .I2(GND_net), .I3(GND_net), 
            .O(n2544));
    defparam i2521_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_107 (.I0(T[0]), .I1(T[4]), .I2(n2544), .I3(n31), 
            .O(n251));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_107.LUT_INIT = 16'h8a0a;
    SB_LUT4 i1_4_lut_adj_108 (.I0(n251), .I1(T[3]), .I2(n185), .I3(T[4]), 
            .O(n4_adj_714));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_108.LUT_INIT = 16'hbbab;
    SB_LUT4 i2534_2_lut (.I0(T[1]), .I1(T[6]), .I2(GND_net), .I3(GND_net), 
            .O(n2557));
    defparam i2534_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i307_3_lut_3_lut_3_lut (.I0(T[2]), .I1(T[0]), .I2(T[1]), .I3(GND_net), 
            .O(n180));   // ../tok.v(110[69:88])
    defparam i307_3_lut_3_lut_3_lut.LUT_INIT = 16'h7676;
    SB_LUT4 i1_4_lut_adj_109 (.I0(T[3]), .I1(T[0]), .I2(n369), .I3(n5_adj_715), 
            .O(n233_adj_716));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_109.LUT_INIT = 16'ha0a2;
    SB_LUT4 i1_4_lut_adj_110 (.I0(n269), .I1(n4_adj_640), .I2(n260_adj_717), 
            .I3(T[0]), .O(n229));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_110.LUT_INIT = 16'hfabb;
    SB_LUT4 i1_4_lut_adj_111 (.I0(T[5]), .I1(T[6]), .I2(T[4]), .I3(n4_adj_648), 
            .O(n278));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_111.LUT_INIT = 16'h1151;
    SB_LUT4 i6867_4_lut (.I0(n208), .I1(T[6]), .I2(n6_adj_676), .I3(T[3]), 
            .O(n6637));   // ../tok.v(106[7] 125[14])
    defparam i6867_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i6963_4_lut (.I0(n6638), .I1(n6639), .I2(n280), .I3(T[5]), 
            .O(n6636));   // ../tok.v(106[7] 125[14])
    defparam i6963_4_lut.LUT_INIT = 16'hfaee;
    SB_LUT4 i1_4_lut_adj_112 (.I0(T[5]), .I1(n218), .I2(T[4]), .I3(n274), 
            .O(n284));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_112.LUT_INIT = 16'h88a8;
    SB_LUT4 i1_4_lut_adj_113 (.I0(n284), .I1(n6636), .I2(n6637), .I3(T[4]), 
            .O(n244));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_113.LUT_INIT = 16'hfaee;
    SB_LUT4 i2_4_lut_adj_114 (.I0(T[2]), .I1(n278), .I2(n229), .I3(n233_adj_716), 
            .O(n6156));   // ../tok.v(106[7] 125[14])
    defparam i2_4_lut_adj_114.LUT_INIT = 16'hffec;
    SB_LUT4 i1_4_lut_adj_115 (.I0(n266), .I1(n6641), .I2(n2637), .I3(T[4]), 
            .O(n4_adj_718));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_115.LUT_INIT = 16'hafee;
    SB_LUT4 i338_4_lut (.I0(n2665), .I1(n4_adj_719), .I2(T[3]), .I3(T[1]), 
            .O(n256));   // ../tok.v(106[7] 125[14])
    defparam i338_4_lut.LUT_INIT = 16'h05c5;
    SB_LUT4 i1_4_lut_adj_116 (.I0(A_low[1]), .I1(T[7]), .I2(n6156), .I3(n244), 
            .O(n4_adj_720));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_116.LUT_INIT = 16'h7754;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_117 (.I0(T[5]), .I1(T[6]), .I2(T[4]), 
            .I3(T[7]), .O(n14));   // ../tok.v(74[24:30])
    defparam i1_2_lut_3_lut_4_lut_adj_117.LUT_INIT = 16'hfffd;
    SB_LUT4 A__15__I_0_i2_4_lut (.I0(S[1]), .I1(n221), .I2(n23_c), .I3(n4_adj_720), 
            .O(A_[1]));   // ../tok.v(104[10] 126[8])
    defparam A__15__I_0_i2_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 i291_4_lut_4_lut_4_lut (.I0(T[2]), .I1(T[4]), .I2(T[3]), .I3(T[6]), 
            .O(n311_adj_721));   // ../tok.v(110[69:88])
    defparam i291_4_lut_4_lut_4_lut.LUT_INIT = 16'h150c;
    SB_LUT4 i6868_2_lut_3_lut_4_lut (.I0(A_low[6]), .I1(n8), .I2(T[7]), 
            .I3(T[5]), .O(n6425));   // ../tok.v(107[56:76])
    defparam i6868_2_lut_3_lut_4_lut.LUT_INIT = 16'h0b00;
    SB_LUT4 inv_105_i12_1_lut (.I0(A[11]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n309[11]));   // ../tok.v(114[20:22])
    defparam inv_105_i12_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i297_4_lut (.I0(A_low[2]), .I1(S_c[2]), .I2(T[5]), .I3(T[0]), 
            .O(n164));   // ../tok.v(106[7] 125[14])
    defparam i297_4_lut.LUT_INIT = 16'h05c0;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_118 (.I0(T[5]), .I1(T[6]), .I2(T[4]), 
            .I3(n741), .O(n6_adj_722));   // ../tok.v(74[24:30])
    defparam i1_2_lut_3_lut_4_lut_adj_118.LUT_INIT = 16'hfffd;
    SB_LUT4 i1_rep_325_2_lut (.I0(T[5]), .I1(T[0]), .I2(GND_net), .I3(GND_net), 
            .O(n7451));   // ../tok.v(106[7] 125[14])
    defparam i1_rep_325_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i6959_3_lut (.I0(n209), .I1(T[5]), .I2(T[3]), .I3(GND_net), 
            .O(n6625));   // ../tok.v(106[7] 125[14])
    defparam i6959_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i6956_4_lut (.I0(S_c[2]), .I1(n7451), .I2(n6616), .I3(T[3]), 
            .O(n6624));   // ../tok.v(106[7] 125[14])
    defparam i6956_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i299_4_lut_adj_119 (.I0(A[10]), .I1(n6615), .I2(T[0]), .I3(T[3]), 
            .O(n158));   // ../tok.v(106[7] 125[14])
    defparam i299_4_lut_adj_119.LUT_INIT = 16'hc0ca;
    SB_LUT4 i6984_4_lut (.I0(n180), .I1(n11[2]), .I2(T[5]), .I3(T[3]), 
            .O(n6628));   // ../tok.v(106[7] 125[14])
    defparam i6984_4_lut.LUT_INIT = 16'h0008;
    SB_LUT4 i6869_2_lut_3_lut_4_lut (.I0(\A_low[7] ), .I1(n8), .I2(T[7]), 
            .I3(T[5]), .O(n6411));   // ../tok.v(107[56:76])
    defparam i6869_2_lut_3_lut_4_lut.LUT_INIT = 16'h0b00;
    SB_LUT4 i1_4_lut_adj_120 (.I0(T[1]), .I1(n6624), .I2(n6625), .I3(T[6]), 
            .O(n162));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_120.LUT_INIT = 16'h5044;
    SB_LUT4 i6979_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_723), 
            .I3(GND_net), .O(n6664));   // ../tok.v(141[5] 148[14])
    defparam i6979_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i6857_4_lut (.I0(T[5]), .I1(n225_adj_678), .I2(T[4]), .I3(T[0]), 
            .O(n6622));   // ../tok.v(106[7] 125[14])
    defparam i6857_4_lut.LUT_INIT = 16'heccc;
    SB_LUT4 i1_4_lut_adj_121 (.I0(T[3]), .I1(n6621), .I2(n6622), .I3(T[1]), 
            .O(n237_adj_724));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_121.LUT_INIT = 16'ha088;
    SB_LUT4 i6641_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_725), 
            .I3(GND_net), .O(n6287));   // ../tok.v(141[5] 148[14])
    defparam i6641_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i6854_2_lut (.I0(uart_rx_data[2]), .I1(T[3]), .I2(GND_net), 
            .I3(GND_net), .O(n6620));   // ../tok.v(106[7] 125[14])
    defparam i6854_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i6730_3_lut_4_lut (.I0(A_low[6]), .I1(n16[8]), .I2(T[3]), 
            .I3(T[0]), .O(n6431));   // ../tok.v(106[7] 125[14])
    defparam i6730_3_lut_4_lut.LUT_INIT = 16'h000e;
    SB_LUT4 i296_4_lut (.I0(n31), .I1(n6620), .I2(T[1]), .I3(T[4]), 
            .O(n167));   // ../tok.v(106[7] 125[14])
    defparam i296_4_lut.LUT_INIT = 16'hc5c0;
    SB_LUT4 i1_4_lut_adj_122 (.I0(n164), .I1(n4842), .I2(n4_adj_635), 
            .I3(n4_adj_726), .O(n239_adj_727));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_122.LUT_INIT = 16'heccc;
    SB_LUT4 i17_4_lut (.I0(A_low[2]), .I1(T[7]), .I2(n222), .I3(T[2]), 
            .O(n6_adj_728));   // ../tok.v(106[7] 125[14])
    defparam i17_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 i1_4_lut_adj_123 (.I0(n162), .I1(n6627), .I2(n6628), .I3(T[6]), 
            .O(n197_adj_729));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_123.LUT_INIT = 16'hfaee;
    SB_LUT4 i1_rep_332_2_lut (.I0(T[2]), .I1(T[5]), .I2(GND_net), .I3(GND_net), 
            .O(n7458));   // ../tok.v(106[7] 125[14])
    defparam i1_rep_332_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_3_lut_adj_124 (.I0(n167), .I1(n311_adj_721), .I2(n4_adj_636), 
            .I3(GND_net), .O(n179_adj_730));   // ../tok.v(106[7] 125[14])
    defparam i1_3_lut_adj_124.LUT_INIT = 16'hecec;
    SB_LUT4 i1_4_lut_adj_125 (.I0(n179_adj_730), .I1(T[4]), .I2(n7458), 
            .I3(n197_adj_729), .O(n203_adj_731));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_125.LUT_INIT = 16'hb3a0;
    SB_LUT4 i1_2_lut_adj_126 (.I0(T[3]), .I1(T[1]), .I2(GND_net), .I3(GND_net), 
            .O(n274));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_adj_126.LUT_INIT = 16'heeee;
    SB_LUT4 i6121_2_lut (.I0(T[0]), .I1(A_stk_delta_1__N_4), .I2(GND_net), 
            .I3(GND_net), .O(n6205));
    defparam i6121_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4_4_lut_adj_127 (.I0(n6205), .I1(n6183), .I2(n5_adj_675), 
            .I3(n274), .O(n270));
    defparam i4_4_lut_adj_127.LUT_INIT = 16'h0010;
    SB_LUT4 i1_4_lut_adj_128 (.I0(n838), .I1(T[7]), .I2(n6_adj_728), .I3(n239_adj_727), 
            .O(n200_adj_732));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_128.LUT_INIT = 16'hb3a0;
    SB_LUT4 i6962_4_lut (.I0(T[4]), .I1(A_low[2]), .I2(T[6]), .I3(T[3]), 
            .O(n6632));   // ../tok.v(106[7] 125[14])
    defparam i6962_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 i2596_rep_330_2_lut (.I0(T[7]), .I1(T[2]), .I2(GND_net), .I3(GND_net), 
            .O(n7456));
    defparam i2596_rep_330_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i2_4_lut_adj_129 (.I0(n237_adj_724), .I1(T[0]), .I2(n900), 
            .I3(n286), .O(n4893));   // ../tok.v(106[7] 125[14])
    defparam i2_4_lut_adj_129.LUT_INIT = 16'hfbfa;
    SB_LUT4 i283_4_lut (.I0(n7456), .I1(n6632), .I2(T[1]), .I3(n5_adj_715), 
            .O(n176));   // ../tok.v(106[7] 125[14])
    defparam i283_4_lut.LUT_INIT = 16'hc5c0;
    SB_LUT4 i2_4_lut_adj_130 (.I0(T[6]), .I1(T[7]), .I2(n200_adj_732), 
            .I3(n203_adj_731), .O(n6_adj_733));   // ../tok.v(106[7] 125[14])
    defparam i2_4_lut_adj_130.LUT_INIT = 16'hb3a0;
    SB_LUT4 i6983_4_lut (.I0(n176), .I1(A_low[2]), .I2(n5_adj_682), .I3(n4893), 
            .O(n6634));   // ../tok.v(104[10] 126[8])
    defparam i6983_4_lut.LUT_INIT = 16'heca0;
    SB_LUT4 A__15__I_0_i3_4_lut (.I0(S_c[2]), .I1(n6634), .I2(n23_c), 
            .I3(n6_adj_733), .O(A_[2]));   // ../tok.v(104[10] 126[8])
    defparam A__15__I_0_i3_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i6804_2_lut_3_lut (.I0(A_low[0]), .I1(T[5]), .I2(T[0]), .I3(GND_net), 
            .O(n6532));   // ../tok.v(110[69:88])
    defparam i6804_2_lut_3_lut.LUT_INIT = 16'h6060;
    SB_LUT4 inv_105_i13_1_lut (.I0(A[12]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n309[12]));   // ../tok.v(114[20:22])
    defparam inv_105_i13_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_105_i14_1_lut (.I0(A[13]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n309[13]));   // ../tok.v(114[20:22])
    defparam inv_105_i14_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i125_4_lut (.I0(c_stk_r[0]), .I1(table_rd[0]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_734));   // ../tok.v(141[5] 148[14])
    defparam i125_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i6614_4_lut (.I0(\tc_plus_1[0] ), .I1(n4_adj_726), .I2(c_stk_r[0]), 
            .I3(tc__7__N_133), .O(n6283));   // ../tok.v(141[5] 148[14])
    defparam i6614_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i124_4_lut (.I0(c_stk_r[0]), .I1(n6283), .I2(T[2]), .I3(n2573), 
            .O(n80));   // ../tok.v(141[5] 148[14])
    defparam i124_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i126_4_lut (.I0(n80), .I1(n6279), .I2(T[6]), .I3(T[0]), 
            .O(n89));   // ../tok.v(141[5] 148[14])
    defparam i126_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_131 (.I0(\tc_plus_1[0] ), .I1(n748), .I2(n86), 
            .I3(n89), .O(n92));   // ../tok.v(141[5] 148[14])
    defparam i1_4_lut_adj_131.LUT_INIT = 16'heca0;
    SB_LUT4 i125_4_lut_adj_132 (.I0(c_stk_r[1]), .I1(table_rd[1]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_725));   // ../tok.v(141[5] 148[14])
    defparam i125_4_lut_adj_132.LUT_INIT = 16'h0ac0;
    SB_LUT4 i6605_4_lut (.I0(\tc_plus_1[1] ), .I1(n4_adj_726), .I2(c_stk_r[1]), 
            .I3(tc__7__N_133), .O(n6291));   // ../tok.v(141[5] 148[14])
    defparam i6605_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i124_4_lut_adj_133 (.I0(c_stk_r[1]), .I1(n6291), .I2(T[2]), 
            .I3(n2573), .O(n80_adj_735));   // ../tok.v(141[5] 148[14])
    defparam i124_4_lut_adj_133.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_2_lut_adj_134 (.I0(T[6]), .I1(T[1]), .I2(GND_net), .I3(GND_net), 
            .O(n156));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_adj_134.LUT_INIT = 16'h4444;
    SB_LUT4 i335_4_lut_adj_135 (.I0(table_rd[3]), .I1(n11[3]), .I2(T[0]), 
            .I3(T[1]), .O(n2700));   // ../tok.v(106[7] 125[14])
    defparam i335_4_lut_adj_135.LUT_INIT = 16'hcfca;
    SB_LUT4 i126_4_lut_adj_136 (.I0(n80_adj_735), .I1(n6287), .I2(T[6]), 
            .I3(T[0]), .O(n89_adj_736));   // ../tok.v(141[5] 148[14])
    defparam i126_4_lut_adj_136.LUT_INIT = 16'hcac0;
    SB_LUT4 i2_3_lut_adj_137 (.I0(T[0]), .I1(T[4]), .I2(n11[3]), .I3(GND_net), 
            .O(n4925));
    defparam i2_3_lut_adj_137.LUT_INIT = 16'hfefe;
    SB_LUT4 i2_4_lut_adj_138 (.I0(T[2]), .I1(n289), .I2(n236_adj_737), 
            .I3(n2700), .O(n239_adj_738));   // ../tok.v(106[7] 125[14])
    defparam i2_4_lut_adj_138.LUT_INIT = 16'h3031;
    SB_LUT4 i6829_4_lut (.I0(n4925), .I1(T[2]), .I2(n6583), .I3(T[3]), 
            .O(n6593));   // ../tok.v(106[7] 125[14])
    defparam i6829_4_lut.LUT_INIT = 16'hc044;
    SB_LUT4 i6726_2_lut (.I0(n275[3]), .I1(T[1]), .I2(GND_net), .I3(GND_net), 
            .O(n6578));   // ../tok.v(106[7] 125[14])
    defparam i6726_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i6840_4_lut (.I0(n6578), .I1(n4_adj_739), .I2(n2613), .I3(T[2]), 
            .O(n6581));   // ../tok.v(106[7] 125[14])
    defparam i6840_4_lut.LUT_INIT = 16'h0c88;
    SB_LUT4 i1_4_lut_adj_139 (.I0(\tc_plus_1[1] ), .I1(n748), .I2(n86), 
            .I3(n89_adj_736), .O(n92_adj_1));   // ../tok.v(141[5] 148[14])
    defparam i1_4_lut_adj_139.LUT_INIT = 16'heca0;
    SB_LUT4 i125_4_lut_adj_140 (.I0(c_stk_r_c[2]), .I1(table_rd[2]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_723));   // ../tok.v(141[5] 148[14])
    defparam i125_4_lut_adj_140.LUT_INIT = 16'h0ac0;
    SB_LUT4 i6833_4_lut (.I0(S_c[3]), .I1(T[1]), .I2(T[6]), .I3(T[3]), 
            .O(n6597));   // ../tok.v(106[7] 125[14])
    defparam i6833_4_lut.LUT_INIT = 16'h4000;
    SB_LUT4 i336_4_lut_adj_141 (.I0(n6597), .I1(n31), .I2(T[0]), .I3(n2557), 
            .O(n199));   // ../tok.v(106[7] 125[14])
    defparam i336_4_lut_adj_141.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_3_lut_adj_142 (.I0(T[3]), .I1(T[2]), .I2(n199), .I3(GND_net), 
            .O(n262));   // ../tok.v(106[7] 125[14])
    defparam i1_3_lut_adj_142.LUT_INIT = 16'hd5d5;
    SB_LUT4 i338_4_lut_adj_143 (.I0(T[4]), .I1(T[1]), .I2(T[3]), .I3(T[0]), 
            .O(n211_adj_741));   // ../tok.v(106[7] 125[14])
    defparam i338_4_lut_adj_143.LUT_INIT = 16'h1c10;
    SB_LUT4 i6674_3_lut_4_lut (.I0(A[11]), .I1(n8), .I2(T[7]), .I3(T[4]), 
            .O(n6337));   // ../tok.v(107[56:76])
    defparam i6674_3_lut_4_lut.LUT_INIT = 16'h0b00;
    SB_LUT4 i1_4_lut_adj_144 (.I0(T[5]), .I1(T[3]), .I2(T[4]), .I3(n156), 
            .O(n265));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_144.LUT_INIT = 16'hdc54;
    SB_LUT4 i337_4_lut_adj_145 (.I0(S_c[3]), .I1(uart_rx_data[3]), .I2(T[1]), 
            .I3(T[2]), .O(n241));   // ../tok.v(106[7] 125[14])
    defparam i337_4_lut_adj_145.LUT_INIT = 16'h3505;
    SB_LUT4 i2588_3_lut (.I0(T[2]), .I1(T[1]), .I2(A[11]), .I3(GND_net), 
            .O(n2611));
    defparam i2588_3_lut.LUT_INIT = 16'heaea;
    SB_LUT4 i339_4_lut (.I0(n6593), .I1(n6589), .I2(T[5]), .I3(n239_adj_738), 
            .O(n283));   // ../tok.v(106[7] 125[14])
    defparam i339_4_lut.LUT_INIT = 16'hcfca;
    SB_LUT4 i6953_4_lut (.I0(n2611), .I1(T[4]), .I2(n241), .I3(T[0]), 
            .O(n6580));   // ../tok.v(106[7] 125[14])
    defparam i6953_4_lut.LUT_INIT = 16'hfcdd;
    SB_LUT4 i1_4_lut_adj_146 (.I0(T[7]), .I1(n6581), .I2(n6582), .I3(T[6]), 
            .O(n254));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_146.LUT_INIT = 16'h5044;
    SB_LUT4 i27_4_lut (.I0(n1600), .I1(n6664), .I2(T[6]), .I3(T[0]), 
            .O(n13_adj_742));   // ../tok.v(141[5] 148[14])
    defparam i27_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i6826_4_lut (.I0(A_low[3]), .I1(T[7]), .I2(n786), .I3(n262), 
            .O(n6586));   // ../tok.v(106[7] 125[14])
    defparam i6826_4_lut.LUT_INIT = 16'h7350;
    SB_LUT4 i2_4_lut_adj_147 (.I0(A_low[3]), .I1(T[3]), .I2(n219), .I3(T[0]), 
            .O(n4926));
    defparam i2_4_lut_adj_147.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_148 (.I0(n86), .I1(n748), .I2(tc_plus_1[2]), 
            .I3(n13_adj_742), .O(n10));   // ../tok.v(141[5] 148[14])
    defparam i1_4_lut_adj_148.LUT_INIT = 16'heca0;
    SB_LUT4 i340_4_lut (.I0(n4926), .I1(n6586), .I2(T[4]), .I3(n254), 
            .O(n226_adj_744));   // ../tok.v(106[7] 125[14])
    defparam i340_4_lut.LUT_INIT = 16'hcfc5;
    SB_LUT4 i347_4_lut (.I0(n6580), .I1(n283), .I2(T[6]), .I3(n5_adj_745), 
            .O(n223));   // ../tok.v(106[7] 125[14])
    defparam i347_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i125_4_lut_adj_149 (.I0(c_stk_r_c[3]), .I1(table_rd[3]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_746));   // ../tok.v(141[5] 148[14])
    defparam i125_4_lut_adj_149.LUT_INIT = 16'h0ac0;
    SB_LUT4 i362_4_lut_4_lut (.I0(T[3]), .I1(T[4]), .I2(T[5]), .I3(T[2]), 
            .O(n241_adj_747));   // ../tok.v(106[7] 125[14])
    defparam i362_4_lut_4_lut.LUT_INIT = 16'h8580;
    SB_LUT4 i6675_4_lut (.I0(tc_plus_1[3]), .I1(n4_adj_726), .I2(c_stk_r_c[3]), 
            .I3(tc__7__N_133), .O(n6301));   // ../tok.v(141[5] 148[14])
    defparam i6675_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i345_3_lut (.I0(T[6]), .I1(n260_adj_717), .I2(T[0]), .I3(GND_net), 
            .O(n367));   // ../tok.v(106[7] 125[14])
    defparam i345_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 i2_4_lut_adj_150 (.I0(T[0]), .I1(T[6]), .I2(n265), .I3(n277), 
            .O(n6_adj_748));   // ../tok.v(106[7] 125[14])
    defparam i2_4_lut_adj_150.LUT_INIT = 16'h7350;
    SB_LUT4 i1_4_lut_adj_151 (.I0(T[2]), .I1(T[3]), .I2(n367), .I3(n256_adj_749), 
            .O(n215_adj_750));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_151.LUT_INIT = 16'ha8a0;
    SB_LUT4 i124_4_lut_adj_152 (.I0(c_stk_r_c[3]), .I1(n6301), .I2(T[2]), 
            .I3(n2573), .O(n80_adj_751));   // ../tok.v(141[5] 148[14])
    defparam i124_4_lut_adj_152.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_4_lut_adj_153 (.I0(T[7]), .I1(T[5]), .I2(n223), .I3(n226_adj_744), 
            .O(n4_adj_752));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_153.LUT_INIT = 16'hdc50;
    SB_LUT4 i1_4_lut_adj_154 (.I0(A_low[3]), .I1(n215_adj_750), .I2(n6_adj_748), 
            .I3(n877), .O(n221_adj_753));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_154.LUT_INIT = 16'h5554;
    SB_LUT4 A__15__I_0_i4_4_lut (.I0(S_c[3]), .I1(n221_adj_753), .I2(n23_c), 
            .I3(n4_adj_752), .O(A_[3]));   // ../tok.v(104[10] 126[8])
    defparam A__15__I_0_i4_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 i126_4_lut_adj_155 (.I0(n80_adj_751), .I1(n6297), .I2(T[6]), 
            .I3(T[0]), .O(n89_adj_754));   // ../tok.v(141[5] 148[14])
    defparam i126_4_lut_adj_155.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_156 (.I0(tc_plus_1[3]), .I1(n748), .I2(n86), 
            .I3(n89_adj_754), .O(n92_adj_2));   // ../tok.v(141[5] 148[14])
    defparam i1_4_lut_adj_156.LUT_INIT = 16'heca0;
    SB_LUT4 i125_4_lut_adj_157 (.I0(c_stk_r_c[4]), .I1(table_rd[4]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_756));   // ../tok.v(141[5] 148[14])
    defparam i125_4_lut_adj_157.LUT_INIT = 16'h0ac0;
    SB_LUT4 i27_4_lut_adj_158 (.I0(n1565), .I1(n6295), .I2(T[6]), .I3(T[0]), 
            .O(n13_adj_757));   // ../tok.v(141[5] 148[14])
    defparam i27_4_lut_adj_158.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_159 (.I0(n86), .I1(n748), .I2(tc_plus_1[4]), 
            .I3(n13_adj_757), .O(n10_adj_3));   // ../tok.v(141[5] 148[14])
    defparam i1_4_lut_adj_159.LUT_INIT = 16'heca0;
    SB_LUT4 or_98_i8_3_lut_4_lut (.I0(T[6]), .I1(n317), .I2(T[7]), .I3(A_low[3]), 
            .O(n196[7]));
    defparam or_98_i8_3_lut_4_lut.LUT_INIT = 16'hffe1;
    SB_LUT4 i125_4_lut_adj_160 (.I0(c_stk_r_c[5]), .I1(table_rd[5]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_759));   // ../tok.v(141[5] 148[14])
    defparam i125_4_lut_adj_160.LUT_INIT = 16'h0ac0;
    SB_LUT4 i314_4_lut_adj_161 (.I0(n11[4]), .I1(n190), .I2(T[5]), .I3(n867), 
            .O(n255));   // ../tok.v(106[7] 125[14])
    defparam i314_4_lut_adj_161.LUT_INIT = 16'hcac0;
    SB_LUT4 i27_4_lut_adj_162 (.I0(n1530), .I1(n6660), .I2(T[6]), .I3(T[0]), 
            .O(n13_adj_760));   // ../tok.v(141[5] 148[14])
    defparam i27_4_lut_adj_162.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_163 (.I0(n86), .I1(n748), .I2(tc_plus_1[5]), 
            .I3(n13_adj_760), .O(n10_adj_4));   // ../tok.v(141[5] 148[14])
    defparam i1_4_lut_adj_163.LUT_INIT = 16'heca0;
    SB_LUT4 i1_3_lut_4_lut (.I0(T[3]), .I1(T[4]), .I2(T[2]), .I3(T[1]), 
            .O(n4_adj_762));   // ../tok.v(106[7] 125[14])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 i305_3_lut (.I0(A_low[0]), .I1(T[0]), .I2(T[6]), .I3(GND_net), 
            .O(n464));   // ../tok.v(106[7] 125[14])
    defparam i305_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i318_4_lut (.I0(S_c[4]), .I1(n26_adj_763), .I2(T[4]), .I3(T[3]), 
            .O(n207));   // ../tok.v(106[7] 125[14])
    defparam i318_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i6822_4_lut (.I0(n207), .I1(n464), .I2(n4_adj_636), .I3(n7410), 
            .O(n6572));   // ../tok.v(106[7] 125[14])
    defparam i6822_4_lut.LUT_INIT = 16'heca0;
    SB_LUT4 i6663_3_lut_4_lut (.I0(T[3]), .I1(T[4]), .I2(T[1]), .I3(A_low[0]), 
            .O(n6324));   // ../tok.v(106[7] 125[14])
    defparam i6663_3_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i6978_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_764), 
            .I3(GND_net), .O(n6662));   // ../tok.v(141[5] 148[14])
    defparam i6978_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_2_lut_3_lut_4_lut_4_lut (.I0(T[7]), .I1(T[4]), .I2(GND_net), 
            .I3(GND_net), .O(n864));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_3_lut_4_lut_4_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i6621_4_lut (.I0(n5_adj_682), .I1(n168_adj_700), .I2(A_low[4]), 
            .I3(n9_adj_677), .O(n6569));   // ../tok.v(106[7] 125[14])
    defparam i6621_4_lut.LUT_INIT = 16'heca0;
    SB_LUT4 i1_2_lut_3_lut (.I0(T[1]), .I1(T[2]), .I2(T[4]), .I3(GND_net), 
            .O(n815));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i125_4_lut_adj_164 (.I0(c_stk_r_c[6]), .I1(table_rd[6]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_765));   // ../tok.v(141[5] 148[14])
    defparam i125_4_lut_adj_164.LUT_INIT = 16'h0ac0;
    SB_LUT4 i6809_4_lut (.I0(n222), .I1(n838), .I2(n864), .I3(A_low[4]), 
            .O(n6562));   // ../tok.v(106[7] 125[14])
    defparam i6809_4_lut.LUT_INIT = 16'hc4c0;
    SB_LUT4 i308_4_lut_adj_165 (.I0(n6569), .I1(n6567), .I2(T[4]), .I3(T[1]), 
            .O(n186));   // ../tok.v(106[7] 125[14])
    defparam i308_4_lut_adj_165.LUT_INIT = 16'hcac0;
    SB_LUT4 i317_4_lut (.I0(A_low[4]), .I1(S_c[4]), .I2(T[5]), .I3(T[0]), 
            .O(n177));   // ../tok.v(106[7] 125[14])
    defparam i317_4_lut.LUT_INIT = 16'h05c0;
    SB_LUT4 i6817_4_lut (.I0(n6556), .I1(n833), .I2(n6557), .I3(T[2]), 
            .O(n6575));   // ../tok.v(106[7] 125[14])
    defparam i6817_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_166 (.I0(n5_adj_745), .I1(T[4]), .I2(n190), .I3(n255), 
            .O(n258));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_166.LUT_INIT = 16'hb3a0;
    SB_LUT4 i27_4_lut_adj_167 (.I0(n1495), .I1(n6435), .I2(T[6]), .I3(T[0]), 
            .O(n13_adj_766));   // ../tok.v(141[5] 148[14])
    defparam i27_4_lut_adj_167.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_168 (.I0(n86), .I1(n748), .I2(tc_plus_1[6]), 
            .I3(n13_adj_766), .O(n10_adj_5));   // ../tok.v(141[5] 148[14])
    defparam i1_4_lut_adj_168.LUT_INIT = 16'heca0;
    SB_LUT4 i303_4_lut_adj_169 (.I0(n6575), .I1(n177), .I2(T[6]), .I3(n815), 
            .O(n252));   // ../tok.v(106[7] 125[14])
    defparam i303_4_lut_adj_169.LUT_INIT = 16'hca0a;
    SB_LUT4 i306_4_lut (.I0(n210), .I1(n6572), .I2(T[5]), .I3(n872), 
            .O(n174_adj_768));   // ../tok.v(106[7] 125[14])
    defparam i306_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_170 (.I0(T[3]), .I1(T[6]), .I2(n252), .I3(n258), 
            .O(n4_adj_769));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_170.LUT_INIT = 16'heca0;
    SB_LUT4 i315_4_lut (.I0(n186), .I1(n6562), .I2(T[6]), .I3(T[3]), 
            .O(n338));   // ../tok.v(106[7] 125[14])
    defparam i315_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_4_lut_adj_171 (.I0(T[7]), .I1(T[1]), .I2(n4_adj_769), .I3(n174_adj_768), 
            .O(n205_adj_770));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_171.LUT_INIT = 16'h5150;
    SB_LUT4 i6794_4_lut (.I0(n194), .I1(n205_adj_770), .I2(A_low[4]), 
            .I3(n338), .O(n6612));   // ../tok.v(104[10] 126[8])
    defparam i6794_4_lut.LUT_INIT = 16'hffec;
    SB_LUT4 i1_2_lut_3_lut_adj_172 (.I0(T[4]), .I1(T[3]), .I2(T[5]), .I3(GND_net), 
            .O(n4_adj_680));
    defparam i1_2_lut_3_lut_adj_172.LUT_INIT = 16'h0e0e;
    SB_LUT4 A__15__I_0_i5_3_lut (.I0(S_c[4]), .I1(n6612), .I2(n23_c), 
            .I3(GND_net), .O(A_[4]));   // ../tok.v(104[10] 126[8])
    defparam A__15__I_0_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6129_2_lut (.I0(depth[2]), .I1(depth[1]), .I2(GND_net), .I3(GND_net), 
            .O(n6213));
    defparam i6129_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_173 (.I0(n806), .I1(depth[0]), .I2(n6213), .I3(depth[3]), 
            .O(n748));
    defparam i1_4_lut_adj_173.LUT_INIT = 16'h0002;
    SB_LUT4 i6637_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_734), 
            .I3(GND_net), .O(n6279));   // ../tok.v(141[5] 148[14])
    defparam i6637_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 or_98_i6_3_lut (.I0(A_low[1]), .I1(T[5]), .I2(T[4]), .I3(GND_net), 
            .O(n196[5]));   // ../tok.v(107[56:76])
    defparam or_98_i6_3_lut.LUT_INIT = 16'hbebe;
    SB_LUT4 i2_4_lut_adj_174 (.I0(T[1]), .I1(n127_adj_772), .I2(T[0]), 
            .I3(n10_adj_773), .O(n6146));   // ../tok.v(141[5] 148[14])
    defparam i2_4_lut_adj_174.LUT_INIT = 16'hffcd;
    SB_LUT4 i1_3_lut_4_lut_adj_175 (.I0(T[7]), .I1(T[2]), .I2(T[1]), .I3(n4_adj_680), 
            .O(n877));   // ../tok.v(106[7] 125[14])
    defparam i1_3_lut_4_lut_adj_175.LUT_INIT = 16'hbfaa;
    SB_LUT4 i314_4_lut_adj_176 (.I0(n11[5]), .I1(n190_adj_774), .I2(T[5]), 
            .I3(n867), .O(n255_adj_775));   // ../tok.v(106[7] 125[14])
    defparam i314_4_lut_adj_176.LUT_INIT = 16'hcac0;
    SB_LUT4 i2_2_lut_adj_177 (.I0(depth[3]), .I1(n741), .I2(GND_net), 
            .I3(GND_net), .O(n7));   // ../tok.v(141[5] 148[14])
    defparam i2_2_lut_adj_177.LUT_INIT = 16'heeee;
    SB_LUT4 i4_4_lut_adj_178 (.I0(n7), .I1(n6146), .I2(depth[2]), .I3(T[5]), 
            .O(n86));   // ../tok.v(141[5] 148[14])
    defparam i4_4_lut_adj_178.LUT_INIT = 16'hfeff;
    SB_LUT4 i6738_3_lut_4_lut (.I0(A_low[5]), .I1(n16[8]), .I2(T[3]), 
            .I3(T[0]), .O(n6448));   // ../tok.v(106[7] 125[14])
    defparam i6738_3_lut_4_lut.LUT_INIT = 16'h000e;
    SB_LUT4 i305_4_lut (.I0(n196[5]), .I1(n6532), .I2(T[6]), .I3(T[4]), 
            .O(n213));   // ../tok.v(106[7] 125[14])
    defparam i305_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i318_4_lut_adj_179 (.I0(S_c[5]), .I1(n26_adj_763), .I2(T[4]), 
            .I3(T[3]), .O(n207_adj_776));   // ../tok.v(106[7] 125[14])
    defparam i318_4_lut_adj_179.LUT_INIT = 16'hc0ca;
    SB_LUT4 i7025_2_lut_3_lut_4_lut (.I0(n14), .I1(T[0]), .I2(T[1]), .I3(n10_c), 
            .O(write_flag));   // ../tok.v(20[34:42])
    defparam i7025_2_lut_3_lut_4_lut.LUT_INIT = 16'h0040;
    SB_LUT4 i6973_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_759), 
            .I3(GND_net), .O(n6660));   // ../tok.v(141[5] 148[14])
    defparam i6973_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i6747_3_lut_4_lut (.I0(A_low[4]), .I1(n16[8]), .I2(T[3]), 
            .I3(T[0]), .O(n6462));   // ../tok.v(106[7] 125[14])
    defparam i6747_3_lut_4_lut.LUT_INIT = 16'h000e;
    SB_LUT4 i6949_4_lut (.I0(n5_adj_682), .I1(n168_adj_690), .I2(A_low[5]), 
            .I3(n9_adj_677), .O(n6526));   // ../tok.v(106[7] 125[14])
    defparam i6949_4_lut.LUT_INIT = 16'heca0;
    SB_LUT4 i2679_3_lut_3_lut (.I0(T[0]), .I1(T[1]), .I2(T[2]), .I3(GND_net), 
            .O(n2679));
    defparam i2679_3_lut_3_lut.LUT_INIT = 16'hb7b7;
    SB_LUT4 i6793_4_lut (.I0(n222), .I1(n838), .I2(n866), .I3(A_low[5]), 
            .O(n6520));   // ../tok.v(106[7] 125[14])
    defparam i6793_4_lut.LUT_INIT = 16'hc4c0;
    SB_LUT4 i308_4_lut_adj_180 (.I0(n6526), .I1(n6525), .I2(T[4]), .I3(T[1]), 
            .O(n186_adj_777));   // ../tok.v(106[7] 125[14])
    defparam i308_4_lut_adj_180.LUT_INIT = 16'hcac0;
    SB_LUT4 i6683_3_lut_4_lut (.I0(T[6]), .I1(T[4]), .I2(n4_adj_635), 
            .I3(T[1]), .O(n6341));   // ../tok.v(106[7] 125[14])
    defparam i6683_3_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i1_2_lut_adj_181 (.I0(T[4]), .I1(T[1]), .I2(GND_net), .I3(GND_net), 
            .O(n2573));   // ../tok.v(141[5] 148[14])
    defparam i1_2_lut_adj_181.LUT_INIT = 16'heeee;
    SB_LUT4 i12_4_lut_adj_182 (.I0(A[11]), .I1(A[9]), .I2(A[14]), .I3(A[15]), 
            .O(n28_adj_778));   // ../tok.v(146[37:38])
    defparam i12_4_lut_adj_182.LUT_INIT = 16'hfffe;
    SB_LUT4 i317_4_lut_adj_183 (.I0(A_low[5]), .I1(S_c[5]), .I2(T[5]), 
            .I3(T[0]), .O(n177_adj_779));   // ../tok.v(106[7] 125[14])
    defparam i317_4_lut_adj_183.LUT_INIT = 16'h05c0;
    SB_LUT4 i6800_4_lut (.I0(n6514), .I1(n833), .I2(n6515), .I3(T[2]), 
            .O(n6534));   // ../tok.v(106[7] 125[14])
    defparam i6800_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_184 (.I0(n5_adj_745), .I1(T[4]), .I2(n190_adj_774), 
            .I3(n255_adj_775), .O(n258_adj_780));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_184.LUT_INIT = 16'hb3a0;
    SB_LUT4 i10_4_lut_adj_185 (.I0(A[8]), .I1(A_low[3]), .I2(A[13]), .I3(A_low[5]), 
            .O(n26_adj_781));   // ../tok.v(146[37:38])
    defparam i10_4_lut_adj_185.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_186 (.I0(A[10]), .I1(A_low[2]), .I2(A[12]), 
            .I3(\A_low[7] ), .O(n27_adj_782));   // ../tok.v(146[37:38])
    defparam i11_4_lut_adj_186.LUT_INIT = 16'hfffe;
    SB_LUT4 i303_4_lut_adj_187 (.I0(n6534), .I1(n177_adj_779), .I2(T[6]), 
            .I3(n815), .O(n252_adj_783));   // ../tok.v(106[7] 125[14])
    defparam i303_4_lut_adj_187.LUT_INIT = 16'hca0a;
    SB_LUT4 i306_4_lut_adj_188 (.I0(n210_adj_784), .I1(n6529), .I2(T[5]), 
            .I3(n872), .O(n174_adj_785));   // ../tok.v(106[7] 125[14])
    defparam i306_4_lut_adj_188.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_189 (.I0(T[3]), .I1(T[6]), .I2(n252_adj_783), 
            .I3(n258_adj_780), .O(n4_adj_786));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_189.LUT_INIT = 16'heca0;
    SB_LUT4 i315_4_lut_adj_190 (.I0(n186_adj_777), .I1(n6520), .I2(T[6]), 
            .I3(T[3]), .O(n338_adj_787));   // ../tok.v(106[7] 125[14])
    defparam i315_4_lut_adj_190.LUT_INIT = 16'hc0ca;
    SB_LUT4 i9_4_lut_adj_191 (.I0(A_low[0]), .I1(A_low[1]), .I2(A_low[6]), 
            .I3(A_low[4]), .O(n25_adj_788));   // ../tok.v(146[37:38])
    defparam i9_4_lut_adj_191.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut_adj_192 (.I0(n25_adj_788), .I1(n27_adj_782), .I2(n26_adj_781), 
            .I3(n28_adj_778), .O(tc__7__N_133));   // ../tok.v(146[37:38])
    defparam i15_4_lut_adj_192.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_193 (.I0(T[7]), .I1(T[1]), .I2(n4_adj_786), .I3(n174_adj_785), 
            .O(n205_adj_789));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_193.LUT_INIT = 16'h5150;
    SB_LUT4 i1_2_lut_adj_194 (.I0(T[1]), .I1(T[4]), .I2(GND_net), .I3(GND_net), 
            .O(n4_adj_726));   // ../tok.v(141[5] 148[14])
    defparam i1_2_lut_adj_194.LUT_INIT = 16'h8888;
    SB_LUT4 i6777_4_lut (.I0(n194), .I1(n205_adj_789), .I2(A_low[5]), 
            .I3(n338_adj_787), .O(n6610));   // ../tok.v(104[10] 126[8])
    defparam i6777_4_lut.LUT_INIT = 16'hffec;
    SB_LUT4 i125_4_lut_adj_195 (.I0(c_stk_r_c[7]), .I1(table_rd[7]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_764));   // ../tok.v(141[5] 148[14])
    defparam i125_4_lut_adj_195.LUT_INIT = 16'h0ac0;
    SB_LUT4 A__15__I_0_i6_3_lut (.I0(S_c[5]), .I1(n6610), .I2(n23_c), 
            .I3(GND_net), .O(A_[5]));   // ../tok.v(104[10] 126[8])
    defparam A__15__I_0_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i27_4_lut_adj_196 (.I0(n1635), .I1(n6662), .I2(T[6]), .I3(T[0]), 
            .O(n13_adj_790));   // ../tok.v(141[5] 148[14])
    defparam i27_4_lut_adj_196.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_197 (.I0(n86), .I1(n748), .I2(tc_plus_1[7]), 
            .I3(n13_adj_790), .O(n10_adj_6));   // ../tok.v(141[5] 148[14])
    defparam i1_4_lut_adj_197.LUT_INIT = 16'heca0;
    SB_LUT4 i1_4_lut_4_lut (.I0(T[6]), .I1(T[4]), .I2(T[1]), .I3(T[3]), 
            .O(n269));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h5800;
    SB_LUT4 i6628_4_lut_4_lut (.I0(T[2]), .I1(T[1]), .I2(T[0]), .I3(T[4]), 
            .O(n6269));   // ../tok.v(59[5] 66[14])
    defparam i6628_4_lut_4_lut.LUT_INIT = 16'h8010;
    SB_LUT4 i26_3_lut (.I0(n10_adj_6), .I1(tc[7]), .I2(stall_), .I3(GND_net), 
            .O(tc_[7]));   // ../tok.v(141[5] 148[14])
    defparam i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i57_4_lut_3_lut (.I0(T[2]), .I1(T[1]), .I2(T[0]), .I3(GND_net), 
            .O(n39));   // ../tok.v(59[5] 66[14])
    defparam i57_4_lut_3_lut.LUT_INIT = 16'h6868;
    SB_LUT4 i6872_2_lut_3_lut_4_lut (.I0(A[10]), .I1(n8), .I2(T[7]), .I3(T[5]), 
            .O(n6367));   // ../tok.v(107[56:76])
    defparam i6872_2_lut_3_lut_4_lut.LUT_INIT = 16'h0b00;
    SB_LUT4 i314_4_lut_adj_198 (.I0(n11[6]), .I1(n190_adj_792), .I2(T[5]), 
            .I3(n867), .O(n255_adj_793));   // ../tok.v(106[7] 125[14])
    defparam i314_4_lut_adj_198.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_2_lut_3_lut_adj_199 (.I0(T[3]), .I1(T[7]), .I2(T[5]), .I3(GND_net), 
            .O(n806));   // ../tok.v(141[5] 148[14])
    defparam i1_2_lut_3_lut_adj_199.LUT_INIT = 16'h2020;
    SB_LUT4 i26_3_lut_adj_200 (.I0(n10_adj_5), .I1(tc[6]), .I2(stall_), 
            .I3(GND_net), .O(tc_[6]));   // ../tok.v(141[5] 148[14])
    defparam i26_3_lut_adj_200.LUT_INIT = 16'hcaca;
    SB_LUT4 i26_3_lut_adj_201 (.I0(n10_adj_4), .I1(tc[5]), .I2(stall_), 
            .I3(GND_net), .O(tc_[5]));   // ../tok.v(141[5] 148[14])
    defparam i26_3_lut_adj_201.LUT_INIT = 16'hcaca;
    SB_LUT4 i305_4_lut_adj_202 (.I0(n196[6]), .I1(n6508), .I2(T[6]), .I3(T[4]), 
            .O(n213_adj_795));   // ../tok.v(106[7] 125[14])
    defparam i305_4_lut_adj_202.LUT_INIT = 16'hcac0;
    SB_LUT4 i318_4_lut_adj_203 (.I0(S_c[6]), .I1(n26_adj_763), .I2(T[4]), 
            .I3(T[3]), .O(n207_adj_796));   // ../tok.v(106[7] 125[14])
    defparam i318_4_lut_adj_203.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_3_lut_4_lut_adj_204 (.I0(A_low[2]), .I1(T[2]), .I2(T[0]), 
            .I3(T[7]), .O(n190_adj_797));   // ../tok.v(106[7] 125[14])
    defparam i1_3_lut_4_lut_adj_204.LUT_INIT = 16'h54a8;
    SB_LUT4 i6725_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_765), 
            .I3(GND_net), .O(n6435));   // ../tok.v(141[5] 148[14])
    defparam i6725_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i26_3_lut_adj_205 (.I0(n10_adj_3), .I1(tc[4]), .I2(stall_), 
            .I3(GND_net), .O(tc_[4]));   // ../tok.v(141[5] 148[14])
    defparam i26_3_lut_adj_205.LUT_INIT = 16'hcaca;
    SB_LUT4 i129_3_lut (.I0(n92_adj_2), .I1(tc[3]), .I2(stall_), .I3(GND_net), 
            .O(tc_[3]));   // ../tok.v(141[5] 148[14])
    defparam i129_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_2_lut_3_lut (.I0(n31), .I1(T[3]), .I2(T[2]), .I3(GND_net), 
            .O(n26_adj_763));   // ../tok.v(106[7] 125[14])
    defparam i2_2_lut_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 i6778_2_lut (.I0(n196[6]), .I1(n9_adj_677), .I2(GND_net), 
            .I3(GND_net), .O(n6501));   // ../tok.v(106[7] 125[14])
    defparam i6778_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i6945_4_lut (.I0(n5_adj_682), .I1(n168_adj_710), .I2(A_low[6]), 
            .I3(n9_adj_677), .O(n6502));   // ../tok.v(106[7] 125[14])
    defparam i6945_4_lut.LUT_INIT = 16'heca0;
    SB_LUT4 i1_2_lut_3_lut_adj_206 (.I0(T[0]), .I1(T[5]), .I2(T[4]), .I3(GND_net), 
            .O(n833));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_3_lut_adj_206.LUT_INIT = 16'h0808;
    SB_LUT4 i26_3_lut_adj_207 (.I0(n10), .I1(tc[2]), .I2(stall_), .I3(GND_net), 
            .O(tc_[2]));   // ../tok.v(141[5] 148[14])
    defparam i26_3_lut_adj_207.LUT_INIT = 16'hcaca;
    SB_LUT4 i6776_4_lut (.I0(n222), .I1(n838), .I2(n865), .I3(A_low[6]), 
            .O(n6496));   // ../tok.v(106[7] 125[14])
    defparam i6776_4_lut.LUT_INIT = 16'hc4c0;
    SB_LUT4 i308_4_lut_adj_208 (.I0(n6502), .I1(n6501), .I2(T[4]), .I3(T[1]), 
            .O(n186_adj_798));   // ../tok.v(106[7] 125[14])
    defparam i308_4_lut_adj_208.LUT_INIT = 16'hcac0;
    SB_LUT4 i129_3_lut_adj_209 (.I0(n92_adj_1), .I1(tc[1]), .I2(stall_), 
            .I3(GND_net), .O(tc_[1]));   // ../tok.v(141[5] 148[14])
    defparam i129_3_lut_adj_209.LUT_INIT = 16'hcaca;
    SB_LUT4 i317_4_lut_adj_210 (.I0(A_low[6]), .I1(S_c[6]), .I2(T[5]), 
            .I3(T[0]), .O(n177_adj_799));   // ../tok.v(106[7] 125[14])
    defparam i317_4_lut_adj_210.LUT_INIT = 16'h05c0;
    SB_LUT4 i129_3_lut_adj_211 (.I0(n92), .I1(tc[0]), .I2(stall_), .I3(GND_net), 
            .O(tc_[0]));   // ../tok.v(141[5] 148[14])
    defparam i129_3_lut_adj_211.LUT_INIT = 16'hcaca;
    SB_LUT4 i2617_2_lut (.I0(S_c[15]), .I1(n15), .I2(GND_net), .I3(GND_net), 
            .O(table_wr_data[15]));   // ../tok.v(82[31:55])
    defparam i2617_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2618_2_lut (.I0(S_c[14]), .I1(n15), .I2(GND_net), .I3(GND_net), 
            .O(table_wr_data[14]));   // ../tok.v(82[31:55])
    defparam i2618_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2619_2_lut (.I0(S_c[13]), .I1(n15), .I2(GND_net), .I3(GND_net), 
            .O(table_wr_data[13]));   // ../tok.v(82[31:55])
    defparam i2619_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i6783_4_lut (.I0(n6490), .I1(n833), .I2(n6491), .I3(T[2]), 
            .O(n6510));   // ../tok.v(106[7] 125[14])
    defparam i6783_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i2542_2_lut (.I0(S_c[12]), .I1(n15), .I2(GND_net), .I3(GND_net), 
            .O(table_wr_data[12]));   // ../tok.v(82[31:55])
    defparam i2542_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_212 (.I0(n5_adj_745), .I1(T[4]), .I2(n190_adj_792), 
            .I3(n255_adj_793), .O(n258_adj_800));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_212.LUT_INIT = 16'hb3a0;
    SB_LUT4 i2583_2_lut (.I0(S_c[11]), .I1(n15), .I2(GND_net), .I3(GND_net), 
            .O(table_wr_data[11]));   // ../tok.v(82[31:55])
    defparam i2583_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i303_4_lut_adj_213 (.I0(n6510), .I1(n177_adj_799), .I2(T[6]), 
            .I3(n815), .O(n252_adj_801));   // ../tok.v(106[7] 125[14])
    defparam i303_4_lut_adj_213.LUT_INIT = 16'hca0a;
    SB_LUT4 i2622_2_lut (.I0(S_c[10]), .I1(n15), .I2(GND_net), .I3(GND_net), 
            .O(table_wr_data[10]));   // ../tok.v(82[31:55])
    defparam i2622_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2623_2_lut (.I0(S_c[9]), .I1(n15), .I2(GND_net), .I3(GND_net), 
            .O(table_wr_data[9]));   // ../tok.v(82[31:55])
    defparam i2623_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2626_2_lut (.I0(S_c[8]), .I1(n15), .I2(GND_net), .I3(GND_net), 
            .O(table_wr_data[8]));   // ../tok.v(82[31:55])
    defparam i2626_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i306_4_lut_adj_214 (.I0(n210_adj_802), .I1(n6505), .I2(T[5]), 
            .I3(n872), .O(n174_adj_803));   // ../tok.v(106[7] 125[14])
    defparam i306_4_lut_adj_214.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_215 (.I0(T[3]), .I1(T[6]), .I2(n252_adj_801), 
            .I3(n258_adj_800), .O(n4_adj_804));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_215.LUT_INIT = 16'heca0;
    SB_LUT4 i315_4_lut_adj_216 (.I0(n186_adj_798), .I1(n6496), .I2(T[6]), 
            .I3(T[3]), .O(n338_adj_805));   // ../tok.v(106[7] 125[14])
    defparam i315_4_lut_adj_216.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_4_lut_adj_217 (.I0(T[7]), .I1(T[1]), .I2(n4_adj_804), .I3(n174_adj_803), 
            .O(n205_adj_806));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_217.LUT_INIT = 16'h5150;
    SB_LUT4 S_15__I_0_i4_3_lut (.I0(tc_plus_1[3]), .I1(S_c[3]), .I2(n15), 
            .I3(GND_net), .O(table_wr_data[3]));   // ../tok.v(82[31:55])
    defparam S_15__I_0_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6759_4_lut (.I0(n194), .I1(n205_adj_806), .I2(A_low[6]), 
            .I3(n338_adj_805), .O(n6608));   // ../tok.v(104[10] 126[8])
    defparam i6759_4_lut.LUT_INIT = 16'hffec;
    SB_LUT4 A__15__I_0_i7_3_lut (.I0(S_c[6]), .I1(n6608), .I2(n23_c), 
            .I3(GND_net), .O(A_[6]));   // ../tok.v(104[10] 126[8])
    defparam A__15__I_0_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_218 (.I0(T[4]), .I1(T[6]), .I2(T[3]), .I3(GND_net), 
            .O(n872));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_3_lut_adj_218.LUT_INIT = 16'h0404;
    SB_LUT4 i6851_3_lut_4_lut (.I0(T[5]), .I1(T[2]), .I2(T[1]), .I3(n158), 
            .O(n6627));   // ../tok.v(106[7] 125[14])
    defparam i6851_3_lut_4_lut.LUT_INIT = 16'h2000;
    SB_LUT4 i1_2_lut_adj_219 (.I0(T[0]), .I1(T[3]), .I2(GND_net), .I3(GND_net), 
            .O(n4_adj_739));   // ../tok.v(39[5] 49[14])
    defparam i1_2_lut_adj_219.LUT_INIT = 16'h8888;
    SB_LUT4 i6594_2_lut (.I0(n4), .I1(T[0]), .I2(GND_net), .I3(GND_net), 
            .O(n6273));   // ../tok.v(39[5] 49[14])
    defparam i6594_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_3_lut_adj_220 (.I0(T[5]), .I1(T[2]), .I2(T[1]), .I3(GND_net), 
            .O(n821));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_3_lut_adj_220.LUT_INIT = 16'h0202;
    SB_LUT4 i49_4_lut (.I0(n6274), .I1(n6273), .I2(T[6]), .I3(T[4]), 
            .O(n34));   // ../tok.v(39[5] 49[14])
    defparam i49_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i7005_4_lut_4_lut (.I0(T[0]), .I1(T[3]), .I2(T[1]), .I3(T[2]), 
            .O(n6274));   // ../tok.v(39[5] 49[14])
    defparam i7005_4_lut_4_lut.LUT_INIT = 16'h038f;
    SB_LUT4 or_98_i7_3_lut_4_lut (.I0(A_low[2]), .I1(T[6]), .I2(T[5]), 
            .I3(T[4]), .O(n196[6]));   // ../tok.v(107[56:76])
    defparam or_98_i7_3_lut_4_lut.LUT_INIT = 16'hebbb;
    SB_LUT4 i1_2_lut_adj_221 (.I0(T[6]), .I1(T[3]), .I2(GND_net), .I3(GND_net), 
            .O(n6167));
    defparam i1_2_lut_adj_221.LUT_INIT = 16'h2222;
    SB_LUT4 stall_I_0_400_i15_2_lut (.I0(T[5]), .I1(T[6]), .I2(GND_net), 
            .I3(GND_net), .O(n15_adj_807));   // ../tok.v(134[7:19])
    defparam stall_I_0_400_i15_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i1_4_lut_adj_222 (.I0(n289), .I1(n17), .I2(n9_adj_651), .I3(n15_adj_807), 
            .O(n903));   // ../tok.v(47[7:20])
    defparam i1_4_lut_adj_222.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_223 (.I0(T[5]), .I1(T[3]), .I2(GND_net), .I3(GND_net), 
            .O(n5_adj_745));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_adj_223.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_adj_224 (.I0(T[5]), .I1(T[0]), .I2(GND_net), .I3(GND_net), 
            .O(n5_adj_713));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_adj_224.LUT_INIT = 16'h2222;
    SB_LUT4 i1_3_lut_4_lut_3_lut (.I0(T[6]), .I1(T[4]), .I2(T[1]), .I3(GND_net), 
            .O(n256_adj_749));   // ../tok.v(106[7] 125[14])
    defparam i1_3_lut_4_lut_3_lut.LUT_INIT = 16'h5858;
    SB_LUT4 i6795_2_lut_4_lut (.I0(A_low[1]), .I1(T[5]), .I2(T[4]), .I3(T[7]), 
            .O(n6525));   // ../tok.v(106[7] 125[14])
    defparam i6795_2_lut_4_lut.LUT_INIT = 16'h008c;
    SB_LUT4 i127_4_lut_4_lut (.I0(T[2]), .I1(T[0]), .I2(T[1]), .I3(T[6]), 
            .O(n127_adj_772));   // ../tok.v(141[5] 148[14])
    defparam i127_4_lut_4_lut.LUT_INIT = 16'hd53b;
    SB_LUT4 i965_3_lut_3_lut (.I0(T[4]), .I1(T[1]), .I2(T[2]), .I3(GND_net), 
            .O(n10_adj_773));   // ../tok.v(141[5] 148[14])
    defparam i965_3_lut_3_lut.LUT_INIT = 16'h5e5e;
    SB_LUT4 i1_2_lut_adj_225 (.I0(T[6]), .I1(T[7]), .I2(GND_net), .I3(GND_net), 
            .O(n4_adj_719));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_adj_225.LUT_INIT = 16'h2222;
    SB_LUT4 i314_4_lut_adj_226 (.I0(n11[7]), .I1(n190_adj_797), .I2(T[5]), 
            .I3(n867), .O(n255_adj_808));   // ../tok.v(106[7] 125[14])
    defparam i314_4_lut_adj_226.LUT_INIT = 16'hcac0;
    SB_LUT4 i4_4_lut_adj_227 (.I0(T[1]), .I1(n4_adj_719), .I2(n317), .I3(T[3]), 
            .O(n10_adj_809));
    defparam i4_4_lut_adj_227.LUT_INIT = 16'h8000;
    SB_LUT4 i6769_3_lut (.I0(A_low[2]), .I1(T[0]), .I2(T[7]), .I3(GND_net), 
            .O(n6484));   // ../tok.v(106[7] 125[14])
    defparam i6769_3_lut.LUT_INIT = 16'h4848;
    SB_LUT4 i5_4_lut_adj_228 (.I0(n6189), .I1(n10_adj_809), .I2(T[0]), 
            .I3(T[2]), .O(n273));
    defparam i5_4_lut_adj_228.LUT_INIT = 16'h0440;
    SB_LUT4 i305_4_lut_adj_229 (.I0(n196[7]), .I1(n6484), .I2(T[6]), .I3(T[4]), 
            .O(n213_adj_810));   // ../tok.v(106[7] 125[14])
    defparam i305_4_lut_adj_229.LUT_INIT = 16'hcac0;
    SB_LUT4 i318_4_lut_adj_230 (.I0(S_c[7]), .I1(n26_adj_763), .I2(T[4]), 
            .I3(T[3]), .O(n207_adj_811));   // ../tok.v(106[7] 125[14])
    defparam i318_4_lut_adj_230.LUT_INIT = 16'hc0ca;
    SB_LUT4 i289_2_lut_3_lut_4_lut (.I0(T[6]), .I1(T[5]), .I2(T[4]), .I3(T[7]), 
            .O(n8));
    defparam i289_2_lut_3_lut_4_lut.LUT_INIT = 16'hffea;
    SB_LUT4 i6811_2_lut_3_lut (.I0(A_low[0]), .I1(T[7]), .I2(T[5]), .I3(GND_net), 
            .O(n6567));   // ../tok.v(106[7] 125[14])
    defparam i6811_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 i1_2_lut_3_lut_adj_231 (.I0(T[4]), .I1(T[2]), .I2(T[0]), .I3(GND_net), 
            .O(n190));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_3_lut_adj_231.LUT_INIT = 16'ha8a8;
    SB_LUT4 i6875_2_lut_3_lut_4_lut (.I0(A[11]), .I1(n8), .I2(T[7]), .I3(T[5]), 
            .O(n6346));   // ../tok.v(107[56:76])
    defparam i6875_2_lut_3_lut_4_lut.LUT_INIT = 16'h0b00;
    SB_LUT4 i6647_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_746), 
            .I3(GND_net), .O(n6297));   // ../tok.v(141[5] 148[14])
    defparam i6647_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i6954_2_lut_3_lut (.I0(T[2]), .I1(T[0]), .I2(T[3]), .I3(GND_net), 
            .O(n6582));   // ../tok.v(106[7] 125[14])
    defparam i6954_2_lut_3_lut.LUT_INIT = 16'h0e0e;
    SB_LUT4 i6760_2_lut (.I0(n196[7]), .I1(n9_adj_677), .I2(GND_net), 
            .I3(GND_net), .O(n6477));   // ../tok.v(106[7] 125[14])
    defparam i6760_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i6836_3_lut_4_lut (.I0(T[0]), .I1(T[1]), .I2(T[4]), .I3(A_low[3]), 
            .O(n6583));   // ../tok.v(106[7] 125[14])
    defparam i6836_3_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i6644_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_756), 
            .I3(GND_net), .O(n6295));   // ../tok.v(141[5] 148[14])
    defparam i6644_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i6934_4_lut (.I0(n5_adj_682), .I1(n168), .I2(\A_low[7] ), 
            .I3(n9_adj_677), .O(n6478));   // ../tok.v(106[7] 125[14])
    defparam i6934_4_lut.LUT_INIT = 16'heca0;
    SB_LUT4 i2_3_lut_4_lut (.I0(T[5]), .I1(T[1]), .I2(T[3]), .I3(T[4]), 
            .O(n260_adj_717));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h0444;
    SB_LUT4 i6758_4_lut (.I0(n222), .I1(n838), .I2(n863), .I3(\A_low[7] ), 
            .O(n6472));   // ../tok.v(106[7] 125[14])
    defparam i6758_4_lut.LUT_INIT = 16'hc4c0;
    SB_LUT4 i308_4_lut_adj_232 (.I0(n6478), .I1(n6477), .I2(T[4]), .I3(T[1]), 
            .O(n186_adj_812));   // ../tok.v(106[7] 125[14])
    defparam i308_4_lut_adj_232.LUT_INIT = 16'hcac0;
    SB_LUT4 i317_4_lut_adj_233 (.I0(\A_low[7] ), .I1(S_c[7]), .I2(T[5]), 
            .I3(T[0]), .O(n177_adj_813));   // ../tok.v(106[7] 125[14])
    defparam i317_4_lut_adj_233.LUT_INIT = 16'h05c0;
    SB_LUT4 i6765_4_lut (.I0(n6466), .I1(n833), .I2(n6467), .I3(T[2]), 
            .O(n6486));   // ../tok.v(106[7] 125[14])
    defparam i6765_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_234 (.I0(n5_adj_745), .I1(T[4]), .I2(n190_adj_797), 
            .I3(n255_adj_808), .O(n258_adj_814));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_234.LUT_INIT = 16'hb3a0;
    SB_LUT4 i303_4_lut_adj_235 (.I0(n6486), .I1(n177_adj_813), .I2(T[6]), 
            .I3(n815), .O(n252_adj_815));   // ../tok.v(106[7] 125[14])
    defparam i303_4_lut_adj_235.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_236 (.I0(T[5]), .I1(T[6]), .I2(GND_net), .I3(GND_net), 
            .O(n5_adj_715));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_adj_236.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_237 (.I0(A_low[0]), .I1(T[5]), .I2(T[2]), 
            .I3(T[0]), .O(n190_adj_774));   // ../tok.v(110[69:88])
    defparam i1_2_lut_3_lut_4_lut_adj_237.LUT_INIT = 16'h6660;
    SB_LUT4 i1_2_lut_adj_238 (.I0(T[7]), .I1(T[5]), .I2(GND_net), .I3(GND_net), 
            .O(n9_adj_677));   // ../tok.v(141[5] 148[14])
    defparam i1_2_lut_adj_238.LUT_INIT = 16'h4444;
    SB_LUT4 i306_4_lut_adj_239 (.I0(n210_adj_816), .I1(n6481), .I2(T[5]), 
            .I3(n872), .O(n174_adj_817));   // ../tok.v(106[7] 125[14])
    defparam i306_4_lut_adj_239.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_240 (.I0(T[3]), .I1(T[6]), .I2(n252_adj_815), 
            .I3(n258_adj_814), .O(n4_adj_818));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_240.LUT_INIT = 16'heca0;
    SB_LUT4 i315_4_lut_adj_241 (.I0(n186_adj_812), .I1(n6472), .I2(T[6]), 
            .I3(T[3]), .O(n338_adj_819));   // ../tok.v(106[7] 125[14])
    defparam i315_4_lut_adj_241.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_4_lut_adj_242 (.I0(T[7]), .I1(T[1]), .I2(n4_adj_818), .I3(n174_adj_817), 
            .O(n205_adj_820));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_242.LUT_INIT = 16'h5150;
    SB_LUT4 i6630_4_lut (.I0(n194), .I1(n205_adj_820), .I2(\A_low[7] ), 
            .I3(n338_adj_819), .O(n6606));   // ../tok.v(104[10] 126[8])
    defparam i6630_4_lut.LUT_INIT = 16'hffec;
    SB_LUT4 A__15__I_0_i8_3_lut (.I0(S_c[7]), .I1(n6606), .I2(n23_c), 
            .I3(GND_net), .O(A_[7]));   // ../tok.v(104[10] 126[8])
    defparam A__15__I_0_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6106_2_lut (.I0(A_stk_delta_1__N_4), .I1(stall), .I2(GND_net), 
            .I3(GND_net), .O(n6189));
    defparam i6106_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i6943_3_lut_4_lut (.I0(A[10]), .I1(n8), .I2(T[7]), .I3(T[4]), 
            .O(n6360));   // ../tok.v(107[56:76])
    defparam i6943_3_lut_4_lut.LUT_INIT = 16'h0b00;
    SB_LUT4 i58_4_lut (.I0(n6269), .I1(n39), .I2(T[6]), .I3(T[4]), .O(n37));   // ../tok.v(59[5] 66[14])
    defparam i58_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i6855_4_lut_4_lut (.I0(T[2]), .I1(T[4]), .I2(T[5]), .I3(T[6]), 
            .O(n6621));   // ../tok.v(106[7] 125[14])
    defparam i6855_4_lut_4_lut.LUT_INIT = 16'h8f1f;
    SB_LUT4 or_100_i9_2_lut (.I0(A_low[4]), .I1(n16[8]), .I2(GND_net), 
            .I3(GND_net), .O(n11[8]));   // ../tok.v(108[40:60])
    defparam or_100_i9_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i2579_2_lut (.I0(T[7]), .I1(A_low[3]), .I2(GND_net), .I3(GND_net), 
            .O(n2602));
    defparam i2579_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i2641_2_lut_3_lut (.I0(A_low[1]), .I1(T[4]), .I2(T[1]), .I3(GND_net), 
            .O(n2665));
    defparam i2641_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i2_4_lut_adj_243 (.I0(n2679), .I1(n5_adj_821), .I2(n5_adj_715), 
            .I3(n17), .O(n2559));
    defparam i2_4_lut_adj_243.LUT_INIT = 16'hffbf;
    SB_LUT4 i312_4_lut_adj_244 (.I0(table_rd[8]), .I1(n11[8]), .I2(T[0]), 
            .I3(T[1]), .O(n203_adj_822));   // ../tok.v(106[7] 125[14])
    defparam i312_4_lut_adj_244.LUT_INIT = 16'hc0ca;
    SB_LUT4 i6975_2_lut_3_lut (.I0(T[0]), .I1(T[1]), .I2(T[4]), .I3(GND_net), 
            .O(n6644));   // ../tok.v(106[7] 125[14])
    defparam i6975_2_lut_3_lut.LUT_INIT = 16'h0808;
    SB_LUT4 i300_4_lut_adj_245 (.I0(n6462), .I1(A[8]), .I2(T[4]), .I3(n786), 
            .O(n206_adj_823));   // ../tok.v(106[7] 125[14])
    defparam i300_4_lut_adj_245.LUT_INIT = 16'h3a0a;
    SB_LUT4 i6928_4_lut (.I0(n206_adj_823), .I1(n212_adj_824), .I2(T[2]), 
            .I3(n289), .O(n6457));   // ../tok.v(106[7] 125[14])
    defparam i6928_4_lut.LUT_INIT = 16'ha0ec;
    SB_LUT4 i314_4_lut_adj_246 (.I0(A_low[0]), .I1(n6452), .I2(T[3]), 
            .I3(T[2]), .O(n161_adj_825));   // ../tok.v(106[7] 125[14])
    defparam i314_4_lut_adj_246.LUT_INIT = 16'hcac0;
    SB_LUT4 i349_4_lut_4_lut (.I0(T[1]), .I1(T[4]), .I2(T[5]), .I3(T[0]), 
            .O(n369));   // ../tok.v(106[7] 125[14])
    defparam i349_4_lut_4_lut.LUT_INIT = 16'h8505;
    SB_LUT4 i6746_4_lut (.I0(n292[8]), .I1(n4_adj_635), .I2(n31), .I3(T[4]), 
            .O(n6460));   // ../tok.v(106[7] 125[14])
    defparam i6746_4_lut.LUT_INIT = 16'h0c88;
    SB_LUT4 i299_4_lut_adj_247 (.I0(n6460), .I1(n161_adj_825), .I2(T[1]), 
            .I3(T[4]), .O(n197_adj_826));   // ../tok.v(106[7] 125[14])
    defparam i299_4_lut_adj_247.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_248 (.I0(S_c[8]), .I1(n197_adj_826), .I2(n170), 
            .I3(n4_adj_636), .O(n248_adj_827));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_248.LUT_INIT = 16'heca0;
    SB_LUT4 i308_4_lut_adj_249 (.I0(n6457), .I1(A_low[3]), .I2(T[5]), 
            .I3(n245), .O(n242_adj_828));   // ../tok.v(106[7] 125[14])
    defparam i308_4_lut_adj_249.LUT_INIT = 16'h3a0a;
    SB_LUT4 i1_4_lut_adj_250 (.I0(T[6]), .I1(T[5]), .I2(n242_adj_828), 
            .I3(n248_adj_827), .O(n200_adj_829));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_250.LUT_INIT = 16'heca0;
    SB_LUT4 i310_4_lut_adj_251 (.I0(A[8]), .I1(n2602), .I2(T[0]), .I3(n289), 
            .O(n215_adj_830));   // ../tok.v(106[7] 125[14])
    defparam i310_4_lut_adj_251.LUT_INIT = 16'h303a;
    SB_LUT4 i1_4_lut_4_lut_adj_252 (.I0(depth[1]), .I1(A_stk_delta_1__N_4), 
            .I2(n1), .I3(depth[0]), .O(n4_adj_702));   // ../tok.v(132[5] 136[14])
    defparam i1_4_lut_4_lut_adj_252.LUT_INIT = 16'he0a0;
    SB_LUT4 i309_4_lut_adj_253 (.I0(n847), .I1(n6456), .I2(T[4]), .I3(A[8]), 
            .O(n179_adj_831));   // ../tok.v(106[7] 125[14])
    defparam i309_4_lut_adj_253.LUT_INIT = 16'hcac0;
    SB_LUT4 i6792_4_lut (.I0(n6450), .I1(n821), .I2(n215_adj_830), .I3(T[6]), 
            .O(n6605));   // ../tok.v(104[10] 126[8])
    defparam i6792_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i2_4_lut_adj_254 (.I0(A[8]), .I1(T[7]), .I2(n194), .I3(n200_adj_829), 
            .O(n6_adj_832));   // ../tok.v(106[7] 125[14])
    defparam i2_4_lut_adj_254.LUT_INIT = 16'hb3a0;
    SB_LUT4 i7003_4_lut (.I0(n6605), .I1(n179_adj_831), .I2(T[6]), .I3(T[3]), 
            .O(n6604));   // ../tok.v(104[10] 126[8])
    defparam i7003_4_lut.LUT_INIT = 16'haaae;
    SB_LUT4 A__15__I_0_i9_4_lut (.I0(S_c[8]), .I1(n6604), .I2(n23_c), 
            .I3(n6_adj_832), .O(A_[8]));   // ../tok.v(104[10] 126[8])
    defparam A__15__I_0_i9_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i1_2_lut_3_lut_adj_255 (.I0(n891), .I1(uart_rx_valid), .I2(uart_stall_N_46), 
            .I3(GND_net), .O(uart_stall));
    defparam i1_2_lut_3_lut_adj_255.LUT_INIT = 16'hf1f1;
    SB_LUT4 i2_4_lut_4_lut (.I0(depth[0]), .I1(A_stk_delta_1__N_4), .I2(n1), 
            .I3(depth[1]), .O(depth_[1]));   // ../tok.v(132[5] 136[14])
    defparam i2_4_lut_4_lut.LUT_INIT = 16'h9f60;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_256 (.I0(A_low[1]), .I1(T[6]), .I2(T[2]), 
            .I3(T[0]), .O(n190_adj_792));   // ../tok.v(110[69:88])
    defparam i1_2_lut_3_lut_4_lut_adj_256.LUT_INIT = 16'h6660;
    SB_LUT4 i1_2_lut_3_lut_adj_257 (.I0(n891), .I1(uart_rx_valid), .I2(uart_stall_N_46), 
            .I3(GND_net), .O(n5));
    defparam i1_2_lut_3_lut_adj_257.LUT_INIT = 16'h0e0e;
    SB_LUT4 i6679_3_lut_4_lut (.I0(A[11]), .I1(n16[8]), .I2(T[3]), .I3(T[0]), 
            .O(n6358));   // ../tok.v(106[7] 125[14])
    defparam i6679_3_lut_4_lut.LUT_INIT = 16'h000e;
    SB_LUT4 or_100_i10_2_lut (.I0(A_low[5]), .I1(n16[8]), .I2(GND_net), 
            .I3(GND_net), .O(n11[9]));   // ../tok.v(108[40:60])
    defparam or_100_i10_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_3_lut_adj_258 (.I0(T[1]), .I1(T[0]), .I2(T[3]), .I3(GND_net), 
            .O(n786));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_3_lut_adj_258.LUT_INIT = 16'h8080;
    SB_LUT4 i6920_2_lut (.I0(A_low[4]), .I1(T[7]), .I2(GND_net), .I3(GND_net), 
            .O(n6440));   // ../tok.v(106[7] 125[14])
    defparam i6920_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i3_3_lut_4_lut (.I0(T[4]), .I1(T[2]), .I2(T[3]), .I3(T[5]), 
            .O(n8_adj_686));   // ../tok.v(74[33:39])
    defparam i3_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7012_2_lut (.I0(uart_rx_valid), .I1(n891), .I2(GND_net), 
            .I3(GND_net), .O(uart_rd));   // ../tok.v(20[18:42])
    defparam i7012_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i312_4_lut_adj_259 (.I0(table_rd[9]), .I1(n11[9]), .I2(T[0]), 
            .I3(T[1]), .O(n203_adj_833));   // ../tok.v(106[7] 125[14])
    defparam i312_4_lut_adj_259.LUT_INIT = 16'hc0ca;
    SB_LUT4 i11_3_lut_4_lut (.I0(n222), .I1(T[3]), .I2(T[4]), .I3(n185), 
            .O(n245));   // ../tok.v(106[7] 125[14])
    defparam i11_3_lut_4_lut.LUT_INIT = 16'h3faa;
    SB_LUT4 i2_2_lut_3_lut_adj_260 (.I0(T[1]), .I1(T[4]), .I2(T[3]), .I3(GND_net), 
            .O(n222));   // ../tok.v(106[7] 125[14])
    defparam i2_2_lut_3_lut_adj_260.LUT_INIT = 16'hfefe;
    SB_LUT4 depth_3__I_0_389_i2_2_lut (.I0(depth[2]), .I1(depth[3]), .I2(GND_net), 
            .I3(GND_net), .O(n2));   // ../tok.v(132[18:24])
    defparam depth_3__I_0_389_i2_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_3_lut_adj_261 (.I0(T[1]), .I1(T[0]), .I2(T[2]), .I3(GND_net), 
            .O(n847));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_3_lut_adj_261.LUT_INIT = 16'h0808;
    SB_LUT4 i1_3_lut_4_lut_adj_262 (.I0(T[2]), .I1(T[3]), .I2(T[0]), .I3(T[1]), 
            .O(n4_adj_641));   // ../tok.v(74[24:30])
    defparam i1_3_lut_4_lut_adj_262.LUT_INIT = 16'hffef;
    SB_LUT4 i2_2_lut_4_lut (.I0(T[6]), .I1(T[7]), .I2(T[5]), .I3(T[4]), 
            .O(n14_adj_683));   // ../tok.v(74[42:48])
    defparam i2_2_lut_4_lut.LUT_INIT = 16'hdfff;
    SB_LUT4 i2_4_lut_adj_263 (.I0(T[0]), .I1(T[5]), .I2(A_stk_delta_1__N_4), 
            .I3(T[3]), .O(n6162));
    defparam i2_4_lut_adj_263.LUT_INIT = 16'h8400;
    SB_LUT4 i4_4_lut_adj_264 (.I0(T[4]), .I1(n6183), .I2(n6162), .I3(n219), 
            .O(n1));
    defparam i4_4_lut_adj_264.LUT_INIT = 16'h0010;
    SB_LUT4 i300_4_lut_adj_265 (.I0(n6448), .I1(A[9]), .I2(T[4]), .I3(n786), 
            .O(n206_adj_834));   // ../tok.v(106[7] 125[14])
    defparam i300_4_lut_adj_265.LUT_INIT = 16'h3a0a;
    SB_LUT4 i6922_4_lut (.I0(n206_adj_834), .I1(n212_adj_835), .I2(T[2]), 
            .I3(n289), .O(n6443));   // ../tok.v(106[7] 125[14])
    defparam i6922_4_lut.LUT_INIT = 16'ha0ec;
    SB_LUT4 i314_4_lut_adj_266 (.I0(A_low[1]), .I1(n6437), .I2(T[3]), 
            .I3(T[2]), .O(n161_adj_836));   // ../tok.v(106[7] 125[14])
    defparam i314_4_lut_adj_266.LUT_INIT = 16'hcac0;
    SB_LUT4 i6736_4_lut (.I0(n292[9]), .I1(n4_adj_635), .I2(n31), .I3(T[4]), 
            .O(n6446));   // ../tok.v(106[7] 125[14])
    defparam i6736_4_lut.LUT_INIT = 16'h0c88;
    SB_LUT4 i299_4_lut_adj_267 (.I0(n6446), .I1(n161_adj_836), .I2(T[1]), 
            .I3(T[4]), .O(n197_adj_837));   // ../tok.v(106[7] 125[14])
    defparam i299_4_lut_adj_267.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_268 (.I0(S_c[9]), .I1(n197_adj_837), .I2(n170), 
            .I3(n4_adj_636), .O(n248_adj_838));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_268.LUT_INIT = 16'heca0;
    SB_LUT4 i308_4_lut_adj_269 (.I0(n6443), .I1(n245), .I2(T[5]), .I3(A_low[4]), 
            .O(n242_adj_839));   // ../tok.v(106[7] 125[14])
    defparam i308_4_lut_adj_269.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_270 (.I0(T[6]), .I1(T[5]), .I2(n242_adj_839), 
            .I3(n248_adj_838), .O(n200_adj_840));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_270.LUT_INIT = 16'heca0;
    SB_LUT4 i310_4_lut_adj_271 (.I0(A[9]), .I1(n6440), .I2(T[0]), .I3(n289), 
            .O(n215_adj_841));   // ../tok.v(106[7] 125[14])
    defparam i310_4_lut_adj_271.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_2_lut_4_lut (.I0(T[3]), .I1(T[2]), .I2(T[0]), .I3(T[1]), 
            .O(n4_adj_684));   // ../tok.v(74[42:48])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hf7ff;
    SB_LUT4 i309_4_lut_adj_272 (.I0(n847), .I1(n6442), .I2(T[4]), .I3(A[9]), 
            .O(n179_adj_842));   // ../tok.v(106[7] 125[14])
    defparam i309_4_lut_adj_272.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_3_lut_adj_273 (.I0(T[6]), .I1(n4_adj_680), .I2(T[2]), .I3(GND_net), 
            .O(n286));   // ../tok.v(106[7] 125[14])
    defparam i1_3_lut_adj_273.LUT_INIT = 16'hdcdc;
    SB_LUT4 i6655_4_lut (.I0(n6433), .I1(n821), .I2(n215_adj_841), .I3(T[6]), 
            .O(n6602));   // ../tok.v(104[10] 126[8])
    defparam i6655_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1_2_lut_4_lut_4_lut (.I0(T[3]), .I1(T[2]), .I2(T[0]), .I3(T[1]), 
            .O(n867));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_4_lut_4_lut.LUT_INIT = 16'h1514;
    SB_LUT4 i2_4_lut_adj_274 (.I0(A[9]), .I1(T[7]), .I2(n194), .I3(n200_adj_840), 
            .O(n6_adj_843));   // ../tok.v(106[7] 125[14])
    defparam i2_4_lut_adj_274.LUT_INIT = 16'hb3a0;
    SB_LUT4 i6987_4_lut (.I0(n6602), .I1(n179_adj_842), .I2(T[6]), .I3(T[3]), 
            .O(n6601));   // ../tok.v(104[10] 126[8])
    defparam i6987_4_lut.LUT_INIT = 16'haaae;
    SB_LUT4 A__15__I_0_i10_4_lut (.I0(S_c[9]), .I1(n6601), .I2(n23_c), 
            .I3(n6_adj_843), .O(A_[9]));   // ../tok.v(104[10] 126[8])
    defparam A__15__I_0_i10_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 equal_106_i14_2_lut (.I0(A[13]), .I1(S_c[13]), .I2(GND_net), 
            .I3(GND_net), .O(n14_adj_844));   // ../tok.v(115[20:26])
    defparam equal_106_i14_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i2_3_lut_4_lut_adj_275 (.I0(n14), .I1(n4_adj_648), .I2(T[2]), 
            .I3(T[3]), .O(n891));   // ../tok.v(20[34:42])
    defparam i2_3_lut_4_lut_adj_275.LUT_INIT = 16'hffbf;
    SB_LUT4 i4_4_lut_adj_276 (.I0(A_low[3]), .I1(A_low[5]), .I2(S_c[3]), 
            .I3(S_c[5]), .O(n20_adj_845));   // ../tok.v(115[20:26])
    defparam i4_4_lut_adj_276.LUT_INIT = 16'h7bde;
    SB_LUT4 i8_4_lut_adj_277 (.I0(A[9]), .I1(A[15]), .I2(S_c[9]), .I3(S_c[15]), 
            .O(n24_adj_846));   // ../tok.v(115[20:26])
    defparam i8_4_lut_adj_277.LUT_INIT = 16'h7bde;
    SB_LUT4 i6_4_lut_adj_278 (.I0(A_low[2]), .I1(\A_low[7] ), .I2(S_c[2]), 
            .I3(S_c[7]), .O(n22_adj_847));   // ../tok.v(115[20:26])
    defparam i6_4_lut_adj_278.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut_adj_279 (.I0(A[11]), .I1(A[14]), .I2(S_c[11]), .I3(S_c[14]), 
            .O(n23_adj_848));   // ../tok.v(115[20:26])
    defparam i7_4_lut_adj_279.LUT_INIT = 16'h7bde;
    SB_LUT4 i5_4_lut_adj_280 (.I0(A[10]), .I1(A[12]), .I2(S_c[10]), .I3(S_c[12]), 
            .O(n21_adj_849));   // ../tok.v(115[20:26])
    defparam i5_4_lut_adj_280.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_4_lut_adj_281 (.I0(A_low[1]), .I1(A_low[4]), .I2(S[1]), 
            .I3(S_c[4]), .O(n18_adj_850));   // ../tok.v(115[20:26])
    defparam i2_4_lut_adj_281.LUT_INIT = 16'h7bde;
    SB_LUT4 i10_4_lut_adj_282 (.I0(A[8]), .I1(n20_adj_845), .I2(n14_adj_844), 
            .I3(S_c[8]), .O(n26_adj_851));   // ../tok.v(115[20:26])
    defparam i10_4_lut_adj_282.LUT_INIT = 16'hfdfe;
    SB_LUT4 i14_4_lut_adj_283 (.I0(n21_adj_849), .I1(n23_adj_848), .I2(n22_adj_847), 
            .I3(n24_adj_846), .O(n30_adj_852));   // ../tok.v(115[20:26])
    defparam i14_4_lut_adj_283.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_284 (.I0(A_low[0]), .I1(A_low[6]), .I2(S[0]), 
            .I3(S_c[6]), .O(n17_adj_853));   // ../tok.v(115[20:26])
    defparam i1_4_lut_adj_284.LUT_INIT = 16'h7bde;
    SB_LUT4 i15_4_lut_adj_285 (.I0(n17_adj_853), .I1(n30_adj_852), .I2(n26_adj_851), 
            .I3(n18_adj_850), .O(n31));   // ../tok.v(115[20:26])
    defparam i15_4_lut_adj_285.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_286 (.I0(T[5]), .I1(T[0]), .I2(GND_net), .I3(GND_net), 
            .O(n4_adj_712));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_adj_286.LUT_INIT = 16'h4444;
    SB_LUT4 i6686_3_lut_4_lut (.I0(T[5]), .I1(T[4]), .I2(n225_adj_678), 
            .I3(T[0]), .O(n6351));   // ../tok.v(106[7] 125[14])
    defparam i6686_3_lut_4_lut.LUT_INIT = 16'hf8f0;
    SB_LUT4 i4_4_lut_adj_287 (.I0(n2), .I1(n219), .I2(T[0]), .I3(n6_adj_722), 
            .O(n23_c));   // ../tok.v(103[8:16])
    defparam i4_4_lut_adj_287.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_288 (.I0(depth[0]), .I1(n1), .I2(GND_net), .I3(GND_net), 
            .O(depth_[0]));
    defparam i1_2_lut_adj_288.LUT_INIT = 16'h6666;
    SB_LUT4 i3_3_lut (.I0(depth_[2]), .I1(depth_[1]), .I2(depth_[3]), 
            .I3(GND_net), .O(n8_adj_854));   // ../tok.v(104[13:27])
    defparam i3_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i7015_4_lut (.I0(depth_[0]), .I1(n23_c), .I2(n8_adj_854), 
            .I3(stall), .O(n992));
    defparam i7015_4_lut.LUT_INIT = 16'h3337;
    SB_LUT4 i6668_3_lut (.I0(T[1]), .I1(T[3]), .I2(T[6]), .I3(GND_net), 
            .O(n6331));   // ../tok.v(106[7] 125[14])
    defparam i6668_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 i361_4_lut (.I0(n6331), .I1(n4_adj_712), .I2(T[2]), .I3(T[1]), 
            .O(n238_adj_855));   // ../tok.v(106[7] 125[14])
    defparam i361_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_289 (.I0(T[5]), .I1(T[3]), .I2(n6_adj_676), .I3(T[0]), 
            .O(n298_adj_856));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_289.LUT_INIT = 16'hd5dd;
    SB_LUT4 i356_4_lut (.I0(uart_rx_data[0]), .I1(n2579), .I2(T[3]), .I3(T[2]), 
            .O(n208_adj_857));   // ../tok.v(106[7] 125[14])
    defparam i356_4_lut.LUT_INIT = 16'h3530;
    SB_LUT4 i6667_4_lut (.I0(n292[0]), .I1(n4_adj_635), .I2(n31), .I3(T[4]), 
            .O(n6328));   // ../tok.v(106[7] 125[14])
    defparam i6667_4_lut.LUT_INIT = 16'hc044;
    SB_LUT4 i2525_2_lut_4_lut (.I0(T[4]), .I1(T[3]), .I2(T[2]), .I3(T[1]), 
            .O(n2548));
    defparam i2525_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i6657_4_lut (.I0(T[3]), .I1(T[1]), .I2(A[8]), .I3(T[4]), 
            .O(n6322));   // ../tok.v(106[7] 125[14])
    defparam i6657_4_lut.LUT_INIT = 16'h3715;
    SB_LUT4 i363_4_lut (.I0(n6328), .I1(n208_adj_857), .I2(T[1]), .I3(T[4]), 
            .O(n250));   // ../tok.v(106[7] 125[14])
    defparam i363_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i6632_3_lut (.I0(n6322), .I1(T[2]), .I2(T[6]), .I3(GND_net), 
            .O(n6326));   // ../tok.v(106[7] 125[14])
    defparam i6632_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i305_4_lut_4_lut (.I0(T[3]), .I1(T[4]), .I2(T[2]), .I3(n4_adj_648), 
            .O(n326));   // ../tok.v(106[7] 125[14])
    defparam i305_4_lut_4_lut.LUT_INIT = 16'h7a0a;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_290 (.I0(T[7]), .I1(T[1]), .I2(n289), 
            .I3(A_low[2]), .O(n863));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_3_lut_4_lut_adj_290.LUT_INIT = 16'h5400;
    SB_LUT4 i2664_4_lut (.I0(T[6]), .I1(T[4]), .I2(T[3]), .I3(T[1]), 
            .O(n2692));
    defparam i2664_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_2_lut_4_lut_adj_291 (.I0(found_slot), .I1(n14), .I2(n4_adj_641), 
            .I3(n4_adj_642), .O(write_slot));   // ../tok.v(81[21:57])
    defparam i2_2_lut_4_lut_adj_291.LUT_INIT = 16'h0222;
    SB_LUT4 i1_rep_28_2_lut (.I0(T[6]), .I1(T[3]), .I2(GND_net), .I3(GND_net), 
            .O(n7154));   // ../tok.v(106[7] 125[14])
    defparam i1_rep_28_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i359_4_lut (.I0(n7154), .I1(n2692), .I2(T[0]), .I3(n815), 
            .O(n217));   // ../tok.v(106[7] 125[14])
    defparam i359_4_lut.LUT_INIT = 16'h3a30;
    SB_LUT4 i6689_3_lut_4_lut (.I0(A[10]), .I1(n16[8]), .I2(T[3]), .I3(T[0]), 
            .O(n6373));   // ../tok.v(106[7] 125[14])
    defparam i6689_3_lut_4_lut.LUT_INIT = 16'h000e;
    SB_LUT4 i364_4_lut (.I0(n6326), .I1(n250), .I2(T[0]), .I3(T[6]), 
            .O(n387));   // ../tok.v(106[7] 125[14])
    defparam i364_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i358_4_lut (.I0(table_rd[0]), .I1(n11[0]), .I2(T[0]), .I3(T[1]), 
            .O(n2696));   // ../tok.v(106[7] 125[14])
    defparam i358_4_lut.LUT_INIT = 16'hcfca;
    SB_LUT4 i1_4_lut_adj_292 (.I0(T[2]), .I1(n11[0]), .I2(n2696), .I3(n7269), 
            .O(n268));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_292.LUT_INIT = 16'h3705;
    SB_LUT4 i2_2_lut_4_lut_adj_293 (.I0(n14), .I1(T[2]), .I2(T[3]), .I3(n9_adj_651), 
            .O(n15));   // ../tok.v(74[51:57])
    defparam i2_2_lut_4_lut_adj_293.LUT_INIT = 16'hffef;
    SB_LUT4 i366_4_lut (.I0(n11[0]), .I1(n6324), .I2(T[0]), .I3(n289), 
            .O(n262_adj_858));   // ../tok.v(106[7] 125[14])
    defparam i366_4_lut.LUT_INIT = 16'hc0c5;
    SB_LUT4 i6661_4_lut (.I0(T[0]), .I1(T[3]), .I2(T[4]), .I3(GND_net), 
            .O(n6316));   // ../tok.v(106[7] 125[14])
    defparam i6661_4_lut.LUT_INIT = 16'h2a2a;
    SB_LUT4 i6669_4_lut (.I0(n262_adj_858), .I1(n268), .I2(T[2]), .I3(n289), 
            .O(n6315));   // ../tok.v(106[7] 125[14])
    defparam i6669_4_lut.LUT_INIT = 16'ha0ec;
    SB_LUT4 i1_4_lut_adj_294 (.I0(T[7]), .I1(n6315), .I2(n6316), .I3(T[5]), 
            .O(n281));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_294.LUT_INIT = 16'h5044;
    SB_LUT4 i6662_3_lut (.I0(T[6]), .I1(T[7]), .I2(T[0]), .I3(GND_net), 
            .O(n6320));   // ../tok.v(106[7] 125[14])
    defparam i6662_3_lut.LUT_INIT = 16'h3131;
    SB_LUT4 i1_4_lut_adj_295 (.I0(T[6]), .I1(T[4]), .I2(n298_adj_856), 
            .I3(n238_adj_855), .O(n4_adj_859));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_295.LUT_INIT = 16'h7350;
    SB_LUT4 i371_4_lut (.I0(n286), .I1(n241_adj_747), .I2(T[0]), .I3(T[1]), 
            .O(n394));   // ../tok.v(106[7] 125[14])
    defparam i371_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_296 (.I0(T[7]), .I1(S[0]), .I2(n387), .I3(n217), 
            .O(n254_adj_860));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_296.LUT_INIT = 16'h5150;
    SB_LUT4 i369_4_lut (.I0(A_low[0]), .I1(n6320), .I2(T[4]), .I3(n219), 
            .O(n229_adj_861));   // ../tok.v(106[7] 125[14])
    defparam i369_4_lut.LUT_INIT = 16'hc0c5;
    SB_LUT4 i1_4_lut_3_lut (.I0(T[0]), .I1(T[1]), .I2(n11[3]), .I3(GND_net), 
            .O(n236_adj_737));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_3_lut.LUT_INIT = 16'h0606;
    SB_LUT4 i1_4_lut_adj_297 (.I0(n229_adj_861), .I1(n254_adj_860), .I2(T[3]), 
            .I3(T[0]), .O(n256_adj_862));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_297.LUT_INIT = 16'hccce;
    SB_LUT4 i1_3_lut_adj_298 (.I0(n877), .I1(n394), .I2(n4_adj_859), .I3(GND_net), 
            .O(n6143));   // ../tok.v(106[7] 125[14])
    defparam i1_3_lut_adj_298.LUT_INIT = 16'hfefe;
    SB_LUT4 i402_1_lut (.I0(T[2]), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n83));   // ../tok.v(110[69:88])
    defparam i402_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i2624_4_lut (.I0(A_low[0]), .I1(T[4]), .I2(T[6]), .I3(T[3]), 
            .O(n2648));
    defparam i2624_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i6994_3_lut (.I0(T[5]), .I1(T[0]), .I2(T[6]), .I3(GND_net), 
            .O(n6334));   // ../tok.v(106[7] 125[14])
    defparam i6994_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 or_100_i11_2_lut (.I0(A_low[6]), .I1(n16[8]), .I2(GND_net), 
            .I3(GND_net), .O(n11[10]));   // ../tok.v(108[40:60])
    defparam or_100_i11_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_4_lut_adj_299 (.I0(T[3]), .I1(T[4]), .I2(T[2]), .I3(T[1]), 
            .O(n4));   // ../tok.v(39[5] 49[14])
    defparam i1_2_lut_4_lut_adj_299.LUT_INIT = 16'h8000;
    SB_LUT4 i1_4_lut_adj_300 (.I0(T[6]), .I1(A_low[0]), .I2(n281), .I3(n4_adj_762), 
            .O(n236_adj_864));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_300.LUT_INIT = 16'ha2a0;
    SB_LUT4 i2577_2_lut (.I0(T[7]), .I1(A_low[5]), .I2(GND_net), .I3(GND_net), 
            .O(n2600));
    defparam i2577_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i6700_3_lut_4_lut (.I0(A[9]), .I1(n16[8]), .I2(T[3]), .I3(T[0]), 
            .O(n6388));   // ../tok.v(106[7] 125[14])
    defparam i6700_3_lut_4_lut.LUT_INIT = 16'h000e;
    SB_LUT4 i360_4_lut (.I0(n6334), .I1(n2648), .I2(T[1]), .I3(T[7]), 
            .O(n226_adj_865));   // ../tok.v(106[7] 125[14])
    defparam i360_4_lut.LUT_INIT = 16'h303a;
    SB_LUT4 i312_4_lut_adj_301 (.I0(table_rd[10]), .I1(n11[10]), .I2(T[0]), 
            .I3(T[1]), .O(n203_adj_866));   // ../tok.v(106[7] 125[14])
    defparam i312_4_lut_adj_301.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_4_lut_adj_302 (.I0(T[2]), .I1(n11[10]), .I2(n203_adj_866), 
            .I3(n7269), .O(n212_adj_867));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_302.LUT_INIT = 16'hdc50;
    SB_LUT4 i2_4_lut_adj_303 (.I0(A_low[0]), .I1(T[5]), .I2(n6143), .I3(n256_adj_862), 
            .O(n6_adj_868));   // ../tok.v(106[7] 125[14])
    defparam i2_4_lut_adj_303.LUT_INIT = 16'hdc50;
    SB_LUT4 i300_4_lut_adj_304 (.I0(n6431), .I1(A[10]), .I2(T[4]), .I3(n786), 
            .O(n206_adj_869));   // ../tok.v(106[7] 125[14])
    defparam i300_4_lut_adj_304.LUT_INIT = 16'h3a0a;
    SB_LUT4 i6917_4_lut (.I0(n206_adj_869), .I1(n212_adj_867), .I2(T[2]), 
            .I3(n289), .O(n6426));   // ../tok.v(106[7] 125[14])
    defparam i6917_4_lut.LUT_INIT = 16'ha0ec;
    SB_LUT4 i314_4_lut_adj_305 (.I0(A_low[2]), .I1(n6421), .I2(T[3]), 
            .I3(T[2]), .O(n161_adj_870));   // ../tok.v(106[7] 125[14])
    defparam i314_4_lut_adj_305.LUT_INIT = 16'hcac0;
    SB_LUT4 i6728_4_lut (.I0(n292[10]), .I1(n4_adj_635), .I2(n31), .I3(T[4]), 
            .O(n6429));   // ../tok.v(106[7] 125[14])
    defparam i6728_4_lut.LUT_INIT = 16'h0c88;
    SB_LUT4 i1_4_lut_adj_306 (.I0(n226_adj_865), .I1(n236_adj_864), .I2(T[0]), 
            .I3(T[2]), .O(n5_adj_871));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_306.LUT_INIT = 16'hccec;
    SB_LUT4 i299_4_lut_adj_307 (.I0(n6429), .I1(n161_adj_870), .I2(T[1]), 
            .I3(T[4]), .O(n197_adj_872));   // ../tok.v(106[7] 125[14])
    defparam i299_4_lut_adj_307.LUT_INIT = 16'h0aca;
    SB_LUT4 A__15__I_0_i1_4_lut (.I0(S[0]), .I1(n5_adj_871), .I2(n23_c), 
            .I3(n6_adj_868), .O(A_[0]));   // ../tok.v(104[10] 126[8])
    defparam A__15__I_0_i1_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 i1_4_lut_adj_308 (.I0(S_c[10]), .I1(n197_adj_872), .I2(n170), 
            .I3(n4_adj_636), .O(n248_adj_873));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_308.LUT_INIT = 16'heca0;
    SB_LUT4 i6938_3_lut_4_lut (.I0(\A_low[7] ), .I1(n8), .I2(T[7]), .I3(T[4]), 
            .O(n6404));   // ../tok.v(107[56:76])
    defparam i6938_3_lut_4_lut.LUT_INIT = 16'h0b00;
    SB_LUT4 i308_4_lut_adj_309 (.I0(n6426), .I1(A_low[5]), .I2(T[5]), 
            .I3(n245), .O(n242_adj_874));   // ../tok.v(106[7] 125[14])
    defparam i308_4_lut_adj_309.LUT_INIT = 16'h3a0a;
    SB_LUT4 i1_4_lut_adj_310 (.I0(T[6]), .I1(T[5]), .I2(n242_adj_874), 
            .I3(n248_adj_873), .O(n200_adj_875));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_310.LUT_INIT = 16'heca0;
    SB_LUT4 i310_4_lut_adj_311 (.I0(A[10]), .I1(n2600), .I2(T[0]), .I3(n289), 
            .O(n215_adj_876));   // ../tok.v(106[7] 125[14])
    defparam i310_4_lut_adj_311.LUT_INIT = 16'h303a;
    SB_LUT4 i1_2_lut_4_lut_adj_312 (.I0(n2702), .I1(n891), .I2(uart_rx_valid), 
            .I3(uart_stall_N_46), .O(n796));   // ../tok.v(85[5] 92[14])
    defparam i1_2_lut_4_lut_adj_312.LUT_INIT = 16'h0054;
    SB_LUT4 i309_4_lut_adj_313 (.I0(n847), .I1(n6425), .I2(T[4]), .I3(A[10]), 
            .O(n179_adj_877));   // ../tok.v(106[7] 125[14])
    defparam i309_4_lut_adj_313.LUT_INIT = 16'hcac0;
    SB_LUT4 i6844_4_lut (.I0(n6419), .I1(n821), .I2(n215_adj_876), .I3(T[6]), 
            .O(n6553));   // ../tok.v(104[10] 126[8])
    defparam i6844_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i2_4_lut_adj_314 (.I0(A[10]), .I1(T[7]), .I2(n194), .I3(n200_adj_875), 
            .O(n6_adj_878));   // ../tok.v(106[7] 125[14])
    defparam i2_4_lut_adj_314.LUT_INIT = 16'hb3a0;
    SB_LUT4 i6937_3_lut_4_lut (.I0(A_low[6]), .I1(n8), .I2(T[7]), .I3(T[4]), 
            .O(n6419));   // ../tok.v(107[56:76])
    defparam i6937_3_lut_4_lut.LUT_INIT = 16'h0b00;
    SB_LUT4 i6995_4_lut (.I0(n6553), .I1(n179_adj_877), .I2(T[6]), .I3(T[3]), 
            .O(n6552));   // ../tok.v(104[10] 126[8])
    defparam i6995_4_lut.LUT_INIT = 16'haaae;
    SB_LUT4 A__15__I_0_i11_4_lut (.I0(S_c[10]), .I1(n6552), .I2(n23_c), 
            .I3(n6_adj_878), .O(A_[10]));   // ../tok.v(104[10] 126[8])
    defparam A__15__I_0_i11_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i304_4_lut_4_lut (.I0(T[2]), .I1(T[0]), .I2(n11[6]), .I3(table_rd[6]), 
            .O(n210_adj_802));   // ../tok.v(110[69:88])
    defparam i304_4_lut_4_lut.LUT_INIT = 16'hd1c0;
    SB_LUT4 i304_4_lut_4_lut_adj_315 (.I0(T[2]), .I1(T[0]), .I2(n11[7]), 
            .I3(table_rd[7]), .O(n210_adj_816));   // ../tok.v(110[69:88])
    defparam i304_4_lut_4_lut_adj_315.LUT_INIT = 16'hd1c0;
    SB_LUT4 i2_4_lut_4_lut_adj_316 (.I0(T[2]), .I1(T[4]), .I2(n4_adj_714), 
            .I3(n2557), .O(n218));   // ../tok.v(110[69:88])
    defparam i2_4_lut_4_lut_adj_316.LUT_INIT = 16'h00f4;
    SB_LUT4 i1_rep_284_2_lut_2_lut (.I0(T[2]), .I1(T[4]), .I2(GND_net), 
            .I3(GND_net), .O(n7410));   // ../tok.v(110[69:88])
    defparam i1_rep_284_2_lut_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i300_4_lut_4_lut (.I0(A[15]), .I1(n786), .I2(T[4]), .I3(n6358), 
            .O(n206_adj_691));   // ../tok.v(114[20:22])
    defparam i300_4_lut_4_lut.LUT_INIT = 16'h4f40;
    SB_LUT4 i6816_4_lut_4_lut (.I0(T[2]), .I1(n213_adj_795), .I2(n4_adj_636), 
            .I3(n207_adj_796), .O(n6505));   // ../tok.v(110[69:88])
    defparam i6816_4_lut_4_lut.LUT_INIT = 16'hf444;
    SB_LUT4 i6981_4_lut_4_lut (.I0(T[2]), .I1(n7475), .I2(T[6]), .I3(table_rd[1]), 
            .O(n6645));   // ../tok.v(110[69:88])
    defparam i6981_4_lut_4_lut.LUT_INIT = 16'h0010;
    SB_LUT4 i6834_4_lut_4_lut (.I0(T[2]), .I1(n213_adj_810), .I2(n4_adj_636), 
            .I3(n207_adj_811), .O(n6481));   // ../tok.v(110[69:88])
    defparam i6834_4_lut_4_lut.LUT_INIT = 16'hf444;
    SB_LUT4 i304_4_lut_4_lut_adj_317 (.I0(T[2]), .I1(T[0]), .I2(n11[4]), 
            .I3(table_rd[4]), .O(n210));   // ../tok.v(110[69:88])
    defparam i304_4_lut_4_lut_adj_317.LUT_INIT = 16'hd1c0;
    SB_LUT4 i1_4_lut_4_lut_adj_318 (.I0(T[2]), .I1(n5_adj_713), .I2(n4_adj_718), 
            .I3(n256), .O(n221));   // ../tok.v(110[69:88])
    defparam i1_4_lut_4_lut_adj_318.LUT_INIT = 16'h5450;
    SB_LUT4 i1_4_lut_4_lut_adj_319 (.I0(T[2]), .I1(n7269), .I2(n203_adj_822), 
            .I3(n11[8]), .O(n212_adj_824));   // ../tok.v(110[69:88])
    defparam i1_4_lut_4_lut_adj_319.LUT_INIT = 16'hdc50;
    SB_LUT4 or_100_i12_2_lut (.I0(\A_low[7] ), .I1(n16[8]), .I2(GND_net), 
            .I3(GND_net), .O(n11[11]));   // ../tok.v(108[40:60])
    defparam or_100_i12_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i6865_2_lut_3_lut_4_lut (.I0(A_low[4]), .I1(n8), .I2(T[7]), 
            .I3(T[5]), .O(n6456));   // ../tok.v(107[56:76])
    defparam i6865_2_lut_3_lut_4_lut.LUT_INIT = 16'h0b00;
    SB_LUT4 i6909_2_lut (.I0(A_low[6]), .I1(T[7]), .I2(GND_net), .I3(GND_net), 
            .O(n6409));   // ../tok.v(106[7] 125[14])
    defparam i6909_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i6940_3_lut_4_lut (.I0(A[9]), .I1(n8), .I2(T[7]), .I3(T[4]), 
            .O(n6375));   // ../tok.v(107[56:76])
    defparam i6940_3_lut_4_lut.LUT_INIT = 16'h0b00;
    SB_LUT4 i36_4_lut_4_lut (.I0(n2702), .I1(uart_stall), .I2(n6203), 
            .I3(stall), .O(n31_adj_637));   // ../tok.v(85[5] 92[14])
    defparam i36_4_lut_4_lut.LUT_INIT = 16'h222e;
    SB_LUT4 i312_4_lut_adj_320 (.I0(table_rd[11]), .I1(n11[11]), .I2(T[0]), 
            .I3(T[1]), .O(n203_adj_879));   // ../tok.v(106[7] 125[14])
    defparam i312_4_lut_adj_320.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_4_lut_adj_321 (.I0(T[2]), .I1(n11[11]), .I2(n203_adj_879), 
            .I3(n7269), .O(n212_adj_880));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_321.LUT_INIT = 16'hdc50;
    SB_LUT4 i300_4_lut_adj_322 (.I0(n6417), .I1(n309[11]), .I2(T[4]), 
            .I3(n786), .O(n206_adj_881));   // ../tok.v(106[7] 125[14])
    defparam i300_4_lut_adj_322.LUT_INIT = 16'hca0a;
    SB_LUT4 i6911_4_lut (.I0(n206_adj_881), .I1(n212_adj_880), .I2(T[2]), 
            .I3(n289), .O(n6412));   // ../tok.v(106[7] 125[14])
    defparam i6911_4_lut.LUT_INIT = 16'ha0ec;
    SB_LUT4 i314_4_lut_adj_323 (.I0(A_low[3]), .I1(n6406), .I2(T[3]), 
            .I3(T[2]), .O(n161_adj_882));   // ../tok.v(106[7] 125[14])
    defparam i314_4_lut_adj_323.LUT_INIT = 16'hcac0;
    SB_LUT4 i6717_4_lut (.I0(n292[11]), .I1(n4_adj_635), .I2(n31), .I3(T[4]), 
            .O(n6415));   // ../tok.v(106[7] 125[14])
    defparam i6717_4_lut.LUT_INIT = 16'h0c88;
    SB_LUT4 i299_4_lut_adj_324 (.I0(n6415), .I1(n161_adj_882), .I2(T[1]), 
            .I3(T[4]), .O(n197_adj_883));   // ../tok.v(106[7] 125[14])
    defparam i299_4_lut_adj_324.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_325 (.I0(S_c[11]), .I1(n197_adj_883), .I2(n170), 
            .I3(n4_adj_636), .O(n248_adj_884));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_325.LUT_INIT = 16'heca0;
    SB_LUT4 i6823_4_lut_4_lut (.I0(T[2]), .I1(n213), .I2(n4_adj_636), 
            .I3(n207_adj_776), .O(n6529));   // ../tok.v(110[69:88])
    defparam i6823_4_lut_4_lut.LUT_INIT = 16'hf444;
    SB_LUT4 i1_4_lut_4_lut_adj_326 (.I0(T[2]), .I1(n7269), .I2(n203_adj_833), 
            .I3(n11[9]), .O(n212_adj_835));   // ../tok.v(110[69:88])
    defparam i1_4_lut_4_lut_adj_326.LUT_INIT = 16'hdc50;
    SB_LUT4 i308_4_lut_adj_327 (.I0(n6412), .I1(n245), .I2(T[5]), .I3(A_low[6]), 
            .O(n242_adj_885));   // ../tok.v(106[7] 125[14])
    defparam i308_4_lut_adj_327.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut_3_lut (.I0(T[2]), .I1(n211_adj_741), .I2(T[5]), .I3(GND_net), 
            .O(n277));   // ../tok.v(110[69:88])
    defparam i1_3_lut_3_lut.LUT_INIT = 16'h4f4f;
    SB_LUT4 i1_4_lut_adj_328 (.I0(T[6]), .I1(T[5]), .I2(n242_adj_885), 
            .I3(n248_adj_884), .O(n200_adj_886));   // ../tok.v(106[7] 125[14])
    defparam i1_4_lut_adj_328.LUT_INIT = 16'heca0;
    SB_LUT4 i310_4_lut_adj_329 (.I0(A[11]), .I1(n6409), .I2(T[0]), .I3(n289), 
            .O(n215_adj_887));   // ../tok.v(106[7] 125[14])
    defparam i310_4_lut_adj_329.LUT_INIT = 16'hc0ca;
    SB_LUT4 i6710_3_lut_4_lut (.I0(A[8]), .I1(n16[8]), .I2(T[3]), .I3(T[0]), 
            .O(n6402));   // ../tok.v(106[7] 125[14])
    defparam i6710_3_lut_4_lut.LUT_INIT = 16'h000e;
    SB_LUT4 i309_4_lut_adj_330 (.I0(n847), .I1(n6411), .I2(T[4]), .I3(A[11]), 
            .O(n179_adj_888));   // ../tok.v(106[7] 125[14])
    defparam i309_4_lut_adj_330.LUT_INIT = 16'hcac0;
    SB_LUT4 i6821_4_lut (.I0(n6404), .I1(n821), .I2(n215_adj_887), .I3(T[6]), 
            .O(n6550));   // ../tok.v(104[10] 126[8])
    defparam i6821_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i2_4_lut_adj_331 (.I0(A[11]), .I1(T[7]), .I2(n194), .I3(n200_adj_886), 
            .O(n6_adj_889));   // ../tok.v(106[7] 125[14])
    defparam i2_4_lut_adj_331.LUT_INIT = 16'hb3a0;
    SB_LUT4 i6999_4_lut (.I0(n6550), .I1(n179_adj_888), .I2(T[6]), .I3(T[3]), 
            .O(n6549));   // ../tok.v(104[10] 126[8])
    defparam i6999_4_lut.LUT_INIT = 16'haaae;
    SB_LUT4 A__15__I_0_i12_4_lut (.I0(S_c[11]), .I1(n6549), .I2(n23_c), 
            .I3(n6_adj_889), .O(A_[11]));   // ../tok.v(104[10] 126[8])
    defparam A__15__I_0_i12_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i288_4_lut_4_lut (.I0(T[2]), .I1(T[0]), .I2(n11[2]), .I3(table_rd[2]), 
            .O(n209));   // ../tok.v(110[69:88])
    defparam i288_4_lut_4_lut.LUT_INIT = 16'hd1c0;
    SB_LUT4 i2_4_lut_4_lut_adj_332 (.I0(T[2]), .I1(T[0]), .I2(T[5]), .I3(n5_adj_821), 
            .O(n4842));   // ../tok.v(110[69:88])
    defparam i2_4_lut_4_lut_adj_332.LUT_INIT = 16'h0040;
    SB_LUT4 i304_4_lut_4_lut_adj_333 (.I0(T[2]), .I1(T[0]), .I2(n11[5]), 
            .I3(table_rd[5]), .O(n210_adj_784));   // ../tok.v(110[69:88])
    defparam i304_4_lut_4_lut_adj_333.LUT_INIT = 16'hd1c0;
    SB_LUT4 i1_2_lut_3_lut_adj_334 (.I0(T[7]), .I1(stall), .I2(A_stk_delta_1__N_4), 
            .I3(GND_net), .O(n17));   // ../tok.v(134[7:19])
    defparam i1_2_lut_3_lut_adj_334.LUT_INIT = 16'hfefe;
    SB_LUT4 i6100_2_lut_3_lut (.I0(T[7]), .I1(stall), .I2(T[6]), .I3(GND_net), 
            .O(n6183));   // ../tok.v(134[7:19])
    defparam i6100_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i6939_3_lut_4_lut (.I0(A[8]), .I1(n8), .I2(T[7]), .I3(T[4]), 
            .O(n6390));   // ../tok.v(107[56:76])
    defparam i6939_3_lut_4_lut.LUT_INIT = 16'h0b00;
    SB_LUT4 i2_3_lut_4_lut_adj_335 (.I0(depth[1]), .I1(depth[0]), .I2(T[3]), 
            .I3(T[7]), .O(n741));   // ../tok.v(132[18:24])
    defparam i2_3_lut_4_lut_adj_335.LUT_INIT = 16'hffef;
    SB_LUT4 i6936_3_lut_4_lut (.I0(A_low[5]), .I1(n8), .I2(T[7]), .I3(T[4]), 
            .O(n6433));   // ../tok.v(107[56:76])
    defparam i6936_3_lut_4_lut.LUT_INIT = 16'h0b00;
    SB_LUT4 i1_2_lut_adj_336 (.I0(T[3]), .I1(T[4]), .I2(GND_net), .I3(GND_net), 
            .O(n5_adj_821));   // ../tok.v(106[7] 125[14])
    defparam i1_2_lut_adj_336.LUT_INIT = 16'h8888;
    SB_LUT4 i427_2_lut_4_lut (.I0(n6189), .I1(n37), .I2(n806), .I3(n2559), 
            .O(rd_7__N_373));   // ../tok.v(59[5] 66[14])
    defparam i427_2_lut_4_lut.LUT_INIT = 16'h40ff;
    SB_LUT4 i2545_2_lut_4_lut (.I0(n6189), .I1(n37), .I2(n806), .I3(n2559), 
            .O(\C_stk_delta[1] ));   // ../tok.v(59[5] 66[14])
    defparam i2545_2_lut_4_lut.LUT_INIT = 16'h4000;
    \RAM(init_file="blank256.hex",data_width=16)  vals (.idx({idx}), .table_wr_data({table_wr_data[15:2], 
            \table_wr_data[1] , \table_wr_data[0] }), .table_rd({table_rd}), 
            .clk(clk), .write_slot(write_slot), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // ../tok.v(219[5] 227[2])
    UART uart (.GND_net(GND_net), .uart_rd(uart_rd), .uart_rx_valid(uart_rx_valid), 
         .clk(clk), .uart_tx_busy(uart_tx_busy), .txtick(txtick), .n1080(n1080), 
         .capture({capture}), .n1079(n1079), .uart_rx_data({uart_rx_data}), 
         .n1078(n1078), .n1077(n1077), .n1076(n1076), .n1075(n1075), 
         .\sender[2] (\sender[2] ), .n1154(n1154), .\sender[9] (\sender[9] ), 
         .n1152(n1152), .\sender[1] (\sender[1] ), .n1074(n1074), .n1073(n1073), 
         .n974(n974), .bytephase_5__N_509(bytephase_5__N_509), .n1047(n1047), 
         .n1046(n1046), .n1088(n1088), .n1087(n1087), .n1086(n1086), 
         .n1085(n1085), .tx_c(tx_c), .n23(n23), .n1084(n1084), .n1083(n1083), 
         .n1082(n1082), .n1081(n1081), .\A_low[0] (A_low[0]), .\A_low[1] (A_low[1]), 
         .\A_low[2] (A_low[2]), .\A_low[3] (A_low[3]), .\A_low[4] (A_low[4]), 
         .\A_low[5] (A_low[5]), .\A_low[6] (A_low[6]), .rx_c(rx_c), .n746(n746), 
         .n4928(n4928), .rx_data_7__N_510(rx_data_7__N_510), .n891(n891), 
         .n14(n14), .\T[0] (T[0]), .\T[1] (T[1]), .\T[3] (T[3]), .\T[2] (T[2])) /* synthesis syn_module_defined=1 */ ;   // ../tok.v(232[6] 244[2])
    RAM ram (.A_low({\A_low[7] , A_low[6:0]}), .tc_({tc_}), .T({T}), 
        .clk(clk), .write_flag(write_flag), .GND_net(GND_net), .\tail[62] (tail[62]), 
        .\tail[54] (tail[54]), .rd_7__N_373(rd_7__N_373), .\C_stk_delta[1] (\C_stk_delta[1] ), 
        .n1089(n1089), .\tail[61] (tail[61]), .\tail[53] (tail[53]), .n1090(n1090), 
        .\tail[60] (tail[60]), .\tail[52] (tail[52]), .n1094(n1094), .\tail[58] (tail[58]), 
        .\tail[50] (tail[50]), .n1095(n1095), .\c_stk_r[2] (c_stk_r_c[2]), 
        .\tail[10] (tail[10]), .\tailN[2] (tailN[2]), .\tc_plus_1[2] (tc_plus_1[2]), 
        .n4(n4_adj_726), .tc__7__N_133(tc__7__N_133), .n2573(n2573), .n1600(n1600), 
        .\tc_plus_1[4] (tc_plus_1[4]), .\c_stk_r[4] (c_stk_r_c[4]), .n1565(n1565), 
        .\tc_plus_1[5] (tc_plus_1[5]), .\c_stk_r[5] (c_stk_r_c[5]), .n1530(n1530), 
        .\tc_plus_1[6] (tc_plus_1[6]), .\c_stk_r[6] (c_stk_r_c[6]), .n1495(n1495), 
        .\tc_plus_1[7] (tc_plus_1[7]), .\c_stk_r[7] (c_stk_r_c[7]), .n1635(n1635), 
        .\S[7] (S_c[7]), .n15(n15), .\table_wr_data[7] (table_wr_data[7]), 
        .\S[6] (S_c[6]), .\table_wr_data[6] (table_wr_data[6]), .\S[5] (S_c[5]), 
        .\table_wr_data[5] (table_wr_data[5]), .\S[4] (S_c[4]), .\table_wr_data[4] (table_wr_data[4]), 
        .\S[2] (S_c[2]), .\table_wr_data[2] (table_wr_data[2]), .\tail[12] (tail[12]), 
        .\tailN[4] (tailN[4]), .\tail[13] (tail[13]), .\tailN[5] (tailN[5]), 
        .\tail[14] (tail[14]), .\tailN[6] (tailN[6]), .\tail[15] (tail[15]), 
        .\tailN[7] (tailN[7]), .\tail[26] (tail[26]), .\tailN[18] (tailN[18]), 
        .\tail[28] (tail[28]), .\tailN[20] (tailN[20]), .\tail[29] (tail[29]), 
        .\tailN[21] (tailN[21]), .\tail[30] (tail[30]), .\tailN[22] (tailN[22]), 
        .\tail[31] (tail[31]), .\tailN[23] (tailN[23]), .\tail[42] (tail[42]), 
        .\tailN[34] (tailN[34]), .\tail[44] (tail[44]), .\tailN[36] (tailN[36]), 
        .\tail[45] (tail[45]), .\tailN[37] (tailN[37]), .\tail[46] (tail[46]), 
        .\tailN[38] (tailN[38]), .\tail[47] (tail[47]), .\tailN[39] (tailN[39]), 
        .\tailN[50] (tailN[50]), .\tailN[52] (tailN[52]), .\tailN[53] (tailN[53]), 
        .\tailN[54] (tailN[54]), .\tail[63] (tail[63]), .\tailN[55] (tailN[55]), 
        .\tail[55] (tail[55]), .n1146(n1146)) /* synthesis syn_module_defined=1 */ ;   // ../tok.v(173[5] 181[2])
    \RAM(init_file="blank256.hex",data_width=16)_U0  keys (.idx({idx}), .A_low({\A_low[7] , 
            A_low[6:0]}), .\A[8] (A[8]), .\A[9] (A[9]), .\A[10] (A[10]), 
            .\A[11] (A[11]), .\A[12] (A[12]), .\A[13] (A[13]), .\A[14] (A[14]), 
            .\A[15] (A[15]), .key_rd({key_rd}), .clk(clk), .write_slot(write_slot), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // ../tok.v(206[5] 214[2])
    STACK C_stk (.\tailN[0] (\tailN[0] ), .rd_7__N_373(rd_7__N_373), .clk(clk), 
          .c_stk_r({c_stk_r_c[7:2], c_stk_r[1:0]}), .\tailN[2] (tailN[2]), 
          .n273(n273), .n15(n15_c), .tc({tc}), .n1158(n1158), .\tail[59] (\tail[59] ), 
          .n1146(n1146), .\tail[63] (tail[63]), .\tailN[55] (tailN[55]), 
          .\tail[55] (tail[55]), .\tailN[54] (tailN[54]), .\tail[54] (tail[54]), 
          .\tailN[53] (tailN[53]), .\tail[53] (tail[53]), .\tailN[52] (tailN[52]), 
          .\tail[52] (tail[52]), .\tail[51] (\tail[51] ), .\tailN[50] (tailN[50]), 
          .\tail[50] (tail[50]), .\tailN[49] (\tailN[49] ), .\tail[49] (\tail[49] ), 
          .\tailN[48] (\tailN[48] ), .\tail[48] (\tail[48] ), .\tail[47] (tail[47]), 
          .\tail[46] (tail[46]), .\tail[45] (tail[45]), .\tail[44] (tail[44]), 
          .\tail[42] (tail[42]), .\tail[41] (\tail[41] ), .\tail[40] (\tail[40] ), 
          .\tailN[39] (tailN[39]), .\tailN[38] (tailN[38]), .\tailN[37] (tailN[37]), 
          .\tailN[36] (tailN[36]), .\tailN[34] (tailN[34]), .\tailN[33] (\tailN[33] ), 
          .\tailN[32] (\tailN[32] ), .\tail[31] (tail[31]), .\tail[30] (tail[30]), 
          .\tail[29] (tail[29]), .\tail[28] (tail[28]), .\tail[26] (tail[26]), 
          .\tail[25] (\tail[25] ), .\tail[24] (\tail[24] ), .\tailN[23] (tailN[23]), 
          .\tailN[22] (tailN[22]), .\tailN[21] (tailN[21]), .\tailN[20] (tailN[20]), 
          .\tailN[18] (tailN[18]), .\tailN[17] (\tailN[17] ), .\tailN[16] (\tailN[16] ), 
          .\tail[15] (tail[15]), .\tail[14] (tail[14]), .\tail[13] (tail[13]), 
          .\tail[12] (tail[12]), .\tail[10] (tail[10]), .\tail[9] (\tail[9] ), 
          .\tail[8] (\tail[8] ), .\tailN[7] (tailN[7]), .\tailN[6] (tailN[6]), 
          .\tailN[5] (tailN[5]), .\tailN[4] (tailN[4]), .\tailN[1] (\tailN[1] ), 
          .n1050(n1050), .\tail[56] (\tail[56] ), .n1057(n1057), .\tail[57] (\tail[57] ), 
          .n1095(n1095), .\tail[58] (tail[58]), .n1094(n1094), .\tail[60] (tail[60]), 
          .n1090(n1090), .\tail[61] (tail[61]), .n1089(n1089), .\tail[62] (tail[62]), 
          .n4(n4_adj_684), .n6(n6_adj_701), .n14(n14_adj_683), .tc_plus_1({tc_plus_1[7:2], 
          \tc_plus_1[1] , \tc_plus_1[0] }), .GND_net(GND_net), .\C_stk_delta[1] (\C_stk_delta[1] )) /* synthesis syn_module_defined=1 */ ;   // ../tok.v(196[7] 202[2])
    \STACK(WIDTH=16)  A_stk (.\A_stk_delta[1] (\A_stk_delta[1] ), .GND_net(GND_net), 
            .\tailN[0] (\tailN[0]_adj_7 ), .rd_15__N_300(rd_15__N_300), 
            .clk(clk), .S({S_c[15:2], S[1:0]}), .\tail[111] (\tail[111] ), 
            .\tail[110] (\tail[110] ), .\tail[109] (\tail[109] ), .\tail[108] (\tail[108] ), 
            .\tail[107] (\tail[107] ), .\tail[106] (\tail[106] ), .\tail[105] (\tail[105] ), 
            .\tail[104] (\tail[104] ), .\tail[103] (\tail[103] ), .\tail[102] (\tail[102] ), 
            .\tail[101] (\tail[101] ), .\tail[100] (\tail[100] ), .\tail[99] (\tail[99] ), 
            .\tail[98] (\tail[98] ), .\tailN[97] (\tailN[97] ), .\tail[97] (\tail[97] ), 
            .\tailN[96] (\tailN[96] ), .\tail[96] (\tail[96] ), .\tail[81] (\tail[81] ), 
            .\tail[80] (\tail[80] ), .\tailN[65] (\tailN[65] ), .\tailN[64] (\tailN[64] ), 
            .\tail[49] (\tail[49]_adj_8 ), .\tail[48] (\tail[48]_adj_9 ), 
            .\tailN[33] (\tailN[33]_adj_10 ), .\tailN[32] (\tailN[32]_adj_11 ), 
            .\tail[17] (\tail[17] ), .\tail[16] (\tail[16] ), .\tailN[1] (\tailN[1]_adj_12 ), 
            .n1149(n1149), .\tail[127] (\tail[127] ), .n1145(n1145), .\tail[126] (\tail[126] ), 
            .n1142(n1142), .\tail[125] (\tail[125] ), .n1139(n1139), .\tail[124] (\tail[124] ), 
            .n1136(n1136), .\tail[123] (\tail[123] ), .n1133(n1133), .\tail[122] (\tail[122] ), 
            .n1130(n1130), .\tail[121] (\tail[121] ), .n1127(n1127), .\tail[112] (\tail[112] ), 
            .n1126(n1126), .\tail[120] (\tail[120] ), .n1123(n1123), .\tail[119] (\tail[119] ), 
            .n1120(n1120), .\tail[118] (\tail[118] ), .n1117(n1117), .\tail[113] (\tail[113] ), 
            .n1116(n1116), .\tail[117] (\tail[117] ), .n1113(n1113), .\tail[116] (\tail[116] ), 
            .n1110(n1110), .\tail[115] (\tail[115] ), .n1106(n1106), .\tail[114] (\tail[114] ), 
            .A_low({\A_low[7] , A_low[6:0]}), .n270(n270), .\A[8] (A[8]), 
            .\A[9] (A[9]), .\A[10] (A[10]), .\A[11] (A[11]), .\A[12] (A[12]), 
            .\A[13] (A[13]), .\A[14] (A[14]), .\A[15] (A[15])) /* synthesis syn_module_defined=1 */ ;   // ../tok.v(186[7] 192[2])
    VCC i1 (.Y(VCC_net));
    
endmodule
//
// Verilog Description of module \RAM(init_file="blank256.hex",data_width=16) 
//

module \RAM(init_file="blank256.hex",data_width=16)  (idx, table_wr_data, 
            table_rd, clk, write_slot, GND_net) /* synthesis syn_module_defined=1 */ ;
    input [7:0]idx;
    input [15:0]table_wr_data;
    output [15:0]table_rd;
    input clk;
    input write_slot;
    input GND_net;
    
    wire clk /* synthesis is_clock=1 */ ;   // ../lattice_top.v(10[6:9])
    
    wire VCC_net;
    
    SB_RAM256x16 mem1 (.RDATA({table_rd}), .RCLK(clk), .RCLKE(VCC_net), 
            .RE(VCC_net), .RADDR({idx}), .WCLK(clk), .WCLKE(VCC_net), 
            .WE(write_slot), .WADDR({idx}), .MASK({GND_net, GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net, GND_net}), .WDATA({table_wr_data}));
    defparam mem1.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem1.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem1.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem1.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem1.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem1.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem1.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem1.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem1.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem1.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem1.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem1.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem1.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem1.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem1.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem1.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    VCC i1 (.Y(VCC_net));
    
endmodule
//
// Verilog Description of module UART
//

module UART (GND_net, uart_rd, uart_rx_valid, clk, uart_tx_busy, txtick, 
            n1080, capture, n1079, uart_rx_data, n1078, n1077, n1076, 
            n1075, \sender[2] , n1154, \sender[9] , n1152, \sender[1] , 
            n1074, n1073, n974, bytephase_5__N_509, n1047, n1046, 
            n1088, n1087, n1086, n1085, tx_c, n23, n1084, n1083, 
            n1082, n1081, \A_low[0] , \A_low[1] , \A_low[2] , \A_low[3] , 
            \A_low[4] , \A_low[5] , \A_low[6] , rx_c, n746, n4928, 
            rx_data_7__N_510, n891, n14, \T[0] , \T[1] , \T[3] , 
            \T[2] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input uart_rd;
    output uart_rx_valid;
    input clk;
    output uart_tx_busy;
    output txtick;
    input n1080;
    output [9:0]capture;
    input n1079;
    output [7:0]uart_rx_data;
    input n1078;
    input n1077;
    input n1076;
    input n1075;
    output \sender[2] ;
    input n1154;
    output \sender[9] ;
    input n1152;
    output \sender[1] ;
    input n1074;
    input n1073;
    input n974;
    output bytephase_5__N_509;
    input n1047;
    input n1046;
    input n1088;
    input n1087;
    input n1086;
    input n1085;
    output tx_c;
    output n23;
    input n1084;
    input n1083;
    input n1082;
    input n1081;
    input \A_low[0] ;
    input \A_low[1] ;
    input \A_low[2] ;
    input \A_low[3] ;
    input \A_low[4] ;
    input \A_low[5] ;
    input \A_low[6] ;
    input rx_c;
    output n746;
    output n4928;
    output rx_data_7__N_510;
    input n891;
    input n14;
    input \T[0] ;
    input \T[1] ;
    input \T[3] ;
    input \T[2] ;
    
    wire clk /* synthesis is_clock=1 */ ;   // ../lattice_top.v(10[6:9])
    
    wire n4819;
    wire [5:0]bytephase;   // ../uart.v(27[11:20])
    
    wire n4820;
    wire [5:0]n539;
    
    wire VCC_net;
    wire [8:0]n41;
    wire [8:0]txclkcounter;   // ../uart.v(57[18:30])
    
    wire n4837, n4836, n4835, n4834, n922;
    wire [3:0]n21;
    
    wire n994;
    wire [3:0]sentbits;   // ../uart.v(61[11:19])
    
    wire n1013, n4833;
    wire [6:0]n33;
    wire [6:0]rxclkcounter;   // ../uart.v(28[18:30])
    
    wire rxclkcounter_6__N_476, n4832, n4831;
    wire [9:0]sender_9__N_434;
    
    wire n950;
    wire [9:0]sender;   // ../uart.v(64[11:17])
    
    wire n4830, n4829, n4828, n4827, n4826, n4825, n4824, n4823, 
        n4822, n4821, n809, n6, n6211, n2357, n2356, n12, n6223, 
        n10, n4977;
    
    SB_CARRY add_72_3 (.CI(n4819), .I0(bytephase[1]), .I1(GND_net), .CO(n4820));
    SB_LUT4 add_72_2_lut (.I0(GND_net), .I1(bytephase[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n539[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_72_2 (.CI(VCC_net), .I0(bytephase[0]), .I1(GND_net), 
            .CO(n4819));
    SB_LUT4 txclkcounter_141_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[8]), 
            .I3(n4837), .O(n41[8])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_141_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 txclkcounter_141_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[7]), 
            .I3(n4836), .O(n41[7])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_141_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY txclkcounter_141_add_4_9 (.CI(n4836), .I0(GND_net), .I1(txclkcounter[7]), 
            .CO(n4837));
    SB_LUT4 txclkcounter_141_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[6]), 
            .I3(n4835), .O(n41[6])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_141_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY txclkcounter_141_add_4_8 (.CI(n4835), .I0(GND_net), .I1(txclkcounter[6]), 
            .CO(n4836));
    SB_LUT4 txclkcounter_141_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[5]), 
            .I3(n4834), .O(n41[5])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_141_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_DFFE valid_54 (.Q(uart_rx_valid), .C(clk), .E(n922), .D(uart_rd));   // ../uart.v(50[8] 55[4])
    SB_DFFESR sentbits_143__i0 (.Q(sentbits[0]), .C(clk), .E(n994), .D(n21[0]), 
            .R(n1013));   // ../uart.v(63[52:64])
    SB_LUT4 i2_4_lut (.I0(sentbits[1]), .I1(sentbits[0]), .I2(sentbits[3]), 
            .I3(sentbits[2]), .O(uart_tx_busy));   // ../uart.v(62[13:30])
    defparam i2_4_lut.LUT_INIT = 16'hffdf;
    SB_DFFSR txclkcounter_141__i8 (.Q(txclkcounter[8]), .C(clk), .D(n41[8]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFF capture_i0_i9 (.Q(capture[9]), .C(clk), .D(n1080));   // ../uart.v(45[27:91])
    SB_DFFSR txclkcounter_141__i7 (.Q(txclkcounter[7]), .C(clk), .D(n41[7]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_CARRY txclkcounter_141_add_4_7 (.CI(n4834), .I0(GND_net), .I1(txclkcounter[5]), 
            .CO(n4835));
    SB_LUT4 txclkcounter_141_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[4]), 
            .I3(n4833), .O(n41[4])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_141_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR txclkcounter_141__i6 (.Q(txclkcounter[6]), .C(clk), .D(n41[6]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFFSR txclkcounter_141__i5 (.Q(txclkcounter[5]), .C(clk), .D(n41[5]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFFSR txclkcounter_141__i4 (.Q(txclkcounter[4]), .C(clk), .D(n41[4]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFFSR txclkcounter_141__i3 (.Q(txclkcounter[3]), .C(clk), .D(n41[3]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFFSR txclkcounter_141__i2 (.Q(txclkcounter[2]), .C(clk), .D(n41[2]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFFSR txclkcounter_141__i1 (.Q(txclkcounter[1]), .C(clk), .D(n41[1]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFFSR rxclkcounter_144__i6 (.Q(rxclkcounter[6]), .C(clk), .D(n33[6]), 
            .R(rxclkcounter_6__N_476));   // ../uart.v(31[61:77])
    SB_CARRY txclkcounter_141_add_4_6 (.CI(n4833), .I0(GND_net), .I1(txclkcounter[4]), 
            .CO(n4834));
    SB_DFFSR rxclkcounter_144__i5 (.Q(rxclkcounter[5]), .C(clk), .D(n33[5]), 
            .R(rxclkcounter_6__N_476));   // ../uart.v(31[61:77])
    SB_LUT4 txclkcounter_141_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[3]), 
            .I3(n4832), .O(n41[3])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_141_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR rxclkcounter_144__i4 (.Q(rxclkcounter[4]), .C(clk), .D(n33[4]), 
            .R(rxclkcounter_6__N_476));   // ../uart.v(31[61:77])
    SB_DFFSR rxclkcounter_144__i3 (.Q(rxclkcounter[3]), .C(clk), .D(n33[3]), 
            .R(rxclkcounter_6__N_476));   // ../uart.v(31[61:77])
    SB_DFFSR rxclkcounter_144__i2 (.Q(rxclkcounter[2]), .C(clk), .D(n33[2]), 
            .R(rxclkcounter_6__N_476));   // ../uart.v(31[61:77])
    SB_DFFSR rxclkcounter_144__i1 (.Q(rxclkcounter[1]), .C(clk), .D(n33[1]), 
            .R(rxclkcounter_6__N_476));   // ../uart.v(31[61:77])
    SB_DFF rx_data_i0_i1 (.Q(uart_rx_data[1]), .C(clk), .D(n1079));   // ../uart.v(50[8] 55[4])
    SB_DFF rx_data_i0_i2 (.Q(uart_rx_data[2]), .C(clk), .D(n1078));   // ../uart.v(50[8] 55[4])
    SB_DFF rx_data_i0_i3 (.Q(uart_rx_data[3]), .C(clk), .D(n1077));   // ../uart.v(50[8] 55[4])
    SB_DFF rx_data_i0_i4 (.Q(uart_rx_data[4]), .C(clk), .D(n1076));   // ../uart.v(50[8] 55[4])
    SB_CARRY txclkcounter_141_add_4_5 (.CI(n4832), .I0(GND_net), .I1(txclkcounter[3]), 
            .CO(n4833));
    SB_DFF rx_data_i0_i5 (.Q(uart_rx_data[5]), .C(clk), .D(n1075));   // ../uart.v(50[8] 55[4])
    SB_LUT4 txclkcounter_141_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[2]), 
            .I3(n4831), .O(n41[2])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_141_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY txclkcounter_141_add_4_4 (.CI(n4831), .I0(GND_net), .I1(txclkcounter[2]), 
            .CO(n4832));
    SB_DFFE sender_i9 (.Q(sender[8]), .C(clk), .E(n950), .D(sender_9__N_434[8]));   // ../uart.v(66[8:100])
    SB_DFFE sender_i8 (.Q(sender[7]), .C(clk), .E(n950), .D(sender_9__N_434[7]));   // ../uart.v(66[8:100])
    SB_DFFE sender_i7 (.Q(sender[6]), .C(clk), .E(n950), .D(sender_9__N_434[6]));   // ../uart.v(66[8:100])
    SB_DFFE sender_i6 (.Q(sender[5]), .C(clk), .E(n950), .D(sender_9__N_434[5]));   // ../uart.v(66[8:100])
    SB_DFFE sender_i5 (.Q(sender[4]), .C(clk), .E(n950), .D(sender_9__N_434[4]));   // ../uart.v(66[8:100])
    SB_DFFE sender_i4 (.Q(sender[3]), .C(clk), .E(n950), .D(sender_9__N_434[3]));   // ../uart.v(66[8:100])
    SB_DFFE sender_i3 (.Q(\sender[2] ), .C(clk), .E(n950), .D(sender_9__N_434[2]));   // ../uart.v(66[8:100])
    SB_DFFE sender_i10 (.Q(\sender[9] ), .C(clk), .E(VCC_net), .D(n1154));   // ../uart.v(66[8:100])
    SB_DFFE sender_i2 (.Q(\sender[1] ), .C(clk), .E(VCC_net), .D(n1152));   // ../uart.v(66[8:100])
    SB_DFF rx_data_i0_i6 (.Q(uart_rx_data[6]), .C(clk), .D(n1074));   // ../uart.v(50[8] 55[4])
    SB_DFF rx_data_i0_i7 (.Q(uart_rx_data[7]), .C(clk), .D(n1073));   // ../uart.v(50[8] 55[4])
    SB_DFFESR bytephase__i1 (.Q(bytephase[1]), .C(clk), .E(n974), .D(n539[1]), 
            .R(bytephase_5__N_509));   // ../uart.v(38[8:96])
    SB_LUT4 txclkcounter_141_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[1]), 
            .I3(n4830), .O(n41[1])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_141_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY txclkcounter_141_add_4_3 (.CI(n4830), .I0(GND_net), .I1(txclkcounter[1]), 
            .CO(n4831));
    SB_DFFESR bytephase__i2 (.Q(bytephase[2]), .C(clk), .E(n974), .D(n539[2]), 
            .R(bytephase_5__N_509));   // ../uart.v(38[8:96])
    SB_DFFESR bytephase__i3 (.Q(bytephase[3]), .C(clk), .E(n974), .D(n539[3]), 
            .R(bytephase_5__N_509));   // ../uart.v(38[8:96])
    SB_DFFSS rxclkcounter_144__i0 (.Q(rxclkcounter[0]), .C(clk), .D(n33[0]), 
            .S(rxclkcounter_6__N_476));   // ../uart.v(31[61:77])
    SB_DFFESR bytephase__i4 (.Q(bytephase[4]), .C(clk), .E(n974), .D(n539[4]), 
            .R(bytephase_5__N_509));   // ../uart.v(38[8:96])
    SB_DFFSS txclkcounter_141__i0 (.Q(txclkcounter[0]), .C(clk), .D(n41[0]), 
            .S(txtick));   // ../uart.v(59[52:68])
    SB_DFF rx_data_i0_i0 (.Q(uart_rx_data[0]), .C(clk), .D(n1047));   // ../uart.v(50[8] 55[4])
    SB_DFF capture_i0_i0 (.Q(capture[0]), .C(clk), .D(n1046));   // ../uart.v(45[27:91])
    SB_DFFESR bytephase__i5 (.Q(bytephase[5]), .C(clk), .E(n974), .D(n539[5]), 
            .R(bytephase_5__N_509));   // ../uart.v(38[8:96])
    SB_LUT4 txclkcounter_141_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[0]), 
            .I3(VCC_net), .O(n41[0])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_141_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR sentbits_143__i1 (.Q(sentbits[1]), .C(clk), .E(n994), .D(n21[1]), 
            .R(n1013));   // ../uart.v(63[52:64])
    SB_DFFESR sentbits_143__i2 (.Q(sentbits[2]), .C(clk), .E(n994), .D(n21[2]), 
            .R(n1013));   // ../uart.v(63[52:64])
    SB_DFF capture_i0_i1 (.Q(capture[1]), .C(clk), .D(n1088));   // ../uart.v(45[27:91])
    SB_DFFESR sentbits_143__i3 (.Q(sentbits[3]), .C(clk), .E(n994), .D(n21[3]), 
            .R(n1013));   // ../uart.v(63[52:64])
    SB_DFF capture_i0_i2 (.Q(capture[2]), .C(clk), .D(n1087));   // ../uart.v(45[27:91])
    SB_DFFESR bytephase__i0 (.Q(bytephase[0]), .C(clk), .E(n974), .D(n539[0]), 
            .R(bytephase_5__N_509));   // ../uart.v(38[8:96])
    SB_DFF capture_i0_i3 (.Q(capture[3]), .C(clk), .D(n1086));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i4 (.Q(capture[4]), .C(clk), .D(n1085));   // ../uart.v(45[27:91])
    SB_DFFESS sender_i1 (.Q(tx_c), .C(clk), .E(n950), .D(\sender[1] ), 
            .S(n23));   // ../uart.v(66[8:100])
    SB_DFF capture_i0_i5 (.Q(capture[5]), .C(clk), .D(n1084));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i6 (.Q(capture[6]), .C(clk), .D(n1083));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i7 (.Q(capture[7]), .C(clk), .D(n1082));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i8 (.Q(capture[8]), .C(clk), .D(n1081));   // ../uart.v(45[27:91])
    SB_CARRY txclkcounter_141_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(txclkcounter[0]), 
            .CO(n4830));
    SB_LUT4 rxclkcounter_144_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[6]), 
            .I3(n4829), .O(n33[6])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_144_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rxclkcounter_144_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[5]), 
            .I3(n4828), .O(n33[5])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_144_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rxclkcounter_144_add_4_7 (.CI(n4828), .I0(GND_net), .I1(rxclkcounter[5]), 
            .CO(n4829));
    SB_LUT4 rxclkcounter_144_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[4]), 
            .I3(n4827), .O(n33[4])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_144_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rxclkcounter_144_add_4_6 (.CI(n4827), .I0(GND_net), .I1(rxclkcounter[4]), 
            .CO(n4828));
    SB_LUT4 rxclkcounter_144_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[3]), 
            .I3(n4826), .O(n33[3])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_144_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rxclkcounter_144_add_4_5 (.CI(n4826), .I0(GND_net), .I1(rxclkcounter[3]), 
            .CO(n4827));
    SB_LUT4 rxclkcounter_144_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[2]), 
            .I3(n4825), .O(n33[2])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_144_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rxclkcounter_144_add_4_4 (.CI(n4825), .I0(GND_net), .I1(rxclkcounter[2]), 
            .CO(n4826));
    SB_LUT4 rxclkcounter_144_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[1]), 
            .I3(n4824), .O(n33[1])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_144_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rxclkcounter_144_add_4_3 (.CI(n4824), .I0(GND_net), .I1(rxclkcounter[1]), 
            .CO(n4825));
    SB_LUT4 rxclkcounter_144_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[0]), 
            .I3(VCC_net), .O(n33[0])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_144_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rxclkcounter_144_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(rxclkcounter[0]), 
            .CO(n4824));
    SB_LUT4 add_72_7_lut (.I0(GND_net), .I1(bytephase[5]), .I2(GND_net), 
            .I3(n4823), .O(n539[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_72_6_lut (.I0(GND_net), .I1(bytephase[4]), .I2(GND_net), 
            .I3(n4822), .O(n539[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_72_6 (.CI(n4822), .I0(bytephase[4]), .I1(GND_net), .CO(n4823));
    SB_LUT4 add_72_5_lut (.I0(GND_net), .I1(bytephase[3]), .I2(GND_net), 
            .I3(n4821), .O(n539[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_72_5 (.CI(n4821), .I0(bytephase[3]), .I1(GND_net), .CO(n4822));
    SB_LUT4 add_72_4_lut (.I0(GND_net), .I1(bytephase[2]), .I2(GND_net), 
            .I3(n4820), .O(n539[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_72_4 (.CI(n4820), .I0(bytephase[2]), .I1(GND_net), .CO(n4821));
    SB_LUT4 add_72_3_lut (.I0(GND_net), .I1(bytephase[1]), .I2(GND_net), 
            .I3(n4819), .O(n539[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4735_2_lut (.I0(sentbits[1]), .I1(sentbits[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21[1]));   // ../uart.v(63[52:64])
    defparam i4735_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 sender_9__I_0_i3_3_lut (.I0(\A_low[0] ), .I1(sender[3]), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_434[2]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i3_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 sender_9__I_0_i4_3_lut (.I0(\A_low[1] ), .I1(sender[4]), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_434[3]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i4_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 sender_9__I_0_i5_3_lut (.I0(\A_low[2] ), .I1(sender[5]), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_434[4]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i5_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 sender_9__I_0_i6_3_lut (.I0(\A_low[3] ), .I1(sender[6]), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_434[5]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i6_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 sender_9__I_0_i7_3_lut (.I0(\A_low[4] ), .I1(sender[7]), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_434[6]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i7_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 sender_9__I_0_i8_3_lut (.I0(\A_low[5] ), .I1(sender[8]), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_434[7]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i8_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i7027_2_lut (.I0(txtick), .I1(n23), .I2(GND_net), .I3(GND_net), 
            .O(n950));
    defparam i7027_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 sender_9__I_0_i9_3_lut (.I0(\A_low[6] ), .I1(\sender[9] ), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_434[8]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i9_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i3_4_lut (.I0(rx_c), .I1(bytephase[4]), .I2(bytephase[3]), 
            .I3(bytephase[5]), .O(n809));
    defparam i3_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 i1_2_lut (.I0(rxclkcounter[6]), .I1(rxclkcounter[3]), .I2(GND_net), 
            .I3(GND_net), .O(n6));
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i6127_3_lut (.I0(rxclkcounter[2]), .I1(rxclkcounter[5]), .I2(rxclkcounter[4]), 
            .I3(GND_net), .O(n6211));
    defparam i6127_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i4_4_lut (.I0(rxclkcounter[0]), .I1(n6211), .I2(rxclkcounter[1]), 
            .I3(n6), .O(n746));
    defparam i4_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i2_3_lut (.I0(bytephase[1]), .I1(bytephase[0]), .I2(n746), 
            .I3(GND_net), .O(n4928));
    defparam i2_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 i4749_3_lut_4_lut (.I0(sentbits[1]), .I1(sentbits[0]), .I2(sentbits[2]), 
            .I3(sentbits[3]), .O(n21[3]));   // ../uart.v(63[52:64])
    defparam i4749_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 i4742_2_lut_3_lut (.I0(sentbits[1]), .I1(sentbits[0]), .I2(sentbits[2]), 
            .I3(GND_net), .O(n21[2]));   // ../uart.v(63[52:64])
    defparam i4742_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i1_2_lut_3_lut (.I0(rx_data_7__N_510), .I1(uart_rx_valid), .I2(n891), 
            .I3(GND_net), .O(n922));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'haeae;
    SB_LUT4 i1_2_lut_3_lut_adj_20 (.I0(bytephase[1]), .I1(bytephase[0]), 
            .I2(bytephase[2]), .I3(GND_net), .O(n2357));   // ../uart.v(38[8:96])
    defparam i1_2_lut_3_lut_adj_20.LUT_INIT = 16'hfefe;
    SB_LUT4 rxrst_I_0_3_lut_4_lut (.I0(bytephase[1]), .I1(n2356), .I2(n746), 
            .I3(n809), .O(rxclkcounter_6__N_476));   // ../uart.v(31[39:54])
    defparam rxrst_I_0_3_lut_4_lut.LUT_INIT = 16'h1f0f;
    SB_LUT4 i5_4_lut (.I0(txclkcounter[1]), .I1(txclkcounter[5]), .I2(txclkcounter[8]), 
            .I3(txclkcounter[0]), .O(n12));   // ../uart.v(58[15:45])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i6139_3_lut (.I0(txclkcounter[4]), .I1(txclkcounter[6]), .I2(txclkcounter[7]), 
            .I3(GND_net), .O(n6223));
    defparam i6139_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i7019_4_lut (.I0(n6223), .I1(n12), .I2(txclkcounter[2]), .I3(txclkcounter[3]), 
            .O(txtick));   // ../uart.v(58[15:45])
    defparam i7019_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 i4_4_lut_adj_21 (.I0(uart_tx_busy), .I1(n14), .I2(\T[0] ), 
            .I3(\T[1] ), .O(n10));   // ../uart.v(62[13:30])
    defparam i4_4_lut_adj_21.LUT_INIT = 16'hfeff;
    SB_LUT4 i7042_3_lut (.I0(\T[3] ), .I1(n10), .I2(\T[2] ), .I3(GND_net), 
            .O(n23));   // ../uart.v(62[13:30])
    defparam i7042_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 i4733_1_lut (.I0(sentbits[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n21[0]));   // ../uart.v(63[52:64])
    defparam i4733_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_adj_22 (.I0(bytephase[0]), .I1(bytephase[2]), .I2(GND_net), 
            .I3(GND_net), .O(n2356));   // ../uart.v(38[8:96])
    defparam i1_2_lut_adj_22.LUT_INIT = 16'heeee;
    SB_LUT4 i3_4_lut_adj_23 (.I0(bytephase[5]), .I1(n2357), .I2(bytephase[4]), 
            .I3(bytephase[3]), .O(n4977));
    defparam i3_4_lut_adj_23.LUT_INIT = 16'hfdff;
    SB_LUT4 i2_3_lut_adj_24 (.I0(capture[9]), .I1(capture[0]), .I2(n4977), 
            .I3(GND_net), .O(rx_data_7__N_510));   // ../uart.v(52[22:35])
    defparam i2_3_lut_adj_24.LUT_INIT = 16'h0202;
    SB_LUT4 rxstop_I_0_60_4_lut (.I0(n4977), .I1(n2356), .I2(n809), .I3(bytephase[1]), 
            .O(bytephase_5__N_509));   // ../uart.v(38[36:53])
    defparam rxstop_I_0_60_4_lut.LUT_INIT = 16'h7555;
    SB_LUT4 i7022_2_lut_3_lut (.I0(txtick), .I1(uart_tx_busy), .I2(n23), 
            .I3(GND_net), .O(n1013));   // ../uart.v(63[35:49])
    defparam i7022_2_lut_3_lut.LUT_INIT = 16'h7070;
    SB_LUT4 i1_2_lut_3_lut_adj_25 (.I0(txtick), .I1(uart_tx_busy), .I2(n23), 
            .I3(GND_net), .O(n994));   // ../uart.v(63[35:49])
    defparam i1_2_lut_3_lut_adj_25.LUT_INIT = 16'hf8f8;
    VCC i1 (.Y(VCC_net));
    
endmodule
//
// Verilog Description of module RAM
//

module RAM (A_low, tc_, T, clk, write_flag, GND_net, \tail[62] , 
            \tail[54] , rd_7__N_373, \C_stk_delta[1] , n1089, \tail[61] , 
            \tail[53] , n1090, \tail[60] , \tail[52] , n1094, \tail[58] , 
            \tail[50] , n1095, \c_stk_r[2] , \tail[10] , \tailN[2] , 
            \tc_plus_1[2] , n4, tc__7__N_133, n2573, n1600, \tc_plus_1[4] , 
            \c_stk_r[4] , n1565, \tc_plus_1[5] , \c_stk_r[5] , n1530, 
            \tc_plus_1[6] , \c_stk_r[6] , n1495, \tc_plus_1[7] , \c_stk_r[7] , 
            n1635, \S[7] , n15, \table_wr_data[7] , \S[6] , \table_wr_data[6] , 
            \S[5] , \table_wr_data[5] , \S[4] , \table_wr_data[4] , 
            \S[2] , \table_wr_data[2] , \tail[12] , \tailN[4] , \tail[13] , 
            \tailN[5] , \tail[14] , \tailN[6] , \tail[15] , \tailN[7] , 
            \tail[26] , \tailN[18] , \tail[28] , \tailN[20] , \tail[29] , 
            \tailN[21] , \tail[30] , \tailN[22] , \tail[31] , \tailN[23] , 
            \tail[42] , \tailN[34] , \tail[44] , \tailN[36] , \tail[45] , 
            \tailN[37] , \tail[46] , \tailN[38] , \tail[47] , \tailN[39] , 
            \tailN[50] , \tailN[52] , \tailN[53] , \tailN[54] , \tail[63] , 
            \tailN[55] , \tail[55] , n1146) /* synthesis syn_module_defined=1 */ ;
    input [7:0]A_low;
    input [7:0]tc_;
    output [7:0]T;
    input clk;
    input write_flag;
    input GND_net;
    input \tail[62] ;
    input \tail[54] ;
    input rd_7__N_373;
    input \C_stk_delta[1] ;
    output n1089;
    input \tail[61] ;
    input \tail[53] ;
    output n1090;
    input \tail[60] ;
    input \tail[52] ;
    output n1094;
    input \tail[58] ;
    input \tail[50] ;
    output n1095;
    input \c_stk_r[2] ;
    input \tail[10] ;
    output \tailN[2] ;
    input \tc_plus_1[2] ;
    input n4;
    input tc__7__N_133;
    input n2573;
    output n1600;
    input \tc_plus_1[4] ;
    input \c_stk_r[4] ;
    output n1565;
    input \tc_plus_1[5] ;
    input \c_stk_r[5] ;
    output n1530;
    input \tc_plus_1[6] ;
    input \c_stk_r[6] ;
    output n1495;
    input \tc_plus_1[7] ;
    input \c_stk_r[7] ;
    output n1635;
    input \S[7] ;
    input n15;
    output \table_wr_data[7] ;
    input \S[6] ;
    output \table_wr_data[6] ;
    input \S[5] ;
    output \table_wr_data[5] ;
    input \S[4] ;
    output \table_wr_data[4] ;
    input \S[2] ;
    output \table_wr_data[2] ;
    input \tail[12] ;
    output \tailN[4] ;
    input \tail[13] ;
    output \tailN[5] ;
    input \tail[14] ;
    output \tailN[6] ;
    input \tail[15] ;
    output \tailN[7] ;
    input \tail[26] ;
    output \tailN[18] ;
    input \tail[28] ;
    output \tailN[20] ;
    input \tail[29] ;
    output \tailN[21] ;
    input \tail[30] ;
    output \tailN[22] ;
    input \tail[31] ;
    output \tailN[23] ;
    input \tail[42] ;
    output \tailN[34] ;
    input \tail[44] ;
    output \tailN[36] ;
    input \tail[45] ;
    output \tailN[37] ;
    input \tail[46] ;
    output \tailN[38] ;
    input \tail[47] ;
    output \tailN[39] ;
    output \tailN[50] ;
    output \tailN[52] ;
    output \tailN[53] ;
    output \tailN[54] ;
    input \tail[63] ;
    output \tailN[55] ;
    input \tail[55] ;
    output n1146;
    
    wire clk /* synthesis is_clock=1 */ ;   // ../lattice_top.v(10[6:9])
    
    wire VCC_net, n6257, n6260, n6263, n6266, n6277;
    
    SB_RAM512x8 mem2 (.RDATA({T}), .RCLK(clk), .RCLKE(VCC_net), .RE(VCC_net), 
            .RADDR({GND_net, tc_}), .WCLK(clk), .WCLKE(VCC_net), .WE(write_flag), 
            .WADDR({GND_net, A_low}), .WDATA({A_low}));
    defparam mem2.INIT_0 = 256'h000000000000000000000000000000000000000000000000000000007D22277B;
    defparam mem2.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem2.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem2.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem2.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem2.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem2.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem2.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem2.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem2.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem2.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem2.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem2.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem2.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem2.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem2.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_LUT4 i1461_4_lut (.I0(\tail[62] ), .I1(\tail[54] ), .I2(rd_7__N_373), 
            .I3(\C_stk_delta[1] ), .O(n1089));   // ../tok.v(53[13:24])
    defparam i1461_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1497_4_lut (.I0(\tail[61] ), .I1(\tail[53] ), .I2(rd_7__N_373), 
            .I3(\C_stk_delta[1] ), .O(n1090));   // ../tok.v(53[13:24])
    defparam i1497_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1533_4_lut (.I0(\tail[60] ), .I1(\tail[52] ), .I2(rd_7__N_373), 
            .I3(\C_stk_delta[1] ), .O(n1094));   // ../tok.v(53[13:24])
    defparam i1533_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1569_4_lut (.I0(\tail[58] ), .I1(\tail[50] ), .I2(rd_7__N_373), 
            .I3(\C_stk_delta[1] ), .O(n1095));   // ../tok.v(53[13:24])
    defparam i1569_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1570_3_lut (.I0(\c_stk_r[2] ), .I1(\tail[10] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[2] ));   // ../tok.v(53[13:24])
    defparam i1570_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6600_4_lut (.I0(\tc_plus_1[2] ), .I1(n4), .I2(\c_stk_r[2] ), 
            .I3(tc__7__N_133), .O(n6257));   // ../tok.v(31[14:15])
    defparam i6600_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1564_4_lut (.I0(\c_stk_r[2] ), .I1(n6257), .I2(T[2]), .I3(n2573), 
            .O(n1600));   // ../tok.v(31[14:15])
    defparam i1564_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i6609_4_lut (.I0(\tc_plus_1[4] ), .I1(n4), .I2(\c_stk_r[4] ), 
            .I3(tc__7__N_133), .O(n6260));   // ../tok.v(31[14:15])
    defparam i6609_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1528_4_lut (.I0(\c_stk_r[4] ), .I1(n6260), .I2(T[2]), .I3(n2573), 
            .O(n1565));   // ../tok.v(31[14:15])
    defparam i1528_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i6619_4_lut (.I0(\tc_plus_1[5] ), .I1(n4), .I2(\c_stk_r[5] ), 
            .I3(tc__7__N_133), .O(n6263));   // ../tok.v(31[14:15])
    defparam i6619_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1492_4_lut (.I0(\c_stk_r[5] ), .I1(n6263), .I2(T[2]), .I3(n2573), 
            .O(n1530));   // ../tok.v(31[14:15])
    defparam i1492_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i6634_4_lut (.I0(\tc_plus_1[6] ), .I1(n4), .I2(\c_stk_r[6] ), 
            .I3(tc__7__N_133), .O(n6266));   // ../tok.v(31[14:15])
    defparam i6634_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1456_4_lut (.I0(\c_stk_r[6] ), .I1(n6266), .I2(T[2]), .I3(n2573), 
            .O(n1495));   // ../tok.v(31[14:15])
    defparam i1456_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i6596_4_lut (.I0(\tc_plus_1[7] ), .I1(n4), .I2(\c_stk_r[7] ), 
            .I3(tc__7__N_133), .O(n6277));   // ../tok.v(31[14:15])
    defparam i6596_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1600_4_lut (.I0(\c_stk_r[7] ), .I1(n6277), .I2(T[2]), .I3(n2573), 
            .O(n1635));   // ../tok.v(31[14:15])
    defparam i1600_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1608_3_lut (.I0(\tc_plus_1[7] ), .I1(\S[7] ), .I2(n15), .I3(GND_net), 
            .O(\table_wr_data[7] ));
    defparam i1608_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1464_3_lut (.I0(\tc_plus_1[6] ), .I1(\S[6] ), .I2(n15), .I3(GND_net), 
            .O(\table_wr_data[6] ));
    defparam i1464_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1500_3_lut (.I0(\tc_plus_1[5] ), .I1(\S[5] ), .I2(n15), .I3(GND_net), 
            .O(\table_wr_data[5] ));
    defparam i1500_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1536_3_lut (.I0(\tc_plus_1[4] ), .I1(\S[4] ), .I2(n15), .I3(GND_net), 
            .O(\table_wr_data[4] ));
    defparam i1536_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1572_3_lut (.I0(\tc_plus_1[2] ), .I1(\S[2] ), .I2(n15), .I3(GND_net), 
            .O(\table_wr_data[2] ));
    defparam i1572_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1534_3_lut (.I0(\c_stk_r[4] ), .I1(\tail[12] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[4] ));   // ../tok.v(53[13:24])
    defparam i1534_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1498_3_lut (.I0(\c_stk_r[5] ), .I1(\tail[13] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[5] ));   // ../tok.v(53[13:24])
    defparam i1498_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1462_3_lut (.I0(\c_stk_r[6] ), .I1(\tail[14] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[6] ));   // ../tok.v(53[13:24])
    defparam i1462_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1606_3_lut (.I0(\c_stk_r[7] ), .I1(\tail[15] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[7] ));   // ../tok.v(53[13:24])
    defparam i1606_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1574_3_lut (.I0(\tail[10] ), .I1(\tail[26] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[18] ));   // ../tok.v(53[13:24])
    defparam i1574_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1538_3_lut (.I0(\tail[12] ), .I1(\tail[28] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[20] ));   // ../tok.v(53[13:24])
    defparam i1538_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1502_3_lut (.I0(\tail[13] ), .I1(\tail[29] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[21] ));   // ../tok.v(53[13:24])
    defparam i1502_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1466_3_lut (.I0(\tail[14] ), .I1(\tail[30] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[22] ));   // ../tok.v(53[13:24])
    defparam i1466_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1610_3_lut (.I0(\tail[15] ), .I1(\tail[31] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[23] ));   // ../tok.v(53[13:24])
    defparam i1610_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1571_3_lut (.I0(\tail[26] ), .I1(\tail[42] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[34] ));   // ../tok.v(53[13:24])
    defparam i1571_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1535_3_lut (.I0(\tail[28] ), .I1(\tail[44] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[36] ));   // ../tok.v(53[13:24])
    defparam i1535_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1499_3_lut (.I0(\tail[29] ), .I1(\tail[45] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[37] ));   // ../tok.v(53[13:24])
    defparam i1499_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1463_3_lut (.I0(\tail[30] ), .I1(\tail[46] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[38] ));   // ../tok.v(53[13:24])
    defparam i1463_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1607_3_lut (.I0(\tail[31] ), .I1(\tail[47] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[39] ));   // ../tok.v(53[13:24])
    defparam i1607_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1573_3_lut (.I0(\tail[42] ), .I1(\tail[58] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[50] ));   // ../tok.v(53[13:24])
    defparam i1573_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1537_3_lut (.I0(\tail[44] ), .I1(\tail[60] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[52] ));   // ../tok.v(53[13:24])
    defparam i1537_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1501_3_lut (.I0(\tail[45] ), .I1(\tail[61] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[53] ));   // ../tok.v(53[13:24])
    defparam i1501_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1465_3_lut (.I0(\tail[46] ), .I1(\tail[62] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[54] ));   // ../tok.v(53[13:24])
    defparam i1465_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1609_3_lut (.I0(\tail[47] ), .I1(\tail[63] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[55] ));   // ../tok.v(53[13:24])
    defparam i1609_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1605_4_lut (.I0(\tail[63] ), .I1(\tail[55] ), .I2(rd_7__N_373), 
            .I3(\C_stk_delta[1] ), .O(n1146));   // ../tok.v(53[13:24])
    defparam i1605_4_lut.LUT_INIT = 16'h0aca;
    VCC i1 (.Y(VCC_net));
    
endmodule
//
// Verilog Description of module \RAM(init_file="blank256.hex",data_width=16)_U0 
//

module \RAM(init_file="blank256.hex",data_width=16)_U0  (idx, A_low, \A[8] , 
            \A[9] , \A[10] , \A[11] , \A[12] , \A[13] , \A[14] , 
            \A[15] , key_rd, clk, write_slot, GND_net) /* synthesis syn_module_defined=1 */ ;
    input [7:0]idx;
    input [7:0]A_low;
    input \A[8] ;
    input \A[9] ;
    input \A[10] ;
    input \A[11] ;
    input \A[12] ;
    input \A[13] ;
    input \A[14] ;
    input \A[15] ;
    output [15:0]key_rd;
    input clk;
    input write_slot;
    input GND_net;
    
    wire clk /* synthesis is_clock=1 */ ;   // ../lattice_top.v(10[6:9])
    
    wire VCC_net;
    
    SB_RAM256x16 mem0 (.RDATA({key_rd}), .RCLK(clk), .RCLKE(VCC_net), 
            .RE(VCC_net), .RADDR({idx}), .WCLK(clk), .WCLKE(VCC_net), 
            .WE(write_slot), .WADDR({idx}), .MASK({GND_net, GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net, GND_net}), .WDATA({\A[15] , \A[14] , \A[13] , 
            \A[12] , \A[11] , \A[10] , \A[9] , \A[8] , A_low}));
    defparam mem0.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem0.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem0.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem0.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem0.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem0.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem0.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem0.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem0.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem0.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem0.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem0.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem0.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem0.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem0.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam mem0.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    VCC i1 (.Y(VCC_net));
    
endmodule
//
// Verilog Description of module STACK
//

module STACK (\tailN[0] , rd_7__N_373, clk, c_stk_r, \tailN[2] , n273, 
            n15, tc, n1158, \tail[59] , n1146, \tail[63] , \tailN[55] , 
            \tail[55] , \tailN[54] , \tail[54] , \tailN[53] , \tail[53] , 
            \tailN[52] , \tail[52] , \tail[51] , \tailN[50] , \tail[50] , 
            \tailN[49] , \tail[49] , \tailN[48] , \tail[48] , \tail[47] , 
            \tail[46] , \tail[45] , \tail[44] , \tail[42] , \tail[41] , 
            \tail[40] , \tailN[39] , \tailN[38] , \tailN[37] , \tailN[36] , 
            \tailN[34] , \tailN[33] , \tailN[32] , \tail[31] , \tail[30] , 
            \tail[29] , \tail[28] , \tail[26] , \tail[25] , \tail[24] , 
            \tailN[23] , \tailN[22] , \tailN[21] , \tailN[20] , \tailN[18] , 
            \tailN[17] , \tailN[16] , \tail[15] , \tail[14] , \tail[13] , 
            \tail[12] , \tail[10] , \tail[9] , \tail[8] , \tailN[7] , 
            \tailN[6] , \tailN[5] , \tailN[4] , \tailN[1] , n1050, 
            \tail[56] , n1057, \tail[57] , n1095, \tail[58] , n1094, 
            \tail[60] , n1090, \tail[61] , n1089, \tail[62] , n4, 
            n6, n14, tc_plus_1, GND_net, \C_stk_delta[1] ) /* synthesis syn_module_defined=1 */ ;
    input \tailN[0] ;
    input rd_7__N_373;
    input clk;
    output [7:0]c_stk_r;
    input \tailN[2] ;
    input n273;
    input n15;
    input [7:0]tc;
    input n1158;
    output \tail[59] ;
    input n1146;
    output \tail[63] ;
    input \tailN[55] ;
    output \tail[55] ;
    input \tailN[54] ;
    output \tail[54] ;
    input \tailN[53] ;
    output \tail[53] ;
    input \tailN[52] ;
    output \tail[52] ;
    output \tail[51] ;
    input \tailN[50] ;
    output \tail[50] ;
    input \tailN[49] ;
    output \tail[49] ;
    input \tailN[48] ;
    output \tail[48] ;
    output \tail[47] ;
    output \tail[46] ;
    output \tail[45] ;
    output \tail[44] ;
    output \tail[42] ;
    output \tail[41] ;
    output \tail[40] ;
    input \tailN[39] ;
    input \tailN[38] ;
    input \tailN[37] ;
    input \tailN[36] ;
    input \tailN[34] ;
    input \tailN[33] ;
    input \tailN[32] ;
    output \tail[31] ;
    output \tail[30] ;
    output \tail[29] ;
    output \tail[28] ;
    output \tail[26] ;
    output \tail[25] ;
    output \tail[24] ;
    input \tailN[23] ;
    input \tailN[22] ;
    input \tailN[21] ;
    input \tailN[20] ;
    input \tailN[18] ;
    input \tailN[17] ;
    input \tailN[16] ;
    output \tail[15] ;
    output \tail[14] ;
    output \tail[13] ;
    output \tail[12] ;
    output \tail[10] ;
    output \tail[9] ;
    output \tail[8] ;
    input \tailN[7] ;
    input \tailN[6] ;
    input \tailN[5] ;
    input \tailN[4] ;
    input \tailN[1] ;
    input n1050;
    output \tail[56] ;
    input n1057;
    output \tail[57] ;
    input n1095;
    output \tail[58] ;
    input n1094;
    output \tail[60] ;
    input n1090;
    output \tail[61] ;
    input n1089;
    output \tail[62] ;
    input n4;
    input n6;
    input n14;
    input [7:0]tc_plus_1;
    input GND_net;
    input \C_stk_delta[1] ;
    
    wire clk /* synthesis is_clock=1 */ ;   // ../lattice_top.v(10[6:9])
    wire [63:0]tail;   // ../stack.v(16[16:20])
    wire [7:0]headN;   // ../stack.v(17[20:25])
    
    wire n6248, n6242, n6239, VCC_net;
    wire [63:0]tailN;   // ../stack.v(18[17:22])
    
    wire n6236, n6233, n6227, n6230, n6245, n449;
    
    SB_DFFE tail_i0_i0 (.Q(tail[0]), .C(clk), .E(rd_7__N_373), .D(\tailN[0] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i0 (.Q(c_stk_r[0]), .C(clk), .E(rd_7__N_373), .D(headN[0]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i2 (.Q(tail[2]), .C(clk), .E(rd_7__N_373), .D(\tailN[2] ));   // ../stack.v(24[10] 29[6])
    SB_LUT4 i6166_3_lut_4_lut (.I0(n273), .I1(n15), .I2(tc[1]), .I3(n6248), 
            .O(headN[1]));
    defparam i6166_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i6160_3_lut_4_lut (.I0(n273), .I1(n15), .I2(tc[3]), .I3(n6242), 
            .O(headN[3]));
    defparam i6160_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i6157_3_lut_4_lut (.I0(n273), .I1(n15), .I2(tc[4]), .I3(n6239), 
            .O(headN[4]));
    defparam i6157_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE tail_i0_i59 (.Q(\tail[59] ), .C(clk), .E(VCC_net), .D(n1158));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i63 (.Q(\tail[63] ), .C(clk), .D(n1146));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i7 (.Q(c_stk_r[7]), .C(clk), .E(rd_7__N_373), .D(headN[7]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i6 (.Q(c_stk_r[6]), .C(clk), .E(rd_7__N_373), .D(headN[6]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i5 (.Q(c_stk_r[5]), .C(clk), .E(rd_7__N_373), .D(headN[5]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i4 (.Q(c_stk_r[4]), .C(clk), .E(rd_7__N_373), .D(headN[4]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i3 (.Q(c_stk_r[3]), .C(clk), .E(rd_7__N_373), .D(headN[3]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i2 (.Q(c_stk_r[2]), .C(clk), .E(rd_7__N_373), .D(headN[2]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i1 (.Q(c_stk_r[1]), .C(clk), .E(rd_7__N_373), .D(headN[1]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i55 (.Q(\tail[55] ), .C(clk), .E(rd_7__N_373), .D(\tailN[55] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i54 (.Q(\tail[54] ), .C(clk), .E(rd_7__N_373), .D(\tailN[54] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i53 (.Q(\tail[53] ), .C(clk), .E(rd_7__N_373), .D(\tailN[53] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i52 (.Q(\tail[52] ), .C(clk), .E(rd_7__N_373), .D(\tailN[52] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i51 (.Q(\tail[51] ), .C(clk), .E(rd_7__N_373), .D(tailN[51]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i50 (.Q(\tail[50] ), .C(clk), .E(rd_7__N_373), .D(\tailN[50] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i49 (.Q(\tail[49] ), .C(clk), .E(rd_7__N_373), .D(\tailN[49] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i48 (.Q(\tail[48] ), .C(clk), .E(rd_7__N_373), .D(\tailN[48] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i47 (.Q(\tail[47] ), .C(clk), .E(rd_7__N_373), .D(tailN[47]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i46 (.Q(\tail[46] ), .C(clk), .E(rd_7__N_373), .D(tailN[46]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i45 (.Q(\tail[45] ), .C(clk), .E(rd_7__N_373), .D(tailN[45]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i44 (.Q(\tail[44] ), .C(clk), .E(rd_7__N_373), .D(tailN[44]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i43 (.Q(tail[43]), .C(clk), .E(rd_7__N_373), .D(tailN[43]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i42 (.Q(\tail[42] ), .C(clk), .E(rd_7__N_373), .D(tailN[42]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i41 (.Q(\tail[41] ), .C(clk), .E(rd_7__N_373), .D(tailN[41]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i40 (.Q(\tail[40] ), .C(clk), .E(rd_7__N_373), .D(tailN[40]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i39 (.Q(tail[39]), .C(clk), .E(rd_7__N_373), .D(\tailN[39] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i38 (.Q(tail[38]), .C(clk), .E(rd_7__N_373), .D(\tailN[38] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i37 (.Q(tail[37]), .C(clk), .E(rd_7__N_373), .D(\tailN[37] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i36 (.Q(tail[36]), .C(clk), .E(rd_7__N_373), .D(\tailN[36] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i35 (.Q(tail[35]), .C(clk), .E(rd_7__N_373), .D(tailN[35]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i34 (.Q(tail[34]), .C(clk), .E(rd_7__N_373), .D(\tailN[34] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i33 (.Q(tail[33]), .C(clk), .E(rd_7__N_373), .D(\tailN[33] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i32 (.Q(tail[32]), .C(clk), .E(rd_7__N_373), .D(\tailN[32] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i31 (.Q(\tail[31] ), .C(clk), .E(rd_7__N_373), .D(tailN[31]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i30 (.Q(\tail[30] ), .C(clk), .E(rd_7__N_373), .D(tailN[30]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i29 (.Q(\tail[29] ), .C(clk), .E(rd_7__N_373), .D(tailN[29]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i28 (.Q(\tail[28] ), .C(clk), .E(rd_7__N_373), .D(tailN[28]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i27 (.Q(tail[27]), .C(clk), .E(rd_7__N_373), .D(tailN[27]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i26 (.Q(\tail[26] ), .C(clk), .E(rd_7__N_373), .D(tailN[26]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i25 (.Q(\tail[25] ), .C(clk), .E(rd_7__N_373), .D(tailN[25]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i24 (.Q(\tail[24] ), .C(clk), .E(rd_7__N_373), .D(tailN[24]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i23 (.Q(tail[23]), .C(clk), .E(rd_7__N_373), .D(\tailN[23] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i22 (.Q(tail[22]), .C(clk), .E(rd_7__N_373), .D(\tailN[22] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i21 (.Q(tail[21]), .C(clk), .E(rd_7__N_373), .D(\tailN[21] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i20 (.Q(tail[20]), .C(clk), .E(rd_7__N_373), .D(\tailN[20] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i19 (.Q(tail[19]), .C(clk), .E(rd_7__N_373), .D(tailN[19]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i18 (.Q(tail[18]), .C(clk), .E(rd_7__N_373), .D(\tailN[18] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i17 (.Q(tail[17]), .C(clk), .E(rd_7__N_373), .D(\tailN[17] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i16 (.Q(tail[16]), .C(clk), .E(rd_7__N_373), .D(\tailN[16] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i15 (.Q(\tail[15] ), .C(clk), .E(rd_7__N_373), .D(tailN[15]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i14 (.Q(\tail[14] ), .C(clk), .E(rd_7__N_373), .D(tailN[14]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i13 (.Q(\tail[13] ), .C(clk), .E(rd_7__N_373), .D(tailN[13]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i12 (.Q(\tail[12] ), .C(clk), .E(rd_7__N_373), .D(tailN[12]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i11 (.Q(tail[11]), .C(clk), .E(rd_7__N_373), .D(tailN[11]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i10 (.Q(\tail[10] ), .C(clk), .E(rd_7__N_373), .D(tailN[10]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i9 (.Q(\tail[9] ), .C(clk), .E(rd_7__N_373), .D(tailN[9]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i8 (.Q(\tail[8] ), .C(clk), .E(rd_7__N_373), .D(tailN[8]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i7 (.Q(tail[7]), .C(clk), .E(rd_7__N_373), .D(\tailN[7] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i6 (.Q(tail[6]), .C(clk), .E(rd_7__N_373), .D(\tailN[6] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i5 (.Q(tail[5]), .C(clk), .E(rd_7__N_373), .D(\tailN[5] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i4 (.Q(tail[4]), .C(clk), .E(rd_7__N_373), .D(\tailN[4] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i3 (.Q(tail[3]), .C(clk), .E(rd_7__N_373), .D(tailN[3]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i1 (.Q(tail[1]), .C(clk), .E(rd_7__N_373), .D(\tailN[1] ));   // ../stack.v(24[10] 29[6])
    SB_LUT4 i6154_3_lut_4_lut (.I0(n273), .I1(n15), .I2(tc[5]), .I3(n6236), 
            .O(headN[5]));
    defparam i6154_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i6151_3_lut_4_lut (.I0(n273), .I1(n15), .I2(tc[6]), .I3(n6233), 
            .O(headN[6]));
    defparam i6151_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF tail_i0_i56 (.Q(\tail[56] ), .C(clk), .D(n1050));   // ../stack.v(24[10] 29[6])
    SB_LUT4 i6145_3_lut_4_lut (.I0(n273), .I1(n15), .I2(tc[7]), .I3(n6227), 
            .O(headN[7]));
    defparam i6145_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF tail_i0_i57 (.Q(\tail[57] ), .C(clk), .D(n1057));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i58 (.Q(\tail[58] ), .C(clk), .D(n1095));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i60 (.Q(\tail[60] ), .C(clk), .D(n1094));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i61 (.Q(\tail[61] ), .C(clk), .D(n1090));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i62 (.Q(\tail[62] ), .C(clk), .D(n1089));   // ../stack.v(24[10] 29[6])
    SB_LUT4 i6148_3_lut_4_lut (.I0(n273), .I1(n15), .I2(tc[0]), .I3(n6230), 
            .O(headN[0]));
    defparam i6148_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i6163_3_lut_4_lut (.I0(n273), .I1(n15), .I2(tc[2]), .I3(n6245), 
            .O(headN[2]));
    defparam i6163_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i406_4_lut (.I0(n273), .I1(n4), .I2(n6), .I3(n14), .O(n449));
    defparam i406_4_lut.LUT_INIT = 16'haaa2;
    SB_LUT4 i6146_3_lut (.I0(tail[0]), .I1(tc_plus_1[0]), .I2(n449), .I3(GND_net), 
            .O(n6230));
    defparam i6146_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i4_3_lut (.I0(c_stk_r[3]), .I1(tail[11]), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[3]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i9_3_lut (.I0(tail[0]), .I1(tail[16]), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[8]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i9_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i10_3_lut (.I0(tail[1]), .I1(tail[17]), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[9]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i10_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i11_3_lut (.I0(tail[2]), .I1(tail[18]), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[10]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i12_3_lut (.I0(tail[3]), .I1(tail[19]), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[11]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i12_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i13_3_lut (.I0(tail[4]), .I1(tail[20]), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[12]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i13_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i14_3_lut (.I0(tail[5]), .I1(tail[21]), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[13]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i14_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i15_3_lut (.I0(tail[6]), .I1(tail[22]), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[14]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i15_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i16_3_lut (.I0(tail[7]), .I1(tail[23]), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[15]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i20_3_lut (.I0(tail[11]), .I1(tail[27]), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[19]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i25_3_lut (.I0(tail[16]), .I1(tail[32]), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[24]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i25_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i26_3_lut (.I0(tail[17]), .I1(tail[33]), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[25]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i27_3_lut (.I0(tail[18]), .I1(tail[34]), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[26]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i27_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i28_3_lut (.I0(tail[19]), .I1(tail[35]), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[27]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i28_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i29_3_lut (.I0(tail[20]), .I1(tail[36]), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[28]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i29_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i30_3_lut (.I0(tail[21]), .I1(tail[37]), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[29]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i31_3_lut (.I0(tail[22]), .I1(tail[38]), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[30]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i31_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i32_3_lut (.I0(tail[23]), .I1(tail[39]), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[31]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i32_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i36_3_lut (.I0(tail[27]), .I1(tail[43]), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[35]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i36_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i41_3_lut (.I0(tail[32]), .I1(\tail[48] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[40]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i41_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i42_3_lut (.I0(tail[33]), .I1(\tail[49] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[41]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i42_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i43_3_lut (.I0(tail[34]), .I1(\tail[50] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[42]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i43_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i44_3_lut (.I0(tail[35]), .I1(\tail[51] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[43]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i44_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i45_3_lut (.I0(tail[36]), .I1(\tail[52] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[44]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i45_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i46_3_lut (.I0(tail[37]), .I1(\tail[53] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[45]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i46_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i47_3_lut (.I0(tail[38]), .I1(\tail[54] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[46]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i47_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i48_3_lut (.I0(tail[39]), .I1(\tail[55] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[47]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i48_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i52_3_lut (.I0(tail[43]), .I1(\tail[59] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[51]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i52_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6164_3_lut (.I0(tail[1]), .I1(tc_plus_1[1]), .I2(n449), .I3(GND_net), 
            .O(n6248));
    defparam i6164_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6161_3_lut (.I0(tail[2]), .I1(tc_plus_1[2]), .I2(n449), .I3(GND_net), 
            .O(n6245));
    defparam i6161_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6158_3_lut (.I0(tail[3]), .I1(tc_plus_1[3]), .I2(n449), .I3(GND_net), 
            .O(n6242));
    defparam i6158_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6155_3_lut (.I0(tail[4]), .I1(tc_plus_1[4]), .I2(n449), .I3(GND_net), 
            .O(n6239));
    defparam i6155_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6152_3_lut (.I0(tail[5]), .I1(tc_plus_1[5]), .I2(n449), .I3(GND_net), 
            .O(n6236));
    defparam i6152_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6149_3_lut (.I0(tail[6]), .I1(tc_plus_1[6]), .I2(n449), .I3(GND_net), 
            .O(n6233));
    defparam i6149_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6143_3_lut (.I0(tail[7]), .I1(tc_plus_1[7]), .I2(n449), .I3(GND_net), 
            .O(n6227));
    defparam i6143_3_lut.LUT_INIT = 16'hcaca;
    VCC i1 (.Y(VCC_net));
    
endmodule
//
// Verilog Description of module \STACK(WIDTH=16) 
//

module \STACK(WIDTH=16)  (\A_stk_delta[1] , GND_net, \tailN[0] , rd_15__N_300, 
            clk, S, \tail[111] , \tail[110] , \tail[109] , \tail[108] , 
            \tail[107] , \tail[106] , \tail[105] , \tail[104] , \tail[103] , 
            \tail[102] , \tail[101] , \tail[100] , \tail[99] , \tail[98] , 
            \tailN[97] , \tail[97] , \tailN[96] , \tail[96] , \tail[81] , 
            \tail[80] , \tailN[65] , \tailN[64] , \tail[49] , \tail[48] , 
            \tailN[33] , \tailN[32] , \tail[17] , \tail[16] , \tailN[1] , 
            n1149, \tail[127] , n1145, \tail[126] , n1142, \tail[125] , 
            n1139, \tail[124] , n1136, \tail[123] , n1133, \tail[122] , 
            n1130, \tail[121] , n1127, \tail[112] , n1126, \tail[120] , 
            n1123, \tail[119] , n1120, \tail[118] , n1117, \tail[113] , 
            n1116, \tail[117] , n1113, \tail[116] , n1110, \tail[115] , 
            n1106, \tail[114] , A_low, n270, \A[8] , \A[9] , \A[10] , 
            \A[11] , \A[12] , \A[13] , \A[14] , \A[15] ) /* synthesis syn_module_defined=1 */ ;
    input \A_stk_delta[1] ;
    input GND_net;
    input \tailN[0] ;
    input rd_15__N_300;
    input clk;
    output [15:0]S;
    output \tail[111] ;
    output \tail[110] ;
    output \tail[109] ;
    output \tail[108] ;
    output \tail[107] ;
    output \tail[106] ;
    output \tail[105] ;
    output \tail[104] ;
    output \tail[103] ;
    output \tail[102] ;
    output \tail[101] ;
    output \tail[100] ;
    output \tail[99] ;
    output \tail[98] ;
    input \tailN[97] ;
    output \tail[97] ;
    input \tailN[96] ;
    output \tail[96] ;
    output \tail[81] ;
    output \tail[80] ;
    input \tailN[65] ;
    input \tailN[64] ;
    output \tail[49] ;
    output \tail[48] ;
    input \tailN[33] ;
    input \tailN[32] ;
    output \tail[17] ;
    output \tail[16] ;
    input \tailN[1] ;
    input n1149;
    output \tail[127] ;
    input n1145;
    output \tail[126] ;
    input n1142;
    output \tail[125] ;
    input n1139;
    output \tail[124] ;
    input n1136;
    output \tail[123] ;
    input n1133;
    output \tail[122] ;
    input n1130;
    output \tail[121] ;
    input n1127;
    output \tail[112] ;
    input n1126;
    output \tail[120] ;
    input n1123;
    output \tail[119] ;
    input n1120;
    output \tail[118] ;
    input n1117;
    output \tail[113] ;
    input n1116;
    output \tail[117] ;
    input n1113;
    output \tail[116] ;
    input n1110;
    output \tail[115] ;
    input n1106;
    output \tail[114] ;
    input [7:0]A_low;
    input n270;
    input \A[8] ;
    input \A[9] ;
    input \A[10] ;
    input \A[11] ;
    input \A[12] ;
    input \A[13] ;
    input \A[14] ;
    input \A[15] ;
    
    wire clk /* synthesis is_clock=1 */ ;   // ../lattice_top.v(10[6:9])
    wire [127:0]tail;   // ../stack.v(16[16:20])
    wire [127:0]tailN;   // ../stack.v(18[17:22])
    wire [15:0]headN;   // ../stack.v(17[20:25])
    
    wire VCC_net;
    
    SB_LUT4 tail_111__I_0_i56_3_lut (.I0(tail[39]), .I1(tail[71]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[55]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i56_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i57_3_lut (.I0(tail[40]), .I1(tail[72]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[56]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i57_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i58_3_lut (.I0(tail[41]), .I1(tail[73]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[57]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i58_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i59_3_lut (.I0(tail[42]), .I1(tail[74]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[58]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i59_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i60_3_lut (.I0(tail[43]), .I1(tail[75]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[59]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i60_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE tail_i0_i0 (.Q(tail[0]), .C(clk), .E(rd_15__N_300), .D(\tailN[0] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i15 (.Q(S[15]), .C(clk), .E(rd_15__N_300), .D(headN[15]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i14 (.Q(S[14]), .C(clk), .E(rd_15__N_300), .D(headN[14]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i13 (.Q(S[13]), .C(clk), .E(rd_15__N_300), .D(headN[13]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i12 (.Q(S[12]), .C(clk), .E(rd_15__N_300), .D(headN[12]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i11 (.Q(S[11]), .C(clk), .E(rd_15__N_300), .D(headN[11]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i10 (.Q(S[10]), .C(clk), .E(rd_15__N_300), .D(headN[10]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i9 (.Q(S[9]), .C(clk), .E(rd_15__N_300), .D(headN[9]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i8 (.Q(S[8]), .C(clk), .E(rd_15__N_300), .D(headN[8]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i7 (.Q(S[7]), .C(clk), .E(rd_15__N_300), .D(headN[7]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i6 (.Q(S[6]), .C(clk), .E(rd_15__N_300), .D(headN[6]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i5 (.Q(S[5]), .C(clk), .E(rd_15__N_300), .D(headN[5]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i4 (.Q(S[4]), .C(clk), .E(rd_15__N_300), .D(headN[4]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i3 (.Q(S[3]), .C(clk), .E(rd_15__N_300), .D(headN[3]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i2 (.Q(S[2]), .C(clk), .E(rd_15__N_300), .D(headN[2]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i1 (.Q(S[1]), .C(clk), .E(rd_15__N_300), .D(headN[1]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i111 (.Q(\tail[111] ), .C(clk), .E(rd_15__N_300), 
            .D(tailN[111]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i110 (.Q(\tail[110] ), .C(clk), .E(rd_15__N_300), 
            .D(tailN[110]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i109 (.Q(\tail[109] ), .C(clk), .E(rd_15__N_300), 
            .D(tailN[109]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i108 (.Q(\tail[108] ), .C(clk), .E(rd_15__N_300), 
            .D(tailN[108]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i107 (.Q(\tail[107] ), .C(clk), .E(rd_15__N_300), 
            .D(tailN[107]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i106 (.Q(\tail[106] ), .C(clk), .E(rd_15__N_300), 
            .D(tailN[106]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i105 (.Q(\tail[105] ), .C(clk), .E(rd_15__N_300), 
            .D(tailN[105]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i104 (.Q(\tail[104] ), .C(clk), .E(rd_15__N_300), 
            .D(tailN[104]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i103 (.Q(\tail[103] ), .C(clk), .E(rd_15__N_300), 
            .D(tailN[103]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i102 (.Q(\tail[102] ), .C(clk), .E(rd_15__N_300), 
            .D(tailN[102]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i101 (.Q(\tail[101] ), .C(clk), .E(rd_15__N_300), 
            .D(tailN[101]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i100 (.Q(\tail[100] ), .C(clk), .E(rd_15__N_300), 
            .D(tailN[100]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i99 (.Q(\tail[99] ), .C(clk), .E(rd_15__N_300), .D(tailN[99]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i98 (.Q(\tail[98] ), .C(clk), .E(rd_15__N_300), .D(tailN[98]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i97 (.Q(\tail[97] ), .C(clk), .E(rd_15__N_300), .D(\tailN[97] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i96 (.Q(\tail[96] ), .C(clk), .E(rd_15__N_300), .D(\tailN[96] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i95 (.Q(tail[95]), .C(clk), .E(rd_15__N_300), .D(tailN[95]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i94 (.Q(tail[94]), .C(clk), .E(rd_15__N_300), .D(tailN[94]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i93 (.Q(tail[93]), .C(clk), .E(rd_15__N_300), .D(tailN[93]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i92 (.Q(tail[92]), .C(clk), .E(rd_15__N_300), .D(tailN[92]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i91 (.Q(tail[91]), .C(clk), .E(rd_15__N_300), .D(tailN[91]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i90 (.Q(tail[90]), .C(clk), .E(rd_15__N_300), .D(tailN[90]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i89 (.Q(tail[89]), .C(clk), .E(rd_15__N_300), .D(tailN[89]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i88 (.Q(tail[88]), .C(clk), .E(rd_15__N_300), .D(tailN[88]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i87 (.Q(tail[87]), .C(clk), .E(rd_15__N_300), .D(tailN[87]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i86 (.Q(tail[86]), .C(clk), .E(rd_15__N_300), .D(tailN[86]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i85 (.Q(tail[85]), .C(clk), .E(rd_15__N_300), .D(tailN[85]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i84 (.Q(tail[84]), .C(clk), .E(rd_15__N_300), .D(tailN[84]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i83 (.Q(tail[83]), .C(clk), .E(rd_15__N_300), .D(tailN[83]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i82 (.Q(tail[82]), .C(clk), .E(rd_15__N_300), .D(tailN[82]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i81 (.Q(\tail[81] ), .C(clk), .E(rd_15__N_300), .D(tailN[81]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i80 (.Q(\tail[80] ), .C(clk), .E(rd_15__N_300), .D(tailN[80]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i79 (.Q(tail[79]), .C(clk), .E(rd_15__N_300), .D(tailN[79]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i78 (.Q(tail[78]), .C(clk), .E(rd_15__N_300), .D(tailN[78]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i77 (.Q(tail[77]), .C(clk), .E(rd_15__N_300), .D(tailN[77]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i76 (.Q(tail[76]), .C(clk), .E(rd_15__N_300), .D(tailN[76]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i75 (.Q(tail[75]), .C(clk), .E(rd_15__N_300), .D(tailN[75]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i74 (.Q(tail[74]), .C(clk), .E(rd_15__N_300), .D(tailN[74]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i73 (.Q(tail[73]), .C(clk), .E(rd_15__N_300), .D(tailN[73]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i72 (.Q(tail[72]), .C(clk), .E(rd_15__N_300), .D(tailN[72]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i71 (.Q(tail[71]), .C(clk), .E(rd_15__N_300), .D(tailN[71]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i70 (.Q(tail[70]), .C(clk), .E(rd_15__N_300), .D(tailN[70]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i69 (.Q(tail[69]), .C(clk), .E(rd_15__N_300), .D(tailN[69]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i68 (.Q(tail[68]), .C(clk), .E(rd_15__N_300), .D(tailN[68]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i67 (.Q(tail[67]), .C(clk), .E(rd_15__N_300), .D(tailN[67]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i66 (.Q(tail[66]), .C(clk), .E(rd_15__N_300), .D(tailN[66]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i65 (.Q(tail[65]), .C(clk), .E(rd_15__N_300), .D(\tailN[65] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i64 (.Q(tail[64]), .C(clk), .E(rd_15__N_300), .D(\tailN[64] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i63 (.Q(tail[63]), .C(clk), .E(rd_15__N_300), .D(tailN[63]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i62 (.Q(tail[62]), .C(clk), .E(rd_15__N_300), .D(tailN[62]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i61 (.Q(tail[61]), .C(clk), .E(rd_15__N_300), .D(tailN[61]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i60 (.Q(tail[60]), .C(clk), .E(rd_15__N_300), .D(tailN[60]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i59 (.Q(tail[59]), .C(clk), .E(rd_15__N_300), .D(tailN[59]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i58 (.Q(tail[58]), .C(clk), .E(rd_15__N_300), .D(tailN[58]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i57 (.Q(tail[57]), .C(clk), .E(rd_15__N_300), .D(tailN[57]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i56 (.Q(tail[56]), .C(clk), .E(rd_15__N_300), .D(tailN[56]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i55 (.Q(tail[55]), .C(clk), .E(rd_15__N_300), .D(tailN[55]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i54 (.Q(tail[54]), .C(clk), .E(rd_15__N_300), .D(tailN[54]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i53 (.Q(tail[53]), .C(clk), .E(rd_15__N_300), .D(tailN[53]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i52 (.Q(tail[52]), .C(clk), .E(rd_15__N_300), .D(tailN[52]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i51 (.Q(tail[51]), .C(clk), .E(rd_15__N_300), .D(tailN[51]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i50 (.Q(tail[50]), .C(clk), .E(rd_15__N_300), .D(tailN[50]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i49 (.Q(\tail[49] ), .C(clk), .E(rd_15__N_300), .D(tailN[49]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i48 (.Q(\tail[48] ), .C(clk), .E(rd_15__N_300), .D(tailN[48]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i47 (.Q(tail[47]), .C(clk), .E(rd_15__N_300), .D(tailN[47]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i46 (.Q(tail[46]), .C(clk), .E(rd_15__N_300), .D(tailN[46]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i45 (.Q(tail[45]), .C(clk), .E(rd_15__N_300), .D(tailN[45]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i44 (.Q(tail[44]), .C(clk), .E(rd_15__N_300), .D(tailN[44]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i43 (.Q(tail[43]), .C(clk), .E(rd_15__N_300), .D(tailN[43]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i42 (.Q(tail[42]), .C(clk), .E(rd_15__N_300), .D(tailN[42]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i41 (.Q(tail[41]), .C(clk), .E(rd_15__N_300), .D(tailN[41]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i40 (.Q(tail[40]), .C(clk), .E(rd_15__N_300), .D(tailN[40]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i39 (.Q(tail[39]), .C(clk), .E(rd_15__N_300), .D(tailN[39]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i38 (.Q(tail[38]), .C(clk), .E(rd_15__N_300), .D(tailN[38]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i37 (.Q(tail[37]), .C(clk), .E(rd_15__N_300), .D(tailN[37]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i36 (.Q(tail[36]), .C(clk), .E(rd_15__N_300), .D(tailN[36]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i35 (.Q(tail[35]), .C(clk), .E(rd_15__N_300), .D(tailN[35]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i34 (.Q(tail[34]), .C(clk), .E(rd_15__N_300), .D(tailN[34]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i33 (.Q(tail[33]), .C(clk), .E(rd_15__N_300), .D(\tailN[33] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i32 (.Q(tail[32]), .C(clk), .E(rd_15__N_300), .D(\tailN[32] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i31 (.Q(tail[31]), .C(clk), .E(rd_15__N_300), .D(tailN[31]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i30 (.Q(tail[30]), .C(clk), .E(rd_15__N_300), .D(tailN[30]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i29 (.Q(tail[29]), .C(clk), .E(rd_15__N_300), .D(tailN[29]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i28 (.Q(tail[28]), .C(clk), .E(rd_15__N_300), .D(tailN[28]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i27 (.Q(tail[27]), .C(clk), .E(rd_15__N_300), .D(tailN[27]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i26 (.Q(tail[26]), .C(clk), .E(rd_15__N_300), .D(tailN[26]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i25 (.Q(tail[25]), .C(clk), .E(rd_15__N_300), .D(tailN[25]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i24 (.Q(tail[24]), .C(clk), .E(rd_15__N_300), .D(tailN[24]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i23 (.Q(tail[23]), .C(clk), .E(rd_15__N_300), .D(tailN[23]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i22 (.Q(tail[22]), .C(clk), .E(rd_15__N_300), .D(tailN[22]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i21 (.Q(tail[21]), .C(clk), .E(rd_15__N_300), .D(tailN[21]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i20 (.Q(tail[20]), .C(clk), .E(rd_15__N_300), .D(tailN[20]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i19 (.Q(tail[19]), .C(clk), .E(rd_15__N_300), .D(tailN[19]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i18 (.Q(tail[18]), .C(clk), .E(rd_15__N_300), .D(tailN[18]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i17 (.Q(\tail[17] ), .C(clk), .E(rd_15__N_300), .D(tailN[17]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i16 (.Q(\tail[16] ), .C(clk), .E(rd_15__N_300), .D(tailN[16]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i15 (.Q(tail[15]), .C(clk), .E(rd_15__N_300), .D(tailN[15]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i14 (.Q(tail[14]), .C(clk), .E(rd_15__N_300), .D(tailN[14]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i13 (.Q(tail[13]), .C(clk), .E(rd_15__N_300), .D(tailN[13]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i12 (.Q(tail[12]), .C(clk), .E(rd_15__N_300), .D(tailN[12]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i11 (.Q(tail[11]), .C(clk), .E(rd_15__N_300), .D(tailN[11]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i10 (.Q(tail[10]), .C(clk), .E(rd_15__N_300), .D(tailN[10]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i9 (.Q(tail[9]), .C(clk), .E(rd_15__N_300), .D(tailN[9]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i8 (.Q(tail[8]), .C(clk), .E(rd_15__N_300), .D(tailN[8]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i7 (.Q(tail[7]), .C(clk), .E(rd_15__N_300), .D(tailN[7]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i6 (.Q(tail[6]), .C(clk), .E(rd_15__N_300), .D(tailN[6]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i5 (.Q(tail[5]), .C(clk), .E(rd_15__N_300), .D(tailN[5]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i4 (.Q(tail[4]), .C(clk), .E(rd_15__N_300), .D(tailN[4]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i3 (.Q(tail[3]), .C(clk), .E(rd_15__N_300), .D(tailN[3]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i2 (.Q(tail[2]), .C(clk), .E(rd_15__N_300), .D(tailN[2]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i1 (.Q(tail[1]), .C(clk), .E(rd_15__N_300), .D(\tailN[1] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i127 (.Q(\tail[127] ), .C(clk), .E(VCC_net), .D(n1149));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i126 (.Q(\tail[126] ), .C(clk), .E(VCC_net), .D(n1145));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i125 (.Q(\tail[125] ), .C(clk), .E(VCC_net), .D(n1142));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i124 (.Q(\tail[124] ), .C(clk), .E(VCC_net), .D(n1139));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i123 (.Q(\tail[123] ), .C(clk), .E(VCC_net), .D(n1136));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i122 (.Q(\tail[122] ), .C(clk), .E(VCC_net), .D(n1133));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i121 (.Q(\tail[121] ), .C(clk), .E(VCC_net), .D(n1130));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i112 (.Q(\tail[112] ), .C(clk), .D(n1127));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i120 (.Q(\tail[120] ), .C(clk), .E(VCC_net), .D(n1126));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i119 (.Q(\tail[119] ), .C(clk), .E(VCC_net), .D(n1123));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i118 (.Q(\tail[118] ), .C(clk), .E(VCC_net), .D(n1120));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i113 (.Q(\tail[113] ), .C(clk), .D(n1117));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i0 (.Q(S[0]), .C(clk), .E(rd_15__N_300), .D(headN[0]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i117 (.Q(\tail[117] ), .C(clk), .E(VCC_net), .D(n1116));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i116 (.Q(\tail[116] ), .C(clk), .E(VCC_net), .D(n1113));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i115 (.Q(\tail[115] ), .C(clk), .E(VCC_net), .D(n1110));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i114 (.Q(\tail[114] ), .C(clk), .D(n1106));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_111__I_0_i61_3_lut (.I0(tail[44]), .I1(tail[76]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[60]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i61_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i62_3_lut (.I0(tail[45]), .I1(tail[77]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[61]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i62_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i63_3_lut (.I0(tail[46]), .I1(tail[78]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[62]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i63_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i64_3_lut (.I0(tail[47]), .I1(tail[79]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[63]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i64_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i67_3_lut (.I0(tail[50]), .I1(tail[82]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[66]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i67_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i68_3_lut (.I0(tail[51]), .I1(tail[83]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[67]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i68_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i69_3_lut (.I0(tail[52]), .I1(tail[84]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[68]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i69_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i70_3_lut (.I0(tail[53]), .I1(tail[85]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[69]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i70_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i71_3_lut (.I0(tail[54]), .I1(tail[86]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[70]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i71_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i72_3_lut (.I0(tail[55]), .I1(tail[87]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[71]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i72_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i73_3_lut (.I0(tail[56]), .I1(tail[88]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[72]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i73_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i74_3_lut (.I0(tail[57]), .I1(tail[89]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[73]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i74_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i1_3_lut (.I0(tail[0]), .I1(A_low[0]), .I2(n270), 
            .I3(GND_net), .O(headN[0]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i75_3_lut (.I0(tail[58]), .I1(tail[90]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[74]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i75_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i76_3_lut (.I0(tail[59]), .I1(tail[91]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[75]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i76_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i77_3_lut (.I0(tail[60]), .I1(tail[92]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[76]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i77_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i78_3_lut (.I0(tail[61]), .I1(tail[93]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[77]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i78_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i79_3_lut (.I0(tail[62]), .I1(tail[94]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[78]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i79_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i80_3_lut (.I0(tail[63]), .I1(tail[95]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[79]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i80_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i81_3_lut (.I0(tail[64]), .I1(\tail[96] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[80]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i81_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i82_3_lut (.I0(tail[65]), .I1(\tail[97] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[81]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i82_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i83_3_lut (.I0(tail[66]), .I1(\tail[98] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[82]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i83_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i84_3_lut (.I0(tail[67]), .I1(\tail[99] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[83]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i84_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i85_3_lut (.I0(tail[68]), .I1(\tail[100] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[84]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i85_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i86_3_lut (.I0(tail[69]), .I1(\tail[101] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[85]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i86_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i87_3_lut (.I0(tail[70]), .I1(\tail[102] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[86]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i87_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i88_3_lut (.I0(tail[71]), .I1(\tail[103] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[87]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i88_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i89_3_lut (.I0(tail[72]), .I1(\tail[104] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[88]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i89_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i90_3_lut (.I0(tail[73]), .I1(\tail[105] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[89]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i90_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i91_3_lut (.I0(tail[74]), .I1(\tail[106] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[90]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i91_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i92_3_lut (.I0(tail[75]), .I1(\tail[107] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[91]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i92_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i93_3_lut (.I0(tail[76]), .I1(\tail[108] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[92]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i93_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i94_3_lut (.I0(tail[77]), .I1(\tail[109] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[93]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i94_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i95_3_lut (.I0(tail[78]), .I1(\tail[110] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[94]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i95_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i96_3_lut (.I0(tail[79]), .I1(\tail[111] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[95]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i96_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i99_3_lut (.I0(tail[82]), .I1(\tail[114] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[98]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i99_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i100_3_lut (.I0(tail[83]), .I1(\tail[115] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[99]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i100_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i101_3_lut (.I0(tail[84]), .I1(\tail[116] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[100]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i101_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i102_3_lut (.I0(tail[85]), .I1(\tail[117] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[101]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i102_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i103_3_lut (.I0(tail[86]), .I1(\tail[118] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[102]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i103_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i104_3_lut (.I0(tail[87]), .I1(\tail[119] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[103]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i104_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i105_3_lut (.I0(tail[88]), .I1(\tail[120] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[104]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i105_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i106_3_lut (.I0(tail[89]), .I1(\tail[121] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[105]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i106_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i107_3_lut (.I0(tail[90]), .I1(\tail[122] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[106]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i107_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i108_3_lut (.I0(tail[91]), .I1(\tail[123] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[107]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i108_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i109_3_lut (.I0(tail[92]), .I1(\tail[124] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[108]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i109_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i110_3_lut (.I0(tail[93]), .I1(\tail[125] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[109]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i110_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i111_3_lut (.I0(tail[94]), .I1(\tail[126] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[110]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i111_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i112_3_lut (.I0(tail[95]), .I1(\tail[127] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[111]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i112_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i2_3_lut (.I0(tail[1]), .I1(A_low[1]), .I2(n270), 
            .I3(GND_net), .O(headN[1]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i3_3_lut (.I0(tail[2]), .I1(A_low[2]), .I2(n270), 
            .I3(GND_net), .O(headN[2]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i4_3_lut (.I0(tail[3]), .I1(A_low[3]), .I2(n270), 
            .I3(GND_net), .O(headN[3]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i5_3_lut (.I0(tail[4]), .I1(A_low[4]), .I2(n270), 
            .I3(GND_net), .O(headN[4]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i6_3_lut (.I0(tail[5]), .I1(A_low[5]), .I2(n270), 
            .I3(GND_net), .O(headN[5]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i7_3_lut (.I0(tail[6]), .I1(A_low[6]), .I2(n270), 
            .I3(GND_net), .O(headN[6]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i8_3_lut (.I0(tail[7]), .I1(A_low[7]), .I2(n270), 
            .I3(GND_net), .O(headN[7]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i9_3_lut (.I0(tail[8]), .I1(\A[8] ), .I2(n270), 
            .I3(GND_net), .O(headN[8]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i9_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i10_3_lut (.I0(tail[9]), .I1(\A[9] ), .I2(n270), 
            .I3(GND_net), .O(headN[9]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i10_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i11_3_lut (.I0(tail[10]), .I1(\A[10] ), .I2(n270), 
            .I3(GND_net), .O(headN[10]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i12_3_lut (.I0(tail[11]), .I1(\A[11] ), .I2(n270), 
            .I3(GND_net), .O(headN[11]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i12_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i13_3_lut (.I0(tail[12]), .I1(\A[12] ), .I2(n270), 
            .I3(GND_net), .O(headN[12]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i13_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i14_3_lut (.I0(tail[13]), .I1(\A[13] ), .I2(n270), 
            .I3(GND_net), .O(headN[13]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i14_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i15_3_lut (.I0(tail[14]), .I1(\A[14] ), .I2(n270), 
            .I3(GND_net), .O(headN[14]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i15_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i16_3_lut (.I0(tail[15]), .I1(\A[15] ), .I2(n270), 
            .I3(GND_net), .O(headN[15]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i3_3_lut (.I0(S[2]), .I1(tail[18]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[2]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i4_3_lut (.I0(S[3]), .I1(tail[19]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[3]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i5_3_lut (.I0(S[4]), .I1(tail[20]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[4]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i6_3_lut (.I0(S[5]), .I1(tail[21]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[5]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i7_3_lut (.I0(S[6]), .I1(tail[22]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[6]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i8_3_lut (.I0(S[7]), .I1(tail[23]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[7]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i9_3_lut (.I0(S[8]), .I1(tail[24]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[8]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i9_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i10_3_lut (.I0(S[9]), .I1(tail[25]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[9]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i10_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i11_3_lut (.I0(S[10]), .I1(tail[26]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[10]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i12_3_lut (.I0(S[11]), .I1(tail[27]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[11]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i12_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i13_3_lut (.I0(S[12]), .I1(tail[28]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[12]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i13_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i14_3_lut (.I0(S[13]), .I1(tail[29]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[13]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i14_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i15_3_lut (.I0(S[14]), .I1(tail[30]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[14]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i15_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i16_3_lut (.I0(S[15]), .I1(tail[31]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[15]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i17_3_lut (.I0(tail[0]), .I1(tail[32]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[16]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i18_3_lut (.I0(tail[1]), .I1(tail[33]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[17]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i18_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i19_3_lut (.I0(tail[2]), .I1(tail[34]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[18]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i20_3_lut (.I0(tail[3]), .I1(tail[35]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[19]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i21_3_lut (.I0(tail[4]), .I1(tail[36]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[20]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i21_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i22_3_lut (.I0(tail[5]), .I1(tail[37]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[21]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i23_3_lut (.I0(tail[6]), .I1(tail[38]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[22]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i24_3_lut (.I0(tail[7]), .I1(tail[39]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[23]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i24_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i25_3_lut (.I0(tail[8]), .I1(tail[40]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[24]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i25_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i26_3_lut (.I0(tail[9]), .I1(tail[41]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[25]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i27_3_lut (.I0(tail[10]), .I1(tail[42]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[26]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i27_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i28_3_lut (.I0(tail[11]), .I1(tail[43]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[27]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i28_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i29_3_lut (.I0(tail[12]), .I1(tail[44]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[28]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i29_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i30_3_lut (.I0(tail[13]), .I1(tail[45]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[29]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i31_3_lut (.I0(tail[14]), .I1(tail[46]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[30]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i31_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i32_3_lut (.I0(tail[15]), .I1(tail[47]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[31]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i32_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i35_3_lut (.I0(tail[18]), .I1(tail[50]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[34]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i35_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i36_3_lut (.I0(tail[19]), .I1(tail[51]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[35]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i36_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i37_3_lut (.I0(tail[20]), .I1(tail[52]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[36]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i37_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i38_3_lut (.I0(tail[21]), .I1(tail[53]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[37]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i38_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i39_3_lut (.I0(tail[22]), .I1(tail[54]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[38]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i39_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i40_3_lut (.I0(tail[23]), .I1(tail[55]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[39]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i40_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i41_3_lut (.I0(tail[24]), .I1(tail[56]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[40]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i41_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i42_3_lut (.I0(tail[25]), .I1(tail[57]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[41]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i42_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i43_3_lut (.I0(tail[26]), .I1(tail[58]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[42]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i43_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i44_3_lut (.I0(tail[27]), .I1(tail[59]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[43]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i44_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i45_3_lut (.I0(tail[28]), .I1(tail[60]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[44]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i45_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i46_3_lut (.I0(tail[29]), .I1(tail[61]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[45]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i46_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i47_3_lut (.I0(tail[30]), .I1(tail[62]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[46]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i47_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i48_3_lut (.I0(tail[31]), .I1(tail[63]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[47]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i48_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i49_3_lut (.I0(tail[32]), .I1(tail[64]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[48]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i49_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i50_3_lut (.I0(tail[33]), .I1(tail[65]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[49]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i50_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i51_3_lut (.I0(tail[34]), .I1(tail[66]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[50]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i51_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i52_3_lut (.I0(tail[35]), .I1(tail[67]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[51]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i52_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i53_3_lut (.I0(tail[36]), .I1(tail[68]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[52]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i53_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i54_3_lut (.I0(tail[37]), .I1(tail[69]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[53]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i54_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i55_3_lut (.I0(tail[38]), .I1(tail[70]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[54]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i55_3_lut.LUT_INIT = 16'hcaca;
    VCC i1 (.Y(VCC_net));
    
endmodule
