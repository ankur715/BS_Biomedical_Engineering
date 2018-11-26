clear;clc

disp('This is a checkbook and you have $2500 initially');

initAmt=2500;

transcations=input('How many transactions would you like to make? ')

for i=1:transcations;
    
    
account=menu(['your checkbook has $' num2str(initAmt) '; what would you like to do?'],'Withdraw','Deposit');

switch account;
    case 1
        amtwithdraw=input('How much money would you like to Withdraw?  ')
        currentamount=initAmt-amtwithdraw;
    case 2
        amtdeposit=input('How much money would you like to Deposit?  ')
        currentamount=initAmt+amtdeposit;
end

currentamount

rent=500;
cable=100;
electricity=100;
cellphone=50;
insurance=50;
carpayment=200;

paybill=menu(['Your checkbook has $' num2str(currentamount) '; what bill would you like to pay?'],'rent','cable','electricity','cellphone','insurance','carpayment');

switch paybill
    case 1
        rentinput=input('How much would you like to pay? ')
        currentamount=currentamount-rentinput;
    case 2
        cableinput=input('How much would you like to pay? ')
        currentamount=currentamount-cableinput;
    case 3
        electricityinput=input('How much would you like to pay? ')
        currentamount=currentamount-electricityinput;
    case 4
        cellphoneinput=input('How much would you like to pay? ')
        currentamount=currentamount-cellphoneinput;
    case 5
        insuranceinput=input('How much would you like to pay? ')
        currentamount=currentamount-insuranceinput;
    case 6
        paybillinput=input('How much would you like to pay? ')
        currentamount=currentamount-paybillinput;
end

currentamount

end




