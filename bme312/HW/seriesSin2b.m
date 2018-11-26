function [sinX n] = seriesSin2b(X)

% Compute the sin of all elements in X. Results are in sinX, which has the
% same dimensions as X

% This version has an explicit loop over all elements of X. In most
% languages, this would be faster than our other version of this program
% because each series is summed independently, which minimizes the total
% number of term that need to be computed. However, explicit loops in
% MATLAB are slow, which for some choices of X make this version slower
% than the other.

X=rem(X,2*pi);
sinX = zeros(size(X));  % preallocate to same dimensions as X

% Loop over all elements in X. Note that we access the elements of X using
% a single index. This allows us to treat it as a vector, even if it is not
% (linear indexing). 

for i = 1:length(X(:))
    
    x = X(i);
    term = x;
    sinx = term;
    n=1;


    sign = 1;    % (1)^n
    exp = x;     % x^(2*n+1)
    fact = 1;    % factorial(2*n+1)

    while abs(term) > 1.e-6
        sign = sign*-1; 
        exp = exp*x*x;   
        fact = fact*(2*n+1)*2*n;    % 

        term = sign/fact*exp;
        sinx = sinx+term;
        n=n+1;
    end
    
    sinX(i) = sinx;  % use linear indexing to save result in sinX

end