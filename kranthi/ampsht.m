clc;
clear all
close all;
t=0:1:8;
x=[0 0 1 2 3 4 5 0 0];
subplot(2,2,1);
stem(t,x);
xlabel('time');
ylabel('ampli');
title('original signal');
subplot(2,2,2);
stem(t,x-2);
xlabel('time');
ylabel('ampli');
title('downward shift');
subplot(2,2,3);
stem(t,x+2);
xlabel('time');
ylabel('ampli');
title('uppward shift');
