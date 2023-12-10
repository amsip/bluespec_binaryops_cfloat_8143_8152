//OmSriRamajayam
//the_CustomDataTypes2.bsv

package the_CustomDataTypes2;

		typedef struct {
			
			Bit#(1) sign;
			Bit#(5) exponent;
			Bit#(2) fraction;
			
		} Cfloat8_1_5_2 deriving(Bits);
		
endpackage: the_CustomDataTypes2
