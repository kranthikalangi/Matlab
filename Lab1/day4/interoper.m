function[yn,y]=interoper(n,x,l)

a=length(n)*l-(l-1)+min(n);
yn=min(n):(a-1);

y=zeros(1,length(yn));

for i=1:length(n)
    y((i*l)-(l-1))=x(i);
end

end
