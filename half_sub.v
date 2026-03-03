module half_sub(
    // Declare inputs
    input A, B,
    
    // Declare Y output
    output Y, Borrow
);

    // Enter logic equation here
    assign Y = A ^ B;
    assign Borrow = ~A & B;

endmodule