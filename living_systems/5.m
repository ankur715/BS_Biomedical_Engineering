atpshock=zeros(1,7);
atpnoshock=ones(1,9);
noatpshock=2*ones(1,3);
noatpnoshock=3*ones(1,45);
observed=[atpshock, atpnoshock, noatpshock, noatpnoshock];

totalshock=length(atpshock)+length(noatpshock);
totalnoshock=length(atpnoshock)+length(noatpnoshock);
totalatpon=length(atpshock)+length(atpnoshock);
totalatpoff=length(noatpshock)+length(noatpnoshock);
total=length(observed);

expected=zeros(1,4);
expected(1)=totalshock*totalatpon/total;
expected(2)=totalnoshock*totalatpon/total;
expected(3)=totalshock*totalatpoff/total;
expected(4)=totalnoshock*totalatpoff/total;

[h p stats]=chi2gof(observed, 'nbins', 4, 'nparams', 2, 'expected', expected)
p
stats