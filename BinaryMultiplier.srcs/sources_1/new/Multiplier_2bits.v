`timescale 1ns / 1ps

// 2-bits Binary Multiplier

module Multiplier_2bits(

    input a0, a1, b0, b1,
    
    output c0, c1, c2, c3

    );
    
    wire x1, x2, x3, x4;
    
    // bit -> c0
    assign c0 = a0 & b0;
    
    // bit -> c1
    assign x1 = a0 & b1;
    assign x2 = a1 & b0;
    
    HalfAdder ha1(x1, x2, c1, x3);  // x3 is carry
    
    // bit -> c2 and c3
    assign x4 = a1 & b1;
    HalfAdder ha2(x3, x4, c2, c3);
    
endmodule
