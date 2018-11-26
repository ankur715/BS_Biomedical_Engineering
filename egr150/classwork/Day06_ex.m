%using if elseif to test for a match between a variable
% and a range of discrete values
clear;clc
%month number to name
month_number = input('month number ');
if month_number == 1
    month_name = 'January';
elseif month_number == 2
    month_name = 'Febuary';
elseif month_number == 3
    month_name = 'March';
elseif month_number == 4
    month_name = 'April';
elseif month_number == 5
    month_name = 'May';
elseif month_number == 6
    month_name = 'June';
elseif month_number == 7
    month_name = 'July';
elseif month_number == 8
    month_name = 'August';
elseif month_number == 9
    month_name = 'September';
elseif month_number == 10
    month_name = 'October';
elseif month_number == 11
    month_name = 'November';
elseif month_number == 12
    month_name = 'December';
else
    month_name = 'error input month number out of range';
end
disp(month_name)

%using switch to test for a match between a variable
% and a range of discrete values

%month number to name
month_number = input('month number ');
switch month_number
    case  1
        month_name = 'January';
    case  2
        month_name = 'Febuary';
    case  3
        month_name = 'March';
    case  4
        month_name = 'April';
    case  5
        month_name = 'May';
    case  6
        month_name = 'June';
    case  7
        month_name = 'July';
    case  8
        month_name = 'August';
    case  9
        month_name = 'September';
    case  10
        month_name = 'October';
    case  11
        month_name = 'November';
    case  12
        month_name = 'December';
    otherwise
        month_name = 'error input month number out of range';
end

disp(month_name)

%switch example using case statments with multiple values
% days_in_a_month
month = input('enter month number ');
leapYear = true;

switch month
    case {9, 4, 6, 11}   % Sept, Apr, June, Nov
        days = 30;
    case 2 %Feb
        if leapYear
            days = 29;
        else
            days = 28;
        end
    case{1, 3, 5, 7, 8, 10, 11}
        days = 31;
    otherwise
        error('bad month number')
end
disp(days)

%short circuit &&
A = [6 89 5 90 2 1]
n = 2
%A(n) < 70
n<length(A)
if n<length(A) && A(n) < 70
    fprintf('element value %g of array A at index %g is < 70\n',A(n),n) 
end

%how to have a default value for an input
%2 different methods
value = input('enter a value ')
if isempty(value)
    value = 10;
end

%this is likely the better form so that you
%can have all your default values listed together
%rather than spread out in your input statements
value_2 = 20;
temp = input('enter a second value ')
if ~isempty(temp)
    value_2 = temp;
end