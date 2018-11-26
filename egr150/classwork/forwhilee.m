clear;clc

i = 1; a = 0; x = [7 5 3 1];
while i < length(x)
if x(i) < 3;
a = a + x(i)
end
i = i + 1
end