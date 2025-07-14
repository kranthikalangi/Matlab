clc;
clear all;
close all;

xn1=input('enter the time range: ');
a=input('enter the amp of exp signal: ');
b=input('enter the exponent term of the exp signal: ');
[yn,y]=expsig(a,b,xn1);
subplot(211)
stem(yn,y);

subplot(212)
plot(yn,y);