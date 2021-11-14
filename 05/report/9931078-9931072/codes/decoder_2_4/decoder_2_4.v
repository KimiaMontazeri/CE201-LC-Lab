module decoder_2_4(a,b,enb,O0,O1,O2,O3);
    input a,b,enb;
    output O0,O1,O2,O3;
    not g1(a_not, a);
    not g2(b_not, b);
    and g3(O0, a_not, b_not, enb);
    and g4(O1, a_not, b, enb);
    and g5(O2, a, b_not, enb);
    and g6(O3, a, b, enb);
endmodule