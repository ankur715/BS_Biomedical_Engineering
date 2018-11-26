dt=1/100;
et=4;
t=0:dt:et;
y=3*sin(4*2*pi*t)+5*sin(2*2*pi*t);

subplot(2,1,1);
plot(t,y); grid on
axis([0 et -8 8]);
xlabel('Time(s)');
ylabel('Amplitude');


