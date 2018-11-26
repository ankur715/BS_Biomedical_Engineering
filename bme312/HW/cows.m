function [u t]= cows(u0,dt)

% function [u t]= cows(u0,dt)
% integrate the "disease spread" ODE from initial condition u0 until the
% solution approaches the asymptotic value of 1. Use timestep dt. The
% solution and corresponding time values are returned in vectors u and t.
% Use the forward Euler method

% initialize solution vector, time vector, and step counter, n.

u(1) = u0;
t(1) = 0;
n = 1;

% take time steps until we approach the asymptote

while abs(1-u(n)) > 1.e-6
    
    % Update u: 
    % The next value of u is the current value of u plus the derivative
    % (evaluated at the current value of u) times the time step
    
    u(n+1) = u(n) + u(n)*(1-u(n))*dt;
    
    % update t and timestep counter
    
    t(n+1) = t(n) + dt;
    n = n+1;
end