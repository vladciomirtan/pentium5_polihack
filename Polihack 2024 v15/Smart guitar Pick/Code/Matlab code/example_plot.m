%% Reading .wav files:
clc
clear
close all

% [y,Fs] = audioread("Note0.wav");
% info = audioinfo("Note0.wav");
% sound(y,Fs)
% 
% t = 0 : seconds(1/Fs) : seconds(info.Duration);
% t = t(1:end-1);
% 
% plot(t, y, 'r'); grid;
% xlabel('Time');
% ylabel('Audio Signal');

figure(1);

subplot(421);
[y,Fs] = audioread("Note0.wav");
info = audioinfo("Note0.wav");
sound(y, Fs)
t = 0 : seconds(1/Fs) : seconds(info.Duration);
t = t(1 : end - 1);
plot(t, y, 'r'); grid;
title('Note 0');
xlabel('Time'); ylabel('Audio Signal');

% Compute the FFT
n = 2^nextpow2(length(t));  % Next power of 2 from length of signal (for efficient FFT computation)
Y = fft(y, n);
f = Fs*(0:(n/2))/n; % Frequency vector
P = abs(Y/n).^2;    % Power of the frequency components

% Plot the frequency domain signal
subplot(422);     % Create subplot (2 rows, 1 column, second plot)
plot(f, P(1:n/2+1)); grid;
axis([0 1000 0 1e-3]);
title('Frequency Domain Signal');
xlabel('Frequency (Hz)');
ylabel('Power');

subplot(423);
[y,Fs] = audioread("Note3.wav");
info = audioinfo("Note3.wav");
sound(y, Fs)
t = 0 : seconds(1/Fs) : seconds(info.Duration);
t = t(1 : end - 1);
plot(t, y, 'r'); grid;
title('Note 0');
xlabel('Time'); ylabel('Audio Signal');

% Compute the FFT
n = 2^nextpow2(length(t));  % Next power of 2 from length of signal (for efficient FFT computation)
Y = fft(y, n);
f = Fs*(0:(n/2))/n; % Frequency vector
P = abs(Y/n).^2;    % Power of the frequency components

% Plot the frequency domain signal
subplot(424);     % Create subplot (2 rows, 1 column, second plot)
plot(f, P(1:n/2+1)); grid;
axis([0 1000 0 1e-3]);
title('Frequency Domain Signal');
xlabel('Frequency (Hz)');
ylabel('Power');

subplot(425);
[y,Fs] = audioread("Note5.wav");
info = audioinfo("Note5.wav");
sound(y, Fs)
t = 0 : seconds(1/Fs) : seconds(info.Duration);
t = t(1 : end - 1);
plot(t, y, 'r'); grid;
title('Note 0');
xlabel('Time'); ylabel('Audio Signal');

% Compute the FFT
n = 2^nextpow2(length(t));  % Next power of 2 from length of signal (for efficient FFT computation)
Y = fft(y, n);
f = Fs*(0:(n/2))/n; % Frequency vector
P = abs(Y/n).^2;    % Power of the frequency components

% Plot the frequency domain signal
subplot(426);     % Create subplot (2 rows, 1 column, second plot)
plot(f, P(1:n/2+1)); grid;
axis([0 1000 0 1e-3]);
title('Frequency Domain Signal');
xlabel('Frequency (Hz)');
ylabel('Power');

subplot(427);
[y,Fs] = audioread("Note65.wav");
info = audioinfo("Note65.wav");
sound(y, Fs)
t = 0 : seconds(1/Fs) : seconds(info.Duration);
t = t(1 : end - 1);
plot(t, y, 'r'); grid;
title('Note 0');
xlabel('Time'); ylabel('Audio Signal');

% Compute the FFT
n = 2^nextpow2(length(t));  % Next power of 2 from length of signal (for efficient FFT computation)
Y = fft(y, n);
f = Fs*(0:(n/2))/n; % Frequency vector
P = abs(Y/n).^2;    % Power of the frequency components

% Plot the frequency domain signal
subplot(428);     % Create subplot (2 rows, 1 column, second plot)
plot(f, P(1:n/2+1)); grid;
axis([0 1000 0 1e-3]);
title('Frequency Domain Signal');
xlabel('Frequency (Hz)');
ylabel('Power');