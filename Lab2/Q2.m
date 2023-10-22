%Zhengda Li
%McMaster University
%400324486

clc;
clear;
close all;

[impr,fs] = audioread('impr.wav'); %impulse response
N = length(impr);
t = (0:N-1)/fs;
figure(1);
plot(t,impr);
xlabel('Time(s)');
ylabel('Amplitude of sound');
title('Impulse Response in Time Domain');
[y,fs] = audioread('oilyrag.wav'); %speech signal
N_y = length(y);
t_y = (0:N_y-1)/fs;
figure(2);
plot(t_y,y);
xlabel('Time(s)');
ylabel('Amplitude of sound');
title('Original Speech Signal in Time Domain');

convolution = conv(impr,y);
t_c = (0:N+N_y-2)/fs;
figure(3);
plot(t_c,convolution);
xlabel('Time(s)');
ylabel('Amplitude of sound');
title('Convolution Result of Impulse Reponse and Audio in Time Domain');