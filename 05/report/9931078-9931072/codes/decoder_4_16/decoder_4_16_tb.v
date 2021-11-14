`timescale 1ps/1ps
`include "./decoder_4_16.v"

module decoder_4_16_tb;
reg a,b,c,d,enable;
wire o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15;

decoder_4_16 test_target(a,b,c,d,enable,o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15);

initial begin
    $dumpfile("result.vcd");
    $dumpvars(0, decoder_4_16_tb);

    enable = 0; a = 0; b=0; c=0; d=0;
    #100 enable = 0; a = 0; b=0; c=0; d=1;
    #100 enable = 0; a = 0; b=0; c=1; d=0;
    #100 enable = 0; a = 0; b=0; c=1; d=1;
    #100 enable = 0; a = 0; b=1; c=0; d=0;
    #100 enable = 0; a = 0; b=1; c=0; d=1;
    #100 enable = 0; a = 0; b=1; c=1; d=0;
    #100 enable = 0; a = 0; b=1; c=1; d=1;
    #100 enable = 0; a = 1; b=0; c=0; d=0;
    #100 enable = 0; a = 1; b=0; c=0; d=1;
    #100 enable = 0; a = 1; b=0; c=1; d=0;
    #100 enable = 0; a = 1; b=0; c=1; d=1;
    #100 enable = 0; a = 1; b=1; c=0; d=0;
    #100 enable = 0; a = 1; b=1; c=0; d=1;
    #100 enable = 0; a = 1; b=1; c=1; d=0;
    #100 enable = 0; a = 1; b=1; c=1; d=1;
    #100 enable = 1; a = 0; b=0; c=0; d=0;
    #100 enable = 1; a = 0; b=0; c=0; d=1;
    #100 enable = 1; a = 0; b=0; c=1; d=0;
    #100 enable = 1; a = 0; b=0; c=1; d=1;
    #100 enable = 1; a = 0; b=1; c=0; d=0;
    #100 enable = 1; a = 0; b=1; c=0; d=1;
    #100 enable = 1; a = 0; b=1; c=1; d=0;
    #100 enable = 1; a = 0; b=1; c=1; d=1;
    #100 enable = 1; a = 1; b=0; c=0; d=0;
    #100 enable = 1; a = 1; b=0; c=0; d=1;
    #100 enable = 1; a = 1; b=0; c=1; d=0;
    #100 enable = 1; a = 1; b=0; c=1; d=1;
    #100 enable = 1; a = 1; b=1; c=0; d=0;
    #100 enable = 1; a = 1; b=1; c=0; d=1;
    #100 enable = 1; a = 1; b=1; c=1; d=0;
    #100 enable = 1; a = 1; b=1; c=1; d=1;
    #100 $finish;
end
endmodule

