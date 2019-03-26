% 均值为0，方差为1，服从高斯正态分布的白噪声信号
p=0.1;
N=500000;
u=randn(1,N);a=sqrt(p);
u=u*a;power_u=var(u);
subplot(211)
plot(u1(1:100));

subplot(212)
hist(u1,50);

