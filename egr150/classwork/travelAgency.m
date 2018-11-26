clear;clc

disp('Welcome to Ankur''s Travel Agency. This year, we have ')
disp('specials for Spring break, Fall break, and Christmas break.')

deals=menu('In what break do you want to travel?','spring break','fall break','christmas break')

switch deals
    case 1
        disp('Deals during the Spring break:')
        disp('7 Day Destin, FL vacation')
        disp('Dates: March 17-23')
        disp('Price: $700')
        disp('Package includes: hotel stay, tour if needed, service')
    case 2
        disp('Deals during the Fall break:')
        disp('4 Day Houston,TX vacation')
        disp('Dates: Oct 11-14')
        disp('Price: $400')
        disp('Package includes: hotel stay, tour')
    case 3
        disp('Deals during the Christmas break:')
        disp('5 Day New York City, NY vacation')
        disp('Dates: Dec 29 -Jan 2')
        disp('Price: $500')
        disp('Package includes: hotel stay, tour if needed, service')
end

