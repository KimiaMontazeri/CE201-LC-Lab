`include "./decoder_4_16/decoder_4_16.v"
module project_5_3_tb();
reg a,b,c,d;
wire f;

initial begin
    #100 a= 0; b = 0; c = 0; d = 0;
    #100 a= 0; b = 0; c = 0; d = 1;
    #100 a= 0; b = 0; c = 1; d = 0;
    #100 a= 0; b = 0; c = 1; d = 1;
    #100 a= 0; b = 1; c = 0; d = 0;
    #100 a= 0; b = 1; c = 0; d = 1;
    #100 a= 0; b = 1; c = 1; d = 0;
    #100 a= 0; b = 1; c = 1; d = 1;
    #100 a= 1; b = 0; c = 0; d = 0;
    #100 a= 1; b = 0; c = 0; d = 1;
    #100 a= 1; b = 0; c = 1; d = 0;
    #100 a= 1; b = 0; c = 1; d = 1;
    #100 a= 1; b = 1; c = 0; d = 0;
    #100 a= 1; b = 1; c = 0; d = 1;
    #100 a= 1; b = 1; c = 1; d = 0;
    #100 a= 1; b = 0; c = 1; d = 1;
end

endmodule