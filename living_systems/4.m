westa=zeros(1,119);
westb=ones(1,111);
westc=2*ones(1,81);
westd=3*ones(1,117);
easta=4*ones(1,139);
eastb=5*ones(1,144);
eastc=6*ones(1,151);
eastd=7*ones(1,121);
observed=[westa, westb, westc, westd, easta, eastb, eastc, eastd]

totala=length(westa)+length(easta);
totalb=length(westb)+length(eastb);
totalc=length(westc)+length(eastc);
totald=length(westd)+length(eastd);
totalwest=length(westa)+length(westb)+length(westc)+length(westd);
totaleast=length(easta)+length(eastb)+length(eastc)+length(eastd);
total=length(observed);

expected=zeros(1,8);
expected(1)=totala*totalwest/total;
expected(2)=totalb*totalwest/total;
expected(3)=totalc*totalwest/total;
expected(4)=totald*totalwest/total;
expected(5)=totala*totaleast/total;
expected(6)=totalb*totaleast/total;
expected(7)=totalc*totaleast/total;
expected(8)=totald*totaleast/total;

[h p stats]=chi2gof(observed, 'nbins', 8, 'nparams', 2, 'expected', expected)
p
stats