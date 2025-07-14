clc;
clear all;
close all;
t=-10:1:10;
subplot(2,2,1);
u1=1.*(t>=2);
stem(t,u1);
subplot(2,2,2);
u2=-t>=-3;
stem(t,u2);
subplot(2,2,3);
res=u1-u2;
stem(t,res);

