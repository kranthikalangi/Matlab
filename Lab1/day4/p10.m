clc;
clear all;
close all;

x1=input('enter the sequence :');
%n1=input('enter the time range :');

x2=input('enter the sequence :');
%n2=input('enter the time range :');
N=length(x1)+length(x2)-1;

subplot(421);
stem(x1);

subplot(422);
stem(x2);

y5=conv(x1,x2);
subplot(424);
stem(y5);

l1=length(x1);
l2=length(x2);
l=l1+l2-1;
x1=[x1,zeros(1,l2-1)];
x2=[x2,zeros(1,l1-1)];

y1=fft(x1);
y2=fft(x2);

y3=y1.*y2;

y4=ifft(y3);
subplot(423);
stem(y4);


