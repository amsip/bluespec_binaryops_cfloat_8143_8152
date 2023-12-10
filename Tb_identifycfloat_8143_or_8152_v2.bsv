// Define common structure for both types
typedef struct {
    Bit#(1) sign;
    Bit#(5) exponent; // Use the maximum exponent width
    Bit#(3) fraction;
} CommonCfloat deriving(Bits);

// Define specific types with different exponent widths
typedef struct {
    CommonCfloat commonPart;
} Cfloat8_1_4_3 deriving(Bits);

typedef struct {
    CommonCfloat commonPart;
} Cfloat8_1_5_2 deriving(Bits);

module mkExampleModule(Empty);

    // Function to identify the type of Cfloat
    function String identifyCfloatType(CommonCfloat cfloat);
        return "CommonCfloat";
    endfunction

    // Example numbers
    Cfloat8_1_4_3 myCfloat8_1_4_3 = {1, 5'b0101, 3'b110}; // Example: Negative, Exponent: 5, Fraction: 6/8
    Cfloat8_1_5_2 myCfloat8_1_5_2 = {0, 5'b01101, 2'b10}; // Example: Positive, Exponent: 13, Fraction: 2/4

    // Identify the type and display
    $display("Type: %s", identifyCfloatType(myCfloat8_1_4_3.commonPart));
    $display("Type: %s", identifyCfloatType(myCfloat8_1_5_2.commonPart));

endmodule
