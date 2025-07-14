clc;
clear all;
close all;
x=input('enter the sequence as a vector');
syms z n
X=0;
for i=1:length(x)
    X=X+x(i)*z^(-i+1);
end
disp(X);
pwr=series(X,z);
disp(pwr);