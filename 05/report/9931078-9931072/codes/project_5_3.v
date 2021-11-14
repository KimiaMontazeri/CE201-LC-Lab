`include "./decoder_4_16/decoder_4_16.v"
module circuit_5(a,b,c,d,f);
input a,b,c, d;
wire o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15;
assign enable = 1;
output f;

decoder_4_16 decoder(a,b,c, enable, o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15);
or g1(f, o2, o3, o5, o7, o11, o13);
endmodule

