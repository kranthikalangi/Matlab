function[ny,y]=magplot(nx,x1)
ny=nx;
y=[];
  for i=1:length(nx)
      z=0;
      z=sqrt(power(real(x1(i)),2)+power(imag(x1(i)),2));
      y=[y z];
  end    

end