//OmSriRamajayam
//Tb_BOCfloat8_1_4_3.bsv

package Tb_BOCfloat8_1_4_3;

import the_CustomDataTypes::*;
import BOCfloat8_1_4_3::*;

import the_CustomDataTypes2::*;
import BOCfloat8_1_5_2::*;

	(* synthesize *)
	
	module mkTb (Empty);
	
		//Section-1::	
		//------------------------------------------------------------------------------------------------------------------------
		//-------------------------------------Binary Operatons Cfloat8_1_4_3 Starts ----------------------------------

		rule finishdis1;
			$display("================= Start ===");
		endrule
		
		Ifc_type ifc <- mkModuleBOCfloat8_1_4_3;
		
		Cfloat8_1_4_3 a;
		
		a.sign = 1'b0;
		a.exponent = 4'b1010;
		a.fraction = 3'b110;
		
		Cfloat8_1_4_3 b;
		b.sign = 1'b1;
		b.exponent = 4'b1011;
		b.fraction = 3'b101;

		Bit#(4) c1BIAS = 4'b1010;
		
		Cfloat8_1_4_3 c;
		c.sign = a.sign ^ b.sign ;
		
		//Adjust to Bias
		a.exponent = a.exponent - c1BIAS;
		b.exponent = b.exponent - c1BIAS;
		
		c.exponent = a.exponent - b.exponent;
		
		//Adjust output to Bias
		c.exponent = c.exponent - c1BIAS;

		if ( (a.fraction ==3'b000) || (b.fraction == 3'b000) )
				begin
					rule displayerr_c1;
						$display("Division by Zero occured, exit");
						$finish( 0);
					endrule
				end

		c.fraction = a.fraction / b.fraction;
		
		Cfloat8_1_4_3 d;
		d.sign = a.sign ^ b.sign ;
		
		//Adjust to Bias
		a.exponent = a.exponent + c1BIAS;
		b.exponent = b.exponent + c1BIAS;

		d.exponent = a.exponent + b.exponent;
		
		//Adjust output to Bias
		d.exponent = d.exponent + c1BIAS;
		
		d.fraction = a.fraction * b.fraction;
				
		rule theUltimateAnswer;
			
			$display ( "\n================= Binary Ops Cfloat8_1_4_3 --single element ===" );
			$display("----------------- Binary Ops Cfloat8_1_4_3  Input ---");		
			$display (" Element a = %b %b %b ", a.sign, a.exponent, a.fraction );
			$display (" Element b = %b %b %b ", b.sign, b.exponent, b.fraction );

			$display("------------------ Binary Ops Cfloat8_1_4_3  Output ---");	
			//$display ("Local Calculation Divide:: %b %b %b ", c.sign, c.exponent, c.fraction );
			//$display ("Local Calculation Multiply:: %b %b %b ", d.sign, d.exponent, d.fraction );
			
			Cfloat8_1_4_3 res_d = ifc.bo_divide ( a , b );
			
			$display ("Calculation via method-Divide():: %b %b %b", res_d.sign, res_d.exponent, res_d.fraction );

			Cfloat8_1_4_3 res_m = ifc.bo_multiply ( a , b );
			
			$display ("Calculation via method-Multiply():: %b %b %b", res_m.sign, res_m.exponent, res_m.fraction );
						
			//$finish (0);
			
		endrule
		
		//------------------------------------------------------------------------------------------------------------------------		
		//-------------------------------------Binary Operatons Cfloat8_1_4_3 Ends ----------------------------------

		//Section-2::
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

		Bit#(5) c2BIAS = 5'b01010;
		
		Cfloat8_1_5_2 cc;
		cc.sign = aa.sign ^ bb.sign ;
		
		aa.exponent = aa.exponent - c2BIAS;
		bb.exponent = bb.exponent - c2BIAS;
		
		cc.exponent = aa.exponent - bb.exponent;

		cc.exponent = cc.exponent - c2BIAS;

		if ( (aa.fraction ==2'b00) || (bb.fraction == 2'b00) )
				begin
					rule displayerr_c2;
						$display("Division by Zero occured, exit");
						$finish( 0);
					endrule
				end
				
		cc.fraction = aa.fraction / bb.fraction;
		
		Cfloat8_1_5_2 dd;
		dd.sign = aa.sign ^ bb.sign ;

		aa.exponent = aa.exponent + c2BIAS;
		bb.exponent = bb.exponent + c2BIAS;

		dd.exponent = aa.exponent + bb.exponent;

		dd.exponent = dd.exponent + c2BIAS;
		
		dd.fraction = aa.fraction * bb.fraction;
		
		rule theUltimateAnswer2;
		
			$display ( "\n================= Binary Ops Cfloat8_1_5_2 --single element ===" );
			$display("----------------- Binary Ops Cfloat8_1_5_2  Input ---");		
			
			$display (" aa = %b %b %b ", aa.sign, aa.exponent, aa.fraction );
			$display (" bb = %b %b %b ", bb.sign, bb.exponent, bb.fraction );

			$display("----------------- Binary Ops Cfloat8_1_5_2  Output ---");	
			
			//$display ("Local Calculation Divide:: cc = %b %b %b ", cc.sign, cc.exponent, cc.fraction );
			//$display ("Local Calculation Multiply:: dd = %b %b %b ", dd.sign, dd.exponent, dd.fraction );
			
			Cfloat8_1_5_2 res_dd = ifc2.bo_divide_m ( aa , bb );
			
			$display ("Calculation via method-Divide():: %b %b %b", res_dd.sign, res_dd.exponent, res_dd.fraction );

			Cfloat8_1_5_2 res_mm = ifc2.bo_multiply_m ( aa , bb );
			
			$display ("Calculation via method-Multiply():: %b %b %b", res_mm.sign, res_mm.exponent, res_mm.fraction );
			
			//$finish (0);
			
		endrule
		//------------------------------------------------------------------------------------------------------------------------
		//-------------------------------------Binary Operatons Cfloat8_1_5_2 Ends ----------------------------------		
		
		//Section-3::
		//------------------------------------------------------------------------------------------------------------------------
		//-------------------------------------Binary Operatons Cfloat8_1_4_3 - List of Values   Starts------------		

		rule displayrule2;	
		$display ( "\n================= Binary Ops Cfloat8_1_4_3 --List of elements ===" );
		$display("----------------- Binary Ops Cfloat8_1_4_3 -List() Input ---");		
		endrule
		
		Cfloat8_1_4_3 a_list[5];
		Bit#(4) c3BIAS = 4'b1010;
		
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
				$display("Element a %0d: sign=%b, exponent=%b, fraction=%b", i, a_list[i].sign, a_list[i].exponent, a_list[i].fraction );
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
				$display("Element b %0d: sign=%b, exponent=%b, fraction=%b", i, b_list[i].sign, b_list[i].exponent, b_list[i].fraction );
			end
			//$finish (0);			
			endrule

		Cfloat8_1_4_3 c_list[5];
		for (int i = 0; i < 5; i = i + 1) 	begin

				c_list[i].sign = a_list[i].sign ^ b_list[i].sign ;
				
				//Adjust to Bias				
				a_list[i].exponent = a_list[i].exponent - c3BIAS;
				b_list[i].exponent = b_list[i].exponent - c3BIAS;
				
				c_list[i].exponent = a_list[i].exponent - b_list[i].exponent;

				//Adjust output to Bias				
				c_list[i].exponent = c_list[i].exponent - c3BIAS;
				
				if ( (a_list[i].fraction ==3'b000) || (b_list[i].fraction == 3'b000) )
				begin
					rule displayerr_c;
						$display("Division by Zero occured, exit");
						$finish( 0);
					endrule
				end
				
				c_list[i].fraction = a_list[i].fraction / b_list[i].fraction;
				
		end

			rule displayrule3b;	
			$display("-----------------  Binary Ops Cfloat8_1_4_3 Divide-List() Output ---");
			// Display the values for verification
			for (int i = 0; i < 5; i = i + 1) 	begin
				$display("Element %0d: sign=%b, exponent=%b, fraction=%b", i, c_list[i].sign, c_list[i].exponent, c_list[i].fraction );
			end
			//$finish (0);			
			endrule
			
		Cfloat8_1_4_3 d_list[5];
		for (int i = 0; i < 5; i = i + 1) 	begin				

				d_list[i].sign = a_list[i].sign ^ b_list[i].sign ;
				
				//Adjust to Bias
				a_list[i].exponent = a_list[i].exponent + c3BIAS;
				b_list[i].exponent = b_list[i].exponent + c3BIAS;
				
				d_list[i].exponent = a_list[i].exponent + b_list[i].exponent;

				//Adjust output to Bias				
				d_list[i].exponent = d_list[i].exponent + c3BIAS;
				
				d_list[i].fraction = a_list[i].fraction * b_list[i].fraction;
				
		end
		
			rule displayrule3c;	
			$display("----------------- Binary Ops Cfloat8_1_4_3 Multiply-List() Output ---");
			// Display the values for verification
			for (int i = 0; i < 5; i = i + 1) 	begin
				$display("Element %0d: sign=%b, exponent=%b, fraction=%b", i, d_list[i].sign, d_list[i].exponent, d_list[i].fraction );
			end
			//$finish (0);			
			endrule
	
		//------------------------------------------------------------------------------------------------------------------------
		//-------------------------------------Binary Operatons Cfloat8_1_4_3 - List of Values   Ends------------		
		
		//Section-4:
		//------------------------------------------------------------------------------------------------------------------------
		//-------------------------------------Binary Operatons Cfloat8_1_5_2 - List of Values   Starts------------		

		rule displayrule2aa;	
		$display ( "\n================= Binary Ops Cfloat8_1_5_2 --List of elements ===" );		
		$display("----------------- Binary Ops Cfloat8_1_5_2 -List() Input ---");
		endrule
		
		Cfloat8_1_5_2 aa_list[5];
		Bit#(5) c4BIAS = 5'b01010;
		
			aa_list[0].sign = 1'b0;
			aa_list[0].exponent = 5'b10001;
			aa_list[0].fraction = 2'b01;

			aa_list[1].sign = 1'b1;
			aa_list[1].exponent = 5'b10110;
			aa_list[1].fraction = 2'b10;
						
			aa_list[2].sign = 1'b0;
			aa_list[2].exponent = 5'b10111;
			aa_list[2].fraction = 2'b11;

			aa_list[3].sign = 1'b1;
			aa_list[3].exponent = 5'b10100;
			aa_list[3].fraction = 2'b10;

			aa_list[4].sign = 1'b0;
			aa_list[4].exponent = 5'b10101;
			aa_list[4].fraction = 2'b01;

			rule displayrule3aa;	
			
			// Display the values for verification
			for (int i = 0; i < 5; i = i + 1) 	begin
				$display("Element aa %0d: sign=%b, exponent=%b, fraction=%b", i, aa_list[i].sign, aa_list[i].exponent, aa_list[i].fraction );
			end
			//$finish (0);
			endrule
			
			rule displayrule2ab;	
			$display ( "------------------------------------" );		
			endrule
			
			Cfloat8_1_5_2 bb_list[5];
		
			bb_list[0].sign = 1'b0;
			bb_list[0].exponent = 5'b10001;
			bb_list[0].fraction = 2'b01;

			bb_list[1].sign = 1'b1;
			bb_list[1].exponent = 5'b10010;
			bb_list[1].fraction = 2'b10;
						
			bb_list[2].sign = 1'b0;
			bb_list[2].exponent = 5'b10011;
			bb_list[2].fraction = 2'b11;

			bb_list[3].sign = 1'b1;
			bb_list[3].exponent = 5'b10100;
			bb_list[3].fraction = 2'b10;

			bb_list[4].sign = 1'b1;
			bb_list[4].exponent = 5'b10101;
			bb_list[4].fraction = 2'b01;

			rule displayrule3ab;	
			
			// Display the values for verification
			for (int i = 0; i < 5; i = i + 1) 	begin
				$display("Element bb %0d: sign=%b, exponent=%b, fraction=%b", i, bb_list[i].sign, bb_list[i].exponent, bb_list[i].fraction );
			end
			//$finish (0);			
			endrule

		Cfloat8_1_5_2 cc_list[5];
		for (int i = 0; i < 5; i = i + 1) 	begin

				cc_list[i].sign = aa_list[i].sign ^ bb_list[i].sign ;
				
				//Adjust to Bias				
				aa_list[i].exponent = aa_list[i].exponent - c4BIAS;
				bb_list[i].exponent = bb_list[i].exponent - c4BIAS;
				
				cc_list[i].exponent = aa_list[i].exponent - bb_list[i].exponent;

				//Adjust output to Bias				
				cc_list[i].exponent = cc_list[i].exponent - c4BIAS;
				
				if ( (aa_list[i].fraction ==2'b00) || (bb_list[i].fraction == 2'b00) )
				begin
					rule displayerr_cc;
						$display("Division by Zero occured, exit");
						$finish( 0);
					endrule
				end
				
				cc_list[i].fraction = aa_list[i].fraction / bb_list[i].fraction;
				
		end

			rule displayrule3bc;	
			$display("----------------- Binary Ops Cfloat8_1_5_2 Divide-List() Output ---");
			// Display the values for verification
			for (int i = 0; i < 5; i = i + 1) 	begin
				$display("Element %0d: sign=%b, exponent=%b, fraction=%b", i, cc_list[i].sign, cc_list[i].exponent, cc_list[i].fraction );
			end
			//$finish (0);			
			endrule
			
		Cfloat8_1_5_2 dd_list[5];
		for (int i = 0; i < 5; i = i + 1) 	begin				

				dd_list[i].sign = aa_list[i].sign ^ bb_list[i].sign ;
				
				//Adjust to Bias
				aa_list[i].exponent = aa_list[i].exponent + c4BIAS;
				bb_list[i].exponent = bb_list[i].exponent + c4BIAS;
				
				dd_list[i].exponent = aa_list[i].exponent + bb_list[i].exponent;

				//Adjust output to Bias				
				dd_list[i].exponent = dd_list[i].exponent + c4BIAS;
				
				dd_list[i].fraction = aa_list[i].fraction * bb_list[i].fraction;
				
		end
		
			rule displayrule3cd;	
			$display("----------------- Binary Ops Cfloat8_1_5_2 Multiply-List() Output ---");
			// Display the values for verification
			for (int i = 0; i < 5; i = i + 1) 	begin
				$display("Element %0d: sign=%b, exponent=%b, fraction=%b", i, dd_list[i].sign, dd_list[i].exponent, dd_list[i].fraction );
			end
			//$finish (0);			
			endrule
	
		//------------------------------------------------------------------------------------------------------------------------
		//-------------------------------------Binary Operatons Cfloat8_1_5_2 - List of Values   Ends------------		
		
		rule finishdis2;
			$display("================= End ===");
			$finish (0);			
		endrule
		
	endmodule: mkTb
	
endpackage: Tb_BOCfloat8_1_4_3
