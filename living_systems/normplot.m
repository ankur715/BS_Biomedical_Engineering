% Generate a plot of a normal distribution

x = [-4:.1:4];

meanval=0; stdval=1;
norm = normpdf(x,0,1);

figure;
plot(x,norm)