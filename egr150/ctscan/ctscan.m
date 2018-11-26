clear;clc

catscan=imread('CT_scan02.jpg');
imshow(catscan);

imtool(catscan);
[r c]=size(catscan);
catscan(110:240,140:215,2)=0;
catscan(110:240,140:215,3)=0;

catscan(catscan>180)=255;
hem=catscan(110:240,140:215);

imshow(catscan)