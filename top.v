module top(
    input [9:0] sw,
    output [13:0] led

);
    
    half_sub half_sub_inst(
        .A(sw[0]),
        .B(sw[1]),
        .Y(led[0]),
        .Borrow(led[1])    
    );
    ones_compliment ones_compliment_inst(
        .A0(sw[2]),
        .A1(sw[3]),
        .A2(sw[4]),
        .A3(sw[5]),
        
        .B0(sw[6]),
        .B1(sw[7]),
        .B2(sw[8]),
        .B3(sw[9]),
        
        .Y0(led[2]),
        .Y1(led[3]),
        .Y2(led[4]),
        .Y3(led[5])
    );
    
//    wire w0, w1, w2, w3;
    
//    ones_compliment bit_0(
//        .A(sw[2]),
//        .B(sw[6]),
//        .Cin(w3),//.Cin(1'b0),
//        .Cout(w0),
//        .Y(led[2])
//    );
//    ones_compliment bit_1(
//        .A(sw[3]),
//        .B(sw[7]),
//        .Cin(w0),
//        .Cout(w1),
//        .Y(led[3])
//    );
//    ones_compliment bit_2(
//        .A(sw[4]),
//        .B(sw[8]),
//        .Cin(w1),
//        .Cout(w2),
//        .Y(led[4])
//    );
//    ones_compliment bit_3(
//        .A(sw[5]),
//        .B(sw[9]),
//        .Cin(w2),
//        .Cout(w3),
//        .Y(led[5])
//    );

twos_compliment twos_compliment_inst (
        .A0(sw[2]),
        .A1(sw[3]),
        .A2(sw[4]),
        .A3(sw[5]),
        .A4(sw[6]),
        .A5(sw[7]),
        .A6(sw[8]),
        .A7(sw[9]),
        
        .Y0(led[6]),
        .Y1(led[7]),
        .Y2(led[8]),
        .Y3(led[9]),
        .Y4(led[10]),
        .Y5(led[11]),
        .Y6(led[12]),
        .Y7(led[13])
        
 );
    

endmodule