// Tb_bfr_1.bsv
import GetOpts::*;
import BSVPrimitives::*;

module mkBasicFileReader();

	// Rule to read a byte from the file and assign it to byteReg
	rule readByte;
		String filename = "input.txt";
		File lfh = $fopen(filename, "r");

		// Check if the file handle is valid
		if (lfh == nullFile) begin
			$display("Error: Unable to open file %s", filename);
			$finish(1);
		end

		int readValue = $fgetc(lfh);
		$fclose(lfh);

		// Assign the read value to byteReg
		byteReg <= truncate(pack(readValue));
	endrule
/*
// Rule to display the byteReg value
rule displayByte(Reg#(Bit#(8)) "byteReg");
    $display("Byte Value: %h", byteReg);
endrule
*/


endmodule

// Testbench module
module tb ();
    mkBasicFileReader fileReader;

    // Action block to execute the rules
    initial 
	begin
        Reg#(Bit#(8)) byteValue <- 0;
        fileReader.readByte(byteValue);
        //fileReader.displayByte(byteValue);
		$display("Byte Value: %h", byteReg);
        $finish;
    end
endmodule;
