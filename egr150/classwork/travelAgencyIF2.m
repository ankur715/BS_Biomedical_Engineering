clear;clc

disp('You can go during')
disp('spring, fall, christmas')

tripTime=input('When would you like to go on vacation? ', 's')

if strcmp(tripTime,'fall')
    disp('cool')
elseif strcmp(tripTime,'spring')
    disp('both cool and not cool')
elseif strcmp(tripTime,'christmas')
    disp('not cool')
else
    disp('Error')
end


