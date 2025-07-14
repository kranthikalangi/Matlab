clc;
clear all;
close all;

f=input('enter the frequency: ');
a=input('enter the amp of signal: ');

[yn,y]=sinwave(a,f);
subplot(211)
stem(yn,y);

subplot(212)
plot(yn,y);