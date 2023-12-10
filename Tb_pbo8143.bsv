//Tb_pbo8143.bsv

typedef struct {
    Bit#(1) sign;
    Bit#(4) exponent;
    Bit#(3) fraction;
} Cfloat8_1_4_3 deriving(Bits);

//module mkPipelinedBinaryOps8143 #(Int#(32) pBIAS) ( Cfloat8_1_4_3 x, Cfloat8_1_4_3 y);

module mkPipelinedBinaryOps8143 ( Cfloat8_1_4_3 x, Cfloat8_1_4_3 y);

	// You can add your logic, registers, rules, etc., here

endmodule


// Testbench module
module tb();
    Cfloat8_1_4_3 x = {1, 4'b0101, 3'b110};
    Cfloat8_1_4_3 y = {0, 4'b0011, 3'b101};

    //mkPipelinedBinaryOps8143#(32) myModule(.x(x), .y(y));
    
	mkPipelinedBinaryOps8143 myModule();

endmodule



