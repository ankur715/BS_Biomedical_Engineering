function [sinx n] = seriesSin(x)

% function [sinx n] = seriesSin(x)
% sinx is the sin of x computed with a series expanion. x should be in
% radians. n is the number of iterations required for convergence.

% keep x in the range +/- 2pi. If this is not done, numerical overflow
% (i.e., numbers too big to store accurately will cause the program to
% return wrong answers when abs(x) is too large.

x=rem(x,2*pi);

% compute the first term in the series and store it in variable term. Make 
% it our initial approximation to sinx. This is the term in the series that
% corresponds to n=0. set n=1 so that n has the correct value when we enter
% the loop below.

term = x;
sinx = term;
n=1;

% continue computing terms and adding them to the series until the series
% converges (i.e., the absolute value of term gets small). 

while abs(term) > 1.e-6
    term = (-1)^n/factorial(2*n+1)*x^(2*n+1);
    sinx = sinx+term;
    n=n+1;
end