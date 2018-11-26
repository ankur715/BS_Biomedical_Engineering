function [X,t] = lorz(x0,dt,tend,param)

%function [X,t] = lorz(x0,dt,tend,param)
% integrate a system of ODEs of *any* size from t=0 to t=tend with step dt.
% x0 is a row vector containing the initial condition. param is an array of
% any size that is passed to the helper function dx()

% first make sure that x0 is indeed a row vector

    if size(x0,1)~=1 || ndims(x0)~=2
       error('bogus initial condition'); 
    end

    % fill up the t vector
    
    t = 0:dt:tend;

    % put the initial condition in the first row of X
    
    X(1,:) = x0;
    
    % set the bottom-right element of X to 0. This preallocates the array
    % (this didn't work in class because I forgot to type the "= 0"
    
    X(length(t),end) = 0;

    % main timestep loop to fill up all rows of X. Note that i stops one
    % row shy of the end because the command in the loop fill up row i+1
    
    for i = 1:length(t)-1
        
        % take an Euler step. The function dx() computes the
        % right-hand-sides of the differential equation. the dx function is
        % what specifies which system of ODEs is being solved
        
        X(i+1,:) = X(i,:) + dx(X(i,:),param)*dt;
    end

end  % we are using the terminate-functions-with-end convention


function dxdt = dx(X,param)

% compute the right-hand-sides of the differential equations and return
% them in row vector dxdt

% copy the parameters to separate variable to aid typing

    sigma = param(1);
    r = param(2);
    b = param(3);

% do the same with x,y, and z

    x = X(1);
    y = X(2);
    z = X(3);

% compute the RHSs of the Lorenz system.

    dxdt(1) = -sigma*x+sigma*y;
    dxdt(2) = -x*z +r*x - y;
    dxdt(3) = x*y - z*b;

end
