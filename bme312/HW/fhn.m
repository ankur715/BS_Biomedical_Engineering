function [X,t] = fhn(x0,dt,tend,param)

% solve the Fitzhugh-nagumo system using the midpoint method. This is very
% similar to the lorz example. The difference is inside the timestep loop

    if size(x0,1)~=1 || ndims(x0)~=2
       error('bogus initial condition'); 
    end
    
    t = 0:dt:tend;
    
    X(1,:) = x0;
       
    X(length(t),end) = 0;
    
    for i = 1:length(t)-1
        
        % take HALF an Euler step. 
        
        Xmid = X(i,:) + fcn(X(i,:),param)*dt/2;
        
        % Now use the values of u and v stored in Xmid to evaluate the
        % derivatives and take a full step using those values.
        
        X(i+1,:) = X(i,:) + fcn(Xmid,param)*dt;
    end

end  % we are using the terminate-functions-with-end convention


function dxdt = fcn(X,param)

% compute the right-hand-sides of the differential equations and return
% them in row vector dxdt

% copy the parameters to separate variable to aid typing

    a = param(1);
    b = param(2);
    c1 = param(3);
    c2 = param(4);
    d = param(5);

% do the same with x,y, and z

    u = X(1);
    v = X(2);
  

% compute the RHSs of the fhn system.

    dxdt(1) = c1*u*(u-a)*(1-u) - c2*v;
    dxdt(2) = b*(u-d*v);

end
