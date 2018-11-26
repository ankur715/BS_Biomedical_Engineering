function func1

% Define a bunch of variables. They exist in func1's local work space

a=1; b=2; c=3; d=4;e=5;

% call func2--a local function that can only be called by other functions
% in this file. We pass in the values of a, b, and c. The values returned
% by func2 are put in d and e.

[d e] = func2(a,b,c);

% print out the contents of a, b, c, d, e

fprintf(1,'a=%d, b=%d, c=%d, d=%d, e=%d \n',a,b,c,d,e);  

function [a b] = func2(c,d,e)

% when we get here, a new workspace has been created for func2 that
% contains the variables c, d, and e. These variables are different from 
% the variables of the same name in func1. The values of a, b, and c from 
% func1 have been copied into func2's c, d, and e. 

% modify func2's c variable. Neither c, nor a, nor any other variable in
% func1's workspace are affected.

c = 3*c;

% create new variables a and b and assign values to them.

a=d+e;
b=12;

% when we get to the end of the function, control returns to func1. The
% values of a and b are copied to func1's d and e. When we return, func2's
% workspace is deleted.


