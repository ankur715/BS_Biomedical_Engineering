% a script to test the seriesSin function

% make a vector x with 200 elements ranging from -10pi to 10pi

x = linspace(-10*pi,10*pi,200);

% call seriesSin and sin for each element in x

for i=1:length(x)
   [ss(i) iter(i)] = seriesSin(x(i));
   s(i) = sin(x(i));
end

% plot the difference between the values returned by seriesSin and sin.
% They should be very close to 0.

plot(x,ss-s)