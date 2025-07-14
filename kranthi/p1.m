clc;
clear all;
close all;
x=input('enter the sequence:');
n=length(x);
y=zeros(1,n);
for i=n:-1:1
    y(i)=x(n-i+1);
end
disp(y)
