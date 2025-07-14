clc;
clear all;
close all;

n0=-2:6;
x0=[0 0 1 2 3 2 1 0 0];

subplot(8,1,1);
stem(n0,x0);

n1=n0+3;
x1=x0;

subplot(8,1,2);
stem(n1,x1);

n2=n0+2;
x2=x0;

subplot(8,1,3);
stem(n2,x2);

n3=-n0-3;
x3=x0;

subplot(8,1,4);
stem(n3,x3);

n4=-n0+2;
x4=x0;

subplot(8,1,5);
stem(n4,x4);

n5=n0/2;
x5=x0;

subplot(8,1,6);
stem(n5,x5);

n6=n0*3;
x6=x0;

subplot(8,1,7);
stem(n6,x6);

n7=n0;
x7=2*x0;

subplot(8,1,8);
stem(n7,x7);


