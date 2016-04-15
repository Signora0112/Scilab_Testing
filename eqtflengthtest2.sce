//Author Rinu Sebastian
//Version: scilab-5.3.3
//code snippets to test exception handling capabilityfunction: eqtflength()
funcprot(0);
exec('eqtflength.sci',-1);

//============================
//Testing with no arguments:

try 
	eqtflength();
catch 
	[error_msg,error_num] = lasterror(%t);
end
disp(error_num);
disp(error_msg);
 //10000.  
//Incorrect number of input arguments
//Result: exception handled but error_num incorrect.
//Correct error_num: 39

//=======================================
// Trying with different data types
try 
	eqtflength([1,2], ['test'; 1,0]);
catch 
	[error_msg,error_num] = lasterror(%t);
end
disp(error_num);
disp(error_msg);
//  6.   
//Inconsistent row/column dimensions
//Error handled properly.

//==============================================
//With more than 2 arguments
try 
	eqtflength([1,2;0,3;5,8], 1,2);
catch
	 [error_msg,error_num] = lasterror(%t);
end
disp(error_msg);
disp(error_num);
//Wrong number of input arguments: 
//58.  
// Result: exception handled but err_num incorrect. 

//=====================================
//With character string
try
	 eqtflength([1,2], 'test');
catch
	 [error_msg,error_num] = lasterror(%t);
end 
disp(error_msg);
disp(error_num);
// Invalid index. 
//21.  
//Error handled properly




