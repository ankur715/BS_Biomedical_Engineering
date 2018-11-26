
SD = 16.3741823048922;

nrats = 11;
ngroups = 6;

wmeanA = 145.2;
wsdA = 10.8;

wmeanB = 133.5;
wsdB = 6.5;

wmeanC = 126.8;
wsdC = 16.6;

emeanA = 119.1;
esdA = 14;

emeanB = 143.6;
esdB = 15.2;

emeanC = 122.1;
esdC = 17.5;

means = [wmeanA wmeanB wmeanC emeanA emeanB emeanC];
meanT = mean(means);

tss = (nrats*ngroups-1)*SD*SD 

wss = (nrats-1)*(wsdA*wsdA + wsdB*wsdB + wsdC*wsdC + esdA*esdA + esdB*esdB + esdC*esdC)

bss = tss-wss

M = [wmeanA wmeanB wmeanC];
M = mean(M);
F = [emeanA emeanB emeanC];
F = mean(F);

M = (M - meanT)^2;
F = (F - meanT)^2;

coast = 3*nrats*(M + F)

A = [wmeanA emeanA];
A = mean(A);
B = [wmeanB emeanB];
B = mean(B);
C = [wmeanC emeanC];
C = mean(C);

A = (A-meanT)^2;
B = (B-meanT)^2;
C = (C-meanT)^2;

Drug = 2*nrats*(A + B + C)

inter = bss - Drug - coast 

mean_squ_within = wss/60

mean_squ_drug = Drug/2

mean_squ_gender = coast/1

mean_squ_inter = inter/2

F_drug = mean_squ_drug/mean_squ_within

F_gender = mean_squ_gender/mean_squ_within

F_inter = mean_squ_inter/mean_squ_within

