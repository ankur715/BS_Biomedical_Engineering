x = [17.94 34.33 29.08 27.56 27.81 21.20 26.79 22.16 26.35 31.17];
y = [21.74 17.84 18.47 20.34 24.58 32.82 26.20 17.13 25.98 17.54];

diff = x-y

mean1 = mean(x);
mean2 = mean(y);
std1 = std(x);
std2 = std(y);
mean = mean(diff)
std = std(diff)

se = ((((std1)^2)/10)+(((std2)^2)/10))^(1/2)
z = ((mean1-mean2)/se)
se1 = std/(12^1/2);


Prob1_LL2 = (mean)-(1.96)*se
Prob1_UL2 = (mean)+(1.96)*se
%se = (std/(saple size)^1/2

