clear;clc

monthlyWageAfterTaxes=2700;
numberOfYears=30;
numberOfMonths=12*numberOfYears;
numMonths=1;

rent=800; utilities=300; insurance=200;
auto=250; food_misc=325;

totalSavings=0;
clear;clc

monthlyWageAfterTaxes=2700;
annualWage=12*monthlyWageAfterTaxes;
numberOfYears=input('How many years would you like to save: ');

rent=800; utilities=300; insurance=200;
auto=250; food_misc=325;

totalSavings=0;

for year=1:numberOfYears
     if rem(year,5)==0;
        rent=rent+200;
     end
     Costs=12*(rent+utilities+insurance+auto+food_misc);
     totalSavings=totalSavings+annualWage-Costs;
     annualWage=annualWage*1.02;
end

totalSavings=round(totalSavings)