clear;clc

monthlyWageAfterTaxes=2700;
savingsGoal=1E6;

numYears=0;
numMonths=0;
totalSavings=0;

rent=800; utilities=300; insurance=200;
auto=250; food_misc=325;

while totalSavings<=savingsGoal
    remainderRent=rem(numMonths,60);
    if remainderRent==0
        rent=rent+200;
    end
    remainderWage=rem(numMonths,12);
    if remainderWage==1
        monthlyWageAfterTaxes=monthlyWageAfterTaxes+0.02*monthlyWageAfterTaxes;
    end
    monthlySavings=monthlyWageAfterTaxes-(rent+utilities+insurance+auto+food_misc);
    totalSavings=totalSavings+monthlySavings;
    numMonths=numMonths+1;
end
numYears=numMonths/12
    
    
