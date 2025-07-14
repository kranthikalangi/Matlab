clc;
clear all;
close all;

a1=input('enter the sequence 1 : ');
n1=input('enter the time range 1: ');

b1=input('enter the sequence 2: ');
n2=input('enter the time range 2: ');


[yn,y]=addsig(a1,b1,n1,n2);

[yn1,y1]=subsig(a1,b1,n1,n2);

[yn2,y2]=mulsig(a1,b1,n1,n2);

subplot(521);
stem(n1,a1);
subplot(522);
plot(n1,a1);

subplot(523);
stem(n2,b1);
subplot(524);
plot(n2,b1);

subplot(525);
stem(yn,y);
subplot(526);
plot(yn,y);

subplot(527);
stem(yn1,y1);
subplot(528);
plot(yn1,y1);

subplot(529);
stem(yn2,y2);
subplot(5,2,10);
plot(yn2,y2);
