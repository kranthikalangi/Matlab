% assocative property of convulation
clc;
clear all;
close all;

x1=input('enter the sequence :');
n1=input('enter the time range :');

x2=input('enter the sequence :');
n2=input('enter the time range :');

x3=input('enter the sequence :');
n3=input('enter the time range :');

subplot(421);
stem(n1,x1);

subplot(422);
stem(n2,x2);

subplot(423);
stem(n3,x3);

[yn,y]=convoper(x1,x2,n1,n2);
subplot(424);
stem(yn,y);
title("x1 * x2 ");

[yn3,y3]=convoper(y,x3,yn,n3);
subplot(425);
stem(yn3,y3);
title("(x1 * x2) *  x3");

[yn1,y1]=convoper(x2,x3,n2,n3);
subplot(426);
stem(yn1,y1);
title("x2 * x3 ");

[yn2,y2]=convoper(y1,x1,yn1,n1);
subplot(427);
stem(yn2,y2);
title("(x1 * (x2 * x1)) ");
