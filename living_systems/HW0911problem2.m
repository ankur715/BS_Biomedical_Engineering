x = [53 59 57 57 67 75 39 65 34 67 40 60];
y = [132 173 140 173 143 168 128 148 148 152 141 169];

diff = x-y

mean1 = mean(x);
mean2 = mean(y);
std1 = std(x);
std2 = std(y);
mean = mean(diff)
std = std(diff)

se = sqrt((((std1)^2)/12)+(((std2)^2)/12))
z = ((mean1-mean2)/se);
se1 = std;

Prob1_LL2 = (mean)-(1.96)*se
Prob1_UL2 = (mean)+(1.96)*se
%se = (std/(saple size)^1/2

