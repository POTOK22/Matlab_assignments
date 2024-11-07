clc, clear, close all;

load("signal.mat");
t=t_and_s(:,1);
s=t_and_s(:,2);
z=scale(s);

plot(t,s);
hold on;
plot(t,z);

xlabel('t');
ylabel('s');
grid on;
title('scale');
legend('not-scaled','scaled');

save("signal-scaled.txt","z","-ascii");