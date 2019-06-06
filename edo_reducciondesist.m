function edo_reducciondesist
 %Reduccion de sist: ec diferenciales
 %Me dan una ec diferencial de orden distinto de 1
 % Uso: RungeKutta:Euler modificado(w=1) o mejorado (w=1/2) y/o Euler
 clear;
 clc;
 h=0.1;   %paso
 w=0;
 y1(:,1)=[2; 0.1] %condiciones de valores iniciales  
 ysolu(:,1)=y1   %hago esto para poner en la primer componente del vector solucion los valores iniciales
 x=0:h:1 %vector x
 k2=0;
 coef=[0 1; -7 -12]
 
 for i=1:length(x)-1
    b=[0; 100*x(i)]
    f=(coef*y1)+b  %dy/dx
    k1=h*f
    if w~=0
    xG=x(i)+(h/(2*w))
    yG=y1+(k1/(2*w))
    bG=[0; 100*xG]
    fG=(coef*yG)+bG
    k2=h*fG
    endif
    y=y1+((1-w)*k1)+(w*k2)
    y1=y
    xsolu(i)=x(i) 
    ysolu(:,i+1)=y      
    
endfor
   length(x)
   size(ysolu);
   plot(x,ysolu(1,:));
   hold on;
   grid on;
   plot(x,ysolu(2,:));
   
endfunction
