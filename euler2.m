function euler2 %Runge Kutta
  clear
  clc
  w=1/2   %%euler mejorado
  %w=1     %%euler modificado
  
  x(1)=0;
  y(1)=2;
  
  h=0.25
  N=1/h;
  
 
  for i=1:N %paso1(h=0.25)
   fn(i)=2*y(i)-2*x(i)-1;
   k1=h*fn(i);
   xg(i)=x(i)+ (h/(2*w));
   yg(i)=y(i)+(k1/(2*w));
   fg(i)=2*yg(i)-2*xg(i)-1;
   k2=h*fg(i);
   xn(i)=x(i)+h ;
   y(i+1)=y(i)+(1-w)*k1+w*k2;
   x(i+1)=xn(i);
   
  end
  
  x
  y
  k1
  k2
  xg
  yg 
  
  hold on
  plot (x, y, '--b')
  plot(xg, yg, '--r')
  title('Euler mejorado')
  legend('x-y','xg-yg' )
  
endfunction
