function[ny,y]=sinwav(a,f)
nx=0:1/f:1;
ny=nx;
y=a*sin(2*pi*f*nx);
end