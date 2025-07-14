clc;
close all;
clear all;
x1=input('enter the sequence 1');
x2=input('enter the sequence 1');
lx=length(x1);
ly=length(x2);
N=max(lx,ly);
x1=[x1,zeros(1,N-lx)];
x2=[x2,zeros(1,N-ly)];
y=zeros(1,N);
for n=1:N
        for k=1:N
            y(n)=y(n)+x1(k)*x2(mod(n-k,N)+1);
        end
end
disp(y);
