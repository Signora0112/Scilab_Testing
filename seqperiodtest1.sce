//Author Rinu Sebastian
//Version: scilab-5.3.3
//code snippets to test function: seqperiod()
funcprot(0);
exec('seqperiod.sci',-1);

//---------------------------------------------------------------------
//Test1 - Testing the correctness of output
//1. Vector input
//1.A With a periodic vector

A11=[1 2 3 1 2 3 1 2 3];
S11=seqperiod(A11);
S11_expected =3;
if (double(S11)==S11_expected)
	disp("Pass");
else
	disp("Output obtained is not desirable");
end

//Pass
//=======================================
//1.B With a non-periodic vector
A12= [1 2 3 1 2 3 1 2 5];
[S12,num]=seqperiod(A12)
//num  =
//    1.  
// S12  = 
//   9. 
//Pass
//=========================================
//2. n-dimensional Array
//2.1 Non Periodic n-D Array

A21=[1 2 2 2;3 1 3 3; 4 4 1 4; 5 5 5 1];
seqperiod(A21)
 //ans  = 

	//4.    4.    4.    4.  
//=================================
//2.2  Periodic n-D Array
A22=[1 -2 2 -3 -2; 3 4 -1 0 -2;1 3 -6 4 -2;3 -2 1 0 -2]
 //A22  =
 
//    1.  - 2.    2.  - 3.  - 2.  
//    3.    4.  - 1.    0.  - 2.  
//    1.    3.  - 6.    4.  - 2.  
//   3.  - 2.    1.    0.  - 2.  
 
S22=seqperiod(A22)
// S22 =
 
//    2.    3.    4.    4.    1. 
//=============================================
//2.3 Periodic n-D Array with complex numbers
A23=[%i*3+1 -2 2 %i*-3 %i*-2+0.235; 3 4 -1 0 %i*-2+0.235;1 3 -6 4 %i*-2+0.235;3 -2 1 0 %i*-2+0.235];
 
S23=seqperiod(A23)
//S23  =
 
    4.    3.    4.    4.    1.  

//================================================
//2.4 with Periodic Hypermatrix

x  =[4,    0,    1,    5;  1,    1,    2,    5; 2,    0,    3,   5;  3,    1,    1,   5];  
for i=list(1,3,4)
	A24(:,i,:)=x;
end
A24
//A24 = 
//(:,:,1)
//    4.    0.    4.    4.    0.  
//    1.    0.    1.    1.    0.  
//    2.    0.    2.    2.    0.  
//    3.    0.    3.    3.    0.  
//(:,:,2) 
//    0.    0.    0.    0.    0.  
//    1.    0.    1.    1.    0.  
//    0.    0.    0.    0.    0.  
//    1.    0.    1.    1.    0.  
//(:,:,3)
//    1.    0.    1.    1.    0.  
//   2.    0.    2.    2.    0.  
//    3.    0.    3.    3.    0.  
//    1.    0.    1.    1.    0.  
//(:,:,4)
//    5.    0.    5.    5.    0.  
//    5.    0.    5.    5.    0.  
//    5.    0.    5.    5.    0.  
//   5.    0.    5.    5.    0.  

seqperiod(A24)
//ans  =
 //(:,:,1)
// 4.    1.    4.    4.    1.  
//(:,:,2)
//   2.    1.    2.    2.    1.  
//(:,:,3)
// 3.    1.    3.    3.    1.  
//(:,:,4)
 //1.    1.    1.    1.    1.  








