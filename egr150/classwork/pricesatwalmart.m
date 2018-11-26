clear;clc
a=[true false true false false];
b=[true true true true false];

truth=(a | b)
allTrue = all(truth)

%% Walmart Prices
clear;clc
prices=[1:4]
pricesGreaterThanOrEqual3=(prices>=3)
qualifyingPurchases=prices.*pricesGreaterThanOrEqual3
discountedPrices=qualifyingPurchases*0.9
discountedPrices(1:2)=prices(1:2)
