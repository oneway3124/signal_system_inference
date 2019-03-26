% ¾ùÔÈ·Ö²¼£¬°×ÔëÉù
clear
N=50000;
u=rand(1,N);
u_mean=mean(u)
power_u=var(u)
subplot(211)
plot(u(1:100));grid on;
ylabel('u(n)')

subplot(212)
hist(u,50);grid on;
ylabel('histogram u(n)')

