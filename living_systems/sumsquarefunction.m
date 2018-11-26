function [ f df wdf bdf totss wss bss msw msb   ] = sumsquarefunction( means,standardDeviations,sampleSizes,numberGroups,totStd )
% Computes mean squares and f-statistic along with other useful information
% (used this function in homework 4 for living systems)
%   Detailed explanation goes here

% degrees of freedom
n=sum(sampleSizes);
df=n-1;
wdf=n-numberGroups;
bdf=df-wdf;

% total sum of squares
totss=df*totStd^2;

% within sum of squares
for i=1:numberGroups
    y(i)=(sampleSizes(i)-1)*(standardDeviations(i)^2);
end

wss=sum(y);

% between sum of squares
bss=totss-wss;

% mean square within
msw=wss/wdf;

% mean square between
msb=bss/bdf;

% f-statistic
f=msb/msw;

end

