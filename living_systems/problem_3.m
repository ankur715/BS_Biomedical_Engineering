
SD = 1.57392546815608;

nrats = 5;
ngroups = 6;

fmeanA = 12.8;
fsdA = 1.9;

fmeanB = 11.8;
fsdB = 0.8;

fmeanC = 13.2;
fsdC = 0.9;

mmeanA = 11.7;
msdA = 1;

mmeanB = 13.9;
msdB = 1.5;

mmeanC = 13.5;
msdC = 2.5 ;

means = [fmeanA fmeanB fmeanC mmeanA mmeanB mmeanC];
meanT = mean(means);

tss = (nrats*ngroups-1)*SD*SD 

wss = (nrats-1)*(fsdA*fsdA + fsdB*fsdB + fsdC*fsdC + msdA*msdA + msdB*msdB + msdC*msdC)

bss = tss-wss

M = [fmeanA fmeanB fmeanC];
M = mean(M);
F = [mmeanA mmeanB mmeanC];
F = mean(F);

M = (M - meanT)^2;
F = (F - meanT)^2;

Gender = 3*5*(M + F)

A = [fmeanA mmeanA];
A = mean(A);
B = [fmeanB mmeanB];
B = mean(B);
C = [fmeanC mmeanC];
C = mean(C);

A = (A-meanT)^2;
B = (B-meanT)^2;
C = (C-meanT)^2;

Drug = 2*5*(A + B + C)

inter = bss - Drug - Gender 

mean_squ_within = wss/24

mean_squ_drug = Drug/2

mean_squ_gender = Gender/1

mean_squ_inter = inter/2

F_drug = mean_squ_drug/mean_squ_within

F_gender = mean_squ_gender/mean_squ_within

F_inter = mean_squ_inter/mean_squ_within

