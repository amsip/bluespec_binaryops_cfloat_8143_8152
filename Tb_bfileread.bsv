
//Tb_bfileread.bsv
//Basic File Read - page-94

module mkBasicFileReader();

	rule displayrule1a;	
		$display ( "================= mkBasicFileReader Starts ===================================" );		
	endrule
		
	rule open ( True ) ;
		String readFile = "input.txt";
		File lfh <- $fopen(readFile, "r" ) ;
		
		int i <- $fgetc( lfh );
		if ( i != -1 )
			begin
				Bit#(8) c = truncate( pack(i) ) ;
			end
		else // an error occurred.
			begin
				$display( "Could not get byte from %s", readFile ) ;
			end
		$fclose ( lfh ) ;
		$finish(0);
	endrule

	rule displayrule1z;	
		$display ( "================= mkBasicFileReader Ends ===================================" );		
	endrule
	
endmodule


	// Testbench module
module tbBasicFileReader();

	rule displayrule0a;	
		$display ( "================= tbBasicFileReader Starts ===================================" );		
	endrule
    
	mkBasicFileReader myFileReader;	
	
	myFileReader.displayrule1a();
	
    // Action block to execute the rules
    //initial begin
//        Action a = Action;
//        a = mkAction myFileReader.displayrule1a();
//        a = mkAction myFileReader.open(True);
//        a = mkAction myFileReader.displayrule1z();
    //end

	rule displayrule0z;	
		$display ( "================= tbBasicFileReader Ends ===================================" );		
	endrule

endmodule

