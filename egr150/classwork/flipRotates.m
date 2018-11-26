function [ OutputImage ] = flipRotates( fileName )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

inputImage=imread(fileName);

[rows cols pgs]=size(inputImage)

for i=1:rows
    for j=1:cols
        for k=1:pgs
            
            outputImage(j,i,k)=inputImage(i,j,k);
            
        end
    end
end

end

