function suma_vectores
  clear
  clc
  U =[1; 2; 3]
  V=[10; 10; 10]
  %m=3;
  [m,n]= size (U);
  [r,s]= size (V);
  for i=1:m
    W(i)= U(i)+V(i);
  end
  disp ('W='); disp (W);
end