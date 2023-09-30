clc
clear all

N = 30; %number of samples
n = 1:1:N;

%unit impulse [n-16]
figure(1);
impulse = n==16;
subplot(2,1,1);
stem(n,impulse);
ylabel('Amplitude');
xlabel('number of samples');
title('discrete unit impulse signal delta[n-16]');

%unit step u[n-12]
y = stepfun(n,12);
subplot(2,1,2);
stem(n,y);
ylabel('Amplitude');
xlabel('number of samples');
title('discrete unit step signal u[n-12]');