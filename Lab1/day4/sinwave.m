function[ny,y]=sinwave(a,f,ts)
ny=0:ts:1;
y=[];
for i=0:ts:1
    b=0;
    b=a*sin(2*pi*f*i);
    y=[y b];
end