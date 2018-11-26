clear;clc

T=rand(4,4)
[r c]=size(T);
P=T;

P(1:r/2,1:c/2)=mean(mean(T(1:r/2,1:c/2)))
P(1:r/2,c/2+1:c)=max(max(T(1:r/2,c/2+1:c)))
P(r/2+1:r,c/2+1:c)=min(min(T(r/2+1:r,c/2+1:c)))
