%Dillon Patel
%type in fhn with all the initial conditions choosing the initial value of
%x, the timestep, the final time, and the parameters as [a b c1 c2 d]. The
%timestep that gave me a converged solution was 0.1 seconds
function [X,t] = fhn(x0,dt,tend,param)

%function [X,t] = fhn(x0,dt,tend,param)
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
        
        X(i+1,:) = X(i,:) + dx(X(i,:),param)*dt*.5;
        X(i+1,:) = X(i,:) + dx(X(i+1,:),param)*dt;
    end

end  % we are using the terminate-functions-with-end convention


function dxdt = dx(X,param)

% compute the right-hand-sides of the differential equations and return
% them in row vector dxdt

v=X(1) % we have v is equal to X(2)
u=X(2) % we have u is equal to X(1)


a=param(1);  %a is first element in parameter array
b=param(2);  %b is second element in parameter array
c1=param(3); %c1 is third element in parameter array
c2=param(4); %c2 is fourth element in parameter array
d=param(5); %d is fifth element in parameter array 

dxdt(1)=b*(u-d*v);  %our given equations
dxdt(2)=c1*u*(u-a)*(1-u)-c2*v; %our given equations
end
