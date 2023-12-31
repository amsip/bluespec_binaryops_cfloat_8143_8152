/*
 * Generated by Bluespec Compiler, version 2021.12.1 (build fd501401)
 * 
 * On Sun Dec 10 05:29:29 IST 2023
 * 
 */
#include "bluesim_primitives.h"
#include "mkTb.h"


/* String declarations */
static std::string const __str_literal_14("\n================= Binary Ops Cfloat8_1_4_3 --List of elements ===",
					  66u);
static std::string const __str_literal_2("\n================= Binary Ops Cfloat8_1_4_3 --single element ===",
					 64u);
static std::string const __str_literal_22("\n================= Binary Ops Cfloat8_1_5_2 --List of elements ===",
					  66u);
static std::string const __str_literal_9("\n================= Binary Ops Cfloat8_1_5_2 --single element ===",
					 64u);
static std::string const __str_literal_4(" Element a = %b %b %b ", 22u);
static std::string const __str_literal_5(" Element b = %b %b %b ", 22u);
static std::string const __str_literal_11(" aa = %b %b %b ", 15u);
static std::string const __str_literal_12(" bb = %b %b %b ", 15u);
static std::string const __str_literal_19("-----------------  Binary Ops Cfloat8_1_4_3 Divide-List() Output ---",
					  68u);
static std::string const __str_literal_3("----------------- Binary Ops Cfloat8_1_4_3  Input ---",
					 53u);
static std::string const __str_literal_15("----------------- Binary Ops Cfloat8_1_4_3 -List() Input ---",
					  60u);
static std::string const __str_literal_21("----------------- Binary Ops Cfloat8_1_4_3 Multiply-List() Output ---",
					  69u);
static std::string const __str_literal_10("----------------- Binary Ops Cfloat8_1_5_2  Input ---",
					  53u);
static std::string const __str_literal_13("----------------- Binary Ops Cfloat8_1_5_2  Output ---",
					  54u);
static std::string const __str_literal_23("----------------- Binary Ops Cfloat8_1_5_2 -List() Input ---",
					  60u);
static std::string const __str_literal_26("----------------- Binary Ops Cfloat8_1_5_2 Divide-List() Output ---",
					  67u);
static std::string const __str_literal_27("----------------- Binary Ops Cfloat8_1_5_2 Multiply-List() Output ---",
					  69u);
static std::string const __str_literal_6("------------------ Binary Ops Cfloat8_1_4_3  Output ---",
					 55u);
static std::string const __str_literal_17("------------------------------------", 36u);
static std::string const __str_literal_28("================= End ===", 25u);
static std::string const __str_literal_1("================= Start ===", 27u);
static std::string const __str_literal_7("Calculation via method-Divide():: %b %b %b", 42u);
static std::string const __str_literal_8("Calculation via method-Multiply():: %b %b %b", 44u);
static std::string const __str_literal_20("Element %0d: sign=%b, exponent=%b, fraction=%b", 46u);
static std::string const __str_literal_16("Element a %0d: sign=%b, exponent=%b, fraction=%b", 48u);
static std::string const __str_literal_24("Element aa %0d: sign=%b, exponent=%b, fraction=%b", 49u);
static std::string const __str_literal_18("Element b %0d: sign=%b, exponent=%b, fraction=%b", 48u);
static std::string const __str_literal_25("Element bb %0d: sign=%b, exponent=%b, fraction=%b", 49u);


/* Constructor */
MOD_mkTb::MOD_mkTb(tSimStateHdl simHdl, char const *name, Module *parent)
  : Module(simHdl, name, parent),
    __clk_handle_0(BAD_CLOCK_HANDLE),
    INST_ifc(simHdl, "ifc", this),
    INST_ifc2(simHdl, "ifc2", this),
    PORT_RST_N((tUInt8)1u)
{
  symbol_count = 18u;
  symbols = new tSym[symbol_count];
  init_symbols_0();
}


/* Symbol init fns */

void MOD_mkTb::init_symbols_0()
{
  init_symbol(&symbols[0u], "ifc", SYM_MODULE, &INST_ifc);
  init_symbol(&symbols[1u], "ifc2", SYM_MODULE, &INST_ifc2);
  init_symbol(&symbols[2u], "RL_displayrule2", SYM_RULE);
  init_symbol(&symbols[3u], "RL_displayrule2a", SYM_RULE);
  init_symbol(&symbols[4u], "RL_displayrule2aa", SYM_RULE);
  init_symbol(&symbols[5u], "RL_displayrule2ab", SYM_RULE);
  init_symbol(&symbols[6u], "RL_displayrule3", SYM_RULE);
  init_symbol(&symbols[7u], "RL_displayrule3a", SYM_RULE);
  init_symbol(&symbols[8u], "RL_displayrule3aa", SYM_RULE);
  init_symbol(&symbols[9u], "RL_displayrule3ab", SYM_RULE);
  init_symbol(&symbols[10u], "RL_displayrule3b", SYM_RULE);
  init_symbol(&symbols[11u], "RL_displayrule3bc", SYM_RULE);
  init_symbol(&symbols[12u], "RL_displayrule3c", SYM_RULE);
  init_symbol(&symbols[13u], "RL_displayrule3cd", SYM_RULE);
  init_symbol(&symbols[14u], "RL_finishdis1", SYM_RULE);
  init_symbol(&symbols[15u], "RL_finishdis2", SYM_RULE);
  init_symbol(&symbols[16u], "RL_theUltimateAnswer", SYM_RULE);
  init_symbol(&symbols[17u], "RL_theUltimateAnswer2", SYM_RULE);
}


/* Rule actions */

void MOD_mkTb::RL_finishdis1()
{
  dollar_display(sim_hdl, this, "s", &__str_literal_1);
}

void MOD_mkTb::RL_theUltimateAnswer()
{
  tUInt8 DEF_res_m_sign__h380;
  tUInt8 DEF_res_d_sign__h362;
  tUInt8 DEF_res_m_fraction__h382;
  tUInt8 DEF_res_d_fraction__h364;
  tUInt8 DEF_res_m_exponent__h381;
  tUInt8 DEF_res_d_exponent__h363;
  tUInt8 DEF_ifc_bo_divide_86_221___d1;
  tUInt8 DEF_ifc_bo_multiply_86_221___d5;
  DEF_ifc_bo_multiply_86_221___d5 = INST_ifc.METH_bo_multiply((tUInt8)86u, (tUInt8)221u);
  DEF_ifc_bo_divide_86_221___d1 = INST_ifc.METH_bo_divide((tUInt8)86u, (tUInt8)221u);
  DEF_res_d_exponent__h363 = (tUInt8)((tUInt8)15u & (DEF_ifc_bo_divide_86_221___d1 >> 3u));
  DEF_res_m_exponent__h381 = (tUInt8)((tUInt8)15u & (DEF_ifc_bo_multiply_86_221___d5 >> 3u));
  DEF_res_d_fraction__h364 = (tUInt8)((tUInt8)7u & DEF_ifc_bo_divide_86_221___d1);
  DEF_res_m_fraction__h382 = (tUInt8)((tUInt8)7u & DEF_ifc_bo_multiply_86_221___d5);
  DEF_res_d_sign__h362 = (tUInt8)(DEF_ifc_bo_divide_86_221___d1 >> 7u);
  DEF_res_m_sign__h380 = (tUInt8)(DEF_ifc_bo_multiply_86_221___d5 >> 7u);
  dollar_display(sim_hdl, this, "s", &__str_literal_2);
  dollar_display(sim_hdl, this, "s", &__str_literal_3);
  dollar_display(sim_hdl, this, "s,1,4,3", &__str_literal_4, (tUInt8)0u, (tUInt8)10u, (tUInt8)6u);
  dollar_display(sim_hdl, this, "s,1,4,3", &__str_literal_5, (tUInt8)1u, (tUInt8)11u, (tUInt8)5u);
  dollar_display(sim_hdl, this, "s", &__str_literal_6);
  dollar_display(sim_hdl,
		 this,
		 "s,1,4,3",
		 &__str_literal_7,
		 DEF_res_d_sign__h362,
		 DEF_res_d_exponent__h363,
		 DEF_res_d_fraction__h364);
  dollar_display(sim_hdl,
		 this,
		 "s,1,4,3",
		 &__str_literal_8,
		 DEF_res_m_sign__h380,
		 DEF_res_m_exponent__h381,
		 DEF_res_m_fraction__h382);
}

void MOD_mkTb::RL_theUltimateAnswer2()
{
  tUInt8 DEF_res_dd_sign__h709;
  tUInt8 DEF_res_mm_sign__h727;
  tUInt8 DEF_res_dd_fraction__h711;
  tUInt8 DEF_res_mm_fraction__h729;
  tUInt8 DEF_res_dd_exponent__h710;
  tUInt8 DEF_res_mm_exponent__h728;
  tUInt8 DEF_ifc2_bo_divide_m_106_205___d9;
  tUInt8 DEF_ifc2_bo_multiply_m_106_205___d13;
  DEF_ifc2_bo_multiply_m_106_205___d13 = INST_ifc2.METH_bo_multiply_m((tUInt8)106u, (tUInt8)205u);
  DEF_ifc2_bo_divide_m_106_205___d9 = INST_ifc2.METH_bo_divide_m((tUInt8)106u, (tUInt8)205u);
  DEF_res_mm_exponent__h728 = (tUInt8)((tUInt8)31u & (DEF_ifc2_bo_multiply_m_106_205___d13 >> 2u));
  DEF_res_dd_exponent__h710 = (tUInt8)((tUInt8)31u & (DEF_ifc2_bo_divide_m_106_205___d9 >> 2u));
  DEF_res_mm_fraction__h729 = (tUInt8)((tUInt8)3u & DEF_ifc2_bo_multiply_m_106_205___d13);
  DEF_res_dd_fraction__h711 = (tUInt8)((tUInt8)3u & DEF_ifc2_bo_divide_m_106_205___d9);
  DEF_res_mm_sign__h727 = (tUInt8)(DEF_ifc2_bo_multiply_m_106_205___d13 >> 7u);
  DEF_res_dd_sign__h709 = (tUInt8)(DEF_ifc2_bo_divide_m_106_205___d9 >> 7u);
  dollar_display(sim_hdl, this, "s", &__str_literal_9);
  dollar_display(sim_hdl, this, "s", &__str_literal_10);
  dollar_display(sim_hdl, this, "s,1,5,2", &__str_literal_11, (tUInt8)0u, (tUInt8)26u, (tUInt8)2u);
  dollar_display(sim_hdl, this, "s,1,5,2", &__str_literal_12, (tUInt8)1u, (tUInt8)19u, (tUInt8)1u);
  dollar_display(sim_hdl, this, "s", &__str_literal_13);
  dollar_display(sim_hdl,
		 this,
		 "s,1,5,2",
		 &__str_literal_7,
		 DEF_res_dd_sign__h709,
		 DEF_res_dd_exponent__h710,
		 DEF_res_dd_fraction__h711);
  dollar_display(sim_hdl,
		 this,
		 "s,1,5,2",
		 &__str_literal_8,
		 DEF_res_mm_sign__h727,
		 DEF_res_mm_exponent__h728,
		 DEF_res_mm_fraction__h729);
}

void MOD_mkTb::RL_displayrule2()
{
  dollar_display(sim_hdl, this, "s", &__str_literal_14);
  dollar_display(sim_hdl, this, "s", &__str_literal_15);
}

void MOD_mkTb::RL_displayrule3()
{
  DEF_signed_4___d21 = 4u;
  DEF_signed_3___d20 = 3u;
  DEF_signed_2___d19 = 2u;
  DEF_signed_1___d18 = 1u;
  DEF_signed_0___d17 = 0u;
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_16,
		 DEF_signed_0___d17,
		 (tUInt8)0u,
		 (tUInt8)1u,
		 (tUInt8)1u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_16,
		 DEF_signed_1___d18,
		 (tUInt8)1u,
		 (tUInt8)6u,
		 (tUInt8)2u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_16,
		 DEF_signed_2___d19,
		 (tUInt8)0u,
		 (tUInt8)7u,
		 (tUInt8)3u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_16,
		 DEF_signed_3___d20,
		 (tUInt8)1u,
		 (tUInt8)4u,
		 (tUInt8)4u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_16,
		 DEF_signed_4___d21,
		 (tUInt8)0u,
		 (tUInt8)5u,
		 (tUInt8)5u);
}

void MOD_mkTb::RL_displayrule2a()
{
  dollar_display(sim_hdl, this, "s", &__str_literal_17);
}

void MOD_mkTb::RL_displayrule3a()
{
  DEF_signed_4___d21 = 4u;
  DEF_signed_3___d20 = 3u;
  DEF_signed_2___d19 = 2u;
  DEF_signed_1___d18 = 1u;
  DEF_signed_0___d17 = 0u;
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_18,
		 DEF_signed_0___d17,
		 (tUInt8)0u,
		 (tUInt8)1u,
		 (tUInt8)1u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_18,
		 DEF_signed_1___d18,
		 (tUInt8)1u,
		 (tUInt8)2u,
		 (tUInt8)2u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_18,
		 DEF_signed_2___d19,
		 (tUInt8)0u,
		 (tUInt8)3u,
		 (tUInt8)3u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_18,
		 DEF_signed_3___d20,
		 (tUInt8)1u,
		 (tUInt8)4u,
		 (tUInt8)4u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_18,
		 DEF_signed_4___d21,
		 (tUInt8)1u,
		 (tUInt8)5u,
		 (tUInt8)5u);
}

void MOD_mkTb::RL_displayrule3b()
{
  DEF_signed_4___d21 = 4u;
  DEF_signed_3___d20 = 3u;
  DEF_signed_2___d19 = 2u;
  DEF_signed_1___d18 = 1u;
  dollar_display(sim_hdl, this, "s", &__str_literal_19);
  DEF_signed_0___d17 = 0u;
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_20,
		 DEF_signed_0___d17,
		 (tUInt8)0u,
		 (tUInt8)6u,
		 (tUInt8)1u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_20,
		 DEF_signed_1___d18,
		 (tUInt8)0u,
		 (tUInt8)10u,
		 (tUInt8)1u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_20,
		 DEF_signed_2___d19,
		 (tUInt8)0u,
		 (tUInt8)10u,
		 (tUInt8)1u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_20,
		 DEF_signed_3___d20,
		 (tUInt8)0u,
		 (tUInt8)6u,
		 (tUInt8)1u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_20,
		 DEF_signed_4___d21,
		 (tUInt8)1u,
		 (tUInt8)6u,
		 (tUInt8)1u);
}

void MOD_mkTb::RL_displayrule3c()
{
  DEF_signed_4___d21 = 4u;
  DEF_signed_3___d20 = 3u;
  DEF_signed_2___d19 = 2u;
  DEF_signed_1___d18 = 1u;
  dollar_display(sim_hdl, this, "s", &__str_literal_21);
  DEF_signed_0___d17 = 0u;
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_20,
		 DEF_signed_0___d17,
		 (tUInt8)0u,
		 (tUInt8)12u,
		 (tUInt8)1u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_20,
		 DEF_signed_1___d18,
		 (tUInt8)0u,
		 (tUInt8)2u,
		 (tUInt8)4u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_20,
		 DEF_signed_2___d19,
		 (tUInt8)0u,
		 (tUInt8)4u,
		 (tUInt8)1u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_20,
		 DEF_signed_3___d20,
		 (tUInt8)0u,
		 (tUInt8)2u,
		 (tUInt8)0u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,4,3",
		 &__str_literal_20,
		 DEF_signed_4___d21,
		 (tUInt8)1u,
		 (tUInt8)4u,
		 (tUInt8)1u);
}

void MOD_mkTb::RL_displayrule2aa()
{
  dollar_display(sim_hdl, this, "s", &__str_literal_22);
  dollar_display(sim_hdl, this, "s", &__str_literal_23);
}

void MOD_mkTb::RL_displayrule3aa()
{
  DEF_signed_4___d21 = 4u;
  DEF_signed_3___d20 = 3u;
  DEF_signed_2___d19 = 2u;
  DEF_signed_1___d18 = 1u;
  DEF_signed_0___d17 = 0u;
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_24,
		 DEF_signed_0___d17,
		 (tUInt8)0u,
		 (tUInt8)17u,
		 (tUInt8)1u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_24,
		 DEF_signed_1___d18,
		 (tUInt8)1u,
		 (tUInt8)22u,
		 (tUInt8)2u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_24,
		 DEF_signed_2___d19,
		 (tUInt8)0u,
		 (tUInt8)23u,
		 (tUInt8)3u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_24,
		 DEF_signed_3___d20,
		 (tUInt8)1u,
		 (tUInt8)20u,
		 (tUInt8)2u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_24,
		 DEF_signed_4___d21,
		 (tUInt8)0u,
		 (tUInt8)21u,
		 (tUInt8)1u);
}

void MOD_mkTb::RL_displayrule2ab()
{
  dollar_display(sim_hdl, this, "s", &__str_literal_17);
}

void MOD_mkTb::RL_displayrule3ab()
{
  DEF_signed_4___d21 = 4u;
  DEF_signed_3___d20 = 3u;
  DEF_signed_2___d19 = 2u;
  DEF_signed_1___d18 = 1u;
  DEF_signed_0___d17 = 0u;
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_25,
		 DEF_signed_0___d17,
		 (tUInt8)0u,
		 (tUInt8)17u,
		 (tUInt8)1u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_25,
		 DEF_signed_1___d18,
		 (tUInt8)1u,
		 (tUInt8)18u,
		 (tUInt8)2u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_25,
		 DEF_signed_2___d19,
		 (tUInt8)0u,
		 (tUInt8)19u,
		 (tUInt8)3u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_25,
		 DEF_signed_3___d20,
		 (tUInt8)1u,
		 (tUInt8)20u,
		 (tUInt8)2u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_25,
		 DEF_signed_4___d21,
		 (tUInt8)1u,
		 (tUInt8)21u,
		 (tUInt8)1u);
}

void MOD_mkTb::RL_displayrule3bc()
{
  DEF_signed_4___d21 = 4u;
  DEF_signed_3___d20 = 3u;
  DEF_signed_2___d19 = 2u;
  DEF_signed_1___d18 = 1u;
  dollar_display(sim_hdl, this, "s", &__str_literal_26);
  DEF_signed_0___d17 = 0u;
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_20,
		 DEF_signed_0___d17,
		 (tUInt8)0u,
		 (tUInt8)22u,
		 (tUInt8)1u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_20,
		 DEF_signed_1___d18,
		 (tUInt8)0u,
		 (tUInt8)26u,
		 (tUInt8)1u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_20,
		 DEF_signed_2___d19,
		 (tUInt8)0u,
		 (tUInt8)26u,
		 (tUInt8)1u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_20,
		 DEF_signed_3___d20,
		 (tUInt8)0u,
		 (tUInt8)22u,
		 (tUInt8)1u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_20,
		 DEF_signed_4___d21,
		 (tUInt8)1u,
		 (tUInt8)22u,
		 (tUInt8)1u);
}

void MOD_mkTb::RL_displayrule3cd()
{
  DEF_signed_4___d21 = 4u;
  DEF_signed_3___d20 = 3u;
  DEF_signed_2___d19 = 2u;
  DEF_signed_1___d18 = 1u;
  dollar_display(sim_hdl, this, "s", &__str_literal_27);
  DEF_signed_0___d17 = 0u;
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_20,
		 DEF_signed_0___d17,
		 (tUInt8)0u,
		 (tUInt8)12u,
		 (tUInt8)1u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_20,
		 DEF_signed_1___d18,
		 (tUInt8)0u,
		 (tUInt8)18u,
		 (tUInt8)0u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_20,
		 DEF_signed_2___d19,
		 (tUInt8)0u,
		 (tUInt8)20u,
		 (tUInt8)1u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_20,
		 DEF_signed_3___d20,
		 (tUInt8)0u,
		 (tUInt8)18u,
		 (tUInt8)0u);
  dollar_display(sim_hdl,
		 this,
		 "s,-32,1,5,2",
		 &__str_literal_20,
		 DEF_signed_4___d21,
		 (tUInt8)1u,
		 (tUInt8)20u,
		 (tUInt8)1u);
}

void MOD_mkTb::RL_finishdis2()
{
  dollar_display(sim_hdl, this, "s", &__str_literal_28);
  dollar_finish(sim_hdl, "32", 0u);
}


/* Methods */


/* Reset routines */

void MOD_mkTb::reset_RST_N(tUInt8 ARG_rst_in)
{
  PORT_RST_N = ARG_rst_in;
  INST_ifc2.reset_RST_N(ARG_rst_in);
  INST_ifc.reset_RST_N(ARG_rst_in);
}


/* Static handles to reset routines */


/* Functions for the parent module to register its reset fns */


/* Functions to set the elaborated clock id */

void MOD_mkTb::set_clk_0(char const *s)
{
  __clk_handle_0 = bk_get_or_define_clock(sim_hdl, s);
}


/* State dumping routine */
void MOD_mkTb::dump_state(unsigned int indent)
{
}


/* VCD dumping routines */

unsigned int MOD_mkTb::dump_VCD_defs(unsigned int levels)
{
  vcd_write_scope_start(sim_hdl, inst_name);
  vcd_num = vcd_reserve_ids(sim_hdl, 6u);
  unsigned int num = vcd_num;
  for (unsigned int clk = 0u; clk < bk_num_clocks(sim_hdl); ++clk)
    vcd_add_clock_def(sim_hdl, this, bk_clock_name(sim_hdl, clk), bk_clock_vcd_num(sim_hdl, clk));
  vcd_write_def(sim_hdl, bk_clock_vcd_num(sim_hdl, __clk_handle_0), "CLK", 1u);
  vcd_write_def(sim_hdl, num++, "RST_N", 1u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "signed_0___d17", 32u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "signed_1___d18", 32u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "signed_2___d19", 32u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "signed_3___d20", 32u);
  vcd_set_clock(sim_hdl, num, __clk_handle_0);
  vcd_write_def(sim_hdl, num++, "signed_4___d21", 32u);
  if (levels != 1u)
  {
    unsigned int l = levels == 0u ? 0u : levels - 1u;
    num = INST_ifc.dump_VCD_defs(l);
    num = INST_ifc2.dump_VCD_defs(l);
  }
  vcd_write_scope_end(sim_hdl);
  return num;
}

void MOD_mkTb::dump_VCD(tVCDDumpType dt, unsigned int levels, MOD_mkTb &backing)
{
  vcd_defs(dt, backing);
  if (levels != 1u)
    vcd_submodules(dt, levels - 1u, backing);
}

void MOD_mkTb::vcd_defs(tVCDDumpType dt, MOD_mkTb &backing)
{
  unsigned int num = vcd_num;
  if (dt == VCD_DUMP_XS)
  {
    vcd_write_x(sim_hdl, num++, 1u);
    vcd_write_x(sim_hdl, num++, 32u);
    vcd_write_x(sim_hdl, num++, 32u);
    vcd_write_x(sim_hdl, num++, 32u);
    vcd_write_x(sim_hdl, num++, 32u);
    vcd_write_x(sim_hdl, num++, 32u);
  }
  else
    if (dt == VCD_DUMP_CHANGES)
    {
      if ((backing.PORT_RST_N) != PORT_RST_N)
      {
	vcd_write_val(sim_hdl, num, PORT_RST_N, 1u);
	backing.PORT_RST_N = PORT_RST_N;
      }
      ++num;
      if ((backing.DEF_signed_0___d17) != DEF_signed_0___d17)
      {
	vcd_write_val(sim_hdl, num, DEF_signed_0___d17, 32u);
	backing.DEF_signed_0___d17 = DEF_signed_0___d17;
      }
      ++num;
      if ((backing.DEF_signed_1___d18) != DEF_signed_1___d18)
      {
	vcd_write_val(sim_hdl, num, DEF_signed_1___d18, 32u);
	backing.DEF_signed_1___d18 = DEF_signed_1___d18;
      }
      ++num;
      if ((backing.DEF_signed_2___d19) != DEF_signed_2___d19)
      {
	vcd_write_val(sim_hdl, num, DEF_signed_2___d19, 32u);
	backing.DEF_signed_2___d19 = DEF_signed_2___d19;
      }
      ++num;
      if ((backing.DEF_signed_3___d20) != DEF_signed_3___d20)
      {
	vcd_write_val(sim_hdl, num, DEF_signed_3___d20, 32u);
	backing.DEF_signed_3___d20 = DEF_signed_3___d20;
      }
      ++num;
      if ((backing.DEF_signed_4___d21) != DEF_signed_4___d21)
      {
	vcd_write_val(sim_hdl, num, DEF_signed_4___d21, 32u);
	backing.DEF_signed_4___d21 = DEF_signed_4___d21;
      }
      ++num;
    }
    else
    {
      vcd_write_val(sim_hdl, num++, PORT_RST_N, 1u);
      backing.PORT_RST_N = PORT_RST_N;
      vcd_write_val(sim_hdl, num++, DEF_signed_0___d17, 32u);
      backing.DEF_signed_0___d17 = DEF_signed_0___d17;
      vcd_write_val(sim_hdl, num++, DEF_signed_1___d18, 32u);
      backing.DEF_signed_1___d18 = DEF_signed_1___d18;
      vcd_write_val(sim_hdl, num++, DEF_signed_2___d19, 32u);
      backing.DEF_signed_2___d19 = DEF_signed_2___d19;
      vcd_write_val(sim_hdl, num++, DEF_signed_3___d20, 32u);
      backing.DEF_signed_3___d20 = DEF_signed_3___d20;
      vcd_write_val(sim_hdl, num++, DEF_signed_4___d21, 32u);
      backing.DEF_signed_4___d21 = DEF_signed_4___d21;
    }
}

void MOD_mkTb::vcd_submodules(tVCDDumpType dt, unsigned int levels, MOD_mkTb &backing)
{
  INST_ifc.dump_VCD(dt, levels, backing.INST_ifc);
  INST_ifc2.dump_VCD(dt, levels, backing.INST_ifc2);
}
