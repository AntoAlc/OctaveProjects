function edo_iniciales2  
  %%NO FUNCIONA
  %edo con valores iniciales y reduccion  de sistemas
  
  clear
  clc
  
  %w=1/2   %%euler mejorado
  w=1     %%euler modificado
  %w=0 %%euler
    
  t=0
  v=2
  alpha=0.1
  
  %y=[v; alpha]
    
         
  h=0.1
  N= 10 %1/h
 
  
  for i=1:N
   y=[v; alpha]
   alpha2=-12*alpha - 7*v + 100*t
   fn=[alpha;
        alpha2]
   k1=h*fn 
   if w~=0
     tg=t+ (h/(2*w))
     yg=v+(k1 /(2 *w))
     alpha2g=-12*alpha - 7 *vg + 100 *tg
     fg=[alpha;
        alpha2g]
     
     k2=h*fg
     vn=v+(1-w)*k1+w*k2
     
   elseif
     vn=v+k1  
    
   end
   v=vn
   t=t+h

end

  if w~=0
    tg
    vg
    t
    v
    k1
    k2
    alpha
    
  end
  
  hold on
  plot (t, v, '--b')
  %if w~=0
   % plot(tg, vg, '--r')
  %end
  plot(alpha,t, '--r')
  plot(alpha, v, '--k')
  title('Runge Kutta')
endfunction
