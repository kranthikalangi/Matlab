function[ny,y]=decimoper(n,x,l)

k=floor(max(n))/l
ny=min(n):k;
y=[];
for i=1:length(ny)
    a=x((i*l)-(l-1));
    y=[y a];
end
end
