clear;clc

disp(' ankur''s blah blah blah ');
disp(' ');

theDay=input('Pick a number from 1-7: ');

if isempty(theDay)
    disp('you have hit the enter key in error.');
    return
end


switch theDay
    case 1
        output='Monday'
    case 2
        output='Tuesday'
    case 3
        output='Wednesday'
    case 4
        output='Thursday'
    case 5
        output='Friday'
    case 6
        output='Saturday'
    case 7
        output='Sunday'
    otherwise
        output='You have chosen an invalid value'
end
