function root = secant(guess1, guess2)

% find a root of a 1D function using secant method
n=3;
tol = 1.e-6;
x(1)=guess1;
x(2)=guess2;
  % evaluate the function at our initial guess
          % iteration counter
fx(3) = 1;
% keep iterating as long as f(x) is above tolerance

while abs(fx(n)) > tol
    
    % Use the formula for Newton's method to improve our estimate of x
  
    
    x(n) = x(n-1) - fx(n-1)*(x(n-1)-x(n-2))/(fx(n-1)-fx(n-2));
    
    % evaluate f(x) with the new x
    
    fx(n) = x(n)*x(n)-1;
    
    % make sure the algorithm isn't stuck. It usually only takes a few
    % iterations
    
    n=n+1;
    if n>52
        error('failed to converge')
    end
    
end

root = x;




