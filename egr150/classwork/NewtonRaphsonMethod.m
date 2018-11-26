clear;clc

format long
x=1

startingTime=tic();

while x>0
    f_x=48*x*(1+x)^(60)-(1+x)+1;
    f_x_prime=48*(1+x)^(60)+60*((1+x)^(59))*(48*x-1);
    
    new_x=x;
    
    x=x-(f_x/f_x_prime);
    
    xsoln=x;
    
    if abs(new_x-x<1E-15);
        x=-1;
        disp(xsoln)
    end
        
end

endingtime=toc(startingTime)
