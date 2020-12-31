// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Thu Dec 31 10:48:41 2020
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
    
    wire stall_;
    wire [7:0]c_stk_w_7__N_18;
    
    wire n786, n92, n4005, n1122;
    wire [127:0]tail;   // ../stack.v(16[16:20])
    
    wire n1119, n1116, n1115, n1114, n1102;
    wire [9:0]capture;   // ../uart.v(45[11:18])
    
    wire n940, txtick;
    wire [9:0]sender;   // ../uart.v(64[11:17])
    
    wire n29, bytephase_5__N_510, rx_data_7__N_511, n92_adj_870, n92_adj_871, 
        n92_adj_872, n1090, n10, n10_adj_873, n1194, n1193, n1192, 
        n1191, n1190, n1189, n1180, n1179, n1176, n1173, n1169, 
        n1166, n1163, n795, n1158, n1155, n1152, n1149, n1147, 
        n1146, n1145, n1144, n1143, n1140, n1139, n1138, n1137, 
        n1136, n1135, n1134, n1133, n1132, n1131, n1130, n1129, 
        n1126, n23, VCC_net, n10_adj_874, n10_adj_875, n4178;
    
    GND i1 (.Y(GND_net));
    SB_HFOSC OSCInst0 (.CLKHFPU(VCC_net), .CLKHFEN(VCC_net), .CLKHF(clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCInst0.CLKHF_DIV = "0b01";
    SB_IO reset_pad (.PACKAGE_PIN(reset), .OUTPUT_ENABLE(VCC_net), .D_IN_0(reset_c));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam reset_pad.PIN_TYPE = 6'b000001;
    defparam reset_pad.PULLUP = 1'b0;
    defparam reset_pad.NEG_TRIGGER = 1'b0;
    defparam reset_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO rx_pad (.PACKAGE_PIN(rx), .OUTPUT_ENABLE(VCC_net), .D_IN_0(rx_c));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam rx_pad.PIN_TYPE = 6'b000001;
    defparam rx_pad.PULLUP = 1'b0;
    defparam rx_pad.NEG_TRIGGER = 1'b0;
    defparam rx_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO tx_pad (.PACKAGE_PIN(tx), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(tx_c));   // C:/lscc/iCEcube2.2017.08/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam tx_pad.PIN_TYPE = 6'b011001;
    defparam tx_pad.PULLUP = 1'b0;
    defparam tx_pad.NEG_TRIGGER = 1'b0;
    defparam tx_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i1055_4_lut_4_lut (.I0(n29), .I1(n786), .I2(tail[116]), .I3(tail[100]), 
            .O(n1122));   // ../stack.v(24[10] 29[6])
    defparam i1055_4_lut_4_lut.LUT_INIT = 16'h7340;
    SB_LUT4 i1059_4_lut_4_lut (.I0(n29), .I1(n786), .I2(tail[115]), .I3(tail[99]), 
            .O(n1126));   // ../stack.v(24[10] 29[6])
    defparam i1059_4_lut_4_lut.LUT_INIT = 16'h7340;
    SB_LUT4 i1062_4_lut_4_lut (.I0(n29), .I1(n786), .I2(tail[114]), .I3(tail[98]), 
            .O(n1129));   // ../stack.v(24[10] 29[6])
    defparam i1062_4_lut_4_lut.LUT_INIT = 16'h7340;
    SB_LUT4 i1076_4_lut_4_lut (.I0(n29), .I1(n786), .I2(tail[113]), .I3(tail[97]), 
            .O(n1143));   // ../stack.v(24[10] 29[6])
    defparam i1076_4_lut_4_lut.LUT_INIT = 16'h7340;
    SB_LUT4 i1085_4_lut_4_lut (.I0(n29), .I1(n786), .I2(tail[123]), .I3(tail[107]), 
            .O(n1152));   // ../stack.v(24[10] 29[6])
    defparam i1085_4_lut_4_lut.LUT_INIT = 16'h7340;
    SB_LUT4 i1088_4_lut_4_lut (.I0(n29), .I1(n786), .I2(tail[112]), .I3(tail[96]), 
            .O(n1155));   // ../stack.v(24[10] 29[6])
    defparam i1088_4_lut_4_lut.LUT_INIT = 16'h7340;
    SB_LUT4 i1091_4_lut_4_lut (.I0(n29), .I1(n786), .I2(tail[122]), .I3(tail[106]), 
            .O(n1158));   // ../stack.v(24[10] 29[6])
    defparam i1091_4_lut_4_lut.LUT_INIT = 16'h7340;
    SB_LUT4 i1096_4_lut_4_lut (.I0(n29), .I1(n786), .I2(tail[121]), .I3(tail[105]), 
            .O(n1163));   // ../stack.v(24[10] 29[6])
    defparam i1096_4_lut_4_lut.LUT_INIT = 16'h7340;
    SB_LUT4 i1099_4_lut_4_lut (.I0(n29), .I1(n786), .I2(tail[120]), .I3(tail[104]), 
            .O(n1166));   // ../stack.v(24[10] 29[6])
    defparam i1099_4_lut_4_lut.LUT_INIT = 16'h7340;
    SB_LUT4 i1102_4_lut_4_lut (.I0(n29), .I1(n786), .I2(tail[119]), .I3(tail[103]), 
            .O(n1169));   // ../stack.v(24[10] 29[6])
    defparam i1102_4_lut_4_lut.LUT_INIT = 16'h7340;
    SB_LUT4 i1106_4_lut_4_lut (.I0(n23), .I1(sender[1]), .I2(sender[2]), 
            .I3(txtick), .O(n1173));   // ../uart.v(66[8:100])
    defparam i1106_4_lut_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1109_4_lut_4_lut (.I0(n29), .I1(n786), .I2(tail[118]), .I3(tail[102]), 
            .O(n1176));   // ../stack.v(24[10] 29[6])
    defparam i1109_4_lut_4_lut.LUT_INIT = 16'h7340;
    SB_LUT4 i1112_4_lut_4_lut (.I0(n29), .I1(n786), .I2(tail[127]), .I3(tail[111]), 
            .O(n1179));   // ../stack.v(24[10] 29[6])
    defparam i1112_4_lut_4_lut.LUT_INIT = 16'h7340;
    SB_LUT4 i1023_4_lut_4_lut (.I0(n29), .I1(n786), .I2(tail[126]), .I3(tail[110]), 
            .O(n1090));   // ../stack.v(24[10] 29[6])
    defparam i1023_4_lut_4_lut.LUT_INIT = 16'h7340;
    SB_LUT4 i1035_4_lut_4_lut (.I0(n29), .I1(n786), .I2(tail[125]), .I3(tail[109]), 
            .O(n1102));   // ../stack.v(24[10] 29[6])
    defparam i1035_4_lut_4_lut.LUT_INIT = 16'h7340;
    SB_LUT4 i1047_4_lut_4_lut (.I0(n29), .I1(n786), .I2(tail[124]), .I3(tail[108]), 
            .O(n1114));   // ../stack.v(24[10] 29[6])
    defparam i1047_4_lut_4_lut.LUT_INIT = 16'h7340;
    SB_LUT4 i1052_4_lut_4_lut (.I0(n29), .I1(n786), .I2(tail[117]), .I3(tail[101]), 
            .O(n1119));   // ../stack.v(24[10] 29[6])
    defparam i1052_4_lut_4_lut.LUT_INIT = 16'h7340;
    SB_LUT4 i25_3_lut (.I0(c_stk_w_7__N_18[0]), .I1(n10_adj_875), .I2(stall_), 
            .I3(GND_net), .O(n4178));   // ../tok.v(160[10] 167[10])
    defparam i25_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1063_3_lut (.I0(uart_rx_data[7]), .I1(capture[8]), .I2(rx_data_7__N_511), 
            .I3(GND_net), .O(n1130));   // ../uart.v(50[8] 55[4])
    defparam i1063_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1064_3_lut (.I0(uart_rx_data[6]), .I1(capture[7]), .I2(rx_data_7__N_511), 
            .I3(GND_net), .O(n1131));   // ../uart.v(50[8] 55[4])
    defparam i1064_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1065_3_lut (.I0(uart_rx_data[5]), .I1(capture[6]), .I2(rx_data_7__N_511), 
            .I3(GND_net), .O(n1132));   // ../uart.v(50[8] 55[4])
    defparam i1065_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1066_3_lut (.I0(uart_rx_data[4]), .I1(capture[5]), .I2(rx_data_7__N_511), 
            .I3(GND_net), .O(n1133));   // ../uart.v(50[8] 55[4])
    defparam i1066_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1067_3_lut (.I0(uart_rx_data[3]), .I1(capture[4]), .I2(rx_data_7__N_511), 
            .I3(GND_net), .O(n1134));   // ../uart.v(50[8] 55[4])
    defparam i1067_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1068_3_lut (.I0(uart_rx_data[2]), .I1(capture[3]), .I2(rx_data_7__N_511), 
            .I3(GND_net), .O(n1135));   // ../uart.v(50[8] 55[4])
    defparam i1068_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1069_3_lut (.I0(uart_rx_data[1]), .I1(capture[2]), .I2(rx_data_7__N_511), 
            .I3(GND_net), .O(n1136));   // ../uart.v(50[8] 55[4])
    defparam i1069_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1070_3_lut (.I0(capture[9]), .I1(rx_c), .I2(n4005), .I3(GND_net), 
            .O(n1137));   // ../uart.v(45[27:91])
    defparam i1070_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1071_3_lut (.I0(capture[8]), .I1(capture[9]), .I2(n4005), 
            .I3(GND_net), .O(n1138));   // ../uart.v(45[27:91])
    defparam i1071_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1072_3_lut (.I0(capture[7]), .I1(capture[8]), .I2(n4005), 
            .I3(GND_net), .O(n1139));   // ../uart.v(45[27:91])
    defparam i1072_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1073_3_lut (.I0(capture[6]), .I1(capture[7]), .I2(n4005), 
            .I3(GND_net), .O(n1140));   // ../uart.v(45[27:91])
    defparam i1073_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1077_3_lut (.I0(capture[5]), .I1(capture[6]), .I2(n4005), 
            .I3(GND_net), .O(n1144));   // ../uart.v(45[27:91])
    defparam i1077_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1078_3_lut (.I0(capture[4]), .I1(capture[5]), .I2(n4005), 
            .I3(GND_net), .O(n1145));   // ../uart.v(45[27:91])
    defparam i1078_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1079_3_lut (.I0(capture[3]), .I1(capture[4]), .I2(n4005), 
            .I3(GND_net), .O(n1146));   // ../uart.v(45[27:91])
    defparam i1079_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1080_3_lut (.I0(capture[2]), .I1(capture[3]), .I2(n4005), 
            .I3(GND_net), .O(n1147));   // ../uart.v(45[27:91])
    defparam i1080_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1082_3_lut (.I0(capture[1]), .I1(capture[2]), .I2(n4005), 
            .I3(GND_net), .O(n1149));   // ../uart.v(45[27:91])
    defparam i1082_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1113_3_lut (.I0(c_stk_w_7__N_18[7]), .I1(n92_adj_872), .I2(stall_), 
            .I3(GND_net), .O(n1180));   // ../tok.v(160[10] 167[10])
    defparam i1113_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1122_3_lut (.I0(c_stk_w_7__N_18[6]), .I1(n92_adj_871), .I2(stall_), 
            .I3(GND_net), .O(n1189));   // ../tok.v(160[10] 167[10])
    defparam i1122_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1123_3_lut (.I0(c_stk_w_7__N_18[5]), .I1(n10_adj_873), .I2(stall_), 
            .I3(GND_net), .O(n1190));   // ../tok.v(160[10] 167[10])
    defparam i1123_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1124_3_lut (.I0(c_stk_w_7__N_18[4]), .I1(n10), .I2(stall_), 
            .I3(GND_net), .O(n1191));   // ../tok.v(160[10] 167[10])
    defparam i1124_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1125_3_lut (.I0(c_stk_w_7__N_18[3]), .I1(n92_adj_870), .I2(stall_), 
            .I3(GND_net), .O(n1192));   // ../tok.v(160[10] 167[10])
    defparam i1125_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1126_3_lut (.I0(c_stk_w_7__N_18[2]), .I1(n10_adj_874), .I2(stall_), 
            .I3(GND_net), .O(n1193));   // ../tok.v(160[10] 167[10])
    defparam i1126_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1127_3_lut (.I0(c_stk_w_7__N_18[1]), .I1(n92), .I2(stall_), 
            .I3(GND_net), .O(n1194));   // ../tok.v(160[10] 167[10])
    defparam i1127_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1_2_lut (.I0(n795), .I1(bytephase_5__N_510), .I2(GND_net), 
            .I3(GND_net), .O(n940));
    defparam i1_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i1048_3_lut (.I0(capture[0]), .I1(capture[1]), .I2(n4005), 
            .I3(GND_net), .O(n1115));   // ../uart.v(45[27:91])
    defparam i1048_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i1049_3_lut (.I0(uart_rx_data[0]), .I1(capture[1]), .I2(rx_data_7__N_511), 
            .I3(GND_net), .O(n1116));   // ../uart.v(50[8] 55[4])
    defparam i1049_3_lut.LUT_INIT = 16'hcaca;
    TOK tok (.GND_net(GND_net), .clk(clk), .stall_(stall_), .uart_rx_data({uart_rx_data}), 
        .reset_c(reset_c), .n10(n10_adj_875), .n92(n92), .n29(n29), 
        .n10_adj_9(n10_adj_874), .n92_adj_10(n92_adj_870), .n10_adj_11(n10), 
        .c_stk_w_7__N_18({c_stk_w_7__N_18}), .n10_adj_12(n10_adj_873), .n92_adj_13(n92_adj_871), 
        .n1194(n1194), .n1193(n1193), .n1192(n1192), .n1191(n1191), 
        .n1190(n1190), .n1189(n1189), .n1180(n1180), .n4178(n4178), 
        .n92_adj_14(n92_adj_872), .n786(n786), .n940(n940), .bytephase_5__N_510(bytephase_5__N_510), 
        .capture({capture}), .rx_data_7__N_511(rx_data_7__N_511), .txtick(txtick), 
        .\sender[1] (sender[1]), .tx_c(tx_c), .n23(n23), .n1116(n1116), 
        .n1115(n1115), .rx_c(rx_c), .n795(n795), .\sender[2] (sender[2]), 
        .n1173(n1173), .n1149(n1149), .n1147(n1147), .n1146(n1146), 
        .n1145(n1145), .n1144(n1144), .n1140(n1140), .n1139(n1139), 
        .n1138(n1138), .n1137(n1137), .n1136(n1136), .n1135(n1135), 
        .n1134(n1134), .n1133(n1133), .n1132(n1132), .n1131(n1131), 
        .n1130(n1130), .n4005(n4005), .\tail[127] (tail[127]), .\tail[112] (tail[112]), 
        .\tail[113] (tail[113]), .\tail[114] (tail[114]), .\tail[115] (tail[115]), 
        .\tail[116] (tail[116]), .\tail[117] (tail[117]), .\tail[118] (tail[118]), 
        .\tail[119] (tail[119]), .\tail[120] (tail[120]), .\tail[121] (tail[121]), 
        .\tail[122] (tail[122]), .\tail[123] (tail[123]), .\tail[124] (tail[124]), 
        .\tail[125] (tail[125]), .\tail[126] (tail[126]), .\tail[96] (tail[96]), 
        .\tail[97] (tail[97]), .\tail[98] (tail[98]), .\tail[99] (tail[99]), 
        .\tail[100] (tail[100]), .\tail[101] (tail[101]), .\tail[102] (tail[102]), 
        .\tail[103] (tail[103]), .\tail[104] (tail[104]), .\tail[105] (tail[105]), 
        .\tail[106] (tail[106]), .\tail[107] (tail[107]), .\tail[108] (tail[108]), 
        .\tail[109] (tail[109]), .\tail[110] (tail[110]), .\tail[111] (tail[111]), 
        .n1122(n1122), .n1126(n1126), .n1129(n1129), .n1143(n1143), 
        .n1152(n1152), .n1155(n1155), .n1158(n1158), .n1163(n1163), 
        .n1166(n1166), .n1169(n1169), .n1176(n1176), .n1179(n1179), 
        .n1090(n1090), .n1102(n1102), .n1114(n1114), .n1119(n1119)) /* synthesis syn_module_defined=1 */ ;   // ../lattice_top.v(12[5] 17[2])
    VCC i4750 (.Y(VCC_net));
    
endmodule
//
// Verilog Description of module TOK
//

module TOK (GND_net, clk, stall_, uart_rx_data, reset_c, n10, n92, 
            n29, n10_adj_9, n92_adj_10, n10_adj_11, c_stk_w_7__N_18, 
            n10_adj_12, n92_adj_13, n1194, n1193, n1192, n1191, 
            n1190, n1189, n1180, n4178, n92_adj_14, n786, n940, 
            bytephase_5__N_510, capture, rx_data_7__N_511, txtick, \sender[1] , 
            tx_c, n23, n1116, n1115, rx_c, n795, \sender[2] , 
            n1173, n1149, n1147, n1146, n1145, n1144, n1140, n1139, 
            n1138, n1137, n1136, n1135, n1134, n1133, n1132, n1131, 
            n1130, n4005, \tail[127] , \tail[112] , \tail[113] , \tail[114] , 
            \tail[115] , \tail[116] , \tail[117] , \tail[118] , \tail[119] , 
            \tail[120] , \tail[121] , \tail[122] , \tail[123] , \tail[124] , 
            \tail[125] , \tail[126] , \tail[96] , \tail[97] , \tail[98] , 
            \tail[99] , \tail[100] , \tail[101] , \tail[102] , \tail[103] , 
            \tail[104] , \tail[105] , \tail[106] , \tail[107] , \tail[108] , 
            \tail[109] , \tail[110] , \tail[111] , n1122, n1126, n1129, 
            n1143, n1152, n1155, n1158, n1163, n1166, n1169, n1176, 
            n1179, n1090, n1102, n1114, n1119) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input clk;
    output stall_;
    output [7:0]uart_rx_data;
    input reset_c;
    output n10;
    output n92;
    output n29;
    output n10_adj_9;
    output n92_adj_10;
    output n10_adj_11;
    output [7:0]c_stk_w_7__N_18;
    output n10_adj_12;
    output n92_adj_13;
    input n1194;
    input n1193;
    input n1192;
    input n1191;
    input n1190;
    input n1189;
    input n1180;
    input n4178;
    output n92_adj_14;
    output n786;
    input n940;
    output bytephase_5__N_510;
    output [9:0]capture;
    output rx_data_7__N_511;
    output txtick;
    output \sender[1] ;
    output tx_c;
    output n23;
    input n1116;
    input n1115;
    input rx_c;
    output n795;
    output \sender[2] ;
    input n1173;
    input n1149;
    input n1147;
    input n1146;
    input n1145;
    input n1144;
    input n1140;
    input n1139;
    input n1138;
    input n1137;
    input n1136;
    input n1135;
    input n1134;
    input n1133;
    input n1132;
    input n1131;
    input n1130;
    output n4005;
    output \tail[127] ;
    output \tail[112] ;
    output \tail[113] ;
    output \tail[114] ;
    output \tail[115] ;
    output \tail[116] ;
    output \tail[117] ;
    output \tail[118] ;
    output \tail[119] ;
    output \tail[120] ;
    output \tail[121] ;
    output \tail[122] ;
    output \tail[123] ;
    output \tail[124] ;
    output \tail[125] ;
    output \tail[126] ;
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
    input n1122;
    input n1126;
    input n1129;
    input n1143;
    input n1152;
    input n1155;
    input n1158;
    input n1163;
    input n1166;
    input n1169;
    input n1176;
    input n1179;
    input n1090;
    input n1102;
    input n1114;
    input n1119;
    
    wire clk /* synthesis is_clock=1 */ ;   // ../lattice_top.v(10[6:9])
    wire [7:0]A_low;   // ../tok.v(31[14:19])
    wire [7:0]n257;
    
    wire stall, search_clk, n27;
    wire [7:0]idx;   // ../tok.v(72[26:29])
    
    wire n2732, n4431;
    wire [7:0]idx_;   // ../tok.v(72[31:35])
    
    wire n2724, uart_stall, n27_adj_644, n11, n2586, n9, n9_adj_645, 
        n6, n10_c;
    wire [7:0]T;   // ../tok.v(32[14:15])
    
    wire n4422, n10_adj_646, n4575, n11_adj_647, n40, n4424, n14, 
        n4558, n11_adj_648, n51;
    wire [8:0]n190;
    wire [15:0]n200;
    
    wire n11_adj_649, n4571, n4393, VCC_net, found_slot, n3888, 
        n3912;
    wire [15:0]S;   // ../tok.v(35[15:16])
    wire [15:0]n286;
    
    wire n3913, n14_adj_650, n4464, n4573, search_clk_N_138, reset_N_2, 
        n8;
    wire [15:0]n173;
    wire [15:0]table_rd;   // ../tok.v(78[15:23])
    
    wire n5, n132, n14_adj_651;
    wire [15:0]A;   // ../tok.v(100[14:15])
    
    wire n892, n2635, n12, n10_adj_652, n109, n18, n2616, n2726, 
        n16, n83, n20, n884, n2598, n6_adj_653, n4684, n23_c, 
        n4051;
    wire [15:0]A_;   // ../tok.v(100[17:19])
    
    wire n34, n48, n4, n4_adj_654, n4607, n883, A_stk_delta_1__N_4, 
        n4554, n4508, n15, n5_adj_655, n13, n3932, n3933, n4516, 
        n10_adj_656, n2178, n13_adj_657, n30, n14_adj_658, n12_adj_659, 
        n1031, n950, n2746, n16_adj_660, n21, n4680;
    wire [15:0]key_rd;   // ../tok.v(79[15:21])
    
    wire n24, n4484, n41, n40_adj_661, n42, n15_adj_662, n4528, 
        n27_adj_664, n3889, n8_adj_666, n22, n6_adj_667, n3911, 
        n400, n5_adj_668, n14_adj_669, n12_adj_670, n10_adj_671, n18_adj_672, 
        n16_adj_673, n20_adj_674, n3902, n4524, n10_adj_675, n2614, 
        n6_adj_676, n4676, n23_adj_677, n4446, n880, n1, n14_adj_678, 
        n10_adj_679, n15_adj_680, n19, n101, n18_adj_681, n2, n5_adj_682, 
        n22_adj_683, n4544, n6_adj_684;
    wire [15:0]A__15__N_113;
    
    wire n2_adj_685, n14_adj_686, n1062, n12_adj_687, n13_adj_688, 
        n9_adj_689, n5_adj_690, n16_adj_691, A__15__N_129, n6_adj_692, 
        n20_adj_693, n4674, n4671, n1060, n5_adj_694, n14_adj_695, 
        n12_adj_696, n10_adj_697, n18_adj_698, n16_adj_699, n20_adj_700, 
        n2514, n6_adj_701, n4667, n1058, n31, n14_adj_702, n2_adj_703;
    wire [7:0]c_stk_r;   // ../tok.v(58[14:21])
    
    wire n83_adj_704, n10_adj_705, n16_adj_706, n3, n14_adj_707, n20_adj_708, 
        n4664, n22_adj_709, n17, n7, n2503, n5_adj_710, n6_adj_711, 
        n4663, n1_adj_712, n4694, n13_adj_713, n21_adj_714;
    wire [7:0]tc_plus_1;   // ../tok.v(99[14:23])
    
    wire n802, n86, n83_adj_716, n847, n1056, n1_adj_717, n4690, 
        n5_adj_718, n28, n2562, n34_adj_719, n2_adj_720, n4610, 
        n37, n83_adj_721, n14_adj_722, n12_adj_723, n1_adj_724, n4692, 
        n13_adj_725, n1054, n13_adj_726, n26, n9_adj_728, n5_adj_729, 
        n16_adj_730, n6_adj_731, n20_adj_732, n4661, n4658, n83_adj_733, 
        n27_adj_734, n25, n83_adj_735, n4649, n1_adj_736, n4627, 
        n5_adj_737, n284, n1052, n2_adj_739, n1050, n12_adj_740, 
        n14_adj_741, n2177, n83_adj_742, n4651, n83_adj_743, n127, 
        n12_adj_744, n1_adj_745, n4688, n13_adj_746, n13_adj_748, 
        n9_adj_749, n5_adj_750, n16_adj_751, n5_adj_752, n3931, n399, 
        n6_adj_753, n20_adj_754, n3901, n4656, n4653, n3890, n3891, 
        n18_adj_756;
    wire [3:0]depth;   // ../tok.v(128[13:18])
    
    wire n875;
    wire [3:0]depth_;   // ../tok.v(128[20:26])
    
    wire n1_adj_757, n13_adj_758, n1_adj_760, n13_adj_761, uart_tx_busy, 
        uart_rx_valid, n4478, n2_adj_763, n10_adj_764, n13_adj_765, 
        n82, n12_adj_766, n18_adj_767, n6_adj_768, n16_adj_769, n20_adj_770, 
        n15_adj_771, n20_adj_772, n4474, n5_adj_773, n3930;
    wire [15:0]n38;
    wire [15:0]A__15__N_84;
    
    wire n5_adj_775, n3929, n101_adj_776, n4394, n8_adj_777, n3895, 
        n16_adj_778, n14_adj_779, n6_adj_780, n20_adj_781;
    wire [15:0]n234;
    
    wire n18_adj_782, n10_adj_783, n22_adj_784, n17_adj_785, n10_adj_786, 
        n3910, n3894, n13_adj_787, n3928, n3954, write_flag, n23_adj_788, 
        n3927, n3900, n5_adj_789, n3926, n3953, n4_adj_790, n3925, 
        n3952, n28_adj_791, n3951, n26_adj_792, n27_adj_793, n25_adj_794, 
        n3909, n3924, tc__7__N_134, n4_adj_795, n4460, n3950, n3908, 
        n83_adj_796, n3949, n3923, n3893, n3899, n3948, n9_adj_797, 
        n3922, n1_adj_798, n4602, n13_adj_799, n3907, n3921, write_slot, 
        n12_adj_801, n3920, n3947, n3919, n3906, n1_adj_802, n3946, 
        n36, n3905, n3898, n20_adj_803, n14_adj_804, n26_adj_805, 
        n3918, n3917, n3945;
    wire [7:0]tc_;   // ../tok.v(98[17:20])
    
    wire n10_adj_806, n3944, n3916, n9_adj_807, n3943, n26_adj_808, 
        n3904, n4_adj_809, n2_adj_810, n3897, n3915, n2_adj_811, 
        n3903, n6_adj_812, n3942, n13_adj_813, n6_adj_814, n3914, 
        n12_adj_815, n13_adj_816, n3896, n3892, n10_adj_818, n3941, 
        n18_adj_819, n16_adj_820, n28_adj_821, n3940, n20_adj_822, 
        n15_adj_823, n30_adj_824;
    wire [15:0]table_wr_data;   // ../tok.v(84[15:28])
    
    wire n4645, n240, n14_adj_825, n3_adj_826, n4502, n6_adj_827, 
        n3939, n33_adj_828, n3938, n10_adj_829, n12_adj_830, n11_adj_831, 
        n6_adj_832, n13_adj_833, n3937, n237, n28_adj_834, n4604, 
        n3936, n6_adj_835, n9_adj_836, n5_adj_837, n10_adj_838, n8_adj_839, 
        n12_adj_840, n4520, n3935, n3934, n13_adj_842, n12_adj_843, 
        n18_adj_844, n16_adj_845, found_slot_N_145, n20_adj_846, n15_adj_847, 
        n4642, n6_adj_848, n32, n10_adj_849, n8_adj_850, n12_adj_851, 
        n46, rd_7__N_374;
    wire [1:0]C_stk_delta;   // ../tok.v(55[13:24])
    
    wire n2634, n602, n4504;
    wire [3:0]n35;
    
    wire n4432, n6_adj_853, n24_adj_854, n22_adj_855, n23_adj_856, 
        n21_adj_857, n20_adj_858, n18_adj_859, n19_adj_860, n17_adj_861, 
        n30_adj_862, n27_adj_863, n29_adj_864, n27_adj_865, n27_adj_866, 
        n27_adj_867, n27_adj_868;
    wire [63:0]tail;   // ../stack.v(16[16:20])
    wire [63:0]tailN;   // ../stack.v(18[17:22])
    
    wire n1160, n1170, n1181, n1183, n1184, n1185, n1196, n1197;
    
    SB_LUT4 i50_4_lut (.I0(A_low[6]), .I1(n257[6]), .I2(stall), .I3(search_clk), 
            .O(n27));   // ../tok.v(87[5] 94[14])
    defparam i50_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut (.I0(n27), .I1(idx[6]), .I2(n2732), .I3(n4431), 
            .O(idx_[6]));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut.LUT_INIT = 16'h0ace;
    SB_LUT4 i2655_2_lut (.I0(n2724), .I1(uart_stall), .I2(GND_net), .I3(GND_net), 
            .O(n2732));
    defparam i2655_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i50_4_lut_adj_30 (.I0(A_low[7]), .I1(n257[7]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_644));   // ../tok.v(87[5] 94[14])
    defparam i50_4_lut_adj_30.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_31 (.I0(n27_adj_644), .I1(idx[7]), .I2(n2732), 
            .I3(n4431), .O(idx_[7]));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_31.LUT_INIT = 16'h0ace;
    SB_LUT4 i2_4_lut (.I0(n11), .I1(n2586), .I2(n9), .I3(n9_adj_645), 
            .O(n6));
    defparam i2_4_lut.LUT_INIT = 16'h5ddd;
    SB_LUT4 i3_4_lut (.I0(n10_c), .I1(n6), .I2(T[0]), .I3(T[1]), .O(n4422));
    defparam i3_4_lut.LUT_INIT = 16'hddcd;
    SB_LUT4 i3_4_lut_adj_32 (.I0(n10_adj_646), .I1(n4575), .I2(n11_adj_647), 
            .I3(n40), .O(n4424));
    defparam i3_4_lut_adj_32.LUT_INIT = 16'h7f3f;
    SB_LUT4 i1_4_lut_adj_33 (.I0(n14), .I1(n4558), .I2(n11_adj_648), .I3(n4422), 
            .O(n51));
    defparam i1_4_lut_adj_33.LUT_INIT = 16'h5515;
    SB_LUT4 or_101_i9_2_lut (.I0(A_low[4]), .I1(n190[8]), .I2(GND_net), 
            .I3(GND_net), .O(n200[8]));   // ../tok.v(109[40:60])
    defparam or_101_i9_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_34 (.I0(n11_adj_649), .I1(n2586), .I2(n4571), 
            .I3(n40), .O(n4393));
    defparam i1_4_lut_adj_34.LUT_INIT = 16'hdf5f;
    SB_LUT4 i2534_2_lut (.I0(T[2]), .I1(T[3]), .I2(GND_net), .I3(GND_net), 
            .O(n2586));
    defparam i2534_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY idx_7__I_0_2 (.CI(VCC_net), .I0(idx[0]), .I1(found_slot), 
            .CO(n3888));
    SB_CARRY sub_105_add_2_5 (.CI(n3912), .I0(S[3]), .I1(n286[3]), .CO(n3913));
    SB_LUT4 i4415_4_lut (.I0(n14_adj_650), .I1(n4464), .I2(n9), .I3(n10_adj_646), 
            .O(n4573));
    defparam i4415_4_lut.LUT_INIT = 16'heeea;
    SB_DFFR search_clk_198 (.Q(search_clk), .C(clk), .D(search_clk_N_138), 
            .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 or_99_i9_2_lut (.I0(A_low[4]), .I1(n8), .I2(GND_net), .I3(GND_net), 
            .O(n173[8]));   // ../tok.v(108[56:76])
    defparam or_99_i9_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i3_3_lut (.I0(table_rd[8]), .I1(n5), .I2(n132), .I3(GND_net), 
            .O(n14_adj_651));   // ../tok.v(107[7] 123[14])
    defparam i3_3_lut.LUT_INIT = 16'hcece;
    SB_DFFR idx_i0 (.Q(idx[0]), .C(clk), .D(idx_[0]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i1_4_lut_adj_35 (.I0(A[8]), .I1(n173[8]), .I2(n892), .I3(n2635), 
            .O(n12));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_35.LUT_INIT = 16'h0ace;
    SB_LUT4 i7_4_lut (.I0(n10_adj_652), .I1(n14_adj_651), .I2(A_low[0]), 
            .I3(n109), .O(n18));   // ../tok.v(107[7] 123[14])
    defparam i7_4_lut.LUT_INIT = 16'heefe;
    SB_DFFR stall_200 (.Q(stall), .C(clk), .D(stall_), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i5_4_lut (.I0(S[8]), .I1(n200[8]), .I2(n2616), .I3(n2726), 
            .O(n16));   // ../tok.v(107[7] 123[14])
    defparam i5_4_lut.LUT_INIT = 16'h0ace;
    SB_LUT4 i9_4_lut (.I0(A_low[3]), .I1(n18), .I2(n12), .I3(n83), .O(n20));   // ../tok.v(107[7] 123[14])
    defparam i9_4_lut.LUT_INIT = 16'hfdfc;
    SB_LUT4 i2546_2_lut (.I0(A[8]), .I1(n884), .I2(GND_net), .I3(GND_net), 
            .O(n2598));
    defparam i2546_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4670_4_lut (.I0(n2598), .I1(n20), .I2(n16), .I3(n6_adj_653), 
            .O(n4684));   // ../tok.v(105[10] 124[8])
    defparam i4670_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 A__15__I_0_i9_4_lut (.I0(S[8]), .I1(n4684), .I2(n23_c), .I3(n4051), 
            .O(A_[8]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i9_4_lut.LUT_INIT = 16'hcafa;
    SB_LUT4 i1_3_lut (.I0(n2726), .I1(A_low[5]), .I2(n190[8]), .I3(GND_net), 
            .O(n34));   // ../tok.v(107[7] 123[14])
    defparam i1_3_lut.LUT_INIT = 16'h5454;
    SB_LUT4 i1_4_lut_adj_36 (.I0(n51), .I1(n14_adj_650), .I2(n4424), .I3(n4558), 
            .O(n48));
    defparam i1_4_lut_adj_36.LUT_INIT = 16'hbabb;
    SB_LUT4 i4373_4_lut (.I0(n48), .I1(n14), .I2(n4573), .I3(n4393), 
            .O(n83));
    defparam i4373_4_lut.LUT_INIT = 16'hbfaf;
    SB_LUT4 i1_2_lut (.I0(n83), .I1(A_low[4]), .I2(GND_net), .I3(GND_net), 
            .O(n4));   // ../tok.v(107[7] 123[14])
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_3_lut_4_lut (.I0(T[1]), .I1(T[0]), .I2(T[5]), .I3(T[6]), 
            .O(n4_adj_654));   // ../tok.v(131[7:19])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i4678_4_lut_4_lut (.I0(T[2]), .I1(T[1]), .I2(T[0]), .I3(T[3]), 
            .O(n4607));   // ../tok.v(40[5] 51[14])
    defparam i4678_4_lut_4_lut.LUT_INIT = 16'h5173;
    SB_LUT4 i1_2_lut_3_lut (.I0(T[6]), .I1(T[7]), .I2(T[5]), .I3(GND_net), 
            .O(n883));   // ../tok.v(109[9:12])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 i4400_2_lut_4_lut (.I0(A_stk_delta_1__N_4), .I1(stall), .I2(T[7]), 
            .I3(T[6]), .O(n4554));
    defparam i4400_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i50_3_lut (.I0(n884), .I1(n892), .I2(A[9]), .I3(GND_net), 
            .O(n4508));   // ../tok.v(107[7] 123[14])
    defparam i50_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 equal_142_i15_2_lut (.I0(T[4]), .I1(T[5]), .I2(GND_net), .I3(GND_net), 
            .O(n15));   // ../tok.v(104[8:16])
    defparam equal_142_i15_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_2_lut_adj_37 (.I0(found_slot), .I1(search_clk), .I2(GND_net), 
            .I3(GND_net), .O(n5_adj_655));   // ../tok.v(87[5] 94[14])
    defparam i1_2_lut_adj_37.LUT_INIT = 16'h4444;
    SB_LUT4 i1_4_lut_adj_38 (.I0(uart_stall), .I1(n2724), .I2(stall), 
            .I3(n5_adj_655), .O(stall_));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_38.LUT_INIT = 16'hbbab;
    SB_LUT4 equal_121_i9_2_lut (.I0(T[0]), .I1(T[1]), .I2(GND_net), .I3(GND_net), 
            .O(n9));   // ../tok.v(109[9:12])
    defparam equal_121_i9_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i4_4_lut (.I0(n34), .I1(n2635), .I2(A_low[5]), .I3(n8), 
            .O(n13));   // ../tok.v(107[7] 123[14])
    defparam i4_4_lut.LUT_INIT = 16'hbabb;
    SB_CARRY add_104_10 (.CI(n3932), .I0(A[8]), .I1(S[8]), .CO(n3933));
    SB_LUT4 i4364_2_lut (.I0(T[3]), .I1(T[5]), .I2(GND_net), .I3(GND_net), 
            .O(n4516));
    defparam i4364_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 equal_113_i9_2_lut (.I0(T[0]), .I1(T[1]), .I2(GND_net), .I3(GND_net), 
            .O(n9_adj_645));   // ../tok.v(108[9:12])
    defparam equal_113_i9_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i2_4_lut_adj_39 (.I0(A_low[1]), .I1(n10_adj_656), .I2(n2178), 
            .I3(n13_adj_657), .O(n30));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_39.LUT_INIT = 16'hffce;
    SB_LUT4 i3_4_lut_adj_40 (.I0(table_rd[9]), .I1(n14_adj_658), .I2(n132), 
            .I3(n30), .O(n12_adj_659));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_40.LUT_INIT = 16'h3b0a;
    SB_DFFER A_i1 (.Q(A_low[0]), .C(clk), .E(n950), .D(n1031), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i2669_2_lut (.I0(n2635), .I1(n83), .I2(GND_net), .I3(GND_net), 
            .O(n2746));
    defparam i2669_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i7_4_lut_adj_41 (.I0(n13), .I1(n4508), .I2(n4051), .I3(n4), 
            .O(n16_adj_660));   // ../tok.v(107[7] 123[14])
    defparam i7_4_lut_adj_41.LUT_INIT = 16'hffbf;
    SB_LUT4 i4607_4_lut (.I0(S[9]), .I1(n12_adj_659), .I2(n21), .I3(n2616), 
            .O(n4680));   // ../tok.v(105[10] 124[8])
    defparam i4607_4_lut.LUT_INIT = 16'hfcfe;
    SB_LUT4 i8_4_lut (.I0(key_rd[9]), .I1(key_rd[15]), .I2(A[9]), .I3(A[15]), 
            .O(n24));   // ../tok.v(81[46:59])
    defparam i8_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 A__15__I_0_i10_4_lut (.I0(S[9]), .I1(n4680), .I2(n23_c), .I3(n16_adj_660), 
            .O(A_[9]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i10_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i3_4_lut_adj_42 (.I0(n4484), .I1(n41), .I2(n40_adj_661), .I3(n10_c), 
            .O(n42));
    defparam i3_4_lut_adj_42.LUT_INIT = 16'hf5fd;
    SB_LUT4 i4375_4_lut (.I0(n15_adj_662), .I1(n132), .I2(n884), .I3(n2746), 
            .O(n4528));
    defparam i4375_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i50_4_lut_adj_43 (.I0(A_low[0]), .I1(n257[0]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_664));   // ../tok.v(87[5] 94[14])
    defparam i50_4_lut_adj_43.LUT_INIT = 16'hca0a;
    SB_LUT4 idx_7__I_0_4_lut (.I0(idx[2]), .I1(idx[2]), .I2(found_slot), 
            .I3(n3889), .O(n257[2])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i6_4_lut (.I0(n14_adj_658), .I1(n4528), .I2(n8_adj_666), .I3(n42), 
            .O(n892));
    defparam i6_4_lut.LUT_INIT = 16'hf7f3;
    SB_LUT4 i6_4_lut_adj_44 (.I0(key_rd[2]), .I1(key_rd[7]), .I2(A_low[2]), 
            .I3(A_low[7]), .O(n22));   // ../tok.v(81[46:59])
    defparam i6_4_lut_adj_44.LUT_INIT = 16'h7bde;
    SB_LUT4 sub_105_add_2_4_lut (.I0(n400), .I1(S[2]), .I2(n286[2]), .I3(n3911), 
            .O(n6_adj_667)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_4_lut.LUT_INIT = 16'h8228;
    SB_LUT4 or_101_i11_2_lut (.I0(A_low[6]), .I1(n190[8]), .I2(GND_net), 
            .I3(GND_net), .O(n200[10]));   // ../tok.v(109[40:60])
    defparam or_101_i11_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 or_99_i11_2_lut (.I0(A_low[6]), .I1(n8), .I2(GND_net), .I3(GND_net), 
            .O(n173[10]));   // ../tok.v(108[56:76])
    defparam or_99_i11_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i2_4_lut_adj_45 (.I0(T[4]), .I1(n883), .I2(n41), .I3(n2586), 
            .O(n884));
    defparam i2_4_lut_adj_45.LUT_INIT = 16'hdfff;
    SB_LUT4 idx_7__I_0_2_lut (.I0(idx[0]), .I1(idx[0]), .I2(found_slot), 
            .I3(VCC_net), .O(n257[0])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_2_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i3_3_lut_adj_46 (.I0(table_rd[10]), .I1(n5_adj_668), .I2(n132), 
            .I3(GND_net), .O(n14_adj_669));   // ../tok.v(107[7] 123[14])
    defparam i3_3_lut_adj_46.LUT_INIT = 16'hcece;
    SB_LUT4 i1_4_lut_adj_47 (.I0(A[10]), .I1(n173[10]), .I2(n892), .I3(n2635), 
            .O(n12_adj_670));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_47.LUT_INIT = 16'h0ace;
    SB_LUT4 i7_4_lut_adj_48 (.I0(n10_adj_671), .I1(n14_adj_669), .I2(A_low[2]), 
            .I3(n109), .O(n18_adj_672));   // ../tok.v(107[7] 123[14])
    defparam i7_4_lut_adj_48.LUT_INIT = 16'heefe;
    SB_LUT4 i5_4_lut_adj_49 (.I0(S[10]), .I1(n200[10]), .I2(n2616), .I3(n2726), 
            .O(n16_adj_673));   // ../tok.v(107[7] 123[14])
    defparam i5_4_lut_adj_49.LUT_INIT = 16'h0ace;
    SB_LUT4 i9_4_lut_adj_50 (.I0(A_low[5]), .I1(n18_adj_672), .I2(n12_adj_670), 
            .I3(n83), .O(n20_adj_674));   // ../tok.v(107[7] 123[14])
    defparam i9_4_lut_adj_50.LUT_INIT = 16'hfdfc;
    SB_CARRY sub_100_add_2_2 (.CI(VCC_net), .I0(T[0]), .I1(GND_net), .CO(n3902));
    SB_LUT4 i4371_2_lut (.I0(A[10]), .I1(n884), .I2(GND_net), .I3(GND_net), 
            .O(n4524));
    defparam i4371_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i2564_3_lut_4_lut (.I0(n10_adj_675), .I1(n9), .I2(n2614), 
            .I3(n14_adj_658), .O(n2616));
    defparam i2564_3_lut_4_lut.LUT_INIT = 16'hf0e0;
    SB_LUT4 i4674_4_lut (.I0(n4524), .I1(n20_adj_674), .I2(n16_adj_673), 
            .I3(n6_adj_676), .O(n4676));   // ../tok.v(105[10] 124[8])
    defparam i4674_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i7_4_lut_adj_51 (.I0(key_rd[11]), .I1(key_rd[14]), .I2(A[11]), 
            .I3(A[14]), .O(n23_adj_677));   // ../tok.v(81[46:59])
    defparam i7_4_lut_adj_51.LUT_INIT = 16'h7bde;
    SB_LUT4 A__15__I_0_i11_4_lut (.I0(S[10]), .I1(n4676), .I2(n23_c), 
            .I3(n4051), .O(A_[10]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i11_4_lut.LUT_INIT = 16'hcafa;
    SB_LUT4 i2_3_lut (.I0(n4446), .I1(T[1]), .I2(n880), .I3(GND_net), 
            .O(n23_c));   // ../tok.v(104[8:16])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 select_73_Select_0_i1_2_lut (.I0(T[0]), .I1(n2635), .I2(GND_net), 
            .I3(GND_net), .O(n1));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_0_i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i2_4_lut_adj_52 (.I0(n1), .I1(n884), .I2(n892), .I3(A_low[0]), 
            .O(n14_adj_678));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_52.LUT_INIT = 16'hafbb;
    SB_LUT4 i4335_3_lut_4_lut_4_lut (.I0(n10_adj_675), .I1(n9), .I2(n2178), 
            .I3(n2586), .O(n4484));
    defparam i4335_3_lut_4_lut_4_lut.LUT_INIT = 16'hc0e0;
    SB_LUT4 i3_3_lut_adj_53 (.I0(n10_adj_679), .I1(S[0]), .I2(n2616), 
            .I3(GND_net), .O(n15_adj_680));   // ../tok.v(107[7] 123[14])
    defparam i3_3_lut_adj_53.LUT_INIT = 16'haeae;
    SB_LUT4 i7_4_lut_adj_54 (.I0(n4051), .I1(n14_adj_678), .I2(uart_rx_data[0]), 
            .I3(n109), .O(n19));   // ../tok.v(107[7] 123[14])
    defparam i7_4_lut_adj_54.LUT_INIT = 16'hddfd;
    SB_LUT4 i6_4_lut_adj_55 (.I0(table_rd[0]), .I1(A[8]), .I2(n132), .I3(n101), 
            .O(n18_adj_681));   // ../tok.v(107[7] 123[14])
    defparam i6_4_lut_adj_55.LUT_INIT = 16'h0ace;
    SB_LUT4 i10_4_lut (.I0(n19), .I1(n15_adj_680), .I2(n2), .I3(n5_adj_682), 
            .O(n22_adj_683));   // ../tok.v(107[7] 123[14])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i4390_2_lut (.I0(T[0]), .I1(n83), .I2(GND_net), .I3(GND_net), 
            .O(n4544));
    defparam i4390_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i11_4_lut (.I0(n4544), .I1(n22_adj_683), .I2(n18_adj_681), 
            .I3(n6_adj_684), .O(A__15__N_113[0]));   // ../tok.v(107[7] 123[14])
    defparam i11_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 select_73_Select_11_i2_3_lut (.I0(A_low[7]), .I1(n2726), .I2(n190[8]), 
            .I3(GND_net), .O(n2_adj_685));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_11_i2_3_lut.LUT_INIT = 16'h3232;
    SB_LUT4 i3_4_lut_adj_56 (.I0(n2_adj_685), .I1(A_low[7]), .I2(n2635), 
            .I3(n8), .O(n14_adj_686));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_56.LUT_INIT = 16'haeaf;
    SB_DFFER A_i2 (.Q(A_low[1]), .C(clk), .E(n950), .D(n1062), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i1_4_lut_adj_57 (.I0(A_low[6]), .I1(A[11]), .I2(n83), .I3(n884), 
            .O(n12_adj_687));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_57.LUT_INIT = 16'ha0b3;
    SB_LUT4 equal_155_i16_2_lut_3_lut (.I0(n9), .I1(n2586), .I2(n14_adj_658), 
            .I3(GND_net), .O(n400));   // ../tok.v(110[9:12])
    defparam equal_155_i16_2_lut_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 i2_4_lut_adj_58 (.I0(A_low[3]), .I1(A[11]), .I2(n109), .I3(n892), 
            .O(n13_adj_688));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_58.LUT_INIT = 16'h0ace;
    SB_LUT4 select_73_Select_11_i9_2_lut (.I0(S[11]), .I1(n2616), .I2(GND_net), 
            .I3(GND_net), .O(n9_adj_689));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_11_i9_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i5_3_lut (.I0(table_rd[11]), .I1(n5_adj_690), .I2(n132), .I3(GND_net), 
            .O(n16_adj_691));   // ../tok.v(107[7] 123[14])
    defparam i5_3_lut.LUT_INIT = 16'hcece;
    SB_LUT4 i4681_2_lut (.I0(A__15__N_129), .I1(n23_c), .I2(GND_net), 
            .I3(GND_net), .O(n950));
    defparam i4681_2_lut.LUT_INIT = 16'h7777;
    SB_LUT4 i9_4_lut_adj_59 (.I0(n6_adj_692), .I1(n13_adj_688), .I2(n12_adj_687), 
            .I3(n14_adj_686), .O(n20_adj_693));   // ../tok.v(107[7] 123[14])
    defparam i9_4_lut_adj_59.LUT_INIT = 16'hfffe;
    SB_LUT4 i4672_4_lut (.I0(n4674), .I1(n20_adj_693), .I2(n16_adj_691), 
            .I3(n9_adj_689), .O(n4671));   // ../tok.v(105[10] 124[8])
    defparam i4672_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 A__15__I_0_i12_4_lut (.I0(S[11]), .I1(n4671), .I2(n23_c), 
            .I3(n4051), .O(A_[11]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i12_4_lut.LUT_INIT = 16'hcafa;
    SB_LUT4 reset_I_0_1_lut (.I0(reset_c), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(reset_N_2));   // ../tok.v(152[9:15])
    defparam reset_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i964_3_lut (.I0(S[0]), .I1(A__15__N_113[0]), .I2(n23_c), .I3(GND_net), 
            .O(n1031));   // ../tok.v(160[10] 167[10])
    defparam i964_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFER A_i3 (.Q(A_low[2]), .C(clk), .E(n950), .D(n1060), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 or_101_i13_2_lut (.I0(A[8]), .I1(n190[8]), .I2(GND_net), .I3(GND_net), 
            .O(n200[12]));   // ../tok.v(109[40:60])
    defparam or_101_i13_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 or_99_i13_2_lut (.I0(A[8]), .I1(n8), .I2(GND_net), .I3(GND_net), 
            .O(n173[12]));   // ../tok.v(108[56:76])
    defparam or_99_i13_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i3_3_lut_adj_60 (.I0(table_rd[12]), .I1(n5_adj_694), .I2(n132), 
            .I3(GND_net), .O(n14_adj_695));   // ../tok.v(107[7] 123[14])
    defparam i3_3_lut_adj_60.LUT_INIT = 16'hcece;
    SB_LUT4 i1_4_lut_adj_61 (.I0(A[12]), .I1(n173[12]), .I2(n892), .I3(n2635), 
            .O(n12_adj_696));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_61.LUT_INIT = 16'h0ace;
    SB_LUT4 i7_4_lut_adj_62 (.I0(n10_adj_697), .I1(n14_adj_695), .I2(A_low[4]), 
            .I3(n109), .O(n18_adj_698));   // ../tok.v(107[7] 123[14])
    defparam i7_4_lut_adj_62.LUT_INIT = 16'heefe;
    SB_LUT4 equal_119_i10_2_lut (.I0(T[2]), .I1(T[3]), .I2(GND_net), .I3(GND_net), 
            .O(n10_c));   // ../tok.v(108[9:12])
    defparam equal_119_i10_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i5_4_lut_adj_63 (.I0(S[12]), .I1(n200[12]), .I2(n2616), .I3(n2726), 
            .O(n16_adj_699));   // ../tok.v(107[7] 123[14])
    defparam i5_4_lut_adj_63.LUT_INIT = 16'h0ace;
    SB_LUT4 i9_4_lut_adj_64 (.I0(A_low[7]), .I1(n18_adj_698), .I2(n12_adj_696), 
            .I3(n83), .O(n20_adj_700));   // ../tok.v(107[7] 123[14])
    defparam i9_4_lut_adj_64.LUT_INIT = 16'hfdfc;
    SB_LUT4 i2462_2_lut (.I0(A[12]), .I1(n884), .I2(GND_net), .I3(GND_net), 
            .O(n2514));
    defparam i2462_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4676_4_lut (.I0(n2514), .I1(n20_adj_700), .I2(n16_adj_699), 
            .I3(n6_adj_701), .O(n4667));   // ../tok.v(105[10] 124[8])
    defparam i4676_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 search_clk_I_0_1_lut (.I0(search_clk), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(search_clk_N_138));   // ../tok.v(164[21:32])
    defparam search_clk_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_DFFER A_i4 (.Q(A_low[3]), .C(clk), .E(n950), .D(n1058), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i59_3_lut (.I0(T[2]), .I1(T[4]), .I2(T[1]), .I3(GND_net), 
            .O(n31));   // ../tok.v(61[5] 68[14])
    defparam i59_3_lut.LUT_INIT = 16'h8181;
    SB_LUT4 inv_106_i4_1_lut (.I0(A_low[3]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[3]));   // ../tok.v(115[20:22])
    defparam inv_106_i4_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 A__15__I_0_i13_4_lut (.I0(S[12]), .I1(n4667), .I2(n23_c), 
            .I3(n4051), .O(A_[12]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i13_4_lut.LUT_INIT = 16'hcafa;
    SB_LUT4 equal_157_i15_2_lut_3_lut (.I0(n9), .I1(n2586), .I2(n14_adj_702), 
            .I3(GND_net), .O(n15_adj_662));   // ../tok.v(110[9:12])
    defparam equal_157_i15_2_lut_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 i244_2_lut_3_lut_4_lut (.I0(T[6]), .I1(T[5]), .I2(T[4]), .I3(T[7]), 
            .O(n8));
    defparam i244_2_lut_3_lut_4_lut.LUT_INIT = 16'hffea;
    SB_LUT4 select_73_Select_13_i2_3_lut (.I0(A[9]), .I1(n2726), .I2(n190[8]), 
            .I3(GND_net), .O(n2_adj_703));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_13_i2_3_lut.LUT_INIT = 16'h3232;
    SB_LUT4 i125_4_lut (.I0(c_stk_r[0]), .I1(table_rd[0]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_704));   // ../tok.v(139[5] 146[14])
    defparam i125_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i4_4_lut_adj_65 (.I0(A[9]), .I1(n10_adj_705), .I2(n2635), 
            .I3(n8), .O(n16_adj_706));   // ../tok.v(107[7] 123[14])
    defparam i4_4_lut_adj_65.LUT_INIT = 16'hcecf;
    SB_LUT4 select_73_Select_13_i3_2_lut (.I0(A[8]), .I1(n83), .I2(GND_net), 
            .I3(GND_net), .O(n3));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_13_i3_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2_4_lut_adj_66 (.I0(A[13]), .I1(A_low[5]), .I2(n884), .I3(n109), 
            .O(n14_adj_707));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_66.LUT_INIT = 16'h05cd;
    SB_LUT4 i8_4_lut_adj_67 (.I0(A[13]), .I1(n16_adj_706), .I2(n2_adj_703), 
            .I3(n892), .O(n20_adj_708));   // ../tok.v(107[7] 123[14])
    defparam i8_4_lut_adj_67.LUT_INIT = 16'hfcfe;
    SB_LUT4 equal_114_i11_2_lut_4_lut (.I0(T[1]), .I1(T[0]), .I2(T[2]), 
            .I3(T[3]), .O(n11_adj_649));   // ../tok.v(108[9:12])
    defparam equal_114_i11_2_lut_4_lut.LUT_INIT = 16'hfff7;
    SB_LUT4 i4624_4_lut (.I0(S[13]), .I1(table_rd[13]), .I2(n2616), .I3(n132), 
            .O(n4664));   // ../tok.v(105[10] 124[8])
    defparam i4624_4_lut.LUT_INIT = 16'h0ace;
    SB_LUT4 i10_4_lut_adj_68 (.I0(n4051), .I1(n20_adj_708), .I2(n14_adj_707), 
            .I3(n3), .O(n22_adj_709));   // ../tok.v(107[7] 123[14])
    defparam i10_4_lut_adj_68.LUT_INIT = 16'hfffd;
    SB_LUT4 i5_4_lut_adj_69 (.I0(n17), .I1(n7), .I2(T[4]), .I3(n4516), 
            .O(n2503));
    defparam i5_4_lut_adj_69.LUT_INIT = 16'hefff;
    SB_LUT4 i4623_3_lut (.I0(n4664), .I1(n5_adj_710), .I2(n6_adj_711), 
            .I3(GND_net), .O(n4663));   // ../tok.v(105[10] 124[8])
    defparam i4623_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 A__15__I_0_i14_4_lut (.I0(S[13]), .I1(n4663), .I2(n23_c), 
            .I3(n22_adj_709), .O(A_[13]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i14_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i27_4_lut (.I0(n1_adj_712), .I1(n4694), .I2(T[6]), .I3(T[0]), 
            .O(n13_adj_713));   // ../tok.v(139[5] 146[14])
    defparam i27_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i5_4_lut_adj_70 (.I0(key_rd[10]), .I1(key_rd[12]), .I2(A[10]), 
            .I3(A[12]), .O(n21_adj_714));   // ../tok.v(81[46:59])
    defparam i5_4_lut_adj_70.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut_adj_71 (.I0(tc_plus_1[0]), .I1(n802), .I2(n86), .I3(n13_adj_713), 
            .O(n10));   // ../tok.v(139[5] 146[14])
    defparam i1_4_lut_adj_71.LUT_INIT = 16'heca0;
    SB_LUT4 i125_4_lut_adj_72 (.I0(c_stk_r[1]), .I1(table_rd[1]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_716));   // ../tok.v(139[5] 146[14])
    defparam i125_4_lut_adj_72.LUT_INIT = 16'h0ac0;
    SB_LUT4 i1_2_lut_3_lut_adj_73 (.I0(T[7]), .I1(T[5]), .I2(T[3]), .I3(GND_net), 
            .O(n847));   // ../tok.v(40[5] 51[14])
    defparam i1_2_lut_3_lut_adj_73.LUT_INIT = 16'h4040;
    SB_DFFER A_i5 (.Q(A_low[4]), .C(clk), .E(n950), .D(n1056), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i18_4_lut (.I0(n1_adj_717), .I1(n4690), .I2(T[6]), .I3(T[0]), 
            .O(n5_adj_718));   // ../tok.v(139[5] 146[14])
    defparam i18_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i12_4_lut (.I0(key_rd[11]), .I1(key_rd[9]), .I2(key_rd[14]), 
            .I3(key_rd[15]), .O(n28));   // ../tok.v(80[61:74])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_74 (.I0(n86), .I1(n802), .I2(tc_plus_1[1]), .I3(n5_adj_718), 
            .O(n92));   // ../tok.v(139[5] 146[14])
    defparam i1_4_lut_adj_74.LUT_INIT = 16'heca0;
    SB_LUT4 i2_3_lut_4_lut (.I0(T[7]), .I1(T[5]), .I2(n2562), .I3(n34_adj_719), 
            .O(n29));   // ../tok.v(40[5] 51[14])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h0400;
    SB_LUT4 select_73_Select_14_i2_3_lut (.I0(A[10]), .I1(n2726), .I2(n190[8]), 
            .I3(GND_net), .O(n2_adj_720));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_14_i2_3_lut.LUT_INIT = 16'h3232;
    SB_LUT4 i58_4_lut (.I0(n31), .I1(n4610), .I2(T[6]), .I3(T[0]), .O(n37));   // ../tok.v(61[5] 68[14])
    defparam i58_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i125_4_lut_adj_75 (.I0(c_stk_r[2]), .I1(table_rd[2]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_721));   // ../tok.v(139[5] 146[14])
    defparam i125_4_lut_adj_75.LUT_INIT = 16'h0ac0;
    SB_LUT4 i3_4_lut_adj_76 (.I0(n2_adj_720), .I1(A[10]), .I2(n2635), 
            .I3(n8), .O(n14_adj_722));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_76.LUT_INIT = 16'haeaf;
    SB_LUT4 i1_4_lut_adj_77 (.I0(A[9]), .I1(A[14]), .I2(n83), .I3(n884), 
            .O(n12_adj_723));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_77.LUT_INIT = 16'ha0b3;
    SB_LUT4 i27_4_lut_adj_78 (.I0(n1_adj_724), .I1(n4692), .I2(T[6]), 
            .I3(T[0]), .O(n13_adj_725));   // ../tok.v(139[5] 146[14])
    defparam i27_4_lut_adj_78.LUT_INIT = 16'hcac0;
    SB_DFFER A_i6 (.Q(A_low[5]), .C(clk), .E(n950), .D(n1054), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i2_4_lut_adj_79 (.I0(A_low[6]), .I1(A[14]), .I2(n109), .I3(n892), 
            .O(n13_adj_726));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_79.LUT_INIT = 16'h0ace;
    SB_LUT4 i10_4_lut_adj_80 (.I0(key_rd[8]), .I1(key_rd[3]), .I2(key_rd[13]), 
            .I3(key_rd[5]), .O(n26));   // ../tok.v(80[61:74])
    defparam i10_4_lut_adj_80.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_81 (.I0(n86), .I1(n802), .I2(tc_plus_1[2]), .I3(n13_adj_725), 
            .O(n10_adj_9));   // ../tok.v(139[5] 146[14])
    defparam i1_4_lut_adj_81.LUT_INIT = 16'heca0;
    SB_LUT4 select_73_Select_14_i9_2_lut (.I0(S[14]), .I1(n2616), .I2(GND_net), 
            .I3(GND_net), .O(n9_adj_728));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_14_i9_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i5_3_lut_adj_82 (.I0(table_rd[14]), .I1(n5_adj_729), .I2(n132), 
            .I3(GND_net), .O(n16_adj_730));   // ../tok.v(107[7] 123[14])
    defparam i5_3_lut_adj_82.LUT_INIT = 16'hcece;
    SB_LUT4 i9_4_lut_adj_83 (.I0(n6_adj_731), .I1(n13_adj_726), .I2(n12_adj_723), 
            .I3(n14_adj_722), .O(n20_adj_732));   // ../tok.v(107[7] 123[14])
    defparam i9_4_lut_adj_83.LUT_INIT = 16'hfffe;
    SB_LUT4 i4671_4_lut (.I0(n4661), .I1(n20_adj_732), .I2(n16_adj_730), 
            .I3(n9_adj_728), .O(n4658));   // ../tok.v(105[10] 124[8])
    defparam i4671_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 A__15__I_0_i15_4_lut (.I0(S[14]), .I1(n4658), .I2(n23_c), 
            .I3(n4051), .O(A_[14]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i15_4_lut.LUT_INIT = 16'hcafa;
    SB_LUT4 i125_4_lut_adj_84 (.I0(c_stk_r[3]), .I1(table_rd[3]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_733));   // ../tok.v(139[5] 146[14])
    defparam i125_4_lut_adj_84.LUT_INIT = 16'h0ac0;
    SB_LUT4 i11_4_lut_adj_85 (.I0(key_rd[10]), .I1(key_rd[2]), .I2(key_rd[12]), 
            .I3(key_rd[7]), .O(n27_adj_734));   // ../tok.v(80[61:74])
    defparam i11_4_lut_adj_85.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut_adj_86 (.I0(key_rd[0]), .I1(key_rd[1]), .I2(key_rd[6]), 
            .I3(key_rd[4]), .O(n25));   // ../tok.v(80[61:74])
    defparam i9_4_lut_adj_86.LUT_INIT = 16'hfffe;
    SB_LUT4 i4602_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_735), 
            .I3(GND_net), .O(n4649));   // ../tok.v(139[5] 146[14])
    defparam i4602_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i18_4_lut_adj_87 (.I0(n1_adj_736), .I1(n4627), .I2(T[6]), 
            .I3(T[0]), .O(n5_adj_737));   // ../tok.v(139[5] 146[14])
    defparam i18_4_lut_adj_87.LUT_INIT = 16'hcac0;
    SB_LUT4 i226_2_lut (.I0(T[5]), .I1(T[4]), .I2(GND_net), .I3(GND_net), 
            .O(n284));
    defparam i226_2_lut.LUT_INIT = 16'h8888;
    SB_DFFER A_i7 (.Q(A_low[6]), .C(clk), .E(n950), .D(n1052), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i1_4_lut_adj_88 (.I0(n86), .I1(n802), .I2(tc_plus_1[3]), .I3(n5_adj_737), 
            .O(n92_adj_10));   // ../tok.v(139[5] 146[14])
    defparam i1_4_lut_adj_88.LUT_INIT = 16'heca0;
    SB_LUT4 select_73_Select_15_i2_3_lut (.I0(A[11]), .I1(n2726), .I2(n190[8]), 
            .I3(GND_net), .O(n2_adj_739));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_15_i2_3_lut.LUT_INIT = 16'h3232;
    SB_DFFER A_i8 (.Q(A_low[7]), .C(clk), .E(n950), .D(n1050), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i26_2_lut (.I0(T[0]), .I1(T[2]), .I2(GND_net), .I3(GND_net), 
            .O(n12_adj_740));
    defparam i26_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 or_99_i7_3_lut_4_lut (.I0(A_low[2]), .I1(T[6]), .I2(T[5]), 
            .I3(T[4]), .O(n173[6]));   // ../tok.v(108[56:76])
    defparam or_99_i7_3_lut_4_lut.LUT_INIT = 16'hebbb;
    SB_LUT4 i3_4_lut_adj_89 (.I0(n2_adj_739), .I1(A[11]), .I2(n2635), 
            .I3(n8), .O(n14_adj_741));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_89.LUT_INIT = 16'haeaf;
    SB_LUT4 i2458_2_lut (.I0(T[1]), .I1(T[0]), .I2(GND_net), .I3(GND_net), 
            .O(n2177));
    defparam i2458_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4619_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_742), 
            .I3(GND_net), .O(n4651));   // ../tok.v(139[5] 146[14])
    defparam i4619_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i125_4_lut_adj_90 (.I0(c_stk_r[4]), .I1(table_rd[4]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_743));   // ../tok.v(139[5] 146[14])
    defparam i125_4_lut_adj_90.LUT_INIT = 16'h0ac0;
    SB_DFFER A_i16 (.Q(A[15]), .C(clk), .E(n950), .D(A_[15]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i127_4_lut_4_lut (.I0(T[1]), .I1(T[0]), .I2(T[2]), .I3(T[6]), 
            .O(n127));   // ../tok.v(139[5] 146[14])
    defparam i127_4_lut_4_lut.LUT_INIT = 16'h8f73;
    SB_LUT4 i1_4_lut_adj_91 (.I0(A[10]), .I1(A[15]), .I2(n83), .I3(n884), 
            .O(n12_adj_744));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_91.LUT_INIT = 16'ha0b3;
    SB_LUT4 i27_4_lut_adj_92 (.I0(n1_adj_745), .I1(n4688), .I2(T[6]), 
            .I3(T[0]), .O(n13_adj_746));   // ../tok.v(139[5] 146[14])
    defparam i27_4_lut_adj_92.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_93 (.I0(n86), .I1(n802), .I2(tc_plus_1[4]), .I3(n13_adj_746), 
            .O(n10_adj_11));   // ../tok.v(139[5] 146[14])
    defparam i1_4_lut_adj_93.LUT_INIT = 16'heca0;
    SB_LUT4 i2_4_lut_adj_94 (.I0(A_low[7]), .I1(A[15]), .I2(n109), .I3(n892), 
            .O(n13_adj_748));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_94.LUT_INIT = 16'h0ace;
    SB_LUT4 select_73_Select_15_i9_2_lut (.I0(S[15]), .I1(n2616), .I2(GND_net), 
            .I3(GND_net), .O(n9_adj_749));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_15_i9_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i5_3_lut_adj_95 (.I0(table_rd[15]), .I1(n5_adj_750), .I2(n132), 
            .I3(GND_net), .O(n16_adj_751));   // ../tok.v(107[7] 123[14])
    defparam i5_3_lut_adj_95.LUT_INIT = 16'hcece;
    SB_LUT4 add_104_9_lut (.I0(n399), .I1(A_low[7]), .I2(S[7]), .I3(n3931), 
            .O(n5_adj_752)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_9_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i9_4_lut_adj_96 (.I0(n6_adj_753), .I1(n13_adj_748), .I2(n12_adj_744), 
            .I3(n14_adj_741), .O(n20_adj_754));   // ../tok.v(107[7] 123[14])
    defparam i9_4_lut_adj_96.LUT_INIT = 16'hfffe;
    SB_LUT4 tc_7__I_0_9_lut (.I0(GND_net), .I1(c_stk_w_7__N_18[7]), .I2(GND_net), 
            .I3(n3901), .O(tc_plus_1[7])) /* synthesis syn_instantiated=1 */ ;
    defparam tc_7__I_0_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4673_4_lut (.I0(n4656), .I1(n20_adj_754), .I2(n16_adj_751), 
            .I3(n9_adj_749), .O(n4653));   // ../tok.v(105[10] 124[8])
    defparam i4673_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 idx_7__I_0_5_lut (.I0(idx[3]), .I1(idx[3]), .I2(found_slot), 
            .I3(n3890), .O(n257[3])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_5_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 A__15__I_0_i16_4_lut (.I0(S[15]), .I1(n4653), .I2(n23_c), 
            .I3(n4051), .O(A_[15]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i16_4_lut.LUT_INIT = 16'hcafa;
    SB_CARRY idx_7__I_0_3 (.CI(n3888), .I0(idx[1]), .I1(found_slot), .CO(n3889));
    SB_CARRY idx_7__I_0_5 (.CI(n3890), .I0(idx[3]), .I1(found_slot), .CO(n3891));
    SB_LUT4 i4585_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_743), 
            .I3(GND_net), .O(n4688));   // ../tok.v(139[5] 146[14])
    defparam i4585_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i2_4_lut_adj_97 (.I0(key_rd[1]), .I1(key_rd[4]), .I2(A_low[1]), 
            .I3(A_low[4]), .O(n18_adj_756));   // ../tok.v(81[46:59])
    defparam i2_4_lut_adj_97.LUT_INIT = 16'h7bde;
    SB_LUT4 i125_4_lut_adj_98 (.I0(c_stk_r[5]), .I1(table_rd[5]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_742));   // ../tok.v(139[5] 146[14])
    defparam i125_4_lut_adj_98.LUT_INIT = 16'h0ac0;
    SB_LUT4 i1_2_lut_adj_99 (.I0(n14_adj_658), .I1(n2178), .I2(GND_net), 
            .I3(GND_net), .O(n109));
    defparam i1_2_lut_adj_99.LUT_INIT = 16'heeee;
    SB_DFFER A_i15 (.Q(A[14]), .C(clk), .E(n950), .D(A_[14]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i14 (.Q(A[13]), .C(clk), .E(n950), .D(A_[13]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i13 (.Q(A[12]), .C(clk), .E(n950), .D(A_[12]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i12 (.Q(A[11]), .C(clk), .E(n950), .D(A_[11]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i11 (.Q(A[10]), .C(clk), .E(n950), .D(A_[10]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i10 (.Q(A[9]), .C(clk), .E(n950), .D(A_[9]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFER A_i9 (.Q(A[8]), .C(clk), .E(n950), .D(A_[8]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFR idx_i7 (.Q(idx[7]), .C(clk), .D(idx_[7]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i2510_2_lut_3_lut_4_lut (.I0(stall), .I1(depth[2]), .I2(depth[3]), 
            .I3(n875), .O(n2562));
    defparam i2510_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFR idx_i6 (.Q(idx[6]), .C(clk), .D(idx_[6]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFR idx_i5 (.Q(idx[5]), .C(clk), .D(idx_[5]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFR idx_i4 (.Q(idx[4]), .C(clk), .D(idx_[4]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFR idx_i3 (.Q(idx[3]), .C(clk), .D(idx_[3]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFR idx_i2 (.Q(idx[2]), .C(clk), .D(idx_[2]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFR idx_i1 (.Q(idx[1]), .C(clk), .D(idx_[1]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFR depth_i3 (.Q(depth[3]), .C(clk), .D(depth_[3]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFR depth_i2 (.Q(depth[2]), .C(clk), .D(depth_[2]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFR depth_i1 (.Q(depth[1]), .C(clk), .D(depth_[1]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i27_4_lut_adj_100 (.I0(n1_adj_757), .I1(n4651), .I2(T[6]), 
            .I3(T[0]), .O(n13_adj_758));   // ../tok.v(139[5] 146[14])
    defparam i27_4_lut_adj_100.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_101 (.I0(n86), .I1(n802), .I2(tc_plus_1[5]), 
            .I3(n13_adj_758), .O(n10_adj_12));   // ../tok.v(139[5] 146[14])
    defparam i1_4_lut_adj_101.LUT_INIT = 16'heca0;
    SB_LUT4 equal_121_i11_2_lut_4_lut (.I0(T[0]), .I1(T[1]), .I2(T[2]), 
            .I3(T[3]), .O(n11));   // ../tok.v(109[9:12])
    defparam equal_121_i11_2_lut_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i1_2_lut_adj_102 (.I0(n14_adj_658), .I1(n11_adj_648), .I2(GND_net), 
            .I3(GND_net), .O(n101));
    defparam i1_2_lut_adj_102.LUT_INIT = 16'heeee;
    SB_LUT4 equal_117_i10_2_lut (.I0(T[2]), .I1(T[3]), .I2(GND_net), .I3(GND_net), 
            .O(n10_adj_675));   // ../tok.v(108[9:12])
    defparam equal_117_i10_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 equal_123_i10_2_lut (.I0(T[2]), .I1(T[3]), .I2(GND_net), .I3(GND_net), 
            .O(n10_adj_646));   // ../tok.v(109[9:12])
    defparam equal_123_i10_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i983_3_lut (.I0(S[7]), .I1(A__15__N_113[7]), .I2(n23_c), .I3(GND_net), 
            .O(n1050));   // ../tok.v(160[10] 167[10])
    defparam i983_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i125_4_lut_adj_103 (.I0(c_stk_r[6]), .I1(table_rd[6]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_735));   // ../tok.v(139[5] 146[14])
    defparam i125_4_lut_adj_103.LUT_INIT = 16'h0ac0;
    SB_LUT4 i4584_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_733), 
            .I3(GND_net), .O(n4627));   // ../tok.v(139[5] 146[14])
    defparam i4584_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 equal_119_i11_2_lut_4_lut (.I0(T[1]), .I1(T[0]), .I2(T[2]), 
            .I3(T[3]), .O(n11_adj_647));   // ../tok.v(108[9:12])
    defparam equal_119_i11_2_lut_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i1_2_lut_4_lut (.I0(depth[2]), .I1(depth[3]), .I2(depth[1]), 
            .I3(depth[0]), .O(A_stk_delta_1__N_4));   // ../tok.v(130[18:24])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i27_4_lut_adj_104 (.I0(n1_adj_760), .I1(n4649), .I2(T[6]), 
            .I3(T[0]), .O(n13_adj_761));   // ../tok.v(139[5] 146[14])
    defparam i27_4_lut_adj_104.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_105 (.I0(n101), .I1(n109), .I2(uart_tx_busy), 
            .I3(uart_rx_valid), .O(uart_stall));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_105.LUT_INIT = 16'h5073;
    SB_LUT4 tc_7__I_0_2_lut (.I0(GND_net), .I1(c_stk_w_7__N_18[0]), .I2(GND_net), 
            .I3(VCC_net), .O(tc_plus_1[0])) /* synthesis syn_instantiated=1 */ ;
    defparam tc_7__I_0_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4329_2_lut_3_lut (.I0(T[0]), .I1(T[1]), .I2(n14_adj_650), 
            .I3(GND_net), .O(n4478));
    defparam i4329_2_lut_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 i1_4_lut_adj_106 (.I0(n86), .I1(n802), .I2(tc_plus_1[6]), 
            .I3(n13_adj_761), .O(n92_adj_13));   // ../tok.v(139[5] 146[14])
    defparam i1_4_lut_adj_106.LUT_INIT = 16'heca0;
    SB_LUT4 select_73_Select_7_i2_2_lut (.I0(n200[7]), .I1(n2726), .I2(GND_net), 
            .I3(GND_net), .O(n2_adj_763));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_7_i2_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i2_4_lut_adj_107 (.I0(n884), .I1(n10_adj_764), .I2(n892), 
            .I3(A_low[7]), .O(n13_adj_765));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_107.LUT_INIT = 16'hcfdd;
    SB_LUT4 inv_106_i5_1_lut (.I0(A_low[4]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[4]));   // ../tok.v(115[20:22])
    defparam inv_106_i5_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_106_i6_1_lut (.I0(A_low[5]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[5]));   // ../tok.v(115[20:22])
    defparam inv_106_i6_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_106_i7_1_lut (.I0(A_low[6]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[6]));   // ../tok.v(115[20:22])
    defparam inv_106_i7_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i25_1_lut (.I0(n2726), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n82));   // ../tok.v(107[7] 123[14])
    defparam i25_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_106_i8_1_lut (.I0(A_low[7]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[7]));   // ../tok.v(115[20:22])
    defparam inv_106_i8_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_106_i9_1_lut (.I0(A[8]), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n286[8]));   // ../tok.v(115[20:22])
    defparam inv_106_i9_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_106_i10_1_lut (.I0(A[9]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[9]));   // ../tok.v(115[20:22])
    defparam inv_106_i10_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_106_i11_1_lut (.I0(A[10]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[10]));   // ../tok.v(115[20:22])
    defparam inv_106_i11_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_4_lut_adj_108 (.I0(uart_rx_data[7]), .I1(n173[7]), .I2(n109), 
            .I3(n2635), .O(n12_adj_766));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_108.LUT_INIT = 16'h0ace;
    SB_LUT4 inv_106_i12_1_lut (.I0(A[11]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[11]));   // ../tok.v(115[20:22])
    defparam inv_106_i12_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 inv_106_i13_1_lut (.I0(A[12]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[12]));   // ../tok.v(115[20:22])
    defparam inv_106_i13_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i7_4_lut_adj_109 (.I0(n13_adj_765), .I1(S[7]), .I2(n2_adj_763), 
            .I3(n2616), .O(n18_adj_767));   // ../tok.v(107[7] 123[14])
    defparam i7_4_lut_adj_109.LUT_INIT = 16'hfafe;
    SB_LUT4 inv_106_i14_1_lut (.I0(A[13]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[13]));   // ../tok.v(115[20:22])
    defparam inv_106_i14_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i5_3_lut_adj_110 (.I0(n6_adj_768), .I1(table_rd[7]), .I2(n132), 
            .I3(GND_net), .O(n16_adj_769));   // ../tok.v(107[7] 123[14])
    defparam i5_3_lut_adj_110.LUT_INIT = 16'haeae;
    SB_LUT4 i9_4_lut_adj_111 (.I0(A[15]), .I1(n18_adj_767), .I2(n12_adj_766), 
            .I3(n101), .O(n20_adj_770));   // ../tok.v(107[7] 123[14])
    defparam i9_4_lut_adj_111.LUT_INIT = 16'hfcfe;
    SB_LUT4 i4_4_lut_adj_112 (.I0(n5_adj_752), .I1(A_low[2]), .I2(n83), 
            .I3(T[7]), .O(n15_adj_771));   // ../tok.v(107[7] 123[14])
    defparam i4_4_lut_adj_112.LUT_INIT = 16'hbaea;
    SB_LUT4 i1_4_lut_adj_113 (.I0(n20_adj_772), .I1(T[7]), .I2(n875), 
            .I3(T[3]), .O(n4446));   // ../tok.v(104[8:16])
    defparam i1_4_lut_adj_113.LUT_INIT = 16'hfeff;
    SB_LUT4 i4325_2_lut (.I0(depth[2]), .I1(depth[1]), .I2(GND_net), .I3(GND_net), 
            .O(n4474));
    defparam i4325_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_114 (.I0(n4051), .I1(n15_adj_771), .I2(n20_adj_770), 
            .I3(n16_adj_769), .O(A__15__N_113[7]));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_114.LUT_INIT = 16'hfffd;
    SB_LUT4 inv_106_i15_1_lut (.I0(A[14]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[14]));   // ../tok.v(115[20:22])
    defparam inv_106_i15_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY add_104_9 (.CI(n3931), .I0(A_low[7]), .I1(S[7]), .CO(n3932));
    SB_LUT4 inv_106_i16_1_lut (.I0(A[15]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[15]));   // ../tok.v(115[20:22])
    defparam inv_106_i16_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_104_8_lut (.I0(n399), .I1(A_low[6]), .I2(S[6]), .I3(n3930), 
            .O(n5_adj_773)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_8_lut.LUT_INIT = 16'h8228;
    SB_CARRY sub_105_add_2_4 (.CI(n3911), .I0(S[2]), .I1(n286[2]), .CO(n3912));
    SB_LUT4 i1_4_lut_adj_115 (.I0(n847), .I1(depth[0]), .I2(n4474), .I3(depth[3]), 
            .O(n802));
    defparam i1_4_lut_adj_115.LUT_INIT = 16'h0002;
    SB_LUT4 i4632_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_721), 
            .I3(GND_net), .O(n4692));   // ../tok.v(139[5] 146[14])
    defparam i4632_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 sub_105_inv_0_i1_1_lut (.I0(A_low[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n38[0]));   // ../tok.v(114[20:25])
    defparam sub_105_inv_0_i1_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 equal_154_i16_3_lut_4_lut (.I0(T[1]), .I1(T[0]), .I2(n14_adj_658), 
            .I3(n10_c), .O(n399));   // ../tok.v(113[9:12])
    defparam equal_154_i16_3_lut_4_lut.LUT_INIT = 16'h0008;
    SB_LUT4 inv_106_i2_1_lut (.I0(A_low[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[1]));   // ../tok.v(115[20:22])
    defparam inv_106_i2_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 A__15__I_16_i8_3_lut (.I0(A__15__N_113[7]), .I1(A_low[7]), .I2(A__15__N_129), 
            .I3(GND_net), .O(A__15__N_84[7]));   // ../tok.v(106[10] 124[8])
    defparam A__15__I_16_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_104_8 (.CI(n3930), .I0(A_low[6]), .I1(S[6]), .CO(n3931));
    SB_LUT4 add_104_7_lut (.I0(n399), .I1(A_low[5]), .I2(S[5]), .I3(n3929), 
            .O(n5_adj_775)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_7_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1_4_lut_adj_116 (.I0(n127), .I1(n101_adj_776), .I2(T[4]), 
            .I3(T[2]), .O(n4394));   // ../tok.v(139[5] 146[14])
    defparam i1_4_lut_adj_116.LUT_INIT = 16'hafee;
    SB_LUT4 A__15__I_0_i8_3_lut (.I0(S[7]), .I1(A__15__N_84[7]), .I2(n23_c), 
            .I3(GND_net), .O(A_[7]));   // ../tok.v(105[10] 124[8])
    defparam A__15__I_0_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8_1_lut_2_lut_4_lut (.I0(T[0]), .I1(T[1]), .I2(T[2]), .I3(T[3]), 
            .O(n8_adj_777));   // ../tok.v(110[9:12])
    defparam i8_1_lut_2_lut_4_lut.LUT_INIT = 16'h2000;
    SB_DFFS tc_i1 (.Q(c_stk_w_7__N_18[1]), .C(clk), .D(n1194), .S(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFS tc_i2 (.Q(c_stk_w_7__N_18[2]), .C(clk), .D(n1193), .S(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFS tc_i3 (.Q(c_stk_w_7__N_18[3]), .C(clk), .D(n1192), .S(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFS tc_i4 (.Q(c_stk_w_7__N_18[4]), .C(clk), .D(n1191), .S(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFS tc_i5 (.Q(c_stk_w_7__N_18[5]), .C(clk), .D(n1190), .S(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_DFFS tc_i6 (.Q(c_stk_w_7__N_18[6]), .C(clk), .D(n1189), .S(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_CARRY tc_7__I_0_2 (.CI(VCC_net), .I0(c_stk_w_7__N_18[0]), .I1(GND_net), 
            .CO(n3895));
    SB_DFFS tc_i7 (.Q(c_stk_w_7__N_18[7]), .C(clk), .D(n1180), .S(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i4_4_lut_adj_117 (.I0(n200[6]), .I1(n173[6]), .I2(n2726), 
            .I3(n2635), .O(n16_adj_778));   // ../tok.v(107[7] 123[14])
    defparam i4_4_lut_adj_117.LUT_INIT = 16'h0ace;
    SB_LUT4 i4631_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_716), 
            .I3(GND_net), .O(n4690));   // ../tok.v(139[5] 146[14])
    defparam i4631_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i2562_3_lut_4_lut (.I0(n2586), .I1(n4478), .I2(n11), .I3(n14_adj_658), 
            .O(n2614));   // ../tok.v(117[9:12])
    defparam i2562_3_lut_4_lut.LUT_INIT = 16'hddd0;
    SB_LUT4 i2_3_lut_adj_118 (.I0(A_low[6]), .I1(n884), .I2(n892), .I3(GND_net), 
            .O(n14_adj_779));   // ../tok.v(107[7] 123[14])
    defparam i2_3_lut_adj_118.LUT_INIT = 16'h1b1b;
    SB_LUT4 i8_4_lut_adj_119 (.I0(n6_adj_780), .I1(n16_adj_778), .I2(table_rd[6]), 
            .I3(n132), .O(n20_adj_781));   // ../tok.v(107[7] 123[14])
    defparam i8_4_lut_adj_119.LUT_INIT = 16'heefe;
    SB_LUT4 xor_103_i7_2_lut (.I0(A_low[1]), .I1(T[6]), .I2(GND_net), 
            .I3(GND_net), .O(n234[6]));   // ../tok.v(111[69:88])
    defparam xor_103_i7_2_lut.LUT_INIT = 16'h6666;
    SB_DFFS tc_i0 (.Q(c_stk_w_7__N_18[0]), .C(clk), .D(n4178), .S(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i6_4_lut_adj_120 (.I0(S[6]), .I1(uart_rx_data[6]), .I2(n2616), 
            .I3(n109), .O(n18_adj_782));   // ../tok.v(107[7] 123[14])
    defparam i6_4_lut_adj_120.LUT_INIT = 16'h0ace;
    SB_LUT4 i10_4_lut_adj_121 (.I0(n10_adj_783), .I1(n20_adj_781), .I2(n14_adj_779), 
            .I3(n5_adj_773), .O(n22_adj_784));   // ../tok.v(107[7] 123[14])
    defparam i10_4_lut_adj_121.LUT_INIT = 16'hfffe;
    SB_DFFR depth_i0 (.Q(depth[0]), .C(clk), .D(depth_[0]), .R(reset_N_2));   // ../tok.v(160[10] 167[10])
    SB_LUT4 i5_4_lut_adj_122 (.I0(A[14]), .I1(n234[6]), .I2(n101), .I3(n83), 
            .O(n17_adj_785));   // ../tok.v(107[7] 123[14])
    defparam i5_4_lut_adj_122.LUT_INIT = 16'hce0a;
    SB_LUT4 i1_4_lut_adj_123 (.I0(n4051), .I1(n17_adj_785), .I2(n22_adj_784), 
            .I3(n18_adj_782), .O(A__15__N_113[6]));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_123.LUT_INIT = 16'hfffd;
    SB_LUT4 sub_105_add_2_3_lut (.I0(n8_adj_777), .I1(S[1]), .I2(n286[1]), 
            .I3(n3910), .O(n10_adj_786)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_3_lut.LUT_INIT = 16'h8228;
    SB_CARRY sub_105_add_2_3 (.CI(n3910), .I0(S[1]), .I1(n286[1]), .CO(n3911));
    SB_CARRY add_104_7 (.CI(n3929), .I0(A_low[5]), .I1(S[5]), .CO(n3930));
    SB_LUT4 idx_7__I_0_9_lut (.I0(idx[7]), .I1(idx[7]), .I2(found_slot), 
            .I3(n3894), .O(n257[7])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_9_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_104_6_lut (.I0(n399), .I1(A_low[4]), .I2(S[4]), .I3(n3928), 
            .O(n13_adj_787)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_6_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_109_17_lut (.I0(write_flag), .I1(S[15]), .I2(GND_net), 
            .I3(n3954), .O(n4656)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_17_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i4634_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_704), 
            .I3(GND_net), .O(n4694));   // ../tok.v(139[5] 146[14])
    defparam i4634_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i3_4_lut_adj_124 (.I0(T[5]), .I1(n4394), .I2(n2177), .I3(n4446), 
            .O(n86));   // ../tok.v(139[5] 146[14])
    defparam i3_4_lut_adj_124.LUT_INIT = 16'hffdf;
    SB_CARRY add_104_6 (.CI(n3928), .I0(A_low[4]), .I1(S[4]), .CO(n3929));
    SB_LUT4 add_104_5_lut (.I0(n399), .I1(A_low[3]), .I2(S[3]), .I3(n3927), 
            .O(n23_adj_788)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_5_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_104_5 (.CI(n3927), .I0(A_low[3]), .I1(S[3]), .CO(n3928));
    SB_LUT4 sub_105_add_2_2_lut (.I0(n400), .I1(S[0]), .I2(n38[0]), .I3(VCC_net), 
            .O(n6_adj_684)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 tc_7__I_0_8_lut (.I0(GND_net), .I1(c_stk_w_7__N_18[6]), .I2(GND_net), 
            .I3(n3900), .O(tc_plus_1[6])) /* synthesis syn_instantiated=1 */ ;
    defparam tc_7__I_0_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_104_4_lut (.I0(n399), .I1(A_low[2]), .I2(S[2]), .I3(n3926), 
            .O(n5_adj_789)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_4_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i985_3_lut (.I0(S[6]), .I1(A__15__N_113[6]), .I2(n23_c), .I3(GND_net), 
            .O(n1052));   // ../tok.v(160[10] 167[10])
    defparam i985_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_104_4 (.CI(n3926), .I0(A_low[2]), .I1(S[2]), .CO(n3927));
    SB_LUT4 add_109_16_lut (.I0(write_flag), .I1(S[14]), .I2(GND_net), 
            .I3(n3953), .O(n4661)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_16_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_109_16 (.CI(n3953), .I0(S[14]), .I1(GND_net), .CO(n3954));
    SB_LUT4 add_104_3_lut (.I0(n399), .I1(A_low[1]), .I2(S[1]), .I3(n3925), 
            .O(n4_adj_790)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_3_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_109_15_lut (.I0(write_flag), .I1(S[13]), .I2(GND_net), 
            .I3(n3952), .O(n10_adj_705)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_15_lut.LUT_INIT = 16'h8228;
    SB_CARRY sub_105_add_2_2 (.CI(VCC_net), .I0(S[0]), .I1(n38[0]), .CO(n3910));
    SB_CARRY add_104_3 (.CI(n3925), .I0(A_low[1]), .I1(S[1]), .CO(n3926));
    SB_CARRY add_109_15 (.CI(n3952), .I0(S[13]), .I1(GND_net), .CO(n3953));
    SB_LUT4 i1_2_lut_adj_125 (.I0(T[4]), .I1(T[1]), .I2(GND_net), .I3(GND_net), 
            .O(n101_adj_776));   // ../tok.v(139[5] 146[14])
    defparam i1_2_lut_adj_125.LUT_INIT = 16'heeee;
    SB_LUT4 T_7__I_0_233_i14_2_lut_3_lut_4_lut (.I0(T[6]), .I1(T[7]), .I2(T[4]), 
            .I3(T[5]), .O(n14_adj_658));   // ../tok.v(108[9:12])
    defparam T_7__I_0_233_i14_2_lut_3_lut_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i4403_3_lut_4_lut (.I0(T[2]), .I1(T[3]), .I2(T[0]), .I3(GND_net), 
            .O(n4558));
    defparam i4403_3_lut_4_lut.LUT_INIT = 16'hdfdf;
    SB_LUT4 add_104_2_lut (.I0(n399), .I1(A_low[0]), .I2(S[0]), .I3(GND_net), 
            .O(n5_adj_682)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i12_4_lut_adj_126 (.I0(A[11]), .I1(A[9]), .I2(A[14]), .I3(A[15]), 
            .O(n28_adj_791));   // ../tok.v(144[37:38])
    defparam i12_4_lut_adj_126.LUT_INIT = 16'hfffe;
    SB_LUT4 add_109_14_lut (.I0(write_flag), .I1(S[12]), .I2(GND_net), 
            .I3(n3951), .O(n10_adj_697)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_14_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i4315_2_lut_4_lut (.I0(T[2]), .I1(T[3]), .I2(T[1]), .I3(T[0]), 
            .O(n4464));
    defparam i4315_2_lut_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i10_4_lut_adj_127 (.I0(A[8]), .I1(A_low[3]), .I2(A[13]), .I3(A_low[5]), 
            .O(n26_adj_792));   // ../tok.v(144[37:38])
    defparam i10_4_lut_adj_127.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_128 (.I0(A[10]), .I1(A_low[2]), .I2(A[12]), 
            .I3(A_low[7]), .O(n27_adj_793));   // ../tok.v(144[37:38])
    defparam i11_4_lut_adj_128.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut_adj_129 (.I0(A_low[0]), .I1(A_low[1]), .I2(A_low[6]), 
            .I3(A_low[4]), .O(n25_adj_794));   // ../tok.v(144[37:38])
    defparam i9_4_lut_adj_129.LUT_INIT = 16'hfffe;
    SB_CARRY add_109_14 (.CI(n3951), .I0(S[12]), .I1(GND_net), .CO(n3952));
    SB_CARRY add_104_2 (.CI(GND_net), .I0(A_low[0]), .I1(S[0]), .CO(n3925));
    SB_LUT4 sub_100_add_2_10_lut (.I0(GND_net), .I1(GND_net), .I2(VCC_net), 
            .I3(n3909), .O(n190[8])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_100_add_2_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_105_add_2_17_lut (.I0(n400), .I1(S[15]), .I2(n286[15]), 
            .I3(n3924), .O(n6_adj_753)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_17_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i15_4_lut (.I0(n25_adj_794), .I1(n27_adj_793), .I2(n26_adj_792), 
            .I3(n28_adj_791), .O(tc__7__N_134));   // ../tok.v(144[37:38])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_130 (.I0(T[1]), .I1(T[4]), .I2(GND_net), .I3(GND_net), 
            .O(n4_adj_795));   // ../tok.v(139[5] 146[14])
    defparam i1_2_lut_adj_130.LUT_INIT = 16'h8888;
    SB_LUT4 i1_3_lut_3_lut (.I0(T[0]), .I1(T[1]), .I2(T[3]), .I3(GND_net), 
            .O(n4460));
    defparam i1_3_lut_3_lut.LUT_INIT = 16'hf9f9;
    SB_LUT4 add_109_13_lut (.I0(write_flag), .I1(S[11]), .I2(GND_net), 
            .I3(n3950), .O(n4674)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_13_lut.LUT_INIT = 16'h8228;
    SB_CARRY tc_7__I_0_8 (.CI(n3900), .I0(c_stk_w_7__N_18[6]), .I1(GND_net), 
            .CO(n3901));
    SB_LUT4 sub_100_add_2_9_lut (.I0(A_low[3]), .I1(T[7]), .I2(VCC_net), 
            .I3(n3908), .O(n200[7])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_100_add_2_9_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 i125_4_lut_adj_131 (.I0(c_stk_r[7]), .I1(table_rd[7]), .I2(T[1]), 
            .I3(T[0]), .O(n83_adj_796));   // ../tok.v(139[5] 146[14])
    defparam i125_4_lut_adj_131.LUT_INIT = 16'h0ac0;
    SB_CARRY add_109_13 (.CI(n3950), .I0(S[11]), .I1(GND_net), .CO(n3951));
    SB_LUT4 add_109_12_lut (.I0(write_flag), .I1(S[10]), .I2(GND_net), 
            .I3(n3949), .O(n10_adj_671)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_12_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_105_add_2_16_lut (.I0(n400), .I1(S[14]), .I2(n286[14]), 
            .I3(n3923), .O(n6_adj_731)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_16_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_109_12 (.CI(n3949), .I0(S[10]), .I1(GND_net), .CO(n3950));
    SB_LUT4 idx_7__I_0_8_lut (.I0(idx[6]), .I1(idx[6]), .I2(found_slot), 
            .I3(n3893), .O(n257[6])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_8_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY sub_105_add_2_16 (.CI(n3923), .I0(S[14]), .I1(n286[14]), 
            .CO(n3924));
    SB_LUT4 tc_7__I_0_7_lut (.I0(GND_net), .I1(c_stk_w_7__N_18[5]), .I2(GND_net), 
            .I3(n3899), .O(tc_plus_1[5])) /* synthesis syn_instantiated=1 */ ;
    defparam tc_7__I_0_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_109_11_lut (.I0(n9_adj_797), .I1(S[9]), .I2(GND_net), 
            .I3(n3948), .O(n10_adj_656)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_11_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_105_add_2_15_lut (.I0(n400), .I1(S[13]), .I2(n286[13]), 
            .I3(n3922), .O(n6_adj_711)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_15_lut.LUT_INIT = 16'h8228;
    SB_CARRY sub_105_add_2_15 (.CI(n3922), .I0(S[13]), .I1(n286[13]), 
            .CO(n3923));
    SB_CARRY sub_100_add_2_9 (.CI(n3908), .I0(T[7]), .I1(VCC_net), .CO(n3909));
    SB_CARRY tc_7__I_0_7 (.CI(n3899), .I0(c_stk_w_7__N_18[5]), .I1(GND_net), 
            .CO(n3900));
    SB_LUT4 i27_4_lut_adj_132 (.I0(n1_adj_798), .I1(n4602), .I2(T[6]), 
            .I3(T[0]), .O(n13_adj_799));   // ../tok.v(139[5] 146[14])
    defparam i27_4_lut_adj_132.LUT_INIT = 16'hcac0;
    SB_LUT4 sub_100_add_2_8_lut (.I0(A_low[2]), .I1(T[6]), .I2(VCC_net), 
            .I3(n3907), .O(n200[6])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_100_add_2_8_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 sub_105_add_2_14_lut (.I0(n400), .I1(S[12]), .I2(n286[12]), 
            .I3(n3921), .O(n6_adj_701)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_14_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1_4_lut_adj_133 (.I0(n86), .I1(n802), .I2(tc_plus_1[7]), 
            .I3(n13_adj_799), .O(n92_adj_14));   // ../tok.v(139[5] 146[14])
    defparam i1_4_lut_adj_133.LUT_INIT = 16'heca0;
    SB_LUT4 i2_2_lut_4_lut (.I0(found_slot), .I1(n14_adj_658), .I2(n11), 
            .I3(n11_adj_647), .O(write_slot));   // ../tok.v(83[21:57])
    defparam i2_2_lut_4_lut.LUT_INIT = 16'h0222;
    SB_LUT4 i5_4_lut_adj_134 (.I0(n284), .I1(n12_adj_740), .I2(T[1]), 
            .I3(n2562), .O(n12_adj_801));
    defparam i5_4_lut_adj_134.LUT_INIT = 16'h0080;
    SB_LUT4 i1_2_lut_adj_135 (.I0(depth[1]), .I1(depth[0]), .I2(GND_net), 
            .I3(GND_net), .O(n875));   // ../tok.v(130[18:24])
    defparam i1_2_lut_adj_135.LUT_INIT = 16'heeee;
    SB_CARRY sub_100_add_2_8 (.CI(n3907), .I0(T[6]), .I1(VCC_net), .CO(n3908));
    SB_CARRY sub_105_add_2_14 (.CI(n3921), .I0(S[12]), .I1(n286[12]), 
            .CO(n3922));
    SB_CARRY add_109_11 (.CI(n3948), .I0(S[9]), .I1(GND_net), .CO(n3949));
    SB_LUT4 sub_105_add_2_13_lut (.I0(n400), .I1(S[11]), .I2(n286[11]), 
            .I3(n3920), .O(n6_adj_692)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_13_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_109_10_lut (.I0(write_flag), .I1(S[8]), .I2(GND_net), 
            .I3(n3947), .O(n10_adj_652)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_10_lut.LUT_INIT = 16'h8228;
    SB_CARRY idx_7__I_0_8 (.CI(n3893), .I0(idx[6]), .I1(found_slot), .CO(n3894));
    SB_LUT4 equal_142_i20_2_lut (.I0(depth[2]), .I1(depth[3]), .I2(GND_net), 
            .I3(GND_net), .O(n20_adj_772));   // ../tok.v(104[8:16])
    defparam equal_142_i20_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY sub_105_add_2_13 (.CI(n3920), .I0(S[11]), .I1(n286[11]), 
            .CO(n3921));
    SB_LUT4 sub_105_add_2_12_lut (.I0(n400), .I1(S[10]), .I2(n286[10]), 
            .I3(n3919), .O(n6_adj_676)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_12_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_100_add_2_7_lut (.I0(A_low[1]), .I1(T[5]), .I2(GND_net), 
            .I3(n3906), .O(n200[5])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_100_add_2_7_lut.LUT_INIT = 16'hebbe;
    SB_CARRY add_109_10 (.CI(n3947), .I0(S[8]), .I1(GND_net), .CO(n3948));
    SB_LUT4 i2_4_lut_4_lut (.I0(depth[0]), .I1(A_stk_delta_1__N_4), .I2(n1_adj_802), 
            .I3(depth[1]), .O(depth_[1]));   // ../tok.v(130[5] 134[14])
    defparam i2_4_lut_4_lut.LUT_INIT = 16'h9f60;
    SB_CARRY sub_105_add_2_12 (.CI(n3919), .I0(S[10]), .I1(n286[10]), 
            .CO(n3920));
    SB_LUT4 add_109_9_lut (.I0(write_flag), .I1(S[7]), .I2(GND_net), .I3(n3946), 
            .O(n10_adj_764)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_9_lut.LUT_INIT = 16'h8228;
    SB_CARRY sub_100_add_2_7 (.CI(n3906), .I0(T[5]), .I1(GND_net), .CO(n3907));
    SB_LUT4 sub_100_add_2_6_lut (.I0(A_low[0]), .I1(T[4]), .I2(GND_net), 
            .I3(n3905), .O(n36)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_100_add_2_6_lut.LUT_INIT = 16'hebbe;
    SB_LUT4 tc_7__I_0_6_lut (.I0(GND_net), .I1(c_stk_w_7__N_18[4]), .I2(GND_net), 
            .I3(n3898), .O(tc_plus_1[4])) /* synthesis syn_instantiated=1 */ ;
    defparam tc_7__I_0_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10_4_lut_adj_136 (.I0(key_rd[8]), .I1(n20_adj_803), .I2(n14_adj_804), 
            .I3(A[8]), .O(n26_adj_805));   // ../tok.v(81[46:59])
    defparam i10_4_lut_adj_136.LUT_INIT = 16'hfdfe;
    SB_LUT4 i4710_2_lut (.I0(n14_adj_658), .I1(n11_adj_649), .I2(GND_net), 
            .I3(GND_net), .O(write_flag));
    defparam i4710_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 sub_105_add_2_11_lut (.I0(n8_adj_777), .I1(S[9]), .I2(n286[9]), 
            .I3(n3918), .O(n13_adj_657)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_11_lut.LUT_INIT = 16'h8228;
    SB_CARRY sub_105_add_2_11 (.CI(n3918), .I0(S[9]), .I1(n286[9]), .CO(n3919));
    SB_LUT4 sub_105_add_2_10_lut (.I0(n400), .I1(S[8]), .I2(n286[8]), 
            .I3(n3917), .O(n6_adj_653)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_10_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_109_9 (.CI(n3946), .I0(S[7]), .I1(GND_net), .CO(n3947));
    SB_LUT4 add_109_8_lut (.I0(write_flag), .I1(S[6]), .I2(GND_net), .I3(n3945), 
            .O(n10_adj_783)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_8_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i26_3_lut (.I0(n92_adj_14), .I1(c_stk_w_7__N_18[7]), .I2(stall_), 
            .I3(GND_net), .O(tc_[7]));   // ../tok.v(139[5] 146[14])
    defparam i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4604_2_lut_3_lut (.I0(T[2]), .I1(T[4]), .I2(n83_adj_796), 
            .I3(GND_net), .O(n4602));   // ../tok.v(139[5] 146[14])
    defparam i4604_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 or_99_i8_3_lut_4_lut (.I0(T[6]), .I1(n284), .I2(T[7]), .I3(A_low[3]), 
            .O(n173[7]));
    defparam or_99_i8_3_lut_4_lut.LUT_INIT = 16'hffe1;
    SB_CARRY add_109_8 (.CI(n3945), .I0(S[6]), .I1(GND_net), .CO(n3946));
    SB_LUT4 i26_3_lut_adj_137 (.I0(n92_adj_13), .I1(c_stk_w_7__N_18[6]), 
            .I2(stall_), .I3(GND_net), .O(tc_[6]));   // ../tok.v(139[5] 146[14])
    defparam i26_3_lut_adj_137.LUT_INIT = 16'hcaca;
    SB_CARRY sub_105_add_2_10 (.CI(n3917), .I0(S[8]), .I1(n286[8]), .CO(n3918));
    SB_CARRY tc_7__I_0_6 (.CI(n3898), .I0(c_stk_w_7__N_18[4]), .I1(GND_net), 
            .CO(n3899));
    SB_LUT4 add_109_7_lut (.I0(write_flag), .I1(S[5]), .I2(GND_net), .I3(n3944), 
            .O(n10_adj_806)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_7_lut.LUT_INIT = 16'h8228;
    SB_CARRY sub_100_add_2_6 (.CI(n3905), .I0(T[4]), .I1(GND_net), .CO(n3906));
    SB_LUT4 i26_3_lut_adj_138 (.I0(n10_adj_12), .I1(c_stk_w_7__N_18[5]), 
            .I2(stall_), .I3(GND_net), .O(tc_[5]));   // ../tok.v(139[5] 146[14])
    defparam i26_3_lut_adj_138.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_105_add_2_9_lut (.I0(n400), .I1(S[7]), .I2(n286[7]), .I3(n3916), 
            .O(n6_adj_768)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_9_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_109_7 (.CI(n3944), .I0(S[5]), .I1(GND_net), .CO(n3945));
    SB_CARRY sub_105_add_2_9 (.CI(n3916), .I0(S[7]), .I1(n286[7]), .CO(n3917));
    SB_LUT4 add_109_6_lut (.I0(n9_adj_797), .I1(S[4]), .I2(GND_net), .I3(n3943), 
            .O(n9_adj_807)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_6_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_100_add_2_5_lut (.I0(n82), .I1(T[3]), .I2(VCC_net), .I3(n3904), 
            .O(n26_adj_808)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_100_add_2_5_lut.LUT_INIT = 16'h8228;
    SB_CARRY sub_100_add_2_5 (.CI(n3904), .I0(T[3]), .I1(VCC_net), .CO(n3905));
    SB_CARRY add_109_6 (.CI(n3943), .I0(S[4]), .I1(GND_net), .CO(n3944));
    SB_LUT4 i1_4_lut_4_lut (.I0(depth[1]), .I1(A_stk_delta_1__N_4), .I2(n1_adj_802), 
            .I3(depth[0]), .O(n4_adj_809));   // ../tok.v(130[5] 134[14])
    defparam i1_4_lut_4_lut.LUT_INIT = 16'he0a0;
    SB_LUT4 select_73_Select_5_i2_2_lut (.I0(n200[5]), .I1(n2726), .I2(GND_net), 
            .I3(GND_net), .O(n2_adj_810));   // ../tok.v(107[7] 123[14])
    defparam select_73_Select_5_i2_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i26_3_lut_adj_139 (.I0(n10_adj_11), .I1(c_stk_w_7__N_18[4]), 
            .I2(stall_), .I3(GND_net), .O(tc_[4]));   // ../tok.v(139[5] 146[14])
    defparam i26_3_lut_adj_139.LUT_INIT = 16'hcaca;
    SB_LUT4 tc_7__I_0_5_lut (.I0(GND_net), .I1(c_stk_w_7__N_18[3]), .I2(GND_net), 
            .I3(n3897), .O(tc_plus_1[3])) /* synthesis syn_instantiated=1 */ ;
    defparam tc_7__I_0_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_105_add_2_8_lut (.I0(n400), .I1(S[6]), .I2(n286[6]), .I3(n3915), 
            .O(n6_adj_780)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_8_lut.LUT_INIT = 16'h8228;
    SB_LUT4 sub_100_add_2_4_lut (.I0(n82), .I1(T[2]), .I2(GND_net), .I3(n3903), 
            .O(n2_adj_811)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_100_add_2_4_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_109_5_lut (.I0(n9_adj_797), .I1(S[3]), .I2(GND_net), .I3(n3942), 
            .O(n6_adj_812)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_5_lut.LUT_INIT = 16'h8228;
    SB_CARRY sub_100_add_2_4 (.CI(n3903), .I0(T[2]), .I1(GND_net), .CO(n3904));
    SB_LUT4 i2_4_lut_adj_140 (.I0(n884), .I1(n10_adj_806), .I2(n892), 
            .I3(A_low[5]), .O(n13_adj_813));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_140.LUT_INIT = 16'hcfdd;
    SB_LUT4 or_99_i6_3_lut (.I0(A_low[1]), .I1(T[5]), .I2(T[4]), .I3(GND_net), 
            .O(n173[5]));   // ../tok.v(108[56:76])
    defparam or_99_i6_3_lut.LUT_INIT = 16'hbebe;
    SB_CARRY sub_105_add_2_8 (.CI(n3915), .I0(S[6]), .I1(n286[6]), .CO(n3916));
    SB_LUT4 sub_105_add_2_7_lut (.I0(n400), .I1(S[5]), .I2(n286[5]), .I3(n3914), 
            .O(n6_adj_814)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_7_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i26_3_lut_adj_141 (.I0(n92_adj_10), .I1(c_stk_w_7__N_18[3]), 
            .I2(stall_), .I3(GND_net), .O(tc_[3]));   // ../tok.v(139[5] 146[14])
    defparam i26_3_lut_adj_141.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_142 (.I0(uart_rx_data[5]), .I1(n173[5]), .I2(n109), 
            .I3(n2635), .O(n12_adj_815));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_142.LUT_INIT = 16'h0ace;
    SB_LUT4 sub_100_add_2_3_lut (.I0(n82), .I1(T[1]), .I2(GND_net), .I3(n3902), 
            .O(n13_adj_816)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_100_add_2_3_lut.LUT_INIT = 16'h8228;
    SB_CARRY tc_7__I_0_5 (.CI(n3897), .I0(c_stk_w_7__N_18[3]), .I1(GND_net), 
            .CO(n3898));
    SB_CARRY sub_105_add_2_7 (.CI(n3914), .I0(S[5]), .I1(n286[5]), .CO(n3915));
    SB_LUT4 tc_7__I_0_4_lut (.I0(GND_net), .I1(c_stk_w_7__N_18[2]), .I2(GND_net), 
            .I3(n3896), .O(tc_plus_1[2])) /* synthesis syn_instantiated=1 */ ;
    defparam tc_7__I_0_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 idx_7__I_0_7_lut (.I0(idx[5]), .I1(idx[5]), .I2(found_slot), 
            .I3(n3892), .O(n257[5])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_7_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_109_5 (.CI(n3942), .I0(S[3]), .I1(GND_net), .CO(n3943));
    SB_LUT4 i26_3_lut_adj_143 (.I0(n10_adj_9), .I1(c_stk_w_7__N_18[2]), 
            .I2(stall_), .I3(GND_net), .O(tc_[2]));   // ../tok.v(139[5] 146[14])
    defparam i26_3_lut_adj_143.LUT_INIT = 16'hcaca;
    SB_LUT4 add_109_4_lut (.I0(write_flag), .I1(S[2]), .I2(GND_net), .I3(n3941), 
            .O(n10_adj_818)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_4_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i7_4_lut_adj_144 (.I0(n13_adj_813), .I1(S[5]), .I2(n2_adj_810), 
            .I3(n2616), .O(n18_adj_819));   // ../tok.v(107[7] 123[14])
    defparam i7_4_lut_adj_144.LUT_INIT = 16'hfafe;
    SB_LUT4 i5_3_lut_adj_145 (.I0(n6_adj_814), .I1(table_rd[5]), .I2(n132), 
            .I3(GND_net), .O(n16_adj_820));   // ../tok.v(107[7] 123[14])
    defparam i5_3_lut_adj_145.LUT_INIT = 16'haeae;
    SB_CARRY add_109_4 (.CI(n3941), .I0(S[2]), .I1(GND_net), .CO(n3942));
    SB_LUT4 add_109_3_lut (.I0(n9_adj_797), .I1(S[1]), .I2(GND_net), .I3(n3940), 
            .O(n28_adj_821)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_3_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i9_4_lut_adj_146 (.I0(A[13]), .I1(n18_adj_819), .I2(n12_adj_815), 
            .I3(n101), .O(n20_adj_822));   // ../tok.v(107[7] 123[14])
    defparam i9_4_lut_adj_146.LUT_INIT = 16'hfcfe;
    SB_LUT4 i26_3_lut_adj_147 (.I0(n92), .I1(c_stk_w_7__N_18[1]), .I2(stall_), 
            .I3(GND_net), .O(tc_[1]));   // ../tok.v(139[5] 146[14])
    defparam i26_3_lut_adj_147.LUT_INIT = 16'hcaca;
    SB_LUT4 i26_3_lut_adj_148 (.I0(n10), .I1(c_stk_w_7__N_18[0]), .I2(stall_), 
            .I3(GND_net), .O(tc_[0]));   // ../tok.v(139[5] 146[14])
    defparam i26_3_lut_adj_148.LUT_INIT = 16'hcaca;
    SB_LUT4 i4_4_lut_adj_149 (.I0(n5_adj_775), .I1(A_low[0]), .I2(n83), 
            .I3(T[5]), .O(n15_adj_823));   // ../tok.v(107[7] 123[14])
    defparam i4_4_lut_adj_149.LUT_INIT = 16'hbaea;
    SB_LUT4 i14_4_lut (.I0(n21_adj_714), .I1(n23_adj_677), .I2(n22), .I3(n24), 
            .O(n30_adj_824));   // ../tok.v(81[46:59])
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_150 (.I0(T[1]), .I1(T[0]), .I2(GND_net), .I3(GND_net), 
            .O(n41));   // ../tok.v(139[5] 146[14])
    defparam i1_2_lut_adj_150.LUT_INIT = 16'h8888;
    SB_LUT4 equal_142_i14_2_lut_3_lut_4_lut (.I0(T[6]), .I1(T[7]), .I2(T[5]), 
            .I3(T[4]), .O(n14_adj_650));   // ../tok.v(109[9:12])
    defparam equal_142_i14_2_lut_3_lut_4_lut.LUT_INIT = 16'hdfff;
    SB_LUT4 i2570_2_lut_3_lut (.I0(n14_adj_658), .I1(n11_adj_647), .I2(S[15]), 
            .I3(GND_net), .O(table_wr_data[15]));   // ../tok.v(21[34:42])
    defparam i2570_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_CARRY add_109_3 (.CI(n3940), .I0(S[1]), .I1(GND_net), .CO(n3941));
    SB_LUT4 add_109_2_lut (.I0(write_flag), .I1(S[0]), .I2(GND_net), .I3(VCC_net), 
            .O(n10_adj_679)) /* synthesis syn_instantiated=1 */ ;
    defparam add_109_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1_4_lut_adj_151 (.I0(n4051), .I1(n15_adj_823), .I2(n20_adj_822), 
            .I3(n16_adj_820), .O(A__15__N_113[5]));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_151.LUT_INIT = 16'hfffd;
    SB_LUT4 i1_2_lut_4_lut_adj_152 (.I0(T[2]), .I1(T[3]), .I2(T[1]), .I3(T[0]), 
            .O(n2178));   // ../tok.v(108[9:12])
    defparam i1_2_lut_4_lut_adj_152.LUT_INIT = 16'hdfff;
    SB_LUT4 i2571_2_lut_3_lut (.I0(n14_adj_658), .I1(n11_adj_647), .I2(S[14]), 
            .I3(GND_net), .O(table_wr_data[14]));   // ../tok.v(21[34:42])
    defparam i2571_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_LUT4 i4599_4_lut (.I0(key_rd[0]), .I1(key_rd[6]), .I2(A_low[0]), 
            .I3(A_low[6]), .O(n4645));   // ../tok.v(80[22] 81[76])
    defparam i4599_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i6_4_lut_adj_153 (.I0(T[7]), .I1(n12_adj_801), .I2(T[6]), 
            .I3(T[3]), .O(n240));
    defparam i6_4_lut_adj_153.LUT_INIT = 16'h4000;
    SB_LUT4 i4567_4_lut (.I0(T[2]), .I1(T[4]), .I2(T[0]), .I3(T[1]), 
            .O(n4610));   // ../tok.v(61[5] 68[14])
    defparam i4567_4_lut.LUT_INIT = 16'h4880;
    SB_CARRY idx_7__I_0_4 (.CI(n3889), .I0(idx[2]), .I1(found_slot), .CO(n3890));
    SB_CARRY add_109_2 (.CI(VCC_net), .I0(S[0]), .I1(GND_net), .CO(n3940));
    SB_LUT4 i1_2_lut_4_lut_adj_154 (.I0(T[4]), .I1(T[6]), .I2(T[7]), .I3(T[5]), 
            .O(n14_adj_825));   // ../tok.v(109[9:12])
    defparam i1_2_lut_4_lut_adj_154.LUT_INIT = 16'hfffb;
    SB_LUT4 equal_120_i14_2_lut_3_lut_4_lut (.I0(T[6]), .I1(T[7]), .I2(T[5]), 
            .I3(T[4]), .O(n14_adj_702));   // ../tok.v(108[9:12])
    defparam equal_120_i14_2_lut_3_lut_4_lut.LUT_INIT = 16'hefff;
    SB_LUT4 i1_4_lut_4_lut_adj_155 (.I0(T[6]), .I1(T[1]), .I2(T[0]), .I3(T[2]), 
            .O(n7));
    defparam i1_4_lut_4_lut_adj_155.LUT_INIT = 16'hf77f;
    SB_LUT4 i2572_2_lut_3_lut (.I0(n14_adj_658), .I1(n11_adj_647), .I2(S[13]), 
            .I3(GND_net), .O(table_wr_data[13]));   // ../tok.v(21[34:42])
    defparam i2572_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_CARRY tc_7__I_0_4 (.CI(n3896), .I0(c_stk_w_7__N_18[2]), .I1(GND_net), 
            .CO(n3897));
    SB_CARRY idx_7__I_0_7 (.CI(n3892), .I0(idx[5]), .I1(found_slot), .CO(n3893));
    SB_LUT4 sub_105_add_2_6_lut (.I0(n8_adj_777), .I1(S[4]), .I2(n286[4]), 
            .I3(n3913), .O(n3_adj_826)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_6_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i987_3_lut (.I0(S[5]), .I1(A__15__N_113[5]), .I2(n23_c), .I3(GND_net), 
            .O(n1054));   // ../tok.v(160[10] 167[10])
    defparam i987_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i54_3_lut (.I0(n884), .I1(n892), .I2(A_low[4]), .I3(GND_net), 
            .O(n4502));   // ../tok.v(107[7] 123[14])
    defparam i54_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut_adj_156 (.I0(n9_adj_807), .I1(n11_adj_648), .I2(A[12]), 
            .I3(GND_net), .O(n6_adj_827));   // ../tok.v(107[7] 123[14])
    defparam i2_3_lut_adj_156.LUT_INIT = 16'hbaba;
    SB_LUT4 add_104_17_lut (.I0(n399), .I1(A[15]), .I2(S[15]), .I3(n3939), 
            .O(n5_adj_750)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_17_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i3_4_lut_adj_157 (.I0(n3_adj_826), .I1(n6_adj_827), .I2(n2178), 
            .I3(uart_rx_data[4]), .O(n33_adj_828));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_157.LUT_INIT = 16'hefee;
    SB_LUT4 add_104_16_lut (.I0(n399), .I1(A[14]), .I2(S[14]), .I3(n3938), 
            .O(n5_adj_729)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_16_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i2_4_lut_adj_158 (.I0(n83), .I1(n2616), .I2(T[4]), .I3(S[4]), 
            .O(n10_adj_829));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_158.LUT_INIT = 16'hb3a0;
    SB_LUT4 i4_4_lut_adj_159 (.I0(n2635), .I1(n4502), .I2(A_low[0]), .I3(T[4]), 
            .O(n12_adj_830));   // ../tok.v(107[7] 123[14])
    defparam i4_4_lut_adj_159.LUT_INIT = 16'h7377;
    SB_LUT4 i3_4_lut_adj_160 (.I0(n14_adj_658), .I1(n2726), .I2(n33_adj_828), 
            .I3(n36), .O(n11_adj_831));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_160.LUT_INIT = 16'h7350;
    SB_LUT4 A__15__I_16_i7_3_lut (.I0(A__15__N_113[6]), .I1(A_low[6]), .I2(A__15__N_129), 
            .I3(GND_net), .O(A_[6]));   // ../tok.v(106[10] 124[8])
    defparam A__15__I_16_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 A__15__I_16_i6_3_lut (.I0(A__15__N_113[5]), .I1(A_low[5]), .I2(A__15__N_129), 
            .I3(GND_net), .O(A_[5]));   // ../tok.v(106[10] 124[8])
    defparam A__15__I_16_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_161 (.I0(T[5]), .I1(T[4]), .I2(GND_net), .I3(GND_net), 
            .O(n6_adj_832));   // ../tok.v(87[5] 94[14])
    defparam i1_2_lut_adj_161.LUT_INIT = 16'h2222;
    SB_LUT4 i5_4_lut_adj_162 (.I0(n13_adj_787), .I1(n10_adj_829), .I2(n132), 
            .I3(table_rd[4]), .O(n13_adj_833));   // ../tok.v(107[7] 123[14])
    defparam i5_4_lut_adj_162.LUT_INIT = 16'hefee;
    SB_LUT4 i1_4_lut_adj_163 (.I0(n4051), .I1(n13_adj_833), .I2(n11_adj_831), 
            .I3(n12_adj_830), .O(A__15__N_113[4]));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_163.LUT_INIT = 16'hfffd;
    SB_LUT4 A__15__I_16_i5_3_lut (.I0(A__15__N_113[4]), .I1(A_low[4]), .I2(A__15__N_129), 
            .I3(GND_net), .O(A_[4]));   // ../tok.v(106[10] 124[8])
    defparam A__15__I_16_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2573_2_lut_3_lut (.I0(n14_adj_658), .I1(n11_adj_647), .I2(S[12]), 
            .I3(GND_net), .O(table_wr_data[12]));   // ../tok.v(21[34:42])
    defparam i2573_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_LUT4 A__15__I_16_i4_3_lut (.I0(A__15__N_113[3]), .I1(A_low[3]), .I2(A__15__N_129), 
            .I3(GND_net), .O(A_[3]));   // ../tok.v(106[10] 124[8])
    defparam A__15__I_16_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2574_2_lut_3_lut (.I0(n14_adj_658), .I1(n11_adj_647), .I2(S[11]), 
            .I3(GND_net), .O(table_wr_data[11]));   // ../tok.v(21[34:42])
    defparam i2574_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_CARRY add_104_16 (.CI(n3938), .I0(A[14]), .I1(S[14]), .CO(n3939));
    SB_LUT4 add_104_15_lut (.I0(n399), .I1(A[13]), .I2(S[13]), .I3(n3937), 
            .O(n5_adj_710)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_15_lut.LUT_INIT = 16'h8228;
    SB_LUT4 tc_7__I_0_3_lut (.I0(GND_net), .I1(c_stk_w_7__N_18[1]), .I2(GND_net), 
            .I3(n3895), .O(tc_plus_1[1])) /* synthesis syn_instantiated=1 */ ;
    defparam tc_7__I_0_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i5_4_lut_adj_164 (.I0(n4554), .I1(T[3]), .I2(n2177), .I3(n6_adj_832), 
            .O(n237));
    defparam i5_4_lut_adj_164.LUT_INIT = 16'h0100;
    SB_CARRY sub_100_add_2_3 (.CI(n3902), .I0(T[1]), .I1(GND_net), .CO(n3903));
    SB_CARRY sub_105_add_2_6 (.CI(n3913), .I0(S[4]), .I1(n286[4]), .CO(n3914));
    SB_LUT4 A__15__I_16_i3_3_lut (.I0(A__15__N_113[2]), .I1(A_low[2]), .I2(A__15__N_129), 
            .I3(GND_net), .O(A_[2]));   // ../tok.v(106[10] 124[8])
    defparam A__15__I_16_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2575_2_lut_3_lut (.I0(n14_adj_658), .I1(n11_adj_647), .I2(S[10]), 
            .I3(GND_net), .O(table_wr_data[10]));   // ../tok.v(21[34:42])
    defparam i2575_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_LUT4 sub_100_add_2_2_lut (.I0(n82), .I1(T[0]), .I2(GND_net), .I3(VCC_net), 
            .O(n2)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_100_add_2_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 A__15__I_16_i2_3_lut (.I0(A__15__N_113[1]), .I1(A_low[1]), .I2(A__15__N_129), 
            .I3(GND_net), .O(A_[1]));   // ../tok.v(106[10] 124[8])
    defparam A__15__I_16_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i989_3_lut (.I0(S[4]), .I1(A__15__N_113[4]), .I2(n23_c), .I3(GND_net), 
            .O(n1056));   // ../tok.v(160[10] 167[10])
    defparam i989_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 equal_130_i14_2_lut_3_lut_4_lut (.I0(T[6]), .I1(T[7]), .I2(T[4]), 
            .I3(T[5]), .O(n14));   // ../tok.v(109[9:12])
    defparam equal_130_i14_2_lut_3_lut_4_lut.LUT_INIT = 16'hfdff;
    SB_LUT4 A__15__I_16_i1_3_lut (.I0(A__15__N_113[0]), .I1(A_low[0]), .I2(A__15__N_129), 
            .I3(GND_net), .O(A_[0]));   // ../tok.v(106[10] 124[8])
    defparam A__15__I_16_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5_1_lut_2_lut_4_lut (.I0(T[1]), .I1(T[0]), .I2(T[2]), .I3(T[3]), 
            .O(n9_adj_797));   // ../tok.v(107[7] 123[14])
    defparam i5_1_lut_2_lut_4_lut.LUT_INIT = 16'h0008;
    SB_LUT4 i2_2_lut (.I0(T[2]), .I1(T[1]), .I2(GND_net), .I3(GND_net), 
            .O(n28_adj_834));   // ../tok.v(40[5] 51[14])
    defparam i2_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i4564_4_lut (.I0(T[4]), .I1(T[0]), .I2(n28_adj_834), .I3(T[3]), 
            .O(n4604));   // ../tok.v(40[5] 51[14])
    defparam i4564_4_lut.LUT_INIT = 16'h2000;
    SB_CARRY add_104_15 (.CI(n3937), .I0(A[13]), .I1(S[13]), .CO(n3938));
    SB_LUT4 i1_3_lut_4_lut_adj_165 (.I0(T[2]), .I1(T[3]), .I2(n2726), 
            .I3(n4478), .O(n8_adj_666));
    defparam i1_3_lut_4_lut_adj_165.LUT_INIT = 16'h0f8f;
    SB_LUT4 add_104_14_lut (.I0(n399), .I1(A[12]), .I2(S[12]), .I3(n3936), 
            .O(n5_adj_694)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_14_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i2_4_lut_adj_166 (.I0(n11_adj_648), .I1(uart_rx_data[3]), .I2(A[11]), 
            .I3(n2178), .O(n6_adj_835));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_166.LUT_INIT = 16'h50dc;
    SB_LUT4 i1_2_lut_adj_167 (.I0(n6_adj_812), .I1(n9_adj_836), .I2(GND_net), 
            .I3(GND_net), .O(n5_adj_837));   // ../tok.v(107[7] 123[14])
    defparam i1_2_lut_adj_167.LUT_INIT = 16'heeee;
    SB_LUT4 i3_4_lut_adj_168 (.I0(n26_adj_808), .I1(n14_adj_658), .I2(n5_adj_837), 
            .I3(n6_adj_835), .O(n10_adj_838));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_168.LUT_INIT = 16'hbbba;
    SB_LUT4 i1_4_lut_adj_169 (.I0(T[3]), .I1(n132), .I2(n2746), .I3(table_rd[3]), 
            .O(n8_adj_839));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_169.LUT_INIT = 16'h3b0a;
    SB_LUT4 i5_4_lut_adj_170 (.I0(n23_adj_788), .I1(n10_adj_838), .I2(n2616), 
            .I3(S[3]), .O(n12_adj_840));   // ../tok.v(107[7] 123[14])
    defparam i5_4_lut_adj_170.LUT_INIT = 16'hefee;
    SB_LUT4 i44_3_lut (.I0(n884), .I1(n892), .I2(A_low[3]), .I3(GND_net), 
            .O(n4520));   // ../tok.v(107[7] 123[14])
    defparam i44_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_104_14 (.CI(n3936), .I0(A[12]), .I1(S[12]), .CO(n3937));
    SB_LUT4 idx_7__I_0_3_lut (.I0(idx[1]), .I1(idx[1]), .I2(found_slot), 
            .I3(n3888), .O(n257[1])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i1_4_lut_adj_171 (.I0(n4051), .I1(n4520), .I2(n12_adj_840), 
            .I3(n8_adj_839), .O(A__15__N_113[3]));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_171.LUT_INIT = 16'hfff7;
    SB_CARRY tc_7__I_0_3 (.CI(n3895), .I0(c_stk_w_7__N_18[1]), .I1(GND_net), 
            .CO(n3896));
    SB_LUT4 add_104_13_lut (.I0(n399), .I1(A[11]), .I2(S[11]), .I3(n3935), 
            .O(n5_adj_690)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_13_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i49_4_lut (.I0(n4607), .I1(n4604), .I2(T[6]), .I3(T[4]), 
            .O(n34_adj_719));   // ../tok.v(40[5] 51[14])
    defparam i49_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 sub_105_add_2_5_lut (.I0(n8_adj_777), .I1(S[3]), .I2(n286[3]), 
            .I3(n3912), .O(n9_adj_836)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_105_add_2_5_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i1_4_lut_4_lut_adj_172 (.I0(T[2]), .I1(T[3]), .I2(GND_net), 
            .I3(GND_net), .O(n40_adj_661));
    defparam i1_4_lut_4_lut_adj_172.LUT_INIT = 16'h1111;
    SB_LUT4 i1771_3_lut_4_lut (.I0(n14_adj_658), .I1(n11_adj_647), .I2(S[0]), 
            .I3(tc_plus_1[0]), .O(table_wr_data[0]));   // ../tok.v(21[34:42])
    defparam i1771_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i1734_3_lut_4_lut (.I0(n14_adj_658), .I1(n11_adj_647), .I2(S[1]), 
            .I3(tc_plus_1[1]), .O(table_wr_data[1]));   // ../tok.v(21[34:42])
    defparam i1734_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i2_4_lut_adj_173 (.I0(T[4]), .I1(T[3]), .I2(n17), .I3(n4_adj_654), 
            .O(n786));   // ../tok.v(49[7:20])
    defparam i2_4_lut_adj_173.LUT_INIT = 16'hfffe;
    SB_LUT4 i1660_3_lut_4_lut (.I0(n14_adj_658), .I1(n11_adj_647), .I2(S[3]), 
            .I3(tc_plus_1[3]), .O(table_wr_data[3]));   // ../tok.v(21[34:42])
    defparam i1660_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i991_3_lut (.I0(S[3]), .I1(A__15__N_113[3]), .I2(n23_c), .I3(GND_net), 
            .O(n1058));   // ../tok.v(160[10] 167[10])
    defparam i991_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_104_13 (.CI(n3935), .I0(A[11]), .I1(S[11]), .CO(n3936));
    SB_LUT4 add_104_12_lut (.I0(n399), .I1(A[10]), .I2(S[10]), .I3(n3934), 
            .O(n5_adj_668)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_12_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i2_4_lut_adj_174 (.I0(n884), .I1(n10_adj_818), .I2(n892), 
            .I3(A_low[2]), .O(n13_adj_842));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_174.LUT_INIT = 16'hcfdd;
    SB_LUT4 i1_4_lut_adj_175 (.I0(uart_rx_data[2]), .I1(T[2]), .I2(n109), 
            .I3(n2635), .O(n12_adj_843));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_175.LUT_INIT = 16'h0ace;
    SB_LUT4 i7_4_lut_adj_176 (.I0(n13_adj_842), .I1(S[2]), .I2(n2_adj_811), 
            .I3(n2616), .O(n18_adj_844));   // ../tok.v(107[7] 123[14])
    defparam i7_4_lut_adj_176.LUT_INIT = 16'hfafe;
    SB_LUT4 i5_3_lut_adj_177 (.I0(n6_adj_667), .I1(table_rd[2]), .I2(n132), 
            .I3(GND_net), .O(n16_adj_845));   // ../tok.v(107[7] 123[14])
    defparam i5_3_lut_adj_177.LUT_INIT = 16'haeae;
    SB_LUT4 i15_4_lut_adj_178 (.I0(n25), .I1(n27_adj_734), .I2(n26), .I3(n28), 
            .O(found_slot_N_145));   // ../tok.v(80[61:74])
    defparam i15_4_lut_adj_178.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_179 (.I0(n2724), .I1(uart_stall), .I2(stall), 
            .I3(search_clk), .O(n4431));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_179.LUT_INIT = 16'h1101;
    SB_LUT4 i9_4_lut_adj_180 (.I0(A[10]), .I1(n18_adj_844), .I2(n12_adj_843), 
            .I3(n101), .O(n20_adj_846));   // ../tok.v(107[7] 123[14])
    defparam i9_4_lut_adj_180.LUT_INIT = 16'hfcfe;
    SB_LUT4 i2649_3_lut_4_lut (.I0(n14_adj_658), .I1(n11_adj_647), .I2(n2614), 
            .I3(n132), .O(n2724));   // ../tok.v(21[34:42])
    defparam i2649_3_lut_4_lut.LUT_INIT = 16'he000;
    SB_LUT4 i4_3_lut (.I0(n5_adj_789), .I1(T[2]), .I2(n83), .I3(GND_net), 
            .O(n15_adj_847));   // ../tok.v(107[7] 123[14])
    defparam i4_3_lut.LUT_INIT = 16'hbaba;
    SB_LUT4 i2577_2_lut_3_lut (.I0(n14_adj_658), .I1(n11_adj_647), .I2(S[8]), 
            .I3(GND_net), .O(table_wr_data[8]));   // ../tok.v(21[34:42])
    defparam i2577_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_LUT4 i1512_3_lut_4_lut (.I0(n14_adj_658), .I1(n11_adj_647), .I2(S[7]), 
            .I3(tc_plus_1[7]), .O(table_wr_data[7]));   // ../tok.v(21[34:42])
    defparam i1512_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i1_4_lut_adj_181 (.I0(n4051), .I1(n15_adj_847), .I2(n20_adj_846), 
            .I3(n16_adj_845), .O(A__15__N_113[2]));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_181.LUT_INIT = 16'hfffd;
    SB_LUT4 i1549_3_lut_4_lut (.I0(n14_adj_658), .I1(n11_adj_647), .I2(S[6]), 
            .I3(tc_plus_1[6]), .O(table_wr_data[6]));   // ../tok.v(21[34:42])
    defparam i1549_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i4597_4_lut (.I0(n4645), .I1(n30_adj_824), .I2(n26_adj_805), 
            .I3(n18_adj_756), .O(n4642));   // ../tok.v(80[22] 81[76])
    defparam i4597_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1586_3_lut_4_lut (.I0(n14_adj_658), .I1(n11_adj_647), .I2(S[5]), 
            .I3(tc_plus_1[5]), .O(table_wr_data[5]));   // ../tok.v(21[34:42])
    defparam i1586_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i1623_3_lut_4_lut (.I0(n14_adj_658), .I1(n11_adj_647), .I2(S[4]), 
            .I3(tc_plus_1[4]), .O(table_wr_data[4]));   // ../tok.v(21[34:42])
    defparam i1623_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i993_3_lut (.I0(S[2]), .I1(A__15__N_113[2]), .I2(n23_c), .I3(GND_net), 
            .O(n1060));   // ../tok.v(160[10] 167[10])
    defparam i993_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_104_12 (.CI(n3934), .I0(A[10]), .I1(S[10]), .CO(n3935));
    SB_LUT4 add_104_11_lut (.I0(n399), .I1(A[9]), .I2(S[9]), .I3(n3933), 
            .O(n21)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_11_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i2_4_lut_adj_182 (.I0(n10_adj_646), .I1(n28_adj_821), .I2(n9_adj_645), 
            .I3(A[9]), .O(n6_adj_848));   // ../tok.v(107[7] 123[14])
    defparam i2_4_lut_adj_182.LUT_INIT = 16'hcdcc;
    SB_LUT4 i3_4_lut_adj_183 (.I0(n10_adj_786), .I1(n6_adj_848), .I2(n2178), 
            .I3(uart_rx_data[1]), .O(n32));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_183.LUT_INIT = 16'hefee;
    SB_LUT4 i3_4_lut_adj_184 (.I0(n14_adj_658), .I1(T[1]), .I2(n32), .I3(n2746), 
            .O(n10_adj_849));   // ../tok.v(107[7] 123[14])
    defparam i3_4_lut_adj_184.LUT_INIT = 16'h50dc;
    SB_LUT4 i1_3_lut_adj_185 (.I0(n4_adj_790), .I1(n132), .I2(table_rd[1]), 
            .I3(GND_net), .O(n8_adj_850));   // ../tok.v(107[7] 123[14])
    defparam i1_3_lut_adj_185.LUT_INIT = 16'hbaba;
    SB_LUT4 i2576_2_lut_3_lut (.I0(n14_adj_658), .I1(n11_adj_647), .I2(S[9]), 
            .I3(GND_net), .O(table_wr_data[9]));   // ../tok.v(21[34:42])
    defparam i2576_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_LUT4 i5_4_lut_adj_186 (.I0(n13_adj_816), .I1(n10_adj_849), .I2(n2616), 
            .I3(S[1]), .O(n12_adj_851));   // ../tok.v(107[7] 123[14])
    defparam i5_4_lut_adj_186.LUT_INIT = 16'hefee;
    SB_LUT4 idx_7__I_0_6_lut (.I0(idx[4]), .I1(idx[4]), .I2(found_slot), 
            .I3(n3891), .O(n257[4])) /* synthesis syn_instantiated=1 */ ;
    defparam idx_7__I_0_6_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i50_3_lut_adj_187 (.I0(n884), .I1(n892), .I2(A_low[1]), .I3(GND_net), 
            .O(n46));   // ../tok.v(107[7] 123[14])
    defparam i50_3_lut_adj_187.LUT_INIT = 16'hcaca;
    SB_LUT4 i1697_3_lut_4_lut (.I0(n14_adj_658), .I1(n11_adj_647), .I2(S[2]), 
            .I3(tc_plus_1[2]), .O(table_wr_data[2]));   // ../tok.v(21[34:42])
    defparam i1697_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i1_4_lut_adj_188 (.I0(n4051), .I1(n46), .I2(n12_adj_851), 
            .I3(n8_adj_850), .O(A__15__N_113[1]));   // ../tok.v(107[7] 123[14])
    defparam i1_4_lut_adj_188.LUT_INIT = 16'hfff7;
    SB_LUT4 i568_2_lut_4_lut (.I0(n2562), .I1(n37), .I2(n847), .I3(n2503), 
            .O(rd_7__N_374));   // ../tok.v(61[5] 68[14])
    defparam i568_2_lut_4_lut.LUT_INIT = 16'h40ff;
    SB_LUT4 i2559_2_lut_4_lut (.I0(n2562), .I1(n37), .I2(n847), .I3(n2503), 
            .O(C_stk_delta[1]));   // ../tok.v(61[5] 68[14])
    defparam i2559_2_lut_4_lut.LUT_INIT = 16'h4000;
    SB_LUT4 i2580_3_lut (.I0(n14_adj_658), .I1(n11), .I2(n11_adj_647), 
            .I3(GND_net), .O(n2634));
    defparam i2580_3_lut.LUT_INIT = 16'heaea;
    SB_LUT4 i995_3_lut (.I0(S[1]), .I1(A__15__N_113[1]), .I2(n23_c), .I3(GND_net), 
            .O(n1062));   // ../tok.v(160[10] 167[10])
    defparam i995_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY idx_7__I_0_6 (.CI(n3891), .I0(idx[4]), .I1(found_slot), .CO(n3892));
    SB_LUT4 i547_3_lut_4_lut (.I0(n2586), .I1(n4478), .I2(n240), .I3(rd_7__N_374), 
            .O(n602));   // ../tok.v(117[9:12])
    defparam i547_3_lut_4_lut.LUT_INIT = 16'hdf00;
    SB_LUT4 i4353_2_lut_3_lut (.I0(stall), .I1(T[7]), .I2(T[6]), .I3(GND_net), 
            .O(n4504));   // ../tok.v(66[7:20])
    defparam i4353_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 inv_106_i3_1_lut (.I0(A_low[2]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n286[2]));   // ../tok.v(115[20:22])
    defparam inv_106_i3_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_3_lut_adj_189 (.I0(stall), .I1(T[7]), .I2(A_stk_delta_1__N_4), 
            .I3(GND_net), .O(n17));   // ../tok.v(66[7:20])
    defparam i1_2_lut_3_lut_adj_189.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_190 (.I0(stall), .I1(n2634), .I2(n4642), .I3(found_slot_N_145), 
            .O(found_slot));   // ../tok.v(80[22] 81[76])
    defparam i1_4_lut_adj_190.LUT_INIT = 16'h0a22;
    SB_CARRY add_104_11 (.CI(n3933), .I0(A[9]), .I1(S[9]), .CO(n3934));
    SB_LUT4 add_104_10_lut (.I0(n399), .I1(A[8]), .I2(S[8]), .I3(n3932), 
            .O(n5)) /* synthesis syn_instantiated=1 */ ;
    defparam add_104_10_lut.LUT_INIT = 16'h8228;
    SB_LUT4 key_rd_15__I_0_241_i14_2_lut (.I0(key_rd[13]), .I1(A[13]), .I2(GND_net), 
            .I3(GND_net), .O(n14_adj_804));   // ../tok.v(81[46:59])
    defparam key_rd_15__I_0_241_i14_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_191 (.I0(n27_adj_664), .I1(idx[0]), .I2(n2732), 
            .I3(n4431), .O(idx_[0]));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_191.LUT_INIT = 16'h0ace;
    SB_LUT4 i2_3_lut_adj_192 (.I0(n4_adj_809), .I1(n35[1]), .I2(depth[2]), 
            .I3(GND_net), .O(depth_[2]));   // ../tok.v(130[5] 134[14])
    defparam i2_3_lut_adj_192.LUT_INIT = 16'h9696;
    SB_LUT4 i1_2_lut_adj_193 (.I0(depth[0]), .I1(n1_adj_802), .I2(GND_net), 
            .I3(GND_net), .O(depth_[0]));
    defparam i1_2_lut_adj_193.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_194 (.I0(T[3]), .I1(T[1]), .I2(T[0]), .I3(A_stk_delta_1__N_4), 
            .O(n4432));
    defparam i1_4_lut_adj_194.LUT_INIT = 16'h2002;
    SB_LUT4 i4_4_lut_adj_195 (.I0(T[2]), .I1(n4504), .I2(n4432), .I3(n6_adj_832), 
            .O(n1_adj_802));
    defparam i4_4_lut_adj_195.LUT_INIT = 16'h1000;
    SB_LUT4 i2578_2_lut (.I0(A_stk_delta_1__N_4), .I1(n1_adj_802), .I2(GND_net), 
            .I3(GND_net), .O(n35[1]));   // ../tok.v(130[5] 134[14])
    defparam i2578_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2_4_lut_adj_196 (.I0(depth[2]), .I1(n35[1]), .I2(depth[3]), 
            .I3(n4_adj_809), .O(depth_[3]));   // ../tok.v(130[5] 134[14])
    defparam i2_4_lut_adj_196.LUT_INIT = 16'hd2b4;
    SB_LUT4 i1_2_lut_adj_197 (.I0(depth_[1]), .I1(depth_[3]), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_853));   // ../tok.v(105[13:27])
    defparam i1_2_lut_adj_197.LUT_INIT = 16'heeee;
    SB_LUT4 i4_4_lut_adj_198 (.I0(key_rd[3]), .I1(key_rd[5]), .I2(A_low[3]), 
            .I3(A_low[5]), .O(n20_adj_803));   // ../tok.v(81[46:59])
    defparam i4_4_lut_adj_198.LUT_INIT = 16'h7bde;
    SB_LUT4 i4_4_lut_adj_199 (.I0(depth_[0]), .I1(depth_[2]), .I2(stall), 
            .I3(n6_adj_853), .O(A__15__N_129));   // ../tok.v(105[13:27])
    defparam i4_4_lut_adj_199.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_4_lut_adj_200 (.I0(A[9]), .I1(A[15]), .I2(S[9]), .I3(S[15]), 
            .O(n24_adj_854));
    defparam i8_4_lut_adj_200.LUT_INIT = 16'h7bde;
    SB_LUT4 i6_4_lut_adj_201 (.I0(A_low[2]), .I1(A_low[7]), .I2(S[2]), 
            .I3(S[7]), .O(n22_adj_855));
    defparam i6_4_lut_adj_201.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut_adj_202 (.I0(A[11]), .I1(A[14]), .I2(S[11]), .I3(S[14]), 
            .O(n23_adj_856));
    defparam i7_4_lut_adj_202.LUT_INIT = 16'h7bde;
    SB_LUT4 i5_4_lut_adj_203 (.I0(A[10]), .I1(A[12]), .I2(S[10]), .I3(S[12]), 
            .O(n21_adj_857));
    defparam i5_4_lut_adj_203.LUT_INIT = 16'h7bde;
    SB_LUT4 i4_4_lut_adj_204 (.I0(A_low[3]), .I1(A_low[5]), .I2(S[3]), 
            .I3(S[5]), .O(n20_adj_858));
    defparam i4_4_lut_adj_204.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_4_lut_adj_205 (.I0(A_low[1]), .I1(A_low[4]), .I2(S[1]), 
            .I3(S[4]), .O(n18_adj_859));
    defparam i2_4_lut_adj_205.LUT_INIT = 16'h7bde;
    SB_LUT4 i3_4_lut_adj_206 (.I0(A[8]), .I1(A[13]), .I2(S[8]), .I3(S[13]), 
            .O(n19_adj_860));
    defparam i3_4_lut_adj_206.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut_adj_207 (.I0(A_low[0]), .I1(A_low[6]), .I2(S[0]), 
            .I3(S[6]), .O(n17_adj_861));
    defparam i1_4_lut_adj_207.LUT_INIT = 16'h7bde;
    SB_LUT4 i14_4_lut_adj_208 (.I0(n21_adj_857), .I1(n23_adj_856), .I2(n22_adj_855), 
            .I3(n24_adj_854), .O(n30_adj_862));
    defparam i14_4_lut_adj_208.LUT_INIT = 16'hfffe;
    SB_LUT4 i50_4_lut_adj_209 (.I0(A_low[1]), .I1(n257[1]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_863));   // ../tok.v(87[5] 94[14])
    defparam i50_4_lut_adj_209.LUT_INIT = 16'hca0a;
    SB_LUT4 i13_4_lut (.I0(n17_adj_861), .I1(n19_adj_860), .I2(n18_adj_859), 
            .I3(n20_adj_858), .O(n29_adj_864));
    defparam i13_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_adj_210 (.I0(n29_adj_864), .I1(n15_adj_662), .I2(n30_adj_862), 
            .I3(GND_net), .O(n4051));
    defparam i1_3_lut_adj_210.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_211 (.I0(n27_adj_863), .I1(idx[1]), .I2(n2732), 
            .I3(n4431), .O(idx_[1]));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_211.LUT_INIT = 16'h0ace;
    SB_LUT4 i4413_4_lut_4_lut (.I0(T[0]), .I1(T[1]), .I2(T[2]), .I3(T[3]), 
            .O(n4571));
    defparam i4413_4_lut_4_lut.LUT_INIT = 16'hfdaf;
    SB_LUT4 i50_4_lut_adj_212 (.I0(A_low[2]), .I1(n257[2]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_865));   // ../tok.v(87[5] 94[14])
    defparam i50_4_lut_adj_212.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_213 (.I0(n27_adj_865), .I1(idx[2]), .I2(n2732), 
            .I3(n4431), .O(idx_[2]));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_213.LUT_INIT = 16'h0ace;
    SB_LUT4 i2651_4_lut (.I0(n14_adj_825), .I1(n11_adj_649), .I2(n4464), 
            .I3(n4460), .O(n2726));
    defparam i2651_4_lut.LUT_INIT = 16'heaaa;
    SB_LUT4 i4417_4_lut_4_lut (.I0(T[0]), .I1(T[1]), .I2(T[2]), .I3(T[3]), 
            .O(n4575));
    defparam i4417_4_lut_4_lut.LUT_INIT = 16'hf9bb;
    SB_LUT4 i50_4_lut_adj_214 (.I0(A_low[3]), .I1(n257[3]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_866));   // ../tok.v(87[5] 94[14])
    defparam i50_4_lut_adj_214.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_215 (.I0(n27_adj_866), .I1(idx[3]), .I2(n2732), 
            .I3(n4431), .O(idx_[3]));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_215.LUT_INIT = 16'h0ace;
    SB_LUT4 i1_2_lut_2_lut (.I0(T[1]), .I1(T[0]), .I2(GND_net), .I3(GND_net), 
            .O(n40));
    defparam i1_2_lut_2_lut.LUT_INIT = 16'h9999;
    SB_LUT4 i50_4_lut_adj_216 (.I0(A_low[4]), .I1(n257[4]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_867));   // ../tok.v(87[5] 94[14])
    defparam i50_4_lut_adj_216.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_217 (.I0(n27_adj_867), .I1(idx[4]), .I2(n2732), 
            .I3(n4431), .O(idx_[4]));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_217.LUT_INIT = 16'h0ace;
    SB_LUT4 i50_4_lut_adj_218 (.I0(A_low[5]), .I1(n257[5]), .I2(stall), 
            .I3(search_clk), .O(n27_adj_868));   // ../tok.v(87[5] 94[14])
    defparam i50_4_lut_adj_218.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_219 (.I0(n27_adj_868), .I1(idx[5]), .I2(n2732), 
            .I3(n4431), .O(idx_[5]));   // ../tok.v(87[5] 94[14])
    defparam i1_4_lut_adj_219.LUT_INIT = 16'h0ace;
    SB_LUT4 T_7__I_0_220_i11_2_lut_4_lut (.I0(T[0]), .I1(T[1]), .I2(T[2]), 
            .I3(T[3]), .O(n11_adj_648));   // ../tok.v(22[34:43])
    defparam T_7__I_0_220_i11_2_lut_4_lut.LUT_INIT = 16'hfffb;
    \RAM(init_file="blank256.hex",data_width=16)  vals (.idx({idx}), .table_wr_data({table_wr_data}), 
            .table_rd({table_rd}), .clk(clk), .write_slot(write_slot), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // ../tok.v(217[5] 225[2])
    UART uart (.n940(n940), .clk(clk), .bytephase_5__N_510(bytephase_5__N_510), 
         .uart_rx_valid(uart_rx_valid), .capture({capture}), .rx_data_7__N_511(rx_data_7__N_511), 
         .GND_net(GND_net), .txtick(txtick), .\sender[1] (\sender[1] ), 
         .tx_c(tx_c), .n23(n23), .n1116(n1116), .uart_rx_data({uart_rx_data}), 
         .n1115(n1115), .\T[0] (T[0]), .\T[6] (T[6]), .n15(n15), .\T[2] (T[2]), 
         .n880(n880), .\T[7] (T[7]), .uart_tx_busy(uart_tx_busy), .\T[1] (T[1]), 
         .\T[3] (T[3]), .rx_c(rx_c), .\A_[7] (A_[7]), .n795(n795), .\sender[2] (\sender[2] ), 
         .n1173(n1173), .n1149(n1149), .n1147(n1147), .n1146(n1146), 
         .n1145(n1145), .n1144(n1144), .n1140(n1140), .n1139(n1139), 
         .n1138(n1138), .n1137(n1137), .n1136(n1136), .n1135(n1135), 
         .n1134(n1134), .n1133(n1133), .n1132(n1132), .n1131(n1131), 
         .n1130(n1130), .\A_[6] (A_[6]), .\A_[5] (A_[5]), .\A_[4] (A_[4]), 
         .\A_[3] (A_[3]), .\A_[2] (A_[2]), .\A_[1] (A_[1]), .\A_[0] (A_[0]), 
         .n14(n14_adj_658), .n2178(n2178), .n4005(n4005)) /* synthesis syn_module_defined=1 */ ;   // ../tok.v(230[6] 242[2])
    RAM ram (.c_stk_r({c_stk_r}), .\tail[8] (tail[8]), .\C_stk_delta[1] (C_stk_delta[1]), 
        .\tailN[0] (tailN[0]), .GND_net(GND_net), .\S[0] (S[0]), .\S[1] (S[1]), 
        .\S[2] (S[2]), .\S[3] (S[3]), .\S[4] (S[4]), .\S[5] (S[5]), 
        .\S[6] (S[6]), .\S[7] (S[7]), .tc_({tc_}), .A_low({A_low}), 
        .T({T}), .clk(clk), .write_flag(write_flag), .n11(n11_adj_648), 
        .n14(n14_adj_702), .n2586(n2586), .n2635(n2635), .tc_plus_1({tc_plus_1}), 
        .n4(n4_adj_795), .tc__7__N_134(tc__7__N_134), .n101(n101_adj_776), 
        .n1(n1_adj_712), .n1_adj_1(n1_adj_717), .n1_adj_2(n1_adj_724), 
        .n1_adj_3(n1_adj_736), .n1_adj_4(n1_adj_745), .\tail[9] (tail[9]), 
        .\tailN[1] (tailN[1]), .\tail[10] (tail[10]), .\tailN[2] (tailN[2]), 
        .\tail[11] (tail[11]), .\tailN[3] (tailN[3]), .n1_adj_5(n1_adj_757), 
        .\tail[12] (tail[12]), .\tailN[4] (tailN[4]), .\tail[13] (tail[13]), 
        .\tailN[5] (tailN[5]), .\tail[14] (tail[14]), .\tailN[6] (tailN[6]), 
        .\tail[15] (tail[15]), .\tailN[7] (tailN[7]), .n14_adj_6(n14_adj_825), 
        .n2177(n2177), .n10(n10_adj_646), .n132(n132), .\tail[24] (tail[24]), 
        .\tailN[16] (tailN[16]), .\tail[25] (tail[25]), .\tailN[17] (tailN[17]), 
        .\tail[26] (tail[26]), .\tailN[18] (tailN[18]), .\tail[27] (tail[27]), 
        .\tailN[19] (tailN[19]), .\tail[28] (tail[28]), .\tailN[20] (tailN[20]), 
        .\tail[29] (tail[29]), .\tailN[21] (tailN[21]), .n1_adj_7(n1_adj_760), 
        .\tail[30] (tail[30]), .\tailN[22] (tailN[22]), .\tail[31] (tail[31]), 
        .\tailN[23] (tailN[23]), .\tail[63] (tail[63]), .\tail[55] (tail[55]), 
        .rd_7__N_374(rd_7__N_374), .n1160(n1160), .\tail[62] (tail[62]), 
        .\tail[54] (tail[54]), .n1170(n1170), .\tail[61] (tail[61]), .\tail[53] (tail[53]), 
        .n1181(n1181), .\tail[60] (tail[60]), .\tail[52] (tail[52]), .n1183(n1183), 
        .\tail[59] (tail[59]), .\tail[51] (tail[51]), .n1184(n1184), .\tail[58] (tail[58]), 
        .\tail[50] (tail[50]), .n1185(n1185), .\tail[40] (tail[40]), .\tailN[32] (tailN[32]), 
        .\tail[41] (tail[41]), .\tailN[33] (tailN[33]), .\tail[42] (tail[42]), 
        .\tailN[34] (tailN[34]), .\tail[43] (tail[43]), .\tailN[35] (tailN[35]), 
        .\tail[44] (tail[44]), .\tailN[36] (tailN[36]), .\tail[45] (tail[45]), 
        .\tailN[37] (tailN[37]), .\tail[46] (tail[46]), .\tailN[38] (tailN[38]), 
        .\tail[47] (tail[47]), .\tailN[39] (tailN[39]), .\tail[57] (tail[57]), 
        .\tail[49] (tail[49]), .n1196(n1196), .\tail[56] (tail[56]), .\tail[48] (tail[48]), 
        .n1197(n1197), .n1_adj_8(n1_adj_798), .\tailN[48] (tailN[48]), 
        .\tailN[49] (tailN[49]), .\tailN[50] (tailN[50]), .\tailN[51] (tailN[51]), 
        .\tailN[52] (tailN[52]), .\tailN[53] (tailN[53]), .\tailN[54] (tailN[54]), 
        .\tailN[55] (tailN[55])) /* synthesis syn_module_defined=1 */ ;   // ../tok.v(171[5] 179[2])
    \RAM(init_file="blank256.hex",data_width=16)_U0  keys (.idx({idx}), .A_low({A_low}), 
            .\A[8] (A[8]), .\A[9] (A[9]), .\A[10] (A[10]), .\A[11] (A[11]), 
            .\A[12] (A[12]), .\A[13] (A[13]), .\A[14] (A[14]), .\A[15] (A[15]), 
            .key_rd({key_rd}), .clk(clk), .write_slot(write_slot), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // ../tok.v(204[5] 212[2])
    STACK C_stk (.rd_7__N_374(rd_7__N_374), .n240(n240), .GND_net(GND_net), 
          .n602(n602), .tc_plus_1({tc_plus_1}), .c_stk_w_7__N_18({c_stk_w_7__N_18}), 
          .\tailN[0] (tailN[0]), .clk(clk), .c_stk_r({c_stk_r}), .\tailN[55] (tailN[55]), 
          .\tail[55] (tail[55]), .\tailN[54] (tailN[54]), .\tail[54] (tail[54]), 
          .\tailN[53] (tailN[53]), .\tail[53] (tail[53]), .\tailN[52] (tailN[52]), 
          .\tail[52] (tail[52]), .\tailN[51] (tailN[51]), .\tail[51] (tail[51]), 
          .\tailN[50] (tailN[50]), .\tail[50] (tail[50]), .\tailN[49] (tailN[49]), 
          .\tail[49] (tail[49]), .\tailN[48] (tailN[48]), .\tail[48] (tail[48]), 
          .\tail[47] (tail[47]), .\tail[46] (tail[46]), .\tail[45] (tail[45]), 
          .\tail[44] (tail[44]), .\tail[43] (tail[43]), .\tail[42] (tail[42]), 
          .\tail[41] (tail[41]), .\tail[40] (tail[40]), .\tailN[39] (tailN[39]), 
          .\tailN[38] (tailN[38]), .\tailN[37] (tailN[37]), .\tailN[36] (tailN[36]), 
          .\tailN[35] (tailN[35]), .\tailN[34] (tailN[34]), .\tailN[33] (tailN[33]), 
          .\tailN[32] (tailN[32]), .\tail[31] (tail[31]), .\tail[30] (tail[30]), 
          .\tail[29] (tail[29]), .\tail[28] (tail[28]), .\tail[27] (tail[27]), 
          .\tail[26] (tail[26]), .\tail[25] (tail[25]), .\tail[24] (tail[24]), 
          .\tailN[23] (tailN[23]), .\tailN[22] (tailN[22]), .\tailN[21] (tailN[21]), 
          .\tailN[20] (tailN[20]), .\tailN[19] (tailN[19]), .\tailN[18] (tailN[18]), 
          .\tailN[17] (tailN[17]), .\tailN[16] (tailN[16]), .\tail[15] (tail[15]), 
          .\tail[14] (tail[14]), .\tail[13] (tail[13]), .\tail[12] (tail[12]), 
          .\tail[11] (tail[11]), .\tail[10] (tail[10]), .\tail[9] (tail[9]), 
          .\tail[8] (tail[8]), .\tailN[7] (tailN[7]), .\tailN[6] (tailN[6]), 
          .\tailN[5] (tailN[5]), .\tailN[4] (tailN[4]), .\tailN[3] (tailN[3]), 
          .\tailN[2] (tailN[2]), .\tailN[1] (tailN[1]), .\C_stk_delta[1] (C_stk_delta[1]), 
          .n1197(n1197), .\tail[56] (tail[56]), .n1196(n1196), .\tail[57] (tail[57]), 
          .n1185(n1185), .\tail[58] (tail[58]), .n1184(n1184), .\tail[59] (tail[59]), 
          .n1183(n1183), .\tail[60] (tail[60]), .n1181(n1181), .\tail[61] (tail[61]), 
          .n1170(n1170), .\tail[62] (tail[62]), .n1160(n1160), .\tail[63] (tail[63])) /* synthesis syn_module_defined=1 */ ;   // ../tok.v(194[7] 200[2])
    \STACK(WIDTH=16)  A_stk (.\tail[127] (\tail[127] ), .n29(n29), .n786(n786), 
            .\tail[112] (\tail[112] ), .\tail[113] (\tail[113] ), .clk(clk), 
            .S({S}), .\tail[114] (\tail[114] ), .\tail[115] (\tail[115] ), 
            .\tail[116] (\tail[116] ), .\tail[117] (\tail[117] ), .\tail[118] (\tail[118] ), 
            .\tail[119] (\tail[119] ), .\tail[120] (\tail[120] ), .\tail[121] (\tail[121] ), 
            .\tail[122] (\tail[122] ), .\tail[123] (\tail[123] ), .\tail[124] (\tail[124] ), 
            .\tail[125] (\tail[125] ), .\tail[126] (\tail[126] ), .\tail[96] (\tail[96] ), 
            .\tail[97] (\tail[97] ), .\tail[98] (\tail[98] ), .\tail[99] (\tail[99] ), 
            .\tail[100] (\tail[100] ), .\tail[101] (\tail[101] ), .\tail[102] (\tail[102] ), 
            .\tail[103] (\tail[103] ), .\tail[104] (\tail[104] ), .\tail[105] (\tail[105] ), 
            .\tail[106] (\tail[106] ), .\tail[107] (\tail[107] ), .\tail[108] (\tail[108] ), 
            .\tail[109] (\tail[109] ), .\tail[110] (\tail[110] ), .\tail[111] (\tail[111] ), 
            .n1122(n1122), .n1126(n1126), .n1129(n1129), .n1143(n1143), 
            .n1152(n1152), .n1155(n1155), .n1158(n1158), .n1163(n1163), 
            .n1166(n1166), .n1169(n1169), .n1176(n1176), .n1179(n1179), 
            .n1090(n1090), .n1102(n1102), .n1114(n1114), .n1119(n1119), 
            .A_low({A_low}), .n237(n237), .GND_net(GND_net), .\A[15] (A[15]), 
            .\A[14] (A[14]), .\A[13] (A[13]), .\A[12] (A[12]), .\A[11] (A[11]), 
            .\A[10] (A[10]), .\A[9] (A[9]), .\A[8] (A[8])) /* synthesis syn_module_defined=1 */ ;   // ../tok.v(184[7] 190[2])
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

module UART (n940, clk, bytephase_5__N_510, uart_rx_valid, capture, 
            rx_data_7__N_511, GND_net, txtick, \sender[1] , tx_c, 
            n23, n1116, uart_rx_data, n1115, \T[0] , \T[6] , n15, 
            \T[2] , n880, \T[7] , uart_tx_busy, \T[1] , \T[3] , 
            rx_c, \A_[7] , n795, \sender[2] , n1173, n1149, n1147, 
            n1146, n1145, n1144, n1140, n1139, n1138, n1137, n1136, 
            n1135, n1134, n1133, n1132, n1131, n1130, \A_[6] , 
            \A_[5] , \A_[4] , \A_[3] , \A_[2] , \A_[1] , \A_[0] , 
            n14, n2178, n4005) /* synthesis syn_module_defined=1 */ ;
    input n940;
    input clk;
    output bytephase_5__N_510;
    output uart_rx_valid;
    output [9:0]capture;
    output rx_data_7__N_511;
    input GND_net;
    output txtick;
    output \sender[1] ;
    output tx_c;
    output n23;
    input n1116;
    output [7:0]uart_rx_data;
    input n1115;
    input \T[0] ;
    input \T[6] ;
    input n15;
    input \T[2] ;
    output n880;
    input \T[7] ;
    output uart_tx_busy;
    input \T[1] ;
    input \T[3] ;
    input rx_c;
    input \A_[7] ;
    output n795;
    output \sender[2] ;
    input n1173;
    input n1149;
    input n1147;
    input n1146;
    input n1145;
    input n1144;
    input n1140;
    input n1139;
    input n1138;
    input n1137;
    input n1136;
    input n1135;
    input n1134;
    input n1133;
    input n1132;
    input n1131;
    input n1130;
    input \A_[6] ;
    input \A_[5] ;
    input \A_[4] ;
    input \A_[3] ;
    input \A_[2] ;
    input \A_[1] ;
    input \A_[0] ;
    input n14;
    input n2178;
    output n4005;
    
    wire clk /* synthesis is_clock=1 */ ;   // ../lattice_top.v(10[6:9])
    wire [5:0]n539;
    wire [5:0]bytephase;   // ../uart.v(27[11:20])
    
    wire uart_rd, n922, n2, n3994;
    wire [3:0]n21;
    
    wire n978;
    wire [3:0]sentbits;   // ../uart.v(61[11:19])
    
    wire n1083;
    wire [8:0]n41;
    wire [8:0]txclkcounter;   // ../uart.v(57[18:30])
    wire [6:0]n33;
    wire [6:0]rxclkcounter;   // ../uart.v(28[18:30])
    
    wire rxclkcounter_6__N_477, n964, n3961, n14_c, n15_adj_640, n6, 
        n13;
    wire [9:0]sender;   // ../uart.v(64[11:17])
    
    wire n1081, n3962, n12;
    wire [9:0]sender_9__N_435;
    
    wire n3960, n3959, n3958, n3957, n3956, n3955, VCC_net, n3973, 
        n3972, n3971, n3970, n3969, n3968, n3967, n3966, n3965, 
        n3964, n3963, n4438, n4506;
    
    SB_DFFESR bytephase__i1 (.Q(bytephase[1]), .C(clk), .E(n940), .D(n539[1]), 
            .R(bytephase_5__N_510));   // ../uart.v(38[8:96])
    SB_DFFESR bytephase__i2 (.Q(bytephase[2]), .C(clk), .E(n940), .D(n539[2]), 
            .R(bytephase_5__N_510));   // ../uart.v(38[8:96])
    SB_DFFE valid_54 (.Q(uart_rx_valid), .C(clk), .E(n922), .D(uart_rd));   // ../uart.v(50[8] 55[4])
    SB_DFFESR bytephase__i3 (.Q(bytephase[3]), .C(clk), .E(n940), .D(n539[3]), 
            .R(bytephase_5__N_510));   // ../uart.v(38[8:96])
    SB_DFFESR bytephase__i4 (.Q(bytephase[4]), .C(clk), .E(n940), .D(n539[4]), 
            .R(bytephase_5__N_510));   // ../uart.v(38[8:96])
    SB_DFFESR bytephase__i5 (.Q(bytephase[5]), .C(clk), .E(n940), .D(n539[5]), 
            .R(bytephase_5__N_510));   // ../uart.v(38[8:96])
    SB_LUT4 i3_4_lut (.I0(n2), .I1(bytephase[3]), .I2(bytephase[4]), .I3(bytephase[5]), 
            .O(n3994));   // ../uart.v(36[15:33])
    defparam i3_4_lut.LUT_INIT = 16'hfbff;
    SB_LUT4 i1_3_lut (.I0(capture[9]), .I1(capture[0]), .I2(n3994), .I3(GND_net), 
            .O(rx_data_7__N_511));   // ../uart.v(52[22:35])
    defparam i1_3_lut.LUT_INIT = 16'h0202;
    SB_DFFESR sentbits_146__i0 (.Q(sentbits[0]), .C(clk), .E(n978), .D(n21[0]), 
            .R(n1083));   // ../uart.v(63[52:64])
    SB_DFFESR bytephase__i0 (.Q(bytephase[0]), .C(clk), .E(n940), .D(n539[0]), 
            .R(bytephase_5__N_510));   // ../uart.v(38[8:96])
    SB_DFFSS txclkcounter_144__i0 (.Q(txclkcounter[0]), .C(clk), .D(n41[0]), 
            .S(txtick));   // ../uart.v(59[52:68])
    SB_DFFSS rxclkcounter_147__i0 (.Q(rxclkcounter[0]), .C(clk), .D(n33[0]), 
            .S(rxclkcounter_6__N_477));   // ../uart.v(31[61:77])
    SB_DFFESS sender_i1 (.Q(tx_c), .C(clk), .E(n964), .D(\sender[1] ), 
            .S(n23));   // ../uart.v(66[8:100])
    SB_LUT4 txclkcounter_144_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[7]), 
            .I3(n3961), .O(n41[7])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_144_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_DFF rx_data_i0_i0 (.Q(uart_rx_data[0]), .C(clk), .D(n1116));   // ../uart.v(50[8] 55[4])
    SB_DFF capture_i0_i0 (.Q(capture[0]), .C(clk), .D(n1115));   // ../uart.v(45[27:91])
    SB_LUT4 i3_4_lut_adj_27 (.I0(\T[0] ), .I1(\T[6] ), .I2(n15), .I3(\T[2] ), 
            .O(n880));   // ../uart.v(62[13:30])
    defparam i3_4_lut_adj_27.LUT_INIT = 16'hfffe;
    SB_LUT4 i5_3_lut (.I0(txclkcounter[6]), .I1(txclkcounter[7]), .I2(txclkcounter[1]), 
            .I3(GND_net), .O(n14_c));
    defparam i5_3_lut.LUT_INIT = 16'hf7f7;
    SB_LUT4 i6_4_lut (.I0(txclkcounter[0]), .I1(txclkcounter[5]), .I2(txclkcounter[3]), 
            .I3(txclkcounter[2]), .O(n15_adj_640));
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i4705_4_lut (.I0(n15_adj_640), .I1(txclkcounter[8]), .I2(n14_c), 
            .I3(txclkcounter[4]), .O(txtick));   // ../uart.v(58[15:45])
    defparam i4705_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i1_2_lut (.I0(\T[7] ), .I1(n880), .I2(GND_net), .I3(GND_net), 
            .O(n6));   // ../uart.v(62[13:30])
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4698_4_lut (.I0(uart_tx_busy), .I1(\T[1] ), .I2(\T[3] ), 
            .I3(n6), .O(n23));   // ../uart.v(62[13:30])
    defparam i4698_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 i3804_1_lut (.I0(sentbits[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n21[0]));   // ../uart.v(63[52:64])
    defparam i3804_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i3813_2_lut_3_lut (.I0(sentbits[1]), .I1(sentbits[0]), .I2(sentbits[2]), 
            .I3(GND_net), .O(n21[2]));   // ../uart.v(63[52:64])
    defparam i3813_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i3820_3_lut_4_lut (.I0(sentbits[1]), .I1(sentbits[0]), .I2(sentbits[2]), 
            .I3(sentbits[3]), .O(n21[3]));   // ../uart.v(63[52:64])
    defparam i3820_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_DFFESR sentbits_146__i3 (.Q(sentbits[3]), .C(clk), .E(n978), .D(n21[3]), 
            .R(n1083));   // ../uart.v(63[52:64])
    SB_LUT4 i24_4_lut_4_lut (.I0(bytephase[3]), .I1(rx_c), .I2(bytephase[5]), 
            .I3(bytephase[1]), .O(n13));   // ../uart.v(38[36:53])
    defparam i24_4_lut_4_lut.LUT_INIT = 16'h04a0;
    SB_DFFESR sentbits_146__i2 (.Q(sentbits[2]), .C(clk), .E(n978), .D(n21[2]), 
            .R(n1083));   // ../uart.v(63[52:64])
    SB_DFFESR sentbits_146__i1 (.Q(sentbits[1]), .C(clk), .E(n978), .D(n21[1]), 
            .R(n1083));   // ../uart.v(63[52:64])
    SB_DFFESS sender_i10 (.Q(sender[9]), .C(clk), .E(n964), .D(\A_[7] ), 
            .S(n1081));   // ../uart.v(66[8:100])
    SB_LUT4 i2_4_lut (.I0(sentbits[1]), .I1(sentbits[0]), .I2(sentbits[3]), 
            .I3(sentbits[2]), .O(uart_tx_busy));   // ../uart.v(62[13:30])
    defparam i2_4_lut.LUT_INIT = 16'hffdf;
    SB_CARRY txclkcounter_144_add_4_9 (.CI(n3961), .I0(GND_net), .I1(txclkcounter[7]), 
            .CO(n3962));
    SB_LUT4 i5_4_lut (.I0(rxclkcounter[3]), .I1(rxclkcounter[1]), .I2(rxclkcounter[0]), 
            .I3(rxclkcounter[4]), .O(n12));
    defparam i5_4_lut.LUT_INIT = 16'hfeff;
    SB_DFFSR txclkcounter_144__i8 (.Q(txclkcounter[8]), .C(clk), .D(n41[8]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFFSR txclkcounter_144__i7 (.Q(txclkcounter[7]), .C(clk), .D(n41[7]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFFSR txclkcounter_144__i6 (.Q(txclkcounter[6]), .C(clk), .D(n41[6]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFFSR txclkcounter_144__i5 (.Q(txclkcounter[5]), .C(clk), .D(n41[5]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFFSR txclkcounter_144__i4 (.Q(txclkcounter[4]), .C(clk), .D(n41[4]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFFSR txclkcounter_144__i3 (.Q(txclkcounter[3]), .C(clk), .D(n41[3]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFFSR txclkcounter_144__i2 (.Q(txclkcounter[2]), .C(clk), .D(n41[2]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_DFFSR txclkcounter_144__i1 (.Q(txclkcounter[1]), .C(clk), .D(n41[1]), 
            .R(txtick));   // ../uart.v(59[52:68])
    SB_LUT4 i6_4_lut_adj_28 (.I0(rxclkcounter[2]), .I1(n12), .I2(rxclkcounter[6]), 
            .I3(rxclkcounter[5]), .O(n795));
    defparam i6_4_lut_adj_28.LUT_INIT = 16'hfdff;
    SB_DFFE sender_i3 (.Q(\sender[2] ), .C(clk), .E(n964), .D(sender_9__N_435[2]));   // ../uart.v(66[8:100])
    SB_DFFE sender_i4 (.Q(sender[3]), .C(clk), .E(n964), .D(sender_9__N_435[3]));   // ../uart.v(66[8:100])
    SB_DFFE sender_i5 (.Q(sender[4]), .C(clk), .E(n964), .D(sender_9__N_435[4]));   // ../uart.v(66[8:100])
    SB_DFFE sender_i6 (.Q(sender[5]), .C(clk), .E(n964), .D(sender_9__N_435[5]));   // ../uart.v(66[8:100])
    SB_DFFE sender_i7 (.Q(sender[6]), .C(clk), .E(n964), .D(sender_9__N_435[6]));   // ../uart.v(66[8:100])
    SB_DFFE sender_i8 (.Q(sender[7]), .C(clk), .E(n964), .D(sender_9__N_435[7]));   // ../uart.v(66[8:100])
    SB_DFFE sender_i9 (.Q(sender[8]), .C(clk), .E(n964), .D(sender_9__N_435[8]));   // ../uart.v(66[8:100])
    SB_DFFSR rxclkcounter_147__i1 (.Q(rxclkcounter[1]), .C(clk), .D(n33[1]), 
            .R(rxclkcounter_6__N_477));   // ../uart.v(31[61:77])
    SB_DFFSR rxclkcounter_147__i2 (.Q(rxclkcounter[2]), .C(clk), .D(n33[2]), 
            .R(rxclkcounter_6__N_477));   // ../uart.v(31[61:77])
    SB_DFFSR rxclkcounter_147__i3 (.Q(rxclkcounter[3]), .C(clk), .D(n33[3]), 
            .R(rxclkcounter_6__N_477));   // ../uart.v(31[61:77])
    SB_DFFSR rxclkcounter_147__i4 (.Q(rxclkcounter[4]), .C(clk), .D(n33[4]), 
            .R(rxclkcounter_6__N_477));   // ../uart.v(31[61:77])
    SB_DFFSR rxclkcounter_147__i5 (.Q(rxclkcounter[5]), .C(clk), .D(n33[5]), 
            .R(rxclkcounter_6__N_477));   // ../uart.v(31[61:77])
    SB_DFFSR rxclkcounter_147__i6 (.Q(rxclkcounter[6]), .C(clk), .D(n33[6]), 
            .R(rxclkcounter_6__N_477));   // ../uart.v(31[61:77])
    SB_LUT4 txclkcounter_144_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[6]), 
            .I3(n3960), .O(n41[6])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_144_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY txclkcounter_144_add_4_8 (.CI(n3960), .I0(GND_net), .I1(txclkcounter[6]), 
            .CO(n3961));
    SB_LUT4 txclkcounter_144_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[5]), 
            .I3(n3959), .O(n41[5])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_144_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY txclkcounter_144_add_4_7 (.CI(n3959), .I0(GND_net), .I1(txclkcounter[5]), 
            .CO(n3960));
    SB_LUT4 txclkcounter_144_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[4]), 
            .I3(n3958), .O(n41[4])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_144_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY txclkcounter_144_add_4_6 (.CI(n3958), .I0(GND_net), .I1(txclkcounter[4]), 
            .CO(n3959));
    SB_LUT4 txclkcounter_144_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[3]), 
            .I3(n3957), .O(n41[3])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_144_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY txclkcounter_144_add_4_5 (.CI(n3957), .I0(GND_net), .I1(txclkcounter[3]), 
            .CO(n3958));
    SB_LUT4 txclkcounter_144_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[2]), 
            .I3(n3956), .O(n41[2])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_144_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1014_2_lut (.I0(txtick), .I1(n23), .I2(GND_net), .I3(GND_net), 
            .O(n1081));   // ../uart.v(66[8:100])
    defparam i1014_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY txclkcounter_144_add_4_4 (.CI(n3956), .I0(GND_net), .I1(txclkcounter[2]), 
            .CO(n3957));
    SB_LUT4 i3806_2_lut (.I0(sentbits[1]), .I1(sentbits[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21[1]));   // ../uart.v(63[52:64])
    defparam i3806_2_lut.LUT_INIT = 16'h6666;
    SB_DFF sender_i2 (.Q(\sender[1] ), .C(clk), .D(n1173));   // ../uart.v(66[8:100])
    SB_DFF capture_i0_i1 (.Q(capture[1]), .C(clk), .D(n1149));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i2 (.Q(capture[2]), .C(clk), .D(n1147));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i3 (.Q(capture[3]), .C(clk), .D(n1146));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i4 (.Q(capture[4]), .C(clk), .D(n1145));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i5 (.Q(capture[5]), .C(clk), .D(n1144));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i6 (.Q(capture[6]), .C(clk), .D(n1140));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i7 (.Q(capture[7]), .C(clk), .D(n1139));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i8 (.Q(capture[8]), .C(clk), .D(n1138));   // ../uart.v(45[27:91])
    SB_DFF capture_i0_i9 (.Q(capture[9]), .C(clk), .D(n1137));   // ../uart.v(45[27:91])
    SB_DFF rx_data_i0_i1 (.Q(uart_rx_data[1]), .C(clk), .D(n1136));   // ../uart.v(50[8] 55[4])
    SB_DFF rx_data_i0_i2 (.Q(uart_rx_data[2]), .C(clk), .D(n1135));   // ../uart.v(50[8] 55[4])
    SB_DFF rx_data_i0_i3 (.Q(uart_rx_data[3]), .C(clk), .D(n1134));   // ../uart.v(50[8] 55[4])
    SB_DFF rx_data_i0_i4 (.Q(uart_rx_data[4]), .C(clk), .D(n1133));   // ../uart.v(50[8] 55[4])
    SB_DFF rx_data_i0_i5 (.Q(uart_rx_data[5]), .C(clk), .D(n1132));   // ../uart.v(50[8] 55[4])
    SB_DFF rx_data_i0_i6 (.Q(uart_rx_data[6]), .C(clk), .D(n1131));   // ../uart.v(50[8] 55[4])
    SB_DFF rx_data_i0_i7 (.Q(uart_rx_data[7]), .C(clk), .D(n1130));   // ../uart.v(50[8] 55[4])
    SB_LUT4 txclkcounter_144_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[1]), 
            .I3(n3955), .O(n41[1])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_144_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY txclkcounter_144_add_4_3 (.CI(n3955), .I0(GND_net), .I1(txclkcounter[1]), 
            .CO(n3956));
    SB_LUT4 txclkcounter_144_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[0]), 
            .I3(VCC_net), .O(n41[0])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_144_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY txclkcounter_144_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(txclkcounter[0]), 
            .CO(n3955));
    SB_LUT4 i2_2_lut_3_lut (.I0(bytephase[2]), .I1(bytephase[0]), .I2(bytephase[1]), 
            .I3(GND_net), .O(n2));   // ../uart.v(30[19:32])
    defparam i2_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_3_lut_4_lut (.I0(bytephase[2]), .I1(bytephase[0]), .I2(n13), 
            .I3(bytephase[4]), .O(bytephase_5__N_510));   // ../uart.v(30[19:32])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h0010;
    SB_LUT4 sender_9__I_0_i9_3_lut (.I0(\A_[6] ), .I1(sender[9]), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_435[8]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i9_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 sender_9__I_0_i8_3_lut (.I0(\A_[5] ), .I1(sender[8]), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_435[7]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i8_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 sender_9__I_0_i7_3_lut (.I0(\A_[4] ), .I1(sender[7]), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_435[6]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i7_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 sender_9__I_0_i6_3_lut (.I0(\A_[3] ), .I1(sender[6]), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_435[5]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i6_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 rxclkcounter_147_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[6]), 
            .I3(n3973), .O(n33[6])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_147_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 rxclkcounter_147_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[5]), 
            .I3(n3972), .O(n33[5])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_147_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sender_9__I_0_i5_3_lut (.I0(\A_[2] ), .I1(sender[5]), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_435[4]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i5_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 sender_9__I_0_i4_3_lut (.I0(\A_[1] ), .I1(sender[4]), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_435[3]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i4_3_lut.LUT_INIT = 16'hacac;
    SB_CARRY rxclkcounter_147_add_4_7 (.CI(n3972), .I0(GND_net), .I1(rxclkcounter[5]), 
            .CO(n3973));
    SB_LUT4 sender_9__I_0_i3_3_lut (.I0(\A_[0] ), .I1(sender[3]), .I2(n23), 
            .I3(GND_net), .O(sender_9__N_435[2]));   // ../uart.v(66[33:99])
    defparam sender_9__I_0_i3_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 rxclkcounter_147_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[4]), 
            .I3(n3971), .O(n33[4])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_147_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rxclkcounter_147_add_4_6 (.CI(n3971), .I0(GND_net), .I1(rxclkcounter[4]), 
            .CO(n3972));
    SB_LUT4 rxclkcounter_147_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[3]), 
            .I3(n3970), .O(n33[3])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_147_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rxclkcounter_147_add_4_5 (.CI(n3970), .I0(GND_net), .I1(rxclkcounter[3]), 
            .CO(n3971));
    SB_LUT4 rxclkcounter_147_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[2]), 
            .I3(n3969), .O(n33[2])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_147_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rxclkcounter_147_add_4_4 (.CI(n3969), .I0(GND_net), .I1(rxclkcounter[2]), 
            .CO(n3970));
    SB_LUT4 rxclkcounter_147_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[1]), 
            .I3(n3968), .O(n33[1])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_147_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rxclkcounter_147_add_4_3 (.CI(n3968), .I0(GND_net), .I1(rxclkcounter[1]), 
            .CO(n3969));
    SB_LUT4 i4684_2_lut_3_lut (.I0(uart_rx_valid), .I1(n14), .I2(n2178), 
            .I3(GND_net), .O(uart_rd));   // ../uart.v(50[8] 55[4])
    defparam i4684_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 rxclkcounter_147_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(rxclkcounter[0]), 
            .I3(VCC_net), .O(n33[0])) /* synthesis syn_instantiated=1 */ ;
    defparam rxclkcounter_147_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY rxclkcounter_147_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(rxclkcounter[0]), 
            .CO(n3968));
    SB_LUT4 add_72_7_lut (.I0(GND_net), .I1(bytephase[5]), .I2(GND_net), 
            .I3(n3967), .O(n539[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_72_6_lut (.I0(GND_net), .I1(bytephase[4]), .I2(GND_net), 
            .I3(n3966), .O(n539[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(rx_data_7__N_511), .I1(uart_rx_valid), 
            .I2(n14), .I3(n2178), .O(n922));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'haaae;
    SB_CARRY add_72_6 (.CI(n3966), .I0(bytephase[4]), .I1(GND_net), .CO(n3967));
    SB_LUT4 add_72_5_lut (.I0(GND_net), .I1(bytephase[3]), .I2(GND_net), 
            .I3(n3965), .O(n539[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_72_5 (.CI(n3965), .I0(bytephase[3]), .I1(GND_net), .CO(n3966));
    SB_LUT4 i2_3_lut (.I0(bytephase[0]), .I1(bytephase[1]), .I2(n795), 
            .I3(GND_net), .O(n4005));   // ../uart.v(39[15:40])
    defparam i2_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 add_72_4_lut (.I0(GND_net), .I1(bytephase[2]), .I2(GND_net), 
            .I3(n3964), .O(n539[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_72_4 (.CI(n3964), .I0(bytephase[2]), .I1(GND_net), .CO(n3965));
    SB_LUT4 i4701_2_lut (.I0(txtick), .I1(n23), .I2(GND_net), .I3(GND_net), 
            .O(n964));
    defparam i4701_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 add_72_3_lut (.I0(GND_net), .I1(bytephase[1]), .I2(GND_net), 
            .I3(n3963), .O(n539[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_29 (.I0(bytephase[3]), .I1(rx_c), .I2(GND_net), 
            .I3(GND_net), .O(n4438));
    defparam i1_2_lut_adj_29.LUT_INIT = 16'h4444;
    SB_LUT4 i4355_2_lut (.I0(bytephase[5]), .I1(bytephase[4]), .I2(GND_net), 
            .I3(GND_net), .O(n4506));
    defparam i4355_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 rxrst_I_0_4_lut (.I0(n2), .I1(n795), .I2(n4438), .I3(n4506), 
            .O(rxclkcounter_6__N_477));   // ../uart.v(31[39:54])
    defparam rxrst_I_0_4_lut.LUT_INIT = 16'h3373;
    SB_CARRY add_72_3 (.CI(n3963), .I0(bytephase[1]), .I1(GND_net), .CO(n3964));
    SB_LUT4 add_72_2_lut (.I0(GND_net), .I1(bytephase[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n539[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_72_2 (.CI(VCC_net), .I0(bytephase[0]), .I1(GND_net), 
            .CO(n3963));
    SB_LUT4 txclkcounter_144_add_4_10_lut (.I0(GND_net), .I1(GND_net), .I2(txclkcounter[8]), 
            .I3(n3962), .O(n41[8])) /* synthesis syn_instantiated=1 */ ;
    defparam txclkcounter_144_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_3_lut (.I0(txtick), .I1(uart_tx_busy), .I2(n23), 
            .I3(GND_net), .O(n978));   // ../uart.v(63[35:49])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hf8f8;
    SB_LUT4 i4707_2_lut_3_lut (.I0(txtick), .I1(uart_tx_busy), .I2(n23), 
            .I3(GND_net), .O(n1083));   // ../uart.v(63[35:49])
    defparam i4707_2_lut_3_lut.LUT_INIT = 16'h7070;
    VCC i1 (.Y(VCC_net));
    
endmodule
//
// Verilog Description of module RAM
//

module RAM (c_stk_r, \tail[8] , \C_stk_delta[1] , \tailN[0] , GND_net, 
            \S[0] , \S[1] , \S[2] , \S[3] , \S[4] , \S[5] , \S[6] , 
            \S[7] , tc_, A_low, T, clk, write_flag, n11, n14, 
            n2586, n2635, tc_plus_1, n4, tc__7__N_134, n101, n1, 
            n1_adj_1, n1_adj_2, n1_adj_3, n1_adj_4, \tail[9] , \tailN[1] , 
            \tail[10] , \tailN[2] , \tail[11] , \tailN[3] , n1_adj_5, 
            \tail[12] , \tailN[4] , \tail[13] , \tailN[5] , \tail[14] , 
            \tailN[6] , \tail[15] , \tailN[7] , n14_adj_6, n2177, 
            n10, n132, \tail[24] , \tailN[16] , \tail[25] , \tailN[17] , 
            \tail[26] , \tailN[18] , \tail[27] , \tailN[19] , \tail[28] , 
            \tailN[20] , \tail[29] , \tailN[21] , n1_adj_7, \tail[30] , 
            \tailN[22] , \tail[31] , \tailN[23] , \tail[63] , \tail[55] , 
            rd_7__N_374, n1160, \tail[62] , \tail[54] , n1170, \tail[61] , 
            \tail[53] , n1181, \tail[60] , \tail[52] , n1183, \tail[59] , 
            \tail[51] , n1184, \tail[58] , \tail[50] , n1185, \tail[40] , 
            \tailN[32] , \tail[41] , \tailN[33] , \tail[42] , \tailN[34] , 
            \tail[43] , \tailN[35] , \tail[44] , \tailN[36] , \tail[45] , 
            \tailN[37] , \tail[46] , \tailN[38] , \tail[47] , \tailN[39] , 
            \tail[57] , \tail[49] , n1196, \tail[56] , \tail[48] , 
            n1197, n1_adj_8, \tailN[48] , \tailN[49] , \tailN[50] , 
            \tailN[51] , \tailN[52] , \tailN[53] , \tailN[54] , \tailN[55] ) /* synthesis syn_module_defined=1 */ ;
    input [7:0]c_stk_r;
    input \tail[8] ;
    input \C_stk_delta[1] ;
    output \tailN[0] ;
    input GND_net;
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
    output [7:0]T;
    input clk;
    input write_flag;
    input n11;
    input n14;
    input n2586;
    output n2635;
    input [7:0]tc_plus_1;
    input n4;
    input tc__7__N_134;
    input n101;
    output n1;
    output n1_adj_1;
    output n1_adj_2;
    output n1_adj_3;
    output n1_adj_4;
    input \tail[9] ;
    output \tailN[1] ;
    input \tail[10] ;
    output \tailN[2] ;
    input \tail[11] ;
    output \tailN[3] ;
    output n1_adj_5;
    input \tail[12] ;
    output \tailN[4] ;
    input \tail[13] ;
    output \tailN[5] ;
    input \tail[14] ;
    output \tailN[6] ;
    input \tail[15] ;
    output \tailN[7] ;
    input n14_adj_6;
    input n2177;
    input n10;
    output n132;
    input \tail[24] ;
    output \tailN[16] ;
    input \tail[25] ;
    output \tailN[17] ;
    input \tail[26] ;
    output \tailN[18] ;
    input \tail[27] ;
    output \tailN[19] ;
    input \tail[28] ;
    output \tailN[20] ;
    input \tail[29] ;
    output \tailN[21] ;
    output n1_adj_7;
    input \tail[30] ;
    output \tailN[22] ;
    input \tail[31] ;
    output \tailN[23] ;
    input \tail[63] ;
    input \tail[55] ;
    input rd_7__N_374;
    output n1160;
    input \tail[62] ;
    input \tail[54] ;
    output n1170;
    input \tail[61] ;
    input \tail[53] ;
    output n1181;
    input \tail[60] ;
    input \tail[52] ;
    output n1183;
    input \tail[59] ;
    input \tail[51] ;
    output n1184;
    input \tail[58] ;
    input \tail[50] ;
    output n1185;
    input \tail[40] ;
    output \tailN[32] ;
    input \tail[41] ;
    output \tailN[33] ;
    input \tail[42] ;
    output \tailN[34] ;
    input \tail[43] ;
    output \tailN[35] ;
    input \tail[44] ;
    output \tailN[36] ;
    input \tail[45] ;
    output \tailN[37] ;
    input \tail[46] ;
    output \tailN[38] ;
    input \tail[47] ;
    output \tailN[39] ;
    input \tail[57] ;
    input \tail[49] ;
    output n1196;
    input \tail[56] ;
    input \tail[48] ;
    output n1197;
    output n1_adj_8;
    output \tailN[48] ;
    output \tailN[49] ;
    output \tailN[50] ;
    output \tailN[51] ;
    output \tailN[52] ;
    output \tailN[53] ;
    output \tailN[54] ;
    output \tailN[55] ;
    
    wire clk /* synthesis is_clock=1 */ ;   // ../lattice_top.v(10[6:9])
    
    wire VCC_net, n14_adj_631, n4717, n4714, n4711, n4708, n4705, 
        n4702, n4699, n4696;
    
    SB_LUT4 i1769_3_lut (.I0(c_stk_r[0]), .I1(\tail[8] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[0] ));   // ../tok.v(55[13:24])
    defparam i1769_3_lut.LUT_INIT = 16'hcaca;
    SB_RAM512x8 mem2 (.RDATA({T}), .RCLK(clk), .RCLKE(VCC_net), .RE(VCC_net), 
            .RADDR({GND_net, tc_}), .WCLK(clk), .WCLKE(VCC_net), .WE(write_flag), 
            .WADDR({GND_net, \S[7] , \S[6] , \S[5] , \S[4] , \S[3] , 
            \S[2] , \S[1] , \S[0] }), .WDATA({A_low}));
    defparam mem2.INIT_0 = 256'h0000000000000000000000000000000000223832202237322022363220223532;
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
    SB_LUT4 i2581_4_lut (.I0(n11), .I1(n14), .I2(n2586), .I3(n14_adj_631), 
            .O(n2635));
    defparam i2581_4_lut.LUT_INIT = 16'heeec;
    SB_LUT4 i4666_4_lut (.I0(tc_plus_1[0]), .I1(n4), .I2(c_stk_r[0]), 
            .I3(tc__7__N_134), .O(n4717));   // ../tok.v(32[14:15])
    defparam i4666_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i5_4_lut (.I0(c_stk_r[0]), .I1(n4717), .I2(T[2]), .I3(n101), 
            .O(n1));   // ../tok.v(32[14:15])
    defparam i5_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i4662_4_lut (.I0(tc_plus_1[1]), .I1(n4), .I2(c_stk_r[1]), 
            .I3(tc__7__N_134), .O(n4714));   // ../tok.v(32[14:15])
    defparam i4662_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i5_4_lut_adj_20 (.I0(c_stk_r[1]), .I1(n4714), .I2(T[2]), .I3(n101), 
            .O(n1_adj_1));   // ../tok.v(32[14:15])
    defparam i5_4_lut_adj_20.LUT_INIT = 16'hc0ca;
    SB_LUT4 i4658_4_lut (.I0(tc_plus_1[2]), .I1(n4), .I2(c_stk_r[2]), 
            .I3(tc__7__N_134), .O(n4711));   // ../tok.v(32[14:15])
    defparam i4658_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i5_4_lut_adj_21 (.I0(c_stk_r[2]), .I1(n4711), .I2(T[2]), .I3(n101), 
            .O(n1_adj_2));   // ../tok.v(32[14:15])
    defparam i5_4_lut_adj_21.LUT_INIT = 16'hc0ca;
    SB_LUT4 i4654_4_lut (.I0(tc_plus_1[3]), .I1(n4), .I2(c_stk_r[3]), 
            .I3(tc__7__N_134), .O(n4708));   // ../tok.v(32[14:15])
    defparam i4654_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i5_4_lut_adj_22 (.I0(c_stk_r[3]), .I1(n4708), .I2(T[2]), .I3(n101), 
            .O(n1_adj_3));   // ../tok.v(32[14:15])
    defparam i5_4_lut_adj_22.LUT_INIT = 16'hc0ca;
    SB_LUT4 i4650_4_lut (.I0(tc_plus_1[4]), .I1(n4), .I2(c_stk_r[4]), 
            .I3(tc__7__N_134), .O(n4705));   // ../tok.v(32[14:15])
    defparam i4650_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i5_4_lut_adj_23 (.I0(c_stk_r[4]), .I1(n4705), .I2(T[2]), .I3(n101), 
            .O(n1_adj_4));   // ../tok.v(32[14:15])
    defparam i5_4_lut_adj_23.LUT_INIT = 16'hc0ca;
    SB_LUT4 i4645_4_lut (.I0(tc_plus_1[5]), .I1(n4), .I2(c_stk_r[5]), 
            .I3(tc__7__N_134), .O(n4702));   // ../tok.v(32[14:15])
    defparam i4645_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1732_3_lut (.I0(c_stk_r[1]), .I1(\tail[9] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[1] ));   // ../tok.v(55[13:24])
    defparam i1732_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1695_3_lut (.I0(c_stk_r[2]), .I1(\tail[10] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[2] ));   // ../tok.v(55[13:24])
    defparam i1695_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1658_3_lut (.I0(c_stk_r[3]), .I1(\tail[11] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[3] ));   // ../tok.v(55[13:24])
    defparam i1658_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5_4_lut_adj_24 (.I0(c_stk_r[5]), .I1(n4702), .I2(T[2]), .I3(n101), 
            .O(n1_adj_5));   // ../tok.v(32[14:15])
    defparam i5_4_lut_adj_24.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1621_3_lut (.I0(c_stk_r[4]), .I1(\tail[12] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[4] ));   // ../tok.v(55[13:24])
    defparam i1621_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1584_3_lut (.I0(c_stk_r[5]), .I1(\tail[13] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[5] ));   // ../tok.v(55[13:24])
    defparam i1584_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1547_3_lut (.I0(c_stk_r[6]), .I1(\tail[14] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[6] ));   // ../tok.v(55[13:24])
    defparam i1547_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1510_3_lut (.I0(c_stk_r[7]), .I1(\tail[15] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[7] ));   // ../tok.v(55[13:24])
    defparam i1510_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut (.I0(n14_adj_6), .I1(n2177), .I2(n10), .I3(GND_net), 
            .O(n132));
    defparam i1_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1773_3_lut (.I0(\tail[8] ), .I1(\tail[24] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[16] ));   // ../tok.v(55[13:24])
    defparam i1773_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1736_3_lut (.I0(\tail[9] ), .I1(\tail[25] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[17] ));   // ../tok.v(55[13:24])
    defparam i1736_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1699_3_lut (.I0(\tail[10] ), .I1(\tail[26] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[18] ));   // ../tok.v(55[13:24])
    defparam i1699_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4641_4_lut (.I0(tc_plus_1[6]), .I1(n4), .I2(c_stk_r[6]), 
            .I3(tc__7__N_134), .O(n4699));   // ../tok.v(32[14:15])
    defparam i4641_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i1662_3_lut (.I0(\tail[11] ), .I1(\tail[27] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[19] ));   // ../tok.v(55[13:24])
    defparam i1662_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1625_3_lut (.I0(\tail[12] ), .I1(\tail[28] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[20] ));   // ../tok.v(55[13:24])
    defparam i1625_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1588_3_lut (.I0(\tail[13] ), .I1(\tail[29] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[21] ));   // ../tok.v(55[13:24])
    defparam i1588_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5_4_lut_adj_25 (.I0(c_stk_r[6]), .I1(n4699), .I2(T[2]), .I3(n101), 
            .O(n1_adj_7));   // ../tok.v(32[14:15])
    defparam i5_4_lut_adj_25.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1551_3_lut (.I0(\tail[14] ), .I1(\tail[30] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[22] ));   // ../tok.v(55[13:24])
    defparam i1551_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1514_3_lut (.I0(\tail[15] ), .I1(\tail[31] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[23] ));   // ../tok.v(55[13:24])
    defparam i1514_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1509_4_lut (.I0(\tail[63] ), .I1(\tail[55] ), .I2(rd_7__N_374), 
            .I3(\C_stk_delta[1] ), .O(n1160));   // ../tok.v(55[13:24])
    defparam i1509_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1546_4_lut (.I0(\tail[62] ), .I1(\tail[54] ), .I2(rd_7__N_374), 
            .I3(\C_stk_delta[1] ), .O(n1170));   // ../tok.v(55[13:24])
    defparam i1546_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1583_4_lut (.I0(\tail[61] ), .I1(\tail[53] ), .I2(rd_7__N_374), 
            .I3(\C_stk_delta[1] ), .O(n1181));   // ../tok.v(55[13:24])
    defparam i1583_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1620_4_lut (.I0(\tail[60] ), .I1(\tail[52] ), .I2(rd_7__N_374), 
            .I3(\C_stk_delta[1] ), .O(n1183));   // ../tok.v(55[13:24])
    defparam i1620_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1657_4_lut (.I0(\tail[59] ), .I1(\tail[51] ), .I2(rd_7__N_374), 
            .I3(\C_stk_delta[1] ), .O(n1184));   // ../tok.v(55[13:24])
    defparam i1657_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1694_4_lut (.I0(\tail[58] ), .I1(\tail[50] ), .I2(rd_7__N_374), 
            .I3(\C_stk_delta[1] ), .O(n1185));   // ../tok.v(55[13:24])
    defparam i1694_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1770_3_lut (.I0(\tail[24] ), .I1(\tail[40] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[32] ));   // ../tok.v(55[13:24])
    defparam i1770_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1733_3_lut (.I0(\tail[25] ), .I1(\tail[41] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[33] ));   // ../tok.v(55[13:24])
    defparam i1733_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1696_3_lut (.I0(\tail[26] ), .I1(\tail[42] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[34] ));   // ../tok.v(55[13:24])
    defparam i1696_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1659_3_lut (.I0(\tail[27] ), .I1(\tail[43] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[35] ));   // ../tok.v(55[13:24])
    defparam i1659_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1622_3_lut (.I0(\tail[28] ), .I1(\tail[44] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[36] ));   // ../tok.v(55[13:24])
    defparam i1622_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1585_3_lut (.I0(\tail[29] ), .I1(\tail[45] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[37] ));   // ../tok.v(55[13:24])
    defparam i1585_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1548_3_lut (.I0(\tail[30] ), .I1(\tail[46] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[38] ));   // ../tok.v(55[13:24])
    defparam i1548_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1511_3_lut (.I0(\tail[31] ), .I1(\tail[47] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[39] ));   // ../tok.v(55[13:24])
    defparam i1511_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1731_4_lut (.I0(\tail[57] ), .I1(\tail[49] ), .I2(rd_7__N_374), 
            .I3(\C_stk_delta[1] ), .O(n1196));   // ../tok.v(55[13:24])
    defparam i1731_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1768_4_lut (.I0(\tail[56] ), .I1(\tail[48] ), .I2(rd_7__N_374), 
            .I3(\C_stk_delta[1] ), .O(n1197));   // ../tok.v(55[13:24])
    defparam i1768_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i4637_4_lut (.I0(tc_plus_1[7]), .I1(n4), .I2(c_stk_r[7]), 
            .I3(tc__7__N_134), .O(n4696));   // ../tok.v(32[14:15])
    defparam i4637_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i5_4_lut_adj_26 (.I0(c_stk_r[7]), .I1(n4696), .I2(T[2]), .I3(n101), 
            .O(n1_adj_8));   // ../tok.v(32[14:15])
    defparam i5_4_lut_adj_26.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1772_3_lut (.I0(\tail[40] ), .I1(\tail[56] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[48] ));   // ../tok.v(55[13:24])
    defparam i1772_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1735_3_lut (.I0(\tail[41] ), .I1(\tail[57] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[49] ));   // ../tok.v(55[13:24])
    defparam i1735_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1698_3_lut (.I0(\tail[42] ), .I1(\tail[58] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[50] ));   // ../tok.v(55[13:24])
    defparam i1698_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1661_3_lut (.I0(\tail[43] ), .I1(\tail[59] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[51] ));   // ../tok.v(55[13:24])
    defparam i1661_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1624_3_lut (.I0(\tail[44] ), .I1(\tail[60] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[52] ));   // ../tok.v(55[13:24])
    defparam i1624_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1587_3_lut (.I0(\tail[45] ), .I1(\tail[61] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[53] ));   // ../tok.v(55[13:24])
    defparam i1587_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1550_3_lut (.I0(\tail[46] ), .I1(\tail[62] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[54] ));   // ../tok.v(55[13:24])
    defparam i1550_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1513_3_lut (.I0(\tail[47] ), .I1(\tail[63] ), .I2(\C_stk_delta[1] ), 
            .I3(GND_net), .O(\tailN[55] ));   // ../tok.v(55[13:24])
    defparam i1513_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_4_lut_4_lut (.I0(T[1]), .I1(T[0]), .I2(T[2]), .I3(T[3]), 
            .O(n14_adj_631));
    defparam i2_4_lut_4_lut.LUT_INIT = 16'haa02;
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

module STACK (rd_7__N_374, n240, GND_net, n602, tc_plus_1, c_stk_w_7__N_18, 
            \tailN[0] , clk, c_stk_r, \tailN[55] , \tail[55] , \tailN[54] , 
            \tail[54] , \tailN[53] , \tail[53] , \tailN[52] , \tail[52] , 
            \tailN[51] , \tail[51] , \tailN[50] , \tail[50] , \tailN[49] , 
            \tail[49] , \tailN[48] , \tail[48] , \tail[47] , \tail[46] , 
            \tail[45] , \tail[44] , \tail[43] , \tail[42] , \tail[41] , 
            \tail[40] , \tailN[39] , \tailN[38] , \tailN[37] , \tailN[36] , 
            \tailN[35] , \tailN[34] , \tailN[33] , \tailN[32] , \tail[31] , 
            \tail[30] , \tail[29] , \tail[28] , \tail[27] , \tail[26] , 
            \tail[25] , \tail[24] , \tailN[23] , \tailN[22] , \tailN[21] , 
            \tailN[20] , \tailN[19] , \tailN[18] , \tailN[17] , \tailN[16] , 
            \tail[15] , \tail[14] , \tail[13] , \tail[12] , \tail[11] , 
            \tail[10] , \tail[9] , \tail[8] , \tailN[7] , \tailN[6] , 
            \tailN[5] , \tailN[4] , \tailN[3] , \tailN[2] , \tailN[1] , 
            \C_stk_delta[1] , n1197, \tail[56] , n1196, \tail[57] , 
            n1185, \tail[58] , n1184, \tail[59] , n1183, \tail[60] , 
            n1181, \tail[61] , n1170, \tail[62] , n1160, \tail[63] ) /* synthesis syn_module_defined=1 */ ;
    input rd_7__N_374;
    input n240;
    input GND_net;
    input n602;
    input [7:0]tc_plus_1;
    input [7:0]c_stk_w_7__N_18;
    input \tailN[0] ;
    input clk;
    output [7:0]c_stk_r;
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
    input \C_stk_delta[1] ;
    input n1197;
    output \tail[56] ;
    input n1196;
    output \tail[57] ;
    input n1185;
    output \tail[58] ;
    input n1184;
    output \tail[59] ;
    input n1183;
    output \tail[60] ;
    input n1181;
    output \tail[61] ;
    input n1170;
    output \tail[62] ;
    input n1160;
    output \tail[63] ;
    
    wire clk /* synthesis is_clock=1 */ ;   // ../lattice_top.v(10[6:9])
    
    wire n600, n4894;
    wire [63:0]tail;   // ../stack.v(16[16:20])
    
    wire n4897, n4888, n4891, n4915, n4900, n4903, n4906, n4909, 
        n4885, n4879, n4873;
    wire [63:0]tailN;   // ../stack.v(18[17:22])
    
    wire n4912, n4882, n4876, n4870;
    
    SB_LUT4 i545_2_lut (.I0(rd_7__N_374), .I1(n240), .I2(GND_net), .I3(GND_net), 
            .O(n600));
    defparam i545_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 n602_bdd_4_lut_4739 (.I0(n602), .I1(tc_plus_1[0]), .I2(c_stk_w_7__N_18[0]), 
            .I3(n600), .O(n4894));
    defparam n602_bdd_4_lut_4739.LUT_INIT = 16'he4aa;
    SB_DFFE tail_i0_i0 (.Q(tail[0]), .C(clk), .E(rd_7__N_374), .D(\tailN[0] ));   // ../stack.v(24[10] 29[6])
    SB_DFF head_i0_i0 (.Q(c_stk_r[0]), .C(clk), .D(n4897));   // ../stack.v(24[10] 29[6])
    SB_LUT4 n4894_bdd_4_lut (.I0(n4894), .I1(tail[0]), .I2(c_stk_r[0]), 
            .I3(n600), .O(n4897));
    defparam n4894_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 n602_bdd_4_lut_4734 (.I0(n602), .I1(tc_plus_1[4]), .I2(c_stk_w_7__N_18[4]), 
            .I3(n600), .O(n4888));
    defparam n602_bdd_4_lut_4734.LUT_INIT = 16'he4aa;
    SB_LUT4 n4888_bdd_4_lut (.I0(n4888), .I1(tail[4]), .I2(c_stk_r[4]), 
            .I3(n600), .O(n4891));
    defparam n4888_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF head_i0_i7 (.Q(c_stk_r[7]), .C(clk), .D(n4915));   // ../stack.v(24[10] 29[6])
    SB_LUT4 n4900_bdd_4_lut (.I0(n4900), .I1(tail[5]), .I2(c_stk_r[5]), 
            .I3(n600), .O(n4903));
    defparam n4900_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 n602_bdd_4_lut_4749 (.I0(n602), .I1(tc_plus_1[6]), .I2(c_stk_w_7__N_18[6]), 
            .I3(n600), .O(n4906));
    defparam n602_bdd_4_lut_4749.LUT_INIT = 16'he4aa;
    SB_DFF head_i0_i6 (.Q(c_stk_r[6]), .C(clk), .D(n4909));   // ../stack.v(24[10] 29[6])
    SB_DFF head_i0_i5 (.Q(c_stk_r[5]), .C(clk), .D(n4903));   // ../stack.v(24[10] 29[6])
    SB_DFF head_i0_i4 (.Q(c_stk_r[4]), .C(clk), .D(n4891));   // ../stack.v(24[10] 29[6])
    SB_DFF head_i0_i3 (.Q(c_stk_r[3]), .C(clk), .D(n4885));   // ../stack.v(24[10] 29[6])
    SB_DFF head_i0_i2 (.Q(c_stk_r[2]), .C(clk), .D(n4879));   // ../stack.v(24[10] 29[6])
    SB_DFF head_i0_i1 (.Q(c_stk_r[1]), .C(clk), .D(n4873));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i55 (.Q(\tail[55] ), .C(clk), .E(rd_7__N_374), .D(\tailN[55] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i54 (.Q(\tail[54] ), .C(clk), .E(rd_7__N_374), .D(\tailN[54] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i53 (.Q(\tail[53] ), .C(clk), .E(rd_7__N_374), .D(\tailN[53] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i52 (.Q(\tail[52] ), .C(clk), .E(rd_7__N_374), .D(\tailN[52] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i51 (.Q(\tail[51] ), .C(clk), .E(rd_7__N_374), .D(\tailN[51] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i50 (.Q(\tail[50] ), .C(clk), .E(rd_7__N_374), .D(\tailN[50] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i49 (.Q(\tail[49] ), .C(clk), .E(rd_7__N_374), .D(\tailN[49] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i48 (.Q(\tail[48] ), .C(clk), .E(rd_7__N_374), .D(\tailN[48] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i47 (.Q(\tail[47] ), .C(clk), .E(rd_7__N_374), .D(tailN[47]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i46 (.Q(\tail[46] ), .C(clk), .E(rd_7__N_374), .D(tailN[46]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i45 (.Q(\tail[45] ), .C(clk), .E(rd_7__N_374), .D(tailN[45]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i44 (.Q(\tail[44] ), .C(clk), .E(rd_7__N_374), .D(tailN[44]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i43 (.Q(\tail[43] ), .C(clk), .E(rd_7__N_374), .D(tailN[43]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i42 (.Q(\tail[42] ), .C(clk), .E(rd_7__N_374), .D(tailN[42]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i41 (.Q(\tail[41] ), .C(clk), .E(rd_7__N_374), .D(tailN[41]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i40 (.Q(\tail[40] ), .C(clk), .E(rd_7__N_374), .D(tailN[40]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i39 (.Q(tail[39]), .C(clk), .E(rd_7__N_374), .D(\tailN[39] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i38 (.Q(tail[38]), .C(clk), .E(rd_7__N_374), .D(\tailN[38] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i37 (.Q(tail[37]), .C(clk), .E(rd_7__N_374), .D(\tailN[37] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i36 (.Q(tail[36]), .C(clk), .E(rd_7__N_374), .D(\tailN[36] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i35 (.Q(tail[35]), .C(clk), .E(rd_7__N_374), .D(\tailN[35] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i34 (.Q(tail[34]), .C(clk), .E(rd_7__N_374), .D(\tailN[34] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i33 (.Q(tail[33]), .C(clk), .E(rd_7__N_374), .D(\tailN[33] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i32 (.Q(tail[32]), .C(clk), .E(rd_7__N_374), .D(\tailN[32] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i31 (.Q(\tail[31] ), .C(clk), .E(rd_7__N_374), .D(tailN[31]));   // ../stack.v(24[10] 29[6])
    SB_LUT4 n4912_bdd_4_lut (.I0(n4912), .I1(tail[7]), .I2(c_stk_r[7]), 
            .I3(n600), .O(n4915));
    defparam n4912_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFE tail_i0_i30 (.Q(\tail[30] ), .C(clk), .E(rd_7__N_374), .D(tailN[30]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i29 (.Q(\tail[29] ), .C(clk), .E(rd_7__N_374), .D(tailN[29]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i28 (.Q(\tail[28] ), .C(clk), .E(rd_7__N_374), .D(tailN[28]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i27 (.Q(\tail[27] ), .C(clk), .E(rd_7__N_374), .D(tailN[27]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i26 (.Q(\tail[26] ), .C(clk), .E(rd_7__N_374), .D(tailN[26]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i25 (.Q(\tail[25] ), .C(clk), .E(rd_7__N_374), .D(tailN[25]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i24 (.Q(\tail[24] ), .C(clk), .E(rd_7__N_374), .D(tailN[24]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i23 (.Q(tail[23]), .C(clk), .E(rd_7__N_374), .D(\tailN[23] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i22 (.Q(tail[22]), .C(clk), .E(rd_7__N_374), .D(\tailN[22] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i21 (.Q(tail[21]), .C(clk), .E(rd_7__N_374), .D(\tailN[21] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i20 (.Q(tail[20]), .C(clk), .E(rd_7__N_374), .D(\tailN[20] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i19 (.Q(tail[19]), .C(clk), .E(rd_7__N_374), .D(\tailN[19] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i18 (.Q(tail[18]), .C(clk), .E(rd_7__N_374), .D(\tailN[18] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i17 (.Q(tail[17]), .C(clk), .E(rd_7__N_374), .D(\tailN[17] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i16 (.Q(tail[16]), .C(clk), .E(rd_7__N_374), .D(\tailN[16] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i15 (.Q(\tail[15] ), .C(clk), .E(rd_7__N_374), .D(tailN[15]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i14 (.Q(\tail[14] ), .C(clk), .E(rd_7__N_374), .D(tailN[14]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i13 (.Q(\tail[13] ), .C(clk), .E(rd_7__N_374), .D(tailN[13]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i12 (.Q(\tail[12] ), .C(clk), .E(rd_7__N_374), .D(tailN[12]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i11 (.Q(\tail[11] ), .C(clk), .E(rd_7__N_374), .D(tailN[11]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i10 (.Q(\tail[10] ), .C(clk), .E(rd_7__N_374), .D(tailN[10]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i9 (.Q(\tail[9] ), .C(clk), .E(rd_7__N_374), .D(tailN[9]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i8 (.Q(\tail[8] ), .C(clk), .E(rd_7__N_374), .D(tailN[8]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i7 (.Q(tail[7]), .C(clk), .E(rd_7__N_374), .D(\tailN[7] ));   // ../stack.v(24[10] 29[6])
    SB_LUT4 n602_bdd_4_lut_4729 (.I0(n602), .I1(tc_plus_1[3]), .I2(c_stk_w_7__N_18[3]), 
            .I3(n600), .O(n4882));
    defparam n602_bdd_4_lut_4729.LUT_INIT = 16'he4aa;
    SB_DFFE tail_i0_i6 (.Q(tail[6]), .C(clk), .E(rd_7__N_374), .D(\tailN[6] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i5 (.Q(tail[5]), .C(clk), .E(rd_7__N_374), .D(\tailN[5] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i4 (.Q(tail[4]), .C(clk), .E(rd_7__N_374), .D(\tailN[4] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i3 (.Q(tail[3]), .C(clk), .E(rd_7__N_374), .D(\tailN[3] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i2 (.Q(tail[2]), .C(clk), .E(rd_7__N_374), .D(\tailN[2] ));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i1 (.Q(tail[1]), .C(clk), .E(rd_7__N_374), .D(\tailN[1] ));   // ../stack.v(24[10] 29[6])
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
    SB_LUT4 n4882_bdd_4_lut (.I0(n4882), .I1(tail[3]), .I2(c_stk_r[3]), 
            .I3(n600), .O(n4885));
    defparam n4882_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 n602_bdd_4_lut_4724 (.I0(n602), .I1(tc_plus_1[2]), .I2(c_stk_w_7__N_18[2]), 
            .I3(n600), .O(n4876));
    defparam n602_bdd_4_lut_4724.LUT_INIT = 16'he4aa;
    SB_LUT4 n4876_bdd_4_lut (.I0(n4876), .I1(tail[2]), .I2(c_stk_r[2]), 
            .I3(n600), .O(n4879));
    defparam n4876_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 n602_bdd_4_lut_4719 (.I0(n602), .I1(tc_plus_1[1]), .I2(c_stk_w_7__N_18[1]), 
            .I3(n600), .O(n4870));
    defparam n602_bdd_4_lut_4719.LUT_INIT = 16'he4aa;
    SB_LUT4 n4870_bdd_4_lut (.I0(n4870), .I1(tail[1]), .I2(c_stk_r[1]), 
            .I3(n600), .O(n4873));
    defparam n4870_bdd_4_lut.LUT_INIT = 16'haad8;
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
    SB_DFF tail_i0_i56 (.Q(\tail[56] ), .C(clk), .D(n1197));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i57 (.Q(\tail[57] ), .C(clk), .D(n1196));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i58 (.Q(\tail[58] ), .C(clk), .D(n1185));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i59 (.Q(\tail[59] ), .C(clk), .D(n1184));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i60 (.Q(\tail[60] ), .C(clk), .D(n1183));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i61 (.Q(\tail[61] ), .C(clk), .D(n1181));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i62 (.Q(\tail[62] ), .C(clk), .D(n1170));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i63 (.Q(\tail[63] ), .C(clk), .D(n1160));   // ../stack.v(24[10] 29[6])
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
    SB_LUT4 n602_bdd_4_lut_4744 (.I0(n602), .I1(tc_plus_1[5]), .I2(c_stk_w_7__N_18[5]), 
            .I3(n600), .O(n4900));
    defparam n602_bdd_4_lut_4744.LUT_INIT = 16'he4aa;
    SB_LUT4 n4906_bdd_4_lut (.I0(n4906), .I1(tail[6]), .I2(c_stk_r[6]), 
            .I3(n600), .O(n4909));
    defparam n4906_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 n602_bdd_4_lut (.I0(n602), .I1(tc_plus_1[7]), .I2(c_stk_w_7__N_18[7]), 
            .I3(n600), .O(n4912));
    defparam n602_bdd_4_lut.LUT_INIT = 16'he4aa;
    
endmodule
//
// Verilog Description of module \STACK(WIDTH=16) 
//

module \STACK(WIDTH=16)  (\tail[127] , n29, n786, \tail[112] , \tail[113] , 
            clk, S, \tail[114] , \tail[115] , \tail[116] , \tail[117] , 
            \tail[118] , \tail[119] , \tail[120] , \tail[121] , \tail[122] , 
            \tail[123] , \tail[124] , \tail[125] , \tail[126] , \tail[96] , 
            \tail[97] , \tail[98] , \tail[99] , \tail[100] , \tail[101] , 
            \tail[102] , \tail[103] , \tail[104] , \tail[105] , \tail[106] , 
            \tail[107] , \tail[108] , \tail[109] , \tail[110] , \tail[111] , 
            n1122, n1126, n1129, n1143, n1152, n1155, n1158, n1163, 
            n1166, n1169, n1176, n1179, n1090, n1102, n1114, n1119, 
            A_low, n237, GND_net, \A[15] , \A[14] , \A[13] , \A[12] , 
            \A[11] , \A[10] , \A[9] , \A[8] ) /* synthesis syn_module_defined=1 */ ;
    output \tail[127] ;
    input n29;
    input n786;
    output \tail[112] ;
    output \tail[113] ;
    input clk;
    output [15:0]S;
    output \tail[114] ;
    output \tail[115] ;
    output \tail[116] ;
    output \tail[117] ;
    output \tail[118] ;
    output \tail[119] ;
    output \tail[120] ;
    output \tail[121] ;
    output \tail[122] ;
    output \tail[123] ;
    output \tail[124] ;
    output \tail[125] ;
    output \tail[126] ;
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
    input n1122;
    input n1126;
    input n1129;
    input n1143;
    input n1152;
    input n1155;
    input n1158;
    input n1163;
    input n1166;
    input n1169;
    input n1176;
    input n1179;
    input n1090;
    input n1102;
    input n1114;
    input n1119;
    input [7:0]A_low;
    input n237;
    input GND_net;
    input \A[15] ;
    input \A[14] ;
    input \A[13] ;
    input \A[12] ;
    input \A[11] ;
    input \A[10] ;
    input \A[9] ;
    input \A[8] ;
    
    wire clk /* synthesis is_clock=1 */ ;   // ../lattice_top.v(10[6:9])
    wire [127:0]tail;   // ../stack.v(16[16:20])
    wire [127:0]tailN;   // ../stack.v(18[17:22])
    
    wire rd_15__N_301;
    wire [15:0]headN;   // ../stack.v(17[20:25])
    
    SB_LUT4 tail_111__I_0_i112_3_lut_4_lut (.I0(tail[95]), .I1(\tail[127] ), 
            .I2(n29), .I3(n786), .O(tailN[111]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i112_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i97_3_lut_4_lut (.I0(tail[80]), .I1(\tail[112] ), 
            .I2(n29), .I3(n786), .O(tailN[96]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i97_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i98_3_lut_4_lut (.I0(tail[81]), .I1(\tail[113] ), 
            .I2(n29), .I3(n786), .O(tailN[97]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i98_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFFE tail_i0_i0 (.Q(tail[0]), .C(clk), .E(rd_15__N_301), .D(tailN[0]));   // ../stack.v(24[10] 29[6])
    SB_DFFE head_i0_i0 (.Q(S[0]), .C(clk), .E(rd_15__N_301), .D(headN[0]));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_111__I_0_i99_3_lut_4_lut (.I0(tail[82]), .I1(\tail[114] ), 
            .I2(n29), .I3(n786), .O(tailN[98]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i99_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i100_3_lut_4_lut (.I0(tail[83]), .I1(\tail[115] ), 
            .I2(n29), .I3(n786), .O(tailN[99]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i100_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFFE tail_i0_i46 (.Q(tail[46]), .C(clk), .E(rd_15__N_301), .D(tailN[46]));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_111__I_0_i101_3_lut_4_lut (.I0(tail[84]), .I1(\tail[116] ), 
            .I2(n29), .I3(n786), .O(tailN[100]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i101_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFFE tail_i0_i45 (.Q(tail[45]), .C(clk), .E(rd_15__N_301), .D(tailN[45]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i44 (.Q(tail[44]), .C(clk), .E(rd_15__N_301), .D(tailN[44]));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_111__I_0_i102_3_lut_4_lut (.I0(tail[85]), .I1(\tail[117] ), 
            .I2(n29), .I3(n786), .O(tailN[101]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i102_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFFE tail_i0_i43 (.Q(tail[43]), .C(clk), .E(rd_15__N_301), .D(tailN[43]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i42 (.Q(tail[42]), .C(clk), .E(rd_15__N_301), .D(tailN[42]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i41 (.Q(tail[41]), .C(clk), .E(rd_15__N_301), .D(tailN[41]));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_111__I_0_i103_3_lut_4_lut (.I0(tail[86]), .I1(\tail[118] ), 
            .I2(n29), .I3(n786), .O(tailN[102]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i103_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFFE tail_i0_i40 (.Q(tail[40]), .C(clk), .E(rd_15__N_301), .D(tailN[40]));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_111__I_0_i104_3_lut_4_lut (.I0(tail[87]), .I1(\tail[119] ), 
            .I2(n29), .I3(n786), .O(tailN[103]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i104_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFFE tail_i0_i39 (.Q(tail[39]), .C(clk), .E(rd_15__N_301), .D(tailN[39]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i38 (.Q(tail[38]), .C(clk), .E(rd_15__N_301), .D(tailN[38]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i37 (.Q(tail[37]), .C(clk), .E(rd_15__N_301), .D(tailN[37]));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_111__I_0_i105_3_lut_4_lut (.I0(tail[88]), .I1(\tail[120] ), 
            .I2(n29), .I3(n786), .O(tailN[104]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i105_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFFE tail_i0_i36 (.Q(tail[36]), .C(clk), .E(rd_15__N_301), .D(tailN[36]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i35 (.Q(tail[35]), .C(clk), .E(rd_15__N_301), .D(tailN[35]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i34 (.Q(tail[34]), .C(clk), .E(rd_15__N_301), .D(tailN[34]));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_111__I_0_i106_3_lut_4_lut (.I0(tail[89]), .I1(\tail[121] ), 
            .I2(n29), .I3(n786), .O(tailN[105]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i106_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFFE tail_i0_i33 (.Q(tail[33]), .C(clk), .E(rd_15__N_301), .D(tailN[33]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i32 (.Q(tail[32]), .C(clk), .E(rd_15__N_301), .D(tailN[32]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i31 (.Q(tail[31]), .C(clk), .E(rd_15__N_301), .D(tailN[31]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i30 (.Q(tail[30]), .C(clk), .E(rd_15__N_301), .D(tailN[30]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i29 (.Q(tail[29]), .C(clk), .E(rd_15__N_301), .D(tailN[29]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i28 (.Q(tail[28]), .C(clk), .E(rd_15__N_301), .D(tailN[28]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i27 (.Q(tail[27]), .C(clk), .E(rd_15__N_301), .D(tailN[27]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i26 (.Q(tail[26]), .C(clk), .E(rd_15__N_301), .D(tailN[26]));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_111__I_0_i107_3_lut_4_lut (.I0(tail[90]), .I1(\tail[122] ), 
            .I2(n29), .I3(n786), .O(tailN[106]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i107_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFFE tail_i0_i25 (.Q(tail[25]), .C(clk), .E(rd_15__N_301), .D(tailN[25]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i24 (.Q(tail[24]), .C(clk), .E(rd_15__N_301), .D(tailN[24]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i23 (.Q(tail[23]), .C(clk), .E(rd_15__N_301), .D(tailN[23]));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_111__I_0_i108_3_lut_4_lut (.I0(tail[91]), .I1(\tail[123] ), 
            .I2(n29), .I3(n786), .O(tailN[107]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i108_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFFE tail_i0_i22 (.Q(tail[22]), .C(clk), .E(rd_15__N_301), .D(tailN[22]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i21 (.Q(tail[21]), .C(clk), .E(rd_15__N_301), .D(tailN[21]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i20 (.Q(tail[20]), .C(clk), .E(rd_15__N_301), .D(tailN[20]));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_111__I_0_i109_3_lut_4_lut (.I0(tail[92]), .I1(\tail[124] ), 
            .I2(n29), .I3(n786), .O(tailN[108]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i109_3_lut_4_lut.LUT_INIT = 16'hcaaa;
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
    SB_LUT4 tail_111__I_0_i110_3_lut_4_lut (.I0(tail[93]), .I1(\tail[125] ), 
            .I2(n29), .I3(n786), .O(tailN[109]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i110_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFFE tail_i0_i9 (.Q(tail[9]), .C(clk), .E(rd_15__N_301), .D(tailN[9]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i8 (.Q(tail[8]), .C(clk), .E(rd_15__N_301), .D(tailN[8]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i7 (.Q(tail[7]), .C(clk), .E(rd_15__N_301), .D(tailN[7]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i6 (.Q(tail[6]), .C(clk), .E(rd_15__N_301), .D(tailN[6]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i5 (.Q(tail[5]), .C(clk), .E(rd_15__N_301), .D(tailN[5]));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_111__I_0_i111_3_lut_4_lut (.I0(tail[94]), .I1(\tail[126] ), 
            .I2(n29), .I3(n786), .O(tailN[110]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i111_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFFE tail_i0_i4 (.Q(tail[4]), .C(clk), .E(rd_15__N_301), .D(tailN[4]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i3 (.Q(tail[3]), .C(clk), .E(rd_15__N_301), .D(tailN[3]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i2 (.Q(tail[2]), .C(clk), .E(rd_15__N_301), .D(tailN[2]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i1 (.Q(tail[1]), .C(clk), .E(rd_15__N_301), .D(tailN[1]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i47 (.Q(tail[47]), .C(clk), .E(rd_15__N_301), .D(tailN[47]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i48 (.Q(tail[48]), .C(clk), .E(rd_15__N_301), .D(tailN[48]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i49 (.Q(tail[49]), .C(clk), .E(rd_15__N_301), .D(tailN[49]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i50 (.Q(tail[50]), .C(clk), .E(rd_15__N_301), .D(tailN[50]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i51 (.Q(tail[51]), .C(clk), .E(rd_15__N_301), .D(tailN[51]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i52 (.Q(tail[52]), .C(clk), .E(rd_15__N_301), .D(tailN[52]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i53 (.Q(tail[53]), .C(clk), .E(rd_15__N_301), .D(tailN[53]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i54 (.Q(tail[54]), .C(clk), .E(rd_15__N_301), .D(tailN[54]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i55 (.Q(tail[55]), .C(clk), .E(rd_15__N_301), .D(tailN[55]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i56 (.Q(tail[56]), .C(clk), .E(rd_15__N_301), .D(tailN[56]));   // ../stack.v(24[10] 29[6])
    SB_DFFE tail_i0_i57 (.Q(tail[57]), .C(clk), .E(rd_15__N_301), .D(tailN[57]));   // ../stack.v(24[10] 29[6])
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
    SB_DFF tail_i0_i116 (.Q(\tail[116] ), .C(clk), .D(n1122));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i115 (.Q(\tail[115] ), .C(clk), .D(n1126));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i114 (.Q(\tail[114] ), .C(clk), .D(n1129));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i113 (.Q(\tail[113] ), .C(clk), .D(n1143));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i123 (.Q(\tail[123] ), .C(clk), .D(n1152));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i112 (.Q(\tail[112] ), .C(clk), .D(n1155));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i122 (.Q(\tail[122] ), .C(clk), .D(n1158));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i121 (.Q(\tail[121] ), .C(clk), .D(n1163));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i120 (.Q(\tail[120] ), .C(clk), .D(n1166));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i119 (.Q(\tail[119] ), .C(clk), .D(n1169));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i118 (.Q(\tail[118] ), .C(clk), .D(n1176));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i127 (.Q(\tail[127] ), .C(clk), .D(n1179));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i126 (.Q(\tail[126] ), .C(clk), .D(n1090));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i125 (.Q(\tail[125] ), .C(clk), .D(n1102));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i124 (.Q(\tail[124] ), .C(clk), .D(n1114));   // ../stack.v(24[10] 29[6])
    SB_DFF tail_i0_i117 (.Q(\tail[117] ), .C(clk), .D(n1119));   // ../stack.v(24[10] 29[6])
    SB_LUT4 tail_111__I_0_i48_3_lut_4_lut (.I0(tail[31]), .I1(tail[63]), 
            .I2(n29), .I3(n786), .O(tailN[47]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i48_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i49_3_lut_4_lut (.I0(tail[32]), .I1(tail[64]), 
            .I2(n29), .I3(n786), .O(tailN[48]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i49_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i47_3_lut_4_lut (.I0(tail[30]), .I1(tail[62]), 
            .I2(n29), .I3(n786), .O(tailN[46]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i47_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i50_3_lut_4_lut (.I0(tail[33]), .I1(tail[65]), 
            .I2(n29), .I3(n786), .O(tailN[49]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i50_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i51_3_lut_4_lut (.I0(tail[34]), .I1(tail[66]), 
            .I2(n29), .I3(n786), .O(tailN[50]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i51_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i52_3_lut_4_lut (.I0(tail[35]), .I1(tail[67]), 
            .I2(n29), .I3(n786), .O(tailN[51]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i52_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i53_3_lut_4_lut (.I0(tail[36]), .I1(tail[68]), 
            .I2(n29), .I3(n786), .O(tailN[52]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i53_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i54_3_lut_4_lut (.I0(tail[37]), .I1(tail[69]), 
            .I2(n29), .I3(n786), .O(tailN[53]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i54_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i55_3_lut_4_lut (.I0(tail[38]), .I1(tail[70]), 
            .I2(n29), .I3(n786), .O(tailN[54]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i55_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i46_3_lut_4_lut (.I0(tail[29]), .I1(tail[61]), 
            .I2(n29), .I3(n786), .O(tailN[45]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i46_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i56_3_lut_4_lut (.I0(tail[39]), .I1(tail[71]), 
            .I2(n29), .I3(n786), .O(tailN[55]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i56_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i57_3_lut_4_lut (.I0(tail[40]), .I1(tail[72]), 
            .I2(n29), .I3(n786), .O(tailN[56]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i57_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i34_3_lut_4_lut (.I0(tail[17]), .I1(tail[49]), 
            .I2(n29), .I3(n786), .O(tailN[33]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i34_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i33_3_lut_4_lut (.I0(tail[16]), .I1(tail[48]), 
            .I2(n29), .I3(n786), .O(tailN[32]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i33_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i45_3_lut_4_lut (.I0(tail[28]), .I1(tail[60]), 
            .I2(n29), .I3(n786), .O(tailN[44]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i45_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i58_3_lut_4_lut (.I0(tail[41]), .I1(tail[73]), 
            .I2(n29), .I3(n786), .O(tailN[57]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i58_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i59_3_lut_4_lut (.I0(tail[42]), .I1(tail[74]), 
            .I2(n29), .I3(n786), .O(tailN[58]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i59_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i32_3_lut_4_lut (.I0(tail[15]), .I1(tail[47]), 
            .I2(n29), .I3(n786), .O(tailN[31]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i32_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i31_3_lut_4_lut (.I0(tail[14]), .I1(tail[46]), 
            .I2(n29), .I3(n786), .O(tailN[30]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i31_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i30_3_lut_4_lut (.I0(tail[13]), .I1(tail[45]), 
            .I2(n29), .I3(n786), .O(tailN[29]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i30_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i29_3_lut_4_lut (.I0(tail[12]), .I1(tail[44]), 
            .I2(n29), .I3(n786), .O(tailN[28]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i29_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i28_3_lut_4_lut (.I0(tail[11]), .I1(tail[43]), 
            .I2(n29), .I3(n786), .O(tailN[27]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i28_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i44_3_lut_4_lut (.I0(tail[27]), .I1(tail[59]), 
            .I2(n29), .I3(n786), .O(tailN[43]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i44_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i43_3_lut_4_lut (.I0(tail[26]), .I1(tail[58]), 
            .I2(n29), .I3(n786), .O(tailN[42]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i43_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i42_3_lut_4_lut (.I0(tail[25]), .I1(tail[57]), 
            .I2(n29), .I3(n786), .O(tailN[41]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i42_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i41_3_lut_4_lut (.I0(tail[24]), .I1(tail[56]), 
            .I2(n29), .I3(n786), .O(tailN[40]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i41_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i60_3_lut_4_lut (.I0(tail[43]), .I1(tail[75]), 
            .I2(n29), .I3(n786), .O(tailN[59]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i60_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i61_3_lut_4_lut (.I0(tail[44]), .I1(tail[76]), 
            .I2(n29), .I3(n786), .O(tailN[60]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i61_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i40_3_lut_4_lut (.I0(tail[23]), .I1(tail[55]), 
            .I2(n29), .I3(n786), .O(tailN[39]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i40_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i27_3_lut_4_lut (.I0(tail[10]), .I1(tail[42]), 
            .I2(n29), .I3(n786), .O(tailN[26]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i27_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i39_3_lut_4_lut (.I0(tail[22]), .I1(tail[54]), 
            .I2(n29), .I3(n786), .O(tailN[38]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i39_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i62_3_lut_4_lut (.I0(tail[45]), .I1(tail[77]), 
            .I2(n29), .I3(n786), .O(tailN[61]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i62_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i38_3_lut_4_lut (.I0(tail[21]), .I1(tail[53]), 
            .I2(n29), .I3(n786), .O(tailN[37]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i38_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i37_3_lut_4_lut (.I0(tail[20]), .I1(tail[52]), 
            .I2(n29), .I3(n786), .O(tailN[36]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i37_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i26_3_lut_4_lut (.I0(tail[9]), .I1(tail[41]), 
            .I2(n29), .I3(n786), .O(tailN[25]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i26_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i25_3_lut_4_lut (.I0(tail[8]), .I1(tail[40]), 
            .I2(n29), .I3(n786), .O(tailN[24]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i25_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i63_3_lut_4_lut (.I0(tail[46]), .I1(tail[78]), 
            .I2(n29), .I3(n786), .O(tailN[62]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i63_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i36_3_lut_4_lut (.I0(tail[19]), .I1(tail[51]), 
            .I2(n29), .I3(n786), .O(tailN[35]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i36_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i24_3_lut_4_lut (.I0(tail[7]), .I1(tail[39]), 
            .I2(n29), .I3(n786), .O(tailN[23]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i24_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i35_3_lut_4_lut (.I0(tail[18]), .I1(tail[50]), 
            .I2(n29), .I3(n786), .O(tailN[34]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i35_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i23_3_lut_4_lut (.I0(tail[6]), .I1(tail[38]), 
            .I2(n29), .I3(n786), .O(tailN[22]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i23_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i22_3_lut_4_lut (.I0(tail[5]), .I1(tail[37]), 
            .I2(n29), .I3(n786), .O(tailN[21]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i22_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i21_3_lut_4_lut (.I0(tail[4]), .I1(tail[36]), 
            .I2(n29), .I3(n786), .O(tailN[20]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i21_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i20_3_lut_4_lut (.I0(tail[3]), .I1(tail[35]), 
            .I2(n29), .I3(n786), .O(tailN[19]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i20_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i19_3_lut_4_lut (.I0(tail[2]), .I1(tail[34]), 
            .I2(n29), .I3(n786), .O(tailN[18]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i19_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i64_3_lut_4_lut (.I0(tail[47]), .I1(tail[79]), 
            .I2(n29), .I3(n786), .O(tailN[63]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i64_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i18_3_lut_4_lut (.I0(tail[1]), .I1(tail[33]), 
            .I2(n29), .I3(n786), .O(tailN[17]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i18_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_15__I_0_i1_3_lut (.I0(tail[0]), .I1(A_low[0]), .I2(n237), 
            .I3(GND_net), .O(headN[0]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i17_3_lut_4_lut (.I0(tail[0]), .I1(tail[32]), 
            .I2(n29), .I3(n786), .O(tailN[16]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i17_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_15__I_0_i16_3_lut (.I0(tail[15]), .I1(\A[15] ), .I2(n237), 
            .I3(GND_net), .O(headN[15]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i15_3_lut (.I0(tail[14]), .I1(\A[14] ), .I2(n237), 
            .I3(GND_net), .O(headN[14]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i15_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i14_3_lut (.I0(tail[13]), .I1(\A[13] ), .I2(n237), 
            .I3(GND_net), .O(headN[13]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i14_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i13_3_lut (.I0(tail[12]), .I1(\A[12] ), .I2(n237), 
            .I3(GND_net), .O(headN[12]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i13_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i12_3_lut (.I0(tail[11]), .I1(\A[11] ), .I2(n237), 
            .I3(GND_net), .O(headN[11]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i12_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i11_3_lut (.I0(tail[10]), .I1(\A[10] ), .I2(n237), 
            .I3(GND_net), .O(headN[10]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i11_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i10_3_lut (.I0(tail[9]), .I1(\A[9] ), .I2(n237), 
            .I3(GND_net), .O(headN[9]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i10_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i16_3_lut_4_lut (.I0(S[15]), .I1(tail[31]), .I2(n29), 
            .I3(n786), .O(tailN[15]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i16_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_15__I_0_i9_3_lut (.I0(tail[8]), .I1(\A[8] ), .I2(n237), 
            .I3(GND_net), .O(headN[8]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i9_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i8_3_lut (.I0(tail[7]), .I1(A_low[7]), .I2(n237), 
            .I3(GND_net), .O(headN[7]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i15_3_lut_4_lut (.I0(S[14]), .I1(tail[30]), .I2(n29), 
            .I3(n786), .O(tailN[14]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i15_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i14_3_lut_4_lut (.I0(S[13]), .I1(tail[29]), .I2(n29), 
            .I3(n786), .O(tailN[13]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i14_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i13_3_lut_4_lut (.I0(S[12]), .I1(tail[28]), .I2(n29), 
            .I3(n786), .O(tailN[12]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i13_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_15__I_0_i7_3_lut (.I0(tail[6]), .I1(A_low[6]), .I2(n237), 
            .I3(GND_net), .O(headN[6]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i6_3_lut (.I0(tail[5]), .I1(A_low[5]), .I2(n237), 
            .I3(GND_net), .O(headN[5]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i12_3_lut_4_lut (.I0(S[11]), .I1(tail[27]), .I2(n29), 
            .I3(n786), .O(tailN[11]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i12_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i65_3_lut_4_lut (.I0(tail[48]), .I1(tail[80]), 
            .I2(n29), .I3(n786), .O(tailN[64]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i65_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i66_3_lut_4_lut (.I0(tail[49]), .I1(tail[81]), 
            .I2(n29), .I3(n786), .O(tailN[65]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i66_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_15__I_0_i5_3_lut (.I0(tail[4]), .I1(A_low[4]), .I2(n237), 
            .I3(GND_net), .O(headN[4]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i4_3_lut (.I0(tail[3]), .I1(A_low[3]), .I2(n237), 
            .I3(GND_net), .O(headN[3]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i3_3_lut (.I0(tail[2]), .I1(A_low[2]), .I2(n237), 
            .I3(GND_net), .O(headN[2]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_15__I_0_i2_3_lut (.I0(tail[1]), .I1(A_low[1]), .I2(n237), 
            .I3(GND_net), .O(headN[1]));   // ../stack.v(20[18:43])
    defparam tail_15__I_0_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 tail_111__I_0_i67_3_lut_4_lut (.I0(tail[50]), .I1(tail[82]), 
            .I2(n29), .I3(n786), .O(tailN[66]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i67_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i11_3_lut_4_lut (.I0(S[10]), .I1(tail[26]), .I2(n29), 
            .I3(n786), .O(tailN[10]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i11_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i10_3_lut_4_lut (.I0(S[9]), .I1(tail[25]), .I2(n29), 
            .I3(n786), .O(tailN[9]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i10_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i68_3_lut_4_lut (.I0(tail[51]), .I1(tail[83]), 
            .I2(n29), .I3(n786), .O(tailN[67]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i68_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i69_3_lut_4_lut (.I0(tail[52]), .I1(tail[84]), 
            .I2(n29), .I3(n786), .O(tailN[68]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i69_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i9_3_lut_4_lut (.I0(S[8]), .I1(tail[24]), .I2(n29), 
            .I3(n786), .O(tailN[8]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i9_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i8_3_lut_4_lut (.I0(S[7]), .I1(tail[23]), .I2(n29), 
            .I3(n786), .O(tailN[7]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i8_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i7_3_lut_4_lut (.I0(S[6]), .I1(tail[22]), .I2(n29), 
            .I3(n786), .O(tailN[6]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i7_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i567_2_lut (.I0(n786), .I1(n29), .I2(GND_net), .I3(GND_net), 
            .O(rd_15__N_301));   // ../stack.v(25[9:18])
    defparam i567_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 tail_111__I_0_i70_3_lut_4_lut (.I0(tail[53]), .I1(tail[85]), 
            .I2(n29), .I3(n786), .O(tailN[69]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i70_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i6_3_lut_4_lut (.I0(S[5]), .I1(tail[21]), .I2(n29), 
            .I3(n786), .O(tailN[5]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i6_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i71_3_lut_4_lut (.I0(tail[54]), .I1(tail[86]), 
            .I2(n29), .I3(n786), .O(tailN[70]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i71_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i5_3_lut_4_lut (.I0(S[4]), .I1(tail[20]), .I2(n29), 
            .I3(n786), .O(tailN[4]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i5_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i4_3_lut_4_lut (.I0(S[3]), .I1(tail[19]), .I2(n29), 
            .I3(n786), .O(tailN[3]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i4_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i72_3_lut_4_lut (.I0(tail[55]), .I1(tail[87]), 
            .I2(n29), .I3(n786), .O(tailN[71]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i72_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i73_3_lut_4_lut (.I0(tail[56]), .I1(tail[88]), 
            .I2(n29), .I3(n786), .O(tailN[72]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i73_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i3_3_lut_4_lut (.I0(S[2]), .I1(tail[18]), .I2(n29), 
            .I3(n786), .O(tailN[2]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i3_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i74_3_lut_4_lut (.I0(tail[57]), .I1(tail[89]), 
            .I2(n29), .I3(n786), .O(tailN[73]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i74_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i2_3_lut_4_lut (.I0(S[1]), .I1(tail[17]), .I2(n29), 
            .I3(n786), .O(tailN[1]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i2_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i75_3_lut_4_lut (.I0(tail[58]), .I1(tail[90]), 
            .I2(n29), .I3(n786), .O(tailN[74]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i75_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i76_3_lut_4_lut (.I0(tail[59]), .I1(tail[91]), 
            .I2(n29), .I3(n786), .O(tailN[75]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i76_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i1_3_lut_4_lut (.I0(S[0]), .I1(tail[16]), .I2(n29), 
            .I3(n786), .O(tailN[0]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i1_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i77_3_lut_4_lut (.I0(tail[60]), .I1(tail[92]), 
            .I2(n29), .I3(n786), .O(tailN[76]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i77_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i78_3_lut_4_lut (.I0(tail[61]), .I1(tail[93]), 
            .I2(n29), .I3(n786), .O(tailN[77]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i78_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i79_3_lut_4_lut (.I0(tail[62]), .I1(tail[94]), 
            .I2(n29), .I3(n786), .O(tailN[78]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i79_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i80_3_lut_4_lut (.I0(tail[63]), .I1(tail[95]), 
            .I2(n29), .I3(n786), .O(tailN[79]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i80_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i81_3_lut_4_lut (.I0(tail[64]), .I1(\tail[96] ), 
            .I2(n29), .I3(n786), .O(tailN[80]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i81_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i82_3_lut_4_lut (.I0(tail[65]), .I1(\tail[97] ), 
            .I2(n29), .I3(n786), .O(tailN[81]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i82_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i83_3_lut_4_lut (.I0(tail[66]), .I1(\tail[98] ), 
            .I2(n29), .I3(n786), .O(tailN[82]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i83_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i84_3_lut_4_lut (.I0(tail[67]), .I1(\tail[99] ), 
            .I2(n29), .I3(n786), .O(tailN[83]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i84_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i85_3_lut_4_lut (.I0(tail[68]), .I1(\tail[100] ), 
            .I2(n29), .I3(n786), .O(tailN[84]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i85_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i86_3_lut_4_lut (.I0(tail[69]), .I1(\tail[101] ), 
            .I2(n29), .I3(n786), .O(tailN[85]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i86_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i87_3_lut_4_lut (.I0(tail[70]), .I1(\tail[102] ), 
            .I2(n29), .I3(n786), .O(tailN[86]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i87_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i88_3_lut_4_lut (.I0(tail[71]), .I1(\tail[103] ), 
            .I2(n29), .I3(n786), .O(tailN[87]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i88_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i89_3_lut_4_lut (.I0(tail[72]), .I1(\tail[104] ), 
            .I2(n29), .I3(n786), .O(tailN[88]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i89_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i90_3_lut_4_lut (.I0(tail[73]), .I1(\tail[105] ), 
            .I2(n29), .I3(n786), .O(tailN[89]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i90_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i91_3_lut_4_lut (.I0(tail[74]), .I1(\tail[106] ), 
            .I2(n29), .I3(n786), .O(tailN[90]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i91_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i92_3_lut_4_lut (.I0(tail[75]), .I1(\tail[107] ), 
            .I2(n29), .I3(n786), .O(tailN[91]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i92_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i93_3_lut_4_lut (.I0(tail[76]), .I1(\tail[108] ), 
            .I2(n29), .I3(n786), .O(tailN[92]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i93_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i94_3_lut_4_lut (.I0(tail[77]), .I1(\tail[109] ), 
            .I2(n29), .I3(n786), .O(tailN[93]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i94_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i95_3_lut_4_lut (.I0(tail[78]), .I1(\tail[110] ), 
            .I2(n29), .I3(n786), .O(tailN[94]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i95_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 tail_111__I_0_i96_3_lut_4_lut (.I0(tail[79]), .I1(\tail[111] ), 
            .I2(n29), .I3(n786), .O(tailN[95]));   // ../stack.v(21[18:91])
    defparam tail_111__I_0_i96_3_lut_4_lut.LUT_INIT = 16'hcaaa;
    
endmodule
