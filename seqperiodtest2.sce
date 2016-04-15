//Author Rinu Sebastian
//Version: scilab-5.3.3
//code snippets to test error handling of function: seqperiod()
funcprot(0);
exec('seqperiod.sci',-1);

//---------------------------------------------------------------------
//Test2 - testing exception handling for incorrect number of arguments
//1.with no input arguments

try 
	seqperiod();
catch
	[err_msg,err_num] = lasterror(%t)
end

// err_num  = 
//    10000.  
// err_msg  = 
// Incorrect number of input arguments.  

// Result: exception handled but err_num incorrect. 
//Correct err_number: 39

//=================================
//2. With more than 1 input

try 
	seqperiod(1,[6,7,8]);
catch
	[err_msg,err_num] = lasterror(%t)
end

//err_num  =
//    58.  
// err_msg  =
//Wrong number of input arguments:
// Result: exception handled but err_num incorrect. 
//Correct err_number: 77
//========================================

//3. More than 2 output

try
	[S12,num,a]=seqperiod([1,2,3;1,4,5;1,2,8]);
catch
	[err_msg,err_num] = lasterror(%t)
end
	
//OUTPUT
//  Warning: recursion problem..., cleared.
// Result: FAIL; cannot handle

