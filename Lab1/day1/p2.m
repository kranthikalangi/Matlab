clc;
clear all;
close all;

xn1=input('enter the time range: ');
a=input('enter the amp of step signal: ');
[yn,y]=stepsig(xn1,a);
stem(yn,y);