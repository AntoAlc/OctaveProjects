function edo_iniciales1
 %% Ejercicio 9
  
  clear
  clc
  
  %w=1/2   %%euler mejorado
  w=1     %%euler modificado
  %w=0 %%euler
    
  x=[0; 0]
  y=[5; 3]
  coef=[-10 4;
        -4  0]
  h=0.01
  N=1/h
  
  for i=1:N
    
   fn=coef*y
   k1=h*fn
   if w~=0
     xg=x+ (h/(2*w))
     yg=y+(k1/(2*w))
     
     fg=coef*yg
     
     k2=h*fg
     yn=y+(1-w)*k1+w*k2
     
   elseif
     yn=y+k1  
    
   end
   y=yn
   x=x+h

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
