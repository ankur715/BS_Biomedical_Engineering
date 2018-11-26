
% 0925: problem 1
x = [52.50 78.67 78.98 72.91 74.40 97.87 51.46 59.07 68.32] ;
y = [99.10 89.20 91.84 91.13 91.02 78.33 78.59 85.66 87.81] ;

[h,p,ci,stat]=ttest(x,y)

%%
% problem 2 
a = [8.5 10.5 22.5 14 13.5];
b = [23.5 14.5 17.5 13 16];
c = [7.5 24 25 18.5 6];
d = [7 20.5 12 13.5 11.5];

x = [a b c d];
avg = mean(x);
x = x-avg;
TotalSumSquar = sumsqr(x)


A = [a(1) b(1) c(1) d(1)];
B = [a(2) b(2) c(2) d(2)];
C = [a(3) b(3) c(3) d(3)];
D = [a(4) b(4) c(4) d(4)];
E = [a(5) b(5) c(5) d(5)];

Aavg = mean(A);
Bavg = mean(B);
Cavg = mean(C);
Davg = mean(D);
Eavg = mean(E);

A = A-Aavg;
B = B-Bavg;
C = C-Cavg;
D = D-Davg;
E = E-Eavg;

SumSquarA = sumsqr(A);
SumSquarB = sumsqr(B);
SumSquarC = sumsqr(C);
SumSquarD = sumsqr(D);
SumSquarE = sumsqr(E);

WithinTotalSumSquar = SumSquarA + SumSquarB + SumSquarC + SumSquarD + SumSquarE

%%
% Problem 3
BetweenTotalSumSquar = TotalSumSquar - WithinTotalSumSquar 

%%
%Problem 4
DegreeFreedom = length(x)-1

%%
%Problem 5
WithinDegreeFreedom = length(x)-5

%%
%Problem 6
BetweenDegreeFreedom =  length(a) -1

%%
%Problem 7
MeanWithinTotalSumSquar = WithinTotalSumSquar/WithinDegreeFreedom

%%
%Problem 8
MeanBetweenTotalSumSquar = BetweenTotalSumSquar/BetweenDegreeFreedom

%%
%Problem 9
Ftest = MeanBetweenTotalSumSquar/MeanWithinTotalSumSquar