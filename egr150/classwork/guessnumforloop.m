clear;clc

numtimes=input('How many times do you wish to play? ')

for variable=[1:numtimes]
usernum=input('Put a number from 1-10; ')
computernum=randi(10);
if usernum==computernum
    disp('you win')
else 
    disp('you lose')
end
end
