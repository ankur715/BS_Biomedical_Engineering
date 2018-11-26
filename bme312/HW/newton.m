function root = newton(guess)

% find a root of a 1D function using Newton's method

tol = 1.e-6;
x=guess;
fx = fcn(x);  % evaluate the function at our initial guess
n=1;          % iteration counter

% keep iterating as long as f(x) is above tolerance

while abs(fx) > tol
    
    % Use the formula for Newton's method to improve our estimate of x
    % we need both the function value and its derivative
    
    x = x - fx/dfcn(x);
    
    % evaluate f(x) with the new x
    
    fx = fcn(x);
    
    % make sure the algorithm isn't stuck. It usually only takes a few
    % iterations
    
    n=n+1;
    if n>50
        error('failed to converge')
    end
    
end

root = x;


function fx = fcn(x)

% evaluate f(x)

fx = x*x-1;
plot(x,fx,'o'); hold on;pause

function dfx = dfcn(x)

% evaluate df/dx

dfx = 2*x;