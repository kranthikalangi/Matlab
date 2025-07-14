clc;
clear all;
close all;

xn1=input('enter the time range: ');
a=input('enter the amp of signal: ');
f=input('enter the frequency ');
b=input('enter the exponent term of the exp signal: ');


[yn1,y1]=impsig(xn1,a);

[yn2,y2]=stepsig(xn1,a);

[yn3,y3]=rampsig(xn1);

[yn4,y4]=sinwav(a,f);

[yn5,y5]=expsig(a,b,xn1);

subplot(521)
stem(yn1,y1);
subplot(522)
plot(yn1,y1);

subplot(523)
stem(yn2,y2);
subplot(524)
plot(yn2,y2);

subplot(525)
stem(yn3,y3);
subplot(526)
plot(yn3,y3);

subplot(527)
stem(yn4,y4);
subplot(528)
plot(yn4,y4);

subplot(529)
stem(yn5,y5);
subplot(5,2,10)
plot(yn5,y5);
