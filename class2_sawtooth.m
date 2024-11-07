clc; clear, close all;

k=load("form.dat");
sampling_period=0.00001;
amplitude=5.12;
frequency=5;
duration=2;
x=0:sampling_period:duration-sampling_period;
y=(amplitude*sawtooth(2*pi*x*frequency)+amplitude)/2;

ff=formfactor(y,x);
% value is not dependent on amplitude or frequency
ff2=formfactor(k,x);

subplot(2,1,1);
plot(x,y);
xlabel('x');
ylabel('y');
grid on;
title('sawtooth');

subplot(2,1,2);
plot(x,k);
xlabel('x');
ylabel('y');
grid on;
title('form-signal');