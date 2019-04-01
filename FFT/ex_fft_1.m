%https://ww2.mathworks.cn/help/matlab/math/fourier-transforms.html?s_tid=srchtitle
% david.wang.wei  Ph.D # scu
% https://github.com/oneway3124/signal_system_inference
t = 0:1/50:10-1/50;                     
x = sin(2*pi*15*t) + sin(2*pi*20*t);
subplot(231);
plot(t,x)
title('x = sin(2*pi*15*t) + sin(2*pi*20*t)');

% 时间到频率的变换
y = fft(x);     
f = (0:length(y)-1)*50/length(y);
subplot(232);
plot(f,abs(y))
title('Magnitude')
xlabel('f (Hz)')
% 镜像移动
n = length(x);                         
fshift = (-n/2:n/2-1)*(50/n);
yshift = fftshift(y);
subplot(233);
plot(fshift,abs(yshift))
xlabel('f (Hz)')

%功率谱
xnoise = x + 2.5*gallery('normaldata',size(t),4);
ynoise = fft(xnoise);
ynoiseshift = fftshift(ynoise);    
power = abs(ynoiseshift).^2/n; 
subplot(234)
plot(fshift,power)
title('Power')

% 以加利福尼亚海岸的水下麦克风所收集的音频数据为例。在康奈尔大学生物声学研究项目维护的库中可以找到这些数据。载入包含太平洋蓝鲸鸣声的文件 bluewhale.au，并对其中一部分数据进行格式化。可使用命令 sound(x,fs) 来收听完整的音频文件。

