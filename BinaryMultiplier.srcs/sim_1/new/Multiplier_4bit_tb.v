`timescale 1ns / 1ps

module Multiplier_4bit_tb(

    );
    
    //input
    reg [3:0] A, B;
    
    //output
    wire [7:0] P;
    
    Multiplier_4bit uut(.A(A),
                        .B(B),
                        .P(P)
                        );
                        
    initial begin
    
        $display("  A \t\t\t B \t\t Product");
        $monitor("%b (%0d) \t %b (%0d) \t %b (%0d)", A, A, B, B, P, P);
        
        // Test cases
        A = 4'b0000; B = 4'b0000; #10; // 0 x 0   = 0
        A = 4'b0001; B = 4'b0010; #10; // 1 x 2   = 2
        A = 4'b0101; B = 4'b0011; #10; // 5 x 3   = 15
        A = 4'b1010; B = 4'b0100; #10; // 10 x 4  = 40
        A = 4'b1111; B = 4'b1111; #10; // 15 x 15 = 225
        A = 4'b1001; B = 4'b0110; #10; // 9 x 6   = 54
        A = 4'b0111; B = 4'b0010; #10; // 7 x 2   = 14
        
        $finish;
    
    end                        
    
endmodule
