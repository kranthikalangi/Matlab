function[ny,y]=sinwav(nx,a,f)
ny=0:0.01:nx;
y=[];
for i=1:0.01:nx+1
    b=0;
    b=a*sin(2*pi*f*i);
    y=[y b];
end