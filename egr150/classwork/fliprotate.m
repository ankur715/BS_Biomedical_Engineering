


clear;clc

filename='CT_scan02.jpg';
originalimage=imread(filename);
imshow(originalimage)

flippedimage=imageFlipper(filename);
figure;
imshow(flippedimage)