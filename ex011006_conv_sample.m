% ÏßÐÔ¾í»ý
N=5;M=5;L=N+M-1;
x=[0,1,2,3,4]; nx=0:N-1;
h=[2,3,1,5,7]; nh=0:M-1;
y=conv(x,h)
ny=0:L-1;
subplot(231);stem(nx,x,'.');xlabel('n');ylabel('x(n)');grid on;
subplot(232);stem(nh,h,'.');xlabel('n');ylabel('h(n)');grid on;
subplot(233);stem(ny,y,'.');xlabel('n');ylabel('y(n)');grid on;
