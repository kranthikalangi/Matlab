clc;
clear all;
close all;

a1=input('enter the sequence : ');
n1=input('enter the time range : ');

subplot(321);
stem(n1,a1);
subplot(322);
plot(n1,a1);

[yn,y]=trevsig(a1,n1);
subplot(323);
stem(yn,y);
subplot(324);
plot(yn,y);

[yn1,y1]=amprevsig(a1,n1);
subplot(325);
stem(yn1,y1);
subplot(326);
plot(yn1,y1);