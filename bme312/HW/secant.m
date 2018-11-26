function root = secant(a,b)

% find a root of a 1D equation using the secant method. a and b are our
% initial guesses.

    tol=1.e-6;  % convergence tolerance
    
    % The secant method computes a new estimate to the root from the
    % previous two estimates. We will store these estimates in a 3-element
    % vector called x (we will store corresponding function values in
    % another 3-element vector called fx).  
    % We first copy a and and b to x and check to see if either
    % one happens to be the root. If one is, we assign the output variable
    % root and return. 
    
    x(1)=a; 
    fx(1)=func(a);  
    if abs(fx(1)) < tol
        root=a;
        return
    end
    
    x(2)=b; 
    fx(2)=func(b);
    if abs(fx(2)) < tol
        root=b;
        return
    end
    
    n=2; % iteration counter
    
    % Iterate until fx(3) becomes smaller than tol. 
    
    while 1   % infinite loop--we rely on break command below to exit
    
       % use secant method formula to get next root estimate

       x(3)=x(2)-fx(2)*(x(2)-x(1))/(fx(2)-fx(1));
       
       % evaluate function at new estimate
       
       fx(3) = func(x(3));
       
       n=n+1; % increment counter
       
       % check for convergence
       
       if abs(fx(3)<tol)
          break; 
       end
       
       % if we have done too many iterations, the algorithm is probably
       % stuck--bail out
       
       if n>50
           error('failed to converge')
       end
       
       % if we get here, we will do another iteration. Shift x(3) and x(2)
       % to x(2) and x(1) respectively. The MATLAB circshift function is an
       % easy way to do this.
       
       x= circshift(x,[0 -1]);
       
       % do the same for fx
       
       fx = circshift(fx,[0 -1]);
       
    end
    
    % if we get here, we are done
    
    root=x(3);
    
end

function f=func(x)

    f=x*x-1;

end