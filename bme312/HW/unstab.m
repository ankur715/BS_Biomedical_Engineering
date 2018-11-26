function [u t] = unstab(u0,dt,tend)

% function [u t] = unstab(u0,dt,tend)

% integrate the ODE du/dt = -u using either the forward or backward Euler
% method.  The solution should decay monotonically from its
% initial condition to 0. This is always the case with the backward Euler
% method because u(i+1) is always less than u(i), no matter what dt is.
% For the forward Euler method,if dt is between 1 and 2, the solution will
% oscillate between positive and negative values, but will still tend to 0.
% When dt>2, the solution oscillates between positive and negative values
% with its absolute value tending to infinity. t = 0:dt:tend;

t = 0:dt:tend;
u = zeros(size(t));
u(1)=u0;

for i= 1:length(t)-1
    
   % the following command take a *forward* (explicit)Euler step
    
   %u(i+1) = u(i)*(1-dt); 
   
   % the following command takes a *backward* (implicit) Euler step
   
   u(i+1) = u(i)/(1+dt); 
   
end