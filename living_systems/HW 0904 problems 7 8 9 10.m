a=imread('meshb.jpg');

aa = size(a);
aa1 = aa(1);
aa2 = aa(2);
aa3 = aa(3);
Size_a= aa1*aa2*aa3
b=min(a);
bb=min(b);
Min_a = min(bb)

c=max(a);
cc = max(c);
Max_a = max(cc)

d = mean(a);
dd = mean(d);
Mean_a = mean(dd)

SD = std2(a)

LL = (Mean_a) - 1.96*(SD /((Size_a)^(1/2)))

UL = (Mean_a) + 1.96*(SD /((Size_a)^(1/2)))

OneSD = (Mean_a - 1*SD)/(Mean_a)

TwoSD = 0.95


%se1 = (39.44/((96)^(1/2)))
%se2 = (38.72/((96)^(1/2)))
%se =  (((se1)^2)+((se2)^2))^(1/2)


se = ((((29.43)^2)/96)+(((54.12)^2)/96))^(1/2);
z = ((-96.75)/se)

Prob9_LL2 = (-96.75)-(1.96)*se
Prob9_UL2 = (-96.75)+(1.96)*se
%se = (std/(saple size)^1/2

se2 = ((((33.39)^2)/63)+(((34.98)^2)/61))^(1/2);
z2 = ((-69)/se)

Prob10_LL3 = (-69)-(1.96)*se2
Prob10_UL3 = (-69)+(1.96)*se2