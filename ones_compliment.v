//module ones_compliment(
//    // Declare inputs
//    input A, B, Cin,
    
//    // Declare Y output
//    output Y, Cout
//);

//    // Enter logic equation here
//    assign Y = A ^ B ^ Cin;
//    assign Cout = A&B | A&Cin | B&Cin;

//endmodule
module ones_compliment(
    input A0, A1, A2, A3, B0, B1, B2, B3,
    
    output Y0, Y1, Y2, Y3
);
 wire w0, w1, w2, w3; //traverse through the first addition
 
 wire y0, y1, y2, y3; //temp wires, takes Yx -> Ax
 wire w0_second, w1_second, w2_second, w3_second; //traverse through the second addition _second
 

//    full_adder bit_0(
//        .A(A0),
//        .B(B0),
//        .Cin(w3),//.Cin(1'b0),
//        .Cout(w0),
//        .Y(Y0)
//    );
//    full_adder bit_1(
//        .A(A1),
//        .B(B1),
//        .Cin(w0),
//        .Cout(w1),
//        .Y(Y1)
//    );
//    full_adder bit_2(
//        .A(A2),
//        .B(B2),
//        .Cin(w1),
//        .Cout(w2),
//        .Y(Y2)
//    );
//    full_adder bit_3(
//        .A(A3),
//        .B(B3),
//        .Cin(w2),
//        .Cout(w3),
//        .Y(Y3)
//    );

    full_adder bit_0(
        .A(A0),
        .B(B0),
        .Cin(1'b0),//.Cin(1'b0),
        .Cout(w0),
        .Y(y0)
    );
    full_adder bit_1(
        .A(A1),
        .B(B1),
        .Cin(w0),
        .Cout(w1),
        .Y(y1)
    );
    full_adder bit_2(
        .A(A2),
        .B(B2),
        .Cin(w1),
        .Cout(w2),
        .Y(y2)
    );
    full_adder bit_3(
        .A(A3),
        .B(B3),
        .Cin(w2),
        .Cout(w3),
        .Y(y3)
    );
    
    
    
    
    
    full_adder bit_4(
        .A(y0),
        .B(1'b0),
        .Cin(w3),
        .Cout(w0_second),
        .Y(Y0)
    );
    full_adder bit_5(
        .A(y1),
        .B(1'b0),
        .Cin(w0_second),
        .Cout(w1_second),
        .Y(Y1)
    );
    full_adder bit_6(
        .A(y2),
        .B(1'b0),
        .Cin(w1_second),
        .Cout(w2_second),
        .Y(Y2)
    );
    full_adder bit_7(
        .A(y3),
        .B(1'b0),
        .Cin(w2_second),
        .Cout(w3_second),
        .Y(Y3)
    );


endmodule