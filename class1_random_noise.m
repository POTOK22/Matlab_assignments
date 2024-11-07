clc, clear, close all;

sampling_period=0.005;
amplitude=2.5;
duration=4;
frequency=2;
x=0:sampling_period:duration-sampling_period;
y=amplitude*sin(2*pi*x*frequency);

mean_value=0;
distribution=0.1;
noise=distribution.*randn(size(y))+mean_value;
g=y+noise;

plot(x, y, 'r');
hold on;
plot(x, noise, 'g');
hold on;
plot(x, g, 'b');

xlabel('x');
ylabel('y');
grid on;
title('random noise');
legend('sin w/o noise','noise', 'sin w/ noise');