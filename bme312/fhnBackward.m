                                 
function [X,t] = fhnBackward(ic,dt,tend,param)

%This fucntion uses ordinary differential equations to model the cardiac
%transmembrane potential and the recovery variable. 



    u = ic(1);
    v = ic(2);

    %checks dimensions of ic
    if size(ic,1)~=1 || ndims(ic)~=2
       error('bogus initial condition'); 
    end
    
    %checks values of u
    if u>=1 || u<=0
        error('bogus initial condition'); 
    end
    
    %checks values of v
    if v>=1 || v<0
        error('bogus initial condition');
    end
    
    % fills t vector
    t = 0:dt:tend;

    % initial condition in the first row
    X(1,:) = ic;
    X(length(t),end) = 0;

    for i = 1:length(t)-1
        X(i+1,:) = newton2(X(i,:),param,dt);
    end
end

function root = newton2(guess,param,dt)

%if size(guess,2) ~=1
%    error('should be column vector')
%end

guess = guess';
init = guess;

tol = 1.e-6;
uv = guess;
fg = funct(uv,param,dt,init);
n=1;

while norm(fg) > tol
    J = Jac(uv,param,dt);
    duv = J\(-fg);
    uv = uv+duv;
    %plot(uv(1),uv(2),'or'); hold on; pause;
    fg = funct(uv,param,dt,init);
    n = n+1;
    if n>50
        error('failed to converge')
    end
end

root = uv';

end


function fg = funct(uv,param,dt,init)

u = uv(1);
v = uv(2);

   % assigns parameters
    a = param(1);
    b = param(2);
    c1 = param(3);
    c2 = param(4);
    d = param(5);
    
%finds derivatives
f = init(1) + (c1*u*(u-a)*(1-u)-c2*v)*dt - u;
g = init(2) + (b*(u-d*v))*dt - v;

fg = [f;g];

end

function J = Jac(uv,param,dt)

   % assigns parameters
    a = param(1);
    b = param(2);
    c1 = param(3);
    c2 = param(4);
    d = param(5);
    
u = uv(1);
%v = uv(2);
J(1,1) = (2*c1*u - 3*c1*u*u - c1*a + 2*c1*a*u)*dt - 1;
J(1,2) = -c2*dt;
J(2,1) = b*dt;
J(2,2) = -b*d*dt - 1;

end
