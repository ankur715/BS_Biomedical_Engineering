clear;clc

disp('This is a game in which you pick a number from 1 to 10');

%%input from user
value=input('pick a number from 1 to 10: ');

computer=randi(10);

%% Test for matching condition
%if (some condition is true)
% do this
%else (something else)
%end

%switch on some variable
%test for cases
%end

if value==computer
    output=('YOU WIN');
else 
    output=('YOU LOSE');
end

%computes win/lose scenario

%outputs win/lose scenario to user
fprintf('\nYou chose the number %.0f and the computer chose %.0f which means %s.\n',value,computer,output)