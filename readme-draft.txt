Readme


Compile - Commands:
===================
Execute in the below order.

$ bsc -u -sim the_CustomDataTypes.bsv
$ bsc -u -sim the_CustomDataTypes2.bsv
$ bsc -u -sim BOCfloat8_1_4_3.bsv
$ bsc -u -sim BOCfloat8_1_5_2.bsv
$ bsc -u -sim Tb_BOCfloat8_1_4_3.bsv
$ bsc -e mkTb -sim -o ./mkTb_sim
$ ./mkTb_sim

Files Descriptions:
====================

1. File Name: the_CustomDataTypes.bsv
--------------------------------------
1. Custom Data Type declaration for Cfloat8_1_4_3, total of 8 bits,
2. 1 = bit for sign
3. 4 = bits for exponent
4. 3 = bits for fraction

2. File Name: the_CustomDataTypes2.bsv
----------------------------------------
1. Custom Data Type declaration for Cfloat8_1_5_2, total of 8 bits,
2. 1 = bit for sign
3. 5 = bits for exponent
4. 2 = bits for fraction

3.File Name: BOCfloat8_1_4_3.bsv
---------------------------------
1. Interface module to perform divide, multiply binary ops for Cfloat8_1_4_3.

4.File Name: BOCfloat8_1_5_2.bsv
---------------------------------
1. Interface module to perform divide, multiply binary ops for Cfloat8_1_5_2.

5.File Name: Tb_BOCfloat8_1_4_3.bsv
------------------------------------
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

6. File Name: ./mkTb_sim
----------------------
1. Final executable file


Below compilation Errors occured during test app for various modules:
=====================================================================

File Name: Tb_config_bias.bsv

$ bsc -u -sim Tb_config_bias.bsv
checking package dependencies
Error: "Tb_config_bias.bsv", line 7, column 36: (P0005)
  Unexpected `;'; expected module interface or dynamic (port-like) args


