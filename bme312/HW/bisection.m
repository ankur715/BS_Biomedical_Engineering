function [root n] = bisection(a,b)

% find a root of the 1D function specified by the func() helper function
% using the bisection method. n is the number of iterations

tol = 1.e-6;

% first see if we got lucky and a or b is a root

fa = func(a);
if abs(fa) < tol   % don't forget the abs()
    root=a;
   return 
end

fb = func(b);
if abs(fb) < tol
    root=b;
   return 
end

% Didnt' get lucky, make sure [a,b] is a valid bracket

if sign(fa) == sign(fb)
    error('bogus bracket');
end

% if we get here, bracket is good. Find the first midpoint and evaluate
% the function there

c = (a+b)/2;
fc = func(c);

n=3;  % we've done 3 function evaluations so far

% loop until fc becomes small. 

while abs(fc)>tol
    
    % figure out if c is going to replace a or b
    
    if sign(fc) == sign(fa)
        a=c;
        fa=fc;
    else
        b=c;
        fb=fc;
    end
    
    % get next c and evaluate function there
    
    c = (a+b)/2;
    fc = func(c);
    n=n+1;  % count iteration
    
end

% when we get here, we have converged. set root and return

root = c;



function y = func(x)

% evaluate our function

y = x*x-1;

% plot and pause so we can watch convergence

plot(x,y,'or')
pause;  % waits for user to hit return 
