
% Plot the time domain signal
figure;
subplot(211);
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
subplot(2,1,2);     % Create subplot (2 rows, 1 column, second plot)
plot(f, P(1:n/2+1));
title('Frequency Domain Signal');
xlabel('Frequency (Hz)');
ylabel('Power');

% If you want to plot magnitude in dB, you could alternatively plot:
% plot(f, 20*log10(abs(Y(1:n/2+1)/n)));