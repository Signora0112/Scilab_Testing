//Author Rinu Sebastian
//Version: scilab-5.3.3
//code snippets to test error handling and output of function: is2rc();
//Reference: Matlab Documentation
funcprot(0);
exec('is2rc.sci',-1);
//Output=sin(%pi/2*Input)

//---------------------------------------------------------------------
//1. Testing Correctness of output

isin=[1 2 3 4 5 6];
k_expected=sin(%pi/2*isin);
k=is2rc(isin);
if(k_expected==k)
	disp("Pass");
else
	disp("Not desired output");
end
disp("Expected Output=");
k_expected
disp("Outcome from the function=");
k
//Pass

//k_expected  =
 //column 1 to 5
 //  1.    1.225D-16  - 1.  - 2.449D-16    1.  
// column 6
// 3.674D-16  
//Outcome from the function=   
// k  =
// column 1 to 5
//1.    1.225D-16  - 1.  - 2.449D-16    1.  
// column 6
// 3.674D-16  

//--------------------------------------------------------
//Testing whether the input is a real
A=[%i*3+1 -2  %i*-3 %i*-2+0.235; 3  -1 0 %i*-2+0.235;1 3 -6 %i*-2+0.235;3 -2  0 %i*-2+0.235];
try
	is2rc(A);
catch
	[err_msg,err_num] = lasterror(%t)
end
// err_num  =
//10000.  
// err_msg  =
//Input inverse sine coefficients are not real
// Result: exception handled but err_num incorrect. 

//--------------------------------------------------------
//Testing with no arguments
try
	 is2rc();
catch
	[err_msg,err_num] = lasterror(%t)
end
//NO Output. Needs an if condition to check whether a parameter is paased.

//-------------------------------------------------------------
//Testing with multiple arrays

try
	is2rc([1,2,3,4],1);
catch
	[err_msg,err_num] = lasterror(%t)
end
//err_num  =
//58.  
//err_msg  =
//Wrong number of input arguments:  
// Result: exception handled but err_num incorrect. 
//Correct err_number: 77
//-------------------------------------------------------------------------

Testing with more than 1 output

try 
	[k,m]=is2rc([1,2,3,4]);
catch
	[err_msg,err_num] = lasterror(%t)
end

//OUTPUT
//  Warning: recursion problem..., cleared.
// Result: FAIL; cannot handle



