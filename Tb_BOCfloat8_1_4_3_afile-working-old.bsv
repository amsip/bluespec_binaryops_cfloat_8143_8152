//OmSriRamajayam
//Tb_BOCfloat8_1_4_3_afile.bsv

package Tb_BOCfloat8_1_4_3_afile;

import the_CustomDataTypes::*;
import BOCfloat8_1_4_3::*;

import the_CustomDataTypes2::*;
import BOCfloat8_1_5_2::*;

	(* synthesize *)
	
	module mkTb (Empty);
	
		//------------------------------------------------------------------------------------------------------------------------
		//-------------------------------------Binary Operatons Cfloat8_1_4_3 Starts ----------------------------------
		
		Ifc_type ifc <- mkModuleBOCfloat8_1_4_3;

		Cfloat8_1_4_3 a;
		a.sign = 1'b0;
		a.exponent = 4'b1010;
		a.fraction = 3'b110;
		
		Cfloat8_1_4_3 b;
		b.sign = 1'b1;
		b.exponent = 4'b1011;
		b.fraction = 3'b101;
		
		Cfloat8_1_4_3 c;
		c.sign = a.sign ^ b.sign ;
		c.exponent = a.exponent - b.exponent;
		c.fraction = a.fraction / b.fraction;
		
		Cfloat8_1_4_3 d;
		d.sign = a.sign ^ b.sign ;
		d.exponent = a.exponent + b.exponent;
		d.fraction = a.fraction * b.fraction;
		
	rule displayrule1a;	
		$display ( "================= mkBasicFileReader Starts ===================================" );		
	endrule
		
	rule fileopen; //open ( True ) ;
		String readFile = "input.txt";

		$display( "Reading File  %s", readFile ) ;
				
		File lfh <- $fopen(readFile, "r" ) ;

		$display( "dgb-1" ) ;
		
		String line = "";

		/*	
		while (True) 
		begin    			
			//int readByte = $fgetc( lfh );
			ActionValue#(Int#(32)) readAction = $fgetc(lfh);
			//int readByte = readAction.value;
			Bit#(8) readByte = readAction.value;
			
			$display("Read byte: 0x%02x", readByte);
			
            if (readByte == -1)  // End of file
				begin    
					//break;
					$finish(0);
				end

            char c = truncate( pack ( readByte ) );

            if (c == 10)
				begin
					// Display the line and reset it
					$display( "Read from file - New line found " );
					line = "";
				end 
			else 
				begin
					// Append the character to the current line
					line = line + c;
				end
        end
		
		$display("Read from file: %s", line);
		*/
		
		/*
        String filename = "input.txt";
        Reg#(Bit#(8)) dataReg <- 0;
        
        // Read hexadecimal data from the file
        $readmemh(filename, dataReg);

        // Display the read binary data
        $display("Read binary data: %b", dataReg);
    */

		for (int i = 0; i < 8; i = i + 1) 	begin
				int da <- $fgetc( lfh );
				
				//rule decode1;
					case (da)
						48: 	//ASCII = 0
							$display( "dgb-2 i= %d da= %d = 0", i, da ) ;						
						49: 	//ASCII = 1 
							$display( "dgb-2 i= %d da= %d = 1", i, da ) ;						
						default:
							begin
								$display( "dgb-2 i= %d da= %d = Error,Exit", i, da ) ;						
								$finish(0);
							end
					endcase
				//endrule
				
				if ( da != -1 )
					begin
						Bit#(8) c =  truncate( pack(da) ) ;
						$display("File content %b", c);
					end
				else // an error occurred.
					begin
						$display( "Could not get byte from %s", readFile ) ;
					end
		end
		
		$display( "dgb-3" ) ;
				
		$fclose ( lfh ) ;
		//$finish(0);
	endrule

	rule displayrule1z;	
		$display ( "================= mkBasicFileReader Ends ===================================" );		
	endrule
		
		rule theUltimateAnswer;
			
			$display ("Binary Operations-Cfloat8_1_4_3");
			$display ("----Input----");
			$display (" a = %b %b %b ", a.sign, a.exponent, a.fraction );
			$display (" b = %b %b %b ", b.sign, b.exponent, b.fraction );

			$display ("----Output----");
			//$display ("Local Calculation Divide:: %b %b %b ", c.sign, c.exponent, c.fraction );
			//$display ("Local Calculation Multiply:: %b %b %b ", d.sign, d.exponent, d.fraction );
			
			Cfloat8_1_4_3 res_d = ifc.bo_divide ( a , b );
			
			$display ("Calculation via method-Divide():: %b %b %b", res_d.sign, res_d.exponent, res_d.fraction );

			Cfloat8_1_4_3 res_m = ifc.bo_multiply ( a , b );
			
			$display ("Calculation via method-Multiply():: %b %b %b", res_m.sign, res_m.exponent, res_m.fraction );
			
			$display ( "====================================================" );
						
			//$finish (0);
			
		endrule
		
		//------------------------------------------------------------------------------------------------------------------------		
		//-------------------------------------Binary Operatons Cfloat8_1_4_3 Ends ----------------------------------

		//------------------------------------------------------------------------------------------------------------------------				
		//-------------------------------------Binary Operatons Cfloat8_1_5_2 Starts ----------------------------------		
		
		Ifc_type2 ifc2 <- mkModuleBOCfloat8_1_5_2;
		
		Cfloat8_1_5_2 aa;
		aa.sign = 1'b0;
		aa.exponent = 5'b11010;
		aa.fraction = 2'b10;

		Cfloat8_1_5_2 bb;
		bb.sign = 1'b1;
		bb.exponent = 5'b10011;
		bb.fraction = 2'b01;

		Cfloat8_1_5_2 cc;
		cc.sign = aa.sign ^ bb.sign ;
		cc.exponent = aa.exponent - bb.exponent;
		cc.fraction = aa.fraction / bb.fraction;
		
		Cfloat8_1_5_2 dd;
		dd.sign = aa.sign ^ bb.sign ;
		dd.exponent = aa.exponent + bb.exponent;
		dd.fraction = aa.fraction * bb.fraction;
		
		rule theUltimateAnswer2;
		
			$display ("Binary Operations-Cfloat8_1_5_2");
			$display ("----Input----");
			
			$display (" aa = %b %b %b ", aa.sign, aa.exponent, aa.fraction );
			$display (" bb = %b %b %b ", bb.sign, bb.exponent, bb.fraction );

			$display ("----Output----");
			
			//$display ("Local Calculation Divide:: cc = %b %b %b ", cc.sign, cc.exponent, cc.fraction );
			//$display ("Local Calculation Multiply:: dd = %b %b %b ", dd.sign, dd.exponent, dd.fraction );
			
			Cfloat8_1_5_2 res_dd = ifc2.bo_divide_m ( aa , bb );
			
			$display ("Calculation via method-Divide():: %b %b %b", res_dd.sign, res_dd.exponent, res_dd.fraction );

			Cfloat8_1_5_2 res_mm = ifc2.bo_multiply_m ( aa , bb );
			
			$display ("Calculation via method-Multiply():: %b %b %b", res_mm.sign, res_mm.exponent, res_mm.fraction );

			$display ( "====================================================" );
			
			//$finish (0);
			
		endrule
		//------------------------------------------------------------------------------------------------------------------------
		//-------------------------------------Binary Operatons Cfloat8_1_5_2 Ends ----------------------------------		
		
		rule displayrule2;	
		$display ( "================= List of elements ===================================" );		
		endrule
		
		Cfloat8_1_4_3 a_list[5];
		
			a_list[0].sign = 1'b0;
			a_list[0].exponent = 4'b0001;
			a_list[0].fraction = 3'b001;

			a_list[1].sign = 1'b1;
			a_list[1].exponent = 4'b0110;
			a_list[1].fraction = 3'b010;
						
			a_list[2].sign = 1'b0;
			a_list[2].exponent = 4'b0111;
			a_list[2].fraction = 3'b011;

			a_list[3].sign = 1'b1;
			a_list[3].exponent = 4'b0100;
			a_list[3].fraction = 3'b100;

			a_list[4].sign = 1'b0;
			a_list[4].exponent = 4'b0101;
			a_list[4].fraction = 3'b101;

			rule displayrule3;	
			
			// Display the values for verification
			for (int i = 0; i < 5; i = i + 1) 	begin
				$display("Element %0d: sign=%b, exponent=%b, fraction=%b", i, a_list[i].sign, a_list[i].exponent, a_list[i].fraction );
			end
			//$finish (0);
			endrule
			
			rule displayrule2a;	
			$display ( "------------------------------------" );		
			endrule
			
			Cfloat8_1_4_3 b_list[5];
		
			b_list[0].sign = 1'b0;
			b_list[0].exponent = 4'b0001;
			b_list[0].fraction = 3'b001;

			b_list[1].sign = 1'b1;
			b_list[1].exponent = 4'b0010;
			b_list[1].fraction = 3'b010;
						
			b_list[2].sign = 1'b0;
			b_list[2].exponent = 4'b0011;
			b_list[2].fraction = 3'b011;

			b_list[3].sign = 1'b1;
			b_list[3].exponent = 4'b0100;
			b_list[3].fraction = 3'b100;

			b_list[4].sign = 1'b1;
			b_list[4].exponent = 4'b0101;
			b_list[4].fraction = 3'b101;

			rule displayrule3a;	
			
			// Display the values for verification
			for (int i = 0; i < 5; i = i + 1) 	begin
				$display("Element %0d: sign=%b, exponent=%b, fraction=%b", i, b_list[i].sign, b_list[i].exponent, b_list[i].fraction );
			end
			//$finish (0);			
			endrule

		Cfloat8_1_4_3 c_list[5];
		for (int i = 0; i < 5; i = i + 1) 	begin

				c_list[i].sign = a_list[i].sign ^ b_list[i].sign ;
				c_list[i].exponent = a_list[i].exponent - b_list[i].exponent;
				c_list[i].fraction = a_list[i].fraction / b_list[i].fraction;
				
		end

			rule displayrule3b;	
			$display("--------------------------------Divide-List()----------------");
			// Display the values for verification
			for (int i = 0; i < 5; i = i + 1) 	begin
				$display("Element %0d: sign=%b, exponent=%b, fraction=%b", i, c_list[i].sign, c_list[i].exponent, c_list[i].fraction );
			end
			//$finish (0);			
			endrule
			
		Cfloat8_1_4_3 d_list[5];
		for (int i = 0; i < 5; i = i + 1) 	begin				

				d_list[i].sign = a_list[i].sign ^ b_list[i].sign ;
				d_list[i].exponent = a_list[i].exponent + b_list[i].exponent;
				d_list[i].fraction = a_list[i].fraction * b_list[i].fraction;
				
		end
		
			rule displayrule3c;	
			$display("--------------------------------Multiplu-List()----------------");
			// Display the values for verification
			for (int i = 0; i < 5; i = i + 1) 	begin
				$display("Element %0d: sign=%b, exponent=%b, fraction=%b", i, d_list[i].sign, d_list[i].exponent, d_list[i].fraction );
			end
			$finish (0);			
			endrule
	
		//------------------------------------------------------------------------------------------------------------------------
		
	endmodule: mkTb
	
endpackage: Tb_BOCfloat8_1_4_3_afile
