`timescale 1ns / 1ps

module Adder_4bit_tb(

    );
    
    reg [3:0] A, B;
    reg c_in;
    
    wire [3:0] sum;
    wire c_out;
    
    Adder_4bit ad(.A(A),
                  .B(B),
                  .c_in(c_in),
                  .sum(sum),
                  .c_out(c_out));
                  
    initial begin
    
    A = 4'b0001; B = 4'b0001; c_in = 0;     #10 //1 + 1 = 2
    $display ("A = %b B = %b C_in = %b | Sum = %b C_out = %b", A, B, c_in, sum, c_out);
    
    A = 4'b0011; B = 4'b1001; c_in = 0;     #10 // 3 + 9 = 12
    $display ("A = %b B = %b C_in = %b | Sum = %b C_out = %b", A, B, c_in, sum, c_out);
    
    A = 4'b0101; B = 4'b1100; c_in = 0;     #10 // 5 + 12 = 17
    $display ("A = %b B = %b C_in = %b | Sum = %b C_out = %b", A, B, c_in, sum, c_out);
    
    A = 4'b1100; B = 4'b0011; c_in = 0;     #10 // 12 + 3 = 15
    $display ("A = %b B = %b C_in = %b | Sum = %b C_out = %b", A, B, c_in, sum, c_out);
    
    A = 4'b1101; B = 4'b0101; c_in = 0;     #10 // 13 + 5 = 18
    $display ("A = %b B = %b C_in = %b | Sum = %b C_out = %b", A, B, c_in, sum, c_out);
    
    end
    
endmodule
