%https://ww2.mathworks.cn/help/matlab/math/fourier-transforms.html?s_tid=srchtitle
% david.wang.wei  Ph.D # scu
% https://github.com/oneway3124/signal_system_inference
t = 0:1/50:10-1/50;                     
x = sin(2*pi*15*t) + sin(2*pi*20*t);
subplot(231);
plot(t,x)
title('x = sin(2*pi*15*t) + sin(2*pi*20*t)');

% ʱ�䵽Ƶ�ʵı任
y = fft(x);     
f = (0:length(y)-1)*50/length(y);
subplot(232);
plot(f,abs(y))
title('Magnitude')
xlabel('f (Hz)')
% �����ƶ�
n = length(x);                         
fshift = (-n/2:n/2-1)*(50/n);
yshift = fftshift(y);
subplot(233);
plot(fshift,abs(yshift))
xlabel('f (Hz)')

%������
xnoise = x + 2.5*gallery('normaldata',size(t),4);
ynoise = fft(xnoise);
ynoiseshift = fftshift(ynoise);    
power = abs(ynoiseshift).^2/n; 
subplot(234)
plot(fshift,power)
title('Power')

% �Լ��������Ǻ�����ˮ����˷����ռ�����Ƶ����Ϊ�����ڿ��ζ���ѧ������ѧ�о���Ŀά���Ŀ��п����ҵ���Щ���ݡ��������̫ƽ�������������ļ� bluewhale.au����������һ�������ݽ��и�ʽ������ʹ������ sound(x,fs) ��������������Ƶ�ļ���

