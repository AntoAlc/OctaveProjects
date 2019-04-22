function tarea_jacobi
  clear
  clc
   %~
  A=[0 -2 6.8 -11 
     1.2 4 8.9 0.4
     2 -9 1 -5
     -5 1.6 1 -2.3]
  b = [2
       0 
       4 
       -8]
   
  it=0;
  itmax=50;
  tol=0.01;
  n=4;
  for i=1:n
   for j=1:n
     if sum(abs (A(i,j)))> A(i,i) 
      AD= flipud (A); %convierte la matriz en diagonal dominante intercambiando filas
     end
   end
  end
  AD
  for i=1:n
    D(i,i)=AD(i,i);
  end
  D
  %B=AD-D;
  
  for i=1:n
    for j=1:n
      B(i,j)=AD(i,j)-D(i,j);
    end    
  end
  B
  T= (-inv(D)) * B
  c = inv(D) * b  
  xv=[1
      1 
      1
      1];
      
  while (it<itmax) && (e>tol)
    it=it+1;
    xn=T*xv+c ;
    
    e1=abs(xn-xv);
    e=norm(e1,inf);
    xv=xn;  
  end  
  
disp('el vector x es:'), xn
disp(['el numero de iteraciones es:', num2str(it)]);
disp(['el error es:',num2str(e)]);
  
 
endfunction