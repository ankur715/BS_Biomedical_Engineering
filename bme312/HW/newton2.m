function root = newton2(guess)

% find a root to a system of nonlinear algebraic equations. guess is a
% *column* vector containing an initial estimate of the root. 

% make sure guess is really a column vector

if size(guess,2) ~= 1
    error('guess should be column vector')
end

tol = 1.e-6; % convergence tolerance

% copy guess to another vector, uv, that as we iterate, will always contain
% our most recent estimate of the root.

uv = guess;

% call function funct to evaluate the functions at uv

fg = funct(uv);

n = 1;  % iteration counter

% The function norm() returns the Euclidean length of its input vector. We
% iterate until norm(fg) becomes shorter than tol

while norm(fg) > tol
    
    % evaluate the Jacobian matrix at uv
    
    J = Jac(uv);
    
    % Solve a system of linear equation to get the corrections to uv that
    % take us to the next root estimate (see notes)
    
    duv = J\(-fg);
    
    % use corrections to update uv
    
    uv = uv+duv
    
    % plot our progress
    
    plot(uv(1),uv(2),'or');hold on;pause;
    
    % evaluate functions at new root estimate
    
    fg = funct(uv);
    
    n = n +1   % count iteration
    
    % good idea to put this here to avoid an infinite loop if the algorithm
    % gets stuck
    
    if n>50
        error('failed to converge') 
    end
end

% when we get here, we have converged. assign the root variable

root = uv;


function fg = funct(uv)

%  evaluate functions for a 2D nonlinear system.

u = uv(1);
v = uv(2);
f = u*u + v*v - 2;
g = (u-1)^2 + v*v - 2;

% the result has to be a column vector

fg = [f;g];

function J = Jac(uv)

% evaluate Jacobian matrix for the system in funct()

u = uv(1);
v = uv(2);
J(1,1) = 2*u;
J(1,2) = 2*v;
J(2,1) = 2*(u-1);
J(2,2) = 2*v;

