%https://ww2.mathworks.cn/help/matlab/ref/fft.html
% david.wang.wei  Ph.D # scu
% https://github.com/oneway3124/signal_system_inference
Fs = 1000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 1500;             % Length of signal
t = (0:L-1)*T;        % Time vector
S = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t);
X = S + 2*randn(size(t));

subplot(221);
plot(1000*t(1:50),S(1:50))
title('S = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t);')
xlabel('t (ms)')
ylabel('S(t)')
% sin signal and random noise
subplot(222);
plot(1000*t(1:50),X(1:50))
title('X=S+Zero-Mean Random Noise')
xlabel('t (milliseconds)')
ylabel('X(t)')





% sin with noise frequency analysis
Y = fft(X);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:(L/2))/L;

subplot(224);
plot(f,P1) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')

% sin frequency analysis
Y = fft(S);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

subplot(223);
plot(f,P1) 
title('Single-Sided Amplitude Spectrum of S(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')
