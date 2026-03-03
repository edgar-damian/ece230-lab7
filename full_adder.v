
module full_adder(
    // Declare inputs
    input A, B, Cin,
    
    // Declare Y output
    output Y, Cout
);

    // Enter logic equation here
    assign Y = A ^ B ^ Cin;
    assign Cout = A&B | A&Cin | B&Cin;

endmodule
