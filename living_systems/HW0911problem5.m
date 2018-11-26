x = [24.14 37.45 21.72 35.75 32.82 41.39 25.74 36.36 37.93 21.02];
y = [21.56 35.97 21.12 16.91 24.57 17.25 24.43 18.65 19.82 24.61];

diff = x-y

mean1 = mean(x);
mean2 = mean(y);
std1 = std(x);
std2 = std(y);
mean = mean(diff)
std = std(diff)

se = ((((std1)^2)/12)+(((std2)^2)/12))^(1/2)
z = ((mean1-mean2)/se)
se1 = std/(12^1/2);


Prob1_LL2 = (mean)-(1.96)*se
Prob1_UL2 = (mean)+(1.96)*se
%se = (std/(saple size)^1/2

