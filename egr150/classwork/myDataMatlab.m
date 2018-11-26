clear;clc

myDataMatlabb=dlmread('time,distance,velocity.txt');

myDataCell{1,1}='time (s)';
myDataCell{1,2}='dispacement (m)';
myDatacell{1,3}='velocity (m/s)';

for i=2:r
    for j=2:c
        myDataCell{i+1,j}=myDataMatlabb(i,j);
    end      
end

for i=2:r+1
    myDataCell{i,3}=2*myDataCell{i,3};
end

a=ones(5)
dlmwrite('dataOfOnes.txt',a)


