function leer_vectores
  clear
  clc
  disp('lectura de las componentes');
  N=4;
  for j=1:N
    disp('ingrese la componente');
    vec(j)= input('');
  end
  disp('escritura de las componentes');
  for j=1:N
    disp ('componente ingresada'); disp(vec (j));
  end
end