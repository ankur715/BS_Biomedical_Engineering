% script to test our sin functions

% make a 3D X array with 1,000,000 elements between 0 and 2pi

X = rand(100,100,100)*2*pi;

% run all three sin functions, computing cpu time used by each

t1 = cputime;
s1 = seriesSin2a(X);
t2 = cputime;
s2 = seriesSin2b(X);
t3 = cputime;
s3 = sin(X);
t4 = cputime;

disp('time for MATLAB sin()');
t4-t3
disp('time for seriesSin2b()');
t3-t2
disp('time for seriesSin2a()');
t2-t1

% plot difference between what our functions get and what sin() gets.

plot(s1(:)-s3(:))
hold on
plot(s2(:)-s3(:),'r');
