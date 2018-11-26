clear;clc

hum=imread('humpty.jpg');
[r c l]=size(hum);
% r=600;
% c=412;
hum(1:r/2,1:c,2:3)=0;
hum(r/2+1:r,1:c/2,1:2:3)=0;
hum(r/2+1:r,c/2+1:c,1:2)=0;


imshow(hum)
