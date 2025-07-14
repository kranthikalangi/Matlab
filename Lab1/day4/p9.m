clc;
clear all;
close all;

x1=input('enter the sequence :');
n1=input('enter the time range :');

subplot(211);
stem(n1,x1);

[ny4,y4]=idftseq(x1,n1);

subplot(212);
stem(ny4,y4);
title("ifft");