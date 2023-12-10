typedef struct {
    Bit#(1) sign;
    Bit#(4) biasedExponent;
    Bit#(3) fraction;
} Cfloat deriving(Bits);

module mkExampleModule #(int cBIAS);

    // Function to convert biased exponent to actual exponent
    function Int getActualExponent(Cfloat cfloat);
        return cfloat.biasedExponent - cBIAS;
    endfunction

    // Example numbers with different biases
    Cfloat myCfloat1 = {1, 5'b0101, 3'b110}; // Biased Exponent: 5
    Cfloat myCfloat2 = {0, 5'b01101, 2'b10}; // Biased Exponent: 13

    // Convert biased exponent to actual exponent using the configured bias
    Int actualExponent1 = getActualExponent(myCfloat1);
    Int actualExponent2 = getActualExponent(myCfloat2);

    // Display the results
    initial begin
        $display("Cfloat1: Actual Exponent=%0d, Fraction=%b", actualExponent1, myCfloat1.fraction);
        $display("Cfloat2: Actual Exponent=%0d, Fraction=%b", actualExponent2, myCfloat2.fraction);
    end

endmodule

// Instantiate the module with a specific bias value
// For example, with a bias of 10
mkExampleModule#(10) myModule;
