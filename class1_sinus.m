clc, clear, close all;

sampling_period=0.005;
amplitude=2.5;
duration=4;
frequency=2;

t = 0:sampling_period:duration-sampling_period;
y = amplitude*sin(2*pi*t*frequency);

plot(t, y),
xlabel('t'),
ylabel('y'),
grid on,
title('sin wave'),