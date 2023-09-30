clc
clear all

Fs = 100; %sampling freq
A = 5; %amplitude
tstep = 1/Fs;
tt = 0:tstep:0.5; %from 0 to 0.5s
Fsig = [10, 25, 40, 60, 40, 60]; % for signal
sigName = ['A','B', 'C', 'D', 'E', 'F'];

figure(1),
for i = 1:4
    subplot(2,2,i);
    y = A*cos(2*pi*Fsig(i)*tt);
    stem(tt,y);
    title('Stem Plot of Cosine Signal ', sigName(i));
    xlabel('time(s)');
    ylabel('Amplitude');
end

figure(2),
for i = 5:6
    subplot(2,1,i-4);
    y = A*cos(2*pi*Fsig(i)*tt+(pi/2));
    stem(tt,y);
    title('Stem Plot of Cosine Signal ', sigName(i));
    xlabel('time(s)');
    ylabel('Amplitude');
end

