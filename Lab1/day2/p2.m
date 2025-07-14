clc;
clear all;
close all;

a1=input('enter the sequence : ');
n1=input('enter the first time range: ');

subplot(321)
stem(n1,a1);
subplot(322)
plot(n1,a1);

[yn1,y1]=evenfun(a1,n1);
subplot(323);
stem(yn1,y1);
subplot(324)
plot(yn1,y1);


[yn2,y2]=oddfun(a1,n1);
subplot(325);
stem(yn2,y2);
subplot(326)
plot(yn2,y2);

