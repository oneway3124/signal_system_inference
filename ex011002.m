% ���ȷֲ�����ֵΪ0������Ϊ0.01 ������
p=0.01;
N=50000;
u=rand(1,N);
u=u-mean(u);
a=sqrt(12*p);
u1=u*a;
power_ul=dot(u1,u1)/N  %dotΪ�ڻ�
plot(u1(1:100));grid on;


