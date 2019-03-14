function raices
  clear
  clc
  disp ('ingrese coeficiente a:');
  a=input('');
  disp ('ingrese coeficiente b:');
  b=input ('');
  disp ('ingrese coeficiente c:');
  c=input ('');
  
  discriminante = (b^2-4*a*c);
  
  if (discriminante>0)
    r1=(-b + discriminante^0.5)/(2*a);
    r2 =(b + discriminante^0.5) / (2*a);
    disp ('las raices son:'); disp (r1); disp (r2);
  else
    disp ('las raices son complejas conjugadas');

  end
end