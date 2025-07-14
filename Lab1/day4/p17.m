clc;
close all;
clear all;

t=0:0.01:1;
x1=sin(2*pi*2*t);
x2=sin(2*pi*5*t);
x=x1+x2;
y=fft(x);
y1=abs(y);
y2=angle(y);

subplot(521)
stem(x1);
subplot(522)
plot(x1);

subplot(523)
stem(x2);
subplot(524)
plot(x2);

subplot(525)
stem(y);
subplot(526)
plot(y);

subplot(527)
stem(y1);
subplot(528)
plot(y1);

subplot(529)
stem(y2);
subplot(5,2,10)
plot(y2);
