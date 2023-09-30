clc
clear all
close all

N = 30;
n = 1:1:N;

%u[n-14]-u[n-15]
y1 = stepfun(n,14);
y2 = stepfun(n,15);
x1 = y1-y2;
figure(1);
subplot(2,1,1);
stem(n,x1);
ylabel('Amplitude');
xlabel('number of samples');
title('unit step difference function: x1[n]=u[n-14]-u[n-15]');

%u[n-9]-u[n-16]
y3 = stepfun(n,9);
y4 = stepfun(n,16);
x2 = y3-y4;
figure(1);
subplot(2,1,2);
stem(n,x2);
ylabel('Amplitude');
xlabel('number of samples');
title('unit step difference function: x2[n]=u[n-9]-u[n-16]');