function [ z, q ] = foo(x, y)
z = 4; q = z;
if x < y
[z q] = bar1(x,y);
else
x = x.^2;
y = 3;
q = x;
end
end
function [b a] = bar1(a, b)
end