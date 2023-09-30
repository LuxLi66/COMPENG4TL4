close all;clear all;clc

[data,fs]=audioread('convolution.wav');
%[data,fs]=audioread('countdown.mp3');

x = data(:,1);
subplot(3,1,1);
plot(x);
ylabel('x[n]')

% sound(x,fs);    %Input sound
% pause()

delay=75000;
% delay=7500;

h=zeros(length(x),1);
h(10)=0.8;
h(delay)=0.4;
%h(2*delay)=0.2;

addpath('rir');
% h=rir(44100, [19 18 1.6], 12, 0.3, [20 19 21], [5 2 1]);

subplot(3,1,2);     
plot(h);
ylabel('h[n]')

y=conv(x,h);       %Convolution
subplot(3,1,3);
plot(y(1:length(x)));           %Echoed sound plot
ylabel('y[n]')

sound(y,fs);    %Echoed sound