`include "./encoder.v"
`timescale 1ps/1ps
module encoder_tb;
reg d0,d1,d2,d3;
wire o0,o1;

encoder test_target(d0,d1,d2,d3, o0,o1);

initial begin
    $dumpfile("encoder.vcd");
    $dumpvars(0, encoder_tb);

    d0 = 0; d1 = 0; d2 = 0; d3 = 0;
    #100 d0 = 0; d1 = 0; d2 = 0; d3 = 1;
    #100 d0 = 0; d1 = 0; d2 = 1; d3 = 0;
    #100 d0 = 0; d1 = 0; d2 = 1; d3 = 1;
    #100 d0 = 0; d1 = 1; d2 = 0; d3 = 0;
    #100 d0 = 0; d1 = 1; d2 = 0; d3 = 1;
    #100 d0 = 0; d1 = 1; d2 = 1; d3 = 0;
    #100 d0 = 0; d1 = 1; d2 = 1; d3 = 1;

    #100 d0 = 1; d1 = 0; d2 = 0; d3 = 0;
    #100 d0 = 1; d1 = 0; d2 = 0; d3 = 1;
    #100 d0 = 1; d1 = 0; d2 = 1; d3 = 0;
    #100 d0 = 1; d1 = 0; d2 = 1; d3 = 1;
    #100 d0 = 1; d1 = 1; d2 = 0; d3 = 0;
    #100 d0 = 1; d1 = 1; d2 = 0; d3 = 1;
    #100 d0 = 1; d1 = 1; d2 = 1; d3 = 0;
    #100 d0 = 1; d1 = 1; d2 = 1; d3 = 1;
    $finish;
end
endmodule