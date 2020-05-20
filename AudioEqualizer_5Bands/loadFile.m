%project File
[y,Fs] = audioread('BE_OE.mp3');
Ts = 1/Fs;
%sound(y,Fs);


Hd = (1 * H1)+ (1 * H2) + (1 * H3) + (1 * H4) + (1 * H5);
[h,w] = freqz(Hd,1);
hFinal = abs(h);
mag_dB = 20.*log10(hFinal);

subplot(2,1,1);
plot(w, mag_dB);
grid on;
title('Magnitude Response of the Eqalizer with gain of 1');
xlabel('Angular Frequency (kHz)');
ylabel('Magnitude (dB)');

Hd = (5 * H1)+ (4 * H2) + (3 * H3) + (2 * H4) + (1 * H5);
[h,w] = freqz(Hd,1);
hFinal = abs(h);
mag_dB = 20.*log10(hFinal);

subplot(2,1,2);
plot(w, mag_dB);
grid on;
title('Magnitude Response of the Eqalizer with varied gain');
xlabel('Angular Frequency (kHz)');
ylabel('Magnitude (dB)');


