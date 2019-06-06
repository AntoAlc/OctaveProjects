function RungeKutta
  clear
  clc
  w2=1/2   %%euler mejorado
  w=1     %%euler modificado
  
  x(1)=0;
  y(1)=2;
  
  
  x2(1)=0;
  y2(1)=2;
  h=0.1
  N=1/h;
  
 
  for i=1:N 
   fn(i)=2*y(i)-2*x(i)-1;
   k1=h*fn(i);
   xg(i)=x(i)+ (h/(2*w));
   yg(i)=y(i)+(k1/(2*w));
   fg(i)=2*yg(i)-2*xg(i)-1;
   k2=h*fg(i);
   y(i+1)=y(i)+(1-w)*k1+w*k2;
   x(i+1)=x(i)+h;
  end
  
  for i=1:N 
   fn2(i)=2*y2(i)-2*x2(i)-1;
   k12=h*fn2(i);
   xg2(i)=x2(i)+ (h/(2*w2));
   yg2(i)=y2(i)+(k1/(2*w2));
   fg2(i)=2*yg2(i)-2*xg2(i)-1;
   k22=h*fg2(i);
   y2(i+1)=y2(i)+(1-w)*k12+w2*k22;
   x2(i+1)=x2(i)+h;
   
  end
  
  
  
  hold on
  plot (x, y, '--b')
  plot(xg, yg, '--r')
  plot (x2, y2, '--k')
  plot(xg2, yg2, '--c')
  
  legend('x-y(EulerMod)','xg-yg(EulerMod)','x-y(EulerMejor)','xg-yg(EulerMejor)' )
  
endfunction
