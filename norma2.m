function norma2
  clear
  clc
  datosTotales=5
  for i=1:datosTotales
   disp('ingrese el valor'), (i);
   A(i)= input(' ');
  end
  A
  n=length(A) %longitud del vector a, cantidad de componentes
  suma=0;
  i=1;
  max=abs(A(1))
  while i<n
    if max< abs (A(i))
    max=A(i);
    endif
    i=i+1;
  end
  disp('la norma es '),(max);
  norma= max
  c=A/n
end