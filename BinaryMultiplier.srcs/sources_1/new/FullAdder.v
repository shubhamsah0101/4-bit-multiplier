`timescale 1ns / 1ps

module FullAdder(

    input x, y, z,
    
    output s, c

    );
    
    wire s1, c1, c2;
    
    HalfAdder ha1(x, y, s1, c1);
    HalfAdder ha2(z, s1, s, c2);
    
    assign c = c1 | c2;
    
endmodule
