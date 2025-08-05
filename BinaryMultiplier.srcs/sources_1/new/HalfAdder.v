`timescale 1ns / 1ps

module HalfAdder(

    input x, y,
    
    output s, c

    );
    
    assign s = x ^ y;
    
    assign c = x & y;
    
endmodule
