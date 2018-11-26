function [X,t] = fhnEuler(x0,dt,tend,param)

% solve the FHN system using the Euler method. This function is IDENTICAL
% to the lorz example. It can be used to solve any system of ODEs. The only
% thing that needs to be changed is the dx function that evaluates the
% right-hand-sides of the differential equations.

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
        
        Xmid = X(i,:) + dx(X(i,:),param)*dt/2;
        X(i+1,:) = X(i,:) + dx(Xmid,param)*dt;
    end

end  % we are using the terminate-functions-with-end convention


function dxdt = dx(X,param)

% compute the right-hand-sides of the two differential equations that make
% up the FHN system and return them in row vector dxdt

% copy the parameters to separate variable to aid typing

    a = param(1);
    b = param(2);
    c1 = param(3);
    c2 = param(4);
    d = param(5);

% do the same with x,y, and z

    u = X(1);
    v = X(2);

% compute the RHSs of the FHN system.

    dxdt(1) = c1*u*(u-a)*(1-u) - c2*v;
    dxdt(2) = b*(u-d*v);

end
