module Multiplier_4bit(

    input  [3:0] A, B,
    output [7:0] P
);

    wire [7:0] pp0, pp1, pp2, pp3;
    wire [7:0] sum1, sum2;

    // Partial products, aligned properly
    assign pp0 = {4'b0, (A & {4{B[0]}})};         // No shift
    assign pp1 = {3'b0, (A & {4{B[1]}}), 1'b0};   // Shift left by 1
    assign pp2 = {2'b0, (A & {4{B[2]}}), 2'b0};   // Shift left by 2
    assign pp3 = {1'b0, (A & {4{B[3]}}), 3'b0};   // Shift left by 3

    assign sum1 = pp0 + pp1;
    assign sum2 = sum1 + pp2;
    assign P    = sum2 + pp3;
    
endmodule
