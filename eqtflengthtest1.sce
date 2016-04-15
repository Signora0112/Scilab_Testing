//Author Rinu Sebastian
//Version: scilab-5.3.3
//code snippets to test output of function: eqtflength()
funcprot(0);
exec('eqtflength.sci',-1);

//===========================
//Test 1 
[b,a]=eqtflength([11],[1;0;-25])
// a  =
//    1.    0.  
// b  =
 //   11.    0. 
//Incorrect answer
//expected answer:
//a=[ 1 0 -25]
//b=[11 0 0]

//=======================
//Test2 - 
[b,a]=eqtflength([11],[1;2;90])
// a  =
 
//   1.    2.    90.  
// b  =
 
//11.    0.    0.  
//Pass - expected answer 
//========================
//Test3

//[b,a,N,M]=eqtflength([1;0;-23], [1,2,3,4,5])
 //M  =
 
//    4.  
// N  =
 
 //   1.  
// a  =
 
 //   1.    2.    3.    4.    5.  
// b  =
 
  //  1.    0.  - 23.    0.    0.  

//Expected answer -- Pass
//==============================

//With complex numbers
c = complex([1 2 3 3 4], 4);
a=complex([1], 4);
[c,a,N,M]=eqtflength(c,a)
//M  =
 
 //   0.  
// N  =
 
//   4.  
 //a  =
 
  //  1. - 4.i    0    0    0    0  
// c  =
 
 //   1. - 4.i    2. - 4.i    3. - 4.i    3. - 4.i    4. - 4.i  
 
//Expected answer



