clc, clear, close all;
u=load("u.dat");
x=0:0.0001:2-0.0001;
R=0.01;

x_sk=rms_calculate(u);
Power=x_sk^2/R;

plot(x,u);
xlabel('x');
ylabel('u');
grid on;
title('voltage signal');
hold on;

max_power=0;
ws=round(0.1*length(u));
for i=1:length(u)-ws+1
    window=u(i:i+ws-1)*10;
    Power_10=mean(window.^2);
    max_power=max(max_power, Power_10);
end

% c=0;
% for i=1:1:length(u)*0.9+1
%     c=max(rms_calculate(u(i:(length(u)/10.0-1+i))),c);
% end
% Power10=c^2/R;