clc;
clear all;
close all;

x=input('enter the sequence : ');
n=input('enter the time range : ');
l=input('enter the decimation factor : ');

subplot(121);
stem(n,x);

[yn,y]=decimoper(n,x,l);

subplot(122)
stem(yn,y);