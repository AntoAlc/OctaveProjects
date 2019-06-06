function edo1
 clear
 clc
 x=[33 -16 0
    -16 33 -16 
    0 -16 33]
 n=length(x)
 u(1)=0
 u(n)=0
 c=[0.25
    0.5
    0.75]

 for i=2:n-1
  a= inv(x)
  s(i)=inv(x)* c
  u(i)=s(i)
  
 endfor
 
endfunction