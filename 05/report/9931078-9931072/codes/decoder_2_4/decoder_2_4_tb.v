`include "./decoder_2_4.v"
`timescale 1ps/1ps

module decoder_tb;
reg a,b,enable;
wire o0, o1, o2, o3;
decoder_2_4 test_target(a,b,enable, o0, o1, o2, o3);

initial begin
    $dumpfile("decoder.vcd");
    $dumpvars(0, decoder_tb);

    // test for disabled sitatuion
    a =0; b =0; enable = 0;
    #100 a =0; b =1; enable = 0;
    #100 a =1; b =0; enable = 0;
    #100 a =1; b =1; enable = 0;

    // test for disbaled status
    #100 a =0; b =0; enable = 1;
    #100 a =0; b =1; enable = 1;
    #100 a =1; b =0; enable = 1;
    #100 a =1; b =1; enable = 1;
    #100 $finish;
end
endmodule