clear all;
clc;

fs = 8000;          % sampling freq of 8k Hz
f0=1;               % freq resolution of 1 Hz
N=fs/f0;            % to prevent leakdge   to meet f0 = fs/N
n = 0: N-1;
signal = zeros(1, N);
for m = 1: 1: 500
    phase = m*(m+1)*pi/500;                     % Schroeder phase
    signal = signal + sin(2*pi*m*n/N + phase);  % signal
end
signal = signal*0.1/rms(signal);                % Vrms = 100mV
u= signal;

save('u.mat', 'u');
load('u.mat');

figure()
plot(db(abs(fft(signal))))
