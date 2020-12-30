// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Tue Dec 29 20:56:23 2020
//
// Verilog Description of module top
//

module top (reset, tx, rx) /* synthesis syn_module_defined=1 */ ;   // ../lattice_top.v(4[8:11])
    input reset;   // ../lattice_top.v(5[8:13])
    output tx;   // ../lattice_top.v(6[11:13])
    input rx;   // ../lattice_top.v(7[11:13])
    
    wire clk /* synthesis is_clock=1 */ ;   // ../lattice_top.v(10[6:9])
    
    wire reset_c, tx_c, rx_c, GND_net;
    wire [7:0]uart_rx_data;   // ../tok.v(25[14:26])
    wire [7:0]A_low;   // ../tok.v(31[14:19])
    wire [1:0]A_stk_delta;   // ../tok.v(36[13:24])
    
    wire stall_;
    wire [7:0]tc;   // ../tok.v(98[13:15])
    
    wire n92;
    wire [127:0]tail;   // ../stack.v(16[16:20])
    
    wire n1151, rd_15__N_301, n10, n1148, n1145, n1142, n4858, 
        n10_adj_866;
    wire [9:0]capture;   // ../uart.v(45[11:18])
    
    wire txtick;
    wire [9:0]sender;   // ../uart.v(64[11:17])
    
    wire bytephase_5__N_510, n971, rx_data_7__N_511, n1139, n1136, 
        n92_adj_867, n92_adj_868, n92_adj_869, n1133, VCC_net, n10_adj_870, 
        n1241, n1240, n1239, n1238, n1237, n1236, n1235, n1226, 
        n1225, n1222, n1219, n1216, n10_adj_871, n1213, n1210, 
        n1207, n1204, n1201, n1198, n1194, n1193, n1192, n1191, 
        n1190, n1189, n1188, n1187, n1186, n1185, n1184, n1183, 
        n1181, n1130, n1180, n1179, n1178, n813, n1171, n1170, 
        n23;
    
    GND i1 (.Y(GND_net));
    SB_HFOSC OSCInst0 (.CLKHFPU(VCC_net), .CLKHFEN(VCC_net), .CLKHF(clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCInst0.CLKHF_DIV = "0b01";
    SB_IO rx_pad (.PACKAGE_PIN(rx), .OUTPUT_ENABLE(VCC_net), .D_IN_0(rx_c));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam rx_pad.PIN_TYPE = 6'b000001;
    defparam rx_pad.PULLUP = 1'b0;
    defparam rx_pad.NEG_TRIGGER = 1'b0;
    defparam rx_pad.IO_STANDARD = "SB_LVCMOS";
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
    SB_LUT4 i1096_3_lut (.I0(capture[0]), .I1(capture[1]), .I2(n4858), 
            .I3(GND_net), .O(n1170));   // ../uart.v(45[27:91])
    defparam i1096_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1097_3_lut (.I0(uart_rx_data[0]), .I1(capture[1]), .I2(rx_data_7__N_511), 
            .I3(GND_net), .O(n1171));   // ../uart.v(50[8] 55[4])
    defparam i1097_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1104_3_lut (.I0(uart_rx_data[7]), .I1(capture[8]), .I2(rx_data_7__N_511), 
            .I3(GND_net), .O(n1178));   // ../uart.v(50[8] 55[4])
    defparam i1104_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1105_3_lut (.I0(uart_rx_data[6]), .I1(capture[7]), .I2(rx_data_7__N_511), 
            .I3(GND_net), .O(n1179));   // ../uart.v(50[8] 55[4])
    defparam i1105_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1106_3_lut (.I0(uart_rx_data[5]), .I1(capture[6]), .I2(rx_data_7__N_511), 
            .I3(GND_net), .O(n1180));   // ../uart.v(50[8] 55[4])
    defparam i1106_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1107_3_lut (.I0(uart_rx_data[4]), .I1(capture[5]), .I2(rx_data_7__N_511), 
            .I3(GND_net), .O(n1181));   // ../uart.v(50[8] 55[4])
    defparam i1107_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1109_3_lut (.I0(uart_rx_data[3]), .I1(capture[4]), .I2(rx_data_7__N_511), 
            .I3(GND_net), .O(n1183));   // ../uart.v(50[8] 55[4])
    defparam i1109_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1110_3_lut (.I0(uart_rx_data[2]), .I1(capture[3]), .I2(rx_data_7__N_511), 
            .I3(GND_net), .O(n1184));   // ../uart.v(50[8] 55[4])
    defparam i1110_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1111_3_lut (.I0(uart_rx_data[1]), .I1(capture[2]), .I2(rx_data_7__N_511), 
            .I3(GND_net), .O(n1185));   // ../uart.v(50[8] 55[4])
    defparam i1111_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1112_3_lut (.I0(capture[9]), .I1(rx_c), .I2(n4858), .I3(GND_net), 
            .O(n1186));   // ../uart.v(45[27:91])
    defparam i1112_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1113_3_lut (.I0(capture[8]), .I1(capture[9]), .I2(n4858), 
            .I3(GND_net), .O(n1187));   // ../uart.v(45[27:91])
    defparam i1113_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1114_3_lut (.I0(capture[7]), .I1(capture[8]), .I2(n4858), 
            .I3(GND_net), .O(n1188));   // ../uart.v(45[27:91])
    defparam i1114_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1115_3_lut (.I0(capture[6]), .I1(capture[7]), .I2(n4858), 
            .I3(GND_net), .O(n1189));   // ../uart.v(45[27:91])
    defparam i1115_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1116_3_lut (.I0(capture[5]), .I1(capture[6]), .I2(n4858), 
            .I3(GND_net), .O(n1190));   // ../uart.v(45[27:91])
    defparam i1116_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1117_3_lut (.I0(capture[4]), .I1(capture[5]), .I2(n4858), 
            .I3(GND_net), .O(n1191));   // ../uart.v(45[27:91])
    defparam i1117_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1118_3_lut (.I0(capture[3]), .I1(capture[4]), .I2(n4858), 
            .I3(GND_net), .O(n1192));   // ../uart.v(45[27:91])
    defparam i1118_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1119_3_lut (.I0(capture[2]), .I1(capture[3]), .I2(n4858), 
            .I3(GND_net), .O(n1193));   // ../uart.v(45[27:91])
    defparam i1119_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1120_3_lut (.I0(capture[1]), .I1(capture[2]), .I2(n4858), 
            .I3(GND_net), .O(n1194));   // ../uart.v(45[27:91])
    defparam i1120_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1124_3_lut (.I0(tc[0]), .I1(n92), .I2(stall_), .I3(GND_net), 
            .O(n1198));   // ../tok.v(160[10] 167[10])
    defparam i1124_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1077_4_lut (.I0(A_stk_delta[1]), .I1(tail[112]), .I2(tail[96]), 
            .I3(rd_15__N_301), .O(n1151));   // ../stack.v(24[10] 29[6])
    defparam i1077_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1152_3_lut (.I0(tc[7]), .I1(n92_adj_869), .I2(stall_), .I3(GND_net), 
            .O(n1226));   // ../tok.v(160[10] 167[10])
    defparam i1152_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1074_4_lut (.I0(A_stk_delta[1]), .I1(tail[113]), .I2(tail[97]), 
            .I3(rd_15__N_301), .O(n1148));   // ../stack.v(24[10] 29[6])
    defparam i1074_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1071_4_lut (.I0(A_stk_delta[1]), .I1(tail[114]), .I2(tail[98]), 
            .I3(rd_15__N_301), .O(n1145));   // ../stack.v(24[10] 29[6])
    defparam i1071_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1068_4_lut (.I0(A_stk_delta[1]), .I1(tail[115]), .I2(tail[99]), 
            .I3(rd_15__N_301), .O(n1142));   // ../stack.v(24[10] 29[6])
    defparam i1068_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1065_4_lut (.I0(A_stk_delta[1]), .I1(tail[116]), .I2(tail[100]), 
            .I3(rd_15__N_301), .O(n1139));   // ../stack.v(24[10] 29[6])
    defparam i1065_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1062_4_lut (.I0(A_stk_delta[1]), .I1(tail[117]), .I2(tail[101]), 
            .I3(rd_15__N_301), .O(n1136));   // ../stack.v(24[10] 29[6])
    defparam i1062_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1059_4_lut (.I0(A_stk_delta[1]), .I1(tail[118]), .I2(tail[102]), 
            .I3(rd_15__N_301), .O(n1133));   // ../stack.v(24[10] 29[6])
    defparam i1059_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1162_3_lut (.I0(tc[6]), .I1(n10_adj_871), .I2(stall_), .I3(GND_net), 
            .O(n1236));   // ../tok.v(160[10] 167[10])
    defparam i1162_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1163_3_lut (.I0(tc[5]), .I1(n92_adj_868), .I2(stall_), .I3(GND_net), 
            .O(n1237));   // ../tok.v(160[10] 167[10])
    defparam i1163_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1164_3_lut (.I0(tc[4]), .I1(n10_adj_870), .I2(stall_), .I3(GND_net), 
            .O(n1238));   // ../tok.v(160[10] 167[10])
    defparam i1164_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1165_3_lut (.I0(tc[3]), .I1(n92_adj_867), .I2(stall_), .I3(GND_net), 
            .O(n1239));   // ../tok.v(160[10] 167[10])
    defparam i1165_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1166_3_lut (.I0(tc[2]), .I1(n10), .I2(stall_), .I3(GND_net), 
            .O(n1240));   // ../tok.v(160[10] 167[10])
    defparam i1166_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1167_3_lut (.I0(tc[1]), .I1(n10_adj_866), .I2(stall_), .I3(GND_net), 
            .O(n1241));   // ../tok.v(160[10] 167[10])
    defparam i1167_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1056_4_lut (.I0(A_stk_delta[1]), .I1(tail[119]), .I2(tail[103]), 
            .I3(rd_15__N_301), .O(n1130));   // ../stack.v(24[10] 29[6])
    defparam i1056_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1161_4_lut (.I0(A_stk_delta[1]), .I1(tail[120]), .I2(tail[104]), 
            .I3(rd_15__N_301), .O(n1235));   // ../stack.v(24[10] 29[6])
    defparam i1161_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1151_4_lut (.I0(A_stk_delta[1]), .I1(tail[121]), .I2(tail[105]), 
            .I3(rd_15__N_301), .O(n1225));   // ../stack.v(24[10] 29[6])
    defparam i1151_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1148_4_lut (.I0(A_stk_delta[1]), .I1(tail[122]), .I2(tail[106]), 
            .I3(rd_15__N_301), .O(n1222));   // ../stack.v(24[10] 29[6])
    defparam i1148_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1145_4_lut (.I0(A_stk_delta[1]), .I1(tail[123]), .I2(tail[107]), 
            .I3(rd_15__N_301), .O(n1219));   // ../stack.v(24[10] 29[6])
    defparam i1145_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1142_4_lut (.I0(A_stk_delta[1]), .I1(tail[124]), .I2(tail[108]), 
            .I3(rd_15__N_301), .O(n1216));   // ../stack.v(24[10] 29[6])
    defparam i1142_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1139_4_lut (.I0(A_stk_delta[1]), .I1(tail[125]), .I2(tail[109]), 
            .I3(rd_15__N_301), .O(n1213));   // ../stack.v(24[10] 29[6])
    defparam i1139_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1136_4_lut (.I0(A_stk_delta[1]), .I1(tail[126]), .I2(tail[110]), 
            .I3(rd_15__N_301), .O(n1210));   // ../stack.v(24[10] 29[6])
    defparam i1136_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1133_4_lut (.I0(A_stk_delta[1]), .I1(tail[127]), .I2(tail[111]), 
            .I3(rd_15__N_301), .O(n1207));   // ../stack.v(24[10] 29[6])
    defparam i1133_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1130_4_lut_4_lut (.I0(n23), .I1(sender[1]), .I2(sender[2]), 
            .I3(txtick), .O(n1204));   // ../uart.v(66[8:100])
    defparam i1130_4_lut_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1127_4_lut_4_lut (.I0(txtick), .I1(n23), .I2(sender[9]), 
            .I3(A_low[7]), .O(n1201));   // ../uart.v(66[8:100])
    defparam i1127_4_lut_4_lut.LUT_INIT = 16'hfe32;
    TOK tok (.n10(n10_adj_866), .clk(clk), .\A_low[7] (A_low[7]), .GND_net(GND_net), 
        .stall_(stall_), .n10_adj_9(n10), .reset_c(reset_c), .n92(n92_adj_867), 
        .tc({tc}), .n10_adj_10(n10_adj_870), .n92_adj_11(n92_adj_868), 
        .n10_adj_12(n10_adj_871), .n92_adj_13(n92_adj_869), .n92_adj_14(n92), 
        .n1241(n1241), .n1240(n1240), .n1239(n1239), .n1238(n1238), 
        .n1237(n1237), .n1236(n1236), .n1226(n1226), .n1198(n1198), 
        .uart_rx_data({uart_rx_data}), .rd_15__N_301(rd_15__N_301), .\A_stk_delta[1] (A_stk_delta[1]), 
        .n971(n971), .bytephase_5__N_510(bytephase_5__N_510), .txtick(txtick), 
        .\sender[1] (sender[1]), .tx_c(tx_c), .n23(n23), .n813(n813), 
        .n4858(n4858), .\sender[2] (sender[2]), .\sender[9] (sender[9]), 
        .n1204(n1204), .n1201(n1201), .n1194(n1194), .capture({capture}), 
        .n1193(n1193), .n1192(n1192), .n1191(n1191), .n1190(n1190), 
        .n1189(n1189), .n1188(n1188), .n1187(n1187), .n1186(n1186), 
        .n1185(n1185), .n1184(n1184), .n1183(n1183), .n1181(n1181), 
        .n1180(n1180), .n1179(n1179), .n1178(n1178), .n1171(n1171), 
        .n1170(n1170), .rx_data_7__N_511(rx_data_7__N_511), .rx_c(rx_c), 
        .\tail[96] (tail[96]), .\tail[97] (tail[97]), .\tail[98] (tail[98]), 
        .\tail[99] (tail[99]), .\tail[100] (tail[100]), .\tail[101] (tail[101]), 
        .\tail[102] (tail[102]), .\tail[103] (tail[103]), .\tail[104] (tail[104]), 
        .\tail[105] (tail[105]), .\tail[106] (tail[106]), .\tail[107] (tail[107]), 
        .\tail[108] (tail[108]), .\tail[109] (tail[109]), .\tail[110] (tail[110]), 
        .\tail[111] (tail[111]), .n1207(n1207), .\tail[127] (tail[127]), 
        .n1210(n1210), .\tail[126] (tail[126]), .n1213(n1213), .\tail[125] (tail[125]), 
        .n1216(n1216), .\tail[124] (tail[124]), .n1219(n1219), .\tail[123] (tail[123]), 
        .n1222(n1222), .\tail[122] (tail[122]), .n1225(n1225), .\tail[121] (tail[121]), 
        .n1235(n1235), .\tail[120] (tail[120]), .n1130(n1130), .\tail[119] (tail[119]), 
        .n1133(n1133), .\tail[118] (tail[118]), .n1136(n1136), .\tail[117] (tail[117]), 
        .n1139(n1139), .\tail[116] (tail[116]), .n1142(n1142), .\tail[115] (tail[115]), 
        .n1145(n1145), .\tail[114] (tail[114]), .n1148(n1148), .\tail[113] (tail[113]), 
        .n1151(n1151), .\tail[112] (tail[112])) /* synthesis syn_module_defined=1 */ ;   // ../lattice_top.v(12[5] 17[2])
    SB_LUT4 i1_2_lut (.I0(n813), .I1(bytephase_5__N_510), .I2(GND_net), 
            .I3(GND_net), .O(n971));
    defparam i1_2_lut.LUT_INIT = 16'hdddd;
    VCC i5619 (.Y(VCC_net));
    
endmodule
//
// Verilog Description of module TOK
//

module TOK (n10, clk, \A_low[7] , GND_net, stall_, n10_adj_9, reset_c, 
            n92, tc, n10_adj_10, n92_adj_11, n10_adj_12, n92_adj_13, 
            n92_adj_14, n1241, n1240, n1239, n1238, n1237, n1236, 
            n1226, n1198, uart_rx_data, rd_15__N_301, \A_stk_delta[1] , 
            n971, bytephase_5__N_510, txtick, \sender[1] , tx_c, n23, 
            n813, n4858, \sender[2] , \sender[9] , n1204, n1201, 
            n1194, capture, n1193, n1192, n1191, n1190, n1189, 
            n1188, n1187, n1186, n1185, n1184, n1183, n1181, n1180, 
            n1179, n1178, n1171, n1170, rx_data_7__N_511, rx_c, 
            \tail[96] , \tail[97] , \tail[98] , \tail[99] , \tail[100] , 
            \tail[101] , \tail[102] , \tail[103] , \tail[104] , \tail[105] , 
            \tail[106] , \tail[107] , \tail[108] , \tail[109] , \tail[110] , 
            \tail[111] , n1207, \tail[127] , n1210, \tail[126] , n1213, 
            \tail[125] , n1216, \tail[124] , n1219, \tail[123] , n1222, 
            \tail[122] , n1225, \tail[121] , n1235, \tail[120] , n1130, 
            \tail[119] , n1133, \tail[118] , n1136, \tail[117] , n1139, 
            \tail[116] , n1142, \tail[115] , n1145, \tail[114] , n1148, 
            \tail[113] , n1151, \tail[112] ) /* synthesis syn_module_defined=1 */ ;
    output n10;
    input clk;
    output \A_low[7] ;
    input GND_net;
    output stall_;
    output n10_adj_9;
    input reset_c;
    output n92;
    output [7:0]tc;
    output n10_adj_10;
    output n92_adj_11;
    output n10_adj_12;
    output n92_adj_13;
    output n92_adj_14;
    input n1241;
    input n1240;
    input n1239;
    input n1238;
    input n1237;
    input n1236;
    input n1226;
    input n1198;
    output [7:0]uart_rx_data;
    output rd_15__N_301;
    output \A_stk_delta[1] ;
    input n971;
    output bytephase_5__N_510;
    output txtick;
    output \sender[1] ;
    output tx_c;
    output n23;
    output n813;
    output n4858;
    output \sender[2] ;
    output \sender[9] ;
    input n1204;
    input n1201;
    input n1194;
    output [9:0]capture;
    input n1193;
    input n1192;
    input n1191;
    input n1190;
    input n1189;
    input n1188;
    input n1187;
    input n1186;
    input n1185;
    input n1184;
    input n1183;
    input n1181;
    input n1180;
    input n1179;
    input n1178;
    input n1171;
    input n1170;
    output rx_data_7__N_511;
    input rx_c;
    output \tail[96] ;
    output \tail[97] ;
    output \tail[98] ;
    output \tail[99] ;
    output \tail[100] ;
    output \tail[101] ;
    output \tail[102] ;
    output \tail[103] ;
    output \tail[104] ;
    output \tail[105] ;
    output \tail[106] ;
    output \tail[107] ;
    output \tail[108] ;
    output \tail[109] ;
    output \tail[110] ;
    output \tail[111] ;
    input n1207;
    output \tail[127] ;
    input n1210;
    output \tail[126] ;
    input n1213;
    output \tail[125] ;
    input n1216;
    output \tail[124] ;
    input n1219;
    output \tail[123] ;
    input n1222;
    output \tail[122] ;
    input n1225;
    output \tail[121] ;
    input n1235;
    output \tail[120] ;
    input n1130;
    output \tail[119] ;
    input n1133;
    output \tail[118] ;
    input n1136;
    output \tail[117] ;
    input n1139;
    output \tail[116] ;
    input n1142;
    output \tail[115] ;
    input n1145;
    output \tail[114] ;
    input n1148;
    output \tail[113] ;
    input n1151;
    output \tail[112] ;
    
    wire clk /* synthesis is_clock=1 */ ;   // ../lattice_top.v(10[6:9])
    
    wire n5553, n6;
    wire [15:0]table_rd;   // ../tok.v(78[15:23])
    
    wire n15, n5552, n3, n5610;
    wire [7:0]T;   // ../tok.v(32[14:15])
    
    wire n13, n5298, n820;
    wire [7:0]tc_plus_1;   // ../tok.v(99[14:23])
    
    wire n17, n13_adj_641, n14, n5551;
    wire [15:0]S;   // ../tok.v(35[15:16])
    
    wire n23_c, n4908;
    wire [15:0]A_;   // ../tok.v(100[17:19])
    
    wire search_clk_N_138, search_clk, reset_N_2;
    wire [7:0]c_stk_r;   // ../tok.v(58[14:21])
    
    wire n83;
    wire [15:0]A;   // ../tok.v(100[14:15])
    
    wire n24;
    wire [7:0]A_low;   // ../tok.v(31[14:19])
    
    wire n22, n23_adj_642, n10_adj_643;
    wire [7:0]idx_;   // ../tok.v(72[31:35])
    wire [7:0]idx;   // ../tok.v(72[26:29])
    
    wire n21, n11, n14_adj_644;
    wire [15:0]table_wr_data;   // ../tok.v(84[15:28])
    
    wire stall, n995, n3_adj_645, n5603, n13_adj_646;
    wire [15:0]key_rd;   // ../tok.v(79[15:21])
    
    wire n20, n14_adj_647, n27, n2699, n5282, n20_adj_648, n4775;
    wire [15:0]n286;
    
    wire n4776, n2735, n6_adj_650, n1, n18, n24_adj_651, n878, 
        n2609, n880, n4800, n4801, n83_adj_652, n5549, n2743, 
        n5548, n10_adj_653, n904, n13_adj_654, n12, n15_adj_655, 
        n17_adj_656, found_slot, n5, n4774, n400, n6_adj_657, n5547, 
        n19, n14_adj_658, n5546, n3_adj_659, n5460, n13_adj_660, 
        n17_adj_661, n14_adj_662, n4799, n20_adj_663, n15_adj_664, 
        n4762, n82, n4755, n4756, n83_adj_665, n30, n29, n5416;
    wire [7:0]n258;
    
    wire n10_adj_666, n15_adj_667, n14_adj_668, n5_adj_669, n15_adj_670, 
        n15_adj_671, n3_adj_672, n5487, n13_adj_673;
    wire [15:0]n173;
    
    wire n13_adj_674, n5396, n22_adj_676, n5544, n18_adj_677, n2661, 
        n5542, n83_adj_678, n4848;
    wire [8:0]n35;
    
    wire n45, n14_adj_679, n11_adj_680, n39, n11_adj_681, n23_adj_682, 
        n4, n807, n5338, n898, n3_adj_683, n5483, n5_adj_684, 
        n8, n10_adj_686, n83_adj_687, n5293, n14_adj_688, n8_adj_689, 
        n25, n28, n9, n3_adj_690, n5505, n13_adj_691, n3_adj_692, 
        VCC_net, n4763, n5342, n5539, n11_adj_694, n5318, n15_adj_695, 
        n4754, n45_adj_696, n39_adj_697, n22_adj_698, n4_adj_699, 
        n10_adj_700;
    wire [3:0]depth;   // ../tok.v(128[13:18])
    
    wire n14_adj_701, n5391, n8_adj_702, n24_adj_703, n27_adj_704, 
        n9_adj_705, n11_adj_706, n5350, n36, n5507, n42, n5287, 
        n4_adj_707, n5536, n101;
    wire [3:0]depth_;   // ../tok.v(128[20:26])
    
    wire n5408, n28_adj_708, n26, n27_adj_709, n2520, n2697, n25_adj_710;
    wire [15:0]n38;
    
    wire tc__7__N_134, n4_adj_712, n5_adj_713, n4798, n399, n83_adj_714, 
        n1_adj_715, n5_adj_716, n4797, n6_adj_717, n4773, n23_adj_718, 
        n4761, n3_adj_719, n5511, n5_adj_720, n22_adj_721, uart_stall, 
        n2, n14_adj_722, n12_adj_723, n13_adj_724, n9_adj_725, n5_adj_726, 
        n16, n6_adj_728, n20_adj_729, n5463, n11_adj_730, n31, n5372, 
        n5462, n5534, n5531, n23_adj_731, n5_adj_732, n4796, n41, 
        n21_adj_733;
    wire [7:0]tc_;   // ../tok.v(98[17:20])
    wire [15:0]n200;
    
    wire n5_adj_734, n14_adj_735, n12_adj_737, n10_adj_738, n18_adj_739, 
        n20_adj_740, n5348, n16_adj_741, n6_adj_742, n5527, n2_adj_743, 
        n14_adj_744, n12_adj_745, n13_adj_746, n4795, n10_adj_747, 
        n7, n9_adj_748, n16_adj_749, n5380, n26_adj_750, n42_adj_751, 
        n5254, n6_adj_752, n20_adj_753, n6_adj_754, n5525, n5522, 
        n28_adj_755, n26_adj_756, n27_adj_757, n25_adj_758, n18_adj_759, 
        n26_adj_760, n30_adj_761, n6_adj_762, n4772, n10_adj_763, 
        n14_adj_764, n14_adj_765, n2703, n9_adj_766, n2607, n8_adj_767, 
        n5412, n10_adj_768, n14_adj_769, A_stk_delta_1__N_4, n15_adj_770, 
        n28_adj_771, n13_adj_772, n22_adj_773, n5520, n18_adj_774, 
        n5518, n5467, n5470, n34, n5590, n5340, n2_adj_775, n14_adj_776, 
        n17_adj_777, n4_adj_778, n797, n12_adj_779, n13_adj_780, n9_adj_781, 
        n16_adj_782, n6_adj_783, n20_adj_784, n7_adj_785, n5334, n5414, 
        n5516, n5513, n9_adj_786, n37, n2585, n29_adj_787, n11_adj_788, 
        n15_adj_789, n890, n8_adj_790, n4794, n10_adj_791, n4771, 
        n8_adj_792, n241, n11_adj_793, n5312, n2515, n5473, n6_adj_794, 
        found_slot_N_145, n31_adj_795, n4793, n10_adj_796;
    wire [1:0]C_stk_delta;   // ../tok.v(55[13:24])
    
    wire n4792, n22_adj_797, n4770, n4791, n238, n9_adj_798, n4790, 
        n4760, n5554, n4789, n20_adj_799, n4769, n4748, n4749, 
        n5_adj_800, n4788, n4753, n9_adj_802, n10_adj_803, n4813, 
        write_flag, n4759, n4812, n4752, n5564, n4787, n8_adj_805, 
        n5271, n5406, n4750, n4811, n4_adj_806, n4786, n5272, 
        n5587, n4810, n5429, n5423, n5433, n14_adj_807, n2_adj_808, 
        n5175, n11_adj_809, n4809, n16_adj_810, n4785, n4751, n17_adj_812, 
        n4784, n4808, n4768, n4767, n4_adj_813;
    wire [3:0]n192;
    
    wire uart_tx_busy, uart_rx_valid, n5285, n5465, n4807, n2635, 
        n4783, n4758, n27_adj_815, n4806, n15_adj_817, n27_adj_818, 
        write_slot, n4747, n4805, n4782, n4766, n10_adj_820, n4804, 
        n4781, n27_adj_822, n4780, n10_adj_823, n4803, n4779, n285, 
        n4765, n4778, n12_adj_824, n27_adj_825, n12_adj_826, n10_adj_827, 
        n4802, n4764, n4777, n4757, n27_adj_828, n22_adj_829, n11_adj_830, 
        n27_adj_831, n12_adj_832, n27_adj_833, n6_adj_834, n5_adj_835, 
        n10_adj_836, n8_adj_837, n9_adj_838, n5336, n5574, n6_adj_839, 
        n32, n5346, n11_adj_840, n5366, n14_adj_841, n5571, n5569, 
        n83_adj_842, n5583, n6_adj_843, n31_adj_844, n10_adj_845, 
        n8_adj_846, n9_adj_847, n83_adj_848, n45_adj_849, n5566, n1_adj_850, 
        n16_adj_851, n13_adj_852, n17_adj_853, n5562, n14_adj_854, 
        n5561, n16_adj_855, n14_adj_856, n20_adj_857, n10_adj_858, 
        n3_adj_859, n18_adj_860, n22_adj_861, n5559, n5556, n1_adj_862, 
        n3_adj_863, n5_adj_864;
    wire [63:0]tail;   // ../stack.v(16[16:20])
    wire [63:0]tailN;   // ../stack.v(18[17:22])
    
    wire n1255, n1254, n1253, n1252, n1197, n1196, n1195, n1182;
    
    SB_LUT4 i5576_4_lut (.I0(n5553), .I1(n6), .I2(table_rd[6]), .I3(n15), 
            .O(n5552));   // ../tok.v(105[10] 124[8])
    defparam i5576_4_lut.LUT_INIT = 16'heefe;
    SB_LUT4 i27_4_lut (.I0(n3), .I1(n5610), .I2(T[6]), .I3(T[0]), .O(n13));   // ../tok.v(139[5] 146[14])
    defparam i27_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut (.I0(n5298), .I1(n820), .I2(tc_plus_1[1]), .I3(n13), 
            .O(n10));   // ../tok.v(139[5] 146[14])
    defparam i1_4_lut.LUT_INIT = 16'hdc50;
    SB_LUT4 i5582_4_lut (.I0(n5552), .I1(n17), .I2(n13_adj_641), .I3(n14), 
            .O(n5551));   // ../tok.v(105[10] 124[8])
    defparam i5582_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 A__15__I_0_i7_4_lut (.I0(S[6]), .I1(n5551), .I2(n23_c), .I3(n4908), 
            .O(A_[6]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i7_4_lut.LUT_INIT = 16'hcafa;
    SB_DFFR search_clk_198 (.Q(search_clk), .C(clk), .D(search_clk_N_138), 
            .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i125_4_lut (.I0(c_stk_r[2]), .I1(table_rd[2]), .I2(T[1]), 
            .I3(T[0]), .O(n83));   // ../tok.v(139[5] 146[14])
    defparam i125_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i8_4_lut (.I0(A[9]), .I1(A[15]), .I2(S[9]), .I3(S[15]), 
            .O(n24));
    defparam i8_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i6_4_lut (.I0(A_low[2]), .I1(\A_low[7] ), .I2(S[2]), .I3(S[7]), 
            .O(n22));
    defparam i6_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut (.I0(A[11]), .I1(A[14]), .I2(S[11]), .I3(S[14]), 
            .O(n23_adj_642));
    defparam i7_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 equal_114_i10_2_lut (.I0(T[2]), .I1(T[3]), .I2(GND_net), .I3(GND_net), 
            .O(n10_adj_643));   // ../tok.v(108[9:12])
    defparam equal_114_i10_2_lut.LUT_INIT = 16'heeee;
    SB_DFFR idx_i0 (.Q(idx[0]), .C(clk), .D(idx_[0]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i5_4_lut (.I0(A[10]), .I1(A[12]), .I2(S[10]), .I3(S[12]), 
            .O(n21));
    defparam i5_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i1698_3_lut_4_lut (.I0(n11), .I1(n14_adj_644), .I2(S[0]), 
            .I3(tc_plus_1[0]), .O(table_wr_data[0]));   // ../tok.v(76[51:57])
    defparam i1698_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_DFFR stall_200 (.Q(stall), .C(clk), .D(stall_), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i1 (.Q(A_low[0]), .C(clk), .E(n995), .D(A_[0]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i27_4_lut_adj_29 (.I0(n3_adj_645), .I1(n5603), .I2(T[6]), 
            .I3(T[0]), .O(n13_adj_646));   // ../tok.v(139[5] 146[14])
    defparam i27_4_lut_adj_29.LUT_INIT = 16'hcac0;
    SB_LUT4 i4_4_lut (.I0(key_rd[3]), .I1(key_rd[5]), .I2(A_low[3]), .I3(A_low[5]), 
            .O(n20));   // ../tok.v(81[46:59])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 key_rd_15__I_0_241_i14_2_lut (.I0(key_rd[13]), .I1(A[13]), .I2(GND_net), 
            .I3(GND_net), .O(n14_adj_647));   // ../tok.v(81[46:59])
    defparam key_rd_15__I_0_241_i14_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_30 (.I0(n27), .I1(idx[0]), .I2(n2699), .I3(n5282), 
            .O(idx_[0]));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_30.LUT_INIT = 16'h0ace;
    SB_LUT4 i4_4_lut_adj_31 (.I0(A_low[3]), .I1(A_low[5]), .I2(S[3]), 
            .I3(S[5]), .O(n20_adj_648));
    defparam i4_4_lut_adj_31.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut_adj_32 (.I0(n5298), .I1(n820), .I2(tc_plus_1[2]), 
            .I3(n13_adj_646), .O(n10_adj_9));   // ../tok.v(139[5] 146[14])
    defparam i1_4_lut_adj_32.LUT_INIT = 16'hdc50;
    SB_CARRY sub_105_add_2_9 (.CI(n4775), .I0(S[7]), .I1(n286[7]), .CO(n4776));
    SB_LUT4 select_73_Select_7_i1_4_lut (.I0(A_low[3]), .I1(n2735), .I2(T[7]), 
            .I3(n6_adj_650), .O(n1));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_7_i1_4_lut.LUT_INIT = 16'h3223;
    SB_LUT4 i2_4_lut (.I0(A_low[1]), .I1(A_low[4]), .I2(S[1]), .I3(S[4]), 
            .O(n18));
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i8_4_lut_adj_33 (.I0(key_rd[9]), .I1(key_rd[15]), .I2(A[9]), 
            .I3(A[15]), .O(n24_adj_651));   // ../tok.v(81[46:59])
    defparam i8_4_lut_adj_33.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_3_lut (.I0(T[4]), .I1(n878), .I2(n2609), .I3(GND_net), 
            .O(n880));
    defparam i2_3_lut.LUT_INIT = 16'hdfdf;
    SB_CARRY add_109_4 (.CI(n4800), .I0(S[2]), .I1(GND_net), .CO(n4801));
    SB_LUT4 i125_4_lut_adj_34 (.I0(c_stk_r[3]), .I1(table_rd[3]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_652));   // ../tok.v(139[5] 146[14])
    defparam i125_4_lut_adj_34.LUT_INIT = 16'h0ac0;
    SB_LUT4 i5447_4_lut (.I0(n5549), .I1(A_low[2]), .I2(n2743), .I3(T[7]), 
            .O(n5548));   // ../tok.v(105[10] 124[8])
    defparam i5447_4_lut.LUT_INIT = 16'habae;
    SB_LUT4 i2_4_lut_adj_35 (.I0(n880), .I1(n10_adj_653), .I2(n904), .I3(\A_low[7] ), 
            .O(n13_adj_654));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_35.LUT_INIT = 16'hcfdd;
    SB_LUT4 i6_4_lut_adj_36 (.I0(A[15]), .I1(n12), .I2(n15_adj_655), .I3(n1), 
            .O(n17_adj_656));   // ../tok.v(107[7] 123[14])
    defparam i6_4_lut_adj_36.LUT_INIT = 16'hffce;
    SB_LUT4 reset_I_0_1_lut (.I0(reset_c), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(reset_N_2));   // ../tok.v(152[9:15])
    defparam reset_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut (.I0(found_slot), .I1(search_clk), .I2(GND_net), 
            .I3(GND_net), .O(n5));   // ../tok.v(87[5] 94[14])
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 sub_105_add_2_8_lut (.I0(n400), .I1(S[6]), .I2(n286[6]), .I3(n4774), 
            .O(n6)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_8_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i5445_4_lut (.I0(n5548), .I1(n6_adj_657), .I2(table_rd[7]), 
            .I3(n15), .O(n5547));   // ../tok.v(105[10] 124[8])
    defparam i5445_4_lut.LUT_INIT = 16'heefe;
    SB_LUT4 i3_4_lut (.I0(A[8]), .I1(A[13]), .I2(S[8]), .I3(S[13]), 
            .O(n19));
    defparam i3_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i5578_4_lut (.I0(n5547), .I1(n17_adj_656), .I2(n13_adj_654), 
            .I3(n14_adj_658), .O(n5546));   // ../tok.v(105[10] 124[8])
    defparam i5578_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i27_4_lut_adj_37 (.I0(n3_adj_659), .I1(n5460), .I2(T[6]), 
            .I3(T[0]), .O(n13_adj_660));   // ../tok.v(139[5] 146[14])
    defparam i27_4_lut_adj_37.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_38 (.I0(A_low[0]), .I1(A_low[6]), .I2(S[0]), 
            .I3(S[6]), .O(n17_adj_661));
    defparam i1_4_lut_adj_38.LUT_INIT = 16'h7bde;
    SB_LUT4 A__15__I_0_i8_4_lut (.I0(S[7]), .I1(n5546), .I2(n23_c), .I3(n4908), 
            .O(A_[7]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i8_4_lut.LUT_INIT = 16'hcafa;
    SB_LUT4 add_109_3_lut (.I0(n20_adj_663), .I1(S[1]), .I2(GND_net), 
            .I3(n4799), .O(n14_adj_662)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_3_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1_4_lut_adj_39 (.I0(n5298), .I1(n820), .I2(tc_plus_1[3]), 
            .I3(n13_adj_660), .O(n92));   // ../tok.v(139[5] 146[14])
    defparam i1_4_lut_adj_39.LUT_INIT = 16'hdc50;
    SB_LUT4 sub_100_add_2_4_lut (.I0(n82), .I1(T[2]), .I2(GND_net), .I3(n4762), 
            .O(n15_adj_664)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_100_add_2_4_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1660_3_lut_4_lut (.I0(n11), .I1(n14_adj_644), .I2(S[1]), 
            .I3(tc_plus_1[1]), .O(table_wr_data[1]));   // ../tok.v(76[51:57])
    defparam i1660_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_CARRY tc_7__I_0_4 (.CI(n4755), .I0(tc[2]), .I1(GND_net), .CO(n4756));
    SB_LUT4 i125_4_lut_adj_40 (.I0(c_stk_r[4]), .I1(table_rd[4]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_665));   // ../tok.v(139[5] 146[14])
    defparam i125_4_lut_adj_40.LUT_INIT = 16'h0ac0;
    SB_LUT4 i14_4_lut (.I0(n21), .I1(n23_adj_642), .I2(n22), .I3(n24), 
            .O(n30));
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_4_lut (.I0(n17_adj_661), .I1(n19), .I2(n18), .I3(n20_adj_648), 
            .O(n29));
    defparam i13_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i5244_3_lut (.I0(n4908), .I1(A[8]), .I2(n880), .I3(GND_net), 
            .O(n5416));
    defparam i5244_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i50_4_lut (.I0(A_low[0]), .I1(n258[0]), .I2(stall), .I3(search_clk), 
            .O(n27));   // ../tok.v(87[5] 94[14])
    defparam i50_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i2_3_lut_adj_41 (.I0(n10_adj_666), .I1(A_low[0]), .I2(n15_adj_667), 
            .I3(GND_net), .O(n14_adj_668));   // ../tok.v(107[7] 123[14])
    defparam i2_3_lut_adj_41.LUT_INIT = 16'haeae;
    SB_LUT4 i3_3_lut (.I0(table_rd[8]), .I1(n5_adj_669), .I2(n15), .I3(GND_net), 
            .O(n15_adj_670));   // ../tok.v(107[7] 123[14])
    defparam i3_3_lut.LUT_INIT = 16'hcece;
    SB_LUT4 i5151_3_lut (.I0(n29), .I1(n15_adj_671), .I2(n30), .I3(GND_net), 
            .O(n4908));
    defparam i5151_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i27_4_lut_adj_42 (.I0(n3_adj_672), .I1(n5487), .I2(T[6]), 
            .I3(T[0]), .O(n13_adj_673));   // ../tok.v(139[5] 146[14])
    defparam i27_4_lut_adj_42.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_43 (.I0(A[8]), .I1(n173[8]), .I2(n904), .I3(n2735), 
            .O(n13_adj_674));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_43.LUT_INIT = 16'h0ace;
    SB_LUT4 i1_4_lut_adj_44 (.I0(n5298), .I1(n820), .I2(tc_plus_1[4]), 
            .I3(n13_adj_673), .O(n10_adj_10));   // ../tok.v(139[5] 146[14])
    defparam i1_4_lut_adj_44.LUT_INIT = 16'hdc50;
    SB_LUT4 i5225_2_lut (.I0(A_low[3]), .I1(n2743), .I2(GND_net), .I3(GND_net), 
            .O(n5396));
    defparam i5225_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i10_4_lut (.I0(n13_adj_674), .I1(n15_adj_670), .I2(n14_adj_668), 
            .I3(n5416), .O(n22_adj_676));   // ../tok.v(107[7] 123[14])
    defparam i10_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i5496_4_lut (.I0(n5544), .I1(n18_adj_677), .I2(S[8]), .I3(n2661), 
            .O(n5542));   // ../tok.v(105[10] 124[8])
    defparam i5496_4_lut.LUT_INIT = 16'heefe;
    SB_LUT4 A__15__I_0_i9_4_lut (.I0(S[8]), .I1(n5542), .I2(n23_c), .I3(n22_adj_676), 
            .O(A_[8]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i9_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i125_4_lut_adj_45 (.I0(c_stk_r[5]), .I1(table_rd[5]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_678));   // ../tok.v(139[5] 146[14])
    defparam i125_4_lut_adj_45.LUT_INIT = 16'h0ac0;
    SB_LUT4 i1736_3_lut_4_lut (.I0(n11), .I1(n14_adj_644), .I2(S[7]), 
            .I3(tc_plus_1[7]), .O(table_wr_data[7]));   // ../tok.v(76[51:57])
    defparam i1736_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i1_3_lut (.I0(n4848), .I1(A_low[5]), .I2(n35[8]), .I3(GND_net), 
            .O(n45));   // ../tok.v(107[7] 123[14])
    defparam i1_3_lut.LUT_INIT = 16'h5454;
    SB_LUT4 i1_4_lut_adj_46 (.I0(n14_adj_679), .I1(n11_adj_680), .I2(n45), 
            .I3(table_rd[9]), .O(n39));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_46.LUT_INIT = 16'h5150;
    SB_LUT4 i1_3_lut_adj_47 (.I0(n11_adj_681), .I1(n23_adj_682), .I2(A_low[1]), 
            .I3(GND_net), .O(n4));   // ../tok.v(107[7] 123[14])
    defparam i1_3_lut_adj_47.LUT_INIT = 16'hdcdc;
    SB_LUT4 i3_4_lut_adj_48 (.I0(T[1]), .I1(n807), .I2(n5338), .I3(n898), 
            .O(n23_c));   // ../tok.v(104[8:16])
    defparam i3_4_lut_adj_48.LUT_INIT = 16'hfffe;
    SB_LUT4 i18_4_lut (.I0(n3_adj_683), .I1(n5483), .I2(T[6]), .I3(T[0]), 
            .O(n5_adj_684));   // ../tok.v(139[5] 146[14])
    defparam i18_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_49 (.I0(n5298), .I1(n820), .I2(tc_plus_1[5]), 
            .I3(n5_adj_684), .O(n92_adj_11));   // ../tok.v(139[5] 146[14])
    defparam i1_4_lut_adj_49.LUT_INIT = 16'hdc50;
    SB_CARRY add_109_3 (.CI(n4799), .I0(S[1]), .I1(GND_net), .CO(n4800));
    SB_LUT4 i3_4_lut_adj_50 (.I0(n39), .I1(n2735), .I2(A_low[5]), .I3(n8), 
            .O(n10_adj_686));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_50.LUT_INIT = 16'hbabb;
    SB_LUT4 i125_4_lut_adj_51 (.I0(c_stk_r[6]), .I1(table_rd[6]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_687));   // ../tok.v(139[5] 146[14])
    defparam i125_4_lut_adj_51.LUT_INIT = 16'h0ac0;
    SB_LUT4 i5_3_lut (.I0(n5293), .I1(n11), .I2(n11_adj_681), .I3(GND_net), 
            .O(n14_adj_688));
    defparam i5_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_4_lut_adj_52 (.I0(n2743), .I1(n2661), .I2(A_low[4]), .I3(S[9]), 
            .O(n8_adj_689));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_52.LUT_INIT = 16'h7350;
    SB_CARRY sub_105_add_2_8 (.CI(n4774), .I0(S[6]), .I1(n286[6]), .CO(n4775));
    SB_LUT4 i2_4_lut_adj_53 (.I0(n25), .I1(n14_adj_644), .I2(n28), .I3(n4), 
            .O(n9));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_53.LUT_INIT = 16'hbbba;
    SB_LUT4 i27_4_lut_adj_54 (.I0(n3_adj_690), .I1(n5505), .I2(T[6]), 
            .I3(T[0]), .O(n13_adj_691));   // ../tok.v(139[5] 146[14])
    defparam i27_4_lut_adj_54.LUT_INIT = 16'hcac0;
    SB_LUT4 add_109_2_lut (.I0(n20_adj_663), .I1(S[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n3_adj_692)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_109_2 (.CI(VCC_net), .I0(S[0]), .I1(GND_net), .CO(n4799));
    SB_CARRY sub_100_add_2_4 (.CI(n4762), .I0(T[2]), .I1(GND_net), .CO(n4763));
    SB_LUT4 i1_4_lut_adj_55 (.I0(n5298), .I1(n820), .I2(tc_plus_1[6]), 
            .I3(n13_adj_691), .O(n10_adj_12));   // ../tok.v(139[5] 146[14])
    defparam i1_4_lut_adj_55.LUT_INIT = 16'hdc50;
    SB_LUT4 i59_3_lut (.I0(n880), .I1(n904), .I2(A[9]), .I3(GND_net), 
            .O(n5342));   // ../tok.v(107[7] 123[14])
    defparam i59_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5560_4_lut (.I0(n5342), .I1(n9), .I2(n8_adj_689), .I3(n10_adj_686), 
            .O(n5539));   // ../tok.v(105[10] 124[8])
    defparam i5560_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i6_4_lut_adj_56 (.I0(n10_adj_643), .I1(n11_adj_694), .I2(n5318), 
            .I3(n11_adj_680), .O(n15_adj_695));
    defparam i6_4_lut_adj_56.LUT_INIT = 16'hc800;
    SB_LUT4 tc_7__I_0_3_lut (.I0(GND_net), .I1(tc[1]), .I2(GND_net), .I3(n4754), 
            .O(tc_plus_1[1])) /* synthesis syn_instantiated=1 */ ;
    defparam tc_7__I_0_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 A__15__I_0_i10_4_lut (.I0(S[9]), .I1(n5539), .I2(n23_c), .I3(n4908), 
            .O(A_[9]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i10_4_lut.LUT_INIT = 16'hcafa;
    SB_LUT4 i1774_3_lut_4_lut (.I0(n11), .I1(n14_adj_644), .I2(S[6]), 
            .I3(tc_plus_1[6]), .O(table_wr_data[6]));   // ../tok.v(76[51:57])
    defparam i1774_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 T_7__I_0_233_i15_2_lut (.I0(n11_adj_681), .I1(n14_adj_644), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_667));   // ../tok.v(21[34:42])
    defparam T_7__I_0_233_i15_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_3_lut_adj_57 (.I0(n4848), .I1(A_low[6]), .I2(n35[8]), .I3(GND_net), 
            .O(n45_adj_696));   // ../tok.v(107[7] 123[14])
    defparam i1_3_lut_adj_57.LUT_INIT = 16'h5454;
    SB_LUT4 i1_4_lut_adj_58 (.I0(n14_adj_679), .I1(n11_adj_680), .I2(n45_adj_696), 
            .I3(table_rd[10]), .O(n39_adj_697));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_58.LUT_INIT = 16'h5150;
    SB_LUT4 i1_3_lut_adj_59 (.I0(n11_adj_681), .I1(n22_adj_698), .I2(A_low[2]), 
            .I3(GND_net), .O(n4_adj_699));   // ../tok.v(107[7] 123[14])
    defparam i1_3_lut_adj_59.LUT_INIT = 16'hdcdc;
    SB_LUT4 i1812_3_lut_4_lut (.I0(n11), .I1(n14_adj_644), .I2(S[5]), 
            .I3(tc_plus_1[5]), .O(table_wr_data[5]));   // ../tok.v(76[51:57])
    defparam i1812_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i3_4_lut_adj_60 (.I0(n39_adj_697), .I1(n2735), .I2(A_low[6]), 
            .I3(n8), .O(n10_adj_700));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_60.LUT_INIT = 16'hbabb;
    SB_LUT4 i5173_2_lut (.I0(depth[2]), .I1(depth[3]), .I2(GND_net), .I3(GND_net), 
            .O(n5338));
    defparam i5173_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i2652_4_lut (.I0(n14_adj_701), .I1(n15_adj_695), .I2(n5391), 
            .I3(n14_adj_688), .O(n2735));
    defparam i2652_4_lut.LUT_INIT = 16'heaaa;
    SB_LUT4 i1546_3_lut_4_lut (.I0(n11), .I1(n14_adj_644), .I2(S[4]), 
            .I3(tc_plus_1[4]), .O(table_wr_data[4]));   // ../tok.v(76[51:57])
    defparam i1546_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i1_4_lut_adj_61 (.I0(A_low[5]), .I1(n2661), .I2(n2743), .I3(S[10]), 
            .O(n8_adj_702));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_61.LUT_INIT = 16'h3705;
    SB_LUT4 i2_4_lut_adj_62 (.I0(n24_adj_703), .I1(n14_adj_644), .I2(n27_adj_704), 
            .I3(n4_adj_699), .O(n9_adj_705));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_62.LUT_INIT = 16'hbbba;
    SB_LUT4 equal_122_i11_2_lut_4_lut (.I0(T[0]), .I1(T[1]), .I2(T[2]), 
            .I3(T[3]), .O(n11_adj_706));   // ../tok.v(109[9:12])
    defparam equal_122_i11_2_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i59_3_lut_adj_63 (.I0(n880), .I1(n904), .I2(A[10]), .I3(GND_net), 
            .O(n5350));   // ../tok.v(107[7] 123[14])
    defparam i59_3_lut_adj_63.LUT_INIT = 16'hcaca;
    SB_LUT4 i59_4_lut (.I0(n36), .I1(n5507), .I2(T[6]), .I3(T[0]), .O(n42));   // ../tok.v(139[5] 146[14])
    defparam i59_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i2_4_lut_adj_64 (.I0(n5338), .I1(n42), .I2(n5287), .I3(n4_adj_707), 
            .O(n5298));   // ../tok.v(139[5] 146[14])
    defparam i2_4_lut_adj_64.LUT_INIT = 16'h4000;
    SB_LUT4 i5441_4_lut (.I0(n5350), .I1(n9_adj_705), .I2(n8_adj_702), 
            .I3(n10_adj_700), .O(n5536));   // ../tok.v(105[10] 124[8])
    defparam i5441_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 inv_106_i9_1_lut (.I0(A[8]), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n286[8]));   // ../tok.v(115[20:22])
    defparam inv_106_i9_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 A__15__I_0_i11_4_lut (.I0(S[10]), .I1(n5536), .I2(n23_c), 
            .I3(n4908), .O(A_[10]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i11_4_lut.LUT_INIT = 16'hcafa;
    SB_LUT4 i1_2_lut_adj_65 (.I0(T[4]), .I1(T[1]), .I2(GND_net), .I3(GND_net), 
            .O(n101));   // ../tok.v(139[5] 146[14])
    defparam i1_2_lut_adj_65.LUT_INIT = 16'heeee;
    SB_LUT4 i5236_3_lut (.I0(depth_[2]), .I1(depth_[1]), .I2(depth_[3]), 
            .I3(GND_net), .O(n5408));
    defparam i5236_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i12_4_lut (.I0(A[11]), .I1(A[9]), .I2(A[14]), .I3(A[15]), 
            .O(n28_adj_708));   // ../tok.v(144[37:38])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1584_3_lut_4_lut (.I0(n11), .I1(n14_adj_644), .I2(S[3]), 
            .I3(tc_plus_1[3]), .O(table_wr_data[3]));   // ../tok.v(76[51:57])
    defparam i1584_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 inv_106_i10_1_lut (.I0(A[9]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[9]));   // ../tok.v(115[20:22])
    defparam inv_106_i10_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_106_i11_1_lut (.I0(A[10]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[10]));   // ../tok.v(115[20:22])
    defparam inv_106_i11_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_106_i12_1_lut (.I0(A[11]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[11]));   // ../tok.v(115[20:22])
    defparam inv_106_i12_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i10_4_lut_adj_66 (.I0(A[8]), .I1(A_low[3]), .I2(A[13]), .I3(A_low[5]), 
            .O(n26));   // ../tok.v(144[37:38])
    defparam i10_4_lut_adj_66.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut (.I0(A[10]), .I1(A_low[2]), .I2(A[12]), .I3(\A_low[7] ), 
            .O(n27_adj_709));   // ../tok.v(144[37:38])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 inv_106_i13_1_lut (.I0(A[12]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[12]));   // ../tok.v(115[20:22])
    defparam inv_106_i13_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_106_i14_1_lut (.I0(A[13]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[13]));   // ../tok.v(115[20:22])
    defparam inv_106_i14_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i2620_3_lut_4_lut (.I0(n11), .I1(n14_adj_644), .I2(n2520), 
            .I3(n15), .O(n2697));   // ../tok.v(76[51:57])
    defparam i2620_3_lut_4_lut.LUT_INIT = 16'he000;
    SB_LUT4 i9_4_lut (.I0(A_low[0]), .I1(A_low[1]), .I2(A_low[6]), .I3(A_low[4]), 
            .O(n25_adj_710));   // ../tok.v(144[37:38])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 inv_106_i15_1_lut (.I0(A[14]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[14]));   // ../tok.v(115[20:22])
    defparam inv_106_i15_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_106_i16_1_lut (.I0(A[15]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[15]));   // ../tok.v(115[20:22])
    defparam inv_106_i16_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_105_inv_0_i1_1_lut (.I0(A_low[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n38[0]));   // ../tok.v(114[20:25])
    defparam sub_105_inv_0_i1_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i15_4_lut (.I0(n25_adj_710), .I1(n27_adj_709), .I2(n26), .I3(n28_adj_708), 
            .O(tc__7__N_134));   // ../tok.v(144[37:38])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_67 (.I0(T[1]), .I1(T[4]), .I2(GND_net), .I3(GND_net), 
            .O(n4_adj_712));   // ../tok.v(139[5] 146[14])
    defparam i1_2_lut_adj_67.LUT_INIT = 16'h8888;
    SB_LUT4 inv_106_i2_1_lut (.I0(A_low[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[1]));   // ../tok.v(115[20:22])
    defparam inv_106_i2_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_104_17_lut (.I0(n399), .I1(A[15]), .I2(S[15]), .I3(n4798), 
            .O(n5_adj_713)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_17_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i125_4_lut_adj_68 (.I0(c_stk_r[7]), .I1(table_rd[7]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_714));   // ../tok.v(139[5] 146[14])
    defparam i125_4_lut_adj_68.LUT_INIT = 16'h0ac0;
    SB_LUT4 inv_106_i3_1_lut (.I0(A_low[2]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[2]));   // ../tok.v(115[20:22])
    defparam inv_106_i3_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_adj_69 (.I0(depth[0]), .I1(n1_adj_715), .I2(GND_net), 
            .I3(GND_net), .O(depth_[0]));
    defparam i1_2_lut_adj_69.LUT_INIT = 16'h6666;
    SB_LUT4 inv_106_i4_1_lut (.I0(A_low[3]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[3]));   // ../tok.v(115[20:22])
    defparam inv_106_i4_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_104_16_lut (.I0(n399), .I1(A[14]), .I2(S[14]), .I3(n4797), 
            .O(n5_adj_716)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_16_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_105_add_2_7_lut (.I0(n400), .I1(S[5]), .I2(n286[5]), .I3(n4773), 
            .O(n6_adj_717)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_7_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_104_16 (.CI(n4797), .I0(A[14]), .I1(S[14]), .CO(n4798));
    SB_LUT4 sub_100_add_2_3_lut (.I0(n82), .I1(T[1]), .I2(GND_net), .I3(n4761), 
            .O(n23_adj_718)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_100_add_2_3_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i18_4_lut_adj_70 (.I0(n3_adj_719), .I1(n5511), .I2(T[6]), 
            .I3(T[0]), .O(n5_adj_720));   // ../tok.v(139[5] 146[14])
    defparam i18_4_lut_adj_70.LUT_INIT = 16'hcac0;
    SB_LUT4 i6_4_lut_adj_71 (.I0(key_rd[2]), .I1(key_rd[7]), .I2(A_low[2]), 
            .I3(\A_low[7] ), .O(n22_adj_721));   // ../tok.v(81[46:59])
    defparam i6_4_lut_adj_71.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut_adj_72 (.I0(uart_stall), .I1(n2697), .I2(stall), 
            .I3(n5), .O(stall_));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_72.LUT_INIT = 16'hbbab;
    SB_LUT4 i3_4_lut_adj_73 (.I0(n2), .I1(\A_low[7] ), .I2(n2735), .I3(n8), 
            .O(n14_adj_722));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_73.LUT_INIT = 16'haeaf;
    SB_LUT4 i1_4_lut_adj_74 (.I0(A_low[6]), .I1(A[11]), .I2(n2743), .I3(n880), 
            .O(n12_adj_723));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_74.LUT_INIT = 16'h0a3b;
    SB_LUT4 i2_4_lut_adj_75 (.I0(A_low[3]), .I1(A[11]), .I2(n15_adj_667), 
            .I3(n904), .O(n13_adj_724));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_75.LUT_INIT = 16'h0ace;
    SB_LUT4 select_73_Select_11_i9_2_lut (.I0(S[11]), .I1(n2661), .I2(GND_net), 
            .I3(GND_net), .O(n9_adj_725));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_11_i9_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 search_clk_I_0_1_lut (.I0(search_clk), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(search_clk_N_138));   // ../tok.v(164[21:32])
    defparam search_clk_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i5_3_lut_adj_76 (.I0(table_rd[11]), .I1(n5_adj_726), .I2(n15), 
            .I3(GND_net), .O(n16));   // ../tok.v(107[7] 123[14])
    defparam i5_3_lut_adj_76.LUT_INIT = 16'hcece;
    SB_LUT4 i1_4_lut_adj_77 (.I0(n5298), .I1(n820), .I2(tc_plus_1[7]), 
            .I3(n5_adj_720), .O(n92_adj_13));   // ../tok.v(139[5] 146[14])
    defparam i1_4_lut_adj_77.LUT_INIT = 16'hdc50;
    SB_LUT4 i9_4_lut_adj_78 (.I0(n6_adj_728), .I1(n13_adj_724), .I2(n12_adj_723), 
            .I3(n14_adj_722), .O(n20_adj_729));   // ../tok.v(107[7] 123[14])
    defparam i9_4_lut_adj_78.LUT_INIT = 16'hfffe;
    SB_LUT4 i5555_4_lut (.I0(n5463), .I1(n11_adj_730), .I2(n31), .I3(n5372), 
            .O(n5462));   // ../tok.v(105[10] 124[8])
    defparam i5555_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i5567_4_lut (.I0(n5534), .I1(n20_adj_729), .I2(n16), .I3(n9_adj_725), 
            .O(n5531));   // ../tok.v(105[10] 124[8])
    defparam i5567_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 A__15__I_0_i12_4_lut (.I0(S[11]), .I1(n5531), .I2(n23_c), 
            .I3(n4908), .O(A_[11]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i12_4_lut.LUT_INIT = 16'hcafa;
    SB_LUT4 i2622_2_lut (.I0(n2697), .I1(uart_stall), .I2(GND_net), .I3(GND_net), 
            .O(n2699));
    defparam i2622_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i7_4_lut_adj_79 (.I0(key_rd[11]), .I1(key_rd[14]), .I2(A[11]), 
            .I3(A[14]), .O(n23_adj_731));   // ../tok.v(81[46:59])
    defparam i7_4_lut_adj_79.LUT_INIT = 16'h7bde;
    SB_LUT4 add_104_15_lut (.I0(n399), .I1(A[13]), .I2(S[13]), .I3(n4796), 
            .O(n5_adj_732)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_15_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1622_3_lut_4_lut (.I0(n11), .I1(n14_adj_644), .I2(S[2]), 
            .I3(tc_plus_1[2]), .O(table_wr_data[2]));   // ../tok.v(76[51:57])
    defparam i1622_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i1_2_lut_adj_80 (.I0(T[1]), .I1(T[0]), .I2(GND_net), .I3(GND_net), 
            .O(n41));   // ../tok.v(139[5] 146[14])
    defparam i1_2_lut_adj_80.LUT_INIT = 16'h8888;
    SB_DFFER A_i16 (.Q(A[15]), .C(clk), .E(n995), .D(A_[15]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i5_4_lut_adj_81 (.I0(key_rd[10]), .I1(key_rd[12]), .I2(A[10]), 
            .I3(A[12]), .O(n21_adj_733));   // ../tok.v(81[46:59])
    defparam i5_4_lut_adj_81.LUT_INIT = 16'h7bde;
    SB_LUT4 i26_3_lut (.I0(n92_adj_13), .I1(tc[7]), .I2(stall_), .I3(GND_net), 
            .O(tc_[7]));   // ../tok.v(139[5] 146[14])
    defparam i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i26_3_lut_adj_82 (.I0(n10_adj_12), .I1(tc[6]), .I2(stall_), 
            .I3(GND_net), .O(tc_[6]));   // ../tok.v(139[5] 146[14])
    defparam i26_3_lut_adj_82.LUT_INIT = 16'hcaca;
    SB_LUT4 i26_3_lut_adj_83 (.I0(n92_adj_11), .I1(tc[5]), .I2(stall_), 
            .I3(GND_net), .O(tc_[5]));   // ../tok.v(139[5] 146[14])
    defparam i26_3_lut_adj_83.LUT_INIT = 16'hcaca;
    SB_LUT4 or_101_i13_2_lut (.I0(A[8]), .I1(n35[8]), .I2(GND_net), .I3(GND_net), 
            .O(n200[12]));   // ../tok.v(109[40:60])
    defparam or_101_i13_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i3_3_lut_adj_84 (.I0(table_rd[12]), .I1(n5_adj_734), .I2(n15), 
            .I3(GND_net), .O(n14_adj_735));   // ../tok.v(107[7] 123[14])
    defparam i3_3_lut_adj_84.LUT_INIT = 16'hcece;
    SB_LUT4 i26_3_lut_adj_85 (.I0(n10_adj_10), .I1(tc[4]), .I2(stall_), 
            .I3(GND_net), .O(tc_[4]));   // ../tok.v(139[5] 146[14])
    defparam i26_3_lut_adj_85.LUT_INIT = 16'hcaca;
    SB_LUT4 i26_3_lut_adj_86 (.I0(n92), .I1(tc[3]), .I2(stall_), .I3(GND_net), 
            .O(tc_[3]));   // ../tok.v(139[5] 146[14])
    defparam i26_3_lut_adj_86.LUT_INIT = 16'hcaca;
    SB_LUT4 i26_3_lut_adj_87 (.I0(n10_adj_9), .I1(tc[2]), .I2(stall_), 
            .I3(GND_net), .O(tc_[2]));   // ../tok.v(139[5] 146[14])
    defparam i26_3_lut_adj_87.LUT_INIT = 16'hcaca;
    SB_LUT4 i26_3_lut_adj_88 (.I0(n10), .I1(tc[1]), .I2(stall_), .I3(GND_net), 
            .O(tc_[1]));   // ../tok.v(139[5] 146[14])
    defparam i26_3_lut_adj_88.LUT_INIT = 16'hcaca;
    SB_LUT4 i26_3_lut_adj_89 (.I0(n92_adj_14), .I1(tc[0]), .I2(stall_), 
            .I3(GND_net), .O(tc_[0]));   // ../tok.v(139[5] 146[14])
    defparam i26_3_lut_adj_89.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_90 (.I0(A[12]), .I1(n173[12]), .I2(n904), .I3(n2735), 
            .O(n12_adj_737));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_90.LUT_INIT = 16'h0ace;
    SB_LUT4 i7_4_lut_adj_91 (.I0(n10_adj_738), .I1(n14_adj_735), .I2(A_low[4]), 
            .I3(n15_adj_667), .O(n18_adj_739));   // ../tok.v(107[7] 123[14])
    defparam i7_4_lut_adj_91.LUT_INIT = 16'heefe;
    SB_LUT4 i9_4_lut_adj_92 (.I0(\A_low[7] ), .I1(n18_adj_739), .I2(n12_adj_737), 
            .I3(n2743), .O(n20_adj_740));   // ../tok.v(107[7] 123[14])
    defparam i9_4_lut_adj_92.LUT_INIT = 16'hfcfd;
    SB_LUT4 i5181_2_lut (.I0(A[12]), .I1(n880), .I2(GND_net), .I3(GND_net), 
            .O(n5348));
    defparam i5181_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i5583_4_lut (.I0(n5348), .I1(n20_adj_740), .I2(n16_adj_741), 
            .I3(n6_adj_742), .O(n5527));   // ../tok.v(105[10] 124[8])
    defparam i5583_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 A__15__I_0_i13_4_lut (.I0(S[12]), .I1(n5527), .I2(n23_c), 
            .I3(n4908), .O(A_[12]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i13_4_lut.LUT_INIT = 16'hcafa;
    SB_DFFER A_i15 (.Q(A[14]), .C(clk), .E(n995), .D(A_[14]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i14 (.Q(A[13]), .C(clk), .E(n995), .D(A_[13]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i13 (.Q(A[12]), .C(clk), .E(n995), .D(A_[12]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i12 (.Q(A[11]), .C(clk), .E(n995), .D(A_[11]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i11 (.Q(A[10]), .C(clk), .E(n995), .D(A_[10]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i10 (.Q(A[9]), .C(clk), .E(n995), .D(A_[9]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i9 (.Q(A[8]), .C(clk), .E(n995), .D(A_[8]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i8 (.Q(\A_low[7] ), .C(clk), .E(n995), .D(A_[7]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i7 (.Q(A_low[6]), .C(clk), .E(n995), .D(A_[6]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i6 (.Q(A_low[5]), .C(clk), .E(n995), .D(A_[5]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i5 (.Q(A_low[4]), .C(clk), .E(n995), .D(A_[4]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i4 (.Q(A_low[3]), .C(clk), .E(n995), .D(A_[3]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i3 (.Q(A_low[2]), .C(clk), .E(n995), .D(A_[2]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i2 (.Q(A_low[1]), .C(clk), .E(n995), .D(A_[1]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFR idx_i7 (.Q(idx[7]), .C(clk), .D(idx_[7]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFR idx_i6 (.Q(idx[6]), .C(clk), .D(idx_[6]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFR idx_i5 (.Q(idx[5]), .C(clk), .D(idx_[5]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFR idx_i4 (.Q(idx[4]), .C(clk), .D(idx_[4]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFR idx_i3 (.Q(idx[3]), .C(clk), .D(idx_[3]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFR idx_i2 (.Q(idx[2]), .C(clk), .D(idx_[2]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFR idx_i1 (.Q(idx[1]), .C(clk), .D(idx_[1]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i3_4_lut_adj_93 (.I0(n2_adj_743), .I1(A[9]), .I2(n2735), .I3(n8), 
            .O(n14_adj_744));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_93.LUT_INIT = 16'haeaf;
    SB_DFFR depth_i3 (.Q(depth[3]), .C(clk), .D(depth_[3]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFR depth_i2 (.Q(depth[2]), .C(clk), .D(depth_[2]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFR depth_i1 (.Q(depth[1]), .C(clk), .D(depth_[1]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i1_4_lut_adj_94 (.I0(A[8]), .I1(A[13]), .I2(n2743), .I3(n880), 
            .O(n12_adj_745));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_94.LUT_INIT = 16'h0a3b;
    SB_LUT4 i2_4_lut_adj_95 (.I0(A_low[5]), .I1(A[13]), .I2(n15_adj_667), 
            .I3(n904), .O(n13_adj_746));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_95.LUT_INIT = 16'h0ace;
    SB_CARRY add_104_15 (.CI(n4796), .I0(A[13]), .I1(S[13]), .CO(n4797));
    SB_LUT4 add_104_14_lut (.I0(n399), .I1(A[12]), .I2(S[12]), .I3(n4795), 
            .O(n5_adj_734)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_14_lut.LUT_INIT = 16'h8228;
    SB_LUT4 T_7__I_0_219_i10_2_lut (.I0(T[2]), .I1(T[3]), .I2(GND_net), 
            .I3(GND_net), .O(n10_adj_747));   // ../tok.v(76[51:57])
    defparam T_7__I_0_219_i10_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_4_lut_4_lut (.I0(T[6]), .I1(T[1]), .I2(T[0]), .I3(T[2]), 
            .O(n7));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hf77f;
    SB_LUT4 i1_4_lut_adj_96 (.I0(depth_[0]), .I1(n23_c), .I2(n5408), .I3(stall), 
            .O(n995));
    defparam i1_4_lut_adj_96.LUT_INIT = 16'h3337;
    SB_LUT4 select_73_Select_13_i9_2_lut (.I0(S[13]), .I1(n2661), .I2(GND_net), 
            .I3(GND_net), .O(n9_adj_748));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_13_i9_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY sub_105_add_2_7 (.CI(n4773), .I0(S[5]), .I1(n286[5]), .CO(n4774));
    SB_LUT4 inv_106_i8_1_lut (.I0(\A_low[7] ), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[7]));   // ../tok.v(115[20:22])
    defparam inv_106_i8_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i5_3_lut_adj_97 (.I0(table_rd[13]), .I1(n5_adj_732), .I2(n15), 
            .I3(GND_net), .O(n16_adj_749));   // ../tok.v(107[7] 123[14])
    defparam i5_3_lut_adj_97.LUT_INIT = 16'hcece;
    SB_LUT4 i1_4_lut_adj_98 (.I0(n11_adj_680), .I1(n5380), .I2(n26_adj_750), 
            .I3(n42_adj_751), .O(n5254));
    defparam i1_4_lut_adj_98.LUT_INIT = 16'hfff7;
    SB_CARRY sub_100_add_2_3 (.CI(n4761), .I0(T[1]), .I1(GND_net), .CO(n4762));
    SB_CARRY tc_7__I_0_3 (.CI(n4754), .I0(tc[1]), .I1(GND_net), .CO(n4755));
    SB_LUT4 i9_4_lut_adj_99 (.I0(n6_adj_752), .I1(n13_adj_746), .I2(n12_adj_745), 
            .I3(n14_adj_744), .O(n20_adj_753));   // ../tok.v(107[7] 123[14])
    defparam i9_4_lut_adj_99.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_100 (.I0(T[5]), .I1(T[4]), .I2(GND_net), .I3(GND_net), 
            .O(n6_adj_754));   // ../tok.v(87[5] 94[14])
    defparam i1_2_lut_adj_100.LUT_INIT = 16'h2222;
    SB_LUT4 i5581_4_lut (.I0(n5525), .I1(n20_adj_753), .I2(n16_adj_749), 
            .I3(n9_adj_748), .O(n5522));   // ../tok.v(105[10] 124[8])
    defparam i5581_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 A__15__I_0_i14_4_lut (.I0(S[13]), .I1(n5522), .I2(n23_c), 
            .I3(n4908), .O(A_[13]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i14_4_lut.LUT_INIT = 16'hcafa;
    SB_LUT4 i12_4_lut_adj_101 (.I0(key_rd[11]), .I1(key_rd[9]), .I2(key_rd[14]), 
            .I3(key_rd[15]), .O(n28_adj_755));   // ../tok.v(80[61:74])
    defparam i12_4_lut_adj_101.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_102 (.I0(key_rd[8]), .I1(key_rd[3]), .I2(key_rd[13]), 
            .I3(key_rd[5]), .O(n26_adj_756));   // ../tok.v(80[61:74])
    defparam i10_4_lut_adj_102.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_103 (.I0(key_rd[10]), .I1(key_rd[2]), .I2(key_rd[12]), 
            .I3(key_rd[7]), .O(n27_adj_757));   // ../tok.v(80[61:74])
    defparam i11_4_lut_adj_103.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut_adj_104 (.I0(key_rd[0]), .I1(key_rd[1]), .I2(key_rd[6]), 
            .I3(key_rd[4]), .O(n25_adj_758));   // ../tok.v(80[61:74])
    defparam i9_4_lut_adj_104.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_4_lut_adj_105 (.I0(key_rd[1]), .I1(key_rd[4]), .I2(A_low[1]), 
            .I3(A_low[4]), .O(n18_adj_759));   // ../tok.v(81[46:59])
    defparam i2_4_lut_adj_105.LUT_INIT = 16'h7bde;
    SB_LUT4 i10_4_lut_adj_106 (.I0(key_rd[8]), .I1(n20), .I2(n14_adj_647), 
            .I3(A[8]), .O(n26_adj_760));   // ../tok.v(81[46:59])
    defparam i10_4_lut_adj_106.LUT_INIT = 16'hfdfe;
    SB_LUT4 i14_4_lut_adj_107 (.I0(n21_adj_733), .I1(n23_adj_731), .I2(n22_adj_721), 
            .I3(n24_adj_651), .O(n30_adj_761));   // ../tok.v(81[46:59])
    defparam i14_4_lut_adj_107.LUT_INIT = 16'hfffe;
    SB_LUT4 sub_105_add_2_6_lut (.I0(n400), .I1(S[4]), .I2(n286[4]), .I3(n4772), 
            .O(n6_adj_762)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_6_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i4_4_lut_adj_108 (.I0(T[3]), .I1(T[0]), .I2(n6_adj_754), .I3(T[1]), 
            .O(n10_adj_763));
    defparam i4_4_lut_adj_108.LUT_INIT = 16'h0010;
    SB_LUT4 sub_100_add_2_2_lut (.I0(n82), .I1(T[0]), .I2(GND_net), .I3(VCC_net), 
            .O(n14_adj_764)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_100_add_2_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1_4_lut_adj_109 (.I0(n14_adj_765), .I1(n2703), .I2(n9_adj_766), 
            .I3(n2607), .O(n8_adj_767));
    defparam i1_4_lut_adj_109.LUT_INIT = 16'h3733;
    SB_LUT4 i5240_3_lut (.I0(n4908), .I1(A[14]), .I2(n880), .I3(GND_net), 
            .O(n5412));
    defparam i5240_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i2_3_lut_adj_110 (.I0(n10_adj_768), .I1(A_low[6]), .I2(n15_adj_667), 
            .I3(GND_net), .O(n14_adj_769));   // ../tok.v(107[7] 123[14])
    defparam i2_3_lut_adj_110.LUT_INIT = 16'haeae;
    SB_LUT4 i1_2_lut_4_lut (.I0(depth[2]), .I1(depth[3]), .I2(depth[1]), 
            .I3(depth[0]), .O(A_stk_delta_1__N_4));   // ../tok.v(130[18:24])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i3_3_lut_adj_111 (.I0(table_rd[14]), .I1(n5_adj_716), .I2(n15), 
            .I3(GND_net), .O(n15_adj_770));   // ../tok.v(107[7] 123[14])
    defparam i3_3_lut_adj_111.LUT_INIT = 16'hcece;
    SB_LUT4 i2_2_lut (.I0(T[2]), .I1(T[1]), .I2(GND_net), .I3(GND_net), 
            .O(n28_adj_771));   // ../tok.v(40[5] 51[14])
    defparam i2_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_112 (.I0(A[14]), .I1(n173[14]), .I2(n904), .I3(n2735), 
            .O(n13_adj_772));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_112.LUT_INIT = 16'h0ace;
    SB_LUT4 or_101_i15_2_lut (.I0(A[10]), .I1(n35[8]), .I2(GND_net), .I3(GND_net), 
            .O(n200[14]));   // ../tok.v(109[40:60])
    defparam or_101_i15_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i10_4_lut_adj_113 (.I0(n13_adj_772), .I1(n15_adj_770), .I2(n14_adj_769), 
            .I3(n5412), .O(n22_adj_773));   // ../tok.v(107[7] 123[14])
    defparam i10_4_lut_adj_113.LUT_INIT = 16'hfeff;
    SB_LUT4 i5455_4_lut (.I0(n5520), .I1(n18_adj_774), .I2(S[14]), .I3(n2661), 
            .O(n5518));   // ../tok.v(105[10] 124[8])
    defparam i5455_4_lut.LUT_INIT = 16'heefe;
    SB_LUT4 i5446_4_lut (.I0(T[4]), .I1(T[0]), .I2(n28_adj_771), .I3(T[3]), 
            .O(n5467));   // ../tok.v(40[5] 51[14])
    defparam i5446_4_lut.LUT_INIT = 16'h2000;
    SB_LUT4 A__15__I_0_i15_4_lut (.I0(S[14]), .I1(n5518), .I2(n23_c), 
            .I3(n22_adj_773), .O(A_[14]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i15_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i49_4_lut (.I0(n5470), .I1(n5467), .I2(T[6]), .I3(T[4]), 
            .O(n34));   // ../tok.v(40[5] 51[14])
    defparam i49_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 inv_106_i5_1_lut (.I0(A_low[4]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[4]));   // ../tok.v(115[20:22])
    defparam inv_106_i5_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i5505_4_lut (.I0(key_rd[0]), .I1(key_rd[6]), .I2(A_low[0]), 
            .I3(A_low[6]), .O(n5590));   // ../tok.v(80[22] 81[76])
    defparam i5505_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i5175_2_lut_3_lut (.I0(stall), .I1(T[7]), .I2(T[6]), .I3(GND_net), 
            .O(n5340));   // ../tok.v(66[7:20])
    defparam i5175_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i245_2_lut (.I0(T[7]), .I1(n6_adj_650), .I2(GND_net), .I3(GND_net), 
            .O(n8));
    defparam i245_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i3_4_lut_adj_114 (.I0(n2_adj_775), .I1(A[11]), .I2(n2735), 
            .I3(n8), .O(n14_adj_776));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_114.LUT_INIT = 16'haeaf;
    SB_LUT4 T_7__I_0_220_i9_2_lut (.I0(T[0]), .I1(T[1]), .I2(GND_net), 
            .I3(GND_net), .O(n9_adj_766));   // ../tok.v(22[34:43])
    defparam T_7__I_0_220_i9_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i2_4_lut_adj_115 (.I0(T[4]), .I1(T[3]), .I2(n17_adj_777), 
            .I3(n4_adj_778), .O(n797));   // ../tok.v(49[7:20])
    defparam i2_4_lut_adj_115.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_116 (.I0(A[10]), .I1(A[15]), .I2(n2743), .I3(n880), 
            .O(n12_adj_779));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_116.LUT_INIT = 16'h0a3b;
    SB_LUT4 i2_4_lut_adj_117 (.I0(\A_low[7] ), .I1(A[15]), .I2(n15_adj_667), 
            .I3(n904), .O(n13_adj_780));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_117.LUT_INIT = 16'h0ace;
    SB_LUT4 select_73_Select_15_i9_2_lut (.I0(S[15]), .I1(n2661), .I2(GND_net), 
            .I3(GND_net), .O(n9_adj_781));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_15_i9_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i5_3_lut_adj_118 (.I0(table_rd[15]), .I1(n5_adj_713), .I2(n15), 
            .I3(GND_net), .O(n16_adj_782));   // ../tok.v(107[7] 123[14])
    defparam i5_3_lut_adj_118.LUT_INIT = 16'hcece;
    SB_LUT4 i1_2_lut_adj_119 (.I0(T[3]), .I1(T[7]), .I2(GND_net), .I3(GND_net), 
            .O(n5287));
    defparam i1_2_lut_adj_119.LUT_INIT = 16'h2222;
    SB_LUT4 i9_4_lut_adj_120 (.I0(n6_adj_783), .I1(n13_adj_780), .I2(n12_adj_779), 
            .I3(n14_adj_776), .O(n20_adj_784));   // ../tok.v(107[7] 123[14])
    defparam i9_4_lut_adj_120.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_3_lut (.I0(T[6]), .I1(T[5]), .I2(T[4]), .I3(GND_net), 
            .O(n7_adj_785));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i5242_4_lut (.I0(n15_adj_671), .I1(n15), .I2(n880), .I3(n5334), 
            .O(n5414));
    defparam i5242_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i5572_4_lut (.I0(n5516), .I1(n20_adj_784), .I2(n16_adj_782), 
            .I3(n9_adj_781), .O(n5513));   // ../tok.v(105[10] 124[8])
    defparam i5572_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFS tc_i1 (.Q(tc[1]), .C(clk), .D(n1241), .S(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFS tc_i2 (.Q(tc[2]), .C(clk), .D(n1240), .S(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFS tc_i3 (.Q(tc[3]), .C(clk), .D(n1239), .S(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFS tc_i4 (.Q(tc[4]), .C(clk), .D(n1238), .S(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFS tc_i5 (.Q(tc[5]), .C(clk), .D(n1237), .S(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFS tc_i6 (.Q(tc[6]), .C(clk), .D(n1236), .S(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFS tc_i7 (.Q(tc[7]), .C(clk), .D(n1226), .S(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 A__15__I_0_i16_4_lut (.I0(S[15]), .I1(n5513), .I2(n23_c), 
            .I3(n4908), .O(A_[15]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i16_4_lut.LUT_INIT = 16'hcafa;
    SB_LUT4 i3_3_lut_4_lut (.I0(T[3]), .I1(n9_adj_786), .I2(n37), .I3(n2585), 
            .O(n29_adj_787));   // ../tok.v(61[5] 68[14])
    defparam i3_3_lut_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 T_7__I_0_213_i15_2_lut (.I0(n11_adj_788), .I1(n14_adj_765), 
            .I2(GND_net), .I3(GND_net), .O(n15_adj_789));   // ../tok.v(76[42:48])
    defparam T_7__I_0_213_i15_2_lut.LUT_INIT = 16'heeee;
    SB_DFFS tc_i0 (.Q(tc[0]), .C(clk), .D(n1198), .S(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_CARRY sub_105_add_2_6 (.CI(n4772), .I0(S[4]), .I1(n286[4]), .CO(n4773));
    SB_CARRY add_104_14 (.CI(n4795), .I0(A[12]), .I1(S[12]), .CO(n4796));
    SB_LUT4 i2_3_lut_4_lut (.I0(T[3]), .I1(n9_adj_786), .I2(n890), .I3(n5338), 
            .O(n820));   // ../tok.v(61[5] 68[14])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h0008;
    SB_LUT4 i2_3_lut_adj_121 (.I0(T[1]), .I1(T[0]), .I2(T[2]), .I3(GND_net), 
            .O(n8_adj_790));
    defparam i2_3_lut_adj_121.LUT_INIT = 16'h2828;
    SB_LUT4 add_104_13_lut (.I0(n399), .I1(A[11]), .I2(S[11]), .I3(n4794), 
            .O(n5_adj_726)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_13_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_105_add_2_5_lut (.I0(n8_adj_792), .I1(S[3]), .I2(n286[3]), 
            .I3(n4771), .O(n10_adj_791)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_5_lut.LUT_INIT = 16'h8228;
    SB_DFFR depth_i0 (.Q(depth[0]), .C(clk), .D(depth_[0]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 tc_7__I_0_2_lut (.I0(GND_net), .I1(tc[0]), .I2(GND_net), .I3(VCC_net), 
            .O(tc_plus_1[0])) /* synthesis syn_instantiated=1 */ ;
    defparam tc_7__I_0_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i5_4_lut_adj_122 (.I0(n2585), .I1(n7_adj_785), .I2(n5287), 
            .I3(n8_adj_790), .O(n241));
    defparam i5_4_lut_adj_122.LUT_INIT = 16'h4000;
    SB_LUT4 T_7__I_0_213_i11_2_lut_4_lut (.I0(T[0]), .I1(T[1]), .I2(T[2]), 
            .I3(T[3]), .O(n11_adj_788));   // ../tok.v(76[42:48])
    defparam T_7__I_0_213_i11_2_lut_4_lut.LUT_INIT = 16'hbfff;
    SB_LUT4 T_7__I_0_237_i11_2_lut_4_lut (.I0(T[1]), .I1(T[0]), .I2(T[2]), 
            .I3(T[3]), .O(n11_adj_793));   // ../tok.v(57[45:51])
    defparam T_7__I_0_237_i11_2_lut_4_lut.LUT_INIT = 16'hf7ff;
    SB_LUT4 i1_2_lut_adj_123 (.I0(T[7]), .I1(T[5]), .I2(GND_net), .I3(GND_net), 
            .O(n9_adj_786));   // ../tok.v(40[5] 51[14])
    defparam i1_2_lut_adj_123.LUT_INIT = 16'h4444;
    SB_LUT4 i1_3_lut_4_lut (.I0(T[0]), .I1(T[1]), .I2(T[5]), .I3(T[6]), 
            .O(n4_adj_778));   // ../tok.v(131[7:19])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i237_2_lut_3_lut (.I0(T[6]), .I1(T[5]), .I2(T[4]), .I3(GND_net), 
            .O(n6_adj_650));
    defparam i237_2_lut_3_lut.LUT_INIT = 16'heaea;
    SB_LUT4 i5588_4_lut_4_lut (.I0(T[2]), .I1(T[1]), .I2(T[0]), .I3(T[3]), 
            .O(n5470));   // ../tok.v(40[5] 51[14])
    defparam i5588_4_lut_4_lut.LUT_INIT = 16'h5173;
    SB_LUT4 i5149_2_lut (.I0(T[3]), .I1(T[5]), .I2(GND_net), .I3(GND_net), 
            .O(n5312));
    defparam i5149_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i5_4_lut_adj_124 (.I0(n17_adj_777), .I1(n7), .I2(T[4]), .I3(n5312), 
            .O(n2515));
    defparam i5_4_lut_adj_124.LUT_INIT = 16'hefff;
    SB_LUT4 i5450_4_lut (.I0(T[2]), .I1(T[4]), .I2(T[0]), .I3(T[1]), 
            .O(n5473));   // ../tok.v(61[5] 68[14])
    defparam i5450_4_lut.LUT_INIT = 16'h4880;
    SB_LUT4 i2_4_lut_adj_125 (.I0(n11_adj_681), .I1(A[8]), .I2(uart_rx_data[0]), 
            .I3(n11_adj_706), .O(n6_adj_794));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_125.LUT_INIT = 16'h50dc;
    SB_LUT4 i15_4_lut_adj_126 (.I0(n25_adj_758), .I1(n27_adj_757), .I2(n26_adj_756), 
            .I3(n28_adj_755), .O(found_slot_N_145));   // ../tok.v(80[61:74])
    defparam i15_4_lut_adj_126.LUT_INIT = 16'hfffe;
    SB_LUT4 i59_3_lut_adj_127 (.I0(T[2]), .I1(T[4]), .I2(T[1]), .I3(GND_net), 
            .O(n31_adj_795));   // ../tok.v(61[5] 68[14])
    defparam i59_3_lut_adj_127.LUT_INIT = 16'h8181;
    SB_LUT4 i58_4_lut (.I0(n31_adj_795), .I1(n5473), .I2(T[6]), .I3(T[0]), 
            .O(n37));   // ../tok.v(61[5] 68[14])
    defparam i58_4_lut.LUT_INIT = 16'hcac0;
    SB_CARRY add_104_13 (.CI(n4794), .I0(A[11]), .I1(S[11]), .CO(n4795));
    SB_LUT4 add_104_12_lut (.I0(n399), .I1(A[10]), .I2(S[10]), .I3(n4793), 
            .O(n24_adj_703)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_12_lut.LUT_INIT = 16'h8228;
    SB_CARRY sub_105_add_2_5 (.CI(n4771), .I0(S[3]), .I1(n286[3]), .CO(n4772));
    SB_CARRY sub_100_add_2_2 (.CI(VCC_net), .I0(T[0]), .I1(GND_net), .CO(n4761));
    SB_CARRY add_104_12 (.CI(n4793), .I0(A[10]), .I1(S[10]), .CO(n4794));
    SB_LUT4 i1_4_lut_4_lut_adj_128 (.I0(T[0]), .I1(T[1]), .I2(T[2]), .I3(T[3]), 
            .O(n10_adj_796));
    defparam i1_4_lut_4_lut_adj_128.LUT_INIT = 16'h7db7;
    SB_LUT4 i2454_2_lut (.I0(n29_adj_787), .I1(n2515), .I2(GND_net), .I3(GND_net), 
            .O(C_stk_delta[0]));   // ../tok.v(40[5] 51[14])
    defparam i2454_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 add_104_11_lut (.I0(n399), .I1(A[9]), .I2(S[9]), .I3(n4792), 
            .O(n25)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_11_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_104_11 (.CI(n4792), .I0(A[9]), .I1(S[9]), .CO(n4793));
    SB_LUT4 sub_105_add_2_4_lut (.I0(n8_adj_792), .I1(S[2]), .I2(n286[2]), 
            .I3(n4770), .O(n22_adj_797)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_4_lut.LUT_INIT = 16'h8228;
    SB_CARRY tc_7__I_0_2 (.CI(VCC_net), .I0(tc[0]), .I1(GND_net), .CO(n4754));
    SB_LUT4 add_104_10_lut (.I0(n399), .I1(A[8]), .I2(S[8]), .I3(n4791), 
            .O(n5_adj_669)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_10_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i5_3_lut_4_lut (.I0(n5338), .I1(n890), .I2(n10_adj_763), .I3(n5340), 
            .O(n238));
    defparam i5_3_lut_4_lut.LUT_INIT = 16'h0010;
    SB_LUT4 equal_119_i9_2_lut (.I0(T[0]), .I1(T[1]), .I2(GND_net), .I3(GND_net), 
            .O(n9_adj_798));   // ../tok.v(108[9:12])
    defparam equal_119_i9_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY add_104_10 (.CI(n4791), .I0(A[8]), .I1(S[8]), .CO(n4792));
    SB_LUT4 add_104_9_lut (.I0(n399), .I1(\A_low[7] ), .I2(S[7]), .I3(n4790), 
            .O(n5549)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_9_lut.LUT_INIT = 16'h8228;
    SB_CARRY sub_105_add_2_4 (.CI(n4770), .I0(S[2]), .I1(n286[2]), .CO(n4771));
    SB_LUT4 tc_7__I_0_9_lut (.I0(GND_net), .I1(tc[7]), .I2(GND_net), .I3(n4760), 
            .O(tc_plus_1[7])) /* synthesis syn_instantiated=1 */ ;
    defparam tc_7__I_0_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_104_9 (.CI(n4790), .I0(\A_low[7] ), .I1(S[7]), .CO(n4791));
    SB_LUT4 A__15__I_0_i1_4_lut (.I0(S[0]), .I1(n5462), .I2(n23_c), .I3(n4908), 
            .O(A_[0]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i1_4_lut.LUT_INIT = 16'hcafa;
    SB_LUT4 add_104_8_lut (.I0(n399), .I1(A_low[6]), .I2(S[6]), .I3(n4789), 
            .O(n5554)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_8_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_104_8 (.CI(n4789), .I0(A_low[6]), .I1(S[6]), .CO(n4790));
    SB_LUT4 sub_105_add_2_3_lut (.I0(n8_adj_792), .I1(S[1]), .I2(n286[1]), 
            .I3(n4769), .O(n20_adj_799)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_3_lut.LUT_INIT = 16'h8228;
    SB_CARRY idx_7__I_0_4 (.CI(n4748), .I0(idx[2]), .I1(found_slot), .CO(n4749));
    SB_LUT4 idx_7__I_0_2_lut (.I0(idx[0]), .I1(idx[0]), .I2(found_slot), 
            .I3(VCC_net), .O(n258[0])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_2_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_104_7_lut (.I0(n399), .I1(A_low[5]), .I2(S[5]), .I3(n4788), 
            .O(n5_adj_800)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_7_lut.LUT_INIT = 16'h8228;
    SB_LUT4 idx_7__I_0_9_lut (.I0(idx[7]), .I1(idx[7]), .I2(found_slot), 
            .I3(n4753), .O(n258[7])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_9_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i2587_4_lut (.I0(n9_adj_802), .I1(n2520), .I2(n14_adj_644), 
            .I3(n10_adj_803), .O(n2661));
    defparam i2587_4_lut.LUT_INIT = 16'hccc8;
    SB_CARRY add_104_7 (.CI(n4788), .I0(A_low[5]), .I1(S[5]), .CO(n4789));
    SB_LUT4 add_109_17_lut (.I0(write_flag), .I1(S[15]), .I2(GND_net), 
            .I3(n4813), .O(n5516)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_17_lut.LUT_INIT = 16'h8228;
    SB_LUT4 tc_7__I_0_8_lut (.I0(GND_net), .I1(tc[6]), .I2(GND_net), .I3(n4759), 
            .O(tc_plus_1[6])) /* synthesis syn_instantiated=1 */ ;
    defparam tc_7__I_0_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_109_16_lut (.I0(write_flag), .I1(S[14]), .I2(GND_net), 
            .I3(n4812), .O(n10_adj_768)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_16_lut.LUT_INIT = 16'h8228;
    SB_LUT4 idx_7__I_0_8_lut (.I0(idx[6]), .I1(idx[6]), .I2(found_slot), 
            .I3(n4752), .O(n258[6])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_8_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_104_6_lut (.I0(n399), .I1(A_low[4]), .I2(S[4]), .I3(n4787), 
            .O(n5564)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_6_lut.LUT_INIT = 16'h8228;
    SB_CARRY sub_105_add_2_3 (.CI(n4769), .I0(S[1]), .I1(n286[1]), .CO(n4770));
    SB_CARRY add_104_6 (.CI(n4787), .I0(A_low[4]), .I1(S[4]), .CO(n4788));
    SB_CARRY idx_7__I_0_8 (.CI(n4752), .I0(idx[6]), .I1(found_slot), .CO(n4753));
    SB_LUT4 i4_4_lut_adj_129 (.I0(n11_adj_793), .I1(n8_adj_805), .I2(n9_adj_802), 
            .I3(n10_adj_643), .O(n5271));
    defparam i4_4_lut_adj_129.LUT_INIT = 16'hdddf;
    SB_LUT4 i5234_4_lut (.I0(n10_adj_643), .I1(n11), .I2(n9_adj_798), 
            .I3(n41), .O(n5406));
    defparam i5234_4_lut.LUT_INIT = 16'h88c8;
    SB_CARRY idx_7__I_0_5 (.CI(n4749), .I0(idx[3]), .I1(found_slot), .CO(n4750));
    SB_CARRY add_109_16 (.CI(n4812), .I0(S[14]), .I1(GND_net), .CO(n4813));
    SB_LUT4 add_109_15_lut (.I0(write_flag), .I1(S[13]), .I2(GND_net), 
            .I3(n4811), .O(n5525)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_15_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_104_5_lut (.I0(n399), .I1(A_low[3]), .I2(S[3]), .I3(n4786), 
            .O(n4_adj_806)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_5_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i2_4_lut_adj_130 (.I0(n5271), .I1(n9_adj_802), .I2(n11_adj_706), 
            .I3(n10_adj_803), .O(n5272));
    defparam i2_4_lut_adj_130.LUT_INIT = 16'hafbf;
    SB_LUT4 i5526_4_lut (.I0(n5590), .I1(n30_adj_761), .I2(n26_adj_760), 
            .I3(n18_adj_759), .O(n5587));   // ../tok.v(80[22] 81[76])
    defparam i5526_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_109_15 (.CI(n4811), .I0(S[13]), .I1(GND_net), .CO(n4812));
    SB_LUT4 add_109_14_lut (.I0(write_flag), .I1(S[12]), .I2(GND_net), 
            .I3(n4810), .O(n10_adj_738)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_14_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i5260_4_lut (.I0(n14_adj_765), .I1(n5429), .I2(n5406), .I3(n5423), 
            .O(n5433));
    defparam i5260_4_lut.LUT_INIT = 16'heaaa;
    SB_LUT4 i1_4_lut_adj_131 (.I0(n14_adj_765), .I1(n14_adj_807), .I2(n2_adj_808), 
            .I3(n10_adj_796), .O(n5175));
    defparam i1_4_lut_adj_131.LUT_INIT = 16'hfac8;
    SB_CARRY add_109_14 (.CI(n4810), .I0(S[12]), .I1(GND_net), .CO(n4811));
    SB_LUT4 sub_105_add_2_2_lut (.I0(n8_adj_792), .I1(S[0]), .I2(n38[0]), 
            .I3(VCC_net), .O(n11_adj_809)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1_4_lut_adj_132 (.I0(n2697), .I1(uart_stall), .I2(stall), 
            .I3(search_clk), .O(n5282));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_132.LUT_INIT = 16'h1101;
    SB_LUT4 add_109_13_lut (.I0(write_flag), .I1(S[11]), .I2(GND_net), 
            .I3(n4809), .O(n5534)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_13_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_104_5 (.CI(n4786), .I0(A_low[3]), .I1(S[3]), .CO(n4787));
    SB_CARRY sub_105_add_2_2 (.CI(VCC_net), .I0(S[0]), .I1(n38[0]), .CO(n4769));
    SB_LUT4 add_104_4_lut (.I0(n399), .I1(A_low[2]), .I2(S[2]), .I3(n4785), 
            .O(n16_adj_810)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_4_lut.LUT_INIT = 16'h8228;
    SB_CARRY tc_7__I_0_8 (.CI(n4759), .I0(tc[6]), .I1(GND_net), .CO(n4760));
    SB_LUT4 idx_7__I_0_7_lut (.I0(idx[5]), .I1(idx[5]), .I2(found_slot), 
            .I3(n4751), .O(n258[5])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_7_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_109_13 (.CI(n4809), .I0(S[11]), .I1(GND_net), .CO(n4810));
    SB_CARRY add_104_4 (.CI(n4785), .I0(A_low[2]), .I1(S[2]), .CO(n4786));
    SB_LUT4 add_104_3_lut (.I0(n399), .I1(A_low[1]), .I2(S[1]), .I3(n4784), 
            .O(n17_adj_812)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_3_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1_4_lut_adj_133 (.I0(n14_adj_807), .I1(n5175), .I2(n5433), 
            .I3(n5272), .O(n2743));
    defparam i1_4_lut_adj_133.LUT_INIT = 16'h80c0;
    SB_LUT4 add_109_12_lut (.I0(n20_adj_663), .I1(S[10]), .I2(GND_net), 
            .I3(n4808), .O(n22_adj_698)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_12_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_100_add_2_10_lut (.I0(GND_net), .I1(GND_net), .I2(VCC_net), 
            .I3(n4768), .O(n35[8])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_100_add_2_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_104_3 (.CI(n4784), .I0(A_low[1]), .I1(S[1]), .CO(n4785));
    SB_LUT4 sub_100_add_2_9_lut (.I0(A_low[3]), .I1(T[7]), .I2(VCC_net), 
            .I3(n4767), .O(n200[7])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_100_add_2_9_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_109_12 (.CI(n4808), .I0(S[10]), .I1(GND_net), .CO(n4809));
    SB_LUT4 i2_3_lut_adj_134 (.I0(n4_adj_813), .I1(n192[1]), .I2(depth[2]), 
            .I3(GND_net), .O(depth_[2]));   // ../tok.v(130[5] 134[14])
    defparam i2_3_lut_adj_134.LUT_INIT = 16'h9696;
    SB_LUT4 i1_4_lut_adj_135 (.I0(n15_adj_655), .I1(n15_adj_667), .I2(uart_tx_busy), 
            .I3(uart_rx_valid), .O(uart_stall));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_135.LUT_INIT = 16'h5073;
    SB_LUT4 i1_4_lut_adj_136 (.I0(T[3]), .I1(T[1]), .I2(T[0]), .I3(A_stk_delta_1__N_4), 
            .O(n5285));
    defparam i1_4_lut_adj_136.LUT_INIT = 16'h2002;
    SB_LUT4 add_104_2_lut (.I0(n399), .I1(A_low[0]), .I2(S[0]), .I3(GND_net), 
            .O(n5465)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i4_4_lut_adj_137 (.I0(T[2]), .I1(n5340), .I2(n5285), .I3(n6_adj_754), 
            .O(n1_adj_715));
    defparam i4_4_lut_adj_137.LUT_INIT = 16'h1000;
    SB_LUT4 inv_106_i6_1_lut (.I0(A_low[5]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[5]));   // ../tok.v(115[20:22])
    defparam inv_106_i6_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_109_11_lut (.I0(n20_adj_663), .I1(S[9]), .I2(GND_net), 
            .I3(n4807), .O(n23_adj_682)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_11_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_104_2 (.CI(GND_net), .I0(A_low[0]), .I1(S[0]), .CO(n4784));
    SB_CARRY sub_100_add_2_9 (.CI(n4767), .I0(T[7]), .I1(VCC_net), .CO(n4768));
    SB_LUT4 i1_4_lut_adj_138 (.I0(stall), .I1(n2635), .I2(n5587), .I3(found_slot_N_145), 
            .O(found_slot));   // ../tok.v(80[22] 81[76])
    defparam i1_4_lut_adj_138.LUT_INIT = 16'h0a22;
    SB_LUT4 sub_105_add_2_17_lut (.I0(n400), .I1(S[15]), .I2(n286[15]), 
            .I3(n4783), .O(n6_adj_783)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_17_lut.LUT_INIT = 16'h8228;
    SB_LUT4 tc_7__I_0_7_lut (.I0(GND_net), .I1(tc[5]), .I2(GND_net), .I3(n4758), 
            .O(tc_plus_1[5])) /* synthesis syn_instantiated=1 */ ;
    defparam tc_7__I_0_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY idx_7__I_0_7 (.CI(n4751), .I0(idx[5]), .I1(found_slot), .CO(n4752));
    SB_LUT4 or_99_i15_2_lut_3_lut (.I0(A[10]), .I1(T[7]), .I2(n6_adj_650), 
            .I3(GND_net), .O(n173[14]));   // ../tok.v(108[56:76])
    defparam or_99_i15_2_lut_3_lut.LUT_INIT = 16'habab;
    SB_LUT4 equal_118_i10_2_lut (.I0(T[2]), .I1(T[3]), .I2(GND_net), .I3(GND_net), 
            .O(n10_adj_803));   // ../tok.v(108[9:12])
    defparam equal_118_i10_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i2571_2_lut (.I0(A_stk_delta_1__N_4), .I1(n1_adj_715), .I2(GND_net), 
            .I3(GND_net), .O(n192[1]));   // ../tok.v(130[5] 134[14])
    defparam i2571_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY add_109_11 (.CI(n4807), .I0(S[9]), .I1(GND_net), .CO(n4808));
    SB_LUT4 i2_4_lut_adj_139 (.I0(depth[2]), .I1(n192[1]), .I2(depth[3]), 
            .I3(n4_adj_813), .O(depth_[3]));   // ../tok.v(130[5] 134[14])
    defparam i2_4_lut_adj_139.LUT_INIT = 16'hd2b4;
    SB_LUT4 i50_4_lut_adj_140 (.I0(A_low[1]), .I1(n258[1]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_815));   // ../tok.v(87[5] 94[14])
    defparam i50_4_lut_adj_140.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(stall), .I1(T[7]), .I2(n5338), .I3(n890), 
            .O(n17_adj_777));   // ../tok.v(66[7:20])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_141 (.I0(n27_adj_815), .I1(idx[1]), .I2(n2699), 
            .I3(n5282), .O(idx_[1]));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_141.LUT_INIT = 16'h0ace;
    SB_LUT4 add_109_10_lut (.I0(write_flag), .I1(S[8]), .I2(GND_net), 
            .I3(n4806), .O(n10_adj_666)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_10_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1_2_lut_4_lut_adj_142 (.I0(T[1]), .I1(T[0]), .I2(T[2]), .I3(T[3]), 
            .O(n26_adj_750));
    defparam i1_2_lut_4_lut_adj_142.LUT_INIT = 16'h0800;
    SB_LUT4 idx_7__I_0_4_lut (.I0(idx[2]), .I1(idx[2]), .I2(found_slot), 
            .I3(n4748), .O(n258[2])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 equal_143_i15_2_lut (.I0(T[4]), .I1(T[5]), .I2(GND_net), .I3(GND_net), 
            .O(n15_adj_817));   // ../tok.v(104[8:16])
    defparam equal_143_i15_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_4_lut_4_lut_adj_143 (.I0(T[2]), .I1(T[3]), .I2(T[1]), .I3(T[0]), 
            .O(n42_adj_751));
    defparam i1_4_lut_4_lut_adj_143.LUT_INIT = 16'h1110;
    SB_LUT4 i50_4_lut_adj_144 (.I0(A_low[2]), .I1(n258[2]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_818));   // ../tok.v(87[5] 94[14])
    defparam i50_4_lut_adj_144.LUT_INIT = 16'hca0a;
    SB_LUT4 i2_2_lut_adj_145 (.I0(found_slot), .I1(n2635), .I2(GND_net), 
            .I3(GND_net), .O(write_slot));   // ../tok.v(83[21:57])
    defparam i2_2_lut_adj_145.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_146 (.I0(n27_adj_818), .I1(idx[2]), .I2(n2699), 
            .I3(n5282), .O(idx_[2]));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_146.LUT_INIT = 16'h0ace;
    SB_LUT4 idx_7__I_0_3_lut (.I0(idx[1]), .I1(idx[1]), .I2(found_slot), 
            .I3(n4747), .O(n258[1])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_3_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_109_10 (.CI(n4806), .I0(S[8]), .I1(GND_net), .CO(n4807));
    SB_LUT4 add_109_9_lut (.I0(write_flag), .I1(S[7]), .I2(GND_net), .I3(n4805), 
            .O(n10_adj_653)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_9_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_105_add_2_16_lut (.I0(n400), .I1(S[14]), .I2(n286[14]), 
            .I3(n4782), .O(n5520)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_16_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_100_add_2_8_lut (.I0(A_low[2]), .I1(T[6]), .I2(VCC_net), 
            .I3(n4766), .O(n200[6])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_100_add_2_8_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_105_add_2_16 (.CI(n4782), .I0(S[14]), .I1(n286[14]), 
            .CO(n4783));
    SB_LUT4 idx_7__I_0_6_lut (.I0(idx[4]), .I1(idx[4]), .I2(found_slot), 
            .I3(n4750), .O(n258[4])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_6_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_109_9 (.CI(n4805), .I0(S[7]), .I1(GND_net), .CO(n4806));
    SB_LUT4 add_109_8_lut (.I0(write_flag), .I1(S[6]), .I2(GND_net), .I3(n4804), 
            .O(n10_adj_820)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_8_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_105_add_2_15_lut (.I0(n400), .I1(S[13]), .I2(n286[13]), 
            .I3(n4781), .O(n6_adj_752)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_15_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1_2_lut_adj_147 (.I0(depth[1]), .I1(depth[0]), .I2(GND_net), 
            .I3(GND_net), .O(n890));   // ../tok.v(130[18:24])
    defparam i1_2_lut_adj_147.LUT_INIT = 16'heeee;
    SB_LUT4 i50_4_lut_adj_148 (.I0(A_low[3]), .I1(n258[3]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_822));   // ../tok.v(87[5] 94[14])
    defparam i50_4_lut_adj_148.LUT_INIT = 16'hca0a;
    SB_CARRY sub_105_add_2_15 (.CI(n4781), .I0(S[13]), .I1(n286[13]), 
            .CO(n4782));
    SB_LUT4 equal_154_i16_2_lut (.I0(n11_adj_793), .I1(n14_adj_644), .I2(GND_net), 
            .I3(GND_net), .O(n399));   // ../tok.v(113[9:12])
    defparam equal_154_i16_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i2547_2_lut (.I0(T[2]), .I1(T[3]), .I2(GND_net), .I3(GND_net), 
            .O(n2607));
    defparam i2547_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i6_4_lut_adj_149 (.I0(n14_adj_644), .I1(n5414), .I2(n8_adj_767), 
            .I3(n5254), .O(n904));
    defparam i6_4_lut_adj_149.LUT_INIT = 16'hf7f3;
    SB_LUT4 sub_105_add_2_14_lut (.I0(n400), .I1(S[12]), .I2(n286[12]), 
            .I3(n4780), .O(n6_adj_742)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_14_lut.LUT_INIT = 16'h8228;
    SB_CARRY sub_100_add_2_8 (.CI(n4766), .I0(T[6]), .I1(VCC_net), .CO(n4767));
    SB_CARRY sub_105_add_2_14 (.CI(n4780), .I0(S[12]), .I1(n286[12]), 
            .CO(n4781));
    SB_CARRY idx_7__I_0_6 (.CI(n4750), .I0(idx[4]), .I1(found_slot), .CO(n4751));
    SB_LUT4 equal_116_i9_2_lut (.I0(T[0]), .I1(T[1]), .I2(GND_net), .I3(GND_net), 
            .O(n9_adj_802));   // ../tok.v(108[9:12])
    defparam equal_116_i9_2_lut.LUT_INIT = 16'hdddd;
    SB_CARRY add_109_8 (.CI(n4804), .I0(S[6]), .I1(GND_net), .CO(n4805));
    SB_LUT4 i1_4_lut_adj_150 (.I0(n27_adj_822), .I1(idx[3]), .I2(n2699), 
            .I3(n5282), .O(idx_[3]));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_150.LUT_INIT = 16'h0ace;
    SB_LUT4 i567_2_lut_4_lut (.I0(n34), .I1(n9_adj_786), .I2(n2585), .I3(n797), 
            .O(rd_15__N_301));   // ../tok.v(40[5] 51[14])
    defparam i567_2_lut_4_lut.LUT_INIT = 16'h08ff;
    SB_LUT4 add_109_7_lut (.I0(write_flag), .I1(S[5]), .I2(GND_net), .I3(n4803), 
            .O(n10_adj_823)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_7_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_105_add_2_13_lut (.I0(n400), .I1(S[11]), .I2(n286[11]), 
            .I3(n4779), .O(n6_adj_728)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_13_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i227_2_lut (.I0(T[5]), .I1(T[4]), .I2(GND_net), .I3(GND_net), 
            .O(n285));
    defparam i227_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 sub_100_add_2_7_lut (.I0(A_low[1]), .I1(T[5]), .I2(GND_net), 
            .I3(n4765), .O(n200[5])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_100_add_2_7_lut.LUT_INIT = 16'hebbe;
    SB_CARRY sub_105_add_2_13 (.CI(n4779), .I0(S[11]), .I1(n286[11]), 
            .CO(n4780));
    SB_CARRY tc_7__I_0_7 (.CI(n4758), .I0(tc[5]), .I1(GND_net), .CO(n4759));
    SB_LUT4 idx_7__I_0_5_lut (.I0(idx[3]), .I1(idx[3]), .I2(found_slot), 
            .I3(n4749), .O(n258[3])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_5_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_109_7 (.CI(n4803), .I0(S[5]), .I1(GND_net), .CO(n4804));
    SB_CARRY sub_100_add_2_7 (.CI(n4765), .I0(T[5]), .I1(GND_net), .CO(n4766));
    SB_LUT4 sub_105_add_2_12_lut (.I0(n8_adj_792), .I1(S[10]), .I2(n286[10]), 
            .I3(n4778), .O(n27_adj_704)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_12_lut.LUT_INIT = 16'h8228;
    SB_LUT4 select_73_Select_6_i12_2_lut_3_lut (.I0(uart_rx_data[6]), .I1(n11_adj_681), 
            .I2(n14_adj_644), .I3(GND_net), .O(n12_adj_824));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_6_i12_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 equal_116_i14_2_lut_3_lut_4_lut (.I0(T[6]), .I1(T[7]), .I2(T[5]), 
            .I3(T[4]), .O(n14_adj_701));   // ../tok.v(108[9:12])
    defparam equal_116_i14_2_lut_3_lut_4_lut.LUT_INIT = 16'hefff;
    SB_LUT4 or_99_i13_2_lut_3_lut (.I0(A[8]), .I1(T[7]), .I2(n6_adj_650), 
            .I3(GND_net), .O(n173[12]));   // ../tok.v(108[56:76])
    defparam or_99_i13_2_lut_3_lut.LUT_INIT = 16'habab;
    SB_CARRY idx_7__I_0_2 (.CI(VCC_net), .I0(idx[0]), .I1(found_slot), 
            .CO(n4747));
    SB_LUT4 i2469_2_lut_3_lut_4_lut (.I0(n9_adj_798), .I1(n10_adj_747), 
            .I2(n14_adj_644), .I3(S[9]), .O(table_wr_data[9]));   // ../tok.v(76[51:57])
    defparam i2469_2_lut_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 T_7__I_0_214_i14_2_lut_3_lut_4_lut (.I0(T[6]), .I1(T[7]), .I2(T[4]), 
            .I3(T[5]), .O(n14_adj_644));   // ../tok.v(108[9:12])
    defparam T_7__I_0_214_i14_2_lut_3_lut_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i50_4_lut_adj_151 (.I0(A_low[4]), .I1(n258[4]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_825));   // ../tok.v(87[5] 94[14])
    defparam i50_4_lut_adj_151.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_152 (.I0(n27_adj_825), .I1(idx[4]), .I2(n2699), 
            .I3(n5282), .O(idx_[4]));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_152.LUT_INIT = 16'h0ace;
    SB_LUT4 i20_1_lut_2_lut_4_lut (.I0(T[0]), .I1(T[1]), .I2(T[2]), .I3(T[3]), 
            .O(n8_adj_792));   // ../tok.v(110[9:12])
    defparam i20_1_lut_2_lut_4_lut.LUT_INIT = 16'h2000;
    SB_LUT4 select_73_Select_4_i12_2_lut_3_lut (.I0(uart_rx_data[4]), .I1(n11_adj_681), 
            .I2(n14_adj_644), .I3(GND_net), .O(n12_adj_826));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_4_i12_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i2625_2_lut_3_lut (.I0(T[4]), .I1(n878), .I2(n4848), .I3(GND_net), 
            .O(n2703));
    defparam i2625_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i2549_2_lut_4_lut (.I0(T[1]), .I1(T[0]), .I2(T[2]), .I3(T[3]), 
            .O(n2609));
    defparam i2549_2_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 add_109_6_lut (.I0(write_flag), .I1(S[4]), .I2(GND_net), .I3(n4802), 
            .O(n10_adj_827)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_6_lut.LUT_INIT = 16'h8228;
    SB_LUT4 equal_135_i11_2_lut_4_lut (.I0(T[0]), .I1(T[1]), .I2(T[2]), 
            .I3(T[3]), .O(n11_adj_694));   // ../tok.v(110[9:12])
    defparam equal_135_i11_2_lut_4_lut.LUT_INIT = 16'hfdff;
    SB_LUT4 i2563_2_lut_4_lut (.I0(n34), .I1(n9_adj_786), .I2(n2585), 
            .I3(n797), .O(\A_stk_delta[1] ));   // ../tok.v(40[5] 51[14])
    defparam i2563_2_lut_4_lut.LUT_INIT = 16'h0800;
    SB_CARRY sub_105_add_2_12 (.CI(n4778), .I0(S[10]), .I1(n286[10]), 
            .CO(n4779));
    SB_LUT4 sub_100_add_2_6_lut (.I0(A_low[0]), .I1(T[4]), .I2(GND_net), 
            .I3(n4764), .O(n200[4])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_100_add_2_6_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 sub_105_add_2_11_lut (.I0(n8_adj_792), .I1(S[9]), .I2(n286[9]), 
            .I3(n4777), .O(n28)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_11_lut.LUT_INIT = 16'h8228;
    SB_LUT4 tc_7__I_0_6_lut (.I0(GND_net), .I1(tc[4]), .I2(GND_net), .I3(n4757), 
            .O(tc_plus_1[4])) /* synthesis syn_instantiated=1 */ ;
    defparam tc_7__I_0_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY idx_7__I_0_3 (.CI(n4747), .I0(idx[1]), .I1(found_slot), .CO(n4748));
    SB_LUT4 i1_3_lut_4_lut_adj_153 (.I0(T[0]), .I1(T[1]), .I2(T[2]), .I3(T[3]), 
            .O(n4848));
    defparam i1_3_lut_4_lut_adj_153.LUT_INIT = 16'hff81;
    SB_LUT4 i50_4_lut_adj_154 (.I0(A_low[5]), .I1(n258[5]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_828));   // ../tok.v(87[5] 94[14])
    defparam i50_4_lut_adj_154.LUT_INIT = 16'hca0a;
    SB_CARRY sub_105_add_2_11 (.CI(n4777), .I0(S[9]), .I1(n286[9]), .CO(n4778));
    SB_CARRY add_109_6 (.CI(n4802), .I0(S[4]), .I1(GND_net), .CO(n4803));
    SB_LUT4 i1_4_lut_adj_155 (.I0(n27_adj_828), .I1(idx[5]), .I2(n2699), 
            .I3(n5282), .O(idx_[5]));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_155.LUT_INIT = 16'h0ace;
    SB_LUT4 i2_2_lut_2_lut (.I0(T[0]), .I1(T[1]), .I2(GND_net), .I3(GND_net), 
            .O(n5318));
    defparam i2_2_lut_2_lut.LUT_INIT = 16'h9999;
    SB_LUT4 T_7__I_0_213_i14_2_lut_3_lut_4_lut (.I0(T[6]), .I1(T[7]), .I2(T[5]), 
            .I3(T[4]), .O(n14_adj_765));   // ../tok.v(76[33:39])
    defparam T_7__I_0_213_i14_2_lut_3_lut_4_lut.LUT_INIT = 16'hdfff;
    SB_CARRY tc_7__I_0_6 (.CI(n4757), .I0(tc[4]), .I1(GND_net), .CO(n4758));
    SB_CARRY sub_100_add_2_6 (.CI(n4764), .I0(T[4]), .I1(GND_net), .CO(n4765));
    SB_LUT4 sub_105_add_2_10_lut (.I0(n400), .I1(S[8]), .I2(n286[8]), 
            .I3(n4776), .O(n5544)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_10_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_109_5_lut (.I0(n20_adj_663), .I1(S[3]), .I2(GND_net), 
            .I3(n4801), .O(n22_adj_829)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_5_lut.LUT_INIT = 16'h8228;
    SB_LUT4 equal_130_i14_2_lut_3_lut_4_lut (.I0(T[6]), .I1(T[7]), .I2(T[4]), 
            .I3(T[5]), .O(n14_adj_807));   // ../tok.v(76[33:39])
    defparam equal_130_i14_2_lut_3_lut_4_lut.LUT_INIT = 16'hfdff;
    SB_LUT4 i5220_2_lut_4_lut_4_lut (.I0(T[2]), .I1(T[3]), .I2(T[0]), 
            .I3(T[1]), .O(n5391));
    defparam i5220_2_lut_4_lut_4_lut.LUT_INIT = 16'hfddf;
    SB_LUT4 i12_1_lut_2_lut_4_lut (.I0(T[1]), .I1(T[0]), .I2(T[2]), .I3(T[3]), 
            .O(n20_adj_663));   // ../tok.v(109[9:12])
    defparam i12_1_lut_2_lut_4_lut.LUT_INIT = 16'h0008;
    SB_LUT4 tc_7__I_0_5_lut (.I0(GND_net), .I1(tc[3]), .I2(GND_net), .I3(n4756), 
            .O(tc_plus_1[3])) /* synthesis syn_instantiated=1 */ ;
    defparam tc_7__I_0_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_100_add_2_5_lut (.I0(n82), .I1(T[3]), .I2(VCC_net), .I3(n4763), 
            .O(n11_adj_830)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_100_add_2_5_lut.LUT_INIT = 16'h8228;
    SB_CARRY sub_105_add_2_10 (.CI(n4776), .I0(S[8]), .I1(n286[8]), .CO(n4777));
    SB_CARRY add_109_5 (.CI(n4801), .I0(S[3]), .I1(GND_net), .CO(n4802));
    SB_LUT4 i1_2_lut_3_lut_adj_156 (.I0(T[5]), .I1(depth[1]), .I2(depth[0]), 
            .I3(GND_net), .O(n4_adj_707));   // ../tok.v(139[5] 146[14])
    defparam i1_2_lut_3_lut_adj_156.LUT_INIT = 16'h0202;
    SB_LUT4 i50_4_lut_adj_157 (.I0(A_low[6]), .I1(n258[6]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_831));   // ../tok.v(87[5] 94[14])
    defparam i50_4_lut_adj_157.LUT_INIT = 16'hca0a;
    SB_CARRY tc_7__I_0_5 (.CI(n4756), .I0(tc[3]), .I1(GND_net), .CO(n4757));
    SB_CARRY sub_100_add_2_5 (.CI(n4763), .I0(T[3]), .I1(VCC_net), .CO(n4764));
    SB_LUT4 sub_105_add_2_9_lut (.I0(n400), .I1(S[7]), .I2(n286[7]), .I3(n4775), 
            .O(n6_adj_657)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_9_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_109_4_lut (.I0(n20_adj_663), .I1(S[2]), .I2(GND_net), 
            .I3(n4800), .O(n12_adj_832)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_4_lut.LUT_INIT = 16'h8228;
    SB_LUT4 T_7__I_0_219_i11_2_lut_4_lut (.I0(T[0]), .I1(T[1]), .I2(T[2]), 
            .I3(T[3]), .O(n11));   // ../tok.v(76[51:57])
    defparam T_7__I_0_219_i11_2_lut_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i5608_2_lut_3_lut (.I0(n41), .I1(n10_adj_643), .I2(n14_adj_644), 
            .I3(GND_net), .O(write_flag));   // ../tok.v(109[9:12])
    defparam i5608_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i57_3_lut_3_lut (.I0(T[4]), .I1(T[1]), .I2(T[2]), .I3(GND_net), 
            .O(n36));   // ../tok.v(139[5] 146[14])
    defparam i57_3_lut_3_lut.LUT_INIT = 16'h8181;
    SB_LUT4 i1_4_lut_adj_158 (.I0(n27_adj_831), .I1(idx[6]), .I2(n2699), 
            .I3(n5282), .O(idx_[6]));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_158.LUT_INIT = 16'h0ace;
    SB_LUT4 i1_4_lut_adj_159 (.I0(n14_adj_644), .I1(n3_adj_692), .I2(n6_adj_794), 
            .I3(n11_adj_809), .O(n31));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_159.LUT_INIT = 16'h5554;
    SB_LUT4 i1_3_lut_4_lut_4_lut (.I0(T[1]), .I1(T[0]), .I2(T[2]), .I3(T[3]), 
            .O(n5293));   // ../tok.v(109[9:12])
    defparam i1_3_lut_4_lut_4_lut.LUT_INIT = 16'hffe7;
    SB_LUT4 T_7__I_0_215_i15_2_lut_3_lut (.I0(n11_adj_680), .I1(T[4]), .I2(n878), 
            .I3(GND_net), .O(n15));   // ../tok.v(76[33:39])
    defparam T_7__I_0_215_i15_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i50_4_lut_adj_160 (.I0(\A_low[7] ), .I1(n258[7]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_833));   // ../tok.v(87[5] 94[14])
    defparam i50_4_lut_adj_160.LUT_INIT = 16'hca0a;
    SB_LUT4 equal_111_i11_2_lut_4_lut (.I0(T[0]), .I1(T[1]), .I2(T[2]), 
            .I3(T[3]), .O(n11_adj_680));   // ../tok.v(108[9:12])
    defparam equal_111_i11_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_161 (.I0(n27_adj_833), .I1(idx[7]), .I2(n2699), 
            .I3(n5282), .O(idx_[7]));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_161.LUT_INIT = 16'h0ace;
    SB_LUT4 i1_4_lut_4_lut_adj_162 (.I0(depth[1]), .I1(A_stk_delta_1__N_4), 
            .I2(n1_adj_715), .I3(depth[0]), .O(n4_adj_813));   // ../tok.v(130[5] 134[14])
    defparam i1_4_lut_4_lut_adj_162.LUT_INIT = 16'he0a0;
    SB_LUT4 i2_3_lut_adj_163 (.I0(n20_adj_799), .I1(n11_adj_706), .I2(A[9]), 
            .I3(GND_net), .O(n6_adj_834));   // ../tok.v(107[7] 123[14])
    defparam i2_3_lut_adj_163.LUT_INIT = 16'hbaba;
    SB_LUT4 i1_3_lut_adj_164 (.I0(n11_adj_681), .I1(n14_adj_662), .I2(uart_rx_data[1]), 
            .I3(GND_net), .O(n5_adj_835));   // ../tok.v(107[7] 123[14])
    defparam i1_3_lut_adj_164.LUT_INIT = 16'hdcdc;
    SB_LUT4 i3_4_lut_adj_165 (.I0(n23_adj_718), .I1(n14_adj_644), .I2(n5_adj_835), 
            .I3(n6_adj_834), .O(n10_adj_836));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_165.LUT_INIT = 16'hbbba;
    SB_LUT4 i1_4_lut_adj_166 (.I0(T[1]), .I1(n15), .I2(n5334), .I3(table_rd[1]), 
            .O(n8_adj_837));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_166.LUT_INIT = 16'h3b0a;
    SB_LUT4 i2_3_lut_4_lut_adj_167 (.I0(T[7]), .I1(depth[1]), .I2(depth[0]), 
            .I3(T[3]), .O(n807));   // ../tok.v(130[18:24])
    defparam i2_3_lut_4_lut_adj_167.LUT_INIT = 16'hfeff;
    SB_LUT4 i2573_3_lut_4_lut (.I0(n9_adj_802), .I1(n10_adj_643), .I2(n11), 
            .I3(n14_adj_644), .O(n2635));   // ../tok.v(76[24:30])
    defparam i2573_3_lut_4_lut.LUT_INIT = 16'hffe0;
    SB_LUT4 i2_3_lut_adj_168 (.I0(n17_adj_812), .I1(n2661), .I2(S[1]), 
            .I3(GND_net), .O(n9_adj_838));   // ../tok.v(107[7] 123[14])
    defparam i2_3_lut_adj_168.LUT_INIT = 16'hbaba;
    SB_LUT4 i44_3_lut (.I0(n880), .I1(n904), .I2(A_low[1]), .I3(GND_net), 
            .O(n5336));   // ../tok.v(107[7] 123[14])
    defparam i44_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5561_4_lut (.I0(n5336), .I1(n9_adj_838), .I2(n8_adj_837), 
            .I3(n10_adj_836), .O(n5574));   // ../tok.v(105[10] 124[8])
    defparam i5561_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i2_4_lut_4_lut (.I0(depth[0]), .I1(A_stk_delta_1__N_4), .I2(n1_adj_715), 
            .I3(depth[1]), .O(depth_[1]));   // ../tok.v(130[5] 134[14])
    defparam i2_4_lut_4_lut.LUT_INIT = 16'h9f60;
    SB_LUT4 A__15__I_0_i2_4_lut (.I0(S[1]), .I1(n5574), .I2(n23_c), .I3(n4908), 
            .O(A_[1]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i2_4_lut.LUT_INIT = 16'hcafa;
    SB_LUT4 i2_3_lut_adj_169 (.I0(n22_adj_797), .I1(n11_adj_706), .I2(A[10]), 
            .I3(GND_net), .O(n6_adj_839));   // ../tok.v(107[7] 123[14])
    defparam i2_3_lut_adj_169.LUT_INIT = 16'hbaba;
    SB_LUT4 i3_4_lut_adj_170 (.I0(n11_adj_681), .I1(n6_adj_839), .I2(n12_adj_832), 
            .I3(uart_rx_data[2]), .O(n32));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_170.LUT_INIT = 16'hfdfc;
    SB_LUT4 i47_3_lut (.I0(n880), .I1(n904), .I2(A_low[2]), .I3(GND_net), 
            .O(n5346));   // ../tok.v(107[7] 123[14])
    defparam i47_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_4_lut_adj_171 (.I0(T[2]), .I1(table_rd[2]), .I2(n2735), 
            .I3(n15), .O(n11_adj_840));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_171.LUT_INIT = 16'h0ace;
    SB_LUT4 i5197_2_lut (.I0(n2743), .I1(T[2]), .I2(GND_net), .I3(GND_net), 
            .O(n5366));
    defparam i5197_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i6_4_lut_adj_172 (.I0(n11_adj_840), .I1(n14_adj_644), .I2(n5346), 
            .I3(n32), .O(n14_adj_841));   // ../tok.v(107[7] 123[14])
    defparam i6_4_lut_adj_172.LUT_INIT = 16'hbfaf;
    SB_LUT4 i5568_3_lut (.I0(S[2]), .I1(n15_adj_664), .I2(n2661), .I3(GND_net), 
            .O(n5571));   // ../tok.v(105[10] 124[8])
    defparam i5568_3_lut.LUT_INIT = 16'hcece;
    SB_LUT4 i5557_4_lut (.I0(n5571), .I1(n14_adj_841), .I2(n16_adj_810), 
            .I3(n5366), .O(n5569));   // ../tok.v(105[10] 124[8])
    defparam i5557_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 A__15__I_0_i3_4_lut (.I0(S[2]), .I1(n5569), .I2(n23_c), .I3(n4908), 
            .O(A_[2]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i3_4_lut.LUT_INIT = 16'hcafa;
    SB_LUT4 i1_2_lut_3_lut_adj_173 (.I0(T[6]), .I1(T[7]), .I2(T[5]), .I3(GND_net), 
            .O(n878));   // ../tok.v(76[33:39])
    defparam i1_2_lut_3_lut_adj_173.LUT_INIT = 16'hfdfd;
    SB_LUT4 i5522_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_842), 
            .I3(GND_net), .O(n5583));   // ../tok.v(139[5] 146[14])
    defparam i5522_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_4_lut_4_lut_adj_174 (.I0(T[0]), .I1(T[1]), .I2(T[2]), .I3(T[3]), 
            .O(n2_adj_808));
    defparam i1_4_lut_4_lut_adj_174.LUT_INIT = 16'hffed;
    SB_LUT4 tc_7__I_0_4_lut (.I0(GND_net), .I1(tc[2]), .I2(GND_net), .I3(n4755), 
            .O(tc_plus_1[2])) /* synthesis syn_instantiated=1 */ ;
    defparam tc_7__I_0_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i5170_2_lut (.I0(n2735), .I1(n2743), .I2(GND_net), .I3(GND_net), 
            .O(n5334));
    defparam i5170_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2_3_lut_adj_175 (.I0(n22_adj_829), .I1(A[11]), .I2(n11_adj_706), 
            .I3(GND_net), .O(n6_adj_843));   // ../tok.v(107[7] 123[14])
    defparam i2_3_lut_adj_175.LUT_INIT = 16'haeae;
    SB_LUT4 i3_4_lut_adj_176 (.I0(n10_adj_791), .I1(n6_adj_843), .I2(n11_adj_681), 
            .I3(uart_rx_data[3]), .O(n31_adj_844));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_176.LUT_INIT = 16'hefee;
    SB_LUT4 i3_4_lut_adj_177 (.I0(n14_adj_644), .I1(T[3]), .I2(n31_adj_844), 
            .I3(n5334), .O(n10_adj_845));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_177.LUT_INIT = 16'h50dc;
    SB_LUT4 i1_2_lut_adj_178 (.I0(n4_adj_806), .I1(n11_adj_830), .I2(GND_net), 
            .I3(GND_net), .O(n8_adj_846));   // ../tok.v(107[7] 123[14])
    defparam i1_2_lut_adj_178.LUT_INIT = 16'heeee;
    SB_LUT4 i2_4_lut_adj_179 (.I0(n2661), .I1(table_rd[3]), .I2(S[3]), 
            .I3(n15), .O(n9_adj_847));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_179.LUT_INIT = 16'h50dc;
    SB_LUT4 i5256_4_lut_4_lut (.I0(T[0]), .I1(T[1]), .I2(T[2]), .I3(T[3]), 
            .O(n5429));
    defparam i5256_4_lut_4_lut.LUT_INIT = 16'hf9bb;
    SB_LUT4 i5545_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_848), 
            .I3(GND_net), .O(n5610));   // ../tok.v(139[5] 146[14])
    defparam i5545_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i49_3_lut (.I0(n880), .I1(n904), .I2(A_low[3]), .I3(GND_net), 
            .O(n45_adj_849));   // ../tok.v(107[7] 123[14])
    defparam i49_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5562_4_lut (.I0(n45_adj_849), .I1(n9_adj_847), .I2(n8_adj_846), 
            .I3(n10_adj_845), .O(n5566));   // ../tok.v(105[10] 124[8])
    defparam i5562_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i2470_2_lut_3_lut_4_lut (.I0(n9_adj_798), .I1(n10_adj_747), 
            .I2(n14_adj_644), .I3(S[8]), .O(table_wr_data[8]));   // ../tok.v(76[51:57])
    defparam i2470_2_lut_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 A__15__I_0_i4_4_lut (.I0(S[3]), .I1(n5566), .I2(n23_c), .I3(n4908), 
            .O(A_[3]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i4_4_lut.LUT_INIT = 16'hcafa;
    SB_LUT4 i5540_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83), .I3(GND_net), 
            .O(n5603));   // ../tok.v(139[5] 146[14])
    defparam i5540_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i3_4_lut_adj_180 (.I0(n2743), .I1(n2661), .I2(T[0]), .I3(S[0]), 
            .O(n11_adj_730));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_180.LUT_INIT = 16'h3705;
    SB_LUT4 i5250_3_lut_4_lut (.I0(T[2]), .I1(T[3]), .I2(T[0]), .I3(GND_net), 
            .O(n5423));
    defparam i5250_3_lut_4_lut.LUT_INIT = 16'hdfdf;
    SB_LUT4 i3_4_lut_4_lut (.I0(T[2]), .I1(T[3]), .I2(T[0]), .I3(T[1]), 
            .O(n8_adj_805));
    defparam i3_4_lut_4_lut.LUT_INIT = 16'h2c8e;
    SB_LUT4 i5442_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_652), 
            .I3(GND_net), .O(n5460));   // ../tok.v(139[5] 146[14])
    defparam i5442_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_2_lut_adj_181 (.I0(T[4]), .I1(n878), .I2(GND_net), .I3(GND_net), 
            .O(n14_adj_679));   // ../tok.v(76[33:39])
    defparam i1_2_lut_adj_181.LUT_INIT = 16'heeee;
    SB_LUT4 i2626_1_lut (.I0(n2703), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n82));
    defparam i2626_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i2525_2_lut_3_lut_4_lut (.I0(stall), .I1(depth[2]), .I2(depth[3]), 
            .I3(n890), .O(n2585));
    defparam i2525_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 select_73_Select_4_i1_3_lut (.I0(A_low[0]), .I1(n2735), .I2(T[4]), 
            .I3(GND_net), .O(n1_adj_850));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_4_i1_3_lut.LUT_INIT = 16'h2323;
    SB_LUT4 i6_4_lut_4_lut (.I0(n2703), .I1(n2743), .I2(A[9]), .I3(n200[14]), 
            .O(n18_adj_774));
    defparam i6_4_lut_4_lut.LUT_INIT = 16'h7530;
    SB_LUT4 i3_4_lut_4_lut_adj_182 (.I0(n2703), .I1(n2661), .I2(n200[7]), 
            .I3(S[7]), .O(n14_adj_658));
    defparam i3_4_lut_4_lut_adj_182.LUT_INIT = 16'h7350;
    SB_LUT4 or_99_i9_2_lut_3_lut (.I0(A_low[4]), .I1(T[7]), .I2(n6_adj_650), 
            .I3(GND_net), .O(n173[8]));   // ../tok.v(108[56:76])
    defparam or_99_i9_2_lut_3_lut.LUT_INIT = 16'habab;
    SB_LUT4 i6_4_lut_4_lut_adj_183 (.I0(n2703), .I1(n35[8]), .I2(n5396), 
            .I3(A_low[4]), .O(n18_adj_677));
    defparam i6_4_lut_4_lut_adj_183.LUT_INIT = 16'h5f4f;
    SB_LUT4 i5_3_lut_adj_184 (.I0(n6_adj_762), .I1(table_rd[4]), .I2(n15), 
            .I3(GND_net), .O(n16_adj_851));   // ../tok.v(107[7] 123[14])
    defparam i5_3_lut_adj_184.LUT_INIT = 16'haeae;
    SB_LUT4 T_7__I_0_220_i15_2_lut_3_lut (.I0(n9_adj_766), .I1(n10_adj_643), 
            .I2(n14_adj_644), .I3(GND_net), .O(n15_adj_655));   // ../tok.v(22[34:43])
    defparam T_7__I_0_220_i15_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i2_4_lut_adj_185 (.I0(n880), .I1(n10_adj_827), .I2(n904), 
            .I3(A_low[4]), .O(n13_adj_852));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_185.LUT_INIT = 16'hcfdd;
    SB_LUT4 i6_4_lut_adj_186 (.I0(A[12]), .I1(n12_adj_826), .I2(n15_adj_655), 
            .I3(n1_adj_850), .O(n17_adj_853));   // ../tok.v(107[7] 123[14])
    defparam i6_4_lut_adj_186.LUT_INIT = 16'hffce;
    SB_LUT4 select_73_Select_15_i2_3_lut_3_lut (.I0(n2703), .I1(n35[8]), 
            .I2(A[11]), .I3(GND_net), .O(n2_adj_775));
    defparam select_73_Select_15_i2_3_lut_3_lut.LUT_INIT = 16'h5454;
    SB_LUT4 i5507_4_lut (.I0(n5564), .I1(n16_adj_851), .I2(T[4]), .I3(n2743), 
            .O(n5562));   // ../tok.v(105[10] 124[8])
    defparam i5507_4_lut.LUT_INIT = 16'heefe;
    SB_LUT4 i5569_4_lut (.I0(n5562), .I1(n17_adj_853), .I2(n13_adj_852), 
            .I3(n14_adj_854), .O(n5561));   // ../tok.v(105[10] 124[8])
    defparam i5569_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 select_73_Select_13_i2_3_lut_3_lut (.I0(n2703), .I1(n35[8]), 
            .I2(A[9]), .I3(GND_net), .O(n2_adj_743));
    defparam select_73_Select_13_i2_3_lut_3_lut.LUT_INIT = 16'h5454;
    SB_LUT4 A__15__I_0_i5_4_lut (.I0(S[4]), .I1(n5561), .I2(n23_c), .I3(n4908), 
            .O(A_[4]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i5_4_lut.LUT_INIT = 16'hcafa;
    SB_LUT4 i3_4_lut_4_lut_adj_187 (.I0(n2703), .I1(n2661), .I2(n200[4]), 
            .I3(S[4]), .O(n14_adj_854));
    defparam i3_4_lut_4_lut_adj_187.LUT_INIT = 16'h7350;
    SB_LUT4 i3_4_lut_4_lut_adj_188 (.I0(n2703), .I1(n2661), .I2(n200[6]), 
            .I3(S[6]), .O(n14));
    defparam i3_4_lut_4_lut_adj_188.LUT_INIT = 16'h7350;
    SB_LUT4 i5463_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_665), 
            .I3(GND_net), .O(n5487));   // ../tok.v(139[5] 146[14])
    defparam i5463_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i4_4_lut_4_lut (.I0(n2703), .I1(n2735), .I2(n173[5]), .I3(n200[5]), 
            .O(n16_adj_855));
    defparam i4_4_lut_4_lut.LUT_INIT = 16'h7530;
    SB_LUT4 i5_4_lut_4_lut (.I0(n2703), .I1(n2661), .I2(n200[12]), .I3(S[12]), 
            .O(n16_adj_741));
    defparam i5_4_lut_4_lut.LUT_INIT = 16'h7350;
    SB_LUT4 select_73_Select_11_i2_3_lut_3_lut (.I0(n2703), .I1(n35[8]), 
            .I2(\A_low[7] ), .I3(GND_net), .O(n2));
    defparam select_73_Select_11_i2_3_lut_3_lut.LUT_INIT = 16'h5454;
    SB_LUT4 T_7__I_0_233_i11_2_lut_4_lut (.I0(T[1]), .I1(T[0]), .I2(T[2]), 
            .I3(T[3]), .O(n11_adj_681));   // ../tok.v(21[34:42])
    defparam T_7__I_0_233_i11_2_lut_4_lut.LUT_INIT = 16'hff7f;
    SB_LUT4 inv_106_i7_1_lut (.I0(A_low[6]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[6]));   // ../tok.v(115[20:22])
    defparam inv_106_i7_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 or_99_i6_3_lut (.I0(A_low[1]), .I1(T[5]), .I2(T[4]), .I3(GND_net), 
            .O(n173[5]));   // ../tok.v(108[56:76])
    defparam or_99_i6_3_lut.LUT_INIT = 16'hbebe;
    SB_LUT4 i5458_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_678), 
            .I3(GND_net), .O(n5483));   // ../tok.v(139[5] 146[14])
    defparam i5458_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 select_73_Select_7_i12_2_lut_3_lut (.I0(uart_rx_data[7]), .I1(n11_adj_681), 
            .I2(n14_adj_644), .I3(GND_net), .O(n12));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_7_i12_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i2_3_lut_adj_189 (.I0(A_low[5]), .I1(n880), .I2(n904), .I3(GND_net), 
            .O(n14_adj_856));   // ../tok.v(107[7] 123[14])
    defparam i2_3_lut_adj_189.LUT_INIT = 16'h1b1b;
    SB_LUT4 i8_4_lut_adj_190 (.I0(n6_adj_717), .I1(n16_adj_855), .I2(table_rd[5]), 
            .I3(n15), .O(n20_adj_857));   // ../tok.v(107[7] 123[14])
    defparam i8_4_lut_adj_190.LUT_INIT = 16'heefe;
    SB_LUT4 i2_3_lut_adj_191 (.I0(n14_adj_764), .I1(n2735), .I2(T[0]), 
            .I3(GND_net), .O(n10_adj_858));   // ../tok.v(107[7] 123[14])
    defparam i2_3_lut_adj_191.LUT_INIT = 16'hbaba;
    SB_LUT4 select_73_Select_5_i3_3_lut (.I0(A_low[0]), .I1(n2743), .I2(T[5]), 
            .I3(GND_net), .O(n3_adj_859));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_5_i3_3_lut.LUT_INIT = 16'h1212;
    SB_LUT4 i6_4_lut_adj_192 (.I0(S[5]), .I1(uart_rx_data[5]), .I2(n2661), 
            .I3(n15_adj_667), .O(n18_adj_860));   // ../tok.v(107[7] 123[14])
    defparam i6_4_lut_adj_192.LUT_INIT = 16'h0ace;
    SB_LUT4 i10_4_lut_adj_193 (.I0(n10_adj_823), .I1(n20_adj_857), .I2(n14_adj_856), 
            .I3(n5_adj_800), .O(n22_adj_861));   // ../tok.v(107[7] 123[14])
    defparam i10_4_lut_adj_193.LUT_INIT = 16'hfffe;
    SB_LUT4 i5550_2_lut (.I0(n15_adj_655), .I1(A[13]), .I2(GND_net), .I3(GND_net), 
            .O(n5559));   // ../tok.v(105[10] 124[8])
    defparam i5550_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i5564_4_lut (.I0(n5559), .I1(n22_adj_861), .I2(n18_adj_860), 
            .I3(n3_adj_859), .O(n5556));   // ../tok.v(105[10] 124[8])
    defparam i5564_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 A__15__I_0_i6_4_lut (.I0(S[5]), .I1(n5556), .I2(n23_c), .I3(n4908), 
            .O(A_[5]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i6_4_lut.LUT_INIT = 16'hcafa;
    SB_LUT4 equal_155_i16_2_lut_3_lut (.I0(n9_adj_802), .I1(n2607), .I2(n14_adj_644), 
            .I3(GND_net), .O(n400));   // ../tok.v(110[9:12])
    defparam equal_155_i16_2_lut_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 i5210_4_lut_4_lut (.I0(n9_adj_802), .I1(n2607), .I2(n10_adj_803), 
            .I3(n11_adj_681), .O(n5380));   // ../tok.v(110[9:12])
    defparam i5210_4_lut_4_lut.LUT_INIT = 16'hba00;
    SB_LUT4 i5480_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_687), 
            .I3(GND_net), .O(n5505));   // ../tok.v(139[5] 146[14])
    defparam i5480_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i2453_2_lut_3_lut_4_lut (.I0(n9_adj_798), .I1(n10_adj_747), 
            .I2(n14_adj_644), .I3(S[11]), .O(table_wr_data[11]));   // ../tok.v(76[51:57])
    defparam i2453_2_lut_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 equal_157_i15_2_lut_3_lut (.I0(n9_adj_802), .I1(n2607), .I2(n14_adj_701), 
            .I3(GND_net), .O(n15_adj_671));   // ../tok.v(110[9:12])
    defparam equal_157_i15_2_lut_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 i5492_3_lut_4_lut (.I0(T[2]), .I1(T[4]), .I2(T[0]), .I3(T[1]), 
            .O(n5507));   // ../tok.v(139[5] 146[14])
    defparam i5492_3_lut_4_lut.LUT_INIT = 16'h0880;
    SB_LUT4 i125_4_lut_adj_194 (.I0(c_stk_r[0]), .I1(table_rd[0]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_842));   // ../tok.v(139[5] 146[14])
    defparam i125_4_lut_adj_194.LUT_INIT = 16'h0ac0;
    SB_LUT4 select_73_Select_6_i1_4_lut (.I0(A_low[2]), .I1(n2735), .I2(T[6]), 
            .I3(n285), .O(n1_adj_862));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_6_i1_4_lut.LUT_INIT = 16'h3223;
    SB_LUT4 i5577_4_lut (.I0(n5554), .I1(A_low[1]), .I2(n2743), .I3(T[6]), 
            .O(n5553));   // ../tok.v(105[10] 124[8])
    defparam i5577_4_lut.LUT_INIT = 16'habae;
    SB_LUT4 i2462_2_lut_3_lut_4_lut (.I0(n9_adj_798), .I1(n10_adj_747), 
            .I2(n14_adj_644), .I3(S[10]), .O(table_wr_data[10]));   // ../tok.v(76[51:57])
    defparam i2462_2_lut_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 i2446_2_lut_3_lut_4_lut (.I0(n9_adj_798), .I1(n10_adj_747), 
            .I2(n14_adj_644), .I3(S[12]), .O(table_wr_data[12]));   // ../tok.v(76[51:57])
    defparam i2446_2_lut_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 i5495_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_714), 
            .I3(GND_net), .O(n5511));   // ../tok.v(139[5] 146[14])
    defparam i5495_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i2569_2_lut_3_lut (.I0(n11), .I1(n14_adj_644), .I2(S[15]), 
            .I3(GND_net), .O(table_wr_data[15]));   // ../tok.v(76[51:57])
    defparam i2569_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_LUT4 i2_4_lut_adj_195 (.I0(n880), .I1(n10_adj_820), .I2(n904), 
            .I3(A_low[6]), .O(n13_adj_641));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_195.LUT_INIT = 16'hcfdd;
    SB_LUT4 i18_4_lut_adj_196 (.I0(n3_adj_863), .I1(n5583), .I2(T[6]), 
            .I3(T[0]), .O(n5_adj_864));   // ../tok.v(139[5] 146[14])
    defparam i18_4_lut_adj_196.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_197 (.I0(n5298), .I1(n820), .I2(tc_plus_1[0]), 
            .I3(n5_adj_864), .O(n92_adj_14));   // ../tok.v(139[5] 146[14])
    defparam i1_4_lut_adj_197.LUT_INIT = 16'hdc50;
    SB_LUT4 i125_4_lut_adj_198 (.I0(c_stk_r[1]), .I1(table_rd[1]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_848));   // ../tok.v(139[5] 146[14])
    defparam i125_4_lut_adj_198.LUT_INIT = 16'h0ac0;
    SB_LUT4 i6_4_lut_adj_199 (.I0(A[14]), .I1(n12_adj_824), .I2(n15_adj_655), 
            .I3(n1_adj_862), .O(n17));   // ../tok.v(107[7] 123[14])
    defparam i6_4_lut_adj_199.LUT_INIT = 16'hffce;
    SB_LUT4 i2445_2_lut_3_lut_4_lut (.I0(n9_adj_798), .I1(n10_adj_747), 
            .I2(n14_adj_644), .I3(S[13]), .O(table_wr_data[13]));   // ../tok.v(76[51:57])
    defparam i2445_2_lut_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 i5570_4_lut (.I0(n5465), .I1(n10_adj_858), .I2(n15), .I3(table_rd[0]), 
            .O(n5463));   // ../tok.v(105[10] 124[8])
    defparam i5570_4_lut.LUT_INIT = 16'hefee;
    SB_LUT4 i2460_3_lut_4_lut (.I0(n9_adj_802), .I1(n10_adj_643), .I2(n14_adj_644), 
            .I3(n15_adj_789), .O(n2520));   // ../tok.v(76[24:30])
    defparam i2460_3_lut_4_lut.LUT_INIT = 16'hfe00;
    SB_LUT4 i2570_2_lut_3_lut (.I0(n11), .I1(n14_adj_644), .I2(S[14]), 
            .I3(GND_net), .O(table_wr_data[14]));   // ../tok.v(76[51:57])
    defparam i2570_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_LUT4 i45_3_lut (.I0(n880), .I1(n904), .I2(A_low[0]), .I3(GND_net), 
            .O(n5372));   // ../tok.v(107[7] 123[14])
    defparam i45_3_lut.LUT_INIT = 16'hcaca;
    \RAM(init_file="blank256.hex",data_width=16)  vals (.idx({idx}), .table_wr_data({table_wr_data}), 
            .table_rd({table_rd}), .clk(clk), .write_slot(write_slot), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // ../tok.v(217[5] 225[2])
    UART uart (.uart_rx_valid(uart_rx_valid), .clk(clk), .GND_net(GND_net), 
         .n971(n971), .bytephase_5__N_510(bytephase_5__N_510), .txtick(txtick), 
         .n11(n11_adj_681), .n14(n14_adj_644), .\sender[1] (\sender[1] ), 
         .tx_c(tx_c), .n23(n23), .uart_tx_busy(uart_tx_busy), .n813(n813), 
         .n4858(n4858), .\sender[2] (\sender[2] ), .\A_low[6] (A_low[6]), 
         .\sender[9] (\sender[9] ), .\A_low[5] (A_low[5]), .\A_low[4] (A_low[4]), 
         .\A_low[3] (A_low[3]), .\A_low[2] (A_low[2]), .\A_low[1] (A_low[1]), 
         .\A_low[0] (A_low[0]), .n1204(n1204), .n1201(n1201), .n1194(n1194), 
         .capture({capture}), .n1193(n1193), .n1192(n1192), .n1191(n1191), 
         .n1190(n1190), .n1189(n1189), .n1188(n1188), .n1187(n1187), 
         .n1186(n1186), .n1185(n1185), .uart_rx_data({uart_rx_data}), 
         .n1184(n1184), .n1183(n1183), .n1181(n1181), .n1180(n1180), 
         .n1179(n1179), .n1178(n1178), .n1171(n1171), .n1170(n1170), 
         .rx_data_7__N_511(rx_data_7__N_511), .\T[0] (T[0]), .\T[6] (T[6]), 
         .n15(n15_adj_817), .\T[2] (T[2]), .n898(n898), .rx_c(rx_c), 
         .\T[7] (T[7]), .\T[1] (T[1]), .\T[3] (T[3])) /* synthesis syn_module_defined=1 */ ;   // ../tok.v(230[6] 242[2])
    RAM ram (.c_stk_r({c_stk_r}), .T({T}), .n101(n101), .n3(n3), .\tail[30] (tail[30]), 
        .\tail[46] (tail[46]), .n29(n29_adj_787), .n2515(n2515), .\tailN[38] (tailN[38]), 
        .tc_plus_1({tc_plus_1}), .n4(n4_adj_712), .tc__7__N_134(tc__7__N_134), 
        .\tail[29] (tail[29]), .\tail[45] (tail[45]), .\tailN[37] (tailN[37]), 
        .n3_adj_2(n3_adj_645), .\tail[28] (tail[28]), .\tail[44] (tail[44]), 
        .\tailN[36] (tailN[36]), .\S[0] (S[0]), .\S[1] (S[1]), .\S[2] (S[2]), 
        .\S[3] (S[3]), .\S[4] (S[4]), .\S[5] (S[5]), .\S[6] (S[6]), 
        .\S[7] (S[7]), .tc_({tc_}), .A_low({\A_low[7] , A_low[6:0]}), 
        .clk(clk), .write_flag(write_flag), .GND_net(GND_net), .\tail[27] (tail[27]), 
        .\tail[43] (tail[43]), .\tailN[35] (tailN[35]), .\tail[26] (tail[26]), 
        .\tail[42] (tail[42]), .\tailN[34] (tailN[34]), .n3_adj_3(n3_adj_659), 
        .\tail[25] (tail[25]), .\tail[41] (tail[41]), .\tailN[33] (tailN[33]), 
        .n3_adj_4(n3_adj_672), .\tail[24] (tail[24]), .\tail[40] (tail[40]), 
        .\tailN[32] (tailN[32]), .n3_adj_5(n3_adj_683), .n3_adj_6(n3_adj_690), 
        .n3_adj_7(n3_adj_719), .\tail[8] (tail[8]), .\tailN[0] (tailN[0]), 
        .\tail[15] (tail[15]), .\tail[31] (tail[31]), .\tailN[23] (tailN[23]), 
        .\tail[14] (tail[14]), .\tailN[22] (tailN[22]), .\tail[13] (tail[13]), 
        .\tailN[21] (tailN[21]), .\tail[12] (tail[12]), .\tailN[20] (tailN[20]), 
        .\tail[11] (tail[11]), .\tailN[19] (tailN[19]), .\tail[10] (tail[10]), 
        .\tailN[18] (tailN[18]), .\tail[9] (tail[9]), .\tailN[17] (tailN[17]), 
        .\tailN[16] (tailN[16]), .\tailN[7] (tailN[7]), .\tailN[6] (tailN[6]), 
        .\tailN[5] (tailN[5]), .\tailN[4] (tailN[4]), .\tailN[3] (tailN[3]), 
        .\tailN[2] (tailN[2]), .\tailN[1] (tailN[1]), .\tail[60] (tail[60]), 
        .\tail[52] (tail[52]), .n1255(n1255), .\tail[61] (tail[61]), .\tail[53] (tail[53]), 
        .n1254(n1254), .\tail[62] (tail[62]), .\tail[54] (tail[54]), .n1253(n1253), 
        .\tail[63] (tail[63]), .\tail[55] (tail[55]), .n1252(n1252), .\tail[56] (tail[56]), 
        .\tail[48] (tail[48]), .n1197(n1197), .\tail[57] (tail[57]), .\tail[49] (tail[49]), 
        .n1196(n1196), .\tail[58] (tail[58]), .\tail[50] (tail[50]), .n1195(n1195), 
        .\tail[59] (tail[59]), .\tail[51] (tail[51]), .n1182(n1182), .\tail[47] (tail[47]), 
        .\tailN[55] (tailN[55]), .\tailN[54] (tailN[54]), .\tailN[53] (tailN[53]), 
        .\tailN[52] (tailN[52]), .\tailN[51] (tailN[51]), .\tailN[50] (tailN[50]), 
        .\tailN[49] (tailN[49]), .\tailN[48] (tailN[48]), .\tailN[39] (tailN[39]), 
        .n3_adj_8(n3_adj_863)) /* synthesis syn_module_defined=1 */ ;   // ../tok.v(171[5] 179[2])
    \RAM(init_file="blank256.hex",data_width=16)_U0  keys (.idx({idx}), .A_low({\A_low[7] , 
            A_low[6:0]}), .\A[8] (A[8]), .\A[9] (A[9]), .\A[10] (A[10]), 
            .\A[11] (A[11]), .\A[12] (A[12]), .\A[13] (A[13]), .\A[14] (A[14]), 
            .\A[15] (A[15]), .key_rd({key_rd}), .clk(clk), .write_slot(write_slot), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // ../tok.v(204[5] 212[2])
    STACK C_stk (.\tailN[0] (tailN[0]), .\C_stk_delta[0] (C_stk_delta[0]), 
          .clk(clk), .c_stk_r({c_stk_r}), .n29(n29_adj_787), .n2515(n2515), 
          .\tailN[55] (tailN[55]), .\tail[55] (tail[55]), .\tailN[54] (tailN[54]), 
          .\tail[54] (tail[54]), .\tailN[53] (tailN[53]), .\tail[53] (tail[53]), 
          .\tailN[52] (tailN[52]), .\tail[52] (tail[52]), .\tailN[51] (tailN[51]), 
          .\tail[51] (tail[51]), .\tailN[50] (tailN[50]), .\tail[50] (tail[50]), 
          .\tailN[49] (tailN[49]), .\tail[49] (tail[49]), .\tailN[48] (tailN[48]), 
          .\tail[48] (tail[48]), .\tail[47] (tail[47]), .\tail[46] (tail[46]), 
          .\tail[45] (tail[45]), .\tail[44] (tail[44]), .\tail[43] (tail[43]), 
          .\tail[42] (tail[42]), .\tail[41] (tail[41]), .\tail[40] (tail[40]), 
          .\tailN[39] (tailN[39]), .\tailN[38] (tailN[38]), .\tailN[37] (tailN[37]), 
          .\tailN[36] (tailN[36]), .\tailN[35] (tailN[35]), .\tailN[34] (tailN[34]), 
          .\tailN[33] (tailN[33]), .\tailN[32] (tailN[32]), .\tail[31] (tail[31]), 
          .\tail[30] (tail[30]), .\tail[29] (tail[29]), .\tail[28] (tail[28]), 
          .\tail[27] (tail[27]), .\tail[26] (tail[26]), .\tail[25] (tail[25]), 
          .\tail[24] (tail[24]), .\tailN[23] (tailN[23]), .\tailN[22] (tailN[22]), 
          .\tailN[21] (tailN[21]), .\tailN[20] (tailN[20]), .\tailN[19] (tailN[19]), 
          .\tailN[18] (tailN[18]), .\tailN[17] (tailN[17]), .\tailN[16] (tailN[16]), 
          .\tail[15] (tail[15]), .\tail[14] (tail[14]), .\tail[13] (tail[13]), 
          .\tail[12] (tail[12]), .\tail[11] (tail[11]), .\tail[10] (tail[10]), 
          .\tail[9] (tail[9]), .\tail[8] (tail[8]), .\tailN[7] (tailN[7]), 
          .\tailN[6] (tailN[6]), .\tailN[5] (tailN[5]), .\tailN[4] (tailN[4]), 
          .\tailN[3] (tailN[3]), .\tailN[2] (tailN[2]), .\tailN[1] (tailN[1]), 
          .n1255(n1255), .\tail[60] (tail[60]), .n1254(n1254), .\tail[61] (tail[61]), 
          .n1253(n1253), .\tail[62] (tail[62]), .n1252(n1252), .\tail[63] (tail[63]), 
          .n1197(n1197), .\tail[56] (tail[56]), .n1196(n1196), .\tail[57] (tail[57]), 
          .n1195(n1195), .\tail[58] (tail[58]), .n1182(n1182), .\tail[59] (tail[59]), 
          .n241(n241), .n11(n11_adj_793), .n14(n14_adj_765), .n11_adj_1(n11_adj_788), 
          .tc_plus_1({tc_plus_1}), .GND_net(GND_net), .n15(n15_adj_789), 
          .tc({tc})) /* synthesis syn_module_defined=1 */ ;   // ../tok.v(194[7] 200[2])
    \STACK(WIDTH=16)  A_stk (.rd_15__N_301(rd_15__N_301), .clk(clk), .S({S}), 
            .\tail[96] (\tail[96] ), .\tail[97] (\tail[97] ), .\tail[98] (\tail[98] ), 
            .\tail[99] (\tail[99] ), .\tail[100] (\tail[100] ), .\tail[101] (\tail[101] ), 
            .\tail[102] (\tail[102] ), .\tail[103] (\tail[103] ), .\tail[104] (\tail[104] ), 
            .\tail[105] (\tail[105] ), .\tail[106] (\tail[106] ), .\tail[107] (\tail[107] ), 
            .\tail[108] (\tail[108] ), .\tail[109] (\tail[109] ), .\tail[110] (\tail[110] ), 
            .\tail[111] (\tail[111] ), .A_low({\A_low[7] , A_low[6:0]}), 
            .n238(n238), .GND_net(GND_net), .\A[15] (A[15]), .\A[14] (A[14]), 
            .\A_stk_delta[1] (\A_stk_delta[1] ), .\A[13] (A[13]), .\A[12] (A[12]), 
            .\A[11] (A[11]), .\A[10] (A[10]), .\A[9] (A[9]), .\A[8] (A[8]), 
            .n1207(n1207), .\tail[127] (\tail[127] ), .n1210(n1210), .\tail[126] (\tail[126] ), 
            .n1213(n1213), .\tail[125] (\tail[125] ), .n1216(n1216), .\tail[124] (\tail[124] ), 
            .n1219(n1219), .\tail[123] (\tail[123] ), .n1222(n1222), .\tail[122] (\tail[122] ), 
            .n1225(n1225), .\tail[121] (\tail[121] ), .n1235(n1235), .\tail[120] (\tail[120] ), 
            .n1130(n1130), .\tail[119] (\tail[119] ), .n1133(n1133), .\tail[118] (\tail[118] ), 
            .n1136(n1136), .\tail[117] (\tail[117] ), .n1139(n1139), .\tail[116] (\tail[116] ), 
            .n1142(n1142), .\tail[115] (\tail[115] ), .n1145(n1145), .\tail[114] (\tail[114] ), 
            .n1148(n1148), .\tail[113] (\tail[113] ), .n1151(n1151), .\tail[112] (\tail[112] )) /* synthesis syn_module_defined=1 */ ;   // ../tok.v(184[7] 190[2])
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

module UART (uart_rx_valid, clk, GND_net, n971, bytephase_5__N_510, 
            txtick, n11, n14, \sender[1] , tx_c, n23, uart_tx_busy, 
            n813, n4858, \sender[2] , \A_low[6] , \sender[9] , \A_low[5] , 
            \A_low[4] , \A_low[3] , \A_low[2] , \A_low[1] , \A_low[0] , 
            n1204, n1201, n1194, capture, n1193, n1192, n1191, 
            n1190, n1189, n1188, n1187, n1186, n1185, uart_rx_data, 
            n1184, n1183, n1181, n1180, n1179, n1178, n1171, n1170, 
            rx_data_7__N_511, \T[0] , \T[6] , n15, \T[2] , n898, 
            rx_c, \T[7] , \T[1] , \T[3] ) /* synthesis syn_module_defined=1 */ ;
    output uart_rx_valid;
    input clk;
    input GND_net;
    input n971;
    output bytephase_5__N_510;
    output txtick;
    input n11;
    input n14;
    output \sender[1] ;
    output tx_c;
    output n23;
    output uart_tx_busy;
    output n813;
    output n4858;
    output \sender[2] ;
    input \A_low[6] ;
    output \sender[9] ;
    input \A_low[5] ;
    input \A_low[4] ;
    input \A_low[3] ;
    input \A_low[2] ;
    input \A_low[1] ;
    input \A_low[0] ;
    input n1204;
    input n1201;
    input n1194;
    output [9:0]capture;
    input n1193;
    input n1192;
    input n1191;
    input n1190;
    input n1189;
    input n1188;
    input n1187;
    input n1186;
    input n1185;
    output [7:0]uart_rx_data;
    input n1184;
    input n1183;
    input n1181;
    input n1180;
    input n1179;
    input n1178;
    input n1171;
    input n1170;
    output rx_data_7__N_511;
    input \T[0] ;
    input \T[6] ;
    input n15;
    input \T[2] ;
    output n898;
    input rx_c;
    input \T[7] ;
    input \T[1] ;
    input \T[3] ;
    
    wire clk /* synthesis is_clock=1 */ ;   // ../lattice_top.v(10[6:9])
    
    wire uart_rd, n953;
    wire [6:0]n33;
    wire [6:0]rxclkcounter;   // ../uart.v(28[18:30])
    
    wire n4832;
    wire [5:0]n539;
    wire [5:0]bytephase;   // ../uart.v(27[11:20])
    wire [8:0]n41;
    wire [8:0]txclkcounter;   // ../uart.v(57[18:30])
    
    wire n4831;
    wire [3:0]n21;
    
    wire n1023;
    wire [3:0]sentbits;   // ../uart.v(61[11:19])
    
    wire n1093, rxclkcounter_6__N_477, n4830, n4829, n1017, n4828, 
        n4827, n5, VCC_net, n13, n4826, n4825, n2;
    wire [9:0]sender_9__N_435;
    wire [9:0]sender;   // ../uart.v(64[11:17])
    
    wire n4824, n4823, n4822, n4821, n4820, n4819, n4818, n4817, 
        n4816, n4815, n5374, n4814, n5235, n6, n12, n5418, n12_adj_640;
    
    SB_DFFE valid_54 (.Q(uart_rx_valid), .C(clk), .E(n953), .D(uart_rd));   // ../uart.v(50[8] 55[4])
    SB_LUT4 rxclkcounter_148_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[6]), 
            .I3(n4832), .O(n33[6])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_148_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR bytephase__i1 (.Q(bytephase[1]), .C(clk), .E(n971), .D(n539[1]), 
            .R(bytephase_5__N_510));   // ../uart.v(38[8:96])
    SB_DFFESR bytephase__i2 (.Q(bytephase[2]), .C(clk), .E(n971), .D(n539[2]), 
            .R(bytephase_5__N_510));   // ../uart.v(38[8:96])
    SB_DFFSS txclkcounter_145__i0 (.Q(txclkcounter[0]), .C(clk), .D(n41[0]), 
            .S(txtick));   // ../uart.v(59[52:68])
    SB_LUT4 i5591_2_lut_3_lut (.I0(uart_rx_valid), .I1(n11), .I2(n14), 
            .I3(GND_net), .O(uart_rd));   // ../uart.v(50[8] 55[4])
    defparam i5591_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_DFFESR bytephase__i3 (.Q(bytephase[3]), .C(clk), .E(n971), .D(n539[3]), 
            .R(bytephase_5__N_510));   // ../uart.v(38[8:96])
    SB_DFFESR bytephase__i4 (.Q(bytephase[4]), .C(clk), .E(n971), .D(n539[4]), 
            .R(bytephase_5__N_510));   // ../uart.v(38[8:96])
    SB_DFFESR bytephase__i5 (.Q(bytephase[5]), .C(clk), .E(n971), .D(n539[5]), 
            .R(bytephase_5__N_510));   // ../uart.v(38[8:96])
    SB_LUT4 rxclkcounter_148_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[5]), 
            .I3(n4831), .O(n33[5])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_148_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR sentbits_147__i0 (.Q(sentbits[0]), .C(clk), .E(n1023), .D(n21[0]), 
            .R(n1093));   // ../uart.v(63[52:64])
    SB_DFFSS rxclkcounter_148__i0 (.Q(rxclkcounter[0]), .C(clk), .D(n33[0]), 
            .S(rxclkcounter_6__N_477));   // ../uart.v(31[61:77])
    SB_CARRY rxclkcounter_148_add_4_7 (.CI(n4831), .I0(GND_net), .I1(rxclkcounter[5]), 
            .CO(n4832));
    SB_LUT4 rxclkcounter_148_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[4]), 
            .I3(n4830), .O(n33[4])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_148_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR bytephase__i0 (.Q(bytephase[0]), .C(clk), .E(n971), .D(n539[0]), 
            .R(bytephase_5__N_510));   // ../uart.v(38[8:96])
    SB_CARRY rxclkcounter_148_add_4_6 (.CI(n4830), .I0(GND_net), .I1(rxclkcounter[4]), 
            .CO(n4831));
    SB_LUT4 rxclkcounter_148_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[3]), 
            .I3(n4829), .O(n33[3])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_148_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rxclkcounter_148_add_4_5 (.CI(n4829), .I0(GND_net), .I1(rxclkcounter[3]), 
            .CO(n4830));
    SB_DFFESS sender_i1 (.Q(tx_c), .C(clk), .E(n1017), .D(\sender[1] ), 
            .S(n23));   // ../uart.v(66[8:100])
    SB_LUT4 rxclkcounter_148_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[2]), 
            .I3(n4828), .O(n33[2])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_148_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR sentbits_147__i3 (.Q(sentbits[3]), .C(clk), .E(n1023), .D(n21[3]), 
            .R(n1093));   // ../uart.v(63[52:64])
    SB_DFFESR sentbits_147__i2 (.Q(sentbits[2]), .C(clk), .E(n1023), .D(n21[2]), 
            .R(n1093));   // ../uart.v(63[52:64])
    SB_CARRY rxclkcounter_148_add_4_4 (.CI(n4828), .I0(GND_net), .I1(rxclkcounter[2]), 
            .CO(n4829));
    SB_DFFESR sentbits_147__i1 (.Q(sentbits[1]), .C(clk), .E(n1023), .D(n21[1]), 
            .R(n1093));   // ../uart.v(63[52:64])
    SB_LUT4 rxclkcounter_148_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[1]), 
            .I3(n4827), .O(n33[1])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_148_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut (.I0(bytephase[2]), .I1(bytephase[0]), .I2(bytephase[1]), 
            .I3(bytephase[4]), .O(n5));   // ../uart.v(36[15:33])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_4_lut (.I0(sentbits[1]), .I1(sentbits[0]), .I2(sentbits[3]), 
            .I3(sentbits[2]), .O(uart_tx_busy));   // ../uart.v(62[13:30])
    defparam i2_4_lut.LUT_INIT = 16'hffdf;
    SB_CARRY rxclkcounter_148_add_4_3 (.CI(n4827), .I0(GND_net), .I1(rxclkcounter[1]), 
            .CO(n4828));
    SB_LUT4 rxclkcounter_148_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[0]), 
            .I3(VCC_net), .O(n33[0])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_148_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_3_lut (.I0(bytephase[0]), .I1(bytephase[1]), .I2(n813), 
            .I3(GND_net), .O(n4858));   // ../uart.v(39[15:40])
    defparam i2_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 i1_3_lut_4_lut (.I0(bytephase[2]), .I1(bytephase[0]), .I2(n13), 
            .I3(bytephase[4]), .O(bytephase_5__N_510));   // ../uart.v(30[19:32])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h0010;
    SB_DFFSR txclkcounter_145__i8 (.Q(txclkcounter[8]), .C(clk), .D(n41[8]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFFSR txclkcounter_145__i7 (.Q(txclkcounter[7]), .C(clk), .D(n41[7]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_CARRY rxclkcounter_148_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(rxclkcounter[0]), 
            .CO(n4827));
    SB_LUT4 add_72_7_lut (.I0(GND_net), .I1(bytephase[5]), .I2(GND_net), 
            .I3(n4826), .O(n539[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_7_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR txclkcounter_145__i6 (.Q(txclkcounter[6]), .C(clk), .D(n41[6]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFFSR txclkcounter_145__i5 (.Q(txclkcounter[5]), .C(clk), .D(n41[5]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFFSR txclkcounter_145__i4 (.Q(txclkcounter[4]), .C(clk), .D(n41[4]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFFSR txclkcounter_145__i3 (.Q(txclkcounter[3]), .C(clk), .D(n41[3]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFFSR txclkcounter_145__i2 (.Q(txclkcounter[2]), .C(clk), .D(n41[2]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFFSR txclkcounter_145__i1 (.Q(txclkcounter[1]), .C(clk), .D(n41[1]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_LUT4 add_72_6_lut (.I0(GND_net), .I1(bytephase[4]), .I2(GND_net), 
            .I3(n4825), .O(n539[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_2_lut_3_lut (.I0(bytephase[2]), .I1(bytephase[0]), .I2(bytephase[1]), 
            .I3(GND_net), .O(n2));   // ../uart.v(30[19:32])
    defparam i2_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_DFFE sender_i3 (.Q(\sender[2] ), .C(clk), .E(n1017), .D(sender_9__N_435[2]));   // ../uart.v(66[8:100])
    SB_DFFE sender_i4 (.Q(sender[3]), .C(clk), .E(n1017), .D(sender_9__N_435[3]));   // ../uart.v(66[8:100])
    SB_DFFE sender_i5 (.Q(sender[4]), .C(clk), .E(n1017), .D(sender_9__N_435[4]));   // ../uart.v(66[8:100])
    SB_DFFE sender_i6 (.Q(sender[5]), .C(clk), .E(n1017), .D(sender_9__N_435[5]));   // ../uart.v(66[8:100])
    SB_DFFE sender_i7 (.Q(sender[6]), .C(clk), .E(n1017), .D(sender_9__N_435[6]));   // ../uart.v(66[8:100])
    SB_DFFE sender_i8 (.Q(sender[7]), .C(clk), .E(n1017), .D(sender_9__N_435[7]));   // ../uart.v(66[8:100])
    SB_DFFE sender_i9 (.Q(sender[8]), .C(clk), .E(n1017), .D(sender_9__N_435[8]));   // ../uart.v(66[8:100])
    SB_DFFSR rxclkcounter_148__i1 (.Q(rxclkcounter[1]), .C(clk), .D(n33[1]), 
            .R(rxclkcounter_6__N_477));   // ../uart.v(31[61:77])
    SB_CARRY add_72_6 (.CI(n4825), .I0(bytephase[4]), .I1(GND_net), .CO(n4826));
    SB_LUT4 add_72_5_lut (.I0(GND_net), .I1(bytephase[3]), .I2(GND_net), 
            .I3(n4824), .O(n539[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_5_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR rxclkcounter_148__i2 (.Q(rxclkcounter[2]), .C(clk), .D(n33[2]), 
            .R(rxclkcounter_6__N_477));   // ../uart.v(31[61:77])
    SB_DFFSR rxclkcounter_148__i3 (.Q(rxclkcounter[3]), .C(clk), .D(n33[3]), 
            .R(rxclkcounter_6__N_477));   // ../uart.v(31[61:77])
    SB_DFFSR rxclkcounter_148__i4 (.Q(rxclkcounter[4]), .C(clk), .D(n33[4]), 
            .R(rxclkcounter_6__N_477));   // ../uart.v(31[61:77])
    SB_DFFSR rxclkcounter_148__i5 (.Q(rxclkcounter[5]), .C(clk), .D(n33[5]), 
            .R(rxclkcounter_6__N_477));   // ../uart.v(31[61:77])
    SB_DFFSR rxclkcounter_148__i6 (.Q(rxclkcounter[6]), .C(clk), .D(n33[6]), 
            .R(rxclkcounter_6__N_477));   // ../uart.v(31[61:77])
    SB_CARRY add_72_5 (.CI(n4824), .I0(bytephase[3]), .I1(GND_net), .CO(n4825));
    SB_LUT4 add_72_4_lut (.I0(GND_net), .I1(bytephase[2]), .I2(GND_net), 
            .I3(n4823), .O(n539[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_72_4 (.CI(n4823), .I0(bytephase[2]), .I1(GND_net), .CO(n4824));
    SB_LUT4 add_72_3_lut (.I0(GND_net), .I1(bytephase[1]), .I2(GND_net), 
            .I3(n4822), .O(n539[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sender_9__I_0_i9_3_lut (.I0(\A_low[6] ), .I1(\sender[9] ), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_435[8]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i9_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 sender_9__I_0_i8_3_lut (.I0(\A_low[5] ), .I1(sender[8]), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_435[7]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i8_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 sender_9__I_0_i7_3_lut (.I0(\A_low[4] ), .I1(sender[7]), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_435[6]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i7_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_72_3 (.CI(n4822), .I0(bytephase[1]), .I1(GND_net), .CO(n4823));
    SB_LUT4 add_72_2_lut (.I0(GND_net), .I1(bytephase[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n539[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sender_9__I_0_i6_3_lut (.I0(\A_low[3] ), .I1(sender[6]), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_435[5]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i6_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 sender_9__I_0_i5_3_lut (.I0(\A_low[2] ), .I1(sender[5]), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_435[4]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i5_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 sender_9__I_0_i4_3_lut (.I0(\A_low[1] ), .I1(sender[4]), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_435[3]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i4_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 sender_9__I_0_i3_3_lut (.I0(\A_low[0] ), .I1(sender[3]), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_435[2]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i3_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY add_72_2 (.CI(VCC_net), .I0(bytephase[0]), .I1(GND_net), 
            .CO(n4822));
    SB_LUT4 txclkcounter_145_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[8]), 
            .I3(n4821), .O(n41[8])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_145_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 txclkcounter_145_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[7]), 
            .I3(n4820), .O(n41[7])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_145_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY txclkcounter_145_add_4_9 (.CI(n4820), .I0(GND_net), .I1(txclkcounter[7]), 
            .CO(n4821));
    SB_DFF sender_i2 (.Q(\sender[1] ), .C(clk), .D(n1204));   // ../uart.v(66[8:100])
    SB_DFFE sender_i10 (.Q(\sender[9] ), .C(clk), .E(VCC_net), .D(n1201));   // ../uart.v(66[8:100])
    SB_DFF capture_i0_i1 (.Q(capture[1]), .C(clk), .D(n1194));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i2 (.Q(capture[2]), .C(clk), .D(n1193));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i3 (.Q(capture[3]), .C(clk), .D(n1192));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i4 (.Q(capture[4]), .C(clk), .D(n1191));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i5 (.Q(capture[5]), .C(clk), .D(n1190));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i6 (.Q(capture[6]), .C(clk), .D(n1189));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i7 (.Q(capture[7]), .C(clk), .D(n1188));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i8 (.Q(capture[8]), .C(clk), .D(n1187));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i9 (.Q(capture[9]), .C(clk), .D(n1186));   // ../uart.v(45[27:91])
    SB_DFF rx_data_i0_i1 (.Q(uart_rx_data[1]), .C(clk), .D(n1185));   // ../uart.v(50[8] 55[4])
    SB_DFF rx_data_i0_i2 (.Q(uart_rx_data[2]), .C(clk), .D(n1184));   // ../uart.v(50[8] 55[4])
    SB_DFF rx_data_i0_i3 (.Q(uart_rx_data[3]), .C(clk), .D(n1183));   // ../uart.v(50[8] 55[4])
    SB_DFF rx_data_i0_i4 (.Q(uart_rx_data[4]), .C(clk), .D(n1181));   // ../uart.v(50[8] 55[4])
    SB_DFF rx_data_i0_i5 (.Q(uart_rx_data[5]), .C(clk), .D(n1180));   // ../uart.v(50[8] 55[4])
    SB_DFF rx_data_i0_i6 (.Q(uart_rx_data[6]), .C(clk), .D(n1179));   // ../uart.v(50[8] 55[4])
    SB_DFF rx_data_i0_i7 (.Q(uart_rx_data[7]), .C(clk), .D(n1178));   // ../uart.v(50[8] 55[4])
    SB_DFF rx_data_i0_i0 (.Q(uart_rx_data[0]), .C(clk), .D(n1171));   // ../uart.v(50[8] 55[4])
    SB_LUT4 txclkcounter_145_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[6]), 
            .I3(n4819), .O(n41[6])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_145_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_DFF capture_i0_i0 (.Q(capture[0]), .C(clk), .D(n1170));   // ../uart.v(45[27:91])
    SB_CARRY txclkcounter_145_add_4_8 (.CI(n4819), .I0(GND_net), .I1(txclkcounter[6]), 
            .CO(n4820));
    SB_LUT4 txclkcounter_145_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[5]), 
            .I3(n4818), .O(n41[5])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_145_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY txclkcounter_145_add_4_7 (.CI(n4818), .I0(GND_net), .I1(txclkcounter[5]), 
            .CO(n4819));
    SB_LUT4 txclkcounter_145_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[4]), 
            .I3(n4817), .O(n41[4])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_145_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY txclkcounter_145_add_4_6 (.CI(n4817), .I0(GND_net), .I1(txclkcounter[4]), 
            .CO(n4818));
    SB_LUT4 txclkcounter_145_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[3]), 
            .I3(n4816), .O(n41[3])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_145_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY txclkcounter_145_add_4_5 (.CI(n4816), .I0(GND_net), .I1(txclkcounter[3]), 
            .CO(n4817));
    SB_LUT4 txclkcounter_145_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[2]), 
            .I3(n4815), .O(n41[2])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_145_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i5204_2_lut (.I0(bytephase[3]), .I1(bytephase[5]), .I2(GND_net), 
            .I3(GND_net), .O(n5374));
    defparam i5204_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY txclkcounter_145_add_4_4 (.CI(n4815), .I0(GND_net), .I1(txclkcounter[2]), 
            .CO(n4816));
    SB_LUT4 txclkcounter_145_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[1]), 
            .I3(n4814), .O(n41[1])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_145_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY txclkcounter_145_add_4_3 (.CI(n4814), .I0(GND_net), .I1(txclkcounter[1]), 
            .CO(n4815));
    SB_LUT4 i1_4_lut (.I0(capture[9]), .I1(capture[0]), .I2(n5), .I3(n5374), 
            .O(rx_data_7__N_511));   // ../uart.v(52[22:35])
    defparam i1_4_lut.LUT_INIT = 16'h0200;
    SB_LUT4 txclkcounter_145_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[0]), 
            .I3(VCC_net), .O(n41[0])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_145_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY txclkcounter_145_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(txclkcounter[0]), 
            .CO(n4814));
    SB_LUT4 i4651_2_lut (.I0(sentbits[1]), .I1(sentbits[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21[1]));   // ../uart.v(63[52:64])
    defparam i4651_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut (.I0(\T[0] ), .I1(\T[6] ), .I2(n15), .I3(\T[2] ), 
            .O(n898));   // ../uart.v(62[13:30])
    defparam i3_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i24_3_lut_4_lut (.I0(bytephase[3]), .I1(bytephase[5]), .I2(rx_c), 
            .I3(bytephase[1]), .O(n13));   // ../uart.v(38[36:53])
    defparam i24_3_lut_4_lut.LUT_INIT = 16'h1088;
    SB_LUT4 i5612_2_lut (.I0(txtick), .I1(n23), .I2(GND_net), .I3(GND_net), 
            .O(n1017));
    defparam i5612_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 rxrst_I_0_4_lut (.I0(n2), .I1(n813), .I2(n5235), .I3(bytephase[4]), 
            .O(rxclkcounter_6__N_477));   // ../uart.v(31[39:54])
    defparam rxrst_I_0_4_lut.LUT_INIT = 16'h3373;
    SB_LUT4 i1_2_lut (.I0(\T[7] ), .I1(n898), .I2(GND_net), .I3(GND_net), 
            .O(n6));   // ../uart.v(62[13:30])
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i5605_4_lut (.I0(uart_tx_busy), .I1(\T[1] ), .I2(\T[3] ), 
            .I3(n6), .O(n23));   // ../uart.v(62[13:30])
    defparam i5605_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 i4649_1_lut (.I0(sentbits[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n21[0]));   // ../uart.v(63[52:64])
    defparam i4649_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(rx_data_7__N_511), .I1(uart_rx_valid), 
            .I2(n11), .I3(n14), .O(n953));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'haaae;
    SB_LUT4 i5_4_lut (.I0(txclkcounter[3]), .I1(txclkcounter[2]), .I2(txclkcounter[5]), 
            .I3(txclkcounter[8]), .O(n12));
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i5246_3_lut (.I0(txclkcounter[6]), .I1(txclkcounter[7]), .I2(txclkcounter[4]), 
            .I3(GND_net), .O(n5418));
    defparam i5246_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i5618_4_lut (.I0(n5418), .I1(n12), .I2(txclkcounter[1]), .I3(txclkcounter[0]), 
            .O(txtick));   // ../uart.v(58[15:45])
    defparam i5618_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 i1_2_lut_3_lut (.I0(txtick), .I1(uart_tx_busy), .I2(n23), 
            .I3(GND_net), .O(n1023));   // ../uart.v(63[35:49])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hf8f8;
    SB_LUT4 i5610_2_lut_3_lut (.I0(txtick), .I1(uart_tx_busy), .I2(n23), 
            .I3(GND_net), .O(n1093));   // ../uart.v(63[35:49])
    defparam i5610_2_lut_3_lut.LUT_INIT = 16'h7070;
    SB_LUT4 i5_4_lut_adj_27 (.I0(rxclkcounter[0]), .I1(rxclkcounter[1]), 
            .I2(rxclkcounter[6]), .I3(rxclkcounter[4]), .O(n12_adj_640));   // ../uart.v(39[15:40])
    defparam i5_4_lut_adj_27.LUT_INIT = 16'hfeff;
    SB_LUT4 i6_4_lut (.I0(rxclkcounter[5]), .I1(n12_adj_640), .I2(rxclkcounter[3]), 
            .I3(rxclkcounter[2]), .O(n813));   // ../uart.v(39[15:40])
    defparam i6_4_lut.LUT_INIT = 16'hfdff;
    SB_LUT4 i2_3_lut_adj_28 (.I0(bytephase[3]), .I1(rx_c), .I2(bytephase[5]), 
            .I3(GND_net), .O(n5235));   // ../uart.v(38[36:53])
    defparam i2_3_lut_adj_28.LUT_INIT = 16'h0404;
    SB_LUT4 i4658_2_lut_3_lut (.I0(sentbits[1]), .I1(sentbits[0]), .I2(sentbits[2]), 
            .I3(GND_net), .O(n21[2]));   // ../uart.v(63[52:64])
    defparam i4658_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i4665_3_lut_4_lut (.I0(sentbits[1]), .I1(sentbits[0]), .I2(sentbits[2]), 
            .I3(sentbits[3]), .O(n21[3]));   // ../uart.v(63[52:64])
    defparam i4665_3_lut_4_lut.LUT_INIT = 16'h7f80;
    VCC i1 (.Y(VCC_net));
    
endmodule
//
// Verilog Description of module RAM
//

module RAM (c_stk_r, T, n101, n3, \tail[30] , \tail[46] , n29, 
            n2515, \tailN[38] , tc_plus_1, n4, tc__7__N_134, \tail[29] , 
            \tail[45] , \tailN[37] , n3_adj_2, \tail[28] , \tail[44] , 
            \tailN[36] , \S[0] , \S[1] , \S[2] , \S[3] , \S[4] , 
            \S[5] , \S[6] , \S[7] , tc_, A_low, clk, write_flag, 
            GND_net, \tail[27] , \tail[43] , \tailN[35] , \tail[26] , 
            \tail[42] , \tailN[34] , n3_adj_3, \tail[25] , \tail[41] , 
            \tailN[33] , n3_adj_4, \tail[24] , \tail[40] , \tailN[32] , 
            n3_adj_5, n3_adj_6, n3_adj_7, \tail[8] , \tailN[0] , \tail[15] , 
            \tail[31] , \tailN[23] , \tail[14] , \tailN[22] , \tail[13] , 
            \tailN[21] , \tail[12] , \tailN[20] , \tail[11] , \tailN[19] , 
            \tail[10] , \tailN[18] , \tail[9] , \tailN[17] , \tailN[16] , 
            \tailN[7] , \tailN[6] , \tailN[5] , \tailN[4] , \tailN[3] , 
            \tailN[2] , \tailN[1] , \tail[60] , \tail[52] , n1255, 
            \tail[61] , \tail[53] , n1254, \tail[62] , \tail[54] , 
            n1253, \tail[63] , \tail[55] , n1252, \tail[56] , \tail[48] , 
            n1197, \tail[57] , \tail[49] , n1196, \tail[58] , \tail[50] , 
            n1195, \tail[59] , \tail[51] , n1182, \tail[47] , \tailN[55] , 
            \tailN[54] , \tailN[53] , \tailN[52] , \tailN[51] , \tailN[50] , 
            \tailN[49] , \tailN[48] , \tailN[39] , n3_adj_8) /* synthesis syn_module_defined=1 */ ;
    input [7:0]c_stk_r;
    output [7:0]T;
    input n101;
    output n3;
    input \tail[30] ;
    input \tail[46] ;
    input n29;
    input n2515;
    output \tailN[38] ;
    input [7:0]tc_plus_1;
    input n4;
    input tc__7__N_134;
    input \tail[29] ;
    input \tail[45] ;
    output \tailN[37] ;
    output n3_adj_2;
    input \tail[28] ;
    input \tail[44] ;
    output \tailN[36] ;
    input \S[0] ;
    input \S[1] ;
    input \S[2] ;
    input \S[3] ;
    input \S[4] ;
    input \S[5] ;
    input \S[6] ;
    input \S[7] ;
    input [7:0]tc_;
    input [7:0]A_low;
    input clk;
    input write_flag;
    input GND_net;
    input \tail[27] ;
    input \tail[43] ;
    output \tailN[35] ;
    input \tail[26] ;
    input \tail[42] ;
    output \tailN[34] ;
    output n3_adj_3;
    input \tail[25] ;
    input \tail[41] ;
    output \tailN[33] ;
    output n3_adj_4;
    input \tail[24] ;
    input \tail[40] ;
    output \tailN[32] ;
    output n3_adj_5;
    output n3_adj_6;
    output n3_adj_7;
    input \tail[8] ;
    output \tailN[0] ;
    input \tail[15] ;
    input \tail[31] ;
    output \tailN[23] ;
    input \tail[14] ;
    output \tailN[22] ;
    input \tail[13] ;
    output \tailN[21] ;
    input \tail[12] ;
    output \tailN[20] ;
    input \tail[11] ;
    output \tailN[19] ;
    input \tail[10] ;
    output \tailN[18] ;
    input \tail[9] ;
    output \tailN[17] ;
    output \tailN[16] ;
    output \tailN[7] ;
    output \tailN[6] ;
    output \tailN[5] ;
    output \tailN[4] ;
    output \tailN[3] ;
    output \tailN[2] ;
    output \tailN[1] ;
    input \tail[60] ;
    input \tail[52] ;
    output n1255;
    input \tail[61] ;
    input \tail[53] ;
    output n1254;
    input \tail[62] ;
    input \tail[54] ;
    output n1253;
    input \tail[63] ;
    input \tail[55] ;
    output n1252;
    input \tail[56] ;
    input \tail[48] ;
    output n1197;
    input \tail[57] ;
    input \tail[49] ;
    output n1196;
    input \tail[58] ;
    input \tail[50] ;
    output n1195;
    input \tail[59] ;
    input \tail[51] ;
    output n1182;
    input \tail[47] ;
    output \tailN[55] ;
    output \tailN[54] ;
    output \tailN[53] ;
    output \tailN[52] ;
    output \tailN[51] ;
    output \tailN[50] ;
    output \tailN[49] ;
    output \tailN[48] ;
    output \tailN[39] ;
    output n3_adj_8;
    
    wire clk /* synthesis is_clock=1 */ ;   // ../lattice_top.v(10[6:9])
    
    wire n5594, n5585, VCC_net, n5580, n5577, n5608, n5605, n5600, 
        n5597;
    
    SB_LUT4 i6_4_lut (.I0(c_stk_r[1]), .I1(n5594), .I2(T[2]), .I3(n101), 
            .O(n3));   // ../tok.v(32[14:15])
    defparam i6_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1773_3_lut_4_lut (.I0(\tail[30] ), .I1(\tail[46] ), .I2(n29), 
            .I3(n2515), .O(\tailN[38] ));   // ../tok.v(55[13:24])
    defparam i1773_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i5523_4_lut (.I0(tc_plus_1[2]), .I1(n4), .I2(c_stk_r[2]), 
            .I3(tc__7__N_134), .O(n5585));   // ../tok.v(32[14:15])
    defparam i5523_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1811_3_lut_4_lut (.I0(\tail[29] ), .I1(\tail[45] ), .I2(n29), 
            .I3(n2515), .O(\tailN[37] ));   // ../tok.v(55[13:24])
    defparam i1811_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i6_4_lut_adj_20 (.I0(c_stk_r[2]), .I1(n5585), .I2(T[2]), .I3(n101), 
            .O(n3_adj_2));   // ../tok.v(32[14:15])
    defparam i6_4_lut_adj_20.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1545_3_lut_4_lut (.I0(\tail[28] ), .I1(\tail[44] ), .I2(n29), 
            .I3(n2515), .O(\tailN[36] ));   // ../tok.v(55[13:24])
    defparam i1545_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_RAM512x8 mem2 (.RDATA({T}), .RCLK(clk), .RCLKE(VCC_net), .RE(VCC_net), 
            .RADDR({GND_net, tc_}), .WCLK(clk), .WCLKE(VCC_net), .WE(write_flag), 
            .WADDR({GND_net, \S[7] , \S[6] , \S[5] , \S[4] , \S[3] , 
            \S[2] , \S[1] , \S[0] }), .WDATA({A_low}));
    defparam mem2.INIT_0 = 256'h00000000000000000000000000000000000000000000000000000000007D227B;
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
    SB_LUT4 i1583_3_lut_4_lut (.I0(\tail[27] ), .I1(\tail[43] ), .I2(n29), 
            .I3(n2515), .O(\tailN[35] ));   // ../tok.v(55[13:24])
    defparam i1583_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1621_3_lut_4_lut (.I0(\tail[26] ), .I1(\tail[42] ), .I2(n29), 
            .I3(n2515), .O(\tailN[34] ));   // ../tok.v(55[13:24])
    defparam i1621_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i5518_4_lut (.I0(tc_plus_1[3]), .I1(n4), .I2(c_stk_r[3]), 
            .I3(tc__7__N_134), .O(n5580));   // ../tok.v(32[14:15])
    defparam i5518_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i6_4_lut_adj_21 (.I0(c_stk_r[3]), .I1(n5580), .I2(T[2]), .I3(n101), 
            .O(n3_adj_3));   // ../tok.v(32[14:15])
    defparam i6_4_lut_adj_21.LUT_INIT = 16'hc0ca;
    SB_LUT4 i5514_4_lut (.I0(tc_plus_1[4]), .I1(n4), .I2(c_stk_r[4]), 
            .I3(tc__7__N_134), .O(n5577));   // ../tok.v(32[14:15])
    defparam i5514_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1659_3_lut_4_lut (.I0(\tail[25] ), .I1(\tail[41] ), .I2(n29), 
            .I3(n2515), .O(\tailN[33] ));   // ../tok.v(55[13:24])
    defparam i1659_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i6_4_lut_adj_22 (.I0(c_stk_r[4]), .I1(n5577), .I2(T[2]), .I3(n101), 
            .O(n3_adj_4));   // ../tok.v(32[14:15])
    defparam i6_4_lut_adj_22.LUT_INIT = 16'hc0ca;
    SB_LUT4 i5546_4_lut (.I0(tc_plus_1[5]), .I1(n4), .I2(c_stk_r[5]), 
            .I3(tc__7__N_134), .O(n5608));   // ../tok.v(32[14:15])
    defparam i5546_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1697_3_lut_4_lut (.I0(\tail[24] ), .I1(\tail[40] ), .I2(n29), 
            .I3(n2515), .O(\tailN[32] ));   // ../tok.v(55[13:24])
    defparam i1697_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i6_4_lut_adj_23 (.I0(c_stk_r[5]), .I1(n5608), .I2(T[2]), .I3(n101), 
            .O(n3_adj_5));   // ../tok.v(32[14:15])
    defparam i6_4_lut_adj_23.LUT_INIT = 16'hc0ca;
    SB_LUT4 i5541_4_lut (.I0(tc_plus_1[6]), .I1(n4), .I2(c_stk_r[6]), 
            .I3(tc__7__N_134), .O(n5605));   // ../tok.v(32[14:15])
    defparam i5541_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i6_4_lut_adj_24 (.I0(c_stk_r[6]), .I1(n5605), .I2(T[2]), .I3(n101), 
            .O(n3_adj_6));   // ../tok.v(32[14:15])
    defparam i6_4_lut_adj_24.LUT_INIT = 16'hc0ca;
    SB_LUT4 i5535_4_lut (.I0(tc_plus_1[7]), .I1(n4), .I2(c_stk_r[7]), 
            .I3(tc__7__N_134), .O(n5600));   // ../tok.v(32[14:15])
    defparam i5535_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i6_4_lut_adj_25 (.I0(c_stk_r[7]), .I1(n5600), .I2(T[2]), .I3(n101), 
            .O(n3_adj_7));   // ../tok.v(32[14:15])
    defparam i6_4_lut_adj_25.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1696_3_lut_4_lut (.I0(c_stk_r[0]), .I1(\tail[8] ), .I2(n29), 
            .I3(n2515), .O(\tailN[0] ));   // ../tok.v(55[13:24])
    defparam i1696_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1738_3_lut_4_lut (.I0(\tail[15] ), .I1(\tail[31] ), .I2(n29), 
            .I3(n2515), .O(\tailN[23] ));   // ../tok.v(55[13:24])
    defparam i1738_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1776_3_lut_4_lut (.I0(\tail[14] ), .I1(\tail[30] ), .I2(n29), 
            .I3(n2515), .O(\tailN[22] ));   // ../tok.v(55[13:24])
    defparam i1776_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1814_3_lut_4_lut (.I0(\tail[13] ), .I1(\tail[29] ), .I2(n29), 
            .I3(n2515), .O(\tailN[21] ));   // ../tok.v(55[13:24])
    defparam i1814_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1548_3_lut_4_lut (.I0(\tail[12] ), .I1(\tail[28] ), .I2(n29), 
            .I3(n2515), .O(\tailN[20] ));   // ../tok.v(55[13:24])
    defparam i1548_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1586_3_lut_4_lut (.I0(\tail[11] ), .I1(\tail[27] ), .I2(n29), 
            .I3(n2515), .O(\tailN[19] ));   // ../tok.v(55[13:24])
    defparam i1586_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1624_3_lut_4_lut (.I0(\tail[10] ), .I1(\tail[26] ), .I2(n29), 
            .I3(n2515), .O(\tailN[18] ));   // ../tok.v(55[13:24])
    defparam i1624_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1662_3_lut_4_lut (.I0(\tail[9] ), .I1(\tail[25] ), .I2(n29), 
            .I3(n2515), .O(\tailN[17] ));   // ../tok.v(55[13:24])
    defparam i1662_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1700_3_lut_4_lut (.I0(\tail[8] ), .I1(\tail[24] ), .I2(n29), 
            .I3(n2515), .O(\tailN[16] ));   // ../tok.v(55[13:24])
    defparam i1700_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1734_3_lut_4_lut (.I0(c_stk_r[7]), .I1(\tail[15] ), .I2(n29), 
            .I3(n2515), .O(\tailN[7] ));   // ../tok.v(55[13:24])
    defparam i1734_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1772_3_lut_4_lut (.I0(c_stk_r[6]), .I1(\tail[14] ), .I2(n29), 
            .I3(n2515), .O(\tailN[6] ));   // ../tok.v(55[13:24])
    defparam i1772_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1810_3_lut_4_lut (.I0(c_stk_r[5]), .I1(\tail[13] ), .I2(n29), 
            .I3(n2515), .O(\tailN[5] ));   // ../tok.v(55[13:24])
    defparam i1810_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1544_3_lut_4_lut (.I0(c_stk_r[4]), .I1(\tail[12] ), .I2(n29), 
            .I3(n2515), .O(\tailN[4] ));   // ../tok.v(55[13:24])
    defparam i1544_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1582_3_lut_4_lut (.I0(c_stk_r[3]), .I1(\tail[11] ), .I2(n29), 
            .I3(n2515), .O(\tailN[3] ));   // ../tok.v(55[13:24])
    defparam i1582_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1620_3_lut_4_lut (.I0(c_stk_r[2]), .I1(\tail[10] ), .I2(n29), 
            .I3(n2515), .O(\tailN[2] ));   // ../tok.v(55[13:24])
    defparam i1620_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1658_3_lut_4_lut (.I0(c_stk_r[1]), .I1(\tail[9] ), .I2(n29), 
            .I3(n2515), .O(\tailN[1] ));   // ../tok.v(55[13:24])
    defparam i1658_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1543_4_lut_4_lut (.I0(\tail[60] ), .I1(\tail[52] ), .I2(n29), 
            .I3(n2515), .O(n1255));   // ../tok.v(55[13:24])
    defparam i1543_4_lut_4_lut.LUT_INIT = 16'h0acc;
    SB_LUT4 i1809_4_lut_4_lut (.I0(\tail[61] ), .I1(\tail[53] ), .I2(n29), 
            .I3(n2515), .O(n1254));   // ../tok.v(55[13:24])
    defparam i1809_4_lut_4_lut.LUT_INIT = 16'h0acc;
    SB_LUT4 i1771_4_lut_4_lut (.I0(\tail[62] ), .I1(\tail[54] ), .I2(n29), 
            .I3(n2515), .O(n1253));   // ../tok.v(55[13:24])
    defparam i1771_4_lut_4_lut.LUT_INIT = 16'h0acc;
    SB_LUT4 i1733_4_lut_4_lut (.I0(\tail[63] ), .I1(\tail[55] ), .I2(n29), 
            .I3(n2515), .O(n1252));   // ../tok.v(55[13:24])
    defparam i1733_4_lut_4_lut.LUT_INIT = 16'h0acc;
    SB_LUT4 i1695_4_lut_4_lut (.I0(\tail[56] ), .I1(\tail[48] ), .I2(n29), 
            .I3(n2515), .O(n1197));   // ../tok.v(55[13:24])
    defparam i1695_4_lut_4_lut.LUT_INIT = 16'h0acc;
    SB_LUT4 i1657_4_lut_4_lut (.I0(\tail[57] ), .I1(\tail[49] ), .I2(n29), 
            .I3(n2515), .O(n1196));   // ../tok.v(55[13:24])
    defparam i1657_4_lut_4_lut.LUT_INIT = 16'h0acc;
    SB_LUT4 i1619_4_lut_4_lut (.I0(\tail[58] ), .I1(\tail[50] ), .I2(n29), 
            .I3(n2515), .O(n1195));   // ../tok.v(55[13:24])
    defparam i1619_4_lut_4_lut.LUT_INIT = 16'h0acc;
    SB_LUT4 i1581_4_lut_4_lut (.I0(\tail[59] ), .I1(\tail[51] ), .I2(n29), 
            .I3(n2515), .O(n1182));   // ../tok.v(55[13:24])
    defparam i1581_4_lut_4_lut.LUT_INIT = 16'h0acc;
    SB_LUT4 i1737_3_lut_4_lut (.I0(\tail[47] ), .I1(\tail[63] ), .I2(n29), 
            .I3(n2515), .O(\tailN[55] ));   // ../tok.v(55[13:24])
    defparam i1737_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1775_3_lut_4_lut (.I0(\tail[46] ), .I1(\tail[62] ), .I2(n29), 
            .I3(n2515), .O(\tailN[54] ));   // ../tok.v(55[13:24])
    defparam i1775_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1813_3_lut_4_lut (.I0(\tail[45] ), .I1(\tail[61] ), .I2(n29), 
            .I3(n2515), .O(\tailN[53] ));   // ../tok.v(55[13:24])
    defparam i1813_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1547_3_lut_4_lut (.I0(\tail[44] ), .I1(\tail[60] ), .I2(n29), 
            .I3(n2515), .O(\tailN[52] ));   // ../tok.v(55[13:24])
    defparam i1547_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1585_3_lut_4_lut (.I0(\tail[43] ), .I1(\tail[59] ), .I2(n29), 
            .I3(n2515), .O(\tailN[51] ));   // ../tok.v(55[13:24])
    defparam i1585_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1623_3_lut_4_lut (.I0(\tail[42] ), .I1(\tail[58] ), .I2(n29), 
            .I3(n2515), .O(\tailN[50] ));   // ../tok.v(55[13:24])
    defparam i1623_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1661_3_lut_4_lut (.I0(\tail[41] ), .I1(\tail[57] ), .I2(n29), 
            .I3(n2515), .O(\tailN[49] ));   // ../tok.v(55[13:24])
    defparam i1661_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1699_3_lut_4_lut (.I0(\tail[40] ), .I1(\tail[56] ), .I2(n29), 
            .I3(n2515), .O(\tailN[48] ));   // ../tok.v(55[13:24])
    defparam i1699_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1735_3_lut_4_lut (.I0(\tail[31] ), .I1(\tail[47] ), .I2(n29), 
            .I3(n2515), .O(\tailN[39] ));   // ../tok.v(55[13:24])
    defparam i1735_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i5531_4_lut (.I0(tc_plus_1[0]), .I1(n4), .I2(c_stk_r[0]), 
            .I3(tc__7__N_134), .O(n5597));   // ../tok.v(32[14:15])
    defparam i5531_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i6_4_lut_adj_26 (.I0(c_stk_r[0]), .I1(n5597), .I2(T[2]), .I3(n101), 
            .O(n3_adj_8));   // ../tok.v(32[14:15])
    defparam i6_4_lut_adj_26.LUT_INIT = 16'hc0ca;
    SB_LUT4 i5527_4_lut (.I0(tc_plus_1[1]), .I1(n4), .I2(c_stk_r[1]), 
            .I3(tc__7__N_134), .O(n5594));   // ../tok.v(32[14:15])
    defparam i5527_4_lut.LUT_INIT = 16'hc088;
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

module STACK (\tailN[0] , \C_stk_delta[0] , clk, c_stk_r, n29, n2515, 
            \tailN[55] , \tail[55] , \tailN[54] , \tail[54] , \tailN[53] , 
            \tail[53] , \tailN[52] , \tail[52] , \tailN[51] , \tail[51] , 
            \tailN[50] , \tail[50] , \tailN[49] , \tail[49] , \tailN[48] , 
            \tail[48] , \tail[47] , \tail[46] , \tail[45] , \tail[44] , 
            \tail[43] , \tail[42] , \tail[41] , \tail[40] , \tailN[39] , 
            \tailN[38] , \tailN[37] , \tailN[36] , \tailN[35] , \tailN[34] , 
            \tailN[33] , \tailN[32] , \tail[31] , \tail[30] , \tail[29] , 
            \tail[28] , \tail[27] , \tail[26] , \tail[25] , \tail[24] , 
            \tailN[23] , \tailN[22] , \tailN[21] , \tailN[20] , \tailN[19] , 
            \tailN[18] , \tailN[17] , \tailN[16] , \tail[15] , \tail[14] , 
            \tail[13] , \tail[12] , \tail[11] , \tail[10] , \tail[9] , 
            \tail[8] , \tailN[7] , \tailN[6] , \tailN[5] , \tailN[4] , 
            \tailN[3] , \tailN[2] , \tailN[1] , n1255, \tail[60] , 
            n1254, \tail[61] , n1253, \tail[62] , n1252, \tail[63] , 
            n1197, \tail[56] , n1196, \tail[57] , n1195, \tail[58] , 
            n1182, \tail[59] , n241, n11, n14, n11_adj_1, tc_plus_1, 
            GND_net, n15, tc) /* synthesis syn_module_defined=1 */ ;
    input \tailN[0] ;
    input \C_stk_delta[0] ;
    input clk;
    output [7:0]c_stk_r;
    input n29;
    input n2515;
    input \tailN[55] ;
    output \tail[55] ;
    input \tailN[54] ;
    output \tail[54] ;
    input \tailN[53] ;
    output \tail[53] ;
    input \tailN[52] ;
    output \tail[52] ;
    input \tailN[51] ;
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
    output \tail[43] ;
    output \tail[42] ;
    output \tail[41] ;
    output \tail[40] ;
    input \tailN[39] ;
    input \tailN[38] ;
    input \tailN[37] ;
    input \tailN[36] ;
    input \tailN[35] ;
    input \tailN[34] ;
    input \tailN[33] ;
    input \tailN[32] ;
    output \tail[31] ;
    output \tail[30] ;
    output \tail[29] ;
    output \tail[28] ;
    output \tail[27] ;
    output \tail[26] ;
    output \tail[25] ;
    output \tail[24] ;
    input \tailN[23] ;
    input \tailN[22] ;
    input \tailN[21] ;
    input \tailN[20] ;
    input \tailN[19] ;
    input \tailN[18] ;
    input \tailN[17] ;
    input \tailN[16] ;
    output \tail[15] ;
    output \tail[14] ;
    output \tail[13] ;
    output \tail[12] ;
    output \tail[11] ;
    output \tail[10] ;
    output \tail[9] ;
    output \tail[8] ;
    input \tailN[7] ;
    input \tailN[6] ;
    input \tailN[5] ;
    input \tailN[4] ;
    input \tailN[3] ;
    input \tailN[2] ;
    input \tailN[1] ;
    input n1255;
    output \tail[60] ;
    input n1254;
    output \tail[61] ;
    input n1253;
    output \tail[62] ;
    input n1252;
    output \tail[63] ;
    input n1197;
    output \tail[56] ;
    input n1196;
    output \tail[57] ;
    input n1195;
    output \tail[58] ;
    input n1182;
    output \tail[59] ;
    input n241;
    input n11;
    input n14;
    input n11_adj_1;
    input [7:0]tc_plus_1;
    input GND_net;
    input n15;
    input [7:0]tc;
    
    wire clk /* synthesis is_clock=1 */ ;   // ../lattice_top.v(10[6:9])
    wire [63:0]tail;   // ../stack.v(16[16:20])
    wire [7:0]headN;   // ../stack.v(17[20:25])
    wire [63:0]tailN;   // ../stack.v(18[17:22])
    
    wire n602, n5456, n5453, n5450, n5447, n5444, n5441, n5438, 
        n5435;
    
    SB_DFFE tail_i0_i0 (.Q(tail[0]), .C(clk), .E(\C_stk_delta[0] ), .D(\tailN[0] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i0 (.Q(c_stk_r[0]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(headN[0]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i7 (.Q(c_stk_r[7]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(headN[7]));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_55__I_0_i32_3_lut_4_lut (.I0(tail[23]), .I1(tail[39]), 
            .I2(n29), .I3(n2515), .O(tailN[31]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i32_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_55__I_0_i31_3_lut_4_lut (.I0(tail[22]), .I1(tail[38]), 
            .I2(n29), .I3(n2515), .O(tailN[30]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i31_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_55__I_0_i30_3_lut_4_lut (.I0(tail[21]), .I1(tail[37]), 
            .I2(n29), .I3(n2515), .O(tailN[29]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i30_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_55__I_0_i29_3_lut_4_lut (.I0(tail[20]), .I1(tail[36]), 
            .I2(n29), .I3(n2515), .O(tailN[28]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i29_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFFE head_i0_i6 (.Q(c_stk_r[6]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(headN[6]));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_55__I_0_i28_3_lut_4_lut (.I0(tail[19]), .I1(tail[35]), 
            .I2(n29), .I3(n2515), .O(tailN[27]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i28_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFFE head_i0_i5 (.Q(c_stk_r[5]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(headN[5]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i4 (.Q(c_stk_r[4]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(headN[4]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i3 (.Q(c_stk_r[3]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(headN[3]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i2 (.Q(c_stk_r[2]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(headN[2]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i1 (.Q(c_stk_r[1]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(headN[1]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i55 (.Q(\tail[55] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[55] ));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_55__I_0_i27_3_lut_4_lut (.I0(tail[18]), .I1(tail[34]), 
            .I2(n29), .I3(n2515), .O(tailN[26]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i27_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFFE tail_i0_i54 (.Q(\tail[54] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[54] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i53 (.Q(\tail[53] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[53] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i52 (.Q(\tail[52] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[52] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i51 (.Q(\tail[51] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[51] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i50 (.Q(\tail[50] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[50] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i49 (.Q(\tail[49] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[49] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i48 (.Q(\tail[48] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[48] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i47 (.Q(\tail[47] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[47]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i46 (.Q(\tail[46] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[46]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i45 (.Q(\tail[45] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[45]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i44 (.Q(\tail[44] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[44]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i43 (.Q(\tail[43] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[43]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i42 (.Q(\tail[42] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[42]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i41 (.Q(\tail[41] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[41]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i40 (.Q(\tail[40] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[40]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i39 (.Q(tail[39]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[39] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i38 (.Q(tail[38]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[38] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i37 (.Q(tail[37]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[37] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i36 (.Q(tail[36]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[36] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i35 (.Q(tail[35]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[35] ));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_55__I_0_i26_3_lut_4_lut (.I0(tail[17]), .I1(tail[33]), 
            .I2(n29), .I3(n2515), .O(tailN[25]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i26_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFFE tail_i0_i34 (.Q(tail[34]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[34] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i33 (.Q(tail[33]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[33] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i32 (.Q(tail[32]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[32] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i31 (.Q(\tail[31] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[31]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i30 (.Q(\tail[30] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[30]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i29 (.Q(\tail[29] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[29]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i28 (.Q(\tail[28] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[28]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i27 (.Q(\tail[27] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[27]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i26 (.Q(\tail[26] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[26]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i25 (.Q(\tail[25] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[25]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i24 (.Q(\tail[24] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[24]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i23 (.Q(tail[23]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[23] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i22 (.Q(tail[22]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[22] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i21 (.Q(tail[21]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[21] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i20 (.Q(tail[20]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[20] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i19 (.Q(tail[19]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[19] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i18 (.Q(tail[18]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[18] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i17 (.Q(tail[17]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[17] ));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_55__I_0_i25_3_lut_4_lut (.I0(tail[16]), .I1(tail[32]), 
            .I2(n29), .I3(n2515), .O(tailN[24]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i25_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFFE tail_i0_i16 (.Q(tail[16]), .C(clk), .E(\C_stk_delta[0] ), 
            .D(\tailN[16] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i15 (.Q(\tail[15] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[15]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i14 (.Q(\tail[14] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[14]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i13 (.Q(\tail[13] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[13]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i12 (.Q(\tail[12] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[12]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i11 (.Q(\tail[11] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[11]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i10 (.Q(\tail[10] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[10]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i9 (.Q(\tail[9] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[9]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i8 (.Q(\tail[8] ), .C(clk), .E(\C_stk_delta[0] ), 
            .D(tailN[8]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i7 (.Q(tail[7]), .C(clk), .E(\C_stk_delta[0] ), .D(\tailN[7] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i6 (.Q(tail[6]), .C(clk), .E(\C_stk_delta[0] ), .D(\tailN[6] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i5 (.Q(tail[5]), .C(clk), .E(\C_stk_delta[0] ), .D(\tailN[5] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i4 (.Q(tail[4]), .C(clk), .E(\C_stk_delta[0] ), .D(\tailN[4] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i3 (.Q(tail[3]), .C(clk), .E(\C_stk_delta[0] ), .D(\tailN[3] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i2 (.Q(tail[2]), .C(clk), .E(\C_stk_delta[0] ), .D(\tailN[2] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i1 (.Q(tail[1]), .C(clk), .E(\C_stk_delta[0] ), .D(\tailN[1] ));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_55__I_0_i16_3_lut_4_lut (.I0(tail[7]), .I1(tail[23]), .I2(n29), 
            .I3(n2515), .O(tailN[15]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i16_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_55__I_0_i15_3_lut_4_lut (.I0(tail[6]), .I1(tail[22]), .I2(n29), 
            .I3(n2515), .O(tailN[14]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i15_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_55__I_0_i14_3_lut_4_lut (.I0(tail[5]), .I1(tail[21]), .I2(n29), 
            .I3(n2515), .O(tailN[13]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i14_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_55__I_0_i13_3_lut_4_lut (.I0(tail[4]), .I1(tail[20]), .I2(n29), 
            .I3(n2515), .O(tailN[12]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i13_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_55__I_0_i12_3_lut_4_lut (.I0(tail[3]), .I1(tail[19]), .I2(n29), 
            .I3(n2515), .O(tailN[11]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i12_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_55__I_0_i11_3_lut_4_lut (.I0(tail[2]), .I1(tail[18]), .I2(n29), 
            .I3(n2515), .O(tailN[10]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i11_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_55__I_0_i10_3_lut_4_lut (.I0(tail[1]), .I1(tail[17]), .I2(n29), 
            .I3(n2515), .O(tailN[9]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i10_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_55__I_0_i9_3_lut_4_lut (.I0(tail[0]), .I1(tail[16]), .I2(n29), 
            .I3(n2515), .O(tailN[8]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i9_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFF tail_i0_i60 (.Q(\tail[60] ), .C(clk), .D(n1255));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i61 (.Q(\tail[61] ), .C(clk), .D(n1254));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i62 (.Q(\tail[62] ), .C(clk), .D(n1253));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i63 (.Q(\tail[63] ), .C(clk), .D(n1252));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i56 (.Q(\tail[56] ), .C(clk), .D(n1197));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i57 (.Q(\tail[57] ), .C(clk), .D(n1196));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i58 (.Q(\tail[58] ), .C(clk), .D(n1195));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i59 (.Q(\tail[59] ), .C(clk), .D(n1182));   // ../stack.v(24[10] 29[6])
    SB_LUT4 i547_4_lut (.I0(n241), .I1(n11), .I2(n14), .I3(n11_adj_1), 
            .O(n602));
    defparam i547_4_lut.LUT_INIT = 16'ha8aa;
    SB_LUT4 i5283_3_lut (.I0(tail[0]), .I1(tc_plus_1[0]), .I2(n602), .I3(GND_net), 
            .O(n5456));
    defparam i5283_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5282_3_lut_4_lut (.I0(n241), .I1(n15), .I2(tc[1]), .I3(n5453), 
            .O(headN[1]));
    defparam i5282_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i5279_3_lut_4_lut (.I0(n241), .I1(n15), .I2(tc[2]), .I3(n5450), 
            .O(headN[2]));
    defparam i5279_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i5276_3_lut_4_lut (.I0(n241), .I1(n15), .I2(tc[3]), .I3(n5447), 
            .O(headN[3]));
    defparam i5276_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i5273_3_lut_4_lut (.I0(n241), .I1(n15), .I2(tc[4]), .I3(n5444), 
            .O(headN[4]));
    defparam i5273_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i5270_3_lut_4_lut (.I0(n241), .I1(n15), .I2(tc[5]), .I3(n5441), 
            .O(headN[5]));
    defparam i5270_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i5267_3_lut_4_lut (.I0(n241), .I1(n15), .I2(tc[6]), .I3(n5438), 
            .O(headN[6]));
    defparam i5267_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i5280_3_lut (.I0(tail[1]), .I1(tc_plus_1[1]), .I2(n602), .I3(GND_net), 
            .O(n5453));
    defparam i5280_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5264_3_lut_4_lut (.I0(n241), .I1(n15), .I2(tc[7]), .I3(n5435), 
            .O(headN[7]));
    defparam i5264_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i5277_3_lut (.I0(tail[2]), .I1(tc_plus_1[2]), .I2(n602), .I3(GND_net), 
            .O(n5450));
    defparam i5277_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5274_3_lut (.I0(tail[3]), .I1(tc_plus_1[3]), .I2(n602), .I3(GND_net), 
            .O(n5447));
    defparam i5274_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5271_3_lut (.I0(tail[4]), .I1(tc_plus_1[4]), .I2(n602), .I3(GND_net), 
            .O(n5444));
    defparam i5271_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5285_3_lut_4_lut (.I0(n241), .I1(n15), .I2(tc[0]), .I3(n5456), 
            .O(headN[0]));
    defparam i5285_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i5268_3_lut (.I0(tail[5]), .I1(tc_plus_1[5]), .I2(n602), .I3(GND_net), 
            .O(n5441));
    defparam i5268_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5265_3_lut (.I0(tail[6]), .I1(tc_plus_1[6]), .I2(n602), .I3(GND_net), 
            .O(n5438));
    defparam i5265_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5262_3_lut (.I0(tail[7]), .I1(tc_plus_1[7]), .I2(n602), .I3(GND_net), 
            .O(n5435));
    defparam i5262_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_55__I_0_i48_3_lut_4_lut (.I0(tail[39]), .I1(\tail[55] ), 
            .I2(n29), .I3(n2515), .O(tailN[47]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i48_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_55__I_0_i47_3_lut_4_lut (.I0(tail[38]), .I1(\tail[54] ), 
            .I2(n29), .I3(n2515), .O(tailN[46]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i47_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_55__I_0_i46_3_lut_4_lut (.I0(tail[37]), .I1(\tail[53] ), 
            .I2(n29), .I3(n2515), .O(tailN[45]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i46_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_55__I_0_i45_3_lut_4_lut (.I0(tail[36]), .I1(\tail[52] ), 
            .I2(n29), .I3(n2515), .O(tailN[44]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i45_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_55__I_0_i44_3_lut_4_lut (.I0(tail[35]), .I1(\tail[51] ), 
            .I2(n29), .I3(n2515), .O(tailN[43]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i44_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_55__I_0_i43_3_lut_4_lut (.I0(tail[34]), .I1(\tail[50] ), 
            .I2(n29), .I3(n2515), .O(tailN[42]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i43_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_55__I_0_i42_3_lut_4_lut (.I0(tail[33]), .I1(\tail[49] ), 
            .I2(n29), .I3(n2515), .O(tailN[41]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i42_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_55__I_0_i41_3_lut_4_lut (.I0(tail[32]), .I1(\tail[48] ), 
            .I2(n29), .I3(n2515), .O(tailN[40]));   // ../stack.v(21[18:91])
    defparam tail_55__I_0_i41_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    
endmodule
//
// Verilog Description of module \STACK(WIDTH=16) 
//

module \STACK(WIDTH=16)  (rd_15__N_301, clk, S, \tail[96] , \tail[97] , 
            \tail[98] , \tail[99] , \tail[100] , \tail[101] , \tail[102] , 
            \tail[103] , \tail[104] , \tail[105] , \tail[106] , \tail[107] , 
            \tail[108] , \tail[109] , \tail[110] , \tail[111] , A_low, 
            n238, GND_net, \A[15] , \A[14] , \A_stk_delta[1] , \A[13] , 
            \A[12] , \A[11] , \A[10] , \A[9] , \A[8] , n1207, \tail[127] , 
            n1210, \tail[126] , n1213, \tail[125] , n1216, \tail[124] , 
            n1219, \tail[123] , n1222, \tail[122] , n1225, \tail[121] , 
            n1235, \tail[120] , n1130, \tail[119] , n1133, \tail[118] , 
            n1136, \tail[117] , n1139, \tail[116] , n1142, \tail[115] , 
            n1145, \tail[114] , n1148, \tail[113] , n1151, \tail[112] ) /* synthesis syn_module_defined=1 */ ;
    input rd_15__N_301;
    input clk;
    output [15:0]S;
    output \tail[96] ;
    output \tail[97] ;
    output \tail[98] ;
    output \tail[99] ;
    output \tail[100] ;
    output \tail[101] ;
    output \tail[102] ;
    output \tail[103] ;
    output \tail[104] ;
    output \tail[105] ;
    output \tail[106] ;
    output \tail[107] ;
    output \tail[108] ;
    output \tail[109] ;
    output \tail[110] ;
    output \tail[111] ;
    input [7:0]A_low;
    input n238;
    input GND_net;
    input \A[15] ;
    input \A[14] ;
    input \A_stk_delta[1] ;
    input \A[13] ;
    input \A[12] ;
    input \A[11] ;
    input \A[10] ;
    input \A[9] ;
    input \A[8] ;
    input n1207;
    output \tail[127] ;
    input n1210;
    output \tail[126] ;
    input n1213;
    output \tail[125] ;
    input n1216;
    output \tail[124] ;
    input n1219;
    output \tail[123] ;
    input n1222;
    output \tail[122] ;
    input n1225;
    output \tail[121] ;
    input n1235;
    output \tail[120] ;
    input n1130;
    output \tail[119] ;
    input n1133;
    output \tail[118] ;
    input n1136;
    output \tail[117] ;
    input n1139;
    output \tail[116] ;
    input n1142;
    output \tail[115] ;
    input n1145;
    output \tail[114] ;
    input n1148;
    output \tail[113] ;
    input n1151;
    output \tail[112] ;
    
    wire clk /* synthesis is_clock=1 */ ;   // ../lattice_top.v(10[6:9])
    wire [127:0]tailN;   // ../stack.v(18[17:22])
    wire [127:0]tail;   // ../stack.v(16[16:20])
    wire [15:0]headN;   // ../stack.v(17[20:25])
    
    SB_DFFE tail_i0_i0 (.Q(tail[0]), .C(clk), .E(rd_15__N_301), .D(tailN[0]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i0 (.Q(S[0]), .C(clk), .E(rd_15__N_301), .D(headN[0]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i57 (.Q(tail[57]), .C(clk), .E(rd_15__N_301), .D(tailN[57]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i56 (.Q(tail[56]), .C(clk), .E(rd_15__N_301), .D(tailN[56]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i55 (.Q(tail[55]), .C(clk), .E(rd_15__N_301), .D(tailN[55]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i54 (.Q(tail[54]), .C(clk), .E(rd_15__N_301), .D(tailN[54]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i53 (.Q(tail[53]), .C(clk), .E(rd_15__N_301), .D(tailN[53]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i52 (.Q(tail[52]), .C(clk), .E(rd_15__N_301), .D(tailN[52]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i51 (.Q(tail[51]), .C(clk), .E(rd_15__N_301), .D(tailN[51]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i50 (.Q(tail[50]), .C(clk), .E(rd_15__N_301), .D(tailN[50]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i49 (.Q(tail[49]), .C(clk), .E(rd_15__N_301), .D(tailN[49]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i48 (.Q(tail[48]), .C(clk), .E(rd_15__N_301), .D(tailN[48]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i47 (.Q(tail[47]), .C(clk), .E(rd_15__N_301), .D(tailN[47]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i46 (.Q(tail[46]), .C(clk), .E(rd_15__N_301), .D(tailN[46]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i45 (.Q(tail[45]), .C(clk), .E(rd_15__N_301), .D(tailN[45]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i44 (.Q(tail[44]), .C(clk), .E(rd_15__N_301), .D(tailN[44]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i43 (.Q(tail[43]), .C(clk), .E(rd_15__N_301), .D(tailN[43]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i42 (.Q(tail[42]), .C(clk), .E(rd_15__N_301), .D(tailN[42]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i41 (.Q(tail[41]), .C(clk), .E(rd_15__N_301), .D(tailN[41]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i40 (.Q(tail[40]), .C(clk), .E(rd_15__N_301), .D(tailN[40]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i39 (.Q(tail[39]), .C(clk), .E(rd_15__N_301), .D(tailN[39]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i38 (.Q(tail[38]), .C(clk), .E(rd_15__N_301), .D(tailN[38]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i37 (.Q(tail[37]), .C(clk), .E(rd_15__N_301), .D(tailN[37]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i36 (.Q(tail[36]), .C(clk), .E(rd_15__N_301), .D(tailN[36]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i35 (.Q(tail[35]), .C(clk), .E(rd_15__N_301), .D(tailN[35]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i34 (.Q(tail[34]), .C(clk), .E(rd_15__N_301), .D(tailN[34]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i33 (.Q(tail[33]), .C(clk), .E(rd_15__N_301), .D(tailN[33]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i32 (.Q(tail[32]), .C(clk), .E(rd_15__N_301), .D(tailN[32]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i31 (.Q(tail[31]), .C(clk), .E(rd_15__N_301), .D(tailN[31]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i30 (.Q(tail[30]), .C(clk), .E(rd_15__N_301), .D(tailN[30]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i29 (.Q(tail[29]), .C(clk), .E(rd_15__N_301), .D(tailN[29]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i28 (.Q(tail[28]), .C(clk), .E(rd_15__N_301), .D(tailN[28]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i27 (.Q(tail[27]), .C(clk), .E(rd_15__N_301), .D(tailN[27]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i26 (.Q(tail[26]), .C(clk), .E(rd_15__N_301), .D(tailN[26]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i25 (.Q(tail[25]), .C(clk), .E(rd_15__N_301), .D(tailN[25]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i24 (.Q(tail[24]), .C(clk), .E(rd_15__N_301), .D(tailN[24]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i23 (.Q(tail[23]), .C(clk), .E(rd_15__N_301), .D(tailN[23]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i22 (.Q(tail[22]), .C(clk), .E(rd_15__N_301), .D(tailN[22]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i21 (.Q(tail[21]), .C(clk), .E(rd_15__N_301), .D(tailN[21]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i20 (.Q(tail[20]), .C(clk), .E(rd_15__N_301), .D(tailN[20]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i19 (.Q(tail[19]), .C(clk), .E(rd_15__N_301), .D(tailN[19]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i18 (.Q(tail[18]), .C(clk), .E(rd_15__N_301), .D(tailN[18]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i17 (.Q(tail[17]), .C(clk), .E(rd_15__N_301), .D(tailN[17]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i16 (.Q(tail[16]), .C(clk), .E(rd_15__N_301), .D(tailN[16]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i15 (.Q(tail[15]), .C(clk), .E(rd_15__N_301), .D(tailN[15]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i14 (.Q(tail[14]), .C(clk), .E(rd_15__N_301), .D(tailN[14]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i13 (.Q(tail[13]), .C(clk), .E(rd_15__N_301), .D(tailN[13]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i12 (.Q(tail[12]), .C(clk), .E(rd_15__N_301), .D(tailN[12]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i11 (.Q(tail[11]), .C(clk), .E(rd_15__N_301), .D(tailN[11]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i10 (.Q(tail[10]), .C(clk), .E(rd_15__N_301), .D(tailN[10]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i9 (.Q(tail[9]), .C(clk), .E(rd_15__N_301), .D(tailN[9]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i8 (.Q(tail[8]), .C(clk), .E(rd_15__N_301), .D(tailN[8]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i7 (.Q(tail[7]), .C(clk), .E(rd_15__N_301), .D(tailN[7]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i6 (.Q(tail[6]), .C(clk), .E(rd_15__N_301), .D(tailN[6]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i5 (.Q(tail[5]), .C(clk), .E(rd_15__N_301), .D(tailN[5]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i4 (.Q(tail[4]), .C(clk), .E(rd_15__N_301), .D(tailN[4]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i3 (.Q(tail[3]), .C(clk), .E(rd_15__N_301), .D(tailN[3]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i2 (.Q(tail[2]), .C(clk), .E(rd_15__N_301), .D(tailN[2]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i1 (.Q(tail[1]), .C(clk), .E(rd_15__N_301), .D(tailN[1]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i58 (.Q(tail[58]), .C(clk), .E(rd_15__N_301), .D(tailN[58]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i59 (.Q(tail[59]), .C(clk), .E(rd_15__N_301), .D(tailN[59]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i60 (.Q(tail[60]), .C(clk), .E(rd_15__N_301), .D(tailN[60]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i61 (.Q(tail[61]), .C(clk), .E(rd_15__N_301), .D(tailN[61]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i62 (.Q(tail[62]), .C(clk), .E(rd_15__N_301), .D(tailN[62]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i63 (.Q(tail[63]), .C(clk), .E(rd_15__N_301), .D(tailN[63]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i64 (.Q(tail[64]), .C(clk), .E(rd_15__N_301), .D(tailN[64]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i65 (.Q(tail[65]), .C(clk), .E(rd_15__N_301), .D(tailN[65]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i66 (.Q(tail[66]), .C(clk), .E(rd_15__N_301), .D(tailN[66]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i67 (.Q(tail[67]), .C(clk), .E(rd_15__N_301), .D(tailN[67]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i68 (.Q(tail[68]), .C(clk), .E(rd_15__N_301), .D(tailN[68]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i69 (.Q(tail[69]), .C(clk), .E(rd_15__N_301), .D(tailN[69]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i70 (.Q(tail[70]), .C(clk), .E(rd_15__N_301), .D(tailN[70]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i71 (.Q(tail[71]), .C(clk), .E(rd_15__N_301), .D(tailN[71]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i72 (.Q(tail[72]), .C(clk), .E(rd_15__N_301), .D(tailN[72]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i73 (.Q(tail[73]), .C(clk), .E(rd_15__N_301), .D(tailN[73]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i74 (.Q(tail[74]), .C(clk), .E(rd_15__N_301), .D(tailN[74]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i75 (.Q(tail[75]), .C(clk), .E(rd_15__N_301), .D(tailN[75]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i76 (.Q(tail[76]), .C(clk), .E(rd_15__N_301), .D(tailN[76]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i77 (.Q(tail[77]), .C(clk), .E(rd_15__N_301), .D(tailN[77]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i78 (.Q(tail[78]), .C(clk), .E(rd_15__N_301), .D(tailN[78]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i79 (.Q(tail[79]), .C(clk), .E(rd_15__N_301), .D(tailN[79]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i80 (.Q(tail[80]), .C(clk), .E(rd_15__N_301), .D(tailN[80]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i81 (.Q(tail[81]), .C(clk), .E(rd_15__N_301), .D(tailN[81]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i82 (.Q(tail[82]), .C(clk), .E(rd_15__N_301), .D(tailN[82]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i83 (.Q(tail[83]), .C(clk), .E(rd_15__N_301), .D(tailN[83]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i84 (.Q(tail[84]), .C(clk), .E(rd_15__N_301), .D(tailN[84]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i85 (.Q(tail[85]), .C(clk), .E(rd_15__N_301), .D(tailN[85]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i86 (.Q(tail[86]), .C(clk), .E(rd_15__N_301), .D(tailN[86]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i87 (.Q(tail[87]), .C(clk), .E(rd_15__N_301), .D(tailN[87]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i88 (.Q(tail[88]), .C(clk), .E(rd_15__N_301), .D(tailN[88]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i89 (.Q(tail[89]), .C(clk), .E(rd_15__N_301), .D(tailN[89]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i90 (.Q(tail[90]), .C(clk), .E(rd_15__N_301), .D(tailN[90]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i91 (.Q(tail[91]), .C(clk), .E(rd_15__N_301), .D(tailN[91]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i92 (.Q(tail[92]), .C(clk), .E(rd_15__N_301), .D(tailN[92]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i93 (.Q(tail[93]), .C(clk), .E(rd_15__N_301), .D(tailN[93]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i94 (.Q(tail[94]), .C(clk), .E(rd_15__N_301), .D(tailN[94]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i95 (.Q(tail[95]), .C(clk), .E(rd_15__N_301), .D(tailN[95]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i96 (.Q(\tail[96] ), .C(clk), .E(rd_15__N_301), .D(tailN[96]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i97 (.Q(\tail[97] ), .C(clk), .E(rd_15__N_301), .D(tailN[97]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i98 (.Q(\tail[98] ), .C(clk), .E(rd_15__N_301), .D(tailN[98]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i99 (.Q(\tail[99] ), .C(clk), .E(rd_15__N_301), .D(tailN[99]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i100 (.Q(\tail[100] ), .C(clk), .E(rd_15__N_301), 
            .D(tailN[100]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i101 (.Q(\tail[101] ), .C(clk), .E(rd_15__N_301), 
            .D(tailN[101]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i102 (.Q(\tail[102] ), .C(clk), .E(rd_15__N_301), 
            .D(tailN[102]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i103 (.Q(\tail[103] ), .C(clk), .E(rd_15__N_301), 
            .D(tailN[103]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i104 (.Q(\tail[104] ), .C(clk), .E(rd_15__N_301), 
            .D(tailN[104]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i105 (.Q(\tail[105] ), .C(clk), .E(rd_15__N_301), 
            .D(tailN[105]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i106 (.Q(\tail[106] ), .C(clk), .E(rd_15__N_301), 
            .D(tailN[106]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i107 (.Q(\tail[107] ), .C(clk), .E(rd_15__N_301), 
            .D(tailN[107]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i108 (.Q(\tail[108] ), .C(clk), .E(rd_15__N_301), 
            .D(tailN[108]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i109 (.Q(\tail[109] ), .C(clk), .E(rd_15__N_301), 
            .D(tailN[109]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i110 (.Q(\tail[110] ), .C(clk), .E(rd_15__N_301), 
            .D(tailN[110]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i111 (.Q(\tail[111] ), .C(clk), .E(rd_15__N_301), 
            .D(tailN[111]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i1 (.Q(S[1]), .C(clk), .E(rd_15__N_301), .D(headN[1]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i2 (.Q(S[2]), .C(clk), .E(rd_15__N_301), .D(headN[2]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i3 (.Q(S[3]), .C(clk), .E(rd_15__N_301), .D(headN[3]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i4 (.Q(S[4]), .C(clk), .E(rd_15__N_301), .D(headN[4]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i5 (.Q(S[5]), .C(clk), .E(rd_15__N_301), .D(headN[5]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i6 (.Q(S[6]), .C(clk), .E(rd_15__N_301), .D(headN[6]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i7 (.Q(S[7]), .C(clk), .E(rd_15__N_301), .D(headN[7]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i8 (.Q(S[8]), .C(clk), .E(rd_15__N_301), .D(headN[8]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i9 (.Q(S[9]), .C(clk), .E(rd_15__N_301), .D(headN[9]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i10 (.Q(S[10]), .C(clk), .E(rd_15__N_301), .D(headN[10]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i11 (.Q(S[11]), .C(clk), .E(rd_15__N_301), .D(headN[11]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i12 (.Q(S[12]), .C(clk), .E(rd_15__N_301), .D(headN[12]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i13 (.Q(S[13]), .C(clk), .E(rd_15__N_301), .D(headN[13]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i14 (.Q(S[14]), .C(clk), .E(rd_15__N_301), .D(headN[14]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i15 (.Q(S[15]), .C(clk), .E(rd_15__N_301), .D(headN[15]));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_15__I_0_i1_3_lut (.I0(tail[0]), .I1(A_low[0]), .I2(n238), 
            .I3(GND_net), .O(headN[0]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i16_3_lut (.I0(tail[15]), .I1(\A[15] ), .I2(n238), 
            .I3(GND_net), .O(headN[15]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i15_3_lut (.I0(tail[14]), .I1(\A[14] ), .I2(n238), 
            .I3(GND_net), .O(headN[14]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i15_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i1_3_lut (.I0(S[0]), .I1(tail[16]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[0]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i14_3_lut (.I0(tail[13]), .I1(\A[13] ), .I2(n238), 
            .I3(GND_net), .O(headN[13]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i14_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i13_3_lut (.I0(tail[12]), .I1(\A[12] ), .I2(n238), 
            .I3(GND_net), .O(headN[12]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i13_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i12_3_lut (.I0(tail[11]), .I1(\A[11] ), .I2(n238), 
            .I3(GND_net), .O(headN[11]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i12_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i11_3_lut (.I0(tail[10]), .I1(\A[10] ), .I2(n238), 
            .I3(GND_net), .O(headN[10]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i10_3_lut (.I0(tail[9]), .I1(\A[9] ), .I2(n238), 
            .I3(GND_net), .O(headN[9]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i10_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i9_3_lut (.I0(tail[8]), .I1(\A[8] ), .I2(n238), 
            .I3(GND_net), .O(headN[8]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i9_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i8_3_lut (.I0(tail[7]), .I1(A_low[7]), .I2(n238), 
            .I3(GND_net), .O(headN[7]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i7_3_lut (.I0(tail[6]), .I1(A_low[6]), .I2(n238), 
            .I3(GND_net), .O(headN[6]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF tail_i0_i127 (.Q(\tail[127] ), .C(clk), .D(n1207));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i126 (.Q(\tail[126] ), .C(clk), .D(n1210));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i125 (.Q(\tail[125] ), .C(clk), .D(n1213));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i124 (.Q(\tail[124] ), .C(clk), .D(n1216));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i123 (.Q(\tail[123] ), .C(clk), .D(n1219));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i122 (.Q(\tail[122] ), .C(clk), .D(n1222));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i121 (.Q(\tail[121] ), .C(clk), .D(n1225));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i120 (.Q(\tail[120] ), .C(clk), .D(n1235));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i119 (.Q(\tail[119] ), .C(clk), .D(n1130));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i118 (.Q(\tail[118] ), .C(clk), .D(n1133));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_15__I_0_i6_3_lut (.I0(tail[5]), .I1(A_low[5]), .I2(n238), 
            .I3(GND_net), .O(headN[5]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF tail_i0_i117 (.Q(\tail[117] ), .C(clk), .D(n1136));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i116 (.Q(\tail[116] ), .C(clk), .D(n1139));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i115 (.Q(\tail[115] ), .C(clk), .D(n1142));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i114 (.Q(\tail[114] ), .C(clk), .D(n1145));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i113 (.Q(\tail[113] ), .C(clk), .D(n1148));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_15__I_0_i5_3_lut (.I0(tail[4]), .I1(A_low[4]), .I2(n238), 
            .I3(GND_net), .O(headN[4]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i4_3_lut (.I0(tail[3]), .I1(A_low[3]), .I2(n238), 
            .I3(GND_net), .O(headN[3]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i3_3_lut (.I0(tail[2]), .I1(A_low[2]), .I2(n238), 
            .I3(GND_net), .O(headN[2]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i2_3_lut (.I0(tail[1]), .I1(A_low[1]), .I2(n238), 
            .I3(GND_net), .O(headN[1]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i112_3_lut (.I0(tail[95]), .I1(\tail[127] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[111]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i112_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i111_3_lut (.I0(tail[94]), .I1(\tail[126] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[110]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i111_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF tail_i0_i112 (.Q(\tail[112] ), .C(clk), .D(n1151));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_111__I_0_i110_3_lut (.I0(tail[93]), .I1(\tail[125] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[109]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i110_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i109_3_lut (.I0(tail[92]), .I1(\tail[124] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[108]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i109_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i108_3_lut (.I0(tail[91]), .I1(\tail[123] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[107]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i108_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i107_3_lut (.I0(tail[90]), .I1(\tail[122] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[106]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i107_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i106_3_lut (.I0(tail[89]), .I1(\tail[121] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[105]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i106_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i105_3_lut (.I0(tail[88]), .I1(\tail[120] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[104]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i105_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i104_3_lut (.I0(tail[87]), .I1(\tail[119] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[103]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i104_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i103_3_lut (.I0(tail[86]), .I1(\tail[118] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[102]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i103_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i102_3_lut (.I0(tail[85]), .I1(\tail[117] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[101]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i102_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i101_3_lut (.I0(tail[84]), .I1(\tail[116] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[100]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i101_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i100_3_lut (.I0(tail[83]), .I1(\tail[115] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[99]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i100_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i99_3_lut (.I0(tail[82]), .I1(\tail[114] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[98]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i99_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i98_3_lut (.I0(tail[81]), .I1(\tail[113] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[97]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i98_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i97_3_lut (.I0(tail[80]), .I1(\tail[112] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[96]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i97_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i96_3_lut (.I0(tail[79]), .I1(\tail[111] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[95]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i96_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i95_3_lut (.I0(tail[78]), .I1(\tail[110] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[94]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i95_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i94_3_lut (.I0(tail[77]), .I1(\tail[109] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[93]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i94_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i93_3_lut (.I0(tail[76]), .I1(\tail[108] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[92]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i93_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i92_3_lut (.I0(tail[75]), .I1(\tail[107] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[91]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i92_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i91_3_lut (.I0(tail[74]), .I1(\tail[106] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[90]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i91_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i90_3_lut (.I0(tail[73]), .I1(\tail[105] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[89]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i90_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i89_3_lut (.I0(tail[72]), .I1(\tail[104] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[88]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i89_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i88_3_lut (.I0(tail[71]), .I1(\tail[103] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[87]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i88_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i87_3_lut (.I0(tail[70]), .I1(\tail[102] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[86]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i87_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i86_3_lut (.I0(tail[69]), .I1(\tail[101] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[85]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i86_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i85_3_lut (.I0(tail[68]), .I1(\tail[100] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[84]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i85_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i84_3_lut (.I0(tail[67]), .I1(\tail[99] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[83]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i84_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i83_3_lut (.I0(tail[66]), .I1(\tail[98] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[82]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i83_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i82_3_lut (.I0(tail[65]), .I1(\tail[97] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[81]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i82_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i81_3_lut (.I0(tail[64]), .I1(\tail[96] ), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[80]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i81_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i80_3_lut (.I0(tail[63]), .I1(tail[95]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[79]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i80_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i79_3_lut (.I0(tail[62]), .I1(tail[94]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[78]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i79_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i78_3_lut (.I0(tail[61]), .I1(tail[93]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[77]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i78_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i77_3_lut (.I0(tail[60]), .I1(tail[92]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[76]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i77_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i76_3_lut (.I0(tail[59]), .I1(tail[91]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[75]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i76_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i75_3_lut (.I0(tail[58]), .I1(tail[90]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[74]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i75_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i74_3_lut (.I0(tail[57]), .I1(tail[89]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[73]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i74_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i73_3_lut (.I0(tail[56]), .I1(tail[88]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[72]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i73_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i72_3_lut (.I0(tail[55]), .I1(tail[87]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[71]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i72_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i71_3_lut (.I0(tail[54]), .I1(tail[86]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[70]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i71_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i70_3_lut (.I0(tail[53]), .I1(tail[85]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[69]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i70_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i69_3_lut (.I0(tail[52]), .I1(tail[84]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[68]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i69_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i68_3_lut (.I0(tail[51]), .I1(tail[83]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[67]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i68_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i67_3_lut (.I0(tail[50]), .I1(tail[82]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[66]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i67_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i66_3_lut (.I0(tail[49]), .I1(tail[81]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[65]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i66_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i65_3_lut (.I0(tail[48]), .I1(tail[80]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[64]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i65_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i64_3_lut (.I0(tail[47]), .I1(tail[79]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[63]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i64_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i63_3_lut (.I0(tail[46]), .I1(tail[78]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[62]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i63_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i62_3_lut (.I0(tail[45]), .I1(tail[77]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[61]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i62_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i61_3_lut (.I0(tail[44]), .I1(tail[76]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[60]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i61_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i60_3_lut (.I0(tail[43]), .I1(tail[75]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[59]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i60_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i59_3_lut (.I0(tail[42]), .I1(tail[74]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[58]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i59_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i2_3_lut (.I0(S[1]), .I1(tail[17]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[1]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i2_3_lut.LUT_INIT = 16'hcaca;
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
    SB_LUT4 tail_111__I_0_i33_3_lut (.I0(tail[16]), .I1(tail[48]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[32]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i33_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i34_3_lut (.I0(tail[17]), .I1(tail[49]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[33]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i34_3_lut.LUT_INIT = 16'hcaca;
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
    SB_LUT4 tail_111__I_0_i56_3_lut (.I0(tail[39]), .I1(tail[71]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[55]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i56_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i57_3_lut (.I0(tail[40]), .I1(tail[72]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[56]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i57_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i58_3_lut (.I0(tail[41]), .I1(tail[73]), .I2(\A_stk_delta[1] ), 
            .I3(GND_net), .O(tailN[57]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i58_3_lut.LUT_INIT = 16'hcaca;
    
endmodule
