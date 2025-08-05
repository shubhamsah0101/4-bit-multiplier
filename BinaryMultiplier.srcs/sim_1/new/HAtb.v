`timescale 1ns / 1ps

module HAtb(

    );
    
    reg x, y;
    
    wire s, c;
    
    HalfAdder ha(x, y, s, c);
    
    initial begin
    
    x = 0;  y = 0;  #100;
    x = 0;  y = 1;  #100;
    x = 1;  y = 0;  #100;
    x = 1;  y = 1;  #100;
    $finish;
    
    end
        
endmodule
