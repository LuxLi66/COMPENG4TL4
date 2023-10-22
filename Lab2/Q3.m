%Zhengda Li
%McMaster University
%400324486

clc;
clear;
close all;

N = -1000:1000; % sample rate = 100Hz
w = [-3*pi,3*pi];
t = -10:1:10;
im1 = t==0;
im2 = t==1;
im3 = t==2;
h1 = (1/4)*im1+(1/2)*im2+(1/4)*im3;
h2 = -(1/4)*im1+(1/2)*im2-(1/4)*im3;
n = -ceil((length(h1)-1)/2):floor((length(h1)-1)/2);
W = w(1):(w(2)-w(1))/(length(N)-1):w(2);
X1 = calculate_dtft(h1,w);
X2 = calculate_dtft(h2,w);

figure(1),
subplot(2,1,1);
stem(n,h1);
ylabel('Amplitude');
xlabel('number of samples--->');
title('h1[n]');
subplot(2,1,2);
stem(n,h2);
ylabel('Amplitude');
xlabel('number of samples--->');
title('h2[n]');

figure(2),
subplot(2,1,1);
plot(W,abs(X1));
xlabel('w(rad/s)');
ylabel('Magnitude');
title('Impulse Response H1 in Frequency Domain');
subplot(2,1,2);
plot(W,abs(X2));
xlabel('w(rad/s)');
ylabel('Magnitude');
title('Impulse Response H2 in Frequency Domain');