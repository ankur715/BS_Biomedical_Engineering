function [force] = univLOG(mass1,mass2,radius)
%UNTITLED3 Summary of this function goes here-- calculates the force of
%attratction for any two masses m1 and m2 at a given radius r
%   Detailed explanation goes here-- 

if nargin<2
    radius=1;
    mass2=10;
elseif nargin<3
    radius=1;
end


G=6.67E-11;
force=(G*mass1*mass2)/radius^2;

end

