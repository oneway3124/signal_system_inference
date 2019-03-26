% 均匀分布，均值为0，功率为0.01 白噪声
p=0.01;
N=50000;
u=rand(1,N);
u=u-mean(u);
a=sqrt(12*p);
u1=u*a;
power_ul=dot(u1,u1)/N  %dot为内积
plot(u1(1:100));grid on;


