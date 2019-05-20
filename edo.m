function edo
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
  disp('el paso es:'); disp(h);
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
  p=p'
  for i=2:n-1
    c(i,i-1)=1;
    c(i,i)=-2;
    c(i,i+1)=1;
  end
  for i=1:n
    identidad(i,i)=1;
  end
  c
  identidad
  A=((-1/h^2)*c+identidad)
  s=inv(A)*p
  for i=2:N-1
  u(i)=s(i-1);
  end
  disp('el vector u es igual a:'); disp(u);
  
  hold on
  plot (x,u, '--b')
  
endfunction