clc;
clear all;
close all;

x=input('enter the sequence :');
n=input('enter the time range : (only positive range ): ');
l=input('enter the interpolation factor : ');
m=input('enter the decimation factor : ');

subplot(321)
stem(n,x);
subplot(322)
plot(n,x);

[yn,y]=interoper(n,x,l);

subplot(323)
stem(yn,y);
subplot(324)
plot(yn,y);

[yn1,y1]=decimoper(n,x,m);

subplot(325)
stem(yn1,y1);
subplot(326)
plot(yn1,y1);
