function tarea_max
  clear
  clc
  datosTotales=5
  for i=1:datosTotales
   disp('ingrese el valor'), (i);
   A(i)= input(' ');
  end
  A
  c= norm(A,inf);
  if c~= 0
  disp ('la norma infinita es:'),(c)
  n= A/c;
  disp ('el vector normalizado es:'), (n)
  d= norm(n,inf);
  disp ('la nueva norma infinita es:'), (d)
  else
  disp ('la norma es cero, ingrese otros datos')
end
end
