clc;
clear all;
close all;

x1=input('enter the sequence :');
%n1=input('enter the time range :');

x2=input('enter the sequence :');
%n2=input('enter the time range :');

subplot(421);
stem(x1);
subplot(422)
plot(x1);

subplot(423);
stem(x2);
subplot(424)
plot(x2);

[y]=convoper(x1,x2);
subplot(425);
stem(y);
subplot(426)
plot(y);

[y1]=corroper(x1,x2);
subplot(427)
stem(y1);
subplot(428)
plot(y1);