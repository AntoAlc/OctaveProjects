function euler1 %ejercicio numero 2 tp
  clear
  clc
  
  x(1)=0;
  y(1)=2;
   
  x2(1)=0;
  y2(1)=2;
  
  h=0.25
  N=1/h;
  
  h2=0.1
  M=1/h2;
    
  %for i=1:N
    %x(i)=h*i
  %end
  
  for i=1:N %paso1(h=0.25)
   fn(i)=2*y(i)-2*x(i)-1;
   k=h*fn(i);
   yn(i)=y(i)+k;
   xn(i)=x(i)+h ;
   
   y(i+1)=yn(i);
   x(i+1)=xn(i);
  end
  x
  y
  
  for i=1:M %paso2(h=0.1)
   fn2(i)=2*y2(i)-2*x2(i)-1;
   k2=h2*fn2(i);
   yn2(i)=y2(i)+k2;
   xn2(i)=x2(i)+h2;
   
   y2(i+1)=yn2(i);
   x2(i+1)=xn2(i);
  end
  
  x2
  y2
  
  hold on
  plot (x, y, '--b')
  plot(x2, y2, '--r')
  title('Euler-ej2')
  legend('h=0.25','h=0.1' )
  grid on
endfunction
