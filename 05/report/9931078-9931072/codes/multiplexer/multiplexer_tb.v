`include "./multiplexer.v"
`timescale 1ps/1ps
module multiplexer_tb;
reg a,b, i0, i1, i2, i3;
wire result;

multiplexer test_target(a, b, i0, i1, i2, i3, result);

initial begin
    $dumpfile("multiplexer.vcd");
    $dumpvars(0, multiplexer_tb);

    a= 0; b = 0; i0 = 1; i1 = 0; i2 = 0; i3 = 0;
    #100 a= 0; b = 0; i0 = 0; i1 = 0; i2 = 0; i3 = 0;

    #100 a= 0; b = 1; i0 = 0; i1 = 1; i2 = 0; i3 = 0;
    #100 a= 0; b = 0; i0 = 0; i1 = 0; i2 = 0; i3 = 0;

    #100 a= 1; b = 0; i0 = 0; i1 = 0; i2 = 1; i3 = 0;
    #100 a= 1; b = 0; i0 = 0; i1 = 1; i2 = 0; i3 = 0;

    #100 a= 1; b = 1; i0 = 0; i1 = 0; i2 = 0; i3 = 1;
    #100 a= 1; b = 1; i0 = 0; i1 = 1; i2 = 0; i3 = 0;
    #100 $finish;
end
endmodule