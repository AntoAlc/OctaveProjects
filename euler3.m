function euler3 %ejercicio numero 3 tp
 
  clear
  clc
  
  
  %w=1/2   %%euler mejorado
  w=1     %%euler modificado
  %w=0 %%euler
  
  x(1)=0;
  y(1)=4;
  
  h=0.001
  N=1/h
  
 
  for i=1:N 
   fn(i)=((1/2)*y(i))+((1/2)*x(i));
   k1=h*fn(i);
   if w~=0
     xg(i)=x(i)+ (h/(2*w));
     yg(i)=y(i)+(k1/(2*w));
     fg(i)=2*yg(i)-2*xg(i)-1;
     k2=h*fg(i);
     y(i+1)=y(i)+(1-w)*k1+w*k2;
   elseif
   y(i+1)=y(i)+k1  ;
   end
   x(i+1)=x(i)+h;

end

  if w~=0
    xg
    yg
    x
    y
    k1
    k2
    
  end
  
  hold on
  plot (x, y, '--b')
  if w~=0
    plot(xg, yg, '--r')
  end
  
  title('Runge Kutta')

  
endfunction


