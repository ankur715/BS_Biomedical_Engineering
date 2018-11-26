clear;clc

startingTime=tic
count=0;sum=0;

for i=1:10
    while sum<25
        count=count+1
        randvalue=rand(1);
        sum=sum+randvalue
    end
    
    countVector(i)=count;
    count=0;sum=0;
end
endingTime=toc(startingTime)

bar(countVector)
avgNumIterations=mean(countVector)
theMin=min(countVector)
theMax=max(countVector)