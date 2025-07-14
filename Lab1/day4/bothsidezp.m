function[ny1,y1,ny2,y2]=bothsidezp(n1,a1,n2,b1)

lb=min(min(n1),min(n2));
ub=max(max(n1),max(n2));

xn=lb:ub;
ny1=xn;
ny2=xn;
y1=[zeros(1,min(n1)-lb),a1,zeros(1,ub-max(n1))];
y2=[zeros(1,min(n2)-lb),b1,zeros(1,ub-max(n2))];

end
