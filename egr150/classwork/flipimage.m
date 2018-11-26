clear;clc

inputImage=imread('CT_scan02.jpg');
imshow(inputImage)

[rows cols pgs]=size(inputImage)

for i=1:rows
    for j=1:cols
        for k=1:pgs
            
            outputImage(j,i,k)=inputImage(i,j,k);
            
        end
    end
end
figure
imshow(outputImage)