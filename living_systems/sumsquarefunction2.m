function [ f df wdf bdf totss wss bss msw msb ] = sumsquarefunction2( a,b,c,d )
% Finds sum of squares when given a list of samples. Used for problem 6 in
% Homework 4 of living systems. This functioni is made for 4 samples more
% arguments must be made depending upont the number of samples
%   Detailed explanation goes here

% degrees of freedom
la=length(a);
lb=length(b);
lc=length(c);
ld=length(d);

lengths=[la lb lc ld];
sumlengths=sum(lengths);
df=sumlengths-1;
wdf=sumlengths-4;
bdf=df-wdf;

% total sum of squares
tot=[a b c d];
avgtot=mean(tot);
tot=tot-avgtot;
totss=sumsqr(tot);

% within sum of squares
avga=mean(a);
a=a-avga;
ssa=sumsqr(a);

avgb=mean(b);
b=b-avgb;
ssb=sumsqr(b);

avgc=mean(c);
c=c-avgc;
ssc=sumsqr(c);

avgd=mean(d);
d=d-avgd;
ssd=sumsqr(d);

sss=[ssa ssb ssc ssd];
wss=sum(sss);

% between sum of squares
bss=totss-wss;

% mean square within
msw=wss/wdf;

% mean square between
msb=bss/bdf;

% f-statistic
f=msb/msw;

end

