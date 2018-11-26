function [sinx n] = seriesSinFaster(x)

% function [sinx n] = seriesSin(x)
% sinx is the sin of x computed with a series expanion. x should be in
% radians. n is the number of iterations required for convergence.

% Our original version of seriesSin is easy to understand because it
% closely parallels the mathematical expression for the power series.
% However, it is much slower than it needs to be because (1) it has
% exponentials, which are expensive to compute and should be avoided when
% possible, and (2) it computes each term from scratch without reusing
% information from previous iterations. This version rearranges the
% calculation and is many times faster. The engineering trade-off of speed
% for simplicity is warranted for functions that are frequently used.

x=rem(x,2*pi);

term = x;
sinx = term;
n=1;

% we will update the following variables on each iteration

sign = 1;    % (1)^n
exp = x;     % x^(2*n+1)
fact = 1;    % factorial(2*n+1)

while abs(term) > 1.e-6
    sign = sign*-1;  % toggle the sign of the term
    exp = exp*x*x;   % increase the exponent of x by 2
    fact = fact*(2*n+1)*2*n;    % extend the factorial
    
    term = sign/fact*exp;  % compute and add in next term 
    sinx = sinx+term;
    n=n+1;
end