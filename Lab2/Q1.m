%Zhengda Li
%McMaster University
%400324486

clc;
clear;
close all;

N = 10; %number of samples
t = (-N:1:N); %step

u1 = t>=0;
u2 = t>=10;
x = u1-u2;
x(x==0)=[];%remove zeros
t_x=0:1:length(x)-1;
figure(1);
stem(t_x,x);
ylabel('Amplitude');
xlabel('Number of Samples');
title('u[n]-u[n-10]');

a=conv(x,x);
b=conv(a,x);
c=conv(b,x);
d=conv(c,x);
t_a=0:1:length(a)-1;
t_b=0:1:length(b)-1;
t_c=0:1:length(c)-1;
t_d=0:1:length(d)-1;
figure(2);
subplot(4,1,1);
stem(t_a,a);
ylabel('Amplitude');
xlabel('Number of Samples');
title('a[n]');
subplot(4,1,2);
stem(t_b,b);
ylabel('Amplitude');
xlabel('Number of Samples');
title('b[n]');
subplot(4,1,3);
stem(t_c,c);
ylabel('Amplitude');
xlabel('Number of Samples');
title('c[n]');
subplot(4,1,4);
stem(t_d,d);
ylabel('Amplitude');
xlabel('Number of Samples');
title('d[n]');
