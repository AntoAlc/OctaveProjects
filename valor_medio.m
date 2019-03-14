function valor_medio
  clear
  clc
  
  disp ('lectura de las componentes');
  N=4;
  for j=1:N
    disp ('ingrese la componente'); disp(j);
    vec(j)= input ('');
  end
  sum=0;
  for j=1:N
    sum=sum+vec(j);
  end
  vm=sum/N;
  disp ('el promedio es'); disp(vm);
end