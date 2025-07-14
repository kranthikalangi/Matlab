clc;
clear all;
close all;

x=input('enter the sequence :');
n=input('enter the time range :');

subplot(321)
stem(n,x);
subplot(322)
plot(n,x);

[ny,y]=dftseq(x,n);
[ny1,y1]=idftseq(y,ny);
subplot(323)
stem(ny,y);
subplot(324)
plot(ny,y);

subplot(325)
stem(ny1,y1);
subplot(326)
plot(ny1,y1);
