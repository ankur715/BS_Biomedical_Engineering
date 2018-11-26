clear;clc

brain=imread('CT_scan02.jpg');
imshow(brain)
threshold=180;
[rows cols pgs]=size(brain);

for i= 97:241
    for j=134:233
        for k=2:pgs
            if brain(i,j,k) >= threshold
            brain(i,j,k)=0;
            end
        end
    end
end
figure
imshow(brain)