function hipotenusa
  clear
  clc
  disp ('ingrese el valor del cateto 1:');
  cat1= input('');
  disp ('ingrese el valor del caterto2:');
  cat2= input ('');
  hip= ((cat1^2 +cat2^2)^(1/2));
  disp ('el valor de la hipotenusa es:' ); disp (hip);
 end  