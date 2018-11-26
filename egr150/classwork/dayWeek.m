%%clear the environment
clear;clc

%%Display wha the heck the user should expect from code
disp('In this program, you will choose a number from 1 to 7');
disp('in which the day representing the number will be shown');
disp(' ');


%%Have the user input a number representing a day of the week
% 1=sunday....

dayOfWeek=input('Pick a number from 1 to 7: ');


%%Switch on the value chosen
switch dayOfWeek
    case 1
        output='Sunday';
    case 2
        output='Monday';
    case 3
        output='Tuesday';
    case 4
        output='Wednesday';
    case 5
        output='Thursday';
    case 6
        output='Friday';
    case 7
        output='Saturday';
    otherwise
        output='Error: there are only 7 days in a week';
end

%%output the day of the week
fprintf('\nYou chose the number %.0f which represents %s.\n\n',dayOfWeek,output);
%%Compare to known values

%%Output the day of the week