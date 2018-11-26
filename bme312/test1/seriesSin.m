%This function approximates sin using the Taylor series. Each iteration of
%the while loop calculates a term in the Taylor series and adds it to the
%subsequent sum of the Taylor series terms until after the current term is
%less than 10^-6. This function is called by typing "seriesSin(*angle in
%radians*). The returns are the approximation of sin at the angle specified
%and the number of terms it calculated to get the approximation.
function [output]=seriesSin(x) %defines function. one arguement. one return
n=2; %initializes while loop
output(1)=0; %sets the first output to 0 
x=rem(x,2*pi); %reduces the amount of error introduced as the amount of radians increase
while n>0  %calculates y(n) for each value of n and sums all previous iterations of y(n) while n is greater than 0
    y(n)= ((-1)^(n-2)/factorial(2*(n-2)+1))*x^(2*(n-2)+1); %function for calculating each term in sin approximation
    output= y(n)+ output; %sums current iteration of y(n) with the sum of previous iterations of y(n)
    if abs(y(n))< 10^(-6),break;end; %if the absolute value of the current y(n)term is less than 10^-6, ends function
    n=n+1;
end
Number_of_Terms = n-2
