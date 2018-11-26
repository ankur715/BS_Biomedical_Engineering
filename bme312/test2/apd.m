%APD90 for each action potential in the membrane potential signal file

function [adp] = apd(pace)

load pace.dat
plot(pace);
hold on

[g b] = sgolay(2,21);
d1 = conv(pace,flipud(b(:,2)),'same'); 

[g b] = sgolay(2,41);
d2 = conv(pace,flipud(b(:,3)),'same'); 

dpeak1 = peak(d1,200); 
dpeak2 = peak(d2,100); 

tdpeak1 = find(dpeak1);  
tdpeak2 = find(dpeak2); 

for i=1:length(tdpeak1)
    t=tdpeak1(i);  
    tdpeak2 = tdpeak2(tdpeak2>t);  
    t2 = tdpeak2(1);   
    apd(i) = t2-t;  
    plot(t,pace(t),'ro')    
    plot(t2,pace(t2),'go')   
end