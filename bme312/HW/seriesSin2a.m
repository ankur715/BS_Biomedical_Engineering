function [sinx n] = seriesSin2a(x)

% Compute the sin of all elements in x. Results are in sinx, which has the
% same dimensions as x

% This version operates on the entire x array at once. This means that the
% same number of series terms are added together for each element in x. In
% a sense, this is inefficient because some values of x may only need one
% or two series terms to converge. 

x=rem(x,2*pi);

term = x;
sinx = term;
n=1;


sign = 1;    % (1)^n
exp = x;     % x^(2*n+1)
fact = 1;    % factorial(2*n+1)

% have to be careful with the loop control expression. "abs(term)>1.e-6"
% by itself gives us a logical vector. For the loop to continue, ALL
% elements of that vector have to be 1. Therefore, the loop would stop as
% soon one element of term became small, even if the rest of the elements 
% were still large. Using the any() function modifies the logic so that
% the loop continues as long as ANY element term is above tolerance.

while any(abs(term) > 1.e-6)
    sign = sign*-1;  
    exp = exp.*x.*x;       % note the "."s in this expression
    fact = fact*(2*n+1)*2*n; 
    
    term = sign/fact*exp;
    sinx = sinx+term;
    n=n+1;
end