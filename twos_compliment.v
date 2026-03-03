
module twos_compliment(
    input A0, A1, A2, A3, A4, A5, A6, A7,

    output Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7
);
wire w0, w1, w2, w3, w4, w5, w6, w7;

    full_adder bit_0(
        .A(~A0),
        .B(1'b1),
        .Cin(1'b0),
        .Cout(w0),
        .Y(Y0)
    );
    full_adder bit_1(
        .A(~A1),
        .B(1'b0),
        .Cin(w0),
        .Cout(w1),
        .Y(Y1)
    );    
    full_adder bit_2(
        .A(~A2),
        .B(1'b0),
        .Cin(w1),
        .Cout(w2),
        .Y(Y2)
    );
    full_adder bit_3(
        .A(~A3),
        .B(1'b0),
        .Cin(w2),
        .Cout(w3),
        .Y(Y3)
    );
    full_adder bit_4(
        .A(~A4),
        .B(1'b0),
        .Cin(w3),
        .Cout(w4),
        .Y(Y4)
    );
    full_adder bit_5(
        .A(~A5),
        .B(1'b0),
        .Cin(w4),
        .Cout(w5),
        .Y(Y5)
    );
    full_adder bit_6(
        .A(~A6),
        .B(1'b0),
        .Cin(w5),
        .Cout(w6),
        .Y(Y6)
    );
    full_adder bit_7(
        .A(~A7),
        .B(1'b0),
        .Cin(w6),
        .Cout(w7),
        .Y(Y7)
    );
   

endmodule
