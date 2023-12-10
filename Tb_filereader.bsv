//Tb_filereader.bsv
import GetOpts::*;
import BSVPrimitives::*;

typedef struct {
    Bit#(1) sign;
    Bit#(4) exponent;
    Bit#(3) fraction;
} Cfloat8_1_4_3 deriving(Bits);

// Define a module to read a file and store its contents in a list
module mkFileReader (Reg#(List#(Cfloat8_1_4_3)) fileData);

    // Declare File type
    typedef File deriving(Bits);
	
    // Placeholder function for parsing a line into Cfloat8_1_4_3
    function Cfloat8_1_4_3 parseLine(String line);
        // Implement your parsing logic here
        // For simplicity, let's assume a fixed format: sign exponent fraction
        List#(String) tokens = words(line);
		
        //Bit#(1) sign = toBit#(Int#(1)(tokens[0]));
        //Bit#(4) exponent = toBit#(Int#(4)(tokens[1]));
        //Bit#(3) fraction = toBit#(Int#(3)(tokens[2]));
		
		Bit#(1) sign = unpack(tokens[0]);
		Bit#(4) exponent = unpack(tokens[1]);
		Bit#(3) fraction = unpack(tokens[2]);
	
        return {sign, exponent, fraction};
    endfunction

    // Function to read the file and populate the list
    function Action readFile(String filename);
        Reg#(List#(Cfloat8_1_4_3)) tempList = nil;

		// Open the file
		//File filehandle <= openFile(filename, ReadOnly);
		Action openAction;									  
		openAction = mkAction File filehandle = openFile(filename, ReadOnly);		   
		$display("Opening file %s", filename);
		openAction;
		if (!filehandle) begin
			$display("Error: Unable to open file %s", filename);
			$finish(1);
		end
		
        // Read each line from the file
        while (not(filehandle.eof)) begin
            String line = filehandle.getLine;
            if (line != "") begin
                // Parse the line and create a Cfloat8_1_4_3 structure
                // (Note: You need to implement your parsing logic here)
                Cfloat8_1_4_3 cfloat = parseLine(line);

                // Append the structure to the list
                tempList <= append(tempList, cfloat);
            end
        end

        // Close the file
        //filehandle.close;
		Action closeAction;
        closeAction = mkAction filehandle.close;
        $display("Closing file %s", filename);
        closeAction;									  

        // Update the module's fileData register with the populated list
        fileData <= tempList;
    endfunction


endmodule

// Testbench module
module tb #(Empty);
    Reg#(List#(Cfloat8_1_4_3)) fileData <- nil;
    mkFileReader myFileReader <- mkFileReader(fileData);

    // Action block to read the file
    initial begin
		Action a = Action;				  
        a = mkAction myFileReader.readFile("your_file.txt");

		// Rest of your testbench logic goes here...
	end   
endmodule
