clc;
close all;
clear all;
x=input('enter the sequence');
ln=length(x);
X=0;
z=sym('Z');
for k=1:ln
    X=X+x(k)*z^(-k+1);
end
disp(X)