function autovaloresAutovectores
  clear
  clc
  K=[2 -1 0
     -1 4 -1
     0 -1 2]
  M=[1 0 0
     0 4 0
     0 0 6]
  A=inv(M)*K
  y0=[1; 1; 1]
  lambda0=[0; 0; 0]
  x0= y0/(norm(y0,inf))
  tol=0.01
  e=100
  itmax=50
  it=0
  %metodo de la potencia con escalamiento
  while (e>tol) && (it<itmax)
    it=it+1
    yn=A*x0
    n= norm(yn,inf)
    x= yn/n
    lambda=yn./x0
    error=lambda-lambda0
    e=max(abs(error))
%    y0=yn
    lambda0=lambda
    x0=x
    lambdamax= max(lambda)
  end
disp(['el numero de iteraciones es:', num2str(it)]);
disp(['el error es:', num2str(e)]);
disp('el resultado del autovector "y" es= '); disp (yn);
disp('el resultado del autovector normalizado es= ');disp(x);
disp('el resultado del autovalor máximo es='); disp(lambdamax);

endfunction
