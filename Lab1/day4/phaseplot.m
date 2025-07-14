function[ny,y]=phaseplot(nx,x1)
ny=nx;
y=[];
  for i=1:length(nx)
      z=0;
      z=atand(imag(x1(i))/real(x1(i)));
      y=[y z];
  end    

end