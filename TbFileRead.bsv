//TbFileRead.bsv

typedef struct {
    Bit#(1) sign;
    Bit#(4) exponent;
    Bit#(3) fraction;
} Cfloat8_1_4_3 deriving(Bits);

module mkExampleModule(Empty);

    // Declare an array of Cfloat8_1_4_3 with length n (n = 5 in this example)
    Cfloat8_1_4_3 myArray[5];
    
	rule filerule1;
    
		// Function to read values from a file and assign them to the array
		function void readValuesFromFile(String fileName);
			
			Reg#(String) file;
			Integer fileHandle;

			// Action to open the file
			action closeFile;
			begin
				file <= fileName;
				fileHandle = $fopen(file, "r");
			end
			endaction
			
			// Method to display an error message and finish
			method void displayError(String errorMessage);
				$display("Error: %s", errorMessage);
				$finish;
			endmethod

			// Action to close the file
			action closeFile;
				$fclose(fileHandle);
			endaction

			// Action to read values from the file and assign them to the array
			action readValues;
				// Loop to read values from the file and assign them to the array
				for (int i = 0; i < 5; i = i + 1) begin
					//$fscanf(fileHandle, "%b %b %b", myArray[i].sign, myArray[i].exponent, myArray[i].fraction);
					$readmemb(myArray[i], fileHandle);
				end
			endaction

			// Execute the actions in a sequence
			sequence seq = sequence {
				openFile;
				if (fileHandle == 0) displayError("Unable to open file");
				readValues;
				closeFile;
			};

			// Execute the sequence in a rule
			rule executeSequence;
				seq.start;
			endrule
			
		endfunction

	endrule

    // Testbench
    initial begin
        // Read values from the file "input.txt"
        readValuesFromFile("input.txt");

        // Display the values using a for loop
        for (int i = 0; i < 5; i = i + 1) begin
            $display("Element %0d: sign=%b, exponent=%b, fraction=%b",
                     i, myArray[i].sign, myArray[i].exponent, myArray[i].fraction);
        end

        $finish;
    end

endmodule
