westhigh=zeros(1,40);
westlow=ones(1,48);
easthigh=2*ones(1,39);
eastlow=3*ones(1,34);
observed=[westhigh, westlow, easthigh, eastlow];

totalhigh=length(westhigh)+length(easthigh);
totallow=length(westlow)+length(eastlow);
totalwest=length(westhigh)+length(westlow);
totaleast=length(easthigh)+length(eastlow);
total=length(observed);

expected=zeros(1,4);
expected(1)=totalhigh*totalwest/total;
expected(2)=totallow*totalwest/total;
expected(3)=totalhigh*totaleast/total;
expected(4)=totallow*totaleast/total;

[h p stats]=chi2gof(observed, 'nbins', 4, 'nparams', 2, 'expected', expected)
p
stats