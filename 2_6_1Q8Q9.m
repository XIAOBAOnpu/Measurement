clc;
clear all;

load('10.MAT');

figure('Name', 'Time domain');
plot(Sy9 - Sy);     % see trans at the very beginning

figure('Name', 'Freq domain');
plot(db(abs(fft(Sy))), 'o');
hold on;
plot(db(abs(fft(Sy9))), 'o');
legend('Sy', 'Sy9');    % see the leakdge
