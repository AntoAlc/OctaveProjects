function operaciones_matrices
  clear
  clc
  A=[2 2; 2 2]
  B=[1 0; 0 1]
  C=A+B;
  disp ('C=A+B'); disp(C);
  disp ('D=A-B');disp (A-B);
  disp ('E=A*B'); disp (A*B);
  disp ('F= A.*B'); disp(A.*B);
  
  A=[5 0;0 5]
  disp('inversa de A='); disp(inv (A));
  disp('determinante de A='); disp( det(A));
  disp ('dimensiones de A'); 
 [m n]=size (A)
  disp('ubicacion (2,2)'); disp(A(2,2)); %ubicacion fila/columna
  disp ('fila 2'); disp (A(2,:)) %te muestra la fila 2
  disp ('columna 2:'); disp (A(:,2)); %muestra la columna 2
end