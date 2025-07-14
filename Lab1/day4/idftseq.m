function[ny,y]=idftseq(x,n)

ny=n;
N=length(ny);
y=[];
for k=1:N
    sum=0;
    for l=1:N
        sum=sum+(1/N*(x(l)*exp((1i*2*pi*(k-1)*(l-1))/N)));
    end
    y=[y sum];
end

end