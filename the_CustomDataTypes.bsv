//OmSriRamajayam
//the_CustomDataTypes.bsv

package the_CustomDataTypes;

		typedef struct {
			
			Bit#(1) sign;
			Bit#(4) exponent;
			Bit#(3) fraction;
			
		} Cfloat8_1_4_3 deriving(Bits);
		
endpackage: the_CustomDataTypes
