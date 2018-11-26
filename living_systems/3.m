% paired hypothesis test with t-distribution

initpop=[0.25 0.17 -0.01 0.16 0.27 0.30 0.33 0.30 0.31 0.39 0.35 0.22 0.15 0.17 0.27 0.32 0.18 0.35 0.13 0.15 0.16 0.13 0.29 0.18];
inmean=mean(initpop);
instd=std(initpop);
inse=instd/sqrt(length(initpop));
indf=length(initpop)-1;

endpop=[0.44 0.25 0.44 0.01 0.29 0.28 0.44 0.28 0.43 0.44 0.19 0.13 0.34 0.17 0.23 0.19 0.26 0.31 0.32 0.26 0.16 0.17 0.28 0.03];
enmean=mean(endpop);
enstd=std(endpop);
ense=enstd/sqrt(length(endpop));
endf=length(endpop)-1;

diffpop=endpop-initpop;
dfmean=mean(diffpop)
dfstd=std(diffpop)
dfse=dfstd/sqrt(length(diffpop))
dfdf=length(diffpop)-1
fac95=tinv(0.975,dfdf)
dfl95=dfmean-fac95*dfse
dfu95=dfmean+fac95*dfse

[h p ci stats]=ttest(diffpop)





