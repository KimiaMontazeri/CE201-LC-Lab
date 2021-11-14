`include "../decoder_2_4/decoder_2_4.v"

module decoder_4_16(a,b,c,d,enable, o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15);
input a,b,c,d,enable;
output o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15;

wire enable1, enable2, enable3, enable4;

decoder_2_4 d0(a,b, enable, enable1, enable2, enable3, enable4);

decoder_2_4 d1(c,d, enable1, o0,o1,o2,o3);
decoder_2_4 d2(c,d, enable2, o4,o5, o6, o7);
decoder_2_4 d3(c,d, enable3, o8,o9, o10, o11);
decoder_2_4 d4(c,d, enable4, o12,o13, o14, o15);
endmodule
