clc;
clear all;
close all;

n1=input('enter your sequence range:');
x1=input('enter your sequence:');
a=input('enter your decimation value:');
x2=x1(1:a:length(x1));
display(x2)