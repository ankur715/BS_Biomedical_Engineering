clear;clc

humpty=imread('humpty_mixed.gif');

[r c]=size(humpty);

s1=humpty(1:r/4,1:c/4);
s2=humpty(1:r/4,c/4+1:c/2);
s3=humpty(1:r/4,c/2+1:3*c/4);
s4=humpty(1:r/4,3*c/4+1:c);
s5=humpty(r/4+1:r/2,1:c/4);
s6=humpty(r/4+1:r/2,c/4+1:c/2);
s7=humpty(r/4+1:r/2,c/2+1:3*c/4);
s8=humpty(r/4+1:r/2,3*c/4+1:c);
s9=humpty(r/2+1:3*r/4,1:c/4);
s10=humpty(r/2+1:3*r/4,c/4+1:c/2);
s11=humpty(r/2+1:3*r/4,c/2+1:3*c/4);
s12=humpty(r/2+1:3*r/4,3*c/4+1:c);
s13=humpty(3*r/4+1:r,1:c/4);
s14=humpty(3*r/4+1:r,c/4+1:c/2);
s15=humpty(3*r/4+1:r,c/2+1:3*c/4);
s16=humpty(3*r/4+1:r,3*c/4+1:c);

newHum=[s16 s15 s14 s13
    s9 s11 s10 s12
    s8 s7 s6 s5
    s4 s3 s2 s1];
imshow(newHum)
figure
newhumpty=[s16,s15,s14,s13;s9,s11,s10,s12;s8 s7 s6 s5; s4 s3 s2 s1];
 

imshow(newhumpty)

