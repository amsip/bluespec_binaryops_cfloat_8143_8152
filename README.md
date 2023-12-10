# bluespec_binaryops_cfloat_8143_8152
bluespec_binaryops_cfloat_8143_8152
Readme
**Binary Operations Cfloat8_1_4_3, Cfloat8_1_5_2**

Introduction:
=============
This readme describes Binary Operations Multiply, Divide for Cfloat8_1_4_3, Cfloat8_1_5_2.
Step-by-step approach followed, 
1) Started performing single element values to perform divide, multiply operations.
2) Followed the List of elements to perform divide, multiply operations.
3) The initial design thought of using separate interface modules for Cfloat8_1_4_3 & Cfloat8_1_5_2
4) BIAS values adjusted before and after calculations
5) Stage wise: faced challenges in implementing the stage and tried in separate module but it took more time to resolve compilation errors.
6) At present the input valued n=5 is assigned as hardcoded, during development tried to read the input values from a file.
7) Faced challenges to resolve compilation errors and took more time.
8) File Operations: Able to read data from file assigning the read values to Cfloat8_1_4_3 or Cfloat8_1_5_2 need some more time to resolve compile errors. The char read from the file is in decial and that is converted to 0 or 1 as per ASCII table value. (WIP-Tb_BOCfloat8_1_4_3_afile.bsv ) 

Pre-requisites:
===============
1. Ubuntu Details:
Distributor ID:	Ubuntu
Description:	Ubuntu 22.04.3 LTS
Release:	22.04
Codename:	jammy

3. Bluespec
Bluespec Compiler, version 2021.12.1 (build fd501401)
This is free software; for source code and copying conditions, see
https://github.com/B-Lang-org/bsc


Compile - Commands:
===================
Execute in the below order.

1. $ bsc -u -sim the_CustomDataTypes.bsv
2. $ bsc -u -sim the_CustomDataTypes2.bsv
3. $ bsc -u -sim BOCfloat8_1_4_3.bsv
4. $ bsc -u -sim BOCfloat8_1_5_2.bsv
5. $ bsc -u -sim Tb_BOCfloat8_1_4_3.bsv
6. $ bsc -e mkTb -sim -o ./mkTb_sim
7. $ ./mkTb_sim

Files Descriptions:
====================

**1. File Name: the_CustomDataTypes.bsv**
------------------------------------------
1. Custom Data Type declaration for Cfloat8_1_4_3, total of 8 bits,
- 1 = bit for sign
- 4 = bits for exponent
- 3 = bits for fraction

**2. File Name: the_CustomDataTypes2.bsv**
------------------------------------------
1. Custom Data Type declaration for Cfloat8_1_5_2, total of 8 bits,
- 1 = bit for sign
- 5 = bits for exponent
- 2 = bits for fraction

**3.File Name: BOCfloat8_1_4_3.bsv**
------------------------------------
1. Interface module to perform divide, multiply binary ops for Cfloat8_1_4_3.

**4.File Name: BOCfloat8_1_5_2.bsv**
-------------------------------------
1. Interface module to perform divide, multiply binary ops for Cfloat8_1_5_2.

**5.File Name: Tb_BOCfloat8_1_4_3.bsv**
---------------------------------------
1. Main file to perform the below binar ops.
2. step-by-step approach followed, started performing single element values to perform divide, multiply operations.
3. Then, followed the List of elements to perform divide, multiply operations.
4. The initial design thought of using separate interface modules for Cfloat8_1_4_3 & Cfloat8_1_5_2
5. BIAS values adjusted before and after calculations
6. Stage wise: faced challenges in implementing the stage and tried in separate module but it took more time to resolve compilation errors.
7. At present the input valued n=5 is assigned as hardcoded, during development tried to read the input values from a file. faced challenges to resolve compilation errors and took more time. only fgetc method shows in the document but when tried to read that value it returns decimal 49 and it take more time to understand this value or to interpret this value. 

Section-1: Binary Operatons Cfloat8_1_4_3
-----------------------------------------
1. Below Label Names shows start and end of Section-1.
	Label Name: Binary Operatons Cfloat8_1_4_3 Starts 
	Label Name: Binary Operatons Cfloat8_1_4_3 Ends 
2. Before start using List tried with using individual variables a, b
3. Adjusted to BIAS before and after exponent calculation
4. Verification: variables c, d used for local verification for divide, multiplication ops
5. Verification via interface methods: res_d, res_m variables calculated via interface methods for divide, multiplication

Section-2: Binary Operatons Cfloat8_1_5_2
------------------------------------------
1. Below Label Names shows start and end of Section-2.
	Label Name: Binary Operatons Cfloat8_1_5_2 Starts 
	Label Name: Binary Operatons Cfloat8_1_5_2 Ends 
2. Before start using List tried with using individual variables aa, bb
3. Adjusted to BIAS before and after exponent calculation
4. Verification: variables cc, dd used for local verification for divide, multiplication ops
5. Verification via interface methods: res_dd, res_mm variables calculated via interface methods for divide, multiplication

Section-3: Binary Operatons Cfloat8_1_4_3 -- List of values
------------------------------------------------------------
1. Below Label Names shows start and end of Section-3.
	Label Name: Binary Operatons Cfloat8_1_4_3 - List of Values   Starts
	Label Name: Binary Operatons Cfloat8_1_4_3 - List of Values   Ends 
2. Assigned list of values(n = 5) to below variables, displayed for verification
	Cfloat8_1_4_3 a_list[5]; 
	Cfloat8_1_4_3 b_list[5]; 
3. Verification: List of values performed for binary operations divide, multiplication, displayed for verification
4. Adjusted to BIAS before and after exponent calculation

Section-4: Binary Operatons Cfloat8_1_5_2 -- List of values
------------------------------------------------------------
1. Below Label Names shows start and end of Section-4.
	Label Name: Binary Operatons Cfloat8_1_5_2 - List of Values   Starts
	Label Name: Binary Operatons Cfloat8_1_5_2 - List of Values   Ends 
2. Assigned list of values(n = 5) to below variables, displayed for verification
	Cfloat8_1_4_3 aa_list[5]; 
	Cfloat8_1_4_3 bb_list[5]; 
3. Verification: List of values performed for binary operations divide, multiplication, displayed for verification
4. Adjusted to BIAS before and after exponent calculation

**6. File Name: ./mkTb_sim**
-----------------------------
1. Final executable file

**Tb_BOCfloat8_1_4_3_afile.bsv**
--------------------------------
1. This is WIP code section to read data from file. At present able to read from file assigning values to Cfloat8_1_4_3 is taking time as to resolve the compile error.


Note: The above mentioned files are used. There are many other .bsv & its related files kept in the project folder and those were created,used to resolve compilation errors & to test some specific scenario or code sections.

=======================================================================================================================================

Output:
---------
![console output-1] (https://github.com/amsip/bluespec_binaryops_cfloat_8143_8152/blob/master/output-1.png)
![console output-2] (https://github.com/amsip/bluespec_binaryops_cfloat_8143_8152/blob/master/output-2.png)

$ ./mkTb_sim
================= Start ===

================= Binary Ops Cfloat8_1_4_3 --single element ===
----------------- Binary Ops Cfloat8_1_4_3  Input ---
 Element a = 0 1010 110 
 Element b = 1 1011 101 
------------------ Binary Ops Cfloat8_1_4_3  Output ---
Calculation via method-Divide():: 1 1111 001
Calculation via method-Multiply():: 1 0101 110

================= Binary Ops Cfloat8_1_5_2 --single element ===
----------------- Binary Ops Cfloat8_1_5_2  Input ---
 aa = 0 11010 10 
 bb = 1 10011 01 
----------------- Binary Ops Cfloat8_1_5_2  Output ---
Calculation via method-Divide():: 1 00111 10
Calculation via method-Multiply():: 1 01101 10

================= Binary Ops Cfloat8_1_4_3 --List of elements ===
----------------- Binary Ops Cfloat8_1_4_3 -List() Input ---
Element a 0: sign=0, exponent=0001, fraction=001
Element a 1: sign=1, exponent=0110, fraction=010
Element a 2: sign=0, exponent=0111, fraction=011
Element a 3: sign=1, exponent=0100, fraction=100
Element a 4: sign=0, exponent=0101, fraction=101
------------------------------------
Element b 0: sign=0, exponent=0001, fraction=001
Element b 1: sign=1, exponent=0010, fraction=010
Element b 2: sign=0, exponent=0011, fraction=011
Element b 3: sign=1, exponent=0100, fraction=100
Element b 4: sign=1, exponent=0101, fraction=101
-----------------  Binary Ops Cfloat8_1_4_3 Divide-List() Output ---
Element 0: sign=0, exponent=0110, fraction=001
Element 1: sign=0, exponent=1010, fraction=001
Element 2: sign=0, exponent=1010, fraction=001
Element 3: sign=0, exponent=0110, fraction=001
Element 4: sign=1, exponent=0110, fraction=001
----------------- Binary Ops Cfloat8_1_4_3 Multiply-List() Output ---
Element 0: sign=0, exponent=1100, fraction=001
Element 1: sign=0, exponent=0010, fraction=100
Element 2: sign=0, exponent=0100, fraction=001
Element 3: sign=0, exponent=0010, fraction=000
Element 4: sign=1, exponent=0100, fraction=001

================= Binary Ops Cfloat8_1_5_2 --List of elements ===
----------------- Binary Ops Cfloat8_1_5_2 -List() Input ---
Element aa 0: sign=0, exponent=10001, fraction=01
Element aa 1: sign=1, exponent=10110, fraction=10
Element aa 2: sign=0, exponent=10111, fraction=11
Element aa 3: sign=1, exponent=10100, fraction=10
Element aa 4: sign=0, exponent=10101, fraction=01
------------------------------------
Element bb 0: sign=0, exponent=10001, fraction=01
Element bb 1: sign=1, exponent=10010, fraction=10
Element bb 2: sign=0, exponent=10011, fraction=11
Element bb 3: sign=1, exponent=10100, fraction=10
Element bb 4: sign=1, exponent=10101, fraction=01
----------------- Binary Ops Cfloat8_1_5_2 Divide-List() Output ---
Element 0: sign=0, exponent=10110, fraction=01
Element 1: sign=0, exponent=11010, fraction=01
Element 2: sign=0, exponent=11010, fraction=01
Element 3: sign=0, exponent=10110, fraction=01
Element 4: sign=1, exponent=10110, fraction=01
----------------- Binary Ops Cfloat8_1_5_2 Multiply-List() Output ---
Element 0: sign=0, exponent=01100, fraction=01
Element 1: sign=0, exponent=10010, fraction=00
Element 2: sign=0, exponent=10100, fraction=01
Element 3: sign=0, exponent=10010, fraction=00
Element 4: sign=1, exponent=10100, fraction=01
================= End ===

=======================================================================================================================================

References:
-------------
online reference, user guide from the bsc installed folder.


Below compilation Errors occured during test app for various modules:
=====================================================================

File Name: Tb_config_bias.bsv

$ bsc -u -sim Tb_config_bias.bsv
checking package dependencies
Error: "Tb_config_bias.bsv", line 7, column 36: (P0005)
  Unexpected `;'; expected module interface or dynamic (port-like) args


File Name: Tb_BOCfloat8_1_4_3_afile.bsv

$ bsc -u -sim Tb_BOCfloat8_1_4_3_afile.bsv
checking package dependencies
compiling Tb_BOCfloat8_1_4_3_afile.bsv
code generation for mkTb starts
Warning: "Prelude.bs", line 974, column 9: (G0024)
  The function unfolding steps interval has been exceeded when unfolding
  `Prelude.Bits~Prelude.Bit~k~k'. The current number of steps is 100000. Next
  warning at 200000 steps. Elaboration terminates at 1000000 steps.
  During elaboration of the body of rule `fileopen' at
  "Tb_BOCfloat8_1_4_3_afile.bsv", line 45, column 14.
  During elaboration of `mkTb' at "Tb_BOCfloat8_1_4_3_afile.bsv", line 14,
  column 16.
Warning: "Prelude.bs", line 974, column 9: (G0024)
  The function unfolding steps interval has been exceeded when unfolding
  `Prelude.Bits~Prelude.Bit~k~k'. The current number of steps is 200000. Next
  warning at 300000 steps. Elaboration terminates at 1000000 steps.
  During elaboration of the body of rule `fileopen' at
  "Tb_BOCfloat8_1_4_3_afile.bsv", line 45, column 14.
  During elaboration of `mkTb' at "Tb_BOCfloat8_1_4_3_afile.bsv", line 14,
  column 16.
Warning: "Prelude.bs", line 974, column 9: (G0024)
  The function unfolding steps interval has been exceeded when unfolding
  `Prelude.Bits~Prelude.Bit~k~k'. The current number of steps is 300000. Next
  warning at 400000 steps. Elaboration terminates at 1000000 steps.
  During elaboration of the body of rule `fileopen' at
  "Tb_BOCfloat8_1_4_3_afile.bsv", line 45, column 14.
  During elaboration of `mkTb' at "Tb_BOCfloat8_1_4_3_afile.bsv", line 14,
  column 16.
Warning: "Prelude.bs", line 974, column 9: (G0024)
  The function unfolding steps interval has been exceeded when unfolding
  `Prelude.Bits~Prelude.Bit~k~k'. The current number of steps is 400000. Next
  warning at 500000 steps. Elaboration terminates at 1000000 steps.
  During elaboration of the body of rule `fileopen' at
  "Tb_BOCfloat8_1_4_3_afile.bsv", line 45, column 14.
  During elaboration of `mkTb' at "Tb_BOCfloat8_1_4_3_afile.bsv", line 14,
  column 16.
Warning: "Prelude.bs", line 974, column 9: (G0024)
  The function unfolding steps interval has been exceeded when unfolding
  `Prelude.Bits~Prelude.Bit~k~k'. The current number of steps is 500000. Next
  warning at 600000 steps. Elaboration terminates at 1000000 steps.
  During elaboration of the body of rule `fileopen' at
  "Tb_BOCfloat8_1_4_3_afile.bsv", line 45, column 14.
  During elaboration of `mkTb' at "Tb_BOCfloat8_1_4_3_afile.bsv", line 14,
  column 16.
Warning: "Prelude.bs", line 974, column 9: (G0024)
  The function unfolding steps interval has been exceeded when unfolding
  `Prelude.Bits~Prelude.Bit~k~k'. The current number of steps is 600000. Next
  warning at 700000 steps. Elaboration terminates at 1000000 steps.
  During elaboration of the body of rule `fileopen' at
  "Tb_BOCfloat8_1_4_3_afile.bsv", line 45, column 14.
  During elaboration of `mkTb' at "Tb_BOCfloat8_1_4_3_afile.bsv", line 14,
  column 16.
Warning: "Prelude.bs", line 974, column 9: (G0024)
  The function unfolding steps interval has been exceeded when unfolding
  `Prelude.Bits~Prelude.Bit~k~k'. The current number of steps is 700000. Next
  warning at 800000 steps. Elaboration terminates at 1000000 steps.
  During elaboration of the body of rule `fileopen' at
  "Tb_BOCfloat8_1_4_3_afile.bsv", line 45, column 14.
  During elaboration of `mkTb' at "Tb_BOCfloat8_1_4_3_afile.bsv", line 14,
  column 16.
Warning: "Prelude.bs", line 974, column 9: (G0024)
  The function unfolding steps interval has been exceeded when unfolding
  `Prelude.Bits~Prelude.Bit~k~k'. The current number of steps is 800000. Next
  warning at 900000 steps. Elaboration terminates at 1000000 steps.
  During elaboration of the body of rule `fileopen' at
  "Tb_BOCfloat8_1_4_3_afile.bsv", line 45, column 14.
  During elaboration of `mkTb' at "Tb_BOCfloat8_1_4_3_afile.bsv", line 14,
  column 16.
Warning: "Prelude.bs", line 974, column 9: (G0024)
  The function unfolding steps interval has been exceeded when unfolding
  `Prelude.Bits~Prelude.Bit~k~k'. The current number of steps is 900000. Next
  warning at 1000000 steps. Elaboration terminates at 1000000 steps.
  During elaboration of the body of rule `fileopen' at
  "Tb_BOCfloat8_1_4_3_afile.bsv", line 45, column 14.
  During elaboration of `mkTb' at "Tb_BOCfloat8_1_4_3_afile.bsv", line 14,
  column 16.
Error: "Prelude.bs", line 974, column 9: (G0024)
  The maximum number of function unfolding steps has been exceeded when
  unfolding `Prelude.Bits~Prelude.Bit~k~k'. You can use the flags "-steps N",
  "-steps-warn-interval N", and "-steps-max-intervals N" to set the maximum
  number of steps. The current maximum is 1000000.
  During elaboration of the body of rule `fileopen' at
  "Tb_BOCfloat8_1_4_3_afile.bsv", line 45, column 14.
  During elaboration of `mkTb' at "Tb_BOCfloat8_1_4_3_afile.bsv", line 14,
  column 16.
