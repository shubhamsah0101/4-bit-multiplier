`timescale 1ns / 1ps

module Multiplier_2bits_tb;

    reg a0, a1, b0, b1;
    wire c0, c1, c2, c3;

    Multiplier_2bits m2(a0, a1, b0, b1, c0, c1, c2, c3);

    initial begin
    
        $monitor("A = %b%b, B = %b%b -> Product = %b%b%b%b", a1, a0, b1, b0, c3, c2, c1, c0);

        // Test case 1: 3 * 2 = 6
        a1 = 1; a0 = 1; // 3
        b1 = 1; b0 = 0; // 2
        #50;

        // Test case 2: 1 * 1 = 1
        a1 = 0; a0 = 1; // 1
        b1 = 0; b0 = 1; // 1
        #50;

        // Test case 3: 2 * 2 = 4
        a1 = 1; a0 = 0; // 2
        b1 = 1; b0 = 0; // 2
        #50;

        // Test case 4: 0 * 0 = 0
        a1 = 0; a0 = 0; // 0
        b1 = 0; b0 = 0; // 0
        #50;

        $finish;
        
    end
    
endmodule
