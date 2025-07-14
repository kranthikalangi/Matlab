clc;
clear all;
close all;

N=30;
fs=6000;
fc=500;

wc=fc/(fs/2);

h=fir1(N,wc,'high',hamming(N+1));
freqz(h,1,1024,fs)
 