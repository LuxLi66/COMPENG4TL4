clc
close all

%load audio file
[y,fs] = audioread('defineit.wav');
N = length(y);
time = (0:N-1)/fs;

%4b
figure(1);
subplot(2,1,1);
plot(time,y);
xlabel('Time(s)');
ylabel('Amplitude of sound');
title('Audio in Time Domain');
subplot(2,1,2);
histogram(y,50);
xlabel('Intervals of Amlitude');
ylabel('Number');
title('Histogram of Audio');
info = audioinfo('defineit.wav');

%quantizer


%4e
y_scaled = y./max(y); %divide by the maximum amplitude
figure(2);
subplot(4,1,1);
plot(time,y_scaled);
xlabel('Time(s)');
ylabel('Amplitude of sound');
title('Scaled Audio in Time Domain');
subplot(4,1,2);
histogram(y_scaled,50);
xlabel('Intervals of Amlitude');
ylabel('Number');
title('Histogram of Scaled Audio');

%4f
y3bit = quantization(y_scaled,3);
subplot(4,1,3);
plot(time,y3bit);
xlabel('Time(s)');
ylabel('Amplitude of sound');
title('Quantized Scaled Audio in Time Domain');
subplot(4,1,4);
histogram(y3bit,50);
xlabel('Intervals of Amlitude');
ylabel('Number');
title('Quantized Histogram of Scaled Audio');
e = y_scaled - y3bit; % error
figure(3);
subplot(2,1,1);
plot(time,e);
xlabel('Time(s)');
ylabel('Amplitude of errors');
title('errors betwen yscaled and y3bits');
subplot(2,1,2);
histogram(e,50);
xlabel('Intervals of Amlitude');
ylabel('Number');
title('Histogram of errors');

%4g
y_pclip = y./(max(y)/1.5);
figure(4);
subplot(4,1,1);
plot(time,y_pclip);
xlabel('Time(s)');
ylabel('Amplitude of sound');
title('Rescaled Audio in Time Domain');
subplot(4,1,2);
histogram(y_pclip,50);
xlabel('Intervals of Amlitude');
ylabel('Number');
title('Histogram of Rescaled Audio');
y3bit_pclip = quantization(y_pclip,3);
subplot(4,1,3);
plot(time,y3bit_pclip);
xlabel('Time(s)');
ylabel('Amplitude of sound');
title('Quantized Rescaled Audio in Time Domain');
subplot(4,1,4);
histogram(y3bit_pclip,50);
xlabel('Intervals of Amlitude');
ylabel('Number');
title('Quantized Histogram of Rescaled Audio');
e_re = y_pclip - y3bit_pclip; % error
figure(5);
subplot(2,1,1);
plot(time,e_re);
xlabel('Time(s)');
ylabel('Amplitude of errors');
title('errors betwen yrescaled and y3bitsclip');
subplot(2,1,2);
histogram(e_re,50);
xlabel('Intervals of Amlitude');
ylabel('Number');
title('Histogram of errors');
