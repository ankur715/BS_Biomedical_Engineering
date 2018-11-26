function root = secant(g1, g2)

%g1 and g2 are the 2 guesses
% finding a root of a 1D function using secant method

n=3;
x(1)=g1;
x(2)=g2;
fx(3) = 1;


while abs(fx(n)) > 1.e-6
    
    % Use Newton's method for better estimate of x
  
    
    x(n) = x(n-1) - fx(n-1)*(x(n-1)-x(n-2))/(fx(n-1)-fx(n-2));
    
    % evaluate f(x) with new x
    
    fx(n) = x(n)*x(n)-1;
        
    n=n+1;
    if n>50
        error('too many iterations: convergence failed')
    end
    
end

root = x;




