clear;clc

theDay=menu('Pick a number from 1-7','1','2','3','4','5','6','7');

%switch theDay
%   case {1,2,3,4,5}
%      output='weekday'
%   case {6,7}
%    output='weekend'
%end

if theDay==1 || theDay==2 || theDay==3 || theDay==4 || theDay==5
    newOutput='weekday'
elseif theDay==6 || theDay==7
    newOutput='weekend'
else 
    newOutput='you have chosen to leave the program'
end
