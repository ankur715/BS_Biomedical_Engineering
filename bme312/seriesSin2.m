function [sinx n] = seriesSin2(x)

% function [sinx n] = seriesSin2(x)
% sinx is the sin of x computed with a series expanion. x should be in
% radians. n is the number of iterations required for convergence. this has
% been modified to be able to run arguments in arrays

% 
tic %used to see runtime
x=rem(x,2*pi); %used to minimize errors in larger numbers
term = x;
sinx = term;

n=1;

% we will update the following variables on each iteration

sign = 1;    % (1)^n
exp = x;     % x^(2*n+1)
fact = 1;    % factorial(2*n+1)

while max(abs(term)) > 1.e-6  %max command takes the maximum value of each column in the vector
    sign = sign*-1;  % toggle the sign of the term
    exp = exp.*x.*x;   % increase the exponent of x by 2. periods signify that each elementis to be multiplied
    fact = fact*(2*n+1)*2*n;    % extend the factorial
    
    term = sign/fact*exp;  % compute and add in next term 
    sinx = sinx+term;  %adds term to sinx
    n=n+1;  %counter
end

toc  %used to see runtime