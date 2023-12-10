
//Tb_pbo.bsv
typedef struct {
    Bit#(1) sign;
    Bit#(4) exponent;
    Bit#(3) fraction;
} Cfloat8_1_4_3 deriving(Bits);

typedef struct {
    Bit#(1) sign;
    Bit#(5) exponent;
    Bit#(2) fraction;
} Cfloat8_1_5_2 deriving(Bits);

module mkPipelinedBinaryOps #(Int#(32) pBIAS) (Cfloat8_1_4_3 x, Cfloat8_1_4_3 y,
                                           Cfloat8_1_5_2 x2, Cfloat8_1_5_2 y2, 
                                           ActionValue#(Cfloat8_1_4_3) resultDiv, 
                                           ActionValue#(Cfloat8_1_4_3) resultMul,
                                           ActionValue#(Cfloat8_1_5_2) resultDiv2, 
                                           ActionValue#(Cfloat8_1_5_2) resultMul2);

    // Pipelined stages for division and multiplication
	Reg#(Cfloat8_1_4_3) stage1 = zero;
    Reg#(Cfloat8_1_4_3) stage2 = zero;
	Reg#(Cfloat8_1_4_3) stage3 = zero;

    Reg#(Cfloat8_1_5_2) stage1_2 = zero;
	Reg#(Cfloat8_1_5_2) stage2_2 = zero;
	Reg#(Cfloat8_1_5_2) stage3_2 = zero;

    // Function to convert biased exponent to actual exponent
    function Int getActualExponent(Cfloat8_1_4_3 cfloat);
        return cfloat.exponent - pBIAS;
    endfunction

    function Int getActualExponent2(Cfloat8_1_5_2 cfloat);
        return cfloat.exponent - pBIAS;
    endfunction

    // Pipeline stages for Cfloat8_1_4_3 division
    rule divStage1;
        stage1 <= x;
    endrule

    rule divStage2;
        Int actualExponentX = getActualExponent(stage1);
        Int actualExponentY = getActualExponent(y);
        stage2 <= {stage1.sign ^ y.sign, actualExponentX - actualExponentY + pBIAS, stage1.fraction / y.fraction};
    endrule

    rule divStage3;
        resultDiv <= stage2;
    endrule

    // Pipeline stages for Cfloat8_1_4_3 multiplication
    rule mulStage1;
        stage1 <= x;
    endrule

    rule mulStage2;
        Int actualExponentX = getActualExponent(stage1);
        Int actualExponentY = getActualExponent(y);
        stage2 <= {stage1.sign ^ y.sign, actualExponentX + actualExponentY - pBIAS, stage1.fraction * y.fraction};
    endrule

    rule mulStage3;
        resultMul <= stage2;
    endrule

    // Pipeline stages for Cfloat8_1_5_2 division
    rule divStage1_2;
        stage1_2 <= x2;
    endrule

    rule divStage2_2;
        Int actualExponentX2 = getActualExponent2(stage1_2);
        Int actualExponentY2 = getActualExponent2(y2);
        stage2_2 <= {stage1_2.sign ^ y2.sign, actualExponentX2 - actualExponentY2 + pBIAS, stage1_2.fraction / y2.fraction};
    endrule

    rule divStage3_2;
        resultDiv2 <= stage2_2;
    endrule

    // Pipeline stages for Cfloat8_1_5_2 multiplication
    rule mulStage1_2;
        stage1_2 <= x2;
    endrule

    rule mulStage2_2;
        Int actualExponentX2 = getActualExponent2(stage1_2);
        Int actualExponentY2 = getActualExponent2(y2);
        stage2_2 <= {stage1_2.sign ^ y2.sign, actualExponentX2 + actualExponentY2 - pBIAS, stage1_2.fraction * y2.fraction};
    endrule

    rule mulStage3_2;
        resultMul2 <= stage2_2;
    endrule

endmodule
