function jacobi
  clear
  clc
   %~
  A=[-3 1 -2 
      4 -5 0
      1 -3 6]
  b = [-2 
        5 
        6]
  it=0;
  itmax=100;
  tol=1e-5;
  n=3;
  for i=1:n
    D(i,i)=A(i,i);
  end
  D
  %B=A-D;
  for i=1:n
    for j=1:n
      B(i,j)=A(i,j)-D(i,j);
    end    
  end
  B
  T= (-inv(D)) * B
  c = inv(D) * b  
  xv=[1
      1 
      1]
  e1i=0
      
  while (it<itmax) && (e>tol)
    it=it+1
    xn=T*xv+c 
    
    e1=abs(xn-xv);
    e=norm(e1,inf)
    xv=xn
   
  end  
  
 
endfunction