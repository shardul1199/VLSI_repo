// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module k2c_dense_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        output_numel_read,
        input_array_address0,
        input_array_ce0,
        input_array_q0,
        input_dim,
        input_numel_read,
        input_shape_address0,
        input_shape_ce0,
        input_shape_q0,
        kernel_dim,
        dense_13_output_arra_address0,
        dense_13_output_arra_ce0,
        dense_13_output_arra_we0,
        dense_13_output_arra_d0,
        dense_13_output_arra_q0
);

parameter    ap_ST_fsm_state1 = 27'd1;
parameter    ap_ST_fsm_state2 = 27'd2;
parameter    ap_ST_fsm_state3 = 27'd4;
parameter    ap_ST_fsm_state4 = 27'd8;
parameter    ap_ST_fsm_state5 = 27'd16;
parameter    ap_ST_fsm_state6 = 27'd32;
parameter    ap_ST_fsm_state7 = 27'd64;
parameter    ap_ST_fsm_state8 = 27'd128;
parameter    ap_ST_fsm_state9 = 27'd256;
parameter    ap_ST_fsm_state10 = 27'd512;
parameter    ap_ST_fsm_state11 = 27'd1024;
parameter    ap_ST_fsm_state12 = 27'd2048;
parameter    ap_ST_fsm_state13 = 27'd4096;
parameter    ap_ST_fsm_state14 = 27'd8192;
parameter    ap_ST_fsm_state15 = 27'd16384;
parameter    ap_ST_fsm_state16 = 27'd32768;
parameter    ap_ST_fsm_state17 = 27'd65536;
parameter    ap_ST_fsm_state18 = 27'd131072;
parameter    ap_ST_fsm_state19 = 27'd262144;
parameter    ap_ST_fsm_state20 = 27'd524288;
parameter    ap_ST_fsm_state21 = 27'd1048576;
parameter    ap_ST_fsm_state22 = 27'd2097152;
parameter    ap_ST_fsm_state23 = 27'd4194304;
parameter    ap_ST_fsm_state24 = 27'd8388608;
parameter    ap_ST_fsm_state25 = 27'd16777216;
parameter    ap_ST_fsm_state26 = 27'd33554432;
parameter    ap_ST_fsm_state27 = 27'd67108864;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] output_numel_read;
output  [6:0] input_array_address0;
output   input_array_ce0;
input  [31:0] input_array_q0;
input  [63:0] input_dim;
input  [63:0] input_numel_read;
output  [2:0] input_shape_address0;
output   input_shape_ce0;
input  [63:0] input_shape_q0;
input  [63:0] kernel_dim;
output  [6:0] dense_13_output_arra_address0;
output   dense_13_output_arra_ce0;
output   dense_13_output_arra_we0;
output  [31:0] dense_13_output_arra_d0;
input  [31:0] dense_13_output_arra_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[6:0] input_array_address0;
reg input_array_ce0;
reg[2:0] input_shape_address0;
reg input_shape_ce0;
reg[6:0] dense_13_output_arra_address0;
reg dense_13_output_arra_ce0;
reg dense_13_output_arra_we0;
reg[31:0] dense_13_output_arra_d0;

(* fsm_encoding = "none" *) reg   [26:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [11:0] dense_13_kernel_arra_address0;
reg    dense_13_kernel_arra_ce0;
wire   [31:0] dense_13_kernel_arra_q0;
reg   [6:0] dense_13_bias_array_address0;
reg    dense_13_bias_array_ce0;
wire   [31:0] dense_13_bias_array_q0;
reg   [63:0] dense_13_kernel_nume;
reg   [63:0] dense_13_bias_numel;
reg   [31:0] reg_236;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state24;
wire   [0:0] tmp_fu_242_p2;
reg   [0:0] tmp_reg_459;
wire   [63:0] tmp_s_fu_248_p2;
reg   [63:0] tmp_s_reg_463;
wire   [0:0] icmp_fu_270_p2;
reg   [0:0] icmp_reg_473;
wire    ap_CS_fsm_state2;
wire    grp_k2c_dot_fu_190_ap_idle;
wire    grp_k2c_dot_fu_190_ap_ready;
wire    grp_k2c_dot_fu_190_ap_done;
wire   [63:0] j_fu_294_p2;
reg   [63:0] j_reg_490;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond_i_fu_289_p2;
reg   [6:0] dense_13_output_arra_4_reg_500;
wire   [63:0] i_29_fu_315_p2;
reg   [31:0] dense_13_bias_array_1_reg_510;
wire    ap_CS_fsm_state5;
wire   [31:0] grp_fu_227_p2;
reg   [31:0] tmp_i_13_reg_515;
wire    ap_CS_fsm_state15;
wire   [63:0] i_30_fu_325_p2;
reg   [63:0] i_30_reg_523;
wire    ap_CS_fsm_state17;
reg   [6:0] dense_13_output_arra_6_reg_528;
wire   [0:0] exitcond4_fu_320_p2;
wire   [63:0] i_28_fu_336_p2;
reg   [63:0] i_28_reg_536;
reg   [6:0] dense_13_output_arra_1_reg_541;
wire   [0:0] exitcond1_fu_331_p2;
wire   [0:0] notlhs_fu_360_p2;
reg   [0:0] notlhs_reg_546;
wire    ap_CS_fsm_state19;
wire   [0:0] notrhs_fu_366_p2;
reg   [0:0] notrhs_reg_551;
wire   [0:0] grp_fu_231_p2;
reg   [0:0] tmp_8_reg_556;
wire    ap_CS_fsm_state20;
wire   [63:0] outrows1_fu_381_p3;
reg   [63:0] outrows1_reg_564;
wire    ap_CS_fsm_state22;
wire   [63:0] tmp_51_fu_389_p2;
reg   [63:0] tmp_51_reg_570;
wire    ap_CS_fsm_state23;
wire    grp_k2c_affine_matmul_fu_214_ap_idle;
wire    grp_k2c_affine_matmul_fu_214_ap_ready;
wire    grp_k2c_affine_matmul_fu_214_ap_done;
wire   [0:0] notlhs2_fu_412_p2;
reg   [0:0] notlhs2_reg_575;
wire    ap_CS_fsm_state25;
wire   [0:0] notrhs3_fu_418_p2;
reg   [0:0] notrhs3_reg_580;
reg   [0:0] tmp_4_reg_585;
wire    ap_CS_fsm_state26;
wire    grp_k2c_dot_fu_190_ap_start;
wire   [6:0] grp_k2c_dot_fu_190_C_array_address0;
wire    grp_k2c_dot_fu_190_C_array_ce0;
wire    grp_k2c_dot_fu_190_C_array_we0;
wire   [31:0] grp_k2c_dot_fu_190_C_array_d0;
wire   [6:0] grp_k2c_dot_fu_190_A_array_address0;
wire    grp_k2c_dot_fu_190_A_array_ce0;
wire   [2:0] grp_k2c_dot_fu_190_A_shape_address0;
wire    grp_k2c_dot_fu_190_A_shape_ce0;
wire    grp_k2c_affine_matmul_fu_214_ap_start;
wire   [6:0] grp_k2c_affine_matmul_fu_214_C_address0;
wire    grp_k2c_affine_matmul_fu_214_C_ce0;
wire    grp_k2c_affine_matmul_fu_214_C_we0;
wire   [31:0] grp_k2c_affine_matmul_fu_214_C_d0;
wire   [6:0] grp_k2c_affine_matmul_fu_214_A_address0;
wire    grp_k2c_affine_matmul_fu_214_A_ce0;
wire   [11:0] grp_k2c_affine_matmul_fu_214_B_address0;
wire    grp_k2c_affine_matmul_fu_214_B_ce0;
wire   [6:0] grp_k2c_affine_matmul_fu_214_d_address0;
wire    grp_k2c_affine_matmul_fu_214_d_ce0;
reg   [63:0] i_i_reg_142;
reg   [63:0] j_i_reg_154;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state3;
wire   [0:0] tmp_i_fu_280_p2;
reg   [63:0] i_2_reg_166;
wire    ap_CS_fsm_state21;
reg   [63:0] i_reg_178;
wire    ap_CS_fsm_state27;
reg    grp_k2c_dot_fu_190_ap_start_reg;
reg    grp_k2c_affine_matmul_fu_214_ap_start_reg;
wire   [63:0] sum_i_cast_fu_310_p1;
wire   [0:0] tmp_9_fu_376_p2;
wire   [0:0] tmp_5_fu_428_p2;
wire    ap_CS_fsm_state7;
wire   [62:0] tmp_50_fu_260_p4;
wire   [8:0] tmp_54_fu_300_p1;
wire   [8:0] tmp_53_fu_285_p1;
wire   [8:0] sum_i_fu_304_p2;
wire   [31:0] dense_13_output_arra_8_fu_342_p1;
wire   [7:0] tmp_6_fu_346_p4;
wire   [22:0] tmp_55_fu_356_p1;
wire   [0:0] tmp_7_fu_372_p2;
wire   [31:0] dense_13_output_arra_3_fu_394_p1;
wire   [7:0] tmp_2_fu_398_p4;
wire   [22:0] tmp_52_fu_408_p1;
wire   [0:0] tmp_3_fu_424_p2;
reg   [26:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 27'd1;
#0 dense_13_kernel_nume = 64'd2560;
#0 dense_13_bias_numel = 64'd128;
#0 grp_k2c_dot_fu_190_ap_start_reg = 1'b0;
#0 grp_k2c_affine_matmul_fu_214_ap_start_reg = 1'b0;
end

k2c_dense_3_densemb6 #(
    .DataWidth( 32 ),
    .AddressRange( 2560 ),
    .AddressWidth( 12 ))
dense_13_kernel_arra_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dense_13_kernel_arra_address0),
    .ce0(dense_13_kernel_arra_ce0),
    .q0(dense_13_kernel_arra_q0)
);

k2c_dense_3_densencg #(
    .DataWidth( 32 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
dense_13_bias_array_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dense_13_bias_array_address0),
    .ce0(dense_13_bias_array_ce0),
    .q0(dense_13_bias_array_q0)
);

k2c_dot grp_k2c_dot_fu_190(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_k2c_dot_fu_190_ap_start),
    .ap_done(grp_k2c_dot_fu_190_ap_done),
    .ap_idle(grp_k2c_dot_fu_190_ap_idle),
    .ap_ready(grp_k2c_dot_fu_190_ap_ready),
    .C_array_address0(grp_k2c_dot_fu_190_C_array_address0),
    .C_array_ce0(grp_k2c_dot_fu_190_C_array_ce0),
    .C_array_we0(grp_k2c_dot_fu_190_C_array_we0),
    .C_array_d0(grp_k2c_dot_fu_190_C_array_d0),
    .C_array_q0(dense_13_output_arra_q0),
    .A_array_address0(grp_k2c_dot_fu_190_A_array_address0),
    .A_array_ce0(grp_k2c_dot_fu_190_A_array_ce0),
    .A_array_q0(input_array_q0),
    .A_dim(input_dim),
    .A_numel_read(input_numel_read),
    .A_shape_address0(grp_k2c_dot_fu_190_A_shape_address0),
    .A_shape_ce0(grp_k2c_dot_fu_190_A_shape_ce0),
    .A_shape_q0(input_shape_q0),
    .B_dim(kernel_dim),
    .B_numel_read(dense_13_kernel_nume),
    .axesA_0_read(tmp_s_reg_463)
);

k2c_affine_matmul grp_k2c_affine_matmul_fu_214(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_k2c_affine_matmul_fu_214_ap_start),
    .ap_done(grp_k2c_affine_matmul_fu_214_ap_done),
    .ap_idle(grp_k2c_affine_matmul_fu_214_ap_idle),
    .ap_ready(grp_k2c_affine_matmul_fu_214_ap_ready),
    .C_address0(grp_k2c_affine_matmul_fu_214_C_address0),
    .C_ce0(grp_k2c_affine_matmul_fu_214_C_ce0),
    .C_we0(grp_k2c_affine_matmul_fu_214_C_we0),
    .C_d0(grp_k2c_affine_matmul_fu_214_C_d0),
    .C_q0(dense_13_output_arra_q0),
    .A_address0(grp_k2c_affine_matmul_fu_214_A_address0),
    .A_ce0(grp_k2c_affine_matmul_fu_214_A_ce0),
    .A_q0(input_array_q0),
    .B_address0(grp_k2c_affine_matmul_fu_214_B_address0),
    .B_ce0(grp_k2c_affine_matmul_fu_214_B_ce0),
    .B_q0(dense_13_kernel_arra_q0),
    .d_address0(grp_k2c_affine_matmul_fu_214_d_address0),
    .d_ce0(grp_k2c_affine_matmul_fu_214_d_ce0),
    .d_q0(dense_13_bias_array_q0),
    .outrows(outrows1_reg_564)
);

sample_fadd_32ns_hbi #(
    .ID( 1 ),
    .NUM_STAGE( 9 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
sample_fadd_32ns_hbi_U49(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(reg_236),
    .din1(dense_13_bias_array_1_reg_510),
    .ce(1'b1),
    .dout(grp_fu_227_p2)
);

sample_fcmp_32ns_ocq #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
sample_fcmp_32ns_ocq_U50(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(reg_236),
    .din1(32'd0),
    .ce(1'b1),
    .opcode(5'd5),
    .dout(grp_fu_231_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_k2c_affine_matmul_fu_214_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state22)) begin
            grp_k2c_affine_matmul_fu_214_ap_start_reg <= 1'b1;
        end else if ((grp_k2c_affine_matmul_fu_214_ap_ready == 1'b1)) begin
            grp_k2c_affine_matmul_fu_214_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_k2c_dot_fu_190_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (tmp_fu_242_p2 == 1'd0))) begin
            grp_k2c_dot_fu_190_ap_start_reg <= 1'b1;
        end else if ((grp_k2c_dot_fu_190_ap_ready == 1'b1)) begin
            grp_k2c_dot_fu_190_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (tmp_i_fu_280_p2 == 1'd0))) begin
        i_2_reg_166 <= 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        i_2_reg_166 <= i_30_reg_523;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond_i_fu_289_p2 == 1'd1))) begin
        i_i_reg_142 <= i_29_fu_315_p2;
    end else if (((1'b1 == ap_CS_fsm_state2) & (grp_k2c_dot_fu_190_ap_done == 1'b1))) begin
        i_i_reg_142 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_k2c_affine_matmul_fu_214_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
        i_reg_178 <= 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        i_reg_178 <= i_28_reg_536;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (tmp_i_fu_280_p2 == 1'd1))) begin
        j_i_reg_154 <= 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        j_i_reg_154 <= j_reg_490;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        dense_13_bias_array_1_reg_510 <= dense_13_bias_array_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state17) & (exitcond1_fu_331_p2 == 1'd0) & (tmp_reg_459 == 1'd1))) begin
        dense_13_output_arra_1_reg_541 <= i_reg_178;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond_i_fu_289_p2 == 1'd0))) begin
        dense_13_output_arra_4_reg_500 <= sum_i_cast_fu_310_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state17) & (exitcond4_fu_320_p2 == 1'd0) & (tmp_reg_459 == 1'd0))) begin
        dense_13_output_arra_6_reg_528 <= i_2_reg_166;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state17) & (tmp_reg_459 == 1'd1))) begin
        i_28_reg_536 <= i_28_fu_336_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state17) & (tmp_reg_459 == 1'd0))) begin
        i_30_reg_523 <= i_30_fu_325_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (tmp_fu_242_p2 == 1'd1))) begin
        icmp_reg_473 <= icmp_fu_270_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        j_reg_490 <= j_fu_294_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        notlhs2_reg_575 <= notlhs2_fu_412_p2;
        notrhs3_reg_580 <= notrhs3_fu_418_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        notlhs_reg_546 <= notlhs_fu_360_p2;
        notrhs_reg_551 <= notrhs_fu_366_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        outrows1_reg_564 <= outrows1_fu_381_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state18))) begin
        reg_236 <= dense_13_output_arra_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        tmp_4_reg_585 <= grp_fu_231_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_k2c_affine_matmul_fu_214_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
        tmp_51_reg_570[63 : 7] <= tmp_51_fu_389_p2[63 : 7];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        tmp_8_reg_556 <= grp_fu_231_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp_i_13_reg_515 <= grp_fu_227_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_reg_459 <= tmp_fu_242_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (tmp_fu_242_p2 == 1'd0))) begin
        tmp_s_reg_463 <= tmp_s_fu_248_p2;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state17) & (((exitcond1_fu_331_p2 == 1'd1) & (tmp_reg_459 == 1'd1)) | ((exitcond4_fu_320_p2 == 1'd1) & (tmp_reg_459 == 1'd0)))))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) & (((exitcond1_fu_331_p2 == 1'd1) & (tmp_reg_459 == 1'd1)) | ((exitcond4_fu_320_p2 == 1'd1) & (tmp_reg_459 == 1'd0))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        dense_13_bias_array_address0 = j_i_reg_154;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        dense_13_bias_array_address0 = grp_k2c_affine_matmul_fu_214_d_address0;
    end else begin
        dense_13_bias_array_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        dense_13_bias_array_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        dense_13_bias_array_ce0 = grp_k2c_affine_matmul_fu_214_d_ce0;
    end else begin
        dense_13_bias_array_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        dense_13_kernel_arra_address0 = grp_k2c_affine_matmul_fu_214_B_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        dense_13_kernel_arra_address0 = 12'd0;
    end else begin
        dense_13_kernel_arra_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        dense_13_kernel_arra_ce0 = grp_k2c_affine_matmul_fu_214_B_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        dense_13_kernel_arra_ce0 = 1'b0;
    end else begin
        dense_13_kernel_arra_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        dense_13_output_arra_address0 = dense_13_output_arra_1_reg_541;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        dense_13_output_arra_address0 = dense_13_output_arra_6_reg_528;
    end else if (((1'b1 == ap_CS_fsm_state17) & (exitcond1_fu_331_p2 == 1'd0) & (tmp_reg_459 == 1'd1))) begin
        dense_13_output_arra_address0 = i_reg_178;
    end else if (((1'b1 == ap_CS_fsm_state17) & (exitcond4_fu_320_p2 == 1'd0) & (tmp_reg_459 == 1'd0))) begin
        dense_13_output_arra_address0 = i_2_reg_166;
    end else if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state5))) begin
        dense_13_output_arra_address0 = dense_13_output_arra_4_reg_500;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        dense_13_output_arra_address0 = grp_k2c_affine_matmul_fu_214_C_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        dense_13_output_arra_address0 = grp_k2c_dot_fu_190_C_array_address0;
    end else begin
        dense_13_output_arra_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state17) & (exitcond1_fu_331_p2 == 1'd0) & (tmp_reg_459 == 1'd1)) | ((1'b1 == ap_CS_fsm_state17) & (exitcond4_fu_320_p2 == 1'd0) & (tmp_reg_459 == 1'd0)))) begin
        dense_13_output_arra_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        dense_13_output_arra_ce0 = grp_k2c_affine_matmul_fu_214_C_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        dense_13_output_arra_ce0 = grp_k2c_dot_fu_190_C_array_ce0;
    end else begin
        dense_13_output_arra_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state21))) begin
        dense_13_output_arra_d0 = 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        dense_13_output_arra_d0 = tmp_i_13_reg_515;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        dense_13_output_arra_d0 = grp_k2c_affine_matmul_fu_214_C_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        dense_13_output_arra_d0 = grp_k2c_dot_fu_190_C_array_d0;
    end else begin
        dense_13_output_arra_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | ((1'b1 == ap_CS_fsm_state27) & (tmp_5_fu_428_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state21) & (tmp_9_fu_376_p2 == 1'd1)))) begin
        dense_13_output_arra_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        dense_13_output_arra_we0 = grp_k2c_affine_matmul_fu_214_C_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        dense_13_output_arra_we0 = grp_k2c_dot_fu_190_C_array_we0;
    end else begin
        dense_13_output_arra_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        input_array_address0 = grp_k2c_affine_matmul_fu_214_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_array_address0 = grp_k2c_dot_fu_190_A_array_address0;
    end else begin
        input_array_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        input_array_ce0 = grp_k2c_affine_matmul_fu_214_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_array_ce0 = grp_k2c_dot_fu_190_A_array_ce0;
    end else begin
        input_array_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (tmp_fu_242_p2 == 1'd1))) begin
        input_shape_address0 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_shape_address0 = grp_k2c_dot_fu_190_A_shape_address0;
    end else begin
        input_shape_address0 = 'bx;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (tmp_fu_242_p2 == 1'd1))) begin
        input_shape_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        input_shape_ce0 = grp_k2c_dot_fu_190_A_shape_ce0;
    end else begin
        input_shape_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (tmp_fu_242_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (tmp_fu_242_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (grp_k2c_dot_fu_190_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (tmp_i_fu_280_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond_i_fu_289_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state17 : begin
            if (((1'b1 == ap_CS_fsm_state17) & (((exitcond1_fu_331_p2 == 1'd1) & (tmp_reg_459 == 1'd1)) | ((exitcond4_fu_320_p2 == 1'd1) & (tmp_reg_459 == 1'd0))))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b1 == ap_CS_fsm_state17) & (exitcond1_fu_331_p2 == 1'd0) & (tmp_reg_459 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            if (((grp_k2c_affine_matmul_fu_214_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state23))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];

assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];

assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign dense_13_output_arra_3_fu_394_p1 = reg_236;

assign dense_13_output_arra_8_fu_342_p1 = reg_236;

assign exitcond1_fu_331_p2 = ((i_reg_178 == tmp_51_reg_570) ? 1'b1 : 1'b0);

assign exitcond4_fu_320_p2 = ((i_2_reg_166 == output_numel_read) ? 1'b1 : 1'b0);

assign exitcond_i_fu_289_p2 = ((j_i_reg_154 == dense_13_bias_numel) ? 1'b1 : 1'b0);

assign grp_k2c_affine_matmul_fu_214_ap_start = grp_k2c_affine_matmul_fu_214_ap_start_reg;

assign grp_k2c_dot_fu_190_ap_start = grp_k2c_dot_fu_190_ap_start_reg;

assign i_28_fu_336_p2 = (i_reg_178 + 64'd1);

assign i_29_fu_315_p2 = (dense_13_bias_numel + i_i_reg_142);

assign i_30_fu_325_p2 = (i_2_reg_166 + 64'd1);

assign icmp_fu_270_p2 = ((tmp_50_fu_260_p4 != 63'd0) ? 1'b1 : 1'b0);

assign j_fu_294_p2 = (64'd1 + j_i_reg_154);

assign notlhs2_fu_412_p2 = ((tmp_2_fu_398_p4 != 8'd255) ? 1'b1 : 1'b0);

assign notlhs_fu_360_p2 = ((tmp_6_fu_346_p4 != 8'd255) ? 1'b1 : 1'b0);

assign notrhs3_fu_418_p2 = ((tmp_52_fu_408_p1 == 23'd0) ? 1'b1 : 1'b0);

assign notrhs_fu_366_p2 = ((tmp_55_fu_356_p1 == 23'd0) ? 1'b1 : 1'b0);

assign outrows1_fu_381_p3 = ((icmp_reg_473[0:0] === 1'b1) ? input_shape_q0 : 64'd1);

assign sum_i_cast_fu_310_p1 = sum_i_fu_304_p2;

assign sum_i_fu_304_p2 = (tmp_54_fu_300_p1 + tmp_53_fu_285_p1);

assign tmp_2_fu_398_p4 = {{dense_13_output_arra_3_fu_394_p1[30:23]}};

assign tmp_3_fu_424_p2 = (notrhs3_reg_580 | notlhs2_reg_575);

assign tmp_50_fu_260_p4 = {{input_dim[63:1]}};

assign tmp_51_fu_389_p2 = outrows1_reg_564 << 64'd7;

assign tmp_52_fu_408_p1 = dense_13_output_arra_3_fu_394_p1[22:0];

assign tmp_53_fu_285_p1 = j_i_reg_154[8:0];

assign tmp_54_fu_300_p1 = i_i_reg_142[8:0];

assign tmp_55_fu_356_p1 = dense_13_output_arra_8_fu_342_p1[22:0];

assign tmp_5_fu_428_p2 = (tmp_4_reg_585 & tmp_3_fu_424_p2);

assign tmp_6_fu_346_p4 = {{dense_13_output_arra_8_fu_342_p1[30:23]}};

assign tmp_7_fu_372_p2 = (notrhs_reg_551 | notlhs_reg_546);

assign tmp_9_fu_376_p2 = (tmp_8_reg_556 & tmp_7_fu_372_p2);

assign tmp_fu_242_p2 = ((input_dim < 64'd3) ? 1'b1 : 1'b0);

assign tmp_i_fu_280_p2 = ((i_i_reg_142 < output_numel_read) ? 1'b1 : 1'b0);

assign tmp_s_fu_248_p2 = ($signed(input_dim) + $signed(64'd18446744073709551615));

always @ (posedge ap_clk) begin
    tmp_51_reg_570[6:0] <= 7'b0000000;
end

endmodule //k2c_dense_3
