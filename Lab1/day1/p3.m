clc;
clear all;
close all;

xn1=input('enter the time range: ');
[yn,y]=rampsig(xn1);
stem(yn,y);