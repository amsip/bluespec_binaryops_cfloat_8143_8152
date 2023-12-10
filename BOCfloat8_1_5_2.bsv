//OmSriRamajayam
//BOCfloat8_1_5_2.bsv

package BOCfloat8_1_5_2;

	import the_CustomDataTypes2::*;

	interface Ifc_type2;	
		
		method Cfloat8_1_5_2 bo_divide_m (Cfloat8_1_5_2 xx, Cfloat8_1_5_2 yy);
		
		method Cfloat8_1_5_2 bo_multiply_m (Cfloat8_1_5_2 xx, Cfloat8_1_5_2 yy);
				
	endinterface: Ifc_type2

	(* synthesize *)
	module mkModuleBOCfloat8_1_5_2 (Ifc_type2);
	
		method Cfloat8_1_5_2 bo_divide_m (Cfloat8_1_5_2 xx, Cfloat8_1_5_2 yy);
					
					Cfloat8_1_5_2 res;
					
					res.sign = xx.sign ^ yy.sign ;
					res.exponent = xx.exponent - yy.exponent;
					res.fraction = xx.fraction / yy.fraction;
					
					return res;			
		endmethod

		method Cfloat8_1_5_2 bo_multiply_m (Cfloat8_1_5_2 xx, Cfloat8_1_5_2 yy);
					
					Cfloat8_1_5_2 res;
					
					res.sign = xx.sign ^ yy.sign ;
					res.exponent = xx.exponent + yy.exponent;
					res.fraction = xx.fraction * yy.fraction;
					
					return res;				
		endmethod
		
	endmodule: mkModuleBOCfloat8_1_5_2
endpackage: BOCfloat8_1_5_2

