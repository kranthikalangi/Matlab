clc
clear all;
close all;

ll=input("enter the lower limit :");
sl=input("enter the step size :");
ul=input("enter the upper limit :");

a=input("enter the amplitude of del signal :");

xn=ll:sl:ul;

[y1]=rampwv(a,xn);

stem(xn,y1);