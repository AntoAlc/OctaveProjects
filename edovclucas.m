function edovc
  clc
  clear
  L = 1;
  n = 9 ;
  PI= 7;
  h =((L)/(n-1));
  x =0:h:L;
  u(PI,1)= zeros;
  C=zeros(PI);
  C(1,1)=-2;
  C(1,2)=1;
  C(1,3)=0;
  C(PI,PI-2)=0;
  C(PI,PI-1)=1;
  C(PI,PI)=-2;
  for i=2:(PI-1)
    C(i,i-1)=1;
    C(i,i)=-2;
    C(i,i+1)=1;
  end
  I=zeros(PI);
  for k=1:PI;
    I(k,k)=1;
    
  end 
  for i=1:PI;
    xi(i,1)=x(i+1);
  endfor

  A=(((-1/(h^2))*C)+I);
  u=inv(A)*xi;
  us(n,1)=zeros;
  for i=2:n-1;
    us(i)=u(i-1);
  endfor
  disp('el vector solucion es')
  disp(us)
figure(1)
  hold on
plot(x,us,'g');
%derivada de u
du(1)=(1/h)*(us(2,1)-us(1,1))
du(n)=(1/h)*(us(n,1)-us(n-1,1))
for i=2:(n-1);
  du(i)=(1/(2*h))*(us(i+1,1)-us(i-1,1));
end 
disp ('la derivada de u es: ')
disp(du)
figure(2)
 hold on
plot(us,du)
%integral por trapecio compuesto
Ip=(h/2)* ((us(1))+(us(n)));
for i=2:(n-1);
  Iint=(h*(us(i)));
end 
It=Ip+Iint;
disp('la integral es')
disp (It)
endfunction