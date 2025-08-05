`timescale 1ns / 1ps

// 4-bit Binary Adder

module Adder_4bit(

    input [3:0] A, B,
    input c_in,
    
    output [3:0] sum,
    output c_out

    );
    
    wire c1, c2, c3;
    
    FullAdder fa1(A[0], B[0], c_in, sum[0], c1);
    FullAdder fa2(A[1], B[1], c1,   sum[1], c2);
    FullAdder fa3(A[2], B[2], c2,   sum[2], c3);
    FullAdder fa4(A[3], B[3], c3,   sum[3], c_out);
    
endmodule
