clc;
clear all;
close all;

xn1=input('enter the time range: ');
a=input('enter the amp of impluse signal: ')

[yn,y]=impsig(xn1,a);
stem(yn,y);