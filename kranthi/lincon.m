clc;
close all;
clear all;

x1=input('enter the seq 1');
x2=input('enter the seq 2');
subplot(2,2,1);
stem(x1);
subplot(2,2,2);
stem(x2);
lx=length(x1);
ly=length(x2);
s=lx+ly-1;
y=zeros(1,s);
for n=1:s
    for k=1:n
        if k<=lx && (n-k+1)<=ly
             y(n)=y(n)+x1(k).*x2(n-k+1);
        end 
    end 
end
disp(y);
disp(conv(x1,x2));