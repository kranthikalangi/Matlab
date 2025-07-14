clc;
clear all;
close all;

x=[1 2 3];
x2=[1 2 3 4 5 1 4 6 8];
n=-1:1;
n2=1:9;
l=10;
[nz,z]=rzerosp(n,x,l);
[ny,y]=rzerosp(n2,x2,l);
[nz1,z1,nz2,z2]=bothsidezp(n,x,n2,x2);