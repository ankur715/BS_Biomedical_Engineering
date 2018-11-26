clear;clc

count=0;
myswitch=0;

% numtimes=input('How many times do you wish to play? ')

while myswitch==0
    count=count+1
    
    usernum=input('Put a number from 1-10; ')
    computernum=randi(10);
if usernum==computernum
    disp('you win')
    myswitch=1;
    %break (don't need it if using myswitch thing)
else 
    disp('you lose')
end
end

%fprintf('You won after %s times.\n\n',num2str(count))
fprintf('You won after %.0f times.\n\n',count)