module encoder (d0,d1,d2,d3, o0,o1);
input d0, d1, d2, d3;
output o0,o1;

assign o0  = d3 | (d1 & ~d2);
assign o1 = d2 | d3;

endmodule