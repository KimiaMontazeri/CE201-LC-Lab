module multiplexer(s1, s0, i0, i1, i2, i3, result);
input s1, s0, i0, i1, i2, i3;
output result;

assign result = (~s0 & ~s1 & i0) | (~s1 & s0 & i1) | (s1 & ~s0 & i2) | (s1 & s0 & i0);
endmodule