% 均值为0，方差为1，服从高斯正态分布的白噪声信号
n=200;
stept=4*pi/n;
t=-2*pi:stept:2*pi;
y=sinc(t);
plot(t,y,t,zeros(size(t)));grid on;
