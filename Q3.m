clc
clear all

A = 1; %amplitude
w = pi/10;
N = 40; %number of sampling
n = 1:1:40;

%3a
x = A*exp(1i*w*n);
figure(1);
plot(imag(x),real(x));
axis equal
grid on
xlabel('real part');
ylabel('imagenary part');
title('x[n] in complex plane');

%3b
figure(2);
subplot(2,1,1);
stem(n,real(x));
ylabel('real');
xlabel('number of samples');
title('real part of x[n]')
subplot(2,1,2);
stem(n,imag(x));
ylabel('imaginary');
xlabel('number of samples');
title('imaginary part of x[n]')

%3c
figure(3);
subplot(2,1,1);
stem(n,abs(x)); %magnitude of x[n]
ylabel('magnitude');
xlabel('number of samples');
title('magnitude of x[n]')
subplot(2,1,2);
stem(n,angle(x));
ylabel('phase'); %phase of x[n]
xlabel('number of samples');
title('phase of x[n]')