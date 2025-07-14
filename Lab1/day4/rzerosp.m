function [ny,y]=rzerosp(nx,x,l)
a=l-length(x);
ny=min(nx):max(nx)+a;       
y=[x,zeros(1,a)];

end