typedef struct {
    Bit#(1) sign;
    Bit#(4) exponent;
    Bit#(3) fraction;
} Cfloat8_1_4_3 deriving(Bits);

typedef struct {
    Bit#(1) sign;
    Bit#(5) exponent;
    Bit#(2) fraction;
} Cfloat8_1_5_2 deriving(Bits);

module mkExampleModule(Empty);

    // Function to identify the type of Cfloat
    function String identifyCfloatType(Cfloat8_1_4_3 cfloat);
        return "Cfloat8_1_4_3";
    endfunction

    function String identifyCfloatType(Cfloat8_1_5_2 cfloat);
        return "Cfloat8_1_5_2";
    endfunction

    // Example numbers
    Cfloat8_1_4_3 myCfloat8_1_4_3 = {1, 4'b0101, 3'b110}; // Example: Negative, Exponent: 5, Fraction: 6/8
    Cfloat8_1_5_2 myCfloat8_1_5_2 = {0, 5'b01101, 2'b10}; // Example: Positive, Exponent: 13, Fraction: 2/4

    // Identify the type and display
    $display("Type: %s", identifyCfloatType(myCfloat8_1_4_3));
    $display("Type: %s", identifyCfloatType(myCfloat8_1_5_2));

endmodule
