%robot 2
% practice on array indexing
% notice the pattern of when the row value or the column value changes
time=0.75;
clc
 a = [0 0 0 1 0 0 0;
    0 1 0 0 0 1 0;
    0 1 1 1 0 1 0;
    9 1 0 0 0 1 0]
pause(time)
clc
temp = a(4,1);
a(4,1) = a(3,1);
a(3,1) = temp;
a
pause(time)
clc
temp = a(3,1);
a(3,1) = a(2,1);
a(2,1) = temp;
a
pause(time)
clc
temp = a(2,1);
a(2,1) = a(1,1);
a(1,1) = temp;
a
pause(time)
clc
temp = a(1,1);
a(1,1) = a(1,2);
a(1,2) = temp;
a
pause(time)
clc
temp = a(1,2);
a(1,2) = a(1,3);
a(1,3) = temp;
a
pause(time)
clc
temp=a(1,3);
a(1,3)=a(2,3);
a(2,3)=temp;
a
pause(time)
clc
temp=a(2,3);
a(2,3)=a(2,4);
a(2,4)=temp;
a
pause(time)
clc
temp=a(2,4);
a(2,4)=a(2,5);
a(2,5)=temp;
a
pause(time)
clc
temp=a(2,5);
a(2,5)=a(1,5);
a(1,5)=temp;
a
pause(time)
clc
temp=a(1,5);
a(1,5)=a(1,6);
a(1,6)=temp;
a
pause(time)
clc
temp=a(1,6);
a(1,6)=a(1,7);
a(1,7)=temp;
a
pause(time)
clc
temp=a(1,7);
a(1,7)=a(2,7);
a(2,7)=temp;
a
pause(time)
clc
temp=a(2,7);
a(2,7)=a(3,7);
a(3,7)=temp;
a
pause(time)
clc
temp=a(3,7);
a(3,7)=a(4,7);
a(4,7)=temp;
a
pause(time)
disp('The robot has fled the maze.')

