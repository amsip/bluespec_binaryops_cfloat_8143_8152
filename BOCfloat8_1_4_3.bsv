//OmSriRamajayam
//BOCfloat8_1_4_3.bsv

package BOCfloat8_1_4_3;

	import the_CustomDataTypes::*;

	interface Ifc_type;	
		
		method Cfloat8_1_4_3 bo_divide (Cfloat8_1_4_3 x, Cfloat8_1_4_3 y);
		
		method Cfloat8_1_4_3 bo_multiply (Cfloat8_1_4_3 x, Cfloat8_1_4_3 y);
				
	endinterface: Ifc_type


	(* synthesize *)
	module mkModuleBOCfloat8_1_4_3 (Ifc_type);
	
		method Cfloat8_1_4_3 bo_divide (Cfloat8_1_4_3 x, Cfloat8_1_4_3 y);
					Cfloat8_1_4_3 res;
					
					res.sign = x.sign ^ y.sign ;
					res.exponent = x.exponent - y.exponent;

					res.fraction = x.fraction / y.fraction;					
				
				return res;			
				
		endmethod

		method Cfloat8_1_4_3 bo_multiply (Cfloat8_1_4_3 x, Cfloat8_1_4_3 y);
					Cfloat8_1_4_3 res;
					
					res.sign = x.sign ^ y.sign ;
					res.exponent = x.exponent + y.exponent;
					res.fraction = x.fraction * y.fraction;
					return res;
		endmethod
		
	endmodule: mkModuleBOCfloat8_1_4_3
	
endpackage: BOCfloat8_1_4_3

