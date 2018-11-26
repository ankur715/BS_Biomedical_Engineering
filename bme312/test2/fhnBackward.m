function [UV t] = fhnBackward(UV0,dt,tend,param)

% solve the FHN system using the backward (implicit) Euler method

t = 0:dt:tend;

UV(1,:) = UV0;
UV(length(t),end) = 0;

for i = 1:length(t)-1
    
   % Applying the backward Euler method results in a system of nolinear
   % algebraic equations that we solve to get the values of u and v at the
   % next time step. We use the newton2 function that we wrote earlier to
   % find the solution. Newton2 needs an initial estimate (guess) for
   % UV(i+1)--we use UV(i). Note that we transpose UV(i) when we pass it
   % into newton2 because newton2 expects the guess to be a column vector.
   % The second argument to newton2 is a vector containing all the
   % parameters that are needed to evaluate the system of nonlinear
   % equations and its Jacobian matrix
    
   UV(i+1,:) = newton2(UV(i,:)',[param dt UV(i,:)]);
   
end


function root = newton2(guess,param)

% find a root to a system of nonlinear algebraic equations. guess is a
% *column* vector containing an initial estimate of the root. Param
% contains parameters that are passed to funct() and Jac()

% make sure guess is really a column vector

if size(guess,2) ~= 1
    error('guess should be column vector')
end

tol = 1.e-6; % convergence tolerance

% copy guess to another vector, uv, that as we iterate, will always contain
% our most recent estimate of the root.

uv = guess;

% call function funct to evaluate the functions at uv

fg = funct(uv,param);

n = 1;  % iteration counter

% The function norm() returns the Euclidean length of its input vector. We
% iterate until norm(fg) becomes shorter than tol

while norm(fg) > tol
    
    % evaluate the Jacobian matrix at uv
    
    J = Jac(uv,param);
    
    % Solve a system of linear equation to get the corrections to uv that
    % take us to the next root estimate (see notes)
    
    duv = J\(-fg);
    
    % use corrections to update uv
    
    uv = uv+duv;
   
    
    % evaluate functions at new root estimate
    
    fg = funct(uv,param);
    
    n = n +1;   % count iteration
    
    % good idea to put this here to avoid an infinite loop if the algorithm
    % gets stuck
    
    if n>50
        error('failed to converge') 
    end
end

% when we get here, we have converged. assign the root variable

root = uv;



function fg = funct(uv,param)

% evaluate functions that arise from backward euler method

a = param(1); b=param(2); c1=param(3); c2=param(4); d=param(5);
dt = param(6);
un = param(7); vn=param(8);

unp1 = uv(1); vnp1=uv(2);

f = un + (c1*unp1*(unp1-a)*(1-unp1) - c2*vnp1)*dt - unp1;
g = vn + b*(unp1 - d*vnp1)*dt - vnp1;

fg = [f;g];  % must be column vector

function J = Jac(uv,param)

% evaluate Jacobian matrix

a = param(1); b=param(2); c1=param(3); c2=param(4); d=param(5);
dt = param(6);
un = param(7); vn=param(8);

unp1 = uv(1); vnp1=uv(2);

J(1,1) = c1*dt*( (unp1-a)*(1-unp1) + unp1*(1-unp1) - unp1*(unp1-a) ) - 1;
J(1,2) = -c2*dt;
J(2,1) = b*dt;
J(2,2) = -b*d*dt - 1;



