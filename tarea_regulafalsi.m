function tarea_regulafalsi
  clear
  clc
  a=pi/4
  b=pi/2
  ep1=1e-12;
  ep2=1e-4;
  ep3=1e-2;
  r0=0
  
  it=0;
  itmax=30;
  nohaysol=true;
  
  while (nohaysol)
    it=it+1
    
    fa=(4*cos(a))-(exp(a))
    fb=4*cos(b)-exp(b)
    m=((fb-fa)/(b-a))
    r=a-(fa/m)
    fr=4*cos(r)-exp(r)
    eabs=abs(r-r0)
    erel=abs((r-r0)/r)
    eporc=erel*100
    
    if(ep1>eabs)
    nohaysol=false;
    end
    
    if(ep2>erel)
    nohaysol=false; 
    end
    
    if(ep3>eporc)
    nohaysol=false; 
    end  
    
    if (fa*fr<0)
      a=a
      b=r
      r0=r
    else
      a=r
      b=b
      r0=r
    end
    
    if (it>=itmax)
      nohaysol=false;
    end
  end
disp(['el numero de iteraciones es:', num2str(it)]);
disp(['el resultado de a es= ', num2str(a)]);
disp(['el resultado de b es= ', num2str(b)]);
disp(['el resultado es r= ', num2str(r)]);
disp (['el resultado es f(a)=', num2str(fa)]);
disp (['el resultado es f(b)=', num2str(fb)]);
disp (['el resultado es f(r)=', num2str(fr)]);
disp(['el resultado del error absoluto es:',num2str(eabs)]);
disp(['el resultado del error relatvo es:',num2str(erel)]);
disp(['el resultado del error relativo porcentual es:',num2str(eporc)]);
endfunction