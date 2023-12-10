//Tb_pbo_test.bsv
import GetOpts::*;
import Testbench::*;

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

module mkTestbench(Empty);
	/*
    // Function to compare two Cfloat8_1_4_3 values
    function Action compareCfloat8_1_4_3(String msg, Cfloat8_1_4_3 expected, Cfloat8_1_4_3 actual);
        if (expected != actual) 
			begin
				//$display("%s: Mismatch! Expected=%b, Actual=%b", msg, expected, actual);
				//$display(" dbg-1");
				$finish(1);
			end
		else	
			begin
				$finish(0);
			end	
    endfunction

    // Function to compare two Cfloat8_1_5_2 values
    function Action compareCfloat8_1_5_2(String msg, Cfloat8_1_5_2 expected, Cfloat8_1_5_2 actual);
        if (expected != actual) 
			//begin
				//$display("%s: Mismatch! Expected=%b, Actual=%b", msg, expected, actual);
				$display("dbg-2");
				//$finish(1);
			//end
		else
			//begin
				//$finish(0);
				$display("dbg-2-else");
			//end		
		$finish(0);	
    endfunction
	*/
	
    // Testbench
    rule testcase;
        let mkPipelinedBinaryOps#(10) dut <- mkPipelinedBinaryOps#(10)();
        let Cfloat8_1_4_3 x = {1, 4'b0101, 3'b110};
        let Cfloat8_1_4_3 y = {0, 4'b0011, 3'b101};
        let Cfloat8_1_5_2 x2 = {1, 5'b01101, 2'b10};
        let Cfloat8_1_5_2 y2 = {0, 5'b01010, 2'b01};

        // Division and multiplication for Cfloat8_1_4_3
        rule divMulTest1;
            
			ActionValue#(Cfloat8_1_4_3) resultDiv;
            ActionValue#(Cfloat8_1_4_3) resultMul;
            
			dut.divMulTest1(x, y, x2, y2, resultDiv, resultMul, ActionValue#());
            
			//compareCfloat8_1_4_3("Division Result", {1, 4'b0010, 3'b111}, resultDiv);
           // compareCfloat8_1_4_3("Multiplication Result", {1, 4'b1100, 3'b010}, resultMul);
        
		endrule

        // Division and multiplication for Cfloat8_1_5_2
        rule divMulTest2;
            
			ActionValue#(Cfloat8_1_5_2) resultDiv2;
            ActionValue#(Cfloat8_1_5_2) resultMul2;
            
			dut.divMulTest2(x, y, x2, y2, ActionValue#(), ActionValue#(), resultDiv2, resultMul2);
			
           // compareCfloat8_1_5_2("Division Result", {1, 5'b00011, 2'b01}, resultDiv2);
           // compareCfloat8_1_5_2("Multiplication Result", {1, 5'b11000, 2'b11}, resultMul2);			
        
		endrule

		$finish;		
	endrule

endmodule
