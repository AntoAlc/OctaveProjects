function tarea_edo
  clear
  clc
  
  N=9 ; %puntos del dominio
  disp('cantidad de puntos del dominio:'); disp(N);
  n=N-2; %puntos interiores
  disp('cantidad de puntos interiores:'); disp(n);
  x(1)=0;
  x(N)=1;
  h=(x(N)-x(1))/(N-1);
  
  for i=1:N
    x(i)=h*i;
  end
  
  disp('el paso h es:'); disp(h);
  u(1)=0;
  u(N)=0;
  c= zeros(n);
  identidad= zeros(n);
  c(1,1)= -2;
  c(1,2)=1;
  c(n,n-1)=1;
  c(n,n)= -2;
  
  for i=1:n
    p(i)=h*i;
  end
  
  p=p' %vector paso h
  
  for i=2:n-1
    c(i,i-1)=1;
    c(i,i)=-2;
    c(i,i+1)=1;
  end
  
  disp('la matriz de coeficientes de edo es '); disp(c);
  
  for i=1:n
    identidad(i,i)=1;
  end
  identidad
  
  A=((-1/h^2)*c+identidad)
  s=inv(A)*p %vector solucion (puntos interiores)
  
  for i=2:N-1 %%agrega al vector u los vectores de s, seria desde la componente 2, hasta la n-1, la 1 y la n las tengo como dato
    u(i)=s(i-1);
  end
  u=u';
  disp('el vector u es igual a:'); disp(u); %muestra el vector solucion con los N puntos
  
  hold on
  plot (x,u, '--b')  %%grafico edo
  
  %%DERIVACION
    
    for i=2:N
     x(i)=x(i-1)+h;
    end
    
    coef=zeros(N,N);
    
  %derivada primera asimétrica hacia adelante en el primer punto
  %%asimetrica hacia adelante: (-3*f(i)/2*h)+((2*f(i+1))/h)-((f(i+2))/2*h)
    coef(1,1)=-3/(2*h);
    coef(1,2)=2/h;
    coef(1,3)=-1/(2*h);
    
  %derivada primera asimétrica hacia atrás en ultimo punto
  %%asimetrica hacia atras:  (-3*f(i)/(2*h))-(2*f(i-1)/h)+((f(i-2))/(2*h))
    coef(N,N)=3/(2*h);
    coef(N,N-1)=-2/h;
    coef(N,N-2)=1/(2*h);
  
  %derivada primera central hacia atrás en el resto de los puntos
  %%central: (f(i+1)-f(i-1))/(2*h)    
    for i=2:N-1
      coef(i,i-1)=-1/(2*h);
      coef(i,i+1)=1/(2*h);
    end
    
    disp('la matriz de coeficientes de derivadas es ');disp(coef); 

    du=coef*u %vector de derivada
    
    hold all
    plot(x,du, '**r')  %grafico la derivada de rojo
    
    
    
    %%INTEGRACIÓN con trapecios compuesto de la derivada du
    
    coefint=zeros(N,1);
    coefint(1)=h*1/2;
    coefint(N)=h*1/2;
    
    for i=2:N-1
      coefint(i)=h;
    end
    
    int=0; 
    for i=1:N
      int=int+coefint(i)*du(i);
    end

    disp('El vector de coeficientes de la integral es '),disp(coefint)
    disp('El valor de la integral es '), disp(int)
    
endfunction