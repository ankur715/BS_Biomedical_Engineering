

%%
% problem 2 
a = [24.5 9 12.5 23.5 8];
b = [25 17 14 22 7];
c = [17 11.5 23.5 11 8];
d = [22 9.5 12.5 19.5 6.5];

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