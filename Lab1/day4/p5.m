% commutative property convulation
clc;
clear all;
close all;

x1=input('enter the sequence :');
n1=input('enter the time range :');

x2=input('enter the sequence :');
n2=input('enter the time range :');

subplot(411);
stem(n1,x1);

subplot(412);
stem(n2,x2);

[yn,y]=convoper(x1,x2,n1,n2);
subplot(413);
stem(yn,y);
title("x1 * x2 ");

[yn1,y1]=convoper(x2,x1,n2,n1);
subplot(414);
stem(yn1,y1);
title("x2 * x1 ");

