clc;
clear all;
close all;
n=input('enter n value');
t=-n:1:n;
x=t.*(t>=0);
subplot(2,1,1);
stem(t,x);
xlabel('time');
ylabel('amplitude');
title('ramp signal');
subplot(2,1,2);
plot(t,x);
xlabel('time');
ylabel('amplitude');
title('ramp signal');
 